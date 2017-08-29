;Super Mario Bros. 1

CODE_048000:    PHD                     ; $04:8000: 0B          ;\
                LDA #$24                ; $04:8001: A9 24       ; |
                STA $00                 ; $04:8003: 85 00       ; |(BG1 and half of BG2 tilemap)
                STZ $2115               ; $04:8005: 9C 15 21    ; |Clear VRAM 0000-17FF with 24,00,24,00,etc
                REP #$20                ; $04:8008: C2 20       ; |
                LDA #$4300              ; $04:800A: A9 00 43    ; |
                TCD                     ; $04:800D: 5B          ; |Also clear VRAM B0F0-BFFF with 24,00,24,00,etc
                LDA #$0800              ; $04:800E: A9 00 08    ; |(layer 3 tilemap)
                STA $2116               ; $04:8011: 8D 16 21    ; |
                LDA #$1808              ; $04:8014: A9 08 18    ; |
                STA $00                 ; $04:8017: 85 00       ; |
                STZ $02                 ; $04:8019: 64 02       ; |
                STZ $04                 ; $04:801B: 64 04       ; |
                LDA #$0400              ; $04:801D: A9 00 04    ; |
                STA $05                 ; $04:8020: 85 05       ; |
                LDY #$01                ; $04:8022: A0 01       ; |
                STY $420B               ; $04:8024: 8C 0B 42    ; |
                STA $05                 ; $04:8027: 85 05       ; |
                LDA #$0800              ; $04:8029: A9 00 08    ; |
                STA $2116               ; $04:802C: 8D 16 21    ; |
                STZ $0000               ; $04:802F: 9C 00 00    ; |
                LDX #$80                ; $04:8032: A2 80       ; |
                STX $2115               ; $04:8034: 8E 15 21    ; |
                LDX #$19                ; $04:8037: A2 19       ; |
                STX $01                 ; $04:8039: 86 01       ; |
                STY $420B               ; $04:803B: 8C 0B 42    ; |
                LDX #$24                ; $04:803E: A2 24       ; |
                STX $0000               ; $04:8040: 8E 00 00    ; |
                STZ $2115               ; $04:8043: 9C 15 21    ; |
                LDA #$0000              ; $04:8046: A9 00 00    ; |
                STA $2116               ; $04:8049: 8D 16 21    ; |
                LDA #$1808              ; $04:804C: A9 08 18    ; |
                STA $00                 ; $04:804F: 85 00       ; |
                STZ $02                 ; $04:8051: 64 02       ; |
                STZ $04                 ; $04:8053: 64 04       ; |
                LDA #$0800              ; $04:8055: A9 00 08    ; |
                STA $05                 ; $04:8058: 85 05       ; |
                STY $420B               ; $04:805A: 8C 0B 42    ; |
                STA $05                 ; $04:805D: 85 05       ; |
                LDA #$0000              ; $04:805F: A9 00 00    ; |
                STA $2116               ; $04:8062: 8D 16 21    ; |
                STZ $0000               ; $04:8065: 9C 00 00    ; |
                LDX #$80                ; $04:8068: A2 80       ; |
                STX $2115               ; $04:806A: 8E 15 21    ; |
                LDX #$19                ; $04:806D: A2 19       ; |
                STX $01                 ; $04:806F: 86 01       ; |
                STY $420B               ; $04:8071: 8C 0B 42    ; |
                LDX #$28                ; $04:8074: A2 28       ; |
                STX $0000               ; $04:8076: 8E 00 00    ; |
                STZ $2115               ; $04:8079: 9C 15 21    ; |
                LDA #$5878              ; $04:807C: A9 78 58    ; |
                STA $2116               ; $04:807F: 8D 16 21    ; |
                LDA #$1808              ; $04:8082: A9 08 18    ; |
                STA $00                 ; $04:8085: 85 00       ; |
                STZ $02                 ; $04:8087: 64 02       ; |
                STZ $04                 ; $04:8089: 64 04       ; |
                LDA #$0788              ; $04:808B: A9 88 07    ; |
                STA $05                 ; $04:808E: 85 05       ; |
                STY $420B               ; $04:8090: 8C 0B 42    ; |
                STA $05                 ; $04:8093: 85 05       ; |
                LDA #$5878              ; $04:8095: A9 78 58    ; |
                STA $2116               ; $04:8098: 8D 16 21    ; |
                STZ $0000               ; $04:809B: 9C 00 00    ; |
                LDX #$80                ; $04:809E: A2 80       ; |
                STX $2115               ; $04:80A0: 8E 15 21    ; |
                LDX #$19                ; $04:80A3: A2 19       ; |
                STX $01                 ; $04:80A5: 86 01       ; |
                STY $420B               ; $04:80A7: 8C 0B 42    ; |
                SEP #$20                ; $04:80AA: E2 20       ; |
                PLD                     ; $04:80AC: 2B          ; |
                RTL                     ; $04:80AD: 6B          ;/

CODE_0480AE:    LDA #$28                ; $04:80AE: A9 28       ;\
                STA $00                 ; $04:80B0: 85 00       ; |Clear entire layer 3 tilemap with 28 00 28 00 etc
                STZ $2115               ; $04:80B2: 9C 15 21    ; |Tilemap is located at $B000-$B3FF
                REP #$20                ; $04:80B5: C2 20       ; |
                LDA #$5800              ; $04:80B7: A9 00 58    ; |Format: Tile, properties, tile, etc
                STA $2116               ; $04:80BA: 8D 16 21    ; |
                LDA #$1808              ; $04:80BD: A9 08 18    ; |Clears tilemap by fixed DMA.
                STA $4300               ; $04:80C0: 8D 00 43    ; |
                STZ $4302               ; $04:80C3: 9C 02 43    ; |Only runs during game loading
                STZ $4304               ; $04:80C6: 9C 04 43    ; |
                LDA #$0200              ; $04:80C9: A9 00 02    ; |
                STA $4305               ; $04:80CC: 8D 05 43    ; |
                LDY #$01                ; $04:80CF: A0 01       ; |
                STY $420B               ; $04:80D1: 8C 0B 42    ; |
                STA $4305               ; $04:80D4: 8D 05 43    ; |
                LDA #$5800              ; $04:80D7: A9 00 58    ; |
                STA $2116               ; $04:80DA: 8D 16 21    ; |
                SEP #$20                ; $04:80DD: E2 20       ; |
                STZ $00                 ; $04:80DF: 64 00       ; |
                LDA #$80                ; $04:80E1: A9 80       ; |
                STA $2115               ; $04:80E3: 8D 15 21    ; |
                LDA #$19                ; $04:80E6: A9 19       ; |
                STA $4301               ; $04:80E8: 8D 01 43    ; |
                STY $420B               ; $04:80EB: 8C 0B 42    ; |
                RTL                     ; $04:80EE: 6B          ;/

CODE_0480EF:    PHD                     ; $04:80EF: 0B          ;
                LDA #$27                ; $04:80F0: A9 27       ;
                STA $00                 ; $04:80F2: 85 00       ;
                STZ $2115               ; $04:80F4: 9C 15 21    ;
                REP #$20                ; $04:80F7: C2 20       ;
                LDA #$4300              ; $04:80F9: A9 00 43    ;
                TCD                     ; $04:80FC: 5B          ;
                LDA #$0000              ; $04:80FD: A9 00 00    ;
                STA $2116               ; $04:8100: 8D 16 21    ;
                LDA #$1808              ; $04:8103: A9 08 18    ;
                STA $00                 ; $04:8106: 85 00       ;
                STZ $02                 ; $04:8108: 64 02       ;
                STZ $04                 ; $04:810A: 64 04       ;
                LDA #$0400              ; $04:810C: A9 00 04    ;
                STA $05                 ; $04:810F: 85 05       ;
                LDY #$01                ; $04:8111: A0 01       ;
                STY $420B               ; $04:8113: 8C 0B 42    ;
                STA $05                 ; $04:8116: 85 05       ;
                LDA #$0000              ; $04:8118: A9 00 00    ;
                STA $2116               ; $04:811B: 8D 16 21    ;
                LDX #$0C                ; $04:811E: A2 0C       ;
                STX $0000               ; $04:8120: 8E 00 00    ;
                LDX #$80                ; $04:8123: A2 80       ;
                STX $2115               ; $04:8125: 8E 15 21    ;
                LDX #$19                ; $04:8128: A2 19       ;
                STX $01                 ; $04:812A: 86 01       ;
                STY $0B                 ; $04:812C: 84 0B       ;
                LDX #$24                ; $04:812E: A2 24       ;
                STX $0000               ; $04:8130: 8E 00 00    ;
                STZ $2115               ; $04:8133: 9C 15 21    ;
                LDA #$0800              ; $04:8136: A9 00 08    ;
                STA $2116               ; $04:8139: 8D 16 21    ;
                STZ $02                 ; $04:813C: 64 02       ;
                STZ $04                 ; $04:813E: 64 04       ;
                LDA #$0400              ; $04:8140: A9 00 04    ;
                STA $05                 ; $04:8143: 85 05       ;
                STY $420B               ; $04:8145: 8C 0B 42    ;
                STA $05                 ; $04:8148: 85 05       ;
                LDA #$0800              ; $04:814A: A9 00 08    ;
                STA $2116               ; $04:814D: 8D 16 21    ;
                SEP #$20                ; $04:8150: E2 20       ;
                STZ $0000               ; $04:8152: 9C 00 00    ;
                LDA #$80                ; $04:8155: A9 80       ;
                STA $2115               ; $04:8157: 8D 15 21    ;
                LDA #$19                ; $04:815A: A9 19       ;
                STA $01                 ; $04:815C: 85 01       ;
                STY $420B               ; $04:815E: 8C 0B 42    ;
                PLD                     ; $04:8161: 2B          ;
                RTL                     ; $04:8162: 6B          ;

CODE_048163:    LDA $1600               ; $04:8163: AD 00 16    ;
                BNE CODE_04817C         ; $04:8166: D0 14       ;
                LDA $2140               ; $04:8168: AD 40 21    ;
                CMP $1604               ; $04:816B: CD 04 16    ;
                BEQ CODE_04817A         ; $04:816E: F0 0A       ;
                INC $160A               ; $04:8170: EE 0A 16    ;
                LDA $160A               ; $04:8173: AD 0A 16    ;
                CMP #$03                ; $04:8176: C9 03       ;
                BCC CODE_048185         ; $04:8178: 90 0B       ;
CODE_04817A:    LDA #$00                ; $04:817A: A9 00       ;
CODE_04817C:    STA $2140               ; $04:817C: 8D 40 21    ;
                STA $1604               ; $04:817F: 8D 04 16    ;
                STZ $160A               ; $04:8182: 9C 0A 16    ;
CODE_048185:    LDA $1601               ; $04:8185: AD 01 16    ;
                BNE CODE_0481A0         ; $04:8188: D0 16       ;
                LDA $2141               ; $04:818A: AD 41 21    ;
                AND #$0F                ; $04:818D: 29 0F       ;
                CMP $1605               ; $04:818F: CD 05 16    ;
                BEQ CODE_04819E         ; $04:8192: F0 0A       ;
                INC $160B               ; $04:8194: EE 0B 16    ;
                LDA $160B               ; $04:8197: AD 0B 16    ;
                CMP #$03                ; $04:819A: C9 03       ;
                BCC CODE_0481AB         ; $04:819C: 90 0D       ;
CODE_04819E:    LDA #$00                ; $04:819E: A9 00       ;
CODE_0481A0:    STA $2141               ; $04:81A0: 8D 41 21    ;
                AND #$0F                ; $04:81A3: 29 0F       ;
                STA $1605               ; $04:81A5: 8D 05 16    ;
                STZ $160B               ; $04:81A8: 9C 0B 16    ;
CODE_0481AB:    LDA $1602               ; $04:81AB: AD 02 16    ;
                BEQ CODE_048226         ; $04:81AE: F0 76       ;
                LDY #$04                ; $04:81B0: A0 04       ;
                STY $160C               ; $04:81B2: 8C 0C 16    ;
                STA $2142               ; $04:81B5: 8D 42 21    ;
                CMP #$F0                ; $04:81B8: C9 F0       ;
                BCS CODE_0481BF         ; $04:81BA: B0 03       ;
                STA $1606               ; $04:81BC: 8D 06 16    ;
CODE_0481BF:    LDA $1603               ; $04:81BF: AD 03 16    ;
                BNE CODE_0481E5         ; $04:81C2: D0 21       ;
                LDA $2143               ; $04:81C4: AD 43 21    ;
                AND #$7F                ; $04:81C7: 29 7F       ;
                CMP $1607               ; $04:81C9: CD 07 16    ;
                BEQ CODE_0481D8         ; $04:81CC: F0 0A       ;
                INC $160D               ; $04:81CE: EE 0D 16    ;
                LDA $160D               ; $04:81D1: AD 0D 16    ;
                CMP #$03                ; $04:81D4: C9 03       ;
                BCC CODE_048209         ; $04:81D6: 90 31       ;
CODE_0481D8:    LDA #$00                ; $04:81D8: A9 00       ;
                STA $2143               ; $04:81DA: 8D 43 21    ;
                STA $1607               ; $04:81DD: 8D 07 16    ;
                STZ $160D               ; $04:81E0: 9C 0D 16    ;
                BRA CODE_048209         ; $04:81E3: 80 24       ;

CODE_0481E5:    STA $1607               ; $04:81E5: 8D 07 16    ;
                CMP #$01                ; $04:81E8: C9 01       ;
                BEQ CODE_0481F8         ; $04:81EA: F0 0C       ;
                CMP #$05                ; $04:81EC: C9 05       ;
                BEQ CODE_0481F8         ; $04:81EE: F0 08       ;
                CMP #$06                ; $04:81F0: C9 06       ;
                BEQ CODE_0481F8         ; $04:81F2: F0 04       ;
                CMP #$4A                ; $04:81F4: C9 4A       ;
                BNE CODE_048216         ; $04:81F6: D0 1E       ;
CODE_0481F8:    ORA $160F               ; $04:81F8: 0D 0F 16    ;
                STA $2143               ; $04:81FB: 8D 43 21    ;
                LDA $160F               ; $04:81FE: AD 0F 16    ;
                EOR #$80                ; $04:8201: 49 80       ;
                STA $160F               ; $04:8203: 8D 0F 16    ;
                STZ $160D               ; $04:8206: 9C 0D 16    ;
CODE_048209:    STZ $1600               ; $04:8209: 9C 00 16    ;
                STZ $1601               ; $04:820C: 9C 01 16    ;
                STZ $1602               ; $04:820F: 9C 02 16    ;
                STZ $1603               ; $04:8212: 9C 03 16    ;
                RTL                     ; $04:8215: 6B          ;

CODE_048216:    STA $2143               ; $04:8216: 8D 43 21    ;
                STZ $1600               ; $04:8219: 9C 00 16    ;
                STZ $1601               ; $04:821C: 9C 01 16    ;
                STZ $1602               ; $04:821F: 9C 02 16    ;
                STZ $1603               ; $04:8222: 9C 03 16    ;
                RTL                     ; $04:8225: 6B          ;

CODE_048226:    LDY $2142               ; $04:8226: AC 42 21    ;
                CPY $1606               ; $04:8229: CC 06 16    ;
                BNE CODE_0481BF         ; $04:822C: D0 91       ;
                DEC $160C               ; $04:822E: CE 0C 16    ;
                LDA $160C               ; $04:8231: AD 0C 16    ;
                BNE CODE_0481BF         ; $04:8234: D0 89       ;
                INC $160C               ; $04:8236: EE 0C 16    ;
                STA $2142               ; $04:8239: 8D 42 21    ;
                BRA CODE_0481BF         ; $04:823C: 80 81       ;

DATA_04823E:    db $00,$00,$00,$00,$31,$00,$00,$00              ;

DATA_048246:    db $00,$00,$10,$00,$20,$00,$30,$00              ;

DATA_04824E:    db $31,$00,$31,$00,$31,$00,$31,$00              ;

DATA_048256:    db $10,$00,$10,$00,$10,$00,$10,$00              ;

CODE_04825E:    STZ $420C               ; $04:825E: 9C 0C 42    ;
                STZ $1203               ; $04:8261: 9C 03 12    ;Disable HDMA channels
                STZ $1207               ; $04:8264: 9C 07 12    ;main screen window mask designation: null
                STZ $1208               ; $04:8267: 9C 08 12    ;sub screen window mask designation: null
                STZ $1204               ; $04:826A: 9C 04 12    ;window mask settings for bg1/2: null
                STZ $1205               ; $04:826D: 9C 05 12    ;^for bg3/4: null
                STZ $1206               ; $04:8270: 9C 06 12    ;^for OBJ and color window: null
                STZ $1209               ; $04:8273: 9C 09 12    ;Color addition select: null
                LDX #$20                ; $04:8276: A2 20       ;\CGADSUB: Enable color math on backdrop
                STX $120A               ; $04:8278: 8E 0A 12    ;/
                CMP #$FF                ; $04:827B: C9 FF       ;\
                BNE CODE_048280         ; $04:827D: D0 01       ; |If there's a HDMA gradient, execute the gradient code
                RTL                     ; $04:827F: 6B          ;/

CODE_048280:    PHB                     ; $04:8280: 8B          ;\
                PHK                     ; $04:8281: 4B          ; |DB = PB
                PLB                     ; $04:8282: AB          ;/
                STA $00                 ; $04:8283: 85 00       ;HDMA gradient type goes into $00. See $7E00F1 for types
                ASL A                   ; $04:8285: 0A          ;
                TAY                     ; $04:8286: A8          ;
                PHY                     ; $04:8287: 5A          ;
                LDA DATA_04824E,y       ; $04:8288: B9 4E 82    ;
                STA $01                 ; $04:828B: 85 01       ;
                LDX DATA_04823E,y       ; $04:828D: BE 3E 82    ;
                LDY #$00                ; $04:8290: A0 00       ;
CODE_048292:    LDA DATA_0483AC,x       ; $04:8292: BD AC 83    ;\
                STA $1520,y             ; $04:8295: 99 20 15    ; |
                LDA DATA_04840E,x       ; $04:8298: BD 0E 84    ; |
                STA $1560,y             ; $04:829B: 99 60 15    ; |Copy indirect HDMA pointers to RAM until you're done
                LDA DATA_048470,x       ; $04:829E: BD 70 84    ; |
                STA $15A0,y             ; $04:82A1: 99 A0 15    ; |
                INX                     ; $04:82A4: E8          ; |
                INY                     ; $04:82A5: C8          ; |
                CPY $01                 ; $04:82A6: C4 01       ; |
                BNE CODE_048292         ; $04:82A8: D0 E8       ;/
                PLY                     ; $04:82AA: 7A          ;
                LDA DATA_048256,y       ; $04:82AB: B9 56 82    ;
                STA $01                 ; $04:82AE: 85 01       ;
                LDX DATA_048246,y       ; $04:82B0: BE 46 82    ;
                LDY #$00                ; $04:82B3: A0 00       ;
CODE_0482B5:    LDA DATA_0484D2,x       ; $04:82B5: BD D2 84    ;
                STA $1400,y             ; $04:82B8: 99 00 14    ;
                LDA DATA_048512,x       ; $04:82BB: BD 12 85    ;
                STA $1460,y             ; $04:82BE: 99 60 14    ;
                LDA DATA_048552,x       ; $04:82C1: BD 52 85    ;
                STA $14C0,y             ; $04:82C4: 99 C0 14    ;
                INX                     ; $04:82C7: E8          ;
                INY                     ; $04:82C8: C8          ;
                CPY $01                 ; $04:82C9: C4 01       ;
                BNE CODE_0482B5         ; $04:82CB: D0 E8       ;

                REP #$10                ; $04:82CD: C2 10       ;16-bit XY.
                LDX #$3240              ; $04:82CF: A2 40 32    ;\Base reg: $2132 (direct color data)
                STX $4350               ; $04:82D2: 8E 50 43    ; |1 reg write once, indirect pointers
                STX $4360               ; $04:82D5: 8E 60 43    ; |We are setting up 3 HDMA channels it seems
                STX $4370               ; $04:82D8: 8E 70 43    ;/
                LDX #$1520              ; $04:82DB: A2 20 15    ;\
                STX $4352               ; $04:82DE: 8E 52 43    ; |
                LDX #$1560              ; $04:82E1: A2 60 15    ; |
                STX $4362               ; $04:82E4: 8E 62 43    ; |DMA source: $00:1520
                LDX #$15A0              ; $04:82E7: A2 A0 15    ; |            $00:1560
                STX $4372               ; $04:82EA: 8E 72 43    ; |            $00:15A0
                LDA #$00                ; $04:82ED: A9 00       ; |
                STA $4354               ; $04:82EF: 8D 54 43    ; |
                STA $4364               ; $04:82F2: 8D 64 43    ; |
                STA $4374               ; $04:82F5: 8D 74 43    ;/
                LDA #$00                ; $04:82F8: A9 00       ;\
                STA $4357               ; $04:82FA: 8D 57 43    ; |
                LDA #$00                ; $04:82FD: A9 00       ; |
                STA $4367               ; $04:82FF: 8D 67 43    ; |Indirect HDMA bank bytes: $00
                LDA #$00                ; $04:8302: A9 00       ; |
                STA $4377               ; $04:8304: 8D 77 43    ;/
                LDA #$01                ; $04:8307: A9 01       ;\Timer to move the gradient up and down(water)
                STA $15E0               ; $04:8309: 8D E0 15    ;/Set to 1 so it doesn't keep moving up-down.
                LDA $00                 ; $04:830C: A5 00       ;
                CMP #$02                ; $04:830E: C9 02       ;
                BNE CODE_048357         ; $04:8310: D0 45       ;
                LDX #$2841              ; $04:8312: A2 41 28    ;\Base reg: $2128. Indirect pointers.
                STX $4340               ; $04:8315: 8E 40 43    ;/2 regs write once (Window 2 L+R position)
                LDX.w #DATA_0483A5      ; $04:8318: A2 A5 83    ;\
                STX $4342               ; $04:831B: 8E 42 43    ; |
                LDA.b #DATA_0483A5>>16  ; $04:831E: A9 04       ; |DMA source: $04:83A5
                STA $4344               ; $04:8320: 8D 44 43    ; |
                LDA #$04                ; $04:8323: A9 04       ; |
                STA $4347               ; $04:8325: 8D 47 43    ;/
                LDA #$17                ; $04:8328: A9 17       ;\Window mask designation for main screen
                STA $1207               ; $04:832A: 8D 07 12    ;/Everything except BG4
                STZ $1208               ; $04:832D: 9C 08 12    ;Window mask designation for sub screen: none
                STZ $1204               ; $04:8330: 9C 04 12    ;\Window Mask Settings for BG1/2/3/4
                STZ $1205               ; $04:8333: 9C 05 12    ;/
                LDA #$80                ; $04:8336: A9 80       ;\Enable window 2 for BG1/BG3/OBJ
                STA $1206               ; $04:8338: 8D 06 12    ;/
                LDA #$10                ; $04:833B: A9 10       ;\Prevent color math outside window
                STA $1209               ; $04:833D: 8D 09 12    ;/
                LDA #$33                ; $04:8340: A9 33       ;\Enable color math on OBJ & Backdrop & BG1/2
                STA $120A               ; $04:8342: 8D 0A 12    ;/
                LDA #$F0                ; $04:8345: A9 F0       ;\Enable HDMA channels 7/6/5/4
                STA $1203               ; $04:8347: 8D 03 12    ;/
                STZ $1000               ; $04:834A: 9C 00 10    ;\Background color: black
                STZ $1001               ; $04:834D: 9C 01 10    ;/
                INC $1200               ; $04:8350: EE 00 12    ;
                SEP #$10                ; $04:8353: E2 10       ;8-bit XY
                PLB                     ; $04:8355: AB          ;pull program bank
                RTL                     ; $04:8356: 6B          ;return

CODE_048357:    LDA #$E0                ; $04:8357: A9 E0       ;\Enable HDMA channels 7/6/5
                STA $1203               ; $04:8359: 8D 03 12    ;/
                SEP #$10                ; $04:835C: E2 10       ;8-bit XY
                PLB                     ; $04:835E: AB          ;pull program bank
                RTL                     ; $04:835F: 6B          ;return

DATA_048360:    db $00,$03,$06,$09,$09,$06,$03,$00              ;

DATA_048368:    db $0C,$0C,$0C,$1C,$0C,$0C,$0C,$1C              ;The very small pauses between going up and down 1 time
                                                       ;in the underwater HDMA wavy gradient effect

DATA_048370:    db $01,$01,$01,$01,$FF,$FF,$FF,$FF              ;

CODE_048378:    PHB                     ; $04:8378: 8B          ;
                PHK                     ; $04:8379: 4B          ;
                PLB                     ; $04:837A: AB          ;
                DEC $15E0               ; $04:837B: CE E0 15    ;
                BNE CODE_0483A3         ; $04:837E: D0 23       ;
                LDX $15E2               ; $04:8380: AE E2 15    ;
                LDA DATA_048368,x       ; $04:8383: BD 68 83    ;
                STA $15E0               ; $04:8386: 8D E0 15    ;
                LDY DATA_048360,x       ; $04:8389: BC 60 83    ;
                LDA $1520,y             ; $04:838C: B9 20 15    ;
                CLC                     ; $04:838F: 18          ;
                ADC DATA_048370,x       ; $04:8390: 7D 70 83    ;
                STA $1520,y             ; $04:8393: 99 20 15    ;
                STA $1560,y             ; $04:8396: 99 60 15    ;
                STA $15A0,y             ; $04:8399: 99 A0 15    ;
                INX                     ; $04:839C: E8          ;
                TXA                     ; $04:839D: 8A          ;
                AND #$07                ; $04:839E: 29 07       ;
                STA $15E2               ; $04:83A0: 8D E2 15    ;
CODE_0483A3:    PLB                     ; $04:83A3: AB          ;
                RTL                     ; $04:83A4: 6B          ;

DATA_0483A5:    db $27,$92,$85,$02,$94,$85,$00                  ;Unknown

DATA_0483AC:    db $40,$00,$14,$08,$01,$14,$08,$02              ;Red indirect pointers. Scanline - ram address (word) - scanline - etc
                db $14,$08,$03,$14,$06,$04,$14,$06              ;
                db $05,$14,$06,$06,$14,$06,$07,$14              ;
                db $08,$08,$14,$04,$09,$14,$04,$0A              ;
                db $14,$04,$0B,$14,$04,$0C,$14,$04              ;
                db $0D,$14,$03,$0E,$14,$01,$0F,$14              ;
                db $00,$20,$00,$14,$02,$01,$14,$02              ;
                db $02,$14,$03,$03,$14,$03,$04,$14              ;
                db $04,$05,$14,$04,$06,$14,$05,$07              ;
                db $14,$06,$08,$14,$07,$09,$14,$08              ;
                db $0A,$14,$09,$0B,$14,$0A,$0C,$14              ;
                db $0B,$0D,$14,$0C,$0E,$14,$01,$0F              ;
                db $14,$00                                      ;

DATA_04840E:    db $40,$60,$14,$08,$61,$14,$08,$62              ;green indirect pointers
                db $14,$08,$63,$14,$06,$64,$14,$06              ;
                db $65,$14,$06,$66,$14,$06,$67,$14              ;
                db $08,$68,$14,$04,$69,$14,$04,$6A              ;
                db $14,$04,$6B,$14,$04,$6C,$14,$04              ;
                db $6D,$14,$03,$6E,$14,$01,$6F,$14              ;
                db $00,$20,$60,$14,$02,$61,$14,$02              ;
                db $62,$14,$03,$63,$14,$03,$64,$14              ;
                db $04,$65,$14,$04,$66,$14,$05,$67              ;
                db $14,$06,$68,$14,$07,$69,$14,$08              ;
                db $6A,$14,$09,$6B,$14,$0A,$6C,$14              ;
                db $0B,$6D,$14,$0C,$6E,$14,$01,$6F              ;
                db $14,$00                                      ;

DATA_048470:    db $40,$C0,$14,$08,$C1,$14,$08,$C2              ;blue indirect pointers
                db $14,$08,$C3,$14,$06,$C4,$14,$06              ;
                db $C5,$14,$06,$C6,$14,$06,$C7,$14              ;
                db $08,$C8,$14,$04,$C9,$14,$04,$CA              ;
                db $14,$04,$CB,$14,$04,$CC,$14,$04              ;
                db $CD,$14,$03,$CE,$14,$01,$CF,$14              ;
                db $00,$20,$C0,$14,$02,$C1,$14,$02              ;
                db $C2,$14,$03,$C3,$14,$03,$C4,$14              ;
                db $04,$C5,$14,$04,$C6,$14,$05,$C7              ;
                db $14,$06,$C8,$14,$07,$C9,$14,$08              ;
                db $CA,$14,$09,$CB,$14,$0A,$CC,$14              ;
                db $0B,$CD,$14,$0C,$CE,$14,$01,$CF              ;
                db $14,$00                                      ;

DATA_0484D2:    db $2A,$2B,$2C,$2D,$2E,$2F,$30,$31              ;red intensity stuff. Actual data of $2132
                db $32,$33,$34,$35,$36,$37,$38,$38              ;bgrc cccc
                db $27,$26,$25,$24,$23,$22,$21,$20              ;
                db $20,$20,$20,$20,$20,$20,$20,$20              ;
                db $38,$2B,$2A,$29,$28,$27,$26,$25              ;
                db $24,$23,$22,$21,$20,$20,$20,$20              ;
                db $3A,$3B,$3C,$3D,$3E,$3F,$3F,$3F              ;
                db $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F              ;

DATA_048512:    db $51,$52,$53,$54,$55,$56,$57,$58              ;green intensity stuff
                db $59,$5A,$5B,$5C,$5D,$5E,$5F,$5F              ;
                db $47,$46,$45,$44,$43,$42,$41,$40              ;
                db $40,$40,$40,$40,$40,$40,$40,$40              ;
                db $5F,$51,$50,$4F,$4E,$4D,$4C,$4B              ;
                db $4A,$49,$48,$47,$46,$45,$44,$43              ;
                db $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F              ;
                db $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F              ;

DATA_048552:    db $94,$95,$96,$97,$98,$99,$9A,$9B              ;blue intensity stuff
                db $9C,$9D,$9E,$9F,$9F,$9F,$9F,$9F              ;
                db $8D,$8C,$8B,$8A,$89,$88,$87,$86              ;
                db $85,$84,$83,$82,$81,$80,$80,$80              ;
                db $9F,$9C,$9B,$9A,$99,$98,$97,$96              ;
                db $95,$94,$93,$92,$91,$90,$8F,$8E              ;
                db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F              ;
                db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F              ;

                db $FF,$00,$00,$FF                              ;???

CODE_048596:    INC $075A               ; $04:8596: EE 5A 07    ;\ Increase lives by 1 & make sure
                LDA $075A               ; $04:8599: AD 5A 07    ; |it doesn't get past 128.
                CMP #$80                ; $04:859C: C9 80       ; |
                BCC CODE_0485A5         ; $04:859E: 90 05       ; |
                LDA #$7F                ; $04:85A0: A9 7F       ; |
                STA $075A               ; $04:85A2: 8D 5A 07    ; |
CODE_0485A5:    RTL                     ; $04:85A5: 6B          ;/

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
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

CODE_048600:    LDA $1680               ; $04:8600: AD 80 16    ;\
                BMI CODE_048629         ; $04:8603: 30 24       ; |"pause" flag after rescuing princess
                BNE CODE_048619         ; $04:8605: D0 12       ;/ skip all of these if negative, if 00 check for start button etc
                LDX $0753               ; $04:8607: AE 53 07    ;\
                LDA $0FF6,x             ; $04:860A: BD F6 0F    ; |
                AND #$10                ; $04:860D: 29 10       ; |Check for start button press
                BEQ CODE_048629         ; $04:860F: F0 18       ; |If pressed, enable "pause" flag after rescuing princess
                INC $1680               ; $04:8611: EE 80 16    ;/
                LDA #$43                ; $04:8614: A9 43       ;\Pause sound
                STA $1600               ; $04:8616: 8D 00 16    ;/
CODE_048619:    DEC $0B9A               ; $04:8619: CE 9A 0B    ;\
                DEC $0B9A               ; $04:861C: CE 9A 0B    ; | Decrease portrait windowing hdma size until negative values
                LDA $0B9A               ; $04:861F: AD 9A 0B    ; |
                BPL CODE_048629         ; $04:8622: 10 05       ;/
                LDA #$0D                ; $04:8624: A9 0D       ;\
                STA $0772               ; $04:8626: 8D 72 07    ;/Rescued peach victory operation mode $0D
CODE_048629:    RTL                     ; $04:8629: 6B          ;

;Rescued peach - Operation $0D
CODE_04862A:    JSL CODE_05DE31         ; $04:862A: 22 31 DE 05 ;Show pause window.
                JSL CODE_05EB5A         ; $04:862E: 22 5A EB 05 ;Enable the more difficult quest flag
                LDA #$22                ; $04:8632: A9 22       ;\
                STA $1204               ; $04:8634: 8D 04 12    ;/Enable window 1 on BG1 and 2
                LDA #$02                ; $04:8637: A9 02       ;\
                STA $1205               ; $04:8639: 8D 05 12    ;/Enable window 1 on BG3
                INC $0772               ; $04:863C: EE 72 07    ;go to operation $0E
                RTL                     ; $04:863F: 6B          ;

;Rescued peach - Operation $0E
CODE_048640:    LDA $2140               ; $04:8640: AD 40 21    ;\
                BNE CODE_04864F         ; $04:8643: D0 0A       ;/If there's something playing in SFX channel 0, skip.
                LDA #$0C                ; $04:8645: A9 0C       ;\ Operation mode $0C
                STA $0772               ; $04:8647: 8D 72 07    ;/
                LDA #$80                ; $04:864A: A9 80       ;\
                STA $1680               ; $04:864C: 8D 80 16    ;/Set pause flag after rescuing princess to negative. (unpause flag?)
CODE_04864F:    RTL                     ; $04:864F: 6B          ;return

CODE_048650:    PHB                     ; $04:8650: 8B          ;
                PHK                     ; $04:8651: 4B          ;
                PLB                     ; $04:8652: AB          ;
                LDY $0753               ; $04:8653: AC 53 07    ;
                LDA $0FF6,y             ; $04:8656: B9 F6 0F    ;
                AND #$2C                ; $04:8659: 29 2C       ;
                BEQ CODE_04866D         ; $04:865B: F0 10       ;
                LDA #$01                ; $04:865D: A9 01       ;\
                STA $1603               ; $04:865F: 8D 03 16    ;/Coin sound
                STZ $0B78               ; $04:8662: 9C 78 0B    ;
                LDA $0F06               ; $04:8665: AD 06 0F    ;
                EOR #$10                ; $04:8668: 49 10       ;
                STA $0F06               ; $04:866A: 8D 06 0F    ;
CODE_04866D:    LDY #$03                ; $04:866D: A0 03       ;
CODE_04866F:    LDA DATA_0486DB,y       ; $04:866F: B9 DB 86    ;
                STA $0800,y             ; $04:8672: 99 00 08    ;
                DEY                     ; $04:8675: 88          ;
                BPL CODE_04866F         ; $04:8676: 10 F7       ;
                LDA $0801               ; $04:8678: AD 01 08    ;
                CLC                     ; $04:867B: 18          ;
                ADC $0F06               ; $04:867C: 6D 06 0F    ;
                STA $0801               ; $04:867F: 8D 01 08    ;
                INC $0B78               ; $04:8682: EE 78 0B    ;
                LDA $0B78               ; $04:8685: AD 78 0B    ;
                AND #$10                ; $04:8688: 29 10       ;
                LSR A                   ; $04:868A: 4A          ;
                LSR A                   ; $04:868B: 4A          ;
                LSR A                   ; $04:868C: 4A          ;
                LSR A                   ; $04:868D: 4A          ;
                ORA #$02                ; $04:868E: 09 02       ;
                STA $0C00               ; $04:8690: 8D 00 0C    ;
                LDY $0753               ; $04:8693: AC 53 07    ;
                LDX #$00                ; $04:8696: A2 00       ;
                LDA $0FF6,y             ; $04:8698: B9 F6 0F    ;
                AND #$10                ; $04:869B: 29 10       ;
                BEQ CODE_0486D7         ; $04:869D: F0 38       ;
                LDA #$29                ; $04:869F: A9 29       ;\
                STA $1603               ; $04:86A1: 8D 03 16    ;/Correct sound
                STZ $075B               ; $04:86A4: 9C 5B 07    ;
                STZ $075E               ; $04:86A7: 9C 5E 07    ;
                STZ $0760               ; $04:86AA: 9C 60 07    ;
                STZ $075C               ; $04:86AD: 9C 5C 07    ;
                LDA $0F06               ; $04:86B0: AD 06 0F    ;
                BEQ CODE_0486B8         ; $04:86B3: F0 03       ;
                STZ $075F               ; $04:86B5: 9C 5F 07    ;
CODE_0486B8:    LDA DATA_0486D9,y       ; $04:86B8: B9 D9 86    ;
                TAX                     ; $04:86BB: AA          ;
                LDY #$07                ; $04:86BC: A0 07       ;
CODE_0486BE:    STZ $07DA,x             ; $04:86BE: 9E DA 07    ;
                STZ $07CE,x             ; $04:86C1: 9E CE 07    ;
                INX                     ; $04:86C4: E8          ;
                DEY                     ; $04:86C5: 88          ;
                BNE CODE_0486BE         ; $04:86C6: D0 F6       ;
                LDX #$02                ; $04:86C8: A2 02       ;
                LDA $0F06               ; $04:86CA: AD 06 0F    ;
                BNE CODE_0486D7         ; $04:86CD: D0 08       ;
                LDA #$04                ; $04:86CF: A9 04       ;
                STA $075A               ; $04:86D1: 8D 5A 07    ;
                INC $075D               ; $04:86D4: EE 5D 07    ;
CODE_0486D7:    PLB                     ; $04:86D7: AB          ;
                RTL                     ; $04:86D8: 6B          ;

DATA_0486D9:    db $00,$06                                      ;

DATA_0486DB:    db $50,$6C,$0C,$2B                              ;

CODE_0486DF:    PHB                     ; $04:86DF: 8B          ;
                PHK                     ; $04:86E0: 4B          ;
                PLB                     ; $04:86E1: AB          ;
                REP #$30                ; $04:86E2: C2 30       ;
                LDX #$0000              ; $04:86E4: A2 00 00    ;
CODE_0486E7:    LDA DATA_0486FD,x       ; $04:86E7: BD FD 86    ;
                STA $1702,y             ; $04:86EA: 99 02 17    ;
                INY                     ; $04:86ED: C8          ;
                INY                     ; $04:86EE: C8          ;
                INX                     ; $04:86EF: E8          ;
                INX                     ; $04:86F0: E8          ;
                CMP #$FFFF              ; $04:86F1: C9 FF FF    ;
                BNE CODE_0486E7         ; $04:86F4: D0 F1       ;
                STY $1700               ; $04:86F6: 8C 00 17    ;
                SEP #$30                ; $04:86F9: E2 30       ;
                PLB                     ; $04:86FB: AB          ;
                RTL                     ; $04:86FC: 6B          ;

DATA_0486FD:    dw $CD09,$0F00,$02A1,$02A2                      ;
                dw $02A3,$02A4,$02A5,$02A6                      ;
                dw $02A7,$02A8,$0D0A,$0700                      ;
                dw $02A9,$02AA,$02AB,$02AC                      ;
                dw $FFFF                                        ;

CODE_04871F:    LDA $0B9A               ; $04:871F: AD 9A 0B    ;
                CMP #$30                ; $04:8722: C9 30       ;
                BCC CODE_048727         ; $04:8724: 90 01       ;
                RTL                     ; $04:8726: 6B          ;

CODE_048727:    PHB                     ; $04:8727: 8B          ;
                PHK                     ; $04:8728: 4B          ;
                PLB                     ; $04:8729: AB          ;
                PHD                     ; $04:872A: 0B          ;
                REP #$30                ; $04:872B: C2 30       ;
                LDA #$0B00              ; $04:872D: A9 00 0B    ;
                TCD                     ; $04:8730: 5B          ;
                STZ $84                 ; $04:8731: 64 84       ;
                STZ $8E                 ; $04:8733: 64 8E       ;
                STZ $90                 ; $04:8735: 64 90       ;
                STZ $92                 ; $04:8737: 64 92       ;
                LDA $9A                 ; $04:8739: A5 9A       ;
                AND #$00FF              ; $04:873B: 29 FF 00    ;
                ASL A                   ; $04:873E: 0A          ;
                TAX                     ; $04:873F: AA          ;
                LDA.l DATA_009780,x     ; $04:8740: BF 80 97 00 ;
                STA $94                 ; $04:8744: 85 94       ;
                LDA #$0078              ; $04:8746: A9 78 00    ;
                STA $96                 ; $04:8749: 85 96       ;
                LDA #$00B0              ; $04:874B: A9 B0 00    ;
                STA $98                 ; $04:874E: 85 98       ;
CODE_048750:    LDA #$0100              ; $04:8750: A9 00 01    ;
                STA $80                 ; $04:8753: 85 80       ;
                STA $82                 ; $04:8755: 85 82       ;
                LDA $90                 ; $04:8757: A5 90       ;
                INC A                   ; $04:8759: 1A          ;
                CMP $9A                 ; $04:875A: C5 9A       ;
                BCS CODE_048794         ; $04:875C: B0 36       ;
                LDA $92                 ; $04:875E: A5 92       ;
                CLC                     ; $04:8760: 18          ;
                ADC $94                 ; $04:8761: 65 94       ;
                STA $92                 ; $04:8763: 85 92       ;
                XBA                     ; $04:8765: EB          ;
                AND #$00FF              ; $04:8766: 29 FF 00    ;
                LSR A                   ; $04:8769: 4A          ;
                SEP #$30                ; $04:876A: E2 30       ;
                TAX                     ; $04:876C: AA          ;
                LDA.l DATA_0096FF,x     ; $04:876D: BF FF 96 00 ;
                STA $4202               ; $04:8771: 8D 02 42    ;
                LDA $9A                 ; $04:8774: A5 9A       ;
                STA $4203               ; $04:8776: 8D 03 42    ;
                NOP                     ; $04:8779: EA          ;
                NOP                     ; $04:877A: EA          ;
                NOP                     ; $04:877B: EA          ;
                NOP                     ; $04:877C: EA          ;
                LDA $4217               ; $04:877D: AD 17 42    ;
                STA $88                 ; $04:8780: 85 88       ;
                STZ $89                 ; $04:8782: 64 89       ;
                REP #$30                ; $04:8784: C2 30       ;
                LDA $88                 ; $04:8786: A5 88       ;
                CLC                     ; $04:8788: 18          ;
                ADC $98                 ; $04:8789: 65 98       ;
                STA $82                 ; $04:878B: 85 82       ;
                LDA $98                 ; $04:878D: A5 98       ;
                SEC                     ; $04:878F: 38          ;
                SBC $88                 ; $04:8790: E5 88       ;
                STA $80                 ; $04:8792: 85 80       ;
CODE_048794:    LDA $96                 ; $04:8794: A5 96       ;
                SEC                     ; $04:8796: 38          ;
                SBC $90                 ; $04:8797: E5 90       ;
                DEC A                   ; $04:8799: 3A          ;
                ASL A                   ; $04:879A: 0A          ;
                STA $84                 ; $04:879B: 85 84       ;
                TAX                     ; $04:879D: AA          ;
                LDA $80                 ; $04:879E: A5 80       ;
                TAY                     ; $04:87A0: A8          ;
                BMI CODE_0487B2         ; $04:87A1: 30 0F       ;
                AND #$FF00              ; $04:87A3: 29 00 FF    ;
                BEQ CODE_0487B5         ; $04:87A6: F0 0D       ;
                CMP #$0100              ; $04:87A8: C9 00 01    ;
                BNE CODE_0487B2         ; $04:87AB: D0 05       ;
                LDY #$00FF              ; $04:87AD: A0 FF 00    ;
                BRA CODE_0487B5         ; $04:87B0: 80 03       ;

CODE_0487B2:    LDY #$0000              ; $04:87B2: A0 00 00    ;
CODE_0487B5:    TYA                     ; $04:87B5: 98          ;
                AND #$00FF              ; $04:87B6: 29 FF 00    ;
                STA $86                 ; $04:87B9: 85 86       ;
                LDA $82                 ; $04:87BB: A5 82       ;
                TAY                     ; $04:87BD: A8          ;
                AND #$FF00              ; $04:87BE: 29 00 FF    ;
                BEQ CODE_0487C6         ; $04:87C1: F0 03       ;
                LDY #$00FF              ; $04:87C3: A0 FF 00    ;
CODE_0487C6:    TYA                     ; $04:87C6: 98          ;
                AND #$00FF              ; $04:87C7: 29 FF 00    ;
                XBA                     ; $04:87CA: EB          ;
                ORA $86                 ; $04:87CB: 05 86       ;
                STA $86                 ; $04:87CD: 85 86       ;
                CPX #$01C0              ; $04:87CF: E0 C0 01    ;
                BCS CODE_0487E0         ; $04:87D2: B0 0C       ;
                CMP #$FFFF              ; $04:87D4: C9 FF FF    ;
                BNE CODE_0487DC         ; $04:87D7: D0 03       ;
                LDA #$00FF              ; $04:87D9: A9 FF 00    ;
CODE_0487DC:    STA $7FF000,x           ; $04:87DC: 9F 00 F0 7F ;
CODE_0487E0:    LDA $96                 ; $04:87E0: A5 96       ;
                CLC                     ; $04:87E2: 18          ;
                ADC $90                 ; $04:87E3: 65 90       ;
                DEC A                   ; $04:87E5: 3A          ;
                ASL A                   ; $04:87E6: 0A          ;
                STA $8E                 ; $04:87E7: 85 8E       ;
                CMP #$01C0              ; $04:87E9: C9 C0 01    ;
                BCS CODE_0487FD         ; $04:87EC: B0 0F       ;
                TAX                     ; $04:87EE: AA          ;
                LDA $86                 ; $04:87EF: A5 86       ;
                CMP #$FFFF              ; $04:87F1: C9 FF FF    ;
                BNE CODE_0487F9         ; $04:87F4: D0 03       ;
                LDA #$00FF              ; $04:87F6: A9 FF 00    ;
CODE_0487F9:    STA $7FF000,x           ; $04:87F9: 9F 00 F0 7F ;
CODE_0487FD:    INC $90                 ; $04:87FD: E6 90       ;
                LDA $84                 ; $04:87FF: A5 84       ;
                CMP #$01C0              ; $04:8801: C9 C0 01    ;
                BCC CODE_04880D         ; $04:8804: 90 07       ;
                LDA $8E                 ; $04:8806: A5 8E       ;
                CMP #$01C0              ; $04:8808: C9 C0 01    ;
                BCS CODE_048810         ; $04:880B: B0 03       ;
CODE_04880D:    JMP CODE_048750         ; $04:880D: 4C 50 87    ;

CODE_048810:    SEP #$30                ; $04:8810: E2 30       ;
                INC $9A                 ; $04:8812: E6 9A       ;
                PLD                     ; $04:8814: 2B          ;
                PLB                     ; $04:8815: AB          ;
                RTL                     ; $04:8816: 6B          ;

CODE_048817:    SEP #$10                ; $04:8817: E2 10       ;
                LDX #$00                ; $04:8819: A2 00       ;
CODE_04881B:    STZ $05D0,x             ; $04:881B: 9E D0 05    ;
                STZ $05E0,x             ; $04:881E: 9E E0 05    ;
                STZ $05F0,x             ; $04:8821: 9E F0 05    ;
                STZ $0600,x             ; $04:8824: 9E 00 06    ;
                STZ $0610,x             ; $04:8827: 9E 10 06    ;
                STZ $0620,x             ; $04:882A: 9E 20 06    ;
                STZ $0630,x             ; $04:882D: 9E 30 06    ;
                STZ $0640,x             ; $04:8830: 9E 40 06    ;
                STZ $0650,x             ; $04:8833: 9E 50 06    ;
                STZ $0660,x             ; $04:8836: 9E 60 06    ;
                STZ $0670,x             ; $04:8839: 9E 70 06    ;
                STZ $0680,x             ; $04:883C: 9E 80 06    ;
                STZ $0690,x             ; $04:883F: 9E 90 06    ;
                INX                     ; $04:8842: E8          ;
                TXA                     ; $04:8843: 8A          ;
                AND #$0F                ; $04:8844: 29 0F       ;
                BNE CODE_04881B         ; $04:8846: D0 D3       ;
                LDA #$68                ; $04:8848: A9 68       ;
                STA $0640               ; $04:884A: 8D 40 06    ;
                STA $0641               ; $04:884D: 8D 41 06    ;
                STA $0642               ; $04:8850: 8D 42 06    ;
                STA $0673               ; $04:8853: 8D 73 06    ;
                STA $0674               ; $04:8856: 8D 74 06    ;
                STA $0675               ; $04:8859: 8D 75 06    ;
                STA $0676               ; $04:885C: 8D 76 06    ;
                STA $0649               ; $04:885F: 8D 49 06    ;
                STA $064A               ; $04:8862: 8D 4A 06    ;
                STA $064B               ; $04:8865: 8D 4B 06    ;
                STA $064C               ; $04:8868: 8D 4C 06    ;
                STA $064D               ; $04:886B: 8D 4D 06    ;
                STA $064E               ; $04:886E: 8D 4E 06    ;
                LDA #$01                ; $04:8871: A9 01       ;
                STA $0EC9               ; $04:8873: 8D C9 0E    ;
                RTL                     ; $04:8876: 6B          ;

DATA_048877:    db $58,$43,$00,$09,$16,$20,$0A,$20              ;
                db $1B,$20,$12,$20,$18,$20,$FF                  ;

DATA_048886:    db $58,$43,$00,$09,$15,$20,$1E,$20              ;
                db $12,$20,$10,$20,$12,$20,$FF                  ;

CODE_048895:    PHB                     ; $04:8895: 8B          ;
                PHK                     ; $04:8896: 4B          ;
                PLB                     ; $04:8897: AB          ;
                PHX                     ; $04:8898: DA          ;
                LDA $0753               ; $04:8899: AD 53 07    ;
                BNE CODE_0488AE         ; $04:889C: D0 10       ;
                LDX #$00                ; $04:889E: A2 00       ;
CODE_0488A0:    LDA DATA_048877,x       ; $04:88A0: BD 77 88    ;
                STA $1702,y             ; $04:88A3: 99 02 17    ;
                INY                     ; $04:88A6: C8          ;
                INX                     ; $04:88A7: E8          ;
                CMP #$FF                ; $04:88A8: C9 FF       ;
                BNE CODE_0488A0         ; $04:88AA: D0 F4       ;
                BRA CODE_0488BC         ; $04:88AC: 80 0E       ;

CODE_0488AE:    LDX #$00                ; $04:88AE: A2 00       ;
CODE_0488B0:    LDA DATA_048886,x       ; $04:88B0: BD 86 88    ;
                STA $1702,y             ; $04:88B3: 99 02 17    ;
                INY                     ; $04:88B6: C8          ;
                INX                     ; $04:88B7: E8          ;
                CMP #$FF                ; $04:88B8: C9 FF       ;
                BNE CODE_0488B0         ; $04:88BA: D0 F4       ;
CODE_0488BC:    PLX                     ; $04:88BC: FA          ;
                PLB                     ; $04:88BD: AB          ;
                RTL                     ; $04:88BE: 6B          ;

CODE_0488BF:    STZ $F6                 ; $04:88BF: 64 F6       ;Flag for vertically extendable objects
                REP #$30                ; $04:88C1: C2 30       ;Accumulator 16-bit - Index 16-bit
                LDA $0EEC               ; $04:88C3: AD EC 0E    ;
                STA $F3                 ; $04:88C6: 85 F3       ;
                STZ $F7                 ; $04:88C8: 64 F7       ;
CODE_0488CA:    LDX $F3                 ; $04:88CA: A6 F3       ;
                SEP #$20                ; $04:88CC: E2 20       ;
                LDA.l DATA_048949,x     ; $04:88CE: BF 49 89 04 ;
                CLC                     ; $04:88D2: 18          ;
                ROL A                   ; $04:88D3: 2A          ;
                ROL A                   ; $04:88D4: 2A          ;
                AND #$01                ; $04:88D5: 29 01       ;
                STA $F5                 ; $04:88D7: 85 F5       ;
                LDA.l DATA_048949+1,x   ; $04:88D9: BF 4A 89 04 ;
                ASL A                   ; $04:88DD: 0A          ;
                REP #$21                ; $04:88DE: C2 21       ;
                LDX $F7                 ; $04:88E0: A6 F7       ;
                ADC $F5                 ; $04:88E2: 65 F5       ;
                AND #$00FF              ; $04:88E4: 29 FF 00    ;
                CMP #$0080              ; $04:88E7: C9 80 00    ;
                BCC CODE_0488EF         ; $04:88EA: 90 03       ;
                ORA #$FF00              ; $04:88EC: 09 00 FF    ;
CODE_0488EF:    CLC                     ; $04:88EF: 18          ;
                ADC $0EFD               ; $04:88F0: 6D FD 0E    ;
                CLC                     ; $04:88F3: 18          ;
                ADC #$0008              ; $04:88F4: 69 08 00    ;The change in position of the flow.
                STA $7F2000,x           ; $04:88F7: 9F 00 20 7F ;
                LDA $F3                 ; $04:88FB: A5 F3       ;
                CLC                     ; $04:88FD: 18          ;
                ADC #$0010              ; $04:88FE: 69 10 00    ;The frequency of the waving.
                AND #$01FF              ; $04:8901: 29 FF 01    ;
                STA $F3                 ; $04:8904: 85 F3       ;
                INC $F7                 ; $04:8906: E6 F7       ;
                INC $F7                 ; $04:8908: E6 F7       ;
                LDA $F7                 ; $04:890A: A5 F7       ;
                CMP #$0040              ; $04:890C: C9 40 00    ;
                BNE CODE_0488CA         ; $04:890F: D0 B9       ;
                LDA $0EEC               ; $04:8911: AD EC 0E    ;
                CLC                     ; $04:8914: 18          ;
                ADC #$0004              ; $04:8915: 69 04 00    ;The waving speed.
                AND #$01FF              ; $04:8918: 29 FF 01    ;
                STA $0EEC               ; $04:891B: 8D EC 0E    ;
                SEP #$30                ; $04:891E: E2 30       ;
                PHB                     ; $04:8920: 8B          ;
                LDA #$7F                ; $04:8921: A9 7F       ;
                PHA                     ; $04:8923: 48          ;
                PLB                     ; $04:8924: AB          ;
                REP #$20                ; $04:8925: C2 20       ;
                LDY #$3E                ; $04:8927: A0 3E       ;
CODE_048929:    LDA $2000,y             ; $04:8929: B9 00 20    ;
                STA $2040,y             ; $04:892C: 99 40 20    ;
                STA $2080,y             ; $04:892F: 99 80 20    ;
                STA $20C0,y             ; $04:8932: 99 C0 20    ;
                STA $2100,y             ; $04:8935: 99 00 21    ;
                STA $2140,y             ; $04:8938: 99 40 21    ;
                STA $2180,y             ; $04:893B: 99 80 21    ;
                STA $21C0,y             ; $04:893E: 99 C0 21    ;
                DEY                     ; $04:8941: 88          ;
                DEY                     ; $04:8942: 88          ;
                BPL CODE_048929         ; $04:8943: 10 E4       ;
                SEP #$20                ; $04:8945: E2 20       ;
                PLB                     ; $04:8947: AB          ;
                RTL                     ; $04:8948: 6B          ;

DATA_048949:    dw $0000,$FFFA,$FFF4,$FFEE                      ;HDMA underwater wavy table
                dw $FFE7,$FFE1,$FFDB,$FFD5                      ;uses one addition-subtraction instruction only
                dw $FFCF,$FFC8,$FFC2,$FFBC                      ;
                dw $FFB6,$FFB0,$FFAA,$FFA4                      ;
                dw $FF9F,$FF99,$FF93,$FF8D                      ;
                dw $FF88,$FF82,$FF7D,$FF78                      ;
                dw $FF72,$FF6D,$FF68,$FF63                      ;
                dw $FF5E,$FF59,$FF55,$FF50                      ;
                dw $FF4B,$FF47,$FF43,$FF3F                      ;
                dw $FF3B,$FF37,$FF33,$FF2F                      ;
                dw $FF2C,$FF28,$FF25,$FF22                      ;
                dw $FF1F,$FF1C,$FF19,$FF16                      ;
                dw $FF14,$FF12,$FF0F,$FF0D                      ;
                dw $FF0C,$FF0A,$FF08,$FF07                      ;
                dw $FF05,$FF04,$FF03,$FF02                      ;
                dw $FF02,$FF01,$FF01,$FF01                      ;
                dw $FF01,$FF01,$FF01,$FF01                      ;
                dw $FF02,$FF02,$FF03,$FF04                      ;
                dw $FF05,$FF07,$FF08,$FF0A                      ;
                dw $FF0C,$FF0D,$FF0F,$FF12                      ;
                dw $FF14,$FF16,$FF19,$FF1C                      ;
                dw $FF1F,$FF22,$FF25,$FF28                      ;
                dw $FF2C,$FF2F,$FF33,$FF37                      ;
                dw $FF3B,$FF3F,$FF43,$FF47                      ;
                dw $FF4B,$FF50,$FF55,$FF59                      ;
                dw $FF5E,$FF63,$FF68,$FF6D                      ;
                dw $FF72,$FF78,$FF7D,$FF82                      ;
                dw $FF88,$FF8D,$FF93,$FF99                      ;
                dw $FF9F,$FFA4,$FFAA,$FFB0                      ;
                dw $FFB6,$FFBC,$FFC2,$FFC8                      ;
                dw $FFCF,$FFD5,$FFDB,$FFE1                      ;
                dw $FFE7,$FFEE,$FFF4,$FFFA                      ;
                dw $0000,$0006,$000C,$0012                      ;
                dw $0019,$001F,$0025,$002B                      ;
                dw $0031,$0038,$003E,$0044                      ;
                dw $004A,$0050,$0056,$005C                      ;
                dw $0061,$0067,$006D,$0073                      ;
                dw $0078,$007E,$0083,$0088                      ;
                dw $008E,$0093,$0098,$009D                      ;
                dw $00A2,$00A7,$00AB,$00B0                      ;
                dw $00B5,$00B9,$00BD,$00C1                      ;
                dw $00C5,$00C9,$00CD,$00D1                      ;
                dw $00D4,$00D8,$00DB,$00DE                      ;
                dw $00E1,$00E4,$00E7,$00EA                      ;
                dw $00EC,$00EE,$00F1,$00F3                      ;
                dw $00F4,$00F6,$00F8,$00F9                      ;
                dw $00FB,$00FC,$00FD,$00FE                      ;
                dw $00FE,$00FF,$00FF,$00FF                      ;
                dw $00FF,$00FF,$00FF,$00FF                      ;
                dw $00FE,$00FE,$00FD,$00FC                      ;
                dw $00FB,$00F9,$00F8,$00F6                      ;
                dw $00F4,$00F3,$00F1,$00EE                      ;
                dw $00EC,$00EA,$00E7,$00E4                      ;
                dw $00E1,$00DE,$00DB,$00D8                      ;
                dw $00D4,$00D1,$00CD,$00C9                      ;
                dw $00C5,$00C1,$00BD,$00B9                      ;
                dw $00B5,$00B0,$00AB,$00A7                      ;
                dw $00A2,$009D,$0098,$0093                      ;
                dw $008E,$0088,$0083,$007E                      ;
                dw $0078,$0073,$006D,$0067                      ;
                dw $0061,$005C,$0056,$0050                      ;
                dw $004A,$0044,$003E,$0038                      ;
                dw $0031,$002B,$0025,$001F                      ;
                dw $0019,$0012,$000C,$0006                      ;

CODE_048B49:    PHB                     ; $04:8B49: 8B          ;
                PHK                     ; $04:8B4A: 4B          ;
                PLB                     ; $04:8B4B: AB          ;
                BRA CODE_048B59         ; $04:8B4C: 80 0B       ;

CODE_048B4E:    PHB                     ; $04:8B4E: 8B          ;
                PHK                     ; $04:8B4F: 4B          ;
                PLB                     ; $04:8B50: AB          ;
                LDA $0EDC               ; $04:8B51: AD DC 0E    ;
                BEQ CODE_048B85         ; $04:8B54: F0 2F       ;
                JSR CODE_048C77         ; $04:8B56: 20 77 8C    ;
CODE_048B59:    PHX                     ; $04:8B59: DA          ;
                PHY                     ; $04:8B5A: 5A          ;
                LDA $0ED6               ; $04:8B5B: AD D6 0E    ;
                AND #$80                ; $04:8B5E: 29 80       ;
                STA $0ED6               ; $04:8B60: 8D D6 0E    ;
                LDA $5C                 ; $04:8B63: A5 5C       ;
                BNE CODE_048B72         ; $04:8B65: D0 0B       ;
                JSR CODE_048C28         ; $04:8B67: 20 28 8C    ;
                LDA #$06                ; $04:8B6A: A9 06       ;
                STA $0773               ; $04:8B6C: 8D 73 07    ;
                JMP CODE_048B7E         ; $04:8B6F: 4C 7E 8B    ;

CODE_048B72:    CMP #$01                ; $04:8B72: C9 01       ;
                BNE CODE_048B83         ; $04:8B74: D0 0D       ;
                JSR CODE_048B87         ; $04:8B76: 20 87 8B    ;
                LDA #$01                ; $04:8B79: A9 01       ;
                STA $0ED4               ; $04:8B7B: 8D D4 0E    ;
CODE_048B7E:    LDA #$01                ; $04:8B7E: A9 01       ;
                STA $0EDE               ; $04:8B80: 8D DE 0E    ;
CODE_048B83:    PLY                     ; $04:8B83: 7A          ;
                PLX                     ; $04:8B84: FA          ;
CODE_048B85:    PLB                     ; $04:8B85: AB          ;
                RTL                     ; $04:8B86: 6B          ;

CODE_048B87:    REP #$30                ; $04:8B87: C2 30       ;
                LDA #$000E              ; $04:8B89: A9 0E 00    ;
                STA $F7                 ; $04:8B8C: 85 F7       ;
                LDA $0ED9               ; $04:8B8E: AD D9 0E    ;
                STA $00                 ; $04:8B91: 85 00       ;
                LDA $7F2000             ; $04:8B93: AF 00 20 7F ;
                TAX                     ; $04:8B97: AA          ;
                LDA $F3                 ; $04:8B98: A5 F3       ;
                XBA                     ; $04:8B9A: EB          ;
                STA $7F2002,x           ; $04:8B9B: 9F 02 20 7F ;
                INC A                   ; $04:8B9F: 1A          ;
                STA $7F203C,x           ; $04:8BA0: 9F 3C 20 7F ;
CODE_048BA4:    PHX                     ; $04:8BA4: DA          ;
                LDX $00                 ; $04:8BA5: A6 00       ;
                LDA $7F3000,x           ; $04:8BA7: BF 00 30 7F ;
                AND #$00FF              ; $04:8BAB: 29 FF 00    ;
                ASL A                   ; $04:8BAE: 0A          ;
                ASL A                   ; $04:8BAF: 0A          ;
                ASL A                   ; $04:8BB0: 0A          ;
                TAY                     ; $04:8BB1: A8          ;
                PLX                     ; $04:8BB2: FA          ;
                LDA DATA_04BD09,y       ; $04:8BB3: B9 09 BD    ;
                STA $7F2004,x           ; $04:8BB6: 9F 04 20 7F ;
                LDA DATA_04BD09+2,y     ; $04:8BBA: B9 0B BD    ;
                STA $7F2006,x           ; $04:8BBD: 9F 06 20 7F ;
                LDA DATA_04BD09+4,y     ; $04:8BC1: B9 0D BD    ;
                STA $7F203E,x           ; $04:8BC4: 9F 3E 20 7F ;
                LDA DATA_04BD09+6,y     ; $04:8BC8: B9 0F BD    ;
                STA $7F2040,x           ; $04:8BCB: 9F 40 20 7F ;
                INX                     ; $04:8BCF: E8          ;
                INX                     ; $04:8BD0: E8          ;
                INX                     ; $04:8BD1: E8          ;
                INX                     ; $04:8BD2: E8          ;
                LDA $00                 ; $04:8BD3: A5 00       ;
                CLC                     ; $04:8BD5: 18          ;
                ADC #$0010              ; $04:8BD6: 69 10 00    ;
                STA $00                 ; $04:8BD9: 85 00       ;
                DEC $F7                 ; $04:8BDB: C6 F7       ;
                BNE CODE_048BA4         ; $04:8BDD: D0 C5       ;
                LDA $7F2000             ; $04:8BDF: AF 00 20 7F ;
                TAX                     ; $04:8BE3: AA          ;
                LDA #$FFFF              ; $04:8BE4: A9 FF FF    ;
                STA $7F2076,x           ; $04:8BE7: 9F 76 20 7F ;
                LDA $7F2000             ; $04:8BEB: AF 00 20 7F ;
                CLC                     ; $04:8BEF: 18          ;
                ADC #$0074              ; $04:8BF0: 69 74 00    ;
                STA $7F2000             ; $04:8BF3: 8F 00 20 7F ;
                LDA $0ED9               ; $04:8BF7: AD D9 0E    ;
                INC A                   ; $04:8BFA: 1A          ;
                AND #$000F              ; $04:8BFB: 29 0F 00    ;
                BNE CODE_048C0F         ; $04:8BFE: D0 0F       ;
                LDA $0ED9               ; $04:8C00: AD D9 0E    ;
                AND #$FFF0              ; $04:8C03: 29 F0 FF    ;
                CLC                     ; $04:8C06: 18          ;
                ADC #$00E0              ; $04:8C07: 69 E0 00    ;
                STA $0ED9               ; $04:8C0A: 8D D9 0E    ;
                BRA CODE_048C12         ; $04:8C0D: 80 03       ;

CODE_048C0F:    INC $0ED9               ; $04:8C0F: EE D9 0E    ;
CODE_048C12:    LDA $0ED9               ; $04:8C12: AD D9 0E    ;
                CMP #$0A80              ; $04:8C15: C9 80 0A    ;
                BCC CODE_048C1D         ; $04:8C18: 90 03       ;
                STZ $0ED9               ; $04:8C1A: 9C D9 0E    ;
CODE_048C1D:    LDA $F3                 ; $04:8C1D: A5 F3       ;
                CLC                     ; $04:8C1F: 18          ;
                ADC #$0200              ; $04:8C20: 69 00 02    ;
                STA $F3                 ; $04:8C23: 85 F3       ;
                SEP #$30                ; $04:8C25: E2 30       ;
                RTS                     ; $04:8C27: 60          ;

CODE_048C28:    REP #$30                ; $04:8C28: C2 30       ;
                LDX $1A00               ; $04:8C2A: AE 00 1A    ;
                LDA $F3                 ; $04:8C2D: A5 F3       ;
                STA $1A02,x             ; $04:8C2F: 9D 02 1A    ;
                CLC                     ; $04:8C32: 18          ;
                ADC #$0100              ; $04:8C33: 69 00 01    ;
                STA $1A08,x             ; $04:8C36: 9D 08 1A    ;
                CLC                     ; $04:8C39: 18          ;
                ADC #$0100              ; $04:8C3A: 69 00 01    ;
                STA $F3                 ; $04:8C3D: 85 F3       ;
                LDA #$0100              ; $04:8C3F: A9 00 01    ;
                STA $1A04,x             ; $04:8C42: 9D 04 1A    ;
                STA $1A0A,x             ; $04:8C45: 9D 0A 1A    ;
                LDA $F3                 ; $04:8C48: A5 F3       ;
                AND #$0200              ; $04:8C4A: 29 00 02    ;
                BNE CODE_048C57         ; $04:8C4D: D0 08       ;
                LDA #$2C2C              ; $04:8C4F: A9 2C 2C    ;
                LDY #$2C2D              ; $04:8C52: A0 2D 2C    ;
                BRA CODE_048C5D         ; $04:8C55: 80 06       ;

CODE_048C57:    LDA #$2C2E              ; $04:8C57: A9 2E 2C    ;
                LDY #$2C2F              ; $04:8C5A: A0 2F 2C    ;
CODE_048C5D:    STA $1A06,x             ; $04:8C5D: 9D 06 1A    ;
                TYA                     ; $04:8C60: 98          ;
                STA $1A0C,x             ; $04:8C61: 9D 0C 1A    ;
                LDA #$FFFF              ; $04:8C64: A9 FF FF    ;
                STA $1A0E,x             ; $04:8C67: 9D 0E 1A    ;
                LDA $1A00               ; $04:8C6A: AD 00 1A    ;
                CLC                     ; $04:8C6D: 18          ;
                ADC #$000C              ; $04:8C6E: 69 0C 00    ;
                STA $1A00               ; $04:8C71: 8D 00 1A    ;
                SEP #$30                ; $04:8C74: E2 30       ;
                RTS                     ; $04:8C76: 60          ;

CODE_048C77:    REP #$30                ; $04:8C77: C2 30       ;
                LDA $0EEE               ; $04:8C79: AD EE 0E    ;
                CLC                     ; $04:8C7C: 18          ;
                ADC #$0120              ; $04:8C7D: 69 20 01    ;
                XBA                     ; $04:8C80: EB          ;
                STA $F3                 ; $04:8C81: 85 F3       ;
                SEP #$30                ; $04:8C83: E2 30       ;
CODE_048C85:    LDA $F3                 ; $04:8C85: A5 F3       ;
                AND #$01                ; $04:8C87: 29 01       ;
                BNE CODE_048C8F         ; $04:8C89: D0 04       ;
                LDA #$58                ; $04:8C8B: A9 58       ;
                BRA CODE_048C91         ; $04:8C8D: 80 02       ;

CODE_048C8F:    LDA #$5C                ; $04:8C8F: A9 5C       ;
CODE_048C91:    STA $F3                 ; $04:8C91: 85 F3       ;
                LDA $F4                 ; $04:8C93: A5 F4       ;
                LSR A                   ; $04:8C95: 4A          ;
                LSR A                   ; $04:8C96: 4A          ;
                LSR A                   ; $04:8C97: 4A          ;
                CLC                     ; $04:8C98: 18          ;
                ADC #$80                ; $04:8C99: 69 80       ;
                STA $F4                 ; $04:8C9B: 85 F4       ;
                RTS                     ; $04:8C9D: 60          ;

;Portion of gate at brown castle 8x8 tilemap at level end. Give priority so Mario goes behind the scenes.

;Small castle
DATA_048C9E:    db $00,$00,$80,$07,$62,$2E,$72,$2E              ;$00,$00,$80,$07. Those byte combinations are unknown
                db $73,$2E,$72,$2E,$00,$00,$80,$07              ;Remaining: Tile, properties, tile, properties, etc.
                db $63,$2E,$73,$2E,$72,$2E,$73,$2E              ;
                db $00,$00,$80,$07,$64,$2E,$74,$2E              ;
                db $4E,$2E,$74,$2E,$FF,$FF                      ;

;Big castle
DATA_048CC4:    db $00,$00,$80,$07,$73,$2E,$72,$2E              ;
                db $73,$2E,$72,$2E,$00,$00,$80,$07              ;
                db $72,$2E,$73,$2E,$72,$2E,$73,$2E              ;
                db $00,$00,$80,$07,$5E,$2E,$66,$2E              ;
                db $67,$6E,$66,$AE,$FF,$FF                      ;

PNTR_048CEA:    dw DATA_048C9E                                  ;small castle
                dw DATA_048CC4                                  ;big castle

CODE_048CEE:    PHB                     ; $04:8CEE: 8B          ;
                PHK                     ; $04:8CEF: 4B          ;
                PLB                     ; $04:8CF0: AB          ;
                LDA #$04                ; $04:8CF1: A9 04       ;
                STA $F5                 ; $04:8CF3: 85 F5       ;
                LDA $0EE6               ; $04:8CF5: AD E6 0E    ;
                AND #$01                ; $04:8CF8: 29 01       ;
                ASL A                   ; $04:8CFA: 0A          ;
                REP #$30                ; $04:8CFB: C2 30       ;
                AND #$0002              ; $04:8CFD: 29 02 00    ;
                TAY                     ; $04:8D00: A8          ;
                LDA PNTR_048CEA,y       ; $04:8D01: B9 EA 8C    ;
                STA $F3                 ; $04:8D04: 85 F3       ;
                LDX $1700               ; $04:8D06: AE 00 17    ;
                LDY #$0000              ; $04:8D09: A0 00 00    ;
CODE_048D0C:    LDA [$F3],y             ; $04:8D0C: B7 F3       ;
                STA $1702,x             ; $04:8D0E: 9D 02 17    ;
                INY                     ; $04:8D11: C8          ;
                INY                     ; $04:8D12: C8          ;
                INX                     ; $04:8D13: E8          ;
                INX                     ; $04:8D14: E8          ;
                CMP #$FFFF              ; $04:8D15: C9 FF FF    ;
                BNE CODE_048D0C         ; $04:8D18: D0 F2       ;
                LDX $1700               ; $04:8D1A: AE 00 17    ;
                LDA $0EF4               ; $04:8D1D: AD F4 0E    ;
                AND #$0020              ; $04:8D20: 29 20 00    ;
                BEQ CODE_048D31         ; $04:8D23: F0 0C       ;
                LDA $0EF4               ; $04:8D25: AD F4 0E    ;
                AND #$0FDF              ; $04:8D28: 29 DF 0F    ;
                EOR #$0400              ; $04:8D2B: 49 00 04    ;
                STA $0EF4               ; $04:8D2E: 8D F4 0E    ;
CODE_048D31:    LDA $0EF4               ; $04:8D31: AD F4 0E    ;
                CLC                     ; $04:8D34: 18          ;
                ADC #$02C1              ; $04:8D35: 69 C1 02    ;
                AND #$0FDF              ; $04:8D38: 29 DF 0F    ;
                TAY                     ; $04:8D3B: A8          ;
                XBA                     ; $04:8D3C: EB          ;
                STA $1702,x             ; $04:8D3D: 9D 02 17    ;
                TYA                     ; $04:8D40: 98          ;
                INY                     ; $04:8D41: C8          ;
                TYA                     ; $04:8D42: 98          ;
                AND #$0020              ; $04:8D43: 29 20 00    ;
                BEQ CODE_048D50         ; $04:8D46: F0 08       ;
                TYA                     ; $04:8D48: 98          ;
                AND #$0FDF              ; $04:8D49: 29 DF 0F    ;
                EOR #$0400              ; $04:8D4C: 49 00 04    ;
                TAY                     ; $04:8D4F: A8          ;
CODE_048D50:    TYA                     ; $04:8D50: 98          ;
                XBA                     ; $04:8D51: EB          ;
                STA $170E,x             ; $04:8D52: 9D 0E 17    ;
                INY                     ; $04:8D55: C8          ;
                TYA                     ; $04:8D56: 98          ;
                XBA                     ; $04:8D57: EB          ;
                STA $171A,x             ; $04:8D58: 9D 1A 17    ;
                LDA $1700               ; $04:8D5B: AD 00 17    ;
                CLC                     ; $04:8D5E: 18          ;
                ADC #$0024              ; $04:8D5F: 69 24 00    ;
                STA $1700               ; $04:8D62: 8D 00 17    ;
                SEP #$30                ; $04:8D65: E2 30       ;
                STZ $0EE6               ; $04:8D67: 9C E6 0E    ;
                LDA #$06                ; $04:8D6A: A9 06       ;
                STA $0773               ; $04:8D6C: 8D 73 07    ;
                PLB                     ; $04:8D6F: AB          ;
                RTL                     ; $04:8D70: 6B          ;

CODE_048D71:    LDY $1A00               ; $04:8D71: AC 00 1A    ;
                LDA $19F8,y             ; $04:8D74: B9 F8 19    ;
                CMP #$0024              ; $04:8D77: C9 24 00    ;
                BEQ CODE_048D81         ; $04:8D7A: F0 05       ;
                CMP #$10A4              ; $04:8D7C: C9 A4 10    ;
                BNE CODE_048DC1         ; $04:8D7F: D0 40       ;
CODE_048D81:    LDA $0ECE               ; $04:8D81: AD CE 0E    ;
                AND #$00FF              ; $04:8D84: 29 FF 00    ;
                BEQ CODE_048D8C         ; $04:8D87: F0 03       ;
                JMP CODE_048E14         ; $04:8D89: 4C 14 8E    ;

CODE_048D8C:    INC $0ECE               ; $04:8D8C: EE CE 0E    ;
                LDX $1700               ; $04:8D8F: AE 00 17    ;
                LDA $0ECC               ; $04:8D92: AD CC 0E    ;
                DEC A                   ; $04:8D95: 3A          ;
                AND #$041F              ; $04:8D96: 29 1F 04    ;
                CLC                     ; $04:8D99: 18          ;
                ADC #$0340              ; $04:8D9A: 69 40 03    ;
                XBA                     ; $04:8D9D: EB          ;
                STA $1702,x             ; $04:8D9E: 9D 02 17    ;
                LDA #$0780              ; $04:8DA1: A9 80 07    ;
                STA $1704,x             ; $04:8DA4: 9D 04 17    ;
                LDA #$0A0D              ; $04:8DA7: A9 0D 0A    ;
                STA $1706,x             ; $04:8DAA: 9D 06 17    ;
                LDA #$0A1D              ; $04:8DAD: A9 1D 0A    ;
                STA $1708,x             ; $04:8DB0: 9D 08 17    ;
                LDA #$0A0F              ; $04:8DB3: A9 0F 0A    ;
                STA $170A,x             ; $04:8DB6: 9D 0A 17    ;
                LDA #$0A1F              ; $04:8DB9: A9 1F 0A    ;
                STA $170C,x             ; $04:8DBC: 9D 0C 17    ;
                BRA CODE_048E06         ; $04:8DBF: 80 45       ;

CODE_048DC1:    CMP #$0A08              ; $04:8DC1: C9 08 0A    ;
                BNE CODE_048E14         ; $04:8DC4: D0 4E       ;
                LDA $0ECF               ; $04:8DC6: AD CF 0E    ;
                AND #$00FF              ; $04:8DC9: 29 FF 00    ;
                BEQ CODE_048E14         ; $04:8DCC: F0 46       ;
                STZ $0ECE               ; $04:8DCE: 9C CE 0E    ;
                LDA $43                 ; $04:8DD1: A5 43       ;
                BNE CODE_048DDA         ; $04:8DD3: D0 05       ;
                LDA $0ECC               ; $04:8DD5: AD CC 0E    ;
                BEQ CODE_048E14         ; $04:8DD8: F0 3A       ;
CODE_048DDA:    LDX $1700               ; $04:8DDA: AE 00 17    ;
                LDA $0ECC               ; $04:8DDD: AD CC 0E    ;
                CLC                     ; $04:8DE0: 18          ;
                ADC #$0340              ; $04:8DE1: 69 40 03    ;
                XBA                     ; $04:8DE4: EB          ;
                STA $1702,x             ; $04:8DE5: 9D 02 17    ;
                LDA #$0780              ; $04:8DE8: A9 80 07    ;
                STA $1704,x             ; $04:8DEB: 9D 04 17    ;
                LDA #$0A0C              ; $04:8DEE: A9 0C 0A    ;
                STA $1706,x             ; $04:8DF1: 9D 06 17    ;
                LDA #$0A1C              ; $04:8DF4: A9 1C 0A    ;
                STA $1708,x             ; $04:8DF7: 9D 08 17    ;
                LDA #$0A0E              ; $04:8DFA: A9 0E 0A    ;
                STA $170A,x             ; $04:8DFD: 9D 0A 17    ;
                LDA #$0A1E              ; $04:8E00: A9 1E 0A    ;
                STA $170C,x             ; $04:8E03: 9D 0C 17    ;
CODE_048E06:    LDA #$FFFF              ; $04:8E06: A9 FF FF    ;
                STA $170E,x             ; $04:8E09: 9D 0E 17    ;
                TXA                     ; $04:8E0C: 8A          ;
                CLC                     ; $04:8E0D: 18          ;
                ADC #$000C              ; $04:8E0E: 69 0C 00    ;
                STA $1700               ; $04:8E11: 8D 00 17    ;
CODE_048E14:    RTL                     ; $04:8E14: 6B          ;

CODE_048E15:    PHB                     ; $04:8E15: 8B          ;\
                PHK                     ; $04:8E16: 4B          ; |Setup program bank
                PLB                     ; $04:8E17: AB          ;/
                INY                     ; $04:8E18: C8          ;\Pass level header
                INY                     ; $04:8E19: C8          ;/
                LDA $FA                 ; $04:8E1A: A5 FA       ;\
                STA $F3                 ; $04:8E1C: 85 F3       ; |
                LDA $FB                 ; $04:8E1E: A5 FB       ; |Copy low, high and bank bytes
                STA $F4                 ; $04:8E20: 85 F4       ; |of the level objects pointer.
                LDA $FC                 ; $04:8E22: A5 FC       ; |
                STA $F5                 ; $04:8E24: 85 F5       ;/
                LDA [$F3],y             ; $04:8E26: B7 F3       ;\Load level objects
                REP #$20                ; $04:8E28: C2 20       ; |16-bit A
                AND #$007F              ; $04:8E2A: 29 7F 00    ; |Filter
                TAX                     ; $04:8E2D: AA          ; |to index
                SEP #$20                ; $04:8E2E: E2 20       ;/ 8-bit A.
                LDA PNTR_048E43,x       ; $04:8E30: BD 43 8E    ;\
                STA $00                 ; $04:8E33: 85 00       ; |Load indirect pointers for object handling
                LDA PNTR_048E43+1,x     ; $04:8E35: BD 44 8E    ; |
                STA $01                 ; $04:8E38: 85 01       ; |
                SEP #$10                ; $04:8E3A: E2 10       ;/ 8-bit XY
                LDX $9E                 ; $04:8E3C: A6 9E       ;Sprite index in X
                LDY $F7                 ; $04:8E3E: A4 F7       ;
                JMP ($0000)             ; $04:8E40: 6C 00 00    ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SMB1 OBJECT DATA - TODO: what type?
;;
;; Each "Object" is composed out of (multiple) map16 tiles. These objects are defined in the level
;; data, then are generated programmatically in the level from there. For example, the level end
;; staircase is made of multiple cement blocks, but it's defined as one object.
;;

PNTR_048E43:    dw CODE_048EB5                                  ;$00 - 
                dw CODE_048EA3                                  ;$01 - 
                dw CODE_048EA3                                  ;$02 - 
                dw CODE_048EA3                                  ;$03 - 
                dw CODE_048EA3                                  ;$04 - 
                dw CODE_048EA3                                  ;$05 - 
                dw CODE_048EA3                                  ;$06 - 
                dw CODE_048EA3                                  ;$07 - 
                dw CODE_048EBB                                  ;$08 - 
                dw CODE_048EA5                                  ;$09 - 
                dw CODE_048EA3                                  ;$0A - 
                dw CODE_048EA3                                  ;$0B - 
                dw CODE_048EA3                                  ;$0C - 
                dw CODE_048EA3                                  ;$0D - 
                dw CODE_048EA3                                  ;$0E - 
                dw CODE_048EA3                                  ;$0F - 
                dw CODE_048F44                                  ;$10 - Level begin/end small/big castle object
                dw CODE_048EA3                                  ;$11 - 
                dw CODE_048EA3                                  ;$12 - 
                dw CODE_048EA3                                  ;$13 - 
                dw CODE_048FD2                                  ;$14 - 
                dw CODE_048EA3                                  ;$15 - 
                dw CODE_048EA3                                  ;$16 - 
                dw CODE_048EA3                                  ;$17 - 
                dw CODE_04901B                                  ;$18 - Stone Stairs object
                dw CODE_04903E                                  ;$19 - 
                dw CODE_04907A                                  ;$1A - 
                dw CODE_0490A0                                  ;$1B - 
                dw CODE_0490C2                                  ;$1C - 
                dw CODE_0490EB                                  ;$1D - 
                dw CODE_049121                                  ;$1E - 
                dw CODE_04915C                                  ;$1F - 
                dw CODE_04917E                                  ;$20 - 
                dw CODE_048EA3                                  ;$21 - 
                dw CODE_048EA3                                  ;$22 - 
                dw CODE_048EA3                                  ;$23 - 
                dw CODE_048EA3                                  ;$24 - 
                dw CODE_048EA3                                  ;$25 - 
                dw CODE_048EA3                                  ;$26 - 
                dw CODE_048EA3                                  ;$27 - 
                dw CODE_0491B3                                  ;$28 - 
                dw CODE_048EA3                                  ;$29 - 
                dw CODE_048EA3                                  ;$2A - 
                dw CODE_048EA3                                  ;$2B - 
                dw CODE_048EA3                                  ;$2C - 
                dw CODE_048EA3                                  ;$2D - 
                dw CODE_048EA3                                  ;$2E - 
                dw CODE_048EA3                                  ;$2F - 

CODE_048EA3:    PLB                     ; $04:8EA3: AB          ;
                RTL                     ; $04:8EA4: 6B          ;

CODE_048EA5:    JSR CODE_0491C0         ; $04:8EA5: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:8EA8: 22 13 AD 03 ;
                LDX $07                 ; $04:8EAC: A6 07       ;
                LDA #$00                ; $04:8EAE: A9 00       ;
                STA $06A1,x             ; $04:8EB0: 9D A1 06    ;
                PLB                     ; $04:8EB3: AB          ;
                RTL                     ; $04:8EB4: 6B          ;

CODE_048EB5:    LDX #$00                ; $04:8EB5: A2 00       ;
                LDY #$0F                ; $04:8EB7: A0 0F       ;
                BRA CODE_048ECE         ; $04:8EB9: 80 13       ;

CODE_048EBB:    TXA                     ; $04:8EBB: 8A          ;
                PHA                     ; $04:8EBC: 48          ;
                LDX #$01                ; $04:8EBD: A2 01       ;
                LDY #$0F                ; $04:8EBF: A0 0F       ;
                LDA #$44                ; $04:8EC1: A9 44       ;
                JSL CODE_03AD0B         ; $04:8EC3: 22 0B AD 03 ; Place tile into levle
                PLA                     ; $04:8EC7: 68          ;
                TAX                     ; $04:8EC8: AA          ;
                JSR CODE_0491C0         ; $04:8EC9: 20 C0 91    ;
                LDX #$01                ; $04:8ECC: A2 01       ;
CODE_048ECE:    LDA #$40                ; $04:8ECE: A9 40       ;
                JSL CODE_03AD0B         ; $04:8ED0: 22 0B AD 03 ; Place tile into level
                PLB                     ; $04:8ED4: AB          ;
                RTL                     ; $04:8ED5: 6B          ;

DATA_048ED6:    db $00,$00,$00,$DF,$C6,$C5,$DE,$00              ;small castle/top of big castle map16 tilemap
                db $00,$00,$00,$00,$00,$D4,$DB,$DA              ;
                db $D0,$00,$00,$00,$00,$00,$E3,$E2              ;
                db $C7,$C4,$E1,$E0,$00,$00,$00,$00              ;
                db $D4,$D3,$CD,$CC,$D1,$D0,$00,$00              ;
                db $E6,$00,$D9,$D8,$DD,$DC,$D6,$D5              ;

                db $E5,$E4,$CB,$CA,$C9,$C8,$C7,$C4              ;bottom of big castle tilemap.
                db $C3,$C2,$C1,$C0,$D4,$D3,$D2,$CD              ;first 2 bytes are for the leftmost flag, which
                db $CC,$CD,$CC,$D2,$D1,$D0,$D9,$D8              ;belongs to the top.
                db $D7,$DD,$DC,$DD,$DC,$D7,$D6,$D5              ;
                db $D9,$D8,$D7,$D7,$D7,$D7,$D7,$D7              ;
                db $D6,$D5,$D9,$D8,$CF,$CE,$CF,$CE              ;
                db $CF,$CE,$D6,$D5,$D9,$D8,$DD,$DC              ;
                db $DD,$DC,$DD,$DC,$D6,$D5                      ;

CODE_048F44:    JSR CODE_0491C0         ; $04:8F44: 20 C0 91    ;
                STY $07                 ; $04:8F47: 84 07       ;
                STZ $0EE7               ; $04:8F49: 9C E7 0E    ;
                TYA                     ; $04:8F4C: 98          ;
                BNE CODE_048F51         ; $04:8F4D: D0 02       ;
                LDY #$08                ; $04:8F4F: A0 08       ;
CODE_048F51:    INY                     ; $04:8F51: C8          ;
                JSL CODE_03AD13         ; $04:8F52: 22 13 AD 03 ;
                PHX                     ; $04:8F56: DA          ;
                LDY $1300,x             ; $04:8F57: BC 00 13    ;
                LDX $07                 ; $04:8F5A: A6 07       ;
                LDA #$16                ; $04:8F5C: A9 16       ;
                STA $06                 ; $04:8F5E: 85 06       ;
CODE_048F60:    LDA DATA_048ED6,y       ; $04:8F60: B9 D6 8E    ;
                STA $06A1,x             ; $04:8F63: 9D A1 06    ;
                INX                     ; $04:8F66: E8          ;
                LDA $06                 ; $04:8F67: A5 06       ;
                BEQ CODE_048F72         ; $04:8F69: F0 07       ;
                TYA                     ; $04:8F6B: 98          ;
                CLC                     ; $04:8F6C: 18          ;
                ADC #$0A                ; $04:8F6D: 69 0A       ;
                TAY                     ; $04:8F6F: A8          ;
                DEC $06                 ; $04:8F70: C6 06       ;
CODE_048F72:    CPX #$0B                ; $04:8F72: E0 0B       ;
                BNE CODE_048F60         ; $04:8F74: D0 EA       ;
                PLX                     ; $04:8F76: FA          ;
                LDA $07                 ; $04:8F77: A5 07       ;
                BEQ CODE_048F83         ; $04:8F79: F0 08       ;
                LDA $1300,x             ; $04:8F7B: BD 00 13    ;
                BNE CODE_048F83         ; $04:8F7E: D0 03       ;
                STZ $06AB               ; $04:8F80: 9C AB 06    ;
CODE_048F83:    LDA $0725               ; $04:8F83: AD 25 07    ;
                BEQ CODE_048FBF         ; $04:8F86: F0 37       ;
                LDA $1300,x             ; $04:8F88: BD 00 13    ;
                CMP #$05                ; $04:8F8B: C9 05       ;
                BNE CODE_048FBF         ; $04:8F8D: D0 30       ;
                JSL CODE_03AD1B         ; $04:8F8F: 22 1B AD 03 ;
                PHA                     ; $04:8F93: 48          ;
                JSL CODE_03AD23         ; $04:8F94: 22 23 AD 03 ;
                PLA                     ; $04:8F98: 68          ;
                CLC                     ; $04:8F99: 18          ;
                ADC #$08                ; $04:8F9A: 69 08       ;
                STA $021A,x             ; $04:8F9C: 9D 1A 02    ;
                LDA $0725               ; $04:8F9F: AD 25 07    ;
                ADC #$00                ; $04:8FA2: 69 00       ;
                STA $79,x               ; $04:8FA4: 95 79       ;
                LDA #$01                ; $04:8FA6: A9 01       ;
                STA $BC,x               ; $04:8FA8: 95 BC       ;
                STA $10,x               ; $04:8FAA: 95 10       ;
                LDA #$90                ; $04:8FAC: A9 90       ;
                STA $0238,x             ; $04:8FAE: 9D 38 02    ;
                LDA #$31                ; $04:8FB1: A9 31       ;\
                STA $1C,x               ; $04:8FB3: 95 1C       ;/Sprite to generate: Star Flag
                INC $0EE7               ; $04:8FB5: EE E7 0E    ;
                LDA $07                 ; $04:8FB8: A5 07       ;
                BEQ CODE_048FBF         ; $04:8FBA: F0 03       ;
                INC $0EE7               ; $04:8FBC: EE E7 0E    ;
CODE_048FBF:    LDA $0725               ; $04:8FBF: AD 25 07    ;
                BEQ CODE_048FD0         ; $04:8FC2: F0 0C       ;
                LDA $06AC               ; $04:8FC4: AD AC 06    ;
                CMP #$56                ; $04:8FC7: C9 56       ;
                BNE CODE_048FD0         ; $04:8FC9: D0 05       ;
                LDA #$FB                ; $04:8FCB: A9 FB       ;
                STA $06AC               ; $04:8FCD: 8D AC 06    ;
CODE_048FD0:    PLB                     ; $04:8FD0: AB          ;
                RTL                     ; $04:8FD1: 6B          ;

CODE_048FD2:    JSR CODE_0491C0         ; $04:8FD2: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:8FD5: 22 13 AD 03 ;
                LDA $06A1               ; $04:8FD9: AD A1 06    ;
                STA $F3                 ; $04:8FDC: 85 F3       ;
                CMP #$65                ; $04:8FDE: C9 65       ;
                BEQ CODE_048FE5         ; $04:8FE0: F0 03       ;
                DEC A                   ; $04:8FE2: 3A          ;
                BRA CODE_048FE6         ; $04:8FE3: 80 01       ;

CODE_048FE5:    INC A                   ; $04:8FE5: 1A          ;
CODE_048FE6:    STA $F4                 ; $04:8FE6: 85 F4       ;
                LDA $07                 ; $04:8FE8: A5 07       ;
                TAY                     ; $04:8FEA: A8          ;
                AND #$01                ; $04:8FEB: 29 01       ;
                BEQ CODE_048FFA         ; $04:8FED: F0 0B       ;
CODE_048FEF:    LDA $F4                 ; $04:8FEF: A5 F4       ;
                STA $06A1,y             ; $04:8FF1: 99 A1 06    ;
                DEC $1300,x             ; $04:8FF4: DE 00 13    ;
                BMI CODE_049007         ; $04:8FF7: 30 0E       ;
                INY                     ; $04:8FF9: C8          ;
CODE_048FFA:    LDA $F3                 ; $04:8FFA: A5 F3       ;
                STA $06A1,y             ; $04:8FFC: 99 A1 06    ;
                DEC $1300,x             ; $04:8FFF: DE 00 13    ;
                BMI CODE_049007         ; $04:9002: 30 03       ;
                INY                     ; $04:9004: C8          ;
                BRA CODE_048FEF         ; $04:9005: 80 E8       ;

CODE_049007:    PLB                     ; $04:9007: AB          ;
                RTL                     ; $04:9008: 6B          ;

DATA_049009:    db $07,$07,$06,$05,$04,$03,$02,$01              ;Height of the 'cement block stairs' segments.
                db $00                                          ;Each number defines the amount of cement blocks

DATA_049012:    db $03,$03,$04,$05,$06,$07,$08,$09              ;Y-placement of the cement block stair blocks
                db $0A                                          ;The higher the number, the lower the placement

;Stone Stairs object
CODE_04901B:    JSR CODE_0491C0         ; $04:901B: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:901E: 22 13 AD 03 ;
                BCC CODE_049029         ; $04:9022: 90 05       ;
                LDA #$09                ; $04:9024: A9 09       ;
                STA $0734               ; $04:9026: 8D 34 07    ;
CODE_049029:    DEC $0734               ; $04:9029: CE 34 07    ;
                LDY $0734               ; $04:902C: AC 34 07    ;
                LDX DATA_049012,y       ; $04:902F: BE 12 90    ;
                LDA DATA_049009,y       ; $04:9032: B9 09 90    ;
                TAY                     ; $04:9035: A8          ;
                LDA #$64                ; $04:9036: A9 64       ;
                JSL CODE_03AD0B         ; $04:9038: 22 0B AD 03 ; Place tile into levle
                PLB                     ; $04:903C: AB          ;
                RTL                     ; $04:903D: 6B          ;

CODE_04903E:    JSR CODE_0491C0         ; $04:903E: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:9041: 22 13 AD 03 ;
                LDY $07                 ; $04:9045: A4 07       ;
                LDA $1300,x             ; $04:9047: BD 00 13    ;
                BNE CODE_04905F         ; $04:904A: D0 13       ;
                LDA #$F3                ; $04:904C: A9 F3       ;
                STA $06A1,y             ; $04:904E: 99 A1 06    ;
                INY                     ; $04:9051: C8          ;
                LDA $06A1,y             ; $04:9052: B9 A1 06    ;
                BNE CODE_049069         ; $04:9055: D0 12       ;
                LDA #$F4                ; $04:9057: A9 F4       ;
                STA $06A1,y             ; $04:9059: 99 A1 06    ;
                INY                     ; $04:905C: C8          ;
                BRA CODE_049069         ; $04:905D: 80 0A       ;

CODE_04905F:    LDA $06A1,y             ; $04:905F: B9 A1 06    ;
                BNE CODE_049073         ; $04:9062: D0 0F       ;
                LDA #$F5                ; $04:9064: A9 F5       ;
                STA $06A1,y             ; $04:9066: 99 A1 06    ;
CODE_049069:    LDA $06A1,y             ; $04:9069: B9 A1 06    ;
                BNE CODE_049073         ; $04:906C: D0 05       ;
                LDA #$F6                ; $04:906E: A9 F6       ;
                STA $06A1,y             ; $04:9070: 99 A1 06    ;
CODE_049073:    INY                     ; $04:9073: C8          ;
                CPY #$0D                ; $04:9074: C0 0D       ;
                BNE CODE_049069         ; $04:9076: D0 F1       ;
                PLB                     ; $04:9078: AB          ;
                RTL                     ; $04:9079: 6B          ;

CODE_04907A:    JSR CODE_0491C0         ; $04:907A: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:907D: 22 13 AD 03 ;
                LDY $07                 ; $04:9081: A4 07       ;
                LDA #$67                ; $04:9083: A9 67       ;
                STA $06A1,y             ; $04:9085: 99 A1 06    ;
                INY                     ; $04:9088: C8          ;
                INY                     ; $04:9089: C8          ;
CODE_04908A:    LDA $06A1,y             ; $04:908A: B9 A1 06    ;
                CMP #$65                ; $04:908D: C9 65       ;
                BEQ CODE_049095         ; $04:908F: F0 04       ;
                CMP #$66                ; $04:9091: C9 66       ;
                BNE CODE_04909E         ; $04:9093: D0 09       ;
CODE_049095:    LDA #$67                ; $04:9095: A9 67       ;
                STA $06A1,y             ; $04:9097: 99 A1 06    ;
                INY                     ; $04:909A: C8          ;
                INY                     ; $04:909B: C8          ;
                BRA CODE_04908A         ; $04:909C: 80 EC       ;

CODE_04909E:    PLB                     ; $04:909E: AB          ;
                RTL                     ; $04:909F: 6B          ;

CODE_0490A0:    JSR CODE_0491C0         ; $04:90A0: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:90A3: 22 13 AD 03 ;
                LDY $07                 ; $04:90A7: A4 07       ;
                LDA #$F7                ; $04:90A9: A9 F7       ;
                STA $06A1,y             ; $04:90AB: 99 A1 06    ;
                INY                     ; $04:90AE: C8          ;
CODE_0490AF:    LDA $06A1,y             ; $04:90AF: B9 A1 06    ;
                CMP #$EB                ; $04:90B2: C9 EB       ;
                BEQ CODE_0490C0         ; $04:90B4: F0 0A       ;
                LDA #$F8                ; $04:90B6: A9 F8       ;
                STA $06A1,y             ; $04:90B8: 99 A1 06    ;
                INY                     ; $04:90BB: C8          ;
                CPY #$0D                ; $04:90BC: C0 0D       ;
                BNE CODE_0490AF         ; $04:90BE: D0 EF       ;
CODE_0490C0:    PLB                     ; $04:90C0: AB          ;
                RTL                     ; $04:90C1: 6B          ;

CODE_0490C2:    JSR CODE_0491C0         ; $04:90C2: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:90C5: 22 13 AD 03 ;
                LDY $07                 ; $04:90C9: A4 07       ;
                LDA $06A1,y             ; $04:90CB: B9 A1 06    ;
                CMP #$FC                ; $04:90CE: C9 FC       ;
                BEQ CODE_0490D7         ; $04:90D0: F0 05       ;
                LDA #$F9                ; $04:90D2: A9 F9       ;
                STA $06A1,y             ; $04:90D4: 99 A1 06    ;
CODE_0490D7:    INY                     ; $04:90D7: C8          ;
CODE_0490D8:    LDA $06A1,y             ; $04:90D8: B9 A1 06    ;
                CMP #$F0                ; $04:90DB: C9 F0       ;
                BEQ CODE_0490E9         ; $04:90DD: F0 0A       ;
                LDA #$FA                ; $04:90DF: A9 FA       ;
                STA $06A1,y             ; $04:90E1: 99 A1 06    ;
                INY                     ; $04:90E4: C8          ;
                CPY #$0D                ; $04:90E5: C0 0D       ;
                BNE CODE_0490D8         ; $04:90E7: D0 EF       ;
CODE_0490E9:    PLB                     ; $04:90E9: AB          ;
                RTL                     ; $04:90EA: 6B          ;

CODE_0490EB:    JSR CODE_0491C0         ; $04:90EB: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:90EE: 22 13 AD 03 ;
                LDY $07                 ; $04:90F2: A4 07       ;
                LDA $1300,x             ; $04:90F4: BD 00 13    ;
                BNE CODE_049105         ; $04:90F7: D0 0C       ;
                LDA #$02                ; $04:90F9: A9 02       ;
                STA $06A1,y             ; $04:90FB: 99 A1 06    ;
                LDA #$ED                ; $04:90FE: A9 ED       ;
                STA $06A2,y             ; $04:9100: 99 A2 06    ;
                BRA CODE_04911F         ; $04:9103: 80 1A       ;

CODE_049105:    LDA $06A1,y             ; $04:9105: B9 A1 06    ;
                CMP #$68                ; $04:9108: C9 68       ;
                BNE CODE_049110         ; $04:910A: D0 04       ;
                LDA #$EE                ; $04:910C: A9 EE       ;
                BRA CODE_049112         ; $04:910E: 80 02       ;

CODE_049110:    LDA #$EB                ; $04:9110: A9 EB       ;
CODE_049112:    STA $06A1,y             ; $04:9112: 99 A1 06    ;
                LDA #$EC                ; $04:9115: A9 EC       ;
                STA $06A2,y             ; $04:9117: 99 A2 06    ;
                LDA #$69                ; $04:911A: A9 69       ;
                STA $06AD               ; $04:911C: 8D AD 06    ;
CODE_04911F:    PLB                     ; $04:911F: AB          ;
                RTL                     ; $04:9120: 6B          ;

CODE_049121:    JSR CODE_0491C0         ; $04:9121: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:9124: 22 13 AD 03 ;
                LDY $07                 ; $04:9128: A4 07       ;
                LDA $1300,x             ; $04:912A: BD 00 13    ;
                BNE CODE_049150         ; $04:912D: D0 21       ;
                LDA $06A1,y             ; $04:912F: B9 A1 06    ;
                CMP #$68                ; $04:9132: C9 68       ;
                BNE CODE_04913A         ; $04:9134: D0 04       ;
                LDA #$F2                ; $04:9136: A9 F2       ;
                BRA CODE_04913C         ; $04:9138: 80 02       ;

CODE_04913A:    LDA #$F0                ; $04:913A: A9 F0       ;
CODE_04913C:    STA $06A1,y             ; $04:913C: 99 A1 06    ;
                LDA #$F1                ; $04:913F: A9 F1       ;
                STA $06A2,y             ; $04:9141: 99 A2 06    ;
CODE_049144:    INY                     ; $04:9144: C8          ;
                CPY #$0C                ; $04:9145: C0 0C       ;
                BEQ CODE_04915A         ; $04:9147: F0 11       ;
                LDA #$69                ; $04:9149: A9 69       ;
                STA $06A2,y             ; $04:914B: 99 A2 06    ;
                BRA CODE_049144         ; $04:914E: 80 F4       ;

CODE_049150:    LDA #$03                ; $04:9150: A9 03       ;
                STA $06A1,y             ; $04:9152: 99 A1 06    ;
                LDA #$EF                ; $04:9155: A9 EF       ;
                STA $06A2,y             ; $04:9157: 99 A2 06    ;
CODE_04915A:    PLB                     ; $04:915A: AB          ;
                RTL                     ; $04:915B: 6B          ;

CODE_04915C:    JSR CODE_0491C0         ; $04:915C: 20 C0 91    ;
                JSL CODE_03AD13         ; $04:915F: 22 13 AD 03 ;
                LDY $07                 ; $04:9163: A4 07       ;
CODE_049165:    LDA #$71                ; $04:9165: A9 71       ;
                STA $06A1,y             ; $04:9167: 99 A1 06    ;
                INY                     ; $04:916A: C8          ;
                DEC $1300,x             ; $04:916B: DE 00 13    ;
                BPL CODE_049165         ; $04:916E: 10 F5       ;
                PLB                     ; $04:9170: AB          ;
                RTL                     ; $04:9171: 6B          ;

DATA_049172:    db $19,$18,$00,$00                              ;

DATA_049176:    db $19,$22,$21,$20                              ; > Level X-2 'go to the surface' pipe tilemap

DATA_04917A:    db $19,$25,$24,$23                              ;

CODE_04917E:    LDY #$03                ; $04:917E: A0 03       ;
                JSL CODE_03AD13         ; $04:9180: 22 13 AD 03 ;
                JSR CODE_0491C0         ; $04:9184: 20 C0 91    ;
                DEY                     ; $04:9187: 88          ;
                DEY                     ; $04:9188: 88          ;
                STY $05                 ; $04:9189: 84 05       ;
                LDY $1300,x             ; $04:918B: BC 00 13    ;
                STY $06                 ; $04:918E: 84 06       ;
                LDX $05                 ; $04:9190: A6 05       ;
                INX                     ; $04:9192: E8          ;
                LDA DATA_049172,y       ; $04:9193: B9 72 91    ;
                CMP #$00                ; $04:9196: C9 00       ;
                BEQ CODE_0491A3         ; $04:9198: F0 09       ;
                LDX #$00                ; $04:919A: A2 00       ;
                LDY $05                 ; $04:919C: A4 05       ;
                JSL CODE_03AD0B         ; $04:919E: 22 0B AD 03 ; Place tile into level
                CLC                     ; $04:91A2: 18          ;
CODE_0491A3:    LDY $06                 ; $04:91A3: A4 06       ;
                LDA DATA_049176,y       ; $04:91A5: B9 76 91    ;
                STA $06A1,x             ; $04:91A8: 9D A1 06    ;
                LDA DATA_04917A,y       ; $04:91AB: B9 7A 91    ;
                STA $06A2,x             ; $04:91AE: 9D A2 06    ;
                PLB                     ; $04:91B1: AB          ;
                RTL                     ; $04:91B2: 6B          ;

CODE_0491B3:    JSR CODE_0491C0         ; $04:91B3: 20 C0 91    ;
                LDX #$02                ; $04:91B6: A2 02       ;
                LDA #$77                ; $04:91B8: A9 77       ;
                JSL CODE_03AD0B         ; $04:91BA: 22 0B AD 03 ; Place tile into level
                PLB                     ; $04:91BE: AB          ;
                RTL                     ; $04:91BF: 6B          ;

CODE_0491C0:    PHX                     ; $04:91C0: DA          ;
                REP #$30                ; $04:91C1: C2 30       ;
                TXA                     ; $04:91C3: 8A          ;
                ASL A                   ; $04:91C4: 0A          ;
                TAX                     ; $04:91C5: AA          ;
                SEP #$20                ; $04:91C6: E2 20       ;
                LDY $1305,x             ; $04:91C8: BC 05 13    ;
                INY                     ; $04:91CB: C8          ;
                LDA [$F3],y             ; $04:91CC: B7 F3       ;
                LSR A                   ; $04:91CE: 4A          ;
                LSR A                   ; $04:91CF: 4A          ;
                LSR A                   ; $04:91D0: 4A          ;
                LSR A                   ; $04:91D1: 4A          ;
                STA $07                 ; $04:91D2: 85 07       ;
                LDA [$F3],y             ; $04:91D4: B7 F3       ;
                AND #$0F                ; $04:91D6: 29 0F       ;
                SEP #$10                ; $04:91D8: E2 10       ;
                TAY                     ; $04:91DA: A8          ;
                PLX                     ; $04:91DB: FA          ;
                RTS                     ; $04:91DC: 60          ;

CODE_0491DD:    PHB                     ; $04:91DD: 8B          ;
                PHK                     ; $04:91DE: 4B          ;
                PLB                     ; $04:91DF: AB          ;
                PHX                     ; $04:91E0: DA          ;
                REP #$30                ; $04:91E1: C2 30       ;
                LDX #$0000              ; $04:91E3: A2 00 00    ;
                LDY $1A00               ; $04:91E6: AC 00 1A    ;
                LDA $0EC3               ; $04:91E9: AD C3 0E    ;
                AND #$00FF              ; $04:91EC: 29 FF 00    ;
                BEQ CODE_049200         ; $04:91EF: F0 0F       ;
CODE_0491F1:    LDA DATA_049CC7,x       ; $04:91F1: BD C7 9C    ;
                STA $1A02,y             ; $04:91F4: 99 02 1A    ;
                INC A                   ; $04:91F7: 1A          ;
                BEQ CODE_04920F         ; $04:91F8: F0 15       ;
                INX                     ; $04:91FA: E8          ;
                INX                     ; $04:91FB: E8          ;
                INY                     ; $04:91FC: C8          ;
                INY                     ; $04:91FD: C8          ;
                BRA CODE_0491F1         ; $04:91FE: 80 F1       ;

CODE_049200:    LDA DATA_049C55,x       ; $04:9200: BD 55 9C    ;
                STA $1A02,y             ; $04:9203: 99 02 1A    ;
                INC A                   ; $04:9206: 1A          ;
                BEQ CODE_04920F         ; $04:9207: F0 06       ;
                INX                     ; $04:9209: E8          ;
                INX                     ; $04:920A: E8          ;
                INY                     ; $04:920B: C8          ;
                INY                     ; $04:920C: C8          ;
                BRA CODE_049200         ; $04:920D: 80 F1       ;

CODE_04920F:    LDX #$0000              ; $04:920F: A2 00 00    ;
CODE_049212:    LDA DATA_049D59,x       ; $04:9212: BD 59 9D    ;
                STA $1A02,y             ; $04:9215: 99 02 1A    ;
                INC A                   ; $04:9218: 1A          ;
                BEQ CODE_049221         ; $04:9219: F0 06       ;
                INX                     ; $04:921B: E8          ;
                INX                     ; $04:921C: E8          ;
                INY                     ; $04:921D: C8          ;
                INY                     ; $04:921E: C8          ;
                BRA CODE_049212         ; $04:921F: 80 F1       ;

CODE_049221:    STY $1A00               ; $04:9221: 8C 00 1A    ;
                LDA #$B623              ; $04:9224: A9 23 B6    ;
                STA $02                 ; $04:9227: 85 02       ;
                LDX #$00A0              ; $04:9229: A2 A0 00    ;
                LDY #$0000              ; $04:922C: A0 00 00    ;
                JSR CODE_049724         ; $04:922F: 20 24 97    ;
                JSR CODE_049724         ; $04:9232: 20 24 97    ;
                JSR CODE_049724         ; $04:9235: 20 24 97    ;
                STZ $0EFD               ; $04:9238: 9C FD 0E    ;
                STZ $0EEE               ; $04:923B: 9C EE 0E    ;
                SEP #$30                ; $04:923E: E2 30       ;
                LDA #$06                ; $04:9240: A9 06       ;
                STA $0773               ; $04:9242: 8D 73 07    ;
                STZ $0ED1               ; $04:9245: 9C D1 0E    ;
                STZ $210F               ; $04:9248: 9C 0F 21    ;
                STZ $210F               ; $04:924B: 9C 0F 21    ;
                STZ $2111               ; $04:924E: 9C 11 21    ;
                STZ $2111               ; $04:9251: 9C 11 21    ;
                LDA #$17                ; $04:9254: A9 17       ;
                STA $120B               ; $04:9256: 8D 0B 12    ;
                LDA #$0A                ; $04:9259: A9 0A       ;
                STA $0099               ; $04:925B: 8D 99 00    ;
                STA $0E20               ; $04:925E: 8D 20 0E    ;
                LDA #$01                ; $04:9261: A9 01       ;
                STA $1200               ; $04:9263: 8D 00 12    ;
                JSL CODE_05E6B1         ; $04:9266: 22 B1 E6 05 ;
                LDA #$FF                ; $04:926A: A9 FF       ;
                STA $0E66               ; $04:926C: 8D 66 0E    ;
                STZ $0ED2               ; $04:926F: 9C D2 0E    ;
                STZ $0ED3               ; $04:9272: 9C D3 0E    ;
                STZ $2110               ; $04:9275: 9C 10 21    ;
                STZ $2110               ; $04:9278: 9C 10 21    ;
                PLX                     ; $04:927B: FA          ;
                PLB                     ; $04:927C: AB          ;
                RTL                     ; $04:927D: 6B          ;

DATA_04927E:    db $68,$04,$14,$05,$1A,$0D,$70,$06              ;
                db $76,$00,$00,$00,$18,$0B,$70,$06              ;
                db $02,$0F,$02,$0F,$9C,$0B,$70,$06              ;
                db $68,$04,$14,$05,$E0,$08,$70,$06              ;
                db $82,$01,$82,$01,$1A,$0D,$70,$06              ;
                db $68,$04,$68,$04,$9C,$0B,$70,$06              ;
                db $82,$01,$00,$00,$18,$0B,$70,$06              ;
                db $68,$04,$82,$01,$C6,$02,$56,$07              ;
                db $00,$01,$02,$03,$01,$01,$01,$01              ;
                db $01                                          ;

DATA_0492C7:    db $02,$03,$0E,$06,$05,$08,$10,$06              ;
                db $27,$27,$27,$06,$02,$03,$0D,$06              ;
                db $05,$05,$0E,$06,$2B,$2B,$2B,$06              ;
                db $05,$08,$10,$06,$02,$05,$0C,$04              ;

CODE_0492E7:    PHB                     ; $04:92E7: 8B          ;
                PHK                     ; $04:92E8: 4B          ;
                PLB                     ; $04:92E9: AB          ;
                PHX                     ; $04:92EA: DA          ;
                PHY                     ; $04:92EB: 5A          ;
                LDA $0E1A               ; $04:92EC: AD 1A 0E    ;
                BEQ CODE_0492F4         ; $04:92EF: F0 03       ;
                STZ $0E1A               ; $04:92F1: 9C 1A 0E    ;
CODE_0492F4:    LDA #$80                ; $04:92F4: A9 80       ;
                STA $1602               ; $04:92F6: 8D 02 16    ;
                LDY $0E21               ; $04:92F9: AC 21 0E    ;
                DEY                     ; $04:92FC: 88          ;
                LDA DATA_0492C7,y       ; $04:92FD: B9 C7 92    ;
                PHA                     ; $04:9300: 48          ;
                AND #$1F                ; $04:9301: 29 1F       ;
                STA $99                 ; $04:9303: 85 99       ;
                PLA                     ; $04:9305: 68          ;
                AND #$E0                ; $04:9306: 29 E0       ;
                STA $0E23               ; $04:9308: 8D 23 0E    ;
                LDA #$01                ; $04:930B: A9 01       ;
                STA $0774               ; $04:930D: 8D 74 07    ;
                STA $0ED6               ; $04:9310: 8D D6 0E    ;
                JSL CODE_05E6B1         ; $04:9313: 22 B1 E6 05 ;
                STZ $0EC9               ; $04:9317: 9C C9 0E    ;
                STZ $0EF0               ; $04:931A: 9C F0 0E    ;
                STZ $0ECA               ; $04:931D: 9C CA 0E    ;
                STZ $130F               ; $04:9320: 9C 0F 13    ;
                STZ $0EDF               ; $04:9323: 9C DF 0E    ;
                INC $0ECE               ; $04:9326: EE CE 0E    ;
                STZ $0ECF               ; $04:9329: 9C CF 0E    ;
                STZ $0ED1               ; $04:932C: 9C D1 0E    ;
                STZ $0B9A               ; $04:932F: 9C 9A 0B    ;
                STZ $1680               ; $04:9332: 9C 80 16    ;
                STZ $1681               ; $04:9335: 9C 81 16    ;
                STZ $0EDC               ; $04:9338: 9C DC 0E    ;
                JSL CODE_0480EF         ; $04:933B: 22 EF 80 04 ;
                LDX $0753               ; $04:933F: AE 53 07    ;
                STX $0EC3               ; $04:9342: 8E C3 0E    ;
                LDA.l DATA_03BD2A,x     ; $04:9345: BF 2A BD 03 ;
                JSL CODE_039CF1         ; $04:9349: 22 F1 9C 03 ;
                LDY $1700               ; $04:934D: AC 00 17    ;
                LDA $16F6,y             ; $04:9350: B9 F6 16    ;
                BNE CODE_04935A         ; $04:9353: D0 05       ;
                LDA #$28                ; $04:9355: A9 28       ;
                STA $16F6,y             ; $04:9357: 99 F6 16    ;
CODE_04935A:    LDA $077A               ; $04:935A: AD 7A 07    ;
                BEQ CODE_0493B4         ; $04:935D: F0 55       ;
                LDA $0761               ; $04:935F: AD 61 07    ;
                BMI CODE_0493B4         ; $04:9362: 30 50       ;
                REP #$20                ; $04:9364: C2 20       ;
                LDA #$7258              ; $04:9366: A9 58 72    ;
                STA $1702,y             ; $04:9369: 99 02 17    ;
                LDA #$0700              ; $04:936C: A9 00 07    ;
                STA $1704,y             ; $04:936F: 99 04 17    ;
                LDA #$2028              ; $04:9372: A9 28 20    ;
                STA $1706,y             ; $04:9375: 99 06 17    ;
                SEP #$20                ; $04:9378: E2 20       ;
                LDA $075F               ; $04:937A: AD 5F 07    ;
                INC A                   ; $04:937D: 1A          ;
                STA $1708,y             ; $04:937E: 99 08 17    ;
                LDA #$20                ; $04:9381: A9 20       ;
                STA $1709,y             ; $04:9383: 99 09 17    ;
                STA $170B,y             ; $04:9386: 99 0B 17    ;
                STA $170D,y             ; $04:9389: 99 0D 17    ;
                LDA #$24                ; $04:938C: A9 24       ;
                STA $170A,y             ; $04:938E: 99 0A 17    ;
                LDA $075C               ; $04:9391: AD 5C 07    ;
                INC A                   ; $04:9394: 1A          ;
                STA $170C,y             ; $04:9395: 99 0C 17    ;
                LDA #$FF                ; $04:9398: A9 FF       ;
                STA $170E,y             ; $04:939A: 99 0E 17    ;
                REP #$20                ; $04:939D: C2 20       ;
                TYA                     ; $04:939F: 98          ;
                CLC                     ; $04:93A0: 18          ;
                ADC #$000C              ; $04:93A1: 69 0C 00    ;
                STA $1700               ; $04:93A4: 8D 00 17    ;
                TAY                     ; $04:93A7: A8          ;
                SEP #$20                ; $04:93A8: E2 20       ;
                LDA $07FC               ; $04:93AA: AD FC 07    ;
                BEQ CODE_0493B4         ; $04:93AD: F0 05       ;
                LDA #$2A                ; $04:93AF: A9 2A       ;
                STA $16FA,y             ; $04:93B1: 99 FA 16    ;
CODE_0493B4:    LDA #$06                ; $04:93B4: A9 06       ;
                STA $0773               ; $04:93B6: 8D 73 07    ;
                REP #$30                ; $04:93B9: C2 30       ;
                STZ $0ECB               ; $04:93BB: 9C CB 0E    ;
                STZ $1310               ; $04:93BE: 9C 10 13    ;
                STZ $1312               ; $04:93C1: 9C 12 13    ;
                LDY $1A00               ; $04:93C4: AC 00 1A    ;
                LDA #$C709              ; $04:93C7: A9 09 C7    ;
                STA $1A02,y             ; $04:93CA: 99 02 1A    ;
                LDA #$12C0              ; $04:93CD: A9 C0 12    ;
                STA $1A04,y             ; $04:93D0: 99 04 1A    ;
                LDA #$30A2              ; $04:93D3: A9 A2 30    ;
                STA $1A06,y             ; $04:93D6: 99 06 1A    ;
                LDA #$D809              ; $04:93D9: A9 09 D8    ;
                STA $1A08,y             ; $04:93DC: 99 08 1A    ;
                LDA #$12C0              ; $04:93DF: A9 C0 12    ;
                STA $1A0A,y             ; $04:93E2: 99 0A 1A    ;
                LDA #$70A2              ; $04:93E5: A9 A2 70    ;
                STA $1A0C,y             ; $04:93E8: 99 0C 1A    ;
                LDA #$A809              ; $04:93EB: A9 09 A8    ;
                STA $1A0E,y             ; $04:93EE: 99 0E 1A    ;
                LDA #$1E40              ; $04:93F1: A9 40 1E    ;
                STA $1A10,y             ; $04:93F4: 99 10 1A    ;
                LDA #$3078              ; $04:93F7: A9 78 30    ;
                STA $1A12,y             ; $04:93FA: 99 12 1A    ;
                LDA #$080B              ; $04:93FD: A9 0B 08    ;
                STA $1A14,y             ; $04:9400: 99 14 1A    ;
                LDA #$1E40              ; $04:9403: A9 40 1E    ;
                STA $1A16,y             ; $04:9406: 99 16 1A    ;
                LDA #$B078              ; $04:9409: A9 78 B0    ;
                STA $1A18,y             ; $04:940C: 99 18 1A    ;
                TYA                     ; $04:940F: 98          ;
                CLC                     ; $04:9410: 18          ;
                ADC #$0018              ; $04:9411: 69 18 00    ;
                TAY                     ; $04:9414: A8          ;
                LDX #$0000              ; $04:9415: A2 00 00    ;
CODE_049418:    LDA DATA_049DAD,x       ; $04:9418: BD AD 9D    ;
                STA $1A02,y             ; $04:941B: 99 02 1A    ;
                INX                     ; $04:941E: E8          ;
                INX                     ; $04:941F: E8          ;
                INY                     ; $04:9420: C8          ;
                INY                     ; $04:9421: C8          ;
                INC A                   ; $04:9422: 1A          ;
                BNE CODE_049418         ; $04:9423: D0 F3       ;
                DEY                     ; $04:9425: 88          ;
                DEY                     ; $04:9426: 88          ;
                LDA $0E21               ; $04:9427: AD 21 0E    ;
                DEC A                   ; $04:942A: 3A          ;
                AND #$00FF              ; $04:942B: 29 FF 00    ;
                ASL A                   ; $04:942E: 0A          ;
                TAX                     ; $04:942F: AA          ;
                LDA DATA_04927E,x       ; $04:9430: BD 7E 92    ;
                TAX                     ; $04:9433: AA          ;
CODE_049434:    LDA DATA_049DEB,x       ; $04:9434: BD EB 9D    ;
                STA $1A02,y             ; $04:9437: 99 02 1A    ;
                INX                     ; $04:943A: E8          ;
                INX                     ; $04:943B: E8          ;
                INY                     ; $04:943C: C8          ;
                INY                     ; $04:943D: C8          ;
                INC A                   ; $04:943E: 1A          ;
                BNE CODE_049434         ; $04:943F: D0 F3       ;
                LDA $0E22               ; $04:9441: AD 22 0E    ;
                AND #$00FF              ; $04:9444: 29 FF 00    ;
                CMP #$0011              ; $04:9447: C9 11 00    ;
                BNE CODE_04945E         ; $04:944A: D0 12       ;
                DEY                     ; $04:944C: 88          ;
                DEY                     ; $04:944D: 88          ;
                LDX #$0000              ; $04:944E: A2 00 00    ;
CODE_049451:    LDA DATA_04AD6F,x       ; $04:9451: BD 6F AD    ;
                STA $1A02,y             ; $04:9454: 99 02 1A    ;
                INX                     ; $04:9457: E8          ;
                INX                     ; $04:9458: E8          ;
                INY                     ; $04:9459: C8          ;
                INY                     ; $04:945A: C8          ;
                INC A                   ; $04:945B: 1A          ;
                BNE CODE_049451         ; $04:945C: D0 F3       ;
CODE_04945E:    LDA $0E22               ; $04:945E: AD 22 0E    ;
                AND #$00F0              ; $04:9461: 29 F0 00    ;
                BEQ CODE_049483         ; $04:9464: F0 1D       ;
                LDA $0E22               ; $04:9466: AD 22 0E    ;
                AND #$00FF              ; $04:9469: 29 FF 00    ;
                CMP #$0016              ; $04:946C: C9 16 00    ;
                BEQ CODE_049483         ; $04:946F: F0 12       ;
                DEY                     ; $04:9471: 88          ;
                DEY                     ; $04:9472: 88          ;
                LDX #$0000              ; $04:9473: A2 00 00    ;
CODE_049476:    LDA DATA_04AD9B,x       ; $04:9476: BD 9B AD    ;
                STA $1A02,y             ; $04:9479: 99 02 1A    ;
                INX                     ; $04:947C: E8          ;
                INX                     ; $04:947D: E8          ;
                INY                     ; $04:947E: C8          ;
                INY                     ; $04:947F: C8          ;
                INC A                   ; $04:9480: 1A          ;
                BNE CODE_049476         ; $04:9481: D0 F3       ;
CODE_049483:    STY $1A00               ; $04:9483: 8C 00 1A    ;
                SEP #$30                ; $04:9486: E2 30       ;
                JSR CODE_0495E2         ; $04:9488: 20 E2 95    ;
                DEC $073C               ; $04:948B: CE 3C 07    ;
                LDA #$01                ; $04:948E: A9 01       ;
                STA $1200               ; $04:9490: 8D 00 12    ;
                STZ $1000               ; $04:9493: 9C 00 10    ;
                STZ $1001               ; $04:9496: 9C 01 10    ;
                LDA $0756               ; $04:9499: AD 56 07    ;
                STA $EB                 ; $04:949C: 85 EB       ;
                LDA #$01                ; $04:949E: A9 01       ;
                STA $0756               ; $04:94A0: 8D 56 07    ;
                LDA $0E22               ; $04:94A3: AD 22 0E    ;
                AND #$F0                ; $04:94A6: 29 F0       ;
                BEQ CODE_0494AC         ; $04:94A8: F0 02       ;
                LDA #$04                ; $04:94AA: A9 04       ;
CODE_0494AC:    STA $0744               ; $04:94AC: 8D 44 07    ;
                LDA $0E22               ; $04:94AF: AD 22 0E    ;
                CMP #$02                ; $04:94B2: C9 02       ;
                BNE CODE_0494BB         ; $04:94B4: D0 05       ;
                LDA #$03                ; $04:94B6: A9 03       ;
                STA $0744               ; $04:94B8: 8D 44 07    ;
CODE_0494BB:    JSL CODE_049A88         ; $04:94BB: 22 88 9A 04 ;
                DEC $1200               ; $04:94BF: CE 00 12    ;
                LDA $EB                 ; $04:94C2: A5 EB       ;
                STA $0756               ; $04:94C4: 8D 56 07    ;
                STZ $0E22               ; $04:94C7: 9C 22 0E    ;
                LDA #$17                ; $04:94CA: A9 17       ;
                STA $120B               ; $04:94CC: 8D 0B 12    ;
                LDA #$06                ; $04:94CF: A9 06       ;
                STA $0773               ; $04:94D1: 8D 73 07    ;
                STZ $0E20               ; $04:94D4: 9C 20 0E    ;
                STZ $0EDE               ; $04:94D7: 9C DE 0E    ;
                STZ $0ED2               ; $04:94DA: 9C D2 0E    ;
                STZ $0ED3               ; $04:94DD: 9C D3 0E    ;
                STZ $2110               ; $04:94E0: 9C 10 21    ;
                STZ $2110               ; $04:94E3: 9C 10 21    ;
                PLY                     ; $04:94E6: 7A          ;
                PLX                     ; $04:94E7: FA          ;
                PLB                     ; $04:94E8: AB          ;
                RTL                     ; $04:94E9: 6B          ;

CODE_0494EA:    LDA $9B                 ; $04:94EA: A5 9B       ;
                BEQ CODE_049513         ; $04:94EC: F0 25       ;
                STZ $9B                 ; $04:94EE: 64 9B       ;
                LDA $9C                 ; $04:94F0: A5 9C       ;
                STA $071C               ; $04:94F2: 8D 1C 07    ;
                STA $073F               ; $04:94F5: 8D 3F 07    ;
                LDA $9D                 ; $04:94F8: A5 9D       ;
                STA $071A               ; $04:94FA: 8D 1A 07    ;
                REP #$20                ; $04:94FD: C2 20       ;
                LDA $9C                 ; $04:94FF: A5 9C       ;
                LSR A                   ; $04:9501: 4A          ;
                STA $0EFD               ; $04:9502: 8D FD 0E    ;
                LSR A                   ; $04:9505: 4A          ;
                STA $0EEE               ; $04:9506: 8D EE 0E    ;
                STA $0ED7               ; $04:9509: 8D D7 0E    ;
                SEP #$20                ; $04:950C: E2 20       ;
                LDA $005C               ; $04:950E: AD 5C 00    ;
                BNE CODE_049513         ; $04:9511: D0 00       ;
CODE_049513:    LDA $0EFE               ; $04:9513: AD FE 0E    ;
                AND #$01                ; $04:9516: 29 01       ;
                STA $0EF6               ; $04:9518: 8D F6 0E    ;
                STZ $0EFC               ; $04:951B: 9C FC 0E    ;
                STZ $0EF8               ; $04:951E: 9C F8 0E    ;
                JSL CODE_058000         ; $04:9521: 22 00 80 05 ;Load background, hdma, aesthethics, etc
                JSR CODE_049B96         ; $04:9525: 20 96 9B    ;
                JSR CODE_049BBC         ; $04:9528: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:952B: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:952E: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9531: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9534: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9537: 20 BC 9B    ;
                LDA $BA                 ; $04:953A: A5 BA       ;\
                CMP #$03                ; $04:953C: C9 03       ; | Return if castle
                BEQ CODE_049563         ; $04:953E: F0 23       ;/
                JSR CODE_049BBC         ; $04:9540: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9543: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9546: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9549: 20 BC 9B    ;
                LDA $0ED1               ; $04:954C: AD D1 0E    ;\
                BEQ CODE_049563         ; $04:954F: F0 12       ;/ Return if not starry night background flag.
                JSR CODE_049BBC         ; $04:9551: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9554: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9557: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:955A: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:955D: 20 BC 9B    ;
                JSR CODE_049BBC         ; $04:9560: 20 BC 9B    ;
CODE_049563:    RTS                     ; $04:9563: 60          ;

DATA_049564:    db $F8,$00,$20,$F8,$F0,$20,$00                  ;indirect hdma table. points to ram 7F2000 and beyond in continuous mode

CODE_04956B:    PHB                     ; $04:956B: 8B          ;
                PHK                     ; $04:956C: 4B          ;
                PLB                     ; $04:956D: AB          ;
                JSR CODE_0494EA         ; $04:956E: 20 EA 94    ;
                STZ $0ED2               ; $04:9571: 9C D2 0E    ;
                STZ $0ED3               ; $04:9574: 9C D3 0E    ;
                LDA $5C                 ; $04:9577: A5 5C       ;
                BEQ CODE_049594         ; $04:9579: F0 19       ;
                CMP #$01                ; $04:957B: C9 01       ;
                BNE CODE_04958B         ; $04:957D: D0 0C       ;
                LDA $00DB               ; $04:957F: AD DB 00    ;
                CMP #$0A                ; $04:9582: C9 0A       ;
                BEQ CODE_04958B         ; $04:9584: F0 05       ;
                LDA #$F8                ; $04:9586: A9 F8       ;
                STA $0ED2               ; $04:9588: 8D D2 0E    ;
CODE_04958B:    LDA #$06                ; $04:958B: A9 06       ;
                STA $1209               ; $04:958D: 8D 09 12    ;
                LDX #$11                ; $04:9590: A2 11       ;
                BRA CODE_0495C0         ; $04:9592: 80 2C       ;

CODE_049594:    REP #$20                ; $04:9594: C2 20       ;16-bit A. Start of a DMA code.
                LDA #$0F42              ; $04:9596: A9 42 0F    ;\
                STA $4320               ; $04:9599: 8D 20 43    ; | Indirect HDMA, 1 reg write twice to BG2 horizontal scroll
                LDA.w #DATA_049564      ; $04:959C: A9 64 95    ; |
                STA $4322               ; $04:959F: 8D 22 43    ; |
                LDX.b #DATA_049564>>16  ; $04:95A2: A2 04       ; | $049564: Pointer to indirect HDMA pointer table
                STX $4324               ; $04:95A4: 8E 24 43    ; |
                LDY #$7F                ; $04:95A7: A0 7F       ; |
                STY $4327               ; $04:95A9: 8C 27 43    ; |
                SEP #$20                ; $04:95AC: E2 20       ;/
                STZ $0EEC               ; $04:95AE: 9C EC 0E    ;
                STZ $0EF3               ; $04:95B1: 9C F3 0E    ;
                LDA $1203               ; $04:95B4: AD 03 12    ;
                ORA #$04                ; $04:95B7: 09 04       ;
                STA $1203               ; $04:95B9: 8D 03 12    ;
                LDA #$00                ; $04:95BC: A9 00       ;
                LDX #$17                ; $04:95BE: A2 17       ;
CODE_0495C0:    STX $120B               ; $04:95C0: 8E 0B 12    ;
                STA $120C               ; $04:95C3: 8D 0C 12    ;
                STZ $0ED9               ; $04:95C6: 9C D9 0E    ;
                LDA #$1F                ; $04:95C9: A9 1F       ;
                STA $0EF2               ; $04:95CB: 8D F2 0E    ;
                LDA $0ED1               ; $04:95CE: AD D1 0E    ;\If starry night BG flag is set
                BEQ CODE_0495DD         ; $04:95D1: F0 0A       ;/
                LDA #$AF                ; $04:95D3: A9 AF       ;\
                STA $0EF2               ; $04:95D5: 8D F2 0E    ;/Set IRQ V-timer to AF
                LDA #$02                ; $04:95D8: A9 02       ;\
                STA $0EDE               ; $04:95DA: 8D DE 0E    ;/Enable IRQ
CODE_0495DD:    JSR CODE_0495E2         ; $04:95DD: 20 E2 95    ;
                PLB                     ; $04:95E0: AB          ;
                RTL                     ; $04:95E1: 6B          ;

CODE_0495E2:    LDA $0E65               ; $04:95E2: AD 65 0E    ;
                BEQ CODE_0495EE         ; $04:95E5: F0 07       ;
                STA $DB                 ; $04:95E7: 85 DB       ;
                STZ $0E65               ; $04:95E9: 9C 65 0E    ;
                BRA CODE_04960A         ; $04:95EC: 80 1C       ;

CODE_0495EE:    LDA $DB                 ; $04:95EE: A5 DB       ;
                CMP #$0C                ; $04:95F0: C9 0C       ;
                BNE CODE_04960A         ; $04:95F2: D0 16       ;
                STA $0E65               ; $04:95F4: 8D 65 0E    ;
                LDA $075F               ; $04:95F7: AD 5F 07    ;
                BEQ CODE_049606         ; $04:95FA: F0 0A       ;
                CMP #$03                ; $04:95FC: C9 03       ;
                BEQ CODE_049606         ; $04:95FE: F0 06       ;
                LDA #$01                ; $04:9600: A9 01       ;
                STA $DB                 ; $04:9602: 85 DB       ;
                BRA CODE_04960A         ; $04:9604: 80 04       ;

CODE_049606:    LDA #$19                ; $04:9606: A9 19       ;
                STA $DB                 ; $04:9608: 85 DB       ;
CODE_04960A:    REP #$30                ; $04:960A: C2 30       ;
                LDA $DB                 ; $04:960C: A5 DB       ;
                AND #$00FF              ; $04:960E: 29 FF 00    ;
                ASL A                   ; $04:9611: 0A          ;
                ASL A                   ; $04:9612: 0A          ;
                ASL A                   ; $04:9613: 0A          ;
                ASL A                   ; $04:9614: 0A          ;
                TAY                     ; $04:9615: A8          ;
                STY $06                 ; $04:9616: 84 06       ;
                STZ $02                 ; $04:9618: 64 02       ;
CODE_04961A:    LDY $06                 ; $04:961A: A4 06       ;
                LDA DATA_0497CD,y       ; $04:961C: B9 CD 97    ;
                AND #$00FF              ; $04:961F: 29 FF 00    ;
                INY                     ; $04:9622: C8          ;
                STY $06                 ; $04:9623: 84 06       ;
                ASL A                   ; $04:9625: 0A          ;
                TAX                     ; $04:9626: AA          ;
                LDA DATA_04AE3F,x       ; $04:9627: BD 3F AE    ;
                TAY                     ; $04:962A: A8          ;
                LDX $02                 ; $04:962B: A6 02       ;
                LDA #$0007              ; $04:962D: A9 07 00    ;
                STA $04                 ; $04:9630: 85 04       ;
CODE_049632:    LDA DATA_04AEC3,y       ; $04:9632: B9 C3 AE    ;
                STA $1000,x             ; $04:9635: 9D 00 10    ;
                LDA DATA_04AED3,y       ; $04:9638: B9 D3 AE    ;
                STA $1010,x             ; $04:963B: 9D 10 10    ;
                INX                     ; $04:963E: E8          ;
                INX                     ; $04:963F: E8          ;
                INY                     ; $04:9640: C8          ;
                INY                     ; $04:9641: C8          ;
                DEC $04                 ; $04:9642: C6 04       ;
                BPL CODE_049632         ; $04:9644: 10 EC       ;
                TXA                     ; $04:9646: 8A          ;
                CLC                     ; $04:9647: 18          ;
                ADC #$0010              ; $04:9648: 69 10 00    ;
                STA $02                 ; $04:964B: 85 02       ;
                CMP #$01E0              ; $04:964D: C9 E0 01    ;
                BNE CODE_04961A         ; $04:9650: D0 C8       ;
                LDA $02F8               ; $04:9652: AD F8 02    ;
                AND #$00FF              ; $04:9655: 29 FF 00    ;
                BEQ CODE_049699         ; $04:9658: F0 3F       ;
                LDA $0753               ; $04:965A: AD 53 07    ;
                AND #$00FF              ; $04:965D: 29 FF 00    ;
                BEQ CODE_049699         ; $04:9660: F0 37       ;
                LDY #$0000              ; $04:9662: A0 00 00    ;
                LDX #$00E0              ; $04:9665: A2 E0 00    ;
CODE_049668:    LDA DATA_049679,y       ; $04:9668: B9 79 96    ;
                STA $1000,x             ; $04:966B: 9D 00 10    ;
                INX                     ; $04:966E: E8          ;
                INX                     ; $04:966F: E8          ;
                INY                     ; $04:9670: C8          ;
                INY                     ; $04:9671: C8          ;
                CPY #$0020              ; $04:9672: C0 20 00    ;
                BNE CODE_049668         ; $04:9675: D0 F1       ;
                BRA CODE_049699         ; $04:9677: 80 20       ;

DATA_049679:    dw $772F,$7FFF,$14A5,$57F0                      ;\
                dw $0340,$0200,$46BF,$365D                      ; |Bonus room Luigi background palette
                dw $25BB,$04EF,$0D73,$4F7F                      ; |
                dw $7F0F,$4E06,$001E,$0012                      ;/

CODE_049699:    LDA $42                 ; $04:9699: A5 42       ;
                LSR A                   ; $04:969B: 4A          ;
                LSR A                   ; $04:969C: 4A          ;
                STA $0EEE               ; $04:969D: 8D EE 0E    ;
                AND #$FF00              ; $04:96A0: 29 00 FF    ;
                XBA                     ; $04:96A3: EB          ;
                STA $F3                 ; $04:96A4: 85 F3       ;
                LDA $075F               ; $04:96A6: AD 5F 07    ;
                AND #$00FF              ; $04:96A9: 29 FF 00    ;
                ASL A                   ; $04:96AC: 0A          ;
                CMP #$000C              ; $04:96AD: C9 0C 00    ;
                BCC CODE_0496B5         ; $04:96B0: 90 03       ;
                LDA #$0000              ; $04:96B2: A9 00 00    ;
CODE_0496B5:    CLC                     ; $04:96B5: 18          ;
                ADC $F3                 ; $04:96B6: 65 F3       ;
                STA $F3                 ; $04:96B8: 85 F3       ;
                STZ $0ED9               ; $04:96BA: 9C D9 0E    ;
CODE_0496BD:    LDA $F3                 ; $04:96BD: A5 F3       ;
                BEQ CODE_0496CF         ; $04:96BF: F0 0E       ;
                LDA $0ED9               ; $04:96C1: AD D9 0E    ;
                CLC                     ; $04:96C4: 18          ;
                ADC #$00E0              ; $04:96C5: 69 E0 00    ;
                STA $0ED9               ; $04:96C8: 8D D9 0E    ;
                DEC $F3                 ; $04:96CB: C6 F3       ;
                BRA CODE_0496BD         ; $04:96CD: 80 EE       ;

CODE_0496CF:    LDA $0EEE               ; $04:96CF: AD EE 0E    ;
                AND #$00F0              ; $04:96D2: 29 F0 00    ;
                LSR A                   ; $04:96D5: 4A          ;
                LSR A                   ; $04:96D6: 4A          ;
                LSR A                   ; $04:96D7: 4A          ;
                LSR A                   ; $04:96D8: 4A          ;
                CLC                     ; $04:96D9: 18          ;
                ADC $0ED9               ; $04:96DA: 6D D9 0E    ;
                STA $0ED9               ; $04:96DD: 8D D9 0E    ;
                CMP #$0A80              ; $04:96E0: C9 80 0A    ;
                BCC CODE_0496E8         ; $04:96E3: 90 03       ;
                STZ $0ED9               ; $04:96E5: 9C D9 0E    ;
CODE_0496E8:    SEP #$30                ; $04:96E8: E2 30       ;
                JSR CODE_04973C         ; $04:96EA: 20 3C 97    ;
                LDA $0EDC               ; $04:96ED: AD DC 0E    ;
                BEQ CODE_04971B         ; $04:96F0: F0 29       ;
                LDA $0EEF               ; $04:96F2: AD EF 0E    ;
                STA $F3                 ; $04:96F5: 85 F3       ;
                LDA $0EEE               ; $04:96F7: AD EE 0E    ;
                STA $F4                 ; $04:96FA: 85 F4       ;
                JSR CODE_048C85         ; $04:96FC: 20 85 8C    ;
                LDA #$13                ; $04:96FF: A9 13       ;
                STA $F5                 ; $04:9701: 85 F5       ;
CODE_049703:    JSL CODE_048B49         ; $04:9703: 22 49 8B 04 ;
                LDA $F4                 ; $04:9707: A5 F4       ;
                CMP #$A0                ; $04:9709: C9 A0       ;
                BCC CODE_049717         ; $04:970B: 90 0A       ;
                LDA $F3                 ; $04:970D: A5 F3       ;
                EOR #$04                ; $04:970F: 49 04       ;
                STA $F3                 ; $04:9711: 85 F3       ;
                LDA #$80                ; $04:9713: A9 80       ;
                STA $F4                 ; $04:9715: 85 F4       ;
CODE_049717:    DEC $F5                 ; $04:9717: C6 F5       ;
                BNE CODE_049703         ; $04:9719: D0 E8       ;
CODE_04971B:    LDA #$01                ; $04:971B: A9 01       ;
                STA $1200               ; $04:971D: 8D 00 12    ;
                INC $073C               ; $04:9720: EE 3C 07    ;
                RTS                     ; $04:9723: 60          ;

CODE_049724:    LDA #$0004              ; $04:9724: A9 04 00    ;
                STA $04                 ; $04:9727: 85 04       ;
                LDA #$0010              ; $04:9729: A9 10 00    ;
                STA $00                 ; $04:972C: 85 00       ;
CODE_04972E:    LDA [$02],y             ; $04:972E: B7 02       ;
                STA $1000,x             ; $04:9730: 9D 00 10    ;
                INY                     ; $04:9733: C8          ;
                INY                     ; $04:9734: C8          ;
                INX                     ; $04:9735: E8          ;
                INX                     ; $04:9736: E8          ;
                DEC $00                 ; $04:9737: C6 00       ;
                BNE CODE_04972E         ; $04:9739: D0 F3       ;
                RTS                     ; $04:973B: 60          ;

CODE_04973C:    PHB                     ; $04:973C: 8B          ;
                LDA #$7F                ; $04:973D: A9 7F       ;
                PHA                     ; $04:973F: 48          ;
                PLB                     ; $04:9740: AB          ;
                LDX #$00                ; $04:9741: A2 00       ;
CODE_049743:    STZ $3000,x             ; $04:9743: 9E 00 30    ;
                STZ $3100,x             ; $04:9746: 9E 00 31    ;
                STZ $3200,x             ; $04:9749: 9E 00 32    ;
                STZ $3300,x             ; $04:974C: 9E 00 33    ;
                STZ $3400,x             ; $04:974F: 9E 00 34    ;
                STZ $3500,x             ; $04:9752: 9E 00 35    ;
                STZ $3600,x             ; $04:9755: 9E 00 36    ;
                STZ $3700,x             ; $04:9758: 9E 00 37    ;
                STZ $3800,x             ; $04:975B: 9E 00 38    ;
                STZ $3900,x             ; $04:975E: 9E 00 39    ;
                STZ $3A00,x             ; $04:9761: 9E 00 3A    ;
                DEX                     ; $04:9764: CA          ;
                BNE CODE_049743         ; $04:9765: D0 DC       ;
                PLB                     ; $04:9767: AB          ;
                PHB                     ; $04:9768: 8B          ;
                PHK                     ; $04:9769: 4B          ;
                PLB                     ; $04:976A: AB          ;
                LDA #$7F                ; $04:976B: A9 7F       ;
                STA $F5                 ; $04:976D: 85 F5       ;
                STZ $F6                 ; $04:976F: 64 F6       ;
                REP #$30                ; $04:9771: C2 30       ;
                LDA #$3000              ; $04:9773: A9 00 30    ;
                STA $F3                 ; $04:9776: 85 F3       ;
                LDY #$0000              ; $04:9778: A0 00 00    ;
                STZ $F8                 ; $04:977B: 64 F8       ;
CODE_04977D:    LDX $F8                 ; $04:977D: A6 F8       ;
                LDA DATA_04B683,x       ; $04:977F: BD 83 B6    ;
                CMP #$FFFF              ; $04:9782: C9 FF FF    ;
                BEQ CODE_0497C9         ; $04:9785: F0 42       ;
                BPL CODE_049793         ; $04:9787: 10 0A       ;
                PHA                     ; $04:9789: 48          ;
                LDA $F3                 ; $04:978A: A5 F3       ;
                CLC                     ; $04:978C: 18          ;
                ADC #$00E0              ; $04:978D: 69 E0 00    ;
                STA $F3                 ; $04:9790: 85 F3       ;
                PLA                     ; $04:9792: 68          ;
CODE_049793:    PHA                     ; $04:9793: 48          ;
                AND #$00FF              ; $04:9794: 29 FF 00    ;
                TAY                     ; $04:9797: A8          ;
                PLA                     ; $04:9798: 68          ;
                ASL A                   ; $04:9799: 0A          ;
                ASL A                   ; $04:979A: 0A          ;
                LDA #$0000              ; $04:979B: A9 00 00    ;
                ROL A                   ; $04:979E: 2A          ;
                STA $F6                 ; $04:979F: 85 F6       ;
                SEP #$20                ; $04:97A1: E2 20       ;
                INX                     ; $04:97A3: E8          ;
                LDA DATA_04B683,x       ; $04:97A4: BD 83 B6    ;
                AND #$3F                ; $04:97A7: 29 3F       ;
                STA $F7                 ; $04:97A9: 85 F7       ;
CODE_0497AB:    LDA $F7                 ; $04:97AB: A5 F7       ;
                STA [$F3],y             ; $04:97AD: 97 F3       ;
                LDA $F6                 ; $04:97AF: A5 F6       ;
                BEQ CODE_0497C1         ; $04:97B1: F0 0E       ;
                TYA                     ; $04:97B3: 98          ;
                AND #$F0                ; $04:97B4: 29 F0       ;
                CMP #$D0                ; $04:97B6: C9 D0       ;
                BEQ CODE_0497C1         ; $04:97B8: F0 07       ;
                TYA                     ; $04:97BA: 98          ;
                CLC                     ; $04:97BB: 18          ;
                ADC #$10                ; $04:97BC: 69 10       ;
                TAY                     ; $04:97BE: A8          ;
                BRA CODE_0497AB         ; $04:97BF: 80 EA       ;

CODE_0497C1:    REP #$20                ; $04:97C1: C2 20       ;
                INC $F8                 ; $04:97C3: E6 F8       ;
                INC $F8                 ; $04:97C5: E6 F8       ;
                BRA CODE_04977D         ; $04:97C7: 80 B4       ;

CODE_0497C9:    SEP #$30                ; $04:97C9: E2 30       ;
                PLB                     ; $04:97CB: AB          ;
                RTS                     ; $04:97CC: 60          ;

DATA_0497CD:    dw $0100,$0302,$1004,$1211                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$1004,$1211                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$031B,$3904,$1211                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$2E06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$0706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$4135,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$0731                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$3806                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$3A04,$3B06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$2B06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$0706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$4034,$3D04,$2D06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$1904,$1A06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0326,$0528,$2A29                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$2726,$0528,$2A29                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$0706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$4034,$3D04,$2D06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$0504,$3C06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$4135,$3D04,$2D06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$0302,$1904,$1A06                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$4135,$3604,$3706                      ;
                dw $0908,$0B0A,$0D0C,$0F0E                      ;
                dw $0100,$1413,$1504,$1606                      ;
                dw $1708,$0B0A,$180C,$0F0E                      ;
                dw $0100,$1413,$1504,$1606                      ;
                dw $1708,$0B0A,$180C,$0F0E                      ;
                dw $0100,$1413,$1904,$1A06                      ;
                dw $1708,$0B0A,$180C,$0F0E                      ;
                dw $0100,$1C1B,$1D04,$1F1E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;
                dw $0100,$1C1B,$1D04,$1F1E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;
                dw $0100,$1C1B,$1D04,$1F1E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;
                dw $0100,$1C1B,$1D04,$1F1E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;
                dw $0100,$1C1B,$1D04,$1F1E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;
                dw $0100,$1C1B,$2F04,$301E                      ;
                dw $2008,$0B0A,$210C,$0F0E                      ;

DATA_0499ED:    dw $7FF8,$7FF8,$0000,$0000                      ;Background colors, indexed by 0744 or BA
                dw $3908,$7FF8,$3908,$3908                      ;Light blue x2, black, indigo, light blue, indigo * 2

DATA_0499FD:    dw $0000,$7FFF,$0C63,$0155                      ;Mario palette
                dw $1A1C,$1B3E,$2D9C,$3ABF                      ;
                dw $0000,$152F,$0014,$0C19                      ;
                dw $1C9F,$762E,$5D68,$44E6                      ;

                dw $0000,$7FFF,$0C63,$0155                      ;Luigi palette
                dw $1A1C,$1B3E,$2D9C,$3ABF                      ;
                dw $0000,$152F,$1E60,$3304                      ;
                dw $4388,$7655,$7190,$58CA                      ;

                dw $0000,$7FFF,$0C63,$0155                      ;Fire Mario palette
                dw $1A1C,$1B3E,$2D9C,$3ABF                      ;
                dw $0000,$152F,$3ED9,$4F5D                      ;
                dw $639F,$0D9F,$001D,$0015                      ;

                dw $0000,$7FFF,$0C63,$0155                      ;Fire Luigi palette
                dw $1A1C,$1B3E,$2D9C,$3ABF                      ;
                dw $0000,$152F,$3ED9,$4F5D                      ;
                dw $639F,$0352,$02AD,$0208                      ;

CODE_049A7D:    LDA $0E22               ; $04:9A7D: AD 22 0E    ;
                BEQ CODE_049A85         ; $04:9A80: F0 03       ;
                JMP CODE_049B34         ; $04:9A82: 4C 34 9B    ;

CODE_049A85:    INC $073C               ; $04:9A85: EE 3C 07    ;
CODE_049A88:    PHB                     ; $04:9A88: 8B          ;
                PHK                     ; $04:9A89: 4B          ;
                PLB                     ; $04:9A8A: AB          ;
                PHX                     ; $04:9A8B: DA          ;
                LDA $0744               ; $04:9A8C: AD 44 07    ;\
                BNE CODE_049A93         ; $04:9A8F: D0 02       ;/Branch if background color != 00
                LDA $BA                 ; $04:9A91: A5 BA       ;Get level current background palette and music
CODE_049A93:    REP #$30                ; $04:9A93: C2 30       ;
                AND #$00FF              ; $04:9A95: 29 FF 00    ;
                ASL A                   ; $04:9A98: 0A          ;
                TAY                     ; $04:9A99: A8          ;
                LDA $0743               ; $04:9A9A: AD 43 07    ;\ Bonus game flag
                AND #$00FF              ; $04:9A9D: 29 FF 00    ; |
                BEQ CODE_049AB7         ; $04:9AA0: F0 15       ;/ branch if not bonus game
                LDA $0744               ; $04:9AA2: AD 44 07    ;\
                AND #$0004              ; $04:9AA5: 29 04 00    ; | Branch if background color is $04
                BNE CODE_049AB7         ; $04:9AA8: D0 0D       ;/
                LDA $075A               ; $04:9AAA: AD 5A 07    ;\
                AND #$0080              ; $04:9AAD: 29 80 00    ; | Branch if something with lives
                BNE CODE_049AB7         ; $04:9AB0: D0 05       ;/
                LDA #$522A              ; $04:9AB2: A9 2A 52    ;
                BRA CODE_049ABA         ; $04:9AB5: 80 03       ;

CODE_049AB7:    LDA DATA_0499ED,y       ; $04:9AB7: B9 ED 99    ;
CODE_049ABA:    STA $1000               ; $04:9ABA: 8D 00 10    ;
                AND #$001F              ; $04:9ABD: 29 1F 00    ;
                CLC                     ; $04:9AC0: 18          ;
                ADC #$0020              ; $04:9AC1: 69 20 00    ;
                STA $0EE0               ; $04:9AC4: 8D E0 0E    ;
                LDA $1000               ; $04:9AC7: AD 00 10    ;
                AND #$03E0              ; $04:9ACA: 29 E0 03    ;
                ASL A                   ; $04:9ACD: 0A          ;
                ASL A                   ; $04:9ACE: 0A          ;
                ASL A                   ; $04:9ACF: 0A          ;
                XBA                     ; $04:9AD0: EB          ;
                CLC                     ; $04:9AD1: 18          ;
                ADC #$0040              ; $04:9AD2: 69 40 00    ;
                STA $0EE1               ; $04:9AD5: 8D E1 0E    ;
                LDA $1000               ; $04:9AD8: AD 00 10    ;
                AND #$7C00              ; $04:9ADB: 29 00 7C    ;
                LSR A                   ; $04:9ADE: 4A          ;
                LSR A                   ; $04:9ADF: 4A          ;
                XBA                     ; $04:9AE0: EB          ;
                CLC                     ; $04:9AE1: 18          ;
                ADC #$0080              ; $04:9AE2: 69 80 00    ;
                STA $0EE2               ; $04:9AE5: 8D E2 0E    ;
                STZ $1000               ; $04:9AE8: 9C 00 10    ;
                BRA CODE_049AF9         ; $04:9AEB: 80 0C       ;

                LDA #$00E0              ; $04:9AED: A9 E0 00    ;
                STA $0EE0               ; $04:9AF0: 8D E0 0E    ;
                STA $0EE1               ; $04:9AF3: 8D E1 0E    ;
                STA $0EE2               ; $04:9AF6: 8D E2 0E    ;
CODE_049AF9:    SEP #$30                ; $04:9AF9: E2 30       ;
                LDA $0254               ; $04:9AFB: AD 54 02    ;
                BNE CODE_049B32         ; $04:9AFE: D0 32       ;
                LDY #$00                ; $04:9B00: A0 00       ;
                LDA $0753               ; $04:9B02: AD 53 07    ;
                BEQ CODE_049B09         ; $04:9B05: F0 02       ;
                LDY #$20                ; $04:9B07: A0 20       ;
CODE_049B09:    LDA $0756               ; $04:9B09: AD 56 07    ;
                CMP #$02                ; $04:9B0C: C9 02       ;
                BNE CODE_049B15         ; $04:9B0E: D0 05       ;
                TYA                     ; $04:9B10: 98          ;
                CLC                     ; $04:9B11: 18          ;
                ADC #$40                ; $04:9B12: 69 40       ;
                TAY                     ; $04:9B14: A8          ;
CODE_049B15:    REP #$20                ; $04:9B15: C2 20       ;
                LDX #$00                ; $04:9B17: A2 00       ;
CODE_049B19:    LDA DATA_0499FD,y       ; $04:9B19: B9 FD 99    ;
                STA $11E0,x             ; $04:9B1C: 9D E0 11    ;
                LDA DATA_0499FD+16,y    ; $04:9B1F: B9 0D 9A    ;
                STA $11F0,x             ; $04:9B22: 9D F0 11    ;
                INX                     ; $04:9B25: E8          ;
                INX                     ; $04:9B26: E8          ;
                INY                     ; $04:9B27: C8          ;
                INY                     ; $04:9B28: C8          ;
                CPX #$10                ; $04:9B29: E0 10       ;
                BNE CODE_049B19         ; $04:9B2B: D0 EC       ;
                SEP #$20                ; $04:9B2D: E2 20       ;
                INC $1200               ; $04:9B2F: EE 00 12    ;
CODE_049B32:    PLX                     ; $04:9B32: FA          ;
                PLB                     ; $04:9B33: AB          ;
CODE_049B34:    RTL                     ; $04:9B34: 6B          ;

CODE_049B35:    PHB                     ; $04:9B35: 8B          ;
                PHK                     ; $04:9B36: 4B          ;
                PLB                     ; $04:9B37: AB          ;
                PHX                     ; $04:9B38: DA          ;
                PHY                     ; $04:9B39: 5A          ;
                PHA                     ; $04:9B3A: 48          ;
                LDA #$20                ; $04:9B3B: A9 20       ;
                STA $00                 ; $04:9B3D: 85 00       ;
                LDA $BA                 ; $04:9B3F: A5 BA       ;
                CMP #$03                ; $04:9B41: C9 03       ;
                BNE CODE_049B47         ; $04:9B43: D0 02       ;
                ASL $00                 ; $04:9B45: 06 00       ;
CODE_049B47:    LDA $0EFD               ; $04:9B47: AD FD 0E    ;
                CLC                     ; $04:9B4A: 18          ;
                ADC $00                 ; $04:9B4B: 65 00       ;
                AND #$F0                ; $04:9B4D: 29 F0       ;
                LSR A                   ; $04:9B4F: 4A          ;
                LSR A                   ; $04:9B50: 4A          ;
                STA $0EF7               ; $04:9B51: 8D F7 0E    ;
                LSR A                   ; $04:9B54: 4A          ;
                STA $00                 ; $04:9B55: 85 00       ;
                LDA $00                 ; $04:9B57: A5 00       ;
                BNE CODE_049B6E         ; $04:9B59: D0 13       ;
                LDA $0EF6               ; $04:9B5B: AD F6 0E    ;
                BEQ CODE_049B67         ; $04:9B5E: F0 07       ;
                STZ $0EF6               ; $04:9B60: 9C F6 0E    ;
                LDA #$14                ; $04:9B63: A9 14       ;
                BRA CODE_049B7B         ; $04:9B65: 80 14       ;

CODE_049B67:    LDA #$10                ; $04:9B67: A9 10       ;
                STA $0EF6               ; $04:9B69: 8D F6 0E    ;
                BRA CODE_049B7B         ; $04:9B6C: 80 0D       ;

CODE_049B6E:    LDA $0EFE               ; $04:9B6E: AD FE 0E    ;
                AND #$01                ; $04:9B71: 29 01       ;
                BEQ CODE_049B79         ; $04:9B73: F0 04       ;
                LDA #$10                ; $04:9B75: A9 10       ;
                BRA CODE_049B7B         ; $04:9B77: 80 02       ;

CODE_049B79:    LDA #$14                ; $04:9B79: A9 14       ;
CODE_049B7B:    STA $01                 ; $04:9B7B: 85 01       ;
                LDA $0EFE               ; $04:9B7D: AD FE 0E    ;
                AND #$0F                ; $04:9B80: 29 0F       ;
                LDX $00                 ; $04:9B82: A6 00       ;
                BNE CODE_049B87         ; $04:9B84: D0 01       ;
                INC A                   ; $04:9B86: 1A          ;
CODE_049B87:    INC A                   ; $04:9B87: 1A          ;
                ASL A                   ; $04:9B88: 0A          ;
                ASL A                   ; $04:9B89: 0A          ;
                ASL A                   ; $04:9B8A: 0A          ;
                STA $0EF8               ; $04:9B8B: 8D F8 0E    ;
                JSR CODE_049BBC         ; $04:9B8E: 20 BC 9B    ;
                PLA                     ; $04:9B91: 68          ;
                PLY                     ; $04:9B92: 7A          ;
                PLX                     ; $04:9B93: FA          ;
                PLB                     ; $04:9B94: AB          ;
                RTL                     ; $04:9B95: 6B          ;

CODE_049B96:    LDA $0EFD               ; $04:9B96: AD FD 0E    ;
                AND #$F0                ; $04:9B99: 29 F0       ;
                LSR A                   ; $04:9B9B: 4A          ;
                LSR A                   ; $04:9B9C: 4A          ;
                STA $0EF7               ; $04:9B9D: 8D F7 0E    ;
                LSR A                   ; $04:9BA0: 4A          ;
                STA $00                 ; $04:9BA1: 85 00       ;
                LDA $0EFE               ; $04:9BA3: AD FE 0E    ;
                ASL A                   ; $04:9BA6: 0A          ;
                ASL A                   ; $04:9BA7: 0A          ;
                ASL A                   ; $04:9BA8: 0A          ;
                STA $0EF8               ; $04:9BA9: 8D F8 0E    ;
                LDA $0EFE               ; $04:9BAC: AD FE 0E    ;
                AND #$01                ; $04:9BAF: 29 01       ;
                BEQ CODE_049BB7         ; $04:9BB1: F0 04       ;
                LDA #$14                ; $04:9BB3: A9 14       ;
                BRA CODE_049BB9         ; $04:9BB5: 80 02       ;

CODE_049BB7:    LDA #$10                ; $04:9BB7: A9 10       ;
CODE_049BB9:    STA $01                 ; $04:9BB9: 85 01       ;
                RTS                     ; $04:9BBB: 60          ;

CODE_049BBC:    REP #$30                ; $04:9BBC: C2 30       ;
                LDA #$0004              ; $04:9BBE: A9 04 00    ;
                STA $0EFA               ; $04:9BC1: 8D FA 0E    ;something related to how many background tiles you load as you scroll
                LDA $BA                 ; $04:9BC4: A5 BA       ;\
                AND #$00FF              ; $04:9BC6: 29 FF 00    ; |
                CMP #$0003              ; $04:9BC9: C9 03 00    ; | Branch if not Black background with castle music
                BNE CODE_049BD1         ; $04:9BCC: D0 03       ;/
                ASL $0EFA               ; $04:9BCE: 0E FA 0E    ;When Black background with castle music, do this
CODE_049BD1:    LDA $7F0000             ; $04:9BD1: AF 00 00 7F ;
                TAY                     ; $04:9BD5: A8          ;
CODE_049BD6:    LDA $00                 ; $04:9BD6: A5 00       ;
                AND #$0020              ; $04:9BD8: 29 20 00    ;
                BEQ CODE_049BE8         ; $04:9BDB: F0 0B       ;
                LDA $00                 ; $04:9BDD: A5 00       ;
                CLC                     ; $04:9BDF: 18          ;
                ADC #$0400              ; $04:9BE0: 69 00 04    ;
                AND #$1400              ; $04:9BE3: 29 00 14    ;
                STA $00                 ; $04:9BE6: 85 00       ;
CODE_049BE8:    TYX                     ; $04:9BE8: BB          ;
                LDA $00                 ; $04:9BE9: A5 00       ;
                SEC                     ; $04:9BEB: 38          ;
                SBC #$0800              ; $04:9BEC: E9 00 08    ;
                STA $7F0002,x           ; $04:9BEF: 9F 02 00 7F ;
                LDA #$0020              ; $04:9BF3: A9 20 00    ;
                STA $02                 ; $04:9BF6: 85 02       ;
                TXY                     ; $04:9BF8: 9B          ;
                LDA $0EF7               ; $04:9BF9: AD F7 0E    ;
                AND #$0040              ; $04:9BFC: 29 40 00    ;
                BEQ CODE_049C0E         ; $04:9BFF: F0 0D       ;
                LDA #$0800              ; $04:9C01: A9 00 08    ;
                CLC                     ; $04:9C04: 18          ;
                ADC $0EF7               ; $04:9C05: 6D F7 0E    ;
                AND #$FF00              ; $04:9C08: 29 00 FF    ;
                STA $0EF7               ; $04:9C0B: 8D F7 0E    ;
CODE_049C0E:    LDX $0EF7               ; $04:9C0E: AE F7 0E    ;
                STX $04                 ; $04:9C11: 86 04       ;
CODE_049C13:    LDA $7E2000,x           ; $04:9C13: BF 00 20 7E ;
                TYX                     ; $04:9C17: BB          ;
                STA $7F0004,x           ; $04:9C18: 9F 04 00 7F ;
                INY                     ; $04:9C1C: C8          ;
                INY                     ; $04:9C1D: C8          ;
                LDA $04                 ; $04:9C1E: A5 04       ;
                CLC                     ; $04:9C20: 18          ;
                ADC #$0040              ; $04:9C21: 69 40 00    ;
                STA $04                 ; $04:9C24: 85 04       ;
                TAX                     ; $04:9C26: AA          ;
                DEC $02                 ; $04:9C27: C6 02       ;
                BPL CODE_049C13         ; $04:9C29: 10 E8       ;
                TYX                     ; $04:9C2B: BB          ;
                LDA #$0024              ; $04:9C2C: A9 24 00    ;
                STA $7F0000,x           ; $04:9C2F: 9F 00 00 7F ;
                INC $0EF7               ; $04:9C33: EE F7 0E    ;
                INC $0EF7               ; $04:9C36: EE F7 0E    ;
                INC $00                 ; $04:9C39: E6 00       ;
                DEC $0EFA               ; $04:9C3B: CE FA 0E    ;
                BNE CODE_049BD6         ; $04:9C3E: D0 96       ;
                TYA                     ; $04:9C40: 98          ;
                STA $7F0000             ; $04:9C41: 8F 00 00 7F ;
                TAX                     ; $04:9C45: AA          ;
                LDA #$FFFF              ; $04:9C46: A9 FF FF    ;
                STA $7F0002,x           ; $04:9C49: 9F 02 00 7F ;
                SEP #$30                ; $04:9C4D: E2 30       ;
                LDA #$01                ; $04:9C4F: A9 01       ;
                STA $0EF9               ; $04:9C51: 8D F9 0E    ;
                RTS                     ; $04:9C54: 60          ;

DATA_049C55:    dw $8D0A,$0B00,$0024,$0024                      ;
                dw $1E45,$1E46,$1E47,$0024                      ;
                dw $AD0A,$0B00,$1E4A,$1E4B                      ;
                dw $1E48,$1E49,$1E59,$0024                      ;
                dw $CD0A,$0B00,$1E5A,$1E5B                      ;
                dw $1E69,$1E6A,$1E6F,$0024                      ;
                dw $ED0A,$0B00,$0024,$1E6B                      ;
                dw $1E4C,$1E4D,$1E4E,$1E4F                      ;
                dw $0D0B,$0B00,$0024,$0024                      ;
                dw $1E5C,$1E5D,$1E5E,$1E5F                      ;
                dw $2D0B,$0B00,$0024,$1E7A                      ;
                dw $1E6C,$1E6D,$1E6E,$0024                      ;
                dw $4D0B,$0B00,$0024,$1E7B                      ;
                dw $1E7C,$1E7D,$1E7E,$0024                      ;
                dw $FFFF                                        ;

DATA_049CC7:    dw $4D0A,$0B00,$0024,$1680                      ;
                dw $1681,$1682,$0024,$0024                      ;
                dw $6D0A,$0B00,$0024,$1683                      ;
                dw $1684,$1685,$0024,$0024                      ;
                dw $8D0A,$0B00,$0024,$1686                      ;
                dw $1687,$1688,$0024,$0024                      ;
                dw $AD0A,$0B00,$0024,$1689                      ;
                dw $168A,$168B,$168C,$0024                      ;
                dw $CD0A,$0B00,$0024,$168D                      ;
                dw $168E,$168F,$1690,$0024                      ;
                dw $ED0A,$0B00,$1691,$1692                      ;
                dw $1693,$1694,$1695,$0024                      ;
                dw $0D0B,$0B00,$1696,$1697                      ;
                dw $1698,$1699,$0024,$0024                      ;
                dw $2D0B,$0B00,$0024,$169A                      ;
                dw $169B,$169C,$0024,$0024                      ;
                dw $4D0B,$0B00,$0024,$169D                      ;
                dw $169E,$169F,$16A0,$0024                      ;
                dw $FFFF                                        ;

DATA_049D59:    dw $F30A,$0900,$1A40,$1A41                      ;
                dw $1A42,$1A43,$1A44,$130B                      ;
                dw $1100,$1A50,$1A51,$1A52                      ;
                dw $1A53,$1A54,$1A55,$1A56                      ;
                dw $1A57,$1A58,$330B,$1100                      ;
                dw $1A60,$1A61,$1A62,$1A63                      ;
                dw $1A64,$1A65,$1A66,$1A67                      ;
                dw $1A68,$530B,$1300,$1A70                      ;
                dw $1A71,$1A72,$1A73,$1A74                      ;
                dw $1A75,$1A76,$1A77,$1A78                      ;
                dw $1A79,$FFFF                                  ;

DATA_049DAD:    dw $C801,$1E40,$0024,$E801                      ;
                dw $1E40,$0024,$0802,$1E40                      ;
                dw $0024,$2802,$1E40,$0024                      ;
                dw $4802,$1E40,$0024,$6802                      ;
                dw $1E40,$0024,$8802,$1E40                      ;
                dw $0024,$A802,$1E40,$0024                      ;
                dw $C802,$1E40,$0024,$E802                      ;
                dw $1E40,$0024,$FFFF                            ;

DATA_049DEB:    dw $E801,$1F00,$18EC,$18ED                      ;
                dw $18EE,$18EF,$18EC,$18ED                      ;
                dw $18EE,$18EF,$18EC,$18ED                      ;
                dw $18EE,$18EF,$18EC,$18ED                      ;
                dw $18EE,$18EF,$4C02,$0B80                      ;
                dw $1D4A,$1D5A,$1D4A,$1D5A                      ;
                dw $1082,$1084,$4D02,$0B80                      ;
                dw $1D4B,$1D5B,$1D4B,$1D5B                      ;
                dw $1083,$1085,$080A,$1E40                      ;
                dw $1900,$280A,$1E40,$1900                      ;
                dw $480A,$1E40,$1901,$680A                      ;
                dw $1E40,$1901,$880A,$1E40                      ;
                dw $1901,$A80A,$1E40,$1901                      ;
                dw $C80A,$1E40,$1901,$E80A                      ;
                dw $1E40,$1901,$FFFF,$CA09                      ;
                dw $0900,$1DDF,$1DC3,$1DC0                      ;
                dw $1DC1,$1DCA,$EA09,$0B00                      ;
                dw $1DDC,$1DD3,$1DD0,$1DD1                      ;
                dw $1DDA,$1DDB,$090A,$0D00                      ;
                dw $1DDD,$1DE2,$1DE3,$1DE0                      ;
                dw $1DE1,$1DE2,$1DF8,$290A                      ;
                dw $0D00,$1DDE,$1DF2,$1DF3                      ;
                dw $1DF0,$1DF1,$1DF2,$1DF3                      ;
                dw $490A,$1B00,$1DE9,$1DC6                      ;
                dw $1DC7,$1DC4,$1DC5,$1DC6                      ;
                dw $1DC7,$1DE8,$0024,$0024                      ;
                dw $1DE9,$1DEA,$1DEB,$1DE8                      ;
                dw $690A,$1B00,$1DF9,$1DD6                      ;
                dw $1DD7,$1DD4,$1DD5,$1DD6                      ;
                dw $1DD7,$1DF8,$0024,$0024                      ;
                dw $1DF9,$1DFA,$1DFB,$1DF8                      ;
                dw $890A,$1B00,$1DE5,$1DE6                      ;
                dw $1DE7,$1DE4,$1DE5,$1DE6                      ;
                dw $1DE7,$1DE4,$0024,$0024                      ;
                dw $1DE5,$1DE6,$1DE7,$1DE4                      ;
                dw $A90A,$1B00,$1DF5,$1DF6                      ;
                dw $1DF7,$1DF4,$1DF5,$1DF6                      ;
                dw $1DF7,$1DF4,$0024,$0024                      ;
                dw $1DF5,$1DF6,$1DF7,$1DF4                      ;
                dw $C802,$1F00,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$E802,$1F00                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $FFFF,$CA09,$0900,$1DDF                      ;
                dw $1DC3,$1DC0,$1DC1,$1DCA                      ;
                dw $EA09,$0B00,$1DDC,$1DD3                      ;
                dw $1DD0,$1DD1,$1DDA,$1DDB                      ;
                dw $090A,$0D00,$1DDD,$1DE2                      ;
                dw $1DE3,$1DE0,$1DE1,$1DE2                      ;
                dw $1DF8,$290A,$0D00,$1DDE                      ;
                dw $1DF2,$1DF3,$1DF0,$1DF1                      ;
                dw $1DF2,$1DF3,$490A,$1B00                      ;
                dw $1DE9,$1DC6,$1DC7,$1DC4                      ;
                dw $1DC5,$1DC6,$1DC7,$1DE8                      ;
                dw $0024,$0024,$1DE9,$1DEA                      ;
                dw $1DEB,$1DE8,$690A,$1B00                      ;
                dw $1DF9,$1DD6,$1DD7,$1DD4                      ;
                dw $1DD5,$1DD6,$1DD7,$1DF8                      ;
                dw $0024,$0024,$1DF9,$1DFA                      ;
                dw $1DFB,$1DF8,$890A,$1B00                      ;
                dw $1DE5,$1DE6,$1DE7,$1DE4                      ;
                dw $1DE5,$1DE6,$1DE7,$1DE4                      ;
                dw $0024,$0024,$1DE5,$1DE6                      ;
                dw $1DE7,$1DE4,$A90A,$1B00                      ;
                dw $1DF5,$1DF6,$1DF7,$1DF4                      ;
                dw $1DF5,$1DF6,$1DF7,$1DF4                      ;
                dw $0024,$0024,$1DF5,$1DF6                      ;
                dw $1DF7,$1DF4,$0A02,$0B80                      ;
                dw $08B8,$08BA,$08BA,$08BC                      ;
                dw $0CBE,$0CBE,$0B02,$0B80                      ;
                dw $08B9,$08BB,$08BB,$08BD                      ;
                dw $0CBF,$0CBF,$9202,$0700                      ;
                dw $1214,$1215,$1214,$1215                      ;
                dw $B202,$0700,$1216,$1217                      ;
                dw $1216,$1217,$C802,$1F00                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $E802,$1F00,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$FFFF,$C809                      ;
                dw $1F00,$1DC2,$1DC3,$1DC0                      ;
                dw $1DC1,$1DC2,$1DC3,$1DC0                      ;
                dw $1DC1,$1DC2,$1DC3,$1DC0                      ;
                dw $1DC1,$1DC2,$1DC3,$1DC0                      ;
                dw $1DC1,$E809,$1F00,$1DD2                      ;
                dw $1DD3,$1DD0,$1DD1,$1DD2                      ;
                dw $1DD3,$1DD0,$1DD1,$1DD2                      ;
                dw $1DD3,$1DD0,$1DD1,$1DD2                      ;
                dw $1DD3,$1DD0,$1DD1,$080A                      ;
                dw $1F00,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$280A,$1F00,$1DD2                      ;
                dw $1DD1,$1DE4,$1DE5,$1DD2                      ;
                dw $1D82,$1D83,$1D84,$1D85                      ;
                dw $1D80,$1D81,$1DD1,$1DE4                      ;
                dw $1DE5,$1DD2,$1DD1,$480A                      ;
                dw $1F00,$1DE2,$1DE1,$1DF4                      ;
                dw $1DF5,$1DE2,$1DDC,$1DDD                      ;
                dw $1DDE,$1DDF,$1D90,$1D91                      ;
                dw $1DE1,$1DF4,$1DF5,$1DE2                      ;
                dw $1DE1,$680A,$1F00,$1DD2                      ;
                dw $1DD1,$1DD8,$1DE8,$1DD2                      ;
                dw $1DEC,$1DED,$1DEE,$1DEF                      ;
                dw $1DA0,$1DA1,$1DD1,$1DD8                      ;
                dw $1DE8,$1DD2,$1DD1,$880A                      ;
                dw $1F00,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$1DE2,$1DFC,$1DFD                      ;
                dw $1DFE,$1DFF,$1DB0,$1DB1                      ;
                dw $1DE1,$1DE2,$1DE1,$1DE2                      ;
                dw $1DE1,$A80A,$1F00,$1DF0                      ;
                dw $1DF1,$1DF2,$1DF3,$1DF0                      ;
                dw $1DF1,$1DF2,$1DF3,$1DF0                      ;
                dw $1DF1,$1DF2,$1DF3,$1DF0                      ;
                dw $1DF1,$1DF2,$1DF3,$0A02                      ;
                dw $0B80,$08B8,$08BA,$08BA                      ;
                dw $08BC,$0CBE,$0CBE,$0B02                      ;
                dw $0B80,$08B9,$08BB,$08BB                      ;
                dw $08BD,$0CBF,$0CBF,$9202                      ;
                dw $0700,$1214,$1215,$1214                      ;
                dw $1215,$B202,$0700,$1216                      ;
                dw $1217,$1216,$1217,$C802                      ;
                dw $1F00,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$E802,$1F00,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$FFFF                      ;
                dw $EB01,$0300,$10D6,$10D7                      ;
                dw $0A02,$0700,$10D8,$10D9                      ;
                dw $10DA,$10DB,$2A02,$0700                      ;
                dw $10DC,$10DD,$10DE,$10DF                      ;
                dw $5302,$0700,$1501,$1502                      ;
                dw $1503,$1504,$7202,$0B00                      ;
                dw $1510,$1511,$150A,$1505                      ;
                dw $1514,$1515,$9102,$0D00                      ;
                dw $1506,$1516,$150A,$1512                      ;
                dw $150A,$150A,$150D,$B002                      ;
                dw $0F00,$1506,$1516,$150A                      ;
                dw $150A,$9512,$1519,$150A                      ;
                dw $151D,$C802,$1F00,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$E802                      ;
                dw $1F00,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$FFFF,$C801,$1E40                      ;
                dw $0C47,$CD01,$0700,$0868                      ;
                dw $0869,$0897,$086A,$E801                      ;
                dw $0D80,$0C45,$0C47,$0C45                      ;
                dw $0C47,$0C45,$0C47,$0C45                      ;
                dw $E901,$1D00,$1D32,$1D33                      ;
                dw $1D30,$1D31,$8864,$8865                      ;
                dw $8866,$8867,$1D32,$1D33                      ;
                dw $1D30,$1D31,$1D32,$1D33                      ;
                dw $1D30,$0902,$1D00,$1D02                      ;
                dw $1D03,$1D00,$1D01,$8860                      ;
                dw $8861,$8862,$8863,$1D02                      ;
                dw $1D03,$1D48,$1D49,$1D4A                      ;
                dw $1D4B,$1D00,$2902,$1D00                      ;
                dw $153A,$1D13,$1D10,$1D11                      ;
                dw $1D12,$1D13,$1D10,$1D11                      ;
                dw $1D12,$1D13,$1D58,$1D59                      ;
                dw $1D5A,$1D5B,$1D10,$4902                      ;
                dw $1D00,$1D22,$1D23,$1D20                      ;
                dw $1D21,$1D22,$1D23,$1D20                      ;
                dw $1D21,$1D22,$1D23,$1D68                      ;
                dw $1D69,$1D6A,$1D6B,$1D20                      ;
                dw $6902,$1D00,$1D32,$1D33                      ;
                dw $151D,$151D,$1D32,$1D33                      ;
                dw $1D30,$1D31,$1D32,$1D33                      ;
                dw $1D78,$1D79,$1D7A,$1D7B                      ;
                dw $1D30,$8902,$1D00,$1D02                      ;
                dw $1D03,$1528,$1529,$1D02                      ;
                dw $1D03,$1D00,$1D01,$1D02                      ;
                dw $1D03,$1D00,$1D01,$1D02                      ;
                dw $1D03,$1D00,$A902,$1D00                      ;
                dw $1D12,$1D13,$1D10,$1D11                      ;
                dw $1D12,$1D13,$1D10,$1D11                      ;
                dw $1D12,$1D13,$1D10,$1D11                      ;
                dw $1D12,$1D13,$1D10,$C802                      ;
                dw $1F00,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$E802,$1F00,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$FFFF                      ;
                dw $C801,$1F00,$09E6,$09E7                      ;
                dw $09E8,$09E9,$09E6,$09E7                      ;
                dw $09E8,$09E9,$09E6,$09E7                      ;
                dw $09E8,$09E9,$09E6,$09E7                      ;
                dw $09E8,$09E9,$E801,$1F00                      ;
                dw $09F6,$09F7,$09F8,$09F9                      ;
                dw $09F6,$09F7,$09F8,$09F9                      ;
                dw $09F6,$09F7,$09F8,$09F9                      ;
                dw $09F6,$09F7,$09F8,$09F9                      ;
                dw $080A,$1E40,$1534,$280A                      ;
                dw $1E40,$1534,$480A,$1E40                      ;
                dw $1534,$680A,$1E40,$1534                      ;
                dw $880A,$1E40,$1534,$A80A                      ;
                dw $1E40,$1534,$CB0A,$1840                      ;
                dw $1534,$EB0A,$0E40,$1534                      ;
                dw $0B0A,$0EC0,$1536,$0C0A                      ;
                dw $0EC0,$1537,$0D0A,$0EC0                      ;
                dw $1528,$130A,$0CC0,$1536                      ;
                dw $140A,$0CC0,$1537,$150A                      ;
                dw $0CC0,$1528,$C802,$1F00                      ;
                dw $09CA,$09CB,$09CA,$09C3                      ;
                dw $0024,$0024,$0024,$0024                      ;
                dw $09C0,$09CB,$09CA,$09C3                      ;
                dw $189B,$189C,$189B,$189C                      ;
                dw $E802,$1F00,$09DA,$09DB                      ;
                dw $09DA,$09D3,$18E0,$18E1                      ;
                dw $18E0,$18E1,$09D0,$09DB                      ;
                dw $09DA,$09D3,$189D,$189E                      ;
                dw $189D,$189E,$FFFF,$C809                      ;
                dw $1E40,$1534,$E809,$1E40                      ;
                dw $1534,$080A,$1E40,$1534                      ;
                dw $280A,$1E40,$1534,$480A                      ;
                dw $1E40,$1534,$680A,$1E40                      ;
                dw $1534,$880A,$1E40,$1534                      ;
                dw $A80A,$1E40,$1534,$CB0A                      ;
                dw $1840,$1534,$EB0A,$0E40                      ;
                dw $1534,$CE09,$09C0,$1536                      ;
                dw $CF09,$09C0,$1537,$6E0A                      ;
                dw $0300,$9526,$9527,$8D0A                      ;
                dw $0700,$9524,$9516,$9517                      ;
                dw $9518,$AD0A,$0700,$1532                      ;
                dw $1522,$1522,$1523,$D209                      ;
                dw $0B00,$1DA8,$1DA9,$1D8A                      ;
                dw $1D8B,$5DA9,$1DAC,$F209                      ;
                dw $0B00,$1DA8,$1DB9,$1DB9                      ;
                dw $1DB9,$1DBA,$1DAC,$120A                      ;
                dw $0B00,$1DA8,$1D89,$1D8A                      ;
                dw $1D8B,$5D89,$1D9C,$320A                      ;
                dw $0B00,$1DA8,$1D99,$1D9A                      ;
                dw $1D9B,$5D99,$1DAC,$520A                      ;
                dw $0B00,$1DA8,$1DA9,$1D8A                      ;
                dw $1D8B,$5DA9,$1DAC,$720A                      ;
                dw $0B00,$1DB8,$1DB9,$1DB9                      ;
                dw $1DB9,$1DB9,$1DBA,$E909                      ;
                dw $0700,$1DB0,$1DB1,$5DB1                      ;
                dw $5DB0,$090A,$0700,$1DB2                      ;
                dw $1CE8,$1CE9,$5DB2,$290A                      ;
                dw $0700,$1DB3,$1CEA,$1CEB                      ;
                dw $5DB3,$490A,$0700,$1D34                      ;
                dw $1D8E,$1D8F,$1D34,$C80A                      ;
                dw $1F00,$1510,$1511,$1510                      ;
                dw $1511,$1510,$1511,$1510                      ;
                dw $1511,$1510,$1511,$1510                      ;
                dw $1511,$1510,$1511,$1510                      ;
                dw $1511,$E80A,$1F00,$1520                      ;
                dw $1521,$1520,$1521,$1520                      ;
                dw $1521,$1520,$1521,$1520                      ;
                dw $1521,$1520,$1521,$1520                      ;
                dw $1521,$1520,$1521,$C802                      ;
                dw $1F00,$09CA,$09CB,$09CA                      ;
                dw $09C3,$0024,$0024,$0024                      ;
                dw $0024,$09C0,$09CB,$09CA                      ;
                dw $09C3,$189B,$189C,$189B                      ;
                dw $189C,$E802,$1F00,$09DA                      ;
                dw $09DB,$09DA,$09D3,$18E0                      ;
                dw $18E1,$18E0,$18E1,$09D0                      ;
                dw $09DB,$09DA,$09D3,$189D                      ;
                dw $189E,$189D,$189E,$FFFF                      ;
                dw $0802,$0B00,$186B,$182C                      ;
                dw $186C,$186D,$186E,$186F                      ;
                dw $2802,$0B00,$1870,$182D                      ;
                dw $1871,$1872,$1873,$1874                      ;
                dw $4A02,$0300,$1875,$1876                      ;
                dw $6A02,$09C0,$189F,$6B02                      ;
                dw $09C0,$589F,$5002,$0B00                      ;
                dw $186B,$182C,$186C,$186D                      ;
                dw $186E,$186F,$7002,$0B00                      ;
                dw $1870,$182D,$1871,$1872                      ;
                dw $1873,$1874,$9202,$0300                      ;
                dw $1875,$1876,$B202,$0300                      ;
                dw $189F,$589F,$C802,$1F00                      ;
                dw $186B,$182C,$186C,$186D                      ;
                dw $186E,$182C,$186C,$186D                      ;
                dw $186E,$182C,$186C,$186D                      ;
                dw $186E,$182C,$186C,$186F                      ;
                dw $E802,$1F00,$1870,$182D                      ;
                dw $1871,$1872,$1873,$182D                      ;
                dw $1871,$1872,$1873,$182D                      ;
                dw $1871,$1872,$1873,$182D                      ;
                dw $1873,$1874,$CA09,$0B00                      ;
                dw $1DCA,$1DCB,$1DCC,$1DCD                      ;
                dw $1DCE,$1DCF,$EA09,$0B00                      ;
                dw $1DDA,$1DDB,$1DDC,$1DDD                      ;
                dw $1DDE,$1DDF,$0C0A,$0B80                      ;
                dw $1DF2,$1DE2,$1DE2,$1DE2                      ;
                dw $1DE2,$1DE2,$0D0A,$0B80                      ;
                dw $1DF3,$1DE3,$1DE3,$1DE3                      ;
                dw $1DE3,$1DE3,$F109,$0B00                      ;
                dw $1DCA,$1DCB,$1DCC,$1DCD                      ;
                dw $1DCE,$1DCF,$110A,$0B00                      ;
                dw $1DDA,$1DDB,$1DDC,$1DDD                      ;
                dw $1DDE,$1DDF,$330A,$0B80                      ;
                dw $1DF2,$1DE2,$1DE2,$1DE2                      ;
                dw $1DE2,$1DE2,$340A,$0B80                      ;
                dw $1DF3,$1DE3,$1DE3,$1DE3                      ;
                dw $1DE3,$1DE3,$FFFF,$0802                      ;
                dw $0B00,$186B,$182C,$186C                      ;
                dw $186D,$186E,$186F,$2802                      ;
                dw $0B00,$1870,$182D,$1871                      ;
                dw $1872,$1873,$1874,$5002                      ;
                dw $0B00,$186B,$182C,$186C                      ;
                dw $186D,$186E,$186F,$7002                      ;
                dw $0B00,$1870,$182D,$1871                      ;
                dw $1872,$1873,$1874,$C802                      ;
                dw $1F00,$186B,$182C,$186C                      ;
                dw $186D,$186E,$182C,$186C                      ;
                dw $186D,$186E,$182C,$186C                      ;
                dw $186D,$186E,$182C,$186C                      ;
                dw $186F,$E802,$1F00,$1870                      ;
                dw $182D,$1871,$1872,$1873                      ;
                dw $182D,$1871,$1872,$1873                      ;
                dw $182D,$1871,$1872,$1873                      ;
                dw $182D,$1873,$1874,$CA09                      ;
                dw $0B00,$1DCA,$1DCB,$1DCC                      ;
                dw $1DCD,$1DCE,$1DCF,$EA09                      ;
                dw $0B00,$1DDA,$1DDB,$1DDC                      ;
                dw $1DDD,$1DDE,$1DDF,$0C0A                      ;
                dw $0B80,$1DF2,$1DE2,$1DE2                      ;
                dw $1DE2,$1DE2,$1DE2,$0D0A                      ;
                dw $0B80,$1DF3,$1DE3,$1DE3                      ;
                dw $1DE3,$1DE3,$1DE3,$F109                      ;
                dw $0B00,$1DCA,$1DCB,$1DCC                      ;
                dw $1DCD,$1DCE,$1DCF,$110A                      ;
                dw $0B00,$1DDA,$1DDB,$1DDC                      ;
                dw $1DDD,$1DDE,$1DDF,$330A                      ;
                dw $0B80,$1DF2,$1DE2,$1DE2                      ;
                dw $1DE2,$1DE2,$1DE2,$340A                      ;
                dw $0B80,$1DF3,$1DE3,$1DE3                      ;
                dw $1DE3,$1DE3,$1DE3,$FFFF                      ;
                dw $C802,$0300,$0CAB,$0CAD                      ;
                dw $E802,$0300,$0CAC,$0CAE                      ;
                dw $CA02,$1B40,$3221,$AA02                      ;
                dw $0100,$0881,$AB02,$1940                      ;
                dw $2A20,$0E0A,$0F80,$1DE0                      ;
                dw $1DF0,$1DC3,$1DD3,$1DE3                      ;
                dw $1DF3,$1DC1,$1DE2,$0F0A                      ;
                dw $0F80,$1DE1,$5DF0,$1DC4                      ;
                dw $1DD4,$1DE4,$1DF4,$1DD0                      ;
                dw $1DF2,$4D0A,$0100,$1DC2                      ;
                dw $500A,$0100,$1DC5,$CD0A                      ;
                dw $0100,$1DC0,$D00A,$0100                      ;
                dw $1DD1,$540A,$0B80,$15CA                      ;
                dw $15F1,$15C6,$15D6,$15E6                      ;
                dw $15F6,$550A,$0B80,$15CB                      ;
                dw $55F1,$15C7,$15D7,$15E7                      ;
                dw $15F7,$FFFF,$0902,$1300                      ;
                dw $104B,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$1050,$2902,$1300                      ;
                dw $104C,$104E,$104F,$104A                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104E,$1051,$4D02,$0780                      ;
                dw $1204,$1210,$1200,$1210                      ;
                dw $4E02,$0780,$1207,$1213                      ;
                dw $1203,$1213,$C802,$1F00                      ;
                dw $104B,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$1050                      ;
                dw $E802,$1F00,$104C,$104E                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104E,$1051,$EA09,$0100                      ;
                dw $1CC0,$F609,$0100,$1CC4                      ;
                dw $D509,$0100,$1CC1,$CF09                      ;
                dw $0100,$1CC6,$150A,$0100                      ;
                dw $1CC2,$710A,$0100,$1CC5                      ;
                dw $360A,$0100,$1CC5,$500A                      ;
                dw $0100,$1CC4,$540A,$0100                      ;
                dw $1CC7,$770A,$0100,$1CC3                      ;
                dw $6F0A,$0100,$1CC4,$930A                      ;
                dw $0100,$1CC2,$890A,$0100                      ;
                dw $1CC5,$6B0A,$0100,$1CC1                      ;
                dw $480A,$0100,$1CC0,$FFFF                      ;
                dw $0902,$1300,$104B,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$1050                      ;
                dw $2902,$1300,$104C,$104E                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104F,$104A,$104E,$1051                      ;
                dw $4D02,$0780,$1204,$1210                      ;
                dw $1200,$1210,$4E02,$0780                      ;
                dw $1207,$1213,$1203,$1213                      ;
                dw $C802,$1F00,$104B,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$1050,$E802,$1F00                      ;
                dw $104C,$104E,$104F,$104A                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104F,$104A,$104F,$104A                      ;
                dw $104F,$104A,$104E,$1051                      ;
                dw $FFFF,$0902,$1300,$104B                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $1050,$2902,$1300,$104C                      ;
                dw $104E,$104F,$104A,$104F                      ;
                dw $104A,$104F,$104A,$104E                      ;
                dw $1051,$4D02,$0780,$1204                      ;
                dw $1210,$1200,$1210,$4E02                      ;
                dw $0780,$1207,$1213,$1203                      ;
                dw $1213,$C802,$1F00,$104B                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$104D,$104D                      ;
                dw $104D,$104D,$1050,$E802                      ;
                dw $1F00,$104C,$104E,$104F                      ;
                dw $104A,$104F,$104A,$104F                      ;
                dw $104A,$104F,$104A,$104F                      ;
                dw $104A,$104F,$104A,$104E                      ;
                dw $1051,$680A,$1F00,$1DD4                      ;
                dw $1DD5,$1DC1,$1DC2,$1CCA                      ;
                dw $1CCB,$1CCA,$1CCB,$1CCA                      ;
                dw $1CCB,$1CCA,$1CCB,$1DC0                      ;
                dw $1DD1,$1DD2,$1DD3,$880A                      ;
                dw $1F00,$1DE8,$1DE9,$1DEA                      ;
                dw $1DEB,$1DE0,$1DE1,$1DE4                      ;
                dw $1DE5,$1DE0,$1DE1,$1DE4                      ;
                dw $1DE5,$1DE8,$1DE9,$1DEA                      ;
                dw $1DEB,$A80A,$1F00,$1DF8                      ;
                dw $1DF9,$1DFA,$1DFB,$1DF0                      ;
                dw $1DF1,$1DF4,$1DF5,$1DF0                      ;
                dw $1DF1,$1DF4,$1DF5,$1DF8                      ;
                dw $1DF9,$1DFA,$1DFB,$C80A                      ;
                dw $1F00,$1DC8,$1DC9,$1DCA                      ;
                dw $1DCB,$1DE2,$1DE3,$1DE6                      ;
                dw $1DE7,$1DE2,$1DE3,$1DE6                      ;
                dw $1DE7,$1DC8,$1DC9,$1DCA                      ;
                dw $1DCB,$E80A,$1F00,$1DD8                      ;
                dw $1DD9,$1DDA,$1DDB,$1DF2                      ;
                dw $1DF3,$1DF6,$1DF7,$1DF2                      ;
                dw $1DF3,$1DF6,$1DF7,$1DD8                      ;
                dw $1DD9,$1DDA,$1DDB,$FFFF                      ;
                dw $8A02,$0B00,$1214,$1215                      ;
                dw $1214,$1215,$1214,$1215                      ;
                dw $AA02,$0B00,$1216,$1217                      ;
                dw $1216,$1217,$1216,$1217                      ;
                dw $4C02,$0780,$08B8,$08BC                      ;
                dw $0CBE,$0CBE,$4D02,$0780                      ;
                dw $08B9,$08BD,$0CBF,$0CBF                      ;
                dw $F301,$0300,$10D6,$10D7                      ;
                dw $1202,$0700,$10D8,$10D9                      ;
                dw $10DA,$10DB,$3202,$0700                      ;
                dw $10DC,$10DD,$10DE,$10DF                      ;
                dw $C802,$1F00,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$0A08,$0A09                      ;
                dw $0A08,$0A09,$E802,$1F00                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $0A18,$0A19,$0A18,$0A19                      ;
                dw $FFFF,$0A02,$0B80,$08B8                      ;
                dw $08BA,$08BA,$08BC,$0CBE                      ;
                dw $0CBE,$0B02,$0B80,$08B9                      ;
                dw $08BB,$08BB,$08BD,$0CBF                      ;
                dw $0CBF,$9202,$0700,$1214                      ;
                dw $1215,$1214,$1215,$B202                      ;
                dw $0700,$1216,$1217,$1216                      ;
                dw $1217,$C802,$1F00,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$0A08                      ;
                dw $0A09,$0A08,$0A09,$E802                      ;
                dw $1F00,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$0A18,$0A19,$0A18                      ;
                dw $0A19,$FFFF                                  ;

DATA_04AD6F:    dw $EB01,$0240,$0024,$0A02                      ;
                dw $0640,$0024,$2A02,$0640                      ;
                dw $0024,$5302,$0640,$0024                      ;
                dw $7202,$0A40,$0024,$9102                      ;
                dw $0C40,$0024,$B002,$0E40                      ;
                dw $0024,$FFFF                                  ;

DATA_04AD9B:    dw $EB09,$0900,$1CC0,$0024                      ;
                dw $1CC5,$0024,$1CC3,$0C0A                      ;
                dw $0500,$1CC2,$0024,$1CC1                      ;
                dw $290A,$0100,$1CC2,$4B0A                      ;
                dw $0100,$1CC1,$140A,$0100                      ;
                dw $1CC5,$530A,$0700,$1CC3                      ;
                dw $0024,$1CC4,$0024,$680A                      ;
                dw $1F00,$15C6,$15C7,$15C8                      ;
                dw $15C9,$15CA,$15CB,$1CC6                      ;
                dw $15CD,$15C6,$15C7,$15C8                      ;
                dw $15C9,$15CA,$15CB,$15CC                      ;
                dw $15CD,$880A,$1F00,$15D6                      ;
                dw $15D7,$15D8,$15D9,$15DA                      ;
                dw $15DB,$15DC,$15DD,$15D6                      ;
                dw $15D7,$15D8,$15D9,$15DA                      ;
                dw $15DB,$15DC,$15DD,$A80A                      ;
                dw $1F00,$15E6,$15E7,$15E8                      ;
                dw $15E9,$15EA,$15EB,$15EC                      ;
                dw $15ED,$15E6,$15E7,$15E8                      ;
                dw $15E9,$15EA,$15EB,$15EC                      ;
                dw $15ED,$FFFF                                  ;

DATA_04AE3F:    dw $0000,$0020,$0040,$0060                      ;
                dw $0080,$00A0,$00C0,$00E0                      ;
                dw $0100,$0120,$0140,$0160                      ;
                dw $0180,$01A0,$01C0,$01E0                      ;
                dw $0200,$0220,$0240,$0260                      ;
                dw $0280,$02A0,$02C0,$02E0                      ;
                dw $0300,$0320,$0340,$03A0                      ;
                dw $03E0,$03C0,$03E0,$0420                      ;
                dw $0360,$0380,$02E0,$02E0                      ;
                dw $02E0,$02E0,$0500,$0520                      ;
                dw $0540,$0560,$0580,$05C0                      ;
                dw $05E0,$0600,$0620,$0640                      ;
                dw $0660,$0740,$0780,$07A0                      ;
                dw $0460,$04A0,$04C0,$04E0                      ;
                dw $05A0,$0680,$06A0,$06C0                      ;
                dw $06E0,$0700,$0400,$0720                      ;
                dw $0440,$0480                                  ;

DATA_04AEC3:    dw $42DD,$7FFF,$1084,$3800                      ;THIS TABLE AND THE NEXT ONE LOOKS LIKE PALETTE DATA
                dw $7708,$035F,$0259,$3800                      ;

DATA_04AED3:    dw $7708,$7FFF,$73B9,$6335                      ;
                dw $7708,$7FFF,$722B,$65C8                      ;
                dw $7708,$7FFF,$1084,$1BDF                      ;
                dw $027F,$0139,$1ADA,$0DF3                      ;
                dw $050D,$4F7F,$3298,$15B1                      ;
                dw $3FFF,$45BF,$20D4,$2D3A                      ;
                dw $7BAF,$7FFF,$1084,$57F3                      ;
                dw $0340,$01A0,$0000,$0000                      ;
                dw $0000,$04D0,$0554,$11D8                      ;
                dw $125C,$2BAA,$3800,$0A62                      ;
                dw $7BAF,$7FFF,$0842,$2B30                      ;
                dw $14B8,$0D3F,$029F,$035F                      ;
                dw $0008,$008E,$1575,$1A3A                      ;
                dw $3F5F,$5AD6,$2529,$3DEF                      ;
                dw $7BAF,$7FFF,$1084,$7FB8                      ;
                dw $72B0,$32FC,$2256,$11CF                      ;
                dw $054B,$09E6,$1AAB,$2B30                      ;
                dw $3BB4,$287F,$000E,$0015                      ;
                dw $7BAF,$376D,$1084,$22A9                      ;
                dw $219B,$1538,$04B4,$0470                      ;
                dw $040C,$21C2,$3246,$3EA9                      ;
                dw $4B0C,$534E,$01C3,$1646                      ;
                dw $772F,$7FFF,$1084,$729F                      ;
                dw $51B8,$30B0,$7E97,$6DB0                      ;
                dw $54EA,$294A,$4210,$5EF7                      ;
                dw $6F7B,$571F,$251C,$3E3F                      ;
                dw $7BAF,$7FFF,$1084,$778C                      ;
                dw $6F4A,$6708,$5EC6,$5684                      ;
                dw $4E42,$21C2,$3246,$42CA                      ;
                dw $4F2D,$6372,$1084,$1084                      ;
                dw $45BC,$7FFF,$14A5,$01A5                      ;
                dw $0249,$02CD,$4631,$5AD6                      ;
                dw $0000,$0351,$0019,$011F                      ;
                dw $061F,$129F,$017A,$0113                      ;
                dw $45BC,$7FFF,$14A5,$008D                      ;
                dw $0112,$19D9,$2A9E,$36FF                      ;
                dw $0000,$7FFF,$0813,$2D9B                      ;
                dw $465F,$539F,$1B9F,$1A5F                      ;
                dw $45BC,$7FFF,$14A5,$013B                      ;
                dw $027F,$179F,$0135,$265E                      ;
                dw $0000,$0C9B,$0135,$261D                      ;
                dw $42DF,$6ADF,$4A1D,$28FA                      ;
                dw $734E,$7FFF,$14A5,$3D84                      ;
                dw $5229,$27BF,$31BB,$3ABF                      ;
                dw $0000,$152F,$355D,$525F                      ;
                dw $169B,$1C9F,$0C19,$0C19                      ;
                dw $45BC,$7FFF,$14A5,$013B                      ;
                dw $027F,$179F,$0135,$265E                      ;
                dw $0000,$0C9B,$0220,$0EE0                      ;
                dw $23A0,$6ADF,$4A1D,$28FA                      ;
                dw $45BC,$7FFF,$14A5,$0203                      ;
                dw $0F0A,$2BF1,$0135,$265E                      ;
                dw $0000,$3F5F,$294A,$4631                      ;
                dw $6318,$1A3A,$1575,$008E                      ;
                dw $45BC,$7FFF,$14A5,$0055                      ;
                dw $0C3E,$3D9F,$0135,$265E                      ;
                dw $0000,$42DF,$4025,$74D2                      ;
                dw $7EB2,$261D,$1557,$00AF                      ;
                dw $45BC,$7FFF,$14A5,$0111                      ;
                dw $0DB9,$22DD,$2D9C,$3ABF                      ;
                dw $0000,$0000,$14EC,$1DD4                      ;
                dw $369A,$20BC,$1096,$000F                      ;
                dw $7F92,$7FFF,$1084,$5B0C                      ;
                dw $568A,$5208,$4DA6,$4944                      ;
                dw $44E2,$0887,$14EA,$214D                      ;
                dw $298F,$2936,$0831,$1CD3                      ;
                dw $7F92,$7FFF,$1084,$722B                      ;
                dw $65C8,$5D86,$7F36,$6DB0                      ;
                dw $54EA,$294A,$4210,$5EF7                      ;
                dw $6F7B,$52FF,$35BC,$469C                      ;
                dw $7F92,$7FFF,$0000,$0A1F                      ;
                dw $011D,$0013,$0000,$0000                      ;
                dw $0000,$0887,$14EA,$214D                      ;
                dw $298F,$4280,$2940,$35E0                      ;
                dw $772F,$7FFF,$1084,$57F0                      ;
                dw $0340,$01A0,$1BDF,$027F                      ;
                dw $0139,$3CE1,$5186,$662B                      ;
                dw $7AD0,$2BAA,$3800,$0A62                      ;
                dw $772F,$7FFF,$1084,$0000                      ;
                dw $0000,$0000,$1ADA,$0DF3                      ;
                dw $050D,$3961,$4E06,$62AB                      ;
                dw $7750,$5AD6,$2529,$3DEF                      ;
                dw $772F,$7FFF,$0000,$264E                      ;
                dw $49EC,$41AA,$3968,$3126                      ;
                dw $28E4,$1C41,$28A3,$3506                      ;
                dw $3D48,$0525,$0D88,$19EB                      ;
                dw $772F,$6739,$0000,$2CC5                      ;
                dw $3D89,$3DCD,$4E51,$2EF8                      ;
                dw $1E74,$1C41,$28A3,$3506                      ;
                dw $3D48,$4210,$2108,$318C                      ;
                dw $45BC,$7FFF,$14A5,$2CE0                      ;
                dw $41A3,$5648,$6AED,$7F71                      ;
                dw $0000,$7FFF,$3013,$4D9B                      ;
                dw $625F,$539F,$1B9F,$1A5F                      ;
                dw $45BC,$7FFF,$14A5,$1E22                      ;
                dw $2F01,$3FE0,$0135,$1A9F                      ;
                dw $0000,$7750,$294A,$4631                      ;
                dw $6318,$62AB,$4E06,$3961                      ;
                dw $772F,$7FFF,$1084,$3B1F                      ;
                dw $035F,$029F,$11D7,$0153                      ;
                dw $00CF,$0000,$0000,$0000                      ;
                dw $0000,$0000,$0000,$0000                      ;
                dw $772F,$7FFF,$14A5,$05BF                      ;
                dw $001E,$0017,$46BF,$365D                      ;
                dw $25BB,$04EF,$0D73,$4F7F                      ;
                dw $7F0F,$0000,$0000,$0000                      ;
                dw $45BC,$7FFF,$14C5,$256D                      ;
                dw $3A12,$4A96,$5B1A,$6B9E                      ;
                dw $0000,$7FFF,$210E,$35B7                      ;
                dw $4E79,$539F,$1B9F,$1A5F                      ;
                dw $45BC,$7FFF,$14A5,$1E22                      ;
                dw $2F01,$3FE0,$0135,$1A9F                      ;
                dw $0000,$5B1A,$294A,$4631                      ;
                dw $6318,$4A96,$3A12,$256D                      ;
                dw $7708,$7FFF,$1084,$57F3                      ;
                dw $0340,$01A0,$0000,$0000                      ;
                dw $0000,$1D28,$2DAC,$3E30                      ;
                dw $4EB4,$2BAA,$3800,$0A62                      ;
                dw $7708,$15EF,$114C,$012E                      ;
                dw $00EC,$00AA,$090A,$1D63                      ;
                dw $1521,$0864,$10A6,$18E8                      ;
                dw $212A,$296C,$31AE,$39F0                      ;
                dw $7708,$7FFF,$1084,$097F                      ;
                dw $005A,$000F,$7E97,$6DB0                      ;
                dw $54EA,$256D,$3A12,$4A96                      ;
                dw $5B1A,$571F,$251C,$3E3F                      ;
                dw $7BAF,$7FFF,$1084,$0000                      ;
                dw $0000,$0000,$0000,$0000                      ;
                dw $0000,$294A,$4210,$5EF7                      ;
                dw $6F7B,$5AD6,$2529,$3DEF                      ;
                dw $7708,$7FFF,$3DAD,$314A                      ;
                dw $24E7,$01F6,$0192,$012F                      ;
                dw $00AC,$0864,$10A6,$18E8                      ;
                dw $212A,$296C,$0088,$00CA                      ;
                dw $7BAF,$7FFF,$0842,$2B30                      ;
                dw $14B8,$0D3F,$029F,$035F                      ;
                dw $0008,$008E,$1575,$1A3A                      ;
                dw $3F5F,$6F7B,$5AD6,$3DEF                      ;
                dw $7708,$7FFF,$1084,$77BD                      ;
                dw $5EF7,$3DEF,$1BDF,$027F                      ;
                dw $0139,$0492,$0D17,$25DD                      ;
                dw $3A7F,$6F7B,$3800,$5294                      ;
                dw $3908,$7FFF,$0842,$2B30                      ;
                dw $14B8,$0D3F,$029F,$035F                      ;
                dw $0008,$008E,$1575,$1A3A                      ;
                dw $3F5F,$6F7B,$5AD6,$3DEF                      ;
                dw $7708,$7FFF,$1084,$77BD                      ;
                dw $5EF7,$3DEF,$1BDF,$027F                      ;
                dw $0139,$0492,$0D17,$25DD                      ;
                dw $3A7F,$6F7B,$3800,$5294                      ;
                dw $3908,$4D4B,$18C6,$4509                      ;
                dw $4D2D,$44EB,$3CA9,$7FFF                      ;
                dw $73B9,$21C2,$3246,$42CA                      ;
                dw $4F2D,$6372,$30C3,$3904                      ;
                dw $3C63,$7F7B,$7E73,$5D6B                      ;
                dw $6FFB,$4FF3,$2EEB,$0DE3                      ;
                dw $3FFF,$1EF7,$0A52,$01CE                      ;
                dw $6F7F,$4E7F,$2D77,$0C75                      ;
                dw $7708,$7FFF,$1084,$57F3                      ;
                dw $0340,$01A0,$1BDF,$027F                      ;
                dw $0139,$04D0,$0554,$11D8                      ;
                dw $125C,$2BAA,$3800,$0A62                      ;
                dw $7708,$7FFF,$1084,$0000                      ;
                dw $0000,$0000,$1ADA,$0DF3                      ;
                dw $050D,$008E,$1575,$1A3A                      ;
                dw $3F5F,$5AD6,$2529,$3DEF                      ;
                dw $7708,$7FFF,$1084,$7FB8                      ;
                dw $72B0,$32FC,$2256,$11CF                      ;
                dw $054B,$5AD6,$6739,$739C                      ;
                dw $7FFF,$287F,$000E,$0015                      ;
                dw $7BAF,$7FFF,$1084,$5B5B                      ;
                dw $46D7,$435F,$32DF,$225B                      ;
                dw $11D7,$01B3,$0A37,$1ABB                      ;
                dw $2F5F,$1D3C,$0034,$0CB8                      ;
                dw $7BAF,$7FFF,$1CE7,$4EFF                      ;
                dw $42BF,$53FF,$479D,$3B3A                      ;
                dw $2ED7,$2E7E,$3ADF,$473F                      ;
                dw $4B9F,$0000,$0000,$0000                      ;
                dw $7BAF,$7F38,$216D,$7FBF                      ;
                dw $7F38,$5B3B,$4AB7,$3A33                      ;
                dw $29AF,$2A13,$3A97,$4B1B                      ;
                dw $5B9E,$76B4,$69C9,$7230                      ;
                dw $7BAF,$7FFF,$1084,$2B96                      ;
                dw $1713,$3B9D,$12F8,$0A74                      ;
                dw $01F0,$2A03,$3A87,$4B0B                      ;
                dw $576E,$6BB3,$020B,$028F                      ;
                dw $7BAF,$130F,$05C5,$0A8B                      ;
                dw $01F8,$0172,$010D,$7FFF                      ;
                dw $73B9,$21C2,$3246,$3EA9                      ;
                dw $4B0C,$5FB1,$0589,$0A29                      ;
                dw $7BAF,$7FFF,$1084,$7FFF                      ;
                dw $6FD9,$7FFF,$777B,$66F7                      ;
                dw $5673,$4E7F,$5EFF,$6F7F                      ;
                dw $7FFF,$6372,$4ED1,$5F55                      ;
                dw $7BAF,$7FFF,$1907,$5B57                      ;
                dw $577C,$46F8,$3674,$25F0                      ;
                dw $156C,$296D,$39F1,$4A75                      ;
                dw $5AF9,$6B7D,$3A4F,$4AD3                      ;
                dw $7708,$15EF,$114C,$012E                      ;
                dw $00EC,$00AA,$090A,$1D63                      ;
                dw $1521,$0C63,$14A3,$1CE5                      ;
                dw $2527,$2D69,$35AB,$3DED                      ;
                dw $7708,$0C63,$1CE5,$2D69                      ;
                dw $2527,$1D0B,$18EA,$10A8                      ;
                dw $0866,$0C63,$14A3,$1CE5                      ;
                dw $2527,$2D69,$00D6,$015A                      ;
                dw $7F92,$7FFF,$0842,$4631                      ;
                dw $3DEF,$35AD,$2D6B,$2529                      ;
                dw $1CE7,$10EA,$1D4D,$29B0                      ;
                dw $3613,$3208,$1942,$25A5                      ;
                dw $7F92,$7FFF,$29F8,$67FF                      ;
                dw $4BDF,$3B7E,$331B,$26B8                      ;
                dw $1A55,$2E79,$3ADC,$473F                      ;
                dw $539F,$4F1F,$365B,$42BE                      ;
                dw $7F92,$7FFF,$29F8,$6BFF                      ;
                dw $5FFC,$53B9,$4756,$3AF3                      ;
                dw $2E90,$2E79,$3ADC,$473F                      ;
                dw $539F,$4F1F,$365B,$42BE                      ;
                dw $7BAF,$7FFF,$1084,$29F9                      ;
                dw $1975,$1A98,$0E15,$0191                      ;
                dw $010D,$184D,$20D1,$2955                      ;
                dw $31D9,$3A5D,$006E,$08F1                      ;
                dw $7BAF,$02D4,$1084,$7FFF                      ;
                dw $3E99,$2E15,$1D91,$092E                      ;
                dw $00AA,$21C2,$3246,$3EA9                      ;
                dw $4B0C,$534E,$6739,$739C                      ;
                dw $45BC,$7FFF,$0C63,$40C0                      ;
                dw $5565,$65E9,$4631,$5AD6                      ;
                dw $0000,$766D,$0012,$101A                      ;
                dw $311F,$367A,$21D5,$0D30                      ;
                dw $7708,$7FFF,$1084,$53BF                      ;
                dw $033E,$025C,$4A5F,$315F                      ;
                dw $001D,$004A,$04B2,$0A1C                      ;
                dw $133D,$677F,$017C,$0019                      ;
                dw $1084,$7FFF,$04CA,$0155                      ;
                dw $1A1C,$1B3E,$2DFF,$471F                      ;
                dw $56B5,$1173,$1242,$3329                      ;
                dw $1C9F,$0C18,$79E6,$5144                      ;
                dw $7BAF,$7FFF,$1084,$53BF                      ;
                dw $033E,$025C,$0000,$0000                      ;
                dw $0000,$1058,$015F,$0E1F                      ;
                dw $140E,$02BF,$017C,$0019                      ;
                dw $1084,$7FFF,$0C63,$0113                      ;
                dw $11DA,$1B3E,$2DFF,$471F                      ;
                dw $5EF7,$152F,$0012,$0C19                      ;
                dw $1C9F,$762D,$7189,$5905                      ;

DATA_04B683:    dw $04D0,$20B1,$23C1,$14D1                      ;
                dw $0492,$23A2,$14B2,$47C2                      ;
                dw $2083,$1493,$47A3,$0474                      ;
                dw $1484,$4794,$0455,$0965                      ;
                dw $0675,$4785,$17D5,$2046                      ;
                dw $1456,$0C66,$1476,$4786                      ;
                dw $17C6,$14D6,$2147,$0157                      ;
                dw $4767,$10B7,$14C7,$2248                      ;
                dw $0858,$1A68,$4778,$13B8                      ;
                dw $1559,$1B69,$4779,$10A9                      ;
                dw $14B9,$204A,$145A,$476A                      ;
                dw $18AA,$224B,$085B,$476B                      ;
                dw $109B,$14AB,$065C,$476C                      ;
                dw $178C,$029C,$055D,$086D                      ;
                dw $477D,$198D,$039D,$1AAD                      ;
                dw $08BD,$226E,$087E,$478E                      ;
                dw $199E,$2FAE,$11BE,$08CE                      ;
                dw $217F,$478F,$19CF,$A060                      ;
                dw $1470,$4780,$2161,$2C71                      ;
                dw $4781,$2162,$2D72,$4782                      ;
                dw $0563,$0873,$1A83,$4793                      ;
                dw $2274,$0B84,$2294,$08A4                      ;
                dw $47B4,$21A5,$47B5,$05A6                      ;
                dw $08B6,$47C6,$22B7,$08C7                      ;
                dw $07D7,$2018,$2928,$22C8                      ;
                dw $08D8,$2009,$1419,$0C29                      ;
                dw $0939,$05D9,$210A,$2C1A                      ;
                dw $072A,$0A3A,$210B,$2D1B                      ;
                dw $072B,$0A3B,$220C,$081C                      ;
                dw $1A2C,$2B3C,$221D,$0B2D                      ;
                dw $A0D0,$20A1,$63B1,$14D1                      ;
                dw $0482,$2392,$14A2,$47B2                      ;
                dw $0433,$2343,$0953,$2063                      ;
                dw $2373,$1483,$4793,$2024                      ;
                dw $0234,$4744,$0C54,$1464                      ;
                dw $2225,$0335,$4745,$0536                      ;
                dw $0846,$4756,$2037,$1947                      ;
                dw $0857,$4767,$0428,$1438                      ;
                dw $4748,$2229,$0839,$4749                      ;
                dw $053A,$104A,$145A,$476A                      ;
                dw $1A8A,$109A,$14AA,$203B                      ;
                dw $144B,$475B,$1A7B,$0B8B                      ;
                dw $219B,$109C,$213C,$014C                      ;
                dw $475C,$0A7C,$008C,$059C                      ;
                dw $08AC,$1ABC,$08CC,$053D                      ;
                dw $084D,$075D,$1A6D,$0B7D                      ;
                dw $22AD,$0BBD,$06CD,$1ADD                      ;
                dw $224E,$245E,$0B6E,$05CE                      ;
                dw $0BDE,$84B0,$23C0,$29D0                      ;
                dw $20A1,$47B1,$2082,$0F92                      ;
                dw $14A2,$47B2,$2013,$0923                      ;
                dw $0473,$0283,$4793,$2004                      ;
                dw $1414,$0724,$2934,$1574                      ;
                dw $0384,$4794,$2105,$0115                      ;
                dw $0725,$0A35,$0465,$4775                      ;
                dw $1885,$0506,$0816,$1A26                      ;
                dw $0B36,$0666,$1076,$1186                      ;
                dw $0896,$47A6,$2217,$0B27                      ;
                dw $2167,$1877,$4787,$2058                      ;
                dw $1468,$1978,$0888,$4798                      ;
                dw $1AA8,$08B8,$0439,$0F49                      ;
                dw $1459,$4769,$1189,$1F99                      ;
                dw $1BA9,$19B9,$08C9,$272A                      ;
                dw $283A,$474A,$08AA,$13CA                      ;
                dw $223B,$084B,$475B,$1A6B                      ;
                dw $087B,$11AB,$1CBB,$08CB                      ;
                dw $054C,$245C,$0B6C,$057C                      ;
                dw $088C,$479C,$19CC,$228D                      ;
                dw $089D,$47AD,$059E,$08AE                      ;
                dw $1ABE,$08CE,$07DE,$22AF                      ;
                dw $0BBF,$05CF,$0BDF,$A0D0                      ;
                dw $2091,$29A1,$20C1,$14D1                      ;
                dw $0472,$2382,$1492,$0CA2                      ;
                dw $0FB2,$14C2,$07D2,$2043                      ;
                dw $0953,$2063,$1473,$4783                      ;
                dw $0434,$1444,$0C54,$1D64                      ;
                dw $1474,$4784,$2025,$1435                      ;
                dw $2C45,$4755,$2226,$0836                      ;
                dw $2D46,$4756,$0537,$0847                      ;
                dw $4757,$1797,$2EA7,$2248                      ;
                dw $0858,$1A68,$4778,$1088                      ;
                dw $1498,$0CA8,$1559,$1B69                      ;
                dw $4779,$1889,$0199,$204A                      ;
                dw $145A,$476A,$198A,$089A                      ;
                dw $1AAA,$214B,$015B,$476B                      ;
                dw $199B,$1BAB,$054C,$085C                      ;
                dw $476C,$225D,$256D,$287D                      ;
                dw $478D,$227E,$088E,$1A9E                      ;
                dw $08AE,$07BE,$1ACE,$08DE                      ;
                dw $058F,$0B9F,$05AF,$24BF                      ;
                dw $0BCF,$05DF,$84A1,$09B1                      ;
                dw $20D1,$0402,$2312,$2922                      ;
                dw $2092,$14A2,$0CB2,$0FC2                      ;
                dw $14D2,$2103,$2C13,$0A23                      ;
                dw $2063,$2373,$2683,$2893                      ;
                dw $01A3,$47B3,$2104,$2D14                      ;
                dw $0A24,$2054,$1464,$4774                      ;
                dw $1194,$08A4,$0505,$2415                      ;
                dw $0B25,$2155,$0165,$4775                      ;
                dw $2256,$0866,$4776,$1786                      ;
                dw $1496,$0567,$0877,$1987                      ;
                dw $0897,$47A7,$2068,$1478                      ;
                dw $4788,$1198,$08A8,$0459                      ;
                dw $1469,$2C79,$4789,$18A9                      ;
                dw $225A,$086A,$2D7A,$478A                      ;
                dw $19AA,$08BA,$226B,$087B                      ;
                dw $478B,$11BB,$1BCB,$08DB                      ;
                dw $227C,$088C,$479C,$1AAC                      ;
                dw $08BC,$19DC,$058D,$249D                      ;
                dw $0BAD,$05BD,$08CD,$07DD                      ;
                dw $22CE,$08DE,$22DF,$A0D0                      ;
                dw $04B1,$0FC1,$14D1,$20A2                      ;
                dw $14B2,$47C2,$0493,$47A3                      ;
                dw $2194,$01A4,$47B4,$2295                      ;
                dw $08A5,$47B5,$22A6,$08B6                      ;
                dw $47C6,$0477,$0987,$15B7                      ;
                dw $08C7,$07D7,$2068,$1478                      ;
                dw $0C88,$0998,$20A8,$14B8                      ;
                dw $19C8,$08D8,$2049,$0F59                      ;
                dw $1469,$4779,$0C99,$14A9                      ;
                dw $043A,$144A,$475A,$063B                      ;
                dw $474B,$202C,$143C,$2C4C                      ;
                dw $475C,$222D,$083D,$2D4D                      ;
                dw $475D,$1A7D,$088D,$053E                      ;
                dw $474E,$1A6E,$0B7E,$158E                      ;
                dw $089E,$224F,$085F,$0C6F                      ;
                dw $237F,$148F,$199F,$08AF                      ;
                dw $47BF,$A040,$1450,$4760                      ;
                dw $19A0,$1CB0,$08C0,$07D0                      ;
                dw $2031,$1441,$4751,$2132                      ;
                dw $4742,$0152,$2233,$0843                      ;
                dw $4753,$0544,$0854,$4764                      ;
                dw $2045,$1455,$4765,$0436                      ;
                dw $0E46,$1456,$4766,$1776                      ;
                dw $1486,$2027,$4737,$1067                      ;
                dw $1477,$0528,$2438,$0848                      ;
                dw $4758,$1868,$0549,$1059                      ;
                dw $1469,$2C79,$4789,$225A                      ;
                dw $086A,$2D7A,$478A,$056B                      ;
                dw $087B,$478B,$227C,$088C                      ;
                dw $1A9C,$24AC,$08BC,$47CC                      ;
                dw $058D,$0B9D,$22BD,$08CD                      ;
                dw $07DD,$05CE,$08DE,$22DF                      ;
                dw $A0D2,$2053,$0963,$04C3                      ;
                dw $14D3,$0444,$1454,$0C64                      ;
                dw $2374,$0984,$0494,$09A4                      ;
                dw $05C4,$08D4,$2035,$1445                      ;
                dw $4755,$1075,$0E85,$1495                      ;
                dw $0CA5,$29B5,$20C5,$14D5                      ;
                dw $2136,$4746,$1476,$0CB6                      ;
                dw $14C6,$2027,$4737,$0157                      ;
                dw $0528,$0838,$4748,$10A8                      ;
                dw $2EB8,$2239,$0849,$1A59                      ;
                dw $0869,$4779,$1799,$14A9                      ;
                dw $0CB9,$054A,$0B5A,$226A                      ;
                dw $087A,$178A,$149A,$47AA                      ;
                dw $046B,$147B,$198B,$089B                      ;
                dw $47AB,$056C,$247C,$178C                      ;
                dw $149C,$47AC,$047D,$148D                      ;
                dw $479D,$217E,$478E,$2C9E                      ;
                dw $217F,$478F,$2D9F,$8570                      ;
                dw $0880,$4790,$2071,$1981                      ;
                dw $0891,$1AA1,$08B1,$47C1                      ;
                dw $0452,$0F62,$1472,$4782                      ;
                dw $1992,$1BA2,$19B2,$08C2                      ;
                dw $2043,$0253,$4763,$19C3                      ;
                dw $08D3,$0544,$0354,$4764                      ;
                dw $19D4,$2255,$1B65,$4775                      ;
                dw $0566,$0876,$4786,$2277                      ;
                dw $0887,$1A97,$08A7,$47B7                      ;
                dw $0588,$0B98,$05A8,$08B8                      ;
                dw $47C8,$22B9,$08C9,$07D9                      ;
                dw $05CA,$0BDA,$8420,$2330                      ;
                dw $0940,$2011,$1421,$0731                      ;
                dw $0C41,$0951,$2112,$0122                      ;
                dw $0732,$0742,$0A52,$0513                      ;
                dw $0823,$0733,$0743,$0B53                      ;
                dw $04A3,$23B3,$09C3,$2224                      ;
                dw $2434,$0B44,$2094,$14A4                      ;
                dw $07B4,$17C4,$0FD4,$2085                      ;
                dw $1495,$47A5,$14C5,$2286                      ;
                dw $0896,$47A6,$2067,$0977                      ;
                dw $0487,$1397,$47A7,$2058                      ;
                dw $1468,$0C78,$1488,$1398                      ;
                dw $47A8,$0449,$1459,$4769                      ;
                dw $1789,$1499,$2CA9,$064A                      ;
                dw $475A,$198A,$089A,$2DAA                      ;
                dw $203B,$144B,$475B,$199B                      ;
                dw $08AB,$213C,$474C,$105C                      ;
                dw $2E6C,$107C,$148C,$109C                      ;
                dw $14AC,$053D,$104D,$145D                      ;
                dw $0C6D,$147D,$478D,$149D                      ;
                dw $064E,$475E,$2C6E,$054F                      ;
                dw $085F,$2D6F,$477F,$A250                      ;
                dw $0860,$4770,$0661,$4771                      ;
                dw $2052,$1162,$1F72,$0882                      ;
                dw $4792,$2153,$4763,$1983                      ;
                dw $1F93,$08A3,$0554,$0864                      ;
                dw $4774,$19A4,$08B4,$2265                      ;
                dw $0875,$4785,$13B5,$0676                      ;
                dw $4786,$11B6,$08C6,$0467                      ;
                dw $1477,$2C87,$4797,$19C7                      ;
                dw $08D7,$2268,$0878,$2D88                      ;
                dw $4798,$11D8,$0579,$0889                      ;
                dw $4799,$207A,$148A,$479A                      ;
                dw $227B,$248B,$089B,$47AB                      ;
                dw $219C,$47AC,$1ABC,$08CC                      ;
                dw $229D,$24AD,$2BBD,$22CD                      ;
                dw $08DD,$05DE,$FFFF                            ;

DATA_04BD09:    dw $085C,$085C,$085C,$085C                      ;
                dw $0855,$0856,$0855,$4856                      ;
                dw $0854,$0853,$0855,$0856                      ;
                dw $0855,$4856,$4854,$0853                      ;
                dw $085C,$0857,$0857,$0854                      ;
                dw $4857,$4854,$085C,$4857                      ;
                dw $4857,$4854,$0857,$0854                      ;
                dw $0853,$0853,$0853,$0853                      ;
                dw $0853,$0853,$4854,$0853                      ;
                dw $8850,$8851,$0853,$8852                      ;
                dw $0853,$C852,$0853,$8852                      ;
                dw $0853,$C852,$C850,$C851                      ;
                dw $0853,$8854,$0853,$0853                      ;
                dw $C854,$4854,$C857,$4857                      ;
                dw $8858,$0858,$0853,$0853                      ;
                dw $8857,$0857,$8854,$0854                      ;
                dw $0853,$085B,$085B,$0854                      ;
                dw $485B,$4854,$8853,$485B                      ;
                dw $0853,$8854,$4854,$0853                      ;
                dw $485B,$4854,$085B,$0854                      ;
                dw $0854,$0853,$0853,$0853                      ;
                dw $4857,$4854,$0857,$485B                      ;
                dw $4857,$085B,$0857,$0854                      ;
                dw $0859,$0858,$085A,$0853                      ;
                dw $485A,$0853,$085A,$0853                      ;
                dw $485A,$0853,$4859,$4858                      ;
                dw $0853,$0853,$0853,$C854                      ;
                dw $C854,$C85B,$C85B,$0853                      ;
                dw $C854,$4854,$C85B,$485B                      ;
                dw $885B,$085B,$8854,$0854                      ;
                dw $C854,$0853,$8854,$0853                      ;
                dw $0853,$0853,$C858,$4858                      ;
                dw $0851,$0850,$0852,$0853                      ;
                dw $4852,$0853,$0852,$0853                      ;
                dw $4852,$0853,$4851,$4850                      ;
                dw $8850,$0850,$0853,$0853                      ;
                dw $0853,$0853,$C850,$4850                      ;
                dw $C854,$085B,$C857,$4857                      ;
                dw $8857,$0857,$8854,$485B                      ;
                dw $085C,$0857,$085C,$4857                      ;
                dw $0854,$0853,$4854,$0853                      ;
                dw $8857,$085C,$8854,$8857                      ;
                dw $C854,$C857,$8854,$8857                      ;
                dw $C854,$C857,$C857,$085C                      ;
                dw $0853,$0853,$0855,$0856                      ;
                dw $0855,$4856,$0853,$0853                      ;
                dw $8858,$8859,$0853,$885A                      ;
                dw $0853,$C85A,$C858,$C859                      ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Empty
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF                  ;

DATA_04C000:    db $26,$AC,$26,$26,$26,$72,$72,$72              ;
                db $13,$59,$8B                                  ;

;level number and map type handler.
CODE_04C00B:    PHB                     ; $04:C00B: 8B          ;\
                PHK                     ; $04:C00C: 4B          ; |Setup program bank
                PLB                     ; $04:C00D: AB          ;/
                JSL CODE_04C01F         ; $04:C00E: 22 1F C0 04 ;\Jump to level loading routine
                STA $0750               ; $04:C012: 8D 50 07    ;/Store the output (level number) here
                AND #$60                ; $04:C015: 29 60       ;AND the output with $60 (01100000 c)
                ASL A                   ; $04:C017: 0A          ;*2 (11000000 c)
                ROL A                   ; $04:C018: 2A          ;*2 with carry (10000000 C)
                ROL A                   ; $04:C019: 2A          ;*2 with carry (00000001 C)
                ROL A                   ; $04:C01A: 2A          ;*2 with carry (00000011 c)
                STA $5C                 ; $04:C01B: 85 5C       ;Store in map type. This means that bits 6 and 5 are the map type!
                PLB                     ; $04:C01D: AB          ;\Restore original program bank
                RTL                     ; $04:C01E: 6B          ;/

CODE_04C01F:    PHB                     ; $04:C01F: 8B          ;\
                PHK                     ; $04:C020: 4B          ; |Setup program bank again.
                PLB                     ; $04:C021: AB          ;/
                LDY $075F               ; $04:C022: AC 5F 07    ;\Load world.
                CPY #$08                ; $04:C025: C0 08       ; |If it is smaller than world 08
                BCC CODE_04C034         ; $04:C027: 90 0B       ;/go setup normal level.
                STZ $0760               ; $04:C029: 9C 60 07    ;Store zero to current level
                STZ $075C               ; $04:C02C: 9C 5C 07    ;Store zero to written number of current level
                LDY #$00                ; $04:C02F: A0 00       ;\
                STY $075F               ; $04:C031: 8C 5F 07    ;/Store zero to current world
CODE_04C034:    LDA DATA_04C11C,y       ; $04:C034: B9 1C C1    ;\Load indices to the level number table
                CLC                     ; $04:C037: 18          ; |clear carry flag
                ADC $0760               ; $04:C038: 6D 60 07    ; |add current level to it
                TAY                     ; $04:C03B: A8          ; |use it as index
                LDA DATA_04C124,y       ; $04:C03C: B9 24 C1    ;\|Load the level number
                PLB                     ; $04:C03F: AB          ; |return it
                RTL                     ; $04:C040: 6B          ;/

;Level loading routine: Read level header from object table
CODE_04C041:    PHB                     ; $04:C041: 8B          ;\
                PHK                     ; $04:C042: 4B          ; |Setup program bank.
                PLB                     ; $04:C043: AB          ;/
                STZ $BA                 ; $04:C044: 64 BA       ;Store zero to current bg palette and music
                LDA $0750               ; $04:C046: AD 50 07    ;\Load level number
                AND #$60                ; $04:C049: 29 60       ; |
                ASL A                   ; $04:C04B: 0A          ; |Make bit 5 and 6 of the level number
                ROL A                   ; $04:C04C: 2A          ; |into bit 0 and 1.
                ROL A                   ; $04:C04D: 2A          ; |Values range from 0-3
                ROL A                   ; $04:C04E: 2A          ; |Store into map type
                STA $5C                 ; $04:C04F: 85 5C       ;/(00 underwater, 01 ground, 02 underground, 03 castle)
                TAY                     ; $04:C051: A8          ;Transfer A to Y to use it as an index.
                LDA $0750               ; $04:C052: AD 50 07    ;\Load level number again
                AND #$1F                ; $04:C055: 29 1F       ; |AND with $1F to get the level number WITHOUT map type
                STA $074F               ; $04:C057: 8D 4F 07    ;/Store into a RAM address to hold it.
                LDA DATA_04C148,y       ; $04:C05A: B9 48 C1    ;\ 
                CLC                     ; $04:C05D: 18          ; |Load the map type offsets
                ADC $074F               ; $04:C05E: 6D 4F 07    ; |Add the offsets with level number
                TAY                     ; $04:C061: A8          ;/| Use it as an index again...
                LDA DATA_04C14C,y       ; $04:C062: B9 4C C1    ;\|
                STA $FD                 ; $04:C065: 85 FD       ; |Load pointers to enemy data
                LDA DATA_04C16E,y       ; $04:C067: B9 6E C1    ; |in $FD-$FF
                STA $FE                 ; $04:C06A: 85 FE       ; |
                LDA.b #DATA_04C14C>>16  ; $04:C06C: A9 04       ; |$FF is a constant: #$04
                STA $FF                 ; $04:C06E: 85 FF       ;/
                LDY $5C                 ; $04:C070: A4 5C       ;\Load map type again
                LDA DATA_04C190,y       ; $04:C072: B9 90 C1    ; |
                CLC                     ; $04:C075: 18          ; |Load something again
                ADC $074F               ; $04:C076: 6D 4F 07    ; |add the level number to it
                TAY                     ; $04:C079: A8          ; |Use it as an index
                STA $DB                 ; $04:C07A: 85 DB       ;/Store it in the layer 2 background.
                CMP #$1C                ; $04:C07C: C9 1C       ;\If it is a castle, change BG palette and music to
                BCS CODE_04C08C         ; $04:C07E: B0 0C       ;/Black and Castle (Also changes ground tileset) ($03)
                CMP #$19                ; $04:C080: C9 19       ;\If it is an underground (bonus room),change BG palette and music to
                BCS CODE_04C08E         ; $04:C082: B0 0A       ;/Black and underground ($02)
                CMP #$03                ; $04:C084: C9 03       ;\If it is any minor background, change BG palette and music to
                BCS CODE_04C090         ; $04:C086: B0 08       ;/Light Blue and ground ($01)
                CMP #$02                ; $04:C088: C9 02       ;\If it is any underwater stage, change BG palette and music to
                BCC CODE_04C092         ; $04:C08A: 90 06       ;/Light Blue and Underwater ($00)
CODE_04C08C:    INC $BA                 ; $04:C08C: E6 BA       ;\
CODE_04C08E:    INC $BA                 ; $04:C08E: E6 BA       ; |Set BG palette and music
CODE_04C090:    INC $BA                 ; $04:C090: E6 BA       ;/
CODE_04C092:    LDA DATA_04C194,y       ; $04:C092: B9 94 C1    ;\
                STA $FA                 ; $04:C095: 85 FA       ; |
                LDA DATA_04C1B6,y       ; $04:C097: B9 B6 C1    ; |Setup the pointer of the level header
                STA $FB                 ; $04:C09A: 85 FB       ; |and the level object data.
CODE_04C09C:    LDA.b #DATA_04C194>>16  ; $04:C09C: A9 04       ; |24-bits pointer at $FA
                STA $FC                 ; $04:C09E: 85 FC       ;/ Bank is constant: $04
                LDY #$00                ; $04:C0A0: A0 00       ;\
                LDA [$FA],y             ; $04:C0A2: B7 FA       ; |Load level haeder
                PHA                     ; $04:C0A4: 48          ;/ Push it into A
                AND #$07                ; $04:C0A5: 29 07       ;\Get the background bits.
                CMP #$04                ; $04:C0A7: C9 04       ; |If it is 04 or smaller
                BCC CODE_04C0B2         ; $04:C0A9: 90 07       ;/ Branch
                AND #$04                ; $04:C0AB: 29 04       ;\Filter bit 2
                STA $0744               ; $04:C0AD: 8D 44 07    ;/Store into "BG is lower than 3" flag
                LDA #$00                ; $04:C0B0: A9 00       ;\
CODE_04C0B2:    STA $0741               ; $04:C0B2: 8D 41 07    ;/If BG is lower than 3, use nothing for layer 1 background
                PLA                     ; $04:C0B5: 68          ;\Pull level header's first byte
                PHA                     ; $04:C0B6: 48          ;/...then push it again.
                AND #$38                ; $04:C0B7: 29 38       ;\Filter Mario's starting Y position
                LSR A                   ; $04:C0B9: 4A          ; |
                LSR A                   ; $04:C0BA: 4A          ; |>> 3
                LSR A                   ; $04:C0BB: 4A          ; |so the value is between 0-7 instead of whatever.
                STA $0710               ; $04:C0BC: 8D 10 07    ;/Store into Mario's starting position.
                PLA                     ; $04:C0BF: 68          ;Pull level header again.
                AND #$C0                ; $04:C0C0: 29 C0       ;Filter the time bits.
                CLC                     ; $04:C0C2: 18          ;\Clear carry flag
                ROL A                   ; $04:C0C3: 2A          ; |<<3 so the value is between 0-3.
                ROL A                   ; $04:C0C4: 2A          ; |
                ROL A                   ; $04:C0C5: 2A          ; |Store into starting timer
                STA $0715               ; $04:C0C6: 8D 15 07    ;/
                INY                     ; $04:C0C9: C8          ;Increase Y.
                LDA [$FA],y             ; $04:C0CA: B7 FA       ;Load level header byte 2.
                PHA                     ; $04:C0CC: 48          ;Push it into A.
                AND #$0F                ; $04:C0CD: 29 0F       ;\Filter floor set
                STA $0727               ; $04:C0CF: 8D 27 07    ;/Store it into Floor Set RAM address
                PLA                     ; $04:C0D2: 68          ;Pull A
                PHA                     ; $04:C0D3: 48          ;Push A
                AND #$30                ; $04:C0D4: 29 30       ;\Filter ground set and palette bits
                LSR A                   ; $04:C0D6: 4A          ; |
                LSR A                   ; $04:C0D7: 4A          ; |>>4 so that the value ranges from 00-03
                LSR A                   ; $04:C0D8: 4A          ; |
                LSR A                   ; $04:C0D9: 4A          ; |
                CMP #$01                ; $04:C0DA: C9 01       ;/
                BNE CODE_04C0E0         ; $04:C0DC: D0 02       ;(If the result is not 01 (Orange and mushroom)
                LDA #$00                ; $04:C0DE: A9 00       ;\and unnecessary LDA.
CODE_04C0E0:    STA $0742               ; $04:C0E0: 8D 42 07    ;/Store bits into ground set and palette RAM address.
                PLA                     ; $04:C0E3: 68          ;\Pull level header byte 2 from the stack.
                AND #$C0                ; $04:C0E4: 29 C0       ; |
                CLC                     ; $04:C0E6: 18          ; |Filter ground set
                ROL A                   ; $04:C0E7: 2A          ; |make the last 2 bits the first 2 bits.
                ROL A                   ; $04:C0E8: 2A          ; |
                ROL A                   ; $04:C0E9: 2A          ; |
                CMP #$03                ; $04:C0EA: C9 03       ; |If ground set is clouds, branch.
                BNE CODE_04C0F3         ; $04:C0EC: D0 05       ;/
                STA $0743               ; $04:C0EE: 8D 43 07    ;Store bits into "Cloud terrain type override flag"
                LDA #$00                ; $04:C0F1: A9 00       ;\set ground set to none, if ground set is clouds
CODE_04C0F3:    STA $0733               ; $04:C0F3: 8D 33 07    ;/otherwise store as normal.
                JSR CODE_04C10B         ; $04:C0F6: 20 0B C1    ;Handle vine growing in the start of level?
                LDA $FA                 ; $04:C0F9: A5 FA       ;\
                CLC                     ; $04:C0FB: 18          ; |
                ADC #$02                ; $04:C0FC: 69 02       ; |Increase the pointer by 2 so we don't
                STA $FA                 ; $04:C0FE: 85 FA       ; |need to bother with Y indexing later.
                LDA $FB                 ; $04:C100: A5 FB       ; |
                ADC #$00                ; $04:C102: 69 00       ; |
                STA $FB                 ; $04:C104: 85 FB       ;/
                STZ $0EE8               ; $04:C106: 9C E8 0E    ;Store zero to "Counter for the screen's X-pos in 16x16"
                PLB                     ; $04:C109: AB          ;Pull program bank
                RTL                     ; $04:C10A: 6B          ;And return

CODE_04C10B:    LDA $0743               ; $04:C10B: AD 43 07    ;if cloud terrain type override flag is set
                BNE CODE_04C116         ; $04:C10E: D0 06       ;branch.
                LDA $DB                 ; $04:C110: A5 DB       ;\
                CMP #$12                ; $04:C112: C9 12       ; |If layer 2 background is not "Mushrooms"
                BNE CODE_04C11B         ; $04:C114: D0 05       ;/ Return.
CODE_04C116:    LDA #$01                ; $04:C116: A9 01       ;\Grow a vine in the start of level flag?
                STA $0236               ; $04:C118: 8D 36 02    ;/
CODE_04C11B:    RTS                     ; $04:C11B: 60          ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; SMB1 LEVEL DATA POINTERS (and their data)
;;
;; First the level numbers get defined, then the
;; sprite data pointers as well as the object
;; data pointers follow. These pointers are 16-bit
;; and the bank byte is defined in the code
;; CODE_04C06C and CODE_04C09C
;; 
;; After these pointers, the sprite and object data
;; themselves follow
;;

DATA_04C11C:    db DATA_04C124-DATA_04C124                      ; World 1 | Relative indices to level numbers grouped by world.
                db DATA_04C129-DATA_04C124                      ; World 2
                db DATA_04C12E-DATA_04C124                      ; World 3
                db DATA_04C132-DATA_04C124                      ; World 4
                db DATA_04C137-DATA_04C124                      ; World 5
                db DATA_04C13B-DATA_04C124                      ; World 6
                db DATA_04C13F-DATA_04C124                      ; World 7
                db DATA_04C144-DATA_04C124                      ; World 8

DATA_04C124:    db $25,$29,$C0,$26,$60                          ; "World 1 Levels" They get stored in $7E:0750

DATA_04C129:    db $28,$29,$01,$27,$62                          ; "World 2 Levels"

DATA_04C12E:    db $24,$35,$20,$63                              ; "World 3 Levels"

DATA_04C132:    db $22,$29,$41,$2C,$61                          ; "World 4 Levels"

DATA_04C137:    db $2A,$31,$26,$62                              ; "World 5 Levels"

DATA_04C13B:    db $2E,$23,$2D,$60                              ; "World 6 Levels"

DATA_04C13F:    db $33,$29,$01,$27,$64                          ; "World 7 Levels"

DATA_04C144:    db $30,$32,$21,$65                              ; "World 8 Levels"

DATA_04C148:    db DATA_04C16B-DATA_04C14C                      ; Relative indices to level sprite data pointer tables
                db DATA_04C152-DATA_04C14C                      ; Grouped by level type
                db DATA_04C168-DATA_04C14C                      ;
                db DATA_04C14C-DATA_04C14C                      ;

DATA_04C14C:    db DATA_04C1D8                                  ; The castle levels sprite data offset low
                db DATA_04C1FF                                  ;
                db DATA_04C218                                  ;
                db DATA_04C247                                  ;
                db DATA_04C272                                  ;
                db DATA_04C287                                  ;

DATA_04C152:    db DATA_04C2C1                                  ; The overworld levels sprite data offset low
                db DATA_04C2E6                                  ;
                db DATA_04C303                                  ;
                db DATA_04C311                                  ;
                db DATA_04C338                                  ;
                db DATA_04C369                                  ;
                db DATA_04C387                                  ;
                db DATA_04C3A4                                  ;
                db DATA_04C3B9                                  ;
                db DATA_04C3E3                                  ;
                db DATA_04C3E4                                  ;
                db DATA_04C408                                  ;
                db DATA_04C411                                  ;
                db DATA_04C436                                  ;
                db DATA_04C459                                  ;
                db DATA_04C462                                  ;
                db DATA_04C463                                  ;
                db DATA_04C49D                                  ;
                db DATA_04C4C8                                  ;
                db DATA_04C4F6                                  ;
                db DATA_04C512                                  ;
                db DATA_04C51B                                  ;

DATA_04C168:    db DATA_04C540                                  ; The underground levels sprite data offset low
                db DATA_04C56D                                  ;
                db DATA_04C59B                                  ;

DATA_04C16B:    db DATA_04C5C8                                  ; The underwater levels sprite data offset low
                db DATA_04C5D9                                  ;
                db DATA_04C603                                  ;

DATA_04C16E:    db DATA_04C1D8>>8                               ; The castle levels sprite data offset high
                db DATA_04C1FF>>8                               ;
                db DATA_04C218>>8                               ;
                db DATA_04C247>>8                               ;
                db DATA_04C272>>8                               ;
                db DATA_04C287>>8                               ;

                db DATA_04C2C1>>8                               ; The overworld levels sprite data offset high
                db DATA_04C2E6>>8                               ;
                db DATA_04C303>>8                               ;
                db DATA_04C311>>8                               ;
                db DATA_04C338>>8                               ;
                db DATA_04C369>>8                               ;
                db DATA_04C387>>8                               ;
                db DATA_04C3A4>>8                               ;
                db DATA_04C3B9>>8                               ;
                db DATA_04C3E3>>8                               ;
                db DATA_04C3E4>>8                               ;
                db DATA_04C408>>8                               ;
                db DATA_04C411>>8                               ;
                db DATA_04C436>>8                               ;
                db DATA_04C459>>8                               ;
                db DATA_04C462>>8                               ;
                db DATA_04C463>>8                               ;
                db DATA_04C49D>>8                               ;
                db DATA_04C4C8>>8                               ;
                db DATA_04C4F6>>8                               ;
                db DATA_04C512>>8                               ;
                db DATA_04C51B>>8                               ;

                db DATA_04C540>>8                               ; The underground levels sprite data offset high
                db DATA_04C56D>>8                               ;
                db DATA_04C59B>>8                               ;

                db DATA_04C5C8>>8                               ; The underwater levels sprite data offset high
                db DATA_04C5D9>>8                               ;
                db DATA_04C603>>8                               ;

DATA_04C190:    db DATA_04C194-DATA_04C194                      ; Relative indices to level object data pointer tables
                db DATA_04C197-DATA_04C194                      ; Grouped by level type
                db DATA_04C1AD-DATA_04C194                      ;
                db DATA_04C1B0-DATA_04C194                      ;

DATA_04C194:    db DATA_04D608                                  ; Underwater levels objects offset low
                db DATA_04D671                                  ;
                db DATA_04D70D                                  ;

DATA_04C197:    db DATA_04CC0B                                  ; Overworld levels objects offset low
                db DATA_04CC74                                  ;
                db DATA_04CCC3                                  ;
                db DATA_04CD1B                                  ;
                db DATA_04CDB0                                  ;
                db DATA_04CE2F                                  ;
                db DATA_04CE9A                                  ;
                db DATA_04CEF1                                  ;
                db DATA_04CF7A                                  ;
                db DATA_04CFE7                                  ;
                db DATA_04CFF1                                  ;
                db DATA_04D035                                  ;
                db DATA_04D04A                                  ;
                db DATA_04D0BB                                  ;
                db DATA_04D128                                  ;
                db DATA_04D1A3                                  ;
                db DATA_04D1D5                                  ;
                db DATA_04D26D                                  ;
                db DATA_04D2EB                                  ;
                db DATA_04D36B                                  ;
                db DATA_04D3CA                                  ;
                db DATA_04D3F5                                  ;

DATA_04C1AD:    db DATA_04D42D                                  ; Underground levels objects offset low
                db DATA_04D4D2                                  ;
                db DATA_04D576                                  ;

DATA_04C1B0:    db DATA_04C617                                  ; Castle levels objects offset low
                db DATA_04C6D2                                  ;
                db DATA_04C7FA                                  ;
                db DATA_04C8D8                                  ;
                db DATA_04C9D4                                  ;
                db DATA_04CB01                                  ;

DATA_04C1B6:    db DATA_04D608>>8                               ; Underwater levels objects offset high
                db DATA_04D671>>8                               ;
                db DATA_04D70D>>8                               ;

                db DATA_04CC0B>>8                               ; Overworld levels objects offset high
                db DATA_04CC74>>8                               ;
                db DATA_04CCC3>>8                               ;
                db DATA_04CD1B>>8                               ;
                db DATA_04CDB0>>8                               ;
                db DATA_04CE2F>>8                               ;
                db DATA_04CE9A>>8                               ;
                db DATA_04CEF1>>8                               ;
                db DATA_04CF7A>>8                               ;
                db DATA_04CFE7>>8                               ;
                db DATA_04CFF1>>8                               ;
                db DATA_04D035>>8                               ;
                db DATA_04D04A>>8                               ;
                db DATA_04D0BB>>8                               ;
                db DATA_04D128>>8                               ;
                db DATA_04D1A3>>8                               ;
                db DATA_04D1D5>>8                               ;
                db DATA_04D26D>>8                               ;
                db DATA_04D2EB>>8                               ;
                db DATA_04D36B>>8                               ;
                db DATA_04D3CA>>8                               ;
                db DATA_04D3F5>>8                               ;

                db DATA_04D42D>>8                               ; Underground levels objects offset high
                db DATA_04D4D2>>8                               ;
                db DATA_04D576>>8                               ;

                db DATA_04C617>>8                               ; Castle levels objects offset high
                db DATA_04C6D2>>8                               ;
                db DATA_04C7FA>>8                               ;
                db DATA_04C8D8>>8                               ;
                db DATA_04C9D4>>8                               ;
                db DATA_04CB01>>8                               ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; SMB1 LEVEL SPRITE DATA
;;
;; Sprite data ends with $FF
;; TODO: Format?
;;

DATA_04C1D8:    db $76,$DD,$BB,$4C,$EA,$1D,$1B,$CC              ; 1-4 & 6-4, Level #60
                db $56,$5D,$16,$9D,$C6,$1D,$36,$9D              ;
                db $C9,$1D,$04,$DB,$49,$1D,$84,$1B              ;
                db $C9,$5D,$88,$95,$0F,$08,$30,$4C              ;
                db $78,$2D,$A6,$28,$90,$B5,$FF                  ;

DATA_04C1FF:    db $0F,$03,$56,$1B,$C9,$1B,$0F,$07              ; 4-4, Level #61
                db $36,$1B,$AA,$1B,$48,$95,$0F,$0A              ;
                db $2A,$1B,$5B,$0C,$78,$2D,$90,$B5              ;
                db $FF                                          ;

DATA_04C218:    db $0B,$8C,$4B,$4C,$77,$5F,$EB,$0C              ; 2-4, Level #62
                db $BD,$DB,$19,$9D,$75,$1D,$7D,$5B              ;
                db $D9,$1D,$3D,$DD,$99,$1D,$26,$9D              ;
                db $5A,$2B,$8A,$2C,$CA,$1B,$20,$95              ;
                db $7B,$5C,$DB,$4C,$1B,$CC,$3B,$CC              ;
                db $78,$2D,$A6,$28,$90,$B5,$FF                  ;

DATA_04C247:    db $0B,$8C,$3B,$1D,$8B,$1D,$AB,$0C              ; 3-4, Level #63
                db $DB,$1D,$0F,$03,$65,$1D,$6B,$1B              ;
                db $05,$9D,$0B,$1B,$05,$9B,$0B,$1D              ;
                db $8B,$0C,$1B,$8C,$70,$15,$7B,$0C              ;
                db $DB,$0C,$0F,$08,$78,$2D,$A6,$28              ;
                db $90,$B5,$FF                                  ;

DATA_04C272:    db $27,$A9,$4B,$0C,$68,$29,$0F,$06              ; 7-4, Level #64
                db $77,$1B,$0F,$0B,$60,$15,$4B,$8C              ;
                db $78,$2D,$90,$B5,$FF                          ;

DATA_04C287:    db $0F,$03,$8E,$65,$E1,$BB,$38,$6C              ; 8-4, Level #65
                db $A8,$3E,$E5,$E7,$0F,$08,$0B,$02              ;
                db $2B,$02,$5E,$65,$E1,$BB,$0E,$DB              ;
                db $0E,$BB,$8E,$DB,$0E,$FE,$65,$EC              ;
                db $0F,$0D,$4E,$65,$E1,$0F,$0E,$4E              ;
                db $02,$E0,$0F,$10,$FE,$E5,$E1,$1B              ;
                db $85,$7B,$0C,$5B,$95,$78,$2D,$D0              ;
                db $B5,$FF                                      ;

DATA_04C2C1:    db $A5,$86,$E4,$28,$18,$A8,$45,$83              ; 3-3, Level #20
                db $69,$03,$C6,$29,$9B,$83,$16,$A4              ;
                db $88,$24,$E9,$28,$05,$A8,$7B,$28              ;
                db $24,$8F,$C8,$03,$E8,$03,$46,$A8              ;
                db $85,$24,$C8,$24,$FF                          ;

DATA_04C2E6:    db $EB,$8E,$0F,$03,$FB,$05,$17,$85              ; 8-3, Level #21
                db $DB,$8E,$0F,$07,$57,$05,$7B,$05              ;
                db $9B,$80,$2B,$85,$FB,$05,$0F,$0B              ;
                db $1B,$05,$9B,$05,$FF                          ;

DATA_04C303:    db $2E,$C2,$66,$E2,$11,$0F,$07,$02              ; 4-1, Level #22
                db $11,$0F,$0C,$12,$11,$FF                      ;

DATA_04C311:    db $0E,$C2,$A8,$AB,$00,$BB,$8E,$6B              ; 6-2, Level #23
                db $82,$DE,$00,$A0,$33,$86,$43,$06              ;
                db $3E,$B4,$A0,$CB,$02,$0F,$07,$7E              ;
                db $42,$A6,$83,$02,$0F,$0A,$3B,$02              ;
                db $CB,$37,$0F,$0C,$E3,$0E,$FF                  ;

DATA_04C338:    db $9B,$8E,$CA,$0E,$EE,$42,$44,$5B              ; 3-1, Level #24
                db $86,$80,$B8,$1B,$80,$50,$BA,$10              ;
                db $B7,$5B,$00,$17,$85,$4B,$05,$FE              ;
                db $34,$40,$B7,$86,$C6,$06,$5B,$80              ;
                db $83,$00,$D0,$38,$5B,$8E,$8A,$0E              ;
                db $A6,$00,$BB,$0E,$C5,$80,$F3,$00              ;
                db $FF                                          ;

DATA_04C369:    db $1E,$C2,$00,$6B,$06,$8B,$86,$63              ; 1-1, Level #25
                db $B7,$0F,$05,$03,$06,$23,$06,$4B              ;
                db $B7,$BB,$00,$5B,$B7,$FB,$37,$3B              ;
                db $B7,$0F,$0B,$1B,$37,$FF                      ;

DATA_04C387:    db $2B,$D7,$E3,$03,$C2,$86,$E2,$06              ; 1-3 & 5-3, Level #26
                db $76,$A5,$A3,$8F,$03,$86,$2B,$57              ;
                db $68,$28,$E9,$28,$E5,$83,$24,$8F              ;
                db $36,$A8,$5B,$03,$FF                          ;

DATA_04C3A4:    db $0F,$02,$78,$40,$48,$CE,$F8,$C3              ; 2-3 & 7-3, Level #27
                db $F8,$C3,$0F,$07,$7B,$43,$C6,$D0              ;
                db $0F,$8A,$C8,$50,$FF                          ;

DATA_04C3B9:    db $85,$86,$0B,$80,$1B,$00,$DB,$37              ; 2-1, Level #28
                db $77,$80,$EB,$37,$FE,$2B,$20,$2B              ;
                db $80,$7B,$38,$AB,$B8,$77,$86,$FE              ;
                db $42,$20,$49,$86,$8B,$06,$9B,$80              ;
                db $7B,$8E,$5B,$B7,$9B,$0E,$BB,$0E              ;
                db $9B,$80                                      ;

DATA_04C3E3:    db $FF                                          ; ???

DATA_04C3E4:    db $0B,$80,$60,$38,$10,$B8,$C0,$3B              ; 5-1, Level #2A
                db $DB,$8E,$40,$B8,$F0,$38,$7B,$8E              ;
                db $A0,$B8,$C0,$B8,$FB,$00,$A0,$B8              ;
                db $30,$BB,$EE,$42,$88,$0F,$0B,$2B              ;
                db $0E,$67,$0E,$FF                              ;

DATA_04C408:    db $0A,$AA,$0E,$28,$2A,$0E,$31,$88              ; Sky Bonus Area (Day), Level #2B
                db $FF                                          ;

DATA_04C411:    db $C7,$83,$D7,$03,$42,$8F,$7A,$03              ; 4-3, Level #2C
                db $05,$A4,$78,$24,$A6,$25,$E4,$25              ;
                db $4B,$83,$E3,$03,$05,$A4,$89,$24              ;
                db $B5,$24,$09,$A4,$65,$24,$C9,$24              ;
                db $0F,$08,$85,$25,$FF                          ;

DATA_04C436:    db $CC,$A5,$B5,$A8,$07,$A8,$76,$28              ; 6-3, Level #2D
                db $CC,$25,$65,$A4,$A9,$24,$E5,$24              ;
                db $19,$A4,$0F,$07,$95,$28,$E6,$24              ;
                db $19,$A4,$D7,$29,$16,$A9,$58,$29              ;
                db $97,$29,$FF                                  ;

DATA_04C459:    db $0F,$02,$02,$11,$0F,$07,$02,$11              ; 6-1, Level #2E
                db $FF                                          ;

DATA_04C462:    db $FF                                          ; 4-2 Warp Zone, Level #2F

DATA_04C463:    db $2B,$82,$AB,$38,$DE,$42,$E2,$1B              ; 8-1, Level #30
                db $86,$EB,$3B,$DB,$80,$8B,$B8,$1B              ;
                db $82,$FB,$B8,$7B,$80,$FB,$3C,$5B              ;
                db $80,$7B,$B8,$1B,$8E,$CB,$0E,$1B              ;
                db $8E,$0F,$0D,$2B,$3B,$BB,$B8,$EB              ;
                db $82,$4B,$B8,$BB,$38,$3B,$B7,$BB              ;
                db $02,$0F,$13,$1B,$00,$CB,$80,$6B              ;
                db $BC,$FF                                      ;

DATA_04C49D:    db $7B,$80,$AE,$00,$80,$8B,$8E,$E8              ; 5-2, Level #31
                db $05,$F9,$86,$17,$86,$16,$85,$4E              ;
                db $2B,$80,$AB,$8E,$87,$85,$C3,$05              ;
                db $8B,$82,$9B,$02,$AB,$02,$BB,$86              ;
                db $CB,$06,$D3,$03,$3B,$8E,$6B,$0E              ;
                db $A7,$8E,$FF                                  ;

DATA_04C4C8:    db $29,$8E,$52,$11,$83,$0E,$0F,$03              ; 8-2, Level #32
                db $9B,$0E,$2B,$8E,$5B,$0E,$CB,$8E              ;
                db $FB,$0E,$FB,$82,$9B,$82,$BB,$02              ;
                db $FE,$42,$E8,$BB,$8E,$0F,$0A,$AB              ;
                db $0E,$CB,$0E,$F9,$0E,$88,$86,$A6              ;
                db $06,$DB,$02,$B6,$8E,$FF                      ;

DATA_04C4F6:    db $AB,$CE,$DE,$42,$C0,$CB,$CE,$5B              ; 7-1, Level #33
                db $8E,$1B,$CE,$4B,$85,$67,$45,$0F              ;
                db $07,$2B,$00,$7B,$85,$97,$05,$0F              ;
                db $0A,$92,$02,$FF                              ;

DATA_04C512:    db $0A,$AA,$0E,$24,$4A,$1E,$23,$AA              ; Sky Bonus Area (Night), Level #34
                db $FF                                          ;

DATA_04C51B:    db $1B,$80,$BB,$38,$4B,$BC,$EB,$3B              ; 3-2, Level #35
                db $0F,$04,$2B,$00,$AB,$38,$EB,$00              ;
                db $CB,$8E,$FB,$80,$AB,$B8,$6B,$80              ;
                db $FB,$3C,$9B,$BB,$5B,$BC,$FB,$00              ;
                db $6B,$B8,$FB,$38,$FF                          ;

DATA_04C540:    db $0B,$86,$1A,$06,$DB,$06,$DE,$C2              ; 1-2, Level #C0
                db $02,$F0,$3B,$BB,$80,$EB,$06,$0B              ;
                db $86,$93,$06,$F0,$39,$0F,$06,$60              ;
                db $B8,$1B,$86,$A0,$B9,$B7,$27,$BD              ;
                db $27,$2B,$83,$A1,$26,$A9,$26,$EE              ;
                db $25,$0B,$27,$B4,$FF                          ;

DATA_04C56D:    db $0F,$02,$1E,$2F,$60,$E0,$3A                  ; 4-2, Level #C1
                db $A5,$A7,$DB,$80,$3B,$82,$8B,$02              ;
                db $FE,$42,$68,$70,$BB,$25,$A7,$2C              ;
                db $27,$B2,$26,$B9,$26,$9B,$80,$A8              ;
                db $82,$B5,$27,$BC,$27,$B0,$BB,$3B              ;
                db $82,$87,$34,$EE,$25,$6B,$FF                  ;

DATA_04C59B:    db $1E,$A5,$0A,$2E,$28,$27,$2E,$33              ; Underground Bonus Area, Level #C2
                db $C7,$0F,$03,$1E,$40,$07,$2E,$30              ;
                db $E7,$0F,$05,$1E,$24,$44,$0F,$07              ;
                db $1E,$22,$6A,$2E,$23,$AB,$0F,$09              ;
                db $1E,$41,$68,$1E,$2A,$8A,$2E,$23              ;
                db $A2,$2E,$32,$EA,$FF                          ;

DATA_04C5C8:    db $3B,$87,$66,$27,$CC,$27,$EE,$31              ; Underwater Bonus Area, Level #00
                db $87,$EE,$23,$A7,$3B,$87,$DB,$07              ;
                db $FF                                          ;

DATA_04C5D9:    db $0F,$01,$2E,$25,$2B,$2E,$25,$4B              ; 2-2 & 7-2, Level #01
                db $4E,$25,$CB,$6B,$07,$97,$47,$E9              ;
                db $87,$47,$C7,$7A,$07,$D6,$C7,$78              ;
                db $07,$38,$87,$AB,$47,$E3,$07,$9B              ;
                db $87,$0F,$09,$68,$47,$DB,$C7,$3B              ;
                db $C7,$FF                                      ;

DATA_04C603:    db $47,$9B,$CB,$07,$FA,$1D,$86,$9B              ; 8-4 Underwater, Level #02
                db $3A,$87,$56,$07,$88,$1B,$07,$9D              ;
                db $2E,$65,$F0,$FF                              ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; SMB1 LEVEL OBJECT DATA. 
;;
;; The first two bytes are the level header. Object data ends with $FD
;; TODO: Format?
 
DATA_04C617:    db $9B,$07,$0F,$52,$32,$0F,$63,$32              ; 1-4 & 6-4, Level #60
                db $0F,$74,$32,$CF,$80,$36,$CE,$03              ;
                db $DC,$51,$EE,$07,$FF,$80,$38,$7F              ;
                db $30,$B4,$74,$0A,$7E,$06,$7F,$20              ;
                db $34,$9F,$80,$36,$9E,$0A,$CE,$06              ;
                db $DF,$80,$38,$E4,$00,$E8,$0A,$FF              ;
                db $80,$36,$FE,$0A,$2E,$89,$3F,$70              ;
                db $38,$4E,$0B,$5F,$10,$34,$54,$0A              ;
                db $14,$8A,$C4,$0A,$34,$8A,$7F,$71              ;
                db $3A,$7F,$20,$34,$7E,$06,$C7,$0A              ;
                db $0F,$10,$B4,$02,$0A,$47,$0A,$8F              ;
                db $10,$34,$82,$0A,$C7,$0A,$0E,$87              ;
                db $1F,$10,$34,$7F,$20,$34,$7F,$A1              ;
                db $3A,$7F,$80,$36,$7E,$02,$A7,$02              ;
                db $B3,$02,$D7,$02,$E3,$02,$07,$82              ;
                db $13,$02,$3E,$06,$3F,$A1,$3C,$4F              ;
                db $80,$38,$7F,$A1,$3A,$7F,$80,$36              ;
                db $7E,$02,$AE,$07,$AF,$A1,$3C,$BF              ;
                db $80,$38,$BF,$10,$34,$FE,$0A,$FF              ;
                db $20,$34,$FF,$80,$36,$0D,$C4,$CD              ;
                db $43,$CE,$09,$DE,$0B,$DF,$70,$38              ;
                db $DD,$42,$EF,$20,$34,$FF,$20,$34              ;
                db $FF,$A1,$3A,$FF,$70,$36,$FE,$02              ;
                db $5D,$C7,$FD                                  ;

DATA_04C6D2:    db $5B,$07,$0F,$52,$32,$0F,$63,$32              ; 4-4, Level #61
                db $0F,$74,$32,$5E,$0A,$5F,$20,$34              ;
                db $6F,$80,$36,$68,$64,$9F,$80,$38              ;
                db $AF,$80,$36,$CE,$06,$DF,$80,$38              ;
                db $FF,$A1,$3A,$FF,$80,$36,$FE,$02              ;
                db $0D,$01,$1E,$0E,$24,$63,$34,$63              ;
                db $44,$63,$54,$63,$64,$63,$74,$63              ;
                db $7E,$02,$94,$63,$B4,$63,$D4,$63              ;
                db $F4,$63,$14,$E3,$2E,$0E,$34,$63              ;
                db $44,$63,$54,$63,$5E,$02,$64,$35              ;
                db $88,$72,$BE,$0E,$C4,$63,$D4,$63              ;
                db $E4,$63,$F4,$63,$04,$E3,$14,$63              ;
                db $24,$63,$34,$63,$44,$63,$54,$63              ;
                db $64,$63,$74,$63,$84,$63,$94,$63              ;
                db $A4,$63,$B4,$63,$C4,$63,$D4,$63              ;
                db $E4,$63,$F4,$63,$0D,$04,$04,$63              ;
                db $14,$63,$24,$63,$34,$63,$44,$63              ;
                db $54,$63,$64,$63,$74,$63,$84,$63              ;
                db $94,$63,$A4,$63,$AE,$02,$CE,$08              ;
                db $CF,$A1,$3C,$CD,$4B,$DF,$10,$34              ;
                db $DF,$80,$38,$FF,$A1,$3A,$FF,$80              ;
                db $36,$FF,$20,$34,$FE,$02,$0D,$05              ;
                db $68,$31,$7E,$0A,$7F,$B0,$36,$96              ;
                db $31,$A9,$63,$A8,$33,$D5,$30,$EE              ;
                db $02,$E6,$62,$F4,$61,$FF,$B0,$38              ;
                db $04,$B1,$08,$3F,$44,$33,$94,$63              ;
                db $A4,$31,$E4,$31,$04,$BF,$08,$3F              ;
                db $04,$BF,$08,$3F,$CD,$4B,$03,$E4              ;
                db $0E,$03,$1F,$10,$34,$2E,$01,$2F              ;
                db $10,$34,$7E,$06,$7F,$A1,$3C,$8F              ;
                db $00,$34,$8F,$80,$38,$BE,$02,$BF              ;
                db $A1,$3A,$BF,$80,$36,$DE,$06,$DF              ;
                db $A1,$3C,$EF,$80,$38,$FE,$0A,$FF              ;
                db $80,$36,$0D,$C4,$CD,$43,$CE,$09              ;
                db $DF,$70,$38,$DE,$0B,$DD,$42,$EF              ;
                db $20,$34,$FF,$20,$34,$FE,$02,$FF              ;
                db $A1,$3A,$FF,$70,$36,$5D,$C7,$FD              ;

DATA_04C7FA:    db $9B,$07,$0F,$52,$32,$0F,$63,$32              ; 2-4 & 5-4, Level #62
                db $0F,$74,$32,$FF,$80,$36,$FF,$00              ;
                db $34,$FE,$00,$27,$B1,$65,$32,$75              ;
                db $0A,$71,$00,$B7,$31,$0F,$80,$B8              ;
                db $1F,$A1,$3A,$1F,$80,$36,$1E,$04              ;
                db $2F,$00,$34,$57,$3B,$BB,$0A,$17              ;
                db $8A,$27,$3A,$6F,$30,$34,$73,$0A              ;
                db $7B,$0A,$D7,$0A,$E7,$3A,$3B,$8A              ;
                db $97,$0A,$FE,$08,$FF,$A1,$3C,$0F              ;
                db $80,$B8,$24,$0A,$2E,$00,$2F,$10              ;
                db $34,$3E,$40,$3F,$80,$36,$38,$64              ;
                db $6F,$F0,$00,$9F,$F0,$00,$BE,$43              ;
                db $C8,$0A,$CF,$80,$38,$CE,$07,$DF              ;
                db $10,$34,$FE,$07,$2E,$81,$2F,$10              ;
                db $34,$2F,$A1,$3A,$2F,$80,$36,$66              ;
                db $42,$6A,$42,$79,$0A,$BE,$00,$BF              ;
                db $B0,$36,$C8,$64,$F8,$64,$FF,$80              ;
                db $38,$0F,$80,$B6,$08,$64,$2E,$07              ;
                db $3F,$10,$34,$3F,$80,$38,$7F,$A1              ;
                db $3A,$7F,$80,$36,$7E,$03,$9E,$07              ;
                db $9F,$A1,$3C,$AF,$80,$38,$BF,$A1              ;
                db $3A,$BF,$80,$36,$BE,$03,$DE,$07              ;
                db $DF,$A1,$3C,$EF,$80,$38,$FE,$0A              ;
                db $FF,$20,$34,$FF,$80,$36,$03,$A5              ;
                db $0D,$44,$CD,$43,$CE,$09,$DF,$70              ;
                db $38,$DD,$42,$DE,$0B,$EF,$20,$34              ;
                db $FE,$02,$FF,$20,$34,$FF,$A1,$3A              ;
                db $FF,$70,$36,$5D,$C7,$FD                      ;

DATA_04C8D8:    db $9B,$07,$0F,$52,$32,$0F,$63,$32              ; 3-4, Level #63
                db $0F,$74,$32,$FF,$20,$34,$FF,$80              ;
                db $36,$FE,$06,$0C,$81,$0C,$51,$2F              ;
                db $80,$38,$39,$0A,$4F,$80,$36,$5C              ;
                db $01,$5C,$51,$7F,$80,$38,$89,$0A              ;
                db $9F,$80,$36,$AC,$01,$AC,$51,$CF              ;
                db $80,$38,$D9,$0A,$EF,$80,$36,$FC              ;
                db $01,$FC,$51,$1F,$80,$B8,$2E,$03              ;
                db $3F,$10,$34,$3F,$A1,$3A,$3F,$80              ;
                db $36,$A7,$01,$B7,$00,$C7,$01,$DF              ;
                db $20,$34,$DF,$B0,$36,$DE,$0A,$FE              ;
                db $02,$0F,$B0,$B8,$4E,$03,$5F,$10              ;
                db $34,$5F,$A2,$34,$63,$0A,$69,$0A              ;
                db $7E,$02,$7F,$20,$34,$EE,$03,$FF              ;
                db $10,$34,$FF,$A2,$34,$03,$8A,$09              ;
                db $0A,$1E,$02,$1F,$20,$34,$EE,$03              ;
                db $FF,$10,$34,$FF,$A2,$34,$03,$8A              ;
                db $09,$0A,$14,$42,$1E,$02,$1F,$20              ;
                db $34,$7F,$B0,$36,$7E,$0A,$9E,$07              ;
                db $AF,$20,$34,$AF,$80,$38,$FE,$0A              ;
                db $FF,$20,$34,$FF,$80,$36,$2E,$86              ;
                db $3F,$80,$38,$5E,$0A,$5F,$80,$36              ;
                db $8E,$06,$9F,$80,$38,$BE,$0A,$BF              ;
                db $80,$36,$EE,$07,$EF,$80,$38,$FF              ;
                db $10,$34,$3E,$83,$3F,$A1,$3A,$3F              ;
                db $80,$36,$5E,$07,$5F,$A1,$3C,$6F              ;
                db $80,$38,$FE,$0A,$FF,$20,$34,$FF              ;
                db $80,$36,$0D,$C4,$41,$52,$51,$52              ;
                db $CD,$43,$CE,$09,$DF,$70,$38,$DE              ;
                db $0B,$DD,$42,$EF,$20,$34,$FE,$02              ;
                db $FF,$20,$34,$FF,$A1,$3A,$FF,$70              ;
                db $36,$5D,$C7,$FD                              ;

DATA_04C9D4:    db $5B,$07,$0F,$52,$32,$0F,$63,$32              ; 7-4, Level #64
                db $0F,$74,$32,$FE,$0A,$FF,$20,$34              ;
                db $FF,$80,$36,$AE,$86,$BF,$80,$38              ;
                db $BE,$07,$CF,$20,$34,$FF,$20,$34              ;
                db $FF,$A1,$3A,$FF,$80,$36,$FE,$02              ;
                db $0D,$02,$27,$32,$46,$61,$55,$62              ;
                db $5E,$0E,$64,$39,$65,$39,$66,$39              ;
                db $67,$39,$04,$E3,$1E,$02,$14,$63              ;
                db $68,$3C,$74,$3A,$7D,$4B,$5E,$8E              ;
                db $64,$39,$65,$39,$66,$39,$67,$39              ;
                db $7D,$4B,$04,$B7,$05,$37,$06,$37              ;
                db $07,$37,$7E,$02,$84,$62,$94,$61              ;
                db $A4,$31,$BD,$4B,$CE,$06,$CF,$A1              ;
                db $3C,$DF,$80,$38,$FF,$A1,$3A,$FF              ;
                db $80,$36,$FE,$02,$0D,$06,$34,$31              ;
                db $3E,$0A,$3F,$B0,$36,$64,$32,$75              ;
                db $0A,$7B,$61,$A4,$33,$AE,$02,$BF              ;
                db $B0,$38,$DE,$0E,$E4,$35,$E5,$35              ;
                db $E6,$35,$E7,$35,$3E,$82,$64,$32              ;
                db $78,$32,$B4,$36,$C8,$36,$DD,$4B              ;
                db $44,$B2,$58,$32,$94,$63,$A4,$3E              ;
                db $BA,$30,$C9,$61,$CE,$06,$CF,$A1              ;
                db $3C,$DF,$80,$38,$DD,$4B,$CE,$86              ;
                db $DD,$4B,$FE,$02,$FF,$A1,$3A,$FF              ;
                db $80,$36,$2E,$86,$2F,$A1,$3C,$3F              ;
                db $80,$38,$5E,$02,$5F,$A1,$3A,$5F              ;
                db $80,$36,$7E,$06,$7F,$A1,$3C,$8F              ;
                db $80,$38,$FE,$02,$FF,$A1,$3A,$FF              ;
                db $80,$36,$1E,$86,$1F,$A1,$3C,$2F              ;
                db $80,$38,$3E,$02,$3F,$A1,$3A,$3F              ;
                db $80,$36,$5E,$06,$5F,$A1,$3C,$6F              ;
                db $80,$38,$7E,$02,$7F,$A1,$3A,$7F              ;
                db $80,$36,$9E,$06,$9F,$A1,$3C,$AF              ;
                db $80,$38,$FE,$0A,$FF,$80,$36,$0D              ;
                db $C4,$CD,$43,$CE,$09,$DE,$0B,$DD              ;
                db $42,$DF,$70,$38,$EF,$20,$34,$FE              ;
                db $02,$FF,$20,$34,$FF,$A1,$3A,$FF              ;
                db $70,$36,$5D,$C7,$FD                          ;

DATA_04CB01:    db $5B,$06,$0F,$52,$32,$0F,$63,$32              ; 8-4, Level #65
                db $0F,$74,$32,$5F,$80,$36,$5E,$0A              ;
                db $BF,$B0,$38,$BE,$02,$0D,$01,$2F              ;
                db $B0,$36,$39,$73,$5F,$B0,$38,$0D              ;
                db $03,$2F,$B0,$36,$39,$7B,$4D,$4B              ;
                db $5F,$B0,$38,$DE,$06,$DF,$A1,$3C              ;
                db $EF,$80,$38,$1F,$80,$B6,$1E,$0A              ;
                db $AE,$06,$BF,$80,$38,$C4,$33,$0F              ;
                db $80,$B6,$16,$7E,$3F,$80,$38,$9F              ;
                db $80,$36,$A5,$77,$CF,$80,$38,$FF              ;
                db $A1,$3A,$FF,$80,$36,$FE,$02,$FE              ;
                db $82,$0D,$07,$2F,$B0,$36,$39,$73              ;
                db $5F,$B0,$38,$9F,$B0,$36,$A8,$74              ;
                db $CF,$B0,$38,$ED,$4B,$3F,$B0,$B6              ;
                db $49,$7B,$6F,$B0,$38,$DF,$B0,$36              ;
                db $E8,$74,$FE,$0A,$2E,$82,$2F,$B0              ;
                db $38,$67,$02,$84,$7A,$87,$31,$0D              ;
                db $0B,$FE,$02,$0D,$0C,$2F,$B0,$36              ;
                db $39,$73,$5E,$06,$5F,$A1,$3C,$5F              ;
                db $B0,$38,$6F,$80,$38,$BF,$80,$36              ;
                db $C6,$76,$EF,$80,$38,$3F,$80,$B6              ;
                db $45,$7F,$6F,$80,$38,$BF,$80,$36              ;
                db $BE,$0A,$DD,$48,$FE,$06,$0F,$80              ;
                db $B8,$3D,$4B,$3F,$80,$36,$46,$7E              ;
                db $6F,$80,$38,$AD,$4A,$FF,$A1,$BA              ;
                db $FF,$80,$36,$FE,$02,$2F,$B0,$B6              ;
                db $39,$73,$5F,$B0,$38,$9F,$B0,$36              ;
                db $A9,$7B,$CF,$B0,$38,$4E,$8A,$4F              ;
                db $B0,$36,$9E,$07,$AF,$20,$34,$AF              ;
                db $80,$38,$FE,$0A,$FF,$20,$34,$FF              ;
                db $80,$36,$0D,$C4,$CD,$43,$CE,$09              ;
                db $DF,$70,$38,$DE,$0B,$DD,$42,$EF              ;
                db $20,$34,$FE,$02,$FF,$20,$34,$5D              ;
                db $C7,$FD                                      ;

DATA_04CC0B:    db $94,$11,$0F,$F6,$20,$FE,$10,$28              ; 3-3, Level #20
                db $94,$65,$15,$EB,$12,$FA,$41,$4A              ;
                db $96,$54,$40,$A4,$42,$B7,$13,$E9              ;
                db $19,$F5,$15,$11,$80,$47,$42,$71              ;
                db $13,$80,$41,$15,$92,$1B,$1F,$24              ;
                db $40,$55,$12,$64,$40,$95,$12,$A4              ;
                db $40,$D2,$12,$E1,$40,$13,$C0,$2C              ;
                db $17,$2F,$F2,$10,$49,$13,$83,$40              ;
                db $9F,$F4,$10,$A3,$40,$17,$92,$83              ;
                db $13,$92,$41,$B9,$14,$C5,$12,$C8              ;
                db $40,$D4,$40,$4B,$92,$78,$1B,$9C              ;
                db $94,$9F,$F1,$10,$DF,$F4,$10,$FE              ;
                db $11,$7D,$C1,$9F,$F0,$20,$9D,$C7              ;
                db $FD                                          ;

DATA_04CC74:    db $90,$B1,$0F,$F6,$20,$29,$91,$28              ; 8-3, Level #21
                db $92,$57,$F3,$C3,$25,$C7,$27,$23              ;
                db $84,$33,$20,$5C,$01,$77,$63,$88              ;
                db $62,$99,$61,$AA,$60,$BC,$01,$69              ;
                db $91,$F8,$62,$D7,$E3,$E7,$63,$33              ;
                db $A7,$37,$27,$43,$04,$CC,$01,$E7              ;
                db $73,$0C,$81,$0D,$0A,$88,$72,$E7              ;
                db $87,$39,$E1,$4E,$00,$69,$60,$87              ;
                db $60,$A5,$60,$C3,$31,$FE,$31,$6D              ;
                db $C1,$8F,$F0,$20,$8D,$C7,$FD                  ;

DATA_04CCC3:    db $52,$21,$0F,$F0,$20,$6E,$40,$58              ; 4-1, Level #22
                db $F2,$93,$01,$97,$00,$0C,$81,$97              ;
                db $40,$A6,$41,$C7,$40,$0D,$04,$03              ;
                db $01,$07,$01,$23,$01,$27,$01,$EC              ;
                db $03,$AC,$F3,$C3,$03,$78,$E2,$94              ;
                db $43,$47,$F3,$74,$43,$47,$FB,$74              ;
                db $43,$2C,$F1,$4C,$63,$47,$00,$57              ;
                db $21,$5C,$01,$7C,$72,$39,$F1,$EC              ;
                db $02,$4C,$81,$D8,$62,$EC,$01,$0D              ;
                db $0D,$0F,$F8,$30,$C7,$07,$ED,$4A              ;
                db $1D,$C1,$5F,$F6,$20,$1D,$C7,$FD              ;

DATA_04CD1B:    db $54,$21,$0F,$F6,$20,$A7,$22,$37              ; 6-2, Level #23
                db $FB,$73,$20,$83,$07,$87,$02,$93              ;
                db $20,$C7,$73,$04,$F1,$06,$31,$39              ;
                db $71,$59,$71,$E7,$73,$37,$A0,$47              ;
                db $04,$86,$7C,$E5,$71,$E7,$31,$33              ;
                db $A4,$39,$71,$A9,$71,$D3,$23,$08              ;
                db $F2,$13,$05,$27,$02,$49,$71,$75              ;
                db $75,$E8,$72,$67,$F3,$99,$71,$E7              ;
                db $20,$F4,$72,$F7,$31,$17,$A0,$33              ;
                db $20,$39,$71,$73,$28,$BC,$05,$39              ;
                db $F1,$79,$71,$A6,$21,$C3,$06,$D3              ;
                db $20,$DC,$00,$FC,$00,$07,$A2,$13              ;
                db $21,$5F,$F2,$30,$8C,$00,$98,$7A              ;
                db $C7,$63,$D9,$61,$03,$A2,$07,$22              ;
                db $74,$72,$77,$31,$E7,$73,$39,$F1              ;
                db $58,$72,$77,$73,$D8,$72,$7F,$F6              ;
                db $B0,$97,$73,$B6,$64,$C5,$65,$D4              ;
                db $66,$E3,$67,$F3,$67,$8D,$C1,$CF              ;
                db $F6,$20,$9D,$C7,$FD                          ;

DATA_04CDB0:    db $52,$31,$0F,$F0,$20,$6E,$66,$07              ; 3-1, Level #24
                db $81,$36,$01,$66,$00,$A7,$22,$08              ;
                db $F2,$67,$7B,$DC,$02,$98,$F2,$D7              ;
                db $20,$39,$F1,$9F,$F3,$30,$DC,$27              ;
                db $DC,$57,$23,$83,$57,$64,$6C,$51              ;
                db $87,$63,$99,$61,$A3,$06,$B3,$21              ;
                db $77,$F3,$F3,$21,$F7,$2A,$13,$81              ;
                db $23,$22,$53,$00,$63,$22,$E9,$0B              ;
                db $0C,$83,$13,$21,$16,$22,$33,$05              ;
                db $8F,$F5,$30,$8F,$90,$12,$EC,$01              ;
                db $63,$A0,$67,$20,$73,$01,$77,$01              ;
                db $83,$20,$87,$20,$B3,$20,$B7,$20              ;
                db $C3,$01,$C7,$00,$D3,$20,$D7,$20              ;
                db $67,$A0,$77,$07,$87,$22,$E8,$62              ;
                db $F5,$65,$1C,$82,$7F,$F8,$30,$8D              ;
                db $C1,$CF,$F6,$20,$8D,$C7,$FD                  ;

DATA_04CE2F:    db $50,$21,$07,$81,$47,$24,$57,$00              ; 1-1, Level #25
                db $63,$01,$77,$01,$C9,$71,$68,$F2              ;
                db $E7,$73,$97,$FB,$06,$83,$5C,$01              ;
                db $D7,$22,$E7,$00,$03,$A7,$6C,$02              ;
                db $B3,$22,$E3,$01,$E7,$07,$47,$A0              ;
                db $57,$06,$A7,$01,$D3,$00,$D7,$01              ;
                db $07,$81,$67,$20,$93,$22,$03,$A3              ;
                db $1C,$61,$17,$21,$6F,$F3,$30,$C7              ;
                db $63,$D8,$62,$E9,$61,$FA,$60,$4F              ;
                db $F3,$B0,$87,$63,$9C,$01,$B7,$63              ;
                db $C8,$62,$D9,$61,$EA,$60,$39,$F1              ;
                db $87,$21,$A7,$01,$B7,$20,$39,$F1              ;
                db $5F,$F8,$30,$6D,$C1,$AF,$F6,$20              ;
                db $7D,$C7,$FD                                  ;

DATA_04CE9A:    db $90,$11,$0F,$F6,$20,$FE,$10,$2A              ; 1-3 & 5-3, Level #26
                db $93,$87,$17,$A3,$14,$B2,$42,$0A              ;
                db $92,$19,$40,$36,$14,$50,$41,$82              ;
                db $16,$2B,$93,$24,$41,$BB,$14,$B8              ;
                db $00,$C2,$43,$C3,$13,$1B,$94,$67              ;
                db $12,$C4,$15,$53,$C1,$D2,$41,$12              ;
                db $C1,$29,$13,$85,$17,$1B,$92,$1A              ;
                db $42,$47,$13,$83,$41,$A7,$13,$0E              ;
                db $91,$A7,$63,$B7,$63,$C5,$65,$D5              ;
                db $65,$DD,$4A,$E3,$67,$F3,$67,$8D              ;
                db $C1,$AF,$F0,$20,$AD,$C7,$FD                  ;

DATA_04CEF1:    db $90,$11,$0F,$F6,$20,$6E,$10,$8B              ; 2-3 & 7-3, Level #27
                db $17,$AF,$F2,$30,$D8,$62,$E8,$62              ;
                db $FC,$3F,$AD,$C8,$F8,$64,$0C,$BE              ;
                db $43,$43,$F8,$64,$0C,$BE,$73,$40              ;
                db $84,$40,$93,$40,$A4,$40,$B3,$40              ;
                db $F8,$64,$48,$E4,$5C,$39,$83,$40              ;
                db $92,$41,$B3,$40,$F8,$64,$48,$E4              ;
                db $5C,$39,$F8,$64,$13,$C2,$37,$65              ;
                db $4C,$24,$63,$00,$97,$65,$C3,$42              ;
                db $0B,$97,$AC,$32,$F8,$64,$0C,$BE              ;
                db $53,$45,$9D,$48,$F8,$64,$2A,$E2              ;
                db $3C,$47,$56,$43,$BA,$62,$F8,$64              ;
                db $0C,$B7,$88,$64,$BC,$31,$D4,$45              ;
                db $FC,$31,$3C,$B1,$78,$64,$8C,$38              ;
                db $0B,$9C,$1A,$33,$18,$61,$28,$61              ;
                db $39,$60,$5D,$4A,$EE,$11,$0F,$F8              ;
                db $B0,$1D,$C1,$3F,$F0,$20,$3D,$C7              ;
                db $FD                                          ;

DATA_04CF7A:    db $52,$31,$0F,$F0,$20,$6E,$40,$F7              ; 2-1, Level #28
                db $20,$07,$84,$17,$20,$4F,$F4,$30              ;
                db $5F,$80,$12,$C3,$03,$C7,$02,$D3              ;
                db $22,$27,$E3,$39,$61,$E7,$73,$5C              ;
                db $E4,$57,$00,$6C,$73,$47,$A0,$53              ;
                db $06,$63,$22,$A7,$73,$FC,$73,$13              ;
                db $A1,$33,$05,$43,$21,$5C,$72,$C3              ;
                db $23,$CC,$03,$77,$FB,$AC,$02,$39              ;
                db $F1,$A7,$73,$D3,$04,$E8,$72,$E3              ;
                db $22,$26,$F4,$BC,$02,$8C,$81,$A8              ;
                db $62,$17,$87,$43,$24,$A7,$01,$C3              ;
                db $04,$08,$F2,$97,$21,$A3,$02,$C9              ;
                db $0B,$E1,$69,$F1,$69,$8D,$C1,$CF              ;
                db $F6,$20,$9D,$C7,$FD                          ;

DATA_04CFE7:    db $38,$11,$0F,$F6,$20,$AD,$40,$3D              ; Pipe entrance, Level #29
                db $C7,$FD                                      ;

DATA_04CFF1:    db $95,$B1,$0F,$F6,$20,$0D,$02,$C8              ; 5-1, Level #2A
                db $72,$1C,$81,$38,$72,$0D,$05,$97              ;
                db $34,$98,$62,$A3,$20,$B3,$06,$C3              ;
                db $20,$CC,$03,$F9,$91,$2C,$81,$48              ;
                db $62,$0D,$09,$37,$63,$47,$03,$57              ;
                db $21,$8C,$02,$C5,$79,$C7,$31,$F9              ;
                db $11,$39,$F1,$A9,$11,$6F,$F4,$B0              ;
                db $D3,$65,$E3,$65,$7D,$C1,$BF,$F6              ;
                db $20,$8D,$C7,$FD                              ;

DATA_04D035:    db $00,$C1,$4C,$00,$F4,$4F,$0D,$02              ; Sky Bonus Area (Day), Level #2B
                db $02,$42,$43,$4F,$52,$C2,$DE,$00              ;
                db $5A,$C2,$4D,$C7,$FD                          ;

DATA_04D04A:    db $90,$51,$0F,$F6,$20,$EE,$10,$0B              ; 4-3, Level #2C
                db $94,$33,$14,$42,$42,$77,$16,$86              ;
                db $44,$02,$92,$4A,$16,$69,$42,$73              ;
                db $14,$B0,$00,$C7,$12,$05,$C0,$1C              ;
                db $17,$1F,$F1,$10,$36,$12,$8F,$F4              ;
                db $10,$91,$40,$1B,$94,$35,$12,$34              ;
                db $42,$60,$42,$61,$12,$87,$12,$96              ;
                db $40,$A3,$14,$1C,$98,$1F,$F1,$10              ;
                db $47,$12,$9F,$F5,$10,$CC,$15,$CF              ;
                db $F1,$10,$05,$C0,$1F,$F5,$10,$39              ;
                db $12,$7C,$16,$7F,$F1,$10,$82,$40              ;
                db $98,$12,$DF,$F5,$10,$16,$C4,$17              ;
                db $14,$54,$12,$9B,$16,$28,$94,$CE              ;
                db $01,$3D,$C1,$5F,$F0,$20,$5D,$C7              ;
                db $FD                                          ;

DATA_04D0BB:    db $97,$11,$0F,$F6,$20,$FE,$10,$2B              ; 6-3, Level #2D
                db $92,$57,$12,$8B,$12,$C0,$41,$F7              ;
                db $13,$5B,$92,$69,$0B,$BB,$12,$B2              ;
                db $46,$19,$93,$71,$00,$17,$94,$7C              ;
                db $14,$7F,$F1,$10,$93,$41,$BF,$F5              ;
                db $10,$FC,$13,$FF,$F1,$10,$2F,$F5              ;
                db $90,$50,$42,$51,$12,$58,$14,$A6              ;
                db $12,$DB,$12,$1B,$93,$46,$43,$7B              ;
                db $12,$8D,$49,$B7,$14,$1B,$94,$49              ;
                db $0B,$BB,$12,$FC,$13,$FF,$F2,$10              ;
                db $03,$C1,$2F,$F5,$10,$43,$12,$4B              ;
                db $13,$77,$13,$9D,$4A,$15,$C1,$A1              ;
                db $41,$C3,$12,$FE,$01,$7D,$C1,$9F              ;
                db $F0,$20,$9D,$C7,$FD                          ;

DATA_04D128:    db $52,$21,$0F,$F0,$20,$6E,$44,$0C              ; 6-1, Level #2E
                db $F1,$4C,$01,$AA,$35,$D9,$34,$EE              ;
                db $20,$08,$B3,$37,$32,$43,$04,$4E              ;
                db $21,$53,$20,$7C,$01,$97,$21,$B7              ;
                db $07,$9C,$81,$E7,$42,$5F,$F3,$B0              ;
                db $97,$63,$AC,$02,$C5,$41,$49,$E0              ;
                db $58,$61,$76,$64,$85,$65,$94,$66              ;
                db $A4,$22,$A6,$03,$C8,$22,$DC,$02              ;
                db $68,$F2,$96,$42,$13,$82,$17,$02              ;
                db $AF,$F4,$30,$F6,$21,$FC,$06,$26              ;
                db $80,$2A,$24,$36,$01,$8C,$00,$FF              ;
                db $F5,$30,$4E,$A0,$55,$21,$77,$20              ;
                db $87,$07,$89,$22,$AE,$21,$4C,$82              ;
                db $9F,$F4,$30,$EC,$01,$03,$E7,$13              ;
                db $67,$8D,$4A,$AD,$41,$EF,$F6,$20              ;
                db $BD,$C7,$FD                                  ;

DATA_04D1A3:    db $10,$51,$4C,$00,$C7,$12,$C6,$42              ; 4-2 Warpzone, Level #2F
                db $03,$92,$02,$42,$29,$12,$63,$12              ;
                db $62,$42,$69,$14,$A5,$12,$A4,$42              ;
                db $E2,$14,$E1,$44,$F8,$16,$37,$C1              ;
                db $8F,$F8,$30,$02,$BB,$28,$7A,$68              ;
                db $7A,$A8,$7A,$E0,$6A,$F0,$6A,$6D              ;
                db $C5,$FD                                      ;

DATA_04D1D5:    db $92,$31,$0F,$F0,$20,$6E,$40,$0D              ; 8-1, Level #30
                db $02,$37,$73,$EC,$00,$0C,$80,$3C              ;
                db $00,$6C,$00,$9C,$00,$06,$C0,$C7              ;
                db $73,$06,$83,$28,$72,$96,$40,$E7              ;
                db $73,$26,$C0,$87,$7B,$D2,$41,$39              ;
                db $F1,$C8,$F2,$97,$E3,$A3,$23,$E7              ;
                db $02,$E3,$07,$F3,$22,$37,$E3,$9C              ;
                db $00,$BC,$00,$EC,$00,$0C,$80,$3C              ;
                db $00,$86,$21,$A6,$06,$B6,$24,$5C              ;
                db $80,$7C,$00,$9C,$00,$29,$E1,$DC              ;
                db $05,$F6,$41,$DC,$80,$E8,$72,$0C              ;
                db $81,$27,$73,$4C,$01,$66,$74,$0D              ;
                db $11,$3F,$F5,$30,$B6,$41,$2C,$82              ;
                db $36,$40,$7C,$02,$86,$40,$F9,$61              ;
                db $39,$E1,$AC,$04,$C6,$41,$0C,$83              ;
                db $16,$41,$88,$F2,$39,$F1,$7C,$00              ;
                db $89,$61,$9C,$00,$A7,$63,$BC,$00              ;
                db $C5,$65,$DC,$00,$E3,$67,$F3,$67              ;
                db $8D,$C1,$CF,$F6,$20,$8D,$C7,$FD              ;

DATA_04D26D:    db $55,$B1,$0F,$F6,$20,$CF,$F3,$30              ; 5-2, Level #31
                db $DF,$80,$12,$07,$B2,$15,$11,$52              ;
                db $42,$99,$0B,$AC,$02,$D3,$24,$D6              ;
                db $42,$D7,$25,$23,$84,$CF,$F3,$30              ;
                db $07,$E3,$19,$61,$78,$7A,$EF,$F3              ;
                db $30,$2C,$81,$46,$64,$55,$65,$65              ;
                db $65,$EC,$74,$47,$82,$53,$05,$63              ;
                db $21,$62,$41,$96,$22,$9A,$41,$CC              ;
                db $03,$B9,$91,$39,$F1,$63,$26,$67              ;
                db $27,$D3,$06,$FC,$01,$18,$E2,$D9              ;
                db $07,$E9,$04,$0C,$86,$37,$22,$93              ;
                db $24,$87,$84,$AC,$02,$C2,$41,$C3              ;
                db $23,$D9,$71,$FC,$01,$7F,$F1,$B0              ;
                db $9C,$00,$A7,$63,$B6,$64,$CC,$00              ;
                db $D4,$66,$E3,$67,$F3,$67,$8D,$C1              ;
                db $CF,$F6,$20,$9D,$C7,$FD                      ;

DATA_04D2EB:    db $50,$B1,$0F,$F6,$20,$FC,$00,$1F              ; 8-2, Level #32
                db $F3,$B0,$5C,$00,$65,$65,$74,$66              ;
                db $83,$67,$93,$67,$DC,$73,$4C,$80              ;
                db $B3,$20,$C9,$0B,$C3,$08,$D3,$2F              ;
                db $DC,$00,$2C,$80,$4C,$00,$8C,$00              ;
                db $D3,$2E,$ED,$4A,$FC,$00,$D7,$A1              ;
                db $EC,$01,$4C,$80,$59,$11,$D8,$11              ;
                db $DA,$10,$37,$A0,$47,$04,$99,$11              ;
                db $E7,$21,$3A,$90,$67,$20,$76,$10              ;
                db $77,$60,$87,$07,$D8,$12,$39,$F1              ;
                db $AC,$00,$E9,$71,$0C,$80,$2C,$00              ;
                db $4C,$05,$C7,$7B,$39,$F1,$EC,$00              ;
                db $F9,$11,$0C,$82,$6F,$F4,$30,$F8              ;
                db $11,$FA,$10,$7F,$F2,$B0,$AC,$00              ;
                db $B6,$64,$CC,$01,$E3,$67,$F3,$67              ;
                db $8D,$C1,$CF,$F6,$20,$8D,$C7,$FD              ;

DATA_04D36B:    db $52,$B1,$0F,$F0,$20,$6E,$45,$39              ; 7-1, Level #33
                db $91,$B3,$04,$C3,$21,$C8,$11,$CA              ;
                db $10,$49,$91,$7C,$73,$E8,$12,$88              ;
                db $91,$8A,$10,$E7,$21,$05,$91,$07              ;
                db $30,$17,$07,$27,$20,$49,$11,$9C              ;
                db $01,$C8,$72,$23,$A6,$27,$26,$D3              ;
                db $03,$D8,$7A,$89,$91,$D8,$72,$39              ;
                db $F1,$A9,$11,$09,$F1,$63,$24,$67              ;
                db $24,$D8,$62,$28,$91,$2A,$10,$56              ;
                db $21,$70,$04,$79,$0B,$8C,$00,$94              ;
                db $21,$9F,$F5,$30,$2F,$F8,$B0,$3D              ;
                db $C1,$7F,$F6,$20,$3D,$C7,$FD                  ;

DATA_04D3CA:    db $06,$C1,$4C,$00,$F4,$4F,$0D,$02              ; Sky Bonus Area (Night), Level  #34
                db $06,$20,$24,$4F,$35,$A0,$36,$20              ;
                db $53,$46,$D5,$20,$D6,$20,$34,$A1              ;
                db $73,$49,$74,$20,$94,$20,$B4,$20              ;
                db $D4,$20,$F4,$20,$2E,$80,$59,$42              ;
                db $4D,$C7,$FD                                  ;

DATA_04D3F5:    db $96,$31,$0F,$F6,$20,$0D,$03,$1A              ; 3-2, Level #35
                db $60,$77,$42,$C4,$00,$C8,$62,$B9              ;
                db $E1,$D3,$06,$D7,$07,$F9,$61,$0C              ;
                db $81,$4E,$B1,$8E,$B1,$BC,$01,$E4              ;
                db $50,$E9,$61,$0C,$81,$0D,$0A,$84              ;
                db $43,$98,$72,$0D,$0C,$0F,$F8,$30              ;
                db $1D,$C1,$5F,$F6,$20,$1D,$C7,$FD              ;

DATA_04D42D:    db $48,$0F,$0E,$01,$5E,$02,$A7,$00              ; 1-2, Level #C0
                db $BC,$73,$1A,$E0,$39,$61,$58,$62              ;
                db $77,$63,$97,$63,$B8,$62,$D6,$07              ;
                db $F8,$62,$19,$E1,$75,$52,$86,$40              ;
                db $87,$50,$95,$52,$93,$43,$A5,$21              ;
                db $C5,$52,$D6,$40,$D7,$20,$E5,$06              ;
                db $E6,$51,$3E,$8D,$5E,$03,$67,$52              ;
                db $77,$52,$7E,$02,$9E,$03,$A6,$43              ;
                db $A7,$23,$DE,$05,$FE,$02,$1E,$83              ;
                db $33,$54,$46,$40,$47,$21,$56,$04              ;
                db $5E,$02,$83,$54,$93,$52,$96,$07              ;
                db $97,$50,$BE,$03,$C7,$23,$FE,$02              ;
                db $0C,$82,$43,$45,$45,$24,$46,$24              ;
                db $90,$08,$95,$51,$78,$FA,$D7,$73              ;
                db $39,$F1,$8C,$01,$A8,$52,$B8,$52              ;
                db $CC,$01,$5F,$F3,$B0,$97,$63,$9E              ;
                db $00,$0E,$81,$16,$24,$66,$04,$8E              ;
                db $00,$FE,$01,$08,$D2,$0E,$06,$6F              ;
                db $F7,$40,$9E,$0F,$0E,$82,$2D,$47              ;
                db $28,$7A,$68,$7A,$A8,$7A,$AE,$01              ;
                db $DE,$0F,$6D,$C5,$FD                          ;

DATA_04D4D2:    db $48,$0F,$0E,$01,$5E,$02,$BC,$01              ; 4-2, Level #C1
                db $FC,$01,$2C,$82,$41,$52,$4E,$04              ;
                db $67,$25,$68,$24,$69,$24,$BA,$42              ;
                db $C7,$04,$DE,$0B,$B2,$87,$FE,$02              ;
                db $2C,$E1,$2C,$71,$67,$01,$77,$00              ;
                db $87,$01,$8E,$00,$EE,$01,$F6,$02              ;
                db $03,$85,$05,$02,$13,$21,$16,$02              ;
                db $27,$02,$2E,$02,$88,$72,$C7,$20              ;
                db $D7,$07,$E4,$76,$07,$A0,$17,$06              ;
                db $48,$7A,$76,$20,$98,$72,$79,$E1              ;
                db $88,$62,$9C,$01,$B7,$73,$DC,$01              ;
                db $F8,$62,$FE,$01,$08,$E2,$0E,$00              ;
                db $6E,$02,$73,$20,$77,$23,$83,$04              ;
                db $93,$20,$AE,$00,$FE,$0A,$0E,$82              ;
                db $39,$71,$A8,$72,$E7,$73,$0C,$81              ;
                db $8F,$F2,$30,$AE,$00,$FE,$04,$04              ;
                db $D1,$17,$04,$26,$49,$27,$29,$DF              ;
                db $F3,$30,$FE,$02,$44,$F6,$7C,$01              ;
                db $8E,$06,$BF,$F7,$40,$EE,$0F,$4D              ;
                db $C7,$0E,$82,$68,$7A,$AE,$01,$DE              ;
                db $0F,$6D,$C5,$FD                              ;

DATA_04D576:    db $48,$01,$0E,$01,$00,$5A,$3E,$06              ; Underground Bonus Area, Level #C2
                db $45,$46,$47,$46,$53,$44,$AE,$01              ;
                db $DF,$FA,$40,$4D,$C7,$0E,$81,$00              ;
                db $5A,$2E,$04,$37,$28,$3A,$48,$46              ;
                db $47,$C7,$07,$CE,$0F,$DF,$FA,$40              ;
                db $4D,$C7,$0E,$81,$00,$5A,$33,$53              ;
                db $43,$51,$46,$40,$47,$50,$53,$04              ;
                db $55,$40,$56,$50,$62,$43,$64,$40              ;
                db $65,$50,$71,$41,$73,$51,$83,$51              ;
                db $94,$40,$95,$50,$A3,$50,$A5,$40              ;
                db $A6,$50,$B3,$51,$B6,$40,$B7,$50              ;
                db $C3,$53,$DF,$FA,$40,$4D,$C7,$0E              ;
                db $81,$00,$5A,$2E,$02,$36,$47,$37              ;
                db $52,$3A,$49,$47,$25,$A7,$52,$D7              ;
                db $04,$DF,$FA,$40,$4D,$C7,$0E,$81              ;
                db $00,$5A,$3E,$02,$44,$51,$53,$44              ;
                db $54,$44,$55,$24,$A1,$54,$AE,$01              ;
                db $B4,$21,$DF,$FA,$40,$E5,$07,$4D              ;
                db $C7,$FD                                      ;

DATA_04D608:    db $41,$01,$B4,$34,$C8,$52,$F2,$51              ; Underwater Bonus Area, Level #00
                db $47,$D3,$6C,$03,$65,$49,$9E,$07              ;
                db $AF,$02,$3E,$AF,$82,$3E,$BE,$01              ;
                db $BF,$02,$3E,$BF,$82,$3E,$CC,$03              ;
                db $FE,$07,$0D,$C9,$0F,$02,$3E,$0F              ;
                db $82,$3E,$1E,$01,$1F,$02,$3E,$1F              ;
                db $82,$3E,$6C,$01,$62,$35,$63,$53              ;
                db $8A,$41,$AC,$01,$B3,$53,$E9,$51              ;
                db $26,$C3,$27,$33,$63,$43,$64,$33              ;
                db $BA,$60,$C9,$61,$CE,$0B,$DE,$0F              ;
                db $DF,$03,$3E,$DF,$73,$3E,$E5,$09              ;
                db $EF,$04,$3E,$EF,$73,$3E,$FF,$0A              ;
                db $3E,$0F,$0A,$BE,$7D,$4A,$7D,$47              ;
                db $FD                                          ;

DATA_04D671:    db $41,$01,$B8,$52,$EA,$41,$27,$B2              ; 2-2 & 7-2, Level #01
                db $B3,$42,$16,$D4,$4A,$42,$A5,$51              ;
                db $A7,$31,$27,$D3,$08,$E2,$16,$64              ;
                db $2C,$04,$38,$42,$76,$64,$88,$62              ;
                db $DE,$07,$EF,$02,$3E,$EF,$82,$3E              ;
                db $FE,$01,$FF,$02,$3E,$FF,$82,$3E              ;
                db $0D,$C9,$23,$32,$31,$51,$98,$52              ;
                db $0D,$C9,$59,$42,$63,$53,$67,$31              ;
                db $14,$C2,$36,$31,$87,$53,$17,$E3              ;
                db $29,$61,$30,$62,$3C,$08,$42,$37              ;
                db $59,$40,$6A,$42,$99,$40,$C9,$61              ;
                db $D7,$63,$39,$D1,$58,$52,$C3,$67              ;
                db $D3,$31,$DC,$06,$F7,$42,$FA,$42              ;
                db $23,$B1,$43,$67,$C3,$34,$C7,$34              ;
                db $D1,$51,$43,$B3,$47,$33,$9A,$30              ;
                db $A9,$61,$B8,$62,$BE,$0B,$CE,$0F              ;
                db $CF,$03,$3E,$CF,$73,$3E,$D5,$09              ;
                db $DF,$04,$3E,$DF,$73,$3E,$EF,$0A              ;
                db $3E,$FF,$0A,$3E,$0F,$0A,$BE,$0D              ;
                db $4A,$7D,$47,$FD                              ;

DATA_04D70D:    db $49,$0F,$1E,$01,$1F,$00,$34,$2F              ; 8-4 Underwater, Level #02
                db $B0,$34,$2F,$C0,$34,$39,$73,$5E              ;
                db $07,$5F,$A1,$3C,$5F,$B0,$38,$6F              ;
                db $80,$38,$6F,$00,$34,$AE,$0B,$AF              ;
                db $71,$3C,$BF,$30,$34,$1E,$82,$1F              ;
                db $20,$34,$1F,$A1,$3A,$1F,$70,$36              ;
                db $6E,$88,$6F,$A1,$3C,$7F,$10,$34              ;
                db $7F,$80,$38,$9E,$02,$9F,$20,$34              ;
                db $9F,$A1,$3A,$9F,$80,$36,$0D,$04              ;
                db $2E,$0B,$2F,$A1,$3C,$3F,$10,$34              ;
                db $3F,$70,$38,$3E,$0B,$4F,$40,$34              ;
                db $45,$09,$5F,$42,$28,$5F,$50,$34              ;
                db $6F,$42,$28,$7F,$42,$28,$ED,$47              ;
                db $FD                                          ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; empty
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; From here on starts duplicate code of $00C000
;; This is for SMB1 while the code at $00C000 is for
;; The Lost Levels.
;; Please refer to bank 00 for the comments
;;

CODE_04D800:    LDA $0BA5               ; $04:D800: AD A5 0B    ;\If skip player animations flag is set, return
                BNE CODE_04D859         ; $04:D803: D0 54       ;/
                LDA $06D5               ; $04:D805: AD D5 06    ;
                CMP #$18                ; $04:D808: C9 18       ;
                BEQ CODE_04D810         ; $04:D80A: F0 04       ;
                CMP #$78                ; $04:D80C: C9 78       ;
                BNE CODE_04D820         ; $04:D80E: D0 10       ;
CODE_04D810:    LDA $09                 ; $04:D810: A5 09       ;\
                AND #$07                ; $04:D812: 29 07       ; |
                BNE CODE_04D820         ; $04:D814: D0 0A       ; |
                LDA $1601               ; $04:D816: AD 01 16    ; |Play the "Mario is turning sound"
                BNE CODE_04D820         ; $04:D819: D0 05       ; |Every 7 frames
                LDA #$04                ; $04:D81B: A9 04       ; |
                STA $1601               ; $04:D81D: 8D 01 16    ;/
CODE_04D820:    STZ $028E               ; $04:D820: 9C 8E 02    ;
                LDA $06D5               ; $04:D823: AD D5 06    ;
                LSR A                   ; $04:D826: 4A          ;
                LSR A                   ; $04:D827: 4A          ;
                LSR A                   ; $04:D828: 4A          ;
                INC $028E               ; $04:D829: EE 8E 02    ;
                REP #$20                ; $04:D82C: C2 20       ;
                AND #$00FF              ; $04:D82E: 29 FF 00    ;
                XBA                     ; $04:D831: EB          ;
                CLC                     ; $04:D832: 18          ;
                ADC #$8000              ; $04:D833: 69 00 80    ;
                STA $028F               ; $04:D836: 8D 8F 02    ;
                LDA #$6000              ; $04:D839: A9 00 60    ;
                STA $0295               ; $04:D83C: 8D 95 02    ;
                LDA #$0100              ; $04:D83F: A9 00 01    ;
                STA $0293               ; $04:D842: 8D 93 02    ;
                SEP #$20                ; $04:D845: E2 20       ;
                LDA $0EC2               ; $04:D847: AD C2 0E    ;
                BEQ CODE_04D854         ; $04:D84A: F0 08       ;
                LDA $0290               ; $04:D84C: AD 90 02    ;
                ORA #$40                ; $04:D84F: 09 40       ;
                STA $0290               ; $04:D851: 8D 90 02    ;
CODE_04D854:    LDA #$0A                ; $04:D854: A9 0A       ;
                STA $0291               ; $04:D856: 8D 91 02    ;
CODE_04D859:    RTL                     ; $04:D859: 6B          ;

                STZ $0F4A               ; $04:D85A: 9C 4A 0F    ;
                LDA #$35                ; $04:D85D: A9 35       ;
                RTL                     ; $04:D85F: 6B          ;

CODE_04D860:    REP #$20                ; $04:D860: C2 20       ;16-bit A
                LDX #$1E                ; $04:D862: A2 1E       ;Load amount of loops for palette upload
CODE_04D864:    LDA $0753               ; $04:D864: AD 53 07    ;Load 'current character'
                BEQ CODE_04D86F         ; $04:D867: F0 06       ;If it is Mario, branch.
                LDA.l DATA_04D8A3,x     ; $04:D869: BF A3 D8 04 ;Load Luigi and princess kiss sequence palette
                BRA CODE_04D873         ; $04:D86D: 80 04       ;Upload them

CODE_04D86F:    LDA.l DATA_04D883,x     ; $04:D86F: BF 83 D8 04 ;Load Mario and princess kiss sequence palette
CODE_04D873:    STA $1160,x             ; $04:D873: 9D 60 11    ;Upload them. (Sequence is after bowser btw)
                DEX                     ; $04:D876: CA          ;\
                DEX                     ; $04:D877: CA          ; |If not done, loop
                BPL CODE_04D864         ; $04:D878: 10 EA       ;/ 
                SEP #$20                ; $04:D87A: E2 20       ; 8-bit A
                INC $1200               ; $04:D87C: EE 00 12    ;
                JSR CODE_04D8C3         ; $04:D87F: 20 C3 D8    ;
                RTL                     ; $04:D882: 6B          ; Return

DATA_04D883:    dw $734E,$7FFF,$14A5,$5D68                      ; Mario palette of princess kiss sequence
                dw $762E,$27BF,$31BB,$3ABF                      ;
                dw $0000,$152F,$355D,$525F                      ;
                dw $169B,$1C9F,$0C19,$0C19                      ;

DATA_04D8A3:    dw $734E,$7FFF,$14A5,$5588                      ; Luigi palette of princess kiss sequence
                dw $724D,$27BF,$31BB,$3ABF                      ;
                dw $0000,$152F,$355D,$525F                      ;
                dw $169B,$3303,$1A40,$1C9F                      ;

CODE_04D8C3:    PHB                     ; $04:D8C3: 8B          ;\  Upload the stripe image message of princess peach to the player
                PHK                     ; $04:D8C4: 4B          ; | Exact same copy of 00C0C3. Please refer to bank 00.
                PLB                     ; $04:D8C5: AB          ; |
                PHX                     ; $04:D8C6: DA          ; |
                LDA #$FF                ; $04:D8C7: A9 FF       ; |
                STA $0EEE               ; $04:D8C9: 8D EE 0E    ; |
                STZ $0EEF               ; $04:D8CC: 9C EF 0E    ; |
                STZ $0BA3               ; $04:D8CF: 9C A3 0B    ; |
                LDA #$15                ; $04:D8D2: A9 15       ; |
                STA $120B               ; $04:D8D4: 8D 0B 12    ; |
                LDA #$02                ; $04:D8D7: A9 02       ; |
                STA $120C               ; $04:D8D9: 8D 0C 12    ; |
                REP #$10                ; $04:D8DC: C2 10       ; |
                LDA $075F               ; $04:D8DE: AD 5F 07    ; |
                PHA                     ; $04:D8E1: 48          ; |
                LDA $70000F             ; $04:D8E2: AF 0F 00 70 ; |
                BNE CODE_04D8F2         ; $04:D8E6: D0 0A       ; |
                LDA $07FC               ; $04:D8E8: AD FC 07    ; |
                BEQ CODE_04D8F2         ; $04:D8EB: F0 05       ; |
                LDA #$0C                ; $04:D8ED: A9 0C       ; |
                STA $075F               ; $04:D8EF: 8D 5F 07    ; |
CODE_04D8F2:    LDA #$00                ; $04:D8F2: A9 00       ; |
                XBA                     ; $04:D8F4: EB          ; |
                LDA $0753               ; $04:D8F5: AD 53 07    ; |
                ASL A                   ; $04:D8F8: 0A          ; |
                ASL A                   ; $04:D8F9: 0A          ; |
                STA $00                 ; $04:D8FA: 85 00       ; |
                LDA $075F               ; $04:D8FC: AD 5F 07    ; |
                AND #$08                ; $04:D8FF: 29 08       ; |
                LSR A                   ; $04:D901: 4A          ; |
                LSR A                   ; $04:D902: 4A          ; |
                ORA $00                 ; $04:D903: 05 00       ; |
                TAY                     ; $04:D905: A8          ; |
                PLA                     ; $04:D906: 68          ; |
                STA $075F               ; $04:D907: 8D 5F 07    ; |
                LDX DATA_04D926,y       ; $04:D90A: BE 26 D9    ; |
                TXY                     ; $04:D90D: 9B          ; |
                LDX $1700               ; $04:D90E: AE 00 17    ; |
CODE_04D911:    LDA DATA_04D92E,y       ; $04:D911: B9 2E D9    ; |
                STA $1702,x             ; $04:D914: 9D 02 17    ; |
                INC A                   ; $04:D917: 1A          ; |
                BEQ CODE_04D91E         ; $04:D918: F0 04       ; |
                INX                     ; $04:D91A: E8          ; |
                INY                     ; $04:D91B: C8          ; |
                BRA CODE_04D911         ; $04:D91C: 80 F3       ; |

CODE_04D91E:    STX $1700               ; $04:D91E: 8E 00 17    ; |
                SEP #$10                ; $04:D921: E2 10       ; |
                PLX                     ; $04:D923: FA          ; |
                PLB                     ; $04:D924: AB          ; |
                RTS                     ; $04:D925: 60          ;/

DATA_04D926:    dw DATA_04D92E-DATA_04D92E                      ;Relative indices to next table
                dw DATA_04D9D2-DATA_04D92E                      ;
                dw DATA_04DA84-DATA_04D92E                      ;
                dw DATA_04DB28-DATA_04D92E                      ;

DATA_04D92E:    db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Mario! The kingdom is saved!
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  Now try a more difficult quest..." text.
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$0B,$16,$20,$0A,$20,$1B,$20              ; Encoded in stripe image.
                db $12,$20,$18,$20,$26,$20,$59,$85              ;
                db $00,$15,$1D,$20,$11,$20,$0E,$20              ;
                db $28,$20,$14,$20,$12,$20,$17,$20              ;
                db $10,$20,$0D,$20,$18,$20,$16,$20              ;
                db $59,$C5,$00,$11,$12,$20,$1C,$20              ;
                db $28,$20,$1C,$20,$0A,$20,$1F,$20              ;
                db $0E,$20,$0D,$20,$26,$20,$5A,$05              ;
                db $00,$0D,$17,$20,$18,$20,$20,$20              ;
                db $28,$20,$1D,$20,$1B,$20,$22,$20              ;
                db $5A,$45,$00,$0B,$0A,$20,$28,$20              ;
                db $16,$20,$18,$20,$1B,$20,$0E,$20              ;
                db $5A,$85,$00,$11,$0D,$20,$12,$20              ;
                db $0F,$20,$0F,$20,$12,$20,$0C,$20              ;
                db $1E,$20,$15,$20,$1D,$20,$5A,$C5              ;
                db $00,$0F,$1A,$20,$1E,$20,$0E,$20              ;
                db $1C,$20,$1D,$20,$29,$20,$29,$20              ;
                db $29,$20,$FF,$FF                              ;

DATA_04D9D2:    db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Mario for restoring peace to our
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  kingdom. Hurrah to our hero, Mario!" text
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$11,$16,$20,$0A,$20,$1B,$20              ; Encoded in stripe image
                db $12,$20,$18,$20,$28,$20,$0F,$20              ;
                db $18,$20,$1B,$20,$59,$85,$00,$11              ;
                db $1B,$20,$0E,$20,$1C,$20,$1D,$20              ;
                db $18,$20,$1B,$20,$12,$20,$17,$20              ;
                db $10,$20,$59,$C5,$00,$0F,$19,$20              ;
                db $0E,$20,$0A,$20,$0C,$20,$0E,$20              ;
                db $28,$20,$1D,$20,$18,$20,$5A,$05              ;
                db $00,$05,$18,$20,$1E,$20,$1B,$20              ;
                db $5A,$45,$00,$0F,$14,$20,$12,$20              ;
                db $17,$20,$10,$20,$0D,$20,$18,$20              ;
                db $16,$20,$29,$20,$5A,$85,$00,$11              ;
                db $11,$20,$1E,$20,$1B,$20,$1B,$20              ;
                db $0A,$20,$11,$20,$28,$20,$1D,$20              ;
                db $18,$20,$5A,$C5,$00,$11,$18,$20              ;
                db $1E,$20,$1B,$20,$28,$20,$11,$20              ;
                db $0E,$20,$1B,$20,$18,$20,$2B,$20              ;
                db $5B,$05,$00,$0B,$16,$20,$0A,$20              ;
                db $1B,$20,$12,$20,$18,$20,$26,$20              ;
                db $FF,$FF                                      ;

DATA_04DA84:    db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Luigi! The kingdom is saved!
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  Now try a more difficult quest..." text
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$0B,$15,$20,$1E,$20,$12,$20              ; Encoded in stripe image
                db $10,$20,$12,$20,$26,$20,$59,$85              ;
                db $00,$15,$1D,$20,$11,$20,$0E,$20              ;
                db $28,$20,$14,$20,$12,$20,$17,$20              ;
                db $10,$20,$0D,$20,$18,$20,$16,$20              ;
                db $59,$C5,$00,$11,$12,$20,$1C,$20              ;
                db $28,$20,$1C,$20,$0A,$20,$1F,$20              ;
                db $0E,$20,$0D,$20,$26,$20,$5A,$05              ;
                db $00,$0D,$17,$20,$18,$20,$20,$20              ;
                db $28,$20,$1D,$20,$1B,$20,$22,$20              ;
                db $5A,$45,$00,$0B,$0A,$20,$28,$20              ;
                db $16,$20,$18,$20,$1B,$20,$0E,$20              ;
                db $5A,$85,$00,$11,$0D,$20,$12,$20              ;
                db $0F,$20,$0F,$20,$12,$20,$0C,$20              ;
                db $1E,$20,$15,$20,$1D,$20,$5A,$C5              ;
                db $00,$0F,$1A,$20,$1E,$20,$0E,$20              ;
                db $1C,$20,$1D,$20,$29,$20,$29,$20              ;
                db $29,$20,$FF,$FF                              ;

DATA_04DB28:    db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Luigi for restoring peace to our
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  kingdom. Hurrah to our hero, Luigi!" text
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$11,$15,$20,$1E,$20,$12,$20              ; Encoded in stripe image.
                db $10,$20,$12,$20,$28,$20,$0F,$20              ;
                db $18,$20,$1B,$20,$59,$85,$00,$11              ;
                db $1B,$20,$0E,$20,$1C,$20,$1D,$20              ;
                db $18,$20,$1B,$20,$12,$20,$17,$20              ;
                db $10,$20,$59,$C5,$00,$0F,$19,$20              ;
                db $0E,$20,$0A,$20,$0C,$20,$0E,$20              ;
                db $28,$20,$1D,$20,$18,$20,$5A,$05              ;
                db $00,$05,$18,$20,$1E,$20,$1B,$20              ;
                db $5A,$45,$00,$0F,$14,$20,$12,$20              ;
                db $17,$20,$10,$20,$0D,$20,$18,$20              ;
                db $16,$20,$29,$20,$5A,$85,$00,$11              ;
                db $11,$20,$1E,$20,$1B,$20,$1B,$20              ;
                db $0A,$20,$11,$20,$28,$20,$1D,$20              ;
                db $18,$20,$5A,$C5,$00,$11,$18,$20              ;
                db $1E,$20,$1B,$20,$28,$20,$11,$20              ;
                db $0E,$20,$1B,$20,$18,$20,$2B,$20              ;
                db $5B,$05,$00,$0B,$15,$20,$1E,$20              ;
                db $12,$20,$10,$20,$12,$20,$26,$20              ;
                db $FF,$FF                                      ;

CODE_04DBDA:    PHX                     ; $04:DBDA: DA          ;
                LDA $0F85               ; $04:DBDB: AD 85 0F    ;
                BNE CODE_04DC1B         ; $04:DBDE: D0 3B       ;
                LDA $70000F             ; $04:DBE0: AF 0F 00 70 ;
                BEQ CODE_04DBE9         ; $04:DBE4: F0 03       ;
                LDA $0753               ; $04:DBE6: AD 53 07    ;
CODE_04DBE9:    ASL A                   ; $04:DBE9: 0A          ;
                ASL A                   ; $04:DBEA: 0A          ;
                ASL A                   ; $04:DBEB: 0A          ;
                ORA $0F84               ; $04:DBEC: 0D 84 0F    ;
                TAX                     ; $04:DBEF: AA          ;
                INC $0F84               ; $04:DBF0: EE 84 0F    ;
                LDA $0F84               ; $04:DBF3: AD 84 0F    ;
                CMP #$03                ; $04:DBF6: C9 03       ;
                BNE CODE_04DC02         ; $04:DBF8: D0 08       ;
                LDA #$FF                ; $04:DBFA: A9 FF       ;
                STA $00A1               ; $04:DBFC: 8D A1 00    ;
                STZ $043D               ; $04:DBFF: 9C 3D 04    ;
CODE_04DC02:    LDA.l DATA_04DC3F,x     ; $04:DC02: BF 3F DC 04 ;
                BNE CODE_04DC11         ; $04:DC06: D0 09       ;
                INC $0772               ; $04:DC08: EE 72 07    ;
                STZ $0705               ; $04:DC0B: 9C 05 07    ;
                STZ $005D               ; $04:DC0E: 9C 5D 00    ;
CODE_04DC11:    STA $0F85               ; $04:DC11: 8D 85 0F    ;
                LDA.l DATA_04DC4F,x     ; $04:DC14: BF 4F DC 04 ;
                STA $0F86               ; $04:DC18: 8D 86 0F    ;
CODE_04DC1B:    DEC $0F85               ; $04:DC1B: CE 85 0F    ;
                LDA $0F86               ; $04:DC1E: AD 86 0F    ;
                AND #$08                ; $04:DC21: 29 08       ;
                ASL A                   ; $04:DC23: 0A          ;
                ASL A                   ; $04:DC24: 0A          ;
                ASL A                   ; $04:DC25: 0A          ;
                ASL A                   ; $04:DC26: 0A          ;
                STA $0D                 ; $04:DC27: 85 0D       ;
                LDY $0F86               ; $04:DC29: AC 86 0F    ;
                LDA $0723               ; $04:DC2C: AD 23 07    ;
                BEQ CODE_04DC3D         ; $04:DC2F: F0 0C       ;
                LDA $0219               ; $04:DC31: AD 19 02    ;
                CMP #$A2                ; $04:DC34: C9 A2       ;
                BCC CODE_04DC3D         ; $04:DC36: 90 05       ;
                LDA #$A2                ; $04:DC38: A9 A2       ;
                STA $0219               ; $04:DC3A: 8D 19 02    ;
CODE_04DC3D:    PLX                     ; $04:DC3D: FA          ;
                RTL                     ; $04:DC3E: 6B          ;

DATA_04DC3F:    db $18,$A0,$08,$01,$28,$10,$03,$00              ;Mario rescued peach movements duration.
                db $10,$A0,$08,$01,$28,$1E,$02,$00              ;Note to self: look deeper in this

DATA_04DC4F:    db $01,$00,$41,$C1,$C9,$01,$01,$00              ;The movements
                db $01,$00,$41,$C1,$C9,$01,$01,$00              ;

CODE_04DC5F:    DEC $0F88               ; $04:DC5F: CE 88 0F    ;
                LDA $0F88               ; $04:DC62: AD 88 0F    ;
                BPL CODE_04DC7D         ; $04:DC65: 10 16       ;
                INC $0F87               ; $04:DC67: EE 87 0F    ;
                LDX $0F87               ; $04:DC6A: AE 87 0F    ;
                CPX #$05                ; $04:DC6D: E0 05       ;
                BNE CODE_04DC76         ; $04:DC6F: D0 05       ;
                LDA #$A0                ; $04:DC71: A9 A0       ;
                STA $0219               ; $04:DC73: 8D 19 02    ;
CODE_04DC76:    LDA.l DATA_04DCB4,x     ; $04:DC76: BF B4 DC 04 ;
                STA $0F88               ; $04:DC7A: 8D 88 0F    ;
CODE_04DC7D:    LDA $0F87               ; $04:DC7D: AD 87 0F    ;
                ASL A                   ; $04:DC80: 0A          ;
                TAX                     ; $04:DC81: AA          ;
                LDA.l PNTR_04DC91,x     ; $04:DC82: BF 91 DC 04 ;
                STA $00                 ; $04:DC86: 85 00       ;
                LDA.l PNTR_04DC91+1,x   ; $04:DC88: BF 92 DC 04 ;
                STA $01                 ; $04:DC8C: 85 01       ;
                JMP ($0000)             ; $04:DC8E: 6C 00 00    ;

PNTR_04DC91:    dw CODE_04DC9F                                  ;
                dw CODE_04DC9F                                  ;
                dw CODE_04DC9F                                  ;
                dw CODE_04DCB0                                  ;
                dw CODE_04DCA0                                  ;
                dw CODE_04DC9F                                  ;
                dw CODE_04DC9F                                  ;

CODE_04DC9F:    RTL                     ; $04:DC9F: 6B          ;

CODE_04DCA0:    LDA #$20                ; $04:DCA0: A9 20       ;
                STA $00                 ; $04:DCA2: 85 00       ;
                LDA #$04                ; $04:DCA4: A9 04       ;
                STA $02                 ; $04:DCA6: 85 02       ;
                LDA #$00                ; $04:DCA8: A9 00       ;
                LDX #$01                ; $04:DCAA: A2 01       ;
                JSL CODE_03C187         ; $04:DCAC: 22 87 C1 03 ;
CODE_04DCB0:    DEC $021A               ; $04:DCB0: CE 1A 02    ;
                RTL                     ; $04:DCB3: 6B          ;

DATA_04DCB4:    db $00,$30,$37,$1A,$10,$60,$FF                  ;

CODE_04DCBB:    PHX                     ; $04:DCBB: DA          ;
                LDA $03AE               ; $04:DCBC: AD AE 03    ;
                CLC                     ; $04:DCBF: 18          ;
                ADC #$07                ; $04:DCC0: 69 07       ;
                STA $08B0               ; $04:DCC2: 8D B0 08    ;
                STA $08B4               ; $04:DCC5: 8D B4 08    ;
                LDA $03B9               ; $04:DCC8: AD B9 03    ;
                STA $08B1               ; $04:DCCB: 8D B1 08    ;
                CLC                     ; $04:DCCE: 18          ;
                ADC #$10                ; $04:DCCF: 69 10       ;
                STA $08B5               ; $04:DCD1: 8D B5 08    ;
                LDX $0F87               ; $04:DCD4: AE 87 0F    ;
                CPX #$03                ; $04:DCD7: E0 03       ;
                BNE CODE_04DCE9         ; $04:DCD9: D0 0E       ;
                LDA $09                 ; $04:DCDB: A5 09       ;
                AND #$04                ; $04:DCDD: 29 04       ;
                BNE CODE_04DCE9         ; $04:DCDF: D0 08       ;
                LDA.l DATA_04DD4E,x     ; $04:DCE1: BF 4E DD 04 ;
                INC A                   ; $04:DCE5: 1A          ;
                INC A                   ; $04:DCE6: 1A          ;
                BRA CODE_04DCED         ; $04:DCE7: 80 04       ;

CODE_04DCE9:    LDA.l DATA_04DD4E,x     ; $04:DCE9: BF 4E DD 04 ;
CODE_04DCED:    STA $08B2               ; $04:DCED: 8D B2 08    ;
                CLC                     ; $04:DCF0: 18          ;
                ADC #$20                ; $04:DCF1: 69 20       ;
                STA $08B6               ; $04:DCF3: 8D B6 08    ;
                LDA #$25                ; $04:DCF6: A9 25       ;
                STA $08B3               ; $04:DCF8: 8D B3 08    ;
                STA $08B7               ; $04:DCFB: 8D B7 08    ;
                LDA $021A               ; $04:DCFE: AD 1A 02    ;
                CLC                     ; $04:DD01: 18          ;
                ADC #$07                ; $04:DD02: 69 07       ;
                SEC                     ; $04:DD04: 38          ;
                SBC $0042               ; $04:DD05: ED 42 00    ;
                LDA $0079               ; $04:DD08: AD 79 00    ;
                SBC $0043               ; $04:DD0B: ED 43 00    ;
                ORA #$02                ; $04:DD0E: 09 02       ;
                STA $0CB0               ; $04:DD10: 8D B0 0C    ;
                STA $0CB4               ; $04:DD13: 8D B4 0C    ;
                LDX $0B58               ; $04:DD16: AE 58 0B    ;
                LDA $0802,x             ; $04:DD19: BD 02 08    ;
                CMP #$F6                ; $04:DD1C: C9 F6       ;
                BNE CODE_04DD28         ; $04:DD1E: D0 08       ;
                LDA #$F0                ; $04:DD20: A9 F0       ;
                STA $0801,x             ; $04:DD22: 9D 01 08    ;
                STA $0805,x             ; $04:DD25: 9D 05 08    ;
CODE_04DD28:    LDA $25                 ; $04:DD28: A5 25       ;
                BEQ CODE_04DD4C         ; $04:DD2A: F0 20       ;
                LDA #$1C                ; $04:DD2C: A9 1C       ;
                STA $09E3               ; $04:DD2E: 8D E3 09    ;
                STA $09E7               ; $04:DD31: 8D E7 09    ;
                STA $09EB               ; $04:DD34: 8D EB 09    ;
                STA $09EF               ; $04:DD37: 8D EF 09    ;
                LDA #$80                ; $04:DD3A: A9 80       ;
                STA $09E2               ; $04:DD3C: 8D E2 09    ;
                INC A                   ; $04:DD3F: 1A          ;
                STA $09E6               ; $04:DD40: 8D E6 09    ;
                LDA #$90                ; $04:DD43: A9 90       ;
                STA $09EA               ; $04:DD45: 8D EA 09    ;
                INC A                   ; $04:DD48: 1A          ;
                STA $09EE               ; $04:DD49: 8D EE 09    ;
CODE_04DD4C:    PLX                     ; $04:DD4C: FA          ;
                RTL                     ; $04:DD4D: 6B          ;

DATA_04DD4E:    db $88,$88,$80,$82,$86,$86,$86                  ;

CODE_04DD55:    LDA $0F83               ; $04:DD55: AD 83 0F    ;
                CMP #$0A                ; $04:DD58: C9 0A       ;
                BCS CODE_04DD86         ; $04:DD5A: B0 2A       ;
                PHB                     ; $04:DD5C: 8B          ;
                PHK                     ; $04:DD5D: 4B          ;
                PLB                     ; $04:DD5E: AB          ;
                PHX                     ; $04:DD5F: DA          ;
                ASL A                   ; $04:DD60: 0A          ;
                TAX                     ; $04:DD61: AA          ;
                INC $0F83               ; $04:DD62: EE 83 0F    ;
                LDA DATA_04DD87,x       ; $04:DD65: BD 87 DD    ;
                STA $0287               ; $04:DD68: 8D 87 02    ;
                REP #$20                ; $04:DD6B: C2 20       ;
                LDA #$0800              ; $04:DD6D: A9 00 08    ;
                STA $0288               ; $04:DD70: 8D 88 02    ;
                LDA DATA_04DDAF,x       ; $04:DD73: BD AF DD    ;
                STA $028A               ; $04:DD76: 8D 8A 02    ;
                LDA DATA_04DD9B,x       ; $04:DD79: BD 9B DD    ;
                STA $0285               ; $04:DD7C: 8D 85 02    ;
                SEP #$20                ; $04:DD7F: E2 20       ;
                INC $0B76               ; $04:DD81: EE 76 0B    ;
                PLX                     ; $04:DD84: FA          ;
                PLB                     ; $04:DD85: AB          ;
CODE_04DD86:    RTL                     ; $04:DD86: 6B          ;

DATA_04DD87:    db $08,$00,$2F,$00,$2F,$00,$2F,$00              ;
                db $2F,$00,$2F,$00,$2F,$00,$1E,$00              ;
                db $1E,$00,$1A,$00                              ;

DATA_04DD9B:    dw $A000,$D100,$D800,$E000                      ;
                dw $E800,$F000,$F800,$D000                      ;
                dw $D800,$E800                                  ;

DATA_04DDAF:    dw $3000,$6080,$6400,$6800                      ;
                dw $6C00,$7000,$7400,$7800                      ;
                dw $7C00,$0400                                  ;

                PHB                     ; $04:DDC3: 8B          ;
                PHK                     ; $04:DDC4: 4B          ;
                PLB                     ; $04:DDC5: AB          ;
                PHX                     ; $04:DDC6: DA          ;
                LDA $0F83               ; $04:DDC7: AD 83 0F    ;
                ASL A                   ; $04:DDCA: 0A          ;
                TAX                     ; $04:DDCB: AA          ;
                INC $0F83               ; $04:DDCC: EE 83 0F    ;
                LDA DATA_04DDF1,x       ; $04:DDCF: BD F1 DD    ;
                STA $0287               ; $04:DDD2: 8D 87 02    ;
                REP #$20                ; $04:DDD5: C2 20       ;
                LDA #$0800              ; $04:DDD7: A9 00 08    ;
                STA $0288               ; $04:DDDA: 8D 88 02    ;
                LDA DATA_04DE19,x       ; $04:DDDD: BD 19 DE    ;
                STA $028A               ; $04:DDE0: 8D 8A 02    ;
                LDA DATA_04DE05,x       ; $04:DDE3: BD 05 DE    ;
                STA $0285               ; $04:DDE6: 8D 85 02    ;
                SEP #$20                ; $04:DDE9: E2 20       ;
                INC $0B76               ; $04:DDEB: EE 76 0B    ;
                PLX                     ; $04:DDEE: FA          ;
                PLB                     ; $04:DDEF: AB          ;
                RTL                     ; $04:DDF0: 6B          ;

DATA_04DDF1:    db $08,$00,$07,$00,$07,$00,$07,$00              ;
                db $07,$00,$07,$00,$07,$00,$07,$00              ;
                db $07,$00,$07,$00                              ;

DATA_04DE05:    dw $A000,$8100,$8800,$9000                      ;
                dw $9800,$A000,$A800,$B000                      ;
                dw $B800,$B800                                  ;

DATA_04DE19:    dw $3000,$6080,$6400,$6800                      ;
                dw $6C00,$7000,$7400,$7800                      ;
                dw $7C00,$7C00                                  ;

CODE_04DE2D:    LDA #$2E                ; $04:DE2D: A9 2E       ;
                STA $25                 ; $04:DE2F: 85 25       ;
                LDA #$80                ; $04:DE31: A9 80       ;
                STA $32                 ; $04:DE33: 85 32       ;
                LDA #$01                ; $04:DE35: A9 01       ;
                STA $19                 ; $04:DE37: 85 19       ;
                LDA $78                 ; $04:DE39: A5 78       ;
                STA $82                 ; $04:DE3B: 85 82       ;
                LDA $0219               ; $04:DE3D: AD 19 02    ;
                STA $0223               ; $04:DE40: 8D 23 02    ;
                LDA #$01                ; $04:DE43: A9 01       ;
                STA $00C5               ; $04:DE45: 8D C5 00    ;
                LDA #$18                ; $04:DE48: A9 18       ;
                STA $0241               ; $04:DE4A: 8D 41 02    ;
                STZ $0067               ; $04:DE4D: 9C 67 00    ;
                STZ $020C               ; $04:DE50: 9C 0C 02    ;
                RTL                     ; $04:DE53: 6B          ;

CODE_04DE54:    LDA $70000F             ; $04:DE54: AF 0F 00 70 ;
                BEQ CODE_04DE64         ; $04:DE58: F0 0A       ;
                LDA $075F               ; $04:DE5A: AD 5F 07    ;
                CMP #$08                ; $04:DE5D: C9 08       ;
                BCC CODE_04DE7F         ; $04:DE5F: 90 1E       ;
                JMP CODE_04DE7F         ; $04:DE61: 4C 7F DE    ;

CODE_04DE64:    LDA $075F               ; $04:DE64: AD 5F 07    ;\Load current world into stack
                PHA                     ; $04:DE67: 48          ;/
                LDA $0E24               ; $04:DE68: AD 24 0E    ;\Load loaded level into stack
                PHA                     ; $04:DE6B: 48          ;/(always 0 because it's impossible to specify the level number
                LDA $07FC               ; $04:DE6C: AD FC 07    ;\
                BNE CODE_04DE77         ; $04:DE6F: D0 06       ;/Branch if more difficult flag is set
                STZ $0E24               ; $04:DE71: 9C 24 0E    ;set loaded level to 0
                STZ $075F               ; $04:DE74: 9C 5F 07    ;Set world to 1
CODE_04DE77:    PLA                     ; $04:DE77: 68          ;\
                STA $0E24               ; $04:DE78: 8D 24 0E    ;/Recover loaded level from stack
                PLA                     ; $04:DE7B: 68          ;\
                STA $075F               ; $04:DE7C: 8D 5F 07    ;/Recover world from stack
CODE_04DE7F:    LDA #$01                ; $04:DE7F: A9 01       ;
                STA $0F82               ; $04:DE81: 8D 82 0F    ;
                STZ $0F83               ; $04:DE84: 9C 83 0F    ;
                STZ $0717               ; $04:DE87: 9C 17 07    ;Clear current demo action being executed
                RTL                     ; $04:DE8A: 6B          ;

CODE_04DE8B:    LDA $70000F             ; $04:DE8B: AF 0F 00 70 ;
                BEQ CODE_04DE94         ; $04:DE8F: F0 03       ;
                JMP CODE_04DFBF         ; $04:DE91: 4C BF DF    ;

CODE_04DE94:    PHB                     ; $04:DE94: 8B          ;
                PHK                     ; $04:DE95: 4B          ;
                PLB                     ; $04:DE96: AB          ;
                JSL CODE_04871F         ; $04:DE97: 22 1F 87 04 ;
                LDX $0F80               ; $04:DE9B: AE 80 0F    ;
                LDA $0F81               ; $04:DE9E: AD 81 0F    ;
                CMP DATA_04E25D,x       ; $04:DEA1: DD 5D E2    ;
                BCC CODE_04DEBD         ; $04:DEA4: 90 17       ;
                STZ $0F81               ; $04:DEA6: 9C 81 0F    ;
                INC $0F80               ; $04:DEA9: EE 80 0F    ;
                LDA $0F80               ; $04:DEAC: AD 80 0F    ;
                CMP #$08                ; $04:DEAF: C9 08       ;
                BCC CODE_04DEBD         ; $04:DEB1: 90 0A       ;
                BNE CODE_04DEB8         ; $04:DEB3: D0 03       ;
                STZ $0F89               ; $04:DEB5: 9C 89 0F    ;
CODE_04DEB8:    LDA #$08                ; $04:DEB8: A9 08       ;
                STA $0F80               ; $04:DEBA: 8D 80 0F    ;
CODE_04DEBD:    INC $0F81               ; $04:DEBD: EE 81 0F    ;
                LDA #$00                ; $04:DEC0: A9 00       ;
                XBA                     ; $04:DEC2: EB          ;
                LDA $0F80               ; $04:DEC3: AD 80 0F    ;
                ASL A                   ; $04:DEC6: 0A          ;
                REP #$10                ; $04:DEC7: C2 10       ;
                TAY                     ; $04:DEC9: A8          ;
                LDX DATA_04E2B4,y       ; $04:DECA: BE B4 E2    ;
                STX $ED                 ; $04:DECD: 86 ED       ;
                LDX DATA_04E280,y       ; $04:DECF: BE 80 E2    ;
                LDY #$0004              ; $04:DED2: A0 04 00    ;
CODE_04DED5:    LDA DATA_04E2FA,x       ; $04:DED5: BD FA E2    ;
                CMP #$FF                ; $04:DED8: C9 FF       ;
                BEQ CODE_04DF15         ; $04:DEDA: F0 39       ;
                CLC                     ; $04:DEDC: 18          ;
                ADC #$80                ; $04:DEDD: 69 80       ;
                STA $0801,y             ; $04:DEDF: 99 01 08    ;
                INX                     ; $04:DEE2: E8          ;
                LDA DATA_04E2FA,x       ; $04:DEE3: BD FA E2    ;
                CLC                     ; $04:DEE6: 18          ;
                ADC #$C0                ; $04:DEE7: 69 C0       ;
                STA $0800,y             ; $04:DEE9: 99 00 08    ;
                INX                     ; $04:DEEC: E8          ;
                LDA DATA_04E2FA,x       ; $04:DEED: BD FA E2    ;
                STA $0802,y             ; $04:DEF0: 99 02 08    ;
                INX                     ; $04:DEF3: E8          ;
                STZ $00                 ; $04:DEF4: 64 00       ;
                CMP #$80                ; $04:DEF6: C9 80       ;
                BCS CODE_04DEFF         ; $04:DEF8: B0 05       ;
                LDA $0753               ; $04:DEFA: AD 53 07    ;
                STA $00                 ; $04:DEFD: 85 00       ;
CODE_04DEFF:    LDA DATA_04E2FA,x       ; $04:DEFF: BD FA E2    ;
                ORA $00                 ; $04:DF02: 05 00       ;
                ORA #$20                ; $04:DF04: 09 20       ;
                STA $0803,y             ; $04:DF06: 99 03 08    ;
                INX                     ; $04:DF09: E8          ;
                LDA #$02                ; $04:DF0A: A9 02       ;
                STA $0C00,y             ; $04:DF0C: 99 00 0C    ;
                INY                     ; $04:DF0F: C8          ;
                INY                     ; $04:DF10: C8          ;
                INY                     ; $04:DF11: C8          ;
                INY                     ; $04:DF12: C8          ;
                BRA CODE_04DED5         ; $04:DF13: 80 C0       ;

CODE_04DF15:    LDX $ED                 ; $04:DF15: A6 ED       ;
CODE_04DF17:    LDA DATA_04E2FA,x       ; $04:DF17: BD FA E2    ;
                CMP #$FF                ; $04:DF1A: C9 FF       ;
                BEQ CODE_04DF64         ; $04:DF1C: F0 46       ;
                CLC                     ; $04:DF1E: 18          ;
                ADC #$80                ; $04:DF1F: 69 80       ;
                STA $0801,y             ; $04:DF21: 99 01 08    ;
                INX                     ; $04:DF24: E8          ;
                LDA DATA_04E2FA,x       ; $04:DF25: BD FA E2    ;
                CLC                     ; $04:DF28: 18          ;
                ADC #$C0                ; $04:DF29: 69 C0       ;
                CLC                     ; $04:DF2B: 18          ;
                ADC $0753               ; $04:DF2C: 6D 53 07    ;
                ADC $0753               ; $04:DF2F: 6D 53 07    ;
                ADC $0753               ; $04:DF32: 6D 53 07    ;
                ADC $0753               ; $04:DF35: 6D 53 07    ;
                STA $0800,y             ; $04:DF38: 99 00 08    ;
                INX                     ; $04:DF3B: E8          ;
                LDA DATA_04E2FA,x       ; $04:DF3C: BD FA E2    ;
                STA $0802,y             ; $04:DF3F: 99 02 08    ;
                INX                     ; $04:DF42: E8          ;
                STZ $00                 ; $04:DF43: 64 00       ;
                CMP #$80                ; $04:DF45: C9 80       ;
                BCS CODE_04DF4E         ; $04:DF47: B0 05       ;
                LDA $0753               ; $04:DF49: AD 53 07    ;
                STA $00                 ; $04:DF4C: 85 00       ;
CODE_04DF4E:    LDA DATA_04E2FA,x       ; $04:DF4E: BD FA E2    ;
                ORA $00                 ; $04:DF51: 05 00       ;
                ORA #$20                ; $04:DF53: 09 20       ;
                STA $0803,y             ; $04:DF55: 99 03 08    ;
                INX                     ; $04:DF58: E8          ;
                LDA #$02                ; $04:DF59: A9 02       ;
                STA $0C00,y             ; $04:DF5B: 99 00 0C    ;
                INY                     ; $04:DF5E: C8          ;
                INY                     ; $04:DF5F: C8          ;
                INY                     ; $04:DF60: C8          ;
                INY                     ; $04:DF61: C8          ;
                BRA CODE_04DF17         ; $04:DF62: 80 B3       ;

CODE_04DF64:    LDA $0F80               ; $04:DF64: AD 80 0F    ;
                CMP #$08                ; $04:DF67: C9 08       ;
                BNE CODE_04DFB8         ; $04:DF69: D0 4D       ;
                SEP #$10                ; $04:DF6B: E2 10       ;
                JSR CODE_04FD43         ; $04:DF6D: 20 43 FD    ;
                LDA $0F89               ; $04:DF70: AD 89 0F    ;
                LSR A                   ; $04:DF73: 4A          ;
                LSR A                   ; $04:DF74: 4A          ;
                LSR A                   ; $04:DF75: 4A          ;
                AND #$03                ; $04:DF76: 29 03       ;
                TAX                     ; $04:DF78: AA          ;
                LDA.l DATA_04E259,x     ; $04:DF79: BF 59 E2 04 ;
                CLC                     ; $04:DF7D: 18          ;
                ADC #$B0                ; $04:DF7E: 69 B0       ;
                STA $0800               ; $04:DF80: 8D 00 08    ;
                LDA $0F89               ; $04:DF83: AD 89 0F    ;
                LSR A                   ; $04:DF86: 4A          ;
                LSR A                   ; $04:DF87: 4A          ;
                STA $00                 ; $04:DF88: 85 00       ;
                LDA #$60                ; $04:DF8A: A9 60       ;
                SEC                     ; $04:DF8C: 38          ;
                SBC $00                 ; $04:DF8D: E5 00       ;
                STA $0801               ; $04:DF8F: 8D 01 08    ;
                LDA $0F89               ; $04:DF92: AD 89 0F    ;
                LSR A                   ; $04:DF95: 4A          ;
                LSR A                   ; $04:DF96: 4A          ;
                LSR A                   ; $04:DF97: 4A          ;
                LSR A                   ; $04:DF98: 4A          ;
                LSR A                   ; $04:DF99: 4A          ;
                AND #$03                ; $04:DF9A: 29 03       ;
                TAX                     ; $04:DF9C: AA          ;
                LDA.l DATA_04E255,x     ; $04:DF9D: BF 55 E2 04 ;
                STA $0802               ; $04:DFA1: 8D 02 08    ;
                LDA #$26                ; $04:DFA4: A9 26       ;
                STA $0803               ; $04:DFA6: 8D 03 08    ;
                LDA #$00                ; $04:DFA9: A9 00       ;
                STA $0C00               ; $04:DFAB: 8D 00 0C    ;
                INC $0F89               ; $04:DFAE: EE 89 0F    ;
                CPX #$03                ; $04:DFB1: E0 03       ;
                BNE CODE_04DFB8         ; $04:DFB3: D0 03       ;
                STZ $0F89               ; $04:DFB5: 9C 89 0F    ;
CODE_04DFB8:    SEP #$10                ; $04:DFB8: E2 10       ;
                JSR CODE_04E221         ; $04:DFBA: 20 21 E2    ;
                PLB                     ; $04:DFBD: AB          ;
                RTL                     ; $04:DFBE: 6B          ;

CODE_04DFBF:    LDA $075F               ; $04:DFBF: AD 5F 07    ;
                CMP #$08                ; $04:DFC2: C9 08       ;
                BCC CODE_04DFC9         ; $04:DFC4: 90 03       ;
                JMP CODE_04E0F6         ; $04:DFC6: 4C F6 E0    ;

CODE_04DFC9:    PHB                     ; $04:DFC9: 8B          ;
                PHK                     ; $04:DFCA: 4B          ;
                PLB                     ; $04:DFCB: AB          ;
                JSL CODE_04871F         ; $04:DFCC: 22 1F 87 04 ;
                LDX $0F80               ; $04:DFD0: AE 80 0F    ;
                LDA $0F81               ; $04:DFD3: AD 81 0F    ;
                CMP DATA_04E266,x       ; $04:DFD6: DD 66 E2    ;
                BCC CODE_04DFF4         ; $04:DFD9: 90 19       ;
                STZ $0F81               ; $04:DFDB: 9C 81 0F    ;
                INC $0F80               ; $04:DFDE: EE 80 0F    ;
                LDA $0F80               ; $04:DFE1: AD 80 0F    ;
                CMP #$05                ; $04:DFE4: C9 05       ;
                BNE CODE_04DFEB         ; $04:DFE6: D0 03       ;
                STZ $0F89               ; $04:DFE8: 9C 89 0F    ;
CODE_04DFEB:    CMP #$0F                ; $04:DFEB: C9 0F       ;
                BCC CODE_04DFF4         ; $04:DFED: 90 05       ;
                LDA #$06                ; $04:DFEF: A9 06       ;
                STA $0F80               ; $04:DFF1: 8D 80 0F    ;
CODE_04DFF4:    INC $0F81               ; $04:DFF4: EE 81 0F    ;
                LDA #$00                ; $04:DFF7: A9 00       ;
                XBA                     ; $04:DFF9: EB          ;
                LDA $0F80               ; $04:DFFA: AD 80 0F    ;
                ASL A                   ; $04:DFFD: 0A          ;
                REP #$10                ; $04:DFFE: C2 10       ;
                TAY                     ; $04:E000: A8          ;
                LDX DATA_04E2C6,y       ; $04:E001: BE C6 E2    ;
                STX $ED                 ; $04:E004: 86 ED       ;
                LDX DATA_04E280,y       ; $04:E006: BE 80 E2    ;
                LDY #$0004              ; $04:E009: A0 04 00    ;
CODE_04E00C:    LDA DATA_04E2FA,x       ; $04:E00C: BD FA E2    ;
                CMP #$FF                ; $04:E00F: C9 FF       ;
                BEQ CODE_04E04C         ; $04:E011: F0 39       ;
                CLC                     ; $04:E013: 18          ;
                ADC #$80                ; $04:E014: 69 80       ;
                STA $0801,y             ; $04:E016: 99 01 08    ;
                INX                     ; $04:E019: E8          ;
                LDA DATA_04E2FA,x       ; $04:E01A: BD FA E2    ;
                CLC                     ; $04:E01D: 18          ;
                ADC #$C0                ; $04:E01E: 69 C0       ;
                STA $0800,y             ; $04:E020: 99 00 08    ;
                INX                     ; $04:E023: E8          ;
                LDA DATA_04E2FA,x       ; $04:E024: BD FA E2    ;
                STA $0802,y             ; $04:E027: 99 02 08    ;
                INX                     ; $04:E02A: E8          ;
                STZ $00                 ; $04:E02B: 64 00       ;
                CMP #$80                ; $04:E02D: C9 80       ;
                BCS CODE_04E036         ; $04:E02F: B0 05       ;
                LDA $0753               ; $04:E031: AD 53 07    ;
                STA $00                 ; $04:E034: 85 00       ;
CODE_04E036:    LDA DATA_04E2FA,x       ; $04:E036: BD FA E2    ;
                ORA $00                 ; $04:E039: 05 00       ;
                ORA #$20                ; $04:E03B: 09 20       ;
                STA $0803,y             ; $04:E03D: 99 03 08    ;
                INX                     ; $04:E040: E8          ;
                LDA #$02                ; $04:E041: A9 02       ;
                STA $0C00,y             ; $04:E043: 99 00 0C    ;
                INY                     ; $04:E046: C8          ;
                INY                     ; $04:E047: C8          ;
                INY                     ; $04:E048: C8          ;
                INY                     ; $04:E049: C8          ;
                BRA CODE_04E00C         ; $04:E04A: 80 C0       ;

CODE_04E04C:    LDX $ED                 ; $04:E04C: A6 ED       ;
CODE_04E04E:    LDA DATA_04E2FA,x       ; $04:E04E: BD FA E2    ;
                CMP #$FF                ; $04:E051: C9 FF       ;
                BEQ CODE_04E09B         ; $04:E053: F0 46       ;
                CLC                     ; $04:E055: 18          ;
                ADC #$80                ; $04:E056: 69 80       ;
                STA $0801,y             ; $04:E058: 99 01 08    ;
                INX                     ; $04:E05B: E8          ;
                LDA DATA_04E2FA,x       ; $04:E05C: BD FA E2    ;
                CLC                     ; $04:E05F: 18          ;
                ADC #$C0                ; $04:E060: 69 C0       ;
                CLC                     ; $04:E062: 18          ;
                ADC $0753               ; $04:E063: 6D 53 07    ;
                ADC $0753               ; $04:E066: 6D 53 07    ;
                ADC $0753               ; $04:E069: 6D 53 07    ;
                ADC $0753               ; $04:E06C: 6D 53 07    ;
                STA $0800,y             ; $04:E06F: 99 00 08    ;
                INX                     ; $04:E072: E8          ;
                LDA DATA_04E2FA,x       ; $04:E073: BD FA E2    ;
                STA $0802,y             ; $04:E076: 99 02 08    ;
                INX                     ; $04:E079: E8          ;
                STZ $00                 ; $04:E07A: 64 00       ;
                CMP #$80                ; $04:E07C: C9 80       ;
                BCS CODE_04E085         ; $04:E07E: B0 05       ;
                LDA $0753               ; $04:E080: AD 53 07    ;
                STA $00                 ; $04:E083: 85 00       ;
CODE_04E085:    LDA DATA_04E2FA,x       ; $04:E085: BD FA E2    ;
                ORA $00                 ; $04:E088: 05 00       ;
                ORA #$20                ; $04:E08A: 09 20       ;
                STA $0803,y             ; $04:E08C: 99 03 08    ;
                INX                     ; $04:E08F: E8          ;
                LDA #$02                ; $04:E090: A9 02       ;
                STA $0C00,y             ; $04:E092: 99 00 0C    ;
                INY                     ; $04:E095: C8          ;
                INY                     ; $04:E096: C8          ;
                INY                     ; $04:E097: C8          ;
                INY                     ; $04:E098: C8          ;
                BRA CODE_04E04E         ; $04:E099: 80 B3       ;

CODE_04E09B:    LDA $0F80               ; $04:E09B: AD 80 0F    ;
                CMP #$06                ; $04:E09E: C9 06       ;
                BCC CODE_04E0EF         ; $04:E0A0: 90 4D       ;
                SEP #$10                ; $04:E0A2: E2 10       ;
                JSR CODE_04FD43         ; $04:E0A4: 20 43 FD    ;
                LDA $0F89               ; $04:E0A7: AD 89 0F    ;
                LSR A                   ; $04:E0AA: 4A          ;
                LSR A                   ; $04:E0AB: 4A          ;
                LSR A                   ; $04:E0AC: 4A          ;
                AND #$03                ; $04:E0AD: 29 03       ;
                TAX                     ; $04:E0AF: AA          ;
                LDA.l DATA_04E259,x     ; $04:E0B0: BF 59 E2 04 ;
                CLC                     ; $04:E0B4: 18          ;
                ADC #$B0                ; $04:E0B5: 69 B0       ;
                STA $0800               ; $04:E0B7: 8D 00 08    ;
                LDA $0F89               ; $04:E0BA: AD 89 0F    ;
                LSR A                   ; $04:E0BD: 4A          ;
                LSR A                   ; $04:E0BE: 4A          ;
                STA $00                 ; $04:E0BF: 85 00       ;
                LDA #$60                ; $04:E0C1: A9 60       ;
                SEC                     ; $04:E0C3: 38          ;
                SBC $00                 ; $04:E0C4: E5 00       ;
                STA $0801               ; $04:E0C6: 8D 01 08    ;
                LDA $0F89               ; $04:E0C9: AD 89 0F    ;
                LSR A                   ; $04:E0CC: 4A          ;
                LSR A                   ; $04:E0CD: 4A          ;
                LSR A                   ; $04:E0CE: 4A          ;
                LSR A                   ; $04:E0CF: 4A          ;
                LSR A                   ; $04:E0D0: 4A          ;
                AND #$03                ; $04:E0D1: 29 03       ;
                TAX                     ; $04:E0D3: AA          ;
                LDA.l DATA_04E255,x     ; $04:E0D4: BF 55 E2 04 ;
                STA $0802               ; $04:E0D8: 8D 02 08    ;
                LDA #$26                ; $04:E0DB: A9 26       ;
                STA $0803               ; $04:E0DD: 8D 03 08    ;
                LDA #$00                ; $04:E0E0: A9 00       ;
                STA $0C00               ; $04:E0E2: 8D 00 0C    ;
                INC $0F89               ; $04:E0E5: EE 89 0F    ;
                CPX #$03                ; $04:E0E8: E0 03       ;
                BNE CODE_04E0EF         ; $04:E0EA: D0 03       ;
                STZ $0F89               ; $04:E0EC: 9C 89 0F    ;
CODE_04E0EF:    SEP #$10                ; $04:E0EF: E2 10       ;
                JSR CODE_04E221         ; $04:E0F1: 20 21 E2    ;
                PLB                     ; $04:E0F4: AB          ;
                RTL                     ; $04:E0F5: 6B          ;

CODE_04E0F6:    PHB                     ; $04:E0F6: 8B          ;
                PHK                     ; $04:E0F7: 4B          ;
                PLB                     ; $04:E0F8: AB          ;
                JSL CODE_04871F         ; $04:E0F9: 22 1F 87 04 ;
                LDX $0F80               ; $04:E0FD: AE 80 0F    ;
                LDA $0F81               ; $04:E100: AD 81 0F    ;
                CMP DATA_04E276,x       ; $04:E103: DD 76 E2    ;
                BCC CODE_04E11F         ; $04:E106: 90 17       ;
                STZ $0F81               ; $04:E108: 9C 81 0F    ;
                INC $0F80               ; $04:E10B: EE 80 0F    ;
                LDA $0F80               ; $04:E10E: AD 80 0F    ;
                CMP #$09                ; $04:E111: C9 09       ;
                BCC CODE_04E11F         ; $04:E113: 90 0A       ;
                BNE CODE_04E11A         ; $04:E115: D0 03       ;
                STZ $0F89               ; $04:E117: 9C 89 0F    ;
CODE_04E11A:    LDA #$09                ; $04:E11A: A9 09       ;
                STA $0F80               ; $04:E11C: 8D 80 0F    ;
CODE_04E11F:    INC $0F81               ; $04:E11F: EE 81 0F    ;
                LDA #$00                ; $04:E122: A9 00       ;
                XBA                     ; $04:E124: EB          ;
                LDA $0F80               ; $04:E125: AD 80 0F    ;
                ASL A                   ; $04:E128: 0A          ;
                REP #$10                ; $04:E129: C2 10       ;
                TAY                     ; $04:E12B: A8          ;
                LDX DATA_04E2E6,y       ; $04:E12C: BE E6 E2    ;
                STX $ED                 ; $04:E12F: 86 ED       ;
                LDX DATA_04E2A0,y       ; $04:E131: BE A0 E2    ;
                LDY #$0004              ; $04:E134: A0 04 00    ;
CODE_04E137:    LDA DATA_04E2FA,x       ; $04:E137: BD FA E2    ;
                CMP #$FF                ; $04:E13A: C9 FF       ;
                BEQ CODE_04E177         ; $04:E13C: F0 39       ;
                CLC                     ; $04:E13E: 18          ;
                ADC #$80                ; $04:E13F: 69 80       ;
                STA $0801,y             ; $04:E141: 99 01 08    ;
                INX                     ; $04:E144: E8          ;
                LDA DATA_04E2FA,x       ; $04:E145: BD FA E2    ;
                CLC                     ; $04:E148: 18          ;
                ADC #$C0                ; $04:E149: 69 C0       ;
                STA $0800,y             ; $04:E14B: 99 00 08    ;
                INX                     ; $04:E14E: E8          ;
                LDA DATA_04E2FA,x       ; $04:E14F: BD FA E2    ;
                STA $0802,y             ; $04:E152: 99 02 08    ;
                INX                     ; $04:E155: E8          ;
                STZ $00                 ; $04:E156: 64 00       ;
                CMP #$80                ; $04:E158: C9 80       ;
                BCS CODE_04E161         ; $04:E15A: B0 05       ;
                LDA $0753               ; $04:E15C: AD 53 07    ;
                STA $00                 ; $04:E15F: 85 00       ;
CODE_04E161:    LDA DATA_04E2FA,x       ; $04:E161: BD FA E2    ;
                ORA $00                 ; $04:E164: 05 00       ;
                ORA #$20                ; $04:E166: 09 20       ;
                STA $0803,y             ; $04:E168: 99 03 08    ;
                INX                     ; $04:E16B: E8          ;
                LDA #$02                ; $04:E16C: A9 02       ;
                STA $0C00,y             ; $04:E16E: 99 00 0C    ;
                INY                     ; $04:E171: C8          ;
                INY                     ; $04:E172: C8          ;
                INY                     ; $04:E173: C8          ;
                INY                     ; $04:E174: C8          ;
                BRA CODE_04E137         ; $04:E175: 80 C0       ;

CODE_04E177:    LDX $ED                 ; $04:E177: A6 ED       ;
CODE_04E179:    LDA DATA_04E2FA,x       ; $04:E179: BD FA E2    ;
                CMP #$FF                ; $04:E17C: C9 FF       ;
                BEQ CODE_04E1C6         ; $04:E17E: F0 46       ;
                CLC                     ; $04:E180: 18          ;
                ADC #$80                ; $04:E181: 69 80       ;
                STA $0801,y             ; $04:E183: 99 01 08    ;
                INX                     ; $04:E186: E8          ;
                LDA DATA_04E2FA,x       ; $04:E187: BD FA E2    ;
                CLC                     ; $04:E18A: 18          ;
                ADC #$C0                ; $04:E18B: 69 C0       ;
                CLC                     ; $04:E18D: 18          ;
                ADC $0753               ; $04:E18E: 6D 53 07    ;
                ADC $0753               ; $04:E191: 6D 53 07    ;
                ADC $0753               ; $04:E194: 6D 53 07    ;
                ADC $0753               ; $04:E197: 6D 53 07    ;
                STA $0800,y             ; $04:E19A: 99 00 08    ;
                INX                     ; $04:E19D: E8          ;
                LDA DATA_04E2FA,x       ; $04:E19E: BD FA E2    ;
                STA $0802,y             ; $04:E1A1: 99 02 08    ;
                INX                     ; $04:E1A4: E8          ;
                STZ $00                 ; $04:E1A5: 64 00       ;
                CMP #$80                ; $04:E1A7: C9 80       ;
                BCS CODE_04E1B0         ; $04:E1A9: B0 05       ;
                LDA $0753               ; $04:E1AB: AD 53 07    ;Load char palette
                STA $00                 ; $04:E1AE: 85 00       ;Store in scratch RAM
CODE_04E1B0:    LDA DATA_04E2FA,x       ; $04:E1B0: BD FA E2    ;Load data
                ORA $00                 ; $04:E1B3: 05 00       ;ORA with char palette. 01 = luigi
                ORA #$20                ; $04:E1B5: 09 20       ;ORA #$20
                STA $0803,y             ; $04:E1B7: 99 03 08    ;
                INX                     ; $04:E1BA: E8          ;
                LDA #$02                ; $04:E1BB: A9 02       ;
                STA $0C00,y             ; $04:E1BD: 99 00 0C    ;
                INY                     ; $04:E1C0: C8          ;
                INY                     ; $04:E1C1: C8          ;
                INY                     ; $04:E1C2: C8          ;
                INY                     ; $04:E1C3: C8          ;
                BRA CODE_04E179         ; $04:E1C4: 80 B3       ;

CODE_04E1C6:    LDA $0F80               ; $04:E1C6: AD 80 0F    ;
                CMP #$09                ; $04:E1C9: C9 09       ;
                BNE CODE_04E21A         ; $04:E1CB: D0 4D       ;
                SEP #$10                ; $04:E1CD: E2 10       ;
                JSR CODE_04FD43         ; $04:E1CF: 20 43 FD    ;
                LDA $0F89               ; $04:E1D2: AD 89 0F    ;
                LSR A                   ; $04:E1D5: 4A          ;
                LSR A                   ; $04:E1D6: 4A          ;
                LSR A                   ; $04:E1D7: 4A          ;
                AND #$03                ; $04:E1D8: 29 03       ;
                TAX                     ; $04:E1DA: AA          ;
                LDA.l DATA_04E259,x     ; $04:E1DB: BF 59 E2 04 ;
                CLC                     ; $04:E1DF: 18          ;
                ADC #$B0                ; $04:E1E0: 69 B0       ;
                STA $0800               ; $04:E1E2: 8D 00 08    ;
                LDA $0F89               ; $04:E1E5: AD 89 0F    ;
                LSR A                   ; $04:E1E8: 4A          ;
                LSR A                   ; $04:E1E9: 4A          ;
                STA $00                 ; $04:E1EA: 85 00       ;
                LDA #$60                ; $04:E1EC: A9 60       ;
                SEC                     ; $04:E1EE: 38          ;
                SBC $00                 ; $04:E1EF: E5 00       ;
                STA $0801               ; $04:E1F1: 8D 01 08    ;
                LDA $0F89               ; $04:E1F4: AD 89 0F    ;
                LSR A                   ; $04:E1F7: 4A          ;
                LSR A                   ; $04:E1F8: 4A          ;
                LSR A                   ; $04:E1F9: 4A          ;
                LSR A                   ; $04:E1FA: 4A          ;
                LSR A                   ; $04:E1FB: 4A          ;
                AND #$03                ; $04:E1FC: 29 03       ;
                TAX                     ; $04:E1FE: AA          ;
                LDA.l DATA_04E255,x     ; $04:E1FF: BF 55 E2 04 ;
                STA $0802               ; $04:E203: 8D 02 08    ;
                LDA #$26                ; $04:E206: A9 26       ;
                STA $0803               ; $04:E208: 8D 03 08    ;
                LDA #$00                ; $04:E20B: A9 00       ;
                STA $0C00               ; $04:E20D: 8D 00 0C    ;
                INC $0F89               ; $04:E210: EE 89 0F    ;
                CPX #$03                ; $04:E213: E0 03       ;
                BNE CODE_04E21A         ; $04:E215: D0 03       ;
                STZ $0F89               ; $04:E217: 9C 89 0F    ;
CODE_04E21A:    SEP #$10                ; $04:E21A: E2 10       ;
                JSR CODE_04E221         ; $04:E21C: 20 21 E2    ;
                PLB                     ; $04:E21F: AB          ;
                RTL                     ; $04:E220: 6B          ;

CODE_04E221:    LDA $0753               ; $04:E221: AD 53 07    ;
                BEQ CODE_04E254         ; $04:E224: F0 2E       ;
                LDA $0806               ; $04:E226: AD 06 08    ;
                CMP #$EE                ; $04:E229: C9 EE       ;
                BNE CODE_04E254         ; $04:E22B: D0 27       ;
                LDA $0804               ; $04:E22D: AD 04 08    ;
                DEC A                   ; $04:E230: 3A          ;
                DEC A                   ; $04:E231: 3A          ;
                STA $0804               ; $04:E232: 8D 04 08    ;
                STA $0808               ; $04:E235: 8D 08 08    ;
                LDA #$82                ; $04:E238: A9 82       ;
                STA $0806               ; $04:E23A: 8D 06 08    ;
                INC A                   ; $04:E23D: 1A          ;
                STA $080A               ; $04:E23E: 8D 0A 08    ;
                LDA $0804               ; $04:E241: AD 04 08    ;
                CLC                     ; $04:E244: 18          ;
                ADC #$08                ; $04:E245: 69 08       ;
                STA $0808               ; $04:E247: 8D 08 08    ;
                LDA #$85                ; $04:E24A: A9 85       ;
                STA $080E               ; $04:E24C: 8D 0E 08    ;
                LDA #$89                ; $04:E24F: A9 89       ;
                STA $0812               ; $04:E251: 8D 12 08    ;
CODE_04E254:    RTS                     ; $04:E254: 60          ;

DATA_04E255:    db $5F,$5E,$5D,$5C                              ;

DATA_04E259:    db $00,$02,$00,$FE                              ;

DATA_04E25D:    db $50,$30,$08,$08,$20,$20,$08,$08              ;
                db $FF                                          ;

DATA_04E266:    db $50,$30,$08,$08,$20,$20,$08,$08              ;
                db $0C,$08,$08,$0C,$08,$08,$0C,$FF              ;

DATA_04E276:    db $60,$08,$08,$10,$14,$10,$14,$10              ;
                db $14,$FF                                      ;

DATA_04E280:    dw $0000,$008A,$011C,$01AE                      ;
                dw $0244,$02D2,$0360,$045F                      ;
                dw $055E,$055E,$055E,$055E                      ;
                dw $055E,$055E,$055E,$055E                      ;

DATA_04E2A0:    dw $06BE,$0789,$07CE,$06FF                      ;
                dw $0744,$06FF,$0744,$06FF                      ;
                dw $0744,$06FF                                  ;

DATA_04E2B4:    dw $0041,$00CB,$015D,$01F3                      ;
                dw $0289,$0317,$03A5,$04A4                      ;
                dw $05A3                                        ;

DATA_04E2C6:    dw $0041,$00CB,$015D,$01F3                      ;
                dw $0289,$0317,$03F6,$04F5                      ;
                dw $05F4,$03F6,$04F5,$05F4                      ;
                dw $03F6,$04F5,$05F4,$065D                      ;

DATA_04E2E6:    dw $0813,$091E,$0977,$086C                      ;
                dw $08C5,$086C,$08C5,$086C                      ;
                dw $08C5,$086C                                  ;
                                                       ;Tilemap for Mario and Princess image frames
DATA_04E2FA:    db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06              ;These tables are for the Princess kiss Mario-
                db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06              ; Sequence. This is table 0, next one is 1 etc
                db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06              ;The even-numbered tables are for the Princess
                db $08,$EC,$E0,$06,$08,$FC,$E2,$06              ;The odd-numbered tables are for Mario/Luigi.
                db $08,$0C,$E4,$06,$10,$CC,$8D,$06              ;The format of these bytes are the following:
                db $10,$D4,$8E,$06,$10,$E4,$AC,$06              ;$XX,$YY,$TT,$PP
                db $10,$F4,$AE,$06,$18,$F4,$CC,$06              ;XX = Xpos, YY = Ypos, TT = Tile, PP = Priority
                db $18,$04,$CE,$06,$18,$14,$EC,$06              ;basically the OAM format.
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;These huge tables took ages to sort out...
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06              ;
                db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06              ;
                db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06              ;
                db $08,$EC,$E0,$06,$08,$FC,$E2,$06              ;
                db $08,$0C,$E4,$06,$10,$CC,$8D,$06              ;
                db $10,$D4,$8E,$06,$10,$E4,$AC,$06              ;
                db $10,$F4,$AE,$06,$18,$F4,$CC,$06              ;
                db $18,$04,$CE,$06,$18,$14,$EC,$06              ;
                db $FF                                          ;

                db $F0,$D0,$14,$06,$F0,$E0,$16,$06              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $E8,$EB,$A0,$06,$E8,$FB,$A2,$06              ;
                db $E8,$0B,$A4,$06,$F8,$EB,$C0,$06              ;
                db $F8,$FB,$C2,$06,$F8,$0B,$C4,$06              ;
                db $08,$EB,$E0,$06,$08,$FB,$E2,$06              ;
                db $08,$0B,$E4,$06,$10,$CB,$8D,$06              ;
                db $10,$D3,$8E,$06,$10,$E3,$AC,$06              ;
                db $10,$F3,$AE,$06,$18,$F3,$CC,$06              ;
                db $18,$03,$CE,$06,$18,$13,$EC,$06              ;
                db $FF                                          ;

                db $F0,$D0,$14,$06,$F0,$E0,$16,$06              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D5,$EE,$06,$00,$D5,$EE,$06              ;
                db $10,$DB,$88,$06,$10,$E2,$89,$06              ;
                db $E8,$EA,$A0,$06,$E8,$FA,$A2,$06              ;
                db $E8,$0A,$A4,$06,$F8,$EA,$C0,$06              ;
                db $F8,$FA,$C2,$06,$F8,$0A,$C4,$06              ;
                db $08,$EA,$E0,$06,$08,$FA,$E2,$06              ;
                db $08,$0A,$E4,$06,$10,$F2,$8B,$06              ;
                db $18,$F2,$CC,$06,$18,$02,$CE,$06              ;
                db $18,$12,$EC,$06,$FF                          ;

                db $F0,$D0,$14,$06,$F0,$E0,$16,$06              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D4,$EE,$06,$00,$D4,$EE,$06              ;
                db $10,$DA,$88,$06,$10,$E1,$89,$06              ;
                db $E8,$E9,$A0,$06,$E8,$F9,$A2,$06              ;
                db $E8,$09,$A4,$06,$F8,$E9,$C0,$06              ;
                db $F8,$F9,$C2,$06,$F8,$09,$C4,$06              ;
                db $08,$E9,$E0,$06,$08,$F9,$E2,$06              ;
                db $08,$09,$E4,$06,$10,$F1,$8B,$06              ;
                db $18,$F1,$CC,$06,$18,$01,$CE,$06              ;
                db $18,$11,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0E,$06              ;
                db $E8,$E0,$0E,$46,$00,$D0,$3E,$06              ;
                db $00,$E0,$3E,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2E,$06              ;
                db $F8,$E0,$2E,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $F0,$D0,$42,$06,$F0,$E0,$42,$46              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $00,$D0,$60,$06,$00,$E0,$60,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$00,$D0,$3C,$06              ;
                db $00,$E0,$3C,$46,$E8,$D0,$0C,$06              ;
                db $E8,$E0,$0C,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$E0,$2C,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $F0,$D0,$62,$06,$F0,$E0,$62,$46              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $00,$D0,$60,$06,$00,$E0,$60,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$E0,$0C,$46,$00,$D0,$3C,$06              ;
                db $00,$E0,$3C,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$E0,$2C,$46,$F8,$F0,$48,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $F0,$D0,$40,$06,$F0,$E0,$40,$46              ;
                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $00,$D0,$60,$06,$00,$E0,$60,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$D0,$2A,$06,$E8,$E0,$0C,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F8,$C0,$48,$06,$F8,$D0,$2C,$06              ;
                db $F8,$D0,$4A,$06,$F8,$E0,$2C,$46              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $00,$D0,$60,$06,$00,$E0,$60,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $E8,$EA,$A0,$06,$E8,$FA,$A2,$06              ;
                db $E8,$0A,$A4,$06,$F8,$EA,$C0,$06              ;
                db $F8,$FA,$C2,$06,$F8,$0A,$C4,$06              ;
                db $08,$EA,$E0,$06,$08,$FA,$E2,$06              ;
                db $08,$0A,$E4,$06,$10,$CA,$8D,$06              ;
                db $10,$D2,$8E,$06,$10,$E2,$AC,$06              ;
                db $10,$F2,$AE,$06,$18,$F2,$CC,$06              ;
                db $18,$02,$CE,$06,$18,$12,$EC,$06              ;
                db $FF                                          ;

                db $00,$D2,$EE,$06,$00,$D2,$EE,$06              ;
                db $10,$D8,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $00,$D2,$EE,$06,$00,$D2,$EE,$06              ;
                db $10,$D8,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A0,$06,$E8,$F8,$A2,$06              ;
                db $E8,$08,$A4,$06,$F8,$E8,$C0,$06              ;
                db $F8,$F8,$C2,$06,$F8,$08,$C4,$06              ;
                db $08,$E8,$E0,$06,$08,$F8,$E2,$06              ;
                db $08,$08,$E4,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E1,$89,$06              ;
                db $E8,$E9,$A6,$06,$E8,$F9,$A8,$06              ;
                db $E8,$09,$AA,$06,$F8,$E9,$C6,$06              ;
                db $F8,$F9,$C8,$06,$F8,$09,$CA,$06              ;
                db $08,$E9,$E6,$06,$08,$F9,$E8,$06              ;
                db $08,$09,$EA,$06,$10,$F1,$8B,$06              ;
                db $18,$F1,$CC,$06,$18,$01,$CE,$06              ;
                db $18,$11,$EC,$06,$FF                          ;

                db $00,$D2,$EE,$06,$00,$D2,$EE,$06              ;
                db $10,$D8,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$E0,$34,$06,$E8,$E0,$2A,$46              ;
                db $E8,$F0,$28,$46,$F0,$E0,$44,$06              ;
                db $F8,$C0,$48,$06,$F8,$F0,$48,$46              ;
                db $00,$D0,$3C,$06,$00,$E0,$64,$06              ;
                db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $F0,$E0,$10,$06,$E8,$D0,$36,$06              ;
                db $E8,$E0,$36,$46,$E8,$E0,$2A,$46              ;
                db $E8,$F0,$28,$46,$F0,$D0,$46,$06              ;
                db $E8,$C0,$28,$06,$F8,$C0,$48,$06              ;
                db $00,$E0,$12,$06,$F8,$E0,$4A,$46              ;
                db $F8,$F0,$48,$46,$00,$D0,$66,$06              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $F0,$E0,$10,$06,$E8,$C0,$28,$06              ;
                db $E8,$D0,$36,$06,$E8,$E0,$36,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F0,$D0,$46,$06,$F8,$C0,$48,$06              ;
                db $00,$E0,$12,$06,$F8,$E0,$4A,$46              ;
                db $F8,$F0,$48,$46,$00,$D0,$66,$06              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$E0,$34,$06,$E8,$E0,$2A,$46              ;
                db $E8,$F0,$28,$46,$F0,$E0,$44,$06              ;
                db $F8,$C0,$48,$06,$F8,$F0,$48,$46              ;
                db $00,$D0,$3C,$06,$00,$E0,$64,$06              ;
                db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

                db $D8,$D0,$0A,$06,$D8,$E0,$08,$06              ;
                db $E8,$C0,$28,$06,$E8,$D0,$0C,$06              ;
                db $E8,$E0,$34,$06,$E8,$E0,$2A,$46              ;
                db $E8,$F0,$28,$46,$F0,$E0,$44,$06              ;
                db $F8,$C0,$48,$06,$F8,$F0,$48,$46              ;
                db $00,$D0,$3C,$06,$00,$E0,$64,$06              ;
                db $F8,$D0,$2C,$06,$F8,$E0,$4A,$46              ;
                db $08,$C0,$68,$06,$08,$D0,$6A,$06              ;
                db $08,$E0,$6A,$46,$08,$F0,$68,$46              ;
                db $18,$C0,$6E,$46,$18,$D0,$6C,$46              ;
                db $18,$E0,$6C,$06,$18,$F0,$6E,$06              ;
                db $FF                                          ;

CODE_04ECCA:    LDA #$1E                ; $04:ECCA: A9 1E       ;
                STA $0287               ; $04:ECCC: 8D 87 02    ;
                REP #$20                ; $04:ECCF: C2 20       ;
                LDA #$0800              ; $04:ECD1: A9 00 08    ;
                STA $0288               ; $04:ECD4: 8D 88 02    ;
                LDA #$7800              ; $04:ECD7: A9 00 78    ;
                STA $028A               ; $04:ECDA: 8D 8A 02    ;
                LDA $075F               ; $04:ECDD: AD 5F 07    ;
                AND #$00FF              ; $04:ECE0: 29 FF 00    ;
                CMP #$0007              ; $04:ECE3: C9 07 00    ;
                BNE CODE_04ECED         ; $04:ECE6: D0 05       ;
                LDA #$D000              ; $04:ECE8: A9 00 D0    ;
                BRA CODE_04ECF0         ; $04:ECEB: 80 03       ;

CODE_04ECED:    LDA #$C000              ; $04:ECED: A9 00 C0    ;
CODE_04ECF0:    STA $0285               ; $04:ECF0: 8D 85 02    ;
                SEP #$20                ; $04:ECF3: E2 20       ;
                STZ $0F7D               ; $04:ECF5: 9C 7D 0F    ;
                STZ $0F7E               ; $04:ECF8: 9C 7E 0F    ;
                STZ $0F7F               ; $04:ECFB: 9C 7F 0F    ;
                STZ $0B9C               ; $04:ECFE: 9C 9C 0B    ;
                LDA #$02                ; $04:ED01: A9 02       ;
                STA $0B76               ; $04:ED03: 8D 76 0B    ;
                RTL                     ; $04:ED06: 6B          ;

CODE_04ED07:    PHX                     ; $04:ED07: DA          ;
                LDA #$1E                ; $04:ED08: A9 1E       ;
                STA $0287               ; $04:ED0A: 8D 87 02    ;
                REP #$20                ; $04:ED0D: C2 20       ;
                LDA #$0800              ; $04:ED0F: A9 00 08    ;
                STA $0288               ; $04:ED12: 8D 88 02    ;
                LDA #$7C00              ; $04:ED15: A9 00 7C    ;
                STA $028A               ; $04:ED18: 8D 8A 02    ;
                LDA $075F               ; $04:ED1B: AD 5F 07    ;
                AND #$00FF              ; $04:ED1E: 29 FF 00    ;
                ASL A                   ; $04:ED21: 0A          ;
                TAX                     ; $04:ED22: AA          ;
                LDA.l DATA_04ED5A,x     ; $04:ED23: BF 5A ED 04 ;
                STA $0285               ; $04:ED27: 8D 85 02    ;
                SEP #$20                ; $04:ED2A: E2 20       ;
                PLX                     ; $04:ED2C: FA          ;
                RTL                     ; $04:ED2D: 6B          ;

CODE_04ED2E:    LDA #$80                ; $04:ED2E: A9 80       ;
                STA $2115               ; $04:ED30: 8D 15 21    ;
                REP #$20                ; $04:ED33: C2 20       ;
                LDA #$6000              ; $04:ED35: A9 00 60    ;
                STA $2116               ; $04:ED38: 8D 16 21    ;
                LDA #$1801              ; $04:ED3B: A9 01 18    ;
                STA $4300               ; $04:ED3E: 8D 00 43    ;
                LDA.w #DATA_078000      ; $04:ED41: A9 00 80    ;
                STA $4302               ; $04:ED44: 8D 02 43    ;
                LDX.b #DATA_078000>>16  ; $04:ED47: A2 07       ;
                STX $4304               ; $04:ED49: 8E 04 43    ;
                LDA #$4000              ; $04:ED4C: A9 00 40    ;
                STA $4305               ; $04:ED4F: 8D 05 43    ;
                LDX #$01                ; $04:ED52: A2 01       ;
                STX $420B               ; $04:ED54: 8E 0B 42    ;
                SEP #$20                ; $04:ED57: E2 20       ;
                RTL                     ; $04:ED59: 6B          ;

DATA_04ED5A:    dw $C800,$C800,$C800,$C800                      ;
                dw $E800,$E000,$E000,$D000                      ;
                dw $C800,$E800,$E000,$E000                      ;
                dw $D000,$D000,$D000,$D000                      ;

CODE_04ED7A:    LDA $0F7E               ; $04:ED7A: AD 7E 0F    ;
                BEQ CODE_04ED82         ; $04:ED7D: F0 03       ;
                JMP CODE_04EE26         ; $04:ED7F: 4C 26 EE    ;

CODE_04ED82:    LDA $09                 ; $04:ED82: A5 09       ;
                AND #$07                ; $04:ED84: 29 07       ;
                BEQ CODE_04ED8D         ; $04:ED86: F0 05       ;
                LDA $0F7D               ; $04:ED88: AD 7D 0F    ;
                BRA CODE_04EDAF         ; $04:ED8B: 80 22       ;

CODE_04ED8D:    INC $0F7D               ; $04:ED8D: EE 7D 0F    ;
                LDA $0F7D               ; $04:ED90: AD 7D 0F    ;
                CMP #$03                ; $04:ED93: C9 03       ;
                BCC CODE_04EDAF         ; $04:ED95: 90 18       ;
                LDA $07B9               ; $04:ED97: AD B9 07    ;
                EOR $07BA               ; $04:ED9A: 4D BA 07    ;
                AND #$01                ; $04:ED9D: 29 01       ;
                BNE CODE_04EDAA         ; $04:ED9F: D0 09       ;
                LDA #$03                ; $04:EDA1: A9 03       ;
                STA $0F7D               ; $04:EDA3: 8D 7D 0F    ;
                LDA #$01                ; $04:EDA6: A9 01       ;
                BRA CODE_04EDAF         ; $04:EDA8: 80 05       ;

CODE_04EDAA:    LDA #$00                ; $04:EDAA: A9 00       ;
                STA $0F7D               ; $04:EDAC: 8D 7D 0F    ;
CODE_04EDAF:    STA $00                 ; $04:EDAF: 85 00       ;
                LDA $79                 ; $04:EDB1: A5 79       ;
                XBA                     ; $04:EDB3: EB          ;
                LDA $021A               ; $04:EDB4: AD 1A 02    ;
                LDY #$00                ; $04:EDB7: A0 00       ;
                JSR CODE_04FCFD         ; $04:EDB9: 20 FD FC    ;
                LDA $79                 ; $04:EDBC: A5 79       ;
                XBA                     ; $04:EDBE: EB          ;
                LDA $021A               ; $04:EDBF: AD 1A 02    ;
                REP #$20                ; $04:EDC2: C2 20       ;
                CLC                     ; $04:EDC4: 18          ;
                ADC #$0008              ; $04:EDC5: 69 08 00    ;
                SEP #$20                ; $04:EDC8: E2 20       ;
                LDY #$04                ; $04:EDCA: A0 04       ;
                JSR CODE_04FCFD         ; $04:EDCC: 20 FD FC    ;
                LDA $00                 ; $04:EDCF: A5 00       ;
                CMP #$02                ; $04:EDD1: C9 02       ;
                BEQ CODE_04EE02         ; $04:EDD3: F0 2D       ;
                CMP #$00                ; $04:EDD5: C9 00       ;
                BNE CODE_04EDDD         ; $04:EDD7: D0 04       ;
                LDA #$83                ; $04:EDD9: A9 83       ;
                BRA CODE_04EDDF         ; $04:EDDB: 80 02       ;

CODE_04EDDD:    LDA #$80                ; $04:EDDD: A9 80       ;
CODE_04EDDF:    STA $0902               ; $04:EDDF: 8D 02 09    ;
                INC A                   ; $04:EDE2: 1A          ;
                STA $0906               ; $04:EDE3: 8D 06 09    ;
                CLC                     ; $04:EDE6: 18          ;
                ADC #$1F                ; $04:EDE7: 69 1F       ;
                STA $090A               ; $04:EDE9: 8D 0A 09    ;
                INC A                   ; $04:EDEC: 1A          ;
                STA $090E               ; $04:EDED: 8D 0E 09    ;
                LDA #$B0                ; $04:EDF0: A9 B0       ;
                STA $0901               ; $04:EDF2: 8D 01 09    ;
                STA $0905               ; $04:EDF5: 8D 05 09    ;
                LDA #$C0                ; $04:EDF8: A9 C0       ;
                STA $0909               ; $04:EDFA: 8D 09 09    ;
                STA $090D               ; $04:EDFD: 8D 0D 09    ;
                BRA CODE_04EE25         ; $04:EE00: 80 23       ;

CODE_04EE02:    LDA #$86                ; $04:EE02: A9 86       ;
                STA $0902               ; $04:EE04: 8D 02 09    ;
                INC A                   ; $04:EE07: 1A          ;
                STA $0906               ; $04:EE08: 8D 06 09    ;
                CLC                     ; $04:EE0B: 18          ;
                ADC #$0F                ; $04:EE0C: 69 0F       ;
                STA $090A               ; $04:EE0E: 8D 0A 09    ;
                INC A                   ; $04:EE11: 1A          ;
                STA $090E               ; $04:EE12: 8D 0E 09    ;
                LDA #$B8                ; $04:EE15: A9 B8       ;
                STA $0901               ; $04:EE17: 8D 01 09    ;
                STA $0905               ; $04:EE1A: 8D 05 09    ;
                LDA #$C0                ; $04:EE1D: A9 C0       ;
                STA $0909               ; $04:EE1F: 8D 09 09    ;
                STA $090D               ; $04:EE22: 8D 0D 09    ;
CODE_04EE25:    RTL                     ; $04:EE25: 6B          ;

CODE_04EE26:    PHB                     ; $04:EE26: 8B          ;
                PHK                     ; $04:EE27: 4B          ;
                PLB                     ; $04:EE28: AB          ;
                PHX                     ; $04:EE29: DA          ;
                PHY                     ; $04:EE2A: 5A          ;
                LDA $075F               ; $04:EE2B: AD 5F 07    ;
                ASL A                   ; $04:EE2E: 0A          ;
                TAX                     ; $04:EE2F: AA          ;
                LDA $0B9C               ; $04:EE30: AD 9C 0B    ;
                BNE CODE_04EE38         ; $04:EE33: D0 03       ;
                JSR CODE_04FBA4         ; $04:EE35: 20 A4 FB    ;
CODE_04EE38:    LDA PNTR_04EE45,x       ; $04:EE38: BD 45 EE    ;
                STA $00                 ; $04:EE3B: 85 00       ;
                LDA PNTR_04EE45+1,x     ; $04:EE3D: BD 46 EE    ;
                STA $01                 ; $04:EE40: 85 01       ;
                JMP ($0000)             ; $04:EE42: 6C 00 00    ;

PNTR_04EE45:    dw CODE_04EE61                                  ;
                dw CODE_04EEE4                                  ;
                dw CODE_04EF85                                  ;
                dw CODE_04F15A                                  ;
                dw CODE_04F3A1                                  ;
                dw CODE_04F5FA                                  ;
                dw CODE_04F896                                  ;
                dw CODE_04EE61                                  ;
                dw CODE_04EE61                                  ;
                dw CODE_04F3A1                                  ;
                dw CODE_04F5FA                                  ;
                dw CODE_04F896                                  ;
                dw CODE_04EE61                                  ;

DATA_04EE5F:    db $90,$00                                      ;

CODE_04EE61:    JSR CODE_04FA7B         ; $04:EE61: 20 7B FA    ;
                LDA $0F7F               ; $04:EE64: AD 7F 0F    ;
                BNE CODE_04EE6C         ; $04:EE67: D0 03       ;
                JMP CODE_04F9D5         ; $04:EE69: 4C D5 F9    ;

CODE_04EE6C:    CMP #$03                ; $04:EE6C: C9 03       ;
                BNE CODE_04EEBB         ; $04:EE6E: D0 4B       ;
                LDA $0B9F               ; $04:EE70: AD 9F 0B    ;
                BNE CODE_04EEBB         ; $04:EE73: D0 46       ;
                JSR CODE_04FD66         ; $04:EE75: 20 66 FD    ;
                LDA #$20                ; $04:EE78: A9 20       ;
                STA $00                 ; $04:EE7A: 85 00       ;
                LDA #$04                ; $04:EE7C: A9 04       ;
                STA $02                 ; $04:EE7E: 85 02       ;
                LDX #$01                ; $04:EE80: A2 01       ;
                LDA #$00                ; $04:EE82: A9 00       ;
                JSL CODE_03C187         ; $04:EE84: 22 87 C1 03 ;
                LDA $0238               ; $04:EE88: AD 38 02    ;
                CMP #$B0                ; $04:EE8B: C9 B0       ;
                BCS CODE_04EE97         ; $04:EE8D: B0 08       ;
                LDA #$01                ; $04:EE8F: A9 01       ;
                STA $0B9D               ; $04:EE91: 8D 9D 0B    ;
                LDA $0238               ; $04:EE94: AD 38 02    ;
CODE_04EE97:    CMP #$B8                ; $04:EE97: C9 B8       ;
                BCC CODE_04EEBB         ; $04:EE99: 90 20       ;
                LDA #$B8                ; $04:EE9B: A9 B8       ;
                STA $0238               ; $04:EE9D: 8D 38 02    ;
                LDA #$FE                ; $04:EEA0: A9 FE       ;
                STA $00A1               ; $04:EEA2: 8D A1 00    ;
                STZ $043D               ; $04:EEA5: 9C 3D 04    ;
                STZ $041D               ; $04:EEA8: 9C 1D 04    ;
                LDA #$00                ; $04:EEAB: A9 00       ;
                STA $0B9E               ; $04:EEAD: 8D 9E 0B    ;
                LDA #$18                ; $04:EEB0: A9 18       ;
                STA $0B9F               ; $04:EEB2: 8D 9F 0B    ;
                STZ $0BA4               ; $04:EEB5: 9C A4 0B    ;
                JSR CODE_04FD29         ; $04:EEB8: 20 29 FD    ;
CODE_04EEBB:    LDA $0B9F               ; $04:EEBB: AD 9F 0B    ;
                BNE CODE_04EEC7         ; $04:EEBE: D0 07       ;
                LDA #$01                ; $04:EEC0: A9 01       ;
                STA $0B9E               ; $04:EEC2: 8D 9E 0B    ;
                BRA CODE_04EECA         ; $04:EEC5: 80 03       ;

CODE_04EEC7:    DEC $0B9F               ; $04:EEC7: CE 9F 0B    ;
CODE_04EECA:    LDA $03AE               ; $04:EECA: AD AE 03    ;
                STA $00                 ; $04:EECD: 85 00       ;
                LDA $0238               ; $04:EECF: AD 38 02    ;
                STA $01                 ; $04:EED2: 85 01       ;
                LDY $0B9D               ; $04:EED4: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:EED7: B9 5F EE    ;
                TAY                     ; $04:EEDA: A8          ;
                LDA $0B9E               ; $04:EEDB: AD 9E 0B    ;
                JSR CODE_04F9FC         ; $04:EEDE: 20 FC F9    ;
                JMP CODE_04F9D5         ; $04:EEE1: 4C D5 F9    ;

CODE_04EEE4:    JSR CODE_04FA7B         ; $04:EEE4: 20 7B FA    ;
                LDA $0F7F               ; $04:EEE7: AD 7F 0F    ;
                BNE CODE_04EEEF         ; $04:EEEA: D0 03       ;
                JMP CODE_04F9D5         ; $04:EEEC: 4C D5 F9    ;

CODE_04EEEF:    CMP #$03                ; $04:EEEF: C9 03       ;
                BNE CODE_04EF4F         ; $04:EEF1: D0 5C       ;
                LDA $0B9F               ; $04:EEF3: AD 9F 0B    ;
                BNE CODE_04EF4C         ; $04:EEF6: D0 54       ;
                LDA $0B9C               ; $04:EEF8: AD 9C 0B    ;
                CMP #$02                ; $04:EEFB: C9 02       ;
                BNE CODE_04EF04         ; $04:EEFD: D0 05       ;
                STA $0B9E               ; $04:EEFF: 8D 9E 0B    ;
                BRA CODE_04EF4F         ; $04:EF02: 80 4B       ;

CODE_04EF04:    JSR CODE_04FD66         ; $04:EF04: 20 66 FD    ;
                LDA #$01                ; $04:EF07: A9 01       ;
                STA $0B9E               ; $04:EF09: 8D 9E 0B    ;
                LDA #$20                ; $04:EF0C: A9 20       ;
                STA $00                 ; $04:EF0E: 85 00       ;
                LDA #$04                ; $04:EF10: A9 04       ;
                STA $02                 ; $04:EF12: 85 02       ;
                LDX #$01                ; $04:EF14: A2 01       ;
                LDA #$00                ; $04:EF16: A9 00       ;
                JSL CODE_03C187         ; $04:EF18: 22 87 C1 03 ;
                LDA $0238               ; $04:EF1C: AD 38 02    ;
                CMP #$B0                ; $04:EF1F: C9 B0       ;
                BCS CODE_04EF2B         ; $04:EF21: B0 08       ;
                LDA #$01                ; $04:EF23: A9 01       ;
                STA $0B9D               ; $04:EF25: 8D 9D 0B    ;
                LDA $0238               ; $04:EF28: AD 38 02    ;
CODE_04EF2B:    CMP #$B8                ; $04:EF2B: C9 B8       ;
                BCC CODE_04EF4F         ; $04:EF2D: 90 20       ;
                LDA #$B8                ; $04:EF2F: A9 B8       ;
                STA $0238               ; $04:EF31: 8D 38 02    ;
                STZ $00A1               ; $04:EF34: 9C A1 00    ;
                STZ $043D               ; $04:EF37: 9C 3D 04    ;
                STZ $041D               ; $04:EF3A: 9C 1D 04    ;
                LDA #$28                ; $04:EF3D: A9 28       ;
                STA $0B9F               ; $04:EF3F: 8D 9F 0B    ;
                LDA #$02                ; $04:EF42: A9 02       ;
                STA $0B9C               ; $04:EF44: 8D 9C 0B    ;
                LDA #$00                ; $04:EF47: A9 00       ;
                STA $0B9E               ; $04:EF49: 8D 9E 0B    ;
CODE_04EF4C:    DEC $0B9F               ; $04:EF4C: CE 9F 0B    ;
CODE_04EF4F:    LDA $03AE               ; $04:EF4F: AD AE 03    ;
                STA $00                 ; $04:EF52: 85 00       ;
                LDA $0238               ; $04:EF54: AD 38 02    ;
                STA $01                 ; $04:EF57: 85 01       ;
                LDY $0B9D               ; $04:EF59: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:EF5C: B9 5F EE    ;
                TAY                     ; $04:EF5F: A8          ;
                LDA $0B9E               ; $04:EF60: AD 9E 0B    ;
                JSR CODE_04F9FC         ; $04:EF63: 20 FC F9    ;
                TYA                     ; $04:EF66: 98          ;
                CLC                     ; $04:EF67: 18          ;
                ADC #$10                ; $04:EF68: 69 10       ;
                TAY                     ; $04:EF6A: A8          ;
                LDA $03AE               ; $04:EF6B: AD AE 03    ;
                CLC                     ; $04:EF6E: 18          ;
                ADC #$10                ; $04:EF6F: 69 10       ;
                STA $00                 ; $04:EF71: 85 00       ;
                LDA $0B9E               ; $04:EF73: AD 9E 0B    ;
                CMP #$02                ; $04:EF76: C9 02       ;
                BNE CODE_04EF7F         ; $04:EF78: D0 05       ;
                JSR CODE_04FD29         ; $04:EF7A: 20 29 FD    ;
                LDA #$03                ; $04:EF7D: A9 03       ;
CODE_04EF7F:    JSR CODE_04F9FC         ; $04:EF7F: 20 FC F9    ;
                JMP CODE_04F9D5         ; $04:EF82: 4C D5 F9    ;

CODE_04EF85:    JSR CODE_04FA7B         ; $04:EF85: 20 7B FA    ;
                LDA $0F7F               ; $04:EF88: AD 7F 0F    ;
                BNE CODE_04EF90         ; $04:EF8B: D0 03       ;
                JMP CODE_04F9D5         ; $04:EF8D: 4C D5 F9    ;

CODE_04EF90:    CMP #$03                ; $04:EF90: C9 03       ;
                BEQ CODE_04EF97         ; $04:EF92: F0 03       ;
                JMP CODE_04F017         ; $04:EF94: 4C 17 F0    ;

CODE_04EF97:    LDA $0BA0               ; $04:EF97: AD A0 0B    ;
                CMP #$28                ; $04:EF9A: C9 28       ;
                BCC CODE_04F014         ; $04:EF9C: 90 76       ;
                CMP #$50                ; $04:EF9E: C9 50       ;
                BCC CODE_04EFFD         ; $04:EFA0: 90 5B       ;
                CMP #$58                ; $04:EFA2: C9 58       ;
                BCC CODE_04EFF7         ; $04:EFA4: 90 51       ;
                JSR CODE_04FD66         ; $04:EFA6: 20 66 FD    ;
                LDA #$20                ; $04:EFA9: A9 20       ;
                STA $00                 ; $04:EFAB: 85 00       ;
                LDA #$04                ; $04:EFAD: A9 04       ;
                STA $02                 ; $04:EFAF: 85 02       ;
                LDX #$01                ; $04:EFB1: A2 01       ;
                LDA #$00                ; $04:EFB3: A9 00       ;
                JSL CODE_03C187         ; $04:EFB5: 22 87 C1 03 ;
                LDA #$01                ; $04:EFB9: A9 01       ;
                STA $0B9E               ; $04:EFBB: 8D 9E 0B    ;
                LDA $0238               ; $04:EFBE: AD 38 02    ;
                CMP #$B0                ; $04:EFC1: C9 B0       ;
                BCS CODE_04EFCC         ; $04:EFC3: B0 07       ;
                LDA #$01                ; $04:EFC5: A9 01       ;
                STA $0B9D               ; $04:EFC7: 8D 9D 0B    ;
                BRA CODE_04EFE9         ; $04:EFCA: 80 1D       ;

CODE_04EFCC:    CMP #$B8                ; $04:EFCC: C9 B8       ;
                BCC CODE_04EFE9         ; $04:EFCE: 90 19       ;
                STZ $00A1               ; $04:EFD0: 9C A1 00    ;
                STZ $043D               ; $04:EFD3: 9C 3D 04    ;
                STZ $041D               ; $04:EFD6: 9C 1D 04    ;
                LDA #$B8                ; $04:EFD9: A9 B8       ;
                STA $0238               ; $04:EFDB: 8D 38 02    ;
                STZ $0B9E               ; $04:EFDE: 9C 9E 0B    ;
                LDA #$01                ; $04:EFE1: A9 01       ;
                STA $0B9F               ; $04:EFE3: 8D 9F 0B    ;
                JSR CODE_04FD29         ; $04:EFE6: 20 29 FD    ;
CODE_04EFE9:    LDA $0B9F               ; $04:EFE9: AD 9F 0B    ;
                BNE CODE_04EFF7         ; $04:EFEC: D0 09       ;
                LDA $09                 ; $04:EFEE: A5 09       ;
                AND #$01                ; $04:EFF0: 29 01       ;
                BNE CODE_04EFF7         ; $04:EFF2: D0 03       ;
                INC $021D               ; $04:EFF4: EE 1D 02    ;
CODE_04EFF7:    JSR CODE_04F031         ; $04:EFF7: 20 31 F0    ;
                JMP CODE_04F9D5         ; $04:EFFA: 4C D5 F9    ;

CODE_04EFFD:    LDY #$A0                ; $04:EFFD: A0 A0       ;
                CMP #$2C                ; $04:EFFF: C9 2C       ;
                BCC CODE_04F011         ; $04:F001: 90 0E       ;
                CMP #$30                ; $04:F003: C9 30       ;
                BCC CODE_04F00C         ; $04:F005: 90 05       ;
                JSR CODE_04F091         ; $04:F007: 20 91 F0    ;
                BRA CODE_04F014         ; $04:F00A: 80 08       ;

CODE_04F00C:    JSR CODE_04F0ED         ; $04:F00C: 20 ED F0    ;
                BRA CODE_04F014         ; $04:F00F: 80 03       ;

CODE_04F011:    JSR CODE_04F124         ; $04:F011: 20 24 F1    ;
CODE_04F014:    INC $0BA0               ; $04:F014: EE A0 0B    ;
CODE_04F017:    LDA $03AE               ; $04:F017: AD AE 03    ;
                STA $00                 ; $04:F01A: 85 00       ;
                LDA $0238               ; $04:F01C: AD 38 02    ;
                STA $01                 ; $04:F01F: 85 01       ;
                LDY $0B9D               ; $04:F021: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:F024: B9 5F EE    ;
                TAY                     ; $04:F027: A8          ;
                LDA $0B9E               ; $04:F028: AD 9E 0B    ;
                JSR CODE_04F9FC         ; $04:F02B: 20 FC F9    ;
                JMP CODE_04F9D5         ; $04:F02E: 4C D5 F9    ;

CODE_04F031:    LDA $03AE               ; $04:F031: AD AE 03    ;
                STA $00                 ; $04:F034: 85 00       ;
                LDA $0238               ; $04:F036: AD 38 02    ;
                STA $01                 ; $04:F039: 85 01       ;
                LDY $0B9D               ; $04:F03B: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:F03E: B9 5F EE    ;
                TAY                     ; $04:F041: A8          ;
                LDA $0B9E               ; $04:F042: AD 9E 0B    ;
                JSR CODE_04F9FC         ; $04:F045: 20 FC F9    ;
                TYA                     ; $04:F048: 98          ;
                CLC                     ; $04:F049: 18          ;
                ADC #$10                ; $04:F04A: 69 10       ;
                TAY                     ; $04:F04C: A8          ;
                LDA $03AE               ; $04:F04D: AD AE 03    ;
                SEC                     ; $04:F050: 38          ;
                SBC $021D               ; $04:F051: ED 1D 02    ;
                SEC                     ; $04:F054: 38          ;
                SBC #$07                ; $04:F055: E9 07       ;
                STA $00                 ; $04:F057: 85 00       ;
                LDA $0B9F               ; $04:F059: AD 9F 0B    ;
                DEC A                   ; $04:F05C: 3A          ;
                BEQ CODE_04F065         ; $04:F05D: F0 06       ;
                LDA #$04                ; $04:F05F: A9 04       ;
                CLC                     ; $04:F061: 18          ;
                ADC $0B9E               ; $04:F062: 6D 9E 0B    ;
CODE_04F065:    JSR CODE_04F9FC         ; $04:F065: 20 FC F9    ;
                TYA                     ; $04:F068: 98          ;
                CLC                     ; $04:F069: 18          ;
                ADC #$10                ; $04:F06A: 69 10       ;
                TAY                     ; $04:F06C: A8          ;
                LDA $03AE               ; $04:F06D: AD AE 03    ;
                CLC                     ; $04:F070: 18          ;
                ADC $021D               ; $04:F071: 6D 1D 02    ;
                CLC                     ; $04:F074: 18          ;
                ADC #$07                ; $04:F075: 69 07       ;
                STA $00                 ; $04:F077: 85 00       ;
                LDA $0B9F               ; $04:F079: AD 9F 0B    ;
                DEC A                   ; $04:F07C: 3A          ;
                BEQ CODE_04F085         ; $04:F07D: F0 06       ;
                LDA #$06                ; $04:F07F: A9 06       ;
                CLC                     ; $04:F081: 18          ;
                ADC $0B9E               ; $04:F082: 6D 9E 0B    ;
CODE_04F085:    JSR CODE_04F9FC         ; $04:F085: 20 FC F9    ;
                LDA $0BA0               ; $04:F088: AD A0 0B    ;
                BMI CODE_04F090         ; $04:F08B: 30 03       ;
                INC $0BA0               ; $04:F08D: EE A0 0B    ;
CODE_04F090:    RTS                     ; $04:F090: 60          ;

CODE_04F091:    LDA $0238               ; $04:F091: AD 38 02    ;
                INC A                   ; $04:F094: 1A          ;
                STA $0905,y             ; $04:F095: 99 05 09    ;
                STA $090D,y             ; $04:F098: 99 0D 09    ;
                CLC                     ; $04:F09B: 18          ;
                ADC #$07                ; $04:F09C: 69 07       ;
                STA $0901,y             ; $04:F09E: 99 01 09    ;
                STA $0909,y             ; $04:F0A1: 99 09 09    ;
                LDA $03AE               ; $04:F0A4: AD AE 03    ;
                SEC                     ; $04:F0A7: 38          ;
                SBC #$0D                ; $04:F0A8: E9 0D       ;
                STA $0904,y             ; $04:F0AA: 99 04 09    ;
                DEC A                   ; $04:F0AD: 3A          ;
                STA $0900,y             ; $04:F0AE: 99 00 09    ;
                LDA $03AE               ; $04:F0B1: AD AE 03    ;
                CLC                     ; $04:F0B4: 18          ;
                ADC #$0D                ; $04:F0B5: 69 0D       ;
                STA $090C,y             ; $04:F0B7: 99 0C 09    ;
                INC A                   ; $04:F0BA: 1A          ;
                STA $0908,y             ; $04:F0BB: 99 08 09    ;
                LDA #$E0                ; $04:F0BE: A9 E0       ;
                STA $0906,y             ; $04:F0C0: 99 06 09    ;
                STA $090E,y             ; $04:F0C3: 99 0E 09    ;
                LDA #$CE                ; $04:F0C6: A9 CE       ;
                STA $0902,y             ; $04:F0C8: 99 02 09    ;
                STA $090A,y             ; $04:F0CB: 99 0A 09    ;
                LDA #$2D                ; $04:F0CE: A9 2D       ;
                STA $090B,y             ; $04:F0D0: 99 0B 09    ;
                STA $090F,y             ; $04:F0D3: 99 0F 09    ;
                LDA #$6D                ; $04:F0D6: A9 6D       ;
                STA $0903,y             ; $04:F0D8: 99 03 09    ;
                STA $0907,y             ; $04:F0DB: 99 07 09    ;
                LDA #$02                ; $04:F0DE: A9 02       ;
                STA $0D00,y             ; $04:F0E0: 99 00 0D    ;
                STA $0D04,y             ; $04:F0E3: 99 04 0D    ;
                STA $0D08,y             ; $04:F0E6: 99 08 0D    ;
                STA $0D0C,y             ; $04:F0E9: 99 0C 0D    ;
                RTS                     ; $04:F0EC: 60          ;

CODE_04F0ED:    LDA $03AE               ; $04:F0ED: AD AE 03    ;
                SEC                     ; $04:F0F0: 38          ;
                SBC #$09                ; $04:F0F1: E9 09       ;
                STA $0900,y             ; $04:F0F3: 99 00 09    ;
                LDA $03AE               ; $04:F0F6: AD AE 03    ;
                CLC                     ; $04:F0F9: 18          ;
                ADC #$09                ; $04:F0FA: 69 09       ;
                STA $0904,y             ; $04:F0FC: 99 04 09    ;
                LDA $0238               ; $04:F0FF: AD 38 02    ;
                INC A                   ; $04:F102: 1A          ;
                STA $0901,y             ; $04:F103: 99 01 09    ;
                STA $0905,y             ; $04:F106: 99 05 09    ;
                LDA #$E0                ; $04:F109: A9 E0       ;
                STA $0902,y             ; $04:F10B: 99 02 09    ;
                STA $0906,y             ; $04:F10E: 99 06 09    ;
                LDA #$6D                ; $04:F111: A9 6D       ;
                STA $0903,y             ; $04:F113: 99 03 09    ;
                LDA #$2D                ; $04:F116: A9 2D       ;
                STA $0907,y             ; $04:F118: 99 07 09    ;
                LDA #$02                ; $04:F11B: A9 02       ;
                STA $0D00,y             ; $04:F11D: 99 00 0D    ;
                STA $0D04,y             ; $04:F120: 99 04 0D    ;
                RTS                     ; $04:F123: 60          ;

CODE_04F124:    LDA $03AE               ; $04:F124: AD AE 03    ;
                SEC                     ; $04:F127: 38          ;
                SBC #$05                ; $04:F128: E9 05       ;
                STA $0900,y             ; $04:F12A: 99 00 09    ;
                LDA $03AE               ; $04:F12D: AD AE 03    ;
                CLC                     ; $04:F130: 18          ;
                ADC #$05                ; $04:F131: 69 05       ;
                STA $0904,y             ; $04:F133: 99 04 09    ;
                LDA $0238               ; $04:F136: AD 38 02    ;
                STA $0901,y             ; $04:F139: 99 01 09    ;
                STA $0905,y             ; $04:F13C: 99 05 09    ;
                LDA #$E0                ; $04:F13F: A9 E0       ;
                STA $0902,y             ; $04:F141: 99 02 09    ;
                STA $0906,y             ; $04:F144: 99 06 09    ;
                LDA #$6D                ; $04:F147: A9 6D       ;
                STA $0903,y             ; $04:F149: 99 03 09    ;
                LDA #$2D                ; $04:F14C: A9 2D       ;
                STA $0907,y             ; $04:F14E: 99 07 09    ;
                LDA #$02                ; $04:F151: A9 02       ;
                STA $0D00,y             ; $04:F153: 99 00 0D    ;
                STA $0D04,y             ; $04:F156: 99 04 0D    ;
                RTS                     ; $04:F159: 60          ;

CODE_04F15A:    JSR CODE_04FA7B         ; $04:F15A: 20 7B FA    ;
                LDA $0F7F               ; $04:F15D: AD 7F 0F    ;
                BNE CODE_04F165         ; $04:F160: D0 03       ;
                JMP CODE_04F9D5         ; $04:F162: 4C D5 F9    ;

CODE_04F165:    INC $0B9F               ; $04:F165: EE 9F 0B    ;
                LDA $0B9F               ; $04:F168: AD 9F 0B    ;
                CMP #$C0                ; $04:F16B: C9 C0       ;
                BCC CODE_04F187         ; $04:F16D: 90 18       ;
                LDA #$C0                ; $04:F16F: A9 C0       ;
                STA $0B9F               ; $04:F171: 8D 9F 0B    ;
                LDA #$02                ; $04:F174: A9 02       ;
                STA $0B9C               ; $04:F176: 8D 9C 0B    ;
                LDA #$01                ; $04:F179: A9 01       ;
                STA $0BB8               ; $04:F17B: 8D B8 0B    ;
                STA $0BB9               ; $04:F17E: 8D B9 0B    ;
                STA $0BBA               ; $04:F181: 8D BA 0B    ;
                STA $0BBB               ; $04:F184: 8D BB 0B    ;
CODE_04F187:    STZ $0E67               ; $04:F187: 9C 67 0E    ;
                LDA $0BB4               ; $04:F18A: AD B4 0B    ;
                BNE CODE_04F1A2         ; $04:F18D: D0 13       ;
                LDA $0B9C               ; $04:F18F: AD 9C 0B    ;
                CMP #$02                ; $04:F192: C9 02       ;
                BEQ CODE_04F19C         ; $04:F194: F0 06       ;
                JSR CODE_04F2AB         ; $04:F196: 20 AB F2    ;
                JMP CODE_04F9D5         ; $04:F199: 4C D5 F9    ;

CODE_04F19C:    JSR CODE_04F1D7         ; $04:F19C: 20 D7 F1    ;
                JMP CODE_04F9D5         ; $04:F19F: 4C D5 F9    ;

CODE_04F1A2:    LDA $0BA1               ; $04:F1A2: AD A1 0B    ;
                BEQ CODE_04F1AE         ; $04:F1A5: F0 07       ;
                DEC $0BA1               ; $04:F1A7: CE A1 0B    ;
                LDA #$00                ; $04:F1AA: A9 00       ;
                BRA CODE_04F1B3         ; $04:F1AC: 80 05       ;

CODE_04F1AE:    JSR CODE_04FD29         ; $04:F1AE: 20 29 FD    ;
                LDA #$02                ; $04:F1B1: A9 02       ;
CODE_04F1B3:    STA $0B9E               ; $04:F1B3: 8D 9E 0B    ;
                LDX #$03                ; $04:F1B6: A2 03       ;
                LDY #$00                ; $04:F1B8: A0 00       ;
CODE_04F1BA:    LDA $0BB0,x             ; $04:F1BA: BD B0 0B    ;
                STA $00                 ; $04:F1BD: 85 00       ;
                LDA #$B8                ; $04:F1BF: A9 B8       ;
                STA $01                 ; $04:F1C1: 85 01       ;
                LDA $0B9E               ; $04:F1C3: AD 9E 0B    ;
                JSR CODE_04F9FC         ; $04:F1C6: 20 FC F9    ;
                TYA                     ; $04:F1C9: 98          ;
                CLC                     ; $04:F1CA: 18          ;
                ADC #$10                ; $04:F1CB: 69 10       ;
                TAY                     ; $04:F1CD: A8          ;
                STY $0E67               ; $04:F1CE: 8C 67 0E    ;
                DEX                     ; $04:F1D1: CA          ;
                BPL CODE_04F1BA         ; $04:F1D2: 10 E6       ;
                JMP CODE_04F9D5         ; $04:F1D4: 4C D5 F9    ;

CODE_04F1D7:    JSR CODE_04FD66         ; $04:F1D7: 20 66 FD    ;
                LDA #$20                ; $04:F1DA: A9 20       ;
                STA $00                 ; $04:F1DC: 85 00       ;
                LDA #$04                ; $04:F1DE: A9 04       ;
                STA $02                 ; $04:F1E0: 85 02       ;
                LDX #$01                ; $04:F1E2: A2 01       ;
                LDA #$00                ; $04:F1E4: A9 00       ;
                JSL CODE_03C187         ; $04:F1E6: 22 87 C1 03 ;
                LDA $0238               ; $04:F1EA: AD 38 02    ;
                CMP #$B0                ; $04:F1ED: C9 B0       ;
                BCS CODE_04F1F6         ; $04:F1EF: B0 05       ;
                LDA #$01                ; $04:F1F1: A9 01       ;
                STA $0B9D               ; $04:F1F3: 8D 9D 0B    ;
CODE_04F1F6:    LDY $0B9D               ; $04:F1F6: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:F1F9: B9 5F EE    ;
                TAY                     ; $04:F1FC: A8          ;
                LDA $03AE               ; $04:F1FD: AD AE 03    ;
                STA $00                 ; $04:F200: 85 00       ;
                LDA $0238               ; $04:F202: AD 38 02    ;
                CMP #$B8                ; $04:F205: C9 B8       ;
                BCC CODE_04F20E         ; $04:F207: 90 05       ;
                LDA #$B8                ; $04:F209: A9 B8       ;
                STZ $0BB8               ; $04:F20B: 9C B8 0B    ;
CODE_04F20E:    STA $01                 ; $04:F20E: 85 01       ;
                LDA $0BB8               ; $04:F210: AD B8 0B    ;
                JSR CODE_04F9FC         ; $04:F213: 20 FC F9    ;
                LDA $0BB1               ; $04:F216: AD B1 0B    ;
                STA $00                 ; $04:F219: 85 00       ;
                LDA $0238               ; $04:F21B: AD 38 02    ;
                SEC                     ; $04:F21E: 38          ;
                SBC #$0C                ; $04:F21F: E9 0C       ;
                CMP #$B8                ; $04:F221: C9 B8       ;
                BCC CODE_04F22C         ; $04:F223: 90 07       ;
                LDA #$B8                ; $04:F225: A9 B8       ;
                STZ $0BB9               ; $04:F227: 9C B9 0B    ;
                BRA CODE_04F23A         ; $04:F22A: 80 0E       ;

CODE_04F22C:    LDA $09                 ; $04:F22C: A5 09       ;
                LSR A                   ; $04:F22E: 4A          ;
                BCC CODE_04F234         ; $04:F22F: 90 03       ;
                INC $0BB1               ; $04:F231: EE B1 0B    ;
CODE_04F234:    LDA $0238               ; $04:F234: AD 38 02    ;
                SEC                     ; $04:F237: 38          ;
                SBC #$0C                ; $04:F238: E9 0C       ;
CODE_04F23A:    STA $01                 ; $04:F23A: 85 01       ;
                TYA                     ; $04:F23C: 98          ;
                CLC                     ; $04:F23D: 18          ;
                ADC #$10                ; $04:F23E: 69 10       ;
                TAY                     ; $04:F240: A8          ;
                LDA $0BB9               ; $04:F241: AD B9 0B    ;
                CLC                     ; $04:F244: 18          ;
                ADC #$06                ; $04:F245: 69 06       ;
                JSR CODE_04F9FC         ; $04:F247: 20 FC F9    ;
                LDA $0BB2               ; $04:F24A: AD B2 0B    ;
                STA $00                 ; $04:F24D: 85 00       ;
                LDA $0238               ; $04:F24F: AD 38 02    ;
                SEC                     ; $04:F252: 38          ;
                SBC #$18                ; $04:F253: E9 18       ;
                CMP #$B8                ; $04:F255: C9 B8       ;
                BCC CODE_04F260         ; $04:F257: 90 07       ;
                LDA #$B8                ; $04:F259: A9 B8       ;
                STZ $0BBA               ; $04:F25B: 9C BA 0B    ;
                BRA CODE_04F263         ; $04:F25E: 80 03       ;

CODE_04F260:    DEC $0BB2               ; $04:F260: CE B2 0B    ;
CODE_04F263:    STA $01                 ; $04:F263: 85 01       ;
                TYA                     ; $04:F265: 98          ;
                CLC                     ; $04:F266: 18          ;
                ADC #$10                ; $04:F267: 69 10       ;
                TAY                     ; $04:F269: A8          ;
                LDA $0BBA               ; $04:F26A: AD BA 0B    ;
                CLC                     ; $04:F26D: 18          ;
                ADC #$04                ; $04:F26E: 69 04       ;
                JSR CODE_04F9FC         ; $04:F270: 20 FC F9    ;
                LDA $0BB3               ; $04:F273: AD B3 0B    ;
                STA $00                 ; $04:F276: 85 00       ;
                LDA $0238               ; $04:F278: AD 38 02    ;
                SEC                     ; $04:F27B: 38          ;
                SBC #$24                ; $04:F27C: E9 24       ;
                CMP #$B8                ; $04:F27E: C9 B8       ;
                BCC CODE_04F297         ; $04:F280: 90 15       ;
                LDA #$B8                ; $04:F282: A9 B8       ;
                STZ $0BBB               ; $04:F284: 9C BB 0B    ;
                INC $0BB4               ; $04:F287: EE B4 0B    ;
                LDA #$28                ; $04:F28A: A9 28       ;
                STA $0BA1               ; $04:F28C: 8D A1 0B    ;
                LDA $0238               ; $04:F28F: AD 38 02    ;
                SEC                     ; $04:F292: 38          ;
                SBC #$24                ; $04:F293: E9 24       ;
                BRA CODE_04F29A         ; $04:F295: 80 03       ;

CODE_04F297:    INC $0BB3               ; $04:F297: EE B3 0B    ;
CODE_04F29A:    STA $01                 ; $04:F29A: 85 01       ;
                TYA                     ; $04:F29C: 98          ;
                CLC                     ; $04:F29D: 18          ;
                ADC #$10                ; $04:F29E: 69 10       ;
                TAY                     ; $04:F2A0: A8          ;
                LDA $0BBB               ; $04:F2A1: AD BB 0B    ;
                CLC                     ; $04:F2A4: 18          ;
                ADC #$06                ; $04:F2A5: 69 06       ;
                JSR CODE_04F9FC         ; $04:F2A7: 20 FC F9    ;
                RTS                     ; $04:F2AA: 60          ;

CODE_04F2AB:    LDY #$B0                ; $04:F2AB: A0 B0       ;
                LDX #$00                ; $04:F2AD: A2 00       ;
CODE_04F2AF:    LDA $03AE               ; $04:F2AF: AD AE 03    ;
                STA $0900,y             ; $04:F2B2: 99 00 09    ;
                LDA DATA_04F38F,x       ; $04:F2B5: BD 8F F3    ;
                STA $0901,y             ; $04:F2B8: 99 01 09    ;
                LDA DATA_04F38F+1,x     ; $04:F2BB: BD 90 F3    ;
                STA $0902,y             ; $04:F2BE: 99 02 09    ;
                LDA #$2D                ; $04:F2C1: A9 2D       ;
                STA $0903,y             ; $04:F2C3: 99 03 09    ;
                LDA #$02                ; $04:F2C6: A9 02       ;
                STA $0D00,y             ; $04:F2C8: 99 00 0D    ;
                INY                     ; $04:F2CB: C8          ;
                INY                     ; $04:F2CC: C8          ;
                INY                     ; $04:F2CD: C8          ;
                INY                     ; $04:F2CE: C8          ;
                INX                     ; $04:F2CF: E8          ;
                INX                     ; $04:F2D0: E8          ;
                CPX #$12                ; $04:F2D1: E0 12       ;
                BCC CODE_04F2AF         ; $04:F2D3: 90 DA       ;
                LDA #$6D                ; $04:F2D5: A9 6D       ;
                STA $09C3               ; $04:F2D7: 8D C3 09    ;
                STZ $0DC0               ; $04:F2DA: 9C C0 0D    ;
                STZ $0DBC               ; $04:F2DD: 9C BC 0D    ;
                LDA $09BC               ; $04:F2E0: AD BC 09    ;
                CLC                     ; $04:F2E3: 18          ;
                ADC #$08                ; $04:F2E4: 69 08       ;
                STA $09C0               ; $04:F2E6: 8D C0 09    ;
                LDX #$00                ; $04:F2E9: A2 00       ;
CODE_04F2EB:    LDA DATA_04F388,x       ; $04:F2EB: BD 88 F3    ;
                CMP $0B9F               ; $04:F2EE: CD 9F 0B    ;
                BCS CODE_04F2F8         ; $04:F2F1: B0 05       ;
                INX                     ; $04:F2F3: E8          ;
                CPX #$06                ; $04:F2F4: E0 06       ;
                BNE CODE_04F2EB         ; $04:F2F6: D0 F3       ;
CODE_04F2F8:    TXA                     ; $04:F2F8: 8A          ;
                ASL A                   ; $04:F2F9: 0A          ;
                TAX                     ; $04:F2FA: AA          ;
                LDA PNTR_04F37A,x       ; $04:F2FB: BD 7A F3    ;
                STA $00                 ; $04:F2FE: 85 00       ;
                LDA PNTR_04F37A+1,x     ; $04:F300: BD 7B F3    ;
                STA $01                 ; $04:F303: 85 01       ;
                LDA #$01                ; $04:F305: A9 01       ;
                JMP ($0000)             ; $04:F307: 6C 00 00    ;

CODE_04F30A:    STA $0DB0               ; $04:F30A: 8D B0 0D    ;
                STA $0DB4               ; $04:F30D: 8D B4 0D    ;
                STA $0DB8               ; $04:F310: 8D B8 0D    ;
                STA $0DC8               ; $04:F313: 8D C8 0D    ;
                STA $0DCC               ; $04:F316: 8D CC 0D    ;
                STA $0DD0               ; $04:F319: 8D D0 0D    ;
                RTS                     ; $04:F31C: 60          ;

CODE_04F31D:    STA $0DB0               ; $04:F31D: 8D B0 0D    ;
                STA $0DB4               ; $04:F320: 8D B4 0D    ;
                STA $0DB8               ; $04:F323: 8D B8 0D    ;
                STA $0DCC               ; $04:F326: 8D CC 0D    ;
                STA $0DD0               ; $04:F329: 8D D0 0D    ;
                LDA #$09                ; $04:F32C: A9 09       ;\SMW cape dive sound
                STA $1600               ; $04:F32E: 8D 00 16    ;/
                RTS                     ; $04:F331: 60          ;

CODE_04F332:    STA $0DB0               ; $04:F332: 8D B0 0D    ;
                STA $0DB4               ; $04:F335: 8D B4 0D    ;
                STA $0DC8               ; $04:F338: 8D C8 0D    ;
                STA $0DCC               ; $04:F33B: 8D CC 0D    ;
                STA $0DD0               ; $04:F33E: 8D D0 0D    ;
                RTS                     ; $04:F341: 60          ;

CODE_04F342:    STA $0DB0               ; $04:F342: 8D B0 0D    ;
                STA $0DB4               ; $04:F345: 8D B4 0D    ;
                STA $0DC8               ; $04:F348: 8D C8 0D    ;
                STA $0DD0               ; $04:F34B: 8D D0 0D    ;
                LDA #$09                ; $04:F34E: A9 09       ;\
                STA $1600               ; $04:F350: 8D 00 16    ;/SMW cape dive sound
                RTS                     ; $04:F353: 60          ;

CODE_04F354:    STA $0DB0               ; $04:F354: 8D B0 0D    ;
                STA $0DC8               ; $04:F357: 8D C8 0D    ;
                STA $0DCC               ; $04:F35A: 8D CC 0D    ;
                STA $0DD0               ; $04:F35D: 8D D0 0D    ;
                RTS                     ; $04:F360: 60          ;

CODE_04F361:    STA $0DB0               ; $04:F361: 8D B0 0D    ;
                STA $0DC8               ; $04:F364: 8D C8 0D    ;
                STA $0DCC               ; $04:F367: 8D CC 0D    ;
                LDA #$09                ; $04:F36A: A9 09       ;\
                STA $1600               ; $04:F36C: 8D 00 16    ;/SMW cape dive sound
                RTS                     ; $04:F36F: 60          ;

CODE_04F370:    STA $0DC8               ; $04:F370: 8D C8 0D    ;
                STA $0DCC               ; $04:F373: 8D CC 0D    ;
                STA $0DD0               ; $04:F376: 8D D0 0D    ;
                RTS                     ; $04:F379: 60          ;

PNTR_04F37A:    dw CODE_04F30A                                  ;
                dw CODE_04F31D                                  ;
                dw CODE_04F332                                  ;
                dw CODE_04F342                                  ;
                dw CODE_04F354                                  ;
                dw CODE_04F361                                  ;
                dw CODE_04F370                                  ;

DATA_04F388:    db $40,$48,$58,$60,$70,$78,$BF                  ;

DATA_04F38F:    db $97,$EA,$A2,$EA,$AD,$EA,$B8,$B6              ;
                db $B8,$B6,$C0,$C9,$B3,$EA,$A8,$EA              ;
                db $9D,$EA                                      ;

CODE_04F3A1:    JSR CODE_04FA7B         ; $04:F3A1: 20 7B FA    ;
                LDA $0F7F               ; $04:F3A4: AD 7F 0F    ;
                BNE CODE_04F3AC         ; $04:F3A7: D0 03       ;
                JMP CODE_04F9D5         ; $04:F3A9: 4C D5 F9    ;

CODE_04F3AC:    JSR CODE_04FD66         ; $04:F3AC: 20 66 FD    ;
                LDA #$20                ; $04:F3AF: A9 20       ;
                STA $00                 ; $04:F3B1: 85 00       ;
                LDA #$04                ; $04:F3B3: A9 04       ;
                STA $02                 ; $04:F3B5: 85 02       ;
                LDX #$01                ; $04:F3B7: A2 01       ;
                LDA #$00                ; $04:F3B9: A9 00       ;
                JSL CODE_03C187         ; $04:F3BB: 22 87 C1 03 ;
                LDA $0238               ; $04:F3BF: AD 38 02    ;
                CMP #$A0                ; $04:F3C2: C9 A0       ;
                BCS CODE_04F3CB         ; $04:F3C4: B0 05       ;
                LDA #$01                ; $04:F3C6: A9 01       ;
                STA $0B9D               ; $04:F3C8: 8D 9D 0B    ;
CODE_04F3CB:    LDA $0238               ; $04:F3CB: AD 38 02    ;
                CMP #$B0                ; $04:F3CE: C9 B0       ;
                BCC CODE_04F3ED         ; $04:F3D0: 90 1B       ;
                LDA #$B0                ; $04:F3D2: A9 B0       ;
                STA $0238               ; $04:F3D4: 8D 38 02    ;
                STZ $043D               ; $04:F3D7: 9C 3D 04    ;
                STZ $041C               ; $04:F3DA: 9C 1C 04    ;
                INC $0B9E               ; $04:F3DD: EE 9E 0B    ;
                LDA $0B9E               ; $04:F3E0: AD 9E 0B    ;
                BMI CODE_04F3EA         ; $04:F3E3: 30 05       ;
                LDA #$00                ; $04:F3E5: A9 00       ;
                STA $0B9E               ; $04:F3E7: 8D 9E 0B    ;
CODE_04F3EA:    STA $00A1               ; $04:F3EA: 8D A1 00    ;
CODE_04F3ED:    INC $0B9F               ; $04:F3ED: EE 9F 0B    ;
                LDA $0B9F               ; $04:F3F0: AD 9F 0B    ;
                CMP #$44                ; $04:F3F3: C9 44       ;
                BCC CODE_04F40C         ; $04:F3F5: 90 15       ;
                BNE CODE_04F3FE         ; $04:F3F7: D0 05       ;
                LDA #$08                ; $04:F3F9: A9 08       ;\
                STA $1600               ; $04:F3FB: 8D 00 16    ;/Reset highscore sound
CODE_04F3FE:    LDA #$45                ; $04:F3FE: A9 45       ;
                STA $0B9F               ; $04:F400: 8D 9F 0B    ;
                JSR CODE_04F412         ; $04:F403: 20 12 F4    ;
                JSR CODE_04FD29         ; $04:F406: 20 29 FD    ;
                JMP CODE_04F9D5         ; $04:F409: 4C D5 F9    ;

CODE_04F40C:    JSR CODE_04F586         ; $04:F40C: 20 86 F5    ;
                JMP CODE_04F9D5         ; $04:F40F: 4C D5 F9    ;

CODE_04F412:    LDA $03AE               ; $04:F412: AD AE 03    ;
                CLC                     ; $04:F415: 18          ;
                ADC $0B9F               ; $04:F416: 6D 9F 0B    ;
                STA $00                 ; $04:F419: 85 00       ;
                CLC                     ; $04:F41B: 18          ;
                ADC #$06                ; $04:F41C: 69 06       ;
                STA $0900               ; $04:F41E: 8D 00 09    ;
                CLC                     ; $04:F421: 18          ;
                ADC #$10                ; $04:F422: 69 10       ;
                STA $0904               ; $04:F424: 8D 04 09    ;
                LDA $00                 ; $04:F427: A5 00       ;
                STA $0910               ; $04:F429: 8D 10 09    ;
                STA $0918               ; $04:F42C: 8D 18 09    ;
                CLC                     ; $04:F42F: 18          ;
                ADC #$08                ; $04:F430: 69 08       ;
                STA $0914               ; $04:F432: 8D 14 09    ;
                LDA $00                 ; $04:F435: A5 00       ;
                CLC                     ; $04:F437: 18          ;
                ADC #$1C                ; $04:F438: 69 1C       ;
                STA $0920               ; $04:F43A: 8D 20 09    ;
                STA $0928               ; $04:F43D: 8D 28 09    ;
                CLC                     ; $04:F440: 18          ;
                ADC #$08                ; $04:F441: 69 08       ;
                STA $0924               ; $04:F443: 8D 24 09    ;
                LDA $00                 ; $04:F446: A5 00       ;
                CLC                     ; $04:F448: 18          ;
                ADC #$06                ; $04:F449: 69 06       ;
                STA $0930               ; $04:F44B: 8D 30 09    ;
                STA $0938               ; $04:F44E: 8D 38 09    ;
                CLC                     ; $04:F451: 18          ;
                ADC #$08                ; $04:F452: 69 08       ;
                STA $0934               ; $04:F454: 8D 34 09    ;
                LDA $00                 ; $04:F457: A5 00       ;
                CLC                     ; $04:F459: 18          ;
                ADC #$16                ; $04:F45A: 69 16       ;
                STA $0940               ; $04:F45C: 8D 40 09    ;
                STA $0948               ; $04:F45F: 8D 48 09    ;
                CLC                     ; $04:F462: 18          ;
                ADC #$08                ; $04:F463: 69 08       ;
                STA $0944               ; $04:F465: 8D 44 09    ;
                LDA #$B8                ; $04:F468: A9 B8       ;
                STA $0911               ; $04:F46A: 8D 11 09    ;
                STA $0915               ; $04:F46D: 8D 15 09    ;
                STA $0921               ; $04:F470: 8D 21 09    ;
                STA $0925               ; $04:F473: 8D 25 09    ;
                STA $0931               ; $04:F476: 8D 31 09    ;
                STA $0935               ; $04:F479: 8D 35 09    ;
                STA $0941               ; $04:F47C: 8D 41 09    ;
                STA $0945               ; $04:F47F: 8D 45 09    ;
                LDA #$C0                ; $04:F482: A9 C0       ;
                STA $0901               ; $04:F484: 8D 01 09    ;
                STA $0905               ; $04:F487: 8D 05 09    ;
                STA $0919               ; $04:F48A: 8D 19 09    ;
                STA $0929               ; $04:F48D: 8D 29 09    ;
                STA $0939               ; $04:F490: 8D 39 09    ;
                STA $0949               ; $04:F493: 8D 49 09    ;
                LDA #$BE                ; $04:F496: A9 BE       ;
                STA $0912               ; $04:F498: 8D 12 09    ;
                STA $0926               ; $04:F49B: 8D 26 09    ;
                LDA #$BF                ; $04:F49E: A9 BF       ;
                STA $0916               ; $04:F4A0: 8D 16 09    ;
                STA $0922               ; $04:F4A3: 8D 22 09    ;
                LDA #$EC                ; $04:F4A6: A9 EC       ;
                STA $091A               ; $04:F4A8: 8D 1A 09    ;
                STA $092A               ; $04:F4AB: 8D 2A 09    ;
                LDA #$EA                ; $04:F4AE: A9 EA       ;
                STA $0902               ; $04:F4B0: 8D 02 09    ;
                STA $0906               ; $04:F4B3: 8D 06 09    ;
                LDA #$B6                ; $04:F4B6: A9 B6       ;
                STA $0932               ; $04:F4B8: 8D 32 09    ;
                STA $0936               ; $04:F4BB: 8D 36 09    ;
                STA $0942               ; $04:F4BE: 8D 42 09    ;
                STA $0946               ; $04:F4C1: 8D 46 09    ;
                LDA #$C9                ; $04:F4C4: A9 C9       ;
                STA $093A               ; $04:F4C6: 8D 3A 09    ;
                STA $094A               ; $04:F4C9: 8D 4A 09    ;
                LDA #$2D                ; $04:F4CC: A9 2D       ;
                STA $0903               ; $04:F4CE: 8D 03 09    ;
                STA $0913               ; $04:F4D1: 8D 13 09    ;
                STA $0917               ; $04:F4D4: 8D 17 09    ;
                STA $091B               ; $04:F4D7: 8D 1B 09    ;
                STA $0933               ; $04:F4DA: 8D 33 09    ;
                STA $093B               ; $04:F4DD: 8D 3B 09    ;
                STA $0943               ; $04:F4E0: 8D 43 09    ;
                STA $094B               ; $04:F4E3: 8D 4B 09    ;
                LDA #$6D                ; $04:F4E6: A9 6D       ;
                STA $0907               ; $04:F4E8: 8D 07 09    ;
                STA $0923               ; $04:F4EB: 8D 23 09    ;
                STA $0927               ; $04:F4EE: 8D 27 09    ;
                STA $092B               ; $04:F4F1: 8D 2B 09    ;
                STA $0937               ; $04:F4F4: 8D 37 09    ;
                STA $0947               ; $04:F4F7: 8D 47 09    ;
                LDA #$02                ; $04:F4FA: A9 02       ;
                STA $0D00               ; $04:F4FC: 8D 00 0D    ;
                STA $0D04               ; $04:F4FF: 8D 04 0D    ;
                STA $0D18               ; $04:F502: 8D 18 0D    ;
                STA $0D28               ; $04:F505: 8D 28 0D    ;
                STA $0D38               ; $04:F508: 8D 38 0D    ;
                STA $0D48               ; $04:F50B: 8D 48 0D    ;
                LDX #$03                ; $04:F50E: A2 03       ;
CODE_04F510:    LDA $0BB8,x             ; $04:F510: BD B8 0B    ;
                BEQ CODE_04F521         ; $04:F513: F0 0C       ;
                CMP #$1E                ; $04:F515: C9 1E       ;
                BCC CODE_04F51E         ; $04:F517: 90 05       ;
                STZ $0BB8,x             ; $04:F519: 9E B8 0B    ;
                BRA CODE_04F521         ; $04:F51C: 80 03       ;

CODE_04F51E:    INC $0BB8,x             ; $04:F51E: FE B8 0B    ;
CODE_04F521:    DEX                     ; $04:F521: CA          ;
                BPL CODE_04F510         ; $04:F522: 10 EC       ;
                LDA $09                 ; $04:F524: A5 09       ;
                AND #$07                ; $04:F526: 29 07       ;
                BNE CODE_04F556         ; $04:F528: D0 2C       ;
                LDX #$03                ; $04:F52A: A2 03       ;
CODE_04F52C:    LDA $0BB8,x             ; $04:F52C: BD B8 0B    ;
                BEQ CODE_04F534         ; $04:F52F: F0 03       ;
                DEX                     ; $04:F531: CA          ;
                BNE CODE_04F52C         ; $04:F532: D0 F8       ;
CODE_04F534:    LDA $09                 ; $04:F534: A5 09       ;
                AND #$03                ; $04:F536: 29 03       ;
                TAY                     ; $04:F538: A8          ;
                LDA $07B9,y             ; $04:F539: B9 B9 07    ;
                EOR $09                 ; $04:F53C: 45 09       ;
                AND #$1F                ; $04:F53E: 29 1F       ;
                CLC                     ; $04:F540: 18          ;
                ADC #$CC                ; $04:F541: 69 CC       ;
                STA $0BB0,x             ; $04:F543: 9D B0 0B    ;
                LDA $07BA,y             ; $04:F546: B9 BA 07    ;
                EOR $09                 ; $04:F549: 45 09       ;
                AND #$07                ; $04:F54B: 29 07       ;
                CLC                     ; $04:F54D: 18          ;
                ADC #$B0                ; $04:F54E: 69 B0       ;
                STA $0BB4,x             ; $04:F550: 9D B4 0B    ;
                INC $0BB8,x             ; $04:F553: FE B8 0B    ;
CODE_04F556:    LDX #$03                ; $04:F556: A2 03       ;
CODE_04F558:    LDA $0BB8,x             ; $04:F558: BD B8 0B    ;
                LSR A                   ; $04:F55B: 4A          ;
                LSR A                   ; $04:F55C: 4A          ;
                LSR A                   ; $04:F55D: 4A          ;
                TAY                     ; $04:F55E: A8          ;
                LDA DATA_04F582,y       ; $04:F55F: B9 82 F5    ;
                STA $00                 ; $04:F562: 85 00       ;
                TXA                     ; $04:F564: 8A          ;
                ASL A                   ; $04:F565: 0A          ;
                ASL A                   ; $04:F566: 0A          ;
                TAY                     ; $04:F567: A8          ;
                LDA $0BB0,x             ; $04:F568: BD B0 0B    ;
                STA $0800,y             ; $04:F56B: 99 00 08    ;
                LDA $0BB4,x             ; $04:F56E: BD B4 0B    ;
                STA $0801,y             ; $04:F571: 99 01 08    ;
                LDA $00                 ; $04:F574: A5 00       ;
                STA $0802,y             ; $04:F576: 99 02 08    ;
                LDA #$25                ; $04:F579: A9 25       ;
                STA $0803,y             ; $04:F57B: 99 03 08    ;
                DEX                     ; $04:F57E: CA          ;
                BPL CODE_04F558         ; $04:F57F: 10 D7       ;
                RTS                     ; $04:F581: 60          ;

DATA_04F582:    db $F5,$E4,$F4,$E5                              ;

CODE_04F586:    LDY $0B9D               ; $04:F586: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:F589: B9 5F EE    ;
                TAY                     ; $04:F58C: A8          ;
                LDA $03AE               ; $04:F58D: AD AE 03    ;
                CLC                     ; $04:F590: 18          ;
                ADC $0B9F               ; $04:F591: 6D 9F 0B    ;
                STA $0900,y             ; $04:F594: 99 00 09    ;
                STA $0908,y             ; $04:F597: 99 08 09    ;
                CLC                     ; $04:F59A: 18          ;
                ADC #$10                ; $04:F59B: 69 10       ;
                STA $0904,y             ; $04:F59D: 99 04 09    ;
                STA $090C,y             ; $04:F5A0: 99 0C 09    ;
                LDA $0238               ; $04:F5A3: AD 38 02    ;
                STA $0901,y             ; $04:F5A6: 99 01 09    ;
                STA $0905,y             ; $04:F5A9: 99 05 09    ;
                CLC                     ; $04:F5AC: 18          ;
                ADC #$10                ; $04:F5AD: 69 10       ;
                STA $0909,y             ; $04:F5AF: 99 09 09    ;
                STA $090D,y             ; $04:F5B2: 99 0D 09    ;
                LDA $0B9F               ; $04:F5B5: AD 9F 0B    ;
                AND #$0C                ; $04:F5B8: 29 0C       ;
                TAX                     ; $04:F5BA: AA          ;
                LDA #$04                ; $04:F5BB: A9 04       ;
                STA $00                 ; $04:F5BD: 85 00       ;
CODE_04F5BF:    LDA DATA_04F5DA,x       ; $04:F5BF: BD DA F5    ;
                STA $0902,y             ; $04:F5C2: 99 02 09    ;
                LDA DATA_04F5EA,x       ; $04:F5C5: BD EA F5    ;
                STA $0903,y             ; $04:F5C8: 99 03 09    ;
                LDA #$02                ; $04:F5CB: A9 02       ;
                STA $0D00,y             ; $04:F5CD: 99 00 0D    ;
                INY                     ; $04:F5D0: C8          ;
                INY                     ; $04:F5D1: C8          ;
                INY                     ; $04:F5D2: C8          ;
                INY                     ; $04:F5D3: C8          ;
                INX                     ; $04:F5D4: E8          ;
                DEC $00                 ; $04:F5D5: C6 00       ;
                BNE CODE_04F5BF         ; $04:F5D7: D0 E6       ;
                RTS                     ; $04:F5D9: 60          ;

DATA_04F5DA:    db $CE,$CE,$EE,$EE,$E0,$E2,$E0,$E2              ;
                db $EE,$EE,$CE,$CE,$E2,$E0,$E2,$E0              ;

DATA_04F5EA:    db $2D,$4D,$2D,$4D,$2D,$2D,$AD,$AD              ;
                db $AD,$CD,$AD,$CD,$4D,$4D,$CD,$CD              ;

CODE_04F5FA:    JSR CODE_04FA7B         ; $04:F5FA: 20 7B FA    ;
                LDA $0F7F               ; $04:F5FD: AD 7F 0F    ;
                BNE CODE_04F605         ; $04:F600: D0 03       ;
                JMP CODE_04F9D5         ; $04:F602: 4C D5 F9    ;

CODE_04F605:    JSR CODE_04FD66         ; $04:F605: 20 66 FD    ;
                LDA #$20                ; $04:F608: A9 20       ;
                STA $00                 ; $04:F60A: 85 00       ;
                LDA #$04                ; $04:F60C: A9 04       ;
                STA $01                 ; $04:F60E: 85 01       ;
                LDX #$01                ; $04:F610: A2 01       ;
                LDA #$00                ; $04:F612: A9 00       ;
                JSL CODE_03C187         ; $04:F614: 22 87 C1 03 ;
                LDA $0238               ; $04:F618: AD 38 02    ;
                CMP #$A0                ; $04:F61B: C9 A0       ;
                BCS CODE_04F624         ; $04:F61D: B0 05       ;
                LDA #$01                ; $04:F61F: A9 01       ;
                STA $0B9D               ; $04:F621: 8D 9D 0B    ;
CODE_04F624:    LDA $0238               ; $04:F624: AD 38 02    ;
                CMP #$B8                ; $04:F627: C9 B8       ;
                BCC CODE_04F64A         ; $04:F629: 90 1F       ;
                LDA #$B8                ; $04:F62B: A9 B8       ;
                STA $0238               ; $04:F62D: 8D 38 02    ;
                STZ $00A1               ; $04:F630: 9C A1 00    ;
                STZ $043D               ; $04:F633: 9C 3D 04    ;
                STZ $041D               ; $04:F636: 9C 1D 04    ;
                LDA $0BA4               ; $04:F639: AD A4 0B    ;
                CMP #$01                ; $04:F63C: C9 01       ;
                BNE CODE_04F65A         ; $04:F63E: D0 1A       ;
                LDA #$20                ; $04:F640: A9 20       ;\SMW Yoshi spit out enemy sound
                STA $1600               ; $04:F642: 8D 00 16    ;/
                STA $0BA4               ; $04:F645: 8D A4 0B    ;
                BRA CODE_04F65A         ; $04:F648: 80 10       ;

CODE_04F64A:    LDY $0B9D               ; $04:F64A: AC 9D 0B    ;
                LDA DATA_04EE5F,y       ; $04:F64D: B9 5F EE    ;
                TAY                     ; $04:F650: A8          ;
                LDA $00A1               ; $04:F651: AD A1 00    ;
                JSR CODE_04F6F9         ; $04:F654: 20 F9 F6    ;
                JMP CODE_04F9D5         ; $04:F657: 4C D5 F9    ;

CODE_04F65A:    LDA $0B9C               ; $04:F65A: AD 9C 0B    ;
                CMP #$02                ; $04:F65D: C9 02       ;
                BEQ CODE_04F678         ; $04:F65F: F0 17       ;
                INC $0B9C               ; $04:F661: EE 9C 0B    ;
                LDA $03AE               ; $04:F664: AD AE 03    ;
                SEC                     ; $04:F667: 38          ;
                SBC #$08                ; $04:F668: E9 08       ;
                STA $03AE               ; $04:F66A: 8D AE 03    ;
                LDA $021A               ; $04:F66D: AD 1A 02    ;
                SEC                     ; $04:F670: 38          ;
                SBC #$08                ; $04:F671: E9 08       ;
                STA $021A               ; $04:F673: 8D 1A 02    ;
                STZ $09                 ; $04:F676: 64 09       ;
CODE_04F678:    LDA $0BA0               ; $04:F678: AD A0 0B    ;
                BNE CODE_04F68C         ; $04:F67B: D0 0F       ;
                INC $0B9F               ; $04:F67D: EE 9F 0B    ;
                LDA $0B9F               ; $04:F680: AD 9F 0B    ;
                CMP #$40                ; $04:F683: C9 40       ;
                BCC CODE_04F69B         ; $04:F685: 90 14       ;
                LDA #$40                ; $04:F687: A9 40       ;
                STA $0B9F               ; $04:F689: 8D 9F 0B    ;
CODE_04F68C:    INC $0BA0               ; $04:F68C: EE A0 0B    ;
                LDA $0BA0               ; $04:F68F: AD A0 0B    ;
                CMP #$88                ; $04:F692: C9 88       ;
                BCC CODE_04F69B         ; $04:F694: 90 05       ;
                LDA #$88                ; $04:F696: A9 88       ;
                STA $0BA0               ; $04:F698: 8D A0 0B    ;
CODE_04F69B:    JSR CODE_04F74C         ; $04:F69B: 20 4C F7    ;
                JSR CODE_04FD29         ; $04:F69E: 20 29 FD    ;
                JMP CODE_04F9D5         ; $04:F6A1: 4C D5 F9    ;

                LDA $03AE               ; $04:F6A4: AD AE 03    ;
                STA $0900,y             ; $04:F6A7: 99 00 09    ;
                STA $0908,y             ; $04:F6AA: 99 08 09    ;
                CLC                     ; $04:F6AD: 18          ;
                ADC #$10                ; $04:F6AE: 69 10       ;
                STA $0904,y             ; $04:F6B0: 99 04 09    ;
                STA $090C,y             ; $04:F6B3: 99 0C 09    ;
                LDA $0238               ; $04:F6B6: AD 38 02    ;
                STA $0901,y             ; $04:F6B9: 99 01 09    ;
                STA $0905,y             ; $04:F6BC: 99 05 09    ;
                CLC                     ; $04:F6BF: 18          ;
                ADC #$10                ; $04:F6C0: 69 10       ;
                STA $0909,y             ; $04:F6C2: 99 09 09    ;
                STA $090D,y             ; $04:F6C5: 99 0D 09    ;
                LDA #$CE                ; $04:F6C8: A9 CE       ;
                STA $0902,y             ; $04:F6CA: 99 02 09    ;
                STA $0906,y             ; $04:F6CD: 99 06 09    ;
                STA $090A,y             ; $04:F6D0: 99 0A 09    ;
                STA $090E,y             ; $04:F6D3: 99 0E 09    ;
                LDA #$2D                ; $04:F6D6: A9 2D       ;
                STA $0903,y             ; $04:F6D8: 99 03 09    ;
                LDA #$6D                ; $04:F6DB: A9 6D       ;
                STA $0907,y             ; $04:F6DD: 99 07 09    ;
                LDA #$AD                ; $04:F6E0: A9 AD       ;
                STA $090B,y             ; $04:F6E2: 99 0B 09    ;
                LDA #$CD                ; $04:F6E5: A9 CD       ;
                STA $090F,y             ; $04:F6E7: 99 0F 09    ;
                LDA #$02                ; $04:F6EA: A9 02       ;
                STA $0D00,y             ; $04:F6EC: 99 00 0D    ;
                STA $0D04,y             ; $04:F6EF: 99 04 0D    ;
                STA $0D08,y             ; $04:F6F2: 99 08 0D    ;
                STA $0D0C,y             ; $04:F6F5: 99 0C 0D    ;
                RTS                     ; $04:F6F8: 60          ;

CODE_04F6F9:    LDA $03AE               ; $04:F6F9: AD AE 03    ;
                STA $0900,y             ; $04:F6FC: 99 00 09    ;
                STA $0908,y             ; $04:F6FF: 99 08 09    ;
                CLC                     ; $04:F702: 18          ;
                ADC #$10                ; $04:F703: 69 10       ;
                STA $0904,y             ; $04:F705: 99 04 09    ;
                STA $090C,y             ; $04:F708: 99 0C 09    ;
                LDA $0238               ; $04:F70B: AD 38 02    ;
                STA $0909,y             ; $04:F70E: 99 09 09    ;
                STA $090D,y             ; $04:F711: 99 0D 09    ;
                CLC                     ; $04:F714: 18          ;
                ADC #$08                ; $04:F715: 69 08       ;
                STA $0901,y             ; $04:F717: 99 01 09    ;
                STA $0905,y             ; $04:F71A: 99 05 09    ;
                LDA #$CE                ; $04:F71D: A9 CE       ;
                STA $090A,y             ; $04:F71F: 99 0A 09    ;
                STA $090E,y             ; $04:F722: 99 0E 09    ;
                LDA #$DE                ; $04:F725: A9 DE       ;
                STA $0902,y             ; $04:F727: 99 02 09    ;
                STA $0906,y             ; $04:F72A: 99 06 09    ;
                LDA #$2D                ; $04:F72D: A9 2D       ;
                STA $0903,y             ; $04:F72F: 99 03 09    ;
                STA $090B,y             ; $04:F732: 99 0B 09    ;
                LDA #$6D                ; $04:F735: A9 6D       ;
                STA $0907,y             ; $04:F737: 99 07 09    ;
                STA $090F,y             ; $04:F73A: 99 0F 09    ;
                LDA #$02                ; $04:F73D: A9 02       ;
                STA $0D00,y             ; $04:F73F: 99 00 0D    ;
                STA $0D04,y             ; $04:F742: 99 04 0D    ;
                STA $0D08,y             ; $04:F745: 99 08 0D    ;
                STA $0D0C,y             ; $04:F748: 99 0C 0D    ;
                RTS                     ; $04:F74B: 60          ;

CODE_04F74C:    LDA $0B9F               ; $04:F74C: AD 9F 0B    ;
                SEC                     ; $04:F74F: 38          ;
                SBC #$28                ; $04:F750: E9 28       ;
                BPL CODE_04F756         ; $04:F752: 10 02       ;
                LDA #$00                ; $04:F754: A9 00       ;
CODE_04F756:    LSR A                   ; $04:F756: 4A          ;
                LSR A                   ; $04:F757: 4A          ;
                STA $00                 ; $04:F758: 85 00       ;
                LDA $0BA0               ; $04:F75A: AD A0 0B    ;
                AND #$08                ; $04:F75D: 29 08       ;
                LSR A                   ; $04:F75F: 4A          ;
                LSR A                   ; $04:F760: 4A          ;
                LSR A                   ; $04:F761: 4A          ;
                STA $01                 ; $04:F762: 85 01       ;
                LDA $03AE               ; $04:F764: AD AE 03    ;
                CLC                     ; $04:F767: 18          ;
                ADC $0BA0               ; $04:F768: 6D A0 0B    ;
                CLC                     ; $04:F76B: 18          ;
                ADC $01                 ; $04:F76C: 65 01       ;
                STA $0900               ; $04:F76E: 8D 00 09    ;
                STA $0910               ; $04:F771: 8D 10 09    ;
                CLC                     ; $04:F774: 18          ;
                ADC #$10                ; $04:F775: 69 10       ;
                SEC                     ; $04:F777: 38          ;
                SBC $01                 ; $04:F778: E5 01       ;
                STA $0904               ; $04:F77A: 8D 04 09    ;
                STA $0914               ; $04:F77D: 8D 14 09    ;
                CLC                     ; $04:F780: 18          ;
                ADC #$10                ; $04:F781: 69 10       ;
                SEC                     ; $04:F783: 38          ;
                SBC $01                 ; $04:F784: E5 01       ;
                STA $0908               ; $04:F786: 8D 08 09    ;
                STA $0918               ; $04:F789: 8D 18 09    ;
                LDA $0238               ; $04:F78C: AD 38 02    ;
                SEC                     ; $04:F78F: 38          ;
                SBC $00                 ; $04:F790: E5 00       ;
                CLC                     ; $04:F792: 18          ;
                ADC $01                 ; $04:F793: 65 01       ;
                STA $0911               ; $04:F795: 8D 11 09    ;
                STA $0915               ; $04:F798: 8D 15 09    ;
                STA $0919               ; $04:F79B: 8D 19 09    ;
                CLC                     ; $04:F79E: 18          ;
                ADC #$08                ; $04:F79F: 69 08       ;
                STA $0901               ; $04:F7A1: 8D 01 09    ;
                STA $0905               ; $04:F7A4: 8D 05 09    ;
                STA $0909               ; $04:F7A7: 8D 09 09    ;
                LDA #$DE                ; $04:F7AA: A9 DE       ;
                STA $0902               ; $04:F7AC: 8D 02 09    ;
                STA $090A               ; $04:F7AF: 8D 0A 09    ;
                LDA #$EC                ; $04:F7B2: A9 EC       ;
                STA $0906               ; $04:F7B4: 8D 06 09    ;
                LDA #$CE                ; $04:F7B7: A9 CE       ;
                STA $0912               ; $04:F7B9: 8D 12 09    ;
                STA $091A               ; $04:F7BC: 8D 1A 09    ;
                LDA #$EA                ; $04:F7BF: A9 EA       ;
                STA $0916               ; $04:F7C1: 8D 16 09    ;
                LDA #$2D                ; $04:F7C4: A9 2D       ;
                STA $0903               ; $04:F7C6: 8D 03 09    ;
                STA $0907               ; $04:F7C9: 8D 07 09    ;
                STA $0913               ; $04:F7CC: 8D 13 09    ;
                STA $0917               ; $04:F7CF: 8D 17 09    ;
                LDA #$6D                ; $04:F7D2: A9 6D       ;
                STA $090B               ; $04:F7D4: 8D 0B 09    ;
                STA $091B               ; $04:F7D7: 8D 1B 09    ;
                LDA #$02                ; $04:F7DA: A9 02       ;
                STA $0D00               ; $04:F7DC: 8D 00 0D    ;
                STA $0D04               ; $04:F7DF: 8D 04 0D    ;
                STA $0D08               ; $04:F7E2: 8D 08 0D    ;
                STA $0D10               ; $04:F7E5: 8D 10 0D    ;
                STA $0D14               ; $04:F7E8: 8D 14 0D    ;
                STA $0D18               ; $04:F7EB: 8D 18 0D    ;
                LDA $03AE               ; $04:F7EE: AD AE 03    ;
                CLC                     ; $04:F7F1: 18          ;
                ADC $0BA0               ; $04:F7F2: 6D A0 0B    ;
                INC A                   ; $04:F7F5: 1A          ;
                INC A                   ; $04:F7F6: 1A          ;
                STA $0920               ; $04:F7F7: 8D 20 09    ;
                CLC                     ; $04:F7FA: 18          ;
                ADC #$08                ; $04:F7FB: 69 08       ;
                STA $0924               ; $04:F7FD: 8D 24 09    ;
                INC A                   ; $04:F800: 1A          ;
                STA $0928               ; $04:F801: 8D 28 09    ;
                CLC                     ; $04:F804: 18          ;
                ADC #$08                ; $04:F805: 69 08       ;
                STA $092C               ; $04:F807: 8D 2C 09    ;
                INC A                   ; $04:F80A: 1A          ;
                STA $0930               ; $04:F80B: 8D 30 09    ;
                CLC                     ; $04:F80E: 18          ;
                ADC #$08                ; $04:F80F: 69 08       ;
                STA $0934               ; $04:F811: 8D 34 09    ;
                INC A                   ; $04:F814: 1A          ;
                STA $0938               ; $04:F815: 8D 38 09    ;
                CLC                     ; $04:F818: 18          ;
                ADC #$08                ; $04:F819: 69 08       ;
                STA $093C               ; $04:F81B: 8D 3C 09    ;
                LDA #$C8                ; $04:F81E: A9 C8       ;
                STA $0921               ; $04:F820: 8D 21 09    ;
                STA $0925               ; $04:F823: 8D 25 09    ;
                STA $0929               ; $04:F826: 8D 29 09    ;
                STA $092D               ; $04:F829: 8D 2D 09    ;
                STA $0931               ; $04:F82C: 8D 31 09    ;
                STA $0935               ; $04:F82F: 8D 35 09    ;
                STA $0939               ; $04:F832: 8D 39 09    ;
                STA $093D               ; $04:F835: 8D 3D 09    ;
                LDA $0BA0               ; $04:F838: AD A0 0B    ;
                AND #$0F                ; $04:F83B: 29 0F       ;
                CMP #$0F                ; $04:F83D: C9 0F       ;
                BNE CODE_04F846         ; $04:F83F: D0 05       ;
                LDA #$0E                ; $04:F841: A9 0E       ;\Swimming sound
                STA $1600               ; $04:F843: 8D 00 16    ;/
CODE_04F846:    LDA $0BA0               ; $04:F846: AD A0 0B    ;
                AND #$08                ; $04:F849: 29 08       ;
                ASL A                   ; $04:F84B: 0A          ;
                ORA #$CB                ; $04:F84C: 09 CB       ;
                STA $0922               ; $04:F84E: 8D 22 09    ;
                STA $092A               ; $04:F851: 8D 2A 09    ;
                STA $0932               ; $04:F854: 8D 32 09    ;
                STA $093A               ; $04:F857: 8D 3A 09    ;
                INC A                   ; $04:F85A: 1A          ;
                STA $0926               ; $04:F85B: 8D 26 09    ;
                STA $092E               ; $04:F85E: 8D 2E 09    ;
                STA $0936               ; $04:F861: 8D 36 09    ;
                STA $093E               ; $04:F864: 8D 3E 09    ;
                LDA #$2D                ; $04:F867: A9 2D       ;
                STA $0923               ; $04:F869: 8D 23 09    ;
                STA $0927               ; $04:F86C: 8D 27 09    ;
                STA $092B               ; $04:F86F: 8D 2B 09    ;
                STA $092F               ; $04:F872: 8D 2F 09    ;
                STA $0933               ; $04:F875: 8D 33 09    ;
                STA $0937               ; $04:F878: 8D 37 09    ;
                STA $093B               ; $04:F87B: 8D 3B 09    ;
                STA $093F               ; $04:F87E: 8D 3F 09    ;
                LDY #$00                ; $04:F881: A0 00       ;
CODE_04F883:    LDA $0900,y             ; $04:F883: B9 00 09    ;
                CMP #$40                ; $04:F886: C9 40       ;
                BCS CODE_04F88F         ; $04:F888: B0 05       ;
                LDA #$F0                ; $04:F88A: A9 F0       ;
                STA $0901,y             ; $04:F88C: 99 01 09    ;
CODE_04F88F:    INY                     ; $04:F88F: C8          ;
                INY                     ; $04:F890: C8          ;
                INY                     ; $04:F891: C8          ;
                INY                     ; $04:F892: C8          ;
                BNE CODE_04F883         ; $04:F893: D0 EE       ;
                RTS                     ; $04:F895: 60          ;

CODE_04F896:    INC $0F7F               ; $04:F896: EE 7F 0F    ;
                LDA $0F7F               ; $04:F899: AD 7F 0F    ;
                CMP #$D0                ; $04:F89C: C9 D0       ;
                BCC CODE_04F8AB         ; $04:F89E: 90 0B       ;
                JSR CODE_04FD29         ; $04:F8A0: 20 29 FD    ;
                LDA #$D0                ; $04:F8A3: A9 D0       ;
                STA $0F7F               ; $04:F8A5: 8D 7F 0F    ;
                JMP CODE_04F8BA         ; $04:F8A8: 4C BA F8    ;

CODE_04F8AB:    CMP #$20                ; $04:F8AB: C9 20       ;
                BCC CODE_04F8BA         ; $04:F8AD: 90 0B       ;
                PHA                     ; $04:F8AF: 48          ;
                AND #$0F                ; $04:F8B0: 29 0F       ;
                BNE CODE_04F8B9         ; $04:F8B2: D0 05       ;
                LDA #$0E                ; $04:F8B4: A9 0E       ;\Swimming sound
                STA $1600               ; $04:F8B6: 8D 00 16    ;/
CODE_04F8B9:    PLA                     ; $04:F8B9: 68          ;
CODE_04F8BA:    LSR A                   ; $04:F8BA: 4A          ;
                LSR A                   ; $04:F8BB: 4A          ;
                LSR A                   ; $04:F8BC: 4A          ;
                CMP #$03                ; $04:F8BD: C9 03       ;
                BCC CODE_04F8C3         ; $04:F8BF: 90 02       ;
                LDA #$03                ; $04:F8C1: A9 03       ;
CODE_04F8C3:    PHA                     ; $04:F8C3: 48          ;
                JSR CODE_04F8DC         ; $04:F8C4: 20 DC F8    ;
                PLA                     ; $04:F8C7: 68          ;
                CMP #$02                ; $04:F8C8: C9 02       ;
                BNE CODE_04F8D9         ; $04:F8CA: D0 0D       ;
                LDA $0BA4               ; $04:F8CC: AD A4 0B    ;
                BNE CODE_04F8D9         ; $04:F8CF: D0 08       ;
                LDA #$2B                ; $04:F8D1: A9 2B       ;\
                STA $1600               ; $04:F8D3: 8D 00 16    ;/SMB2 pick up vegetable sound
                STA $0BA4               ; $04:F8D6: 8D A4 0B    ;
CODE_04F8D9:    JMP CODE_04F9D5         ; $04:F8D9: 4C D5 F9    ;

CODE_04F8DC:    ASL A                   ; $04:F8DC: 0A          ;
                ASL A                   ; $04:F8DD: 0A          ;
                ASL A                   ; $04:F8DE: 0A          ;
                TAX                     ; $04:F8DF: AA          ;
                LDY #$08                ; $04:F8E0: A0 08       ;
                LDA #$88                ; $04:F8E2: A9 88       ;
                STA $0900,y             ; $04:F8E4: 99 00 09    ;
                STA $0908,y             ; $04:F8E7: 99 08 09    ;
                LDA #$90                ; $04:F8EA: A9 90       ;
                STA $0904,y             ; $04:F8EC: 99 04 09    ;
                LDA #$B0                ; $04:F8EF: A9 B0       ;
                STA $0901,y             ; $04:F8F1: 99 01 09    ;
                STA $0905,y             ; $04:F8F4: 99 05 09    ;
                LDA #$C0                ; $04:F8F7: A9 C0       ;
                STA $0909,y             ; $04:F8F9: 99 09 09    ;
                LDA #$80                ; $04:F8FC: A9 80       ;
                STA $0902,y             ; $04:F8FE: 99 02 09    ;
                INC A                   ; $04:F901: 1A          ;
                STA $0906,y             ; $04:F902: 99 06 09    ;
                LDA #$A0                ; $04:F905: A9 A0       ;
                STA $090A,y             ; $04:F907: 99 0A 09    ;
                LDA #$2D                ; $04:F90A: A9 2D       ;
                STA $0903,y             ; $04:F90C: 99 03 09    ;
                STA $0907,y             ; $04:F90F: 99 07 09    ;
                STA $090B,y             ; $04:F912: 99 0B 09    ;
                LDY #$00                ; $04:F915: A0 00       ;
CODE_04F917:    LDA DATA_04F9B5,x       ; $04:F917: BD B5 F9    ;
                STA $0900,y             ; $04:F91A: 99 00 09    ;
                INY                     ; $04:F91D: C8          ;
                INX                     ; $04:F91E: E8          ;
                CPY #$08                ; $04:F91F: C0 08       ;
                BCC CODE_04F917         ; $04:F921: 90 F4       ;
                LDA #$02                ; $04:F923: A9 02       ;
                STA $0D00               ; $04:F925: 8D 00 0D    ;
                STA $0D04               ; $04:F928: 8D 04 0D    ;
                STA $0D08               ; $04:F92B: 8D 08 0D    ;
                STA $0D0C               ; $04:F92E: 8D 0C 0D    ;
                STA $0D10               ; $04:F931: 8D 10 0D    ;
                LDA #$7E                ; $04:F934: A9 7E       ;
                CLC                     ; $04:F936: 18          ;
                ADC $0F7F               ; $04:F937: 6D 7F 0F    ;
                STA $091C               ; $04:F93A: 8D 1C 09    ;
                CMP #$88                ; $04:F93D: C9 88       ;
                BCS CODE_04F945         ; $04:F93F: B0 04       ;
                LDA #$F0                ; $04:F941: A9 F0       ;
                BRA CODE_04F947         ; $04:F943: 80 02       ;

CODE_04F945:    LDA #$C0                ; $04:F945: A9 C0       ;
CODE_04F947:    STA $091D               ; $04:F947: 8D 1D 09    ;
                LDA $09                 ; $04:F94A: A5 09       ;
                LSR A                   ; $04:F94C: 4A          ;
                LSR A                   ; $04:F94D: 4A          ;
                AND #$02                ; $04:F94E: 29 02       ;
                STA $01                 ; $04:F950: 85 01       ;
                CLC                     ; $04:F952: 18          ;
                ADC #$E6                ; $04:F953: 69 E6       ;
                STA $091E               ; $04:F955: 8D 1E 09    ;
                LDA #$2D                ; $04:F958: A9 2D       ;
                STA $091F               ; $04:F95A: 8D 1F 09    ;
                LDA #$02                ; $04:F95D: A9 02       ;
                STA $0D1C               ; $04:F95F: 8D 1C 0D    ;
                LDY #$20                ; $04:F962: A0 20       ;
                LDX #$06                ; $04:F964: A2 06       ;
                LDA #$78                ; $04:F966: A9 78       ;
                CLC                     ; $04:F968: 18          ;
                ADC $0F7F               ; $04:F969: 6D 7F 0F    ;
                STA $00                 ; $04:F96C: 85 00       ;
CODE_04F96E:    LDA $00                 ; $04:F96E: A5 00       ;
                STA $0900,y             ; $04:F970: 99 00 09    ;
                STA $0904,y             ; $04:F973: 99 04 09    ;
                CMP #$91                ; $04:F976: C9 91       ;
                BCS CODE_04F984         ; $04:F978: B0 0A       ;
                LDA #$F0                ; $04:F97A: A9 F0       ;
                STA $0901,y             ; $04:F97C: 99 01 09    ;
                STA $0905,y             ; $04:F97F: 99 05 09    ;
                BRA CODE_04F98E         ; $04:F982: 80 0A       ;

CODE_04F984:    LDA #$C0                ; $04:F984: A9 C0       ;
                STA $0901,y             ; $04:F986: 99 01 09    ;
                LDA #$C8                ; $04:F989: A9 C8       ;
                STA $0905,y             ; $04:F98B: 99 05 09    ;
CODE_04F98E:    LDA #$BA                ; $04:F98E: A9 BA       ;
                CLC                     ; $04:F990: 18          ;
                ADC $01                 ; $04:F991: 65 01       ;
                STA $0902,y             ; $04:F993: 99 02 09    ;
                INC A                   ; $04:F996: 1A          ;
                STA $0906,y             ; $04:F997: 99 06 09    ;
                LDA #$2D                ; $04:F99A: A9 2D       ;
                STA $0903,y             ; $04:F99C: 99 03 09    ;
                STA $0907,y             ; $04:F99F: 99 07 09    ;
                INY                     ; $04:F9A2: C8          ;
                INY                     ; $04:F9A3: C8          ;
                INY                     ; $04:F9A4: C8          ;
                INY                     ; $04:F9A5: C8          ;
                INY                     ; $04:F9A6: C8          ;
                INY                     ; $04:F9A7: C8          ;
                INY                     ; $04:F9A8: C8          ;
                INY                     ; $04:F9A9: C8          ;
                LDA $00                 ; $04:F9AA: A5 00       ;
                SEC                     ; $04:F9AC: 38          ;
                SBC #$0A                ; $04:F9AD: E9 0A       ;
                STA $00                 ; $04:F9AF: 85 00       ;
                DEX                     ; $04:F9B1: CA          ;
                BNE CODE_04F96E         ; $04:F9B2: D0 BA       ;
                RTS                     ; $04:F9B4: 60          ;

DATA_04F9B5:    db $98,$C0,$E4,$2D,$90,$C0,$A1,$2D              ;
                db $99,$BF,$E4,$2D,$90,$C0,$A1,$2D              ;
                db $9B,$BF,$E2,$2D,$90,$C0,$E0,$2D              ;
                db $90,$C0,$E0,$2D,$90,$C0,$E0,$2D              ;

CODE_04F9D5:    LDA $0BA6               ; $04:F9D5: AD A6 0B    ;
                BEQ CODE_04F9E1         ; $04:F9D8: F0 07       ;
                BMI CODE_04F9F8         ; $04:F9DA: 30 1C       ;
                DEC $0BA6               ; $04:F9DC: CE A6 0B    ;
                BRA CODE_04F9F8         ; $04:F9DF: 80 17       ;

CODE_04F9E1:    LDA $0BA7               ; $04:F9E1: AD A7 0B    ;
                BNE CODE_04F9F8         ; $04:F9E4: D0 12       ;
                INC $0BA7               ; $04:F9E6: EE A7 0B    ;
                LDA #$B8                ; $04:F9E9: A9 B8       ;
                STA $03CE               ; $04:F9EB: 8D CE 03    ;
                LDA $0754               ; $04:F9EE: AD 54 07    ;
                BNE CODE_04F9F8         ; $04:F9F1: D0 05       ;
                LDA #$C8                ; $04:F9F3: A9 C8       ;
                STA $03CE               ; $04:F9F5: 8D CE 03    ;
CODE_04F9F8:    PLY                     ; $04:F9F8: 7A          ;
                PLX                     ; $04:F9F9: FA          ;
                PLB                     ; $04:F9FA: AB          ;
                RTL                     ; $04:F9FB: 6B          ;

CODE_04F9FC:    PHX                     ; $04:F9FC: DA          ;
                STA $02                 ; $04:F9FD: 85 02       ;
                ASL A                   ; $04:F9FF: 0A          ;
                CLC                     ; $04:FA00: 18          ;
                ADC $02                 ; $04:FA01: 65 02       ;
                TAX                     ; $04:FA03: AA          ;
                LDA $00                 ; $04:FA04: A5 00       ;
                STA $0900,y             ; $04:FA06: 99 00 09    ;
                STA $0908,y             ; $04:FA09: 99 08 09    ;
                CLC                     ; $04:FA0C: 18          ;
                ADC #$08                ; $04:FA0D: 69 08       ;
                STA $0904,y             ; $04:FA0F: 99 04 09    ;
                LDA $01                 ; $04:FA12: A5 01       ;
                STA $0901,y             ; $04:FA14: 99 01 09    ;
                STA $0905,y             ; $04:FA17: 99 05 09    ;
                CLC                     ; $04:FA1A: 18          ;
                ADC #$08                ; $04:FA1B: 69 08       ;
                STA $0909,y             ; $04:FA1D: 99 09 09    ;
                LDA DATA_04FA4B,x       ; $04:FA20: BD 4B FA    ;
                STA $0902,y             ; $04:FA23: 99 02 09    ;
                LDA DATA_04FA4B+1,x     ; $04:FA26: BD 4C FA    ;
                STA $0906,y             ; $04:FA29: 99 06 09    ;
                LDA DATA_04FA4B+2,x     ; $04:FA2C: BD 4D FA    ;
                STA $090A,y             ; $04:FA2F: 99 0A 09    ;
                LDA DATA_04FA63,x       ; $04:FA32: BD 63 FA    ;
                STA $0903,y             ; $04:FA35: 99 03 09    ;
                LDA DATA_04FA63+1,x     ; $04:FA38: BD 64 FA    ;
                STA $0907,y             ; $04:FA3B: 99 07 09    ;
                LDA DATA_04FA63+2,x     ; $04:FA3E: BD 65 FA    ;
                STA $090B,y             ; $04:FA41: 99 0B 09    ;
                LDA #$02                ; $04:FA44: A9 02       ;
                STA $0D08,y             ; $04:FA46: 99 08 0D    ;
                PLX                     ; $04:FA49: FA          ;
                RTS                     ; $04:FA4A: 60          ;

DATA_04FA4B:    db $B6,$B6,$C9,$B7,$B7,$CB,$B8,$B9              ;
                db $EC,$B9,$B8,$EC,$E3,$E2,$E4,$F3              ;
                db $F2,$E6,$E2,$E3,$E4,$F2,$F3,$E6              ;

DATA_04FA63:    db $2D,$6D,$2D,$2D,$6D,$2D,$2D,$2D              ;
                db $2D,$6D,$6D,$6D,$6D,$6D,$6D,$6D              ;
                db $6D,$6D,$2D,$2D,$2D,$2D,$2D,$2D              ;

CODE_04FA7B:    DEC $0F7D               ; $04:FA7B: CE 7D 0F    ;
                LDA $0F7D               ; $04:FA7E: AD 7D 0F    ;
                BPL CODE_04FA8B         ; $04:FA81: 10 08       ;
                INC $0F7F               ; $04:FA83: EE 7F 0F    ;
                LDA #$07                ; $04:FA86: A9 07       ;
                STA $0F7D               ; $04:FA88: 8D 7D 0F    ;
CODE_04FA8B:    LDA $0F7F               ; $04:FA8B: AD 7F 0F    ;
                CMP #$03                ; $04:FA8E: C9 03       ;
                BCC CODE_04FA97         ; $04:FA90: 90 05       ;
                LDA #$03                ; $04:FA92: A9 03       ;
                STA $0F7F               ; $04:FA94: 8D 7F 0F    ;
CODE_04FA97:    PHX                     ; $04:FA97: DA          ;
                ASL A                   ; $04:FA98: 0A          ;
                TAX                     ; $04:FA99: AA          ;
                LDA PNTR_04FAA7,x       ; $04:FA9A: BD A7 FA    ;
                STA $00                 ; $04:FA9D: 85 00       ;
                LDA PNTR_04FAA7+1,x     ; $04:FA9F: BD A8 FA    ;
                STA $01                 ; $04:FAA2: 85 01       ;
                JMP ($0000)             ; $04:FAA4: 6C 00 00    ;

PNTR_04FAA7:    dw CODE_04FAAF                                  ;
                dw CODE_04FB18                                  ;
                dw CODE_04FB5E                                  ;
                dw CODE_04FB77                                  ;

CODE_04FAAF:    LDA #$94                ; $04:FAAF: A9 94       ;
                STA $0958               ; $04:FAB1: 8D 58 09    ;
                LDA #$BB                ; $04:FAB4: A9 BB       ;
                STA $0959               ; $04:FAB6: 8D 59 09    ;
                LDA #$C0                ; $04:FAB9: A9 C0       ;
                STA $095A               ; $04:FABB: 8D 5A 09    ;
                LDA #$2D                ; $04:FABE: A9 2D       ;
                STA $095B               ; $04:FAC0: 8D 5B 09    ;
                LDA #$02                ; $04:FAC3: A9 02       ;
                STA $0D58               ; $04:FAC5: 8D 58 0D    ;
                LDA #$88                ; $04:FAC8: A9 88       ;
                STA $0960               ; $04:FACA: 8D 60 09    ;
                STA $0970               ; $04:FACD: 8D 70 09    ;
                LDA #$90                ; $04:FAD0: A9 90       ;
                STA $0964               ; $04:FAD2: 8D 64 09    ;
                STA $0974               ; $04:FAD5: 8D 74 09    ;
                LDA #$C0                ; $04:FAD8: A9 C0       ;
                STA $0971               ; $04:FADA: 8D 71 09    ;
                STA $0975               ; $04:FADD: 8D 75 09    ;
                LDA #$9C                ; $04:FAE0: A9 9C       ;
                STA $0972               ; $04:FAE2: 8D 72 09    ;
                INC A                   ; $04:FAE5: 1A          ;
                STA $0976               ; $04:FAE6: 8D 76 09    ;
                LDA #$B8                ; $04:FAE9: A9 B8       ;
                STA $0961               ; $04:FAEB: 8D 61 09    ;
                STA $0965               ; $04:FAEE: 8D 65 09    ;
                LDA #$8C                ; $04:FAF1: A9 8C       ;
                STA $0962               ; $04:FAF3: 8D 62 09    ;
                INC A                   ; $04:FAF6: 1A          ;
                STA $0966               ; $04:FAF7: 8D 66 09    ;
                LDA #$2D                ; $04:FAFA: A9 2D       ;
                STA $0973               ; $04:FAFC: 8D 73 09    ;
                STA $0977               ; $04:FAFF: 8D 77 09    ;
                STA $0963               ; $04:FB02: 8D 63 09    ;
                STA $0967               ; $04:FB05: 8D 67 09    ;
                LDA #$02                ; $04:FB08: A9 02       ;
                STA $0D70               ; $04:FB0A: 8D 70 0D    ;
                STA $0D74               ; $04:FB0D: 8D 74 0D    ;
                STA $0D60               ; $04:FB10: 8D 60 0D    ;
                STA $0D64               ; $04:FB13: 8D 64 0D    ;
                PLX                     ; $04:FB16: FA          ;
                RTS                     ; $04:FB17: 60          ;

CODE_04FB18:    LDA #$9A                ; $04:FB18: A9 9A       ;
                STA $0958               ; $04:FB1A: 8D 58 09    ;
                LDA #$BE                ; $04:FB1D: A9 BE       ;
                STA $0959               ; $04:FB1F: 8D 59 09    ;
                LDA #$C2                ; $04:FB22: A9 C2       ;
                STA $095A               ; $04:FB24: 8D 5A 09    ;
                LDA #$2D                ; $04:FB27: A9 2D       ;
                STA $095B               ; $04:FB29: 8D 5B 09    ;
                LDA #$02                ; $04:FB2C: A9 02       ;
                STA $0D58               ; $04:FB2E: 8D 58 0D    ;
                LDA #$88                ; $04:FB31: A9 88       ;
                STA $0970               ; $04:FB33: 8D 70 09    ;
                LDA #$90                ; $04:FB36: A9 90       ;
                STA $0974               ; $04:FB38: 8D 74 09    ;
                LDA #$C0                ; $04:FB3B: A9 C0       ;
                STA $0971               ; $04:FB3D: 8D 71 09    ;
                STA $0975               ; $04:FB40: 8D 75 09    ;
                LDA #$99                ; $04:FB43: A9 99       ;
                STA $0972               ; $04:FB45: 8D 72 09    ;
                INC A                   ; $04:FB48: 1A          ;
                STA $0976               ; $04:FB49: 8D 76 09    ;
                LDA #$2D                ; $04:FB4C: A9 2D       ;
                STA $0973               ; $04:FB4E: 8D 73 09    ;
                STA $0977               ; $04:FB51: 8D 77 09    ;
                LDA #$02                ; $04:FB54: A9 02       ;
                STA $0D70               ; $04:FB56: 8D 70 0D    ;
                STA $0D74               ; $04:FB59: 8D 74 0D    ;
                PLX                     ; $04:FB5C: FA          ;
                RTS                     ; $04:FB5D: 60          ;

CODE_04FB5E:    LDA #$9C                ; $04:FB5E: A9 9C       ;
                STA $0958               ; $04:FB60: 8D 58 09    ;
                LDA #$C1                ; $04:FB63: A9 C1       ;
                STA $0959               ; $04:FB65: 8D 59 09    ;
                LDA #$C4                ; $04:FB68: A9 C4       ;
                STA $095A               ; $04:FB6A: 8D 5A 09    ;
                LDA #$2D                ; $04:FB6D: A9 2D       ;
                STA $095B               ; $04:FB6F: 8D 5B 09    ;
                LDA #$02                ; $04:FB72: A9 02       ;
                STA $0D58               ; $04:FB74: 8D 58 0D    ;
CODE_04FB77:    LDA #$88                ; $04:FB77: A9 88       ;
                STA $0970               ; $04:FB79: 8D 70 09    ;
                LDA #$90                ; $04:FB7C: A9 90       ;
                STA $0974               ; $04:FB7E: 8D 74 09    ;
                LDA #$C0                ; $04:FB81: A9 C0       ;
                STA $0971               ; $04:FB83: 8D 71 09    ;
                STA $0975               ; $04:FB86: 8D 75 09    ;
                LDA #$C6                ; $04:FB89: A9 C6       ;
                STA $0972               ; $04:FB8B: 8D 72 09    ;
                INC A                   ; $04:FB8E: 1A          ;
                STA $0976               ; $04:FB8F: 8D 76 09    ;
                LDA #$2D                ; $04:FB92: A9 2D       ;
                STA $0973               ; $04:FB94: 8D 73 09    ;
                STA $0977               ; $04:FB97: 8D 77 09    ;
                LDA #$02                ; $04:FB9A: A9 02       ;
                STA $0D70               ; $04:FB9C: 8D 70 0D    ;
                STA $0D74               ; $04:FB9F: 8D 74 0D    ;
                PLX                     ; $04:FBA2: FA          ;
                RTS                     ; $04:FBA3: 60          ;

CODE_04FBA4:    LDA #$0F                ; $04:FBA4: A9 0F       ;\
                STA $1600               ; $04:FBA6: 8D 00 16    ;/SMW hit during cape flight sound
                LDA $0754               ; $04:FBA9: AD 54 07    ;
                EOR #$01                ; $04:FBAC: 49 01       ;
                ASL A                   ; $04:FBAE: 0A          ;
                ASL A                   ; $04:FBAF: 0A          ;
                ASL A                   ; $04:FBB0: 0A          ;
                ASL A                   ; $04:FBB1: 0A          ;
                CLC                     ; $04:FBB2: 18          ;
                ADC #$E0                ; $04:FBB3: 69 E0       ;
                CLC                     ; $04:FBB5: 18          ;
                ADC #$08                ; $04:FBB6: 69 08       ;
                STA $03CE               ; $04:FBB8: 8D CE 03    ;
                LDY #$9C                ; $04:FBBB: A0 9C       ;
                LDA #$0B                ; $04:FBBD: A9 0B       ;
                STA $01                 ; $04:FBBF: 85 01       ;
                STZ $00                 ; $04:FBC1: 64 00       ;
                LDA #$00                ; $04:FBC3: A9 00       ;
CODE_04FBC5:    STA ($00),y             ; $04:FBC5: 91 00       ;
                INY                     ; $04:FBC7: C8          ;
                CPY #$BF                ; $04:FBC8: C0 BF       ;
                BNE CODE_04FBC5         ; $04:FBCA: D0 F9       ;
                INC $0B9C               ; $04:FBCC: EE 9C 0B    ;
                DEC $0BA6               ; $04:FBCF: CE A6 0B    ;
                LDA $075F               ; $04:FBD2: AD 5F 07    ;
                ASL A                   ; $04:FBD5: 0A          ;
                TAX                     ; $04:FBD6: AA          ;
                LDA PNTR_04FBE4,x       ; $04:FBD7: BD E4 FB    ;
                STA $00                 ; $04:FBDA: 85 00       ;
                LDA PNTR_04FBE4+1,x     ; $04:FBDC: BD E5 FB    ;
                STA $01                 ; $04:FBDF: 85 01       ;
                JMP ($0000)             ; $04:FBE1: 6C 00 00    ;

PNTR_04FBE4:    dw CODE_04FBFE                                  ;
                dw CODE_04FC26                                  ;
                dw CODE_04FC4E                                  ;
                dw CODE_04FC7C                                  ;
                dw CODE_04FCAE                                  ;
                dw CODE_04FCD4                                  ;
                dw CODE_04FCEE                                  ;
                dw CODE_04FBFE                                  ;
                dw CODE_04FBFE                                  ;
                dw CODE_04FCAE                                  ;
                dw CODE_04FCD4                                  ;
                dw CODE_04FCEE                                  ;
                dw CODE_04FBFE                                  ;

CODE_04FBFE:    LDA $021A               ; $04:FBFE: AD 1A 02    ;
                SEC                     ; $04:FC01: 38          ;
                SBC #$04                ; $04:FC02: E9 04       ;
                STA $021A               ; $04:FC04: 8D 1A 02    ;
                LDA $03AE               ; $04:FC07: AD AE 03    ;
                SEC                     ; $04:FC0A: 38          ;
                SBC #$04                ; $04:FC0B: E9 04       ;
                STA $03AE               ; $04:FC0D: 8D AE 03    ;
                LDA #$08                ; $04:FC10: A9 08       ;
                STA $0F7D               ; $04:FC12: 8D 7D 0F    ;
                LDA #$01                ; $04:FC15: A9 01       ;
                STA $1601               ; $04:FC17: 8D 01 16    ;
                LDA #$FE                ; $04:FC1A: A9 FE       ;
                STA $00A1               ; $04:FC1C: 8D A1 00    ;
                STZ $043D               ; $04:FC1F: 9C 3D 04    ;
                STZ $041D               ; $04:FC22: 9C 1D 04    ;
                RTS                     ; $04:FC25: 60          ;

CODE_04FC26:    LDA $021A               ; $04:FC26: AD 1A 02    ;
                SEC                     ; $04:FC29: 38          ;
                SBC #$0C                ; $04:FC2A: E9 0C       ;
                STA $021A               ; $04:FC2C: 8D 1A 02    ;
                LDA $03AE               ; $04:FC2F: AD AE 03    ;
                SEC                     ; $04:FC32: 38          ;
                SBC #$0C                ; $04:FC33: E9 0C       ;
                STA $03AE               ; $04:FC35: 8D AE 03    ;
                LDA #$08                ; $04:FC38: A9 08       ;
                STA $0F7D               ; $04:FC3A: 8D 7D 0F    ;
                LDA #$01                ; $04:FC3D: A9 01       ;
                STA $1601               ; $04:FC3F: 8D 01 16    ;
                LDA #$FE                ; $04:FC42: A9 FE       ;
                STA $00A1               ; $04:FC44: 8D A1 00    ;
                STZ $043D               ; $04:FC47: 9C 3D 04    ;
                STZ $041D               ; $04:FC4A: 9C 1D 04    ;
                RTS                     ; $04:FC4D: 60          ;

CODE_04FC4E:    LDA $021A               ; $04:FC4E: AD 1A 02    ;
                SEC                     ; $04:FC51: 38          ;
                SBC #$04                ; $04:FC52: E9 04       ;
                STA $021A               ; $04:FC54: 8D 1A 02    ;
                LDA $03AE               ; $04:FC57: AD AE 03    ;
                SEC                     ; $04:FC5A: 38          ;
                SBC #$04                ; $04:FC5B: E9 04       ;
                STA $03AE               ; $04:FC5D: 8D AE 03    ;
                LDA #$08                ; $04:FC60: A9 08       ;
                STA $0F7D               ; $04:FC62: 8D 7D 0F    ;
                STZ $021D               ; $04:FC65: 9C 1D 02    ;
                LDA #$01                ; $04:FC68: A9 01       ;
                STA $1601               ; $04:FC6A: 8D 01 16    ;
                LDA #$FE                ; $04:FC6D: A9 FE       ;
                STA $00A1               ; $04:FC6F: 8D A1 00    ;
                STZ $043D               ; $04:FC72: 9C 3D 04    ;
                STZ $041D               ; $04:FC75: 9C 1D 04    ;
                STZ $0BA0               ; $04:FC78: 9C A0 0B    ;
                RTS                     ; $04:FC7B: 60          ;

CODE_04FC7C:    LDA $021A               ; $04:FC7C: AD 1A 02    ;
                SEC                     ; $04:FC7F: 38          ;
                SBC #$04                ; $04:FC80: E9 04       ;
                STA $021A               ; $04:FC82: 8D 1A 02    ;
                LDA $03AE               ; $04:FC85: AD AE 03    ;
                SEC                     ; $04:FC88: 38          ;
                SBC #$04                ; $04:FC89: E9 04       ;
                STA $03AE               ; $04:FC8B: 8D AE 03    ;
                STA $0BB0               ; $04:FC8E: 8D B0 0B    ;
                STA $0BB1               ; $04:FC91: 8D B1 0B    ;
                STA $0BB2               ; $04:FC94: 8D B2 0B    ;
                STA $0BB3               ; $04:FC97: 8D B3 0B    ;
                LDA #$01                ; $04:FC9A: A9 01       ;
                STA $1601               ; $04:FC9C: 8D 01 16    ;
                LDA #$FE                ; $04:FC9F: A9 FE       ;
                STA $00A1               ; $04:FCA1: 8D A1 00    ;
                STZ $043D               ; $04:FCA4: 9C 3D 04    ;
                STZ $041D               ; $04:FCA7: 9C 1D 04    ;
                STZ $0E67               ; $04:FCAA: 9C 67 0E    ;
                RTS                     ; $04:FCAD: 60          ;

CODE_04FCAE:    LDA $021A               ; $04:FCAE: AD 1A 02    ;
                SEC                     ; $04:FCB1: 38          ;
                SBC #$0C                ; $04:FCB2: E9 0C       ;
                STA $021A               ; $04:FCB4: 8D 1A 02    ;
                LDA $0238               ; $04:FCB7: AD 38 02    ;
                SEC                     ; $04:FCBA: 38          ;
                SBC #$0C                ; $04:FCBB: E9 0C       ;
                STA $0238               ; $04:FCBD: 8D 38 02    ;
                LDA #$01                ; $04:FCC0: A9 01       ;
                STA $1601               ; $04:FCC2: 8D 01 16    ;
                LDA #$FE                ; $04:FCC5: A9 FE       ;
                STA $0B9E               ; $04:FCC7: 8D 9E 0B    ;
                STA $00A1               ; $04:FCCA: 8D A1 00    ;
                STZ $043D               ; $04:FCCD: 9C 3D 04    ;
                STZ $041D               ; $04:FCD0: 9C 1D 04    ;
                RTS                     ; $04:FCD3: 60          ;

CODE_04FCD4:    LDA $021A               ; $04:FCD4: AD 1A 02    ;
                SEC                     ; $04:FCD7: 38          ;
                SBC #$0C                ; $04:FCD8: E9 0C       ;
                STA $021A               ; $04:FCDA: 8D 1A 02    ;
                LDA #$01                ; $04:FCDD: A9 01       ;
                STA $1601               ; $04:FCDF: 8D 01 16    ;
                LDA #$FD                ; $04:FCE2: A9 FD       ;
                STA $00A1               ; $04:FCE4: 8D A1 00    ;
                STZ $043D               ; $04:FCE7: 9C 3D 04    ;
                STZ $041D               ; $04:FCEA: 9C 1D 04    ;
                RTS                     ; $04:FCED: 60          ;

CODE_04FCEE:    STZ $1600               ; $04:FCEE: 9C 00 16    ;
                LDA #$FE                ; $04:FCF1: A9 FE       ;
                STA $00A1               ; $04:FCF3: 8D A1 00    ;
                STZ $043D               ; $04:FCF6: 9C 3D 04    ;
                STZ $041D               ; $04:FCF9: 9C 1D 04    ;
                RTS                     ; $04:FCFC: 60          ;

CODE_04FCFD:    REP #$20                ; $04:FCFD: C2 20       ;
                SEC                     ; $04:FCFF: 38          ;
                SBC #$0008              ; $04:FD00: E9 08 00    ;
                SEC                     ; $04:FD03: 38          ;
                SBC $0042               ; $04:FD04: ED 42 00    ;
                STA $01                 ; $04:FD07: 85 01       ;
                SEP #$20                ; $04:FD09: E2 20       ;
                STA $0900,y             ; $04:FD0B: 99 00 09    ;
                STA $0908,y             ; $04:FD0E: 99 08 09    ;
                LDA #$2D                ; $04:FD11: A9 2D       ;
                STA $0903,y             ; $04:FD13: 99 03 09    ;
                STA $090B,y             ; $04:FD16: 99 0B 09    ;
                XBA                     ; $04:FD19: EB          ;
                CMP #$00                ; $04:FD1A: C9 00       ;
                BEQ CODE_04FD20         ; $04:FD1C: F0 02       ;
                LDA #$01                ; $04:FD1E: A9 01       ;
CODE_04FD20:    ORA #$02                ; $04:FD20: 09 02       ;
                STA $0D00,y             ; $04:FD22: 99 00 0D    ;
                STA $0D08,y             ; $04:FD25: 99 08 0D    ;
                RTS                     ; $04:FD28: 60          ;

CODE_04FD29:    LDA $03CE               ; $04:FD29: AD CE 03    ;
                CMP #$D0                ; $04:FD2C: C9 D0       ;
                BCC CODE_04FD42         ; $04:FD2E: 90 12       ;
                AND #$08                ; $04:FD30: 29 08       ;
                BEQ CODE_04FD42         ; $04:FD32: F0 0E       ;
                LDA $03CE               ; $04:FD34: AD CE 03    ;
                SEC                     ; $04:FD37: 38          ;
                SBC #$08                ; $04:FD38: E9 08       ;
                STA $03CE               ; $04:FD3A: 8D CE 03    ;
                LDA #$30                ; $04:FD3D: A9 30       ;
                STA $0BA6               ; $04:FD3F: 8D A6 0B    ;
CODE_04FD42:    RTS                     ; $04:FD42: 60          ;

CODE_04FD43:    LDA $0EEE               ; $04:FD43: AD EE 0E    ;
                BEQ CODE_04FD4C         ; $04:FD46: F0 04       ;
                DEC $0EEE               ; $04:FD48: CE EE 0E    ;
                RTS                     ; $04:FD4B: 60          ;

CODE_04FD4C:    LDA $0BA3               ; $04:FD4C: AD A3 0B    ;
                CMP #$C0                ; $04:FD4F: C9 C0       ;
                BCS CODE_04FD61         ; $04:FD51: B0 0E       ;
                INC $0BA3               ; $04:FD53: EE A3 0B    ;
                LDA $0BA3               ; $04:FD56: AD A3 0B    ;
                CMP #$C0                ; $04:FD59: C9 C0       ;
                BNE CODE_04FD60         ; $04:FD5B: D0 03       ;
                JSR CODE_04FD74         ; $04:FD5D: 20 74 FD    ;
CODE_04FD60:    RTS                     ; $04:FD60: 60          ;

CODE_04FD61:    JSL CODE_048600         ; $04:FD61: 22 00 86 04 ;
                RTS                     ; $04:FD65: 60          ;

CODE_04FD66:    LDA $0BA4               ; $04:FD66: AD A4 0B    ;
                BNE CODE_04FD73         ; $04:FD69: D0 08       ;
                LDA #$01                ; $04:FD6B: A9 01       ;
                STA $1601               ; $04:FD6D: 8D 01 16    ;
                STA $0BA4               ; $04:FD70: 8D A4 0B    ;
CODE_04FD73:    RTS                     ; $04:FD73: 60          ;

CODE_04FD74:    REP #$20                ; $04:FD74: C2 20       ;\
                PHD                     ; $04:FD76: 0B          ; |16-bit A
                LDA #$1700              ; $04:FD77: A9 00 17    ; |Direct page = $7E:1700
                TCD                     ; $04:FD7A: 5B          ;/
                LDA #$F15A              ; $04:FD7B: A9 5A F1    ;
                STA $02                 ; $04:FD7E: 85 02       ;
                LDA #$1300              ; $04:FD80: A9 00 13    ;
                STA $04                 ; $04:FD83: 85 04       ;
                LDA #$0019              ; $04:FD85: A9 19 00    ;"P" With no properties
                STA $06                 ; $04:FD88: 85 06       ;
                LDA #$001E              ; $04:FD8A: A9 1E 00    ;"U" With no properties
                STA $08                 ; $04:FD8D: 85 08       ;
                LDA #$001C              ; $04:FD8F: A9 1C 00    ;"S" With no properties
                STA $0A                 ; $04:FD92: 85 0A       ;
                LDA #$0011              ; $04:FD94: A9 11 00    ;"H" With no properties
                STA $0C                 ; $04:FD97: 85 0C       ;
                LDA #$0028              ; $04:FD99: A9 28 00    ;" " With no properties
                STA $0E                 ; $04:FD9C: 85 0E       ;
                LDA #$001C              ; $04:FD9E: A9 1C 00    ;"S" With no properties
                STA $10                 ; $04:FDA1: 85 10       ;
                LDA #$001D              ; $04:FDA3: A9 1D 00    ;"T" With no properties
                STA $12                 ; $04:FDA6: 85 12       ;
                LDA #$000A              ; $04:FDA8: A9 0A 00    ;"A" With no properties
                STA $14                 ; $04:FDAB: 85 14       ;
                LDA #$001B              ; $04:FDAD: A9 1B 00    ;"R" With no properties
                STA $16                 ; $04:FDB0: 85 16       ;
                LDA #$001D              ; $04:FDB2: A9 1D 00    ;"T" With no properties
                STA $18                 ; $04:FDB5: 85 18       ;
                SEP #$20                ; $04:FDB7: E2 20       ;
                LDA #$FF                ; $04:FDB9: A9 FF       ;"End of tilemap marker" byte (?)
                STA $1A                 ; $04:FDBB: 85 1A       ;
                PLD                     ; $04:FDBD: 2B          ;
                LDA #$15                ; $04:FDBE: A9 15       ;\"Push start" SFX at princess rescued sequence
                STA $1603               ; $04:FDC0: 8D 03 16    ;/
                RTS                     ; $04:FDC3: 60          ;Return

;;
;; Duplicate code of $00C000 ends here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CODE_04FDC4:    STZ $073F               ; $04:FDC4: 9C 3F 07    ;Store zero to BG1 X-scrolling
                STZ $0740               ; $04:FDC7: 9C 40 07    ;Store zero to BG1 Y-scrolling
                STZ $210D               ; $04:FDCA: 9C 0D 21    ;Store zero to BG1 X-scrolling
                STZ $210D               ; $04:FDCD: 9C 0D 21    ;Store zero to BG1 X-scrolling
                STZ $210E               ; $04:FDD0: 9C 0E 21    ;Store zero to BG1 Y-scrolling
                STZ $210E               ; $04:FDD3: 9C 0E 21    ;Store zero to BG1 Y-scrolling
                STZ $210F               ; $04:FDD6: 9C 0F 21    ;Store zero to BG2 X-scrolling
                STZ $210F               ; $04:FDD9: 9C 0F 21    ;Store zero to BG2 X-scrolling
                STZ $2110               ; $04:FDDC: 9C 10 21    ;Store zero to BG2 Y-scrolling
                STZ $2110               ; $04:FDDF: 9C 10 21    ;Store zero to BG2 Y-scrolling
                STZ $2111               ; $04:FDE2: 9C 11 21    ;Store zero to BG3 X-scrolling
                STZ $2111               ; $04:FDE5: 9C 11 21    ;Store zero to BG3 X-scrolling
                STZ $2112               ; $04:FDE8: 9C 12 21    ;Store zero to BG3 Y-scrolling
                STZ $2112               ; $04:FDEB: 9C 12 21    ;Store zero to BG3 Y-scrolling
                RTL                     ; $04:FDEE: 6B          ;Return

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Empty Data, I am sure.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;BANK 4 FINISHED.
                db $FF                                          ;
