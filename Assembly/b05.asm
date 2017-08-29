;Super Mario Bros. 1

;Routine to load the entire level's aesthetics. HDMA, layer 3, etc. 
CODE_058000:    STZ $0EDC               ; $05:8000: 9C DC 0E    ;
                PHB                     ; $05:8003: 8B          ;\
                LDA #$7E                ; $05:8004: A9 7E       ; |
                PHA                     ; $05:8006: 48          ; |
                PLB                     ; $05:8007: AB          ; |
                REP #$30                ; $05:8008: C2 30       ; |
                LDX #$0000              ; $05:800A: A2 00 00    ; |Clear Background map16 tilemap
                LDA #$0000              ; $05:800D: A9 00 00    ; |
CODE_058010:    STA $D000,x             ; $05:8010: 9D 00 D0    ; |
                STA $D100,x             ; $05:8013: 9D 00 D1    ; |
                STA $D200,x             ; $05:8016: 9D 00 D2    ; |
                STA $D300,x             ; $05:8019: 9D 00 D3    ; |
                STA $D400,x             ; $05:801C: 9D 00 D4    ; |
                STA $D500,x             ; $05:801F: 9D 00 D5    ; |
                STA $D600,x             ; $05:8022: 9D 00 D6    ; |
                STA $D700,x             ; $05:8025: 9D 00 D7    ; |
                STA $D800,x             ; $05:8028: 9D 00 D8    ; |
                STA $D900,x             ; $05:802B: 9D 00 D9    ; |
                STA $DA00,x             ; $05:802E: 9D 00 DA    ; |
                STA $DB00,x             ; $05:8031: 9D 00 DB    ; |
                STA $DC00,x             ; $05:8034: 9D 00 DC    ; |
                INX                     ; $05:8037: E8          ; |
                INX                     ; $05:8038: E8          ; |
                CPX #$0100              ; $05:8039: E0 00 01    ; |
                BNE CODE_058010         ; $05:803C: D0 D2       ; |
                PLB                     ; $05:803E: AB          ;/
                PHB                     ; $05:803F: 8B          ;\
                PHK                     ; $05:8040: 4B          ; |Data bank = current bank
                PLB                     ; $05:8041: AB          ; |
                STZ $0EC0               ; $05:8042: 9C C0 0E    ; |Index to the current BG2 map16 page being written to
                LDA $0E65               ; $05:8045: AD 65 0E    ; |
                AND #$00FF              ; $05:8048: 29 FF 00    ; |Store current background to $DB. $0E65 is clone
                BEQ CODE_05804F         ; $05:804B: F0 02       ; |of $DB (or the opposite......)
                STA $DB                 ; $05:804D: 85 DB       ; |
CODE_05804F:    LDA $DB                 ; $05:804F: A5 DB       ; |
                AND #$00FF              ; $05:8051: 29 FF 00    ; |Layer 2 background
                ASL A                   ; $05:8054: 0A          ; |to 16-bit index
                TAX                     ; $05:8055: AA          ; |
                LDA DATA_05AD04,x       ; $05:8056: BD 04 AD    ; |Get relative index to backgrounds properties table, transfer it to X
                STA $02                 ; $05:8059: 85 02       ;/

CODE_05805B:    REP #$30                ; $05:805B: C2 30       ;\
                LDX $02                 ; $05:805D: A6 02       ; |
                LDA DATA_05B557,x       ; $05:805F: BD 57 B5    ; |This table seems to be the group of commands associated with the background scene to load. Format: HHH LLL CCCCCC VVVV?
                STA $04                 ; $05:8062: 85 04       ; | ("Background scene" being the graphics tileset, layer 3 flag, HDMA gradient and the BG2 tilemap).
                INC $02                 ; $05:8064: E6 02       ; |
                INC $02                 ; $05:8066: E6 02       ;/ increase pointer to read next word of background commands next time.
                AND #$03F0              ; $05:8068: 29 F0 03    ; | 
                LSR A                   ; $05:806B: 4A          ; |
                LSR A                   ; $05:806C: 4A          ; |
                LSR A                   ; $05:806D: 4A          ; |
                LSR A                   ; $05:806E: 4A          ; |
                STA $EF                 ; $05:806F: 85 EF       ;/ Store CCCCCC into $EF. It seems to be the "command"
                LDA $04                 ; $05:8071: A5 04       ;\ 
                AND #$000F              ; $05:8073: 29 0F 00    ; |Store VVVV data. It seems to be the value associated with the command
                STA $F1                 ; $05:8076: 85 F1       ;/
                LDA $04                 ; $05:8078: A5 04       ;\ Load HHH data
                AND #$E000              ; $05:807A: 29 00 E0    ; | HHH = high nibble of background data starting index of map16 tilemap
                STA $ED                 ; $05:807D: 85 ED       ;/| 
                LDA $04                 ; $05:807F: A5 04       ;\| Load LLL data
                LSR A                   ; $05:8081: 4A          ; | LLL = Low nibble of background data starting index of map16 tilemap * 2
                AND #$0E00              ; $05:8082: 29 00 0E    ; | This code basically turns HHH LLL into HHH0 LLL0
                ORA $ED                 ; $05:8085: 05 ED       ; |
                XBA                     ; $05:8087: EB          ; |
                STA $ED                 ; $05:8088: 85 ED       ; |
                AND #$00F0              ; $05:808A: 29 F0 00    ; |
                CMP #$00E0              ; $05:808D: C9 E0 00    ; | If #$E0, then $EF is a command to be processed
                BNE CODE_0580B3         ; $05:8090: D0 21       ;/ 
                LDA $EF                 ; $05:8092: A5 EF       ;\
                CMP #$003F              ; $05:8094: C9 3F 00    ; | if not end of background data marker, process background generation
                BNE CODE_0580AE         ; $05:8097: D0 15       ;/ (Otherwise just skip branch and finish up routine)
                INC $0EC0               ; $05:8099: EE C0 0E    ;\
                INC $0EC0               ; $05:809C: EE C0 0E    ; | Skip 2 pages and place a BG2 map16 marker word
                LDA $0EC0               ; $05:809F: AD C0 0E    ; | 
                XBA                     ; $05:80A2: EB          ; |
                TAX                     ; $05:80A3: AA          ; | And make sure the final bytes are FFFF to mark the end of the map16 tilemap.
                LDA #$FFFF              ; $05:80A4: A9 FF FF    ; |
                STA $7ED000,x           ; $05:80A7: 9F 00 D0 7E ;/
                JMP CODE_059166         ; $05:80AB: 4C 66 91    ;

CODE_0580AE:    JSR CODE_058F19         ; $05:80AE: 20 19 8F    ;Process the background generation command
                BRA CODE_05805B         ; $05:80B1: 80 A8       ;back to the command processing loop

CODE_0580B3:    LDA $0EC0               ; $05:80B3: AD C0 0E    ;\
                XBA                     ; $05:80B6: EB          ; | This part of the routine deals with the background generation command
                CLC                     ; $05:80B7: 18          ; | (as in, place the tiles in the background)
                ADC $ED                 ; $05:80B8: 65 ED       ; | $EB stores the starting index of the background objects to be placed at
                STA $EB                 ; $05:80BA: 85 EB       ; | At this point $EF isn't a command but rather serves another purpose. TODO
                LDA $EF                 ; $05:80BC: A5 EF       ; | 
                CMP #$0010              ; $05:80BE: C9 10 00    ; | 
                BCC CODE_0580C9         ; $05:80C1: 90 06       ; |
                JSR CODE_058E85         ; $05:80C3: 20 85 8E    ; | If EF is #$10 or higher, then ???
                JMP CODE_05805B         ; $05:80C6: 4C 5B 80    ;/

CODE_0580C9:    ASL A                   ; $05:80C9: 0A          ;
                TAX                     ; $05:80CA: AA          ;
                LDA $DB                 ; $05:80CB: A5 DB       ;\
                ASL A                   ; $05:80CD: 0A          ; |background to index. Up to $21 is valid.
                TAY                     ; $05:80CE: A8          ;/
                LDA PNTR_0580E1,y       ; $05:80CF: B9 E1 80    ;\Setup indirect pointer based on background.
                STA $04                 ; $05:80D2: 85 04       ;/
                LDA #$0005              ; $05:80D4: A9 05 00    ;\Bank byte: $05
                STA $06                 ; $05:80D7: 85 06       ;/
                TXY                     ; $05:80D9: 9B          ;
                LDA [$04],y             ; $05:80DA: B7 04       ;
                STA $00                 ; $05:80DC: 85 00       ;
                JMP ($0000)             ; $05:80DE: 6C 00 00    ;Jump to background generation/background loading routines

PNTR_0580E1:    dw $8141                                        ;$00 -
                dw $8141                                        ;$01 -
                dw $812B                                        ;$02 -
                dw $8149                                        ;$03 -
                dw $812D                                        ;$04 -
                dw $8149                                        ;$05 -
                dw $8149                                        ;$06 -
                dw $8149                                        ;$07 -
                dw $8149                                        ;$08 -
                dw $81DF                                        ;$09 -
                dw $8125                                        ;$0A - this points to INSTRUCTION POINTER #0
                dw $81A7                                        ;$0B -
                dw $8149                                        ;$0C -
                dw $81A7                                        ;$0D -
                dw $8149                                        ;$0E -
                dw $81C7                                        ;$0F -
                dw $8149                                        ;$10 -
                dw $8149                                        ;$11 -
                dw $81C7                                        ;$12 -
                dw $8149                                        ;$13 -
                dw $81A7                                        ;$14 -
                dw $81A7                                        ;$15 -
                dw $81A7                                        ;$16 -
                dw $8149                                        ;$17 -
                dw $8149                                        ;$18 -
                dw $8169                                        ;$19 -
                dw $8169                                        ;$1A -
                dw $8149                                        ;$1B -
                dw $818F                                        ;$1C -
                dw $818F                                        ;$1D -
                dw $818F                                        ;$1E -
                dw $818F                                        ;$1F -
                dw $818F                                        ;$20 -
                dw $816F                                        ;$21 -
;*split*

                dw $823F                                        ;INSTRUCTION POINTER #0: this points to opcode | Related to generating the goomba pillar background
                dw $8244                                        ;Related to generating the goomba pillar background
                dw $81F5                                        ;
                dw $82E2                                        ;
                dw $9004                                        ;
                dw $864E                                        ;
                dw $864C                                        ;
                dw $8643                                        ;
                dw $8639                                        ;
                dw $864E                                        ;
                dw $864E                                        ;
                dw $8639                                        ;
                dw $864C                                        ;
                dw $864E                                        ;
                dw $8724                                        ;
                dw $8726                                        ;
                dw $875E                                        ;
                dw $8760                                        ;
                dw $8995                                        ;
                dw $86E9                                        ;
                dw $86E9                                        ;
                dw $86E9                                        ;
                dw $8845                                        ;
                dw $8843                                        ;used in 1-1
                dw $883A                                        ;
                dw $8838                                        ;
                dw $87EA                                        ;
                dw $87F4                                        ;
                dw $8800                                        ;
                dw $880C                                        ;
                dw $8818                                        ;
                dw $8824                                        ;
                dw $882C                                        ;
                dw $848D                                        ;
                dw $89E0                                        ;
                dw $89FD                                        ;
                dw $8A2E                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $85EE                                        ;
                dw $85EC                                        ;
                dw $8B51                                        ;
                dw $8B51                                        ;
                dw $8B8F                                        ;
                dw $8C66                                        ;
                dw $8CE0                                        ;
                dw $8D8A                                        ;
                dw $8B22                                        ;
                dw $8A68                                        ;
                dw $8AD5                                        ;
                dw $8DD3                                        ;
                dw $8DD1                                        ;
                dw $8DC5                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8699                                        ;
                dw $8445                                        ;
                dw $8443                                        ;
                dw $8439                                        ;
                dw $8437                                        ;
                dw $8432                                        ;
                dw $8430                                        ;
                dw $8426                                        ;
                dw $8424                                        ;
                dw $83E9                                        ;
                dw $83E7                                        ;
                dw $83DD                                        ;
                dw $83DB                                        ;
                dw $8307                                        ;

DATA_0581E1:    db $07,$0A,$0B,$12,$19,$29,$2A,$33              ;
                db $34,$30,$00,$07,$0A,$1D,$19,$00              ;
                db $29,$2A,$2D,$30                              ;

                LDY $F1                 ; $05:81F5: A4 F1       ;
                LDX $EB                 ; $05:81F7: A6 EB       ;
                SEP #$20                ; $05:81F9: E2 20       ;
                LDA DATA_0581E1,y       ; $05:81FB: B9 E1 81    ;
                STA $7ED000,x           ; $05:81FE: 9F 00 D0 7E ;
                LDA DATA_0581E1+1,y     ; $05:8202: B9 E2 81    ;
                STA $7ED010,x           ; $05:8205: 9F 10 D0 7E ;
                LDA DATA_0581E1+2,y     ; $05:8209: B9 E3 81    ;
                STA $7ED020,x           ; $05:820C: 9F 20 D0 7E ;
                LDA DATA_0581E1+3,y     ; $05:8210: B9 E4 81    ;
                STA $7ED030,x           ; $05:8213: 9F 30 D0 7E ;
                LDA DATA_0581E1+4,y     ; $05:8217: B9 E5 81    ;
                STA $7ED040,x           ; $05:821A: 9F 40 D0 7E ;
                REP #$20                ; $05:821E: C2 20       ;
                JMP CODE_05805B         ; $05:8220: 4C 5B 80    ;

DATA_058223:    db $01,$02,$03,$04,$08,$09,$05,$06              ;
                db $10,$11,$17,$18,$1B,$1C,$1F,$20              ;
                db $21,$22,$25,$26,$23,$24,$2B,$2C              ;
                db $2E,$2F,$31,$32                              ;

                LDY #$000E              ; $05:823F: A0 0E 00    ;
                BRA CODE_058247         ; $05:8242: 80 03       ;

                LDY #$0000              ; $05:8244: A0 00 00    ;
CODE_058247:    LDX $EB                 ; $05:8247: A6 EB       ;
                INX                     ; $05:8249: E8          ;
                SEP #$20                ; $05:824A: E2 20       ;
                LDA DATA_058223,y       ; $05:824C: B9 23 82    ;
                STA $7ED000,x           ; $05:824F: 9F 00 D0 7E ;
                LDA DATA_058223+1,y     ; $05:8253: B9 24 82    ;
                STA $7ED001,x           ; $05:8256: 9F 01 D0 7E ;
                LDA DATA_058223+2,y     ; $05:825A: B9 25 82    ;
                STA $7ED010,x           ; $05:825D: 9F 10 D0 7E ;
                LDA DATA_058223+3,y     ; $05:8261: B9 26 82    ;
                STA $7ED011,x           ; $05:8264: 9F 11 D0 7E ;
                LDA DATA_058223+6,y     ; $05:8268: B9 29 82    ;
                STA $7ED020,x           ; $05:826B: 9F 20 D0 7E ;
                LDA DATA_058223+7,y     ; $05:826F: B9 2A 82    ;
                STA $7ED021,x           ; $05:8272: 9F 21 D0 7E ;
                LDA #$30                ; $05:8276: A9 30       ;
                STA $E4                 ; $05:8278: 85 E4       ;
                STZ $E5                 ; $05:827A: 64 E5       ;
CODE_05827C:    REP #$20                ; $05:827C: C2 20       ;
                TXA                     ; $05:827E: 8A          ;
                CLC                     ; $05:827F: 18          ;
                ADC $E4                 ; $05:8280: 65 E4       ;
                TAX                     ; $05:8282: AA          ;
                SEP #$20                ; $05:8283: E2 20       ;
                CMP #$D0                ; $05:8285: C9 D0       ;
                BCS CODE_0582AD         ; $05:8287: B0 24       ;
                LDA DATA_058223+4,y     ; $05:8289: B9 27 82    ;
                STA $7ED000,x           ; $05:828C: 9F 00 D0 7E ;
                LDA DATA_058223+5,y     ; $05:8290: B9 28 82    ;
                STA $7ED001,x           ; $05:8293: 9F 01 D0 7E ;
                LDA DATA_058223+6,y     ; $05:8297: B9 29 82    ;
                STA $7ED010,x           ; $05:829A: 9F 10 D0 7E ;
                LDA DATA_058223+7,y     ; $05:829E: B9 2A 82    ;
                STA $7ED011,x           ; $05:82A1: 9F 11 D0 7E ;
                LDA #$20                ; $05:82A5: A9 20       ;
                STA $E4                 ; $05:82A7: 85 E4       ;
                STZ $E5                 ; $05:82A9: 64 E5       ;
                BRA CODE_05827C         ; $05:82AB: 80 CF       ;

CODE_0582AD:    LDA DATA_058223+8,y     ; $05:82AD: B9 2B 82    ;
                STA $7ED000,x           ; $05:82B0: 9F 00 D0 7E ;
                LDA DATA_058223+9,y     ; $05:82B4: B9 2C 82    ;
                STA $7ED001,x           ; $05:82B7: 9F 01 D0 7E ;
                LDA DATA_058223+10,y    ; $05:82BB: B9 2D 82    ;
                STA $7ED010,x           ; $05:82BE: 9F 10 D0 7E ;
                LDA DATA_058223+11,y    ; $05:82C2: B9 2E 82    ;
                STA $7ED011,x           ; $05:82C5: 9F 11 D0 7E ;
                LDA DATA_058223+12,y    ; $05:82C9: B9 2F 82    ;
                STA $7ED020,x           ; $05:82CC: 9F 20 D0 7E ;
                LDA DATA_058223+13,y    ; $05:82D0: B9 30 82    ;
                STA $7ED021,x           ; $05:82D3: 9F 21 D0 7E ;
                REP #$20                ; $05:82D7: C2 20       ;
                JMP CODE_05805B         ; $05:82D9: 4C 5B 80    ;

DATA_0582DC:    db $00,$00,$41,$00,$82,$00                      ;

                LDA $F1                 ; $05:82E2: A5 F1       ;
                ASL A                   ; $05:82E4: 0A          ;
                TAY                     ; $05:82E5: A8          ;
                LDA DATA_0582DC,y       ; $05:82E6: B9 DC 82    ;
                TAY                     ; $05:82E9: A8          ;
                LDA $EB                 ; $05:82EA: A5 EB       ;
                CLC                     ; $05:82EC: 18          ;
                ADC #$0010              ; $05:82ED: 69 10 00    ;
                TAX                     ; $05:82F0: AA          ;
                SEP #$20                ; $05:82F1: E2 20       ;
CODE_0582F3:    LDA DATA_05B494,y       ; $05:82F3: B9 94 B4    ;
                CMP #$FF                ; $05:82F6: C9 FF       ;
                BEQ CODE_058302         ; $05:82F8: F0 08       ;
                STA $7ED000,x           ; $05:82FA: 9F 00 D0 7E ;
                INY                     ; $05:82FE: C8          ;
                INX                     ; $05:82FF: E8          ;
                BRA CODE_0582F3         ; $05:8300: 80 F1       ;

CODE_058302:    REP #$20                ; $05:8302: C2 20       ;
                JMP CODE_05805B         ; $05:8304: 4C 5B 80    ;

                LDX $EB                 ; $05:8307: A6 EB       ;
                LDA $F1                 ; $05:8309: A5 F1       ;
                STA $E6                 ; $05:830B: 85 E6       ;
                SEP #$20                ; $05:830D: E2 20       ;
                STZ $E8                 ; $05:830F: 64 E8       ;
CODE_058311:    LDA #$09                ; $05:8311: A9 09       ;
                STA $7ED000,x           ; $05:8313: 9F 00 D0 7E ;
                LDA #$0E                ; $05:8317: A9 0E       ;
                STA $7ED010,x           ; $05:8319: 9F 10 D0 7E ;
                STA $7ED030,x           ; $05:831D: 9F 30 D0 7E ;
                STA $7ED050,x           ; $05:8321: 9F 50 D0 7E ;
                LDA #$12                ; $05:8325: A9 12       ;
                STA $7ED020,x           ; $05:8327: 9F 20 D0 7E ;
                STA $7ED040,x           ; $05:832B: 9F 40 D0 7E ;
                INX                     ; $05:832F: E8          ;
                REP #$20                ; $05:8330: C2 20       ;
                TXA                     ; $05:8332: 8A          ;
                AND #$000F              ; $05:8333: 29 0F 00    ;
                BNE CODE_058340         ; $05:8336: D0 08       ;
                TXA                     ; $05:8338: 8A          ;
                CLC                     ; $05:8339: 18          ;
                ADC #$00F0              ; $05:833A: 69 F0 00    ;
                TAX                     ; $05:833D: AA          ;
                INC $E8                 ; $05:833E: E6 E8       ;
CODE_058340:    SEP #$20                ; $05:8340: E2 20       ;
                DEC $E6                 ; $05:8342: C6 E6       ;
                LDA $E6                 ; $05:8344: A5 E6       ;
                BMI CODE_05837F         ; $05:8346: 30 37       ;
                LDA #$09                ; $05:8348: A9 09       ;
                STA $7ED000,x           ; $05:834A: 9F 00 D0 7E ;
                LDA #$0F                ; $05:834E: A9 0F       ;
                STA $7ED010,x           ; $05:8350: 9F 10 D0 7E ;
                STA $7ED030,x           ; $05:8354: 9F 30 D0 7E ;
                STA $7ED050,x           ; $05:8358: 9F 50 D0 7E ;
                LDA #$13                ; $05:835C: A9 13       ;
                STA $7ED020,x           ; $05:835E: 9F 20 D0 7E ;
                STA $7ED040,x           ; $05:8362: 9F 40 D0 7E ;
                INX                     ; $05:8366: E8          ;
                REP #$20                ; $05:8367: C2 20       ;
                TXA                     ; $05:8369: 8A          ;
                AND #$000F              ; $05:836A: 29 0F 00    ;
                BNE CODE_058377         ; $05:836D: D0 08       ;
                TXA                     ; $05:836F: 8A          ;
                CLC                     ; $05:8370: 18          ;
                ADC #$00F0              ; $05:8371: 69 F0 00    ;
                TAX                     ; $05:8374: AA          ;
                INC $E8                 ; $05:8375: E6 E8       ;
CODE_058377:    SEP #$20                ; $05:8377: E2 20       ;
                DEC $E6                 ; $05:8379: C6 E6       ;
                LDA $E6                 ; $05:837B: A5 E6       ;
                BPL CODE_058311         ; $05:837D: 10 92       ;
CODE_05837F:    LDX $EB                 ; $05:837F: A6 EB       ;
                LDA $F1                 ; $05:8381: A5 F1       ;
                CMP #$04                ; $05:8383: C9 04       ;
                BCC CODE_058389         ; $05:8385: 90 02       ;
                LDA #$04                ; $05:8387: A9 04       ;
CODE_058389:    TAY                     ; $05:8389: A8          ;
                LDA DATA_0583B0,y       ; $05:838A: B9 B0 83    ;
                STA $7ECFFF,x           ; $05:838D: 9F FF CF 7E ;
                REP #$20                ; $05:8391: C2 20       ;
                LDA $E8                 ; $05:8393: A5 E8       ;
                BEQ CODE_05839D         ; $05:8395: F0 06       ;
                TXA                     ; $05:8397: 8A          ;
                CLC                     ; $05:8398: 18          ;
                ADC #$00F0              ; $05:8399: 69 F0 00    ;
                TAX                     ; $05:839C: AA          ;
CODE_05839D:    TXA                     ; $05:839D: 8A          ;
                CLC                     ; $05:839E: 18          ;
                ADC $F1                 ; $05:839F: 65 F1       ;
                TAX                     ; $05:83A1: AA          ;
                SEP #$20                ; $05:83A2: E2 20       ;
                LDA DATA_0583B5,y       ; $05:83A4: B9 B5 83    ;
                STA $7ED001,x           ; $05:83A7: 9F 01 D0 7E ;
                REP #$20                ; $05:83AB: C2 20       ;
                JMP CODE_05805B         ; $05:83AD: 4C 5B 80    ;

DATA_0583B0:    db $08,$08,$04,$04,$08                          ;

DATA_0583B5:    db $0A,$06,$0A,$06,$0A                          ;

DATA_0583BA:    db $01,$02,$03,$02,$04,$01,$02,$02              ;
                db $03,$02,$02,$04,$07,$08,$09,$07              ;
                db $0E,$08,$0E,$09,$01,$03,$04                  ;

DATA_0583D1:    db $04,$06,$02,$04,$02                          ;

DATA_0583D6:    db $00,$05,$0C,$0F,$14                          ;

                INC $EB                 ; $05:83DB: E6 EB       ;
                LDA $EB                 ; $05:83DD: A5 EB       ;
                CLC                     ; $05:83DF: 18          ;
                ADC #$0010              ; $05:83E0: 69 10 00    ;
                STA $EB                 ; $05:83E3: 85 EB       ;
                BRA CODE_0583E9         ; $05:83E5: 80 02       ;

                INC $EB                 ; $05:83E7: E6 EB       ;
CODE_0583E9:    LDX $EB                 ; $05:83E9: A6 EB       ;
                LDA $F1                 ; $05:83EB: A5 F1       ;
                TAY                     ; $05:83ED: A8          ;
                LDA DATA_0583D1,y       ; $05:83EE: B9 D1 83    ;
                AND #$00FF              ; $05:83F1: 29 FF 00    ;
                STA $F1                 ; $05:83F4: 85 F1       ;
                LDA DATA_0583D6,y       ; $05:83F6: B9 D6 83    ;
                AND #$00FF              ; $05:83F9: 29 FF 00    ;
                TAY                     ; $05:83FC: A8          ;
                SEP #$20                ; $05:83FD: E2 20       ;
CODE_0583FF:    LDA DATA_0583BA,y       ; $05:83FF: B9 BA 83    ;
                STA $7ED000,x           ; $05:8402: 9F 00 D0 7E ;
                INX                     ; $05:8406: E8          ;
                INY                     ; $05:8407: C8          ;
                TXA                     ; $05:8408: 8A          ;
                AND #$0F                ; $05:8409: 29 0F       ;
                BNE CODE_058417         ; $05:840B: D0 0A       ;
                REP #$20                ; $05:840D: C2 20       ;
                TXA                     ; $05:840F: 8A          ;
                CLC                     ; $05:8410: 18          ;
                ADC #$00F0              ; $05:8411: 69 F0 00    ;
                TAX                     ; $05:8414: AA          ;
                SEP #$20                ; $05:8415: E2 20       ;
CODE_058417:    DEC $F1                 ; $05:8417: C6 F1       ;
                BPL CODE_0583FF         ; $05:8419: 10 E4       ;
                REP #$20                ; $05:841B: C2 20       ;
                JMP CODE_05805B         ; $05:841D: 4C 5B 80    ;

DATA_058420:    db $05,$0A                                      ;

DATA_058422:    db $06,$0C                                      ;

                INC $EB                 ; $05:8424: E6 EB       ;
                LDA $EB                 ; $05:8426: A5 EB       ;
                CLC                     ; $05:8428: 18          ;
                ADC #$0010              ; $05:8429: 69 10 00    ;
                STA $EB                 ; $05:842C: 85 EB       ;
                BRA CODE_058432         ; $05:842E: 80 02       ;

                INC $EB                 ; $05:8430: E6 EB       ;
CODE_058432:    LDY #$0001              ; $05:8432: A0 01 00    ;
                BRA CODE_058448         ; $05:8435: 80 11       ;

                INC $EB                 ; $05:8437: E6 EB       ;
                LDA $EB                 ; $05:8439: A5 EB       ;
                CLC                     ; $05:843B: 18          ;
                ADC #$0010              ; $05:843C: 69 10 00    ;
                STA $EB                 ; $05:843F: 85 EB       ;
                BRA CODE_058445         ; $05:8441: 80 02       ;

                INC $EB                 ; $05:8443: E6 EB       ;
CODE_058445:    LDY #$0000              ; $05:8445: A0 00 00    ;
CODE_058448:    LDX $EB                 ; $05:8448: A6 EB       ;
                SEP #$20                ; $05:844A: E2 20       ;
                LDA DATA_058420,y       ; $05:844C: B9 20 84    ;
                STA $7ED000,x           ; $05:844F: 9F 00 D0 7E ;
                REP #$20                ; $05:8453: C2 20       ;
                TXA                     ; $05:8455: 8A          ;
                CLC                     ; $05:8456: 18          ;
                ADC #$0010              ; $05:8457: 69 10 00    ;
                TAX                     ; $05:845A: AA          ;
                SEP #$20                ; $05:845B: E2 20       ;
                DEC $F1                 ; $05:845D: C6 F1       ;
CODE_05845F:    LDA $7ED000,x           ; $05:845F: BF 00 D0 7E ;
                CMP #$0E                ; $05:8463: C9 0E       ;
                BNE CODE_05846B         ; $05:8465: D0 04       ;
                LDA #$0D                ; $05:8467: A9 0D       ;
                BRA CODE_058476         ; $05:8469: 80 0B       ;

CODE_05846B:    CMP #$02                ; $05:846B: C9 02       ;
                BNE CODE_058473         ; $05:846D: D0 04       ;
                LDA #$0B                ; $05:846F: A9 0B       ;
                BRA CODE_058476         ; $05:8471: 80 03       ;

CODE_058473:    LDA DATA_058422,y       ; $05:8473: B9 22 84    ;
CODE_058476:    STA $7ED000,x           ; $05:8476: 9F 00 D0 7E ;
                REP #$20                ; $05:847A: C2 20       ;
                TXA                     ; $05:847C: 8A          ;
                CLC                     ; $05:847D: 18          ;
                ADC #$0010              ; $05:847E: 69 10 00    ;
                TAX                     ; $05:8481: AA          ;
                SEP #$20                ; $05:8482: E2 20       ;
                DEC $F1                 ; $05:8484: C6 F1       ;
                BPL CODE_05845F         ; $05:8486: 10 D7       ;
                REP #$20                ; $05:8488: C2 20       ;
                JMP CODE_05805B         ; $05:848A: 4C 5B 80    ;

                LDA $EB                 ; $05:848D: A5 EB       ;
                CLC                     ; $05:848F: 18          ;
                ADC #$0010              ; $05:8490: 69 10 00    ;
                TAX                     ; $05:8493: AA          ;
                SEP #$20                ; $05:8494: E2 20       ;
                LDA #$4E                ; $05:8496: A9 4E       ;
                STA $7ED030,x           ; $05:8498: 9F 30 D0 7E ;
                LDA $7ED000,x           ; $05:849C: BF 00 D0 7E ;
                BEQ CODE_0584A6         ; $05:84A0: F0 04       ;
                LDA #$38                ; $05:84A2: A9 38       ;
                BRA CODE_0584A8         ; $05:84A4: 80 02       ;

CODE_0584A6:    LDA #$34                ; $05:84A6: A9 34       ;
CODE_0584A8:    STA $7ED000,x           ; $05:84A8: 9F 00 D0 7E ;
                LDA $7ED010,x           ; $05:84AC: BF 10 D0 7E ;
                BEQ CODE_0584BA         ; $05:84B0: F0 08       ;
                CMP #$12                ; $05:84B2: C9 12       ;
                BEQ CODE_0584BA         ; $05:84B4: F0 04       ;
                LDA #$44                ; $05:84B6: A9 44       ;
                BRA CODE_0584BC         ; $05:84B8: 80 02       ;

CODE_0584BA:    LDA #$40                ; $05:84BA: A9 40       ;
CODE_0584BC:    STA $7ED010,x           ; $05:84BC: 9F 10 D0 7E ;
                LDA $7ED020,x           ; $05:84C0: BF 20 D0 7E ;
                BEQ CODE_0584CE         ; $05:84C4: F0 08       ;
                CMP #$12                ; $05:84C6: C9 12       ;
                BEQ CODE_0584CE         ; $05:84C8: F0 04       ;
                LDA #$4D                ; $05:84CA: A9 4D       ;
                BRA CODE_0584D0         ; $05:84CC: 80 02       ;

CODE_0584CE:    LDA #$4C                ; $05:84CE: A9 4C       ;
CODE_0584D0:    STA $7ED020,x           ; $05:84D0: 9F 20 D0 7E ;
                INX                     ; $05:84D4: E8          ;
                LDA $7ED000,x           ; $05:84D5: BF 00 D0 7E ;
                BEQ CODE_0584F7         ; $05:84D9: F0 1C       ;
                CMP #$12                ; $05:84DB: C9 12       ;
                BEQ CODE_0584F7         ; $05:84DD: F0 18       ;
                CMP #$18                ; $05:84DF: C9 18       ;
                BEQ CODE_0584F3         ; $05:84E1: F0 10       ;
                CMP #$07                ; $05:84E3: C9 07       ;
                BEQ CODE_0584F3         ; $05:84E5: F0 0C       ;
                CMP #$17                ; $05:84E7: C9 17       ;
                BEQ CODE_0584EF         ; $05:84E9: F0 04       ;
                LDA #$39                ; $05:84EB: A9 39       ;
                BRA CODE_0584F9         ; $05:84ED: 80 0A       ;

CODE_0584EF:    LDA #$3D                ; $05:84EF: A9 3D       ;
                BRA CODE_0584F9         ; $05:84F1: 80 06       ;

CODE_0584F3:    LDA #$36                ; $05:84F3: A9 36       ;
                BRA CODE_0584F9         ; $05:84F5: 80 02       ;

CODE_0584F7:    LDA #$35                ; $05:84F7: A9 35       ;
CODE_0584F9:    STA $7ED000,x           ; $05:84F9: 9F 00 D0 7E ;
                LDA #$41                ; $05:84FD: A9 41       ;
                STA $7ED010,x           ; $05:84FF: 9F 10 D0 7E ;
                LDA #$48                ; $05:8503: A9 48       ;
                STA $7ED020,x           ; $05:8505: 9F 20 D0 7E ;
                LDA #$4E                ; $05:8509: A9 4E       ;
                STA $7ED030,x           ; $05:850B: 9F 30 D0 7E ;
                INX                     ; $05:850F: E8          ;
CODE_058510:    DEC $F1                 ; $05:8510: C6 F1       ;
                LDA $F1                 ; $05:8512: A5 F1       ;
                BNE CODE_058519         ; $05:8514: D0 03       ;
                JMP CODE_058599         ; $05:8516: 4C 99 85    ;

CODE_058519:    LDA $7ED000,x           ; $05:8519: BF 00 D0 7E ;
                BNE CODE_058539         ; $05:851D: D0 1A       ;
                LDA #$36                ; $05:851F: A9 36       ;
                STA $7ED000,x           ; $05:8521: 9F 00 D0 7E ;
                LDA #$35                ; $05:8525: A9 35       ;
                STA $7ED001,x           ; $05:8527: 9F 01 D0 7E ;
                LDA #$42                ; $05:852B: A9 42       ;
                STA $7ED010,x           ; $05:852D: 9F 10 D0 7E ;
                LDA #$41                ; $05:8531: A9 41       ;
                STA $7ED011,x           ; $05:8533: 9F 11 D0 7E ;
                BRA CODE_05856F         ; $05:8537: 80 36       ;

CODE_058539:    CMP #$18                ; $05:8539: C9 18       ;
                BEQ CODE_058557         ; $05:853B: F0 1A       ;
                LDA #$3A                ; $05:853D: A9 3A       ;
                STA $7ED000,x           ; $05:853F: 9F 00 D0 7E ;
                LDA #$39                ; $05:8543: A9 39       ;
                STA $7ED001,x           ; $05:8545: 9F 01 D0 7E ;
                LDA #$42                ; $05:8549: A9 42       ;
                STA $7ED010,x           ; $05:854B: 9F 10 D0 7E ;
                LDA #$41                ; $05:854F: A9 41       ;
                STA $7ED011,x           ; $05:8551: 9F 11 D0 7E ;
                BRA CODE_05856F         ; $05:8555: 80 18       ;

CODE_058557:    LDA #$36                ; $05:8557: A9 36       ;
                STA $7ED000,x           ; $05:8559: 9F 00 D0 7E ;
                LDA #$35                ; $05:855D: A9 35       ;
                STA $7ED001,x           ; $05:855F: 9F 01 D0 7E ;
                LDA #$42                ; $05:8563: A9 42       ;
                STA $7ED010,x           ; $05:8565: 9F 10 D0 7E ;
                LDA #$41                ; $05:8569: A9 41       ;
                STA $7ED011,x           ; $05:856B: 9F 11 D0 7E ;
CODE_05856F:    LDA #$47                ; $05:856F: A9 47       ;
                STA $7ED020,x           ; $05:8571: 9F 20 D0 7E ;
                LDA #$48                ; $05:8575: A9 48       ;
                STA $7ED021,x           ; $05:8577: 9F 21 D0 7E ;
                LDA #$4E                ; $05:857B: A9 4E       ;
                STA $7ED030,x           ; $05:857D: 9F 30 D0 7E ;
                STA $7ED031,x           ; $05:8581: 9F 31 D0 7E ;
                INX                     ; $05:8585: E8          ;
                INX                     ; $05:8586: E8          ;
                TXA                     ; $05:8587: 8A          ;
                AND #$0F                ; $05:8588: 29 0F       ;
                BNE CODE_058510         ; $05:858A: D0 84       ;
                REP #$20                ; $05:858C: C2 20       ;
                TXA                     ; $05:858E: 8A          ;
                CLC                     ; $05:858F: 18          ;
                ADC #$00F0              ; $05:8590: 69 F0 00    ;
                TAX                     ; $05:8593: AA          ;
                SEP #$20                ; $05:8594: E2 20       ;
                JMP CODE_058510         ; $05:8596: 4C 10 85    ;

CODE_058599:    LDA #$42                ; $05:8599: A9 42       ;
                STA $7ED010,x           ; $05:859B: 9F 10 D0 7E ;
                LDA #$47                ; $05:859F: A9 47       ;
                STA $7ED020,x           ; $05:85A1: 9F 20 D0 7E ;
                LDA #$4E                ; $05:85A5: A9 4E       ;
                STA $7ED030,x           ; $05:85A7: 9F 30 D0 7E ;
                STA $7ED031,x           ; $05:85AB: 9F 31 D0 7E ;
                LDA $7ED000,x           ; $05:85AF: BF 00 D0 7E ;
                BNE CODE_0585CF         ; $05:85B3: D0 1A       ;
                LDA #$36                ; $05:85B5: A9 36       ;
                STA $7ED000,x           ; $05:85B7: 9F 00 D0 7E ;
                LDA #$37                ; $05:85BB: A9 37       ;
                STA $7ED001,x           ; $05:85BD: 9F 01 D0 7E ;
                LDA #$43                ; $05:85C1: A9 43       ;
                STA $7ED011,x           ; $05:85C3: 9F 11 D0 7E ;
                LDA #$49                ; $05:85C7: A9 49       ;
                STA $7ED021,x           ; $05:85C9: 9F 21 D0 7E ;
                BRA CODE_0585E7         ; $05:85CD: 80 18       ;

CODE_0585CF:    LDA #$3A                ; $05:85CF: A9 3A       ;
                STA $7ED000,x           ; $05:85D1: 9F 00 D0 7E ;
                LDA #$3B                ; $05:85D5: A9 3B       ;
                STA $7ED001,x           ; $05:85D7: 9F 01 D0 7E ;
                LDA #$45                ; $05:85DB: A9 45       ;
                STA $7ED011,x           ; $05:85DD: 9F 11 D0 7E ;
                LDA #$4A                ; $05:85E1: A9 4A       ;
                STA $7ED021,x           ; $05:85E3: 9F 21 D0 7E ;
CODE_0585E7:    REP #$20                ; $05:85E7: C2 20       ;
                JMP CODE_05805B         ; $05:85E9: 4C 5B 80    ;

                INC $EB                 ; $05:85EC: E6 EB       ;
                LDX $EB                 ; $05:85EE: A6 EB       ;
                STX $E2                 ; $05:85F0: 86 E2       ;
                LDA $EF                 ; $05:85F2: A5 EF       ;
                ASL A                   ; $05:85F4: 0A          ;
                TAY                     ; $05:85F5: A8          ;
                LDA DATA_05878A,y       ; $05:85F6: B9 8A 87    ;
                TAY                     ; $05:85F9: A8          ;
                SEP #$20                ; $05:85FA: E2 20       ;
CODE_0585FC:    LDA DATA_05B323,y       ; $05:85FC: B9 23 B3    ;
                BEQ CODE_058610         ; $05:85FF: F0 0F       ;
                CMP #$FF                ; $05:8601: C9 FF       ;
                BEQ CODE_058634         ; $05:8603: F0 2F       ;
                CMP #$FE                ; $05:8605: C9 FE       ;
                BEQ CODE_058624         ; $05:8607: F0 1B       ;
                LDA DATA_05B323,y       ; $05:8609: B9 23 B3    ;
                STA $7ED000,x           ; $05:860C: 9F 00 D0 7E ;
CODE_058610:    INY                     ; $05:8610: C8          ;
                INX                     ; $05:8611: E8          ;
                REP #$20                ; $05:8612: C2 20       ;
                TXA                     ; $05:8614: 8A          ;
                AND #$000F              ; $05:8615: 29 0F 00    ;
                BNE CODE_058620         ; $05:8618: D0 06       ;
                TXA                     ; $05:861A: 8A          ;
                CLC                     ; $05:861B: 18          ;
                ADC #$00F0              ; $05:861C: 69 F0 00    ;
                TAX                     ; $05:861F: AA          ;
CODE_058620:    SEP #$20                ; $05:8620: E2 20       ;
                BRA CODE_0585FC         ; $05:8622: 80 D8       ;

CODE_058624:    REP #$20                ; $05:8624: C2 20       ;
                LDA $E2                 ; $05:8626: A5 E2       ;
                CLC                     ; $05:8628: 18          ;
                ADC #$0010              ; $05:8629: 69 10 00    ;
                STA $E2                 ; $05:862C: 85 E2       ;
                TAX                     ; $05:862E: AA          ;
                SEP #$20                ; $05:862F: E2 20       ;
                INY                     ; $05:8631: C8          ;
                BRA CODE_0585FC         ; $05:8632: 80 C8       ;

CODE_058634:    REP #$20                ; $05:8634: C2 20       ;
                JMP CODE_05805B         ; $05:8636: 4C 5B 80    ;

                LDA $EB                 ; $05:8639: A5 EB       ;
                CLC                     ; $05:863B: 18          ;
                ADC #$0010              ; $05:863C: 69 10 00    ;
                TAX                     ; $05:863F: AA          ;
                INX                     ; $05:8640: E8          ;
                BRA CODE_058650         ; $05:8641: 80 0D       ;

                LDA $EB                 ; $05:8643: A5 EB       ;
                CLC                     ; $05:8645: 18          ;
                ADC #$0010              ; $05:8646: 69 10 00    ;
                TAX                     ; $05:8649: AA          ;
                BRA CODE_058650         ; $05:864A: 80 04       ;

                INC $EB                 ; $05:864C: E6 EB       ;
                LDX $EB                 ; $05:864E: A6 EB       ;
CODE_058650:    STX $E2                 ; $05:8650: 86 E2       ;
                LDA $EF                 ; $05:8652: A5 EF       ;
                ASL A                   ; $05:8654: 0A          ;
                TAY                     ; $05:8655: A8          ;
                LDA DATA_0587AA,y       ; $05:8656: B9 AA 87    ;
                TAY                     ; $05:8659: A8          ;
                SEP #$20                ; $05:865A: E2 20       ;
CODE_05865C:    LDA DATA_05B3E2,y       ; $05:865C: B9 E2 B3    ;
                BEQ CODE_058670         ; $05:865F: F0 0F       ;
                CMP #$FF                ; $05:8661: C9 FF       ;
                BEQ CODE_058694         ; $05:8663: F0 2F       ;
                CMP #$FE                ; $05:8665: C9 FE       ;
                BEQ CODE_058684         ; $05:8667: F0 1B       ;
                LDA DATA_05B3E2,y       ; $05:8669: B9 E2 B3    ;
                STA $7ED000,x           ; $05:866C: 9F 00 D0 7E ;
CODE_058670:    INY                     ; $05:8670: C8          ;
                INX                     ; $05:8671: E8          ;
                REP #$20                ; $05:8672: C2 20       ;
                TXA                     ; $05:8674: 8A          ;
                AND #$000F              ; $05:8675: 29 0F 00    ;
                BNE CODE_058680         ; $05:8678: D0 06       ;
                TXA                     ; $05:867A: 8A          ;
                CLC                     ; $05:867B: 18          ;
                ADC #$00F0              ; $05:867C: 69 F0 00    ;
                TAX                     ; $05:867F: AA          ;
CODE_058680:    SEP #$20                ; $05:8680: E2 20       ;
                BRA CODE_05865C         ; $05:8682: 80 D8       ;

CODE_058684:    REP #$20                ; $05:8684: C2 20       ;
                LDA $E2                 ; $05:8686: A5 E2       ;
                CLC                     ; $05:8688: 18          ;
                ADC #$0010              ; $05:8689: 69 10 00    ;
                STA $E2                 ; $05:868C: 85 E2       ;
                TAX                     ; $05:868E: AA          ;
                SEP #$20                ; $05:868F: E2 20       ;
                INY                     ; $05:8691: C8          ;
                BRA CODE_05865C         ; $05:8692: 80 C8       ;

CODE_058694:    REP #$20                ; $05:8694: C2 20       ;
                JMP CODE_05805B         ; $05:8696: 4C 5B 80    ;

                LDX $EB                 ; $05:8699: A6 EB       ;
                STX $E2                 ; $05:869B: 86 E2       ;
                LDA $EF                 ; $05:869D: A5 EF       ;
                ASL A                   ; $05:869F: 0A          ;
                TAY                     ; $05:86A0: A8          ;
                LDA DATA_0587BE,y       ; $05:86A1: B9 BE 87    ;
                TAY                     ; $05:86A4: A8          ;
                SEP #$20                ; $05:86A5: E2 20       ;
CODE_0586A7:    LDA DATA_05AD48,y       ; $05:86A7: B9 48 AD    ;
                BEQ CODE_0586B8         ; $05:86AA: F0 0C       ;
                CMP #$FF                ; $05:86AC: C9 FF       ;
                BEQ CODE_0586E4         ; $05:86AE: F0 34       ;
                CMP #$FE                ; $05:86B0: C9 FE       ;
                BEQ CODE_0586CC         ; $05:86B2: F0 18       ;
                STA $7ED000,x           ; $05:86B4: 9F 00 D0 7E ;
CODE_0586B8:    INY                     ; $05:86B8: C8          ;
                INX                     ; $05:86B9: E8          ;
                REP #$20                ; $05:86BA: C2 20       ;
                TXA                     ; $05:86BC: 8A          ;
                AND #$000F              ; $05:86BD: 29 0F 00    ;
                BNE CODE_0586C8         ; $05:86C0: D0 06       ;
                TXA                     ; $05:86C2: 8A          ;
                CLC                     ; $05:86C3: 18          ;
                ADC #$00F0              ; $05:86C4: 69 F0 00    ;
                TAX                     ; $05:86C7: AA          ;
CODE_0586C8:    SEP #$20                ; $05:86C8: E2 20       ;
                BRA CODE_0586A7         ; $05:86CA: 80 DB       ;

CODE_0586CC:    REP #$20                ; $05:86CC: C2 20       ;
                LDA $E2                 ; $05:86CE: A5 E2       ;
                CLC                     ; $05:86D0: 18          ;
                ADC #$0010              ; $05:86D1: 69 10 00    ;
                STA $E2                 ; $05:86D4: 85 E2       ;
                TAX                     ; $05:86D6: AA          ;
                AND #$00F0              ; $05:86D7: 29 F0 00    ;
                CMP #$00F0              ; $05:86DA: C9 F0 00    ;
                BEQ CODE_0586E4         ; $05:86DD: F0 05       ;
                SEP #$20                ; $05:86DF: E2 20       ;
                INY                     ; $05:86E1: C8          ;
                BRA CODE_0586A7         ; $05:86E2: 80 C3       ;

CODE_0586E4:    REP #$20                ; $05:86E4: C2 20       ;
                JMP CODE_05805B         ; $05:86E6: 4C 5B 80    ;

                DEC $EF                 ; $05:86E9: C6 EF       ;
                LDA $EF                 ; $05:86EB: A5 EF       ;
                AND #$0003              ; $05:86ED: 29 03 00    ;
                ASL A                   ; $05:86F0: 0A          ;
                ASL A                   ; $05:86F1: 0A          ;
                ASL A                   ; $05:86F2: 0A          ;
                ASL A                   ; $05:86F3: 0A          ;
                ORA $F1                 ; $05:86F4: 05 F1       ;
                ASL A                   ; $05:86F6: 0A          ;
                ASL A                   ; $05:86F7: 0A          ;
                TAY                     ; $05:86F8: A8          ;
                LDX $EB                 ; $05:86F9: A6 EB       ;
                SEP #$20                ; $05:86FB: E2 20       ;
                LDA DATA_0591E4,y       ; $05:86FD: B9 E4 91    ;
                STA $7ED000,x           ; $05:8700: 9F 00 D0 7E ;
                LDA DATA_0591E4+1,y     ; $05:8704: B9 E5 91    ;
                STA $7ED001,x           ; $05:8707: 9F 01 D0 7E ;
                LDA DATA_0591E4+2,y     ; $05:870B: B9 E6 91    ;
                STA $7ED010,x           ; $05:870E: 9F 10 D0 7E ;
                LDA DATA_0591E4+3,y     ; $05:8712: B9 E7 91    ;
                STA $7ED011,x           ; $05:8715: 9F 11 D0 7E ;
                REP #$20                ; $05:8719: C2 20       ;
                JMP CODE_05805B         ; $05:871B: 4C 5B 80    ;

DATA_05871E:    db $04,$05,$0B,$0C,$0B,$0C                      ;

                INC $EB                 ; $05:8724: E6 EB       ;
                LDA $EB                 ; $05:8726: A5 EB       ;
                CLC                     ; $05:8728: 18          ;
                ADC #$0020              ; $05:8729: 69 20 00    ;
                TAX                     ; $05:872C: AA          ;
                SEP #$20                ; $05:872D: E2 20       ;
                LDA DATA_05871E         ; $05:872F: AD 1E 87    ;\
                STA $7ED000,x           ; $05:8732: 9F 00 D0 7E ; |
                LDA DATA_05871E+1       ; $05:8736: AD 1F 87    ; |
                STA $7ED001,x           ; $05:8739: 9F 01 D0 7E ; |
                LDA DATA_05871E+2       ; $05:873D: AD 20 87    ; |
                STA $7ED010,x           ; $05:8740: 9F 10 D0 7E ; |
                LDA DATA_05871E+3       ; $05:8744: AD 21 87    ; |
                STA $7ED011,x           ; $05:8747: 9F 11 D0 7E ; |
                LDA DATA_05871E+4       ; $05:874B: AD 22 87    ; |
                STA $7ED020,x           ; $05:874E: 9F 20 D0 7E ; |
                LDA DATA_05871E+5       ; $05:8752: AD 23 87    ; |
                STA $7ED021,x           ; $05:8755: 9F 21 D0 7E ;/
                REP #$20                ; $05:8759: C2 20       ;
                JMP CODE_05805B         ; $05:875B: 4C 5B 80    ;

                INC $EB                 ; $05:875E: E6 EB       ;
                LDA $EB                 ; $05:8760: A5 EB       ;
                CLC                     ; $05:8762: 18          ;
                ADC #$0020              ; $05:8763: 69 20 00    ;
                TAX                     ; $05:8766: AA          ;
                SEP #$20                ; $05:8767: E2 20       ;
                LDA DATA_05871E         ; $05:8769: AD 1E 87    ;\
                STA $7ED010,x           ; $05:876C: 9F 10 D0 7E ; |
                LDA DATA_05871E+1       ; $05:8770: AD 1F 87    ; |
                STA $7ED011,x           ; $05:8773: 9F 11 D0 7E ; |
                LDA DATA_05871E+2       ; $05:8777: AD 20 87    ; |
                STA $7ED020,x           ; $05:877A: 9F 20 D0 7E ; |
                LDA DATA_05871E+3       ; $05:877E: AD 21 87    ; |
                STA $7ED021,x           ; $05:8781: 9F 21 D0 7E ;/
                REP #$20                ; $05:8785: C2 20       ;
                JMP CODE_05805B         ; $05:8787: 4C 5B 80    ;

DATA_05878A:    db $00,$00,$00,$00,$1F,$00,$1F,$00              ;
                db $3D,$00,$3D,$00,$44,$00,$44,$00              ;
                db $54,$00,$54,$00,$6E,$00,$00,$00              ;
                db $B3,$00,$B3,$00,$00,$00,$00,$00              ;

DATA_0587AA:    db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$04,$00,$18,$00,$2C,$00              ;
                db $52,$00,$90,$00                              ;

DATA_0587BE:    db $00,$00,$31,$00,$3B,$00,$83,$00              ;
                db $F5,$00,$4B,$01,$52,$01,$62,$01              ;
                db $AC,$01,$06,$02,$8D,$02,$D5,$02              ;
                db $F2,$02,$79,$03,$A0,$03                      ;

DATA_0587DC:    db $9A,$00,$A7,$00,$C9,$00,$D0,$00              ;
                db $DC,$00,$06,$01,$26,$01                      ;

                LDY DATA_0587DC         ; $05:87EA: AC DC 87    ;
                LDA $EB                 ; $05:87ED: A5 EB       ;
                TAX                     ; $05:87EF: AA          ;
                INX                     ; $05:87F0: E8          ;
                INX                     ; $05:87F1: E8          ;
                BRA CODE_05884A         ; $05:87F2: 80 56       ;

                LDY DATA_0587DC+2       ; $05:87F4: AC DE 87    ;
                LDA $EB                 ; $05:87F7: A5 EB       ;
                CLC                     ; $05:87F9: 18          ;
                ADC #$0012              ; $05:87FA: 69 12 00    ;
                TAX                     ; $05:87FD: AA          ;
                BRA CODE_05884A         ; $05:87FE: 80 4A       ;

                LDY DATA_0587DC+4       ; $05:8800: AC E0 87    ;
                LDA $EB                 ; $05:8803: A5 EB       ;
                CLC                     ; $05:8805: 18          ;
                ADC #$0001              ; $05:8806: 69 01 00    ;
                TAX                     ; $05:8809: AA          ;
                BRA CODE_05884A         ; $05:880A: 80 3E       ;

                LDY DATA_0587DC+6       ; $05:880C: AC E2 87    ;
                LDA $EB                 ; $05:880F: A5 EB       ;
                CLC                     ; $05:8811: 18          ;
                ADC #$0011              ; $05:8812: 69 11 00    ;
                TAX                     ; $05:8815: AA          ;
                BRA CODE_05884A         ; $05:8816: 80 32       ;

                LDY DATA_0587DC+8       ; $05:8818: AC E4 87    ;
                LDA $EB                 ; $05:881B: A5 EB       ;
                CLC                     ; $05:881D: 18          ;
                ADC #$0020              ; $05:881E: 69 20 00    ;
                TAX                     ; $05:8821: AA          ;
                BRA CODE_05884A         ; $05:8822: 80 26       ;

                LDY DATA_0587DC+10      ; $05:8824: AC E6 87    ;
                LDX $EB                 ; $05:8827: A6 EB       ;
                INX                     ; $05:8829: E8          ;
                BRA CODE_05884A         ; $05:882A: 80 1E       ;

                LDY DATA_0587DC+12      ; $05:882C: AC E8 87    ;
                LDA $EB                 ; $05:882F: A5 EB       ;
                CLC                     ; $05:8831: 18          ;
                ADC #$0012              ; $05:8832: 69 12 00    ;
                TAX                     ; $05:8835: AA          ;
                BRA CODE_05884A         ; $05:8836: 80 12       ;

                INC $EB                 ; $05:8838: E6 EB       ;
                LDA $EB                 ; $05:883A: A5 EB       ;
                CLC                     ; $05:883C: 18          ;
                ADC #$0010              ; $05:883D: 69 10 00    ;
                TAX                     ; $05:8840: AA          ;
                BRA CODE_058847         ; $05:8841: 80 04       ;

                INC $EB                 ; $05:8843: E6 EB       ;
                LDX $EB                 ; $05:8845: A6 EB       ;
CODE_058847:    LDY #$0000              ; $05:8847: A0 00 00    ;
CODE_05884A:    STX $E2                 ; $05:884A: 86 E2       ;
                SEP #$20                ; $05:884C: E2 20       ;
CODE_05884E:    LDA DATA_05B1A5,y       ; $05:884E: B9 A5 B1    ;
                CMP #$FF                ; $05:8851: C9 FF       ;
                BEQ CODE_0588C6         ; $05:8853: F0 71       ;
                CMP #$FE                ; $05:8855: C9 FE       ;
                BEQ CODE_0588A1         ; $05:8857: F0 48       ;
                JSR CODE_058874         ; $05:8859: 20 74 88    ;
                STA $7ED000,x           ; $05:885C: 9F 00 D0 7E ;
                INY                     ; $05:8860: C8          ;
                INX                     ; $05:8861: E8          ;
                REP #$20                ; $05:8862: C2 20       ;
                TXA                     ; $05:8864: 8A          ;
                AND #$000F              ; $05:8865: 29 0F 00    ;
                BNE CODE_058870         ; $05:8868: D0 06       ;
                TXA                     ; $05:886A: 8A          ;
                CLC                     ; $05:886B: 18          ;
                ADC #$00F0              ; $05:886C: 69 F0 00    ;
                TAX                     ; $05:886F: AA          ;
CODE_058870:    SEP #$20                ; $05:8870: E2 20       ;
                BRA CODE_05884E         ; $05:8872: 80 DA       ;

CODE_058874:    STA $E4                 ; $05:8874: 85 E4       ;
                CMP #$12                ; $05:8876: C9 12       ;
                BNE CODE_05887D         ; $05:8878: D0 03       ;
                JMP CODE_0588CB         ; $05:887A: 4C CB 88    ;

CODE_05887D:    CMP #$03                ; $05:887D: C9 03       ;
                BNE CODE_058884         ; $05:887F: D0 03       ;
                JMP CODE_0588F8         ; $05:8881: 4C F8 88    ;

CODE_058884:    CMP #$04                ; $05:8884: C9 04       ;
                BNE CODE_05888B         ; $05:8886: D0 03       ;
                JMP CODE_058905         ; $05:8888: 4C 05 89    ;

CODE_05888B:    CMP #$05                ; $05:888B: C9 05       ;
                BNE CODE_058892         ; $05:888D: D0 03       ;
                JMP CODE_05891A         ; $05:888F: 4C 1A 89    ;

CODE_058892:    CMP #$18                ; $05:8892: C9 18       ;
                BNE CODE_058899         ; $05:8894: D0 03       ;
                JMP CODE_05892F         ; $05:8896: 4C 2F 89    ;

CODE_058899:    CMP #$07                ; $05:8899: C9 07       ;
                BNE CODE_0588A0         ; $05:889B: D0 03       ;
                JMP CODE_05894C         ; $05:889D: 4C 4C 89    ;

CODE_0588A0:    RTS                     ; $05:88A0: 60          ;

CODE_0588A1:    INY                     ; $05:88A1: C8          ;
                REP #$20                ; $05:88A2: C2 20       ;
                LDA $E2                 ; $05:88A4: A5 E2       ;
                CLC                     ; $05:88A6: 18          ;
                ADC #$0010              ; $05:88A7: 69 10 00    ;
                TAX                     ; $05:88AA: AA          ;
                AND #$00F0              ; $05:88AB: 29 F0 00    ;
                BEQ CODE_0588C6         ; $05:88AE: F0 16       ;
                DEX                     ; $05:88B0: CA          ;
                TXA                     ; $05:88B1: 8A          ;
                AND #$000F              ; $05:88B2: 29 0F 00    ;
                CMP #$000F              ; $05:88B5: C9 0F 00    ;
                BNE CODE_0588C0         ; $05:88B8: D0 06       ;
                TXA                     ; $05:88BA: 8A          ;
                SEC                     ; $05:88BB: 38          ;
                SBC #$00F0              ; $05:88BC: E9 F0 00    ;
                TAX                     ; $05:88BF: AA          ;
CODE_0588C0:    STX $E2                 ; $05:88C0: 86 E2       ;
                SEP #$20                ; $05:88C2: E2 20       ;
                BRA CODE_05884E         ; $05:88C4: 80 88       ;

CODE_0588C6:    REP #$20                ; $05:88C6: C2 20       ;
                JMP CODE_05805B         ; $05:88C8: 4C 5B 80    ;

CODE_0588CB:    LDA $7ED000,x           ; $05:88CB: BF 00 D0 7E ;
                BEQ CODE_0588F5         ; $05:88CF: F0 24       ;
                CMP #$18                ; $05:88D1: C9 18       ;
                BNE CODE_0588D9         ; $05:88D3: D0 04       ;
                LDA #$02                ; $05:88D5: A9 02       ;
                BRA CODE_0588F7         ; $05:88D7: 80 1E       ;

CODE_0588D9:    CMP #$06                ; $05:88D9: C9 06       ;
                BNE CODE_0588E1         ; $05:88DB: D0 04       ;
                LDA #$11                ; $05:88DD: A9 11       ;
                BRA CODE_0588F7         ; $05:88DF: 80 16       ;

CODE_0588E1:    CMP #$16                ; $05:88E1: C9 16       ;
                BNE CODE_0588E9         ; $05:88E3: D0 04       ;
                LDA #$01                ; $05:88E5: A9 01       ;
                BRA CODE_0588F7         ; $05:88E7: 80 0E       ;

CODE_0588E9:    CMP #$05                ; $05:88E9: C9 05       ;
                BNE CODE_0588F1         ; $05:88EB: D0 04       ;
                LDA #$62                ; $05:88ED: A9 62       ;
                BRA CODE_0588F7         ; $05:88EF: 80 06       ;

CODE_0588F1:    LDA #$10                ; $05:88F1: A9 10       ;
                BRA CODE_0588F7         ; $05:88F3: 80 02       ;

CODE_0588F5:    LDA $E4                 ; $05:88F5: A5 E4       ;
CODE_0588F7:    RTS                     ; $05:88F7: 60          ;

CODE_0588F8:    LDA $7ED000,x           ; $05:88F8: BF 00 D0 7E ;
                BEQ CODE_058902         ; $05:88FC: F0 04       ;
                LDA #$36                ; $05:88FE: A9 36       ;
                BRA CODE_058904         ; $05:8900: 80 02       ;

CODE_058902:    LDA $E4                 ; $05:8902: A5 E4       ;
CODE_058904:    RTS                     ; $05:8904: 60          ;

CODE_058905:    LDA $7ED000,x           ; $05:8905: BF 00 D0 7E ;
                BEQ CODE_058917         ; $05:8909: F0 0C       ;
                CMP #$12                ; $05:890B: C9 12       ;
                BNE CODE_058913         ; $05:890D: D0 04       ;
                LDA #$14                ; $05:890F: A9 14       ;
                BRA CODE_058919         ; $05:8911: 80 06       ;

CODE_058913:    LDA #$37                ; $05:8913: A9 37       ;
                BRA CODE_058919         ; $05:8915: 80 02       ;

CODE_058917:    LDA $E4                 ; $05:8917: A5 E4       ;
CODE_058919:    RTS                     ; $05:8919: 60          ;

CODE_05891A:    LDA $7ED000,x           ; $05:891A: BF 00 D0 7E ;
                BEQ CODE_05892C         ; $05:891E: F0 0C       ;
                CMP #$13                ; $05:8920: C9 13       ;
                BNE CODE_058928         ; $05:8922: D0 04       ;
                LDA #$15                ; $05:8924: A9 15       ;
                BRA CODE_05892E         ; $05:8926: 80 06       ;

CODE_058928:    LDA #$38                ; $05:8928: A9 38       ;
                BRA CODE_05892E         ; $05:892A: 80 02       ;

CODE_05892C:    LDA $E4                 ; $05:892C: A5 E4       ;
CODE_05892E:    RTS                     ; $05:892E: 60          ;

CODE_05892F:    LDA $7ED000,x           ; $05:892F: BF 00 D0 7E ;
                BEQ CODE_058949         ; $05:8933: F0 14       ;
                CMP #$16                ; $05:8935: C9 16       ;
                BNE CODE_05893D         ; $05:8937: D0 04       ;
                LDA #$1E                ; $05:8939: A9 1E       ;
                BRA CODE_05894B         ; $05:893B: 80 0E       ;

CODE_05893D:    CMP #$13                ; $05:893D: C9 13       ;
                BNE CODE_058945         ; $05:893F: D0 04       ;
                LDA #$1E                ; $05:8941: A9 1E       ;
                BRA CODE_05894B         ; $05:8943: 80 06       ;

CODE_058945:    LDA #$1D                ; $05:8945: A9 1D       ;
                BRA CODE_05894B         ; $05:8947: 80 02       ;

CODE_058949:    LDA $E4                 ; $05:8949: A5 E4       ;
CODE_05894B:    RTS                     ; $05:894B: 60          ;

CODE_05894C:    LDA $7ED000,x           ; $05:894C: BF 00 D0 7E ;
                BEQ CODE_05896E         ; $05:8950: F0 1C       ;
                CMP #$16                ; $05:8952: C9 16       ;
                BNE CODE_05895A         ; $05:8954: D0 04       ;
                LDA #$0E                ; $05:8956: A9 0E       ;
                BRA CODE_058970         ; $05:8958: 80 16       ;

CODE_05895A:    CMP #$04                ; $05:895A: C9 04       ;
                BNE CODE_058962         ; $05:895C: D0 04       ;
                LDA #$70                ; $05:895E: A9 70       ;
                BRA CODE_058970         ; $05:8960: 80 0E       ;

CODE_058962:    CMP #$0B                ; $05:8962: C9 0B       ;
                BNE CODE_05896A         ; $05:8964: D0 04       ;
                LDA #$90                ; $05:8966: A9 90       ;
                BRA CODE_058970         ; $05:8968: 80 06       ;

CODE_05896A:    LDA #$49                ; $05:896A: A9 49       ;
                BRA CODE_058970         ; $05:896C: 80 02       ;

CODE_05896E:    LDA $E4                 ; $05:896E: A5 E4       ;
CODE_058970:    RTS                     ; $05:8970: 60          ;

DATA_058971:    db $00,$00,$90,$91,$92,$93,$00,$00              ;
                db $94,$95,$96,$97,$00,$00,$98,$99              ;
                db $9A,$9B,$00,$9C,$9D,$9E,$9F,$A0              ;
                db $00,$A1,$A2,$A3,$A4,$A5,$00,$A6              ;
                db $A7,$A8,$A9,$AA                              ;

                SEP #$20                ; $05:8995: E2 20       ;
                LDX $EB                 ; $05:8997: A6 EB       ;
                LDY #$0000              ; $05:8999: A0 00 00    ;
CODE_05899C:    LDA DATA_058971,y       ; $05:899C: B9 71 89    ;
                STA $7ED020,x           ; $05:899F: 9F 20 D0 7E ;
                LDA DATA_058971+1,y     ; $05:89A3: B9 72 89    ;
                STA $7ED021,x           ; $05:89A6: 9F 21 D0 7E ;
                LDA DATA_058971+2,y     ; $05:89AA: B9 73 89    ;
                STA $7ED022,x           ; $05:89AD: 9F 22 D0 7E ;
                LDA DATA_058971+3,y     ; $05:89B1: B9 74 89    ;
                STA $7ED023,x           ; $05:89B4: 9F 23 D0 7E ;
                LDA DATA_058971+4,y     ; $05:89B8: B9 75 89    ;
                STA $7ED024,x           ; $05:89BB: 9F 24 D0 7E ;
                LDA DATA_058971+5,y     ; $05:89BF: B9 76 89    ;
                STA $7ED025,x           ; $05:89C2: 9F 25 D0 7E ;
                REP #$20                ; $05:89C6: C2 20       ;
                TXA                     ; $05:89C8: 8A          ;
                CLC                     ; $05:89C9: 18          ;
                ADC #$0010              ; $05:89CA: 69 10 00    ;
                TAX                     ; $05:89CD: AA          ;
                SEP #$20                ; $05:89CE: E2 20       ;
                INY                     ; $05:89D0: C8          ;
                INY                     ; $05:89D1: C8          ;
                INY                     ; $05:89D2: C8          ;
                INY                     ; $05:89D3: C8          ;
                INY                     ; $05:89D4: C8          ;
                INY                     ; $05:89D5: C8          ;
                CPY #$0024              ; $05:89D6: C0 24 00    ;
                BNE CODE_05899C         ; $05:89D9: D0 C1       ;
                REP #$20                ; $05:89DB: C2 20       ;
                JMP CODE_05805B         ; $05:89DD: 4C 5B 80    ;

                LDX $EB                 ; $05:89E0: A6 EB       ;
                SEP #$20                ; $05:89E2: E2 20       ;
CODE_0589E4:    LDA #$09                ; $05:89E4: A9 09       ;
                STA $7ED020,x           ; $05:89E6: 9F 20 D0 7E ;
                LDA #$0B                ; $05:89EA: A9 0B       ;
                STA $7ED021,x           ; $05:89EC: 9F 21 D0 7E ;
                INX                     ; $05:89F0: E8          ;
                INX                     ; $05:89F1: E8          ;
                DEC $F1                 ; $05:89F2: C6 F1       ;
                LDA $F1                 ; $05:89F4: A5 F1       ;
                BPL CODE_0589E4         ; $05:89F6: 10 EC       ;
                REP #$20                ; $05:89F8: C2 20       ;
                JMP CODE_05805B         ; $05:89FA: 4C 5B 80    ;

                LDX $EB                 ; $05:89FD: A6 EB       ;
                SEP #$20                ; $05:89FF: E2 20       ;
CODE_058A01:    LDA $7ED020,x           ; $05:8A01: BF 20 D0 7E ;
                CMP #$09                ; $05:8A05: C9 09       ;
                BNE CODE_058A0D         ; $05:8A07: D0 04       ;
                LDA #$0A                ; $05:8A09: A9 0A       ;
                BRA CODE_058A0F         ; $05:8A0B: 80 02       ;

CODE_058A0D:    LDA #$04                ; $05:8A0D: A9 04       ;
CODE_058A0F:    STA $7ED020,x           ; $05:8A0F: 9F 20 D0 7E ;
                LDA #$01                ; $05:8A13: A9 01       ;
                STA $7ED030,x           ; $05:8A15: 9F 30 D0 7E ;
                REP #$20                ; $05:8A19: C2 20       ;
                TXA                     ; $05:8A1B: 8A          ;
                CLC                     ; $05:8A1C: 18          ;
                ADC #$0020              ; $05:8A1D: 69 20 00    ;
                TAX                     ; $05:8A20: AA          ;
                SEP #$20                ; $05:8A21: E2 20       ;
                DEC $F1                 ; $05:8A23: C6 F1       ;
                LDA $F1                 ; $05:8A25: A5 F1       ;
                BPL CODE_058A01         ; $05:8A27: 10 D8       ;
                REP #$20                ; $05:8A29: C2 20       ;
                JMP CODE_05805B         ; $05:8A2B: 4C 5B 80    ;

                LDX $EB                 ; $05:8A2E: A6 EB       ;
                SEP #$20                ; $05:8A30: E2 20       ;
CODE_058A32:    LDA $7ED021,x           ; $05:8A32: BF 21 D0 7E ;
                CMP #$0B                ; $05:8A36: C9 0B       ;
                BNE CODE_058A3E         ; $05:8A38: D0 04       ;
                LDA #$0A                ; $05:8A3A: A9 0A       ;
                BRA CODE_058A40         ; $05:8A3C: 80 02       ;

CODE_058A3E:    LDA #$04                ; $05:8A3E: A9 04       ;
CODE_058A40:    STA $7ED021,x           ; $05:8A40: 9F 21 D0 7E ;
                LDA #$01                ; $05:8A44: A9 01       ;
                STA $7ED031,x           ; $05:8A46: 9F 31 D0 7E ;
                REP #$20                ; $05:8A4A: C2 20       ;
                TXA                     ; $05:8A4C: 8A          ;
                CLC                     ; $05:8A4D: 18          ;
                ADC #$0020              ; $05:8A4E: 69 20 00    ;
                TAX                     ; $05:8A51: AA          ;
                SEP #$20                ; $05:8A52: E2 20       ;
                DEC $F1                 ; $05:8A54: C6 F1       ;
                LDA $F1                 ; $05:8A56: A5 F1       ;
                BPL CODE_058A32         ; $05:8A58: 10 D8       ;
                REP #$20                ; $05:8A5A: C2 20       ;
                JMP CODE_05805B         ; $05:8A5C: 4C 5B 80    ;

DATA_058A5F:    db $7A,$7B,$61,$62                              ;

DATA_058A63:    db $8C,$8D,$90,$91,$92                          ;

                LDX $EB                 ; $05:8A68: A6 EB       ;
                LDA #$0006              ; $05:8A6A: A9 06 00    ;
                STA $F1                 ; $05:8A6D: 85 F1       ;
                SEP #$20                ; $05:8A6F: E2 20       ;
                LDA DATA_058A5F         ; $05:8A71: AD 5F 8A    ;
                STA $7ED020,x           ; $05:8A74: 9F 20 D0 7E ;
                LDA DATA_058A5F+1       ; $05:8A78: AD 60 8A    ;
                STA $7ED021,x           ; $05:8A7B: 9F 21 D0 7E ;
CODE_058A7F:    LDA DATA_058A5F+2       ; $05:8A7F: AD 61 8A    ;
                STA $7ED030,x           ; $05:8A82: 9F 30 D0 7E ;
                LDA DATA_058A5F+3       ; $05:8A86: AD 62 8A    ;
                STA $7ED031,x           ; $05:8A89: 9F 31 D0 7E ;
                REP #$20                ; $05:8A8D: C2 20       ;
                TXA                     ; $05:8A8F: 8A          ;
                CLC                     ; $05:8A90: 18          ;
                ADC #$0010              ; $05:8A91: 69 10 00    ;
                TAX                     ; $05:8A94: AA          ;
                SEP #$20                ; $05:8A95: E2 20       ;
                DEC $F1                 ; $05:8A97: C6 F1       ;
                LDA $F1                 ; $05:8A99: A5 F1       ;
                BNE CODE_058A7F         ; $05:8A9B: D0 E2       ;
                LDA DATA_058A63         ; $05:8A9D: AD 63 8A    ;
                STA $7ED030,x           ; $05:8AA0: 9F 30 D0 7E ;
                LDA DATA_058A63+1       ; $05:8AA4: AD 64 8A    ;
                STA $7ED031,x           ; $05:8AA7: 9F 31 D0 7E ;
                LDA DATA_058A63+2       ; $05:8AAB: AD 65 8A    ;
                STA $7ED040,x           ; $05:8AAE: 9F 40 D0 7E ;
                LDA DATA_058A63+3       ; $05:8AB2: AD 66 8A    ;
                STA $7ED041,x           ; $05:8AB5: 9F 41 D0 7E ;
                LDA DATA_058A63+4       ; $05:8AB9: AD 67 8A    ;
                STA $7ED042,x           ; $05:8ABC: 9F 42 D0 7E ;
                REP #$20                ; $05:8AC0: C2 20       ;
                JMP CODE_05805B         ; $05:8AC2: 4C 5B 80    ;

DATA_058AC5:    db $70,$71,$72,$73,$74,$75,$76,$77              ;
                db $78,$79,$7A,$7B,$00,$7C,$7D,$00              ;

                LDX $EB                 ; $05:8AD5: A6 EB       ;
                INX                     ; $05:8AD7: E8          ;
                SEP #$20                ; $05:8AD8: E2 20       ;
                STZ $E5                 ; $05:8ADA: 64 E5       ;
                LDY #$0000              ; $05:8ADC: A0 00 00    ;
CODE_058ADF:    LDA DATA_058AC5,y       ; $05:8ADF: B9 C5 8A    ;
                STA $7ED000,x           ; $05:8AE2: 9F 00 D0 7E ;
                LDA DATA_058AC5+1,y     ; $05:8AE6: B9 C6 8A    ;
                STA $7ED001,x           ; $05:8AE9: 9F 01 D0 7E ;
                LDA DATA_058AC5+2,y     ; $05:8AED: B9 C7 8A    ;
                STA $7ED002,x           ; $05:8AF0: 9F 02 D0 7E ;
                LDA DATA_058AC5+3,y     ; $05:8AF4: B9 C8 8A    ;
                STA $7ED003,x           ; $05:8AF7: 9F 03 D0 7E ;
                INY                     ; $05:8AFB: C8          ;
                INY                     ; $05:8AFC: C8          ;
                INY                     ; $05:8AFD: C8          ;
                INY                     ; $05:8AFE: C8          ;
                INX                     ; $05:8AFF: E8          ;
                INX                     ; $05:8B00: E8          ;
                INX                     ; $05:8B01: E8          ;
                INX                     ; $05:8B02: E8          ;
                REP #$20                ; $05:8B03: C2 20       ;
                TXA                     ; $05:8B05: 8A          ;
                CLC                     ; $05:8B06: 18          ;
                ADC #$000C              ; $05:8B07: 69 0C 00    ;
                TAX                     ; $05:8B0A: AA          ;
                SEP #$20                ; $05:8B0B: E2 20       ;
                INC $E5                 ; $05:8B0D: E6 E5       ;
                LDA $E5                 ; $05:8B0F: A5 E5       ;
                CMP #$04                ; $05:8B11: C9 04       ;
                BNE CODE_058ADF         ; $05:8B13: D0 CA       ;
                REP #$20                ; $05:8B15: C2 20       ;
                JMP CODE_05805B         ; $05:8B17: 4C 5B 80    ;

DATA_058B1A:    db $2F,$30,$31,$32,$35,$36,$3A,$3B              ;

                SEP #$20                ; $05:8B22: E2 20       ;
                LDY #$0000              ; $05:8B24: A0 00 00    ;
                LDX $EB                 ; $05:8B27: A6 EB       ;
CODE_058B29:    LDA DATA_058B1A,y       ; $05:8B29: B9 1A 8B    ;
                STA $7ED020,x           ; $05:8B2C: 9F 20 D0 7E ;
                LDA DATA_058B1A+1,y     ; $05:8B30: B9 1B 8B    ;
                STA $7ED021,x           ; $05:8B33: 9F 21 D0 7E ;
                REP #$20                ; $05:8B37: C2 20       ;
                TXA                     ; $05:8B39: 8A          ;
                CLC                     ; $05:8B3A: 18          ;
                ADC #$0010              ; $05:8B3B: 69 10 00    ;
                TAX                     ; $05:8B3E: AA          ;
                SEP #$20                ; $05:8B3F: E2 20       ;
                INY                     ; $05:8B41: C8          ;
                INY                     ; $05:8B42: C8          ;
                CPY #$0008              ; $05:8B43: C0 08 00    ;
                BNE CODE_058B29         ; $05:8B46: D0 E1       ;
                REP #$20                ; $05:8B48: C2 20       ;
                JMP CODE_05805B         ; $05:8B4A: 4C 5B 80    ;

DATA_058B4D:    db $01,$1F,$02,$20                              ;

CODE_058B51:    SEP #$20                ; $05:8B51: E2 20       ;
                LDX $EB                 ; $05:8B53: A6 EB       ;
                LDY $EF                 ; $05:8B55: A4 EF       ;
CODE_058B57:    LDA DATA_058B4D,y       ; $05:8B57: B9 4D 8B    ;
                STA $7ED020,x           ; $05:8B5A: 9F 20 D0 7E ;
                LDA DATA_058B4D+2,y     ; $05:8B5E: B9 4F 8B    ;
                STA $7ED021,x           ; $05:8B61: 9F 21 D0 7E ;
                REP #$20                ; $05:8B65: C2 20       ;
                TXA                     ; $05:8B67: 8A          ;
                CLC                     ; $05:8B68: 18          ;
                ADC #$0010              ; $05:8B69: 69 10 00    ;
                TAX                     ; $05:8B6C: AA          ;
                SEP #$20                ; $05:8B6D: E2 20       ;
                DEC $F1                 ; $05:8B6F: C6 F1       ;
                LDA $F1                 ; $05:8B71: A5 F1       ;
                BPL CODE_058B57         ; $05:8B73: 10 E2       ;
                REP #$20                ; $05:8B75: C2 20       ;
                JMP CODE_05805B         ; $05:8B77: 4C 5B 80    ;

DATA_058B7A:    db $08,$09,$05,$06,$07,$05,$03,$04              ;
                db $05,$0F,$10,$11,$16,$17,$12,$1D              ;
                db $09,$1E,$06,$07,$05                          ;

                SEP #$20                ; $05:8B8F: E2 20       ;
                LDX $EB                 ; $05:8B91: A6 EB       ;
CODE_058B93:    TXA                     ; $05:8B93: 8A          ;
                AND #$F0                ; $05:8B94: 29 F0       ;
                BEQ CODE_058BB7         ; $05:8B96: F0 1F       ;
                LDA $7ED020,x           ; $05:8B98: BF 20 D0 7E ;
                CMP #$0C                ; $05:8B9C: C9 0C       ;
                BEQ CODE_058BE3         ; $05:8B9E: F0 43       ;
                LDA DATA_058B7A         ; $05:8BA0: AD 7A 8B    ;
                STA $7ED020,x           ; $05:8BA3: 9F 20 D0 7E ;
                LDA DATA_058B7A+1       ; $05:8BA7: AD 7B 8B    ;
                STA $7ED021,x           ; $05:8BAA: 9F 21 D0 7E ;
                LDA DATA_058B7A+2       ; $05:8BAE: AD 7C 8B    ;
                STA $7ED022,x           ; $05:8BB1: 9F 22 D0 7E ;
                BRA CODE_058BCC         ; $05:8BB5: 80 15       ;

CODE_058BB7:    LDA DATA_058B7A+6       ; $05:8BB7: AD 80 8B    ;
                STA $7ED020,x           ; $05:8BBA: 9F 20 D0 7E ;
                LDA DATA_058B7A+7       ; $05:8BBE: AD 81 8B    ;
                STA $7ED021,x           ; $05:8BC1: 9F 21 D0 7E ;
                LDA DATA_058B7A+8       ; $05:8BC5: AD 82 8B    ;
                STA $7ED022,x           ; $05:8BC8: 9F 22 D0 7E ;
CODE_058BCC:    LDA DATA_058B7A+3       ; $05:8BCC: AD 7D 8B    ;
                STA $7ED030,x           ; $05:8BCF: 9F 30 D0 7E ;
                LDA DATA_058B7A+4       ; $05:8BD3: AD 7E 8B    ;
                STA $7ED031,x           ; $05:8BD6: 9F 31 D0 7E ;
                LDA DATA_058B7A+5       ; $05:8BDA: AD 7F 8B    ;
                STA $7ED032,x           ; $05:8BDD: 9F 32 D0 7E ;
                BRA CODE_058C43         ; $05:8BE1: 80 60       ;

CODE_058BE3:    LDA DATA_058B7A+9       ; $05:8BE3: AD 83 8B    ;
                STA $7ED020,x           ; $05:8BE6: 9F 20 D0 7E ;
                LDA DATA_058B7A+10      ; $05:8BEA: AD 84 8B    ;
                STA $7ED021,x           ; $05:8BED: 9F 21 D0 7E ;
                LDA DATA_058B7A+11      ; $05:8BF1: AD 85 8B    ;
                STA $7ED022,x           ; $05:8BF4: 9F 22 D0 7E ;
                LDA DATA_058B7A+12      ; $05:8BF8: AD 86 8B    ;
                STA $7ED030,x           ; $05:8BFB: 9F 30 D0 7E ;
                LDA DATA_058B7A+13      ; $05:8BFF: AD 87 8B    ;
                STA $7ED031,x           ; $05:8C02: 9F 31 D0 7E ;
                LDA DATA_058B7A+14      ; $05:8C06: AD 88 8B    ;
                STA $7ED032,x           ; $05:8C09: 9F 32 D0 7E ;
                LDA DATA_058B7A+15      ; $05:8C0D: AD 89 8B    ;
                STA $7ED040,x           ; $05:8C10: 9F 40 D0 7E ;
                LDA DATA_058B7A+16      ; $05:8C14: AD 8A 8B    ;
                STA $7ED041,x           ; $05:8C17: 9F 41 D0 7E ;
                LDA DATA_058B7A+17      ; $05:8C1B: AD 8B 8B    ;
                STA $7ED042,x           ; $05:8C1E: 9F 42 D0 7E ;
                LDA DATA_058B7A+18      ; $05:8C22: AD 8C 8B    ;
                STA $7ED050,x           ; $05:8C25: 9F 50 D0 7E ;
                LDA DATA_058B7A+19      ; $05:8C29: AD 8D 8B    ;
                STA $7ED051,x           ; $05:8C2C: 9F 51 D0 7E ;
                LDA DATA_058B7A+20      ; $05:8C30: AD 8E 8B    ;
                STA $7ED052,x           ; $05:8C33: 9F 52 D0 7E ;
                REP #$20                ; $05:8C37: C2 20       ;
                TXA                     ; $05:8C39: 8A          ;
                CLC                     ; $05:8C3A: 18          ;
                ADC #$0020              ; $05:8C3B: 69 20 00    ;
                TAX                     ; $05:8C3E: AA          ;
                SEP #$20                ; $05:8C3F: E2 20       ;
                DEC $F1                 ; $05:8C41: C6 F1       ;
CODE_058C43:    REP #$20                ; $05:8C43: C2 20       ;
                TXA                     ; $05:8C45: 8A          ;
                CLC                     ; $05:8C46: 18          ;
                ADC #$0020              ; $05:8C47: 69 20 00    ;
                TAX                     ; $05:8C4A: AA          ;
                SEP #$20                ; $05:8C4B: E2 20       ;
                DEC $F1                 ; $05:8C4D: C6 F1       ;
                LDA $F1                 ; $05:8C4F: A5 F1       ;
                BMI CODE_058C56         ; $05:8C51: 30 03       ;
                JMP CODE_058B93         ; $05:8C53: 4C 93 8B    ;

CODE_058C56:    REP #$20                ; $05:8C56: C2 20       ;
                JMP CODE_05805B         ; $05:8C58: 4C 5B 80    ;

DATA_058C5B:    db $0C,$18,$19,$0A,$0B,$0D,$0E,$13              ;
                db $14,$1A,$1B                                  ;

                SEP #$20                ; $05:8C66: E2 20       ;
                LDX $EB                 ; $05:8C68: A6 EB       ;
CODE_058C6A:    LDA $7ED020,x           ; $05:8C6A: BF 20 D0 7E ;
                CMP #$1F                ; $05:8C6E: C9 1F       ;
                BNE CODE_058CAF         ; $05:8C70: D0 3D       ;
                LDA DATA_058C5B+3       ; $05:8C72: AD 5E 8C    ;
                STA $7ED010,x           ; $05:8C75: 9F 10 D0 7E ;
                LDA DATA_058C5B+4       ; $05:8C79: AD 5F 8C    ;
                STA $7ED011,x           ; $05:8C7C: 9F 11 D0 7E ;
                LDA DATA_058C5B+5       ; $05:8C80: AD 60 8C    ;
                STA $7ED020,x           ; $05:8C83: 9F 20 D0 7E ;
                LDA DATA_058C5B+6       ; $05:8C87: AD 61 8C    ;
                STA $7ED021,x           ; $05:8C8A: 9F 21 D0 7E ;
                LDA DATA_058C5B+7       ; $05:8C8E: AD 62 8C    ;
                STA $7ED030,x           ; $05:8C91: 9F 30 D0 7E ;
                LDA DATA_058C5B+8       ; $05:8C95: AD 63 8C    ;
                STA $7ED031,x           ; $05:8C98: 9F 31 D0 7E ;
                LDA DATA_058C5B+9       ; $05:8C9C: AD 64 8C    ;
                STA $7ED040,x           ; $05:8C9F: 9F 40 D0 7E ;
                LDA DATA_058C5B+10      ; $05:8CA3: AD 65 8C    ;
                STA $7ED041,x           ; $05:8CA6: 9F 41 D0 7E ;
                INX                     ; $05:8CAA: E8          ;
                DEC $F1                 ; $05:8CAB: C6 F1       ;
                BRA CODE_058CC4         ; $05:8CAD: 80 15       ;

CODE_058CAF:    LDA DATA_058C5B         ; $05:8CAF: AD 5B 8C    ;
                STA $7ED020,x           ; $05:8CB2: 9F 20 D0 7E ;
                LDA DATA_058C5B+1       ; $05:8CB6: AD 5C 8C    ;
                STA $7ED030,x           ; $05:8CB9: 9F 30 D0 7E ;
                LDA DATA_058C5B+2       ; $05:8CBD: AD 5D 8C    ;
                STA $7ED040,x           ; $05:8CC0: 9F 40 D0 7E ;
CODE_058CC4:    INX                     ; $05:8CC4: E8          ;
                DEC $F1                 ; $05:8CC5: C6 F1       ;
                LDA $F1                 ; $05:8CC7: A5 F1       ;
                BPL CODE_058C6A         ; $05:8CC9: 10 9F       ;
                REP #$20                ; $05:8CCB: C2 20       ;
                JMP CODE_05805B         ; $05:8CCD: 4C 5B 80    ;

DATA_058CD0:    db $33,$34,$0D,$37,$13,$3C,$1A,$1B              ;

DATA_058CD8:    db $33,$34,$38,$39,$3D,$3E,$40,$1B              ;

                LDX $EB                 ; $05:8CE0: A6 EB       ;
                SEP #$20                ; $05:8CE2: E2 20       ;
                LDA $7ED020,x           ; $05:8CE4: BF 20 D0 7E ;
                CMP #$0C                ; $05:8CE8: C9 0C       ;
                BEQ CODE_058D26         ; $05:8CEA: F0 3A       ;
                LDA DATA_058CD8         ; $05:8CEC: AD D8 8C    ;
                STA $7ED010,x           ; $05:8CEF: 9F 10 D0 7E ;
                LDA DATA_058CD8+1       ; $05:8CF3: AD D9 8C    ;
                STA $7ED011,x           ; $05:8CF6: 9F 11 D0 7E ;
                LDA DATA_058CD8+2       ; $05:8CFA: AD DA 8C    ;
                STA $7ED020,x           ; $05:8CFD: 9F 20 D0 7E ;
                LDA DATA_058CD8+3       ; $05:8D01: AD DB 8C    ;
                STA $7ED021,x           ; $05:8D04: 9F 21 D0 7E ;
                LDA DATA_058CD8+4       ; $05:8D08: AD DC 8C    ;
                STA $7ED030,x           ; $05:8D0B: 9F 30 D0 7E ;
                LDA DATA_058CD8+5       ; $05:8D0F: AD DD 8C    ;
                STA $7ED031,x           ; $05:8D12: 9F 31 D0 7E ;
                LDA DATA_058CD8+6       ; $05:8D16: AD DE 8C    ;
                STA $7ED040,x           ; $05:8D19: 9F 40 D0 7E ;
                LDA DATA_058CD8+7       ; $05:8D1D: AD DF 8C    ;
                STA $7ED041,x           ; $05:8D20: 9F 41 D0 7E ;
                BRA CODE_058D5E         ; $05:8D24: 80 38       ;

CODE_058D26:    LDA DATA_058CD0         ; $05:8D26: AD D0 8C    ;
                STA $7ED010,x           ; $05:8D29: 9F 10 D0 7E ;
                LDA DATA_058CD0+1       ; $05:8D2D: AD D1 8C    ;
                STA $7ED011,x           ; $05:8D30: 9F 11 D0 7E ;
                LDA DATA_058CD0+2       ; $05:8D34: AD D2 8C    ;
                STA $7ED020,x           ; $05:8D37: 9F 20 D0 7E ;
                LDA DATA_058CD0+3       ; $05:8D3B: AD D3 8C    ;
                STA $7ED021,x           ; $05:8D3E: 9F 21 D0 7E ;
                LDA DATA_058CD0+4       ; $05:8D42: AD D4 8C    ;
                STA $7ED030,x           ; $05:8D45: 9F 30 D0 7E ;
                LDA DATA_058CD0+5       ; $05:8D49: AD D5 8C    ;
                STA $7ED031,x           ; $05:8D4C: 9F 31 D0 7E ;
                LDA DATA_058CD0+6       ; $05:8D50: AD D6 8C    ;
                STA $7ED040,x           ; $05:8D53: 9F 40 D0 7E ;
                LDA DATA_058CD0+7       ; $05:8D57: AD D7 8C    ;
                STA $7ED041,x           ; $05:8D5A: 9F 41 D0 7E ;
CODE_058D5E:    REP #$20                ; $05:8D5E: C2 20       ;
                DEC $F1                 ; $05:8D60: C6 F1       ;
                DEC $F1                 ; $05:8D62: C6 F1       ;
                DEC $F1                 ; $05:8D64: C6 F1       ;
                LDA $EB                 ; $05:8D66: A5 EB       ;
                CLC                     ; $05:8D68: 18          ;
                ADC #$0030              ; $05:8D69: 69 30 00    ;
                STA $EB                 ; $05:8D6C: 85 EB       ;
                LDA #$0001              ; $05:8D6E: A9 01 00    ;
                STA $EF                 ; $05:8D71: 85 EF       ;
                JMP CODE_058B51         ; $05:8D73: 4C 51 8B    ;

DATA_058D76:    db $41,$42,$43,$44,$45,$46,$47,$48              ;
                db $49,$4A,$4B,$4C,$4D,$4E,$4F,$50              ;
                db $51,$52,$53,$54                              ;

                SEP #$20                ; $05:8D8A: E2 20       ;
                LDX $EB                 ; $05:8D8C: A6 EB       ;
                LDY #$0000              ; $05:8D8E: A0 00 00    ;
CODE_058D91:    LDA DATA_058D76,y       ; $05:8D91: B9 76 8D    ;
                STA $7ED020,x           ; $05:8D94: 9F 20 D0 7E ;
                LDA DATA_058D76+1,y     ; $05:8D98: B9 77 8D    ;
                STA $7ED021,x           ; $05:8D9B: 9F 21 D0 7E ;
                LDA DATA_058D76+2,y     ; $05:8D9F: B9 78 8D    ;
                STA $7ED022,x           ; $05:8DA2: 9F 22 D0 7E ;
                LDA DATA_058D76+3,y     ; $05:8DA6: B9 79 8D    ;
                STA $7ED023,x           ; $05:8DA9: 9F 23 D0 7E ;
                REP #$20                ; $05:8DAD: C2 20       ;
                TXA                     ; $05:8DAF: 8A          ;
                CLC                     ; $05:8DB0: 18          ;
                ADC #$0010              ; $05:8DB1: 69 10 00    ;
                TAX                     ; $05:8DB4: AA          ;
                SEP #$20                ; $05:8DB5: E2 20       ;
                INY                     ; $05:8DB7: C8          ;
                INY                     ; $05:8DB8: C8          ;
                INY                     ; $05:8DB9: C8          ;
                INY                     ; $05:8DBA: C8          ;
                CPY #$0014              ; $05:8DBB: C0 14 00    ;
                BNE CODE_058D91         ; $05:8DBE: D0 D1       ;
                REP #$20                ; $05:8DC0: C2 20       ;
                JMP CODE_05805B         ; $05:8DC2: 4C 5B 80    ;

                LDX $EB                 ; $05:8DC5: A6 EB       ;
                LDA #$1B1A              ; $05:8DC7: A9 1A 1B    ;
                STA $7ED000,x           ; $05:8DCA: 9F 00 D0 7E ;
                JMP CODE_05805B         ; $05:8DCE: 4C 5B 80    ;

                INC $EB                 ; $05:8DD1: E6 EB       ;
                LDA $EB                 ; $05:8DD3: A5 EB       ;
                CLC                     ; $05:8DD5: 18          ;
                ADC #$0010              ; $05:8DD6: 69 10 00    ;
                TAX                     ; $05:8DD9: AA          ;
                SEP #$20                ; $05:8DDA: E2 20       ;
                LDA #$67                ; $05:8DDC: A9 67       ;
                STA $7ED000,x           ; $05:8DDE: 9F 00 D0 7E ;
                LDA #$69                ; $05:8DE2: A9 69       ;
                STA $7ED001,x           ; $05:8DE4: 9F 01 D0 7E ;
                LDA #$68                ; $05:8DE8: A9 68       ;
                STA $7ED010,x           ; $05:8DEA: 9F 10 D0 7E ;
                LDA #$6A                ; $05:8DEE: A9 6A       ;
                STA $7ED011,x           ; $05:8DF0: 9F 11 D0 7E ;
                REP #$20                ; $05:8DF4: C2 20       ;
                JMP CODE_05805B         ; $05:8DF6: 4C 5B 80    ;

DATA_058DF9:    db $01,$8E,$49,$8E,$55,$8E,$85,$8E              ;
                db $08,$09,$0D,$0E,$08,$23,$0D,$25              ;
                db $24,$23,$26,$25,$24,$09,$26,$0E              ;
                db $00,$08,$00,$0D,$23,$24,$25,$26              ;
                db $0F,$10,$32,$33,$11,$12,$32,$33              ;
                db $13,$00,$3C,$3B,$30,$31,$32,$33              ;
                db $30,$10,$32,$33,$00,$36,$38,$37              ;
                db $0F,$31,$32,$33,$35,$10,$39,$33              ;
                db $0F,$10,$32,$33,$35,$12,$32,$33              ;
                db $23,$24,$25,$26,$11,$12,$32,$33              ;
                db $21,$22,$25,$26,$23,$24,$27,$28              ;
                db $00,$00,$26,$00,$06,$05,$07,$02              ;
                db $0E,$05,$11,$12,$0E,$05,$07,$08              ;
                db $06,$05,$07,$08,$03,$05,$0C,$0D              ;
                db $0F,$10,$1D,$02,$03,$05,$1D,$15              ;
                db $03,$18,$1B,$1B,$03,$05,$16,$15              ;
                db $19,$18,$1B,$1B,$03,$05,$16,$17              ;
                db $19,$1A,$1B,$1B                              ;

CODE_058E85:    LDA $5C                 ; $05:8E85: A5 5C       ;
                AND #$00FF              ; $05:8E87: 29 FF 00    ;
                ASL A                   ; $05:8E8A: 0A          ;
                TAX                     ; $05:8E8B: AA          ;
                LDA #$0500              ; $05:8E8C: A9 00 05    ;
                STA $D9                 ; $05:8E8F: 85 D9       ;
                LDA DATA_058DF9,x       ; $05:8E91: BD F9 8D    ;
                STA $D8                 ; $05:8E94: 85 D8       ;
                LDA $5C                 ; $05:8E96: A5 5C       ;
                AND #$00FF              ; $05:8E98: 29 FF 00    ;
                CMP #$0002              ; $05:8E9B: C9 02 00    ;
                BCS CODE_058EA9         ; $05:8E9E: B0 09       ;
                LDA $EB                 ; $05:8EA0: A5 EB       ;
                CLC                     ; $05:8EA2: 18          ;
                ADC #$0010              ; $05:8EA3: 69 10 00    ;
                TAX                     ; $05:8EA6: AA          ;
                BRA CODE_058EAB         ; $05:8EA7: 80 02       ;

CODE_058EA9:    LDX $EB                 ; $05:8EA9: A6 EB       ;
CODE_058EAB:    LDA $EF                 ; $05:8EAB: A5 EF       ;
                SEC                     ; $05:8EAD: 38          ;
                SBC #$0010              ; $05:8EAE: E9 10 00    ;
                ASL A                   ; $05:8EB1: 0A          ;
                ASL A                   ; $05:8EB2: 0A          ;
                TAY                     ; $05:8EB3: A8          ;
                SEP #$20                ; $05:8EB4: E2 20       ;
                LDA [$D8],y             ; $05:8EB6: B7 D8       ;
                STA $7ED020,x           ; $05:8EB8: 9F 20 D0 7E ;
                INY                     ; $05:8EBC: C8          ;
                LDA [$D8],y             ; $05:8EBD: B7 D8       ;
                STA $7ED021,x           ; $05:8EBF: 9F 21 D0 7E ;
                INY                     ; $05:8EC3: C8          ;
                LDA [$D8],y             ; $05:8EC4: B7 D8       ;
                STA $7ED030,x           ; $05:8EC6: 9F 30 D0 7E ;
                INY                     ; $05:8ECA: C8          ;
                LDA [$D8],y             ; $05:8ECB: B7 D8       ;
                STA $7ED031,x           ; $05:8ECD: 9F 31 D0 7E ;
                REP #$20                ; $05:8ED1: C2 20       ;
                INX                     ; $05:8ED3: E8          ;
                INX                     ; $05:8ED4: E8          ;
                DEC $F1                 ; $05:8ED5: C6 F1       ;
                LDA $F1                 ; $05:8ED7: A5 F1       ;
                BPL CODE_058EAB         ; $05:8ED9: 10 D0       ;
                RTS                     ; $05:8EDB: 60          ;

CODE_058EDC:    STA $7ED000,x           ; $05:8EDC: 9F 00 D0 7E ;
                STA $7ED100,x           ; $05:8EE0: 9F 00 D1 7E ;
                STA $7ED200,x           ; $05:8EE4: 9F 00 D2 7E ;
                STA $7ED300,x           ; $05:8EE8: 9F 00 D3 7E ;
                STA $7ED400,x           ; $05:8EEC: 9F 00 D4 7E ;
                STA $7ED500,x           ; $05:8EF0: 9F 00 D5 7E ;
                STA $7ED600,x           ; $05:8EF4: 9F 00 D6 7E ;
                STA $7ED700,x           ; $05:8EF8: 9F 00 D7 7E ;
                STA $7ED800,x           ; $05:8EFC: 9F 00 D8 7E ;
                STA $7ED900,x           ; $05:8F00: 9F 00 D9 7E ;
                STA $7EDA00,x           ; $05:8F04: 9F 00 DA 7E ;
                STA $7EDB00,x           ; $05:8F08: 9F 00 DB 7E ;
                STA $7EDC00,x           ; $05:8F0C: 9F 00 DC 7E ;
                STA $7EDD00,x           ; $05:8F10: 9F 00 DD 7E ;
                STA $7EDE00,x           ; $05:8F14: 9F 00 DE 7E ;
                RTS                     ; $05:8F18: 60          ;

CODE_058F19:    LDA $EF                 ; $05:8F19: A5 EF       ;
                ASL A                   ; $05:8F1B: 0A          ;
                TAX                     ; $05:8F1C: AA          ;
                LDA PNTR_058F25,x       ; $05:8F1D: BD 25 8F    ;
                STA $00                 ; $05:8F20: 85 00       ;
                JMP ($0000)             ; $05:8F22: 6C 00 00    ;

;Pointers to various background-generation commands and HDMA routines
PNTR_058F25:    dw CODE_0590B6                                  ;$00 - Increase BG2 map16 tilemap's latest written page number by 1
                dw CODE_0590BA                                  ;$01 - Handle HDMA gradient. Underwater levels use below value, instead.
                dw CODE_0590D2                                  ;$02 - Enable underwater HDMA gradient
                dw CODE_0590E9                                  ;$03 - 
                dw CODE_05910D                                  ;$04 - 
                dw CODE_059099                                  ;$05 - Related to background map16 tilemap generation
                dw CODE_05905F                                  ;$06 - Fill background with repetitive rock pattern of cave background
                dw CODE_05903D                                  ;$07 - Fill top 3 rows with blank tiles for underwater levels
                dw CODE_059004                                  ;$08 - Generate the rocks of the waterfall background
                dw CODE_058FFA                                  ;$09 - Enable Layer 3 image processing
                dw CODE_058F97                                  ;$0A - Generate the waterfall of the waterfall background
                dw CODE_059116                                  ;$0B - Load tilemap-specific graphics?
                dw CODE_058F6F                                  ;$0C - Generate Goomba pillar background's sand

DATA_058F3F:    db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F              ;
                db $0C,$0D,$0E,$0F,$0C,$0D,$0E,$0F              ;
                db $13,$14,$15,$16,$13,$14,$15,$16              ;
                db $13,$14,$15,$16,$13,$14,$15,$16              ;
                db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A              ;
                db $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A              ;

CODE_058F6F:    LDX #$00D0              ; $05:8F6F: A2 D0 00    ;
                LDY #$0000              ; $05:8F72: A0 00 00    ;
                SEP #$20                ; $05:8F75: E2 20       ;
CODE_058F77:    LDA DATA_058F3F,y       ; $05:8F77: B9 3F 8F    ;
                JSR CODE_058EDC         ; $05:8F7A: 20 DC 8E    ;
                INX                     ; $05:8F7D: E8          ;
                INY                     ; $05:8F7E: C8          ;
                CPY #$0030              ; $05:8F7F: C0 30 00    ;
                BNE CODE_058F77         ; $05:8F82: D0 F3       ;
                REP #$20                ; $05:8F84: C2 20       ;
                RTS                     ; $05:8F86: 60          ;

DATA_058F87:    db $01,$02,$03,$07,$01,$02,$03,$07              ;
                db $01,$02,$03,$07,$01,$02,$03,$07              ;

CODE_058F97:    STZ $E4                 ; $05:8F97: 64 E4       ;
CODE_058F99:    LDA $E4                 ; $05:8F99: A5 E4       ;
                AND #$00FF              ; $05:8F9B: 29 FF 00    ;
                XBA                     ; $05:8F9E: EB          ;
                CLC                     ; $05:8F9F: 18          ;
                ADC #$00A0              ; $05:8FA0: 69 A0 00    ;
                TAX                     ; $05:8FA3: AA          ;
                LDY #$0000              ; $05:8FA4: A0 00 00    ;
                SEP #$20                ; $05:8FA7: E2 20       ;
CODE_058FA9:    LDA DATA_058F87,y       ; $05:8FA9: B9 87 8F    ;
                STA $7ED000,x           ; $05:8FAC: 9F 00 D0 7E ;
                TXA                     ; $05:8FB0: 8A          ;
                AND #$01                ; $05:8FB1: 29 01       ;
                BNE CODE_058FCF         ; $05:8FB3: D0 1A       ;
                LDA #$0C                ; $05:8FB5: A9 0C       ;
                STA $7ED010,x           ; $05:8FB7: 9F 10 D0 7E ;
                STA $7ED030,x           ; $05:8FBB: 9F 30 D0 7E ;
                STA $7ED050,x           ; $05:8FBF: 9F 50 D0 7E ;
                LDA #$10                ; $05:8FC3: A9 10       ;
                STA $7ED020,x           ; $05:8FC5: 9F 20 D0 7E ;
                STA $7ED040,x           ; $05:8FC9: 9F 40 D0 7E ;
                BRA CODE_058FE7         ; $05:8FCD: 80 18       ;

CODE_058FCF:    LDA #$0D                ; $05:8FCF: A9 0D       ;
                STA $7ED010,x           ; $05:8FD1: 9F 10 D0 7E ;
                STA $7ED030,x           ; $05:8FD5: 9F 30 D0 7E ;
                STA $7ED050,x           ; $05:8FD9: 9F 50 D0 7E ;
                LDA #$11                ; $05:8FDD: A9 11       ;
                STA $7ED020,x           ; $05:8FDF: 9F 20 D0 7E ;
                STA $7ED040,x           ; $05:8FE3: 9F 40 D0 7E ;
CODE_058FE7:    INX                     ; $05:8FE7: E8          ;
                INY                     ; $05:8FE8: C8          ;
                TYA                     ; $05:8FE9: 98          ;
                AND #$0F                ; $05:8FEA: 29 0F       ;
                BNE CODE_058FA9         ; $05:8FEC: D0 BB       ;
                REP #$20                ; $05:8FEE: C2 20       ;
                INC $E4                 ; $05:8FF0: E6 E4       ;
                LDA $E4                 ; $05:8FF2: A5 E4       ;
                CMP #$0006              ; $05:8FF4: C9 06 00    ;
                BNE CODE_058F99         ; $05:8FF7: D0 A0       ;
                RTS                     ; $05:8FF9: 60          ;

CODE_058FFA:    SEP #$20                ; $05:8FFA: E2 20       ;
                LDA $F1                 ; $05:8FFC: A5 F1       ;\
                STA $0EDC               ; $05:8FFE: 8D DC 0E    ;/ Process layer 3 image display flag
                REP #$20                ; $05:9001: C2 20       ;
                RTS                     ; $05:9003: 60          ;

CODE_059004:    LDX #$0080              ; $05:9004: A2 80 00    ;
CODE_059007:    LDA #$0403              ; $05:9007: A9 03 04    ;
                STA $7ED000,x           ; $05:900A: 9F 00 D0 7E ;
                LDA #$0909              ; $05:900E: A9 09 09    ;
                STA $7ED010,x           ; $05:9011: 9F 10 D0 7E ;
                STA $7ED020,x           ; $05:9015: 9F 20 D0 7E ;
                STA $7ED030,x           ; $05:9019: 9F 30 D0 7E ;
                STA $7ED040,x           ; $05:901D: 9F 40 D0 7E ;
                STA $7ED050,x           ; $05:9021: 9F 50 D0 7E ;
                STA $7ED060,x           ; $05:9025: 9F 60 D0 7E ;
                INX                     ; $05:9029: E8          ;
                INX                     ; $05:902A: E8          ;
                TXA                     ; $05:902B: 8A          ;
                AND #$000F              ; $05:902C: 29 0F 00    ;
                BNE CODE_059007         ; $05:902F: D0 D6       ;
                TXA                     ; $05:9031: 8A          ;
                CLC                     ; $05:9032: 18          ;
                ADC #$00F0              ; $05:9033: 69 F0 00    ;
                TAX                     ; $05:9036: AA          ;
                CPX #$1000              ; $05:9037: E0 00 10    ;
                BCC CODE_059007         ; $05:903A: 90 CB       ;
                RTS                     ; $05:903C: 60          ;

;Part of underwater background generation routine
CODE_05903D:    LDX #$0000              ; $05:903D: A2 00 00    ;\
                LDA #$0202              ; $05:9040: A9 02 02    ; |
CODE_059043:    JSR CODE_058EDC         ; $05:9043: 20 DC 8E    ; |
                INX                     ; $05:9046: E8          ; | Fill the top 2 rows with blank tiles
                INX                     ; $05:9047: E8          ; |
                CPX #$0020              ; $05:9048: E0 20 00    ; |
                BNE CODE_059043         ; $05:904B: D0 F6       ;/
                LDA #$0101              ; $05:904D: A9 01 01    ;\
CODE_059050:    JSR CODE_058EDC         ; $05:9050: 20 DC 8E    ; |
                INX                     ; $05:9053: E8          ; |
                INX                     ; $05:9054: E8          ; | Fill the 3rd row with some transition tile into the water.
                CPX #$0030              ; $05:9055: E0 30 00    ; |
                BNE CODE_059050         ; $05:9058: D0 F6       ;/
                RTS                     ; $05:905A: 60          ;

DATA_05905B:    db $03,$05,$1D,$02                              ;BG map16 tiles to fill the entire cave BG with (the repetitive rocks)

;Part of underground background generation routine
CODE_05905F:    LDX #$0000              ; $05:905F: A2 00 00    ;
                SEP #$20                ; $05:9062: E2 20       ;
CODE_059064:    LDA DATA_05905B         ; $05:9064: AD 5B 90    ;
                STA $7ED000,x           ; $05:9067: 9F 00 D0 7E ;
                LDA DATA_05905B+1       ; $05:906B: AD 5C 90    ;
                STA $7ED001,x           ; $05:906E: 9F 01 D0 7E ;
                LDA DATA_05905B+2       ; $05:9072: AD 5D 90    ;
                STA $7ED010,x           ; $05:9075: 9F 10 D0 7E ;
                LDA DATA_05905B+3       ; $05:9079: AD 5E 90    ;
                STA $7ED011,x           ; $05:907C: 9F 11 D0 7E ;
                INX                     ; $05:9080: E8          ;
                INX                     ; $05:9081: E8          ;
                TXA                     ; $05:9082: 8A          ;
                AND #$0F                ; $05:9083: 29 0F       ;
                BNE CODE_059064         ; $05:9085: D0 DD       ;
                REP #$20                ; $05:9087: C2 20       ;
                TXA                     ; $05:9089: 8A          ;
                CLC                     ; $05:908A: 18          ;
                ADC #$0010              ; $05:908B: 69 10 00    ;
                TAX                     ; $05:908E: AA          ;
                SEP #$20                ; $05:908F: E2 20       ;
                CPX #$0800              ; $05:9091: E0 00 08    ;
                BNE CODE_059064         ; $05:9094: D0 CE       ;
                REP #$20                ; $05:9096: C2 20       ;
                RTS                     ; $05:9098: 60          ;

CODE_059099:    SEP #$20                ; $05:9099: E2 20       ;
                LDA $5C                 ; $05:909B: A5 5C       ;\
                CMP #$02                ; $05:909D: C9 02       ; |If map type is underground, branch
                BEQ CODE_0590A5         ; $05:909F: F0 04       ;/
                LDA #$5F                ; $05:90A1: A9 5F       ;\Executes when castle level
                BRA CODE_0590A7         ; $05:90A3: 80 02       ;/Fill the background's top area with black map16 tiles.

CODE_0590A5:    LDA #$00                ; $05:90A5: A9 00       ;Load background black map16 tile.
CODE_0590A7:    LDX #$0000              ; $05:90A7: A2 00 00    ;\
CODE_0590AA:    JSR CODE_058EDC         ; $05:90AA: 20 DC 8E    ; |
                INX                     ; $05:90AD: E8          ; |Fill the background's top 2 rows with black tiles loaded in accumulator
                CPX #$0020              ; $05:90AE: E0 20 00    ; |
                BNE CODE_0590AA         ; $05:90B1: D0 F7       ; |
                REP #$20                ; $05:90B3: C2 20       ; |
                RTS                     ; $05:90B5: 60          ;/

CODE_0590B6:    INC $0EC0               ; $05:90B6: EE C0 0E    ;\ Increase index to the latest background map16 page written to.
                RTS                     ; $05:90B9: 60          ;/

;Enable Generic HDMA
CODE_0590BA:    SEP #$30                ; $05:90BA: E2 30       ;\ Enable HDMA depending on $F1: HDMA gradient type
                LDA $F1                 ; $05:90BC: A5 F1       ; |
                CMP #$02                ; $05:90BE: C9 02       ; |
                BNE CODE_0590C4         ; $05:90C0: D0 02       ; |
                LDA #$FF                ; $05:90C2: A9 FF       ; |
CODE_0590C4:    CMP #$01                ; $05:90C4: C9 01       ; |
                BNE CODE_0590CB         ; $05:90C6: D0 03       ; |
                STA $0ED1               ; $05:90C8: 8D D1 0E    ; |
CODE_0590CB:    JSL CODE_04825E         ; $05:90CB: 22 5E 82 04 ; |<-- HDMA enable routine
                REP #$30                ; $05:90CF: C2 30       ; |
                RTS                     ; $05:90D1: 60          ;/

;Enable Underwater Level HDMA
CODE_0590D2:    SEP #$30                ; $05:90D2: E2 30       ;\
                LDA #$02                ; $05:90D4: A9 02       ; |
                JSL CODE_04825E         ; $05:90D6: 22 5E 82 04 ; |Enable underwater HDMA gradient (without the up/down movement, just the color definition)
                REP #$30                ; $05:90DA: C2 30       ; |
                RTS                     ; $05:90DC: 60          ;/

DATA_0590DD:    db $0F,$20,$1B,$37,$58,$C9                      ;

DATA_0590E3:    db $1F,$29,$1C,$38,$57,$CA                      ;

CODE_0590E9:    LDX #$00D0              ; $05:90E9: A2 D0 00    ;
                LDY $F1                 ; $05:90EC: A4 F1       ;
                LDA DATA_0590DD,y       ; $05:90EE: B9 DD 90    ;
CODE_0590F1:    JSR CODE_058EDC         ; $05:90F1: 20 DC 8E    ;
                INX                     ; $05:90F4: E8          ;
                CPX #$00E0              ; $05:90F5: E0 E0 00    ;
                BNE CODE_0590F1         ; $05:90F8: D0 F7       ;
                LDA DATA_0590E3,y       ; $05:90FA: B9 E3 90    ;
CODE_0590FD:    JSR CODE_058EDC         ; $05:90FD: 20 DC 8E    ;
                INX                     ; $05:9100: E8          ;
                CPX #$00F0              ; $05:9101: E0 F0 00    ;
                BNE CODE_0590FD         ; $05:9104: D0 F7       ;
                LDA #$0050              ; $05:9106: A9 50 00    ;
                JSR CODE_058EDC         ; $05:9109: 20 DC 8E    ;
                RTS                     ; $05:910C: 60          ;

CODE_05910D:    LDA $F1                 ; $05:910D: A5 F1       ;
                STA $99                 ; $05:910F: 85 99       ;
                JSL CODE_05E6B1         ; $05:9111: 22 B1 E6 05 ;Upload tileset graphics
                RTS                     ; $05:9115: 60          ;

CODE_059116:    LDA $F1                 ; $05:9116: A5 F1       ;
                ORA #$0010              ; $05:9118: 09 10 00    ;
                STA $99                 ; $05:911B: 85 99       ;
                JSL CODE_05E6B1         ; $05:911D: 22 B1 E6 05 ;Upload tileset graphics
                RTS                     ; $05:9121: 60          ;

DATA_059122:    dw $0000,$0000,$0009,$0004                      ;index to layer 2 background pointers
                dw $0006,$0001,$0004,$0004                      ;this is indexed by $7E00DB
                dw $0001,$0008,$000A,$0001                      ;
                dw $0001,$0001,$0001,$0007                      ;See the RAM map for the list of backgrounds
                dw $0004,$0004,$0007,$0001                      ;
                dw $0001,$0001,$0001,$0001                      ;
                dw $0004,$0002,$0002,$0001                      ;
                dw $0003,$0003,$0003,$0003                      ;
                dw $0003,$0005                                  ;

;Routine to build the map16 pages of the layer 2 backgrounds
;It's actually not for the map16 tilemap which build the backgrounds.
CODE_059166:    LDA $DB                 ; $05:9166: A5 DB       ;\ Load background number
                ASL A                   ; $05:9168: 0A          ; |to index
                TAX                     ; $05:9169: AA          ; |
                LDA DATA_059122,x       ; $05:916A: BD 22 91    ; |Load index to layer 2 background pointer
                ASL A                   ; $05:916D: 0A          ; |
                TAX                     ; $05:916E: AA          ; |
                LDA PNTR_0591CE,x       ; $05:916F: BD CE 91    ; |Store pointer to $00-$02. $02 is hardcoded to bank 5
                STA $00                 ; $05:9172: 85 00       ; |
                LDA.w #PNTR_0591CE>>16  ; $05:9174: A9 05 00    ; |
                STA $02                 ; $05:9177: 85 02       ;/
                LDX #$0000              ; $05:9179: A2 00 00    ;Index to RAM?
                LDY #$0000              ; $05:917C: A0 00 00    ;Loop count
CODE_05917F:    STX $E4                 ; $05:917F: 86 E4       ;\Start loop
                TYX                     ; $05:9181: BB          ; |
                LDA $7ED000,x           ; $05:9182: BF 00 D0 7E ; |
                CMP #$FFFF              ; $05:9186: C9 FF FF    ; |If the background map16 tilemap is $FFFF
                BEQ CODE_0591CA         ; $05:9189: F0 3F       ;/Stop uploading tiles.
                PHY                     ; $05:918B: 5A          ;\
                LDX $E4                 ; $05:918C: A6 E4       ; |
                AND #$00FF              ; $05:918E: 29 FF 00    ; |
                ASL A                   ; $05:9191: 0A          ; |
                ASL A                   ; $05:9192: 0A          ; |Upload background data by copying -MAP16- data
                ASL A                   ; $05:9193: 0A          ; |to the -VRAM tilemap- located in the -RAM-
                TAY                     ; $05:9194: A8          ; |
                LDA [$00],y             ; $05:9195: B7 00       ; |
                STA $7E2000,x           ; $05:9197: 9F 00 20 7E ; |
                INY                     ; $05:919B: C8          ; |
                INY                     ; $05:919C: C8          ; |
                LDA [$00],y             ; $05:919D: B7 00       ; |
                STA $7E2002,x           ; $05:919F: 9F 02 20 7E ; |
                INY                     ; $05:91A3: C8          ; |
                INY                     ; $05:91A4: C8          ; |
                LDA [$00],y             ; $05:91A5: B7 00       ; |
                STA $7E2040,x           ; $05:91A7: 9F 40 20 7E ; |
                INY                     ; $05:91AB: C8          ; |
                INY                     ; $05:91AC: C8          ; |
                LDA [$00],y             ; $05:91AD: B7 00       ; |
                STA $7E2042,x           ; $05:91AF: 9F 42 20 7E ; |
                PLY                     ; $05:91B3: 7A          ; |
                INY                     ; $05:91B4: C8          ; |
                TYA                     ; $05:91B5: 98          ; |
                AND #$000F              ; $05:91B6: 29 0F 00    ; |
                BNE CODE_0591C1         ; $05:91B9: D0 06       ;/
                TXA                     ; $05:91BB: 8A          ;
                CLC                     ; $05:91BC: 18          ;
                ADC #$0040              ; $05:91BD: 69 40 00    ;
                TAX                     ; $05:91C0: AA          ;
CODE_0591C1:    INX                     ; $05:91C1: E8          ;
                INX                     ; $05:91C2: E8          ;
                INX                     ; $05:91C3: E8          ;
                INX                     ; $05:91C4: E8          ;
                CPY #$1000              ; $05:91C5: C0 00 10    ;\read full map16 (?) ($0FFF bytes). If not done yet, loop
                BNE CODE_05917F         ; $05:91C8: D0 B5       ;/
CODE_0591CA:    SEP #$30                ; $05:91CA: E2 30       ;
                PLB                     ; $05:91CC: AB          ;
                RTL                     ; $05:91CD: 6B          ;

PNTR_0591CE:    dw DATA_059A2C                                  ;pointers to various background map16 data
                dw DATA_059C2C                                  ;indexed by $DB
                dw DATA_05AC14                                  ;
                dw DATA_05A614                                  ;
                dw DATA_05A364                                  ;
                dw DATA_05972C                                  ;
                dw DATA_059564                                  ;
                dw DATA_0594EC                                  ;
                dw DATA_05944C                                  ;
                dw DATA_05A4C4                                  ;
                dw DATA_0592A4                                  ;

DATA_0591E4:    db $00,$00,$00,$11,$00,$00,$00,$1F              ;background map16 tiles
                db $00,$00,$00,$0C,$00,$12,$00,$00              ;format: TTTTTTTT YXPCCCTT
                db $08,$00,$00,$00,$00,$00,$04,$00              ;
                db $10,$00,$00,$00,$0D,$00,$00,$00              ;
                db $00,$00,$0A,$00,$1E,$00,$00,$00              ;
                db $00,$00,$1F,$00,$17,$00,$00,$00              ;
                db $00,$00,$00,$19,$12,$0C,$00,$00              ;
                db $1B,$00,$00,$00,$00,$12,$00,$00              ;
                db $00,$00,$00,$09,$00,$2A,$00,$00              ;
                db $00,$00,$16,$00,$00,$00,$1B,$00              ;
                db $00,$00,$00,$16,$08,$00,$00,$00              ;
                db $00,$17,$00,$00,$00,$19,$00,$00              ;
                db $00,$00,$0F,$00,$00,$14,$00,$00              ;
                db $00,$1B,$00,$00,$11,$00,$00,$00              ;
                db $00,$06,$00,$00,$0D,$00,$00,$00              ;
                db $00,$07,$00,$00,$00,$00,$00,$12              ;
                db $00,$08,$00,$00,$00,$00,$12,$00              ;
                db $00,$0C,$00,$00,$16,$00,$00,$00              ;
                db $00,$12,$00,$00,$00,$00,$00,$04              ;
                db $00,$13,$00,$00,$19,$00,$00,$00              ;
                db $00,$17,$00,$00,$00,$00,$1B,$00              ;
                db $00,$00,$00,$16,$1C,$00,$00,$00              ;
                db $00,$00,$1E,$00,$00,$15,$00,$00              ;
                db $00,$00,$02,$00,$01,$00,$00,$00              ;

DATA_0592A4:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$E0,$1D,$24,$00,$F0,$1D              ;
                db $E1,$1D,$24,$00,$F0,$5D,$24,$00              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $24,$00,$E3,$1D,$24,$00,$F3,$1D              ;
                db $E4,$1D,$24,$00,$F4,$1D,$24,$00              ;
                db $CA,$1D,$CB,$1D,$F1,$1D,$F1,$5D              ;
                db $C0,$1D,$C1,$1D,$24,$00,$E2,$1D              ;
                db $D0,$1D,$D1,$1D,$F2,$1D,$24,$00              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D              ;
                db $EB,$1D,$EC,$1D,$FB,$1D,$FC,$1D              ;
                db $ED,$1D,$24,$00,$FD,$1D,$FE,$1D              ;
                db $24,$00,$24,$00,$FF,$1D,$F8,$1D              ;
                db $24,$00,$EA,$1D,$F9,$1D,$FA,$1D              ;
                db $C8,$1D,$C1,$1D,$FD,$1D,$E2,$1D              ;
                db $D0,$1D,$D1,$1D,$F2,$1D,$F8,$1D              ;
                db $E5,$1D,$F5,$1D,$D9,$1D,$DA,$1D              ;
                db $CE,$1D,$CF,$1D,$EF,$1D,$EF,$1D              ;
                db $DC,$1D,$DD,$1D,$EF,$1D,$EF,$1D              ;
                db $DE,$1D,$DF,$1D,$EF,$1D,$EF,$1D              ;
                db $CC,$1D,$CD,$1D,$EF,$1D,$EF,$1D              ;
                db $DC,$1D,$E3,$1D,$EF,$1D,$F3,$1D              ;
                db $E4,$1D,$DF,$1D,$F4,$1D,$EF,$1D              ;
                db $E8,$1D,$E9,$1D,$DB,$1D,$EE,$1D              ;
                db $EF,$1D,$EF,$1D,$EF,$1D,$EF,$1D              ;
                db $C9,$1D,$C1,$1D,$EF,$1D,$E2,$1D              ;
                db $D0,$1D,$D8,$1D,$F2,$1D,$EF,$1D              ;
                db $E6,$1D,$E7,$1D,$D9,$1D,$DA,$1D              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$E0,$15,$24,$00,$F0,$15              ;
                db $E1,$15,$24,$00,$F0,$55,$24,$00              ;
                db $C2,$15,$C3,$15,$D2,$15,$D3,$15              ;
                db $C4,$15,$C5,$15,$D4,$15,$D5,$15              ;
                db $24,$00,$E3,$15,$24,$00,$F3,$15              ;
                db $E4,$15,$24,$00,$F4,$15,$24,$00              ;
                db $C0,$15,$C1,$15,$24,$00,$E2,$15              ;
                db $D0,$15,$D1,$15,$F2,$15,$24,$00              ;
                db $C2,$15,$C3,$15,$24,$00,$D3,$15              ;
                db $C4,$15,$C5,$15,$D4,$15,$24,$00              ;
                db $CA,$15,$CB,$15,$F1,$15,$F1,$55              ;
                db $C6,$15,$C7,$15,$D6,$15,$D7,$15              ;
                db $C8,$15,$C1,$15,$FD,$15,$E2,$15              ;
                db $D0,$15,$D1,$15,$F2,$15,$F8,$15              ;
                db $E6,$15,$E7,$15,$D9,$15,$DA,$15              ;
                db $DC,$15,$E3,$15,$EF,$15,$F3,$15              ;
                db $E4,$15,$DF,$15,$F4,$15,$EF,$15              ;
                db $E8,$15,$E9,$15,$DB,$15,$EE,$15              ;
                db $C9,$15,$C1,$15,$EF,$15,$E2,$15              ;
                db $D0,$15,$D8,$15,$F2,$15,$EF,$15              ;
                db $E6,$15,$E7,$15,$F6,$15,$F7,$15              ;
                db $E5,$15,$F5,$15,$D9,$15,$DA,$15              ;

DATA_05944C:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$D0,$1D,$D1,$1D              ;
                db $24,$00,$24,$00,$D2,$1D,$D3,$1D              ;
                db $24,$00,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $24,$00,$24,$00,$C1,$1D,$C2,$1D              ;
                db $24,$00,$24,$00,$FE,$1D,$FF,$1D              ;
                db $24,$00,$24,$00,$C0,$1D,$D1,$1D              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $24,$00,$24,$00,$D2,$1D,$C3,$1D              ;
                db $24,$00,$24,$00,$CA,$1C,$CB,$1C              ;
                db $C6,$1D,$C7,$1D,$C4,$1D,$D7,$1D              ;
                db $24,$00,$24,$00,$FF,$1D,$FE,$1D              ;
                db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D              ;
                db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D              ;
                db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D              ;
                db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D              ;
                db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D              ;

DATA_0594EC:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D              ;
                db $D2,$1D,$D3,$1D,$C2,$1D,$C3,$1D              ;
                db $C2,$1D,$C3,$1D,$C2,$1D,$C3,$1D              ;
                db $CA,$1D,$CB,$1D,$DA,$1D,$DB,$1D              ;
                db $CC,$1D,$CD,$1D,$DC,$1D,$DD,$1D              ;
                db $CE,$1D,$CF,$1D,$DE,$1D,$DF,$1D              ;
                db $F2,$1D,$F3,$1D,$E2,$1D,$E3,$1D              ;
                db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D              ;
                db $E2,$1D,$E3,$1D,$E2,$1D,$E3,$1D              ;
                db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D              ;
                db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;

DATA_059564:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $C0,$1D,$C1,$1D,$CA,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$CB,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $DA,$1D,$E1,$1D,$D0,$1D,$D1,$1D              ;
                db $E2,$1D,$DB,$1D,$D2,$1D,$D3,$1D              ;
                db $DA,$1D,$E1,$1D,$CA,$1D,$D1,$1D              ;
                db $E2,$1D,$E1,$1D,$E4,$1D,$E5,$1D              ;
                db $E2,$1D,$E1,$1D,$D2,$1D,$D1,$1D              ;
                db $E2,$1D,$DB,$1D,$D2,$1D,$CB,$1D              ;
                db $DA,$1D,$E1,$1D,$EA,$1D,$D1,$1D              ;
                db $F4,$1D,$F5,$1D,$D8,$1D,$E8,$1D              ;
                db $E2,$1D,$DB,$1D,$D2,$1D,$EB,$1D              ;
                db $C0,$1D,$C1,$1D,$92,$1D,$D1,$1D              ;
                db $E2,$1D,$E3,$1D,$D2,$1D,$D1,$1D              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $FA,$1D,$E1,$1D,$CC,$1D,$D1,$1D              ;
                db $E2,$1D,$FB,$1D,$D2,$1D,$CD,$1D              ;
                db $A2,$1D,$E1,$1D,$B2,$1D,$D1,$1D              ;
                db $E2,$1D,$E1,$1D,$D2,$1D,$C6,$1D              ;
                db $C4,$1D,$C5,$1D,$C7,$1D,$E7,$1D              ;
                db $D4,$1D,$D5,$1D,$E7,$1D,$C8,$1D              ;
                db $E2,$1D,$E3,$1D,$C9,$1D,$D1,$1D              ;
                db $E2,$1D,$E1,$1D,$D2,$1D,$82,$1D              ;
                db $E2,$1D,$E1,$1D,$83,$1D,$84,$1D              ;
                db $E2,$1D,$E1,$1D,$85,$1D,$80,$1D              ;
                db $E2,$1D,$E1,$1D,$81,$1D,$D1,$1D              ;
                db $E2,$1D,$E1,$1D,$C9,$1D,$D1,$1D              ;
                db $E2,$1D,$D6,$1D,$D2,$1D,$E6,$1D              ;
                db $D7,$1D,$E7,$1D,$D7,$1D,$E7,$1D              ;
                db $E7,$1D,$D7,$5D,$E7,$1D,$D7,$5D              ;
                db $D9,$1D,$E3,$1D,$E9,$1D,$D1,$1D              ;
                db $E2,$1D,$DC,$1D,$D2,$1D,$EC,$1D              ;
                db $DD,$1D,$DE,$1D,$ED,$1D,$EE,$1D              ;
                db $DF,$1D,$90,$1D,$EF,$1D,$A0,$1D              ;
                db $91,$1D,$E1,$1D,$A1,$1D,$D1,$1D              ;
                db $A2,$1D,$E3,$1D,$B2,$1D,$D1,$1D              ;
                db $D9,$1D,$E1,$1D,$E9,$1D,$D1,$1D              ;
                db $E2,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E2,$1D,$E1,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$F6,$1D,$F0,$1D,$F1,$1D              ;
                db $F7,$1D,$CE,$1D,$F2,$1D,$F3,$1D              ;
                db $CF,$1D,$F8,$1D,$F0,$1D,$F1,$1D              ;
                db $F9,$1D,$E1,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$E3,$1D,$F0,$1D,$F1,$1D              ;
                db $FA,$1D,$E1,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$FC,$1D,$F0,$1D,$F1,$1D              ;
                db $FD,$1D,$FE,$1D,$F2,$1D,$F3,$1D              ;
                db $FF,$1D,$B0,$1D,$F0,$1D,$F1,$1D              ;
                db $B1,$1D,$E1,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$FB,$1D,$F0,$1D,$F1,$1D              ;
                db $A2,$1D,$E1,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$CB,$1D,$D2,$1D,$D3,$1D              ;
                db $CA,$1D,$E1,$1D,$D0,$1D,$D1,$1D              ;
                db $86,$15,$86,$15,$87,$15,$87,$15              ;
                db $88,$15,$88,$15,$88,$15,$88,$15              ;

DATA_05972C:    db $34,$15,$34,$15,$34,$15,$34,$15              ;
                db $34,$15,$36,$15,$34,$15,$36,$15              ;
                db $37,$15,$38,$15,$37,$15,$28,$15              ;
                db $34,$15,$09,$1D,$34,$15,$34,$15              ;
                db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D              ;
                db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D              ;
                db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D              ;
                db $0A,$5D,$09,$5D,$1A,$5D,$19,$5D              ;
                db $09,$15,$0A,$15,$19,$15,$1A,$15              ;
                db $0B,$15,$0C,$15,$1B,$15,$1C,$15              ;
                db $0C,$55,$0B,$55,$1C,$55,$1B,$55              ;
                db $0A,$55,$09,$55,$1A,$55,$19,$55              ;
                db $00,$15,$01,$15,$10,$15,$11,$15              ;
                db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D              ;
                db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D              ;
                db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D              ;
                db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D              ;
                db $B0,$1D,$B1,$1D,$B2,$1D,$E8,$1C              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $02,$15,$03,$15,$12,$15,$13,$15              ;
                db $B1,$5D,$B0,$5D,$E9,$1C,$B2,$5D              ;
                db $34,$15,$34,$1D,$34,$15,$34,$1D              ;
                db $34,$1D,$98,$1D,$34,$1D,$A8,$1D              ;
                db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D              ;
                db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D              ;
                db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D              ;
                db $24,$15,$16,$15,$34,$15,$26,$15              ;
                db $17,$15,$18,$15,$27,$15,$28,$15              ;
                db $B3,$1D,$EA,$1C,$34,$1D,$8E,$1D              ;
                db $EB,$1C,$B3,$5D,$8F,$1D,$34,$1D              ;
                db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D              ;
                db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D              ;
                db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D              ;
                db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D              ;
                db $34,$15,$34,$15,$0D,$1D,$0E,$1D              ;
                db $34,$15,$34,$15,$0F,$1D,$34,$15              ;
                db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D              ;
                db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D              ;
                db $37,$15,$38,$15,$37,$15,$38,$15              ;
                db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D              ;
                db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D              ;
                db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D              ;
                db $3D,$1D,$3E,$1D,$34,$15,$15,$1D              ;
                db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D              ;
                db $34,$15,$26,$95,$24,$95,$16,$95              ;
                db $27,$95,$38,$15,$17,$95,$18,$95              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$83,$1D,$92,$1D,$93,$1D              ;
                db $32,$15,$22,$15,$10,$15,$11,$15              ;
                db $22,$15,$23,$15,$10,$15,$11,$15              ;
                db $33,$15,$00,$15,$10,$15,$11,$15              ;
                db $A0,$1D,$A1,$1D,$10,$15,$11,$15              ;
                db $A2,$1D,$A3,$1D,$10,$15,$11,$15              ;
                db $33,$15,$34,$15,$10,$15,$11,$15              ;
                db $85,$15,$87,$15,$95,$15,$97,$15              ;
                db $84,$15,$86,$15,$94,$15,$96,$15              ;
                db $85,$15,$86,$15,$95,$15,$96,$15              ;
                db $84,$15,$87,$15,$94,$15,$97,$15              ;
                db $84,$15,$85,$15,$94,$15,$95,$15              ;
                db $86,$15,$85,$15,$96,$15,$95,$15              ;
                db $A6,$15,$A7,$15,$B6,$15,$B7,$15              ;
                db $94,$15,$A6,$15,$B4,$15,$B6,$15              ;
                db $A6,$15,$A6,$15,$B6,$15,$B6,$15              ;
                db $94,$15,$A7,$15,$B4,$15,$B7,$15              ;
                db $99,$15,$16,$15,$34,$15,$26,$15              ;
                db $4C,$15,$4D,$15,$5C,$15,$40,$15              ;
                db $4D,$15,$4D,$15,$41,$15,$42,$15              ;
                db $4D,$15,$4D,$15,$43,$15,$44,$15              ;
                db $4D,$15,$4E,$15,$45,$15,$5D,$15              ;
                db $5C,$15,$50,$15,$5C,$15,$60,$15              ;
                db $51,$15,$52,$15,$61,$15,$62,$15              ;
                db $53,$15,$54,$15,$63,$15,$64,$15              ;
                db $55,$15,$5D,$15,$65,$15,$5D,$15              ;
                db $5C,$15,$70,$15,$5C,$15,$46,$15              ;
                db $71,$15,$72,$15,$47,$15,$48,$15              ;
                db $73,$15,$74,$15,$49,$15,$4A,$15              ;
                db $75,$15,$5D,$15,$4B,$15,$5D,$15              ;
                db $5C,$15,$56,$15,$5C,$15,$66,$15              ;
                db $57,$15,$58,$15,$67,$15,$68,$15              ;
                db $59,$15,$5A,$15,$69,$15,$6A,$15              ;
                db $5B,$15,$5D,$15,$6B,$15,$5D,$15              ;
                db $5C,$15,$76,$15,$5E,$15,$6C,$15              ;
                db $77,$15,$78,$15,$6C,$15,$6C,$15              ;
                db $79,$15,$7A,$15,$6C,$15,$6C,$15              ;
                db $7B,$15,$5D,$15,$6C,$15,$6D,$15              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;

DATA_059A2C:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $A4,$10,$A4,$10,$24,$00,$24,$00              ;
                db $A4,$10,$A4,$10,$A4,$10,$A4,$10              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $24,$00,$24,$00,$24,$00,$F0,$1C              ;
                db $24,$00,$24,$00,$F1,$1C,$24,$00              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $40,$15,$41,$15,$50,$15,$51,$15              ;
                db $46,$15,$47,$15,$56,$15,$57,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $24,$00,$F2,$1C,$24,$00,$F4,$1C              ;
                db $F3,$1C,$24,$00,$F5,$1C,$24,$00              ;
                db $60,$15,$61,$15,$70,$15,$71,$15              ;
                db $66,$15,$67,$15,$76,$15,$77,$15              ;
                db $0A,$15,$0B,$15,$1A,$15,$1B,$15              ;
                db $0C,$15,$0D,$15,$1C,$15,$1D,$15              ;
                db $28,$15,$29,$15,$1A,$15,$1B,$15              ;
                db $38,$15,$39,$15,$1C,$15,$1D,$15              ;
                db $0E,$15,$24,$00,$1E,$15,$1F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $2A,$15,$2B,$15,$3A,$15,$3B,$15              ;
                db $2C,$15,$2D,$15,$3C,$15,$3D,$15              ;
                db $2E,$15,$2F,$15,$3E,$15,$3F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $22,$15,$23,$15,$32,$15,$33,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $0C,$15,$0D,$15,$1C,$15,$1D,$15              ;
                db $28,$15,$29,$15,$1A,$15,$1B,$15              ;
                db $38,$15,$39,$15,$1C,$15,$1D,$15              ;
                db $42,$15,$43,$15,$52,$15,$53,$15              ;
                db $44,$15,$45,$15,$54,$15,$55,$15              ;
                db $62,$15,$63,$15,$72,$15,$73,$15              ;
                db $64,$15,$65,$15,$74,$15,$75,$15              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $34,$15,$35,$15,$1A,$15,$1B,$15              ;
                db $36,$15,$37,$15,$1C,$15,$1D,$15              ;
                db $2A,$15,$2B,$15,$24,$15,$25,$15              ;
                db $2C,$15,$2D,$15,$26,$15,$27,$15              ;
                db $A4,$15,$A5,$15,$B4,$15,$B5,$15              ;
                db $05,$15,$0B,$15,$15,$15,$03,$15              ;
                db $24,$00,$04,$15,$24,$00,$14,$15              ;
                db $10,$15,$11,$15,$13,$15,$27,$15              ;
                db $24,$00,$24,$00,$24,$00,$12,$15              ;
                db $06,$15,$2B,$15,$09,$15,$07,$15              ;
                db $2E,$15,$2F,$15,$3E,$15,$07,$15              ;
                db $24,$00,$24,$00,$08,$15,$24,$00              ;
                db $2E,$15,$2F,$15,$09,$15,$07,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;
                db $22,$15,$23,$15,$32,$15,$33,$15              ;
                db $72,$15,$71,$15,$5E,$15,$5F,$15              ;

DATA_059C2C:    db $24,$10,$24,$10,$24,$10,$24,$10              ;
                db $0A,$15,$4A,$15,$4A,$15,$16,$15              ;
                db $07,$15,$06,$15,$5A,$15,$16,$15              ;
                db $24,$10,$01,$15,$10,$15,$11,$15              ;
                db $02,$15,$03,$15,$0A,$15,$0A,$15              ;
                db $04,$15,$24,$10,$14,$15,$15,$15              ;
                db $0A,$15,$0D,$15,$0A,$15,$1D,$15              ;
                db $07,$15,$24,$10,$0E,$15,$07,$15              ;
                db $0A,$15,$1D,$15,$0A,$15,$0A,$15              ;
                db $1F,$15,$17,$15,$1E,$15,$55,$15              ;
                db $1E,$15,$55,$15,$0A,$15,$0F,$15              ;
                db $55,$15,$17,$15,$55,$15,$55,$15              ;
                db $55,$15,$55,$15,$1F,$15,$55,$15              ;
                db $07,$15,$06,$15,$0E,$15,$5B,$15              ;
                db $18,$15,$0A,$15,$0E,$15,$18,$15              ;
                db $5E,$15,$5E,$15,$4F,$15,$4F,$15              ;
                db $0A,$15,$4B,$15,$4A,$15,$16,$15              ;
                db $55,$15,$5A,$15,$5A,$15,$16,$15              ;
                db $24,$10,$06,$15,$06,$15,$16,$15              ;
                db $16,$15,$0A,$15,$0A,$15,$0A,$15              ;
                db $02,$15,$08,$15,$0A,$15,$0A,$15              ;
                db $09,$15,$0A,$15,$14,$15,$1A,$15              ;
                db $0A,$55,$0A,$15,$0A,$15,$0A,$15              ;
                db $1E,$15,$17,$15,$0A,$15,$0F,$15              ;
                db $07,$15,$24,$10,$17,$15,$07,$15              ;
                db $0A,$15,$0F,$15,$0A,$15,$1D,$15              ;
                db $55,$15,$17,$15,$1F,$15,$55,$15              ;
                db $1F,$15,$55,$15,$1E,$15,$55,$15              ;
                db $55,$15,$55,$15,$55,$15,$55,$15              ;
                db $07,$15,$06,$15,$17,$15,$5B,$15              ;
                db $18,$15,$0A,$15,$17,$15,$18,$15              ;
                db $5F,$15,$5F,$15,$5F,$15,$5F,$15              ;
                db $45,$15,$0A,$15,$0A,$15,$0A,$15              ;
                db $0A,$15,$0A,$15,$0A,$15,$19,$15              ;
                db $0A,$15,$12,$15,$0A,$15,$12,$95              ;
                db $13,$15,$0A,$15,$13,$95,$0A,$15              ;
                db $19,$15,$0A,$55,$0A,$55,$45,$D5              ;
                db $47,$15,$47,$55,$47,$95,$47,$D5              ;
                db $57,$15,$57,$55,$57,$95,$57,$D5              ;
                db $12,$15,$0A,$15,$12,$95,$19,$15              ;
                db $0A,$15,$0A,$15,$47,$15,$47,$55              ;
                db $47,$95,$54,$15,$0A,$15,$57,$95              ;
                db $57,$55,$0A,$15,$57,$D5,$0A,$15              ;
                db $0B,$15,$0C,$15,$1B,$15,$1C,$15              ;
                db $0A,$15,$0A,$15,$0A,$15,$0B,$15              ;
                db $0A,$15,$0A,$15,$0C,$15,$0A,$15              ;
                db $0B,$15,$1B,$15,$1B,$15,$0A,$15              ;
                db $1C,$15,$0C,$15,$0A,$15,$1C,$15              ;
                db $55,$55,$56,$55,$55,$55,$56,$D5              ;
                db $55,$55,$46,$55,$55,$55,$46,$D5              ;
                db $5C,$15,$17,$15,$55,$55,$55,$55              ;
                db $55,$55,$17,$15,$55,$55,$4C,$15              ;
                db $26,$15,$21,$15,$36,$15,$31,$15              ;
                db $22,$15,$23,$15,$32,$15,$33,$15              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $22,$15,$24,$15,$32,$15,$34,$15              ;
                db $27,$15,$51,$15,$37,$15,$31,$15              ;
                db $52,$15,$53,$15,$32,$15,$33,$15              ;
                db $50,$15,$51,$15,$30,$15,$31,$15              ;
                db $52,$15,$48,$15,$32,$15,$58,$15              ;
                db $27,$15,$41,$15,$37,$15,$31,$15              ;
                db $42,$15,$43,$15,$32,$15,$33,$15              ;
                db $40,$15,$41,$15,$30,$15,$31,$15              ;
                db $42,$15,$44,$15,$32,$15,$35,$15              ;
                db $2E,$15,$29,$15,$3E,$15,$39,$15              ;
                db $2A,$15,$2B,$15,$3A,$15,$3B,$15              ;
                db $28,$15,$29,$15,$38,$15,$39,$15              ;
                db $2A,$15,$2C,$15,$3A,$15,$3C,$15              ;
                db $2F,$15,$29,$15,$3F,$15,$39,$15              ;
                db $2A,$15,$49,$15,$3A,$15,$59,$15              ;
                db $2A,$15,$2D,$15,$3A,$15,$3D,$15              ;
                db $60,$15,$61,$15,$5E,$15,$5F,$15              ;
                db $62,$15,$63,$15,$67,$15,$68,$15              ;
                db $62,$15,$4D,$15,$67,$15,$5D,$15              ;
                db $62,$15,$4E,$15,$67,$15,$5D,$15              ;
                db $62,$15,$4F,$15,$67,$15,$5D,$15              ;
                db $64,$15,$61,$15,$69,$15,$5F,$15              ;
                db $65,$15,$61,$15,$6A,$15,$5F,$15              ;
                db $66,$15,$66,$15,$66,$15,$66,$15              ;
                db $86,$15,$86,$15,$87,$15,$87,$15              ;
                db $88,$15,$88,$15,$88,$15,$88,$15              ;
                db $12,$15,$1F,$15,$12,$15,$1F,$15              ;
                db $07,$15,$06,$15,$B0,$15,$16,$15              ;
                db $45,$15,$71,$15,$0E,$15,$A2,$15              ;
                db $89,$15,$8C,$15,$9B,$15,$9C,$15              ;
                db $9D,$15,$9F,$15,$9F,$15,$12,$15              ;
                db $89,$15,$8C,$15,$9B,$15,$9C,$15              ;
                db $FF,$15,$FF,$15,$FF,$15,$FF,$15              ;
                db $EE,$15,$EE,$15,$FE,$15,$FE,$15              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $27,$00,$27,$00,$27,$00,$27,$00              ;
                db $2E,$14,$96,$15,$67,$15,$91,$15              ;
                db $97,$15,$03,$15,$12,$15,$13,$15              ;
                db $4E,$15,$06,$15,$54,$15,$16,$15              ;
                db $A0,$15,$A1,$15,$B0,$15,$16,$15              ;
                db $17,$15,$B0,$15,$B0,$15,$16,$15              ;
                db $55,$15,$17,$15,$55,$15,$17,$95              ;
                db $55,$15,$55,$15,$55,$15,$17,$95              ;
                db $45,$15,$71,$15,$17,$15,$A2,$15              ;
                db $57,$15,$81,$15,$90,$15,$91,$15              ;
                db $82,$15,$83,$15,$92,$15,$93,$15              ;
                db $84,$15,$57,$15,$94,$15,$95,$15              ;
                db $12,$15,$0D,$15,$12,$15,$1D,$15              ;
                db $07,$15,$24,$14,$0E,$15,$07,$15              ;
                db $1E,$15,$17,$15,$12,$15,$0F,$15              ;
                db $12,$15,$1D,$15,$12,$15,$12,$15              ;
                db $1F,$15,$17,$15,$1E,$15,$55,$15              ;
                db $07,$15,$4B,$15,$0E,$15,$45,$15              ;
                db $18,$15,$19,$15,$0E,$15,$18,$15              ;
                db $12,$15,$0F,$15,$12,$15,$1D,$15              ;
                db $55,$15,$17,$15,$1F,$15,$55,$15              ;
                db $1E,$15,$55,$15,$12,$15,$0F,$15              ;
                db $1F,$15,$55,$15,$1E,$15,$55,$15              ;
                db $55,$15,$55,$15,$1F,$15,$55,$15              ;
                db $45,$15,$2E,$14,$0E,$15,$45,$15              ;
                db $12,$15,$12,$15,$12,$15,$89,$15              ;
                db $12,$15,$12,$15,$8C,$15,$12,$15              ;
                db $89,$15,$8A,$15,$99,$15,$9A,$15              ;
                db $8B,$15,$8C,$15,$9B,$15,$9C,$15              ;
                db $8D,$15,$8E,$15,$12,$15,$8F,$15              ;
                db $9D,$15,$9E,$15,$9F,$15,$12,$15              ;
                db $89,$15,$8C,$15,$99,$15,$9A,$15              ;
                db $89,$15,$8C,$15,$9B,$15,$9C,$15              ;
                db $B3,$15,$B2,$15,$B2,$15,$16,$15              ;
                db $B3,$15,$A3,$15,$B2,$15,$16,$15              ;
                db $12,$15,$99,$15,$12,$15,$8F,$15              ;
                db $9D,$15,$8E,$15,$9F,$15,$8F,$15              ;
                db $9C,$15,$12,$15,$9F,$15,$12,$15              ;
                db $12,$15,$12,$15,$8C,$15,$89,$15              ;
                db $89,$15,$8C,$15,$9B,$15,$9A,$15              ;
                db $12,$15,$12,$15,$89,$15,$8C,$15              ;
                db $99,$15,$9C,$15,$8F,$15,$9F,$15              ;
                db $12,$15,$99,$15,$8C,$15,$8F,$15              ;
                db $16,$15,$12,$15,$89,$15,$8C,$15              ;
                db $16,$15,$12,$15,$12,$15,$89,$15              ;
                db $16,$15,$12,$15,$89,$15,$8C,$15              ;
                db $99,$15,$9C,$15,$8D,$15,$B1,$15              ;
                db $12,$15,$1D,$15,$8C,$15,$12,$15              ;
                db $12,$15,$1D,$15,$8C,$15,$12,$15              ;
                db $62,$15,$63,$15,$72,$15,$73,$15              ;
                db $64,$15,$65,$15,$74,$15,$75,$15              ;
                db $66,$15,$67,$15,$76,$15,$77,$15              ;
                db $68,$15,$69,$15,$78,$15,$79,$15              ;
                db $24,$00,$24,$00,$00,$1D,$01,$1D              ;
                db $24,$00,$24,$00,$02,$1D,$03,$1D              ;
                db $24,$00,$24,$00,$04,$1D,$05,$1D              ;
                db $24,$00,$24,$00,$06,$1D,$07,$1D              ;
                db $10,$1D,$11,$1D,$20,$1D,$21,$1D              ;
                db $12,$1D,$13,$1D,$22,$1D,$23,$1D              ;
                db $14,$1D,$15,$1D,$24,$1D,$25,$1D              ;
                db $16,$1D,$17,$1D,$26,$1D,$27,$1D              ;
                db $24,$00,$24,$00,$40,$1D,$41,$1D              ;
                db $30,$1D,$31,$1D,$08,$1D,$09,$1D              ;
                db $32,$1D,$33,$1D,$0A,$1D,$0B,$1D              ;
                db $34,$1D,$35,$1D,$0C,$1D,$0D,$1D              ;
                db $36,$1D,$37,$1D,$0E,$1D,$0F,$1D              ;
                db $50,$1D,$51,$1D,$60,$1D,$61,$1D              ;
                db $18,$1D,$19,$1D,$28,$1D,$29,$1D              ;
                db $1A,$1D,$1B,$1D,$2A,$1D,$2B,$1D              ;
                db $1C,$1D,$1D,$1D,$2C,$1D,$2D,$1D              ;
                db $1E,$1D,$1F,$1D,$2E,$1D,$2F,$1D              ;
                db $70,$1D,$71,$1D,$24,$00,$24,$00              ;
                db $38,$1D,$39,$1D,$24,$00,$24,$00              ;
                db $3A,$1D,$3B,$1D,$24,$00,$24,$00              ;
                db $3C,$1D,$3D,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $3E,$1D,$3F,$1D,$24,$00,$24,$00              ;
                db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $C8,$1D,$C9,$1D,$D8,$1D,$D9,$1D              ;
                db $CA,$1D,$24,$00,$DA,$1D,$DB,$1D              ;
                db $E8,$1D,$24,$00,$F8,$1D,$24,$00              ;
                db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D              ;
                db $EA,$1D,$EB,$1D,$FA,$1D,$FB,$1D              ;
                db $24,$00,$E9,$1D,$24,$00,$F9,$1D              ;
                db $DF,$1D,$C3,$1D,$DC,$1D,$D3,$1D              ;
                db $E8,$1D,$E9,$1D,$F8,$1D,$F9,$1D              ;
                db $CC,$1D,$CD,$1D,$D0,$1D,$D1,$1D              ;
                db $CE,$1D,$CF,$1D,$D2,$1D,$D3,$1D              ;
                db $24,$00,$E5,$1D,$24,$00,$F5,$1D              ;
                db $24,$00,$DD,$1D,$24,$00,$DE,$1D              ;
                db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $E4,$1D,$E5,$1D,$F4,$1D,$F5,$1D              ;
                db $E6,$1D,$E7,$1D,$F6,$1D,$F7,$1D              ;
                db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $E4,$1D,$24,$00,$F4,$1D,$24,$00              ;
                db $24,$00,$24,$00,$EC,$1D,$ED,$1D              ;
                db $E2,$1D,$F8,$1D,$F2,$1D,$F3,$1D              ;
                db $EE,$15,$EE,$15,$FE,$15,$FE,$15              ;
                db $FF,$15,$FF,$15,$FF,$15,$FF,$15              ;
                db $16,$1D,$12,$1D,$12,$1D,$89,$1D              ;
                db $16,$1D,$12,$1D,$89,$1D,$8C,$1D              ;
                db $99,$1D,$9C,$1D,$8D,$1D,$B1,$1D              ;
                db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D              ;
                db $12,$1D,$1D,$1D,$8C,$1D,$12,$1D              ;
                db $62,$15,$63,$15,$72,$15,$73,$15              ;
                db $64,$15,$65,$15,$74,$15,$75,$15              ;
                db $66,$15,$67,$15,$76,$15,$77,$15              ;
                db $68,$15,$69,$15,$78,$15,$79,$15              ;
                db $07,$15,$06,$15,$B0,$15,$16,$15              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $22,$15,$23,$15,$32,$15,$33,$15              ;
                db $28,$15,$29,$15,$38,$15,$39,$15              ;
                db $2A,$15,$2B,$15,$3A,$15,$3B,$15              ;
                db $26,$15,$21,$15,$36,$15,$31,$15              ;
                db $22,$15,$24,$15,$32,$15,$34,$15              ;
                db $2E,$15,$29,$15,$3E,$15,$39,$15              ;
                db $2A,$15,$2C,$15,$3A,$15,$3C,$15              ;
                db $40,$15,$41,$15,$30,$15,$31,$15              ;
                db $42,$15,$43,$15,$32,$15,$33,$15              ;
                db $27,$15,$41,$15,$37,$15,$31,$15              ;
                db $22,$15,$24,$15,$32,$15,$34,$15              ;
                db $2F,$15,$29,$15,$3F,$15,$39,$15              ;
                db $2A,$15,$2D,$15,$3A,$15,$3D,$15              ;
                db $50,$15,$51,$15,$30,$15,$31,$15              ;
                db $52,$15,$53,$15,$32,$15,$33,$15              ;
                db $52,$15,$48,$15,$32,$15,$58,$15              ;
                db $2A,$15,$49,$15,$3A,$15,$59,$15              ;

DATA_05A364:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $C1,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C2,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C3,$1C,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$C0,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C1,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C2,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C3,$1C,$24,$00              ;
                db $C4,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C5,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C6,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C7,$1C,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$C4,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C5,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C6,$1C,$24,$00              ;
                db $24,$00,$24,$00,$C7,$1C,$24,$00              ;
                db $24,$00,$C0,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C1,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C2,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C3,$1C,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$C0,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C1,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C2,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C3,$1C              ;
                db $24,$00,$C4,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C5,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C6,$1C,$24,$00,$24,$00              ;
                db $24,$00,$C7,$1C,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$C4,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C5,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C6,$1C              ;
                db $24,$00,$24,$00,$24,$00,$C7,$1C              ;
                db $E0,$15,$E0,$15,$E1,$15,$E1,$15              ;
                db $C6,$15,$C7,$15,$D6,$15,$D7,$15              ;
                db $C8,$15,$C9,$15,$D8,$15,$D9,$15              ;
                db $CA,$15,$CB,$15,$DA,$15,$DB,$15              ;
                db $CC,$15,$CD,$15,$DC,$15,$DD,$15              ;
                db $E6,$15,$E7,$15,$F6,$15,$F7,$15              ;
                db $E8,$15,$E9,$15,$F8,$15,$F9,$15              ;
                db $EA,$15,$EB,$15,$FA,$15,$FB,$15              ;
                db $EC,$15,$ED,$15,$FC,$15,$FD,$15              ;
                db $E2,$15,$E2,$15,$E2,$15,$E2,$15              ;
                db $C0,$1C,$24,$00,$24,$00,$24,$00              ;
                db $C0,$1C,$24,$00,$24,$00,$24,$00              ;

DATA_05A4C4:    db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $04,$15,$05,$15,$16,$15,$17,$15              ;
                db $06,$15,$07,$15,$20,$15,$21,$15              ;
                db $04,$15,$05,$15,$22,$15,$23,$15              ;
                db $06,$15,$07,$15,$14,$15,$15,$15              ;
                db $0C,$15,$0D,$15,$1C,$15,$1D,$15              ;
                db $24,$00,$24,$00,$1E,$15,$24,$00              ;
                db $24,$00,$2C,$15,$24,$00,$3C,$15              ;
                db $0C,$15,$2A,$15,$16,$15,$3A,$15              ;
                db $2B,$15,$07,$15,$3B,$15,$21,$15              ;
                db $26,$15,$27,$15,$36,$15,$37,$15              ;
                db $30,$15,$31,$15,$08,$15,$24,$00              ;
                db $32,$15,$33,$15,$24,$00,$0B,$15              ;
                db $24,$15,$25,$15,$34,$15,$35,$15              ;
                db $26,$15,$1B,$15,$36,$15,$37,$15              ;
                db $0F,$15,$24,$00,$08,$15,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$3E,$15              ;
                db $2E,$15,$2F,$15,$3F,$15,$35,$15              ;
                db $18,$15,$24,$00,$4A,$15,$4B,$15              ;
                db $24,$00,$19,$15,$5A,$15,$5B,$15              ;
                db $24,$00,$19,$15,$5C,$15,$48,$15              ;
                db $24,$15,$25,$15,$44,$15,$45,$15              ;
                db $26,$15,$27,$15,$46,$15,$47,$15              ;
                db $24,$00,$24,$00,$5C,$15,$51,$15              ;
                db $24,$00,$24,$00,$52,$15,$53,$15              ;
                db $24,$00,$19,$15,$50,$15,$48,$15              ;
                db $00,$15,$01,$15,$11,$15,$00,$15              ;
                db $68,$15,$69,$15,$78,$15,$79,$15              ;
                db $6A,$15,$6B,$15,$7A,$15,$7B,$15              ;
                db $10,$15,$11,$15,$01,$15,$10,$15              ;
                db $6C,$15,$61,$15,$7C,$15,$71,$15              ;
                db $54,$15,$55,$15,$72,$15,$73,$15              ;
                db $56,$15,$57,$15,$74,$15,$75,$15              ;
                db $4C,$15,$4D,$15,$76,$15,$77,$15              ;
                db $62,$15,$63,$15,$72,$15,$73,$15              ;
                db $64,$15,$65,$15,$74,$15,$75,$15              ;
                db $66,$15,$67,$15,$76,$15,$77,$15              ;
                db $60,$15,$61,$15,$7C,$15,$71,$15              ;
                db $54,$15,$58,$15,$72,$15,$59,$15              ;
                db $16,$15,$17,$15,$18,$15,$19,$15              ;
                db $19,$15,$18,$15,$18,$15,$19,$15              ;
                db $06,$15,$06,$15,$14,$15,$15,$15              ;

DATA_05A614:    db $34,$15,$34,$15,$34,$15,$34,$15              ;Castle background map16 tiles
                db $34,$15,$04,$15,$34,$15,$04,$15              ;
                db $05,$15,$06,$15,$05,$15,$06,$15              ;
                db $29,$15,$2A,$15,$19,$15,$1A,$15              ;
                db $2B,$15,$2C,$15,$1B,$15,$1C,$15              ;
                db $38,$15,$34,$15,$38,$15,$34,$15              ;
                db $19,$15,$1A,$15,$19,$15,$1A,$15              ;
                db $1B,$15,$1C,$15,$1B,$15,$1C,$15              ;
                db $09,$15,$0A,$15,$19,$15,$1A,$15              ;
                db $0B,$15,$0C,$15,$1B,$15,$1C,$15              ;
                db $34,$15,$04,$15,$34,$15,$14,$15              ;
                db $05,$15,$06,$15,$15,$15,$06,$15              ;
                db $00,$15,$01,$15,$10,$15,$11,$15              ;
                db $00,$15,$02,$15,$10,$15,$12,$15              ;
                db $03,$15,$01,$15,$13,$15,$11,$15              ;
                db $0D,$15,$0A,$15,$1D,$15,$1A,$15              ;
                db $0B,$15,$0E,$15,$1B,$15,$1E,$15              ;
                db $0F,$15,$01,$15,$1F,$15,$11,$15              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $20,$15,$22,$15,$30,$15,$32,$15              ;
                db $23,$15,$21,$15,$33,$15,$31,$15              ;
                db $20,$15,$21,$15,$30,$15,$30,$15              ;
                db $2D,$15,$1A,$15,$3D,$15,$1A,$15              ;
                db $1B,$15,$2E,$15,$1B,$15,$3E,$15              ;
                db $2F,$15,$21,$15,$3F,$15,$31,$15              ;
                db $35,$15,$35,$15,$34,$15,$34,$15              ;
                db $24,$15,$16,$15,$34,$15,$26,$15              ;
                db $17,$15,$18,$15,$27,$15,$28,$15              ;
                db $25,$15,$35,$15,$34,$15,$34,$15              ;
                db $39,$15,$0A,$15,$19,$15,$1A,$15              ;
                db $3A,$15,$35,$15,$38,$15,$34,$15              ;
                db $34,$15,$36,$15,$34,$15,$36,$15              ;
                db $37,$15,$28,$15,$37,$15,$28,$15              ;
                db $02,$15,$03,$15,$12,$15,$05,$15              ;
                db $04,$15,$24,$15,$14,$15,$15,$15              ;
                db $24,$15,$06,$15,$06,$15,$16,$15              ;
                db $12,$15,$12,$15,$12,$15,$12,$15              ;
                db $0E,$15,$17,$15,$0F,$15,$55,$15              ;
                db $07,$15,$24,$15,$17,$15,$07,$15              ;
                db $16,$15,$1B,$15,$0B,$15,$1B,$15              ;
                db $0C,$15,$12,$15,$1C,$15,$0C,$15              ;
                db $1D,$15,$55,$15,$1E,$15,$55,$15              ;
                db $55,$15,$17,$15,$55,$15,$55,$15              ;
                db $16,$15,$0B,$15,$12,$15,$12,$15              ;
                db $1B,$15,$12,$15,$12,$15,$12,$15              ;
                db $1E,$15,$55,$15,$12,$15,$55,$15              ;
                db $55,$15,$55,$15,$55,$15,$55,$15              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $81,$5D,$80,$5D,$92,$1D,$90,$5D              ;
                db $A0,$1D,$A1,$1D,$B0,$1D,$82,$1D              ;
                db $A2,$1D,$B1,$1D,$82,$5D,$B2,$1D              ;
                db $34,$15,$7C,$15,$34,$15,$7D,$15              ;
                db $87,$15,$88,$15,$97,$15,$98,$15              ;
                db $83,$1D,$84,$1D,$93,$1D,$94,$1D              ;
                db $85,$1D,$86,$1D,$95,$1D,$96,$1D              ;
                db $A7,$15,$A8,$15,$B7,$15,$B8,$15              ;
                db $34,$15,$8A,$15,$34,$15,$9A,$15              ;
                db $89,$15,$8B,$15,$13,$15,$9B,$15              ;
                db $A3,$1D,$A4,$1D,$30,$15,$30,$15              ;
                db $A5,$1D,$A6,$1D,$30,$15,$30,$15              ;
                db $B3,$15,$B4,$15,$B5,$15,$B6,$15              ;
                db $A9,$15,$AA,$15,$B9,$15,$32,$15              ;
                db $23,$15,$AB,$15,$33,$15,$31,$15              ;
                db $35,$15,$16,$15,$34,$15,$26,$15              ;
                db $99,$15,$16,$15,$34,$15,$26,$15              ;
                db $4C,$15,$4D,$15,$5C,$15,$40,$15              ;
                db $4D,$15,$4D,$15,$41,$15,$42,$15              ;
                db $4D,$15,$4D,$15,$43,$15,$44,$15              ;
                db $4D,$15,$4E,$15,$45,$15,$5D,$15              ;
                db $5C,$15,$50,$15,$5C,$15,$60,$15              ;
                db $51,$15,$52,$15,$61,$15,$62,$15              ;
                db $53,$15,$54,$15,$63,$15,$64,$15              ;
                db $55,$15,$5D,$15,$65,$15,$5D,$15              ;
                db $5C,$15,$70,$15,$5C,$15,$46,$15              ;
                db $71,$15,$72,$15,$47,$15,$48,$15              ;
                db $73,$15,$74,$15,$49,$15,$4A,$15              ;
                db $75,$15,$5D,$15,$4B,$15,$5D,$15              ;
                db $5C,$15,$56,$15,$5C,$15,$66,$15              ;
                db $57,$15,$58,$15,$67,$15,$68,$15              ;
                db $59,$15,$5A,$15,$69,$15,$6A,$15              ;
                db $5B,$15,$5D,$15,$6B,$15,$5D,$15              ;
                db $5C,$15,$76,$15,$5E,$15,$6C,$15              ;
                db $77,$15,$78,$15,$6C,$15,$6C,$15              ;
                db $79,$15,$7A,$15,$6C,$15,$6C,$15              ;
                db $7B,$15,$5D,$15,$6C,$15,$6D,$15              ;
                db $04,$15,$05,$15,$04,$15,$05,$15              ;
                db $06,$15,$34,$15,$06,$15,$34,$15              ;
                db $34,$15,$29,$15,$34,$15,$19,$15              ;
                db $2A,$15,$2B,$15,$1A,$15,$1B,$15              ;
                db $2C,$15,$38,$15,$1C,$15,$38,$15              ;
                db $34,$15,$19,$15,$34,$15,$19,$15              ;
                db $1A,$15,$1B,$15,$1A,$15,$1B,$15              ;
                db $1C,$15,$38,$15,$1C,$15,$38,$15              ;
                db $34,$15,$09,$15,$34,$15,$19,$15              ;
                db $0A,$15,$0B,$15,$1A,$15,$1B,$15              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $34,$15,$34,$15,$34,$15,$34,$15              ;
                db $34,$15,$36,$15,$34,$15,$36,$15              ;
                db $37,$15,$38,$15,$37,$15,$28,$15              ;
                db $34,$15,$09,$1D,$34,$15,$34,$15              ;
                db $09,$1D,$0A,$1D,$19,$1D,$1A,$1D              ;
                db $0B,$1D,$0C,$1D,$1B,$1D,$1C,$1D              ;
                db $0C,$5D,$0B,$5D,$1C,$5D,$1B,$5D              ;
                db $34,$15,$8D,$1D,$9C,$1D,$9D,$1D              ;
                db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D              ;
                db $8C,$1D,$8E,$1D,$BB,$1D,$9E,$1D              ;
                db $AD,$5D,$AC,$5D,$BD,$5D,$BC,$5D              ;
                db $0A,$55,$09,$55,$1A,$55,$19,$55              ;
                db $00,$15,$01,$15,$10,$15,$11,$15              ;
                db $BB,$1D,$BC,$1D,$34,$1D,$88,$1D              ;
                db $BD,$1D,$BC,$1D,$89,$1D,$8C,$1D              ;
                db $BD,$1D,$BC,$1D,$8D,$1D,$89,$5D              ;
                db $34,$15,$34,$15,$34,$15,$CE,$15              ;
                db $EC,$15,$ED,$15,$FC,$15,$FD,$15              ;
                db $EE,$15,$EF,$15,$FE,$15,$FF,$15              ;
                db $34,$15,$34,$15,$CF,$15,$34,$15              ;
                db $CE,$15,$CF,$15,$34,$15,$DE,$15              ;
                db $D8,$15,$D9,$15,$C9,$15,$FD,$15              ;
                db $C1,$15,$C2,$15,$FE,$15,$DF,$15              ;
                db $CE,$15,$CF,$15,$DE,$15,$34,$15              ;
                db $CE,$15,$CF,$15,$34,$15,$DE,$15              ;
                db $D8,$15,$D9,$15,$6E,$15,$FD,$15              ;
                db $C1,$15,$C2,$15,$FE,$15,$6F,$15              ;
                db $CE,$15,$CF,$15,$DE,$15,$34,$15              ;
                db $CE,$15,$CF,$15,$34,$15,$34,$15              ;
                db $CE,$15,$CF,$15,$34,$15,$34,$15              ;
                db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D              ;
                db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D              ;
                db $34,$15,$DE,$15,$CE,$15,$CF,$15              ;
                db $C9,$15,$FD,$15,$D8,$15,$D9,$15              ;
                db $FE,$15,$DF,$15,$C1,$15,$C2,$15              ;
                db $DE,$15,$34,$15,$CE,$15,$CF,$15              ;
                db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D              ;
                db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D              ;
                db $37,$15,$38,$15,$37,$15,$38,$15              ;
                db $34,$15,$DE,$15,$34,$15,$34,$15              ;
                db $6E,$15,$FD,$15,$34,$15,$34,$15              ;
                db $FE,$15,$6F,$15,$34,$15,$34,$15              ;
                db $DE,$15,$34,$15,$34,$15,$34,$15              ;
                db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D              ;
                db $34,$15,$26,$95,$24,$95,$16,$95              ;
                db $27,$95,$38,$15,$17,$95,$18,$95              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$83,$1D,$92,$1D,$93,$1D              ;
                db $BD,$1D,$BE,$1D,$88,$1D,$34,$1D              ;
                db $B0,$1D,$B1,$1D,$B2,$1D,$2B,$1D              ;
                db $20,$15,$21,$15,$30,$15,$31,$15              ;
                db $02,$15,$03,$15,$12,$15,$13,$15              ;
                db $B1,$5D,$B0,$5D,$2C,$1D,$B2,$5D              ;
                db $34,$15,$34,$1D,$34,$15,$34,$1D              ;
                db $34,$1D,$98,$1D,$34,$1D,$A8,$1D              ;
                db $89,$1D,$8A,$1D,$99,$1D,$9A,$1D              ;
                db $8B,$1D,$89,$5D,$9B,$1D,$99,$5D              ;
                db $9C,$1D,$34,$1D,$AC,$1D,$34,$1D              ;
                db $24,$15,$16,$15,$34,$15,$26,$15              ;
                db $17,$15,$18,$15,$27,$15,$28,$15              ;
                db $B3,$1D,$3B,$1D,$34,$1D,$8E,$1D              ;
                db $3C,$1D,$B3,$5D,$8F,$1D,$34,$1D              ;
                db $34,$1D,$A8,$1D,$34,$1D,$A8,$1D              ;
                db $A9,$1D,$8A,$1D,$B9,$1D,$B9,$1D              ;
                db $8B,$1D,$A9,$5D,$B9,$1D,$BA,$1D              ;
                db $AC,$1D,$34,$1D,$AC,$1D,$34,$1D              ;
                db $34,$15,$34,$15,$0D,$1D,$0E,$1D              ;
                db $34,$15,$34,$15,$0F,$1D,$34,$15              ;
                db $1D,$1D,$1E,$1D,$2D,$1D,$2E,$1D              ;
                db $1F,$1D,$29,$1D,$2F,$1D,$39,$1D              ;
                db $37,$15,$38,$15,$37,$15,$38,$15              ;
                db $34,$1D,$A8,$1D,$34,$1D,$B8,$1D              ;
                db $8B,$1D,$A9,$5D,$B9,$1D,$B9,$1D              ;
                db $AC,$1D,$34,$1D,$BA,$1D,$34,$1D              ;
                db $3D,$1D,$3E,$1D,$34,$15,$15,$1D              ;
                db $3F,$1D,$2A,$1D,$25,$1D,$3A,$1D              ;
                db $34,$15,$26,$95,$24,$95,$16,$95              ;
                db $27,$95,$38,$15,$17,$95,$18,$95              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$83,$1D,$92,$1D,$93,$1D              ;
                db $32,$15,$22,$15,$10,$15,$11,$15              ;
                db $22,$15,$23,$15,$10,$15,$11,$15              ;
                db $33,$15,$00,$15,$10,$15,$11,$15              ;
                db $A0,$1D,$A1,$1D,$10,$15,$11,$15              ;
                db $A2,$1D,$A3,$1D,$10,$15,$11,$15              ;
                db $33,$15,$34,$15,$10,$15,$11,$15              ;
                db $85,$15,$87,$15,$95,$15,$97,$15              ;
                db $84,$15,$86,$15,$94,$15,$96,$15              ;
                db $85,$15,$86,$15,$95,$15,$96,$15              ;
                db $84,$15,$87,$15,$94,$15,$97,$15              ;
                db $84,$15,$85,$15,$94,$15,$95,$15              ;
                db $86,$15,$85,$15,$96,$15,$95,$15              ;
                db $A6,$15,$A7,$15,$B6,$15,$B7,$15              ;
                db $94,$15,$A6,$15,$B4,$15,$B6,$15              ;
                db $A6,$15,$A6,$15,$B6,$15,$B6,$15              ;
                db $94,$15,$A7,$15,$B4,$15,$B7,$15              ;

DATA_05AC14:    db $24,$10,$24,$10,$24,$10,$24,$10              ;
                db $0E,$15,$0F,$15,$1E,$15,$1F,$15              ;
                db $02,$1D,$03,$1D,$12,$1D,$13,$1D              ;
                db $20,$1D,$21,$1D,$30,$1D,$31,$1D              ;
                db $2E,$15,$2F,$15,$3E,$15,$3F,$15              ;
                db $22,$1D,$23,$1D,$32,$1D,$33,$1D              ;
                db $20,$1D,$21,$1D,$1C,$15,$1D,$15              ;
                db $28,$15,$29,$15,$10,$1D,$11,$1D              ;
                db $2A,$15,$2B,$15,$12,$1D,$13,$1D              ;
                db $6C,$15,$6D,$15,$7C,$15,$7D,$15              ;
                db $4E,$15,$4F,$15,$5E,$15,$5F,$15              ;
                db $6E,$15,$6F,$15,$7E,$15,$7F,$15              ;
                db $48,$1D,$49,$1D,$58,$1D,$59,$1D              ;
                db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D              ;
                db $0C,$15,$0D,$15,$1C,$15,$1D,$15              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $28,$15,$29,$15,$38,$15,$39,$15              ;
                db $2A,$15,$2B,$15,$3A,$15,$3B,$15              ;
                db $08,$15,$09,$15,$18,$15,$19,$15              ;
                db $0A,$15,$0B,$15,$1A,$15,$1B,$15              ;
                db $06,$1D,$07,$1D,$16,$1D,$17,$15              ;
                db $04,$15,$05,$1D,$14,$1D,$15,$1D              ;
                db $06,$1D,$03,$1D,$16,$1D,$13,$1D              ;
                db $26,$1D,$27,$1D,$36,$1D,$37,$1D              ;
                db $24,$1D,$25,$1D,$34,$1D,$35,$1D              ;
                db $26,$1D,$23,$1D,$36,$1D,$33,$1D              ;
                db $2C,$15,$2D,$15,$3C,$15,$3D,$15              ;
                db $3D,$15,$3C,$15,$3C,$15,$3D,$15              ;
                db $00,$1D,$01,$1D,$10,$1D,$11,$1D              ;

DATA_05AD04:    dw DATA_05B557-DATA_05B557                      ;Relative indices to $05B557
                dw DATA_05B58D-DATA_05B557                      ;
                dw DATA_05B61D-DATA_05B557                      ;
                dw DATA_06B62F-DATA_05B557                      ;
                dw DATA_05B70F-DATA_05B557                      ;
                dw DATA_05B781-DATA_05B557                      ;
                dw DATA_05B7BB-DATA_05B557                      ;
                dw DATA_05B965-DATA_05B557                      ;
                dw DATA_05BB0F-DATA_05B557                      ;
                dw DATA_05BB41-DATA_05B557                      ;
                dw DATA_05BB67-DATA_05B557                      ;
                dw DATA_05BBA3-DATA_05B557                      ;
                dw DATA_05BBD1-DATA_05B557                      ;
                dw DATA_05BBDD-DATA_05B557                      ;
                dw DATA_05BC0F-DATA_05B557                      ;
                dw DATA_05BC1D-DATA_05B557                      ;
                dw DATA_05BC81-DATA_05B557                      ;
                dw DATA_05BD61-DATA_05B557                      ;
                dw DATA_05BF0B-DATA_05B557                      ;
                dw DATA_05BF27-DATA_05B557                      ;
                dw DATA_05BF79-DATA_05B557                      ;
                dw DATA_05BFAB-DATA_05B557                      ;
                dw DATA_05BFCF-DATA_05B557                      ;
                dw DATA_05C001-DATA_05B557                      ;
                dw DATA_05C00D-DATA_05B557                      ;
                dw DATA_05C1B7-DATA_05B557                      ;
                dw DATA_05C2A7-DATA_05B557                      ;
                dw DATA_05C397-DATA_05B557                      ; Mario bonus room background commands
                dw DATA_05C3AF-DATA_05B557                      ;
                dw DATA_05C413-DATA_05B557                      ;
                dw DATA_05C47D-DATA_05B557                      ;
                dw DATA_05C4E1-DATA_05B557                      ;
                dw DATA_05C545-DATA_05B557                      ;
                dw DATA_05C5B7-DATA_05B557                      ;

DATA_05AD48:    db $FE,$00,$B9,$B8,$B6,$FE,$00,$BE              ;
                db $C3,$C6,$FE,$B4,$B1,$BC,$BD,$B0              ;
                db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C4              ;
                db $FE,$B2,$B3,$B2,$B3,$B2,$B3,$B6              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6              ;
                db $FF,$FE,$B9,$B8,$FE,$BE,$C3,$FE              ;
                db $BE,$C3,$FF,$FE,$00,$00,$BA,$B0              ;
                db $B5,$FE,$00,$BF,$C1,$C0,$C4                  ;

                db $FE,$00,$B9,$B3,$B2,$B3,$B6,$FE              ;
                db $00,$BE,$C3,$C2,$C3,$C6,$FE,$00              ;
                db $BA,$BC,$BD,$BC,$BD,$B0,$B5,$FE              ;
                db $BF,$C1,$C0,$C1,$C0,$C1,$C0,$C4              ;
                db $FE,$B9,$B3,$B2,$B3,$B2,$B3,$B2              ;
                db $B3,$FE,$BE,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$FE,$BE,$C3,$C2,$C3,$C2              ;
                db $C3,$C2,$C3,$FF,$FE,$00,$00,$00              ;
                db $00,$C7,$FE,$00,$00,$00,$BF,$C4              ;
                db $FE,$00,$00,$00,$B9,$B3,$B6,$00              ;
                db $B9,$B8,$BB,$B8,$B6,$FE,$00,$00              ;
                db $00,$BE,$C3,$C6,$00,$BE,$C3,$C2              ;
                db $C3,$C6,$FE,$00,$00,$B4,$B1,$BC              ;
                db $BD,$B0,$B1,$BC,$BD,$BC,$BD,$B0              ;
                db $B5,$FE,$00,$00,$C0,$C1,$C0,$C1              ;
                db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C4              ;
                db $FE,$B9,$B8,$B2,$B3,$B2,$B3,$B2              ;
                db $B3,$B2,$B3,$B2,$B3,$B2,$B3,$FE              ;
                db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$FE,$BE              ;
                db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2              ;
                db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$00              ;
                db $00,$00,$00,$C7,$FE,$00,$00,$00              ;
                db $BF,$C4,$FE,$00,$B9,$B8,$BB,$B3              ;
                db $BB,$B8,$B6,$FE,$00,$BE,$C3,$C2              ;
                db $C3,$C2,$C3,$C6,$FE,$B4,$B1,$BC              ;
                db $BD,$BC,$BD,$BC,$BD,$B0,$B5,$FE              ;
                db $C0,$C1,$C0,$C1,$C0,$C1,$C0,$C1              ;
                db $C0,$C4,$FE,$B2,$B3,$B2,$B3,$B2              ;
                db $B3,$B2,$B3,$B2,$B3,$FE,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2              ;
                db $C3,$C2,$C3,$FF,$FE,$B6,$FE,$C6              ;
                db $FE,$C6,$FF,$FE,$B4,$B1,$FE,$C0              ;
                db $C1,$FE,$B2,$B3,$FE,$C2,$C3,$FE              ;
                db $C2,$C3,$FF,$FE,$00,$00,$00,$00              ;
                db $00,$B9,$B8,$B6,$FE,$00,$00,$00              ;
                db $00,$00,$BE,$C3,$C6,$FE,$00,$00              ;
                db $00,$00,$B4,$B1,$BC,$BD,$B0,$B5              ;
                db $FE,$00,$00,$00,$00,$C0,$C1,$C0              ;
                db $C1,$C0,$C4,$FE,$B9,$B8,$BB,$B8              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$FE,$BE              ;
                db $C3,$C2,$C3,$C2,$C3,$C2,$C3,$C2              ;
                db $C3,$FE,$BE,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$FF,$FE,$00,$00              ;
                db $00,$00,$C7,$00,$C7,$FE,$00,$00              ;
                db $00,$BF,$C4,$BF,$C4,$FE,$00,$B9              ;
                db $B8,$BB,$B3,$BB,$B3,$B6,$FE,$00              ;
                db $BE,$C3,$C2,$C3,$C2,$C3,$C6,$FE              ;
                db $B4,$B1,$BC,$BD,$BC,$BD,$BC,$BD              ;
                db $B0,$B5,$FE,$C0,$C1,$C0,$C1,$C0              ;
                db $C1,$C0,$C1,$C0,$C4,$FE,$B2,$B3              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C2              ;
                db $C3,$C2,$C3,$FE,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$FF,$FE              ;
                db $00,$00,$BA,$B0,$B5,$00,$00,$00              ;
                db $C7,$FE,$00,$BF,$C1,$C0,$C4,$00              ;
                db $00,$BF,$C4,$FE,$00,$B9,$B3,$B2              ;
                db $B3,$B6,$00,$B9,$B3,$BB,$B8,$B6              ;
                db $FE,$00,$BE,$C3,$C2,$C3,$C6,$00              ;
                db $BE,$C3,$C2,$C3,$C6,$FE,$B4,$B1              ;
                db $BC,$BD,$BC,$BD,$B0,$B1,$BC,$BD              ;
                db $BC,$BD,$B0,$B1,$B0,$B5,$FE,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $B6,$FE,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C6,$FF,$FE,$00              ;
                db $00,$00,$00,$C7,$FE,$00,$00,$00              ;
                db $BF,$C4,$FE,$00,$B9,$B8,$BB,$B3              ;
                db $B6,$FE,$00,$BE,$C3,$C2,$C3,$C6              ;
                db $FE,$B4,$B1,$BC,$BD,$BC,$BD,$B0              ;
                db $B5,$FE,$C0,$C1,$C0,$C1,$C0,$C1              ;
                db $C0,$C4,$FE,$B2,$B3,$B2,$B3,$B2              ;
                db $B3,$B2,$B3,$FE,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$FE,$C2,$C3,$C2              ;
                db $C3,$C2,$C3,$C2,$C3,$FF,$FE,$B4              ;
                db $B1,$B0,$B5,$FE,$C0,$C1,$C0,$C8              ;
                db $FE,$B2,$B3,$B2,$B3,$B6,$FE,$C2              ;
                db $C3,$C2,$C3,$C6,$FE,$C2,$C3,$C2              ;
                db $C3,$C6,$FF,$FE,$00,$00,$00,$00              ;
                db $00,$B4,$B5,$00,$C7,$B4,$B5,$FE              ;
                db $00,$00,$00,$00,$00,$C0,$C8,$BF              ;
                db $C8,$C0,$C8,$FE,$00,$00,$00,$B9              ;
                db $B8,$B2,$B3,$BB,$B3,$B2,$B3,$B6              ;
                db $FE,$00,$00,$00,$BE,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C6,$FE,$00,$BA              ;
                db $B0,$B1,$BC,$BD,$BC,$BD,$BC,$BD              ;
                db $BC,$BD,$B0,$B5,$FE,$BF,$C1,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0              ;
                db $C1,$C0,$C4,$FE,$B9,$B3,$B2,$B3              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $B2,$B3,$BB,$B8,$B6,$FE,$BE,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C6,$FE              ;
                db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C6,$FF,$FE,$00,$00,$B4,$B1,$B0              ;
                db $B5,$FE,$00,$00,$C0,$C1,$C0,$C4              ;
                db $FE,$BB,$B8,$B2,$B3,$B2,$B3,$B6              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6              ;
                db $FE,$C2,$C3,$C2,$C3,$C2,$C3,$C6              ;
                db $FF,$FE,$00,$00,$00,$00,$00,$00              ;
                db $00,$C7,$FE,$00,$00,$00,$00,$00              ;
                db $00,$BF,$C4,$FE,$00,$00,$B9,$B8              ;
                db $B6,$00,$B9,$B3,$BB,$B8,$B6,$FE              ;
                db $00,$00,$BE,$C3,$C6,$00,$BE,$C3              ;
                db $C2,$C3,$C6,$FE,$00,$00,$BA,$BC              ;
                db $BD,$B0,$B1,$BC,$BD,$BC,$BD,$B0              ;
                db $B5,$FE,$00,$BF,$C1,$C0,$C1,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE              ;
                db $00,$B9,$B3,$B2,$B3,$B2,$B3,$B2              ;
                db $B3,$B2,$B3,$B2,$B3,$B6,$FE,$00              ;
                db $BE,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C6,$FE,$B4,$B1              ;
                db $BC,$BD,$BC,$BD,$BC,$BD,$BC,$BD              ;
                db $BC,$BD,$BC,$BD,$B0,$B5,$FE,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C1,$C0              ;
                db $C1,$C0,$C1,$C0,$C1,$C0,$C4,$FE              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $B2,$B3,$B2,$B3,$B2,$B3,$B2,$B3              ;
                db $B6,$FE,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C6,$FE,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C2,$C3,$C2,$C3              ;
                db $C2,$C3,$C2,$C3,$C6,$FF                      ;

DATA_05B1A5:    db $03,$04,$05,$FE,$12,$13,$16,$06              ;
                db $07,$FE,$12,$13,$16,$16,$16,$17              ;
                db $18,$FE,$12,$13,$16,$16,$16,$16              ;
                db $08,$09,$18,$FE,$12,$13,$16,$16              ;
                db $16,$16,$16,$16,$19,$1A,$18,$FE              ;
                db $12,$13,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$0A,$1C,$18,$FE,$12,$13              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $16,$08,$1B,$1C,$18,$FE,$12,$13              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$16,$19,$0C,$0B,$18,$FE              ;
                db $12,$13,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$16,$16,$16,$16,$16,$0A              ;
                db $1C,$0B,$18,$FE,$12,$13,$16,$16              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$16,$16,$08,$1B,$1C,$0B              ;
                db $18,$FE,$12,$13,$16,$16,$16,$16              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$16,$16,$19,$1C,$1C,$0B              ;
                db $18,$FF,$FE,$13,$24,$FE,$FE,$13              ;
                db $23,$16,$16,$16,$16,$32,$FF,$FE              ;
                db $13,$27,$FE,$13,$2C,$2D,$26,$FE              ;
                db $13,$20,$2E,$2F,$FE,$13,$16,$16              ;
                db $16,$16,$16,$24,$FE,$13,$16,$16              ;
                db $16,$16,$16,$16,$16,$16,$0A,$32              ;
                db $FF,$FE,$13,$23,$FE,$13,$20,$FF              ;
                db $FE,$13,$24,$FE,$FE,$13,$27,$16              ;
                db $16,$26,$FE,$FF,$FE,$FE,$13,$24              ;
                db $FE,$13,$16,$16,$16,$2B,$FE,$FE              ;
                db $13,$16,$16,$16,$25,$16,$16,$16              ;
                db $26,$FE,$13,$16,$23,$16,$24,$16              ;
                db $16,$16,$24,$FE,$13,$16,$20,$16              ;
                db $16,$16,$16,$16,$27,$FF,$FE,$13              ;
                db $24,$FE,$13,$16,$16,$25,$FE,$13              ;
                db $26,$FE,$13,$16,$16,$16,$24,$16              ;
                db $27,$FE,$13,$16,$16,$16,$16,$16              ;
                db $2C,$2D,$16,$0A,$32,$FF,$FE,$FE              ;
                db $13,$16,$16,$25,$FE,$13,$16,$16              ;
                db $27,$FE,$13,$16,$16,$16,$16,$2C              ;
                db $2D,$FE,$13,$24,$23,$16,$16,$16              ;
                db $2E,$2F,$16,$0A,$32,$FE,$13,$16              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $08,$1B,$33,$FE,$13,$16,$16,$16              ;
                db $16,$28,$20,$22,$FE,$13,$16,$16              ;
                db $16,$16,$16,$29,$2A,$16,$16,$16              ;
                db $16,$26,$21,$0A,$30,$FE,$13,$16              ;
                db $16,$16,$16,$16,$16,$16,$16,$16              ;
                db $16,$16,$16,$16,$20,$FF                      ;

DATA_05B323:    db $1A,$1B,$FE,$01,$02,$FE,$01,$02              ;
                db $FE,$01,$02,$FE,$01,$02,$FE,$01              ;
                db $02,$FE,$01,$02,$FE,$01,$26,$FE              ;
                db $2C,$2D,$FE,$30,$31,$32,$FF,$04              ;
                db $05,$06,$07,$FE,$0D,$0E,$0F,$10              ;
                db $FE,$16,$17,$18,$19,$FE,$1E,$1F              ;
                db $20,$21,$FE,$1E,$17,$18,$21,$FE              ;
                db $27,$1F,$28,$29,$FF,$FE,$11,$14              ;
                db $FE,$1C,$1D,$FF,$FE,$22,$23,$FE              ;
                db $24,$25,$FE,$2A,$2B,$FE,$2E,$2F              ;
                db $FE,$33,$34,$FF,$FE,$41,$42,$43              ;
                db $44,$FE,$45,$46,$47,$48,$FE,$49              ;
                db $4A,$4B,$4C,$FE,$4D,$4E,$4F,$50              ;
                db $FE,$51,$52,$53,$54,$FF,$FE,$0C              ;
                db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C              ;
                db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$FE              ;
                db $12,$13,$12,$13,$12,$13,$12,$13              ;
                db $12,$13,$12,$13,$12,$13,$12,$13              ;
                db $FE,$36,$37,$38,$36,$39,$3A,$3B              ;
                db $3B,$36,$3A,$3B,$3B,$3B,$36,$3A              ;
                db $38,$FE,$3C,$3D,$3E,$3C,$3F,$3D              ;
                db $3E,$3E,$3C,$3D,$3E,$3E,$3E,$3C              ;
                db $3D,$3E,$FF,$22,$23,$FE,$24,$25              ;
                db $FE,$2A,$2B,$FE,$33,$34,$FF                  ;

DATA_05B3E2:    db $08,$FE,$0C,$FF,$14,$15,$16,$17              ;
                db $FE,$1D,$1E,$1F,$20,$FE,$1D,$1E              ;
                db $1F,$20,$FE,$1D,$2A,$2B,$20,$FF              ;
                db $18,$19,$1A,$1B,$FE,$21,$22,$23              ;
                db $24,$FE,$21,$22,$23,$24,$FE,$21              ;
                db $22,$23,$24,$FF,$00,$00,$00,$00              ;
                db $01,$02,$FE,$00,$00,$01,$03,$05              ;
                db $06,$04,$02,$FE,$01,$03,$05,$09              ;
                db $09,$09,$09,$06,$04,$02,$FE,$05              ;
                db $09,$09,$09,$09,$09,$09,$09,$09              ;
                db $06,$FF,$01,$03,$04,$03,$04,$02              ;
                db $FE,$07,$08,$09,$09,$08,$0A,$FE              ;
                db $0B,$0C,$09,$09,$0C,$0D,$0E,$FE              ;
                db $11,$09,$09,$09,$09,$12,$13,$FE              ;
                db $11,$18,$19,$1A,$1B,$12,$13,$FE              ;
                db $11,$21,$22,$23,$24,$12,$13,$FE              ;
                db $11,$21,$22,$23,$24,$12,$13,$FE              ;
                db $11,$21,$22,$23,$24,$12,$13,$FF              ;
                db $02,$10,$10,$10,$10,$10,$10,$10              ;
                db $10,$10,$10,$10,$10,$10,$10,$01              ;
                db $FE,$35,$04,$03,$04,$03,$04,$03              ;
                db $04,$03,$04,$03,$04,$03,$04,$03              ;
                db $36,$FF                                      ;

DATA_05B494:    db $00,$00,$00,$00,$00,$00,$00,$07              ;
                db $01,$02,$03,$04,$01,$02,$03,$04              ;
                db $00,$00,$00,$00,$00,$00,$10,$11              ;
                db $0A,$0B,$0C,$0D,$0A,$0B,$0C,$0D              ;
                db $00,$00,$17,$18,$00,$00,$19,$15              ;
                db $16,$12,$14,$15,$16,$12,$14,$15              ;
                db $23,$24,$25,$22,$23,$24,$25,$1F              ;
                db $20,$21,$1E,$1F,$20,$21,$1E,$1F              ;
                db $FF,$08,$09,$03,$04,$05,$06,$00              ;
                db $00,$00,$00,$00,$07,$08,$09,$03              ;
                db $04,$0A,$0B,$0C,$0D,$0E,$0F,$00              ;
                db $00,$00,$00,$10,$11,$0A,$0B,$0C              ;
                db $0D,$16,$12,$14,$15,$16,$12,$17              ;
                db $18,$00,$00,$19,$15,$16,$12,$14              ;
                db $15,$20,$21,$1E,$1F,$20,$21,$1E              ;
                db $22,$23,$24,$25,$1F,$20,$21,$1E              ;
                db $26,$FF,$01,$02,$03,$04,$08,$09              ;
                db $03,$04,$05,$06,$00,$07,$08,$09              ;
                db $03,$29,$0A,$0B,$0C,$0D,$0A,$0B              ;
                db $0C,$0D,$0E,$0F,$10,$11,$0A,$0B              ;
                db $0C,$0D,$0A,$12,$13,$0D,$0A,$12              ;
                db $14,$15,$16,$12,$14,$15,$16,$12              ;
                db $14,$15,$1A,$1B,$1C,$1D,$1A,$1B              ;
                db $1E,$1F,$20,$21,$1E,$1F,$20,$21              ;
                db $1E,$1F,$FF                                  ;

DATA_05B557:    dw $E091,$E070,$E048,$E020                      ;
                dw $6900,$8163,$8970,$9180                      ;
                dw $9510,$9920,$9D30,$A193                      ;
                dw $B1A0,$B572,$E000,$81B0                      ;
                dw $85D0,$8962,$9580,$A1C0                      ;
                dw $A593,$B5A0,$B961,$6830                      ;
                dw $7010,$9830,$E3F0                            ;

DATA_05B58D:    dw $E091,$E070,$E048,$E020                      ;
                dw $6900,$8163,$8970,$9180                      ;
                dw $9510,$9920,$9D30,$A193                      ;
                dw $B1A0,$B572,$E000,$81B0                      ;
                dw $85D0,$8962,$9580,$A1C0                      ;
                dw $A593,$B5A0,$B961,$6830                      ;
                dw $7010,$9830,$E000,$6910                      ;
                dw $6D21,$7530,$79B0,$7DD0                      ;
                dw $81B0,$85D0,$8973,$99C0                      ;
                dw $9D90,$A1C0,$A596,$5C30                      ;
                dw $E000,$6160,$6580,$6910                      ;
                dw $6D22,$7930,$8190,$85A0                      ;
                dw $8974,$9D60,$A197,$4010                      ;
                dw $E000,$8160,$8580,$9940                      ;
                dw $9D50,$A190,$A5A0,$A980                      ;
                dw $B5B0,$B9F0,$BD70,$6010                      ;
                dw $AC10,$E000,$8207,$A177                      ;
                dw $E000,$8207,$A177,$E3F0                      ;

DATA_05B61D:    dw $E091,$E04F,$E020,$8000                      ;
                dw $E000,$8001,$E000,$8002                      ;
                dw $E3F0                                        ;

DATA_06B62F:    dw $E04B,$E011,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$E000,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$E000                      ;
                dw $0030,$1831,$2020,$2432                      ;
                dw $2C1B,$3023,$3833,$4034                      ;
                dw $4835,$5436,$5837,$5C38                      ;
                dw $6439,$683A,$6C3B,$703C                      ;
                dw $743D,$783E,$943F,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$E3F0                      ;

DATA_05B70F:    dw $E091,$E010,$E04C,$E080                      ;
                dw $A010,$A420,$B010,$B420                      ;
                dw $BC10,$A850,$E000,$A020                      ;
                dw $A810,$AC20,$B810,$BC20                      ;
                dw $B050,$4870,$E000,$A020                      ;
                dw $A810,$AC20,$B410,$B820                      ;
                dw $7C80,$E000,$AC10,$B020                      ;
                dw $B810,$BC20,$E000,$A410                      ;
                dw $A820,$B010,$B420,$BC50                      ;
                dw $9090,$E000,$A810,$AC20                      ;
                dw $B410,$B820,$E000,$A010                      ;
                dw $A420,$B010,$B420,$BC10                      ;
                dw $A860,$E000,$A020,$AC10                      ;
                dw $B020,$B810,$BC20,$A460                      ;
                dw $E3F0                                        ;

DATA_05B781:    dw $E091,$E042,$E010,$B050                      ;
                dw $B080,$E000,$6C70,$6C90                      ;
                dw $A0F3,$E000,$7460,$74B0                      ;
                dw $AC40,$ACA0,$E000,$8060                      ;
                dw $80B0,$A4F9,$E000,$E000                      ;
                dw $9060,$4060,$40C0,$B4F2                      ;
                dw $E000,$3870,$38E0,$A4F4                      ;
                dw $E3F0                                        ;

DATA_05B7BB:    dw $E011,$E04B,$E031,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E000,$0010,$0C11,$1012                      ;
                dw $1C13,$2414,$2815,$3016                      ;
                dw $4C16,$5417,$5C18,$6019                      ;
                dw $641A,$681B,$6C1C,$7816                      ;
                dw $801D,$901E,$8107,$8510                      ;
                dw $9911,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$E000,$0030                      ;
                dw $1831,$2020,$2432,$2C1B                      ;
                dw $3023,$3833,$4034,$4835                      ;
                dw $5436,$5837,$5C38,$6439                      ;
                dw $683A,$6C3B,$703C,$743D                      ;
                dw $783E,$943F,$8107,$8911                      ;
                dw $9910,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$8107                      ;
                dw $8510,$9911,$E000,$181F                      ;
                dw $2020,$2421,$2C22,$3023                      ;
                dw $3820,$4024,$5025,$5826                      ;
                dw $5C27,$6428,$6C29,$742A                      ;
                dw $782B,$882C,$902D,$982F                      ;
                dw $8107,$8510,$9910,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E3F0                                        ;

DATA_05B965:    dw $E011,$E047,$E031,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E000,$0010,$0C11,$1012                      ;
                dw $1C13,$2414,$2815,$3016                      ;
                dw $4C16,$5417,$5C18,$6019                      ;
                dw $641A,$681B,$6C1C,$7816                      ;
                dw $801D,$901E,$8107,$8510                      ;
                dw $9911,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$E000,$0030                      ;
                dw $1831,$2020,$2432,$2C1B                      ;
                dw $3023,$3833,$4034,$4835                      ;
                dw $5436,$5837,$5C38,$6439                      ;
                dw $683A,$6C3B,$703C,$743D                      ;
                dw $783E,$943F,$8107,$8911                      ;
                dw $9910,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$8107                      ;
                dw $8510,$9911,$E000,$181F                      ;
                dw $2020,$2421,$2C22,$3023                      ;
                dw $3820,$4024,$5025,$5826                      ;
                dw $5C27,$6428,$6C29,$742A                      ;
                dw $782B,$882C,$902D,$982F                      ;
                dw $8107,$8510,$9910,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E3F0                                        ;

DATA_05BB0F:    dw $E091,$E042,$E010,$A850                      ;
                dw $A880,$E000,$8C60,$8CB0                      ;
                dw $E000,$A850,$A880,$E000                      ;
                dw $7070,$7090,$A850,$A8B0                      ;
                dw $9C70,$E000,$E000,$A840                      ;
                dw $A8A0,$E000,$2470,$24E0                      ;
                dw $E3F0                                        ;

DATA_05BB41:    dw $E091,$E04E,$E010,$E0A0                      ;
                dw $A803,$BC00,$E000,$A802                      ;
                dw $E000,$A400,$AC01,$E000                      ;
                dw $A803,$E000,$A401,$AC01                      ;
                dw $BC08,$E000,$E3F0                            ;

DATA_05BB67:    dw $E091,$E010,$E0B0,$E0C0                      ;
                dw $9010,$E000,$8800,$B010                      ;
                dw $A425,$E000,$6810,$B420                      ;
                dw $BC2F,$E000,$8810,$B800                      ;
                dw $E000,$A800,$9810,$A420                      ;
                dw $E000,$6800,$A420,$B420                      ;
                dw $BC2F,$E000,$6810,$BC20                      ;
                dw $E000,$E3F0                                  ;

DATA_05BBA3:    dw $E091,$E010,$E045,$A410                      ;
                dw $6800,$5C20,$E000,$6C00                      ;
                dw $E000,$4030,$5C40,$E000                      ;
                dw $5020,$9060,$E000,$A050                      ;
                dw $8420,$7870,$E000,$4C80                      ;
                dw $E000,$4090,$E3F0                            ;

DATA_05BBD1:    dw $E091,$E042,$E010,$2470                      ;
                dw $24E0,$E3F0                                  ;

DATA_05BBDD:    dw $E091,$E045,$E010,$8820                      ;
                dw $B810,$7C00,$E000,$5890                      ;
                dw $48A0,$E000,$98B0,$E000                      ;
                dw $A410,$6800,$5CC0,$E000                      ;
                dw $E000,$A010,$6400,$90D0                      ;
                dw $E000,$8820,$B810,$7C00                      ;
                dw $E3F0                                        ;

DATA_05BC0F:    dw $E010,$E041,$2800,$E000                      ;
                dw $E000,$2800,$E3F0                            ;

DATA_05BC1D:    dw $E091,$E042,$E013,$E04D                      ;
                dw $A880,$AC24,$ACB2,$D043                      ;
                dw $9090,$9436,$D890,$DC32                      ;
                dw $BC92,$E000,$A064,$ACA0                      ;
                dw $D003,$94A1,$B815,$E000                      ;
                dw $C093,$C472,$B081,$B434                      ;
                dw $9082,$9076,$E000,$C084                      ;
                dw $C032,$8890,$ACA3,$D043                      ;
                dw $8C36,$E000,$80A0,$A405                      ;
                dw $ACB2,$D043,$98A3,$BC45                      ;
                dw $7490,$7838,$E000,$C480                      ;
                dw $C822,$B0A0,$D403,$9482                      ;
                dw $9476,$E3F0                                  ;

DATA_05BC81:    dw $E04B,$E011,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$E000,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$E000                      ;
                dw $0030,$1831,$2020,$2432                      ;
                dw $2C1B,$3023,$3833,$4034                      ;
                dw $4835,$5436,$5837,$5C38                      ;
                dw $6439,$683A,$6C3B,$703C                      ;
                dw $743D,$783E,$943F,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$E3F0                      ;

DATA_05BD61:    dw $E011,$E04B,$E031,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E000,$0010,$0C11,$1012                      ;
                dw $1C13,$2414,$2815,$3016                      ;
                dw $4C16,$5417,$5C18,$6019                      ;
                dw $641A,$681B,$6C1C,$7816                      ;
                dw $801D,$901E,$8107,$8510                      ;
                dw $9911,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$E000,$0030                      ;
                dw $1831,$2020,$2432,$2C1B                      ;
                dw $3023,$3833,$4034,$4835                      ;
                dw $5436,$5837,$5C38,$6439                      ;
                dw $683A,$6C3B,$703C,$743D                      ;
                dw $783E,$943F,$8107,$8911                      ;
                dw $9910,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$8107                      ;
                dw $8510,$9911,$E000,$181F                      ;
                dw $2020,$2421,$2C22,$3023                      ;
                dw $3820,$4024,$5025,$5826                      ;
                dw $5C27,$6428,$6C29,$742A                      ;
                dw $782B,$882C,$902D,$982F                      ;
                dw $8107,$8510,$9910,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E3F0                                        ;

DATA_05BF0B:    dw $E091,$E013,$E042,$E04D                      ;
                dw $C080,$C422,$B0A0,$D403                      ;
                dw $9482,$9476,$E000,$80A0                      ;
                dw $A405,$E3F0                                  ;

DATA_05BF27:    dw $E091,$E042,$E010,$6C70                      ;
                dw $6C90,$E000,$8C60,$8CB0                      ;
                dw $E000,$7470,$7490,$AC50                      ;
                dw $AC80,$E000,$8070,$80E0                      ;
                dw $E000,$6070,$60E0,$E000                      ;
                dw $8840,$88D0,$A060,$A0B0                      ;
                dw $E000,$5470,$74A0,$E000                      ;
                dw $6070,$60E0,$E000,$8870                      ;
                dw $8890,$E000,$5070,$5090                      ;
                dw $E000,$E000,$2870,$28E0                      ;
                dw $E3F0                                        ;

DATA_05BF79:    dw $E091,$E045,$E010,$8820                      ;
                dw $B810,$7C00,$E000,$5890                      ;
                dw $48A0,$E000,$98B0,$E000                      ;
                dw $A410,$6800,$5CC0,$E000                      ;
                dw $E000,$A010,$6400,$90D0                      ;
                dw $E000,$8820,$B810,$7C00                      ;
                dw $E3F0                                        ;

DATA_05BFAB:    dw $E091,$E010,$E045,$8420                      ;
                dw $7470,$E000,$4880,$5C90                      ;
                dw $E000,$E000,$40C0,$E000                      ;
                dw $4090,$E000,$4830,$E000                      ;
                dw $04E0,$E3F0                                  ;

DATA_05BFCF:    dw $E091,$E045,$E010,$8820                      ;
                dw $B810,$7C00,$E000,$5890                      ;
                dw $48A0,$E000,$98B0,$E000                      ;
                dw $A410,$6800,$5CC0,$E000                      ;
                dw $E000,$A010,$6400,$90D0                      ;
                dw $E000,$8820,$B810,$7C00                      ;
                dw $E3F0                                        ;

DATA_05C001:    dw $E011,$E041,$2800,$E000                      ;
                dw $2C00,$E3F0                                  ;

DATA_05C00D:    dw $E011,$E047,$E031,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E000,$0010,$0C11,$1012                      ;
                dw $1C13,$2414,$2815,$3016                      ;
                dw $4C16,$5417,$5C18,$6019                      ;
                dw $641A,$681B,$6C1C,$7816                      ;
                dw $801D,$901E,$8107,$8510                      ;
                dw $9911,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$E000,$0030                      ;
                dw $1831,$2020,$2432,$2C1B                      ;
                dw $3023,$3833,$4034,$4835                      ;
                dw $5436,$5837,$5C38,$6439                      ;
                dw $683A,$6C3B,$703C,$743D                      ;
                dw $783E,$943F,$8107,$8911                      ;
                dw $9910,$E000,$181F,$2020                      ;
                dw $2421,$2C22,$3023,$3820                      ;
                dw $4024,$5025,$5826,$5C27                      ;
                dw $6428,$6C29,$742A,$782B                      ;
                dw $882C,$902D,$982F,$8107                      ;
                dw $8510,$9910,$0010,$0C11                      ;
                dw $1012,$1C13,$2414,$2815                      ;
                dw $3016,$4C16,$5417,$5C18                      ;
                dw $6019,$641A,$681B,$6C1C                      ;
                dw $7816,$801D,$901E,$8107                      ;
                dw $8510,$9911,$E000,$181F                      ;
                dw $2020,$2421,$2C22,$3023                      ;
                dw $3820,$4024,$5025,$5826                      ;
                dw $5C27,$6428,$6C29,$742A                      ;
                dw $782B,$882C,$902D,$982F                      ;
                dw $8107,$8510,$9910,$0010                      ;
                dw $0C11,$1012,$1C13,$2414                      ;
                dw $2815,$3016,$4C16,$5417                      ;
                dw $5C18,$6019,$641A,$681B                      ;
                dw $6C1C,$7816,$801D,$901E                      ;
                dw $8107,$8510,$9911,$E000                      ;
                dw $181F,$2020,$2421,$2C22                      ;
                dw $3023,$3820,$4024,$5025                      ;
                dw $5826,$5C27,$6428,$6C29                      ;
                dw $742A,$782B,$882C,$902D                      ;
                dw $982F,$8107,$8510,$9910                      ;
                dw $E3F0                                        ;

DATA_05C1B7:    dw $E012,$E060,$E050,$E043                      ;
                dw $4510,$6D10,$6100,$1530                      ;
                dw $5520,$2900,$A960,$C970                      ;
                dw $AD82,$CD92,$B9A0,$D9B0                      ;
                dw $2D40,$4D50,$2007,$0025                      ;
                dw $1C15,$E000,$4510,$6D10                      ;
                dw $1530,$5520,$2900,$2D40                      ;
                dw $4D50,$2007,$0025,$1C15                      ;
                dw $E000,$4510,$6D10,$6100                      ;
                dw $1530,$5520,$2900,$A960                      ;
                dw $C970,$AD82,$CD92,$B9A0                      ;
                dw $D9B0,$2D40,$4D50,$2007                      ;
                dw $0025,$1C15,$E000,$4510                      ;
                dw $6D10,$1530,$5520,$2900                      ;
                dw $2D40,$4D50,$2007,$0025                      ;
                dw $1C15,$E000,$4510,$6D10                      ;
                dw $6100,$1530,$5520,$2900                      ;
                dw $A960,$C970,$AD82,$CD92                      ;
                dw $B9A0,$D9B0,$2D40,$4D50                      ;
                dw $2007,$0025,$1C15,$E000                      ;
                dw $4510,$6D10,$1530,$5520                      ;
                dw $2900,$2D40,$4D50,$2007                      ;
                dw $0025,$1C15,$E000,$4510                      ;
                dw $6D10,$6100,$1530,$5520                      ;
                dw $2900,$A960,$C970,$AD82                      ;
                dw $CD92,$B9A0,$D9B0,$2D40                      ;
                dw $4D50,$2007,$0025,$1C15                      ;
                dw $E000,$4510,$6D10,$1530                      ;
                dw $5520,$2900,$2D40,$4D50                      ;
                dw $2007,$0025,$1C15,$E3F0                      ;

DATA_05C2A7:    dw $E012,$E060,$E050,$E043                      ;
                dw $4510,$6D10,$6100,$1530                      ;
                dw $5520,$2900,$A960,$C970                      ;
                dw $AD82,$CD92,$B9A0,$D9B0                      ;
                dw $2D40,$4D50,$2007,$0025                      ;
                dw $1C15,$E000,$4510,$6D10                      ;
                dw $1530,$5520,$2900,$2D40                      ;
                dw $4D50,$2007,$0025,$1C15                      ;
                dw $E000,$4510,$6D10,$6100                      ;
                dw $1530,$5520,$2900,$A960                      ;
                dw $C970,$AD82,$CD92,$B9A0                      ;
                dw $D9B0,$2D40,$4D50,$2007                      ;
                dw $0025,$1C15,$E000,$4510                      ;
                dw $6D10,$1530,$5520,$2900                      ;
                dw $2D40,$4D50,$2007,$0025                      ;
                dw $1C15,$E000,$4510,$6D10                      ;
                dw $6100,$1530,$5520,$2900                      ;
                dw $A960,$C970,$AD82,$CD92                      ;
                dw $B9A0,$D9B0,$2D40,$4D50                      ;
                dw $2007,$0025,$1C15,$E000                      ;
                dw $4510,$6D10,$1530,$5520                      ;
                dw $2900,$2D40,$4D50,$2007                      ;
                dw $0025,$1C15,$E000,$4510                      ;
                dw $6D10,$6100,$1530,$5520                      ;
                dw $2900,$A960,$C970,$AD82                      ;
                dw $CD92,$B9A0,$D9B0,$2D40                      ;
                dw $4D50,$2007,$0025,$1C15                      ;
                dw $E000,$4510,$6D10,$1530                      ;
                dw $5520,$2900,$2D40,$4D50                      ;
                dw $2007,$0025,$1C15,$E3F0                      ;

DATA_05C397:    dw $E041,$E012,$2800,$E000                      ;Mario bonus room background commands
                dw $2800,$E000,$2800,$E000                      ;TODO: same for luigi??
                dw $2800,$E000,$2800,$E3F0                      ;

DATA_05C3AF:    dw $E046,$E050,$0003,$1003                      ;
                dw $4019,$5019,$403F,$0826                      ;
                dw $1826,$E000,$0C03,$4C19                      ;
                dw $1C03,$5C19,$403F,$0426                      ;
                dw $1426,$E000,$0803,$4819                      ;
                dw $403A,$0026,$5449,$9C45                      ;
                dw $3060,$E000,$0C07,$8C13                      ;
                dw $1807,$9813,$803F,$0426                      ;
                dw $3050,$6060,$E000,$2850                      ;
                dw $0007,$8013,$1007,$9013                      ;
                dw $803F,$5480,$E000,$0007                      ;
                dw $8013,$1407,$9413,$803F                      ;
                dw $4480,$E3F0                                  ;

DATA_05C413:    dw $E046,$E050,$0007,$1007                      ;
                dw $6017,$7017,$603F,$0826                      ;
                dw $B890,$E000,$0005,$1005                      ;
                dw $6017,$7017,$603F,$0826                      ;
                dw $B4A0,$E000,$0005,$6017                      ;
                dw $6039,$7047,$4860,$A890                      ;
                dw $3850,$E000,$1005,$7017                      ;
                dw $683B,$6447,$5860,$E000                      ;
                dw $0005,$6017,$1005,$7017                      ;
                dw $603F,$0826,$5860,$B890                      ;
                dw $E000,$0005,$6017,$1005                      ;
                dw $7017,$603F,$0826,$5480                      ;
                dw $E000,$603F,$4480,$5080                      ;
                dw $E3F0                                        ;

DATA_05C47D:    dw $E046,$E050,$0003,$1003                      ;
                dw $4019,$5019,$403F,$0826                      ;
                dw $1826,$E000,$0C03,$4C19                      ;
                dw $1C03,$5C19,$403F,$0426                      ;
                dw $1426,$E000,$0803,$4819                      ;
                dw $403A,$0026,$5449,$9C45                      ;
                dw $3060,$E000,$0C07,$8C13                      ;
                dw $1807,$9813,$803F,$0426                      ;
                dw $3050,$6060,$E000,$2850                      ;
                dw $0007,$8013,$1007,$9013                      ;
                dw $803F,$5480,$E000,$0007                      ;
                dw $8013,$1407,$9413,$803F                      ;
                dw $4480,$E3F0                                  ;

DATA_05C4E1:    dw $E046,$E050,$0003,$1003                      ;
                dw $4019,$5019,$403F,$0826                      ;
                dw $1826,$E000,$0C03,$4C19                      ;
                dw $1C03,$5C19,$403F,$0426                      ;
                dw $1426,$E000,$0803,$4819                      ;
                dw $403A,$0026,$5449,$9C45                      ;
                dw $3060,$E000,$0C07,$8C13                      ;
                dw $1807,$9813,$803F,$0426                      ;
                dw $3050,$6060,$E000,$2850                      ;
                dw $0007,$8013,$1007,$9013                      ;
                dw $803F,$5480,$E000,$0007                      ;
                dw $8013,$1407,$9413,$803F                      ;
                dw $4480,$E3F0                                  ;

DATA_05C545:    dw $E050,$E046,$0005,$1405                      ;
                dw $6017,$7417,$603F,$0826                      ;
                dw $5C60,$E000,$0807,$1C07                      ;
                dw $6817,$7C17,$603F,$1026                      ;
                dw $E000,$1007,$7017,$603F                      ;
                dw $7C47,$0426,$E000,$0426                      ;
                dw $7435,$7047,$5860,$B890                      ;
                dw $E000,$0C07,$1C07,$6C17                      ;
                dw $7C17,$603F,$0426,$5080                      ;
                dw $B490,$E000,$603F,$7C47                      ;
                dw $0426,$4C80,$E000,$7435                      ;
                dw $7047,$2450,$5480,$E000                      ;
                dw $7017,$8017,$603F,$4090                      ;
                dw $5090,$4480,$5480,$A0B0                      ;
                dw $E3F0                                        ;

DATA_05C5B7:    dw $E012,$E050,$E044,$A0A0                      ;
                dw $2010,$2800,$4C30,$5830                      ;
                dw $E000,$A0A0,$4430,$3010                      ;
                dw $3800,$5C30,$E000,$A0A0                      ;
                dw $4830,$5430,$E000,$A0A0                      ;
                dw $2010,$2800,$5020,$5850                      ;
                dw $E000,$A0A0,$4820,$5050                      ;
                dw $5820,$E000,$A0A0,$4450                      ;
                dw $2C00,$94D0,$E000,$A0A0                      ;
                dw $2000,$4840,$5440,$3C00                      ;
                dw $E000,$A0A0,$2010,$4830                      ;
                dw $7470,$5C20,$E000,$A0A0                      ;
                dw $2410,$8CC0,$3010,$5820                      ;
                dw $E000,$A0A0,$4050,$5050                      ;
                dw $4880,$5820,$E000,$A0A0                      ;
                dw $2400,$4C20,$5820,$E3F0                      ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Empty, unused data
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF                                          ;

CODE_05C800:    LDA $4212               ; $05:C800: AD 12 42    ;
                LSR A                   ; $05:C803: 4A          ;
                BCS CODE_05C800         ; $05:C804: B0 FA       ;
                STZ $4016               ; $05:C806: 9C 16 40    ;
                LDA $701FF4             ; $05:C809: AF F4 1F 70 ;
                TAX                     ; $05:C80D: AA          ;
                LDA $4218,x             ; $05:C80E: BD 18 42    ;
                STA $0FF8               ; $05:C811: 8D F8 0F    ;
                TAY                     ; $05:C814: A8          ;
                EOR $0FFD               ; $05:C815: 4D FD 0F    ;
                AND $0FF8               ; $05:C818: 2D F8 0F    ;
                STA $0FFA               ; $05:C81B: 8D FA 0F    ;
                STY $0FFD               ; $05:C81E: 8C FD 0F    ;
                LDA $4219,x             ; $05:C821: BD 19 42    ;
                STA $0FF4               ; $05:C824: 8D F4 0F    ;
                TAY                     ; $05:C827: A8          ;
                EOR $0FFC               ; $05:C828: 4D FC 0F    ;
                AND $0FF4               ; $05:C82B: 2D F4 0F    ;
                STA $0FF6               ; $05:C82E: 8D F6 0F    ;
                STY $0FFC               ; $05:C831: 8C FC 0F    ;
                LDA $701FF6             ; $05:C834: AF F6 1F 70 ;
                TAX                     ; $05:C838: AA          ;
                LDA $4218,x             ; $05:C839: BD 18 42    ;
                STA $0FF9               ; $05:C83C: 8D F9 0F    ;
                TAY                     ; $05:C83F: A8          ;
                EOR $0FFE               ; $05:C840: 4D FE 0F    ;
                AND $0FF9               ; $05:C843: 2D F9 0F    ;
                STA $0FFB               ; $05:C846: 8D FB 0F    ;
                STY $0FFE               ; $05:C849: 8C FE 0F    ;
                LDA $4219,x             ; $05:C84C: BD 19 42    ;
                STA $0FF5               ; $05:C84F: 8D F5 0F    ;
                TAY                     ; $05:C852: A8          ;
                EOR $0FFF               ; $05:C853: 4D FF 0F    ;
                AND $0FF5               ; $05:C856: 2D F5 0F    ;
                STA $0FF7               ; $05:C859: 8D F7 0F    ;
                STY $0FFF               ; $05:C85C: 8C FF 0F    ;
                RTL                     ; $05:C85F: 6B          ;

CODE_05C860:    PHB                     ; $05:C860: 8B          ;
                PHK                     ; $05:C861: 4B          ;
                PLB                     ; $05:C862: AB          ;
                LDA $700006             ; $05:C863: AF 06 00 70 ;
                BNE CODE_05C88B         ; $05:C867: D0 22       ;
                LDA $0FF8               ; $05:C869: AD F8 0F    ;
                AND #$C0                ; $05:C86C: 29 C0       ;
                TSB $0FF4               ; $05:C86E: 0C F4 0F    ;
                LDA $0FFA               ; $05:C871: AD FA 0F    ;
                AND #$C0                ; $05:C874: 29 C0       ;
                TSB $0FF6               ; $05:C876: 0C F6 0F    ;
                LDA $0FF9               ; $05:C879: AD F9 0F    ;
                AND #$C0                ; $05:C87C: 29 C0       ;
                TSB $0FF5               ; $05:C87E: 0C F5 0F    ;
                LDA $0FFB               ; $05:C881: AD FB 0F    ;
                AND #$C0                ; $05:C884: 29 C0       ;
                TSB $0FF7               ; $05:C886: 0C F7 0F    ;
                BRA CODE_05C8F3         ; $05:C889: 80 68       ;

CODE_05C88B:    LDA $0FF4               ; $05:C88B: AD F4 0F    ;
                AND #$80                ; $05:C88E: 29 80       ;
                LSR A                   ; $05:C890: 4A          ;
                TSB $0FF4               ; $05:C891: 0C F4 0F    ;
                LDA $0FF8               ; $05:C894: AD F8 0F    ;
                AND #$C0                ; $05:C897: 29 C0       ;
                STA $00                 ; $05:C899: 85 00       ;
                LDA $0FF4               ; $05:C89B: AD F4 0F    ;
                AND #$7F                ; $05:C89E: 29 7F       ;
                ORA $00                 ; $05:C8A0: 05 00       ;
                STA $0FF4               ; $05:C8A2: 8D F4 0F    ;
                LDA $0FF6               ; $05:C8A5: AD F6 0F    ;
                AND #$80                ; $05:C8A8: 29 80       ;
                LSR A                   ; $05:C8AA: 4A          ;
                TSB $0FF6               ; $05:C8AB: 0C F6 0F    ;
                LDA $0FFA               ; $05:C8AE: AD FA 0F    ;
                AND #$C0                ; $05:C8B1: 29 C0       ;
                STA $00                 ; $05:C8B3: 85 00       ;
                LDA $0FF6               ; $05:C8B5: AD F6 0F    ;
                AND #$7F                ; $05:C8B8: 29 7F       ;
                ORA $00                 ; $05:C8BA: 05 00       ;
                STA $0FF6               ; $05:C8BC: 8D F6 0F    ;
                LDA $0FF5               ; $05:C8BF: AD F5 0F    ;
                AND #$80                ; $05:C8C2: 29 80       ;
                LSR A                   ; $05:C8C4: 4A          ;
                TSB $0FF5               ; $05:C8C5: 0C F5 0F    ;
                LDA $0FF9               ; $05:C8C8: AD F9 0F    ;
                AND #$C0                ; $05:C8CB: 29 C0       ;
                STA $00                 ; $05:C8CD: 85 00       ;
                LDA $0FF5               ; $05:C8CF: AD F5 0F    ;
                AND #$7F                ; $05:C8D2: 29 7F       ;
                ORA $00                 ; $05:C8D4: 05 00       ;
                STA $0FF5               ; $05:C8D6: 8D F5 0F    ;
                LDA $0FF7               ; $05:C8D9: AD F7 0F    ;
                AND #$80                ; $05:C8DC: 29 80       ;
                LSR A                   ; $05:C8DE: 4A          ;
                TSB $0FF7               ; $05:C8DF: 0C F7 0F    ;
                LDA $0FFB               ; $05:C8E2: AD FB 0F    ;
                AND #$C0                ; $05:C8E5: 29 C0       ;
                STA $00                 ; $05:C8E7: 85 00       ;
                LDA $0FF7               ; $05:C8E9: AD F7 0F    ;
                AND #$7F                ; $05:C8EC: 29 7F       ;
                ORA $00                 ; $05:C8EE: 05 00       ;
                STA $0FF7               ; $05:C8F0: 8D F7 0F    ;
CODE_05C8F3:    PLB                     ; $05:C8F3: AB          ;
                RTL                     ; $05:C8F4: 6B          ;

DATA_05C8F5:    db $03,$02,$06,$08,$01,$13                      ;

CODE_05C8FB:    PHB                     ; $05:C8FB: 8B          ;
                PHK                     ; $05:C8FC: 4B          ;
                PLB                     ; $05:C8FD: AB          ;
                PHX                     ; $05:C8FE: DA          ;
                LDA $0770               ; $05:C8FF: AD 70 07    ;
                BEQ CODE_05C94D         ; $05:C902: F0 49       ;
                LDA $0752               ; $05:C904: AD 52 07    ;
                CMP #$02                ; $05:C907: C9 02       ;
                BEQ CODE_05C91C         ; $05:C909: F0 11       ;
                LDY #$05                ; $05:C90B: A0 05       ;
                LDA $0710               ; $05:C90D: AD 10 07    ;
                CMP #$06                ; $05:C910: C9 06       ;
                BEQ CODE_05C918         ; $05:C912: F0 04       ;
                CMP #$07                ; $05:C914: C9 07       ;
                BNE CODE_05C91C         ; $05:C916: D0 04       ;
CODE_05C918:    LDY #$05                ; $05:C918: A0 05       ;
                BRA CODE_05C925         ; $05:C91A: 80 09       ;

CODE_05C91C:    LDY $BA                 ; $05:C91C: A4 BA       ;
                LDA $0743               ; $05:C91E: AD 43 07    ;
                BEQ CODE_05C925         ; $05:C921: F0 02       ;
                LDY #$04                ; $05:C923: A0 04       ;
CODE_05C925:    LDA $0F                 ; $05:C925: A5 0F       ;
                CMP #$04                ; $05:C927: C9 04       ;
                BEQ CODE_05C944         ; $05:C929: F0 19       ;
                CMP #$05                ; $05:C92B: C9 05       ;
                BEQ CODE_05C944         ; $05:C92D: F0 15       ;
                LDA $DB                 ; $05:C92F: A5 DB       ;
                CMP #$1B                ; $05:C931: C9 1B       ;
                BNE CODE_05C939         ; $05:C933: D0 04       ;
                LDA #$01                ; $05:C935: A9 01       ;
                BRA CODE_05C93C         ; $05:C937: 80 03       ;

CODE_05C939:    LDA DATA_05C8F5,y       ; $05:C939: B9 F5 C8    ;
CODE_05C93C:    LDX $0EDF               ; $05:C93C: AE DF 0E    ;
                BNE CODE_05C944         ; $05:C93F: D0 03       ;
                STA $1602               ; $05:C941: 8D 02 16    ;
CODE_05C944:    LDX $DB                 ; $05:C944: A6 DB       ;
                CPX #$21                ; $05:C946: E0 21       ;
                BNE CODE_05C94D         ; $05:C948: D0 03       ;
                STA $0EDF               ; $05:C94A: 8D DF 0E    ;
CODE_05C94D:    PLX                     ; $05:C94D: FA          ;
                PLB                     ; $05:C94E: AB          ;
                RTL                     ; $05:C94F: 6B          ;

                LDA $7FFB06             ; $05:C950: AF 06 FB 7F ;
                BPL CODE_05C958         ; $05:C954: 10 02       ;
                LDA #$00                ; $05:C956: A9 00       ;
CODE_05C958:    STA $077A               ; $05:C958: 8D 7A 07    ;
CODE_05C95B:    LDA $7FFB00             ; $05:C95B: AF 00 FB 7F ;
                STA $075F               ; $05:C95F: 8D 5F 07    ;
                STA $0766               ; $05:C962: 8D 66 07    ;
                LDA $7FFB01             ; $05:C965: AF 01 FB 7F ;
                STA $075C               ; $05:C969: 8D 5C 07    ;
                STA $0763               ; $05:C96C: 8D 63 07    ;
                LDA $7FFB02             ; $05:C96F: AF 02 FB 7F ;
                BPL CODE_05C976         ; $05:C973: 10 01       ;
                INC A                   ; $05:C975: 1A          ;
CODE_05C976:    STA $0760               ; $05:C976: 8D 60 07    ;
                STA $0767               ; $05:C979: 8D 67 07    ;
                LDA $7FFB03             ; $05:C97C: AF 03 FB 7F ;
                STA $075A               ; $05:C980: 8D 5A 07    ;
                LDA $7FFB04             ; $05:C983: AF 04 FB 7F ;
                STA $0761               ; $05:C987: 8D 61 07    ;
                LDA $7FFB05             ; $05:C98A: AF 05 FB 7F ;
                STA $07FC               ; $05:C98E: 8D FC 07    ;
                STA $0781               ; $05:C991: 8D 81 07    ;
CODE_05C994:    PHX                     ; $05:C994: DA          ;
                LDX #$00                ; $05:C995: A2 00       ;
CODE_05C997:    LDA $701FE0,x           ; $05:C997: BF E0 1F 70 ;
                STA $07C8,x             ; $05:C99B: 9D C8 07    ;
                INX                     ; $05:C99E: E8          ;
                CPX #$06                ; $05:C99F: E0 06       ;
                BNE CODE_05C997         ; $05:C9A1: D0 F4       ;
                PLX                     ; $05:C9A3: FA          ;
                RTL                     ; $05:C9A4: 6B          ;

                LDA $700009             ; $05:C9A5: AF 09 00 70 ;
                STA $0760               ; $05:C9A9: 8D 60 07    ;
                STA $0767               ; $05:C9AC: 8D 67 07    ;
                LDA $0E24               ; $05:C9AF: AD 24 0E    ;
                STA $075C               ; $05:C9B2: 8D 5C 07    ;
                STA $0763               ; $05:C9B5: 8D 63 07    ;
                LDA #$02                ; $05:C9B8: A9 02       ;
                STA $075A               ; $05:C9BA: 8D 5A 07    ;
                STA $0761               ; $05:C9BD: 8D 61 07    ;
                STZ $075E               ; $05:C9C0: 9C 5E 07    ;
                STZ $0765               ; $05:C9C3: 9C 65 07    ;
                PHX                     ; $05:C9C6: DA          ;
                LDX #$00                ; $05:C9C7: A2 00       ;
CODE_05C9C9:    STZ $07CE,x             ; $05:C9C9: 9E CE 07    ;
                INX                     ; $05:C9CC: E8          ;
                CPX #$0C                ; $05:C9CD: E0 0C       ;
                BNE CODE_05C9C9         ; $05:C9CF: D0 F8       ;
                PLX                     ; $05:C9D1: FA          ;
                RTL                     ; $05:C9D2: 6B          ;

CODE_05C9D3:    PHX                     ; $05:C9D3: DA          ;
                PHY                     ; $05:C9D4: 5A          ;
                LDA $0369               ; $05:C9D5: AD 69 03    ;
                BEQ CODE_05CA13         ; $05:C9D8: F0 39       ;
                LDY $0B46,x             ; $05:C9DA: BC 46 0B    ;
                LDX #$00                ; $05:C9DD: A2 00       ;
CODE_05C9DF:    LDA $0900,y             ; $05:C9DF: B9 00 09    ;
                STA $0800,x             ; $05:C9E2: 9D 00 08    ;
                TYA                     ; $05:C9E5: 98          ;
                AND #$03                ; $05:C9E6: 29 03       ;
                CMP #$01                ; $05:C9E8: C9 01       ;
                BNE CODE_05C9FD         ; $05:C9EA: D0 11       ;
                LDA $0800,x             ; $05:C9EC: BD 00 08    ;
                CMP #$F0                ; $05:C9EF: C9 F0       ;
                BCC CODE_05C9FD         ; $05:C9F1: 90 0A       ;
                LDA #$F0                ; $05:C9F3: A9 F0       ;
                STA $0800,x             ; $05:C9F5: 9D 00 08    ;
                LDA #$00                ; $05:C9F8: A9 00       ;
                STA $0D00,y             ; $05:C9FA: 99 00 0D    ;
CODE_05C9FD:    LDA $0D00,y             ; $05:C9FD: B9 00 0D    ;
                STA $0C00,x             ; $05:CA00: 9D 00 0C    ;
                LDA #$00                ; $05:CA03: A9 00       ;
                STA $0D00,y             ; $05:CA05: 99 00 0D    ;
                LDA #$F0                ; $05:CA08: A9 F0       ;
                STA $0900,y             ; $05:CA0A: 99 00 09    ;
                INY                     ; $05:CA0D: C8          ;
                INX                     ; $05:CA0E: E8          ;
                CPX #$20                ; $05:CA0F: E0 20       ;
                BNE CODE_05C9DF         ; $05:CA11: D0 CC       ;
CODE_05CA13:    LDX #$00                ; $05:CA13: A2 00       ;
                STZ $E7                 ; $05:CA15: 64 E7       ;
CODE_05CA17:    LDA $0300,x             ; $05:CA17: BD 00 03    ;
                BEQ CODE_05CA26         ; $05:CA1A: F0 0A       ;
                JSR CODE_05CA2E         ; $05:CA1C: 20 2E CA    ;
                LDA $E7                 ; $05:CA1F: A5 E7       ;
                CLC                     ; $05:CA21: 18          ;
                ADC #$20                ; $05:CA22: 69 20       ;
                STA $E7                 ; $05:CA24: 85 E7       ;
CODE_05CA26:    INX                     ; $05:CA26: E8          ;
                CPX #$0D                ; $05:CA27: E0 0D       ;
                BCC CODE_05CA17         ; $05:CA29: 90 EC       ;
                PLY                     ; $05:CA2B: 7A          ;
                PLX                     ; $05:CA2C: FA          ;
                RTS                     ; $05:CA2D: 60          ;

CODE_05CA2E:    LDA $9E                 ; $05:CA2E: A5 9E       ;
                INC A                   ; $05:CA30: 1A          ;
                STA $02FC               ; $05:CA31: 8D FC 02    ;
                PHX                     ; $05:CA34: DA          ;
                LDY $030D,x             ; $05:CA35: BC 0D 03    ;
                STY $E6                 ; $05:CA38: 84 E6       ;
                LDA DATA_05CB2D,y       ; $05:CA3A: B9 2D CB    ;
                CLC                     ; $05:CA3D: 18          ;
                ADC #$A0                ; $05:CA3E: 69 A0       ;
                STA $E4                 ; $05:CA40: 85 E4       ;
                LDA DATA_05CB2D+1,y     ; $05:CA42: B9 2E CB    ;
                CLC                     ; $05:CA45: 18          ;
                ADC #$A0                ; $05:CA46: 69 A0       ;
                STA $E5                 ; $05:CA48: 85 E5       ;
                LDY $E7                 ; $05:CA4A: A4 E7       ;
                LDA $031A,x             ; $05:CA4C: BD 1A 03    ;
                JSR CODE_05CAD3         ; $05:CA4F: 20 D3 CA    ;
                LDA $031A,x             ; $05:CA52: BD 1A 03    ;
                CLC                     ; $05:CA55: 18          ;
                ADC #$08                ; $05:CA56: 69 08       ;
                JSR CODE_05CAD3         ; $05:CA58: 20 D3 CA    ;
                LDY $E7                 ; $05:CA5B: A4 E7       ;
                LDA $E4                 ; $05:CA5D: A5 E4       ;
                JSR CODE_05CABD         ; $05:CA5F: 20 BD CA    ;
                TYA                     ; $05:CA62: 98          ;
                CLC                     ; $05:CA63: 18          ;
                ADC #$10                ; $05:CA64: 69 10       ;
                TAY                     ; $05:CA66: A8          ;
                LDA $E5                 ; $05:CA67: A5 E5       ;
                JSR CODE_05CABD         ; $05:CA69: 20 BD CA    ;
                LDX $E6                 ; $05:CA6C: A6 E6       ;
                CPX #$04                ; $05:CA6E: E0 04       ;
                BCS CODE_05CA76         ; $05:CA70: B0 04       ;
                LDA #$22                ; $05:CA72: A9 22       ;
                BRA CODE_05CA78         ; $05:CA74: 80 02       ;

CODE_05CA76:    LDA #$23                ; $05:CA76: A9 23       ;
CODE_05CA78:    LDY $E7                 ; $05:CA78: A4 E7       ;
                INY                     ; $05:CA7A: C8          ;
                INY                     ; $05:CA7B: C8          ;
                INY                     ; $05:CA7C: C8          ;
                PHA                     ; $05:CA7D: 48          ;
                JSR CODE_05CAD3         ; $05:CA7E: 20 D3 CA    ;
                PLA                     ; $05:CA81: 68          ;
                JSR CODE_05CAD3         ; $05:CA82: 20 D3 CA    ;
                LDY $E7                 ; $05:CA85: A4 E7       ;
                TXA                     ; $05:CA87: 8A          ;
                ASL A                   ; $05:CA88: 0A          ;
                ASL A                   ; $05:CA89: 0A          ;
                ASL A                   ; $05:CA8A: 0A          ;
                TAX                     ; $05:CA8B: AA          ;
                LDA #$08                ; $05:CA8C: A9 08       ;
                STA $E8                 ; $05:CA8E: 85 E8       ;
CODE_05CA90:    LDA DATA_05CAE5,x       ; $05:CA90: BD E5 CA    ;
                STA $0902,y             ; $05:CA93: 99 02 09    ;
                INY                     ; $05:CA96: C8          ;
                INY                     ; $05:CA97: C8          ;
                INY                     ; $05:CA98: C8          ;
                INY                     ; $05:CA99: C8          ;
                INX                     ; $05:CA9A: E8          ;
                DEC $E8                 ; $05:CA9B: C6 E8       ;
                BNE CODE_05CA90         ; $05:CA9D: D0 F1       ;
                PLX                     ; $05:CA9F: FA          ;
                DEC $0327,x             ; $05:CAA0: DE 27 03    ;
                LDA $0327,x             ; $05:CAA3: BD 27 03    ;
                BNE CODE_05CABC         ; $05:CAA6: D0 14       ;
                LDA #$03                ; $05:CAA8: A9 03       ;
                STA $0327,x             ; $05:CAAA: 9D 27 03    ;
                INC $030D,x             ; $05:CAAD: FE 0D 03    ;
                LDA $030D,x             ; $05:CAB0: BD 0D 03    ;
                AND #$0F                ; $05:CAB3: 29 0F       ;
                CMP #$09                ; $05:CAB5: C9 09       ;
                BNE CODE_05CABC         ; $05:CAB7: D0 03       ;
                STZ $0300,x             ; $05:CAB9: 9E 00 03    ;
CODE_05CABC:    RTS                     ; $05:CABC: 60          ;

CODE_05CABD:    STA $0901,y             ; $05:CABD: 99 01 09    ;
                CLC                     ; $05:CAC0: 18          ;
                ADC #$08                ; $05:CAC1: 69 08       ;
                STA $0905,y             ; $05:CAC3: 99 05 09    ;
                CLC                     ; $05:CAC6: 18          ;
                ADC #$08                ; $05:CAC7: 69 08       ;
                STA $0909,y             ; $05:CAC9: 99 09 09    ;
                CLC                     ; $05:CACC: 18          ;
                ADC #$08                ; $05:CACD: 69 08       ;
                STA $090D,y             ; $05:CACF: 99 0D 09    ;
                RTS                     ; $05:CAD2: 60          ;

CODE_05CAD3:    STA $0900,y             ; $05:CAD3: 99 00 09    ;
                STA $0904,y             ; $05:CAD6: 99 04 09    ;
                STA $0908,y             ; $05:CAD9: 99 08 09    ;
                STA $090C,y             ; $05:CADC: 99 0C 09    ;
                TYA                     ; $05:CADF: 98          ;
                CLC                     ; $05:CAE0: 18          ;
                ADC #$10                ; $05:CAE1: 69 10       ;
                TAY                     ; $05:CAE3: A8          ;
                RTS                     ; $05:CAE4: 60          ;

DATA_05CAE5:    db $10,$20,$FC,$FC,$11,$21,$FC,$FC              ;
                db $10,$20,$FC,$FC,$11,$21,$FC,$FC              ;
                db $12,$22,$FC,$FC,$13,$23,$FC,$FC              ;
                db $14,$24,$16,$FC,$15,$25,$17,$FC              ;
                db $4C,$5C,$4E,$5E,$4D,$5D,$4F,$5F              ;
                db $8C,$9C,$8E,$9E,$8D,$9D,$8F,$9F              ;
                db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF              ;
                db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF              ;
                db $AC,$BC,$AE,$BE,$AD,$BD,$AF,$BF              ;

DATA_05CB2D:    db $00,$00,$01,$03,$06,$0A,$0F,$14              ;
                db $1C,$24,$3C                                  ;

DATA_05CB38:    db $0E,$0E,$0E,$66,$66,$64,$64,$64              ;
                db $66,$66                                      ;

CODE_05CB42:    PHB                     ; $05:CB42: 8B          ;
                PHK                     ; $05:CB43: 4B          ;
                PLB                     ; $05:CB44: AB          ;
                PHY                     ; $05:CB45: 5A          ;
                LDA $0B46,x             ; $05:CB46: BD 46 0B    ;
                CLC                     ; $05:CB49: 18          ;
                ADC #$04                ; $05:CB4A: 69 04       ;
                TAY                     ; $05:CB4C: A8          ;
                LDA $47,x               ; $05:CB4D: B5 47       ;
                CMP #$02                ; $05:CB4F: C9 02       ;
                BNE CODE_05CB55         ; $05:CB51: D0 02       ;
                LDA #$41                ; $05:CB53: A9 41       ;
CODE_05CB55:    EOR #$2B                ; $05:CB55: 49 2B       ;
                STA $0903,y             ; $05:CB57: 99 03 09    ;
                LDA $1C,x               ; $05:CB5A: B5 1C       ;
                CMP #$08                ; $05:CB5C: C9 08       ;
                BEQ CODE_05CB6F         ; $05:CB5E: F0 0F       ;
                LDA $0EA2,x             ; $05:CB60: BD A2 0E    ;
                CMP #$0A                ; $05:CB63: C9 0A       ;
                BCS CODE_05CB6F         ; $05:CB65: B0 08       ;
                LDA $0903,y             ; $05:CB67: B9 03 09    ;
                EOR #$20                ; $05:CB6A: 49 20       ;
                STA $0903,y             ; $05:CB6C: 99 03 09    ;
CODE_05CB6F:    LDA $0F4F,x             ; $05:CB6F: BD 4F 0F    ;
                LSR A                   ; $05:CB72: 4A          ;
                LSR A                   ; $05:CB73: 4A          ;
                AND #$0F                ; $05:CB74: 29 0F       ;
                STA $E4                 ; $05:CB76: 85 E4       ;
                LDA $29,x               ; $05:CB78: B5 29       ;
                AND #$20                ; $05:CB7A: 29 20       ;
                BNE CODE_05CB84         ; $05:CB7C: D0 06       ;
                LDA $E4                 ; $05:CB7E: A5 E4       ;
                CMP #$09                ; $05:CB80: C9 09       ;
                BCC CODE_05CB87         ; $05:CB82: 90 03       ;
CODE_05CB84:    STZ $0F4F,x             ; $05:CB84: 9E 4F 0F    ;
CODE_05CB87:    LDA $0F                 ; $05:CB87: A5 0F       ;
                CMP #$09                ; $05:CB89: C9 09       ;
                BCS CODE_05CB95         ; $05:CB8B: B0 08       ;
                LDA $0E67               ; $05:CB8D: AD 67 0E    ;
                BNE CODE_05CB95         ; $05:CB90: D0 03       ;
                INC $0F4F,x             ; $05:CB92: FE 4F 0F    ;
CODE_05CB95:    LDX $E4                 ; $05:CB95: A6 E4       ;
                LDA $03AE               ; $05:CB97: AD AE 03    ;
                STA $0900,y             ; $05:CB9A: 99 00 09    ;
                LDA $03B9               ; $05:CB9D: AD B9 03    ;
                CLC                     ; $05:CBA0: 18          ;
                ADC #$08                ; $05:CBA1: 69 08       ;
                STA $0901,y             ; $05:CBA3: 99 01 09    ;
                LDA DATA_05CB38,x       ; $05:CBA6: BD 38 CB    ;
                STA $0902,y             ; $05:CBA9: 99 02 09    ;
                LDA #$02                ; $05:CBAC: A9 02       ;
                STA $0D00,y             ; $05:CBAE: 99 00 0D    ;
                LDX $9E                 ; $05:CBB1: A6 9E       ;
                LDA $021A,x             ; $05:CBB3: BD 1A 02    ;
                STA $E4                 ; $05:CBB6: 85 E4       ;
                LDA $79,x               ; $05:CBB8: B5 79       ;
                STA $E5                 ; $05:CBBA: 85 E5       ;
                REP #$20                ; $05:CBBC: C2 20       ;
                LDA $E4                 ; $05:CBBE: A5 E4       ;
                SEC                     ; $05:CBC0: 38          ;
                SBC $42                 ; $05:CBC1: E5 42       ;
                STA $E4                 ; $05:CBC3: 85 E4       ;
                SEP #$20                ; $05:CBC5: E2 20       ;
                LDA $E5                 ; $05:CBC7: A5 E5       ;
                BEQ CODE_05CBD0         ; $05:CBC9: F0 05       ;
                LDA #$03                ; $05:CBCB: A9 03       ;
                STA $0D00,y             ; $05:CBCD: 99 00 0D    ;
CODE_05CBD0:    LDA $03B9               ; $05:CBD0: AD B9 03    ;
                CMP #$E0                ; $05:CBD3: C9 E0       ;
                BCS CODE_05CBDD         ; $05:CBD5: B0 06       ;
                LDA $BC,x               ; $05:CBD7: B5 BC       ;
                CMP #$01                ; $05:CBD9: C9 01       ;
                BEQ CODE_05CBE2         ; $05:CBDB: F0 05       ;
CODE_05CBDD:    LDA #$F0                ; $05:CBDD: A9 F0       ;
                STA $0901,y             ; $05:CBDF: 99 01 09    ;
CODE_05CBE2:    PLY                     ; $05:CBE2: 7A          ;
                PLB                     ; $05:CBE3: AB          ;
                RTL                     ; $05:CBE4: 6B          ;

CODE_05CBE5:    LDA $03FA               ; $05:CBE5: AD FA 03    ;
                BEQ CODE_05CC16         ; $05:CBE8: F0 2C       ;
                LDA $0219               ; $05:CBEA: AD 19 02    ;
                STA $E4                 ; $05:CBED: 85 E4       ;
                LDA $0078               ; $05:CBEF: AD 78 00    ;
                STA $E5                 ; $05:CBF2: 85 E5       ;
                STZ $02FE               ; $05:CBF4: 9C FE 02    ;
                REP #$20                ; $05:CBF7: C2 20       ;
                LDA $02FD               ; $05:CBF9: AD FD 02    ;
                CLC                     ; $05:CBFC: 18          ;
                ADC $03CC               ; $05:CBFD: 6D CC 03    ;
                CMP $E4                 ; $05:CC00: C5 E4       ;
                BCC CODE_05CC09         ; $05:CC02: 90 05       ;
                SEP #$20                ; $05:CC04: E2 20       ;
                LDA #$01                ; $05:CC06: A9 01       ;
                RTL                     ; $05:CC08: 6B          ;

CODE_05CC09:    SEP #$20                ; $05:CC09: E2 20       ;
                STZ $03FA               ; $05:CC0B: 9C FA 03    ;
                LDA #$34                ; $05:CC0E: A9 34       ;
                STA $02F7               ; $05:CC10: 8D F7 02    ;
                STA $03CF               ; $05:CC13: 8D CF 03    ;
CODE_05CC16:    LDA $03CF               ; $05:CC16: AD CF 03    ;
                BEQ CODE_05CC46         ; $05:CC19: F0 2B       ;
                CMP #$28                ; $05:CC1B: C9 28       ;
                BCC CODE_05CC23         ; $05:CC1D: 90 04       ;
                LDA #$F8                ; $05:CC1F: A9 F8       ;
                BRA CODE_05CC25         ; $05:CC21: 80 02       ;

CODE_05CC23:    LDA #$F0                ; $05:CC23: A9 F0       ;
CODE_05CC25:    STA $03CE               ; $05:CC25: 8D CE 03    ;
                LDA $0754               ; $05:CC28: AD 54 07    ;
                BEQ CODE_05CC36         ; $05:CC2B: F0 09       ;
                LDA $03CE               ; $05:CC2D: AD CE 03    ;
                SEC                     ; $05:CC30: 38          ;
                SBC #$10                ; $05:CC31: E9 10       ;
                STA $03CE               ; $05:CC33: 8D CE 03    ;
CODE_05CC36:    DEC $03CF               ; $05:CC36: CE CF 03    ;
                LDA $03CF               ; $05:CC39: AD CF 03    ;
                BNE CODE_05CC3E         ; $05:CC3C: D0 00       ;
CODE_05CC3E:    STZ $5D                 ; $05:CC3E: 64 5D       ;
                STZ $0705               ; $05:CC40: 9C 05 07    ;
                LDA #$00                ; $05:CC43: A9 00       ;
                RTL                     ; $05:CC45: 6B          ;

CODE_05CC46:    LDA #$01                ; $05:CC46: A9 01       ;
                STA $0723               ; $05:CC48: 8D 23 07    ;
                STA $0254               ; $05:CC4B: 8D 54 02    ;
                JSR CODE_05CC6C         ; $05:CC4E: 20 6C CC    ;
                STZ $03CE               ; $05:CC51: 9C CE 03    ;
                LDA $03FB               ; $05:CC54: AD FB 03    ;
                BEQ CODE_05CC5F         ; $05:CC57: F0 06       ;
                DEC $03FB               ; $05:CC59: CE FB 03    ;
                LDA #$01                ; $05:CC5C: A9 01       ;
                RTL                     ; $05:CC5E: 6B          ;

CODE_05CC5F:    LDA $0746               ; $05:CC5F: AD 46 07    ;
                CMP #$01                ; $05:CC62: C9 01       ;
                BCS CODE_05CC69         ; $05:CC64: B0 03       ;
                INC $0746               ; $05:CC66: EE 46 07    ;
CODE_05CC69:    LDA #$00                ; $05:CC69: A9 00       ;
                RTL                     ; $05:CC6B: 6B          ;

CODE_05CC6C:    LDX #$00                ; $05:CC6C: A2 00       ;
                REP #$20                ; $05:CC6E: C2 20       ;
CODE_05CC70:    LDA $11E0,x             ; $05:CC70: BD E0 11    ;
                STA $E4                 ; $05:CC73: 85 E4       ;
                AND #$7C00              ; $05:CC75: 29 00 7C    ;
                BEQ CODE_05CC82         ; $05:CC78: F0 08       ;
                LDA $E4                 ; $05:CC7A: A5 E4       ;
                SEC                     ; $05:CC7C: 38          ;
                SBC #$0400              ; $05:CC7D: E9 00 04    ;
                STA $E4                 ; $05:CC80: 85 E4       ;
CODE_05CC82:    LDA $E4                 ; $05:CC82: A5 E4       ;
                AND #$03E0              ; $05:CC84: 29 E0 03    ;
                BEQ CODE_05CC91         ; $05:CC87: F0 08       ;
                LDA $E4                 ; $05:CC89: A5 E4       ;
                SEC                     ; $05:CC8B: 38          ;
                SBC #$0020              ; $05:CC8C: E9 20 00    ;
                STA $E4                 ; $05:CC8F: 85 E4       ;
CODE_05CC91:    LDA $E4                 ; $05:CC91: A5 E4       ;
                AND #$001F              ; $05:CC93: 29 1F 00    ;
                BEQ CODE_05CC9A         ; $05:CC96: F0 02       ;
                DEC $E4                 ; $05:CC98: C6 E4       ;
CODE_05CC9A:    LDA $E4                 ; $05:CC9A: A5 E4       ;
                STA $11E0,x             ; $05:CC9C: 9D E0 11    ;
                INX                     ; $05:CC9F: E8          ;
                INX                     ; $05:CCA0: E8          ;
                CPX #$20                ; $05:CCA1: E0 20       ;
                BNE CODE_05CC70         ; $05:CCA3: D0 CB       ;
                SEP #$20                ; $05:CCA5: E2 20       ;
                INC $1200               ; $05:CCA7: EE 00 12    ;
                RTS                     ; $05:CCAA: 60          ;

DATA_05CCAB:    db $90,$80,$70,$90                              ;

DATA_05CCAF:    db $FF,$01                                      ;

CODE_05CCB1:    PHX                     ; $05:CCB1: DA          ;
                PHY                     ; $05:CCB2: 5A          ;
                LDY $0368               ; $05:CCB3: AC 68 03    ;
                LDX $0F4E               ; $05:CCB6: AE 4E 0F    ;
                LDA $021A,y             ; $05:CCB9: B9 1A 02    ;
                SEC                     ; $05:CCBC: 38          ;
                SBC #$0E                ; $05:CCBD: E9 0E       ;
                STA $021A,x             ; $05:CCBF: 9D 1A 02    ;
                LDA $0079,y             ; $05:CCC2: B9 79 00    ;
                STA $79,x               ; $05:CCC5: 95 79       ;
                LDA $0238,y             ; $05:CCC7: B9 38 02    ;
                CLC                     ; $05:CCCA: 18          ;
                ADC #$08                ; $05:CCCB: 69 08       ;
                STA $0238,x             ; $05:CCCD: 9D 38 02    ;
                LDA $07B7,x             ; $05:CCD0: BD B7 07    ;
                AND #$03                ; $05:CCD3: 29 03       ;
                STA $041D,x             ; $05:CCD5: 9D 1D 04    ;
                TAY                     ; $05:CCD8: A8          ;
                LDA DATA_05CCAB,y       ; $05:CCD9: B9 AB CC    ;
                LDY #$00                ; $05:CCDC: A0 00       ;
                CMP $0238,x             ; $05:CCDE: DD 38 02    ;
                BCC CODE_05CCE4         ; $05:CCE1: 90 01       ;
                INY                     ; $05:CCE3: C8          ;
CODE_05CCE4:    LDA DATA_05CCAF,y       ; $05:CCE4: B9 AF CC    ;
                STA $043D,x             ; $05:CCE7: 9D 3D 04    ;
                STZ $06CB               ; $05:CCEA: 9C CB 06    ;
                LDA #$08                ; $05:CCED: A9 08       ;\Set clipping?
                STA $0490,x             ; $05:CCEF: 9D 90 04    ;/
                LDA #$01                ; $05:CCF2: A9 01       ;
                STA $BC,x               ; $05:CCF4: 95 BC       ;
                STA $10,x               ; $05:CCF6: 95 10       ;
                LSR A                   ; $05:CCF8: 4A          ;
                STA $0402,x             ; $05:CCF9: 9D 02 04    ;
                STA $29,x               ; $05:CCFC: 95 29       ;
                PLY                     ; $05:CCFE: 7A          ;
                PLX                     ; $05:CCFF: FA          ;
                RTS                     ; $05:CD00: 60          ;

CODE_05CD01:    PHB                     ; $05:CD01: 8B          ;
                PHK                     ; $05:CD02: 4B          ;
                PLB                     ; $05:CD03: AB          ;
                LDY $0B46,x             ; $05:CD04: BC 46 0B    ;
                LDA $03AE               ; $05:CD07: AD AE 03    ;
                STA $0900,y             ; $05:CD0A: 99 00 09    ;
                CLC                     ; $05:CD0D: 18          ;
                ADC #$08                ; $05:CD0E: 69 08       ;
                STA $0904,y             ; $05:CD10: 99 04 09    ;
                LDA $03B9               ; $05:CD13: AD B9 03    ;
                STA $0901,y             ; $05:CD16: 99 01 09    ;
                STA $0905,y             ; $05:CD19: 99 05 09    ;
                LDA #$21                ; $05:CD1C: A9 21       ;
                STA $0903,y             ; $05:CD1E: 99 03 09    ;
                STA $0907,y             ; $05:CD21: 99 07 09    ;
                LDA $0F58,x             ; $05:CD24: BD 58 0F    ;
                LSR A                   ; $05:CD27: 4A          ;
                LSR A                   ; $05:CD28: 4A          ;
                LSR A                   ; $05:CD29: 4A          ;
                CMP #$03                ; $05:CD2A: C9 03       ;
                BNE CODE_05CD51         ; $05:CD2C: D0 23       ;
                STZ $0F36,x             ; $05:CD2E: 9E 36 0F    ;
                LDA #$01                ; $05:CD31: A9 01       ;
                STA $0F36,x             ; $05:CD33: 9D 36 0F    ;
                LDA $021A,x             ; $05:CD36: BD 1A 02    ;
                CLC                     ; $05:CD39: 18          ;
                ADC #$10                ; $05:CD3A: 69 10       ;
                STA $0F62,x             ; $05:CD3C: 9D 62 0F    ;
                LDA $79,x               ; $05:CD3F: B5 79       ;
                ADC #$00                ; $05:CD41: 69 00       ;
                STA $0F6B,x             ; $05:CD43: 9D 6B 0F    ;
                LDA $03B9               ; $05:CD46: AD B9 03    ;
                STA $0F74,x             ; $05:CD49: 9D 74 0F    ;
                LDA #$00                ; $05:CD4C: A9 00       ;
                STA $0F58,x             ; $05:CD4E: 9D 58 0F    ;
CODE_05CD51:    TAX                     ; $05:CD51: AA          ;
                LDA DATA_05CDE2,x       ; $05:CD52: BD E2 CD    ;
                STA $0902,y             ; $05:CD55: 99 02 09    ;
                INC A                   ; $05:CD58: 1A          ;
                STA $0906,y             ; $05:CD59: 99 06 09    ;
                STX $E4                 ; $05:CD5C: 86 E4       ;
                LDX $9E                 ; $05:CD5E: A6 9E       ;
                LDA $021A,x             ; $05:CD60: BD 1A 02    ;
                STA $E5                 ; $05:CD63: 85 E5       ;
                LDA $79,x               ; $05:CD65: B5 79       ;
                STA $E6                 ; $05:CD67: 85 E6       ;
                REP #$20                ; $05:CD69: C2 20       ;
                LDA $E5                 ; $05:CD6B: A5 E5       ;
                SEC                     ; $05:CD6D: 38          ;
                SBC $42                 ; $05:CD6E: E5 42       ;
                STA $E5                 ; $05:CD70: 85 E5       ;
                CLC                     ; $05:CD72: 18          ;
                ADC #$0008              ; $05:CD73: 69 08 00    ;
                STA $E7                 ; $05:CD76: 85 E7       ;
                SEP #$20                ; $05:CD78: E2 20       ;
                LDA #$02                ; $05:CD7A: A9 02       ;
                STA $E9                 ; $05:CD7C: 85 E9       ;
                LDA $E6                 ; $05:CD7E: A5 E6       ;
                BEQ CODE_05CD84         ; $05:CD80: F0 02       ;
                LDA #$01                ; $05:CD82: A9 01       ;
CODE_05CD84:    ORA $E9                 ; $05:CD84: 05 E9       ;
                STA $0D00,y             ; $05:CD86: 99 00 0D    ;
                LDA $E8                 ; $05:CD89: A5 E8       ;
                BEQ CODE_05CD8F         ; $05:CD8B: F0 02       ;
                LDA #$01                ; $05:CD8D: A9 01       ;
CODE_05CD8F:    ORA $E9                 ; $05:CD8F: 05 E9       ;
                STA $0D04,y             ; $05:CD91: 99 04 0D    ;
                LDA $0F36,x             ; $05:CD94: BD 36 0F    ;
                BEQ CODE_05CDDB         ; $05:CD97: F0 42       ;
                LDA $0F62,x             ; $05:CD99: BD 62 0F    ;
                STA $E5                 ; $05:CD9C: 85 E5       ;
                LDA $0F6B,x             ; $05:CD9E: BD 6B 0F    ;
                STA $E6                 ; $05:CDA1: 85 E6       ;
                REP #$20                ; $05:CDA3: C2 20       ;
                LDA $E5                 ; $05:CDA5: A5 E5       ;
                SEC                     ; $05:CDA7: 38          ;
                SBC $42                 ; $05:CDA8: E5 42       ;
                STA $E5                 ; $05:CDAA: 85 E5       ;
                SEP #$20                ; $05:CDAC: E2 20       ;
                LDA $E5                 ; $05:CDAE: A5 E5       ;
                STA $0908,y             ; $05:CDB0: 99 08 09    ;
                LDA $0F58,x             ; $05:CDB3: BD 58 0F    ;
                LSR A                   ; $05:CDB6: 4A          ;
                CLC                     ; $05:CDB7: 18          ;
                ADC #$04                ; $05:CDB8: 69 04       ;
                CLC                     ; $05:CDBA: 18          ;
                ADC $0F74,x             ; $05:CDBB: 7D 74 0F    ;
                STA $0909,y             ; $05:CDBE: 99 09 09    ;
                LDX $E4                 ; $05:CDC1: A6 E4       ;
                LDA DATA_05CDE5,x       ; $05:CDC3: BD E5 CD    ;
                STA $090A,y             ; $05:CDC6: 99 0A 09    ;
                LDA #$28                ; $05:CDC9: A9 28       ;
                STA $090B,y             ; $05:CDCB: 99 0B 09    ;
                STZ $E9                 ; $05:CDCE: 64 E9       ;
                LDA $E6                 ; $05:CDD0: A5 E6       ;
                BEQ CODE_05CDD6         ; $05:CDD2: F0 02       ;
                LDA #$01                ; $05:CDD4: A9 01       ;
CODE_05CDD6:    ORA $E9                 ; $05:CDD6: 05 E9       ;
                STA $0D08,y             ; $05:CDD8: 99 08 0D    ;
CODE_05CDDB:    LDX $9E                 ; $05:CDDB: A6 9E       ;
                INC $0F58,x             ; $05:CDDD: FE 58 0F    ;
                PLB                     ; $05:CDE0: AB          ;
                RTL                     ; $05:CDE1: 6B          ;

DATA_05CDE2:    db $86,$A6,$89                                  ;

DATA_05CDE5:    db $30,$31,$32,$06,$0A,$0E                      ;

CODE_05CDEB:    PHB                     ; $05:CDEB: 8B          ;
                PHK                     ; $05:CDEC: 4B          ;
                PLB                     ; $05:CDED: AB          ;
                LDY #$04                ; $05:CDEE: A0 04       ;
                STY $02FF               ; $05:CDF0: 8C FF 02    ;
                LDA $03AE               ; $05:CDF3: AD AE 03    ;
                SEC                     ; $05:CDF6: 38          ;
                SBC #$08                ; $05:CDF7: E9 08       ;
                STA $E4                 ; $05:CDF9: 85 E4       ;
                LDX #$00                ; $05:CDFB: A2 00       ;
CODE_05CDFD:    LDA DATA_05CF1B,x       ; $05:CDFD: BD 1B CF    ;
                CLC                     ; $05:CE00: 18          ;
                ADC $E4                 ; $05:CE01: 65 E4       ;
                STA $0800,y             ; $05:CE03: 99 00 08    ;
                LDA $03B9               ; $05:CE06: AD B9 03    ;
                SEC                     ; $05:CE09: 38          ;
                SBC #$04                ; $05:CE0A: E9 04       ;
                STA $0801,y             ; $05:CE0C: 99 01 08    ;
                PHX                     ; $05:CE0F: DA          ;
                LDA $09                 ; $05:CE10: A5 09       ;
                AND #$18                ; $05:CE12: 29 18       ;
                STX $E5                 ; $05:CE14: 86 E5       ;
                CLC                     ; $05:CE16: 18          ;
                ADC $E5                 ; $05:CE17: 65 E5       ;
                TAX                     ; $05:CE19: AA          ;
                LDA DATA_05CEFB,x       ; $05:CE1A: BD FB CE    ;
                STA $0803,y             ; $05:CE1D: 99 03 08    ;
                LDA DATA_05CEDB,x       ; $05:CE20: BD DB CE    ;
                STA $0802,y             ; $05:CE23: 99 02 08    ;
                PLX                     ; $05:CE26: FA          ;
                INY                     ; $05:CE27: C8          ;
                INY                     ; $05:CE28: C8          ;
                INY                     ; $05:CE29: C8          ;
                INY                     ; $05:CE2A: C8          ;
                INX                     ; $05:CE2B: E8          ;
                CPX #$05                ; $05:CE2C: E0 05       ;
                BNE CODE_05CDFD         ; $05:CE2E: D0 CD       ;
                LDX $9E                 ; $05:CE30: A6 9E       ;
                LDA $021A,x             ; $05:CE32: BD 1A 02    ;
                STA $E5                 ; $05:CE35: 85 E5       ;
                LDA $79,x               ; $05:CE37: B5 79       ;
                STA $E6                 ; $05:CE39: 85 E6       ;
                REP #$20                ; $05:CE3B: C2 20       ;
                LDA $E5                 ; $05:CE3D: A5 E5       ;
                SEC                     ; $05:CE3F: 38          ;
                SBC #$0008              ; $05:CE40: E9 08 00    ;
                SEC                     ; $05:CE43: 38          ;
                SBC $42                 ; $05:CE44: E5 42       ;
                STA $E9                 ; $05:CE46: 85 E9       ;
                CLC                     ; $05:CE48: 18          ;
                ADC #$0010              ; $05:CE49: 69 10 00    ;
                STA $E8                 ; $05:CE4C: 85 E8       ;
                CLC                     ; $05:CE4E: 18          ;
                ADC #$0004              ; $05:CE4F: 69 04 00    ;
                STA $DF                 ; $05:CE52: 85 DF       ;
                CLC                     ; $05:CE54: 18          ;
                ADC #$0008              ; $05:CE55: 69 08 00    ;
                STA $DD                 ; $05:CE58: 85 DD       ;
                CLC                     ; $05:CE5A: 18          ;
                ADC #$0004              ; $05:CE5B: 69 04 00    ;
                STA $E7                 ; $05:CE5E: 85 E7       ;
                CLC                     ; $05:CE60: 18          ;
                ADC #$0010              ; $05:CE61: 69 10 00    ;
                STA $E6                 ; $05:CE64: 85 E6       ;
                SEC                     ; $05:CE66: 38          ;
                SBC #$0010              ; $05:CE67: E9 10 00    ;
                STA $E5                 ; $05:CE6A: 85 E5       ;
                SEP #$20                ; $05:CE6C: E2 20       ;
                LDA #$02                ; $05:CE6E: A9 02       ;
                STA $E4                 ; $05:CE70: 85 E4       ;
                LDY #$04                ; $05:CE72: A0 04       ;
                LDX #$05                ; $05:CE74: A2 05       ;
CODE_05CE76:    LDA $E5,x               ; $05:CE76: B5 E5       ;
                BEQ CODE_05CE7C         ; $05:CE78: F0 02       ;
                LDA #$01                ; $05:CE7A: A9 01       ;
CODE_05CE7C:    ORA $E4                 ; $05:CE7C: 05 E4       ;
                STA $0C00,y             ; $05:CE7E: 99 00 0C    ;
                INY                     ; $05:CE81: C8          ;
                INY                     ; $05:CE82: C8          ;
                INY                     ; $05:CE83: C8          ;
                INY                     ; $05:CE84: C8          ;
                DEX                     ; $05:CE85: CA          ;
                BNE CODE_05CE76         ; $05:CE86: D0 EE       ;
                STZ $E4                 ; $05:CE88: 64 E4       ;
                LDA $06CC               ; $05:CE8A: AD CC 06    ;
                BNE CODE_05CEA6         ; $05:CE8D: D0 17       ;
                LDA #$F0                ; $05:CE8F: A9 F0       ;
                STA $0815               ; $05:CE91: 8D 15 08    ;
                LDA $DE                 ; $05:CE94: A5 DE       ;
                BEQ CODE_05CE9A         ; $05:CE96: F0 02       ;
                LDA #$01                ; $05:CE98: A9 01       ;
CODE_05CE9A:    ORA $E4                 ; $05:CE9A: 05 E4       ;
                STA $0C00               ; $05:CE9C: 8D 00 0C    ;
                LDA $DD                 ; $05:CE9F: A5 DD       ;
                STA $0800               ; $05:CEA1: 8D 00 08    ;
                BRA CODE_05CEBE         ; $05:CEA4: 80 18       ;

CODE_05CEA6:    LDA #$F0                ; $05:CEA6: A9 F0       ;
                STA $080D               ; $05:CEA8: 8D 0D 08    ;
                STA $0811               ; $05:CEAB: 8D 11 08    ;
                LDA $E0                 ; $05:CEAE: A5 E0       ;
                BEQ CODE_05CEB4         ; $05:CEB0: F0 02       ;
                LDA #$01                ; $05:CEB2: A9 01       ;
CODE_05CEB4:    ORA $E4                 ; $05:CEB4: 05 E4       ;
                STA $0C00               ; $05:CEB6: 8D 00 0C    ;
                LDA $DF                 ; $05:CEB9: A5 DF       ;
                STA $0800               ; $05:CEBB: 8D 00 08    ;
CODE_05CEBE:    LDA $09                 ; $05:CEBE: A5 09       ;
                AND #$10                ; $05:CEC0: 29 10       ;
                LSR A                   ; $05:CEC2: 4A          ;
                LSR A                   ; $05:CEC3: 4A          ;
                LSR A                   ; $05:CEC4: 4A          ;
                LSR A                   ; $05:CEC5: 4A          ;
                CLC                     ; $05:CEC6: 18          ;
                ADC $03B9               ; $05:CEC7: 6D B9 03    ;
                STA $0801               ; $05:CECA: 8D 01 08    ;
                LDA #$E7                ; $05:CECD: A9 E7       ;
                STA $0802               ; $05:CECF: 8D 02 08    ;
                LDA #$2C                ; $05:CED2: A9 2C       ;
                STA $0803               ; $05:CED4: 8D 03 08    ;
                LDX $9E                 ; $05:CED7: A6 9E       ;
                PLB                     ; $05:CED9: AB          ;
                RTL                     ; $05:CEDA: 6B          ;

DATA_05CEDB:    db $40,$41,$41,$42,$42,$00,$00,$00              ;
                db $60,$61,$61,$62,$62,$00,$00,$00              ;
                db $42,$41,$41,$40,$40,$00,$00,$00              ;
                db $62,$61,$61,$60,$60,$00,$00,$00              ;

DATA_05CEFB:    db $2A,$6A,$6A,$2A,$2A,$00,$00,$00              ;
                db $2A,$6A,$6A,$2A,$2A,$00,$00,$00              ;
                db $6A,$2A,$2A,$6A,$6A,$00,$00,$00              ;
                db $6A,$2A,$2A,$6A,$6A,$00,$00,$00              ;

DATA_05CF1B:    db $00,$10,$20,$30,$20                          ;

DATA_05CF20:    db $C0,$E0,$C4,$C2,$E2,$C5,$C6,$E6              ; Bowser consists of 6 tiles: [3][6]
                db $D4,$C8,$E8,$D5,$CA,$EA,$E4,$C8              ;                           [  1][  4]
                db $EC,$E5,$CC,$E0,$F4,$CE,$E2,$F5              ;                           [  2][  5]
                db $C0,$E0,$C4,$EE,$E2,$C5,$CC,$E0              ; Where 3 and 6 are his 8x8 hair tiles
                db $94,$A4,$E2,$95,$80,$A0,$84,$82              ; This table is indexed by $DD
                db $A2,$85,$C2,$E2,$C5,$C0,$E0,$C4              ;
                db $C8,$E8,$D5,$C6,$E6,$D4,$C8,$EC              ;
                db $E5,$CA,$EA,$E4,$CE,$E2,$F5,$CC              ;
                db $E0,$F4,$EE,$E2,$C5,$C0,$E0,$C4              ;
                db $A4,$E2,$95,$CC,$E0,$94,$82,$A2              ;
                db $85,$80,$A0,$84                              ;

DATA_05CF74:    db $00,$01,$01,$00,$02,$02,$03,$04              ;
                db $05,$06                                      ;

DATA_05CF7E:    db $08,$09                                      ;

DATA_05CF80:    db $EE,$EE,$EE,$00,$F6,$F6,$F6,$00              ;
                db $EC,$EC,$EC,$00,$00                          ;

DATA_05CF8D:    db $00,$00,$E8,$E8,$E8,$00,$F2,$F2              ;
                db $F2,$00,$FA,$FA,$FA                          ;

DATA_05CF9A:    db $EA,$EA,$EA,$00,$E5,$E5,$E5,$00              ;
                db $E4,$E4,$E4,$00,$00                          ;

DATA_05CFA7:    db $00,$00,$E8,$E8,$E8,$00,$ED,$ED              ;
                db $ED,$00,$E5,$E5,$E5                          ;

DATA_05CFB4:    db $A9,$B9,$E8,$00,$A9,$B9,$E8,$00              ;
                db $A9,$B9,$E8,$00,$00                          ;

DATA_05CFC1:    db $00,$00,$A9,$B9,$E8,$00,$A9,$B9              ;
                db $E8,$00,$A9,$B9,$E8                          ;

DATA_05CFCE:    db $27,$27,$26,$27,$27,$27,$26,$27              ;
                db $27,$27,$26,$27,$27                          ;

DATA_05CFDB:    db $27,$27,$27,$27,$26,$27,$27,$27              ;
                db $26,$27,$27,$27,$26                          ;
;TODO: Bowser's "dizzy" routine?
CODE_05CFE8:    PHX                     ; $05:CFE8: DA          ;
                INC $03CA               ; $05:CFE9: EE CA 03    ;
                LDA $03CA               ; $05:CFEC: AD CA 03    ;
                CMP #$34                ; $05:CFEF: C9 34       ;
                BCS CODE_05D050         ; $05:CFF1: B0 5D       ;
                LSR A                   ; $05:CFF3: 4A          ;
                LSR A                   ; $05:CFF4: 4A          ;
                TAX                     ; $05:CFF5: AA          ;
                LDA DATA_05CF80,x       ; $05:CFF6: BD 80 CF    ;
                CLC                     ; $05:CFF9: 18          ;
                ADC $03AE               ; $05:CFFA: 6D AE 03    ;
                CLC                     ; $05:CFFD: 18          ;
                ADC #$18                ; $05:CFFE: 69 18       ;
                STA $08F8               ; $05:D000: 8D F8 08    ;
                LDA DATA_05CF8D,x       ; $05:D003: BD 8D CF    ;
                CLC                     ; $05:D006: 18          ;
                ADC $03AE               ; $05:D007: 6D AE 03    ;
                CLC                     ; $05:D00A: 18          ;
                ADC #$18                ; $05:D00B: 69 18       ;
                STA $08FC               ; $05:D00D: 8D FC 08    ;
                LDA DATA_05CF9A,x       ; $05:D010: BD 9A CF    ;
                BNE CODE_05D019         ; $05:D013: D0 04       ;
                LDA #$F0                ; $05:D015: A9 F0       ;
                BRA CODE_05D020         ; $05:D017: 80 07       ;

CODE_05D019:    CLC                     ; $05:D019: 18          ;
                ADC $03B9               ; $05:D01A: 6D B9 03    ;
                CLC                     ; $05:D01D: 18          ;
                ADC #$10                ; $05:D01E: 69 10       ;
CODE_05D020:    STA $08F9               ; $05:D020: 8D F9 08    ;
                LDA DATA_05CFA7,x       ; $05:D023: BD A7 CF    ;
                BNE CODE_05D02C         ; $05:D026: D0 04       ;
                LDA #$F0                ; $05:D028: A9 F0       ;
                BRA CODE_05D033         ; $05:D02A: 80 07       ;

CODE_05D02C:    CLC                     ; $05:D02C: 18          ;
                ADC #$10                ; $05:D02D: 69 10       ;
                CLC                     ; $05:D02F: 18          ;
                ADC $03B9               ; $05:D030: 6D B9 03    ;
CODE_05D033:    STA $08FD               ; $05:D033: 8D FD 08    ;
                LDA DATA_05CFB4,x       ; $05:D036: BD B4 CF    ;
                STA $08FA               ; $05:D039: 8D FA 08    ;
                LDA DATA_05CFC1,x       ; $05:D03C: BD C1 CF    ;
                STA $08FE               ; $05:D03F: 8D FE 08    ;
                LDA DATA_05CFCE,x       ; $05:D042: BD CE CF    ;
                STA $08FB               ; $05:D045: 8D FB 08    ;
                LDA DATA_05CFDB,x       ; $05:D048: BD DB CF    ;
                STA $08FF               ; $05:D04B: 8D FF 08    ;
                BRA CODE_05D053         ; $05:D04E: 80 03       ;

CODE_05D050:    STZ $03CB               ; $05:D050: 9C CB 03    ;
CODE_05D053:    PLX                     ; $05:D053: FA          ;
                RTS                     ; $05:D054: 60          ;

CODE_05D055:    PHB                     ; $05:D055: 8B          ;
                PHK                     ; $05:D056: 4B          ;
                PLB                     ; $05:D057: AB          ;
                LDA $03CB               ; $05:D058: AD CB 03    ;
                BEQ CODE_05D060         ; $05:D05B: F0 03       ;
                JSR CODE_05CFE8         ; $05:D05D: 20 E8 CF    ;
CODE_05D060:    LDA $0F4C               ; $05:D060: AD 4C 0F    ;
                BEQ CODE_05D07A         ; $05:D063: F0 15       ;
                LDY $014B               ; $05:D065: AC 4B 01    ;
                CPY #$08                ; $05:D068: C0 08       ;
                BNE CODE_05D089         ; $05:D06A: D0 1D       ;
                LDA $0F4C               ; $05:D06C: AD 4C 0F    ;
                LSR A                   ; $05:D06F: 4A          ;
                LSR A                   ; $05:D070: 4A          ;
                AND #$01                ; $05:D071: 29 01       ;
                TAY                     ; $05:D073: A8          ;
                LDA DATA_05CF7E,y       ; $05:D074: B9 7E CF    ;
                TAY                     ; $05:D077: A8          ;
                BRA CODE_05D089         ; $05:D078: 80 0F       ;

CODE_05D07A:    LDA $0792,x             ; $05:D07A: BD 92 07    ;
                BNE CODE_05D082         ; $05:D07D: D0 03       ;
                STZ $014B               ; $05:D07F: 9C 4B 01    ;
CODE_05D082:    LDA $014B               ; $05:D082: AD 4B 01    ;
                LSR A                   ; $05:D085: 4A          ;
                LSR A                   ; $05:D086: 4A          ;
                LSR A                   ; $05:D087: 4A          ;
                TAY                     ; $05:D088: A8          ;
CODE_05D089:    LDA DATA_05CF74,y       ; $05:D089: B9 74 CF    ;
                STA $014C               ; $05:D08C: 8D 4C 01    ;
                LDA $0B46,x             ; $05:D08F: BD 46 0B    ;
                TAY                     ; $05:D092: A8          ;
                LDA $03AE               ; $05:D093: AD AE 03    ;
                STA $0900,y             ; $05:D096: 99 00 09    ;
                STA $0904,y             ; $05:D099: 99 04 09    ;
                CLC                     ; $05:D09C: 18          ;
                ADC #$08                ; $05:D09D: 69 08       ;
                STA $0908,y             ; $05:D09F: 99 08 09    ;
                CLC                     ; $05:D0A2: 18          ;
                ADC #$08                ; $05:D0A3: 69 08       ;
                STA $090C,y             ; $05:D0A5: 99 0C 09    ;
                STA $0910,y             ; $05:D0A8: 99 10 09    ;
                STA $0914,y             ; $05:D0AB: 99 14 09    ;
                LDA $03B9               ; $05:D0AE: AD B9 03    ;
                STA $0901,y             ; $05:D0B1: 99 01 09    ;
                STA $090D,y             ; $05:D0B4: 99 0D 09    ;
                CLC                     ; $05:D0B7: 18          ;
                ADC #$10                ; $05:D0B8: 69 10       ;
                STA $0905,y             ; $05:D0BA: 99 05 09    ;
                STA $0911,y             ; $05:D0BD: 99 11 09    ;
                SEC                     ; $05:D0C0: 38          ;
                SBC #$18                ; $05:D0C1: E9 18       ;
                STA $0909,y             ; $05:D0C3: 99 09 09    ;
                STA $0915,y             ; $05:D0C6: 99 15 09    ;
                LDA $47,x               ; $05:D0C9: B5 47       ;
                STA $DE                 ; $05:D0CB: 85 DE       ;
                CMP #$01                ; $05:D0CD: C9 01       ;
                BEQ CODE_05D0D5         ; $05:D0CF: F0 04       ;
                LDA #$61                ; $05:D0D1: A9 61       ; Flip OAM X
                BRA CODE_05D0D7         ; $05:D0D3: 80 02       ;
; TODO: Bowser's oam routine?
CODE_05D0D5:    LDA #$21                ; $05:D0D5: A9 21       ; Set palette and priority
CODE_05D0D7:    STA $0903,y             ; $05:D0D7: 99 03 09    ;
                STA $0907,y             ; $05:D0DA: 99 07 09    ;
                STA $090B,y             ; $05:D0DD: 99 0B 09    ;
                STA $090F,y             ; $05:D0E0: 99 0F 09    ;
                STA $0913,y             ; $05:D0E3: 99 13 09    ;
                STA $0917,y             ; $05:D0E6: 99 17 09    ;
                STX $9E                 ; $05:D0E9: 86 9E       ;
                LDA $014C               ; $05:D0EB: AD 4C 01    ;
                ASL A                   ; $05:D0EE: 0A          ;
                STA $DD                 ; $05:D0EF: 85 DD       ;
                ASL A                   ; $05:D0F1: 0A          ;
                CLC                     ; $05:D0F2: 18          ;
                ADC $DD                 ; $05:D0F3: 65 DD       ;
                TAX                     ; $05:D0F5: AA          ;
                CLC                     ; $05:D0F6: 18          ;
                ADC #$06                ; $05:D0F7: 69 06       ;
                STA $DD                 ; $05:D0F9: 85 DD       ;
                LDA $DE                 ; $05:D0FB: A5 DE       ;
                CMP #$01                ; $05:D0FD: C9 01       ;
                BEQ CODE_05D10C         ; $05:D0FF: F0 0B       ;
                LDA $DD                 ; $05:D101: A5 DD       ; Index to Bowser's OAM tile data
                CLC                     ; $05:D103: 18          ;
                ADC #$2A                ; $05:D104: 69 2A       ;
                STA $DD                 ; $05:D106: 85 DD       ;
                SEC                     ; $05:D108: 38          ;
                SBC #$06                ; $05:D109: E9 06       ;
                TAX                     ; $05:D10B: AA          ;
CODE_05D10C:    LDA DATA_05CF20,x       ; $05:D10C: BD 20 CF    ; Bowser's tilemap
                STA $0902,y             ; $05:D10F: 99 02 09    ;
                LDA #$02                ; $05:D112: A9 02       ;
                STA $0D00,y             ; $05:D114: 99 00 0D    ;
                INY                     ; $05:D117: C8          ;
                INY                     ; $05:D118: C8          ;
                INY                     ; $05:D119: C8          ;
                INY                     ; $05:D11A: C8          ;
                INX                     ; $05:D11B: E8          ;
                CPX $DD                 ; $05:D11C: E4 DD       ;
                BNE CODE_05D10C         ; $05:D11E: D0 EC       ;
                LDA #$00                ; $05:D120: A9 00       ;
                STA $0CFC,y             ; $05:D122: 99 FC 0C    ;
                STA $0CF0,y             ; $05:D125: 99 F0 0C    ;
                LDX $9E                 ; $05:D128: A6 9E       ;
                LDA $021A,x             ; $05:D12A: BD 1A 02    ;
                STA $E4                 ; $05:D12D: 85 E4       ;
                LDA $79,x               ; $05:D12F: B5 79       ;
                STA $E5                 ; $05:D131: 85 E5       ;
                REP #$20                ; $05:D133: C2 20       ;
                LDA $E4                 ; $05:D135: A5 E4       ;
                SEC                     ; $05:D137: 38          ;
                SBC $42                 ; $05:D138: E5 42       ;
                STA $E4                 ; $05:D13A: 85 E4       ;
                CLC                     ; $05:D13C: 18          ;
                ADC #$0008              ; $05:D13D: 69 08 00    ;
                STA $E6                 ; $05:D140: 85 E6       ;
                CLC                     ; $05:D142: 18          ;
                ADC #$0008              ; $05:D143: 69 08 00    ;
                STA $E8                 ; $05:D146: 85 E8       ;
                SEP #$20                ; $05:D148: E2 20       ;
                LDA $0B46,x             ; $05:D14A: BD 46 0B    ;
                TAY                     ; $05:D14D: A8          ;
                LDA $E5                 ; $05:D14E: A5 E5       ;
                BEQ CODE_05D15A         ; $05:D150: F0 08       ;
                LDA #$03                ; $05:D152: A9 03       ;
                STA $0D00,y             ; $05:D154: 99 00 0D    ;
                STA $0D04,y             ; $05:D157: 99 04 0D    ;
CODE_05D15A:    LDA $E7                 ; $05:D15A: A5 E7       ;
                BEQ CODE_05D163         ; $05:D15C: F0 05       ;
                LDA #$01                ; $05:D15E: A9 01       ;
                STA $0D08,y             ; $05:D160: 99 08 0D    ;
CODE_05D163:    LDA $E9                 ; $05:D163: A5 E9       ;
                BEQ CODE_05D172         ; $05:D165: F0 0B       ;
                LDA #$01                ; $05:D167: A9 01       ;
                STA $0D0C,y             ; $05:D169: 99 0C 0D    ;
                STA $0D10,y             ; $05:D16C: 99 10 0D    ;
                STA $0D14,y             ; $05:D16F: 99 14 0D    ;
CODE_05D172:    LDA $0F4C               ; $05:D172: AD 4C 0F    ;
                BNE CODE_05D189         ; $05:D175: D0 12       ;
                STZ $0F4C               ; $05:D177: 9C 4C 0F    ;
                INC $014B               ; $05:D17A: EE 4B 01    ;
                LDA $014B               ; $05:D17D: AD 4B 01    ;
                CMP #$30                ; $05:D180: C9 30       ;
                BCC CODE_05D1AD         ; $05:D182: 90 29       ;
                STZ $014B               ; $05:D184: 9C 4B 01    ;
                BRA CODE_05D1AD         ; $05:D187: 80 24       ;

CODE_05D189:    DEC $0F4C               ; $05:D189: CE 4C 0F    ;
                LDA $0F4C               ; $05:D18C: AD 4C 0F    ;
                BNE CODE_05D1AD         ; $05:D18F: D0 1C       ;
                LDA $014B               ; $05:D191: AD 4B 01    ;
                CMP #$06                ; $05:D194: C9 06       ;
                BNE CODE_05D1AA         ; $05:D196: D0 12       ;
                INC $014B               ; $05:D198: EE 4B 01    ;
                LDA #$28                ; $05:D19B: A9 28       ;\Freeze bowser's animation
                STA $0F4C               ; $05:D19D: 8D 4C 0F    ;/
                LDA #$3A                ; $05:D1A0: A9 3A       ;\Bowser breathe fire sound
                STA $1600               ; $05:D1A2: 8D 00 16    ;/
                JSR CODE_05CCB1         ; $05:D1A5: 20 B1 CC    ;
                BRA CODE_05D1AD         ; $05:D1A8: 80 03       ;

CODE_05D1AA:    STZ $014B               ; $05:D1AA: 9C 4B 01    ;
CODE_05D1AD:    LDA $0283               ; $05:D1AD: AD 83 02    ;
                BNE CODE_05D1F1         ; $05:D1B0: D0 3F       ;
                LDX $9E                 ; $05:D1B2: A6 9E       ;
                LDY $0B46,x             ; $05:D1B4: BC 46 0B    ;
                LDX #$06                ; $05:D1B7: A2 06       ;
CODE_05D1B9:    LDA $0903,y             ; $05:D1B9: B9 03 09    ;
                ORA #$80                ; $05:D1BC: 09 80       ;
                STA $0903,y             ; $05:D1BE: 99 03 09    ;
                INY                     ; $05:D1C1: C8          ;
                INY                     ; $05:D1C2: C8          ;
                INY                     ; $05:D1C3: C8          ;
                INY                     ; $05:D1C4: C8          ;
                DEX                     ; $05:D1C5: CA          ;
                BNE CODE_05D1B9         ; $05:D1C6: D0 F1       ;
                LDX $9E                 ; $05:D1C8: A6 9E       ;
                LDY $0B46,x             ; $05:D1CA: BC 46 0B    ;
                LDA $0901,y             ; $05:D1CD: B9 01 09    ;
                CLC                     ; $05:D1D0: 18          ;
                ADC #$08                ; $05:D1D1: 69 08       ;
                STA $0901,y             ; $05:D1D3: 99 01 09    ;
                STA $090D,y             ; $05:D1D6: 99 0D 09    ;
                LDA $0905,y             ; $05:D1D9: B9 05 09    ;
                SEC                     ; $05:D1DC: 38          ;
                SBC #$18                ; $05:D1DD: E9 18       ;
                STA $0905,y             ; $05:D1DF: 99 05 09    ;
                STA $0911,y             ; $05:D1E2: 99 11 09    ;
                LDA $0909,y             ; $05:D1E5: B9 09 09    ;
                CLC                     ; $05:D1E8: 18          ;
                ADC #$20                ; $05:D1E9: 69 20       ;
                STA $0909,y             ; $05:D1EB: 99 09 09    ;
                STA $0915,y             ; $05:D1EE: 99 15 09    ;
CODE_05D1F1:    JSR CODE_05C9D3         ; $05:D1F1: 20 D3 C9    ;
                PLB                     ; $05:D1F4: AB          ;
                RTL                     ; $05:D1F5: 6B          ;

                PHA                     ; $05:D1F6: 48          ;
                PHB                     ; $05:D1F7: 8B          ;
                PHK                     ; $05:D1F8: 4B          ;
                PLB                     ; $05:D1F9: AB          ;
                LDA $07B2               ; $05:D1FA: AD B2 07    ;
                BEQ CODE_05D26F         ; $05:D1FD: F0 70       ;
                LDA $0FF4               ; $05:D1FF: AD F4 0F    ;
                STA $E4                 ; $05:D202: 85 E4       ;
                AND #$C0                ; $05:D204: 29 C0       ;
                BEQ CODE_05D26F         ; $05:D206: F0 67       ;
                LDA $09                 ; $05:D208: A5 09       ;
                AND #$07                ; $05:D20A: 29 07       ;
                BNE CODE_05D26F         ; $05:D20C: D0 61       ;
                LDA $E4                 ; $05:D20E: A5 E4       ;
                CMP #$40                ; $05:D210: C9 40       ;
                BNE CODE_05D226         ; $05:D212: D0 12       ;
                LDA #$17                ; $05:D214: A9 17       ;
                STA $07B2               ; $05:D216: 8D B2 07    ;
                INC $075F               ; $05:D219: EE 5F 07    ;
                LDA $075F               ; $05:D21C: AD 5F 07    ;
                CMP #$08                ; $05:D21F: C9 08       ;
                BCC CODE_05D226         ; $05:D221: 90 03       ;
                STZ $075F               ; $05:D223: 9C 5F 07    ;
CODE_05D226:    LDA $E4                 ; $05:D226: A5 E4       ;
                CMP #$80                ; $05:D228: C9 80       ;
                BNE CODE_05D23E         ; $05:D22A: D0 12       ;
                LDA #$17                ; $05:D22C: A9 17       ;
                STA $07B2               ; $05:D22E: 8D B2 07    ;
                INC $075C               ; $05:D231: EE 5C 07    ;
                LDA $075C               ; $05:D234: AD 5C 07    ;
                CMP #$04                ; $05:D237: C9 04       ;
                BCC CODE_05D23E         ; $05:D239: 90 03       ;
                STZ $075C               ; $05:D23B: 9C 5C 07    ;
CODE_05D23E:    LDX #$00                ; $05:D23E: A2 00       ;
CODE_05D240:    LDA DATA_05D2A6,x       ; $05:D240: BD A6 D2    ;
                STA $001702,x           ; $05:D243: 9F 02 17 00 ;
                INX                     ; $05:D247: E8          ;
                CPX #$0B                ; $05:D248: E0 0B       ;
                BCC CODE_05D240         ; $05:D24A: 90 F4       ;
                LDA $075F               ; $05:D24C: AD 5F 07    ;
                CLC                     ; $05:D24F: 18          ;
                ADC #$01                ; $05:D250: 69 01       ;
                STA $001706             ; $05:D252: 8F 06 17 00 ;
                LDA $075C               ; $05:D256: AD 5C 07    ;
                CLC                     ; $05:D259: 18          ;
                ADC #$01                ; $05:D25A: 69 01       ;
                STA $00170A             ; $05:D25C: 8F 0A 17 00 ;
                LDA $075F               ; $05:D260: AD 5F 07    ;
                ASL A                   ; $05:D263: 0A          ;
                ASL A                   ; $05:D264: 0A          ;
                ORA $075C               ; $05:D265: 0D 5C 07    ;
                TAX                     ; $05:D268: AA          ;
                LDA DATA_05D272,x       ; $05:D269: BD 72 D2    ;
                STA $0760               ; $05:D26C: 8D 60 07    ;
CODE_05D26F:    PLB                     ; $05:D26F: AB          ;
                PLA                     ; $05:D270: 68          ;
                RTL                     ; $05:D271: 6B          ;

DATA_05D272:    db $00,$02,$03,$04,$00,$02,$03,$04              ;
                db $00,$01,$02,$03,$00,$02,$03,$04              ;
                db $00,$01,$02,$03,$00,$01,$02,$03              ;
                db $00,$02,$03,$04,$00,$01,$02,$03              ;
                db $00,$01,$02,$03,$00,$02,$03,$04              ;
                db $00,$02,$03,$04,$00,$01,$02,$03              ;
                db $00,$01,$02,$03                              ;

DATA_05D2A6:    db $58,$73,$00,$05,$24,$20,$24,$20              ;
                db $24,$20,$FF                                  ;

CODE_05D2B1:    PHY                     ; $05:D2B1: 5A          ;
                LDY #$00                ; $05:D2B2: A0 00       ;
CODE_05D2B4:    LDA $0B25,y             ; $05:D2B4: B9 25 0B    ;
                BEQ CODE_05D2C0         ; $05:D2B7: F0 07       ;
                INY                     ; $05:D2B9: C8          ;
                CPY #$05                ; $05:D2BA: C0 05       ;
                BNE CODE_05D2B4         ; $05:D2BC: D0 F6       ;
                LDY #$00                ; $05:D2BE: A0 00       ;
CODE_05D2C0:    LDA #$01                ; $05:D2C0: A9 01       ;
                STA $0B25,y             ; $05:D2C2: 99 25 0B    ;
                LDA $5E,x               ; $05:D2C5: B5 5E       ;
                BPL CODE_05D2E0         ; $05:D2C7: 10 17       ;
                LDA $79,x               ; $05:D2C9: B5 79       ;
                XBA                     ; $05:D2CB: EB          ;
                LDA $021A,x             ; $05:D2CC: BD 1A 02    ;
                REP #$20                ; $05:D2CF: C2 20       ;
                SEC                     ; $05:D2D1: 38          ;
                SBC #$0008              ; $05:D2D2: E9 08 00    ;
                SEP #$20                ; $05:D2D5: E2 20       ;
                STA $0B2F,y             ; $05:D2D7: 99 2F 0B    ;
                XBA                     ; $05:D2DA: EB          ;
                STA $0B2A,y             ; $05:D2DB: 99 2A 0B    ;
                BRA CODE_05D2F5         ; $05:D2DE: 80 15       ;

CODE_05D2E0:    LDA $79,x               ; $05:D2E0: B5 79       ;
                XBA                     ; $05:D2E2: EB          ;
                LDA $021A,x             ; $05:D2E3: BD 1A 02    ;
                REP #$20                ; $05:D2E6: C2 20       ;
                CLC                     ; $05:D2E8: 18          ;
                ADC #$0008              ; $05:D2E9: 69 08 00    ;
                SEP #$20                ; $05:D2EC: E2 20       ;
                STA $0B2F,y             ; $05:D2EE: 99 2F 0B    ;
                XBA                     ; $05:D2F1: EB          ;
                STA $0B2A,y             ; $05:D2F2: 99 2A 0B    ;
CODE_05D2F5:    LDA $03B9               ; $05:D2F5: AD B9 03    ;
                CLC                     ; $05:D2F8: 18          ;
                ADC #$0C                ; $05:D2F9: 69 0C       ;
                STA $0B34,y             ; $05:D2FB: 99 34 0B    ;
                PLY                     ; $05:D2FE: 7A          ;
                RTL                     ; $05:D2FF: 6B          ;

CODE_05D300:    PHB                     ; $05:D300: 8B          ;
                PHK                     ; $05:D301: 4B          ;
                PLB                     ; $05:D302: AB          ;
                PHX                     ; $05:D303: DA          ;
                PHY                     ; $05:D304: 5A          ;
                LDX #$00                ; $05:D305: A2 00       ;
CODE_05D307:    LDA DATA_05D46D,x       ; $05:D307: BD 6D D4    ;
                TAY                     ; $05:D30A: A8          ;
                LDA $0B25,x             ; $05:D30B: BD 25 0B    ;
                BEQ CODE_05D330         ; $05:D30E: F0 20       ;
                AND #$0C                ; $05:D310: 29 0C       ;
                STA $E4                 ; $05:D312: 85 E4       ;
                BNE CODE_05D31B         ; $05:D314: D0 05       ;
                JSR CODE_05D339         ; $05:D316: 20 39 D3    ;
                BRA CODE_05D330         ; $05:D319: 80 15       ;

CODE_05D31B:    CMP #$04                ; $05:D31B: C9 04       ;
                BNE CODE_05D324         ; $05:D31D: D0 05       ;
                JSR CODE_05D374         ; $05:D31F: 20 74 D3    ;
                BRA CODE_05D330         ; $05:D322: 80 0C       ;

CODE_05D324:    CMP #$08                ; $05:D324: C9 08       ;
                BNE CODE_05D32D         ; $05:D326: D0 05       ;
                JSR CODE_05D3B4         ; $05:D328: 20 B4 D3    ;
                BRA CODE_05D330         ; $05:D32B: 80 03       ;

CODE_05D32D:    STZ $0B25,x             ; $05:D32D: 9E 25 0B    ;
CODE_05D330:    INX                     ; $05:D330: E8          ;
                CPX #$05                ; $05:D331: E0 05       ;
                BNE CODE_05D307         ; $05:D333: D0 D2       ;
                PLY                     ; $05:D335: 7A          ;
                PLX                     ; $05:D336: FA          ;
                PLB                     ; $05:D337: AB          ;
                RTL                     ; $05:D338: 6B          ;

CODE_05D339:    JSR CODE_05D458         ; $05:D339: 20 58 D4    ;
                LDA $0B3B               ; $05:D33C: AD 3B 0B    ;
                CLC                     ; $05:D33F: 18          ;
                ADC #$04                ; $05:D340: 69 04       ;
                STA $0801,y             ; $05:D342: 99 01 08    ;
                LDA #$26                ; $05:D345: A9 26       ;
                STA $0802,y             ; $05:D347: 99 02 08    ;
                LDA #$25                ; $05:D34A: A9 25       ;
                STA $0803,y             ; $05:D34C: 99 03 08    ;
                REP #$20                ; $05:D34F: C2 20       ;
                LDA $0B39               ; $05:D351: AD 39 0B    ;
                CLC                     ; $05:D354: 18          ;
                ADC #$0004              ; $05:D355: 69 04 00    ;
                SEC                     ; $05:D358: 38          ;
                SBC $42                 ; $05:D359: E5 42       ;
                STA $0B39               ; $05:D35B: 8D 39 0B    ;
                SEP #$20                ; $05:D35E: E2 20       ;
                LDA $0B39               ; $05:D360: AD 39 0B    ;
                STA $0800,y             ; $05:D363: 99 00 08    ;
                LDA $0B3A               ; $05:D366: AD 3A 0B    ;
                BEQ CODE_05D36D         ; $05:D369: F0 02       ;
                LDA #$01                ; $05:D36B: A9 01       ;
CODE_05D36D:    STA $0C00,y             ; $05:D36D: 99 00 0C    ;
                INC $0B25,x             ; $05:D370: FE 25 0B    ;
                RTS                     ; $05:D373: 60          ;

CODE_05D374:    JSR CODE_05D458         ; $05:D374: 20 58 D4    ;
                LDA $0B3B               ; $05:D377: AD 3B 0B    ;
                STA $0801,y             ; $05:D37A: 99 01 08    ;
                LDA #$60                ; $05:D37D: A9 60       ;
                STA $0802,y             ; $05:D37F: 99 02 08    ;
                LDA #$25                ; $05:D382: A9 25       ;
                STA $0803,y             ; $05:D384: 99 03 08    ;
                REP #$20                ; $05:D387: C2 20       ;
                LDA $0B39               ; $05:D389: AD 39 0B    ;
                SEC                     ; $05:D38C: 38          ;
                SBC $42                 ; $05:D38D: E5 42       ;
                STA $0B39               ; $05:D38F: 8D 39 0B    ;
                SEP #$20                ; $05:D392: E2 20       ;
                LDA $0B39               ; $05:D394: AD 39 0B    ;
                STA $0800,y             ; $05:D397: 99 00 08    ;
                LDA $0B3A               ; $05:D39A: AD 3A 0B    ;
                BEQ CODE_05D3A3         ; $05:D39D: F0 04       ;
                LDA #$03                ; $05:D39F: A9 03       ;
                BRA CODE_05D3A5         ; $05:D3A1: 80 02       ;

CODE_05D3A3:    LDA #$02                ; $05:D3A3: A9 02       ;
CODE_05D3A5:    STA $0C00,y             ; $05:D3A5: 99 00 0C    ;
                INC $0B25,x             ; $05:D3A8: FE 25 0B    ;
                RTS                     ; $05:D3AB: 60          ;

DATA_05D3AC:    db $FF,$FE,$FC,$F9                              ;

DATA_05D3B0:    db $01,$02,$04,$07                              ;

CODE_05D3B4:    STX $F1                 ; $05:D3B4: 86 F1       ;
                JSR CODE_05D458         ; $05:D3B6: 20 58 D4    ;
                LDA $0B25,x             ; $05:D3B9: BD 25 0B    ;
                AND #$03                ; $05:D3BC: 29 03       ;
                TAX                     ; $05:D3BE: AA          ;
                LDA $0B3B               ; $05:D3BF: AD 3B 0B    ;
                CLC                     ; $05:D3C2: 18          ;
                ADC DATA_05D3AC,x       ; $05:D3C3: 7D AC D3    ;
                STA $0801,y             ; $05:D3C6: 99 01 08    ;
                STA $0805,y             ; $05:D3C9: 99 05 08    ;
                LDA $0B3B               ; $05:D3CC: AD 3B 0B    ;
                CLC                     ; $05:D3CF: 18          ;
                ADC DATA_05D3B0,x       ; $05:D3D0: 7D B0 D3    ;
                CLC                     ; $05:D3D3: 18          ;
                ADC #$08                ; $05:D3D4: 69 08       ;
                STA $0809,y             ; $05:D3D6: 99 09 08    ;
                STA $080D,y             ; $05:D3D9: 99 0D 08    ;
                LDA #$39                ; $05:D3DC: A9 39       ;
                STA $0802,y             ; $05:D3DE: 99 02 08    ;
                STA $0806,y             ; $05:D3E1: 99 06 08    ;
                STA $080A,y             ; $05:D3E4: 99 0A 08    ;
                STA $080E,y             ; $05:D3E7: 99 0E 08    ;
                LDA #$25                ; $05:D3EA: A9 25       ;
                STA $0803,y             ; $05:D3EC: 99 03 08    ;
                STA $0807,y             ; $05:D3EF: 99 07 08    ;
                STA $080B,y             ; $05:D3F2: 99 0B 08    ;
                STA $080F,y             ; $05:D3F5: 99 0F 08    ;
                LDA DATA_05D3AC,x       ; $05:D3F8: BD AC D3    ;
                STA $EF                 ; $05:D3FB: 85 EF       ;
                LDA #$FF                ; $05:D3FD: A9 FF       ;
                STA $F0                 ; $05:D3FF: 85 F0       ;
                REP #$20                ; $05:D401: C2 20       ;
                LDA $0B39               ; $05:D403: AD 39 0B    ;
                SEC                     ; $05:D406: 38          ;
                SBC $42                 ; $05:D407: E5 42       ;
                CLC                     ; $05:D409: 18          ;
                ADC $EF                 ; $05:D40A: 65 EF       ;
                STA $ED                 ; $05:D40C: 85 ED       ;
                SEP #$20                ; $05:D40E: E2 20       ;
                LDA $ED                 ; $05:D410: A5 ED       ;
                STA $0800,y             ; $05:D412: 99 00 08    ;
                STA $0808,y             ; $05:D415: 99 08 08    ;
                LDA $EE                 ; $05:D418: A5 EE       ;
                BEQ CODE_05D41E         ; $05:D41A: F0 02       ;
                LDA #$01                ; $05:D41C: A9 01       ;
CODE_05D41E:    STA $0C00,y             ; $05:D41E: 99 00 0C    ;
                STA $0C08,y             ; $05:D421: 99 08 0C    ;
                LDA DATA_05D3B0,x       ; $05:D424: BD B0 D3    ;
                STA $EF                 ; $05:D427: 85 EF       ;
                STZ $F0                 ; $05:D429: 64 F0       ;
                REP #$20                ; $05:D42B: C2 20       ;
                LDA $0B39               ; $05:D42D: AD 39 0B    ;
                CLC                     ; $05:D430: 18          ;
                ADC #$0008              ; $05:D431: 69 08 00    ;
                SEC                     ; $05:D434: 38          ;
                SBC $42                 ; $05:D435: E5 42       ;
                CLC                     ; $05:D437: 18          ;
                ADC $EF                 ; $05:D438: 65 EF       ;
                STA $ED                 ; $05:D43A: 85 ED       ;
                SEP #$20                ; $05:D43C: E2 20       ;
                LDA $ED                 ; $05:D43E: A5 ED       ;
                STA $0804,y             ; $05:D440: 99 04 08    ;
                STA $080C,y             ; $05:D443: 99 0C 08    ;
                LDA $EE                 ; $05:D446: A5 EE       ;
                BEQ CODE_05D44C         ; $05:D448: F0 02       ;
                LDA #$01                ; $05:D44A: A9 01       ;
CODE_05D44C:    STA $0C04,y             ; $05:D44C: 99 04 0C    ;
                STA $0C0C,y             ; $05:D44F: 99 0C 0C    ;
                LDX $F1                 ; $05:D452: A6 F1       ;
                INC $0B25,x             ; $05:D454: FE 25 0B    ;
                RTS                     ; $05:D457: 60          ;

CODE_05D458:    LDA $0B34,x             ; $05:D458: BD 34 0B    ;
                STA $0B3B               ; $05:D45B: 8D 3B 0B    ;
                LDA $0B2A,x             ; $05:D45E: BD 2A 0B    ;
                XBA                     ; $05:D461: EB          ;
                LDA $0B2F,x             ; $05:D462: BD 2F 0B    ;
                REP #$20                ; $05:D465: C2 20       ;
                STA $0B39               ; $05:D467: 8D 39 0B    ;
                SEP #$20                ; $05:D46A: E2 20       ;
                RTS                     ; $05:D46C: 60          ;

DATA_05D46D:    db $00,$10,$20,$40,$50                          ;

CODE_05D472:    PHB                     ; $05:D472: 8B          ;
                PHK                     ; $05:D473: 4B          ;
                PLB                     ; $05:D474: AB          ;
                LDA $0201               ; $05:D475: AD 01 02    ;
                CMP #$01                ; $05:D478: C9 01       ;
                BEQ CODE_05D4EE         ; $05:D47A: F0 72       ;
                LDA $075F               ; $05:D47C: AD 5F 07    ;
                CMP #$08                ; $05:D47F: C9 08       ;
                BEQ CODE_05D4EE         ; $05:D481: F0 6B       ;
                LDA $BA                 ; $05:D483: A5 BA       ;
                CMP #$03                ; $05:D485: C9 03       ;
                BNE CODE_05D4EE         ; $05:D487: D0 65       ;
                LDA $96                 ; $05:D489: A5 96       ;
                BNE CODE_05D4EB         ; $05:D48B: D0 5E       ;
                LDA $02FC               ; $05:D48D: AD FC 02    ;
                BEQ CODE_05D4EE         ; $05:D490: F0 5C       ;
                LDX #$08                ; $05:D492: A2 08       ;
CODE_05D494:    LDA $1C,x               ; $05:D494: B5 1C       ;
                CMP #$2D                ; $05:D496: C9 2D       ;
                BEQ CODE_05D49F         ; $05:D498: F0 05       ;
CODE_05D49A:    DEX                     ; $05:D49A: CA          ;
                BPL CODE_05D494         ; $05:D49B: 10 F7       ;
                BRA CODE_05D4C2         ; $05:D49D: 80 23       ;

CODE_05D49F:    LDA $0238,x             ; $05:D49F: BD 38 02    ;
                CMP #$B8                ; $05:D4A2: C9 B8       ;
                BCC CODE_05D4EE         ; $05:D4A4: 90 48       ;
                LDA $10,x               ; $05:D4A6: B5 10       ;
                AND #$80                ; $05:D4A8: 29 80       ;
                BNE CODE_05D49A         ; $05:D4AA: D0 EE       ;
                LDA $021A,x             ; $05:D4AC: BD 1A 02    ;
                CLC                     ; $05:D4AF: 18          ;
                ADC #$10                ; $05:D4B0: 69 10       ;
                STA $02FA               ; $05:D4B2: 8D FA 02    ;
                LDA $79,x               ; $05:D4B5: B5 79       ;
                ADC #$00                ; $05:D4B7: 69 00       ;
                STA $02FB               ; $05:D4B9: 8D FB 02    ;
                LDA #$08                ; $05:D4BC: A9 08       ;
                STA $96                 ; $05:D4BE: 85 96       ;
                BRA CODE_05D4E1         ; $05:D4C0: 80 1F       ;

CODE_05D4C2:    LDX $02FC               ; $05:D4C2: AE FC 02    ;
                DEX                     ; $05:D4C5: CA          ;
                LDA $0238,x             ; $05:D4C6: BD 38 02    ;
                CMP #$B8                ; $05:D4C9: C9 B8       ;
                BCC CODE_05D4EE         ; $05:D4CB: 90 21       ;
                LDA $021A,x             ; $05:D4CD: BD 1A 02    ;
                CLC                     ; $05:D4D0: 18          ;
                ADC #$04                ; $05:D4D1: 69 04       ;
                STA $02FA               ; $05:D4D3: 8D FA 02    ;
                LDA $79,x               ; $05:D4D6: B5 79       ;
                ADC #$00                ; $05:D4D8: 69 00       ;
                STA $02FB               ; $05:D4DA: 8D FB 02    ;
                LDA #$04                ; $05:D4DD: A9 04       ;
                STA $96                 ; $05:D4DF: 85 96       ;
CODE_05D4E1:    LDA #$25                ; $05:D4E1: A9 25       ;\
                STA $1600               ; $05:D4E3: 8D 00 16    ;/Bowser lands in lava sound impact
                LDA #$20                ; $05:D4E6: A9 20       ;\
                STA $1603               ; $05:D4E8: 8D 03 16    ;/Bowser lands in lava sound
CODE_05D4EB:    JSR CODE_05D4F2         ; $05:D4EB: 20 F2 D4    ;
CODE_05D4EE:    JMP CODE_05E3BF         ; $05:D4EE: 4C BF E3    ;

                RTL                     ; $05:D4F1: 6B          ;

CODE_05D4F2:    LDA $96                 ; $05:D4F2: A5 96       ;
                STA $E4                 ; $05:D4F4: 85 E4       ;
                INC $02F9               ; $05:D4F6: EE F9 02    ;
                LDA $02F9               ; $05:D4F9: AD F9 02    ;
                LSR A                   ; $05:D4FC: 4A          ;
                LSR A                   ; $05:D4FD: 4A          ;
                CMP #$06                ; $05:D4FE: C9 06       ;
                BCS CODE_05D55D         ; $05:D500: B0 5B       ;
                STA $DD                 ; $05:D502: 85 DD       ;
                ASL A                   ; $05:D504: 0A          ;
                ASL A                   ; $05:D505: 0A          ;
                ASL A                   ; $05:D506: 0A          ;
                TAX                     ; $05:D507: AA          ;
                LDY #$20                ; $05:D508: A0 20       ;
                STZ $E9                 ; $05:D50A: 64 E9       ;
CODE_05D50C:    TXA                     ; $05:D50C: 8A          ;
                AND #$01                ; $05:D50D: 29 01       ;
                CLC                     ; $05:D50F: 18          ;
                ADC #$FF                ; $05:D510: 69 FF       ;
                STA $E8                 ; $05:D512: 85 E8       ;
                LDA DATA_05D563,x       ; $05:D514: BD 63 D5    ;
                STA $E7                 ; $05:D517: 85 E7       ;
                REP #$20                ; $05:D519: C2 20       ;
                LDA $E7                 ; $05:D51B: A5 E7       ;
                CLC                     ; $05:D51D: 18          ;
                ADC $02FA               ; $05:D51E: 6D FA 02    ;
                SEC                     ; $05:D521: 38          ;
                SBC $42                 ; $05:D522: E5 42       ;
                STA $E7                 ; $05:D524: 85 E7       ;
                SEP #$20                ; $05:D526: E2 20       ;
                LDA $E7                 ; $05:D528: A5 E7       ;
                STA $0800,y             ; $05:D52A: 99 00 08    ;
                LDA $E8                 ; $05:D52D: A5 E8       ;
                BEQ CODE_05D533         ; $05:D52F: F0 02       ;
                LDA #$00                ; $05:D531: A9 00       ;
CODE_05D533:    ORA $E9                 ; $05:D533: 05 E9       ;
                STA $0C00,y             ; $05:D535: 99 00 0C    ;
                LDA DATA_05D58B,x       ; $05:D538: BD 8B D5    ;
                CLC                     ; $05:D53B: 18          ;
                ADC #$D8                ; $05:D53C: 69 D8       ;
                STA $0801,y             ; $05:D53E: 99 01 08    ;
                PHX                     ; $05:D541: DA          ;
                LDX $DD                 ; $05:D542: A6 DD       ;
                LDA DATA_05D5BC,x       ; $05:D544: BD BC D5    ;
                STA $0802,y             ; $05:D547: 99 02 08    ;
                LDX $E4                 ; $05:D54A: A6 E4       ;
                LDA DATA_05D5B3,x       ; $05:D54C: BD B3 D5    ;
                STA $0803,y             ; $05:D54F: 99 03 08    ;
                PLX                     ; $05:D552: FA          ;
                INY                     ; $05:D553: C8          ;
                INY                     ; $05:D554: C8          ;
                INY                     ; $05:D555: C8          ;
                INY                     ; $05:D556: C8          ;
                INX                     ; $05:D557: E8          ;
                DEC $E4                 ; $05:D558: C6 E4       ;
                BNE CODE_05D50C         ; $05:D55A: D0 B0       ;
                RTS                     ; $05:D55C: 60          ;

CODE_05D55D:    STZ $02FC               ; $05:D55D: 9C FC 02    ;
                STZ $96                 ; $05:D560: 64 96       ;
                RTS                     ; $05:D562: 60          ;

DATA_05D563:    db $F6,$02,$F1,$07,$F2,$06,$ED,$0B              ;
                db $F3,$05,$EE,$0A,$EF,$09,$EA,$0E              ;
                db $F1,$07,$EC,$0C,$ED,$0B,$E8,$10              ;
                db $F0,$08,$EB,$0D,$EC,$0C,$E7,$11              ;
                db $EF,$09,$EA,$0E,$EB,$0D,$E6,$12              ;

DATA_05D58B:    db $F5,$F5,$F8,$F8,$F1,$F1,$F4,$F4              ;
                db $F4,$F4,$F7,$F7,$F0,$F0,$F3,$F3              ;
                db $F2,$F2,$F5,$F5,$EE,$EE,$F1,$F1              ;
                db $F1,$F1,$F4,$F4,$ED,$ED,$F0,$F0              ;
                db $F0,$F0,$F3,$F3,$EC,$EC,$EF,$EF              ;

DATA_05D5B3:    db $28,$68,$28,$68,$28,$68,$28,$68              ;
                db $28                                          ;

DATA_05D5BC:    db $33,$33,$34,$35,$36,$37                      ;

DATA_05D5C2:    db $F1,$FF,$F6,$FF,$02,$00,$07,$00              ;
                db $EE,$FF,$F3,$FF,$05,$00,$0A,$00              ;
                db $EC,$FF,$F1,$FF,$07,$00,$0C,$00              ;
                db $EB,$FF,$F0,$FF,$08,$00,$0D,$00              ;
                db $EA,$FF,$EF,$FF,$09,$00,$0E,$00              ;
                db $EA,$FF,$EF,$FF,$09,$00,$0E,$00              ;

DATA_05D5F2:    db $F8,$F5,$F5,$F8,$F7,$F4,$F4,$F7              ;
                db $F5,$F2,$F2,$F5,$F4,$F1,$F1,$F4              ;
                db $F3,$F0,$F0,$F3,$F3,$F0,$F0,$F3              ;

;tile number lava particles of when podoboo lands in lava
DATA_05D60A:    db $33,$33,$34,$35,$36,$37                      ;

DATA_05D610:    db $28,$28,$68,$68                              ;

;Podoboo: leave behind fire and lava particles
CODE_05D614:    PHB                     ; $05:D614: 8B          ;
                PHK                     ; $05:D615: 4B          ;
                PLB                     ; $05:D616: AB          ;
                PHX                     ; $05:D617: DA          ;
                PHY                     ; $05:D618: 5A          ;
                LDA $0B00,x             ; $05:D619: BD 00 0B    ;\
                CMP #$02                ; $05:D61C: C9 02       ; | Check if you left a fire particle mid-air
                BEQ CODE_05D657         ; $05:D61E: F0 37       ;/ If so, return
                LSR A                   ; $05:D620: 4A          ;\ Check if you landed in lava just now
                BCC CODE_05D66C         ; $05:D621: 90 49       ;/ If so, return
                LDA $0B09,x             ; $05:D623: BD 09 0B    ;\
                LSR A                   ; $05:D626: 4A          ; |
                LSR A                   ; $05:D627: 4A          ; |if $18, branch
                CMP #$06                ; $05:D628: C9 06       ; |
                BEQ CODE_05D659         ; $05:D62A: F0 2D       ;/
                TAY                     ; $05:D62C: A8          ;
                LDA DATA_05D60A,y       ; $05:D62D: B9 0A D6    ;\ Particle tile number in $ED
                STA $ED                 ; $05:D630: 85 ED       ;/
                LDA $021A,x             ; $05:D632: BD 1A 02    ;\ Store 16-bit sprite x position into $00
                STA $00                 ; $05:D635: 85 00       ; |
                LDA $79,x               ; $05:D637: B5 79       ; |
                STA $01                 ; $05:D639: 85 01       ; |
                REP #$20                ; $05:D63B: C2 20       ;\|
                LDA $00                 ; $05:D63D: A5 00       ; |
                CLC                     ; $05:D63F: 18          ; |Add 8 pixels to it, but subtract the left edge x-coordinate of the screen. store into $00-01 
                ADC #$0008              ; $05:D640: 69 08 00    ; |
                SEC                     ; $05:D643: 38          ; |
                SBC $42                 ; $05:D644: E5 42       ; |
                STA $00                 ; $05:D646: 85 00       ; |
                SEP #$20                ; $05:D648: E2 20       ;/
                LDA $0B46,x             ; $05:D64A: BD 46 0B    ;
                CLC                     ; $05:D64D: 18          ;
                ADC #$04                ; $05:D64E: 69 04       ;
                STA $F2                 ; $05:D650: 85 F2       ;
                JSR CODE_05D73C         ; $05:D652: 20 3C D7    ;
                BRA CODE_05D66C         ; $05:D655: 80 15       ;

CODE_05D657:    BRA CODE_05D69D         ; $05:D657: 80 44       ;

CODE_05D659:    INC $0B00,x             ; $05:D659: FE 00 0B    ; Executes after a particle has been placed.
                STZ $0B09,x             ; $05:D65C: 9E 09 0B    ;
                LDA $0B00,x             ; $05:D65F: BD 00 0B    ;\
                CMP #$02                ; $05:D662: C9 02       ; |
                BNE CODE_05D66C         ; $05:D664: D0 06       ; | If the generated particle in question is the mid-air fire particle
                LDA $0238,x             ; $05:D666: BD 38 02    ;\| Set Y position of mid-air particle
                STA $0B12,x             ; $05:D669: 9D 12 0B    ;/
CODE_05D66C:    PLY                     ; $05:D66C: 7A          ; Return
                PLX                     ; $05:D66D: FA          ;
                PLB                     ; $05:D66E: AB          ;
                RTL                     ; $05:D66F: 6B          ;

DATA_05D670:    db $FF,$FF,$FA,$FF,$FA,$FF,$FA,$FF              ;
                db $FF,$FF                                      ;

DATA_05D67A:    db $00,$00,$00,$00,$00,$00,$FE,$FF              ;
                db $FE,$FF                                      ;

DATA_05D684:    db $FF,$00,$00,$00,$FF                          ;

DATA_05D689:    db $12,$12,$12,$10,$10                          ;

DATA_05D68E:    db $FC,$30,$31,$32,$FC                          ;

DATA_05D693:    db $30,$31,$32,$FC,$FC                          ;

DATA_05D698:    db $FF,$FF,$FF,$00,$00                          ;

CODE_05D69D:    LDA $0B09,x             ; $05:D69D: BD 09 0B    ;\
                LSR A                   ; $05:D6A0: 4A          ; |
                LSR A                   ; $05:D6A1: 4A          ; |If less than #$28, branch
                LSR A                   ; $05:D6A2: 4A          ; |
                CMP #$05                ; $05:D6A3: C9 05       ; |
                BCC CODE_05D6AF         ; $05:D6A5: 90 08       ;/
                LDA #$30                ; $05:D6A7: A9 30       ;\If $28 or higher, just set it to $30
                STA $0B09,x             ; $05:D6A9: 9D 09 0B    ; |
                JMP CODE_05D739         ; $05:D6AC: 4C 39 D7    ;/Then return

CODE_05D6AF:    STA $EB                 ; $05:D6AF: 85 EB       ;
                ASL A                   ; $05:D6B1: 0A          ;
                TAY                     ; $05:D6B2: A8          ;
                LDA $021A,x             ; $05:D6B3: BD 1A 02    ;
                STA $00                 ; $05:D6B6: 85 00       ;
                LDA $79,x               ; $05:D6B8: B5 79       ;
                STA $01                 ; $05:D6BA: 85 01       ;
                REP #$20                ; $05:D6BC: C2 20       ;
                LDA $00                 ; $05:D6BE: A5 00       ;
                CLC                     ; $05:D6C0: 18          ;
                ADC #$0008              ; $05:D6C1: 69 08 00    ;
                SEC                     ; $05:D6C4: 38          ;
                SBC $42                 ; $05:D6C5: E5 42       ;
                PHA                     ; $05:D6C7: 48          ;
                CLC                     ; $05:D6C8: 18          ;
                ADC DATA_05D670,y       ; $05:D6C9: 79 70 D6    ;
                STA $00                 ; $05:D6CC: 85 00       ;
                PLA                     ; $05:D6CE: 68          ;
                CLC                     ; $05:D6CF: 18          ;
                ADC DATA_05D67A,y       ; $05:D6D0: 79 7A D6    ;
                STA $02                 ; $05:D6D3: 85 02       ;
                SEP #$20                ; $05:D6D5: E2 20       ;
                LDY $EB                 ; $05:D6D7: A4 EB       ;
                LDA DATA_05D698,y       ; $05:D6D9: B9 98 D6    ;
                CLC                     ; $05:D6DC: 18          ;
                ADC $0B12,x             ; $05:D6DD: 7D 12 0B    ;
                STA $0B12,x             ; $05:D6E0: 9D 12 0B    ;
                LDA DATA_05D684,y       ; $05:D6E3: B9 84 D6    ;
                CLC                     ; $05:D6E6: 18          ;
                ADC $0B12,x             ; $05:D6E7: 7D 12 0B    ;
                STA $04                 ; $05:D6EA: 85 04       ;
                LDA DATA_05D689,y       ; $05:D6EC: B9 89 D6    ;
                CLC                     ; $05:D6EF: 18          ;
                ADC $0B12,x             ; $05:D6F0: 7D 12 0B    ;
                STA $ED                 ; $05:D6F3: 85 ED       ;
                LDA $0B46,x             ; $05:D6F5: BD 46 0B    ;
                TAY                     ; $05:D6F8: A8          ;
                INY                     ; $05:D6F9: C8          ;
                INY                     ; $05:D6FA: C8          ;
                INY                     ; $05:D6FB: C8          ;
                INY                     ; $05:D6FC: C8          ;
                LDX $EB                 ; $05:D6FD: A6 EB       ;
                LDA $00                 ; $05:D6FF: A5 00       ;
                STA $0900,y             ; $05:D701: 99 00 09    ;
                LDA $02                 ; $05:D704: A5 02       ;
                STA $0904,y             ; $05:D706: 99 04 09    ;
                LDA $04                 ; $05:D709: A5 04       ;
                STA $0901,y             ; $05:D70B: 99 01 09    ;
                LDA $ED                 ; $05:D70E: A5 ED       ;
                STA $0905,y             ; $05:D710: 99 05 09    ;
                LDA DATA_05D68E,x       ; $05:D713: BD 8E D6    ;
                STA $0902,y             ; $05:D716: 99 02 09    ;
                LDA DATA_05D693,x       ; $05:D719: BD 93 D6    ;
                STA $0906,y             ; $05:D71C: 99 06 09    ;
                LDA #$28                ; $05:D71F: A9 28       ;
                STA $0903,y             ; $05:D721: 99 03 09    ;
                STA $0907,y             ; $05:D724: 99 07 09    ;
                LDA $01                 ; $05:D727: A5 01       ;
                BEQ CODE_05D730         ; $05:D729: F0 05       ;
                LDA #$01                ; $05:D72B: A9 01       ;
                STA $0D00,y             ; $05:D72D: 99 00 0D    ;
CODE_05D730:    LDA $03                 ; $05:D730: A5 03       ;
                BEQ CODE_05D739         ; $05:D732: F0 05       ;
                LDA #$01                ; $05:D734: A9 01       ;
                STA $0D04,y             ; $05:D736: 99 04 0D    ;
CODE_05D739:    JMP CODE_05D66C         ; $05:D739: 4C 6C D6    ;

CODE_05D73C:    STY $EC                 ; $05:D73C: 84 EC       ;
                LDX #$00                ; $05:D73E: A2 00       ;
CODE_05D740:    LDA $EC                 ; $05:D740: A5 EC       ;
                ASL A                   ; $05:D742: 0A          ;
                ASL A                   ; $05:D743: 0A          ;
                STA $EB                 ; $05:D744: 85 EB       ;
                TXA                     ; $05:D746: 8A          ;
                CLC                     ; $05:D747: 18          ;
                ADC $EB                 ; $05:D748: 65 EB       ;
                TAY                     ; $05:D74A: A8          ;
                LDA #$D8                ; $05:D74B: A9 D8       ;
                CLC                     ; $05:D74D: 18          ;
                ADC DATA_05D5F2,y       ; $05:D74E: 79 F2 D5    ;
                STA $EE                 ; $05:D751: 85 EE       ;
                LDA DATA_05D610,x       ; $05:D753: BD 10 D6    ;
                STA $EF                 ; $05:D756: 85 EF       ;
                TYA                     ; $05:D758: 98          ;
                ASL A                   ; $05:D759: 0A          ;
                TAY                     ; $05:D75A: A8          ;
                REP #$20                ; $05:D75B: C2 20       ;
                LDA DATA_05D5C2,y       ; $05:D75D: B9 C2 D5    ;
                CLC                     ; $05:D760: 18          ;
                ADC $00                 ; $05:D761: 65 00       ;
                STA $F0                 ; $05:D763: 85 F0       ;
                SEP #$20                ; $05:D765: E2 20       ;
                TXA                     ; $05:D767: 8A          ;
                ASL A                   ; $05:D768: 0A          ;
                ASL A                   ; $05:D769: 0A          ;
                CLC                     ; $05:D76A: 18          ;
                ADC $F2                 ; $05:D76B: 65 F2       ;
                TAY                     ; $05:D76D: A8          ;
                LDA $F0                 ; $05:D76E: A5 F0       ;
                STA $0900,y             ; $05:D770: 99 00 09    ;
                LDA $EE                 ; $05:D773: A5 EE       ;
                STA $0901,y             ; $05:D775: 99 01 09    ;
                LDA $ED                 ; $05:D778: A5 ED       ;
                STA $0902,y             ; $05:D77A: 99 02 09    ;
                LDA $EF                 ; $05:D77D: A5 EF       ;
                STA $0903,y             ; $05:D77F: 99 03 09    ;
                LDA $F1                 ; $05:D782: A5 F1       ;
                BEQ CODE_05D78B         ; $05:D784: F0 05       ;
                LDA #$01                ; $05:D786: A9 01       ;
                STA $0D00,y             ; $05:D788: 99 00 0D    ;
CODE_05D78B:    INX                     ; $05:D78B: E8          ;
                CPX #$04                ; $05:D78C: E0 04       ;
                BNE CODE_05D740         ; $05:D78E: D0 B0       ;
                RTS                     ; $05:D790: 60          ;

                db $1C,$0E,$06,$08                              ;

DATA_05D795:    db $18,$16,$1A,$14                              ;

DATA_05D799:    db $D0,$E0,$E1,$FC                              ;

DATA_05D79D:    db $00,$FC,$F8,$F4                              ;

CODE_05D7A1:    PHB                     ; $05:D7A1: 8B          ;
                PHK                     ; $05:D7A2: 4B          ;
                PLB                     ; $05:D7A3: AB          ;
                PHX                     ; $05:D7A4: DA          ;
                PHY                     ; $05:D7A5: 5A          ;
                LDA $0E40               ; $05:D7A6: AD 40 0E    ;
                BNE CODE_05D7AE         ; $05:D7A9: D0 03       ;
                JSR CODE_05D7C2         ; $05:D7AB: 20 C2 D7    ;
CODE_05D7AE:    JSR CODE_05D7D1         ; $05:D7AE: 20 D1 D7    ;
                LDA $0E42               ; $05:D7B1: AD 42 0E    ;
                AND #$20                ; $05:D7B4: 29 20       ;
                BEQ CODE_05D7BE         ; $05:D7B6: F0 06       ;
                STZ $0E40               ; $05:D7B8: 9C 40 0E    ;
                STZ $0E41               ; $05:D7BB: 9C 41 0E    ;
CODE_05D7BE:    PLY                     ; $05:D7BE: 7A          ;
                PLX                     ; $05:D7BF: FA          ;
                PLB                     ; $05:D7C0: AB          ;
                RTL                     ; $05:D7C1: 6B          ;

CODE_05D7C2:    LDX #$03                ; $05:D7C2: A2 03       ;
CODE_05D7C4:    LDA DATA_05D79D,x       ; $05:D7C4: BD 9D D7    ;
                STA $0E42,x             ; $05:D7C7: 9D 42 0E    ;
                DEX                     ; $05:D7CA: CA          ;
                BPL CODE_05D7C4         ; $05:D7CB: 10 F7       ;
                INC $0E40               ; $05:D7CD: EE 40 0E    ;
                RTS                     ; $05:D7D0: 60          ;

CODE_05D7D1:    LDX #$03                ; $05:D7D1: A2 03       ;
                LDY #$30                ; $05:D7D3: A0 30       ;
CODE_05D7D5:    LDA $0E42,x             ; $05:D7D5: BD 42 0E    ;
                BMI CODE_05D805         ; $05:D7D8: 30 2B       ;
                BNE CODE_05D7DF         ; $05:D7DA: D0 03       ;
                JSR CODE_05D815         ; $05:D7DC: 20 15 D8    ;
CODE_05D7DF:    LSR A                   ; $05:D7DF: 4A          ;
                LSR A                   ; $05:D7E0: 4A          ;
                CMP #$03                ; $05:D7E1: C9 03       ;
                BCS CODE_05D805         ; $05:D7E3: B0 20       ;
                PHX                     ; $05:D7E5: DA          ;
                TAX                     ; $05:D7E6: AA          ;
                LDA DATA_05D799,x       ; $05:D7E7: BD 99 D7    ;
                STA $0802,y             ; $05:D7EA: 99 02 08    ;
                LDA #$38                ; $05:D7ED: A9 38       ;
                STA $0803,y             ; $05:D7EF: 99 03 08    ;
                PLX                     ; $05:D7F2: FA          ;
                LDA $0E46,x             ; $05:D7F3: BD 46 0E    ;
                SEC                     ; $05:D7F6: 38          ;
                SBC $071C               ; $05:D7F7: ED 1C 07    ;
                STA $0800,y             ; $05:D7FA: 99 00 08    ;
                LDA $0E4A,x             ; $05:D7FD: BD 4A 0E    ;
                STA $0801,y             ; $05:D800: 99 01 08    ;
                BRA CODE_05D80A         ; $05:D803: 80 05       ;

CODE_05D805:    LDA #$F0                ; $05:D805: A9 F0       ;
                STA $0801,y             ; $05:D807: 99 01 08    ;
CODE_05D80A:    INY                     ; $05:D80A: C8          ;
                INY                     ; $05:D80B: C8          ;
                INY                     ; $05:D80C: C8          ;
                INY                     ; $05:D80D: C8          ;
                INC $0E42,x             ; $05:D80E: FE 42 0E    ;
                DEX                     ; $05:D811: CA          ;
                BPL CODE_05D7D5         ; $05:D812: 10 C1       ;
                RTS                     ; $05:D814: 60          ;

CODE_05D815:    LDA $0202               ; $05:D815: AD 02 02    ;
                LSR A                   ; $05:D818: 4A          ;
                BCC CODE_05D823         ; $05:D819: 90 08       ;
                LDA $0219               ; $05:D81B: AD 19 02    ;
                CLC                     ; $05:D81E: 18          ;
                ADC #$06                ; $05:D81F: 69 06       ;
                BRA CODE_05D829         ; $05:D821: 80 06       ;

CODE_05D823:    LDA $0219               ; $05:D823: AD 19 02    ;
                CLC                     ; $05:D826: 18          ;
                ADC #$02                ; $05:D827: 69 02       ;
CODE_05D829:    STA $0E46,x             ; $05:D829: 9D 46 0E    ;
                LDA $06D5               ; $05:D82C: AD D5 06    ;
                CMP #$18                ; $05:D82F: C9 18       ;
                BEQ CODE_05D837         ; $05:D831: F0 04       ;
                CMP #$78                ; $05:D833: C9 78       ;
                BNE CODE_05D84A         ; $05:D835: D0 13       ;
CODE_05D837:    LDA $07B8               ; $05:D837: AD B8 07    ;
                AND #$04                ; $05:D83A: 29 04       ;
                SEC                     ; $05:D83C: 38          ;
                SBC #$02                ; $05:D83D: E9 02       ;
                CLC                     ; $05:D83F: 18          ;
                ADC $03B8               ; $05:D840: 6D B8 03    ;
                ADC DATA_05D795         ; $05:D843: 6D 95 D7    ;
                STA $0E4A,x             ; $05:D846: 9D 4A 0E    ;
                RTS                     ; $05:D849: 60          ;

CODE_05D84A:    LDA #$F8                ; $05:D84A: A9 F8       ;
                STA $0E4A,x             ; $05:D84C: 9D 4A 0E    ;
                RTS                     ; $05:D84F: 60          ;

DATA_05D850:    db $00,$A5,$40,$28,$C4,$39,$00,$D0              ;
                db $40,$12,$C8,$39,$00,$F0,$40,$12              ;
                db $C8,$39,$01,$10,$40,$12,$C8,$39              ;
                db $01,$30,$40,$12,$C8,$39,$00,$C5              ;
                db $C0,$10,$C5,$39,$01,$59,$C0,$06              ;
                db $C8,$39,$00,$DA,$C0,$10,$C6,$39              ;
                db $00,$A5,$00,$01,$C0,$39,$00,$BA              ;
                db $00,$01,$C1,$39,$01,$E5,$00,$01              ;
                db $C2,$39,$01,$FA,$00,$01,$C3,$39              ;
                db $00,$C6,$00,$13,$C9,$39,$CA,$39              ;
                db $D1,$39,$D1,$39,$D5,$39,$C9,$79              ;
                db $C9,$39,$F5,$39,$D5,$39,$C9,$79              ;
                db $00,$E6,$00,$13,$CB,$39,$CC,$39              ;
                db $D2,$39,$D2,$39,$D2,$39,$D6,$39              ;
                db $DA,$39,$DC,$39,$D2,$39,$DE,$39              ;
                db $01,$06,$00,$13,$CD,$39,$CE,$39              ;
                db $D3,$39,$D4,$39,$D7,$39,$D8,$39              ;
                db $D3,$39,$DB,$39,$D7,$39,$DF,$39              ;
                db $01,$26,$00,$13,$CF,$39,$D0,$39              ;
                db $CF,$39,$D0,$39,$D9,$39,$C8,$39              ;
                db $CF,$39,$DD,$39,$D9,$39,$DD,$39              ;
                db $01,$38,$00,$03,$5F,$38,$7A,$38              ;
                db $01,$46,$00,$25,$C9,$39,$E0,$39              ;
                db $C9,$79,$C9,$39,$C9,$79,$D5,$39              ;
                db $C9,$79,$D1,$39,$C9,$39,$C9,$79              ;
                db $C8,$39,$D5,$39,$C9,$79,$D5,$39              ;
                db $C9,$79,$C9,$39,$C9,$79,$C9,$39              ;
                db $C9,$79,$01,$66,$00,$25,$E3,$39              ;
                db $E1,$39,$E1,$39,$E3,$39,$E1,$39              ;
                db $E3,$39,$F4,$39,$E3,$39,$E3,$39              ;
                db $F4,$39,$C8,$39,$E3,$39,$F4,$39              ;
                db $E3,$39,$F4,$19,$E3,$39,$F4,$39              ;
                db $E3,$39,$EE,$39,$01,$86,$00,$25              ;
                db $E3,$39,$E3,$39,$E3,$39,$E3,$39              ;
                db $E3,$39,$E3,$39,$E8,$39,$E3,$39              ;
                db $E3,$39,$E3,$39,$C8,$39,$E3,$39              ;
                db $E8,$39,$E3,$39,$E8,$39,$E3,$39              ;
                db $E3,$39,$EF,$39,$F0,$39,$01,$A6              ;
                db $00,$25,$D2,$39,$D2,$39,$D2,$39              ;
                db $E5,$39,$E6,$39,$D2,$39,$F3,$39              ;
                db $D2,$39,$D2,$39,$D2,$39,$C8,$39              ;
                db $D2,$39,$F3,$39,$D2,$39,$F3,$39              ;
                db $D2,$39,$D2,$39,$F1,$39,$F6,$39              ;
                db $01,$C6,$00,$27,$D7,$39,$D7,$39              ;
                db $D7,$39,$D7,$39,$E7,$39,$D7,$39              ;
                db $D7,$39,$D7,$39,$D3,$39,$D4,$39              ;
                db $C8,$39,$D7,$39,$EC,$39,$D7,$39              ;
                db $D7,$39,$D3,$39,$D4,$39,$D3,$39              ;
                db $D4,$39,$F2,$39,$01,$E6,$40,$0E              ;
                db $E4,$39,$01,$EE,$00,$17,$EA,$39              ;
                db $EB,$39,$C7,$39,$E4,$39,$ED,$39              ;
                db $E4,$39,$E4,$39,$EA,$39,$EB,$39              ;
                db $EA,$39,$EB,$39,$E4,$39,$02,$08              ;
                db $00,$25,$2F,$06,$01,$04,$09,$04              ;
                db $08,$04,$05,$04,$24,$04,$01,$04              ;
                db $09,$04,$09,$04,$03,$04,$24,$04              ;
                db $17,$04,$12,$04,$17,$04,$1D,$04              ;
                db $0E,$04,$17,$04,$0D,$04,$18,$04              ;
                db $02,$4A,$00,$19,$01,$08,$24,$00              ;
                db $19,$08,$15,$08,$0A,$08,$22,$08              ;
                db $0E,$08,$1B,$08,$24,$00,$10,$08              ;
                db $0A,$08,$16,$08,$0E,$08,$02,$8A              ;
                db $00,$19,$02,$08,$24,$00,$19,$08              ;
                db $15,$08,$0A,$08,$22,$08,$0E,$08              ;
                db $1B,$08,$24,$00,$10,$08,$0A,$08              ;
                db $16,$08,$0E,$08,$02,$EB,$00,$07              ;
                db $1D,$08,$18,$08,$19,$08,$28,$08              ;
                db $02,$F5,$00,$01,$00,$08,$FF,$FF              ;
                db $00,$30                                      ;

CODE_05DA72:    PHB                     ; $05:DA72: 8B          ;
                PHK                     ; $05:DA73: 4B          ;
                PLB                     ; $05:DA74: AB          ;
                STY $00                 ; $05:DA75: 84 00       ;
                LDA $03B9               ; $05:DA77: AD B9 03    ;
                LDX $039A,y             ; $05:DA7A: BE 9A 03    ;
                LDY $0B46,x             ; $05:DA7D: BC 46 0B    ;
                STY $02                 ; $05:DA80: 84 02       ;
                DEC A                   ; $05:DA82: 3A          ;
                JSR CODE_05DAFF         ; $05:DA83: 20 FF DA    ;
                LDA $03AE               ; $05:DA86: AD AE 03    ;
                STA $0900,y             ; $05:DA89: 99 00 09    ;
                STA $0908,y             ; $05:DA8C: 99 08 09    ;
                STA $0910,y             ; $05:DA8F: 99 10 09    ;
                STA $0904,y             ; $05:DA92: 99 04 09    ;
                STA $090C,y             ; $05:DA95: 99 0C 09    ;
                STA $0914,y             ; $05:DA98: 99 14 09    ;
                STA $0918,y             ; $05:DA9B: 99 18 09    ;
                STA $091C,y             ; $05:DA9E: 99 1C 09    ;
                STA $0920,y             ; $05:DAA1: 99 20 09    ;
                LDA #$1B                ; $05:DAA4: A9 1B       ;
                STA $0903,y             ; $05:DAA6: 99 03 09    ;
                STA $090B,y             ; $05:DAA9: 99 0B 09    ;
                STA $0913,y             ; $05:DAAC: 99 13 09    ;
                STA $0907,y             ; $05:DAAF: 99 07 09    ;
                STA $090F,y             ; $05:DAB2: 99 0F 09    ;
                STA $0917,y             ; $05:DAB5: 99 17 09    ;
                STA $091B,y             ; $05:DAB8: 99 1B 09    ;
                STA $091F,y             ; $05:DABB: 99 1F 09    ;
                STA $0923,y             ; $05:DABE: 99 23 09    ;
                LDX #$08                ; $05:DAC1: A2 08       ;
CODE_05DAC3:    LDA #$2C                ; $05:DAC3: A9 2C       ;
                STA $0902,y             ; $05:DAC5: 99 02 09    ;
                INY                     ; $05:DAC8: C8          ;
                INY                     ; $05:DAC9: C8          ;
                INY                     ; $05:DACA: C8          ;
                INY                     ; $05:DACB: C8          ;
                DEX                     ; $05:DACC: CA          ;
                BPL CODE_05DAC3         ; $05:DACD: 10 F4       ;
                LDY $02                 ; $05:DACF: A4 02       ;
                LDA $0000               ; $05:DAD1: AD 00 00    ;
                BNE CODE_05DADB         ; $05:DAD4: D0 05       ;
                LDA #$2A                ; $05:DAD6: A9 2A       ;
                STA $0902,y             ; $05:DAD8: 99 02 09    ;
CODE_05DADB:    LDA $0399               ; $05:DADB: AD 99 03    ;
                LSR A                   ; $05:DADE: 4A          ;
                LSR A                   ; $05:DADF: 4A          ;
                LSR A                   ; $05:DAE0: 4A          ;
                LSR A                   ; $05:DAE1: 4A          ;
                INC A                   ; $05:DAE2: 1A          ;
                TAX                     ; $05:DAE3: AA          ;
                ASL A                   ; $05:DAE4: 0A          ;
                ASL A                   ; $05:DAE5: 0A          ;
                CLC                     ; $05:DAE6: 18          ;
                ADC $02                 ; $05:DAE7: 65 02       ;
                TAY                     ; $05:DAE9: A8          ;
CODE_05DAEA:    CPX #$09                ; $05:DAEA: E0 09       ;
                BCS CODE_05DAFA         ; $05:DAEC: B0 0C       ;
                LDA #$F0                ; $05:DAEE: A9 F0       ;
                STA $0901,y             ; $05:DAF0: 99 01 09    ;
                INY                     ; $05:DAF3: C8          ;
                INY                     ; $05:DAF4: C8          ;
                INY                     ; $05:DAF5: C8          ;
                INY                     ; $05:DAF6: C8          ;
                INX                     ; $05:DAF7: E8          ;
                BRA CODE_05DAEA         ; $05:DAF8: 80 F0       ;

CODE_05DAFA:    LDY $0000               ; $05:DAFA: AC 00 00    ;
                PLB                     ; $05:DAFD: AB          ;
                RTL                     ; $05:DAFE: 6B          ;

CODE_05DAFF:    LDX #$09                ; $05:DAFF: A2 09       ;
CODE_05DB01:    STA $0901,y             ; $05:DB01: 99 01 09    ;
                PHA                     ; $05:DB04: 48          ;
                LDA $0223               ; $05:DB05: AD 23 02    ;
                STA $E4                 ; $05:DB08: 85 E4       ;
                LDA $82                 ; $05:DB0A: A5 82       ;
                STA $E5                 ; $05:DB0C: 85 E5       ;
                REP #$20                ; $05:DB0E: C2 20       ;
                LDA $E4                 ; $05:DB10: A5 E4       ;
                SEC                     ; $05:DB12: 38          ;
                SBC $42                 ; $05:DB13: E5 42       ;
                STA $E4                 ; $05:DB15: 85 E4       ;
                SEP #$20                ; $05:DB17: E2 20       ;
                LDA #$02                ; $05:DB19: A9 02       ;
                STA $DD                 ; $05:DB1B: 85 DD       ;
                LDA $E5                 ; $05:DB1D: A5 E5       ;
                BEQ CODE_05DB23         ; $05:DB1F: F0 02       ;
                LDA #$01                ; $05:DB21: A9 01       ;
CODE_05DB23:    ORA $DD                 ; $05:DB23: 05 DD       ;
                STA $0D00,y             ; $05:DB25: 99 00 0D    ;
                LDA $0236               ; $05:DB28: AD 36 02    ;
                BNE CODE_05DB3B         ; $05:DB2B: D0 0E       ;
                LDA $0901,y             ; $05:DB2D: B9 01 09    ;
                BPL CODE_05DB3B         ; $05:DB30: 10 09       ;
                CMP #$F0                ; $05:DB32: C9 F0       ;
                BCS CODE_05DB3B         ; $05:DB34: B0 05       ;
                LDA #$F0                ; $05:DB36: A9 F0       ;
                STA $0901,y             ; $05:DB38: 99 01 09    ;
CODE_05DB3B:    PLA                     ; $05:DB3B: 68          ;
                CLC                     ; $05:DB3C: 18          ;
                ADC #$10                ; $05:DB3D: 69 10       ;
                INY                     ; $05:DB3F: C8          ;
                INY                     ; $05:DB40: C8          ;
                INY                     ; $05:DB41: C8          ;
                INY                     ; $05:DB42: C8          ;
                DEX                     ; $05:DB43: CA          ;
                BNE CODE_05DB01         ; $05:DB44: D0 BB       ;
                LDY $02                 ; $05:DB46: A4 02       ;
                RTS                     ; $05:DB48: 60          ;

CODE_05DB49:    LDY $0B53               ; $05:DB49: AC 53 0B    ;
                REP #$20                ; $05:DB4C: C2 20       ;
                LDA $0E70               ; $05:DB4E: AD 70 0E    ;
                SEC                     ; $05:DB51: 38          ;
                SBC $42                 ; $05:DB52: E5 42       ;
                STA $0E6B               ; $05:DB54: 8D 6B 0E    ;
                SEP #$20                ; $05:DB57: E2 20       ;
                LDA $0E6F               ; $05:DB59: AD 6F 0E    ;
                BNE CODE_05DB89         ; $05:DB5C: D0 2B       ;
                LDA $0E6D               ; $05:DB5E: AD 6D 0E    ;
                STA $0801,y             ; $05:DB61: 99 01 08    ;
                LDA $0E6B               ; $05:DB64: AD 6B 0E    ;
                JSR CODE_05DC6F         ; $05:DB67: 20 6F DC    ;
                STA $0800,y             ; $05:DB6A: 99 00 08    ;
                LDA #$26                ; $05:DB6D: A9 26       ;
                STA $0802,y             ; $05:DB6F: 99 02 08    ;
                LDA #$29                ; $05:DB72: A9 29       ;
                STA $0803,y             ; $05:DB74: 99 03 08    ;
                DEC $0E6E               ; $05:DB77: CE 6E 0E    ;
                BEQ CODE_05DB7F         ; $05:DB7A: F0 03       ;
                JMP CODE_05DC03         ; $05:DB7C: 4C 03 DC    ;

CODE_05DB7F:    LDA #$06                ; $05:DB7F: A9 06       ;
                STA $0E6E               ; $05:DB81: 8D 6E 0E    ;
                INC $0E6F               ; $05:DB84: EE 6F 0E    ;
                BRA CODE_05DC03         ; $05:DB87: 80 7A       ;

CODE_05DB89:    LDA $0E6F               ; $05:DB89: AD 6F 0E    ;
                CMP #$06                ; $05:DB8C: C9 06       ;
                BCS CODE_05DC03         ; $05:DB8E: B0 73       ;
                PHX                     ; $05:DB90: DA          ;
                LDX $0E6F               ; $05:DB91: AE 6F 0E    ;
                LDA DATA_05DC35,x       ; $05:DB94: BD 35 DC    ;
                CLC                     ; $05:DB97: 18          ;
                ADC $0E6B               ; $05:DB98: 6D 6B 0E    ;
                STA $0800,y             ; $05:DB9B: 99 00 08    ;
                STA $0804,y             ; $05:DB9E: 99 04 08    ;
                JSR CODE_05DC6F         ; $05:DBA1: 20 6F DC    ;
                LDA DATA_05DC41,x       ; $05:DBA4: BD 41 DC    ;
                CLC                     ; $05:DBA7: 18          ;
                ADC $0E6D               ; $05:DBA8: 6D 6D 0E    ;
                STA $0801,y             ; $05:DBAB: 99 01 08    ;
                CLC                     ; $05:DBAE: 18          ;
                ADC #$08                ; $05:DBAF: 69 08       ;
                STA $0805,y             ; $05:DBB1: 99 05 08    ;
                LDA DATA_05DC3B,x       ; $05:DBB4: BD 3B DC    ;
                CLC                     ; $05:DBB7: 18          ;
                ADC $0E6B               ; $05:DBB8: 6D 6B 0E    ;
                STA $0808,y             ; $05:DBBB: 99 08 08    ;
                STA $080C,y             ; $05:DBBE: 99 0C 08    ;
                JSR CODE_05DC6F         ; $05:DBC1: 20 6F DC    ;
                LDA DATA_05DC41,x       ; $05:DBC4: BD 41 DC    ;
                CLC                     ; $05:DBC7: 18          ;
                ADC $0E6D               ; $05:DBC8: 6D 6D 0E    ;
                STA $0809,y             ; $05:DBCB: 99 09 08    ;
                CLC                     ; $05:DBCE: 18          ;
                ADC #$08                ; $05:DBCF: 69 08       ;
                STA $080D,y             ; $05:DBD1: 99 0D 08    ;
                LDX $0E6F               ; $05:DBD4: AE 6F 0E    ;
                DEX                     ; $05:DBD7: CA          ;
                TXA                     ; $05:DBD8: 8A          ;
                ASL A                   ; $05:DBD9: 0A          ;
                ASL A                   ; $05:DBDA: 0A          ;
                TAX                     ; $05:DBDB: AA          ;
                LDA #$03                ; $05:DBDC: A9 03       ;
                STA $04                 ; $05:DBDE: 85 04       ;
CODE_05DBE0:    LDA DATA_05DC47,x       ; $05:DBE0: BD 47 DC    ;
                STA $0802,y             ; $05:DBE3: 99 02 08    ;
                LDA DATA_05DC5B,x       ; $05:DBE6: BD 5B DC    ;
                STA $0803,y             ; $05:DBE9: 99 03 08    ;
                INY                     ; $05:DBEC: C8          ;
                INY                     ; $05:DBED: C8          ;
                INY                     ; $05:DBEE: C8          ;
                INY                     ; $05:DBEF: C8          ;
                INX                     ; $05:DBF0: E8          ;
                DEC $04                 ; $05:DBF1: C6 04       ;
                BPL CODE_05DBE0         ; $05:DBF3: 10 EB       ;
                DEC $0E6E               ; $05:DBF5: CE 6E 0E    ;
                BNE CODE_05DC02         ; $05:DBF8: D0 08       ;
                LDA #$06                ; $05:DBFA: A9 06       ;
                STA $0E6E               ; $05:DBFC: 8D 6E 0E    ;
                INC $0E6F               ; $05:DBFF: EE 6F 0E    ;
CODE_05DC02:    PLX                     ; $05:DC02: FA          ;
CODE_05DC03:    JMP CODE_05DCE9         ; $05:DC03: 4C E9 DC    ;

CODE_05DC06:    LDA $09                 ; $05:DC06: A5 09       ;
                LSR A                   ; $05:DC08: 4A          ;
                BCS CODE_05DC0E         ; $05:DC09: B0 03       ;
                DEC $0248,x             ; $05:DC0B: DE 48 02    ;
CODE_05DC0E:    LDA $0248,x             ; $05:DC0E: BD 48 02    ;
                STA $0801,y             ; $05:DC11: 99 01 08    ;
                LDA $03B3               ; $05:DC14: AD B3 03    ;
                STA $0800,y             ; $05:DC17: 99 00 08    ;
                LDA #$02                ; $05:DC1A: A9 02       ;
                STA $0C00,y             ; $05:DC1C: 99 00 0C    ;
                CMP #$F8                ; $05:DC1F: C9 F8       ;
                BCC CODE_05DC28         ; $05:DC21: 90 05       ;
                LDA #$03                ; $05:DC23: A9 03       ;
                STA $0C00,y             ; $05:DC25: 99 00 0C    ;
CODE_05DC28:    LDA #$23                ; $05:DC28: A9 23       ;
                STA $0803,y             ; $05:DC2A: 99 03 08    ;
                LDA #$2E                ; $05:DC2D: A9 2E       ;
                STA $0802,y             ; $05:DC2F: 99 02 08    ;
                JMP CODE_05DB49         ; $05:DC32: 4C 49 DB    ;

DATA_05DC35:    db $00,$FC,$FB,$FA,$FA,$FA                      ;

DATA_05DC3B:    db $00,$04,$05,$06,$06,$06                      ;

DATA_05DC41:    db $00,$FC,$FC,$FE,$FE,$FF                      ;

DATA_05DC47:    db $27,$27,$28,$28,$36,$37,$36,$37              ;
                db $36,$37,$36,$37,$38,$29,$38,$29              ;
                db $38,$29,$38,$29                              ;

DATA_05DC5B:    db $29,$A9,$29,$A9,$29,$29,$69,$69              ;
                db $29,$29,$69,$69,$29,$29,$69,$69              ;
                db $29,$29,$69,$69                              ;

CODE_05DC6F:    PHA                     ; $05:DC6F: 48          ;
                CMP #$F8                ; $05:DC70: C9 F8       ;
                BCC CODE_05DC7C         ; $05:DC72: 90 08       ;
                LDA #$01                ; $05:DC74: A9 01       ;
                STA $0C00,y             ; $05:DC76: 99 00 0C    ;
                STA $0C04,y             ; $05:DC79: 99 04 0C    ;
CODE_05DC7C:    PLA                     ; $05:DC7C: 68          ;
                RTS                     ; $05:DC7D: 60          ;

CODE_05DC7E:    LDA $0248,x             ; $05:DC7E: BD 48 02    ;
                CLC                     ; $05:DC81: 18          ;
                ADC #$04                ; $05:DC82: 69 04       ;
                STA $0E6D               ; $05:DC84: 8D 6D 0E    ;
                LDA $022A,x             ; $05:DC87: BD 2A 02    ;
                STA $0E70               ; $05:DC8A: 8D 70 0E    ;
                LDA $0089,x             ; $05:DC8D: BD 89 00    ;
                STA $0E71               ; $05:DC90: 8D 71 0E    ;
                LDA #$06                ; $05:DC93: A9 06       ;
                STA $0E6E               ; $05:DC95: 8D 6E 0E    ;
                STZ $0E6F               ; $05:DC98: 9C 6F 0E    ;
                RTL                     ; $05:DC9B: 6B          ;

DATA_05DC9C:    db $28,$2A,$2C,$2E                              ;

CODE_05DCA0:    PHB                     ; $05:DCA0: 8B          ;
                PHK                     ; $05:DCA1: 4B          ;
                PLB                     ; $05:DCA2: AB          ;
                LDY $0B62,x             ; $05:DCA3: BC 62 0B    ;
                LDA $39,x               ; $05:DCA6: B5 39       ;
                CMP #$02                ; $05:DCA8: C9 02       ;
                BCC CODE_05DCAF         ; $05:DCAA: 90 03       ;
                JMP CODE_05DC06         ; $05:DCAC: 4C 06 DC    ;

CODE_05DCAF:    LDA $B1,x               ; $05:DCAF: B5 B1       ;
                BMI CODE_05DCB6         ; $05:DCB1: 30 03       ;
                JMP CODE_05DB49         ; $05:DCB3: 4C 49 DB    ;

CODE_05DCB6:    LDA $0248,x             ; $05:DCB6: BD 48 02    ;
                STA $0801,y             ; $05:DCB9: 99 01 08    ;
                LDA $03B3               ; $05:DCBC: AD B3 03    ;
                SEC                     ; $05:DCBF: 38          ;
                SBC #$04                ; $05:DCC0: E9 04       ;
                STA $E4                 ; $05:DCC2: 85 E4       ;
                CMP #$F0                ; $05:DCC4: C9 F0       ;
                BCS CODE_05DCCC         ; $05:DCC6: B0 04       ;
                LDA #$02                ; $05:DCC8: A9 02       ;
                BRA CODE_05DCCE         ; $05:DCCA: 80 02       ;

CODE_05DCCC:    LDA #$03                ; $05:DCCC: A9 03       ;
CODE_05DCCE:    STA $0C00,y             ; $05:DCCE: 99 00 0C    ;
                LDA $E4                 ; $05:DCD1: A5 E4       ;
                STA $0800,y             ; $05:DCD3: 99 00 08    ;
                LDA $09                 ; $05:DCD6: A5 09       ;
                LSR A                   ; $05:DCD8: 4A          ;
                AND #$03                ; $05:DCD9: 29 03       ;
                TAX                     ; $05:DCDB: AA          ;
                LDA DATA_05DC9C,x       ; $05:DCDC: BD 9C DC    ;
                STA $0802,y             ; $05:DCDF: 99 02 08    ;
                LDA #$28                ; $05:DCE2: A9 28       ;
                STA $0803,y             ; $05:DCE4: 99 03 08    ;
                LDX $9E                 ; $05:DCE7: A6 9E       ;
CODE_05DCE9:    PLB                     ; $05:DCE9: AB          ;
                RTL                     ; $05:DCEA: 6B          ;

DATA_05DCEB:    db $04,$00,$04,$00                              ;

DATA_05DCEF:    db $00,$04,$00,$04,$00,$08,$00,$08              ;
                db $08,$00,$08,$00                              ;

DATA_05DCFB:    db $44,$46,$44,$46,$81,$83,$80,$82              ;

DATA_05DD03:    db $2A,$2A,$EA,$EA                              ;

;Draw hammer
CODE_05DD07:    PHB                     ; $05:DD07: 8B          ;
                PHK                     ; $05:DD08: 4B          ;
                PLB                     ; $05:DD09: AB          ; Preserve stuff
                LDY $0B62,x             ; $05:DD0A: BC 62 0B    ; get misc object OAM data offset
                LDA $0747               ; $05:DD0D: AD 47 07    ;\ If screen locked, branch
                BNE CODE_05DD1A         ; $05:DD10: D0 08       ;/
                LDA $39,x               ; $05:DD12: B5 39       ;\
                AND #$7F                ; $05:DD14: 29 7F       ; |
                CMP #$01                ; $05:DD16: C9 01       ; |
                BEQ CODE_05DD1E         ; $05:DD18: F0 04       ;/
CODE_05DD1A:    LDX #$00                ; $05:DD1A: A2 00       ;
                BEQ CODE_05DD25         ; $05:DD1C: F0 07       ;
CODE_05DD1E:    LDA $09                 ; $05:DD1E: A5 09       ;
                LSR A                   ; $05:DD20: 4A          ;
                LSR A                   ; $05:DD21: 4A          ;
                AND #$03                ; $05:DD22: 29 03       ;
                TAX                     ; $05:DD24: AA          ;
CODE_05DD25:    LDA $03BE               ; $05:DD25: AD BE 03    ;
                CLC                     ; $05:DD28: 18          ;
                ADC DATA_05DCEF,x       ; $05:DD29: 7D EF DC    ;
                STA $0801,y             ; $05:DD2C: 99 01 08    ;
                REP #$20                ; $05:DD2F: C2 20       ;
                LDA DATA_05DCEB,x       ; $05:DD31: BD EB DC    ;
                AND #$00FF              ; $05:DD34: 29 FF 00    ;
                CLC                     ; $05:DD37: 18          ;
                ADC $0E93               ; $05:DD38: 6D 93 0E    ;
                SEC                     ; $05:DD3B: 38          ;
                SBC #$0008              ; $05:DD3C: E9 08 00    ;
                STA $E4                 ; $05:DD3F: 85 E4       ;
                SEP #$20                ; $05:DD41: E2 20       ;
                LDA $E4                 ; $05:DD43: A5 E4       ;
                STA $0800,y             ; $05:DD45: 99 00 08    ;
                LDA #$02                ; $05:DD48: A9 02       ;
                STA $0C00,y             ; $05:DD4A: 99 00 0C    ;
                LDA $E5                 ; $05:DD4D: A5 E5       ;
                BEQ CODE_05DD56         ; $05:DD4F: F0 05       ;
                LDA #$03                ; $05:DD51: A9 03       ;
                STA $0C00,y             ; $05:DD53: 99 00 0C    ;
CODE_05DD56:    LDA DATA_05DCFB,x       ; $05:DD56: BD FB DC    ;
                STA $0802,y             ; $05:DD59: 99 02 08    ;
                LDA DATA_05DD03,x       ; $05:DD5C: BD 03 DD    ;
                STA $0803,y             ; $05:DD5F: 99 03 08    ;
                LDA $03D6               ; $05:DD62: AD D6 03    ;
                AND #$0F                ; $05:DD65: 29 0F       ;
                CMP #$0F                ; $05:DD67: C9 0F       ;
                BEQ CODE_05DD72         ; $05:DD69: F0 07       ;
                LDA $03D6               ; $05:DD6B: AD D6 03    ;
                AND #$F0                ; $05:DD6E: 29 F0       ;
                BEQ CODE_05DD76         ; $05:DD70: F0 04       ;
CODE_05DD72:    LDX $9E                 ; $05:DD72: A6 9E       ;
                STZ $39,x               ; $05:DD74: 74 39       ;
CODE_05DD76:    LDX $9E                 ; $05:DD76: A6 9E       ;
                PLB                     ; $05:DD78: AB          ;
                RTL                     ; $05:DD79: 6B          ;

CODE_05DD7A:    PHD                     ; $05:DD7A: 0B          ;
                LDA #$0C                ; $05:DD7B: A9 0C       ;
                XBA                     ; $05:DD7D: EB          ;
                LDA #$00                ; $05:DD7E: A9 00       ;
                TCD                     ; $05:DD80: 5B          ;
                REP #$10                ; $05:DD81: C2 10       ;
                LDX #$0000              ; $05:DD83: A2 00 00    ;
                TXY                     ; $05:DD86: 9B          ;
CODE_05DD87:    LDA $0C,x               ; $05:DD87: B5 0C       ;
                LSR A                   ; $05:DD89: 4A          ;
                ROR A                   ; $05:DD8A: 6A          ;
                ROR A                   ; $05:DD8B: 6A          ;
                STA $01                 ; $05:DD8C: 85 01       ;
                LDA $08,x               ; $05:DD8E: B5 08       ;
                ASL A                   ; $05:DD90: 0A          ;
                ASL A                   ; $05:DD91: 0A          ;
                ASL A                   ; $05:DD92: 0A          ;
                ASL A                   ; $05:DD93: 0A          ;
                TSB $01                 ; $05:DD94: 04 01       ;
                LDA $04,x               ; $05:DD96: B5 04       ;
                ASL A                   ; $05:DD98: 0A          ;
                ASL A                   ; $05:DD99: 0A          ;
                TSB $01                 ; $05:DD9A: 04 01       ;
                LDA $00,x               ; $05:DD9C: B5 00       ;
                ORA $01                 ; $05:DD9E: 05 01       ;
                STA $0A00,y             ; $05:DDA0: 99 00 0A    ;
                INY                     ; $05:DDA3: C8          ;
                LDA $1C,x               ; $05:DDA4: B5 1C       ;
                LSR A                   ; $05:DDA6: 4A          ;
                ROR A                   ; $05:DDA7: 6A          ;
                ROR A                   ; $05:DDA8: 6A          ;
                STA $01                 ; $05:DDA9: 85 01       ;
                LDA $18,x               ; $05:DDAB: B5 18       ;
                ASL A                   ; $05:DDAD: 0A          ;
                ASL A                   ; $05:DDAE: 0A          ;
                ASL A                   ; $05:DDAF: 0A          ;
                ASL A                   ; $05:DDB0: 0A          ;
                TSB $01                 ; $05:DDB1: 04 01       ;
                LDA $14,x               ; $05:DDB3: B5 14       ;
                ASL A                   ; $05:DDB5: 0A          ;
                ASL A                   ; $05:DDB6: 0A          ;
                TSB $01                 ; $05:DDB7: 04 01       ;
                LDA $10,x               ; $05:DDB9: B5 10       ;
                ORA $01                 ; $05:DDBB: 05 01       ;
                STA $0A00,y             ; $05:DDBD: 99 00 0A    ;
                INY                     ; $05:DDC0: C8          ;
                REP #$20                ; $05:DDC1: C2 20       ;
                TXA                     ; $05:DDC3: 8A          ;
                CLC                     ; $05:DDC4: 18          ;
                ADC #$0020              ; $05:DDC5: 69 20 00    ;
                TAX                     ; $05:DDC8: AA          ;
                SEP #$20                ; $05:DDC9: E2 20       ;
                CPX #$0200              ; $05:DDCB: E0 00 02    ;
                BCC CODE_05DD87         ; $05:DDCE: 90 B7       ;
                SEP #$10                ; $05:DDD0: E2 10       ;
                PLD                     ; $05:DDD2: 2B          ;
                RTL                     ; $05:DDD3: 6B          ;

CODE_05DDD4:    INC $0B76               ; $05:DDD4: EE 76 0B    ;
                LDA #$38                ; $05:DDD7: A9 38       ;
                STA $0287               ; $05:DDD9: 8D 87 02    ;
                REP #$20                ; $05:DDDC: C2 20       ;
                LDA #$B000              ; $05:DDDE: A9 00 B0    ;
                STA $0285               ; $05:DDE1: 8D 85 02    ;
                LDA #$0800              ; $05:DDE4: A9 00 08    ;
                STA $0288               ; $05:DDE7: 8D 88 02    ;
                LDA #$7C00              ; $05:DDEA: A9 00 7C    ;
                STA $028A               ; $05:DDED: 8D 8A 02    ;
                SEP #$20                ; $05:DDF0: E2 20       ;
                RTS                     ; $05:DDF2: 60          ;

CODE_05DDF3:    INC $0B76               ; $05:DDF3: EE 76 0B    ;
                LDA #$07                ; $05:DDF6: A9 07       ;
                STA $0287               ; $05:DDF8: 8D 87 02    ;
                REP #$20                ; $05:DDFB: C2 20       ;
                LDA #$B800              ; $05:DDFD: A9 00 B8    ;
                STA $0285               ; $05:DE00: 8D 85 02    ;
                LDA #$0800              ; $05:DE03: A9 00 08    ;
                STA $0288               ; $05:DE06: 8D 88 02    ;
                LDA #$7C00              ; $05:DE09: A9 00 7C    ;
                STA $028A               ; $05:DE0C: 8D 8A 02    ;
                SEP #$20                ; $05:DE0F: E2 20       ;
                RTS                     ; $05:DE11: 60          ;

CODE_05DE12:    PHX                     ; $05:DE12: DA          ;
                PHY                     ; $05:DE13: 5A          ;
                JSR CODE_05E231         ; $05:DE14: 20 31 E2    ;Clear windowing HDMA table
                JSR CODE_05E1CE         ; $05:DE17: 20 CE E1    ;
                LDA #$22                ; $05:DE1A: A9 22       ;
                STA $1204               ; $05:DE1C: 8D 04 12    ;
                LDA #$02                ; $05:DE1F: A9 02       ;
                STA $1205               ; $05:DE21: 8D 05 12    ;
                LDA #$15                ; $05:DE24: A9 15       ;
                STA $1207               ; $05:DE26: 8D 07 12    ;
                LDA #$02                ; $05:DE29: A9 02       ;
                STA $1208               ; $05:DE2B: 8D 08 12    ;
                PLY                     ; $05:DE2E: 7A          ;
                PLX                     ; $05:DE2F: FA          ;
                RTL                     ; $05:DE30: 6B          ;

CODE_05DE31:    JSR CODE_05E231         ; $05:DE31: 20 31 E2    ;Clear windowing HDMA table
                JSR CODE_05E1CE         ; $05:DE34: 20 CE E1    ;
                JSR CODE_05DE65         ; $05:DE37: 20 65 DE    ;
                JSR CODE_05DDD4         ; $05:DE3A: 20 D4 DD    ;
                LDA #$01                ; $05:DE3D: A9 01       ;\Set paused flag
                STA $0776               ; $05:DE3F: 8D 76 07    ;/
                STZ $0B77               ; $05:DE42: 9C 77 0B    ;
                STZ $0B78               ; $05:DE45: 9C 78 0B    ;
                STZ $0F8A               ; $05:DE48: 9C 8A 0F    ;
                RTL                     ; $05:DE4B: 6B          ;

CODE_05DE4C:    PHB                     ; $05:DE4C: 8B          ;\
                PHK                     ; $05:DE4D: 4B          ; |
                PLB                     ; $05:DE4E: AB          ; |
                PHX                     ; $05:DE4F: DA          ; |
                PHY                     ; $05:DE50: 5A          ; |
                LDA $0B75               ; $05:DE51: AD 75 0B    ; |Pause window states
                ASL A                   ; $05:DE54: 0A          ; |
                TAX                     ; $05:DE55: AA          ; |
                JSR (PNTR_05DE5D,x)     ; $05:DE56: FC 5D DE    ; |
                PLY                     ; $05:DE59: 7A          ; |
                PLX                     ; $05:DE5A: FA          ; |
                PLB                     ; $05:DE5B: AB          ; |
                RTL                     ; $05:DE5C: 6B          ;/

PNTR_05DE5D:    dw CODE_05E0B3                                  ;$00 = Expand
                dw CODE_05DE97                                  ;$01 = Maintain pause window, wait for input etc
                dw CODE_05E1AF                                  ;$02 = Select option?
                dw CODE_05E11D                                  ;$03 = Collapse

CODE_05DE65:    REP #$20                ; $05:DE65: C2 20       ;
                LDA #$0010              ; $05:DE67: A9 10 00    ;
                STA $0B6B               ; $05:DE6A: 8D 6B 0B    ;
                LDA #$0064              ; $05:DE6D: A9 64 00    ;
                STA $0B6D               ; $05:DE70: 8D 6D 0B    ;
                LDA #$00A4              ; $05:DE73: A9 A4 00    ;
                STA $0B6F               ; $05:DE76: 8D 6F 0B    ;
                LDA #$00C4              ; $05:DE79: A9 C4 00    ;
                STA $0B71               ; $05:DE7C: 8D 71 0B    ;
                LDA #$00D0              ; $05:DE7F: A9 D0 00    ;
                STA $0B73               ; $05:DE82: 8D 73 0B    ;
                SEP #$20                ; $05:DE85: E2 20       ;
                LDA $1680               ; $05:DE87: AD 80 16    ;
                BEQ CODE_05DE96         ; $05:DE8A: F0 0A       ;
                LDA $077A               ; $05:DE8C: AD 7A 07    ;
                BEQ CODE_05DE96         ; $05:DE8F: F0 05       ;
                LDA #$0E                ; $05:DE91: A9 0E       ;
                STA $0B6B               ; $05:DE93: 8D 6B 0B    ;
CODE_05DE96:    RTS                     ; $05:DE96: 60          ;

CODE_05DE97:    JSR CODE_05DFFD         ; $05:DE97: 20 FD DF    ;
                LDX $0753               ; $05:DE9A: AE 53 07    ;
                LDA $1680               ; $05:DE9D: AD 80 16    ;
                BEQ CODE_05DEB0         ; $05:DEA0: F0 0E       ;
                LDA $077A               ; $05:DEA2: AD 7A 07    ;
                BEQ CODE_05DEB0         ; $05:DEA5: F0 09       ;
                LDA $0761               ; $05:DEA7: AD 61 07    ;
                BMI CODE_05DEB0         ; $05:DEAA: 30 04       ;
                TXA                     ; $05:DEAC: 8A          ;
                EOR #$01                ; $05:DEAD: 49 01       ;
                TAX                     ; $05:DEAF: AA          ;
CODE_05DEB0:    LDA $0FF6,x             ; $05:DEB0: BD F6 0F    ;
                STA $F2                 ; $05:DEB3: 85 F2       ;
                AND #$2C                ; $05:DEB5: 29 2C       ;
                BNE CODE_05DEBC         ; $05:DEB7: D0 03       ;
                JMP CODE_05DF0D         ; $05:DEB9: 4C 0D DF    ;

CODE_05DEBC:    LDA $F2                 ; $05:DEBC: A5 F2       ;
                AND #$20                ; $05:DEBE: 29 20       ;
                BNE CODE_05DEF8         ; $05:DEC0: D0 36       ;
                LDA $F2                 ; $05:DEC2: A5 F2       ;
                AND #$08                ; $05:DEC4: 29 08       ;
                BNE CODE_05DEE1         ; $05:DEC6: D0 19       ;
                INC $0B77               ; $05:DEC8: EE 77 0B    ;
                LDA $0B77               ; $05:DECB: AD 77 0B    ;
                CMP #$03                ; $05:DECE: C9 03       ;
                BCC CODE_05DED7         ; $05:DED0: 90 05       ;
                DEC $0B77               ; $05:DED2: CE 77 0B    ;
                BRA CODE_05DF0D         ; $05:DED5: 80 36       ;

CODE_05DED7:    LDA #$01                ; $05:DED7: A9 01       ;\Coin sound
                STA $1603               ; $05:DED9: 8D 03 16    ;/
                STZ $0B78               ; $05:DEDC: 9C 78 0B    ;
                BRA CODE_05DF0D         ; $05:DEDF: 80 2C       ;

CODE_05DEE1:    DEC $0B77               ; $05:DEE1: CE 77 0B    ;
                LDA $0B77               ; $05:DEE4: AD 77 0B    ;
                BPL CODE_05DEEE         ; $05:DEE7: 10 05       ;
                INC $0B77               ; $05:DEE9: EE 77 0B    ;
                BRA CODE_05DF0D         ; $05:DEEC: 80 1F       ;

CODE_05DEEE:    LDA #$01                ; $05:DEEE: A9 01       ;\Coin sound
                STA $1603               ; $05:DEF0: 8D 03 16    ;/
                STZ $0B78               ; $05:DEF3: 9C 78 0B    ;
                BRA CODE_05DF0D         ; $05:DEF6: 80 15       ;

CODE_05DEF8:    INC $0B77               ; $05:DEF8: EE 77 0B    ;
                LDA $0B77               ; $05:DEFB: AD 77 0B    ;
                CMP #$03                ; $05:DEFE: C9 03       ;
                BCC CODE_05DF05         ; $05:DF00: 90 03       ;
                STZ $0B77               ; $05:DF02: 9C 77 0B    ;
CODE_05DF05:    LDA #$01                ; $05:DF05: A9 01       ;\Coin sound
                STA $1603               ; $05:DF07: 8D 03 16    ;/
                STZ $0B78               ; $05:DF0A: 9C 78 0B    ;
CODE_05DF0D:    LDA #$4C                ; $05:DF0D: A9 4C       ;
                STA $0800               ; $05:DF0F: 8D 00 08    ;
                LDX $0B77               ; $05:DF12: AE 77 0B    ;
                LDA DATA_05DFA9,x       ; $05:DF15: BD A9 DF    ;
                STA $0801               ; $05:DF18: 8D 01 08    ;
                LDA $0B78               ; $05:DF1B: AD 78 0B    ;
                AND #$10                ; $05:DF1E: 29 10       ;
                LSR A                   ; $05:DF20: 4A          ;
                LSR A                   ; $05:DF21: 4A          ;
                LSR A                   ; $05:DF22: 4A          ;
                LSR A                   ; $05:DF23: 4A          ;
                TAX                     ; $05:DF24: AA          ;
                LDA DATA_05DFAC,x       ; $05:DF25: BD AC DF    ;
                STA $0802               ; $05:DF28: 8D 02 08    ;
                LDA #$21                ; $05:DF2B: A9 21       ;
                STA $0803               ; $05:DF2D: 8D 03 08    ;
                LDA #$00                ; $05:DF30: A9 00       ;
                STA $0C00               ; $05:DF32: 8D 00 0C    ;
                INC $0B78               ; $05:DF35: EE 78 0B    ;
                LDA $F2                 ; $05:DF38: A5 F2       ;
                AND #$10                ; $05:DF3A: 29 10       ;
                BEQ CODE_05DFA8         ; $05:DF3C: F0 6A       ;
                LDA #$F2                ; $05:DF3E: A9 F2       ;
                STA $1602               ; $05:DF40: 8D 02 16    ;
                STZ $0B78               ; $05:DF43: 9C 78 0B    ;
                LDA $0B77               ; $05:DF46: AD 77 0B    ;
                BEQ CODE_05DF68         ; $05:DF49: F0 1D       ;
                LDA #$30                ; $05:DF4B: A9 30       ;
                STA $0F8A               ; $05:DF4D: 8D 8A 0F    ;
                LDA #$02                ; $05:DF50: A9 02       ;
                STA $0B75               ; $05:DF52: 8D 75 0B    ;
                LDA #$3B                ; $05:DF55: A9 3B       ;\
                STA $1600               ; $05:DF57: 8D 00 16    ;/Save and continue/quit sound
                LDA $0B77               ; $05:DF5A: AD 77 0B    ;
                CMP #$02                ; $05:DF5D: C9 02       ;
                BNE CODE_05DF7C         ; $05:DF5F: D0 1B       ;
                LDA #$F3                ; $05:DF61: A9 F3       ;
                STA $1602               ; $05:DF63: 8D 02 16    ;
                BRA CODE_05DF7C         ; $05:DF66: 80 14       ;

CODE_05DF68:    LDA #$10                ; $05:DF68: A9 10       ;
                STA $0F8A               ; $05:DF6A: 8D 8A 0F    ;
                LDA #$10                ; $05:DF6D: A9 10       ;
                STA $0B6B               ; $05:DF6F: 8D 6B 0B    ;
                LDA #$02                ; $05:DF72: A9 02       ;
                STA $0B75               ; $05:DF74: 8D 75 0B    ;
                LDA #$43                ; $05:DF77: A9 43       ;\
                STA $1600               ; $05:DF79: 8D 00 16    ;/Pause sound
CODE_05DF7C:    LDA $1680               ; $05:DF7C: AD 80 16    ;
                BEQ CODE_05DF9A         ; $05:DF7F: F0 19       ;
                LDA $0B77               ; $05:DF81: AD 77 0B    ;
                CMP #$02                ; $05:DF84: C9 02       ;
                BEQ CODE_05DF9A         ; $05:DF86: F0 12       ;
                STZ $0776               ; $05:DF88: 9C 76 07    ;Clear paused flag
                LDA #$0E                ; $05:DF8B: A9 0E       ;
                STA $0772               ; $05:DF8D: 8D 72 07    ;
                LDX $0B77               ; $05:DF90: AE 77 0B    ;
                BEQ CODE_05DF99         ; $05:DF93: F0 04       ;
                JSL CODE_008F03         ; $05:DF95: 22 03 8F 00 ;
CODE_05DF99:    RTS                     ; $05:DF99: 60          ;

CODE_05DF9A:    LDA #$20                ; $05:DF9A: A9 20       ;
                STA $0F8A               ; $05:DF9C: 8D 8A 0F    ;
                LDA $0B77               ; $05:DF9F: AD 77 0B    ;
                BEQ CODE_05DFA8         ; $05:DFA2: F0 04       ;
                JSL CODE_008F03         ; $05:DFA4: 22 03 8F 00 ;
CODE_05DFA8:    RTS                     ; $05:DFA8: 60          ;

DATA_05DFA9:    db $50,$60,$70                                  ;

DATA_05DFAC:    db $D0,$DE                                      ; pause flashing arrow tiles

DATA_05DFAE:    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA              ; smb1 pause screen tilemap
                db $AA,$AA,$AA,$AA,$AA,$14,$15,$16              ;
                db $17,$18,$19,$1A,$1B,$AA,$AA,$AA              ;
                db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA              ;
                db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$28              ;
                db $29,$2A,$2B,$1C,$14,$15,$16,$17              ;
                db $18,$19,$1A,$1B,$AA,$AA,$AA,$AA              ;
                db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA              ;
                db $AA,$28,$29,$2A,$2B,$1C,$24,$25              ;
                db $26,$27,$AA,$AA,$AA,$AA,$FF                  ; FF = EOD

CODE_05DFFD:    REP #$10                ; $05:DFFD: C2 10       ;
                LDY #$0010              ; $05:DFFF: A0 10 00    ;
                LDX #$0000              ; $05:E002: A2 00 00    ;
                LDA #$48                ; $05:E005: A9 48       ;
                STA $01                 ; $05:E007: 85 01       ;
CODE_05E009:    LDA #$54                ; $05:E009: A9 54       ;
                STA $00                 ; $05:E00B: 85 00       ;
CODE_05E00D:    LDA DATA_05DFAE,x       ; $05:E00D: BD AE DF    ;
                BPL CODE_05E02A         ; $05:E010: 10 18       ;
                INX                     ; $05:E012: E8          ;
                INC A                   ; $05:E013: 1A          ;
                BEQ CODE_05E04B         ; $05:E014: F0 35       ;
CODE_05E016:    LDA $00                 ; $05:E016: A5 00       ;
                CLC                     ; $05:E018: 18          ;
                ADC #$08                ; $05:E019: 69 08       ;
                STA $00                 ; $05:E01B: 85 00       ;
                CMP #$B8                ; $05:E01D: C9 B8       ;
                BCC CODE_05E00D         ; $05:E01F: 90 EC       ;
                LDA $01                 ; $05:E021: A5 01       ;
                CLC                     ; $05:E023: 18          ;
                ADC #$08                ; $05:E024: 69 08       ;
                STA $01                 ; $05:E026: 85 01       ;
                BRA CODE_05E009         ; $05:E028: 80 DF       ;

CODE_05E02A:    CLC                     ; $05:E02A: 18          ;
                ADC #$C0                ; $05:E02B: 69 C0       ;
                STA $0802,y             ; $05:E02D: 99 02 08    ;
                LDA $00                 ; $05:E030: A5 00       ;
                STA $0800,y             ; $05:E032: 99 00 08    ;
                LDA $01                 ; $05:E035: A5 01       ;
                STA $0801,y             ; $05:E037: 99 01 08    ;
                LDA #$21                ; $05:E03A: A9 21       ;
                STA $0803,y             ; $05:E03C: 99 03 08    ;
                LDA #$00                ; $05:E03F: A9 00       ;
                STA $0C00,y             ; $05:E041: 99 00 0C    ;
                INX                     ; $05:E044: E8          ;
                INY                     ; $05:E045: C8          ;
                INY                     ; $05:E046: C8          ;
                INY                     ; $05:E047: C8          ;
                INY                     ; $05:E048: C8          ;
                BRA CODE_05E016         ; $05:E049: 80 CB       ;

CODE_05E04B:    LDA #$40                ; $05:E04B: A9 40       ;
                STA $01                 ; $05:E04D: 85 01       ;
CODE_05E04F:    LDA #$40                ; $05:E04F: A9 40       ;
                STA $00                 ; $05:E051: 85 00       ;
CODE_05E053:    LDA $00                 ; $05:E053: A5 00       ;
                STA $0800,y             ; $05:E055: 99 00 08    ;
                CLC                     ; $05:E058: 18          ;
                ADC #$10                ; $05:E059: 69 10       ;
                STA $00                 ; $05:E05B: 85 00       ;
                LDA $01                 ; $05:E05D: A5 01       ;
                STA $0801,y             ; $05:E05F: 99 01 08    ;
                LDA #$CD                ; $05:E062: A9 CD       ;
                STA $0802,y             ; $05:E064: 99 02 08    ;
                LDA #$21                ; $05:E067: A9 21       ;
                STA $0803,y             ; $05:E069: 99 03 08    ;
                LDA #$02                ; $05:E06C: A9 02       ;
                STA $0C00,y             ; $05:E06E: 99 00 0C    ;
                INY                     ; $05:E071: C8          ;
                INY                     ; $05:E072: C8          ;
                INY                     ; $05:E073: C8          ;
                INY                     ; $05:E074: C8          ;
                LDA $00                 ; $05:E075: A5 00       ;
                CMP #$C0                ; $05:E077: C9 C0       ;
                BCC CODE_05E053         ; $05:E079: 90 D8       ;
                LDA $01                 ; $05:E07B: A5 01       ;
                CMP #$80                ; $05:E07D: C9 80       ;
                BCS CODE_05E088         ; $05:E07F: B0 07       ;
                CLC                     ; $05:E081: 18          ;
                ADC #$10                ; $05:E082: 69 10       ;
                STA $01                 ; $05:E084: 85 01       ;
                BRA CODE_05E04F         ; $05:E086: 80 C7       ;

CODE_05E088:    SEP #$10                ; $05:E088: E2 10       ;
                LDA #$4C                ; $05:E08A: A9 4C       ;
                STA $0800               ; $05:E08C: 8D 00 08    ;
                LDX $0B77               ; $05:E08F: AE 77 0B    ;
                LDA DATA_05DFA9,x       ; $05:E092: BD A9 DF    ;
                STA $0801               ; $05:E095: 8D 01 08    ;
                LDA $0B78               ; $05:E098: AD 78 0B    ;
                AND #$10                ; $05:E09B: 29 10       ;
                LSR A                   ; $05:E09D: 4A          ;
                LSR A                   ; $05:E09E: 4A          ;
                LSR A                   ; $05:E09F: 4A          ;
                LSR A                   ; $05:E0A0: 4A          ;
                TAX                     ; $05:E0A1: AA          ;
                LDA DATA_05DFAC,x       ; $05:E0A2: BD AC DF    ;
                STA $0802               ; $05:E0A5: 8D 02 08    ;
                LDA #$21                ; $05:E0A8: A9 21       ;
                STA $0803               ; $05:E0AA: 8D 03 08    ;
                LDA #$00                ; $05:E0AD: A9 00       ;
                STA $0C00               ; $05:E0AF: 8D 00 0C    ;
                RTS                     ; $05:E0B2: 60          ;

;EXPAND PAUSE WINDOW ROUTINE
CODE_05E0B3:    LDA $0B6B               ; $05:E0B3: AD 6B 0B    ;\Windowing HDMA routine for pause which actually expands stuff
                BEQ CODE_05E116         ; $05:E0B6: F0 5E       ;/Timer for expanding and collapsing
                BMI CODE_05E116         ; $05:E0B8: 30 5C       ;
                REP #$30                ; $05:E0BA: C2 30       ;
                DEC $0B6B               ; $05:E0BC: CE 6B 0B    ;Decrease timer. when it hits 0, the expanding ends
                DEC $0B6D               ; $05:E0BF: CE 6D 0B    ;\Maximum left border set
                DEC $0B6D               ; $05:E0C2: CE 6D 0B    ;/
                INC $0B6F               ; $05:E0C5: EE 6F 0B    ;\Maximum right border set
                INC $0B6F               ; $05:E0C8: EE 6F 0B    ;/
                DEC $0B71               ; $05:E0CB: CE 71 0B    ;\
                DEC $0B71               ; $05:E0CE: CE 71 0B    ; |Maximum upper border set
                DEC $0B71               ; $05:E0D1: CE 71 0B    ; |
                DEC $0B71               ; $05:E0D4: CE 71 0B    ;/
                INC $0B73               ; $05:E0D7: EE 73 0B    ;\
                INC $0B73               ; $05:E0DA: EE 73 0B    ; |Maximum lower border set
                INC $0B73               ; $05:E0DD: EE 73 0B    ; |
                INC $0B73               ; $05:E0E0: EE 73 0B    ;/
                LDX #$007E              ; $05:E0E3: A2 7E 00    ;\
                LDA #$00FF              ; $05:E0E6: A9 FF 00    ; |
CODE_05E0E9:    STA $7FF000,x           ; $05:E0E9: 9F 00 F0 7F ; |
                STA $7FF080,x           ; $05:E0ED: 9F 80 F0 7F ; |
                STA $7FF100,x           ; $05:E0F1: 9F 00 F1 7F ; |Clear windowing RAM?
                STA $7FF180,x           ; $05:E0F5: 9F 80 F1 7F ; |NOPing it out doesn't seem to have any side effects
                DEX                     ; $05:E0F9: CA          ; |
                DEX                     ; $05:E0FA: CA          ; |
                BPL CODE_05E0E9         ; $05:E0FB: 10 EC       ;/
                LDA $0B6F               ; $05:E0FD: AD 6F 0B    ;\ Maximum right border
                XBA                     ; $05:E100: EB          ; |swap low and high bytes
                ORA $0B6D               ; $05:E101: 0D 6D 0B    ;/|OR with maximum left border -> to Windowing HDMA value
                LDX $0B71               ; $05:E104: AE 71 0B    ; |Load maximum upper border as an index
CODE_05E107:    STA $7FF000,x           ; $05:E107: 9F 00 F0 7F ;/ Store windowing HDMA value
                INX                     ; $05:E10B: E8          ;\
                INX                     ; $05:E10C: E8          ; |If we didn't reach maximum lower border yet
                CPX $0B73               ; $05:E10D: EC 73 0B    ; |Loop
                BNE CODE_05E107         ; $05:E110: D0 F5       ;/
                SEP #$30                ; $05:E112: E2 30       ;
                BRA CODE_05E119         ; $05:E114: 80 03       ;

CODE_05E116:    INC $0B75               ; $05:E116: EE 75 0B    ;Increase pause window state?
CODE_05E119:    JSR CODE_05DFFD         ; $05:E119: 20 FD DF    ;
                RTS                     ; $05:E11C: 60          ;

;COLLAPSE PAUSE WINDOW ROUTINE
CODE_05E11D:    LDA $0B6B               ; $05:E11D: AD 6B 0B    ;
                BEQ CODE_05E180         ; $05:E120: F0 5E       ;
                BMI CODE_05E180         ; $05:E122: 30 5C       ;
                REP #$30                ; $05:E124: C2 30       ;
                INC $0B6D               ; $05:E126: EE 6D 0B    ;\Maximum left border
                INC $0B6D               ; $05:E129: EE 6D 0B    ;/
                DEC $0B6F               ; $05:E12C: CE 6F 0B    ;\
                DEC $0B6F               ; $05:E12F: CE 6F 0B    ;/Maximum right border
                INC $0B71               ; $05:E132: EE 71 0B    ;\
                INC $0B71               ; $05:E135: EE 71 0B    ; |
                INC $0B71               ; $05:E138: EE 71 0B    ; |Maximum left border
                INC $0B71               ; $05:E13B: EE 71 0B    ;/
                DEC $0B73               ; $05:E13E: CE 73 0B    ;\
                DEC $0B73               ; $05:E141: CE 73 0B    ; |
                DEC $0B73               ; $05:E144: CE 73 0B    ; |Maximum right border
                DEC $0B73               ; $05:E147: CE 73 0B    ;/
                DEC $0B6B               ; $05:E14A: CE 6B 0B    ;Decrease timer for collapsing
                LDX #$007E              ; $05:E14D: A2 7E 00    ;\
                LDA #$00FF              ; $05:E150: A9 FF 00    ; |
CODE_05E153:    STA $7FF000,x           ; $05:E153: 9F 00 F0 7F ; |
                STA $7FF080,x           ; $05:E157: 9F 80 F0 7F ; |Clear windowing RAM?
                STA $7FF100,x           ; $05:E15B: 9F 00 F1 7F ; |
                STA $7FF180,x           ; $05:E15F: 9F 80 F1 7F ; |
                DEX                     ; $05:E163: CA          ; |
                DEX                     ; $05:E164: CA          ; |
                BPL CODE_05E153         ; $05:E165: 10 EC       ;/
                LDA $0B6F               ; $05:E167: AD 6F 0B    ;\ Maximum right border
                XBA                     ; $05:E16A: EB          ; |Swap low and high bytes
                ORA $0B6D               ; $05:E16B: 0D 6D 0B    ;/ ORA with maximum left border -> to windowing HDMA value
                LDX $0B71               ; $05:E16E: AE 71 0B    ;\Load maximum upper border as an index
CODE_05E171:    STA $7FF000,x           ; $05:E171: 9F 00 F0 7F ; |
                INX                     ; $05:E175: E8          ; |Store windowing HDMA value to the HDMA RAM
                INX                     ; $05:E176: E8          ;/
                CPX $0B73               ; $05:E177: EC 73 0B    ;\If not done yet, loop
                BNE CODE_05E171         ; $05:E17A: D0 F5       ;/
                SEP #$30                ; $05:E17C: E2 30       ;
                BRA CODE_05E1AB         ; $05:E17E: 80 2B       ;

CODE_05E180:    STZ $0B75               ; $05:E180: 9C 75 0B    ;Pause window state to zero
                LDA #$0F                ; $05:E183: A9 0F       ;\
                STA $1201               ; $05:E185: 8D 01 12    ;/Set brightness to max
                STZ $0776               ; $05:E188: 9C 76 07    ;Clear paused flag
                LDA $1206               ; $05:E18B: AD 06 12    ;\
                EOR #$03                ; $05:E18E: 49 03       ; |reverse window mask settings
                STA $1206               ; $05:E190: 8D 06 12    ;/
                LDA $1207               ; $05:E193: AD 07 12    ;
                EOR #$10                ; $05:E196: 49 10       ;
                STA $1207               ; $05:E198: 8D 07 12    ;
                JSR CODE_05DDF3         ; $05:E19B: 20 F3 DD    ;
                JSL CODE_0385BF         ; $05:E19E: 22 BF 85 03 ;
                LDA $1203               ; $05:E1A2: AD 03 12    ;
                AND #$F7                ; $05:E1A5: 29 F7       ;
                STA $1203               ; $05:E1A7: 8D 03 12    ;
                RTS                     ; $05:E1AA: 60          ;

CODE_05E1AB:    JSR CODE_05DFFD         ; $05:E1AB: 20 FD DF    ;
                RTS                     ; $05:E1AE: 60          ;

CODE_05E1AF:    DEC $0F8A               ; $05:E1AF: CE 8A 0F    ;
                BNE CODE_05E1CA         ; $05:E1B2: D0 16       ;
                INC $0B75               ; $05:E1B4: EE 75 0B    ;
                LDA #$10                ; $05:E1B7: A9 10       ;
                STA $0B6B               ; $05:E1B9: 8D 6B 0B    ;
                STA $0F8A               ; $05:E1BC: 8D 8A 0F    ;
                LDA $0B77               ; $05:E1BF: AD 77 0B    ;\
                CMP #$02                ; $05:E1C2: C9 02       ; |If option is not Save and Quit
                BNE CODE_05E1CA         ; $05:E1C4: D0 04       ; |Branch
                JML CODE_0080DE         ; $05:E1C6: 5C DE 80 00 ;/ Go save and quit

CODE_05E1CA:    JSR CODE_05DFFD         ; $05:E1CA: 20 FD DF    ;
                RTS                     ; $05:E1CD: 60          ;

CODE_05E1CE:    PHB                     ; $05:E1CE: 8B          ;\
                LDA #$7F                ; $05:E1CF: A9 7F       ; |
                PHA                     ; $05:E1D1: 48          ; |
                PLB                     ; $05:E1D2: AB          ; |
                REP #$30                ; $05:E1D3: C2 30       ; |
                LDX #$007E              ; $05:E1D5: A2 7E 00    ; |Clear $7FF000-$7F1FFF
                LDA #$0000              ; $05:E1D8: A9 00 00    ; |
CODE_05E1DB:    STA $F000,x             ; $05:E1DB: 9D 00 F0    ; |
                STA $F080,x             ; $05:E1DE: 9D 80 F0    ; |
                STA $F100,x             ; $05:E1E1: 9D 00 F1    ; |
                STA $F180,x             ; $05:E1E4: 9D 80 F1    ; |
                DEX                     ; $05:E1E7: CA          ; |
                DEX                     ; $05:E1E8: CA          ; |
                BPL CODE_05E1DB         ; $05:E1E9: 10 F0       ; |
                PLB                     ; $05:E1EB: AB          ;/
                SEP #$20                ; $05:E1EC: E2 20       ;A = 8-bit. XY = 16-bit
                LDX #$2641              ; $05:E1EE: A2 41 26    ;\Window 1 left position & window 1 right position
                STX $4330               ; $05:E1F1: 8E 30 43    ;/2 regs write once. Indirect HDMA
                LDX.w #DATA_05E22A      ; $05:E1F4: A2 2A E2    ;\
                STX $4332               ; $05:E1F7: 8E 32 43    ; |Source: $05:E22A
                LDA.b #DATA_05E22A>>16  ; $05:E1FA: A9 05       ; |
                STA $4334               ; $05:E1FC: 8D 34 43    ;/
                LDA #$7F                ; $05:E1FF: A9 7F       ;\
                STA $4337               ; $05:E201: 8D 37 43    ;/Indirect HDMA address bank byte: $7F:xxxx
                LDA #$00                ; $05:E204: A9 00       ;\Window mask settings for BG1, 2, 3, 4.
                STA $1204               ; $05:E206: 8D 04 12    ; |No window for BG1, 2, 3, 4.
                STZ $1205               ; $05:E209: 9C 05 12    ;/
                LDA $1206               ; $05:E20C: AD 06 12    ;\
                ORA #$03                ; $05:E20F: 09 03       ; |Enable window 1 for OBJ. Window 1 inversion for OBJ
                STA $1206               ; $05:E211: 8D 06 12    ;/
                LDA $1207               ; $05:E214: AD 07 12    ;\
                ORA #$10                ; $05:E217: 09 10       ; |Enable window masking for OBJ on the mainscreen
                STA $1207               ; $05:E219: 8D 07 12    ; |
                STZ $1208               ; $05:E21C: 9C 08 12    ;/ None on the subscreen
                SEP #$10                ; $05:E21F: E2 10       ;AXY = 8-bit
                LDA $1203               ; $05:E221: AD 03 12    ;\
                ORA #$08                ; $05:E224: 09 08       ; |Enable HDMA
                STA $1203               ; $05:E226: 8D 03 12    ;/
                RTS                     ; $05:E229: 60          ;

DATA_05E22A:    db $F8,$00,$F0,$F8,$F0,$F0,$00                  ;

CODE_05E231:    PHB                     ; $05:E231: 8B          ;\
                LDA #$7F                ; $05:E232: A9 7F       ; |
                PHA                     ; $05:E234: 48          ; |
                PLB                     ; $05:E235: AB          ; |
                REP #$30                ; $05:E236: C2 30       ; |
                LDX #$01A0              ; $05:E238: A2 A0 01    ; |
CODE_05E23B:    LDA #$00FF              ; $05:E23B: A9 FF 00    ; |
                STA $F000,x             ; $05:E23E: 9D 00 F0    ; |
                STA $F002,x             ; $05:E241: 9D 02 F0    ; |
                STA $F004,x             ; $05:E244: 9D 04 F0    ; |
                STA $F006,x             ; $05:E247: 9D 06 F0    ; |
                STA $F008,x             ; $05:E24A: 9D 08 F0    ; |
                STA $F00A,x             ; $05:E24D: 9D 0A F0    ; |
                STA $F00C,x             ; $05:E250: 9D 0C F0    ; |
                STA $F00E,x             ; $05:E253: 9D 0E F0    ; |
                STA $F010,x             ; $05:E256: 9D 10 F0    ; |
                STA $F012,x             ; $05:E259: 9D 12 F0    ; |
                STA $F014,x             ; $05:E25C: 9D 14 F0    ; |
                STA $F016,x             ; $05:E25F: 9D 16 F0    ; |
                STA $F018,x             ; $05:E262: 9D 18 F0    ; |Clear windowing HDMA table
                STA $F01A,x             ; $05:E265: 9D 1A F0    ; |
                STA $F01C,x             ; $05:E268: 9D 1C F0    ; |
                STA $F01E,x             ; $05:E26B: 9D 1E F0    ; |
                STA $F200,x             ; $05:E26E: 9D 00 F2    ; |
                STA $F202,x             ; $05:E271: 9D 02 F2    ; |
                STA $F204,x             ; $05:E274: 9D 04 F2    ; |
                STA $F206,x             ; $05:E277: 9D 06 F2    ; |
                STA $F208,x             ; $05:E27A: 9D 08 F2    ; |
                STA $F20A,x             ; $05:E27D: 9D 0A F2    ; |
                STA $F20C,x             ; $05:E280: 9D 0C F2    ; |
                STA $F20E,x             ; $05:E283: 9D 0E F2    ; |
                STA $F210,x             ; $05:E286: 9D 10 F2    ; |
                STA $F212,x             ; $05:E289: 9D 12 F2    ; |
                STA $F214,x             ; $05:E28C: 9D 14 F2    ; |
                STA $F216,x             ; $05:E28F: 9D 16 F2    ; |
                STA $F218,x             ; $05:E292: 9D 18 F2    ; |
                STA $F21A,x             ; $05:E295: 9D 1A F2    ; |
                STA $F21C,x             ; $05:E298: 9D 1C F2    ; |
                STA $F21E,x             ; $05:E29B: 9D 1E F2    ; |
                TXA                     ; $05:E29E: 8A          ; |
                SEC                     ; $05:E29F: 38          ; |
                SBC #$0020              ; $05:E2A0: E9 20 00    ; |
                TAX                     ; $05:E2A3: AA          ; |
                BPL CODE_05E23B         ; $05:E2A4: 10 95       ; |
                SEP #$30                ; $05:E2A6: E2 30       ; |
                PLB                     ; $05:E2A8: AB          ; |
                RTS                     ; $05:E2A9: 60          ;/

CODE_05E2AA:    LDA $02F7               ; $05:E2AA: AD F7 02    ;
                BNE CODE_05E2DE         ; $05:E2AD: D0 2F       ;
                LDY $BB                 ; $05:E2AF: A4 BB       ;
                DEY                     ; $05:E2B1: 88          ;
                BNE CODE_05E2DE         ; $05:E2B2: D0 2A       ;
                LDA $03D3               ; $05:E2B4: AD D3 03    ;
                AND #$08                ; $05:E2B7: 29 08       ;
                BNE CODE_05E2DE         ; $05:E2B9: D0 23       ;
                LDY $0B53,x             ; $05:E2BB: BC 53 0B    ;
                LDA $03B0               ; $05:E2BE: AD B0 03    ;
                STA $0800,y             ; $05:E2C1: 99 00 08    ;
                LDA $03BB               ; $05:E2C4: AD BB 03    ;
                STA $0801,y             ; $05:E2C7: 99 01 08    ;
                LDA #$9F                ; $05:E2CA: A9 9F       ;
                STA $0802,y             ; $05:E2CC: 99 02 08    ;
                LDA $0F                 ; $05:E2CF: A5 0F       ;
                CMP #$07                ; $05:E2D1: C9 07       ;
                BNE CODE_05E2D9         ; $05:E2D3: D0 04       ;
                LDA #$0A                ; $05:E2D5: A9 0A       ;
                BRA CODE_05E2DB         ; $05:E2D7: 80 02       ;

CODE_05E2D9:    LDA #$2A                ; $05:E2D9: A9 2A       ;
CODE_05E2DB:    STA $0803,y             ; $05:E2DB: 99 03 08    ;
CODE_05E2DE:    RTL                     ; $05:E2DE: 6B          ;

;palette animation (axe, coins, [?], underground lanterns)
DATA_05E2DF:    db $DF,$1B,$7F,$02,$39,$01,$00,$00              ;
                db $FF,$4B,$5F,$1F,$9C,$0D,$00,$00              ;
                db $FF,$7F,$FF,$4B,$FF,$19,$00,$00              ;

DATA_05E2F7:    db $DA,$1A,$F3,$0D,$0D,$05,$00,$00              ;
                db $5E,$2B,$77,$1E,$70,$11,$00,$00              ;
                db $DF,$3B,$FB,$2E,$D3,$1D,$00,$00              ;

DATA_05E30F:    db $7F,$47,$98,$32,$B1,$15,$00,$00              ;
                db $1B,$67,$34,$4A,$4D,$2D,$00,$00              ;
                db $97,$7E,$B0,$6D,$EA,$54,$00,$00              ;

DATA_05E327:    db $5F,$03,$59,$02,$00,$38,$00,$00              ;
                db $FF,$03,$BC,$02,$16,$00,$00,$00              ;
                db $FF,$7F,$FF,$47,$DF,$00,$00,$00              ;

DATA_05E33F:    db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E              ;
                db $F8,$2E,$74,$1E,$41,$1C,$A3,$28              ;
                db $A4,$28,$48,$35,$8B,$3D,$0F,$4A              ;
                db $D6,$32,$31,$1E,$41,$1C,$A3,$28              ;
                db $62,$20,$C6,$2C,$27,$39,$8B,$41              ;
                db $50,$32,$AB,$21,$41,$1C,$A3,$28              ;
                db $83,$24,$07,$31,$49,$39,$CD,$45              ;
                db $93,$32,$EE,$1D,$41,$1C,$A3,$28              ;
                db $62,$20,$C6,$2C,$27,$39,$8B,$41              ;
                db $50,$32,$AB,$21,$41,$1C,$A3,$28              ;
                db $83,$24,$07,$31,$49,$39,$CD,$45              ;
                db $93,$32,$EE,$1D,$41,$1C,$A3,$28              ;
                db $A4,$28,$48,$35,$8B,$3D,$0F,$4A              ;
                db $D6,$32,$31,$1E,$41,$1C,$A3,$28              ;
                db $C5,$2C,$89,$3D,$CD,$3D,$51,$4E              ;
                db $F8,$2E,$74,$1E,$41,$1C,$A3,$28              ;

CODE_05E3BF:    INC $0E74               ; $05:E3BF: EE 74 0E    ;
                LDA $0E74               ; $05:E3C2: AD 74 0E    ;
                AND #$07                ; $05:E3C5: 29 07       ;
                BEQ CODE_05E3CC         ; $05:E3C7: F0 03       ;
                JMP CODE_05E441         ; $05:E3C9: 4C 41 E4    ;

CODE_05E3CC:    INC $0E75               ; $05:E3CC: EE 75 0E    ;
                LDA $0E75               ; $05:E3CF: AD 75 0E    ;
                CMP #$03                ; $05:E3D2: C9 03       ;
                BNE CODE_05E3DB         ; $05:E3D4: D0 05       ;
                STZ $0E75               ; $05:E3D6: 9C 75 0E    ;
                LDA #$00                ; $05:E3D9: A9 00       ;
CODE_05E3DB:    ASL A                   ; $05:E3DB: 0A          ;
                ASL A                   ; $05:E3DC: 0A          ;
                ASL A                   ; $05:E3DD: 0A          ;
                TAX                     ; $05:E3DE: AA          ;
                REP #$20                ; $05:E3DF: C2 20       ;
                LDA DATA_05E2DF,x       ; $05:E3E1: BD DF E2    ;
                STA $1026               ; $05:E3E4: 8D 26 10    ;
                LDA DATA_05E327,x       ; $05:E3E7: BD 27 E3    ;
                STA $100A               ; $05:E3EA: 8D 0A 10    ;
                LDA DATA_05E2F7,x       ; $05:E3ED: BD F7 E2    ;
                STA $102C               ; $05:E3F0: 8D 2C 10    ;
                LDA DATA_05E2DF+2,x     ; $05:E3F3: BD E1 E2    ;
                STA $1028               ; $05:E3F6: 8D 28 10    ;
                LDA DATA_05E327+2,x     ; $05:E3F9: BD 29 E3    ;
                STA $100C               ; $05:E3FC: 8D 0C 10    ;
                LDA DATA_05E2F7+2,x     ; $05:E3FF: BD F9 E2    ;
                STA $102E               ; $05:E402: 8D 2E 10    ;
                LDA DATA_05E2DF+4,x     ; $05:E405: BD E3 E2    ;
                STA $102A               ; $05:E408: 8D 2A 10    ;
                LDA DATA_05E327+4,x     ; $05:E40B: BD 2B E3    ;
                STA $100E               ; $05:E40E: 8D 0E 10    ;
                LDA DATA_05E2F7+4,x     ; $05:E411: BD FB E2    ;
                STA $1030               ; $05:E414: 8D 30 10    ;
                SEP #$20                ; $05:E417: E2 20       ;
                LDA $0E20               ; $05:E419: AD 20 0E    ;
                BNE CODE_05E441         ; $05:E41C: D0 23       ;
                LDA $DB                 ; $05:E41E: A5 DB       ;
                BEQ CODE_05E476         ; $05:E420: F0 54       ;
                CMP #$1B                ; $05:E422: C9 1B       ;
                BEQ CODE_05E476         ; $05:E424: F0 50       ;
                CMP #$21                ; $05:E426: C9 21       ;
                BNE CODE_05E42D         ; $05:E428: D0 03       ;
                JMP CODE_05E587         ; $05:E42A: 4C 87 E5    ;

CODE_05E42D:    CMP #$09                ; $05:E42D: C9 09       ;
                BEQ CODE_05E478         ; $05:E42F: F0 47       ;
                CMP #$19                ; $05:E431: C9 19       ;
                BEQ CODE_05E439         ; $05:E433: F0 04       ;
                CMP #$1A                ; $05:E435: C9 1A       ;
                BNE CODE_05E43C         ; $05:E437: D0 03       ;
CODE_05E439:    JMP CODE_05E4A5         ; $05:E439: 4C A5 E4    ;

CODE_05E43C:    LDA #$01                ; $05:E43C: A9 01       ;
                STA $1200               ; $05:E43E: 8D 00 12    ;
CODE_05E441:    LDA $0E74               ; $05:E441: AD 74 0E    ;
                AND #$03                ; $05:E444: 29 03       ;
                BNE CODE_05E476         ; $05:E446: D0 2E       ;
                INC $0E76               ; $05:E448: EE 76 0E    ;
                LDA $0E76               ; $05:E44B: AD 76 0E    ;
                CMP #$03                ; $05:E44E: C9 03       ;
                BNE CODE_05E457         ; $05:E450: D0 05       ;
                STZ $0E76               ; $05:E452: 9C 76 0E    ;
                LDA #$00                ; $05:E455: A9 00       ;
CODE_05E457:    ASL A                   ; $05:E457: 0A          ;
                ASL A                   ; $05:E458: 0A          ;
                ASL A                   ; $05:E459: 0A          ;
                TAX                     ; $05:E45A: AA          ;
                REP #$20                ; $05:E45B: C2 20       ;
                LDA DATA_05E30F,x       ; $05:E45D: BD 0F E3    ;
                STA $1032               ; $05:E460: 8D 32 10    ;
                LDA DATA_05E30F+2,x     ; $05:E463: BD 11 E3    ;
                STA $1034               ; $05:E466: 8D 34 10    ;
                LDA DATA_05E30F+4,x     ; $05:E469: BD 13 E3    ;
                STA $1036               ; $05:E46C: 8D 36 10    ;
                SEP #$20                ; $05:E46F: E2 20       ;
                LDA #$01                ; $05:E471: A9 01       ;
                STA $1200               ; $05:E473: 8D 00 12    ;
CODE_05E476:    PLB                     ; $05:E476: AB          ;
                RTL                     ; $05:E477: 6B          ;

CODE_05E478:    LDA $0E74               ; $05:E478: AD 74 0E    ;
                AND #$38                ; $05:E47B: 29 38       ;
                LSR A                   ; $05:E47D: 4A          ;
                LSR A                   ; $05:E47E: 4A          ;
                TAX                     ; $05:E47F: AA          ;
                REP #$20                ; $05:E480: C2 20       ;
                LDA DATA_05E4D7,x       ; $05:E482: BD D7 E4    ;
                STA $10E6               ; $05:E485: 8D E6 10    ;
                LDA DATA_05E4D7+16,x    ; $05:E488: BD E7 E4    ;
                STA $10E8               ; $05:E48B: 8D E8 10    ;
                LDA DATA_05E4D7+32,x    ; $05:E48E: BD F7 E4    ;
                STA $10FA               ; $05:E491: 8D FA 10    ;
                LDA DATA_05E4D7+48,x    ; $05:E494: BD 07 E5    ;
                STA $10FC               ; $05:E497: 8D FC 10    ;
                LDA DATA_05E4D7+64,x    ; $05:E49A: BD 17 E5    ;
                STA $10FE               ; $05:E49D: 8D FE 10    ;
                SEP #$20                ; $05:E4A0: E2 20       ;
                JMP CODE_05E43C         ; $05:E4A2: 4C 3C E4    ;

CODE_05E4A5:    LDA $0E74               ; $05:E4A5: AD 74 0E    ;
                AND #$38                ; $05:E4A8: 29 38       ;
                ASL A                   ; $05:E4AA: 0A          ;
                TAX                     ; $05:E4AB: AA          ;
                REP #$20                ; $05:E4AC: C2 20       ;
                LDA DATA_05E33F,x       ; $05:E4AE: BD 3F E3    ;
                STA $10E6               ; $05:E4B1: 8D E6 10    ;
                LDA DATA_05E33F+2,x     ; $05:E4B4: BD 41 E3    ;
                STA $10E8               ; $05:E4B7: 8D E8 10    ;
                LDA DATA_05E33F+4,x     ; $05:E4BA: BD 43 E3    ;
                STA $10EA               ; $05:E4BD: 8D EA 10    ;
                LDA DATA_05E33F+6,x     ; $05:E4C0: BD 45 E3    ;
                STA $10EC               ; $05:E4C3: 8D EC 10    ;
                LDA DATA_05E33F+8,x     ; $05:E4C6: BD 47 E3    ;
                STA $10EE               ; $05:E4C9: 8D EE 10    ;
                LDA DATA_05E33F+10,x    ; $05:E4CC: BD 49 E3    ;
                STA $10F0               ; $05:E4CF: 8D F0 10    ;
                SEP #$20                ; $05:E4D2: E2 20       ;
                JMP CODE_05E43C         ; $05:E4D4: 4C 3C E4    ;

DATA_05E4D7:    db $BF,$7F,$38,$7F,$B4,$76,$30,$72              ;
                db $BF,$7F,$38,$7F,$B4,$76,$30,$72              ;
                db $38,$7F,$B4,$76,$30,$72,$BF,$7F              ;
                db $38,$7F,$B4,$76,$30,$72,$BF,$7F              ;
                db $B4,$76,$30,$72,$BF,$7F,$38,$7F              ;
                db $B4,$76,$30,$72,$BF,$7F,$38,$7F              ;
                db $C9,$69,$87,$61,$45,$59,$03,$51              ;
                db $C9,$69,$C9,$69,$C9,$69,$46,$59              ;
                db $30,$72,$BF,$7F,$38,$7F,$B4,$76              ;
                db $30,$72,$BF,$7F,$38,$7F,$B4,$76              ;

DATA_05E527:    db $63,$0C,$E5,$1C,$27,$29,$06,$25              ;
                db $63,$0C,$07,$1D,$2A,$25,$09,$21              ;
                db $63,$0C,$29,$19,$2C,$21,$2B,$1D              ;
                db $63,$0C,$07,$1D,$2A,$25,$09,$21              ;
                db $63,$0C,$E5,$1C,$27,$29,$06,$25              ;
                db $63,$0C,$07,$1D,$2A,$25,$09,$21              ;
                db $63,$0C,$29,$19,$2C,$21,$2B,$1D              ;
                db $63,$0C,$07,$1D,$2A,$25,$09,$21              ;

DATA_05E567:    db $77,$00,$7A,$01,$98,$00,$9B,$01              ;
                db $B9,$00,$BC,$01,$FB,$00,$FE,$01              ;
                db $DA,$00,$DD,$01,$B9,$00,$BC,$01              ;
                db $98,$00,$9B,$01,$77,$00,$7A,$01              ;

CODE_05E587:    LDA $0E74               ; $05:E587: AD 74 0E    ;
                AND #$38                ; $05:E58A: 29 38       ;
                TAX                     ; $05:E58C: AA          ;
                LSR A                   ; $05:E58D: 4A          ;
                TAY                     ; $05:E58E: A8          ;
                REP #$20                ; $05:E58F: C2 20       ;
                LDA DATA_05E527,x       ; $05:E591: BD 27 E5    ;
                STA $10E2               ; $05:E594: 8D E2 10    ;
                LDA DATA_05E527+2,x     ; $05:E597: BD 29 E5    ;
                STA $10E4               ; $05:E59A: 8D E4 10    ;
                LDA DATA_05E527+4,x     ; $05:E59D: BD 2B E5    ;
                STA $10E6               ; $05:E5A0: 8D E6 10    ;
                LDA DATA_05E527+6,x     ; $05:E5A3: BD 2D E5    ;
                STA $10E8               ; $05:E5A6: 8D E8 10    ;
                LDA DATA_05E567,y       ; $05:E5A9: B9 67 E5    ;
                STA $10FC               ; $05:E5AC: 8D FC 10    ;
                LDA DATA_05E567+2,y     ; $05:E5AF: B9 69 E5    ;
                STA $10FE               ; $05:E5B2: 8D FE 10    ;
                SEP #$20                ; $05:E5B5: E2 20       ;
                LDA $1C                 ; $05:E5B7: A5 1C       ;
                CMP #$35                ; $05:E5B9: C9 35       ;
                BEQ CODE_05E631         ; $05:E5BB: F0 74       ;
                LDA $0EB7               ; $05:E5BD: AD B7 0E    ;
                BNE CODE_05E5E6         ; $05:E5C0: D0 24       ;
                LDA $07B8               ; $05:E5C2: AD B8 07    ;
                AND #$0F                ; $05:E5C5: 29 0F       ;
                BNE CODE_05E631         ; $05:E5C7: D0 68       ;
                LDA $0F                 ; $05:E5C9: A5 0F       ;
                CMP #$08                ; $05:E5CB: C9 08       ;
                BNE CODE_05E5D4         ; $05:E5CD: D0 05       ;
                LDA #$18                ; $05:E5CF: A9 18       ;\Lightning sound
                STA $1603               ; $05:E5D1: 8D 03 16    ;/
CODE_05E5D4:    LDA #$11                ; $05:E5D4: A9 11       ;
                STA $0EB8               ; $05:E5D6: 8D B8 0E    ;
                LDA #$1F                ; $05:E5D9: A9 1F       ;
                STA $0EB9               ; $05:E5DB: 8D B9 0E    ;
                STA $0EBA               ; $05:E5DE: 8D BA 0E    ;
                INC $0EB7               ; $05:E5E1: EE B7 0E    ;
                BRA CODE_05E60E         ; $05:E5E4: 80 28       ;

CODE_05E5E6:    DEC $0EB8               ; $05:E5E6: CE B8 0E    ;
                DEC $0EB9               ; $05:E5E9: CE B9 0E    ;
                DEC $0EB9               ; $05:E5EC: CE B9 0E    ;
                DEC $0EBA               ; $05:E5EF: CE BA 0E    ;
                DEC $0EBA               ; $05:E5F2: CE BA 0E    ;
                DEC $0EB8               ; $05:E5F5: CE B8 0E    ;
                DEC $0EB9               ; $05:E5F8: CE B9 0E    ;
                DEC $0EB9               ; $05:E5FB: CE B9 0E    ;
                DEC $0EBA               ; $05:E5FE: CE BA 0E    ;
                DEC $0EBA               ; $05:E601: CE BA 0E    ;
                LDA $0EB8               ; $05:E604: AD B8 0E    ;
                CMP #$03                ; $05:E607: C9 03       ;
                BNE CODE_05E60E         ; $05:E609: D0 03       ;
                STZ $0EB7               ; $05:E60B: 9C B7 0E    ;
CODE_05E60E:    REP #$20                ; $05:E60E: C2 20       ;
                LDA $0EB8               ; $05:E610: AD B8 0E    ;
                AND #$00FF              ; $05:E613: 29 FF 00    ;
                XBA                     ; $05:E616: EB          ;
                ASL A                   ; $05:E617: 0A          ;
                ASL A                   ; $05:E618: 0A          ;
                STA $E4                 ; $05:E619: 85 E4       ;
                LDA $0EB9               ; $05:E61B: AD B9 0E    ;
                AND #$00FF              ; $05:E61E: 29 FF 00    ;
                XBA                     ; $05:E621: EB          ;
                LSR A                   ; $05:E622: 4A          ;
                LSR A                   ; $05:E623: 4A          ;
                LSR A                   ; $05:E624: 4A          ;
                ORA $E4                 ; $05:E625: 05 E4       ;
                ORA $0EBA               ; $05:E627: 0D BA 0E    ;
                STA $E4                 ; $05:E62A: 85 E4       ;
                STA $10E2               ; $05:E62C: 8D E2 10    ;
                SEP #$20                ; $05:E62F: E2 20       ;
CODE_05E631:    JMP CODE_05E43C         ; $05:E631: 4C 3C E4    ;

CODE_05E634:    LDA $0B76               ; $05:E634: AD 76 0B    ;
                BNE CODE_05E6AE         ; $05:E637: D0 75       ;
                STZ $028D               ; $05:E639: 9C 8D 02    ;Flag to upload animated FG
                LDA $09                 ; $05:E63C: A5 09       ;
                AND #$07                ; $05:E63E: 29 07       ;
                BNE CODE_05E67A         ; $05:E640: D0 38       ;
                LDA $09                 ; $05:E642: A5 09       ;
                AND #$38                ; $05:E644: 29 38       ;
                LSR A                   ; $05:E646: 4A          ;
                LSR A                   ; $05:E647: 4A          ;
                LSR A                   ; $05:E648: 4A          ;
                STA $04                 ; $05:E649: 85 04       ;
                LDA #$06                ; $05:E64B: A9 06       ;
                STA $0287               ; $05:E64D: 8D 87 02    ;
                REP #$20                ; $05:E650: C2 20       ;
                LDA #$8000              ; $05:E652: A9 00 80    ;
                LDY $04                 ; $05:E655: A4 04       ;
CODE_05E657:    DEY                     ; $05:E657: 88          ;
                BMI CODE_05E660         ; $05:E658: 30 06       ;
                CLC                     ; $05:E65A: 18          ;
                ADC #$0800              ; $05:E65B: 69 00 08    ;
                BRA CODE_05E657         ; $05:E65E: 80 F7       ;

CODE_05E660:    CLC                     ; $05:E660: 18          ;
                ADC #$4000              ; $05:E661: 69 00 40    ;
                STA $0285               ; $05:E664: 8D 85 02    ;
                LDA #$1C00              ; $05:E667: A9 00 1C    ;
                STA $028A               ; $05:E66A: 8D 8A 02    ;
                LDA #$0600              ; $05:E66D: A9 00 06    ;
                STA $0288               ; $05:E670: 8D 88 02    ;
                SEP #$20                ; $05:E673: E2 20       ;
                INC $028D               ; $05:E675: EE 8D 02    ;Set flag to upload animated FG
                BRA CODE_05E6AE         ; $05:E678: 80 34       ;

CODE_05E67A:    LDA $09                 ; $05:E67A: A5 09       ;
                CLC                     ; $05:E67C: 18          ;
                ADC #$04                ; $05:E67D: 69 04       ;
                STA $0285               ; $05:E67F: 8D 85 02    ;
                AND #$07                ; $05:E682: 29 07       ;
                BNE CODE_05E6AE         ; $05:E684: D0 28       ;
                LDA #$0C                ; $05:E686: A9 0C       ;
                STA $0287               ; $05:E688: 8D 87 02    ;
                REP #$20                ; $05:E68B: C2 20       ;
                LDA $0285               ; $05:E68D: AD 85 02    ;
                AND #$0038              ; $05:E690: 29 38 00    ;
                ASL A                   ; $05:E693: 0A          ;
                ASL A                   ; $05:E694: 0A          ;
                ASL A                   ; $05:E695: 0A          ;
                CLC                     ; $05:E696: 18          ;
                ADC #$FB00              ; $05:E697: 69 00 FB    ;
                STA $0285               ; $05:E69A: 8D 85 02    ;
                LDA #$5160              ; $05:E69D: A9 60 51    ;
                STA $028A               ; $05:E6A0: 8D 8A 02    ;
                LDA #$0040              ; $05:E6A3: A9 40 00    ;
                STA $0288               ; $05:E6A6: 8D 88 02    ;
                SEP #$20                ; $05:E6A9: E2 20       ;
                INC $028D               ; $05:E6AB: EE 8D 02    ;
CODE_05E6AE:    RTL                     ; $05:E6AE: 6B          ;

DATA_05E6AF:    db $01,$18                                      ;Bonus Room background number, indexed by player number.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Graphics Tileset upload routines
;; $99 = Tileset number to upload
;; If tileset is 01 (Mario Bonus), then the game
;; picks either 01 or 18 (Luigi Bonus) according 
;; to the current player.

CODE_05E6B1:    SEP #$30                ; $05:E6B1: E2 30       ;
                PHB                     ; $05:E6B3: 8B          ;
                PHK                     ; $05:E6B4: 4B          ;
                PLB                     ; $05:E6B5: AB          ;
                LDA $99                 ; $05:E6B6: A5 99       ;\
                CMP #$01                ; $05:E6B8: C9 01       ; | Branch if not bonus room
                BNE CODE_05E6C7         ; $05:E6BA: D0 0B       ;/
                STA $02F8               ; $05:E6BC: 8D F8 02    ;Set bonus room flag
                LDX $0753               ; $05:E6BF: AE 53 07    ;\
                LDA DATA_05E6AF,x       ; $05:E6C2: BD AF E6    ; | Get Luigi or Mario's bonus room tileset number
                STA $99                 ; $05:E6C5: 85 99       ;/
CODE_05E6C7:    JSR CODE_05E82A         ; $05:E6C7: 20 2A E8    ;GFX upload routine
                LDA $99                 ; $05:E6CA: A5 99       ;\
                ASL A                   ; $05:E6CC: 0A          ; |
                TAX                     ; $05:E6CD: AA          ; |
                LDA PNTR_05E6DB,x       ; $05:E6CE: BD DB E6    ; |
                STA $00                 ; $05:E6D1: 85 00       ; | A routine for each tilemap
                LDA PNTR_05E6DB+1,x     ; $05:E6D3: BD DC E6    ; |
                STA $01                 ; $05:E6D6: 85 01       ; |
                JMP ($0000)             ; $05:E6D8: 6C 00 00    ;/

PNTR_05E6DB:    dw CODE_05E71B                                  ;$00 - Unused?
                dw CODE_05E73C                                  ;$01 - Mario bonus background + cave FG
                dw CODE_05E727                                  ;$02 - Hills background & SUPER MARIO BROS banner
                dw CODE_05E73C                                  ;$03 - Underground background
                dw CODE_05E74F                                  ;$04 - Castle FG & BG tileset
                dw CODE_05E727                                  ;$05 - Tall slim hills background
                dw CODE_05E71B                                  ;$06 - Castle FG & BG tileset
                dw CODE_05E743                                  ;$07 - Hills background
                dw CODE_05E71B                                  ;$08 - Underwater BG & FG tileset
                dw CODE_05E743                                  ;$09 - Hills background & SUPER MARIO BROS banner
                dw CODE_05E75B                                  ;$0A - Game over screen & Mario bonus room background
                dw CODE_05E727                                  ;$0B - Starry night background
                dw CODE_05E727                                  ;$0C - Bowser's Castle (outside) background
                dw CODE_05E71B                                  ;$0D - Mushrooms background
                dw CODE_05E727                                  ;$0E - Waterfall background
                dw CODE_05E71B                                  ;$0F - Underwater ruins background
                dw CODE_05E727                                  ;$10 - Goomba pillars BG & snow FG
                dw CODE_05E71B                                  ;$11 - Underground foreground
                dw CODE_05E71B                                  ;$12 - Snow foreground
                dw CODE_05E71B                                  ;$13 - Bowser's Castle BG, part 1
                dw CODE_05E71B                                  ;$14 - Bowser's Castle BG, part 2
                dw CODE_05E71B                                  ;$15 - Game Over and Time Up text
                dw CODE_05E71B                                  ;$16 - Starry night background
                dw CODE_05E71B                                  ;$17 - Grass foreground
                dw CODE_05E73C                                  ;$18 - Luigi bonus background + cave FG
                dw CODE_05E71B                                  ;$19 - Unused?
                dw CODE_05E71B                                  ;$1A - Unused?
                dw CODE_05E71B                                  ;$1B - Unused?
                dw CODE_05E71B                                  ;$1C - Unused?
                dw CODE_05E71B                                  ;$1D - Unused?
                dw CODE_05E71B                                  ;$1E - Unused?
                dw CODE_05E71B                                  ;$1F - Unused?

;Disable graphics animations so that GFX uploads normally
;without animation interfering
CODE_05E71B:    STZ $99                 ; $05:E71B: 64 99       ;Set GFX to upload to none
                PLB                     ; $05:E71D: AB          ;
                STZ $028D               ; $05:E71E: 9C 8D 02    ;Disable flag to upload animated graphics
                LDA #$01                ; $05:E721: A9 01       ;\
                STA $028C               ; $05:E723: 8D 8C 02    ;/Disable graphics animation and stuff
                RTL                     ; $05:E726: 6B          ;

;Set grass or snow foreground
CODE_05E727:    LDA $DB                 ; $05:E727: A5 DB       ;\
                CMP #$16                ; $05:E729: C9 16       ; |If tall slim hills background with snow
                BEQ CODE_05E748         ; $05:E72B: F0 1B       ;/ get snow foreground
                CMP #$14                ; $05:E72D: C9 14       ;\ Same as above
                BEQ CODE_05E748         ; $05:E72F: F0 17       ;/
                CMP #$0D                ; $05:E731: C9 0D       ;\ Same as above
                BEQ CODE_05E748         ; $05:E733: F0 13       ;/
                LDA #$17                ; $05:E735: A9 17       ;\Grass foreground
                JSR CODE_05E82A         ; $05:E737: 20 2A E8    ;/GFX upload routine
                BRA CODE_05E71B         ; $05:E73A: 80 DF       ;finish upload

;Set underground foreground
CODE_05E73C:    LDA #$11                ; $05:E73C: A9 11       ;\Underground foreground
                JSR CODE_05E82A         ; $05:E73E: 20 2A E8    ;/GFX upload routine
                BRA CODE_05E71B         ; $05:E741: 80 D8       ;finish upload

;Set background to starry night and foreground to snow
CODE_05E743:    LDA #$16                ; $05:E743: A9 16       ;\Starry night background
                JSR CODE_05E82A         ; $05:E745: 20 2A E8    ;/GFX upload routine
CODE_05E748:    LDA #$12                ; $05:E748: A9 12       ;\Snow foreground
                JSR CODE_05E82A         ; $05:E74A: 20 2A E8    ;/GFX upload routine
                BRA CODE_05E71B         ; $05:E74D: 80 CC       ;finish upload

;Set Bowser's castle background
CODE_05E74F:    LDA #$13                ; $05:E74F: A9 13       ;\Bowser's castle background (1)
                JSR CODE_05E82A         ; $05:E751: 20 2A E8    ;/GFX upload routine
                LDA #$14                ; $05:E754: A9 14       ;\Bowser's castle background (2)
                JSR CODE_05E82A         ; $05:E756: 20 2A E8    ;/GFX upload routine
                BRA CODE_05E71B         ; $05:E759: 80 C0       ;finish upload

;Set game over graphics
CODE_05E75B:    LDA #$15                ; $05:E75B: A9 15       ;\Game over and time up text
                JSR CODE_05E82A         ; $05:E75D: 20 2A E8    ;/GFX upload routine
                BRA CODE_05E71B         ; $05:E760: 80 B9       ;finish upload

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Tables of pointers to GFX files, their VRAM
;;address as well as their size.
;;
;; Address -  VRAM - Size
;; $000000 - $0000 - $1000 ; $00 - (null)
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

DATA_05E762:    db $00,$00                                      ; Bank bytes for GFX data addresses.
                db DATA_08E000>>16,$00                          ;
                db DATA_06A000>>16,$00                          ;
                db DATA_098000>>16,$00                          ;
                db DATA_09A000>>16,$00                          ;
                db DATA_089800>>16,$00                          ;
                db DATA_09A000>>16,$00                          ;
                db DATA_06A000>>16,$00                          ;
                db DATA_088000>>16,$00                          ;
                db DATA_06A000>>16,$00                          ;
                db DATA_08D000>>16,$00                          ;
                db DATA_09E000>>16,$00                          ;
                db DATA_08A000>>16,$00                          ;
                db DATA_089000>>16,$00                          ;
                db DATA_08B000>>16,$00                          ;
                db DATA_099000>>16,$00                          ;
                db DATA_08B800>>16,$00                          ;
                db DATA_09D000>>16,$00                          ;
                db DATA_08C000>>16,$00                          ;
                db DATA_09E800>>16,$00                          ;
                db DATA_09F000>>16,$00                          ;
                db DATA_09F800>>16,$00                          ;
                db DATA_09E000>>16,$00                          ;
                db DATA_09C000>>16,$00                          ;
                db DATA_08F000>>16,$00                          ;

DATA_05E794:    dw $0000                                        ;Low and high bytes for GFX data addresses
                dw DATA_08E000                                  ;
                dw DATA_06A000                                  ;
                dw DATA_098000                                  ;
                dw DATA_09A000                                  ;
                dw DATA_089800                                  ;
                dw DATA_09A000                                  ;
                dw DATA_06A000                                  ;
                dw DATA_088000                                  ;
                dw DATA_06A000                                  ;
                dw DATA_08D000                                  ;
                dw DATA_09E000                                  ;
                dw DATA_08A000                                  ;
                dw DATA_089000                                  ;
                dw DATA_08B000                                  ;
                dw DATA_099000                                  ;
                dw DATA_08B800                                  ;
                dw DATA_09D000                                  ;
                dw DATA_08C000                                  ;
                dw DATA_09E800                                  ;
                dw DATA_09F000                                  ;
                dw DATA_09F800                                  ;
                dw DATA_09E000                                  ;
                dw DATA_09C000                                  ;
                dw DATA_08F000                                  ;

DATA_05E7C6:    dw $0000,$2000,$2000,$2000                      ;GFX VRAM address
                dw $2000,$2C00,$2000,$2000                      ;
                dw $2000,$2000,$3400,$2C00                      ;
                dw $2800,$2C00,$2C00,$2000                      ;
                dw $2C00,$3000,$3000,$2000                      ;
                dw $2800,$2C00,$2C00,$3000                      ;
                dw $2000                                        ;

DATA_05E7F8:    dw $1000,$1000,$2000,$1000                      ;GFX size
                dw $2000,$0800,$2000,$1000                      ;
                dw $1000,$2000,$2000,$0800                      ;
                dw $1000,$0800,$0800,$1000                      ;
                dw $1000,$1000,$1000,$0800                      ;
                dw $0800,$0800,$0800,$1000                      ;
                dw $1000                                        ;

;GFX upload routine. GFX number in A
CODE_05E82A:    ASL A                   ; $05:E82A: 0A          ;\ Routine enters with $7E0099 loaded in accumulator
                TAX                     ; $05:E82B: AA          ;/ but can also be fixed values. A * 2 to index
                LDA DATA_05E762,x       ; $05:E82C: BD 62 E7    ;\
                STA $0287               ; $05:E82F: 8D 87 02    ;/Load DMA source bank byte
                REP #$20                ; $05:E832: C2 20       ;16-bit A
                LDA DATA_05E794,x       ; $05:E834: BD 94 E7    ;\DMA source address
                STA $0285               ; $05:E837: 8D 85 02    ;/
                LDA DATA_05E7C6,x       ; $05:E83A: BD C6 E7    ;\
                STA $028A               ; $05:E83D: 8D 8A 02    ;/DMA VRAM address
                LDA DATA_05E7F8,x       ; $05:E840: BD F8 E7    ;\
                STA $0288               ; $05:E843: 8D 88 02    ;/DMA size
                SEP #$20                ; $05:E846: E2 20       ;8-bit A
                JSR CODE_05E84C         ; $05:E848: 20 4C E8    ;DMA this setup
                RTS                     ; $05:E84B: 60          ;

CODE_05E84C:    LDA #$80                ; $05:E84C: A9 80       ;\
                STA $2115               ; $05:E84E: 8D 15 21    ;/address increment mode
                REP #$20                ; $05:E851: C2 20       ;
                LDA $028A               ; $05:E853: AD 8A 02    ;\
                STA $2116               ; $05:E856: 8D 16 21    ;/DMA VRAM address
                LDA #$1801              ; $05:E859: A9 01 18    ;\
                STA $4300               ; $05:E85C: 8D 00 43    ;/2 regs write once for $2118
                LDA $0285               ; $05:E85F: AD 85 02    ;\
                STA $4302               ; $05:E862: 8D 02 43    ;/Set DMA source address
                LDX $0287               ; $05:E865: AE 87 02    ;\
                STX $4304               ; $05:E868: 8E 04 43    ;/DMA source bank
                LDA $0288               ; $05:E86B: AD 88 02    ;\
                STA $4305               ; $05:E86E: 8D 05 43    ;/DMA size
                LDX #$01                ; $05:E871: A2 01       ;\
                STX $420B               ; $05:E873: 8E 0B 42    ;/Enable DMA on channel 0
                SEP #$20                ; $05:E876: E2 20       ;
                RTS                     ; $05:E878: 60          ;

CODE_05E879:    PHB                     ; $05:E879: 8B          ;
                PHK                     ; $05:E87A: 4B          ;
                PLB                     ; $05:E87B: AB          ;
                STZ $0F49               ; $05:E87C: 9C 49 0F    ;
                PHX                     ; $05:E87F: DA          ;
                LDX $9E                 ; $05:E880: A6 9E       ;Get current sprite index
                LDA $1C,x               ; $05:E882: B5 1C       ;\
                CMP #$04                ; $05:E884: C9 04       ; |Return if not a regular shelled walking sprite
                BCS CODE_05E890         ; $05:E886: B0 08       ;/
                LDA $29,x               ; $05:E888: B5 29       ;\
                BMI CODE_05E894         ; $05:E88A: 30 08       ;/If not kicked, return
                AND #$06                ; $05:E88C: 29 06       ;\
                BEQ CODE_05E894         ; $05:E88E: F0 04       ;/If not stunned or upside-down, return
CODE_05E890:    PLX                     ; $05:E890: FA          ;
                PLB                     ; $05:E891: AB          ;
                CLC                     ; $05:E892: 18          ;
                RTL                     ; $05:E893: 6B          ;

CODE_05E894:    LDA $0029,x             ; $05:E894: BD 29 00    ;
                STA $E0                 ; $05:E897: 85 E0       ;
                CMP #$02                ; $05:E899: C9 02       ;
                BEQ CODE_05E8A5         ; $05:E89B: F0 08       ;
                CMP #$03                ; $05:E89D: C9 03       ;
                BEQ CODE_05E8A5         ; $05:E89F: F0 04       ;
                CMP #$04                ; $05:E8A1: C9 04       ;
                BNE CODE_05E8AA         ; $05:E8A3: D0 05       ;
CODE_05E8A5:    STZ $0F40,x             ; $05:E8A5: 9E 40 0F    ;
                BRA CODE_05E8B7         ; $05:E8A8: 80 0D       ;

CODE_05E8AA:    AND #$80                ; $05:E8AA: 29 80       ;
                BEQ CODE_05E890         ; $05:E8AC: F0 E2       ;
                LDA $0F                 ; $05:E8AE: A5 0F       ;
                CMP #$0A                ; $05:E8B0: C9 0A       ;
                BCS CODE_05E8B7         ; $05:E8B2: B0 03       ;
                INC $0F40,x             ; $05:E8B4: FE 40 0F    ;
CODE_05E8B7:    LDA $0F40,x             ; $05:E8B7: BD 40 0F    ;
                AND #$0C                ; $05:E8BA: 29 0C       ;
                STA $E4                 ; $05:E8BC: 85 E4       ;
                LDA $1C,x               ; $05:E8BE: B5 1C       ;
                LDX $E4                 ; $05:E8C0: A6 E4       ;
                CMP #$02                ; $05:E8C2: C9 02       ;
                BNE CODE_05E8CB         ; $05:E8C4: D0 05       ;
                TXA                     ; $05:E8C6: 8A          ;
                CLC                     ; $05:E8C7: 18          ;
                ADC #$10                ; $05:E8C8: 69 10       ;
                TAX                     ; $05:E8CA: AA          ;
CODE_05E8CB:    LDA $E0                 ; $05:E8CB: A5 E0       ;
                AND #$0F                ; $05:E8CD: 29 0F       ;
                CMP #$04                ; $05:E8CF: C9 04       ;
                BNE CODE_05E8DC         ; $05:E8D1: D0 09       ;
                TXA                     ; $05:E8D3: 8A          ;
                CLC                     ; $05:E8D4: 18          ;
                ADC #$20                ; $05:E8D5: 69 20       ;
                TAX                     ; $05:E8D7: AA          ;
                LDA #$80                ; $05:E8D8: A9 80       ;
                TSB $04                 ; $05:E8DA: 04 04       ;
CODE_05E8DC:    TYA                     ; $05:E8DC: 98          ;
                CLC                     ; $05:E8DD: 18          ;
                ADC #$08                ; $05:E8DE: 69 08       ;
                TAY                     ; $05:E8E0: A8          ;
                LDA $03B9               ; $05:E8E1: AD B9 03    ;
                CLC                     ; $05:E8E4: 18          ;
                ADC #$08                ; $05:E8E5: 69 08       ;
                CMP #$F0                ; $05:E8E7: C9 F0       ;
                BCC CODE_05E8ED         ; $05:E8E9: 90 02       ;
                LDA #$F0                ; $05:E8EB: A9 F0       ;
CODE_05E8ED:    PHA                     ; $05:E8ED: 48          ;
                LDA $04                 ; $05:E8EE: A5 04       ;
                BPL CODE_05E8F8         ; $05:E8F0: 10 06       ;
                PLA                     ; $05:E8F2: 68          ;
                CLC                     ; $05:E8F3: 18          ;
                ADC #$02                ; $05:E8F4: 69 02       ;
                BRA CODE_05E8F9         ; $05:E8F6: 80 01       ;

CODE_05E8F8:    PLA                     ; $05:E8F8: 68          ;
CODE_05E8F9:    JSR CODE_05E9BF         ; $05:E8F9: 20 BF E9    ;
                LDA $04                 ; $05:E8FC: A5 04       ;
                BPL CODE_05E908         ; $05:E8FE: 10 08       ;
                LDA $03B9               ; $05:E900: AD B9 03    ;
                CLC                     ; $05:E903: 18          ;
                ADC #$12                ; $05:E904: 69 12       ;
                BRA CODE_05E90E         ; $05:E906: 80 06       ;

CODE_05E908:    LDA $03B9               ; $05:E908: AD B9 03    ;
                CLC                     ; $05:E90B: 18          ;
                ADC #$10                ; $05:E90C: 69 10       ;
CODE_05E90E:    JSR CODE_05E9BF         ; $05:E90E: 20 BF E9    ;
                LDX $E4                 ; $05:E911: A6 E4       ;
                LDA DATA_05EA28,x       ; $05:E913: BD 28 EA    ;
                ORA $04                 ; $05:E916: 05 04       ;
                STA $08F3,y             ; $05:E918: 99 F3 08    ;
                LDA DATA_05EA28+1,x     ; $05:E91B: BD 29 EA    ;
                ORA $04                 ; $05:E91E: 05 04       ;
                STA $08F7,y             ; $05:E920: 99 F7 08    ;
                LDA DATA_05EA28+2,x     ; $05:E923: BD 2A EA    ;
                ORA $04                 ; $05:E926: 05 04       ;
                STA $08FB,y             ; $05:E928: 99 FB 08    ;
                LDA DATA_05EA28+3,x     ; $05:E92B: BD 2B EA    ;
                ORA $04                 ; $05:E92E: 05 04       ;
                STA $08FF,y             ; $05:E930: 99 FF 08    ;
                INC $0F49               ; $05:E933: EE 49 0F    ;
                PLX                     ; $05:E936: FA          ;
                PLB                     ; $05:E937: AB          ;
                SEC                     ; $05:E938: 38          ;
                RTL                     ; $05:E939: 6B          ;

DATA_05E93A:    db $00,$FC,$F9,$F7,$F5,$F4,$F3,$F2              ;
                db $F2,$F2,$F3,$F4,$F5,$F7,$F9,$FC              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

CODE_05E95A:    PHB                     ; $05:E95A: 8B          ;
                PHK                     ; $05:E95B: 4B          ;
                PLB                     ; $05:E95C: AB          ;
                PHX                     ; $05:E95D: DA          ;
                LDX $9E                 ; $05:E95E: A6 9E       ;Get current sprite index
                LDA $1C,x               ; $05:E960: B5 1C       ;\
                CMP #$35                ; $05:E962: C9 35       ; | If not princess peach, branch
                BNE CODE_05E9AE         ; $05:E964: D0 48       ;/
                LDA $075F               ; $05:E966: AD 5F 07    ;\
                CMP #$07                ; $05:E969: C9 07       ; | If world 8, return
                BEQ CODE_05E9AE         ; $05:E96B: F0 41       ;/
                LDA $0F4A               ; $05:E96D: AD 4A 0F    ;
                AND #$1F                ; $05:E970: 29 1F       ;
                LDY $0B46,x             ; $05:E972: BC 46 0B    ;
                PHY                     ; $05:E975: 5A          ;
                TAX                     ; $05:E976: AA          ;
                LDA DATA_05E93A,x       ; $05:E977: BD 3A E9    ;
                STA $DD                 ; $05:E97A: 85 DD       ;
                JSR CODE_05E9B1         ; $05:E97C: 20 B1 E9    ;
                JSR CODE_05E9B1         ; $05:E97F: 20 B1 E9    ;
                JSR CODE_05E9B1         ; $05:E982: 20 B1 E9    ;
                JSR CODE_05E9B1         ; $05:E985: 20 B1 E9    ;
                JSR CODE_05E9B1         ; $05:E988: 20 B1 E9    ;
                JSR CODE_05E9B1         ; $05:E98B: 20 B1 E9    ;
                PLY                     ; $05:E98E: 7A          ;
                CPX #$10                ; $05:E98F: E0 10       ;
                BCS CODE_05E9AB         ; $05:E991: B0 18       ;
                LDA #$FF                ; $05:E993: A9 FF       ;
                STA $0902,y             ; $05:E995: 99 02 09    ;
                STA $0906,y             ; $05:E998: 99 06 09    ;
                LDA #$D7                ; $05:E99B: A9 D7       ;
                STA $090A,y             ; $05:E99D: 99 0A 09    ;
                STA $090E,y             ; $05:E9A0: 99 0E 09    ;
                LDA #$EE                ; $05:E9A3: A9 EE       ;
                STA $0912,y             ; $05:E9A5: 99 12 09    ;
                STA $0916,y             ; $05:E9A8: 99 16 09    ;
CODE_05E9AB:    INC $0F4A               ; $05:E9AB: EE 4A 0F    ;
CODE_05E9AE:    PLX                     ; $05:E9AE: FA          ;
                PLB                     ; $05:E9AF: AB          ;
                RTL                     ; $05:E9B0: 6B          ;

CODE_05E9B1:    LDA $0901,y             ; $05:E9B1: B9 01 09    ;
                CLC                     ; $05:E9B4: 18          ;
                ADC $DD                 ; $05:E9B5: 65 DD       ;
                STA $0901,y             ; $05:E9B7: 99 01 09    ;
                INY                     ; $05:E9BA: C8          ;
                INY                     ; $05:E9BB: C8          ;
                INY                     ; $05:E9BC: C8          ;
                INY                     ; $05:E9BD: C8          ;
                RTS                     ; $05:E9BE: 60          ;

CODE_05E9BF:    STA $0901,y             ; $05:E9BF: 99 01 09    ;
                STA $0905,y             ; $05:E9C2: 99 05 09    ;
                LDA $03AE               ; $05:E9C5: AD AE 03    ;
                STA $0900,y             ; $05:E9C8: 99 00 09    ;
                CLC                     ; $05:E9CB: 18          ;
                ADC #$08                ; $05:E9CC: 69 08       ;
                STA $0904,y             ; $05:E9CE: 99 04 09    ;
                LDA DATA_05E9E8,x       ; $05:E9D1: BD E8 E9    ;
                STA $0902,y             ; $05:E9D4: 99 02 09    ;
                LDA DATA_05E9E8+1,x     ; $05:E9D7: BD E9 E9    ;
                STA $0906,y             ; $05:E9DA: 99 06 09    ;
                INY                     ; $05:E9DD: C8          ;
                INY                     ; $05:E9DE: C8          ;
                INY                     ; $05:E9DF: C8          ;
                INY                     ; $05:E9E0: C8          ;
                INY                     ; $05:E9E1: C8          ;
                INY                     ; $05:E9E2: C8          ;
                INY                     ; $05:E9E3: C8          ;
                INY                     ; $05:E9E4: C8          ;
                INX                     ; $05:E9E5: E8          ;
                INX                     ; $05:E9E6: E8          ;
                RTS                     ; $05:E9E7: 60          ;

DATA_05E9E8:    db $6E,$6E,$6F,$6F,$C2,$C4,$C3,$C5              ;
                db $C0,$C0,$C1,$C1,$C4,$C2,$C5,$C3              ;
                db $F5,$F5,$F4,$F4,$80,$82,$81,$83              ;
                db $68,$68,$90,$90,$82,$80,$83,$81              ;
                db $6F,$6F,$6E,$6E,$C3,$C5,$C2,$C4              ;
                db $C1,$C1,$C0,$C0,$C5,$C3,$C4,$C2              ;
                db $F4,$F4,$F5,$F5,$81,$83,$80,$82              ;
                db $90,$90,$68,$68,$83,$81,$82,$80              ;

DATA_05EA28:    db $00,$40,$00,$40,$00,$00,$00,$00              ;
                db $00,$40,$00,$40,$40,$40,$40,$40              ;

CODE_05EA38:    LDA $0B46,x             ; $05:EA38: BD 46 0B    ;
                TAY                     ; $05:EA3B: A8          ;
                LDA $03AE               ; $05:EA3C: AD AE 03    ;
                STA $0900,y             ; $05:EA3F: 99 00 09    ;
                LDA $00BC,x             ; $05:EA42: BD BC 00    ;
                CMP #$02                ; $05:EA45: C9 02       ;
                BCS CODE_05EA50         ; $05:EA47: B0 07       ;
                LDA $03B9               ; $05:EA49: AD B9 03    ;
                CMP #$E8                ; $05:EA4C: C9 E8       ;
                BCC CODE_05EA52         ; $05:EA4E: 90 02       ;
CODE_05EA50:    LDA #$F0                ; $05:EA50: A9 F0       ;
CODE_05EA52:    STA $0901,y             ; $05:EA52: 99 01 09    ;
                LDA $00A1,x             ; $05:EA55: BD A1 00    ;
                BMI CODE_05EA5E         ; $05:EA58: 30 04       ;
                LDA #$A9                ; $05:EA5A: A9 A9       ;
                BRA CODE_05EA60         ; $05:EA5C: 80 02       ;

CODE_05EA5E:    LDA #$29                ; $05:EA5E: A9 29       ;
CODE_05EA60:    STA $0903,y             ; $05:EA60: 99 03 09    ;
                LDA $0E68               ; $05:EA63: AD 68 0E    ;
                AND #$18                ; $05:EA66: 29 18       ;
                LSR A                   ; $05:EA68: 4A          ;
                LSR A                   ; $05:EA69: 4A          ;
                CLC                     ; $05:EA6A: 18          ;
                ADC #$62                ; $05:EA6B: 69 62       ;
                STA $0902,y             ; $05:EA6D: 99 02 09    ;
                LDA $021A,x             ; $05:EA70: BD 1A 02    ;
                STA $E4                 ; $05:EA73: 85 E4       ;
                LDA $79,x               ; $05:EA75: B5 79       ;
                STA $E5                 ; $05:EA77: 85 E5       ;
                REP #$20                ; $05:EA79: C2 20       ;
                LDA $E4                 ; $05:EA7B: A5 E4       ;
                SEC                     ; $05:EA7D: 38          ;
                SBC $42                 ; $05:EA7E: E5 42       ;
                STA $E6                 ; $05:EA80: 85 E6       ;
                SEP #$20                ; $05:EA82: E2 20       ;
                LDA #$02                ; $05:EA84: A9 02       ;
                STA $0D00,y             ; $05:EA86: 99 00 0D    ;
                LDA $E7                 ; $05:EA89: A5 E7       ;
                BEQ CODE_05EA92         ; $05:EA8B: F0 05       ;
                LDA #$03                ; $05:EA8D: A9 03       ;
                STA $0D00,y             ; $05:EA8F: 99 00 0D    ;
CODE_05EA92:    RTL                     ; $05:EA92: 6B          ;

DATA_05EA93:    db $F9,$0E,$F7,$0E,$FA,$FB,$F8,$FB              ;
                db $F6,$FB                                      ;

DATA_05EA9D:    db $20,$22,$24                                  ;

CODE_05EAA0:    PHB                     ; $05:EAA0: 8B          ;
                PHK                     ; $05:EAA1: 4B          ;
                PLB                     ; $05:EAA2: AB          ;
                LDY #$F0                ; $05:EAA3: A0 F0       ;
                LDA $021A,x             ; $05:EAA5: BD 1A 02    ;
                STA $E4                 ; $05:EAA8: 85 E4       ;
                LDA $79,x               ; $05:EAAA: B5 79       ;
                STA $E5                 ; $05:EAAC: 85 E5       ;
                REP #$20                ; $05:EAAE: C2 20       ;
                LDA $E4                 ; $05:EAB0: A5 E4       ;
                CLC                     ; $05:EAB2: 18          ;
                ADC #$0010              ; $05:EAB3: 69 10 00    ;
                SEC                     ; $05:EAB6: 38          ;
                SBC $42                 ; $05:EAB7: E5 42       ;
                STA $E4                 ; $05:EAB9: 85 E4       ;
                CLC                     ; $05:EABB: 18          ;
                ADC #$0004              ; $05:EABC: 69 04 00    ;
                STA $E6                 ; $05:EABF: 85 E6       ;
                CLC                     ; $05:EAC1: 18          ;
                ADC #$0008              ; $05:EAC2: 69 08 00    ;
                STA $E8                 ; $05:EAC5: 85 E8       ;
                SEP #$20                ; $05:EAC7: E2 20       ;
                LDA $E4                 ; $05:EAC9: A5 E4       ;
                STA $0800,y             ; $05:EACB: 99 00 08    ;
                LDA $0238,x             ; $05:EACE: BD 38 02    ;
                STA $0801,y             ; $05:EAD1: 99 01 08    ;
                LDA #$2B                ; $05:EAD4: A9 2B       ;
                STA $0803,y             ; $05:EAD6: 99 03 08    ;
                LDA $09                 ; $05:EAD9: A5 09       ;
                AND #$18                ; $05:EADB: 29 18       ;
                LSR A                   ; $05:EADD: 4A          ;
                LSR A                   ; $05:EADE: 4A          ;
                LSR A                   ; $05:EADF: 4A          ;
                PHX                     ; $05:EAE0: DA          ;
                TAX                     ; $05:EAE1: AA          ;
                CPX #$03                ; $05:EAE2: E0 03       ;
                BNE CODE_05EAE8         ; $05:EAE4: D0 02       ;
                LDX #$01                ; $05:EAE6: A2 01       ;
CODE_05EAE8:    LDA DATA_05EA9D,x       ; $05:EAE8: BD 9D EA    ;
                STA $0802,y             ; $05:EAEB: 99 02 08    ;
                PLX                     ; $05:EAEE: FA          ;
                LDA $070F               ; $05:EAEF: AD 0F 07    ;
                BEQ CODE_05EB29         ; $05:EAF2: F0 35       ;
                LDA $010F               ; $05:EAF4: AD 0F 01    ;
                ASL A                   ; $05:EAF7: 0A          ;
                TAX                     ; $05:EAF8: AA          ;
                LDA $E6                 ; $05:EAF9: A5 E6       ;
                STA $0804,y             ; $05:EAFB: 99 04 08    ;
                LDA $E8                 ; $05:EAFE: A5 E8       ;
                STA $0808,y             ; $05:EB00: 99 08 08    ;
                LDA $010D               ; $05:EB03: AD 0D 01    ;
                STA $0805,y             ; $05:EB06: 99 05 08    ;
                STA $0809,y             ; $05:EB09: 99 09 08    ;
                LDA DATA_05EA93,x       ; $05:EB0C: BD 93 EA    ;
                STA $0806,y             ; $05:EB0F: 99 06 08    ;
                LDA DATA_05EA93+1,x     ; $05:EB12: BD 94 EA    ;
                STA $080A,y             ; $05:EB15: 99 0A 08    ;
                LDA #$22                ; $05:EB18: A9 22       ;
                STA $0807,y             ; $05:EB1A: 99 07 08    ;
                STA $080B,y             ; $05:EB1D: 99 0B 08    ;
                CPX #$04                ; $05:EB20: E0 04       ;
                BCS CODE_05EB29         ; $05:EB22: B0 05       ;
                LDA #$23                ; $05:EB24: A9 23       ;
                STA $080B,y             ; $05:EB26: 99 0B 08    ;
CODE_05EB29:    LDA #$02                ; $05:EB29: A9 02       ;
                STA $DD                 ; $05:EB2B: 85 DD       ;
                LDA $E5                 ; $05:EB2D: A5 E5       ;
                BEQ CODE_05EB33         ; $05:EB2F: F0 02       ;
                LDA #$01                ; $05:EB31: A9 01       ;
CODE_05EB33:    ORA $DD                 ; $05:EB33: 05 DD       ;
                STA $0C00,y             ; $05:EB35: 99 00 0C    ;
                STZ $DD                 ; $05:EB38: 64 DD       ;
                LDA $E7                 ; $05:EB3A: A5 E7       ;
                BEQ CODE_05EB40         ; $05:EB3C: F0 02       ;
                LDA #$01                ; $05:EB3E: A9 01       ;
CODE_05EB40:    ORA $DD                 ; $05:EB40: 05 DD       ;
                STA $0C04,y             ; $05:EB42: 99 04 0C    ;
                CPX #$04                ; $05:EB45: E0 04       ;
                BCS CODE_05EB4D         ; $05:EB47: B0 04       ;
                LDA #$02                ; $05:EB49: A9 02       ;
                STA $DD                 ; $05:EB4B: 85 DD       ;
CODE_05EB4D:    LDA $E9                 ; $05:EB4D: A5 E9       ;
                BEQ CODE_05EB53         ; $05:EB4F: F0 02       ;
                LDA #$01                ; $05:EB51: A9 01       ;
CODE_05EB53:    ORA $DD                 ; $05:EB53: 05 DD       ;
                STA $0C08,y             ; $05:EB55: 99 08 0C    ;
                PLB                     ; $05:EB58: AB          ;
                RTL                     ; $05:EB59: 6B          ;

CODE_05EB5A:    PHB                     ; $05:EB5A: 8B          ;
                PHK                     ; $05:EB5B: 4B          ;
                PLB                     ; $05:EB5C: AB          ;
                LDA $07FC               ; $05:EB5D: AD FC 07    ;\ 
                STA $701FF8             ; $05:EB60: 8F F8 1F 70 ;/ Set more difficult quest flag in SRAM
                LDA $075F               ; $05:EB64: AD 5F 07    ;\
                STA $701FF9             ; $05:EB67: 8F F9 1F 70 ;/ Set current world in SRAM
                LDA #$01                ; $05:EB6B: A9 01       ;
                STA $0F0B               ; $05:EB6D: 8D 0B 0F    ;
                LDA #$01                ; $05:EB70: A9 01       ;
                STA $07FC               ; $05:EB72: 8D FC 07    ;
                STA $075D               ; $05:EB75: 8D 5D 07    ;Enable hidden 1-up flag
                STA $07FB               ; $05:EB78: 8D FB 07    ;
                STA $076A               ; $05:EB7B: 8D 6A 07    ;
                STA $7FFB05             ; $05:EB7E: 8F 05 FB 7F ;
                LDA #$80                ; $05:EB82: A9 80       ;
                STA $1602               ; $05:EB84: 8D 02 16    ;
                STZ $075F               ; $05:EB87: 9C 5F 07    ;
                STZ $0760               ; $05:EB8A: 9C 60 07    ;
                STZ $075C               ; $05:EB8D: 9C 5C 07    ;
                STZ $075B               ; $05:EB90: 9C 5B 07    ;
                STZ $0F0B               ; $05:EB93: 9C 0B 0F    ;
                PLB                     ; $05:EB96: AB          ;
                JSL CODE_03A287         ; $05:EB97: 22 87 A2 03 ;
                RTL                     ; $05:EB9B: 6B          ;

DATA_05EB9C:    db $FF,$FF,$FF,$FF,$FF,$FF,$06,$FF              ;
                db $00,$FF,$FF,$06,$00,$01,$FF,$06              ;
                db $FF,$0F,$FF,$01,$FF,$FF,$FF,$FF              ;
                db $16,$06,$FF,$0E,$FF,$00,$0A,$FF              ;
                db $0B,$FF,$07,$FF,$FF,$14,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$16,$06,$00,$FF              ;
                db $0E,$05,$00,$FF,$0E,$FF,$06,$06              ;
                db $FF,$0F,$FF,$00,$FF,$FF,$FF,$FF              ;
                db $16,$FF,$FF,$12,$FF,$FF,$FF,$00              ;
                db $02,$06,$FF,$FF,$03,$FF,$0F,$FF              ;
                db $FF,$FF,$FF,$FF,$16,$00,$06,$FF              ;
                db $0E,$08,$00,$02,$08,$04,$05,$03              ;
                db $08,$FF,$0F,$06,$FF,$FF,$FF,$FF              ;
                db $16,$FF,$FF,$12,$FF,$FF,$00,$02              ;
                db $FF,$0E,$06,$FF,$FF,$08,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$16,$00,$0E,$05              ;
                db $08,$02,$0A,$FF,$0B,$FF,$07,$00              ;
                db $0E,$FF,$14,$03,$FF,$FF,$FF,$FF              ;
                db $16,$00,$02,$FF,$0E,$06,$02,$0E              ;
                db $12,$08,$06,$00,$08,$FF,$0E,$05              ;
                db $FF,$FF,$FF,$FF,$16                          ;

DATA_05EC41:    db $FF,$FF,$FF,$FF,$FF,$FF,$02,$FF              ;
                db $00,$FF,$FF,$02,$00,$01,$FF,$03              ;
                db $08,$FF,$0F,$02,$FF,$FF,$FF,$FF              ;
                db $16,$02,$FF,$0E,$FF,$00,$0A,$FF              ;
                db $0B,$FF,$07,$00,$0E,$FF,$14,$03              ;
                db $FF,$FF,$FF,$FF,$16,$02,$00,$FF              ;
                db $0E,$05,$00,$FF,$0E,$FF,$02,$02              ;
                db $FF,$0F,$FF,$00,$FF,$FF,$FF,$FF              ;
                db $16,$FF,$FF,$12,$FF,$FF,$FF,$00              ;
                db $FF,$02,$FF,$FF,$03,$FF,$0F,$FF              ;
                db $FF,$FF,$FF,$FF,$16,$00,$02,$FF              ;
                db $0E,$08,$00,$02,$08,$04,$05,$03              ;
                db $08,$FF,$0F,$02,$FF,$FF,$FF,$FF              ;
                db $16,$FF,$FF,$12,$FF,$FF,$00,$02              ;
                db $FF,$0E,$06,$FF,$FF,$08,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$16,$00,$0E,$05              ;
                db $08,$02,$0A,$FF,$0B,$FF,$07,$00              ;
                db $0E,$FF,$14,$03,$FF,$FF,$FF,$FF              ;
                db $16,$FF,$02,$00,$0E,$FF,$02,$0E              ;
                db $12,$08,$FF,$00,$08,$FF,$0E,$05              ;
                db $FF,$FF,$FF,$FF,$16                          ;

DATA_05ECE6:    db $01,$02,$02,$06,$03,$07,$00,$00              ;
                db $05,$03,$18,$18,$16,$03,$03,$01              ;
                db $02,$02,$04,$03,$08,$08,$06,$03              ;
                db $03,$11,$11,$16,$03,$03,$08,$00              ;
                db $00,$05,$03,$07,$07,$07,$03,$03              ;
                db $00,$00,$00,$00,$00                          ;

DATA_05ED13:    db $01,$02,$02,$03,$04,$05,$06,$06              ;
                db $07,$08,$09,$0A,$0B,$0C,$00,$0D              ;
                db $0E,$0E,$0F,$10,$11,$12,$13,$14              ;
                db $00,$15,$16,$17,$18,$00,$19,$1A              ;
                db $1A,$1B,$1C,$1D,$1E,$1F,$20,$00              ;
                db $21,$22,$23,$24,$00                          ;

DATA_05ED40:    db $00,$00,$FF,$7F,$63,$0C,$55,$01              ;
                db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$2F,$15,$14,$00,$19,$0C              ;
                db $9F,$1C,$2E,$76,$68,$5D,$E6,$44              ;
                db $BC,$45,$A5,$14,$FF,$7F,$3F,$02              ;
                db $DB,$01,$36,$01,$BF,$3A,$9C,$2D              ;
                db $00,$00,$3F,$5B,$76,$69,$F0,$50              ;
                db $8B,$3C,$36,$01,$DB,$01,$3F,$02              ;
                db $BC,$45,$FF,$7F,$A5,$14,$92,$00              ;
                db $98,$00,$9F,$00,$9C,$2D,$BF,$3A              ;
                db $00,$00,$2F,$15,$95,$2C,$3A,$41              ;
                db $DF,$55,$1F,$03,$7A,$02,$D5,$01              ;
                db $BC,$45,$A5,$14,$FF,$7F,$DF,$55              ;
                db $3A,$41,$95,$2C,$BF,$3A,$9C,$2D              ;
                db $00,$00,$3F,$5B,$7F,$21,$D9,$14              ;
                db $53,$04,$00,$02,$E0,$02,$E0,$03              ;
                db $00,$00,$FF,$7F,$63,$0C,$55,$01              ;
                db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$2F,$15,$60,$1E,$04,$33              ;
                db $88,$43,$55,$76,$90,$71,$CA                  ;

DATA_05EDDF:    db $58,$01,$80,$02,$81,$41,$80,$01              ;
                db $42,$C2,$02,$80,$41,$C1,$41,$C1              ;
                db $01,$C1,$01,$02,$80                          ;

DATA_05EDF4:    db $00,$9B,$10,$18,$05,$2C,$20,$1C              ;
                db $0E,$60,$10,$20,$28,$30,$20,$10              ;
                db $80,$20,$30,$2C,$01,$FF                      ;

DATA_05EE0A:    db $00,$01,$80,$01,$02,$01,$80,$01              ;
                db $80,$01,$02,$80,$02,$80,$01,$80              ;
                db $01,$80,$01,$80,$01,$02,$01                  ;

DATA_05EE21:    db $00,$A0,$08,$08,$40,$30,$10,$08              ;
                db $10,$18,$1C,$20,$58,$10,$40,$38              ;
                db $40,$20,$50,$30,$30,$48,$80,$FF              ;
                db $00                                          ;

CODE_05EE3A:    PHD                     ; $05:EE3A: 0B          ;
                LDA #$07                ; $05:EE3B: A9 07       ;
                XBA                     ; $05:EE3D: EB          ;
                LDA #$00                ; $05:EE3E: A9 00       ;
                TCD                     ; $05:EE40: 5B          ;
                LDX #$05                ; $05:EE41: A2 05       ;
                LDA $53                 ; $05:EE43: A5 53       ;
                BEQ CODE_05EE49         ; $05:EE45: F0 02       ;
                LDX #$0B                ; $05:EE47: A2 0B       ;
CODE_05EE49:    LDY #$05                ; $05:EE49: A0 05       ;
                SEC                     ; $05:EE4B: 38          ;
CODE_05EE4C:    LDA $CE,x               ; $05:EE4C: B5 CE       ;
                SBC $07C8,y             ; $05:EE4E: F9 C8 07    ;
                DEX                     ; $05:EE51: CA          ;
                DEY                     ; $05:EE52: 88          ;
                BPL CODE_05EE4C         ; $05:EE53: 10 F7       ;
                BCC CODE_05EE64         ; $05:EE55: 90 0D       ;
                INX                     ; $05:EE57: E8          ;
                INY                     ; $05:EE58: C8          ;
CODE_05EE59:    LDA $CE,x               ; $05:EE59: B5 CE       ;
                STA $07C8,y             ; $05:EE5B: 99 C8 07    ;
                INX                     ; $05:EE5E: E8          ;
                INY                     ; $05:EE5F: C8          ;
                CPY #$06                ; $05:EE60: C0 06       ;
                BCC CODE_05EE59         ; $05:EE62: 90 F5       ;
CODE_05EE64:    PLD                     ; $05:EE64: 2B          ;
                RTL                     ; $05:EE65: 6B          ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Empty, unused space
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF                                      ;
