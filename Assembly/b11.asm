;Super Mario Bros. 2

CODE_118000:    JMP CODE_11803C         ; $11:8000: 4C 3C 80    ;

CODE_118003:    JMP CODE_1191C2             ; $11:8003: 4C C2 91    ;

CODE_118006:    JMP CODE_11956C             ; $11:8006: 4C 6C 95    ;

CODE_118009:    STZ $023A               ; $11:8009: 9C 3A 02    ; No HDMA enable.
                LDA #$80                ; $11:800C: A9 80       ; Force blank
                BRA CODE_118012         ; $11:800E: 80 02       ; Jump to $118012.
           
CODE_118010:    LDA #$0F                ; $11:8010: A9 0F       ; Full brightness.
CODE_118012:    STA $FE                 ; $11:8012: 85 FE       ; $FE = $2100 mirror.
CODE_118014:    LDA $11                 ; $11:8014: A5 11       ; \ $11 = Image upload
                ASL A                   ; $11:8016: 0A          ;  | Multiply by 2...
                CLC                     ; $11:8017: 18          ;  | ... add with $11...
                ADC $11                 ; $11:8018: 65 11       ;  | (Result = Multiply by 3)
                TAX                     ; $11:801A: AA          ; / Into X.
                LDA.w PNTR_11C1D0,x     ; $11:801B: BD D0 C1    ; \ Get low byte of image.
                STA $F0                 ; $11:801E: 85 F0       ; / <-- $F0 (Low byte of image pointer)
                LDA.w PNTR_11C1D0+1,x   ; $11:8020: BD D1 C1    ; \ Get middle byte of image.
                STA $F1                 ; $11:8023: 85 F1       ; / <-- $F1 (Middle byte of image pointer)
                LDA.w PNTR_11C1D0+2,x   ; $11:8025: BD D2 C1    ; \ Get high byte of image.
                STA $F2                 ; $11:8028: 85 F2       ; / <-- $F2 (High byte of image pointer)
                STZ $0154                   ; $11:802A: 9C 54 01    ;
CODE_11802D:    LDA $0154                   ; $11:802D: AD 54 01    ;
                BPL CODE_11802D             ; $11:8030: 10 FB       ;
                JSL CODE_14FA99             ; $11:8032: 22 99 FA 14 ;
                CLI                     ; $11:8036: 58          ; Clear interrupt disable flag.
                RTL                     ; $11:8037: 6B          ; Return.

CODE_118038:    JML CODE_009641         ; $11:8038: 5C 41 96 00 ; ROM is pirated.

CODE_11803C:    NOP                     ; $11:803C: EA          ; \ Two useless bytes...
                NOP                     ; $11:803D: EA          ; /
                LDA #$AA                ; $11:803E: A9 AA       ; \ Anti-piracy check.
                STA $702000             ; $11:8040: 8F 00 20 70 ;  |
                CMP $700000             ; $11:8044: CF 00 00 70 ;  |
                BNE CODE_118038         ; $11:8048: D0 EE       ;  | Prevents SRAM from being expanded.
                LDA #$55                ; $11:804A: A9 55       ;  |
                STA $702000             ; $11:804C: 8F 00 20 70 ;  |
                CMP $700000             ; $11:8050: CF 00 00 70 ;  |
                BNE CODE_118038         ; $11:8054: D0 E2       ; /
                SEI                     ; $11:8056: 78          ; Set interrupt disable
                STZ $4200               ; $11:8057: 9C 00 42    ; NMI disabled, IRQ disabled, Auto-Joypad Read disabled.
                STZ $420C               ; $11:805A: 9C 0C 42    ; No HDMA
                STZ $420B               ; $11:805D: 9C 0B 42    ; No DMA.
                STZ $2140               ; $11:8060: 9C 40 21    ; \ Clear SPC ports.
                STZ $2141               ; $11:8063: 9C 41 21    ;  |
                STZ $2142               ; $11:8066: 9C 42 21    ;  |
                STZ $2143               ; $11:8069: 9C 43 21    ; /
                LDA #$80                ; $11:806C: A9 80       ; \ Force blank.
                STA $2100               ; $11:806E: 8D 00 21    ; /
                PHK                     ; $11:8071: 4B          ; \ PBR into DBR.
                PLB                     ; $11:8072: AB          ; /
                CLC                     ; $11:8073: 18          ; Clear carry.
                PHD                     ; $11:8074: 0B          ; Preserve DP register.
                LDA #$21                ; $11:8075: A9 21       ; \ New DP = $2100
                XBA                     ; $11:8077: EB          ;  |
                LDA #$00                ; $11:8078: A9 00       ;  |
                TCD                     ; $11:807A: 5B          ; /
                LDA #$03                ; $11:807B: A9 03       ; \ Character data = $C000-$FFFF for sprites.
                STA $01                 ; $11:807D: 85 01       ; /
                LDA #$01                ; $11:807F: A9 01       ; \ BG Mode = 01
                STA $05                 ; $11:8081: 85 05       ; / <-- $2105
                STA $0775               ; $11:8083: 8D 75 07    ; $0775 = $2105 mirror.
                STZ $06                     ; $11:8086: 64 06       ;
                LDA #$03                ; $11:8088: A9 03       ; \ Tilemap Layer 1 = $0000-$1FFF.
                STA $07                 ; $11:808A: 85 07       ;  |
                STA $024C               ; $11:808C: 8D 4C 02    ; /
                LDA #$13                ; $11:808F: A9 13       ; \ Tilemap Layer 2 = $2000-$3FFF.
                STA $08                 ; $11:8091: 85 08       ; /
                LDA #$4B                ; $11:8093: A9 4B       ; \ Tilemap Layer 3 = $9000-$9FFF.
                STA $09                 ; $11:8095: 85 09       ; /
                STZ $0A                 ; $11:8097: 64 0A       ; No tilemap Layer 4.
                LDA #$22                ; $11:8099: A9 22       ; \ Character data = $4000-$8FFF for Layers 1 and 2.
                STA $0B                 ; $11:809B: 85 0B       ; /
                LDA #$05                ; $11:809D: A9 05       ; \ Character data = $A000-$BFFF for Layer 3, no character data Layer 4.
                STA $0C                 ; $11:809F: 85 0C       ; /
                LDA #$13                ; $11:80A1: A9 13       ; \ Layers 1, 2 and object layer on main screen designation.
                STA $2C                 ; $11:80A3: 85 2C       ;  |
                STA $0243               ; $11:80A5: 8D 43 02    ; /
                STZ $2D                 ; $11:80A8: 64 2D       ; None on subscreen designation.
                STZ $2E                     ; $11:80AA: 64 2E       ;
                STZ $2F                     ; $11:80AC: 64 2F       ;
                STZ $23                     ; $11:80AE: 64 23       ;
                STZ $24                     ; $11:80B0: 64 24       ;
                STZ $25                     ; $11:80B2: 64 25       ;
                STZ $30                 ; $11:80B4: 64 30       ; Color addition select = #$00.
                STZ $31                 ; $11:80B6: 64 31       ; CGADSUB = #$00 ($2131).
                LDA #$E0                ; $11:80B8: A9 E0       ; \ No intensity for fixed colour data ($2132)
                STA $32                 ; $11:80BA: 85 32       ; /
                STZ $33                     ; $11:80BC: 64 33       ;
                STZ $0235                   ; $11:80BE: 9C 35 02    ;
                STZ $0236                   ; $11:80C1: 9C 36 02    ;
                STZ $0237                   ; $11:80C4: 9C 37 02    ;
                STZ $0238               ; $11:80C7: 9C 38 02    ; Color addition select mirror = #$00.
                STZ $0239               ; $11:80CA: 9C 39 02    ; CGADSUB mirror = #$00.
                STZ $023A               ; $11:80CD: 9C 3A 02    ; HDMA Enable mirror = #$00.
                STZ $023B                   ; $11:80D0: 9C 3B 02    ;
                STZ $023C                   ; $11:80D3: 9C 3C 02    ;
                LDA #$20                ; $11:80D6: A9 20       ; \ No intensity for red colour.
                STA $023D               ; $11:80D8: 8D 3D 02    ; / <-- $023D (One of three mirrors for $2132)
                LDA #$40                ; $11:80DB: A9 40       ; \ No intensity for green colour.
                STA $023E               ; $11:80DD: 8D 3E 02    ; / <-- $023E (One of three mirrors for $2132)
                LDA #$80                ; $11:80E0: A9 80       ; \ No intensity for blue colour.
                STA $023F               ; $11:80E2: 8D 3F 02    ; / <-- $023F (One of three mirrors for $2132)
                PLD                     ; $11:80E5: 2B          ; Get old DP register back.
                LDA #$FF                ; $11:80E6: A9 FF       ; \ No upload through VRAM tables.
                STA $0302               ; $11:80E8: 8D 02 03    ;  |
                STA $7F0002             ; $11:80EB: 8F 02 00 7F ;  |
                STA $7F0802             ; $11:80EF: 8F 02 08 7F ; /
                STZ $024B               ; $11:80F3: 9C 4B 02    ; V-Count mirror = #$00.
                STZ $1DE8                   ; $11:80F6: 9C E8 1D    ;
                STZ $1DE9                   ; $11:80F9: 9C E9 1D    ;
                STZ $1DEE                   ; $11:80FC: 9C EE 1D    ;
                STZ $1DEF                   ; $11:80FF: 9C EF 1D    ;
                STZ $1DEA                   ; $11:8102: 9C EA 1D    ;
                STZ $1DEB                   ; $11:8105: 9C EB 1D    ;
                STA $1DED                   ; $11:8108: 8D ED 1D    ;
                LDA #$01                    ; $11:810B: A9 01       ;
                STA $1DEC                   ; $11:810D: 8D EC 1D    ;
                LDA #$00                    ; $11:8110: A9 00       ;
                STA $06BF                   ; $11:8112: 8D BF 06    ;
                STA $0217                   ; $11:8115: 8D 17 02    ;
                STA $0722                   ; $11:8118: 8D 22 07    ;
                STA $0D0B                   ; $11:811B: 8D 0B 0D    ;
                JSL CODE_14D78D             ; $11:811E: 22 8D D7 14 ;
                LDA $7FFB00             ; $11:8122: AF 00 FB 7F ; \ $7FFB00...
                STA $0635               ; $11:8126: 8D 35 06    ; / into World number.
                ASL A                   ; $11:8129: 0A          ; \ 
                CLC                     ; $11:812A: 18          ;  | *3
                ADC $7FFB00             ; $11:812B: 6F 00 FB 7F ;  |
                CLC                     ; $11:812F: 18          ;  | Add $7FFB01 to it...
                ADC $7FFB01             ; $11:8130: 6F 01 FB 7F ;  | (preserved level num?)
                STA $0533               ; $11:8134: 8D 33 05    ; / Into accumulative level number.
                DEC A                   ; $11:8137: 3A          ; $0533 - 1...
                STA $04E8               ; $11:8138: 8D E8 04    ; Into $04E8 (level number after death?)
                LDA $7FFB02             ; $11:813B: AF 02 FB 7F ; \ Get preserved live count?
                STA $04EE               ; $11:813F: 8D EE 04    ; / Into live counter.
                LDX #$03                    ; $11:8142: A2 03       ;
CODE_118144:    LDA $7FFB03,x               ; $11:8144: BF 03 FB 7F ;
                STA $062D,x                 ; $11:8148: 9D 2D 06    ;
                DEX                         ; $11:814B: CA          ;
                BPL CODE_118144             ; $11:814C: 10 F6       ;
                LDA $0533                   ; $11:814E: AD 33 05    ;
                STA $04E8                   ; $11:8151: 8D E8 04    ;
                JSL CODE_0086B5             ; $11:8154: 22 B5 86 00 ;
                JSL CODE_128F48             ; $11:8158: 22 48 8F 12 ;
                INC $06BF                   ; $11:815C: EE BF 06    ;
                LDA #$02                    ; $11:815F: A9 02       ;
                STA $059E                   ; $11:8161: 8D 9E 05    ;
                LDA #$FF                    ; $11:8164: A9 FF       ;
                STA $02E6                   ; $11:8166: 8D E6 02    ;
                BRA CODE_11817F         ; $11:8169: 80 14       ;
           
CODE_11816B:    LDA #$05                ; $11:816B: A9 05       ; \ Amount of lives...
                STA $04EE               ; $11:816D: 8D EE 04    ; / after Game Over.
                BRA CODE_11817F         ; $11:8170: 80 0D       ;
           
CODE_118172:    LDX $0635               ; $11:8172: AE 35 06    ; \ Get world number into index...
                LDA.l DATA_11C9B4,x     ; $11:8175: BF B4 C9 11 ;  | Get accumulative level number of x-1, where x = world number.
                STA $0533               ; $11:8179: 8D 33 05    ;  | Store into accumulative level number.
                STA $04E8               ; $11:817C: 8D E8 04    ; / And here.
CODE_11817F:    STZ $0217                   ; $11:817F: 9C 17 02    ;
                JSR CODE_118927             ; $11:8182: 20 27 89    ;
                JSR CODE_11883A             ; $11:8185: 20 3A 88    ;
                JSR CODE_1188C5             ; $11:8188: 20 C5 88    ;
                LDA #$FF                    ; $11:818B: A9 FF       ;
                STA $0547                   ; $11:818D: 8D 47 05    ;
                BRA CODE_1181A8         ; $11:8190: 80 16       ;
           
CODE_118192:    STZ $0217                   ; $11:8192: 9C 17 02    ;
                JSR CODE_118927             ; $11:8195: 20 27 89    ;
                JSR CODE_1188C5             ; $11:8198: 20 C5 88    ;
                BRA CODE_1181A8         ; $11:819B: 80 0B       ;
           
                STZ $0217                   ; $11:819D: 9C 17 02    ;
                LDA #$80                    ; $11:81A0: A9 80       ;
                STA $1DE2                   ; $11:81A2: 8D E2 1D    ;
                JSR CODE_11885E             ; $11:81A5: 20 5E 88    ;
CODE_1181A8:    LDA $FE                 ; $11:81A8: A5 FE       ; \ Check if force blank...
                AND #$80                ; $11:81AA: 29 80       ;  | <--
                BNE CODE_1181B5         ; $11:81AC: D0 07       ; / If on, branch.
                JSR CODE_118AD2             ; $11:81AE: 20 D2 8A    ;
                JSL CODE_118009             ; $11:81B1: 22 09 80 11 ;
CODE_1181B5:    LDA #$B0                    ; $11:81B5: A9 B0       ;
                ORA $0201                   ; $11:81B7: 0D 01 02    ;
                LDY $EB                 ; $11:81BA: A4 EB       ; \ If horizontal level...
                BNE CODE_1181C3         ; $11:81BC: D0 05       ; / ...branch, do not run the following two lines.
                AND #$FE                    ; $11:81BE: 29 FE       ;
                ORA $0207                   ; $11:81C0: 0D 07 02    ;
CODE_1181C3:    STA $FF                     ; $11:81C3: 85 FF       ;
                STZ $4200                   ; $11:81C5: 9C 00 42    ;
                PHA                         ; $11:81C8: 48          ;
                LDA $02B8                   ; $11:81C9: AD B8 02    ;
                BNE CODE_1181D2             ; $11:81CC: D0 04       ;
                JSL CODE_14E35A             ; $11:81CE: 22 5A E3 14 ;
CODE_1181D2:    LDA $079C                   ; $11:81D2: AD 9C 07    ;
                BEQ CODE_1181E0             ; $11:81D5: F0 09       ;
                LDA $079D                   ; $11:81D7: AD 9D 07    ;
                STA $0500                   ; $11:81DA: 8D 00 05    ;
                STZ $079C                   ; $11:81DD: 9C 9C 07    ;
CODE_1181E0:    STZ $02B8                   ; $11:81E0: 9C B8 02    ;
                STZ $0776                   ; $11:81E3: 9C 76 07    ;
                STZ $078A                   ; $11:81E6: 9C 8A 07    ;
                STZ $0779                   ; $11:81E9: 9C 79 07    ;
                STZ $0778                   ; $11:81EC: 9C 78 07    ;
                LDA #$80                    ; $11:81EF: A9 80       ;
                STA $0100                   ; $11:81F1: 8D 00 01    ;
                STA $0217                   ; $11:81F4: 8D 17 02    ;
                JSL CODE_13873D         ; $11:81F7: 22 3D 87 13 ; \ Load tiles 200-27F (FG/BG slots).
                JSL CODE_1385DA         ; $11:81FB: 22 DA 85 13 ;  | Load tiles C0-1FF (FG/BG slots).
                JSL CODE_14E3DE         ; $11:81FF: 22 DE E3 14 ;  | Get sprite data per room into buffer at $1B00.
                JSL CODE_14F64A         ; $11:8203: 22 4A F6 14 ;  | Clear Layer 3 tilemap.
                JSL CODE_12FAD1         ; $11:8207: 22 D1 FA 12 ;  |
                JSL CODE_12FCF7         ; $11:820B: 22 F7 FC 12 ;  |
                JSL CODE_12FF1A         ; $11:820F: 22 1A FF 12 ;  |
                JSL CODE_14F500         ; $11:8213: 22 00 F5 14 ; /
                LDA $0772               ; $11:8217: AD 72 07    ; \ If $0772 is any non-zero value...
                BEQ CODE_118220         ; $11:821A: F0 04       ;  |
                LDA #$09                ; $11:821C: A9 09       ;  | Make Layer 3 have full priority.
                BRA CODE_118222         ; $11:821E: 80 02       ; /
           
CODE_118220:    LDA #$01                ; $11:8220: A9 01       ; \ BG Mode 1.
CODE_118222:    STA $0775               ; $11:8222: 8D 75 07    ; / No Layer 3 priority.
                JSL CODE_12F2EF             ; $11:8225: 22 EF F2 12 ;
                JSL CODE_14D0F2             ; $11:8229: 22 F2 D0 14 ;
                JSL CODE_138780             ; $11:822D: 22 80 87 13 ;
                JSL CODE_14F9F0         ; $11:8231: 22 F0 F9 14 ; Clear all OAM.       
                JSL CODE_14F9A0             ; $11:8235: 22 A0 F9 14 ;
                PLA                         ; $11:8239: 68          ;
                AND #$80                    ; $11:823A: 29 80       ;
                ORA #$01                    ; $11:823C: 09 01       ;
                STA $4200                   ; $11:823E: 8D 00 42    ;
                JSL CODE_118014             ; $11:8241: 22 14 80 11 ;
                JSR CODE_118834             ; $11:8245: 20 34 88    ;
                LDA #$B0                    ; $11:8248: A9 B0       ;
                STA $FF                     ; $11:824A: 85 FF       ;
                JSL CODE_1389A3             ; $11:824C: 22 A3 89 13 ;
                LDA $EB                     ; $11:8250: A5 EB       ;
                BNE CODE_118257             ; $11:8252: D0 03       ;
                BRL CODE_118329         ; $11:8254: 82 D2 00    ;
           
CODE_118257:    STZ $420C                   ; $11:8257: 9C 0C 42    ;
                STZ $4200                   ; $11:825A: 9C 00 42    ;
                JSR CODE_1193F5             ; $11:825D: 20 F5 93    ;
                JSR CODE_11945A             ; $11:8260: 20 5A 94    ;
                JSL CODE_158419             ; $11:8263: 22 19 84 15 ;
                LDA #$00                    ; $11:8267: A9 00       ;
                STA $0300                   ; $11:8269: 8D 00 03    ;
                STA $0301                   ; $11:826C: 8D 01 03    ;
                STA $7F0000                 ; $11:826F: 8F 00 00 7F ;
                STA $7F0001                 ; $11:8273: 8F 01 00 7F ;
                STA $7F0800                 ; $11:8277: 8F 00 08 7F ;
                STA $7F0801                 ; $11:827B: 8F 01 08 7F ;
                DEC A                       ; $11:827F: 3A          ;
                STA $0302                   ; $11:8280: 8D 02 03    ;
                STA $7F0002                 ; $11:8283: 8F 02 00 7F ;
                STA $7F0802                 ; $11:8287: 8F 02 08 7F ;
                JSL CODE_14ED60             ; $11:828B: 22 60 ED 14 ;
                JSL CODE_13F000             ; $11:828F: 22 00 F0 13 ;
                JSL CODE_158000             ; $11:8293: 22 00 80 15 ;
                JSL CODE_14E32E             ; $11:8297: 22 2E E3 14 ;
                LDA $13                     ; $11:829B: A5 13       ;
                BEQ CODE_118257             ; $11:829D: F0 B8       ;
                LDA #$81                    ; $11:829F: A9 81       ;
                STA $4200                   ; $11:82A1: 8D 00 42    ;
                STZ $13                     ; $11:82A4: 64 13       ;
                STZ $04ED               ; $11:82A6: 9C ED 04    ; Don't go to a special screen.                 
                STZ $02AB                   ; $11:82A9: 9C AB 02    ;
                STZ $0724                   ; $11:82AC: 9C 24 07    ;
                LDA $024B               ; $11:82AF: AD 4B 02    ; \ If IRQ V-counter is 00...
                BEQ CODE_1182C1         ; $11:82B2: F0 0D       ; / Branch.
                LDA #$18                ; $11:82B4: A9 18       ; \ Load starry BG.
                STA $11                 ; $11:82B6: 85 11       ; /
                LDA $0533               ; $11:82B8: AD 33 05    ; \ If level 5-2...
                CMP #$0D                ; $11:82BB: C9 0D       ;  | Use a different starry BG (different palette)
                BNE CODE_1182C1         ; $11:82BD: D0 02       ;  |
                INC $11                 ; $11:82BF: E6 11       ; / <--
CODE_1182C1:    JSL CODE_13FC89         ; $11:82C1: 22 89 FC 13 ; HDMA BG handler.
                INC $0D13                   ; $11:82C5: EE 13 0D    ;
                JSR CODE_118AFE             ; $11:82C8: 20 FE 8A    ;
                STZ $0D13                   ; $11:82CB: 9C 13 0D    ;
CODE_1182CE:    JSL CODE_118014             ; $11:82CE: 22 14 80 11 ;
                LDA $700007                 ; $11:82D2: AF 07 00 70 ;
                BEQ CODE_1182EE             ; $11:82D6: F0 16       ;
                LDA $FC                     ; $11:82D8: A5 FC       ;
                AND #$20                    ; $11:82DA: 29 20       ;
                BEQ CODE_1182E1             ; $11:82DC: F0 03       ;
                INC $021D                   ; $11:82DE: EE 1D 02    ;
CODE_1182E1:    LDA $FC                     ; $11:82E1: A5 FC       ;
                AND #$10                    ; $11:82E3: 29 10       ;
                BNE CODE_1182EE             ; $11:82E5: D0 07       ;
                LDA $021D                   ; $11:82E7: AD 1D 02    ;
                AND #$01                    ; $11:82EA: 29 01       ;
                BNE CODE_11830F             ; $11:82EC: D0 21       ;
CODE_1182EE:    LDA $FA                     ; $11:82EE: A5 FA       ;
                AND #$10                    ; $11:82F0: 29 10       ;
                BEQ CODE_1182F7             ; $11:82F2: F0 03       ;
                JMP CODE_11846B         ; $11:82F4: 4C 6B 84    ;
           
CODE_1182F7:    LDA $0628                   ; $11:82F7: AD 28 06    ;
                BEQ CODE_1182FF             ; $11:82FA: F0 03       ;
                JMP CODE_1185A0         ; $11:82FC: 4C A0 85    ;
           
CODE_1182FF:    JSL CODE_14F9F0         ; $11:82FF: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_14DF1F             ; $11:8303: 22 1F DF 14 ;
                LDY $04ED                   ; $11:8307: AC ED 04    ;
                BEQ CODE_11830F             ; $11:830A: F0 03       ;
                JMP CODE_118B31         ; $11:830C: 4C 31 8B    ;
           
CODE_11830F:    LDA $0627                   ; $11:830F: AD 27 06    ;
                BEQ CODE_1182CE             ; $11:8312: F0 BA       ;
                JSR CODE_118AD2             ; $11:8314: 20 D2 8A    ;
                JSL CODE_14E30F             ; $11:8317: 22 0F E3 14 ;
                JSL CODE_14E02E             ; $11:831B: 22 2E E0 14 ;
                STZ $0627                   ; $11:831F: 9C 27 06    ;
                JSL CODE_118009             ; $11:8322: 22 09 80 11 ;
                JMP CODE_1181B5         ; $11:8326: 4C B5 81    ;
           
CODE_118329:    STZ $420C               ; $11:8329: 9C 0C 42    ; HDMA channels off.
                STZ $4200               ; $11:832C: 9C 00 42    ; No NMI/IRQ.
                JSR CODE_1193F5             ; $11:832F: 20 F5 93    ;
                JSR CODE_11945A             ; $11:8332: 20 5A 94    ;
                JSL CODE_158419             ; $11:8335: 22 19 84 15 ;
                LDA #$00                    ; $11:8339: A9 00       ;
                STA $0300                   ; $11:833B: 8D 00 03    ;
                STA $0301                   ; $11:833E: 8D 01 03    ;
                STA $7F0000                 ; $11:8341: 8F 00 00 7F ;
                STA $7F0001                 ; $11:8345: 8F 01 00 7F ;
                STA $7F0800                 ; $11:8349: 8F 00 08 7F ;
                STA $7F0801                 ; $11:834D: 8F 01 08 7F ;
                DEC A                       ; $11:8351: 3A          ;
                STA $0302                   ; $11:8352: 8D 02 03    ;
                STA $7F0002                 ; $11:8355: 8F 02 00 7F ;
                STA $7F0802                 ; $11:8359: 8F 02 08 7F ;
                JSL CODE_14E6B0             ; $11:835D: 22 B0 E6 14 ;
                JSL CODE_13F500             ; $11:8361: 22 00 F5 13 ;
                JSL CODE_158500             ; $11:8365: 22 00 85 15 ;
                JSL CODE_14E32E             ; $11:8369: 22 2E E3 14 ;
                LDA $13                     ; $11:836D: A5 13       ;
                BEQ CODE_118329             ; $11:836F: F0 B8       ;
                LDA #$81                    ; $11:8371: A9 81       ;
                STA $4200                   ; $11:8373: 8D 00 42    ;
                STZ $13                     ; $11:8376: 64 13       ;
                STZ $04ED                   ; $11:8378: 9C ED 04    ;
                STZ $02AB                   ; $11:837B: 9C AB 02    ;
                STZ $0724                   ; $11:837E: 9C 24 07    ;
                STZ $0206                   ; $11:8381: 9C 06 02    ;
                LDA #$01                    ; $11:8384: A9 01       ;
                STA $0207                   ; $11:8386: 8D 07 02    ;
                LDA $04EF                   ; $11:8389: AD EF 04    ;
                CMP #$02                    ; $11:838C: C9 02       ;
                BNE CODE_11839A             ; $11:838E: D0 0A       ;
                STZ $0D09                   ; $11:8390: 9C 09 0D    ;
                LDA #$00                    ; $11:8393: A9 00       ;
                STA $50                     ; $11:8395: 85 50       ;
                JSR CODE_11876D             ; $11:8397: 20 6D 87    ;
CODE_11839A:    LDA $02C3                   ; $11:839A: AD C3 02    ;
                BNE CODE_1183B0             ; $11:839D: D0 11       ;
                LDA $0535                   ; $11:839F: AD 35 05    ;
                AND #$01                    ; $11:83A2: 29 01       ;
                BEQ CODE_1183B0             ; $11:83A4: F0 0A       ;
                LDA #$F8                    ; $11:83A6: A9 F8       ;
                STA $0208                   ; $11:83A8: 8D 08 02    ;
                STZ $0209                   ; $11:83AB: 9C 09 02    ;
                BRA CODE_1183B8         ; $11:83AE: 80 08       ;
           
CODE_1183B0:    STZ $0208                   ; $11:83B0: 9C 08 02    ;
                LDA #$01                    ; $11:83B3: A9 01       ;
                STA $0209                   ; $11:83B5: 8D 09 02    ;
CODE_1183B8:    LDA $0772                   ; $11:83B8: AD 72 07    ;
                BNE CODE_1183CE             ; $11:83BB: D0 11       ;
                LDA $0535                   ; $11:83BD: AD 35 05    ;
                AND #$01                    ; $11:83C0: 29 01       ;
                BEQ CODE_1183CE             ; $11:83C2: F0 0A       ;
                LDA #$F8                    ; $11:83C4: A9 F8       ;
                STA $020A                   ; $11:83C6: 8D 0A 02    ;
                STZ $020B                   ; $11:83C9: 9C 0B 02    ;
                BRA CODE_1183D6         ; $11:83CC: 80 08       ;
           
CODE_1183CE:    STZ $020A                   ; $11:83CE: 9C 0A 02    ;
                LDA #$01                    ; $11:83D1: A9 01       ;
                STA $020B                   ; $11:83D3: 8D 0B 02    ;
CODE_1183D6:    JSL CODE_13FC89             ; $11:83D6: 22 89 FC 13 ;
                JSL CODE_14D874             ; $11:83DA: 22 74 D8 14 ;
                INC $0D13                   ; $11:83DE: EE 13 0D    ;
                JSR CODE_118AFE             ; $11:83E1: 20 FE 8A    ;
                STZ $0D13                   ; $11:83E4: 9C 13 0D    ;
CODE_1183E7:    JSL CODE_118014             ; $11:83E7: 22 14 80 11 ;
                LDA $700007                 ; $11:83EB: AF 07 00 70 ;
                BEQ CODE_118407             ; $11:83EF: F0 16       ;
                LDA $FC                     ; $11:83F1: A5 FC       ;
                AND #$20                    ; $11:83F3: 29 20       ;
                BEQ CODE_1183FA             ; $11:83F5: F0 03       ;
                INC $021D                   ; $11:83F7: EE 1D 02    ;
CODE_1183FA:    LDA $FC                     ; $11:83FA: A5 FC       ;
                AND #$10                    ; $11:83FC: 29 10       ;
                BNE CODE_118407             ; $11:83FE: D0 07       ;
                LDA $021D                   ; $11:8400: AD 1D 02    ;
                AND #$01                    ; $11:8403: 29 01       ;
                BNE CODE_118421             ; $11:8405: D0 1A       ;
CODE_118407:    LDA $FA                     ; $11:8407: A5 FA       ;
                AND #$10                    ; $11:8409: 29 10       ;
                BNE CODE_11846B             ; $11:840B: D0 5E       ;
CODE_11840D:    JSL CODE_14F9F0         ; $11:840D: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_14DFCB             ; $11:8411: 22 CB DF 14 ;
                JSL CODE_14D8A2             ; $11:8415: 22 A2 D8 14 ;
                LDY $04ED                   ; $11:8419: AC ED 04    ;
                BEQ CODE_118421             ; $11:841C: F0 03       ;
                JMP CODE_118B31         ; $11:841E: 4C 31 8B    ;
           
CODE_118421:    LDA $0627                   ; $11:8421: AD 27 06    ;
                BEQ CODE_1183E7             ; $11:8424: F0 C1       ;
                JSR CODE_118AD2             ; $11:8426: 20 D2 8A    ;
                LDA $04EF                   ; $11:8429: AD EF 04    ;
                CMP #$02                    ; $11:842C: C9 02       ;
                BNE CODE_118446             ; $11:842E: D0 16       ;
                LDA #$20                    ; $11:8430: A9 20       ;
                STA $0239                   ; $11:8432: 8D 39 02    ;
                STZ $0235                   ; $11:8435: 9C 35 02    ;
                STZ $0236                   ; $11:8438: 9C 36 02    ;
                STZ $0237                   ; $11:843B: 9C 37 02    ;
                LDA #$05                    ; $11:843E: A9 05       ;
                STA $50                     ; $11:8440: 85 50       ;
                LDA #$04                    ; $11:8442: A9 04       ;
                STA $C7                     ; $11:8444: 85 C7       ;
CODE_118446:    STZ $04EF                   ; $11:8446: 9C EF 04    ;
                STZ $078C                   ; $11:8449: 9C 8C 07    ;
                JSL CODE_14E30F             ; $11:844C: 22 0F E3 14 ;
                JSL CODE_14E02E             ; $11:8450: 22 2E E0 14 ;
                LDA $0627                   ; $11:8454: AD 27 06    ;
                CMP #$02                    ; $11:8457: C9 02       ;
                BNE CODE_11845E             ; $11:8459: D0 03       ;
                INC $02B8                   ; $11:845B: EE B8 02    ;
CODE_11845E:    STZ $0627                   ; $11:845E: 9C 27 06    ;
                STZ $0D0B                   ; $11:8461: 9C 0B 0D    ;
                JSL CODE_118009             ; $11:8464: 22 09 80 11 ;
                JMP CODE_1181B5         ; $11:8468: 4C B5 81    ;
           
CODE_11846B:    LDA $2142                   ; $11:846B: AD 42 21    ;
                CMP #$0B                    ; $11:846E: C9 0B       ;
                BEQ CODE_118492             ; $11:8470: F0 20       ;
                LDA $D8                     ; $11:8472: A5 D8       ;
                AND #$04                    ; $11:8474: 29 04       ;
                BNE CODE_118492             ; $11:8476: D0 1A       ;
                LDA $04EF                   ; $11:8478: AD EF 04    ;
                BNE CODE_118492             ; $11:847B: D0 15       ;
                LDA $50                     ; $11:847D: A5 50       ;
                CMP #$07                    ; $11:847F: C9 07       ;
                BEQ CODE_118492             ; $11:8481: F0 0F       ;
                LDA $04C8                   ; $11:8483: AD C8 04    ;
                BNE CODE_118492             ; $11:8486: D0 0A       ;
                LDA $04B4                   ; $11:8488: AD B4 04    ;
                BNE CODE_118492             ; $11:848B: D0 05       ;
                LDA $041B                   ; $11:848D: AD 1B 04    ;
                BEQ CODE_11849C             ; $11:8490: F0 0A       ;
CODE_118492:    LDA $EB                     ; $11:8492: A5 EB       ;
                BEQ CODE_118499             ; $11:8494: F0 03       ;
                JMP CODE_1182F7         ; $11:8496: 4C F7 82    ;
           
CODE_118499:    JMP CODE_11840D         ; $11:8499: 4C 0D 84    ;
           
CODE_11849C:    STZ $0D0B                   ; $11:849C: 9C 0B 0D    ;
                STZ $078E                   ; $11:849F: 9C 8E 07    ;
                JSL CODE_138FD5             ; $11:84A2: 22 D5 8F 13 ;
                JSL CODE_14F9F0         ; $11:84A6: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_13FB47             ; $11:84AA: 22 47 FB 13 ;
                JSL CODE_138E3B             ; $11:84AE: 22 3B 8E 13 ;
                STZ $0231                   ; $11:84B2: 9C 31 02    ;
                INC $0722                   ; $11:84B5: EE 22 07    ;
                LDA #$F1                    ; $11:84B8: A9 F1       ;
                STA $1DE2                   ; $11:84BA: 8D E2 1D    ;
                LDA #$43                    ; $11:84BD: A9 43       ;
                STA $1DE0                   ; $11:84BF: 8D E0 1D    ;
                LDA $0775                   ; $11:84C2: AD 75 07    ;
                STA $0774                   ; $11:84C5: 8D 74 07    ;
                LDA #$01                    ; $11:84C8: A9 01       ;
                STA $0775                   ; $11:84CA: 8D 75 07    ;
CODE_1184CD:    JSL CODE_118014             ; $11:84CD: 22 14 80 11 ;
                JSL CODE_14D269             ; $11:84D1: 22 69 D2 14 ;
                JSL CODE_138EEB             ; $11:84D5: 22 EB 8E 13 ;
                LDA $0232                   ; $11:84D9: AD 32 02    ;
                BEQ CODE_1184CD             ; $11:84DC: F0 EF       ;
                LDA #$10                    ; $11:84DE: A9 10       ;
                STA $0210                   ; $11:84E0: 8D 10 02    ;
                STZ $0211                   ; $11:84E3: 9C 11 02    ;
                LDA #$04                    ; $11:84E6: A9 04       ;
                STA $022B                   ; $11:84E8: 8D 2B 02    ;
CODE_1184EB:    JSL CODE_118014             ; $11:84EB: 22 14 80 11 ;
                JSL CODE_138EEB             ; $11:84EF: 22 EB 8E 13 ;
                LDA $F8                     ; $11:84F3: A5 F8       ;
                CMP #$30                    ; $11:84F5: C9 30       ;
                BNE CODE_118505             ; $11:84F7: D0 0C       ;
                LDA $FA                     ; $11:84F9: A5 FA       ;
                AND #$20                    ; $11:84FB: 29 20       ;
                BEQ CODE_118505             ; $11:84FD: F0 06       ;
                JSL CODE_14E39F             ; $11:84FF: 22 9F E3 14 ;
                BRA CODE_11852C         ; $11:8503: 80 27       ;
           
CODE_118505:    JSL CODE_14DAB8             ; $11:8505: 22 B8 DA 14 ;
                JSL CODE_14D2FA             ; $11:8509: 22 FA D2 14 ;
                LDA $FA                     ; $11:850D: A5 FA       ;
                AND #$10                    ; $11:850F: 29 10       ;
                BNE CODE_118523             ; $11:8511: D0 10       ;
                DEC $0210                   ; $11:8513: CE 10 02    ;
                BPL CODE_1184EB             ; $11:8516: 10 D3       ;
                LDA #$10                    ; $11:8518: A9 10       ;
                STA $0210                   ; $11:851A: 8D 10 02    ;
                INC $0211                   ; $11:851D: EE 11 02    ;
                JMP CODE_1184EB         ; $11:8520: 4C EB 84    ;
           
CODE_118523:    JSL CODE_14DAF4             ; $11:8523: 22 F4 DA 14 ;
                LDA #$F2                    ; $11:8527: A9 F2       ;
                STA $1DE2                   ; $11:8529: 8D E2 1D    ;
CODE_11852C:    LDA #$01                    ; $11:852C: A9 01       ;
                STA $0231                   ; $11:852E: 8D 31 02    ;
                STZ $0232                   ; $11:8531: 9C 32 02    ;
CODE_118534:    JSL CODE_118014             ; $11:8534: 22 14 80 11 ;
                JSL CODE_138EEB             ; $11:8538: 22 EB 8E 13 ;
                LDA $0232                   ; $11:853C: AD 32 02    ;
                BEQ CODE_118534             ; $11:853F: F0 F3       ;
                JSL CODE_14D0F2             ; $11:8541: 22 F2 D0 14 ;
                LDA $04EF                   ; $11:8545: AD EF 04    ;
                BEQ CODE_118550             ; $11:8548: F0 06       ;
                JSL CODE_14D8EC             ; $11:854A: 22 EC D8 14 ;
                BRA CODE_118574             ; $11:854E: 80 24       ;

CODE_118550:    LDY $0533                   ; $11:8550: AC 33 05    ;
                LDA.w DATA_11D098,y                 ; $11:8553: B9 98 D0    ;
                CLC                         ; $11:8556: 18          ;
                ADC $0534                   ; $11:8557: 6D 34 05    ;
                TAY                         ; $11:855A: A8          ;
                LDA.w DATA_11CF52,y                 ; $11:855B: B9 52 CF    ;
                CMP #$FF                    ; $11:855E: C9 FF       ;
                BNE CODE_118566             ; $11:8560: D0 04       ;
                LDA #$00                    ; $11:8562: A9 00       ;
                BRA CODE_118568             ; $11:8564: 80 02       ;

CODE_118566:    LDA #$70                    ; $11:8566: A9 70       ;
CODE_118568:    STA $023A                   ; $11:8568: 8D 3A 02    ;
                STZ $0235                   ; $11:856B: 9C 35 02    ;
                STZ $0236                   ; $11:856E: 9C 36 02    ;
                STZ $0237                   ; $11:8571: 9C 37 02    ;
CODE_118574:    JSL CODE_14F9F0         ; $11:8574: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_13FB47             ; $11:8578: 22 47 FB 13 ;
                JSL CODE_118014             ; $11:857C: 22 14 80 11 ;
                JSL CODE_138FD5             ; $11:8580: 22 D5 8F 13 ;
                JSL CODE_14D874             ; $11:8584: 22 74 D8 14 ;
                LDA $0774                   ; $11:8588: AD 74 07    ;
                STA $0775                   ; $11:858B: 8D 75 07    ;
                LDA $0628                   ; $11:858E: AD 28 06    ;
                BEQ CODE_118596             ; $11:8591: F0 03       ;
                BRL CODE_11867C         ; $11:8593: 82 E6 00    ;
           
CODE_118596:    LDA $EB                     ; $11:8596: A5 EB       ;
                BNE CODE_11859D             ; $11:8598: D0 03       ;
                JMP CODE_1183E7         ; $11:859A: 4C E7 83    ;
           
CODE_11859D:    JMP CODE_1182CE         ; $11:859D: 4C CE 82    ;
           
CODE_1185A0:    JSR CODE_118AD2             ; $11:85A0: 20 D2 8A    ;
                STZ $023A                   ; $11:85A3: 9C 3A 02    ;
                STZ $4200                   ; $11:85A6: 9C 00 42    ;
                STZ $025F                   ; $11:85A9: 9C 5F 02    ;
                STZ $0773                   ; $11:85AC: 9C 73 07    ;
                JSL CODE_14F953             ; $11:85AF: 22 53 F9 14 ;
                STZ $0622                   ; $11:85B3: 9C 22 06    ;
                LDA $0628                   ; $11:85B6: AD 28 06    ;
                CMP #$02                    ; $11:85B9: C9 02       ;
                BEQ CODE_1185DC             ; $11:85BB: F0 1F       ;
                JSR CODE_11876D             ; $11:85BD: 20 6D 87    ;
                JSL CODE_14E425             ; $11:85C0: 22 25 E4 14 ;
                JSL CODE_14E3DE             ; $11:85C4: 22 DE E3 14 ;
                JSL CODE_12F44F             ; $11:85C8: 22 4F F4 12 ;
                LDA #$06                    ; $11:85CC: A9 06       ;
                STA $0546                   ; $11:85CE: 8D 46 05    ;
                JSL CODE_14E32E             ; $11:85D1: 22 2E E3 14 ;
                LDA #$01                    ; $11:85D5: A9 01       ;
                STA $0776                   ; $11:85D7: 8D 76 07    ;
                BRA CODE_118606             ; $11:85DA: 80 2A       ;

CODE_1185DC:    JSL CODE_12F394             ; $11:85DC: 22 94 F3 12 ;
                LDA $079C                   ; $11:85E0: AD 9C 07    ;
                BEQ CODE_1185EE             ; $11:85E3: F0 09       ;
                LDA $079D                   ; $11:85E5: AD 9D 07    ;
                STA $0500                   ; $11:85E8: 8D 00 05    ;
                STZ $079C                   ; $11:85EB: 9C 9C 07    ;
CODE_1185EE:    LDA #$05                ; $11:85EE: A9 05       ; \ Potion room music.
                STA $0546               ; $11:85F0: 8D 46 05    ; /
                JSL CODE_14E341             ; $11:85F3: 22 41 E3 14 ;
                JSL CODE_14E35A             ; $11:85F7: 22 5A E3 14 ;
                STZ $0244                   ; $11:85FB: 9C 44 02    ;
                LDA #$02                    ; $11:85FE: A9 02       ;
                STA $0776                   ; $11:8600: 8D 76 07    ;
                STZ $079B                   ; $11:8603: 9C 9B 07    ;
CODE_118606:    JSL CODE_14F0F7             ; $11:8606: 22 F7 F0 14 ;
                JSL CODE_13F143             ; $11:860A: 22 43 F1 13 ;
                JSL CODE_158141             ; $11:860E: 22 41 81 15 ;
                JSR CODE_1190DF             ; $11:8612: 20 DF 90    ;
CODE_118615:    JSL CODE_118014             ; $11:8615: 22 14 80 11 ;
                JSL CODE_14F19A             ; $11:8619: 22 9A F1 14 ;
                LDA $0539                   ; $11:861D: AD 39 05    ;
                BEQ CODE_118615             ; $11:8620: F0 F3       ;
                STZ $4200                   ; $11:8622: 9C 00 42    ;
                LDA $0628                   ; $11:8625: AD 28 06    ;
                CMP #$01                    ; $11:8628: C9 01       ;
                BNE CODE_118646             ; $11:862A: D0 1A       ;
                JSL CODE_138AAB             ; $11:862C: 22 AB 8A 13 ;
                JSL CODE_139D53             ; $11:8630: 22 53 9D 13 ;
                JSL CODE_1385DA             ; $11:8634: 22 DA 85 13 ;
                JSL CODE_14F666             ; $11:8638: 22 66 F6 14 ;
                JSL CODE_13FC89             ; $11:863C: 22 89 FC 13 ;
                STZ $0770                   ; $11:8640: 9C 70 07    ;
                STZ $04AE                   ; $11:8643: 9C AE 04    ;
CODE_118646:    STZ $02B0                   ; $11:8646: 9C B0 02    ;
                STZ $0736                   ; $11:8649: 9C 36 07    ;
                STZ $3C                     ; $11:864C: 64 3C       ;
                STZ $0407                   ; $11:864E: 9C 07 04    ;
                STZ $0D09                   ; $11:8651: 9C 09 0D    ;
                LDA $0628                   ; $11:8654: AD 28 06    ;
                CMP #$02                    ; $11:8657: C9 02       ;
                BEQ CODE_11866E             ; $11:8659: F0 13       ;
                JSL CODE_12F2EF             ; $11:865B: 22 EF F2 12 ;
                JSL CODE_14D0F2             ; $11:865F: 22 F2 D0 14 ;
                INC $0D09                   ; $11:8663: EE 09 0D    ;
                JSL CODE_14D874             ; $11:8666: 22 74 D8 14 ;
                LDA #$00                    ; $11:866A: A9 00       ;
                STA $50                     ; $11:866C: 85 50       ;
CODE_11866E:    INC $0D13                   ; $11:866E: EE 13 0D    ;
                LDA #$81                    ; $11:8671: A9 81       ;
                STA $4200                   ; $11:8673: 8D 00 42    ;
                JSR CODE_118AFE             ; $11:8676: 20 FE 8A    ;
                STZ $0D13                   ; $11:8679: 9C 13 0D    ;
CODE_11867C:    JSL CODE_118014             ; $11:867C: 22 14 80 11 ;
                JSL CODE_14F9F0         ; $11:8680: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_14DEBC             ; $11:8684: 22 BC DE 14 ;
                LDY $04ED                   ; $11:8688: AC ED 04    ;
                BEQ CODE_118690             ; $11:868B: F0 03       ;
                JMP CODE_118B31         ; $11:868D: 4C 31 8B    ;
           
CODE_118690:    LDA $0628                   ; $11:8690: AD 28 06    ;
                BNE CODE_11867C             ; $11:8693: D0 E7       ;
                LDA $0622                   ; $11:8695: AD 22 06    ;
                BEQ CODE_11869D             ; $11:8698: F0 03       ;
                INC $0621                   ; $11:869A: EE 21 06    ;
CODE_11869D:    LDA $051B                   ; $11:869D: AD 1B 05    ;
                STA $0534                   ; $11:86A0: 8D 34 05    ;
                JSR CODE_118AD2             ; $11:86A3: 20 D2 8A    ;
                LDA $04EF                   ; $11:86A6: AD EF 04    ;
                BEQ CODE_1186B1             ; $11:86A9: F0 06       ;
                JSL CODE_14E35A             ; $11:86AB: 22 5A E3 14 ;
                BRA CODE_1186B5             ; $11:86AF: 80 04       ;

CODE_1186B1:    JSL CODE_14D965             ; $11:86B1: 22 65 D9 14 ;
CODE_1186B5:    STZ $0D0B                   ; $11:86B5: 9C 0B 0D    ;
                JSL CODE_118009             ; $11:86B8: 22 09 80 11 ;
                JSL CODE_1385DA             ; $11:86BC: 22 DA 85 13 ;
                JSL CODE_12F2EF             ; $11:86C0: 22 EF F2 12 ;
                JSL CODE_14D0F2             ; $11:86C4: 22 F2 D0 14 ;
                JSL CODE_14F9F0         ; $11:86C8: 22 F0 F9 14 ; Clear all OAM.
                STZ $04AE                   ; $11:86CC: 9C AE 04    ;
                LDA $0D09                   ; $11:86CF: AD 09 0D    ;
                BEQ CODE_1186EB             ; $11:86D2: F0 17       ;
                STZ $0D09                   ; $11:86D4: 9C 09 0D    ;
                LDA #$05                    ; $11:86D7: A9 05       ;
                STA $50                     ; $11:86D9: 85 50       ;
                LDA #$04                    ; $11:86DB: A9 04       ;
                STA $C7                     ; $11:86DD: 85 C7       ;
                STZ $04EF                   ; $11:86DF: 9C EF 04    ;
                STZ $078C                   ; $11:86E2: 9C 8C 07    ;
                STZ $04BC                   ; $11:86E5: 9C BC 04    ;
                STZ $04BD                   ; $11:86E8: 9C BD 04    ;
CODE_1186EB:    LDY $0546                   ; $11:86EB: AC 46 05    ;
                STY $0547                   ; $11:86EE: 8C 47 05    ;
                JSL CODE_14E32E             ; $11:86F1: 22 2E E3 14 ;
                STZ $3C                     ; $11:86F5: 64 3C       ;
                STZ $0407                   ; $11:86F7: 9C 07 04    ;
                STZ $020B                   ; $11:86FA: 9C 0B 02    ;
                LDA $0776                   ; $11:86FD: AD 76 07    ;
                CMP #$02                    ; $11:8700: C9 02       ;
                BEQ CODE_118708             ; $11:8702: F0 04       ;
                JSL CODE_12FAD1         ; $11:8704: 22 D1 FA 12 ; Handle 'simple' objects (such as vegetables). Obj -> M16.
CODE_118708:    JSL CODE_12FCF7             ; $11:8708: 22 F7 FC 12 ;
                JSL CODE_12FF1A             ; $11:870C: 22 1A FF 12 ;
                JSL CODE_14F139             ; $11:8710: 22 39 F1 14 ;
                JSL CODE_13F184             ; $11:8714: 22 84 F1 13 ;
                JSL CODE_158182             ; $11:8718: 22 82 81 15 ;
                STZ $0776                   ; $11:871C: 9C 76 07    ;
CODE_11871F:    JSL CODE_118014             ; $11:871F: 22 14 80 11 ;
                JSL CODE_14F19A             ; $11:8723: 22 9A F1 14 ;
                JSL CODE_13F1BF             ; $11:8727: 22 BF F1 13 ;
                JSL CODE_1581BD             ; $11:872B: 22 BD 81 15 ;
                LDA $0539                   ; $11:872F: AD 39 05    ;
                BEQ CODE_11871F             ; $11:8732: F0 EB       ;
                LDA $0772                   ; $11:8734: AD 72 07    ;
                BEQ CODE_11873D             ; $11:8737: F0 04       ;
                LDA #$64                    ; $11:8739: A9 64       ;
                BRA CODE_11873F             ; $11:873B: 80 02       ;

CODE_11873D:    LDA #$20                ; $11:873D: A9 20       ; \ Colour layer affects backdrop.
CODE_11873F:    STA $0239               ; $11:873F: 8D 39 02    ; / (CGADSUB)
                LDA $024B               ; $11:8742: AD 4B 02    ; \ If IRQ V-counter is 00, branch.
                BEQ CODE_118754         ; $11:8745: F0 0D       ; /
                LDA #$18                ; $11:8747: A9 18       ; \ Load starry BG image.
                STA $11                 ; $11:8749: 85 11       ; /
                LDA $0533               ; $11:874B: AD 33 05    ; \ Check if in 5-2.
                CMP #$0D                ; $11:874E: C9 0D       ;  |
                BNE CODE_118754         ; $11:8750: D0 02       ;  |
                INC $11                 ; $11:8752: E6 11       ; / If so, load starry BG with a different palette.
CODE_118754:    JSL CODE_13FC89         ; $11:8754: 22 89 FC 13 ; HDMA Handler.
                INC $0D13                   ; $11:8758: EE 13 0D    ;
                STZ $0235                   ; $11:875B: 9C 35 02    ;
                STZ $0236                   ; $11:875E: 9C 36 02    ;
                STZ $0237                   ; $11:8761: 9C 37 02    ;
                JSR CODE_118AFE             ; $11:8764: 20 FE 8A    ;
                STZ $0D13                   ; $11:8767: 9C 13 0D    ;
                JMP CODE_1182CE         ; $11:876A: 4C CE 82    ;
           
CODE_11876D:    LDX #$08                    ; $11:876D: A2 08       ;
CODE_11876F:    STZ $042F,x                 ; $11:876F: 9E 2F 04    ;
                DEX                         ; $11:8772: CA          ;
                BPL CODE_11876F             ; $11:8773: 10 FA       ;
                RTS                     ; $11:8775: 60          ;
                       
CODE_118776:    STY $0D                     ; $11:8776: 84 0D       ;
                PLY                         ; $11:8778: 7A          ;
                STY $0A                     ; $11:8779: 84 0A       ;
                REP #$30                    ; $11:877B: C2 30       ;
                AND #$00FF                  ; $11:877D: 29 FF 00    ;
                ASL A                       ; $11:8780: 0A          ;
                TAY                         ; $11:8781: A8          ;
                PLA                         ; $11:8782: 68          ;
                STA $0B                     ; $11:8783: 85 0B       ;
                INY                         ; $11:8785: C8          ;
                LDA [$0A],y                 ; $11:8786: B7 0A       ;
                STA $0A                     ; $11:8788: 85 0A       ;
                SEP #$30                    ; $11:878A: E2 30       ;
                LDY $0D                     ; $11:878C: A4 0D       ;
                JML [$000A]             ; $11:878E: DC 0A 00    ;
               
CODE_118791:    JSR CODE_1190DF             ; $11:8791: 20 DF 90    ;
                JSL CODE_118009             ; $11:8794: 22 09 80 11 ;
                JSL CODE_118014             ; $11:8798: 22 14 80 11 ;
                JSL CODE_14F9A0             ; $11:879C: 22 A0 F9 14 ;
                RTS                     ; $11:87A0: 60          ;
                       
                JSR CODE_1190DF             ; $11:87A1: 20 DF 90    ;
                JSL CODE_118009             ; $11:87A4: 22 09 80 11 ;
                LDA #$40                    ; $11:87A8: A9 40       ;
                STA $0100                   ; $11:87AA: 8D 00 01    ;
                LDA #$03                    ; $11:87AD: A9 03       ;
                STA $11                     ; $11:87AF: 85 11       ;
                JSL CODE_118014             ; $11:87B1: 22 14 80 11 ;
                RTS                     ; $11:87B5: 60          ;
                       
CODE_1187B6:    TXA                         ; $11:87B6: 8A          ;
                INC A                       ; $11:87B7: 1A          ;
                ORA #$80                    ; $11:87B8: 09 80       ;
                STA $118E                   ; $11:87BA: 8D 8E 11    ;
                LDA #$0C                    ; $11:87BD: A9 0C       ;
                STA $118F                   ; $11:87BF: 8D 8F 11    ;
                LDY $04EE                   ; $11:87C2: AC EE 04    ;
                TYA                         ; $11:87C5: 98          ;
                JSR CODE_11917F             ; $11:87C6: 20 7F 91    ;
                STY $11B4                   ; $11:87C9: 8C B4 11    ;
                STA $11B6                   ; $11:87CC: 8D B6 11    ;
                LDA #$0C                    ; $11:87CF: A9 0C       ;
                STA $11B7                   ; $11:87D1: 8D B7 11    ;
                TAX                         ; $11:87D4: AA          ;
                CPY #$BF                    ; $11:87D5: C0 BF       ;
                BNE CODE_1187DB             ; $11:87D7: D0 02       ;
                LDX #$00                    ; $11:87D9: A2 00       ;
CODE_1187DB:    STA $11B5                   ; $11:87DB: 8D B5 11    ;
                LDY #$0C                    ; $11:87DE: A0 0C       ;
CODE_1187E0:    LDA #$BF                    ; $11:87E0: A9 BF       ;
                STA $116C,y                 ; $11:87E2: 99 6C 11    ;
                LDA #$00                    ; $11:87E5: A9 00       ;
                STA $116D,y                 ; $11:87E7: 99 6D 11    ;
                DEY                         ; $11:87EA: 88          ;
                DEY                         ; $11:87EB: 88          ;
                BPL CODE_1187E0             ; $11:87EC: 10 F2       ;
                LDX $0635                   ; $11:87EE: AE 35 06    ;
                LDA $0533                   ; $11:87F1: AD 33 05    ;
                SEC                         ; $11:87F4: 38          ;
                SBC.l DATA_11C9B4,x                 ; $11:87F5: FF B4 C9 11 ;
                STA $0629                   ; $11:87F9: 8D 29 06    ;
                CLC                         ; $11:87FC: 18          ;
                ADC #$81                    ; $11:87FD: 69 81       ;
                STA $1192                   ; $11:87FF: 8D 92 11    ;
                LDA #$0C                    ; $11:8802: A9 0C       ;
                STA $1193                   ; $11:8804: 8D 93 11    ;
                LDA.l DATA_11C9B4+1,x               ; $11:8807: BF B5 C9 11 ;
                SEC                         ; $11:880B: 38          ;
                SBC.l DATA_11C9B4,x                 ; $11:880C: FF B4 C9 11 ;
                STA $03                     ; $11:8810: 85 03       ;
                LDX #$00                    ; $11:8812: A2 00       ;
                TXY                         ; $11:8814: 9B          ;
CODE_118815:    LDA #$EB                    ; $11:8815: A9 EB       ;
                CPX $0629                   ; $11:8817: EC 29 06    ;
                BNE CODE_11881E             ; $11:881A: D0 02       ;
                LDA #$EC                    ; $11:881C: A9 EC       ;
CODE_11881E:    STA $116C,y                 ; $11:881E: 99 6C 11    ;
                LDA #$1C                    ; $11:8821: A9 1C       ;
                STA $116D,y                 ; $11:8823: 99 6D 11    ;
                INY                         ; $11:8826: C8          ;
                INY                         ; $11:8827: C8          ;
                INY                         ; $11:8828: C8          ;
                INY                         ; $11:8829: C8          ;
                INX                         ; $11:882A: E8          ;
                CPX $03                     ; $11:882B: E4 03       ;
                BCC CODE_118815             ; $11:882D: 90 E6       ;
                LDA #$08                    ; $11:882F: A9 08       ;
                STA $11                     ; $11:8831: 85 11       ;
                RTL                     ; $11:8833: 6B          ;
                       
CODE_118834:    LDA #$C0                    ; $11:8834: A9 C0       ;
                STA $0100                   ; $11:8836: 8D 00 01    ;
                RTS                     ; $11:8839: 60          ;
                       
CODE_11883A:    STZ $0534                   ; $11:883A: 9C 34 05    ;
                STZ $04E9                   ; $11:883D: 9C E9 04    ;
                STZ $0535                   ; $11:8840: 9C 35 05    ;
                STZ $04EA                   ; $11:8843: 9C EA 04    ;
                STZ $0536                   ; $11:8846: 9C 36 05    ;
                STZ $04EB                   ; $11:8849: 9C EB 04    ;
                STZ $50                     ; $11:884C: 64 50       ;
                STZ $04E7                   ; $11:884E: 9C E7 04    ;
                STZ $0628                   ; $11:8851: 9C 28 06    ;
                STZ $04EF                   ; $11:8854: 9C EF 04    ;
                STZ $0500                   ; $11:8857: 9C 00 05    ;
                STZ $06C2                   ; $11:885A: 9C C2 06    ;
                RTS                     ; $11:885D: 60          ;
                       
CODE_11885E:    LDA $FE                     ; $11:885E: A5 FE       ;
                AND #$80                    ; $11:8860: 29 80       ;
                BNE CODE_11886B             ; $11:8862: D0 07       ;
                JSR CODE_118AD2             ; $11:8864: 20 D2 8A    ;
                JSL CODE_118009             ; $11:8867: 22 09 80 11 ;
CODE_11886B:    JSR CODE_1190A2             ; $11:886B: 20 A2 90    ;
                JSL CODE_138936             ; $11:886E: 22 36 89 13 ;
                JSL CODE_14D194             ; $11:8872: 22 94 D1 14 ;
                JSL CODE_12FA10             ; $11:8876: 22 10 FA 12 ;
                JSL CODE_14F953             ; $11:887A: 22 53 F9 14 ;
                JSR CODE_1190DF             ; $11:887E: 20 DF 90    ;
                JSL CODE_14F9F0         ; $11:8881: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_13DCF6             ; $11:8885: 22 F6 DC 13 ;
                JSL CODE_14D856             ; $11:8889: 22 56 D8 14 ;
                JSL CODE_118014             ; $11:888D: 22 14 80 11 ;
                LDX $0635                   ; $11:8891: AE 35 06    ;
                LDY $0533                   ; $11:8894: AC 33 05    ;
                JSL CODE_1187B6             ; $11:8897: 22 B6 87 11 ;
                JSL CODE_118014             ; $11:889B: 22 14 80 11 ;
                LDA #$01                    ; $11:889F: A9 01       ;
                STA $0243                   ; $11:88A1: 8D 43 02    ;
                JSL CODE_14F92E             ; $11:88A4: 22 2E F9 14 ;
                LDA #$01                    ; $11:88A8: A9 01       ;
                STA $0201                   ; $11:88AA: 8D 01 02    ;
                STA $0203                   ; $11:88AD: 8D 03 02    ;
                INC $0217                   ; $11:88B0: EE 17 02    ;
                STZ $2111                   ; $11:88B3: 9C 11 21    ;
                STZ $2111                   ; $11:88B6: 9C 11 21    ;
                STZ $2112                   ; $11:88B9: 9C 12 21    ;
                STZ $2112                   ; $11:88BC: 9C 12 21    ;
                STZ $0D13                   ; $11:88BF: 9C 13 0D    ;
                JSR CODE_118AFE             ; $11:88C2: 20 FE 8A    ;
CODE_1188C5:    LDA #$80                    ; $11:88C5: A9 80       ;
                STA $1DE2                   ; $11:88C7: 8D E2 1D    ;
                JSL CODE_14E098             ; $11:88CA: 22 98 E0 14 ;
                LDA $0533                   ; $11:88CE: AD 33 05    ;
                CMP $02E6                   ; $11:88D1: CD E6 02    ;
                BEQ CODE_1188E0             ; $11:88D4: F0 0A       ;
                STA $02E6                   ; $11:88D6: 8D E6 02    ;
                INC $0768                   ; $11:88D9: EE 68 07    ;
                JSL CODE_12FD96             ; $11:88DC: 22 96 FD 12 ;
CODE_1188E0:    LDA #$80                    ; $11:88E0: A9 80       ;
                STA $0210                   ; $11:88E2: 8D 10 02    ;
CODE_1188E5:    JSL CODE_118014             ; $11:88E5: 22 14 80 11 ;
                LDA $FA                     ; $11:88E9: A5 FA       ;
                AND #$90                    ; $11:88EB: 29 90       ;
                STA $0712                   ; $11:88ED: 8D 12 07    ;
                LDA $FC                     ; $11:88F0: A5 FC       ;
                AND #$80                    ; $11:88F2: 29 80       ;
                ORA $0712                   ; $11:88F4: 0D 12 07    ;
                BNE CODE_1188FE             ; $11:88F7: D0 05       ;
                DEC $0210                   ; $11:88F9: CE 10 02    ;
                BPL CODE_1188E5             ; $11:88FC: 10 E7       ;
CODE_1188FE:    LDA $0768                   ; $11:88FE: AD 68 07    ;
                BEQ CODE_11890C             ; $11:8901: F0 09       ;
                JSL CODE_12F4D0         ; $11:8903: 22 D0 F4 12 ; Handle object -> M16. (Does not apply to objects that only contain 1 M16 tile, like vegetables.)
                STZ $0768                   ; $11:8907: 9C 68 07    ;
                BRA CODE_11890F             ; $11:890A: 80 03       ;

CODE_11890C:    JSR CODE_118AD2             ; $11:890C: 20 D2 8A    ;
CODE_11890F:    JSL CODE_118009             ; $11:890F: 22 09 80 11 ;
                JSR CODE_1190A2             ; $11:8913: 20 A2 90    ;
                JSL CODE_138062             ; $11:8916: 22 62 80 13 ;
                LDA #$17                    ; $11:891A: A9 17       ;
                STA $0243                   ; $11:891C: 8D 43 02    ;
                JSL CODE_12FA10             ; $11:891F: 22 10 FA 12 ;
                JSR CODE_1190DF             ; $11:8923: 20 DF 90    ;
                RTS                     ; $11:8926: 60          ;
                       
CODE_118927:    JSL CODE_12FA35             ; $11:8927: 22 35 FA 12 ;
                LDX $0635                   ; $11:892B: AE 35 06    ;
                LDY $0533                   ; $11:892E: AC 33 05    ;
                JSL CODE_1187B6             ; $11:8931: 22 B6 87 11 ;
                JSL CODE_138D67             ; $11:8935: 22 67 8D 13 ;
                LDY $04EE                   ; $11:8939: AC EE 04    ;
                TYA                         ; $11:893C: 98          ;
                JSR CODE_119155             ; $11:893D: 20 55 91    ;
                STA $11B6                   ; $11:8940: 8D B6 11    ;
                LDA #$15                    ; $11:8943: A9 15       ;
                STA $11B7                   ; $11:8945: 8D B7 11    ;
                LDX #$BD                    ; $11:8948: A2 BD       ;
                CPY #$BF                    ; $11:894A: C0 BF       ;
                BEQ CODE_118953             ; $11:894C: F0 05       ;
                TYX                         ; $11:894E: BB          ;
                LDA #$15                    ; $11:894F: A9 15       ;
                BRA CODE_118955             ; $11:8951: 80 02       ;

CODE_118953:    LDA #$09                    ; $11:8953: A9 09       ;
CODE_118955:    STX $11B4                   ; $11:8955: 8E B4 11    ;
                STA $11B5                   ; $11:8958: 8D B5 11    ;
                JSL CODE_118014             ; $11:895B: 22 14 80 11 ;
                JSL CODE_118A84             ; $11:895F: 22 84 8A 11 ;
                JSL CODE_118014             ; $11:8963: 22 14 80 11 ;
                JSL CODE_14D1D3             ; $11:8967: 22 D3 D1 14 ;
                JSL CODE_14F9F0         ; $11:896B: 22 F0 F9 14 ; Clear all OAM.
CODE_11896F:    JSL CODE_118014             ; $11:896F: 22 14 80 11 ;
                JSL CODE_14D7CF             ; $11:8973: 22 CF D7 14 ;
                LDA $7FF804                 ; $11:8977: AF 04 F8 7F ;
                DEC A                       ; $11:897B: 3A          ;
                STA $7FF804                 ; $11:897C: 8F 04 F8 7F ;
                BPL CODE_11896F             ; $11:8980: 10 ED       ;
                JSL CODE_118014             ; $11:8982: 22 14 80 11 ;
                LDA #$00                    ; $11:8986: A9 00       ;
                STA $7FF800                 ; $11:8988: 8F 00 F8 7F ;
                STA $7FF801                 ; $11:898C: 8F 01 F8 7F ;
CODE_118990:    LDA #$10                    ; $11:8990: A9 10       ;
                STA $0759                   ; $11:8992: 8D 59 07    ;
                INC $0217                   ; $11:8995: EE 17 02    ;
                JSL CODE_13DCF6             ; $11:8998: 22 F6 DC 13 ;
                JSL CODE_14D194             ; $11:899C: 22 94 D1 14 ;
                JSL CODE_14F92E             ; $11:89A0: 22 2E F9 14 ;
                LDA $0636                   ; $11:89A4: AD 36 06    ;
                CMP #$A5                    ; $11:89A7: C9 A5       ;
                BEQ CODE_1189B0             ; $11:89A9: F0 05       ;
                LDA #$A5                    ; $11:89AB: A9 A5       ;
                STA $0636                   ; $11:89AD: 8D 36 06    ;
CODE_1189B0:    LDA #$04                ; $11:89B0: A9 04       ; \ Character select music.
                STA $1DE2               ; $11:89B2: 8D E2 1D    ; /
                LDA $8F                     ; $11:89B5: A5 8F       ;
                STA $0404                   ; $11:89B7: 8D 04 04    ;
                LDA $0635                   ; $11:89BA: AD 35 06    ;
                STA $0405                   ; $11:89BD: 8D 05 04    ;
CODE_1189C0:    JSL CODE_118014             ; $11:89C0: 22 14 80 11 ;
                LDA $FA                     ; $11:89C4: A5 FA       ;
                AND #$23                    ; $11:89C6: 29 23       ;
                BNE CODE_1189CD             ; $11:89C8: D0 03       ;
                JMP CODE_1189FB         ; $11:89CA: 4C FB 89    ;
           
CODE_1189CD:    LDA $FA                 ; $11:89CD: A5 FA       ; \ Check if pressing Right or Select.
                AND #$21                ; $11:89CF: 29 21       ;  |
                BEQ CODE_1189DD         ; $11:89D1: F0 0A       ; / If neither, branch.
                JSR CODE_118AAB         ; $11:89D3: 20 AB 8A    ; Remove the highlight from previous player.
                DEC $8F                 ; $11:89D6: C6 8F       ; Move to next character. (Move to the right.)
                LDA #$01                ; $11:89D8: A9 01       ; \ 'Coin get' sound (when you select between players).
                STA $1DE3               ; $11:89DA: 8D E3 1D    ; /
CODE_1189DD:    LDA $FA                 ; $11:89DD: A5 FA       ; \ Check if pressing Left.
                AND #$02                ; $11:89DF: 29 02       ;  |
                BEQ CODE_1189ED         ; $11:89E1: F0 0A       ; / If not, branch.
                JSR CODE_118AAB         ; $11:89E3: 20 AB 8A    ; Remove the highlight from previous player.
                INC $8F                 ; $11:89E6: E6 8F       ; Move to previous character. (Move to the left.)
                LDA #$01                ; $11:89E8: A9 01       ; \ 'Coin get' sound (when you select between players).
                STA $1DE3               ; $11:89EA: 8D E3 1D    ; /
CODE_1189ED:    LDA $8F                 ; $11:89ED: A5 8F       ; \ Only 4 options.
                AND #$03                ; $11:89EF: 29 03       ;  |
                STA $8F                 ; $11:89F1: 85 8F       ; /
                JSL CODE_14D1D3             ; $11:89F3: 22 D3 D1 14 ;
                JSL CODE_118A84             ; $11:89F7: 22 84 8A 11 ;
CODE_1189FB:    LDA $FA                     ; $11:89FB: A5 FA       ;
                AND #$90                    ; $11:89FD: 29 90       ;
                STA $0712                   ; $11:89FF: 8D 12 07    ;
                LDA $FC                     ; $11:8A02: A5 FC       ;
                AND #$80                    ; $11:8A04: 29 80       ;
                ORA $0712                   ; $11:8A06: 0D 12 07    ;
                BNE CODE_118A0E             ; $11:8A09: D0 03       ;
                JMP CODE_1189C0         ; $11:8A0B: 4C C0 89    ;
           
CODE_118A0E:    LDA #$3C                    ; $11:8A0E: A9 3C       ;
                STA $1DE0                   ; $11:8A10: 8D E0 1D    ;
                LDA #$40                    ; $11:8A13: A9 40       ;
                STA $0210                   ; $11:8A15: 8D 10 02    ;
                JSL CODE_118014             ; $11:8A18: 22 14 80 11 ;
                LDY #$00                    ; $11:8A1C: A0 00       ;
                LDX $8F                     ; $11:8A1E: A6 8F       ;
                LDA.l DATA_15EBA1,x                 ; $11:8A20: BF A1 EB 15 ;
                TAX                         ; $11:8A24: AA          ;
CODE_118A25:    LDA.l DATA_15EB41,x                 ; $11:8A25: BF 41 EB 15 ;
                STA $0302,y                 ; $11:8A29: 99 02 03    ;
                INX                         ; $11:8A2C: E8          ;
                INY                         ; $11:8A2D: C8          ;
                CPY #$18                    ; $11:8A2E: C0 18       ;
                BNE CODE_118A25             ; $11:8A30: D0 F3       ;
                LDA #$FF                    ; $11:8A32: A9 FF       ;
                STA $031A                   ; $11:8A34: 8D 1A 03    ;
CODE_118A37:    JSL CODE_118014             ; $11:8A37: 22 14 80 11 ;
                DEC $0210                   ; $11:8A3B: CE 10 02    ;
                BPL CODE_118A37             ; $11:8A3E: 10 F7       ;
                JSL CODE_118A84             ; $11:8A40: 22 84 8A 11 ;
                LDA #$40                    ; $11:8A44: A9 40       ;
                STA $0210                   ; $11:8A46: 8D 10 02    ;
CODE_118A49:    JSL CODE_118014             ; $11:8A49: 22 14 80 11 ;
                DEC $0210                   ; $11:8A4D: CE 10 02    ;
                BPL CODE_118A49             ; $11:8A50: 10 F7       ;
                LDA #$02                    ; $11:8A52: A9 02       ;
                JSL CODE_14D78D             ; $11:8A54: 22 8D D7 14 ;
                LDA #$01                    ; $11:8A58: A9 01       ;
                STA $0201                   ; $11:8A5A: 8D 01 02    ;
CODE_118A5D:    JSL CODE_118014             ; $11:8A5D: 22 14 80 11 ;
                JSL CODE_14D7CF             ; $11:8A61: 22 CF D7 14 ;
                LDA $7FF804                 ; $11:8A65: AF 04 F8 7F ;
                DEC A                       ; $11:8A69: 3A          ;
                STA $7FF804                 ; $11:8A6A: 8F 04 F8 7F ;
                BPL CODE_118A5D             ; $11:8A6E: 10 ED       ;
                JSL CODE_118014             ; $11:8A70: 22 14 80 11 ;
                LDA #$00                    ; $11:8A74: A9 00       ;
                STA $7FF800                 ; $11:8A76: 8F 00 F8 7F ;
                STA $7FF801                 ; $11:8A7A: 8F 01 F8 7F ;
                LDA #$01                    ; $11:8A7E: A9 01       ;
                STA $0775                   ; $11:8A80: 8D 75 07    ;
                RTS                     ; $11:8A83: 60          ;
                       
CODE_118A84:    LDA #$17                ; $11:8A84: A9 17       ; \ Load byte into VRAM table at $0302 #$17 times.
                STA $0712               ; $11:8A86: 8D 12 07    ; /
                LDY $0300               ; $11:8A89: AC 00 03    ; \ Get to free area in VRAM table.
                LDX $8F                 ; $11:8A8C: A6 8F       ;  | Get player into index.
                LDA.l DATA_15EBA1,x     ; $11:8A8E: BF A1 EB 15 ;  |
                TAX                     ; $11:8A92: AA          ;  | X = position for the table at which the tilemap for each player starts at.
CODE_118A93:    LDA.l DATA_15EAE1,x     ; $11:8A93: BF E1 EA 15 ;  | Load tilemap byte into table at $0302,y.
                STA $0302,y             ; $11:8A97: 99 02 03    ;  |
                INX                     ; $11:8A9A: E8          ;  | Get to next byte in both tables.
                INY                     ; $11:8A9B: C8          ;  |
                DEC $0712               ; $11:8A9C: CE 12 07    ;  | Loop until $0712 is sub-zero.
                BPL CODE_118A93         ; $11:8A9F: 10 F2       ; /
                LDA #$FF                ; $11:8AA1: A9 FF       ; \ End table.
                STA $0302,y             ; $11:8AA3: 99 02 03    ; /
                TYA                     ; $11:8AA6: 98          ; \ Amount of bytes the table covers up...
                STA $0300               ; $11:8AA7: 8D 00 03    ; / Into $0300. (Header byte)
                RTL                     ; $11:8AAA: 6B          ; Return.
                       
CODE_118AAB:    LDA #$17                ; $11:8AAB: A9 17       ; \ Load byte into VRAM table at $0302 #$17 times.
                STA $0712               ; $11:8AAD: 8D 12 07    ; /
                LDY $0300               ; $11:8AB0: AC 00 03    ; \ Get to free area in VRAM table.
                LDX $8F                 ; $11:8AB3: A6 8F       ;  | Get player into index.
                LDA.l DATA_15EBA1,x     ; $11:8AB5: BF A1 EB 15 ;  |
                TAX                     ; $11:8AB9: AA          ;  | X = position for the table at which the tilemap for each player starts at.
CODE_118ABA:    LDA.l DATA_11C6AB,x     ; $11:8ABA: BF AB C6 11 ;  | Load tilemap byte into table at $0302,y.
                STA $0302,y             ; $11:8ABE: 99 02 03    ;  |
                INX                     ; $11:8AC1: E8          ;  | Get to next byte in both tables.
                INY                     ; $11:8AC2: C8          ;  |
                DEC $0712               ; $11:8AC3: CE 12 07    ;  | Loop until $0712 is sub-zero.
                BPL CODE_118ABA         ; $11:8AC6: 10 F2       ; /
                LDA #$FF                ; $11:8AC8: A9 FF       ; \ End table.
                STA $0302,y             ; $11:8ACA: 99 02 03    ; /
                TYA                     ; $11:8ACD: 98          ; \ Amount of bytes the table covers up...
                STA $0300               ; $11:8ACE: 8D 00 03    ; / Into $0300. (Header byte)
                RTS                     ; $11:8AD1: 60          ; Return.
                       
CODE_118AD2:    STZ $02B7                   ; $11:8AD2: 9C B7 02    ;
CODE_118AD5:    JSL CODE_118014             ; $11:8AD5: 22 14 80 11 ;
                JSL CODE_14D1B2             ; $11:8AD9: 22 B2 D1 14 ;
                LDA $02B7                   ; $11:8ADD: AD B7 02    ;
                BEQ CODE_118AD5             ; $11:8AE0: F0 F3       ;
                LDA $04EF                   ; $11:8AE2: AD EF 04    ;
                BEQ CODE_118AEF             ; $11:8AE5: F0 08       ;
                CMP #$01                    ; $11:8AE7: C9 01       ;
                BEQ CODE_118AEF             ; $11:8AE9: F0 04       ;
                JSL CODE_14E35A             ; $11:8AEB: 22 5A E3 14 ;
CODE_118AEF:    LDA $024B                   ; $11:8AEF: AD 4B 02    ;
                BEQ CODE_118AFD             ; $11:8AF2: F0 09       ;
                CMP #$BE                    ; $11:8AF4: C9 BE       ;
                BEQ CODE_118AFD             ; $11:8AF6: F0 05       ;
                LDA #$FF                    ; $11:8AF8: A9 FF       ;
                STA $024B                   ; $11:8AFA: 8D 4B 02    ;
CODE_118AFD:    RTS                     ; $11:8AFD: 60          ;
                       
CODE_118AFE:    STZ $02B7                   ; $11:8AFE: 9C B7 02    ;
                STZ $FE                     ; $11:8B01: 64 FE       ;
                STZ $04AE                   ; $11:8B03: 9C AE 04    ;
CODE_118B06:    JSL CODE_118014             ; $11:8B06: 22 14 80 11 ;
                JSL CODE_14D1C2             ; $11:8B0A: 22 C2 D1 14 ;
                JSR CODE_118B1F             ; $11:8B0E: 20 1F 8B    ;
                LDA $1E                     ; $11:8B11: A5 1E       ;
                BNE CODE_118B19             ; $11:8B13: D0 04       ;
                JSL CODE_15D11D             ; $11:8B15: 22 1D D1 15 ;
CODE_118B19:    LDA $02B7                   ; $11:8B19: AD B7 02    ;
                BEQ CODE_118B06             ; $11:8B1C: F0 E8       ;
                RTS                     ; $11:8B1E: 60          ;
                       
CODE_118B1F:    LDA $0D13                   ; $11:8B1F: AD 13 0D    ;
                BEQ CODE_118B2C             ; $11:8B22: F0 08       ;
                JSL CODE_13FB12             ; $11:8B24: 22 12 FB 13 ;
                JSL CODE_129B00             ; $11:8B28: 22 00 9B 12 ;
CODE_118B2C:    RTS                     ; $11:8B2C: 60          ;
                       
CODE_118B2D:    JSR CODE_11945A             ; $11:8B2D: 20 5A 94    ;
                RTL                     ; $11:8B30: 6B          ;
                       
CODE_118B31:    LDY $04ED                   ; $11:8B31: AC ED 04    ;
                STZ $04ED                   ; $11:8B34: 9C ED 04    ;
                STZ $04E1                   ; $11:8B37: 9C E1 04    ;
                STZ $062C                   ; $11:8B3A: 9C 2C 06    ;
                STZ $062A                   ; $11:8B3D: 9C 2A 06    ;
                STZ $0500                   ; $11:8B40: 9C 00 05    ;
                DEY                         ; $11:8B43: 88          ;
                BNE CODE_118B91             ; $11:8B44: D0 4B       ;
                STY $06C2                   ; $11:8B46: 8C C2 06    ;
                JSL CODE_14E061             ; $11:8B49: 22 61 E0 14 ;
                LDA #$FF                    ; $11:8B4D: A9 FF       ;
                STA $0547                   ; $11:8B4F: 8D 47 05    ;
                LDA #$69                    ; $11:8B52: A9 69       ;
                STA $1194                   ; $11:8B54: 8D 94 11    ;
                LDA #$48                    ; $11:8B57: A9 48       ;
                STA $1195                   ; $11:8B59: 8D 95 11    ;
                LDA #$15                    ; $11:8B5C: A9 15       ;
                STA $0596                   ; $11:8B5E: 8D 96 05    ;
                JSR CODE_118AD2             ; $11:8B61: 20 D2 8A    ;
                LDA #$80                    ; $11:8B64: A9 80       ;
                STA $FE                     ; $11:8B66: 85 FE       ;
                STZ $0239                   ; $11:8B68: 9C 39 02    ;
                JSR CODE_118791             ; $11:8B6B: 20 91 87    ;
                JSL CODE_118014             ; $11:8B6E: 22 14 80 11 ;
                JSL CODE_14F953             ; $11:8B72: 22 53 F9 14 ;
                JSL CODE_14DA0A             ; $11:8B76: 22 0A DA 14 ;
                JSR CODE_118AFE             ; $11:8B7A: 20 FE 8A    ;
                LDA #$0F                    ; $11:8B7D: A9 0F       ;
                STA $FE                     ; $11:8B7F: 85 FE       ;
                STZ $0217                   ; $11:8B81: 9C 17 02    ;
                JSR CODE_118990             ; $11:8B84: 20 90 89    ;
                JSR CODE_1188C5             ; $11:8B87: 20 C5 88    ;
                JMP CODE_1181A8         ; $11:8B8A: 4C A8 81    ;
           
DATA_118B8D:    db $EE,$1C,$BD,$09                              ;

CODE_118B91:    LDA #$1F                    ; $11:8B91: A9 1F       ;
                STA $04C3                               ; $11:8B93: 8D C3 04    ;
                LDA #$00                    ; $11:8B96: A9 00       ;
                STA $04C4                   ; $11:8B98: 8D C4 04    ;
                STA $04B0                   ; $11:8B9B: 8D B0 04    ;
                STA $0620                   ; $11:8B9E: 8D 20 06    ;
                STA $04FC                   ; $11:8BA1: 8D FC 04    ;
                STA $04FD                   ; $11:8BA4: 8D FD 04    ;
                STA $0621                   ; $11:8BA7: 8D 21 06    ;
                STA $04AD                   ; $11:8BAA: 8D AD 04    ;
                DEY                         ; $11:8BAD: 88          ;
                BEQ CODE_118BB3             ; $11:8BAE: F0 03       ;
                JMP CODE_118CB8         ; $11:8BB0: 4C B8 8C    ;
           
CODE_118BB3:    STY $06C2                   ; $11:8BB3: 8C C2 06    ;
                LDA #$0A                ; $11:8BB6: A9 0A       ; \ Game over music.
                STA $1DE2               ; $11:8BB8: 8D E2 1D    ; /
                JSR CODE_118AD2             ; $11:8BBB: 20 D2 8A    ;
                JSL CODE_118009             ; $11:8BBE: 22 09 80 11 ;
                STZ $0217                   ; $11:8BC2: 9C 17 02    ;
                JSL CODE_14D194             ; $11:8BC5: 22 94 D1 14 ;
                JSL CODE_14F953             ; $11:8BC9: 22 53 F9 14 ;
                JSL CODE_14F92E             ; $11:8BCD: 22 2E F9 14 ;
                JSL CODE_1387D8             ; $11:8BD1: 22 D8 87 13 ;
                JSL CODE_138846             ; $11:8BD5: 22 46 88 13 ;
                JSL CODE_13DC5E             ; $11:8BD9: 22 5E DC 13 ;
                JSL CODE_13882D             ; $11:8BDD: 22 2D 88 13 ;
                LDA #$01                    ; $11:8BE1: A9 01       ;
                STA $11                     ; $11:8BE3: 85 11       ;
                JSL CODE_14F908             ; $11:8BE5: 22 08 F9 14 ;
                LDA #$02                    ; $11:8BE9: A9 02       ;
                STA $11                     ; $11:8BEB: 85 11       ;
                JSL CODE_14F908             ; $11:8BED: 22 08 F9 14 ;
                LDA #$03                    ; $11:8BF1: A9 03       ;
                STA $11                     ; $11:8BF3: 85 11       ;
                JSL CODE_14F908             ; $11:8BF5: 22 08 F9 14 ;
                JSL CODE_14D84E             ; $11:8BF9: 22 4E D8 14 ;
                LDA #$05                    ; $11:8BFD: A9 05       ;
                STA $11                     ; $11:8BFF: 85 11       ;
                JSL CODE_118014             ; $11:8C01: 22 14 80 11 ;
                REP #$20                    ; $11:8C05: C2 20       ;
                LDA #$09BD                  ; $11:8C07: A9 BD 09    ;
                STA $11C8                   ; $11:8C0A: 8D C8 11    ;
                STA $11CE                   ; $11:8C0D: 8D CE 11    ;
                LDA #$1CEE                  ; $11:8C10: A9 EE 1C    ;
                STA $11C8                   ; $11:8C13: 8D C8 11    ;
                SEP #$20                    ; $11:8C16: E2 20       ;
                LDA #$13                    ; $11:8C18: A9 13       ;
                STA $11                     ; $11:8C1A: 85 11       ;
                LDA #$01                    ; $11:8C1C: A9 01       ;
                STA $0207                   ; $11:8C1E: 8D 07 02    ;
                LDA #$01                    ; $11:8C21: A9 01       ;
                STA $0243                   ; $11:8C23: 8D 43 02    ;
                STZ $0211                   ; $11:8C26: 9C 11 02    ;
                STZ $078E                   ; $11:8C29: 9C 8E 07    ;
                JSR CODE_1190DF             ; $11:8C2C: 20 DF 90    ;
                STZ $0D13                   ; $11:8C2F: 9C 13 0D    ;
                INC $078F                   ; $11:8C32: EE 8F 07    ;
                JSR CODE_118AFE             ; $11:8C35: 20 FE 8A    ;
CODE_118C38:    JSL CODE_118014             ; $11:8C38: 22 14 80 11 ;
                LDA $FA                     ; $11:8C3C: A5 FA       ;
                AND #$2C                    ; $11:8C3E: 29 2C       ;
                BEQ CODE_118C46             ; $11:8C40: F0 04       ;
                JSL CODE_14DAB8             ; $11:8C42: 22 B8 DA 14 ;
CODE_118C46:    LDA $078E                   ; $11:8C46: AD 8E 07    ;
                ASL A                       ; $11:8C49: 0A          ;
                ASL A                       ; $11:8C4A: 0A          ;
                CLC                         ; $11:8C4B: 18          ;
                ADC $078E                   ; $11:8C4C: 6D 8E 07    ;
                CLC                         ; $11:8C4F: 18          ;
                ADC $078E                   ; $11:8C50: 6D 8E 07    ;
                TAY                         ; $11:8C53: A8          ;
                REP #$20                    ; $11:8C54: C2 20       ;
                LDA #$09BD                  ; $11:8C56: A9 BD 09    ;
                STA $11C8                   ; $11:8C59: 8D C8 11    ;
                STA $11CE                   ; $11:8C5C: 8D CE 11    ;
                STA $11D4                   ; $11:8C5F: 8D D4 11    ;
                SEP #$20                    ; $11:8C62: E2 20       ;
                INC $0790                   ; $11:8C64: EE 90 07    ;
                LDA $0790                   ; $11:8C67: AD 90 07    ;
                AND #$10                    ; $11:8C6A: 29 10       ;
                LSR A                       ; $11:8C6C: 4A          ;
                LSR A                       ; $11:8C6D: 4A          ;
                LSR A                       ; $11:8C6E: 4A          ;
                TAX                         ; $11:8C6F: AA          ;
                REP #$20                    ; $11:8C70: C2 20       ;
                LDA.l DATA_118B8D,x                 ; $11:8C72: BF 8D 8B 11 ;
                STA $11C8,y                 ; $11:8C76: 99 C8 11    ;
                SEP #$20                    ; $11:8C79: E2 20       ;
                LDA #$13                    ; $11:8C7B: A9 13       ;
                STA $11                     ; $11:8C7D: 85 11       ;
                LDA $FA                     ; $11:8C7F: A5 FA       ;
                AND #$10                    ; $11:8C81: 29 10       ;
                BEQ CODE_118C38             ; $11:8C83: F0 B3       ;
                JSL CODE_14DAF4             ; $11:8C85: 22 F4 DA 14 ;
                LDA $078E                   ; $11:8C89: AD 8E 07    ;
                BNE CODE_118C93             ; $11:8C8C: D0 05       ;
                LDA #$29                    ; $11:8C8E: A9 29       ;
                STA $1DE3                   ; $11:8C90: 8D E3 1D    ;
CODE_118C93:    LDA #$04                    ; $11:8C93: A9 04       ;
                JSL CODE_14D78D             ; $11:8C95: 22 8D D7 14 ;
                STZ $0207                   ; $11:8C99: 9C 07 02    ;
                STZ $062B                   ; $11:8C9C: 9C 2B 06    ;
                LDA #$13                    ; $11:8C9F: A9 13       ;
                STA $0243                   ; $11:8CA1: 8D 43 02    ;
                STZ $078F                   ; $11:8CA4: 9C 8F 07    ;
                LDA $0635                   ; $11:8CA7: AD 35 06    ;
                ASL A                       ; $11:8CAA: 0A          ;
                CLC                         ; $11:8CAB: 18          ;
                ADC $0635                   ; $11:8CAC: 6D 35 06    ;
                STA $0533                   ; $11:8CAF: 8D 33 05    ;
                STA $04E8                   ; $11:8CB2: 8D E8 04    ;
                JMP CODE_11816B         ; $11:8CB5: 4C 6B 81    ;
           
CODE_118CB8:    DEY                         ; $11:8CB8: 88          ;
                BNE CODE_118CBE             ; $11:8CB9: D0 03       ;
                BRL CODE_118D9D         ; $11:8CBB: 82 DF 00    ;
           
CODE_118CBE:    LDA #$13                ; $11:8CBE: A9 13       ; \ Warp Jar music.
                STA $1DE2               ; $11:8CC0: 8D E2 1D    ; /
                JSL CODE_14F9F0         ; $11:8CC3: 22 F0 F9 14 ; Clear all OAM.
                LDX #$00                    ; $11:8CC7: A2 00       ;
                JSL CODE_14D345             ; $11:8CC9: 22 45 D3 14 ;
CODE_118CCD:    JSL CODE_118014             ; $11:8CCD: 22 14 80 11 ;
                JSL CODE_14D3A4             ; $11:8CD1: 22 A4 D3 14 ;
                LDA $022B                   ; $11:8CD5: AD 2B 02    ;
                CMP #$80                    ; $11:8CD8: C9 80       ;
                BCC CODE_118CCD             ; $11:8CDA: 90 F1       ;
                STZ $023A                   ; $11:8CDC: 9C 3A 02    ;
                STZ $FE                     ; $11:8CDF: 64 FE       ;
                JSL CODE_14D4C4             ; $11:8CE1: 22 C4 D4 14 ;
                LDY $0635               ; $11:8CE5: AC 35 06    ; \ Store original world number into $0405.
                STY $0405               ; $11:8CE8: 8C 05 04    ; /
                LDA.w DATA_11CDB4,y     ; $11:8CEB: B9 B4 CD    ; \ Get new world number to warp to.       
                STA $0635               ; $11:8CEE: 8D 35 06    ; /
                TAY                     ; $11:8CF1: A8          ; Into Y.
                LDX $8F                 ; $11:8CF2: A6 8F       ; Player number into X.
                LDA.w DATA_11C9B4,y     ; $11:8CF4: B9 B4 C9    ; \ Get appropiate level number. (x-1)
                STA $0533               ; $11:8CF7: 8D 33 05    ;  |
                STA $04E8               ; $11:8CFA: 8D E8 04    ; /
                TYA                     ; $11:8CFD: 98          ; World number to warp to into Y.
                SEC                     ; $11:8CFE: 38          ; \ Subtract 3 from the value. (There are no 'World X' graphics for Worlds 1-3)
                SBC #$03                ; $11:8CFF: E9 03       ;  |
                ASL A                   ; $11:8D01: 0A          ;  | Multiply by 2 since we're going to read from a 16-bit table.
                TAY                     ; $11:8D02: A8          ; / And back into Y again.
                REP #$20                ; $11:8D03: C2 20       ; A = 16-bit.
                LDA.w DATA_11CDBB,y     ; $11:8D05: B9 BB CD    ; \ $11BD-$11C2 = Tilemap of number in 'World X'.
                STA $11BD               ; $11:8D08: 8D BD 11    ;  | TTTTTTTT YXPCCCTT format.
                LDA.w DATA_11CDC3,y     ; $11:8D0B: B9 C3 CD    ;  |
                STA $11BF               ; $11:8D0E: 8D BF 11    ;  |
                LDA.w DATA_11CDCB,y     ; $11:8D11: B9 CB CD    ;  |   
                STA $11C1               ; $11:8D14: 8D C1 11    ; /
                SEP #$20                ; $11:8D17: E2 20       ; A = 8-bit.
                JSL CODE_118009             ; $11:8D19: 22 09 80 11 ;
                JSL CODE_14D194             ; $11:8D1D: 22 94 D1 14 ;
                JSL CODE_138A68             ; $11:8D21: 22 68 8A 13 ;
                JSL CODE_138846             ; $11:8D25: 22 46 88 13 ;
                JSL CODE_138A92             ; $11:8D29: 22 92 8A 13 ;
                STZ $0217                   ; $11:8D2D: 9C 17 02    ;
                JSL CODE_14F92E             ; $11:8D30: 22 2E F9 14 ;
                LDA #$01                    ; $11:8D34: A9 01       ;
                STA $0201                   ; $11:8D36: 8D 01 02    ;
                STA $0207                   ; $11:8D39: 8D 07 02    ;
                JSL CODE_14F953             ; $11:8D3C: 22 53 F9 14 ;
                JSL CODE_13DE8C             ; $11:8D40: 22 8C DE 13 ;
                LDA #$01                    ; $11:8D44: A9 01       ;
                STA $0243                   ; $11:8D46: 8D 43 02    ;
                JSR CODE_1190DF             ; $11:8D49: 20 DF 90    ;
                JSL CODE_14D84E             ; $11:8D4C: 22 4E D8 14 ;
                LDA #$01                    ; $11:8D50: A9 01       ;
                STA $11                     ; $11:8D52: 85 11       ;
                JSL CODE_14F908             ; $11:8D54: 22 08 F9 14 ;
                LDA #$04                    ; $11:8D58: A9 04       ;
                STA $11                     ; $11:8D5A: 85 11       ;
                JSL CODE_14F908             ; $11:8D5C: 22 08 F9 14 ;
                LDA #$12                    ; $11:8D60: A9 12       ;
                STA $11                     ; $11:8D62: 85 11       ;
                LDA #$0F                ; $11:8D64: A9 0F       ; \ Bonus game music.
                STA $1DE2               ; $11:8D66: 8D E2 1D    ; /
                LDX #$01                    ; $11:8D69: A2 01       ;
                JSL CODE_14D345             ; $11:8D6B: 22 45 D3 14 ;
CODE_118D6F:    JSL CODE_118014             ; $11:8D6F: 22 14 80 11 ;
                JSL CODE_14D3A4             ; $11:8D73: 22 A4 D3 14 ;
                LDA $022B                   ; $11:8D77: AD 2B 02    ;
                CMP #$F0                    ; $11:8D7A: C9 F0       ;
                BCC CODE_118D6F             ; $11:8D7C: 90 F1       ;
                STZ $023A                   ; $11:8D7E: 9C 3A 02    ;
                JSL CODE_14D4C4             ; $11:8D81: 22 C4 D4 14 ;
                LDA #$00                    ; $11:8D85: A9 00       ;
                JSL CODE_14D78D             ; $11:8D87: 22 8D D7 14 ;
                JSL CODE_14F92E             ; $11:8D8B: 22 2E F9 14 ;
                JSR CODE_11904D             ; $11:8D8F: 20 4D 90    ;
                JSR CODE_11883A             ; $11:8D92: 20 3A 88    ;
                LDA #$13                    ; $11:8D95: A9 13       ;
                STA $0243                   ; $11:8D97: 8D 43 02    ;
                JMP CODE_118192         ; $11:8D9A: 4C 92 81    ;
           
CODE_118D9D:    LDA #$80                    ; $11:8D9D: A9 80       ;
                STA $1DE2                   ; $11:8D9F: 8D E2 1D    ;
                LDX $8F                 ; $11:8DA2: A6 8F       ; \ Indexed by character.
                LDA $062D,x             ; $11:8DA4: BD 2D 06    ;  | Check if 'Amount of levels completed', indexed by character...
                CMP #$63                ; $11:8DA7: C9 63       ;  | Is 99.
                BEQ CODE_118DAE         ; $11:8DA9: F0 03       ; / If so, branch, don't increment further.
                INC $062D,x             ; $11:8DAB: FE 2D 06    ;| Otherwise, increment amount of levels cleared.
CODE_118DAE:    LDA $0533               ; $11:8DAE: AD 33 05    ; \ Level to trigger ending sequence = 7-2.
                CMP #$13                ; $11:8DB1: C9 13       ;  |
                BNE CODE_118DB8         ; $11:8DB3: D0 03       ; / If not 7-2, branch.
                JMP CODE_11905A         ; $11:8DB5: 4C 5A 90    ;
           
CODE_118DB8:    STY $06C2                   ; $11:8DB8: 8C C2 06    ;
                STZ $0217                   ; $11:8DBB: 9C 17 02    ;
                JSR CODE_118AD2             ; $11:8DBE: 20 D2 8A    ;
                JSL CODE_118009             ; $11:8DC1: 22 09 80 11 ;
                JSL CODE_14F9F0         ; $11:8DC5: 22 F0 F9 14 ; Clear all OAM.
                JSL CODE_14F953             ; $11:8DC9: 22 53 F9 14 ;
                JSR CODE_1190DF             ; $11:8DCD: 20 DF 90    ;
                JSL CODE_14D194             ; $11:8DD0: 22 94 D1 14 ;
                JSL CODE_118014             ; $11:8DD4: 22 14 80 11 ;
                LDA #$00                    ; $11:8DD8: A9 00       ;
                JSL CODE_14D78D             ; $11:8DDA: 22 8D D7 14 ;
                JSL CODE_14F92E             ; $11:8DDE: 22 2E F9 14 ;
                JSL CODE_138A68             ; $11:8DE2: 22 68 8A 13 ;
                JSL CODE_138846             ; $11:8DE6: 22 46 88 13 ;
                STZ $0D08                   ; $11:8DEA: 9C 08 0D    ;
                LDY $0635                   ; $11:8DED: AC 35 06    ;
                LDA.w DATA_11C9B4+1,y                   ; $11:8DF0: B9 B5 C9    ;
                SEC                         ; $11:8DF3: 38          ;
                SBC #$01                    ; $11:8DF4: E9 01       ;
                CMP $0533                   ; $11:8DF6: CD 33 05    ;
                BNE CODE_118E03             ; $11:8DF9: D0 08       ;
                INC $0635                   ; $11:8DFB: EE 35 06    ;
                INC $0D08                   ; $11:8DFE: EE 08 0D    ;
                BRA CODE_118E23             ; $11:8E01: 80 20       ;

CODE_118E03:    JSL CODE_14E30F             ; $11:8E03: 22 0F E3 14 ;
                LDA $0533                   ; $11:8E07: AD 33 05    ;
                LDY #$00                    ; $11:8E0A: A0 00       ;
CODE_118E0C:    INY                         ; $11:8E0C: C8          ;
                CMP.w DATA_11C9B4,y                 ; $11:8E0D: D9 B4 C9    ;
                BCS CODE_118E0C                     ; $11:8E10: B0 FA       ;
                DEY                         ; $11:8E12: 88          ;
                STY $0635                   ; $11:8E13: 8C 35 06    ;
                LDY $0635                   ; $11:8E16: AC 35 06    ;
                LDA $0533                   ; $11:8E19: AD 33 05    ;
                SEC                     ; $11:8E1C: 38          ;
                
                SBC.w DATA_11C9B4,y                 ; $11:8E1D: F9 B4 C9    ;
                STA $0629                   ; $11:8E20: 8D 29 06    ;
CODE_118E23:    JSL CODE_14D84E             ; $11:8E23: 22 4E D8 14 ;
                STZ $0796                   ; $11:8E27: 9C 96 07    ;
                LDA #$01                    ; $11:8E2A: A9 01       ;
                STA $11                     ; $11:8E2C: 85 11       ;
                JSL CODE_14F908             ; $11:8E2E: 22 08 F9 14 ;
                LDA #$17                    ; $11:8E32: A9 17       ;
                STA $11                     ; $11:8E34: 85 11       ;
                LDA #$40                    ; $11:8E36: A9 40       ;
                STA $0100                   ; $11:8E38: 8D 00 01    ;
                JSR CODE_1190DF             ; $11:8E3B: 20 DF 90    ;
                JSL CODE_118014             ; $11:8E3E: 22 14 80 11 ;
                LDA #$C0                    ; $11:8E42: A9 C0       ;
                STA $0100                   ; $11:8E44: 8D 00 01    ;
                JSR CODE_1190A2             ; $11:8E47: 20 A2 90    ;
                STZ $0789                   ; $11:8E4A: 9C 89 07    ;
                JSR CODE_1190E5             ; $11:8E4D: 20 E5 90    ;
                LDA #$0C                ; $11:8E50: A9 0C       ; \ Bonus game music.
                STA $1DE2               ; $11:8E52: 8D E2 1D    ; /
                LDA $062B                   ; $11:8E55: AD 2B 06    ;
                BNE CODE_118E5D             ; $11:8E58: D0 03       ;
                JMP CODE_119015         ; $11:8E5A: 4C 15 90    ;
           
CODE_118E5D:    JSL CODE_14CD7D             ; $11:8E5D: 22 7D CD 14 ;
                JSL CODE_118014             ; $11:8E61: 22 14 80 11 ;
                STZ $0D13                   ; $11:8E65: 9C 13 0D    ;
                INC $0789                   ; $11:8E68: EE 89 07    ;
                JSR CODE_118AFE             ; $11:8E6B: 20 FE 8A    ;
CODE_118E6E:    LDA $062B                   ; $11:8E6E: AD 2B 06    ;
                BNE CODE_118EBE             ; $11:8E71: D0 4B       ;
CODE_118E73:    LDX #$5C                    ; $11:8E73: A2 5C       ;
                LDA #$00                    ; $11:8E75: A9 00       ;
CODE_118E77:    STA $0000,x                 ; $11:8E77: 9D 00 00    ;
                DEX                         ; $11:8E7A: CA          ;
                CPX #$28                    ; $11:8E7B: E0 28       ;
                BNE CODE_118E77             ; $11:8E7D: D0 F8       ;
                LDA $0D08                   ; $11:8E7F: AD 08 0D    ;
                BEQ CODE_118E8F             ; $11:8E82: F0 0B       ;
                JSR CODE_118834             ; $11:8E84: 20 34 88    ;
                LDA #$FF                    ; $11:8E87: A9 FF       ;
                STA $0547                   ; $11:8E89: 8D 47 05    ;
                JMP CODE_118172         ; $11:8E8C: 4C 72 81    ;
           
CODE_118E8F:    LDA $0533                   ; $11:8E8F: AD 33 05    ;
                STA $04E8                   ; $11:8E92: 8D E8 04    ;
                LDA $0534                   ; $11:8E95: AD 34 05    ;
                STA $04E9                   ; $11:8E98: 8D E9 04    ;
                LDA $0535                   ; $11:8E9B: AD 35 05    ;
                STA $04EA                   ; $11:8E9E: 8D EA 04    ;
                LDY #$00                    ; $11:8EA1: A0 00       ;
                STY $04E7                   ; $11:8EA3: 8C E7 04    ;
                STY $0536                   ; $11:8EA6: 8C 36 05    ;
                STY $04EB                   ; $11:8EA9: 8C EB 04    ;
                DEY                         ; $11:8EAC: 88          ;
                STY $0547                   ; $11:8EAD: 8C 47 05    ;
                JSR CODE_118834             ; $11:8EB0: 20 34 88    ;
                JSL CODE_14F9F0         ; $11:8EB3: 22 F0 F9 14 ; Clear all OAM.
                JMP CODE_118192         ; $11:8EB7: 4C 92 81    ;
           
DATA_118EBA:    db $07,$0A,$0E,$12                              ;
 
CODE_118EBE:    DEC $062B                           ; $11:8EBE: CE 2B 06    ;
                STZ $0793               ; $11:8EC1: 06 9C       ;
                STZ $078A               ; $11:8EC4: 9C 8A 07    ;
                STZ $079A                   ; $11:8EC7: 9C 9A 07    ;
                JSL CODE_118014             ; $11:8ECA: 22 14 80 11 ;
                JSR CODE_1190ED             ; $11:8ECE: 20 ED 90    ;
                JSL CODE_14CD50             ; $11:8ED1: 22 50 CD 14 ;
CODE_118ED5:    JSL CODE_118014             ; $11:8ED5: 22 14 80 11 ;
                JSL CODE_14F9F0         ; $11:8ED9: 22 F0 F9 14 ; Clear all OAM.
                INC $10                     ; $11:8EDD: E6 10       ;
                INC $079A                   ; $11:8EDF: EE 9A 07    ;
                LDA $3D                     ; $11:8EE2: A5 3D       ;
                AND #$70                    ; $11:8EE4: 29 70       ;
                CMP #$40                    ; $11:8EE6: C9 40       ;
                BCS CODE_118EF1                     ; $11:8EE8: B0 07       ;
                EOR #$30                    ; $11:8EEA: 49 30       ;
                LSR A                       ; $11:8EEC: 4A          ;
                LSR A                       ; $11:8EED: 4A          ;
                LSR A                       ; $11:8EEE: 4A          ;
                LSR A                       ; $11:8EEF: 4A          ;
                INC A                       ; $11:8EF0: 1A          ;
CODE_118EF1:    AND #$03                    ; $11:8EF1: 29 03       ;
                TAX                         ; $11:8EF3: AA          ;
                LDA $079A                   ; $11:8EF4: AD 9A 07    ;
                CMP.l DATA_118EBA,x                 ; $11:8EF7: DF BA 8E 11 ;
                BNE CODE_118F05             ; $11:8EFB: D0 08       ;
                LDA #$42                    ; $11:8EFD: A9 42       ;
                STA $1DE0                   ; $11:8EFF: 8D E0 1D    ;
                STZ $079A                   ; $11:8F02: 9C 9A 07    ;
CODE_118F05:    JSL CODE_14CDA7             ; $11:8F05: 22 A7 CD 14 ;
                JSL CODE_14CE08             ; $11:8F09: 22 08 CE 14 ;
                JSL CODE_14CDD4             ; $11:8F0D: 22 D4 CD 14 ;
                JSL CODE_14CF46             ; $11:8F11: 22 46 CF 14 ;
                STZ $33                     ; $11:8F15: 64 33       ;
                JSL CODE_14D012             ; $11:8F17: 22 12 D0 14 ;
                LDA.w DATA_11CAF5                   ; $11:8F1B: AD F5 CA    ;
                STA $11                     ; $11:8F1E: 85 11       ;
                INC $06                     ; $11:8F20: E6 06       ;
                LDA $29                     ; $11:8F22: A5 29       ;
                ORA $2A                     ; $11:8F24: 05 2A       ;
                ORA $2B                     ; $11:8F26: 05 2B       ;
                BNE CODE_118ED5             ; $11:8F28: D0 AB       ;
                LDA #$01                    ; $11:8F2A: A9 01       ;
                STA $33                     ; $11:8F2C: 85 33       ;
                JSL CODE_14D021             ; $11:8F2E: 22 21 D0 14 ;
                LDA #$10                    ; $11:8F32: A9 10       ;
                STA $11                     ; $11:8F34: 85 11       ;
                JSL CODE_118014             ; $11:8F36: 22 14 80 11 ;
                LDY #$00                    ; $11:8F3A: A0 00       ;
                LDX $2F                     ; $11:8F3C: A6 2F       ;
                BNE CODE_118F61             ; $11:8F3E: D0 21       ;
                INY                         ; $11:8F40: C8          ;
                LDA $30                     ; $11:8F41: A5 30       ;
                BNE CODE_118F4D             ; $11:8F43: D0 08       ;
                INY                         ; $11:8F45: C8          ;
                LDA $31                     ; $11:8F46: A5 31       ;
                BNE CODE_118F4D             ; $11:8F48: D0 03       ;
                INY                         ; $11:8F4A: C8          ;
                BRA CODE_118F71             ; $11:8F4B: 80 24       ;

CODE_118F4D:    LDA $30                     ; $11:8F4D: A5 30       ;
                CMP $31                     ; $11:8F4F: C5 31       ;
                BNE CODE_118F61             ; $11:8F51: D0 0E       ;
                CMP #$04                    ; $11:8F53: C9 04       ;
                BNE CODE_118F61             ; $11:8F55: D0 0A       ;
                LDA $0796                   ; $11:8F57: AD 96 07    ;
                BNE CODE_118F61             ; $11:8F5A: D0 05       ;
                LDA #$01                    ; $11:8F5C: A9 01       ;
                STA $0796                   ; $11:8F5E: 8D 96 07    ;
CODE_118F61:    CPX $30                     ; $11:8F61: E4 30       ;
                BNE CODE_118F71             ; $11:8F63: D0 0C       ;
                CPX $31                     ; $11:8F65: E4 31       ;
                BNE CODE_118F71             ; $11:8F67: D0 08       ;
                INY                         ; $11:8F69: C8          ;
                INY                         ; $11:8F6A: C8          ;
                CPX #$04                    ; $11:8F6B: E0 04       ;
                BNE CODE_118F71             ; $11:8F6D: D0 02       ;
                LDY #$0A                    ; $11:8F6F: A0 0A       ;
CODE_118F71:    TYA                         ; $11:8F71: 98          ;
                CLC                         ; $11:8F72: 18          ;
                ADC $04EE                   ; $11:8F73: 6D EE 04    ;
                BCC CODE_118F7A             ; $11:8F76: 90 02       ;
                LDA #$FF                    ; $11:8F78: A9 FF       ;
CODE_118F7A:    CMP #$64                    ; $11:8F7A: C9 64       ;
                BCC CODE_118F80             ; $11:8F7C: 90 02       ;
                LDA #$63                    ; $11:8F7E: A9 63       ;
CODE_118F80:    STA $04EE                   ; $11:8F80: 8D EE 04    ;
                TYA                         ; $11:8F83: 98          ;
                BEQ CODE_118FE5             ; $11:8F84: F0 5F       ;
                JSR CODE_119155             ; $11:8F86: 20 55 91    ;
                STA $0698                   ; $11:8F89: 8D 98 06    ;
                STY $0696                   ; $11:8F8C: 8C 96 06    ;
                LDA #$15                    ; $11:8F8F: A9 15       ;
                STA $0699                   ; $11:8F91: 8D 99 06    ;
                CPY #$BF                    ; $11:8F94: C0 BF       ;
                BNE CODE_118F9F             ; $11:8F96: D0 07       ;
                LDA #$BD                    ; $11:8F98: A9 BD       ;
                STA $0696                   ; $11:8F9A: 8D 96 06    ;
                LDA #$09                    ; $11:8F9D: A9 09       ;
CODE_118F9F:    STA $0697                   ; $11:8F9F: 8D 97 06    ;
                LDA #$10                ; $11:8FA2: A9 10       ; \ Bonus get music.
                STA $1DE2               ; $11:8FA4: 8D E2 1D    ; /
                LDA #$A0                    ; $11:8FA7: A9 A0       ;
                STA $56                     ; $11:8FA9: 85 56       ;
                JSL CODE_118014             ; $11:8FAB: 22 14 80 11 ;
                JSR CODE_1190ED             ; $11:8FAF: 20 ED 90    ;
CODE_118FB2:    JSL CODE_118014             ; $11:8FB2: 22 14 80 11 ;
                STZ $33                     ; $11:8FB6: 64 33       ;
                LDA #$01                    ; $11:8FB8: A9 01       ;
                STA $0793                   ; $11:8FBA: 8D 93 07    ;
                JSL CODE_14D021             ; $11:8FBD: 22 21 D0 14 ;
                JSL CODE_14D0C7             ; $11:8FC1: 22 C7 D0 14 ;
                LDA $56                     ; $11:8FC5: A5 56       ;
                LSR A                       ; $11:8FC7: 4A          ;
                LSR A                       ; $11:8FC8: 4A          ;
                LSR A                       ; $11:8FC9: 4A          ;
                LSR A                       ; $11:8FCA: 4A          ;
                AND #$01                    ; $11:8FCB: 29 01       ;
                TAY                         ; $11:8FCD: A8          ;
                LDA.w DATA_11CAF9,y                 ; $11:8FCE: B9 F9 CA    ;
                STA $11                     ; $11:8FD1: 85 11       ;
                DEC $56                     ; $11:8FD3: C6 56       ;
                BNE CODE_118FB2             ; $11:8FD5: D0 DB       ;
                LDA #$01                    ; $11:8FD7: A9 01       ;
                STA $33                     ; $11:8FD9: 85 33       ;
                JSL CODE_14D021             ; $11:8FDB: 22 21 D0 14 ;
                JSL CODE_14D0C7             ; $11:8FDF: 22 C7 D0 14 ;
                BRA CODE_118FF4             ; $11:8FE3: 80 0F       ;

CODE_118FE5:    LDA #$09                ; $11:8FE5: A9 09       ; \ Death music.
                STA $1DE2               ; $11:8FE7: 8D E2 1D    ; /
                JSL CODE_118014             ; $11:8FEA: 22 14 80 11 ;
                JSR CODE_1190ED             ; $11:8FEE: 20 ED 90    ;
                JSR CODE_11904D             ; $11:8FF1: 20 4D 90    ;
CODE_118FF4:    LDA $0796                   ; $11:8FF4: AD 96 07    ;
                CMP #$01                    ; $11:8FF7: C9 01       ;
                BNE CODE_118FFF             ; $11:8FF9: D0 04       ;
                JSL CODE_15A2E6             ; $11:8FFB: 22 E6 A2 15 ;
CODE_118FFF:    LDA #$11                    ; $11:8FFF: A9 11       ;
                STA $11                     ; $11:9001: 85 11       ;
                JSL CODE_118014             ; $11:9003: 22 14 80 11 ;
                JMP CODE_118E6E         ; $11:9007: 4C 6E 8E    ;
           
                LDA $0210                   ; $11:900A: AD 10 02    ;
                LSR A                       ; $11:900D: 4A          ;
                LSR A                       ; $11:900E: 4A          ;
                LSR A                       ; $11:900F: 4A          ;
                LSR A                       ; $11:9010: 4A          ;
                AND #$01                    ; $11:9011: 29 01       ;
                TAY                         ; $11:9013: A8          ;
                RTS                     ; $11:9014: 60          ;
                       
CODE_119015:    STZ $0D13                   ; $11:9015: 9C 13 0D    ;
                JSR CODE_118AFE             ; $11:9018: 20 FE 8A    ;
                JSR CODE_119049             ; $11:901B: 20 49 90    ;
                LDA #$09                ; $11:901E: A9 09       ; \ Death music.
                STA $1DE2               ; $11:9020: 8D E2 1D    ; /
                LDA #$0A                    ; $11:9023: A9 0A       ;
                STA $0782                   ; $11:9025: 8D 82 07    ;
CODE_119028:    LDA $0782                   ; $11:9028: AD 82 07    ;
                AND #$01                    ; $11:902B: 29 01       ;
                TAY                         ; $11:902D: A8          ;
                LDA.w DATA_11CAF7,y                 ; $11:902E: B9 F7 CA    ;
                STA $11                     ; $11:9031: 85 11       ;
                LDA #$0A                    ; $11:9033: A9 0A       ;
                STA $0783                   ; $11:9035: 8D 83 07    ;
CODE_119038:    JSL CODE_118014             ; $11:9038: 22 14 80 11 ;
                DEC $0783                   ; $11:903C: CE 83 07    ;
                BNE CODE_119038             ; $11:903F: D0 F7       ;
                DEC $0782                   ; $11:9041: CE 82 07    ;
                BPL CODE_119028             ; $11:9044: 10 E2       ;
                JMP CODE_118E73         ; $11:9046: 4C 73 8E    ;
           
CODE_119049:    LDA #$50                    ; $11:9049: A9 50       ;
                BRA CODE_11904F             ; $11:904B: 80 02       ;

CODE_11904D:    LDA #$A0                    ; $11:904D: A9 A0       ;
CODE_11904F:    STA $07                     ; $11:904F: 85 07       ;
CODE_119051:    JSL CODE_118010             ; $11:9051: 22 10 80 11 ;
                DEC $07                     ; $11:9055: C6 07       ;
                BNE CODE_119051             ; $11:9057: D0 F8       ;
                RTS                     ; $11:9059: 60          ;
                       
CODE_11905A:    STZ $0607                   ; $11:905A: 9C 07 06    ;
                LDA #$01                    ; $11:905D: A9 01       ;
                STA $0217                   ; $11:905F: 8D 17 02    ;
                JSL CODE_12920C             ; $11:9062: 22 0C 92 12 ;
                JSL CODE_118009             ; $11:9066: 22 09 80 11 ;
                STZ $0217                   ; $11:906A: 9C 17 02    ;
                JSR CODE_1190A2             ; $11:906D: 20 A2 90    ;
                JSL CODE_1388A0             ; $11:9070: 22 A0 88 13 ;
                JSR CODE_1190DF             ; $11:9074: 20 DF 90    ;
                JSL CODE_118014             ; $11:9077: 22 14 80 11 ;
                INC $06BF                   ; $11:907B: EE BF 06    ;
                STZ $023B                   ; $11:907E: 9C 3B 02    ;
                STZ $023C                   ; $11:9081: 9C 3C 02    ;
                JSL CODE_129432             ; $11:9084: 22 32 94 12 ;
                JSL CODE_118009             ; $11:9088: 22 09 80 11 ;
                JSR CODE_1190A2             ; $11:908C: 20 A2 90    ;
                JSL CODE_1388F5         ; $11:908F: 22 F5 88 13 ; Load layer and sprite graphics for credits.
                JSR CODE_1190DF             ; $11:9093: 20 DF 90    ;
                JSL CODE_118014             ; $11:9096: 22 14 80 11 ;
                INC $06BF                   ; $11:909A: EE BF 06    ;
                JSL CODE_13E731             ; $11:909D: 22 31 E7 13 ;
                RTS                     ; $11:90A1: 60          ;
                       
CODE_1190A2:    LDA #$30                    ; $11:90A2: A9 30       ;
                STA $FF                     ; $11:90A4: 85 FF       ;
                STZ $4200                   ; $11:90A6: 9C 00 42    ;
                RTS                     ; $11:90A9: 60          ;
                       
                JSR CODE_118AD2             ; $11:90AA: 20 D2 8A    ;
                LDA #$80                    ; $11:90AD: A9 80       ;
                STA $FE                     ; $11:90AF: 85 FE       ;
                JSR CODE_118791             ; $11:90B1: 20 91 87    ;
                JSL CODE_118014             ; $11:90B4: 22 14 80 11 ;
                LDA #$04                    ; $11:90B8: A9 04       ;
                STA $11                     ; $11:90BA: 85 11       ;
                JSL CODE_118014             ; $11:90BC: 22 14 80 11 ;
                LDX $0635                   ; $11:90C0: AE 35 06    ;
                LDY $0533                   ; $11:90C3: AC 33 05    ;
                JSL CODE_1187B6             ; $11:90C6: 22 B6 87 11 ;
                JSL CODE_138CF2             ; $11:90CA: 22 F2 8C 13 ;
                JSL CODE_118014             ; $11:90CE: 22 14 80 11 ;
                JSL CODE_138D25             ; $11:90D2: 22 25 8D 13 ;
                LDA $0596                   ; $11:90D6: AD 96 05    ;
                STA $11                     ; $11:90D9: 85 11       ;
                JSL CODE_118014             ; $11:90DB: 22 14 80 11 ;
CODE_1190DF:    LDA #$81                    ; $11:90DF: A9 81       ;
                STA $4200                   ; $11:90E1: 8D 00 42    ;
                RTS                     ; $11:90E4: 60          ;
                       
CODE_1190E5:    JSL CODE_14F92E             ; $11:90E5: 22 2E F9 14 ;
                JSL CODE_13DE8C             ; $11:90E9: 22 8C DE 13 ;
CODE_1190ED:    JSL CODE_138D56             ; $11:90ED: 22 56 8D 13 ;
                LDY $04EE                   ; $11:90F1: AC EE 04    ;
                TYA                         ; $11:90F4: 98          ;
                JSR CODE_119155             ; $11:90F5: 20 55 91    ;
                STY $142A                   ; $11:90F8: 8C 2A 14    ;
                STA $142C                   ; $11:90FB: 8D 2C 14    ;
                LDA #$15                    ; $11:90FE: A9 15       ;
                STA $142D                   ; $11:9100: 8D 2D 14    ;
                CPY #$BF                    ; $11:9103: C0 BF       ;
                BNE CODE_11910E             ; $11:9105: D0 07       ;
                LDA #$BD                    ; $11:9107: A9 BD       ;
                STA $142A                   ; $11:9109: 8D 2A 14    ;
                LDA #$09                    ; $11:910C: A9 09       ;
CODE_11910E:    STA $142B                   ; $11:910E: 8D 2B 14    ;
                LDA $062B                   ; $11:9111: AD 2B 06    ;
                JSR CODE_119155             ; $11:9114: 20 55 91    ;
                CPY #$BF                    ; $11:9117: C0 BF       ;
                BNE CODE_11911E             ; $11:9119: D0 03       ;
                TAX                         ; $11:911B: AA          ;
                TYA                         ; $11:911C: 98          ;
                TXY                         ; $11:911D: 9B          ;
CODE_11911E:    STY $1408                   ; $11:911E: 8C 08 14    ;
                STA $140A                   ; $11:9121: 8D 0A 14    ;
                LDX #$15                    ; $11:9124: A2 15       ;
                CMP #$BF                    ; $11:9126: C9 BF       ;
                BNE CODE_119131             ; $11:9128: D0 07       ;
                LDA #$BD                    ; $11:912A: A9 BD       ;
                STA $140A                   ; $11:912C: 8D 0A 14    ;
                LDX #$09                    ; $11:912F: A2 09       ;
CODE_119131:    STX $140B                   ; $11:9131: 8E 0B 14    ;
                LDA #$15                    ; $11:9134: A9 15       ;
                CPY #$BF                    ; $11:9136: C0 BF       ;
                BNE CODE_119141             ; $11:9138: D0 07       ;
                LDA #$BD                    ; $11:913A: A9 BD       ;
                STA $1408                   ; $11:913C: 8D 08 14    ;
                LDA #$09                    ; $11:913F: A9 09       ;
CODE_119141:    STA $1409                   ; $11:9141: 8D 09 14    ;
                LDA #$01                    ; $11:9144: A9 01       ;
                STA $11                     ; $11:9146: 85 11       ;
                LDA #$40                    ; $11:9148: A9 40       ;
                STA $0100                   ; $11:914A: 8D 00 01    ;
                JSR CODE_1190DF             ; $11:914D: 20 DF 90    ;
                JSL CODE_118014             ; $11:9150: 22 14 80 11 ;
                RTS                     ; $11:9154: 60          ;
                       
CODE_119155:    LDY #$C0                    ; $11:9155: A0 C0       ;
CODE_119157:    CMP #$0A                    ; $11:9157: C9 0A       ;
                BCC CODE_119161             ; $11:9159: 90 06       ;
                SBC #$0A                    ; $11:915B: E9 0A       ;
                INY                         ; $11:915D: C8          ;
                JMP CODE_119157         ; $11:915E: 4C 57 91    ;
           
CODE_119161:    ORA #$C0                    ; $11:9161: 09 C0       ;
                CPY #$C0                    ; $11:9163: C0 C0       ;
                BNE CODE_119169             ; $11:9165: D0 02       ;
                LDY #$BF                    ; $11:9167: A0 BF       ;
CODE_119169:    RTS                     ; $11:9169: 60          ;
                      
                LDY #$D0                    ; $11:916A: A0 D0       ;
CODE_11916C:    CMP #$0A                    ; $11:916C: C9 0A       ;
                BCC CODE_119176             ; $11:916E: 90 06       ;
                SBC #$0A                    ; $11:9170: E9 0A       ;
                INY                         ; $11:9172: C8          ;
                JMP CODE_11916C         ; $11:9173: 4C 6C 91    ;
           
CODE_119176:    ORA #$D0                    ; $11:9176: 09 D0       ;
                CPY #$D0                    ; $11:9178: C0 D0       ;
                BNE CODE_11917E             ; $11:917A: D0 02       ;
                LDY #$FB                    ; $11:917C: A0 FB       ;
CODE_11917E:    RTS                     ; $11:917E: 60          ;
                       
CODE_11917F:    LDY #$80                    ; $11:917F: A0 80       ;
CODE_119181:    CMP #$0A                    ; $11:9181: C9 0A       ;
                BCC CODE_11918B             ; $11:9183: 90 06       ;
                SBC #$0A                    ; $11:9185: E9 0A       ;
                INY                         ; $11:9187: C8          ;
                JMP CODE_119181         ; $11:9188: 4C 81 91    ;
           
CODE_11918B:    ORA #$80                    ; $11:918B: 09 80       ;
                CPY #$80                    ; $11:918D: C0 80       ;
                BNE CODE_119193             ; $11:918F: D0 02       ;
                LDY #$BF                    ; $11:9191: A0 BF       ;
CODE_119193:    RTS                     ; $11:9193: 60          ;
                       
CODE_119194:    LDA $FE                     ; $11:9194: A5 FE       ;
                STA $2100                   ; $11:9196: 8D 00 21    ;
                LDA $FF                     ; $11:9199: A5 FF       ;
                AND #$80                    ; $11:919B: 29 80       ;
                ORA #$01                    ; $11:919D: 09 01       ;
                STA $4200                   ; $11:919F: 8D 00 42    ;
                DEC $0154                   ; $11:91A2: CE 54 01    ;
                JMP CODE_11925B         ; $11:91A5: 4C 5B 92    ;
           
CODE_1191A8:    JSR CODE_1194C7             ; $11:91A8: 20 C7 94    ;
                STZ $0206                   ; $11:91AB: 9C 06 02    ;
                STZ $0207                   ; $11:91AE: 9C 07 02    ;
                STZ $04C6                   ; $11:91B1: 9C C6 04    ;
                STZ $04C7                   ; $11:91B4: 9C C7 04    ;
                JMP CODE_11922C         ; $11:91B7: 4C 2C 92    ;
           
CODE_1191BA:    LDA $FE                     ; $11:91BA: A5 FE       ;
                STA $2100                   ; $11:91BC: 8D 00 21    ;
                JMP CODE_11925B         ; $11:91BF: 4C 5B 92    ;
           
CODE_1191C2:    PHB                         ; $11:91C2: 8B          ;
                PHK                         ; $11:91C3: 4B          ;
                PLB                         ; $11:91C4: AB          ;
                LDA $4210                   ; $11:91C5: AD 10 42    ;
                LDA #$80                    ; $11:91C8: A9 80       ;
                STA $2100                   ; $11:91CA: 8D 00 21    ;
                STZ $420C                   ; $11:91CD: 9C 0C 42    ;
                JSL CODE_138B2A             ; $11:91D0: 22 2A 8B 13 ;
                LDA $0154                   ; $11:91D4: AD 54 01    ;
                BNE CODE_1191BA             ; $11:91D7: D0 E1       ;
                JSR CODE_119321             ; $11:91D9: 20 21 93    ;
                JSL CODE_138A10             ; $11:91DC: 22 10 8A 13 ;
                BIT $0100                   ; $11:91E0: 2C 00 01    ;
                BPL CODE_1191A8             ; $11:91E3: 10 C3       ;
                BVS CODE_1191E9             ; $11:91E5: 70 02       ;
                BRA CODE_119194             ; $11:91E7: 80 AB       ;

CODE_1191E9:    LDA $EB                     ; $11:91E9: A5 EB       ;
                BEQ CODE_119201             ; $11:91EB: F0 14       ;
                LDA $051E                   ; $11:91ED: AD 1E 05    ;
                BEQ CODE_119201             ; $11:91F0: F0 0F       ;
                STZ $051E                   ; $11:91F2: 9C 1E 05    ;
                LDA $00D2                   ; $11:91F5: AD D2 00    ;
                STA $00                     ; $11:91F8: 85 00       ;
                LDA $00D1                   ; $11:91FA: AD D1 00    ;
                STA $01                     ; $11:91FD: 85 01       ;
                STZ $02                     ; $11:91FF: 64 02       ;
CODE_119201:    JSR CODE_1194C7             ; $11:9201: 20 C7 94    ;
                JSR CODE_11945A             ; $11:9204: 20 5A 94    ;
                JSL CODE_158419             ; $11:9207: 22 19 84 15 ;
                LDA #$B0                    ; $11:920B: A9 B0       ;
                ORA $0201                   ; $11:920D: 0D 01 02    ;
                LDY $EB                     ; $11:9210: A4 EB       ;
                BNE CODE_119219             ; $11:9212: D0 05       ;
                AND #$FE                    ; $11:9214: 29 FE       ;
                ORA $0207                   ; $11:9216: 0D 07 02    ;
CODE_119219:    AND #$80                    ; $11:9219: 29 80       ;
                STA $FF                     ; $11:921B: 85 FF       ;
                INC $10                     ; $11:921D: E6 10       ;
                INC $0254                   ; $11:921F: EE 54 02    ;
                LDA $0254                   ; $11:9222: AD 54 02    ;
                CMP #$06                    ; $11:9225: C9 06       ;
                BCC CODE_11922C             ; $11:9227: 90 03       ;
                STZ $0254                   ; $11:9229: 9C 54 02    ;
CODE_11922C:    LDA #$00                    ; $11:922C: A9 00       ;
                STA $7F0000                 ; $11:922E: 8F 00 00 7F ;
                STA $7F0001                 ; $11:9232: 8F 01 00 7F ;
                STA $7F0800                 ; $11:9236: 8F 00 08 7F ;
                STA $7F0801                 ; $11:923A: 8F 01 08 7F ;
                DEC A                       ; $11:923E: 3A          ;
                STA $7F0002                 ; $11:923F: 8F 02 00 7F ;
                STA $7F0802                 ; $11:9243: 8F 02 08 7F ;
                LDA $11                     ; $11:9247: A5 11       ;
                BNE CODE_119256             ; $11:9249: D0 0B       ;
                STZ $0300                   ; $11:924B: 9C 00 03    ;
                STZ $0301                   ; $11:924E: 9C 01 03    ;
                LDA #$FF                    ; $11:9251: A9 FF       ;
                STA $0302                   ; $11:9253: 8D 02 03    ;
CODE_119256:    STZ $11                     ; $11:9256: 64 11       ;
                DEC $0154                   ; $11:9258: CE 54 01    ;
CODE_11925B:    PHD                     ; $11:925B: 0B          ; \ Preserve direct page.
                LDA #$21                ; $11:925C: A9 21       ;  | Direct page = #$2100.
                XBA                     ; $11:925E: EB          ;  |
                LDA #$00                ; $11:925F: A9 00       ;  |
                TCD                     ; $11:9261: 5B          ; /
                LDA $0200               ; $11:9262: AD 00 02    ; \ $0200-$0201 = Layer 1 X mirror.
                STA $0D                 ; $11:9265: 85 0D       ;  |
                LDA $0201               ; $11:9267: AD 01 02    ;  |
                STA $0D                 ; $11:926A: 85 0D       ; /
                LDA $0206               ; $11:926C: AD 06 02    ; \ $0206-$0207 + $04C6 = Layer 1 Y mirror.
                CLC                     ; $11:926F: 18          ;  |
                ADC $04C6               ; $11:9270: 6D C6 04    ;  |
                STA $0E                 ; $11:9273: 85 0E       ;  |
                LDA $0207               ; $11:9275: AD 07 02    ;  |
                STA $0E                 ; $11:9278: 85 0E       ; /
                LDA $0202               ; $11:927A: AD 02 02    ; \ $0202-$0203 = Layer 2 X mirror.
                STA $0F                 ; $11:927D: 85 0F       ;  |
                LDA $0203               ; $11:927F: AD 03 02    ;  |
                STA $0F                 ; $11:9282: 85 0F       ; /
                LDA $0208               ; $11:9284: AD 08 02    ; \ $0208-$0209 = Layer 2 Y mirror.
                STA $10                 ; $11:9287: 85 10       ;  |
                LDA $0209               ; $11:9289: AD 09 02    ;  |
                STA $10                 ; $11:928C: 85 10       ; /
                LDA $0204               ; $11:928E: AD 04 02    ; \ $0204-$0205 = Layer 3 X mirror.
                STA $11                 ; $11:9291: 85 11       ;  |
                LDA $0205               ; $11:9293: AD 05 02    ;  |
                STA $11                 ; $11:9296: 85 11       ; /
                LDA $020A               ; $11:9298: AD 0A 02    ; \ $020A-$020B = Layer 3 Y mirror.
                STA $12                 ; $11:929B: 85 12       ;  |
                LDA $020B               ; $11:929D: AD 0B 02    ;  |
                STA $12                 ; $11:92A0: 85 12       ; /
                REP #$10                ; $11:92A2: C2 10       ; Index = 16-bit.
                LDX $0235                   ; $11:92A4: AE 35 02    ;
                STX $23                     ; $11:92A7: 86 23       ;
                LDA $0237                   ; $11:92A9: AD 37 02    ;
                STA $25                     ; $11:92AC: 85 25       ;
                LDX $0238                   ; $11:92AE: AE 38 02    ;
                STX $30                     ; $11:92B1: 86 30       ;
                LDX $023B                   ; $11:92B3: AE 3B 02    ;
                STX $2E                     ; $11:92B6: 86 2E       ;
                LDA $023D               ; $11:92B8: AD 3D 02    ; \ $023D-$023F = Colour layer mirror.
                STA $32                 ; $11:92BB: 85 32       ;  |
                LDA $023E               ; $11:92BD: AD 3E 02    ;  |
                STA $32                 ; $11:92C0: 85 32       ;  |
                LDA $023F               ; $11:92C2: AD 3F 02    ;  |
                STA $32                 ; $11:92C5: 85 32       ; /
                LDX $0243               ; $11:92C7: AE 43 02    ; \ $0243-$0244 = Main and Sub Screen Designation.
                STX $2C                 ; $11:92CA: 86 2C       ; /
                LDA $024C                   ; $11:92CC: AD 4C 02    ;
                STA $07                     ; $11:92CF: 85 07       ;
                LDA $0775               ; $11:92D1: AD 75 07    ; \ $0775 = BG mode mirror.
                STA $2105               ; $11:92D4: 8D 05 21    ; /
                SEP #$10                ; $11:92D7: E2 10       ; Index = 8-bit.
                LDA $024B                   ; $11:92D9: AD 4B 02    ;
                BEQ CODE_11930B             ; $11:92DC: F0 2D       ;
                CMP #$BE                    ; $11:92DE: C9 BE       ;
                BEQ CODE_1192F4             ; $11:92E0: F0 12       ;
                LDA $04BF               ; $11:92E2: AD BF 04    ; \ Make starry BG scroll slower than the rest of the background.
                XBA                     ; $11:92E5: EB          ;  | (Four times as slow as Layer 1)
                LDA $0200               ; $11:92E6: AD 00 02    ;  |
                REP #$20                ; $11:92E9: C2 20       ;  | Accumulator = 16-bit.
                LSR A                   ; $11:92EB: 4A          ;  |
                LSR A                   ; $11:92EC: 4A          ;  |
                SEP #$20                ; $11:92ED: E2 20       ;  | Accumulator = 8-bit.
                STA $0F                 ; $11:92EF: 85 0F       ;  |
                XBA                     ; $11:92F1: EB          ;  |
                STA $0F                 ; $11:92F2: 85 0F       ; /
CODE_1192F4:    LDX $4211                   ; $11:92F4: AE 11 42    ;
                LDA $024B                   ; $11:92F7: AD 4B 02    ;
                STA $4209                   ; $11:92FA: 8D 09 42    ;
                STZ $420A                   ; $11:92FD: 9C 0A 42    ;
                STZ $4207                   ; $11:9300: 9C 07 42    ;
                STZ $4208                   ; $11:9303: 9C 08 42    ;
                LDA #$A1                    ; $11:9306: A9 A1       ;
                STA $4200                   ; $11:9308: 8D 00 42    ;
CODE_11930B:    PLD                     ; $11:930B: 2B          ; Pull normal direct page back.
                LDA $FE                 ; $11:930C: A5 FE       ; \ $FE = Brightness + Force blank mirror.
                STA $2100               ; $11:930E: 8D 00 21    ; /
                LDA $023A               ; $11:9311: AD 3A 02    ; \ $023A = HDMA enable mirror.
                STA $420C               ; $11:9314: 8D 0C 42    ; /
                JSL CODE_138C0B             ; $11:9317: 22 0B 8C 13 ;
                JSR CODE_1195E4             ; $11:931B: 20 E4 95    ;
                PLB                         ; $11:931E: AB          ;
                RTL                     ; $11:931F: 6B          ;
                       
                RTS                     ; $11:9320: 60          ;
                       
CODE_119321:    JSR CODE_11939C             ; $11:9321: 20 9C 93    ;
                PHD                         ; $11:9324: 0B          ;
                LDX #$80                    ; $11:9325: A2 80       ;
                STX $2115                   ; $11:9327: 8E 15 21    ;
                REP #$20                    ; $11:932A: C2 20       ;
                LDA #$4300                  ; $11:932C: A9 00 43    ;
                TCD                     ; $11:932F: 5B          ; DP: $4300
                STZ $2102                   ; $11:9330: 9C 02 21    ;
                LDA #$0400                  ; $11:9333: A9 00 04    ;
                STA $00                     ; $11:9336: 85 00       ;
                LDA #$0800                  ; $11:9338: A9 00 08    ;
                STA $02                     ; $11:933B: 85 02       ;
                STZ $04                     ; $11:933D: 64 04       ;
                LDA #$0220                  ; $11:933F: A9 20 02    ;
                STA $05                     ; $11:9342: 85 05       ;
                LDY #$01                    ; $11:9344: A0 01       ;
                STY $420B                   ; $11:9346: 8C 0B 42    ;
                LDX $0D0B                   ; $11:9349: AE 0B 0D    ;
                BEQ CODE_119353             ; $11:934C: F0 05       ;
                LDA #$0D0C                  ; $11:934E: A9 0C 0D    ;
                STA $72                     ; $11:9351: 85 72       ;
CODE_119353:    LDA $7FF800                 ; $11:9353: AF 00 F8 7F ;
                BEQ CODE_119373             ; $11:9357: F0 1A       ;
                STA $2116                   ; $11:9359: 8D 16 21    ;
                LDA #$1801                  ; $11:935C: A9 01 18    ;
                STA $00                     ; $11:935F: 85 00       ;
                LDA #$F600                  ; $11:9361: A9 00 F6    ;
                STA $02                     ; $11:9364: 85 02       ;
                LDX #$7F                    ; $11:9366: A2 7F       ;
                STX $04                     ; $11:9368: 86 04       ;
                LDA $7FF802                 ; $11:936A: AF 02 F8 7F ;
                STA $05                     ; $11:936E: 85 05       ;
                STY $420B                   ; $11:9370: 8C 0B 42    ;
CODE_119373:    SEP #$20                    ; $11:9373: E2 20       ;
                LDA $02A9                   ; $11:9375: AD A9 02    ;
                BEQ CODE_119395             ; $11:9378: F0 1B       ;
                STZ $2121                   ; $11:937A: 9C 21 21    ;
                REP #$20                    ; $11:937D: C2 20       ;
                LDA #$2200                  ; $11:937F: A9 00 22    ;
                STA $00                     ; $11:9382: 85 00       ;
                LDA #$0B00                  ; $11:9384: A9 00 0B    ;
                STA $02                     ; $11:9387: 85 02       ;
                LDX #$00                    ; $11:9389: A2 00       ;
                STX $04                     ; $11:938B: 86 04       ;
                LDA #$0200                  ; $11:938D: A9 00 02    ;
                STA $05                     ; $11:9390: 85 05       ;
                STY $420B                   ; $11:9392: 8C 0B 42    ;
CODE_119395:    SEP #$20                    ; $11:9395: E2 20       ;
                STZ $02A9                   ; $11:9397: 9C A9 02    ;
                PLD                         ; $11:939A: 2B          ;
                RTS                     ; $11:939B: 60          ;
                       
CODE_11939C:    PHD                     ; $11:939C: 0B          ; Preserve DP.
                LDA #$0A                ; $11:939D: A9 0A       ; \ Direct page = #$0A00.
                XBA                     ; $11:939F: EB          ;  |
                LDA #$00                ; $11:93A0: A9 00       ;  |
                TCD                     ; $11:93A2: 5B          ; /
                LDY #$1C                ; $11:93A3: A0 1C       ; \ Y starts out as #$1C, X as #$70.
CODE_1193A5:    TYA                     ; $11:93A5: 98          ;  |
                ASL A                   ; $11:93A6: 0A          ;  |
                ASL A                   ; $11:93A7: 0A          ;  |
                TAX                     ; $11:93A8: AA          ; /
                LDA $23,x               ; $11:93A9: B5 23       ; \ Get general sprite tile sizes from $0A20-$0A9F into $0A00-$0A1F.
                ASL A                   ; $11:93AB: 0A          ;  |
                ASL A                   ; $11:93AC: 0A          ;  |
                ORA $22,x               ; $11:93AD: 15 22       ;  |
                ASL A                   ; $11:93AF: 0A          ;  |
                ASL A                   ; $11:93B0: 0A          ;  |
                ORA $21,x               ; $11:93B1: 15 21       ;  |
                ASL A                   ; $11:93B3: 0A          ;  |
                ASL A                   ; $11:93B4: 0A          ;  |
                ORA $20,x               ; $11:93B5: 15 20       ;  |
                STA $0A00,y             ; $11:93B7: 99 00 0A    ;  |
                LDA $27,x               ; $11:93BA: B5 27       ;  |
                ASL A                   ; $11:93BC: 0A          ;  |
                ASL A                   ; $11:93BD: 0A          ;  |
                ORA $26,x               ; $11:93BE: 15 26       ;  |
                ASL A                   ; $11:93C0: 0A          ;  |
                ASL A                   ; $11:93C1: 0A          ;  |
                ORA $25,x               ; $11:93C2: 15 25       ;  |
                ASL A                   ; $11:93C4: 0A          ;  |
                ASL A                   ; $11:93C5: 0A          ;  |
                ORA $24,x               ; $11:93C6: 15 24       ;  |
                STA $0A01,y             ; $11:93C8: 99 01 0A    ;  |
                LDA $2B,x               ; $11:93CB: B5 2B       ;  |
                ASL A                   ; $11:93CD: 0A          ;  |
                ASL A                   ; $11:93CE: 0A          ;  |
                ORA $2A,x               ; $11:93CF: 15 2A       ;  |
                ASL A                   ; $11:93D1: 0A          ;  |
                ASL A                   ; $11:93D2: 0A          ;  |
                ORA $29,x               ; $11:93D3: 15 29       ;  |
                ASL A                   ; $11:93D5: 0A          ;  |
                ASL A                   ; $11:93D6: 0A          ;  |
                ORA $28,x               ; $11:93D7: 15 28       ;  |
                STA $0A02,y             ; $11:93D9: 99 02 0A    ;  |
                LDA $2F,x               ; $11:93DC: B5 2F       ;  |
                ASL A                   ; $11:93DE: 0A          ;  |
                ASL A                   ; $11:93DF: 0A          ;  |
                ORA $2E,x               ; $11:93E0: 15 2E       ;  |
                ASL A                   ; $11:93E2: 0A          ;  |
                ASL A                   ; $11:93E3: 0A          ;  |
                ORA $2D,x               ; $11:93E4: 15 2D       ;  |
                ASL A                   ; $11:93E6: 0A          ;  |
                ASL A                   ; $11:93E7: 0A          ;  |
                ORA $2C,x               ; $11:93E8: 15 2C       ;  |
                STA $0A03,y             ; $11:93EA: 99 03 0A    ; /
                DEY                     ; $11:93ED: 88          ; \ Decrement Y by 4 and loop until transfer done.
                DEY                     ; $11:93EE: 88          ;  |
                DEY                     ; $11:93EF: 88          ;  |
                DEY                     ; $11:93F0: 88          ;  |
                BPL CODE_1193A5         ; $11:93F1: 10 B2       ; /
                PLD                     ; $11:93F3: 2B          ; Get DP register back.
                RTS                     ; $11:93F4: 60          ; Return.
                       
CODE_1193F5:    LDX #$44                    ; $11:93F5: A2 44       ;
                LDY #$00                    ; $11:93F7: A0 00       ;
                LDA $0628                   ; $11:93F9: AD 28 06    ;
                CMP #$01                    ; $11:93FC: C9 01       ;
                BEQ CODE_119407             ; $11:93FE: F0 07       ;
                LDA $EB                     ; $11:9400: A5 EB       ;
                BEQ CODE_119407             ; $11:9402: F0 03       ;
                LDX #$40                    ; $11:9404: A2 40       ;
                INY                         ; $11:9406: C8          ;
CODE_119407:    STX $03                     ; $11:9407: 86 03       ;
                STZ $04                     ; $11:9409: 64 04       ;
                TYA                         ; $11:940B: 98          ;
                ORA #$80                    ; $11:940C: 09 80       ;
                STA $2115                   ; $11:940E: 8D 15 21    ;
                LDA #$00                    ; $11:9411: A9 00       ;
                STA $4314                   ; $11:9413: 8D 14 43    ;
                REP #$10                    ; $11:9416: C2 10       ;
                LDX #$1801                  ; $11:9418: A2 01 18    ;
                STX $4310                   ; $11:941B: 8E 10 43    ;
                LDX #$0002                  ; $11:941E: A2 02 00    ;
                LDA $0300,x                 ; $11:9421: BD 00 03    ;
                BMI CODE_119457             ; $11:9424: 30 31       ;
CODE_119426:    REP #$20                    ; $11:9426: C2 20       ;
                LDA $0300,x                 ; $11:9428: BD 00 03    ;
                XBA                         ; $11:942B: EB          ;
                STA $2116                   ; $11:942C: 8D 16 21    ;
                LDA $0302,x                 ; $11:942F: BD 02 03    ;
                XBA                         ; $11:9432: EB          ;
                AND #$3FFF                  ; $11:9433: 29 FF 3F    ;
                INC A                       ; $11:9436: 1A          ;
                STA $4315                   ; $11:9437: 8D 15 43    ;
                TXA                         ; $11:943A: 8A          ;
                CLC                         ; $11:943B: 18          ;
                ADC #$0004                  ; $11:943C: 69 04 00    ;
                CLC                         ; $11:943F: 18          ;
                ADC #$0300                  ; $11:9440: 69 00 03    ;
                STA $4312                   ; $11:9443: 8D 12 43    ;
                TXA                         ; $11:9446: 8A          ;
                CLC                         ; $11:9447: 18          ;
                ADC $03                     ; $11:9448: 65 03       ;
                TAX                         ; $11:944A: AA          ;
                SEP #$20                    ; $11:944B: E2 20       ;
                LDA #$02                    ; $11:944D: A9 02       ;
                STA $420B                   ; $11:944F: 8D 0B 42    ;
                LDA $0300,x                 ; $11:9452: BD 00 03    ;
                BPL CODE_119426             ; $11:9455: 10 CF       ;
CODE_119457:    SEP #$30                    ; $11:9457: E2 30       ;
                RTS                     ; $11:9459: 60          ;
                       
CODE_11945A:    LDX #$44                    ; $11:945A: A2 44       ;
                LDY #$80                    ; $11:945C: A0 80       ;
                LDA $0628                   ; $11:945E: AD 28 06    ;
                CMP #$01                    ; $11:9461: C9 01       ;
                BNE CODE_119469             ; $11:9463: D0 04       ;
                LDX #$84                    ; $11:9465: A2 84       ;
                BRA CODE_119477             ; $11:9467: 80 0E       ;

CODE_119469:    LDA $EB                     ; $11:9469: A5 EB       ;
                BEQ CODE_119477             ; $11:946B: F0 0A       ;
                LDX #$2C                    ; $11:946D: A2 2C       ;
                LDA $024B                   ; $11:946F: AD 4B 02    ;
                BNE CODE_119476             ; $11:9472: D0 02       ;
                LDX #$40                    ; $11:9474: A2 40       ;
CODE_119476:    INY                         ; $11:9476: C8          ;
CODE_119477:    STX $03                     ; $11:9477: 86 03       ;
                STZ $04                     ; $11:9479: 64 04       ;
                STY $2115                   ; $11:947B: 8C 15 21    ;
                LDA #$7F                    ; $11:947E: A9 7F       ;
                STA $4314                   ; $11:9480: 8D 14 43    ;
                REP #$10                    ; $11:9483: C2 10       ;
                LDX #$1801                  ; $11:9485: A2 01 18    ;
                STX $4310                   ; $11:9488: 8E 10 43    ;
                LDX #$0002                  ; $11:948B: A2 02 00    ;
                LDA $7F0000,x               ; $11:948E: BF 00 00 7F ;
                BMI CODE_1194C4             ; $11:9492: 30 30       ;
CODE_119494:    REP #$20                    ; $11:9494: C2 20       ;
                LDA $7F0000,x               ; $11:9496: BF 00 00 7F ;
                XBA                         ; $11:949A: EB          ;
                STA $2116                   ; $11:949B: 8D 16 21    ;
                LDA $7F0002,x               ; $11:949E: BF 02 00 7F ;
                XBA                         ; $11:94A2: EB          ;
                STA $4315                   ; $11:94A3: 8D 15 43    ;
                TXA                         ; $11:94A6: 8A          ;
                CLC                         ; $11:94A7: 18          ;
                ADC #$0004                  ; $11:94A8: 69 04 00    ;
                CLC                         ; $11:94AB: 18          ;
                ADC #$0000                  ; $11:94AC: 69 00 00    ;
                STA $4312                   ; $11:94AF: 8D 12 43    ;
                TXA                         ; $11:94B2: 8A          ;
                CLC                         ; $11:94B3: 18          ;
                ADC $03                     ; $11:94B4: 65 03       ;
                TAX                         ; $11:94B6: AA          ;
                SEP #$20                    ; $11:94B7: E2 20       ;
                LDA #$02                    ; $11:94B9: A9 02       ;
                STA $420B                   ; $11:94BB: 8D 0B 42    ;
                LDA $7F0000,x               ; $11:94BE: BF 00 00 7F ;
                BPL CODE_119494             ; $11:94C2: 10 D0       ;
CODE_1194C4:    SEP #$30                    ; $11:94C4: E2 30       ;
                RTS                     ; $11:94C6: 60          ;
                       
CODE_1194C7:    LDA $F2                     ; $11:94C7: A5 F2       ;
                STA $4314                   ; $11:94C9: 8D 14 43    ;
                REP #$10                    ; $11:94CC: C2 10       ;
                LDY #$0000                  ; $11:94CE: A0 00 00    ;
                LDA [$F0],y                 ; $11:94D1: B7 F0       ;
                BMI CODE_1194C4             ; $11:94D3: 30 EF       ;
                STZ $06                     ; $11:94D5: 64 06       ;
CODE_1194D7:    STA $04                     ; $11:94D7: 85 04       ;
                INY                         ; $11:94D9: C8          ;
                LDA [$F0],y                 ; $11:94DA: B7 F0       ;
                STA $03                     ; $11:94DC: 85 03       ;
                INY                         ; $11:94DE: C8          ;
                LDA [$F0],y                 ; $11:94DF: B7 F0       ;
                AND #$80                    ; $11:94E1: 29 80       ;
                ASL A                       ; $11:94E3: 0A          ;
                ROL A                       ; $11:94E4: 2A          ;
                STA $07                     ; $11:94E5: 85 07       ;
                LDA [$F0],y                 ; $11:94E7: B7 F0       ;
                AND #$40                    ; $11:94E9: 29 40       ;
                STA $05                     ; $11:94EB: 85 05       ;
                LSR A                       ; $11:94ED: 4A          ;
                LSR A                       ; $11:94EE: 4A          ;
                LSR A                       ; $11:94EF: 4A          ;
                ORA #$01                    ; $11:94F0: 09 01       ;
                STA $4310                   ; $11:94F2: 8D 10 43    ;
                LDA #$18                    ; $11:94F5: A9 18       ;
                STA $4311                   ; $11:94F7: 8D 11 43    ;
                REP #$20                    ; $11:94FA: C2 20       ;
                LDA $03                     ; $11:94FC: A5 03       ;
                STA $2116                   ; $11:94FE: 8D 16 21    ;
                LDA [$F0],y                 ; $11:9501: B7 F0       ;
                XBA                         ; $11:9503: EB          ;
                AND #$3FFF                  ; $11:9504: 29 FF 3F    ;
                TAX                         ; $11:9507: AA          ;
                INX                         ; $11:9508: E8          ;
                STX $4315                   ; $11:9509: 8E 15 43    ;
                INY                         ; $11:950C: C8          ;
                INY                         ; $11:950D: C8          ;
                TYA                         ; $11:950E: 98          ;
                CLC                         ; $11:950F: 18          ;
                ADC $F0                     ; $11:9510: 65 F0       ;
                STA $4312                   ; $11:9512: 8D 12 43    ;
                LDA $05                     ; $11:9515: A5 05       ;
                BEQ CODE_11954D             ; $11:9517: F0 34       ;
                INX                         ; $11:9519: E8          ;
                TXA                         ; $11:951A: 8A          ;
                LSR A                       ; $11:951B: 4A          ;
                TAX                         ; $11:951C: AA          ;
                STX $4315                   ; $11:951D: 8E 15 43    ;
                SEP #$20                    ; $11:9520: E2 20       ;
                LDA $05                     ; $11:9522: A5 05       ;
                LSR A                       ; $11:9524: 4A          ;
                LSR A                       ; $11:9525: 4A          ;
                LSR A                       ; $11:9526: 4A          ;
                STA $4310                   ; $11:9527: 8D 10 43    ;
                LDA $07                     ; $11:952A: A5 07       ;
                STA $2115                   ; $11:952C: 8D 15 21    ;
                LDA #$02                    ; $11:952F: A9 02       ;
                STA $420B                   ; $11:9531: 8D 0B 42    ;
                LDA #$19                    ; $11:9534: A9 19       ;
                STA $4311                   ; $11:9536: 8D 11 43    ;
                REP #$21                    ; $11:9539: C2 21       ;
                TYA                         ; $11:953B: 98          ;
                ADC $F0                     ; $11:953C: 65 F0       ;
                INC A                       ; $11:953E: 1A          ;
                STA $4312                   ; $11:953F: 8D 12 43    ;
                LDA $03                     ; $11:9542: A5 03       ;
                STA $2116                   ; $11:9544: 8D 16 21    ;
                STX $4315                   ; $11:9547: 8E 15 43    ;
                LDX #$0002                  ; $11:954A: A2 02 00    ;
CODE_11954D:    STX $03                     ; $11:954D: 86 03       ;
                TYA                         ; $11:954F: 98          ;
                CLC                         ; $11:9550: 18          ;
                ADC $03                     ; $11:9551: 65 03       ;
                TAY                         ; $11:9553: A8          ;
                SEP #$20                    ; $11:9554: E2 20       ;
                LDA $07                     ; $11:9556: A5 07       ;
                ORA #$80                    ; $11:9558: 09 80       ;
                STA $2115                   ; $11:955A: 8D 15 21    ;
                LDA #$02                    ; $11:955D: A9 02       ;
                STA $420B                   ; $11:955F: 8D 0B 42    ;
                LDA [$F0],y                 ; $11:9562: B7 F0       ;
                BMI CODE_119569             ; $11:9564: 30 03       ;
                JMP CODE_1194D7         ; $11:9566: 4C D7 94    ;
           
CODE_119569:    SEP #$30                    ; $11:9569: E2 30       ;
                RTS                     ; $11:956B: 60          ;
                       
CODE_11956C:    PHB                         ; $11:956C: 8B          ;
                PHK                         ; $11:956D: 4B          ;
                PLB                         ; $11:956E: AB          ;
                LDA $4211                   ; $11:956F: AD 11 42    ;
                BPL CODE_1195A5             ; $11:9572: 10 31       ;
                LDA $024B                   ; $11:9574: AD 4B 02    ;
                BEQ CODE_1195A5             ; $11:9577: F0 2C       ;
                CMP #$BE                    ; $11:9579: C9 BE       ;
                BEQ CODE_119580             ; $11:957B: F0 03       ;
                BRL CODE_1195A7         ; $11:957D: 82 27 00    ;
           
CODE_119580:    BIT $4212                   ; $11:9580: 2C 12 42    ;
                BVC CODE_119580                     ; $11:9583: 50 FB       ;
                LDA $F3                     ; $11:9585: A5 F3       ;
                STA $210D                   ; $11:9587: 8D 0D 21    ;
                LDA $024F                   ; $11:958A: AD 4F 02    ;
                STA $210D                   ; $11:958D: 8D 0D 21    ;
                STZ $210E                   ; $11:9590: 9C 0E 21    ;
                STZ $210E                   ; $11:9593: 9C 0E 21    ;
CODE_119596:    LDA $024B                   ; $11:9596: AD 4B 02    ;
                CMP #$FF                    ; $11:9599: C9 FF       ;
                BNE CODE_1195A5             ; $11:959B: D0 08       ;
                STZ $024B                   ; $11:959D: 9C 4B 02    ;
                LDA #$81                    ; $11:95A0: A9 81       ;
                STA $4200                   ; $11:95A2: 8D 00 42    ;
CODE_1195A5:    PLB                         ; $11:95A5: AB          ;
                RTL                     ; $11:95A6: 6B          ;
                       
CODE_1195A7:    BIT $4212                   ; $11:95A7: 2C 12 42    ;
                BVC CODE_1195A7                     ; $11:95AA: 50 FB       ;
                LDA $0202                   ; $11:95AC: AD 02 02    ;
                STA $210F                   ; $11:95AF: 8D 0F 21    ;
                LDA $0203                   ; $11:95B2: AD 03 02    ;
                STA $210F                   ; $11:95B5: 8D 0F 21    ;
                STZ $2110                   ; $11:95B8: 9C 10 21    ;
                STZ $2110                   ; $11:95BB: 9C 10 21    ;
                BRA CODE_119596             ; $11:95BE: 80 D6       ;

CODE_1195C0:    STZ $02B7                   ; $11:95C0: 9C B7 02    ;
CODE_1195C3:    JSL CODE_14F908             ; $11:95C3: 22 08 F9 14 ;
                JSL CODE_14D1B2             ; $11:95C7: 22 B2 D1 14 ;
                LDA $02B7                   ; $11:95CB: AD B7 02    ;
                BEQ CODE_1195C3             ; $11:95CE: F0 F3       ;
                RTL                     ; $11:95D0: 6B          ;
                       
CODE_1195D1:    STZ $02B7                   ; $11:95D1: 9C B7 02    ;
                STZ $FE                     ; $11:95D4: 64 FE       ;
CODE_1195D6:    JSL CODE_14F908             ; $11:95D6: 22 08 F9 14 ;
                JSL CODE_14D1C2             ; $11:95DA: 22 C2 D1 14 ;
                LDA $02B7                   ; $11:95DE: AD B7 02    ;
                BEQ CODE_1195D6             ; $11:95E1: F0 F3       ;
                RTL                     ; $11:95E3: 6B          ;
                       
CODE_1195E4:    LDA $1DE0                   ; $11:95E4: AD E0 1D    ;
                BNE CODE_1195FD             ; $11:95E7: D0 14       ;
                LDA $2140                   ; $11:95E9: AD 40 21    ;
                CMP $1DE4                   ; $11:95EC: CD E4 1D    ;
                BEQ CODE_1195FB             ; $11:95EF: F0 0A       ;
                INC $1DEA                   ; $11:95F1: EE EA 1D    ;
                LDA $1DEA                   ; $11:95F4: AD EA 1D    ;
                CMP #$03                    ; $11:95F7: C9 03       ;
                BCC CODE_119606             ; $11:95F9: 90 0B       ;
CODE_1195FB:    LDA #$00                    ; $11:95FB: A9 00       ;
CODE_1195FD:    STA $2140                   ; $11:95FD: 8D 40 21    ;
                STA $1DE4                   ; $11:9600: 8D E4 1D    ;
                STZ $1DEA                   ; $11:9603: 9C EA 1D    ;
CODE_119606:    LDA $1DE1                   ; $11:9606: AD E1 1D    ;
                BNE CODE_119621             ; $11:9609: D0 16       ;
                LDA $2141                   ; $11:960B: AD 41 21    ;
                AND #$0F                    ; $11:960E: 29 0F       ;
                CMP $1DE5                   ; $11:9610: CD E5 1D    ;
                BEQ CODE_11961F             ; $11:9613: F0 0A       ;
                INC $1DEB                   ; $11:9615: EE EB 1D    ;
                LDA $1DEB                   ; $11:9618: AD EB 1D    ;
                CMP #$03                    ; $11:961B: C9 03       ;
                BCC CODE_11962C             ; $11:961D: 90 0D       ;
CODE_11961F:    LDA #$00                    ; $11:961F: A9 00       ;
CODE_119621:    STA $2141                   ; $11:9621: 8D 41 21    ;
                AND #$0F                    ; $11:9624: 29 0F       ;
                STA $1DE5                   ; $11:9626: 8D E5 1D    ;
                STZ $1DEB                   ; $11:9629: 9C EB 1D    ;
CODE_11962C:    LDA $1DE2                   ; $11:962C: AD E2 1D    ;
                BEQ CODE_1196A7             ; $11:962F: F0 76       ;
                LDY #$04                    ; $11:9631: A0 04       ;
                STY $1DEC                   ; $11:9633: 8C EC 1D    ;
                STA $2142                   ; $11:9636: 8D 42 21    ;
                CMP #$F0                    ; $11:9639: C9 F0       ;
                BCS CODE_119640                     ; $11:963B: B0 03       ;
                STA $1DE6                   ; $11:963D: 8D E6 1D    ;
CODE_119640:    LDA $1DE3                   ; $11:9640: AD E3 1D    ;
                BNE CODE_119666             ; $11:9643: D0 21       ;
                LDA $2143                   ; $11:9645: AD 43 21    ;
                AND #$7F                    ; $11:9648: 29 7F       ;
                CMP $1DE7                   ; $11:964A: CD E7 1D    ;
                BEQ CODE_119659             ; $11:964D: F0 0A       ;
                INC $1DED                   ; $11:964F: EE ED 1D    ;
                LDA $1DED                   ; $11:9652: AD ED 1D    ;
                CMP #$03                    ; $11:9655: C9 03       ;
                BCC CODE_11968A             ; $11:9657: 90 31       ;
CODE_119659:    LDA #$00                    ; $11:9659: A9 00       ;
                STA $2143                   ; $11:965B: 8D 43 21    ;
                STA $1DE7                   ; $11:965E: 8D E7 1D    ;
                STZ $1DED                   ; $11:9661: 9C ED 1D    ;
                BRA CODE_11968A             ; $11:9664: 80 24       ;

CODE_119666:    STA $1DE7                   ; $11:9666: 8D E7 1D    ;
                CMP #$01                    ; $11:9669: C9 01       ;
                BEQ CODE_119679             ; $11:966B: F0 0C       ;
                CMP #$05                    ; $11:966D: C9 05       ;
                BEQ CODE_119679             ; $11:966F: F0 08       ;
                CMP #$06                    ; $11:9671: C9 06       ;
                BEQ CODE_119679             ; $11:9673: F0 04       ;
                CMP #$4A                    ; $11:9675: C9 4A       ;
                BNE CODE_119697             ; $11:9677: D0 1E       ;
CODE_119679:    ORA $1DEF                   ; $11:9679: 0D EF 1D    ;
                STA $2143                   ; $11:967C: 8D 43 21    ;
                LDA $1DEF                   ; $11:967F: AD EF 1D    ;
                EOR #$80                    ; $11:9682: 49 80       ;
                STA $1DEF                   ; $11:9684: 8D EF 1D    ;
                STZ $1DED                   ; $11:9687: 9C ED 1D    ;
CODE_11968A:    STZ $1DE0                   ; $11:968A: 9C E0 1D    ;
                STZ $1DE1                   ; $11:968D: 9C E1 1D    ;
                STZ $1DE2                   ; $11:9690: 9C E2 1D    ;
                STZ $1DE3                   ; $11:9693: 9C E3 1D    ;
                RTS                     ; $11:9696: 60          ;
                       
CODE_119697:    STA $2143                   ; $11:9697: 8D 43 21    ;
                STZ $1DE0                   ; $11:969A: 9C E0 1D    ;
                STZ $1DE1                   ; $11:969D: 9C E1 1D    ;
                STZ $1DE2                   ; $11:96A0: 9C E2 1D    ;
                STZ $1DE3                   ; $11:96A3: 9C E3 1D    ;
                RTS                     ; $11:96A6: 60          ;
                       
CODE_1196A7:    LDY $2142                   ; $11:96A7: AC 42 21    ;
                CPY $1DE6                   ; $11:96AA: CC E6 1D    ;
                BNE CODE_119640             ; $11:96AD: D0 91       ;
                DEC $1DEC                   ; $11:96AF: CE EC 1D    ;
                LDA $1DEC                   ; $11:96B2: AD EC 1D    ;
                BNE CODE_119640             ; $11:96B5: D0 89       ;
                INC $1DEC                   ; $11:96B7: EE EC 1D    ;
                STA $2142                   ; $11:96BA: 8D 42 21    ;
                BRA CODE_119640         ; $11:96BD: 80 81       ;
                   
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \ Empty.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF                                          ; /

DATA_119780:    db $FA,$F6,$FC,$F7                              ;

DATA_119784:    db $FF,$FF,$FF,$FF                              ;

DATA_119788:    db $02,$FE,$04,$FF                              ;

DATA_11978C:    db $00,$FF,$00                                  ;
                                            
DATA_11978F:    db $FF,$18                                      ;

DATA_119791:    db $E0,$01                                      ;

DATA_119793:    db $FF,$FE,$00                                  ;
            
DATA_119796:    db $12,$16,$1A,$1E,$22,$26,$2A,$2D              ;
                db $30,$32,$34,$37,$39,$3B,$3D,$3E              ;
                db $F8,$00,$F8,$00,$08,$10,$08,$10              ;
                db $F8,$F8                                      ;

DATA_1197B0:    db $08,$08,$F8,$F8,$08,$08                      ;

DATA_1197B6:    db $FB,$08,$15,$FB                              ;

DATA_1197BA:    db $08,$15                                      ;

DATA_1197BC:    db $FB,$08,$15                                  ;

DATA_1197BF:    db $FF,$00,$00,$FF,$00,$00,$FF,$00              ;
                db $00                                          ;

DATA_1197C8:    db $FC,$FC,$FC,$08,$08,$08,$14,$14              ;
                db $14                                          ;

DATA_1197D1:    db $FF,$FF,$FF,$00,$00,$00,$00,$00              ;
                db $00                                          ;

DATA_1197DA:    db $1F,$06                                      ;

DATA_1197DC:    db $44,$48,$4C,$50                              ;
                    
DATA_1197E0:    db $08,$04,$02,$01                              ;

DATA_1197E4:    db $00,$08,$10,$18,$F0,$E0,$F0,$E0              ;
                db $10,$20                                      ;
          
DATA_1197EE:    db $0C,$03                                      ;

DATA_1197F0:    db $00,$0A                                      ;

DATA_1197F2:    db $E0,$00                                      ;
 
DATA_1197F4:    db $FF,$01                                      ;
         
DATA_1197F6:    db $00,$FF                                      ;

DATA_1197F8:    db $10,$F0                                      ;

DATA_1197FA:    db $AC,$AE,$B1,$B5,$B8,$BC,$C0,$C4              ;
                db $C8,$CC,$D2,$D8                              ;

DATA_119806:    db $92,$EA                                      ;

DATA_119808:    db $FA,$0C                                      ;

DATA_11980A:    db $81,$11                                      ;

DATA_11980C:    db $43,$41                                      ;

DATA_11980E:    db $42,$FE,$F8                                  ;

DATA_119811:    db $7F,$3F,$3F                                  ;

DATA_119814:    db $08,$06,$04,$18,$E8                          ;

DATA_119819:    db $FE,$F8,$F0,$E8                              ;

DATA_11981D:    db $F8,$08                                      ;

DATA_11981F:    db $F0                                          ;

DATA_119820:    db $FF,$00                                      ;

DATA_119822:    db $01,$FF                                      ;
 
DATA_119824:    db $30,$D0                                      ;

DATA_119826:    db $01,$FF,$01                                  ;

DATA_119829:    db $18,$E8,$18                                  ;

DATA_11982C:    db $E8,$D0,$D8                                  ;

DATA_11982F:    db $D0,$20,$E0                                  ;

DATA_119832:    db $0A,$0E,$0A,$0D,$04,$07,$04,$06              ;
                db $10,$F0                                      ;

DATA_11983C:    db $00,$01,$01,$02,$02,$03,$04,$06              ;
                db $08,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$08,$06,$04,$03,$02,$02,$02              ;
                db $02,$01,$01,$01,$01,$01,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
           
DATA_11986C:    db $00,$1C,$E4                                  ;

DATA_11986F:    db $00,$D2,$02,$D6,$86,$00,$80,$00              ;
                db $0A,$CE,$26,$CE,$8A,$CA,$8C,$CA              ;
                db $0C,$72,$0E,$76,$66,$00,$68,$00              ;
                db $E1,$E3,$E5,$E7,$E1,$E3,$E5,$E7              ;
                db $20,$7A,$22,$7E,$04,$DA,$06,$DE              ;
                db $4C,$FE,$4E,$FC,$94,$94,$20,$FF              ;
                db $8C,$98,$A6,$9A,$AE,$DD,$AE,$DD              ;
                db $64,$7F,$06,$C3,$E2,$8C,$C2,$8E              ;
                db $80,$6D,$82,$6F,$87,$87,$97,$97              ;
                db $A0,$A0,$B0,$B0,$A1,$A1,$B1,$B1              ;
                db $86,$86,$96,$96,$D5,$FB,$D5,$FB              ;
                db $40,$82,$42,$86,$40,$82,$46,$AC              ;
                db $44,$8A,$42,$86,$44,$8A,$46,$AC              ;
                db $48,$BE,$46,$AC,$48,$BE,$46,$AC              ;
                db $4A,$B9,$4A,$B9,$A2,$83,$A4,$87              ;
                db $E4,$FF,$E4,$FF,$A2,$83,$A4,$87              ;
                db $8E,$C7,$08,$CB,$24,$94,$2E,$29              ;
                db $08,$2B,$2C,$3F,$CA,$4E,$EA,$52              ;
                db $CA,$4E,$CE,$58,$EE,$5C,$EC,$5A              ;
                db $EA,$FB,$CC,$54,$04,$CF,$28,$A5              ;
                db $AC,$B2,$AA,$90,$2A,$CD,$42,$A8              ;
                db $44,$A8,$46,$A8,$84,$A2,$86,$A4              ;
                db $86,$A4,$C0,$00,$E0,$00,$62,$A6              ;
                db $62,$AB,$6C,$FF,$42,$FF,$6A,$FF              ;
                db $42,$FF,$6E,$FF,$42,$FF,$22,$FF              ;
                db $24,$FF,$2A,$FF                              ;

DATA_11993B:    db $00,$00,$08,$00,$0C,$10,$10,$10              ;
                db $3C,$14,$18,$18,$18,$20,$20,$24              ;
                db $24,$BC,$00,$84,$86,$FF,$FF,$8A              ;
                db $58,$58,$68,$54,$58,$14,$70,$00              ;
                db $A6,$00,$D8,$AC,$AC,$AC,$70,$76              ;
                db $90,$98,$7C,$8C,$00,$00,$B6,$B6              ;
                db $B6,$B6,$28,$2A,$2C,$2E,$30,$34              ;
                db $00,$38,$3A,$40,$80,$80,$82,$9E              ;
                db $A0,$04,$8C,$8C,$9C,$A4,$A2                  ;

DATA_119982:    db $FF,$FF,$00,$00,$01,$01,$00,$00              ;

DATA_11998A:    db $01,$00,$00,$01,$01,$00,$00,$01              ;
     
DATA_119992:    db $88,$2F,$88,$2F,$A6,$A7,$A8,$A9              ;
                db $A9,$A8,$A7,$A6,$B6,$B7,$B8,$B9              ;
                db $B9,$B8,$B7,$B6,$C0,$C1,$09,$E0              ;
                db $E1,$0B,$C3,$C4,$15,$E3,$E4,$17              ;
                db $C0,$C1,$09,$C9,$CA,$1B,$C0,$C1              ;
                db $09,$C9,$CA,$1B,$C6,$C7,$25,$E6              ;
                db $E7,$27,$C6,$C7,$25,$E6,$E7,$27              ;
                db $AE,$9E,$AE,$9E,$A0,$F2,$A2,$F6              ;
                db $A0,$F2,$A4,$FA,$C3,$11,$C5,$15              ;
                db $E4,$11,$C5,$15,$C7,$C8,$1B,$C7              ;
                db $CA,$1D,$E2,$C1,$C0,$C1,$E0,$C1              ;
                db $8A,$59,$AA,$5D,$8C,$F2,$AC,$F6              ;
                db $8E,$59,$AA,$5D,$8E,$59,$AC,$5D              ;
                db $88,$EA,$A8,$EE,$A8,$EE,$A8,$EE              ;
                db $88,$F2,$88,$F2,$A8,$F6,$84,$FA              ;
                db $00,$D2,$02,$D6,$C0,$03,$E0,$07              ;
                db $C2,$0B,$E2,$0F,$C0,$0B,$E0,$0F              ;
                db $C2,$0B,$E2,$0F,$CE,$1B,$E8,$1B              ;
                db $86,$2F,$3A,$3A,$A0,$E2,$A4,$E6              ;
                db $AA,$EA,$AC,$EE,$C0,$00,$C2,$00              ;
                db $88,$00,$8A,$00,$C6,$00,$C8,$00              ;
                db $EC,$00,$EE,$00,$E6,$00,$E8,$00              ;
                db $CC,$00,$CE,$00,$E2,$00,$E4,$00              ;
                db $E2,$00,$E4,$00,$A0,$00,$A2,$00              ;
                db $C4,$C4,$E4,$E4,$C6,$C6,$C8,$C8              ;
                db $C0,$C2,$E0,$E2,$C2,$C0,$E2,$E0              ;
                db $C4,$1F,$E4,$23,$CA,$00,$CC,$00              ;
                db $CE,$00,$CE,$00,$C4,$03,$E4,$07              ;
                db $C6,$0B,$E6,$0F,$C4,$0B,$E4,$0F              ;
                db $C6,$0B,$E6,$0F,$C8,$00,$CA,$00              ;
                db $CC,$00                                      ;

DATA_119A84:    db $C8,$D0,$E0,$F0,$00,$10,$20,$C8              ;

DATA_119A8C:    db $DC,$E2,$E8,$F0,$F8,$E8,$DC                  ;

DATA_119A93:    db $DC,$08,$08                                  ;

DATA_119A96:    db $1C,$F4,$11,$0F                              ;

DATA_119A9A:    db $04,$06,$08,$08,$08,$08,$06,$04              ;

DATA_119AA2:    db $00,$15,$EB,$00                              ;

DATA_119AA6:    db $02,$02,$02,$02,$01,$01,$01,$01              ;
                db $04,$0C,$0C,$04                              ;

DATA_119AB2:    db $01,$FF                                      ;

DATA_119AB4:    db $08,$F8                                      ;

DATA_119AB6:    db $01,$FF                                      ;

DATA_119AB8:    db $20,$E0                                      ;

DATA_119ABA:    db $14                                          ;

DATA_119ABB:    db $EC,$F9,$07                                  ;

DATA_119ABE:    db $FD,$FD,$FD,$FC,$FB,$FA,$F9,$F8              ;
                db $F7,$F8,$F9,$FA,$FB,$FC,$FD,$FD              ;

DATA_119ACE:    db $0B,$0C,$0D,$0F,$10,$12,$14,$17              ;
                db $1A,$1D,$1F,$20                              ;

DATA_119ADA:    db $E2,$E2,$E2,$E3,$E4,$E5,$E7,$E9              ;
                db $ED,$F1,$F8,$00                              ;

DATA_119AE6:    db $02,$04,$0D,$0E                              ;

DATA_119AEA:    db $00                                          ;

DATA_119AEB:    db $01                                          ;

DATA_119AEC:    db $00                                          ;

DATA_119AED:    db $FF,$00,$01,$00                              ;

DATA_119AF1:    db $F0                                          ;

DATA_119AF2:    db $00,$F0                                      ;

DATA_119AF4:    db $E0,$20,$F0,$10                              ;

DATA_119AF8:    db $04,$0C,$04,$0C                              ;

DATA_119AFC:    db $04,$04,$0C,$0C                              ;

DATA_119B00:    db $01,$FF                                      ;

DATA_119B02:    db $2A,$D6                                      ;

DATA_119B04:    db $01,$FF                                      ;

DATA_119B06:    db $18,$E8                                      ;

DATA_119B08:    db $3F,$3F,$3F,$7F                              ;

DATA_119B0C:    db $D4,$D8,$DA                                  ;

DATA_119B0F:    db $DE,$1C                                      ;

DATA_119B11:    db $E4,$01,$FF                                  ;

DATA_119B14:    db $28,$D8                                      ;

DATA_119B16:    db $10                                          ;

DATA_119B17:    db $F0,$F8,$10                                  ;

DATA_119B1A:    db $08,$28,$48,$28                              ;

DATA_119B1E:    db $94,$84,$94,$84                              ;

DATA_119B22:    db $F8,$08,$F8,$08,$08,$F8,$08,$F8              ;

DATA_119B2A:    db $E0,$F0,$E8,$E4,$FF,$FF                      ;

DATA_119B30:    db $FE,$FB,$F8                                  ;

DATA_119B33:    db $30,$60,$90                                  ;

DATA_119B36:    db $03,$06,$09                                  ;

DATA_119B39:    db $D0,$A0,$70                                  ;

DATA_119B3C:    db $00,$04                                      ;

DATA_119B3E:    db $0A                                          ;

DATA_119B3F:    db $04,$0A,$00,$01,$01,$01                      ;

DATA_119B45:    db $01,$02,$04,$04,$04,$04,$08,$08              ;

DATA_119B4D:    db $00,$10,$F0                                  ;

DATA_119B50:    db $C2,$D4,$C3,$C4,$07,$80,$81,$9E              ;
                db $9F,$27,$18,$19                              ;

DATA_119B5C:    db $00,$FF                                      ;
    
DATA_119B5E:    db $EE,$DE                                      ;
 
DATA_119B60:    db $09,$A1                                      ;

DATA_119B62:    db $05,$0A,$0F,$14,$19                          ;

DATA_119B67:    db $FE,$02                                      ;

DATA_119B69:    db $FC,$00,$04,$00                              ;

DATA_119B6D:    db $FD,$03                                      ;

DATA_119B6F:    db $0C,$0A,$08,$05,$03,$02,$02,$02              ;
                db $02,$02                                      ;

DATA_119B79:    db $02,$00,$09                                  ;

DATA_119B7C:    db $00,$00,$D0,$30,$D0,$30,$D0,$30              ;

DATA_119B84:    db $18,$00,$18,$F8                              ;

DATA_119B88:    db $F0,$10                                      ;

DATA_119B8A:    db $02,$02,$01,$01,$02,$02,$02,$02              ;

DATA_119B92:    db $08,$08,$04,$04,$02,$02,$01,$01              ;

DATA_119B9A:    db $F0,$10                                      ;

DATA_119B9C:    db $00,$04,$08                                  ;

DATA_119B9F:    db $39,$39,$39,$3A,$36,$33,$32,$38              ;
                db $35,$37,$3E,$40,$3A,$09                      ;

DATA_119BAD:    db $39                                          ;

DATA_119BAE:    db $51                                          ;

DATA_119BAF:    db $50,$83,$52,$56,$91,$2A,$2B                  ;

DATA_119BB6:    db $0A                                          ;

DATA_119BB7:    db $01                                          ;

DATA_119BB8:    db $0B,$01                                      ;

DATA_119BBA:    db $02,$80,$00                                  ;

DATA_119BBD:    db $00,$08,$00,$04                              ;

DATA_119BC1:    db $40,$00,$80,$00,$C0,$00,$00,$01              ;
                db $40,$01,$80,$01,$C0,$01,$00,$02              ;
                db $10,$01,$50,$01,$90,$01,$D0,$01              ;
                db $10,$02,$50,$02,$90,$02,$D0,$02              ;
                db $E0,$01,$20,$02,$60,$02,$A0,$02              ;
                db $E0,$02,$20,$03,$60,$03,$A0,$03              ;
                db $B0,$00,$F0,$00,$30,$01,$70,$01              ;
                db $B0,$01,$F0,$01,$30,$02,$70,$02              ;

DATA_119C01:    db $00,$02,$D0,$02,$A0,$03,$70,$02              ;

DATA_119C09:    db $00,$00,$D0,$00,$A0,$01,$70,$00              ;

DATA_119C11:    db $00,$01,$02                                  ;

DATA_119C14:    db $C0,$80,$40                                  ;

PNTR_119C17:    dw $0302                                        ; 00 - RAM table.
                dw DATA_119C2D                                  ; 01 - Layer 1 data for the 'fairies getting out of jar' room.
                dw DATA_11A444                                  ; 02 - Layer 1 data ('Contributor' box and fairy crowd) during the "dragging off Wart" scene.
                dw DATA_11A869                                  ; 03 - Layer 2 data (the windows) during the "dragging off Wart" scene.
                dw DATA_11A9A2                                  ;
                dw DATA_11AA2B                                  ;
                dw DATA_11AA9C                                  ;
                dw DATA_11AAB1                                  ;
                dw DATA_11AAC6                                  ;
                dw DATA_11AADB                                  ;
                dw DATA_11A3EC                                  ;

DATA_119C2D:    db $00,$00,$80,$3B,$0E,$11,$1E,$11              ;
                db $26,$11,$36,$11,$0E,$11,$1E,$11              ;
                db $26,$11,$36,$11,$0E,$11,$1E,$11              ;
                db $26,$11,$36,$11,$0E,$11,$1E,$11              ;
                db $26,$11,$36,$11,$0A,$11,$1A,$11              ;
                db $22,$11,$32,$11,$0A,$11,$1A,$11              ;
                db $22,$11,$32,$11,$0A,$11,$1A,$11              ;
                db $22,$11,$32,$11,$0A,$11,$1A,$11              ;
                db $00,$01,$80,$3B,$0F,$11,$1F,$11              ;
                db $27,$11,$37,$11,$0F,$11,$1F,$11              ;
                db $27,$11,$37,$11,$0F,$11,$1F,$11              ;
                db $27,$11,$37,$11,$0F,$11,$1F,$11              ;
                db $27,$11,$37,$11,$0B,$11,$1B,$11              ;
                db $23,$11,$33,$11,$0B,$11,$1B,$11              ;
                db $23,$11,$33,$11,$0B,$11,$1B,$11              ;
                db $23,$11,$33,$11,$0B,$11,$1B,$11              ;
                db $02,$02,$80,$1B,$06,$11,$16,$11              ;
                db $26,$11,$36,$11,$0E,$11,$1E,$11              ;
                db $26,$11,$36,$11,$0E,$11,$1E,$11              ;
                db $24,$11,$34,$11,$0C,$11,$1C,$11              ;
                db $02,$03,$80,$1B,$07,$11,$17,$11              ;
                db $27,$11,$37,$11,$0F,$11,$1F,$11              ;
                db $27,$11,$37,$11,$0F,$11,$1F,$11              ;
                db $25,$11,$35,$11,$0D,$11,$1D,$11              ;
                db $03,$44,$00,$2F,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$02,$11,$03,$11              ;
                db $04,$11,$05,$11,$03,$64,$00,$2F              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $12,$11,$13,$11,$14,$11,$15,$11              ;
                db $03,$84,$00,$2F,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$0A,$11,$0B,$11              ;
                db $0C,$11,$0D,$11,$03,$A4,$00,$2F              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $1A,$11,$1B,$11,$1C,$11,$1D,$11              ;
                db $02,$1C,$80,$1B,$00,$11,$10,$11              ;
                db $20,$11,$30,$11,$08,$11,$18,$11              ;
                db $20,$11,$30,$11,$08,$11,$18,$11              ;
                db $22,$11,$32,$11,$0A,$11,$1A,$11              ;
                db $02,$1D,$80,$1B,$01,$11,$11,$11              ;
                db $21,$11,$31,$11,$09,$11,$19,$11              ;
                db $21,$11,$31,$11,$09,$11,$19,$11              ;
                db $23,$11,$33,$11,$0B,$11,$1B,$11              ;
                db $00,$1E,$80,$3B,$08,$11,$18,$11              ;
                db $20,$11,$30,$11,$08,$11,$18,$11              ;
                db $20,$11,$30,$11,$08,$11,$18,$11              ;
                db $20,$11,$30,$11,$08,$11,$18,$11              ;
                db $20,$11,$30,$11,$0C,$11,$1C,$11              ;
                db $24,$11,$34,$11,$0C,$11,$1C,$11              ;
                db $24,$11,$34,$11,$0C,$11,$1C,$11              ;
                db $24,$11,$34,$11,$0C,$11,$1C,$11              ;
                db $00,$1F,$80,$3B,$09,$11,$19,$11              ;
                db $21,$11,$31,$11,$09,$11,$19,$11              ;
                db $21,$11,$31,$11,$09,$11,$19,$11              ;
                db $21,$11,$31,$11,$09,$11,$19,$11              ;
                db $21,$11,$31,$11,$0D,$11,$1D,$11              ;
                db $25,$11,$35,$11,$0D,$11,$1D,$11              ;
                db $25,$11,$35,$11,$0D,$11,$1D,$11              ;
                db $25,$11,$35,$11,$0D,$11,$1D,$11              ;
                db $02,$C6,$00,$03,$AC,$08,$AD,$08              ;
                db $02,$E6,$C0,$04,$AB,$08,$02,$E7              ;
                db $C0,$04,$AB,$08,$02,$90,$80,$07              ;
                db $88,$14,$89,$14,$89,$14,$8C,$14              ;
                db $02,$91,$80,$07,$8A,$14,$8B,$14              ;
                db $8B,$14,$8D,$14,$03,$0E,$00,$0B              ;
                db $74,$18,$76,$18,$74,$18,$76,$18              ;
                db $74,$18,$76,$18,$03,$2E,$00,$0B              ;
                db $75,$18,$77,$18,$75,$18,$77,$18              ;
                db $75,$18,$77,$18,$02,$C6,$80,$07              ;
                db $A0,$14,$A3,$14,$B0,$14,$B1,$14              ;
                db $02,$C7,$80,$07,$A0,$54,$A3,$54              ;
                db $B0,$54,$B1,$54,$10,$02,$00,$37              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $10,$23,$40,$34,$70,$1D,$10,$22              ;
                db $00,$01,$71,$5D,$10,$27,$00,$03              ;
                db $71,$1D,$71,$5D,$10,$2D,$00,$03              ;
                db $71,$1D,$71,$5D,$10,$33,$00,$03              ;
                db $71,$1D,$71,$5D,$10,$39,$00,$03              ;
                db $71,$1D,$71,$5D,$10,$47,$C0,$06              ;
                db $5F,$5D,$10,$4D,$C0,$06,$5F,$5D              ;
                db $10,$53,$C0,$06,$5F,$5D,$10,$59              ;
                db $C0,$06,$5F,$5D,$10,$42,$C0,$06              ;
                db $5F,$1D,$10,$48,$C0,$06,$5F,$1D              ;
                db $10,$4E,$C0,$06,$5F,$1D,$10,$54              ;
                db $C0,$06,$5F,$1D,$10,$5A,$C0,$06              ;
                db $5F,$1D,$10,$C3,$40,$34,$70,$9D              ;
                db $10,$C2,$00,$01,$71,$DD,$10,$C7              ;
                db $00,$03,$71,$9D,$71,$DD,$10,$CD              ;
                db $00,$03,$71,$9D,$71,$DD,$10,$D3              ;
                db $00,$03,$71,$9D,$71,$DD,$10,$D9              ;
                db $00,$03,$71,$9D,$71,$DD,$10,$43              ;
                db $00,$07,$43,$05,$44,$05,$45,$05              ;
                db $46,$05,$10,$4F,$00,$07,$43,$05              ;
                db $44,$05,$45,$05,$46,$05,$10,$5B              ;
                db $00,$05,$43,$05,$44,$05,$45,$05              ;
                db $10,$63,$00,$07,$53,$05,$54,$05              ;
                db $55,$05,$56,$05,$10,$6F,$00,$07              ;
                db $53,$05,$54,$05,$55,$05,$56,$05              ;
                db $10,$7B,$00,$05,$53,$05,$54,$05              ;
                db $55,$05,$10,$83,$00,$07,$63,$05              ;
                db $64,$05,$65,$05,$66,$05,$10,$8F              ;
                db $00,$07,$63,$05,$64,$05,$65,$05              ;
                db $66,$05,$10,$9B,$00,$05,$63,$05              ;
                db $64,$05,$65,$05,$10,$A3,$00,$07              ;
                db $73,$05,$74,$05,$75,$05,$76,$05              ;
                db $10,$AF,$00,$07,$73,$05,$74,$05              ;
                db $75,$05,$76,$05,$10,$BB,$00,$05              ;
                db $73,$05,$74,$05,$75,$05,$10,$49              ;
                db $00,$07,$47,$05,$48,$05,$49,$05              ;
                db $4A,$05,$10,$55,$00,$07,$47,$05              ;
                db $48,$05,$49,$05,$4A,$05,$10,$69              ;
                db $00,$07,$57,$05,$58,$05,$59,$05              ;
                db $5A,$05,$10,$75,$00,$07,$57,$05              ;
                db $58,$05,$59,$05,$5A,$05,$10,$89              ;
                db $00,$07,$67,$05,$68,$05,$69,$05              ;
                db $6A,$05,$10,$95,$00,$07,$67,$05              ;
                db $68,$05,$69,$05,$6A,$05,$10,$A9              ;
                db $00,$07,$77,$05,$78,$05,$79,$05              ;
                db $7A,$05,$10,$B5,$00,$07,$77,$05              ;
                db $78,$05,$79,$05,$7A,$05,$10,$E2              ;
                db $80,$13,$41,$1D,$40,$1D,$60,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$60,$1D,$40,$1D,$10,$E3              ;
                db $80,$13,$40,$1D,$41,$1D,$61,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$61,$1D,$41,$1D,$10,$E4              ;
                db $80,$25,$41,$1D,$50,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $40,$1D,$51,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $10,$E5,$80,$25,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $40,$1D,$60,$1D,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$10,$E6,$80,$25,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$61,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$51,$1D,$10,$E7,$80,$25              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$60,$1D              ;
                db $40,$1D,$51,$1D,$50,$1D,$41,$1D              ;
                db $40,$1D,$51,$1D,$40,$1D,$10,$E8              ;
                db $80,$25,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$51,$1D,$40,$1D,$41,$1D              ;
                db $61,$1D,$41,$1D,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $10,$E9,$80,$25,$40,$1D,$41,$1D              ;
                db $40,$1D,$51,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$10,$EA,$80,$11,$41,$1D              ;
                db $40,$1D,$60,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$4E,$1D,$5C,$1D,$5E,$1D              ;
                db $10,$EB,$80,$11,$40,$1D,$41,$1D              ;
                db $61,$1D,$41,$1D,$40,$1D,$4B,$1D              ;
                db $4F,$1D,$5D,$1D,$6B,$1D,$10,$EC              ;
                db $80,$0D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$7C,$1D,$4C,$1D,$4D,$1D              ;
                db $10,$ED,$80,$0B,$40,$1D,$41,$1D              ;
                db $40,$1D,$42,$1D,$7D,$1D,$4D,$1D              ;
                db $10,$EE,$80,$09,$41,$1D,$40,$1D              ;
                db $41,$1D,$52,$1D,$7E,$1D,$10,$EF              ;
                db $80,$09,$40,$1D,$41,$1D,$40,$1D              ;
                db $62,$1D,$7F,$1D,$10,$F0,$80,$07              ;
                db $41,$1D,$40,$1D,$41,$1D,$72,$1D              ;
                db $12,$0A,$C0,$12,$7B,$1D,$12,$17              ;
                db $C0,$12,$7B,$5D,$10,$F7,$80,$11              ;
                db $40,$1D,$40,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$4E,$5D,$5C,$5D              ;
                db $5E,$5D,$10,$F6,$80,$11,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $4B,$5D,$4F,$5D,$5D,$5D,$6B,$5D              ;
                db $10,$F5,$80,$0D,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$7C,$5D,$4C,$5D              ;
                db $4D,$5D,$10,$F4,$80,$0B,$41,$1D              ;
                db $50,$1D,$41,$1D,$42,$5D,$7D,$5D              ;
                db $4D,$5D,$10,$F3,$80,$09,$40,$1D              ;
                db $41,$1D,$40,$5D,$52,$5D,$7E,$5D              ;
                db $10,$F2,$80,$09,$41,$1D,$40,$1D              ;
                db $41,$1D,$62,$5D,$7F,$5D,$10,$F1              ;
                db $80,$07,$40,$1D,$41,$1D,$40,$1D              ;
                db $72,$5D,$10,$F8,$80,$25,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$10,$F9,$80,$25              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$10,$FA              ;
                db $80,$25,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $10,$FB,$80,$25,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$60,$1D              ;
                db $50,$1D,$51,$1D,$40,$1D,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$41,$1D,$40,$1D,$51,$1D              ;
                db $40,$1D,$10,$FC,$80,$13,$41,$1D              ;
                db $50,$1D,$41,$1D,$40,$1D,$41,$1D              ;
                db $61,$1D,$51,$1D,$40,$1D,$41,$1D              ;
                db $40,$1D,$10,$FD,$80,$13,$40,$1D              ;
                db $51,$1D,$40,$1D,$41,$1D,$50,$1D              ;
                db $41,$1D,$40,$1D,$41,$1D,$40,$1D              ;
                db $41,$1D,$12,$4B,$00,$17,$6C,$1D              ;
                db $6D,$1D,$6C,$1D,$6D,$1D,$6C,$1D              ;
                db $6D,$1D,$6C,$1D,$6D,$1D,$6C,$1D              ;
                db $6D,$1D,$6C,$1D,$6D,$1D,$12,$6B              ;
                db $00,$17,$6E,$1D,$6F,$1D,$6F,$5D              ;
                db $6E,$5D,$6E,$1D,$6F,$1D,$6F,$5D              ;
                db $6E,$5D,$6E,$1D,$6F,$1D,$6F,$5D              ;
                db $6E,$5D,$12,$8B,$40,$16,$5B,$1D              ;
                db $12,$AB,$40,$16,$5B,$1D,$12,$CB              ;
                db $40,$16,$5B,$1D,$12,$EB,$40,$16              ;
                db $5B,$1D,$13,$0B,$40,$16,$5B,$1D              ;
                db $13,$2B,$40,$16,$5B,$1D,$FF                  ;

DATA_11A3EC:    db $30,$80,$80,$80,$80,$80,$80,$80              ;
                db $80,$80                                      ;

DATA_11A3F6:    db $B0,$A0,$A0,$A0,$A0,$A0,$A0,$A0              ;
                db $A0,$95                                      ;

DATA_11A400:    db $10,$F4,$0C,$E8,$18,$EC,$14,$F8              ;
                db $08,$00                                      ;

DATA_11A40A:    db $00,$C4,$C4,$B8,$B8,$A8,$A8,$A0              ;
                db $A0,$00                                      ;

DATA_11A414:    db $00,$F0,$E0,$C0,$A0,$80,$60,$40              ;
                db $20,$00                                      ;

DATA_11A41E:    db $00                                          ;

DATA_11A41F:    db $21,$61,$21,$61,$21,$61,$21                  ;
                db $61                                          ;

DATA_11A427:    db $22,$14,$0A,$14                              ;

DATA_11A42B:    db $0A,$1C,$1B,$1E,$1D,$1F                      ;

DATA_11A431:    db $04,$04                                      ;
                db $04,$01                                      ;

DATA_11A435:    db $A4                                          ;
 
DATA_11A436:    db $A6,$A6,$A4,$8E,$8E                          ;

DATA_11A43B:    db $90,$98,$A0,$A8,$B0,$B8,$C0,$C8              ;
                db $00                                          ;
               
DATA_11A444:    db $00,$00,$00,$3F,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$1A,$1D,$1B,$1D              ;
                db $1A,$1D,$1B,$1D,$00,$20,$00,$3F              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $2A,$1D,$2B,$1D,$2A,$1D,$2B,$1D              ;
                db $00,$40,$00,$3F,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$3A,$1D,$3B,$1D              ;
                db $3A,$1D,$3B,$1D,$00,$68,$00,$01              ;
                db $F8,$14,$00,$69,$40,$1A,$F9,$14              ;
                db $00,$77,$00,$01,$FA,$14,$00,$88              ;
                db $C0,$04,$FB,$14,$00,$89,$40,$1A              ;
                db $BE,$14,$00,$A9,$40,$1A,$BE,$14              ;
                db $00,$C9,$40,$1A,$BE,$14,$00,$97              ;
                db $C0,$04,$FC,$14,$00,$E8,$00,$01              ;
                db $FD,$14,$00,$E9,$40,$1A,$FE,$14              ;
                db $00,$F7,$00,$01,$FF,$14,$00,$8B              ;
                db $00,$15,$CC,$15,$D8,$15,$D7,$15              ;
                db $DD,$15,$DB,$15,$D2,$15,$CB,$15              ;
                db $DE,$15,$DD,$15,$D8,$15,$DB,$15              ;
                db $01,$08,$00,$1F,$EC,$15,$ED,$15              ;
                db $ED,$15,$EE,$15,$EC,$15,$ED,$15              ;
                db $ED,$15,$EE,$15,$EC,$15,$ED,$15              ;
                db $ED,$15,$EE,$15,$EC,$15,$ED,$15              ;
                db $ED,$15,$EE,$15,$01,$28,$00,$01              ;
                db $EF,$15,$01,$37,$00,$01,$FF,$15              ;
                db $01,$48,$00,$1F,$FC,$15,$FD,$15              ;
                db $FD,$15,$FE,$15,$FC,$15,$FD,$15              ;
                db $FD,$15,$FE,$15,$FC,$15,$FD,$15              ;
                db $FD,$15,$FE,$15,$FC,$15,$FD,$15              ;
                db $FD,$15,$FE,$15,$03,$00,$00,$3F              ;
                db $C0,$18,$C1,$18,$C2,$18,$C3,$18              ;
                db $C4,$18,$C5,$18,$C6,$18,$C7,$18              ;
                db $C0,$18,$C1,$18,$C2,$18,$C3,$18              ;
                db $C4,$18,$C5,$18,$C8,$18,$C9,$18              ;
                db $C0,$18,$C1,$18,$C2,$18,$C3,$18              ;
                db $C4,$18,$C5,$18,$C6,$18,$C7,$18              ;
                db $C0,$18,$C1,$18,$C8,$18,$C9,$18              ;
                db $C4,$18,$C5,$18,$C6,$18,$C7,$18              ;
                db $03,$20,$00,$3F,$D0,$18,$D1,$18              ;
                db $D2,$18,$D3,$18,$D4,$18,$D5,$18              ;
                db $D6,$18,$D7,$18,$D0,$18,$D1,$18              ;
                db $D2,$18,$D3,$18,$D4,$18,$D5,$18              ;
                db $D8,$18,$D9,$18,$D0,$18,$D1,$18              ;
                db $D2,$18,$D3,$18,$D4,$18,$D5,$18              ;
                db $D6,$18,$D7,$18,$D0,$18,$D1,$18              ;
                db $D8,$18,$D9,$18,$D4,$18,$D5,$18              ;
                db $D6,$18,$D7,$18,$07,$00,$00,$3F              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $CA,$18,$CB,$18,$CA,$18,$CB,$18              ;
                db $07,$20,$00,$3F,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$DA,$18,$DB,$18              ;
                db $DA,$18,$DB,$18,$03,$40,$00,$3F              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $03,$60,$00,$3F,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$03,$80,$00,$3F              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $07,$40,$00,$3F,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$04,$1D,$05,$1D              ;
                db $04,$1D,$05,$1D,$07,$60,$00,$3F              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $14,$1D,$15,$1D,$14,$1D,$15,$1D              ;
                db $07,$80,$00,$3F,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$0A,$1D,$0B,$1D              ;
                db $0A,$1D,$0B,$1D,$FF                          ;

DATA_11A869:    db $12,$80,$40,$3F,$E2,$10,$12,$A0              ;
                db $40,$3F,$E3,$10,$12,$C0,$40,$3F              ;
                db $E3,$10,$12,$E0,$40,$3F,$E3,$10              ;
                db $13,$00,$40,$3F,$E3,$10,$13,$20              ;
                db $40,$3F,$E4,$10,$10,$C3,$00,$07              ;
                db $E5,$10,$E7,$10,$E9,$10,$EB,$10              ;
                db $10,$E3,$00,$07,$E6,$10,$E8,$10              ;
                db $EA,$10,$EC,$10,$11,$03,$00,$07              ;
                db $ED,$10,$F0,$10,$F3,$10,$F5,$10              ;
                db $11,$23,$C0,$0C,$EE,$10,$11,$24              ;
                db $C0,$0C,$F1,$10,$11,$25,$C0,$0C              ;
                db $F4,$10,$11,$26,$C0,$0C,$F6,$10              ;
                db $12,$03,$00,$07,$EF,$10,$F2,$10              ;
                db $F2,$10,$F7,$10,$10,$D9,$00,$07              ;
                db $E5,$10,$E7,$10,$E9,$10,$EB,$10              ;
                db $10,$F9,$00,$07,$E6,$10,$E8,$10              ;
                db $EA,$10,$EC,$10,$11,$19,$00,$07              ;
                db $ED,$10,$F0,$10,$F3,$10,$F5,$10              ;
                db $11,$39,$C0,$0C,$EE,$10,$11,$3A              ;
                db $C0,$0C,$F1,$10,$11,$3B,$C0,$0C              ;
                db $F4,$10,$11,$3C,$C0,$0C,$F6,$10              ;
                db $12,$19,$00,$07,$EF,$10,$F2,$10              ;
                db $F2,$10,$F7,$10,$11,$C9,$40,$1A              ;
                db $E0,$08,$11,$E9,$40,$1A,$E1,$08              ;
                db $12,$09,$00,$1B,$CE,$08,$CF,$08              ;
                db $CE,$08,$CF,$08,$CE,$08,$CF,$08              ;
                db $CE,$08,$CF,$08,$CE,$08,$CF,$08              ;
                db $CE,$08,$CF,$08,$CE,$08,$CF,$08              ;
                db $12,$29,$00,$1B,$DE,$08,$DF,$08              ;
                db $DE,$08,$DF,$08,$DE,$08,$DF,$08              ;
                db $DE,$08,$DF,$08,$DE,$08,$DF,$08              ;
                db $DE,$08,$DF,$08,$DE,$08,$DF,$08              ;
                db $12,$4A,$00,$03,$CC,$08,$CD,$08              ;
                db $12,$6A,$C0,$0A,$DC,$08,$12,$6B              ;
                db $C0,$0A,$DD,$08,$13,$2A,$00,$03              ;
                db $CC,$88,$CD,$88,$12,$54,$00,$03              ;
                db $CC,$08,$CD,$08,$12,$74,$C0,$0A              ;
                db $DC,$08,$12,$75,$C0,$0A,$DD,$08              ;
                db $13,$34,$00,$03,$CC,$88,$CD,$88              ;
                db $FF                                          ;

DATA_11A9A2:    db $03,$00,$00,$3F,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$C8,$18,$C9,$18              ;
                db $C8,$18,$C9,$18,$03,$20,$00,$3F              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $D8,$18,$D9,$18,$D8,$18,$D9,$18              ;
                db $FF                                          ;

DATA_11AA2B:    db $01,$AC,$00,$0D,$ED,$00,$E1,$00              ;
                db $DE,$00,$FB,$00,$DE,$00,$E7,$00              ;
                db $DD,$00,$FF                                  ;

DATA_11AA3E:    db $50,$4F,$CA,$21,$50,$5F,$CC,$21              ;
                db $68,$4F,$CE,$23,$68,$5F,$E6,$23              ;
                db $88,$4F,$EC,$27,$88,$5F,$EE,$27              ;
                db $A0,$4F,$E8,$25,$A0,$5F,$EA,$25              ;

DATA_11AA5E:    db $C0,$C8,$B8,$B8,$C8,$C0                      ;

DATA_11AA64:    db $C0,$08,$E0,$F0,$D0,$E8                      ;

DATA_11AA6A:    db $C0,$C2,$C4,$E0,$E2,$E4                      ;

DATA_11AA70:    db $00,$10,$20,$00,$10,$20                      ;

DATA_11AA76:    db $00,$00,$00,$10,$10,$10                      ;

DATA_11AA7C:    db $C8,$C6,$C7,$C6,$C7,$C8                      ;

DATA_11AA82:    db $00,$06,$03,$09,$0F,$0C                      ;

DATA_11AA88:    db $CA,$8A,$CC,$8C,$CE,$8E,$E6,$A0              ;
                db $EC,$EC,$EE,$A4,$E8,$A2,$EA,$EA              ;

DATA_11AA98:    db $02,$06,$0A,$0E                              ;

DATA_11AA9C:    db $00,$CC,$00,$0F,$BE,$14,$D6,$15              ;
                db $CA,$15,$DB,$15,$D2,$15,$D8,$15              ;
                db $BE,$14,$BE,$14,$FF                          ;

DATA_11AAB1:    db $00,$CC,$00,$0F,$D9,$15,$DB,$15              ;
                db $D2,$15,$D7,$15,$CC,$15,$CE,$15              ;
                db $DC,$15,$DC,$15,$FF                          ;

DATA_11AAC6:    db $00,$CC,$00,$0F,$BE,$14,$BE,$14              ;
                db $DD,$15,$D8,$15,$CA,$15,$CD,$15              ;
                db $BE,$14,$BE,$14,$FF                          ;

DATA_11AADB:    db $00,$CC,$00,$0F,$BE,$14,$D5,$15              ;
                db $DE,$15,$D2,$15,$D0,$15,$D2,$15              ;
                db $BE,$14,$BE,$14,$FF                          ;

DATA_11AAF0:    db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90              ;
                db $80,$70,$60                                  ;

DATA_11AAFB:    db $20,$20,$21,$22,$23,$24,$25,$26              ;
                db $27,$28,$29                                  ;

DATA_11AB06:    db $7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E              ;
                db $7E,$7E,$7E                                  ;

DATA_11AB11:    db $00,$0B,$16,$21,$2C,$37,$42,$4D              ;
                db $58,$63                                      ;

DATA_11AB1B:    db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90              ;
                db $80,$70                                      ;

DATA_11AB25:    db $C0,$C0,$C1,$C2,$C3,$C4,$C5,$C6              ;
                db $C7,$C8                                      ;
                 
DATA_11AB2F:    db $F0,$10                                      ;

DATA_11AB31:    db $02,$01,$02,$02,$00,$00,$00,$00              ;

DATA_11AB39:    db $08,$04,$02,$01,$08,$04,$02,$01              ;

DATA_11AB41:    db $F8,$08                                      ;

DATA_11AB43:    db $08,$04                                      ;

DATA_11AB45:    db $0C,$11                                      ;

DATA_11AB47:    db $F9,$FF,$00,$00,$0C,$18,$1A,$01              ;
                db $06,$0A,$0C,$18,$1A,$1C,$FF,$FF              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00                              ;

DATA_11AB63:    db $80,$80,$80,$80,$82,$80,$80,$80              ;
                db $82,$82,$80,$80,$82,$82,$82,$80              ;
                db $82,$82,$82,$82                              ;

DATA_11AB77:    db $00,$03,$00,$FD                              ;

DATA_11AB7B:    db $1F,$02,$E0,$13,$51,$7E,$1F,$02              ;

DATA_11AB83:    db $08,$77,$FF,$7F,$18                          ;

PNTR_11AB88:    db $A4,$E4,$24,$64,$A4,$E4,$24                  ;

PNTR_11AB8F:    db $C4,$04,$44,$84,$C4,$04,$44                  ;

PNTR_11AB96:    db $AB,$AB,$AC,$AC,$AC,$AC,$AD                  ;

PNTR_11AB9D:    db $AB,$AC,$AC,$AC,$AC,$AD,$AD                  ;

                db $00,$A7,$DB,$00,$00,$A7,$A7,$A7              ;
                db $00,$AE,$AE,$AE,$00,$B0,$B0,$B0              ;
                db $00,$DC,$A9,$2C,$00,$AE,$AE,$A7              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AB,$AC,$C6,$00,$05,$AE,$00              ;
                db $00,$00,$00,$00,$00,$00,$B0,$00              ;
                db $00,$00,$C2,$00,$00,$00,$AE,$00              ;
                db $00,$9D,$AC,$C6,$00,$40,$AC,$C6              ;

                db $00,$A7,$A7,$A7,$00,$92,$92,$92              ;
                db $00,$93,$93,$93,$00,$AE,$AE,$AE              ;
                db $00,$B0,$B0,$B0,$00,$DC,$A9,$2C              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AB,$AC,$C6,$00,$9D,$AE,$00              ;
                db $00,$40,$A9,$40,$00,$9D,$AC,$C6              ;
                db $00,$40,$AC,$C6,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$A7,$DB,$00,$00,$A7,$A7,$A7              ;
                db $00,$AE,$AE,$AE,$00,$B0,$B0,$B0              ;
                db $00,$DC,$A9,$2C,$00,$AE,$AE,$A7              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$C6,$AC,$AB,$00,$05,$AE,$00              ;
                db $00,$9D,$AC,$C6,$00,$00,$B0,$00              ;
                db $00,$00,$C2,$00,$00,$00,$AE,$00              ;
                db $00,$40,$AC,$C6,$00,$06,$AE,$00              ;

                db $00,$A7,$DB,$00,$00,$A7,$26,$00              ;
                db $00,$AE,$AE,$AE,$00,$B0,$B0,$B0              ;
                db $00,$DC,$A9,$2C,$00,$0A,$0A,$08              ;
                db $00,$33,$33,$33,$00,$00,$00,$00              ;

                db $00,$C6,$A7,$AB,$00,$B0,$B0,$B0              ;
                db $00,$A9,$A9,$A9,$00,$AE,$AE,$AE              ;
                db $00,$DC,$DC,$DC,$00,$2C,$2C,$2C              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$A7,$DB,$40,$00,$A7,$A7,$A7              ;
                db $00,$AE,$AE,$AE,$00,$B0,$B0,$B0              ;
                db $00,$DC,$A9,$2C,$00,$AE,$AE,$A7              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AB,$AC,$C6,$00,$05,$AE,$00              ;
                db $00,$40,$00,$00,$00,$00,$B0,$00              ;
                db $00,$00,$C2,$00,$00,$00,$AE,$00              ;
                db $00,$9D,$AC,$C6,$00,$40,$AC,$C6              ;

                db $00,$A7,$A7,$A7,$00,$92,$92,$92              ;
                db $00,$93,$93,$93,$00,$AE,$AE,$AE              ;
                db $00,$B0,$B0,$B0,$00,$DC,$A9,$2C              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AB,$AC,$C6,$00,$9D,$AE,$00              ;
                db $00,$40,$2C,$40,$00,$9D,$AC,$C6              ;
                db $00,$40,$AC,$C6,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AA,$AA,$AA,$00,$DD,$AA,$2D              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

                db $00,$AA,$AA,$AA,$00,$05,$AE,$00              ;
                db $00,$00,$00,$00,$00,$00,$AA,$00              ;
                db $00,$00,$C2,$00,$00,$00,$AE,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;

DATA_11AD64:    db $6C,$6C,$6C,$6C                              ;

DATA_11AD68:    db $AD,$AF,$B1,$B3                              ;

                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$B4,$0C,$BF,$00,$B5,$0C              ;
                db $B6,$0C,$B8,$0C,$B7,$0C,$B9,$0C              ;
                db $B2,$0C,$B3,$0C,$BF,$00,$BF,$00              ;
                db $0B,$0C,$0B,$0C,$0C,$0C,$0C,$4C              ;
                db $0C,$0C,$0C,$4C,$0C,$0C,$0C,$4C              ;
                db $24,$0C,$26,$0C,$25,$0C,$27,$0C              ;
                db $9E,$08,$9F,$08,$9E,$08,$9F,$08              ;
                db $0F,$2C,$0F,$2C,$0A,$2C,$0A,$2C              ;
                db $46,$14,$3A,$14,$46,$14,$3A,$14              ;
                db $0A,$2C,$0A,$2C,$0A,$2C,$0A,$2C              ;
                db $3A,$14,$3A,$14,$3A,$14,$3A,$14              ;
                db $10,$2C,$10,$2C,$0A,$2C,$0A,$2C              ;
                db $3A,$14,$48,$14,$3A,$14,$48,$14              ;
                db $44,$14,$45,$14,$46,$14,$3A,$14              ;
                db $45,$14,$45,$14,$3A,$14,$3A,$14              ;
                db $45,$14,$48,$14,$3A,$14,$48,$14              ;
                db $0F,$2C,$12,$2C,$0A,$2C,$0A,$2C              ;
                db $BF,$04,$D6,$04,$BF,$04,$DD,$04              ;
                db $BF,$04,$BF,$04,$E2,$04,$BF,$04              ;
                db $BF,$04,$EE,$04,$BF,$04,$E3,$04              ;
                db $F2,$04,$BF,$04,$E9,$04,$BF,$04              ;
                db $0F,$2C,$23,$2C,$0A,$2C,$0A,$2C              ;
                db $11,$2C,$0F,$2C,$0A,$2C,$0A,$2C              ;
                db $9E,$08,$9F,$08,$A6,$08,$A7,$08              ;
                db $A6,$88,$A7,$88,$9E,$08,$9F,$08              ;
                db $C0,$18,$C1,$18,$BF,$00,$BF,$00              ;
                db $CA,$10,$CB,$10,$D0,$10,$D1,$10              ;
                db $C6,$10,$C7,$10,$C7,$10,$C6,$10              ;
                db $CC,$10,$CD,$10,$C7,$10,$C6,$10              ;
                db $CE,$10,$CF,$10,$D2,$10,$D3,$10              ;
                db $C2,$18,$C3,$18,$BF,$00,$BF,$00              ;
                db $C4,$10,$C5,$10,$D0,$10,$D1,$10              ;
                db $C8,$10,$C9,$10,$D2,$10,$D3,$10              ;
                db $74,$18,$76,$18,$75,$18,$77,$18              ;
                db $1B,$0C,$1D,$0C,$1C,$0C,$1E,$0C              ;
                db $1F,$0C,$1D,$0C,$20,$0C,$1E,$0C              ;
                db $1F,$0C,$21,$0C,$1E,$0C,$22,$0C              ;
                db $58,$0C,$5A,$0C,$59,$0C,$5B,$0C              ;
                db $9E,$08,$9F,$08,$9E,$08,$9F,$08              ;
                db $DA,$10,$DB,$10,$BF,$00,$BF,$00              ;
                db $D8,$10,$D9,$10,$D4,$10,$D5,$10              ;
                db $D8,$10,$D9,$10,$CD,$10,$CC,$10              ;
                db $D8,$10,$D9,$10,$CE,$10,$CF,$10              ;
                db $8E,$10,$8F,$10,$8F,$10,$8E,$10              ;
                db $72,$08,$73,$08,$73,$08,$72,$08              ;
                db $19,$18,$19,$18,$1A,$18,$1A,$18              ;
                db $92,$00,$93,$00,$93,$00,$92,$00              ;
                db $74,$18,$76,$18,$75,$18,$77,$18              ;
                db $70,$10,$72,$10,$71,$10,$73,$10              ;
                db $71,$10,$73,$10,$71,$10,$73,$10              ;
                db $6C,$08,$6E,$08,$6D,$08,$6F,$08              ;
                db $32,$10,$34,$10,$33,$10,$35,$10              ;
                db $33,$10,$35,$10,$33,$10,$35,$10              ;
                db $4A,$08,$4B,$08,$4C,$08,$4D,$08              ;
                db $30,$10,$72,$10,$31,$10,$73,$10              ;
                db $70,$10,$3E,$10,$71,$10,$3F,$10              ;
                db $3C,$10,$AF,$10,$3D,$10,$AE,$10              ;
                db $AE,$10,$5E,$10,$AF,$10,$5F,$10              ;
                db $4F,$10,$A3,$10,$4E,$10,$4F,$10              ;
                db $C9,$D0,$C8,$D0,$D3,$D0,$D2,$D0              ;
                db $C5,$D0,$C4,$D0,$D1,$D0,$D0,$D0              ;
                db $C6,$10,$C7,$10,$C7,$10,$C6,$10              ;
                db $C4,$10,$C5,$10,$D0,$10,$D1,$10              ;

                db $BF,$04,$BF,$04,$BF,$04,$BF,$04              ;
                db $BF,$04,$BF,$04,$BF,$04,$BF,$04              ;
                db $BF,$04,$BF,$04,$BF,$04,$BF,$04              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $BF,$04,$BF,$04,$00,$14,$01,$14              ;
                db $15,$14,$17,$14,$16,$14,$18,$14              ;
                db $80,$14,$82,$14,$81,$14,$83,$14              ;
                db $A9,$18,$86,$14,$AA,$18,$87,$14              ;
                db $84,$14,$86,$14,$85,$14,$87,$14              ;
                db $AB,$08,$AB,$08,$AB,$08,$AB,$08              ;
                db $AD,$08,$BF,$00,$AC,$08,$AD,$08              ;
                db $AC,$08,$AC,$08,$AC,$08,$AC,$08              ;
                db $BF,$08,$3B,$08,$3B,$08,$AC,$08              ;
                db $AB,$08,$AB,$08,$AB,$08,$AB,$08              ;
                db $F4,$04,$86,$04,$F5,$04,$87,$04              ;
                db $BF,$04,$49,$04,$49,$04,$BF,$04              ;
                db $E4,$24,$E4,$24,$E4,$24,$E4,$24              ;
                db $E4,$04,$E4,$04,$E4,$04,$E5,$04              ;
                db $98,$14,$9A,$14,$99,$14,$9B,$14              ;
                db $CB,$24,$CB,$24,$E4,$24,$E4,$24              ;
                db $6E,$14,$6F,$14,$70,$14,$71,$14              ;
                db $57,$08,$57,$08,$BF,$00,$BF,$00              ;
                db $57,$08,$57,$08,$93,$10,$92,$10              ;
                db $2E,$54,$2E,$54,$BF,$04,$BF,$04              ;
                db $2E,$14,$2E,$14,$BF,$04,$BF,$04              ;
                db $C4,$10,$C5,$10,$D0,$10,$D1,$10              ;
                db $C8,$10,$C9,$10,$D2,$10,$D3,$10              ;
                db $7C,$14,$7E,$14,$7D,$14,$7F,$14              ;
                db $CA,$04,$CC,$04,$CB,$04,$CD,$04              ;
                db $CA,$04,$CC,$04,$CB,$04,$CD,$04              ;
                db $02,$14,$04,$14,$03,$14,$05,$14              ;
                db $2C,$04,$2E,$04,$2D,$04,$2F,$04              ;
                db $8E,$04,$8F,$04,$8F,$04,$8E,$04              ;
                db $88,$14,$8A,$14,$89,$14,$8B,$14              ;
                db $89,$14,$8B,$14,$89,$14,$8B,$14              ;
                db $89,$14,$8B,$14,$8C,$14,$8D,$14              ;
                db $88,$14,$8A,$14,$8C,$14,$8D,$14              ;
                db $88,$14,$8A,$14,$89,$14,$8B,$14              ;
                db $88,$14,$8A,$14,$89,$14,$8B,$14              ;
                db $6A,$18,$6C,$18,$6B,$18,$6D,$18              ;
                db $6C,$18,$6C,$18,$6D,$18,$6D,$18              ;
                db $6C,$18,$6E,$18,$6D,$18,$6F,$18              ;
                db $6C,$18,$54,$18,$6D,$18,$55,$18              ;
                db $32,$10,$34,$10,$33,$10,$35,$10              ;
                db $33,$10,$35,$10,$33,$10,$35,$10              ;
                db $C8,$10,$C9,$10,$D2,$10,$D3,$10              ;
                db $10,$12,$11,$12,$10,$12,$11,$12              ;
                db $12,$12,$11,$12,$10,$12,$11,$12              ;
                db $10,$12,$13,$12,$10,$12,$11,$12              ;
                db $10,$12,$11,$12,$14,$12,$11,$12              ;
                db $10,$12,$11,$12,$10,$12,$15,$12              ;
                db $1A,$12,$1B,$12,$1A,$12,$1B,$12              ;
                db $16,$12,$17,$12,$1A,$12,$11,$12              ;
                db $18,$12,$19,$12,$10,$12,$1B,$12              ;
                db $1A,$12,$11,$12,$1C,$12,$1D,$12              ;

                db $94,$08,$95,$08,$94,$08,$95,$08              ;
                db $94,$08,$95,$08,$94,$08,$95,$08              ;
                db $48,$08,$49,$08,$48,$08,$49,$08              ;
                db $BE,$08,$BE,$08,$BE,$08,$BE,$08              ;
                db $BF,$00,$32,$0C,$32,$0C,$33,$0C              ;
                db $44,$0C,$44,$0C,$44,$0C,$44,$0C              ;
                db $45,$0C,$45,$0C,$45,$0C,$45,$0C              ;
                db $34,$0C,$BF,$00,$35,$0C,$34,$0C              ;
                db $33,$0C,$44,$0C,$44,$0C,$44,$0C              ;
                db $45,$0C,$35,$0C,$45,$0C,$45,$0C              ;
                db $BF,$00,$32,$0C,$C0,$0C,$C1,$0C              ;
                db $33,$0C,$44,$0C,$C2,$0C,$C2,$0C              ;
                db $44,$0C,$44,$0C,$C2,$0C,$C2,$0C              ;
                db $45,$0C,$45,$0C,$C3,$0C,$C3,$0C              ;
                db $45,$0C,$35,$0C,$C3,$0C,$C3,$0C              ;
                db $34,$0C,$BF,$00,$C4,$0C,$C5,$0C              ;
                db $A0,$14,$A0,$54,$A3,$14,$A3,$54              ;
                db $B0,$14,$B0,$54,$B1,$14,$B1,$54              ;
                db $0D,$10,$0D,$10,$0D,$10,$0D,$10              ;
                db $0E,$10,$0E,$10,$0E,$10,$0E,$10              ;
                db $64,$00,$66,$00,$65,$00,$67,$00              ;
                db $68,$00,$6A,$00,$69,$00,$6B,$00              ;
                db $BF,$00,$6C,$00,$5C,$00,$5D,$00              ;
                db $6D,$00,$BF,$00,$5E,$00,$5F,$00              ;
                db $BF,$00,$6C,$00,$BF,$00,$54,$00              ;
                db $6D,$00,$BF,$00,$55,$00,$BF,$00              ;
                db $92,$10,$93,$10,$93,$10,$92,$10              ;
                db $AE,$18,$AF,$18,$AE,$18,$AF,$18              ;
                db $78,$18,$7A,$18,$79,$18,$7B,$18              ;
                db $58,$10,$59,$10,$AE,$10,$AF,$10              ;
                db $94,$08,$95,$08,$94,$08,$95,$08              ;
                db $94,$08,$95,$08,$94,$08,$95,$08              ;
                db $5A,$08,$5C,$08,$5B,$08,$5D,$08              ;
                db $C6,$10,$C7,$10,$C7,$10,$C6,$10              ;
                db $C0,$00,$C1,$00,$D0,$00,$D1,$00              ;
                db $C2,$00,$C3,$00,$D2,$00,$D3,$00              ;
                db $37,$08,$62,$08,$61,$08,$63,$08              ;
                db $64,$08,$38,$08,$65,$08,$67,$08              ;
                db $50,$08,$51,$08,$50,$08,$51,$08              ;
                db $AF,$10,$AE,$10,$AE,$10,$AF,$10              ;
                db $50,$08,$51,$08,$50,$08,$51,$08              ;
                db $8E,$08,$8F,$08,$8F,$08,$8E,$08              ;
                db $72,$18,$73,$18,$73,$18,$72,$18              ;
                db $50,$18,$52,$18,$51,$18,$53,$18              ;
                db $5A,$08,$5C,$08,$5B,$08,$5D,$08              ;
                db $96,$10,$4E,$10,$4E,$10,$4F,$10              ;
                db $4F,$10,$4E,$10,$4E,$10,$4F,$10              ;
                db $4E,$10,$4F,$10,$4F,$10,$4E,$10              ;
                db $92,$10,$93,$10,$93,$10,$92,$10              ;
                db $8E,$08,$8F,$08,$8F,$08,$8E,$08              ;
                db $54,$58,$6C,$58,$55,$58,$6D,$58              ;
                db $4F,$10,$37,$10,$4E,$10,$A0,$10              ;
                db $4F,$10,$3A,$10,$4E,$10,$A0,$10              ;
                db $4F,$10,$4E,$10,$37,$10,$38,$10              ;
                db $4A,$18,$4B,$18,$BE,$18,$BE,$18              ;
                db $72,$18,$73,$18,$4A,$18,$4B,$18              ;
                db $40,$10,$42,$10,$41,$10,$43,$10              ;
                db $41,$10,$43,$10,$41,$10,$43,$10              ;
                db $8E,$10,$8F,$10,$9D,$10,$A1,$10              ;
                db $8F,$10,$9C,$10,$A1,$10,$A2,$10              ;
                db $8E,$08,$8F,$08,$9D,$08,$A1,$08              ;
                db $8F,$08,$9C,$08,$A1,$08,$A2,$08              ;
                db $8E,$0C,$8F,$0C,$9D,$0C,$A1,$0C              ;
                db $8F,$0C,$9C,$0C,$A1,$0C,$A2,$0C              ;

                db $40,$08,$42,$08,$41,$08,$43,$08              ;
                db $40,$08,$42,$08,$41,$08,$43,$08              ;
                db $06,$08,$08,$08,$07,$08,$09,$08              ;
                db $06,$08,$08,$08,$90,$08,$91,$08              ;
                db $FA,$0C,$FA,$0C,$FA,$0C,$FA,$0C              ;
                db $BF,$0C,$BF,$0C,$BF,$0C,$BF,$0C              ;
                db $BA,$10,$BC,$10,$BB,$10,$BD,$10              ;
                db $61,$08,$63,$08,$61,$08,$63,$08              ;
                db $65,$08,$63,$08,$65,$08,$63,$08              ;
                db $65,$08,$67,$08,$65,$08,$67,$08              ;
                db $60,$08,$62,$08,$61,$08,$63,$08              ;
                db $32,$08,$34,$08,$33,$08,$35,$08              ;
                db $64,$08,$62,$08,$65,$08,$63,$08              ;
                db $36,$08,$34,$08,$37,$08,$35,$08              ;
                db $64,$08,$66,$08,$65,$08,$67,$08              ;
                db $36,$08,$38,$08,$37,$08,$39,$08              ;
                db $68,$08,$62,$08,$61,$08,$63,$08              ;
                db $64,$08,$69,$08,$65,$08,$67,$08              ;
                db $46,$08,$62,$08,$61,$08,$63,$08              ;
                db $64,$08,$47,$08,$65,$08,$67,$08              ;
                db $06,$08,$08,$08,$07,$08,$09,$08              ;
                db $C4,$00,$C5,$00,$D4,$00,$D5,$00              ;
                db $C6,$00,$C7,$00,$D6,$00,$D7,$00              ;
                db $C8,$00,$C9,$00,$D8,$00,$D9,$00              ;
                db $CA,$00,$CB,$00,$DA,$00,$DB,$00              ;
                db $CC,$00,$C5,$00,$DC,$00,$D5,$00              ;
                db $C6,$00,$CD,$00,$D6,$00,$DD,$00              ;
                db $70,$10,$72,$10,$71,$10,$73,$10              ;
                db $8E,$0C,$8F,$0C,$8F,$0C,$8E,$0C              ;
                db $72,$0C,$73,$0C,$73,$0C,$72,$0C              ;
                db $44,$0C,$45,$0C,$45,$0C,$44,$0C              ;
                db $C9,$04,$CA,$04,$D0,$04,$D1,$04              ;
                db $CE,$04,$CF,$04,$D4,$04,$D5,$04              ;
                db $28,$04,$29,$04,$2A,$04,$2B,$04              ;
                db $CB,$04,$CB,$04,$D2,$04,$E4,$04              ;
                db $CC,$04,$CD,$04,$E4,$04,$D3,$04              ;
                db $D7,$04,$D8,$04,$DE,$04,$E4,$04              ;
                db $D9,$04,$E4,$04,$E4,$04,$E4,$04              ;
                db $E4,$04,$DA,$04,$E4,$04,$DF,$04              ;
                db $DB,$04,$DC,$04,$E0,$04,$E1,$04              ;
                db $DE,$04,$E4,$04,$DE,$04,$E4,$04              ;
                db $E4,$04,$EF,$04,$E4,$04,$E6,$04              ;
                db $F0,$04,$F1,$04,$E7,$04,$E8,$04              ;
                db $D9,$04,$E4,$04,$E4,$04,$E5,$04              ;
                db $70,$18,$72,$18,$71,$18,$73,$18              ;
                db $30,$18,$72,$18,$31,$18,$73,$18              ;
                db $70,$18,$3E,$18,$71,$18,$3F,$18              ;
                db $7A,$08,$7B,$08,$78,$08,$79,$08              ;
                db $79,$CC,$78,$CC,$7B,$CC,$7A,$CC              ;
                db $7A,$10,$7B,$10,$78,$10,$79,$10              ;
                db $79,$C8,$78,$C8,$7B,$C8,$7A,$C8              ;
                db $7A,$0C,$7B,$0C,$78,$0C,$79,$0C              ;
                db $79,$D0,$78,$D0,$7B,$D0,$7A,$D0              ;
                db $A4,$18,$6C,$18,$A5,$18,$6D,$18              ;
                db $10,$12,$1B,$12,$1E,$12,$1F,$12              ;
                db $18,$12,$17,$12,$10,$12,$11,$12              ;
                db $10,$12,$11,$12,$1E,$12,$1D,$12              ;
                db $1A,$12,$11,$12,$1A,$12,$11,$12              ;
                db $10,$12,$1B,$12,$10,$12,$1B,$12              ;
                db $1A,$12,$11,$12,$1A,$12,$15,$12              ;
                db $1A,$12,$13,$12,$1A,$12,$11,$12              ;
                db $6C,$58,$6C,$58,$6D,$58,$6D,$58              ;
                db $6C,$58,$6A,$58,$6D,$58,$6B,$58              ;

PNTR_11B564:    db $72,$96,$BA,$DE,$02,$26,$4A                  ;
 
PNTR_11B56B:    db $B5,$B5,$B5,$B5,$B6,$B6,$B6                  ;

                db $A1,$9C,$22,$22,$30,$A7,$30,$30              ;
                db $45,$45,$45,$45,$5E,$5E,$5E,$5E              ;
                db $2E,$2E,$2E,$2E,$AE,$00,$AB,$B0              ;
                db $AE,$AE,$AE,$AE,$80,$07,$81,$80              ;
                db $81,$81,$81,$81                              ;

                db $A0,$9C,$9D,$22,$30,$30,$30,$30              ;
                db $45,$45,$45,$45,$5E,$5E,$5E,$5E              ;
                db $2E,$2E,$2E,$2E,$AE,$40,$AB,$2C              ;
                db $AE,$AE,$AE,$AE,$80,$07,$81,$80              ;
                db $81,$81,$81,$81                              ;

                db $A1,$9C,$22,$22                              ;
                db $30,$A7,$AE,$30,$45,$45,$45,$45              ;
                db $5E,$5E,$5E,$5E,$2E,$2E,$2E,$2E              ;
                db $AE,$00,$AB,$B0,$AE,$AE,$AE,$AE              ;
                db $80,$07,$81,$80,$81,$81,$81,$81              ;

                db $26,$9C,$26,$22,$30,$A7,$B0,$2C              ;
                db $45,$45,$45,$45,$5E,$5E,$5E,$5E              ;
                db $2E,$2E,$2E,$2E,$AE,$33,$AB,$2C              ;
                db $AE,$AE,$AE,$AE,$80,$07,$81,$80              ;
                db $81,$81,$81,$81                              ;

                db $A1,$9C,$22,$22                              ;
                db $30,$A7,$30,$30,$45,$45,$45,$45              ;
                db $5E,$5E,$5E,$5E,$2E,$2E,$2E,$2E              ;
                db $AE,$00,$AB,$2C,$AE,$AE,$AE,$AE              ;
                db $80,$07,$81,$80,$81,$81,$81,$81              ;

                db $A0,$9C,$9D,$22,$30,$30,$30,$30              ;
                db $45,$45,$45,$45,$5E,$5E,$5E,$5E              ;
                db $2E,$2E,$2E,$2E,$AE,$40,$AB,$2C              ;
                db $AE,$AE,$AE,$AE,$80,$07,$81,$80              ;
                db $81,$81,$81,$81                              ;

                db $22,$61,$22,$AB                              ;
                db $AA,$60,$5D,$64,$45,$45,$45,$45              ;
                db $5E,$5E,$5E,$5E,$2E,$2E,$2E,$2E              ;
                db $AA,$AA,$AA,$AA,$AE,$AE,$AE,$AE              ;
                db $80,$07,$81,$80,$81,$81,$81,$81              ;

DATA_11B66E:    db $64,$67,$AB,$D4,$6D,$9E,$9F                  ;

DATA_11B675:    db $64,$67,$AB,$27,$6D,$9E,$9F                  ;

DATA_11B67C:    db $70,$23                                      ;

DATA_11B67E:    db $71,$24                                      ;

DATA_11B680:    db $72,$25                                      ;

DATA_11B682:    db $CA,$CC,$CE,$C7,$C8,$C9,$40,$04              ;
                db $05                                          ;

DATA_11B68B:    db $C7,$C8,$C9                                  ;

DATA_11B68E:    db $D2,$D0,$D0                                  ;

DATA_11B691:    db $D1,$D1,$D3                                  ;

DATA_11B694:    db $52,$C0                                      ;

DATA_11B696:    db $52,$82                                      ;

DATA_11B698:    db $C0,$C0                                      ;

DATA_11B69A:    db $82,$82                                      ;

DATA_11B69C:    db $6A,$6E,$6F                                  ;

DATA_11B69F:    db $43,$44,$45,$46,$47,$48,$49,$4A              ;
                db $4B,$4E,$4C,$41,$5B,$42,$5A                  ;

DATA_11B6AE:    db $9A,$B1,$AA,$AA                              ;

DATA_11B6B2:    db $04,$05,$00,$23,$DF,$59,$0C,$00              ;
                db $24,$5C,$59,$0C,$00,$25,$E0,$59              ;
                db $0C                                          ;

DATA_11B6C3:    db $DF,$E4,$E8,$0C                              ;

DATA_11B6C7:    db $E2,$E5,$59,$0C                              ;

DATA_11B6CB:    db $5C,$59,$59,$0C                              ;

DATA_11B6CF:    db $E3,$E6,$E9,$0C                              ;

DATA_11B6D3:    db $E0,$E7,$EA,$0C                              ;

DATA_11B6D7:    db $12,$14,$16                                  ;

DATA_11B6DA:    db $13,$15,$17,$0C,$33                          ;

DATA_11B6DF:    db $70,$23,$71                                  ;

DATA_11B6E2:    db $71,$24                                      ;

DATA_11B6E4:    db $72,$25,$73,$52,$31,$C0,$52,$32              ;
                db $82                                          ;

DATA_11B6ED:    db $00,$05,$06,$10,$11,$12,$04,$05              ;
                db $06,$10,$11,$12,$04,$05,$06,$83              ;
                db $83,$12,$83,$83,$06,$83,$83,$12              ;
                db $83,$83,$06                                  ;

DATA_11B708:    db $4F,$4F,$90,$83,$83,$83                      ;

DATA_11B70E:    db $50,$51,$91,$83,$83,$83                      ;

DATA_11B714:    db $00,$23,$CB,$0E,$09                          ;

DATA_11B719:    db $00,$24,$CD,$0F,$0B                          ;

DATA_11B71E:    db $00,$25,$CF,$10,$0D                          ;

DATA_11B723:    db $74,$31,$74,$34,$74,$31,$B8                  ;

DATA_11B72A:    db $75,$32,$75,$35,$75,$32,$B9                  ;

DATA_11B731:    db $DB,$A7,$AE,$EC                              ;

DATA_11B735:    db $38,$3A,$3B,$EE                              ;

DATA_11B739:    db $DB,$A7,$AE,$AD                              ;

DATA_11B73D:    db $37,$39,$AD,$AE                              ;

DATA_11B741:    db $00,$00,$00,$24,$00,$00,$02,$54              ;
                db $00,$02,$55,$54,$00,$02,$7F,$54              ;
                db $00,$02,$7F,$D4,$00,$03,$FF,$54              ;
                db $00,$02,$5F,$FC,$00,$03,$FF,$FC              ;
                db $00,$00,$00,$00,$55,$55,$55,$7C              ;
                db $E7,$9E,$79,$E4,$00,$0E,$79,$E4              ;
                db $00,$00,$09,$E4,$00,$00,$00,$24              ;
                db $E0,$0E,$79,$E4,$E4,$00,$09,$E4              ;
                db $E4,$00,$00,$24,$E7,$90,$09,$E4              ;
                db $E7,$9E,$70,$24,$E7,$9E,$40,$24              ;
                db $E7,$9C,$00,$24,$E0,$0E,$40,$24              ;
                db $00,$00,$00,$E4,$E4,$00,$00,$00              ;
                db $E7,$9E,$79,$E4,$E7,$90,$01,$E4              ;
                db $E0,$00,$01,$E4,$E7,$90,$00,$24              ;
                db $E0,$00,$00,$24,$00,$00,$00,$24              ;
                db $00,$00,$00,$24                              ;

DATA_11B7BD:    db $AA,$AA,$AA,$AA,$80,$00,$00,$02              ;
                db $AA,$00,$00,$AA,$FA,$00,$00,$AF              ;
                db $FE,$00,$00,$BF,$FA,$80,$02,$AF              ;
                db $E8,$00,$00,$2B,$E0,$00,$00,$0B              ;
                db $FA,$95,$56,$AF,$95,$00,$00,$56              ;
                db $A5,$55,$55,$5A,$A5,$5A,$A5,$5A              ;
                db $55,$55,$55,$55,$95,$55,$55,$56              ;
                db $95,$5A,$A5,$56,$A9,$55,$55,$6A              ;
                db $81,$55,$55,$42,$AA,$A5,$55,$5A              ;
                db $A5,$55,$5A,$AA,$00,$00,$00,$00              ;
                db $80,$00,$00,$02,$A0,$00,$00,$0A              ;
                db $AA,$00,$00,$AA,$AA,$A0,$0A,$AA              ;
                db $80,$00,$0A,$AA,$80,$0A,$AA,$AA              ;
                db $AA,$AA,$A0,$02,$AA,$A0,$00,$02              ;
                db $A0,$0A,$A0,$0A,$A0,$00,$00,$00              ;
                db $00,$00,$00,$0A                              ;

DATA_11B839:    db $01,$01,$01,$06,$06,$08,$00,$00              ;
                db $00,$00,$01,$06,$08,$06,$06,$00              ;
                db $00,$00,$00,$00,$01,$06,$06,$06              ;
                db $08,$00,$00,$00,$00,$00,$01,$06              ;
                db $08,$06,$06,$00,$00,$00,$00,$00              ;
                db $06,$01,$06,$06,$06,$08,$00,$00              ;
                db $00,$00,$06,$01,$06,$06,$06,$06              ;
                db $08,$06,$00,$00,$01,$01,$06,$01              ;
                db $08,$00,$00,$00,$00,$00,$01,$06              ;
                db $08,$00,$00,$00,$00,$00,$00,$00              ;
                db $06,$01,$06,$06,$06,$06,$06,$01              ;
                db $08,$00,$01,$08,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$06,$01,$01,$01              ;
                db $08,$00,$00,$00,$00,$00,$06,$01              ;
                db $06,$06,$01,$06,$06,$08,$00,$00              ;
                db $01,$06,$08,$00,$00,$00,$00,$00              ;
                db $00,$00,$06,$01,$01,$01,$06,$08              ;
                db $00,$00,$00,$00,$06,$01,$06,$06              ;
                db $08,$08,$00,$00,$00,$00,$01,$06              ;
                db $08,$06,$06,$06,$06,$00,$00,$00              ;
                db $06,$01,$08,$00,$00,$00,$00,$00              ;
                db $00,$00,$06,$01,$06,$01,$01,$08              ;
                db $08,$00,$00,$00,$01,$01,$01,$01              ;
                db $08,$06,$00,$00,$00,$00,$01,$06              ;
                db $06,$06,$08,$07,$06,$06,$06,$01              ;

DATA_11B901:    db $0C,$A9,$00,$1B,$40,$08,$46,$08              ;
                db $4A,$08,$4E,$08,$51,$08,$54,$08              ;
                db $BD,$08,$56,$08,$58,$08,$5B,$08              ;
                db $5E,$08,$61,$08,$65,$08,$40,$48              ;
                db $0C,$C8,$00,$1F,$41,$08,$42,$08              ;
                db $47,$08,$4B,$08,$4F,$08,$52,$08              ;
                db $55,$08,$BD,$08,$57,$08,$59,$08              ;
                db $5C,$08,$5F,$08,$62,$08,$66,$08              ;
                db $42,$48,$41,$48,$0C,$E8,$00,$0B              ;
                db $43,$08,$44,$08,$48,$08,$4C,$08              ;
                db $50,$08,$53,$08,$0C,$F1,$00,$0D              ;
                db $5A,$08,$5D,$08,$60,$08,$63,$08              ;
                db $67,$08,$44,$48,$43,$48,$0D,$09              ;
                db $00,$05,$45,$08,$49,$08,$4D,$08              ;
                db $0D,$14,$00,$05,$64,$08,$68,$08              ;
                db $45,$48,$0D,$68,$40,$1E,$BF,$00              ;
                db $0D,$88,$40,$1E,$BF,$00,$0D,$A8              ;
                db $40,$1E,$BF,$00,$0D,$C8,$40,$1E              ;
                db $BF,$00,$0D,$47,$00,$23,$38,$08              ;
                db $39,$08,$39,$08,$39,$08,$39,$08              ;
                db $3A,$08,$38,$08,$39,$08,$39,$08              ;
                db $39,$08,$39,$08,$3A,$08,$38,$08              ;
                db $39,$08,$39,$08,$39,$08,$39,$08              ;
                db $3A,$08,$0D,$E7,$00,$23,$3D,$08              ;
                db $99,$08,$99,$08,$99,$08,$3E,$08              ;
                db $3F,$08,$3D,$08,$99,$08,$99,$08              ;
                db $99,$08,$3E,$08,$3F,$08,$3D,$08              ;
                db $99,$08,$99,$08,$99,$08,$3E,$08              ;
                db $3F,$08,$0D,$67,$C0,$06,$3B,$08              ;
                db $0D,$6C,$C0,$04,$9A,$08,$0D,$CC              ;
                db $00,$01,$3C,$08,$0D,$6D,$C0,$06              ;
                db $3B,$08,$0D,$72,$C0,$04,$9A,$08              ;
                db $0D,$D2,$00,$01,$3C,$08,$0D,$73              ;
                db $C0,$06,$3B,$08,$0D,$78,$C0,$04              ;
                db $9A,$08,$0D,$D8,$00,$01,$3C,$08              ;
                db $0E,$08,$40,$1E,$BD,$08,$0E,$28              ;
                db $40,$1E,$BD,$08,$0E,$48,$40,$1E              ;
                db $BD,$08,$0E,$2D,$00,$03,$9B,$04              ;
                db $9D,$04,$0E,$4D,$00,$03,$9C,$04              ;
                db $9E,$04,$FF                                  ;

DATA_11BA3C:    db $00,$45,$17,$2E                              ;

DATA_11BA40:    db $00,$04,$02,$01,$04,$07,$B0,$B0              ;
                db $98,$98,$A6,$AA,$E0,$00,$07,$04              ;
                db $08,$18,$18,$04,$E8,$E8,$FC                  ;

                db $00,$01,$01,$01,$01,$02,$B2,$B2              ;
                db $98,$98,$AD,$AD,$E0,$00,$07,$04              ;
                db $08,$18,$1D,$04,$E8,$E3,$FC                  ;

                db $00,$04,$02,$01,$04,$07,$D6,$D6              ;
                db $C9,$C9,$D0,$D4,$E0,$00,$02,$01              ;
                db $08,$18,$16,$04,$E8,$EA,$FC                  ;

                db $00,$06,$04,$02,$06,$0C,$B3,$B3              ;
                db $98,$98,$AC,$B3,$E0,$3C,$07,$04              ;
                db $08,$18,$15,$04,$E8,$EB,$FC                  ;
                         
DATA_11BA9C:    db $BC,$45,$FF,$7F,$63,$0C,$F2,$00              ; \ Mario palette.
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;  | 32 bytes - 16 colours, 2 bytes per colour.
                db $00,$00,$2F,$15,$A3,$40,$C6,$45              ;  |
                db $EC,$56,$DC,$14,$96,$10,$0F,$00              ; /
                db $BC,$45,$FF,$7F,$63,$0C,$F2,$00              ; \ Peach palette.
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;  | 32 bytes - 16 colours, 2 bytes per colour.
                db $00,$00,$57,$0C,$72,$01,$59,$02              ;  |
                db $1F,$1F,$9F,$6E,$5F,$49,$96,$28              ; /
                db $BC,$45,$FF,$7F,$63,$0C,$00,$59              ; \ Toad palette.
                db $E8,$69,$CF,$7E,$9C,$2D,$BF,$3A              ;  | 32 bytes - 16 colours, 2 bytes per colour.
                db $00,$00,$2F,$0D,$73,$09,$7B,$2A              ;  |
                db $5F,$4B,$1F,$19,$D9,$18,$12,$00              ; /
                db $BC,$45,$FF,$7F,$63,$0C,$F2,$00              ; \ Luigi palette.
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;  | 32 bytes - 16 colours, 2 bytes per colour.
                db $00,$00,$2F,$15,$88,$50,$6F,$6D              ;  |
                db $56,$7E,$92,$5B,$AB,$42,$E5,$21              ; /

DATA_11BB1C:    db $BC,$45,$FF,$7F,$A5,$14,$37,$08              ;
                db $BF,$10,$1F,$06,$9E,$36,$5F,$4F              ;
                db $00,$00,$0F,$11,$AD,$4C,$34,$5D              ;
                db $FA,$6D,$FF,$06,$39,$06,$94,$0D              ;

DATA_11BB3C:    db $BC,$45,$FF,$7F,$A5,$14,$86,$49              ;
                db $2B,$62,$D0,$72,$9E,$36,$5F,$4F              ;
                db $00,$00,$03,$3D,$55,$09,$D9,$19              ;
                db $5D,$2A,$DF,$3A,$97,$11,$F2,$00              ;
                db $BC,$45,$FF,$7F,$A5,$14,$29,$29              ;
                db $31,$46,$18,$63,$9E,$36,$5F,$4F              ;
                db $00,$00,$0F,$11,$3C,$09,$FF,$1D              ;
                db $FF,$3A,$BF,$4D,$7D,$10,$15,$00              ;
                db $BC,$45,$FF,$7F,$A5,$14,$A5,$11              ;
                db $C4,$1A,$CC,$3F,$9E,$36,$5F,$4F              ;
                db $00,$00,$0F,$11,$B8,$30,$7E,$45              ;
                db $5F,$62,$00,$00,$00,$00,$00,$00              ;

DATA_11BB9C:    db $DF,$EF,$F7,$FB,$00,$FF,$FF,$FF              ;
                db $AF,$D7,$EB,$F5,$FB,$F7,$EF,$DF              ;
                db $00,$FF,$FF,$FF,$F5,$EB,$D7,$AF              ;

DATA_11BBB4:    db $00,$01,$FF,$00                              ;

DATA_11BBB8:    db $40,$00,$C0,$01,$00,$00,$50,$00              ;
                db $40,$00,$C0,$01,$00,$00                      ;

DATA_11BBC6:    db $0E,$50,$00,$07,$DA,$15,$BD,$09              ;
                db $C1,$15,$BD,$09,$0E,$C9,$00,$1D              ;
                db $CE,$15,$E1,$15,$DD,$15,$DB,$15              ;
                db $CA,$15,$BD,$09,$D5,$15,$D2,$15              ;
                db $CF,$15,$CE,$15,$E8,$15,$E8,$15              ;
                db $E8,$15,$BD,$09,$C1,$15,$FF                  ;

                db $E0,$02,$BF,$46,$9F,$21,$96,$0C              ;
                db $E0,$02,$5F,$63,$1F,$00,$E0,$7D              ;
                db $E0,$02,$FF,$7F,$D6,$5A,$31,$46              ;
                db $E0,$02,$00,$7F,$20,$7D,$00,$61              ;
                db $0C,$08,$04,$08,$0C,$04,$00,$08              ;
                db $04,$0C,$00,$0C,$08,$04,$0C,$08              ;
                db $04,$0C,$04,$08,$04,$00,$08,$0C              ;
                db $F0,$60,$82,$23,$CB,$B0,$00,$A0              ;
                db $CB,$B0,$40,$A8,$CB,$B2,$00,$A0              ;
                db $CB,$B2,$40,$A8,$CB,$B6,$00,$A0              ;
                db $CB,$B6,$40,$A8,$CB,$B4,$00,$A0              ;
                db $CB,$B4,$40,$A8                              ;

DATA_11BC51:    db $00,$C6,$40,$26,$FB,$00,$FF                  ;

DATA_11BC58:    db $0E,$86,$00,$27,$BD,$09,$BD,$09              ;
                db $BD,$09,$BD,$09,$BD,$09,$BD,$09              ;
                db $D7,$15,$D8,$15,$BD,$09,$CB,$15              ;
                db $D8,$15,$D7,$15,$DE,$15,$DC,$15              ;
                db $BD,$09,$BD,$09,$BD,$09,$BD,$09              ;
                db $BD,$09,$BD,$09,$FF                          ;

DATA_11BC85:    db $0E,$8B,$00,$15,$D9,$15,$DE,$15              ;
                db $DC,$15,$D1,$15,$BD,$09,$CB,$15              ;
                db $DE,$15,$DD,$15,$DD,$15,$D8,$15              ;
                db $D7,$15,$FF                                  ;

DATA_11BCA0:    db $55,$6D,$00,$09,$19,$21,$0A,$21              ;
                db $1E,$21,$1C,$21,$0E,$21,$FF                  ;

DATA_11BCAF:    db $0E,$86,$40,$26,$BD,$09,$FF                  ;

DATA_11BCB6:    db $0E,$89,$00,$1B,$BD,$09,$BD,$09              ;
                db $D9,$15,$D5,$15,$CA,$15,$E2,$15              ;
                db $CE,$15,$DB,$15,$BD,$09,$BD,$09              ;
                db $C1,$15,$DE,$15,$D9,$15,$BD,$09              ;
                db $FF                                          ;

DATA_11BCD7:    db $0E,$AA,$40,$18,$BD,$09,$FF                  ;

DATA_11BCDE:    db $FF                                          ;

DATA_11BCDF:    db $55,$6D,$40,$08,$2F,$21,$FF                  ;

DATA_11BCE6:    db $04,$EE,$00,$0D,$BF,$01,$BF,$01              ;
                db $BF,$01,$BF,$01,$BF,$01,$BF,$01              ;
                db $BF,$01,$04,$CA,$00,$15,$FF,$00              ;
                db $A0,$0C,$98,$0C,$9B,$0C,$95,$0C              ;
                db $8D,$0C,$FF,$00,$FF,$00,$C2,$0C              ;
                db $A4,$0C,$81,$0C,$05,$28,$00,$1F              ;
                db $8E,$0C,$A1,$0C,$9D,$0C,$9B,$0C              ;
                db $8A,$0C,$BF,$00,$95,$0C,$92,$0C              ;
                db $8F,$0C,$8E,$0C,$A8,$0C,$A8,$0C              ;
                db $A8,$0C,$FF,$00,$FF,$00,$80,$1C              ;
                db $FF,$0D,$D1,$80,$05,$BD,$08,$BD              ;
                db $08,$BD,$08,$FF,$0A,$2A,$00,$01              ;
                db $BD,$09,$0A,$6A,$00,$01,$BD,$09              ;
                db $0A,$AA,$00,$01,$BD,$09,$FF,$01              ;
                db $97,$C0,$10,$FB,$00,$FF,$01,$C0              ;
                db $00,$21,$ED,$00,$E1,$00,$3A,$00              ;
                db $E7,$00,$E4,$00,$FB,$00,$F2,$00              ;
                db $E8,$00,$EE,$00,$01,$4D,$00,$11              ;
                db $FB,$00,$FB,$00,$FB,$00,$FB,$00              ;
                db $FB,$00,$FB,$00,$FF                          ;

DATA_11BD83:    db $0E,$89,$00,$1D,$C3,$01,$BD,$01              ;
                db $CC,$01,$D8,$01,$D2,$01,$D7,$01              ;
                db $DC,$01,$BD,$01,$DC,$01,$CE,$01              ;
                db $DB,$01,$DF,$01,$D2,$01,$CC,$01              ;
                db $CE,$01,$FF                                  ;

PNTR_11BDA6:    dw $0302                                        ;
                dw DATA_11BDBB                                  ;
                dw DATA_11C0E4                                  ;
                dw DATA_11C0E5                                  ;
                dw DATA_11C0E6                                  ;
                dw DATA_11C0F3                                  ;
                dw DATA_11C100                                  ;
                dw DATA_11C10D                                  ;
                dw DATA_11C11A                                  ;
                dw DATA_11BDBA                                  ;

DATA_11BDBA:    db $FF                                          ;

DATA_11BDBB:    db $10,$00,$40,$3E,$BE,$24,$10,$20              ;
                db $40,$3E,$BE,$24,$10,$40,$40,$3E              ;
                db $BE,$24,$13,$00,$40,$3E,$BE,$24              ;
                db $13,$20,$40,$3E,$BE,$24,$13,$40              ;
                db $40,$3E,$BE,$24,$13,$60,$40,$3E              ;
                db $BE,$24,$13,$80,$40,$3E,$BE,$24              ;
                db $13,$A0,$40,$3E,$BE,$24,$13,$C0              ;
                db $40,$3E,$BE,$24,$10,$60,$C0,$28              ;
                db $BE,$24,$10,$61,$C0,$28,$BE,$24              ;
                db $10,$62,$C0,$28,$BE,$24,$10,$63              ;
                db $C0,$28,$BE,$24,$10,$64,$C0,$28              ;
                db $BE,$24,$10,$7B,$C0,$28,$BE,$24              ;
                db $10,$7C,$C0,$28,$BE,$24,$10,$7D              ;
                db $C0,$28,$BE,$24,$10,$7E,$C0,$28              ;
                db $BE,$24,$10,$7F,$C0,$28,$BE,$24              ;
                db $00,$6E,$80,$07,$C4,$18,$D4,$18              ;
                db $C5,$18,$D5,$18,$00,$CF,$80,$07              ;
                db $DE,$18,$CF,$18,$DF,$18,$D9,$18              ;
                db $01,$50,$00,$09,$C7,$18,$C8,$18              ;
                db $C9,$18,$CA,$18,$CB,$18,$01,$74              ;
                db $00,$0D,$DB,$18,$D6,$18,$C0,$18              ;
                db $C1,$18,$C2,$18,$C3,$18,$D7,$18              ;
                db $01,$96,$00,$07,$D0,$18,$D1,$18              ;
                db $D2,$18,$D3,$18,$01,$B6,$00,$05              ;
                db $CC,$18,$CD,$18,$CE,$0C,$01,$D5              ;
                db $00,$03,$DC,$18,$DD,$18,$00,$6F              ;
                db $40,$16,$C1,$18,$00,$8F,$40,$16              ;
                db $C1,$18,$00,$AF,$40,$16,$C1,$18              ;
                db $00,$D0,$40,$14,$C1,$18,$00,$F0              ;
                db $40,$14,$C1,$18,$01,$10,$40,$14              ;
                db $C1,$18,$01,$30,$40,$14,$C1,$18              ;
                db $01,$55,$40,$0A,$C1,$18,$01,$0D              ;
                db $80,$05,$E8,$10,$F8,$10,$F6,$10              ;
                db $01,$0E,$80,$05,$E9,$10,$F9,$10              ;
                db $F7,$10,$01,$6B,$00,$07,$BB,$10              ;
                db $BC,$10,$EA,$10,$EB,$10,$01,$89              ;
                db $00,$11,$4B,$10,$4C,$10,$4D,$10              ;
                db $4E,$10,$4F,$10,$06,$10,$07,$10              ;
                db $08,$10,$09,$10,$01,$A7,$00,$1B              ;
                db $BB,$10,$4C,$10,$5B,$10,$5C,$10              ;
                db $5D,$10,$5E,$08,$5F,$08,$16,$08              ;
                db $17,$08,$18,$08,$19,$08,$1A,$08              ;
                db $1B,$08,$1C,$08,$01,$C5,$00,$1F              ;
                db $BB,$10,$4C,$10,$5B,$10,$70,$10              ;
                db $6B,$10,$6C,$10,$6D,$08,$6E,$08              ;
                db $20,$08,$21,$08,$22,$08,$23,$08              ;
                db $24,$08,$25,$08,$26,$08,$27,$08              ;
                db $01,$E5,$00,$1F,$5B,$10,$70,$10              ;
                db $70,$10,$70,$10,$7B,$10,$7C,$08              ;
                db $7D,$08,$7E,$08,$30,$08,$31,$08              ;
                db $32,$08,$33,$08,$34,$08,$35,$08              ;
                db $36,$08,$37,$08,$02,$05,$00,$2B              ;
                db $70,$10,$70,$10,$70,$10,$70,$10              ;
                db $44,$10,$45,$08,$46,$08,$47,$08              ;
                db $48,$08,$49,$08,$0B,$08,$0C,$08              ;
                db $0E,$08,$0F,$08,$1E,$08,$1F,$08              ;
                db $00,$14,$01,$14,$02,$14,$03,$14              ;
                db $04,$14,$05,$14,$02,$25,$00,$2B              ;
                db $70,$10,$70,$10,$70,$10,$70,$10              ;
                db $54,$10,$55,$08,$56,$08,$57,$08              ;
                db $58,$08,$59,$08,$5A,$08,$28,$08              ;
                db $29,$08,$2A,$08,$2B,$08,$2C,$14              ;
                db $10,$14,$11,$14,$12,$14,$13,$14              ;
                db $14,$14,$15,$14,$02,$45,$00,$1F              ;
                db $70,$10,$70,$10,$70,$10,$63,$10              ;
                db $64,$10,$65,$08,$66,$08,$67,$08              ;
                db $68,$08,$69,$08,$6A,$08,$38,$08              ;
                db $39,$08,$3A,$08,$3B,$14,$3C,$14              ;
                db $02,$65,$00,$1D,$70,$10,$71,$10              ;
                db $72,$10,$73,$0C,$74,$0C,$75,$08              ;
                db $76,$08,$77,$08,$78,$08,$79,$08              ;
                db $7A,$08,$2D,$08,$2E,$08,$2F,$14              ;
                db $0D,$14,$02,$85,$00,$1D,$80,$10              ;
                db $81,$10,$82,$0C,$83,$0C,$84,$0C              ;
                db $85,$0C,$86,$0C,$87,$0C,$88,$08              ;
                db $89,$08,$8A,$08,$3D,$14,$3E,$14              ;
                db $3F,$14,$1D,$14,$02,$A5,$00,$2B              ;
                db $90,$0C,$91,$0C,$92,$0C,$93,$0C              ;
                db $94,$0C,$95,$0C,$96,$0C,$97,$0C              ;
                db $98,$0C,$99,$0C,$9A,$0C,$0A,$14              ;
                db $AB,$14,$8B,$14,$8C,$14,$8D,$14              ;
                db $8D,$14,$8D,$14,$8D,$14,$E6,$14              ;
                db $E7,$14,$8D,$14,$02,$C5,$00,$2B              ;
                db $A0,$0C,$A1,$0C,$A2,$0C,$A3,$0C              ;
                db $A4,$0C,$A5,$0C,$A6,$0C,$A7,$0C              ;
                db $A8,$0C,$A9,$0C,$AA,$14,$AB,$14              ;
                db $BD,$14,$9B,$14,$9C,$14,$9D,$14              ;
                db $E0,$14,$E1,$14,$E2,$14,$E3,$14              ;
                db $E4,$14,$E5,$14,$02,$E5,$00,$2B              ;
                db $B0,$0C,$B1,$0C,$B2,$0C,$B3,$0C              ;
                db $B4,$0C,$B5,$0C,$B6,$0C,$B7,$0C              ;
                db $B8,$0C,$B9,$14,$BA,$14,$BD,$14              ;
                db $BD,$14,$BD,$14,$AC,$14,$AD,$14              ;
                db $F0,$14,$F1,$14,$F2,$14,$F3,$14              ;
                db $F4,$14,$F5,$14,$02,$55,$40,$0A              ;
                db $8D,$14,$02,$74,$40,$0C,$8D,$14              ;
                db $02,$94,$40,$0C,$8D,$14,$00,$D3              ;
                db $00,$0D,$EC,$18,$ED,$18,$ED,$18              ;
                db $ED,$18,$ED,$18,$EE,$18,$EF,$18              ;
                db $00,$F4,$80,$03,$FD,$14,$FC,$14              ;
                db $00,$F7,$80,$03,$FD,$14,$FC,$14              ;
                db $FF                                          ;

DATA_11C0E4:    db $FF                                          ;

DATA_11C0E5:    db $FF                                          ;

DATA_11C0E6:    db $00,$6E,$40,$18,$BF,$00,$00,$8E              ;
                db $40,$18,$BF,$00,$FF                          ;

DATA_11C0F3:    db $00,$AE,$40,$18,$BF,$00,$00,$CE              ;
                db $40,$18,$BF,$00,$FF                          ;

DATA_11C100:    db $00,$EF,$40,$16,$BF,$00,$01,$0F              ;
                db $40,$16,$BF,$00,$FF                          ;

DATA_11C10D:    db $01,$2F,$40,$16,$BF,$00,$01,$50              ;
                db $40,$14,$BF,$00,$FF                          ;

DATA_11C11A:    db $01,$74,$40,$0C,$BF,$00,$01,$96              ;
                db $40,$06,$BF,$00,$01,$B6,$40,$04              ;
                db $BF,$00,$01,$D5,$40,$02,$BF,$00              ;
                db $FF                                          ;

DATA_11C133:    db $A0,$20,$E0,$20,$A0,$28,$F0,$20              ;
                db $A8,$20,$E1,$22,$A8,$28,$F1,$22              ;
                db $B0,$20,$E3,$26,$B0,$28,$F3,$26              ;
                db $B8,$20,$E2,$24,$B8,$28,$F2,$24              ;

DATA_11C153:    db $A0,$20,$E4,$20,$A0,$28,$F4,$20              ;
                db $A8,$20,$E5,$22,$A8,$28,$F5,$22              ;
                db $B0,$20,$E7,$26,$B0,$28,$F7,$26              ;
                db $B8,$20,$E6,$24,$B8,$28,$F6,$24              ;

DATA_11C173:    db $98,$47,$F8,$20,$A0,$47,$E8,$20              ;
                db $A8,$47,$F8,$20,$B0,$47,$E8,$20              ;
                db $B8,$47,$F8,$20,$C0,$47,$E8,$20              ;

DATA_11C18B:    db $98,$47,$E8,$20,$A0,$47,$F8,$20              ;
                db $A8,$47,$E8,$20,$B0,$47,$F8,$20              ;
                db $B8,$47,$E8,$20,$C0,$47,$F8,$20              ;

DATA_11C1A3:    db $20,$0A,$0A,$0A,$0A,$0A,$0A,$20              ;
                db $0A,$0A,$0A,$0A,$0A,$0A                      ;

DATA_11C1B1:    db $08,$08,$50,$40,$30,$10,$10                  ;

DATA_11C1B8:    db $50,$54,$58,$5C,$60,$64,$68,$6C              ;
                db $68,$64,$60,$5C,$58,$54                      ;

DATA_11C1C6:    db $78,$74,$70,$7C,$70,$74,$78,$22              ;
                db $32,$30                                      ;

PNTR_11C1D0:    dl $000302                                      ; 00 - RAM upload table, used for 8x8 tile upload on layer 1
                dl $001400                                      ; 01 - RAM upload table, used for various texts in the bonus game and other
                dl $000561                                      ;
                dl DATA_11C221                                  ; 03 - Character select screen
                dl DATA_11C70C                                  ; 04 - Shy Guy border between character select screen and level load
                dl DATA_11C9FC                                  ; 05 - Game over screen without border
                dl $000637                                      ;
                dl DATA_11CAAA                                  ; 07 - 'Continue, Save & Continue, Save & Quit'
                dl $001168                                      ; 08 - RAM upload table, used for 'World X-X', 'Extra Lifes.'
                dl DATA_11BC51                                  ;
                dl DATA_11BC58                                  ; 0A - 'No Bonus'
                dl DATA_11BC85                                  ; 0B - 'Push Button'
                dl $000680                                      ;
                dl DATA_11BCA0                                  ; 0D - Probably 'Pause'. Only used in NES SMB2, not SMAS. More proof that Nintendo ported the games to SNES directly and edited them?
                dl DATA_11BCDF                                  ;
                dl DATA_11BCAF                                  ; 0F - Blank line.
                dl DATA_11BCD7                                  ;
                dl DATA_11BCDE                                  ; 11 - Nothing.
                dl $0011B9                                      ;
                dl $0011C4                                      ; 13 - RAM upload table, used for small moveable vegetable at 'Game Over'
                dl $00144E                                      ;
                dl DATA_11C88D                                  ;
                dl DATA_11C88D                                  ;
                dl DATA_11B901                                  ;
                dl DATA_11C89A                                  ; 18 - Stars with palette 2 (used everywhere except for 5-2)
                dl DATA_11C927                                  ; 19 - Stars with palette 1 (used only in 5-2)
                dl DATA_11BD83                                  ; 1A - '3 Coins Service'

DATA_11C221:    db $00,$00,$47,$FE,$BD,$09,$00,$00              ;
                db $00,$3D,$BD,$09,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $0F,$09,$0F,$49,$1F,$09,$1F,$49              ;
                db $00,$20,$00,$3D,$BD,$09,$1F,$89              ;
                db $4F,$09,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$6F,$C9              ;
                db $6F,$89,$5F,$C9,$5F,$89,$4F,$49              ;
                db $1F,$C9,$00,$40,$C0,$32,$BD,$09              ;
                db $00,$41,$80,$33,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $1F,$09,$1F,$89,$0F,$09,$0F,$89              ;
                db $00,$42,$80,$33,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $3F,$09,$3F,$89,$2F,$09,$2F,$89              ;
                db $00,$5D,$80,$33,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $3F,$49,$3F,$C9,$2F,$49,$2F,$C9              ;
                db $00,$5E,$80,$33,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $1F,$49,$1F,$C9,$0F,$49,$0F,$C9              ;
                db $00,$43,$00,$33,$00,$05,$01,$05              ;
                db $02,$05,$03,$05,$04,$05,$05,$05              ;
                db $06,$05,$07,$05,$08,$05,$09,$05              ;
                db $7F,$05,$7F,$05,$7F,$05,$7F,$45              ;
                db $7F,$45,$7F,$45,$09,$45,$08,$45              ;
                db $07,$45,$06,$45,$05,$45,$04,$45              ;
                db $03,$45,$02,$45,$01,$45,$00,$45              ;
                db $00,$63,$00,$33,$10,$05,$11,$05              ;
                db $12,$05,$13,$05,$14,$05,$15,$05              ;
                db $16,$05,$17,$05,$18,$05,$19,$05              ;
                db $1A,$05,$7F,$05,$7F,$05,$7F,$45              ;
                db $7F,$45,$1A,$45,$19,$45,$18,$45              ;
                db $17,$45,$16,$45,$15,$45,$14,$45              ;
                db $13,$45,$12,$45,$11,$45,$10,$45              ;
                db $00,$83,$00,$33,$20,$05,$21,$05              ;
                db $22,$05,$23,$05,$24,$05,$25,$05              ;
                db $26,$05,$27,$05,$28,$05,$29,$05              ;
                db $2A,$05,$2B,$05,$2C,$05,$2C,$45              ;
                db $2B,$45,$2A,$45,$29,$45,$28,$45              ;
                db $27,$45,$26,$45,$25,$45,$24,$45              ;
                db $23,$45,$22,$45,$21,$45,$20,$45              ;
                db $00,$A3,$00,$33,$30,$05,$31,$05              ;
                db $32,$05,$33,$05,$34,$05,$BD,$09              ;
                db $BD,$09,$BD,$09,$38,$05,$39,$05              ;
                db $3A,$05,$3B,$05,$3C,$05,$3C,$45              ;
                db $3B,$45,$3A,$45,$39,$45,$38,$45              ;
                db $BD,$09,$BD,$09,$BD,$09,$34,$45              ;
                db $33,$45,$32,$45,$31,$45,$30,$45              ;
                db $00,$C3,$80,$0D,$40,$05,$50,$05              ;
                db $60,$05,$70,$05,$35,$05,$45,$05              ;
                db $55,$05,$01,$A3,$C0,$26,$7F,$05              ;
                db $00,$C4,$80,$2B,$41,$05,$51,$05              ;
                db $61,$05,$71,$05,$36,$05,$46,$05              ;
                db $56,$05,$66,$05,$76,$05,$49,$05              ;
                db $59,$05,$0D,$05,$1D,$05,$2D,$05              ;
                db $3D,$05,$4D,$05,$5D,$05,$6D,$05              ;
                db $7D,$05,$79,$05,$7B,$05,$6D,$05              ;
                db $00,$C5,$80,$2B,$42,$05,$52,$05              ;
                db $62,$05,$72,$05,$37,$05,$47,$05              ;
                db $57,$05,$67,$05,$77,$05,$4A,$05              ;
                db $5A,$05,$0E,$05,$1E,$05,$2E,$05              ;
                db $3E,$05,$4E,$05,$5E,$05,$6E,$05              ;
                db $7E,$05,$7A,$05,$7C,$05,$6E,$05              ;
                db $00,$C6,$80,$17,$43,$05,$BD,$09              ;
                db $BD,$09,$44,$05,$BD,$09,$BD,$09              ;
                db $58,$05,$68,$05,$78,$05,$4B,$05              ;
                db $5B,$05,$6B,$05,$00,$C7,$C0,$16              ;
                db $0B,$05,$02,$47,$80,$03,$1B,$05              ;
                db $0C,$05,$00,$DC,$80,$0D,$40,$45              ;
                db $50,$45,$60,$45,$70,$45,$35,$45              ;
                db $45,$45,$55,$45,$01,$BC,$C0,$26              ;
                db $7F,$45,$00,$DB,$80,$2B,$41,$45              ;
                db $51,$45,$61,$45,$71,$45,$36,$45              ;
                db $46,$45,$56,$45,$66,$45,$76,$45              ;
                db $49,$45,$59,$45,$0D,$45,$1D,$45              ;
                db $2D,$45,$3D,$45,$4D,$45,$5D,$45              ;
                db $6D,$45,$7D,$45,$79,$45,$7B,$45              ;
                db $6D,$45,$00,$DA,$80,$2B,$42,$45              ;
                db $52,$45,$62,$45,$72,$45,$37,$45              ;
                db $47,$45,$57,$45,$67,$45,$77,$45              ;
                db $4A,$45,$5A,$45,$0E,$45,$1E,$45              ;
                db $2E,$45,$3E,$45,$4E,$45,$5E,$45              ;
                db $6E,$45,$7E,$45,$7A,$45,$7C,$45              ;
                db $6E,$45,$00,$D9,$80,$17,$43,$45              ;
                db $BD,$09,$BD,$09,$44,$45,$BD,$09              ;
                db $BD,$09,$58,$45,$68,$45,$78,$45              ;
                db $4B,$45,$5B,$45,$6B,$45,$00,$D8              ;
                db $C0,$16,$0B,$45,$02,$58,$80,$03              ;
                db $1B,$45,$0C,$45,$03,$40,$00,$3D              ;
                db $BD,$09,$0F,$09,$0F,$49,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$5F,$49,$5F,$09,$6F,$49              ;
                db $6F,$09,$0F,$09,$0F,$49,$03,$60              ;
                db $00,$3D,$BD,$09,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $1F,$89,$1F,$C9,$0F,$89,$0F,$C9              ;
                db $03,$80,$00,$3D,$BD,$09,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$0F,$09,$0F,$49,$1F,$09              ;
                db $1F,$49,$01,$49,$00,$0B,$D9,$15              ;
                db $D5,$15,$CE,$15,$CA,$15,$DC,$15              ;
                db $CE,$15,$01,$50,$00,$0B,$DC,$15              ;
                db $CE,$15,$D5,$15,$CE,$15,$CC,$15              ;
                db $DD,$15,$01,$8C,$00,$0B,$D9,$15              ;
                db $D5,$15,$CA,$15,$E2,$15,$CE,$15              ;
                db $DB,$15                                      ;

DATA_11C6AB:    db $02,$49,$80,$07,$80,$01,$90,$01              ;
                db $81,$01,$91,$01,$02,$4A,$80,$07              ;
                db $80,$41,$90,$41,$81,$41,$91,$41              ;
                db $02,$4D,$80,$07,$82,$01,$92,$01              ;
                db $83,$01,$93,$01,$02,$4E,$80,$07              ;
                db $82,$41,$92,$41,$83,$41,$93,$41              ;
                db $02,$51,$80,$07,$BD,$09,$94,$01              ;
                db $85,$01,$95,$01,$02,$52,$80,$07              ;
                db $BD,$09,$94,$41,$85,$41,$95,$41              ;
                db $02,$55,$80,$07,$86,$01,$96,$01              ;
                db $87,$01,$97,$01,$02,$56,$80,$07              ;
                db $86,$41,$96,$41,$87,$41,$97,$41              ;
                db $FF                                          ;

DATA_11C70C:    db $04,$00,$47,$FE,$C8,$1C,$04,$00              ;
                db $C0,$3E,$FE,$1C,$04,$1F,$C0,$3E              ;
                db $FE,$1C,$04,$DA,$C0,$1C,$D8,$1C              ;
                db $06,$A7,$40,$24,$C9,$1C,$06,$BA              ;
                db $00,$01,$D9,$1C,$04,$A6,$40,$26              ;
                db $FF,$00,$04,$C6,$40,$26,$FF,$00              ;
                db $04,$E6,$40,$26,$FF,$00,$05,$06              ;
                db $40,$26,$FF,$00,$05,$26,$40,$26              ;
                db $FF,$00,$05,$46,$40,$26,$FF,$00              ;
                db $06,$D2,$00,$09,$CA,$1C,$CB,$1C              ;
                db $CC,$1C,$CD,$1C,$CE,$1C,$06,$F2              ;
                db $00,$15,$DA,$1C,$DB,$1C,$DC,$1C              ;
                db $DD,$1C,$DE,$1C,$CF,$1C,$CF,$1C              ;
                db $DF,$1C,$DF,$1C,$E9,$1C,$EA,$1C              ;
                db $07,$12,$00,$15,$E0,$1C,$E1,$1C              ;
                db $E2,$1C,$E3,$1C,$E4,$1C,$E5,$1C              ;
                db $E6,$1C,$E7,$1C,$E8,$1C,$F9,$1C              ;
                db $FA,$1C,$07,$32,$00,$15,$F0,$1C              ;
                db $F1,$1C,$F2,$1C,$F3,$1C,$F4,$1C              ;
                db $F5,$1C,$F6,$1C,$F7,$1C,$F8,$1C              ;
                db $FB,$1C,$FC,$1C,$04,$3C,$00,$03              ;
                db $C4,$1C,$C5,$1C,$04,$5C,$00,$03              ;
                db $D4,$1C,$D5,$1C,$04,$47,$00,$03              ;
                db $C0,$1C,$C1,$1C,$04,$67,$00,$03              ;
                db $D0,$1C,$D1,$1C,$04,$54,$00,$03              ;
                db $C6,$1C,$C7,$1C,$04,$74,$00,$03              ;
                db $D6,$1C,$D7,$1C,$04,$6C,$00,$03              ;
                db $C4,$1C,$C5,$1C,$04,$8C,$00,$03              ;
                db $D4,$1C,$D5,$1C,$04,$82,$00,$03              ;
                db $C2,$1C,$C3,$1C,$04,$A2,$00,$03              ;
                db $D2,$1C,$D3,$1C,$04,$9B,$00,$03              ;
                db $C0,$1C,$C1,$1C,$04,$BB,$00,$03              ;
                db $D0,$1C,$D1,$1C,$05,$1E,$00,$01              ;
                db $C6,$1C,$05,$3E,$00,$01,$D6,$1C              ;
                db $05,$81,$80,$03,$C7,$1C,$D7,$1C              ;
                db $05,$DC,$00,$03,$C2,$1C,$C3,$1C              ;
                db $05,$FC,$00,$03,$D2,$1C,$D3,$1C              ;
                db $06,$22,$00,$03,$C4,$1C,$C5,$1C              ;
                db $06,$42,$00,$03,$D4,$1C,$D5,$1C              ;
                db $06,$9D,$00,$03,$C0,$1C,$C1,$1C              ;
                db $06,$BD,$00,$03,$D0,$1C,$D1,$1C              ;
                db $06,$E1,$80,$03,$C5,$1C,$D5,$1C              ;
                db $07,$05,$00,$03,$C0,$1C,$C1,$1C              ;
                db $07,$25,$00,$03,$D0,$1C,$D1,$1C              ;
                db $07,$2C,$00,$03,$C4,$1C,$C5,$1C              ;
                db $07,$4C,$00,$03,$D4,$1C,$D5,$1C              ;
                db $07,$90,$00,$03,$C6,$1C,$C7,$1C              ;
                db $07,$B0,$00,$03,$D6,$1C,$D7,$1C              ;
                db $FF                                          ;

DATA_11C88D:    db $68,$1E,$C0,$3A,$FF,$00,$68,$1F              ;
                db $C0,$3A,$FF,$00,$FF                          ;

DATA_11C89A:    db $10,$00,$42,$7E,$BF,$00,$14,$00              ;
                db $42,$7E,$BF,$00,$10,$06,$00,$01              ;
                db $2C,$08,$10,$1D,$00,$01,$14,$08              ;
                db $10,$42,$00,$01,$13,$08,$10,$55              ;
                db $00,$01,$2C,$08,$10,$6D,$00,$01              ;
                db $13,$08,$10,$C1,$00,$01,$2C,$08              ;
                db $11,$08,$00,$01,$13,$08,$11,$13              ;
                db $00,$01,$14,$08,$14,$08,$00,$01              ;
                db $2C,$08,$14,$20,$00,$01,$13,$08              ;
                db $14,$30,$00,$01,$14,$08,$14,$4C              ;
                db $00,$01,$13,$08,$14,$55,$00,$01              ;
                db $2C,$08,$14,$7A,$00,$01,$13,$08              ;
                db $14,$84,$00,$01,$13,$08,$14,$9F              ;
                db $00,$01,$8F,$09,$14,$BE,$00,$03              ;
                db $9E,$09,$9F,$09,$14,$C9,$00,$01              ;
                db $14,$08,$14,$D1,$00,$01,$13,$08              ;
                db $15,$2D,$00,$01,$2C,$08,$15,$37              ;
                db $00,$01,$14,$08,$FF                          ;

DATA_11C927:    db $10,$00,$42,$7E,$BF,$00,$14,$00              ;
                db $42,$7E,$BF,$00,$10,$06,$00,$01              ;
                db $2C,$04,$10,$1D,$00,$01,$13,$04              ;
                db $10,$42,$00,$01,$14,$04,$10,$55              ;
                db $00,$01,$2C,$04,$10,$6D,$00,$01              ;
                db $14,$04,$10,$C1,$00,$01,$2C,$04              ;
                db $11,$08,$00,$01,$13,$04,$11,$14              ;
                db $00,$01,$14,$04,$14,$08,$00,$01              ;
                db $2C,$04,$14,$20,$00,$01,$14,$04              ;
                db $14,$30,$00,$01,$13,$04,$14,$4C              ;
                db $00,$01,$14,$04,$14,$55,$00,$01              ;
                db $2C,$04,$14,$7A,$00,$01,$14,$04              ;
                db $14,$84,$00,$01,$14,$04,$14,$9F              ;
                db $00,$01,$8F,$09,$14,$BE,$00,$03              ;
                db $9E,$09,$9F,$09,$14,$C9,$00,$01              ;
                db $13,$04,$14,$D1,$00,$01,$14,$04              ;
                db $15,$2D,$00,$01,$2C,$04,$15,$37              ;
                db $00,$01,$13,$04,$FF                          ;

DATA_11C9B4:    db $00,$03,$06,$09,$0C,$0F,$12,$14              ;

                db $58,$57,$82,$23,$58,$57,$80,$23              ;
                db $58,$57,$84,$23,$58,$57,$86,$29              ;
                db $00,$00,$5F,$63,$1F,$00,$00,$00              ;
                db $00,$00,$5F,$63,$1F,$00,$00,$00              ;
                db $00,$00,$5F,$63,$1F,$00,$00,$00              ;
                db $00,$00,$5F,$63,$1F,$00,$00,$00              ;

DATA_11C9EC:    db $00,$00,$FF,$7F,$FF,$7F,$00,$00              ;

DATA_11C9F4:    db $C9,$D5,$D1,$CD                              ;

DATA_11C9F8:    db $E9,$F5,$F1,$ED                              ;

DATA_11C9FC:    db $08,$8E,$00,$05,$FE,$00,$FF,$00              ;
                db $EF,$00,$08,$AE,$00,$07,$EA,$00              ;
                db $EB,$00,$EC,$00,$ED,$00,$08,$CE              ;
                db $00,$07,$FA,$00,$FB,$00,$FC,$00              ;
                db $FD,$00,$08,$EE,$00,$07,$E6,$00              ;
                db $E7,$00,$E8,$00,$E9,$00,$09,$0D              ;
                db $00,$0B,$F5,$00,$F6,$00,$F7,$00              ;
                db $F8,$00,$F9,$00,$F0,$00,$09,$2D              ;
                db $00,$0B,$E0,$00,$E1,$00,$E2,$00              ;
                db $E3,$00,$E4,$00,$F4,$00,$09,$4E              ;
                db $00,$05,$F1,$00,$F2,$00,$F3,$00              ;
                db $09,$8B,$00,$01,$CB,$08,$09,$AA              ;
                db $00,$15,$C0,$08,$C1,$08,$C2,$08              ;
                db $C3,$08,$C4,$08,$C5,$08,$C6,$08              ;
                db $C7,$08,$C8,$08,$C9,$08,$CA,$08              ;
                db $09,$CA,$00,$15,$D0,$08,$D1,$08              ;
                db $D2,$08,$D3,$08,$D4,$08,$D5,$08              ;
                db $D6,$08,$D7,$08,$D8,$08,$D9,$08              ;
                db $DA,$08,$09,$EA,$00,$17,$CC,$08              ;
                db $CD,$08,$CE,$08,$CF,$08,$BD,$09              ;
                db $BD,$09,$BD,$09,$DB,$08,$DC,$08              ;
                db $DD,$08,$DE,$08,$DF,$08                      ;

DATA_11CAAA:    db $0A,$2C,$00,$0F,$CC,$15,$D8,$15              ;
                db $D7,$15,$DD,$15,$D2,$15,$D7,$15              ;
                db $DE,$15,$CE,$15,$0A,$6C,$00,$19              ;
                db $DC,$15,$CA,$15,$DF,$15,$CE,$15              ;
                db $EB,$15,$CC,$15,$D8,$15,$D7,$15              ;
                db $DD,$15,$D2,$15,$D7,$15,$DE,$15              ;
                db $CE,$15,$0A,$AC,$00,$11,$DC,$15              ;
                db $CA,$15,$DF,$15,$CE,$15,$EB,$15              ;
                db $EA,$15,$DE,$15,$D2,$15,$DD,$15              ;
                db $FF                                          ;

                db $09,$0F                                      ;

DATA_11CAF5:    db $0B,$10                                      ;

DATA_11CAF7:    db $0A,$0F                                      ;

DATA_11CAF9:    db $0C,$0F                                      ;

DATA_11CAFB:    db $0F                                          ;

                db $1A                                          ;

DATA_11CAFD:    db $00,$08,$10,$18,$20,$24                      ;

DATA_11CB03:    db $28,$2C,$2A,$2E                              ;

DATA_11CB07:    db $30                                          ;

DATA_11CB08:    db $32,$34,$38,$3C,$40,$44                      ;

DATA_11CB0E:    db $06,$09,$06,$09,$01,$01,$0E,$0E              ;
                db $06,$09,$06,$09,$01,$01,$0E,$0E              ;
                db $06,$09,$06,$09,$01,$01,$0E,$0E              ;
                db $06,$09,$06,$09,$01,$01,$0E,$0E              ;
                db $08,$08,$00,$0F,$08,$08,$03,$0C              ;
                db $F8,$05,$18,$0B,$F8,$05,$18,$0B              ;
                db $08,$08,$08,$08,$08,$08,$03,$0C              ;
                db $03,$03,$02,$05,$08,$08,$03,$0C              ;
                db $08,$08,$FF,$10,$10,$10,$02,$1E              ;

DATA_11CB56:    db $07,$07,$20,$20,$0D,$1C,$0D,$1C              ;
                db $FF,$FF,$20,$20,$04,$1C,$04,$1C              ;
                db $0F,$0F,$20,$20,$1C,$1C,$1C,$1C              ;
                db $07,$07,$20,$20,$0D,$1C,$0D,$1C              ;
                db $00,$10,$09,$09,$03,$10,$09,$09              ;
                db $FF,$00,$FF,$00,$0F,$10,$0F,$10              ;
                db $0C,$14,$07,$20,$FE,$20,$10,$10              ;
                db $09,$0A,$08,$08,$03,$30,$18,$18              ;
                db $FF,$10,$08,$08,$09,$0A,$08,$08              ;

DATA_11CB9E:    db $02,$02,$03,$00,$03,$03,$F8,$00              ;
                db $03,$01,$F3,$04,$03,$03,$03,$F2              ;
                db $03,$03,$05,$03,$0B,$10,$03,$00              ;
                db $04,$03,$F8,$00,$09,$04,$03,$03              ;
                db $0E,$03,$03,$03,$F6,$0C,$02,$03              ;
                db $0B,$0B,$09,$10,$09,$19,$20,$20              ;
                db $03,$1E,$19,$08,$09,$09,$09,$18              ;
                db $09,$1A,$06,$15,$16,$11,$0D,$10              ;
                db $19,$19,$24,$10,$03,$04,$2D,$30              ;
                db $0F,$2E,$3E,$1E,$28,$13,$48,$26              ;

DATA_11CBEE:    db $1F,$2F,$3F                                  ;

DATA_11CBF1:    db $00                                          ;

DATA_11CBF2:    db $20                                          ;

DATA_11CBF3:    db $F0                                          ;

                db $00,$00,$00,$00,$FB,$FB,$00,$FB              ;
                db $FB,$00,$FB,$D5,$D9,$FB,$D7                  ;

DATA_11CC03:    db $00,$02,$06,$08,$00,$04,$06,$0A              ;
                db $26,$26,$26,$28,$06,$08,$2A,$2C              ;
                db $20,$22,$00,$24,$0C,$0E,$00,$2E              ;

DATA_11CC1B:    db $01,$01,$01,$02,$02,$04,$04,$04              ;

DATA_11CC23:    db $E8,$00,$C8,$00,$D0,$00,$A8,$00              ;
                db $F0,$00,$98,$00,$00,$01,$B8,$00              ;
                db $E0,$00,$10,$01,$C0,$00,$D8,$00              ;
                db $A0,$00,$F8,$00,$90,$00,$08,$01              ;
                db $B0,$00                                      ;

DATA_11CC45:    db $01,$01,$01,$03,$02,$01,$02,$03              ; Format : xxxxxxxx
                db $41,$01,$45,$45,$45,$01,$01,$01              ;
                db $02,$11,$0D,$09,$11,$00,$00,$09              ;
                db $E1,$61,$0A,$0A,$42,$43,$09,$0A              ;
                db $11,$41,$02,$01,$03,$02,$01,$01              ;
                db $09,$01,$41,$01,$4F,$41,$11,$11              ;
                db $11,$11,$91,$91,$92,$91,$91,$81              ;
                db $81,$09,$89,$4D,$09,$09,$89,$11              ;
                db $89,$45,$41,$41,$11,$12,$92                  ;

DATA_11CC8C:    db $04,$00,$00,$00,$03,$00,$00,$00              ; Format : xxxxxixx. i = Invincible to bombs and shells.
                db $50,$40,$42,$42,$42,$40,$40,$40              ;
                db $40,$13,$D0,$80,$00,$06,$06,$07              ;
                db $10,$50,$90,$07,$0A,$3B,$40,$18              ;
                db $07,$1B,$10,$07,$07,$07,$50,$53              ;
                db $96,$50,$9B,$53,$1B,$0B,$03,$03              ;
                db $03,$03,$00,$00,$00,$00,$04,$04              ;
                db $04,$00,$00,$06,$04,$00,$04,$04              ;
                db $04,$16,$06,$06,$0C,$04,$04                  ;

DATA_11CCD3:    db $00,$05,$05,$05,$05,$05,$05,$05              ; Format : xxxxxxxx
                db $0C,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$05,$05,$05,$05,$0D,$0D,$05              ;
                db $0C,$0C,$05,$0D,$0C,$0C,$05,$0E              ;
                db $0D,$0C,$05,$05,$05,$05,$0C,$05              ;
                db $05,$05,$05,$05,$05,$00,$0F,$0F              ;
                db $0F,$0F,$05,$05,$05,$05,$05,$05              ;
                db $05,$04,$04,$04,$04,$04,$04,$04              ;
                db $04,$10,$00,$00,$05,$05,$05                  ;

DATA_11CD1A:    db $08,$02,$02,$02,$02,$02,$02,$02              ; Format : xxxxxxxx
                db $04,$02,$09,$09,$09,$02,$02,$02              ;
                db $02,$02,$02,$02,$02,$08,$08,$02              ;
                db $04,$04,$0E,$08,$04,$04,$02,$0F              ;
                db $02,$13,$02,$02,$02,$02,$10,$02              ;
                db $12,$02,$0F,$02,$11,$0B,$02,$02              ;
                db $02,$02,$02,$02,$02,$02,$02,$02              ;
                db $04,$03,$03,$07,$04,$03,$03,$03              ;
                db $03,$09,$0B,$0B,$02,$02,$02                  ;

DATA_11CD61:    db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$01,$01,$01,$01,$02,$01              ;
                db $00,$02,$03,$02,$04,$02,$02,$02              ;
                db $02,$02,$02,$02,$02,$00,$02                  ;

DATA_11CDA8:    db $01,$43,$80,$C0,$22,$5C,$9B,$CA              ;
                db $2C,$64,$A6,$DB                              ;

DATA_11CDB4:    db $03,$01,$04,$05,$06,$05,$06                  ;

DATA_11CDBB:    db $EE,$08,$EF,$08,$AC,$09,$AE,$09              ;

DATA_11CDC3:    db $FE,$08,$FF,$08,$AD,$09,$AF,$09              ;

DATA_11CDCB:    db $FC,$08,$FD,$08,$FD,$08,$BC,$09              ;

DATA_11CDD3:    db $02,$D0,$00,$07,$AB,$08,$AB,$08              ;
                db $BF,$00,$BF,$00,$02,$F0,$00,$07              ;
                db $AB,$08,$AB,$08,$BF,$00,$BF,$00              ;
                db $03,$10,$00,$0B,$AB,$08,$AB,$08              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $03,$30,$00,$0B,$AB,$08,$AB,$08              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $4A,$D0,$00,$05,$3C,$21,$3C,$21              ;
                db $2C,$21,$4A,$F0,$00,$07,$3C,$21              ;
                db $3C,$21,$3C,$21,$2C,$21,$4B,$10              ;
                db $00,$09,$3C,$21,$3C,$21,$3C,$21              ;
                db $3C,$21,$2C,$21,$4B,$30,$00,$0B              ;
                db $3C,$21,$3C,$21,$3C,$21,$3C,$21              ;
                db $3C,$21,$2C,$21,$FF                          ;

DATA_11CE40:    db $00,$0C,$18,$28,$38,$42,$4E,$5C              ;

DATA_11CE48:    db $00,$00,$06,$06,$0A,$0A,$0B,$0D              ;
                db $0E,$11,$11,$12,$12,$12,$12,$13              ;

DATA_11CE58:    db $01,$05,$01,$03,$01,$02,$04,$02              ;
                db $04,$03,$04,$00,$01,$02,$03,$00              ;

DATA_11CE68:    db $07,$07,$07,$07,$09,$07,$05,$0B              ;

DATA_11CE70:    db $7F,$1B,$9F,$03,$CF,$7E                      ;

DATA_11CE76:    db $FF,$12,$9F,$03,$CF,$7E                      ;

DATA_11CE7C:    db $5F,$12,$9F,$03,$CF,$7E                      ;

DATA_11CE82:    db $BF,$15,$9F,$03,$CF,$7E                      ;

DATA_11CE88:    db $9F,$03,$DF,$76,$1B,$00                      ;

DATA_11CE8E:    db $B9,$30,$B0,$31,$B1,$32,$B2,$33              ;
                db $B3,$34                                      ;

DATA_11CE98:    db $D9,$50,$D0,$51,$D1,$52,$D2,$53              ;
                db $D3,$54                                      ;

DATA_11CEA2:    db $11,$91,$12,$92,$13,$93,$14,$94              ;
                db $15,$95                                      ;
                  
DATA_11CEAC:    db $79,$00,$70,$01,$71,$02,$72,$03              ;
                db $73,$04                                      ;

DATA_11CEB6:    db $31,$B1,$32,$B2,$33,$B3,$34,$B4              ;
                db $35,$B5,$E0,$20,$D0,$21,$C0,$22              ;
                db $B0,$23,$A0,$24,$90,$25,$80,$26              ;
                db $70,$27,$60,$28,$C0,$05,$C1,$05              ;
                db $C2,$05,$C3,$05,$D0,$05,$D1,$05              ;
                db $D2,$05,$D3,$05,$E0,$05,$E1,$05              ;
                db $E2,$05,$E3,$05,$F0,$05,$F1,$05              ;
                db $F2,$05,$F3,$05,$D2,$CE,$DA,$CE              ;
                db $E2,$CE,$EA,$CE,$00,$01,$01,$03              ;
                db $04,$04,$08,$09,$0C,$0C,$0F,$10              ;
                db $05,$00,$02,$02,$00,$01,$00,$01              ;
                db $00,$01,$02,$01                              ;

DATA_11CF12:    db $A7,$A7,$A7,$A7,$A7,$A7,$AE,$AE              ;

DATA_11CF1A:    db $04,$05,$07,$11,$11,$0F,$0F,$03              ;

DATA_11CF22:    db $01,$00,$00,$00,$01,$00,$02,$01              ;

DATA_11CF2A:    db $DB,$37,$38                                  ;

DATA_11CF2D:    db $EE,$ED,$EE                                  ;

DATA_11CF30:    db $05,$04,$04,$04,$05,$07,$04,$02              ;
                db $08,$01,$04,$07,$02,$05,$05,$06              ;
                db $02,$06,$05,$09                              ;

DATA_11CF44:    db $02,$05,$08,$0B,$0E,$11,$13                  ;

DATA_11CF4B:    db $04,$06,$08,$07,$05,$06,$05                  ;

DATA_11CF52:    db $03,$03,$00,$FF,$FF,$03,$00,$00              ;
                db $00,$00,$00,$FF,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$FF,$FF,$FF              ;
                db $FF,$00,$00,$00,$00,$00,$01,$FF              ;
                db $FF,$FF,$01,$00,$00,$00,$00,$00              ;
                db $FF,$00,$FF,$FF,$00,$FF,$00,$00              ;
                db $00,$00,$FF,$01,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$00,$00,$00,$03,$FF,$03              ;
                db $FF,$00,$00,$00,$00,$00,$00,$FF              ;
                db $FF,$00,$00,$00,$00,$00,$00,$00              ;
                db $FF,$00,$FF,$FF,$FF,$FF,$FF,$00              ;
                db $FF,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$FF,$00,$00,$00              ;
                db $FF,$00,$00,$00,$00,$00,$FF,$00              ;
                db $FF,$FF,$03,$FF,$FF,$FF,$00,$00              ;
                db $00,$FF,$FF,$00,$00,$00,$00,$00              ;
                db $00,$00,$FF,$01,$01,$01,$01,$01              ;
                db $00,$00,$00,$00,$FF,$00,$FF,$FF              ;
                db $03,$FF,$00,$00,$00,$00,$00,$FF              ;
                db $FF,$00,$FF,$FF,$00,$00,$00,$00              ;
                db $FF,$01,$FF,$00,$00,$00,$00,$00              ;
                db $00,$00,$FF,$01,$FF,$01,$01,$FF              ;
                db $FF,$00,$00,$00,$FF,$03,$03,$03              ;
                db $FF,$FF,$00,$00,$00,$00,$03,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$03              ;

DATA_11D01A:    db $B9,$00,$30,$70,$B0,$01,$31,$71              ;
                db $B1,$02                                      ;

DATA_11D024:    db $D9,$10,$50,$90,$D0,$11,$51,$91              ;
                db $D1,$12                                      ;

DATA_11D02E:    db $11,$51,$91,$D1,$12,$52,$92,$D2              ;
                db $13,$53                                      ;

DATA_11D038:    db $79,$00,$70,$01,$71,$02,$72,$03              ;
                db $73,$04                                      ;

DATA_11D042:    db $31,$B1,$32,$B2,$33,$B3,$34,$B4              ;
                db $35,$B5                                      ;

DATA_11D04C:    db $40,$40,$94,$95,$40,$40,$94,$95              ;
                db $96,$97,$94,$95,$98,$99,$A2,$A3              ;
                db $98,$99,$D5,$D6,$D7,$D8,$D9,$DA              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF                              ;

DATA_11D098:    db $00,$0A,$14,$1E,$28,$32,$3C,$46              ;
                db $50,$5A,$64,$6E,$78,$82,$8C,$96              ;
                db $A0,$AA,$B4,$BE,$C8                          ;

DATA_11D0AD:    db $51,$72,$C2,$6B,$9D,$BD,$BD,$BD              ; \ Low byte of locations...
                db $BD,$BD,$FA,$79,$CC,$13,$37,$58              ;  | ... of the object + level header data.
                db $58,$58,$58,$58,$58,$09,$20,$A5              ;  | This table has 210 slots.
                db $1A,$1A,$1A,$1A,$1A,$1A,$41,$CF              ;  | 10 for each level (10 rooms) - 21 levels (1-1 through 7-2 and unused 7-3)
                db $F9,$F9,$1D,$F9,$F9,$F9,$F9,$F9              ;  | Many slots in this pointer table point to the same data.
                db $46,$5D,$FD,$45,$90,$B9,$B9,$B9              ;  | That usually implies that those slots (except for the first of the bunch) are unused rooms.
                db $B9,$B9,$E4,$F6,$AD,$C5,$1A,$41              ;  |
                db $A5,$CE,$CE,$CE,$E9,$0A,$60,$7B              ;  |
                db $F0,$22,$22,$22,$22,$22,$22,$C7              ;  |
                db $71,$97,$97,$97,$97,$97,$97,$97              ;  |
                db $97,$AD,$DC,$22,$EF,$4C,$AB,$BE              ;  |
                db $01,$01,$19,$86,$05,$05,$05,$05              ;  |
                db $05,$05,$05,$05,$05,$17,$77,$07              ;  |
                db $3A,$3A,$3A,$3A,$3A,$3A,$62,$75              ;  |
                db $E7,$64,$B7,$EE,$01,$25,$5C,$5C              ;  |
                db $5C,$A4,$40,$56,$56,$56,$56,$56              ;  |
                db $56,$56,$56,$67,$0E,$56,$C3,$F9              ;  |
                db $23,$23,$23,$23,$23,$34,$DE,$2B              ;  |
                db $CE,$32,$32,$32,$32,$32,$56,$F7              ;  |
                db $5E,$82,$AB,$CA,$02,$02,$02,$02              ;  |
                db $26,$39,$7A,$7A,$7A,$7A,$7A,$7A              ;  |
                db $7A,$7A,$A6,$B4,$2A,$E7,$C1,$0A              ;  |
                db $27,$27,$27,$27,$53,$69,$E1,$2A              ;  |
                db $92,$B4,$B4,$B4,$B4,$B4,$D6,$0E              ;  |
                db $70,$25,$5D,$D4,$07,$90,$D9,$5E              ;  |
                db $AD,$AD,$AD,$AD,$AD,$AD,$AD,$AD              ;  |
                db $AD,$AD                                      ; /

DATA_11D17F:    db $D2,$D2,$D2,$D3,$D3,$D3,$D3,$D3              ; \ High byte of locations...
                db $D3,$D3,$D3,$D4,$D4,$D5,$D5,$D5              ;  |... of the object + level header data.
                db $D5,$D5,$D5,$D5,$D5,$D6,$D6,$D6              ;  | This pointer table also has 210 slots.
                db $D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7              ;  | 10 rooms per level, 21 levels.
                db $D7,$D7,$D8,$D7,$D7,$D7,$D7,$D7              ;  | As with the above table, many slots point to the same data.
                db $D8,$D8,$D8,$D9,$D9,$D9,$D9,$D9              ;  | Those slots (except the first of them) are very likely unused.
                db $D9,$D9,$D9,$D9,$DA,$DA,$DB,$DB              ;  |
                db $DB,$DB,$DB,$DB,$DB,$DC,$DC,$DC              ;  | Note: All object data resides in bank 11!
                db $DC,$DD,$DD,$DD,$DD,$DD,$DD,$DD              ;  |
                db $DE,$DE,$DE,$DE,$DE,$DE,$DE,$DE              ;  |
                db $DE,$DE,$DE,$DF,$DF,$E0,$E0,$E0              ;  |
                db $E1,$E1,$E1,$E1,$E2,$E2,$E2,$E2              ;  |
                db $E2,$E2,$E2,$E2,$E2,$E2,$E2,$E3              ;  |
                db $E3,$E3,$E3,$E3,$E3,$E3,$E3,$E3              ;  |
                db $E3,$E4,$E4,$E4,$E5,$E5,$E5,$E5              ;  |
                db $E5,$E5,$E6,$E6,$E6,$E6,$E6,$E6              ;  |
                db $E6,$E6,$E6,$E6,$E7,$E7,$E7,$E7              ;  |
                db $E8,$E8,$E8,$E8,$E8,$E8,$E8,$E9              ;  |
                db $E9,$EA,$EA,$EA,$EA,$EA,$EA,$EA              ;  |
                db $EB,$EB,$EB,$EB,$EC,$EC,$EC,$EC              ;  |
                db $EC,$EC,$EC,$EC,$EC,$EC,$EC,$EC              ;  |
                db $EC,$EC,$EC,$EC,$ED,$ED,$EE,$EF              ;  |
                db $EF,$EF,$EF,$EF,$EF,$EF,$EF,$F0              ;  |
                db $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F1              ;  |
                db $F1,$F2,$F2,$F2,$F3,$F3,$F3,$F4              ;  |
                db $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4              ;  |
                db $F4,$F4                                      ; /

                db $01,$F3,$30,$00,$B7,$0A,$00,$00              ;
                db $56,$10,$1A,$10,$D6,$C2,$29,$10              ;
                db $75,$C4,$5A,$21,$12,$C9,$75,$C7              ;
                db $1E,$C1,$3E,$0A,$00,$20,$20,$CF              ;
                db $FF                                          ;

                db $00,$F3,$30,$00,$F5,$00,$50,$34              ;
                db $E1,$19,$E2,$B5,$12,$0A,$12,$17              ;
                db $12,$16,$E5,$32,$E1,$26,$E3,$57              ;
                db $E5,$38,$C2,$27,$22,$0C,$E2,$17              ;
                db $C1,$11,$E2,$16,$22,$16,$C3,$2B              ;
                db $21,$18,$C4,$37,$C2,$36,$C7,$12              ;
                db $E2,$35,$C8,$3B,$C3,$24,$22,$12              ;
                db $0C,$F5,$00,$29,$04,$C4,$30,$E1              ;
                db $02,$03,$03,$EC,$F4,$07,$0D,$45              ;
                db $0D,$1A,$0D,$26,$E3,$BA,$0C,$FF              ;

                db $80,$E0,$92,$00,$79,$16,$10,$C2              ;
                db $07,$16,$31,$0A,$00,$03,$15,$21              ;
                db $08,$22,$0F,$22,$8A,$2B,$0B,$52              ;
                db $0E,$26,$10,$10,$0A,$C5,$63,$21              ;
                db $60,$0C,$44,$29,$3E,$0F,$14,$0F              ;
                db $09,$01,$19,$0F,$78,$51,$17,$DC              ;
                db $15,$C2,$14,$22,$10,$29,$03,$C2              ;
                db $18,$FA,$15,$C3,$21,$22,$F0,$C8              ;
                db $5A,$10,$1E,$10,$33,$C2,$16,$F9              ;
                db $B8,$27,$0A,$01,$17,$C3,$11,$22              ;
                db $0F,$29,$10,$C2,$17,$C5,$33,$22              ;
                db $07,$C6,$11,$C3,$1F,$25,$F0,$E0              ;
                db $8D,$21,$0F,$27,$43,$C1,$06,$29              ;
                db $0A,$29,$31,$24,$06,$21,$0A,$51              ;
                db $51,$CF,$06,$F3,$30,$22,$75,$D5              ;
                db $51,$CB,$28,$0B,$00,$32,$1E,$26              ;
                db $1A,$CD,$9F,$C0,$50,$21,$01,$21              ;
                db $03,$2D,$08,$54,$0D,$12,$F5,$00              ;
                db $13,$18,$C6,$F4,$F3,$F3,$DF,$C6              ;
                db $F3,$6D,$C8,$F2,$6A,$CF,$5E,$0B              ;
                db $00,$41,$F4,$F3,$F3,$F3,$2E,$16              ;
                db $FF                                          ;

                db $91,$EA,$22,$11,$47,$A8,$19,$25              ;
                db $0B,$25,$16,$83,$24,$0A,$00,$54              ;
                db $13,$25,$F0,$71,$F0,$FC,$F0,$0E              ;
                db $F1,$8F,$F1,$B1,$F1,$F4,$64,$F3              ;
                db $98,$0C,$F5,$00,$40,$48,$03,$18              ;
                db $03,$C7,$13,$00,$28,$F0,$B2,$F1              ;
                db $4A,$FF                                      ;

                db $91,$EA,$22,$11,$03,$F3,$97,$12              ;
                db $F5,$00,$31,$34,$80,$05,$80,$0E              ;
                db $21,$0F,$21,$F0,$EC,$F1,$0F,$F1              ;
                db $50,$E1,$13,$00,$27,$F0,$8A,$FF              ;

                db $80,$E8,$40,$12,$7C,$10,$18,$0C              ;
                db $F5,$00,$10,$12,$10,$15,$11,$30              ;
                db $E7,$08,$03,$09,$E6,$9C,$10,$1F              ;
                db $11,$50,$E7,$0A,$91,$F1,$60,$7E              ;
                db $10,$43,$48,$F5,$01,$00,$F0,$4C              ;
                db $F1,$EB,$F2,$F0,$2A,$F2,$24,$83              ;
                db $25,$81,$4B,$0B,$00,$30,$F0,$8B              ;
                db $F1,$8C,$F1,$CA,$FF                          ;

                db $80,$EA,$70,$10,$8E,$C3,$3B,$C1              ;
                db $F0,$CD,$F1,$48,$DD,$10,$13,$C2              ;
                db $EB,$10,$10,$11,$06,$10,$0E,$11              ;
                db $2E,$C1,$7F,$29,$5D,$16,$0E,$16              ;
                db $2A,$07,$0F,$06,$F5,$01,$30,$18              ;
                db $26,$0C,$2B,$12,$C2,$F0,$E0,$F6              ;
                db $00,$43,$10,$15,$11,$1A,$CD,$35              ;
                db $16,$31,$16,$08,$29,$1D,$09,$01              ;
                db $10,$10,$22,$02,$51,$40,$29,$0B              ;
                db $10,$1C,$11,$12,$26,$18,$CC,$F0              ;
                db $08,$F1,$C2,$F2,$3C,$16,$1D,$16              ;
                db $13,$0B,$01,$13,$15,$56,$0E,$51              ;
                db $9C,$8C,$0D,$8C,$0E,$8C,$0F,$8C              ;
                db $27,$10,$15,$11,$4A,$16,$14,$16              ;
                db $0C,$0B,$01,$20,$26,$16,$09,$82              ;
                db $0A,$82,$0B,$82,$F0,$00,$FF                  ;

                db $91,$EA,$32,$11,$99,$29,$16,$29              ;
                db $0C,$29,$12,$13,$01,$04,$1A,$25              ;
                db $0C,$21,$0E,$21,$F0,$30,$F1,$F7              ;
                db $7D,$A8,$1C,$25,$0E,$26,$1D,$05              ;
                db $3A,$83,$32,$25,$03,$25,$06,$25              ;
                db $07,$25,$09,$80,$0F,$21,$F0,$30              ;
                db $F0,$97,$F0,$D0,$F1,$35,$80,$25              ;
                db $02,$25,$17,$82,$1E,$29,$24,$83              ;
                db $37,$2D,$F0,$F0,$F1,$1B,$F1,$51              ;
                db $7C,$14,$01,$06,$F0,$0F,$F1,$4E              ;
                db $F1,$CA,$FF                                  ;

                db $80,$E0,$20,$02,$00,$8C,$01,$8C              ;
                db $02,$8C,$03,$8C,$28,$10,$1B,$11              ;
                db $53,$0B,$01,$07,$1F,$16,$14,$82              ;
                db $05,$82,$0D,$16,$79,$11,$16,$10              ;
                db $36,$16,$31,$16,$04,$48,$13,$82              ;
                db $04,$82,$05,$82,$06,$82,$07,$82              ;
                db $08,$82,$09,$82,$0A,$82,$0B,$82              ;
                db $0C,$82,$F2,$F0,$01,$F6,$02,$F0              ;
                db $59,$F0,$8A,$F5,$02,$00,$FF                  ;

                db $18,$E3,$01,$01,$64,$32,$09,$32              ;
                db $32,$32,$0B,$32,$14,$2C,$06,$32              ;
                db $0A,$2C,$F0,$44,$F0,$65,$F0,$86              ;
                db $F0,$A7,$F1,$66,$F1,$83,$F1,$A0              ;
                db $F5,$01,$03,$FF                              ;

                db $18,$E3,$01,$01,$64,$32,$09,$32              ;
                db $32,$32,$0B,$32,$24,$31,$0A,$31              ;
                db $17,$27,$F0,$44,$F0,$65,$F0,$86              ;
                db $F0,$A7,$F1,$86,$F1,$A8,$F1,$C4              ;
                db $FF                                          ;

                db $80,$E1,$90,$00,$00,$8A,$01,$8A              ;
                db $02,$8A,$2D,$29,$1A,$29,$28,$C5              ;
                db $2E,$F2,$F1,$C8,$A6,$29,$0E,$10              ;
                db $13,$29,$21,$C2,$07,$C5,$24,$F2              ;
                db $0D,$F2,$26,$C7,$20,$C4,$79,$29              ;
                db $0B,$29,$18,$2B,$11,$22,$02,$26              ;
                db $03,$DB,$10,$C3,$0E,$C1,$14,$F9              ;
                db $3E,$C4,$1A,$C3,$10,$C6,$56,$10              ;
                db $1A,$11,$4C,$D3,$15,$D3,$0D,$C1              ;
                db $16,$C1,$0F,$F3,$18,$F4,$13,$F2              ;
                db $64,$10,$28,$D3,$19,$C1,$12,$D3              ;
                db $0B,$FE,$13,$C1,$15,$F3,$A7,$11              ;
                db $11,$29,$05,$29,$0B,$21,$0C,$21              ;
                db $0D,$21,$0E,$21,$0F,$21,$1A,$C6              ;
                db $60,$C1,$04,$C1,$08,$CA,$80,$2D              ;
                db $0A,$10,$42,$29,$43,$F9,$F1,$A1              ;
                db $3E,$18,$23,$11,$18,$10,$16,$29              ;
                db $24,$22,$06,$21,$08,$22,$13,$D5              ;
                db $12,$C1,$08,$C1,$24,$26,$06,$22              ;
                db $2B,$F1,$F1,$68,$F1,$A1,$34,$18              ;
                db $0A,$18,$9C,$0A,$02,$23,$98,$10              ;
                db $55,$C1,$12,$08,$10,$51,$F0,$E8              ;
                db $FF                                          ;

                db $20,$E0,$03,$19,$55,$2C,$0B,$2C              ;
                db $33,$2C,$0D,$2C,$16,$34,$27,$0A              ;
                db $02,$20,$F0,$54,$F1,$A0,$FF                  ;

                db $20,$E0,$67,$19,$58,$0A,$02,$10              ;
                db $23,$39,$32,$32,$0B,$32,$35,$33              ;
                db $0A,$30,$1A,$AF,$F0,$54,$34,$31              ;
                db $0C,$30,$1C,$AC,$12,$31,$34,$31              ;
                db $32,$31,$34,$31,$F0,$5C,$32,$31              ;
                db $0C,$30,$34,$37,$62,$37,$18,$A9              ;
                db $0D,$00,$0E,$00,$1D,$00,$0E,$00              ;
                db $14,$31,$09,$35,$F0,$14,$6A,$33              ;
                db $3C,$31,$13,$13,$02,$08,$2C,$31              ;
                db $27,$32,$F1,$5B,$F1,$74,$44,$35              ;
                db $36,$35,$34,$35,$19,$A6,$27,$31              ;
                db $0A,$31,$17,$AF,$08,$AD,$F0,$16              ;
                db $49,$AE,$65,$A9,$0B,$AB,$51,$33              ;
                db $0C,$32,$12,$AC,$0D,$A8,$F0,$17              ;
                db $F0,$D4,$63,$31,$14,$A7,$2C,$09              ;
                db $02,$30,$26,$31,$51,$73,$06,$73              ;
                db $F1,$18,$F1,$C0,$FF                          ;

                db $A0,$EA,$57,$19,$39,$29,$13,$13              ;
                db $02,$26,$6B,$32,$28,$77,$F0,$4B              ;
                db $F1,$0D,$7F,$30,$16,$31,$0A,$32              ;
                db $23,$31,$0F,$30,$20,$31,$1F,$30              ;
                db $F0,$08,$90,$66,$07,$31,$17,$31              ;
                db $09,$66,$20,$66,$07,$30,$08,$01              ;
                db $17,$31,$09,$66,$20,$66,$07,$31              ;
                db $17,$31,$09,$66,$80,$29,$10,$30              ;
                db $0A,$29,$20,$29,$10,$30,$09,$82              ;
                db $0A,$82,$0B,$82,$0E,$82,$0F,$82              ;
                db $20,$29,$10,$30,$F0,$4D,$F0,$A8              ;
                db $F0,$CC,$F1,$08,$93,$29,$32,$81              ;
                db $03,$81,$06,$81,$F0,$B0,$F1,$0F              ;
                db $F0,$31,$F2,$99,$42,$F1,$0F,$F1              ;
                db $CA,$F5,$02,$40,$FF                          ;

                db $AA,$F8,$16,$22,$6E,$25,$0F,$25              ;
                db $1E,$32,$3F,$25,$F0,$50,$F0,$BD              ;
                db $F1,$5B,$F1,$9A,$B0,$25,$04,$84              ;
                db $33,$81,$0A,$33,$11,$25,$05,$80              ;
                db $F0,$99,$F0,$DC,$F1,$F8,$FF                  ;

                db $80,$EC,$90,$00,$00,$0E,$14,$11              ;
                db $12,$10,$1C,$10,$4A,$17,$12,$17              ;
                db $8A,$10,$27,$17,$E2,$10,$14,$11              ;
                db $4A,$07,$0F,$D3,$11,$D5,$0E,$D1              ;
                db $10,$D1,$06,$D1,$0D,$D1,$77,$10              ;
                db $19,$11,$48,$29,$1C,$D3,$12,$D1              ;
                db $0B,$D1,$0F,$D1,$13,$D1,$0A,$D1              ;
                db $B8,$26,$0A,$22,$0B,$2B,$0C,$22              ;
                db $0D,$22,$17,$36,$14,$07,$08,$34              ;
                db $17,$36,$10,$D1,$08,$34,$8E,$10              ;
                db $39,$29,$37,$0F,$0A,$0F,$1D,$D2              ;
                db $F0,$0C,$F6,$01,$93,$11,$47,$0F              ;
                db $0F,$37,$1E,$39,$1D,$3B,$F1,$8C              ;
                db $F6,$00,$89,$10,$10,$29,$05,$29              ;
                db $1F,$29,$11,$33,$10,$35,$1C,$0F              ;
                db $F2,$7D,$0F,$F0,$0C,$F6,$01,$F1              ;
                db $8C,$F6,$00,$A3,$10,$11,$11,$07              ;
                db $17,$59,$0B,$03,$10,$FF                      ;

                db $09,$F6,$31,$09,$66,$13,$03,$09              ;
                db $7D,$29,$F0,$55,$F1,$1C,$F1,$4D              ;
                db $83,$29,$F2,$72,$29,$1D,$29,$32              ;
                db $A3,$32,$05,$F1,$C0,$12,$AA,$AC              ;
                db $0A,$03,$20,$F0,$F4,$F1,$98,$F1              ;
                db $A0,$FF                                      ;

                db $89,$EA,$20,$1A,$97,$80,$23,$0A              ;
                db $03,$13,$F0,$4D,$F0,$CC,$F1,$02              ;
                db $F2,$F0,$48,$F0,$8C,$F2,$84,$86              ;
                db $05,$86,$F0,$48,$F1,$0B,$F1,$CA              ;
                db $F5,$04,$00,$FF                              ;

                db $18,$E3,$01,$01,$54,$32,$09,$32              ;
                db $15,$30,$0A,$30,$27,$31,$14,$31              ;
                db $0A,$31,$15,$31,$09,$31,$16,$33              ;
                db $1B,$24,$F0,$44,$F0,$65,$F0,$86              ;
                db $F0,$A7,$F1,$86,$F1,$A3,$F1,$C8              ;
                db $FF                                          ;

                db $89,$EA,$10,$19,$8E,$81,$0F,$81              ;
                db $F0,$B0,$F1,$6F,$BD,$14,$04,$10              ;
                db $40,$81,$F0,$2E,$F1,$CA,$FF                  ;

                db $80,$EA,$90,$18,$2D,$10,$1B,$11              ;
                db $56,$16,$0D,$16,$32,$0B,$04,$01              ;
                db $F0,$6D,$F0,$8D,$F6,$00,$7C,$10              ;
                db $8F,$0F,$11,$D1,$0C,$0F,$F0,$8D              ;
                db $F6,$01,$5A,$10,$26,$11,$33,$29              ;
                db $10,$29,$22,$0F,$0F,$07,$F0,$8D              ;
                db $F6,$00,$74,$10,$45,$29,$09,$29              ;
                db $34,$26,$08,$21,$0C,$21,$0D,$2B              ;
                db $F0,$0C,$AC,$0F,$17,$0F,$19,$0F              ;
                db $13,$07,$04,$97,$30,$07,$F0,$0D              ;
                db $F0,$A2,$F6,$01,$68,$10,$41,$07              ;
                db $3F,$0B,$04,$22,$F0,$A2,$F6,$02              ;
                db $F1,$C2,$F6,$03,$F2,$7E,$07,$15              ;
                db $07,$0A,$07,$F0,$0C,$F5,$04,$22              ;
                db $F6,$00,$83,$11,$10,$10,$4D,$0F              ;
                db $15,$07,$09,$07,$12,$07,$86,$11              ;
                db $12,$10,$4A,$37,$19,$39,$18,$3B              ;
                db $17,$3D,$9D,$0C,$F5,$04,$30,$4A              ;
                db $87,$0B,$87,$0C,$87,$0D,$03,$0E              ;
                db $87,$0F,$87,$7D,$03,$F1,$48,$FF              ;

                db $91,$EA,$20,$19,$8B,$28,$0D,$26              ;
                db $0E,$2D,$0F,$22,$1A,$36,$19,$21              ;
                db $0A,$36,$19,$38,$18,$3A,$F0,$B7              ;
                db $F0,$F0,$5D,$02,$1D,$02,$1D,$02              ;
                db $1D,$02,$3C,$02,$1C,$02,$11,$22              ;
                db $F0,$97,$F0,$D0,$F1,$4F,$F1,$AE              ;
                db $F5,$04,$15,$90,$13,$04,$15,$24              ;
                db $29,$33,$25,$04,$25,$05,$25,$37              ;
                db $27,$F0,$6F,$F0,$D4,$F1,$4A,$FF              ;

                db $09,$F2,$31,$09,$02,$8A,$03,$8A              ;
                db $04,$8A,$05,$8A,$06,$8A,$07,$8A              ;
                db $08,$8A,$09,$8A,$62,$12,$77,$80              ;
                db $07,$29,$F5,$04,$19,$AC,$80,$0C              ;
                db $29,$54,$80,$04,$29,$F0,$51,$F1              ;
                db $6D,$3B,$80,$0B,$29,$52,$82,$03              ;
                db $82,$04,$82,$05,$82,$23,$29,$F1              ;
                db $6E,$F2,$9A,$83,$0B,$83,$0C,$83              ;
                db $0D,$83,$0E,$83,$2C,$0A,$04,$50              ;
                db $F1,$A0,$FF                                  ;

                db $18,$E3,$01,$01,$54,$32,$09,$32              ;
                db $15,$30,$0A,$30,$27,$31,$14,$31              ;
                db $0A,$31,$15,$31,$09,$31,$16,$33              ;
                db $1B,$24,$F0,$44,$F0,$65,$F0,$86              ;
                db $F0,$A7,$F1,$86,$F1,$A3,$F1,$C8              ;
                db $FF                                          ;

                db $89,$EA,$22,$1A,$43,$0A,$04,$33              ;
                db $F0,$4E,$F1,$4F,$F1,$BC,$F2,$64              ;
                db $4E,$64,$00,$07,$00,$08,$00,$F0              ;
                db $13,$F0,$8D,$70,$46,$10,$42,$F0              ;
                db $88,$F0,$EC,$F1,$2B,$F1,$8A,$F5              ;
                db $05,$00,$FF,$89,$EA,$00,$01,$09              ;
                db $A9,$F5,$05,$11,$F0,$2F,$F0,$CC              ;
                db $F1,$8F,$F1,$EA,$FF                          ;

                db $80,$EC,$90,$00,$00,$89,$01,$89              ;
                db $02,$89,$03,$89,$25,$29,$1C,$29              ;
                db $18,$2B,$16,$C4,$2B,$21,$1A,$C2              ;
                db $95,$11,$08,$10,$66,$A6,$F5,$05              ;
                db $00,$12,$32,$09,$32,$0D,$26,$0E              ;
                db $21,$0F,$21,$14,$31,$06,$05,$07              ;
                db $32,$14,$31,$07,$32,$14,$31,$07              ;
                db $32,$14,$31,$07,$32,$14,$31,$06              ;
                db $05,$07,$32,$53,$29,$31,$0F,$0F              ;
                db $29,$23,$21,$05,$21,$71,$C2,$1E              ;
                db $29,$02,$0B,$05,$20,$16,$22,$09              ;
                db $22,$11,$C2,$05,$C3,$09,$C2,$0E              ;
                db $C3,$DD,$11,$5D,$0F,$C3,$29,$39              ;
                db $0F,$13,$0F,$0E,$0F,$F1,$4C,$F6              ;
                db $01,$F1,$CC,$F6,$00,$90,$10,$0E              ;
                db $10,$12,$11,$52,$0F,$06,$0F,$0A              ;
                db $0F,$1E,$D1,$F0,$6C,$F6,$01,$F0              ;
                db $CC,$F6,$00,$86,$11,$31,$29,$08              ;
                db $29,$43,$D2,$0A,$D1,$F0,$0C,$F6              ;
                db $02,$F0,$6C,$F6,$00,$F0,$CC,$F6              ;
                db $02,$F1,$4C,$F6,$00,$84,$10,$52              ;
                db $0F,$0E,$0F,$C8,$17,$47,$0B,$05              ;
                db $30,$F4,$26,$16,$09,$16,$FF                  ;

                db $91,$EA,$10,$19,$8A,$2D,$0D,$13              ;
                db $05,$13,$18,$54,$0B,$21,$F1,$0F              ;
                db $F2,$90,$26,$01,$52,$F0,$8A,$FF              ;

                db $09,$E1,$61,$09,$68,$14,$05,$19              ;
                db $5C,$31,$13,$31,$F0,$35,$F1,$1C              ;
                db $6B,$29,$9D,$29,$A8,$28,$3A,$34              ;
                db $F0,$75,$F1,$1C,$F1,$75,$82,$2C              ;
                db $06,$2C,$09,$2C,$0D,$2C,$24,$2C              ;
                db $0B,$2C,$5C,$09,$05,$50,$F1,$33              ;
                db $F1,$92,$BB,$29,$54,$29,$F0,$6F              ;
                db $92,$29,$5D,$29,$F0,$0D,$B6,$83              ;
                db $07,$83,$08,$83,$09,$83,$28,$0A              ;
                db $05,$70,$1B,$29,$F0,$0E,$F0,$CD              ;
                db $F1,$4E,$F1,$A0,$FF                          ;

                db $18,$E3,$01,$01,$54,$31,$0A,$31              ;
                db $15,$31,$09,$31,$26,$33,$15,$31              ;
                db $09,$31,$14,$30,$0B,$30,$28,$28              ;
                db $F0,$44,$F0,$65,$F0,$86,$F0,$A7              ;
                db $F1,$66,$F1,$84,$F1,$A0,$FF                  ;

                db $89,$EA,$62,$1A,$43,$0A,$05,$33              ;
                db $2C,$35,$1C,$35,$1C,$35,$1C,$35              ;
                db $0D,$29,$F0,$4E,$F1,$8F,$C2,$3F              ;
                db $12,$3F,$12,$3F,$0B,$29,$12,$3F              ;
                db $10,$3F,$03,$29,$10,$3F,$10,$3F              ;
                db $08,$29,$F0,$1C,$62,$29,$2F,$34              ;
                db $1F,$34,$1F,$34,$1E,$36,$1D,$38              ;
                db $1C,$3A,$1B,$3C,$1A,$3E,$F0,$0F              ;
                db $F0,$4E,$F0,$CF,$F1,$0D,$F2,$F1              ;
                db $CC,$F2,$73,$0F,$06,$07,$11,$0F              ;
                db $F1,$2D,$F2,$A0,$07,$06,$07,$22              ;
                db $42,$F0,$10,$F2,$F0,$CF,$F1,$4A              ;
                db $F5,$05,$60,$FF                              ;

                db $AA,$EA,$13,$2A,$8E,$30,$F0,$CD              ;
                db $F1,$52,$F1,$CD,$E4,$32,$1A,$33              ;
                db $1C,$83,$0D,$83,$10,$00,$01,$00              ;
                db $02,$00,$03,$33,$10,$00,$01,$00              ;
                db $02,$00,$F0,$16,$F0,$6D,$F1,$CA              ;
                db $FF                                          ;

                db $21,$E0,$03,$11,$32,$2C,$0D,$2C              ;
                db $22,$2C,$0D,$2C,$22,$2C,$0D,$2C              ;
                db $15,$35,$27,$0A,$05,$36,$F0,$41              ;
                db $F1,$80,$FF                                  ;

                db $80,$EA,$10,$10,$13,$10,$14,$11              ;
                db $1A,$16,$0B,$16,$F0,$42,$EA,$C2              ;
                db $16,$C1,$18,$F1,$0C,$C3,$14,$C4              ;
                db $0D,$0B,$06,$16,$F1,$28,$F1,$42              ;
                db $FF                                          ;

                db $00,$F3,$90,$08,$6C,$10,$52,$10              ;
                db $18,$12,$F5,$06,$31,$C3,$10,$46              ;
                db $10,$9C,$10,$34,$10,$70,$FF,$B4              ;
                db $E2,$F0,$6C,$34,$E2,$38,$E1,$3A              ;
                db $E1,$3C,$E2,$3A,$E1,$38,$E1,$35              ;
                db $E1,$32,$E3,$37,$E1,$37,$E4,$3B              ;
                db $E2,$10,$C2,$2B,$E2,$20,$C3,$1B              ;
                db $E2,$20,$C4,$12,$0B,$06,$01,$08              ;
                db $E3,$F1,$91,$F2,$F1,$8A,$F3,$76              ;
                db $C1,$27,$C2,$18,$0B,$06,$20,$F1              ;
                db $8B,$F1,$AB,$F6,$07,$FF                      ;

                db $91,$EA,$20,$11,$87,$13,$06,$19              ;
                db $F0,$D1,$F2,$94,$5E,$0D,$26,$F2              ;
                db $BB,$08,$0D,$0A,$06,$16,$F1,$10              ;
                db $F1,$CA,$FF                                  ;

                db $80,$E8,$53,$10,$56,$10,$2A,$11              ;
                db $2E,$10,$12,$0A,$06,$43,$17,$11              ;
                db $10,$E4,$08,$10,$1C,$10,$7C,$00              ;
                db $1C,$E2,$27,$0C,$F5,$06,$10,$1F              ;
                db $E2,$2F,$00,$10,$E6,$07,$03,$08              ;
                db $EA,$60,$E2,$26,$E2,$12,$2B,$26              ;
                db $26,$07,$22,$0D,$E2,$16,$C1,$20              ;
                db $00,$01,$00,$0A,$E3,$79,$E3,$22              ;
                db $00,$10,$E3,$07,$E3,$36,$E2,$34              ;
                db $C1,$0A,$E2,$50,$2D,$29,$A8,$18              ;
                db $21,$19,$05,$31,$21,$3D,$26,$0E              ;
                db $21,$0F,$21,$F0,$0C,$F0,$4B,$F0              ;
                db $95,$F2,$4E,$0B,$06,$40,$80,$21              ;
                db $01,$21,$02,$21,$F0,$8B,$F1,$28              ;
                db $F1,$8B,$F1,$CA,$FF                          ;

                db $91,$EA,$32,$12,$41,$13,$06,$35              ;
                db $F0,$2E,$F2,$67,$36,$3D,$00,$1D              ;
                db $00,$14,$35,$10,$31,$F0,$08,$F1              ;
                db $59,$F1,$CA,$F5,$07,$00,$F3,$26              ;
                db $83,$20,$81,$0D,$14,$06,$30,$18              ;
                db $25,$09,$25,$F0,$0B,$F0,$4E,$F1              ;
                db $EA,$FF                                      ;

                db $80,$EA,$98,$10,$2F,$16,$9C,$0A              ;
                db $07,$23,$F0,$82,$F6,$00,$F1,$04              ;
                db $66,$16,$0D,$16,$2A,$0F,$17,$0F              ;
                db $53,$A4,$33,$05,$F5,$07,$11,$F0              ;
                db $62,$44,$16,$1C,$CD,$11,$0F,$16              ;
                db $0F,$09,$C4,$52,$A4,$32,$05,$F5              ;
                db $07,$12,$F0,$64,$7C,$0F,$1E,$51              ;
                db $42,$A4,$32,$05,$F5,$07,$13,$F0              ;
                db $42,$46,$16,$0B,$16,$31,$0F,$52              ;
                db $A4,$32,$05,$F5,$07,$14,$F0,$64              ;
                db $40,$16,$05,$16,$92,$A3,$22,$05              ;
                db $F5,$07,$15,$F0,$C6,$F2,$2A,$16              ;
                db $1D,$16,$44,$01,$05,$01,$F0,$04              ;
                db $F0,$85,$F0,$C4,$F1,$03,$F1,$44              ;
                db $A3,$16,$0C,$16,$26,$0F,$11,$0F              ;
                db $0A,$0F,$F1,$83,$F1,$C4,$F2,$25              ;
                db $16,$17,$16,$3E,$25,$52,$A3,$22              ;
                db $05,$F5,$07,$17,$57,$26,$09,$22              ;
                db $0B,$22,$0C,$2B,$16,$C6,$20,$25              ;
                db $12,$02,$03,$02,$F0,$45,$F0,$82              ;
                db $F1,$AA,$F6,$02,$FF                          ;

                db $81,$EA,$72,$11,$97,$25,$09,$21              ;
                db $0B,$21,$0D,$26,$13,$02,$04,$02              ;
                db $05,$02,$06,$02,$0E,$02,$0F,$02              ;
                db $2F,$2D,$F0,$70,$F0,$EF,$F1,$D0              ;
                db $3C,$AC,$F5,$07,$01,$6C,$05,$40              ;
                db $02,$01,$02,$0C,$05,$F0,$4F,$F0              ;
                db $8E,$F1,$B1,$5D,$AC,$F5,$07,$02              ;
                db $56,$25,$08,$25,$0A,$25,$14,$83              ;
                db $0D,$05,$F0,$BC,$F0,$D5,$9D,$A9              ;
                db $F5,$07,$03,$F0,$17,$F1,$8F,$F1              ;
                db $F7,$F2,$0D,$A9,$F5,$07,$04,$86              ;
                db $41,$16,$41,$F0,$2F,$F0,$97,$F0              ;
                db $CF,$F1,$17,$F1,$4F,$F1,$CA,$6D              ;
                db $A5,$F5,$07,$05,$65,$32,$3F,$83              ;
                db $F0,$4F,$F0,$BC,$F1,$15,$F1,$D3              ;
                db $89,$83,$23,$A8,$0E,$A8,$11,$01              ;
                db $05,$25,$06,$25,$0C,$25,$0D,$25              ;
                db $13,$05,$0E,$05,$32,$83,$05,$83              ;
                db $0D,$83,$37,$25,$09,$25,$F0,$15              ;
                db $3D,$A5,$50,$25,$F5,$07,$08,$F0              ;
                db $7C,$F0,$88,$F0,$CC,$F1,$0E,$F1              ;
                db $CA,$FF                                      ;

                db $81,$EA,$30,$12,$83,$00,$04,$00              ;
                db $05,$00,$06,$00,$07,$00,$08,$49              ;
                db $F0,$7C,$D8,$47,$F0,$55,$F1,$1C              ;
                db $F5,$08,$00,$F2,$F0,$0E,$F2,$43              ;
                db $0A,$07,$00,$F0,$CA,$FF                      ;

                db $91,$EA,$10,$11,$F0,$94,$F2,$48              ;
                db $13,$08,$10,$54,$83,$13,$82,$F0              ;
                db $50,$F0,$AE,$F1,$8A,$FF                      ;

                db $80,$E1,$30,$00,$35,$10,$29,$11              ;
                db $36,$C2,$17,$0B,$08,$01,$1E,$0F              ;
                db $8B,$11,$17,$10,$32,$2B,$12,$0F              ;
                db $10,$0F,$13,$01,$05,$52,$08,$26              ;
                db $5C,$18,$45,$10,$49,$0F,$72,$18              ;
                db $08,$18,$96,$0A,$08,$23,$FF                  ;

                db $A0,$EA,$33,$19,$55,$01,$0B,$2D              ;
                db $6C,$09,$08,$39,$F0,$5C,$F0,$75              ;
                db $F1,$1C,$F1,$55,$82,$A8,$22,$05              ;
                db $55,$0A,$08,$46,$F1,$9C,$F1,$D5              ;
                db $AC,$0A,$08,$53,$0D,$82,$19,$81              ;
                db $1A,$80,$0B,$80,$0C,$80,$F0,$5C              ;
                db $F0,$95,$F0,$FC,$F2,$B9,$14,$08              ;
                db $13,$11,$2A,$03,$26,$05,$24,$0C              ;
                db $28,$F0,$14,$F1,$CA,$FF                      ;

                db $20,$E0,$93,$19,$15,$AB,$18,$0A              ;
                db $08,$70,$26,$80,$07,$80,$08,$80              ;
                db $09,$80,$0A,$80,$F0,$35,$C4,$31              ;
                db $36,$33,$3A,$32,$34,$29,$16,$33              ;
                db $33,$32,$36,$33,$3A,$33,$36,$33              ;
                db $42,$34,$12,$30,$03,$29,$05,$29              ;
                db $06,$30,$0D,$29,$12,$30,$F0,$14              ;
                db $12,$30,$04,$28,$09,$32,$12,$34              ;
                db $1A,$29,$16,$29,$0C,$84,$0D,$84              ;
                db $28,$83,$09,$83,$24,$81,$05,$81              ;
                db $42,$38,$0D,$0A,$08,$40,$0E,$A8              ;
                db $2E,$05,$F1,$B7,$87,$2C,$69,$AF              ;
                db $F0,$54,$F1,$D6,$76,$AE,$99,$A5              ;
                db $F0,$57,$83,$00,$0C,$00,$17,$31              ;
                db $16,$33,$15,$35,$16,$33,$1D,$0A              ;
                db $08,$43,$3D,$AC,$F0,$56,$F0,$94              ;
                db $F1,$B6,$F1,$D5,$16,$33,$45,$35              ;
                db $15,$30,$0A,$30,$15,$30,$0A,$30              ;
                db $15,$35,$46,$33,$38,$82,$11,$A9              ;
                db $07,$80,$09,$80,$3B,$84,$29,$80              ;
                db $0A,$80,$0C,$80,$0D,$80,$37,$84              ;
                db $25,$80,$06,$80,$08,$80,$09,$80              ;
                db $32,$31,$F0,$14,$3C,$82,$1B,$80              ;
                db $0D,$80,$3D,$31,$3C,$82,$1B,$80              ;
                db $0D,$80,$23,$0A,$08,$20,$F0,$1A              ;
                db $F1,$74,$F1,$A0,$FF                          ;

                db $20,$E0,$67,$19,$AE,$30,$12,$0A              ;
                db $08,$33,$0E,$AE,$2A,$87,$0B,$87              ;
                db $F0,$94,$F1,$BA,$2C,$31,$1C,$A9              ;
                db $52,$AF,$04,$A4,$06,$A4,$08,$A4              ;
                db $0A,$A4,$F0,$D4,$93,$3B,$AA,$31              ;
                db $3A,$32,$F1,$5A,$3C,$32,$68,$31              ;
                db $36,$33,$12,$0A,$08,$36,$F0,$1B              ;
                db $F0,$98,$F1,$BB,$A6,$31,$48,$31              ;
                db $36,$33,$F0,$F8,$66,$31,$36,$33              ;
                db $68,$31,$F0,$3B,$F1,$58,$36,$33              ;
                db $66,$31,$36,$33,$1A,$0A,$08,$21              ;
                db $F0,$9B,$F1,$A0,$FF                          ;

                db $20,$E0,$37,$19,$A0,$37,$1B,$0A              ;
                db $08,$60,$27,$38,$F0,$9E,$F0,$F3              ;
                db $F1,$5E,$F1,$D3,$26,$04,$10,$37              ;
                db $37,$38,$26,$04,$10,$37,$37,$38              ;
                db $26,$04,$10,$37,$F0,$3E,$F0,$B3              ;
                db $F0,$FE,$F1,$73,$F1,$BE,$37,$38              ;
                db $26,$04,$10,$37,$37,$38,$26,$04              ;
                db $10,$37,$37,$38,$F0,$53,$F0,$9E              ;
                db $F1,$13,$F1,$5E,$F1,$D3,$26,$04              ;
                db $10,$37,$37,$38,$26,$04,$10,$37              ;
                db $43,$0A,$08,$22,$F0,$3E,$F0,$B3              ;
                db $F0,$FE,$F1,$59,$F1,$A0,$FF                  ;

                db $20,$E0,$07,$19,$54,$2C,$0C,$2C              ;
                db $57,$32,$14,$0A,$08,$50,$F0,$41              ;
                db $F1,$A0,$FF                                  ;

                db $88,$FD,$40,$1A,$3A,$10,$27,$11              ;
                db $35,$34,$15,$34,$15,$34,$15,$34              ;
                db $07,$0A,$08,$30,$15,$31,$08,$31              ;
                db $0E,$24,$6A,$10,$25,$11,$54,$40              ;
                db $05,$6B,$8A,$10,$2E,$11,$50,$6F              ;
                db $F0,$08,$98,$10,$60,$63,$06,$68              ;
                db $0F,$40,$F2,$29,$10,$14,$10,$95              ;
                db $42,$F0,$4D,$F1,$6B,$F1,$E8,$F5              ;
                db $08,$80,$FF                                  ;

                db $AA,$F8,$17,$22,$6E,$A4,$F0,$5C              ;
                db $F0,$DD,$F1,$5C,$F1,$D9,$F2,$65              ;
                db $A4,$2A,$33,$F0,$DC,$F1,$F8,$FF              ;

                db $88,$EA,$90,$10,$2C,$10,$1E,$11              ;
                db $44,$39,$0E,$3F,$F0,$82,$F1,$D6              ;
                db $F6,$05,$9A,$10,$6E,$32,$A8,$11              ;
                db $1B,$10,$43,$34,$31,$32,$08,$3F              ;
                db $6B,$11,$68,$3F,$38,$36,$7C,$11              ;
                db $4E,$2D,$1E,$37,$2A,$3C,$F2,$84              ;
                db $26,$0A,$54,$18,$39,$72,$10,$16              ;
                db $11,$45,$3A,$0A,$3B,$32,$3F,$78              ;
                db $10,$57,$3F,$CE,$10,$37,$33,$1A              ;
                db $31,$1B,$31,$1B,$32,$1B,$33,$5E              ;
                db $8B,$0F,$8B,$21,$11,$27,$26,$08              ;
                db $21,$16,$F3,$0A,$32,$24,$21,$11              ;
                db $2B,$03,$F6,$10,$32,$0B,$23,$F5              ;
                db $09,$10,$1A,$F2,$FF                          ;

                db $80,$E8,$90,$12,$22,$10,$17,$11              ;
                db $52,$39,$F1,$82,$B8,$10,$2C,$11              ;
                db $F0,$C1,$F6,$01,$E1,$10,$3B,$0F              ;
                db $F1,$A2,$F6,$02,$A3,$10,$1A,$11              ;
                db $1E,$0F,$2A,$0F,$18,$0F,$0D,$0F              ;
                db $26,$0F,$F0,$81,$F6,$01,$99,$10              ;
                db $1E,$11,$3E,$0F,$B0,$10,$1A,$10              ;
                db $4A,$0F,$28,$0F,$F0,$80,$83,$11              ;
                db $17,$10,$4D,$83,$0E,$83,$0F,$83              ;
                db $1C,$82,$1B,$81,$1A,$80,$F1,$4D              ;
                db $F6,$02,$6B,$10,$F0,$02,$F1,$40              ;
                db $F6,$01,$F2,$47,$10,$1A,$11,$4E              ;
                db $80,$0F,$80,$35,$80,$06,$80,$07              ;
                db $80,$F0,$A0,$F6,$02,$F1,$01,$F1              ;
                db $6C,$65,$11,$37,$42,$30,$80,$F0              ;
                db $22,$F1,$CA,$F5,$0A,$00,$FF                  ;

                db $90,$EA,$10,$10,$AC,$3C,$F0,$8C              ;
                db $F1,$88,$C8,$12,$F5,$0A,$10,$F1              ;
                db $2A,$FF                                      ;

                db $80,$E8,$90,$10,$32,$10,$14,$11              ;
                db $17,$0C,$F5,$0A,$01,$0C,$10,$4F              ;
                db $38,$2B,$34,$23,$33,$07,$03,$08              ;
                db $33,$4C,$10,$78,$3F,$22,$10,$0A              ;
                db $11,$7C,$10,$68,$3F,$A0,$11,$58              ;
                db $3F,$26,$10,$74,$10,$12,$11,$58              ;
                db $3F,$2C,$10,$76,$10,$3E,$10,$38              ;
                db $3F,$88,$10,$1A,$11,$96,$3F,$74              ;
                db $10,$52,$3F,$3C,$10,$54,$10,$17              ;
                db $11,$62,$3A,$19,$34,$1A,$34,$1B              ;
                db $35,$62,$10,$0B,$10,$1A,$11,$27              ;
                db $0A,$0A,$21,$26,$E2,$33,$37,$FF              ;

                db $88,$F6,$90,$28,$4C,$10,$1E,$11              ;
                db $49,$26,$0A,$21,$0B,$21,$18,$B5              ;
                db $0F,$2B,$19,$2E,$78,$0A,$0A,$19              ;
                db $26,$E4,$1F,$34,$42,$BD,$15,$2E              ;
                db $67,$29,$0B,$29,$2A,$32,$20,$33              ;
                db $45,$B4,$0D,$B4,$16,$2E,$0E,$2E              ;
                db $63,$29,$22,$33,$3B,$52,$16,$52              ;
                db $0B,$F2,$16,$F2,$9D,$29,$12,$26              ;
                db $10,$F2,$14,$30,$14,$31,$15,$31              ;
                db $27,$31,$0B,$B4,$1C,$2E,$56,$29              ;
                db $12,$10,$0E,$10,$18,$11,$19,$34              ;
                db $54,$B6,$25,$2E,$6F,$11,$1B,$29              ;
                db $0C,$10,$70,$B4,$09,$B5,$11,$2E              ;
                db $0A,$2E,$65,$34,$2C,$33,$52,$B8              ;
                db $25,$2E,$80,$3F,$43,$08,$18,$B5              ;
                db $12,$F3,$19,$2E,$75,$10,$2C,$10              ;
                db $18,$23,$F5,$0A,$30,$0B,$11,$10              ;
                db $31,$07,$42,$15,$46,$15,$F6,$FF              ;

                db $80,$E8,$30,$30,$28,$10,$1C,$11              ;
                db $52,$39,$F1,$87,$A6,$10,$53,$0F              ;
                db $12,$29,$0D,$26,$3E,$7F,$F0,$4C              ;
                db $F1,$CD,$C3,$29,$06,$29,$09,$29              ;
                db $0C,$29,$3E,$77,$F0,$33,$BE,$0B              ;
                db $0A,$40,$18,$2D,$F0,$5B,$F0,$D1              ;
                db $F1,$CA,$FF                                  ;

                db $91,$EA,$20,$32,$81,$13,$0A,$33              ;
                db $F0,$4C,$F0,$AB,$F1,$E8,$F2,$A3              ;
                db $3B,$F0,$0D,$F0,$48,$F0,$70,$F1              ;
                db $F7,$F2,$F0,$30,$F0,$77,$F0,$8F              ;
                db $F1,$10,$F1,$8A,$F5,$0B,$00,$FF              ;

                db $91,$EA,$02,$11,$4B,$14,$0B,$11              ;
                db $0D,$A8,$F0,$54,$F0,$D3,$F1,$15              ;
                db $F1,$CA,$FF                                  ;

                db $88,$E1,$91,$00,$00,$8A,$2A,$10              ;
                db $1D,$11,$14,$2B,$14,$0F,$33,$0F              ;
                db $05,$0F,$AA,$CB,$27,$21,$16,$C8              ;
                db $12,$26,$04,$21,$11,$C6,$14,$0B              ;
                db $0B,$00,$AC,$10,$F1,$16,$F6,$05              ;
                db $E0,$11,$25,$10,$D4,$10,$0C,$10              ;
                db $18,$11,$F2,$57,$51,$0A,$50,$16              ;
                db $F4,$14,$51,$14,$F1,$13,$50,$12              ;
                db $F1,$0E,$64,$53,$18,$09,$18,$8B              ;
                db $0A,$0B,$26,$23,$69,$F0,$68,$F1              ;
                db $F6,$54,$18,$0A,$18,$89,$0A,$0B              ;
                db $36,$28,$6C,$F0,$88,$55,$18,$0B              ;
                db $18,$89,$0A,$0B,$60,$25,$6B,$F0              ;
                db $16,$F0,$A8,$51,$18,$A1,$62,$F0              ;
                db $D6,$FF                                      ;

                db $20,$E0,$60,$09,$44,$0A,$0B,$41              ;
                db $21,$34,$0A,$34,$27,$31,$31,$35              ;
                db $08,$36,$21,$33,$06,$32,$0A,$34              ;
                db $F0,$54,$24,$3A,$31,$3A,$25,$35              ;
                db $2B,$33,$37,$33,$34,$34,$31,$34              ;
                db $08,$36,$2A,$34,$11,$32,$1C,$32              ;
                db $12,$33,$23,$34,$31,$39,$2C,$32              ;
                db $39,$32,$34,$32,$31,$33,$0B,$33              ;
                db $37,$31,$0D,$31,$21,$78,$1D,$31              ;
                db $F1,$BA,$F1,$D4,$36,$35,$31,$3A              ;
                db $34,$3A,$31,$33,$33,$33,$1D,$31              ;
                db $25,$33,$0C,$32,$38,$33,$35,$33              ;
                db $33,$32,$0D,$31,$21,$36,$2A,$32              ;
                db $35,$32,$0C,$31,$23,$32,$21,$31              ;
                db $09,$33,$14,$0A,$0B,$16,$66,$78              ;
                db $F1,$3B,$F1,$C0,$FF                          ;

                db $20,$E0,$62,$09,$37,$0A,$0B,$42              ;
                db $26,$33,$44,$3A,$31,$78,$F0,$41              ;
                db $F1,$BA,$F1,$C1,$5A,$74,$37,$29              ;
                db $99,$29,$F0,$77,$68,$29,$D9,$29              ;
                db $88,$0A,$0B,$50,$12,$29,$15,$35              ;
                db $F0,$D3,$20,$35,$0A,$35,$45,$35              ;
                db $32,$3B,$41,$3A,$F0,$21,$44,$3A              ;
                db $41,$3A,$34,$3A,$31,$3A,$3C,$32              ;
                db $38,$33,$34,$33,$31,$32,$16,$09              ;
                db $0B,$17,$0B,$33,$21,$38,$F1,$7A              ;
                db $F1,$C0,$FF                                  ;

                db $80,$E8,$32,$18,$5D,$E2,$4F,$E1              ;
                db $91,$41,$04,$41,$07,$41,$0A,$41              ;
                db $0D,$41,$12,$18,$08,$18,$5B,$0A              ;
                db $0B,$20,$1F,$26,$13,$6C,$6F,$2D              ;
                db $12,$41,$05,$41,$08,$41,$0B,$41              ;
                db $0E,$41,$13,$18,$09,$18,$58,$0A              ;
                db $0B,$30,$11,$22,$10,$6C,$FF                  ;

                db $20,$E0,$02,$09,$56,$32,$34,$36              ;
                db $27,$0A,$0B,$33,$21,$3D,$F0,$21              ;
                db $F1,$A0,$FF                                  ;

                db $90,$EA,$10,$1A,$62,$3D,$46,$0A              ;
                db $0B,$18,$22,$3D,$F0,$50,$90,$34              ;
                db $51,$42,$10,$34,$F0,$B7,$F0,$EF              ;
                db $F1,$2E,$F1,$6F,$F1,$97,$F1,$CA              ;
                db $F5,$0B,$70,$FF                              ;

                db $2A,$F5,$0F,$12,$54,$32,$09,$32              ;
                db $07,$00,$08,$00,$43,$31,$0B,$31              ;
                db $32,$40,$07,$00,$08,$00,$09,$00              ;
                db $0D,$40,$F0,$35,$F6,$04,$F0,$53              ;
                db $F0,$D5,$F6,$02,$F0,$F5,$F6,$04              ;
                db $F1,$13,$F1,$95,$F6,$05,$F1,$A0              ;
                db $F6,$02,$F1,$C0,$F6,$04,$FF                  ;

                db $81,$E2,$20,$00,$00,$86,$01,$86              ;
                db $02,$86,$1B,$10,$25,$16,$1C,$C5              ;
                db $E8,$16,$4A,$C8,$3C,$0B,$0C,$10              ;
                db $2B,$82,$0C,$82,$0D,$82,$0E,$82              ;
                db $0F,$82,$F1,$48,$41,$10,$0E,$10              ;
                db $13,$11,$53,$C8,$50,$82,$01,$82              ;
                db $04,$82,$05,$82,$06,$82,$09,$82              ;
                db $0A,$82,$0B,$82,$0C,$82,$0D,$82              ;
                db $F4,$F2,$3C,$16,$F2,$37,$16,$FF              ;

                db $91,$EA,$80,$11,$83,$13,$0C,$01              ;
                db $1B,$2A,$0D,$26,$3E,$54,$F0,$71              ;
                db $F1,$D4,$73,$FC,$38,$87,$09,$87              ;
                db $0A,$87,$35,$84,$06,$84,$07,$84              ;
                db $F0,$68,$90,$FF,$F2,$40,$FF,$62              ;
                db $84,$03,$84,$04,$84,$05,$84,$06              ;
                db $84,$07,$84,$90,$FF,$2D,$88,$0E              ;
                db $88,$0F,$88,$24,$86,$05,$86,$06              ;
                db $86,$07,$86,$B0,$FF,$20,$88,$01              ;
                db $88,$4F,$84,$79,$2B,$11,$27,$02              ;
                db $26,$10,$FF,$00,$81,$01,$81,$02              ;
                db $81,$2D,$88,$0E,$88,$0F,$88,$40              ;
                db $84,$01,$84,$02,$84,$03,$84,$26              ;
                db $82,$07,$82,$08,$82,$09,$82,$70              ;
                db $FF,$23,$88,$04,$88,$05,$88,$9A              ;
                db $2D,$36,$00,$0A,$00,$10,$F0,$32              ;
                db $80,$03,$82,$04,$80,$08,$81,$4E              ;
                db $0B,$0C,$20,$14,$26,$06,$53,$F0              ;
                db $34,$F0,$CD,$F0,$F4,$F1,$4D,$F1              ;
                db $74,$F1,$92,$FF                              ;
          
                db $91,$F0,$13,$12,$6B,$32,$51,$0B              ;
                db $0C,$18,$D1,$00,$F0,$0F,$F0,$B0              ;
                db $F1,$AA,$F5,$0D,$00,$FF                      ;

                db $91,$EA,$10,$11,$F0,$5B,$F2,$F0              ;
                db $11,$F1,$AA,$0C,$A9,$F5,$0D,$10              ;
                db $FF                                          ;

                db $89,$E0,$90,$00,$24,$10,$17,$11              ;
                db $59,$2A,$0A,$52,$18,$C5,$13,$A4              ;
                db $33,$05,$F5,$0D,$01,$52,$10,$09              ;
                db $16,$27,$16,$08,$16,$1B,$16,$F1              ;
                db $21,$AD,$16,$0F,$16,$15,$10,$0E              ;
                db $16,$88,$21,$F1,$A2,$5D,$2B,$3C              ;
                db $10,$1F,$11,$17,$06,$F5,$0D,$40              ;
                db $15,$2A,$08,$22,$09,$22,$0A,$21              ;
                db $F1,$88,$F1,$A0,$C7,$11,$0B,$10              ;
                db $1A,$10,$F2,$18,$16,$1B,$16,$2F              ;
                db $11,$22,$16,$14,$16,$5C,$2A,$F0              ;
                db $01,$F1,$28,$F1,$60,$F1,$A8,$F1              ;
                db $E2,$49,$16,$22,$10,$05,$16,$5F              ;
                db $86,$55,$81,$09,$81,$F0,$48,$F1              ;
                db $62,$F1,$C8,$3C,$10,$1F,$11,$21              ;
                db $16,$05,$16,$0B,$21,$0C,$2A,$0D              ;
                db $21,$0E,$2D,$1A,$C4,$43,$85,$15              ;
                db $84,$21,$82,$F0,$E2,$95,$22,$06              ;
                db $28,$F1,$88,$9D,$8A,$0E,$8A,$0F              ;
                db $8A,$22,$10,$25,$11,$1B,$16,$27              ;
                db $12,$F5,$0D,$23,$F0,$01,$FF                  ;

                db $09,$F3,$30,$28,$0F,$85,$48,$0C              ;
                db $4E,$0B,$0D,$30,$29,$E2,$0C,$84              ;
                db $0D,$84,$32,$10,$F0,$DE,$24,$11              ;
                db $2F,$85,$1A,$10,$52,$E1,$F0,$53              ;
                db $F1,$1E,$78,$0D,$1D,$8C,$23,$10              ;
                db $24,$11,$39,$10,$0C,$83,$12,$E1              ;
                db $55,$E1,$52,$10,$6A,$10,$25,$11              ;
                db $10,$E7,$08,$03,$09,$E4,$F5,$0D              ;
                db $19,$F4,$46,$0C,$F3,$06,$0D,$FF              ;

                db $09,$F5,$60,$29,$14,$10,$2C,$11              ;
                db $11,$0B,$0D,$20,$22,$6B,$07,$01              ;
                db $36,$10,$29,$11,$32,$70,$0D,$70              ;
                db $12,$8E,$0D,$8E,$E3,$70,$0C,$70              ;
                db $2B,$70,$1B,$83,$4B,$8F,$17,$70              ;
                db $17,$86,$18,$70,$18,$87,$04,$70              ;
                db $14,$81,$3A,$70,$F0,$16,$1A,$89              ;
                db $74,$70,$0B,$82,$14,$81,$15,$70              ;
                db $36,$70,$16,$85,$F1,$57,$99,$70              ;
                db $19,$88,$48,$70,$18,$83,$F2,$F0              ;
                db $96,$F0,$D5,$F1,$14,$F2,$3E,$70              ;
                db $1E,$85,$2D,$81,$2D,$0B,$0D,$50              ;
                db $11,$70,$14,$60,$07,$60,$0A,$60              ;
                db $24,$F7,$F1,$56,$FF                          ;

                db $08,$E3,$11,$01,$F5,$0D,$13,$64              ;
                db $31,$0A,$31,$13,$30,$06,$30,$09              ;
                db $30,$0C,$30,$35,$35,$28,$25,$F0              ;
                db $44,$F0,$65,$F0,$86,$F0,$A7,$F1              ;
                db $86,$F1,$A8,$F1,$C4,$45,$35,$23              ;
                db $32,$0A,$32,$25,$21,$08,$26,$F0              ;
                db $02,$F0,$21,$F0,$C0,$FF                      ;

                db $89,$EA,$20,$12,$82,$0B,$0D,$36              ;
                db $2A,$67,$2A,$FF,$F0,$6C,$F1,$48              ;
                db $53,$10,$26,$11,$3E,$6D,$34,$69              ;
                db $2A,$F3,$F1,$CC,$55,$10,$A0,$F9              ;
                db $F0,$08,$F1,$4C,$F1,$8A,$F5,$0E              ;
                db $00,$FF                                      ;

                db $91,$EA,$10,$11,$F0,$70,$F2,$09              ;
                db $A9,$F5,$0E,$10,$F0,$0F,$F1,$8A              ;
                db $FF                                          ;

                db $81,$E8,$92,$00,$22,$10,$16,$11              ;
                db $28,$08,$15,$21,$06,$21,$0B,$26              ;
                db $46,$A4,$F5,$0E,$01,$26,$05,$F0              ;
                db $82,$F0,$C3,$F1,$84,$F1,$C0,$7D              ;
                db $11,$3F,$29,$1D,$29,$13,$16,$04              ;
                db $16,$18,$29,$0C,$82,$0D,$82,$27              ;
                db $26,$08,$21,$09,$21,$52,$10,$16              ;
                db $11,$55,$29,$21,$82,$04,$82,$0A              ;
                db $82,$0C,$29,$0F,$26,$17,$81,$09              ;
                db $29,$1C,$2B,$F1,$C1,$58,$10,$1B              ;
                db $11,$1C,$10,$60,$21,$01,$21,$02              ;
                db $21,$03,$21,$0C,$D2,$17,$29,$0D              ;
                db $0F,$F0,$C0,$44,$1F,$9C,$D5,$6C              ;
                db $1F,$32,$10,$18,$11,$3B,$21,$11              ;
                db $21,$0A,$D3,$25,$C2,$F0,$88,$F1              ;
                db $20,$F2,$9A,$16,$0B,$16,$90,$10              ;
                db $13,$11,$08,$10,$5D,$83,$3F,$25              ;
                db $F1,$C4,$3C,$1F,$63,$2A,$05,$26              ;
                db $07,$2A,$34,$83,$0C,$DC,$28,$A3              ;
                db $F5,$0E,$24,$11,$2D,$18,$05,$F1              ;
                db $80,$5B,$10,$1E,$11,$5A,$16,$F1              ;
                db $88,$FF                                      ;

                db $91,$EA,$42,$11,$04,$1F,$7E,$D7              ;
                db $18,$0B,$0E,$33,$F0,$4C,$7C,$1F              ;
                db $6A,$21,$18,$DB,$F0,$88,$F1,$2C              ;
                db $F2,$7D,$32,$12,$D2,$13,$D2,$09              ;
                db $21,$3E,$24,$F1,$68,$F1,$8D,$C2              ;
                db $83,$35,$25,$08,$21,$0A,$21,$0C              ;
                db $21,$0E,$21,$F0,$15,$37,$A5,$F5              ;
                db $0E,$18,$4A,$00,$1A,$04,$12,$80              ;
                db $03,$80,$60,$26,$F0,$5A,$F0,$95              ;
                db $F0,$EE,$F1,$CA,$FF                          ;

                db $18,$E0,$61,$11,$68,$13,$0E,$40              ;
                db $28,$33,$12,$31,$24,$31,$26,$31              ;
                db $F0,$8A,$F0,$B3,$F1,$2A,$F1,$D3              ;
                db $29,$31,$2C,$31,$12,$31,$25,$31              ;
                db $27,$32,$22,$32,$0C,$31,$35,$31              ;
                db $28,$32,$F0,$4A,$F0,$D3,$F1,$2A              ;
                db $F1,$B3,$2C,$31,$12,$32,$25,$32              ;
                db $38,$32,$3B,$32,$14,$34,$F0,$2A              ;
                db $F0,$F3,$F1,$4A,$4C,$00,$0D,$00              ;
                db $1A,$33,$33,$31,$26,$81,$07,$13              ;
                db $0E,$20,$23,$32,$23,$32,$33,$32              ;
                db $0A,$33,$0D,$00,$16,$85,$07,$85              ;
                db $F0,$99,$F0,$CA,$F1,$0B,$F1,$D5              ;
                db $23,$32,$1B,$32,$23,$31,$28,$04              ;
                db $14,$38,$0D,$00,$33,$31,$1A,$00              ;
                db $0B,$32,$23,$31,$F1,$0B,$33,$31              ;
                db $06,$86,$07,$86,$08,$34,$0D,$00              ;
                db $33,$31,$1B,$32,$23,$31,$28,$04              ;
                db $14,$39,$0B,$00,$32,$00,$12,$00              ;
                db $F0,$2A,$12,$00,$16,$33,$F0,$36              ;
                db $F0,$80,$FF                                  ;

                db $81,$E8,$90,$12,$02,$1F,$67,$0B              ;
                db $0E,$30,$1F,$21,$16,$DF,$7A,$1F              ;
                db $21,$10,$15,$11,$38,$D9,$10,$21              ;
                db $01,$21,$02,$21,$AD,$10,$63,$D6              ;
                db $E3,$11,$50,$10,$0D,$11,$3A,$1F              ;
                db $B4,$10,$C7,$21,$09,$21,$0B,$21              ;
                db $14,$D9,$98,$E2,$49,$E2,$13,$E3              ;
                db $0F,$E2,$30,$E1,$A4,$E3,$1A,$D3              ;
                db $1C,$0F,$38,$10,$0E,$D2,$1F,$0F              ;
                db $54,$10,$28,$11,$52,$DE,$1A,$0F              ;
                db $5C,$89,$0D,$89,$0E,$89,$0F,$89              ;
                db $8A,$81,$0B,$81,$F0,$8D,$F1,$0C              ;
                db $F5,$0E,$50,$FF                              ;

                db $AA,$EA,$12,$22,$F0,$4F,$F0,$CC              ;
                db $F1,$4F,$F1,$D7,$F1,$EF,$F2,$F0              ;
                db $16,$F0,$88,$F0,$B6,$F0,$C1,$F0              ;
                db $EC,$F1,$EA,$7D,$91,$0E,$91,$1C              ;
                db $90,$18,$37,$FF                              ;

                db $80,$ED,$90,$18,$00,$8C,$01,$8C              ;
                db $02,$8C,$03,$8C,$4C,$10,$59,$16              ;
                db $F1,$6D,$F6,$01,$AD,$10,$2C,$11              ;
                db $64,$D1,$09,$D1,$68,$2B,$2A,$10              ;
                db $55,$06,$2A,$D1,$F5,$0F,$60,$F1              ;
                db $CD,$F6,$00,$66,$10,$79,$0F,$10              ;
                db $0F,$11,$0F,$07,$0F,$F1,$8D,$F6              ;
                db $02,$64,$11,$6F,$16,$32,$D1,$07              ;
                db $D1,$F1,$CD,$F6,$00,$68,$10,$7E              ;
                db $07,$2A,$D1,$F0,$4D,$F6,$01,$72              ;
                db $11,$14,$10,$51,$07,$0E,$94,$26              ;
                db $D1,$F0,$0D,$F6,$00,$F1,$EC,$F6              ;
                db $03,$56,$10,$43,$0F,$09,$0F,$16              ;
                db $0F,$11,$0F,$07,$0F,$14,$21,$08              ;
                db $26,$05,$0F,$0A,$0F,$F0,$0C,$F6              ;
                db $00,$94,$10,$2D,$0F,$2F,$0F,$17              ;
                db $0F,$0B,$0F,$7C,$89,$0D,$89,$0E              ;
                db $89,$0F,$89,$44,$10,$17,$54,$09              ;
                db $2D,$17,$34,$18,$33,$17,$34,$09              ;
                db $0B,$F5,$0F,$10,$16,$32,$0A,$31              ;
                db $FF                                          ;

                db $89,$EA,$30,$19,$46,$13,$F5,$0F              ;
                db $09,$2D,$81,$0E,$81,$0F,$80,$3B              ;
                db $81,$F0,$4E,$F1,$75,$F1,$BC,$C0              ;
                db $80,$01,$80,$44,$00,$09,$06,$0F              ;
                db $00,$10,$07,$02,$07,$04,$06,$05              ;
                db $08,$06,$08,$07,$07,$0A,$07,$0B              ;
                db $08,$0C,$06,$0D,$07,$0E,$07,$0F              ;
                db $08,$F5,$0F,$50,$E7,$00,$10,$07              ;
                db $01,$07,$02,$08,$03,$06,$04,$07              ;
                db $05,$07,$06,$08,$07,$08,$F5,$0F              ;
                db $30,$F1,$71,$AB,$32,$1B,$32,$1B              ;
                db $32,$0C,$09,$F5,$0F,$20,$1B,$30              ;
                db $0D,$30,$F1,$4F,$F1,$CA,$FF                  ;

                db $89,$EA,$20,$1A,$83,$13,$F5,$0F              ;
                db $13,$F0,$51,$B7,$83,$26,$81,$25              ;
                db $32,$12,$00,$03,$00,$04,$00,$05              ;
                db $32,$F0,$0C,$F2,$F0,$0F,$F0,$6A              ;
                db $F5,$10,$00,$FF                              ;

                db $18,$E3,$21,$19,$F5,$0F,$12,$65              ;
                db $31,$09,$31,$36,$33,$24,$31,$0A              ;
                db $31,$F0,$44,$F0,$65,$F0,$86,$F0              ;
                db $A7,$F1,$86,$F1,$A8,$F1,$CF,$F2              ;
                db $F0,$4A,$F0,$CD,$F1,$6B,$F1,$A0              ;
                db $FF                                          ;

                db $18,$E3,$01,$01,$64,$32,$09,$32              ;
                db $34,$30,$0B,$30,$15,$35,$28,$24              ;
                db $F0,$44,$F0,$65,$F0,$86,$F0,$A7              ;
                db $F1,$66,$F1,$83,$F1,$A0,$FF                  ;

                db $18,$E3,$21,$19,$F5,$0F,$11,$65              ;
                db $31,$09,$31,$36,$33,$24,$31,$0A              ;
                db $31,$F0,$44,$F0,$65,$F0,$86,$F0              ;
                db $A7,$F1,$86,$F1,$A8,$F1,$CF,$C6              ;
                db $82,$07,$82,$08,$82,$09,$82,$26              ;
                db $27,$07,$22,$08,$22,$09,$27,$F0              ;
                db $4A,$F0,$CD,$F1,$6B,$F1,$A0,$FF              ;

                db $18,$E3,$01,$01,$65,$31,$09,$31              ;
                db $33,$31,$0B,$31,$17,$31,$26,$26              ;
                db $F5,$0F,$02,$F0,$44,$F0,$65,$F0              ;
                db $86,$F0,$A7,$F1,$86,$F1,$A8,$F1              ;
                db $CF,$F6,$04,$FF                              ;

                db $91,$EA,$10,$19,$F0,$54,$F1,$8F              ;
                db $F2,$4C,$14,$F5,$10,$10,$F0,$CE              ;
                db $F1,$EA,$FF                                  ;

                db $A1,$EA,$90,$18,$00,$0E,$93,$0B              ;
                db $F5,$10,$01,$19,$21,$F0,$81,$F1              ;
                db $88,$F1,$E0,$F2,$F0,$88,$F2,$C9              ;
                db $82,$0A,$82,$0B,$82,$F3,$8F,$86              ;
                db $F2,$70,$26,$01,$21,$04,$2B,$10              ;
                db $86,$01,$86,$04,$86,$05,$86,$F3              ;
                db $F3,$4C,$0B,$F5,$10,$20,$40,$21              ;
                db $10,$85,$01,$85,$F0,$8B,$F1,$8A              ;
                db $FF                                          ;

                db $91,$EA,$20,$1A,$43,$13,$F5,$10              ;
                db $19,$F0,$4E,$F2,$6A,$00,$18,$32              ;
                db $0E,$31,$34,$31,$28,$00,$09,$44              ;
                db $F0,$90,$AA,$82,$0B,$82,$0C,$82              ;
                db $0D,$82,$F5,$11,$00,$F0,$0E,$F1              ;
                db $0F,$F1,$CA,$FF                              ;

                db $89,$EA,$00,$01,$07,$A9,$F5,$11              ;
                db $11,$F0,$50,$F1,$CA,$FF                      ;

                db $80,$EC,$40,$00,$00,$89,$01,$89              ;
                db $0A,$89,$0B,$89,$0C,$89,$0D,$89              ;
                db $0E,$89,$0F,$89,$75,$0A,$F5,$11              ;
                db $44,$24,$42,$F1,$0C,$F6,$01,$60              ;
                db $89,$01,$89,$02,$89,$03,$89,$28              ;
                db $10,$1A,$11,$3E,$0F,$28,$A6,$0C              ;
                db $0F,$0F,$0F,$F5,$11,$00,$1A,$26              ;
                db $18,$05,$38,$05,$F0,$CC,$F6,$00              ;
                db $48,$11,$1D,$11,$14,$10,$54,$D1              ;
                db $08,$D1,$0D,$0F,$F0,$4C,$F6,$02              ;
                db $8A,$10,$14,$10,$0D,$11,$50,$2B              ;
                db $10,$0F,$04,$D1,$0B,$D1,$0F,$2A              ;
                db $F1,$CC,$F6,$00,$6B,$89,$0C,$89              ;
                db $0D,$89,$0E,$89,$0F,$89,$0A,$97              ;
                db $19,$1E,$F5,$11,$20,$FF                      ;

                db $91,$EA,$72,$19,$65,$15,$06,$13              ;
                db $F5,$11,$14,$F0,$8F,$C4,$A4,$13              ;
                db $29,$05,$29,$2D,$A1,$34,$04,$0F              ;
                db $04,$1A,$39,$1A,$39,$1A,$39,$F1              ;
                db $5B,$95,$A1,$0A,$A1,$3C,$04,$18              ;
                db $36,$18,$36,$18,$36,$02,$29,$0E              ;
                db $29,$F0,$91,$F1,$1B,$F1,$F1,$5D              ;
                db $83,$36,$25,$07,$25,$12,$31,$12              ;
                db $31,$12,$31,$10,$41,$02,$31,$04              ;
                db $83,$12,$31,$07,$29,$12,$31,$05              ;
                db $3A,$12,$31,$05,$3A,$F0,$5C,$F0              ;
                db $95,$90,$37,$10,$37,$10,$37,$10              ;
                db $37,$08,$83,$09,$83,$0F,$83,$10              ;
                db $37,$10,$37,$1A,$54,$00,$37,$F0              ;
                db $1C,$F1,$15,$34,$88,$0D,$88,$50              ;
                db $25,$02,$25,$06,$26,$0A,$25,$0C              ;
                db $25,$0E,$25,$38,$80,$19,$83,$0A              ;
                db $83,$32,$25,$0F,$25,$F0,$88,$F0              ;
                db $B5,$F1,$1C,$F1,$35,$F1,$A8,$F1              ;
                db $D5,$7D,$A8,$17,$25,$1D,$05,$12              ;
                db $81,$23,$83,$31,$25,$00,$2D,$04              ;
                db $52,$08,$52,$F0,$5C,$F0,$75,$F1              ;
                db $BC,$F1,$D1,$B8,$12,$F1,$0C,$F1              ;
                db $2A,$F5,$11,$39,$FF                          ;

                db $00,$F3,$90,$08,$34,$E1,$48,$E1              ;
                db $67,$12,$F5,$11,$40,$32,$E1,$09              ;
                db $E4,$54,$12,$18,$12,$09,$12,$0A              ;
                db $12,$0B,$12,$0C,$12,$84,$E1,$3A              ;
                db $E2,$22,$12,$1D,$12,$16,$E1,$54              ;
                db $12,$3C,$12,$2B,$12,$26,$12,$0A              ;
                db $12,$44,$E7,$34,$12,$05,$12,$16              ;
                db $12,$27,$12,$08,$12,$0C,$E1,$24              ;
                db $00,$0A,$00,$13,$E1,$0A,$E2,$55              ;
                db $E4,$36,$E2,$21,$E1,$4A,$12,$0D              ;
                db $12,$34,$12,$16,$E2,$52,$12,$04              ;
                db $E1,$40,$EB,$0C,$03,$0D,$E2,$51              ;
                db $EA,$0C,$03,$0D,$E1,$32,$12,$03              ;
                db $12,$04,$12,$05,$12,$08,$12,$09              ;
                db $12,$0A,$12,$2C,$12,$17,$12,$87              ;
                db $E1,$11,$12,$0D,$12,$32,$E2,$09              ;
                db $E2,$36,$E1,$18,$12,$59,$E1,$55              ;
                db $12,$46,$12,$29,$12,$F0,$34,$F2              ;
                db $07,$0C,$F5,$11,$27,$F0,$18,$F0              ;
                db $57,$F4,$44,$0D,$48,$0D,$92,$0D              ;
                db $0D,$0D,$F2,$4A,$0D,$0B,$0D,$0C              ;
                db $0D,$46,$0D,$B3,$0C,$BD,$0D,$34              ;
                db $0D,$0A,$0D,$A2,$0D,$BC,$0C,$6C              ;
                db $0D,$51,$0D,$0D,$0D,$B5,$0C,$19              ;
                db $0C,$0A,$0C,$0B,$0C,$96,$0D,$CE              ;
                db $86,$2D,$84,$2B,$82,$0C,$82,$59              ;
                db $8C,$26,$8A,$08,$8A,$97,$03,$17              ;
                db $03,$FF                                      ;

                db $80,$E8,$40,$00,$24,$10,$28,$0C              ;
                db $F5,$11,$30,$0E,$11,$90,$E7,$08              ;
                db $03,$09,$EF,$50,$10,$28,$11,$6C              ;
                db $3F,$1A,$3E,$1E,$3F,$40,$10,$22              ;
                db $11,$07,$17,$59,$0B,$F5,$11,$50              ;
                db $2C,$37,$19,$3C,$1E,$33,$13,$39              ;
                db $48,$11,$19,$E2,$12,$10,$F2,$2A              ;
                db $0A,$F5,$11,$10,$20,$E1,$04,$E1              ;
                db $09,$E2,$4D,$11,$13,$10,$28,$11              ;
                db $FF                                          ;

                db $90,$EA,$13,$22,$86,$13,$F5,$11              ;
                db $42,$F0,$AF,$C3,$32,$07,$36,$46              ;
                db $00,$F0,$11,$F0,$6C,$F1,$4B,$F1              ;
                db $CA,$F5,$11,$60,$FF                          ;

                db $AA,$F8,$13,$2A,$F0,$50,$F0,$CD              ;
                db $F1,$0C,$F1,$4F,$F1,$8E,$F2,$8B              ;
                db $81,$15,$32,$32,$00,$03,$00,$04              ;
                db $00,$05,$00,$06,$00,$07,$00,$08              ;
                db $00,$F0,$50,$F1,$37,$F1,$6F,$F1              ;
                db $97,$F1,$CA,$FF                              ;

                db $00,$F3,$00,$00,$03,$A3,$F5,$12              ;
                db $12,$43,$E5,$20,$86,$01,$86,$18              ;
                db $E3,$3A,$E3,$30,$EF,$FF                      ;

                db $80,$E8,$63,$00,$27,$A9,$74,$23              ;
                db $F5,$12,$20,$13,$81,$04,$81,$05              ;
                db $81,$0A,$E3,$22,$E9,$64,$E3,$B6              ;
                db $80,$0C,$80,$3E,$11,$6C,$A6,$F5              ;
                db $12,$00,$2D,$E2,$36,$E5,$0C,$05              ;
                db $0D,$E4,$41,$10,$7E,$01,$31,$3C              ;
                db $0F,$33,$2E,$80,$34,$10,$17,$11              ;
                db $76,$52,$07,$2B,$0A,$22,$15,$C6              ;
                db $1E,$3A,$23,$80,$0D,$80,$3D,$10              ;
                db $69,$26,$1D,$00,$1C,$E7,$49,$80              ;
                db $57,$21,$33,$04,$13,$00,$11,$EE              ;
                db $F4,$42,$0F,$06,$0F,$DC,$0F,$26              ;
                db $0F,$E7,$0F,$F2,$90,$0F,$1E,$0F              ;
                db $E3,$0F,$1D,$0F,$E9,$0F,$B6,$C4              ;
                db $1D,$0F,$18,$0A,$F5,$12,$50,$FF              ;

                db $80,$E8,$30,$00,$3C,$11,$19,$10              ;
                db $5F,$EB,$34,$E7,$0C,$E9,$54,$10              ;
                db $1B,$29,$5C,$E6,$31,$29,$02,$E8              ;
                db $19,$EA,$5C,$29,$43,$ED,$23,$04              ;
                db $06,$EA,$10,$EE,$18,$E7,$12,$EF              ;
                db $23,$EC,$2C,$A7,$F5,$12,$33,$71              ;
                db $29,$12,$EB,$20,$29,$02,$E5,$28              ;
                db $E5,$10,$E3,$F4,$95,$0F,$DB,$0F              ;
                db $CF,$0F,$12,$0F,$AB,$0F,$81,$0F              ;
                db $FF                                          ;

                db $00,$F3,$30,$00,$64,$A6,$0A,$A6              ;
                db $22,$E1,$04,$05,$05,$E4,$0A,$05              ;
                db $0B,$E1,$37,$AA,$21,$E5,$07,$05              ;
                db $08,$E5,$66,$AB,$08,$AB,$14,$AA              ;
                db $0A,$AA,$21,$E2,$0B,$E2,$80,$EF              ;
                db $76,$00,$07,$00,$08,$00,$09,$00              ;
                db $12,$A7,$05,$00,$0A,$00,$15,$00              ;
                db $0A,$00,$10,$E1,$02,$05,$03,$EC              ;
                db $85,$00,$0A,$00,$0C,$00,$10,$EF              ;
                db $30,$EF,$3A,$E3,$13,$A3,$F5,$12              ;
                db $23,$20,$E2,$03,$05,$04,$EB,$F4              ;
                db $35,$C4,$23,$0F,$0B,$0F,$17,$0A              ;
                db $F5,$12,$40,$C2,$0F,$0C,$0F,$FF              ;

                db $89,$EA,$10,$02,$48,$0A,$F5,$12              ;
                db $30,$0C,$33,$F0,$8B,$F1,$6C,$F2              ;
                db $74,$39,$1A,$43,$1A,$43,$00,$00              ;
                db $F0,$8D,$F1,$4C,$F1,$CA,$F5,$13              ;
                db $00,$FF                                      ;

                db $89,$EA,$00,$01,$4C,$00,$21,$2D              ;
                db $02,$21,$03,$21,$04,$21,$05,$21              ;
                db $06,$26,$07,$51,$11,$38,$3A,$32              ;
                db $17,$0A,$F5,$12,$16,$F0,$3C,$F1              ;
                db $EA,$FF                                      ;

                db $80,$FF,$20,$00,$80,$E5,$0D,$E5              ;
                db $2A,$E5,$36,$E5,$52,$10,$1A,$10              ;
                db $1C,$10,$63,$E6,$0B,$E6,$62,$10              ;
                db $47,$B5,$52,$65,$27,$E8,$F5,$13              ;
                db $10,$F4,$20,$C4,$4F,$0F,$F2,$95              ;
                db $0F,$0E,$0F,$68,$19,$3B,$1D,$0E              ;
                db $1D,$27,$40,$28,$1C,$28,$0B,$FF              ;

                db $A1,$EA,$65,$01,$87,$13,$F5,$13              ;
                db $02,$22,$3D,$F0,$50,$85,$84,$0B              ;
                db $84,$6F,$04,$10,$3E,$F0,$34,$F0              ;
                db $70,$F1,$14,$F1,$50,$F1,$94,$F1              ;
                db $B0,$F1,$EF,$D1,$4E,$42,$7D,$F0              ;
                db $17,$F0,$50,$CD,$04,$10,$4C,$0D              ;
                db $82,$0E,$43,$20,$7C,$0E,$75,$F1              ;
                db $14,$F1,$50,$A2,$3D,$27,$80,$17              ;
                db $A4,$F5,$13,$60,$0E,$4F,$14,$81              ;
                db $27,$03,$90,$35,$3E,$46,$24,$76              ;
                db $0C,$78,$38,$A6,$F5,$13,$22,$86              ;
                db $84,$07,$84,$08,$84,$45,$80,$F1              ;
                db $2A,$FF                                      ;

                db $A1,$EA,$95,$01,$88,$0A,$F5,$13              ;
                db $93,$13,$2B,$05,$0F,$0B,$0F,$13              ;
                db $0F,$0D,$0F,$24,$2A,$0C,$26,$F0              ;
                db $50,$F0,$EF,$F1,$50,$F1,$EA,$38              ;
                db $A9,$F5,$13,$86,$3C,$81,$0D,$80              ;
                db $3A,$A3,$5C,$81,$1D,$80,$F0,$10              ;
                db $F0,$91,$F1,$90,$62,$80,$03,$81              ;
                db $35,$A3,$07,$A8,$F5,$13,$16,$47              ;
                db $03,$13,$81,$12,$80,$17,$03,$F0              ;
                db $91,$F1,$0A,$28,$A9,$F5,$13,$73              ;
                db $3C,$81,$0D,$80,$3A,$A3,$5C,$81              ;
                db $1D,$80,$F1,$11,$F1,$90,$62,$80              ;
                db $03,$81,$35,$A3,$53,$81,$08,$0A              ;
                db $F5,$13,$66,$12,$80,$F0,$91,$F0              ;
                db $FB,$F1,$4A,$38,$A7,$F5,$13,$41              ;
                db $98,$4E,$F1,$11,$F1,$CF,$97,$AB              ;
                db $F5,$13,$70,$A7,$03,$F0,$F0,$F1              ;
                db $CA,$98,$0A,$F5,$13,$43,$25,$3D              ;
                db $F0,$AF,$62,$A7,$F5,$13,$44,$86              ;
                db $2D,$16,$0F,$19,$0F,$0F,$0F,$1C              ;
                db $0F,$1B,$26,$0D,$2A,$F0,$6A,$F0              ;
                db $DC,$7C,$0A,$F5,$13,$32,$52,$0F              ;
                db $F0,$6E,$F1,$CA,$FF                          ;

                db $A1,$EA,$34,$01,$5C,$40,$1C,$A4              ;
                db $25,$0A,$F5,$13,$63,$24,$33,$F0              ;
                db $50,$80,$4F,$10,$A7,$05,$A7,$0C              ;
                db $A7,$80,$4F,$60,$4F,$10,$4F,$10              ;
                db $A5,$35,$35,$13,$0A,$F5,$13,$29              ;
                db $20,$4F,$10,$4F,$90,$A3,$28,$0A              ;
                db $F5,$13,$69,$F0,$11,$F1,$4A,$FF              ;

                db $A1,$EA,$95,$02,$3F,$A7,$36,$80              ;
                db $16,$A3,$43,$0A,$F5,$13,$80,$19              ;
                db $01,$F0,$50,$80,$87,$01,$87,$02              ;
                db $3D,$47,$80,$0B,$81,$0E,$81,$0F              ;
                db $81,$17,$A4,$F5,$13,$25,$37,$03              ;
                db $70,$3F,$55,$0F,$0B,$0F,$14,$0F              ;
                db $08,$09,$F5,$13,$47,$0C,$0F,$90              ;
                db $3F,$52,$80,$05,$80,$17,$0A,$F5              ;
                db $13,$27,$7A,$A6,$0D,$AB,$20,$37              ;
                db $08,$87,$09,$87,$8D,$03,$F5,$13              ;
                db $28,$F1,$CA,$F3,$F2,$B7,$0A,$F5              ;
                db $13,$42,$F0,$50,$E3,$00,$08,$00              ;
                db $13,$0F,$08,$0F,$F2,$A4,$0F,$12              ;
                db $0F,$03,$0F,$05,$0F,$06,$0F,$F1              ;
                db $4F,$F1,$8A,$F5,$13,$50,$FF                  ;

                db $AA,$EA,$22,$0B,$3D,$2C,$62,$48              ;
                db $F0,$4F,$F0,$AC,$F1,$6E,$90,$2C              ;
                db $03,$2C,$06,$2C,$1D,$2C,$4F,$32              ;
                db $29,$44,$F1,$3A,$F1,$DC,$90,$2C              ;
                db $03,$2C,$06,$2C,$09,$2C,$34,$32              ;
                db $22,$1A,$18,$0F,$09,$44,$F1,$7A              ;
                db $F1,$D8,$FF                                  ;

                db $21,$E0,$97,$01,$08,$A5,$F5,$13              ;
                db $14,$92,$4B,$42,$4B,$F0,$55,$F1              ;
                db $DC,$33,$29,$22,$4B,$42,$4B,$3C              ;
                db $29,$22,$4B,$F0,$75,$F1,$1C,$F1              ;
                db $95,$42,$4B,$3C,$29,$22,$4B,$42              ;
                db $4B,$33,$29,$F0,$5C,$F0,$D5,$F1              ;
                db $7C,$22,$4B,$37,$29,$12,$4B,$7A              ;
                db $0A,$F5,$13,$30,$F0,$15,$F1,$A0              ;
                db $F3,$F2,$48,$AA,$27,$0A,$F5,$13              ;
                db $24,$28,$03,$F0,$97,$F1,$00,$78              ;
                db $AE,$5A,$29,$15,$29,$38,$03,$3A              ;
                db $29,$16,$29,$F0,$76,$F1,$20,$F1              ;
                db $56,$28,$A4,$18,$03,$3B,$29,$14              ;
                db $29,$18,$A5,$28,$03,$46,$29,$0A              ;
                db $29,$18,$AB,$F0,$20,$F0,$56,$F1              ;
                db $00,$F1,$36,$28,$03,$B7,$0A,$F5              ;
                db $13,$33,$F0,$00,$F1,$17,$F1,$A0              ;
                db $FF                                          ;

                db $21,$E0,$35,$01,$08,$A4,$F5,$13              ;
                db $26,$76,$33,$34,$37,$31,$33,$0B              ;
                db $43,$F0,$54,$35,$36,$15,$46,$25              ;
                db $46,$15,$36,$22,$42,$33,$44,$38              ;
                db $33,$F0,$F5,$3B,$42,$26,$73,$0C              ;
                db $31,$46,$35,$33,$39,$36,$33,$F0              ;
                db $9C,$F0,$B4,$33,$49,$32,$49,$2C              ;
                db $42,$24,$37,$17,$80,$11,$32,$07              ;
                db $A4,$F5,$13,$23,$37,$03,$F1,$A0              ;
                db $FF                                          ;

                db $21,$E0,$64,$01,$28,$A8,$2C,$0A              ;
                db $F5,$13,$40,$29,$45,$F0,$54,$95              ;
                db $35,$52,$32,$45,$33,$48,$34,$34              ;
                db $37,$32,$33,$2C,$31,$46,$32,$38              ;
                db $33,$F0,$95,$35,$35,$52,$33,$15              ;
                db $AD,$07,$33,$12,$0A,$F5,$13,$90              ;
                db $22,$32,$05,$03,$0A,$31,$1A,$A9              ;
                db $2A,$03,$0B,$32,$F1,$5C,$81,$86              ;
                db $14,$30,$06,$33,$0B,$30,$34,$36              ;
                db $31,$AF,$04,$36,$F0,$D4,$31,$03              ;
                db $74,$A6,$06,$A6,$07,$82,$08,$A6              ;
                db $0A,$A6,$0D,$AE,$F0,$20,$F1,$14              ;
                db $7D,$03,$4E,$A8,$37,$40,$17,$A6              ;
                db $F5,$13,$21,$57,$03,$F0,$00,$F0              ;
                db $94,$F1,$A0,$F4,$D6,$0F,$09,$0F              ;
                db $53,$0F,$46,$0F,$3A,$0F,$B7,$0F              ;
                db $2A,$0F,$B6,$0F,$FF                          ;

                db $01,$FE,$30,$00,$28,$10,$4D,$81              ;
                db $2B,$AD,$0D,$0A,$F5,$13,$83,$2B              ;
                db $05,$0C,$41,$22,$10,$46,$10,$4C              ;
                db $AA,$2B,$80,$0C,$05,$11,$10,$28              ;
                db $11,$4B,$AA,$15,$10,$1B,$05,$0C              ;
                db $80,$7C,$AA,$11,$10,$1B,$80,$0C              ;
                db $05,$24,$35,$14,$35,$14,$35,$14              ;
                db $35,$14,$33,$08,$AB,$14,$33,$14              ;
                db $33,$18,$05,$77,$0A,$F5,$13,$20              ;
                db $F0,$80,$F1,$57,$F1,$A0,$FF                  ;

                db $FF                                          ; Empty level, clear level. NOT empty data.

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \ Empty data.
                db $FF,$FF,$FF,$FF,$FF                          ; /

DATA_11F4BB:    db $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5              ; \ High byte of pointer to high byte of room pointers of sprite data, indexed by level number.
                db $F5,$F5,$F5,$F5,$F5,$F6,$F6,$F6              ;  | ...or basically, a pointer to 20 different kinds of pointers. (Each which has 10 bytes, one per room.)
                db $F6,$F6,$F6,$F6,$F6                          ; / Somewhat confusing at first, but after looking a bit at it you will get it.

DATA_11F4D0:    db $0F,$23,$37,$4B,$5F,$73,$87,$9B              ; \
                db $AF,$C3,$D7,$EB,$FF,$13,$27,$3B              ;  | Low byte of pointer to high byte of room pointers of sprite data, indexed by level number.
                db $4F,$63,$77,$8B,$9F                          ; /

DATA_11F4E5:    db $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5              ; \
                db $F5,$F5,$F5,$F5,$F6,$F6,$F6,$F6              ;  | High byte of pointer to low byte of room pointers of sprite data, indexed by level number.
                db $F6,$F6,$F6,$F6,$F6                          ; /

DATA_11F4FA:    db $19,$2D,$41,$55,$69,$7D,$91,$A5              ; \
                db $B9,$CD,$E1,$F5,$09,$1D,$31,$45              ;  | Low byte of pointer to low byte of room pointers of sprite data, indexed by level number.
                db $59,$6D,$81,$95,$A9                          ; /

                db $F6,$F6,$F6,$F7,$F7,$F7,$F7,$F7              ; \ High byte of pointers, indexed per room, level 1-1.
                db $F7,$F7                                      ; /

                db $B3,$BC,$D1,$0E,$14,$19,$19,$19              ; \ Low byte of pointers, indexed per room, level 1-1.
                db $19,$19                                      ; /

                db $F7,$F7,$F7,$F7,$F7,$F7,$F7,$F7              ; \ High byte of pointers, indexed per room, level 1-2.
                db $F7,$F7                                      ; /

                db $25,$45,$54,$5E,$64,$71,$71,$71              ; \ Low byte of pointers, indexed per room, level 1-2.
                db $71,$71                                      ; /

                db $F7,$F7,$F7,$F7,$F7,$F7,$F7,$F7              ; \ High byte of pointers, indexed per room, level 1-3.
                db $F7,$F7                                      ; /

                db $74,$A9,$B1,$CB,$EE,$EE,$EE,$EE              ; \ Low byte of pointers, indexed per room, level 1-3.
                db $EE,$EE                                      ; /

                db $F7,$F8,$F8,$F8,$F8,$F8,$F8,$F8              ; \ High byte of pointers, indexed per room, level 2-1.
                db $F8,$F8                                      ; /

                db $F5,$14,$25,$25,$2F,$25,$25,$25              ; \ Low byte of pointers, indexed per room, level 2-1.
                db $25,$25                                      ; /

                db $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8              ; \ High byte of pointers, indexed per room, level 2-2.
                db $F8,$F8                                      ; /

                db $3C,$47,$76,$85,$98,$A5,$A5,$A5              ; \ Low byte of pointers, indexed per room, level 2-2.
                db $A5,$A5                                      ; /

                db $F8,$F8,$F8,$F8,$F8,$F9,$F9,$F9              ; \ High byte of pointers, indexed per room, level 2-3.
                db $F9,$F9                                      ; /

                db $AF,$B3,$CE,$D1,$F3,$00,$20,$27              ; \ Low byte of pointers, indexed per room, level 2-3.
                db $27,$27                                      ; /

                db $F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9              ; \ High byte of pointers, indexed per room, level 3-1.
                db $F9,$F9                                      ; /

                db $30,$33,$4E,$52,$63,$6E,$6E,$6E              ; \ Low byte of pointers, indexed per room, level 3-1.
                db $6E,$6E                                      ; /

                db $F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9              ; \ High byte of pointers, indexed per room, level 3-2.
                db $F9,$F9                                      ; /

                db $6E,$91,$AA,$B5,$BA,$BA,$BA,$BA              ; \ Low byte of pointers, indexed per room, level 3-2.
                db $BA,$BA                                      ; /

                db $F9,$F9,$F9,$F9,$FA,$FA,$FA,$FA              ; \ High byte of pointers, indexed per room, level 3-3.
                db $FA,$FA                                      ; /

                db $BA,$BF,$CE,$E1,$14,$30,$3D,$49              ; \ Low byte of pointers, indexed per room, level 3-3.
                db $5D,$5D                                      ; /

                db $FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA              ; \ High byte of pointers, indexed per room, level 4-1.
                db $FA,$FA                                      ; /

                db $67,$96,$B7,$B7,$B7,$B7,$B7,$B7              ; \ Low byte of pointers, indexed per room, level 4-1.
                db $B7,$B7                                      ; /

                db $FA,$FA,$FB,$FB,$FB,$FB,$FB,$FB              ; \ High byte of pointers, indexed per room, level 4-2.
                db $FB,$FB                                      ; /

                db $E5,$EA,$31,$58,$63,$63,$63,$63              ; \ Low byte of pointers, indexed per room, level 4-2.
                db $63,$63                                      ; /

                db $FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB              ; \ High byte of pointers, indexed per room, level 4-3.
                db $FC,$FC                                      ; /

                db $72,$76,$85,$AC,$C5,$D0,$E3,$F6              ; \ Low byte of pointers, indexed per room, level 4-3.
                db $03,$0E                                      ; /

                db $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC              ; \ High byte of pointers, indexed per room, level 5-1.
                db $FC,$FC                                      ; /

                db $19,$23,$4C,$55,$55,$55,$55,$55              ; \ Low byte of pointers, indexed per room, level 5-1.
                db $55,$55                                      ; /

                db $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC              ; \ High byte of pointers, indexed per room, level 5-2.
                db $FC,$FC                                      ; /

                db $55,$5A,$91,$AA,$B6,$BF,$CB,$CB              ; \ Low byte of pointers, indexed per room, level 5-2.
                db $CB,$CB                                      ; /

                db $FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD              ; \ High byte of pointers, indexed per room, level 5-3.
                db $FD,$FD                                      ; /

                db $CB,$D0,$EF,$01,$1F,$40,$40,$40              ; \ Low byte of pointers, indexed per room, level 5-3.
                db $40,$40                                      ; /

                db $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD              ; \ High byte of pointers, indexed per room, level 6-1.
                db $FD,$FD                                      ; /

                db $45,$70,$7F,$89,$96,$A5,$AE,$AE              ; \ Low byte of pointers, indexed per room, level 6-1.
                db $AE,$AE                                      ; /

                db $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD              ; \ High byte of pointers, indexed per room, level 6-2.
                db $FD,$FD                                      ; /

                db $B2,$B7,$EC,$EC,$EC,$EC,$EC,$EC              ; \ Low byte of pointers, indexed per room, level 6-2.
                db $EC,$EC                                      ; /

                db $FD,$FD,$FE,$FE,$FE,$FE,$FE,$FE              ; \ High byte of pointers, indexed per room, level 6-3.
                db $FE,$FE                                      ; /

                db $F6,$FA,$08,$23,$50,$55,$5E,$5E              ; \ Low byte of pointers, indexed per room, level 6-3.
                db $5E,$5E                                      ; /

                db $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE              ; \ High byte of pointers, indexed per room, level 7-1.
                db $FE,$FE                                      ; /

                db $63,$67,$93,$A8,$BD,$C6,$C6,$C6              ; \ Low byte of pointers, indexed per room, level 7-1.
                db $C6,$C6                                      ; /

                db $FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF              ; \ High byte of pointers, indexed per room, level 7-2.
                db $FF,$FF                                      ; /

                db $CC,$D8,$F4,$15,$2E,$53,$5B,$86              ; \ Low byte of pointers, indexed per room, level 7-2.
                db $A5,$CB                                      ; /

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \ High byte of pointers, indexed per room, level 7-3. (Unused.)
                db $FF,$FF                                      ; /

                db $D6,$D7,$D8,$D9,$DA,$DA,$DA,$DA              ; \ Low byte of pointers, indexed per room, level 7-3. (Unused.)
                db $DA,$DA                                      ; /

                db $01,$01,$05,$03,$76,$03,$6C,$01              ; \ Sprite data. First room, level 1-1. (Vertical room where you fall from one door.)
                db $01                                          ; / Total amount of sprites: 2.

                db $05,$14,$56,$14,$AD,$03,$03,$9D              ; \ Sprite data.
                db $07,$0E,$83,$0E,$79,$03,$BC,$05              ;  | Vertical room leading up to Birdo, level 1-1.
                db $0E,$90,$0E,$75,$01                          ; / Total amount of sprites: 8.

                db $03,$01,$EC,$07,$01,$1C,$02,$5C              ; \ Sprite data.
                db $03,$E5,$07,$01,$6C,$02,$8C,$01              ;  | Main room, level 1-1.
                db $CC,$05,$03,$79,$01,$D4,$09,$01              ;  | Total amount of sprites: 25.
                db $04,$02,$34,$3B,$87,$3B,$C7,$07              ;  |
                db $03,$A9,$03,$BC,$03,$C6,$05,$01              ;  |
                db $9C,$03,$E5,$05,$01,$2C,$02,$4C              ;  |
                db $07,$01,$1C,$03,$45,$02,$4C,$05              ;  |
                db $01,$95,$14,$D1,$01                          ; /

                db $03,$03,$85,$01,$01,$01                      ; Sprite data. Top room inside cave, level 1-1. Total amount of sprites: 1.

                db $03,$0E,$BC,$01,$01                          ; Sprite data. Bottom room inside cave, level 1-1. Total amount of sprites: 1.

                db $01,$01,$07,$1C,$A7,$44,$A8,$43              ; \ Sprite data. Birdo room, level 1-1.
                db $E7,$01,$01,$01                              ; / Total amount of sprites: 3.

                db $03,$42,$6A,$03,$12,$22,$09,$0F              ; \ Sprite data.
                db $00,$0F,$40,$0F,$90,$0F,$E0,$01              ;  | Main room (outside), level 1-2.
                db $05,$0E,$3C,$0E,$6C,$05,$06,$53              ;  | Total amount of sprites: 12.
                db $0D,$83,$05,$01,$B6,$01,$F6,$01              ; /

                db $03,$01,$DC,$03,$07,$3C,$03,$06              ; \ Sprite data. Cave room, level 1-2.
                db $2C,$05,$0D,$79,$0D,$89,$01                  ; / Total amount of sprites: 5.

                db $01,$05,$1C,$A7,$44,$A8,$03,$43              ; \ Sprite data. Birdo room, level 1-2.
                db $38,$01                                      ; / Total amount of sprites: 3.

                db $05,$3D,$79,$17,$77,$01                      ; Sprite data. Jar room with key, level 1-2. Total amount of sprites: 2.

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Jar room with 1-Up, level 1-2.
                db $01,$01,$03,$02,$28                          ; / Total amount of sprites: 1.

                db $01,$01,$01                                  ; Unused.

                db $03,$42,$38,$05,$07,$94,$07,$B4              ; \ Sprite data.
                db $03,$01,$74,$05,$13,$34,$13,$A4              ;  | Main room, level 1-3.
                db $07,$13,$02,$13,$62,$3B,$E6,$05              ;  | Total amount of sprites: 21.
                db $3B,$26,$3B,$66,$09,$13,$4A,$3B              ;  |
                db $5C,$13,$8A,$3B,$9C,$05,$03,$2A              ;  |
                db $03,$7A,$09,$0D,$29,$0D,$49,$02              ;  |
                db $7A,$02,$9A,$01,$01                          ; /

                db $07,$17,$83,$3D,$88,$2E,$8A,$01              ; Sprite data. Room with key, level 1-3. Total amount of sprites: 3.

                db $07,$2E,$4B,$30,$7C,$30,$C9,$01              ; \ Sprite data.
                db $07,$30,$61,$31,$5A,$03,$BA,$03              ;  | First (vertical) castle chamber, level 1-3.
                db $01,$DB,$03,$06,$4A,$03,$03,$35              ;  | Total amount of sprites: 9.
                db $01,$01                                      ; /

                db $03,$31,$C9,$03,$2F,$C6,$09,$02              ; \ Sprite data.
                db $56,$07,$D4,$07,$D7,$07,$DA,$05              ;  | Second (horizontal) castle chamber, level 1-3.
                db $30,$A7,$30,$F7,$05,$2E,$3A,$2E              ;  | Total amount of sprites: 14.
                db $6A,$09,$0D,$09,$0D,$29,$44,$A8              ;  |
                db $43,$D7,$01                                  ; /

                db $03,$30,$F6,$03,$5D,$D7,$01                  ; Sprite data. Mouser/boss room, level 1-3. Total amount of sprites: 2.

                db $01,$03,$19,$FA,$03,$18,$A7,$05              ; \ Sprite data.
                db $01,$69,$03,$99,$03,$18,$47,$03              ;  | Main room (outside in the desert), level 2-1.
                db $03,$F8,$01,$07,$23,$24,$01,$27              ;  | Total amount of sprites: 10.
                db $01,$49,$03,$19,$4A,$01,$01                  ; /

                db $05,$01,$49,$01,$6D,$03,$01,$D3              ; \ Sprite data.
                db $07,$01,$40,$06,$16,$01,$C8,$01              ;  | Inside the pyramid, level 2-1.
                db $01                                          ; / Total amount of sprites: 6.

                db $01,$05,$1C,$A8,$44,$A9,$03,$43              ; \ Sprite data. Birdo room, level 2-1.
                db $D3,$01                                      ; / Total amount of sprites: 3.

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Jar room (Snifit), level 2-1.
                db $01,$01,$03,$06,$6C                          ; / Total amount of sprites: 1.

                db $03,$42,$5A,$01,$01,$01,$01,$01              ; \ Sprite data. First room, level 2-2.
                db $01,$01,$01                                  ; / Total amount of sprites: 1.

                db $01,$03,$19,$8D,$05,$0F,$50,$18              ; \ Sprite data.
                db $FA,$03,$01,$99,$05,$18,$0A,$18              ;  | Main room (outside in the desert), level 2-2.
                db $37,$07,$0F,$10,$18,$15,$3B,$97              ;  | Total amount of sprites: 18.
                db $07,$18,$58,$18,$A8,$18,$E7,$09              ;  |
                db $18,$28,$18,$57,$1A,$86,$18,$97              ;  |
                db $03,$23,$B5,$03,$23,$05,$01                  ; /

                db $07,$03,$B8,$03,$F8,$03,$FB,$01              ; \ Sprite data. Cave room with extras, level 2-2.
                db $01,$01,$01,$01,$01,$01,$01                  ; / Total amount of sprites: 3.

                db $03,$01,$8A,$05,$01,$C2,$01,$67              ; \ Sprite data.
                db $07,$0E,$A0,$01,$78,$01,$BD,$03              ;  | Inside the pyramid, level 2-2.
                db $06,$E2,$01                                  ; / Total amount of sprites: 7.

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Jar room, level 2-2.
                db $01,$01,$03,$01,$B9                          ; / Total amount of sprites: 1.

                db $01,$05,$1C,$B4,$44,$B4,$03,$43              ; \ Sprite data. Birdo room, level 2-2.
                db $B3,$01                                      ; / Total amount of sprites: 3.

                db $03,$42,$17,$01                              ; Sprite data. Trapped in the sand (first room), level 2-3. Total amount of sprites: 1.

                db $03,$03,$C7,$03,$49,$20,$05,$0F              ; \ Sprite data.
                db $20,$48,$A0,$01,$01,$03,$48,$80              ;  | Main room, level 2-3.
                db $01,$03,$49,$00,$05,$19,$7A,$1A              ;  | Total amount of sprites: 8.
                db $D6,$01,$01                                  ; /

                db $01,$01,$01                                  ; Cave room with extras, level 2-3. No sprites used.

                db $03,$03,$4B,$05,$01,$D5,$01,$AA              ; \ Sprite data.
                db $05,$03,$D2,$01,$D5,$03,$02,$88              ;  | Inside the pyramid, level 2-3.
                db $07,$01,$83,$01,$A9,$01,$1D,$07              ;  | Total amount of sprites: 13.
                db $01,$B1,$01,$89,$01,$3D,$03,$01              ;  |
                db $E3,$01                                      ; /

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Jar room, level 2-3.
                db $01,$01,$03,$01,$B9                          ; / Total amount of sprites: 1.

                db $01,$09,$01,$15,$01,$08,$01,$F8              ; \ Sprite data.
                db $01,$CB,$01,$07,$23,$14,$03,$39              ;  | Room leading to the boss, level 2-3.
                db $03,$7B,$03,$18,$67,$07,$18,$0A              ;  | Total amount of sprites: 12
                db $44,$3B,$18,$6A,$03,$43,$97,$01              ; /

                db $01,$05,$5F,$C5,$02,$D0,$01                  ; Sprite data. Triclyde boss room, level 2-3. Total amount of sprites: 2.

                db $07,$17,$83,$3D,$87,$2F,$A9,$01              ; \ Sprite data. Key room, level 2-3.
                db $01                                          ; /

                db $01,$01,$01                                  ; First room, level 3-1. No sprites used.

                db $03,$49,$08,$03,$48,$0E,$03,$48              ; \ Sprite data.
                db $02,$05,$12,$92,$49,$09,$03,$03              ;  | Big waterfall room, level 3-1.
                db $E5,$05,$03,$21,$03,$87,$01,$01              ;  | Total amount of sprites: 8.
                db $01,$01,$01                                  ;

                db $01,$01,$01,$01                              ; Secret warp room, level 3-1. No sprites used.

                db $01,$03,$03,$2B,$03,$25,$12,$03              ; \ Sprite data.
                db $23,$95,$03,$03,$65,$03,$24,$05              ;  | Up in the clouds, level 3-1.
                db $01                                          ; / Total amount of sprites: 5.

                db $01,$07,$43,$93,$1C,$B9,$44,$BA              ; \ Sprite data. Birdo room, level 3-1.
                db $01,$01,$01                                  ; / Total amount of sprites: 3.

                db $05,$42,$42,$49,$40,$05,$08,$25              ; \ Sprite data.
                db $48,$C0,$01,$03,$48,$00,$05,$25              ;  | Main room (outside), level 3-2.
                db $E6,$49,$80,$01,$05,$08,$35,$08              ;  | Total amount of sprites: 12.
                db $55,$05,$06,$A4,$06,$CB,$01,$03              ;  |
                db $06,$96,$01                                  ; /

                db $07,$04,$3C,$04,$6C,$04,$EC,$03              ; \ Sprite data.
                db $04,$1C,$01,$01,$03,$03,$29,$07              ;  | Main room (underground), level 3-2.
                db $02,$29,$02,$49,$02,$6C,$01,$01              ;  | Total amount of sprites: 8.
                db $01                                          ; /

                db $05,$1C,$B6,$44,$B6,$03,$43,$FA              ; \ Sprite data. Birdo room, level 3-2.
                db $01,$01,$01                                  ; / Total amount of sprites: 3.

                db $01,$03,$5C,$C7,$01                          ; Sprite data. Unused room (belonging to level 3-2). Total amount of sprites: 1.

                db $03,$42,$4A,$01,$01                          ; Sprite data. First room, level 3-3. Total amount of sprites: 1.

                db $01,$01,$07,$0A,$14,$08,$58,$0A              ; \ Sprite data. Outside the fort, level 3-3.
                db $84,$01,$01,$01,$01,$01,$01                  ; / Total amount of sprites: 3.

                db $03,$31,$65,$05,$0E,$75,$0E,$95              ; \ Sprite data.
                db $09,$30,$05,$31,$55,$0D,$AC,$0D              ;  | Fort hall, first chamber, level 3-3.
                db $CC,$01,$01                                  ; / Total amount of sprites: 7.

                db $01,$09,$31,$72,$2E,$84,$2E,$B7              ; \ Sprite data.
                db $30,$4C,$07,$2E,$81,$2F,$1A,$31              ;  | Vertical room #1 (the one which is not directly suitable for advancing to a higher part), level 3-3.
                db $DF,$07,$2E,$35,$2E,$96,$2E,$18              ;  | Total amount of sprites: 20.
                db $03,$31,$71,$03,$31,$CF,$07,$2F              ;  |
                db $20,$31,$70,$2E,$7E,$07,$2F,$71              ;  |
                db $30,$8D,$31,$7F,$05,$30,$34,$30              ;  |
                db $C7,$01,$01                                  ; /

                db $03,$06,$6C,$05,$23,$8D,$23,$CD              ; \ Sprite data.
                db $05,$02,$57,$02,$ED,$01,$05,$05              ;  | Vertical room #2 (leading to the outside part), level 3-3.
                db $C2,$07,$3B,$05,$07,$C4,$03,$3D              ;  | Total amount of sprites: 10.
                db $03,$0E,$D6,$01                              ; /
 
                db $03,$15,$6F,$03,$15,$6B,$03,$15              ; \ Sprite data. Vertical room #3 with Shy Guy generators, level 3-3.
                db $67,$03,$15,$63,$01                          ; / Total amount of sprites: 4.

                db $0B,$31,$73,$2F,$84,$31,$79,$17              ; \ Sprite data. Key room, level 3-3.
                db $87,$3D,$89,$01                              ; / Total amount of sprites: 5.

                db $01,$05,$0E,$C9,$0E,$E9,$03,$0D              ; \ Sprite data.
                db $E9,$05,$0D,$09,$0D,$29,$05,$44              ;  | Outside on roof part, level 3-3.
                db $6B,$43,$AA,$01                              ; / Total amount of sprites: 7.

                db $03,$2F,$22,$05,$2F,$62,$5D,$D6              ; \ Sprite data. Mouser boss room, level 3-3.
                db $01,$01                                      ; / Total amount of sprites: 3.

                db $01,$05,$29,$96,$13,$B2,$03,$13              ; \ Sprite data.
                db $22,$0B,$29,$09,$29,$29,$13,$35              ;  | First icy room, level 4-1.
                db $29,$D9,$29,$F6,$01,$09,$29,$46              ;  | Total amount of sprites: 18.
                db $29,$98,$29,$A6,$29,$F8,$05,$13              ;  |
                db $13,$29,$B8,$05,$29,$08,$29,$B5              ;  |
                db $05,$29,$35,$13,$41,$01,$01                  ; /

                db $01,$01,$03,$26,$58,$01,$07,$29              ; \ Sprite data.
                db $0A,$26,$58,$29,$9A,$05,$29,$3A              ;  | Second icy room, level 4-1.
                db $29,$DC,$03,$26,$F6,$01,$05,$29              ;  | Total amount of sprites: 11.
                db $3C,$26,$D7,$05,$44,$85,$43,$D4              ;  |
                db $01                                          ; /

                db $01,$03,$5C,$B8,$01,$01,$01,$01              ; \ Sprite data.
                db $01,$01,$01,$01,$01,$01,$01,$01              ;  | Unused (4-1). Perhaps intended for a Birdo fight?
                db $01,$01,$01,$01,$01,$01,$01,$01              ;  | Would be feasible because 4-1 normally lacks a Birdo fight.
                db $01,$01,$01,$01,$01,$01,$01,$01              ;  | Total amount of sprites: 1.
                db $01,$01,$01,$01,$01,$01,$01,$01              ;  |
                db $01,$01,$01,$01,$01,$01                      ; /

                db $03,$42,$47,$01,$01                          ; Sprite data. First room, 4-2. Total amount of sprites: 1.

                db $05,$10,$D3,$10,$F5,$03,$10,$D8              ; \ Sprite data.
                db $09,$10,$16,$10,$37,$10,$44,$10              ;  | Detestable Beezo-fest room, level 4-2.
                db $78,$0B,$10,$67,$10,$98,$10,$C7              ;  | Total amount of sprites: 30.
                db $10,$E4,$10,$F8,$07,$29,$C8,$29              ;  |
                db $E8,$10,$F3,$05,$10,$A6,$10,$D8              ;  |
                db $0B,$10,$37,$10,$53,$10,$95,$10              ;  |
                db $D8,$10,$F4,$0B,$10,$3A,$10,$56              ;  |
                db $10,$7B,$10,$84,$10,$F7,$07,$10              ;  |
                db $23,$10,$66,$29,$B8,$01,$01                  ; /

                db $01,$03,$28,$6A,$05,$28,$7A,$28              ; \ Sprite data.
                db $FA,$01,$03,$28,$DA,$05,$28,$69              ;  | Whale room, level 4-2.
                db $07,$98,$09,$28,$2A,$03,$39,$28              ;  | Total amount of sprites: 14.
                db $BA,$03,$C9,$05,$28,$69,$03,$88              ;  |
                db $05,$28,$A9,$29,$D3,$01,$01                  ; /

                db $01,$03,$26,$C7,$01,$05,$04,$99              ; \ Sprite data. Spikes, level 4-2.
                db $04,$C9,$01                                  ; / Total amount of sprites: 3.

                db $01,$05,$1C,$B8,$44,$B9,$03,$43              ; \ Sprite data. Birdo room, level 4-2.
                db $BA,$01,$01,$01,$01,$01,$01                  ; / Total amount of sprites: 3.

                db $03,$42,$2A,$01                              ; Sprite data. First room, level 4-3. Total amount of sprites: 1.

                db $01,$03,$1C,$A9,$01,$01,$01,$01              ; \ Sprite data. Outside room, level 4-3.
                db $01,$01,$01,$03,$10,$18,$01                  ; / Total amount of sprites: 2.

                db $09,$29,$EA,$29,$EC,$29,$DE,$29              ; \ Sprite data.
                db $EE,$03,$29,$EE,$05,$29,$E0,$29              ;  | Vertical room up, level 4-3.
                db $E2,$03,$29,$8C,$09,$29,$92,$29              ;  | Total amount of sprites: 14.
                db $B2,$29,$E9,$29,$EB,$05,$29,$71              ;  |
                db $29,$E4,$01,$01,$01,$01,$01                  ; /

                db $07,$01,$C8,$03,$D8,$02,$E8,$01              ; \ Sprite data.
                db $01,$01,$07,$29,$72,$29,$82,$29              ;  | Vertical room down, level 4-3.
                db $7E,$01,$03,$29,$C1,$01,$01,$01              ;  | Total amount of sprites: 7.
                db $01                                          ; /

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ High up the castle outside, level 4-3.
                db $01,$01,$01                                  ; / No sprites used.

                db $09,$17,$72,$3D,$74,$29,$57,$29              ; \ Sprite data.
                db $97,$01,$01,$01,$01,$01,$01,$01              ;  | Key room, level 4-3.
                db $01,$01,$01                                  ; / Total amount of sprites: 4.

                db $05,$29,$65,$29,$95,$05,$44,$2A              ; \ Sprite data.
                db $43,$87,$01,$01,$01,$01,$01,$01              ;  | Penultimate room, level 4-3.
                db $01,$01,$01                                  ; / Total amount of sprites: 4.

                db $03,$6A,$24,$01,$01,$01,$01,$01              ; \ Sprite data. Fryguy boss room, level 4-3.
                db $01,$01,$01,$01,$01                          ; / Total amount of sprites: 1.

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Unused (4-3).
                db $01,$01,$01                                  ; /

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Unused (4-3).
                db $01,$01,$01                                  ; /

                db $03,$42,$31,$03,$08,$45,$03,$23              ; \ Sprite data. Outside room, level 5-1.
                db $56,$01                                      ; / Total amount of sprites: 3.

                db $01,$03,$3B,$E4,$09,$3B,$34,$3B              ; \ Sprite data.
                db $84,$13,$B2,$3B,$D4,$05,$13,$82              ;  | Cave room, level 5-1.
                db $13,$C2,$05,$13,$02,$3B,$A4,$07              ;  | Total amount of sprites: 15.
                db $13,$42,$13,$82,$13,$C2,$03,$13              ;  |
                db $B2,$05,$3B,$94,$3B,$E4,$01,$01              ;  |
                db $01                                          ; /

                db $05,$1C,$C4,$44,$C5,$03,$43,$CA              ; \ Sprite data. Birdo room, level 5-1.
                db $01                                          ; / Total amount of sprites: 3.

                db $03,$42,$2A,$01,$01                          ; Sprite data. First room, level 5-2. Total amount of sprites: 1.

                db $01,$07,$14,$78,$14,$96,$14,$B8              ; \ Sprite data.
                db $09,$08,$29,$14,$D6,$14,$E6,$14              ;  | Main room, level 5-2.
                db $F6,$01,$09,$04,$8C,$04,$9C,$08              ;  | Total amount of sprites: 22.
                db $AB,$04,$BC,$05,$14,$89,$14,$B9              ;  |
                db $05,$14,$55,$14,$95,$07,$14,$17              ;  |
                db $25,$38,$14,$57,$05,$0D,$26,$0D              ;  |
                db $46,$05,$04,$6A,$08,$99,$01                  ; /

                db $03,$14,$8B,$09,$10,$F2,$14,$68              ; \ Sprite data.
                db $14,$8E,$06,$DE,$0B,$10,$02,$06              ;  | Going up into the sky, level 5-2.
                db $C5,$06,$36,$10,$8E,$10,$DE,$01              ;  | Total amount of sprites: 11.
                db $01                                          ; /

                db $01,$01,$01,$01,$01,$01,$05,$13              ; \ Sprite data. Falling from the sky, level 5-2.
                db $55,$13,$85,$01                              ; / Total amount of sprites: 2.

                db $03,$01,$2B,$05,$04,$24,$04,$B4              ; \ Sprite data. Jar room, level 5-2.
                db $01                                          ; / Total amount of sprites: 3.

                db $01,$07,$13,$73,$1C,$B8,$44,$B9              ; \ Sprite data. Birdo room, level 5-2.
                db $03,$43,$B4,$01                              ; / Total amount of sprites: 4.

                db $03,$42,$3A,$01,$01                          ; Sprite data. First room, level 5-2. Total amount of sprites: 1.

                db $03,$49,$80,$01,$03,$47,$00,$01              ; \ Sprite data.
                db $03,$47,$40,$03,$49,$C0,$03,$49              ;  | Main room outside, level 5-3.
                db $C0,$07,$09,$2C,$09,$7C,$09,$AC              ;  | Total amount of sprites: 10.
                db $01,$05,$09,$58,$09,$78,$01                  ; /

                db $01,$05,$23,$36,$09,$C6,$03,$09              ; \ Sprite data.
                db $36,$05,$09,$25,$09,$45,$03,$16              ;  | First chamber of fort (with the huge tree), level 5-3.
                db $A5,$01                                      ; / Total amount of sprites: 6.

                db $01,$05,$24,$52,$24,$3D,$01,$09              ; \ Sprite data.
                db $09,$90,$09,$B0,$2F,$D5,$30,$4F              ;  | Second chamber of fort (vertical part), level 5-3.
                db $05,$15,$82,$2F,$A8,$07,$30,$41              ;  | Total amount of sprites: 11.
                db $15,$84,$31,$8A,$01,$01                      ; /

                db $01,$01,$05,$07,$67,$12,$D2,$01              ; \ Sprite data.
                db $03,$12,$F2,$01,$07,$0F,$60,$03              ;  | Hopping from tree to tree, penultimate room, level 5-3.
                db $92,$03,$A6,$05,$03,$07,$03,$55              ;  | Total amount of sprites: 11.
                db $05,$1C,$B7,$44,$B8,$03,$43,$B5              ;  |
                db $01                                          ; /

                db $01,$03,$61,$A7,$01                          ; Sprite data. Clawgrip boss room, level 5-3. Total amount of sprites: 1.

                db $03,$42,$4A,$07,$19,$1D,$03,$AB              ; \ Sprite data.
                db $19,$DD,$03,$18,$5A,$03,$1A,$49              ;  | Main room in the desert, level 6-1.
                db $07,$19,$1D,$19,$5D,$03,$7B,$03              ;  | Total amount of sprites: 16.
                db $18,$EA,$07,$18,$1A,$19,$AD,$19              ;  |
                db $BD,$03,$1A,$E6,$05,$1A,$36,$24              ;  |
                db $99,$01,$01                                  ; /

                db $01,$07,$18,$4B,$18,$9A,$15,$FB              ; \ Sprite data. Inside the jar building, level 6-1. (The one with those sneaky Cobrats.)
                db $05,$18,$2B,$18,$7B,$01,$01                  ; / Total amount of sprites: 5.

                db $01,$05,$1C,$C8,$44,$C8,$03,$43              ; \ Sprite data. Birdo room, level 6-1.
                db $27,$01                                      ; / Total amount of sprites: 3.

                db $03,$01,$5A,$09,$01,$41,$01,$B4              ; \ Sprite data. Jar room with key, level 6-1.
                db $17,$85,$3D,$69,$01                          ; / Total amount of sprites: 5.

                db $01,$01,$01,$01,$01,$01,$01,$01              ; \ Sprite data. Jar room with turtle shell, level 6-1.
                db $01,$01,$05,$01,$2A,$01,$DA                  ; / Total amount of sprites: 2.

                db $03,$01,$5A,$05,$01,$41,$01,$B4              ; \ Sprite data. Jar room with 1-Up, level 6-1.
                db $01                                          ; / Total amount of sprites: 3.

                db $03,$01,$B8,$01                              ; Sprite data. Jar room with potion, level 6-1. Total amount of sprites: 1.

                db $03,$42,$2A,$01,$01                          ; Sprite data. First room, level 6-2. Total amount of sprites: 1.

                db $05,$0B,$0C,$0B,$26,$07,$0C,$AB              ; \ Sprite data.
                db $0C,$C9,$0C,$E7,$03,$25,$AB,$07              ;  | Air room, level 6-2.
                db $10,$55,$10,$85,$10,$A5,$05,$0C              ;  | Total amount of sprites: 21.
                db $98,$0C,$C8,$03,$10,$A3,$07,$0C              ;  |
                db $63,$0C,$65,$0C,$67,$07,$0C,$65              ;  |
                db $0C,$93,$0C,$C4,$03,$0C,$EB,$05              ;  |
                db $0C,$29,$0C,$A9,$01                          ; /

                db $01,$05,$1C,$CA,$44,$CB,$03,$43              ; \ Sprite data. Birdo room, level 6-2.
                db $D4,$01                                      ; / Total amount of sprites: 3.

                db $03,$42,$2A,$01                              ; Sprite data. Trapped in the sand, level 6-3. Total amount of sprites: 1.

                db $01,$01,$03,$03,$98,$07,$03,$48              ; \ Sprite data. Outside, level 6-3.
                db $1A,$66,$19,$AA,$01,$01                      ; / Total amount of sprites: 4.

                db $01,$05,$16,$49,$16,$F9,$05,$09              ; \ Sprite data.
                db $A9,$16,$C9,$03,$0D,$F5,$07,$0D              ;  | Inside the Bob-Omb room, level 6-3.
                db $27,$0D,$38,$0D,$56,$01,$01,$01              ;  | Total amount of sprites: 8.
                db $01,$01,$01                                  ; /

                db $01,$09,$14,$95,$14,$A4,$14,$B3              ; \ Sprite data.
                db $14,$C2,$07,$14,$A7,$14,$BA,$14              ;  | Gigantic vines (vertical), level 6-3.
                db $C8,$03,$14,$34,$07,$14,$4A,$06              ;  | Total amount of sprites: 17.
                db $75,$06,$7E,$03,$01,$28,$07,$14              ;  |
                db $9C,$14,$AD,$14,$BE,$03,$14,$5C              ;  |
                db $03,$14,$93,$01,$01                          ; /

                db $01,$01,$01,$01,$01                          ; In the clouds, level 6-3. No sprites used.

                db $01,$07,$43,$97,$1C,$B3,$44,$B4              ; \ Sprite data. Birdo room, level 6-3.
                db $01                                          ; / Total amount of sprites: 3.

                db $01,$03,$5F,$B5,$01                          ; Sprite data. Triclyde boss room, level 6-3. Total amount of sprites: 1.

                db $03,$42,$2A,$01                              ; Sprite data. First room, level 7-1. Total amount of sprites: 1.

                db $01,$01,$01,$0D,$09,$8B,$0C,$94              ; \ Sprite data.
                db $09,$94,$0D,$B8,$0C,$E4,$09,$E4              ;  | Main room in the sky (with Albatosses), level 7-1.
                db $07,$09,$2B,$0C,$E4,$09,$E4,$0D              ;  | Total amount of sprites: 18.
                db $0E,$3B,$0C,$54,$09,$54,$09,$6B              ;  |
                db $0C,$94,$09,$94,$07,$15,$37,$0C              ;  |
                db $F3,$09,$F3,$01                              ; /

                db $01,$07,$02,$A8,$06,$B6,$06,$CB              ; \ Sprite data.
                db $07,$15,$38,$03,$DC,$06,$F3,$05              ;  | Cloud maze, level 7-1.
                db $0D,$59,$06,$AB,$01                          ; / Total amount of sprites: 8.

                db $01,$07,$06,$21,$14,$66,$14,$8B              ; \ Sprite data.
                db $07,$31,$87,$31,$D7,$2F,$D9,$05              ;  | Vertical room to Birdo, level 7-1.
                db $31,$E0,$31,$63,$01                          ; / Total amount of sprites: 8.

                db $01,$07,$43,$9A,$1C,$C5,$44,$C6              ; \ Sprite data. Birdo room, level 7-1.
                db $01                                          ; / Total amount of sprites: 3.

                db $05,$31,$B9,$31,$C3,$01                      ; Sprite data. Room with extras, level 7-1. Total amount of sprites: 2.

                db $03,$06,$F5,$05,$06,$58,$06,$E8              ; \ Sprite data. Outside, level 7-2.
                db $03,$0E,$74,$01                              ; / Total amount of sprites: 4.

                db $01,$07,$01,$99,$01,$D9,$15,$F9              ; \ Sprite data.
                db $07,$0E,$77,$0E,$A7,$0E,$C7,$03              ;  | First chamber with conveyor belts, level 7-2.
                db $16,$D9,$01,$05,$25,$1C,$25,$BC              ;  | Total amount of sprites: 10.
                db $03,$25,$5B,$01                              ; /

                db $01,$05,$31,$99,$31,$EC,$05,$31              ; \ Sprite data.
                db $24,$31,$69,$05,$2F,$96,$2F,$E3              ;  | Upper path, horizontal room with Sparkies and chains (also contains a mushroom), level 7-2.
                db $03,$2F,$3A,$03,$1C,$B7,$01,$07              ;  | Total amount of sprites: 11.
                db $1C,$B7,$17,$A4,$3D,$B8,$01,$01              ;  | This room is in fact "two" rooms, the part with the mushroom is semi-hidden.
                db $01                                          ; /

                db $07,$2F,$B8,$30,$F3,$2E,$FC,$09              ; \ Sprite data.
                db $2F,$34,$2F,$74,$2F,$A4,$30,$AB              ;  | Bottom path, horizontal room with Sparkies and chains, level 7-2.
                db $07,$30,$1A,$2F,$79,$30,$F5,$01              ;  | Total amount of sprites: 10.
                db $01                                          ; /

                db $09,$2F,$23,$2F,$83,$2F,$E3,$31              ; \ Sprite data.
                db $CC,$05,$2F,$BB,$2F,$FB,$03,$2F              ;  | Room with locked door leading to the penultimate room, level 7-2.
                db $53,$09,$31,$29,$2E,$43,$2F,$A3              ;  | Total amount of sprites: 13.
                db $31,$59,$01,$01,$01,$01,$01,$05              ;  |
                db $44,$49,$2D,$B7,$01                          ; /

                db $01,$01,$05,$4A,$1A,$6C,$A7,$01              ; Sprite data. Wart room, level 7-2. Total amount of sprites: 2.

                db $03,$2F,$8A,$07,$2E,$73,$31,$85              ; \ Sprite data.
                db $2F,$8C,$05,$31,$87,$2F,$8E,$05              ;  | Bottom path, vertical room with mushroom blocks and Sparkies, level 7-2.
                db $31,$50,$30,$A0,$01,$01,$01,$0D              ;  | Total amount of sprites: 16.
                db $31,$61,$31,$A1,$2F,$A3,$31,$68              ;  |
                db $2F,$5A,$2F,$AA,$05,$2F,$61,$2F              ;  |
                db $A1,$01,$01                                  ; /

                db $09,$03,$76,$07,$69,$07,$99,$30              ; \ Sprite data.
                db $8F,$09,$2F,$A2,$31,$73,$31,$68              ;  | Bottom path, vertical conveyor room, level 7-2.
                db $2E,$AD,$07,$31,$80,$31,$97,$2E              ;  | Total amount of sprites: 13.
                db $7F,$05,$07,$80,$01,$84,$01                  ; /

                db $05,$31,$9C,$30,$7E,$07,$2F,$35              ; \ Sprite data.
                db $30,$77,$31,$A8,$05,$31,$67,$31              ;  | Upper path, vertical chain room with Sparkies, level 7-2.
                db $BA,$01,$09,$30,$42,$31,$82,$30              ;  | Total amount of sprites: 15.
                db $B2,$2F,$74,$09,$2F,$53,$2F,$93              ;  |
                db $30,$54,$2F,$76,$01,$01                      ; /

                db $01,$01,$03,$23,$79,$05,$02,$20              ; \ Sprite data. Semi-secret outside room.
                db $02,$D0,$01                                  ; / Total amount of sprites: 3.

                db $01                                          ; Unused.

                db $01                                          ; Unused.

                db $01                                          ; Unused.

                db $01                                          ; Unused.

                db $01,$01,$01,$01,$01,$01                      ; Unused.

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  | Empty data.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; /
