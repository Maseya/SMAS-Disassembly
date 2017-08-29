;Super Mario Bros. 1

CODE_038000:    JMP CODE_038015         ; $03:8000: 4C 15 80    ;Jump to the main game: SMB1

CODE_038003:    JMP CODE_038308         ; $03:8003: 4C 08 83    ;Jump to NMI data of SMB1

CODE_038006:    JMP CODE_03850D         ; $03:8006: 4C 0D 85    ;Jump to SMB1 IRQ Data

DATA_038009:    db $00,$00,$03,$03,$04,$04,$05,$05              ;

CODE_038011:    JML CODE_009641         ; $03:8011: 5C 41 96 00 ;Show "Pirated game" message

CODE_038015:    NOP                     ; $03:8015: EA          ;\Waste time for no reason?
CODE_038016:    NOP                     ; $03:8016: EA          ;/
CODE_038017:    LDA #$AA                ; $03:8017: A9 AA       ;\
CODE_038019:    STA $702000             ; $03:8019: 8F 00 20 70 ; |
CODE_03801D:    CMP $700000             ; $03:801D: CF 00 00 70 ; |
CODE_038021:    BNE CODE_038011         ; $03:8021: D0 EE       ; |Check if the ROM is pirated. If so
CODE_038023:    LDA #$55                ; $03:8023: A9 55       ; |Show the pirated message
CODE_038025:    STA $702000             ; $03:8025: 8F 00 20 70 ; |
CODE_038029:    CMP $700000             ; $03:8029: CF 00 00 70 ; |
CODE_03802D:    BNE CODE_038011         ; $03:802D: D0 E2       ;/
CODE_03802F:    SEI                     ; $03:802F: 78          ;Set interrupt flag
CODE_038030:    STZ $4200               ; $03:8030: 9C 00 42    ;\
CODE_038033:    STZ $420C               ; $03:8033: 9C 0C 42    ; |Disable NMI, IRQ, DMA, HDMA, Auto-read joypad
CODE_038036:    STZ $420B               ; $03:8036: 9C 0B 42    ;/
CODE_038039:    LDA #$80                ; $03:8039: A9 80       ;\Forced blanking
CODE_03803B:    STA $2100               ; $03:803B: 8D 00 21    ;/
CODE_03803E:    PHK                     ; $03:803E: 4B          ;\Set program bank to current bank
CODE_03803F:    PLB                     ; $03:803F: AB          ;/
CODE_038040:    LDA #$01                ; $03:8040: A9 01       ;\Stop most of the animations
CODE_038042:    STA $028C               ; $03:8042: 8D 8C 02    ;/
CODE_038045:    LDA #$03                ; $03:8045: A9 03       ;
CODE_038047:    STA $0F0B               ; $03:8047: 8D 0B 0F    ;
CODE_03804A:    STZ $028E               ; $03:804A: 9C 8E 02    ;
CODE_03804D:    STZ $0E67               ; $03:804D: 9C 67 0E    ;
CODE_038050:    LDA $700009             ; $03:8050: AF 09 00 70 ;\Load the current level number loaded from save
CODE_038054:    STA $0E24               ; $03:8054: 8D 24 0E    ; |Should be 0, because you can't specify which level you want to load in SMB1.
CODE_038057:    STA $7FFB01             ; $03:8057: 8F 01 FB 7F ;/
CODE_03805B:    LDA $700008             ; $03:805B: AF 08 00 70 ;\Load the current world number loaded from save
CODE_03805F:    STA $075F               ; $03:805F: 8D 5F 07    ; |
CODE_038062:    STA $7FFB00             ; $03:8062: 8F 00 FB 7F ;/|Store into world number to load from the title screen
CODE_038066:    ASL A                   ; $03:8066: 0A          ; | Current world number * 4 + current level number
CODE_038067:    ASL A                   ; $03:8067: 0A          ; |
CODE_038068:    CLC                     ; $03:8068: 18          ; |
CODE_038069:    ADC $700009             ; $03:8069: 6F 09 00 70 ;/
CODE_03806D:    TAX                     ; $03:806D: AA          ;Into X
CODE_03806E:    LDA.l DATA_05D272,x     ; $03:806E: BF 72 D2 05 ;\Load from level table
CODE_038072:    STA $700009             ; $03:8072: 8F 09 00 70 ; |Store into current level number loaded from save
CODE_038076:    STA $7FFB02             ; $03:8076: 8F 02 FB 7F ;/|And some other address
CODE_03807A:    STA $0760               ; $03:807A: 8D 60 07    ;/ And into current level
CODE_03807D:    LDA #$03                ; $03:807D: A9 03       ;\OBJ size: 8x8 and 16x16 sprites
CODE_03807F:    STA $2101               ; $03:807F: 8D 01 21    ;/OBJ VRAM: $C000
CODE_038082:    LDA #$01                ; $03:8082: A9 01       ;\BG1 Tilemap address: $0000
CODE_038084:    STA $2107               ; $03:8084: 8D 07 21    ;/Enable BG1 tilemap horizontal mirroring
CODE_038087:    LDA #$09                ; $03:8087: A9 09       ;\BG2 Tilemap address: $1000
CODE_038089:    STA $2108               ; $03:8089: 8D 08 21    ;/Enable BG2 tilemap horizontal mirroring
CODE_03808C:    LDA #$59                ; $03:808C: A9 59       ;\BG3 Tilemap address: $B000
CODE_03808E:    STA $2109               ; $03:808E: 8D 09 21    ;/Enable BG3 tilemap horizontal mirroring
CODE_038091:    STZ $210A               ; $03:8091: 9C 0A 21    ;no BG4, but set it just in case.
CODE_038094:    LDA #$11                ; $03:8094: A9 11       ;\BG1 and 2 gfx address: $2000
CODE_038096:    STA $210B               ; $03:8096: 8D 0B 21    ;/
CODE_038099:    LDA #$05                ; $03:8099: A9 05       ;\BG3 and 4 gfx address: $A000
CODE_03809B:    STA $210C               ; $03:809B: 8D 0C 21    ;/
CODE_03809E:    STZ $2133               ; $03:809E: 9C 33 21    ;Nothing special about screen mode/video select
CODE_0380A1:    STZ $1681               ; $03:80A1: 9C 81 16    ;unused?
CODE_0380A4:    STZ $0770               ; $03:80A4: 9C 70 07    ;Set level mode to Title Screen
CODE_0380A7:    STZ $0772               ; $03:80A7: 9C 72 07    ;
CODE_0380AA:    LDA #$00                ; $03:80AA: A9 00       ;
CODE_0380AC:    STA $7FFFFF             ; $03:80AC: 8F FF FF 7F ;
CODE_0380B0:    JSL CODE_04FDC4         ; $03:80B0: 22 C4 FD 04 ;Reset scroll registers
CODE_0380B4:    LDA #$09                ; $03:80B4: A9 09       ;\Game mode and character size
CODE_0380B6:    STA $120D               ; $03:80B6: 8D 0D 12    ;/Mode 1 with mode 1 bg3 priority bit enabled
CODE_0380B9:    STZ $0E7E               ; $03:80B9: 9C 7E 0E    ;No screen pixelation/mosaic
CODE_0380BC:    LDA #$10                ; $03:80BC: A9 10       ;\
CODE_0380BE:    STA $120B               ; $03:80BE: 8D 0B 12    ;/Main screen designation
CODE_0380C1:    STZ $120C               ; $03:80C1: 9C 0C 12    ;Sub screen designation
CODE_0380C4:    STZ $1204               ; $03:80C4: 9C 04 12    ;Window mask settings for BG1 and 2
CODE_0380C7:    STZ $1205               ; $03:80C7: 9C 05 12    ;Window mask settings for BG3 and 4
CODE_0380CA:    STZ $1206               ; $03:80CA: 9C 06 12    ;Window mask settings for OAM and color window
CODE_0380CD:    STZ $1209               ; $03:80CD: 9C 09 12    ;Color addition select
CODE_0380D0:    LDA #$20                ; $03:80D0: A9 20       ;\CGADSUB settings
CODE_0380D2:    STA $120A               ; $03:80D2: 8D 0A 12    ;/
CODE_0380D5:    LDA #$20                ; $03:80D5: A9 20       ;\
CODE_0380D7:    STA $0EE0               ; $03:80D7: 8D E0 0E    ; |
CODE_0380DA:    LDA #$40                ; $03:80DA: A9 40       ; |Set fixed color
CODE_0380DC:    STA $0EE1               ; $03:80DC: 8D E1 0E    ; |
CODE_0380DF:    LDA #$80                ; $03:80DF: A9 80       ; |
CODE_0380E1:    STA $0EE2               ; $03:80E1: 8D E2 0E    ;/
CODE_0380E4:    STZ $1203               ; $03:80E4: 9C 03 12    ;HDMA enable: none
CODE_0380E7:    LDA #$80                ; $03:80E7: A9 80       ;\Enable f-blank
CODE_0380E9:    STA $1201               ; $03:80E9: 8D 01 12    ;/
CODE_0380EC:    STZ $0154               ; $03:80EC: 9C 54 01    ;Reset lag thing.
CODE_0380EF:    STZ $15E5               ; $03:80EF: 9C E5 15    ;
CODE_0380F2:    STZ $0E7F               ; $03:80F2: 9C 7F 0E    ;Related to when fading in and out
CODE_0380F5:    STZ $0776               ; $03:80F5: 9C 76 07    ;Clear pause flag
CODE_0380F8:    STA $0722               ; $03:80F8: 8D 22 07    ;
CODE_0380FB:    STZ $0E67               ; $03:80FB: 9C 67 0E    ;
CODE_0380FE:    STZ $BA                 ; $03:80FE: 64 BA       ;
CODE_038100:    STZ $0ED6               ; $03:8100: 9C D6 0E    ;
CODE_038103:    STZ $0EF9               ; $03:8103: 9C F9 0E    ;
CODE_038106:    STZ $0ED4               ; $03:8106: 9C D4 0E    ;
CODE_038109:    STZ $1200               ; $03:8109: 9C 00 12    ;
CODE_03810C:    STZ $0773               ; $03:810C: 9C 73 07    ;
CODE_03810F:    STZ $028D               ; $03:810F: 9C 8D 02    ;Clear flag to upload animated graphics
CODE_038112:    REP #$20                ; $03:8112: C2 20       ;
CODE_038114:    LDA #$0000              ; $03:8114: A9 00 00    ;
CODE_038117:    STA $1000               ; $03:8117: 8D 00 10    ;
CODE_03811A:    STA $1100               ; $03:811A: 8D 00 11    ;
CODE_03811D:    LDA #$FFFF              ; $03:811D: A9 FF FF    ;
CODE_038120:    STA $1702               ; $03:8120: 8D 02 17    ;
CODE_038123:    STA $7F0002             ; $03:8123: 8F 02 00 7F ;
CODE_038127:    STA $7F2002             ; $03:8127: 8F 02 20 7F ;
CODE_03812B:    PHD                     ; $03:812B: 0B          ;
CODE_03812C:    LDA #$4300              ; $03:812C: A9 00 43    ; DP: $4300
CODE_03812F:    TCD                     ; $03:812F: 5B          ;
CODE_038130:    LDX #$80                ; $03:8130: A2 80       ;
CODE_038132:    STX $2115               ; $03:8132: 8E 15 21    ;
CODE_038135:    REP #$20                ; $03:8135: C2 20       ;
CODE_038137:    LDA #$1000              ; $03:8137: A9 00 10    ;
CODE_03813A:    STA $2116               ; $03:813A: 8D 16 21    ;
CODE_03813D:    LDA #$1801              ; $03:813D: A9 01 18    ;
CODE_038140:    STA $00                 ; $03:8140: 85 00       ;
CODE_038142:    LDA.w #DATA_068000      ; $03:8142: A9 00 80    ;
CODE_038145:    STA $02                 ; $03:8145: 85 02       ;
CODE_038147:    LDY.b #DATA_068000>>16  ; $03:8147: A0 06       ;
CODE_038149:    STY $04                 ; $03:8149: 84 04       ;
CODE_03814B:    LDA #$4000              ; $03:814B: A9 00 40    ;
CODE_03814E:    STA $05                 ; $03:814E: 85 05       ;
CODE_038150:    LDX #$01                ; $03:8150: A2 01       ;
CODE_038152:    STX $420B               ; $03:8152: 8E 0B 42    ;
CODE_038155:    LDA #$6000              ; $03:8155: A9 00 60    ;
CODE_038158:    STA $2116               ; $03:8158: 8D 16 21    ;
CODE_03815B:    LDA.w #DATA_078000      ; $03:815B: A9 00 80    ;
CODE_03815E:    STA $02                 ; $03:815E: 85 02       ;
CODE_038160:    LDY.b #DATA_078000>>16  ; $03:8160: A0 07       ;
CODE_038162:    STY $04                 ; $03:8162: 84 04       ;
CODE_038164:    LDA #$4000              ; $03:8164: A9 00 40    ;
CODE_038167:    STA $05                 ; $03:8167: 85 05       ;
CODE_038169:    STX $420B               ; $03:8169: 8E 0B 42    ;
CODE_03816C:    LDA #$5000              ; $03:816C: A9 00 50    ;
CODE_03816F:    STA $2116               ; $03:816F: 8D 16 21    ;
CODE_038172:    LDA.w #DATA_0CF800      ; $03:8172: A9 00 F8    ;
CODE_038175:    STA $02                 ; $03:8175: 85 02       ;
CODE_038177:    LDY.b #DATA_0CF800>>16  ; $03:8177: A0 0C       ;
CODE_038179:    STY $04                 ; $03:8179: 84 04       ;
CODE_03817B:    LDA #$0800              ; $03:817B: A9 00 08    ;
CODE_03817E:    STA $05                 ; $03:817E: 85 05       ;
CODE_038180:    STX $420B               ; $03:8180: 8E 0B 42    ;
CODE_038183:    PLD                     ; $03:8183: 2B          ; Restore direct page
CODE_038184:    SEP #$20                ; $03:8184: E2 20       ;
CODE_038186:    JSL CODE_0480AE         ; $03:8186: 22 AE 80 04 ;
CODE_03818A:    STZ $1608               ; $03:818A: 9C 08 16    ;
CODE_03818D:    STZ $1609               ; $03:818D: 9C 09 16    ;
CODE_038190:    STZ $160F               ; $03:8190: 9C 0F 16    ;
CODE_038193:    STZ $160E               ; $03:8193: 9C 0E 16    ;
CODE_038196:    STZ $160A               ; $03:8196: 9C 0A 16    ;
CODE_038199:    STA $160D               ; $03:8199: 8D 0D 16    ;
CODE_03819C:    LDA #$01                ; $03:819C: A9 01       ;
CODE_03819E:    STA $160C               ; $03:819E: 8D 0C 16    ;
CODE_0381A1:    LDA #$81                ; $03:81A1: A9 81       ;
CODE_0381A3:    STA $09                 ; $03:81A3: 85 09       ;
CODE_0381A5:    STA $4200               ; $03:81A5: 8D 00 42    ;
CODE_0381A8:    CLI                     ; $03:81A8: 58          ;
CODE_0381A9:    LDA $0154               ; $03:81A9: AD 54 01    ;
CODE_0381AC:    BEQ CODE_0381A9         ; $03:81AC: F0 FB       ;
CODE_0381AE:    JSL CODE_05C800         ; $03:81AE: 22 00 C8 05 ;
CODE_0381B2:    LDA $07B7               ; $03:81B2: AD B7 07    ;
CODE_0381B5:    AND #$02                ; $03:81B5: 29 02       ;
CODE_0381B7:    STA $07C7               ; $03:81B7: 8D C7 07    ;
CODE_0381BA:    LDA $07B8               ; $03:81BA: AD B8 07    ;
CODE_0381BD:    AND #$02                ; $03:81BD: 29 02       ;
CODE_0381BF:    EOR $07C7               ; $03:81BF: 4D C7 07    ;
CODE_0381C2:    CLC                     ; $03:81C2: 18          ;
CODE_0381C3:    BEQ CODE_0381C6         ; $03:81C3: F0 01       ;
CODE_0381C5:    SEC                     ; $03:81C5: 38          ;
CODE_0381C6:    ROR $07B7               ; $03:81C6: 6E B7 07    ;
CODE_0381C9:    ROR $07B8               ; $03:81C9: 6E B8 07    ;
CODE_0381CC:    ROR $07B9               ; $03:81CC: 6E B9 07    ;
CODE_0381CF:    ROR $07BA               ; $03:81CF: 6E BA 07    ;
CODE_0381D2:    ROR $07BB               ; $03:81D2: 6E BB 07    ;
CODE_0381D5:    ROR $07BC               ; $03:81D5: 6E BC 07    ;
CODE_0381D8:    ROR $07BD               ; $03:81D8: 6E BD 07    ;
CODE_0381DB:    JSL CODE_048163         ; $03:81DB: 22 63 81 04 ;
CODE_0381DF:    LDA $700007             ; $03:81DF: AF 07 00 70 ;
CODE_0381E3:    BEQ CODE_038205         ; $03:81E3: F0 20       ;
CODE_0381E5:    PHX                     ; $03:81E5: DA          ;In debug mode
CODE_0381E6:    LDX $0EC3               ; $03:81E6: AE C3 0E    ;
CODE_0381E9:    LDA $0FFA,x             ; $03:81E9: BD FA 0F    ;
CODE_0381EC:    AND #$20                ; $03:81EC: 29 20       ;
CODE_0381EE:    BEQ CODE_0381F3         ; $03:81EE: F0 03       ;
CODE_0381F0:    INC $15E5               ; $03:81F0: EE E5 15    ;
CODE_0381F3:    LDA $0FFA,x             ; $03:81F3: BD FA 0F    ;
CODE_0381F6:    PLX                     ; $03:81F6: FA          ;
CODE_0381F7:    AND #$10                ; $03:81F7: 29 10       ;
CODE_0381F9:    BNE CODE_038205         ; $03:81F9: D0 0A       ;
CODE_0381FB:    LDA $15E5               ; $03:81FB: AD E5 15    ;
CODE_0381FE:    AND #$01                ; $03:81FE: 29 01       ;
CODE_038200:    BEQ CODE_038205         ; $03:8200: F0 03       ;
CODE_038202:    JMP CODE_0382D4         ; $03:8202: 4C D4 82    ;

CODE_038205:    JSL CODE_05E634         ; $03:8205: 22 34 E6 05 ;
CODE_038209:    JSR CODE_038555         ; $03:8209: 20 55 85    ;
CODE_03820C:    JSL CODE_05EE3A         ; $03:820C: 22 3A EE 05 ;
CODE_038210:    LDA $5C                 ; $03:8210: A5 5C       ;
CODE_038212:    BNE CODE_038218         ; $03:8212: D0 04       ;
CODE_038214:    JSL CODE_0488BF         ; $03:8214: 22 BF 88 04 ;
CODE_038218:    LDA $0ED6               ; $03:8218: AD D6 0E    ;
CODE_03821B:    BMI CODE_03823B         ; $03:821B: 30 1E       ;
CODE_03821D:    BEQ CODE_03825F         ; $03:821D: F0 40       ;
CODE_03821F:    LDA $07B0               ; $03:821F: AD B0 07    ;
CODE_038222:    BEQ CODE_03825F         ; $03:8222: F0 3B       ;
CODE_038224:    LDX $0753               ; $03:8224: AE 53 07    ;
CODE_038227:    LDA $0FFA,x             ; $03:8227: BD FA 0F    ;
CODE_03822A:    BMI CODE_038233         ; $03:822A: 30 07       ;
CODE_03822C:    LDA $0FF6,x             ; $03:822C: BD F6 0F    ;
CODE_03822F:    AND #$90                ; $03:822F: 29 90       ;
CODE_038231:    BEQ CODE_03825F         ; $03:8231: F0 2C       ;
CODE_038233:    STZ $07B0               ; $03:8233: 9C B0 07    ;
CODE_038236:    STZ $0ED6               ; $03:8236: 9C D6 0E    ;
CODE_038239:    BRA CODE_03825F         ; $03:8239: 80 24       ;

CODE_03823B:    LDA $0FFA               ; $03:823B: AD FA 0F    ;
CODE_03823E:    ORA $0FF6               ; $03:823E: 0D F6 0F    ;
CODE_038241:    AND #$40                ; $03:8241: 29 40       ;
CODE_038243:    BNE CODE_03824F         ; $03:8243: D0 0A       ;
CODE_038245:    LDA $0FFB               ; $03:8245: AD FB 0F    ;
CODE_038248:    ORA $0FF7               ; $03:8248: 0D F7 0F    ;
CODE_03824B:    AND #$40                ; $03:824B: 29 40       ;
CODE_03824D:    BEQ CODE_03825F         ; $03:824D: F0 10       ;
CODE_03824F:    LDA $1201               ; $03:824F: AD 01 12    ;
CODE_038252:    CMP #$0F                ; $03:8252: C9 0F       ;
CODE_038254:    BNE CODE_03825F         ; $03:8254: D0 09       ;
CODE_038256:    LDA #$80                ; $03:8256: A9 80       ;\Fade out music
CODE_038258:    STA $1602               ; $03:8258: 8D 02 16    ;/
CODE_03825B:    JML CODE_0080DE         ; $03:825B: 5C DE 80 00 ;

CODE_03825F:    LDA $0E7F               ; $03:825F: AD 7F 0E    ;
CODE_038262:    BEQ CODE_038269         ; $03:8262: F0 05       ;
CODE_038264:    JSR CODE_03C296         ; $03:8264: 20 96 C2    ;
CODE_038267:    BRA CODE_0382D4         ; $03:8267: 80 6B       ;

CODE_038269:    LDA $0776               ; $03:8269: AD 76 07    ;\
CODE_03826C:    LSR A                   ; $03:826C: 4A          ; |Branch if paused
CODE_03826D:    BCS CODE_0382CD         ; $03:826D: B0 5E       ;/
CODE_03826F:    PHD                     ; $03:826F: 0B          ;
CODE_038270:    LDA #$07                ; $03:8270: A9 07       ;
CODE_038272:    XBA                     ; $03:8272: EB          ;
CODE_038273:    LDA #$00                ; $03:8273: A9 00       ;
CODE_038275:    TCD                     ; $03:8275: 5B          ;
CODE_038276:    LDA $47                 ; $03:8276: A5 47       ;
CODE_038278:    BEQ CODE_03827E         ; $03:8278: F0 04       ;
CODE_03827A:    DEC $47                 ; $03:827A: C6 47       ;
CODE_03827C:    BNE CODE_038293         ; $03:827C: D0 15       ;
CODE_03827E:    LDX #$18                ; $03:827E: A2 18       ;
CODE_038280:    DEC $87                 ; $03:8280: C6 87       ;
CODE_038282:    BPL CODE_03828A         ; $03:8282: 10 06       ;
CODE_038284:    LDA #$14                ; $03:8284: A9 14       ;
CODE_038286:    STA $87                 ; $03:8286: 85 87       ;
CODE_038288:    LDX #$2B                ; $03:8288: A2 2B       ;
CODE_03828A:    LDA $88,x               ; $03:828A: B5 88       ;
CODE_03828C:    BEQ CODE_038290         ; $03:828C: F0 02       ;
CODE_03828E:    DEC $88,x               ; $03:828E: D6 88       ;
CODE_038290:    DEX                     ; $03:8290: CA          ;
CODE_038291:    BPL CODE_03828A         ; $03:8291: 10 F7       ;
CODE_038293:    PLD                     ; $03:8293: 2B          ;
CODE_038294:    LDA $07B0               ; $03:8294: AD B0 07    ;
CODE_038297:    BNE CODE_0382A1         ; $03:8297: D0 08       ;
CODE_038299:    LDA $0ED6               ; $03:8299: AD D6 0E    ;
CODE_03829C:    AND #$80                ; $03:829C: 29 80       ;
CODE_03829E:    STA $0ED6               ; $03:829E: 8D D6 0E    ;
CODE_0382A1:    INC $09                 ; $03:82A1: E6 09       ;
CODE_0382A3:    INC $0E68               ; $03:82A3: EE 68 0E    ;
CODE_0382A6:    LDA $0E68               ; $03:82A6: AD 68 0E    ;
CODE_0382A9:    AND #$18                ; $03:82A9: 29 18       ;
CODE_0382AB:    CMP #$18                ; $03:82AB: C9 18       ;
CODE_0382AD:    BNE CODE_0382B2         ; $03:82AD: D0 03       ;
CODE_0382AF:    STZ $0E68               ; $03:82AF: 9C 68 0E    ;
CODE_0382B2:    JSL CODE_05D472         ; $03:82B2: 22 72 D4 05 ;
CODE_0382B6:    LDA $0722               ; $03:82B6: AD 22 07    ;
CODE_0382B9:    BEQ CODE_0382C3         ; $03:82B9: F0 08       ;
CODE_0382BB:    LDA $1B                 ; $03:82BB: A5 1B       ;
CODE_0382BD:    LSR A                   ; $03:82BD: 4A          ;
CODE_0382BE:    BCS CODE_0382C3         ; $03:82BE: B0 03       ;
CODE_0382C0:    JSR CODE_0385C3         ; $03:82C0: 20 C3 85    ;
CODE_0382C3:    JSR CODE_038545         ; $03:82C3: 20 45 85    ;
CODE_0382C6:    LDA $1680               ; $03:82C6: AD 80 16    ;
CODE_0382C9:    BMI CODE_0382CD         ; $03:82C9: 30 02       ;
CODE_0382CB:    BRA CODE_0382D4         ; $03:82CB: 80 07       ;

CODE_0382CD:    JSR CODE_0385F3         ; $03:82CD: 20 F3 85    ;
CODE_0382D0:    JSL CODE_05DE4C         ; $03:82D0: 22 4C DE 05 ;
CODE_0382D4:    JSL CODE_05DD7A         ; $03:82D4: 22 7A DD 05 ;
CODE_0382D8:    STZ $0154               ; $03:82D8: 9C 54 01    ;
CODE_0382DB:    JMP CODE_0381A9         ; $03:82DB: 4C A9 81    ;

DATA_0382DE:    db $02,$B8,$B8,$B8,$B8,$02,$02,$02              ;
                db $B8,$B8,$B8,$B8,$B9,$DE,$03,$56              ;Low bytes of VRAM addresses used by the stripe image uploader
                db $81,$BC,$DB                                  ;

DATA_0382F1:    db $17,$99,$99,$99,$99,$17,$1A,$1A              ;High bytes of VRAM addresses used by the stripe image uploader
                db $99,$99,$99,$99,$99,$99,$9A,$9A              ;
                db $9A,$9A,$9A                                  ;

DATA_038304:    dw $0000,$0300                                  ;

;SMB1 NMI ROUTINE
CODE_038308:    PHB                     ; $03:8308: 8B          ;\
CODE_038309:    PHK                     ; $03:8309: 4B          ; |Set program bank to this one
CODE_03830A:    PLB                     ; $03:830A: AB          ;/
CODE_03830B:    LDA $4210               ; $03:830B: AD 10 42    ;Read to enable NMI
CODE_03830E:    LDA $1201               ; $03:830E: AD 01 12    ;\ Forced blank if
CODE_038311:    BNE CODE_038315         ; $03:8311: D0 02       ; |the screen is pitch-black
CODE_038313:    LDA #$80                ; $03:8313: A9 80       ; |
CODE_038315:    STA $2100               ; $03:8315: 8D 00 21    ;/ Otherwise, normal brightness
CODE_038318:    STZ $420C               ; $03:8318: 9C 0C 42    ;Reset HDMA
CODE_03831B:    LDA $0154               ; $03:831B: AD 54 01    ;\
CODE_03831E:    BEQ CODE_038323         ; $03:831E: F0 03       ;/Make sure the game runs at normal fps?
CODE_038320:    JMP CODE_038448         ; $03:8320: 4C 48 84    ;

CODE_038323:    INC $0154               ; $03:8323: EE 54 01    ;
CODE_038326:    LDX $0773               ; $03:8326: AE 73 07    ;\
CODE_038329:    LDA DATA_0382DE,x       ; $03:8329: BD DE 82    ; |
CODE_03832C:    STA $00                 ; $03:832C: 85 00       ; |
CODE_03832E:    LDA DATA_0382F1,x       ; $03:832E: BD F1 82    ; |
CODE_038331:    STA $01                 ; $03:8331: 85 01       ; | 
CODE_038333:    LDA #$03                ; $03:8333: A9 03       ; |
CODE_038335:    STA $02                 ; $03:8335: 85 02       ; |
CODE_038337:    JSR CODE_039BBC         ; $03:8337: 20 BC 9B    ;/ Stripe image uploader
CODE_03833A:    LDX $0773               ; $03:833A: AE 73 07    ;\
CODE_03833D:    CPX #$06                ; $03:833D: E0 06       ; |
CODE_03833F:    BNE CODE_038352         ; $03:833F: D0 11       ;/
CODE_038341:    LDA DATA_0382DE         ; $03:8341: AD DE 82    ;
CODE_038344:    STA $00                 ; $03:8344: 85 00       ;
CODE_038346:    LDA DATA_0382F1         ; $03:8346: AD F1 82    ;
CODE_038349:    STA $01                 ; $03:8349: 85 01       ;
CODE_03834B:    LDA #$03                ; $03:834B: A9 03       ;
CODE_03834D:    STA $02                 ; $03:834D: 85 02       ;
CODE_03834F:    JSR CODE_039BBC         ; $03:834F: 20 BC 9B    ;Stripe image uploader
CODE_038352:    PHD                     ; $03:8352: 0B          ;\
CODE_038353:    LDA #$43                ; $03:8353: A9 43       ; |
CODE_038355:    XBA                     ; $03:8355: EB          ; |Direct page: $4300
CODE_038356:    LDA #$00                ; $03:8356: A9 00       ; |
CODE_038358:    TCD                     ; $03:8358: 5B          ;/
CODE_038359:    REP #$10                ; $03:8359: C2 10       ;16-bit XY
CODE_03835B:    LDA #$81                ; $03:835B: A9 81       ;\Address increment mode: after every write to 2119
CODE_03835D:    STA $2115               ; $03:835D: 8D 15 21    ;/Also, every 32 bytes. so vertical
CODE_038360:    LDY #$1801              ; $03:8360: A0 01 18    ;\2 regs write once
CODE_038363:    STY $00                 ; $03:8363: 84 00       ;/DMA destination: $2118
CODE_038365:    LDA $0EF9               ; $03:8365: AD F9 0E    ;What is this address?
CODE_038368:    BEQ CODE_03839D         ; $03:8368: F0 33       ;
CODE_03836A:    LDA #$7F                ; $03:836A: A9 7F       ;\DMA source bank: $7F
CODE_03836C:    STA $04                 ; $03:836C: 85 04       ;/
CODE_03836E:    REP #$20                ; $03:836E: C2 20       ;
CODE_038370:    LDY #$0040              ; $03:8370: A0 40 00    ;
CODE_038373:    LDX #$0000              ; $03:8373: A2 00 00    ;
CODE_038376:    LDA $7F0002,x           ; $03:8376: BF 02 00 7F ;\
CODE_03837A:    STA $2116               ; $03:837A: 8D 16 21    ;/Set VRAM address
CODE_03837D:    TXA                     ; $03:837D: 8A          ;\
CODE_03837E:    CLC                     ; $03:837E: 18          ; |
CODE_03837F:    ADC #$0004              ; $03:837F: 69 04 00    ; |
CODE_038382:    STA $02                 ; $03:8382: 85 02       ;/DMA source address: $0000 + 4 something?
CODE_038384:    STY $05                 ; $03:8384: 84 05       ; DMA size: $0040 bytes
CODE_038386:    TXA                     ; $03:8386: 8A          ;\
CODE_038387:    CLC                     ; $03:8387: 18          ; |
CODE_038388:    ADC #$0042              ; $03:8388: 69 42 00    ; | add $42 bytes
CODE_03838B:    TAX                     ; $03:838B: AA          ;/
CODE_03838C:    LDA #$0001              ; $03:838C: A9 01 00    ;\Enable DMA
CODE_03838F:    STA $420B               ; $03:838F: 8D 0B 42    ;/
CODE_038392:    LDA $7F0002,x           ; $03:8392: BF 02 00 7F ;
CODE_038396:    BPL CODE_03837A         ; $03:8396: 10 E2       ;
CODE_038398:    SEP #$20                ; $03:8398: E2 20       ;
CODE_03839A:    STZ $0EF9               ; $03:839A: 9C F9 0E    ;

CODE_03839D:    LDA $0ED4               ; $03:839D: AD D4 0E    ;What is this address?
CODE_0383A0:    BEQ CODE_0383D6         ; $03:83A0: F0 34       ;
CODE_0383A2:    LDA #$7F                ; $03:83A2: A9 7F       ;\
CODE_0383A4:    STA $04                 ; $03:83A4: 85 04       ;/DMA source bank: $7F
CODE_0383A6:    REP #$20                ; $03:83A6: C2 20       ;
CODE_0383A8:    LDY #$0038              ; $03:83A8: A0 38 00    ;
CODE_0383AB:    LDX #$0000              ; $03:83AB: A2 00 00    ;
CODE_0383AE:    LDA $7F2002,x           ; $03:83AE: BF 02 20 7F ;\
CODE_0383B2:    STA $2116               ; $03:83B2: 8D 16 21    ;/Set VRAM address
CODE_0383B5:    TXA                     ; $03:83B5: 8A          ;
CODE_0383B6:    CLC                     ; $03:83B6: 18          ;
CODE_0383B7:    ADC #$2004              ; $03:83B7: 69 04 20    ;
CODE_0383BA:    STA $02                 ; $03:83BA: 85 02       ;
CODE_0383BC:    STY $05                 ; $03:83BC: 84 05       ;DMA size: $0038 bytes
CODE_0383BE:    TXA                     ; $03:83BE: 8A          ;
CODE_0383BF:    CLC                     ; $03:83BF: 18          ;
CODE_0383C0:    ADC #$003A              ; $03:83C0: 69 3A 00    ;
CODE_0383C3:    TAX                     ; $03:83C3: AA          ;
CODE_0383C4:    LDA #$0001              ; $03:83C4: A9 01 00    ;
CODE_0383C7:    STA $420B               ; $03:83C7: 8D 0B 42    ;
CODE_0383CA:    LDA $7F2002,x           ; $03:83CA: BF 02 20 7F ;
CODE_0383CE:    BPL CODE_0383B2         ; $03:83CE: 10 E2       ;
CODE_0383D0:    STZ $2000               ; $03:83D0: 9C 00 20    ;
CODE_0383D3:    STZ $0ED4               ; $03:83D3: 9C D4 0E    ;
CODE_0383D6:    SEP #$30                ; $03:83D6: E2 30       ;

CODE_0383D8:    LDA #$80                ; $03:83D8: A9 80       ;
CODE_0383DA:    STA $2115               ; $03:83DA: 8D 15 21    ;
CODE_0383DD:    JSR CODE_039B1D         ; $03:83DD: 20 1D 9B    ;
CODE_0383E0:    LDA $1200               ; $03:83E0: AD 00 12    ;
CODE_0383E3:    BEQ CODE_038410         ; $03:83E3: F0 2B       ;
CODE_0383E5:    BMI CODE_03840B         ; $03:83E5: 30 24       ;
CODE_0383E7:    REP #$10                ; $03:83E7: C2 10       ;
CODE_0383E9:    STZ $2121               ; $03:83E9: 9C 21 21    ;CGRAM address: $00
CODE_0383EC:    LDY #$2200              ; $03:83EC: A0 00 22    ;\
CODE_0383EF:    STY $00                 ; $03:83EF: 84 00       ;/1 reg write once to $2122
CODE_0383F1:    LDY #$1000              ; $03:83F1: A0 00 10    ;\
CODE_0383F4:    STY $02                 ; $03:83F4: 84 02       ; |
CODE_0383F6:    LDA #$00                ; $03:83F6: A9 00       ; | DMA source: $00:1000
CODE_0383F8:    STA $04                 ; $03:83F8: 85 04       ; | Length: 512 bytes
CODE_0383FA:    LDY #$0200              ; $03:83FA: A0 00 02    ; |
CODE_0383FD:    STY $05                 ; $03:83FD: 84 05       ;/
CODE_0383FF:    LDA #$01                ; $03:83FF: A9 01       ;\
CODE_038401:    STA $420B               ; $03:8401: 8D 0B 42    ;/Enable HDMA channel 0
CODE_038404:    SEP #$10                ; $03:8404: E2 10       ;
CODE_038406:    STZ $1200               ; $03:8406: 9C 00 12    ;
CODE_038409:    BRA CODE_038410         ; $03:8409: 80 05       ;

CODE_03840B:    LDA #$01                ; $03:840B: A9 01       ;
CODE_03840D:    STA $1200               ; $03:840D: 8D 00 12    ;
CODE_038410:    PLD                     ; $03:8410: 2B          ;
CODE_038411:    LDY #$00                ; $03:8411: A0 00       ;
CODE_038413:    LDX $0773               ; $03:8413: AE 73 07    ;\
CODE_038416:    CPX #$06                ; $03:8416: E0 06       ; | Branch if stripe image destination VRAM index is not 6
CODE_038418:    BNE CODE_03841C         ; $03:8418: D0 02       ;/
CODE_03841A:    INY                     ; $03:841A: C8          ;
CODE_03841B:    INY                     ; $03:841B: C8          ;
CODE_03841C:    REP #$20                ; $03:841C: C2 20       ;
CODE_03841E:    LDA DATA_038304,y       ; $03:841E: B9 04 83    ;
CODE_038421:    REP #$10                ; $03:8421: C2 10       ;
CODE_038423:    TAX                     ; $03:8423: AA          ;
CODE_038424:    STZ $1700,x             ; $03:8424: 9E 00 17    ;
CODE_038427:    LDA #$FFFF              ; $03:8427: A9 FF FF    ;
CODE_03842A:    STA $1702,x             ; $03:842A: 9D 02 17    ;
CODE_03842D:    LDA #$0000              ; $03:842D: A9 00 00    ;
CODE_038430:    STA $7F0000             ; $03:8430: 8F 00 00 7F ;
CODE_038434:    LDA $005C               ; $03:8434: AD 5C 00    ;
CODE_038437:    AND #$00FF              ; $03:8437: 29 FF 00    ;
CODE_03843A:    BEQ CODE_038443         ; $03:843A: F0 07       ;
CODE_03843C:    LDA #$0000              ; $03:843C: A9 00 00    ;
CODE_03843F:    STA $7F2000             ; $03:843F: 8F 00 20 7F ;
CODE_038443:    SEP #$30                ; $03:8443: E2 30       ;
CODE_038445:    STZ $0773               ; $03:8445: 9C 73 07    ;

CODE_038448:    PHD                     ; $03:8448: 0B          ;\
CODE_038449:    LDA #$21                ; $03:8449: A9 21       ; |
CODE_03844B:    XBA                     ; $03:844B: EB          ; |Direct page: $2100
CODE_03844C:    LDA #$00                ; $03:844C: A9 00       ; |
CODE_03844E:    TCD                     ; $03:844E: 5B          ;/
CODE_03844F:    LDA $120E               ; $03:844F: AD 0E 12    ;\$7E:120E: Window 2 left position
CODE_038452:    STA $28                 ; $03:8452: 85 28       ;/
CODE_038454:    LDA $120F               ; $03:8454: AD 0F 12    ;\$7E:120F: Window 2 right position
CODE_038457:    STA $29                 ; $03:8457: 85 29       ;/
CODE_038459:    LDA $1210               ; $03:8459: AD 10 12    ;\$7E:1210: Direct color register
CODE_03845C:    STA $32                 ; $03:845C: 85 32       ;/
CODE_03845E:    LDA $1209               ; $03:845E: AD 09 12    ;\$7E:1209: Color addition select
CODE_038461:    STA $30                 ; $03:8461: 85 30       ;/
CODE_038463:    LDA $120A               ; $03:8463: AD 0A 12    ;\$7E:120A: CGADSUB
CODE_038466:    STA $31                 ; $03:8466: 85 31       ;/
CODE_038468:    LDA $1204               ; $03:8468: AD 04 12    ;\$7E:1204: Window mask settings for BG1 and 2
CODE_03846B:    STA $23                 ; $03:846B: 85 23       ;/
CODE_03846D:    LDA $1205               ; $03:846D: AD 05 12    ;\$7E:1205: Window mask settings for BG3 and 4
CODE_038470:    STA $24                 ; $03:8470: 85 24       ;/
CODE_038472:    LDA $1206               ; $03:8472: AD 06 12    ;\$7E:1206: Window mask settings for OAM and color wind
CODE_038475:    STA $25                 ; $03:8475: 85 25       ;/
CODE_038477:    LDA $120B               ; $03:8477: AD 0B 12    ;\$7E:120B: Main screen designation
CODE_03847A:    STA $2C                 ; $03:847A: 85 2C       ;/
CODE_03847C:    LDA $120C               ; $03:847C: AD 0C 12    ;\$7E:120C: Subscreen designation
CODE_03847F:    STA $2D                 ; $03:847F: 85 2D       ;/
CODE_038481:    LDA $1207               ; $03:8481: AD 07 12    ;\$7E:1207: Window mask designation for main screen
CODE_038484:    STA $2E                 ; $03:8484: 85 2E       ;/
CODE_038486:    LDA $1208               ; $03:8486: AD 08 12    ;\$7E:1208: Window mask designation for sub screen
CODE_038489:    STA $2F                 ; $03:8489: 85 2F       ;/
CODE_03848B:    LDA $0EE0               ; $03:848B: AD E0 0E    ;\$7E:0EE0: Direct color register
CODE_03848E:    STA $32                 ; $03:848E: 85 32       ;/
CODE_038490:    LDA $0EE1               ; $03:8490: AD E1 0E    ;\$7E:0EE1: Direct color register
CODE_038493:    STA $32                 ; $03:8493: 85 32       ;/
CODE_038495:    LDA $0EE2               ; $03:8495: AD E2 0E    ;\$7E:0EE2: Direct color register
CODE_038498:    STA $32                 ; $03:8498: 85 32       ;/
CODE_03849A:    LDA $120D               ; $03:849A: AD 0D 12    ;\$7E:120D: Screen mode
CODE_03849D:    STA $05                 ; $03:849D: 85 05       ;/
CODE_03849F:    LDA $0E7E               ; $03:849F: AD 7E 0E    ;\$7E:0E7E: Screen pixelation/Mosaic
CODE_0384A2:    STA $06                 ; $03:84A2: 85 06       ;/
CODE_0384A4:    STZ $11                 ; $03:84A4: 64 11       ;\Zero out BG3 horizontal scroll
CODE_0384A6:    STZ $11                 ; $03:84A6: 64 11       ;/
CODE_0384A8:    LDA $0ED1               ; $03:84A8: AD D1 0E    ;\
CODE_0384AB:    BEQ CODE_0384B7         ; $03:84AB: F0 0A       ; |If starry night IRQ flag is set
CODE_0384AD:    LDA $0EEE               ; $03:84AD: AD EE 0E    ; |
CODE_0384B0:    STA $0F                 ; $03:84B0: 85 0F       ; |$7E:0EEE-$7E:0EEF: BG2 Horizontal scroll
CODE_0384B2:    LDA $0EEF               ; $03:84B2: AD EF 0E    ; |
CODE_0384B5:    STA $0F                 ; $03:84B5: 85 0F       ;/
CODE_0384B7:    LDA $0E7F               ; $03:84B7: AD 7F 0E    ;\
CODE_0384BA:    BNE CODE_0384E6         ; $03:84BA: D0 2A       ;/Fade in/out things?
CODE_0384BC:    LDA $073F               ; $03:84BC: AD 3F 07    ;\$7E:073F: BG1 xscroll offset low byte
CODE_0384BF:    STA $0D                 ; $03:84BF: 85 0D       ;/
CODE_0384C1:    LDA $071A               ; $03:84C1: AD 1A 07    ;\$7E:071A: BG1 xscroll offset high byte
CODE_0384C4:    STA $0D                 ; $03:84C4: 85 0D       ;/
CODE_0384C6:    LDA $0ED1               ; $03:84C6: AD D1 0E    ;\
CODE_0384C9:    BNE CODE_0384D5         ; $03:84C9: D0 0A       ;/If not Starry Night BG flag
CODE_0384CB:    LDA $0EFD               ; $03:84CB: AD FD 0E    ;\$7E:0EFD: BG2 xscroll offset low byte
CODE_0384CE:    STA $0F                 ; $03:84CE: 85 0F       ;/
CODE_0384D0:    LDA $0EFE               ; $03:84D0: AD FE 0E    ;\$7E:0EFE: BG2 xscroll offset high byte
CODE_0384D3:    STA $0F                 ; $03:84D3: 85 0F       ;/
CODE_0384D5:    LDA $0740               ; $03:84D5: AD 40 07    ;\$7E:0E70: BG1 yscroll offset low byte
CODE_0384D8:    STA $0E                 ; $03:84D8: 85 0E       ;/
CODE_0384DA:    STZ $0E                 ; $03:84DA: 64 0E       ;BG1 yscroll offset high byte hardcoded at #$00
CODE_0384DC:    LDA $0ED2               ; $03:84DC: AD D2 0E    ;\$7E:0ED2: BG2 yscroll offset low byte
CODE_0384DF:    STA $10                 ; $03:84DF: 85 10       ;/
CODE_0384E1:    LDA $0ED3               ; $03:84E1: AD D3 0E    ;\$7E:0ED3: BG2 yscroll offset high byte
CODE_0384E4:    STA $10                 ; $03:84E4: 85 10       ;/
CODE_0384E6:    PLD                     ; $03:84E6: 2B          ;recover direct page
CODE_0384E7:    LDA $1203               ; $03:84E7: AD 03 12    ;\$7E:1203: HDMA enable
CODE_0384EA:    STA $420C               ; $03:84EA: 8D 0C 42    ;/
CODE_0384ED:    LDX #$81                ; $03:84ED: A2 81       ;\
CODE_0384EF:    LDA $0EDE               ; $03:84EF: AD DE 0E    ;/If IRQ is active
CODE_0384F2:    BEQ CODE_038508         ; $03:84F2: F0 14       ;Read IRQ flag for whatever reason
CODE_0384F4:    LDA $4211               ; $03:84F4: AD 11 42    ;
CODE_0384F7:    LDA $0EF2               ; $03:84F7: AD F2 0E    ;\$7E:0EF2: V-timer
CODE_0384FA:    STA $4209               ; $03:84FA: 8D 09 42    ; |With $00 as vtimer high byte
CODE_0384FD:    STZ $420A               ; $03:84FD: 9C 0A 42    ;/
CODE_038500:    STZ $4207               ; $03:8500: 9C 07 42    ;\
CODE_038503:    STZ $4208               ; $03:8503: 9C 08 42    ;/Store zero to h-timer
CODE_038506:    LDX #$A1                ; $03:8506: A2 A1       ;\
CODE_038508:    STX $4200               ; $03:8508: 8E 00 42    ;/Enable NMI, IRQ, and auto joypad-read enable, only
CODE_03850B:    PLB                     ; $03:850B: AB          ;when IRQ itself is enabled.
CODE_03850C:    RTL                     ; $03:850C: 6B          ;Return

CODE_03850D:    PHB                     ; $03:850D: 8B          ;\SMB1 IRQ Routine
CODE_03850E:    PHK                     ; $03:850E: 4B          ; |Set current program bank
CODE_03850F:    PLB                     ; $03:850F: AB          ;/
CODE_038510:    LDA $4211               ; $03:8510: AD 11 42    ;\If IRQ isn't fired yet, return
CODE_038513:    BPL CODE_038543         ; $03:8513: 10 2E       ;/
CODE_038515:    LDA $0EDE               ; $03:8515: AD DE 0E    ;\If this bit is set, return
CODE_038518:    BEQ CODE_038543         ; $03:8518: F0 29       ;/(Seems like it is used as "IRQ enable flag")
CODE_03851A:    LDA $0ED1               ; $03:851A: AD D1 0E    ;\"Starry night" IRQ mode
CODE_03851D:    BEQ CODE_038532         ; $03:851D: F0 13       ;/If it is clear, go to normal IRQ mode
CODE_03851F:    BIT $4212               ; $03:851F: 2C 12 42    ;\
CODE_038522:    BVC CODE_03851F         ; $03:8522: 50 FB       ;/Wait till H-blank
CODE_038524:    LDA $0EFD               ; $03:8524: AD FD 0E    ;\ Used with Starry BG IRQ mode
CODE_038527:    STA $210F               ; $03:8527: 8D 0F 21    ; |Set BG2 Horizontal scroll
CODE_03852A:    LDA $0EFE               ; $03:852A: AD FE 0E    ; |
CODE_03852D:    STA $210F               ; $03:852D: 8D 0F 21    ;/
CODE_038530:    BRA CODE_038543         ; $03:8530: 80 11       ;Return

CODE_038532:    BIT $4212               ; $03:8532: 2C 12 42    ;\
CODE_038535:    BVC CODE_038532         ; $03:8535: 50 FB       ;/Wait till H-blank
CODE_038537:    LDA $0EEE               ; $03:8537: AD EE 0E    ;\
CODE_03853A:    STA $2111               ; $03:853A: 8D 11 21    ; |Set BG3 horizontal scroll
CODE_03853D:    LDA $0EEF               ; $03:853D: AD EF 0E    ; |
CODE_038540:    STA $2111               ; $03:8540: 8D 11 21    ;/
CODE_038543:    PLB                     ; $03:8543: AB          ;\Recover program bank & return
CODE_038544:    RTL                     ; $03:8544: 6B          ;/

CODE_038545:    LDA $0770               ; $03:8545: AD 70 07    ;\
CODE_038548:    ASL A                   ; $03:8548: 0A          ; |Set up 'operation modes' (RAM $7E:0770)
CODE_038549:    TAX                     ; $03:8549: AA          ; |see pointers below for effects
CODE_03854A:    JMP (PNTR_03854D,x)     ; $03:854A: 7C 4D 85    ;/

PNTR_03854D:    dw CODE_03868D                                  ;$00 Title screen
                dw CODE_03AD60                                  ;$01 Normal playing and controls
                dw CODE_0388BB                                  ;$02 Defeated Bowser
                dw CODE_03A0A8                                  ;$03 Game Over

CODE_038555:    LDA $0770               ; $03:8555: AD 70 07    ;\
CODE_038558:    CMP #$02                ; $03:8558: C9 02       ; |Branch if operation mode is Defeated Bowser
CODE_03855A:    BEQ CODE_03857B         ; $03:855A: F0 1F       ;/
CODE_03855C:    CMP #$01                ; $03:855C: C9 01       ;\
CODE_03855E:    BNE CODE_0385BE         ; $03:855E: D0 5E       ;/Branch if operation mode is Main
CODE_038560:    LDA $0772               ; $03:8560: AD 72 07    ;
CODE_038563:    CMP #$03                ; $03:8563: C9 03       ;
CODE_038565:    BNE CODE_0385BE         ; $03:8565: D0 57       ;
CODE_038567:    LDA $0E67               ; $03:8567: AD 67 0E    ;
CODE_03856A:    BNE CODE_0385BE         ; $03:856A: D0 52       ;
CODE_03856C:    LDA $1201               ; $03:856C: AD 01 12    ;
CODE_03856F:    CMP #$0F                ; $03:856F: C9 0F       ;
CODE_038571:    BNE CODE_0385BE         ; $03:8571: D0 4B       ;
CODE_038573:    LDA $0777               ; $03:8573: AD 77 07    ;\
CODE_038576:    BEQ CODE_03857C         ; $03:8576: F0 04       ; |Branch if Timer to disable start button = 0
CODE_038578:    DEC $0777               ; $03:8578: CE 77 07    ;/Otherwise, keep decreasing
CODE_03857B:    RTS                     ; $03:857B: 60          ;

CODE_03857C:    LDA $0F                 ; $03:857C: A5 0F       ;
CODE_03857E:    CMP #$02                ; $03:857E: C9 02       ;
CODE_038580:    BEQ CODE_0385BE         ; $03:8580: F0 3C       ;
CODE_038582:    CMP #$03                ; $03:8582: C9 03       ;
CODE_038584:    BEQ CODE_0385BE         ; $03:8584: F0 38       ;
CODE_038586:    LDA $0B7A               ; $03:8586: AD 7A 0B    ;
CODE_038589:    BNE CODE_0385BE         ; $03:8589: D0 33       ;
CODE_03858B:    LDA $0B75               ; $03:858B: AD 75 0B    ;
CODE_03858E:    CMP #$02                ; $03:858E: C9 02       ;
CODE_038590:    BCS CODE_0385BE         ; $03:8590: B0 2C       ;
CODE_038592:    LDA $0F8A               ; $03:8592: AD 8A 0F    ;
CODE_038595:    BEQ CODE_03859C         ; $03:8595: F0 05       ;
CODE_038597:    DEC $0F8A               ; $03:8597: CE 8A 0F    ;
CODE_03859A:    BRA CODE_0385BE         ; $03:859A: 80 22       ;

CODE_03859C:    LDA $0B75               ; $03:859C: AD 75 0B    ;\If within pause screen
CODE_03859F:    BNE CODE_0385BE         ; $03:859F: D0 1D       ;/Skip "pause game" button check function
CODE_0385A1:    LDY $0753               ; $03:85A1: AC 53 07    ;\
CODE_0385A4:    LDA $0FF6,y             ; $03:85A4: B9 F6 0F    ; |Get controller data based on player #.
CODE_0385A7:    AND #$10                ; $03:85A7: 29 10       ; | if start is not pressed, continue
CODE_0385A9:    BEQ CODE_0385BE         ; $03:85A9: F0 13       ;/
CODE_0385AB:    LDA #$11                ; $03:85AB: A9 11       ;\Else, pause the game
CODE_0385AD:    STA $0777               ; $03:85AD: 8D 77 07    ;/Timer to disable start button (works while outside pause, fading into it)
CODE_0385B0:    LDA #$F1                ; $03:85B0: A9 F1       ;\
CODE_0385B2:    STA $1602               ; $03:85B2: 8D 02 16    ; |Tone down volume of music
CODE_0385B5:    LDA #$43                ; $03:85B5: A9 43       ; |Play pause sound
CODE_0385B7:    STA $1600               ; $03:85B7: 8D 00 16    ;/
CODE_0385BA:    JSL CODE_05DE31         ; $03:85BA: 22 31 DE 05 ;
CODE_0385BE:    RTS                     ; $03:85BE: 60          ;

CODE_0385BF:    JSR CODE_0385F8         ; $03:85BF: 20 F8 85    ;
CODE_0385C2:    RTL                     ; $03:85C2: 6B          ;

CODE_0385C3:    PHD                     ; $03:85C3: 0B          ;\
CODE_0385C4:    LDA #$0B                ; $03:85C4: A9 0B       ; |Direct page: $0B00
CODE_0385C6:    XBA                     ; $03:85C6: EB          ; |
CODE_0385C7:    LDA #$00                ; $03:85C7: A9 00       ; |
CODE_0385C9:    TCD                     ; $03:85C9: 5B          ;/
CODE_0385CA:    LDA #$90                ; $03:85CA: A9 90       ;
CODE_0385CC:    STA $62                 ; $03:85CC: 85 62       ;
CODE_0385CE:    LDA #$94                ; $03:85CE: A9 94       ;
CODE_0385D0:    STA $63                 ; $03:85D0: 85 63       ;
CODE_0385D2:    LDA #$98                ; $03:85D2: A9 98       ;
CODE_0385D4:    STA $64                 ; $03:85D4: 85 64       ;
CODE_0385D6:    LDA #$9C                ; $03:85D6: A9 9C       ;
CODE_0385D8:    STA $65                 ; $03:85D8: 85 65       ;
CODE_0385DA:    LDA #$A0                ; $03:85DA: A9 A0       ;
CODE_0385DC:    STA $66                 ; $03:85DC: 85 66       ;
CODE_0385DE:    LDA #$A4                ; $03:85DE: A9 A4       ;
CODE_0385E0:    STA $67                 ; $03:85E0: 85 67       ;
CODE_0385E2:    LDA #$A8                ; $03:85E2: A9 A8       ;
CODE_0385E4:    STA $68                 ; $03:85E4: 85 68       ;
CODE_0385E6:    LDA #$AC                ; $03:85E6: A9 AC       ;
CODE_0385E8:    STA $69                 ; $03:85E8: 85 69       ;
CODE_0385EA:    LDA #$58                ; $03:85EA: A9 58       ;
CODE_0385EC:    STA $6A                 ; $03:85EC: 85 6A       ;
CODE_0385EE:    PLD                     ; $03:85EE: 2B          ;
CODE_0385EF:    LDA $96                 ; $03:85EF: A5 96       ;
CODE_0385F1:    BNE CODE_038635         ; $03:85F1: D0 42       ;
CODE_0385F3:    LDA $0E67               ; $03:85F3: AD 67 0E    ;
CODE_0385F6:    BNE CODE_03866C         ; $03:85F6: D0 74       ;
CODE_0385F8:    LDX #$00                ; $03:85F8: A2 00       ;
CODE_0385FA:    LDA #$F0                ; $03:85FA: A9 F0       ;
CODE_0385FC:    STA $0801,x             ; $03:85FC: 9D 01 08    ;
CODE_0385FF:    STA $0841,x             ; $03:85FF: 9D 41 08    ;
CODE_038602:    STA $0881,x             ; $03:8602: 9D 81 08    ;
CODE_038605:    STA $08C1,x             ; $03:8605: 9D C1 08    ;
CODE_038608:    STA $0901,x             ; $03:8608: 9D 01 09    ;
CODE_03860B:    STA $0941,x             ; $03:860B: 9D 41 09    ;
CODE_03860E:    STA $0981,x             ; $03:860E: 9D 81 09    ;
CODE_038611:    STA $09C1,x             ; $03:8611: 9D C1 09    ;
CODE_038614:    STZ $0C00,x             ; $03:8614: 9E 00 0C    ;
CODE_038617:    STZ $0C40,x             ; $03:8617: 9E 40 0C    ;
CODE_03861A:    STZ $0C80,x             ; $03:861A: 9E 80 0C    ;
CODE_03861D:    STZ $0CC0,x             ; $03:861D: 9E C0 0C    ;
CODE_038620:    STZ $0D00,x             ; $03:8620: 9E 00 0D    ;
CODE_038623:    STZ $0D40,x             ; $03:8623: 9E 40 0D    ;
CODE_038626:    STZ $0D80,x             ; $03:8626: 9E 80 0D    ;
CODE_038629:    STZ $0DC0,x             ; $03:8629: 9E C0 0D    ;
CODE_03862C:    INX                     ; $03:862C: E8          ;
CODE_03862D:    INX                     ; $03:862D: E8          ;
CODE_03862E:    INX                     ; $03:862E: E8          ;
CODE_03862F:    INX                     ; $03:862F: E8          ;
CODE_038630:    CPX #$40                ; $03:8630: E0 40       ;
CODE_038632:    BNE CODE_0385FC         ; $03:8632: D0 C8       ;
CODE_038634:    RTS                     ; $03:8634: 60          ;

CODE_038635:    LDX #$00                ; $03:8635: A2 00       ;
CODE_038637:    LDA #$F0                ; $03:8637: A9 F0       ;
CODE_038639:    STA $0841,x             ; $03:8639: 9D 41 08    ;
CODE_03863C:    STA $0881,x             ; $03:863C: 9D 81 08    ;
CODE_03863F:    STA $08C1,x             ; $03:863F: 9D C1 08    ;
CODE_038642:    STA $0901,x             ; $03:8642: 9D 01 09    ;
CODE_038645:    STA $0941,x             ; $03:8645: 9D 41 09    ;
CODE_038648:    STA $0981,x             ; $03:8648: 9D 81 09    ;
CODE_03864B:    STA $09C1,x             ; $03:864B: 9D C1 09    ;
CODE_03864E:    STZ $0C40,x             ; $03:864E: 9E 40 0C    ;
CODE_038651:    STZ $0C80,x             ; $03:8651: 9E 80 0C    ;
CODE_038654:    STZ $0CC0,x             ; $03:8654: 9E C0 0C    ;
CODE_038657:    STZ $0D00,x             ; $03:8657: 9E 00 0D    ;
CODE_03865A:    STZ $0D40,x             ; $03:865A: 9E 40 0D    ;
CODE_03865D:    STZ $0D80,x             ; $03:865D: 9E 80 0D    ;
CODE_038660:    STZ $0DC0,x             ; $03:8660: 9E C0 0D    ;
CODE_038663:    INX                     ; $03:8663: E8          ;
CODE_038664:    INX                     ; $03:8664: E8          ;
CODE_038665:    INX                     ; $03:8665: E8          ;
CODE_038666:    INX                     ; $03:8666: E8          ;
CODE_038667:    CPX #$40                ; $03:8667: E0 40       ;
CODE_038669:    BNE CODE_038639         ; $03:8669: D0 CE       ;
CODE_03866B:    RTS                     ; $03:866B: 60          ;

CODE_03866C:    LDA #$F0                ; $03:866C: A9 F0       ;
CODE_03866E:    STA $0851               ; $03:866E: 8D 51 08    ;
CODE_038671:    STA $0855               ; $03:8671: 8D 55 08    ;
CODE_038674:    STA $08B1               ; $03:8674: 8D B1 08    ;
CODE_038677:    STA $08B5               ; $03:8677: 8D B5 08    ;
CODE_03867A:    STA $08B9               ; $03:867A: 8D B9 08    ;
CODE_03867D:    STA $08BD               ; $03:867D: 8D BD 08    ;
CODE_038680:    STA $08C1               ; $03:8680: 8D C1 08    ;
CODE_038683:    STA $08C5               ; $03:8683: 8D C5 08    ;
CODE_038686:    STA $08C9               ; $03:8686: 8D C9 08    ;
CODE_038689:    STA $08CD               ; $03:8689: 8D CD 08    ;
CODE_03868C:    RTS                     ; $03:868C: 60          ;

;Title screen operation mode
CODE_03868D:    LDA $0772               ; $03:868D: AD 72 07    ;
CODE_038690:    ASL A                   ; $03:8690: 0A          ;
CODE_038691:    TAX                     ; $03:8691: AA          ;
CODE_038692:    JSR (PNTR_0386AC,x)     ; $03:8692: FC AC 86    ;
CODE_038695:    LDA $701FF2             ; $03:8695: AF F2 1F 70 ;
CODE_038699:    BEQ CODE_0386A8         ; $03:8699: F0 0D       ;
CODE_03869B:    STZ $1600               ; $03:869B: 9C 00 16    ;\
CODE_03869E:    STZ $1601               ; $03:869E: 9C 01 16    ; |Clear sound registers so no sound plays during title screen
CODE_0386A1:    STZ $1602               ; $03:86A1: 9C 02 16    ; |
CODE_0386A4:    STZ $1603               ; $03:86A4: 9C 03 16    ;/
CODE_0386A7:    RTS                     ; $03:86A7: 60          ;

CODE_0386A8:    STZ $1602               ; $03:86A8: 9C 02 16    ;
CODE_0386AB:    RTS                     ; $03:86AB: 60          ;

;Title screen operation modes
PNTR_0386AC:    dw CODE_039D91                                  ;
                dw CODE_038C18                                  ;
                dw CODE_039EBA                                  ;
                dw CODE_0386B4                                  ;

CODE_0386B4:    LDA $701FF4             ; $03:86B4: AF F4 1F 70 ;
CODE_0386B8:    BNE CODE_0386D9         ; $03:86B8: D0 1F       ;
CODE_0386BA:    LDA $701FF6             ; $03:86BA: AF F6 1F 70 ;
CODE_0386BE:    BEQ CODE_0386D9         ; $03:86BE: F0 19       ;
CODE_0386C0:    LDA $0FF7               ; $03:86C0: AD F7 0F    ;
CODE_0386C3:    AND #$10                ; $03:86C3: 29 10       ;
CODE_0386C5:    BEQ CODE_0386D9         ; $03:86C5: F0 12       ;
CODE_0386C7:    LDA $077A               ; $03:86C7: AD 7A 07    ;
CODE_0386CA:    BNE CODE_0386E3         ; $03:86CA: D0 17       ;
CODE_0386CC:    LDA $07B2               ; $03:86CC: AD B2 07    ;
CODE_0386CF:    BEQ CODE_0386E3         ; $03:86CF: F0 12       ;
CODE_0386D1:    LDA #$2A                ; $03:86D1: A9 2A       ;\"WRONG" sound
CODE_0386D3:    STA $1603               ; $03:86D3: 8D 03 16    ;/
CODE_0386D6:    JMP CODE_0387A1         ; $03:86D6: 4C A1 87    ;

CODE_0386D9:    LDA $0FF6               ; $03:86D9: AD F6 0F    ;
CODE_0386DC:    ORA $0FF7               ; $03:86DC: 0D F7 0F    ;
CODE_0386DF:    BIT #$10                ; $03:86DF: 89 10       ;
CODE_0386E1:    BEQ CODE_03871A         ; $03:86E1: F0 37       ;
CODE_0386E3:    JMP CODE_0387D3         ; $03:86E3: 4C D3 87    ;

CODE_0386E6:    LDA #$00                ; $03:86E6: A9 00       ;\
CODE_0386E8:    STA $701FE0             ; $03:86E8: 8F E0 1F 70 ; |
CODE_0386EC:    STA $701FE1             ; $03:86EC: 8F E1 1F 70 ; |Reset highscore and its display
CODE_0386F0:    STA $701FE2             ; $03:86F0: 8F E2 1F 70 ; |
CODE_0386F4:    STA $701FE3             ; $03:86F4: 8F E3 1F 70 ; |
CODE_0386F8:    STA $701FE4             ; $03:86F8: 8F E4 1F 70 ; |
CODE_0386FC:    STA $701FE5             ; $03:86FC: 8F E5 1F 70 ; |
CODE_038700:    STA $07C8               ; $03:8700: 8D C8 07    ; |
CODE_038703:    STA $07C9               ; $03:8703: 8D C9 07    ; |
CODE_038706:    STA $07CA               ; $03:8706: 8D CA 07    ; |
CODE_038709:    STA $07CB               ; $03:8709: 8D CB 07    ; |
CODE_03870C:    STA $07CC               ; $03:870C: 8D CC 07    ; |
CODE_03870F:    STA $07CD               ; $03:870F: 8D CD 07    ;/
CODE_038712:    LDA #$08                ; $03:8712: A9 08       ;\High score resetted sound
CODE_038714:    STA $1600               ; $03:8714: 8D 00 16    ;/
CODE_038717:    JMP CODE_0387C1         ; $03:8717: 4C C1 87    ;

CODE_03871A:    LDA $701FF2             ; $03:871A: AF F2 1F 70 ;
CODE_03871E:    BNE CODE_038753         ; $03:871E: D0 33       ;
CODE_038720:    LDA $0FF8               ; $03:8720: AD F8 0F    ;
CODE_038723:    CMP #$B0                ; $03:8723: C9 B0       ;
CODE_038725:    BNE CODE_03872E         ; $03:8725: D0 07       ;
CODE_038727:    LDA $0FF4               ; $03:8727: AD F4 0F    ;
CODE_03872A:    CMP #$80                ; $03:872A: C9 80       ;
CODE_03872C:    BEQ CODE_0386E6         ; $03:872C: F0 B8       ;Reset highscore
CODE_03872E:    LDA $0FF9               ; $03:872E: AD F9 0F    ;
CODE_038731:    CMP #$B0                ; $03:8731: C9 B0       ;
CODE_038733:    BNE CODE_03873C         ; $03:8733: D0 07       ;
CODE_038735:    LDA $0FF5               ; $03:8735: AD F5 0F    ;
CODE_038738:    CMP #$80                ; $03:8738: C9 80       ;
CODE_03873A:    BEQ CODE_0386E6         ; $03:873A: F0 AA       ;Reset highscore
CODE_03873C:    LDA $7FFB06             ; $03:873C: AF 06 FB 7F ;
CODE_038740:    BMI CODE_038749         ; $03:8740: 30 07       ;
CODE_038742:    LDA #$40                ; $03:8742: A9 40       ;
CODE_038744:    STA $07B2               ; $03:8744: 8D B2 07    ;
CODE_038747:    BRA CODE_0387A4         ; $03:8747: 80 5B       ;

CODE_038749:    LDA $0FF6               ; $03:8749: AD F6 0F    ;
CODE_03874C:    ORA $0FF7               ; $03:874C: 0D F7 0F    ;
CODE_03874F:    BIT #$2C                ; $03:874F: 89 2C       ;
CODE_038751:    BNE CODE_03875F         ; $03:8751: D0 0C       ;
CODE_038753:    LDX $07B2               ; $03:8753: AE B2 07    ;
CODE_038756:    BNE CODE_0387A4         ; $03:8756: D0 4C       ;
CODE_038758:    JSR CODE_038883         ; $03:8758: 20 83 88    ;
CODE_03875B:    BCS CODE_0387C1         ; $03:875B: B0 64       ;
CODE_03875D:    BRA CODE_0387A7         ; $03:875D: 80 48       ;

CODE_03875F:    LDA $07B2               ; $03:875F: AD B2 07    ;
CODE_038762:    BEQ CODE_0387C1         ; $03:8762: F0 5D       ;
CODE_038764:    LDA #$18                ; $03:8764: A9 18       ;
CODE_038766:    STA $07B2               ; $03:8766: 8D B2 07    ;
CODE_038769:    LDA $7FFB06             ; $03:8769: AF 06 FB 7F ;
CODE_03876D:    BMI CODE_038774         ; $03:876D: 30 05       ;
CODE_03876F:    STA $077A               ; $03:876F: 8D 7A 07    ;
CODE_038772:    BRA CODE_0387A1         ; $03:8772: 80 2D       ;

CODE_038774:    LDA $701FF2             ; $03:8774: AF F2 1F 70 ;
CODE_038778:    BNE CODE_0387A4         ; $03:8778: D0 2A       ;
CODE_03877A:    LDA $0FF6               ; $03:877A: AD F6 0F    ;
CODE_03877D:    ORA $0FF7               ; $03:877D: 0D F7 0F    ;
CODE_038780:    BIT #$20                ; $03:8780: 89 20       ;
CODE_038782:    BEQ CODE_03878B         ; $03:8782: F0 07       ;
CODE_038784:    LDA $077A               ; $03:8784: AD 7A 07    ;
CODE_038787:    EOR #$01                ; $03:8787: 49 01       ;
CODE_038789:    BRA CODE_038799         ; $03:8789: 80 0E       ;

CODE_03878B:    AND #$0C                ; $03:878B: 29 0C       ;
CODE_03878D:    BEQ CODE_0387A1         ; $03:878D: F0 12       ;
CODE_03878F:    EOR #$08                ; $03:878F: 49 08       ;
CODE_038791:    LSR A                   ; $03:8791: 4A          ;
CODE_038792:    LSR A                   ; $03:8792: 4A          ;
CODE_038793:    LSR A                   ; $03:8793: 4A          ;
CODE_038794:    CMP $077A               ; $03:8794: CD 7A 07    ;
CODE_038797:    BEQ CODE_0387A1         ; $03:8797: F0 08       ;
CODE_038799:    STA $077A               ; $03:8799: 8D 7A 07    ;
CODE_03879C:    LDA #$01                ; $03:879C: A9 01       ;\Collected a coin sound
CODE_03879E:    STA $1603               ; $03:879E: 8D 03 16    ;/
CODE_0387A1:    JSR CODE_038861         ; $03:87A1: 20 61 88    ;
CODE_0387A4:    STZ $0FF4               ; $03:87A4: 9C F4 0F    ;
CODE_0387A7:    LDA $1603               ; $03:87A7: AD 03 16    ;
CODE_0387AA:    PHA                     ; $03:87AA: 48          ;
CODE_0387AB:    JSR CODE_03AD74         ; $03:87AB: 20 74 AD    ;
CODE_0387AE:    STZ $1600               ; $03:87AE: 9C 00 16    ;
CODE_0387B1:    STZ $1601               ; $03:87B1: 9C 01 16    ;
CODE_0387B4:    PLA                     ; $03:87B4: 68          ;
CODE_0387B5:    STA $1603               ; $03:87B5: 8D 03 16    ;
CODE_0387B8:    LDA $0F                 ; $03:87B8: A5 0F       ;
CODE_0387BA:    CMP #$06                ; $03:87BA: C9 06       ;
CODE_0387BC:    BNE CODE_038839         ; $03:87BC: D0 7B       ;
CODE_0387BE:    STZ $0EC8               ; $03:87BE: 9C C8 0E    ;
CODE_0387C1:    STZ $0770               ; $03:87C1: 9C 70 07    ;
CODE_0387C4:    STZ $0772               ; $03:87C4: 9C 72 07    ;
CODE_0387C7:    STZ $0722               ; $03:87C7: 9C 22 07    ;
CODE_0387CA:    LDA #$01                ; $03:87CA: A9 01       ;
CODE_0387CC:    STA $0E7F               ; $03:87CC: 8D 7F 0E    ;
CODE_0387CF:    INC $0774               ; $03:87CF: EE 74 07    ;
CODE_0387D2:    RTS                     ; $03:87D2: 60          ;

CODE_0387D3:    LDY $07B2               ; $03:87D3: AC B2 07    ;
CODE_0387D6:    BEQ CODE_0387C1         ; $03:87D6: F0 E9       ;
CODE_0387D8:    LDA #$29                ; $03:87D8: A9 29       ;\"CORRECT" sound
CODE_0387DA:    STA $1603               ; $03:87DA: 8D 03 16    ;/
CODE_0387DD:    LDA $700008             ; $03:87DD: AF 08 00 70 ;
CODE_0387E1:    JSR CODE_038846         ; $03:87E1: 20 46 88    ;
CODE_0387E4:    LDA #$01                ; $03:87E4: A9 01       ;
CODE_0387E6:    STA $0E67               ; $03:87E6: 8D 67 0E    ;
CODE_0387E9:    JSR CODE_03F710         ; $03:87E9: 20 10 F7    ;
CODE_0387EC:    JSL CODE_04C00B         ; $03:87EC: 22 0B C0 04 ;
CODE_0387F0:    INC $075D               ; $03:87F0: EE 5D 07    ;Enable hidden 1-up flag
CODE_0387F3:    INC $0764               ; $03:87F3: EE 64 07    ;
CODE_0387F6:    INC $0757               ; $03:87F6: EE 57 07    ;
CODE_0387F9:    INC $0770               ; $03:87F9: EE 70 07    ;
CODE_0387FC:    LDA $07FC               ; $03:87FC: AD FC 07    ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_0387FF:    STA $076A               ; $03:87FF: 8D 6A 07    ;"More difficult quest" flag
CODE_038802:    STZ $0772               ; $03:8802: 9C 72 07    ;
CODE_038805:    STZ $07B2               ; $03:8805: 9C B2 07    ;
CODE_038808:    LDX #$0B                ; $03:8808: A2 0B       ;
CODE_03880A:    LDA #$00                ; $03:880A: A9 00       ;
CODE_03880C:    STA $07DA,x             ; $03:880C: 9D DA 07    ;
CODE_03880F:    DEX                     ; $03:880F: CA          ;
CODE_038810:    BPL CODE_03880C         ; $03:8810: 10 FA       ;
CODE_038812:    PHX                     ; $03:8812: DA          ;
CODE_038813:    STZ $E4                 ; $03:8813: 64 E4       ;
CODE_038815:    LDA $075E               ; $03:8815: AD 5E 07    ;
CODE_038818:    JSR CODE_03883A         ; $03:8818: 20 3A 88    ;
CODE_03881B:    STA $07DF               ; $03:881B: 8D DF 07    ;
CODE_03881E:    LDA $E4                 ; $03:881E: A5 E4       ;
CODE_038820:    STA $07DE               ; $03:8820: 8D DE 07    ;
CODE_038823:    STZ $E4                 ; $03:8823: 64 E4       ;
CODE_038825:    LDA $06BB               ; $03:8825: AD BB 06    ;
CODE_038828:    JSR CODE_03883A         ; $03:8828: 20 3A 88    ;
CODE_03882B:    STA $07E5               ; $03:882B: 8D E5 07    ;
CODE_03882E:    LDA $E4                 ; $03:882E: A5 E4       ;
CODE_038830:    STA $07E4               ; $03:8830: 8D E4 07    ;
CODE_038833:    LDA #$01                ; $03:8833: A9 01       ;
CODE_038835:    STA $0E1A               ; $03:8835: 8D 1A 0E    ;
CODE_038838:    PLX                     ; $03:8838: FA          ;
CODE_038839:    RTS                     ; $03:8839: 60          ;

CODE_03883A:    CMP #$0A                ; $03:883A: C9 0A       ;
CODE_03883C:    BCC CODE_038845         ; $03:883C: 90 07       ;
CODE_03883E:    INC $E4                 ; $03:883E: E6 E4       ;
CODE_038840:    SEC                     ; $03:8840: 38          ;
CODE_038841:    SBC #$0A                ; $03:8841: E9 0A       ;
CODE_038843:    BRA CODE_03883A         ; $03:8843: 80 F5       ;

CODE_038845:    RTS                     ; $03:8845: 60          ;

CODE_038846:    STA $075F               ; $03:8846: 8D 5F 07    ;
CODE_038849:    STA $0766               ; $03:8849: 8D 66 07    ;
CODE_03884C:    PHA                     ; $03:884C: 48          ;
CODE_03884D:    JSL CODE_05C95B         ; $03:884D: 22 5B C9 05 ;
CODE_038851:    PLA                     ; $03:8851: 68          ;
CODE_038852:    RTS                     ; $03:8852: 60          ;

DATA_038853:    db $0C,$00,$02,$49,$80,$05,$2E,$12              ;
                db $24,$10,$24,$10,$FF,$FF                      ;

CODE_038861:    REP #$20                ; $03:8861: C2 20       ;
CODE_038863:    LDY #$0C                ; $03:8863: A0 0C       ;
CODE_038865:    LDA DATA_038853,y       ; $03:8865: B9 53 88    ;
CODE_038868:    STA $1700,y             ; $03:8868: 99 00 17    ;
CODE_03886B:    DEY                     ; $03:886B: 88          ;
CODE_03886C:    DEY                     ; $03:886C: 88          ;
CODE_03886D:    BPL CODE_038865         ; $03:886D: 10 F6       ;
CODE_03886F:    LDY $077A               ; $03:886F: AC 7A 07    ;
CODE_038872:    BEQ CODE_038880         ; $03:8872: F0 0C       ;
CODE_038874:    LDA #$1024              ; $03:8874: A9 24 10    ;
CODE_038877:    STA $1706               ; $03:8877: 8D 06 17    ;
CODE_03887A:    LDA #$122E              ; $03:887A: A9 2E 12    ;
CODE_03887D:    STA $170A               ; $03:887D: 8D 0A 17    ;
CODE_038880:    SEP #$20                ; $03:8880: E2 20       ;
CODE_038882:    RTS                     ; $03:8882: 60          ;

CODE_038883:    LDX $0717               ; $03:8883: AE 17 07    ;\ Current demo action in X
CODE_038886:    LDA $0718               ; $03:8886: AD 18 07    ; |
CODE_038889:    BNE CODE_0388A4         ; $03:8889: D0 19       ; |If timer isn't 0 yet, branch
CODE_03888B:    INX                     ; $03:888B: E8          ; |
CODE_03888C:    INC $0717               ; $03:888C: EE 17 07    ; |
CODE_03888F:    SEC                     ; $03:888F: 38          ;
CODE_038890:    LDA $07FB               ; $03:8890: AD FB 07    ;
CODE_038893:    BEQ CODE_03889B         ; $03:8893: F0 06       ;
CODE_038895:    LDA.l DATA_05EE21,x     ; $03:8895: BF 21 EE 05 ;
CODE_038899:    BRA CODE_03889F         ; $03:8899: 80 04       ;

CODE_03889B:    LDA.l DATA_05EDF4,x     ; $03:889B: BF F4 ED 05 ;
CODE_03889F:    STA $0718               ; $03:889F: 8D 18 07    ;
CODE_0388A2:    BEQ CODE_0388BA         ; $03:88A2: F0 16       ;
CODE_0388A4:    LDA $07FB               ; $03:88A4: AD FB 07    ;
CODE_0388A7:    BEQ CODE_0388AF         ; $03:88A7: F0 06       ;
CODE_0388A9:    LDA.l DATA_05EE0A,x     ; $03:88A9: BF 0A EE 05 ;
CODE_0388AD:    BRA CODE_0388B3         ; $03:88AD: 80 04       ;

CODE_0388AF:    LDA.l DATA_05EDDF,x     ; $03:88AF: BF DF ED 05 ;
CODE_0388B3:    STA $0FF4               ; $03:88B3: 8D F4 0F    ;
CODE_0388B6:    DEC $0718               ; $03:88B6: CE 18 07    ;
CODE_0388B9:    CLC                     ; $03:88B9: 18          ;
CODE_0388BA:    RTS                     ; $03:88BA: 60          ;

;Defeated Bowser operation mode
CODE_0388BB:    JSR CODE_0388D0         ; $03:88BB: 20 D0 88    ;Princess/toad saved sequence activator
CODE_0388BE:    LDA $0772               ; $03:88BE: AD 72 07    ;
CODE_0388C1:    BEQ CODE_0388CA         ; $03:88C1: F0 07       ;
CODE_0388C3:    LDX #$00                ; $03:88C3: A2 00       ;
CODE_0388C5:    STX $9E                 ; $03:88C5: 86 9E       ;
CODE_0388C7:    JSR CODE_03C3B0         ; $03:88C7: 20 B0 C3    ;
CODE_0388CA:    JSR CODE_03FD13         ; $03:88CA: 20 13 FD    ;
CODE_0388CD:    JMP CODE_03F710         ; $03:88CD: 4C 10 F7    ;

CODE_0388D0:    LDA $1680               ; $03:88D0: AD 80 16    ;\
CODE_0388D3:    BNE CODE_0388E4         ; $03:88D3: D0 0F       ; |If world 8, jump to other pointers
CODE_0388D5:    LDA $075F               ; $03:88D5: AD 5F 07    ; |
CODE_0388D8:    CMP #$07                ; $03:88D8: C9 07       ; |
CODE_0388DA:    BEQ CODE_0388E4         ; $03:88DA: F0 08       ;/
CODE_0388DC:    LDA $0772               ; $03:88DC: AD 72 07    ;
CODE_0388DF:    ASL A                   ; $03:88DF: 0A          ;
CODE_0388E0:    TAX                     ; $03:88E0: AA          ;
CODE_0388E1:    JMP (PNTR_0388EC,x)     ; $03:88E1: 7C EC 88    ;

;Victory commands for world 8
CODE_0388E4:    LDA $0772               ; $03:88E4: AD 72 07    ;
CODE_0388E7:    ASL A                   ; $03:88E7: 0A          ;
CODE_0388E8:    TAX                     ; $03:88E8: AA          ;
CODE_0388E9:    JMP (PNTR_0388FA,x)     ; $03:88E9: 7C FA 88    ;

;Bowser victory pointers
PNTR_0388EC:    dw CODE_03D4D0                                  ;$00 - Collapse bridge if necessary
                dw CODE_0389D2                                  ;
                dw CODE_0389EA                                  ;
                dw CODE_038A55                                  ;
                dw CODE_038A6B                                  ;
                dw CODE_038993                                  ;
                dw CODE_038AD4                                  ;

;Bowser victory pointers - World 8
PNTR_0388FA:    dw CODE_03D4D0                                  ;$00 - Collapse bridge if necessary
                dw CODE_0389CC                                  ;
                dw CODE_0389EA                                  ;
                dw CODE_038918                                  ;
                dw CODE_03892C                                  ;
                dw CODE_038993                                  ;
                dw CODE_038955                                  ;
                dw CODE_03895C                                  ;
                dw CODE_03896B                                  ;
                dw CODE_03897C                                  ;
                dw CODE_038981                                  ;
                dw CODE_038985                                  ;
                dw CODE_038AD4                                  ;
                dw CODE_038989                                  ;$0D - Wait until player pushes start button
                dw CODE_03898E                                  ;$0E - Player chose to continue the game

CODE_038918:    LDA $0754               ; $03:8918: AD 54 07    ;
CODE_03891B:    BEQ CODE_038925         ; $03:891B: F0 08       ;
CODE_03891D:    JSL CODE_04DE2D         ; $03:891D: 22 2D DE 04 ;
CODE_038921:    INC $0772               ; $03:8921: EE 72 07    ;
CODE_038924:    RTS                     ; $03:8924: 60          ;

CODE_038925:    INC $0772               ; $03:8925: EE 72 07    ;
CODE_038928:    INC $0772               ; $03:8928: EE 72 07    ;
CODE_03892B:    RTS                     ; $03:892B: 60          ;

CODE_03892C:    STZ $0FF4               ; $03:892C: 9C F4 0F    ;\
CODE_03892F:    STZ $0FF6               ; $03:892F: 9C F6 0F    ; |
CODE_038932:    STZ $0FF5               ; $03:8932: 9C F5 0F    ; |
CODE_038935:    STZ $0FF7               ; $03:8935: 9C F7 0F    ; |Zero out all controller data
CODE_038938:    STZ $0FF8               ; $03:8938: 9C F8 0F    ; |
CODE_03893B:    STZ $0FF9               ; $03:893B: 9C F9 0F    ; |
CODE_03893E:    STZ $0FFA               ; $03:893E: 9C FA 0F    ; |
CODE_038941:    STZ $0FFB               ; $03:8941: 9C FB 0F    ;/
CODE_038944:    LDA #$02                ; $03:8944: A9 02       ;\
CODE_038946:    STA $078F               ; $03:8946: 8D 8F 07    ;/End of level timer to score conversion speed
CODE_038949:    JSR CODE_03AD70         ; $03:8949: 20 70 AD    ;
CODE_03894C:    LDA $0754               ; $03:894C: AD 54 07    ;\
CODE_03894F:    BNE CODE_038954         ; $03:894F: D0 03       ;/Return if small mario
CODE_038951:    INC $0772               ; $03:8951: EE 72 07    ;
CODE_038954:    RTS                     ; $03:8954: 60          ;

CODE_038955:    INC $0772               ; $03:8955: EE 72 07    ;
CODE_038958:    INC $0F87               ; $03:8958: EE 87 0F    ;
CODE_03895B:    RTS                     ; $03:895B: 60          ;

CODE_03895C:    JSL CODE_04DC5F         ; $03:895C: 22 5F DC 04 ;
CODE_038960:    LDA $0F87               ; $03:8960: AD 87 0F    ;
CODE_038963:    CMP #$06                ; $03:8963: C9 06       ;
CODE_038965:    BCC CODE_03896A         ; $03:8965: 90 03       ;
CODE_038967:    INC $0772               ; $03:8967: EE 72 07    ;
CODE_03896A:    RTS                     ; $03:896A: 60          ;

CODE_03896B:    LDA #$0E                ; $03:896B: A9 0E       ;\
CODE_03896D:    STA $1602               ; $03:896D: 8D 02 16    ;/Princess got rescued music.
CODE_038970:    JSL CODE_04D860         ; $03:8970: 22 60 D8 04 ;Upload new palettes for the kiss sequence
CODE_038974:    JSL CODE_05DE12         ; $03:8974: 22 12 DE 05 ;
CODE_038978:    INC $0772               ; $03:8978: EE 72 07    ;
CODE_03897B:    RTS                     ; $03:897B: 60          ;

CODE_03897C:    JSL CODE_04DE8B         ; $03:897C: 22 8B DE 04 ;
CODE_038980:    RTS                     ; $03:8980: 60          ;

CODE_038981:    INC $0772               ; $03:8981: EE 72 07    ;
CODE_038984:    RTS                     ; $03:8984: 60          ;

CODE_038985:    INC $0772               ; $03:8985: EE 72 07    ;
CODE_038988:    RTS                     ; $03:8988: 60          ;

;Rescued Peach - Operation $0D
CODE_038989:    JSL CODE_04862A         ; $03:8989: 22 2A 86 04 ;Wait until player pushes the start button
CODE_03898D:    RTS                     ; $03:898D: 60          ;

;Rescued Peach - Operation $0E
CODE_03898E:    JSL CODE_048640         ; $03:898E: 22 40 86 04 ;Player chose to continue the game
CODE_038992:    RTS                     ; $03:8992: 60          ;

CODE_038993:    LDA $07B1               ; $03:8993: AD B1 07    ;
CODE_038996:    CMP #$06                ; $03:8996: C9 06       ;
CODE_038998:    BCS CODE_0389CB         ; $03:8998: B0 31       ;
CODE_03899A:    LDA $2143               ; $03:899A: AD 43 21    ;
CODE_03899D:    AND #$7F                ; $03:899D: 29 7F       ;\
CODE_03899F:    CMP #$4B                ; $03:899F: C9 4B       ; |If the "Timer converted to score" sound...
CODE_0389A1:    BEQ CODE_0389A8         ; $03:89A1: F0 05       ;/...is already playing, skip the SFX write
CODE_0389A3:    LDA #$4B                ; $03:89A3: A9 4B       ;\"Timer converted to score" sound
CODE_0389A5:    STA $1603               ; $03:89A5: 8D 03 16    ;/(At level end)
CODE_0389A8:    JSR CODE_03D809         ; $03:89A8: 20 09 D8    ;
CODE_0389AB:    LDA $07E9               ; $03:89AB: AD E9 07    ;\
CODE_0389AE:    ORA $07EA               ; $03:89AE: 0D EA 07    ; |Check if timer is 000 during decrement
CODE_0389B1:    ORA $07EB               ; $03:89B1: 0D EB 07    ; |at level end. If it is not 000, return
CODE_0389B4:    BNE CODE_0389CB         ; $03:89B4: D0 15       ;/
CODE_0389B6:    LDA #$4C                ; $03:89B6: A9 4C       ;\Stops the "Timer converted to score" sound
CODE_0389B8:    STA $1603               ; $03:89B8: 8D 03 16    ;/(at level end)
CODE_0389BB:    STA $0E1A               ; $03:89BB: 8D 1A 0E    ;
CODE_0389BE:    LDA #$30                ; $03:89BE: A9 30       ;
CODE_0389C0:    STA $0788               ; $03:89C0: 8D 88 07    ;
CODE_0389C3:    LDA #$06                ; $03:89C3: A9 06       ;
CODE_0389C5:    STA $07B1               ; $03:89C5: 8D B1 07    ;
CODE_0389C8:    INC $0772               ; $03:89C8: EE 72 07    ;
CODE_0389CB:    RTS                     ; $03:89CB: 60          ;

CODE_0389CC:    JSL CODE_04DE54         ; $03:89CC: 22 54 DE 04 ;
CODE_0389D0:    BRA CODE_0389DB         ; $03:89D0: 80 09       ;

CODE_0389D2:    LDA $0B76               ; $03:89D2: AD 76 0B    ;
CODE_0389D5:    BEQ CODE_0389E5         ; $03:89D5: F0 0E       ;
CODE_0389D7:    JSL CODE_04ED07         ; $03:89D7: 22 07 ED 04 ;
CODE_0389DB:    LDX $071B               ; $03:89DB: AE 1B 07    ;
CODE_0389DE:    INX                     ; $03:89DE: E8          ;
CODE_0389DF:    STX $0203               ; $03:89DF: 8E 03 02    ;
CODE_0389E2:    JMP CODE_038F16         ; $03:89E2: 4C 16 8F    ;

CODE_0389E5:    JSL CODE_04ECCA         ; $03:89E5: 22 CA EC 04 ;
CODE_0389E9:    RTS                     ; $03:89E9: 60          ;

CODE_0389EA:    LDA $96                 ; $03:89EA: A5 96       ;
CODE_0389EC:    BEQ CODE_0389EF         ; $03:89EC: F0 01       ;
CODE_0389EE:    RTS                     ; $03:89EE: 60          ;

CODE_0389EF:    LDA $0F82               ; $03:89EF: AD 82 0F    ;
CODE_0389F2:    BEQ CODE_0389F8         ; $03:89F2: F0 04       ;
CODE_0389F4:    JSL CODE_04DD55         ; $03:89F4: 22 55 DD 04 ;
CODE_0389F8:    LDY #$00                ; $03:89F8: A0 00       ;
CODE_0389FA:    STY $0204               ; $03:89FA: 8C 04 02    ;
CODE_0389FD:    LDA $78                 ; $03:89FD: A5 78       ;
CODE_0389FF:    CMP $0203               ; $03:89FF: CD 03 02    ;
CODE_038A02:    BNE CODE_038A28         ; $03:8A02: D0 24       ;
CODE_038A04:    LDA $075F               ; $03:8A04: AD 5F 07    ;
CODE_038A07:    CMP #$07                ; $03:8A07: C9 07       ;
CODE_038A09:    BNE CODE_038A14         ; $03:8A09: D0 09       ;
CODE_038A0B:    INC $0204               ; $03:8A0B: EE 04 02    ;
CODE_038A0E:    JSL CODE_04DBDA         ; $03:8A0E: 22 DA DB 04 ;
CODE_038A12:    BRA CODE_038A2C         ; $03:8A12: 80 18       ;

CODE_038A14:    CMP #$02                ; $03:8A14: C9 02       ;
CODE_038A16:    BNE CODE_038A21         ; $03:8A16: D0 09       ;
CODE_038A18:    LDA $0219               ; $03:8A18: AD 19 02    ;
CODE_038A1B:    CMP #$44                ; $03:8A1B: C9 44       ;
CODE_038A1D:    BCS CODE_038A2C         ; $03:8A1D: B0 0D       ;
CODE_038A1F:    BRA CODE_038A28         ; $03:8A1F: 80 07       ;

CODE_038A21:    LDA $0219               ; $03:8A21: AD 19 02    ;
CODE_038A24:    CMP #$54                ; $03:8A24: C9 54       ;
CODE_038A26:    BCS CODE_038A2C         ; $03:8A26: B0 04       ;
CODE_038A28:    INC $0204               ; $03:8A28: EE 04 02    ;
CODE_038A2B:    INY                     ; $03:8A2B: C8          ;
CODE_038A2C:    TYA                     ; $03:8A2C: 98          ;
CODE_038A2D:    JSR CODE_03AFEA         ; $03:8A2D: 20 EA AF    ;
CODE_038A30:    LDA $071A               ; $03:8A30: AD 1A 07    ;
CODE_038A33:    CMP $0203               ; $03:8A33: CD 03 02    ;
CODE_038A36:    BEQ CODE_038A4F         ; $03:8A36: F0 17       ;
CODE_038A38:    LDA $0768               ; $03:8A38: AD 68 07    ;
CODE_038A3B:    CLC                     ; $03:8A3B: 18          ;
CODE_038A3C:    ADC #$80                ; $03:8A3C: 69 80       ;
CODE_038A3E:    STA $0768               ; $03:8A3E: 8D 68 07    ;
CODE_038A41:    LDA #$01                ; $03:8A41: A9 01       ;
CODE_038A43:    ADC #$00                ; $03:8A43: 69 00       ;
CODE_038A45:    TAY                     ; $03:8A45: A8          ;
CODE_038A46:    JSR CODE_03AE82         ; $03:8A46: 20 82 AE    ;
CODE_038A49:    JSR CODE_03AE2C         ; $03:8A49: 20 2C AE    ;
CODE_038A4C:    INC $0204               ; $03:8A4C: EE 04 02    ;
CODE_038A4F:    LDA $0204               ; $03:8A4F: AD 04 02    ;
CODE_038A52:    BEQ CODE_038AD0         ; $03:8A52: F0 7C       ;
CODE_038A54:    RTS                     ; $03:8A54: 60          ;

CODE_038A55:    INC $0F7F               ; $03:8A55: EE 7F 0F    ;
CODE_038A58:    LDA $0F7F               ; $03:8A58: AD 7F 0F    ;
CODE_038A5B:    CMP #$70                ; $03:8A5B: C9 70       ;
CODE_038A5D:    BNE CODE_038A6A         ; $03:8A5D: D0 0B       ;
CODE_038A5F:    LDA #$01                ; $03:8A5F: A9 01       ;
CODE_038A61:    STA $0F7E               ; $03:8A61: 8D 7E 0F    ;
CODE_038A64:    STZ $0F7F               ; $03:8A64: 9C 7F 0F    ;
CODE_038A67:    INC $0772               ; $03:8A67: EE 72 07    ;
CODE_038A6A:    RTS                     ; $03:8A6A: 60          ;

CODE_038A6B:    LDA $0749               ; $03:8A6B: AD 49 07    ;
CODE_038A6E:    BNE CODE_038AB3         ; $03:8A6E: D0 43       ;
CODE_038A70:    LDA $0719               ; $03:8A70: AD 19 07    ;
CODE_038A73:    BEQ CODE_038A8C         ; $03:8A73: F0 17       ;
CODE_038A75:    CMP #$09                ; $03:8A75: C9 09       ;
CODE_038A77:    BCS CODE_038AB3         ; $03:8A77: B0 3A       ;
CODE_038A79:    LDY $075F               ; $03:8A79: AC 5F 07    ;
CODE_038A7C:    CPY #$07                ; $03:8A7C: C0 07       ;
CODE_038A7E:    BNE CODE_038A88         ; $03:8A7E: D0 08       ;
CODE_038A80:    CMP #$03                ; $03:8A80: C9 03       ;
CODE_038A82:    BCC CODE_038AB3         ; $03:8A82: 90 2F       ;
CODE_038A84:    SBC #$01                ; $03:8A84: E9 01       ;
CODE_038A86:    BRA CODE_038A8C         ; $03:8A86: 80 04       ;

CODE_038A88:    CMP #$02                ; $03:8A88: C9 02       ;
CODE_038A8A:    BCC CODE_038AB3         ; $03:8A8A: 90 27       ;
CODE_038A8C:    TAY                     ; $03:8A8C: A8          ;
CODE_038A8D:    BNE CODE_038A97         ; $03:8A8D: D0 08       ;
CODE_038A8F:    LDA $0753               ; $03:8A8F: AD 53 07    ;
CODE_038A92:    BEQ CODE_038AA8         ; $03:8A92: F0 14       ;
CODE_038A94:    INY                     ; $03:8A94: C8          ;
CODE_038A95:    BNE CODE_038AA8         ; $03:8A95: D0 11       ;
CODE_038A97:    INY                     ; $03:8A97: C8          ;
CODE_038A98:    LDA $075F               ; $03:8A98: AD 5F 07    ;
CODE_038A9B:    CMP #$07                ; $03:8A9B: C9 07       ;
CODE_038A9D:    BEQ CODE_038AA8         ; $03:8A9D: F0 09       ;
CODE_038A9F:    DEY                     ; $03:8A9F: 88          ;
CODE_038AA0:    CPY #$04                ; $03:8AA0: C0 04       ;
CODE_038AA2:    BCS CODE_038AC6         ; $03:8AA2: B0 22       ;
CODE_038AA4:    CPY #$03                ; $03:8AA4: C0 03       ;
CODE_038AA6:    BCS CODE_038AB3         ; $03:8AA6: B0 0B       ;
CODE_038AA8:    CPY #$03                ; $03:8AA8: C0 03       ;
CODE_038AAA:    BNE CODE_038AAC         ; $03:8AAA: D0 00       ;
CODE_038AAC:    TYA                     ; $03:8AAC: 98          ;
CODE_038AAD:    CLC                     ; $03:8AAD: 18          ;
CODE_038AAE:    ADC #$0C                ; $03:8AAE: 69 0C       ;
CODE_038AB0:    STA $0773               ; $03:8AB0: 8D 73 07    ;
CODE_038AB3:    LDA $0749               ; $03:8AB3: AD 49 07    ;
CODE_038AB6:    CLC                     ; $03:8AB6: 18          ;
CODE_038AB7:    ADC #$04                ; $03:8AB7: 69 04       ;
CODE_038AB9:    STA $0749               ; $03:8AB9: 8D 49 07    ;
CODE_038ABC:    LDA $0719               ; $03:8ABC: AD 19 07    ;
CODE_038ABF:    ADC #$00                ; $03:8ABF: 69 00       ;
CODE_038AC1:    STA $0719               ; $03:8AC1: 8D 19 07    ;
CODE_038AC4:    CMP #$07                ; $03:8AC4: C9 07       ;
CODE_038AC6:    BCC CODE_038AD3         ; $03:8AC6: 90 0B       ;
CODE_038AC8:    LDA #$06                ; $03:8AC8: A9 06       ;
CODE_038ACA:    STA $07B1               ; $03:8ACA: 8D B1 07    ;
CODE_038ACD:    STA $0E67               ; $03:8ACD: 8D 67 0E    ;
CODE_038AD0:    INC $0772               ; $03:8AD0: EE 72 07    ;
CODE_038AD3:    RTS                     ; $03:8AD3: 60          ;

CODE_038AD4:    LDA $07B1               ; $03:8AD4: AD B1 07    ;
CODE_038AD7:    BNE CODE_038B07         ; $03:8AD7: D0 2E       ;
CODE_038AD9:    LDA $1680               ; $03:8AD9: AD 80 16    ;
CODE_038ADC:    BNE CODE_038B08         ; $03:8ADC: D0 2A       ;
CODE_038ADE:    LDY $075F               ; $03:8ADE: AC 5F 07    ;\
CODE_038AE1:    CPY #$07                ; $03:8AE1: C0 07       ; |
CODE_038AE3:    BCS CODE_038B08         ; $03:8AE3: B0 23       ;/ If current world is 8 or higher, branch
CODE_038AE5:    LDA #$00                ; $03:8AE5: A9 00       ;\
CODE_038AE7:    STA $0760               ; $03:8AE7: 8D 60 07    ; |
CODE_038AEA:    STA $075C               ; $03:8AEA: 8D 5C 07    ; |Zero out player's current level number (set it to level 1)
CODE_038AED:    STA $0772               ; $03:8AED: 8D 72 07    ;/ Set operation mode to 0
CODE_038AF0:    INC $075F               ; $03:8AF0: EE 5F 07    ;Increase current world by 1
CODE_038AF3:    LDA #$01                ; $03:8AF3: A9 01       ;\
CODE_038AF5:    STA $0BA5               ; $03:8AF5: 8D A5 0B    ;/Lock animations (for some reason)
CODE_038AF8:    JSR CODE_03A22B         ; $03:8AF8: 20 2B A2    ;Swap players if necessary
CODE_038AFB:    JSL CODE_04C00B         ; $03:8AFB: 22 0B C0 04 ;Set level number and map type
CODE_038AFF:    INC $0757               ; $03:8AFF: EE 57 07    ;Increase operation mode to $01 (because it was set to 0 earlier)
CODE_038B02:    LDA #$01                ; $03:8B02: A9 01       ;\
CODE_038B04:    STA $0770               ; $03:8B04: 8D 70 07    ;/Game operation mode = main
CODE_038B07:    RTS                     ; $03:8B07: 60          ;

;Handle new world after rescuing the princess
CODE_038B08:    JMP CODE_03A204         ; $03:8B08: 4C 04 A2    ;

CODE_038B0B:    RTS                     ; $03:8B0B: 60          ;

DATA_038B0C:    db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB              ;
                db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E              ;
                db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE              ;

DATA_038B24:    db $FF,$41,$42,$44,$45,$48,$31,$32              ;
                db $34,$35,$38,$00                              ;

CODE_038B30:    LDA $0110,x             ; $03:8B30: BD 10 01    ;
CODE_038B33:    BEQ CODE_038B07         ; $03:8B33: F0 D2       ;
CODE_038B35:    CMP #$0B                ; $03:8B35: C9 0B       ;
CODE_038B37:    BCC CODE_038B45         ; $03:8B37: 90 0C       ;
CODE_038B39:    LDA #$0B                ; $03:8B39: A9 0B       ;
CODE_038B3B:    STA $0110,x             ; $03:8B3B: 9D 10 01    ;
CODE_038B3E:    CPX #$09                ; $03:8B3E: E0 09       ;
CODE_038B40:    BEQ CODE_038B45         ; $03:8B40: F0 03       ;
CODE_038B42:    STA $0284               ; $03:8B42: 8D 84 02    ;
CODE_038B45:    TAY                     ; $03:8B45: A8          ;
CODE_038B46:    LDA $0138,x             ; $03:8B46: BD 38 01    ;
CODE_038B49:    BNE CODE_038B4F         ; $03:8B49: D0 04       ;
CODE_038B4B:    STA $0110,x             ; $03:8B4B: 9D 10 01    ;
CODE_038B4E:    RTS                     ; $03:8B4E: 60          ;

CODE_038B4F:    DEC $0138,x             ; $03:8B4F: DE 38 01    ;
CODE_038B52:    CMP #$2B                ; $03:8B52: C9 2B       ;
CODE_038B54:    BNE CODE_038B76         ; $03:8B54: D0 20       ;
CODE_038B56:    CPY #$0B                ; $03:8B56: C0 0B       ;
CODE_038B58:    BNE CODE_038B63         ; $03:8B58: D0 09       ;
CODE_038B5A:    JSL CODE_048596         ; $03:8B5A: 22 96 85 04 ;Increase lives by one
CODE_038B5E:    LDA #$05                ; $03:8B5E: A9 05       ;\1-UP sound
CODE_038B60:    STA $1603               ; $03:8B60: 8D 03 16    ;/
CODE_038B63:    LDA DATA_038B24,y       ; $03:8B63: B9 24 8B    ;
CODE_038B66:    LSR A                   ; $03:8B66: 4A          ;
CODE_038B67:    LSR A                   ; $03:8B67: 4A          ;
CODE_038B68:    LSR A                   ; $03:8B68: 4A          ;
CODE_038B69:    LSR A                   ; $03:8B69: 4A          ;
CODE_038B6A:    TAX                     ; $03:8B6A: AA          ;
CODE_038B6B:    LDA DATA_038B24,y       ; $03:8B6B: B9 24 8B    ;
CODE_038B6E:    AND #$0F                ; $03:8B6E: 29 0F       ;
CODE_038B70:    STA $0145,x             ; $03:8B70: 9D 45 01    ;
CODE_038B73:    JSR CODE_03BD55         ; $03:8B73: 20 55 BD    ;
CODE_038B76:    LDX $9E                 ; $03:8B76: A6 9E       ;
CODE_038B78:    LDY $0B58               ; $03:8B78: AC 58 0B    ;
CODE_038B7B:    LDA $0801,y             ; $03:8B7B: B9 01 08    ;
CODE_038B7E:    CMP #$F0                ; $03:8B7E: C9 F0       ;
CODE_038B80:    BEQ CODE_038B91         ; $03:8B80: F0 0F       ;
CODE_038B82:    INY                     ; $03:8B82: C8          ;
CODE_038B83:    INY                     ; $03:8B83: C8          ;
CODE_038B84:    INY                     ; $03:8B84: C8          ;
CODE_038B85:    INY                     ; $03:8B85: C8          ;
CODE_038B86:    INY                     ; $03:8B86: C8          ;
CODE_038B87:    INY                     ; $03:8B87: C8          ;
CODE_038B88:    INY                     ; $03:8B88: C8          ;
CODE_038B89:    INY                     ; $03:8B89: C8          ;
CODE_038B8A:    CPY #$90                ; $03:8B8A: C0 90       ;
CODE_038B8C:    BNE CODE_038B7B         ; $03:8B8C: D0 ED       ;
CODE_038B8E:    LDY $0B58               ; $03:8B8E: AC 58 0B    ;
CODE_038B91:    LDA $0124,x             ; $03:8B91: BD 24 01    ;
CODE_038B94:    CMP #$18                ; $03:8B94: C9 18       ;
CODE_038B96:    BCC CODE_038B9D         ; $03:8B96: 90 05       ;
CODE_038B98:    SBC #$01                ; $03:8B98: E9 01       ;
CODE_038B9A:    STA $0124,x             ; $03:8B9A: 9D 24 01    ;
CODE_038B9D:    LDA $0124,x             ; $03:8B9D: BD 24 01    ;
CODE_038BA0:    JSR CODE_03EC42         ; $03:8BA0: 20 42 EC    ;
CODE_038BA3:    STX $E0                 ; $03:8BA3: 86 E0       ;
CODE_038BA5:    TXA                     ; $03:8BA5: 8A          ;
CODE_038BA6:    ASL A                   ; $03:8BA6: 0A          ;
CODE_038BA7:    TAX                     ; $03:8BA7: AA          ;
CODE_038BA8:    REP #$20                ; $03:8BA8: C2 20       ;
CODE_038BAA:    LDA $0E50,x             ; $03:8BAA: BD 50 0E    ;
CODE_038BAD:    STA $E2                 ; $03:8BAD: 85 E2       ;
CODE_038BAF:    CLC                     ; $03:8BAF: 18          ;
CODE_038BB0:    ADC #$0008              ; $03:8BB0: 69 08 00    ;
CODE_038BB3:    STA $DE                 ; $03:8BB3: 85 DE       ;
CODE_038BB5:    SEP #$20                ; $03:8BB5: E2 20       ;
CODE_038BB7:    LDX $E0                 ; $03:8BB7: A6 E0       ;
CODE_038BB9:    STZ $DD                 ; $03:8BB9: 64 DD       ;
CODE_038BBB:    LDA $E3                 ; $03:8BBB: A5 E3       ;
CODE_038BBD:    BEQ CODE_038BC5         ; $03:8BBD: F0 06       ;
CODE_038BBF:    LDA $DD                 ; $03:8BBF: A5 DD       ;
CODE_038BC1:    ORA #$01                ; $03:8BC1: 09 01       ;
CODE_038BC3:    STA $DD                 ; $03:8BC3: 85 DD       ;
CODE_038BC5:    LDA $DD                 ; $03:8BC5: A5 DD       ;
CODE_038BC7:    STA $0C00,y             ; $03:8BC7: 99 00 0C    ;
CODE_038BCA:    LDA $0110,x             ; $03:8BCA: BD 10 01    ;
CODE_038BCD:    CMP #$06                ; $03:8BCD: C9 06       ;
CODE_038BCF:    BCS CODE_038BD5         ; $03:8BCF: B0 04       ;
CODE_038BD1:    STZ $DD                 ; $03:8BD1: 64 DD       ;
CODE_038BD3:    BRA CODE_038BDD         ; $03:8BD3: 80 08       ;

CODE_038BD5:    CMP #$0B                ; $03:8BD5: C9 0B       ;
CODE_038BD7:    BEQ CODE_038BD1         ; $03:8BD7: F0 F8       ;
CODE_038BD9:    LDA #$02                ; $03:8BD9: A9 02       ;
CODE_038BDB:    STA $DD                 ; $03:8BDB: 85 DD       ;
CODE_038BDD:    LDA $DF                 ; $03:8BDD: A5 DF       ;
CODE_038BDF:    BEQ CODE_038BE7         ; $03:8BDF: F0 06       ;
CODE_038BE1:    LDA $DD                 ; $03:8BE1: A5 DD       ;
CODE_038BE3:    ORA #$01                ; $03:8BE3: 09 01       ;
CODE_038BE5:    STA $DD                 ; $03:8BE5: 85 DD       ;
CODE_038BE7:    LDA $DD                 ; $03:8BE7: A5 DD       ;
CODE_038BE9:    STA $0C04,y             ; $03:8BE9: 99 04 0C    ;
CODE_038BEC:    LDA $E2                 ; $03:8BEC: A5 E2       ;
CODE_038BEE:    STA $0800,y             ; $03:8BEE: 99 00 08    ;
CODE_038BF1:    LDA $DE                 ; $03:8BF1: A5 DE       ;
CODE_038BF3:    STA $0804,y             ; $03:8BF3: 99 04 08    ;
CODE_038BF6:    LDA $0110,x             ; $03:8BF6: BD 10 01    ;
CODE_038BF9:    ASL A                   ; $03:8BF9: 0A          ;
CODE_038BFA:    TAX                     ; $03:8BFA: AA          ;
CODE_038BFB:    LDA DATA_038B0C,x       ; $03:8BFB: BD 0C 8B    ;
CODE_038BFE:    STA $0802,y             ; $03:8BFE: 99 02 08    ;
CODE_038C01:    LDA DATA_038B0C+1,x     ; $03:8C01: BD 0D 8B    ;
CODE_038C04:    STA $0806,y             ; $03:8C04: 99 06 08    ;
CODE_038C07:    TAX                     ; $03:8C07: AA          ;
CODE_038C08:    LDA #$32                ; $03:8C08: A9 32       ;
CODE_038C0A:    STA $0803,y             ; $03:8C0A: 99 03 08    ;
CODE_038C0D:    CPX #$0E                ; $03:8C0D: E0 0E       ;
CODE_038C0F:    BNE CODE_038C12         ; $03:8C0F: D0 01       ;
CODE_038C11:    INC A                   ; $03:8C11: 1A          ;
CODE_038C12:    STA $0807,y             ; $03:8C12: 99 07 08    ;
CODE_038C15:    LDX $9E                 ; $03:8C15: A6 9E       ;
CODE_038C17:    RTS                     ; $03:8C17: 60          ;

CODE_038C18:    LDA $073C               ; $03:8C18: AD 3C 07    ;\
CODE_038C1B:    ASL A                   ; $03:8C1B: 0A          ; | Current screen routine to execute
CODE_038C1C:    TAX                     ; $03:8C1C: AA          ; |
CODE_038C1D:    JMP (PNTR_038C20,x)     ; $03:8C1D: 7C 20 8C    ;/

PNTR_038C20:    dw CODE_038C3E                                  ;$00 - 
                dw CODE_038C50                                  ;$01 - 
                dw CODE_038C83                                  ;$02 - 
                dw CODE_038C8B                                  ;$03 - 
                dw CODE_038CFF                                  ;$04 - 
                dw CODE_039213                                  ;$05 - 
                dw CODE_038D7B                                  ;$06 - Display intermediate
                dw CODE_039213                                  ;$07 - 
                dw CODE_038E37                                  ;$08 -
                dw CODE_038C6F                                  ;$09 -
                dw CODE_038C7A                                  ;$0A -
                dw CODE_038C7F                                  ;$0B -
                dw CODE_038E65                                  ;$0C -
                dw CODE_038EF1                                  ;$0D -
                dw CODE_038F11                                  ;$0E - Write top score

CODE_038C3E:    LDA $0770               ; $03:8C3E: AD 70 07    ;
CODE_038C41:    BEQ CODE_038C6C         ; $03:8C41: F0 29       ;
CODE_038C43:    LDX #$03                ; $03:8C43: A2 03       ;
CODE_038C45:    STZ $0773               ; $03:8C45: 9C 73 07    ;
CODE_038C48:    LDA #$01                ; $03:8C48: A9 01       ;
CODE_038C4A:    STA $1200               ; $03:8C4A: 8D 00 12    ;
CODE_038C4D:    JMP CODE_038F0D         ; $03:8C4D: 4C 0D 8F    ;

CODE_038C50:    LDA $0744               ; $03:8C50: AD 44 07    ;\
CODE_038C53:    PHA                     ; $03:8C53: 48          ; | Save background color and current player status
CODE_038C54:    LDA $0756               ; $03:8C54: AD 56 07    ; | to stack
CODE_038C57:    PHA                     ; $03:8C57: 48          ;/
CODE_038C58:    STZ $0756               ; $03:8C58: 9C 56 07    ;Small powerup
CODE_038C5B:    LDA #$02                ; $03:8C5B: A9 02       ;\
CODE_038C5D:    STA $0744               ; $03:8C5D: 8D 44 07    ;/Set background color
CODE_038C60:    JSL CODE_049A88         ; $03:8C60: 22 88 9A 04 ;
CODE_038C64:    PLA                     ; $03:8C64: 68          ;\
CODE_038C65:    STA $0756               ; $03:8C65: 8D 56 07    ; | Restore background color and current player powerup
CODE_038C68:    PLA                     ; $03:8C68: 68          ; |
CODE_038C69:    STA $0744               ; $03:8C69: 8D 44 07    ;/
CODE_038C6C:    JMP CODE_038F0D         ; $03:8C6C: 4C 0D 8F    ;To next screen routine

CODE_038C6F:    LDA $5C                 ; $03:8C6F: A5 5C       ;
CODE_038C71:    JSL CODE_05C8FB         ; $03:8C71: 22 FB C8 05 ;
CODE_038C75:    JSL CODE_04956B         ; $03:8C75: 22 6B 95 04 ;
CODE_038C79:    RTS                     ; $03:8C79: 60          ;

CODE_038C7A:    JSL CODE_049A7D         ; $03:8C7A: 22 7D 9A 04 ;
CODE_038C7E:    RTS                     ; $03:8C7E: 60          ;

CODE_038C7F:    INC $073C               ; $03:8C7F: EE 3C 07    ;
CODE_038C82:    RTS                     ; $03:8C82: 60          ;

CODE_038C83:    LDA #$00                ; $03:8C83: A9 00       ;
CODE_038C85:    JSR CODE_0390FC         ; $03:8C85: 20 FC 90    ;
CODE_038C88:    JMP CODE_038F0D         ; $03:8C88: 4C 0D 8F    ;

CODE_038C8B:    JSR CODE_03BD5E         ; $03:8C8B: 20 5E BD    ;
CODE_038C8E:    REP #$30                ; $03:8C8E: C2 30       ;
CODE_038C90:    LDX $1700               ; $03:8C90: AE 00 17    ;
CODE_038C93:    LDA #$7258              ; $03:8C93: A9 58 72    ;
CODE_038C96:    STA $1702,x             ; $03:8C96: 9D 02 17    ;
CODE_038C99:    LDA #$0700              ; $03:8C99: A9 00 07    ;
CODE_038C9C:    STA $1704,x             ; $03:8C9C: 9D 04 17    ;
CODE_038C9F:    LDA #$2028              ; $03:8C9F: A9 28 20    ;
CODE_038CA2:    STA $1706,x             ; $03:8CA2: 9D 06 17    ;
CODE_038CA5:    SEP #$20                ; $03:8CA5: E2 20       ;
CODE_038CA7:    LDA $075F               ; $03:8CA7: AD 5F 07    ;
CODE_038CAA:    INC A                   ; $03:8CAA: 1A          ;
CODE_038CAB:    STA $1708,x             ; $03:8CAB: 9D 08 17    ;
CODE_038CAE:    LDA #$20                ; $03:8CAE: A9 20       ;
CODE_038CB0:    STA $1709,x             ; $03:8CB0: 9D 09 17    ;
CODE_038CB3:    STA $170B,x             ; $03:8CB3: 9D 0B 17    ;
CODE_038CB6:    STA $170D,x             ; $03:8CB6: 9D 0D 17    ;
CODE_038CB9:    LDA #$24                ; $03:8CB9: A9 24       ;
CODE_038CBB:    STA $170A,x             ; $03:8CBB: 9D 0A 17    ;
CODE_038CBE:    LDA $075C               ; $03:8CBE: AD 5C 07    ;
CODE_038CC1:    INC A                   ; $03:8CC1: 1A          ;
CODE_038CC2:    STA $170C,x             ; $03:8CC2: 9D 0C 17    ;
CODE_038CC5:    LDA #$FF                ; $03:8CC5: A9 FF       ;
CODE_038CC7:    STA $170E,x             ; $03:8CC7: 9D 0E 17    ;
CODE_038CCA:    LDA $0770               ; $03:8CCA: AD 70 07    ;
CODE_038CCD:    BNE CODE_038CE3         ; $03:8CCD: D0 14       ;
CODE_038CCF:    LDA $701FF2             ; $03:8CCF: AF F2 1F 70 ;
CODE_038CD3:    BNE CODE_038CE3         ; $03:8CD3: D0 0E       ;
CODE_038CD5:    LDA $7FFB06             ; $03:8CD5: AF 06 FB 7F ;
CODE_038CD9:    BMI CODE_038CE3         ; $03:8CD9: 30 08       ;
CODE_038CDB:    LDA $7FFB00             ; $03:8CDB: AF 00 FB 7F ;
CODE_038CDF:    INC A                   ; $03:8CDF: 1A          ;
CODE_038CE0:    STA $1708,x             ; $03:8CE0: 9D 08 17    ;
CODE_038CE3:    REP #$20                ; $03:8CE3: C2 20       ;
CODE_038CE5:    TXA                     ; $03:8CE5: 8A          ;
CODE_038CE6:    CLC                     ; $03:8CE6: 18          ;
CODE_038CE7:    ADC #$000C              ; $03:8CE7: 69 0C 00    ;
CODE_038CEA:    STA $1700               ; $03:8CEA: 8D 00 17    ;
CODE_038CED:    TAX                     ; $03:8CED: AA          ;
CODE_038CEE:    SEP #$20                ; $03:8CEE: E2 20       ;
CODE_038CF0:    LDA $07FC               ; $03:8CF0: AD FC 07    ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_038CF3:    BEQ CODE_038CFA         ; $03:8CF3: F0 05       ;
CODE_038CF5:    LDA #$2A                ; $03:8CF5: A9 2A       ;
CODE_038CF7:    STA $16FA,x             ; $03:8CF7: 9D FA 16    ;
CODE_038CFA:    SEP #$10                ; $03:8CFA: E2 10       ;
CODE_038CFC:    JMP CODE_038F0D         ; $03:8CFC: 4C 0D 8F    ;

CODE_038CFF:    LDA $0759               ; $03:8CFF: AD 59 07    ;
CODE_038D02:    BEQ CODE_038D75         ; $03:8D02: F0 71       ;
CODE_038D04:    STZ $0759               ; $03:8D04: 9C 59 07    ;
CODE_038D07:    LDY #$00                ; $03:8D07: A0 00       ;
CODE_038D09:    JSR CODE_0385F3         ; $03:8D09: 20 F3 85    ;
CODE_038D0C:    JSL CODE_0491DD         ; $03:8D0C: 22 DD 91 04 ;
CODE_038D10:    LDA #$01                ; $03:8D10: A9 01       ;
CODE_038D12:    STA $0ED6               ; $03:8D12: 8D D6 0E    ;
CODE_038D15:    LDA #$02                ; $03:8D15: A9 02       ;
CODE_038D17:    JSR CODE_038D9D         ; $03:8D17: 20 9D 8D    ;
CODE_038D1A:    LDA $077A               ; $03:8D1A: AD 7A 07    ;
CODE_038D1D:    BEQ CODE_038D74         ; $03:8D1D: F0 55       ;
CODE_038D1F:    LDA $0761               ; $03:8D1F: AD 61 07    ;
CODE_038D22:    BMI CODE_038D74         ; $03:8D22: 30 50       ;
CODE_038D24:    REP #$20                ; $03:8D24: C2 20       ;
CODE_038D26:    LDA #$7258              ; $03:8D26: A9 58 72    ;
CODE_038D29:    STA $1702,y             ; $03:8D29: 99 02 17    ;
CODE_038D2C:    LDA #$0700              ; $03:8D2C: A9 00 07    ;
CODE_038D2F:    STA $1704,y             ; $03:8D2F: 99 04 17    ;
CODE_038D32:    LDA #$2028              ; $03:8D32: A9 28 20    ;
CODE_038D35:    STA $1706,y             ; $03:8D35: 99 06 17    ;
CODE_038D38:    SEP #$20                ; $03:8D38: E2 20       ;
CODE_038D3A:    LDA $0766               ; $03:8D3A: AD 66 07    ;
CODE_038D3D:    INC A                   ; $03:8D3D: 1A          ;
CODE_038D3E:    STA $1708,y             ; $03:8D3E: 99 08 17    ;
CODE_038D41:    LDA #$20                ; $03:8D41: A9 20       ;
CODE_038D43:    STA $1709,y             ; $03:8D43: 99 09 17    ;
CODE_038D46:    STA $170B,y             ; $03:8D46: 99 0B 17    ;
CODE_038D49:    STA $170D,y             ; $03:8D49: 99 0D 17    ;
CODE_038D4C:    LDA #$24                ; $03:8D4C: A9 24       ;
CODE_038D4E:    STA $170A,y             ; $03:8D4E: 99 0A 17    ;
CODE_038D51:    LDA $0763               ; $03:8D51: AD 63 07    ;
CODE_038D54:    INC A                   ; $03:8D54: 1A          ;
CODE_038D55:    STA $170C,y             ; $03:8D55: 99 0C 17    ;
CODE_038D58:    LDA #$FF                ; $03:8D58: A9 FF       ;
CODE_038D5A:    STA $170E,y             ; $03:8D5A: 99 0E 17    ;
CODE_038D5D:    REP #$20                ; $03:8D5D: C2 20       ;
CODE_038D5F:    TYA                     ; $03:8D5F: 98          ;
CODE_038D60:    CLC                     ; $03:8D60: 18          ;
CODE_038D61:    ADC #$000C              ; $03:8D61: 69 0C 00    ;
CODE_038D64:    STA $1700               ; $03:8D64: 8D 00 17    ;
CODE_038D67:    TAY                     ; $03:8D67: A8          ;
CODE_038D68:    SEP #$20                ; $03:8D68: E2 20       ;
CODE_038D6A:    LDA $0781               ; $03:8D6A: AD 81 07    ;
CODE_038D6D:    BEQ CODE_038D74         ; $03:8D6D: F0 05       ;
CODE_038D6F:    LDA #$2A                ; $03:8D6F: A9 2A       ;
CODE_038D71:    STA $16FA,y             ; $03:8D71: 99 FA 16    ;
CODE_038D74:    RTS                     ; $03:8D74: 60          ;

CODE_038D75:    INC $073C               ; $03:8D75: EE 3C 07    ;
CODE_038D78:    JMP CODE_038F0D         ; $03:8D78: 4C 0D 8F    ;

CODE_038D7B:    LDA $0770               ; $03:8D7B: AD 70 07    ;\
CODE_038D7E:    BEQ CODE_038DC9         ; $03:8D7E: F0 49       ;/Skip if game operating mode is title screen
CODE_038D80:    CMP #$03                ; $03:8D80: C9 03       ;\
CODE_038D82:    BEQ CODE_038DCF         ; $03:8D82: F0 4B       ;/If game over, display game over instead.
CODE_038D84:    LDA $0752               ; $03:8D84: AD 52 07    ;\
CODE_038D87:    BNE CODE_038DC9         ; $03:8D87: D0 40       ;/Branch if an exit is taken
CODE_038D89:    LDY $5C                 ; $03:8D89: A4 5C       ;\
CODE_038D8B:    CPY #$03                ; $03:8D8B: C0 03       ; | Check for castle level
CODE_038D8D:    BEQ CODE_038D94         ; $03:8D8D: F0 05       ;/ If castle, branch
CODE_038D8F:    LDA $0769               ; $03:8D8F: AD 69 07    ;\
CODE_038D92:    BNE CODE_038DC9         ; $03:8D92: D0 35       ;/ Go to next screen task if level preview skip flag is set
CODE_038D94:    JSR CODE_03F861         ; $03:8D94: 20 61 F8    ;
CODE_038D97:    JSL CODE_0492E7         ; $03:8D97: 22 E7 92 04 ;
CODE_038D9B:    LDA #$01                ; $03:8D9B: A9 01       ;
CODE_038D9D:    JSR CODE_0390FC         ; $03:8D9D: 20 FC 90    ;
CODE_038DA0:    JSR CODE_039224         ; $03:8DA0: 20 24 92    ;
CODE_038DA3:    STZ $1204               ; $03:8DA3: 9C 04 12    ;
CODE_038DA6:    STZ $1205               ; $03:8DA6: 9C 05 12    ;
CODE_038DA9:    STZ $1206               ; $03:8DA9: 9C 06 12    ;
CODE_038DAC:    STZ $1209               ; $03:8DAC: 9C 09 12    ;
CODE_038DAF:    LDA #$20                ; $03:8DAF: A9 20       ;
CODE_038DB1:    STA $120A               ; $03:8DB1: 8D 0A 12    ;
CODE_038DB4:    STZ $1203               ; $03:8DB4: 9C 03 12    ;
CODE_038DB7:    LDA #$02                ; $03:8DB7: A9 02       ;
CODE_038DB9:    STA $0E7F               ; $03:8DB9: 8D 7F 0E    ;
CODE_038DBC:    STZ $0E4F               ; $03:8DBC: 9C 4F 0E    ;
CODE_038DBF:    STZ $1201               ; $03:8DBF: 9C 01 12    ;
CODE_038DC2:    STZ $0E7E               ; $03:8DC2: 9C 7E 0E    ;No screen pixelation/mosaic
CODE_038DC5:    STZ $0774               ; $03:8DC5: 9C 74 07    ;
CODE_038DC8:    RTS                     ; $03:8DC8: 60          ;

CODE_038DC9:    LDA #$08                ; $03:8DC9: A9 08       ;
CODE_038DCB:    STA $073C               ; $03:8DCB: 8D 3C 07    ;
CODE_038DCE:    RTS                     ; $03:8DCE: 60          ;

CODE_038DCF:    STZ $1204               ; $03:8DCF: 9C 04 12    ;
CODE_038DD2:    STZ $1205               ; $03:8DD2: 9C 05 12    ;
CODE_038DD5:    STZ $1206               ; $03:8DD5: 9C 06 12    ;
CODE_038DD8:    STZ $1209               ; $03:8DD8: 9C 09 12    ;
CODE_038DDB:    LDA #$20                ; $03:8DDB: A9 20       ;
CODE_038DDD:    STA $120A               ; $03:8DDD: 8D 0A 12    ;
CODE_038DE0:    STZ $1203               ; $03:8DE0: 9C 03 12    ;
CODE_038DE3:    LDA $0774               ; $03:8DE3: AD 74 07    ;
CODE_038DE6:    BEQ CODE_038DFA         ; $03:8DE6: F0 12       ;
CODE_038DE8:    STZ $0E4F               ; $03:8DE8: 9C 4F 0E    ;
CODE_038DEB:    STZ $0774               ; $03:8DEB: 9C 74 07    ;
CODE_038DEE:    STZ $1201               ; $03:8DEE: 9C 01 12    ;
CODE_038DF1:    LDA #$02                ; $03:8DF1: A9 02       ;
CODE_038DF3:    STA $0E7F               ; $03:8DF3: 8D 7F 0E    ;
CODE_038DF6:    JSL CODE_0491DD         ; $03:8DF6: 22 DD 91 04 ;
CODE_038DFA:    LDA #$09                ; $03:8DFA: A9 09       ;
CODE_038DFC:    STA $07B0               ; $03:8DFC: 8D B0 07    ;
CODE_038DFF:    LDA #$03                ; $03:8DFF: A9 03       ;
CODE_038E01:    JSR CODE_0390FC         ; $03:8E01: 20 FC 90    ;
CODE_038E04:    LDA $077A               ; $03:8E04: AD 7A 07    ;
CODE_038E07:    BEQ CODE_038E0E         ; $03:8E07: F0 05       ;
CODE_038E09:    LDA $0761               ; $03:8E09: AD 61 07    ;
CODE_038E0C:    BPL CODE_038E2D         ; $03:8E0C: 10 1F       ;
CODE_038E0E:    PHX                     ; $03:8E0E: DA          ;
CODE_038E0F:    PHY                     ; $03:8E0F: 5A          ;
CODE_038E10:    REP #$10                ; $03:8E10: C2 10       ;
CODE_038E12:    LDX #$0000              ; $03:8E12: A2 00 00    ;
CODE_038E15:    STZ $E5                 ; $03:8E15: 64 E5       ;
CODE_038E17:    LDY $E4                 ; $03:8E17: A4 E4       ;
CODE_038E19:    LDA DATA_039030,x       ; $03:8E19: BD 30 90    ;
CODE_038E1C:    STA $1702,y             ; $03:8E1C: 99 02 17    ;
CODE_038E1F:    INX                     ; $03:8E1F: E8          ;
CODE_038E20:    INY                     ; $03:8E20: C8          ;
CODE_038E21:    INC A                   ; $03:8E21: 1A          ;
CODE_038E22:    BNE CODE_038E19         ; $03:8E22: D0 F5       ;
CODE_038E24:    STY $1700               ; $03:8E24: 8C 00 17    ;
CODE_038E27:    SEP #$10                ; $03:8E27: E2 10       ;
CODE_038E29:    PLY                     ; $03:8E29: 7A          ;
CODE_038E2A:    PLX                     ; $03:8E2A: FA          ;
CODE_038E2B:    BRA CODE_038E31         ; $03:8E2B: 80 04       ;

CODE_038E2D:    JSL CODE_0486DF         ; $03:8E2D: 22 DF 86 04 ;
CODE_038E31:    STZ $0EC3               ; $03:8E31: 9C C3 0E    ;
CODE_038E34:    JMP CODE_038F16         ; $03:8E34: 4C 16 8F    ;

CODE_038E37:    LDA $0774               ; $03:8E37: AD 74 07    ;
CODE_038E3A:    BEQ CODE_038E42         ; $03:8E3A: F0 06       ;
CODE_038E3C:    CMP #$01                ; $03:8E3C: C9 01       ;
CODE_038E3E:    BEQ CODE_038E4F         ; $03:8E3E: F0 0F       ;
CODE_038E40:    BRA CODE_038E4C         ; $03:8E40: 80 0A       ;

CODE_038E42:    LDA #$01                ; $03:8E42: A9 01       ;
CODE_038E44:    STA $0E7F               ; $03:8E44: 8D 7F 0E    ;
CODE_038E47:    STZ $0E4F               ; $03:8E47: 9C 4F 0E    ;
CODE_038E4A:    BRA CODE_038E64         ; $03:8E4A: 80 18       ;

CODE_038E4C:    INC $0774               ; $03:8E4C: EE 74 07    ;
CODE_038E4F:    JSR CODE_03A295         ; $03:8E4F: 20 95 A2    ;
CODE_038E52:    LDA $071F               ; $03:8E52: AD 1F 07    ;
CODE_038E55:    BNE CODE_038E4F         ; $03:8E55: D0 F8       ;
CODE_038E57:    DEC $071E               ; $03:8E57: CE 1E 07    ;
CODE_038E5A:    BPL CODE_038E5F         ; $03:8E5A: 10 03       ;
CODE_038E5C:    INC $073C               ; $03:8E5C: EE 3C 07    ;
CODE_038E5F:    LDA #$06                ; $03:8E5F: A9 06       ;
CODE_038E61:    STA $0773               ; $03:8E61: 8D 73 07    ;
CODE_038E64:    RTS                     ; $03:8E64: 60          ;

CODE_038E65:    LDA $0770               ; $03:8E65: AD 70 07    ;
CODE_038E68:    BEQ CODE_038E6D         ; $03:8E68: F0 03       ;
CODE_038E6A:    JMP CODE_038F16         ; $03:8E6A: 4C 16 8F    ;

CODE_038E6D:    PHB                     ; $03:8E6D: 8B          ;
CODE_038E6E:    LDA.b #DATA_05D850>>16  ; $03:8E6E: A9 05       ;
CODE_038E70:    PHA                     ; $03:8E70: 48          ;
CODE_038E71:    PLB                     ; $03:8E71: AB          ;
CODE_038E72:    LDA #$01                ; $03:8E72: A9 01       ;
CODE_038E74:    STA $0EC8               ; $03:8E74: 8D C8 0E    ;
CODE_038E77:    REP #$30                ; $03:8E77: C2 30       ;
CODE_038E79:    LDX $1700               ; $03:8E79: AE 00 17    ;
CODE_038E7C:    LDY #$0000              ; $03:8E7C: A0 00 00    ;
CODE_038E7F:    LDA.w DATA_05D850,y     ; $03:8E7F: B9 50 D8    ;
CODE_038E82:    STA $1702,x             ; $03:8E82: 9D 02 17    ;
CODE_038E85:    INC A                   ; $03:8E85: 1A          ;
CODE_038E86:    BEQ CODE_038E8E         ; $03:8E86: F0 06       ;
CODE_038E88:    INX                     ; $03:8E88: E8          ;
CODE_038E89:    INX                     ; $03:8E89: E8          ;
CODE_038E8A:    INY                     ; $03:8E8A: C8          ;
CODE_038E8B:    INY                     ; $03:8E8B: C8          ;
CODE_038E8C:    BRA CODE_038E7F         ; $03:8E8C: 80 F1       ;

CODE_038E8E:    STX $1700               ; $03:8E8E: 8E 00 17    ;
CODE_038E91:    SEP #$30                ; $03:8E91: E2 30       ;
CODE_038E93:    PLB                     ; $03:8E93: AB          ;
CODE_038E94:    STZ $0E20               ; $03:8E94: 9C 20 0E    ;
CODE_038E97:    LDA #$80                ; $03:8E97: A9 80       ;
CODE_038E99:    STA $1602               ; $03:8E99: 8D 02 16    ;
CODE_038E9C:    STA $0ED6               ; $03:8E9C: 8D D6 0E    ;
CODE_038E9F:    LDA #$05                ; $03:8E9F: A9 05       ;
CODE_038EA1:    STA $0773               ; $03:8EA1: 8D 73 07    ;
CODE_038EA4:    LDA $7FFB06             ; $03:8EA4: AF 06 FB 7F ;
CODE_038EA8:    BMI CODE_038EAD         ; $03:8EA8: 30 03       ;
CODE_038EAA:    JSR CODE_038EB0         ; $03:8EAA: 20 B0 8E    ;
CODE_038EAD:    JMP CODE_038F0D         ; $03:8EAD: 4C 0D 8F    ;

CODE_038EB0:    PHX                     ; $03:8EB0: DA          ;
CODE_038EB1:    PHY                     ; $03:8EB1: 5A          ;
CODE_038EB2:    REP #$30                ; $03:8EB2: C2 30       ;
CODE_038EB4:    LDA $7FFB06             ; $03:8EB4: AF 06 FB 7F ;
CODE_038EB8:    AND #$0001              ; $03:8EB8: 29 01 00    ;
CODE_038EBB:    ASL A                   ; $03:8EBB: 0A          ;
CODE_038EBC:    TAY                     ; $03:8EBC: A8          ;
CODE_038EBD:    LDX $1700               ; $03:8EBD: AE 00 17    ;
CODE_038EC0:    LDA #$024A              ; $03:8EC0: A9 4A 02    ;
CODE_038EC3:    CLC                     ; $03:8EC3: 18          ;
CODE_038EC4:    ADC DATA_038EED,y       ; $03:8EC4: 79 ED 8E    ;
CODE_038EC7:    XBA                     ; $03:8EC7: EB          ;
CODE_038EC8:    STA $1702,x             ; $03:8EC8: 9D 02 17    ;
CODE_038ECB:    LDA #$4018              ; $03:8ECB: A9 18 40    ;
CODE_038ECE:    XBA                     ; $03:8ECE: EB          ;
CODE_038ECF:    STA $1704,x             ; $03:8ECF: 9D 04 17    ;
CODE_038ED2:    LDA #$0024              ; $03:8ED2: A9 24 00    ;
CODE_038ED5:    STA $1706,x             ; $03:8ED5: 9D 06 17    ;
CODE_038ED8:    LDA #$FFFF              ; $03:8ED8: A9 FF FF    ;
CODE_038EDB:    STA $1708,x             ; $03:8EDB: 9D 08 17    ;
CODE_038EDE:    LDA $1700               ; $03:8EDE: AD 00 17    ;
CODE_038EE1:    CLC                     ; $03:8EE1: 18          ;
CODE_038EE2:    ADC #$0006              ; $03:8EE2: 69 06 00    ;
CODE_038EE5:    STA $1700               ; $03:8EE5: 8D 00 17    ;
CODE_038EE8:    SEP #$30                ; $03:8EE8: E2 30       ;
CODE_038EEA:    PLY                     ; $03:8EEA: 7A          ;
CODE_038EEB:    PLX                     ; $03:8EEB: FA          ;
CODE_038EEC:    RTS                     ; $03:8EEC: 60          ;

DATA_038EED:    dw $0040,$0000                                  ;

CODE_038EF1:    LDA $0770               ; $03:8EF1: AD 70 07    ;
CODE_038EF4:    BNE CODE_038F16         ; $03:8EF4: D0 20       ;
CODE_038EF6:    LDX #$00                ; $03:8EF6: A2 00       ;
CODE_038EF8:    STA $0300,x             ; $03:8EF8: 9D 00 03    ;
CODE_038EFB:    STA $0400,x             ; $03:8EFB: 9D 00 04    ;
CODE_038EFE:    DEX                     ; $03:8EFE: CA          ;
CODE_038EFF:    BNE CODE_038EF8         ; $03:8EFF: D0 F7       ;
CODE_038F01:    LDA $7FFB06             ; $03:8F01: AF 06 FB 7F ;
CODE_038F05:    BMI CODE_038F0A         ; $03:8F05: 30 03       ;
CODE_038F07:    STA $077A               ; $03:8F07: 8D 7A 07    ;
CODE_038F0A:    JSR CODE_038861         ; $03:8F0A: 20 61 88    ;
CODE_038F0D:    INC $073C               ; $03:8F0D: EE 3C 07    ;
CODE_038F10:    RTS                     ; $03:8F10: 60          ;

;Write Top Score screen routine task
CODE_038F11:    LDA #$FA                ; $03:8F11: A9 FA       ;
CODE_038F13:    JSR CODE_03BD64         ; $03:8F13: 20 64 BD    ;
CODE_038F16:    INC $0772               ; $03:8F16: EE 72 07    ; Move to next screen routine task
CODE_038F19:    RTS                     ; $03:8F19: 60          ;

DATA_038F1A:    db $58,$43,$00,$09,$16,$20,$0A,$20              ;
                db $1B,$20,$12,$20,$18,$20,$58,$52              ;
                db $00,$15,$20,$20,$18,$20,$1B,$20              ;
                db $15,$20,$0D,$20,$28,$20,$28,$20              ;
                db $1D,$20,$12,$20,$16,$20,$0E,$20              ;
                db $58,$68,$00,$09,$00,$20,$28,$20              ;
                db $28,$20,$27,$24,$25,$20,$FF,$59              ;
                db $6D,$00,$0F,$28,$20,$28,$20,$28              ;
                db $20,$25,$20,$28,$20,$28,$20,$28              ;
                db $20,$28,$20,$59,$E0,$40,$FE,$28              ;
                db $00,$59,$0B,$00,$13,$20,$20,$18              ;
                db $20,$1B,$20,$15,$20,$0D,$20,$28              ;
                db $20,$28,$20,$28,$20,$24,$20,$28              ;
                db $20,$58,$AC,$40,$0D,$28,$20,$FF              ;
                db $09,$6D,$00,$09,$E0,$19,$E1,$19              ;
                db $E2,$19,$E3,$19,$E4,$19,$09,$8D              ;
                db $00,$09,$F0,$19,$F1,$19,$F2,$19              ;
                db $F3,$19,$F4,$19,$09,$AC,$00,$0D              ;
                db $CA,$19,$CB,$19,$CC,$19,$CD,$19              ;
                db $24,$00,$CE,$19,$CF,$19,$09,$CC              ;
                db $00,$0D,$DA,$19,$DB,$19,$DC,$19              ;
                db $DD,$19,$24,$00,$DE,$19,$DF,$19              ;
                db $FF,$08,$CD,$00,$09,$E0,$19,$E1              ;
                db $19,$E2,$19,$E3,$19,$E4,$19,$08              ;
                db $ED,$00,$09,$F0,$19,$F1,$19,$F2              ;
                db $19,$F3,$19,$F4,$19,$09,$2B,$00              ;
                db $13,$C0,$19,$C1,$19,$C2,$19,$C3              ;
                db $19,$C4,$19,$C5,$19,$C6,$19,$C7              ;
                db $19,$C8,$19,$C9,$19,$09,$4B,$00              ;
                db $13,$D0,$19,$D1,$19,$D2,$19,$D3              ;
                db $19,$D4,$19,$D5,$19,$D6,$19,$D7              ;
                db $19,$D8,$19,$D9,$19,$09,$6D,$40              ;
                db $08,$24,$00,$09,$8D,$40,$08,$24              ;
                db $00,$09,$AC,$40,$0C,$24,$00,$09              ;
                db $CC,$40,$0C,$24,$00,$FF                      ;

DATA_039030:    db $09,$AB,$00,$0F,$A1,$02,$A2,$02              ;
                db $A3,$02,$A4,$02,$A5,$02,$A6,$02              ;
                db $A7,$02,$A8,$02,$09,$EB,$00,$19              ;
                db $AE,$02,$AF,$02,$B0,$02,$B1,$02              ;
                db $AD,$02,$A1,$02,$A2,$02,$A3,$02              ;
                db $A4,$02,$A5,$02,$A6,$02,$A7,$02              ;
                db $A8,$02,$0A,$2B,$00,$11,$AE,$02              ;
                db $AF,$02,$B0,$02,$B1,$02,$AD,$02              ;
                db $A9,$02,$AA,$02,$AB,$02,$AC,$02              ;
                db $FF,$05,$84,$00,$29,$20,$08,$0E              ;
                db $08,$15,$08,$0C,$08,$18,$08,$16              ;
                db $08,$0E,$08,$24,$00,$1D,$08,$18              ;
                db $08,$24,$00,$20,$08,$0A,$08,$1B              ;
                db $08,$19,$08,$24,$00,$23,$08,$18              ;
                db $08,$17,$08,$0E,$08,$2B,$08,$05              ;
                db $E5,$00,$01,$24,$08,$05,$ED,$00              ;
                db $01,$24,$08,$05,$F5,$00,$01,$24              ;
                db $08,$FF                                      ;

DATA_0390BA:    db $E5,$19,$E6,$19,$E7,$19,$E8,$19              ;
                db $E9,$19                                      ;

DATA_0390C4:    db $F5,$19,$F6,$19,$F7,$19,$F8,$19              ;
                db $F9,$19                                      ;

DATA_0390CE:    db $15,$20,$1E,$20,$12,$20,$10,$20              ;
                db $12,$20                                      ;

DATA_0390D8:    db $04,$03,$02,$00,$24,$05,$24,$00              ;
                db $08,$07,$06,$00                              ;

DATA_0390E4:    dw $0000,$0000,$0037,$0037                      ;
                dw $0070,$008C,$00B1,$00CD                      ;
                dw $015F,$015F,$0116,$0116                      ;

CODE_0390FC:    PHA                     ; $03:90FC: 48          ;
CODE_0390FD:    ASL A                   ; $03:90FD: 0A          ;
CODE_0390FE:    TAY                     ; $03:90FE: A8          ;
CODE_0390FF:    CPY #$04                ; $03:90FF: C0 04       ;
CODE_039101:    BCC CODE_03910F         ; $03:9101: 90 0C       ;
CODE_039103:    CPY #$08                ; $03:9103: C0 08       ;
CODE_039105:    BCC CODE_039109         ; $03:9105: 90 02       ;
CODE_039107:    LDY #$08                ; $03:9107: A0 08       ;
CODE_039109:    LDA $077A               ; $03:9109: AD 7A 07    ;
CODE_03910C:    BNE CODE_03910F         ; $03:910C: D0 01       ;
CODE_03910E:    INY                     ; $03:910E: C8          ;
CODE_03910F:    STY $F3                 ; $03:910F: 84 F3       ;
CODE_039111:    TYA                     ; $03:9111: 98          ;
CODE_039112:    ASL A                   ; $03:9112: 0A          ;
CODE_039113:    AND #$FF                ; $03:9113: 29 FF       ;
CODE_039115:    REP #$30                ; $03:9115: C2 30       ;
CODE_039117:    AND #$00FF              ; $03:9117: 29 FF 00    ;
CODE_03911A:    TAY                     ; $03:911A: A8          ;
CODE_03911B:    LDX DATA_0390E4,y       ; $03:911B: BE E4 90    ;
CODE_03911E:    LDY $1700               ; $03:911E: AC 00 17    ;
CODE_039121:    SEP #$20                ; $03:9121: E2 20       ;
CODE_039123:    LDA DATA_038F1A,x       ; $03:9123: BD 1A 8F    ;
CODE_039126:    CMP #$FF                ; $03:9126: C9 FF       ;
CODE_039128:    BEQ CODE_039131         ; $03:9128: F0 07       ;
CODE_03912A:    STA $1702,y             ; $03:912A: 99 02 17    ;
CODE_03912D:    INX                     ; $03:912D: E8          ;
CODE_03912E:    INY                     ; $03:912E: C8          ;
CODE_03912F:    BRA CODE_039123         ; $03:912F: 80 F2       ;

CODE_039131:    LDA #$FF                ; $03:9131: A9 FF       ;
CODE_039133:    STA $1702,y             ; $03:9133: 99 02 17    ;
CODE_039136:    STY $E4                 ; $03:9136: 84 E4       ;
CODE_039138:    SEP #$10                ; $03:9138: E2 10       ;
CODE_03913A:    PLA                     ; $03:913A: 68          ;
CODE_03913B:    TAX                     ; $03:913B: AA          ;
CODE_03913C:    CMP #$04                ; $03:913C: C9 04       ;
CODE_03913E:    BCC CODE_039143         ; $03:913E: 90 03       ;
CODE_039140:    JMP CODE_0391DA         ; $03:9140: 4C DA 91    ;

CODE_039143:    DEX                     ; $03:9143: CA          ;
CODE_039144:    BNE CODE_0391A2         ; $03:9144: D0 5C       ;
CODE_039146:    JSL CODE_048895         ; $03:9146: 22 95 88 04 ;
CODE_03914A:    PHX                     ; $03:914A: DA          ;
CODE_03914B:    LDX $1700               ; $03:914B: AE 00 17    ;
CODE_03914E:    LDA $075A               ; $03:914E: AD 5A 07    ;
CODE_039151:    INC A                   ; $03:9151: 1A          ;
CODE_039152:    CMP #$0A                ; $03:9152: C9 0A       ;
CODE_039154:    BCC CODE_039183         ; $03:9154: 90 2D       ;
CODE_039156:    STZ $E4                 ; $03:9156: 64 E4       ;
CODE_039158:    STZ $E5                 ; $03:9158: 64 E5       ;
CODE_03915A:    SEC                     ; $03:915A: 38          ;
CODE_03915B:    SBC #$64                ; $03:915B: E9 64       ;
CODE_03915D:    BCC CODE_039163         ; $03:915D: 90 04       ;
CODE_03915F:    INC $E4                 ; $03:915F: E6 E4       ;
CODE_039161:    BRA CODE_03915A         ; $03:9161: 80 F7       ;

CODE_039163:    CLC                     ; $03:9163: 18          ;
CODE_039164:    ADC #$64                ; $03:9164: 69 64       ;
CODE_039166:    SEC                     ; $03:9166: 38          ;
CODE_039167:    SBC #$0A                ; $03:9167: E9 0A       ;
CODE_039169:    BCC CODE_03916F         ; $03:9169: 90 04       ;
CODE_03916B:    INC $E5                 ; $03:916B: E6 E5       ;
CODE_03916D:    BRA CODE_039166         ; $03:916D: 80 F7       ;

CODE_03916F:    CLC                     ; $03:916F: 18          ;
CODE_039170:    ADC #$0A                ; $03:9170: 69 0A       ;
CODE_039172:    STA $E6                 ; $03:9172: 85 E6       ;
CODE_039174:    LDY $E4                 ; $03:9174: A4 E4       ;
CODE_039176:    BEQ CODE_03917C         ; $03:9176: F0 04       ;
CODE_039178:    TYA                     ; $03:9178: 98          ;
CODE_039179:    STA $170E,x             ; $03:9179: 9D 0E 17    ;
CODE_03917C:    LDA $E5                 ; $03:917C: A5 E5       ;
CODE_03917E:    STA $1710,x             ; $03:917E: 9D 10 17    ;
CODE_039181:    LDA $E6                 ; $03:9181: A5 E6       ;
CODE_039183:    STA $1712,x             ; $03:9183: 9D 12 17    ;
CODE_039186:    LDY $075F               ; $03:9186: AC 5F 07    ;
CODE_039189:    INY                     ; $03:9189: C8          ;
CODE_03918A:    TYA                     ; $03:918A: 98          ;
CODE_03918B:    STA $172E,x             ; $03:918B: 9D 2E 17    ;
CODE_03918E:    LDY $075C               ; $03:918E: AC 5C 07    ;
CODE_039191:    INY                     ; $03:9191: C8          ;
CODE_039192:    TYA                     ; $03:9192: 98          ;
CODE_039193:    STA $1732,x             ; $03:9193: 9D 32 17    ;
CODE_039196:    LDA $07FC               ; $03:9196: AD FC 07    ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_039199:    BEQ CODE_0391A0         ; $03:9199: F0 05       ;
CODE_03919B:    LDA #$2A                ; $03:919B: A9 2A       ;
CODE_03919D:    STA $172C,x             ; $03:919D: 9D 2C 17    ;
CODE_0391A0:    PLX                     ; $03:91A0: FA          ;
CODE_0391A1:    RTS                     ; $03:91A1: 60          ;

CODE_0391A2:    LDA $077A               ; $03:91A2: AD 7A 07    ;
CODE_0391A5:    BEQ CODE_0391D9         ; $03:91A5: F0 32       ;
CODE_0391A7:    LDA $0EC3               ; $03:91A7: AD C3 0E    ;
CODE_0391AA:    BEQ CODE_0391D9         ; $03:91AA: F0 2D       ;
CODE_0391AC:    PHY                     ; $03:91AC: 5A          ;
CODE_0391AD:    LDA $1700               ; $03:91AD: AD 00 17    ;
CODE_0391B0:    CLC                     ; $03:91B0: 18          ;
CODE_0391B1:    ADC #$09                ; $03:91B1: 69 09       ;
CODE_0391B3:    TAY                     ; $03:91B3: A8          ;
CODE_0391B4:    LDA $F3                 ; $03:91B4: A5 F3       ;
CODE_0391B6:    CMP #$04                ; $03:91B6: C9 04       ;
CODE_0391B8:    BEQ CODE_0391BE         ; $03:91B8: F0 04       ;
CODE_0391BA:    CMP #$06                ; $03:91BA: C9 06       ;
CODE_0391BC:    BNE CODE_0391CF         ; $03:91BC: D0 11       ;
CODE_0391BE:    LDA DATA_0390BA,y       ; $03:91BE: B9 BA 90    ;
CODE_0391C1:    STA $1706,y             ; $03:91C1: 99 06 17    ;
CODE_0391C4:    LDA DATA_0390C4,y       ; $03:91C4: B9 C4 90    ;
CODE_0391C7:    STA $1714,y             ; $03:91C7: 99 14 17    ;
CODE_0391CA:    DEY                     ; $03:91CA: 88          ;
CODE_0391CB:    BPL CODE_0391BE         ; $03:91CB: 10 F1       ;
CODE_0391CD:    BRA CODE_0391D8         ; $03:91CD: 80 09       ;

CODE_0391CF:    LDA DATA_0390CE,y       ; $03:91CF: B9 CE 90    ;
CODE_0391D2:    STA $1706,y             ; $03:91D2: 99 06 17    ;
CODE_0391D5:    DEY                     ; $03:91D5: 88          ;
CODE_0391D6:    BPL CODE_0391CF         ; $03:91D6: 10 F7       ;
CODE_0391D8:    PLY                     ; $03:91D8: 7A          ;
CODE_0391D9:    RTS                     ; $03:91D9: 60          ;

CODE_0391DA:    SBC #$04                ; $03:91DA: E9 04       ;
CODE_0391DC:    ASL A                   ; $03:91DC: 0A          ;
CODE_0391DD:    ASL A                   ; $03:91DD: 0A          ;
CODE_0391DE:    TAX                     ; $03:91DE: AA          ;
CODE_0391DF:    REP #$30                ; $03:91DF: C2 30       ;
CODE_0391E1:    LDA $1700               ; $03:91E1: AD 00 17    ;
CODE_0391E4:    CLC                     ; $03:91E4: 18          ;
CODE_0391E5:    ADC #$0000              ; $03:91E5: 69 00 00    ;
CODE_0391E8:    TAY                     ; $03:91E8: A8          ;
CODE_0391E9:    SEP #$30                ; $03:91E9: E2 30       ;
CODE_0391EB:    LDA #$12                ; $03:91EB: A9 12       ;
CODE_0391ED:    CLC                     ; $03:91ED: 18          ;
CODE_0391EE:    ADC $1700               ; $03:91EE: 6D 00 17    ;
CODE_0391F1:    STA $E6                 ; $03:91F1: 85 E6       ;
CODE_0391F3:    LDA DATA_0390D8,x       ; $03:91F3: BD D8 90    ;
CODE_0391F6:    STA $1734,y             ; $03:91F6: 99 34 17    ;
CODE_0391F9:    INX                     ; $03:91F9: E8          ;
CODE_0391FA:    INY                     ; $03:91FA: C8          ;
CODE_0391FB:    INY                     ; $03:91FB: C8          ;
CODE_0391FC:    INY                     ; $03:91FC: C8          ;
CODE_0391FD:    INY                     ; $03:91FD: C8          ;
CODE_0391FE:    INY                     ; $03:91FE: C8          ;
CODE_0391FF:    INY                     ; $03:91FF: C8          ;
CODE_039200:    CPY $E6                 ; $03:9200: C4 E6       ;
CODE_039202:    BCC CODE_0391F3         ; $03:9202: 90 EF       ;
CODE_039204:    REP #$20                ; $03:9204: C2 20       ;
CODE_039206:    LDA #$0040              ; $03:9206: A9 40 00    ;
CODE_039209:    CLC                     ; $03:9209: 18          ;
CODE_03920A:    ADC $1700               ; $03:920A: 6D 00 17    ;
CODE_03920D:    STA $1700               ; $03:920D: 8D 00 17    ;
CODE_039210:    SEP #$20                ; $03:9210: E2 20       ;
CODE_039212:    RTS                     ; $03:9212: 60          ;

CODE_039213:    LDA $07B0               ; $03:9213: AD B0 07    ;
CODE_039216:    BNE CODE_03922C         ; $03:9216: D0 14       ;
CODE_039218:    LDA $0770               ; $03:9218: AD 70 07    ;
CODE_03921B:    CMP #$03                ; $03:921B: C9 03       ;
CODE_03921D:    BEQ CODE_039224         ; $03:921D: F0 05       ;
CODE_03921F:    LDA #$01                ; $03:921F: A9 01       ;
CODE_039221:    STA $0E7F               ; $03:9221: 8D 7F 0E    ;
CODE_039224:    LDA #$07                ; $03:9224: A9 07       ;
CODE_039226:    STA $07B0               ; $03:9226: 8D B0 07    ;
CODE_039229:    INC $073C               ; $03:9229: EE 3C 07    ;
CODE_03922C:    RTS                     ; $03:922C: 60          ;

CODE_03922D:    LDA $0EC9               ; $03:922D: AD C9 0E    ;\If done rendering the level, return?
CODE_039230:    BNE CODE_03922C         ; $03:9230: D0 FA       ;/or: If no objects flag is set, return?
CODE_039232:    REP #$30                ; $03:9232: C2 30       ;16-bit AXY
CODE_039234:    LDY $1A00               ; $03:9234: AC 00 1A    ;\ 
CODE_039237:    STY $00                 ; $03:9237: 84 00       ;/ ??
CODE_039239:    LDA $0720               ; $03:9239: AD 20 07    ;\Load layer 1 drawing handler
CODE_03923C:    STA $1A02,y             ; $03:923C: 99 02 1A    ;/Store it here?
CODE_03923F:    XBA                     ; $03:923F: EB          ;\
CODE_039240:    STA $0ECC               ; $03:9240: 8D CC 0E    ;/Swap high and low bytes and store it here.
CODE_039243:    LDA #$3D80              ; $03:9243: A9 80 3D    ;
CODE_039246:    STA $1A04,y             ; $03:9246: 99 04 1A    ;
CODE_039249:    LDA #$0024              ; $03:9249: A9 24 00    ;
CODE_03924C:    STA $1A06,y             ; $03:924C: 99 06 1A    ;
CODE_03924F:    STA $1A08,y             ; $03:924F: 99 08 1A    ;
CODE_039252:    STA $1A0A,y             ; $03:9252: 99 0A 1A    ;
CODE_039255:    STA $1A0C,y             ; $03:9255: 99 0C 1A    ;
CODE_039258:    SEP #$30                ; $03:9258: E2 30       ;
CODE_03925A:    LDX #$00                ; $03:925A: A2 00       ;
CODE_03925C:    LDA $0EE7               ; $03:925C: AD E7 0E    ;
CODE_03925F:    BEQ CODE_039271         ; $03:925F: F0 10       ;
CODE_039261:    STA $0EE6               ; $03:9261: 8D E6 0E    ;
CODE_039264:    LDA $0720               ; $03:9264: AD 20 07    ;
CODE_039267:    STA $0EF5               ; $03:9267: 8D F5 0E    ;
CODE_03926A:    LDA $0721               ; $03:926A: AD 21 07    ;
CODE_03926D:    INC A                   ; $03:926D: 1A          ;
CODE_03926E:    STA $0EF4               ; $03:926E: 8D F4 0E    ;
CODE_039271:    STX $02                 ; $03:9271: 86 02       ;
CODE_039273:    LDA $06A1,x             ; $03:9273: BD A1 06    ;
CODE_039276:    AND #$C0                ; $03:9276: 29 C0       ;
CODE_039278:    ASL A                   ; $03:9278: 0A          ;
CODE_039279:    ROL A                   ; $03:9279: 2A          ;
CODE_03927A:    ROL A                   ; $03:927A: 2A          ;
CODE_03927B:    TAY                     ; $03:927B: A8          ;
CODE_03927C:    LDA DATA_039438,y       ; $03:927C: B9 38 94    ;
CODE_03927F:    STA $06                 ; $03:927F: 85 06       ;
CODE_039281:    LDA DATA_03943C,y       ; $03:9281: B9 3C 94    ;
CODE_039284:    STA $07                 ; $03:9284: 85 07       ;
CODE_039286:    REP #$30                ; $03:9286: C2 30       ;
CODE_039288:    TXA                     ; $03:9288: 8A          ;
CODE_039289:    AND #$00FF              ; $03:9289: 29 FF 00    ;
CODE_03928C:    TAX                     ; $03:928C: AA          ;
CODE_03928D:    LDA $06A1,x             ; $03:928D: BD A1 06    ;
CODE_039290:    AND #$003F              ; $03:9290: 29 3F 00    ;
CODE_039293:    ASL A                   ; $03:9293: 0A          ;
CODE_039294:    ASL A                   ; $03:9294: 0A          ;
CODE_039295:    ASL A                   ; $03:9295: 0A          ;
CODE_039296:    STA $03                 ; $03:9296: 85 03       ;
CODE_039298:    LDA $071F               ; $03:9298: AD 1F 07    ;
CODE_03929B:    AND #$0001              ; $03:929B: 29 01 00    ;
CODE_03929E:    EOR #$0001              ; $03:929E: 49 01 00    ;
CODE_0392A1:    ASL A                   ; $03:92A1: 0A          ;
CODE_0392A2:    ASL A                   ; $03:92A2: 0A          ;
CODE_0392A3:    ADC $03                 ; $03:92A3: 65 03       ;
CODE_0392A5:    TAY                     ; $03:92A5: A8          ;
CODE_0392A6:    LDX $00                 ; $03:92A6: A6 00       ;
CODE_0392A8:    LDA ($06),y             ; $03:92A8: B1 06       ;
CODE_0392AA:    STA $1A0E,x             ; $03:92AA: 9D 0E 1A    ;
CODE_0392AD:    INY                     ; $03:92AD: C8          ;
CODE_0392AE:    INY                     ; $03:92AE: C8          ;
CODE_0392AF:    LDA ($06),y             ; $03:92AF: B1 06       ;
CODE_0392B1:    STA $1A10,x             ; $03:92B1: 9D 10 1A    ;
CODE_0392B4:    INC $00                 ; $03:92B4: E6 00       ;
CODE_0392B6:    INC $00                 ; $03:92B6: E6 00       ;
CODE_0392B8:    INC $00                 ; $03:92B8: E6 00       ;
CODE_0392BA:    INC $00                 ; $03:92BA: E6 00       ;
CODE_0392BC:    SEP #$30                ; $03:92BC: E2 30       ;
CODE_0392BE:    LDX $02                 ; $03:92BE: A6 02       ;
CODE_0392C0:    INX                     ; $03:92C0: E8          ;
CODE_0392C1:    CPX #$0D                ; $03:92C1: E0 0D       ;
CODE_0392C3:    BCS CODE_0392C8         ; $03:92C3: B0 03       ;
CODE_0392C5:    JMP CODE_039271         ; $03:92C5: 4C 71 92    ;

CODE_0392C8:    REP #$30                ; $03:92C8: C2 30       ;
CODE_0392CA:    LDY $1A00               ; $03:92CA: AC 00 1A    ;
CODE_0392CD:    LDA $1A0E,y             ; $03:92CD: B9 0E 1A    ;
CODE_0392D0:    CMP #$18A2              ; $03:92D0: C9 A2 18    ;
CODE_0392D3:    BEQ CODE_0392DA         ; $03:92D3: F0 05       ;
CODE_0392D5:    CMP #$18A3              ; $03:92D5: C9 A3 18    ;
CODE_0392D8:    BNE CODE_0392E6         ; $03:92D8: D0 0C       ;
CODE_0392DA:    STA $1A06,y             ; $03:92DA: 99 06 1A    ;
CODE_0392DD:    STA $1A08,y             ; $03:92DD: 99 08 1A    ;
CODE_0392E0:    STA $1A0A,y             ; $03:92E0: 99 0A 1A    ;
CODE_0392E3:    STA $1A0C,y             ; $03:92E3: 99 0C 1A    ;
CODE_0392E6:    LDA $00                 ; $03:92E6: A5 00       ;
CODE_0392E8:    CLC                     ; $03:92E8: 18          ;
CODE_0392E9:    ADC #$000E              ; $03:92E9: 69 0E 00    ;
CODE_0392EC:    TAY                     ; $03:92EC: A8          ;
CODE_0392ED:    LDA #$FFFF              ; $03:92ED: A9 FF FF    ;
CODE_0392F0:    STA $1A02,y             ; $03:92F0: 99 02 1A    ;
CODE_0392F3:    STY $1A00               ; $03:92F3: 8C 00 1A    ;
CODE_0392F6:    LDA $0743               ; $03:92F6: AD 43 07    ;
CODE_0392F9:    AND #$00FF              ; $03:92F9: 29 FF 00    ;
CODE_0392FC:    BNE CODE_039334         ; $03:92FC: D0 36       ;
CODE_0392FE:    LDA $5C                 ; $03:92FE: A5 5C       ;
CODE_039300:    AND #$00FF              ; $03:9300: 29 FF 00    ;
CODE_039303:    BEQ CODE_039334         ; $03:9303: F0 2F       ;
CODE_039305:    CMP #$0003              ; $03:9305: C9 03 00    ;
CODE_039308:    BEQ CODE_039334         ; $03:9308: F0 2A       ;
CODE_03930A:    LDA $19F8,y             ; $03:930A: B9 F8 19    ;
CODE_03930D:    CMP #$0024              ; $03:930D: C9 24 00    ;
CODE_039310:    BEQ CODE_039327         ; $03:9310: F0 15       ;
CODE_039312:    CMP #$10A4              ; $03:9312: C9 A4 10    ;
CODE_039315:    BEQ CODE_039327         ; $03:9315: F0 10       ;
CODE_039317:    CMP #$0A08              ; $03:9317: C9 08 0A    ;
CODE_03931A:    BNE CODE_039330         ; $03:931A: D0 14       ;
CODE_03931C:    LDA $0ECE               ; $03:931C: AD CE 0E    ;
CODE_03931F:    AND #$FF00              ; $03:931F: 29 00 FF    ;
CODE_039322:    STA $0ECE               ; $03:9322: 8D CE 0E    ;
CODE_039325:    BRA CODE_039330         ; $03:9325: 80 09       ;

CODE_039327:    LDA $0ECE               ; $03:9327: AD CE 0E    ;
CODE_03932A:    ORA #$0100              ; $03:932A: 09 00 01    ;
CODE_03932D:    STA $0ECE               ; $03:932D: 8D CE 0E    ;
CODE_039330:    JSL CODE_048D71         ; $03:9330: 22 71 8D 04 ;
CODE_039334:    SEP #$30                ; $03:9334: E2 30       ;
CODE_039336:    INC $0721               ; $03:9336: EE 21 07    ;
CODE_039339:    LDA $0721               ; $03:9339: AD 21 07    ;
CODE_03933C:    AND #$1F                ; $03:933C: 29 1F       ;
CODE_03933E:    BNE CODE_03934B         ; $03:933E: D0 0B       ;
CODE_039340:    STZ $0721               ; $03:9340: 9C 21 07    ;
CODE_039343:    LDA $0720               ; $03:9343: AD 20 07    ;
CODE_039346:    EOR #$04                ; $03:9346: 49 04       ;
CODE_039348:    STA $0720               ; $03:9348: 8D 20 07    ;
CODE_03934B:    LDA #$06                ; $03:934B: A9 06       ;
CODE_03934D:    STA $0773               ; $03:934D: 8D 73 07    ;
CODE_039350:    RTS                     ; $03:9350: 60          ;

CODE_039351:    RTS                     ; $03:9351: 60          ;

CODE_039352:    RTS                     ; $03:9352: 60          ;

DATA_039353:    dw $0C45,$0C45,$0C47,$0C47                      ;
                dw $0C47,$0C47,$0C47,$0C47                      ;
                dw $0C57,$0C58,$0C59,$0C5A                      ;
                dw $0024,$0024,$0024,$0024                      ;

CODE_039373:    LDY $1700               ; $03:9373: AC 00 17    ;
CODE_039376:    INY                     ; $03:9376: C8          ;
CODE_039377:    LDA #$03                ; $03:9377: A9 03       ;
CODE_039379:    JSR CODE_0393C1         ; $03:9379: 20 C1 93    ;
CODE_03937C:    LDA #$06                ; $03:937C: A9 06       ;
CODE_03937E:    STA $0773               ; $03:937E: 8D 73 07    ;
CODE_039381:    JMP CODE_0393B2         ; $03:9381: 4C B2 93    ;

CODE_039384:    JSR CODE_039390         ; $03:9384: 20 90 93    ;
CODE_039387:    INC $03F2               ; $03:9387: EE F2 03    ;Increase the counter for the amount of bounce blocks you've created.
CODE_03938A:    DEC $03EE,x             ; $03:938A: DE EE 03    ;
CODE_03938D:    RTS                     ; $03:938D: 60          ;

CODE_03938E:    LDA #$00                ; $03:938E: A9 00       ;
CODE_039390:    LDY #$03                ; $03:9390: A0 03       ;
CODE_039392:    CMP #$00                ; $03:9392: C9 00       ;
CODE_039394:    BEQ CODE_0393AA         ; $03:9394: F0 14       ;
CODE_039396:    LDY #$00                ; $03:9396: A0 00       ;
CODE_039398:    CMP #$5B                ; $03:9398: C9 5B       ;
CODE_03939A:    BEQ CODE_0393AA         ; $03:939A: F0 0E       ;
CODE_03939C:    CMP #$51                ; $03:939C: C9 51       ;
CODE_03939E:    BEQ CODE_0393AA         ; $03:939E: F0 0A       ;
CODE_0393A0:    INY                     ; $03:93A0: C8          ;
CODE_0393A1:    CMP #$60                ; $03:93A1: C9 60       ;
CODE_0393A3:    BEQ CODE_0393AA         ; $03:93A3: F0 05       ;
CODE_0393A5:    CMP #$52                ; $03:93A5: C9 52       ;
CODE_0393A7:    BEQ CODE_0393AA         ; $03:93A7: F0 01       ;
CODE_0393A9:    INY                     ; $03:93A9: C8          ;
CODE_0393AA:    TYA                     ; $03:93AA: 98          ;
CODE_0393AB:    LDY $1700               ; $03:93AB: AC 00 17    ;
CODE_0393AE:    INY                     ; $03:93AE: C8          ;
CODE_0393AF:    JSR CODE_0393C1         ; $03:93AF: 20 C1 93    ;
CODE_0393B2:    REP #$20                ; $03:93B2: C2 20       ;
CODE_0393B4:    LDA $1700               ; $03:93B4: AD 00 17    ;
CODE_0393B7:    CLC                     ; $03:93B7: 18          ;
CODE_0393B8:    ADC #$0010              ; $03:93B8: 69 10 00    ;
CODE_0393BB:    STA $1700               ; $03:93BB: 8D 00 17    ;
CODE_0393BE:    SEP #$20                ; $03:93BE: E2 20       ;
CODE_0393C0:    RTS                     ; $03:93C0: 60          ;

CODE_0393C1:    STX $00                 ; $03:93C1: 86 00       ;
CODE_0393C3:    STY $01                 ; $03:93C3: 84 01       ;
CODE_0393C5:    ASL A                   ; $03:93C5: 0A          ;
CODE_0393C6:    ASL A                   ; $03:93C6: 0A          ;
CODE_0393C7:    ASL A                   ; $03:93C7: 0A          ;
CODE_0393C8:    TAX                     ; $03:93C8: AA          ;
CODE_0393C9:    LDY #$00                ; $03:93C9: A0 00       ;
CODE_0393CB:    LDA $06                 ; $03:93CB: A5 06       ;
CODE_0393CD:    CMP #$D0                ; $03:93CD: C9 D0       ;
CODE_0393CF:    BCC CODE_0393D3         ; $03:93CF: 90 02       ;
CODE_0393D1:    LDY #$04                ; $03:93D1: A0 04       ;
CODE_0393D3:    STY $03                 ; $03:93D3: 84 03       ;
CODE_0393D5:    AND #$0F                ; $03:93D5: 29 0F       ;
CODE_0393D7:    ASL A                   ; $03:93D7: 0A          ;
CODE_0393D8:    STA $04                 ; $03:93D8: 85 04       ;
CODE_0393DA:    STZ $05                 ; $03:93DA: 64 05       ;
CODE_0393DC:    LDA $02                 ; $03:93DC: A5 02       ;
CODE_0393DE:    CLC                     ; $03:93DE: 18          ;
CODE_0393DF:    ADC #$20                ; $03:93DF: 69 20       ;
CODE_0393E1:    ASL A                   ; $03:93E1: 0A          ;
CODE_0393E2:    ROL $05                 ; $03:93E2: 26 05       ;
CODE_0393E4:    ASL A                   ; $03:93E4: 0A          ;
CODE_0393E5:    ROL $05                 ; $03:93E5: 26 05       ;
CODE_0393E7:    ADC $04                 ; $03:93E7: 65 04       ;
CODE_0393E9:    STA $04                 ; $03:93E9: 85 04       ;
CODE_0393EB:    LDA $05                 ; $03:93EB: A5 05       ;
CODE_0393ED:    ADC $03                 ; $03:93ED: 65 03       ;
CODE_0393EF:    STA $05                 ; $03:93EF: 85 05       ;
CODE_0393F1:    LDY $01                 ; $03:93F1: A4 01       ;
CODE_0393F3:    REP #$30                ; $03:93F3: C2 30       ;
CODE_0393F5:    TYA                     ; $03:93F5: 98          ;
CODE_0393F6:    AND #$00FF              ; $03:93F6: 29 FF 00    ;
CODE_0393F9:    TAY                     ; $03:93F9: A8          ;
CODE_0393FA:    TXA                     ; $03:93FA: 8A          ;
CODE_0393FB:    AND #$00FF              ; $03:93FB: 29 FF 00    ;
CODE_0393FE:    TAX                     ; $03:93FE: AA          ;
CODE_0393FF:    LDA $04                 ; $03:93FF: A5 04       ;
CODE_039401:    XBA                     ; $03:9401: EB          ;
CODE_039402:    STA $1701,y             ; $03:9402: 99 01 17    ;
CODE_039405:    CLC                     ; $03:9405: 18          ;
CODE_039406:    ADC #$2000              ; $03:9406: 69 00 20    ;
CODE_039409:    STA $1709,y             ; $03:9409: 99 09 17    ;
CODE_03940C:    LDA #$0300              ; $03:940C: A9 00 03    ;
CODE_03940F:    STA $1703,y             ; $03:940F: 99 03 17    ;
CODE_039412:    STA $170B,y             ; $03:9412: 99 0B 17    ;
CODE_039415:    LDA DATA_039353,x       ; $03:9415: BD 53 93    ;
CODE_039418:    STA $1705,y             ; $03:9418: 99 05 17    ;
CODE_03941B:    LDA DATA_039353+2,x     ; $03:941B: BD 55 93    ;
CODE_03941E:    STA $1707,y             ; $03:941E: 99 07 17    ;
CODE_039421:    LDA DATA_039353+4,x     ; $03:9421: BD 57 93    ;
CODE_039424:    STA $170D,y             ; $03:9424: 99 0D 17    ;
CODE_039427:    LDA DATA_039353+6,x     ; $03:9427: BD 59 93    ;
CODE_03942A:    STA $170F,y             ; $03:942A: 99 0F 17    ;
CODE_03942D:    LDA #$FFFF              ; $03:942D: A9 FF FF    ;
CODE_039430:    STA $1711,y             ; $03:9430: 99 11 17    ;
CODE_039433:    SEP #$30                ; $03:9433: E2 30       ;
CODE_039435:    LDX $00                 ; $03:9435: A6 00       ;
CODE_039437:    RTS                     ; $03:9437: 60          ;

DATA_039438:    dw $9840,$C858                                  ;

DATA_03943C:    dw $9594,$9797                                  ;

;SMB1 MAP16 IMAGE DATA
;FORMAT: $upperleft,$property,$bottomleft,$property,$upperright,$property,$bottomright,$property

DATA_039440:    db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 000  
                db $27,$00,$27,$00,$27,$00,$27,$00              ;MAP16 tile 001
                db $24,$00,$E3,$09,$24,$00,$24,$00              ;MAP16 tile 002
                db $24,$00,$24,$00,$24,$00,$E0,$09              ;MAP16 tile 003
                db $24,$00,$24,$00,$24,$00,$D2,$08              ;MAP16 tile 004
                db $D0,$08,$D3,$08,$D1,$08,$D4,$08              ;MAP16 tile 005
                db $24,$00,$D5,$08,$24,$00,$24,$00              ;MAP16 tile 006
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 007
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 008
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 009
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 00A
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 00B
                db $24,$00,$24,$00,$24,$00,$24,$00              ;MAP16 tile 00C
                db $24,$00,$20,$2A,$24,$00,$20,$2A              ;MAP16 tile 00D
                db $24,$00,$81,$28,$24,$00,$20,$2A              ;MAP16 tile 00E
                db $24,$00,$20,$2A,$24,$00,$80,$28              ;MAP16 tile 00F
                db $24,$00,$7F,$18,$7F,$18,$24,$00              ;MAP16 tile 010
                db $B8,$08,$BA,$08,$B9,$08,$BB,$08              ;MAP16 tile 011
                db $B8,$08,$BC,$08,$B9,$08,$BD,$08              ;MAP16 tile 012
                db $BA,$08,$BC,$08,$BB,$08,$BD,$08              ;MAP16 tile 013
                db $60,$08,$64,$08,$61,$08,$65,$08              ;MAP16 tile 014
                db $62,$08,$66,$08,$63,$08,$67,$08              ;MAP16 tile 015
                db $60,$08,$64,$08,$61,$08,$65,$08              ;MAP16 tile 016
                db $62,$08,$66,$08,$63,$08,$67,$08              ;and so on.
                db $68,$08,$68,$08,$69,$08,$69,$08              ;
                db $97,$08,$97,$08,$6A,$08,$6A,$08              ;
                db $4B,$10,$4C,$10,$4D,$10,$4E,$10              ;
                db $4D,$10,$4F,$10,$4D,$10,$4A,$10              ;
                db $4D,$10,$4E,$10,$50,$10,$51,$10              ;
                db $6B,$18,$70,$18,$2C,$18,$2D,$18              ;
                db $6C,$18,$71,$18,$6D,$18,$72,$18              ;
                db $6E,$18,$73,$18,$6F,$18,$74,$18              ;
                db $86,$08,$8A,$08,$87,$08,$8B,$08              ;
                db $88,$08,$8C,$08,$88,$08,$8C,$08              ;
                db $89,$08,$8D,$08,$69,$08,$69,$08              ;
                db $8E,$08,$91,$08,$8F,$08,$92,$08              ;
                db $98,$08,$93,$08,$98,$08,$93,$08              ;
                db $90,$08,$94,$08,$69,$08,$69,$08              ;
                db $4A,$1D,$5A,$1D,$4B,$1D,$5B,$1D              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$2F,$08,$24,$00,$3D,$08              ;
                db $A2,$18,$A2,$18,$A3,$18,$A3,$18              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $A2,$18,$A2,$18,$A3,$18,$A3,$18              ;
                db $99,$18,$24,$00,$99,$18,$24,$00              ;
                db $24,$00,$A2,$18,$3E,$18,$3F,$18              ;
                db $5B,$18,$5C,$18,$24,$00,$A3,$18              ;
                db $24,$10,$24,$10,$24,$10,$24,$10              ;
                db $04,$12,$10,$12,$05,$12,$11,$12              ;
                db $06,$12,$12,$12,$05,$12,$11,$12              ;
                db $06,$12,$12,$12,$07,$12,$13,$12              ;
                db $04,$12,$10,$12,$07,$12,$13,$12              ;
                db $00,$12,$10,$12,$01,$12,$11,$12              ;
                db $02,$12,$12,$12,$01,$12,$11,$12              ;
                db $02,$12,$12,$12,$03,$12,$13,$12              ;
                db $00,$12,$10,$12,$03,$12,$13,$12              ;
                db $14,$12,$16,$12,$15,$12,$17,$12              ;
                db $BE,$0C,$BE,$0C,$BF,$0C,$BF,$0C              ;
                db $75,$18,$9F,$18,$76,$18,$9F,$58              ;
                db $9F,$18,$9F,$18,$9F,$58,$9F,$58              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $27,$20,$27,$20,$27,$20,$27,$20              ;
                db $47,$2C,$47,$2C,$47,$2C,$47,$2C              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $08,$0A,$18,$0A,$09,$0A,$19,$0A              ;
                db $0A,$0A,$1A,$0A,$0B,$0A,$1B,$0A              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $45,$0C,$47,$0C,$45,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $47,$0C,$47,$0C,$47,$0C,$47,$0C              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $AB,$0C,$AC,$0C,$AD,$0C,$AE,$0C              ;
                db $E6,$09,$F6,$09,$E7,$09,$F7,$09              ;
                db $E8,$09,$F8,$09,$E9,$09,$F9,$09              ;
                db $E6,$09,$F6,$09,$E9,$09,$F9,$09              ;
                db $CA,$09,$DA,$09,$CB,$09,$DB,$09              ;
                db $EA,$09,$FA,$09,$EB,$09,$FB,$09              ;
                db $C6,$09,$D6,$09,$C7,$09,$D7,$09              ;
                db $21,$32,$24,$00,$21,$32,$24,$00              ;
                db $26,$0E,$28,$0E,$27,$0E,$29,$0E              ;
                db $2A,$0E,$2C,$0E,$2B,$0E,$2D,$0E              ;
                db $2A,$0C,$2A,$0C,$40,$0C,$40,$0C              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$47,$0C,$24,$00,$47,$0C              ;
                db $82,$10,$84,$10,$83,$10,$85,$10              ;
                db $16,$09,$18,$09,$17,$09,$19,$09              ;
                db $18,$09,$19,$09,$18,$09,$19,$09              ;
                db $24,$0C,$47,$0C,$24,$0C,$47,$0C              ;
                db $86,$08,$8A,$08,$87,$08,$8B,$08              ;
                db $8E,$08,$91,$08,$8F,$08,$92,$08              ;
                db $24,$00,$2F,$00,$24,$00,$3D,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$24,$00,$24,$00              ;
                db $EC,$18,$24,$00,$ED,$18,$24,$00              ;
                db $C8,$10,$A4,$10,$C9,$10,$A4,$10              ;
                db $E0,$38,$E2,$38,$E1,$38,$E3,$38              ;
                db $EE,$18,$24,$00,$EF,$18,$24,$00              ;
                db $A4,$10,$A4,$10,$A4,$10,$A4,$10              ;
                db $96,$38,$96,$38,$96,$38,$96,$38              ;
                db $B0,$10,$B1,$10,$B2,$10,$B3,$10              ;
                db $9B,$0C,$9D,$0C,$9C,$0C,$9E,$0C              ;
                db $40,$0E,$50,$0E,$41,$0E,$51,$0E              ;
                db $42,$0E,$52,$0E,$43,$0E,$53,$0E              ;
                db $44,$0E,$54,$0E,$45,$0E,$55,$0E              ;
                db $46,$0E,$56,$0E,$47,$0E,$57,$0E              ;
                db $48,$0E,$58,$0E,$49,$0E,$59,$0E              ;
                db $4A,$0E,$5A,$0E,$4B,$0E,$5B,$0E              ;
                db $4B,$4E,$5B,$4E,$4A,$4E,$5A,$4E              ;
                db $49,$4E,$59,$4E,$48,$4E,$58,$4E              ;
                db $47,$4E,$57,$4E,$46,$4E,$56,$4E              ;
                db $45,$4E,$55,$4E,$44,$4E,$54,$4E              ;
                db $43,$4E,$53,$4E,$42,$4E,$52,$4E              ;
                db $41,$4E,$51,$4E,$40,$4E,$50,$4E              ;
                db $63,$0E,$73,$0E,$5C,$0E,$66,$0E              ;
                db $5D,$0E,$67,$0E,$62,$0E,$72,$0E              ;
                db $72,$0E,$73,$0E,$5E,$0E,$66,$0E              ;
                db $5F,$0E,$67,$0E,$73,$0E,$72,$0E              ;
                db $24,$00,$24,$00,$60,$0E,$70,$0E              ;
                db $61,$0E,$71,$0E,$62,$0E,$72,$0E              ;
                db $63,$0E,$73,$0E,$62,$0E,$72,$0E              ;
                db $63,$0E,$73,$0E,$64,$0E,$74,$0E              ;
                db $65,$0E,$75,$0E,$24,$00,$24,$00              ;
                db $24,$00,$24,$00,$4C,$0E,$70,$0E              ;
                db $4D,$0E,$71,$0E,$73,$0E,$72,$0E              ;
                db $72,$0E,$73,$0E,$73,$0E,$72,$0E              ;
                db $72,$0E,$73,$0E,$4E,$0E,$74,$0E              ;
                db $4F,$0E,$75,$0E,$24,$00,$24,$00              ;
                db $61,$0E,$66,$0E,$62,$0E,$72,$0E              ;
                db $63,$0E,$73,$0E,$64,$0E,$67,$0E              ;
                db $72,$0E,$73,$0E,$67,$4E,$66,$8E              ;
                db $66,$4E,$67,$8E,$73,$0E,$72,$0E              ;
                db $40,$0E,$50,$0E,$44,$0E,$54,$0E              ;
                db $44,$4E,$54,$4E,$40,$4E,$50,$4E              ;
                db $40,$0E,$50,$0E,$42,$0E,$52,$0E              ;
                db $43,$0E,$53,$0E,$44,$0E,$54,$0E              ;
                db $44,$4E,$54,$4E,$43,$4E,$53,$4E              ;
                db $42,$4E,$52,$4E,$40,$4E,$50,$4E              ;
                db $24,$00,$24,$00,$CC,$0C,$CE,$0C              ;
                db $CD,$0C,$CF,$0C,$24,$00,$24,$00              ;
                db $CC,$0C,$CE,$0C,$CD,$0C,$CF,$0C              ;
                db $53,$04,$55,$04,$54,$04,$56,$04              ;
                db $53,$04,$55,$04,$54,$04,$56,$04              ;
                db $A5,$04,$A7,$04,$A6,$04,$A8,$04              ;
                db $A5,$04,$A7,$04,$A6,$04,$A8,$04              ;
                db $EA,$09,$FA,$09,$D2,$09,$E2,$09              ;
                db $EA,$09,$FA,$09,$F2,$09,$FB,$09              ;
                db $F3,$09,$DA,$09,$CB,$09,$DB,$09              ;
                db $CA,$09,$DA,$09,$C3,$09,$E2,$09              ;
                db $CA,$09,$DA,$09,$F0,$09,$DB,$09              ;
                db $D2,$09,$E1,$09,$EB,$09,$FB,$09              ;
                db $F1,$09,$FA,$09,$EB,$09,$FB,$09              ;
                db $C0,$09,$E1,$09,$CB,$09,$DB,$09              ;
                db $C8,$09,$D4,$09,$C5,$09,$D5,$09              ;
                db $E4,$09,$F4,$09,$E5,$09,$F5,$09              ;
                db $C8,$09,$D4,$09,$C8,$09,$D4,$09              ;
                db $E4,$09,$F4,$09,$F4,$09,$E4,$09              ;
                db $CA,$09,$DA,$09,$C3,$09,$D3,$09              ;
                db $EA,$09,$FA,$09,$D2,$09,$D2,$09              ;
                db $C0,$09,$D0,$09,$CB,$09,$DB,$09              ;
                db $D2,$09,$D2,$09,$EB,$09,$FB,$09              ;
                db $08,$2A,$18,$2A,$09,$2A,$19,$2A              ;
                db $57,$0C,$59,$0C,$58,$0C,$5A,$0C              ;
                db $7B,$04,$7D,$04,$7C,$04,$7E,$04              ;
                db $FF,$05,$48,$00,$1F,$1D,$08,$11              ;
                db $08,$0A,$08,$17,$08,$14,$08,$24              ;
                db $00,$22,$08,$18,$08,$1E,$08,$24              ;
                db $00,$16,$08,$0A,$08,$1B,$08,$12              ;
                db $08,$18,$08,$2B,$08,$FF,$05,$48              ;
                db $00,$1F,$1D,$08,$11,$08,$0A,$08              ;
                db $17,$08,$14,$08,$24,$00,$22,$08              ;
                db $18,$08,$1E,$08,$24,$00,$15,$08              ;
                db $1E,$08,$12,$08,$10,$08,$12,$08              ;
                db $2B,$08,$FF,$05,$C5,$00,$2B,$0B              ;
                db $08,$1E,$08,$1D,$08,$24,$00,$18              ;
                db $08,$1E,$08,$1B,$08,$24,$00,$19              ;
                db $08,$1B,$08,$12,$08,$17,$08,$0C              ;
                db $08,$0E,$08,$1C,$08,$1C,$08,$24              ;
                db $00,$12,$08,$1C,$08,$24,$00,$12              ;
                db $08,$17,$08,$06,$05,$00,$1D,$0A              ;
                db $08,$17,$08,$18,$08,$1D,$08,$11              ;
                db $08,$0E,$08,$1B,$08,$24,$00,$0C              ;
                db $08,$0A,$08,$1C,$08,$1D,$08,$15              ;
                db $08,$0E,$08,$2B,$08,$FF,$05,$A7              ;
                db $00,$25,$22,$08,$18,$08,$1E,$08              ;
                db $1B,$08,$24,$00,$1A,$08,$1E,$08              ;
                db $0E,$08,$1C,$08,$1D,$08,$24,$00              ;
                db $12,$08,$1C,$08,$24,$00,$18,$08              ;
                db $1F,$08,$0E,$08,$1B,$08,$AF,$08              ;
                db $FF,$05,$E3,$00,$35,$20,$08,$0E              ;
                db $08,$24,$00,$19,$08,$1B,$08,$0E              ;
                db $08,$1C,$08,$0E,$08,$17,$08,$1D              ;
                db $08,$24,$00,$22,$08,$18,$08,$1E              ;
                db $08,$24,$00,$0A,$08,$24,$00,$17              ;
                db $08,$0E,$08,$20,$08,$24,$00,$1A              ;
                db $08,$1E,$08,$0E,$08,$1C,$08,$1D              ;
                db $08,$AF,$08,$FF,$06,$4A,$00,$19              ;
                db $19,$08,$1E,$08,$1C,$08,$11,$08              ;
                db $24,$00,$0B,$08,$1E,$08,$1D,$08              ;
                db $1D,$08,$18,$08,$17,$08,$24,$00              ;
                db $22,$08,$FF,$06,$86,$00,$27,$1D              ;
                db $08,$18,$08,$24,$00,$1C,$08,$1D              ;
                db $08,$0A,$08,$1B,$08,$1D,$08,$24              ;
                db $00,$0A,$08,$24,$00,$1E,$08,$1B              ;
                db $08,$0A,$08,$28,$08,$20,$08,$18              ;
                db $08,$1B,$08,$15,$08,$0D,$08,$FF              ;

CODE_039B08:    ASL A                   ; $03:9B08: 0A          ;\Execute Pointer Short routine
CODE_039B09:    TAY                     ; $03:9B09: A8          ; |
CODE_039B0A:    PLA                     ; $03:9B0A: 68          ; |(ExecutePtrShort)
CODE_039B0B:    STA $04                 ; $03:9B0B: 85 04       ; |
CODE_039B0D:    PLA                     ; $03:9B0D: 68          ; |
CODE_039B0E:    STA $05                 ; $03:9B0E: 85 05       ; |
CODE_039B10:    INY                     ; $03:9B10: C8          ; |
CODE_039B11:    LDA ($04),y             ; $03:9B11: B1 04       ; |
CODE_039B13:    STA $06                 ; $03:9B13: 85 06       ; |
CODE_039B15:    INY                     ; $03:9B15: C8          ; |
CODE_039B16:    LDA ($04),y             ; $03:9B16: B1 04       ; |
CODE_039B18:    STA $07                 ; $03:9B18: 85 07       ; |
CODE_039B1A:    JMP ($0006)             ; $03:9B1A: 6C 06 00    ;/

CODE_039B1D:    STZ $00                 ; $03:9B1D: 64 00       ;Bunch of DMA routines
CODE_039B1F:    REP #$20                ; $03:9B1F: C2 20       ;Direct page = $4300. DMA mode: 1 reg write once
CODE_039B21:    STZ $2102               ; $03:9B21: 9C 02 21    ;OAM address low byte: 00
CODE_039B24:    LDA #$0004              ; $03:9B24: A9 04 00    ;\Dest: data for OAM write $2104
CODE_039B27:    STA $01                 ; $03:9B27: 85 01       ; |Source: $00:0800
CODE_039B29:    LDA #$0008              ; $03:9B29: A9 08 00    ; |
CODE_039B2C:    STA $03                 ; $03:9B2C: 85 03       ;/
CODE_039B2E:    LDA #$0220              ; $03:9B2E: A9 20 02    ;\$220 bytes
CODE_039B31:    STA $05                 ; $03:9B31: 85 05       ;/
CODE_039B33:    LDX #$01                ; $03:9B33: A2 01       ;\
CODE_039B35:    STX $420B               ; $03:9B35: 8E 0B 42    ; |Enable DMA
CODE_039B38:    SEP #$20                ; $03:9B38: E2 20       ;/
CODE_039B3A:    LDA #$80                ; $03:9B3A: A9 80       ;\
CODE_039B3C:    STA $2103               ; $03:9B3C: 8D 03 21    ; |Regular sprite priority.
CODE_039B3F:    STZ $2102               ; $03:9B3F: 9C 02 21    ;/ OAM address: $0000
CODE_039B42:    LDA $0B76               ; $03:9B42: AD 76 0B    ;
CODE_039B45:    BNE CODE_039B54         ; $03:9B45: D0 0D       ;
CODE_039B47:    JSR CODE_039B95         ; $03:9B47: 20 95 9B    ;
CODE_039B4A:    LDA $028C               ; $03:9B4A: AD 8C 02    ;\Flag to disable animated graphics
CODE_039B4D:    BNE CODE_039B91         ; $03:9B4D: D0 42       ;/
CODE_039B4F:    LDA $028D               ; $03:9B4F: AD 8D 02    ;\Flag to upload animated graphics
CODE_039B52:    BEQ CODE_039B91         ; $03:9B52: F0 3D       ;/

CODE_039B54:    REP #$20                ; $03:9B54: C2 20       ;
CODE_039B56:    LDA $028A               ; $03:9B56: AD 8A 02    ;\
CODE_039B59:    STA $2116               ; $03:9B59: 8D 16 21    ;/VRAM address
CODE_039B5C:    LDA #$1801              ; $03:9B5C: A9 01 18    ;\2 regs write once
CODE_039B5F:    STA $00                 ; $03:9B5F: 85 00       ;/to 2118
CODE_039B61:    LDA $0285               ; $03:9B61: AD 85 02    ;\
CODE_039B64:    STA $02                 ; $03:9B64: 85 02       ; |
CODE_039B66:    LDY $0287               ; $03:9B66: AC 87 02    ; | DMA source: [$7E0285]
CODE_039B69:    STY $04                 ; $03:9B69: 84 04       ;/
CODE_039B6B:    LDA $0288               ; $03:9B6B: AD 88 02    ;\DMA size: $0288
CODE_039B6E:    STA $05                 ; $03:9B6E: 85 05       ;/
CODE_039B70:    STX $420B               ; $03:9B70: 8E 0B 42    ;enable DMA
CODE_039B73:    SEP #$20                ; $03:9B73: E2 20       ;
CODE_039B75:    LDA $0B76               ; $03:9B75: AD 76 0B    ;
CODE_039B78:    BEQ CODE_039B91         ; $03:9B78: F0 17       ;
CODE_039B7A:    DEC $0B76               ; $03:9B7A: CE 76 0B    ;
CODE_039B7D:    BEQ CODE_039B91         ; $03:9B7D: F0 12       ;
CODE_039B7F:    LDA $0286               ; $03:9B7F: AD 86 02    ;
CODE_039B82:    CLC                     ; $03:9B82: 18          ;
CODE_039B83:    ADC #$08                ; $03:9B83: 69 08       ;
CODE_039B85:    STA $0286               ; $03:9B85: 8D 86 02    ;
CODE_039B88:    LDA $028B               ; $03:9B88: AD 8B 02    ;
CODE_039B8B:    CLC                     ; $03:9B8B: 18          ;
CODE_039B8C:    ADC #$04                ; $03:9B8C: 69 04       ;
CODE_039B8E:    STA $028B               ; $03:9B8E: 8D 8B 02    ;

CODE_039B91:    STZ $028C               ; $03:9B91: 9C 8C 02    ;Clear flag so graphics animate again
CODE_039B94:    RTS                     ; $03:9B94: 60          ;

CODE_039B95:    LDA $028E               ; $03:9B95: AD 8E 02    ;
CODE_039B98:    BEQ CODE_039BBB         ; $03:9B98: F0 21       ;
CODE_039B9A:    REP #$20                ; $03:9B9A: C2 20       ;
CODE_039B9C:    LDA $0295               ; $03:9B9C: AD 95 02    ;
CODE_039B9F:    STA $2116               ; $03:9B9F: 8D 16 21    ;
CODE_039BA2:    LDA #$1801              ; $03:9BA2: A9 01 18    ;
CODE_039BA5:    STA $00                 ; $03:9BA5: 85 00       ;
CODE_039BA7:    LDA $028F               ; $03:9BA7: AD 8F 02    ;
CODE_039BAA:    STA $02                 ; $03:9BAA: 85 02       ;
CODE_039BAC:    LDY $0291               ; $03:9BAC: AC 91 02    ;
CODE_039BAF:    STY $04                 ; $03:9BAF: 84 04       ;
CODE_039BB1:    LDA $0293               ; $03:9BB1: AD 93 02    ;
CODE_039BB4:    STA $05                 ; $03:9BB4: 85 05       ;
CODE_039BB6:    STX $420B               ; $03:9BB6: 8E 0B 42    ;
CODE_039BB9:    SEP #$20                ; $03:9BB9: E2 20       ;
CODE_039BBB:    RTS                     ; $03:9BBB: 60          ;

;Stripe image uploader. $00-02 = 24-bit pointer to stripe image
CODE_039BBC:    REP #$10                ; $03:9BBC: C2 10       ;Stripe image uploader. Stripe image format:
CODE_039BBE:    LDA #$03                ; $03:9BBE: A9 03       ;\VVVVVVVV VVVVVVVV DRLLLLLL LLLLLLLL <data bytes>
CODE_039BC0:    STA $4314               ; $03:9BC0: 8D 14 43    ;/DMA source: bank 3
CODE_039BC3:    STZ $06                 ; $03:9BC3: 64 06       ;Clear something
CODE_039BC5:    LDY #$0000              ; $03:9BC5: A0 00 00    ;Go into a loop
CODE_039BC8:    LDA [$00],y             ; $03:9BC8: B7 00       ;\Load next byte
CODE_039BCA:    BPL CODE_039BCF         ; $03:9BCA: 10 03       ;/If positive, go process stripe image
CODE_039BCC:    SEP #$30                ; $03:9BCC: E2 30       ;\else, return.
CODE_039BCE:    RTS                     ; $03:9BCE: 60          ;/

CODE_039BCF:    STA $04                 ; $03:9BCF: 85 04       ;\
CODE_039BD1:    INY                     ; $03:9BD1: C8          ; |Store stripe image VRAM destination in 
CODE_039BD2:    LDA [$00],y             ; $03:9BD2: B7 00       ; |RAM $03-$04.
CODE_039BD4:    STA $03                 ; $03:9BD4: 85 03       ; |
CODE_039BD6:    INY                     ; $03:9BD6: C8          ;/
CODE_039BD7:    LDA [$00],y             ; $03:9BD7: B7 00       ;\
CODE_039BD9:    AND #$80                ; $03:9BD9: 29 80       ; |Get direction bit.
CODE_039BDB:    ASL A                   ; $03:9BDB: 0A          ; |0 = Horizontal, 1 = Vertical
CODE_039BDC:    ROL A                   ; $03:9BDC: 2A          ; |
CODE_039BDD:    STA $07                 ; $03:9BDD: 85 07       ;/
CODE_039BDF:    LDA [$00],y             ; $03:9BDF: B7 00       ;\
CODE_039BE1:    AND #$40                ; $03:9BE1: 29 40       ; |Get RLE bit. 1 = RLE, 0 = normal
CODE_039BE3:    STA $05                 ; $03:9BE3: 85 05       ; |
CODE_039BE5:    LSR A                   ; $03:9BE5: 4A          ; |
CODE_039BE6:    LSR A                   ; $03:9BE6: 4A          ; |
CODE_039BE7:    LSR A                   ; $03:9BE7: 4A          ; |DMA transfer becomes RLE if necessary
CODE_039BE8:    ORA #$01                ; $03:9BE8: 09 01       ; |
CODE_039BEA:    STA $4310               ; $03:9BEA: 8D 10 43    ;/
CODE_039BED:    LDA #$18                ; $03:9BED: A9 18       ;\DMA destination: $2118, $2119
CODE_039BEF:    STA $4311               ; $03:9BEF: 8D 11 43    ;/
CODE_039BF2:    REP #$20                ; $03:9BF2: C2 20       ;16-bit A
CODE_039BF4:    LDA $03                 ; $03:9BF4: A5 03       ;\Set DMA VRAM dest
CODE_039BF6:    STA $2116               ; $03:9BF6: 8D 16 21    ;/
CODE_039BF9:    LDA [$00],y             ; $03:9BF9: B7 00       ;\
CODE_039BFB:    XBA                     ; $03:9BFB: EB          ; |Get Length bytes
CODE_039BFC:    AND #$3FFF              ; $03:9BFC: 29 FF 3F    ; |
CODE_039BFF:    TAX                     ; $03:9BFF: AA          ; |
CODE_039C00:    INX                     ; $03:9C00: E8          ; |
CODE_039C01:    STX $4315               ; $03:9C01: 8E 15 43    ;/
CODE_039C04:    INY                     ; $03:9C04: C8          ;\
CODE_039C05:    INY                     ; $03:9C05: C8          ;/Get at next bytes
CODE_039C06:    TYA                     ; $03:9C06: 98          ;\
CODE_039C07:    CLC                     ; $03:9C07: 18          ; |Setup DMA source
CODE_039C08:    ADC $00                 ; $03:9C08: 65 00       ; |
CODE_039C0A:    STA $4312               ; $03:9C0A: 8D 12 43    ;/
CODE_039C0D:    LDA $05                 ; $03:9C0D: A5 05       ;\If not RLE, branch
CODE_039C0F:    BEQ CODE_039C45         ; $03:9C0F: F0 34       ;/
CODE_039C11:    INX                     ; $03:9C11: E8          ;\
CODE_039C12:    TXA                     ; $03:9C12: 8A          ; |Setup RLE DMA size
CODE_039C13:    LSR A                   ; $03:9C13: 4A          ; |
CODE_039C14:    TAX                     ; $03:9C14: AA          ; |
CODE_039C15:    STX $4315               ; $03:9C15: 8E 15 43    ;/
CODE_039C18:    SEP #$20                ; $03:9C18: E2 20       ;8-bit A
CODE_039C1A:    LDA $05                 ; $03:9C1A: A5 05       ;\
CODE_039C1C:    LSR A                   ; $03:9C1C: 4A          ; |Set RLE DMA flag
CODE_039C1D:    LSR A                   ; $03:9C1D: 4A          ; |
CODE_039C1E:    LSR A                   ; $03:9C1E: 4A          ; |
CODE_039C1F:    STA $4310               ; $03:9C1F: 8D 10 43    ;/
CODE_039C22:    LDA $07                 ; $03:9C22: A5 07       ;\
CODE_039C24:    STA $2115               ; $03:9C24: 8D 15 21    ;/Get RLE DMA direction. Either horz or vert
CODE_039C27:    LDA #$02                ; $03:9C27: A9 02       ;\Enable RLE DMA. This will DMA the low bytes of VRAM
CODE_039C29:    STA $420B               ; $03:9C29: 8D 0B 42    ;/data.
CODE_039C2C:    LDA #$19                ; $03:9C2C: A9 19       ;\RLE DMA dest: $2119
CODE_039C2E:    STA $4311               ; $03:9C2E: 8D 11 43    ;/
CODE_039C31:    REP #$21                ; $03:9C31: C2 21       ;\
CODE_039C33:    TYA                     ; $03:9C33: 98          ; |
CODE_039C34:    ADC $00                 ; $03:9C34: 65 00       ; |Setup RLE DMA source
CODE_039C36:    INC A                   ; $03:9C36: 1A          ; |
CODE_039C37:    STA $4312               ; $03:9C37: 8D 12 43    ;/
CODE_039C3A:    LDA $03                 ; $03:9C3A: A5 03       ;\Setup RLE VRAM dest
CODE_039C3C:    STA $2116               ; $03:9C3C: 8D 16 21    ;/
CODE_039C3F:    STX $4315               ; $03:9C3F: 8E 15 43    ;Setup RLE size
CODE_039C42:    LDX #$0002              ; $03:9C42: A2 02 00    ;\
CODE_039C45:    STX $03                 ; $03:9C45: 86 03       ; |
CODE_039C47:    TYA                     ; $03:9C47: 98          ; |
CODE_039C48:    CLC                     ; $03:9C48: 18          ; |Increase pointer to stripe image data
CODE_039C49:    ADC $03                 ; $03:9C49: 65 03       ; |
CODE_039C4B:    TAY                     ; $03:9C4B: A8          ; |
CODE_039C4C:    SEP #$20                ; $03:9C4C: E2 20       ;/
CODE_039C4E:    LDA $07                 ; $03:9C4E: A5 07       ;\
CODE_039C50:    ORA #$80                ; $03:9C50: 09 80       ; |Set VRAM DMA mode: Either horz/vert
CODE_039C52:    STA $2115               ; $03:9C52: 8D 15 21    ;/ normal address increment mode
CODE_039C55:    LDA #$02                ; $03:9C55: A9 02       ;\Enable DMA to upload stripe image to VRAM
CODE_039C57:    STA $420B               ; $03:9C57: 8D 0B 42    ;/
CODE_039C5A:    LDA [$00],y             ; $03:9C5A: B7 00       ;\If done, return
CODE_039C5C:    BMI CODE_039C61         ; $03:9C5C: 30 03       ;/
CODE_039C5E:    JMP CODE_039BCF         ; $03:9C5E: 4C CF 9B    ;Otherwise, process next chunk.

CODE_039C61:    SEP #$30                ; $03:9C61: E2 30       ;\Return from stripe image uploading.
CODE_039C63:    RTS                     ; $03:9C63: 60          ;/

DATA_039C64:    db $EF,$00,$06,$00,$62,$00,$06,$00              ;
                db $62,$00,$06,$00,$6D,$00,$02,$00              ;
                db $6D,$00,$02,$00,$7A,$00,$03,$00              ;

DATA_039C7C:    db $06,$0C,$12,$18,$1E,$24                      ;

CODE_039C82:    STA $00                 ; $03:9C82: 85 00       ;
CODE_039C84:    JSR CODE_039C8D         ; $03:9C84: 20 8D 9C    ;
CODE_039C87:    LDA $00                 ; $03:9C87: A5 00       ;
CODE_039C89:    LSR A                   ; $03:9C89: 4A          ;
CODE_039C8A:    LSR A                   ; $03:9C8A: 4A          ;
CODE_039C8B:    LSR A                   ; $03:9C8B: 4A          ;
CODE_039C8C:    LSR A                   ; $03:9C8C: 4A          ;
CODE_039C8D:    CLC                     ; $03:9C8D: 18          ;
CODE_039C8E:    ADC #$01                ; $03:9C8E: 69 01       ;
CODE_039C90:    AND #$0F                ; $03:9C90: 29 0F       ;
CODE_039C92:    CMP #$06                ; $03:9C92: C9 06       ;
CODE_039C94:    BCS CODE_039CF0         ; $03:9C94: B0 5A       ;
CODE_039C96:    PHA                     ; $03:9C96: 48          ;
CODE_039C97:    ASL A                   ; $03:9C97: 0A          ;
CODE_039C98:    ASL A                   ; $03:9C98: 0A          ;
CODE_039C99:    TAY                     ; $03:9C99: A8          ;
CODE_039C9A:    LDA #$58                ; $03:9C9A: A9 58       ;
CODE_039C9C:    LDX #$20                ; $03:9C9C: A2 20       ;
CODE_039C9E:    CPY #$00                ; $03:9C9E: C0 00       ;
CODE_039CA0:    BNE CODE_039CA6         ; $03:9CA0: D0 04       ;
CODE_039CA2:    LDA #$02                ; $03:9CA2: A9 02       ;
CODE_039CA4:    LDX #$28                ; $03:9CA4: A2 28       ;
CODE_039CA6:    STX $F9                 ; $03:9CA6: 86 F9       ;
CODE_039CA8:    LDX $1700               ; $03:9CA8: AE 00 17    ;
CODE_039CAB:    STA $1702,x             ; $03:9CAB: 9D 02 17    ;
CODE_039CAE:    LDA DATA_039C64,y       ; $03:9CAE: B9 64 9C    ;
CODE_039CB1:    STA $1703,x             ; $03:9CB1: 9D 03 17    ;
CODE_039CB4:    LDA DATA_039C64+1,y     ; $03:9CB4: B9 65 9C    ;
CODE_039CB7:    STA $1704,x             ; $03:9CB7: 9D 04 17    ;
CODE_039CBA:    LDA DATA_039C64+2,y     ; $03:9CBA: B9 66 9C    ;
CODE_039CBD:    STA $03                 ; $03:9CBD: 85 03       ;
CODE_039CBF:    ASL A                   ; $03:9CBF: 0A          ;
CODE_039CC0:    DEC A                   ; $03:9CC0: 3A          ;
CODE_039CC1:    STA $1705,x             ; $03:9CC1: 9D 05 17    ;
CODE_039CC4:    STX $02                 ; $03:9CC4: 86 02       ;
CODE_039CC6:    PLA                     ; $03:9CC6: 68          ;
CODE_039CC7:    TAX                     ; $03:9CC7: AA          ;
CODE_039CC8:    LDA DATA_039C7C,x       ; $03:9CC8: BD 7C 9C    ;
CODE_039CCB:    SEC                     ; $03:9CCB: 38          ;
CODE_039CCC:    SBC DATA_039C64+2,y     ; $03:9CCC: F9 66 9C    ;
CODE_039CCF:    TAY                     ; $03:9CCF: A8          ;
CODE_039CD0:    LDX $02                 ; $03:9CD0: A6 02       ;
CODE_039CD2:    LDA $07C8,y             ; $03:9CD2: B9 C8 07    ;
CODE_039CD5:    STA $1706,x             ; $03:9CD5: 9D 06 17    ;
CODE_039CD8:    LDA $F9                 ; $03:9CD8: A5 F9       ;
CODE_039CDA:    STA $1707,x             ; $03:9CDA: 9D 07 17    ;
CODE_039CDD:    INX                     ; $03:9CDD: E8          ;
CODE_039CDE:    INX                     ; $03:9CDE: E8          ;
CODE_039CDF:    INY                     ; $03:9CDF: C8          ;
CODE_039CE0:    DEC $03                 ; $03:9CE0: C6 03       ;
CODE_039CE2:    BNE CODE_039CD2         ; $03:9CE2: D0 EE       ;
CODE_039CE4:    LDA #$FF                ; $03:9CE4: A9 FF       ;
CODE_039CE6:    STA $1706,x             ; $03:9CE6: 9D 06 17    ;
CODE_039CE9:    INX                     ; $03:9CE9: E8          ;
CODE_039CEA:    INX                     ; $03:9CEA: E8          ;
CODE_039CEB:    INX                     ; $03:9CEB: E8          ;
CODE_039CEC:    INX                     ; $03:9CEC: E8          ;
CODE_039CED:    STX $1700               ; $03:9CED: 8E 00 17    ;
CODE_039CF0:    RTS                     ; $03:9CF0: 60          ;

CODE_039CF1:    PHB                     ; $03:9CF1: 8B          ;
CODE_039CF2:    PHK                     ; $03:9CF2: 4B          ;
CODE_039CF3:    PLB                     ; $03:9CF3: AB          ;
CODE_039CF4:    JSR CODE_039C82         ; $03:9CF4: 20 82 9C    ;
CODE_039CF7:    PLB                     ; $03:9CF7: AB          ;
CODE_039CF8:    RTL                     ; $03:9CF8: 6B          ;

CODE_039CF9:    LDA $0770               ; $03:9CF9: AD 70 07    ;
CODE_039CFC:    CMP #$00                ; $03:9CFC: C9 00       ;
CODE_039CFE:    BEQ CODE_039D21         ; $03:9CFE: F0 21       ;
CODE_039D00:    CMP #$02                ; $03:9D00: C9 02       ;
CODE_039D02:    BNE CODE_039D0B         ; $03:9D02: D0 07       ;
CODE_039D04:    LDA $0772               ; $03:9D04: AD 72 07    ;
CODE_039D07:    CMP #$05                ; $03:9D07: C9 05       ;
CODE_039D09:    BNE CODE_039D21         ; $03:9D09: D0 16       ;
CODE_039D0B:    LDX #$05                ; $03:9D0B: A2 05       ;
CODE_039D0D:    LDA $0145,x             ; $03:9D0D: BD 45 01    ;
CODE_039D10:    CLC                     ; $03:9D10: 18          ;
CODE_039D11:    ADC $07C8,y             ; $03:9D11: 79 C8 07    ;
CODE_039D14:    BMI CODE_039D2C         ; $03:9D14: 30 16       ;
CODE_039D16:    CMP #$0A                ; $03:9D16: C9 0A       ;
CODE_039D18:    BCS CODE_039D33         ; $03:9D18: B0 19       ;
CODE_039D1A:    STA $07C8,y             ; $03:9D1A: 99 C8 07    ;
CODE_039D1D:    DEY                     ; $03:9D1D: 88          ;
CODE_039D1E:    DEX                     ; $03:9D1E: CA          ;
CODE_039D1F:    BPL CODE_039D0D         ; $03:9D1F: 10 EC       ;
CODE_039D21:    LDA #$00                ; $03:9D21: A9 00       ;
CODE_039D23:    LDX #$06                ; $03:9D23: A2 06       ;
CODE_039D25:    STA $0144,x             ; $03:9D25: 9D 44 01    ;
CODE_039D28:    DEX                     ; $03:9D28: CA          ;
CODE_039D29:    BPL CODE_039D25         ; $03:9D29: 10 FA       ;
CODE_039D2B:    RTS                     ; $03:9D2B: 60          ;

CODE_039D2C:    DEC $0144,x             ; $03:9D2C: DE 44 01    ;
CODE_039D2F:    LDA #$09                ; $03:9D2F: A9 09       ;
CODE_039D31:    BNE CODE_039D1A         ; $03:9D31: D0 E7       ;
CODE_039D33:    CPX #$00                ; $03:9D33: E0 00       ;
CODE_039D35:    BNE CODE_039D43         ; $03:9D35: D0 0C       ;
CODE_039D37:    LDX #$05                ; $03:9D37: A2 05       ;
CODE_039D39:    LDA #$09                ; $03:9D39: A9 09       ;
CODE_039D3B:    STA $07CE,x             ; $03:9D3B: 9D CE 07    ;
CODE_039D3E:    DEX                     ; $03:9D3E: CA          ;
CODE_039D3F:    BNE CODE_039D3B         ; $03:9D3F: D0 FA       ;
CODE_039D41:    LDA #$13                ; $03:9D41: A9 13       ;
CODE_039D43:    SEC                     ; $03:9D43: 38          ;
CODE_039D44:    SBC #$0A                ; $03:9D44: E9 0A       ;
CODE_039D46:    INC $0144,x             ; $03:9D46: FE 44 01    ;
CODE_039D49:    BRA CODE_039D1A         ; $03:9D49: 80 CF       ;

DATA_039D4A:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF                          ;

DATA_039D70:    db $D0,$00,$18,$30,$48,$60,$78,$90              ;
                db $A8,$C0,$D8,$D8,$B0,$C0,$40,$44              ;
                db $48,$50,$54,$60,$68,$70,$78,$80              ;
                db $88,$00,$08,$10,$18,$18,$FF,$23              ;
                db $58                                          ;

CODE_039D91:    LDA #$80                ; $03:9D91: A9 80       ;\
CODE_039D93:    STA $1201               ; $03:9D93: 8D 01 12    ;/F-Blank
CODE_039D96:    LDA #$FF                ; $03:9D96: A9 FF       ;\
CODE_039D98:    STA $1102               ; $03:9D98: 8D 02 11    ; |Palette 8, color 1 = white
CODE_039D9B:    LDA #$7F                ; $03:9D9B: A9 7F       ; |
CODE_039D9D:    STA $1103               ; $03:9D9D: 8D 03 11    ;/
CODE_039DA0:    INC $1200               ; $03:9DA0: EE 00 12    ;
CODE_039DA3:    LDA #$FF                ; $03:9DA3: A9 FF       ;
CODE_039DA5:    STA $1702               ; $03:9DA5: 8D 02 17    ;
CODE_039DA8:    STA $1703               ; $03:9DA8: 8D 03 17    ;
CODE_039DAB:    LDA #$09                ; $03:9DAB: A9 09       ;
CODE_039DAD:    STA $120D               ; $03:9DAD: 8D 0D 12    ;
CODE_039DB0:    LDA #$10                ; $03:9DB0: A9 10       ;
CODE_039DB2:    STA $120B               ; $03:9DB2: 8D 0B 12    ;
CODE_039DB5:    LDA #$20                ; $03:9DB5: A9 20       ;
CODE_039DB7:    STA $120A               ; $03:9DB7: 8D 0A 12    ;
CODE_039DBA:    LDA #$20                ; $03:9DBA: A9 20       ;
CODE_039DBC:    STA $0EE0               ; $03:9DBC: 8D E0 0E    ;
CODE_039DBF:    LDA #$40                ; $03:9DBF: A9 40       ;
CODE_039DC1:    STA $0EE1               ; $03:9DC1: 8D E1 0E    ;
CODE_039DC4:    LDA #$80                ; $03:9DC4: A9 80       ;
CODE_039DC6:    STA $0EE2               ; $03:9DC6: 8D E2 0E    ;
CODE_039DC9:    LDY #$FE                ; $03:9DC9: A0 FE       ;
CODE_039DCB:    LDX #$05                ; $03:9DCB: A2 05       ;
CODE_039DCD:    LDA $07C8,x             ; $03:9DCD: BD C8 07    ;
CODE_039DD0:    CMP #$0A                ; $03:9DD0: C9 0A       ;
CODE_039DD2:    BCS CODE_039DE0         ; $03:9DD2: B0 0C       ;
CODE_039DD4:    DEX                     ; $03:9DD4: CA          ;
CODE_039DD5:    BPL CODE_039DCD         ; $03:9DD5: 10 F6       ;
CODE_039DD7:    LDA $07FF               ; $03:9DD7: AD FF 07    ;
CODE_039DDA:    CMP #$A5                ; $03:9DDA: C9 A5       ;
CODE_039DDC:    BNE CODE_039DE0         ; $03:9DDC: D0 02       ;
CODE_039DDE:    LDY #$C7                ; $03:9DDE: A0 C7       ;
CODE_039DE0:    JSR CODE_039F3E         ; $03:9DE0: 20 3E 9F    ;
CODE_039DE3:    LDA #$A5                ; $03:9DE3: A9 A5       ;
CODE_039DE5:    STA $07FF               ; $03:9DE5: 8D FF 07    ;
CODE_039DE8:    STA $07B7               ; $03:9DE8: 8D B7 07    ;
CODE_039DEB:    STZ $0EF6               ; $03:9DEB: 9C F6 0E    ;
CODE_039DEE:    STZ $0EF9               ; $03:9DEE: 9C F9 0E    ;
CODE_039DF1:    STZ $0EF7               ; $03:9DF1: 9C F7 0E    ;
CODE_039DF4:    STZ $0EF8               ; $03:9DF4: 9C F8 0E    ;
CODE_039DF7:    LDY #$6F                ; $03:9DF7: A0 6F       ;
CODE_039DF9:    JSR CODE_039F3E         ; $03:9DF9: 20 3E 9F    ;
CODE_039DFC:    LDA #$18                ; $03:9DFC: A9 18       ;
CODE_039DFE:    STA $07B2               ; $03:9DFE: 8D B2 07    ;
CODE_039E01:    JSL CODE_04C00B         ; $03:9E01: 22 0B C0 04 ;
CODE_039E05:    JSR CODE_039E0C         ; $03:9E05: 20 0C 9E    ;
CODE_039E08:    STZ $0E7F               ; $03:9E08: 9C 7F 0E    ;
CODE_039E0B:    RTS                     ; $03:9E0B: 60          ;

CODE_039E0C:    LDY $075F               ; $03:9E0C: AC 5F 07    ;\ Load current world
CODE_039E0F:    CPY #$08                ; $03:9E0F: C0 08       ; |If it is smaller than world 08
CODE_039E11:    BCC CODE_039E17         ; $03:9E11: 90 04       ;/Skip the "set level number & map type" routine
CODE_039E13:    JSL CODE_04C00B         ; $03:9E13: 22 0B C0 04 ;set level number & map type
CODE_039E17:    LDY #$4B                ; $03:9E17: A0 4B       ;
CODE_039E19:    JSR CODE_039F3E         ; $03:9E19: 20 3E 9F    ;
CODE_039E1C:    LDX #$29                ; $03:9E1C: A2 29       ;
CODE_039E1E:    LDA #$00                ; $03:9E1E: A9 00       ;
CODE_039E20:    STA $0788,x             ; $03:9E20: 9D 88 07    ;
CODE_039E23:    DEX                     ; $03:9E23: CA          ;
CODE_039E24:    BPL CODE_039E20         ; $03:9E24: 10 FA       ;
CODE_039E26:    LDA $075B               ; $03:9E26: AD 5B 07    ;
CODE_039E29:    LDY $0752               ; $03:9E29: AC 52 07    ;
CODE_039E2C:    BEQ CODE_039E31         ; $03:9E2C: F0 03       ;
CODE_039E2E:    LDA $0751               ; $03:9E2E: AD 51 07    ;
CODE_039E31:    STA $071A               ; $03:9E31: 8D 1A 07    ;
CODE_039E34:    STA $0725               ; $03:9E34: 8D 25 07    ;
CODE_039E37:    STA $0728               ; $03:9E37: 8D 28 07    ;
CODE_039E3A:    PHY                     ; $03:9E3A: 5A          ;
CODE_039E3B:    REP #$20                ; $03:9E3B: C2 20       ;
CODE_039E3D:    XBA                     ; $03:9E3D: EB          ;
CODE_039E3E:    AND #$FF00              ; $03:9E3E: 29 00 FF    ;
CODE_039E41:    STA $42                 ; $03:9E41: 85 42       ;
CODE_039E43:    LSR A                   ; $03:9E43: 4A          ;
CODE_039E44:    STA $0EFD               ; $03:9E44: 8D FD 0E    ;
CODE_039E47:    LSR A                   ; $03:9E47: 4A          ;
CODE_039E48:    STA $0EEE               ; $03:9E48: 8D EE 0E    ;
CODE_039E4B:    SEP #$20                ; $03:9E4B: E2 20       ;
CODE_039E4D:    PLY                     ; $03:9E4D: 7A          ;
CODE_039E4E:    JSR CODE_03AF0F         ; $03:9E4E: 20 0F AF    ;
CODE_039E51:    LDY #$00                ; $03:9E51: A0 00       ;
CODE_039E53:    AND #$01                ; $03:9E53: 29 01       ;
CODE_039E55:    BEQ CODE_039E59         ; $03:9E55: F0 02       ;
CODE_039E57:    LDY #$04                ; $03:9E57: A0 04       ;
CODE_039E59:    STY $0720               ; $03:9E59: 8C 20 07    ;
CODE_039E5C:    STZ $0721               ; $03:9E5C: 9C 21 07    ;
CODE_039E5F:    ASL A                   ; $03:9E5F: 0A          ;
CODE_039E60:    ASL A                   ; $03:9E60: 0A          ;
CODE_039E61:    ASL A                   ; $03:9E61: 0A          ;
CODE_039E62:    ASL A                   ; $03:9E62: 0A          ;
CODE_039E63:    STA $06A0               ; $03:9E63: 8D A0 06    ;
CODE_039E66:    LDA #$FF                ; $03:9E66: A9 FF       ;
CODE_039E68:    STA $1300               ; $03:9E68: 8D 00 13    ;
CODE_039E6B:    STA $1301               ; $03:9E6B: 8D 01 13    ;
CODE_039E6E:    STA $1302               ; $03:9E6E: 8D 02 13    ;
CODE_039E71:    STA $1303               ; $03:9E71: 8D 03 13    ;
CODE_039E74:    STA $1304               ; $03:9E74: 8D 04 13    ;
CODE_039E77:    LDA #$0B                ; $03:9E77: A9 0B       ;
CODE_039E79:    STA $071E               ; $03:9E79: 8D 1E 07    ;
CODE_039E7C:    JSL CODE_04C041         ; $03:9E7C: 22 41 C0 04 ;
CODE_039E80:    LDA $076A               ; $03:9E80: AD 6A 07    ;"More difficult quest" flag
CODE_039E83:    BNE CODE_039E95         ; $03:9E83: D0 10       ;
CODE_039E85:    LDA $075F               ; $03:9E85: AD 5F 07    ;
CODE_039E88:    CMP #$04                ; $03:9E88: C9 04       ;
CODE_039E8A:    BCC CODE_039E98         ; $03:9E8A: 90 0C       ;
CODE_039E8C:    BNE CODE_039E95         ; $03:9E8C: D0 07       ;
CODE_039E8E:    LDA $075C               ; $03:9E8E: AD 5C 07    ;
CODE_039E91:    CMP #$02                ; $03:9E91: C9 02       ;
CODE_039E93:    BCC CODE_039E98         ; $03:9E93: 90 03       ;
CODE_039E95:    INC $06CC               ; $03:9E95: EE CC 06    ;
CODE_039E98:    LDA $075B               ; $03:9E98: AD 5B 07    ;
CODE_039E9B:    BEQ CODE_039EA2         ; $03:9E9B: F0 05       ;
CODE_039E9D:    LDA #$02                ; $03:9E9D: A9 02       ;
CODE_039E9F:    STA $0710               ; $03:9E9F: 8D 10 07    ;
CODE_039EA2:    LDA $DB                 ; $03:9EA2: A5 DB       ;\Load background image
CODE_039EA4:    CMP #$21                ; $03:9EA4: C9 21       ; |If it is the 'real' Bowser's Castle background
CODE_039EA6:    BEQ CODE_039EB1         ; $03:9EA6: F0 09       ;/branch
CODE_039EA8:    CMP #$02                ; $03:9EA8: C9 02       ;\If it is the underwater Bowser's Castle background
CODE_039EAA:    BEQ CODE_039EB1         ; $03:9EAA: F0 05       ;/Branch
CODE_039EAC:    LDA #$80                ; $03:9EAC: A9 80       ;\Fade out the music
CODE_039EAE:    STA $1602               ; $03:9EAE: 8D 02 16    ;/
CODE_039EB1:    LDA #$01                ; $03:9EB1: A9 01       ;
CODE_039EB3:    STA $0E7F               ; $03:9EB3: 8D 7F 0E    ;
CODE_039EB6:    INC $0772               ; $03:9EB6: EE 72 07    ;
CODE_039EB9:    RTS                     ; $03:9EB9: 60          ;

CODE_039EBA:    LDA $2142               ; $03:9EBA: AD 42 21    ;
CODE_039EBD:    CMP #$14                ; $03:9EBD: C9 14       ;
CODE_039EBF:    BEQ CODE_039ECA         ; $03:9EBF: F0 09       ;
CODE_039EC1:    JSL CODE_0086B5         ; $03:9EC1: 22 B5 86 00 ;
CODE_039EC5:    LDA #$14                ; $03:9EC5: A9 14       ;
CODE_039EC7:    STA $2142               ; $03:9EC7: 8D 42 21    ;
CODE_039ECA:    LDA #$01                ; $03:9ECA: A9 01       ;
CODE_039ECC:    STA $0757               ; $03:9ECC: 8D 57 07    ;
CODE_039ECF:    STA $0754               ; $03:9ECF: 8D 54 07    ;
CODE_039ED2:    STA $077F               ; $03:9ED2: 8D 7F 07    ;
CODE_039ED5:    STZ $0E73               ; $03:9ED5: 9C 73 0E    ;
CODE_039ED8:    LDA #$02                ; $03:9ED8: A9 02       ;
CODE_039EDA:    STA $0E7F               ; $03:9EDA: 8D 7F 0E    ;
CODE_039EDD:    LDA #$00                ; $03:9EDD: A9 00       ;
CODE_039EDF:    STA $1201               ; $03:9EDF: 8D 01 12    ;
CODE_039EE2:    STA $0774               ; $03:9EE2: 8D 74 07    ;
CODE_039EE5:    TAY                     ; $03:9EE5: A8          ;
CODE_039EE6:    STA $0300,y             ; $03:9EE6: 99 00 03    ;
CODE_039EE9:    INY                     ; $03:9EE9: C8          ;
CODE_039EEA:    BNE CODE_039EE6         ; $03:9EEA: D0 FA       ;
CODE_039EEC:    STA $0759               ; $03:9EEC: 8D 59 07    ;
CODE_039EEF:    STA $0769               ; $03:9EEF: 8D 69 07    ;
CODE_039EF2:    STA $0728               ; $03:9EF2: 8D 28 07    ;
CODE_039EF5:    LDA #$FF                ; $03:9EF5: A9 FF       ;
CODE_039EF7:    STA $03A0               ; $03:9EF7: 8D A0 03    ;
CODE_039EFA:    STA $1702               ; $03:9EFA: 8D 02 17    ;
CODE_039EFD:    LDA $071A               ; $03:9EFD: AD 1A 07    ;
CODE_039F00:    LSR $0778               ; $03:9F00: 4E 78 07    ;
CODE_039F03:    AND #$01                ; $03:9F03: 29 01       ;
CODE_039F05:    ROR A                   ; $03:9F05: 6A          ;
CODE_039F06:    ROL $0778               ; $03:9F06: 2E 78 07    ;
CODE_039F09:    LDA #$38                ; $03:9F09: A9 38       ;
CODE_039F0B:    STA $0B43               ; $03:9F0B: 8D 43 0B    ;
CODE_039F0E:    LDA #$48                ; $03:9F0E: A9 48       ;
CODE_039F10:    STA $0B42               ; $03:9F10: 8D 42 0B    ;
CODE_039F13:    LDA #$58                ; $03:9F13: A9 58       ;
CODE_039F15:    STA $0B41               ; $03:9F15: 8D 41 0B    ;
CODE_039F18:    LDX #$1C                ; $03:9F18: A2 1C       ;
CODE_039F1A:    LDA DATA_039D70,x       ; $03:9F1A: BD 70 9D    ;
CODE_039F1D:    STA $0B45,x             ; $03:9F1D: 9D 45 0B    ;
CODE_039F20:    DEX                     ; $03:9F20: CA          ;
CODE_039F21:    BPL CODE_039F1A         ; $03:9F21: 10 F7       ;
CODE_039F23:    JSR CODE_03A294         ; $03:9F23: 20 94 A2    ;
CODE_039F26:    JSR CODE_03A28F         ; $03:9F26: 20 8F A2    ;
CODE_039F29:    INC $0722               ; $03:9F29: EE 22 07    ;
CODE_039F2C:    INC $0772               ; $03:9F2C: EE 72 07    ;
CODE_039F2F:    RTS                     ; $03:9F2F: 60          ;

CODE_039F30:    LDA #$00                ; $03:9F30: A9 00       ;
CODE_039F32:    STA $06                 ; $03:9F32: 85 06       ;
CODE_039F34:    STX $07                 ; $03:9F34: 86 07       ;
CODE_039F36:    STA ($06),y             ; $03:9F36: 91 06       ;
CODE_039F38:    DEY                     ; $03:9F38: 88          ;
CODE_039F39:    CPY #$FF                ; $03:9F39: C0 FF       ;
CODE_039F3B:    BNE CODE_039F36         ; $03:9F3B: D0 F9       ;
CODE_039F3D:    RTS                     ; $03:9F3D: 60          ;

CODE_039F3E:    LDA $00DB               ; $03:9F3E: AD DB 00    ;
CODE_039F41:    CMP #$21                ; $03:9F41: C9 21       ;
CODE_039F43:    BNE CODE_039F48         ; $03:9F43: D0 03       ;
CODE_039F45:    INC $0E7F               ; $03:9F45: EE 7F 0E    ;
CODE_039F48:    LDX #$07                ; $03:9F48: A2 07       ;
CODE_039F4A:    LDA #$00                ; $03:9F4A: A9 00       ;
CODE_039F4C:    STA $06                 ; $03:9F4C: 85 06       ;
CODE_039F4E:    STX $07                 ; $03:9F4E: 86 07       ;
CODE_039F50:    CPX #$01                ; $03:9F50: E0 01       ;
CODE_039F52:    BNE CODE_039F58         ; $03:9F52: D0 04       ;
CODE_039F54:    CPY #$50                ; $03:9F54: C0 50       ;
CODE_039F56:    BCS CODE_039F5A         ; $03:9F56: B0 02       ;
CODE_039F58:    STA ($06),y             ; $03:9F58: 91 06       ;
CODE_039F5A:    DEY                     ; $03:9F5A: 88          ;
CODE_039F5B:    CPY #$FF                ; $03:9F5B: C0 FF       ;
CODE_039F5D:    BNE CODE_039F50         ; $03:9F5D: D0 F1       ;
CODE_039F5F:    DEX                     ; $03:9F5F: CA          ;
CODE_039F60:    BPL CODE_039F4E         ; $03:9F60: 10 EC       ;
CODE_039F62:    LDA #$FF                ; $03:9F62: A9 FF       ;
CODE_039F64:    STA $1702               ; $03:9F64: 8D 02 17    ;
CODE_039F67:    INC A                   ; $03:9F67: 1A          ;
CODE_039F68:    STZ $0B25               ; $03:9F68: 9C 25 0B    ;
CODE_039F6B:    STZ $0B26               ; $03:9F6B: 9C 26 0B    ;
CODE_039F6E:    STZ $0B27               ; $03:9F6E: 9C 27 0B    ;
CODE_039F71:    STZ $0B28               ; $03:9F71: 9C 28 0B    ;
CODE_039F74:    STZ $0B29               ; $03:9F74: 9C 29 0B    ;
CODE_039F77:    LDA $07FC               ; $03:9F77: AD FC 07    ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_039F7A:    STA $076A               ; $03:9F7A: 8D 6A 07    ;"More difficult quest" flag
CODE_039F7D:    LDX #$40                ; $03:9F7D: A2 40       ;
CODE_039F7F:    STZ $0F00,x             ; $03:9F7F: 9E 00 0F    ;
CODE_039F82:    INX                     ; $03:9F82: E8          ;
CODE_039F83:    BNE CODE_039F7F         ; $03:9F83: D0 FA       ;
CODE_039F85:    LDA $0F0B               ; $03:9F85: AD 0B 0F    ;
CODE_039F88:    BEQ CODE_039FA1         ; $03:9F88: F0 17       ;
CODE_039F8A:    DEC A                   ; $03:9F8A: 3A          ;
CODE_039F8B:    STA $0F0B               ; $03:9F8B: 8D 0B 0F    ;
CODE_039F8E:    BNE CODE_039FA1         ; $03:9F8E: D0 11       ;
CODE_039F90:    LDA $7FFB05             ; $03:9F90: AF 05 FB 7F ;
CODE_039F94:    STA $07FB               ; $03:9F94: 8D FB 07    ;
CODE_039F97:    STA $076A               ; $03:9F97: 8D 6A 07    ;"More difficult quest" flag
CODE_039F9A:    STA $07FC               ; $03:9F9A: 8D FC 07    ;"More difficult quest" flag. Sets 076A too and shows star next to world.
CODE_039F9D:    JSL CODE_05C994         ; $03:9F9D: 22 94 C9 05 ;
CODE_039FA1:    RTS                     ; $03:9FA1: 60          ;

DATA_039FA2:    db $28,$18                                      ;

DATA_039FA4:    db $38,$28,$08,$00                              ;

DATA_039FA8:    db $00,$20,$B0,$50,$00,$00,$B0,$B0              ;
                db $F0                                          ;

DATA_039FB1:    db $2E,$0E,$2E,$2E,$2E,$2E,$2E,$2E              ;

DATA_039FB9:    db $0E,$04,$03,$02                              ;

;Looks like a level loading routine? Not sure.

CODE_039FBD:    LDA $071A               ; $03:9FBD: AD 1A 07    ;
CODE_039FC0:    STA $78                 ; $03:9FC0: 85 78       ;
CODE_039FC2:    LDA #$28                ; $03:9FC2: A9 28       ;
CODE_039FC4:    STA $070A               ; $03:9FC4: 8D 0A 07    ;
CODE_039FC7:    LDA #$01                ; $03:9FC7: A9 01       ;
CODE_039FC9:    STA $0202               ; $03:9FC9: 8D 02 02    ;
CODE_039FCC:    STA $BB                 ; $03:9FCC: 85 BB       ;
CODE_039FCE:    LDA #$00                ; $03:9FCE: A9 00       ;
CODE_039FD0:    STA $28                 ; $03:9FD0: 85 28       ;
CODE_039FD2:    DEC $0480               ; $03:9FD2: CE 80 04    ;
CODE_039FD5:    LDY #$00                ; $03:9FD5: A0 00       ;
CODE_039FD7:    STY $075B               ; $03:9FD7: 8C 5B 07    ;
CODE_039FDA:    LDA $5C                 ; $03:9FDA: A5 5C       ;
CODE_039FDC:    BNE CODE_039FDF         ; $03:9FDC: D0 01       ;
CODE_039FDE:    INY                     ; $03:9FDE: C8          ;
CODE_039FDF:    STY $0704               ; $03:9FDF: 8C 04 07    ;
CODE_039FE2:    LDX $0710               ; $03:9FE2: AE 10 07    ;
CODE_039FE5:    LDY $0752               ; $03:9FE5: AC 52 07    ;
CODE_039FE8:    BEQ CODE_039FF1         ; $03:9FE8: F0 07       ;
CODE_039FEA:    CPY #$01                ; $03:9FEA: C0 01       ;
CODE_039FEC:    BEQ CODE_039FF1         ; $03:9FEC: F0 03       ;
CODE_039FEE:    LDX DATA_039FA4,y       ; $03:9FEE: BE A4 9F    ;
CODE_039FF1:    LDA DATA_039FA2,y       ; $03:9FF1: B9 A2 9F    ;
CODE_039FF4:    STA $0219               ; $03:9FF4: 8D 19 02    ;
CODE_039FF7:    LDA DATA_039FA8,x       ; $03:9FF7: BD A8 9F    ;
CODE_039FFA:    STA $0237               ; $03:9FFA: 8D 37 02    ;
CODE_039FFD:    LDA DATA_039FB1,x       ; $03:9FFD: BD B1 9F    ;
CODE_03A000:    STA $0256               ; $03:A000: 8D 56 02    ;
CODE_03A003:    LDX #$00                ; $03:A003: A2 00       ;
CODE_03A005:    JSR CODE_03EA2D         ; $03:A005: 20 2D EA    ;
CODE_03A008:    JSL CODE_049A88         ; $03:A008: 22 88 9A 04 ;
CODE_03A00C:    LDY $0715               ; $03:A00C: AC 15 07    ;
CODE_03A00F:    BEQ CODE_03A02B         ; $03:A00F: F0 1A       ;
CODE_03A011:    LDA $0757               ; $03:A011: AD 57 07    ;
CODE_03A014:    BEQ CODE_03A02B         ; $03:A014: F0 15       ;
CODE_03A016:    LDA DATA_039FB9,y       ; $03:A016: B9 B9 9F    ;
CODE_03A019:    STA $07E9               ; $03:A019: 8D E9 07    ;
CODE_03A01C:    LDA #$01                ; $03:A01C: A9 01       ;
CODE_03A01E:    STA $07EB               ; $03:A01E: 8D EB 07    ;
CODE_03A021:    LSR A                   ; $03:A021: 4A          ;
CODE_03A022:    STA $07EA               ; $03:A022: 8D EA 07    ;
CODE_03A025:    STA $0757               ; $03:A025: 8D 57 07    ;
CODE_03A028:    STA $07AF               ; $03:A028: 8D AF 07    ;
CODE_03A02B:    LDY $0758               ; $03:A02B: AC 58 07    ;
CODE_03A02E:    BEQ CODE_03A044         ; $03:A02E: F0 14       ;
CODE_03A030:    LDA #$03                ; $03:A030: A9 03       ;
CODE_03A032:    STA $28                 ; $03:A032: 85 28       ;
CODE_03A034:    LDX #$00                ; $03:A034: A2 00       ;
CODE_03A036:    JSR CODE_03BF0D         ; $03:A036: 20 0D BF    ;
CODE_03A039:    LDA #$F0                ; $03:A039: A9 F0       ;
CODE_03A03B:    STA $44                 ; $03:A03B: 85 44       ;
CODE_03A03D:    LDX #$09                ; $03:A03D: A2 09       ;
CODE_03A03F:    LDY #$00                ; $03:A03F: A0 00       ;
CODE_03A041:    JSR CODE_03B9FD         ; $03:A041: 20 FD B9    ;
CODE_03A044:    LDY $5C                 ; $03:A044: A4 5C       ;
CODE_03A046:    BNE CODE_03A04B         ; $03:A046: D0 03       ;
CODE_03A048:    JSR CODE_03B793         ; $03:A048: 20 93 B7    ;
CODE_03A04B:    LDA #$07                ; $03:A04B: A9 07       ;
CODE_03A04D:    STA $0F                 ; $03:A04D: 85 0F       ;
CODE_03A04F:    RTS                     ; $03:A04F: 60          ;

DATA_03A050:    db $56,$40,$65,$70,$66,$40,$66,$40              ;
                db $66,$40,$66,$60,$65,$70,$00,$00              ;

;Player action - player loses life
CODE_03A060:    LDA #$01                ; $03:A060: A9 01       ;
CODE_03A062:    STA $0E7F               ; $03:A062: 8D 7F 0E    ;
CODE_03A065:    STA $0E67               ; $03:A065: 8D 67 0E    ;
CODE_03A068:    STZ $0722               ; $03:A068: 9C 22 07    ;
CODE_03A06B:    DEC $075A               ; $03:A06B: CE 5A 07    ;
CODE_03A06E:    BPL CODE_03A079         ; $03:A06E: 10 09       ;
CODE_03A070:    STZ $0772               ; $03:A070: 9C 72 07    ;
CODE_03A073:    LDA #$03                ; $03:A073: A9 03       ;
CODE_03A075:    STA $0770               ; $03:A075: 8D 70 07    ;
CODE_03A078:    RTS                     ; $03:A078: 60          ;

CODE_03A079:    LDA $075F               ; $03:A079: AD 5F 07    ;
CODE_03A07C:    ASL A                   ; $03:A07C: 0A          ;
CODE_03A07D:    TAX                     ; $03:A07D: AA          ;
CODE_03A07E:    LDA $075C               ; $03:A07E: AD 5C 07    ;
CODE_03A081:    AND #$02                ; $03:A081: 29 02       ;
CODE_03A083:    BEQ CODE_03A086         ; $03:A083: F0 01       ;
CODE_03A085:    INX                     ; $03:A085: E8          ;
CODE_03A086:    LDY DATA_03A050,x       ; $03:A086: BC 50 A0    ;
CODE_03A089:    LDA $075C               ; $03:A089: AD 5C 07    ;
CODE_03A08C:    LSR A                   ; $03:A08C: 4A          ;
CODE_03A08D:    TYA                     ; $03:A08D: 98          ;
CODE_03A08E:    BCS CODE_03A094         ; $03:A08E: B0 04       ;
CODE_03A090:    LSR A                   ; $03:A090: 4A          ;
CODE_03A091:    LSR A                   ; $03:A091: 4A          ;
CODE_03A092:    LSR A                   ; $03:A092: 4A          ;
CODE_03A093:    LSR A                   ; $03:A093: 4A          ;
CODE_03A094:    AND #$0F                ; $03:A094: 29 0F       ;
CODE_03A096:    CMP $071A               ; $03:A096: CD 1A 07    ;
CODE_03A099:    BEQ CODE_03A09F         ; $03:A099: F0 04       ;
CODE_03A09B:    BCC CODE_03A09F         ; $03:A09B: 90 02       ;
CODE_03A09D:    LDA #$00                ; $03:A09D: A9 00       ;
CODE_03A09F:    STA $075B               ; $03:A09F: 8D 5B 07    ;
CODE_03A0A2:    JSR CODE_03A22B         ; $03:A0A2: 20 2B A2    ;
CODE_03A0A5:    JMP CODE_03A204         ; $03:A0A5: 4C 04 A2    ;

;Game Over operation mode
CODE_03A0A8:    LDA $0772               ; $03:A0A8: AD 72 07    ;
CODE_03A0AB:    ASL A                   ; $03:A0AB: 0A          ;
CODE_03A0AC:    TAX                     ; $03:A0AC: AA          ;
CODE_03A0AD:    JMP (PNTR_03A0B0,x)     ; $03:A0AD: 7C B0 A0    ;

PNTR_03A0B0:    dw CODE_03A0B6                                  ;$00
                dw CODE_038C18                                  ;$01
                dw CODE_03A1E1                                  ;$02

CODE_03A0B6:    STZ $073C               ; $03:A0B6: 9C 3C 07    ;
CODE_03A0B9:    STZ $0722               ; $03:A0B9: 9C 22 07    ;
CODE_03A0BC:    LDA #$0A                ; $03:A0BC: A9 0A       ;\Game over music
CODE_03A0BE:    STA $1602               ; $03:A0BE: 8D 02 16    ;/
CODE_03A0C1:    INC $0774               ; $03:A0C1: EE 74 07    ;
CODE_03A0C4:    INC $0772               ; $03:A0C4: EE 72 07    ;
CODE_03A0C7:    RTS                     ; $03:A0C7: 60          ;

DATA_03A0C8:    db $42,$73,$0C,$2B                              ;

DATA_03A0CC:    db $63,$73,$83                                  ;

CODE_03A0CF:    LDA $077A               ; $03:A0CF: AD 7A 07    ;
CODE_03A0D2:    BEQ CODE_03A0DC         ; $03:A0D2: F0 08       ;
CODE_03A0D4:    LDA $0761               ; $03:A0D4: AD 61 07    ;
CODE_03A0D7:    BMI CODE_03A0DC         ; $03:A0D7: 30 03       ;
CODE_03A0D9:    JMP CODE_03A1E4         ; $03:A0D9: 4C E4 A1    ;

CODE_03A0DC:    LDA $0FF6               ; $03:A0DC: AD F6 0F    ;
CODE_03A0DF:    ORA $0FF7               ; $03:A0DF: 0D F7 0F    ;
CODE_03A0E2:    STA $0FF6               ; $03:A0E2: 8D F6 0F    ;
CODE_03A0E5:    AND #$0C                ; $03:A0E5: 29 0C       ;
CODE_03A0E7:    BEQ CODE_03A107         ; $03:A0E7: F0 1E       ;
CODE_03A0E9:    LDY #$01                ; $03:A0E9: A0 01       ;\Mario collected a coin sound
CODE_03A0EB:    STY $1603               ; $03:A0EB: 8C 03 16    ;/
CODE_03A0EE:    LDY $0F06               ; $03:A0EE: AC 06 0F    ;
CODE_03A0F1:    AND #$08                ; $03:A0F1: 29 08       ;
CODE_03A0F3:    BEQ CODE_03A0FB         ; $03:A0F3: F0 06       ;
CODE_03A0F5:    DEY                     ; $03:A0F5: 88          ;
CODE_03A0F6:    BPL CODE_03A104         ; $03:A0F6: 10 0C       ;
CODE_03A0F8:    INY                     ; $03:A0F8: C8          ;
CODE_03A0F9:    BRA CODE_03A101         ; $03:A0F9: 80 06       ;

CODE_03A0FB:    INY                     ; $03:A0FB: C8          ;
CODE_03A0FC:    CPY #$03                ; $03:A0FC: C0 03       ;
CODE_03A0FE:    BNE CODE_03A104         ; $03:A0FE: D0 04       ;
CODE_03A100:    DEY                     ; $03:A100: 88          ;
CODE_03A101:    STZ $1603               ; $03:A101: 9C 03 16    ;
CODE_03A104:    STY $0F06               ; $03:A104: 8C 06 0F    ;
CODE_03A107:    LDA $0F8A               ; $03:A107: AD 8A 0F    ;
CODE_03A10A:    BNE CODE_03A181         ; $03:A10A: D0 75       ;
CODE_03A10C:    LDA $0FF6               ; $03:A10C: AD F6 0F    ;
CODE_03A10F:    ORA $0FF7               ; $03:A10F: 0D F7 0F    ;
CODE_03A112:    AND #$10                ; $03:A112: 29 10       ;
CODE_03A114:    BNE CODE_03A168         ; $03:A114: D0 52       ;
CODE_03A116:    LDA $0FF6               ; $03:A116: AD F6 0F    ;
CODE_03A119:    ORA $0FF7               ; $03:A119: 0D F7 0F    ;
CODE_03A11C:    AND #$20                ; $03:A11C: 29 20       ;
CODE_03A11E:    BEQ CODE_03A132         ; $03:A11E: F0 12       ;
CODE_03A120:    LDA #$01                ; $03:A120: A9 01       ;\Mario collected a coin sound
CODE_03A122:    STA $1603               ; $03:A122: 8D 03 16    ;/
CODE_03A125:    INC $0F06               ; $03:A125: EE 06 0F    ;
CODE_03A128:    LDA $0F06               ; $03:A128: AD 06 0F    ;
CODE_03A12B:    CMP #$03                ; $03:A12B: C9 03       ;
CODE_03A12D:    BNE CODE_03A132         ; $03:A12D: D0 03       ;
CODE_03A12F:    STZ $0F06               ; $03:A12F: 9C 06 0F    ;
CODE_03A132:    LDA $075F               ; $03:A132: AD 5F 07    ;
CODE_03A135:    CMP #$08                ; $03:A135: C9 08       ;
CODE_03A137:    BNE CODE_03A13A         ; $03:A137: D0 01       ;
CODE_03A139:    RTS                     ; $03:A139: 60          ;

CODE_03A13A:    LDA $1603               ; $03:A13A: AD 03 16    ;
CODE_03A13D:    BEQ CODE_03A142         ; $03:A13D: F0 03       ;
CODE_03A13F:    STZ $0B78               ; $03:A13F: 9C 78 0B    ;
CODE_03A142:    INC $0B78               ; $03:A142: EE 78 0B    ;Frame counter which runs when the game is paused
CODE_03A145:    LDA $0B78               ; $03:A145: AD 78 0B    ;
CODE_03A148:    AND #$10                ; $03:A148: 29 10       ;
CODE_03A14A:    LSR A                   ; $03:A14A: 4A          ;
CODE_03A14B:    LSR A                   ; $03:A14B: 4A          ;
CODE_03A14C:    LSR A                   ; $03:A14C: 4A          ;
CODE_03A14D:    LSR A                   ; $03:A14D: 4A          ;
CODE_03A14E:    ORA #$02                ; $03:A14E: 09 02       ;
CODE_03A150:    STA $0C00               ; $03:A150: 8D 00 0C    ;
CODE_03A153:    LDY #$03                ; $03:A153: A0 03       ;
CODE_03A155:    LDA DATA_03A0C8,y       ; $03:A155: B9 C8 A0    ;
CODE_03A158:    STA $0800,y             ; $03:A158: 99 00 08    ;
CODE_03A15B:    DEY                     ; $03:A15B: 88          ;
CODE_03A15C:    BPL CODE_03A155         ; $03:A15C: 10 F7       ;
CODE_03A15E:    LDY $0F06               ; $03:A15E: AC 06 0F    ;
CODE_03A161:    LDA DATA_03A0CC,y       ; $03:A161: B9 CC A0    ;
CODE_03A164:    STA $0801               ; $03:A164: 8D 01 08    ;
CODE_03A167:    RTS                     ; $03:A167: 60          ;

CODE_03A168:    LDA #$20                ; $03:A168: A9 20       ;
CODE_03A16A:    STA $0F8A               ; $03:A16A: 8D 8A 0F    ;
CODE_03A16D:    LDA #$43                ; $03:A16D: A9 43       ;\Pause sound
CODE_03A16F:    STA $1600               ; $03:A16F: 8D 00 16    ;/
CODE_03A172:    LDA #$F3                ; $03:A172: A9 F3       ;\Music fades out
CODE_03A174:    STA $1602               ; $03:A174: 8D 02 16    ;/
CODE_03A177:    LDA $0F06               ; $03:A177: AD 06 0F    ;
CODE_03A17A:    BEQ CODE_03A181         ; $03:A17A: F0 05       ;
CODE_03A17C:    LDA #$3B                ; $03:A17C: A9 3B       ;\
CODE_03A17E:    STA $1600               ; $03:A17E: 8D 00 16    ;/"Save & Continue/Save & Quit" sound
CODE_03A181:    JSR CODE_03A142         ; $03:A181: 20 42 A1    ;
CODE_03A184:    DEC $0F8A               ; $03:A184: CE 8A 0F    ;
CODE_03A187:    LDA $0F8A               ; $03:A187: AD 8A 0F    ;
CODE_03A18A:    BEQ CODE_03A18D         ; $03:A18A: F0 01       ;
CODE_03A18C:    RTS                     ; $03:A18C: 60          ;

CODE_03A18D:    STZ $0B78               ; $03:A18D: 9C 78 0B    ;
CODE_03A190:    LDY #$04                ; $03:A190: A0 04       ;
CODE_03A192:    STY $075A               ; $03:A192: 8C 5A 07    ;
CODE_03A195:    STZ $0F03               ; $03:A195: 9C 03 0F    ;
CODE_03A198:    STZ $075E               ; $03:A198: 9C 5E 07    ;
CODE_03A19B:    STZ $0765               ; $03:A19B: 9C 65 07    ;
CODE_03A19E:    LDA $075F               ; $03:A19E: AD 5F 07    ;
CODE_03A1A1:    STA $075F               ; $03:A1A1: 8D 5F 07    ;
CODE_03A1A4:    STA $700008             ; $03:A1A4: 8F 08 00 70 ;
CODE_03A1A8:    STZ $075C               ; $03:A1A8: 9C 5C 07    ;
CODE_03A1AB:    STZ $0E24               ; $03:A1AB: 9C 24 0E    ;
CODE_03A1AE:    STZ $0763               ; $03:A1AE: 9C 63 07    ;
CODE_03A1B1:    STZ $0767               ; $03:A1B1: 9C 67 07    ;
CODE_03A1B4:    STZ $0760               ; $03:A1B4: 9C 60 07    ;
CODE_03A1B7:    LDA #$00                ; $03:A1B7: A9 00       ;
CODE_03A1B9:    STA $700009             ; $03:A1B9: 8F 09 00 70 ;
CODE_03A1BD:    LDA #$00                ; $03:A1BD: A9 00       ;
CODE_03A1BF:    LDY #$11                ; $03:A1BF: A0 11       ;
CODE_03A1C1:    STA $07CE,y             ; $03:A1C1: 99 CE 07    ;
CODE_03A1C4:    DEY                     ; $03:A1C4: 88          ;
CODE_03A1C5:    BPL CODE_03A1C1         ; $03:A1C5: 10 FA       ;
CODE_03A1C7:    INC $075D               ; $03:A1C7: EE 5D 07    ;Enable hidden 1-up flag
CODE_03A1CA:    LDA $0F06               ; $03:A1CA: AD 06 0F    ;
CODE_03A1CD:    BEQ CODE_03A1DE         ; $03:A1CD: F0 0F       ;
CODE_03A1CF:    JSL CODE_008F03         ; $03:A1CF: 22 03 8F 00 ;
CODE_03A1D3:    LDA $0F06               ; $03:A1D3: AD 06 0F    ;
CODE_03A1D6:    CMP #$01                ; $03:A1D6: C9 01       ;
CODE_03A1D8:    BEQ CODE_03A1DE         ; $03:A1D8: F0 04       ;
CODE_03A1DA:    JML CODE_0080DE         ; $03:A1DA: 5C DE 80 00 ;

CODE_03A1DE:    JMP CODE_03A1EF         ; $03:A1DE: 4C EF A1    ;
CODE_03A1E1:    JMP CODE_03A0CF         ; $03:A1E1: 4C CF A0    ;

CODE_03A1E4:    JSL CODE_048650         ; $03:A1E4: 22 50 86 04 ;
CODE_03A1E8:    JMP (PNTR_03A1EB,x)     ; $03:A1E8: 7C EB A1    ;

PNTR_03A1EB:    dw CODE_03A22A                                  ;
                dw CODE_03A1EF                                  ;

CODE_03A1EF:    JSR CODE_03A22B         ; $03:A1EF: 20 2B A2    ;
CODE_03A1F2:    BCC CODE_03A204         ; $03:A1F2: 90 10       ;
CODE_03A1F4:    LDA $075F               ; $03:A1F4: AD 5F 07    ;\Residual from NES: store world number into secret continue function variable
CODE_03A1F7:    STA $07FD               ; $03:A1F7: 8D FD 07    ;/
CODE_03A1FA:    STZ $0772               ; $03:A1FA: 9C 72 07    ;
CODE_03A1FD:    STZ $07B0               ; $03:A1FD: 9C B0 07    ;
CODE_03A200:    STZ $0770               ; $03:A200: 9C 70 07    ;
CODE_03A203:    RTS                     ; $03:A203: 60          ;

;Handle new world after game-over and rescuing the princess
CODE_03A204:    JSL CODE_04C00B         ; $03:A204: 22 0B C0 04 ;Set level number and map type
CODE_03A208:    LDA $1680               ; $03:A208: AD 80 16    ;\Skip clear powerup if new world from rescuing the princess
CODE_03A20B:    BNE CODE_03A21A         ; $03:A20B: D0 0D       ;/
CODE_03A20D:    LDA $077A               ; $03:A20D: AD 7A 07    ;\Skip clear powerup if 2 players
CODE_03A210:    BNE CODE_03A21A         ; $03:A210: D0 08       ;/
CODE_03A212:    LDA #$01                ; $03:A212: A9 01       ;\
CODE_03A214:    STA $0754               ; $03:A214: 8D 54 07    ; |Set small player flag
CODE_03A217:    STZ $0756               ; $03:A217: 9C 56 07    ;/ Clear powerup
CODE_03A21A:    INC $0757               ; $03:A21A: EE 57 07    ;set some timer flag
CODE_03A21D:    STZ $0747               ; $03:A21D: 9C 47 07    ;Clear everything freezes timer
CODE_03A220:    STZ $0F                 ; $03:A220: 64 0F       ;set player action to 0
CODE_03A222:    STZ $0772               ; $03:A222: 9C 72 07    ;Operation mode task to execute is 0
CODE_03A225:    LDA #$01                ; $03:A225: A9 01       ;\
CODE_03A227:    STA $0770               ; $03:A227: 8D 70 07    ;/Operation mode: main
CODE_03A22A:    RTS                     ; $03:A22A: 60          ;

;Swap players
;Output: Carry set = player couldn't be swapped. Carry clear = player could be swapped.
CODE_03A22B:    SEC                     ; $03:A22B: 38          ;
CODE_03A22C:    LDA $077A               ; $03:A22C: AD 7A 07    ;\Branch if single player
CODE_03A22F:    BEQ CODE_03A280         ; $03:A22F: F0 4F       ;/
CODE_03A231:    LDA $0761               ; $03:A231: AD 61 07    ;\
CODE_03A234:    BMI CODE_03A280         ; $03:A234: 30 4A       ;/Branch if previous player's extra lives is below 0
CODE_03A236:    LDA $0754               ; $03:A236: AD 54 07    ;\
CODE_03A239:    PHA                     ; $03:A239: 48          ; |
CODE_03A23A:    LDA $077F               ; $03:A23A: AD 7F 07    ; |
CODE_03A23D:    STA $0754               ; $03:A23D: 8D 54 07    ; |Swap previous player's small flag with current player's
CODE_03A240:    PLA                     ; $03:A240: 68          ; |
CODE_03A241:    STA $077F               ; $03:A241: 8D 7F 07    ;/
CODE_03A244:    LDA $0756               ; $03:A244: AD 56 07    ;\
CODE_03A247:    PHA                     ; $03:A247: 48          ; |
CODE_03A248:    LDA $0780               ; $03:A248: AD 80 07    ; |
CODE_03A24B:    STA $0756               ; $03:A24B: 8D 56 07    ; |Swap previous player's powerup with current player's
CODE_03A24E:    PLA                     ; $03:A24E: 68          ; |
CODE_03A24F:    STA $0780               ; $03:A24F: 8D 80 07    ;/
CODE_03A252:    LDA $07FC               ; $03:A252: AD FC 07    ;\"More difficult quest" flag
CODE_03A255:    PHA                     ; $03:A255: 48          ; |
CODE_03A256:    LDA $0781               ; $03:A256: AD 81 07    ; |
CODE_03A259:    STA $07FC               ; $03:A259: 8D FC 07    ; |Swap "more difficult quest" flag with previous player
CODE_03A25C:    PLA                     ; $03:A25C: 68          ; |
CODE_03A25D:    STA $0781               ; $03:A25D: 8D 81 07    ;/
CODE_03A260:    LDA $0753               ; $03:A260: AD 53 07    ;\
CODE_03A263:    EOR #$01                ; $03:A263: 49 01       ; |Swap current player
CODE_03A265:    STA $0753               ; $03:A265: 8D 53 07    ;/
CODE_03A268:    STA $0EC2               ; $03:A268: 8D C2 0E    ;And the current player's image
CODE_03A26B:    LDX #$06                ; $03:A26B: A2 06       ;\
CODE_03A26D:    LDA $075A,x             ; $03:A26D: BD 5A 07    ; |Swap things like current player's coins, lives, levels, etc
CODE_03A270:    PHA                     ; $03:A270: 48          ; |
CODE_03A271:    LDA $0761,x             ; $03:A271: BD 61 07    ; |
CODE_03A274:    STA $075A,x             ; $03:A274: 9D 5A 07    ; |
CODE_03A277:    PLA                     ; $03:A277: 68          ; |
CODE_03A278:    STA $0761,x             ; $03:A278: 9D 61 07    ; |
CODE_03A27B:    DEX                     ; $03:A27B: CA          ; |
CODE_03A27C:    BPL CODE_03A26D         ; $03:A27C: 10 EF       ;/
CODE_03A27E:    CLC                     ; $03:A27E: 18          ;
CODE_03A27F:    RTS                     ; $03:A27F: 60          ;

CODE_03A280:    LDA $0F03               ; $03:A280: AD 03 0F    ;
CODE_03A283:    BNE CODE_03A27F         ; $03:A283: D0 FA       ;
CODE_03A285:    CLC                     ; $03:A285: 18          ;
CODE_03A286:    RTS                     ; $03:A286: 60          ;

;Swap player data after level end if a player didn't quit after game-over, and game is not single player.
CODE_03A287:    PHB                     ; $03:A287: 8B          ;
CODE_03A288:    PHK                     ; $03:A288: 4B          ;
CODE_03A289:    PLB                     ; $03:A289: AB          ;
CODE_03A28A:    JSR CODE_03A22B         ; $03:A28A: 20 2B A2    ;
CODE_03A28D:    PLB                     ; $03:A28D: AB          ;
CODE_03A28E:    RTL                     ; $03:A28E: 6B          ;

CODE_03A28F:    LDA #$FF                ; $03:A28F: A9 FF       ;
CODE_03A291:    STA $06C9               ; $03:A291: 8D C9 06    ;
CODE_03A294:    RTS                     ; $03:A294: 60          ;

CODE_03A295:    LDY $071F               ; $03:A295: AC 1F 07    ;
CODE_03A298:    BNE CODE_03A29F         ; $03:A298: D0 05       ;
CODE_03A29A:    LDY #$08                ; $03:A29A: A0 08       ;
CODE_03A29C:    STY $071F               ; $03:A29C: 8C 1F 07    ;
CODE_03A29F:    DEY                     ; $03:A29F: 88          ;
CODE_03A2A0:    TYA                     ; $03:A2A0: 98          ;
CODE_03A2A1:    JSR CODE_03A300         ; $03:A2A1: 20 00 A3    ;
CODE_03A2A4:    DEC $071F               ; $03:A2A4: CE 1F 07    ;
CODE_03A2A7:    BNE CODE_03A2DE         ; $03:A2A7: D0 35       ;
CODE_03A2A9:    LDA #$20                ; $03:A2A9: A9 20       ;
CODE_03A2AB:    STA $00                 ; $03:A2AB: 85 00       ;
CODE_03A2AD:    LDA $BA                 ; $03:A2AD: A5 BA       ;
CODE_03A2AF:    CMP #$03                ; $03:A2AF: C9 03       ;
CODE_03A2B1:    BNE CODE_03A2B5         ; $03:A2B1: D0 02       ;
CODE_03A2B3:    ASL $00                 ; $03:A2B3: 06 00       ;
CODE_03A2B5:    LDA $0ED1               ; $03:A2B5: AD D1 0E    ;
CODE_03A2B8:    BNE CODE_03A2DE         ; $03:A2B8: D0 24       ;
CODE_03A2BA:    LDA $0EFD               ; $03:A2BA: AD FD 0E    ;
CODE_03A2BD:    AND $00                 ; $03:A2BD: 25 00       ;
CODE_03A2BF:    BEQ CODE_03A2C8         ; $03:A2BF: F0 07       ;
CODE_03A2C1:    LDA $0EFC               ; $03:A2C1: AD FC 0E    ;
CODE_03A2C4:    BEQ CODE_03A2D2         ; $03:A2C4: F0 0C       ;
CODE_03A2C6:    BRA CODE_03A2DE         ; $03:A2C6: 80 16       ;

CODE_03A2C8:    LDA $0EFC               ; $03:A2C8: AD FC 0E    ;
CODE_03A2CB:    BEQ CODE_03A2DE         ; $03:A2CB: F0 11       ;
CODE_03A2CD:    STZ $0EFC               ; $03:A2CD: 9C FC 0E    ;
CODE_03A2D0:    BRA CODE_03A2D7         ; $03:A2D0: 80 05       ;

CODE_03A2D2:    LDA #$01                ; $03:A2D2: A9 01       ;
CODE_03A2D4:    STA $0EFC               ; $03:A2D4: 8D FC 0E    ;
CODE_03A2D7:    JSL CODE_049B35         ; $03:A2D7: 22 35 9B 04 ;
CODE_03A2DB:    JSR CODE_039351         ; $03:A2DB: 20 51 93    ;
CODE_03A2DE:    LDA $0EEE               ; $03:A2DE: AD EE 0E    ;
CODE_03A2E1:    AND #$10                ; $03:A2E1: 29 10       ;
CODE_03A2E3:    BEQ CODE_03A2EC         ; $03:A2E3: F0 07       ;
CODE_03A2E5:    LDA $0EDD               ; $03:A2E5: AD DD 0E    ;
CODE_03A2E8:    BEQ CODE_03A2F6         ; $03:A2E8: F0 0C       ;
CODE_03A2EA:    BRA CODE_03A2FF         ; $03:A2EA: 80 13       ;

CODE_03A2EC:    LDA $0EDD               ; $03:A2EC: AD DD 0E    ;
CODE_03A2EF:    BEQ CODE_03A2FF         ; $03:A2EF: F0 0E       ;
CODE_03A2F1:    STZ $0EDD               ; $03:A2F1: 9C DD 0E    ;
CODE_03A2F4:    BRA CODE_03A2FB         ; $03:A2F4: 80 05       ;

CODE_03A2F6:    LDA #$01                ; $03:A2F6: A9 01       ;
CODE_03A2F8:    STA $0EDD               ; $03:A2F8: 8D DD 0E    ;
CODE_03A2FB:    JSL CODE_048B4E         ; $03:A2FB: 22 4E 8B 04 ;
CODE_03A2FF:    RTS                     ; $03:A2FF: 60          ;

CODE_03A300:    ASL A                   ; $03:A300: 0A          ;
CODE_03A301:    TAX                     ; $03:A301: AA          ;
CODE_03A302:    JMP (PNTR_03A305,x)     ; $03:A302: 7C 05 A3    ;

PNTR_03A305:    dw CODE_03A315                                  ;Increment column position RAM
                dw CODE_03922D                                  ;
                dw CODE_03922D                                  ;
                dw CODE_03A436                                  ;
                dw CODE_03A315                                  ;Increment column position RAM
                dw CODE_03922D                                  ;
                dw CODE_03922D                                  ;
                dw CODE_03A436                                  ;

CODE_03A315:    INC $0726               ; $03:A315: EE 26 07    ;
CODE_03A318:    LDA $0726               ; $03:A318: AD 26 07    ;
CODE_03A31B:    AND #$0F                ; $03:A31B: 29 0F       ;
CODE_03A31D:    BNE CODE_03A325         ; $03:A31D: D0 06       ;
CODE_03A31F:    STA $0726               ; $03:A31F: 8D 26 07    ;
CODE_03A322:    INC $0725               ; $03:A322: EE 25 07    ;
CODE_03A325:    INC $06A0               ; $03:A325: EE A0 06    ;
CODE_03A328:    LDA $06A0               ; $03:A328: AD A0 06    ;
CODE_03A32B:    AND #$1F                ; $03:A32B: 29 1F       ;
CODE_03A32D:    STA $06A0               ; $03:A32D: 8D A0 06    ;
CODE_03A330:    RTS                     ; $03:A330: 60          ;

DATA_03A331:    db $00,$30,$60                                  ;

DATA_03A334:    db $93,$00,$00,$11,$12,$12,$13,$00              ;
                db $00,$51,$52,$53,$00,$00,$00,$00              ;
                db $00,$00,$01,$02,$02,$03,$00,$00              ;
                db $00,$00,$00,$00,$91,$92,$93,$00              ;
                db $00,$00,$00,$51,$52,$53,$41,$42              ;
                db $43,$00,$00,$00,$00,$00,$91,$92              ;
                db $97,$87,$88,$89,$99,$00,$00,$00              ;
                db $11,$12,$13,$A4,$A5,$A5,$A5,$A6              ;
                db $97,$98,$99,$01,$02,$03,$00,$A4              ;
                db $A5,$A6,$00,$11,$12,$12,$12,$13              ;
                db $00,$00,$00,$00,$01,$02,$02,$03              ;
                db $00,$A4,$A5,$A5,$A6,$00,$00,$00              ;
                db $11,$12,$12,$13,$00,$00,$00,$00              ;
                db $00,$00,$00,$9C,$00,$8B,$AA,$AA              ;
                db $AA,$AA,$11,$12,$13,$8B,$00,$9C              ;
                db $9C,$00,$00,$01,$02,$03,$11,$12              ;
                db $12,$13,$00,$00,$00,$00,$AA,$AA              ;
                db $9C,$AA,$00,$8B,$00,$01,$02,$03              ;

DATA_03A3C4:    db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$04,$00,$00,$05,$00,$00,$06              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$4D,$00,$00,$11,$13              ;
                db $4E,$12,$4E                                  ;

DATA_03A3E7:    db $4E,$00,$0D,$1A                              ;

DATA_03A3EB:    db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$71,$71,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $71,$71,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00                          ;

DATA_03A410:    db $86,$8B                                      ;

DATA_03A412:    db $72,$56,$52,$65                              ;

DATA_03A416:    db $00,$00,$00,$18,$01,$18,$07,$18              ;
                db $0F,$18,$FF,$18,$01,$1F,$07,$1F              ;
                db $0F,$1F,$81,$1F,$01,$00,$8F,$1F              ;
                db $F1,$1F,$F9,$18,$F1,$18,$FF,$1F              ;

CODE_03A436:    LDA $0728               ; $03:A436: AD 28 07    ;
CODE_03A439:    BEQ CODE_03A43E         ; $03:A439: F0 03       ;
CODE_03A43B:    JSR CODE_03A5CC         ; $03:A43B: 20 CC A5    ;
CODE_03A43E:    LDX #$0C                ; $03:A43E: A2 0C       ;
CODE_03A440:    LDA #$00                ; $03:A440: A9 00       ;
CODE_03A442:    STA $06A1,x             ; $03:A442: 9D A1 06    ;
CODE_03A445:    DEX                     ; $03:A445: CA          ;
CODE_03A446:    BPL CODE_03A442         ; $03:A446: 10 FA       ;
CODE_03A448:    LDY $0742               ; $03:A448: AC 42 07    ;
CODE_03A44B:    BEQ CODE_03A48F         ; $03:A44B: F0 42       ;
CODE_03A44D:    LDA $0725               ; $03:A44D: AD 25 07    ;
CODE_03A450:    CMP #$03                ; $03:A450: C9 03       ;
CODE_03A452:    BMI CODE_03A459         ; $03:A452: 30 05       ;
CODE_03A454:    SEC                     ; $03:A454: 38          ;
CODE_03A455:    SBC #$03                ; $03:A455: E9 03       ;
CODE_03A457:    BPL CODE_03A450         ; $03:A457: 10 F7       ;
CODE_03A459:    ASL A                   ; $03:A459: 0A          ;
CODE_03A45A:    ASL A                   ; $03:A45A: 0A          ;
CODE_03A45B:    ASL A                   ; $03:A45B: 0A          ;
CODE_03A45C:    ASL A                   ; $03:A45C: 0A          ;
CODE_03A45D:    ADC DATA_03A331-1,y     ; $03:A45D: 79 30 A3    ;
CODE_03A460:    ADC $0726               ; $03:A460: 6D 26 07    ;
CODE_03A463:    TAX                     ; $03:A463: AA          ;
CODE_03A464:    LDA DATA_03A334,x       ; $03:A464: BD 34 A3    ;
CODE_03A467:    BEQ CODE_03A48F         ; $03:A467: F0 26       ;
CODE_03A469:    PHA                     ; $03:A469: 48          ;
CODE_03A46A:    AND #$0F                ; $03:A46A: 29 0F       ;
CODE_03A46C:    SEC                     ; $03:A46C: 38          ;
CODE_03A46D:    SBC #$01                ; $03:A46D: E9 01       ;
CODE_03A46F:    STA $00                 ; $03:A46F: 85 00       ;
CODE_03A471:    ASL A                   ; $03:A471: 0A          ;
CODE_03A472:    ADC $00                 ; $03:A472: 65 00       ;
CODE_03A474:    TAX                     ; $03:A474: AA          ;
CODE_03A475:    PLA                     ; $03:A475: 68          ;
CODE_03A476:    LSR A                   ; $03:A476: 4A          ;
CODE_03A477:    LSR A                   ; $03:A477: 4A          ;
CODE_03A478:    LSR A                   ; $03:A478: 4A          ;
CODE_03A479:    LSR A                   ; $03:A479: 4A          ;
CODE_03A47A:    TAY                     ; $03:A47A: A8          ;
CODE_03A47B:    LDA #$03                ; $03:A47B: A9 03       ;
CODE_03A47D:    STA $00                 ; $03:A47D: 85 00       ;
CODE_03A47F:    LDA DATA_03A3C4,x       ; $03:A47F: BD C4 A3    ;
CODE_03A482:    STA $06A1,y             ; $03:A482: 99 A1 06    ;
CODE_03A485:    INX                     ; $03:A485: E8          ;
CODE_03A486:    INY                     ; $03:A486: C8          ;
CODE_03A487:    CPY #$0B                ; $03:A487: C0 0B       ;
CODE_03A489:    BEQ CODE_03A48F         ; $03:A489: F0 04       ;
CODE_03A48B:    DEC $00                 ; $03:A48B: C6 00       ;
CODE_03A48D:    BNE CODE_03A47F         ; $03:A48D: D0 F0       ;
CODE_03A48F:    LDX $0741               ; $03:A48F: AE 41 07    ;
CODE_03A492:    BEQ CODE_03A4C7         ; $03:A492: F0 33       ;
CODE_03A494:    LDY DATA_03A3E7,x       ; $03:A494: BC E7 A3    ;
CODE_03A497:    LDX #$00                ; $03:A497: A2 00       ;
CODE_03A499:    LDA DATA_03A3EB,y       ; $03:A499: B9 EB A3    ;
CODE_03A49C:    BEQ CODE_03A4C1         ; $03:A49C: F0 23       ;
CODE_03A49E:    PHY                     ; $03:A49E: 5A          ;
CODE_03A49F:    LDY $5C                 ; $03:A49F: A4 5C       ;
CODE_03A4A1:    BNE CODE_03A4B3         ; $03:A4A1: D0 10       ;
CODE_03A4A3:    LDY $0EF0               ; $03:A4A3: AC F0 0E    ;
CODE_03A4A6:    BNE CODE_03A4AE         ; $03:A4A6: D0 06       ;
CODE_03A4A8:    INC $0EF0               ; $03:A4A8: EE F0 0E    ;
CODE_03A4AB:    INC A                   ; $03:A4AB: 1A          ;
CODE_03A4AC:    BRA CODE_03A4BB         ; $03:A4AC: 80 0D       ;

CODE_03A4AE:    STZ $0EF0               ; $03:A4AE: 9C F0 0E    ;
CODE_03A4B1:    BRA CODE_03A4BD         ; $03:A4B1: 80 0A       ;

CODE_03A4B3:    CPY #$03                ; $03:A4B3: C0 03       ;
CODE_03A4B5:    BNE CODE_03A4BD         ; $03:A4B5: D0 06       ;
CODE_03A4B7:    CMP #$86                ; $03:A4B7: C9 86       ;
CODE_03A4B9:    BNE CODE_03A4BD         ; $03:A4B9: D0 02       ;
CODE_03A4BB:    INC A                   ; $03:A4BB: 1A          ;
CODE_03A4BC:    INC A                   ; $03:A4BC: 1A          ;
CODE_03A4BD:    PLY                     ; $03:A4BD: 7A          ;
CODE_03A4BE:    STA $06A1,x             ; $03:A4BE: 9D A1 06    ;
CODE_03A4C1:    INY                     ; $03:A4C1: C8          ;
CODE_03A4C2:    INX                     ; $03:A4C2: E8          ;
CODE_03A4C3:    CPX #$0D                ; $03:A4C3: E0 0D       ;
CODE_03A4C5:    BNE CODE_03A499         ; $03:A4C5: D0 D2       ;
CODE_03A4C7:    STZ $0109               ; $03:A4C7: 9C 09 01    ;
CODE_03A4CA:    STZ $F9                 ; $03:A4CA: 64 F9       ;
CODE_03A4CC:    LDA $0EE8               ; $03:A4CC: AD E8 0E    ;
CODE_03A4CF:    STA $0EE9               ; $03:A4CF: 8D E9 0E    ;
CODE_03A4D2:    INC $0EE8               ; $03:A4D2: EE E8 0E    ;
CODE_03A4D5:    LDY $5C                 ; $03:A4D5: A4 5C       ;
CODE_03A4D7:    BNE CODE_03A4E4         ; $03:A4D7: D0 0B       ;
CODE_03A4D9:    LDA $075F               ; $03:A4D9: AD 5F 07    ;
CODE_03A4DC:    CMP #$07                ; $03:A4DC: C9 07       ;
CODE_03A4DE:    BNE CODE_03A4E4         ; $03:A4DE: D0 04       ;
CODE_03A4E0:    LDA #$65                ; $03:A4E0: A9 65       ;
CODE_03A4E2:    BRA CODE_03A4EE         ; $03:A4E2: 80 0A       ;

CODE_03A4E4:    LDA DATA_03A412,y       ; $03:A4E4: B9 12 A4    ;
CODE_03A4E7:    LDY $0743               ; $03:A4E7: AC 43 07    ;
CODE_03A4EA:    BEQ CODE_03A4EE         ; $03:A4EA: F0 02       ;
CODE_03A4EC:    LDA #$8C                ; $03:A4EC: A9 8C       ;
CODE_03A4EE:    STA $07                 ; $03:A4EE: 85 07       ;
CODE_03A4F0:    LDX #$00                ; $03:A4F0: A2 00       ;
CODE_03A4F2:    LDA $0727               ; $03:A4F2: AD 27 07    ;
CODE_03A4F5:    ASL A                   ; $03:A4F5: 0A          ;
CODE_03A4F6:    TAY                     ; $03:A4F6: A8          ;
CODE_03A4F7:    LDA DATA_03A416,y       ; $03:A4F7: B9 16 A4    ;
CODE_03A4FA:    STA $00                 ; $03:A4FA: 85 00       ;
CODE_03A4FC:    INY                     ; $03:A4FC: C8          ;
CODE_03A4FD:    STY $01                 ; $03:A4FD: 84 01       ;
CODE_03A4FF:    LDA $0743               ; $03:A4FF: AD 43 07    ;
CODE_03A502:    BEQ CODE_03A50E         ; $03:A502: F0 0A       ;
CODE_03A504:    CPX #$00                ; $03:A504: E0 00       ;
CODE_03A506:    BEQ CODE_03A50E         ; $03:A506: F0 06       ;
CODE_03A508:    LDA $00                 ; $03:A508: A5 00       ;
CODE_03A50A:    AND #$08                ; $03:A50A: 29 08       ;
CODE_03A50C:    STA $00                 ; $03:A50C: 85 00       ;
CODE_03A50E:    LDY #$00                ; $03:A50E: A0 00       ;
CODE_03A510:    LDA DATA_03CA9F,y       ; $03:A510: B9 9F CA    ;
CODE_03A513:    BIT $00                 ; $03:A513: 24 00       ;
CODE_03A515:    BEQ CODE_03A55B         ; $03:A515: F0 44       ;
CODE_03A517:    LDA $BA                 ; $03:A517: A5 BA       ;
CODE_03A519:    CMP #$03                ; $03:A519: C9 03       ;
CODE_03A51B:    BNE CODE_03A527         ; $03:A51B: D0 0A       ;
CODE_03A51D:    LDA $F9                 ; $03:A51D: A5 F9       ;
CODE_03A51F:    BEQ CODE_03A527         ; $03:A51F: F0 06       ;
CODE_03A521:    LDA #$68                ; $03:A521: A9 68       ;
CODE_03A523:    STA $07                 ; $03:A523: 85 07       ;
CODE_03A525:    BRA CODE_03A529         ; $03:A525: 80 02       ;

CODE_03A527:    LDA $07                 ; $03:A527: A5 07       ;
CODE_03A529:    STA $06A1,x             ; $03:A529: 9D A1 06    ;
CODE_03A52C:    LDA $F9                 ; $03:A52C: A5 F9       ;
CODE_03A52E:    BEQ CODE_03A544         ; $03:A52E: F0 14       ;
CODE_03A530:    LDA $BA                 ; $03:A530: A5 BA       ;
CODE_03A532:    CMP #$03                ; $03:A532: C9 03       ;
CODE_03A534:    BNE CODE_03A544         ; $03:A534: D0 0E       ;
CODE_03A536:    LDA $F9                 ; $03:A536: A5 F9       ;
CODE_03A538:    INC $F9                 ; $03:A538: E6 F9       ;
CODE_03A53A:    INC A                   ; $03:A53A: 1A          ;
CODE_03A53B:    BNE CODE_03A562         ; $03:A53B: D0 25       ;
CODE_03A53D:    INC $06A1,x             ; $03:A53D: FE A1 06    ;
CODE_03A540:    INC $07                 ; $03:A540: E6 07       ;
CODE_03A542:    BRA CODE_03A562         ; $03:A542: 80 1E       ;

CODE_03A544:    LDA $BA                 ; $03:A544: A5 BA       ;
CODE_03A546:    CMP #$03                ; $03:A546: C9 03       ;
CODE_03A548:    BNE CODE_03A562         ; $03:A548: D0 18       ;
CODE_03A54A:    LDA $0109               ; $03:A54A: AD 09 01    ;
CODE_03A54D:    BNE CODE_03A562         ; $03:A54D: D0 13       ;
CODE_03A54F:    LDA $0EE9               ; $03:A54F: AD E9 0E    ;
CODE_03A552:    AND #$01                ; $03:A552: 29 01       ;
CODE_03A554:    BNE CODE_03A562         ; $03:A554: D0 0C       ;
CODE_03A556:    INC $06A1,x             ; $03:A556: FE A1 06    ;
CODE_03A559:    BRA CODE_03A562         ; $03:A559: 80 07       ;

CODE_03A55B:    LDA #$FE                ; $03:A55B: A9 FE       ;
CODE_03A55D:    STA $F9                 ; $03:A55D: 85 F9       ;
CODE_03A55F:    INC $0109               ; $03:A55F: EE 09 01    ;
CODE_03A562:    INX                     ; $03:A562: E8          ;
CODE_03A563:    CPX #$0D                ; $03:A563: E0 0D       ;
CODE_03A565:    BEQ CODE_03A584         ; $03:A565: F0 1D       ;
CODE_03A567:    LDA $5C                 ; $03:A567: A5 5C       ;
CODE_03A569:    CMP #$02                ; $03:A569: C9 02       ;
CODE_03A56B:    BNE CODE_03A575         ; $03:A56B: D0 08       ;
CODE_03A56D:    CPX #$0B                ; $03:A56D: E0 0B       ;
CODE_03A56F:    BNE CODE_03A575         ; $03:A56F: D0 04       ;
CODE_03A571:    LDA #$56                ; $03:A571: A9 56       ;
CODE_03A573:    STA $07                 ; $03:A573: 85 07       ;
CODE_03A575:    INC $0EE9               ; $03:A575: EE E9 0E    ;
CODE_03A578:    INY                     ; $03:A578: C8          ;
CODE_03A579:    CPY #$08                ; $03:A579: C0 08       ;
CODE_03A57B:    BNE CODE_03A510         ; $03:A57B: D0 93       ;
CODE_03A57D:    LDY $01                 ; $03:A57D: A4 01       ;
CODE_03A57F:    BEQ CODE_03A584         ; $03:A57F: F0 03       ;
CODE_03A581:    JMP CODE_03A4F7         ; $03:A581: 4C F7 A4    ;

CODE_03A584:    LDA $06AD               ; $03:A584: AD AD 06    ;
CODE_03A587:    CMP #$56                ; $03:A587: C9 56       ;
CODE_03A589:    BEQ CODE_03A58F         ; $03:A589: F0 04       ;
CODE_03A58B:    CMP #$72                ; $03:A58B: C9 72       ;
CODE_03A58D:    BNE CODE_03A592         ; $03:A58D: D0 03       ;
CODE_03A58F:    INC $06AD               ; $03:A58F: EE AD 06    ;
CODE_03A592:    JSR CODE_03A5CC         ; $03:A592: 20 CC A5    ;
CODE_03A595:    LDA $06A0               ; $03:A595: AD A0 06    ;
CODE_03A598:    JSR CODE_03ACF6         ; $03:A598: 20 F6 AC    ;
CODE_03A59B:    LDX #$00                ; $03:A59B: A2 00       ;
CODE_03A59D:    LDY #$00                ; $03:A59D: A0 00       ;
CODE_03A59F:    STY $00                 ; $03:A59F: 84 00       ;
CODE_03A5A1:    LDA $0EC9               ; $03:A5A1: AD C9 0E    ;
CODE_03A5A4:    BNE CODE_03A5C7         ; $03:A5A4: D0 21       ;
CODE_03A5A6:    LDA $06A1,x             ; $03:A5A6: BD A1 06    ;
CODE_03A5A9:    AND #$C0                ; $03:A5A9: 29 C0       ;
CODE_03A5AB:    ASL A                   ; $03:A5AB: 0A          ;
CODE_03A5AC:    ROL A                   ; $03:A5AC: 2A          ;
CODE_03A5AD:    ROL A                   ; $03:A5AD: 2A          ;
CODE_03A5AE:    TAY                     ; $03:A5AE: A8          ;
CODE_03A5AF:    LDA $06A1,x             ; $03:A5AF: BD A1 06    ;
CODE_03A5B2:    CMP DATA_03A5C8,y       ; $03:A5B2: D9 C8 A5    ;
CODE_03A5B5:    BCS CODE_03A5B9         ; $03:A5B5: B0 02       ;
CODE_03A5B7:    LDA #$00                ; $03:A5B7: A9 00       ;
CODE_03A5B9:    LDY $00                 ; $03:A5B9: A4 00       ;
CODE_03A5BB:    STA ($06),y             ; $03:A5BB: 91 06       ;
CODE_03A5BD:    TYA                     ; $03:A5BD: 98          ;
CODE_03A5BE:    CLC                     ; $03:A5BE: 18          ;
CODE_03A5BF:    ADC #$10                ; $03:A5BF: 69 10       ;
CODE_03A5C1:    TAY                     ; $03:A5C1: A8          ;
CODE_03A5C2:    INX                     ; $03:A5C2: E8          ;
CODE_03A5C3:    CPX #$0D                ; $03:A5C3: E0 0D       ;
CODE_03A5C5:    BCC CODE_03A59F         ; $03:A5C5: 90 D8       ;
CODE_03A5C7:    RTS                     ; $03:A5C7: 60          ;

DATA_03A5C8:    db $14,$51,$8C,$E7                              ;

;Part of level loading routine for objects
;Parse objects
;(equivalent of ProcessAreaData in smb1dis.asm)
CODE_03A5CC:    REP #$10                ; $03:A5CC: C2 10       ;16-bit XY
CODE_03A5CE:    LDX #$0004              ; $03:A5CE: A2 04 00    ;Load 0004 into X
CODE_03A5D1:    STZ $010B               ; $03:A5D1: 9C 0B 01    ;Store zero in 3-byte object flag
CODE_03A5D4:    STX $9E                 ; $03:A5D4: 86 9E       ;Store X into $9E: Sprite index
CODE_03A5D6:    STZ $0729               ; $03:A5D6: 9C 29 07    ;
CODE_03A5D9:    LDY $072C               ; $03:A5D9: AC 2C 07    ;Offset of level object data
CODE_03A5DC:    LDA [$FA],y             ; $03:A5DC: B7 FA       ;\
CODE_03A5DE:    CMP #$FD                ; $03:A5DE: C9 FD       ; |If end-of-area, skip all of this
CODE_03A5E0:    BEQ CODE_03A645         ; $03:A5E0: F0 63       ;/
CODE_03A5E2:    AND #$0F                ; $03:A5E2: 29 0F       ;
CODE_03A5E4:    CMP #$0F                ; $03:A5E4: C9 0F       ;
CODE_03A5E6:    BNE CODE_03A5EB         ; $03:A5E6: D0 03       ;
CODE_03A5E8:    INC $010B               ; $03:A5E8: EE 0B 01    ;
CODE_03A5EB:    LDA $1300,x             ; $03:A5EB: BD 00 13    ;
CODE_03A5EE:    BPL CODE_03A645         ; $03:A5EE: 10 55       ;
CODE_03A5F0:    LDA $010B               ; $03:A5F0: AD 0B 01    ;
CODE_03A5F3:    BEQ CODE_03A5F6         ; $03:A5F3: F0 01       ;
CODE_03A5F5:    INY                     ; $03:A5F5: C8          ;
CODE_03A5F6:    INY                     ; $03:A5F6: C8          ;
CODE_03A5F7:    LDA [$FA],y             ; $03:A5F7: B7 FA       ;
CODE_03A5F9:    ASL A                   ; $03:A5F9: 0A          ;
CODE_03A5FA:    BCC CODE_03A607         ; $03:A5FA: 90 0B       ;
CODE_03A5FC:    LDA $072B               ; $03:A5FC: AD 2B 07    ;
CODE_03A5FF:    BNE CODE_03A607         ; $03:A5FF: D0 06       ;
CODE_03A601:    INC $072B               ; $03:A601: EE 2B 07    ;
CODE_03A604:    INC $072A               ; $03:A604: EE 2A 07    ;
CODE_03A607:    LDY $072C               ; $03:A607: AC 2C 07    ;
CODE_03A60A:    LDA [$FA],y             ; $03:A60A: B7 FA       ;
CODE_03A60C:    AND #$0F                ; $03:A60C: 29 0F       ;
CODE_03A60E:    CMP #$0D                ; $03:A60E: C9 0D       ;
CODE_03A610:    BNE CODE_03A634         ; $03:A610: D0 22       ;
CODE_03A612:    INY                     ; $03:A612: C8          ;
CODE_03A613:    LDA [$FA],y             ; $03:A613: B7 FA       ;
CODE_03A615:    LDY $072C               ; $03:A615: AC 2C 07    ;
CODE_03A618:    AND #$40                ; $03:A618: 29 40       ;
CODE_03A61A:    BNE CODE_03A63D         ; $03:A61A: D0 21       ;
CODE_03A61C:    LDA $072B               ; $03:A61C: AD 2B 07    ;
CODE_03A61F:    BNE CODE_03A63D         ; $03:A61F: D0 1C       ;
CODE_03A621:    LDA $010B               ; $03:A621: AD 0B 01    ;
CODE_03A624:    BEQ CODE_03A627         ; $03:A624: F0 01       ;
CODE_03A626:    INY                     ; $03:A626: C8          ;
CODE_03A627:    INY                     ; $03:A627: C8          ;
CODE_03A628:    LDA [$FA],y             ; $03:A628: B7 FA       ;
CODE_03A62A:    AND #$1F                ; $03:A62A: 29 1F       ;
CODE_03A62C:    STA $072A               ; $03:A62C: 8D 2A 07    ;
CODE_03A62F:    INC $072B               ; $03:A62F: EE 2B 07    ;
CODE_03A632:    BRA CODE_03A64F         ; $03:A632: 80 1B       ;

CODE_03A634:    CMP #$0E                ; $03:A634: C9 0E       ;
CODE_03A636:    BNE CODE_03A63D         ; $03:A636: D0 05       ;
CODE_03A638:    LDA $0728               ; $03:A638: AD 28 07    ;
CODE_03A63B:    BNE CODE_03A645         ; $03:A63B: D0 08       ;
CODE_03A63D:    LDA $072A               ; $03:A63D: AD 2A 07    ;
CODE_03A640:    CMP $0725               ; $03:A640: CD 25 07    ;
CODE_03A643:    BCC CODE_03A64C         ; $03:A643: 90 07       ;
CODE_03A645:    JSR CODE_03A693         ; $03:A645: 20 93 A6    ;
CODE_03A648:    REP #$10                ; $03:A648: C2 10       ;
CODE_03A64A:    BRA CODE_03A652         ; $03:A64A: 80 06       ;

CODE_03A64C:    INC $0729               ; $03:A64C: EE 29 07    ;
CODE_03A64F:    JSR CODE_03A675         ; $03:A64F: 20 75 A6    ;Increase level data index accordingly
CODE_03A652:    LDX $9E                 ; $03:A652: A6 9E       ;
CODE_03A654:    LDA $1300,x             ; $03:A654: BD 00 13    ;
CODE_03A657:    BMI CODE_03A65C         ; $03:A657: 30 03       ;
CODE_03A659:    DEC $1300,x             ; $03:A659: DE 00 13    ;
CODE_03A65C:    DEX                     ; $03:A65C: CA          ;
CODE_03A65D:    BMI CODE_03A662         ; $03:A65D: 30 03       ;
CODE_03A65F:    JMP CODE_03A5D1         ; $03:A65F: 4C D1 A5    ;

CODE_03A662:    LDA $0729               ; $03:A662: AD 29 07    ;
CODE_03A665:    BEQ CODE_03A66A         ; $03:A665: F0 03       ;
CODE_03A667:    JMP CODE_03A5CC         ; $03:A667: 4C CC A5    ;

CODE_03A66A:    LDA $0728               ; $03:A66A: AD 28 07    ;
CODE_03A66D:    BEQ CODE_03A672         ; $03:A66D: F0 03       ;
CODE_03A66F:    JMP CODE_03A5CC         ; $03:A66F: 4C CC A5    ;

CODE_03A672:    SEP #$10                ; $03:A672: E2 10       ;
CODE_03A674:    RTS                     ; $03:A674: 60          ;

;Increase level data index accordingly
CODE_03A675:    REP #$20                ; $03:A675: C2 20       ;\
CODE_03A677:    INC $072C               ; $03:A677: EE 2C 07    ; |
CODE_03A67A:    INC $072C               ; $03:A67A: EE 2C 07    ; | Increase index to level data by 2. If it's a 3-byte object, increase by 3.
CODE_03A67D:    LDA $010B               ; $03:A67D: AD 0B 01    ; |
CODE_03A680:    AND #$00FF              ; $03:A680: 29 FF 00    ; |
CODE_03A683:    BEQ CODE_03A688         ; $03:A683: F0 03       ; |
CODE_03A685:    INC $072C               ; $03:A685: EE 2C 07    ;/
CODE_03A688:    SEP #$20                ; $03:A688: E2 20       ;
CODE_03A68A:    LDA #$00                ; $03:A68A: A9 00       ;
CODE_03A68C:    STA $072B               ; $03:A68C: 8D 2B 07    ;
CODE_03A68F:    STA $010B               ; $03:A68F: 8D 0B 01    ;Clear the 3 byte object flag
CODE_03A692:    RTS                     ; $03:A692: 60          ;

CODE_03A693:    REP #$30                ; $03:A693: C2 30       ;
CODE_03A695:    TXA                     ; $03:A695: 8A          ;
CODE_03A696:    AND #$00FF              ; $03:A696: 29 FF 00    ;
CODE_03A699:    TAX                     ; $03:A699: AA          ;
CODE_03A69A:    SEP #$20                ; $03:A69A: E2 20       ;
CODE_03A69C:    LDA $1300,x             ; $03:A69C: BD 00 13    ;
CODE_03A69F:    BMI CODE_03A6AB         ; $03:A69F: 30 0A       ;
CODE_03A6A1:    REP #$20                ; $03:A6A1: C2 20       ;
CODE_03A6A3:    TXA                     ; $03:A6A3: 8A          ;
CODE_03A6A4:    ASL A                   ; $03:A6A4: 0A          ;
CODE_03A6A5:    TAX                     ; $03:A6A5: AA          ;
CODE_03A6A6:    LDY $1305,x             ; $03:A6A6: BC 05 13    ;
CODE_03A6A9:    SEP #$20                ; $03:A6A9: E2 20       ;
CODE_03A6AB:    LDA $0F82               ; $03:A6AB: AD 82 0F    ;
CODE_03A6AE:    BEQ CODE_03A6B8         ; $03:A6AE: F0 08       ;
CODE_03A6B0:    JSL CODE_048817         ; $03:A6B0: 22 17 88 04 ;
CODE_03A6B4:    STZ $0F82               ; $03:A6B4: 9C 82 0F    ;
CODE_03A6B7:    RTS                     ; $03:A6B7: 60          ;

CODE_03A6B8:    STY $F7                 ; $03:A6B8: 84 F7       ;
CODE_03A6BA:    STZ $F6                 ; $03:A6BA: 64 F6       ;
CODE_03A6BC:    STZ $010B               ; $03:A6BC: 9C 0B 01    ;
CODE_03A6BF:    LDX #$0010              ; $03:A6BF: A2 10 00    ;
CODE_03A6C2:    LDA [$FA],y             ; $03:A6C2: B7 FA       ;
CODE_03A6C4:    CMP #$FD                ; $03:A6C4: C9 FD       ;
CODE_03A6C6:    BEQ CODE_03A672         ; $03:A6C6: F0 AA       ;
CODE_03A6C8:    AND #$0F                ; $03:A6C8: 29 0F       ;
CODE_03A6CA:    CMP #$0F                ; $03:A6CA: C9 0F       ;
CODE_03A6CC:    BNE CODE_03A6D2         ; $03:A6CC: D0 04       ;
CODE_03A6CE:    INC $F6                 ; $03:A6CE: E6 F6       ;
CODE_03A6D0:    BRA CODE_03A6DC         ; $03:A6D0: 80 0A       ;

CODE_03A6D2:    LDX #$0008              ; $03:A6D2: A2 08 00    ;
CODE_03A6D5:    CMP #$0C                ; $03:A6D5: C9 0C       ;
CODE_03A6D7:    BEQ CODE_03A6DC         ; $03:A6D7: F0 03       ;
CODE_03A6D9:    LDX #$0000              ; $03:A6D9: A2 00 00    ;
CODE_03A6DC:    STX $07                 ; $03:A6DC: 86 07       ;
CODE_03A6DE:    LDX $9E                 ; $03:A6DE: A6 9E       ;
CODE_03A6E0:    CMP #$0E                ; $03:A6E0: C9 0E       ;
CODE_03A6E2:    BNE CODE_03A6EA         ; $03:A6E2: D0 06       ;
CODE_03A6E4:    STZ $07                 ; $03:A6E4: 64 07       ;
CODE_03A6E6:    LDA #$2E                ; $03:A6E6: A9 2E       ;
CODE_03A6E8:    BNE CODE_03A747         ; $03:A6E8: D0 5D       ;
CODE_03A6EA:    CMP #$0D                ; $03:A6EA: C9 0D       ;
CODE_03A6EC:    BNE CODE_03A70D         ; $03:A6EC: D0 1F       ;
CODE_03A6EE:    LDA #$22                ; $03:A6EE: A9 22       ;
CODE_03A6F0:    STA $07                 ; $03:A6F0: 85 07       ;
CODE_03A6F2:    LDA $F6                 ; $03:A6F2: A5 F6       ;
CODE_03A6F4:    BEQ CODE_03A6F7         ; $03:A6F4: F0 01       ;
CODE_03A6F6:    INY                     ; $03:A6F6: C8          ;
CODE_03A6F7:    INY                     ; $03:A6F7: C8          ;
CODE_03A6F8:    LDA [$FA],y             ; $03:A6F8: B7 FA       ;
CODE_03A6FA:    AND #$40                ; $03:A6FA: 29 40       ;
CODE_03A6FC:    BEQ CODE_03A766         ; $03:A6FC: F0 68       ;
CODE_03A6FE:    LDA [$FA],y             ; $03:A6FE: B7 FA       ;
CODE_03A700:    AND #$7F                ; $03:A700: 29 7F       ;
CODE_03A702:    CMP #$4B                ; $03:A702: C9 4B       ;
CODE_03A704:    BNE CODE_03A709         ; $03:A704: D0 03       ;
CODE_03A706:    INC $0745               ; $03:A706: EE 45 07    ;
CODE_03A709:    AND #$3F                ; $03:A709: 29 3F       ;
CODE_03A70B:    BRA CODE_03A747         ; $03:A70B: 80 3A       ;

CODE_03A70D:    CMP #$0C                ; $03:A70D: C9 0C       ;
CODE_03A70F:    BCS CODE_03A739         ; $03:A70F: B0 28       ;
CODE_03A711:    LDA $F6                 ; $03:A711: A5 F6       ;
CODE_03A713:    BEQ CODE_03A716         ; $03:A713: F0 01       ;
CODE_03A715:    INY                     ; $03:A715: C8          ;
CODE_03A716:    INY                     ; $03:A716: C8          ;
CODE_03A717:    LDA [$FA],y             ; $03:A717: B7 FA       ;
CODE_03A719:    AND #$70                ; $03:A719: 29 70       ;
CODE_03A71B:    BNE CODE_03A727         ; $03:A71B: D0 0A       ;
CODE_03A71D:    LDA #$16                ; $03:A71D: A9 16       ;
CODE_03A71F:    STA $07                 ; $03:A71F: 85 07       ;
CODE_03A721:    LDA [$FA],y             ; $03:A721: B7 FA       ;
CODE_03A723:    AND #$0F                ; $03:A723: 29 0F       ;
CODE_03A725:    BRA CODE_03A747         ; $03:A725: 80 20       ;

CODE_03A727:    STA $00                 ; $03:A727: 85 00       ;
CODE_03A729:    CMP #$70                ; $03:A729: C9 70       ;
CODE_03A72B:    BNE CODE_03A735         ; $03:A72B: D0 08       ;
CODE_03A72D:    LDA [$FA],y             ; $03:A72D: B7 FA       ;
CODE_03A72F:    AND #$08                ; $03:A72F: 29 08       ;
CODE_03A731:    BEQ CODE_03A735         ; $03:A731: F0 02       ;
CODE_03A733:    STZ $00                 ; $03:A733: 64 00       ;
CODE_03A735:    LDA $00                 ; $03:A735: A5 00       ;
CODE_03A737:    BRA CODE_03A743         ; $03:A737: 80 0A       ;

CODE_03A739:    LDA $F6                 ; $03:A739: A5 F6       ;
CODE_03A73B:    BEQ CODE_03A73E         ; $03:A73B: F0 01       ;
CODE_03A73D:    INY                     ; $03:A73D: C8          ;
CODE_03A73E:    INY                     ; $03:A73E: C8          ;
CODE_03A73F:    LDA [$FA],y             ; $03:A73F: B7 FA       ;
CODE_03A741:    AND #$70                ; $03:A741: 29 70       ;
CODE_03A743:    LSR A                   ; $03:A743: 4A          ;
CODE_03A744:    LSR A                   ; $03:A744: 4A          ;
CODE_03A745:    LSR A                   ; $03:A745: 4A          ;
CODE_03A746:    LSR A                   ; $03:A746: 4A          ;
CODE_03A747:    STA $00                 ; $03:A747: 85 00       ;
CODE_03A749:    LDA $1300,x             ; $03:A749: BD 00 13    ;
CODE_03A74C:    BPL CODE_03A7A6         ; $03:A74C: 10 58       ;
CODE_03A74E:    LDA $072A               ; $03:A74E: AD 2A 07    ;
CODE_03A751:    CMP $0725               ; $03:A751: CD 25 07    ;
CODE_03A754:    BEQ CODE_03A769         ; $03:A754: F0 13       ;
CODE_03A756:    LDY $072C               ; $03:A756: AC 2C 07    ;
CODE_03A759:    LDA [$FA],y             ; $03:A759: B7 FA       ;
CODE_03A75B:    AND #$0F                ; $03:A75B: 29 0F       ;
CODE_03A75D:    CMP #$0E                ; $03:A75D: C9 0E       ;
CODE_03A75F:    BNE CODE_03A766         ; $03:A75F: D0 05       ;
CODE_03A761:    LDA $0728               ; $03:A761: AD 28 07    ;
CODE_03A764:    BNE CODE_03A78D         ; $03:A764: D0 27       ;
CODE_03A766:    SEP #$10                ; $03:A766: E2 10       ;
CODE_03A768:    RTS                     ; $03:A768: 60          ;

CODE_03A769:    LDA $0728               ; $03:A769: AD 28 07    ;
CODE_03A76C:    BEQ CODE_03A77D         ; $03:A76C: F0 0F       ;
CODE_03A76E:    LDA #$00                ; $03:A76E: A9 00       ;
CODE_03A770:    STA $0728               ; $03:A770: 8D 28 07    ;
CODE_03A773:    STA $0729               ; $03:A773: 8D 29 07    ;
CODE_03A776:    STA $9E                 ; $03:A776: 85 9E       ;
CODE_03A778:    STA $9F                 ; $03:A778: 85 9F       ;
CODE_03A77A:    SEP #$10                ; $03:A77A: E2 10       ;
CODE_03A77C:    RTS                     ; $03:A77C: 60          ;

CODE_03A77D:    LDY $072C               ; $03:A77D: AC 2C 07    ;Offset of current level data in index
CODE_03A780:    LDA [$FA],y             ; $03:A780: B7 FA       ;Get level data's high nibble (x-coordinate?)
CODE_03A782:    AND #$F0                ; $03:A782: 29 F0       ;
CODE_03A784:    LSR A                   ; $03:A784: 4A          ;
CODE_03A785:    LSR A                   ; $03:A785: 4A          ;
CODE_03A786:    LSR A                   ; $03:A786: 4A          ;
CODE_03A787:    LSR A                   ; $03:A787: 4A          ;
CODE_03A788:    CMP $0726               ; $03:A788: CD 26 07    ;
CODE_03A78B:    BNE CODE_03A766         ; $03:A78B: D0 D9       ;
CODE_03A78D:    PHX                     ; $03:A78D: DA          ;
CODE_03A78E:    REP #$20                ; $03:A78E: C2 20       ;
CODE_03A790:    TXA                     ; $03:A790: 8A          ;
CODE_03A791:    ASL A                   ; $03:A791: 0A          ;
CODE_03A792:    TAX                     ; $03:A792: AA          ;
CODE_03A793:    LDA $072C               ; $03:A793: AD 2C 07    ;
CODE_03A796:    STA $1305,x             ; $03:A796: 9D 05 13    ;
CODE_03A799:    SEP #$20                ; $03:A799: E2 20       ;
CODE_03A79B:    PLX                     ; $03:A79B: FA          ;
CODE_03A79C:    LDA $F6                 ; $03:A79C: A5 F6       ;\
CODE_03A79E:    BEQ CODE_03A7A3         ; $03:A79E: F0 03       ; | If vertically extendable object
CODE_03A7A0:    INC $010B               ; $03:A7A0: EE 0B 01    ;/ Set flag for 3 byte object
CODE_03A7A3:    JSR CODE_03A675         ; $03:A7A3: 20 75 A6    ;Increase level data index accordingly
CODE_03A7A6:    LDA $F6                 ; $03:A7A6: A5 F6       ;\
CODE_03A7A8:    BEQ CODE_03A7B3         ; $03:A7A8: F0 09       ;/ If vertically extendable objects, branch
CODE_03A7AA:    LDY $F7                 ; $03:A7AA: A4 F7       ;
CODE_03A7AC:    JSL CODE_048E15         ; $03:A7AC: 22 15 8E 04 ;
CODE_03A7B0:    SEP #$10                ; $03:A7B0: E2 10       ;
CODE_03A7B2:    RTS                     ; $03:A7B2: 60          ;

CODE_03A7B3:    SEP #$10                ; $03:A7B3: E2 10       ;\
CODE_03A7B5:    LDA $00                 ; $03:A7B5: A5 00       ; |
CODE_03A7B7:    CLC                     ; $03:A7B7: 18          ; |
CODE_03A7B8:    ADC $07                 ; $03:A7B8: 65 07       ; |
CODE_03A7BA:    ASL A                   ; $03:A7BA: 0A          ; |
CODE_03A7BB:    TAY                     ; $03:A7BB: A8          ; | Build vertically extendable objects appropriately and place them into the level
CODE_03A7BC:    LDA PNTR_03A7C9,y       ; $03:A7BC: B9 C9 A7    ; |
CODE_03A7BF:    STA $04                 ; $03:A7BF: 85 04       ; |
CODE_03A7C1:    LDA PNTR_03A7C9+1,y     ; $03:A7C1: B9 CA A7    ; |
CODE_03A7C4:    STA $05                 ; $03:A7C4: 85 05       ; |
CODE_03A7C6:    JMP ($0004)             ; $03:A7C6: 6C 04 00    ;/

;Pointers to level objects
PNTR_03A7C9:    dw CODE_03A9F7                                  ;$00 - Warp pipe
                dw CODE_03A8AF                                  ;$01 - $0733-dependant object. 00 = normal, green platform. 01 = mushroom, 02 = bullet bill cannons
                dw CODE_03AB63                                  ;$02 - Row of bricks
                dw CODE_03AB72                                  ;$03 - Row of stones
                dw CODE_03AB2A                                  ;$04 - Row of coins
                dw CODE_03AB83                                  ;$05 - Column of bricks
                dw CODE_03AB8A                                  ;$06 - Column of stones
                dw CODE_03A9F7                                  ;$07 - Decoration pipe
                dw CODE_03AC3F                                  ;$08 - Hole object
                dw CODE_03A978                                  ;$09 - Pulley rope
                dw CODE_03AAB0                                  ;$0A - Bridge (high)
                dw CODE_03AAB4                                  ;$0B - Bridge (mid)
                dw CODE_03AAB8                                  ;$0C - Bridge (low)
                dw CODE_03AA7E                                  ;$0D - Water/lava pit
                dw CODE_03AA9E                                  ;$0E - Row of Coin Question blocks (high)
                dw CODE_03AAA2                                  ;$0F - Row of Coin Question blocks (low)
                dw CODE_03A827                                  ;$10 - 
                dw CODE_03A827                                  ;$11 - 
                dw CODE_03A827                                  ;$12 - 
                dw CODE_03A827                                  ;$13 - these point to an rts
                dw CODE_03A827                                  ;$14 - 
                dw CODE_03A827                                  ;$15 - 
                dw CODE_03AC0F                                  ;$16 - 
                dw CODE_03AC0F                                  ;$17 - 
                dw CODE_03AC0F                                  ;$18 - 
                dw CODE_03AC05                                  ;$19 - 
                dw CODE_03AC18                                  ;$1A - 
                dw CODE_03AC18                                  ;$1B - 
                dw CODE_03AC18                                  ;$1C - 
                dw CODE_03AC15                                  ;$1D - 
                dw CODE_03AC18                                  ;$1E - 
                dw CODE_03A98D                                  ;$1F - Underwater horizontal pipe
                dw CODE_03AB4E                                  ;$20 - Empty block
                dw CODE_03ABD5                                  ;$21 - Springboard object
                dw CODE_03A9A0                                  ;$22 - 
                dw CODE_03AAE4                                  ;$23 - 
                dw CODE_03AB3F                                  ;$24 - 
                dw CODE_03AB44                                  ;$25 - 
                dw CODE_03AB38                                  ;$26 - 
                dw CODE_03A862                                  ;$27 - 
                dw CODE_03A87C                                  ;$28 - 
                dw CODE_03A87C                                  ;$29 - 
                dw CODE_03A89A                                  ;$2A - 
                dw CODE_03A89A                                  ;$2B - 
                dw CODE_03A89A                                  ;$2C - 
                dw CODE_03A77A                                  ;$2D - 
                dw CODE_03A828                                  ;$2E - 

CODE_03A827:    RTS                     ; $03:A827: 60          ;

CODE_03A828:    PHX                     ; $03:A828: DA          ;
CODE_03A829:    REP #$30                ; $03:A829: C2 30       ;
CODE_03A82B:    TXA                     ; $03:A82B: 8A          ;
CODE_03A82C:    ASL A                   ; $03:A82C: 0A          ;
CODE_03A82D:    TAX                     ; $03:A82D: AA          ;
CODE_03A82E:    LDY $1305,x             ; $03:A82E: BC 05 13    ;
CODE_03A831:    SEP #$20                ; $03:A831: E2 20       ;
CODE_03A833:    INY                     ; $03:A833: C8          ;
CODE_03A834:    LDA [$FA],y             ; $03:A834: B7 FA       ;
CODE_03A836:    SEP #$10                ; $03:A836: E2 10       ;
CODE_03A838:    PLX                     ; $03:A838: FA          ;
CODE_03A839:    PHA                     ; $03:A839: 48          ;
CODE_03A83A:    AND #$40                ; $03:A83A: 29 40       ;
CODE_03A83C:    BNE CODE_03A850         ; $03:A83C: D0 12       ;
CODE_03A83E:    PLA                     ; $03:A83E: 68          ;
CODE_03A83F:    PHA                     ; $03:A83F: 48          ;
CODE_03A840:    AND #$0F                ; $03:A840: 29 0F       ;
CODE_03A842:    STA $0727               ; $03:A842: 8D 27 07    ;
CODE_03A845:    PLA                     ; $03:A845: 68          ;
CODE_03A846:    AND #$30                ; $03:A846: 29 30       ;
CODE_03A848:    LSR A                   ; $03:A848: 4A          ;
CODE_03A849:    LSR A                   ; $03:A849: 4A          ;
CODE_03A84A:    LSR A                   ; $03:A84A: 4A          ;
CODE_03A84B:    LSR A                   ; $03:A84B: 4A          ;
CODE_03A84C:    STA $0742               ; $03:A84C: 8D 42 07    ;
CODE_03A84F:    RTS                     ; $03:A84F: 60          ;

CODE_03A850:    PLA                     ; $03:A850: 68          ;
CODE_03A851:    AND #$07                ; $03:A851: 29 07       ;
CODE_03A853:    CMP #$04                ; $03:A853: C9 04       ;
CODE_03A855:    BCC CODE_03A85E         ; $03:A855: 90 07       ;
CODE_03A857:    AND #$04                ; $03:A857: 29 04       ;
CODE_03A859:    STA $0744               ; $03:A859: 8D 44 07    ;
CODE_03A85C:    LDA #$00                ; $03:A85C: A9 00       ;
CODE_03A85E:    STA $0741               ; $03:A85E: 8D 41 07    ;
CODE_03A861:    RTS                     ; $03:A861: 60          ;

CODE_03A862:    LDX #$04                ; $03:A862: A2 04       ;"warpzone scroll stop code" ~ SWR | Warpzone setup
CODE_03A864:    LDA $075F               ; $03:A864: AD 5F 07    ;\If world 1-x
CODE_03A867:    BEQ CODE_03A870         ; $03:A867: F0 07       ;/Set warp zone config to world 1's warps
CODE_03A869:    INX                     ; $03:A869: E8          ;adjust config for next checks
CODE_03A86A:    LDY $5C                 ; $03:A86A: A4 5C       ;\If map type is not "ground" and world is not 1-x
CODE_03A86C:    DEY                     ; $03:A86C: 88          ; |Set warp zone config to world 4's single warp
CODE_03A86D:    BNE CODE_03A870         ; $03:A86D: D0 01       ;/
CODE_03A86F:    INX                     ; $03:A86F: E8          ;Else set warp zone config to world 4's outside warps
CODE_03A870:    TXA                     ; $03:A870: 8A          ;\
CODE_03A871:    STA $06D6               ; $03:A871: 8D D6 06    ;/Store warpzone config
CODE_03A874:    JSR CODE_0390FC         ; $03:A874: 20 FC 90    ;Routine to write the "Welcome to warpzone" message
CODE_03A877:    LDA #$0D                ; $03:A877: A9 0D       ;\Destroy all piranha plants
CODE_03A879:    JSR CODE_03A885         ; $03:A879: 20 85 A8    ;/
CODE_03A87C:    LDA $0723               ; $03:A87C: AD 23 07    ;\
CODE_03A87F:    EOR #$01                ; $03:A87F: 49 01       ; |Flip scroll enabled flag on or off
CODE_03A881:    STA $0723               ; $03:A881: 8D 23 07    ;/
CODE_03A884:    RTS                     ; $03:A884: 60          ;Return

CODE_03A885:    STA $00                 ; $03:A885: 85 00       ;\ Destroy all sprites with sprite number specified in A by setting them
CODE_03A887:    LDA #$00                ; $03:A887: A9 00       ; |off-screen.
CODE_03A889:    LDX #$08                ; $03:A889: A2 08       ; |
CODE_03A88B:    LDY $1C,x               ; $03:A88B: B4 1C       ; |
CODE_03A88D:    CPY $00                 ; $03:A88D: C4 00       ; |
CODE_03A88F:    BNE CODE_03A893         ; $03:A88F: D0 02       ; |
CODE_03A891:    STA $10,x               ; $03:A891: 95 10       ; |
CODE_03A893:    DEX                     ; $03:A893: CA          ; |
CODE_03A894:    BPL CODE_03A88B         ; $03:A894: 10 F5       ; |
CODE_03A896:    RTS                     ; $03:A896: 60          ;/

DATA_03A897:    db $14,$17,$18                                  ;Generators: Bullet Bill, Flying Cheep-Cheep, Stop Generators

CODE_03A89A:    LDX $00                 ; $03:A89A: A6 00       ;
CODE_03A89C:    LDA DATA_03A897-8,x     ; $03:A89C: BD 8F A8    ;
CODE_03A89F:    LDY #$09                ; $03:A89F: A0 09       ;
CODE_03A8A1:    DEY                     ; $03:A8A1: 88          ;
CODE_03A8A2:    BMI CODE_03A8AB         ; $03:A8A2: 30 07       ;
CODE_03A8A4:    CMP $001C,y             ; $03:A8A4: D9 1C 00    ;
CODE_03A8A7:    BNE CODE_03A8A1         ; $03:A8A7: D0 F8       ;
CODE_03A8A9:    LDA #$00                ; $03:A8A9: A9 00       ;\
CODE_03A8AB:    STA $06CD               ; $03:A8AB: 8D CD 06    ;/Set enemy to generate: nothing
CODE_03A8AE:    RTS                     ; $03:A8AE: 60          ;

CODE_03A8AF:    LDA $0733               ; $03:A8AF: AD 33 07    ;\
CODE_03A8B2:    ASL A                   ; $03:A8B2: 0A          ; |
CODE_03A8B3:    TAY                     ; $03:A8B3: A8          ; |
CODE_03A8B4:    LDA PNTR_03A8C1,y       ; $03:A8B4: B9 C1 A8    ; |Execute routines according to area object styles
CODE_03A8B7:    STA $04                 ; $03:A8B7: 85 04       ; |
CODE_03A8B9:    LDA PNTR_03A8C1+1,y     ; $03:A8B9: B9 C2 A8    ; |
CODE_03A8BC:    STA $05                 ; $03:A8BC: 85 05       ; |
CODE_03A8BE:    JMP ($0004)             ; $03:A8BE: 6C 04 00    ;/

;Code for object $01: $0733-dependant object
PNTR_03A8C1:    dw CODE_03A8C7                                  ;Regular
                dw CODE_03A937                                  ;Mushroom platforms
                dw CODE_03AB99                                  ;Bullet bill cannons

CODE_03A8C7:    JSR CODE_03ACC2         ; $03:A8C7: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03A8CA:    STX $0ECA               ; $03:A8CA: 8E CA 0E    ;
CODE_03A8CD:    LDA $1300,x             ; $03:A8CD: BD 00 13    ;
CODE_03A8D0:    BEQ CODE_03A932         ; $03:A8D0: F0 60       ;
CODE_03A8D2:    BPL CODE_03A8E5         ; $03:A8D2: 10 11       ;
CODE_03A8D4:    TYA                     ; $03:A8D4: 98          ;
CODE_03A8D5:    STA $1300,x             ; $03:A8D5: 9D 00 13    ;
CODE_03A8D8:    LDA $0725               ; $03:A8D8: AD 25 07    ;
CODE_03A8DB:    ORA $0726               ; $03:A8DB: 0D 26 07    ;
CODE_03A8DE:    BEQ CODE_03A8E5         ; $03:A8DE: F0 05       ;
CODE_03A8E0:    LDA #$1A                ; $03:A8E0: A9 1A       ;
CODE_03A8E2:    JMP CODE_03A96E         ; $03:A8E2: 4C 6E A9    ;

CODE_03A8E5:    STA $0ECB               ; $03:A8E5: 8D CB 0E    ;
CODE_03A8E8:    LDX $07                 ; $03:A8E8: A6 07       ;
CODE_03A8EA:    LDA #$1B                ; $03:A8EA: A9 1B       ;
CODE_03A8EC:    STA $06A1,x             ; $03:A8EC: 9D A1 06    ;
CODE_03A8EF:    TXY                     ; $03:A8EF: 9B          ;
CODE_03A8F0:    INY                     ; $03:A8F0: C8          ;
CODE_03A8F1:    LDX $0ECA               ; $03:A8F1: AE CA 0E    ;
CODE_03A8F4:    DEC $0ECB               ; $03:A8F4: CE CB 0E    ;
CODE_03A8F7:    BEQ CODE_03A913         ; $03:A8F7: F0 1A       ;
CODE_03A8F9:    LDA $130F,x             ; $03:A8F9: BD 0F 13    ;
CODE_03A8FC:    BNE CODE_03A90A         ; $03:A8FC: D0 0C       ;
CODE_03A8FE:    INC $130F,x             ; $03:A8FE: FE 0F 13    ;
CODE_03A901:    LDA #$45                ; $03:A901: A9 45       ;
CODE_03A903:    STA $06A1,y             ; $03:A903: 99 A1 06    ;
CODE_03A906:    LDA #$49                ; $03:A906: A9 49       ;
CODE_03A908:    BRA CODE_03A92E         ; $03:A908: 80 24       ;

CODE_03A90A:    LDA #$46                ; $03:A90A: A9 46       ;
CODE_03A90C:    STA $06A1,y             ; $03:A90C: 99 A1 06    ;
CODE_03A90F:    LDA #$4A                ; $03:A90F: A9 4A       ;
CODE_03A911:    BRA CODE_03A92E         ; $03:A911: 80 1B       ;

CODE_03A913:    LDA $130F,x             ; $03:A913: BD 0F 13    ;
CODE_03A916:    BEQ CODE_03A924         ; $03:A916: F0 0C       ;
CODE_03A918:    STZ $130F,x             ; $03:A918: 9E 0F 13    ;
CODE_03A91B:    LDA #$47                ; $03:A91B: A9 47       ;
CODE_03A91D:    STA $06A1,y             ; $03:A91D: 99 A1 06    ;
CODE_03A920:    LDA #$4B                ; $03:A920: A9 4B       ;
CODE_03A922:    BRA CODE_03A92E         ; $03:A922: 80 0A       ;

CODE_03A924:    STZ $130F,x             ; $03:A924: 9E 0F 13    ;
CODE_03A927:    LDA #$48                ; $03:A927: A9 48       ;
CODE_03A929:    STA $06A1,y             ; $03:A929: 99 A1 06    ;
CODE_03A92C:    LDA #$4C                ; $03:A92C: A9 4C       ;
CODE_03A92E:    TYX                     ; $03:A92E: BB          ;
CODE_03A92F:    JMP CODE_03A968         ; $03:A92F: 4C 68 A9    ;

CODE_03A932:    LDA #$1C                ; $03:A932: A9 1C       ;
CODE_03A934:    JMP CODE_03A96E         ; $03:A934: 4C 6E A9    ;

CODE_03A937:    JSR CODE_03ACB3         ; $03:A937: 20 B3 AC    ;
CODE_03A93A:    STY $06                 ; $03:A93A: 84 06       ;
CODE_03A93C:    BCC CODE_03A949         ; $03:A93C: 90 0B       ;
CODE_03A93E:    LDA $1300,x             ; $03:A93E: BD 00 13    ;
CODE_03A941:    LSR A                   ; $03:A941: 4A          ;
CODE_03A942:    STA $1314,x             ; $03:A942: 9D 14 13    ;
CODE_03A945:    LDA #$1D                ; $03:A945: A9 1D       ;
CODE_03A947:    BRA CODE_03A96E         ; $03:A947: 80 25       ;

CODE_03A949:    LDA #$1F                ; $03:A949: A9 1F       ;
CODE_03A94B:    LDY $1300,x             ; $03:A94B: BC 00 13    ;
CODE_03A94E:    BEQ CODE_03A96E         ; $03:A94E: F0 1E       ;
CODE_03A950:    LDA $1314,x             ; $03:A950: BD 14 13    ;
CODE_03A953:    STA $06                 ; $03:A953: 85 06       ;
CODE_03A955:    LDX $07                 ; $03:A955: A6 07       ;
CODE_03A957:    LDA #$1E                ; $03:A957: A9 1E       ;
CODE_03A959:    STA $06A1,x             ; $03:A959: 9D A1 06    ;
CODE_03A95C:    CPY $06                 ; $03:A95C: C4 06       ;
CODE_03A95E:    BNE CODE_03A98C         ; $03:A95E: D0 2C       ;
CODE_03A960:    INX                     ; $03:A960: E8          ;
CODE_03A961:    LDA #$4F                ; $03:A961: A9 4F       ;
CODE_03A963:    STA $06A1,x             ; $03:A963: 9D A1 06    ;
CODE_03A966:    LDA #$50                ; $03:A966: A9 50       ;
CODE_03A968:    INX                     ; $03:A968: E8          ;
CODE_03A969:    LDY #$0F                ; $03:A969: A0 0F       ;
CODE_03A96B:    JMP CODE_03AC78         ; $03:A96B: 4C 78 AC    ;Place tile in Accumulator into level.

CODE_03A96E:    LDX $07                 ; $03:A96E: A6 07       ;
CODE_03A970:    LDY #$00                ; $03:A970: A0 00       ;
CODE_03A972:    JMP CODE_03AC78         ; $03:A972: 4C 78 AC    ;Place tile in Accumulator into level.

DATA_03A975:    db $42,$41,$43                                  ;Pulley rope map16 tiles: left corner, middle, right corner

;Pulley rope
CODE_03A978:    JSR CODE_03ACB3         ; $03:A978: 20 B3 AC    ;Get length of pulley rope object
CODE_03A97B:    LDY #$00                ; $03:A97B: A0 00       ;Initialize tile buffer index
CODE_03A97D:    BCS CODE_03A986         ; $03:A97D: B0 07       ;If starting, render left corner
CODE_03A97F:    INY                     ; $03:A97F: C8          ;\
CODE_03A980:    LDA $1300,x             ; $03:A980: BD 00 13    ; |
CODE_03A983:    BNE CODE_03A986         ; $03:A983: D0 01       ;/If not at the end, render rope
CODE_03A985:    INY                     ; $03:A985: C8          ;Otherwise render right corner
CODE_03A986:    LDA DATA_03A975,y       ; $03:A986: B9 75 A9    ;\
CODE_03A989:    STA $06A1               ; $03:A989: 8D A1 06    ;/render
CODE_03A98C:    RTS                     ; $03:A98C: 60          ;

;Underwater horizontal pipe
CODE_03A98D:    JSR CODE_03ACC2         ; $03:A98D: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03A990:    LDY $1300,x             ; $03:A990: BC 00 13    ;
CODE_03A993:    LDX $07                 ; $03:A993: A6 07       ;
CODE_03A995:    LDA #$75                ; $03:A995: A9 75       ;Pipe top tile
CODE_03A997:    STA $06A1,x             ; $03:A997: 9D A1 06    ;
CODE_03A99A:    LDA #$76                ; $03:A99A: A9 76       ;Pipe bottom tile
CODE_03A99C:    STA $06A2,x             ; $03:A99C: 9D A2 06    ;
CODE_03A99F:    RTS                     ; $03:A99F: 60          ;

CODE_03A9A0:    LDY #$03                ; $03:A9A0: A0 03       ;
CODE_03A9A2:    JSR CODE_03ACB6         ; $03:A9A2: 20 B6 AC    ;
CODE_03A9A5:    LDY #$0A                ; $03:A9A5: A0 0A       ;
CODE_03A9A7:    DEY                     ; $03:A9A7: 88          ;
CODE_03A9A8:    DEY                     ; $03:A9A8: 88          ;
CODE_03A9A9:    STY $05                 ; $03:A9A9: 84 05       ;
CODE_03A9AB:    LDY $1300,x             ; $03:A9AB: BC 00 13    ;
CODE_03A9AE:    STY $06                 ; $03:A9AE: 84 06       ;
CODE_03A9B0:    LDX $05                 ; $03:A9B0: A6 05       ;
CODE_03A9B2:    INX                     ; $03:A9B2: E8          ;
CODE_03A9B3:    LDA DATA_03A9E3,y       ; $03:A9B3: B9 E3 A9    ;
CODE_03A9B6:    CMP #$00                ; $03:A9B6: C9 00       ;
CODE_03A9B8:    BEQ CODE_03A9C2         ; $03:A9B8: F0 08       ;
CODE_03A9BA:    LDX #$00                ; $03:A9BA: A2 00       ;
CODE_03A9BC:    LDY $05                 ; $03:A9BC: A4 05       ;
CODE_03A9BE:    JSR CODE_03AC78         ; $03:A9BE: 20 78 AC    ;Place tile in Accumulator into level.
CODE_03A9C1:    CLC                     ; $03:A9C1: 18          ;
CODE_03A9C2:    LDY $06                 ; $03:A9C2: A4 06       ;
CODE_03A9C4:    LDA DATA_03A9E7,y       ; $03:A9C4: B9 E7 A9    ;
CODE_03A9C7:    STA $06A1,x             ; $03:A9C7: 9D A1 06    ;
CODE_03A9CA:    LDA DATA_03A9EB,y       ; $03:A9CA: B9 EB A9    ;
CODE_03A9CD:    STA $06A2,x             ; $03:A9CD: 9D A2 06    ;
CODE_03A9D0:    BCS CODE_03A9E2         ; $03:A9D0: B0 10       ;
CODE_03A9D2:    LDX #$06                ; $03:A9D2: A2 06       ;
CODE_03A9D4:    LDA #$00                ; $03:A9D4: A9 00       ;
CODE_03A9D6:    STA $06A1,x             ; $03:A9D6: 9D A1 06    ;
CODE_03A9D9:    DEX                     ; $03:A9D9: CA          ;
CODE_03A9DA:    BPL CODE_03A9D4         ; $03:A9DA: 10 F8       ;
CODE_03A9DC:    LDA DATA_03A9EF,y       ; $03:A9DC: B9 EF A9    ;
CODE_03A9DF:    STA $06A8               ; $03:A9DF: 8D A8 06    ;
CODE_03A9E2:    RTS                     ; $03:A9E2: 60          ;

DATA_03A9E3:    db $19,$18,$00,$00                              ;

DATA_03A9E7:    db $19,$22,$21,$20                              ;

DATA_03A9EB:    db $19,$25,$24,$23                              ;

DATA_03A9EF:    db $15,$14                                      ;

DATA_03A9F1:    db $19,$18,$17,$16,$19,$18                      ;

;Generate pipe
CODE_03A9F7:    JSR CODE_03AA4D         ; $03:A9F7: 20 4D AA    ;Get pipe height
CODE_03A9FA:    LDA $00                 ; $03:A9FA: A5 00       ;\
CODE_03A9FC:    BEQ CODE_03AA02         ; $03:A9FC: F0 04       ;/Branch if warp pipe
CODE_03A9FE:    INY                     ; $03:A9FE: C8          ;
CODE_03A9FF:    INY                     ; $03:A9FF: C8          ;
CODE_03AA00:    INY                     ; $03:AA00: C8          ;
CODE_03AA01:    INY                     ; $03:AA01: C8          ;
CODE_03AA02:    TYA                     ; $03:AA02: 98          ;
CODE_03AA03:    PHA                     ; $03:AA03: 48          ;Preserve A
CODE_03AA04:    LDA $0760               ; $03:AA04: AD 60 07    ;\
CODE_03AA07:    ORA $075F               ; $03:AA07: 0D 5F 07    ; |If 1-1, piranha plants do not appear
CODE_03AA0A:    BEQ CODE_03AA39         ; $03:AA0A: F0 2D       ;/
CODE_03AA0C:    LDY $1300,x             ; $03:AA0C: BC 00 13    ;
CODE_03AA0F:    BEQ CODE_03AA39         ; $03:AA0F: F0 28       ;
CODE_03AA11:    JSR CODE_03AA6B         ; $03:AA11: 20 6B AA    ;\Get free sprite slot for the piranha plant
CODE_03AA14:    BCS CODE_03AA39         ; $03:AA14: B0 23       ;/If none, skip
CODE_03AA16:    JSR CODE_03ACE0         ; $03:AA16: 20 E0 AC    ;\Get Xpos of screen ((AND #$F0>>4)<<4)
CODE_03AA19:    CLC                     ; $03:AA19: 18          ; |
CODE_03AA1A:    ADC #$08                ; $03:AA1A: 69 08       ; |Add 8 pixels to it
CODE_03AA1C:    STA $021A,x             ; $03:AA1C: 9D 1A 02    ; |Store into Sprite X-Position
CODE_03AA1F:    LDA $0725               ; $03:AA1F: AD 25 07    ; |
CODE_03AA22:    ADC #$00                ; $03:AA22: 69 00       ; |Handle page boundary accordingly
CODE_03AA24:    STA $79,x               ; $03:AA24: 95 79       ;/
CODE_03AA26:    LDA #$01                ; $03:AA26: A9 01       ;\
CODE_03AA28:    STA $BC,x               ; $03:AA28: 95 BC       ; |Sprite is onscreen in a normal way
CODE_03AA2A:    STA $10,x               ; $03:AA2A: 95 10       ;/
CODE_03AA2C:    JSR CODE_03ACE8         ; $03:AA2C: 20 E8 AC    ;\ (A << 4) + $20
CODE_03AA2F:    STA $0238,x             ; $03:AA2F: 9D 38 02    ;/Store ypos
CODE_03AA32:    LDA #$0D                ; $03:AA32: A9 0D       ;\
CODE_03AA34:    STA $1C,x               ; $03:AA34: 95 1C       ;/Sprite to generate: Piranha plant
CODE_03AA36:    JSR CODE_03CB99         ; $03:AA36: 20 99 CB    ;Run piranha plant code?
CODE_03AA39:    PLA                     ; $03:AA39: 68          ;Recover A
CODE_03AA3A:    TAY                     ; $03:AA3A: A8          ;
CODE_03AA3B:    LDX $07                 ; $03:AA3B: A6 07       ;
CODE_03AA3D:    LDA DATA_03A9EF,y       ; $03:AA3D: B9 EF A9    ;
CODE_03AA40:    STA $06A1,x             ; $03:AA40: 9D A1 06    ;
CODE_03AA43:    INX                     ; $03:AA43: E8          ;
CODE_03AA44:    LDA DATA_03A9F1,y       ; $03:AA44: B9 F1 A9    ;
CODE_03AA47:    LDY $06                 ; $03:AA47: A4 06       ;
CODE_03AA49:    DEY                     ; $03:AA49: 88          ;
CODE_03AA4A:    JMP CODE_03AC78         ; $03:AA4A: 4C 78 AC    ;Place tile in Accumulator into level.

CODE_03AA4D:    LDY #$01                ; $03:AA4D: A0 01       ;
CODE_03AA4F:    JSR CODE_03ACB6         ; $03:AA4F: 20 B6 AC    ;
CODE_03AA52:    JSR CODE_03ACC2         ; $03:AA52: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03AA55:    TYA                     ; $03:AA55: 98          ;
CODE_03AA56:    AND #$07                ; $03:AA56: 29 07       ;
CODE_03AA58:    STA $06                 ; $03:AA58: 85 06       ;
CODE_03AA5A:    LDY $1300,x             ; $03:AA5A: BC 00 13    ;
CODE_03AA5D:    RTS                     ; $03:AA5D: 60          ;

CODE_03AA5E:    LDX #$00                ; $03:AA5E: A2 00       ;\ Get free sprite slot (begin-end)
CODE_03AA60:    CLC                     ; $03:AA60: 18          ; |
CODE_03AA61:    LDA $10,x               ; $03:AA61: B5 10       ; |
CODE_03AA63:    BEQ CODE_03AA6A         ; $03:AA63: F0 05       ; |
CODE_03AA65:    INX                     ; $03:AA65: E8          ; |
CODE_03AA66:    CPX #$08                ; $03:AA66: E0 08       ; |
CODE_03AA68:    BNE CODE_03AA60         ; $03:AA68: D0 F6       ; |
CODE_03AA6A:    RTS                     ; $03:AA6A: 60          ;/

CODE_03AA6B:    LDX #$08                ; $03:AA6B: A2 08       ;\ Routine only used by piranha plant
CODE_03AA6D:    CLC                     ; $03:AA6D: 18          ; |
CODE_03AA6E:    LDA $10,x               ; $03:AA6E: B5 10       ; |
CODE_03AA70:    BEQ CODE_03AA77         ; $03:AA70: F0 05       ; |Get free sprite slot (end-begin)
CODE_03AA72:    DEX                     ; $03:AA72: CA          ; |Index = $FF if none
CODE_03AA73:    CPX #$FF                ; $03:AA73: E0 FF       ; |
CODE_03AA75:    BNE CODE_03AA6D         ; $03:AA75: D0 F6       ; |
CODE_03AA77:    RTS                     ; $03:AA77: 60          ;/

DATA_03AA78:    db $86,$87,$00,$88                              ;Water/lava pit top tiles: Underwater, normal, cave, castle

DATA_03AA7C:    db $8A,$8B                                      ;Water/lava pit tiles

;Water/lava pit
CODE_03AA7E:    JSR CODE_03ACB3         ; $03:AA7E: 20 B3 AC    ;Get length of object
CODE_03AA81:    LDX #$0A                ; $03:AA81: A2 0A       ;Set row to 10
CODE_03AA83:    LDA $5C                 ; $03:AA83: A5 5C       ;\
CODE_03AA85:    CMP #$03                ; $03:AA85: C9 03       ; |
CODE_03AA87:    BNE CODE_03AA8A         ; $03:AA87: D0 01       ; |
CODE_03AA89:    INX                     ; $03:AA89: E8          ;/Set row to 11 if castle level
CODE_03AA8A:    LDY $5C                 ; $03:AA8A: A4 5C       ;\
CODE_03AA8C:    LDA DATA_03AA78,y       ; $03:AA8C: B9 78 AA    ; |
CODE_03AA8F:    STA $06A1,x             ; $03:AA8F: 9D A1 06    ; | Render tile depending on level type
CODE_03AA92:    INX                     ; $03:AA92: E8          ; |
CODE_03AA93:    TYA                     ; $03:AA93: 98          ; |
CODE_03AA94:    LSR A                   ; $03:AA94: 4A          ; |
CODE_03AA95:    TAY                     ; $03:AA95: A8          ; |
CODE_03AA96:    LDA DATA_03AA7C,y       ; $03:AA96: B9 7C AA    ;/
CODE_03AA99:    LDY #$01                ; $03:AA99: A0 01       ;Height 2
CODE_03AA9B:    JMP CODE_03AC78         ; $03:AA9B: 4C 78 AC    ;Place tile in Accumulator into level.

;Row of Coin Question blocks (high)
CODE_03AA9E:    LDA #$03                ; $03:AA9E: A9 03       ;Set row
CODE_03AAA0:    BRA CODE_03AAA4         ; $03:AAA0: 80 02       ;

;Row of Coin Question blocks (low)
CODE_03AAA2:    LDA #$07                ; $03:AAA2: A9 07       ;Set row
CODE_03AAA4:    PHA                     ; $03:AAA4: 48          ;
CODE_03AAA5:    JSR CODE_03ACB3         ; $03:AAA5: 20 B3 AC    ;Get length of object
CODE_03AAA8:    PLA                     ; $03:AAA8: 68          ;
CODE_03AAA9:    TAX                     ; $03:AAA9: AA          ;
CODE_03AAAA:    LDA #$E7                ; $03:AAAA: A9 E7       ;Coin question block map16
CODE_03AAAC:    STA $06A1,x             ; $03:AAAC: 9D A1 06    ;
CODE_03AAAF:    RTS                     ; $03:AAAF: 60          ;

;Bridge (high)
CODE_03AAB0:    LDA #$06                ; $03:AAB0: A9 06       ;set row
CODE_03AAB2:    BRA CODE_03AABA         ; $03:AAB2: 80 06       ;

;Bridge (mid)
CODE_03AAB4:    LDA #$07                ; $03:AAB4: A9 07       ;set row
CODE_03AAB6:    BRA CODE_03AABA         ; $03:AAB6: 80 02       ;

;Bridge (low)
CODE_03AAB8:    LDA #$09                ; $03:AAB8: A9 09       ;set row
CODE_03AABA:    PHA                     ; $03:AABA: 48          ;
CODE_03AABB:    JSR CODE_03ACB3         ; $03:AABB: 20 B3 AC    ;Get bridge length
CODE_03AABE:    LDA $1300,x             ; $03:AABE: BD 00 13    ;
CODE_03AAC1:    BEQ CODE_03AAD3         ; $03:AAC1: F0 10       ;
CODE_03AAC3:    LDA $130F,x             ; $03:AAC3: BD 0F 13    ;
CODE_03AAC6:    BNE CODE_03AACF         ; $03:AAC6: D0 07       ;
CODE_03AAC8:    INC $130F,x             ; $03:AAC8: FE 0F 13    ;
CODE_03AACB:    LDA #$0E                ; $03:AACB: A9 0E       ;Bridge begin railing tile
CODE_03AACD:    BRA CODE_03AAD8         ; $03:AACD: 80 09       ;

CODE_03AACF:    LDA #$0D                ; $03:AACF: A9 0D       ;Bridge middle railing tile
CODE_03AAD1:    BRA CODE_03AAD8         ; $03:AAD1: 80 05       ;

CODE_03AAD3:    STZ $130F,x             ; $03:AAD3: 9E 0F 13    ;
CODE_03AAD6:    LDA #$0F                ; $03:AAD6: A9 0F       ;Bridge end railing tile
CODE_03AAD8:    PLX                     ; $03:AAD8: FA          ;
CODE_03AAD9:    STA $06A1,x             ; $03:AAD9: 9D A1 06    ;render tile
CODE_03AADC:    INX                     ; $03:AADC: E8          ;go down once
CODE_03AADD:    LDY #$00                ; $03:AADD: A0 00       ;\bridge height is 1
CODE_03AADF:    LDA #$6B                ; $03:AADF: A9 6B       ; |Bridge tile
CODE_03AAE1:    JMP CODE_03AC78         ; $03:AAE1: 4C 78 AC    ;/Place tile in Accumulator into level.

CODE_03AAE4:    LDA #$28                ; $03:AAE4: A9 28       ;
CODE_03AAE6:    STA $06A1               ; $03:AAE6: 8D A1 06    ;
CODE_03AAE9:    LDX #$01                ; $03:AAE9: A2 01       ;
CODE_03AAEB:    LDY #$08                ; $03:AAEB: A0 08       ;
CODE_03AAED:    LDA #$29                ; $03:AAED: A9 29       ;
CODE_03AAEF:    JSR CODE_03AC78         ; $03:AAEF: 20 78 AC    ;
CODE_03AAF2:    LDA #$64                ; $03:AAF2: A9 64       ;
CODE_03AAF4:    STA $06AB               ; $03:AAF4: 8D AB 06    ;
CODE_03AAF7:    JSR CODE_03ACE0         ; $03:AAF7: 20 E0 AC    ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AAFA:    SEC                     ; $03:AAFA: 38          ;
CODE_03AAFB:    SBC #$08                ; $03:AAFB: E9 08       ;
CODE_03AAFD:    STA $021F               ; $03:AAFD: 8D 1F 02    ;
CODE_03AB00:    LDA $0725               ; $03:AB00: AD 25 07    ;
CODE_03AB03:    SBC #$00                ; $03:AB03: E9 00       ;
CODE_03AB05:    STA $7E                 ; $03:AB05: 85 7E       ;
CODE_03AB07:    LDA #$30                ; $03:AB07: A9 30       ;
CODE_03AB09:    STA $023D               ; $03:AB09: 8D 3D 02    ;
CODE_03AB0C:    LDA #$B0                ; $03:AB0C: A9 B0       ;
CODE_03AB0E:    STA $010D               ; $03:AB0E: 8D 0D 01    ;
CODE_03AB11:    LDA #$30                ; $03:AB11: A9 30       ;
CODE_03AB13:    STA $21                 ; $03:AB13: 85 21       ;
CODE_03AB15:    INC $15                 ; $03:AB15: E6 15       ;
CODE_03AB17:    LDA #$FF                ; $03:AB17: A9 FF       ;
CODE_03AB19:    STA $0FB4               ; $03:AB19: 8D B4 0F    ;
CODE_03AB1C:    STA $0FB5               ; $03:AB1C: 8D B5 0F    ;
CODE_03AB1F:    STA $0FB6               ; $03:AB1F: 8D B6 0F    ;
CODE_03AB22:    STA $0FB7               ; $03:AB22: 8D B7 0F    ;
CODE_03AB25:    RTS                     ; $03:AB25: 60          ;

DATA_03AB26:    db $EA,$E9,$E9,$E9                              ;Coin map16, depending on $7E005C
                                                            ;Underwater coin, regular coin, underground coin, castle coin
;Row of coins object
CODE_03AB2A:    LDY $5C                 ; $03:AB2A: A4 5C       ;\
CODE_03AB2C:    LDA DATA_03AB26,y       ; $03:AB2C: B9 26 AB    ;/Load coin map16 tile number
CODE_03AB2F:    JMP CODE_03AB77         ; $03:AB2F: 4C 77 AB    ;Render

DATA_03AB32:    db $06,$07,$08                                  ;

DATA_03AB35:    db $FD,$10,$8D                                  ;Bowser bridge map16 tiles: Axe, Axechainrope Thing, Bridge

;
CODE_03AB38:    LDY #$0C                ; $03:AB38: A0 0C       ;
CODE_03AB3A:    JSR CODE_03ACB6         ; $03:AB3A: 20 B6 AC    ;
CODE_03AB3D:    BRA CODE_03AB44         ; $03:AB3D: 80 05       ;

;Bowser Bridge Tiles
CODE_03AB3F:    LDA #$08                ; $03:AB3F: A9 08       ;
CODE_03AB41:    STA $0773               ; $03:AB41: 8D 73 07    ;
CODE_03AB44:    LDY $00                 ; $03:AB44: A4 00       ;
CODE_03AB46:    LDX DATA_03AB32-2,y     ; $03:AB46: BE 30 AB    ;
CODE_03AB49:    LDA DATA_03AB35-2,y     ; $03:AB49: B9 33 AB    ;
CODE_03AB4C:    BRA CODE_03AB55         ; $03:AB4C: 80 07       ;

;Empty Block object
CODE_03AB4E:    JSR CODE_03ACC2         ; $03:AB4E: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03AB51:    LDX $07                 ; $03:AB51: A6 07       ;
CODE_03AB53:    LDA #$FC                ; $03:AB53: A9 FC       ;Empty block map16 tile
CODE_03AB55:    LDY #$00                ; $03:AB55: A0 00       ;
CODE_03AB57:    JMP CODE_03AC78         ; $03:AB57: 4C 78 AC    ;Place tile in Accumulator into level.

DATA_03AB5A:    db $71,$64,$64,$6A                              ;Stone map16, depending on $5C
                                                            ;Coral stone, normal stone, underground stone, castle dark brick

DATA_03AB5E:    db $26,$51,$52,$52,$8C                          ;Brick map16, depending on $5C.
                                                            ;Coral, normal bricks, underground bricks, castle bricks, cloud tiles

;Row of bricks
CODE_03AB63:    LDY $5C                 ; $03:AB63: A4 5C       ;\
CODE_03AB65:    LDA $0743               ; $03:AB65: AD 43 07    ; |
CODE_03AB68:    BEQ CODE_03AB6C         ; $03:AB68: F0 02       ; |
CODE_03AB6A:    LDY #$04                ; $03:AB6A: A0 04       ; |If cloud level, set index to $04
CODE_03AB6C:    LDA DATA_03AB5E,y       ; $03:AB6C: B9 5E AB    ;/ Get brick map16 tile number
CODE_03AB6F:    JMP CODE_03AB77         ; $03:AB6F: 4C 77 AB    ;Render

;Row of stones object
CODE_03AB72:    LDY $5C                 ; $03:AB72: A4 5C       ;\
CODE_03AB74:    LDA DATA_03AB5A,y       ; $03:AB74: B9 5A AB    ;/Get stone map16 tile number and render

CODE_03AB77:    PHA                     ; $03:AB77: 48          ;map16 tile on stack
CODE_03AB78:    JSR CODE_03ACB3         ; $03:AB78: 20 B3 AC    ;check object length
CODE_03AB7B:    LDX $07                 ; $03:AB7B: A6 07       ;
CODE_03AB7D:    LDY #$00                ; $03:AB7D: A0 00       ;Set vertical height of 1 block high
CODE_03AB7F:    PLA                     ; $03:AB7F: 68          ;
CODE_03AB80:    JMP CODE_03AC78         ; $03:AB80: 4C 78 AC    ;Place tile in Accumulator into level.

;Column of bricks object
CODE_03AB83:    LDY $5C                 ; $03:AB83: A4 5C       ;\
CODE_03AB85:    LDA DATA_03AB5E,y       ; $03:AB85: B9 5E AB    ; |Get brick map16 tile depending on area type and render
CODE_03AB88:    BRA CODE_03AB8F         ; $03:AB88: 80 05       ;/ Note that in this column code, there's no cloud area override.

;Column of stones object
CODE_03AB8A:    LDY $5C                 ; $03:AB8A: A4 5C       ;\
CODE_03AB8C:    LDA DATA_03AB5A,y       ; $03:AB8C: B9 5A AB    ;/Get stone map16 tile number and render

CODE_03AB8F:    PHA                     ; $03:AB8F: 48          ;
CODE_03AB90:    JSR CODE_03ACC2         ; $03:AB90: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03AB93:    PLA                     ; $03:AB93: 68          ;
CODE_03AB94:    LDX $07                 ; $03:AB94: A6 07       ;
CODE_03AB96:    JMP CODE_03AC78         ; $03:AB96: 4C 78 AC    ;Place tile in Accumulator into level.

CODE_03AB99:    JSR CODE_03ACC2         ; $03:AB99: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03AB9C:    LDX $07                 ; $03:AB9C: A6 07       ;
CODE_03AB9E:    LDA #$6C                ; $03:AB9E: A9 6C       ;
CODE_03ABA0:    STA $06A1,x             ; $03:ABA0: 9D A1 06    ;
CODE_03ABA3:    INX                     ; $03:ABA3: E8          ;
CODE_03ABA4:    DEY                     ; $03:ABA4: 88          ;
CODE_03ABA5:    BMI CODE_03ABB5         ; $03:ABA5: 30 0E       ;
CODE_03ABA7:    LDA #$6D                ; $03:ABA7: A9 6D       ;
CODE_03ABA9:    STA $06A1,x             ; $03:ABA9: 9D A1 06    ;
CODE_03ABAC:    INX                     ; $03:ABAC: E8          ;
CODE_03ABAD:    DEY                     ; $03:ABAD: 88          ;
CODE_03ABAE:    BMI CODE_03ABB5         ; $03:ABAE: 30 05       ;
CODE_03ABB0:    LDA #$6E                ; $03:ABB0: A9 6E       ;
CODE_03ABB2:    JSR CODE_03AC78         ; $03:ABB2: 20 78 AC    ;Place tile in Accumulator into level.
CODE_03ABB5:    LDX $026A               ; $03:ABB5: AE 6A 02    ;
CODE_03ABB8:    JSR CODE_03ACE8         ; $03:ABB8: 20 E8 AC    ; (A << 4) + $20
CODE_03ABBB:    STA $0277,x             ; $03:ABBB: 9D 77 02    ;
CODE_03ABBE:    LDA $0725               ; $03:ABBE: AD 25 07    ;
CODE_03ABC1:    STA $026B,x             ; $03:ABC1: 9D 6B 02    ;
CODE_03ABC4:    JSR CODE_03ACE0         ; $03:ABC4: 20 E0 AC    ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABC7:    STA $0271,x             ; $03:ABC7: 9D 71 02    ;
CODE_03ABCA:    INX                     ; $03:ABCA: E8          ;
CODE_03ABCB:    CPX #$06                ; $03:ABCB: E0 06       ;
CODE_03ABCD:    BCC CODE_03ABD1         ; $03:ABCD: 90 02       ;
CODE_03ABCF:    LDX #$00                ; $03:ABCF: A2 00       ;
CODE_03ABD1:    STX $026A               ; $03:ABD1: 8E 6A 02    ;
CODE_03ABD4:    RTS                     ; $03:ABD4: 60          ;

;Springboard object
CODE_03ABD5:    JSR CODE_03ACC2         ; $03:ABD5: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03ABD8:    JSR CODE_03AA5E         ; $03:ABD8: 20 5E AA    ;Get free sprite slot (begin-end)
CODE_03ABDB:    JSR CODE_03ACE0         ; $03:ABDB: 20 E0 AC    ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABDE:    STA $021A,x             ; $03:ABDE: 9D 1A 02    ;/Store into sprite X-pos, low byte
CODE_03ABE1:    LDA $0725               ; $03:ABE1: AD 25 07    ;\Store screen number number into sprite X-pos, high byte
CODE_03ABE4:    STA $79,x               ; $03:ABE4: 95 79       ;/
CODE_03ABE6:    JSR CODE_03ACE8         ; $03:ABE6: 20 E8 AC    ;(A << 4) + $20
CODE_03ABE9:    STA $0238,x             ; $03:ABE9: 9D 38 02    ;
CODE_03ABEC:    STA $5E,x               ; $03:ABEC: 95 5E       ;
CODE_03ABEE:    LDA #$32                ; $03:ABEE: A9 32       ;\
CODE_03ABF0:    STA $1C,x               ; $03:ABF0: 95 1C       ;/Sprite to generate: springboard
CODE_03ABF2:    LDY #$01                ; $03:ABF2: A0 01       ;
CODE_03ABF4:    STY $BC,x               ; $03:ABF4: 94 BC       ;
CODE_03ABF6:    INC $10,x               ; $03:ABF6: F6 10       ;
CODE_03ABF8:    LDX $07                 ; $03:ABF8: A6 07       ;
CODE_03ABFA:    LDA #$6F                ; $03:ABFA: A9 6F       ;
CODE_03ABFC:    STA $06A1,x             ; $03:ABFC: 9D A1 06    ;
CODE_03ABFF:    LDA #$70                ; $03:ABFF: A9 70       ;
CODE_03AC01:    STA $06A2,x             ; $03:AC01: 9D A2 06    ;
CODE_03AC04:    RTS                     ; $03:AC04: 60          ;

CODE_03AC05:    LDA $075D               ; $03:AC05: AD 5D 07    ;
CODE_03AC08:    BEQ CODE_03AC3E         ; $03:AC08: F0 34       ;
CODE_03AC0A:    STZ $075D               ; $03:AC0A: 9C 5D 07    ;
CODE_03AC0D:    BRA CODE_03AC18         ; $03:AC0D: 80 09       ;

CODE_03AC0F:    JSR CODE_03AC38         ; $03:AC0F: 20 38 AC    ;
CODE_03AC12:    JMP CODE_03AC2A         ; $03:AC12: 4C 2A AC    ;

CODE_03AC15:    STZ $06BC               ; $03:AC15: 9C BC 06    ;
CODE_03AC18:    JSR CODE_03AC38         ; $03:AC18: 20 38 AC    ;
CODE_03AC1B:    STY $07                 ; $03:AC1B: 84 07       ;
CODE_03AC1D:    LDA #$00                ; $03:AC1D: A9 00       ;
CODE_03AC1F:    LDY $5C                 ; $03:AC1F: A4 5C       ;
CODE_03AC21:    DEY                     ; $03:AC21: 88          ;
CODE_03AC22:    BEQ CODE_03AC26         ; $03:AC22: F0 02       ;
CODE_03AC24:    LDA #$05                ; $03:AC24: A9 05       ;
CODE_03AC26:    CLC                     ; $03:AC26: 18          ;
CODE_03AC27:    ADC $07                 ; $03:AC27: 65 07       ;
CODE_03AC29:    TAY                     ; $03:AC29: A8          ;
CODE_03AC2A:    LDA DATA_03BF87,y       ; $03:AC2A: B9 87 BF    ;
CODE_03AC2D:    PHA                     ; $03:AC2D: 48          ;
CODE_03AC2E:    JSR CODE_03ACC2         ; $03:AC2E: 20 C2 AC    ;Get object attributes from level object pointer
CODE_03AC31:    LDX $07                 ; $03:AC31: A6 07       ;
CODE_03AC33:    PLA                     ; $03:AC33: 68          ;
CODE_03AC34:    STA $06A1,x             ; $03:AC34: 9D A1 06    ;
CODE_03AC37:    RTS                     ; $03:AC37: 60          ;

CODE_03AC38:    LDA $00                 ; $03:AC38: A5 00       ;
CODE_03AC3A:    SEC                     ; $03:AC3A: 38          ;
CODE_03AC3B:    SBC #$00                ; $03:AC3B: E9 00       ;
CODE_03AC3D:    TAY                     ; $03:AC3D: A8          ;
CODE_03AC3E:    RTS                     ; $03:AC3E: 60          ;

;Hole object
CODE_03AC3F:    JSR CODE_03ACB3         ; $03:AC3F: 20 B3 AC    ;\
CODE_03AC42:    BCC CODE_03AC70         ; $03:AC42: 90 2C       ;/Skip if length already defined
CODE_03AC44:    LDA $5C                 ; $03:AC44: A5 5C       ;\
CODE_03AC46:    BNE CODE_03AC70         ; $03:AC46: D0 28       ;/Branch if not water level.
CODE_03AC48:    LDX $026A               ; $03:AC48: AE 6A 02    ;Whirlpool spawning code. Get whirlpool index
CODE_03AC4B:    JSR CODE_03ACE0         ; $03:AC4B: 20 E0 AC    ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AC4E:    SEC                     ; $03:AC4E: 38          ; |
CODE_03AC4F:    SBC #$10                ; $03:AC4F: E9 10       ; |subtract 10 pixels
CODE_03AC51:    STA $0271,x             ; $03:AC51: 9D 71 02    ;/store as left extent of whirlpool
CODE_03AC54:    LDA $0725               ; $03:AC54: AD 25 07    ;\
CODE_03AC57:    SBC #$00                ; $03:AC57: E9 00       ; |Get page location
CODE_03AC59:    STA $026B,x             ; $03:AC59: 9D 6B 02    ;/ subtract with carry, store into page of whirlpool
CODE_03AC5C:    INY                     ; $03:AC5C: C8          ;\
CODE_03AC5D:    INY                     ; $03:AC5D: C8          ;/Increment length by 2
CODE_03AC5E:    TYA                     ; $03:AC5E: 98          ;\
CODE_03AC5F:    ASL A                   ; $03:AC5F: 0A          ; |
CODE_03AC60:    ASL A                   ; $03:AC60: 0A          ; |
CODE_03AC61:    ASL A                   ; $03:AC61: 0A          ; |Multiply by 16 to get size of whirlpool
CODE_03AC62:    ASL A                   ; $03:AC62: 0A          ; |
CODE_03AC63:    STA $0277,x             ; $03:AC63: 9D 77 02    ;/Store into size
CODE_03AC66:    INX                     ; $03:AC66: E8          ;Increment whirlpool index
CODE_03AC67:    CPX #$05                ; $03:AC67: E0 05       ;\
CODE_03AC69:    BCC CODE_03AC6D         ; $03:AC69: 90 02       ;/If we didn't reach 5th whirlpool yet, branch
CODE_03AC6B:    LDX #$00                ; $03:AC6B: A2 00       ;Otherwise, back at index 0
CODE_03AC6D:    STX $026A               ; $03:AC6D: 8E 6A 02    ;Store whirlpool index
CODE_03AC70:    LDX $5C                 ; $03:AC70: A6 5C       ;Get map type in x, but it's lost again later?
CODE_03AC72:    LDA #$00                ; $03:AC72: A9 00       ;Map16 tile: hole
CODE_03AC74:    LDX #$08                ; $03:AC74: A2 08       ;Row number: 9 (bottom)
CODE_03AC76:    LDY #$0F                ; $03:AC76: A0 0F       ;Vertical height of object

;Place map16 tile into level
;Input:
;A: Map16 tile
;X: Row number (TODO: verify?)
;Y: Height of the object
CODE_03AC78:    STY $0735               ; $03:AC78: 8C 35 07    ;Store vertical height of object
CODE_03AC7B:    LDY $06A1,x             ; $03:AC7B: BC A1 06    ;\Get map16 tile of current spot in question of being rendered
CODE_03AC7E:    BEQ CODE_03ACA4         ; $03:AC7E: F0 24       ;/If empty, proceed
CODE_03AC80:    CPY #$1B                ; $03:AC80: C0 1B       ;\If middle of green platform, wait until next row
CODE_03AC82:    BEQ CODE_03ACA7         ; $03:AC82: F0 23       ;/
CODE_03AC84:    CPY #$1E                ; $03:AC84: C0 1E       ;\If middle of mushroom platform, wait until next row
CODE_03AC86:    BEQ CODE_03ACA7         ; $03:AC86: F0 1F       ;/
CODE_03AC88:    CPY #$E7                ; $03:AC88: C0 E7       ;\If coin block
CODE_03AC8A:    BEQ CODE_03ACA4         ; $03:AC8A: F0 18       ;/overwrite
CODE_03AC8C:    CPY #$46                ; $03:AC8C: C0 46       ;\If middle part of green platform's brown base w/ shadow, wait until next row
CODE_03AC8E:    BEQ CODE_03ACA7         ; $03:AC8E: F0 17       ;/
CODE_03AC90:    CPY #$4A                ; $03:AC90: C0 4A       ;\If middle part of green platform's brown base, wait until next row
CODE_03AC92:    BEQ CODE_03ACA7         ; $03:AC92: F0 13       ;/
CODE_03AC94:    CPY #$E7                ; $03:AC94: C0 E7       ;\If map16 tile $E8-$FF, wait until next row
CODE_03AC96:    BCS CODE_03ACA7         ; $03:AC96: B0 0F       ;/($E7 is not included because it's already checked for earlier)
CODE_03AC98:    CPY #$57                ; $03:AC98: C0 57       ;\
CODE_03AC9A:    BEQ CODE_03ACA0         ; $03:AC9A: F0 04       ; |If ground tile base, skip ground tile top check
CODE_03AC9C:    CPY #$56                ; $03:AC9C: C0 56       ; |If ground tile top, overwrite
CODE_03AC9E:    BNE CODE_03ACA4         ; $03:AC9E: D0 04       ;/
CODE_03ACA0:    CMP #$50                ; $03:ACA0: C9 50       ;\
CODE_03ACA2:    BEQ CODE_03ACA7         ; $03:ACA2: F0 03       ;/If mushroom platform stem, wait until next row
CODE_03ACA4:    STA $06A1,x             ; $03:ACA4: 9D A1 06    ;Otherwise, write the map16 tile
CODE_03ACA7:    INX                     ; $03:ACA7: E8          ;Next row
CODE_03ACA8:    CPX #$0D                ; $03:ACA8: E0 0D       ;\
CODE_03ACAA:    BCS CODE_03ACB2         ; $03:ACAA: B0 06       ;/Stop rendering if at bottom of screen
CODE_03ACAC:    LDY $0735               ; $03:ACAC: AC 35 07    ;\Decrement object height and stop if we're done rendering all height.
CODE_03ACAF:    DEY                     ; $03:ACAF: 88          ; |
CODE_03ACB0:    BPL CODE_03AC78         ; $03:ACB0: 10 C6       ;/
CODE_03ACB2:    RTS                     ; $03:ACB2: 60          ;

;Check if object is fixed length
;Output: set carry = object has fixed length, clear carry = object has specified length
;TODO: verify
CODE_03ACB3:    JSR CODE_03ACC2         ; $03:ACB3: 20 C2 AC    ;Get object attributes from level object pointer

CODE_03ACB6:    LDA $1300,x             ; $03:ACB6: BD 00 13    ;Check object length buffer
CODE_03ACB9:    CLC                     ; $03:ACB9: 18          ;Clear carry
CODE_03ACBA:    BPL CODE_03ACC1         ; $03:ACBA: 10 05       ;\if $FF,
CODE_03ACBC:    TYA                     ; $03:ACBC: 98          ; | Set specified fixed length in object length buffer?
CODE_03ACBD:    STA $1300,x             ; $03:ACBD: 9D 00 13    ;/
CODE_03ACC0:    SEC                     ; $03:ACC0: 38          ;Set carry
CODE_03ACC1:    RTS                     ; $03:ACC1: 60          ;

;Get object attributes
;Output: $07 = Row/Y location, Y = ??? TODO: Find out.
CODE_03ACC2:    PHX                     ; $03:ACC2: DA          ;
CODE_03ACC3:    REP #$30                ; $03:ACC3: C2 30       ;
CODE_03ACC5:    TXA                     ; $03:ACC5: 8A          ;
CODE_03ACC6:    AND #$00FF              ; $03:ACC6: 29 FF 00    ;
CODE_03ACC9:    ASL A                   ; $03:ACC9: 0A          ;
CODE_03ACCA:    TAX                     ; $03:ACCA: AA          ;
CODE_03ACCB:    LDY $1305,x             ; $03:ACCB: BC 05 13    ;
CODE_03ACCE:    SEP #$20                ; $03:ACCE: E2 20       ;
CODE_03ACD0:    LDA [$FA],y             ; $03:ACD0: B7 FA       ;\Get first byte of level object
CODE_03ACD2:    AND #$0F                ; $03:ACD2: 29 0F       ; |get Y coordinates
CODE_03ACD4:    STA $07                 ; $03:ACD4: 85 07       ;/Save as row location
CODE_03ACD6:    INY                     ; $03:ACD6: C8          ;\
CODE_03ACD7:    LDA [$FA],y             ; $03:ACD7: B7 FA       ; |Get next byte of level object
CODE_03ACD9:    AND #$0F                ; $03:ACD9: 29 0F       ; |
CODE_03ACDB:    SEP #$10                ; $03:ACDB: E2 10       ; |(object number?)
CODE_03ACDD:    TAY                     ; $03:ACDD: A8          ; |
CODE_03ACDE:    PLX                     ; $03:ACDE: FA          ;/
CODE_03ACDF:    RTS                     ; $03:ACDF: 60          ;

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ACE0:    LDA $0726               ; $03:ACE0: AD 26 07    ;\
CODE_03ACE3:    ASL A                   ; $03:ACE3: 0A          ; | Turn screen X-coordinates from 16x16 to pixel coordinate
CODE_03ACE4:    ASL A                   ; $03:ACE4: 0A          ; |
CODE_03ACE5:    ASL A                   ; $03:ACE5: 0A          ; |
CODE_03ACE6:    ASL A                   ; $03:ACE6: 0A          ; |
CODE_03ACE7:    RTS                     ; $03:ACE7: 60          ;/

CODE_03ACE8:    LDA $07                 ; $03:ACE8: A5 07       ;
CODE_03ACEA:    ASL A                   ; $03:ACEA: 0A          ;
CODE_03ACEB:    ASL A                   ; $03:ACEB: 0A          ;
CODE_03ACEC:    ASL A                   ; $03:ACEC: 0A          ;
CODE_03ACED:    ASL A                   ; $03:ACED: 0A          ;
CODE_03ACEE:    CLC                     ; $03:ACEE: 18          ;\Account for the statusbar area
CODE_03ACEF:    ADC #$20                ; $03:ACEF: 69 20       ;/
CODE_03ACF1:    RTS                     ; $03:ACF1: 60          ;

DATA_03ACF2:    db $00,$D0                                      ;
DATA_03ACF4:    db $05,$05                                      ;

CODE_03ACF6:    PHA                     ; $03:ACF6: 48          ;
CODE_03ACF7:    LSR A                   ; $03:ACF7: 4A          ;
CODE_03ACF8:    LSR A                   ; $03:ACF8: 4A          ;
CODE_03ACF9:    LSR A                   ; $03:ACF9: 4A          ;
CODE_03ACFA:    LSR A                   ; $03:ACFA: 4A          ;
CODE_03ACFB:    TAY                     ; $03:ACFB: A8          ;
CODE_03ACFC:    LDA DATA_03ACF4,y       ; $03:ACFC: B9 F4 AC    ;
CODE_03ACFF:    STA $07                 ; $03:ACFF: 85 07       ;
CODE_03AD01:    PLA                     ; $03:AD01: 68          ;
CODE_03AD02:    AND #$0F                ; $03:AD02: 29 0F       ;
CODE_03AD04:    CLC                     ; $03:AD04: 18          ;
CODE_03AD05:    ADC DATA_03ACF2,y       ; $03:AD05: 79 F2 AC    ;
CODE_03AD08:    STA $06                 ; $03:AD08: 85 06       ;
CODE_03AD0A:    RTS                     ; $03:AD0A: 60          ;

;Place tile into level. See subroutine for i/o
CODE_03AD0B:    PHB                     ; $03:AD0B: 8B          ;\
CODE_03AD0C:    PHK                     ; $03:AD0C: 4B          ; |
CODE_03AD0D:    PLB                     ; $03:AD0D: AB          ; |
CODE_03AD0E:    JSR CODE_03AC78         ; $03:AD0E: 20 78 AC    ; |Place tile in Accumulator into level.
CODE_03AD11:    PLB                     ; $03:AD11: AB          ; |
CODE_03AD12:    RTL                     ; $03:AD12: 6B          ;/

;Check object length attributes
CODE_03AD13:    PHB                     ; $03:AD13: 8B          ;\
CODE_03AD14:    PHK                     ; $03:AD14: 4B          ; |
CODE_03AD15:    PLB                     ; $03:AD15: AB          ; |
CODE_03AD16:    JSR CODE_03ACB6         ; $03:AD16: 20 B6 AC    ; |Check if object is fixed or varied length
CODE_03AD19:    PLB                     ; $03:AD19: AB          ; |
CODE_03AD1A:    RTL                     ; $03:AD1A: 6B          ;/

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD1B:    PHB                     ; $03:AD1B: 8B          ;\
CODE_03AD1C:    PHK                     ; $03:AD1C: 4B          ; |
CODE_03AD1D:    PLB                     ; $03:AD1D: AB          ; |
CODE_03AD1E:    JSR CODE_03ACE0         ; $03:AD1E: 20 E0 AC    ; |Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD21:    PLB                     ; $03:AD21: AB          ; |
CODE_03AD22:    RTL                     ; $03:AD22: 6B          ;/

;Get free sprite slot (begin-end)
CODE_03AD23:    PHB                     ; $03:AD23: 8B          ;\
CODE_03AD24:    PHK                     ; $03:AD24: 4B          ; |
CODE_03AD25:    PLB                     ; $03:AD25: AB          ; |
CODE_03AD26:    JSR CODE_03AA5E         ; $03:AD26: 20 5E AA    ; |Jump to get free sprite slot
CODE_03AD29:    PLB                     ; $03:AD29: AB          ; |
CODE_03AD2A:    RTL                     ; $03:AD2A: 6B          ;/

DATA_03AD2B:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Mysterious, Empty space
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF                          ;

;Main operation mode
CODE_03AD60:    LDA $0772               ; $03:AD60: AD 72 07    ;\
CODE_03AD63:    ASL A                   ; $03:AD63: 0A          ; |Get "In-game modes"
CODE_03AD64:    TAX                     ; $03:AD64: AA          ; |
CODE_03AD65:    JMP (PNTR_03AD68,x)     ; $03:AD65: 7C 68 AD    ;/

PNTR_03AD68:    dw CODE_039E0C                                  ;$00 Screen goes black
                dw CODE_038C18                                  ;$01 "Image before level" mode
                dw CODE_039ED8                                  ;$02 Pause timer, Sprites go disappear
                dw CODE_03AD70                                  ;$03 Normal mode

CODE_03AD70:    JSL CODE_05C860         ; $03:AD70: 22 60 C8 05 ;
CODE_03AD74:    LDA $28                 ; $03:AD74: A5 28       ;
CODE_03AD76:    BNE CODE_03AD7B         ; $03:AD76: D0 03       ;
CODE_03AD78:    STZ $0E67               ; $03:AD78: 9C 67 0E    ;
CODE_03AD7B:    LDX $0753               ; $03:AD7B: AE 53 07    ;
CODE_03AD7E:    LDA $0FF4,x             ; $03:AD7E: BD F4 0F    ;
CODE_03AD81:    STA $0FF4               ; $03:AD81: 8D F4 0F    ;
CODE_03AD84:    JSR CODE_03AF21         ; $03:AD84: 20 21 AF    ;
CODE_03AD87:    LDA $0772               ; $03:AD87: AD 72 07    ;
CODE_03AD8A:    CMP #$03                ; $03:AD8A: C9 03       ;
CODE_03AD8C:    BCS CODE_03AD8F         ; $03:AD8C: B0 01       ;
CODE_03AD8E:    RTS                     ; $03:AD8E: 60          ;

CODE_03AD8F:    JSR CODE_03B680         ; $03:AD8F: 20 80 B6    ;
CODE_03AD92:    LDX #$00                ; $03:AD92: A2 00       ;
CODE_03AD94:    STX $9E                 ; $03:AD94: 86 9E       ;
CODE_03AD96:    LDA $0E67               ; $03:AD96: AD 67 0E    ;
CODE_03AD99:    BEQ CODE_03AD9F         ; $03:AD99: F0 04       ;
CODE_03AD9B:    CMP #$7F                ; $03:AD9B: C9 7F       ;
CODE_03AD9D:    BEQ CODE_03ADBD         ; $03:AD9D: F0 1E       ;
CODE_03AD9F:    JSR CODE_03C3B0         ; $03:AD9F: 20 B0 C3    ;
CODE_03ADA2:    LDA $0E67               ; $03:ADA2: AD 67 0E    ;
CODE_03ADA5:    BNE CODE_03ADAA         ; $03:ADA5: D0 03       ;
CODE_03ADA7:    JSR CODE_038B30         ; $03:ADA7: 20 30 8B    ;
CODE_03ADAA:    INX                     ; $03:ADAA: E8          ;
CODE_03ADAB:    CPX #$0A                ; $03:ADAB: E0 0A       ;
CODE_03ADAD:    BNE CODE_03AD94         ; $03:ADAD: D0 E5       ;
CODE_03ADAF:    JSL CODE_05D300         ; $03:ADAF: 22 00 D3 05 ;
CODE_03ADB3:    LDA $0E67               ; $03:ADB3: AD 67 0E    ;
CODE_03ADB6:    BEQ CODE_03ADBD         ; $03:ADB6: F0 05       ;
CODE_03ADB8:    LDA #$7F                ; $03:ADB8: A9 7F       ;
CODE_03ADBA:    STA $0E67               ; $03:ADBA: 8D 67 0E    ;
CODE_03ADBD:    JSR CODE_03FD9C         ; $03:ADBD: 20 9C FD    ;
CODE_03ADC0:    JSR CODE_03FD13         ; $03:ADC0: 20 13 FD    ;
CODE_03ADC3:    JSR CODE_03F710         ; $03:ADC3: 20 10 F7    ;
CODE_03ADC6:    LDX #$01                ; $03:ADC6: A2 01       ;
CODE_03ADC8:    STX $9E                 ; $03:ADC8: 86 9E       ;
CODE_03ADCA:    JSR CODE_03C01F         ; $03:ADCA: 20 1F C0    ;
CODE_03ADCD:    DEX                     ; $03:ADCD: CA          ;
CODE_03ADCE:    STX $9E                 ; $03:ADCE: 86 9E       ;
CODE_03ADD0:    JSR CODE_03C01F         ; $03:ADD0: 20 1F C0    ;
CODE_03ADD3:    JSR CODE_03C084         ; $03:ADD3: 20 84 C0    ;
CODE_03ADD6:    JSR CODE_03BCB9         ; $03:ADD6: 20 B9 BC    ;
CODE_03ADD9:    JSR CODE_03BAA2         ; $03:ADD9: 20 A2 BA    ;
CODE_03ADDC:    JSR CODE_03B84E         ; $03:ADDC: 20 4E B8    ;
CODE_03ADDF:    JSR CODE_03B8F5         ; $03:ADDF: 20 F5 B8    ;
CODE_03ADE2:    JSR CODE_03B7DE         ; $03:ADE2: 20 DE B7    ;
CODE_03ADE5:    JSR CODE_039352         ; $03:ADE5: 20 52 93    ;
CODE_03ADE8:    LDA $BB                 ; $03:ADE8: A5 BB       ;
CODE_03ADEA:    CMP #$02                ; $03:ADEA: C9 02       ;
CODE_03ADEC:    BPL CODE_03AE00         ; $03:ADEC: 10 12       ;
CODE_03ADEE:    LDA $07AF               ; $03:ADEE: AD AF 07    ;
CODE_03ADF1:    BEQ CODE_03AE12         ; $03:ADF1: F0 1F       ;
CODE_03ADF3:    CMP #$04                ; $03:ADF3: C9 04       ;
CODE_03ADF5:    BNE CODE_03AE00         ; $03:ADF5: D0 09       ;
CODE_03ADF7:    LDA $0787               ; $03:ADF7: AD 87 07    ;
CODE_03ADFA:    BNE CODE_03AE00         ; $03:ADFA: D0 04       ;
CODE_03ADFC:    JSL CODE_05C8FB         ; $03:ADFC: 22 FB C8 05 ;
CODE_03AE00:    LDA $09                 ; $03:AE00: A5 09       ;
CODE_03AE02:    PHY                     ; $03:AE02: 5A          ;
CODE_03AE03:    LDY $07AF               ; $03:AE03: AC AF 07    ;
CODE_03AE06:    CPY #$08                ; $03:AE06: C0 08       ;
CODE_03AE08:    BCS CODE_03AE0C         ; $03:AE08: B0 02       ;
CODE_03AE0A:    LSR A                   ; $03:AE0A: 4A          ;
CODE_03AE0B:    LSR A                   ; $03:AE0B: 4A          ;
CODE_03AE0C:    PLY                     ; $03:AE0C: 7A          ;
CODE_03AE0D:    JSR CODE_03B2C4         ; $03:AE0D: 20 C4 B2    ;
CODE_03AE10:    BRA CODE_03AE26         ; $03:AE10: 80 14       ;

CODE_03AE12:    LDA $0787               ; $03:AE12: AD 87 07    ;
CODE_03AE15:    CMP #$01                ; $03:AE15: C9 01       ;
CODE_03AE17:    BNE CODE_03AE23         ; $03:AE17: D0 0A       ;
CODE_03AE19:    LDA $0F                 ; $03:AE19: A5 0F       ;
CODE_03AE1B:    CMP #$0C                ; $03:AE1B: C9 0C       ;
CODE_03AE1D:    BEQ CODE_03AE23         ; $03:AE1D: F0 04       ;
CODE_03AE1F:    JSL CODE_049A88         ; $03:AE1F: 22 88 9A 04 ;
CODE_03AE23:    JSR CODE_03B2FD         ; $03:AE23: 20 FD B2    ;
CODE_03AE26:    LDA $0A                 ; $03:AE26: A5 0A       ;
CODE_03AE28:    STA $0D                 ; $03:AE28: 85 0D       ;
CODE_03AE2A:    STZ $0C                 ; $03:AE2A: 64 0C       ;
CODE_03AE2C:    LDA $0773               ; $03:AE2C: AD 73 07    ;
CODE_03AE2F:    CMP #$06                ; $03:AE2F: C9 06       ;
CODE_03AE31:    BEQ CODE_03AE4D         ; $03:AE31: F0 1A       ;
CODE_03AE33:    LDA $071F               ; $03:AE33: AD 1F 07    ;
CODE_03AE36:    BNE CODE_03AE4A         ; $03:AE36: D0 12       ;
CODE_03AE38:    LDA $073D               ; $03:AE38: AD 3D 07    ;
CODE_03AE3B:    CMP #$20                ; $03:AE3B: C9 20       ;
CODE_03AE3D:    BMI CODE_03AE4D         ; $03:AE3D: 30 0E       ;
CODE_03AE3F:    LDA $073D               ; $03:AE3F: AD 3D 07    ;
CODE_03AE42:    SBC #$20                ; $03:AE42: E9 20       ;
CODE_03AE44:    STA $073D               ; $03:AE44: 8D 3D 07    ;
CODE_03AE47:    STZ $1A00               ; $03:AE47: 9C 00 1A    ;
CODE_03AE4A:    JSR CODE_03A295         ; $03:AE4A: 20 95 A2    ;
CODE_03AE4D:    RTS                     ; $03:AE4D: 60          ;

CODE_03AE4E:    LDA $06FF               ; $03:AE4E: AD FF 06    ;
CODE_03AE51:    CLC                     ; $03:AE51: 18          ;
CODE_03AE52:    ADC $03A1               ; $03:AE52: 6D A1 03    ;
CODE_03AE55:    STA $06FF               ; $03:AE55: 8D FF 06    ;
CODE_03AE58:    LDA $0723               ; $03:AE58: AD 23 07    ;
CODE_03AE5B:    BEQ CODE_03AE60         ; $03:AE5B: F0 03       ;
CODE_03AE5D:    JMP CODE_03AED5         ; $03:AE5D: 4C D5 AE    ;

CODE_03AE60:    LDA $0755               ; $03:AE60: AD 55 07    ;
CODE_03AE63:    CMP #$50                ; $03:AE63: C9 50       ;
CODE_03AE65:    BCC CODE_03AED5         ; $03:AE65: 90 6E       ;
CODE_03AE67:    LDA $078D               ; $03:AE67: AD 8D 07    ;
CODE_03AE6A:    BNE CODE_03AED5         ; $03:AE6A: D0 69       ;
CODE_03AE6C:    LDY $06FF               ; $03:AE6C: AC FF 06    ;
CODE_03AE6F:    DEY                     ; $03:AE6F: 88          ;
CODE_03AE70:    BMI CODE_03AED5         ; $03:AE70: 30 63       ;
CODE_03AE72:    INY                     ; $03:AE72: C8          ;
CODE_03AE73:    CPY #$02                ; $03:AE73: C0 02       ;
CODE_03AE75:    BCC CODE_03AE78         ; $03:AE75: 90 01       ;
CODE_03AE77:    DEY                     ; $03:AE77: 88          ;
CODE_03AE78:    LDA $0755               ; $03:AE78: AD 55 07    ;
CODE_03AE7B:    CMP #$70                ; $03:AE7B: C9 70       ;
CODE_03AE7D:    BCC CODE_03AE82         ; $03:AE7D: 90 03       ;
CODE_03AE7F:    LDY $06FF               ; $03:AE7F: AC FF 06    ;
CODE_03AE82:    TYA                     ; $03:AE82: 98          ;
CODE_03AE83:    STA $0775               ; $03:AE83: 8D 75 07    ;
CODE_03AE86:    CLC                     ; $03:AE86: 18          ;
CODE_03AE87:    ADC $073D               ; $03:AE87: 6D 3D 07    ;
CODE_03AE8A:    STA $073D               ; $03:AE8A: 8D 3D 07    ;
CODE_03AE8D:    LDA $071C               ; $03:AE8D: AD 1C 07    ;
CODE_03AE90:    STA $00                 ; $03:AE90: 85 00       ;
CODE_03AE92:    LDA $071A               ; $03:AE92: AD 1A 07    ;
CODE_03AE95:    STA $01                 ; $03:AE95: 85 01       ;
CODE_03AE97:    REP #$30                ; $03:AE97: C2 30       ;
CODE_03AE99:    TYA                     ; $03:AE99: 98          ;
CODE_03AE9A:    AND #$00FF              ; $03:AE9A: 29 FF 00    ;
CODE_03AE9D:    CLC                     ; $03:AE9D: 18          ;
CODE_03AE9E:    ADC $00                 ; $03:AE9E: 65 00       ;
CODE_03AEA0:    STA $00                 ; $03:AEA0: 85 00       ;
CODE_03AEA2:    LSR A                   ; $03:AEA2: 4A          ;
CODE_03AEA3:    STA $0EFD               ; $03:AEA3: 8D FD 0E    ;
CODE_03AEA6:    LSR A                   ; $03:AEA6: 4A          ;
CODE_03AEA7:    STA $0EEE               ; $03:AEA7: 8D EE 0E    ;
CODE_03AEAA:    SEP #$30                ; $03:AEAA: E2 30       ;
CODE_03AEAC:    LDA $00                 ; $03:AEAC: A5 00       ;
CODE_03AEAE:    STA $071C               ; $03:AEAE: 8D 1C 07    ;
CODE_03AEB1:    STA $073F               ; $03:AEB1: 8D 3F 07    ;
CODE_03AEB4:    STA $42                 ; $03:AEB4: 85 42       ;
CODE_03AEB6:    LDA $01                 ; $03:AEB6: A5 01       ;
CODE_03AEB8:    STA $071A               ; $03:AEB8: 8D 1A 07    ;
CODE_03AEBB:    STA $43                 ; $03:AEBB: 85 43       ;
CODE_03AEBD:    AND #$01                ; $03:AEBD: 29 01       ;
CODE_03AEBF:    STA $00                 ; $03:AEBF: 85 00       ;
CODE_03AEC1:    LDA $0778               ; $03:AEC1: AD 78 07    ;
CODE_03AEC4:    AND #$FE                ; $03:AEC4: 29 FE       ;
CODE_03AEC6:    ORA $00                 ; $03:AEC6: 05 00       ;
CODE_03AEC8:    STA $0778               ; $03:AEC8: 8D 78 07    ;
CODE_03AECB:    JSR CODE_03AF0F         ; $03:AECB: 20 0F AF    ;
CODE_03AECE:    LDA #$08                ; $03:AECE: A9 08       ;
CODE_03AED0:    STA $07A1               ; $03:AED0: 8D A1 07    ;
CODE_03AED3:    BRA CODE_03AED8         ; $03:AED3: 80 03       ;

CODE_03AED5:    STZ $0775               ; $03:AED5: 9C 75 07    ;
CODE_03AED8:    LDX #$00                ; $03:AED8: A2 00       ;
CODE_03AEDA:    JSR CODE_03FE1E         ; $03:AEDA: 20 1E FE    ;
CODE_03AEDD:    STA $00                 ; $03:AEDD: 85 00       ;
CODE_03AEDF:    LDY #$00                ; $03:AEDF: A0 00       ;
CODE_03AEE1:    ASL A                   ; $03:AEE1: 0A          ;
CODE_03AEE2:    BCS CODE_03AEEB         ; $03:AEE2: B0 07       ;
CODE_03AEE4:    INY                     ; $03:AEE4: C8          ;
CODE_03AEE5:    LDA $00                 ; $03:AEE5: A5 00       ;
CODE_03AEE7:    AND #$20                ; $03:AEE7: 29 20       ;
CODE_03AEE9:    BEQ CODE_03AF05         ; $03:AEE9: F0 1A       ;
CODE_03AEEB:    LDA $071C,y             ; $03:AEEB: B9 1C 07    ;
CODE_03AEEE:    SEC                     ; $03:AEEE: 38          ;
CODE_03AEEF:    SBC DATA_03AF0B,y       ; $03:AEEF: F9 0B AF    ;
CODE_03AEF2:    STA $0219               ; $03:AEF2: 8D 19 02    ;
CODE_03AEF5:    LDA $071A,y             ; $03:AEF5: B9 1A 07    ;
CODE_03AEF8:    SBC #$00                ; $03:AEF8: E9 00       ;
CODE_03AEFA:    STA $78                 ; $03:AEFA: 85 78       ;
CODE_03AEFC:    LDA $0C                 ; $03:AEFC: A5 0C       ;
CODE_03AEFE:    CMP DATA_03AF0D,y       ; $03:AEFE: D9 0D AF    ;
CODE_03AF01:    BEQ CODE_03AF05         ; $03:AF01: F0 02       ;
CODE_03AF03:    STZ $5D                 ; $03:AF03: 64 5D       ;
CODE_03AF05:    LDA #$00                ; $03:AF05: A9 00       ;
CODE_03AF07:    STA $03A1               ; $03:AF07: 8D A1 03    ;
CODE_03AF0A:    RTS                     ; $03:AF0A: 60          ;

DATA_03AF0B:    db $00,$10                                      ;

DATA_03AF0D:    db $01,$02                                      ;

CODE_03AF0F:    LDA $071C               ; $03:AF0F: AD 1C 07    ;
CODE_03AF12:    CLC                     ; $03:AF12: 18          ;
CODE_03AF13:    ADC #$FF                ; $03:AF13: 69 FF       ;
CODE_03AF15:    STA $071D               ; $03:AF15: 8D 1D 07    ;
CODE_03AF18:    LDA $071A               ; $03:AF18: AD 1A 07    ;
CODE_03AF1B:    ADC #$00                ; $03:AF1B: 69 00       ;
CODE_03AF1D:    STA $071B               ; $03:AF1D: 8D 1B 07    ;
CODE_03AF20:    RTS                     ; $03:AF20: 60          ;

CODE_03AF21:    LDA $0F                 ; $03:AF21: A5 0F       ;\
CODE_03AF23:    ASL A                   ; $03:AF23: 0A          ; |Player actions
CODE_03AF24:    TAX                     ; $03:AF24: AA          ; |
CODE_03AF25:    JMP (PNTR_03AF28,x)     ; $03:AF25: 7C 28 AF    ;/

PNTR_03AF28:    dw CODE_039FBD                                  ;$00 - Set up level load game timer
                dw CODE_03B1E3                                  ;$01 - Autoclimb vine
                dw CODE_03B233                                  ;$02 - Enter pipe from the side
                dw CODE_03B205                                  ;$03 - Enter pipe normally
                dw CODE_03B309                                  ;$04 - Slide on flagpole
                dw CODE_03B32B                                  ;$05 - Player ends level (where he fades out and stuff)
                dw CODE_03A060                                  ;$06 - Player loses life
                dw CODE_03AF42                                  ;$07 - Player enters level
                dw CODE_03AFF4                                  ;$08 - Regular control routine
                dw CODE_03B26E                                  ;$09 - Player changes size
                dw CODE_03B280                                  ;$0A - Player has injury invincibility
                dw CODE_03B2A4                                  ;$0B - Player dies
                dw CODE_03B2BA                                  ;$0C - Player obtains fire flower

;Player action - player enters level
CODE_03AF42:    LDA $0752               ; $03:AF42: AD 52 07    ;
CODE_03AF45:    CMP #$02                ; $03:AF45: C9 02       ;
CODE_03AF47:    BEQ CODE_03AF85         ; $03:AF47: F0 3C       ;
CODE_03AF49:    LDA #$00                ; $03:AF49: A9 00       ;
CODE_03AF4B:    LDY $0237               ; $03:AF4B: AC 37 02    ;
CODE_03AF4E:    CPY #$30                ; $03:AF4E: C0 30       ;
CODE_03AF50:    BCS CODE_03AF55         ; $03:AF50: B0 03       ;
CODE_03AF52:    JMP CODE_03AFEA         ; $03:AF52: 4C EA AF    ;

CODE_03AF55:    LDA $0710               ; $03:AF55: AD 10 07    ;
CODE_03AF58:    CMP #$06                ; $03:AF58: C9 06       ;
CODE_03AF5A:    BEQ CODE_03AF60         ; $03:AF5A: F0 04       ;
CODE_03AF5C:    CMP #$07                ; $03:AF5C: C9 07       ;
CODE_03AF5E:    BNE CODE_03AFCF         ; $03:AF5E: D0 6F       ;
CODE_03AF60:    LDA $0256               ; $03:AF60: AD 56 02    ;
CODE_03AF63:    AND #$F0                ; $03:AF63: 29 F0       ;
CODE_03AF65:    BEQ CODE_03AF6C         ; $03:AF65: F0 05       ;
CODE_03AF67:    LDA #$01                ; $03:AF67: A9 01       ;
CODE_03AF69:    JMP CODE_03AFEA         ; $03:AF69: 4C EA AF    ;

CODE_03AF6C:    JSR CODE_03B259         ; $03:AF6C: 20 59 B2    ;
CODE_03AF6F:    DEC $06DE               ; $03:AF6F: CE DE 06    ;
CODE_03AF72:    BNE CODE_03AFE5         ; $03:AF72: D0 71       ;
CODE_03AF74:    LDA #$01                ; $03:AF74: A9 01       ;
CODE_03AF76:    STA $0E7F               ; $03:AF76: 8D 7F 0E    ;
CODE_03AF79:    STA $0E4F               ; $03:AF79: 8D 4F 0E    ;
CODE_03AF7C:    INC $0769               ; $03:AF7C: EE 69 07    ;
CODE_03AF7F:    INC $0760               ; $03:AF7F: EE 60 07    ;
CODE_03AF82:    JMP CODE_03B368         ; $03:AF82: 4C 68 B3    ;

CODE_03AF85:    LDA $0758               ; $03:AF85: AD 58 07    ;
CODE_03AF88:    BNE CODE_03AFA6         ; $03:AF88: D0 1C       ;
CODE_03AF8A:    LDA $0237               ; $03:AF8A: AD 37 02    ;
CODE_03AF8D:    CMP #$B0                ; $03:AF8D: C9 B0       ;
CODE_03AF8F:    BNE CODE_03AF96         ; $03:AF8F: D0 05       ;
CODE_03AF91:    LDA #$04                ; $03:AF91: A9 04       ;\
CODE_03AF93:    STA $1600               ; $03:AF93: 8D 00 16    ;/Enter pipe/hurt sound
CODE_03AF96:    STA $0E4E               ; $03:AF96: 8D 4E 0E    ;
CODE_03AF99:    LDA #$FF                ; $03:AF99: A9 FF       ;
CODE_03AF9B:    JSR CODE_03B22B         ; $03:AF9B: 20 2B B2    ;
CODE_03AF9E:    LDA $0237               ; $03:AF9E: AD 37 02    ;
CODE_03AFA1:    CMP #$91                ; $03:AFA1: C9 91       ;
CODE_03AFA3:    BCC CODE_03AFCF         ; $03:AFA3: 90 2A       ;
CODE_03AFA5:    RTS                     ; $03:AFA5: 60          ;

CODE_03AFA6:    LDA $0399               ; $03:AFA6: AD 99 03    ;
CODE_03AFA9:    CMP #$60                ; $03:AFA9: C9 60       ;
CODE_03AFAB:    BNE CODE_03AFE5         ; $03:AFAB: D0 38       ;
CODE_03AFAD:    LDA $0237               ; $03:AFAD: AD 37 02    ;
CODE_03AFB0:    CMP #$99                ; $03:AFB0: C9 99       ;
CODE_03AFB2:    LDY #$00                ; $03:AFB2: A0 00       ;
CODE_03AFB4:    LDA #$01                ; $03:AFB4: A9 01       ;
CODE_03AFB6:    BCC CODE_03AFC2         ; $03:AFB6: 90 0A       ;
CODE_03AFB8:    LDA #$03                ; $03:AFB8: A9 03       ;
CODE_03AFBA:    STA $28                 ; $03:AFBA: 85 28       ;
CODE_03AFBC:    INY                     ; $03:AFBC: C8          ;
CODE_03AFBD:    LDA #$08                ; $03:AFBD: A9 08       ;
CODE_03AFBF:    STA $05B4               ; $03:AFBF: 8D B4 05    ;
CODE_03AFC2:    STY $0716               ; $03:AFC2: 8C 16 07    ;
CODE_03AFC5:    JSR CODE_03AFEA         ; $03:AFC5: 20 EA AF    ;
CODE_03AFC8:    LDA $0219               ; $03:AFC8: AD 19 02    ;
CODE_03AFCB:    CMP #$48                ; $03:AFCB: C9 48       ;
CODE_03AFCD:    BCC CODE_03AFE5         ; $03:AFCD: 90 16       ;
CODE_03AFCF:    STZ $0E4E               ; $03:AFCF: 9C 4E 0E    ;
CODE_03AFD2:    LDA #$08                ; $03:AFD2: A9 08       ;
CODE_03AFD4:    STA $0F                 ; $03:AFD4: 85 0F       ;
CODE_03AFD6:    LDA #$01                ; $03:AFD6: A9 01       ;
CODE_03AFD8:    STA $0202               ; $03:AFD8: 8D 02 02    ;
CODE_03AFDB:    LSR A                   ; $03:AFDB: 4A          ;
CODE_03AFDC:    STA $0752               ; $03:AFDC: 8D 52 07    ;
CODE_03AFDF:    STA $0716               ; $03:AFDF: 8D 16 07    ;
CODE_03AFE2:    STA $0758               ; $03:AFE2: 8D 58 07    ;
CODE_03AFE5:    RTS                     ; $03:AFE5: 60          ;

DATA_03AFE6:    db $03,$FD                                      ;

DATA_03AFE8:    db $00,$FF                                      ;

CODE_03AFEA:    STA $0FF4               ; $03:AFEA: 8D F4 0F    ;
CODE_03AFED:    LDA #$01                ; $03:AFED: A9 01       ;
CODE_03AFEF:    STA $0B7A               ; $03:AFEF: 8D 7A 0B    ;
CODE_03AFF2:    BRA CODE_03AFF7         ; $03:AFF2: 80 03       ;

;Player action - regular control routine
CODE_03AFF4:    STZ $0B7A               ; $03:AFF4: 9C 7A 0B    ;
CODE_03AFF7:    LDA $0F                 ; $03:AFF7: A5 0F       ;
CODE_03AFF9:    CMP #$0B                ; $03:AFF9: C9 0B       ;
CODE_03AFFB:    BEQ CODE_03B035         ; $03:AFFB: F0 38       ;
CODE_03AFFD:    LDA $5C                 ; $03:AFFD: A5 5C       ;
CODE_03AFFF:    BNE CODE_03B010         ; $03:AFFF: D0 0F       ;
CODE_03B001:    LDY $BB                 ; $03:B001: A4 BB       ;
CODE_03B003:    DEY                     ; $03:B003: 88          ;
CODE_03B004:    BNE CODE_03B00D         ; $03:B004: D0 07       ;
CODE_03B006:    LDA $0237               ; $03:B006: AD 37 02    ;
CODE_03B009:    CMP #$D0                ; $03:B009: C9 D0       ;
CODE_03B00B:    BCC CODE_03B010         ; $03:B00B: 90 03       ;
CODE_03B00D:    STZ $0FF4               ; $03:B00D: 9C F4 0F    ;
CODE_03B010:    LDA $0FF4               ; $03:B010: AD F4 0F    ;
CODE_03B013:    AND #$C0                ; $03:B013: 29 C0       ;
CODE_03B015:    STA $0A                 ; $03:B015: 85 0A       ;
CODE_03B017:    LDA $0FF4               ; $03:B017: AD F4 0F    ;
CODE_03B01A:    AND #$03                ; $03:B01A: 29 03       ;
CODE_03B01C:    STA $0C                 ; $03:B01C: 85 0C       ;
CODE_03B01E:    LDA $0FF4               ; $03:B01E: AD F4 0F    ;
CODE_03B021:    AND #$0C                ; $03:B021: 29 0C       ;
CODE_03B023:    STA $0B                 ; $03:B023: 85 0B       ;
CODE_03B025:    AND #$04                ; $03:B025: 29 04       ;
CODE_03B027:    BEQ CODE_03B035         ; $03:B027: F0 0C       ;
CODE_03B029:    LDA $28                 ; $03:B029: A5 28       ;
CODE_03B02B:    BNE CODE_03B035         ; $03:B02B: D0 08       ;
CODE_03B02D:    LDY $0C                 ; $03:B02D: A4 0C       ;
CODE_03B02F:    BEQ CODE_03B035         ; $03:B02F: F0 04       ;
CODE_03B031:    STZ $0C                 ; $03:B031: 64 0C       ;
CODE_03B033:    STZ $0B                 ; $03:B033: 64 0B       ;
CODE_03B035:    LDA $700007             ; $03:B035: AF 07 00 70 ;\
CODE_03B039:    BNE CODE_03B03E         ; $03:B039: D0 03       ;/Branch if debug mode
CODE_03B03B:    JMP CODE_03B129         ; $03:B03B: 4C 29 B1    ;

CODE_03B03E:    PHX                     ; $03:B03E: DA          ;\
CODE_03B03F:    LDX $0EC3               ; $03:B03F: AE C3 0E    ; |
CODE_03B042:    LDA $0FF8,x             ; $03:B042: BD F8 0F    ; |Get controller input
CODE_03B045:    PLX                     ; $03:B045: FA          ;/
CODE_03B046:    AND #$C0                ; $03:B046: 29 C0       ;\ 
CODE_03B048:    BEQ CODE_03B060         ; $03:B048: F0 16       ; |Skip if no input
CODE_03B04A:    AND #$80                ; $03:B04A: 29 80       ; |
CODE_03B04C:    BEQ CODE_03B058         ; $03:B04C: F0 0A       ;/ Branch if controller input is $40
CODE_03B04E:    STZ $0754               ; $03:B04E: 9C 54 07    ;Clear small player flag.  Controller input is $80
CODE_03B051:    LDA #$01                ; $03:B051: A9 01       ;\
CODE_03B053:    STA $0756               ; $03:B053: 8D 56 07    ;/Set mushroom powerup
CODE_03B056:    BRA CODE_03B060         ; $03:B056: 80 08       ;

CODE_03B058:    STZ $0754               ; $03:B058: 9C 54 07    ;Clear small player flag
CODE_03B05B:    LDA #$02                ; $03:B05B: A9 02       ;\
CODE_03B05D:    STA $0756               ; $03:B05D: 8D 56 07    ;/Set fireflower powerup
CODE_03B060:    LDA $0FF6               ; $03:B060: AD F6 0F    ;\
CODE_03B063:    AND #$20                ; $03:B063: 29 20       ; |If select not pressed, branch
CODE_03B065:    BEQ CODE_03B075         ; $03:B065: F0 0E       ;/
CODE_03B067:    EOR $0E73               ; $03:B067: 4D 73 0E    ;\ Select pressed.
CODE_03B06A:    STA $0E73               ; $03:B06A: 8D 73 0E    ; | Pass through objects debug mode flag
CODE_03B06D:    LSR A                   ; $03:B06D: 4A          ; |
CODE_03B06E:    LSR A                   ; $03:B06E: 4A          ; |
CODE_03B06F:    LSR A                   ; $03:B06F: 4A          ; |
CODE_03B070:    LSR A                   ; $03:B070: 4A          ; |
CODE_03B071:    LSR A                   ; $03:B071: 4A          ;/
CODE_03B072:    STA $0716               ; $03:B072: 8D 16 07    ;Disable collision detection
CODE_03B075:    LDA $0E73               ; $03:B075: AD 73 0E    ;
CODE_03B078:    BNE CODE_03B07D         ; $03:B078: D0 03       ;
CODE_03B07A:    JMP CODE_03B129         ; $03:B07A: 4C 29 B1    ;

CODE_03B07D:    LDA #$10                ; $03:B07D: A9 10       ;
CODE_03B07F:    STA $07AF               ; $03:B07F: 8D AF 07    ;
CODE_03B082:    PHX                     ; $03:B082: DA          ;
CODE_03B083:    LDX $0753               ; $03:B083: AE 53 07    ;
CODE_03B086:    LDA $0FF8,x             ; $03:B086: BD F8 0F    ;
CODE_03B089:    PLX                     ; $03:B089: FA          ;
CODE_03B08A:    AND #$10                ; $03:B08A: 29 10       ;
CODE_03B08C:    BEQ CODE_03B0CD         ; $03:B08C: F0 3F       ;
CODE_03B08E:    LDA $09                 ; $03:B08E: A5 09       ;
CODE_03B090:    AND #$07                ; $03:B090: 29 07       ;
CODE_03B092:    BNE CODE_03B0CD         ; $03:B092: D0 39       ;
CODE_03B094:    LDA $0FF4               ; $03:B094: AD F4 0F    ;
CODE_03B097:    LSR A                   ; $03:B097: 4A          ;
CODE_03B098:    BCS CODE_03B0A6         ; $03:B098: B0 0C       ;
CODE_03B09A:    LSR A                   ; $03:B09A: 4A          ;
CODE_03B09B:    BCS CODE_03B0B4         ; $03:B09B: B0 17       ;
CODE_03B09D:    LSR A                   ; $03:B09D: 4A          ;
CODE_03B09E:    BCS CODE_03B0CA         ; $03:B09E: B0 2A       ;
CODE_03B0A0:    LSR A                   ; $03:B0A0: 4A          ;
CODE_03B0A1:    BCS CODE_03B0C3         ; $03:B0A1: B0 20       ;
CODE_03B0A3:    JMP CODE_03B12C         ; $03:B0A3: 4C 2C B1    ;

CODE_03B0A6:    LDA #$09                ; $03:B0A6: A9 09       ;
CODE_03B0A8:    STA $07EA               ; $03:B0A8: 8D EA 07    ;
CODE_03B0AB:    STA $07EB               ; $03:B0AB: 8D EB 07    ;
CODE_03B0AE:    STA $07E9               ; $03:B0AE: 8D E9 07    ;
CODE_03B0B1:    JMP CODE_03B12C         ; $03:B0B1: 4C 2C B1    ;

CODE_03B0B4:    STZ $07EA               ; $03:B0B4: 9C EA 07    ;
CODE_03B0B7:    STZ $07EB               ; $03:B0B7: 9C EB 07    ;
CODE_03B0BA:    STZ $07E9               ; $03:B0BA: 9C E9 07    ;
CODE_03B0BD:    STZ $0E73               ; $03:B0BD: 9C 73 0E    ;
CODE_03B0C0:    JMP CODE_03B12C         ; $03:B0C0: 4C 2C B1    ;

CODE_03B0C3:    JSL CODE_048596         ; $03:B0C3: 22 96 85 04 ;Increase lives by one
CODE_03B0C7:    JMP CODE_03B12C         ; $03:B0C7: 4C 2C B1    ;

CODE_03B0CA:    JMP CODE_03B12C         ; $03:B0CA: 4C 2C B1    ;

CODE_03B0CD:    LDA $09                 ; $03:B0CD: A5 09       ;
CODE_03B0CF:    AND #$07                ; $03:B0CF: 29 07       ;
CODE_03B0D1:    BNE CODE_03B0EE         ; $03:B0D1: D0 1B       ;
CODE_03B0D3:    LDA $0FF4               ; $03:B0D3: AD F4 0F    ;
CODE_03B0D6:    AND #$80                ; $03:B0D6: 29 80       ;
CODE_03B0D8:    BEQ CODE_03B0EE         ; $03:B0D8: F0 14       ;
CODE_03B0DA:    LDA $0754               ; $03:B0DA: AD 54 07    ;
CODE_03B0DD:    EOR #$01                ; $03:B0DD: 49 01       ;
CODE_03B0DF:    STA $0754               ; $03:B0DF: 8D 54 07    ;
CODE_03B0E2:    LDA $0756               ; $03:B0E2: AD 56 07    ;
CODE_03B0E5:    EOR #$02                ; $03:B0E5: 49 02       ;
CODE_03B0E7:    STA $0756               ; $03:B0E7: 8D 56 07    ;
CODE_03B0EA:    JSL CODE_049A88         ; $03:B0EA: 22 88 9A 04 ;
CODE_03B0EE:    LDA $0FF4               ; $03:B0EE: AD F4 0F    ;
CODE_03B0F1:    AND #$03                ; $03:B0F1: 29 03       ;
CODE_03B0F3:    BEQ CODE_03B10C         ; $03:B0F3: F0 17       ;
CODE_03B0F5:    TAY                     ; $03:B0F5: A8          ;
CODE_03B0F6:    LDA $0C                 ; $03:B0F6: A5 0C       ;
CODE_03B0F8:    STA $0202               ; $03:B0F8: 8D 02 02    ;
CODE_03B0FB:    LDA $0219               ; $03:B0FB: AD 19 02    ;
CODE_03B0FE:    CLC                     ; $03:B0FE: 18          ;
CODE_03B0FF:    ADC DATA_03AFE6-1,y     ; $03:B0FF: 79 E5 AF    ;
CODE_03B102:    STA $0219               ; $03:B102: 8D 19 02    ;
CODE_03B105:    LDA $78                 ; $03:B105: A5 78       ;
CODE_03B107:    ADC DATA_03AFE8-1,y     ; $03:B107: 79 E7 AF    ;
CODE_03B10A:    STA $78                 ; $03:B10A: 85 78       ;
CODE_03B10C:    LDA $0FF4               ; $03:B10C: AD F4 0F    ;
CODE_03B10F:    AND #$0C                ; $03:B10F: 29 0C       ;
CODE_03B111:    BEQ CODE_03B12C         ; $03:B111: F0 19       ;
CODE_03B113:    LSR A                   ; $03:B113: 4A          ;
CODE_03B114:    LSR A                   ; $03:B114: 4A          ;
CODE_03B115:    TAY                     ; $03:B115: A8          ;
CODE_03B116:    LDA $0237               ; $03:B116: AD 37 02    ;
CODE_03B119:    CLC                     ; $03:B119: 18          ;
CODE_03B11A:    ADC DATA_03AFE6-1,y     ; $03:B11A: 79 E5 AF    ;
CODE_03B11D:    STA $0237               ; $03:B11D: 8D 37 02    ;
CODE_03B120:    LDA $BB                 ; $03:B120: A5 BB       ;
CODE_03B122:    ADC DATA_03AFE8-1,y     ; $03:B122: 79 E7 AF    ;
CODE_03B125:    STA $BB                 ; $03:B125: 85 BB       ;
CODE_03B127:    BRA CODE_03B12C         ; $03:B127: 80 03       ;

CODE_03B129:    JSR CODE_03B373         ; $03:B129: 20 73 B3    ;
CODE_03B12C:    LDY #$01                ; $03:B12C: A0 01       ;
CODE_03B12E:    LDA $0754               ; $03:B12E: AD 54 07    ;
CODE_03B131:    BNE CODE_03B13C         ; $03:B131: D0 09       ;
CODE_03B133:    LDY #$00                ; $03:B133: A0 00       ;
CODE_03B135:    LDA $0714               ; $03:B135: AD 14 07    ;
CODE_03B138:    BEQ CODE_03B13C         ; $03:B138: F0 02       ;
CODE_03B13A:    LDY #$02                ; $03:B13A: A0 02       ;
CODE_03B13C:    STY $048F               ; $03:B13C: 8C 8F 04    ;
CODE_03B13F:    LDA #$01                ; $03:B13F: A9 01       ;
CODE_03B141:    LDY $5D                 ; $03:B141: A4 5D       ;
CODE_03B143:    BEQ CODE_03B14A         ; $03:B143: F0 05       ;
CODE_03B145:    BPL CODE_03B148         ; $03:B145: 10 01       ;
CODE_03B147:    ASL A                   ; $03:B147: 0A          ;
CODE_03B148:    STA $46                 ; $03:B148: 85 46       ;
CODE_03B14A:    JSR CODE_03AE4E         ; $03:B14A: 20 4E AE    ;
CODE_03B14D:    JSR CODE_03FD9C         ; $03:B14D: 20 9C FD    ;
CODE_03B150:    JSR CODE_03FD13         ; $03:B150: 20 13 FD    ;
CODE_03B153:    LDX #$00                ; $03:B153: A2 00       ;
CODE_03B155:    JSR CODE_03EA2D         ; $03:B155: 20 2D EA    ;
CODE_03B158:    JSR CODE_03E309         ; $03:B158: 20 09 E3    ;
CODE_03B15B:    LDA $0237               ; $03:B15B: AD 37 02    ;
CODE_03B15E:    CMP #$40                ; $03:B15E: C9 40       ;
CODE_03B160:    BCC CODE_03B189         ; $03:B160: 90 27       ;
CODE_03B162:    LDA $0F                 ; $03:B162: A5 0F       ;
CODE_03B164:    CMP #$05                ; $03:B164: C9 05       ;
CODE_03B166:    BEQ CODE_03B189         ; $03:B166: F0 21       ;
CODE_03B168:    CMP #$07                ; $03:B168: C9 07       ;
CODE_03B16A:    BEQ CODE_03B189         ; $03:B16A: F0 1D       ;
CODE_03B16C:    CMP #$04                ; $03:B16C: C9 04       ;
CODE_03B16E:    BCC CODE_03B189         ; $03:B16E: 90 19       ;
CODE_03B170:    LDA $0F                 ; $03:B170: A5 0F       ;
CODE_03B172:    CMP #$0B                ; $03:B172: C9 0B       ;
CODE_03B174:    BNE CODE_03B17F         ; $03:B174: D0 09       ;
CODE_03B176:    LDA $0256               ; $03:B176: AD 56 02    ;
CODE_03B179:    AND #$CE                ; $03:B179: 29 CE       ;
CODE_03B17B:    ORA #$30                ; $03:B17B: 09 30       ;
CODE_03B17D:    BRA CODE_03B186         ; $03:B17D: 80 07       ;

CODE_03B17F:    LDA $0256               ; $03:B17F: AD 56 02    ;
CODE_03B182:    AND #$CE                ; $03:B182: 29 CE       ;
CODE_03B184:    ORA #$20                ; $03:B184: 09 20       ;
CODE_03B186:    STA $0256               ; $03:B186: 8D 56 02    ;
CODE_03B189:    LDA $BB                 ; $03:B189: A5 BB       ;
CODE_03B18B:    CMP #$02                ; $03:B18B: C9 02       ;
CODE_03B18D:    BMI CODE_03B1D8         ; $03:B18D: 30 49       ;
CODE_03B18F:    LDX #$01                ; $03:B18F: A2 01       ;
CODE_03B191:    STX $0723               ; $03:B191: 8E 23 07    ;
CODE_03B194:    LDY #$04                ; $03:B194: A0 04       ;
CODE_03B196:    STY $07                 ; $03:B196: 84 07       ;
CODE_03B198:    LDX #$00                ; $03:B198: A2 00       ;
CODE_03B19A:    LDY $0759               ; $03:B19A: AC 59 07    ;
CODE_03B19D:    BNE CODE_03B1A4         ; $03:B19D: D0 05       ;
CODE_03B19F:    LDY $0743               ; $03:B19F: AC 43 07    ;
CODE_03B1A2:    BNE CODE_03B1C8         ; $03:B1A2: D0 24       ;
CODE_03B1A4:    INX                     ; $03:B1A4: E8          ;
CODE_03B1A5:    LDY $0F                 ; $03:B1A5: A4 0F       ;
CODE_03B1A7:    CPY #$0B                ; $03:B1A7: C0 0B       ;
CODE_03B1A9:    BEQ CODE_03B1C8         ; $03:B1A9: F0 1D       ;
CODE_03B1AB:    LDY $0712               ; $03:B1AB: AC 12 07    ;
CODE_03B1AE:    BNE CODE_03B1C4         ; $03:B1AE: D0 14       ;
CODE_03B1B0:    INY                     ; $03:B1B0: C8          ;
CODE_03B1B1:    STY $0712               ; $03:B1B1: 8C 12 07    ;
CODE_03B1B4:    LDY #$09                ; $03:B1B4: A0 09       ;\Mario died music
CODE_03B1B6:    STY $1602               ; $03:B1B6: 8C 02 16    ;/
CODE_03B1B9:    STA $0E67               ; $03:B1B9: 8D 67 0E    ;
CODE_03B1BC:    LDA #$01                ; $03:B1BC: A9 01       ;\Set Small Mario flag
CODE_03B1BE:    STA $0754               ; $03:B1BE: 8D 54 07    ;/
CODE_03B1C1:    STZ $0756               ; $03:B1C1: 9C 56 07    ;Small Mario powrup
CODE_03B1C4:    LDY #$06                ; $03:B1C4: A0 06       ;
CODE_03B1C6:    STY $07                 ; $03:B1C6: 84 07       ;
CODE_03B1C8:    CMP $07                 ; $03:B1C8: C5 07       ;
CODE_03B1CA:    BMI CODE_03B1D8         ; $03:B1CA: 30 0C       ;
CODE_03B1CC:    DEX                     ; $03:B1CC: CA          ;
CODE_03B1CD:    BMI CODE_03B1D9         ; $03:B1CD: 30 0A       ;
CODE_03B1CF:    LDY $07B1               ; $03:B1CF: AC B1 07    ;
CODE_03B1D2:    BNE CODE_03B1D8         ; $03:B1D2: D0 04       ;
CODE_03B1D4:    LDA #$06                ; $03:B1D4: A9 06       ;\Set game mode: Fade out to image before level
CODE_03B1D6:    STA $0F                 ; $03:B1D6: 85 0F       ;/
CODE_03B1D8:    RTS                     ; $03:B1D8: 60          ;

CODE_03B1D9:    STZ $0758               ; $03:B1D9: 9C 58 07    ;
CODE_03B1DC:    JSR CODE_03B1FD         ; $03:B1DC: 20 FD B1    ;
CODE_03B1DF:    INC $0752               ; $03:B1DF: EE 52 07    ;
CODE_03B1E2:    RTS                     ; $03:B1E2: 60          ;

;Player action - autoclimb vine
CODE_03B1E3:    LDA $BB                 ; $03:B1E3: A5 BB       ;
CODE_03B1E5:    BNE CODE_03B1EE         ; $03:B1E5: D0 07       ;
CODE_03B1E7:    LDA $0237               ; $03:B1E7: AD 37 02    ;
CODE_03B1EA:    CMP #$E4                ; $03:B1EA: C9 E4       ;
CODE_03B1EC:    BCC CODE_03B1FD         ; $03:B1EC: 90 0F       ;
CODE_03B1EE:    LDA #$08                ; $03:B1EE: A9 08       ;
CODE_03B1F0:    STA $0758               ; $03:B1F0: 8D 58 07    ;
CODE_03B1F3:    STA $0E67               ; $03:B1F3: 8D 67 0E    ;
CODE_03B1F6:    LDY #$03                ; $03:B1F6: A0 03       ;
CODE_03B1F8:    STY $28                 ; $03:B1F8: 84 28       ;
CODE_03B1FA:    JMP CODE_03AFEA         ; $03:B1FA: 4C EA AF    ;

CODE_03B1FD:    LDA #$02                ; $03:B1FD: A9 02       ;
CODE_03B1FF:    STA $0752               ; $03:B1FF: 8D 52 07    ;
CODE_03B202:    JMP CODE_03B248         ; $03:B202: 4C 48 B2    ;

;Player action - enter pipe normally
CODE_03B205:    LDA #$01                ; $03:B205: A9 01       ;
CODE_03B207:    STA $0E4F               ; $03:B207: 8D 4F 0E    ;
CODE_03B20A:    STA $0218               ; $03:B20A: 8D 18 02    ;
CODE_03B20D:    LDA $09                 ; $03:B20D: A5 09       ;
CODE_03B20F:    LSR A                   ; $03:B20F: 4A          ;
CODE_03B210:    BCC CODE_03B217         ; $03:B210: 90 05       ;
CODE_03B212:    LDA #$01                ; $03:B212: A9 01       ;
CODE_03B214:    JSR CODE_03B22B         ; $03:B214: 20 2B B2    ;
CODE_03B217:    JSR CODE_03AE4E         ; $03:B217: 20 4E AE    ;
CODE_03B21A:    LDY #$00                ; $03:B21A: A0 00       ;
CODE_03B21C:    LDA $06D6               ; $03:B21C: AD D6 06    ;
CODE_03B21F:    BNE CODE_03B240         ; $03:B21F: D0 1F       ;
CODE_03B221:    INY                     ; $03:B221: C8          ;
CODE_03B222:    LDA $5C                 ; $03:B222: A5 5C       ;
CODE_03B224:    CMP #$03                ; $03:B224: C9 03       ;
CODE_03B226:    BNE CODE_03B240         ; $03:B226: D0 18       ;
CODE_03B228:    INY                     ; $03:B228: C8          ;
CODE_03B229:    BRA CODE_03B240         ; $03:B229: 80 15       ;

CODE_03B22B:    CLC                     ; $03:B22B: 18          ;
CODE_03B22C:    ADC $0237               ; $03:B22C: 6D 37 02    ;
CODE_03B22F:    STA $0237               ; $03:B22F: 8D 37 02    ;
CODE_03B232:    RTS                     ; $03:B232: 60          ;

;Player action - enter pipe from the side
CODE_03B233:    LDA #$01                ; $03:B233: A9 01       ;
CODE_03B235:    STA $0E67               ; $03:B235: 8D 67 0E    ;
CODE_03B238:    STA $0E4F               ; $03:B238: 8D 4F 0E    ;
CODE_03B23B:    JSR CODE_03B259         ; $03:B23B: 20 59 B2    ;
CODE_03B23E:    LDY #$02                ; $03:B23E: A0 02       ;
CODE_03B240:    DEC $06DE               ; $03:B240: CE DE 06    ;
CODE_03B243:    BNE CODE_03B258         ; $03:B243: D0 13       ;
CODE_03B245:    STY $0752               ; $03:B245: 8C 52 07    ;
CODE_03B248:    LDA #$01                ; $03:B248: A9 01       ;
CODE_03B24A:    STA $0E7F               ; $03:B24A: 8D 7F 0E    ;
CODE_03B24D:    STA $0E67               ; $03:B24D: 8D 67 0E    ;
CODE_03B250:    LDA #$00                ; $03:B250: A9 00       ;
CODE_03B252:    STA $0772               ; $03:B252: 8D 72 07    ;
CODE_03B255:    STA $0722               ; $03:B255: 8D 22 07    ;
CODE_03B258:    RTS                     ; $03:B258: 60          ;

CODE_03B259:    LDA #$08                ; $03:B259: A9 08       ;
CODE_03B25B:    STA $5D                 ; $03:B25B: 85 5D       ;
CODE_03B25D:    LDY #$01                ; $03:B25D: A0 01       ;
CODE_03B25F:    LDA $0219               ; $03:B25F: AD 19 02    ;
CODE_03B262:    AND #$0F                ; $03:B262: 29 0F       ;
CODE_03B264:    BNE CODE_03B269         ; $03:B264: D0 03       ;
CODE_03B266:    STA $5D                 ; $03:B266: 85 5D       ;
CODE_03B268:    TAY                     ; $03:B268: A8          ;
CODE_03B269:    TYA                     ; $03:B269: 98          ;
CODE_03B26A:    JSR CODE_03AFEA         ; $03:B26A: 20 EA AF    ;
CODE_03B26D:    RTS                     ; $03:B26D: 60          ;

;Player action - Player changes size
CODE_03B26E:    LDA $0747               ; $03:B26E: AD 47 07    ;
CODE_03B271:    CMP #$F8                ; $03:B271: C9 F8       ;
CODE_03B273:    BNE CODE_03B278         ; $03:B273: D0 03       ;
CODE_03B275:    JMP CODE_03B290         ; $03:B275: 4C 90 B2    ;

CODE_03B278:    CMP #$C4                ; $03:B278: C9 C4       ;
CODE_03B27A:    BNE CODE_03B27F         ; $03:B27A: D0 03       ;
CODE_03B27C:    JSR CODE_03B2AE         ; $03:B27C: 20 AE B2    ;
CODE_03B27F:    RTS                     ; $03:B27F: 60          ;

;Player action - player has injury invincibility
CODE_03B280:    LDA $0747               ; $03:B280: AD 47 07    ;
CODE_03B283:    CMP #$F0                ; $03:B283: C9 F0       ;
CODE_03B285:    BCS CODE_03B28E         ; $03:B285: B0 07       ;
CODE_03B287:    CMP #$C8                ; $03:B287: C9 C8       ;
CODE_03B289:    BEQ CODE_03B2AE         ; $03:B289: F0 23       ;
CODE_03B28B:    JMP CODE_03AFF4         ; $03:B28B: 4C F4 AF    ;

CODE_03B28E:    BNE CODE_03B2A3         ; $03:B28E: D0 13       ;
CODE_03B290:    LDY $070B               ; $03:B290: AC 0B 07    ;
CODE_03B293:    BNE CODE_03B2A3         ; $03:B293: D0 0E       ;
CODE_03B295:    STY $070D               ; $03:B295: 8C 0D 07    ;
CODE_03B298:    INC $070B               ; $03:B298: EE 0B 07    ;
CODE_03B29B:    LDA $0754               ; $03:B29B: AD 54 07    ;
CODE_03B29E:    EOR #$01                ; $03:B29E: 49 01       ;
CODE_03B2A0:    STA $0754               ; $03:B2A0: 8D 54 07    ;
CODE_03B2A3:    RTS                     ; $03:B2A3: 60          ;

;Player action - player dies
CODE_03B2A4:    LDA $0747               ; $03:B2A4: AD 47 07    ;
CODE_03B2A7:    CMP #$F0                ; $03:B2A7: C9 F0       ;
CODE_03B2A9:    BCS CODE_03B308         ; $03:B2A9: B0 5D       ;
CODE_03B2AB:    JMP CODE_03AFF4         ; $03:B2AB: 4C F4 AF    ;

CODE_03B2AE:    STZ $0747               ; $03:B2AE: 9C 47 07    ;
CODE_03B2B1:    JSL CODE_049A88         ; $03:B2B1: 22 88 9A 04 ;
CODE_03B2B5:    LDA #$08                ; $03:B2B5: A9 08       ;
CODE_03B2B7:    STA $0F                 ; $03:B2B7: 85 0F       ;
CODE_03B2B9:    RTS                     ; $03:B2B9: 60          ;

;Player action - player obtains fireflower
CODE_03B2BA:    LDA $0747               ; $03:B2BA: AD 47 07    ;
CODE_03B2BD:    CMP #$C0                ; $03:B2BD: C9 C0       ;
CODE_03B2BF:    BEQ CODE_03B2FA         ; $03:B2BF: F0 39       ;
CODE_03B2C1:    EOR #$FF                ; $03:B2C1: 49 FF       ;
CODE_03B2C3:    ASL A                   ; $03:B2C3: 0A          ;
CODE_03B2C4:    ASL A                   ; $03:B2C4: 0A          ;
CODE_03B2C5:    ASL A                   ; $03:B2C5: 0A          ;
CODE_03B2C6:    ASL A                   ; $03:B2C6: 0A          ;
CODE_03B2C7:    PHY                     ; $03:B2C7: 5A          ;
CODE_03B2C8:    PHX                     ; $03:B2C8: DA          ;
CODE_03B2C9:    REP #$30                ; $03:B2C9: C2 30       ;
CODE_03B2CB:    AND #$0060              ; $03:B2CB: 29 60 00    ;
CODE_03B2CE:    TAX                     ; $03:B2CE: AA          ;
CODE_03B2CF:    LDA $0753               ; $03:B2CF: AD 53 07    ;
CODE_03B2D2:    AND #$00FF              ; $03:B2D2: 29 FF 00    ;
CODE_03B2D5:    BEQ CODE_03B2DD         ; $03:B2D5: F0 06       ;
CODE_03B2D7:    TXA                     ; $03:B2D7: 8A          ;
CODE_03B2D8:    CLC                     ; $03:B2D8: 18          ;
CODE_03B2D9:    ADC #$0020              ; $03:B2D9: 69 20 00    ;
CODE_03B2DC:    TAX                     ; $03:B2DC: AA          ;
CODE_03B2DD:    LDY #$01E0              ; $03:B2DD: A0 E0 01    ;
CODE_03B2E0:    LDA.l DATA_05ED40,x     ; $03:B2E0: BF 40 ED 05 ;
CODE_03B2E4:    STA $1000,y             ; $03:B2E4: 99 00 10    ;
CODE_03B2E7:    INX                     ; $03:B2E7: E8          ;
CODE_03B2E8:    INX                     ; $03:B2E8: E8          ;
CODE_03B2E9:    INY                     ; $03:B2E9: C8          ;
CODE_03B2EA:    INY                     ; $03:B2EA: C8          ;
CODE_03B2EB:    CPY #$0200              ; $03:B2EB: C0 00 02    ;
CODE_03B2EE:    BNE CODE_03B2E0         ; $03:B2EE: D0 F0       ;
CODE_03B2F0:    SEP #$30                ; $03:B2F0: E2 30       ;
CODE_03B2F2:    PLX                     ; $03:B2F2: FA          ;
CODE_03B2F3:    PLY                     ; $03:B2F3: 7A          ;
CODE_03B2F4:    LDA #$01                ; $03:B2F4: A9 01       ;
CODE_03B2F6:    STA $1200               ; $03:B2F6: 8D 00 12    ;
CODE_03B2F9:    RTS                     ; $03:B2F9: 60          ;

CODE_03B2FA:    JSR CODE_03B2AE         ; $03:B2FA: 20 AE B2    ;
CODE_03B2FD:    LDA $0256               ; $03:B2FD: AD 56 02    ;
CODE_03B300:    AND #$F1                ; $03:B300: 29 F1       ;
CODE_03B302:    ORA #$0E                ; $03:B302: 09 0E       ;
CODE_03B304:    STA $0256               ; $03:B304: 8D 56 02    ;
CODE_03B307:    RTS                     ; $03:B307: 60          ;

CODE_03B308:    RTS                     ; $03:B308: 60          ;

;Player action - slide on flagpole
CODE_03B309:    LDA $21                 ; $03:B309: A5 21       ;
CODE_03B30B:    CMP #$30                ; $03:B30B: C9 30       ;
CODE_03B30D:    BNE CODE_03B320         ; $03:B30D: D0 11       ;
CODE_03B30F:    LDA #$00                ; $03:B30F: A9 00       ;
CODE_03B311:    STA $0713               ; $03:B311: 8D 13 07    ;
CODE_03B314:    LDY $0237               ; $03:B314: AC 37 02    ;
CODE_03B317:    CPY #$9E                ; $03:B317: C0 9E       ;
CODE_03B319:    BCS CODE_03B31D         ; $03:B319: B0 02       ;
CODE_03B31B:    LDA #$04                ; $03:B31B: A9 04       ;
CODE_03B31D:    JMP CODE_03AFEA         ; $03:B31D: 4C EA AF    ;

CODE_03B320:    INC $0F                 ; $03:B320: E6 0F       ;
CODE_03B322:    RTS                     ; $03:B322: 60          ;

DATA_03B323:    db $15,$23,$16,$1B,$17,$18,$23,$63              ;

;Player action - Player ends level (where he fades out and stuff)
CODE_03B32B:    JSL CODE_05CBE5         ; $03:B32B: 22 E5 CB 05 ;
CODE_03B32F:    BEQ CODE_03B340         ; $03:B32F: F0 0F       ;
CODE_03B331:    LDA #$01                ; $03:B331: A9 01       ;
CODE_03B333:    JSR CODE_03AFEA         ; $03:B333: 20 EA AF    ;
CODE_03B336:    LDA $0237               ; $03:B336: AD 37 02    ;
CODE_03B339:    CMP #$AE                ; $03:B339: C9 AE       ;
CODE_03B33B:    BCC CODE_03B340         ; $03:B33B: 90 03       ;
CODE_03B33D:    STZ $0723               ; $03:B33D: 9C 23 07    ;
CODE_03B340:    LDA $0746               ; $03:B340: AD 46 07    ;
CODE_03B343:    CMP #$05                ; $03:B343: C9 05       ;
CODE_03B345:    BNE CODE_03B372         ; $03:B345: D0 2B       ;
CODE_03B347:    INC $075C               ; $03:B347: EE 5C 07    ;
CODE_03B34A:    LDA $075C               ; $03:B34A: AD 5C 07    ;
CODE_03B34D:    CMP #$03                ; $03:B34D: C9 03       ;
CODE_03B34F:    BNE CODE_03B35F         ; $03:B34F: D0 0E       ;
CODE_03B351:    LDY $075F               ; $03:B351: AC 5F 07    ;
CODE_03B354:    LDA $0748               ; $03:B354: AD 48 07    ;
CODE_03B357:    CMP DATA_03B323,y       ; $03:B357: D9 23 B3    ;
CODE_03B35A:    BCC CODE_03B35F         ; $03:B35A: 90 03       ;
CODE_03B35C:    INC $075D               ; $03:B35C: EE 5D 07    ;Enable hidden 1-up flag
CODE_03B35F:    INC $0760               ; $03:B35F: EE 60 07    ;
CODE_03B362:    STZ $075B               ; $03:B362: 9C 5B 07    ;
CODE_03B365:    JSR CODE_03A22B         ; $03:B365: 20 2B A2    ;
CODE_03B368:    JSL CODE_04C00B         ; $03:B368: 22 0B C0 04 ;
CODE_03B36C:    INC $0757               ; $03:B36C: EE 57 07    ;
CODE_03B36F:    JSR CODE_03B248         ; $03:B36F: 20 48 B2    ;
CODE_03B372:    RTS                     ; $03:B372: 60          ;

CODE_03B373:    LDA #$00                ; $03:B373: A9 00       ;
CODE_03B375:    LDY $0754               ; $03:B375: AC 54 07    ;
CODE_03B378:    BNE CODE_03B382         ; $03:B378: D0 08       ;
CODE_03B37A:    LDA $28                 ; $03:B37A: A5 28       ;
CODE_03B37C:    BNE CODE_03B385         ; $03:B37C: D0 07       ;
CODE_03B37E:    LDA $0B                 ; $03:B37E: A5 0B       ;
CODE_03B380:    AND #$04                ; $03:B380: 29 04       ;
CODE_03B382:    STA $0714               ; $03:B382: 8D 14 07    ;
CODE_03B385:    JSR CODE_03B4AD         ; $03:B385: 20 AD B4    ;
CODE_03B388:    LDA $070B               ; $03:B388: AD 0B 07    ;
CODE_03B38B:    BNE CODE_03B3A5         ; $03:B38B: D0 18       ;
CODE_03B38D:    LDA $28                 ; $03:B38D: A5 28       ;
CODE_03B38F:    CMP #$03                ; $03:B38F: C9 03       ;
CODE_03B391:    BEQ CODE_03B398         ; $03:B391: F0 05       ;
CODE_03B393:    LDY #$18                ; $03:B393: A0 18       ;
CODE_03B395:    STY $0791               ; $03:B395: 8C 91 07    ;
CODE_03B398:    ASL A                   ; $03:B398: 0A          ;
CODE_03B399:    TAX                     ; $03:B399: AA          ;
CODE_03B39A:    JMP (PNTR_03B39D,x)     ; $03:B39A: 7C 9D B3    ;

PNTR_03B39D:    dw CODE_03B3A6                                  ;
                dw CODE_03B3C3                                  ;
                dw CODE_03B3BA                                  ;
                dw CODE_03B41F                                  ;

CODE_03B3A5:    RTS                     ; $03:B3A5: 60          ;

CODE_03B3A6:    JSR CODE_03B5F0         ; $03:B3A6: 20 F0 B5    ;
CODE_03B3A9:    LDA $0C                 ; $03:B3A9: A5 0C       ;
CODE_03B3AB:    BEQ CODE_03B3B0         ; $03:B3AB: F0 03       ;
CODE_03B3AD:    STA $0202               ; $03:B3AD: 8D 02 02    ;
CODE_03B3B0:    JSR CODE_03B62B         ; $03:B3B0: 20 2B B6    ;
CODE_03B3B3:    JSR CODE_03C0B4         ; $03:B3B3: 20 B4 C0    ;
CODE_03B3B6:    STA $06FF               ; $03:B3B6: 8D FF 06    ;
CODE_03B3B9:    RTS                     ; $03:B3B9: 60          ;

CODE_03B3BA:    LDA $070A               ; $03:B3BA: AD 0A 07    ;
CODE_03B3BD:    STA $0709               ; $03:B3BD: 8D 09 07    ;
CODE_03B3C0:    JMP CODE_03B3FC         ; $03:B3C0: 4C FC B3    ;

CODE_03B3C3:    LDY $A0                 ; $03:B3C3: A4 A0       ;
CODE_03B3C5:    BPL CODE_03B3DB         ; $03:B3C5: 10 14       ;
CODE_03B3C7:    LDA $0A                 ; $03:B3C7: A5 0A       ;
CODE_03B3C9:    AND #$80                ; $03:B3C9: 29 80       ;
CODE_03B3CB:    AND $0D                 ; $03:B3CB: 25 0D       ;
CODE_03B3CD:    BNE CODE_03B3E1         ; $03:B3CD: D0 12       ;
CODE_03B3CF:    LDA $0708               ; $03:B3CF: AD 08 07    ;
CODE_03B3D2:    SEC                     ; $03:B3D2: 38          ;
CODE_03B3D3:    SBC $0237               ; $03:B3D3: ED 37 02    ;
CODE_03B3D6:    CMP $0706               ; $03:B3D6: CD 06 07    ;
CODE_03B3D9:    BCC CODE_03B3E1         ; $03:B3D9: 90 06       ;
CODE_03B3DB:    LDA $070A               ; $03:B3DB: AD 0A 07    ;
CODE_03B3DE:    STA $0709               ; $03:B3DE: 8D 09 07    ;
CODE_03B3E1:    LDA $0704               ; $03:B3E1: AD 04 07    ;
CODE_03B3E4:    BEQ CODE_03B3FC         ; $03:B3E4: F0 16       ;
CODE_03B3E6:    JSR CODE_03B5F0         ; $03:B3E6: 20 F0 B5    ;
CODE_03B3E9:    LDA $0237               ; $03:B3E9: AD 37 02    ;
CODE_03B3EC:    CMP #$14                ; $03:B3EC: C9 14       ;
CODE_03B3EE:    BCS CODE_03B3F5         ; $03:B3EE: B0 05       ;
CODE_03B3F0:    LDA #$18                ; $03:B3F0: A9 18       ;
CODE_03B3F2:    STA $0709               ; $03:B3F2: 8D 09 07    ;
CODE_03B3F5:    LDA $0C                 ; $03:B3F5: A5 0C       ;
CODE_03B3F7:    BEQ CODE_03B3FC         ; $03:B3F7: F0 03       ;
CODE_03B3F9:    STA $0202               ; $03:B3F9: 8D 02 02    ;
CODE_03B3FC:    LDA $0C                 ; $03:B3FC: A5 0C       ;
CODE_03B3FE:    BEQ CODE_03B403         ; $03:B3FE: F0 03       ;
CODE_03B400:    JSR CODE_03B62B         ; $03:B400: 20 2B B6    ;
CODE_03B403:    JSR CODE_03C0B4         ; $03:B403: 20 B4 C0    ;
CODE_03B406:    STA $06FF               ; $03:B406: 8D FF 06    ;
CODE_03B409:    LDA $0F                 ; $03:B409: A5 0F       ;\
CODE_03B40B:    CMP #$0B                ; $03:B40B: C9 0B       ; |If Mario is not dying
CODE_03B40D:    BNE CODE_03B414         ; $03:B40D: D0 05       ;/ 
CODE_03B40F:    LDA #$28                ; $03:B40F: A9 28       ;
CODE_03B411:    STA $0709               ; $03:B411: 8D 09 07    ;
CODE_03B414:    JMP CODE_03C0FD         ; $03:B414: 4C FD C0    ;

DATA_03B417:    db $0E,$04,$FC,$F2                              ;
DATA_03B41B:    db $00,$00,$FF,$FF                              ;

CODE_03B41F:    LDA $041C               ; $03:B41F: AD 1C 04    ;
CODE_03B422:    CLC                     ; $03:B422: 18          ;
CODE_03B423:    ADC $043C               ; $03:B423: 6D 3C 04    ;
CODE_03B426:    STA $041C               ; $03:B426: 8D 1C 04    ;
CODE_03B429:    LDY #$00                ; $03:B429: A0 00       ;
CODE_03B42B:    LDA $A0                 ; $03:B42B: A5 A0       ;
CODE_03B42D:    BPL CODE_03B430         ; $03:B42D: 10 01       ;
CODE_03B42F:    DEY                     ; $03:B42F: 88          ;
CODE_03B430:    STY $00                 ; $03:B430: 84 00       ;
CODE_03B432:    ADC $0237               ; $03:B432: 6D 37 02    ;
CODE_03B435:    STA $0237               ; $03:B435: 8D 37 02    ;
CODE_03B438:    LDA $BB                 ; $03:B438: A5 BB       ;
CODE_03B43A:    ADC $00                 ; $03:B43A: 65 00       ;
CODE_03B43C:    STA $BB                 ; $03:B43C: 85 BB       ;
CODE_03B43E:    LDA $0C                 ; $03:B43E: A5 0C       ;
CODE_03B440:    AND $0480               ; $03:B440: 2D 80 04    ;
CODE_03B443:    BEQ CODE_03B47D         ; $03:B443: F0 38       ;
CODE_03B445:    LDY $0791               ; $03:B445: AC 91 07    ;
CODE_03B448:    BNE CODE_03B47C         ; $03:B448: D0 32       ;
CODE_03B44A:    LDY #$18                ; $03:B44A: A0 18       ;
CODE_03B44C:    STY $0791               ; $03:B44C: 8C 91 07    ;
CODE_03B44F:    LDX #$00                ; $03:B44F: A2 00       ;
CODE_03B451:    LDY $0202               ; $03:B451: AC 02 02    ;
CODE_03B454:    LSR A                   ; $03:B454: 4A          ;
CODE_03B455:    BCS CODE_03B460         ; $03:B455: B0 09       ;
CODE_03B457:    LDA $03AD               ; $03:B457: AD AD 03    ;
CODE_03B45A:    CMP #$10                ; $03:B45A: C9 10       ;
CODE_03B45C:    BCC CODE_03B47C         ; $03:B45C: 90 1E       ;
CODE_03B45E:    INX                     ; $03:B45E: E8          ;
CODE_03B45F:    INX                     ; $03:B45F: E8          ;
CODE_03B460:    DEY                     ; $03:B460: 88          ;
CODE_03B461:    BEQ CODE_03B464         ; $03:B461: F0 01       ;
CODE_03B463:    INX                     ; $03:B463: E8          ;
CODE_03B464:    LDA $0219               ; $03:B464: AD 19 02    ;
CODE_03B467:    CLC                     ; $03:B467: 18          ;
CODE_03B468:    ADC DATA_03B417,x       ; $03:B468: 7D 17 B4    ;
CODE_03B46B:    STA $0219               ; $03:B46B: 8D 19 02    ;
CODE_03B46E:    LDA $78                 ; $03:B46E: A5 78       ;
CODE_03B470:    ADC DATA_03B41B,x       ; $03:B470: 7D 1B B4    ;
CODE_03B473:    STA $78                 ; $03:B473: 85 78       ;
CODE_03B475:    LDA $0C                 ; $03:B475: A5 0C       ;
CODE_03B477:    EOR #$03                ; $03:B477: 49 03       ;
CODE_03B479:    STA $0202               ; $03:B479: 8D 02 02    ;
CODE_03B47C:    RTS                     ; $03:B47C: 60          ;

CODE_03B47D:    STA $0791               ; $03:B47D: 8D 91 07    ;
CODE_03B480:    RTS                     ; $03:B480: 60          ;

DATA_03B481:    db $20,$20,$1E,$28,$28,$0D,$04                  ;

DATA_03B488:    db $70,$70,$60,$90,$90,$0A,$09                  ;

DATA_03B48F:    db $FC,$FC,$FC,$FB,$FB,$FE,$FF                  ;

DATA_03B496:    db $00,$00,$00,$00,$00,$80,$00                  ;

DATA_03B49D:    db $D8,$E8,$F0                                  ;

DATA_03B4A0:    db $28,$18,$10,$0C                              ;

DATA_03B4A4:    db $E4,$98,$D0                                  ;

DATA_03B4A7:    db $00,$FF,$01                                  ;

DATA_03B4AA:    db $00,$20,$FF                                  ;

CODE_03B4AD:    LDA $28                 ; $03:B4AD: A5 28       ;
CODE_03B4AF:    CMP #$03                ; $03:B4AF: C9 03       ;
CODE_03B4B1:    BNE CODE_03B4E3         ; $03:B4B1: D0 30       ;
CODE_03B4B3:    LDY #$00                ; $03:B4B3: A0 00       ;
CODE_03B4B5:    LDA $0B                 ; $03:B4B5: A5 0B       ;
CODE_03B4B7:    AND $0480               ; $03:B4B7: 2D 80 04    ;
CODE_03B4BA:    BEQ CODE_03B4CF         ; $03:B4BA: F0 13       ;
CODE_03B4BC:    INY                     ; $03:B4BC: C8          ;
CODE_03B4BD:    AND #$08                ; $03:B4BD: 29 08       ;
CODE_03B4BF:    BEQ CODE_03B4CE         ; $03:B4BF: F0 0D       ;
CODE_03B4C1:    LDA $09                 ; $03:B4C1: A5 09       ;\
CODE_03B4C3:    AND #$07                ; $03:B4C3: 29 07       ; |
CODE_03B4C5:    BNE CODE_03B4CF         ; $03:B4C5: D0 08       ; |Each 7 frames,
CODE_03B4C7:    LDA #$30                ; $03:B4C7: A9 30       ; |
CODE_03B4C9:    STA $1600               ; $03:B4C9: 8D 00 16    ;/Mario is climbing vine sound plays.
CODE_03B4CC:    BRA CODE_03B4CF         ; $03:B4CC: 80 01       ;

CODE_03B4CE:    INY                     ; $03:B4CE: C8          ;
CODE_03B4CF:    LDX DATA_03B4AA,y       ; $03:B4CF: BE AA B4    ;
CODE_03B4D2:    STX $043C               ; $03:B4D2: 8E 3C 04    ;
CODE_03B4D5:    LDA #$08                ; $03:B4D5: A9 08       ;
CODE_03B4D7:    LDX DATA_03B4A7,y       ; $03:B4D7: BE A7 B4    ;
CODE_03B4DA:    STX $A0                 ; $03:B4DA: 86 A0       ;
CODE_03B4DC:    BMI CODE_03B4DF         ; $03:B4DC: 30 01       ;
CODE_03B4DE:    LSR A                   ; $03:B4DE: 4A          ;
CODE_03B4DF:    STA $070C               ; $03:B4DF: 8D 0C 07    ;
CODE_03B4E2:    RTS                     ; $03:B4E2: 60          ;

CODE_03B4E3:    LDA $070E               ; $03:B4E3: AD 0E 07    ;
CODE_03B4E6:    BNE CODE_03B4F2         ; $03:B4E6: D0 0A       ;
CODE_03B4E8:    LDA $0A                 ; $03:B4E8: A5 0A       ;
CODE_03B4EA:    AND #$80                ; $03:B4EA: 29 80       ;
CODE_03B4EC:    BEQ CODE_03B4F2         ; $03:B4EC: F0 04       ;
CODE_03B4EE:    AND $0D                 ; $03:B4EE: 25 0D       ;
CODE_03B4F0:    BEQ CODE_03B4F5         ; $03:B4F0: F0 03       ;
CODE_03B4F2:    JMP CODE_03B580         ; $03:B4F2: 4C 80 B5    ;

CODE_03B4F5:    LDA $28                 ; $03:B4F5: A5 28       ;
CODE_03B4F7:    BEQ CODE_03B50A         ; $03:B4F7: F0 11       ;
CODE_03B4F9:    LDA $0704               ; $03:B4F9: AD 04 07    ;
CODE_03B4FC:    BEQ CODE_03B4F2         ; $03:B4FC: F0 F4       ;
CODE_03B4FE:    LDA $078A               ; $03:B4FE: AD 8A 07    ;
CODE_03B501:    BNE CODE_03B50A         ; $03:B501: D0 07       ;
CODE_03B503:    LDA $A0                 ; $03:B503: A5 A0       ;
CODE_03B505:    BPL CODE_03B50A         ; $03:B505: 10 03       ;
CODE_03B507:    JMP CODE_03B580         ; $03:B507: 4C 80 B5    ;

CODE_03B50A:    LDA #$20                ; $03:B50A: A9 20       ;
CODE_03B50C:    STA $078A               ; $03:B50C: 8D 8A 07    ;
CODE_03B50F:    LDY #$00                ; $03:B50F: A0 00       ;
CODE_03B511:    STY $041C               ; $03:B511: 8C 1C 04    ;
CODE_03B514:    STY $043C               ; $03:B514: 8C 3C 04    ;
CODE_03B517:    LDA $BB                 ; $03:B517: A5 BB       ;
CODE_03B519:    STA $0707               ; $03:B519: 8D 07 07    ;
CODE_03B51C:    LDA $0237               ; $03:B51C: AD 37 02    ;
CODE_03B51F:    STA $0708               ; $03:B51F: 8D 08 07    ;
CODE_03B522:    LDA #$01                ; $03:B522: A9 01       ;
CODE_03B524:    STA $28                 ; $03:B524: 85 28       ;
CODE_03B526:    LDA $0700               ; $03:B526: AD 00 07    ;
CODE_03B529:    CMP #$09                ; $03:B529: C9 09       ;
CODE_03B52B:    BCC CODE_03B53D         ; $03:B52B: 90 10       ;
CODE_03B52D:    INY                     ; $03:B52D: C8          ;
CODE_03B52E:    CMP #$10                ; $03:B52E: C9 10       ;
CODE_03B530:    BCC CODE_03B53D         ; $03:B530: 90 0B       ;
CODE_03B532:    INY                     ; $03:B532: C8          ;
CODE_03B533:    CMP #$19                ; $03:B533: C9 19       ;
CODE_03B535:    BCC CODE_03B53D         ; $03:B535: 90 06       ;
CODE_03B537:    INY                     ; $03:B537: C8          ;
CODE_03B538:    CMP #$1C                ; $03:B538: C9 1C       ;
CODE_03B53A:    BCC CODE_03B53D         ; $03:B53A: 90 01       ;
CODE_03B53C:    INY                     ; $03:B53C: C8          ;
CODE_03B53D:    LDA #$01                ; $03:B53D: A9 01       ;
CODE_03B53F:    STA $0706               ; $03:B53F: 8D 06 07    ;
CODE_03B542:    LDA $0704               ; $03:B542: AD 04 07    ;
CODE_03B545:    BEQ CODE_03B54F         ; $03:B545: F0 08       ;
CODE_03B547:    LDY #$05                ; $03:B547: A0 05       ;
CODE_03B549:    LDA $027D               ; $03:B549: AD 7D 02    ;
CODE_03B54C:    BEQ CODE_03B54F         ; $03:B54C: F0 01       ;
CODE_03B54E:    INY                     ; $03:B54E: C8          ;
CODE_03B54F:    LDA DATA_03B481,y       ; $03:B54F: B9 81 B4    ;
CODE_03B552:    STA $0709               ; $03:B552: 8D 09 07    ;
CODE_03B555:    LDA DATA_03B488,y       ; $03:B555: B9 88 B4    ;
CODE_03B558:    STA $070A               ; $03:B558: 8D 0A 07    ;
CODE_03B55B:    LDA DATA_03B496,y       ; $03:B55B: B9 96 B4    ;
CODE_03B55E:    STA $043C               ; $03:B55E: 8D 3C 04    ;
CODE_03B561:    LDA DATA_03B48F,y       ; $03:B561: B9 8F B4    ;
CODE_03B564:    STA $A0                 ; $03:B564: 85 A0       ;
CODE_03B566:    LDA $0704               ; $03:B566: AD 04 07    ;
CODE_03B569:    BEQ CODE_03B57B         ; $03:B569: F0 10       ;
CODE_03B56B:    LDA #$0E                ; $03:B56B: A9 0E       ;\Mario is swimming sound
CODE_03B56D:    STA $1600               ; $03:B56D: 8D 00 16    ;/
CODE_03B570:    LDA $0237               ; $03:B570: AD 37 02    ;
CODE_03B573:    CMP #$14                ; $03:B573: C9 14       ;
CODE_03B575:    BCS CODE_03B580         ; $03:B575: B0 09       ;
CODE_03B577:    STZ $A0                 ; $03:B577: 64 A0       ;
CODE_03B579:    BRA CODE_03B580         ; $03:B579: 80 05       ;

CODE_03B57B:    LDA #$01                ; $03:B57B: A9 01       ;\Mario is jumping sound
CODE_03B57D:    STA $1601               ; $03:B57D: 8D 01 16    ;/
CODE_03B580:    LDY #$00                ; $03:B580: A0 00       ;
CODE_03B582:    STY $00                 ; $03:B582: 84 00       ;
CODE_03B584:    LDA $28                 ; $03:B584: A5 28       ;
CODE_03B586:    BEQ CODE_03B591         ; $03:B586: F0 09       ;
CODE_03B588:    LDA $0700               ; $03:B588: AD 00 07    ;
CODE_03B58B:    CMP #$19                ; $03:B58B: C9 19       ;
CODE_03B58D:    BCS CODE_03B5C0         ; $03:B58D: B0 31       ;
CODE_03B58F:    BCC CODE_03B5A8         ; $03:B58F: 90 17       ;
CODE_03B591:    INY                     ; $03:B591: C8          ;
CODE_03B592:    LDA $5C                 ; $03:B592: A5 5C       ;
CODE_03B594:    BEQ CODE_03B5A8         ; $03:B594: F0 12       ;
CODE_03B596:    DEY                     ; $03:B596: 88          ;
CODE_03B597:    LDA $0C                 ; $03:B597: A5 0C       ;
CODE_03B599:    CMP $46                 ; $03:B599: C5 46       ;
CODE_03B59B:    BNE CODE_03B5A8         ; $03:B59B: D0 0B       ;
CODE_03B59D:    LDA $0A                 ; $03:B59D: A5 0A       ;
CODE_03B59F:    AND #$40                ; $03:B59F: 29 40       ;
CODE_03B5A1:    BNE CODE_03B5BB         ; $03:B5A1: D0 18       ;
CODE_03B5A3:    LDA $078B               ; $03:B5A3: AD 8B 07    ;
CODE_03B5A6:    BNE CODE_03B5C0         ; $03:B5A6: D0 18       ;
CODE_03B5A8:    INY                     ; $03:B5A8: C8          ;
CODE_03B5A9:    INC $00                 ; $03:B5A9: E6 00       ;
CODE_03B5AB:    LDA $0703               ; $03:B5AB: AD 03 07    ;
CODE_03B5AE:    BNE CODE_03B5B7         ; $03:B5AE: D0 07       ;
CODE_03B5B0:    LDA $0700               ; $03:B5B0: AD 00 07    ;
CODE_03B5B3:    CMP #$21                ; $03:B5B3: C9 21       ;
CODE_03B5B5:    BCC CODE_03B5C0         ; $03:B5B5: 90 09       ;
CODE_03B5B7:    INC $00                 ; $03:B5B7: E6 00       ;
CODE_03B5B9:    BRA CODE_03B5C0         ; $03:B5B9: 80 05       ;

CODE_03B5BB:    LDA #$0A                ; $03:B5BB: A9 0A       ;
CODE_03B5BD:    STA $078B               ; $03:B5BD: 8D 8B 07    ;
CODE_03B5C0:    LDA DATA_03B49D,y       ; $03:B5C0: B9 9D B4    ;
CODE_03B5C3:    STA $045D               ; $03:B5C3: 8D 5D 04    ;
CODE_03B5C6:    LDA $0F                 ; $03:B5C6: A5 0F       ;
CODE_03B5C8:    CMP #$07                ; $03:B5C8: C9 07       ;
CODE_03B5CA:    BNE CODE_03B5CE         ; $03:B5CA: D0 02       ;
CODE_03B5CC:    LDY #$03                ; $03:B5CC: A0 03       ;
CODE_03B5CE:    LDA DATA_03B4A0,y       ; $03:B5CE: B9 A0 B4    ;
CODE_03B5D1:    STA $0463               ; $03:B5D1: 8D 63 04    ;
CODE_03B5D4:    LDY $00                 ; $03:B5D4: A4 00       ;
CODE_03B5D6:    LDA DATA_03B4A4,y       ; $03:B5D6: B9 A4 B4    ;
CODE_03B5D9:    STA $0702               ; $03:B5D9: 8D 02 07    ;
CODE_03B5DC:    STZ $0701               ; $03:B5DC: 9C 01 07    ;
CODE_03B5DF:    LDA $0202               ; $03:B5DF: AD 02 02    ;
CODE_03B5E2:    CMP $46                 ; $03:B5E2: C5 46       ;
CODE_03B5E4:    BEQ CODE_03B5EC         ; $03:B5E4: F0 06       ;
CODE_03B5E6:    ASL $0702               ; $03:B5E6: 0E 02 07    ;
CODE_03B5E9:    ROL $0701               ; $03:B5E9: 2E 01 07    ;
CODE_03B5EC:    RTS                     ; $03:B5EC: 60          ;

DATA_03B5ED:    db $02,$04,$07                                  ;

CODE_03B5F0:    LDY #$00                ; $03:B5F0: A0 00       ;
CODE_03B5F2:    LDA $0700               ; $03:B5F2: AD 00 07    ;
CODE_03B5F5:    CMP #$1C                ; $03:B5F5: C9 1C       ;
CODE_03B5F7:    BCS CODE_03B60E         ; $03:B5F7: B0 15       ;
CODE_03B5F9:    INY                     ; $03:B5F9: C8          ;
CODE_03B5FA:    CMP #$0E                ; $03:B5FA: C9 0E       ;
CODE_03B5FC:    BCS CODE_03B5FF         ; $03:B5FC: B0 01       ;
CODE_03B5FE:    INY                     ; $03:B5FE: C8          ;
CODE_03B5FF:    LDA $0FF4               ; $03:B5FF: AD F4 0F    ;
CODE_03B602:    AND #$7F                ; $03:B602: 29 7F       ;
CODE_03B604:    BEQ CODE_03B624         ; $03:B604: F0 1E       ;
CODE_03B606:    AND #$03                ; $03:B606: 29 03       ;
CODE_03B608:    CMP $46                 ; $03:B608: C5 46       ;
CODE_03B60A:    BNE CODE_03B613         ; $03:B60A: D0 07       ;
CODE_03B60C:    LDA #$00                ; $03:B60C: A9 00       ;
CODE_03B60E:    STA $0703               ; $03:B60E: 8D 03 07    ;
CODE_03B611:    BRA CODE_03B624         ; $03:B611: 80 11       ;

CODE_03B613:    LDA $0700               ; $03:B613: AD 00 07    ;
CODE_03B616:    CMP #$0B                ; $03:B616: C9 0B       ;
CODE_03B618:    BCS CODE_03B624         ; $03:B618: B0 0A       ;
CODE_03B61A:    LDA $0202               ; $03:B61A: AD 02 02    ;
CODE_03B61D:    STA $46                 ; $03:B61D: 85 46       ;
CODE_03B61F:    STZ $5D                 ; $03:B61F: 64 5D       ;
CODE_03B621:    STZ $0705               ; $03:B621: 9C 05 07    ;
CODE_03B624:    LDA DATA_03B5ED,y       ; $03:B624: B9 ED B5    ;
CODE_03B627:    STA $070C               ; $03:B627: 8D 0C 07    ;
CODE_03B62A:    RTS                     ; $03:B62A: 60          ;

CODE_03B62B:    AND $0480               ; $03:B62B: 2D 80 04    ;
CODE_03B62E:    BNE CODE_03B638         ; $03:B62E: D0 08       ;
CODE_03B630:    LDA $5D                 ; $03:B630: A5 5D       ;
CODE_03B632:    BEQ CODE_03B67C         ; $03:B632: F0 48       ;
CODE_03B634:    BPL CODE_03B658         ; $03:B634: 10 22       ;
CODE_03B636:    BMI CODE_03B63B         ; $03:B636: 30 03       ;
CODE_03B638:    LSR A                   ; $03:B638: 4A          ;
CODE_03B639:    BCC CODE_03B658         ; $03:B639: 90 1D       ;
CODE_03B63B:    LDA $0705               ; $03:B63B: AD 05 07    ;
CODE_03B63E:    CLC                     ; $03:B63E: 18          ;
CODE_03B63F:    ADC $0702               ; $03:B63F: 6D 02 07    ;
CODE_03B642:    STA $0705               ; $03:B642: 8D 05 07    ;
CODE_03B645:    LDA $5D                 ; $03:B645: A5 5D       ;
CODE_03B647:    ADC $0701               ; $03:B647: 6D 01 07    ;
CODE_03B64A:    STA $5D                 ; $03:B64A: 85 5D       ;
CODE_03B64C:    CMP $0463               ; $03:B64C: CD 63 04    ;
CODE_03B64F:    BMI CODE_03B673         ; $03:B64F: 30 22       ;
CODE_03B651:    LDA $0463               ; $03:B651: AD 63 04    ;
CODE_03B654:    STA $5D                 ; $03:B654: 85 5D       ;
CODE_03B656:    BRA CODE_03B67C         ; $03:B656: 80 24       ;

CODE_03B658:    LDA $0705               ; $03:B658: AD 05 07    ;
CODE_03B65B:    SEC                     ; $03:B65B: 38          ;
CODE_03B65C:    SBC $0702               ; $03:B65C: ED 02 07    ;
CODE_03B65F:    STA $0705               ; $03:B65F: 8D 05 07    ;
CODE_03B662:    LDA $5D                 ; $03:B662: A5 5D       ;
CODE_03B664:    SBC $0701               ; $03:B664: ED 01 07    ;
CODE_03B667:    STA $5D                 ; $03:B667: 85 5D       ;
CODE_03B669:    CMP $045D               ; $03:B669: CD 5D 04    ;
CODE_03B66C:    BPL CODE_03B673         ; $03:B66C: 10 05       ;
CODE_03B66E:    LDA $045D               ; $03:B66E: AD 5D 04    ;
CODE_03B671:    STA $5D                 ; $03:B671: 85 5D       ;
CODE_03B673:    CMP #$00                ; $03:B673: C9 00       ;
CODE_03B675:    BPL CODE_03B67C         ; $03:B675: 10 05       ;
CODE_03B677:    EOR #$FF                ; $03:B677: 49 FF       ;
CODE_03B679:    CLC                     ; $03:B679: 18          ;
CODE_03B67A:    ADC #$01                ; $03:B67A: 69 01       ;
CODE_03B67C:    STA $0700               ; $03:B67C: 8D 00 07    ;
CODE_03B67F:    RTS                     ; $03:B67F: 60          ;

CODE_03B680:    LDA $0756               ; $03:B680: AD 56 07    ;
CODE_03B683:    CMP #$02                ; $03:B683: C9 02       ;
CODE_03B685:    BCC CODE_03B6CB         ; $03:B685: 90 44       ;
CODE_03B687:    LDA $0A                 ; $03:B687: A5 0A       ;
CODE_03B689:    AND #$40                ; $03:B689: 29 40       ;
CODE_03B68B:    BEQ CODE_03B6C1         ; $03:B68B: F0 34       ;
CODE_03B68D:    AND $0D                 ; $03:B68D: 25 0D       ;
CODE_03B68F:    BNE CODE_03B6C1         ; $03:B68F: D0 30       ;
CODE_03B691:    LDA $06CE               ; $03:B691: AD CE 06    ;
CODE_03B694:    AND #$01                ; $03:B694: 29 01       ;
CODE_03B696:    TAX                     ; $03:B696: AA          ;
CODE_03B697:    LDA $33,x               ; $03:B697: B5 33       ;
CODE_03B699:    BNE CODE_03B6C1         ; $03:B699: D0 26       ;
CODE_03B69B:    LDY $BB                 ; $03:B69B: A4 BB       ;
CODE_03B69D:    DEY                     ; $03:B69D: 88          ;
CODE_03B69E:    BNE CODE_03B6C1         ; $03:B69E: D0 21       ;
CODE_03B6A0:    LDA $0714               ; $03:B6A0: AD 14 07    ;
CODE_03B6A3:    BNE CODE_03B6C1         ; $03:B6A3: D0 1C       ;
CODE_03B6A5:    LDA $28                 ; $03:B6A5: A5 28       ;
CODE_03B6A7:    CMP #$03                ; $03:B6A7: C9 03       ;
CODE_03B6A9:    BEQ CODE_03B6C1         ; $03:B6A9: F0 16       ;
CODE_03B6AB:    LDA #$06                ; $03:B6AB: A9 06       ;\Mario threw a fireball sound
CODE_03B6AD:    STA $1603               ; $03:B6AD: 8D 03 16    ;/
CODE_03B6B0:    LDA #$02                ; $03:B6B0: A9 02       ;
CODE_03B6B2:    STA $33,x               ; $03:B6B2: 95 33       ;
CODE_03B6B4:    LDY $070C               ; $03:B6B4: AC 0C 07    ;
CODE_03B6B7:    STY $0711               ; $03:B6B7: 8C 11 07    ;
CODE_03B6BA:    DEY                     ; $03:B6BA: 88          ;
CODE_03B6BB:    STY $0789               ; $03:B6BB: 8C 89 07    ;
CODE_03B6BE:    INC $06CE               ; $03:B6BE: EE CE 06    ;
CODE_03B6C1:    LDX #$00                ; $03:B6C1: A2 00       ;
CODE_03B6C3:    JSR CODE_03B6E6         ; $03:B6C3: 20 E6 B6    ;
CODE_03B6C6:    LDX #$01                ; $03:B6C6: A2 01       ;
CODE_03B6C8:    JSR CODE_03B6E6         ; $03:B6C8: 20 E6 B6    ;
CODE_03B6CB:    LDA $5C                 ; $03:B6CB: A5 5C       ;
CODE_03B6CD:    BNE CODE_03B6E3         ; $03:B6CD: D0 14       ;
CODE_03B6CF:    LDX #$02                ; $03:B6CF: A2 02       ;
CODE_03B6D1:    STX $9E                 ; $03:B6D1: 86 9E       ;
CODE_03B6D3:    JSR CODE_03B780         ; $03:B6D3: 20 80 B7    ;
CODE_03B6D6:    JSR CODE_03FD1A         ; $03:B6D6: 20 1A FD    ;
CODE_03B6D9:    JSR CODE_03FDAD         ; $03:B6D9: 20 AD FD    ;
CODE_03B6DC:    JSL CODE_05E2AA         ; $03:B6DC: 22 AA E2 05 ;
CODE_03B6E0:    DEX                     ; $03:B6E0: CA          ;
CODE_03B6E1:    BPL CODE_03B6D1         ; $03:B6E1: 10 EE       ;
CODE_03B6E3:    RTS                     ; $03:B6E3: 60          ;

DATA_03B6E4:    db $40,$C0                                      ;Fireball Xspeed: Right, left

CODE_03B6E6:    STX $9E                 ; $03:B6E6: 86 9E       ;
CODE_03B6E8:    LDA $33,x               ; $03:B6E8: B5 33       ;
CODE_03B6EA:    ASL A                   ; $03:B6EA: 0A          ;
CODE_03B6EB:    BCC CODE_03B6F0         ; $03:B6EB: 90 03       ;
CODE_03B6ED:    JMP CODE_03B77A         ; $03:B6ED: 4C 7A B7    ;

CODE_03B6F0:    LDY $33,x               ; $03:B6F0: B4 33       ;\If fireball exists in any form,
CODE_03B6F2:    BNE CODE_03B6F7         ; $03:B6F2: D0 03       ; |Go to fireball throw routine
CODE_03B6F4:    JMP CODE_03B779         ; $03:B6F4: 4C 79 B7    ;/Otherwise, return

CODE_03B6F7:    DEY                     ; $03:B6F7: 88          ;
CODE_03B6F8:    BEQ CODE_03B726         ; $03:B6F8: F0 2C       ;

;This piece of code only triggers... |
;...when Mario throws a fireball.    V
CODE_03B6FA:    LDA $0219               ; $03:B6FA: AD 19 02    ;\Load Mario's Xpos (Xpos in single page)
CODE_03B6FD:    ADC #$04                ; $03:B6FD: 69 04       ; |Add $04/$05 to it (Depends on C flag)
CODE_03B6FF:    STA $0224,x             ; $03:B6FF: 9D 24 02    ;/Store into Fireball creation Xpos
CODE_03B702:    LDA $78                 ; $03:B702: A5 78       ;\Load Mario's Xpos (Page # player is in)
CODE_03B704:    ADC #$00                ; $03:B704: 69 00       ; |Add $00/$01 to it (Depends on C flag)
CODE_03B706:    STA $83,x               ; $03:B706: 95 83       ;/Store into page of Fireball (not sure)
CODE_03B708:    LDA $0237               ; $03:B708: AD 37 02    ;\Load Mario's Ypos
CODE_03B70B:    STA $0242,x             ; $03:B70B: 9D 42 02    ;/Store into Ypos of fireball
CODE_03B70E:    LDA #$01                ; $03:B70E: A9 01       ;\Set the "Mario threw a fireball" flag
CODE_03B710:    STA $C6,x               ; $03:B710: 95 C6       ;/
CODE_03B712:    LDY $0202               ; $03:B712: AC 02 02    ;\Mario's direction
CODE_03B715:    DEY                     ; $03:B715: 88          ; |Decrease with 1
CODE_03B716:    LDA DATA_03B6E4,y       ; $03:B716: B9 E4 B6    ; |Load Horizontal speeds
CODE_03B719:    STA $68,x               ; $03:B719: 95 68       ;/Store into Fireball horizontal speed
CODE_03B71B:    LDA #$04                ; $03:B71B: A9 04       ;\Y-speed of the fireball when it gets thrown
CODE_03B71D:    STA $AB,x               ; $03:B71D: 95 AB       ;/Which is of course, downwards
CODE_03B71F:    LDA #$07                ; $03:B71F: A9 07       ;
CODE_03B721:    STA $049A,x             ; $03:B721: 9D 9A 04    ;
CODE_03B724:    DEC $33,x               ; $03:B724: D6 33       ;Decrease fireball state timer
CODE_03B726:    TXA                     ; $03:B726: 8A          ;
CODE_03B727:    CLC                     ; $03:B727: 18          ;
CODE_03B728:    ADC #$0B                ; $03:B728: 69 0B       ;
CODE_03B72A:    TAX                     ; $03:B72A: AA          ;
CODE_03B72B:    LDA #$50                ; $03:B72B: A9 50       ;
CODE_03B72D:    STA $00                 ; $03:B72D: 85 00       ;
CODE_03B72F:    LDA #$03                ; $03:B72F: A9 03       ;
CODE_03B731:    STA $02                 ; $03:B731: 85 02       ;
CODE_03B733:    LDA #$00                ; $03:B733: A9 00       ;
CODE_03B735:    JSR CODE_03C18B         ; $03:B735: 20 8B C1    ;Impose gravity
CODE_03B738:    JSR CODE_03C0BA         ; $03:B738: 20 BA C0    ;
CODE_03B73B:    LDX $9E                 ; $03:B73B: A6 9E       ;
CODE_03B73D:    JSR CODE_03FD23         ; $03:B73D: 20 23 FD    ;
CODE_03B740:    JSR CODE_03FDA3         ; $03:B740: 20 A3 FD    ;
CODE_03B743:    JSR CODE_03E9B6         ; $03:B743: 20 B6 E9    ;
CODE_03B746:    JSR CODE_03E946         ; $03:B746: 20 46 E9    ;
CODE_03B749:    LDA $03D2               ; $03:B749: AD D2 03    ;
CODE_03B74C:    AND #$FC                ; $03:B74C: 29 FC       ;
CODE_03B74E:    BEQ CODE_03B76F         ; $03:B74E: F0 1F       ;
CODE_03B750:    AND #$F0                ; $03:B750: 29 F0       ;
CODE_03B752:    BNE CODE_03B775         ; $03:B752: D0 21       ;
CODE_03B754:    LDA $0068,x             ; $03:B754: BD 68 00    ;
CODE_03B757:    BMI CODE_03B764         ; $03:B757: 30 0B       ;
CODE_03B759:    LDA $03D2               ; $03:B759: AD D2 03    ;
CODE_03B75C:    AND #$0F                ; $03:B75C: 29 0F       ;
CODE_03B75E:    CMP #$0F                ; $03:B75E: C9 0F       ;
CODE_03B760:    BEQ CODE_03B775         ; $03:B760: F0 13       ;
CODE_03B762:    BRA CODE_03B772         ; $03:B762: 80 0E       ;

CODE_03B764:    LDA $03D2               ; $03:B764: AD D2 03    ;
CODE_03B767:    AND #$0C                ; $03:B767: 29 0C       ;
CODE_03B769:    CMP #$0C                ; $03:B769: C9 0C       ;
CODE_03B76B:    BEQ CODE_03B775         ; $03:B76B: F0 08       ;
CODE_03B76D:    BRA CODE_03B772         ; $03:B76D: 80 03       ;

CODE_03B76F:    JSR CODE_03DC70         ; $03:B76F: 20 70 DC    ;
CODE_03B772:    JMP CODE_03F443         ; $03:B772: 4C 43 F4    ;

CODE_03B775:    LDA #$00                ; $03:B775: A9 00       ;
CODE_03B777:    STA $33,x               ; $03:B777: 95 33       ;
CODE_03B779:    RTS                     ; $03:B779: 60          ;

CODE_03B77A:    JSR CODE_03FD23         ; $03:B77A: 20 23 FD    ;
CODE_03B77D:    JMP CODE_03F4A8         ; $03:B77D: 4C A8 F4    ;

CODE_03B780:    LDA $07B8,x             ; $03:B780: BD B8 07    ;
CODE_03B783:    AND #$01                ; $03:B783: 29 01       ;
CODE_03B785:    STA $07                 ; $03:B785: 85 07       ;
CODE_03B787:    LDA $0251,x             ; $03:B787: BD 51 02    ;
CODE_03B78A:    CMP #$F8                ; $03:B78A: C9 F8       ;
CODE_03B78C:    BNE CODE_03B7BF         ; $03:B78C: D0 31       ;
CODE_03B78E:    LDA $079E               ; $03:B78E: AD 9E 07    ;
CODE_03B791:    BNE CODE_03B7D9         ; $03:B791: D0 46       ;
CODE_03B793:    LDY #$00                ; $03:B793: A0 00       ;
CODE_03B795:    LDA $0202               ; $03:B795: AD 02 02    ;
CODE_03B798:    LSR A                   ; $03:B798: 4A          ;
CODE_03B799:    BCC CODE_03B79D         ; $03:B799: 90 02       ;
CODE_03B79B:    LDY #$08                ; $03:B79B: A0 08       ;
CODE_03B79D:    TYA                     ; $03:B79D: 98          ;
CODE_03B79E:    ADC $0219               ; $03:B79E: 6D 19 02    ;
CODE_03B7A1:    STA $0233,x             ; $03:B7A1: 9D 33 02    ;
CODE_03B7A4:    LDA $78                 ; $03:B7A4: A5 78       ;
CODE_03B7A6:    ADC #$00                ; $03:B7A6: 69 00       ;
CODE_03B7A8:    STA $92,x               ; $03:B7A8: 95 92       ;
CODE_03B7AA:    LDA $0237               ; $03:B7AA: AD 37 02    ;
CODE_03B7AD:    CLC                     ; $03:B7AD: 18          ;
CODE_03B7AE:    ADC #$08                ; $03:B7AE: 69 08       ;
CODE_03B7B0:    STA $0251,x             ; $03:B7B0: 9D 51 02    ;
CODE_03B7B3:    LDA #$01                ; $03:B7B3: A9 01       ;
CODE_03B7B5:    STA $D5,x               ; $03:B7B5: 95 D5       ;
CODE_03B7B7:    LDY $07                 ; $03:B7B7: A4 07       ;
CODE_03B7B9:    LDA DATA_03B7DC,y       ; $03:B7B9: B9 DC B7    ;
CODE_03B7BC:    STA $079E               ; $03:B7BC: 8D 9E 07    ;
CODE_03B7BF:    LDY $07                 ; $03:B7BF: A4 07       ;
CODE_03B7C1:    LDA $0436,x             ; $03:B7C1: BD 36 04    ;
CODE_03B7C4:    SEC                     ; $03:B7C4: 38          ;
CODE_03B7C5:    SBC DATA_03B7DA,y       ; $03:B7C5: F9 DA B7    ;
CODE_03B7C8:    STA $0436,x             ; $03:B7C8: 9D 36 04    ;
CODE_03B7CB:    LDA $0251,x             ; $03:B7CB: BD 51 02    ;
CODE_03B7CE:    SBC #$00                ; $03:B7CE: E9 00       ;
CODE_03B7D0:    CMP #$20                ; $03:B7D0: C9 20       ;
CODE_03B7D2:    BCS CODE_03B7D6         ; $03:B7D2: B0 02       ;
CODE_03B7D4:    LDA #$F8                ; $03:B7D4: A9 F8       ;
CODE_03B7D6:    STA $0251,x             ; $03:B7D6: 9D 51 02    ;
CODE_03B7D9:    RTS                     ; $03:B7D9: 60          ;

DATA_03B7DA:    db $FF,$50                                      ;
DATA_03B7DC:    db $40,$20                                      ;

CODE_03B7DE:    LDA $0770               ; $03:B7DE: AD 70 07    ;
CODE_03B7E1:    BEQ CODE_03B838         ; $03:B7E1: F0 55       ;
CODE_03B7E3:    LDA $0F                 ; $03:B7E3: A5 0F       ;
CODE_03B7E5:    CMP #$08                ; $03:B7E5: C9 08       ;
CODE_03B7E7:    BCC CODE_03B838         ; $03:B7E7: 90 4F       ;
CODE_03B7E9:    CMP #$0B                ; $03:B7E9: C9 0B       ;
CODE_03B7EB:    BEQ CODE_03B838         ; $03:B7EB: F0 4B       ;
CODE_03B7ED:    LDA $BB                 ; $03:B7ED: A5 BB       ;
CODE_03B7EF:    CMP #$02                ; $03:B7EF: C9 02       ;
CODE_03B7F1:    BPL CODE_03B838         ; $03:B7F1: 10 45       ;
CODE_03B7F3:    LDA $078F               ; $03:B7F3: AD 8F 07    ;\If timer countdown timer isn't, $00 yet, branch
CODE_03B7F6:    BNE CODE_03B838         ; $03:B7F6: D0 40       ;/
CODE_03B7F8:    LDA $07E9               ; $03:B7F8: AD E9 07    ;\
CODE_03B7FB:    ORA $07EA               ; $03:B7FB: 0D EA 07    ; |Branch if timer is 000
CODE_03B7FE:    ORA $07EB               ; $03:B7FE: 0D EB 07    ; |
CODE_03B801:    BEQ CODE_03B82F         ; $03:B801: F0 2C       ;/
CODE_03B803:    LDY $07E9               ; $03:B803: AC E9 07    ;\
CODE_03B806:    DEY                     ; $03:B806: 88          ; |
CODE_03B807:    BNE CODE_03B816         ; $03:B807: D0 0D       ; |Check hundreds, if not $00, branch
CODE_03B809:    LDA $07EA               ; $03:B809: AD EA 07    ;\|
CODE_03B80C:    ORA $07EB               ; $03:B80C: 0D EB 07    ; |Check the tens and ones. If not $00, branch
CODE_03B80F:    BNE CODE_03B816         ; $03:B80F: D0 05       ;/
CODE_03B811:    LDA #$FF                ; $03:B811: A9 FF       ;\
CODE_03B813:    STA $1600               ; $03:B813: 8D 00 16    ;/Time is running out! sound
CODE_03B816:    LDA #$18                ; $03:B816: A9 18       ;\
CODE_03B818:    STA $078F               ; $03:B818: 8D 8F 07    ;/Control the timer countdown speed
CODE_03B81B:    LDY #$23                ; $03:B81B: A0 23       ;
CODE_03B81D:    LDA #$FF                ; $03:B81D: A9 FF       ;
CODE_03B81F:    STA $014A               ; $03:B81F: 8D 4A 01    ;
CODE_03B822:    LDA $0E73               ; $03:B822: AD 73 0E    ;
CODE_03B825:    BNE CODE_03B82A         ; $03:B825: D0 03       ;
CODE_03B827:    JSR CODE_039CF9         ; $03:B827: 20 F9 9C    ;
CODE_03B82A:    LDA #$A4                ; $03:B82A: A9 A4       ;
CODE_03B82C:    JMP CODE_039C82         ; $03:B82C: 4C 82 9C    ;

CODE_03B82F:    STA $0756               ; $03:B82F: 8D 56 07    ;
CODE_03B832:    JSR CODE_03DF52         ; $03:B832: 20 52 DF    ;
CODE_03B835:    INC $0759               ; $03:B835: EE 59 07    ;
CODE_03B838:    RTS                     ; $03:B838: 60          ;

CODE_03B839:    LDA $0723               ; $03:B839: AD 23 07    ;
CODE_03B83C:    BEQ CODE_03B838         ; $03:B83C: F0 FA       ;
CODE_03B83E:    LDA $0237               ; $03:B83E: AD 37 02    ;
CODE_03B841:    AND $BB                 ; $03:B841: 25 BB       ;
CODE_03B843:    BNE CODE_03B838         ; $03:B843: D0 F3       ;
CODE_03B845:    STA $0723               ; $03:B845: 8D 23 07    ;
CODE_03B848:    INC $06D6               ; $03:B848: EE D6 06    ;
CODE_03B84B:    JMP CODE_03CDE2         ; $03:B84B: 4C E2 CD    ; Erase sprite

CODE_03B84E:    LDA $5C                 ; $03:B84E: A5 5C       ;
CODE_03B850:    BNE CODE_03B88F         ; $03:B850: D0 3D       ;
CODE_03B852:    STA $027D               ; $03:B852: 8D 7D 02    ;
CODE_03B855:    JSL CODE_048378         ; $03:B855: 22 78 83 04 ;
CODE_03B859:    LDA $0747               ; $03:B859: AD 47 07    ;
CODE_03B85C:    BNE CODE_03B88F         ; $03:B85C: D0 31       ;
CODE_03B85E:    LDY #$04                ; $03:B85E: A0 04       ;
CODE_03B860:    LDA $0271,y             ; $03:B860: B9 71 02    ;
CODE_03B863:    CLC                     ; $03:B863: 18          ;
CODE_03B864:    ADC $0277,y             ; $03:B864: 79 77 02    ;
CODE_03B867:    STA $02                 ; $03:B867: 85 02       ;
CODE_03B869:    LDA $026B,y             ; $03:B869: B9 6B 02    ;
CODE_03B86C:    BEQ CODE_03B88C         ; $03:B86C: F0 1E       ;
CODE_03B86E:    ADC #$00                ; $03:B86E: 69 00       ;
CODE_03B870:    STA $01                 ; $03:B870: 85 01       ;
CODE_03B872:    LDA $0219               ; $03:B872: AD 19 02    ;
CODE_03B875:    SEC                     ; $03:B875: 38          ;
CODE_03B876:    SBC $0271,y             ; $03:B876: F9 71 02    ;
CODE_03B879:    LDA $78                 ; $03:B879: A5 78       ;
CODE_03B87B:    SBC $026B,y             ; $03:B87B: F9 6B 02    ;
CODE_03B87E:    BMI CODE_03B88C         ; $03:B87E: 30 0C       ;
CODE_03B880:    LDA $02                 ; $03:B880: A5 02       ;
CODE_03B882:    SEC                     ; $03:B882: 38          ;
CODE_03B883:    SBC $0219               ; $03:B883: ED 19 02    ;
CODE_03B886:    LDA $01                 ; $03:B886: A5 01       ;
CODE_03B888:    SBC $78                 ; $03:B888: E5 78       ;
CODE_03B88A:    BPL CODE_03B890         ; $03:B88A: 10 04       ;
CODE_03B88C:    DEY                     ; $03:B88C: 88          ;
CODE_03B88D:    BPL CODE_03B860         ; $03:B88D: 10 D1       ;
CODE_03B88F:    RTS                     ; $03:B88F: 60          ;

CODE_03B890:    LDA $0277,y             ; $03:B890: B9 77 02    ;
CODE_03B893:    LSR A                   ; $03:B893: 4A          ;
CODE_03B894:    STA $00                 ; $03:B894: 85 00       ;
CODE_03B896:    LDA $0271,y             ; $03:B896: B9 71 02    ;
CODE_03B899:    CLC                     ; $03:B899: 18          ;
CODE_03B89A:    ADC $00                 ; $03:B89A: 65 00       ;
CODE_03B89C:    STA $01                 ; $03:B89C: 85 01       ;
CODE_03B89E:    LDA $026B,y             ; $03:B89E: B9 6B 02    ;
CODE_03B8A1:    ADC #$00                ; $03:B8A1: 69 00       ;
CODE_03B8A3:    STA $00                 ; $03:B8A3: 85 00       ;
CODE_03B8A5:    LDA $09                 ; $03:B8A5: A5 09       ;
CODE_03B8A7:    LSR A                   ; $03:B8A7: 4A          ;
CODE_03B8A8:    BCC CODE_03B8DB         ; $03:B8A8: 90 31       ;
CODE_03B8AA:    LDA $01                 ; $03:B8AA: A5 01       ;
CODE_03B8AC:    SEC                     ; $03:B8AC: 38          ;
CODE_03B8AD:    SBC $0219               ; $03:B8AD: ED 19 02    ;
CODE_03B8B0:    LDA $00                 ; $03:B8B0: A5 00       ;
CODE_03B8B2:    SBC $78                 ; $03:B8B2: E5 78       ;
CODE_03B8B4:    BPL CODE_03B8C6         ; $03:B8B4: 10 10       ;
CODE_03B8B6:    LDA $0219               ; $03:B8B6: AD 19 02    ;
CODE_03B8B9:    SEC                     ; $03:B8B9: 38          ;
CODE_03B8BA:    SBC #$01                ; $03:B8BA: E9 01       ;
CODE_03B8BC:    STA $0219               ; $03:B8BC: 8D 19 02    ;
CODE_03B8BF:    LDA $78                 ; $03:B8BF: A5 78       ;
CODE_03B8C1:    SBC #$00                ; $03:B8C1: E9 00       ;
CODE_03B8C3:    JMP CODE_03B8D9         ; $03:B8C3: 4C D9 B8    ;

CODE_03B8C6:    LDA $0480               ; $03:B8C6: AD 80 04    ;
CODE_03B8C9:    LSR A                   ; $03:B8C9: 4A          ;
CODE_03B8CA:    BCC CODE_03B8DB         ; $03:B8CA: 90 0F       ;
CODE_03B8CC:    LDA $0219               ; $03:B8CC: AD 19 02    ;
CODE_03B8CF:    CLC                     ; $03:B8CF: 18          ;
CODE_03B8D0:    ADC #$01                ; $03:B8D0: 69 01       ;
CODE_03B8D2:    STA $0219               ; $03:B8D2: 8D 19 02    ;
CODE_03B8D5:    LDA $78                 ; $03:B8D5: A5 78       ;
CODE_03B8D7:    ADC #$00                ; $03:B8D7: 69 00       ;
CODE_03B8D9:    STA $78                 ; $03:B8D9: 85 78       ;
CODE_03B8DB:    LDA #$10                ; $03:B8DB: A9 10       ;
CODE_03B8DD:    STA $00                 ; $03:B8DD: 85 00       ;
CODE_03B8DF:    LDA #$01                ; $03:B8DF: A9 01       ;
CODE_03B8E1:    STA $027D               ; $03:B8E1: 8D 7D 02    ;
CODE_03B8E4:    STA $02                 ; $03:B8E4: 85 02       ;
CODE_03B8E6:    LSR A                   ; $03:B8E6: 4A          ;
CODE_03B8E7:    TAX                     ; $03:B8E7: AA          ;
CODE_03B8E8:    JMP CODE_03C18B         ; $03:B8E8: 4C 8B C1    ;Impose gravity

DATA_03B8EB:    db $05,$02,$08,$04,$01                          ;

DATA_03B8F0:    db $03,$03,$04,$04,$04                          ;

CODE_03B8F5:    LDX #$05                ; $03:B8F5: A2 05       ;
CODE_03B8F7:    STX $9E                 ; $03:B8F7: 86 9E       ;
CODE_03B8F9:    LDA $1C,x               ; $03:B8F9: B5 1C       ;
CODE_03B8FB:    CMP #$30                ; $03:B8FB: C9 30       ;
CODE_03B8FD:    BEQ CODE_03B902         ; $03:B8FD: F0 03       ;
CODE_03B8FF:    JMP CODE_03B98C         ; $03:B8FF: 4C 8C B9    ;

CODE_03B902:    LDA $0F                 ; $03:B902: A5 0F       ;
CODE_03B904:    CMP #$04                ; $03:B904: C9 04       ;
CODE_03B906:    BNE CODE_03B93D         ; $03:B906: D0 35       ;
CODE_03B908:    LDA $28                 ; $03:B908: A5 28       ;
CODE_03B90A:    CMP #$03                ; $03:B90A: C9 03       ;
CODE_03B90C:    BNE CODE_03B93D         ; $03:B90C: D0 2F       ;
CODE_03B90E:    LDA $0238,x             ; $03:B90E: BD 38 02    ;
CODE_03B911:    CMP #$AA                ; $03:B911: C9 AA       ;
CODE_03B913:    BCS CODE_03B93F         ; $03:B913: B0 2A       ;
CODE_03B915:    LDA $0237               ; $03:B915: AD 37 02    ;
CODE_03B918:    CMP #$A2                ; $03:B918: C9 A2       ;
CODE_03B91A:    BCS CODE_03B93F         ; $03:B91A: B0 23       ;
CODE_03B91C:    LDA $041D,x             ; $03:B91C: BD 1D 04    ;
CODE_03B91F:    ADC #$FF                ; $03:B91F: 69 FF       ;
CODE_03B921:    STA $041D,x             ; $03:B921: 9D 1D 04    ;
CODE_03B924:    LDA $0238,x             ; $03:B924: BD 38 02    ;
CODE_03B927:    ADC #$01                ; $03:B927: 69 01       ;
CODE_03B929:    STA $0238,x             ; $03:B929: 9D 38 02    ;
CODE_03B92C:    LDA $010E               ; $03:B92C: AD 0E 01    ;
CODE_03B92F:    SEC                     ; $03:B92F: 38          ;
CODE_03B930:    SBC #$FF                ; $03:B930: E9 FF       ;
CODE_03B932:    STA $010E               ; $03:B932: 8D 0E 01    ;
CODE_03B935:    LDA $010D               ; $03:B935: AD 0D 01    ;
CODE_03B938:    SBC #$01                ; $03:B938: E9 01       ;
CODE_03B93A:    STA $010D               ; $03:B93A: 8D 0D 01    ;
CODE_03B93D:    BRA CODE_03B982         ; $03:B93D: 80 43       ;

CODE_03B93F:    LDY $010F               ; $03:B93F: AC 0F 01    ;
CODE_03B942:    LDA DATA_03B8EB,y       ; $03:B942: B9 EB B8    ;
CODE_03B945:    LDX DATA_03B8F0,y       ; $03:B945: BE F0 B8    ;
CODE_03B948:    STA $0145,x             ; $03:B948: 9D 45 01    ;
CODE_03B94B:    JSR CODE_03BD55         ; $03:B94B: 20 55 BD    ;
CODE_03B94E:    LDA #$05                ; $03:B94E: A9 05       ;
CODE_03B950:    STA $0F                 ; $03:B950: 85 0F       ;
CODE_03B952:    LDA #$0C                ; $03:B952: A9 0C       ;\Goal music
CODE_03B954:    STA $1602               ; $03:B954: 8D 02 16    ;/
CODE_03B957:    LDA $0202               ; $03:B957: AD 02 02    ;
CODE_03B95A:    AND #$02                ; $03:B95A: 29 02       ;
CODE_03B95C:    BNE CODE_03B962         ; $03:B95C: D0 04       ;
CODE_03B95E:    LDA #$6E                ; $03:B95E: A9 6E       ;
CODE_03B960:    BRA CODE_03B964         ; $03:B960: 80 02       ;

CODE_03B962:    LDA #$60                ; $03:B962: A9 60       ;
CODE_03B964:    STA $02FD               ; $03:B964: 8D FD 02    ;
CODE_03B967:    LDA $0219               ; $03:B967: AD 19 02    ;
CODE_03B96A:    STA $03CC               ; $03:B96A: 8D CC 03    ;
CODE_03B96D:    LDA $78                 ; $03:B96D: A5 78       ;
CODE_03B96F:    STA $03CD               ; $03:B96F: 8D CD 03    ;
CODE_03B972:    LDA #$20                ; $03:B972: A9 20       ;
CODE_03B974:    STA $03FB               ; $03:B974: 8D FB 03    ;
CODE_03B977:    STA $03FA               ; $03:B977: 8D FA 03    ;
CODE_03B97A:    LDA #$20                ; $03:B97A: A9 20       ;
CODE_03B97C:    STA $03FB               ; $03:B97C: 8D FB 03    ;
CODE_03B97F:    STA $03FA               ; $03:B97F: 8D FA 03    ;
CODE_03B982:    JSR CODE_03FDCB         ; $03:B982: 20 CB FD    ;
CODE_03B985:    JSR CODE_03FD39         ; $03:B985: 20 39 FD    ;
CODE_03B988:    JSL CODE_05EAA0         ; $03:B988: 22 A0 EA 05 ;
CODE_03B98C:    RTS                     ; $03:B98C: 60          ;

DATA_03B98D:    db $08,$10,$08,$00                              ;

CODE_03B991:    JSR CODE_03FDCB         ; $03:B991: 20 CB FD    ;
CODE_03B994:    LDA $0747               ; $03:B994: AD 47 07    ;
CODE_03B997:    BNE CODE_03B9E1         ; $03:B997: D0 48       ;
CODE_03B999:    LDA $070E               ; $03:B999: AD 0E 07    ;
CODE_03B99C:    BEQ CODE_03B9E1         ; $03:B99C: F0 43       ;
CODE_03B99E:    TAY                     ; $03:B99E: A8          ;
CODE_03B99F:    DEY                     ; $03:B99F: 88          ;
CODE_03B9A0:    TYA                     ; $03:B9A0: 98          ;
CODE_03B9A1:    AND #$02                ; $03:B9A1: 29 02       ;
CODE_03B9A3:    BNE CODE_03B9AE         ; $03:B9A3: D0 09       ;
CODE_03B9A5:    INC $0237               ; $03:B9A5: EE 37 02    ;
CODE_03B9A8:    INC $0237               ; $03:B9A8: EE 37 02    ;
CODE_03B9AB:    JMP CODE_03B9B4         ; $03:B9AB: 4C B4 B9    ;

CODE_03B9AE:    DEC $0237               ; $03:B9AE: CE 37 02    ;
CODE_03B9B1:    DEC $0237               ; $03:B9B1: CE 37 02    ;
CODE_03B9B4:    LDA $5E,x               ; $03:B9B4: B5 5E       ;
CODE_03B9B6:    CLC                     ; $03:B9B6: 18          ;
CODE_03B9B7:    ADC DATA_03B98D,y       ; $03:B9B7: 79 8D B9    ;
CODE_03B9BA:    STA $0238,x             ; $03:B9BA: 9D 38 02    ;
CODE_03B9BD:    CPY #$01                ; $03:B9BD: C0 01       ;
CODE_03B9BF:    BCC CODE_03B9D0         ; $03:B9BF: 90 0F       ;
CODE_03B9C1:    LDA $0A                 ; $03:B9C1: A5 0A       ;
CODE_03B9C3:    AND #$80                ; $03:B9C3: 29 80       ;
CODE_03B9C5:    BEQ CODE_03B9D0         ; $03:B9C5: F0 09       ;
CODE_03B9C7:    AND $0D                 ; $03:B9C7: 25 0D       ;
CODE_03B9C9:    BNE CODE_03B9D0         ; $03:B9C9: D0 05       ;
CODE_03B9CB:    LDA #$F4                ; $03:B9CB: A9 F4       ;
CODE_03B9CD:    STA $06DB               ; $03:B9CD: 8D DB 06    ;Springboard launch force
CODE_03B9D0:    CPY #$03                ; $03:B9D0: C0 03       ;
CODE_03B9D2:    BNE CODE_03B9E1         ; $03:B9D2: D0 0D       ;
CODE_03B9D4:    LDA $06DB               ; $03:B9D4: AD DB 06    ;\
CODE_03B9D7:    STA $A0                 ; $03:B9D7: 85 A0       ;/Store springboard launch force into player Y speed
CODE_03B9D9:    STZ $070E               ; $03:B9D9: 9C 0E 07    ;
CODE_03B9DC:    LDA #$08                ; $03:B9DC: A9 08       ;\Springboard sound
CODE_03B9DE:    STA $1603               ; $03:B9DE: 8D 03 16    ;/
CODE_03B9E1:    JSR CODE_03FD39         ; $03:B9E1: 20 39 FD    ;
CODE_03B9E4:    JSR CODE_03EEEF         ; $03:B9E4: 20 EF EE    ;
CODE_03B9E7:    JSR CODE_03DC03         ; $03:B9E7: 20 03 DC    ;
CODE_03B9EA:    LDA $070E               ; $03:B9EA: AD 0E 07    ;
CODE_03B9ED:    BEQ CODE_03B9FC         ; $03:B9ED: F0 0D       ;
CODE_03B9EF:    LDA $078E               ; $03:B9EF: AD 8E 07    ;
CODE_03B9F2:    BNE CODE_03B9FC         ; $03:B9F2: D0 08       ;
CODE_03B9F4:    LDA #$04                ; $03:B9F4: A9 04       ;
CODE_03B9F6:    STA $078E               ; $03:B9F6: 8D 8E 07    ;
CODE_03B9F9:    INC $070E               ; $03:B9F9: EE 0E 07    ;
CODE_03B9FC:    RTS                     ; $03:B9FC: 60          ;

CODE_03B9FD:    LDA #$2F                ; $03:B9FD: A9 2F       ;\
CODE_03B9FF:    STA $1C,x               ; $03:B9FF: 95 1C       ;/Sprite to generate: Vine
CODE_03BA01:    LDA #$01                ; $03:BA01: A9 01       ;\
CODE_03BA03:    STA $10,x               ; $03:BA03: 95 10       ;/Sprite on screen
CODE_03BA05:    LDA $0085,y             ; $03:BA05: B9 85 00    ;\Spawn in current screen of course
CODE_03BA08:    STA $79,x               ; $03:BA08: 95 79       ;/
CODE_03BA0A:    LDA $0226,y             ; $03:BA0A: B9 26 02    ;\Spawn at the brick
CODE_03BA0D:    STA $021A,x             ; $03:BA0D: 9D 1A 02    ;/Store into Sprite X-Position
CODE_03BA10:    LDA $0244,y             ; $03:BA10: B9 44 02    ;\
CODE_03BA13:    BNE CODE_03BA17         ; $03:BA13: D0 02       ; |If brick position is at the very top
CODE_03BA15:    LDA #$F0                ; $03:BA15: A9 F0       ; |Spawn vine from the very bottom
CODE_03BA17:    STA $0238,x             ; $03:BA17: 9D 38 02    ;/ (Used in level entrances with the vine animation?)
CODE_03BA1A:    LDY $0398               ; $03:BA1A: AC 98 03    ;
CODE_03BA1D:    BNE CODE_03BA22         ; $03:BA1D: D0 03       ;
CODE_03BA1F:    STA $039D               ; $03:BA1F: 8D 9D 03    ;
CODE_03BA22:    TXA                     ; $03:BA22: 8A          ;
CODE_03BA23:    STA $039A,y             ; $03:BA23: 99 9A 03    ;
CODE_03BA26:    INC $0398               ; $03:BA26: EE 98 03    ;
CODE_03BA29:    LDA #$03                ; $03:BA29: A9 03       ;\
CODE_03BA2B:    STA $1603               ; $03:BA2B: 8D 03 16    ;/Play vine sound
CODE_03BA2E:    RTS                     ; $03:BA2E: 60          ;Return

DATA_03BA2F:    db $60,$90                                      ;

CODE_03BA31:    CPX #$09                ; $03:BA31: E0 09       ;
CODE_03BA33:    BEQ CODE_03BA36         ; $03:BA33: F0 01       ;
CODE_03BA35:    RTS                     ; $03:BA35: 60          ;

CODE_03BA36:    LDA $0236               ; $03:BA36: AD 36 02    ;
CODE_03BA39:    BNE CODE_03BA40         ; $03:BA39: D0 05       ;
CODE_03BA3B:    LDA DATA_03BA2F+1       ; $03:BA3B: AD 30 BA    ;
CODE_03BA3E:    BRA CODE_03BA43         ; $03:BA3E: 80 03       ;

CODE_03BA40:    LDA DATA_03BA2F         ; $03:BA40: AD 2F BA    ;
CODE_03BA43:    CMP $0399               ; $03:BA43: CD 99 03    ;
CODE_03BA46:    BEQ CODE_03BA58         ; $03:BA46: F0 10       ;
CODE_03BA48:    LDA $09                 ; $03:BA48: A5 09       ;
CODE_03BA4A:    LSR A                   ; $03:BA4A: 4A          ;
CODE_03BA4B:    BCC CODE_03BA58         ; $03:BA4B: 90 0B       ;
CODE_03BA4D:    LDA $0241               ; $03:BA4D: AD 41 02    ;
CODE_03BA50:    SBC #$01                ; $03:BA50: E9 01       ;
CODE_03BA52:    STA $0241               ; $03:BA52: 8D 41 02    ;
CODE_03BA55:    INC $0399               ; $03:BA55: EE 99 03    ;
CODE_03BA58:    LDA $0399               ; $03:BA58: AD 99 03    ;
CODE_03BA5B:    CMP #$08                ; $03:BA5B: C9 08       ;
CODE_03BA5D:    BCC CODE_03BA9D         ; $03:BA5D: 90 3E       ;
CODE_03BA5F:    JSR CODE_03FD39         ; $03:BA5F: 20 39 FD    ;
CODE_03BA62:    JSR CODE_03FDCB         ; $03:BA62: 20 CB FD    ;
CODE_03BA65:    LDY #$00                ; $03:BA65: A0 00       ;
CODE_03BA67:    JSL CODE_05DA72         ; $03:BA67: 22 72 DA 05 ;
CODE_03BA6B:    LDA $03D1               ; $03:BA6B: AD D1 03    ;
CODE_03BA6E:    AND #$0F                ; $03:BA6E: 29 0F       ;
CODE_03BA70:    CMP #$0F                ; $03:BA70: C9 0F       ;
CODE_03BA72:    BNE CODE_03BA7F         ; $03:BA72: D0 0B       ;
CODE_03BA74:    LDX #$09                ; $03:BA74: A2 09       ;
CODE_03BA76:    JSR CODE_03CDE2         ; $03:BA76: 20 E2 CD    ; Erase sprite
CODE_03BA79:    STA $0398               ; $03:BA79: 8D 98 03    ;
CODE_03BA7C:    STA $0399               ; $03:BA7C: 8D 99 03    ;
CODE_03BA7F:    LDA $0399               ; $03:BA7F: AD 99 03    ;
CODE_03BA82:    CMP #$20                ; $03:BA82: C9 20       ;
CODE_03BA84:    BCC CODE_03BA9D         ; $03:BA84: 90 17       ;
CODE_03BA86:    LDX #$0A                ; $03:BA86: A2 0A       ;
CODE_03BA88:    LDA #$01                ; $03:BA88: A9 01       ;
CODE_03BA8A:    LDY #$1B                ; $03:BA8A: A0 1B       ;
CODE_03BA8C:    JSR CODE_03EB83         ; $03:BA8C: 20 83 EB    ;
CODE_03BA8F:    LDY $02                 ; $03:BA8F: A4 02       ;
CODE_03BA91:    CPY #$D0                ; $03:BA91: C0 D0       ;
CODE_03BA93:    BCS CODE_03BA9D         ; $03:BA93: B0 08       ;
CODE_03BA95:    LDA ($06),y             ; $03:BA95: B1 06       ;
CODE_03BA97:    BNE CODE_03BA9D         ; $03:BA97: D0 04       ;
CODE_03BA99:    LDA #$2A                ; $03:BA99: A9 2A       ;
CODE_03BA9B:    STA ($06),y             ; $03:BA9B: 91 06       ;
CODE_03BA9D:    LDX $9E                 ; $03:BA9D: A6 9E       ;
CODE_03BA9F:    RTS                     ; $03:BA9F: 60          ;

DATA_03BAA0:    db $0F,$07                                      ;

CODE_03BAA2:    LDA $5C                 ; $03:BAA2: A5 5C       ;
CODE_03BAA4:    BEQ CODE_03BB15         ; $03:BAA4: F0 6F       ;
CODE_03BAA6:    LDX #$02                ; $03:BAA6: A2 02       ;
CODE_03BAA8:    STX $9E                 ; $03:BAA8: 86 9E       ;
CODE_03BAAA:    LDA $10,x               ; $03:BAAA: B5 10       ;
CODE_03BAAC:    BNE CODE_03BAFF         ; $03:BAAC: D0 51       ;
CODE_03BAAE:    LDA $07B8,x             ; $03:BAAE: BD B8 07    ;
CODE_03BAB1:    LDY $06CC               ; $03:BAB1: AC CC 06    ;
CODE_03BAB4:    AND DATA_03BAA0,y       ; $03:BAB4: 39 A0 BA    ;
CODE_03BAB7:    CMP #$06                ; $03:BAB7: C9 06       ;
CODE_03BAB9:    BCS CODE_03BAFF         ; $03:BAB9: B0 44       ;
CODE_03BABB:    TAY                     ; $03:BABB: A8          ;
CODE_03BABC:    LDA $026B,y             ; $03:BABC: B9 6B 02    ;
CODE_03BABF:    BEQ CODE_03BAFF         ; $03:BABF: F0 3E       ;
CODE_03BAC1:    LDA $027D,y             ; $03:BAC1: B9 7D 02    ;
CODE_03BAC4:    BEQ CODE_03BACD         ; $03:BAC4: F0 07       ;
CODE_03BAC6:    SBC #$00                ; $03:BAC6: E9 00       ;
CODE_03BAC8:    STA $027D,y             ; $03:BAC8: 99 7D 02    ;
CODE_03BACB:    BRA CODE_03BAFF         ; $03:BACB: 80 32       ;

CODE_03BACD:    LDA $0747               ; $03:BACD: AD 47 07    ;
CODE_03BAD0:    BNE CODE_03BAFF         ; $03:BAD0: D0 2D       ;
CODE_03BAD2:    LDA #$0E                ; $03:BAD2: A9 0E       ;
CODE_03BAD4:    STA $027D,y             ; $03:BAD4: 99 7D 02    ;
CODE_03BAD7:    LDA $026B,y             ; $03:BAD7: B9 6B 02    ;
CODE_03BADA:    STA $79,x               ; $03:BADA: 95 79       ;
CODE_03BADC:    LDA $0271,y             ; $03:BADC: B9 71 02    ;
CODE_03BADF:    STA $021A,x             ; $03:BADF: 9D 1A 02    ;
CODE_03BAE2:    LDA $0277,y             ; $03:BAE2: B9 77 02    ;
CODE_03BAE5:    SEC                     ; $03:BAE5: 38          ;
CODE_03BAE6:    SBC #$08                ; $03:BAE6: E9 08       ;
CODE_03BAE8:    STA $0238,x             ; $03:BAE8: 9D 38 02    ;
CODE_03BAEB:    LDA #$01                ; $03:BAEB: A9 01       ;
CODE_03BAED:    STA $BC,x               ; $03:BAED: 95 BC       ;
CODE_03BAEF:    STA $10,x               ; $03:BAEF: 95 10       ;
CODE_03BAF1:    LSR A                   ; $03:BAF1: 4A          ;
CODE_03BAF2:    STA $29,x               ; $03:BAF2: 95 29       ;
CODE_03BAF4:    LDA #$09                ; $03:BAF4: A9 09       ;
CODE_03BAF6:    STA $0490,x             ; $03:BAF6: 9D 90 04    ;
CODE_03BAF9:    LDA #$33                ; $03:BAF9: A9 33       ;\
CODE_03BAFB:    STA $1C,x               ; $03:BAFB: 95 1C       ;/Sprite to generate: Bullet bill
CODE_03BAFD:    BRA CODE_03BB12         ; $03:BAFD: 80 13       ;

CODE_03BAFF:    LDA $1C,x               ; $03:BAFF: B5 1C       ;
CODE_03BB01:    CMP #$33                ; $03:BB01: C9 33       ;
CODE_03BB03:    BNE CODE_03BB12         ; $03:BB03: D0 0D       ;
CODE_03BB05:    JSR CODE_03DC03         ; $03:BB05: 20 03 DC    ;
CODE_03BB08:    LDA $10,x               ; $03:BB08: B5 10       ;
CODE_03BB0A:    BEQ CODE_03BB12         ; $03:BB0A: F0 06       ;
CODE_03BB0C:    JSR CODE_03FDCB         ; $03:BB0C: 20 CB FD    ;
CODE_03BB0F:    JSR CODE_03BB18         ; $03:BB0F: 20 18 BB    ;
CODE_03BB12:    DEX                     ; $03:BB12: CA          ;
CODE_03BB13:    BPL CODE_03BAA8         ; $03:BB13: 10 93       ;
CODE_03BB15:    RTS                     ; $03:BB15: 60          ;

DATA_03BB16:    db $18,$E8                                      ;

CODE_03BB18:    LDA $0747               ; $03:BB18: AD 47 07    ;
CODE_03BB1B:    BNE CODE_03BB70         ; $03:BB1B: D0 53       ;
CODE_03BB1D:    LDA $29,x               ; $03:BB1D: B5 29       ;
CODE_03BB1F:    BNE CODE_03BB53         ; $03:BB1F: D0 32       ;
CODE_03BB21:    LDA $03D1               ; $03:BB21: AD D1 03    ;
CODE_03BB24:    AND #$0C                ; $03:BB24: 29 0C       ;
CODE_03BB26:    CMP #$0C                ; $03:BB26: C9 0C       ;
CODE_03BB28:    BEQ CODE_03BB7F         ; $03:BB28: F0 55       ;
CODE_03BB2A:    LDY #$01                ; $03:BB2A: A0 01       ;
CODE_03BB2C:    JSR CODE_03E8BC         ; $03:BB2C: 20 BC E8    ;
CODE_03BB2F:    BMI CODE_03BB32         ; $03:BB2F: 30 01       ;
CODE_03BB31:    INY                     ; $03:BB31: C8          ;
CODE_03BB32:    STY $47,x               ; $03:BB32: 94 47       ;
CODE_03BB34:    DEY                     ; $03:BB34: 88          ;
CODE_03BB35:    LDA DATA_03BB16,y       ; $03:BB35: B9 16 BB    ;
CODE_03BB38:    STA $5E,x               ; $03:BB38: 95 5E       ;
CODE_03BB3A:    LDA $00                 ; $03:BB3A: A5 00       ;
CODE_03BB3C:    ADC #$28                ; $03:BB3C: 69 28       ;
CODE_03BB3E:    CMP #$50                ; $03:BB3E: C9 50       ;
CODE_03BB40:    BCC CODE_03BB7F         ; $03:BB40: 90 3D       ;
CODE_03BB42:    LDA #$01                ; $03:BB42: A9 01       ;
CODE_03BB44:    STA $29,x               ; $03:BB44: 95 29       ;
CODE_03BB46:    LDA #$0A                ; $03:BB46: A9 0A       ;
CODE_03BB48:    STA $0792,x             ; $03:BB48: 9D 92 07    ;
CODE_03BB4B:    LDA #$4A                ; $03:BB4B: A9 4A       ;\Bullet bill sound
CODE_03BB4D:    STA $1603               ; $03:BB4D: 8D 03 16    ;/
CODE_03BB50:    JSR CODE_03C27B         ; $03:BB50: 20 7B C2    ;
CODE_03BB53:    LDA $03D1               ; $03:BB53: AD D1 03    ;
CODE_03BB56:    AND #$F0                ; $03:BB56: 29 F0       ;
CODE_03BB58:    CMP #$F0                ; $03:BB58: C9 F0       ;
CODE_03BB5A:    BEQ CODE_03BB7F         ; $03:BB5A: F0 23       ;
CODE_03BB5C:    LDA $29,x               ; $03:BB5C: B5 29       ;
CODE_03BB5E:    AND #$20                ; $03:BB5E: 29 20       ;
CODE_03BB60:    BEQ CODE_03BB65         ; $03:BB60: F0 03       ;
CODE_03BB62:    JSR CODE_03C113         ; $03:BB62: 20 13 C1    ;
CODE_03BB65:    LDA $0E67               ; $03:BB65: AD 67 0E    ;
CODE_03BB68:    BNE CODE_03BB70         ; $03:BB68: D0 06       ;
CODE_03BB6A:    JSR CODE_03C0AD         ; $03:BB6A: 20 AD C0    ;
CODE_03BB6D:    JSR CODE_03C1FA         ; $03:BB6D: 20 FA C1    ;
CODE_03BB70:    JSR CODE_03FDCB         ; $03:BB70: 20 CB FD    ;
CODE_03BB73:    JSR CODE_03FD39         ; $03:BB73: 20 39 FD    ;
CODE_03BB76:    JSR CODE_03E9CC         ; $03:BB76: 20 CC E9    ;
CODE_03BB79:    JSR CODE_03DE55         ; $03:BB79: 20 55 DE    ;
CODE_03BB7C:    JMP CODE_03EEEF         ; $03:BB7C: 4C EF EE    ;

CODE_03BB7F:    JSR CODE_03CDE2         ; $03:BB7F: 20 E2 CD    ; Erase sprite
CODE_03BB82:    RTS                     ; $03:BB82: 60          ;

DATA_03BB83:    db $04,$04,$04,$05,$05,$05,$06,$06              ;
                db $06                                          ;

DATA_03BB8C:    db $10,$F0                                      ;

CODE_03BB8E:    LDA $07B8               ; $03:BB8E: AD B8 07    ;
CODE_03BB91:    AND #$07                ; $03:BB91: 29 07       ;
CODE_03BB93:    BNE CODE_03BB9A         ; $03:BB93: D0 05       ;
CODE_03BB95:    LDA $07B8               ; $03:BB95: AD B8 07    ;
CODE_03BB98:    AND #$08                ; $03:BB98: 29 08       ;
CODE_03BB9A:    TAY                     ; $03:BB9A: A8          ;
CODE_03BB9B:    LDA $0039,y             ; $03:BB9B: B9 39 00    ;
CODE_03BB9E:    BNE CODE_03BBB9         ; $03:BB9E: D0 19       ;
CODE_03BBA0:    LDX DATA_03BB83,y       ; $03:BBA0: BE 83 BB    ;
CODE_03BBA3:    LDA $10,x               ; $03:BBA3: B5 10       ;
CODE_03BBA5:    BNE CODE_03BBB9         ; $03:BBA5: D0 12       ;
CODE_03BBA7:    LDX $9E                 ; $03:BBA7: A6 9E       ;
CODE_03BBA9:    TXA                     ; $03:BBA9: 8A          ;
CODE_03BBAA:    STA $06AE,y             ; $03:BBAA: 99 AE 06    ;
CODE_03BBAD:    LDA #$90                ; $03:BBAD: A9 90       ;
CODE_03BBAF:    STA $0039,y             ; $03:BBAF: 99 39 00    ;
CODE_03BBB2:    LDA #$07                ; $03:BBB2: A9 07       ;\
CODE_03BBB4:    STA $049C,y             ; $03:BBB4: 99 9C 04    ;/Set extended sprite clipping size?
CODE_03BBB7:    SEC                     ; $03:BBB7: 38          ;
CODE_03BBB8:    RTS                     ; $03:BBB8: 60          ;

CODE_03BBB9:    LDX $9E                 ; $03:BBB9: A6 9E       ;\
CODE_03BBBB:    CLC                     ; $03:BBBB: 18          ; |Get sprite index and clear carry flag
CODE_03BBBC:    RTS                     ; $03:BBBC: 60          ;/

CODE_03BBBD:    LDA $0747               ; $03:BBBD: AD 47 07    ;
CODE_03BBC0:    BEQ CODE_03BBC5         ; $03:BBC0: F0 03       ;
CODE_03BBC2:    JMP CODE_03BC4B         ; $03:BBC2: 4C 4B BC    ;

CODE_03BBC5:    LDA $39,x               ; $03:BBC5: B5 39       ;
CODE_03BBC7:    AND #$7F                ; $03:BBC7: 29 7F       ;
CODE_03BBC9:    LDY $06AE,x             ; $03:BBC9: BC AE 06    ;
CODE_03BBCC:    CMP #$02                ; $03:BBCC: C9 02       ;
CODE_03BBCE:    BEQ CODE_03BBF0         ; $03:BBCE: F0 20       ;
CODE_03BBD0:    BCS CODE_03BC06         ; $03:BBD0: B0 34       ;
CODE_03BBD2:    TXA                     ; $03:BBD2: 8A          ;
CODE_03BBD3:    CLC                     ; $03:BBD3: 18          ;
CODE_03BBD4:    ADC #$11                ; $03:BBD4: 69 11       ;
CODE_03BBD6:    TAX                     ; $03:BBD6: AA          ;
CODE_03BBD7:    LDA #$10                ; $03:BBD7: A9 10       ;
CODE_03BBD9:    STA $00                 ; $03:BBD9: 85 00       ;
CODE_03BBDB:    LDA #$0F                ; $03:BBDB: A9 0F       ;
CODE_03BBDD:    STA $01                 ; $03:BBDD: 85 01       ;
CODE_03BBDF:    LDA #$04                ; $03:BBDF: A9 04       ;
CODE_03BBE1:    STA $02                 ; $03:BBE1: 85 02       ;
CODE_03BBE3:    LDA #$00                ; $03:BBE3: A9 00       ;
CODE_03BBE5:    JSR CODE_03C18B         ; $03:BBE5: 20 8B C1    ;Impose gravity
CODE_03BBE8:    JSR CODE_03C0BA         ; $03:BBE8: 20 BA C0    ;
CODE_03BBEB:    LDX $9E                 ; $03:BBEB: A6 9E       ;
CODE_03BBED:    JMP CODE_03BC48         ; $03:BBED: 4C 48 BC    ;

CODE_03BBF0:    LDA #$FE                ; $03:BBF0: A9 FE       ;Hammer bros hammer y-speed
CODE_03BBF2:    STA $B1,x               ; $03:BBF2: 95 B1       ;
CODE_03BBF4:    LDA $0029,y             ; $03:BBF4: B9 29 00    ;
CODE_03BBF7:    AND #$F7                ; $03:BBF7: 29 F7       ;
CODE_03BBF9:    STA $0029,y             ; $03:BBF9: 99 29 00    ;
CODE_03BBFC:    LDX $47,y               ; $03:BBFC: B6 47       ;\
CODE_03BBFE:    DEX                     ; $03:BBFE: CA          ; |
CODE_03BBFF:    LDA DATA_03BB8C,x       ; $03:BBFF: BD 8C BB    ; | Hammer bros hammer x-speed depending on direction
CODE_03BC02:    LDX $9E                 ; $03:BC02: A6 9E       ; |
CODE_03BC04:    STA $6E,x               ; $03:BC04: 95 6E       ;/
CODE_03BC06:    DEC $39,x               ; $03:BC06: D6 39       ;
CODE_03BC08:    LDA $39,x               ; $03:BC08: B5 39       ;
CODE_03BC0A:    CMP #$81                ; $03:BC0A: C9 81       ;
CODE_03BC0C:    BNE CODE_03BC13         ; $03:BC0C: D0 05       ;
CODE_03BC0E:    LDA #$37                ; $03:BC0E: A9 37       ;\Hammer thrown sound
CODE_03BC10:    STA $1600               ; $03:BC10: 8D 00 16    ;/
CODE_03BC13:    LDA $001C,y             ; $03:BC13: B9 1C 00    ;
CODE_03BC16:    CMP #$2D                ; $03:BC16: C9 2D       ;
CODE_03BC18:    BNE CODE_03BC1E         ; $03:BC18: D0 04       ;
CODE_03BC1A:    LDA #$08                ; $03:BC1A: A9 08       ;
CODE_03BC1C:    BRA CODE_03BC2B         ; $03:BC1C: 80 0D       ;

CODE_03BC1E:    LDA $0047,y             ; $03:BC1E: B9 47 00    ;
CODE_03BC21:    CMP #$02                ; $03:BC21: C9 02       ;
CODE_03BC23:    BNE CODE_03BC29         ; $03:BC23: D0 04       ;
CODE_03BC25:    LDA #$06                ; $03:BC25: A9 06       ;
CODE_03BC27:    BRA CODE_03BC2B         ; $03:BC27: 80 02       ;

CODE_03BC29:    LDA #$02                ; $03:BC29: A9 02       ;
CODE_03BC2B:    CLC                     ; $03:BC2B: 18          ;
CODE_03BC2C:    ADC $021A,y             ; $03:BC2C: 79 1A 02    ;
CODE_03BC2F:    STA $022A,x             ; $03:BC2F: 9D 2A 02    ;
CODE_03BC32:    LDA $0079,y             ; $03:BC32: B9 79 00    ;
CODE_03BC35:    ADC #$00                ; $03:BC35: 69 00       ;
CODE_03BC37:    STA $89,x               ; $03:BC37: 95 89       ;
CODE_03BC39:    LDA $0238,y             ; $03:BC39: B9 38 02    ;
CODE_03BC3C:    SEC                     ; $03:BC3C: 38          ;
CODE_03BC3D:    SBC #$0A                ; $03:BC3D: E9 0A       ;
CODE_03BC3F:    STA $0248,x             ; $03:BC3F: 9D 48 02    ;
CODE_03BC42:    LDA #$01                ; $03:BC42: A9 01       ;
CODE_03BC44:    STA $CC,x               ; $03:BC44: 95 CC       ;
CODE_03BC46:    BNE CODE_03BC4B         ; $03:BC46: D0 03       ;
CODE_03BC48:    JSR CODE_03DDBE         ; $03:BC48: 20 BE DD    ;
CODE_03BC4B:    JSR CODE_03FDB7         ; $03:BC4B: 20 B7 FD    ;
CODE_03BC4E:    JSR CODE_03FD30         ; $03:BC4E: 20 30 FD    ;
CODE_03BC51:    JSR CODE_03E9BF         ; $03:BC51: 20 BF E9    ;
CODE_03BC54:    JSL CODE_05DD07         ; $03:BC54: 22 07 DD 05 ;
CODE_03BC58:    RTS                     ; $03:BC58: 60          ;

CODE_03BC59:    JSR CODE_03BCA7         ; $03:BC59: 20 A7 BC    ;
CODE_03BC5C:    LDA $85,x               ; $03:BC5C: B5 85       ;
CODE_03BC5E:    STA $0089,y             ; $03:BC5E: 99 89 00    ;
CODE_03BC61:    LDA $0226,x             ; $03:BC61: BD 26 02    ;
CODE_03BC64:    ORA #$05                ; $03:BC64: 09 05       ;
CODE_03BC66:    STA $022A,y             ; $03:BC66: 99 2A 02    ;
CODE_03BC69:    LDA $0244,x             ; $03:BC69: BD 44 02    ;
CODE_03BC6C:    SBC #$10                ; $03:BC6C: E9 10       ;
CODE_03BC6E:    STA $0248,y             ; $03:BC6E: 99 48 02    ;
CODE_03BC71:    BRA CODE_03BC8E         ; $03:BC71: 80 1B       ;

CODE_03BC73:    JSR CODE_03BCA7         ; $03:BC73: 20 A7 BC    ;
CODE_03BC76:    LDA $03EC,x             ; $03:BC76: BD EC 03    ;
CODE_03BC79:    STA $0089,y             ; $03:BC79: 99 89 00    ;
CODE_03BC7C:    LDA $06                 ; $03:BC7C: A5 06       ;
CODE_03BC7E:    ASL A                   ; $03:BC7E: 0A          ;
CODE_03BC7F:    ASL A                   ; $03:BC7F: 0A          ;
CODE_03BC80:    ASL A                   ; $03:BC80: 0A          ;
CODE_03BC81:    ASL A                   ; $03:BC81: 0A          ;
CODE_03BC82:    ORA #$05                ; $03:BC82: 09 05       ;
CODE_03BC84:    STA $022A,y             ; $03:BC84: 99 2A 02    ;
CODE_03BC87:    LDA $02                 ; $03:BC87: A5 02       ;
CODE_03BC89:    ADC #$20                ; $03:BC89: 69 20       ;
CODE_03BC8B:    STA $0248,y             ; $03:BC8B: 99 48 02    ;
CODE_03BC8E:    LDA #$FB                ; $03:BC8E: A9 FB       ;
CODE_03BC90:    STA $00B1,y             ; $03:BC90: 99 B1 00    ;
CODE_03BC93:    LDA #$01                ; $03:BC93: A9 01       ;
CODE_03BC95:    STA $00CC,y             ; $03:BC95: 99 CC 00    ;
CODE_03BC98:    STA $0039,y             ; $03:BC98: 99 39 00    ;
CODE_03BC9B:    STA $1603               ; $03:BC9B: 8D 03 16    ;
CODE_03BC9E:    STX $9E                 ; $03:BC9E: 86 9E       ;
CODE_03BCA0:    JSR CODE_03BD2C         ; $03:BCA0: 20 2C BD    ;
CODE_03BCA3:    INC $0748               ; $03:BCA3: EE 48 07    ;
CODE_03BCA6:    RTS                     ; $03:BCA6: 60          ;

CODE_03BCA7:    LDY #$08                ; $03:BCA7: A0 08       ;
CODE_03BCA9:    LDA $0039,y             ; $03:BCA9: B9 39 00    ;
CODE_03BCAC:    BEQ CODE_03BCB5         ; $03:BCAC: F0 07       ;
CODE_03BCAE:    DEY                     ; $03:BCAE: 88          ;
CODE_03BCAF:    CPY #$05                ; $03:BCAF: C0 05       ;
CODE_03BCB1:    BNE CODE_03BCA9         ; $03:BCB1: D0 F6       ;
CODE_03BCB3:    LDY #$08                ; $03:BCB3: A0 08       ;
CODE_03BCB5:    STY $06B7               ; $03:BCB5: 8C B7 06    ;
CODE_03BCB8:    RTS                     ; $03:BCB8: 60          ;

;extended sprites MAIN core
CODE_03BCB9:    LDX #$08                ; $03:BCB9: A2 08       ;\
CODE_03BCBB:    STX $9E                 ; $03:BCBB: 86 9E       ; |Iterate through 9 slots of extended sprites
CODE_03BCBD:    LDA $39,x               ; $03:BCBD: B5 39       ; |
CODE_03BCBF:    BEQ CODE_03BD22         ; $03:BCBF: F0 61       ;/ Continue iterating if empty slot.
CODE_03BCC1:    ASL A                   ; $03:BCC1: 0A          ;\ If bit 7 set, it's a jumping coin (from [?] blocks)
CODE_03BCC2:    BCC CODE_03BCCA         ; $03:BCC2: 90 06       ;/
CODE_03BCC4:    JSR CODE_03BBBD         ; $03:BCC4: 20 BD BB    ;Otherwise, it's a hammer
CODE_03BCC7:    JMP CODE_03BD22         ; $03:BCC7: 4C 22 BD    ;Continue iterating

;proc jumping coin
CODE_03BCCA:    LDY $39,x               ; $03:BCCA: B4 39       ;\
CODE_03BCCC:    DEY                     ; $03:BCCC: 88          ; | Check sprite state. if #$01, run jumping coin.
CODE_03BCCD:    BEQ CODE_03BCEE         ; $03:BCCD: F0 1F       ;/
CODE_03BCCF:    INC $39,x               ; $03:BCCF: F6 39       ;
CODE_03BCD1:    LDA $022A,x             ; $03:BCD1: BD 2A 02    ;\
CODE_03BCD4:    CLC                     ; $03:BCD4: 18          ; |
CODE_03BCD5:    ADC $0775               ; $03:BCD5: 6D 75 07    ; | Add camera scrolling X-Speed to the sprite X position and store it there.
CODE_03BCD8:    STA $022A,x             ; $03:BCD8: 9D 2A 02    ; |
CODE_03BCDB:    LDA $89,x               ; $03:BCDB: B5 89       ; |
CODE_03BCDD:    ADC #$00                ; $03:BCDD: 69 00       ; |
CODE_03BCDF:    STA $89,x               ; $03:BCDF: 95 89       ;/
CODE_03BCE1:    LDA $39,x               ; $03:BCE1: B5 39       ;\
CODE_03BCE3:    CMP #$30                ; $03:BCE3: C9 30       ; |
CODE_03BCE5:    BNE CODE_03BD0D         ; $03:BCE5: D0 26       ; | Check if floating score reached peak. If so, clear this jumping coin.
CODE_03BCE7:    LDA #$00                ; $03:BCE7: A9 00       ; |
CODE_03BCE9:    STA $39,x               ; $03:BCE9: 95 39       ;/
CODE_03BCEB:    JMP CODE_03BD22         ; $03:BCEB: 4C 22 BD    ;Continue iterating through extended sprites.

CODE_03BCEE:    TXA                     ; $03:BCEE: 8A          ;\
CODE_03BCEF:    CLC                     ; $03:BCEF: 18          ; |Increase index for next subroutine
CODE_03BCF0:    ADC #$11                ; $03:BCF0: 69 11       ; |
CODE_03BCF2:    TAX                     ; $03:BCF2: AA          ;/
CODE_03BCF3:    LDA #$50                ; $03:BCF3: A9 50       ;\set downward movement amount
CODE_03BCF5:    STA $00                 ; $03:BCF5: 85 00       ;/
CODE_03BCF7:    LDA #$06                ; $03:BCF7: A9 06       ;\set maximum vertical speed
CODE_03BCF9:    STA $02                 ; $03:BCF9: 85 02       ;/
CODE_03BCFB:    LSR A                   ; $03:BCFB: 4A          ;
CODE_03BCFC:    STA $01                 ; $03:BCFC: 85 01       ;
CODE_03BCFE:    LDA #$00                ; $03:BCFE: A9 00       ;
CODE_03BD00:    JSR CODE_03C18B         ; $03:BD00: 20 8B C1    ;Impose gravity
CODE_03BD03:    LDX $9E                 ; $03:BD03: A6 9E       ;
CODE_03BD05:    LDA $B1,x               ; $03:BD05: B5 B1       ;
CODE_03BD07:    CMP #$05                ; $03:BD07: C9 05       ;
CODE_03BD09:    BNE CODE_03BD0D         ; $03:BD09: D0 02       ;
CODE_03BD0B:    INC $39,x               ; $03:BD0B: F6 39       ;
CODE_03BD0D:    LDA $B1,x               ; $03:BD0D: B5 B1       ;
CODE_03BD0F:    BNE CODE_03BD15         ; $03:BD0F: D0 04       ;
CODE_03BD11:    JSL CODE_05DC7E         ; $03:BD11: 22 7E DC 05 ;
CODE_03BD15:    JSR CODE_03FD30         ; $03:BD15: 20 30 FD    ;
CODE_03BD18:    JSR CODE_03FDB7         ; $03:BD18: 20 B7 FD    ;
CODE_03BD1B:    JSR CODE_03E9BF         ; $03:BD1B: 20 BF E9    ;
CODE_03BD1E:    JSL CODE_05DCA0         ; $03:BD1E: 22 A0 DC 05 ;
CODE_03BD22:    DEX                     ; $03:BD22: CA          ;
CODE_03BD23:    BPL CODE_03BCBB         ; $03:BD23: 10 96       ;
CODE_03BD25:    RTS                     ; $03:BD25: 60          ;

DATA_03BD26:    db $17,$1D                                      ;

DATA_03BD28:    db $0B,$11                                      ;

DATA_03BD2A:    db $02,$13                                      ;

CODE_03BD2C:    LDA #$01                ; $03:BD2C: A9 01       ;
CODE_03BD2E:    STA $014A               ; $03:BD2E: 8D 4A 01    ;
CODE_03BD31:    LDX $0753               ; $03:BD31: AE 53 07    ;
CODE_03BD34:    LDY DATA_03BD26,x       ; $03:BD34: BC 26 BD    ;
CODE_03BD37:    JSR CODE_039CF9         ; $03:BD37: 20 F9 9C    ;
CODE_03BD3A:    INC $075E               ; $03:BD3A: EE 5E 07    ;
CODE_03BD3D:    LDA $075E               ; $03:BD3D: AD 5E 07    ;
CODE_03BD40:    CMP #$64                ; $03:BD40: C9 64       ;
CODE_03BD42:    BNE CODE_03BD50         ; $03:BD42: D0 0C       ;
CODE_03BD44:    STZ $075E               ; $03:BD44: 9C 5E 07    ;
CODE_03BD47:    JSL CODE_048596         ; $03:BD47: 22 96 85 04 ;Increase lives by one
CODE_03BD4B:    LDA #$05                ; $03:BD4B: A9 05       ;\
CODE_03BD4D:    STA $1603               ; $03:BD4D: 8D 03 16    ;/1-up sound
CODE_03BD50:    LDA #$02                ; $03:BD50: A9 02       ;
CODE_03BD52:    STA $0149               ; $03:BD52: 8D 49 01    ;
CODE_03BD55:    LDX $0753               ; $03:BD55: AE 53 07    ;
CODE_03BD58:    LDY DATA_03BD28,x       ; $03:BD58: BC 28 BD    ;
CODE_03BD5B:    JSR CODE_039CF9         ; $03:BD5B: 20 F9 9C    ;
CODE_03BD5E:    LDY $0EC3               ; $03:BD5E: AC C3 0E    ;
CODE_03BD61:    LDA DATA_03BD2A,y       ; $03:BD61: B9 2A BD    ;
CODE_03BD64:    JSR CODE_039C82         ; $03:BD64: 20 82 9C    ;
CODE_03BD67:    LDY $1700               ; $03:BD67: AC 00 17    ;
CODE_03BD6A:    LDA $16F6,y             ; $03:BD6A: B9 F6 16    ;
CODE_03BD6D:    BNE CODE_03BD7D         ; $03:BD6D: D0 0E       ;
CODE_03BD6F:    LDA #$28                ; $03:BD6F: A9 28       ;
CODE_03BD71:    LDX $16F2,y             ; $03:BD71: BE F2 16    ;
CODE_03BD74:    CPX #$02                ; $03:BD74: E0 02       ;
CODE_03BD76:    BNE CODE_03BD7A         ; $03:BD76: D0 02       ;
CODE_03BD78:    LDA #$24                ; $03:BD78: A9 24       ;
CODE_03BD7A:    STA $16F6,y             ; $03:BD7A: 99 F6 16    ;
CODE_03BD7D:    LDX $9E                 ; $03:BD7D: A6 9E       ;
CODE_03BD7F:    RTS                     ; $03:BD7F: 60          ;

CODE_03BD80:    LDA #$2E                ; $03:BD80: A9 2E       ;
CODE_03BD82:    STA $25                 ; $03:BD82: 85 25       ;
CODE_03BD84:    LDA $85,x               ; $03:BD84: B5 85       ;
CODE_03BD86:    STA $82                 ; $03:BD86: 85 82       ;
CODE_03BD88:    LDA $0226,x             ; $03:BD88: BD 26 02    ;
CODE_03BD8B:    STA $0223               ; $03:BD8B: 8D 23 02    ;
CODE_03BD8E:    LDA #$01                ; $03:BD8E: A9 01       ;
CODE_03BD90:    STA $C5                 ; $03:BD90: 85 C5       ;
CODE_03BD92:    LDA $0244,x             ; $03:BD92: BD 44 02    ;
CODE_03BD95:    SEC                     ; $03:BD95: 38          ;
CODE_03BD96:    SBC #$08                ; $03:BD96: E9 08       ;
CODE_03BD98:    STA $0241               ; $03:BD98: 8D 41 02    ;
CODE_03BD9B:    LDA #$01                ; $03:BD9B: A9 01       ;
CODE_03BD9D:    STA $32                 ; $03:BD9D: 85 32       ;
CODE_03BD9F:    STA $19                 ; $03:BD9F: 85 19       ;
CODE_03BDA1:    LDA #$03                ; $03:BDA1: A9 03       ;
CODE_03BDA3:    STA $0499               ; $03:BDA3: 8D 99 04    ;
CODE_03BDA6:    LDA $020C               ; $03:BDA6: AD 0C 02    ;
CODE_03BDA9:    CMP #$02                ; $03:BDA9: C9 02       ;
CODE_03BDAB:    BCS CODE_03BDB8         ; $03:BDAB: B0 0B       ;
CODE_03BDAD:    LDA $0756               ; $03:BDAD: AD 56 07    ;
CODE_03BDB0:    CMP #$02                ; $03:BDB0: C9 02       ;
CODE_03BDB2:    BCC CODE_03BDB5         ; $03:BDB2: 90 01       ;
CODE_03BDB4:    LSR A                   ; $03:BDB4: 4A          ;
CODE_03BDB5:    STA $020C               ; $03:BDB5: 8D 0C 02    ;
CODE_03BDB8:    LDA #$30                ; $03:BDB8: A9 30       ;
CODE_03BDBA:    STA $0260               ; $03:BDBA: 8D 60 02    ;
CODE_03BDBD:    LDA #$02                ; $03:BDBD: A9 02       ;\Item out of [?] box sound
CODE_03BDBF:    STA $1603               ; $03:BDBF: 8D 03 16    ;/
CODE_03BDC2:    RTS                     ; $03:BDC2: 60          ;

CODE_03BDC3:    LDX #$09                ; $03:BDC3: A2 09       ;
CODE_03BDC5:    STX $9E                 ; $03:BDC5: 86 9E       ;
CODE_03BDC7:    LDA $32                 ; $03:BDC7: A5 32       ;
CODE_03BDC9:    BNE CODE_03BDCE         ; $03:BDC9: D0 03       ;
CODE_03BDCB:    JMP CODE_03BE72         ; $03:BDCB: 4C 72 BE    ;

CODE_03BDCE:    ASL A                   ; $03:BDCE: 0A          ;
CODE_03BDCF:    BCC CODE_03BDF5         ; $03:BDCF: 90 24       ;
CODE_03BDD1:    LDA $0747               ; $03:BDD1: AD 47 07    ;
CODE_03BDD4:    BNE CODE_03BE1E         ; $03:BDD4: D0 48       ;
CODE_03BDD6:    LDA $020C               ; $03:BDD6: AD 0C 02    ;
CODE_03BDD9:    BEQ CODE_03BDEC         ; $03:BDD9: F0 11       ;
CODE_03BDDB:    CMP #$03                ; $03:BDDB: C9 03       ;
CODE_03BDDD:    BEQ CODE_03BDEC         ; $03:BDDD: F0 0D       ;
CODE_03BDDF:    CMP #$02                ; $03:BDDF: C9 02       ;
CODE_03BDE1:    BNE CODE_03BE1E         ; $03:BDE1: D0 3B       ;
CODE_03BDE3:    JSR CODE_03CF8A         ; $03:BDE3: 20 8A CF    ;
CODE_03BDE6:    JSR CODE_03E8E1         ; $03:BDE6: 20 E1 E8    ;
CODE_03BDE9:    JMP CODE_03BE1E         ; $03:BDE9: 4C 1E BE    ;

CODE_03BDEC:    JSR CODE_03CF08         ; $03:BDEC: 20 08 CF    ;
CODE_03BDEF:    JSR CODE_03E72E         ; $03:BDEF: 20 2E E7    ;
CODE_03BDF2:    JMP CODE_03BE1E         ; $03:BDF2: 4C 1E BE    ;

CODE_03BDF5:    LDA $09                 ; $03:BDF5: A5 09       ;
CODE_03BDF7:    AND #$03                ; $03:BDF7: 29 03       ;
CODE_03BDF9:    BNE CODE_03BE15         ; $03:BDF9: D0 1A       ;
CODE_03BDFB:    DEC $0241               ; $03:BDFB: CE 41 02    ;
CODE_03BDFE:    LDA $32                 ; $03:BDFE: A5 32       ;
CODE_03BE00:    INC $32                 ; $03:BE00: E6 32       ;
CODE_03BE02:    CMP #$11                ; $03:BE02: C9 11       ;
CODE_03BE04:    BCC CODE_03BE15         ; $03:BE04: 90 0F       ;
CODE_03BE06:    LDA #$10                ; $03:BE06: A9 10       ;
CODE_03BE08:    STA $5E,x               ; $03:BE08: 95 5E       ;
CODE_03BE0A:    LDA #$80                ; $03:BE0A: A9 80       ;
CODE_03BE0C:    STA $32                 ; $03:BE0C: 85 32       ;
CODE_03BE0E:    ASL A                   ; $03:BE0E: 0A          ;
CODE_03BE0F:    STA $0260               ; $03:BE0F: 8D 60 02    ;
CODE_03BE12:    ROL A                   ; $03:BE12: 2A          ;
CODE_03BE13:    STA $47,x               ; $03:BE13: 95 47       ;
CODE_03BE15:    LDA $32                 ; $03:BE15: A5 32       ;
CODE_03BE17:    CMP #$06                ; $03:BE17: C9 06       ;
CODE_03BE19:    BCS CODE_03BE1E         ; $03:BE19: B0 03       ;
CODE_03BE1B:    JMP CODE_03BE72         ; $03:BE1B: 4C 72 BE    ;

CODE_03BE1E:    JMP CODE_03BE60         ; $03:BE1E: 4C 60 BE    ;

CODE_03BE21:    LDA $79,x               ; $03:BE21: B5 79       ;
CODE_03BE23:    STA $E9                 ; $03:BE23: 85 E9       ;
CODE_03BE25:    LDA $021A,x             ; $03:BE25: BD 1A 02    ;
CODE_03BE28:    STA $E8                 ; $03:BE28: 85 E8       ;
CODE_03BE2A:    REP #$20                ; $03:BE2A: C2 20       ;
CODE_03BE2C:    LDA $E8                 ; $03:BE2C: A5 E8       ;
CODE_03BE2E:    CMP $42                 ; $03:BE2E: C5 42       ;
CODE_03BE30:    BCS CODE_03BE43         ; $03:BE30: B0 11       ;
CODE_03BE32:    CLC                     ; $03:BE32: 18          ;
CODE_03BE33:    ADC #$000C              ; $03:BE33: 69 0C 00    ;
CODE_03BE36:    STA $E6                 ; $03:BE36: 85 E6       ;
CODE_03BE38:    SEP #$20                ; $03:BE38: E2 20       ;
CODE_03BE3A:    LDA $E6                 ; $03:BE3A: A5 E6       ;
CODE_03BE3C:    STA $021A,x             ; $03:BE3C: 9D 1A 02    ;
CODE_03BE3F:    LDA $E7                 ; $03:BE3F: A5 E7       ;
CODE_03BE41:    STA $79,x               ; $03:BE41: 95 79       ;
CODE_03BE43:    SEP #$20                ; $03:BE43: E2 20       ;
CODE_03BE45:    JSR CODE_03FD39         ; $03:BE45: 20 39 FD    ;
CODE_03BE48:    JSR CODE_03FDCB         ; $03:BE48: 20 CB FD    ;
CODE_03BE4B:    JSR CODE_03E9CC         ; $03:BE4B: 20 CC E9    ;
CODE_03BE4E:    JSR CODE_03ED03         ; $03:BE4E: 20 03 ED    ;
CODE_03BE51:    JSR CODE_03DE55         ; $03:BE51: 20 55 DE    ;
CODE_03BE54:    JSR CODE_03DC03         ; $03:BE54: 20 03 DC    ;
CODE_03BE57:    LDA $E8                 ; $03:BE57: A5 E8       ;
CODE_03BE59:    STA $021A,x             ; $03:BE59: 9D 1A 02    ;
CODE_03BE5C:    LDA $E9                 ; $03:BE5C: A5 E9       ;
CODE_03BE5E:    STA $79,x               ; $03:BE5E: 95 79       ;
CODE_03BE60:    JSR CODE_03FD39         ; $03:BE60: 20 39 FD    ;
CODE_03BE63:    JSR CODE_03FDCB         ; $03:BE63: 20 CB FD    ;
CODE_03BE66:    JSR CODE_03E9CC         ; $03:BE66: 20 CC E9    ;
CODE_03BE69:    JSR CODE_03ED03         ; $03:BE69: 20 03 ED    ;
CODE_03BE6C:    JSR CODE_03DE55         ; $03:BE6C: 20 55 DE    ;
CODE_03BE6F:    JSR CODE_03DC03         ; $03:BE6F: 20 03 DC    ;
CODE_03BE72:    RTS                     ; $03:BE72: 60          ;

DATA_03BE73:    db $04,$12                                      ;

CODE_03BE75:    PHA                     ; $03:BE75: 48          ;code related to breaking bricks.
CODE_03BE76:    LDA #$11                ; $03:BE76: A9 11       ;Make brick bounce block shatter
CODE_03BE78:    LDX $03F0               ; $03:BE78: AE F0 03    ;Get bounce block index
CODE_03BE7B:    LDY $0754               ; $03:BE7B: AC 54 07    ;\
CODE_03BE7E:    BNE CODE_03BE82         ; $03:BE7E: D0 02       ;/ Skip next instruction if big Mario
CODE_03BE80:    LDA #$12                ; $03:BE80: A9 12       ;\Make brick bounce block bounce
CODE_03BE82:    STA $35,x               ; $03:BE82: 95 35       ;/
CODE_03BE84:    JSR CODE_03938E         ; $03:BE84: 20 8E 93    ;
CODE_03BE87:    LDX $03F0               ; $03:BE87: AE F0 03    ;
CODE_03BE8A:    LDA $02                 ; $03:BE8A: A5 02       ;
CODE_03BE8C:    STA $03E6,x             ; $03:BE8C: 9D E6 03    ;
CODE_03BE8F:    TAY                     ; $03:BE8F: A8          ;
CODE_03BE90:    LDA $06                 ; $03:BE90: A5 06       ;
CODE_03BE92:    STA $03E8,x             ; $03:BE92: 9D E8 03    ;
CODE_03BE95:    LDA ($06),y             ; $03:BE95: B1 06       ;
CODE_03BE97:    JSR CODE_03BF95         ; $03:BE97: 20 95 BF    ;
CODE_03BE9A:    STA $00                 ; $03:BE9A: 85 00       ;
CODE_03BE9C:    LDY $0754               ; $03:BE9C: AC 54 07    ;
CODE_03BE9F:    BNE CODE_03BEA2         ; $03:BE9F: D0 01       ;
CODE_03BEA1:    TYA                     ; $03:BEA1: 98          ;
CODE_03BEA2:    BCC CODE_03BEC9         ; $03:BEA2: 90 25       ;
CODE_03BEA4:    LDY #$11                ; $03:BEA4: A0 11       ;
CODE_03BEA6:    STY $35,x               ; $03:BEA6: 94 35       ;
CODE_03BEA8:    LDA #$FC                ; $03:BEA8: A9 FC       ;
CODE_03BEAA:    LDY $00                 ; $03:BEAA: A4 00       ;
CODE_03BEAC:    CPY #$5B                ; $03:BEAC: C0 5B       ;
CODE_03BEAE:    BEQ CODE_03BEB4         ; $03:BEAE: F0 04       ;
CODE_03BEB0:    CPY #$60                ; $03:BEB0: C0 60       ;
CODE_03BEB2:    BNE CODE_03BEC9         ; $03:BEB2: D0 15       ;
CODE_03BEB4:    LDA $06BC               ; $03:BEB4: AD BC 06    ;
CODE_03BEB7:    BNE CODE_03BEC1         ; $03:BEB7: D0 08       ;
CODE_03BEB9:    LDA #$0B                ; $03:BEB9: A9 0B       ;
CODE_03BEBB:    STA $07AD               ; $03:BEBB: 8D AD 07    ;
CODE_03BEBE:    INC $06BC               ; $03:BEBE: EE BC 06    ;
CODE_03BEC1:    LDA $07AD               ; $03:BEC1: AD AD 07    ;
CODE_03BEC4:    BNE CODE_03BEC8         ; $03:BEC4: D0 02       ;
CODE_03BEC6:    LDY #$FC                ; $03:BEC6: A0 FC       ;
CODE_03BEC8:    TYA                     ; $03:BEC8: 98          ;
CODE_03BEC9:    STA $03EA,x             ; $03:BEC9: 9D EA 03    ;
CODE_03BECC:    JSR CODE_03BF0D         ; $03:BECC: 20 0D BF    ;
CODE_03BECF:    LDY $02                 ; $03:BECF: A4 02       ;
CODE_03BED1:    LDA #$27                ; $03:BED1: A9 27       ;
CODE_03BED3:    STA ($06),y             ; $03:BED3: 91 06       ;
CODE_03BED5:    LDA #$10                ; $03:BED5: A9 10       ;
CODE_03BED7:    STA $078C               ; $03:BED7: 8D 8C 07    ;
CODE_03BEDA:    PLA                     ; $03:BEDA: 68          ;
CODE_03BEDB:    STA $05                 ; $03:BEDB: 85 05       ;
CODE_03BEDD:    LDY #$00                ; $03:BEDD: A0 00       ;
CODE_03BEDF:    LDA $0714               ; $03:BEDF: AD 14 07    ;
CODE_03BEE2:    BNE CODE_03BEE9         ; $03:BEE2: D0 05       ;
CODE_03BEE4:    LDA $0754               ; $03:BEE4: AD 54 07    ;
CODE_03BEE7:    BEQ CODE_03BEEA         ; $03:BEE7: F0 01       ;
CODE_03BEE9:    INY                     ; $03:BEE9: C8          ;
CODE_03BEEA:    LDA $0237               ; $03:BEEA: AD 37 02    ;
CODE_03BEED:    CLC                     ; $03:BEED: 18          ;
CODE_03BEEE:    ADC DATA_03BE73,y       ; $03:BEEE: 79 73 BE    ;
CODE_03BEF1:    AND #$F0                ; $03:BEF1: 29 F0       ;
CODE_03BEF3:    STA $0244,x             ; $03:BEF3: 9D 44 02    ;
CODE_03BEF6:    LDY $35,x               ; $03:BEF6: B4 35       ;
CODE_03BEF8:    CPY #$11                ; $03:BEF8: C0 11       ;
CODE_03BEFA:    BEQ CODE_03BF01         ; $03:BEFA: F0 05       ;
CODE_03BEFC:    JSR CODE_03BFA1         ; $03:BEFC: 20 A1 BF    ;
CODE_03BEFF:    BRA CODE_03BF04         ; $03:BEFF: 80 03       ;

CODE_03BF01:    JSR CODE_03BF2C         ; $03:BF01: 20 2C BF    ;
CODE_03BF04:    LDA $03F0               ; $03:BF04: AD F0 03    ;
CODE_03BF07:    EOR #$01                ; $03:BF07: 49 01       ;
CODE_03BF09:    STA $03F0               ; $03:BF09: 8D F0 03    ;
CODE_03BF0C:    RTS                     ; $03:BF0C: 60          ;

CODE_03BF0D:    LDA $0219               ; $03:BF0D: AD 19 02    ;
CODE_03BF10:    CLC                     ; $03:BF10: 18          ;
CODE_03BF11:    ADC #$08                ; $03:BF11: 69 08       ;
CODE_03BF13:    AND #$F0                ; $03:BF13: 29 F0       ;
CODE_03BF15:    STA $0226,x             ; $03:BF15: 9D 26 02    ;
CODE_03BF18:    STA $0E16               ; $03:BF18: 8D 16 0E    ;
CODE_03BF1B:    LDA $78                 ; $03:BF1B: A5 78       ;
CODE_03BF1D:    ADC #$00                ; $03:BF1D: 69 00       ;
CODE_03BF1F:    STA $85,x               ; $03:BF1F: 95 85       ;
CODE_03BF21:    STA $03EC,x             ; $03:BF21: 9D EC 03    ;
CODE_03BF24:    STA $0E17               ; $03:BF24: 8D 17 0E    ;
CODE_03BF27:    LDA $BB                 ; $03:BF27: A5 BB       ;
CODE_03BF29:    STA $C8,x               ; $03:BF29: 95 C8       ;
CODE_03BF2B:    RTS                     ; $03:BF2B: 60          ;

CODE_03BF2C:    JSR CODE_03BFC6         ; $03:BF2C: 20 C6 BF    ;
CODE_03BF2F:    LDA #$01                ; $03:BF2F: A9 01       ;\"Mario hits ceiling/shell hits wall" sound
CODE_03BF31:    STA $1600               ; $03:BF31: 8D 00 16    ;/
CODE_03BF34:    STZ $6A,x               ; $03:BF34: 74 6A       ;Horizontal speed of bounce blocks: none
CODE_03BF36:    STZ $0449,x             ; $03:BF36: 9E 49 04    ;
CODE_03BF39:    STZ $A0                 ; $03:BF39: 64 A0       ;No vertical speed of Mario
CODE_03BF3B:    LDA #$FE                ; $03:BF3B: A9 FE       ;\Vertical speed of bounce blocks
CODE_03BF3D:    STA $AD,x               ; $03:BF3D: 95 AD       ;/
CODE_03BF3F:    LDA $05                 ; $03:BF3F: A5 05       ;
CODE_03BF41:    JSR CODE_03BF95         ; $03:BF41: 20 95 BF    ;
CODE_03BF44:    BCC CODE_03BF86         ; $03:BF44: 90 40       ;
CODE_03BF46:    TYA                     ; $03:BF46: 98          ;
CODE_03BF47:    CMP #$09                ; $03:BF47: C9 09       ;
CODE_03BF49:    BCC CODE_03BF4D         ; $03:BF49: 90 02       ;
CODE_03BF4B:    SBC #$05                ; $03:BF4B: E9 05       ;
CODE_03BF4D:    ASL A                   ; $03:BF4D: 0A          ;
CODE_03BF4E:    TAY                     ; $03:BF4E: A8          ;
CODE_03BF4F:    LDA PNTR_03BF5C,y       ; $03:BF4F: B9 5C BF    ;
CODE_03BF52:    STA $04                 ; $03:BF52: 85 04       ;
CODE_03BF54:    LDA PNTR_03BF5C+1,y     ; $03:BF54: B9 5D BF    ;
CODE_03BF57:    STA $05                 ; $03:BF57: 85 05       ;
CODE_03BF59:    JMP ($0004)             ; $03:BF59: 6C 04 00    ;

;Looks like a pointer table of what the ? blocks spawn

PNTR_03BF5C:    dw CODE_03BF6E                                  ;Spawn Mushroom
                dw CODE_03BC59                                  ;Spawn Coin
                dw CODE_03BC59                                  ;Spawn Coin
                dw CODE_03BF76                                  ;Spawn 1UP
                dw CODE_03BF6E                                  ;Spawn Mushroom (again)
                dw CODE_03BF7E                                  ;Spawn Vine
                dw CODE_03BF72                                  ;Spawn Star
                dw CODE_03BC59                                  ;Spawn Coin
                dw CODE_03BF76                                  ;Spawn 1UP

CODE_03BF6E:    LDA #$00                ; $03:BF6E: A9 00       ;\Spawn Mushroom
CODE_03BF70:    BRA CODE_03BF78         ; $03:BF70: 80 06       ;/

CODE_03BF72:    LDA #$02                ; $03:BF72: A9 02       ;\Spawn Star
CODE_03BF74:    BRA CODE_03BF78         ; $03:BF74: 80 02       ;/

CODE_03BF76:    LDA #$03                ; $03:BF76: A9 03       ;\Spawn 1-Up
CODE_03BF78:    STA $020C               ; $03:BF78: 8D 0C 02    ;/
CODE_03BF7B:    JMP CODE_03BD80         ; $03:BF7B: 4C 80 BD    ;

CODE_03BF7E:    LDX #$09                ; $03:BF7E: A2 09       ;\Spawn vine?
CODE_03BF80:    LDY $03F0               ; $03:BF80: AC F0 03    ; |Sprite index: $09
CODE_03BF83:    JSR CODE_03B9FD         ; $03:BF83: 20 FD B9    ;/ Y = ???
CODE_03BF86:    RTS                     ; $03:BF86: 60          ;

DATA_03BF87:    db $E8,$E7,$62,$63,$58,$59,$5A,$5B              ;
                db $5C,$5D,$5E,$5F,$60,$61                      ;

CODE_03BF95:    LDY #$0D                ; $03:BF95: A0 0D       ;
CODE_03BF97:    CMP DATA_03BF87,y       ; $03:BF97: D9 87 BF    ;
CODE_03BF9A:    BEQ CODE_03BFA0         ; $03:BF9A: F0 04       ;
CODE_03BF9C:    DEY                     ; $03:BF9C: 88          ;
CODE_03BF9D:    BPL CODE_03BF97         ; $03:BF9D: 10 F8       ;
CODE_03BF9F:    CLC                     ; $03:BF9F: 18          ;
CODE_03BFA0:    RTS                     ; $03:BFA0: 60          ;

CODE_03BFA1:    JSR CODE_03BFC6         ; $03:BFA1: 20 C6 BF    ;
CODE_03BFA4:    LDA #$01                ; $03:BFA4: A9 01       ;
CODE_03BFA6:    STA $03EE,x             ; $03:BFA6: 9D EE 03    ;
CODE_03BFA9:    LDA $1603               ; $03:BFA9: AD 03 16    ;\ 
CODE_03BFAC:    BNE CODE_03BFB3         ; $03:BFAC: D0 05       ; |If there's no SFX playing already
CODE_03BFAE:    LDA #$07                ; $03:BFAE: A9 07       ; |Shatter bricks sound
CODE_03BFB0:    STA $1603               ; $03:BFB0: 8D 03 16    ;/
CODE_03BFB3:    JSR CODE_03BFED         ; $03:BFB3: 20 ED BF    ;
CODE_03BFB6:    LDA #$FE                ; $03:BFB6: A9 FE       ;
CODE_03BFB8:    STA $A0                 ; $03:BFB8: 85 A0       ;
CODE_03BFBA:    LDA #$05                ; $03:BFBA: A9 05       ;
CODE_03BFBC:    STA $014A               ; $03:BFBC: 8D 4A 01    ;
CODE_03BFBF:    JSR CODE_03BD55         ; $03:BFBF: 20 55 BD    ;
CODE_03BFC2:    LDX $03F0               ; $03:BFC2: AE F0 03    ;
CODE_03BFC5:    RTS                     ; $03:BFC5: 60          ;

CODE_03BFC6:    LDX $03F0               ; $03:BFC6: AE F0 03    ;
CODE_03BFC9:    LDY $02                 ; $03:BFC9: A4 02       ;
CODE_03BFCB:    BEQ CODE_03BFEC         ; $03:BFCB: F0 1F       ;
CODE_03BFCD:    TYA                     ; $03:BFCD: 98          ;
CODE_03BFCE:    SEC                     ; $03:BFCE: 38          ;
CODE_03BFCF:    SBC #$10                ; $03:BFCF: E9 10       ;
CODE_03BFD1:    STA $02                 ; $03:BFD1: 85 02       ;
CODE_03BFD3:    TAY                     ; $03:BFD3: A8          ;
CODE_03BFD4:    LDA ($06),y             ; $03:BFD4: B1 06       ;
CODE_03BFD6:    CMP #$E9                ; $03:BFD6: C9 E9       ;
CODE_03BFD8:    BNE CODE_03BFEC         ; $03:BFD8: D0 12       ;
CODE_03BFDA:    LDA #$00                ; $03:BFDA: A9 00       ;
CODE_03BFDC:    STA ($06),y             ; $03:BFDC: 91 06       ;
CODE_03BFDE:    LDA #$01                ; $03:BFDE: A9 01       ;\
CODE_03BFE0:    STA $1603               ; $03:BFE0: 8D 03 16    ;/Coin sound
CODE_03BFE3:    JSR CODE_039373         ; $03:BFE3: 20 73 93    ;
CODE_03BFE6:    LDX $03F0               ; $03:BFE6: AE F0 03    ;
CODE_03BFE9:    JSR CODE_03BC73         ; $03:BFE9: 20 73 BC    ;
CODE_03BFEC:    RTS                     ; $03:BFEC: 60          ;

CODE_03BFED:    LDA $0226,x             ; $03:BFED: BD 26 02    ;
CODE_03BFF0:    STA $03F3,x             ; $03:BFF0: 9D F3 03    ;
CODE_03BFF3:    LDA #$F0                ; $03:BFF3: A9 F0       ;
CODE_03BFF5:    STA $6A,x               ; $03:BFF5: 95 6A       ;
CODE_03BFF7:    STA $6C,x               ; $03:BFF7: 95 6C       ;
CODE_03BFF9:    LDA #$FA                ; $03:BFF9: A9 FA       ;
CODE_03BFFB:    STA $AD,x               ; $03:BFFB: 95 AD       ;
CODE_03BFFD:    LDA #$FC                ; $03:BFFD: A9 FC       ;
CODE_03BFFF:    STA $AF,x               ; $03:BFFF: 95 AF       ;
CODE_03C001:    STZ $0449,x             ; $03:C001: 9E 49 04    ;
CODE_03C004:    STZ $044B,x             ; $03:C004: 9E 4B 04    ;
CODE_03C007:    LDA $85,x               ; $03:C007: B5 85       ;
CODE_03C009:    STA $87,x               ; $03:C009: 95 87       ;
CODE_03C00B:    LDA $0226,x             ; $03:C00B: BD 26 02    ;
CODE_03C00E:    STA $0228,x             ; $03:C00E: 9D 28 02    ;
CODE_03C011:    LDA $0244,x             ; $03:C011: BD 44 02    ;
CODE_03C014:    CLC                     ; $03:C014: 18          ;
CODE_03C015:    ADC #$08                ; $03:C015: 69 08       ;
CODE_03C017:    STA $0246,x             ; $03:C017: 9D 46 02    ;
CODE_03C01A:    LDA #$FA                ; $03:C01A: A9 FA       ;
CODE_03C01C:    STA $AD,x               ; $03:C01C: 95 AD       ;
CODE_03C01E:    RTS                     ; $03:C01E: 60          ;

CODE_03C01F:    LDA $35,x               ; $03:C01F: B5 35       ;
CODE_03C021:    BEQ CODE_03C083         ; $03:C021: F0 60       ;
CODE_03C023:    AND #$0F                ; $03:C023: 29 0F       ;
CODE_03C025:    PHA                     ; $03:C025: 48          ;
CODE_03C026:    TAY                     ; $03:C026: A8          ;
CODE_03C027:    TXA                     ; $03:C027: 8A          ;
CODE_03C028:    CLC                     ; $03:C028: 18          ;
CODE_03C029:    ADC #$0D                ; $03:C029: 69 0D       ;
CODE_03C02B:    TAX                     ; $03:C02B: AA          ;
CODE_03C02C:    DEY                     ; $03:C02C: 88          ;
CODE_03C02D:    BEQ CODE_03C062         ; $03:C02D: F0 33       ;
CODE_03C02F:    JSR CODE_03C153         ; $03:C02F: 20 53 C1    ;
CODE_03C032:    JSR CODE_03C0BA         ; $03:C032: 20 BA C0    ;
CODE_03C035:    INX                     ; $03:C035: E8          ;
CODE_03C036:    INX                     ; $03:C036: E8          ;
CODE_03C037:    JSR CODE_03C153         ; $03:C037: 20 53 C1    ;
CODE_03C03A:    JSR CODE_03C0BA         ; $03:C03A: 20 BA C0    ;
CODE_03C03D:    LDX $9E                 ; $03:C03D: A6 9E       ;
CODE_03C03F:    JSR CODE_03FD40         ; $03:C03F: 20 40 FD    ;
CODE_03C042:    JSR CODE_03FDD1         ; $03:C042: 20 D1 FD    ;
CODE_03C045:    JSR CODE_03F3AC         ; $03:C045: 20 AC F3    ;
CODE_03C048:    PLA                     ; $03:C048: 68          ;
CODE_03C049:    LDY $C8,x               ; $03:C049: B4 C8       ;
CODE_03C04B:    BEQ CODE_03C083         ; $03:C04B: F0 36       ;
CODE_03C04D:    PHA                     ; $03:C04D: 48          ;
CODE_03C04E:    LDA #$F0                ; $03:C04E: A9 F0       ;
CODE_03C050:    CMP $0246,x             ; $03:C050: DD 46 02    ;
CODE_03C053:    BCS CODE_03C058         ; $03:C053: B0 03       ;
CODE_03C055:    STA $0246,x             ; $03:C055: 9D 46 02    ;
CODE_03C058:    LDA $0244,x             ; $03:C058: BD 44 02    ;
CODE_03C05B:    CMP #$F0                ; $03:C05B: C9 F0       ;
CODE_03C05D:    PLA                     ; $03:C05D: 68          ;
CODE_03C05E:    BCC CODE_03C083         ; $03:C05E: 90 23       ;
CODE_03C060:    BCS CODE_03C081         ; $03:C060: B0 1F       ;
CODE_03C062:    JSR CODE_03C153         ; $03:C062: 20 53 C1    ;
CODE_03C065:    LDX $9E                 ; $03:C065: A6 9E       ;
CODE_03C067:    JSR CODE_03FD40         ; $03:C067: 20 40 FD    ;
CODE_03C06A:    JSR CODE_03FDD1         ; $03:C06A: 20 D1 FD    ;
CODE_03C06D:    JSR CODE_03F358         ; $03:C06D: 20 58 F3    ;
CODE_03C070:    PLA                     ; $03:C070: 68          ;
CODE_03C071:    STA $35,x               ; $03:C071: 95 35       ;
CODE_03C073:    LDA $0244,x             ; $03:C073: BD 44 02    ;
CODE_03C076:    AND #$0F                ; $03:C076: 29 0F       ;
CODE_03C078:    CMP #$05                ; $03:C078: C9 05       ;
CODE_03C07A:    BCS CODE_03C083         ; $03:C07A: B0 07       ;
CODE_03C07C:    LDA #$01                ; $03:C07C: A9 01       ;
CODE_03C07E:    STA $03EE,x             ; $03:C07E: 9D EE 03    ;
CODE_03C081:    STZ $35,x               ; $03:C081: 74 35       ;
CODE_03C083:    RTS                     ; $03:C083: 60          ;

CODE_03C084:    LDX #$01                ; $03:C084: A2 01       ;
CODE_03C086:    STX $9E                 ; $03:C086: 86 9E       ;
CODE_03C088:    LDA $03EE,x             ; $03:C088: BD EE 03    ;
CODE_03C08B:    BEQ CODE_03C0A9         ; $03:C08B: F0 1C       ;
CODE_03C08D:    LDA $03E8,x             ; $03:C08D: BD E8 03    ;
CODE_03C090:    STA $06                 ; $03:C090: 85 06       ;
CODE_03C092:    LDA #$05                ; $03:C092: A9 05       ;
CODE_03C094:    STA $07                 ; $03:C094: 85 07       ;
CODE_03C096:    LDA $03E6,x             ; $03:C096: BD E6 03    ;
CODE_03C099:    STA $02                 ; $03:C099: 85 02       ;
CODE_03C09B:    TAY                     ; $03:C09B: A8          ;
CODE_03C09C:    LDA $03EA,x             ; $03:C09C: BD EA 03    ;
CODE_03C09F:    STA ($06),y             ; $03:C09F: 91 06       ;
CODE_03C0A1:    JSR CODE_039384         ; $03:C0A1: 20 84 93    ;
CODE_03C0A4:    LDA #$00                ; $03:C0A4: A9 00       ;
CODE_03C0A6:    STA $03EE,x             ; $03:C0A6: 9D EE 03    ;
CODE_03C0A9:    DEX                     ; $03:C0A9: CA          ;
CODE_03C0AA:    BPL CODE_03C086         ; $03:C0AA: 10 DA       ;
CODE_03C0AC:    RTS                     ; $03:C0AC: 60          ;

CODE_03C0AD:    INX                     ; $03:C0AD: E8          ;
CODE_03C0AE:    JSR CODE_03C0BA         ; $03:C0AE: 20 BA C0    ;
CODE_03C0B1:    LDX $9E                 ; $03:C0B1: A6 9E       ;
CODE_03C0B3:    RTS                     ; $03:C0B3: 60          ;

CODE_03C0B4:    LDA $070E               ; $03:C0B4: AD 0E 07    ;
CODE_03C0B7:    BNE CODE_03C0FC         ; $03:C0B7: D0 43       ;
CODE_03C0B9:    TAX                     ; $03:C0B9: AA          ;
CODE_03C0BA:    LDA $5D,x               ; $03:C0BA: B5 5D       ;
CODE_03C0BC:    ASL A                   ; $03:C0BC: 0A          ;
CODE_03C0BD:    ASL A                   ; $03:C0BD: 0A          ;
CODE_03C0BE:    ASL A                   ; $03:C0BE: 0A          ;
CODE_03C0BF:    ASL A                   ; $03:C0BF: 0A          ;
CODE_03C0C0:    STA $01                 ; $03:C0C0: 85 01       ;
CODE_03C0C2:    LDA $5D,x               ; $03:C0C2: B5 5D       ;
CODE_03C0C4:    LSR A                   ; $03:C0C4: 4A          ;
CODE_03C0C5:    LSR A                   ; $03:C0C5: 4A          ;
CODE_03C0C6:    LSR A                   ; $03:C0C6: 4A          ;
CODE_03C0C7:    LSR A                   ; $03:C0C7: 4A          ;
CODE_03C0C8:    CMP #$08                ; $03:C0C8: C9 08       ;
CODE_03C0CA:    BCC CODE_03C0CE         ; $03:C0CA: 90 02       ;
CODE_03C0CC:    ORA #$F0                ; $03:C0CC: 09 F0       ;
CODE_03C0CE:    STA $00                 ; $03:C0CE: 85 00       ;
CODE_03C0D0:    STA $0EB6               ; $03:C0D0: 8D B6 0E    ;
CODE_03C0D3:    LDY #$00                ; $03:C0D3: A0 00       ;
CODE_03C0D5:    CMP #$00                ; $03:C0D5: C9 00       ;
CODE_03C0D7:    BPL CODE_03C0DA         ; $03:C0D7: 10 01       ;
CODE_03C0D9:    DEY                     ; $03:C0D9: 88          ;
CODE_03C0DA:    STY $02                 ; $03:C0DA: 84 02       ;
CODE_03C0DC:    LDA $0401,x             ; $03:C0DC: BD 01 04    ;
CODE_03C0DF:    CLC                     ; $03:C0DF: 18          ;
CODE_03C0E0:    ADC $01                 ; $03:C0E0: 65 01       ;
CODE_03C0E2:    STA $0401,x             ; $03:C0E2: 9D 01 04    ;
CODE_03C0E5:    LDA #$00                ; $03:C0E5: A9 00       ;
CODE_03C0E7:    ROL A                   ; $03:C0E7: 2A          ;
CODE_03C0E8:    PHA                     ; $03:C0E8: 48          ;
CODE_03C0E9:    ROR A                   ; $03:C0E9: 6A          ;
CODE_03C0EA:    LDA $0219,x             ; $03:C0EA: BD 19 02    ;
CODE_03C0ED:    ADC $00                 ; $03:C0ED: 65 00       ;
CODE_03C0EF:    STA $0219,x             ; $03:C0EF: 9D 19 02    ;
CODE_03C0F2:    LDA $78,x               ; $03:C0F2: B5 78       ;
CODE_03C0F4:    ADC $02                 ; $03:C0F4: 65 02       ;
CODE_03C0F6:    STA $78,x               ; $03:C0F6: 95 78       ;
CODE_03C0F8:    PLA                     ; $03:C0F8: 68          ;
CODE_03C0F9:    CLC                     ; $03:C0F9: 18          ;
CODE_03C0FA:    ADC $00                 ; $03:C0FA: 65 00       ;
CODE_03C0FC:    RTS                     ; $03:C0FC: 60          ;

CODE_03C0FD:    LDX #$00                ; $03:C0FD: A2 00       ;
CODE_03C0FF:    LDA $0747               ; $03:C0FF: AD 47 07    ;
CODE_03C102:    BNE CODE_03C109         ; $03:C102: D0 05       ;
CODE_03C104:    LDA $070E               ; $03:C104: AD 0E 07    ;
CODE_03C107:    BNE CODE_03C0FC         ; $03:C107: D0 F3       ;
CODE_03C109:    LDA $0709               ; $03:C109: AD 09 07    ;
CODE_03C10C:    STA $00                 ; $03:C10C: 85 00       ;
CODE_03C10E:    LDA #$04                ; $03:C10E: A9 04       ;
CODE_03C110:    JMP CODE_03C15C         ; $03:C110: 4C 5C C1    ;

CODE_03C113:    LDY #$3D                ; $03:C113: A0 3D       ;\
CODE_03C115:    LDA $29,x               ; $03:C115: B5 29       ; |
CODE_03C117:    CMP #$05                ; $03:C117: C9 05       ; |If sprite state is #$05, Y = $20, else, Y = $3D
CODE_03C119:    BNE CODE_03C142         ; $03:C119: D0 27       ; |
CODE_03C11B:    LDY #$20                ; $03:C11B: A0 20       ; |
CODE_03C11D:    BRA CODE_03C142         ; $03:C11D: 80 23       ;/

CODE_03C11F:    LDY #$00                ; $03:C11F: A0 00       ;
CODE_03C121:    BRA CODE_03C125         ; $03:C121: 80 02       ;

CODE_03C123:    LDY #$01                ; $03:C123: A0 01       ;
CODE_03C125:    INX                     ; $03:C125: E8          ;
CODE_03C126:    LDA #$03                ; $03:C126: A9 03       ;
CODE_03C128:    STA $00                 ; $03:C128: 85 00       ;
CODE_03C12A:    LDA #$06                ; $03:C12A: A9 06       ;
CODE_03C12C:    STA $01                 ; $03:C12C: 85 01       ;
CODE_03C12E:    LDA #$02                ; $03:C12E: A9 02       ;
CODE_03C130:    STA $02                 ; $03:C130: 85 02       ;
CODE_03C132:    TYA                     ; $03:C132: 98          ;
CODE_03C133:    JMP CODE_03C181         ; $03:C133: 4C 81 C1    ;

CODE_03C136:    LDY #$7F                ; $03:C136: A0 7F       ;
CODE_03C138:    BNE CODE_03C13C         ; $03:C138: D0 02       ;
CODE_03C13A:    LDY #$0F                ; $03:C13A: A0 0F       ;
CODE_03C13C:    LDA #$02                ; $03:C13C: A9 02       ;
CODE_03C13E:    BNE CODE_03C144         ; $03:C13E: D0 04       ;
CODE_03C140:    LDY #$1C                ; $03:C140: A0 1C       ;
CODE_03C142:    LDA #$03                ; $03:C142: A9 03       ;
CODE_03C144:    STY $00                 ; $03:C144: 84 00       ;
CODE_03C146:    INX                     ; $03:C146: E8          ;
CODE_03C147:    JSR CODE_03C15C         ; $03:C147: 20 5C C1    ;
CODE_03C14A:    LDX $9E                 ; $03:C14A: A6 9E       ;
CODE_03C14C:    RTS                     ; $03:C14C: 60          ;

DATA_03C14D:    db $06,$08                                      ;

CODE_03C14F:    LDY #$00                ; $03:C14F: A0 00       ;
CODE_03C151:    BRA CODE_03C153         ; $03:C151: 80 00       ;

CODE_03C153:    LDY #$01                ; $03:C153: A0 01       ;
CODE_03C155:    LDA #$50                ; $03:C155: A9 50       ;
CODE_03C157:    STA $00                 ; $03:C157: 85 00       ;
CODE_03C159:    LDA DATA_03C14D,y       ; $03:C159: B9 4D C1    ;
CODE_03C15C:    STA $02                 ; $03:C15C: 85 02       ;
CODE_03C15E:    LDA #$00                ; $03:C15E: A9 00       ;
CODE_03C160:    JMP CODE_03C18B         ; $03:C160: 4C 8B C1    ;Impose gravity

CODE_03C163:    LDA #$00                ; $03:C163: A9 00       ;
CODE_03C165:    BRA CODE_03C169         ; $03:C165: 80 02       ;

CODE_03C167:    LDA #$01                ; $03:C167: A9 01       ;
CODE_03C169:    PHA                     ; $03:C169: 48          ;
CODE_03C16A:    LDY $1C,x               ; $03:C16A: B4 1C       ;
CODE_03C16C:    INX                     ; $03:C16C: E8          ;
CODE_03C16D:    LDA #$05                ; $03:C16D: A9 05       ;
CODE_03C16F:    CPY #$29                ; $03:C16F: C0 29       ;
CODE_03C171:    BNE CODE_03C175         ; $03:C171: D0 02       ;
CODE_03C173:    LDA #$09                ; $03:C173: A9 09       ;
CODE_03C175:    STA $00                 ; $03:C175: 85 00       ;
CODE_03C177:    LDA #$0A                ; $03:C177: A9 0A       ;
CODE_03C179:    STA $01                 ; $03:C179: 85 01       ;
CODE_03C17B:    LDA #$03                ; $03:C17B: A9 03       ;
CODE_03C17D:    STA $02                 ; $03:C17D: 85 02       ;
CODE_03C17F:    PLA                     ; $03:C17F: 68          ;
CODE_03C180:    TAY                     ; $03:C180: A8          ;
CODE_03C181:    JSR CODE_03C18B         ; $03:C181: 20 8B C1    ;Impose gravity
CODE_03C184:    LDX $9E                 ; $03:C184: A6 9E       ;
CODE_03C186:    RTS                     ; $03:C186: 60          ;

CODE_03C187:    JSR CODE_03C18B         ; $03:C187: 20 8B C1    ;Impose gravity
CODE_03C18A:    RTL                     ; $03:C18A: 6B          ;

;Impose gravity
;$00 - Downward force
;$01 - Upward force
;$07 - adder for vertical position
CODE_03C18B:    PHA                     ; $03:C18B: 48          ;
CODE_03C18C:    LDA $041C,x             ; $03:C18C: BD 1C 04    ;
CODE_03C18F:    CLC                     ; $03:C18F: 18          ;
CODE_03C190:    ADC $043C,x             ; $03:C190: 7D 3C 04    ;
CODE_03C193:    STA $041C,x             ; $03:C193: 9D 1C 04    ;
CODE_03C196:    LDY #$00                ; $03:C196: A0 00       ;
CODE_03C198:    LDA $A0,x               ; $03:C198: B5 A0       ;
CODE_03C19A:    BPL CODE_03C19D         ; $03:C19A: 10 01       ;
CODE_03C19C:    DEY                     ; $03:C19C: 88          ;
CODE_03C19D:    STY $07                 ; $03:C19D: 84 07       ;
CODE_03C19F:    ADC $0237,x             ; $03:C19F: 7D 37 02    ;
CODE_03C1A2:    STA $0237,x             ; $03:C1A2: 9D 37 02    ;
CODE_03C1A5:    LDA $BB,x               ; $03:C1A5: B5 BB       ;
CODE_03C1A7:    ADC $07                 ; $03:C1A7: 65 07       ;
CODE_03C1A9:    STA $BB,x               ; $03:C1A9: 95 BB       ;
CODE_03C1AB:    LDA $043C,x             ; $03:C1AB: BD 3C 04    ;
CODE_03C1AE:    CLC                     ; $03:C1AE: 18          ;
CODE_03C1AF:    ADC $00                 ; $03:C1AF: 65 00       ;
CODE_03C1B1:    STA $043C,x             ; $03:C1B1: 9D 3C 04    ;
CODE_03C1B4:    LDA $A0,x               ; $03:C1B4: B5 A0       ;
CODE_03C1B6:    ADC #$00                ; $03:C1B6: 69 00       ;
CODE_03C1B8:    STA $A0,x               ; $03:C1B8: 95 A0       ;
CODE_03C1BA:    CMP $02                 ; $03:C1BA: C5 02       ;
CODE_03C1BC:    BMI CODE_03C1CC         ; $03:C1BC: 30 0E       ;
CODE_03C1BE:    LDA $043C,x             ; $03:C1BE: BD 3C 04    ;
CODE_03C1C1:    CMP #$80                ; $03:C1C1: C9 80       ;
CODE_03C1C3:    BCC CODE_03C1CC         ; $03:C1C3: 90 07       ;
CODE_03C1C5:    LDA $02                 ; $03:C1C5: A5 02       ;
CODE_03C1C7:    STA $A0,x               ; $03:C1C7: 95 A0       ;
CODE_03C1C9:    STZ $043C,x             ; $03:C1C9: 9E 3C 04    ;
CODE_03C1CC:    PLA                     ; $03:C1CC: 68          ;
CODE_03C1CD:    BEQ CODE_03C1F9         ; $03:C1CD: F0 2A       ;
CODE_03C1CF:    LDA $02                 ; $03:C1CF: A5 02       ;
CODE_03C1D1:    EOR #$FF                ; $03:C1D1: 49 FF       ;
CODE_03C1D3:    INC A                   ; $03:C1D3: 1A          ;
CODE_03C1D4:    STA $07                 ; $03:C1D4: 85 07       ;
CODE_03C1D6:    LDA $043C,x             ; $03:C1D6: BD 3C 04    ;
CODE_03C1D9:    SEC                     ; $03:C1D9: 38          ;
CODE_03C1DA:    SBC $01                 ; $03:C1DA: E5 01       ;
CODE_03C1DC:    STA $043C,x             ; $03:C1DC: 9D 3C 04    ;
CODE_03C1DF:    LDA $A0,x               ; $03:C1DF: B5 A0       ;
CODE_03C1E1:    SBC #$00                ; $03:C1E1: E9 00       ;
CODE_03C1E3:    STA $A0,x               ; $03:C1E3: 95 A0       ;
CODE_03C1E5:    CMP $07                 ; $03:C1E5: C5 07       ;
CODE_03C1E7:    BPL CODE_03C1F9         ; $03:C1E7: 10 10       ;
CODE_03C1E9:    LDA $043C,x             ; $03:C1E9: BD 3C 04    ;
CODE_03C1EC:    CMP #$80                ; $03:C1EC: C9 80       ;
CODE_03C1EE:    BCS CODE_03C1F9         ; $03:C1EE: B0 09       ;
CODE_03C1F0:    LDA $07                 ; $03:C1F0: A5 07       ;
CODE_03C1F2:    STA $A0,x               ; $03:C1F2: 95 A0       ;
CODE_03C1F4:    LDA #$FF                ; $03:C1F4: A9 FF       ;
CODE_03C1F6:    STA $043C,x             ; $03:C1F6: 9D 3C 04    ;
CODE_03C1F9:    RTS                     ; $03:C1F9: 60          ;

CODE_03C1FA:    LDA $0E9D,x             ; $03:C1FA: BD 9D 0E    ;
CODE_03C1FD:    BEQ CODE_03C261         ; $03:C1FD: F0 62       ;
CODE_03C1FF:    INC $0EA2,x             ; $03:C1FF: FE A2 0E    ;
CODE_03C202:    LDA $0EA2,x             ; $03:C202: BD A2 0E    ;
CODE_03C205:    LSR A                   ; $03:C205: 4A          ;
CODE_03C206:    LSR A                   ; $03:C206: 4A          ;
CODE_03C207:    LSR A                   ; $03:C207: 4A          ;
CODE_03C208:    CMP #$03                ; $03:C208: C9 03       ;
CODE_03C20A:    BEQ CODE_03C262         ; $03:C20A: F0 56       ;
CODE_03C20C:    ASL A                   ; $03:C20C: 0A          ;
CODE_03C20D:    CLC                     ; $03:C20D: 18          ;
CODE_03C20E:    ADC #$40                ; $03:C20E: 69 40       ;
CODE_03C210:    STA $E4                 ; $03:C210: 85 E4       ;
CODE_03C212:    LDA $0EAC,x             ; $03:C212: BD AC 0E    ;
CODE_03C215:    STA $E5                 ; $03:C215: 85 E5       ;
CODE_03C217:    LDA $0EA7,x             ; $03:C217: BD A7 0E    ;
CODE_03C21A:    STA $E6                 ; $03:C21A: 85 E6       ;
CODE_03C21C:    REP #$20                ; $03:C21C: C2 20       ;
CODE_03C21E:    LDA $E5                 ; $03:C21E: A5 E5       ;
CODE_03C220:    SEC                     ; $03:C220: 38          ;
CODE_03C221:    SBC $42                 ; $03:C221: E5 42       ;
CODE_03C223:    PHA                     ; $03:C223: 48          ;
CODE_03C224:    LDA $0EB5               ; $03:C224: AD B5 0E    ;
CODE_03C227:    BMI CODE_03C230         ; $03:C227: 30 07       ;
CODE_03C229:    PLA                     ; $03:C229: 68          ;
CODE_03C22A:    CLC                     ; $03:C22A: 18          ;
CODE_03C22B:    ADC #$000C              ; $03:C22B: 69 0C 00    ;
CODE_03C22E:    BRA CODE_03C235         ; $03:C22E: 80 05       ;

CODE_03C230:    PLA                     ; $03:C230: 68          ;
CODE_03C231:    SEC                     ; $03:C231: 38          ;
CODE_03C232:    SBC #$000C              ; $03:C232: E9 0C 00    ;
CODE_03C235:    STA $E5                 ; $03:C235: 85 E5       ;
CODE_03C237:    SEP #$20                ; $03:C237: E2 20       ;
CODE_03C239:    PHY                     ; $03:C239: 5A          ;
CODE_03C23A:    LDY $0B46,x             ; $03:C23A: BC 46 0B    ;
CODE_03C23D:    LDA $E5                 ; $03:C23D: A5 E5       ;
CODE_03C23F:    STA $0900,y             ; $03:C23F: 99 00 09    ;
CODE_03C242:    LDA $0EB1,x             ; $03:C242: BD B1 0E    ;
CODE_03C245:    STA $0901,y             ; $03:C245: 99 01 09    ;
CODE_03C248:    LDA $E4                 ; $03:C248: A5 E4       ;
CODE_03C24A:    STA $0902,y             ; $03:C24A: 99 02 09    ;
CODE_03C24D:    LDA #$2D                ; $03:C24D: A9 2D       ;
CODE_03C24F:    STA $0903,y             ; $03:C24F: 99 03 09    ;
CODE_03C252:    LDA #$02                ; $03:C252: A9 02       ;
CODE_03C254:    STA $0D00,y             ; $03:C254: 99 00 0D    ;
CODE_03C257:    LDA $E6                 ; $03:C257: A5 E6       ;
CODE_03C259:    BEQ CODE_03C260         ; $03:C259: F0 05       ;
CODE_03C25B:    LDA #$03                ; $03:C25B: A9 03       ;
CODE_03C25D:    STA $0D00,y             ; $03:C25D: 99 00 0D    ;
CODE_03C260:    PLY                     ; $03:C260: 7A          ;
CODE_03C261:    RTS                     ; $03:C261: 60          ;

CODE_03C262:    STZ $0E9D,x             ; $03:C262: 9E 9D 0E    ;
CODE_03C265:    TXA                     ; $03:C265: 8A          ;
CODE_03C266:    ASL A                   ; $03:C266: 0A          ;
CODE_03C267:    ASL A                   ; $03:C267: 0A          ;
CODE_03C268:    ASL A                   ; $03:C268: 0A          ;
CODE_03C269:    STA $E8                 ; $03:C269: 85 E8       ;
CODE_03C26B:    ASL A                   ; $03:C26B: 0A          ;
CODE_03C26C:    CLC                     ; $03:C26C: 18          ;
CODE_03C26D:    ADC $E8                 ; $03:C26D: 65 E8       ;
CODE_03C26F:    PHX                     ; $03:C26F: DA          ;
CODE_03C270:    TAX                     ; $03:C270: AA          ;
CODE_03C271:    LDA #$F0                ; $03:C271: A9 F0       ;
CODE_03C273:    STA $0901,x             ; $03:C273: 9D 01 09    ;
CODE_03C276:    STZ $0D00,x             ; $03:C276: 9E 00 0D    ;
CODE_03C279:    PLX                     ; $03:C279: FA          ;
CODE_03C27A:    RTS                     ; $03:C27A: 60          ;

CODE_03C27B:    STA $0E9D,x             ; $03:C27B: 9D 9D 0E    ;
CODE_03C27E:    STZ $0EA2,x             ; $03:C27E: 9E A2 0E    ;
CODE_03C281:    LDA $021A,x             ; $03:C281: BD 1A 02    ;
CODE_03C284:    STA $0EAC,x             ; $03:C284: 9D AC 0E    ;
CODE_03C287:    LDA $79,x               ; $03:C287: B5 79       ;
CODE_03C289:    STA $0EA7,x             ; $03:C289: 9D A7 0E    ;
CODE_03C28C:    LDA $0238,x             ; $03:C28C: BD 38 02    ;
CODE_03C28F:    CLC                     ; $03:C28F: 18          ;
CODE_03C290:    ADC #$08                ; $03:C290: 69 08       ;
CODE_03C292:    STA $0EB1,x             ; $03:C292: 9D B1 0E    ;
CODE_03C295:    RTS                     ; $03:C295: 60          ;

CODE_03C296:    LDA $0E7F               ; $03:C296: AD 7F 0E    ;
CODE_03C299:    LSR A                   ; $03:C299: 4A          ;
CODE_03C29A:    BCC CODE_03C2EB         ; $03:C29A: 90 4F       ;
CODE_03C29C:    LDA $1201               ; $03:C29C: AD 01 12    ;
CODE_03C29F:    BMI CODE_03C2E1         ; $03:C29F: 30 40       ;
CODE_03C2A1:    LDA $1680               ; $03:C2A1: AD 80 16    ;
CODE_03C2A4:    BEQ CODE_03C2AB         ; $03:C2A4: F0 05       ;
CODE_03C2A6:    LDA $1201               ; $03:C2A6: AD 01 12    ;
CODE_03C2A9:    BEQ CODE_03C2B0         ; $03:C2A9: F0 05       ;
CODE_03C2AB:    DEC $1201               ; $03:C2AB: CE 01 12    ;
CODE_03C2AE:    BNE CODE_03C317         ; $03:C2AE: D0 67       ;
CODE_03C2B0:    LDA #$80                ; $03:C2B0: A9 80       ;
CODE_03C2B2:    STA $2100               ; $03:C2B2: 8D 00 21    ;
CODE_03C2B5:    STA $1201               ; $03:C2B5: 8D 01 12    ;
CODE_03C2B8:    STZ $420C               ; $03:C2B8: 9C 0C 42    ;
CODE_03C2BB:    STZ $1203               ; $03:C2BB: 9C 03 12    ;
CODE_03C2BE:    STZ $0B75               ; $03:C2BE: 9C 75 0B    ;
CODE_03C2C1:    STZ $1680               ; $03:C2C1: 9C 80 16    ;
CODE_03C2C4:    LDA $701FF2             ; $03:C2C4: AF F2 1F 70 ;
CODE_03C2C8:    BEQ CODE_03C2D7         ; $03:C2C8: F0 0D       ;
CODE_03C2CA:    LDA $0EC8               ; $03:C2CA: AD C8 0E    ;
CODE_03C2CD:    BNE CODE_03C2D3         ; $03:C2CD: D0 04       ;
CODE_03C2CF:    JML CODE_008139         ; $03:C2CF: 5C 39 81 00 ;

CODE_03C2D3:    JML CODE_0080DE         ; $03:C2D3: 5C DE 80 00 ;

CODE_03C2D7:    JSL CODE_048000         ; $03:C2D7: 22 00 80 04 ;
CODE_03C2DB:    JSR CODE_03C33B         ; $03:C2DB: 20 3B C3    ;Hide all OAM tiles
CODE_03C2DE:    JSR CODE_03C366         ; $03:C2DE: 20 66 C3    ;
CODE_03C2E1:    STZ $0E7F               ; $03:C2E1: 9C 7F 0E    ;
CODE_03C2E4:    LDA #$01                ; $03:C2E4: A9 01       ;
CODE_03C2E6:    STA $0774               ; $03:C2E6: 8D 74 07    ;
CODE_03C2E9:    BRA CODE_03C317         ; $03:C2E9: 80 2C       ;

CODE_03C2EB:    LDA $0E66               ; $03:C2EB: AD 66 0E    ;
CODE_03C2EE:    BNE CODE_03C2FB         ; $03:C2EE: D0 0B       ;
CODE_03C2F0:    LDA $0E                 ; $03:C2F0: A5 0E       ;
CODE_03C2F2:    BNE CODE_03C2FB         ; $03:C2F2: D0 07       ;
CODE_03C2F4:    LDA #$01                ; $03:C2F4: A9 01       ;
CODE_03C2F6:    STA $0E                 ; $03:C2F6: 85 0E       ;
CODE_03C2F8:    JSR CODE_03AD70         ; $03:C2F8: 20 70 AD    ;
CODE_03C2FB:    STZ $0E67               ; $03:C2FB: 9C 67 0E    ;
CODE_03C2FE:    LDA $1201               ; $03:C2FE: AD 01 12    ;
CODE_03C301:    CMP #$0F                ; $03:C301: C9 0F       ;
CODE_03C303:    BEQ CODE_03C30F         ; $03:C303: F0 0A       ;
CODE_03C305:    INC $1201               ; $03:C305: EE 01 12    ;
CODE_03C308:    LDA $1201               ; $03:C308: AD 01 12    ;
CODE_03C30B:    CMP #$0F                ; $03:C30B: C9 0F       ;
CODE_03C30D:    BNE CODE_03C317         ; $03:C30D: D0 08       ;
CODE_03C30F:    STZ $0E7F               ; $03:C30F: 9C 7F 0E    ;
CODE_03C312:    STZ $0774               ; $03:C312: 9C 74 07    ;
CODE_03C315:    STZ $0E                 ; $03:C315: 64 0E       ;
CODE_03C317:    LDA $0E4F               ; $03:C317: AD 4F 0E    ;\
CODE_03C31A:    BEQ CODE_03C33A         ; $03:C31A: F0 1E       ;/Skip if no pipe fadeout
CODE_03C31C:    JSR CODE_03C33B         ; $03:C31C: 20 3B C3    ;Hide all OAM tiles
CODE_03C31F:    LDA $1201               ; $03:C31F: AD 01 12    ;\ Load brightness
CODE_03C322:    EOR #$0F                ; $03:C322: 49 0F       ; |Inverse the last nibble
CODE_03C324:    ASL A                   ; $03:C324: 0A          ; |\<<4
CODE_03C325:    ASL A                   ; $03:C325: 0A          ; | |
CODE_03C326:    ASL A                   ; $03:C326: 0A          ; | |
CODE_03C327:    ASL A                   ; $03:C327: 0A          ; |/
CODE_03C328:    ORA #$0F                ; $03:C328: 09 0F       ; | Affect all the layers
CODE_03C32A:    STA $0E7E               ; $03:C32A: 8D 7E 0E    ;/Store into mosaic register
CODE_03C32D:    JSR CODE_03C354         ; $03:C32D: 20 54 C3    ;Also hide player's OAM tiles for good measure (even though they were hidden already)
CODE_03C330:    LDA $1201               ; $03:C330: AD 01 12    ;\
CODE_03C333:    CMP #$0F                ; $03:C333: C9 0F       ; |
CODE_03C335:    BNE CODE_03C33A         ; $03:C335: D0 03       ; | Clear pipe fading flag if brightness is maximum
CODE_03C337:    STZ $0E4F               ; $03:C337: 9C 4F 0E    ;/
CODE_03C33A:    RTS                     ; $03:C33A: 60          ;

CODE_03C33B:    PHX                     ; $03:C33B: DA          ;\
CODE_03C33C:    LDX #$00                ; $03:C33C: A2 00       ; |
CODE_03C33E:    LDA #$F0                ; $03:C33E: A9 F0       ; |
CODE_03C340:    STA $0801,x             ; $03:C340: 9D 01 08    ; |
CODE_03C343:    STA $0901,x             ; $03:C343: 9D 01 09    ; |
CODE_03C346:    STZ $0C00,x             ; $03:C346: 9E 00 0C    ; | Hides all OAM tiles by setting their Y position off-screen
CODE_03C349:    STZ $0D00,x             ; $03:C349: 9E 00 0D    ; | and also zeroing out something
CODE_03C34C:    INX                     ; $03:C34C: E8          ; |
CODE_03C34D:    INX                     ; $03:C34D: E8          ; |
CODE_03C34E:    INX                     ; $03:C34E: E8          ; |
CODE_03C34F:    INX                     ; $03:C34F: E8          ; |
CODE_03C350:    BNE CODE_03C340         ; $03:C350: D0 EE       ; |
CODE_03C352:    PLX                     ; $03:C352: FA          ; |
CODE_03C353:    RTS                     ; $03:C353: 60          ;/

CODE_03C354:    PHY                     ; $03:C354: 5A          ;\
CODE_03C355:    LDY #$D0                ; $03:C355: A0 D0       ; |
CODE_03C357:    LDA #$F0                ; $03:C357: A9 F0       ; |
CODE_03C359:    STA $0801,y             ; $03:C359: 99 01 08    ; |
CODE_03C35C:    INY                     ; $03:C35C: C8          ; | Hides player's OAM tiles by setting their Y position off-screen
CODE_03C35D:    INY                     ; $03:C35D: C8          ; |
CODE_03C35E:    INY                     ; $03:C35E: C8          ; |
CODE_03C35F:    INY                     ; $03:C35F: C8          ; |
CODE_03C360:    CPY #$F0                ; $03:C360: C0 F0       ; |
CODE_03C362:    BNE CODE_03C359         ; $03:C362: D0 F5       ; |
CODE_03C364:    PLY                     ; $03:C364: 7A          ; |
CODE_03C365:    RTS                     ; $03:C365: 60          ;/

CODE_03C366:    JSL CODE_04ED2E         ; $03:C366: 22 2E ED 04 ;
CODE_03C36A:    STZ $0BA5               ; $03:C36A: 9C A5 0B    ;
CODE_03C36D:    STZ $0F06               ; $03:C36D: 9C 06 0F    ;
CODE_03C370:    STZ $0ED1               ; $03:C370: 9C D1 0E    ;
CODE_03C373:    STZ $0E40               ; $03:C373: 9C 40 0E    ;
CODE_03C376:    STZ $0E41               ; $03:C376: 9C 41 0E    ;
CODE_03C379:    STZ $0E42               ; $03:C379: 9C 42 0E    ;
CODE_03C37C:    STZ $0EDC               ; $03:C37C: 9C DC 0E    ;
CODE_03C37F:    LDA $0E66               ; $03:C37F: AD 66 0E    ;
CODE_03C382:    BNE CODE_03C392         ; $03:C382: D0 0E       ;
CODE_03C384:    LDA $0237               ; $03:C384: AD 37 02    ;
CODE_03C387:    STA $03B8               ; $03:C387: 8D B8 03    ;
CODE_03C38A:    LDA $0219               ; $03:C38A: AD 19 02    ;
CODE_03C38D:    STA $03AD               ; $03:C38D: 8D AD 03    ;
CODE_03C390:    BRA CODE_03C395         ; $03:C390: 80 03       ;

CODE_03C392:    STZ $0E66               ; $03:C392: 9C 66 0E    ;
CODE_03C395:    STZ $0E                 ; $03:C395: 64 0E       ;
CODE_03C397:    RTS                     ; $03:C397: 60          ;

DATA_03C398:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Looks like some empty space.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;

CODE_03C3B0:    LDA $10,x               ; $03:C3B0: B5 10       ;
CODE_03C3B2:    PHA                     ; $03:C3B2: 48          ;
CODE_03C3B3:    ASL A                   ; $03:C3B3: 0A          ;
CODE_03C3B4:    BCS CODE_03C3C8         ; $03:C3B4: B0 12       ;
CODE_03C3B6:    PLA                     ; $03:C3B6: 68          ;
CODE_03C3B7:    BEQ CODE_03C3BC         ; $03:C3B7: F0 03       ;
CODE_03C3B9:    JMP CODE_03CCA8         ; $03:C3B9: 4C A8 CC    ;

CODE_03C3BC:    LDA $071F               ; $03:C3BC: AD 1F 07    ;
CODE_03C3BF:    AND #$07                ; $03:C3BF: 29 07       ;
CODE_03C3C1:    CMP #$07                ; $03:C3C1: C9 07       ;
CODE_03C3C3:    BEQ CODE_03C3D3         ; $03:C3C3: F0 0E       ;
CODE_03C3C5:    JMP CODE_03C43C         ; $03:C3C5: 4C 3C C4    ;

CODE_03C3C8:    PLA                     ; $03:C3C8: 68          ;
CODE_03C3C9:    AND #$0F                ; $03:C3C9: 29 0F       ;
CODE_03C3CB:    TAY                     ; $03:C3CB: A8          ;
CODE_03C3CC:    LDA $0010,y             ; $03:C3CC: B9 10 00    ;
CODE_03C3CF:    BNE CODE_03C3D3         ; $03:C3CF: D0 02       ;
CODE_03C3D1:    STA $10,x               ; $03:C3D1: 95 10       ;
CODE_03C3D3:    RTS                     ; $03:C3D3: 60          ;

DATA_03C3D4:    db $03,$03,$06,$06,$06,$06,$06,$06              ;
                db $07,$07,$07                                  ;

DATA_03C3DF:    db $05,$09,$04,$05,$06,$08,$09,$0A              ;
                db $07,$0B,$10                                  ;

DATA_03C3EA:    db $40,$B0,$B0,$80,$40,$40,$80,$40              ;
                db $F0,$F0,$F0                                  ;

CODE_03C3F5:    LDA $78                 ; $03:C3F5: A5 78       ;\
CODE_03C3F7:    SEC                     ; $03:C3F7: 38          ; |
CODE_03C3F8:    SBC #$04                ; $03:C3F8: E9 04       ; |Take the player back 4 pages
CODE_03C3FA:    STA $78                 ; $03:C3FA: 85 78       ;/
CODE_03C3FC:    LDA $0725               ; $03:C3FC: AD 25 07    ;\
CODE_03C3FF:    SEC                     ; $03:C3FF: 38          ; |Take the screen number back 4 pages
CODE_03C400:    SBC #$04                ; $03:C400: E9 04       ; |
CODE_03C402:    STA $0725               ; $03:C402: 8D 25 07    ;/
CODE_03C405:    LDA $071A               ; $03:C405: AD 1A 07    ;\
CODE_03C408:    SEC                     ; $03:C408: 38          ; |
CODE_03C409:    SBC #$04                ; $03:C409: E9 04       ; | Take coordinates of left side of screen back 4 pages
CODE_03C40B:    STA $071A               ; $03:C40B: 8D 1A 07    ;/
CODE_03C40E:    LDA $071B               ; $03:C40E: AD 1B 07    ;\
CODE_03C411:    SEC                     ; $03:C411: 38          ; |
CODE_03C412:    SBC #$04                ; $03:C412: E9 04       ; | Take coordinates of right sight of screen back 4 pages
CODE_03C414:    STA $071B               ; $03:C414: 8D 1B 07    ;/
CODE_03C417:    LDA $072A               ; $03:C417: AD 2A 07    ;\
CODE_03C41A:    SEC                     ; $03:C41A: 38          ; | Take screen number relative to page skips back 4 pages
CODE_03C41B:    SBC #$04                ; $03:C41B: E9 04       ; |
CODE_03C41D:    STA $072A               ; $03:C41D: 8D 2A 07    ;/
CODE_03C420:    LDA #$00                ; $03:C420: A9 00       ;
CODE_03C422:    STA $073B               ; $03:C422: 8D 3B 07    ;
CODE_03C425:    STA $072B               ; $03:C425: 8D 2B 07    ;
CODE_03C428:    STA $0739               ; $03:C428: 8D 39 07    ;Zero out 16-bit enemy data pointer index
CODE_03C42B:    STA $073A               ; $03:C42B: 8D 3A 07    ;Zero out page of the most recent sprite
CODE_03C42E:    PHX                     ; $03:C42E: DA          ;
CODE_03C42F:    TYX                     ; $03:C42F: BB          ;
CODE_03C430:    LDA.l DATA_04C000,x     ; $03:C430: BF 00 C0 04 ;
CODE_03C434:    STA $072C               ; $03:C434: 8D 2C 07    ;Set level object data pointer index according to 
CODE_03C437:    PLX                     ; $03:C437: FA          ;
CODE_03C438:    STZ $0EDB               ; $03:C438: 9C DB 0E    ;
CODE_03C43B:    RTS                     ; $03:C43B: 60          ;

CODE_03C43C:    LDA $0745               ; $03:C43C: AD 45 07    ;
CODE_03C43F:    BNE CODE_03C444         ; $03:C43F: D0 03       ;
CODE_03C441:    JMP CODE_03C4C7         ; $03:C441: 4C C7 C4    ;

CODE_03C444:    LDA $0726               ; $03:C444: AD 26 07    ;
CODE_03C447:    BNE CODE_03C4C7         ; $03:C447: D0 7E       ;
CODE_03C449:    LDY #$0B                ; $03:C449: A0 0B       ;
CODE_03C44B:    DEY                     ; $03:C44B: 88          ;
CODE_03C44C:    BMI CODE_03C4C7         ; $03:C44C: 30 79       ;
CODE_03C44E:    LDA $075F               ; $03:C44E: AD 5F 07    ;
CODE_03C451:    CMP DATA_03C3D4,y       ; $03:C451: D9 D4 C3    ;
CODE_03C454:    BNE CODE_03C44B         ; $03:C454: D0 F5       ;
CODE_03C456:    LDA $0725               ; $03:C456: AD 25 07    ;
CODE_03C459:    CMP DATA_03C3DF,y       ; $03:C459: D9 DF C3    ;
CODE_03C45C:    BNE CODE_03C44B         ; $03:C45C: D0 ED       ;
CODE_03C45E:    LDA $0237               ; $03:C45E: AD 37 02    ;
CODE_03C461:    CMP DATA_03C3EA,y       ; $03:C461: D9 EA C3    ;
CODE_03C464:    BNE CODE_03C4A2         ; $03:C464: D0 3C       ;
CODE_03C466:    LDA $28                 ; $03:C466: A5 28       ;
CODE_03C468:    CMP #$00                ; $03:C468: C9 00       ;
CODE_03C46A:    BNE CODE_03C4A2         ; $03:C46A: D0 36       ;
CODE_03C46C:    LDA $0EDB               ; $03:C46C: AD DB 0E    ;
CODE_03C46F:    BNE CODE_03C48F         ; $03:C46F: D0 1E       ;
CODE_03C471:    LDA #$29                ; $03:C471: A9 29       ;\
CODE_03C473:    STA $1603               ; $03:C473: 8D 03 16    ;/"Correct" sound
CODE_03C476:    LDA $075F               ; $03:C476: AD 5F 07    ;
CODE_03C479:    CMP #$06                ; $03:C479: C9 06       ;
CODE_03C47B:    BNE CODE_03C4BC         ; $03:C47B: D0 3F       ;
CODE_03C47D:    INC $06D9               ; $03:C47D: EE D9 06    ;
CODE_03C480:    BRA CODE_03C48F         ; $03:C480: 80 0D       ;

CODE_03C482:    LDA $0EDB               ; $03:C482: AD DB 0E    ;
CODE_03C485:    BNE CODE_03C48F         ; $03:C485: D0 08       ;
CODE_03C487:    LDA #$2A                ; $03:C487: A9 2A       ;\
CODE_03C489:    STA $1603               ; $03:C489: 8D 03 16    ;/"Incorrect" sound
CODE_03C48C:    STA $0EDB               ; $03:C48C: 8D DB 0E    ;
CODE_03C48F:    INC $06DA               ; $03:C48F: EE DA 06    ;
CODE_03C492:    LDA $06DA               ; $03:C492: AD DA 06    ;
CODE_03C495:    CMP #$03                ; $03:C495: C9 03       ;
CODE_03C497:    BNE CODE_03C4C4         ; $03:C497: D0 2B       ;
CODE_03C499:    LDA $06D9               ; $03:C499: AD D9 06    ;
CODE_03C49C:    CMP #$03                ; $03:C49C: C9 03       ;
CODE_03C49E:    BNE CODE_03C4B6         ; $03:C49E: D0 16       ;
CODE_03C4A0:    BRA CODE_03C4BC         ; $03:C4A0: 80 1A       ;Branch if all maze checkpoints taken correctly

CODE_03C4A2:    LDA $075F               ; $03:C4A2: AD 5F 07    ;\
CODE_03C4A5:    CMP #$06                ; $03:C4A5: C9 06       ; | Branch if world 7
CODE_03C4A7:    BEQ CODE_03C482         ; $03:C4A7: F0 D9       ;/
CODE_03C4A9:    LDA $0EDB               ; $03:C4A9: AD DB 0E    ;
CODE_03C4AC:    BNE CODE_03C4B6         ; $03:C4AC: D0 08       ;
CODE_03C4AE:    LDA #$2A                ; $03:C4AE: A9 2A       ;\
CODE_03C4B0:    STA $1603               ; $03:C4B0: 8D 03 16    ;/"Incorrect" sound
CODE_03C4B3:    STA $0EDB               ; $03:C4B3: 8D DB 0E    ;
CODE_03C4B6:    JSR CODE_03C3F5         ; $03:C4B6: 20 F5 C3    ;
CODE_03C4B9:    JSR CODE_03D56B         ; $03:C4B9: 20 6B D5    ;
CODE_03C4BC:    LDA #$00                ; $03:C4BC: A9 00       ;\
CODE_03C4BE:    STA $06DA               ; $03:C4BE: 8D DA 06    ; | Zero out correct checkpoints counter
CODE_03C4C1:    STA $06D9               ; $03:C4C1: 8D D9 06    ; | The total checkpoints counter
CODE_03C4C4:    STZ $0745               ; $03:C4C4: 9C 45 07    ;/ 
CODE_03C4C7:    LDA $06CD               ; $03:C4C7: AD CD 06    ;
CODE_03C4CA:    BEQ CODE_03C4DA         ; $03:C4CA: F0 0E       ;
CODE_03C4CC:    STA $1C,x               ; $03:C4CC: 95 1C       ;
CODE_03C4CE:    LDA #$01                ; $03:C4CE: A9 01       ;
CODE_03C4D0:    STA $10,x               ; $03:C4D0: 95 10       ;
CODE_03C4D2:    STZ $29,x               ; $03:C4D2: 74 29       ;
CODE_03C4D4:    STZ $06CD               ; $03:C4D4: 9C CD 06    ;
CODE_03C4D7:    JMP CODE_03C5CA         ; $03:C4D7: 4C CA C5    ;

;Process sprite data from $FD
CODE_03C4DA:    LDY $0739               ; $03:C4DA: AC 39 07    ;\ Get offset of enemy sprite data
CODE_03C4DD:    LDA [$FD],y             ; $03:C4DD: B7 FD       ; |Check first byte
CODE_03C4DF:    CMP #$FF                ; $03:C4DF: C9 FF       ; |If end of data, continue
CODE_03C4E1:    BNE CODE_03C4E6         ; $03:C4E1: D0 03       ;/
CODE_03C4E3:    JMP CODE_03C5B6         ; $03:C4E3: 4C B6 C5    ;else, jump

CODE_03C4E6:    AND #$0F                ; $03:C4E6: 29 0F       ;
CODE_03C4E8:    CMP #$0E                ; $03:C4E8: C9 0E       ;
CODE_03C4EA:    BEQ CODE_03C4FA         ; $03:C4EA: F0 0E       ;
CODE_03C4EC:    CPX #$08                ; $03:C4EC: E0 08       ;
CODE_03C4EE:    BCC CODE_03C4FA         ; $03:C4EE: 90 0A       ;
CODE_03C4F0:    INY                     ; $03:C4F0: C8          ;
CODE_03C4F1:    LDA [$FD],y             ; $03:C4F1: B7 FD       ;
CODE_03C4F3:    AND #$3F                ; $03:C4F3: 29 3F       ;
CODE_03C4F5:    CMP #$2E                ; $03:C4F5: C9 2E       ;
CODE_03C4F7:    BEQ CODE_03C4FA         ; $03:C4F7: F0 01       ;
CODE_03C4F9:    RTS                     ; $03:C4F9: 60          ;

CODE_03C4FA:    LDA $071D               ; $03:C4FA: AD 1D 07    ;
CODE_03C4FD:    CLC                     ; $03:C4FD: 18          ;
CODE_03C4FE:    ADC #$30                ; $03:C4FE: 69 30       ;
CODE_03C500:    AND #$F0                ; $03:C500: 29 F0       ;
CODE_03C502:    STA $07                 ; $03:C502: 85 07       ;
CODE_03C504:    LDA $071B               ; $03:C504: AD 1B 07    ;
CODE_03C507:    ADC #$00                ; $03:C507: 69 00       ;
CODE_03C509:    STA $06                 ; $03:C509: 85 06       ;
CODE_03C50B:    LDY $0739               ; $03:C50B: AC 39 07    ;
CODE_03C50E:    INY                     ; $03:C50E: C8          ;
CODE_03C50F:    LDA [$FD],y             ; $03:C50F: B7 FD       ;
CODE_03C511:    ASL A                   ; $03:C511: 0A          ;
CODE_03C512:    BCC CODE_03C51F         ; $03:C512: 90 0B       ;
CODE_03C514:    LDA $073B               ; $03:C514: AD 3B 07    ;
CODE_03C517:    BNE CODE_03C51F         ; $03:C517: D0 06       ;
CODE_03C519:    INC $073B               ; $03:C519: EE 3B 07    ;
CODE_03C51C:    INC $073A               ; $03:C51C: EE 3A 07    ;
CODE_03C51F:    DEY                     ; $03:C51F: 88          ;
CODE_03C520:    LDA [$FD],y             ; $03:C520: B7 FD       ;
CODE_03C522:    AND #$0F                ; $03:C522: 29 0F       ;
CODE_03C524:    CMP #$0F                ; $03:C524: C9 0F       ;
CODE_03C526:    BNE CODE_03C541         ; $03:C526: D0 19       ;
CODE_03C528:    LDA $073B               ; $03:C528: AD 3B 07    ;
CODE_03C52B:    BNE CODE_03C541         ; $03:C52B: D0 14       ;
CODE_03C52D:    INY                     ; $03:C52D: C8          ;
CODE_03C52E:    LDA [$FD],y             ; $03:C52E: B7 FD       ;
CODE_03C530:    AND #$3F                ; $03:C530: 29 3F       ;
CODE_03C532:    STA $073A               ; $03:C532: 8D 3A 07    ;
CODE_03C535:    INC $0739               ; $03:C535: EE 39 07    ;
CODE_03C538:    INC $0739               ; $03:C538: EE 39 07    ;
CODE_03C53B:    INC $073B               ; $03:C53B: EE 3B 07    ;
CODE_03C53E:    JMP CODE_03C43C         ; $03:C53E: 4C 3C C4    ;

CODE_03C541:    LDA $073A               ; $03:C541: AD 3A 07    ;
CODE_03C544:    STA $79,x               ; $03:C544: 95 79       ;
CODE_03C546:    LDA [$FD],y             ; $03:C546: B7 FD       ;
CODE_03C548:    AND #$F0                ; $03:C548: 29 F0       ;
CODE_03C54A:    STA $021A,x             ; $03:C54A: 9D 1A 02    ;
CODE_03C54D:    CMP $071D               ; $03:C54D: CD 1D 07    ;
CODE_03C550:    LDA $79,x               ; $03:C550: B5 79       ;
CODE_03C552:    SBC $071B               ; $03:C552: ED 1B 07    ;
CODE_03C555:    BCS CODE_03C562         ; $03:C555: B0 0B       ;
CODE_03C557:    LDA [$FD],y             ; $03:C557: B7 FD       ;
CODE_03C559:    AND #$0F                ; $03:C559: 29 0F       ;
CODE_03C55B:    CMP #$0E                ; $03:C55B: C9 0E       ;
CODE_03C55D:    BEQ CODE_03C5D3         ; $03:C55D: F0 74       ;
CODE_03C55F:    JMP CODE_03C5F1         ; $03:C55F: 4C F1 C5    ;

CODE_03C562:    LDA $07                 ; $03:C562: A5 07       ;
CODE_03C564:    CMP $021A,x             ; $03:C564: DD 1A 02    ;
CODE_03C567:    LDA $06                 ; $03:C567: A5 06       ;
CODE_03C569:    SBC $79,x               ; $03:C569: F5 79       ;
CODE_03C56B:    BCC CODE_03C5B6         ; $03:C56B: 90 49       ;
CODE_03C56D:    LDA #$01                ; $03:C56D: A9 01       ;
CODE_03C56F:    STA $BC,x               ; $03:C56F: 95 BC       ;
CODE_03C571:    LDA [$FD],y             ; $03:C571: B7 FD       ;
CODE_03C573:    ASL A                   ; $03:C573: 0A          ;
CODE_03C574:    ASL A                   ; $03:C574: 0A          ;
CODE_03C575:    ASL A                   ; $03:C575: 0A          ;
CODE_03C576:    ASL A                   ; $03:C576: 0A          ;
CODE_03C577:    STA $0238,x             ; $03:C577: 9D 38 02    ;
CODE_03C57A:    CMP #$E0                ; $03:C57A: C9 E0       ;
CODE_03C57C:    BEQ CODE_03C5D3         ; $03:C57C: F0 55       ;
CODE_03C57E:    INY                     ; $03:C57E: C8          ;
CODE_03C57F:    LDA [$FD],y             ; $03:C57F: B7 FD       ;
CODE_03C581:    AND #$40                ; $03:C581: 29 40       ;
CODE_03C583:    BEQ CODE_03C58A         ; $03:C583: F0 05       ;
CODE_03C585:    LDA $06CC               ; $03:C585: AD CC 06    ;
CODE_03C588:    BEQ CODE_03C5FF         ; $03:C588: F0 75       ;
CODE_03C58A:    LDA [$FD],y             ; $03:C58A: B7 FD       ;
CODE_03C58C:    AND #$3F                ; $03:C58C: 29 3F       ;
CODE_03C58E:    CMP #$37                ; $03:C58E: C9 37       ;
CODE_03C590:    BCC CODE_03C596         ; $03:C590: 90 04       ;
CODE_03C592:    CMP #$3F                ; $03:C592: C9 3F       ;
CODE_03C594:    BCC CODE_03C5D0         ; $03:C594: 90 3A       ;
CODE_03C596:    CMP #$06                ; $03:C596: C9 06       ;
CODE_03C598:    BNE CODE_03C5A1         ; $03:C598: D0 07       ;
CODE_03C59A:    LDY $076A               ; $03:C59A: AC 6A 07    ;"More difficult quest" flag
CODE_03C59D:    BEQ CODE_03C5A1         ; $03:C59D: F0 02       ;
CODE_03C59F:    LDA #$02                ; $03:C59F: A9 02       ;
CODE_03C5A1:    STA $1C,x               ; $03:C5A1: 95 1C       ;
CODE_03C5A3:    CMP #$2D                ; $03:C5A3: C9 2D       ;
CODE_03C5A5:    BNE CODE_03C5AA         ; $03:C5A5: D0 03       ;
CODE_03C5A7:    STZ $0F4C               ; $03:C5A7: 9C 4C 0F    ;
CODE_03C5AA:    LDA #$01                ; $03:C5AA: A9 01       ;
CODE_03C5AC:    STA $10,x               ; $03:C5AC: 95 10       ;
CODE_03C5AE:    JSR CODE_03C5CA         ; $03:C5AE: 20 CA C5    ;
CODE_03C5B1:    LDA $10,x               ; $03:C5B1: B5 10       ;
CODE_03C5B3:    BNE CODE_03C5FF         ; $03:C5B3: D0 4A       ;
CODE_03C5B5:    RTS                     ; $03:C5B5: 60          ;

CODE_03C5B6:    LDA $06CB               ; $03:C5B6: AD CB 06    ;
CODE_03C5B9:    BNE CODE_03C5C4         ; $03:C5B9: D0 09       ;
CODE_03C5BB:    LDA $0398               ; $03:C5BB: AD 98 03    ;
CODE_03C5BE:    CMP #$01                ; $03:C5BE: C9 01       ;
CODE_03C5C0:    BNE CODE_03C5CF         ; $03:C5C0: D0 0D       ;
CODE_03C5C2:    LDA #$00                ; $03:C5C2: A9 00       ;
CODE_03C5C4:    CPX #$09                ; $03:C5C4: E0 09       ;
CODE_03C5C6:    BEQ CODE_03C5CA         ; $03:C5C6: F0 02       ;
CODE_03C5C8:    STA $1C,x               ; $03:C5C8: 95 1C       ;
CODE_03C5CA:    STZ $29,x               ; $03:C5CA: 74 29       ;
CODE_03C5CC:    JSR CODE_03C60B         ; $03:C5CC: 20 0B C6    ;
CODE_03C5CF:    RTS                     ; $03:C5CF: 60          ;

CODE_03C5D0:    JMP CODE_03CB2B         ; $03:C5D0: 4C 2B CB    ;

CODE_03C5D3:    INY                     ; $03:C5D3: C8          ;
CODE_03C5D4:    INY                     ; $03:C5D4: C8          ;
CODE_03C5D5:    LDA [$FD],y             ; $03:C5D5: B7 FD       ;
CODE_03C5D7:    LSR A                   ; $03:C5D7: 4A          ;
CODE_03C5D8:    LSR A                   ; $03:C5D8: 4A          ;
CODE_03C5D9:    LSR A                   ; $03:C5D9: 4A          ;
CODE_03C5DA:    LSR A                   ; $03:C5DA: 4A          ;
CODE_03C5DB:    LSR A                   ; $03:C5DB: 4A          ;
CODE_03C5DC:    CMP $075F               ; $03:C5DC: CD 5F 07    ;
CODE_03C5DF:    BNE CODE_03C5EF         ; $03:C5DF: D0 0E       ;
CODE_03C5E1:    DEY                     ; $03:C5E1: 88          ;
CODE_03C5E2:    LDA [$FD],y             ; $03:C5E2: B7 FD       ;
CODE_03C5E4:    STA $0750               ; $03:C5E4: 8D 50 07    ;
CODE_03C5E7:    INY                     ; $03:C5E7: C8          ;
CODE_03C5E8:    LDA [$FD],y             ; $03:C5E8: B7 FD       ;
CODE_03C5EA:    AND #$1F                ; $03:C5EA: 29 1F       ;
CODE_03C5EC:    STA $0751               ; $03:C5EC: 8D 51 07    ;
CODE_03C5EF:    BRA CODE_03C5FC         ; $03:C5EF: 80 0B       ;

CODE_03C5F1:    LDY $0739               ; $03:C5F1: AC 39 07    ;
CODE_03C5F4:    LDA [$FD],y             ; $03:C5F4: B7 FD       ;
CODE_03C5F6:    AND #$0F                ; $03:C5F6: 29 0F       ;
CODE_03C5F8:    CMP #$0E                ; $03:C5F8: C9 0E       ;
CODE_03C5FA:    BNE CODE_03C5FF         ; $03:C5FA: D0 03       ;
CODE_03C5FC:    INC $0739               ; $03:C5FC: EE 39 07    ;
CODE_03C5FF:    INC $0739               ; $03:C5FF: EE 39 07    ;
CODE_03C602:    INC $0739               ; $03:C602: EE 39 07    ;
CODE_03C605:    STZ $073B               ; $03:C605: 9C 3B 07    ;
CODE_03C608:    LDX $9E                 ; $03:C608: A6 9E       ;
CODE_03C60A:    RTS                     ; $03:C60A: 60          ;

CODE_03C60B:    LDA $1C,x               ; $03:C60B: B5 1C       ;Load Sprite number into A
CODE_03C60D:    CMP #$15                ; $03:C60D: C9 15       ;\If it is #15 or greater
CODE_03C60F:    BCS CODE_03C620         ; $03:C60F: B0 0F       ; |Branch
CODE_03C611:    TAY                     ; $03:C611: A8          ;/Transfer A to Y
CODE_03C612:    LDA $0238,x             ; $03:C612: BD 38 02    ;\ no need for CLC since the CMP above did that.
CODE_03C615:    ADC #$08                ; $03:C615: 69 08       ; |sprites $1-$14: Add 8 pixels to the sprite Y position
CODE_03C617:    STA $0238,x             ; $03:C617: 9D 38 02    ;/
CODE_03C61A:    LDA #$01                ; $03:C61A: A9 01       ;\
CODE_03C61C:    STA $03D9,x             ; $03:C61C: 9D D9 03    ;/Set initialized flag?
CODE_03C61F:    TYA                     ; $03:C61F: 98          ;\
CODE_03C620:    ASL A                   ; $03:C620: 0A          ; |Sprite number*2, for index purposes
CODE_03C621:    TAY                     ; $03:C621: A8          ;/
CODE_03C622:    LDA PNTR_03C62F,y       ; $03:C622: B9 2F C6    ;\
CODE_03C625:    STA $04                 ; $03:C625: 85 04       ; |
CODE_03C627:    LDA PNTR_03C62F+1,y     ; $03:C627: B9 30 C6    ; |Load sprite pointers and jump to them
CODE_03C62A:    STA $05                 ; $03:C62A: 85 05       ; |for the INIT routine
CODE_03C62C:    JMP ($0004)             ; $03:C62C: 6C 04 00    ;/

;SMB1 SPRITE INIT POINTER TABLE

PNTR_03C62F:    dw CODE_03C6D3                                  ;00 - Green Koopa
                dw CODE_03C6D3                                  ;01 - Red Koopa (Falls from edges)
                dw CODE_03C6D3                                  ;02 - Buzzy Beetle
                dw CODE_03C6E3                                  ;03 - Red Koopa (Stays on edges)
                dw CODE_03C69D                                  ;04 - Green Koopa (Doesn't move)
                dw CODE_03C6ED                                  ;05 - Hammer Bros
                dw CODE_03C69E                                  ;06 - Goomba
                dw CODE_03C705                                  ;07 - Blooper
                dw CODE_03C72E                                  ;08 - Bullet Bill
                dw CODE_03C69D                                  ;09 - Yellow Paratroopa (Doesn't move)
                dw CODE_03C738                                  ;0A - Green Cheep-Cheep
                dw CODE_03C738                                  ;0B - Red Cheep-Cheep 
                dw CODE_03C6A4                                  ;0C - Podoboo
                dw CODE_03CB99                                  ;0D - piranha Plant
                dw CODE_03CBF2                                  ;0E - Green Paratroopa
                dw CODE_03C70B                                  ;0F - Red Vertical Flying Paratroopa
                dw CODE_03C700                                  ;10 - Green Horizontal Flying Paratroopa
                dw CODE_03C749                                  ;11 - Lakitu
                dw CODE_03CBB5                                  ;12 - Spiny
                dw CODE_03C69D                                  ;13 - Nothing?
                dw CODE_03CBB5                                  ;14 - Red Flying Cheep Cheep Generator
                dw CODE_03CBB5                                  ;15 - Bowser's Fire Generator
                dw CODE_03CBB5                                  ;16 - Firework Generator
                dw CODE_03CBB5                                  ;17 - Bullet Bill/Cheep Cheep Generator
                dw CODE_03CBD9                                  ;18 - Disable Lakitu Generator
                dw CODE_03C69D                                  ;19 - Nothing
                dw CODE_03C69D                                  ;1A - Nothing
                dw CODE_03C821                                  ;1B - Firebar (Clockwise)
                dw CODE_03C821                                  ;1C - Fast Firebar (Clockwise)
                dw CODE_03C821                                  ;1D - Firebar (Counter-Clockwise)
                dw CODE_03C821                                  ;1E - Fast Firebar (Counter-Clockwise)
                dw CODE_03C81E                                  ;1F - Long Firebar (Clockwise)
                dw CODE_03C69D                                  ;20 - Nothing? Related to the firebars above?
                dw CODE_03C69D                                  ;21 - Nothing? Related to the firebars above?
                dw CODE_03C69D                                  ;22 - Nothing? Related to the firebars above?
                dw CODE_03C69D                                  ;23 - Nothing?
                dw CODE_03CC00                                  ;24 - Balance Lift
                dw CODE_03CC35                                  ;25 - Lift (Up then down)
                dw CODE_03CC63                                  ;26 - Lift (Up)
                dw CODE_03CC69                                  ;27 - Lift (Down)
                dw CODE_03CC2E                                  ;28 - Lift (Left then right and so on)
                dw CODE_03CC26                                  ;29 - Lift (Fall)
                dw CODE_03CC2E                                  ;2A - Lift (Right)
                dw CODE_03CC6F                                  ;2B - Short Lift (Up)
                dw CODE_03CC7B                                  ;2C - Short Lift (Down)
                dw CODE_03C918                                  ;2D - Bowser
                dw CODE_03BD9B                                  ;2E - Powerup Object
                dw CODE_03B9FD                                  ;2F - Vine
                dw CODE_03C69D                                  ;30 - Flagpole
                dw CODE_03C69D                                  ;31 - Star Flag
                dw CODE_03C69D                                  ;32 - Springboard
                dw CODE_03C69D                                  ;33 - Bullet Bill (Just shot)
                dw CODE_03C69D                                  ;34 - Warp Zone
                dw CODE_03C6C0                                  ;35 - Toad (World 1-7), Princess (World 8)
                dw CODE_03CCA7                                  ;36 - ??? what is this i dont even?

CODE_03C69D:    RTS                     ; $03:C69D: 60          ;

CODE_03C69E:    JSR CODE_03C6D3         ; $03:C69E: 20 D3 C6    ;
CODE_03C6A1:    JMP CODE_03C707         ; $03:C6A1: 4C 07 C7    ;

CODE_03C6A4:    LDA #$D0                ; $03:C6A4: A9 D0       ;\Podoboo init
CODE_03C6A6:    STA $0238,x             ; $03:C6A6: 9D 38 02    ;/Set Ypos to bottom of the screen
CODE_03C6A9:    LDA #$01                ; $03:C6A9: A9 01       ;
CODE_03C6AB:    STA $BC,x               ; $03:C6AB: 95 BC       ;
CODE_03C6AD:    STA $07A2,x             ; $03:C6AD: 9D A2 07    ;
CODE_03C6B0:    STZ $29,x               ; $03:C6B0: 74 29       ;
CODE_03C6B2:    STA $0B00,x             ; $03:C6B2: 9D 00 0B    ;
CODE_03C6B5:    STZ $0B09,x             ; $03:C6B5: 9E 09 0B    ;Reset some timer
CODE_03C6B8:    LDA #$27                ; $03:C6B8: A9 27       ;\Play podoboo sound
CODE_03C6BA:    STA $1603               ; $03:C6BA: 8D 03 16    ;/
CODE_03C6BD:    JMP CODE_03C707         ; $03:C6BD: 4C 07 C7    ;

CODE_03C6C0:    LDA $075F               ; $03:C6C0: AD 5F 07    ;\INIT routine of Toad/Peach. Load current world
CODE_03C6C3:    CMP #$07                ; $03:C6C3: C9 07       ; |If you are NOT in world 8
CODE_03C6C5:    BNE CODE_03C6CD         ; $03:C6C5: D0 06       ; |Set Ypos of sprite to $B8 (floor)
CODE_03C6C7:    LDA #$70                ; $03:C6C7: A9 70       ;\|Otherwise, set Ypos to $70 (inside cage)
CODE_03C6C9:    STA $0238,x             ; $03:C6C9: 9D 38 02    ;/
CODE_03C6CC:    RTS                     ; $03:C6CC: 60          ;Return

CODE_03C6CD:    LDA #$B8                ; $03:C6CD: A9 B8       ;\Set Ypos of sprite to $B8
CODE_03C6CF:    BRA CODE_03C6C9         ; $03:C6CF: 80 F8       ;/

DATA_03C6D1:    db $F8,$F4                                      ;Sprite initial xspeed. Format: Normal difficulty, hard difficulty

CODE_03C6D3:    LDY #$01                ; $03:C6D3: A0 01       ;\
CODE_03C6D5:    LDA $076A               ; $03:C6D5: AD 6A 07    ; |INIT routine for most walking sprites
CODE_03C6D8:    BNE CODE_03C6DB         ; $03:C6D8: D0 01       ; |Set sprite initial Xspeed depending on difficulty
CODE_03C6DA:    DEY                     ; $03:C6DA: 88          ; |
CODE_03C6DB:    LDA DATA_03C6D1,y       ; $03:C6DB: B9 D1 C6    ; |
CODE_03C6DE:    STA $5E,x               ; $03:C6DE: 95 5E       ;/
CODE_03C6E0:    JMP CODE_03C71D         ; $03:C6E0: 4C 1D C7    ;

CODE_03C6E3:    JSR CODE_03C6D3         ; $03:C6E3: 20 D3 C6    ;
CODE_03C6E6:    LDA #$01                ; $03:C6E6: A9 01       ;
CODE_03C6E8:    STA $29,x               ; $03:C6E8: 95 29       ;
CODE_03C6EA:    RTS                     ; $03:C6EA: 60          ;

DATA_03C6EB:    db $80,$50                                      ;

CODE_03C6ED:    STZ $03A2,x             ; $03:C6ED: 9E A2 03    ;
CODE_03C6F0:    STZ $5E,x               ; $03:C6F0: 74 5E       ;
CODE_03C6F2:    LDY $06CC               ; $03:C6F2: AC CC 06    ;
CODE_03C6F5:    LDA DATA_03C6EB,y       ; $03:C6F5: B9 EB C6    ;
CODE_03C6F8:    STA $07A2,x             ; $03:C6F8: 9D A2 07    ;
CODE_03C6FB:    LDA #$0B                ; $03:C6FB: A9 0B       ;
CODE_03C6FD:    JMP CODE_03C71F         ; $03:C6FD: 4C 1F C7    ;

CODE_03C700:    LDA #$00                ; $03:C700: A9 00       ;
CODE_03C702:    JMP CODE_03C6DE         ; $03:C702: 4C DE C6    ;

CODE_03C705:    STZ $5E,x               ; $03:C705: 74 5E       ;
CODE_03C707:    LDA #$09                ; $03:C707: A9 09       ;
CODE_03C709:    BNE CODE_03C71F         ; $03:C709: D0 14       ;
CODE_03C70B:    LDY #$30                ; $03:C70B: A0 30       ;
CODE_03C70D:    LDA $0238,x             ; $03:C70D: BD 38 02    ;
CODE_03C710:    STA $0402,x             ; $03:C710: 9D 02 04    ;
CODE_03C713:    BPL CODE_03C717         ; $03:C713: 10 02       ;
CODE_03C715:    LDY #$E0                ; $03:C715: A0 E0       ;
CODE_03C717:    TYA                     ; $03:C717: 98          ;
CODE_03C718:    ADC $0238,x             ; $03:C718: 7D 38 02    ;
CODE_03C71B:    STA $5E,x               ; $03:C71B: 95 5E       ;
CODE_03C71D:    LDA #$03                ; $03:C71D: A9 03       ;
CODE_03C71F:    STA $0490,x             ; $03:C71F: 9D 90 04    ;
CODE_03C722:    LDA #$02                ; $03:C722: A9 02       ;\ Set sprite direction to left
CODE_03C724:    STA $47,x               ; $03:C724: 95 47       ;/
CODE_03C726:    LDA #$00                ; $03:C726: A9 00       ;\ Set sprite vertical speed to 0
CODE_03C728:    STA $A1,x               ; $03:C728: 95 A1       ; |
CODE_03C72A:    STA $043D,x             ; $03:C72A: 9D 3D 04    ;Set ??? to 0? Related to sprite falling and other movement-related speed.
CODE_03C72D:    RTS                     ; $03:C72D: 60          ;

CODE_03C72E:    LDA #$02                ; $03:C72E: A9 02       ;\INIT routine of bullet bill
CODE_03C730:    STA $47,x               ; $03:C730: 95 47       ;/Set direction of sprite to left
CODE_03C732:    LDA #$09                ; $03:C732: A9 09       ;
CODE_03C734:    STA $0490,x             ; $03:C734: 9D 90 04    ;
CODE_03C737:    RTS                     ; $03:C737: 60          ;

CODE_03C738:    JSR CODE_03C707         ; $03:C738: 20 07 C7    ;
CODE_03C73B:    LDA $07B7,x             ; $03:C73B: BD B7 07    ;
CODE_03C73E:    AND #$10                ; $03:C73E: 29 10       ;
CODE_03C740:    STA $5E,x               ; $03:C740: 95 5E       ;
CODE_03C742:    LDA $0238,x             ; $03:C742: BD 38 02    ;
CODE_03C745:    STA $043D,x             ; $03:C745: 9D 3D 04    ;
CODE_03C748:    RTS                     ; $03:C748: 60          ;

CODE_03C749:    LDA $06CB               ; $03:C749: AD CB 06    ;
CODE_03C74C:    BNE CODE_03C759         ; $03:C74C: D0 0B       ;
CODE_03C74E:    LDA #$00                ; $03:C74E: A9 00       ;
CODE_03C750:    STA $06D1               ; $03:C750: 8D D1 06    ;
CODE_03C753:    JSR CODE_03C700         ; $03:C753: 20 00 C7    ;
CODE_03C756:    JMP CODE_03CBFA         ; $03:C756: 4C FA CB    ;

CODE_03C759:    JMP CODE_03CDE2         ; $03:C759: 4C E2 CD    ; Erase sprite

DATA_03C75C:    db $26,$2C,$32,$38,$20,$22,$24,$26              ;
                db $13,$14,$15,$16                              ;

CODE_03C768:    LDA $079B               ; $03:C768: AD 9B 07    ;
CODE_03C76B:    BNE CODE_03C7A7         ; $03:C76B: D0 3A       ;
CODE_03C76D:    CPX #$09                ; $03:C76D: E0 09       ;
CODE_03C76F:    BCS CODE_03C7A7         ; $03:C76F: B0 36       ;
CODE_03C771:    LDA #$80                ; $03:C771: A9 80       ;
CODE_03C773:    STA $079B               ; $03:C773: 8D 9B 07    ;
CODE_03C776:    LDY #$08                ; $03:C776: A0 08       ;
CODE_03C778:    LDA $001C,y             ; $03:C778: B9 1C 00    ;
CODE_03C77B:    CMP #$11                ; $03:C77B: C9 11       ;
CODE_03C77D:    BEQ CODE_03C7A8         ; $03:C77D: F0 29       ;
CODE_03C77F:    DEY                     ; $03:C77F: 88          ;
CODE_03C780:    BPL CODE_03C778         ; $03:C780: 10 F6       ;
CODE_03C782:    INC $06D1               ; $03:C782: EE D1 06    ;
CODE_03C785:    LDA $06D1               ; $03:C785: AD D1 06    ;
CODE_03C788:    CMP #$07                ; $03:C788: C9 07       ;
CODE_03C78A:    BCC CODE_03C7A7         ; $03:C78A: 90 1B       ;
CODE_03C78C:    LDX #$08                ; $03:C78C: A2 08       ;
CODE_03C78E:    LDA $10,x               ; $03:C78E: B5 10       ;
CODE_03C790:    BEQ CODE_03C797         ; $03:C790: F0 05       ;
CODE_03C792:    DEX                     ; $03:C792: CA          ;
CODE_03C793:    BPL CODE_03C78E         ; $03:C793: 10 F9       ;
CODE_03C795:    BMI CODE_03C7A5         ; $03:C795: 30 0E       ;
CODE_03C797:    STZ $29,x               ; $03:C797: 74 29       ;
CODE_03C799:    LDA #$11                ; $03:C799: A9 11       ;\
CODE_03C79B:    STA $1C,x               ; $03:C79B: 95 1C       ;/Sprite to generate: Lakitu
CODE_03C79D:    JSR CODE_03C74E         ; $03:C79D: 20 4E C7    ;
CODE_03C7A0:    LDA #$20                ; $03:C7A0: A9 20       ;
CODE_03C7A2:    JSR CODE_03C9E8         ; $03:C7A2: 20 E8 C9    ;
CODE_03C7A5:    LDX $9E                 ; $03:C7A5: A6 9E       ;
CODE_03C7A7:    RTS                     ; $03:C7A7: 60          ;

CODE_03C7A8:    LDA $0237               ; $03:C7A8: AD 37 02    ;
CODE_03C7AB:    CMP #$2C                ; $03:C7AB: C9 2C       ;
CODE_03C7AD:    BCC CODE_03C7A7         ; $03:C7AD: 90 F8       ;
CODE_03C7AF:    LDA $0029,y             ; $03:C7AF: B9 29 00    ;
CODE_03C7B2:    BNE CODE_03C7A7         ; $03:C7B2: D0 F3       ;
CODE_03C7B4:    LDA $0079,y             ; $03:C7B4: B9 79 00    ;
CODE_03C7B7:    STA $79,x               ; $03:C7B7: 95 79       ;
CODE_03C7B9:    LDA $021A,y             ; $03:C7B9: B9 1A 02    ;
CODE_03C7BC:    STA $021A,x             ; $03:C7BC: 9D 1A 02    ;
CODE_03C7BF:    LDA #$01                ; $03:C7BF: A9 01       ;
CODE_03C7C1:    STA $BC,x               ; $03:C7C1: 95 BC       ;
CODE_03C7C3:    LDA $0238,y             ; $03:C7C3: B9 38 02    ;
CODE_03C7C6:    SEC                     ; $03:C7C6: 38          ;
CODE_03C7C7:    SBC #$08                ; $03:C7C7: E9 08       ;
CODE_03C7C9:    STA $0238,x             ; $03:C7C9: 9D 38 02    ;
CODE_03C7CC:    LDA $07B7,x             ; $03:C7CC: BD B7 07    ;
CODE_03C7CF:    AND #$03                ; $03:C7CF: 29 03       ;
CODE_03C7D1:    TAY                     ; $03:C7D1: A8          ;
CODE_03C7D2:    LDX #$02                ; $03:C7D2: A2 02       ;
CODE_03C7D4:    LDA DATA_03C75C,y       ; $03:C7D4: B9 5C C7    ;
CODE_03C7D7:    STA $01,x               ; $03:C7D7: 95 01       ;
CODE_03C7D9:    INY                     ; $03:C7D9: C8          ;
CODE_03C7DA:    INY                     ; $03:C7DA: C8          ;
CODE_03C7DB:    INY                     ; $03:C7DB: C8          ;
CODE_03C7DC:    INY                     ; $03:C7DC: C8          ;
CODE_03C7DD:    DEX                     ; $03:C7DD: CA          ;
CODE_03C7DE:    BPL CODE_03C7D4         ; $03:C7DE: 10 F4       ;
CODE_03C7E0:    LDX $9E                 ; $03:C7E0: A6 9E       ;
CODE_03C7E2:    JSR CODE_03D420         ; $03:C7E2: 20 20 D4    ;
CODE_03C7E5:    LDY $5D                 ; $03:C7E5: A4 5D       ;
CODE_03C7E7:    CPY #$08                ; $03:C7E7: C0 08       ;
CODE_03C7E9:    BCS CODE_03C7F9         ; $03:C7E9: B0 0E       ;
CODE_03C7EB:    TAY                     ; $03:C7EB: A8          ;
CODE_03C7EC:    LDA $07B8,x             ; $03:C7EC: BD B8 07    ;
CODE_03C7EF:    AND #$03                ; $03:C7EF: 29 03       ;
CODE_03C7F1:    BEQ CODE_03C7F8         ; $03:C7F1: F0 05       ;
CODE_03C7F3:    TYA                     ; $03:C7F3: 98          ;
CODE_03C7F4:    EOR #$FF                ; $03:C7F4: 49 FF       ;
CODE_03C7F6:    TAY                     ; $03:C7F6: A8          ;
CODE_03C7F7:    INY                     ; $03:C7F7: C8          ;
CODE_03C7F8:    TYA                     ; $03:C7F8: 98          ;
CODE_03C7F9:    JSR CODE_03C707         ; $03:C7F9: 20 07 C7    ;
CODE_03C7FC:    LDY #$02                ; $03:C7FC: A0 02       ;
CODE_03C7FE:    STA $5E,x               ; $03:C7FE: 95 5E       ;
CODE_03C800:    CMP #$00                ; $03:C800: C9 00       ;
CODE_03C802:    BMI CODE_03C805         ; $03:C802: 30 01       ;
CODE_03C804:    DEY                     ; $03:C804: 88          ;
CODE_03C805:    STY $47,x               ; $03:C805: 94 47       ;
CODE_03C807:    LDA #$FD                ; $03:C807: A9 FD       ;
CODE_03C809:    STA $A1,x               ; $03:C809: 95 A1       ;
CODE_03C80B:    LDA #$01                ; $03:C80B: A9 01       ;
CODE_03C80D:    STA $10,x               ; $03:C80D: 95 10       ;
CODE_03C80F:    LDA #$05                ; $03:C80F: A9 05       ;
CODE_03C811:    STA $29,x               ; $03:C811: 95 29       ;
CODE_03C813:    RTS                     ; $03:C813: 60          ;

DATA_03C814:    db $28,$38,$28,$38,$28                          ;Castle firebar rotation speed data. Format:
                                              ;Firebar (clock), Fast Firebar (clock)
                                              ;Firebar (C-Clock), Fast Firebar (C-Clock)
                                              ;Long Firebar (Clock)

DATA_03C819:    db $00,$00,$10,$10,$00                          ;When bit 4 is set, the firebar will rotate C-Clockwise
                                              ;Same format as above

;Firebar
CODE_03C81E:    JSR CODE_03C946         ; $03:C81E: 20 46 C9    ;Find a free sprite slot and place the sprite in the level.
CODE_03C821:    STZ $5E,x               ; $03:C821: 74 5E       ;No sprite horizontal speed.
CODE_03C823:    LDA $1C,x               ; $03:C823: B5 1C       ;\Load sprite number
CODE_03C825:    SEC                     ; $03:C825: 38          ; |Subtract $1B from it so we get index to 5 fire types
CODE_03C826:    SBC #$1B                ; $03:C826: E9 1B       ; |Prepare for indexing
CODE_03C828:    TAY                     ; $03:C828: A8          ;/
CODE_03C829:    LDA DATA_03C814,y       ; $03:C829: B9 14 C8    ;\Get firebar rotation speed
CODE_03C82C:    STA $0388,x             ; $03:C82C: 9D 88 03    ;/Store in spinning speed of firebars
CODE_03C82F:    LDA DATA_03C819,y       ; $03:C82F: B9 19 C8    ;\Get firebar rotation direction...
CODE_03C832:    STA $0203,x             ; $03:C832: 9D 03 02    ;/
CODE_03C835:    LDA $0238,x             ; $03:C835: BD 38 02    ;\
CODE_03C838:    CLC                     ; $03:C838: 18          ; |Sprite Ypos is 4px higher
CODE_03C839:    ADC #$04                ; $03:C839: 69 04       ; |So it will become centered in 1 16x16 block
CODE_03C83B:    STA $0238,x             ; $03:C83B: 9D 38 02    ;/
CODE_03C83E:    LDA $021A,x             ; $03:C83E: BD 1A 02    ;\
CODE_03C841:    CLC                     ; $03:C841: 18          ; |Sprite Xpos is 4px more to the right
CODE_03C842:    ADC #$04                ; $03:C842: 69 04       ; |So it will become centered in 1 16x16 block
CODE_03C844:    STA $021A,x             ; $03:C844: 9D 1A 02    ;/
CODE_03C847:    LDA $79,x               ; $03:C847: B5 79       ;\
CODE_03C849:    ADC #$00                ; $03:C849: 69 00       ; |Handle page boundary stuff or whatever.
CODE_03C84B:    STA $79,x               ; $03:C84B: 95 79       ;/
CODE_03C84D:    JMP CODE_03CBFA         ; $03:C84D: 4C FA CB    ;

DATA_03C850:    db $80,$30,$40,$80,$30,$50,$50,$70              ;
                db $20,$40,$80,$A0,$70,$40,$90,$68              ;

DATA_03C860:    db $0E,$05,$06,$0E,$1C,$20,$10,$0C              ;
                db $1E,$22,$18,$14                              ;

DATA_03C86C:    db $10,$60,$20,$48                              ;

CODE_03C870:    LDA $079B               ; $03:C870: AD 9B 07    ;
CODE_03C873:    BNE CODE_03C813         ; $03:C873: D0 9E       ;
CODE_03C875:    JSR CODE_03C707         ; $03:C875: 20 07 C7    ;
CODE_03C878:    LDA $07B8,x             ; $03:C878: BD B8 07    ;
CODE_03C87B:    AND #$03                ; $03:C87B: 29 03       ;
CODE_03C87D:    TAY                     ; $03:C87D: A8          ;
CODE_03C87E:    LDA DATA_03C86C,y       ; $03:C87E: B9 6C C8    ;
CODE_03C881:    STA $079B               ; $03:C881: 8D 9B 07    ;
CODE_03C884:    LDY #$03                ; $03:C884: A0 03       ;
CODE_03C886:    LDA $06CC               ; $03:C886: AD CC 06    ;
CODE_03C889:    BEQ CODE_03C88C         ; $03:C889: F0 01       ;
CODE_03C88B:    INY                     ; $03:C88B: C8          ;
CODE_03C88C:    STY $00                 ; $03:C88C: 84 00       ;
CODE_03C88E:    CPX $00                 ; $03:C88E: E4 00       ;
CODE_03C890:    BCC CODE_03C895         ; $03:C890: 90 03       ;
CODE_03C892:    JMP CODE_03C813         ; $03:C892: 4C 13 C8    ;

CODE_03C895:    LDA $07B7,x             ; $03:C895: BD B7 07    ;
CODE_03C898:    AND #$03                ; $03:C898: 29 03       ;
CODE_03C89A:    STA $00                 ; $03:C89A: 85 00       ;
CODE_03C89C:    STA $01                 ; $03:C89C: 85 01       ;
CODE_03C89E:    LDA #$FB                ; $03:C89E: A9 FB       ;
CODE_03C8A0:    STA $A1,x               ; $03:C8A0: 95 A1       ;
CODE_03C8A2:    LDA #$00                ; $03:C8A2: A9 00       ;
CODE_03C8A4:    LDY $5D                 ; $03:C8A4: A4 5D       ;
CODE_03C8A6:    BEQ CODE_03C8AF         ; $03:C8A6: F0 07       ;
CODE_03C8A8:    LDA #$04                ; $03:C8A8: A9 04       ;
CODE_03C8AA:    CPY #$19                ; $03:C8AA: C0 19       ;
CODE_03C8AC:    BCC CODE_03C8AF         ; $03:C8AC: 90 01       ;
CODE_03C8AE:    ASL A                   ; $03:C8AE: 0A          ;
CODE_03C8AF:    PHA                     ; $03:C8AF: 48          ;
CODE_03C8B0:    CLC                     ; $03:C8B0: 18          ;
CODE_03C8B1:    ADC $00                 ; $03:C8B1: 65 00       ;
CODE_03C8B3:    STA $00                 ; $03:C8B3: 85 00       ;
CODE_03C8B5:    LDA $07B8,x             ; $03:C8B5: BD B8 07    ;
CODE_03C8B8:    AND #$03                ; $03:C8B8: 29 03       ;
CODE_03C8BA:    BEQ CODE_03C8C3         ; $03:C8BA: F0 07       ;
CODE_03C8BC:    LDA $07B9,x             ; $03:C8BC: BD B9 07    ;
CODE_03C8BF:    AND #$0F                ; $03:C8BF: 29 0F       ;
CODE_03C8C1:    STA $00                 ; $03:C8C1: 85 00       ;
CODE_03C8C3:    PLA                     ; $03:C8C3: 68          ;
CODE_03C8C4:    CLC                     ; $03:C8C4: 18          ;
CODE_03C8C5:    ADC $01                 ; $03:C8C5: 65 01       ;
CODE_03C8C7:    TAY                     ; $03:C8C7: A8          ;
CODE_03C8C8:    LDA DATA_03C860,y       ; $03:C8C8: B9 60 C8    ;
CODE_03C8CB:    STA $5E,x               ; $03:C8CB: 95 5E       ;
CODE_03C8CD:    LDA #$01                ; $03:C8CD: A9 01       ;
CODE_03C8CF:    STA $47,x               ; $03:C8CF: 95 47       ;
CODE_03C8D1:    LDA $5D                 ; $03:C8D1: A5 5D       ;
CODE_03C8D3:    BNE CODE_03C8E7         ; $03:C8D3: D0 12       ;
CODE_03C8D5:    LDY $00                 ; $03:C8D5: A4 00       ;
CODE_03C8D7:    TYA                     ; $03:C8D7: 98          ;
CODE_03C8D8:    AND #$02                ; $03:C8D8: 29 02       ;
CODE_03C8DA:    BEQ CODE_03C8E7         ; $03:C8DA: F0 0B       ;
CODE_03C8DC:    LDA $5E,x               ; $03:C8DC: B5 5E       ;
CODE_03C8DE:    EOR #$FF                ; $03:C8DE: 49 FF       ;
CODE_03C8E0:    CLC                     ; $03:C8E0: 18          ;
CODE_03C8E1:    ADC #$01                ; $03:C8E1: 69 01       ;
CODE_03C8E3:    STA $5E,x               ; $03:C8E3: 95 5E       ;
CODE_03C8E5:    INC $47,x               ; $03:C8E5: F6 47       ;
CODE_03C8E7:    TYA                     ; $03:C8E7: 98          ;
CODE_03C8E8:    AND #$02                ; $03:C8E8: 29 02       ;
CODE_03C8EA:    BEQ CODE_03C8FC         ; $03:C8EA: F0 10       ;
CODE_03C8EC:    LDA $0219               ; $03:C8EC: AD 19 02    ;
CODE_03C8EF:    CLC                     ; $03:C8EF: 18          ;
CODE_03C8F0:    ADC DATA_03C850,y       ; $03:C8F0: 79 50 C8    ;
CODE_03C8F3:    STA $021A,x             ; $03:C8F3: 9D 1A 02    ;
CODE_03C8F6:    LDA $78                 ; $03:C8F6: A5 78       ;
CODE_03C8F8:    ADC #$00                ; $03:C8F8: 69 00       ;
CODE_03C8FA:    BRA CODE_03C90A         ; $03:C8FA: 80 0E       ;

CODE_03C8FC:    LDA $0219               ; $03:C8FC: AD 19 02    ;
CODE_03C8FF:    SEC                     ; $03:C8FF: 38          ;
CODE_03C900:    SBC DATA_03C850,y       ; $03:C900: F9 50 C8    ;
CODE_03C903:    STA $021A,x             ; $03:C903: 9D 1A 02    ;
CODE_03C906:    LDA $78                 ; $03:C906: A5 78       ;
CODE_03C908:    SBC #$00                ; $03:C908: E9 00       ;
CODE_03C90A:    STA $79,x               ; $03:C90A: 95 79       ;
CODE_03C90C:    LDA #$01                ; $03:C90C: A9 01       ;
CODE_03C90E:    STA $10,x               ; $03:C90E: 95 10       ;
CODE_03C910:    STA $BC,x               ; $03:C910: 95 BC       ;
CODE_03C912:    LDA #$F8                ; $03:C912: A9 F8       ;
CODE_03C914:    STA $0238,x             ; $03:C914: 9D 38 02    ;
CODE_03C917:    RTS                     ; $03:C917: 60          ;

CODE_03C918:    JSR CODE_03C946         ; $03:C918: 20 46 C9    ;Find a free sprite slot and place the sprite in the level.
CODE_03C91B:    STX $0368               ; $03:C91B: 8E 68 03    ;
CODE_03C91E:    STZ $0363               ; $03:C91E: 9C 63 03    ;
CODE_03C921:    STZ $0369               ; $03:C921: 9C 69 03    ;
CODE_03C924:    LDA $021A,x             ; $03:C924: BD 1A 02    ;
CODE_03C927:    STA $0366               ; $03:C927: 8D 66 03    ;
CODE_03C92A:    LDA #$DF                ; $03:C92A: A9 DF       ;
CODE_03C92C:    STA $079C               ; $03:C92C: 8D 9C 07    ;
CODE_03C92F:    STA $47,x               ; $03:C92F: 95 47       ;
CODE_03C931:    LDA #$20                ; $03:C931: A9 20       ;
CODE_03C933:    STA $0364               ; $03:C933: 8D 64 03    ;
CODE_03C936:    STA $0792,x             ; $03:C936: 9D 92 07    ;
CODE_03C939:    STA $0257,x             ; $03:C939: 9D 57 02    ;
CODE_03C93C:    LDA #$05                ; $03:C93C: A9 05       ;
CODE_03C93E:    STA $0283               ; $03:C93E: 8D 83 02    ;
CODE_03C941:    LSR A                   ; $03:C941: 4A          ;
CODE_03C942:    STA $0365               ; $03:C942: 8D 65 03    ;
CODE_03C945:    RTS                     ; $03:C945: 60          ;

;Find a free sprite slot and place the sprite in the level.
CODE_03C946:    LDY #$FF                ; $03:C946: A0 FF       ;\
CODE_03C948:    INY                     ; $03:C948: C8          ; |Find a free sprite slot
CODE_03C949:    LDA $0010,y             ; $03:C949: B9 10 00    ; |
CODE_03C94C:    BNE CODE_03C948         ; $03:C94C: D0 FA       ;/
CODE_03C94E:    STY $06CF               ; $03:C94E: 8C CF 06    ;Store the index of the free sprite slot
CODE_03C951:    TXA                     ; $03:C951: 8A          ;Sprite index -> to accumulator
CODE_03C952:    ORA #$80                ; $03:C952: 09 80       ; OR 0x80
CODE_03C954:    STA $0010,y             ; $03:C954: 99 10 00    ;Store into sprite on-screen flag
CODE_03C957:    LDA $79,x               ; $03:C957: B5 79       ;\Sprite xpos high byte
CODE_03C959:    STA $0079,y             ; $03:C959: 99 79 00    ;/
CODE_03C95C:    LDA $021A,x             ; $03:C95C: BD 1A 02    ;\
CODE_03C95F:    STA $021A,y             ; $03:C95F: 99 1A 02    ;/Sprite xpos low byte
CODE_03C962:    LDA #$01                ; $03:C962: A9 01       ;\
CODE_03C964:    STA $10,x               ; $03:C964: 95 10       ;/Sprite off-screen flag?
CODE_03C966:    STA $00BC,y             ; $03:C966: 99 BC 00    ;"position of sprites"
CODE_03C969:    LDA $0238,x             ; $03:C969: BD 38 02    ;\
CODE_03C96C:    STA $0238,y             ; $03:C96C: 99 38 02    ;/Sprite Ypos
CODE_03C96F:    RTS                     ; $03:C96F: 60          ;

DATA_03C970:    db $90,$80,$70,$90                              ;Bowser's fireball possible Y positions

DATA_03C974:    db $FF,$01                                      ;Fireball Y Speed (both directions, but fireball goes 1-way only?)

CODE_03C976:    LDA $079B               ; $03:C976: AD 9B 07    ;\Bowser Fire generator. Timer to spawn next sprite (generators)
CODE_03C979:    BNE CODE_03C96F         ; $03:C979: D0 F4       ;/If $079B != 00, return
CODE_03C97B:    STA $043D,x             ; $03:C97B: 9D 3D 04    ;Sprite vertical speed = 00
CODE_03C97E:    LDA #$06                ; $03:C97E: A9 06       ;
CODE_03C980:    STA $014B               ; $03:C980: 8D 4B 01    ;
CODE_03C983:    LDA #$18                ; $03:C983: A9 18       ;
CODE_03C985:    STA $0F4C               ; $03:C985: 8D 4C 0F    ;
CODE_03C988:    STX $0F4D               ; $03:C988: 8E 4D 0F    ;
CODE_03C98B:    LDY $0368               ; $03:C98B: AC 68 03    ;\Index of bowser sprite
CODE_03C98E:    LDA $001C,y             ; $03:C98E: B9 1C 00    ; |
CODE_03C991:    CMP #$2D                ; $03:C991: C9 2D       ; |If there's a bowser sprite present, branch
CODE_03C993:    BEQ CODE_03C9E4         ; $03:C993: F0 4F       ;/
CODE_03C995:    JSR CODE_03D6F9         ; $03:C995: 20 F9 D6    ;\Get timer delay of next fireball spawn
CODE_03C998:    CLC                     ; $03:C998: 18          ; |make them spawn #$20 frames later by default.
CODE_03C999:    ADC #$20                ; $03:C999: 69 20       ;/
CODE_03C99B:    LDY $06CC               ; $03:C99B: AC CC 06    ;\If hard flag (levels after 5-3)
CODE_03C99E:    BEQ CODE_03C9A3         ; $03:C99E: F0 03       ; |
CODE_03C9A0:    SEC                     ; $03:C9A0: 38          ; |make fireballs spawn #$10 frames later instead of #$20
CODE_03C9A1:    SBC #$10                ; $03:C9A1: E9 10       ; |
CODE_03C9A3:    STA $079B               ; $03:C9A3: 8D 9B 07    ;/Timer to spawn next sprite
CODE_03C9A6:    LDA $07B7,x             ; $03:C9A6: BD B7 07    ;\
CODE_03C9A9:    AND #$03                ; $03:C9A9: 29 03       ; |Get random value and make the range $00-$03
CODE_03C9AB:    STA $041D,x             ; $03:C9AB: 9D 1D 04    ; |
CODE_03C9AE:    TAY                     ; $03:C9AE: A8          ; |
CODE_03C9AF:    LDA DATA_03C970,y       ; $03:C9AF: B9 70 C9    ; |Store bowser fireball Y position and into $041D,x
CODE_03C9B2:    STA $0238,x             ; $03:C9B2: 9D 38 02    ;/
CODE_03C9B5:    LDA $071D               ; $03:C9B5: AD 1D 07    ;\
CODE_03C9B8:    CLC                     ; $03:C9B8: 18          ; |X-Position of fireball = right border of screen + #$20
CODE_03C9B9:    ADC #$20                ; $03:C9B9: 69 20       ; |
CODE_03C9BB:    STA $021A,x             ; $03:C9BB: 9D 1A 02    ; |
CODE_03C9BE:    LDA $071B               ; $03:C9BE: AD 1B 07    ; |
CODE_03C9C1:    ADC #$00                ; $03:C9C1: 69 00       ; |
CODE_03C9C3:    STA $79,x               ; $03:C9C3: 95 79       ;/
CODE_03C9C5:    STZ $0F4C               ; $03:C9C5: 9C 4C 0F    ;Zero out how long bowser holds his breath for firing
CODE_03C9C8:    STZ $0F4D               ; $03:C9C8: 9C 4D 0F    ;
CODE_03C9CB:    STZ $014B               ; $03:C9CB: 9C 4B 01    ;
CODE_03C9CE:    LDA #$17                ; $03:C9CE: A9 17       ;\Play fire sound effect
CODE_03C9D0:    STA $1603               ; $03:C9D0: 8D 03 16    ;/(note: NOT fire breath from bowser)
CODE_03C9D3:    LDA #$08                ; $03:C9D3: A9 08       ;
CODE_03C9D5:    STA $0490,x             ; $03:C9D5: 9D 90 04    ;
CODE_03C9D8:    LDA #$01                ; $03:C9D8: A9 01       ;
CODE_03C9DA:    STA $BC,x               ; $03:C9DA: 95 BC       ;
CODE_03C9DC:    STA $10,x               ; $03:C9DC: 95 10       ;Set sprite on-screen flag
CODE_03C9DE:    LSR A                   ; $03:C9DE: 4A          ;A = 00
CODE_03C9DF:    STA $0402,x             ; $03:C9DF: 9D 02 04    ;
CODE_03C9E2:    STA $29,x               ; $03:C9E2: 95 29       ;
CODE_03C9E4:    STX $0F4E               ; $03:C9E4: 8E 4E 0F    ;Generated sprite index to $0F4E
CODE_03C9E7:    RTS                     ; $03:C9E7: 60          ;

CODE_03C9E8:    STA $0238,x             ; $03:C9E8: 9D 38 02    ;
CODE_03C9EB:    LDA $071D               ; $03:C9EB: AD 1D 07    ;
CODE_03C9EE:    CLC                     ; $03:C9EE: 18          ;
CODE_03C9EF:    ADC #$20                ; $03:C9EF: 69 20       ;
CODE_03C9F1:    STA $021A,x             ; $03:C9F1: 9D 1A 02    ;
CODE_03C9F4:    LDA $071B               ; $03:C9F4: AD 1B 07    ;
CODE_03C9F7:    ADC #$00                ; $03:C9F7: 69 00       ;
CODE_03C9F9:    STA $79,x               ; $03:C9F9: 95 79       ;
CODE_03C9FB:    JMP CODE_03CA32         ; $03:C9FB: 4C 32 CA    ;

CODE_03C9FE:    LDA $021A,y             ; $03:C9FE: B9 1A 02    ;
CODE_03CA01:    SEC                     ; $03:CA01: 38          ;
CODE_03CA02:    SBC #$0E                ; $03:CA02: E9 0E       ;
CODE_03CA04:    STA $021A,x             ; $03:CA04: 9D 1A 02    ;
CODE_03CA07:    LDA $0079,y             ; $03:CA07: B9 79 00    ;
CODE_03CA0A:    STA $79,x               ; $03:CA0A: 95 79       ;
CODE_03CA0C:    LDA $0238,y             ; $03:CA0C: B9 38 02    ;
CODE_03CA0F:    CLC                     ; $03:CA0F: 18          ;
CODE_03CA10:    ADC #$08                ; $03:CA10: 69 08       ;
CODE_03CA12:    STA $0238,x             ; $03:CA12: 9D 38 02    ;
CODE_03CA15:    LDA $07B7,x             ; $03:CA15: BD B7 07    ;
CODE_03CA18:    AND #$03                ; $03:CA18: 29 03       ;
CODE_03CA1A:    STA $041D,x             ; $03:CA1A: 9D 1D 04    ;
CODE_03CA1D:    TAY                     ; $03:CA1D: A8          ;
CODE_03CA1E:    LDA DATA_03C970,y       ; $03:CA1E: B9 70 C9    ;
CODE_03CA21:    LDY #$00                ; $03:CA21: A0 00       ;
CODE_03CA23:    CMP $0238,x             ; $03:CA23: DD 38 02    ;
CODE_03CA26:    BCC CODE_03CA29         ; $03:CA26: 90 01       ;
CODE_03CA28:    INY                     ; $03:CA28: C8          ;
CODE_03CA29:    LDA DATA_03C974,y       ; $03:CA29: B9 74 C9    ;
CODE_03CA2C:    STA $043D,x             ; $03:CA2C: 9D 3D 04    ;
CODE_03CA2F:    STZ $06CB               ; $03:CA2F: 9C CB 06    ;
CODE_03CA32:    LDA #$08                ; $03:CA32: A9 08       ;
CODE_03CA34:    STA $0490,x             ; $03:CA34: 9D 90 04    ;
CODE_03CA37:    LDA #$01                ; $03:CA37: A9 01       ;
CODE_03CA39:    STA $BC,x               ; $03:CA39: 95 BC       ;
CODE_03CA3B:    STA $10,x               ; $03:CA3B: 95 10       ;
CODE_03CA3D:    LSR A                   ; $03:CA3D: 4A          ;
CODE_03CA3E:    STA $0402,x             ; $03:CA3E: 9D 02 04    ;
CODE_03CA41:    STA $29,x               ; $03:CA41: 95 29       ;
CODE_03CA43:    RTS                     ; $03:CA43: 60          ;

DATA_03CA44:    db $00,$30,$60,$60,$00,$20                      ;

DATA_03CA4A:    db $60,$40,$70,$40,$60,$30                      ;

CODE_03CA50:    LDA $079B               ; $03:CA50: AD 9B 07    ;
CODE_03CA53:    BNE CODE_03CA9E         ; $03:CA53: D0 49       ;
CODE_03CA55:    LDA #$20                ; $03:CA55: A9 20       ;
CODE_03CA57:    STA $079B               ; $03:CA57: 8D 9B 07    ;
CODE_03CA5A:    DEC $06D7               ; $03:CA5A: CE D7 06    ;
CODE_03CA5D:    LDY #$0A                ; $03:CA5D: A0 0A       ;
CODE_03CA5F:    DEY                     ; $03:CA5F: 88          ;
CODE_03CA60:    LDA $001C,y             ; $03:CA60: B9 1C 00    ;
CODE_03CA63:    CMP #$31                ; $03:CA63: C9 31       ;
CODE_03CA65:    BNE CODE_03CA5F         ; $03:CA65: D0 F8       ;
CODE_03CA67:    LDA $021A,y             ; $03:CA67: B9 1A 02    ;
CODE_03CA6A:    SEC                     ; $03:CA6A: 38          ;
CODE_03CA6B:    SBC #$30                ; $03:CA6B: E9 30       ;
CODE_03CA6D:    PHA                     ; $03:CA6D: 48          ;
CODE_03CA6E:    LDA $0079,y             ; $03:CA6E: B9 79 00    ;
CODE_03CA71:    SBC #$00                ; $03:CA71: E9 00       ;
CODE_03CA73:    STA $00                 ; $03:CA73: 85 00       ;
CODE_03CA75:    LDA $06D7               ; $03:CA75: AD D7 06    ;
CODE_03CA78:    CLC                     ; $03:CA78: 18          ;
CODE_03CA79:    ADC $0029,y             ; $03:CA79: 79 29 00    ;
CODE_03CA7C:    TAY                     ; $03:CA7C: A8          ;
CODE_03CA7D:    PLA                     ; $03:CA7D: 68          ;
CODE_03CA7E:    CLC                     ; $03:CA7E: 18          ;
CODE_03CA7F:    ADC DATA_03CA44,y       ; $03:CA7F: 79 44 CA    ;
CODE_03CA82:    STA $021A,x             ; $03:CA82: 9D 1A 02    ;
CODE_03CA85:    LDA $00                 ; $03:CA85: A5 00       ;
CODE_03CA87:    ADC #$00                ; $03:CA87: 69 00       ;
CODE_03CA89:    STA $79,x               ; $03:CA89: 95 79       ;
CODE_03CA8B:    LDA DATA_03CA4A,y       ; $03:CA8B: B9 4A CA    ;
CODE_03CA8E:    STA $0238,x             ; $03:CA8E: 9D 38 02    ;
CODE_03CA91:    LDA #$01                ; $03:CA91: A9 01       ;
CODE_03CA93:    STA $BC,x               ; $03:CA93: 95 BC       ;
CODE_03CA95:    STA $10,x               ; $03:CA95: 95 10       ;
CODE_03CA97:    LSR A                   ; $03:CA97: 4A          ;
CODE_03CA98:    STA $5E,x               ; $03:CA98: 95 5E       ;
CODE_03CA9A:    LDA #$08                ; $03:CA9A: A9 08       ;
CODE_03CA9C:    STA $A1,x               ; $03:CA9C: 95 A1       ;
CODE_03CA9E:    RTS                     ; $03:CA9E: 60          ;

DATA_03CA9F:    db $01,$02,$04,$08,$10,$20,$40,$80              ;

DATA_03CAA7:    db $40,$30,$90,$50,$20,$60,$A0,$70              ;

DATA_03CAAF:    db $0A,$0B                                      ;

CODE_03CAB1:    LDA $079B               ; $03:CAB1: AD 9B 07    ;
CODE_03CAB4:    BNE CODE_03CB21         ; $03:CAB4: D0 6B       ;
CODE_03CAB6:    LDA $5C                 ; $03:CAB6: A5 5C       ;
CODE_03CAB8:    BNE CODE_03CB0E         ; $03:CAB8: D0 54       ;
CODE_03CABA:    CPX #$03                ; $03:CABA: E0 03       ;
CODE_03CABC:    BCS CODE_03CB21         ; $03:CABC: B0 63       ;
CODE_03CABE:    LDY #$00                ; $03:CABE: A0 00       ;\
CODE_03CAC0:    LDA $07B7,x             ; $03:CAC0: BD B7 07    ; |if RNG == $AA-$FF, y = 0
CODE_03CAC3:    CMP #$AA                ; $03:CAC3: C9 AA       ; |else y = 1
CODE_03CAC5:    BCC CODE_03CAC8         ; $03:CAC5: 90 01       ; |if world == 2, y = 0
CODE_03CAC7:    INY                     ; $03:CAC7: C8          ; |else y = 1
CODE_03CAC8:    LDA $075F               ; $03:CAC8: AD 5F 07    ; |
CODE_03CACB:    CMP #$01                ; $03:CACB: C9 01       ; |
CODE_03CACD:    BEQ CODE_03CAD0         ; $03:CACD: F0 01       ; |
CODE_03CACF:    INY                     ; $03:CACF: C8          ; |
CODE_03CAD0:    TYA                     ; $03:CAD0: 98          ; |
CODE_03CAD1:    AND #$01                ; $03:CAD1: 29 01       ; |
CODE_03CAD3:    TAY                     ; $03:CAD3: A8          ;/
CODE_03CAD4:    LDA DATA_03CAAF,y       ; $03:CAD4: B9 AF CA    ;\
CODE_03CAD7:    STA $1C,x               ; $03:CAD7: 95 1C       ;/Sprite to generate: Red or Green swimming cheep-cheep depending on above pseudocode
CODE_03CAD9:    LDA $06DD               ; $03:CAD9: AD DD 06    ;
CODE_03CADC:    CMP #$FF                ; $03:CADC: C9 FF       ;
CODE_03CADE:    BNE CODE_03CAE3         ; $03:CADE: D0 03       ;
CODE_03CAE0:    STZ $06DD               ; $03:CAE0: 9C DD 06    ;
CODE_03CAE3:    LDA $07B7,x             ; $03:CAE3: BD B7 07    ;
CODE_03CAE6:    AND #$07                ; $03:CAE6: 29 07       ;
CODE_03CAE8:    TAY                     ; $03:CAE8: A8          ;
CODE_03CAE9:    LDA DATA_03CA9F,y       ; $03:CAE9: B9 9F CA    ;
CODE_03CAEC:    BIT $06DD               ; $03:CAEC: 2C DD 06    ;
CODE_03CAEF:    BEQ CODE_03CAF7         ; $03:CAEF: F0 06       ;
CODE_03CAF1:    INY                     ; $03:CAF1: C8          ;
CODE_03CAF2:    TYA                     ; $03:CAF2: 98          ;
CODE_03CAF3:    AND #$07                ; $03:CAF3: 29 07       ;
CODE_03CAF5:    BRA CODE_03CAE8         ; $03:CAF5: 80 F1       ;

CODE_03CAF7:    ORA $06DD               ; $03:CAF7: 0D DD 06    ;
CODE_03CAFA:    STA $06DD               ; $03:CAFA: 8D DD 06    ;
CODE_03CAFD:    LDA DATA_03CAA7,y       ; $03:CAFD: B9 A7 CA    ;
CODE_03CB00:    JSR CODE_03C9E8         ; $03:CB00: 20 E8 C9    ;
CODE_03CB03:    STA $041D,x             ; $03:CB03: 9D 1D 04    ;
CODE_03CB06:    LDA #$20                ; $03:CB06: A9 20       ;
CODE_03CB08:    STA $079B               ; $03:CB08: 8D 9B 07    ;
CODE_03CB0B:    JMP CODE_03C60B         ; $03:CB0B: 4C 0B C6    ;

CODE_03CB0E:    LDY #$FF                ; $03:CB0E: A0 FF       ;
CODE_03CB10:    INY                     ; $03:CB10: C8          ;
CODE_03CB11:    CPY #$09                ; $03:CB11: C0 09       ;
CODE_03CB13:    BCS CODE_03CB22         ; $03:CB13: B0 0D       ;
CODE_03CB15:    LDA $0010,y             ; $03:CB15: B9 10 00    ;
CODE_03CB18:    BEQ CODE_03CB10         ; $03:CB18: F0 F6       ;
CODE_03CB1A:    LDA $001C,y             ; $03:CB1A: B9 1C 00    ;
CODE_03CB1D:    CMP #$08                ; $03:CB1D: C9 08       ;
CODE_03CB1F:    BNE CODE_03CB10         ; $03:CB1F: D0 EF       ;
CODE_03CB21:    RTS                     ; $03:CB21: 60          ;

CODE_03CB22:    LDA #$09                ; $03:CB22: A9 09       ;\
CODE_03CB24:    STA $1603               ; $03:CB24: 8D 03 16    ;/Quake sound?
CODE_03CB27:    LDA #$08                ; $03:CB27: A9 08       ;
CODE_03CB29:    BNE CODE_03CAD7         ; $03:CB29: D0 AC       ;
CODE_03CB2B:    LDY #$00                ; $03:CB2B: A0 00       ;
CODE_03CB2D:    SEC                     ; $03:CB2D: 38          ;
CODE_03CB2E:    SBC #$37                ; $03:CB2E: E9 37       ;
CODE_03CB30:    PHA                     ; $03:CB30: 48          ;
CODE_03CB31:    CMP #$04                ; $03:CB31: C9 04       ;
CODE_03CB33:    BCS CODE_03CB40         ; $03:CB33: B0 0B       ;
CODE_03CB35:    PHA                     ; $03:CB35: 48          ;
CODE_03CB36:    LDY #$06                ; $03:CB36: A0 06       ;
CODE_03CB38:    LDA $076A               ; $03:CB38: AD 6A 07    ;"More difficult quest" flag
CODE_03CB3B:    BEQ CODE_03CB3F         ; $03:CB3B: F0 02       ;
CODE_03CB3D:    LDY #$02                ; $03:CB3D: A0 02       ;
CODE_03CB3F:    PLA                     ; $03:CB3F: 68          ;
CODE_03CB40:    STY $01                 ; $03:CB40: 84 01       ;
CODE_03CB42:    LDY #$B0                ; $03:CB42: A0 B0       ;
CODE_03CB44:    AND #$02                ; $03:CB44: 29 02       ;
CODE_03CB46:    BEQ CODE_03CB4A         ; $03:CB46: F0 02       ;
CODE_03CB48:    LDY #$70                ; $03:CB48: A0 70       ;
CODE_03CB4A:    STY $00                 ; $03:CB4A: 84 00       ;
CODE_03CB4C:    LDA $071B               ; $03:CB4C: AD 1B 07    ;
CODE_03CB4F:    STA $02                 ; $03:CB4F: 85 02       ;
CODE_03CB51:    LDA $071D               ; $03:CB51: AD 1D 07    ;
CODE_03CB54:    STA $03                 ; $03:CB54: 85 03       ;
CODE_03CB56:    LDY #$02                ; $03:CB56: A0 02       ;
CODE_03CB58:    PLA                     ; $03:CB58: 68          ;
CODE_03CB59:    LSR A                   ; $03:CB59: 4A          ;
CODE_03CB5A:    BCC CODE_03CB5D         ; $03:CB5A: 90 01       ;
CODE_03CB5C:    INY                     ; $03:CB5C: C8          ;
CODE_03CB5D:    STY $06D3               ; $03:CB5D: 8C D3 06    ;
CODE_03CB60:    LDX #$FF                ; $03:CB60: A2 FF       ;
CODE_03CB62:    INX                     ; $03:CB62: E8          ;
CODE_03CB63:    CPX #$09                ; $03:CB63: E0 09       ;
CODE_03CB65:    BCS CODE_03CB96         ; $03:CB65: B0 2F       ;
CODE_03CB67:    LDA $10,x               ; $03:CB67: B5 10       ;
CODE_03CB69:    BNE CODE_03CB62         ; $03:CB69: D0 F7       ;
CODE_03CB6B:    LDA $01                 ; $03:CB6B: A5 01       ;
CODE_03CB6D:    STA $1C,x               ; $03:CB6D: 95 1C       ;
CODE_03CB6F:    LDA $02                 ; $03:CB6F: A5 02       ;
CODE_03CB71:    STA $79,x               ; $03:CB71: 95 79       ;
CODE_03CB73:    LDA $03                 ; $03:CB73: A5 03       ;
CODE_03CB75:    STA $021A,x             ; $03:CB75: 9D 1A 02    ;
CODE_03CB78:    CLC                     ; $03:CB78: 18          ;
CODE_03CB79:    ADC #$18                ; $03:CB79: 69 18       ;
CODE_03CB7B:    STA $03                 ; $03:CB7B: 85 03       ;
CODE_03CB7D:    LDA $02                 ; $03:CB7D: A5 02       ;
CODE_03CB7F:    ADC #$00                ; $03:CB7F: 69 00       ;
CODE_03CB81:    STA $02                 ; $03:CB81: 85 02       ;
CODE_03CB83:    LDA $00                 ; $03:CB83: A5 00       ;
CODE_03CB85:    STA $0238,x             ; $03:CB85: 9D 38 02    ;
CODE_03CB88:    LDA #$01                ; $03:CB88: A9 01       ;
CODE_03CB8A:    STA $BC,x               ; $03:CB8A: 95 BC       ;
CODE_03CB8C:    STA $10,x               ; $03:CB8C: 95 10       ;
CODE_03CB8E:    JSR CODE_03C60B         ; $03:CB8E: 20 0B C6    ;
CODE_03CB91:    DEC $06D3               ; $03:CB91: CE D3 06    ;
CODE_03CB94:    BNE CODE_03CB60         ; $03:CB94: D0 CA       ;
CODE_03CB96:    JMP CODE_03C5FF         ; $03:CB96: 4C FF C5    ;

CODE_03CB99:    LDA #$01                ; $03:CB99: A9 01       ;
CODE_03CB9B:    STA $5E,x               ; $03:CB9B: 95 5E       ;
CODE_03CB9D:    LSR A                   ; $03:CB9D: 4A          ;
CODE_03CB9E:    STA $29,x               ; $03:CB9E: 95 29       ;
CODE_03CBA0:    STA $A1,x               ; $03:CBA0: 95 A1       ;
CODE_03CBA2:    LDA $0238,x             ; $03:CBA2: BD 38 02    ;
CODE_03CBA5:    STA $043D,x             ; $03:CBA5: 9D 3D 04    ;
CODE_03CBA8:    SEC                     ; $03:CBA8: 38          ;
CODE_03CBA9:    SBC #$18                ; $03:CBA9: E9 18       ;
CODE_03CBAB:    STA $041D,x             ; $03:CBAB: 9D 1D 04    ;
CODE_03CBAE:    LDA #$09                ; $03:CBAE: A9 09       ;
CODE_03CBB0:    LDA #$0C                ; $03:CBB0: A9 0C       ;
CODE_03CBB2:    JMP CODE_03CBFC         ; $03:CBB2: 4C FC CB    ;

CODE_03CBB5:    LDA $1C,x               ; $03:CBB5: B5 1C       ;\ Generator to create
CODE_03CBB7:    STA $06CB               ; $03:CBB7: 8D CB 06    ;/ Store in this RAM address
CODE_03CBBA:    SEC                     ; $03:CBBA: 38          ;\ Subtract sprite by $12
CODE_03CBBB:    SBC #$12                ; $03:CBBB: E9 12       ;/
CODE_03CBBD:    ASL A                   ; $03:CBBD: 0A          ;\ Multiply by 2
CODE_03CBBE:    TAY                     ; $03:CBBE: A8          ;/ To use it as an index
CODE_03CBBF:    LDA PNTR_03CBCC,y       ; $03:CBBF: B9 CC CB    ;\
CODE_03CBC2:    STA $04                 ; $03:CBC2: 85 04       ; |
CODE_03CBC4:    LDA PNTR_03CBCC+1,y     ; $03:CBC4: B9 CD CB    ; | Jump to pointer tables below.
CODE_03CBC7:    STA $05                 ; $03:CBC7: 85 05       ; |
CODE_03CBC9:    JMP ($0004)             ; $03:CBC9: 6C 04 00    ;/

;MAIN Routines for generators 12-17 (redirected from INIT routine pointer table)
PNTR_03CBCC:    dw CODE_03C768                                  ;12 - Lakitu generator (?)
                dw CODE_03CBD8                                  ;13 - Nothing at all (crashes)
                dw CODE_03C870                                  ;14 - Red flying cheep cheep generator
                dw CODE_03C976                                  ;15 - Bowser's fire generator
                dw CODE_03CA50                                  ;16 - Fireworks generator
                dw CODE_03CAB1                                  ;17 - Bullet bill/swimming cheep cheep generator

CODE_03CBD8:    RTS                     ; $03:CBD8: 60          ;Return

CODE_03CBD9:    LDY #$09                ; $03:CBD9: A0 09       ;\ Disable lakitu generator sprite
CODE_03CBDB:    LDA $001C,y             ; $03:CBDB: B9 1C 00    ; |Find a lakitu, any of them
CODE_03CBDE:    CMP #$11                ; $03:CBDE: C9 11       ; |
CODE_03CBE0:    BNE CODE_03CBE7         ; $03:CBE0: D0 05       ; |
CODE_03CBE2:    LDA #$01                ; $03:CBE2: A9 01       ; |Tell them to go off-screen to the left without doing
CODE_03CBE4:    STA $0029,y             ; $03:CBE4: 99 29 00    ; |anything.
CODE_03CBE7:    DEY                     ; $03:CBE7: 88          ; |
CODE_03CBE8:    BPL CODE_03CBDB         ; $03:CBE8: 10 F1       ; |
CODE_03CBEA:    LDA #$00                ; $03:CBEA: A9 00       ; |
CODE_03CBEC:    STA $06CB               ; $03:CBEC: 8D CB 06    ; |
CODE_03CBEF:    STA $10,x               ; $03:CBEF: 95 10       ; |Disable on-screen flag?
CODE_03CBF1:    RTS                     ; $03:CBF1: 60          ;/Return

CODE_03CBF2:    LDA #$02                ; $03:CBF2: A9 02       ;
CODE_03CBF4:    STA $47,x               ; $03:CBF4: 95 47       ;
CODE_03CBF6:    LDA #$F8                ; $03:CBF6: A9 F8       ;
CODE_03CBF8:    STA $5E,x               ; $03:CBF8: 95 5E       ;
CODE_03CBFA:    LDA #$03                ; $03:CBFA: A9 03       ;
CODE_03CBFC:    STA $0490,x             ; $03:CBFC: 9D 90 04    ;
CODE_03CBFF:    RTS                     ; $03:CBFF: 60          ;

CODE_03CC00:    DEC $0238,x             ; $03:CC00: DE 38 02    ;
CODE_03CC03:    DEC $0238,x             ; $03:CC03: DE 38 02    ;
CODE_03CC06:    LDY $06CC               ; $03:CC06: AC CC 06    ;
CODE_03CC09:    BNE CODE_03CC10         ; $03:CC09: D0 05       ;
CODE_03CC0B:    LDY #$02                ; $03:CC0B: A0 02       ;
CODE_03CC0D:    JSR CODE_03CC95         ; $03:CC0D: 20 95 CC    ;
CODE_03CC10:    LDY #$FF                ; $03:CC10: A0 FF       ;
CODE_03CC12:    LDA $03A0               ; $03:CC12: AD A0 03    ;
CODE_03CC15:    STA $29,x               ; $03:CC15: 95 29       ;
CODE_03CC17:    BPL CODE_03CC1B         ; $03:CC17: 10 02       ;
CODE_03CC19:    TXA                     ; $03:CC19: 8A          ;
CODE_03CC1A:    TAY                     ; $03:CC1A: A8          ;
CODE_03CC1B:    STY $03A0               ; $03:CC1B: 8C A0 03    ;
CODE_03CC1E:    LDA #$00                ; $03:CC1E: A9 00       ;
CODE_03CC20:    STA $47,x               ; $03:CC20: 95 47       ;
CODE_03CC22:    TAY                     ; $03:CC22: A8          ;
CODE_03CC23:    JSR CODE_03CC95         ; $03:CC23: 20 95 CC    ;
CODE_03CC26:    LDA #$FF                ; $03:CC26: A9 FF       ;
CODE_03CC28:    STA $03A2,x             ; $03:CC28: 9D A2 03    ;
CODE_03CC2B:    JMP CODE_03CC4D         ; $03:CC2B: 4C 4D CC    ;

CODE_03CC2E:    LDA #$00                ; $03:CC2E: A9 00       ;
CODE_03CC30:    STA $5E,x               ; $03:CC30: 95 5E       ;
CODE_03CC32:    JMP CODE_03CC4D         ; $03:CC32: 4C 4D CC    ;

CODE_03CC35:    LDY #$40                ; $03:CC35: A0 40       ;
CODE_03CC37:    LDA $0238,x             ; $03:CC37: BD 38 02    ;
CODE_03CC3A:    BPL CODE_03CC43         ; $03:CC3A: 10 07       ;
CODE_03CC3C:    EOR #$FF                ; $03:CC3C: 49 FF       ;
CODE_03CC3E:    CLC                     ; $03:CC3E: 18          ;
CODE_03CC3F:    ADC #$01                ; $03:CC3F: 69 01       ;
CODE_03CC41:    LDY #$C0                ; $03:CC41: A0 C0       ;
CODE_03CC43:    STA $0402,x             ; $03:CC43: 9D 02 04    ;
CODE_03CC46:    TYA                     ; $03:CC46: 98          ;
CODE_03CC47:    CLC                     ; $03:CC47: 18          ;
CODE_03CC48:    ADC $0238,x             ; $03:CC48: 7D 38 02    ;
CODE_03CC4B:    STA $5E,x               ; $03:CC4B: 95 5E       ;
CODE_03CC4D:    JSR CODE_03C726         ; $03:CC4D: 20 26 C7    ;
CODE_03CC50:    LDA #$05                ; $03:CC50: A9 05       ;
CODE_03CC52:    LDY $5C                 ; $03:CC52: A4 5C       ;
CODE_03CC54:    CPY #$03                ; $03:CC54: C0 03       ;
CODE_03CC56:    BEQ CODE_03CC5F         ; $03:CC56: F0 07       ;
CODE_03CC58:    LDY $06CC               ; $03:CC58: AC CC 06    ;
CODE_03CC5B:    BNE CODE_03CC5F         ; $03:CC5B: D0 02       ;
CODE_03CC5D:    LDA #$06                ; $03:CC5D: A9 06       ;
CODE_03CC5F:    STA $0490,x             ; $03:CC5F: 9D 90 04    ;
CODE_03CC62:    RTS                     ; $03:CC62: 60          ;

CODE_03CC63:    JSR CODE_03CC6F         ; $03:CC63: 20 6F CC    ;
CODE_03CC66:    JMP CODE_03CC6C         ; $03:CC66: 4C 6C CC    ;

CODE_03CC69:    JSR CODE_03CC7B         ; $03:CC69: 20 7B CC    ;
CODE_03CC6C:    JMP CODE_03CC50         ; $03:CC6C: 4C 50 CC    ;

CODE_03CC6F:    LDA #$10                ; $03:CC6F: A9 10       ;
CODE_03CC71:    STA $043D,x             ; $03:CC71: 9D 3D 04    ;
CODE_03CC74:    LDA #$FF                ; $03:CC74: A9 FF       ;
CODE_03CC76:    STA $A1,x               ; $03:CC76: 95 A1       ;
CODE_03CC78:    JMP CODE_03CC84         ; $03:CC78: 4C 84 CC    ;

CODE_03CC7B:    LDA #$F0                ; $03:CC7B: A9 F0       ;
CODE_03CC7D:    STA $043D,x             ; $03:CC7D: 9D 3D 04    ;
CODE_03CC80:    LDA #$00                ; $03:CC80: A9 00       ;
CODE_03CC82:    STA $A1,x               ; $03:CC82: 95 A1       ;
CODE_03CC84:    LDY #$01                ; $03:CC84: A0 01       ;
CODE_03CC86:    JSR CODE_03CC95         ; $03:CC86: 20 95 CC    ;
CODE_03CC89:    LDA #$04                ; $03:CC89: A9 04       ;
CODE_03CC8B:    STA $0490,x             ; $03:CC8B: 9D 90 04    ;
CODE_03CC8E:    RTS                     ; $03:CC8E: 60          ;

DATA_03CC8F:    db $08,$0C,$F8                                  ;

DATA_03CC92:    db $00,$00,$FF                                  ;

CODE_03CC95:    LDA $021A,x             ; $03:CC95: BD 1A 02    ;
CODE_03CC98:    CLC                     ; $03:CC98: 18          ;
CODE_03CC99:    ADC DATA_03CC8F,y       ; $03:CC99: 79 8F CC    ;
CODE_03CC9C:    STA $021A,x             ; $03:CC9C: 9D 1A 02    ;
CODE_03CC9F:    LDA $79,x               ; $03:CC9F: B5 79       ;
CODE_03CCA1:    ADC DATA_03CC92,y       ; $03:CCA1: 79 92 CC    ;
CODE_03CCA4:    STA $79,x               ; $03:CCA4: 95 79       ;
CODE_03CCA6:    RTS                     ; $03:CCA6: 60          ;

CODE_03CCA7:    RTS                     ; $03:CCA7: 60          ;

CODE_03CCA8:    LDX $9E                 ; $03:CCA8: A6 9E       ;Get sprite index
CODE_03CCAA:    LDA #$00                ; $03:CCAA: A9 00       ;load 00 into A
CODE_03CCAC:    LDY $1C,x               ; $03:CCAC: B4 1C       ;Load current sprite number
CODE_03CCAE:    CPY #$15                ; $03:CCAE: C0 15       ;\If it is smaller than $15 ($00-$14)
CODE_03CCB0:    BCC CODE_03CCB5         ; $03:CCB0: 90 03       ;/Skip the next 2 lines. 
CODE_03CCB2:    TYA                     ; $03:CCB2: 98          ;
CODE_03CCB3:    SBC #$14                ; $03:CCB3: E9 14       ;
CODE_03CCB5:    ASL A                   ; $03:CCB5: 0A          ;Get index to next table
CODE_03CCB6:    TAY                     ; $03:CCB6: A8          ;A -> Y
CODE_03CCB7:    LDA PNTR_03CCC4,y       ; $03:CCB7: B9 C4 CC    ;\
CODE_03CCBA:    STA $04                 ; $03:CCBA: 85 04       ; |Load 16-bit pointer tables
CODE_03CCBC:    LDA PNTR_03CCC4+1,y     ; $03:CCBC: B9 C5 CC    ; |
CODE_03CCBF:    STA $05                 ; $03:CCBF: 85 05       ; |
CODE_03CCC1:    JMP ($0004)             ; $03:CCC1: 6C 04 00    ;/

;MAIN ROUTINES for sprites $14-$35
PNTR_03CCC4:    dw CODE_03CD12                                  ;Sprites $0-$14
                dw CODE_03CD73                                  ;$15 - Bowser's fire generator
                dw CODE_03D761                                  ;$16 - Fireworks generator
                dw CODE_03CD08                                  ;$17 - Bullet Bill/Cheep Cheep generator
                dw CODE_03CD08                                  ;$18 - Disable Lakitu generator (nothing in MAIN though)
                dw CODE_03CD08                                  ;$19 - Nothing
                dw CODE_03CD08                                  ;$1A - Nothing
                dw CODE_03CD85                                  ;$1B - Firebar (Clockwise)
                dw CODE_03CD85                                  ;$1C - Fast Firebar (Clockwise)
                dw CODE_03CD85                                  ;$1D - Firebar (Counter-Clockwise)
                dw CODE_03CD85                                  ;$1E - Fast Firebar (Counter-Clockwise)
                dw CODE_03CD85                                  ;$1F - Long Fire Bar (Clockwise)
                dw CODE_03CD85                                  ;$20 - Nothing? Related to the firebars above?
                dw CODE_03CD85                                  ;$21 - Nothing? Related to the firebars above?
                dw CODE_03CD85                                  ;$22 - Nothing? Related to the firebars above?
                dw CODE_03CD08                                  ;$23 - Nothing.
                dw CODE_03CDA3                                  ;$24 - Lift (Balance)
                dw CODE_03CDA3                                  ;$25 - Lift (Down then Up)
                dw CODE_03CDA3                                  ;$26 - Lift (Continuous up)
                dw CODE_03CDA3                                  ;$27 - Lift (Continuous down)
                dw CODE_03CDA3                                  ;$28 - Lift (Left the Right)
                dw CODE_03CDA3                                  ;$29 - Lift (Fall)
                dw CODE_03CDA3                                  ;$2A - Lift (Continuous right)
                dw CODE_03CD8B                                  ;$2B - Short lift (Up)
                dw CODE_03CD8B                                  ;$2C - Short lift (Down)
                dw CODE_03D55E                                  ;$2D - Bowser
                dw CODE_03BDC3                                  ;$2E - ???
                dw CODE_03BA31                                  ;$2F - ???
                dw CODE_03CD08                                  ;$30 - Flagpole?
                dw CODE_03D7AF                                  ;$31 - Timer->Score and level end controller sprite + end level flag?
                dw CODE_03B991                                  ;$32 - Red springboard
                dw CODE_03CD08                                  ;$33 - Nothing
                dw CODE_03B839                                  ;$34 - Warp Zone
                dw CODE_03CD09                                  ;$35 - Toad/Princess

CODE_03CD08:    RTS                     ; $03:CD08: 60          ;

CODE_03CD09:    JSR CODE_03FDCB         ; $03:CD09: 20 CB FD    ;
CODE_03CD0C:    JSR CODE_03FD39         ; $03:CD0C: 20 39 FD    ;
CODE_03CD0F:    JMP CODE_03EEEF         ; $03:CD0F: 4C EF EE    ;

CODE_03CD12:    LDA #$20                ; $03:CD12: A9 20       ;\Handle sprites $00-$14
CODE_03CD14:    STA $0257,x             ; $03:CD14: 9D 57 02    ;/ Set sprite onscreen flag
CODE_03CD17:    JSR CODE_03FDCB         ; $03:CD17: 20 CB FD    ;
CODE_03CD1A:    JSR CODE_03FD39         ; $03:CD1A: 20 39 FD    ;
CODE_03CD1D:    JSR CODE_03EEEF         ; $03:CD1D: 20 EF EE    ;
CODE_03CD20:    JSR CODE_03E9CC         ; $03:CD20: 20 CC E9    ;
CODE_03CD23:    JSR CODE_03E72E         ; $03:CD23: 20 2E E7    ;
CODE_03CD26:    JSR CODE_03E0C4         ; $03:CD26: 20 C4 E0    ;
CODE_03CD29:    JSR CODE_03DE55         ; $03:CD29: 20 55 DE    ;
CODE_03CD2C:    LDY $0747               ; $03:CD2C: AC 47 07    ;\
CODE_03CD2F:    BNE CODE_03CD34         ; $03:CD2F: D0 03       ; | Update sprite movement when game is not locked
CODE_03CD31:    JSR CODE_03CD37         ; $03:CD31: 20 37 CD    ;/
CODE_03CD34:    JMP CODE_03DC03         ; $03:CD34: 4C 03 DC    ;

CODE_03CD37:    LDA $1C,x               ; $03:CD37: B5 1C       ;Load sprite number
CODE_03CD39:    ASL A                   ; $03:CD39: 0A          ;*2
CODE_03CD3A:    TAY                     ; $03:CD3A: A8          ;Use as index
CODE_03CD3B:    LDA PNTR_03CD48,y       ; $03:CD3B: B9 48 CD    ;\
CODE_03CD3E:    STA $04                 ; $03:CD3E: 85 04       ; |
CODE_03CD40:    LDA PNTR_03CD48+1,y     ; $03:CD40: B9 49 CD    ; |Jump to the sprite routines
CODE_03CD43:    STA $05                 ; $03:CD43: 85 05       ; |
CODE_03CD45:    JMP ($0004)             ; $03:CD45: 6C 04 00    ;/

;MAIN routines for general sprites - updates behaviour? OAM code is elsewhere?

PNTR_03CD48:    dw CODE_03CF08                                  ;00 - Green koopa
                dw CODE_03CF08                                  ;01 - Red koopa (walks off ledges)
                dw CODE_03CF08                                  ;02 - Buzzy beetle
                dw CODE_03CF08                                  ;03 - Red koopa (stays on ledges)
                dw CODE_03CF08                                  ;04 - Green koopa (doesn't move)
                dw CODE_03CE67                                  ;05 - Hammer bros
                dw CODE_03CF08                                  ;06 - Goomba
                dw CODE_03D01F                                  ;07 - Blooper
                dw CODE_03D0D5                                  ;08 - Bullet Bill
                dw CODE_03CD72                                  ;09 - Yellow paratroopa (doesn't move)
                dw CODE_03D0E9                                  ;0A - Green cheep-cheep (slow)
                dw CODE_03D0E9                                  ;0B - Red cheep-cheep (fast)
                dw CODE_03CE1A                                  ;0C - Podoboo
                dw CODE_03D891                                  ;0D - piranha plant
                dw CODE_03CF8A                                  ;0E - Green paratroopa (leaping)
                dw CODE_03CF90                                  ;0F - Red paratroopa (down & up)
                dw CODE_03CFB9                                  ;10 - Green paratroopa (left & right)
                dw CODE_03D3DE                                  ;11 - Lakitu
                dw CODE_03CF08                                  ;12 - Spiny (not recommended for direct use)
                dw CODE_03CD72                                  ;13 - "DO NOT USE" (this points to an RTS)
                dw CODE_03D397                                  ;14 - Red Flying Cheep-Cheep

CODE_03CD72:    RTS                     ; $03:CD72: 60          ;

CODE_03CD73:    JSR CODE_03D70B         ; $03:CD73: 20 0B D7    ;
CODE_03CD76:    JSR CODE_03FDCB         ; $03:CD76: 20 CB FD    ;
CODE_03CD79:    JSR CODE_03FD39         ; $03:CD79: 20 39 FD    ;
CODE_03CD7C:    JSR CODE_03E9CC         ; $03:CD7C: 20 CC E9    ;
CODE_03CD7F:    JSR CODE_03DE55         ; $03:CD7F: 20 55 DE    ;
CODE_03CD82:    JMP CODE_03DC03         ; $03:CD82: 4C 03 DC    ;

CODE_03CD85:    JSR CODE_03D1E1         ; $03:CD85: 20 E1 D1    ;
CODE_03CD88:    JMP CODE_03DC03         ; $03:CD88: 4C 03 DC    ;

CODE_03CD8B:    JSR CODE_03FDCB         ; $03:CD8B: 20 CB FD    ;
CODE_03CD8E:    JSR CODE_03FD39         ; $03:CD8E: 20 39 FD    ;
CODE_03CD91:    JSR CODE_03E9D5         ; $03:CD91: 20 D5 E9    ;
CODE_03CD94:    JSR CODE_03E21E         ; $03:CD94: 20 1E E2    ;
CODE_03CD97:    JSR CODE_03FD39         ; $03:CD97: 20 39 FD    ;
CODE_03CD9A:    JSR CODE_03F5B2         ; $03:CD9A: 20 B2 F5    ;
CODE_03CD9D:    JSR CODE_03DBD9         ; $03:CD9D: 20 D9 DB    ;
CODE_03CDA0:    JMP CODE_03DC03         ; $03:CDA0: 4C 03 DC    ;

CODE_03CDA3:    JSR CODE_03FDCB         ; $03:CDA3: 20 CB FD    ;
CODE_03CDA6:    JSR CODE_03FD39         ; $03:CDA6: 20 39 FD    ;
CODE_03CDA9:    JSR CODE_03EA04         ; $03:CDA9: 20 04 EA    ;
CODE_03CDAC:    JSR CODE_03E1E7         ; $03:CDAC: 20 E7 E1    ;
CODE_03CDAF:    LDA $0747               ; $03:CDAF: AD 47 07    ;
CODE_03CDB2:    BNE CODE_03CDB7         ; $03:CDB2: D0 03       ;
CODE_03CDB4:    JSR CODE_03CDC0         ; $03:CDB4: 20 C0 CD    ;
CODE_03CDB7:    JSR CODE_03FD39         ; $03:CDB7: 20 39 FD    ;
CODE_03CDBA:    JSR CODE_03EC5E         ; $03:CDBA: 20 5E EC    ;
CODE_03CDBD:    JMP CODE_03DC03         ; $03:CDBD: 4C 03 DC    ;

CODE_03CDC0:    LDA $1C,x               ; $03:CDC0: B5 1C       ;\Load sprite number
CODE_03CDC2:    SEC                     ; $03:CDC2: 38          ; |Sprite number - $24
CODE_03CDC3:    SBC #$24                ; $03:CDC3: E9 24       ; |
CODE_03CDC5:    ASL A                   ; $03:CDC5: 0A          ;/|*2
CODE_03CDC6:    TAY                     ; $03:CDC6: A8          ;/Use as index. Sprite $24 will haxe index $00
CODE_03CDC7:    LDA PNTR_03CDD4,y       ; $03:CDC7: B9 D4 CD    ;\
CODE_03CDCA:    STA $04                 ; $03:CDCA: 85 04       ; |
CODE_03CDCC:    LDA PNTR_03CDD4+1,y     ; $03:CDCC: B9 D5 CD    ; |
CODE_03CDCF:    STA $05                 ; $03:CDCF: 85 05       ; |Jump to pointer tables
CODE_03CDD1:    JMP ($0004)             ; $03:CDD1: 6C 04 00    ;/

;lift movement handler (move by itself, move when stepped on by player, etc)

PNTR_03CDD4:    dw CODE_03D914                                  ;24 - Lift (Balance)
                dw CODE_03DB54                                  ;25 - Lift (Down then up)
                dw CODE_03DBD3                                  ;26 - Lift (Up)
                dw CODE_03DBD3                                  ;27 - Lift (Down)
                dw CODE_03DB8A                                  ;28 - Lift (Left then right)
                dw CODE_03DBB5                                  ;28 - Lift (Fall)
                dw CODE_03DBC1                                  ;29 - Lift (Right)

; Erase sprite
CODE_03CDE2:    STZ $07A2,x             ; $03:CDE2: 9E A2 07    ; Clear enemy interval timer
CODE_03CDE5:    CPX #$09                ; $03:CDE5: E0 09       ;\ Check if sprite index is that of a [?]-block item
CODE_03CDE7:    BNE CODE_03CE00         ; $03:CDE7: D0 17       ;/ If not, skip.
CODE_03CDE9:    LDA #$F0                ; $03:CDE9: A9 F0       ;
CODE_03CDEB:    STA $09E1               ; $03:CDEB: 8D E1 09    ;
CODE_03CDEE:    STA $09E5               ; $03:CDEE: 8D E5 09    ;
CODE_03CDF1:    STA $09E9               ; $03:CDF1: 8D E9 09    ;
CODE_03CDF4:    STA $09ED               ; $03:CDF4: 8D ED 09    ;
CODE_03CDF7:    LDA $DB                 ; $03:CDF7: A5 DB       ;
CODE_03CDF9:    CMP #$22                ; $03:CDF9: C9 22       ;
CODE_03CDFB:    BNE CODE_03CE00         ; $03:CDFB: D0 03       ;
CODE_03CDFD:    STZ $0743               ; $03:CDFD: 9C 43 07    ;No cloud terrain
CODE_03CE00:    STZ $10,x               ; $03:CE00: 74 10       ;Clear sprite flag
CODE_03CE02:    STZ $1C,x               ; $03:CE02: 74 1C       ;Clear sprite number
CODE_03CE04:    STZ $29,x               ; $03:CE04: 74 29       ;Clear sprite state
CODE_03CE06:    STZ $0110,x             ; $03:CE06: 9E 10 01    ;Clear shell chain counter
CODE_03CE09:    STZ $012E,x             ; $03:CE09: 9E 2E 01    ;
CODE_03CE0C:    STZ $0792,x             ; $03:CE0C: 9E 92 07    ;
CODE_03CE0F:    STZ $03A2,x             ; $03:CE0F: 9E A2 03    ;
CODE_03CE12:    LDA #$20                ; $03:CE12: A9 20       ;
CODE_03CE14:    STA $0257,x             ; $03:CE14: 9D 57 02    ;
CODE_03CE17:    LDA #$00                ; $03:CE17: A9 00       ;
CODE_03CE19:    RTS                     ; $03:CE19: 60          ;

CODE_03CE1A:    LDA $07A2,x             ; $03:CE1A: BD A2 07    ;\If jump timer not expired
CODE_03CE1D:    BNE CODE_03CE35         ; $03:CE1D: D0 16       ; |
CODE_03CE1F:    JSR CODE_03C6A4         ; $03:CE1F: 20 A4 C6    ;/Init podoboo again
CODE_03CE22:    LDA $07B8,x             ; $03:CE22: BD B8 07    ;\
CODE_03CE25:    ORA #$80                ; $03:CE25: 09 80       ; | Set movement force according to LSFR random number generator output
CODE_03CE27:    STA $043D,x             ; $03:CE27: 9D 3D 04    ;/
CODE_03CE2A:    AND #$0F                ; $03:CE2A: 29 0F       ;\
CODE_03CE2C:    ORA #$06                ; $03:CE2C: 09 06       ; | Set interval timer again
CODE_03CE2E:    STA $07A2,x             ; $03:CE2E: 9D A2 07    ;/
CODE_03CE31:    LDA #$F9                ; $03:CE31: A9 F9       ;\ Set jumping speed of podoboo
CODE_03CE33:    STA $A1,x               ; $03:CE33: 95 A1       ;/
CODE_03CE35:    LDA $00A1,x             ; $03:CE35: BD A1 00    ;\If speed is upwards, skip
CODE_03CE38:    BMI CODE_03CE53         ; $03:CE38: 30 19       ;/
CODE_03CE3A:    LDA $0238,x             ; $03:CE3A: BD 38 02    ;\
CODE_03CE3D:    CMP #$C0                ; $03:CE3D: C9 C0       ; | if Y position is less than $C0, skip
CODE_03CE3F:    BCC CODE_03CE53         ; $03:CE3F: 90 12       ;/
CODE_03CE41:    LDA $0B00,x             ; $03:CE41: BD 00 0B    ;
CODE_03CE44:    CMP #$02                ; $03:CE44: C9 02       ;
CODE_03CE46:    BNE CODE_03CE53         ; $03:CE46: D0 0B       ;
CODE_03CE48:    INC $0B00,x             ; $03:CE48: FE 00 0B    ;
CODE_03CE4B:    STZ $0B09,x             ; $03:CE4B: 9E 09 0B    ;Reset some timer
CODE_03CE4E:    LDA #$27                ; $03:CE4E: A9 27       ;\Podoboo jump sound
CODE_03CE50:    STA $1603               ; $03:CE50: 8D 03 16    ;/
CODE_03CE53:    INC $0B09,x             ; $03:CE53: FE 09 0B    ;Increase some timer
CODE_03CE56:    JSL CODE_05D614         ; $03:CE56: 22 14 D6 05 ;Leave behind fire and lava particles
CODE_03CE5A:    JMP CODE_03C140         ; $03:CE5A: 4C 40 C1    ;

DATA_03CE5D:    db $30,$1C                                      ;

DATA_03CE5F:    db $00,$E8,$00,$18                              ;

DATA_03CE63:    db $08,$F8,$0C,$F4                              ;

CODE_03CE67:    LDA $29,x               ; $03:CE67: B5 29       ;\MAIN routine of hammer bros
CODE_03CE69:    AND #$20                ; $03:CE69: 29 20       ; |If not dying, branch
CODE_03CE6B:    BEQ CODE_03CE70         ; $03:CE6B: F0 03       ;/
CODE_03CE6D:    JMP CODE_03CF76         ; $03:CE6D: 4C 76 CF    ;Else, jump if dying.

CODE_03CE70:    LDA $020F,x             ; $03:CE70: BD 0F 02    ;\ Hammer bros jump timer
CODE_03CE73:    BEQ CODE_03CEA3         ; $03:CE73: F0 2E       ; |If jump timer reached 00, make hammer bros jump
CODE_03CE75:    DEC $020F,x             ; $03:CE75: DE 0F 02    ;/ else, decrease timer and continue.
CODE_03CE78:    LDA $03D1               ; $03:CE78: AD D1 03    ;\
CODE_03CE7B:    AND #$0C                ; $03:CE7B: 29 0C       ; |If $04,$08 or $0C
CODE_03CE7D:    BNE CODE_03CEE9         ; $03:CE7D: D0 6A       ;/Branch
CODE_03CE7F:    LDA $03A2,x             ; $03:CE7F: BD A2 03    ;\If hammer throw timer ($03A2) is not 00
CODE_03CE82:    BNE CODE_03CE9B         ; $03:CE82: D0 17       ;/Branch
CODE_03CE84:    LDY $06CC               ; $03:CE84: AC CC 06    ;\
CODE_03CE87:    LDA DATA_03CE5D,y       ; $03:CE87: B9 5D CE    ; | Set hammer throwing timer according to hard world (post 5-3) flag
CODE_03CE8A:    STA $03A2,x             ; $03:CE8A: 9D A2 03    ;/
CODE_03CE8D:    JSR CODE_03BB8E         ; $03:CE8D: 20 8E BB    ;
CODE_03CE90:    BCC CODE_03CE9B         ; $03:CE90: 90 09       ;
CODE_03CE92:    LDA $29,x               ; $03:CE92: B5 29       ;
CODE_03CE94:    ORA #$08                ; $03:CE94: 09 08       ;
CODE_03CE96:    STA $29,x               ; $03:CE96: 95 29       ;
CODE_03CE98:    JMP CODE_03CEE9         ; $03:CE98: 4C E9 CE    ;

CODE_03CE9B:    DEC $03A2,x             ; $03:CE9B: DE A2 03    ;
CODE_03CE9E:    JMP CODE_03CEE9         ; $03:CE9E: 4C E9 CE    ;

DATA_03CEA1:    db $20,$37                                      ;

CODE_03CEA3:    LDA $29,x               ; $03:CEA3: B5 29       ;
CODE_03CEA5:    AND #$07                ; $03:CEA5: 29 07       ;
CODE_03CEA7:    CMP #$01                ; $03:CEA7: C9 01       ;
CODE_03CEA9:    BEQ CODE_03CEE9         ; $03:CEA9: F0 3E       ;
CODE_03CEAB:    STZ $00                 ; $03:CEAB: 64 00       ;
CODE_03CEAD:    LDY #$FA                ; $03:CEAD: A0 FA       ;
CODE_03CEAF:    LDA $0238,x             ; $03:CEAF: BD 38 02    ;
CODE_03CEB2:    BMI CODE_03CEC7         ; $03:CEB2: 30 13       ;
CODE_03CEB4:    LDY #$FD                ; $03:CEB4: A0 FD       ;
CODE_03CEB6:    CMP #$70                ; $03:CEB6: C9 70       ;
CODE_03CEB8:    INC $00                 ; $03:CEB8: E6 00       ;
CODE_03CEBA:    BCC CODE_03CEC7         ; $03:CEBA: 90 0B       ;
CODE_03CEBC:    DEC $00                 ; $03:CEBC: C6 00       ;
CODE_03CEBE:    LDA $07B8,x             ; $03:CEBE: BD B8 07    ;
CODE_03CEC1:    AND #$01                ; $03:CEC1: 29 01       ;
CODE_03CEC3:    BNE CODE_03CEC7         ; $03:CEC3: D0 02       ;
CODE_03CEC5:    LDY #$FA                ; $03:CEC5: A0 FA       ;
CODE_03CEC7:    STY $A1,x               ; $03:CEC7: 94 A1       ;
CODE_03CEC9:    LDA $29,x               ; $03:CEC9: B5 29       ;
CODE_03CECB:    ORA #$01                ; $03:CECB: 09 01       ;
CODE_03CECD:    STA $29,x               ; $03:CECD: 95 29       ;
CODE_03CECF:    LDA $00                 ; $03:CECF: A5 00       ;
CODE_03CED1:    AND $07B9,x             ; $03:CED1: 3D B9 07    ;
CODE_03CED4:    TAY                     ; $03:CED4: A8          ;
CODE_03CED5:    LDA $06CC               ; $03:CED5: AD CC 06    ;
CODE_03CED8:    BNE CODE_03CEDB         ; $03:CED8: D0 01       ;
CODE_03CEDA:    TAY                     ; $03:CEDA: A8          ;
CODE_03CEDB:    LDA DATA_03CEA1,y       ; $03:CEDB: B9 A1 CE    ;
CODE_03CEDE:    STA $0792,x             ; $03:CEDE: 9D 92 07    ;
CODE_03CEE1:    LDA $07B8,x             ; $03:CEE1: BD B8 07    ;
CODE_03CEE4:    ORA #$C0                ; $03:CEE4: 09 C0       ;
CODE_03CEE6:    STA $020F,x             ; $03:CEE6: 9D 0F 02    ;
CODE_03CEE9:    LDY #$FC                ; $03:CEE9: A0 FC       ; Hammer bros forwards walking speed
CODE_03CEEB:    LDA $09                 ; $03:CEEB: A5 09       ;
CODE_03CEED:    AND #$40                ; $03:CEED: 29 40       ;
CODE_03CEEF:    BNE CODE_03CEF3         ; $03:CEEF: D0 02       ;
CODE_03CEF1:    LDY #$04                ; $03:CEF1: A0 04       ;\ Hammer bros backwards walking speed
CODE_03CEF3:    STY $5E,x               ; $03:CEF3: 94 5E       ;/
CODE_03CEF5:    LDY #$01                ; $03:CEF5: A0 01       ; Set sprite direction to right
CODE_03CEF7:    JSR CODE_03E8BC         ; $03:CEF7: 20 BC E8    ;\SUB_HORZ_POS
CODE_03CEFA:    BMI CODE_03CF06         ; $03:CEFA: 30 0A       ;/ Branch if player is to the right of the hammer bros.
CODE_03CEFC:    INY                     ; $03:CEFC: C8          ; Set sprite direction to left
CODE_03CEFD:    LDA $07A2,x             ; $03:CEFD: BD A2 07    ;\ Check if Hammer Bros. has waited long enough
CODE_03CF00:    BNE CODE_03CF06         ; $03:CF00: D0 04       ;/
CODE_03CF02:    LDA #$F8                ; $03:CF02: A9 F8       ;\ Hammer bros forwards walking speed after he has waited long enough.
CODE_03CF04:    STA $5E,x               ; $03:CF04: 95 5E       ;/
CODE_03CF06:    STY $47,x               ; $03:CF06: 94 47       ;Set sprite direction
CODE_03CF08:    LDY #$00                ; $03:CF08: A0 00       ;
CODE_03CF0A:    LDA $29,x               ; $03:CF0A: B5 29       ;
CODE_03CF0C:    AND #$40                ; $03:CF0C: 29 40       ;
CODE_03CF0E:    BNE CODE_03CF29         ; $03:CF0E: D0 19       ;
CODE_03CF10:    LDA $29,x               ; $03:CF10: B5 29       ;
CODE_03CF12:    ASL A                   ; $03:CF12: 0A          ;
CODE_03CF13:    BCS CODE_03CF45         ; $03:CF13: B0 30       ;
CODE_03CF15:    LDA $29,x               ; $03:CF15: B5 29       ;
CODE_03CF17:    AND #$20                ; $03:CF17: 29 20       ;
CODE_03CF19:    BNE CODE_03CF76         ; $03:CF19: D0 5B       ;
CODE_03CF1B:    LDA $29,x               ; $03:CF1B: B5 29       ;
CODE_03CF1D:    AND #$07                ; $03:CF1D: 29 07       ;
CODE_03CF1F:    BEQ CODE_03CF45         ; $03:CF1F: F0 24       ;
CODE_03CF21:    CMP #$05                ; $03:CF21: C9 05       ;
CODE_03CF23:    BEQ CODE_03CF29         ; $03:CF23: F0 04       ;
CODE_03CF25:    CMP #$03                ; $03:CF25: C9 03       ;
CODE_03CF27:    BCS CODE_03CF59         ; $03:CF27: B0 30       ;
CODE_03CF29:    JSR CODE_03C113         ; $03:CF29: 20 13 C1    ;
CODE_03CF2C:    LDY #$00                ; $03:CF2C: A0 00       ;
CODE_03CF2E:    LDA $29,x               ; $03:CF2E: B5 29       ;
CODE_03CF30:    CMP #$02                ; $03:CF30: C9 02       ;
CODE_03CF32:    BEQ CODE_03CF40         ; $03:CF32: F0 0C       ;
CODE_03CF34:    AND #$40                ; $03:CF34: 29 40       ;
CODE_03CF36:    BEQ CODE_03CF45         ; $03:CF36: F0 0D       ;
CODE_03CF38:    LDA $1C,x               ; $03:CF38: B5 1C       ;
CODE_03CF3A:    CMP #$2E                ; $03:CF3A: C9 2E       ;
CODE_03CF3C:    BEQ CODE_03CF45         ; $03:CF3C: F0 07       ;
CODE_03CF3E:    BNE CODE_03CF43         ; $03:CF3E: D0 03       ;
CODE_03CF40:    JMP CODE_03C0AD         ; $03:CF40: 4C AD C0    ;

CODE_03CF43:    LDY #$01                ; $03:CF43: A0 01       ;
CODE_03CF45:    LDA $5E,x               ; $03:CF45: B5 5E       ;
CODE_03CF47:    PHA                     ; $03:CF47: 48          ;
CODE_03CF48:    BPL CODE_03CF4C         ; $03:CF48: 10 02       ;
CODE_03CF4A:    INY                     ; $03:CF4A: C8          ;
CODE_03CF4B:    INY                     ; $03:CF4B: C8          ;
CODE_03CF4C:    CLC                     ; $03:CF4C: 18          ;
CODE_03CF4D:    ADC DATA_03CE5F,y       ; $03:CF4D: 79 5F CE    ;
CODE_03CF50:    STA $5E,x               ; $03:CF50: 95 5E       ;
CODE_03CF52:    JSR CODE_03C0AD         ; $03:CF52: 20 AD C0    ;
CODE_03CF55:    PLA                     ; $03:CF55: 68          ;
CODE_03CF56:    STA $5E,x               ; $03:CF56: 95 5E       ;
CODE_03CF58:    RTS                     ; $03:CF58: 60          ;

CODE_03CF59:    LDA $07A2,x             ; $03:CF59: BD A2 07    ;
CODE_03CF5C:    BNE CODE_03CF7C         ; $03:CF5C: D0 1E       ;
CODE_03CF5E:    STA $29,x               ; $03:CF5E: 95 29       ;
CODE_03CF60:    LDA $09                 ; $03:CF60: A5 09       ;
CODE_03CF62:    AND #$01                ; $03:CF62: 29 01       ;
CODE_03CF64:    TAY                     ; $03:CF64: A8          ;
CODE_03CF65:    INY                     ; $03:CF65: C8          ;
CODE_03CF66:    STY $47,x               ; $03:CF66: 94 47       ;
CODE_03CF68:    DEY                     ; $03:CF68: 88          ;
CODE_03CF69:    LDA $076A               ; $03:CF69: AD 6A 07    ;"More difficult quest" flag
CODE_03CF6C:    BEQ CODE_03CF70         ; $03:CF6C: F0 02       ;
CODE_03CF6E:    INY                     ; $03:CF6E: C8          ;
CODE_03CF6F:    INY                     ; $03:CF6F: C8          ;
CODE_03CF70:    LDA DATA_03CE63,y       ; $03:CF70: B9 63 CE    ;
CODE_03CF73:    STA $5E,x               ; $03:CF73: 95 5E       ;
CODE_03CF75:    RTS                     ; $03:CF75: 60          ;

CODE_03CF76:    JSR CODE_03C113         ; $03:CF76: 20 13 C1    ;
CODE_03CF79:    JMP CODE_03C0AD         ; $03:CF79: 4C AD C0    ;

CODE_03CF7C:    CMP #$0E                ; $03:CF7C: C9 0E       ;
CODE_03CF7E:    BNE CODE_03CF89         ; $03:CF7E: D0 09       ;
CODE_03CF80:    LDA $1C,x               ; $03:CF80: B5 1C       ;
CODE_03CF82:    CMP #$06                ; $03:CF82: C9 06       ;
CODE_03CF84:    BNE CODE_03CF89         ; $03:CF84: D0 03       ;
CODE_03CF86:    JSR CODE_03CDE2         ; $03:CF86: 20 E2 CD    ; Erase sprite
CODE_03CF89:    RTS                     ; $03:CF89: 60          ;

CODE_03CF8A:    JSR CODE_03C140         ; $03:CF8A: 20 40 C1    ;
CODE_03CF8D:    JMP CODE_03C0AD         ; $03:CF8D: 4C AD C0    ;

CODE_03CF90:    LDA $A1,x               ; $03:CF90: B5 A1       ;
CODE_03CF92:    ORA $043D,x             ; $03:CF92: 1D 3D 04    ;
CODE_03CF95:    BNE CODE_03CFAC         ; $03:CF95: D0 15       ;
CODE_03CF97:    STA $041D,x             ; $03:CF97: 9D 1D 04    ;
CODE_03CF9A:    LDA $0238,x             ; $03:CF9A: BD 38 02    ;
CODE_03CF9D:    CMP $0402,x             ; $03:CF9D: DD 02 04    ;
CODE_03CFA0:    BCS CODE_03CFAC         ; $03:CFA0: B0 0A       ;
CODE_03CFA2:    LDA $09                 ; $03:CFA2: A5 09       ;
CODE_03CFA4:    AND #$07                ; $03:CFA4: 29 07       ;
CODE_03CFA6:    BNE CODE_03CFAB         ; $03:CFA6: D0 03       ;
CODE_03CFA8:    INC $0238,x             ; $03:CFA8: FE 38 02    ;
CODE_03CFAB:    RTS                     ; $03:CFAB: 60          ;

CODE_03CFAC:    LDA $0238,x             ; $03:CFAC: BD 38 02    ;
CODE_03CFAF:    CMP $5E,x               ; $03:CFAF: D5 5E       ;
CODE_03CFB1:    BCC CODE_03CFB6         ; $03:CFB1: 90 03       ;
CODE_03CFB3:    JMP CODE_03C123         ; $03:CFB3: 4C 23 C1    ;

CODE_03CFB6:    JMP CODE_03C11F         ; $03:CFB6: 4C 1F C1    ;

CODE_03CFB9:    JSR CODE_03CFDB         ; $03:CFB9: 20 DB CF    ;
CODE_03CFBC:    JSR CODE_03CFFC         ; $03:CFBC: 20 FC CF    ;
CODE_03CFBF:    LDY #$01                ; $03:CFBF: A0 01       ;
CODE_03CFC1:    LDA $09                 ; $03:CFC1: A5 09       ;
CODE_03CFC3:    AND #$03                ; $03:CFC3: 29 03       ;
CODE_03CFC5:    BNE CODE_03CFDA         ; $03:CFC5: D0 13       ;
CODE_03CFC7:    LDA $09                 ; $03:CFC7: A5 09       ;
CODE_03CFC9:    AND #$40                ; $03:CFC9: 29 40       ;
CODE_03CFCB:    BNE CODE_03CFCF         ; $03:CFCB: D0 02       ;
CODE_03CFCD:    LDY #$FF                ; $03:CFCD: A0 FF       ;
CODE_03CFCF:    STY $00                 ; $03:CFCF: 84 00       ;
CODE_03CFD1:    LDA $0238,x             ; $03:CFD1: BD 38 02    ;
CODE_03CFD4:    CLC                     ; $03:CFD4: 18          ;
CODE_03CFD5:    ADC $00                 ; $03:CFD5: 65 00       ;
CODE_03CFD7:    STA $0238,x             ; $03:CFD7: 9D 38 02    ;
CODE_03CFDA:    RTS                     ; $03:CFDA: 60          ;

CODE_03CFDB:    LDA #$13                ; $03:CFDB: A9 13       ;
CODE_03CFDD:    STA $01                 ; $03:CFDD: 85 01       ;
CODE_03CFDF:    LDA $09                 ; $03:CFDF: A5 09       ;
CODE_03CFE1:    AND #$03                ; $03:CFE1: 29 03       ;
CODE_03CFE3:    BNE CODE_03CFF2         ; $03:CFE3: D0 0D       ;
CODE_03CFE5:    LDY $5E,x               ; $03:CFE5: B4 5E       ;
CODE_03CFE7:    LDA $A1,x               ; $03:CFE7: B5 A1       ;
CODE_03CFE9:    LSR A                   ; $03:CFE9: 4A          ;
CODE_03CFEA:    BCS CODE_03CFF6         ; $03:CFEA: B0 0A       ;
CODE_03CFEC:    CPY $01                 ; $03:CFEC: C4 01       ;
CODE_03CFEE:    BEQ CODE_03CFF3         ; $03:CFEE: F0 03       ;
CODE_03CFF0:    INC $5E,x               ; $03:CFF0: F6 5E       ;
CODE_03CFF2:    RTS                     ; $03:CFF2: 60          ;

CODE_03CFF3:    INC $A1,x               ; $03:CFF3: F6 A1       ;
CODE_03CFF5:    RTS                     ; $03:CFF5: 60          ;

CODE_03CFF6:    TYA                     ; $03:CFF6: 98          ;
CODE_03CFF7:    BEQ CODE_03CFF3         ; $03:CFF7: F0 FA       ;
CODE_03CFF9:    DEC $5E,x               ; $03:CFF9: D6 5E       ;
CODE_03CFFB:    RTS                     ; $03:CFFB: 60          ;

CODE_03CFFC:    LDA $5E,x               ; $03:CFFC: B5 5E       ;
CODE_03CFFE:    PHA                     ; $03:CFFE: 48          ;
CODE_03CFFF:    LDY #$01                ; $03:CFFF: A0 01       ;
CODE_03D001:    LDA $A1,x               ; $03:D001: B5 A1       ;
CODE_03D003:    AND #$02                ; $03:D003: 29 02       ;
CODE_03D005:    BNE CODE_03D012         ; $03:D005: D0 0B       ;
CODE_03D007:    LDA $5E,x               ; $03:D007: B5 5E       ;
CODE_03D009:    EOR #$FF                ; $03:D009: 49 FF       ;
CODE_03D00B:    CLC                     ; $03:D00B: 18          ;
CODE_03D00C:    ADC #$01                ; $03:D00C: 69 01       ;
CODE_03D00E:    STA $5E,x               ; $03:D00E: 95 5E       ;
CODE_03D010:    LDY #$02                ; $03:D010: A0 02       ;
CODE_03D012:    STY $47,x               ; $03:D012: 94 47       ;
CODE_03D014:    JSR CODE_03C0AD         ; $03:D014: 20 AD C0    ;
CODE_03D017:    STA $00                 ; $03:D017: 85 00       ;
CODE_03D019:    PLA                     ; $03:D019: 68          ;
CODE_03D01A:    STA $5E,x               ; $03:D01A: 95 5E       ;
CODE_03D01C:    RTS                     ; $03:D01C: 60          ;

DATA_03D01D:    db $3F,$03                                      ;

CODE_03D01F:    LDA $29,x               ; $03:D01F: B5 29       ;
CODE_03D021:    AND #$20                ; $03:D021: 29 20       ;
CODE_03D023:    BNE CODE_03D078         ; $03:D023: D0 53       ;
CODE_03D025:    LDY $06CC               ; $03:D025: AC CC 06    ;
CODE_03D028:    LDA $07B8,x             ; $03:D028: BD B8 07    ;
CODE_03D02B:    AND DATA_03D01D,y       ; $03:D02B: 39 1D D0    ;
CODE_03D02E:    BNE CODE_03D042         ; $03:D02E: D0 12       ;
CODE_03D030:    TXA                     ; $03:D030: 8A          ;
CODE_03D031:    LSR A                   ; $03:D031: 4A          ;
CODE_03D032:    BCC CODE_03D038         ; $03:D032: 90 04       ;
CODE_03D034:    LDY $46                 ; $03:D034: A4 46       ;
CODE_03D036:    BCS CODE_03D040         ; $03:D036: B0 08       ;
CODE_03D038:    LDY #$02                ; $03:D038: A0 02       ;
CODE_03D03A:    JSR CODE_03E8BC         ; $03:D03A: 20 BC E8    ;
CODE_03D03D:    BPL CODE_03D040         ; $03:D03D: 10 01       ;
CODE_03D03F:    DEY                     ; $03:D03F: 88          ;
CODE_03D040:    STY $47,x               ; $03:D040: 94 47       ;
CODE_03D042:    JSR CODE_03D07B         ; $03:D042: 20 7B D0    ;
CODE_03D045:    LDA $0238,x             ; $03:D045: BD 38 02    ;
CODE_03D048:    SEC                     ; $03:D048: 38          ;
CODE_03D049:    SBC $043D,x             ; $03:D049: FD 3D 04    ;
CODE_03D04C:    CMP #$20                ; $03:D04C: C9 20       ;
CODE_03D04E:    BCC CODE_03D053         ; $03:D04E: 90 03       ;
CODE_03D050:    STA $0238,x             ; $03:D050: 9D 38 02    ;
CODE_03D053:    LDY $47,x               ; $03:D053: B4 47       ;
CODE_03D055:    DEY                     ; $03:D055: 88          ;
CODE_03D056:    BNE CODE_03D068         ; $03:D056: D0 10       ;
CODE_03D058:    LDA $021A,x             ; $03:D058: BD 1A 02    ;
CODE_03D05B:    CLC                     ; $03:D05B: 18          ;
CODE_03D05C:    ADC $5E,x               ; $03:D05C: 75 5E       ;
CODE_03D05E:    STA $021A,x             ; $03:D05E: 9D 1A 02    ;
CODE_03D061:    LDA $79,x               ; $03:D061: B5 79       ;
CODE_03D063:    ADC #$00                ; $03:D063: 69 00       ;
CODE_03D065:    STA $79,x               ; $03:D065: 95 79       ;
CODE_03D067:    RTS                     ; $03:D067: 60          ;

CODE_03D068:    LDA $021A,x             ; $03:D068: BD 1A 02    ;\
CODE_03D06B:    SEC                     ; $03:D06B: 38          ; |
CODE_03D06C:    SBC $5E,x               ; $03:D06C: F5 5E       ; | Subtract sprite X position with sprite X speed
CODE_03D06E:    STA $021A,x             ; $03:D06E: 9D 1A 02    ; |
CODE_03D071:    LDA $79,x               ; $03:D071: B5 79       ; |
CODE_03D073:    SBC #$00                ; $03:D073: E9 00       ; |
CODE_03D075:    STA $79,x               ; $03:D075: 95 79       ;/
CODE_03D077:    RTS                     ; $03:D077: 60          ;

CODE_03D078:    JMP CODE_03C13A         ; $03:D078: 4C 3A C1    ;

CODE_03D07B:    LDA $A1,x               ; $03:D07B: B5 A1       ;
CODE_03D07D:    AND #$02                ; $03:D07D: 29 02       ;
CODE_03D07F:    BNE CODE_03D0B8         ; $03:D07F: D0 37       ;
CODE_03D081:    LDA $09                 ; $03:D081: A5 09       ;
CODE_03D083:    AND #$07                ; $03:D083: 29 07       ;
CODE_03D085:    PHA                     ; $03:D085: 48          ;
CODE_03D086:    LDA $A1,x               ; $03:D086: B5 A1       ;
CODE_03D088:    LSR A                   ; $03:D088: 4A          ;
CODE_03D089:    BCS CODE_03D0A0         ; $03:D089: B0 15       ;
CODE_03D08B:    PLA                     ; $03:D08B: 68          ;
CODE_03D08C:    BNE CODE_03D09F         ; $03:D08C: D0 11       ;
CODE_03D08E:    LDA $043D,x             ; $03:D08E: BD 3D 04    ;
CODE_03D091:    CLC                     ; $03:D091: 18          ;
CODE_03D092:    ADC #$01                ; $03:D092: 69 01       ;
CODE_03D094:    STA $043D,x             ; $03:D094: 9D 3D 04    ;
CODE_03D097:    STA $5E,x               ; $03:D097: 95 5E       ;
CODE_03D099:    CMP #$02                ; $03:D099: C9 02       ;
CODE_03D09B:    BNE CODE_03D09F         ; $03:D09B: D0 02       ;
CODE_03D09D:    INC $A1,x               ; $03:D09D: F6 A1       ;
CODE_03D09F:    RTS                     ; $03:D09F: 60          ;

CODE_03D0A0:    PLA                     ; $03:D0A0: 68          ;
CODE_03D0A1:    BNE CODE_03D0B7         ; $03:D0A1: D0 14       ;
CODE_03D0A3:    LDA $043D,x             ; $03:D0A3: BD 3D 04    ;
CODE_03D0A6:    SEC                     ; $03:D0A6: 38          ;
CODE_03D0A7:    SBC #$01                ; $03:D0A7: E9 01       ;
CODE_03D0A9:    STA $043D,x             ; $03:D0A9: 9D 3D 04    ;
CODE_03D0AC:    STA $5E,x               ; $03:D0AC: 95 5E       ;
CODE_03D0AE:    BNE CODE_03D0B7         ; $03:D0AE: D0 07       ;
CODE_03D0B0:    INC $A1,x               ; $03:D0B0: F6 A1       ;
CODE_03D0B2:    LDA #$02                ; $03:D0B2: A9 02       ;
CODE_03D0B4:    STA $07A2,x             ; $03:D0B4: 9D A2 07    ;
CODE_03D0B7:    RTS                     ; $03:D0B7: 60          ;

CODE_03D0B8:    LDA $07A2,x             ; $03:D0B8: BD A2 07    ;
CODE_03D0BB:    BEQ CODE_03D0C6         ; $03:D0BB: F0 09       ;
CODE_03D0BD:    LDA $09                 ; $03:D0BD: A5 09       ;
CODE_03D0BF:    LSR A                   ; $03:D0BF: 4A          ;
CODE_03D0C0:    BCS CODE_03D0C5         ; $03:D0C0: B0 03       ;
CODE_03D0C2:    INC $0238,x             ; $03:D0C2: FE 38 02    ;
CODE_03D0C5:    RTS                     ; $03:D0C5: 60          ;

CODE_03D0C6:    LDA $0238,x             ; $03:D0C6: BD 38 02    ;
CODE_03D0C9:    ADC #$10                ; $03:D0C9: 69 10       ;
CODE_03D0CB:    CMP $0237               ; $03:D0CB: CD 37 02    ;
CODE_03D0CE:    BCC CODE_03D0BD         ; $03:D0CE: 90 ED       ;
CODE_03D0D0:    LDA #$00                ; $03:D0D0: A9 00       ;
CODE_03D0D2:    STA $A1,x               ; $03:D0D2: 95 A1       ;
CODE_03D0D4:    RTS                     ; $03:D0D4: 60          ;

CODE_03D0D5:    LDA $29,x               ; $03:D0D5: B5 29       ;
CODE_03D0D7:    AND #$20                ; $03:D0D7: 29 20       ;
CODE_03D0D9:    BEQ CODE_03D0DE         ; $03:D0D9: F0 03       ;
CODE_03D0DB:    JMP CODE_03C140         ; $03:D0DB: 4C 40 C1    ;

CODE_03D0DE:    LDA #$E8                ; $03:D0DE: A9 E8       ;
CODE_03D0E0:    STA $5E,x               ; $03:D0E0: 95 5E       ;
CODE_03D0E2:    JMP CODE_03C0AD         ; $03:D0E2: 4C AD C0    ;

DATA_03D0E5:    db $40,$80,$04,$04                              ;

CODE_03D0E9:    LDA $29,x               ; $03:D0E9: B5 29       ;
CODE_03D0EB:    AND #$20                ; $03:D0EB: 29 20       ;
CODE_03D0ED:    BEQ CODE_03D0F2         ; $03:D0ED: F0 03       ;
CODE_03D0EF:    JMP CODE_03C13A         ; $03:D0EF: 4C 3A C1    ;

CODE_03D0F2:    STA $03                 ; $03:D0F2: 85 03       ;
CODE_03D0F4:    LDA $1C,x               ; $03:D0F4: B5 1C       ;
CODE_03D0F6:    SEC                     ; $03:D0F6: 38          ;
CODE_03D0F7:    SBC #$0A                ; $03:D0F7: E9 0A       ;
CODE_03D0F9:    TAY                     ; $03:D0F9: A8          ;
CODE_03D0FA:    LDA DATA_03D0E5,y       ; $03:D0FA: B9 E5 D0    ;
CODE_03D0FD:    STA $02                 ; $03:D0FD: 85 02       ;
CODE_03D0FF:    LDA $0402,x             ; $03:D0FF: BD 02 04    ;
CODE_03D102:    SEC                     ; $03:D102: 38          ;
CODE_03D103:    SBC $02                 ; $03:D103: E5 02       ;
CODE_03D105:    STA $0402,x             ; $03:D105: 9D 02 04    ;
CODE_03D108:    LDA $021A,x             ; $03:D108: BD 1A 02    ;
CODE_03D10B:    SBC #$00                ; $03:D10B: E9 00       ;
CODE_03D10D:    STA $021A,x             ; $03:D10D: 9D 1A 02    ;
CODE_03D110:    LDA $79,x               ; $03:D110: B5 79       ;
CODE_03D112:    SBC #$00                ; $03:D112: E9 00       ;
CODE_03D114:    STA $79,x               ; $03:D114: 95 79       ;
CODE_03D116:    LDA #$20                ; $03:D116: A9 20       ;
CODE_03D118:    STA $02                 ; $03:D118: 85 02       ;
CODE_03D11A:    CPX #$02                ; $03:D11A: E0 02       ;
CODE_03D11C:    BCC CODE_03D16B         ; $03:D11C: 90 4D       ;
CODE_03D11E:    LDA $5E,x               ; $03:D11E: B5 5E       ;
CODE_03D120:    CMP #$10                ; $03:D120: C9 10       ;
CODE_03D122:    BCC CODE_03D13B         ; $03:D122: 90 17       ;
CODE_03D124:    LDA $041D,x             ; $03:D124: BD 1D 04    ;
CODE_03D127:    CLC                     ; $03:D127: 18          ;
CODE_03D128:    ADC $02                 ; $03:D128: 65 02       ;
CODE_03D12A:    STA $041D,x             ; $03:D12A: 9D 1D 04    ;
CODE_03D12D:    LDA $0238,x             ; $03:D12D: BD 38 02    ;
CODE_03D130:    ADC $03                 ; $03:D130: 65 03       ;
CODE_03D132:    STA $0238,x             ; $03:D132: 9D 38 02    ;
CODE_03D135:    LDA $BC,x               ; $03:D135: B5 BC       ;
CODE_03D137:    ADC #$00                ; $03:D137: 69 00       ;
CODE_03D139:    BRA CODE_03D150         ; $03:D139: 80 15       ;

CODE_03D13B:    LDA $041D,x             ; $03:D13B: BD 1D 04    ;
CODE_03D13E:    SEC                     ; $03:D13E: 38          ;
CODE_03D13F:    SBC $02                 ; $03:D13F: E5 02       ;
CODE_03D141:    STA $041D,x             ; $03:D141: 9D 1D 04    ;
CODE_03D144:    LDA $0238,x             ; $03:D144: BD 38 02    ;
CODE_03D147:    SBC $03                 ; $03:D147: E5 03       ;
CODE_03D149:    STA $0238,x             ; $03:D149: 9D 38 02    ;
CODE_03D14C:    LDA $BC,x               ; $03:D14C: B5 BC       ;
CODE_03D14E:    SBC #$00                ; $03:D14E: E9 00       ;
CODE_03D150:    STA $BC,x               ; $03:D150: 95 BC       ;
CODE_03D152:    LDY #$00                ; $03:D152: A0 00       ;
CODE_03D154:    LDA $0238,x             ; $03:D154: BD 38 02    ;
CODE_03D157:    SEC                     ; $03:D157: 38          ;
CODE_03D158:    SBC $043D,x             ; $03:D158: FD 3D 04    ;
CODE_03D15B:    BPL CODE_03D164         ; $03:D15B: 10 07       ;
CODE_03D15D:    LDY #$10                ; $03:D15D: A0 10       ;
CODE_03D15F:    EOR #$FF                ; $03:D15F: 49 FF       ;
CODE_03D161:    CLC                     ; $03:D161: 18          ;
CODE_03D162:    ADC #$01                ; $03:D162: 69 01       ;
CODE_03D164:    CMP #$0F                ; $03:D164: C9 0F       ;
CODE_03D166:    BCC CODE_03D16B         ; $03:D166: 90 03       ;
CODE_03D168:    TYA                     ; $03:D168: 98          ;
CODE_03D169:    STA $5E,x               ; $03:D169: 95 5E       ;
CODE_03D16B:    RTS                     ; $03:D16B: 60          ;

DATA_03D16C:    db $00,$01,$03,$04,$05,$06,$07,$07              ;
                db $08,$00,$03,$06,$09,$0B,$0D,$0E              ;
                db $0F,$10,$00,$04,$09,$0D,$10,$13              ;
                db $16,$17,$18,$00,$06,$0C,$12,$16              ;
                db $1A,$1D,$1F,$20,$00,$07,$0F,$16              ;
                db $1C,$21,$25,$27,$28,$00,$09,$12              ;
                db $1B,$21,$27,$2C,$2F,$30,$00,$0B              ;
                db $15,$1F,$27,$2E,$33,$37,$38,$00              ;
                db $0C,$18,$24,$2D,$35,$3B,$3E,$40              ;
                db $00,$0E,$1B,$28,$32,$3B,$42,$46              ;
                db $48,$00,$0F,$1F,$2D,$38,$42,$4A              ;
                db $4E,$50,$00,$11,$22,$31,$3E,$49              ;
                db $51,$56,$58                                  ;

DATA_03D1CF:    db $01,$03,$02,$00                              ;

DATA_03D1D3:    db $00,$09,$12,$1B,$24,$2D,$36,$3F              ;
                db $48,$51,$5A,$63                              ;

DATA_03D1DF:    db $0C,$18                                      ;

CODE_03D1E1:    JSR CODE_03FDCB         ; $03:D1E1: 20 CB FD    ;
CODE_03D1E4:    LDA $03D1               ; $03:D1E4: AD D1 03    ;
CODE_03D1E7:    AND #$08                ; $03:D1E7: 29 08       ;
CODE_03D1E9:    BNE CODE_03D25D         ; $03:D1E9: D0 72       ;
CODE_03D1EB:    LDA $0747               ; $03:D1EB: AD 47 07    ;
CODE_03D1EE:    BNE CODE_03D1FA         ; $03:D1EE: D0 0A       ;
CODE_03D1F0:    LDA $0388,x             ; $03:D1F0: BD 88 03    ;
CODE_03D1F3:    JSR CODE_03D8F1         ; $03:D1F3: 20 F1 D8    ;
CODE_03D1F6:    AND #$1F                ; $03:D1F6: 29 1F       ;
CODE_03D1F8:    STA $A1,x               ; $03:D1F8: 95 A1       ;
CODE_03D1FA:    LDA $A1,x               ; $03:D1FA: B5 A1       ;
CODE_03D1FC:    LDY $1C,x               ; $03:D1FC: B4 1C       ;
CODE_03D1FE:    CPY #$1F                ; $03:D1FE: C0 1F       ;
CODE_03D200:    BCC CODE_03D20F         ; $03:D200: 90 0D       ;
CODE_03D202:    CMP #$08                ; $03:D202: C9 08       ;
CODE_03D204:    BEQ CODE_03D20A         ; $03:D204: F0 04       ;
CODE_03D206:    CMP #$18                ; $03:D206: C9 18       ;
CODE_03D208:    BNE CODE_03D20F         ; $03:D208: D0 05       ;
CODE_03D20A:    CLC                     ; $03:D20A: 18          ;
CODE_03D20B:    ADC #$01                ; $03:D20B: 69 01       ;
CODE_03D20D:    STA $A1,x               ; $03:D20D: 95 A1       ;
CODE_03D20F:    STA $EF                 ; $03:D20F: 85 EF       ;
CODE_03D211:    JSR CODE_03FD39         ; $03:D211: 20 39 FD    ;
CODE_03D214:    JSR CODE_03D346         ; $03:D214: 20 46 D3    ;
CODE_03D217:    LDY $0B46,x             ; $03:D217: BC 46 0B    ;
CODE_03D21A:    LDA $03B9               ; $03:D21A: AD B9 03    ;
CODE_03D21D:    STA $0901,y             ; $03:D21D: 99 01 09    ;
CODE_03D220:    STA $07                 ; $03:D220: 85 07       ;
CODE_03D222:    LDA $03AE               ; $03:D222: AD AE 03    ;
CODE_03D225:    STA $0900,y             ; $03:D225: 99 00 09    ;
CODE_03D228:    STA $06                 ; $03:D228: 85 06       ;
CODE_03D22A:    LDA #$01                ; $03:D22A: A9 01       ;
CODE_03D22C:    STA $00                 ; $03:D22C: 85 00       ;
CODE_03D22E:    JSR CODE_03D2BB         ; $03:D22E: 20 BB D2    ;
CODE_03D231:    LDY #$05                ; $03:D231: A0 05       ;
CODE_03D233:    LDA $1C,x               ; $03:D233: B5 1C       ;
CODE_03D235:    CMP #$1F                ; $03:D235: C9 1F       ;
CODE_03D237:    BCC CODE_03D23B         ; $03:D237: 90 02       ;
CODE_03D239:    LDY #$0B                ; $03:D239: A0 0B       ;
CODE_03D23B:    STY $ED                 ; $03:D23B: 84 ED       ;
CODE_03D23D:    STZ $00                 ; $03:D23D: 64 00       ;
CODE_03D23F:    LDA $EF                 ; $03:D23F: A5 EF       ;
CODE_03D241:    JSR CODE_03D346         ; $03:D241: 20 46 D3    ;
CODE_03D244:    JSR CODE_03D25E         ; $03:D244: 20 5E D2    ;
CODE_03D247:    LDA $00                 ; $03:D247: A5 00       ;
CODE_03D249:    CMP #$04                ; $03:D249: C9 04       ;
CODE_03D24B:    BNE CODE_03D255         ; $03:D24B: D0 08       ;
CODE_03D24D:    LDY $06CF               ; $03:D24D: AC CF 06    ;
CODE_03D250:    LDA $0B46,y             ; $03:D250: B9 46 0B    ;
CODE_03D253:    STA $06                 ; $03:D253: 85 06       ;
CODE_03D255:    INC $00                 ; $03:D255: E6 00       ;
CODE_03D257:    LDA $00                 ; $03:D257: A5 00       ;
CODE_03D259:    CMP $ED                 ; $03:D259: C5 ED       ;
CODE_03D25B:    BCC CODE_03D23F         ; $03:D25B: 90 E2       ;
CODE_03D25D:    RTS                     ; $03:D25D: 60          ;

CODE_03D25E:    LDA $03                 ; $03:D25E: A5 03       ;
CODE_03D260:    STA $05                 ; $03:D260: 85 05       ;
CODE_03D262:    LDY $06                 ; $03:D262: A4 06       ;
CODE_03D264:    LDA $01                 ; $03:D264: A5 01       ;
CODE_03D266:    LSR $05                 ; $03:D266: 46 05       ;
CODE_03D268:    BCS CODE_03D26E         ; $03:D268: B0 04       ;
CODE_03D26A:    EOR #$FF                ; $03:D26A: 49 FF       ;
CODE_03D26C:    ADC #$01                ; $03:D26C: 69 01       ;
CODE_03D26E:    CLC                     ; $03:D26E: 18          ;
CODE_03D26F:    ADC $03AE               ; $03:D26F: 6D AE 03    ;
CODE_03D272:    STA $0900,y             ; $03:D272: 99 00 09    ;
CODE_03D275:    STA $06                 ; $03:D275: 85 06       ;
CODE_03D277:    CMP $03AE               ; $03:D277: CD AE 03    ;
CODE_03D27A:    BCS CODE_03D285         ; $03:D27A: B0 09       ;
CODE_03D27C:    LDA $03AE               ; $03:D27C: AD AE 03    ;
CODE_03D27F:    SEC                     ; $03:D27F: 38          ;
CODE_03D280:    SBC $06                 ; $03:D280: E5 06       ;
CODE_03D282:    JMP CODE_03D289         ; $03:D282: 4C 89 D2    ;

CODE_03D285:    SEC                     ; $03:D285: 38          ;
CODE_03D286:    SBC $03AE               ; $03:D286: ED AE 03    ;
CODE_03D289:    CMP #$59                ; $03:D289: C9 59       ;
CODE_03D28B:    BCC CODE_03D291         ; $03:D28B: 90 04       ;
CODE_03D28D:    LDA #$F8                ; $03:D28D: A9 F8       ;
CODE_03D28F:    BNE CODE_03D2A6         ; $03:D28F: D0 15       ;
CODE_03D291:    LDA $03B9               ; $03:D291: AD B9 03    ;
CODE_03D294:    CMP #$F8                ; $03:D294: C9 F8       ;
CODE_03D296:    BEQ CODE_03D2A6         ; $03:D296: F0 0E       ;
CODE_03D298:    LDA $02                 ; $03:D298: A5 02       ;
CODE_03D29A:    LSR $05                 ; $03:D29A: 46 05       ;
CODE_03D29C:    BCS CODE_03D2A2         ; $03:D29C: B0 04       ;
CODE_03D29E:    EOR #$FF                ; $03:D29E: 49 FF       ;
CODE_03D2A0:    ADC #$01                ; $03:D2A0: 69 01       ;
CODE_03D2A2:    CLC                     ; $03:D2A2: 18          ;
CODE_03D2A3:    ADC $03B9               ; $03:D2A3: 6D B9 03    ;
CODE_03D2A6:    STA $0901,y             ; $03:D2A6: 99 01 09    ;
CODE_03D2A9:    STA $07                 ; $03:D2A9: 85 07       ;
CODE_03D2AB:    CMP #$F0                ; $03:D2AB: C9 F0       ;
CODE_03D2AD:    BCC CODE_03D2B6         ; $03:D2AD: 90 07       ;
CODE_03D2AF:    LDA #$01                ; $03:D2AF: A9 01       ;
CODE_03D2B1:    STA $0D00,y             ; $03:D2B1: 99 00 0D    ;
CODE_03D2B4:    BRA CODE_03D2BB         ; $03:D2B4: 80 05       ;

CODE_03D2B6:    LDA #$00                ; $03:D2B6: A9 00       ;
CODE_03D2B8:    STA $0D00,y             ; $03:D2B8: 99 00 0D    ;
CODE_03D2BB:    JSR CODE_03F48B         ; $03:D2BB: 20 8B F4    ;
CODE_03D2BE:    TYA                     ; $03:D2BE: 98          ;
CODE_03D2BF:    PHA                     ; $03:D2BF: 48          ;
CODE_03D2C0:    LDA $07AF               ; $03:D2C0: AD AF 07    ;
CODE_03D2C3:    ORA $0747               ; $03:D2C3: 0D 47 07    ;
CODE_03D2C6:    BNE CODE_03D33D         ; $03:D2C6: D0 75       ;
CODE_03D2C8:    STA $05                 ; $03:D2C8: 85 05       ;
CODE_03D2CA:    LDY $BB                 ; $03:D2CA: A4 BB       ;
CODE_03D2CC:    DEY                     ; $03:D2CC: 88          ;
CODE_03D2CD:    BNE CODE_03D33D         ; $03:D2CD: D0 6E       ;
CODE_03D2CF:    LDY $0237               ; $03:D2CF: AC 37 02    ;
CODE_03D2D2:    LDA $0754               ; $03:D2D2: AD 54 07    ;
CODE_03D2D5:    BNE CODE_03D2DC         ; $03:D2D5: D0 05       ;
CODE_03D2D7:    LDA $0714               ; $03:D2D7: AD 14 07    ;
CODE_03D2DA:    BEQ CODE_03D2E5         ; $03:D2DA: F0 09       ;
CODE_03D2DC:    INC $05                 ; $03:D2DC: E6 05       ;
CODE_03D2DE:    INC $05                 ; $03:D2DE: E6 05       ;
CODE_03D2E0:    TYA                     ; $03:D2E0: 98          ;
CODE_03D2E1:    CLC                     ; $03:D2E1: 18          ;
CODE_03D2E2:    ADC #$18                ; $03:D2E2: 69 18       ;
CODE_03D2E4:    TAY                     ; $03:D2E4: A8          ;
CODE_03D2E5:    TYA                     ; $03:D2E5: 98          ;
CODE_03D2E6:    SEC                     ; $03:D2E6: 38          ;
CODE_03D2E7:    SBC $07                 ; $03:D2E7: E5 07       ;
CODE_03D2E9:    BPL CODE_03D2F0         ; $03:D2E9: 10 05       ;
CODE_03D2EB:    EOR #$FF                ; $03:D2EB: 49 FF       ;
CODE_03D2ED:    CLC                     ; $03:D2ED: 18          ;
CODE_03D2EE:    ADC #$01                ; $03:D2EE: 69 01       ;
CODE_03D2F0:    CMP #$08                ; $03:D2F0: C9 08       ;
CODE_03D2F2:    BCS CODE_03D310         ; $03:D2F2: B0 1C       ;
CODE_03D2F4:    LDA $06                 ; $03:D2F4: A5 06       ;
CODE_03D2F6:    CMP #$F0                ; $03:D2F6: C9 F0       ;
CODE_03D2F8:    BCS CODE_03D310         ; $03:D2F8: B0 16       ;
CODE_03D2FA:    LDA $03AD               ; $03:D2FA: AD AD 03    ;
CODE_03D2FD:    CLC                     ; $03:D2FD: 18          ;
CODE_03D2FE:    ADC #$04                ; $03:D2FE: 69 04       ;
CODE_03D300:    STA $04                 ; $03:D300: 85 04       ;
CODE_03D302:    SEC                     ; $03:D302: 38          ;
CODE_03D303:    SBC $06                 ; $03:D303: E5 06       ;
CODE_03D305:    BPL CODE_03D30C         ; $03:D305: 10 05       ;
CODE_03D307:    EOR #$FF                ; $03:D307: 49 FF       ;
CODE_03D309:    CLC                     ; $03:D309: 18          ;
CODE_03D30A:    ADC #$01                ; $03:D30A: 69 01       ;
CODE_03D30C:    CMP #$08                ; $03:D30C: C9 08       ;
CODE_03D30E:    BCC CODE_03D324         ; $03:D30E: 90 14       ;
CODE_03D310:    LDA $05                 ; $03:D310: A5 05       ;
CODE_03D312:    CMP #$02                ; $03:D312: C9 02       ;
CODE_03D314:    BEQ CODE_03D33D         ; $03:D314: F0 27       ;
CODE_03D316:    LDY $05                 ; $03:D316: A4 05       ;
CODE_03D318:    LDA $0237               ; $03:D318: AD 37 02    ;
CODE_03D31B:    CLC                     ; $03:D31B: 18          ;
CODE_03D31C:    ADC DATA_03D1DF,y       ; $03:D31C: 79 DF D1    ;
CODE_03D31F:    INC $05                 ; $03:D31F: E6 05       ;
CODE_03D321:    JMP CODE_03D2E6         ; $03:D321: 4C E6 D2    ;

CODE_03D324:    LDX #$01                ; $03:D324: A2 01       ;
CODE_03D326:    LDA $04                 ; $03:D326: A5 04       ;
CODE_03D328:    CMP $06                 ; $03:D328: C5 06       ;
CODE_03D32A:    BCS CODE_03D32D         ; $03:D32A: B0 01       ;
CODE_03D32C:    INX                     ; $03:D32C: E8          ;
CODE_03D32D:    TXA                     ; $03:D32D: 8A          ;
CODE_03D32E:    LDX $9E                 ; $03:D32E: A6 9E       ;
CODE_03D330:    STA $47                 ; $03:D330: 85 47       ;
CODE_03D332:    LDX #$00                ; $03:D332: A2 00       ;
CODE_03D334:    LDA $00                 ; $03:D334: A5 00       ;
CODE_03D336:    PHA                     ; $03:D336: 48          ;
CODE_03D337:    JSR CODE_03DF4D         ; $03:D337: 20 4D DF    ;
CODE_03D33A:    PLA                     ; $03:D33A: 68          ;
CODE_03D33B:    STA $00                 ; $03:D33B: 85 00       ;
CODE_03D33D:    PLA                     ; $03:D33D: 68          ;
CODE_03D33E:    CLC                     ; $03:D33E: 18          ;
CODE_03D33F:    ADC #$04                ; $03:D33F: 69 04       ;
CODE_03D341:    STA $06                 ; $03:D341: 85 06       ;
CODE_03D343:    LDX $9E                 ; $03:D343: A6 9E       ;
CODE_03D345:    RTS                     ; $03:D345: 60          ;

CODE_03D346:    PHA                     ; $03:D346: 48          ;
CODE_03D347:    AND #$0F                ; $03:D347: 29 0F       ;
CODE_03D349:    CMP #$09                ; $03:D349: C9 09       ;
CODE_03D34B:    BCC CODE_03D352         ; $03:D34B: 90 05       ;
CODE_03D34D:    EOR #$0F                ; $03:D34D: 49 0F       ;
CODE_03D34F:    CLC                     ; $03:D34F: 18          ;
CODE_03D350:    ADC #$01                ; $03:D350: 69 01       ;
CODE_03D352:    STA $01                 ; $03:D352: 85 01       ;
CODE_03D354:    LDY $00                 ; $03:D354: A4 00       ;
CODE_03D356:    LDA DATA_03D1D3,y       ; $03:D356: B9 D3 D1    ;
CODE_03D359:    CLC                     ; $03:D359: 18          ;
CODE_03D35A:    ADC $01                 ; $03:D35A: 65 01       ;
CODE_03D35C:    TAY                     ; $03:D35C: A8          ;
CODE_03D35D:    LDA DATA_03D16C,y       ; $03:D35D: B9 6C D1    ;
CODE_03D360:    STA $01                 ; $03:D360: 85 01       ;
CODE_03D362:    PLA                     ; $03:D362: 68          ;
CODE_03D363:    PHA                     ; $03:D363: 48          ;
CODE_03D364:    CLC                     ; $03:D364: 18          ;
CODE_03D365:    ADC #$08                ; $03:D365: 69 08       ;
CODE_03D367:    AND #$0F                ; $03:D367: 29 0F       ;
CODE_03D369:    CMP #$09                ; $03:D369: C9 09       ;
CODE_03D36B:    BCC CODE_03D372         ; $03:D36B: 90 05       ;
CODE_03D36D:    EOR #$0F                ; $03:D36D: 49 0F       ;
CODE_03D36F:    CLC                     ; $03:D36F: 18          ;
CODE_03D370:    ADC #$01                ; $03:D370: 69 01       ;
CODE_03D372:    STA $02                 ; $03:D372: 85 02       ;
CODE_03D374:    LDY $00                 ; $03:D374: A4 00       ;
CODE_03D376:    LDA DATA_03D1D3,y       ; $03:D376: B9 D3 D1    ;
CODE_03D379:    CLC                     ; $03:D379: 18          ;
CODE_03D37A:    ADC $02                 ; $03:D37A: 65 02       ;
CODE_03D37C:    TAY                     ; $03:D37C: A8          ;
CODE_03D37D:    LDA DATA_03D16C,y       ; $03:D37D: B9 6C D1    ;
CODE_03D380:    STA $02                 ; $03:D380: 85 02       ;
CODE_03D382:    PLA                     ; $03:D382: 68          ;
CODE_03D383:    LSR A                   ; $03:D383: 4A          ;
CODE_03D384:    LSR A                   ; $03:D384: 4A          ;
CODE_03D385:    LSR A                   ; $03:D385: 4A          ;
CODE_03D386:    TAY                     ; $03:D386: A8          ;
CODE_03D387:    LDA DATA_03D1CF,y       ; $03:D387: B9 CF D1    ;
CODE_03D38A:    STA $03                 ; $03:D38A: 85 03       ;
CODE_03D38C:    RTS                     ; $03:D38C: 60          ;

DATA_03D38D:    db $F8,$A0,$70,$BD,$00                          ;

DATA_03D392:    db $00,$00,$00,$20,$20                          ;

CODE_03D397:    LDA $29,x               ; $03:D397: B5 29       ;
CODE_03D399:    AND #$20                ; $03:D399: 29 20       ;
CODE_03D39B:    BEQ CODE_03D3A5         ; $03:D39B: F0 08       ;
CODE_03D39D:    LDA #$20                ; $03:D39D: A9 20       ;
CODE_03D39F:    STA $0257,x             ; $03:D39F: 9D 57 02    ;
CODE_03D3A2:    JMP CODE_03C140         ; $03:D3A2: 4C 40 C1    ;

CODE_03D3A5:    JSR CODE_03C0AD         ; $03:D3A5: 20 AD C0    ;
CODE_03D3A8:    LDY #$0D                ; $03:D3A8: A0 0D       ;
CODE_03D3AA:    LDA #$05                ; $03:D3AA: A9 05       ;
CODE_03D3AC:    JSR CODE_03C144         ; $03:D3AC: 20 44 C1    ;
CODE_03D3AF:    LDA $043D,x             ; $03:D3AF: BD 3D 04    ;
CODE_03D3B2:    LSR A                   ; $03:D3B2: 4A          ;
CODE_03D3B3:    LSR A                   ; $03:D3B3: 4A          ;
CODE_03D3B4:    LSR A                   ; $03:D3B4: 4A          ;
CODE_03D3B5:    LSR A                   ; $03:D3B5: 4A          ;
CODE_03D3B6:    TAY                     ; $03:D3B6: A8          ;
CODE_03D3B7:    LDA $0238,x             ; $03:D3B7: BD 38 02    ;
CODE_03D3BA:    SEC                     ; $03:D3BA: 38          ;
CODE_03D3BB:    SBC DATA_03D38D,y       ; $03:D3BB: F9 8D D3    ;
CODE_03D3BE:    BPL CODE_03D3C5         ; $03:D3BE: 10 05       ;
CODE_03D3C0:    EOR #$FF                ; $03:D3C0: 49 FF       ;
CODE_03D3C2:    CLC                     ; $03:D3C2: 18          ;
CODE_03D3C3:    ADC #$01                ; $03:D3C3: 69 01       ;
CODE_03D3C5:    CMP #$08                ; $03:D3C5: C9 08       ;
CODE_03D3C7:    BCS CODE_03D3D4         ; $03:D3C7: B0 0B       ;
CODE_03D3C9:    LDA $043D,x             ; $03:D3C9: BD 3D 04    ;
CODE_03D3CC:    CLC                     ; $03:D3CC: 18          ;
CODE_03D3CD:    ADC #$10                ; $03:D3CD: 69 10       ;
CODE_03D3CF:    LSR A                   ; $03:D3CF: 4A          ;
CODE_03D3D0:    LSR A                   ; $03:D3D0: 4A          ;
CODE_03D3D1:    LSR A                   ; $03:D3D1: 4A          ;
CODE_03D3D2:    LSR A                   ; $03:D3D2: 4A          ;
CODE_03D3D3:    TAY                     ; $03:D3D3: A8          ;
CODE_03D3D4:    LDA DATA_03D392,y       ; $03:D3D4: B9 92 D3    ;
CODE_03D3D7:    STA $0257,x             ; $03:D3D7: 9D 57 02    ;
CODE_03D3DA:    RTS                     ; $03:D3DA: 60          ;

DATA_03D3DB:    db $15,$30,$40                                  ;

CODE_03D3DE:    LDA $29,x               ; $03:D3DE: B5 29       ;\
CODE_03D3E0:    AND #$20                ; $03:D3E0: 29 20       ; |If not dying, branch
CODE_03D3E2:    BEQ CODE_03D3E7         ; $03:D3E2: F0 03       ;/
CODE_03D3E4:    JMP CODE_03C113         ; $03:D3E4: 4C 13 C1    ;Otherwise, take jump when dying.

CODE_03D3E7:    LDA $29,x               ; $03:D3E7: B5 29       ;
CODE_03D3E9:    BEQ CODE_03D3F4         ; $03:D3E9: F0 09       ;
CODE_03D3EB:    STZ $A1,x               ; $03:D3EB: 74 A1       ;
CODE_03D3ED:    STZ $06CB               ; $03:D3ED: 9C CB 06    ;
CODE_03D3F0:    LDA #$10                ; $03:D3F0: A9 10       ;
CODE_03D3F2:    BNE CODE_03D407         ; $03:D3F2: D0 13       ;
CODE_03D3F4:    LDA #$12                ; $03:D3F4: A9 12       ;
CODE_03D3F6:    STA $06CB               ; $03:D3F6: 8D CB 06    ;
CODE_03D3F9:    LDY #$02                ; $03:D3F9: A0 02       ;
CODE_03D3FB:    LDA DATA_03D3DB,y       ; $03:D3FB: B9 DB D3    ;
CODE_03D3FE:    STA $0001,y             ; $03:D3FE: 99 01 00    ;
CODE_03D401:    DEY                     ; $03:D401: 88          ;
CODE_03D402:    BPL CODE_03D3FB         ; $03:D402: 10 F7       ;
CODE_03D404:    JSR CODE_03D420         ; $03:D404: 20 20 D4    ;
CODE_03D407:    STA $5E,x               ; $03:D407: 95 5E       ;
CODE_03D409:    LDY #$01                ; $03:D409: A0 01       ;
CODE_03D40B:    LDA $A1,x               ; $03:D40B: B5 A1       ;
CODE_03D40D:    AND #$01                ; $03:D40D: 29 01       ;
CODE_03D40F:    BNE CODE_03D41B         ; $03:D40F: D0 0A       ;
CODE_03D411:    LDA $5E,x               ; $03:D411: B5 5E       ;
CODE_03D413:    EOR #$FF                ; $03:D413: 49 FF       ;
CODE_03D415:    CLC                     ; $03:D415: 18          ;
CODE_03D416:    ADC #$01                ; $03:D416: 69 01       ;
CODE_03D418:    STA $5E,x               ; $03:D418: 95 5E       ;
CODE_03D41A:    INY                     ; $03:D41A: C8          ;
CODE_03D41B:    STY $47,x               ; $03:D41B: 94 47       ;
CODE_03D41D:    JMP CODE_03C0AD         ; $03:D41D: 4C AD C0    ;

CODE_03D420:    LDY #$00                ; $03:D420: A0 00       ;
CODE_03D422:    JSR CODE_03E8BC         ; $03:D422: 20 BC E8    ;
CODE_03D425:    BPL CODE_03D431         ; $03:D425: 10 0A       ;
CODE_03D427:    INY                     ; $03:D427: C8          ;
CODE_03D428:    LDA $00                 ; $03:D428: A5 00       ;
CODE_03D42A:    EOR #$FF                ; $03:D42A: 49 FF       ;
CODE_03D42C:    CLC                     ; $03:D42C: 18          ;
CODE_03D42D:    ADC #$01                ; $03:D42D: 69 01       ;
CODE_03D42F:    STA $00                 ; $03:D42F: 85 00       ;
CODE_03D431:    LDA $00                 ; $03:D431: A5 00       ;
CODE_03D433:    CMP #$3C                ; $03:D433: C9 3C       ;
CODE_03D435:    BCC CODE_03D453         ; $03:D435: 90 1C       ;
CODE_03D437:    LDA #$3C                ; $03:D437: A9 3C       ;
CODE_03D439:    STA $00                 ; $03:D439: 85 00       ;
CODE_03D43B:    LDA $1C,x               ; $03:D43B: B5 1C       ;
CODE_03D43D:    CMP #$11                ; $03:D43D: C9 11       ;
CODE_03D43F:    BNE CODE_03D453         ; $03:D43F: D0 12       ;
CODE_03D441:    TYA                     ; $03:D441: 98          ;
CODE_03D442:    CMP $A1,x               ; $03:D442: D5 A1       ;
CODE_03D444:    BEQ CODE_03D453         ; $03:D444: F0 0D       ;
CODE_03D446:    LDA $A1,x               ; $03:D446: B5 A1       ;
CODE_03D448:    BEQ CODE_03D450         ; $03:D448: F0 06       ;
CODE_03D44A:    DEC $5E,x               ; $03:D44A: D6 5E       ;
CODE_03D44C:    LDA $5E,x               ; $03:D44C: B5 5E       ;
CODE_03D44E:    BNE CODE_03D490         ; $03:D44E: D0 40       ;
CODE_03D450:    TYA                     ; $03:D450: 98          ;
CODE_03D451:    STA $A1,x               ; $03:D451: 95 A1       ;
CODE_03D453:    LDA $00                 ; $03:D453: A5 00       ;
CODE_03D455:    AND #$3C                ; $03:D455: 29 3C       ;
CODE_03D457:    LSR A                   ; $03:D457: 4A          ;
CODE_03D458:    LSR A                   ; $03:D458: 4A          ;
CODE_03D459:    STA $00                 ; $03:D459: 85 00       ;
CODE_03D45B:    LDY #$00                ; $03:D45B: A0 00       ;
CODE_03D45D:    LDA $5D                 ; $03:D45D: A5 5D       ;
CODE_03D45F:    BEQ CODE_03D485         ; $03:D45F: F0 24       ;
CODE_03D461:    LDA $0775               ; $03:D461: AD 75 07    ;
CODE_03D464:    BEQ CODE_03D485         ; $03:D464: F0 1F       ;
CODE_03D466:    INY                     ; $03:D466: C8          ;
CODE_03D467:    LDA $5D                 ; $03:D467: A5 5D       ;
CODE_03D469:    CMP #$19                ; $03:D469: C9 19       ;
CODE_03D46B:    BCC CODE_03D475         ; $03:D46B: 90 08       ;
CODE_03D46D:    LDA $0775               ; $03:D46D: AD 75 07    ;
CODE_03D470:    CMP #$02                ; $03:D470: C9 02       ;
CODE_03D472:    BCC CODE_03D475         ; $03:D472: 90 01       ;
CODE_03D474:    INY                     ; $03:D474: C8          ;
CODE_03D475:    LDA $1C,x               ; $03:D475: B5 1C       ;
CODE_03D477:    CMP #$12                ; $03:D477: C9 12       ;
CODE_03D479:    BNE CODE_03D47F         ; $03:D479: D0 04       ;
CODE_03D47B:    LDA $5D                 ; $03:D47B: A5 5D       ;
CODE_03D47D:    BNE CODE_03D485         ; $03:D47D: D0 06       ;
CODE_03D47F:    LDA $A1,x               ; $03:D47F: B5 A1       ;
CODE_03D481:    BNE CODE_03D485         ; $03:D481: D0 02       ;
CODE_03D483:    LDY #$00                ; $03:D483: A0 00       ;
CODE_03D485:    LDA $0001,y             ; $03:D485: B9 01 00    ;
CODE_03D488:    LDY $00                 ; $03:D488: A4 00       ;
CODE_03D48A:    SEC                     ; $03:D48A: 38          ;
CODE_03D48B:    SBC #$01                ; $03:D48B: E9 01       ;
CODE_03D48D:    DEY                     ; $03:D48D: 88          ;
CODE_03D48E:    BPL CODE_03D48A         ; $03:D48E: 10 FA       ;
CODE_03D490:    RTS                     ; $03:D490: 60          ;

DATA_03D491:    db $1A,$58,$98,$96,$94,$92,$90,$8E              ;
                db $8C,$8A,$88,$86,$84,$82,$80                  ;

CODE_03D4A0:    PHX                     ; $03:D4A0: DA          ;
CODE_03D4A1:    LDX $0369               ; $03:D4A1: AE 69 03    ;
CODE_03D4A4:    DEX                     ; $03:D4A4: CA          ;
CODE_03D4A5:    DEX                     ; $03:D4A5: CA          ;
CODE_03D4A6:    STX $0334               ; $03:D4A6: 8E 34 03    ;
CODE_03D4A9:    AND #$80                ; $03:D4A9: 29 80       ;
CODE_03D4AB:    BEQ CODE_03D4CE         ; $03:D4AB: F0 21       ;
CODE_03D4AD:    STZ $030D,x             ; $03:D4AD: 9E 0D 03    ;
CODE_03D4B0:    LDA #$01                ; $03:D4B0: A9 01       ;
CODE_03D4B2:    STA $0300,x             ; $03:D4B2: 9D 00 03    ;
CODE_03D4B5:    LDA $04                 ; $03:D4B5: A5 04       ;
CODE_03D4B7:    AND #$1F                ; $03:D4B7: 29 1F       ;
CODE_03D4B9:    ASL A                   ; $03:D4B9: 0A          ;
CODE_03D4BA:    ASL A                   ; $03:D4BA: 0A          ;
CODE_03D4BB:    ASL A                   ; $03:D4BB: 0A          ;
CODE_03D4BC:    STA $E4                 ; $03:D4BC: 85 E4       ;
CODE_03D4BE:    LDA #$00                ; $03:D4BE: A9 00       ;
CODE_03D4C0:    SEC                     ; $03:D4C0: 38          ;
CODE_03D4C1:    SBC $42                 ; $03:D4C1: E5 42       ;
CODE_03D4C3:    CLC                     ; $03:D4C3: 18          ;
CODE_03D4C4:    ADC $E4                 ; $03:D4C4: 65 E4       ;
CODE_03D4C6:    STA $031A,x             ; $03:D4C6: 9D 1A 03    ;
CODE_03D4C9:    LDA #$03                ; $03:D4C9: A9 03       ;
CODE_03D4CB:    STA $0327,x             ; $03:D4CB: 9D 27 03    ;
CODE_03D4CE:    PLX                     ; $03:D4CE: FA          ;
CODE_03D4CF:    RTS                     ; $03:D4CF: 60          ;

;Bridge Collapse command
CODE_03D4D0:    LDX $0368               ; $03:D4D0: AE 68 03    ;\
CODE_03D4D3:    LDA $1C,x               ; $03:D4D3: B5 1C       ; |Check if Bowser still exists
CODE_03D4D5:    CMP #$2D                ; $03:D4D5: C9 2D       ; |(He could've been killed by fireballs)
CODE_03D4D7:    BNE CODE_03D4EA         ; $03:D4D7: D0 11       ;/ If he doesn't exist, skip bridge destruction
CODE_03D4D9:    STX $9E                 ; $03:D4D9: 86 9E       ;Store bowser's sprite index into current sprite index
CODE_03D4DB:    LDA $29,x               ; $03:D4DB: B5 29       ;\
CODE_03D4DD:    BEQ CODE_03D503         ; $03:D4DD: F0 24       ;/If Bowser is in a normal state, destroy bridge
CODE_03D4DF:    AND #$40                ; $03:D4DF: 29 40       ;\
CODE_03D4E1:    BEQ CODE_03D4EA         ; $03:D4E1: F0 07       ;/If Bowser isn't in a defeated state (fall down bridge), remove bridge
CODE_03D4E3:    LDA $0238,x             ; $03:D4E3: BD 38 02    ;\
CODE_03D4E6:    CMP #$E0                ; $03:D4E6: C9 E0       ; |If Bowser sprite is not low enough yet, branch
CODE_03D4E8:    BCC CODE_03D4FD         ; $03:D4E8: 90 13       ;/
CODE_03D4EA:    LDA $0095               ; $03:D4EA: AD 95 00    ;\Flag to not play music?
CODE_03D4ED:    BNE CODE_03D4F7         ; $03:D4ED: D0 08       ;/
CODE_03D4EF:    LDA #$0B                ; $03:D4EF: A9 0B       ;\Toad/Princess saved fanfare music
CODE_03D4F1:    STA $1602               ; $03:D4F1: 8D 02 16    ;/
CODE_03D4F4:    STA $0095               ; $03:D4F4: 8D 95 00    ;
CODE_03D4F7:    INC $0772               ; $03:D4F7: EE 72 07    ;Go to next command
CODE_03D4FA:    JMP CODE_03D56B         ; $03:D4FA: 4C 6B D5    ;

CODE_03D4FD:    JSR CODE_03C13A         ; $03:D4FD: 20 3A C1    ;
CODE_03D500:    JMP CODE_03D679         ; $03:D500: 4C 79 D6    ;

CODE_03D503:    DEC $0364               ; $03:D503: CE 64 03    ;
CODE_03D506:    BNE CODE_03D557         ; $03:D506: D0 4F       ;
CODE_03D508:    LDA #$04                ; $03:D508: A9 04       ;\Amount of delay until the next bridge tile collapses
CODE_03D50A:    STA $0364               ; $03:D50A: 8D 64 03    ;/
CODE_03D50D:    LDA $0363               ; $03:D50D: AD 63 03    ;
CODE_03D510:    EOR #$01                ; $03:D510: 49 01       ;
CODE_03D512:    STA $0363               ; $03:D512: 8D 63 03    ;
CODE_03D515:    LDA #$02                ; $03:D515: A9 02       ;
CODE_03D517:    STA $05                 ; $03:D517: 85 05       ;
CODE_03D519:    LDY $0369               ; $03:D519: AC 69 03    ;
CODE_03D51C:    LDA DATA_03D491,y       ; $03:D51C: B9 91 D4    ;
CODE_03D51F:    STA $04                 ; $03:D51F: 85 04       ;
CODE_03D521:    JSR CODE_03D4A0         ; $03:D521: 20 A0 D4    ;
CODE_03D524:    LDY $1700               ; $03:D524: AC 00 17    ;
CODE_03D527:    INY                     ; $03:D527: C8          ;
CODE_03D528:    LDX #$18                ; $03:D528: A2 18       ;
CODE_03D52A:    JSR CODE_0393F3         ; $03:D52A: 20 F3 93    ;
CODE_03D52D:    LDX $9E                 ; $03:D52D: A6 9E       ;
CODE_03D52F:    JSR CODE_0393B2         ; $03:D52F: 20 B2 93    ;
CODE_03D532:    LDA #$16                ; $03:D532: A9 16       ;\
CODE_03D534:    STA $1603               ; $03:D534: 8D 03 16    ;/Bowser bridge crumbling sound
CODE_03D537:    LDA $0369               ; $03:D537: AD 69 03    ;
CODE_03D53A:    BNE CODE_03D546         ; $03:D53A: D0 0A       ;
CODE_03D53C:    LDA #$08                ; $03:D53C: A9 08       ;
CODE_03D53E:    STA $014B               ; $03:D53E: 8D 4B 01    ;
CODE_03D541:    LDA #$FF                ; $03:D541: A9 FF       ;
CODE_03D543:    STA $0F4C               ; $03:D543: 8D 4C 0F    ;
CODE_03D546:    INC $0369               ; $03:D546: EE 69 03    ;
CODE_03D549:    LDA $0369               ; $03:D549: AD 69 03    ;
CODE_03D54C:    CMP #$0F                ; $03:D54C: C9 0F       ;
CODE_03D54E:    BNE CODE_03D557         ; $03:D54E: D0 07       ;
CODE_03D550:    JSR CODE_03C726         ; $03:D550: 20 26 C7    ;
CODE_03D553:    LDA #$40                ; $03:D553: A9 40       ;
CODE_03D555:    STA $29,x               ; $03:D555: 95 29       ;
CODE_03D557:    JMP CODE_03D679         ; $03:D557: 4C 79 D6    ;

DATA_03D55A:    db $21,$41,$11,$31                              ;

CODE_03D55E:    LDA $29,x               ; $03:D55E: B5 29       ;
CODE_03D560:    AND #$20                ; $03:D560: 29 20       ;
CODE_03D562:    BEQ CODE_03D579         ; $03:D562: F0 15       ;
CODE_03D564:    LDA $0238,x             ; $03:D564: BD 38 02    ;
CODE_03D567:    CMP #$E0                ; $03:D567: C9 E0       ;
CODE_03D569:    BCC CODE_03D4FD         ; $03:D569: 90 92       ;
CODE_03D56B:    LDX #$08                ; $03:D56B: A2 08       ;
CODE_03D56D:    JSR CODE_03CDE2         ; $03:D56D: 20 E2 CD    ; Erase sprite
CODE_03D570:    DEX                     ; $03:D570: CA          ;
CODE_03D571:    BPL CODE_03D56D         ; $03:D571: 10 FA       ;
CODE_03D573:    STA $06CB               ; $03:D573: 8D CB 06    ;
CODE_03D576:    LDX $9E                 ; $03:D576: A6 9E       ;
CODE_03D578:    RTS                     ; $03:D578: 60          ;

CODE_03D579:    STZ $06CB               ; $03:D579: 9C CB 06    ;
CODE_03D57C:    LDA $0747               ; $03:D57C: AD 47 07    ;
CODE_03D57F:    BEQ CODE_03D584         ; $03:D57F: F0 03       ;
CODE_03D581:    JMP CODE_03D636         ; $03:D581: 4C 36 D6    ;

CODE_03D584:    LDA $0363               ; $03:D584: AD 63 03    ;
CODE_03D587:    BPL CODE_03D58C         ; $03:D587: 10 03       ;
CODE_03D589:    JMP CODE_03D60B         ; $03:D589: 4C 0B D6    ;

CODE_03D58C:    DEC $0364               ; $03:D58C: CE 64 03    ;
CODE_03D58F:    BNE CODE_03D59E         ; $03:D58F: D0 0D       ;
CODE_03D591:    LDA #$20                ; $03:D591: A9 20       ;
CODE_03D593:    STA $0364               ; $03:D593: 8D 64 03    ;
CODE_03D596:    LDA $0363               ; $03:D596: AD 63 03    ;
CODE_03D599:    EOR #$01                ; $03:D599: 49 01       ;
CODE_03D59B:    STA $0363               ; $03:D59B: 8D 63 03    ;
CODE_03D59E:    LDA $09                 ; $03:D59E: A5 09       ;
CODE_03D5A0:    AND #$0F                ; $03:D5A0: 29 0F       ;
CODE_03D5A2:    BNE CODE_03D5A8         ; $03:D5A2: D0 04       ;
CODE_03D5A4:    LDA #$02                ; $03:D5A4: A9 02       ;
CODE_03D5A6:    STA $47,x               ; $03:D5A6: 95 47       ;
CODE_03D5A8:    LDA $0792,x             ; $03:D5A8: BD 92 07    ;
CODE_03D5AB:    BEQ CODE_03D5CA         ; $03:D5AB: F0 1D       ;
CODE_03D5AD:    JSR CODE_03E8BC         ; $03:D5AD: 20 BC E8    ;
CODE_03D5B0:    BPL CODE_03D5CA         ; $03:D5B0: 10 18       ;
CODE_03D5B2:    LDA #$01                ; $03:D5B2: A9 01       ;
CODE_03D5B4:    STA $47,x               ; $03:D5B4: 95 47       ;
CODE_03D5B6:    LDA #$02                ; $03:D5B6: A9 02       ;
CODE_03D5B8:    STA $0365               ; $03:D5B8: 8D 65 03    ;
CODE_03D5BB:    LDA #$20                ; $03:D5BB: A9 20       ;
CODE_03D5BD:    STA $0792,x             ; $03:D5BD: 9D 92 07    ;
CODE_03D5C0:    STA $079C               ; $03:D5C0: 8D 9C 07    ;
CODE_03D5C3:    LDA $021A,x             ; $03:D5C3: BD 1A 02    ;
CODE_03D5C6:    CMP #$B0                ; $03:D5C6: C9 B0       ;
CODE_03D5C8:    BCS CODE_03D60B         ; $03:D5C8: B0 41       ;
CODE_03D5CA:    LDA $09                 ; $03:D5CA: A5 09       ;
CODE_03D5CC:    AND #$03                ; $03:D5CC: 29 03       ;
CODE_03D5CE:    BNE CODE_03D60B         ; $03:D5CE: D0 3B       ;
CODE_03D5D0:    LDA $021A,x             ; $03:D5D0: BD 1A 02    ;
CODE_03D5D3:    CMP $0366               ; $03:D5D3: CD 66 03    ;
CODE_03D5D6:    BNE CODE_03D5E4         ; $03:D5D6: D0 0C       ;
CODE_03D5D8:    LDA $07B7,x             ; $03:D5D8: BD B7 07    ;
CODE_03D5DB:    AND #$03                ; $03:D5DB: 29 03       ;
CODE_03D5DD:    TAY                     ; $03:D5DD: A8          ;
CODE_03D5DE:    LDA DATA_03D55A,y       ; $03:D5DE: B9 5A D5    ;
CODE_03D5E1:    STA $06DC               ; $03:D5E1: 8D DC 06    ;
CODE_03D5E4:    LDA $021A,x             ; $03:D5E4: BD 1A 02    ;
CODE_03D5E7:    CLC                     ; $03:D5E7: 18          ;
CODE_03D5E8:    ADC $0365               ; $03:D5E8: 6D 65 03    ;
CODE_03D5EB:    STA $021A,x             ; $03:D5EB: 9D 1A 02    ;
CODE_03D5EE:    LDY $47,x               ; $03:D5EE: B4 47       ;
CODE_03D5F0:    CPY #$01                ; $03:D5F0: C0 01       ;
CODE_03D5F2:    BEQ CODE_03D60B         ; $03:D5F2: F0 17       ;
CODE_03D5F4:    LDY #$FF                ; $03:D5F4: A0 FF       ;
CODE_03D5F6:    SEC                     ; $03:D5F6: 38          ;
CODE_03D5F7:    SBC $0366               ; $03:D5F7: ED 66 03    ;
CODE_03D5FA:    BPL CODE_03D603         ; $03:D5FA: 10 07       ;
CODE_03D5FC:    EOR #$FF                ; $03:D5FC: 49 FF       ;
CODE_03D5FE:    CLC                     ; $03:D5FE: 18          ;
CODE_03D5FF:    ADC #$01                ; $03:D5FF: 69 01       ;
CODE_03D601:    LDY #$01                ; $03:D601: A0 01       ;
CODE_03D603:    CMP $06DC               ; $03:D603: CD DC 06    ;
CODE_03D606:    BCC CODE_03D60B         ; $03:D606: 90 03       ;
CODE_03D608:    STY $0365               ; $03:D608: 8C 65 03    ;
CODE_03D60B:    LDA $0792,x             ; $03:D60B: BD 92 07    ;
CODE_03D60E:    BNE CODE_03D639         ; $03:D60E: D0 29       ;
CODE_03D610:    JSR CODE_03C13A         ; $03:D610: 20 3A C1    ;
CODE_03D613:    LDA $075F               ; $03:D613: AD 5F 07    ;
CODE_03D616:    CMP #$05                ; $03:D616: C9 05       ;
CODE_03D618:    BCC CODE_03D623         ; $03:D618: 90 09       ;
CODE_03D61A:    LDA $09                 ; $03:D61A: A5 09       ;
CODE_03D61C:    AND #$03                ; $03:D61C: 29 03       ;
CODE_03D61E:    BNE CODE_03D623         ; $03:D61E: D0 03       ;
CODE_03D620:    JSR CODE_03BB8E         ; $03:D620: 20 8E BB    ;
CODE_03D623:    LDA $0238,x             ; $03:D623: BD 38 02    ;
CODE_03D626:    CMP #$80                ; $03:D626: C9 80       ;
CODE_03D628:    BCC CODE_03D647         ; $03:D628: 90 1D       ;
CODE_03D62A:    LDA $07B7,x             ; $03:D62A: BD B7 07    ;
CODE_03D62D:    AND #$03                ; $03:D62D: 29 03       ;
CODE_03D62F:    TAY                     ; $03:D62F: A8          ;
CODE_03D630:    LDA DATA_03D55A,y       ; $03:D630: B9 5A D5    ;
CODE_03D633:    STA $0792,x             ; $03:D633: 9D 92 07    ;
CODE_03D636:    JMP CODE_03D647         ; $03:D636: 4C 47 D6    ;

CODE_03D639:    CMP #$01                ; $03:D639: C9 01       ;
CODE_03D63B:    BNE CODE_03D647         ; $03:D63B: D0 0A       ;
CODE_03D63D:    DEC $0238,x             ; $03:D63D: DE 38 02    ;
CODE_03D640:    JSR CODE_03C726         ; $03:D640: 20 26 C7    ;
CODE_03D643:    LDA #$FE                ; $03:D643: A9 FE       ;
CODE_03D645:    STA $A1,x               ; $03:D645: 95 A1       ;
CODE_03D647:    LDA $075F               ; $03:D647: AD 5F 07    ;
CODE_03D64A:    CMP #$07                ; $03:D64A: C9 07       ;
CODE_03D64C:    BEQ CODE_03D652         ; $03:D64C: F0 04       ;
CODE_03D64E:    CMP #$05                ; $03:D64E: C9 05       ;
CODE_03D650:    BCS CODE_03D679         ; $03:D650: B0 27       ;
CODE_03D652:    LDA $079C               ; $03:D652: AD 9C 07    ;
CODE_03D655:    BNE CODE_03D679         ; $03:D655: D0 22       ;
CODE_03D657:    LDA #$20                ; $03:D657: A9 20       ;
CODE_03D659:    STA $079C               ; $03:D659: 8D 9C 07    ;
CODE_03D65C:    LDA $0363               ; $03:D65C: AD 63 03    ;
CODE_03D65F:    EOR #$80                ; $03:D65F: 49 80       ;
CODE_03D661:    STA $0363               ; $03:D661: 8D 63 03    ;
CODE_03D664:    BMI CODE_03D647         ; $03:D664: 30 E1       ;
CODE_03D666:    JSR CODE_03D6F9         ; $03:D666: 20 F9 D6    ;Get timer delay of next fireball spawn
CODE_03D669:    LDY $06CC               ; $03:D669: AC CC 06    ;\If hard mode (after 5-3)
CODE_03D66C:    BEQ CODE_03D671         ; $03:D66C: F0 03       ; |
CODE_03D66E:    SEC                     ; $03:D66E: 38          ; |Timer -= #$10;
CODE_03D66F:    SBC #$10                ; $03:D66F: E9 10       ; |
CODE_03D671:    STA $079C               ; $03:D671: 8D 9C 07    ;/ store into time until next sprite gets generated
CODE_03D674:    LDA #$15                ; $03:D674: A9 15       ;\Activate bowser fire generator
CODE_03D676:    STA $06CB               ; $03:D676: 8D CB 06    ;/
CODE_03D679:    JSR CODE_03D6D4         ; $03:D679: 20 D4 D6    ;
CODE_03D67C:    LDY #$10                ; $03:D67C: A0 10       ;
CODE_03D67E:    LDA $47,x               ; $03:D67E: B5 47       ;
CODE_03D680:    LSR A                   ; $03:D680: 4A          ;
CODE_03D681:    BCC CODE_03D685         ; $03:D681: 90 02       ;
CODE_03D683:    LDY #$F0                ; $03:D683: A0 F0       ;
CODE_03D685:    TYA                     ; $03:D685: 98          ;
CODE_03D686:    CLC                     ; $03:D686: 18          ;
CODE_03D687:    ADC $021A,x             ; $03:D687: 7D 1A 02    ;
CODE_03D68A:    LDY $06CF               ; $03:D68A: AC CF 06    ;
CODE_03D68D:    STA $021A,y             ; $03:D68D: 99 1A 02    ;
CODE_03D690:    LDA $0238,x             ; $03:D690: BD 38 02    ;
CODE_03D693:    CLC                     ; $03:D693: 18          ;
CODE_03D694:    ADC #$08                ; $03:D694: 69 08       ;
CODE_03D696:    STA $0238,y             ; $03:D696: 99 38 02    ;
CODE_03D699:    LDA $29,x               ; $03:D699: B5 29       ;
CODE_03D69B:    STA $0029,y             ; $03:D69B: 99 29 00    ;
CODE_03D69E:    LDA $47,x               ; $03:D69E: B5 47       ;
CODE_03D6A0:    STA $0047,y             ; $03:D6A0: 99 47 00    ;
CODE_03D6A3:    LDA $9E                 ; $03:D6A3: A5 9E       ;
CODE_03D6A5:    PHA                     ; $03:D6A5: 48          ;
CODE_03D6A6:    LDX $06CF               ; $03:D6A6: AE CF 06    ;
CODE_03D6A9:    STX $9E                 ; $03:D6A9: 86 9E       ;
CODE_03D6AB:    LDA $97                 ; $03:D6AB: A5 97       ;
CODE_03D6AD:    BNE CODE_03D6C1         ; $03:D6AD: D0 12       ;
CODE_03D6AF:    LDA $075F               ; $03:D6AF: AD 5F 07    ;\
CODE_03D6B2:    CMP #$07                ; $03:D6B2: C9 07       ; |Play real bowser battle music at world 8
CODE_03D6B4:    BNE CODE_03D6BA         ; $03:D6B4: D0 04       ;/
CODE_03D6B6:    LDA #$05                ; $03:D6B6: A9 05       ;"real" bowser battle music
CODE_03D6B8:    BRA CODE_03D6BC         ; $03:D6B8: 80 02       ;

CODE_03D6BA:    LDA #$04                ; $03:D6BA: A9 04       ;\"fake" bowser battle music
CODE_03D6BC:    STA $1602               ; $03:D6BC: 8D 02 16    ;/
CODE_03D6BF:    STA $97                 ; $03:D6BF: 85 97       ;
CODE_03D6C1:    LDA #$2D                ; $03:D6C1: A9 2D       ;\
CODE_03D6C3:    STA $1C,x               ; $03:D6C3: 95 1C       ;/Sprite to generate: Bowser
CODE_03D6C5:    LDA #$20                ; $03:D6C5: A9 20       ;
CODE_03D6C7:    STA $0257,x             ; $03:D6C7: 9D 57 02    ;
CODE_03D6CA:    PLA                     ; $03:D6CA: 68          ;
CODE_03D6CB:    STA $9E                 ; $03:D6CB: 85 9E       ;
CODE_03D6CD:    TAX                     ; $03:D6CD: AA          ;
CODE_03D6CE:    LDA #$00                ; $03:D6CE: A9 00       ;
CODE_03D6D0:    STA $036A               ; $03:D6D0: 8D 6A 03    ;
CODE_03D6D3:    RTS                     ; $03:D6D3: 60          ;

CODE_03D6D4:    INC $036A               ; $03:D6D4: EE 6A 03    ;
CODE_03D6D7:    JSR CODE_03CD09         ; $03:D6D7: 20 09 CD    ;
CODE_03D6DA:    LDA $29,x               ; $03:D6DA: B5 29       ;
CODE_03D6DC:    BNE CODE_03D6D3         ; $03:D6DC: D0 F5       ;
CODE_03D6DE:    LDA #$0A                ; $03:D6DE: A9 0A       ;
CODE_03D6E0:    STA $0490,x             ; $03:D6E0: 9D 90 04    ;
CODE_03D6E3:    JSR CODE_03E9CC         ; $03:D6E3: 20 CC E9    ;
CODE_03D6E6:    LDA $0770               ; $03:D6E6: AD 70 07    ;
CODE_03D6E9:    CMP #$02                ; $03:D6E9: C9 02       ;
CODE_03D6EB:    BEQ CODE_03D6F0         ; $03:D6EB: F0 03       ;
CODE_03D6ED:    JMP CODE_03DE55         ; $03:D6ED: 4C 55 DE    ;

CODE_03D6F0:    RTS                     ; $03:D6F0: 60          ;

DATA_03D6F1:    db $BF,$40,$BF,$BF,$BF,$40,$40,$BF              ;How fast the bowser fire generates.

CODE_03D6F9:    LDY $0367               ; $03:D6F9: AC 67 03    ;\
CODE_03D6FC:    INC $0367               ; $03:D6FC: EE 67 03    ; |Get timer delay of next fireball spawn
CODE_03D6FF:    LDA $0367               ; $03:D6FF: AD 67 03    ; |Returns: Timer delay in A
CODE_03D702:    AND #$07                ; $03:D702: 29 07       ; |
CODE_03D704:    STA $0367               ; $03:D704: 8D 67 03    ; |
CODE_03D707:    LDA DATA_03D6F1,y       ; $03:D707: B9 F1 D6    ; |
CODE_03D70A:    RTS                     ; $03:D70A: 60          ;/

CODE_03D70B:    CPX $0F4D               ; $03:D70B: EC 4D 0F    ;
CODE_03D70E:    BNE CODE_03D71C         ; $03:D70E: D0 0C       ;
CODE_03D710:    LDA $0F4C               ; $03:D710: AD 4C 0F    ;
CODE_03D713:    BEQ CODE_03D71C         ; $03:D713: F0 07       ;
CODE_03D715:    LDA $014B               ; $03:D715: AD 4B 01    ;
CODE_03D718:    CMP #$06                ; $03:D718: C9 06       ;
CODE_03D71A:    BEQ CODE_03D760         ; $03:D71A: F0 44       ;
CODE_03D71C:    LDA $0747               ; $03:D71C: AD 47 07    ;
CODE_03D71F:    BNE CODE_03D755         ; $03:D71F: D0 34       ;
CODE_03D721:    LDA #$40                ; $03:D721: A9 40       ;
CODE_03D723:    LDY $06CC               ; $03:D723: AC CC 06    ;
CODE_03D726:    BEQ CODE_03D72A         ; $03:D726: F0 02       ;
CODE_03D728:    LDA #$60                ; $03:D728: A9 60       ;
CODE_03D72A:    STA $00                 ; $03:D72A: 85 00       ;
CODE_03D72C:    LDA $0402,x             ; $03:D72C: BD 02 04    ;
CODE_03D72F:    SEC                     ; $03:D72F: 38          ;
CODE_03D730:    SBC $00                 ; $03:D730: E5 00       ;
CODE_03D732:    STA $0402,x             ; $03:D732: 9D 02 04    ;
CODE_03D735:    LDA $021A,x             ; $03:D735: BD 1A 02    ;
CODE_03D738:    SBC #$01                ; $03:D738: E9 01       ;
CODE_03D73A:    STA $021A,x             ; $03:D73A: 9D 1A 02    ;
CODE_03D73D:    LDA $79,x               ; $03:D73D: B5 79       ;
CODE_03D73F:    SBC #$00                ; $03:D73F: E9 00       ;
CODE_03D741:    STA $79,x               ; $03:D741: 95 79       ;
CODE_03D743:    LDY $041D,x             ; $03:D743: BC 1D 04    ;
CODE_03D746:    LDA $0238,x             ; $03:D746: BD 38 02    ;
CODE_03D749:    CMP DATA_03C970,y       ; $03:D749: D9 70 C9    ;Compare with possible bowser fireball Y positions
CODE_03D74C:    BEQ CODE_03D755         ; $03:D74C: F0 07       ;
CODE_03D74E:    CLC                     ; $03:D74E: 18          ;
CODE_03D74F:    ADC $043D,x             ; $03:D74F: 7D 3D 04    ;
CODE_03D752:    STA $0238,x             ; $03:D752: 9D 38 02    ;
CODE_03D755:    JSR CODE_03FD39         ; $03:D755: 20 39 FD    ;
CODE_03D758:    LDA $29,x               ; $03:D758: B5 29       ;
CODE_03D75A:    BNE CODE_03D70A         ; $03:D75A: D0 AE       ;
CODE_03D75C:    JSL CODE_05CD01         ; $03:D75C: 22 01 CD 05 ;
CODE_03D760:    RTS                     ; $03:D760: 60          ;

CODE_03D761:    DEC $A1,x               ; $03:D761: D6 A1       ;
CODE_03D763:    BNE CODE_03D77C         ; $03:D763: D0 17       ;
CODE_03D765:    LDA #$08                ; $03:D765: A9 08       ;
CODE_03D767:    STA $A1,x               ; $03:D767: 95 A1       ;
CODE_03D769:    INC $5E,x               ; $03:D769: F6 5E       ;
CODE_03D76B:    LDA $5E,x               ; $03:D76B: B5 5E       ;
CODE_03D76D:    CMP #$01                ; $03:D76D: C9 01       ;
CODE_03D76F:    BNE CODE_03D778         ; $03:D76F: D0 07       ;
CODE_03D771:    LDA #$29                ; $03:D771: A9 29       ;\
CODE_03D773:    STA $1600               ; $03:D773: 8D 00 16    ;/Firework sound
CODE_03D776:    BRA CODE_03D77C         ; $03:D776: 80 04       ;

CODE_03D778:    CMP #$04                ; $03:D778: C9 04       ;
CODE_03D77A:    BCS CODE_03D794         ; $03:D77A: B0 18       ;
CODE_03D77C:    JSR CODE_03FD39         ; $03:D77C: 20 39 FD    ;
CODE_03D77F:    LDA $03B9               ; $03:D77F: AD B9 03    ;
CODE_03D782:    STA $03BA               ; $03:D782: 8D BA 03    ;
CODE_03D785:    LDA $03AE               ; $03:D785: AD AE 03    ;
CODE_03D788:    STA $03AF               ; $03:D788: 8D AF 03    ;
CODE_03D78B:    LDY $0B46,x             ; $03:D78B: BC 46 0B    ;
CODE_03D78E:    LDA $5E,x               ; $03:D78E: B5 5E       ;
CODE_03D790:    JSR CODE_03F548         ; $03:D790: 20 48 F5    ;
CODE_03D793:    RTS                     ; $03:D793: 60          ;

CODE_03D794:    STZ $10,x               ; $03:D794: 74 10       ;
CODE_03D796:    LDY $0B46,x             ; $03:D796: BC 46 0B    ;
CODE_03D799:    LDA #$03                ; $03:D799: A9 03       ;
CODE_03D79B:    STA $0D00,y             ; $03:D79B: 99 00 0D    ;
CODE_03D79E:    STA $0D04,y             ; $03:D79E: 99 04 0D    ;
CODE_03D7A1:    STA $0D08,y             ; $03:D7A1: 99 08 0D    ;
CODE_03D7A4:    STA $0D0C,y             ; $03:D7A4: 99 0C 0D    ;
CODE_03D7A7:    LDA #$05                ; $03:D7A7: A9 05       ;
CODE_03D7A9:    STA $0149               ; $03:D7A9: 8D 49 01    ;
CODE_03D7AC:    JMP CODE_03D818         ; $03:D7AC: 4C 18 D8    ;

CODE_03D7AF:    STZ $06CB               ; $03:D7AF: 9C CB 06    ;
CODE_03D7B2:    LDA $0746               ; $03:D7B2: AD 46 07    ;\
CODE_03D7B5:    CMP #$05                ; $03:D7B5: C9 05       ; |Flagpole task control
CODE_03D7B7:    BCS CODE_03D7F3         ; $03:D7B7: B0 3A       ;/
CODE_03D7B9:    JSR CODE_039B08         ; $03:D7B9: 20 08 9B    ;ExecutePtrShort

PNTR_03D7BC:    dw CODE_03D7F3                                  ;$00 - Nothing
                dw CODE_03D7C6                                  ;$01 - Check if firework is applicable
                dw CODE_03D7FE                                  ;$02 - Award points
                dw CODE_03D830                                  ;$03 - Raise star flag and launch fireworks
                dw CODE_03D883                                  ;$04 - Delay to level fadeout

CODE_03D7C6:    LDY #$05                ; $03:D7C6: A0 05       ;
CODE_03D7C8:    LDA $07EB               ; $03:D7C8: AD EB 07    ;
CODE_03D7CB:    CMP #$01                ; $03:D7CB: C9 01       ;
CODE_03D7CD:    BEQ CODE_03D7DD         ; $03:D7CD: F0 0E       ;
CODE_03D7CF:    LDY #$03                ; $03:D7CF: A0 03       ;
CODE_03D7D1:    CMP #$03                ; $03:D7D1: C9 03       ;
CODE_03D7D3:    BEQ CODE_03D7DD         ; $03:D7D3: F0 08       ;
CODE_03D7D5:    LDY #$00                ; $03:D7D5: A0 00       ;
CODE_03D7D7:    CMP #$06                ; $03:D7D7: C9 06       ;
CODE_03D7D9:    BEQ CODE_03D7DD         ; $03:D7D9: F0 02       ;
CODE_03D7DB:    LDA #$FF                ; $03:D7DB: A9 FF       ;
CODE_03D7DD:    STA $06D7               ; $03:D7DD: 8D D7 06    ;
CODE_03D7E0:    STY $29,x               ; $03:D7E0: 94 29       ;
CODE_03D7E2:    LDA $2143               ; $03:D7E2: AD 43 21    ;
CODE_03D7E5:    AND #$7F                ; $03:D7E5: 29 7F       ;
CODE_03D7E7:    CMP #$4B                ; $03:D7E7: C9 4B       ;
CODE_03D7E9:    BEQ CODE_03D7F0         ; $03:D7E9: F0 05       ;
CODE_03D7EB:    LDA #$4B                ; $03:D7EB: A9 4B       ;\
CODE_03D7ED:    STA $1603               ; $03:D7ED: 8D 03 16    ;/Timer to score conversion sound
CODE_03D7F0:    INC $0746               ; $03:D7F0: EE 46 07    ;
CODE_03D7F3:    RTS                     ; $03:D7F3: 60          ;

CODE_03D7F4:    LDA #$4C                ; $03:D7F4: A9 4C       ;\SMAS menu 'zooming' sound (after pressing start in hall screen)
CODE_03D7F6:    STA $1603               ; $03:D7F6: 8D 03 16    ;/
CODE_03D7F9:    STA $0E1A               ; $03:D7F9: 8D 1A 0E    ;
CODE_03D7FC:    BRA CODE_03D7F0         ; $03:D7FC: 80 F2       ;

CODE_03D7FE:    LDA $07E9               ; $03:D7FE: AD E9 07    ;
CODE_03D801:    ORA $07EA               ; $03:D801: 0D EA 07    ;
CODE_03D804:    ORA $07EB               ; $03:D804: 0D EB 07    ;
CODE_03D807:    BEQ CODE_03D7F4         ; $03:D807: F0 EB       ;
CODE_03D809:    LDY #$23                ; $03:D809: A0 23       ;
CODE_03D80B:    LDA #$FF                ; $03:D80B: A9 FF       ;
CODE_03D80D:    STA $014A               ; $03:D80D: 8D 4A 01    ;
CODE_03D810:    JSR CODE_039CF9         ; $03:D810: 20 F9 9C    ;
CODE_03D813:    LDA #$05                ; $03:D813: A9 05       ;
CODE_03D815:    STA $014A               ; $03:D815: 8D 4A 01    ;
CODE_03D818:    LDY #$0B                ; $03:D818: A0 0B       ;
CODE_03D81A:    LDA $0753               ; $03:D81A: AD 53 07    ;
CODE_03D81D:    BEQ CODE_03D821         ; $03:D81D: F0 02       ;
CODE_03D81F:    LDY #$11                ; $03:D81F: A0 11       ;
CODE_03D821:    JSR CODE_039CF9         ; $03:D821: 20 F9 9C    ;
CODE_03D824:    LDA $0753               ; $03:D824: AD 53 07    ;
CODE_03D827:    ASL A                   ; $03:D827: 0A          ;
CODE_03D828:    ASL A                   ; $03:D828: 0A          ;
CODE_03D829:    ASL A                   ; $03:D829: 0A          ;
CODE_03D82A:    ASL A                   ; $03:D82A: 0A          ;
CODE_03D82B:    ORA #$04                ; $03:D82B: 09 04       ;
CODE_03D82D:    JMP CODE_03BD64         ; $03:D82D: 4C 64 BD    ;

CODE_03D830:    LDA #$01                ; $03:D830: A9 01       ;
CODE_03D832:    STA $1B                 ; $03:D832: 85 1B       ;
CODE_03D834:    LDA $0238,x             ; $03:D834: BD 38 02    ;
CODE_03D837:    CMP #$72                ; $03:D837: C9 72       ;
CODE_03D839:    BCC CODE_03D840         ; $03:D839: 90 05       ;
CODE_03D83B:    DEC $0238,x             ; $03:D83B: DE 38 02    ;
CODE_03D83E:    BRA CODE_03D84C         ; $03:D83E: 80 0C       ;

CODE_03D840:    LDA $06D7               ; $03:D840: AD D7 06    ;
CODE_03D843:    BEQ CODE_03D877         ; $03:D843: F0 32       ;
CODE_03D845:    BMI CODE_03D877         ; $03:D845: 30 30       ;
CODE_03D847:    LDA #$16                ; $03:D847: A9 16       ;
CODE_03D849:    STA $06CB               ; $03:D849: 8D CB 06    ;
CODE_03D84C:    JSR CODE_03FD39         ; $03:D84C: 20 39 FD    ;
CODE_03D84F:    LDY $0B46,x             ; $03:D84F: BC 46 0B    ;
CODE_03D852:    LDA $03B9               ; $03:D852: AD B9 03    ;
CODE_03D855:    STA $0901,y             ; $03:D855: 99 01 09    ;
CODE_03D858:    LDA $09                 ; $03:D858: A5 09       ;
CODE_03D85A:    AND #$18                ; $03:D85A: 29 18       ;
CODE_03D85C:    LSR A                   ; $03:D85C: 4A          ;
CODE_03D85D:    LSR A                   ; $03:D85D: 4A          ;
CODE_03D85E:    CLC                     ; $03:D85E: 18          ;
CODE_03D85F:    ADC #$04                ; $03:D85F: 69 04       ;
CODE_03D861:    STA $0902,y             ; $03:D861: 99 02 09    ;
CODE_03D864:    LDA #$0B                ; $03:D864: A9 0B       ;
CODE_03D866:    STA $0903,y             ; $03:D866: 99 03 09    ;
CODE_03D869:    LDA $03AE               ; $03:D869: AD AE 03    ;
CODE_03D86C:    STA $0900,y             ; $03:D86C: 99 00 09    ;
CODE_03D86F:    LDA #$02                ; $03:D86F: A9 02       ;
CODE_03D871:    STA $0D00,y             ; $03:D871: 99 00 0D    ;
CODE_03D874:    LDX $9E                 ; $03:D874: A6 9E       ;
CODE_03D876:    RTS                     ; $03:D876: 60          ;

CODE_03D877:    JSR CODE_03D84C         ; $03:D877: 20 4C D8    ;
CODE_03D87A:    LDA #$06                ; $03:D87A: A9 06       ;
CODE_03D87C:    STA $07A2,x             ; $03:D87C: 9D A2 07    ;
CODE_03D87F:    INC $0746               ; $03:D87F: EE 46 07    ;
CODE_03D882:    RTS                     ; $03:D882: 60          ;

CODE_03D883:    JSR CODE_03D84C         ; $03:D883: 20 4C D8    ;
CODE_03D886:    LDA $07A2,x             ; $03:D886: BD A2 07    ;
CODE_03D889:    BNE CODE_03D890         ; $03:D889: D0 05       ;
CODE_03D88B:    LDA $07B1               ; $03:D88B: AD B1 07    ;
CODE_03D88E:    BEQ CODE_03D87F         ; $03:D88E: F0 EF       ;
CODE_03D890:    RTS                     ; $03:D890: 60          ;

CODE_03D891:    LDA $29,x               ; $03:D891: B5 29       ;
CODE_03D893:    BNE CODE_03D8EB         ; $03:D893: D0 56       ;
CODE_03D895:    LDA $0792,x             ; $03:D895: BD 92 07    ;
CODE_03D898:    BNE CODE_03D8EB         ; $03:D898: D0 51       ;
CODE_03D89A:    LDA $A1,x               ; $03:D89A: B5 A1       ;
CODE_03D89C:    BNE CODE_03D8C1         ; $03:D89C: D0 23       ;
CODE_03D89E:    LDA $5E,x               ; $03:D89E: B5 5E       ;
CODE_03D8A0:    BMI CODE_03D8B6         ; $03:D8A0: 30 14       ;
CODE_03D8A2:    JSR CODE_03E8BC         ; $03:D8A2: 20 BC E8    ;
CODE_03D8A5:    BPL CODE_03D8B0         ; $03:D8A5: 10 09       ;
CODE_03D8A7:    LDA $00                 ; $03:D8A7: A5 00       ;
CODE_03D8A9:    EOR #$FF                ; $03:D8A9: 49 FF       ;
CODE_03D8AB:    CLC                     ; $03:D8AB: 18          ;
CODE_03D8AC:    ADC #$01                ; $03:D8AC: 69 01       ;
CODE_03D8AE:    STA $00                 ; $03:D8AE: 85 00       ;
CODE_03D8B0:    LDA $00                 ; $03:D8B0: A5 00       ;
CODE_03D8B2:    CMP #$21                ; $03:D8B2: C9 21       ;
CODE_03D8B4:    BCC CODE_03D8EB         ; $03:D8B4: 90 35       ;
CODE_03D8B6:    LDA $5E,x               ; $03:D8B6: B5 5E       ;
CODE_03D8B8:    EOR #$FF                ; $03:D8B8: 49 FF       ;
CODE_03D8BA:    CLC                     ; $03:D8BA: 18          ;
CODE_03D8BB:    ADC #$01                ; $03:D8BB: 69 01       ;
CODE_03D8BD:    STA $5E,x               ; $03:D8BD: 95 5E       ;
CODE_03D8BF:    INC $A1,x               ; $03:D8BF: F6 A1       ;
CODE_03D8C1:    LDA $043D,x             ; $03:D8C1: BD 3D 04    ;
CODE_03D8C4:    LDY $5E,x               ; $03:D8C4: B4 5E       ;
CODE_03D8C6:    BPL CODE_03D8CB         ; $03:D8C6: 10 03       ;
CODE_03D8C8:    LDA $041D,x             ; $03:D8C8: BD 1D 04    ;
CODE_03D8CB:    STA $00                 ; $03:D8CB: 85 00       ;
CODE_03D8CD:    LDA $09                 ; $03:D8CD: A5 09       ;
CODE_03D8CF:    LSR A                   ; $03:D8CF: 4A          ;
CODE_03D8D0:    BCC CODE_03D8EB         ; $03:D8D0: 90 19       ;
CODE_03D8D2:    LDA $0747               ; $03:D8D2: AD 47 07    ;
CODE_03D8D5:    BNE CODE_03D8EB         ; $03:D8D5: D0 14       ;
CODE_03D8D7:    LDA $0238,x             ; $03:D8D7: BD 38 02    ;
CODE_03D8DA:    CLC                     ; $03:D8DA: 18          ;
CODE_03D8DB:    ADC $5E,x               ; $03:D8DB: 75 5E       ;
CODE_03D8DD:    STA $0238,x             ; $03:D8DD: 9D 38 02    ;
CODE_03D8E0:    CMP $00                 ; $03:D8E0: C5 00       ;
CODE_03D8E2:    BNE CODE_03D8EB         ; $03:D8E2: D0 07       ;
CODE_03D8E4:    STZ $A1,x               ; $03:D8E4: 74 A1       ;
CODE_03D8E6:    LDA #$40                ; $03:D8E6: A9 40       ;
CODE_03D8E8:    STA $0792,x             ; $03:D8E8: 9D 92 07    ;
CODE_03D8EB:    LDA #$00                ; $03:D8EB: A9 00       ;
CODE_03D8ED:    STA $0257,x             ; $03:D8ED: 9D 57 02    ;
CODE_03D8F0:    RTS                     ; $03:D8F0: 60          ;

CODE_03D8F1:    STA $07                 ; $03:D8F1: 85 07       ;
CODE_03D8F3:    LDA $0203,x             ; $03:D8F3: BD 03 02    ;
CODE_03D8F6:    BNE CODE_03D906         ; $03:D8F6: D0 0E       ;
CODE_03D8F8:    LDY #$18                ; $03:D8F8: A0 18       ;
CODE_03D8FA:    LDA $5E,x               ; $03:D8FA: B5 5E       ;
CODE_03D8FC:    CLC                     ; $03:D8FC: 18          ;
CODE_03D8FD:    ADC $07                 ; $03:D8FD: 65 07       ;
CODE_03D8FF:    STA $5E,x               ; $03:D8FF: 95 5E       ;
CODE_03D901:    LDA $A1,x               ; $03:D901: B5 A1       ;
CODE_03D903:    ADC #$00                ; $03:D903: 69 00       ;
CODE_03D905:    RTS                     ; $03:D905: 60          ;

CODE_03D906:    LDY #$08                ; $03:D906: A0 08       ;
CODE_03D908:    LDA $5E,x               ; $03:D908: B5 5E       ;
CODE_03D90A:    SEC                     ; $03:D90A: 38          ;
CODE_03D90B:    SBC $07                 ; $03:D90B: E5 07       ;
CODE_03D90D:    STA $5E,x               ; $03:D90D: 95 5E       ;
CODE_03D90F:    LDA $A1,x               ; $03:D90F: B5 A1       ;
CODE_03D911:    SBC #$00                ; $03:D911: E9 00       ;
CODE_03D913:    RTS                     ; $03:D913: 60          ;

CODE_03D914:    LDA $BC,x               ; $03:D914: B5 BC       ;Lift (balance) movement code
CODE_03D916:    CMP #$03                ; $03:D916: C9 03       ;
CODE_03D918:    BNE CODE_03D91D         ; $03:D918: D0 03       ;
CODE_03D91A:    JMP CODE_03CDE2         ; $03:D91A: 4C E2 CD    ; Erase sprite

CODE_03D91D:    LDA $29,x               ; $03:D91D: B5 29       ;
CODE_03D91F:    BPL CODE_03D922         ; $03:D91F: 10 01       ;
CODE_03D921:    RTS                     ; $03:D921: 60          ;

CODE_03D922:    TAY                     ; $03:D922: A8          ;
CODE_03D923:    LDA $03A2,x             ; $03:D923: BD A2 03    ;
CODE_03D926:    STA $00                 ; $03:D926: 85 00       ;
CODE_03D928:    LDA $47,x               ; $03:D928: B5 47       ;
CODE_03D92A:    BEQ CODE_03D92F         ; $03:D92A: F0 03       ;
CODE_03D92C:    JMP CODE_03DB3A         ; $03:D92C: 4C 3A DB    ;

CODE_03D92F:    LDA #$2D                ; $03:D92F: A9 2D       ;
CODE_03D931:    CMP $0238,x             ; $03:D931: DD 38 02    ;
CODE_03D934:    BCC CODE_03D946         ; $03:D934: 90 10       ;
CODE_03D936:    CPY $00                 ; $03:D936: C4 00       ;
CODE_03D938:    BEQ CODE_03D943         ; $03:D938: F0 09       ;
CODE_03D93A:    CLC                     ; $03:D93A: 18          ;
CODE_03D93B:    ADC #$02                ; $03:D93B: 69 02       ;
CODE_03D93D:    STA $0238,x             ; $03:D93D: 9D 38 02    ;
CODE_03D940:    JMP CODE_03DB30         ; $03:D940: 4C 30 DB    ;

CODE_03D943:    JMP CODE_03DB17         ; $03:D943: 4C 17 DB    ;

CODE_03D946:    CMP $0238,y             ; $03:D946: D9 38 02    ;
CODE_03D949:    BCC CODE_03D958         ; $03:D949: 90 0D       ;
CODE_03D94B:    CPX $00                 ; $03:D94B: E4 00       ;
CODE_03D94D:    BEQ CODE_03D943         ; $03:D94D: F0 F4       ;
CODE_03D94F:    CLC                     ; $03:D94F: 18          ;
CODE_03D950:    ADC #$02                ; $03:D950: 69 02       ;
CODE_03D952:    STA $0238,y             ; $03:D952: 99 38 02    ;
CODE_03D955:    JMP CODE_03DB30         ; $03:D955: 4C 30 DB    ;

CODE_03D958:    LDA $0238,x             ; $03:D958: BD 38 02    ;
CODE_03D95B:    PHA                     ; $03:D95B: 48          ;
CODE_03D95C:    LDA $03A2,x             ; $03:D95C: BD A2 03    ;
CODE_03D95F:    BPL CODE_03D979         ; $03:D95F: 10 18       ;
CODE_03D961:    LDA $043D,x             ; $03:D961: BD 3D 04    ;
CODE_03D964:    CLC                     ; $03:D964: 18          ;
CODE_03D965:    ADC #$05                ; $03:D965: 69 05       ;
CODE_03D967:    STA $00                 ; $03:D967: 85 00       ;
CODE_03D969:    LDA $A1,x               ; $03:D969: B5 A1       ;
CODE_03D96B:    ADC #$00                ; $03:D96B: 69 00       ;
CODE_03D96D:    BMI CODE_03D989         ; $03:D96D: 30 1A       ;
CODE_03D96F:    BNE CODE_03D97D         ; $03:D96F: D0 0C       ;
CODE_03D971:    LDA $00                 ; $03:D971: A5 00       ;
CODE_03D973:    CMP #$0B                ; $03:D973: C9 0B       ;
CODE_03D975:    BCC CODE_03D983         ; $03:D975: 90 0C       ;
CODE_03D977:    BCS CODE_03D97D         ; $03:D977: B0 04       ;
CODE_03D979:    CMP $9E                 ; $03:D979: C5 9E       ;
CODE_03D97B:    BEQ CODE_03D989         ; $03:D97B: F0 0C       ;
CODE_03D97D:    JSR CODE_03C167         ; $03:D97D: 20 67 C1    ;
CODE_03D980:    JMP CODE_03D98C         ; $03:D980: 4C 8C D9    ;

CODE_03D983:    JSR CODE_03DB30         ; $03:D983: 20 30 DB    ;
CODE_03D986:    JMP CODE_03D98C         ; $03:D986: 4C 8C D9    ;

CODE_03D989:    JSR CODE_03C163         ; $03:D989: 20 63 C1    ;
CODE_03D98C:    LDY $29,x               ; $03:D98C: B4 29       ;
CODE_03D98E:    PLA                     ; $03:D98E: 68          ;
CODE_03D98F:    SEC                     ; $03:D98F: 38          ;
CODE_03D990:    SBC $0238,x             ; $03:D990: FD 38 02    ;
CODE_03D993:    CLC                     ; $03:D993: 18          ;
CODE_03D994:    ADC $0238,y             ; $03:D994: 79 38 02    ;
CODE_03D997:    STA $0238,y             ; $03:D997: 99 38 02    ;
CODE_03D99A:    LDA $03A2,x             ; $03:D99A: BD A2 03    ;
CODE_03D99D:    BMI CODE_03D9A3         ; $03:D99D: 30 04       ;
CODE_03D99F:    TAX                     ; $03:D99F: AA          ;
CODE_03D9A0:    JSR CODE_03E2CB         ; $03:D9A0: 20 CB E2    ;
CODE_03D9A3:    LDY $9E                 ; $03:D9A3: A4 9E       ;
CODE_03D9A5:    LDA $00A1,y             ; $03:D9A5: B9 A1 00    ;
CODE_03D9A8:    ORA $043D,y             ; $03:D9A8: 19 3D 04    ;
CODE_03D9AB:    BNE CODE_03D9B0         ; $03:D9AB: D0 03       ;
CODE_03D9AD:    JMP CODE_03DABF         ; $03:D9AD: 4C BF DA    ;

CODE_03D9B0:    LDA $00A1,y             ; $03:D9B0: B9 A1 00    ;
CODE_03D9B3:    PHA                     ; $03:D9B3: 48          ;
CODE_03D9B4:    PHA                     ; $03:D9B4: 48          ;
CODE_03D9B5:    PHA                     ; $03:D9B5: 48          ;
CODE_03D9B6:    JSR CODE_03DAC2         ; $03:D9B6: 20 C2 DA    ;
CODE_03D9B9:    LDA $42                 ; $03:D9B9: A5 42       ;
CODE_03D9BB:    LSR A                   ; $03:D9BB: 4A          ;
CODE_03D9BC:    LSR A                   ; $03:D9BC: 4A          ;
CODE_03D9BD:    LSR A                   ; $03:D9BD: 4A          ;
CODE_03D9BE:    STA $F3                 ; $03:D9BE: 85 F3       ;
CODE_03D9C0:    LDA $43                 ; $03:D9C0: A5 43       ;
CODE_03D9C2:    AND #$01                ; $03:D9C2: 29 01       ;
CODE_03D9C4:    ASL A                   ; $03:D9C4: 0A          ;
CODE_03D9C5:    ASL A                   ; $03:D9C5: 0A          ;
CODE_03D9C6:    ORA #$20                ; $03:D9C6: 09 20       ;
CODE_03D9C8:    STA $F4                 ; $03:D9C8: 85 F4       ;
CODE_03D9CA:    LDA $F3                 ; $03:D9CA: A5 F3       ;
CODE_03D9CC:    CLC                     ; $03:D9CC: 18          ;
CODE_03D9CD:    ADC #$1F                ; $03:D9CD: 69 1F       ;
CODE_03D9CF:    TAX                     ; $03:D9CF: AA          ;
CODE_03D9D0:    AND #$1F                ; $03:D9D0: 29 1F       ;
CODE_03D9D2:    STA $F5                 ; $03:D9D2: 85 F5       ;
CODE_03D9D4:    TXA                     ; $03:D9D4: 8A          ;
CODE_03D9D5:    AND #$20                ; $03:D9D5: 29 20       ;
CODE_03D9D7:    BEQ CODE_03D9DF         ; $03:D9D7: F0 06       ;
CODE_03D9D9:    LDA $F4                 ; $03:D9D9: A5 F4       ;
CODE_03D9DB:    EOR #$04                ; $03:D9DB: 49 04       ;
CODE_03D9DD:    STA $F6                 ; $03:D9DD: 85 F6       ;
CODE_03D9DF:    REP #$30                ; $03:D9DF: C2 30       ;
CODE_03D9E1:    LDA $00                 ; $03:D9E1: A5 00       ;
CODE_03D9E3:    AND #$241F              ; $03:D9E3: 29 1F 24    ;
CODE_03D9E6:    CMP $F3                 ; $03:D9E6: C5 F3       ;
CODE_03D9E8:    BCS CODE_03D9F1         ; $03:D9E8: B0 07       ;
CODE_03D9EA:    CMP $F5                 ; $03:D9EA: C5 F5       ;
CODE_03D9EC:    BCC CODE_03D9F1         ; $03:D9EC: 90 03       ;
CODE_03D9EE:    JMP CODE_03DA4A         ; $03:D9EE: 4C 4A DA    ;

CODE_03D9F1:    TYA                     ; $03:D9F1: 98          ;
CODE_03D9F2:    AND #$00FF              ; $03:D9F2: 29 FF 00    ;
CODE_03D9F5:    TAY                     ; $03:D9F5: A8          ;
CODE_03D9F6:    LDX $1700               ; $03:D9F6: AE 00 17    ;
CODE_03D9F9:    LDA $00                 ; $03:D9F9: A5 00       ;
CODE_03D9FB:    AND #$1FFF              ; $03:D9FB: 29 FF 1F    ;
CODE_03D9FE:    XBA                     ; $03:D9FE: EB          ;
CODE_03D9FF:    STA $1702,x             ; $03:D9FF: 9D 02 17    ;
CODE_03DA02:    LDA #$0300              ; $03:DA02: A9 00 03    ;
CODE_03DA05:    STA $1704,x             ; $03:DA05: 9D 04 17    ;
CODE_03DA08:    LDA $00A1,y             ; $03:DA08: B9 A1 00    ;
CODE_03DA0B:    AND #$0080              ; $03:DA0B: 29 80 00    ;
CODE_03DA0E:    BNE CODE_03DA33         ; $03:DA0E: D0 23       ;
CODE_03DA10:    LDA $1702,x             ; $03:DA10: BD 02 17    ;
CODE_03DA13:    AND #$F003              ; $03:DA13: 29 03 F0    ;
CODE_03DA16:    CMP #$A000              ; $03:DA16: C9 00 A0    ;
CODE_03DA19:    BEQ CODE_03DA20         ; $03:DA19: F0 05       ;
CODE_03DA1B:    CMP #$B000              ; $03:DA1B: C9 00 B0    ;
CODE_03DA1E:    BNE CODE_03DA25         ; $03:DA1E: D0 05       ;
CODE_03DA20:    LDA #$185C              ; $03:DA20: A9 5C 18    ;
CODE_03DA23:    BRA CODE_03DA28         ; $03:DA23: 80 03       ;

CODE_03DA25:    LDA #$10A2              ; $03:DA25: A9 A2 10    ;
CODE_03DA28:    STA $1706,x             ; $03:DA28: 9D 06 17    ;
CODE_03DA2B:    LDA #$18A3              ; $03:DA2B: A9 A3 18    ;
CODE_03DA2E:    STA $1708,x             ; $03:DA2E: 9D 08 17    ;
CODE_03DA31:    BRA CODE_03DA3C         ; $03:DA31: 80 09       ;

CODE_03DA33:    LDA #$0024              ; $03:DA33: A9 24 00    ;
CODE_03DA36:    STA $1706,x             ; $03:DA36: 9D 06 17    ;
CODE_03DA39:    STA $1708,x             ; $03:DA39: 9D 08 17    ;
CODE_03DA3C:    LDA #$FFFF              ; $03:DA3C: A9 FF FF    ;
CODE_03DA3F:    STA $170A,x             ; $03:DA3F: 9D 0A 17    ;
CODE_03DA42:    TXA                     ; $03:DA42: 8A          ;
CODE_03DA43:    CLC                     ; $03:DA43: 18          ;
CODE_03DA44:    ADC #$0008              ; $03:DA44: 69 08 00    ;
CODE_03DA47:    STA $1700               ; $03:DA47: 8D 00 17    ;
CODE_03DA4A:    SEP #$30                ; $03:DA4A: E2 30       ;
CODE_03DA4C:    LDA $0029,y             ; $03:DA4C: B9 29 00    ;
CODE_03DA4F:    TAY                     ; $03:DA4F: A8          ;
CODE_03DA50:    PLA                     ; $03:DA50: 68          ;
CODE_03DA51:    EOR #$FF                ; $03:DA51: 49 FF       ;
CODE_03DA53:    JSR CODE_03DAC2         ; $03:DA53: 20 C2 DA    ;
CODE_03DA56:    REP #$30                ; $03:DA56: C2 30       ;
CODE_03DA58:    LDA $00                 ; $03:DA58: A5 00       ;
CODE_03DA5A:    AND #$241F              ; $03:DA5A: 29 1F 24    ;
CODE_03DA5D:    CMP $F3                 ; $03:DA5D: C5 F3       ;
CODE_03DA5F:    BCS CODE_03DA68         ; $03:DA5F: B0 07       ;
CODE_03DA61:    CMP $F5                 ; $03:DA61: C5 F5       ;
CODE_03DA63:    BCC CODE_03DA68         ; $03:DA63: 90 03       ;
CODE_03DA65:    JMP CODE_03DABC         ; $03:DA65: 4C BC DA    ;

CODE_03DA68:    LDX $1700               ; $03:DA68: AE 00 17    ;
CODE_03DA6B:    LDA $00                 ; $03:DA6B: A5 00       ;
CODE_03DA6D:    AND #$1FFF              ; $03:DA6D: 29 FF 1F    ;
CODE_03DA70:    XBA                     ; $03:DA70: EB          ;
CODE_03DA71:    STA $1702,x             ; $03:DA71: 9D 02 17    ;
CODE_03DA74:    LDA #$0300              ; $03:DA74: A9 00 03    ;
CODE_03DA77:    STA $1704,x             ; $03:DA77: 9D 04 17    ;
CODE_03DA7A:    PLA                     ; $03:DA7A: 68          ;
CODE_03DA7B:    AND #$0080              ; $03:DA7B: 29 80 00    ;
CODE_03DA7E:    BEQ CODE_03DAA3         ; $03:DA7E: F0 23       ;
CODE_03DA80:    LDA #$10A2              ; $03:DA80: A9 A2 10    ;
CODE_03DA83:    STA $1706,x             ; $03:DA83: 9D 06 17    ;
CODE_03DA86:    LDA $1702,x             ; $03:DA86: BD 02 17    ;
CODE_03DA89:    AND #$F003              ; $03:DA89: 29 03 F0    ;
CODE_03DA8C:    CMP #$A000              ; $03:DA8C: C9 00 A0    ;
CODE_03DA8F:    BEQ CODE_03DA96         ; $03:DA8F: F0 05       ;
CODE_03DA91:    CMP #$B000              ; $03:DA91: C9 00 B0    ;
CODE_03DA94:    BNE CODE_03DA9B         ; $03:DA94: D0 05       ;
CODE_03DA96:    LDA #$183F              ; $03:DA96: A9 3F 18    ;
CODE_03DA99:    BRA CODE_03DA9E         ; $03:DA99: 80 03       ;

CODE_03DA9B:    LDA #$18A3              ; $03:DA9B: A9 A3 18    ;
CODE_03DA9E:    STA $1708,x             ; $03:DA9E: 9D 08 17    ;
CODE_03DAA1:    BRA CODE_03DAAC         ; $03:DAA1: 80 09       ;

CODE_03DAA3:    LDA #$0024              ; $03:DAA3: A9 24 00    ;
CODE_03DAA6:    STA $1706,x             ; $03:DAA6: 9D 06 17    ;
CODE_03DAA9:    STA $1708,x             ; $03:DAA9: 9D 08 17    ;
CODE_03DAAC:    LDA #$FFFF              ; $03:DAAC: A9 FF FF    ;
CODE_03DAAF:    STA $170A,x             ; $03:DAAF: 9D 0A 17    ;
CODE_03DAB2:    TXA                     ; $03:DAB2: 8A          ;
CODE_03DAB3:    CLC                     ; $03:DAB3: 18          ;
CODE_03DAB4:    ADC #$0008              ; $03:DAB4: 69 08 00    ;
CODE_03DAB7:    STA $1700               ; $03:DAB7: 8D 00 17    ;
CODE_03DABA:    BRA CODE_03DABD         ; $03:DABA: 80 01       ;

CODE_03DABC:    PLA                     ; $03:DABC: 68          ;
CODE_03DABD:    SEP #$30                ; $03:DABD: E2 30       ;
CODE_03DABF:    LDX $9E                 ; $03:DABF: A6 9E       ;
CODE_03DAC1:    RTS                     ; $03:DAC1: 60          ;

CODE_03DAC2:    PHA                     ; $03:DAC2: 48          ;
CODE_03DAC3:    LDA $021A,y             ; $03:DAC3: B9 1A 02    ;
CODE_03DAC6:    CLC                     ; $03:DAC6: 18          ;
CODE_03DAC7:    ADC #$08                ; $03:DAC7: 69 08       ;
CODE_03DAC9:    LDX $06CC               ; $03:DAC9: AE CC 06    ;
CODE_03DACC:    BNE CODE_03DAD1         ; $03:DACC: D0 03       ;
CODE_03DACE:    CLC                     ; $03:DACE: 18          ;
CODE_03DACF:    ADC #$10                ; $03:DACF: 69 10       ;
CODE_03DAD1:    PHA                     ; $03:DAD1: 48          ;
CODE_03DAD2:    LDA $0079,y             ; $03:DAD2: B9 79 00    ;
CODE_03DAD5:    ADC #$00                ; $03:DAD5: 69 00       ;
CODE_03DAD7:    STA $02                 ; $03:DAD7: 85 02       ;
CODE_03DAD9:    PLA                     ; $03:DAD9: 68          ;
CODE_03DADA:    AND #$F0                ; $03:DADA: 29 F0       ;
CODE_03DADC:    LSR A                   ; $03:DADC: 4A          ;
CODE_03DADD:    LSR A                   ; $03:DADD: 4A          ;
CODE_03DADE:    LSR A                   ; $03:DADE: 4A          ;
CODE_03DADF:    STA $00                 ; $03:DADF: 85 00       ;
CODE_03DAE1:    LDX $0238,y             ; $03:DAE1: BE 38 02    ;
CODE_03DAE4:    PLA                     ; $03:DAE4: 68          ;
CODE_03DAE5:    BPL CODE_03DAEC         ; $03:DAE5: 10 05       ;
CODE_03DAE7:    TXA                     ; $03:DAE7: 8A          ;
CODE_03DAE8:    CLC                     ; $03:DAE8: 18          ;
CODE_03DAE9:    ADC #$08                ; $03:DAE9: 69 08       ;
CODE_03DAEB:    TAX                     ; $03:DAEB: AA          ;
CODE_03DAEC:    TXA                     ; $03:DAEC: 8A          ;
CODE_03DAED:    ASL A                   ; $03:DAED: 0A          ;
CODE_03DAEE:    ROL A                   ; $03:DAEE: 2A          ;
CODE_03DAEF:    PHA                     ; $03:DAEF: 48          ;
CODE_03DAF0:    ROL A                   ; $03:DAF0: 2A          ;
CODE_03DAF1:    AND #$03                ; $03:DAF1: 29 03       ;
CODE_03DAF3:    ORA #$20                ; $03:DAF3: 09 20       ;
CODE_03DAF5:    STA $01                 ; $03:DAF5: 85 01       ;
CODE_03DAF7:    LDA $02                 ; $03:DAF7: A5 02       ;
CODE_03DAF9:    AND #$01                ; $03:DAF9: 29 01       ;
CODE_03DAFB:    ASL A                   ; $03:DAFB: 0A          ;
CODE_03DAFC:    ASL A                   ; $03:DAFC: 0A          ;
CODE_03DAFD:    ORA $01                 ; $03:DAFD: 05 01       ;
CODE_03DAFF:    STA $01                 ; $03:DAFF: 85 01       ;
CODE_03DB01:    PLA                     ; $03:DB01: 68          ;
CODE_03DB02:    AND #$E0                ; $03:DB02: 29 E0       ;
CODE_03DB04:    CLC                     ; $03:DB04: 18          ;
CODE_03DB05:    ADC $00                 ; $03:DB05: 65 00       ;
CODE_03DB07:    STA $00                 ; $03:DB07: 85 00       ;
CODE_03DB09:    LDA $0238,y             ; $03:DB09: B9 38 02    ;
CODE_03DB0C:    CMP #$E8                ; $03:DB0C: C9 E8       ;
CODE_03DB0E:    BCC CODE_03DB16         ; $03:DB0E: 90 06       ;
CODE_03DB10:    LDA $00                 ; $03:DB10: A5 00       ;
CODE_03DB12:    AND #$BF                ; $03:DB12: 29 BF       ;
CODE_03DB14:    STA $00                 ; $03:DB14: 85 00       ;
CODE_03DB16:    RTS                     ; $03:DB16: 60          ;

CODE_03DB17:    TYX                     ; $03:DB17: BB          ;
CODE_03DB18:    JSR CODE_03FDCB         ; $03:DB18: 20 CB FD    ;
CODE_03DB1B:    LDA #$06                ; $03:DB1B: A9 06       ;
CODE_03DB1D:    JSR CODE_03E07E         ; $03:DB1D: 20 7E E0    ;
CODE_03DB20:    LDA $03AD               ; $03:DB20: AD AD 03    ;
CODE_03DB23:    STA $011A,x             ; $03:DB23: 9D 1A 01    ;
CODE_03DB26:    LDA $0237               ; $03:DB26: AD 37 02    ;
CODE_03DB29:    STA $0124,x             ; $03:DB29: 9D 24 01    ;
CODE_03DB2C:    LDA #$01                ; $03:DB2C: A9 01       ;
CODE_03DB2E:    STA $47,x               ; $03:DB2E: 95 47       ;
CODE_03DB30:    JSR CODE_03C726         ; $03:DB30: 20 26 C7    ;
CODE_03DB33:    STA $00A1,y             ; $03:DB33: 99 A1 00    ;
CODE_03DB36:    STA $043D,y             ; $03:DB36: 99 3D 04    ;
CODE_03DB39:    RTS                     ; $03:DB39: 60          ;

CODE_03DB3A:    PHY                     ; $03:DB3A: 5A          ;
CODE_03DB3B:    JSR CODE_03C11B         ; $03:DB3B: 20 1B C1    ;
CODE_03DB3E:    PLX                     ; $03:DB3E: FA          ;
CODE_03DB3F:    LDA $29,x               ; $03:DB3F: B5 29       ;
CODE_03DB41:    BPL CODE_03DB46         ; $03:DB41: 10 03       ;
CODE_03DB43:    JSR CODE_03C11B         ; $03:DB43: 20 1B C1    ;
CODE_03DB46:    LDX $9E                 ; $03:DB46: A6 9E       ;
CODE_03DB48:    LDA $03A2,x             ; $03:DB48: BD A2 03    ;
CODE_03DB4B:    BMI CODE_03DB51         ; $03:DB4B: 30 04       ;
CODE_03DB4D:    TAX                     ; $03:DB4D: AA          ;
CODE_03DB4E:    JSR CODE_03E2CB         ; $03:DB4E: 20 CB E2    ;
CODE_03DB51:    LDX $9E                 ; $03:DB51: A6 9E       ;
CODE_03DB53:    RTS                     ; $03:DB53: 60          ;

CODE_03DB54:    LDA $A1,x               ; $03:DB54: B5 A1       ;
CODE_03DB56:    ORA $043D,x             ; $03:DB56: 1D 3D 04    ;
CODE_03DB59:    BNE CODE_03DB71         ; $03:DB59: D0 16       ;
CODE_03DB5B:    STA $041D,x             ; $03:DB5B: 9D 1D 04    ;
CODE_03DB5E:    LDA $0238,x             ; $03:DB5E: BD 38 02    ;
CODE_03DB61:    CMP $0402,x             ; $03:DB61: DD 02 04    ;
CODE_03DB64:    BCS CODE_03DB71         ; $03:DB64: B0 0B       ;
CODE_03DB66:    LDA $09                 ; $03:DB66: A5 09       ;
CODE_03DB68:    AND #$07                ; $03:DB68: 29 07       ;
CODE_03DB6A:    BNE CODE_03DB6F         ; $03:DB6A: D0 03       ;
CODE_03DB6C:    INC $0238,x             ; $03:DB6C: FE 38 02    ;
CODE_03DB6F:    BRA CODE_03DB81         ; $03:DB6F: 80 10       ;

CODE_03DB71:    LDA $0238,x             ; $03:DB71: BD 38 02    ;
CODE_03DB74:    CMP $5E,x               ; $03:DB74: D5 5E       ;
CODE_03DB76:    BCC CODE_03DB7E         ; $03:DB76: 90 06       ;
CODE_03DB78:    JSR CODE_03C167         ; $03:DB78: 20 67 C1    ;
CODE_03DB7B:    JMP CODE_03DB81         ; $03:DB7B: 4C 81 DB    ;

CODE_03DB7E:    JSR CODE_03C163         ; $03:DB7E: 20 63 C1    ;
CODE_03DB81:    LDA $03A2,x             ; $03:DB81: BD A2 03    ;
CODE_03DB84:    BMI CODE_03DB89         ; $03:DB84: 30 03       ;
CODE_03DB86:    JSR CODE_03E2CB         ; $03:DB86: 20 CB E2    ;
CODE_03DB89:    RTS                     ; $03:DB89: 60          ;

CODE_03DB8A:    LDA #$0E                ; $03:DB8A: A9 0E       ;
CODE_03DB8C:    JSR CODE_03CFDD         ; $03:DB8C: 20 DD CF    ;
CODE_03DB8F:    JSR CODE_03CFFC         ; $03:DB8F: 20 FC CF    ;
CODE_03DB92:    LDA $03A2,x             ; $03:DB92: BD A2 03    ;
CODE_03DB95:    BMI CODE_03DBB4         ; $03:DB95: 30 1D       ;
CODE_03DB97:    LDA $0219               ; $03:DB97: AD 19 02    ;
CODE_03DB9A:    CLC                     ; $03:DB9A: 18          ;
CODE_03DB9B:    ADC $00                 ; $03:DB9B: 65 00       ;
CODE_03DB9D:    STA $0219               ; $03:DB9D: 8D 19 02    ;
CODE_03DBA0:    LDA $78                 ; $03:DBA0: A5 78       ;
CODE_03DBA2:    LDY $00                 ; $03:DBA2: A4 00       ;
CODE_03DBA4:    BMI CODE_03DBAA         ; $03:DBA4: 30 04       ;
CODE_03DBA6:    ADC #$00                ; $03:DBA6: 69 00       ;
CODE_03DBA8:    BRA CODE_03DBAC         ; $03:DBA8: 80 02       ;

CODE_03DBAA:    SBC #$00                ; $03:DBAA: E9 00       ;
CODE_03DBAC:    STA $78                 ; $03:DBAC: 85 78       ;
CODE_03DBAE:    STY $03A1               ; $03:DBAE: 8C A1 03    ;
CODE_03DBB1:    JSR CODE_03E2CB         ; $03:DBB1: 20 CB E2    ;
CODE_03DBB4:    RTS                     ; $03:DBB4: 60          ;

CODE_03DBB5:    LDA $03A2,x             ; $03:DBB5: BD A2 03    ;
CODE_03DBB8:    BMI CODE_03DBC0         ; $03:DBB8: 30 06       ;
CODE_03DBBA:    JSR CODE_03C136         ; $03:DBBA: 20 36 C1    ;
CODE_03DBBD:    JSR CODE_03E2CB         ; $03:DBBD: 20 CB E2    ;
CODE_03DBC0:    RTS                     ; $03:DBC0: 60          ;

CODE_03DBC1:    JSR CODE_03C0AD         ; $03:DBC1: 20 AD C0    ;
CODE_03DBC4:    STA $00                 ; $03:DBC4: 85 00       ;
CODE_03DBC6:    LDA $03A2,x             ; $03:DBC6: BD A2 03    ;
CODE_03DBC9:    BMI CODE_03DBD2         ; $03:DBC9: 30 07       ;
CODE_03DBCB:    LDA #$10                ; $03:DBCB: A9 10       ;
CODE_03DBCD:    STA $5E,x               ; $03:DBCD: 95 5E       ;
CODE_03DBCF:    JSR CODE_03DB97         ; $03:DBCF: 20 97 DB    ;
CODE_03DBD2:    RTS                     ; $03:DBD2: 60          ;

CODE_03DBD3:    JSR CODE_03DBDE         ; $03:DBD3: 20 DE DB    ;
CODE_03DBD6:    JMP CODE_03DB81         ; $03:DBD6: 4C 81 DB    ;

CODE_03DBD9:    JSR CODE_03DBDE         ; $03:DBD9: 20 DE DB    ;
CODE_03DBDC:    BRA CODE_03DBF6         ; $03:DBDC: 80 18       ;

CODE_03DBDE:    LDA $0747               ; $03:DBDE: AD 47 07    ;
CODE_03DBE1:    BNE CODE_03DC02         ; $03:DBE1: D0 1F       ;
CODE_03DBE3:    LDA $041D,x             ; $03:DBE3: BD 1D 04    ;
CODE_03DBE6:    CLC                     ; $03:DBE6: 18          ;
CODE_03DBE7:    ADC $043D,x             ; $03:DBE7: 7D 3D 04    ;
CODE_03DBEA:    STA $041D,x             ; $03:DBEA: 9D 1D 04    ;
CODE_03DBED:    LDA $0238,x             ; $03:DBED: BD 38 02    ;
CODE_03DBF0:    ADC $A1,x               ; $03:DBF0: 75 A1       ;
CODE_03DBF2:    STA $0238,x             ; $03:DBF2: 9D 38 02    ;
CODE_03DBF5:    RTS                     ; $03:DBF5: 60          ;

CODE_03DBF6:    LDA $03A2,x             ; $03:DBF6: BD A2 03    ;
CODE_03DBF9:    BEQ CODE_03DC02         ; $03:DBF9: F0 07       ;
CODE_03DBFB:    CMP #$FF                ; $03:DBFB: C9 FF       ;
CODE_03DBFD:    BEQ CODE_03DC02         ; $03:DBFD: F0 03       ;
CODE_03DBFF:    JSR CODE_03E2BC         ; $03:DBFF: 20 BC E2    ;
CODE_03DC02:    RTS                     ; $03:DC02: 60          ;

CODE_03DC03:    LDA $1C,x               ; $03:DC03: B5 1C       ;\
CODE_03DC05:    CMP #$14                ; $03:DC05: C9 14       ; | If cheep-cheep, exit
CODE_03DC07:    BEQ CODE_03DC61         ; $03:DC07: F0 58       ;/
CODE_03DC09:    LDA $071C               ; $03:DC09: AD 1C 07    ;Get horizontal coordinate of left side of screen
CODE_03DC0C:    LDY $1C,x               ; $03:DC0C: B4 1C       ;\
CODE_03DC0E:    CPY #$05                ; $03:DC0E: C0 05       ; | Check for hammer bros and piranha plant sprites
CODE_03DC10:    BEQ CODE_03DC16         ; $03:DC10: F0 04       ; | Add 56 pixels if those.
CODE_03DC12:    CPY #$0D                ; $03:DC12: C0 0D       ; |
CODE_03DC14:    BNE CODE_03DC18         ; $03:DC14: D0 02       ; |
CODE_03DC16:    ADC #$38                ; $03:DC16: 69 38       ;/
CODE_03DC18:    SBC #$48                ; $03:DC18: E9 48       ;\Subtract 72 pixels from horizontal coordinate earlier
CODE_03DC1A:    STA $01                 ; $03:DC1A: 85 01       ;/Regardless of the sprite
CODE_03DC1C:    LDA $071A               ; $03:DC1C: AD 1A 07    ;\
CODE_03DC1F:    SBC #$00                ; $03:DC1F: E9 00       ; |
CODE_03DC21:    STA $00                 ; $03:DC21: 85 00       ; |
CODE_03DC23:    LDA $071D               ; $03:DC23: AD 1D 07    ; |
CODE_03DC26:    CLC                     ; $03:DC26: 18          ; |
CODE_03DC27:    ADC #$48                ; $03:DC27: 69 48       ; |add 72 pixels to the right side horizontal coordinate
CODE_03DC29:    STA $03                 ; $03:DC29: 85 03       ; |
CODE_03DC2B:    LDA $071B               ; $03:DC2B: AD 1B 07    ; |
CODE_03DC2E:    ADC #$00                ; $03:DC2E: 69 00       ; |
CODE_03DC30:    STA $02                 ; $03:DC30: 85 02       ; |
CODE_03DC32:    LDA $021A,x             ; $03:DC32: BD 1A 02    ; |
CODE_03DC35:    CMP $01                 ; $03:DC35: C5 01       ;/
CODE_03DC37:    LDA $79,x               ; $03:DC37: B5 79       ;\
CODE_03DC39:    SBC $00                 ; $03:DC39: E5 00       ; | if enemy object is too far left, branch to erase it
CODE_03DC3B:    BMI CODE_03DC5E         ; $03:DC3B: 30 21       ;/
CODE_03DC3D:    LDA $021A,x             ; $03:DC3D: BD 1A 02    ;
CODE_03DC40:    CMP $03                 ; $03:DC40: C5 03       ;
CODE_03DC42:    LDA $79,x               ; $03:DC42: B5 79       ;
CODE_03DC44:    SBC $02                 ; $03:DC44: E5 02       ;
CODE_03DC46:    BMI CODE_03DC61         ; $03:DC46: 30 19       ;
CODE_03DC48:    LDA $29,x               ; $03:DC48: B5 29       ;\
CODE_03DC4A:    CMP #$05                ; $03:DC4A: C9 05       ; |
CODE_03DC4C:    BEQ CODE_03DC61         ; $03:DC4C: F0 13       ; | Do not erase the following sprites when too far to the right:
CODE_03DC4E:    CPY #$0D                ; $03:DC4E: C0 0D       ; | Hammer bros, piranha plant, flagpole, star flag (at end of level), springboard
CODE_03DC50:    BEQ CODE_03DC61         ; $03:DC50: F0 0F       ; |
CODE_03DC52:    CPY #$30                ; $03:DC52: C0 30       ; |
CODE_03DC54:    BEQ CODE_03DC61         ; $03:DC54: F0 0B       ; |
CODE_03DC56:    CPY #$31                ; $03:DC56: C0 31       ; |
CODE_03DC58:    BEQ CODE_03DC61         ; $03:DC58: F0 07       ; |
CODE_03DC5A:    CPY #$32                ; $03:DC5A: C0 32       ; |
CODE_03DC5C:    BEQ CODE_03DC61         ; $03:DC5C: F0 03       ;/
CODE_03DC5E:    JSR CODE_03CDE2         ; $03:DC5E: 20 E2 CD    ;Erase sprite if necessary
CODE_03DC61:    RTS                     ; $03:DC61: 60          ;

DATA_03DC62:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;looks like empty space
                db $FF,$FF,$FF,$FF,$FF,$FF                      ;

CODE_03DC70:    LDA $33,x               ; $03:DC70: B5 33       ;
CODE_03DC72:    BEQ CODE_03DCCA         ; $03:DC72: F0 56       ;
CODE_03DC74:    ASL A                   ; $03:DC74: 0A          ;
CODE_03DC75:    BCS CODE_03DCCA         ; $03:DC75: B0 53       ;
CODE_03DC77:    LDA $09                 ; $03:DC77: A5 09       ;
CODE_03DC79:    LSR A                   ; $03:DC79: 4A          ;
CODE_03DC7A:    BCS CODE_03DCCA         ; $03:DC7A: B0 4E       ;
CODE_03DC7C:    TXA                     ; $03:DC7C: 8A          ;
CODE_03DC7D:    ASL A                   ; $03:DC7D: 0A          ;
CODE_03DC7E:    ASL A                   ; $03:DC7E: 0A          ;
CODE_03DC7F:    CLC                     ; $03:DC7F: 18          ;
CODE_03DC80:    ADC #$2C                ; $03:DC80: 69 2C       ;
CODE_03DC82:    TAY                     ; $03:DC82: A8          ;
CODE_03DC83:    LDX #$08                ; $03:DC83: A2 08       ;
CODE_03DC85:    STX $01                 ; $03:DC85: 86 01       ;
CODE_03DC87:    TYA                     ; $03:DC87: 98          ;
CODE_03DC88:    PHA                     ; $03:DC88: 48          ;
CODE_03DC89:    LDA $29,x               ; $03:DC89: B5 29       ;
CODE_03DC8B:    AND #$20                ; $03:DC8B: 29 20       ;
CODE_03DC8D:    BNE CODE_03DCC3         ; $03:DC8D: D0 34       ;
CODE_03DC8F:    LDA $10,x               ; $03:DC8F: B5 10       ;
CODE_03DC91:    BEQ CODE_03DCC3         ; $03:DC91: F0 30       ;
CODE_03DC93:    LDA $1C,x               ; $03:DC93: B5 1C       ;
CODE_03DC95:    CMP #$24                ; $03:DC95: C9 24       ;
CODE_03DC97:    BCC CODE_03DC9D         ; $03:DC97: 90 04       ;
CODE_03DC99:    CMP #$2B                ; $03:DC99: C9 2B       ;
CODE_03DC9B:    BCC CODE_03DCC3         ; $03:DC9B: 90 26       ;
CODE_03DC9D:    CMP #$06                ; $03:DC9D: C9 06       ;
CODE_03DC9F:    BNE CODE_03DCA7         ; $03:DC9F: D0 06       ;
CODE_03DCA1:    LDA $29,x               ; $03:DCA1: B5 29       ;
CODE_03DCA3:    CMP #$02                ; $03:DCA3: C9 02       ;
CODE_03DCA5:    BCS CODE_03DCC3         ; $03:DCA5: B0 1C       ;
CODE_03DCA7:    LDA $03D9,x             ; $03:DCA7: BD D9 03    ;
CODE_03DCAA:    BNE CODE_03DCC3         ; $03:DCAA: D0 17       ;
CODE_03DCAC:    TXA                     ; $03:DCAC: 8A          ;
CODE_03DCAD:    ASL A                   ; $03:DCAD: 0A          ;
CODE_03DCAE:    ASL A                   ; $03:DCAE: 0A          ;
CODE_03DCAF:    CLC                     ; $03:DCAF: 18          ;
CODE_03DCB0:    ADC #$04                ; $03:DCB0: 69 04       ;
CODE_03DCB2:    TAX                     ; $03:DCB2: AA          ;
CODE_03DCB3:    JSR CODE_03EAB9         ; $03:DCB3: 20 B9 EA    ;
CODE_03DCB6:    LDX $9E                 ; $03:DCB6: A6 9E       ;
CODE_03DCB8:    BCC CODE_03DCC3         ; $03:DCB8: 90 09       ;
CODE_03DCBA:    LDA #$80                ; $03:DCBA: A9 80       ;
CODE_03DCBC:    STA $33,x               ; $03:DCBC: 95 33       ;
CODE_03DCBE:    LDX $01                 ; $03:DCBE: A6 01       ;
CODE_03DCC0:    JSR CODE_03DCD5         ; $03:DCC0: 20 D5 DC    ;
CODE_03DCC3:    PLA                     ; $03:DCC3: 68          ;
CODE_03DCC4:    TAY                     ; $03:DCC4: A8          ;
CODE_03DCC5:    LDX $01                 ; $03:DCC5: A6 01       ;
CODE_03DCC7:    DEX                     ; $03:DCC7: CA          ;
CODE_03DCC8:    BPL CODE_03DC85         ; $03:DCC8: 10 BB       ;
CODE_03DCCA:    LDX $9E                 ; $03:DCCA: A6 9E       ;
CODE_03DCCC:    RTS                     ; $03:DCCC: 60          ;

DATA_03DCCD:    db $06,$00,$02,$12,$11,$07,$05,$2D              ;Sprite to generate when you kill Bowser with fireballs. 
                                                            ;In this order: Goomba, Green Koopa, Red Koopa, Spiny, Lakitu, Blooper, Hammer Bros., Bowser

CODE_03DCD5:    JSR CODE_03FD39         ; $03:DCD5: 20 39 FD    ;
CODE_03DCD8:    LDA #$03                ; $03:DCD8: A9 03       ;\
CODE_03DCDA:    STA $1600               ; $03:DCDA: 8D 00 16    ;/Shell kick sound
CODE_03DCDD:    LDX $01                 ; $03:DCDD: A6 01       ;
CODE_03DCDF:    LDA $10,x               ; $03:DCDF: B5 10       ;
CODE_03DCE1:    BPL CODE_03DCEE         ; $03:DCE1: 10 0B       ;
CODE_03DCE3:    AND #$0F                ; $03:DCE3: 29 0F       ;
CODE_03DCE5:    TAX                     ; $03:DCE5: AA          ;
CODE_03DCE6:    LDA $1C,x               ; $03:DCE6: B5 1C       ;
CODE_03DCE8:    CMP #$2D                ; $03:DCE8: C9 2D       ;
CODE_03DCEA:    BEQ CODE_03DCFB         ; $03:DCEA: F0 0F       ;
CODE_03DCEC:    LDX $01                 ; $03:DCEC: A6 01       ;
CODE_03DCEE:    LDA $1C,x               ; $03:DCEE: B5 1C       ;
CODE_03DCF0:    CMP #$02                ; $03:DCF0: C9 02       ;
CODE_03DCF2:    BNE CODE_03DCF7         ; $03:DCF2: D0 03       ;
CODE_03DCF4:    JMP CODE_03DDBD         ; $03:DCF4: 4C BD DD    ;

CODE_03DCF7:    CMP #$2D                ; $03:DCF7: C9 2D       ;
CODE_03DCF9:    BNE CODE_03DD75         ; $03:DCF9: D0 7A       ;
CODE_03DCFB:    LDA #$08                ; $03:DCFB: A9 08       ;
CODE_03DCFD:    STA $014B               ; $03:DCFD: 8D 4B 01    ;
CODE_03DD00:    LDA #$18                ; $03:DD00: A9 18       ;
CODE_03DD02:    STA $0F4C               ; $03:DD02: 8D 4C 0F    ;
CODE_03DD05:    DEC $0283               ; $03:DD05: CE 83 02    ;
CODE_03DD08:    BEQ CODE_03DD1F         ; $03:DD08: F0 15       ;
CODE_03DD0A:    LDA $0283               ; $03:DD0A: AD 83 02    ;
CODE_03DD0D:    CMP #$01                ; $03:DD0D: C9 01       ;
CODE_03DD0F:    BEQ CODE_03DD14         ; $03:DD0F: F0 03       ;
CODE_03DD11:    JMP CODE_03DDBD         ; $03:DD11: 4C BD DD    ;

CODE_03DD14:    STZ $03CA               ; $03:DD14: 9C CA 03    ;
CODE_03DD17:    LDA #$01                ; $03:DD17: A9 01       ;
CODE_03DD19:    STA $03CB               ; $03:DD19: 8D CB 03    ;
CODE_03DD1C:    JMP CODE_03DDBD         ; $03:DD1C: 4C BD DD    ;

CODE_03DD1F:    LDA #$08                ; $03:DD1F: A9 08       ;
CODE_03DD21:    STA $014B               ; $03:DD21: 8D 4B 01    ;
CODE_03DD24:    LDA #$FF                ; $03:DD24: A9 FF       ;
CODE_03DD26:    STA $0F4C               ; $03:DD26: 8D 4C 0F    ;
CODE_03DD29:    JSR CODE_03C726         ; $03:DD29: 20 26 C7    ;
CODE_03DD2C:    STA $5E,x               ; $03:DD2C: 95 5E       ;
CODE_03DD2E:    STA $06CB               ; $03:DD2E: 8D CB 06    ;
CODE_03DD31:    LDA #$FE                ; $03:DD31: A9 FE       ;
CODE_03DD33:    STA $A1,x               ; $03:DD33: 95 A1       ;
CODE_03DD35:    LDY $075F               ; $03:DD35: AC 5F 07    ;\
CODE_03DD38:    LDA DATA_03DCCD,y       ; $03:DD38: B9 CD DC    ; |
CODE_03DD3B:    STA $1C,x               ; $03:DD3B: 95 1C       ;/Sprite to generate: Bowser killed sprite depending on the world
CODE_03DD3D:    STX $02FC               ; $03:DD3D: 8E FC 02    ;
CODE_03DD40:    INC $02FC               ; $03:DD40: EE FC 02    ;
CODE_03DD43:    CMP #$2D                ; $03:DD43: C9 2D       ;
CODE_03DD45:    BEQ CODE_03DD65         ; $03:DD45: F0 1E       ;
CODE_03DD47:    PHX                     ; $03:DD47: DA          ;
CODE_03DD48:    LDA $DB                 ; $03:DD48: A5 DB       ;
CODE_03DD4A:    CMP #$21                ; $03:DD4A: C9 21       ;
CODE_03DD4C:    BEQ CODE_03DD64         ; $03:DD4C: F0 16       ;
CODE_03DD4E:    STX $0077               ; $03:DD4E: 8E 77 00    ;
CODE_03DD51:    INC $0077               ; $03:DD51: EE 77 00    ;
CODE_03DD54:    LDX #$08                ; $03:DD54: A2 08       ;
CODE_03DD56:    LDA $1C,x               ; $03:DD56: B5 1C       ;
CODE_03DD58:    DEX                     ; $03:DD58: CA          ;
CODE_03DD59:    BMI CODE_03DD64         ; $03:DD59: 30 09       ;
CODE_03DD5B:    CMP #$2D                ; $03:DD5B: C9 2D       ;
CODE_03DD5D:    BNE CODE_03DD56         ; $03:DD5D: D0 F7       ;
CODE_03DD5F:    INX                     ; $03:DD5F: E8          ;
CODE_03DD60:    STZ $10,x               ; $03:DD60: 74 10       ;
CODE_03DD62:    STZ $1C,x               ; $03:DD62: 74 1C       ;
CODE_03DD64:    PLX                     ; $03:DD64: FA          ;
CODE_03DD65:    LDA #$20                ; $03:DD65: A9 20       ;
CODE_03DD67:    CPY #$03                ; $03:DD67: C0 03       ;
CODE_03DD69:    BCS CODE_03DD6D         ; $03:DD69: B0 02       ;
CODE_03DD6B:    ORA #$03                ; $03:DD6B: 09 03       ;
CODE_03DD6D:    STA $29,x               ; $03:DD6D: 95 29       ;
CODE_03DD6F:    LDX $01                 ; $03:DD6F: A6 01       ;
CODE_03DD71:    LDA #$09                ; $03:DD71: A9 09       ;
CODE_03DD73:    BNE CODE_03DDAA         ; $03:DD73: D0 35       ;
CODE_03DD75:    CMP #$08                ; $03:DD75: C9 08       ;
CODE_03DD77:    BEQ CODE_03DDBD         ; $03:DD77: F0 44       ;
CODE_03DD79:    CMP #$0C                ; $03:DD79: C9 0C       ;
CODE_03DD7B:    BEQ CODE_03DDBD         ; $03:DD7B: F0 40       ;
CODE_03DD7D:    CMP #$15                ; $03:DD7D: C9 15       ;
CODE_03DD7F:    BCS CODE_03DDBD         ; $03:DD7F: B0 3C       ;
CODE_03DD81:    LDA $1C,x               ; $03:DD81: B5 1C       ;
CODE_03DD83:    CMP #$0D                ; $03:DD83: C9 0D       ;
CODE_03DD85:    BNE CODE_03DD8F         ; $03:DD85: D0 08       ;
CODE_03DD87:    LDA $0238,x             ; $03:DD87: BD 38 02    ;
CODE_03DD8A:    ADC #$18                ; $03:DD8A: 69 18       ;
CODE_03DD8C:    STA $0238,x             ; $03:DD8C: 9D 38 02    ;
CODE_03DD8F:    JSR CODE_03E789         ; $03:DD8F: 20 89 E7    ;
CODE_03DD92:    LDA $29,x               ; $03:DD92: B5 29       ;
CODE_03DD94:    AND #$1F                ; $03:DD94: 29 1F       ;
CODE_03DD96:    ORA #$20                ; $03:DD96: 09 20       ;
CODE_03DD98:    STA $29,x               ; $03:DD98: 95 29       ;
CODE_03DD9A:    LDA #$02                ; $03:DD9A: A9 02       ;
CODE_03DD9C:    LDY $1C,x               ; $03:DD9C: B4 1C       ;
CODE_03DD9E:    CPY #$05                ; $03:DD9E: C0 05       ;
CODE_03DDA0:    BNE CODE_03DDA4         ; $03:DDA0: D0 02       ;
CODE_03DDA2:    LDA #$06                ; $03:DDA2: A9 06       ;
CODE_03DDA4:    CPY #$06                ; $03:DDA4: C0 06       ;
CODE_03DDA6:    BNE CODE_03DDAA         ; $03:DDA6: D0 02       ;
CODE_03DDA8:    LDA #$01                ; $03:DDA8: A9 01       ;
CODE_03DDAA:    JSR CODE_03E07E         ; $03:DDAA: 20 7E E0    ;
CODE_03DDAD:    LDA $1600               ; $03:DDAD: AD 00 16    ;
CODE_03DDB0:    CMP #$03                ; $03:DDB0: C9 03       ;
CODE_03DDB2:    BEQ CODE_03DDBD         ; $03:DDB2: F0 09       ;
CODE_03DDB4:    LDA #$03                ; $03:DDB4: A9 03       ;\Shell kick sound
CODE_03DDB6:    STA $1600               ; $03:DDB6: 8D 00 16    ;/
CODE_03DDB9:    JSL CODE_05D2B1         ; $03:DDB9: 22 B1 D2 05 ;
CODE_03DDBD:    RTS                     ; $03:DDBD: 60          ;

CODE_03DDBE:    LDA $09                 ; $03:DDBE: A5 09       ;
CODE_03DDC0:    LSR A                   ; $03:DDC0: 4A          ;
CODE_03DDC1:    BCC CODE_03DDF9         ; $03:DDC1: 90 36       ;
CODE_03DDC3:    LDA $0747               ; $03:DDC3: AD 47 07    ;
CODE_03DDC6:    ORA $03D6               ; $03:DDC6: 0D D6 03    ;
CODE_03DDC9:    BNE CODE_03DDF9         ; $03:DDC9: D0 2E       ;
CODE_03DDCB:    TXA                     ; $03:DDCB: 8A          ;
CODE_03DDCC:    ASL A                   ; $03:DDCC: 0A          ;
CODE_03DDCD:    ASL A                   ; $03:DDCD: 0A          ;
CODE_03DDCE:    CLC                     ; $03:DDCE: 18          ;
CODE_03DDCF:    ADC #$34                ; $03:DDCF: 69 34       ;
CODE_03DDD1:    TAY                     ; $03:DDD1: A8          ;
CODE_03DDD2:    JSR CODE_03EAB7         ; $03:DDD2: 20 B7 EA    ;
CODE_03DDD5:    LDX $9E                 ; $03:DDD5: A6 9E       ;
CODE_03DDD7:    BCC CODE_03DDF4         ; $03:DDD7: 90 1B       ;
CODE_03DDD9:    LDA $06BE,x             ; $03:DDD9: BD BE 06    ;
CODE_03DDDC:    BNE CODE_03DDF9         ; $03:DDDC: D0 1B       ;
CODE_03DDDE:    LDA #$01                ; $03:DDDE: A9 01       ;
CODE_03DDE0:    STA $06BE,x             ; $03:DDE0: 9D BE 06    ;
CODE_03DDE3:    LDA $6E,x               ; $03:DDE3: B5 6E       ;
CODE_03DDE5:    EOR #$FF                ; $03:DDE5: 49 FF       ;
CODE_03DDE7:    CLC                     ; $03:DDE7: 18          ;
CODE_03DDE8:    ADC #$01                ; $03:DDE8: 69 01       ;
CODE_03DDEA:    STA $6E,x               ; $03:DDEA: 95 6E       ;
CODE_03DDEC:    LDA $07AF               ; $03:DDEC: AD AF 07    ;
CODE_03DDEF:    BNE CODE_03DDF9         ; $03:DDEF: D0 08       ;
CODE_03DDF1:    JMP CODE_03DF4D         ; $03:DDF1: 4C 4D DF    ;

CODE_03DDF4:    LDA #$00                ; $03:DDF4: A9 00       ;
CODE_03DDF6:    STA $06BE,x             ; $03:DDF6: 9D BE 06    ;
CODE_03DDF9:    RTS                     ; $03:DDF9: 60          ;

CODE_03DDFA:    JSR CODE_03CDE5         ; $03:DDFA: 20 E5 CD    ;
CODE_03DDFD:    LDA #$06                ; $03:DDFD: A9 06       ;
CODE_03DDFF:    JSR CODE_03E04F         ; $03:DDFF: 20 4F E0    ;
CODE_03DE02:    LDA #$0A                ; $03:DE02: A9 0A       ;\You got powerup sound
CODE_03DE04:    STA $1600               ; $03:DE04: 8D 00 16    ;/
CODE_03DE07:    LDA $020C               ; $03:DE07: AD 0C 02    ;\ If you obtained a mushroom or fireflower
CODE_03DE0A:    CMP #$02                ; $03:DE0A: C9 02       ; |skip this code (to another code)
CODE_03DE0C:    BCC CODE_03DE1D         ; $03:DE0C: 90 0F       ; |
CODE_03DE0E:    CMP #$03                ; $03:DE0E: C9 03       ; |If you got a 1-up
CODE_03DE10:    BEQ CODE_03DE37         ; $03:DE10: F0 25       ;/ skip this code (to another code)
CODE_03DE12:    LDA #$23                ; $03:DE12: A9 23       ;\ Otherwise enable starman stuff.
CODE_03DE14:    STA $07AF               ; $03:DE14: 8D AF 07    ; |You got the star powerup music.
CODE_03DE17:    LDA #$0D                ; $03:DE17: A9 0D       ; |Set the timer of the starman powerup.
CODE_03DE19:    STA $1602               ; $03:DE19: 8D 02 16    ;/
CODE_03DE1C:    RTS                     ; $03:DE1C: 60          ;Return

CODE_03DE1D:    LDA $0756               ; $03:DE1D: AD 56 07    ;\If you got a mushroom go branch
CODE_03DE20:    BEQ CODE_03DE42         ; $03:DE20: F0 20       ;/
CODE_03DE22:    CMP #$01                ; $03:DE22: C9 01       ;If it is NOT fireflower, return
CODE_03DE24:    BNE CODE_03DE4E         ; $03:DE24: D0 28       ;useless check, the only values can be $00-$01
CODE_03DE26:    LDX $9E                 ; $03:DE26: A6 9E       ;
CODE_03DE28:    LDA #$02                ; $03:DE28: A9 02       ;\Set fireflower powerup
CODE_03DE2A:    STA $0756               ; $03:DE2A: 8D 56 07    ;/
CODE_03DE2D:    JSL CODE_049A88         ; $03:DE2D: 22 88 9A 04 ;
CODE_03DE31:    LDX $9E                 ; $03:DE31: A6 9E       ;Get sprite index
CODE_03DE33:    LDA #$0C                ; $03:DE33: A9 0C       ;Set "fireflower get" animation
CODE_03DE35:    BRA CODE_03DE49         ; $03:DE35: 80 12       ;

CODE_03DE37:    LDA #$0B                ; $03:DE37: A9 0B       ;\
CODE_03DE39:    STA $0110,x             ; $03:DE39: 9D 10 01    ;/Get 1up
CODE_03DE3C:    LDA #$00                ; $03:DE3C: A9 00       ;\
CODE_03DE3E:    STA $1600               ; $03:DE3E: 8D 00 16    ;/No SFX?
CODE_03DE41:    RTS                     ; $03:DE41: 60          ;

CODE_03DE42:    LDA #$01                ; $03:DE42: A9 01       ;\
CODE_03DE44:    STA $0756               ; $03:DE44: 8D 56 07    ;/Set Mario's powerup
CODE_03DE47:    LDA #$09                ; $03:DE47: A9 09       ;Set "Mario got a powerup" flag
CODE_03DE49:    LDY #$00                ; $03:DE49: A0 00       ;Mario standing still flag?
CODE_03DE4B:    JSR CODE_03DF6C         ; $03:DE4B: 20 6C DF    ;Goto powerup stuff
CODE_03DE4E:    RTS                     ; $03:DE4E: 60          ;

DATA_03DE4F:    db $18,$E8                                      ;

DATA_03DE51:    db $30,$D0                                      ;

DATA_03DE53:    db $08,$F8                                      ;

CODE_03DE55:    LDA $09                 ; $03:DE55: A5 09       ;
CODE_03DE57:    LSR A                   ; $03:DE57: 4A          ;
CODE_03DE58:    BCS CODE_03DE4E         ; $03:DE58: B0 F4       ;
CODE_03DE5A:    JSR CODE_03E2ED         ; $03:DE5A: 20 ED E2    ;
CODE_03DE5D:    BCS CODE_03DE8F         ; $03:DE5D: B0 30       ;
CODE_03DE5F:    CPX #$09                ; $03:DE5F: E0 09       ;
CODE_03DE61:    BNE CODE_03DE6C         ; $03:DE61: D0 09       ;
CODE_03DE63:    LDA $03AE               ; $03:DE63: AD AE 03    ;
CODE_03DE66:    BPL CODE_03DE6C         ; $03:DE66: 10 04       ;
CODE_03DE68:    CMP #$F4                ; $03:DE68: C9 F4       ;
CODE_03DE6A:    BCS CODE_03DE71         ; $03:DE6A: B0 05       ;
CODE_03DE6C:    LDA $03D9,x             ; $03:DE6C: BD D9 03    ;
CODE_03DE6F:    BNE CODE_03DE8F         ; $03:DE6F: D0 1E       ;
CODE_03DE71:    LDA $0F                 ; $03:DE71: A5 0F       ;
CODE_03DE73:    CMP #$08                ; $03:DE73: C9 08       ;
CODE_03DE75:    BNE CODE_03DE8F         ; $03:DE75: D0 18       ;
CODE_03DE77:    LDA $29,x               ; $03:DE77: B5 29       ;
CODE_03DE79:    AND #$20                ; $03:DE79: 29 20       ;
CODE_03DE7B:    BNE CODE_03DE8F         ; $03:DE7B: D0 12       ;
CODE_03DE7D:    JSR CODE_03E2F7         ; $03:DE7D: 20 F7 E2    ;
CODE_03DE80:    JSR CODE_03EAB7         ; $03:DE80: 20 B7 EA    ;
CODE_03DE83:    LDX $9E                 ; $03:DE83: A6 9E       ;
CODE_03DE85:    BCS CODE_03DE90         ; $03:DE85: B0 09       ;
CODE_03DE87:    LDA $0481,x             ; $03:DE87: BD 81 04    ;
CODE_03DE8A:    AND #$FE                ; $03:DE8A: 29 FE       ;
CODE_03DE8C:    STA $0481,x             ; $03:DE8C: 9D 81 04    ;
CODE_03DE8F:    RTS                     ; $03:DE8F: 60          ;

CODE_03DE90:    LDY $1C,x               ; $03:DE90: B4 1C       ;
CODE_03DE92:    CPY #$2E                ; $03:DE92: C0 2E       ;
CODE_03DE94:    BNE CODE_03DE99         ; $03:DE94: D0 03       ;
CODE_03DE96:    JMP CODE_03DDFA         ; $03:DE96: 4C FA DD    ;

CODE_03DE99:    LDA $07AF               ; $03:DE99: AD AF 07    ;
CODE_03DE9C:    BEQ CODE_03DEA4         ; $03:DE9C: F0 06       ;
CODE_03DE9E:    JMP CODE_03DD81         ; $03:DE9E: 4C 81 DD    ;

DATA_03DEA1:    db $0A,$06,$04                                  ;

CODE_03DEA4:    LDA $0481,x             ; $03:DEA4: BD 81 04    ;
CODE_03DEA7:    AND #$01                ; $03:DEA7: 29 01       ;
CODE_03DEA9:    ORA $03D9,x             ; $03:DEA9: 1D D9 03    ;
CODE_03DEAC:    BNE CODE_03DF14         ; $03:DEAC: D0 66       ;
CODE_03DEAE:    LDA #$01                ; $03:DEAE: A9 01       ;
CODE_03DEB0:    ORA $0481,x             ; $03:DEB0: 1D 81 04    ;
CODE_03DEB3:    STA $0481,x             ; $03:DEB3: 9D 81 04    ;
CODE_03DEB6:    CPY #$12                ; $03:DEB6: C0 12       ;
CODE_03DEB8:    BEQ CODE_03DF15         ; $03:DEB8: F0 5B       ;
CODE_03DEBA:    CPY #$0D                ; $03:DEBA: C0 0D       ;
CODE_03DEBC:    BNE CODE_03DEC1         ; $03:DEBC: D0 03       ;
CODE_03DEBE:    JMP CODE_03DF4D         ; $03:DEBE: 4C 4D DF    ;

CODE_03DEC1:    CPY #$0C                ; $03:DEC1: C0 0C       ;
CODE_03DEC3:    BNE CODE_03DEC8         ; $03:DEC3: D0 03       ;
CODE_03DEC5:    JMP CODE_03DF4D         ; $03:DEC5: 4C 4D DF    ;

CODE_03DEC8:    CPY #$33                ; $03:DEC8: C0 33       ;
CODE_03DECA:    BEQ CODE_03DF15         ; $03:DECA: F0 49       ;
CODE_03DECC:    CPY #$15                ; $03:DECC: C0 15       ;
CODE_03DECE:    BCS CODE_03DF4D         ; $03:DECE: B0 7D       ;
CODE_03DED0:    LDA $5C                 ; $03:DED0: A5 5C       ;
CODE_03DED2:    BEQ CODE_03DF4D         ; $03:DED2: F0 79       ;
CODE_03DED4:    LDA $29,x               ; $03:DED4: B5 29       ;
CODE_03DED6:    ASL A                   ; $03:DED6: 0A          ;
CODE_03DED7:    BCS CODE_03DF15         ; $03:DED7: B0 3C       ;
CODE_03DED9:    LDA $29,x               ; $03:DED9: B5 29       ;
CODE_03DEDB:    AND #$07                ; $03:DEDB: 29 07       ;
CODE_03DEDD:    CMP #$02                ; $03:DEDD: C9 02       ;
CODE_03DEDF:    BCC CODE_03DF15         ; $03:DEDF: 90 34       ;
CODE_03DEE1:    LDA $1C,x               ; $03:DEE1: B5 1C       ;
CODE_03DEE3:    CMP #$06                ; $03:DEE3: C9 06       ;
CODE_03DEE5:    BEQ CODE_03DF14         ; $03:DEE5: F0 2D       ;
CODE_03DEE7:    LDA #$03                ; $03:DEE7: A9 03       ;\Shell kick sound
CODE_03DEE9:    STA $1600               ; $03:DEE9: 8D 00 16    ;/
CODE_03DEEC:    JSL CODE_05D2B1         ; $03:DEEC: 22 B1 D2 05 ;
CODE_03DEF0:    STZ $0F40,x             ; $03:DEF0: 9E 40 0F    ;
CODE_03DEF3:    LDA $29,x               ; $03:DEF3: B5 29       ;
CODE_03DEF5:    ORA #$80                ; $03:DEF5: 09 80       ;
CODE_03DEF7:    STA $29,x               ; $03:DEF7: 95 29       ;
CODE_03DEF9:    JSR CODE_03E043         ; $03:DEF9: 20 43 E0    ;
CODE_03DEFC:    LDA DATA_03DE51,y       ; $03:DEFC: B9 51 DE    ;
CODE_03DEFF:    STA $5E,x               ; $03:DEFF: 95 5E       ;
CODE_03DF01:    LDA #$03                ; $03:DF01: A9 03       ;
CODE_03DF03:    CLC                     ; $03:DF03: 18          ;
CODE_03DF04:    ADC $0284               ; $03:DF04: 6D 84 02    ;
CODE_03DF07:    LDY $07A2,x             ; $03:DF07: BC A2 07    ;
CODE_03DF0A:    CPY #$03                ; $03:DF0A: C0 03       ;
CODE_03DF0C:    BCS CODE_03DF11         ; $03:DF0C: B0 03       ;
CODE_03DF0E:    LDA DATA_03DEA1,y       ; $03:DF0E: B9 A1 DE    ;
CODE_03DF11:    JSR CODE_03E07E         ; $03:DF11: 20 7E E0    ;
CODE_03DF14:    RTS                     ; $03:DF14: 60          ;

CODE_03DF15:    LDA $A0                 ; $03:DF15: A5 A0       ;
CODE_03DF17:    BMI CODE_03DF1E         ; $03:DF17: 30 05       ;
CODE_03DF19:    BEQ CODE_03DF1E         ; $03:DF19: F0 03       ;
CODE_03DF1B:    JMP CODE_03DFA6         ; $03:DF1B: 4C A6 DF    ;

CODE_03DF1E:    LDA $1C,x               ; $03:DF1E: B5 1C       ;
CODE_03DF20:    CMP #$07                ; $03:DF20: C9 07       ;
CODE_03DF22:    BCC CODE_03DF2F         ; $03:DF22: 90 0B       ;
CODE_03DF24:    LDA $0237               ; $03:DF24: AD 37 02    ;
CODE_03DF27:    CLC                     ; $03:DF27: 18          ;
CODE_03DF28:    ADC #$0C                ; $03:DF28: 69 0C       ;
CODE_03DF2A:    CMP $0238,x             ; $03:DF2A: DD 38 02    ;
CODE_03DF2D:    BCC CODE_03DFA6         ; $03:DF2D: 90 77       ;
CODE_03DF2F:    LDA $079D               ; $03:DF2F: AD 9D 07    ;
CODE_03DF32:    BNE CODE_03DFA6         ; $03:DF32: D0 72       ;
CODE_03DF34:    LDA $07AE               ; $03:DF34: AD AE 07    ;
CODE_03DF37:    BNE CODE_03DF79         ; $03:DF37: D0 40       ;
CODE_03DF39:    LDA $03AD               ; $03:DF39: AD AD 03    ;
CODE_03DF3C:    CMP $03AE               ; $03:DF3C: CD AE 03    ;
CODE_03DF3F:    BCC CODE_03DF44         ; $03:DF3F: 90 03       ;
CODE_03DF41:    JMP CODE_03E034         ; $03:DF41: 4C 34 E0    ;

CODE_03DF44:    LDA $47,x               ; $03:DF44: B5 47       ;
CODE_03DF46:    CMP #$01                ; $03:DF46: C9 01       ;
CODE_03DF48:    BNE CODE_03DF4D         ; $03:DF48: D0 03       ;
CODE_03DF4A:    JMP CODE_03E03D         ; $03:DF4A: 4C 3D E0    ;

CODE_03DF4D:    LDA $07AE               ; $03:DF4D: AD AE 07    ;
CODE_03DF50:    BNE CODE_03DF79         ; $03:DF50: D0 27       ;
CODE_03DF52:    LDX $0756               ; $03:DF52: AE 56 07    ;
CODE_03DF55:    BEQ CODE_03DF7C         ; $03:DF55: F0 25       ;
CODE_03DF57:    STA $0756               ; $03:DF57: 8D 56 07    ;
CODE_03DF5A:    LDA #$08                ; $03:DF5A: A9 08       ;
CODE_03DF5C:    STA $07AE               ; $03:DF5C: 8D AE 07    ;
CODE_03DF5F:    LDA #$04                ; $03:DF5F: A9 04       ;\
CODE_03DF61:    STA $1600               ; $03:DF61: 8D 00 16    ;/Enter pipe/hurt sound
CODE_03DF64:    JSL CODE_049A88         ; $03:DF64: 22 88 9A 04 ;
CODE_03DF68:    LDA #$0A                ; $03:DF68: A9 0A       ;
CODE_03DF6A:    LDY #$01                ; $03:DF6A: A0 01       ;
CODE_03DF6C:    STA $0F                 ; $03:DF6C: 85 0F       ;
CODE_03DF6E:    STY $28                 ; $03:DF6E: 84 28       ;
CODE_03DF70:    LDY #$FF                ; $03:DF70: A0 FF       ;\Everything freezes timer
CODE_03DF72:    STY $0747               ; $03:DF72: 8C 47 07    ;/
CODE_03DF75:    INY                     ; $03:DF75: C8          ;
CODE_03DF76:    STY $0775               ; $03:DF76: 8C 75 07    ;
CODE_03DF79:    LDX $9E                 ; $03:DF79: A6 9E       ;
CODE_03DF7B:    RTS                     ; $03:DF7B: 60          ;

CODE_03DF7C:    STX $5D                 ; $03:DF7C: 86 5D       ;
CODE_03DF7E:    PHX                     ; $03:DF7E: DA          ;
CODE_03DF7F:    LDA #$01                ; $03:DF7F: A9 01       ;
CODE_03DF81:    STA $0754               ; $03:DF81: 8D 54 07    ;
CODE_03DF84:    JSL CODE_049A88         ; $03:DF84: 22 88 9A 04 ;
CODE_03DF88:    PLX                     ; $03:DF88: FA          ;
CODE_03DF89:    INX                     ; $03:DF89: E8          ;
CODE_03DF8A:    LDA #$09                ; $03:DF8A: A9 09       ;\
CODE_03DF8C:    STA $1602               ; $03:DF8C: 8D 02 16    ;/Mario died music
CODE_03DF8F:    LDA #$09                ; $03:DF8F: A9 09       ;\
CODE_03DF91:    STA $1602               ; $03:DF91: 8D 02 16    ;/...
CODE_03DF94:    STA $0E67               ; $03:DF94: 8D 67 0E    ;
CODE_03DF97:    STA $0723               ; $03:DF97: 8D 23 07    ;
CODE_03DF9A:    LDA #$FC                ; $03:DF9A: A9 FC       ;
CODE_03DF9C:    STA $A0                 ; $03:DF9C: 85 A0       ;
CODE_03DF9E:    LDA #$0B                ; $03:DF9E: A9 0B       ;
CODE_03DFA0:    BNE CODE_03DF6A         ; $03:DFA0: D0 C8       ;

DATA_03DFA2:    db $02,$06,$05,$06                              ;

CODE_03DFA6:    LDA $1C,x               ; $03:DFA6: B5 1C       ;
CODE_03DFA8:    CMP #$12                ; $03:DFA8: C9 12       ;
CODE_03DFAA:    BEQ CODE_03DF4D         ; $03:DFAA: F0 A1       ;
CODE_03DFAC:    LDA #$02                ; $03:DFAC: A9 02       ;\Jump on enemy sound
CODE_03DFAE:    STA $1600               ; $03:DFAE: 8D 00 16    ;/
CODE_03DFB1:    LDA $1C,x               ; $03:DFB1: B5 1C       ;
CODE_03DFB3:    LDY #$00                ; $03:DFB3: A0 00       ;
CODE_03DFB5:    CMP #$14                ; $03:DFB5: C9 14       ;
CODE_03DFB7:    BEQ CODE_03DFD4         ; $03:DFB7: F0 1B       ;
CODE_03DFB9:    CMP #$08                ; $03:DFB9: C9 08       ;
CODE_03DFBB:    BEQ CODE_03DFD4         ; $03:DFBB: F0 17       ;
CODE_03DFBD:    CMP #$33                ; $03:DFBD: C9 33       ;
CODE_03DFBF:    BEQ CODE_03DFD4         ; $03:DFBF: F0 13       ;
CODE_03DFC1:    CMP #$0C                ; $03:DFC1: C9 0C       ;
CODE_03DFC3:    BEQ CODE_03DFD4         ; $03:DFC3: F0 0F       ;
CODE_03DFC5:    INY                     ; $03:DFC5: C8          ;
CODE_03DFC6:    CMP #$05                ; $03:DFC6: C9 05       ;
CODE_03DFC8:    BEQ CODE_03DFD4         ; $03:DFC8: F0 0A       ;
CODE_03DFCA:    INY                     ; $03:DFCA: C8          ;
CODE_03DFCB:    CMP #$11                ; $03:DFCB: C9 11       ;
CODE_03DFCD:    BEQ CODE_03DFD4         ; $03:DFCD: F0 05       ;
CODE_03DFCF:    INY                     ; $03:DFCF: C8          ;
CODE_03DFD0:    CMP #$07                ; $03:DFD0: C9 07       ;
CODE_03DFD2:    BNE CODE_03DFF1         ; $03:DFD2: D0 1D       ;
CODE_03DFD4:    LDA DATA_03DFA2,y       ; $03:DFD4: B9 A2 DF    ;
CODE_03DFD7:    JSR CODE_03E07E         ; $03:DFD7: 20 7E E0    ;
CODE_03DFDA:    LDA $47,x               ; $03:DFDA: B5 47       ;
CODE_03DFDC:    PHA                     ; $03:DFDC: 48          ;
CODE_03DFDD:    JSR CODE_03E79D         ; $03:DFDD: 20 9D E7    ;
CODE_03DFE0:    PLA                     ; $03:DFE0: 68          ;
CODE_03DFE1:    STA $47,x               ; $03:DFE1: 95 47       ;
CODE_03DFE3:    LDA #$20                ; $03:DFE3: A9 20       ;
CODE_03DFE5:    STA $29,x               ; $03:DFE5: 95 29       ;
CODE_03DFE7:    JSR CODE_03C726         ; $03:DFE7: 20 26 C7    ;
CODE_03DFEA:    STA $5E,x               ; $03:DFEA: 95 5E       ;
CODE_03DFEC:    LDA #$FD                ; $03:DFEC: A9 FD       ;
CODE_03DFEE:    STA $A0                 ; $03:DFEE: 85 A0       ;
CODE_03DFF0:    RTS                     ; $03:DFF0: 60          ;

CODE_03DFF1:    CMP #$09                ; $03:DFF1: C9 09       ;
CODE_03DFF3:    BCC CODE_03E012         ; $03:DFF3: 90 1D       ;
CODE_03DFF5:    AND #$01                ; $03:DFF5: 29 01       ;
CODE_03DFF7:    STA $1C,x               ; $03:DFF7: 95 1C       ;
CODE_03DFF9:    LDY #$00                ; $03:DFF9: A0 00       ;
CODE_03DFFB:    STY $29,x               ; $03:DFFB: 94 29       ;
CODE_03DFFD:    LDA #$03                ; $03:DFFD: A9 03       ;
CODE_03DFFF:    JSR CODE_03E07E         ; $03:DFFF: 20 7E E0    ;
CODE_03E002:    JSR CODE_03C726         ; $03:E002: 20 26 C7    ;
CODE_03E005:    JSR CODE_03E043         ; $03:E005: 20 43 E0    ;
CODE_03E008:    LDA DATA_03DE53,y       ; $03:E008: B9 53 DE    ;
CODE_03E00B:    STA $5E,x               ; $03:E00B: 95 5E       ;
CODE_03E00D:    JMP CODE_03E02F         ; $03:E00D: 4C 2F E0    ;

DATA_03E010:    db $10,$0B                                      ;

CODE_03E012:    LDA #$04                ; $03:E012: A9 04       ;
CODE_03E014:    STA $29,x               ; $03:E014: 95 29       ;
CODE_03E016:    INC $0284               ; $03:E016: EE 84 02    ;
CODE_03E019:    LDA $0284               ; $03:E019: AD 84 02    ;
CODE_03E01C:    CLC                     ; $03:E01C: 18          ;
CODE_03E01D:    ADC $079D               ; $03:E01D: 6D 9D 07    ;
CODE_03E020:    JSR CODE_03E07E         ; $03:E020: 20 7E E0    ;
CODE_03E023:    INC $079D               ; $03:E023: EE 9D 07    ;
CODE_03E026:    LDY $076A               ; $03:E026: AC 6A 07    ;"More difficult quest" flag
CODE_03E029:    LDA DATA_03E010,y       ; $03:E029: B9 10 E0    ;
CODE_03E02C:    STA $07A2,x             ; $03:E02C: 9D A2 07    ;
CODE_03E02F:    LDA #$FB                ; $03:E02F: A9 FB       ;
CODE_03E031:    STA $A0                 ; $03:E031: 85 A0       ;
CODE_03E033:    RTS                     ; $03:E033: 60          ;

CODE_03E034:    LDA $47,x               ; $03:E034: B5 47       ;
CODE_03E036:    CMP #$01                ; $03:E036: C9 01       ;
CODE_03E038:    BNE CODE_03E03D         ; $03:E038: D0 03       ;
CODE_03E03A:    JMP CODE_03DF4D         ; $03:E03A: 4C 4D DF    ;

CODE_03E03D:    JSR CODE_03E1BE         ; $03:E03D: 20 BE E1    ;
CODE_03E040:    JMP CODE_03DF4D         ; $03:E040: 4C 4D DF    ;

CODE_03E043:    LDY #$01                ; $03:E043: A0 01       ;
CODE_03E045:    JSR CODE_03E8BC         ; $03:E045: 20 BC E8    ;
CODE_03E048:    BPL CODE_03E04B         ; $03:E048: 10 01       ;
CODE_03E04A:    INY                     ; $03:E04A: C8          ;
CODE_03E04B:    STY $47,x               ; $03:E04B: 94 47       ;
CODE_03E04D:    DEY                     ; $03:E04D: 88          ;
CODE_03E04E:    RTS                     ; $03:E04E: 60          ;

CODE_03E04F:    STA $0110,x             ; $03:E04F: 9D 10 01    ;
CODE_03E052:    LDA #$30                ; $03:E052: A9 30       ;
CODE_03E054:    STA $0138,x             ; $03:E054: 9D 38 01    ;
CODE_03E057:    LDA $0238,x             ; $03:E057: BD 38 02    ;
CODE_03E05A:    STA $0124,x             ; $03:E05A: 9D 24 01    ;
CODE_03E05D:    LDA $03AE               ; $03:E05D: AD AE 03    ;
CODE_03E060:    STA $011A,x             ; $03:E060: 9D 1A 01    ;
CODE_03E063:    LDA $021A,x             ; $03:E063: BD 1A 02    ;
CODE_03E066:    STA $ED                 ; $03:E066: 85 ED       ;
CODE_03E068:    LDA $79,x               ; $03:E068: B5 79       ;
CODE_03E06A:    STA $EE                 ; $03:E06A: 85 EE       ;
CODE_03E06C:    PHX                     ; $03:E06C: DA          ;
CODE_03E06D:    TXA                     ; $03:E06D: 8A          ;
CODE_03E06E:    ASL A                   ; $03:E06E: 0A          ;
CODE_03E06F:    TAX                     ; $03:E06F: AA          ;
CODE_03E070:    REP #$20                ; $03:E070: C2 20       ;
CODE_03E072:    LDA $ED                 ; $03:E072: A5 ED       ;
CODE_03E074:    SEC                     ; $03:E074: 38          ;
CODE_03E075:    SBC $42                 ; $03:E075: E5 42       ;
CODE_03E077:    STA $0E50,x             ; $03:E077: 9D 50 0E    ;
CODE_03E07A:    SEP #$20                ; $03:E07A: E2 20       ;
CODE_03E07C:    PLX                     ; $03:E07C: FA          ;
CODE_03E07D:    RTS                     ; $03:E07D: 60          ;

CODE_03E07E:    CMP $0110,x             ; $03:E07E: DD 10 01    ;
CODE_03E081:    BCS CODE_03E084         ; $03:E081: B0 01       ;
CODE_03E083:    RTS                     ; $03:E083: 60          ;

CODE_03E084:    STA $0110,x             ; $03:E084: 9D 10 01    ;
CODE_03E087:    LDA #$30                ; $03:E087: A9 30       ;
CODE_03E089:    STA $0138,x             ; $03:E089: 9D 38 01    ;
CODE_03E08C:    LDA $0238,x             ; $03:E08C: BD 38 02    ;
CODE_03E08F:    STA $0124,x             ; $03:E08F: 9D 24 01    ;
CODE_03E092:    LDA $03AE               ; $03:E092: AD AE 03    ;
CODE_03E095:    STA $011A,x             ; $03:E095: 9D 1A 01    ;
CODE_03E098:    PHY                     ; $03:E098: 5A          ;
CODE_03E099:    TXA                     ; $03:E099: 8A          ;
CODE_03E09A:    ASL A                   ; $03:E09A: 0A          ;
CODE_03E09B:    TAY                     ; $03:E09B: A8          ;
CODE_03E09C:    LDA $021A,x             ; $03:E09C: BD 1A 02    ;
CODE_03E09F:    STA $E4                 ; $03:E09F: 85 E4       ;
CODE_03E0A1:    LDA $79,x               ; $03:E0A1: B5 79       ;
CODE_03E0A3:    STA $E5                 ; $03:E0A3: 85 E5       ;
CODE_03E0A5:    REP #$20                ; $03:E0A5: C2 20       ;
CODE_03E0A7:    LDA $E4                 ; $03:E0A7: A5 E4       ;
CODE_03E0A9:    SEC                     ; $03:E0A9: 38          ;
CODE_03E0AA:    SBC $42                 ; $03:E0AA: E5 42       ;
CODE_03E0AC:    STA $0E50,y             ; $03:E0AC: 99 50 0E    ;
CODE_03E0AF:    SEP #$20                ; $03:E0AF: E2 20       ;
CODE_03E0B1:    STA $011A,x             ; $03:E0B1: 9D 1A 01    ;
CODE_03E0B4:    PLY                     ; $03:E0B4: 7A          ;
CODE_03E0B5:    RTS                     ; $03:E0B5: 60          ;

DATA_03E0B6:    db $80,$40,$20,$10,$08,$04,$02                  ;

DATA_03E0BD:    db $7F,$BF,$DF,$EF,$F7,$FB,$FD                  ;

CODE_03E0C4:    LDA $09                 ; $03:E0C4: A5 09       ;
CODE_03E0C6:    LSR A                   ; $03:E0C6: 4A          ;
CODE_03E0C7:    BCC CODE_03E07D         ; $03:E0C7: 90 B4       ;
CODE_03E0C9:    LDA $5C                 ; $03:E0C9: A5 5C       ;
CODE_03E0CB:    BEQ CODE_03E07D         ; $03:E0CB: F0 B0       ;
CODE_03E0CD:    LDA $1C,x               ; $03:E0CD: B5 1C       ;
CODE_03E0CF:    CMP #$15                ; $03:E0CF: C9 15       ;
CODE_03E0D1:    BCS CODE_03E140         ; $03:E0D1: B0 6D       ;
CODE_03E0D3:    CMP #$11                ; $03:E0D3: C9 11       ;
CODE_03E0D5:    BEQ CODE_03E140         ; $03:E0D5: F0 69       ;
CODE_03E0D7:    CMP #$0D                ; $03:E0D7: C9 0D       ;
CODE_03E0D9:    BEQ CODE_03E140         ; $03:E0D9: F0 65       ;
CODE_03E0DB:    LDA $03D9,x             ; $03:E0DB: BD D9 03    ;
CODE_03E0DE:    BNE CODE_03E140         ; $03:E0DE: D0 60       ;
CODE_03E0E0:    JSR CODE_03E2F7         ; $03:E0E0: 20 F7 E2    ;
CODE_03E0E3:    DEX                     ; $03:E0E3: CA          ;
CODE_03E0E4:    BMI CODE_03E140         ; $03:E0E4: 30 5A       ;
CODE_03E0E6:    STX $01                 ; $03:E0E6: 86 01       ;
CODE_03E0E8:    TYA                     ; $03:E0E8: 98          ;
CODE_03E0E9:    PHA                     ; $03:E0E9: 48          ;
CODE_03E0EA:    LDA $10,x               ; $03:E0EA: B5 10       ;
CODE_03E0EC:    BEQ CODE_03E139         ; $03:E0EC: F0 4B       ;
CODE_03E0EE:    LDA $1C,x               ; $03:E0EE: B5 1C       ;
CODE_03E0F0:    CMP #$15                ; $03:E0F0: C9 15       ;
CODE_03E0F2:    BCS CODE_03E139         ; $03:E0F2: B0 45       ;
CODE_03E0F4:    CMP #$11                ; $03:E0F4: C9 11       ;
CODE_03E0F6:    BEQ CODE_03E139         ; $03:E0F6: F0 41       ;
CODE_03E0F8:    CMP #$0D                ; $03:E0F8: C9 0D       ;
CODE_03E0FA:    BEQ CODE_03E139         ; $03:E0FA: F0 3D       ;
CODE_03E0FC:    LDA $03D9,x             ; $03:E0FC: BD D9 03    ;
CODE_03E0FF:    BNE CODE_03E139         ; $03:E0FF: D0 38       ;
CODE_03E101:    TXA                     ; $03:E101: 8A          ;
CODE_03E102:    ASL A                   ; $03:E102: 0A          ;
CODE_03E103:    ASL A                   ; $03:E103: 0A          ;
CODE_03E104:    CLC                     ; $03:E104: 18          ;
CODE_03E105:    ADC #$04                ; $03:E105: 69 04       ;
CODE_03E107:    TAX                     ; $03:E107: AA          ;
CODE_03E108:    JSR CODE_03EAB9         ; $03:E108: 20 B9 EA    ;
CODE_03E10B:    LDX $9E                 ; $03:E10B: A6 9E       ;
CODE_03E10D:    LDY $01                 ; $03:E10D: A4 01       ;
CODE_03E10F:    BCC CODE_03E130         ; $03:E10F: 90 1F       ;
CODE_03E111:    LDA $29,x               ; $03:E111: B5 29       ;
CODE_03E113:    ORA $0029,y             ; $03:E113: 19 29 00    ;
CODE_03E116:    AND #$80                ; $03:E116: 29 80       ;
CODE_03E118:    BNE CODE_03E12B         ; $03:E118: D0 11       ;
CODE_03E11A:    LDA $0481,y             ; $03:E11A: B9 81 04    ;
CODE_03E11D:    AND DATA_03E0B6,x       ; $03:E11D: 3D B6 E0    ;
CODE_03E120:    BNE CODE_03E139         ; $03:E120: D0 17       ;
CODE_03E122:    LDA $0481,y             ; $03:E122: B9 81 04    ;
CODE_03E125:    ORA DATA_03E0B6,x       ; $03:E125: 1D B6 E0    ;
CODE_03E128:    STA $0481,y             ; $03:E128: 99 81 04    ;
CODE_03E12B:    JSR CODE_03E143         ; $03:E12B: 20 43 E1    ;
CODE_03E12E:    BRA CODE_03E139         ; $03:E12E: 80 09       ;

CODE_03E130:    LDA $0481,y             ; $03:E130: B9 81 04    ;
CODE_03E133:    AND DATA_03E0BD,x       ; $03:E133: 3D BD E0    ;
CODE_03E136:    STA $0481,y             ; $03:E136: 99 81 04    ;
CODE_03E139:    PLA                     ; $03:E139: 68          ;
CODE_03E13A:    TAY                     ; $03:E13A: A8          ;
CODE_03E13B:    LDX $01                 ; $03:E13B: A6 01       ;
CODE_03E13D:    DEX                     ; $03:E13D: CA          ;
CODE_03E13E:    BPL CODE_03E0E6         ; $03:E13E: 10 A6       ;
CODE_03E140:    LDX $9E                 ; $03:E140: A6 9E       ;
CODE_03E142:    RTS                     ; $03:E142: 60          ;

CODE_03E143:    LDA $0029,y             ; $03:E143: B9 29 00    ;
CODE_03E146:    ORA $29,x               ; $03:E146: 15 29       ;
CODE_03E148:    AND #$20                ; $03:E148: 29 20       ;
CODE_03E14A:    BNE CODE_03E183         ; $03:E14A: D0 37       ;
CODE_03E14C:    LDA $1C,x               ; $03:E14C: B5 1C       ;
CODE_03E14E:    CMP #$05                ; $03:E14E: C9 05       ;
CODE_03E150:    BNE CODE_03E154         ; $03:E150: D0 02       ;
CODE_03E152:    STZ $29,x               ; $03:E152: 74 29       ;
CODE_03E154:    LDA $29,x               ; $03:E154: B5 29       ;
CODE_03E156:    CMP #$06                ; $03:E156: C9 06       ;
CODE_03E158:    BCC CODE_03E184         ; $03:E158: 90 2A       ;
CODE_03E15A:    LDA $0029,y             ; $03:E15A: B9 29 00    ;
CODE_03E15D:    ASL A                   ; $03:E15D: 0A          ;
CODE_03E15E:    BCC CODE_03E16A         ; $03:E15E: 90 0A       ;
CODE_03E160:    LDA #$06                ; $03:E160: A9 06       ;
CODE_03E162:    JSR CODE_03E07E         ; $03:E162: 20 7E E0    ;
CODE_03E165:    JSR CODE_03DD81         ; $03:E165: 20 81 DD    ;
CODE_03E168:    LDY $01                 ; $03:E168: A4 01       ;
CODE_03E16A:    TYA                     ; $03:E16A: 98          ;
CODE_03E16B:    TAX                     ; $03:E16B: AA          ;
CODE_03E16C:    JSR CODE_03DD81         ; $03:E16C: 20 81 DD    ;
CODE_03E16F:    LDX $9E                 ; $03:E16F: A6 9E       ;
CODE_03E171:    LDA $012E,x             ; $03:E171: BD 2E 01    ;
CODE_03E174:    CLC                     ; $03:E174: 18          ;
CODE_03E175:    ADC #$04                ; $03:E175: 69 04       ;
CODE_03E177:    LDX $01                 ; $03:E177: A6 01       ;
CODE_03E179:    JSR CODE_03E07E         ; $03:E179: 20 7E E0    ;
CODE_03E17C:    LDX $9E                 ; $03:E17C: A6 9E       ;
CODE_03E17E:    INC $012E,x             ; $03:E17E: FE 2E 01    ;
CODE_03E181:    BRA CODE_03E1A7         ; $03:E181: 80 24       ;

CODE_03E183:    RTS                     ; $03:E183: 60          ;

CODE_03E184:    LDA $0029,y             ; $03:E184: B9 29 00    ;
CODE_03E187:    CMP #$06                ; $03:E187: C9 06       ;
CODE_03E189:    BCC CODE_03E1B7         ; $03:E189: 90 2C       ;
CODE_03E18B:    LDA $001C,y             ; $03:E18B: B9 1C 00    ;
CODE_03E18E:    CMP #$05                ; $03:E18E: C9 05       ;
CODE_03E190:    BEQ CODE_03E183         ; $03:E190: F0 F1       ;
CODE_03E192:    JSR CODE_03DD81         ; $03:E192: 20 81 DD    ;
CODE_03E195:    LDY $01                 ; $03:E195: A4 01       ;
CODE_03E197:    LDA $012E,y             ; $03:E197: B9 2E 01    ;
CODE_03E19A:    CLC                     ; $03:E19A: 18          ;
CODE_03E19B:    ADC #$04                ; $03:E19B: 69 04       ;
CODE_03E19D:    LDX $9E                 ; $03:E19D: A6 9E       ;
CODE_03E19F:    JSR CODE_03E07E         ; $03:E19F: 20 7E E0    ;
CODE_03E1A2:    LDX $01                 ; $03:E1A2: A6 01       ;
CODE_03E1A4:    INC $012E,x             ; $03:E1A4: FE 2E 01    ;
CODE_03E1A7:    LDA $012E,x             ; $03:E1A7: BD 2E 01    ;
CODE_03E1AA:    CLC                     ; $03:E1AA: 18          ;
CODE_03E1AB:    ADC #$12                ; $03:E1AB: 69 12       ;
CODE_03E1AD:    CMP #$1A                ; $03:E1AD: C9 1A       ;
CODE_03E1AF:    BCC CODE_03E1B3         ; $03:E1AF: 90 02       ;
CODE_03E1B1:    LDA #$00                ; $03:E1B1: A9 00       ;\
CODE_03E1B3:    STA $1600               ; $03:E1B3: 8D 00 16    ;/No sound
CODE_03E1B6:    RTS                     ; $03:E1B6: 60          ;

CODE_03E1B7:    TYA                     ; $03:E1B7: 98          ;
CODE_03E1B8:    TAX                     ; $03:E1B8: AA          ;
CODE_03E1B9:    JSR CODE_03E1BE         ; $03:E1B9: 20 BE E1    ;
CODE_03E1BC:    LDX $9E                 ; $03:E1BC: A6 9E       ;
CODE_03E1BE:    LDA $1C,x               ; $03:E1BE: B5 1C       ;
CODE_03E1C0:    CMP #$0D                ; $03:E1C0: C9 0D       ;
CODE_03E1C2:    BEQ CODE_03E1E6         ; $03:E1C2: F0 22       ;
CODE_03E1C4:    CMP #$11                ; $03:E1C4: C9 11       ;
CODE_03E1C6:    BEQ CODE_03E1E6         ; $03:E1C6: F0 1E       ;
CODE_03E1C8:    CMP #$05                ; $03:E1C8: C9 05       ;
CODE_03E1CA:    BEQ CODE_03E1E6         ; $03:E1CA: F0 1A       ;
CODE_03E1CC:    CMP #$12                ; $03:E1CC: C9 12       ;
CODE_03E1CE:    BEQ CODE_03E1D8         ; $03:E1CE: F0 08       ;
CODE_03E1D0:    CMP #$0E                ; $03:E1D0: C9 0E       ;
CODE_03E1D2:    BEQ CODE_03E1D8         ; $03:E1D2: F0 04       ;
CODE_03E1D4:    CMP #$07                ; $03:E1D4: C9 07       ;
CODE_03E1D6:    BCS CODE_03E1E6         ; $03:E1D6: B0 0E       ;
CODE_03E1D8:    LDA $5E,x               ; $03:E1D8: B5 5E       ;
CODE_03E1DA:    EOR #$FF                ; $03:E1DA: 49 FF       ;
CODE_03E1DC:    TAY                     ; $03:E1DC: A8          ;
CODE_03E1DD:    INY                     ; $03:E1DD: C8          ;
CODE_03E1DE:    STY $5E,x               ; $03:E1DE: 94 5E       ;
CODE_03E1E0:    LDA $47,x               ; $03:E1E0: B5 47       ;
CODE_03E1E2:    EOR #$03                ; $03:E1E2: 49 03       ;
CODE_03E1E4:    STA $47,x               ; $03:E1E4: 95 47       ;
CODE_03E1E6:    RTS                     ; $03:E1E6: 60          ;

CODE_03E1E7:    LDA #$FF                ; $03:E1E7: A9 FF       ;
CODE_03E1E9:    STA $03A2,x             ; $03:E1E9: 9D A2 03    ;
CODE_03E1EC:    LDA $0747               ; $03:E1EC: AD 47 07    ;
CODE_03E1EF:    BNE CODE_03E21B         ; $03:E1EF: D0 2A       ;
CODE_03E1F1:    LDA $29,x               ; $03:E1F1: B5 29       ;
CODE_03E1F3:    BMI CODE_03E21B         ; $03:E1F3: 30 26       ;
CODE_03E1F5:    LDA $1C,x               ; $03:E1F5: B5 1C       ;
CODE_03E1F7:    CMP #$24                ; $03:E1F7: C9 24       ;
CODE_03E1F9:    BNE CODE_03E201         ; $03:E1F9: D0 06       ;
CODE_03E1FB:    LDA $29,x               ; $03:E1FB: B5 29       ;
CODE_03E1FD:    TAX                     ; $03:E1FD: AA          ;
CODE_03E1FE:    JSR CODE_03E201         ; $03:E1FE: 20 01 E2    ;
CODE_03E201:    JSR CODE_03E2ED         ; $03:E201: 20 ED E2    ;
CODE_03E204:    BCS CODE_03E21B         ; $03:E204: B0 15       ;
CODE_03E206:    TXA                     ; $03:E206: 8A          ;
CODE_03E207:    JSR CODE_03E2F9         ; $03:E207: 20 F9 E2    ;
CODE_03E20A:    LDA $0238,x             ; $03:E20A: BD 38 02    ;
CODE_03E20D:    STA $00                 ; $03:E20D: 85 00       ;
CODE_03E20F:    TXA                     ; $03:E20F: 8A          ;
CODE_03E210:    PHA                     ; $03:E210: 48          ;
CODE_03E211:    JSR CODE_03EAB7         ; $03:E211: 20 B7 EA    ;
CODE_03E214:    PLA                     ; $03:E214: 68          ;
CODE_03E215:    TAX                     ; $03:E215: AA          ;
CODE_03E216:    BCC CODE_03E21B         ; $03:E216: 90 03       ;
CODE_03E218:    JSR CODE_03E25F         ; $03:E218: 20 5F E2    ;
CODE_03E21B:    LDX $9E                 ; $03:E21B: A6 9E       ;
CODE_03E21D:    RTS                     ; $03:E21D: 60          ;

CODE_03E21E:    LDA $0747               ; $03:E21E: AD 47 07    ;
CODE_03E221:    BNE CODE_03E25A         ; $03:E221: D0 37       ;
CODE_03E223:    STA $03A2,x             ; $03:E223: 9D A2 03    ;
CODE_03E226:    JSR CODE_03E2ED         ; $03:E226: 20 ED E2    ;
CODE_03E229:    BCS CODE_03E25A         ; $03:E229: B0 2F       ;
CODE_03E22B:    LDA #$02                ; $03:E22B: A9 02       ;
CODE_03E22D:    STA $00                 ; $03:E22D: 85 00       ;
CODE_03E22F:    LDX $9E                 ; $03:E22F: A6 9E       ;
CODE_03E231:    JSR CODE_03E2F7         ; $03:E231: 20 F7 E2    ;
CODE_03E234:    AND #$02                ; $03:E234: 29 02       ;
CODE_03E236:    BNE CODE_03E25A         ; $03:E236: D0 22       ;
CODE_03E238:    LDA $0F9D,y             ; $03:E238: B9 9D 0F    ;
CODE_03E23B:    CMP #$20                ; $03:E23B: C9 20       ;
CODE_03E23D:    BCC CODE_03E244         ; $03:E23D: 90 05       ;
CODE_03E23F:    JSR CODE_03EAB7         ; $03:E23F: 20 B7 EA    ;
CODE_03E242:    BCS CODE_03E25D         ; $03:E242: B0 19       ;
CODE_03E244:    LDA $0F9D,y             ; $03:E244: B9 9D 0F    ;
CODE_03E247:    CLC                     ; $03:E247: 18          ;
CODE_03E248:    ADC #$80                ; $03:E248: 69 80       ;
CODE_03E24A:    STA $0F9D,y             ; $03:E24A: 99 9D 0F    ;
CODE_03E24D:    LDA $0F9F,y             ; $03:E24D: B9 9F 0F    ;
CODE_03E250:    CLC                     ; $03:E250: 18          ;
CODE_03E251:    ADC #$80                ; $03:E251: 69 80       ;
CODE_03E253:    STA $0F9F,y             ; $03:E253: 99 9F 0F    ;
CODE_03E256:    DEC $00                 ; $03:E256: C6 00       ;
CODE_03E258:    BNE CODE_03E22F         ; $03:E258: D0 D5       ;
CODE_03E25A:    LDX $9E                 ; $03:E25A: A6 9E       ;
CODE_03E25C:    RTS                     ; $03:E25C: 60          ;

CODE_03E25D:    LDX $9E                 ; $03:E25D: A6 9E       ;
CODE_03E25F:    LDA $0F9F,y             ; $03:E25F: B9 9F 0F    ;
CODE_03E262:    SEC                     ; $03:E262: 38          ;
CODE_03E263:    SBC $0F9D               ; $03:E263: ED 9D 0F    ;
CODE_03E266:    CMP #$04                ; $03:E266: C9 04       ;
CODE_03E268:    BCS CODE_03E272         ; $03:E268: B0 08       ;
CODE_03E26A:    LDA $A0                 ; $03:E26A: A5 A0       ;
CODE_03E26C:    BPL CODE_03E272         ; $03:E26C: 10 04       ;
CODE_03E26E:    LDA #$01                ; $03:E26E: A9 01       ;
CODE_03E270:    STA $A0                 ; $03:E270: 85 A0       ;
CODE_03E272:    LDA $0F9F               ; $03:E272: AD 9F 0F    ;
CODE_03E275:    SEC                     ; $03:E275: 38          ;
CODE_03E276:    SBC $0F9D,y             ; $03:E276: F9 9D 0F    ;
CODE_03E279:    CMP #$06                ; $03:E279: C9 06       ;
CODE_03E27B:    BCS CODE_03E298         ; $03:E27B: B0 1B       ;
CODE_03E27D:    LDA $A0                 ; $03:E27D: A5 A0       ;
CODE_03E27F:    BMI CODE_03E298         ; $03:E27F: 30 17       ;
CODE_03E281:    LDA $00                 ; $03:E281: A5 00       ;
CODE_03E283:    LDY $1C,x               ; $03:E283: B4 1C       ;
CODE_03E285:    CPY #$2B                ; $03:E285: C0 2B       ;
CODE_03E287:    BEQ CODE_03E28E         ; $03:E287: F0 05       ;
CODE_03E289:    CPY #$2C                ; $03:E289: C0 2C       ;
CODE_03E28B:    BEQ CODE_03E28E         ; $03:E28B: F0 01       ;
CODE_03E28D:    TXA                     ; $03:E28D: 8A          ;
CODE_03E28E:    LDX $9E                 ; $03:E28E: A6 9E       ;
CODE_03E290:    STA $03A2,x             ; $03:E290: 9D A2 03    ;
CODE_03E293:    LDA #$00                ; $03:E293: A9 00       ;
CODE_03E295:    STA $28                 ; $03:E295: 85 28       ;
CODE_03E297:    RTS                     ; $03:E297: 60          ;

CODE_03E298:    LDA #$01                ; $03:E298: A9 01       ;
CODE_03E29A:    STA $00                 ; $03:E29A: 85 00       ;
CODE_03E29C:    LDA $0F9E               ; $03:E29C: AD 9E 0F    ;
CODE_03E29F:    SEC                     ; $03:E29F: 38          ;
CODE_03E2A0:    SBC $0F9C,y             ; $03:E2A0: F9 9C 0F    ;
CODE_03E2A3:    CMP #$08                ; $03:E2A3: C9 08       ;
CODE_03E2A5:    BCC CODE_03E2B4         ; $03:E2A5: 90 0D       ;
CODE_03E2A7:    INC $00                 ; $03:E2A7: E6 00       ;
CODE_03E2A9:    LDA $0F9E,y             ; $03:E2A9: B9 9E 0F    ;
CODE_03E2AC:    CLC                     ; $03:E2AC: 18          ;
CODE_03E2AD:    SBC $0F9C               ; $03:E2AD: ED 9C 0F    ;
CODE_03E2B0:    CMP #$09                ; $03:E2B0: C9 09       ;
CODE_03E2B2:    BCS CODE_03E2B7         ; $03:E2B2: B0 03       ;
CODE_03E2B4:    JSR CODE_03E6B5         ; $03:E2B4: 20 B5 E6    ;
CODE_03E2B7:    LDX $9E                 ; $03:E2B7: A6 9E       ;
CODE_03E2B9:    RTS                     ; $03:E2B9: 60          ;

DATA_03E2BA:    db $80,$00                                      ;

CODE_03E2BC:    TAY                     ; $03:E2BC: A8          ;
CODE_03E2BD:    LDA $0238,x             ; $03:E2BD: BD 38 02    ;
CODE_03E2C0:    CLC                     ; $03:E2C0: 18          ;
CODE_03E2C1:    ADC DATA_03E2BA-1,y     ; $03:E2C1: 79 B9 E2    ;
CODE_03E2C4:    BNE CODE_03E2CE         ; $03:E2C4: D0 08       ;
CODE_03E2C6:    LDA #$02                ; $03:E2C6: A9 02       ;
CODE_03E2C8:    STA $BB                 ; $03:E2C8: 85 BB       ;
CODE_03E2CA:    RTS                     ; $03:E2CA: 60          ;

CODE_03E2CB:    LDA $0238,x             ; $03:E2CB: BD 38 02    ;
CODE_03E2CE:    LDY $0F                 ; $03:E2CE: A4 0F       ;
CODE_03E2D0:    CPY #$0B                ; $03:E2D0: C0 0B       ;
CODE_03E2D2:    BEQ CODE_03E2EC         ; $03:E2D2: F0 18       ;
CODE_03E2D4:    LDY $BC,x               ; $03:E2D4: B4 BC       ;
CODE_03E2D6:    CPY #$01                ; $03:E2D6: C0 01       ;
CODE_03E2D8:    BNE CODE_03E2EC         ; $03:E2D8: D0 12       ;
CODE_03E2DA:    SEC                     ; $03:E2DA: 38          ;
CODE_03E2DB:    SBC #$20                ; $03:E2DB: E9 20       ;
CODE_03E2DD:    STA $0237               ; $03:E2DD: 8D 37 02    ;
CODE_03E2E0:    TYA                     ; $03:E2E0: 98          ;
CODE_03E2E1:    SBC #$00                ; $03:E2E1: E9 00       ;
CODE_03E2E3:    STA $BB                 ; $03:E2E3: 85 BB       ;
CODE_03E2E5:    LDA #$00                ; $03:E2E5: A9 00       ;
CODE_03E2E7:    STA $A0                 ; $03:E2E7: 85 A0       ;
CODE_03E2E9:    STA $043C               ; $03:E2E9: 8D 3C 04    ;
CODE_03E2EC:    RTS                     ; $03:E2EC: 60          ;

CODE_03E2ED:    LDA $03D0               ; $03:E2ED: AD D0 03    ;
CODE_03E2F0:    AND #$F0                ; $03:E2F0: 29 F0       ;
CODE_03E2F2:    CLC                     ; $03:E2F2: 18          ;
CODE_03E2F3:    BEQ CODE_03E2F6         ; $03:E2F3: F0 01       ;
CODE_03E2F5:    SEC                     ; $03:E2F5: 38          ;
CODE_03E2F6:    RTS                     ; $03:E2F6: 60          ;

CODE_03E2F7:    LDA $9E                 ; $03:E2F7: A5 9E       ;
CODE_03E2F9:    ASL A                   ; $03:E2F9: 0A          ;
CODE_03E2FA:    ASL A                   ; $03:E2FA: 0A          ;
CODE_03E2FB:    CLC                     ; $03:E2FB: 18          ;
CODE_03E2FC:    ADC #$04                ; $03:E2FC: 69 04       ;
CODE_03E2FE:    TAY                     ; $03:E2FE: A8          ;
CODE_03E2FF:    LDA $03D1               ; $03:E2FF: AD D1 03    ;
CODE_03E302:    AND #$0F                ; $03:E302: 29 0F       ;
CODE_03E304:    CMP #$0F                ; $03:E304: C9 0F       ;
CODE_03E306:    RTS                     ; $03:E306: 60          ;

DATA_03E307:    db $20,$10                                      ;

CODE_03E309:    LDA $0716               ; $03:E309: AD 16 07    ;\When "pass through blocks" flag is enabled
CODE_03E30C:    BNE CODE_03E33D         ; $03:E30C: D0 2F       ;/return.
CODE_03E30E:    LDA $0F                 ; $03:E30E: A5 0F       ;\
CODE_03E310:    CMP #$0B                ; $03:E310: C9 0B       ; |When in death animation
CODE_03E312:    BEQ CODE_03E33D         ; $03:E312: F0 29       ;/ return
CODE_03E314:    CMP #$04                ; $03:E314: C9 04       ;\When on flagpole?
CODE_03E316:    BCC CODE_03E33D         ; $03:E316: 90 25       ;/return
CODE_03E318:    LDA #$01                ; $03:E318: A9 01       ;\
CODE_03E31A:    LDY $0704               ; $03:E31A: AC 04 07    ; |If swimming, make player state 01
CODE_03E31D:    BNE CODE_03E329         ; $03:E31D: D0 0A       ;/branch
CODE_03E31F:    LDA $28                 ; $03:E31F: A5 28       ;\
CODE_03E321:    BEQ CODE_03E327         ; $03:E321: F0 04       ; |If player state is 00, make it 02
CODE_03E323:    CMP #$03                ; $03:E323: C9 03       ; |If player state is 03, keep it 03
CODE_03E325:    BNE CODE_03E32B         ; $03:E325: D0 04       ; |
CODE_03E327:    LDA #$02                ; $03:E327: A9 02       ; |
CODE_03E329:    STA $28                 ; $03:E329: 85 28       ;/
CODE_03E32B:    LDA $BB                 ; $03:E32B: A5 BB       ;\
CODE_03E32D:    CMP #$01                ; $03:E32D: C9 01       ; |If position of Mario is NOT inside range --
CODE_03E32F:    BNE CODE_03E33D         ; $03:E32F: D0 0C       ;/(AKA anywhere he can shoot fireballs), return
CODE_03E331:    LDA #$FF                ; $03:E331: A9 FF       ;
CODE_03E333:    STA $0480               ; $03:E333: 8D 80 04    ;note to self: look at what this store does.
CODE_03E336:    LDA $0237               ; $03:E336: AD 37 02    ;\
CODE_03E339:    CMP #$CF                ; $03:E339: C9 CF       ; |Branch if player Y-position is inside the game
CODE_03E33B:    BCC CODE_03E33E         ; $03:E33B: 90 01       ;/ (AKA not in a bottomless pit)
CODE_03E33D:    RTS                     ; $03:E33D: 60          ;Return

CODE_03E33E:    LDY #$02                ; $03:E33E: A0 02       ;Block interaction routine
CODE_03E340:    LDA $0714               ; $03:E340: AD 14 07    ;\If Mario is ducking, branch, #$0E into $EB
CODE_03E343:    BNE CODE_03E351         ; $03:E343: D0 0C       ;/
CODE_03E345:    LDA $0754               ; $03:E345: AD 54 07    ;\If Small Mario, branch, #$0E into $EB
CODE_03E348:    BNE CODE_03E351         ; $03:E348: D0 07       ;/
CODE_03E34A:    DEY                     ; $03:E34A: 88          ;\
CODE_03E34B:    LDA $0704               ; $03:E34B: AD 04 07    ; |If swimming, branch, #$07 into $EB
CODE_03E34E:    BNE CODE_03E351         ; $03:E34E: D0 01       ; |
CODE_03E350:    DEY                     ; $03:E350: 88          ;/If anything else (normal non-small mario), #$00 into $EB
CODE_03E351:    LDA DATA_03EB3F,y       ; $03:E351: B9 3F EB    ;\Set Mario's hitbox for object interaction?
CODE_03E354:    STA $EB                 ; $03:E354: 85 EB       ;/
CODE_03E356:    TAY                     ; $03:E356: A8          ;Hitbox size to Y
CODE_03E357:    LDX $0754               ; $03:E357: AE 54 07    ;Mario Small Flag to X
CODE_03E35A:    LDA $0714               ; $03:E35A: AD 14 07    ;\If Mario isn't ducking
CODE_03E35D:    BEQ CODE_03E360         ; $03:E35D: F0 01       ;/branch
CODE_03E35F:    INX                     ; $03:E35F: E8          ;Mario is ducking, so Mario Small flag index indicates mario = small
CODE_03E360:    LDA $0237               ; $03:E360: AD 37 02    ;\Mario's Y position
CODE_03E363:    CMP DATA_03E307,x       ; $03:E363: DD 07 E3    ; |If it's smaller than $20 (Small mario), or $10 (big mario)
CODE_03E366:    BCC CODE_03E3A0         ; $03:E366: 90 38       ;/branch (to make mario not interact w/ objects on/above statusbar)
CODE_03E368:    LDA #$01                ; $03:E368: A9 01       ;
CODE_03E36A:    STA $E4                 ; $03:E36A: 85 E4       ;
CODE_03E36C:    JSR CODE_03EB7B         ; $03:E36C: 20 7B EB    ;
CODE_03E36F:    BEQ CODE_03E3A0         ; $03:E36F: F0 2F       ;
CODE_03E371:    JSR CODE_03E70D         ; $03:E371: 20 0D E7    ;\Check if tile is E9 or EA, and if so, play the coin sound
CODE_03E374:    BCS CODE_03E3C9         ; $03:E374: B0 53       ;/Then branch. If not tile E9 or EA, continue.
CODE_03E376:    LDY $A0                 ; $03:E376: A4 A0       ;\If Mario y-speed is that of falling, branch
CODE_03E378:    BPL CODE_03E3A0         ; $03:E378: 10 26       ;/
CODE_03E37A:    LDY $04                 ; $03:E37A: A4 04       ;
CODE_03E37C:    CPY #$04                ; $03:E37C: C0 04       ;
CODE_03E37E:    BCC CODE_03E3A0         ; $03:E37E: 90 20       ;
CODE_03E380:    JSR CODE_03E6FB         ; $03:E380: 20 FB E6    ;
CODE_03E383:    BCS CODE_03E393         ; $03:E383: B0 0E       ;
CODE_03E385:    LDY $5C                 ; $03:E385: A4 5C       ;
CODE_03E387:    BEQ CODE_03E39C         ; $03:E387: F0 13       ;
CODE_03E389:    LDY $078C               ; $03:E389: AC 8C 07    ;
CODE_03E38C:    BNE CODE_03E39C         ; $03:E38C: D0 0E       ;
CODE_03E38E:    JSR CODE_03BE75         ; $03:E38E: 20 75 BE    ;
CODE_03E391:    BRA CODE_03E3A0         ; $03:E391: 80 0D       ;

CODE_03E393:    CMP #$2A                ; $03:E393: C9 2A       ;
CODE_03E395:    BEQ CODE_03E39C         ; $03:E395: F0 05       ;
CODE_03E397:    LDA #$01                ; $03:E397: A9 01       ;\ Executes as soon as mario hits a cement-block solid
CODE_03E399:    STA $1600               ; $03:E399: 8D 00 16    ; |block from below which does NOT spawn ANYTHING
CODE_03E39C:    LDA #$01                ; $03:E39C: A9 01       ; |Play sound, set Y-speed to downwards
CODE_03E39E:    STA $A0                 ; $03:E39E: 85 A0       ;/
CODE_03E3A0:    LDY $EB                 ; $03:E3A0: A4 EB       ;
CODE_03E3A2:    LDA $0237               ; $03:E3A2: AD 37 02    ;
CODE_03E3A5:    CMP #$CF                ; $03:E3A5: C9 CF       ;
CODE_03E3A7:    BCS CODE_03E40F         ; $03:E3A7: B0 66       ;
CODE_03E3A9:    STZ $E4                 ; $03:E3A9: 64 E4       ;
CODE_03E3AB:    JSR CODE_03EB7A         ; $03:E3AB: 20 7A EB    ;
CODE_03E3AE:    JSR CODE_03E70D         ; $03:E3AE: 20 0D E7    ;
CODE_03E3B1:    BCS CODE_03E3C9         ; $03:E3B1: B0 16       ;
CODE_03E3B3:    PHA                     ; $03:E3B3: 48          ;
CODE_03E3B4:    STZ $E4                 ; $03:E3B4: 64 E4       ;
CODE_03E3B6:    JSR CODE_03EB7A         ; $03:E3B6: 20 7A EB    ;
CODE_03E3B9:    STA $00                 ; $03:E3B9: 85 00       ;
CODE_03E3BB:    PLA                     ; $03:E3BB: 68          ;
CODE_03E3BC:    STA $01                 ; $03:E3BC: 85 01       ;
CODE_03E3BE:    BNE CODE_03E3CC         ; $03:E3BE: D0 0C       ;
CODE_03E3C0:    LDA $00                 ; $03:E3C0: A5 00       ;
CODE_03E3C2:    BEQ CODE_03E40F         ; $03:E3C2: F0 4B       ;
CODE_03E3C4:    JSR CODE_03E70D         ; $03:E3C4: 20 0D E7    ;
CODE_03E3C7:    BCC CODE_03E3CC         ; $03:E3C7: 90 03       ;
CODE_03E3C9:    JMP CODE_03E4C8         ; $03:E3C9: 4C C8 E4    ;

CODE_03E3CC:    JSR CODE_03E706         ; $03:E3CC: 20 06 E7    ;
CODE_03E3CF:    BCS CODE_03E40F         ; $03:E3CF: B0 3E       ;
CODE_03E3D1:    LDY $A0                 ; $03:E3D1: A4 A0       ;
CODE_03E3D3:    BMI CODE_03E40F         ; $03:E3D3: 30 3A       ;
CODE_03E3D5:    CMP #$FD                ; $03:E3D5: C9 FD       ;
CODE_03E3D7:    BNE CODE_03E3DC         ; $03:E3D7: D0 03       ;
CODE_03E3D9:    JMP CODE_03E4D1         ; $03:E3D9: 4C D1 E4    ;

CODE_03E3DC:    JSR CODE_03E5FA         ; $03:E3DC: 20 FA E5    ;
CODE_03E3DF:    BEQ CODE_03E40F         ; $03:E3DF: F0 2E       ;
CODE_03E3E1:    LDY $070E               ; $03:E3E1: AC 0E 07    ;
CODE_03E3E4:    BNE CODE_03E40B         ; $03:E3E4: D0 25       ;
CODE_03E3E6:    LDY $04                 ; $03:E3E6: A4 04       ;
CODE_03E3E8:    CPY #$05                ; $03:E3E8: C0 05       ;
CODE_03E3EA:    BCC CODE_03E3F3         ; $03:E3EA: 90 07       ;
CODE_03E3EC:    LDA $46                 ; $03:E3EC: A5 46       ;
CODE_03E3EE:    STA $00                 ; $03:E3EE: 85 00       ;
CODE_03E3F0:    JMP CODE_03E6B5         ; $03:E3F0: 4C B5 E6    ;

CODE_03E3F3:    JSR CODE_03E601         ; $03:E3F3: 20 01 E6    ;
CODE_03E3F6:    LDA #$F0                ; $03:E3F6: A9 F0       ;
CODE_03E3F8:    AND $0237               ; $03:E3F8: 2D 37 02    ;
CODE_03E3FB:    STA $0237               ; $03:E3FB: 8D 37 02    ;
CODE_03E3FE:    JSR CODE_03E625         ; $03:E3FE: 20 25 E6    ;
CODE_03E401:    LDA #$00                ; $03:E401: A9 00       ;
CODE_03E403:    STA $A0                 ; $03:E403: 85 A0       ;
CODE_03E405:    STA $043C               ; $03:E405: 8D 3C 04    ;
CODE_03E408:    STA $0284               ; $03:E408: 8D 84 02    ;
CODE_03E40B:    LDA #$00                ; $03:E40B: A9 00       ;
CODE_03E40D:    STA $28                 ; $03:E40D: 85 28       ;
CODE_03E40F:    LDY $EB                 ; $03:E40F: A4 EB       ;
CODE_03E411:    INY                     ; $03:E411: C8          ;
CODE_03E412:    INY                     ; $03:E412: C8          ;
CODE_03E413:    LDA #$02                ; $03:E413: A9 02       ;
CODE_03E415:    STA $00                 ; $03:E415: 85 00       ;
CODE_03E417:    INY                     ; $03:E417: C8          ;
CODE_03E418:    STY $EB                 ; $03:E418: 84 EB       ;
CODE_03E41A:    LDA $0237               ; $03:E41A: AD 37 02    ;
CODE_03E41D:    CMP #$20                ; $03:E41D: C9 20       ;
CODE_03E41F:    BCC CODE_03E439         ; $03:E41F: 90 18       ;
CODE_03E421:    CMP #$E4                ; $03:E421: C9 E4       ;
CODE_03E423:    BCS CODE_03E452         ; $03:E423: B0 2D       ;
CODE_03E425:    STZ $E4                 ; $03:E425: 64 E4       ;
CODE_03E427:    JSR CODE_03EB7F         ; $03:E427: 20 7F EB    ;
CODE_03E42A:    BEQ CODE_03E439         ; $03:E42A: F0 0D       ;
CODE_03E42C:    CMP #$20                ; $03:E42C: C9 20       ;
CODE_03E42E:    BEQ CODE_03E439         ; $03:E42E: F0 09       ;
CODE_03E430:    CMP #$75                ; $03:E430: C9 75       ;
CODE_03E432:    BEQ CODE_03E439         ; $03:E432: F0 05       ;
CODE_03E434:    JSR CODE_03E706         ; $03:E434: 20 06 E7    ;
CODE_03E437:    BCC CODE_03E453         ; $03:E437: 90 1A       ;
CODE_03E439:    LDY $EB                 ; $03:E439: A4 EB       ;
CODE_03E43B:    INY                     ; $03:E43B: C8          ;
CODE_03E43C:    LDA $0237               ; $03:E43C: AD 37 02    ;
CODE_03E43F:    CMP #$08                ; $03:E43F: C9 08       ;
CODE_03E441:    BCC CODE_03E452         ; $03:E441: 90 0F       ;
CODE_03E443:    CMP #$D0                ; $03:E443: C9 D0       ;
CODE_03E445:    BCS CODE_03E452         ; $03:E445: B0 0B       ;
CODE_03E447:    STZ $E4                 ; $03:E447: 64 E4       ;
CODE_03E449:    JSR CODE_03EB7F         ; $03:E449: 20 7F EB    ;
CODE_03E44C:    BNE CODE_03E453         ; $03:E44C: D0 05       ;
CODE_03E44E:    DEC $00                 ; $03:E44E: C6 00       ;
CODE_03E450:    BNE CODE_03E417         ; $03:E450: D0 C5       ;
CODE_03E452:    RTS                     ; $03:E452: 60          ;

CODE_03E453:    JSR CODE_03E5FA         ; $03:E453: 20 FA E5    ;
CODE_03E456:    BEQ CODE_03E4C5         ; $03:E456: F0 6D       ;
CODE_03E458:    JSR CODE_03E706         ; $03:E458: 20 06 E7    ;
CODE_03E45B:    BCC CODE_03E460         ; $03:E45B: 90 03       ;
CODE_03E45D:    JMP CODE_03E526         ; $03:E45D: 4C 26 E5    ;

CODE_03E460:    JSR CODE_03E70D         ; $03:E460: 20 0D E7    ;
CODE_03E463:    BCS CODE_03E4C8         ; $03:E463: B0 63       ;
CODE_03E465:    JSR CODE_03E61A         ; $03:E465: 20 1A E6    ;
CODE_03E468:    BCC CODE_03E472         ; $03:E468: 90 08       ;
CODE_03E46A:    LDA $070E               ; $03:E46A: AD 0E 07    ;
CODE_03E46D:    BNE CODE_03E4C5         ; $03:E46D: D0 56       ;
CODE_03E46F:    JMP CODE_03E4C2         ; $03:E46F: 4C C2 E4    ;

CODE_03E472:    LDY $28                 ; $03:E472: A4 28       ;
CODE_03E474:    CPY #$00                ; $03:E474: C0 00       ;
CODE_03E476:    BNE CODE_03E4C2         ; $03:E476: D0 4A       ;
CODE_03E478:    LDY $0202               ; $03:E478: AC 02 02    ;
CODE_03E47B:    DEY                     ; $03:E47B: 88          ;
CODE_03E47C:    BNE CODE_03E4C2         ; $03:E47C: D0 44       ;
CODE_03E47E:    CMP #$76                ; $03:E47E: C9 76       ;
CODE_03E480:    BEQ CODE_03E486         ; $03:E480: F0 04       ;
CODE_03E482:    CMP #$23                ; $03:E482: C9 23       ;
CODE_03E484:    BNE CODE_03E4C2         ; $03:E484: D0 3C       ;
CODE_03E486:    LDA $0256               ; $03:E486: AD 56 02    ;
CODE_03E489:    BEQ CODE_03E499         ; $03:E489: F0 0E       ;
CODE_03E48B:    LDY $9A                 ; $03:E48B: A4 9A       ;
CODE_03E48D:    BNE CODE_03E499         ; $03:E48D: D0 0A       ;
CODE_03E48F:    LDY #$04                ; $03:E48F: A0 04       ;\
CODE_03E491:    STY $1600               ; $03:E491: 8C 00 16    ;/Enter pipe/hurt sound
CODE_03E494:    STY $9A                 ; $03:E494: 84 9A       ;
CODE_03E496:    STZ $07AF               ; $03:E496: 9C AF 07    ;
CODE_03E499:    AND #$CF                ; $03:E499: 29 CF       ;
CODE_03E49B:    STA $0256               ; $03:E49B: 8D 56 02    ;
CODE_03E49E:    LDA $0219               ; $03:E49E: AD 19 02    ;
CODE_03E4A1:    AND #$0F                ; $03:E4A1: 29 0F       ;
CODE_03E4A3:    BEQ CODE_03E4B3         ; $03:E4A3: F0 0E       ;
CODE_03E4A5:    LDY #$00                ; $03:E4A5: A0 00       ;
CODE_03E4A7:    LDA $071A               ; $03:E4A7: AD 1A 07    ;
CODE_03E4AA:    BEQ CODE_03E4AD         ; $03:E4AA: F0 01       ;
CODE_03E4AC:    INY                     ; $03:E4AC: C8          ;
CODE_03E4AD:    LDA DATA_03E4C6,y       ; $03:E4AD: B9 C6 E4    ;
CODE_03E4B0:    STA $06DE               ; $03:E4B0: 8D DE 06    ;
CODE_03E4B3:    LDA $0F                 ; $03:E4B3: A5 0F       ;
CODE_03E4B5:    CMP #$07                ; $03:E4B5: C9 07       ;
CODE_03E4B7:    BEQ CODE_03E4C5         ; $03:E4B7: F0 0C       ;
CODE_03E4B9:    CMP #$08                ; $03:E4B9: C9 08       ;
CODE_03E4BB:    BNE CODE_03E4C5         ; $03:E4BB: D0 08       ;
CODE_03E4BD:    LDA #$02                ; $03:E4BD: A9 02       ;
CODE_03E4BF:    STA $0F                 ; $03:E4BF: 85 0F       ;
CODE_03E4C1:    RTS                     ; $03:E4C1: 60          ;

CODE_03E4C2:    JSR CODE_03E6B5         ; $03:E4C2: 20 B5 E6    ;
CODE_03E4C5:    RTS                     ; $03:E4C5: 60          ;

DATA_03E4C6:    db $34,$34                                      ;

CODE_03E4C8:    JSR CODE_03E514         ; $03:E4C8: 20 14 E5    ;
CODE_03E4CB:    INC $0748               ; $03:E4CB: EE 48 07    ;
CODE_03E4CE:    JMP CODE_03BD2C         ; $03:E4CE: 4C 2C BD    ;

CODE_03E4D1:    LDA #$00                ; $03:E4D1: A9 00       ;
CODE_03E4D3:    STA $0772               ; $03:E4D3: 8D 72 07    ;
CODE_03E4D6:    LDA #$02                ; $03:E4D6: A9 02       ;
CODE_03E4D8:    STA $0770               ; $03:E4D8: 8D 70 07    ;
CODE_03E4DB:    LDA $2142               ; $03:E4DB: AD 42 21    ;
CODE_03E4DE:    CMP #$0B                ; $03:E4DE: C9 0B       ;
CODE_03E4E0:    BEQ CODE_03E4E7         ; $03:E4E0: F0 05       ;
CODE_03E4E2:    LDA #$F0                ; $03:E4E2: A9 F0       ;
CODE_03E4E4:    STA $1602               ; $03:E4E4: 8D 02 16    ;
CODE_03E4E7:    LDA #$18                ; $03:E4E7: A9 18       ;
CODE_03E4E9:    STA $5D                 ; $03:E4E9: 85 5D       ;
CODE_03E4EB:    PHX                     ; $03:E4EB: DA          ;
CODE_03E4EC:    LDX #$00                ; $03:E4EC: A2 00       ;
CODE_03E4EE:    LDA $1C,x               ; $03:E4EE: B5 1C       ;
CODE_03E4F0:    CMP #$2D                ; $03:E4F0: C9 2D       ;
CODE_03E4F2:    BNE CODE_03E50E         ; $03:E4F2: D0 1A       ;
CODE_03E4F4:    LDA $10,x               ; $03:E4F4: B5 10       ;
CODE_03E4F6:    CMP #$01                ; $03:E4F6: C9 01       ;
CODE_03E4F8:    BNE CODE_03E50E         ; $03:E4F8: D0 14       ;
CODE_03E4FA:    LDA $021A,x             ; $03:E4FA: BD 1A 02    ;
CODE_03E4FD:    SEC                     ; $03:E4FD: 38          ;
CODE_03E4FE:    SBC $073F               ; $03:E4FE: ED 3F 07    ;
CODE_03E501:    STA $03AE               ; $03:E501: 8D AE 03    ;
CODE_03E504:    LDA $0238,x             ; $03:E504: BD 38 02    ;
CODE_03E507:    STA $03B9               ; $03:E507: 8D B9 03    ;
CODE_03E50A:    JSL CODE_05D055         ; $03:E50A: 22 55 D0 05 ;
CODE_03E50E:    INX                     ; $03:E50E: E8          ;
CODE_03E50F:    CPX #$09                ; $03:E50F: E0 09       ;
CODE_03E511:    BNE CODE_03E4EE         ; $03:E511: D0 DB       ;
CODE_03E513:    PLX                     ; $03:E513: FA          ;
CODE_03E514:    LDY $02                 ; $03:E514: A4 02       ;
CODE_03E516:    LDA #$00                ; $03:E516: A9 00       ;
CODE_03E518:    STA ($06),y             ; $03:E518: 91 06       ;
CODE_03E51A:    JMP CODE_039373         ; $03:E51A: 4C 73 93    ;

DATA_03E51D:    db $F9,$07                                      ;

DATA_03E51F:    db $FF,$00                                      ;

DATA_03E521:    db $18,$22,$50,$68,$90                          ;

CODE_03E526:    LDY $04                 ; $03:E526: A4 04       ;
CODE_03E528:    CPY #$06                ; $03:E528: C0 06       ;
CODE_03E52A:    BCC CODE_03E530         ; $03:E52A: 90 04       ;
CODE_03E52C:    CPY #$0A                ; $03:E52C: C0 0A       ;
CODE_03E52E:    BCC CODE_03E531         ; $03:E52E: 90 01       ;
CODE_03E530:    RTS                     ; $03:E530: 60          ;

CODE_03E531:    CMP #$28                ; $03:E531: C9 28       ;
CODE_03E533:    BEQ CODE_03E539         ; $03:E533: F0 04       ;
CODE_03E535:    CMP #$29                ; $03:E535: C9 29       ;
CODE_03E537:    BNE CODE_03E57E         ; $03:E537: D0 45       ;
CODE_03E539:    LDA $0F                 ; $03:E539: A5 0F       ;
CODE_03E53B:    CMP #$05                ; $03:E53B: C9 05       ;
CODE_03E53D:    BEQ CODE_03E58D         ; $03:E53D: F0 4E       ;
CODE_03E53F:    LDA #$01                ; $03:E53F: A9 01       ;
CODE_03E541:    STA $0202               ; $03:E541: 8D 02 02    ;
CODE_03E544:    INC $0723               ; $03:E544: EE 23 07    ;
CODE_03E547:    LDA $0F                 ; $03:E547: A5 0F       ;
CODE_03E549:    CMP #$04                ; $03:E549: C9 04       ;
CODE_03E54B:    BEQ CODE_03E577         ; $03:E54B: F0 2A       ;
CODE_03E54D:    LDA #$33                ; $03:E54D: A9 33       ;
CODE_03E54F:    JSR CODE_03A885         ; $03:E54F: 20 85 A8    ;
CODE_03E552:    JSL CODE_048CEE         ; $03:E552: 22 EE 8C 04 ;
CODE_03E556:    LDA #$F0                ; $03:E556: A9 F0       ;\Music Fade Out
CODE_03E558:    STA $1602               ; $03:E558: 8D 02 16    ;/
CODE_03E55B:    LDA #$46                ; $03:E55B: A9 46       ;\Flagpole sound
CODE_03E55D:    STA $1600               ; $03:E55D: 8D 00 16    ;/
CODE_03E560:    LSR A                   ; $03:E560: 4A          ;
CODE_03E561:    STA $0713               ; $03:E561: 8D 13 07    ;
CODE_03E564:    LDX #$04                ; $03:E564: A2 04       ;
CODE_03E566:    LDA $0237               ; $03:E566: AD 37 02    ;
CODE_03E569:    STA $070F               ; $03:E569: 8D 0F 07    ;
CODE_03E56C:    CMP DATA_03E521,x       ; $03:E56C: DD 21 E5    ;
CODE_03E56F:    BCS CODE_03E574         ; $03:E56F: B0 03       ;
CODE_03E571:    DEX                     ; $03:E571: CA          ;
CODE_03E572:    BNE CODE_03E56C         ; $03:E572: D0 F8       ;
CODE_03E574:    STX $010F               ; $03:E574: 8E 0F 01    ;
CODE_03E577:    LDA #$04                ; $03:E577: A9 04       ;
CODE_03E579:    STA $0F                 ; $03:E579: 85 0F       ;
CODE_03E57B:    JMP CODE_03E58D         ; $03:E57B: 4C 8D E5    ;

CODE_03E57E:    CMP #$2A                ; $03:E57E: C9 2A       ;
CODE_03E580:    BNE CODE_03E58D         ; $03:E580: D0 0B       ;
CODE_03E582:    LDA $0237               ; $03:E582: AD 37 02    ;\
CODE_03E585:    CMP #$20                ; $03:E585: C9 20       ; |If player Y-position is not above the flagpole
CODE_03E587:    BCS CODE_03E58D         ; $03:E587: B0 04       ; |
CODE_03E589:    LDA #$01                ; $03:E589: A9 01       ;\|Player action: climb a vine/slide down the flagpole
CODE_03E58B:    STA $0F                 ; $03:E58B: 85 0F       ;/
CODE_03E58D:    LDA #$03                ; $03:E58D: A9 03       ;\Player state: slide down the flagpole
CODE_03E58F:    STA $28                 ; $03:E58F: 85 28       ;/
CODE_03E591:    LDA #$00                ; $03:E591: A9 00       ;\Store zero to player X-speed
CODE_03E593:    STA $5D                 ; $03:E593: 85 5D       ; |
CODE_03E595:    STA $0705               ; $03:E595: 8D 05 07    ;/Full left movement, minimal right movement flag?
CODE_03E598:    LDA $0398               ; $03:E598: AD 98 03    ;
CODE_03E59B:    BEQ CODE_03E5CC         ; $03:E59B: F0 2F       ;
CODE_03E59D:    LDA $03AE               ; $03:E59D: AD AE 03    ;
CODE_03E5A0:    BPL CODE_03E5CC         ; $03:E5A0: 10 2A       ;
CODE_03E5A2:    CMP #$F8                ; $03:E5A2: C9 F8       ;
CODE_03E5A4:    BCC CODE_03E5CC         ; $03:E5A4: 90 26       ;
CODE_03E5A6:    LDA $0082               ; $03:E5A6: AD 82 00    ;
CODE_03E5A9:    STA $E5                 ; $03:E5A9: 85 E5       ;
CODE_03E5AB:    LDA $0223               ; $03:E5AB: AD 23 02    ;
CODE_03E5AE:    STA $E4                 ; $03:E5AE: 85 E4       ;
CODE_03E5B0:    REP #$20                ; $03:E5B0: C2 20       ;
CODE_03E5B2:    LDA $E4                 ; $03:E5B2: A5 E4       ;
CODE_03E5B4:    CLC                     ; $03:E5B4: 18          ;
CODE_03E5B5:    ADC #$0007              ; $03:E5B5: 69 07 00    ;
CODE_03E5B8:    STA $E4                 ; $03:E5B8: 85 E4       ;
CODE_03E5BA:    SEP #$20                ; $03:E5BA: E2 20       ;
CODE_03E5BC:    LDA $E4                 ; $03:E5BC: A5 E4       ;
CODE_03E5BE:    STA $0219               ; $03:E5BE: 8D 19 02    ;
CODE_03E5C1:    LDA $E5                 ; $03:E5C1: A5 E5       ;
CODE_03E5C3:    STA $78                 ; $03:E5C3: 85 78       ;
CODE_03E5C5:    LDA #$02                ; $03:E5C5: A9 02       ;
CODE_03E5C7:    STA $0202               ; $03:E5C7: 8D 02 02    ;
CODE_03E5CA:    BRA CODE_03E5F9         ; $03:E5CA: 80 2D       ;

CODE_03E5CC:    LDA $0219               ; $03:E5CC: AD 19 02    ;
CODE_03E5CF:    SEC                     ; $03:E5CF: 38          ;
CODE_03E5D0:    SBC $071C               ; $03:E5D0: ED 1C 07    ;
CODE_03E5D3:    CMP #$10                ; $03:E5D3: C9 10       ;
CODE_03E5D5:    BCS CODE_03E5DC         ; $03:E5D5: B0 05       ;
CODE_03E5D7:    LDA #$02                ; $03:E5D7: A9 02       ;
CODE_03E5D9:    STA $0202               ; $03:E5D9: 8D 02 02    ;
CODE_03E5DC:    LDY $0202               ; $03:E5DC: AC 02 02    ;
CODE_03E5DF:    LDA $06                 ; $03:E5DF: A5 06       ;
CODE_03E5E1:    ASL A                   ; $03:E5E1: 0A          ;
CODE_03E5E2:    ASL A                   ; $03:E5E2: 0A          ;
CODE_03E5E3:    ASL A                   ; $03:E5E3: 0A          ;
CODE_03E5E4:    ASL A                   ; $03:E5E4: 0A          ;
CODE_03E5E5:    CLC                     ; $03:E5E5: 18          ;
CODE_03E5E6:    ADC DATA_03E51D-1,y     ; $03:E5E6: 79 1C E5    ;
CODE_03E5E9:    STA $0219               ; $03:E5E9: 8D 19 02    ;
CODE_03E5EC:    LDA $06                 ; $03:E5EC: A5 06       ;
CODE_03E5EE:    BNE CODE_03E5F9         ; $03:E5EE: D0 09       ;
CODE_03E5F0:    LDA $071B               ; $03:E5F0: AD 1B 07    ;
CODE_03E5F3:    CLC                     ; $03:E5F3: 18          ;
CODE_03E5F4:    ADC DATA_03E51F-1,y     ; $03:E5F4: 79 1E E5    ;
CODE_03E5F7:    STA $78                 ; $03:E5F7: 85 78       ;
CODE_03E5F9:    RTS                     ; $03:E5F9: 60          ;

CODE_03E5FA:    CMP #$62                ; $03:E5FA: C9 62       ;
CODE_03E5FC:    BEQ CODE_03E600         ; $03:E5FC: F0 02       ;
CODE_03E5FE:    CMP #$63                ; $03:E5FE: C9 63       ;
CODE_03E600:    RTS                     ; $03:E600: 60          ;

CODE_03E601:    JSR CODE_03E61A         ; $03:E601: 20 1A E6    ;
CODE_03E604:    BCC CODE_03E619         ; $03:E604: 90 13       ;
CODE_03E606:    LDA #$70                ; $03:E606: A9 70       ;
CODE_03E608:    STA $0709               ; $03:E608: 8D 09 07    ;
CODE_03E60B:    LDA #$F9                ; $03:E60B: A9 F9       ;\
CODE_03E60D:    STA $06DB               ; $03:E60D: 8D DB 06    ;/Springboard launch force
CODE_03E610:    LDA #$03                ; $03:E610: A9 03       ;
CODE_03E612:    STA $078E               ; $03:E612: 8D 8E 07    ;
CODE_03E615:    LSR A                   ; $03:E615: 4A          ;
CODE_03E616:    STA $070E               ; $03:E616: 8D 0E 07    ;
CODE_03E619:    RTS                     ; $03:E619: 60          ;

CODE_03E61A:    CMP #$6F                ; $03:E61A: C9 6F       ;
CODE_03E61C:    BEQ CODE_03E623         ; $03:E61C: F0 05       ;
CODE_03E61E:    CMP #$70                ; $03:E61E: C9 70       ;
CODE_03E620:    CLC                     ; $03:E620: 18          ;
CODE_03E621:    BNE CODE_03E624         ; $03:E621: D0 01       ;
CODE_03E623:    SEC                     ; $03:E623: 38          ;
CODE_03E624:    RTS                     ; $03:E624: 60          ;

CODE_03E625:    LDA $0B                 ; $03:E625: A5 0B       ;
CODE_03E627:    AND #$04                ; $03:E627: 29 04       ;
CODE_03E629:    BEQ CODE_03E624         ; $03:E629: F0 F9       ;
CODE_03E62B:    LDA $00                 ; $03:E62B: A5 00       ;
CODE_03E62D:    CMP #$15                ; $03:E62D: C9 15       ;
CODE_03E62F:    BNE CODE_03E624         ; $03:E62F: D0 F3       ;
CODE_03E631:    LDA $01                 ; $03:E631: A5 01       ;
CODE_03E633:    CMP #$14                ; $03:E633: C9 14       ;
CODE_03E635:    BNE CODE_03E624         ; $03:E635: D0 ED       ;
CODE_03E637:    LDA #$30                ; $03:E637: A9 30       ;
CODE_03E639:    STA $06DE               ; $03:E639: 8D DE 06    ;
CODE_03E63C:    LDA #$03                ; $03:E63C: A9 03       ;
CODE_03E63E:    STA $0F                 ; $03:E63E: 85 0F       ;
CODE_03E640:    LDA #$04                ; $03:E640: A9 04       ;
CODE_03E642:    STA $07AE               ; $03:E642: 8D AE 07    ;
CODE_03E645:    STZ $07AF               ; $03:E645: 9C AF 07    ;
CODE_03E648:    LDA #$00                ; $03:E648: A9 00       ;
CODE_03E64A:    STA $0256               ; $03:E64A: 8D 56 02    ;
CODE_03E64D:    LDA $06D6               ; $03:E64D: AD D6 06    ;
CODE_03E650:    BEQ CODE_03E6AF         ; $03:E650: F0 5D       ;
CODE_03E652:    CMP #$04                ; $03:E652: C9 04       ;
CODE_03E654:    BCS CODE_03E668         ; $03:E654: B0 12       ;
CODE_03E656:    LDX #$04                ; $03:E656: A2 04       ;
CODE_03E658:    LDA $075F               ; $03:E658: AD 5F 07    ;
CODE_03E65B:    BEQ CODE_03E664         ; $03:E65B: F0 07       ;
CODE_03E65D:    INX                     ; $03:E65D: E8          ;
CODE_03E65E:    LDA $5C                 ; $03:E65E: A5 5C       ;
CODE_03E660:    DEC A                   ; $03:E660: 3A          ;
CODE_03E661:    BNE CODE_03E664         ; $03:E661: D0 01       ;
CODE_03E663:    INX                     ; $03:E663: E8          ;
CODE_03E664:    TXA                     ; $03:E664: 8A          ;
CODE_03E665:    STA $06D6               ; $03:E665: 8D D6 06    ;
CODE_03E668:    AND #$03                ; $03:E668: 29 03       ;
CODE_03E66A:    ASL A                   ; $03:E66A: 0A          ;
CODE_03E66B:    ASL A                   ; $03:E66B: 0A          ;
CODE_03E66C:    TAX                     ; $03:E66C: AA          ;
CODE_03E66D:    LDA $0219               ; $03:E66D: AD 19 02    ;
CODE_03E670:    CMP #$60                ; $03:E670: C9 60       ;
CODE_03E672:    BCC CODE_03E67A         ; $03:E672: 90 06       ;
CODE_03E674:    INX                     ; $03:E674: E8          ;
CODE_03E675:    CMP #$A0                ; $03:E675: C9 A0       ;
CODE_03E677:    BCC CODE_03E67A         ; $03:E677: 90 01       ;
CODE_03E679:    INX                     ; $03:E679: E8          ;
CODE_03E67A:    LDY DATA_0390D8,x       ; $03:E67A: BC D8 90    ;
CODE_03E67D:    DEY                     ; $03:E67D: 88          ;
CODE_03E67E:    STY $075F               ; $03:E67E: 8C 5F 07    ;
CODE_03E681:    TYX                     ; $03:E681: BB          ;
CODE_03E682:    LDA.l DATA_04C11C,x     ; $03:E682: BF 1C C1 04 ;
CODE_03E686:    TAX                     ; $03:E686: AA          ;
CODE_03E687:    LDA.l DATA_04C124,x     ; $03:E687: BF 24 C1 04 ;
CODE_03E68B:    STA $0750               ; $03:E68B: 8D 50 07    ;
CODE_03E68E:    LDA #$80                ; $03:E68E: A9 80       ;
CODE_03E690:    STA $1602               ; $03:E690: 8D 02 16    ;
CODE_03E693:    LDA #$00                ; $03:E693: A9 00       ;
CODE_03E695:    STA $0751               ; $03:E695: 8D 51 07    ;
CODE_03E698:    STA $0760               ; $03:E698: 8D 60 07    ;
CODE_03E69B:    STA $075C               ; $03:E69B: 8D 5C 07    ;
CODE_03E69E:    STA $0752               ; $03:E69E: 8D 52 07    ;
CODE_03E6A1:    INC $075D               ; $03:E6A1: EE 5D 07    ;Enable hidden 1-up flag
CODE_03E6A4:    INC $0757               ; $03:E6A4: EE 57 07    ;
CODE_03E6A7:    LDA #$F3                ; $03:E6A7: A9 F3       ;
CODE_03E6A9:    STA $1602               ; $03:E6A9: 8D 02 16    ;
CODE_03E6AC:    STA $0E1A               ; $03:E6AC: 8D 1A 0E    ;
CODE_03E6AF:    LDA #$04                ; $03:E6AF: A9 04       ;\
CODE_03E6B1:    STA $1600               ; $03:E6B1: 8D 00 16    ;/Enter pipe/hurt sound
CODE_03E6B4:    RTS                     ; $03:E6B4: 60          ;

CODE_03E6B5:    LDA #$00                ; $03:E6B5: A9 00       ;
CODE_03E6B7:    LDY $5D                 ; $03:E6B7: A4 5D       ;
CODE_03E6B9:    LDX $00                 ; $03:E6B9: A6 00       ;
CODE_03E6BB:    DEX                     ; $03:E6BB: CA          ;
CODE_03E6BC:    BNE CODE_03E6C8         ; $03:E6BC: D0 0A       ;
CODE_03E6BE:    INX                     ; $03:E6BE: E8          ;
CODE_03E6BF:    CPY #$00                ; $03:E6BF: C0 00       ;
CODE_03E6C1:    BMI CODE_03E6ED         ; $03:E6C1: 30 2A       ;
CODE_03E6C3:    LDA #$FF                ; $03:E6C3: A9 FF       ;
CODE_03E6C5:    JMP CODE_03E6D0         ; $03:E6C5: 4C D0 E6    ;

CODE_03E6C8:    LDX #$02                ; $03:E6C8: A2 02       ;
CODE_03E6CA:    CPY #$01                ; $03:E6CA: C0 01       ;
CODE_03E6CC:    BPL CODE_03E6ED         ; $03:E6CC: 10 1F       ;
CODE_03E6CE:    LDA #$01                ; $03:E6CE: A9 01       ;
CODE_03E6D0:    LDY #$10                ; $03:E6D0: A0 10       ;
CODE_03E6D2:    STY $078D               ; $03:E6D2: 8C 8D 07    ;
CODE_03E6D5:    LDY #$00                ; $03:E6D5: A0 00       ;
CODE_03E6D7:    STY $5D                 ; $03:E6D7: 84 5D       ;
CODE_03E6D9:    CMP #$00                ; $03:E6D9: C9 00       ;
CODE_03E6DB:    BPL CODE_03E6DE         ; $03:E6DB: 10 01       ;
CODE_03E6DD:    DEY                     ; $03:E6DD: 88          ;
CODE_03E6DE:    STY $00                 ; $03:E6DE: 84 00       ;
CODE_03E6E0:    CLC                     ; $03:E6E0: 18          ;
CODE_03E6E1:    ADC $0219               ; $03:E6E1: 6D 19 02    ;
CODE_03E6E4:    STA $0219               ; $03:E6E4: 8D 19 02    ;
CODE_03E6E7:    LDA $78                 ; $03:E6E7: A5 78       ;
CODE_03E6E9:    ADC $00                 ; $03:E6E9: 65 00       ;
CODE_03E6EB:    STA $78                 ; $03:E6EB: 85 78       ;
CODE_03E6ED:    TXA                     ; $03:E6ED: 8A          ;
CODE_03E6EE:    EOR #$FF                ; $03:E6EE: 49 FF       ;
CODE_03E6F0:    AND $0480               ; $03:E6F0: 2D 80 04    ;
CODE_03E6F3:    STA $0480               ; $03:E6F3: 8D 80 04    ;
CODE_03E6F6:    RTS                     ; $03:E6F6: 60          ;

DATA_03E6F7:    db $14,$64,$8C,$FC                              ;

CODE_03E6FB:    JSR CODE_03E71D         ; $03:E6FB: 20 1D E7    ;
CODE_03E6FE:    CMP DATA_03E6F7,x       ; $03:E6FE: DD F7 E6    ;
CODE_03E701:    RTS                     ; $03:E701: 60          ;

DATA_03E702:    db $28,$77,$8E,$FE                              ;

CODE_03E706:    JSR CODE_03E71D         ; $03:E706: 20 1D E7    ;
CODE_03E709:    CMP DATA_03E702,x       ; $03:E709: DD 02 E7    ;
CODE_03E70C:    RTS                     ; $03:E70C: 60          ;

CODE_03E70D:    CMP #$E9                ; $03:E70D: C9 E9       ;
CODE_03E70F:    BEQ CODE_03E717         ; $03:E70F: F0 06       ;
CODE_03E711:    CMP #$EA                ; $03:E711: C9 EA       ;
CODE_03E713:    BEQ CODE_03E717         ; $03:E713: F0 02       ;
CODE_03E715:    CLC                     ; $03:E715: 18          ;
CODE_03E716:    RTS                     ; $03:E716: 60          ;

CODE_03E717:    LDA #$01                ; $03:E717: A9 01       ;\
CODE_03E719:    STA $1603               ; $03:E719: 8D 03 16    ;/Coin sound
CODE_03E71C:    RTS                     ; $03:E71C: 60          ;Return

CODE_03E71D:    TAY                     ; $03:E71D: A8          ;
CODE_03E71E:    AND #$C0                ; $03:E71E: 29 C0       ;
CODE_03E720:    ASL A                   ; $03:E720: 0A          ;
CODE_03E721:    ROL A                   ; $03:E721: 2A          ;
CODE_03E722:    ROL A                   ; $03:E722: 2A          ;
CODE_03E723:    TAX                     ; $03:E723: AA          ;
CODE_03E724:    TYA                     ; $03:E724: 98          ;
CODE_03E725:    RTS                     ; $03:E725: 60          ;

DATA_03E726:    db $01,$01,$02,$02,$02,$05                      ;

DATA_03E72C:    db $10,$F0                                      ;

CODE_03E72E:    LDA $29,x               ; $03:E72E: B5 29       ;
CODE_03E730:    AND #$20                ; $03:E730: 29 20       ;
CODE_03E732:    BNE CODE_03E725         ; $03:E732: D0 F1       ;
CODE_03E734:    JSR CODE_03E8D8         ; $03:E734: 20 D8 E8    ;
CODE_03E737:    BCC CODE_03E725         ; $03:E737: 90 EC       ;
CODE_03E739:    LDY $1C,x               ; $03:E739: B4 1C       ;
CODE_03E73B:    CPY #$12                ; $03:E73B: C0 12       ;
CODE_03E73D:    BNE CODE_03E746         ; $03:E73D: D0 07       ;
CODE_03E73F:    LDA $0238,x             ; $03:E73F: BD 38 02    ;
CODE_03E742:    CMP #$25                ; $03:E742: C9 25       ;
CODE_03E744:    BCC CODE_03E725         ; $03:E744: 90 DF       ;
CODE_03E746:    CPY #$0E                ; $03:E746: C0 0E       ;
CODE_03E748:    BNE CODE_03E74D         ; $03:E748: D0 03       ;
CODE_03E74A:    JMP CODE_03E8E1         ; $03:E74A: 4C E1 E8    ;

CODE_03E74D:    CPY #$05                ; $03:E74D: C0 05       ;
CODE_03E74F:    BNE CODE_03E754         ; $03:E74F: D0 03       ;
CODE_03E751:    JMP CODE_03E903         ; $03:E751: 4C 03 E9    ;

CODE_03E754:    CPY #$12                ; $03:E754: C0 12       ;
CODE_03E756:    BEQ CODE_03E760         ; $03:E756: F0 08       ;
CODE_03E758:    CPY #$2E                ; $03:E758: C0 2E       ;
CODE_03E75A:    BEQ CODE_03E760         ; $03:E75A: F0 04       ;
CODE_03E75C:    CPY #$07                ; $03:E75C: C0 07       ;
CODE_03E75E:    BCS CODE_03E7D5         ; $03:E75E: B0 75       ;
CODE_03E760:    JSR CODE_03E92C         ; $03:E760: 20 2C E9    ;
CODE_03E763:    BNE CODE_03E768         ; $03:E763: D0 03       ;
CODE_03E765:    JMP CODE_03E851         ; $03:E765: 4C 51 E8    ;

CODE_03E768:    JSR CODE_03E933         ; $03:E768: 20 33 E9    ;
CODE_03E76B:    BEQ CODE_03E765         ; $03:E76B: F0 F8       ;
CODE_03E76D:    CMP #$27                ; $03:E76D: C9 27       ;
CODE_03E76F:    BNE CODE_03E7D6         ; $03:E76F: D0 65       ;
CODE_03E771:    LDY $02                 ; $03:E771: A4 02       ;
CODE_03E773:    LDA #$00                ; $03:E773: A9 00       ;
CODE_03E775:    STA ($06),y             ; $03:E775: 91 06       ;
CODE_03E777:    LDA $1C,x               ; $03:E777: B5 1C       ;
CODE_03E779:    CMP #$15                ; $03:E779: C9 15       ;
CODE_03E77B:    BCS CODE_03E789         ; $03:E77B: B0 0C       ;
CODE_03E77D:    CMP #$06                ; $03:E77D: C9 06       ;
CODE_03E77F:    BNE CODE_03E784         ; $03:E77F: D0 03       ;
CODE_03E781:    JSR CODE_03E90C         ; $03:E781: 20 0C E9    ;
CODE_03E784:    LDA #$01                ; $03:E784: A9 01       ;
CODE_03E786:    JSR CODE_03E07E         ; $03:E786: 20 7E E0    ;
CODE_03E789:    CMP #$09                ; $03:E789: C9 09       ;
CODE_03E78B:    BCC CODE_03E79D         ; $03:E78B: 90 10       ;
CODE_03E78D:    CMP #$11                ; $03:E78D: C9 11       ;
CODE_03E78F:    BCS CODE_03E79D         ; $03:E78F: B0 0C       ;
CODE_03E791:    CMP #$0A                ; $03:E791: C9 0A       ;
CODE_03E793:    BCC CODE_03E799         ; $03:E793: 90 04       ;
CODE_03E795:    CMP #$0D                ; $03:E795: C9 0D       ;
CODE_03E797:    BCC CODE_03E79D         ; $03:E797: 90 04       ;
CODE_03E799:    AND #$01                ; $03:E799: 29 01       ;
CODE_03E79B:    STA $1C,x               ; $03:E79B: 95 1C       ;
CODE_03E79D:    LDA $29,x               ; $03:E79D: B5 29       ;
CODE_03E79F:    AND #$F0                ; $03:E79F: 29 F0       ;
CODE_03E7A1:    ORA #$02                ; $03:E7A1: 09 02       ;
CODE_03E7A3:    STA $29,x               ; $03:E7A3: 95 29       ;
CODE_03E7A5:    DEC $0238,x             ; $03:E7A5: DE 38 02    ;
CODE_03E7A8:    DEC $0238,x             ; $03:E7A8: DE 38 02    ;
CODE_03E7AB:    LDA $1C,x               ; $03:E7AB: B5 1C       ;
CODE_03E7AD:    CMP #$07                ; $03:E7AD: C9 07       ;
CODE_03E7AF:    BEQ CODE_03E7B7         ; $03:E7AF: F0 06       ;
CODE_03E7B1:    LDA #$FD                ; $03:E7B1: A9 FD       ;
CODE_03E7B3:    LDY $5C                 ; $03:E7B3: A4 5C       ;
CODE_03E7B5:    BNE CODE_03E7B9         ; $03:E7B5: D0 02       ;
CODE_03E7B7:    LDA #$FF                ; $03:E7B7: A9 FF       ;
CODE_03E7B9:    STA $A1,x               ; $03:E7B9: 95 A1       ;
CODE_03E7BB:    LDY #$01                ; $03:E7BB: A0 01       ;
CODE_03E7BD:    JSR CODE_03E8BC         ; $03:E7BD: 20 BC E8    ;
CODE_03E7C0:    BPL CODE_03E7C3         ; $03:E7C0: 10 01       ;
CODE_03E7C2:    INY                     ; $03:E7C2: C8          ;
CODE_03E7C3:    LDA $1C,x               ; $03:E7C3: B5 1C       ;
CODE_03E7C5:    CMP #$33                ; $03:E7C5: C9 33       ;
CODE_03E7C7:    BEQ CODE_03E7CF         ; $03:E7C7: F0 06       ;
CODE_03E7C9:    CMP #$08                ; $03:E7C9: C9 08       ;
CODE_03E7CB:    BEQ CODE_03E7CF         ; $03:E7CB: F0 02       ;
CODE_03E7CD:    STY $47,x               ; $03:E7CD: 94 47       ;
CODE_03E7CF:    DEY                     ; $03:E7CF: 88          ;
CODE_03E7D0:    LDA DATA_03E72C,y       ; $03:E7D0: B9 2C E7    ;
CODE_03E7D3:    STA $5E,x               ; $03:E7D3: 95 5E       ;
CODE_03E7D5:    RTS                     ; $03:E7D5: 60          ;

CODE_03E7D6:    LDA $04                 ; $03:E7D6: A5 04       ;
CODE_03E7D8:    SEC                     ; $03:E7D8: 38          ;
CODE_03E7D9:    SBC #$08                ; $03:E7D9: E9 08       ;
CODE_03E7DB:    CMP #$05                ; $03:E7DB: C9 05       ;
CODE_03E7DD:    BCS CODE_03E851         ; $03:E7DD: B0 72       ;
CODE_03E7DF:    LDA $29,x               ; $03:E7DF: B5 29       ;
CODE_03E7E1:    AND #$40                ; $03:E7E1: 29 40       ;
CODE_03E7E3:    BNE CODE_03E83C         ; $03:E7E3: D0 57       ;
CODE_03E7E5:    LDA $29,x               ; $03:E7E5: B5 29       ;
CODE_03E7E7:    ASL A                   ; $03:E7E7: 0A          ;
CODE_03E7E8:    BCC CODE_03E7ED         ; $03:E7E8: 90 03       ;
CODE_03E7EA:    JMP CODE_03E86D         ; $03:E7EA: 4C 6D E8    ;

CODE_03E7ED:    LDA $29,x               ; $03:E7ED: B5 29       ;
CODE_03E7EF:    BEQ CODE_03E7EA         ; $03:E7EF: F0 F9       ;
CODE_03E7F1:    CMP #$05                ; $03:E7F1: C9 05       ;
CODE_03E7F3:    BEQ CODE_03E814         ; $03:E7F3: F0 1F       ;
CODE_03E7F5:    CMP #$03                ; $03:E7F5: C9 03       ;
CODE_03E7F7:    BCS CODE_03E813         ; $03:E7F7: B0 1A       ;
CODE_03E7F9:    LDA $29,x               ; $03:E7F9: B5 29       ;
CODE_03E7FB:    CMP #$02                ; $03:E7FB: C9 02       ;
CODE_03E7FD:    BNE CODE_03E814         ; $03:E7FD: D0 15       ;
CODE_03E7FF:    LDA #$10                ; $03:E7FF: A9 10       ;
CODE_03E801:    LDY $1C,x               ; $03:E801: B4 1C       ;
CODE_03E803:    CPY #$12                ; $03:E803: C0 12       ;
CODE_03E805:    BNE CODE_03E809         ; $03:E805: D0 02       ;
CODE_03E807:    LDA #$00                ; $03:E807: A9 00       ;
CODE_03E809:    STA $07A2,x             ; $03:E809: 9D A2 07    ;
CODE_03E80C:    LDA #$03                ; $03:E80C: A9 03       ;
CODE_03E80E:    STA $29,x               ; $03:E80E: 95 29       ;
CODE_03E810:    JSR CODE_03E8CA         ; $03:E810: 20 CA E8    ;
CODE_03E813:    RTS                     ; $03:E813: 60          ;

CODE_03E814:    LDA $1C,x               ; $03:E814: B5 1C       ;
CODE_03E816:    CMP #$06                ; $03:E816: C9 06       ;
CODE_03E818:    BEQ CODE_03E83C         ; $03:E818: F0 22       ;
CODE_03E81A:    CMP #$12                ; $03:E81A: C9 12       ;
CODE_03E81C:    BNE CODE_03E82C         ; $03:E81C: D0 0E       ;
CODE_03E81E:    LDA #$01                ; $03:E81E: A9 01       ;
CODE_03E820:    STA $47,x               ; $03:E820: 95 47       ;
CODE_03E822:    LDA #$08                ; $03:E822: A9 08       ;
CODE_03E824:    STA $5E,x               ; $03:E824: 95 5E       ;
CODE_03E826:    LDA $09                 ; $03:E826: A5 09       ;
CODE_03E828:    AND #$07                ; $03:E828: 29 07       ;
CODE_03E82A:    BEQ CODE_03E83C         ; $03:E82A: F0 10       ;
CODE_03E82C:    LDY #$01                ; $03:E82C: A0 01       ;
CODE_03E82E:    JSR CODE_03E8BC         ; $03:E82E: 20 BC E8    ;
CODE_03E831:    BPL CODE_03E834         ; $03:E831: 10 01       ;
CODE_03E833:    INY                     ; $03:E833: C8          ;
CODE_03E834:    TYA                     ; $03:E834: 98          ;
CODE_03E835:    CMP $47,x               ; $03:E835: D5 47       ;
CODE_03E837:    BNE CODE_03E83C         ; $03:E837: D0 03       ;
CODE_03E839:    JSR CODE_03E894         ; $03:E839: 20 94 E8    ;
CODE_03E83C:    JSR CODE_03E8CA         ; $03:E83C: 20 CA E8    ;
CODE_03E83F:    LDA $29,x               ; $03:E83F: B5 29       ;
CODE_03E841:    AND #$80                ; $03:E841: 29 80       ;
CODE_03E843:    BNE CODE_03E84A         ; $03:E843: D0 05       ;
CODE_03E845:    LDA #$00                ; $03:E845: A9 00       ;
CODE_03E847:    STA $29,x               ; $03:E847: 95 29       ;
CODE_03E849:    RTS                     ; $03:E849: 60          ;

CODE_03E84A:    LDA $29,x               ; $03:E84A: B5 29       ;
CODE_03E84C:    AND #$BF                ; $03:E84C: 29 BF       ;
CODE_03E84E:    STA $29,x               ; $03:E84E: 95 29       ;
CODE_03E850:    RTS                     ; $03:E850: 60          ;

CODE_03E851:    LDA $1C,x               ; $03:E851: B5 1C       ;
CODE_03E853:    CMP #$03                ; $03:E853: C9 03       ;
CODE_03E855:    BNE CODE_03E85B         ; $03:E855: D0 04       ;
CODE_03E857:    LDA $29,x               ; $03:E857: B5 29       ;
CODE_03E859:    BEQ CODE_03E894         ; $03:E859: F0 39       ;
CODE_03E85B:    LDA $29,x               ; $03:E85B: B5 29       ;
CODE_03E85D:    TAY                     ; $03:E85D: A8          ;
CODE_03E85E:    ASL A                   ; $03:E85E: 0A          ;
CODE_03E85F:    BCC CODE_03E868         ; $03:E85F: 90 07       ;
CODE_03E861:    LDA $29,x               ; $03:E861: B5 29       ;
CODE_03E863:    ORA #$40                ; $03:E863: 09 40       ;
CODE_03E865:    JMP CODE_03E86B         ; $03:E865: 4C 6B E8    ;

CODE_03E868:    LDA DATA_03E726,y       ; $03:E868: B9 26 E7    ;
CODE_03E86B:    STA $29,x               ; $03:E86B: 95 29       ;
CODE_03E86D:    LDA $0238,x             ; $03:E86D: BD 38 02    ;
CODE_03E870:    CMP #$20                ; $03:E870: C9 20       ;
CODE_03E872:    BCC CODE_03E893         ; $03:E872: 90 1F       ;
CODE_03E874:    LDY #$16                ; $03:E874: A0 16       ;
CODE_03E876:    LDA #$02                ; $03:E876: A9 02       ;
CODE_03E878:    STA $EB                 ; $03:E878: 85 EB       ;
CODE_03E87A:    LDA $EB                 ; $03:E87A: A5 EB       ;
CODE_03E87C:    CMP $47,x               ; $03:E87C: D5 47       ;
CODE_03E87E:    BNE CODE_03E88C         ; $03:E87E: D0 0C       ;
CODE_03E880:    LDA #$01                ; $03:E880: A9 01       ;
CODE_03E882:    JSR CODE_03EB1A         ; $03:E882: 20 1A EB    ;
CODE_03E885:    BEQ CODE_03E88C         ; $03:E885: F0 05       ;
CODE_03E887:    JSR CODE_03E933         ; $03:E887: 20 33 E9    ;
CODE_03E88A:    BNE CODE_03E894         ; $03:E88A: D0 08       ;
CODE_03E88C:    DEC $EB                 ; $03:E88C: C6 EB       ;
CODE_03E88E:    INY                     ; $03:E88E: C8          ;
CODE_03E88F:    CPY #$18                ; $03:E88F: C0 18       ;
CODE_03E891:    BCC CODE_03E87A         ; $03:E891: 90 E7       ;
CODE_03E893:    RTS                     ; $03:E893: 60          ;

CODE_03E894:    CPX #$09                ; $03:E894: E0 09       ;
CODE_03E896:    BEQ CODE_03E8AA         ; $03:E896: F0 12       ;
CODE_03E898:    LDA $29,x               ; $03:E898: B5 29       ;
CODE_03E89A:    ASL A                   ; $03:E89A: 0A          ;
CODE_03E89B:    BCC CODE_03E8AA         ; $03:E89B: 90 0D       ;
CODE_03E89D:    CPX #$09                ; $03:E89D: E0 09       ;
CODE_03E89F:    BEQ CODE_03E8AA         ; $03:E89F: F0 09       ;
CODE_03E8A1:    LDA #$01                ; $03:E8A1: A9 01       ;\Hit hard block sound
CODE_03E8A3:    STA $1600               ; $03:E8A3: 8D 00 16    ;/
CODE_03E8A6:    JSL CODE_05D2B1         ; $03:E8A6: 22 B1 D2 05 ;
CODE_03E8AA:    LDA $1C,x               ; $03:E8AA: B5 1C       ;
CODE_03E8AC:    CMP #$05                ; $03:E8AC: C9 05       ;
CODE_03E8AE:    BNE CODE_03E8B9         ; $03:E8AE: D0 09       ;
CODE_03E8B0:    LDA #$00                ; $03:E8B0: A9 00       ;
CODE_03E8B2:    STA $00                 ; $03:E8B2: 85 00       ;
CODE_03E8B4:    LDY #$FA                ; $03:E8B4: A0 FA       ;
CODE_03E8B6:    JMP CODE_03CEC7         ; $03:E8B6: 4C C7 CE    ;

CODE_03E8B9:    JMP CODE_03E1D8         ; $03:E8B9: 4C D8 E1    ;

CODE_03E8BC:    LDA $021A,x             ; $03:E8BC: BD 1A 02    ;SUB_HORZ_POS. Distance between Player and the sprite gets stored in $00
CODE_03E8BF:    SEC                     ; $03:E8BF: 38          ;
CODE_03E8C0:    SBC $0219               ; $03:E8C0: ED 19 02    ;
CODE_03E8C3:    STA $00                 ; $03:E8C3: 85 00       ;
CODE_03E8C5:    LDA $79,x               ; $03:E8C5: B5 79       ;
CODE_03E8C7:    SBC $78                 ; $03:E8C7: E5 78       ;
CODE_03E8C9:    RTS                     ; $03:E8C9: 60          ;

CODE_03E8CA:    JSR CODE_03C726         ; $03:E8CA: 20 26 C7    ;
CODE_03E8CD:    LDA $0238,x             ; $03:E8CD: BD 38 02    ;
CODE_03E8D0:    AND #$F0                ; $03:E8D0: 29 F0       ;
CODE_03E8D2:    ORA #$08                ; $03:E8D2: 09 08       ;
CODE_03E8D4:    STA $0238,x             ; $03:E8D4: 9D 38 02    ;
CODE_03E8D7:    RTS                     ; $03:E8D7: 60          ;

CODE_03E8D8:    LDA $0238,x             ; $03:E8D8: BD 38 02    ;
CODE_03E8DB:    CLC                     ; $03:E8DB: 18          ;
CODE_03E8DC:    ADC #$3E                ; $03:E8DC: 69 3E       ;
CODE_03E8DE:    CMP #$44                ; $03:E8DE: C9 44       ;
CODE_03E8E0:    RTS                     ; $03:E8E0: 60          ;

CODE_03E8E1:    JSR CODE_03E8D8         ; $03:E8E1: 20 D8 E8    ;
CODE_03E8E4:    BCC CODE_03E900         ; $03:E8E4: 90 1A       ;
CODE_03E8E6:    LDA $A1,x               ; $03:E8E6: B5 A1       ;
CODE_03E8E8:    CLC                     ; $03:E8E8: 18          ;
CODE_03E8E9:    ADC #$02                ; $03:E8E9: 69 02       ;
CODE_03E8EB:    CMP #$03                ; $03:E8EB: C9 03       ;
CODE_03E8ED:    BCC CODE_03E900         ; $03:E8ED: 90 11       ;
CODE_03E8EF:    JSR CODE_03E92C         ; $03:E8EF: 20 2C E9    ;
CODE_03E8F2:    BEQ CODE_03E900         ; $03:E8F2: F0 0C       ;
CODE_03E8F4:    JSR CODE_03E933         ; $03:E8F4: 20 33 E9    ;
CODE_03E8F7:    BEQ CODE_03E900         ; $03:E8F7: F0 07       ;
CODE_03E8F9:    JSR CODE_03E8CA         ; $03:E8F9: 20 CA E8    ;
CODE_03E8FC:    LDA #$FD                ; $03:E8FC: A9 FD       ;
CODE_03E8FE:    STA $A1,x               ; $03:E8FE: 95 A1       ;
CODE_03E900:    JMP CODE_03E86D         ; $03:E900: 4C 6D E8    ;

CODE_03E903:    JSR CODE_03E92C         ; $03:E903: 20 2C E9    ;
CODE_03E906:    BEQ CODE_03E925         ; $03:E906: F0 1D       ;
CODE_03E908:    CMP #$27                ; $03:E908: C9 27       ;
CODE_03E90A:    BNE CODE_03E914         ; $03:E90A: D0 08       ;
CODE_03E90C:    JSR CODE_03DD81         ; $03:E90C: 20 81 DD    ;
CODE_03E90F:    LDA #$FC                ; $03:E90F: A9 FC       ;
CODE_03E911:    STA $A1,x               ; $03:E911: 95 A1       ;
CODE_03E913:    RTS                     ; $03:E913: 60          ;

CODE_03E914:    LDA $0792,x             ; $03:E914: BD 92 07    ;
CODE_03E917:    BNE CODE_03E925         ; $03:E917: D0 0C       ;
CODE_03E919:    LDA $29,x               ; $03:E919: B5 29       ;
CODE_03E91B:    AND #$88                ; $03:E91B: 29 88       ;
CODE_03E91D:    STA $29,x               ; $03:E91D: 95 29       ;
CODE_03E91F:    JSR CODE_03E8CA         ; $03:E91F: 20 CA E8    ;
CODE_03E922:    JMP CODE_03E86D         ; $03:E922: 4C 6D E8    ;

CODE_03E925:    LDA $29,x               ; $03:E925: B5 29       ;
CODE_03E927:    ORA #$01                ; $03:E927: 09 01       ;
CODE_03E929:    STA $29,x               ; $03:E929: 95 29       ;
CODE_03E92B:    RTS                     ; $03:E92B: 60          ;

CODE_03E92C:    LDA #$00                ; $03:E92C: A9 00       ;
CODE_03E92E:    LDY #$15                ; $03:E92E: A0 15       ;
CODE_03E930:    JMP CODE_03EB1A         ; $03:E930: 4C 1A EB    ;

CODE_03E933:    CMP #$2A                ; $03:E933: C9 2A       ;
CODE_03E935:    BEQ CODE_03E945         ; $03:E935: F0 0E       ;
CODE_03E937:    CMP #$E9                ; $03:E937: C9 E9       ;
CODE_03E939:    BEQ CODE_03E945         ; $03:E939: F0 0A       ;
CODE_03E93B:    CMP #$EA                ; $03:E93B: C9 EA       ;
CODE_03E93D:    BEQ CODE_03E945         ; $03:E93D: F0 06       ;
CODE_03E93F:    CMP #$62                ; $03:E93F: C9 62       ;
CODE_03E941:    BEQ CODE_03E945         ; $03:E941: F0 02       ;
CODE_03E943:    CMP #$63                ; $03:E943: C9 63       ;
CODE_03E945:    RTS                     ; $03:E945: 60          ;

CODE_03E946:    LDA $0242,x             ; $03:E946: BD 42 02    ;
CODE_03E949:    CMP #$18                ; $03:E949: C9 18       ;
CODE_03E94B:    BCC CODE_03E972         ; $03:E94B: 90 25       ;
CODE_03E94D:    JSR CODE_03EB2E         ; $03:E94D: 20 2E EB    ;
CODE_03E950:    BEQ CODE_03E972         ; $03:E950: F0 20       ;
CODE_03E952:    JSR CODE_03E933         ; $03:E952: 20 33 E9    ;
CODE_03E955:    BEQ CODE_03E972         ; $03:E955: F0 1B       ;
CODE_03E957:    LDA $AB,x               ; $03:E957: B5 AB       ;
CODE_03E959:    BMI CODE_03E978         ; $03:E959: 30 1D       ;
CODE_03E95B:    LDA $020D,x             ; $03:E95B: BD 0D 02    ;
CODE_03E95E:    BNE CODE_03E978         ; $03:E95E: D0 18       ;
CODE_03E960:    LDA #$FD                ; $03:E960: A9 FD       ;
CODE_03E962:    STA $AB,x               ; $03:E962: 95 AB       ;
CODE_03E964:    LDA #$01                ; $03:E964: A9 01       ;
CODE_03E966:    STA $020D,x             ; $03:E966: 9D 0D 02    ;
CODE_03E969:    LDA $0242,x             ; $03:E969: BD 42 02    ;
CODE_03E96C:    AND #$F8                ; $03:E96C: 29 F8       ;
CODE_03E96E:    STA $0242,x             ; $03:E96E: 9D 42 02    ;
CODE_03E971:    RTS                     ; $03:E971: 60          ;

CODE_03E972:    LDA #$00                ; $03:E972: A9 00       ;
CODE_03E974:    STA $020D,x             ; $03:E974: 9D 0D 02    ;
CODE_03E977:    RTS                     ; $03:E977: 60          ;

CODE_03E978:    LDA #$80                ; $03:E978: A9 80       ;
CODE_03E97A:    STA $33,x               ; $03:E97A: 95 33       ;
CODE_03E97C:    LDA #$01                ; $03:E97C: A9 01       ;\
CODE_03E97E:    STA $1600               ; $03:E97E: 8D 00 16    ;/Hit hard block sound
CODE_03E981:    RTS                     ; $03:E981: 60          ;

DATA_03E982:    db $02,$08                                      ;

DATA_03E984:    db $0E,$20,$03,$14,$0D,$20,$02,$14              ;
                db $0E,$20,$02,$09,$0E,$15,$00,$00              ;
                db $18,$06,$00,$00,$20,$0D,$00,$00              ;
                db $30,$0D,$00,$00,$08,$08,$06,$04              ;
                db $0A,$0C,$03,$0E,$0D,$14,$04,$04              ;
                db $1C,$1C,$04,$04,$0C,$1C,$03,$07              ;
                db $0D,$16                                      ;

CODE_03E9B6:    TXA                     ; $03:E9B6: 8A          ;
CODE_03E9B7:    CLC                     ; $03:E9B7: 18          ;
CODE_03E9B8:    ADC #$0B                ; $03:E9B8: 69 0B       ;
CODE_03E9BA:    TAX                     ; $03:E9BA: AA          ;
CODE_03E9BB:    LDY #$02                ; $03:E9BB: A0 02       ;
CODE_03E9BD:    BNE CODE_03E9C6         ; $03:E9BD: D0 07       ;
CODE_03E9BF:    TXA                     ; $03:E9BF: 8A          ;
CODE_03E9C0:    CLC                     ; $03:E9C0: 18          ;
CODE_03E9C1:    ADC #$0D                ; $03:E9C1: 69 0D       ;
CODE_03E9C3:    TAX                     ; $03:E9C3: AA          ;
CODE_03E9C4:    LDY #$06                ; $03:E9C4: A0 06       ;
CODE_03E9C6:    JSR CODE_03EA2D         ; $03:E9C6: 20 2D EA    ;
CODE_03E9C9:    JMP CODE_03EA6F         ; $03:E9C9: 4C 6F EA    ;

CODE_03E9CC:    LDY #$48                ; $03:E9CC: A0 48       ;
CODE_03E9CE:    STY $00                 ; $03:E9CE: 84 00       ;
CODE_03E9D0:    LDY #$44                ; $03:E9D0: A0 44       ;
CODE_03E9D2:    JMP CODE_03E9DB         ; $03:E9D2: 4C DB E9    ;

CODE_03E9D5:    LDY #$08                ; $03:E9D5: A0 08       ;
CODE_03E9D7:    STY $00                 ; $03:E9D7: 84 00       ;
CODE_03E9D9:    LDY #$04                ; $03:E9D9: A0 04       ;
CODE_03E9DB:    LDA $021A,x             ; $03:E9DB: BD 1A 02    ;
CODE_03E9DE:    SEC                     ; $03:E9DE: 38          ;
CODE_03E9DF:    SBC $071C               ; $03:E9DF: ED 1C 07    ;
CODE_03E9E2:    STA $01                 ; $03:E9E2: 85 01       ;
CODE_03E9E4:    LDA $79,x               ; $03:E9E4: B5 79       ;
CODE_03E9E6:    SBC $071A               ; $03:E9E6: ED 1A 07    ;
CODE_03E9E9:    BMI CODE_03E9F1         ; $03:E9E9: 30 06       ;
CODE_03E9EB:    ORA $01                 ; $03:E9EB: 05 01       ;
CODE_03E9ED:    BEQ CODE_03E9F1         ; $03:E9ED: F0 02       ;
CODE_03E9EF:    LDY $00                 ; $03:E9EF: A4 00       ;
CODE_03E9F1:    TYA                     ; $03:E9F1: 98          ;
CODE_03E9F2:    AND $03D1               ; $03:E9F2: 2D D1 03    ;
CODE_03E9F5:    STA $03D9,x             ; $03:E9F5: 9D D9 03    ;
CODE_03E9F8:    CPX #$09                ; $03:E9F8: E0 09       ;
CODE_03E9FA:    BEQ CODE_03EA0D         ; $03:E9FA: F0 11       ;
CODE_03E9FC:    LDA $03D9,x             ; $03:E9FC: BD D9 03    ;
CODE_03E9FF:    BNE CODE_03EA1A         ; $03:E9FF: D0 19       ;
CODE_03EA01:    JMP CODE_03EA0D         ; $03:EA01: 4C 0D EA    ;

CODE_03EA04:    INX                     ; $03:EA04: E8          ;
CODE_03EA05:    JSR CODE_03FE1E         ; $03:EA05: 20 1E FE    ;
CODE_03EA08:    DEX                     ; $03:EA08: CA          ;
CODE_03EA09:    CMP #$FE                ; $03:EA09: C9 FE       ;
CODE_03EA0B:    BCS CODE_03EA1A         ; $03:EA0B: B0 0D       ;
CODE_03EA0D:    TXA                     ; $03:EA0D: 8A          ;
CODE_03EA0E:    CLC                     ; $03:EA0E: 18          ;
CODE_03EA0F:    ADC #$01                ; $03:EA0F: 69 01       ;
CODE_03EA11:    TAX                     ; $03:EA11: AA          ;
CODE_03EA12:    LDY #$01                ; $03:EA12: A0 01       ;
CODE_03EA14:    JSR CODE_03EA2D         ; $03:EA14: 20 2D EA    ;
CODE_03EA17:    JMP CODE_03EA6F         ; $03:EA17: 4C 6F EA    ;

CODE_03EA1A:    TXA                     ; $03:EA1A: 8A          ;
CODE_03EA1B:    ASL A                   ; $03:EA1B: 0A          ;
CODE_03EA1C:    ASL A                   ; $03:EA1C: 0A          ;
CODE_03EA1D:    TAY                     ; $03:EA1D: A8          ;
CODE_03EA1E:    LDA #$FF                ; $03:EA1E: A9 FF       ;
CODE_03EA20:    STA $0FA0,y             ; $03:EA20: 99 A0 0F    ;
CODE_03EA23:    STA $0FA1,y             ; $03:EA23: 99 A1 0F    ;
CODE_03EA26:    STA $0FA2,y             ; $03:EA26: 99 A2 0F    ;
CODE_03EA29:    STA $0FA3,y             ; $03:EA29: 99 A3 0F    ;
CODE_03EA2C:    RTS                     ; $03:EA2C: 60          ;

CODE_03EA2D:    STX $00                 ; $03:EA2D: 86 00       ;
CODE_03EA2F:    LDA $03B8,y             ; $03:EA2F: B9 B8 03    ;
CODE_03EA32:    STA $02                 ; $03:EA32: 85 02       ;
CODE_03EA34:    LDA $03AD,y             ; $03:EA34: B9 AD 03    ;
CODE_03EA37:    STA $01                 ; $03:EA37: 85 01       ;
CODE_03EA39:    TXA                     ; $03:EA39: 8A          ;
CODE_03EA3A:    ASL A                   ; $03:EA3A: 0A          ;
CODE_03EA3B:    ASL A                   ; $03:EA3B: 0A          ;
CODE_03EA3C:    PHA                     ; $03:EA3C: 48          ;
CODE_03EA3D:    TAY                     ; $03:EA3D: A8          ;
CODE_03EA3E:    LDA $048F,x             ; $03:EA3E: BD 8F 04    ;
CODE_03EA41:    ASL A                   ; $03:EA41: 0A          ;
CODE_03EA42:    ASL A                   ; $03:EA42: 0A          ;
CODE_03EA43:    TAX                     ; $03:EA43: AA          ;
CODE_03EA44:    LDA $01                 ; $03:EA44: A5 01       ;
CODE_03EA46:    CLC                     ; $03:EA46: 18          ;
CODE_03EA47:    ADC DATA_03E982,x       ; $03:EA47: 7D 82 E9    ;
CODE_03EA4A:    STA $0F9C,y             ; $03:EA4A: 99 9C 0F    ;
CODE_03EA4D:    LDA $01                 ; $03:EA4D: A5 01       ;
CODE_03EA4F:    CLC                     ; $03:EA4F: 18          ;
CODE_03EA50:    ADC DATA_03E984,x       ; $03:EA50: 7D 84 E9    ;
CODE_03EA53:    STA $0F9E,y             ; $03:EA53: 99 9E 0F    ;
CODE_03EA56:    INX                     ; $03:EA56: E8          ;
CODE_03EA57:    INY                     ; $03:EA57: C8          ;
CODE_03EA58:    LDA $02                 ; $03:EA58: A5 02       ;
CODE_03EA5A:    CLC                     ; $03:EA5A: 18          ;
CODE_03EA5B:    ADC DATA_03E982,x       ; $03:EA5B: 7D 82 E9    ;
CODE_03EA5E:    STA $0F9C,y             ; $03:EA5E: 99 9C 0F    ;
CODE_03EA61:    LDA $02                 ; $03:EA61: A5 02       ;
CODE_03EA63:    CLC                     ; $03:EA63: 18          ;
CODE_03EA64:    ADC DATA_03E984,x       ; $03:EA64: 7D 84 E9    ;
CODE_03EA67:    STA $0F9E,y             ; $03:EA67: 99 9E 0F    ;
CODE_03EA6A:    PLA                     ; $03:EA6A: 68          ;
CODE_03EA6B:    TAY                     ; $03:EA6B: A8          ;
CODE_03EA6C:    LDX $00                 ; $03:EA6C: A6 00       ;
CODE_03EA6E:    RTS                     ; $03:EA6E: 60          ;

CODE_03EA6F:    LDA $071C               ; $03:EA6F: AD 1C 07    ;
CODE_03EA72:    CLC                     ; $03:EA72: 18          ;
CODE_03EA73:    ADC #$80                ; $03:EA73: 69 80       ;
CODE_03EA75:    STA $02                 ; $03:EA75: 85 02       ;
CODE_03EA77:    LDA $071A               ; $03:EA77: AD 1A 07    ;
CODE_03EA7A:    ADC #$00                ; $03:EA7A: 69 00       ;
CODE_03EA7C:    STA $01                 ; $03:EA7C: 85 01       ;
CODE_03EA7E:    LDA $0219,x             ; $03:EA7E: BD 19 02    ;
CODE_03EA81:    CMP $02                 ; $03:EA81: C5 02       ;
CODE_03EA83:    LDA $78,x               ; $03:EA83: B5 78       ;
CODE_03EA85:    SBC $01                 ; $03:EA85: E5 01       ;
CODE_03EA87:    BCC CODE_03EA9E         ; $03:EA87: 90 15       ;
CODE_03EA89:    LDA $0F9E,y             ; $03:EA89: B9 9E 0F    ;
CODE_03EA8C:    BMI CODE_03EA9B         ; $03:EA8C: 30 0D       ;
CODE_03EA8E:    LDA #$FF                ; $03:EA8E: A9 FF       ;
CODE_03EA90:    LDX $0F9C,y             ; $03:EA90: BE 9C 0F    ;
CODE_03EA93:    BMI CODE_03EA98         ; $03:EA93: 30 03       ;
CODE_03EA95:    STA $0F9C,y             ; $03:EA95: 99 9C 0F    ;
CODE_03EA98:    STA $0F9E,y             ; $03:EA98: 99 9E 0F    ;
CODE_03EA9B:    LDX $9E                 ; $03:EA9B: A6 9E       ;
CODE_03EA9D:    RTS                     ; $03:EA9D: 60          ;

CODE_03EA9E:    LDA $0F9C,y             ; $03:EA9E: B9 9C 0F    ;
CODE_03EAA1:    BPL CODE_03EAB4         ; $03:EAA1: 10 11       ;
CODE_03EAA3:    CMP #$A0                ; $03:EAA3: C9 A0       ;
CODE_03EAA5:    BCC CODE_03EAB4         ; $03:EAA5: 90 0D       ;
CODE_03EAA7:    LDA #$00                ; $03:EAA7: A9 00       ;
CODE_03EAA9:    LDX $0F9E,y             ; $03:EAA9: BE 9E 0F    ;
CODE_03EAAC:    BPL CODE_03EAB1         ; $03:EAAC: 10 03       ;
CODE_03EAAE:    STA $0F9E,y             ; $03:EAAE: 99 9E 0F    ;
CODE_03EAB1:    STA $0F9C,y             ; $03:EAB1: 99 9C 0F    ;
CODE_03EAB4:    LDX $9E                 ; $03:EAB4: A6 9E       ;
CODE_03EAB6:    RTS                     ; $03:EAB6: 60          ;

CODE_03EAB7:    LDX #$00                ; $03:EAB7: A2 00       ;
CODE_03EAB9:    STY $06                 ; $03:EAB9: 84 06       ;
CODE_03EABB:    LDA #$01                ; $03:EABB: A9 01       ;
CODE_03EABD:    STA $07                 ; $03:EABD: 85 07       ;
CODE_03EABF:    LDA $0F9C,y             ; $03:EABF: B9 9C 0F    ;
CODE_03EAC2:    CMP $0F9C,x             ; $03:EAC2: DD 9C 0F    ;
CODE_03EAC5:    BCS CODE_03EAF1         ; $03:EAC5: B0 2A       ;
CODE_03EAC7:    CMP $0F9E,x             ; $03:EAC7: DD 9E 0F    ;
CODE_03EACA:    BCC CODE_03EADE         ; $03:EACA: 90 12       ;
CODE_03EACC:    BEQ CODE_03EB10         ; $03:EACC: F0 42       ;
CODE_03EACE:    LDA $0F9E,y             ; $03:EACE: B9 9E 0F    ;
CODE_03EAD1:    CMP $0F9C,y             ; $03:EAD1: D9 9C 0F    ;
CODE_03EAD4:    BCC CODE_03EB10         ; $03:EAD4: 90 3A       ;
CODE_03EAD6:    CMP $0F9C,x             ; $03:EAD6: DD 9C 0F    ;
CODE_03EAD9:    BCS CODE_03EB10         ; $03:EAD9: B0 35       ;
CODE_03EADB:    LDY $06                 ; $03:EADB: A4 06       ;
CODE_03EADD:    RTS                     ; $03:EADD: 60          ;

CODE_03EADE:    LDA $0F9E,x             ; $03:EADE: BD 9E 0F    ;
CODE_03EAE1:    CMP $0F9C,x             ; $03:EAE1: DD 9C 0F    ;
CODE_03EAE4:    BCC CODE_03EB10         ; $03:EAE4: 90 2A       ;
CODE_03EAE6:    LDA $0F9E,y             ; $03:EAE6: B9 9E 0F    ;
CODE_03EAE9:    CMP $0F9C,x             ; $03:EAE9: DD 9C 0F    ;
CODE_03EAEC:    BCS CODE_03EB10         ; $03:EAEC: B0 22       ;
CODE_03EAEE:    LDY $06                 ; $03:EAEE: A4 06       ;
CODE_03EAF0:    RTS                     ; $03:EAF0: 60          ;

CODE_03EAF1:    CMP $0F9C,x             ; $03:EAF1: DD 9C 0F    ;
CODE_03EAF4:    BEQ CODE_03EB10         ; $03:EAF4: F0 1A       ;
CODE_03EAF6:    CMP $0F9E,x             ; $03:EAF6: DD 9E 0F    ;
CODE_03EAF9:    BCC CODE_03EB10         ; $03:EAF9: 90 15       ;
CODE_03EAFB:    BEQ CODE_03EB10         ; $03:EAFB: F0 13       ;
CODE_03EAFD:    CMP $0F9E,y             ; $03:EAFD: D9 9E 0F    ;
CODE_03EB00:    BCC CODE_03EB0C         ; $03:EB00: 90 0A       ;
CODE_03EB02:    BEQ CODE_03EB0C         ; $03:EB02: F0 08       ;
CODE_03EB04:    LDA $0F9E,y             ; $03:EB04: B9 9E 0F    ;
CODE_03EB07:    CMP $0F9C,x             ; $03:EB07: DD 9C 0F    ;
CODE_03EB0A:    BCS CODE_03EB10         ; $03:EB0A: B0 04       ;
CODE_03EB0C:    CLC                     ; $03:EB0C: 18          ;
CODE_03EB0D:    LDY $06                 ; $03:EB0D: A4 06       ;
CODE_03EB0F:    RTS                     ; $03:EB0F: 60          ;

CODE_03EB10:    INX                     ; $03:EB10: E8          ;
CODE_03EB11:    INY                     ; $03:EB11: C8          ;
CODE_03EB12:    DEC $07                 ; $03:EB12: C6 07       ;
CODE_03EB14:    BPL CODE_03EABF         ; $03:EB14: 10 A9       ;
CODE_03EB16:    SEC                     ; $03:EB16: 38          ;
CODE_03EB17:    LDY $06                 ; $03:EB17: A4 06       ;
CODE_03EB19:    RTS                     ; $03:EB19: 60          ;

CODE_03EB1A:    PHA                     ; $03:EB1A: 48          ;
CODE_03EB1B:    TXA                     ; $03:EB1B: 8A          ;
CODE_03EB1C:    CLC                     ; $03:EB1C: 18          ;
CODE_03EB1D:    ADC #$01                ; $03:EB1D: 69 01       ;
CODE_03EB1F:    TAX                     ; $03:EB1F: AA          ;
CODE_03EB20:    PLA                     ; $03:EB20: 68          ;
CODE_03EB21:    JMP CODE_03EB37         ; $03:EB21: 4C 37 EB    ;

CODE_03EB24:    TXA                     ; $03:EB24: 8A          ;
CODE_03EB25:    CLC                     ; $03:EB25: 18          ;
CODE_03EB26:    ADC #$11                ; $03:EB26: 69 11       ;
CODE_03EB28:    TAX                     ; $03:EB28: AA          ;
CODE_03EB29:    LDY #$1B                ; $03:EB29: A0 1B       ;
CODE_03EB2B:    JMP CODE_03EB35         ; $03:EB2B: 4C 35 EB    ;

CODE_03EB2E:    LDY #$1A                ; $03:EB2E: A0 1A       ;
CODE_03EB30:    TXA                     ; $03:EB30: 8A          ;
CODE_03EB31:    CLC                     ; $03:EB31: 18          ;
CODE_03EB32:    ADC #$0B                ; $03:EB32: 69 0B       ;
CODE_03EB34:    TAX                     ; $03:EB34: AA          ;
CODE_03EB35:    LDA #$00                ; $03:EB35: A9 00       ;
CODE_03EB37:    JSR CODE_03EB83         ; $03:EB37: 20 83 EB    ;
CODE_03EB3A:    LDX $9E                 ; $03:EB3A: A6 9E       ;
CODE_03EB3C:    CMP #$00                ; $03:EB3C: C9 00       ;
CODE_03EB3E:    RTS                     ; $03:EB3E: 60          ;

DATA_03EB3F:    db $00,$07,$0E                                  ; Mario<->block interaction "offset". Big Mario, Big swimming mario, Small mario

DATA_03EB42:    db $08,$03,$0C,$02,$02,$0D,$0D,$08              ;
                db $03,$0C,$02,$02,$0D,$0D,$08,$03              ;
                db $0C,$02,$02,$0D,$0D,$08,$00,$10              ;
                db $04,$14,$04,$04                              ;

DATA_03EB5E:    db $04,$20,$20,$08,$18,$08,$18,$02              ;
                db $20,$20,$08,$18,$08,$18,$12,$20              ;
                db $20,$18,$18,$18,$18,$18,$14,$14              ;
                db $06,$06,$08,$10                              ;

CODE_03EB7A:    INY                     ; $03:EB7A: C8          ;
CODE_03EB7B:    LDA #$00                ; $03:EB7B: A9 00       ;
CODE_03EB7D:    BRA CODE_03EB81         ; $03:EB7D: 80 02       ;

CODE_03EB7F:    LDA #$01                ; $03:EB7F: A9 01       ;
CODE_03EB81:    LDX #$00                ; $03:EB81: A2 00       ;
CODE_03EB83:    PHA                     ; $03:EB83: 48          ;
CODE_03EB84:    STY $04                 ; $03:EB84: 84 04       ;
CODE_03EB86:    LDA DATA_03EB42,y       ; $03:EB86: B9 42 EB    ;\
CODE_03EB89:    CLC                     ; $03:EB89: 18          ; |
CODE_03EB8A:    ADC $0219,x             ; $03:EB8A: 7D 19 02    ; |X-position of Mario sprite
CODE_03EB8D:    STA $05                 ; $03:EB8D: 85 05       ; |
CODE_03EB8F:    LDA $78,x               ; $03:EB8F: B5 78       ; |Screen of player
CODE_03EB91:    ADC #$00                ; $03:EB91: 69 00       ; | 
CODE_03EB93:    AND #$01                ; $03:EB93: 29 01       ; |
CODE_03EB95:    LSR A                   ; $03:EB95: 4A          ; |
CODE_03EB96:    ORA $05                 ; $03:EB96: 05 05       ; |
CODE_03EB98:    ROR A                   ; $03:EB98: 6A          ; |
CODE_03EB99:    LSR A                   ; $03:EB99: 4A          ; |
CODE_03EB9A:    LSR A                   ; $03:EB9A: 4A          ; |
CODE_03EB9B:    LSR A                   ; $03:EB9B: 4A          ;/
CODE_03EB9C:    JSR CODE_03ACF6         ; $03:EB9C: 20 F6 AC    ;put values in $06 for indirect pointer?
CODE_03EB9F:    LDY $04                 ; $03:EB9F: A4 04       ;
CODE_03EBA1:    LDA $0237,x             ; $03:EBA1: BD 37 02    ;\Y-position of Mario sprite
CODE_03EBA4:    CLC                     ; $03:EBA4: 18          ; |
CODE_03EBA5:    ADC DATA_03EB5E,y       ; $03:EBA5: 79 5E EB    ; |$7E0002 = (((MarioYpos+TableEB5E)&0xF0)-0x20)
CODE_03EBA8:    AND #$F0                ; $03:EBA8: 29 F0       ; |Is that 0x20 here to compensate for that statusbar area?
CODE_03EBAA:    SEC                     ; $03:EBAA: 38          ; |
CODE_03EBAB:    SBC #$20                ; $03:EBAB: E9 20       ; |
CODE_03EBAD:    STA $02                 ; $03:EBAD: 85 02       ;/
CODE_03EBAF:    TAY                     ; $03:EBAF: A8          ;
CODE_03EBB0:    LDA ($06),y             ; $03:EBB0: B1 06       ;\Store block Mario is interacting with in $03
CODE_03EBB2:    STA $03                 ; $03:EBB2: 85 03       ;/This indirect pointer points to the $0500 area. It contains
CODE_03EBB4:    LDY $04                 ; $03:EBB4: A4 04       ;the object layout of the current screen.
CODE_03EBB6:    PLA                     ; $03:EBB6: 68          ;
CODE_03EBB7:    BNE CODE_03EBBF         ; $03:EBB7: D0 06       ;
CODE_03EBB9:    LDA $0237,x             ; $03:EBB9: BD 37 02    ;
CODE_03EBBC:    JMP CODE_03EBC2         ; $03:EBBC: 4C C2 EB    ;

CODE_03EBBF:    LDA $0219,x             ; $03:EBBF: BD 19 02    ;
CODE_03EBC2:    AND #$0F                ; $03:EBC2: 29 0F       ;
CODE_03EBC4:    STA $04                 ; $03:EBC4: 85 04       ;
CODE_03EBC6:    LDA $E4                 ; $03:EBC6: A5 E4       ;
CODE_03EBC8:    BNE CODE_03EBD6         ; $03:EBC8: D0 0C       ;
CODE_03EBCA:    LDA $03                 ; $03:EBCA: A5 03       ;
CODE_03EBCC:    CMP #$62                ; $03:EBCC: C9 62       ;
CODE_03EBCE:    BEQ CODE_03EBD4         ; $03:EBCE: F0 04       ;
CODE_03EBD0:    CMP #$63                ; $03:EBD0: C9 63       ;
CODE_03EBD2:    BNE CODE_03EBD6         ; $03:EBD2: D0 02       ;
CODE_03EBD4:    STZ $03                 ; $03:EBD4: 64 03       ;
CODE_03EBD6:    LDA $03                 ; $03:EBD6: A5 03       ;
CODE_03EBD8:    RTS                     ; $03:EBD8: 60          ;

DATA_03EBD9:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;empty
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF                  ;

CODE_03EC10:    LDX #$06                ; $03:EC10: A2 06       ;
CODE_03EC12:    STA $0800,y             ; $03:EC12: 99 00 08    ;
CODE_03EC15:    CLC                     ; $03:EC15: 18          ;
CODE_03EC16:    ADC #$08                ; $03:EC16: 69 08       ;
CODE_03EC18:    INY                     ; $03:EC18: C8          ;
CODE_03EC19:    INY                     ; $03:EC19: C8          ;
CODE_03EC1A:    INY                     ; $03:EC1A: C8          ;
CODE_03EC1B:    INY                     ; $03:EC1B: C8          ;
CODE_03EC1C:    DEX                     ; $03:EC1C: CA          ;
CODE_03EC1D:    BNE CODE_03EC12         ; $03:EC1D: D0 F3       ;
CODE_03EC1F:    LDY $02                 ; $03:EC1F: A4 02       ;
CODE_03EC21:    RTS                     ; $03:EC21: 60          ;

CODE_03EC22:    LDX #$06                ; $03:EC22: A2 06       ;
CODE_03EC24:    STA $0900,y             ; $03:EC24: 99 00 09    ;
CODE_03EC27:    CLC                     ; $03:EC27: 18          ;
CODE_03EC28:    ADC #$08                ; $03:EC28: 69 08       ;
CODE_03EC2A:    INY                     ; $03:EC2A: C8          ;
CODE_03EC2B:    INY                     ; $03:EC2B: C8          ;
CODE_03EC2C:    INY                     ; $03:EC2C: C8          ;
CODE_03EC2D:    INY                     ; $03:EC2D: C8          ;
CODE_03EC2E:    DEX                     ; $03:EC2E: CA          ;
CODE_03EC2F:    BNE CODE_03EC24         ; $03:EC2F: D0 F3       ;
CODE_03EC31:    LDY $02                 ; $03:EC31: A4 02       ;
CODE_03EC33:    RTS                     ; $03:EC33: 60          ;

CODE_03EC34:    LDA #$F0                ; $03:EC34: A9 F0       ;
CODE_03EC36:    STA $0815,y             ; $03:EC36: 99 15 08    ;
CODE_03EC39:    STA $0811,y             ; $03:EC39: 99 11 08    ;
CODE_03EC3C:    STA $080D,y             ; $03:EC3C: 99 0D 08    ;
CODE_03EC3F:    STA $0809,y             ; $03:EC3F: 99 09 08    ;
CODE_03EC42:    STA $0805,y             ; $03:EC42: 99 05 08    ;
CODE_03EC45:    STA $0801,y             ; $03:EC45: 99 01 08    ;
CODE_03EC48:    RTS                     ; $03:EC48: 60          ;

CODE_03EC49:    LDA #$F0                ; $03:EC49: A9 F0       ;
CODE_03EC4B:    STA $0915,y             ; $03:EC4B: 99 15 09    ;
CODE_03EC4E:    STA $0911,y             ; $03:EC4E: 99 11 09    ;
CODE_03EC51:    STA $090D,y             ; $03:EC51: 99 0D 09    ;
CODE_03EC54:    STA $0909,y             ; $03:EC54: 99 09 09    ;
CODE_03EC57:    STA $0905,y             ; $03:EC57: 99 05 09    ;
CODE_03EC5A:    STA $0901,y             ; $03:EC5A: 99 01 09    ;
CODE_03EC5D:    RTS                     ; $03:EC5D: 60          ;

CODE_03EC5E:    LDA $0743               ; $03:EC5E: AD 43 07    ;
CODE_03EC61:    BEQ CODE_03EC66         ; $03:EC61: F0 03       ;
CODE_03EC63:    JMP CODE_03ECEA         ; $03:EC63: 4C EA EC    ;

CODE_03EC66:    LDY $0B46,x             ; $03:EC66: BC 46 0B    ;
CODE_03EC69:    STY $02                 ; $03:EC69: 84 02       ;
CODE_03EC6B:    LDA $03AE               ; $03:EC6B: AD AE 03    ;
CODE_03EC6E:    JSR CODE_03EC22         ; $03:EC6E: 20 22 EC    ;
CODE_03EC71:    LDX $9E                 ; $03:EC71: A6 9E       ;
CODE_03EC73:    LDA $0238,x             ; $03:EC73: BD 38 02    ;
CODE_03EC76:    JSR CODE_03EC51         ; $03:EC76: 20 51 EC    ;
CODE_03EC79:    LDY $5C                 ; $03:EC79: A4 5C       ;
CODE_03EC7B:    CPY #$03                ; $03:EC7B: C0 03       ;
CODE_03EC7D:    BEQ CODE_03EC84         ; $03:EC7D: F0 05       ;
CODE_03EC7F:    LDY $06CC               ; $03:EC7F: AC CC 06    ;
CODE_03EC82:    BEQ CODE_03EC86         ; $03:EC82: F0 02       ;
CODE_03EC84:    LDA #$F0                ; $03:EC84: A9 F0       ;
CODE_03EC86:    LDY $0B46,x             ; $03:EC86: BC 46 0B    ;
CODE_03EC89:    STA $0911,y             ; $03:EC89: 99 11 09    ;
CODE_03EC8C:    STA $0915,y             ; $03:EC8C: 99 15 09    ;
CODE_03EC8F:    LDA #$87                ; $03:EC8F: A9 87       ;
CODE_03EC91:    LDX $9E                 ; $03:EC91: A6 9E       ;
CODE_03EC93:    INY                     ; $03:EC93: C8          ;
CODE_03EC94:    JSR CODE_03EC4B         ; $03:EC94: 20 4B EC    ;
CODE_03EC97:    LDA #$2C                ; $03:EC97: A9 2C       ;
CODE_03EC99:    INY                     ; $03:EC99: C8          ;
CODE_03EC9A:    JSR CODE_03EC4B         ; $03:EC9A: 20 4B EC    ;
CODE_03EC9D:    JSR CODE_03FE1E         ; $03:EC9D: 20 1E FE    ;
CODE_03ECA0:    LDY $0B46,x             ; $03:ECA0: BC 46 0B    ;
CODE_03ECA3:    JSR CODE_03FEAC         ; $03:ECA3: 20 AC FE    ;
CODE_03ECA6:    JSR CODE_03FEC5         ; $03:ECA6: 20 C5 FE    ;
CODE_03ECA9:    PHY                     ; $03:ECA9: 5A          ;
CODE_03ECAA:    JSR CODE_03FF3B         ; $03:ECAA: 20 3B FF    ;
CODE_03ECAD:    JSR CODE_03FEC5         ; $03:ECAD: 20 C5 FE    ;
CODE_03ECB0:    JSR CODE_03FF3B         ; $03:ECB0: 20 3B FF    ;
CODE_03ECB3:    JSR CODE_03FEC5         ; $03:ECB3: 20 C5 FE    ;
CODE_03ECB6:    JSR CODE_03FF3B         ; $03:ECB6: 20 3B FF    ;
CODE_03ECB9:    JSR CODE_03FEC5         ; $03:ECB9: 20 C5 FE    ;
CODE_03ECBC:    JSR CODE_03FF3B         ; $03:ECBC: 20 3B FF    ;
CODE_03ECBF:    JSR CODE_03FEC5         ; $03:ECBF: 20 C5 FE    ;
CODE_03ECC2:    JSR CODE_03FF3B         ; $03:ECC2: 20 3B FF    ;
CODE_03ECC5:    JSR CODE_03FEC5         ; $03:ECC5: 20 C5 FE    ;
CODE_03ECC8:    PLY                     ; $03:ECC8: 7A          ;
CODE_03ECC9:    LDA $03D1               ; $03:ECC9: AD D1 03    ;
CODE_03ECCC:    ASL A                   ; $03:ECCC: 0A          ;
CODE_03ECCD:    BCC CODE_03ECE9         ; $03:ECCD: 90 1A       ;
CODE_03ECCF:    LDA $1C,x               ; $03:ECCF: B5 1C       ;
CODE_03ECD1:    CMP #$27                ; $03:ECD1: C9 27       ;
CODE_03ECD3:    BEQ CODE_03ECE9         ; $03:ECD3: F0 14       ;
CODE_03ECD5:    CMP #$26                ; $03:ECD5: C9 26       ;
CODE_03ECD7:    BEQ CODE_03ECE9         ; $03:ECD7: F0 10       ;
CODE_03ECD9:    LDA $BC,x               ; $03:ECD9: B5 BC       ;
CODE_03ECDB:    CMP #$01                ; $03:ECDB: C9 01       ;
CODE_03ECDD:    BNE CODE_03ECE6         ; $03:ECDD: D0 07       ;
CODE_03ECDF:    LDA $03B9               ; $03:ECDF: AD B9 03    ;
CODE_03ECE2:    CMP #$F0                ; $03:ECE2: C9 F0       ;
CODE_03ECE4:    BCC CODE_03ECE9         ; $03:ECE4: 90 03       ;
CODE_03ECE6:    JSR CODE_03EC49         ; $03:ECE6: 20 49 EC    ;
CODE_03ECE9:    RTS                     ; $03:ECE9: 60          ;

CODE_03ECEA:    JSL CODE_05CDEB         ; $03:ECEA: 22 EB CD 05 ;
CODE_03ECEE:    RTS                     ; $03:ECEE: 60          ;

DATA_03ECEF:    db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9              ;
                db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79              ;
					
DATA_03ECFF:    db $2C,$28,$28,$2A                              ;

CODE_03ED03:    LDA $0B4F               ; $03:ED03: AD 4F 0B    ;
CODE_03ED06:    CLC                     ; $03:ED06: 18          ;
CODE_03ED07:    ADC #$08                ; $03:ED07: 69 08       ;
CODE_03ED09:    TAY                     ; $03:ED09: A8          ;
CODE_03ED0A:    LDA $03B9               ; $03:ED0A: AD B9 03    ;
CODE_03ED0D:    CLC                     ; $03:ED0D: 18          ;
CODE_03ED0E:    ADC #$08                ; $03:ED0E: 69 08       ;
CODE_03ED10:    STA $02                 ; $03:ED10: 85 02       ;
CODE_03ED12:    LDA $03AE               ; $03:ED12: AD AE 03    ;
CODE_03ED15:    STA $05                 ; $03:ED15: 85 05       ;
CODE_03ED17:    LDX $020C               ; $03:ED17: AE 0C 02    ;
CODE_03ED1A:    LDA DATA_03ECFF,x       ; $03:ED1A: BD FF EC    ;
CODE_03ED1D:    EOR $0260               ; $03:ED1D: 4D 60 02    ;
CODE_03ED20:    STA $04                 ; $03:ED20: 85 04       ;
CODE_03ED22:    TXA                     ; $03:ED22: 8A          ;
CODE_03ED23:    PHA                     ; $03:ED23: 48          ;
CODE_03ED24:    ASL A                   ; $03:ED24: 0A          ;
CODE_03ED25:    ASL A                   ; $03:ED25: 0A          ;
CODE_03ED26:    TAX                     ; $03:ED26: AA          ;
CODE_03ED27:    LDA #$01                ; $03:ED27: A9 01       ;
CODE_03ED29:    STA $07                 ; $03:ED29: 85 07       ;
CODE_03ED2B:    STA $03                 ; $03:ED2B: 85 03       ;
CODE_03ED2D:    LDA DATA_03ECEF,x       ; $03:ED2D: BD EF EC    ;
CODE_03ED30:    STA $00                 ; $03:ED30: 85 00       ;
CODE_03ED32:    LDA DATA_03ECEF+1,x     ; $03:ED32: BD F0 EC    ;
CODE_03ED35:    JSR CODE_03F2FF         ; $03:ED35: 20 FF F2    ;
CODE_03ED38:    DEC $07                 ; $03:ED38: C6 07       ;
CODE_03ED3A:    BPL CODE_03ED2D         ; $03:ED3A: 10 F1       ;
CODE_03ED3C:    LDA $0B4F               ; $03:ED3C: AD 4F 0B    ;
CODE_03ED3F:    CLC                     ; $03:ED3F: 18          ;
CODE_03ED40:    ADC #$08                ; $03:ED40: 69 08       ;
CODE_03ED42:    TAY                     ; $03:ED42: A8          ;
CODE_03ED43:    PLA                     ; $03:ED43: 68          ;
CODE_03ED44:    BEQ CODE_03ED82         ; $03:ED44: F0 3C       ;
CODE_03ED46:    CMP #$03                ; $03:ED46: C9 03       ;
CODE_03ED48:    BEQ CODE_03ED82         ; $03:ED48: F0 38       ;
CODE_03ED4A:    STA $00                 ; $03:ED4A: 85 00       ;
CODE_03ED4C:    LDA $09                 ; $03:ED4C: A5 09       ;
CODE_03ED4E:    AND #$06                ; $03:ED4E: 29 06       ;
CODE_03ED50:    CMP #$06                ; $03:ED50: C9 06       ;
CODE_03ED52:    BNE CODE_03ED56         ; $03:ED52: D0 02       ;
CODE_03ED54:    LDA #$0E                ; $03:ED54: A9 0E       ;
CODE_03ED56:    ORA $0260               ; $03:ED56: 0D 60 02    ;
CODE_03ED59:    EOR #$28                ; $03:ED59: 49 28       ;
CODE_03ED5B:    STA $0903,y             ; $03:ED5B: 99 03 09    ;
CODE_03ED5E:    STA $0907,y             ; $03:ED5E: 99 07 09    ;
CODE_03ED61:    STA $090B,y             ; $03:ED61: 99 0B 09    ;
CODE_03ED64:    STA $090F,y             ; $03:ED64: 99 0F 09    ;
CODE_03ED67:    LDX $00                 ; $03:ED67: A6 00       ;
CODE_03ED69:    DEX                     ; $03:ED69: CA          ;
CODE_03ED6A:    BEQ CODE_03ED72         ; $03:ED6A: F0 06       ;
CODE_03ED6C:    STA $090B,y             ; $03:ED6C: 99 0B 09    ;
CODE_03ED6F:    STA $090F,y             ; $03:ED6F: 99 0F 09    ;
CODE_03ED72:    LDA $0907,y             ; $03:ED72: B9 07 09    ;
CODE_03ED75:    ORA #$40                ; $03:ED75: 09 40       ;
CODE_03ED77:    STA $0907,y             ; $03:ED77: 99 07 09    ;
CODE_03ED7A:    LDA $090F,y             ; $03:ED7A: B9 0F 09    ;
CODE_03ED7D:    ORA #$40                ; $03:ED7D: 09 40       ;
CODE_03ED7F:    STA $090F,y             ; $03:ED7F: 99 0F 09    ;
CODE_03ED82:    LDA $0B4F               ; $03:ED82: AD 4F 0B    ;
CODE_03ED85:    CLC                     ; $03:ED85: 18          ;
CODE_03ED86:    ADC #$08                ; $03:ED86: 69 08       ;
CODE_03ED88:    TAY                     ; $03:ED88: A8          ;
CODE_03ED89:    JMP CODE_03F2AF         ; $03:ED89: 4C AF F2    ;

DATA_03ED8C:    db $FC,$FC,$AA,$AB,$AC,$AD,$FC,$FC              ;
                db $AE,$AF,$B0,$B1,$FC,$A5,$A6,$A7              ;
                db $A8,$A9,$FC,$A0,$A1,$A2,$A3,$A4              ;
                db $69,$A5,$6A,$A7,$A8,$A9,$6B,$A0              ;
                db $6C,$A2,$A3,$A4,$FC,$FC,$96,$97              ;
                db $98,$99,$FC,$FC,$9A,$9B,$9C,$9D              ;
                db $FC,$FC,$8F,$8E,$8E,$8F,$FC,$FC              ;
                db $95,$94,$94,$95,$FC,$FC,$DC,$DC              ;
                db $DF,$DF,$DC,$DC,$DD,$DD,$DE,$DE              ;
                db $FC,$FC,$B2,$B3,$B4,$B5,$FC,$FC              ;
                db $B6,$B3,$B7,$B5,$FC,$FC,$C6,$C7              ;
                db $C8,$C9,$FC,$FC,$6E,$6E,$6F,$6F              ;
                db $FC,$FC,$6D,$6D,$6F,$6F,$FC,$FC              ;
                db $6F,$6F,$6E,$6E,$FC,$FC,$6F,$6F              ;
                db $6D,$6D,$FC,$FC,$F4,$F4,$F5,$F5              ;
                db $FC,$FC,$F4,$F4,$F5,$F5,$FC,$FC              ;
                db $F5,$F5,$F4,$F4,$FC,$FC,$F5,$F5              ;
                db $F4,$F4,$FC,$FC,$FC,$FC,$EF,$EF              ;
                db $B9,$B8,$BB,$BA,$BC,$BC,$FC,$FC              ;
                db $BD,$BD,$BC,$BC,$7A,$7B,$DA,$DB              ;
                db $D8,$9E,$CD,$CD,$CE,$CE,$CF,$CF              ;
                db $7D,$7C,$D1,$8C,$D3,$D2,$7D,$7C              ;
                db $89,$88,$8B,$8A,$D5,$D4,$E3,$E2              ;
                db $D3,$D2,$D5,$D4,$E3,$E2,$8B,$8A              ;
                db $E5,$E5,$E6,$E6,$EB,$EB,$EC,$EC              ;
                db $ED,$ED,$EB,$EB,$FC,$FC,$D0,$D0              ;
                db $D7,$D7,$BF,$BE,$C1,$C0,$C2,$FC              ;
                db $C4,$C3,$C6,$C5,$C8,$C7,$BF,$BE              ;
                db $CA,$C9,$C2,$FC,$C4,$C3,$C6,$C5              ;
                db $CC,$CB,$FC,$FC,$64,$65,$74,$75              ;
                db $F2,$F2,$F3,$F3,$F2,$F2,$F1,$F1              ;
                db $F1,$F1,$FC,$FC,$F0,$F0,$FC,$FC              ;
                db $FC,$FC                                      ;

DATA_03EE8E:    db $0C,$0C,$00,$0C,$0C,$A8,$54,$3C              ;
                db $EA,$18,$48,$48,$CC,$C0,$18,$18              ;
                db $18,$90,$24,$FF,$48,$9C,$D2,$D8              ;
                db $F0,$F6,$FC                                  ;

DATA_03EEA9:    db $0A,$0C,$0A,$0C,$0A,$0A,$02,$08              ;
                db $0A,$08,$0A,$0C,$08,$2A,$0A,$0C              ;
                db $0A,$0A,$0C,$FF,$0C,$0C,$00,$00              ;
                db $2C,$2C,$2C                                  ;

DATA_03EEC4:    db $08,$18                                      ;

DATA_03EEC6:    db $18,$19,$1A,$19,$18                          ;

DATA_03EECB:    db $00,$00,$00,$00,$00,$00,$06,$06              ;
                db $06,$06,$06,$06,$0C,$0C,$0C,$0C              ;
                db $0C,$0C                                      ;

DATA_03EEDD:    db $FC,$FC,$D0,$D0,$D7,$D7,$FC,$FC              ;
                db $7E,$7E,$7F,$7F,$FC,$FC,$E0,$E0              ;
                db $E1,$E1                                      ;

CODE_03EEEF:    LDA $1C,x               ; $03:EEEF: B5 1C       ;
CODE_03EEF1:    CMP #$0C                ; $03:EEF1: C9 0C       ;
CODE_03EEF3:    BNE CODE_03EEFA         ; $03:EEF3: D0 05       ;
CODE_03EEF5:    JSL CODE_05EA38         ; $03:EEF5: 22 38 EA 05 ;
CODE_03EEF9:    RTS                     ; $03:EEF9: 60          ;

CODE_03EEFA:    CMP #$08                ; $03:EEFA: C9 08       ;
CODE_03EEFC:    BNE CODE_03EF0C         ; $03:EEFC: D0 0E       ;
CODE_03EEFE:    LDA $BC,x               ; $03:EEFE: B5 BC       ;
CODE_03EF00:    CMP #$02                ; $03:EF00: C9 02       ;
CODE_03EF02:    BNE CODE_03EF07         ; $03:EF02: D0 03       ;
CODE_03EF04:    JSR CODE_03CDE2         ; $03:EF04: 20 E2 CD    ; Erase sprite
CODE_03EF07:    JSL CODE_05CB42         ; $03:EF07: 22 42 CB 05 ;
CODE_03EF0B:    RTS                     ; $03:EF0B: 60          ;

CODE_03EF0C:    CMP #$33                ; $03:EF0C: C9 33       ;
CODE_03EF0E:    BNE CODE_03EF1E         ; $03:EF0E: D0 0E       ;
CODE_03EF10:    LDA $BC,x               ; $03:EF10: B5 BC       ;
CODE_03EF12:    CMP #$02                ; $03:EF12: C9 02       ;
CODE_03EF14:    BNE CODE_03EF19         ; $03:EF14: D0 03       ;
CODE_03EF16:    JSR CODE_03CDE2         ; $03:EF16: 20 E2 CD    ; Erase sprite
CODE_03EF19:    JSL CODE_05CB42         ; $03:EF19: 22 42 CB 05 ;
CODE_03EF1D:    RTS                     ; $03:EF1D: 60          ;

CODE_03EF1E:    CMP #$2D                ; $03:EF1E: C9 2D       ;
CODE_03EF20:    BNE CODE_03EF27         ; $03:EF20: D0 05       ;
CODE_03EF22:    JSL CODE_05D055         ; $03:EF22: 22 55 D0 05 ;
CODE_03EF26:    RTS                     ; $03:EF26: 60          ;

CODE_03EF27:    CMP #$35                ; $03:EF27: C9 35       ;
CODE_03EF29:    BNE CODE_03EF3C         ; $03:EF29: D0 11       ;
CODE_03EF2B:    LDA $075F               ; $03:EF2B: AD 5F 07    ;
CODE_03EF2E:    CMP #$07                ; $03:EF2E: C9 07       ;
CODE_03EF30:    BEQ CODE_03EF37         ; $03:EF30: F0 05       ;
CODE_03EF32:    JSL CODE_04ED7A         ; $03:EF32: 22 7A ED 04 ;
CODE_03EF36:    RTS                     ; $03:EF36: 60          ;

CODE_03EF37:    JSL CODE_04DCBB         ; $03:EF37: 22 BB DC 04 ;
CODE_03EF3B:    RTS                     ; $03:EF3B: 60          ;

CODE_03EF3C:    LDA $0238,x             ; $03:EF3C: BD 38 02    ;
CODE_03EF3F:    STA $02                 ; $03:EF3F: 85 02       ;
CODE_03EF41:    LDA $03AE               ; $03:EF41: AD AE 03    ;
CODE_03EF44:    STA $05                 ; $03:EF44: 85 05       ;
CODE_03EF46:    LDY $0B46,x             ; $03:EF46: BC 46 0B    ;
CODE_03EF49:    STY $EB                 ; $03:EF49: 84 EB       ;
CODE_03EF4B:    LDA #$00                ; $03:EF4B: A9 00       ;
CODE_03EF4D:    STA $F0                 ; $03:EF4D: 85 F0       ;
CODE_03EF4F:    LDA $47,x               ; $03:EF4F: B5 47       ;
CODE_03EF51:    STA $03                 ; $03:EF51: 85 03       ;
CODE_03EF53:    LDA $0257,x             ; $03:EF53: BD 57 02    ;
CODE_03EF56:    STA $04                 ; $03:EF56: 85 04       ;
CODE_03EF58:    LDA $1C,x               ; $03:EF58: B5 1C       ;
CODE_03EF5A:    CMP #$0D                ; $03:EF5A: C9 0D       ;
CODE_03EF5C:    BNE CODE_03EF68         ; $03:EF5C: D0 0A       ;
CODE_03EF5E:    LDY $5E,x               ; $03:EF5E: B4 5E       ;
CODE_03EF60:    BMI CODE_03EF68         ; $03:EF60: 30 06       ;
CODE_03EF62:    LDY $0792,x             ; $03:EF62: BC 92 07    ;
CODE_03EF65:    BEQ CODE_03EF68         ; $03:EF65: F0 01       ;
CODE_03EF67:    RTS                     ; $03:EF67: 60          ;

CODE_03EF68:    LDA $29,x               ; $03:EF68: B5 29       ;
CODE_03EF6A:    STA $ED                 ; $03:EF6A: 85 ED       ;
CODE_03EF6C:    AND #$1F                ; $03:EF6C: 29 1F       ;
CODE_03EF6E:    TAY                     ; $03:EF6E: A8          ;
CODE_03EF6F:    LDA $1C,x               ; $03:EF6F: B5 1C       ;
CODE_03EF71:    CMP #$35                ; $03:EF71: C9 35       ;
CODE_03EF73:    BNE CODE_03EF7D         ; $03:EF73: D0 08       ;
CODE_03EF75:    LDY #$00                ; $03:EF75: A0 00       ;
CODE_03EF77:    LDA #$01                ; $03:EF77: A9 01       ;
CODE_03EF79:    STA $03                 ; $03:EF79: 85 03       ;
CODE_03EF7B:    LDA #$15                ; $03:EF7B: A9 15       ;
CODE_03EF7D:    CMP #$33                ; $03:EF7D: C9 33       ;
CODE_03EF7F:    BNE CODE_03EF94         ; $03:EF7F: D0 13       ;
CODE_03EF81:    DEC $02                 ; $03:EF81: C6 02       ;
CODE_03EF83:    LDA #$20                ; $03:EF83: A9 20       ;
CODE_03EF85:    LDY $0792,x             ; $03:EF85: BC 92 07    ;
CODE_03EF88:    BEQ CODE_03EF8C         ; $03:EF88: F0 02       ;
CODE_03EF8A:    EOR #$30                ; $03:EF8A: 49 30       ;
CODE_03EF8C:    STA $04                 ; $03:EF8C: 85 04       ;
CODE_03EF8E:    LDY #$00                ; $03:EF8E: A0 00       ;
CODE_03EF90:    STY $ED                 ; $03:EF90: 84 ED       ;
CODE_03EF92:    LDA #$08                ; $03:EF92: A9 08       ;
CODE_03EF94:    CMP #$32                ; $03:EF94: C9 32       ;
CODE_03EF96:    BNE CODE_03EFA0         ; $03:EF96: D0 08       ;
CODE_03EF98:    LDY #$03                ; $03:EF98: A0 03       ;
CODE_03EF9A:    LDX $070E               ; $03:EF9A: AE 0E 07    ;
CODE_03EF9D:    LDA DATA_03EEC6,x       ; $03:EF9D: BD C6 EE    ;
CODE_03EFA0:    STA $EF                 ; $03:EFA0: 85 EF       ;
CODE_03EFA2:    STY $EC                 ; $03:EFA2: 84 EC       ;
CODE_03EFA4:    LDX $9E                 ; $03:EFA4: A6 9E       ;
CODE_03EFA6:    CMP #$0C                ; $03:EFA6: C9 0C       ;
CODE_03EFA8:    BNE CODE_03EFB0         ; $03:EFA8: D0 06       ;
CODE_03EFAA:    LDA $A1,x               ; $03:EFAA: B5 A1       ;
CODE_03EFAC:    BMI CODE_03EFB0         ; $03:EFAC: 30 02       ;
CODE_03EFAE:    INC $F0                 ; $03:EFAE: E6 F0       ;
CODE_03EFB0:    LDA $036A               ; $03:EFB0: AD 6A 03    ;
CODE_03EFB3:    BEQ CODE_03EFBE         ; $03:EFB3: F0 09       ;
CODE_03EFB5:    LDY #$16                ; $03:EFB5: A0 16       ;
CODE_03EFB7:    CMP #$01                ; $03:EFB7: C9 01       ;
CODE_03EFB9:    BEQ CODE_03EFBC         ; $03:EFB9: F0 01       ;
CODE_03EFBB:    INY                     ; $03:EFBB: C8          ;
CODE_03EFBC:    STY $EF                 ; $03:EFBC: 84 EF       ;
CODE_03EFBE:    LDY $EF                 ; $03:EFBE: A4 EF       ;
CODE_03EFC0:    CPY #$06                ; $03:EFC0: C0 06       ;
CODE_03EFC2:    BNE CODE_03EFE1         ; $03:EFC2: D0 1D       ;
CODE_03EFC4:    LDA $29,x               ; $03:EFC4: B5 29       ;
CODE_03EFC6:    CMP #$02                ; $03:EFC6: C9 02       ;
CODE_03EFC8:    BCC CODE_03EFCE         ; $03:EFC8: 90 04       ;
CODE_03EFCA:    LDX #$04                ; $03:EFCA: A2 04       ;
CODE_03EFCC:    STX $EC                 ; $03:EFCC: 86 EC       ;
CODE_03EFCE:    AND #$20                ; $03:EFCE: 29 20       ;
CODE_03EFD0:    ORA $0747               ; $03:EFD0: 0D 47 07    ;
CODE_03EFD3:    BNE CODE_03EFE1         ; $03:EFD3: D0 0C       ;
CODE_03EFD5:    LDA $09                 ; $03:EFD5: A5 09       ;
CODE_03EFD7:    AND #$08                ; $03:EFD7: 29 08       ;
CODE_03EFD9:    BNE CODE_03EFE1         ; $03:EFD9: D0 06       ;
CODE_03EFDB:    LDA $03                 ; $03:EFDB: A5 03       ;
CODE_03EFDD:    EOR #$03                ; $03:EFDD: 49 03       ;
CODE_03EFDF:    STA $03                 ; $03:EFDF: 85 03       ;
CODE_03EFE1:    LDA DATA_03EEA9,y       ; $03:EFE1: B9 A9 EE    ;
CODE_03EFE4:    CPY #$14                ; $03:EFE4: C0 14       ;
CODE_03EFE6:    BNE CODE_03EFEC         ; $03:EFE6: D0 04       ;
CODE_03EFE8:    LDA #$3C                ; $03:EFE8: A9 3C       ;
CODE_03EFEA:    BRA CODE_03EFEE         ; $03:EFEA: 80 02       ;

CODE_03EFEC:    EOR $04                 ; $03:EFEC: 45 04       ;
CODE_03EFEE:    STA $04                 ; $03:EFEE: 85 04       ;
CODE_03EFF0:    CPY #$15                ; $03:EFF0: C0 15       ;
CODE_03EFF2:    BNE CODE_03F003         ; $03:EFF2: D0 0F       ;
CODE_03EFF4:    LDA $075F               ; $03:EFF4: AD 5F 07    ;
CODE_03EFF7:    CMP #$07                ; $03:EFF7: C9 07       ;
CODE_03EFF9:    BNE CODE_03F003         ; $03:EFF9: D0 08       ;
CODE_03EFFB:    LDA $04                 ; $03:EFFB: A5 04       ;
CODE_03EFFD:    AND #$F0                ; $03:EFFD: 29 F0       ;
CODE_03EFFF:    ORA #$04                ; $03:EFFF: 09 04       ;
CODE_03F001:    STA $04                 ; $03:F001: 85 04       ;
CODE_03F003:    LDA $0E85               ; $03:F003: AD 85 0E    ;
CODE_03F006:    BEQ CODE_03F011         ; $03:F006: F0 09       ;
CODE_03F008:    LDA DATA_03EE8E,y       ; $03:F008: B9 8E EE    ;
CODE_03F00B:    CLC                     ; $03:F00B: 18          ;
CODE_03F00C:    ADC #$06                ; $03:F00C: 69 06       ;
CODE_03F00E:    TAX                     ; $03:F00E: AA          ;
CODE_03F00F:    BRA CODE_03F015         ; $03:F00F: 80 04       ;

CODE_03F011:    LDA DATA_03EE8E,y       ; $03:F011: B9 8E EE    ;
CODE_03F014:    TAX                     ; $03:F014: AA          ;
CODE_03F015:    LDY $EC                 ; $03:F015: A4 EC       ;
CODE_03F017:    LDA $036A               ; $03:F017: AD 6A 03    ;
CODE_03F01A:    BEQ CODE_03F04A         ; $03:F01A: F0 2E       ;
CODE_03F01C:    CMP #$01                ; $03:F01C: C9 01       ;
CODE_03F01E:    BNE CODE_03F032         ; $03:F01E: D0 12       ;
CODE_03F020:    LDA $0363               ; $03:F020: AD 63 03    ;
CODE_03F023:    BPL CODE_03F027         ; $03:F023: 10 02       ;
CODE_03F025:    LDX #$DE                ; $03:F025: A2 DE       ;
CODE_03F027:    LDA $ED                 ; $03:F027: A5 ED       ;
CODE_03F029:    AND #$20                ; $03:F029: 29 20       ;
CODE_03F02B:    BEQ CODE_03F02F         ; $03:F02B: F0 02       ;
CODE_03F02D:    STX $F0                 ; $03:F02D: 86 F0       ;
CODE_03F02F:    JMP CODE_03F12D         ; $03:F02F: 4C 2D F1    ;

CODE_03F032:    LDA $0363               ; $03:F032: AD 63 03    ;
CODE_03F035:    AND #$01                ; $03:F035: 29 01       ;
CODE_03F037:    BEQ CODE_03F03B         ; $03:F037: F0 02       ;
CODE_03F039:    LDX #$E4                ; $03:F039: A2 E4       ;
CODE_03F03B:    LDA $ED                 ; $03:F03B: A5 ED       ;
CODE_03F03D:    AND #$20                ; $03:F03D: 29 20       ;
CODE_03F03F:    BEQ CODE_03F02F         ; $03:F03F: F0 EE       ;
CODE_03F041:    LDA $02                 ; $03:F041: A5 02       ;
CODE_03F043:    SEC                     ; $03:F043: 38          ;
CODE_03F044:    SBC #$10                ; $03:F044: E9 10       ;
CODE_03F046:    STA $02                 ; $03:F046: 85 02       ;
CODE_03F048:    BRA CODE_03F02D         ; $03:F048: 80 E3       ;

CODE_03F04A:    CPX #$24                ; $03:F04A: E0 24       ;
CODE_03F04C:    BNE CODE_03F05E         ; $03:F04C: D0 10       ;
CODE_03F04E:    CPY #$05                ; $03:F04E: C0 05       ;
CODE_03F050:    BNE CODE_03F05C         ; $03:F050: D0 0A       ;
CODE_03F052:    LDX #$30                ; $03:F052: A2 30       ;
CODE_03F054:    LDA #$02                ; $03:F054: A9 02       ;
CODE_03F056:    STA $03                 ; $03:F056: 85 03       ;
CODE_03F058:    LDA #$05                ; $03:F058: A9 05       ;
CODE_03F05A:    STA $EC                 ; $03:F05A: 85 EC       ;
CODE_03F05C:    BRA CODE_03F0AE         ; $03:F05C: 80 50       ;

CODE_03F05E:    CPX #$90                ; $03:F05E: E0 90       ;
CODE_03F060:    BNE CODE_03F074         ; $03:F060: D0 12       ;
CODE_03F062:    LDA $ED                 ; $03:F062: A5 ED       ;
CODE_03F064:    AND #$20                ; $03:F064: 29 20       ;
CODE_03F066:    BNE CODE_03F071         ; $03:F066: D0 09       ;
CODE_03F068:    LDA $079B               ; $03:F068: AD 9B 07    ;
CODE_03F06B:    CMP #$10                ; $03:F06B: C9 10       ;
CODE_03F06D:    BCS CODE_03F071         ; $03:F06D: B0 02       ;
CODE_03F06F:    LDX #$96                ; $03:F06F: A2 96       ;
CODE_03F071:    JMP CODE_03F11A         ; $03:F071: 4C 1A F1    ;

CODE_03F074:    LDA $EF                 ; $03:F074: A5 EF       ;
CODE_03F076:    CMP #$04                ; $03:F076: C9 04       ;
CODE_03F078:    BCS CODE_03F08A         ; $03:F078: B0 10       ;
CODE_03F07A:    CPY #$02                ; $03:F07A: C0 02       ;
CODE_03F07C:    BCC CODE_03F08A         ; $03:F07C: 90 0C       ;
CODE_03F07E:    LDX #$5A                ; $03:F07E: A2 5A       ;
CODE_03F080:    LDY $EF                 ; $03:F080: A4 EF       ;
CODE_03F082:    CPY #$02                ; $03:F082: C0 02       ;
CODE_03F084:    BNE CODE_03F08A         ; $03:F084: D0 04       ;
CODE_03F086:    LDX #$7E                ; $03:F086: A2 7E       ;
CODE_03F088:    INC $02                 ; $03:F088: E6 02       ;
CODE_03F08A:    LDA $EC                 ; $03:F08A: A5 EC       ;
CODE_03F08C:    CMP #$04                ; $03:F08C: C9 04       ;
CODE_03F08E:    BNE CODE_03F0AE         ; $03:F08E: D0 1E       ;
CODE_03F090:    LDX #$72                ; $03:F090: A2 72       ;
CODE_03F092:    INC $02                 ; $03:F092: E6 02       ;
CODE_03F094:    LDY $EF                 ; $03:F094: A4 EF       ;
CODE_03F096:    CPY #$02                ; $03:F096: C0 02       ;
CODE_03F098:    BEQ CODE_03F09E         ; $03:F098: F0 04       ;
CODE_03F09A:    LDX #$66                ; $03:F09A: A2 66       ;
CODE_03F09C:    INC $02                 ; $03:F09C: E6 02       ;
CODE_03F09E:    CPY #$06                ; $03:F09E: C0 06       ;
CODE_03F0A0:    BNE CODE_03F0AE         ; $03:F0A0: D0 0C       ;
CODE_03F0A2:    LDX #$54                ; $03:F0A2: A2 54       ;
CODE_03F0A4:    LDA $ED                 ; $03:F0A4: A5 ED       ;
CODE_03F0A6:    AND #$20                ; $03:F0A6: 29 20       ;
CODE_03F0A8:    BNE CODE_03F0AE         ; $03:F0A8: D0 04       ;
CODE_03F0AA:    LDX #$8A                ; $03:F0AA: A2 8A       ;
CODE_03F0AC:    DEC $02                 ; $03:F0AC: C6 02       ;
CODE_03F0AE:    LDY $9E                 ; $03:F0AE: A4 9E       ;
CODE_03F0B0:    LDA $EF                 ; $03:F0B0: A5 EF       ;
CODE_03F0B2:    CMP #$05                ; $03:F0B2: C9 05       ;
CODE_03F0B4:    BNE CODE_03F0C2         ; $03:F0B4: D0 0C       ;
CODE_03F0B6:    LDA $ED                 ; $03:F0B6: A5 ED       ;
CODE_03F0B8:    BEQ CODE_03F0DD         ; $03:F0B8: F0 23       ;
CODE_03F0BA:    AND #$08                ; $03:F0BA: 29 08       ;
CODE_03F0BC:    BEQ CODE_03F11A         ; $03:F0BC: F0 5C       ;
CODE_03F0BE:    LDX #$B4                ; $03:F0BE: A2 B4       ;
CODE_03F0C0:    BNE CODE_03F0DD         ; $03:F0C0: D0 1B       ;
CODE_03F0C2:    CPX #$48                ; $03:F0C2: E0 48       ;
CODE_03F0C4:    BEQ CODE_03F0DD         ; $03:F0C4: F0 17       ;
CODE_03F0C6:    LDA $07A2,y             ; $03:F0C6: B9 A2 07    ;
CODE_03F0C9:    CMP #$05                ; $03:F0C9: C9 05       ;
CODE_03F0CB:    BCS CODE_03F11A         ; $03:F0CB: B0 4D       ;
CODE_03F0CD:    CPX #$3C                ; $03:F0CD: E0 3C       ;
CODE_03F0CF:    BNE CODE_03F0DD         ; $03:F0CF: D0 0C       ;
CODE_03F0D1:    CMP #$01                ; $03:F0D1: C9 01       ;
CODE_03F0D3:    BEQ CODE_03F11A         ; $03:F0D3: F0 45       ;
CODE_03F0D5:    INC $02                 ; $03:F0D5: E6 02       ;
CODE_03F0D7:    INC $02                 ; $03:F0D7: E6 02       ;
CODE_03F0D9:    INC $02                 ; $03:F0D9: E6 02       ;
CODE_03F0DB:    BRA CODE_03F10C         ; $03:F0DB: 80 2F       ;

CODE_03F0DD:    LDA $EF                 ; $03:F0DD: A5 EF       ;
CODE_03F0DF:    CMP #$06                ; $03:F0DF: C9 06       ;
CODE_03F0E1:    BEQ CODE_03F11A         ; $03:F0E1: F0 37       ;
CODE_03F0E3:    CMP #$08                ; $03:F0E3: C9 08       ;
CODE_03F0E5:    BEQ CODE_03F11A         ; $03:F0E5: F0 33       ;
CODE_03F0E7:    CMP #$0C                ; $03:F0E7: C9 0C       ;
CODE_03F0E9:    BEQ CODE_03F11A         ; $03:F0E9: F0 2F       ;
CODE_03F0EB:    CMP #$18                ; $03:F0EB: C9 18       ;
CODE_03F0ED:    BCS CODE_03F11A         ; $03:F0ED: B0 2B       ;
CODE_03F0EF:    LDY #$00                ; $03:F0EF: A0 00       ;
CODE_03F0F1:    CMP #$15                ; $03:F0F1: C9 15       ;
CODE_03F0F3:    BNE CODE_03F105         ; $03:F0F3: D0 10       ;
CODE_03F0F5:    INY                     ; $03:F0F5: C8          ;
CODE_03F0F6:    LDA $075F               ; $03:F0F6: AD 5F 07    ;
CODE_03F0F9:    CMP #$07                ; $03:F0F9: C9 07       ;
CODE_03F0FB:    BCS CODE_03F11A         ; $03:F0FB: B0 1D       ;
CODE_03F0FD:    LDX #$A2                ; $03:F0FD: A2 A2       ;
CODE_03F0FF:    LDA #$03                ; $03:F0FF: A9 03       ;
CODE_03F101:    STA $EC                 ; $03:F101: 85 EC       ;
CODE_03F103:    BNE CODE_03F11A         ; $03:F103: D0 15       ;
CODE_03F105:    LDA $09                 ; $03:F105: A5 09       ;
CODE_03F107:    AND DATA_03EEC4,y       ; $03:F107: 39 C4 EE    ;
CODE_03F10A:    BNE CODE_03F11A         ; $03:F10A: D0 0E       ;
CODE_03F10C:    LDA $ED                 ; $03:F10C: A5 ED       ;
CODE_03F10E:    AND #$A0                ; $03:F10E: 29 A0       ;
CODE_03F110:    ORA $0747               ; $03:F110: 0D 47 07    ;
CODE_03F113:    BNE CODE_03F11A         ; $03:F113: D0 05       ;
CODE_03F115:    TXA                     ; $03:F115: 8A          ;
CODE_03F116:    CLC                     ; $03:F116: 18          ;
CODE_03F117:    ADC #$06                ; $03:F117: 69 06       ;
CODE_03F119:    TAX                     ; $03:F119: AA          ;
CODE_03F11A:    LDA $ED                 ; $03:F11A: A5 ED       ;
CODE_03F11C:    AND #$20                ; $03:F11C: 29 20       ;
CODE_03F11E:    BEQ CODE_03F12D         ; $03:F11E: F0 0D       ;
CODE_03F120:    LDA $EF                 ; $03:F120: A5 EF       ;
CODE_03F122:    CMP #$04                ; $03:F122: C9 04       ;
CODE_03F124:    BCC CODE_03F12D         ; $03:F124: 90 07       ;
CODE_03F126:    LDY #$01                ; $03:F126: A0 01       ;
CODE_03F128:    STY $F0                 ; $03:F128: 84 F0       ;
CODE_03F12A:    DEY                     ; $03:F12A: 88          ;
CODE_03F12B:    STY $EC                 ; $03:F12B: 84 EC       ;
CODE_03F12D:    LDY $EB                 ; $03:F12D: A4 EB       ;
CODE_03F12F:    JSL CODE_05E879         ; $03:F12F: 22 79 E8 05 ;
CODE_03F133:    BCS CODE_03F142         ; $03:F133: B0 0D       ;
CODE_03F135:    JSR CODE_03F2F7         ; $03:F135: 20 F7 F2    ;
CODE_03F138:    JSR CODE_03F2F7         ; $03:F138: 20 F7 F2    ;
CODE_03F13B:    JSR CODE_03F2F7         ; $03:F13B: 20 F7 F2    ;
CODE_03F13E:    JSL CODE_05E95A         ; $03:F13E: 22 5A E9 05 ;
CODE_03F142:    LDX $9E                 ; $03:F142: A6 9E       ;
CODE_03F144:    LDY $0B46,x             ; $03:F144: BC 46 0B    ;
CODE_03F147:    LDA $1C,x               ; $03:F147: B5 1C       ;
CODE_03F149:    CMP #$0C                ; $03:F149: C9 0C       ;
CODE_03F14B:    BNE CODE_03F188         ; $03:F14B: D0 3B       ;
CODE_03F14D:    INC $0E1B,x             ; $03:F14D: FE 1B 0E    ;
CODE_03F150:    LDA $0E1B,x             ; $03:F150: BD 1B 0E    ;
CODE_03F153:    CMP #$12                ; $03:F153: C9 12       ;
CODE_03F155:    BCC CODE_03F15D         ; $03:F155: 90 06       ;
CODE_03F157:    STZ $0E1B,x             ; $03:F157: 9E 1B 0E    ;
CODE_03F15A:    LDA $0E1B,x             ; $03:F15A: BD 1B 0E    ;
CODE_03F15D:    TAX                     ; $03:F15D: AA          ;
CODE_03F15E:    LDA DATA_03EECB,x       ; $03:F15E: BD CB EE    ;
CODE_03F161:    TAX                     ; $03:F161: AA          ;
CODE_03F162:    LDA DATA_03EEDD,x       ; $03:F162: BD DD EE    ;
CODE_03F165:    STA $0902,y             ; $03:F165: 99 02 09    ;
CODE_03F168:    LDA DATA_03EEDD+1,x     ; $03:F168: BD DE EE    ;
CODE_03F16B:    STA $0906,y             ; $03:F16B: 99 06 09    ;
CODE_03F16E:    LDA DATA_03EEDD+2,x     ; $03:F16E: BD DF EE    ;
CODE_03F171:    STA $090A,y             ; $03:F171: 99 0A 09    ;
CODE_03F174:    LDA DATA_03EEDD+3,x     ; $03:F174: BD E0 EE    ;
CODE_03F177:    STA $090E,y             ; $03:F177: 99 0E 09    ;
CODE_03F17A:    LDA DATA_03EEDD+4,x     ; $03:F17A: BD E1 EE    ;
CODE_03F17D:    STA $0912,y             ; $03:F17D: 99 12 09    ;
CODE_03F180:    LDA DATA_03EEDD+5,x     ; $03:F180: BD E2 EE    ;
CODE_03F183:    STA $0916,y             ; $03:F183: 99 16 09    ;
CODE_03F186:    LDX $9E                 ; $03:F186: A6 9E       ;
CODE_03F188:    LDA $EF                 ; $03:F188: A5 EF       ;
CODE_03F18A:    CMP #$08                ; $03:F18A: C9 08       ;
CODE_03F18C:    BNE CODE_03F191         ; $03:F18C: D0 03       ;
CODE_03F18E:    JMP CODE_03F295         ; $03:F18E: 4C 95 F2    ;

CODE_03F191:    LDA $F0                 ; $03:F191: A5 F0       ;
CODE_03F193:    BEQ CODE_03F1D2         ; $03:F193: F0 3D       ;
CODE_03F195:    LDA $0903,y             ; $03:F195: B9 03 09    ;
CODE_03F198:    ORA #$80                ; $03:F198: 09 80       ;
CODE_03F19A:    INY                     ; $03:F19A: C8          ;
CODE_03F19B:    INY                     ; $03:F19B: C8          ;
CODE_03F19C:    JSR CODE_03EC4B         ; $03:F19C: 20 4B EC    ;
CODE_03F19F:    DEY                     ; $03:F19F: 88          ;
CODE_03F1A0:    DEY                     ; $03:F1A0: 88          ;
CODE_03F1A1:    TYA                     ; $03:F1A1: 98          ;
CODE_03F1A2:    TAX                     ; $03:F1A2: AA          ;
CODE_03F1A3:    LDA $EF                 ; $03:F1A3: A5 EF       ;
CODE_03F1A5:    CMP #$05                ; $03:F1A5: C9 05       ;
CODE_03F1A7:    BEQ CODE_03F1B6         ; $03:F1A7: F0 0D       ;
CODE_03F1A9:    CMP #$11                ; $03:F1A9: C9 11       ;
CODE_03F1AB:    BEQ CODE_03F1B6         ; $03:F1AB: F0 09       ;
CODE_03F1AD:    CMP #$15                ; $03:F1AD: C9 15       ;
CODE_03F1AF:    BCS CODE_03F1B6         ; $03:F1AF: B0 05       ;
CODE_03F1B1:    TXA                     ; $03:F1B1: 8A          ;
CODE_03F1B2:    CLC                     ; $03:F1B2: 18          ;
CODE_03F1B3:    ADC #$08                ; $03:F1B3: 69 08       ;
CODE_03F1B5:    TAX                     ; $03:F1B5: AA          ;
CODE_03F1B6:    LDA $0902,x             ; $03:F1B6: BD 02 09    ;
CODE_03F1B9:    PHA                     ; $03:F1B9: 48          ;
CODE_03F1BA:    LDA $0906,x             ; $03:F1BA: BD 06 09    ;
CODE_03F1BD:    PHA                     ; $03:F1BD: 48          ;
CODE_03F1BE:    LDA $0912,y             ; $03:F1BE: B9 12 09    ;
CODE_03F1C1:    STA $0902,x             ; $03:F1C1: 9D 02 09    ;
CODE_03F1C4:    LDA $0916,y             ; $03:F1C4: B9 16 09    ;
CODE_03F1C7:    STA $0906,x             ; $03:F1C7: 9D 06 09    ;
CODE_03F1CA:    PLA                     ; $03:F1CA: 68          ;
CODE_03F1CB:    STA $0916,y             ; $03:F1CB: 99 16 09    ;
CODE_03F1CE:    PLA                     ; $03:F1CE: 68          ;
CODE_03F1CF:    STA $0912,y             ; $03:F1CF: 99 12 09    ;
CODE_03F1D2:    LDA $036A               ; $03:F1D2: AD 6A 03    ;
CODE_03F1D5:    BNE CODE_03F18E         ; $03:F1D5: D0 B7       ;
CODE_03F1D7:    LDA $EF                 ; $03:F1D7: A5 EF       ;
CODE_03F1D9:    LDX $EC                 ; $03:F1D9: A6 EC       ;
CODE_03F1DB:    CMP #$05                ; $03:F1DB: C9 05       ;
CODE_03F1DD:    BNE CODE_03F1E2         ; $03:F1DD: D0 03       ;
CODE_03F1DF:    JMP CODE_03F295         ; $03:F1DF: 4C 95 F2    ;

CODE_03F1E2:    CMP #$07                ; $03:F1E2: C9 07       ;
CODE_03F1E4:    BEQ CODE_03F1FA         ; $03:F1E4: F0 14       ;
CODE_03F1E6:    CMP #$0D                ; $03:F1E6: C9 0D       ;
CODE_03F1E8:    BEQ CODE_03F1FA         ; $03:F1E8: F0 10       ;
CODE_03F1EA:    CMP #$0C                ; $03:F1EA: C9 0C       ;
CODE_03F1EC:    BEQ CODE_03F1FA         ; $03:F1EC: F0 0C       ;
CODE_03F1EE:    CMP #$12                ; $03:F1EE: C9 12       ;
CODE_03F1F0:    BNE CODE_03F1F6         ; $03:F1F0: D0 04       ;
CODE_03F1F2:    CPX #$05                ; $03:F1F2: E0 05       ;
CODE_03F1F4:    BNE CODE_03F23A         ; $03:F1F4: D0 44       ;
CODE_03F1F6:    CPX #$02                ; $03:F1F6: E0 02       ;
CODE_03F1F8:    BCC CODE_03F23A         ; $03:F1F8: 90 40       ;
CODE_03F1FA:    LDA $036A               ; $03:F1FA: AD 6A 03    ;
CODE_03F1FD:    BNE CODE_03F23A         ; $03:F1FD: D0 3B       ;
CODE_03F1FF:    LDA $0F49               ; $03:F1FF: AD 49 0F    ;
CODE_03F202:    BNE CODE_03F23A         ; $03:F202: D0 36       ;
CODE_03F204:    LDA $0903,y             ; $03:F204: B9 03 09    ;
CODE_03F207:    AND #$BE                ; $03:F207: 29 BE       ;
CODE_03F209:    STA $0903,y             ; $03:F209: 99 03 09    ;
CODE_03F20C:    STA $090B,y             ; $03:F20C: 99 0B 09    ;
CODE_03F20F:    STA $0913,y             ; $03:F20F: 99 13 09    ;
CODE_03F212:    ORA #$40                ; $03:F212: 09 40       ;
CODE_03F214:    CPX #$05                ; $03:F214: E0 05       ;
CODE_03F216:    BNE CODE_03F21A         ; $03:F216: D0 02       ;
CODE_03F218:    ORA #$80                ; $03:F218: 09 80       ;
CODE_03F21A:    STA $0907,y             ; $03:F21A: 99 07 09    ;
CODE_03F21D:    STA $090F,y             ; $03:F21D: 99 0F 09    ;
CODE_03F220:    STA $0917,y             ; $03:F220: 99 17 09    ;
CODE_03F223:    CPX #$04                ; $03:F223: E0 04       ;
CODE_03F225:    BNE CODE_03F23A         ; $03:F225: D0 13       ;
CODE_03F227:    LDA $090B,y             ; $03:F227: B9 0B 09    ;
CODE_03F22A:    ORA #$80                ; $03:F22A: 09 80       ;
CODE_03F22C:    STA $090B,y             ; $03:F22C: 99 0B 09    ;
CODE_03F22F:    STA $0913,y             ; $03:F22F: 99 13 09    ;
CODE_03F232:    ORA #$40                ; $03:F232: 09 40       ;
CODE_03F234:    STA $090F,y             ; $03:F234: 99 0F 09    ;
CODE_03F237:    STA $0917,y             ; $03:F237: 99 17 09    ;
CODE_03F23A:    LDA $EF                 ; $03:F23A: A5 EF       ;
CODE_03F23C:    CMP #$11                ; $03:F23C: C9 11       ;
CODE_03F23E:    BNE CODE_03F275         ; $03:F23E: D0 35       ;
CODE_03F240:    LDA $F0                 ; $03:F240: A5 F0       ;
CODE_03F242:    BNE CODE_03F265         ; $03:F242: D0 21       ;
CODE_03F244:    LDA $0913,y             ; $03:F244: B9 13 09    ;
CODE_03F247:    AND #$BF                ; $03:F247: 29 BF       ;
CODE_03F249:    STA $0913,y             ; $03:F249: 99 13 09    ;
CODE_03F24C:    LDA $0917,y             ; $03:F24C: B9 17 09    ;
CODE_03F24F:    ORA #$40                ; $03:F24F: 09 40       ;
CODE_03F251:    STA $0917,y             ; $03:F251: 99 17 09    ;
CODE_03F254:    LDX $079B               ; $03:F254: AE 9B 07    ;
CODE_03F257:    CPX #$10                ; $03:F257: E0 10       ;
CODE_03F259:    BCS CODE_03F295         ; $03:F259: B0 3A       ;
CODE_03F25B:    STA $090F,y             ; $03:F25B: 99 0F 09    ;
CODE_03F25E:    AND #$BF                ; $03:F25E: 29 BF       ;
CODE_03F260:    STA $090B,y             ; $03:F260: 99 0B 09    ;
CODE_03F263:    BCC CODE_03F295         ; $03:F263: 90 30       ;
CODE_03F265:    LDA $0903,y             ; $03:F265: B9 03 09    ;
CODE_03F268:    AND #$BF                ; $03:F268: 29 BF       ;
CODE_03F26A:    STA $0903,y             ; $03:F26A: 99 03 09    ;
CODE_03F26D:    LDA $0907,y             ; $03:F26D: B9 07 09    ;
CODE_03F270:    ORA #$40                ; $03:F270: 09 40       ;
CODE_03F272:    STA $0907,y             ; $03:F272: 99 07 09    ;
CODE_03F275:    LDA $EF                 ; $03:F275: A5 EF       ;
CODE_03F277:    CMP #$18                ; $03:F277: C9 18       ;
CODE_03F279:    BCC CODE_03F295         ; $03:F279: 90 1A       ;
CODE_03F27B:    LDA #$AC                ; $03:F27B: A9 AC       ;
CODE_03F27D:    STA $090B,y             ; $03:F27D: 99 0B 09    ;
CODE_03F280:    STA $0913,y             ; $03:F280: 99 13 09    ;
CODE_03F283:    ORA #$40                ; $03:F283: 09 40       ;
CODE_03F285:    STA $090F,y             ; $03:F285: 99 0F 09    ;
CODE_03F288:    STA $0917,y             ; $03:F288: 99 17 09    ;
CODE_03F28B:    AND #$3F                ; $03:F28B: 29 3F       ;
CODE_03F28D:    STA $0903,y             ; $03:F28D: 99 03 09    ;
CODE_03F290:    ORA #$40                ; $03:F290: 09 40       ;
CODE_03F292:    STA $0907,y             ; $03:F292: 99 07 09    ;
CODE_03F295:    LDA $EF                 ; $03:F295: A5 EF       ;
CODE_03F297:    CMP #$0D                ; $03:F297: C9 0D       ;
CODE_03F299:    BNE CODE_03F2AF         ; $03:F299: D0 14       ;
CODE_03F29B:    LDA $0913,y             ; $03:F29B: B9 13 09    ;
CODE_03F29E:    AND #$F0                ; $03:F29E: 29 F0       ;
CODE_03F2A0:    ORA #$08                ; $03:F2A0: 09 08       ;
CODE_03F2A2:    STA $0913,y             ; $03:F2A2: 99 13 09    ;
CODE_03F2A5:    LDA $0917,y             ; $03:F2A5: B9 17 09    ;
CODE_03F2A8:    AND #$F0                ; $03:F2A8: 29 F0       ;
CODE_03F2AA:    ORA #$08                ; $03:F2AA: 09 08       ;
CODE_03F2AC:    STA $0917,y             ; $03:F2AC: 99 17 09    ;
CODE_03F2AF:    LDX $9E                 ; $03:F2AF: A6 9E       ;
CODE_03F2B1:    JSR CODE_03FEAC         ; $03:F2B1: 20 AC FE    ;
CODE_03F2B4:    STZ $04                 ; $03:F2B4: 64 04       ;
CODE_03F2B6:    JSR CODE_03FEE5         ; $03:F2B6: 20 E5 FE    ;
CODE_03F2B9:    JSR CODE_03FF3B         ; $03:F2B9: 20 3B FF    ;
CODE_03F2BC:    STZ $04                 ; $03:F2BC: 64 04       ;
CODE_03F2BE:    JSR CODE_03FEE5         ; $03:F2BE: 20 E5 FE    ;
CODE_03F2C1:    DEY                     ; $03:F2C1: 88          ;
CODE_03F2C2:    DEY                     ; $03:F2C2: 88          ;
CODE_03F2C3:    DEY                     ; $03:F2C3: 88          ;
CODE_03F2C4:    DEY                     ; $03:F2C4: 88          ;
CODE_03F2C5:    LDA $03D1               ; $03:F2C5: AD D1 03    ;
CODE_03F2C8:    LSR A                   ; $03:F2C8: 4A          ;
CODE_03F2C9:    LSR A                   ; $03:F2C9: 4A          ;
CODE_03F2CA:    LSR A                   ; $03:F2CA: 4A          ;
CODE_03F2CB:    LSR A                   ; $03:F2CB: 4A          ;
CODE_03F2CC:    LSR A                   ; $03:F2CC: 4A          ;
CODE_03F2CD:    LSR A                   ; $03:F2CD: 4A          ;
CODE_03F2CE:    PHA                     ; $03:F2CE: 48          ;
CODE_03F2CF:    BCC CODE_03F2D6         ; $03:F2CF: 90 05       ;
CODE_03F2D1:    LDA #$10                ; $03:F2D1: A9 10       ;
CODE_03F2D3:    JSR CODE_03F313         ; $03:F2D3: 20 13 F3    ;
CODE_03F2D6:    PLA                     ; $03:F2D6: 68          ;
CODE_03F2D7:    LSR A                   ; $03:F2D7: 4A          ;
CODE_03F2D8:    PHA                     ; $03:F2D8: 48          ;
CODE_03F2D9:    BCC CODE_03F2E0         ; $03:F2D9: 90 05       ;
CODE_03F2DB:    LDA #$08                ; $03:F2DB: A9 08       ;
CODE_03F2DD:    JSR CODE_03F313         ; $03:F2DD: 20 13 F3    ;
CODE_03F2E0:    PLA                     ; $03:F2E0: 68          ;
CODE_03F2E1:    LSR A                   ; $03:F2E1: 4A          ;
CODE_03F2E2:    BCC CODE_03F2F6         ; $03:F2E2: 90 12       ;
CODE_03F2E4:    JSR CODE_03F313         ; $03:F2E4: 20 13 F3    ;
CODE_03F2E7:    LDA $1C,x               ; $03:F2E7: B5 1C       ;
CODE_03F2E9:    CMP #$0C                ; $03:F2E9: C9 0C       ;
CODE_03F2EB:    BEQ CODE_03F2F6         ; $03:F2EB: F0 09       ;
CODE_03F2ED:    LDA $BC,x               ; $03:F2ED: B5 BC       ;
CODE_03F2EF:    CMP #$02                ; $03:F2EF: C9 02       ;
CODE_03F2F1:    BNE CODE_03F2F6         ; $03:F2F1: D0 03       ;
CODE_03F2F3:    JSR CODE_03CDE2         ; $03:F2F3: 20 E2 CD    ; Erase sprite
CODE_03F2F6:    RTS                     ; $03:F2F6: 60          ;

CODE_03F2F7:    LDA DATA_03ED8C,x       ; $03:F2F7: BD 8C ED    ;
CODE_03F2FA:    STA $00                 ; $03:F2FA: 85 00       ;
CODE_03F2FC:    LDA DATA_03ED8C+1,x     ; $03:F2FC: BD 8D ED    ;
CODE_03F2FF:    STA $01                 ; $03:F2FF: 85 01       ;
CODE_03F301:    LDA $02                 ; $03:F301: A5 02       ;
CODE_03F303:    CMP #$F9                ; $03:F303: C9 F9       ;
CODE_03F305:    BNE CODE_03F30B         ; $03:F305: D0 04       ;
CODE_03F307:    LDA #$F0                ; $03:F307: A9 F0       ;
CODE_03F309:    STA $02                 ; $03:F309: 85 02       ;
CODE_03F30B:    JMP CODE_03FF96         ; $03:F30B: 4C 96 FF    ;

CODE_03F30E:    STA $01                 ; $03:F30E: 85 01       ;
CODE_03F310:    JMP CODE_03FF4E         ; $03:F310: 4C 4E FF    ;

CODE_03F313:    STX $9E                 ; $03:F313: 86 9E       ;
CODE_03F315:    CPX #$0A                ; $03:F315: E0 0A       ;
CODE_03F317:    BNE CODE_03F31A         ; $03:F317: D0 01       ;
CODE_03F319:    DEX                     ; $03:F319: CA          ;
CODE_03F31A:    CLC                     ; $03:F31A: 18          ;
CODE_03F31B:    ADC $0B46,x             ; $03:F31B: 7D 46 0B    ;
CODE_03F31E:    TAY                     ; $03:F31E: A8          ;
CODE_03F31F:    LDA #$F0                ; $03:F31F: A9 F0       ;
CODE_03F321:    LDX $9E                 ; $03:F321: A6 9E       ;
CODE_03F323:    JMP CODE_03EC57         ; $03:F323: 4C 57 EC    ;

CODE_03F326:    STX $9E                 ; $03:F326: 86 9E       ;
CODE_03F328:    CPX #$0A                ; $03:F328: E0 0A       ;
CODE_03F32A:    BNE CODE_03F32D         ; $03:F32A: D0 01       ;
CODE_03F32C:    DEX                     ; $03:F32C: CA          ;
CODE_03F32D:    CLC                     ; $03:F32D: 18          ;
CODE_03F32E:    ADC $0B46,x             ; $03:F32E: 7D 46 0B    ;
CODE_03F331:    TAY                     ; $03:F331: A8          ;
CODE_03F332:    LDA #$F0                ; $03:F332: A9 F0       ;
CODE_03F334:    STA $0901,y             ; $03:F334: 99 01 09    ;
CODE_03F337:    STA $0909,y             ; $03:F337: 99 09 09    ;
CODE_03F33A:    STA $0911,y             ; $03:F33A: 99 11 09    ;
CODE_03F33D:    LDX $9E                 ; $03:F33D: A6 9E       ;
CODE_03F33F:    RTS                     ; $03:F33F: 60          ;

CODE_03F340:    LDA #$01                ; $03:F340: A9 01       ;
CODE_03F342:    STA $0D00,y             ; $03:F342: 99 00 0D    ;
CODE_03F345:    STA $0D08,y             ; $03:F345: 99 08 0D    ;
CODE_03F348:    STA $0D10,y             ; $03:F348: 99 10 0D    ;
CODE_03F34B:    RTS                     ; $03:F34B: 60          ;

CODE_03F34C:    LDA #$01                ; $03:F34C: A9 01       ;
CODE_03F34E:    STA $0D04,y             ; $03:F34E: 99 04 0D    ;
CODE_03F351:    STA $0D0C,y             ; $03:F351: 99 0C 0D    ;
CODE_03F354:    STA $0D14,y             ; $03:F354: 99 14 0D    ;
CODE_03F357:    RTS                     ; $03:F357: 60          ;

CODE_03F358:    LDY $0B51,x             ; $03:F358: BC 51 0B    ;
CODE_03F35B:    LDA $03B1               ; $03:F35B: AD B1 03    ;
CODE_03F35E:    STA $0800,y             ; $03:F35E: 99 00 08    ;
CODE_03F361:    LDA $03BC               ; $03:F361: AD BC 03    ;
CODE_03F364:    STA $0801,y             ; $03:F364: 99 01 08    ;
CODE_03F367:    LDA #$2B                ; $03:F367: A9 2B       ;
CODE_03F369:    STA $0803,y             ; $03:F369: 99 03 08    ;
CODE_03F36C:    LDA #$02                ; $03:F36C: A9 02       ;
CODE_03F36E:    STA $0C00,y             ; $03:F36E: 99 00 0C    ;
CODE_03F371:    LDA $03EA,x             ; $03:F371: BD EA 03    ;
CODE_03F374:    CMP #$FC                ; $03:F374: C9 FC       ;
CODE_03F376:    BNE CODE_03F37C         ; $03:F376: D0 04       ;
CODE_03F378:    LDA #$00                ; $03:F378: A9 00       ;
CODE_03F37A:    BRA CODE_03F37E         ; $03:F37A: 80 02       ;

CODE_03F37C:    LDA #$02                ; $03:F37C: A9 02       ;
CODE_03F37E:    STA $0802,y             ; $03:F37E: 99 02 08    ;
CODE_03F381:    LDA $85,x               ; $03:F381: B5 85       ;
CODE_03F383:    STA $E5                 ; $03:F383: 85 E5       ;
CODE_03F385:    LDA $0226,x             ; $03:F385: BD 26 02    ;
CODE_03F388:    STA $E4                 ; $03:F388: 85 E4       ;
CODE_03F38A:    REP #$20                ; $03:F38A: C2 20       ;
CODE_03F38C:    LDA $E4                 ; $03:F38C: A5 E4       ;
CODE_03F38E:    SEC                     ; $03:F38E: 38          ;
CODE_03F38F:    SBC $42                 ; $03:F38F: E5 42       ;
CODE_03F391:    STA $E4                 ; $03:F391: 85 E4       ;
CODE_03F393:    SEP #$20                ; $03:F393: E2 20       ;
CODE_03F395:    LDA $E5                 ; $03:F395: A5 E5       ;
CODE_03F397:    BEQ CODE_03F39E         ; $03:F397: F0 05       ;
CODE_03F399:    LDA #$03                ; $03:F399: A9 03       ;
CODE_03F39B:    STA $0C00,y             ; $03:F39B: 99 00 0C    ;
CODE_03F39E:    RTS                     ; $03:F39E: 60          ;

CODE_03F39F:    AND #$08                ; $03:F39F: 29 08       ;
CODE_03F3A1:    BEQ CODE_03F3AB         ; $03:F3A1: F0 08       ;
CODE_03F3A3:    LDA #$F0                ; $03:F3A3: A9 F0       ;
CODE_03F3A5:    STA $0801,y             ; $03:F3A5: 99 01 08    ;
CODE_03F3A8:    STA $0809,y             ; $03:F3A8: 99 09 08    ;
CODE_03F3AB:    RTS                     ; $03:F3AB: 60          ;

CODE_03F3AC:    LDA #$2C                ; $03:F3AC: A9 2C       ;
CODE_03F3AE:    STA $00                 ; $03:F3AE: 85 00       ;
CODE_03F3B0:    LDA #$75                ; $03:F3B0: A9 75       ;
CODE_03F3B2:    LDY $0F                 ; $03:F3B2: A4 0F       ;
CODE_03F3B4:    CPY #$05                ; $03:F3B4: C0 05       ;
CODE_03F3B6:    BEQ CODE_03F3BE         ; $03:F3B6: F0 06       ;
CODE_03F3B8:    LDA #$2A                ; $03:F3B8: A9 2A       ;
CODE_03F3BA:    STA $00                 ; $03:F3BA: 85 00       ;
CODE_03F3BC:    LDA #$84                ; $03:F3BC: A9 84       ;
CODE_03F3BE:    LDY $0B51,x             ; $03:F3BE: BC 51 0B    ;
CODE_03F3C1:    INY                     ; $03:F3C1: C8          ;
CODE_03F3C2:    JSR CODE_03EC3C         ; $03:F3C2: 20 3C EC    ;
CODE_03F3C5:    LDA $09                 ; $03:F3C5: A5 09       ;
CODE_03F3C7:    ASL A                   ; $03:F3C7: 0A          ;
CODE_03F3C8:    ASL A                   ; $03:F3C8: 0A          ;
CODE_03F3C9:    ASL A                   ; $03:F3C9: 0A          ;
CODE_03F3CA:    ASL A                   ; $03:F3CA: 0A          ;
CODE_03F3CB:    AND #$C0                ; $03:F3CB: 29 C0       ;
CODE_03F3CD:    ORA $00                 ; $03:F3CD: 05 00       ;
CODE_03F3CF:    INY                     ; $03:F3CF: C8          ;
CODE_03F3D0:    JSR CODE_03EC3C         ; $03:F3D0: 20 3C EC    ;
CODE_03F3D3:    DEY                     ; $03:F3D3: 88          ;
CODE_03F3D4:    DEY                     ; $03:F3D4: 88          ;
CODE_03F3D5:    LDA $03BC               ; $03:F3D5: AD BC 03    ;
CODE_03F3D8:    CMP #$F0                ; $03:F3D8: C9 F0       ;
CODE_03F3DA:    BCC CODE_03F3DE         ; $03:F3DA: 90 02       ;
CODE_03F3DC:    LDA #$F0                ; $03:F3DC: A9 F0       ;
CODE_03F3DE:    JSR CODE_03EC42         ; $03:F3DE: 20 42 EC    ;
CODE_03F3E1:    LDA $03B1               ; $03:F3E1: AD B1 03    ;
CODE_03F3E4:    STA $0800,y             ; $03:F3E4: 99 00 08    ;
CODE_03F3E7:    LDA $03F3,x             ; $03:F3E7: BD F3 03    ;
CODE_03F3EA:    SEC                     ; $03:F3EA: 38          ;
CODE_03F3EB:    SBC $071C               ; $03:F3EB: ED 1C 07    ;
CODE_03F3EE:    STA $00                 ; $03:F3EE: 85 00       ;
CODE_03F3F0:    SEC                     ; $03:F3F0: 38          ;
CODE_03F3F1:    SBC $03B1               ; $03:F3F1: ED B1 03    ;
CODE_03F3F4:    ADC $00                 ; $03:F3F4: 65 00       ;
CODE_03F3F6:    ADC #$06                ; $03:F3F6: 69 06       ;
CODE_03F3F8:    STA $0804,y             ; $03:F3F8: 99 04 08    ;
CODE_03F3FB:    LDA $03BD               ; $03:F3FB: AD BD 03    ;
CODE_03F3FE:    CMP #$F0                ; $03:F3FE: C9 F0       ;
CODE_03F400:    BCC CODE_03F404         ; $03:F400: 90 02       ;
CODE_03F402:    LDA #$F0                ; $03:F402: A9 F0       ;
CODE_03F404:    STA $0809,y             ; $03:F404: 99 09 08    ;
CODE_03F407:    STA $080D,y             ; $03:F407: 99 0D 08    ;
CODE_03F40A:    LDA $03B2               ; $03:F40A: AD B2 03    ;
CODE_03F40D:    STA $0808,y             ; $03:F40D: 99 08 08    ;
CODE_03F410:    LDA $00                 ; $03:F410: A5 00       ;
CODE_03F412:    SEC                     ; $03:F412: 38          ;
CODE_03F413:    SBC $03B2               ; $03:F413: ED B2 03    ;
CODE_03F416:    ADC $00                 ; $03:F416: 65 00       ;
CODE_03F418:    ADC #$06                ; $03:F418: 69 06       ;
CODE_03F41A:    STA $080C,y             ; $03:F41A: 99 0C 08    ;
CODE_03F41D:    LDA $03D4               ; $03:F41D: AD D4 03    ;
CODE_03F420:    ASL A                   ; $03:F420: 0A          ;
CODE_03F421:    BCC CODE_03F428         ; $03:F421: 90 05       ;
CODE_03F423:    LDA #$F0                ; $03:F423: A9 F0       ;
CODE_03F425:    JSR CODE_03EC42         ; $03:F425: 20 42 EC    ;
CODE_03F428:    LDA $03D4               ; $03:F428: AD D4 03    ;
CODE_03F42B:    BEQ CODE_03F435         ; $03:F42B: F0 08       ;
CODE_03F42D:    LDA #$01                ; $03:F42D: A9 01       ;
CODE_03F42F:    STA $0C00,y             ; $03:F42F: 99 00 0C    ;
CODE_03F432:    STA $0C08,y             ; $03:F432: 99 08 0C    ;
CODE_03F435:    LDA $03D5               ; $03:F435: AD D5 03    ;
CODE_03F438:    BEQ CODE_03F442         ; $03:F438: F0 08       ;
CODE_03F43A:    LDA #$01                ; $03:F43A: A9 01       ;
CODE_03F43C:    STA $0C04,y             ; $03:F43C: 99 04 0C    ;
CODE_03F43F:    STA $0C0C,y             ; $03:F43F: 99 0C 0C    ;
CODE_03F442:    RTS                     ; $03:F442: 60          ;

CODE_03F443:    LDY $0B56,x             ; $03:F443: BC 56 0B    ;
CODE_03F446:    LDA $03BA               ; $03:F446: AD BA 03    ;
CODE_03F449:    STA $0801,y             ; $03:F449: 99 01 08    ;
CODE_03F44C:    LDA $03AF               ; $03:F44C: AD AF 03    ;
CODE_03F44F:    STA $0800,y             ; $03:F44F: 99 00 08    ;
CODE_03F452:    LDA $09                 ; $03:F452: A5 09       ;
CODE_03F454:    LSR A                   ; $03:F454: 4A          ;
CODE_03F455:    LSR A                   ; $03:F455: 4A          ;
CODE_03F456:    PHA                     ; $03:F456: 48          ;
CODE_03F457:    AND #$01                ; $03:F457: 29 01       ;
CODE_03F459:    EOR #$BE                ; $03:F459: 49 BE       ;
CODE_03F45B:    STA $0802,y             ; $03:F45B: 99 02 08    ;
CODE_03F45E:    PLA                     ; $03:F45E: 68          ;
CODE_03F45F:    LSR A                   ; $03:F45F: 4A          ;
CODE_03F460:    LSR A                   ; $03:F460: 4A          ;
CODE_03F461:    LDA #$28                ; $03:F461: A9 28       ;
CODE_03F463:    BCC CODE_03F467         ; $03:F463: 90 02       ;
CODE_03F465:    ORA #$C0                ; $03:F465: 09 C0       ;
CODE_03F467:    STA $0803,y             ; $03:F467: 99 03 08    ;
CODE_03F46A:    LDA $0068,x             ; $03:F46A: BD 68 00    ;
CODE_03F46D:    BPL CODE_03F47B         ; $03:F46D: 10 0C       ;
CODE_03F46F:    LDA $03AF               ; $03:F46F: AD AF 03    ;
CODE_03F472:    CMP #$F8                ; $03:F472: C9 F8       ;
CODE_03F474:    BCC CODE_03F47B         ; $03:F474: 90 05       ;
CODE_03F476:    LDA #$01                ; $03:F476: A9 01       ;
CODE_03F478:    STA $0C00,y             ; $03:F478: 99 00 0C    ;
CODE_03F47B:    RTS                     ; $03:F47B: 60          ;

CODE_03F47C:    LDY $0B56,x             ; $03:F47C: BC 56 0B    ;
CODE_03F47F:    LDA $03BA               ; $03:F47F: AD BA 03    ;
CODE_03F482:    STA $0901,y             ; $03:F482: 99 01 09    ;
CODE_03F485:    LDA $03AF               ; $03:F485: AD AF 03    ;
CODE_03F488:    STA $0900,y             ; $03:F488: 99 00 09    ;
CODE_03F48B:    LDA $09                 ; $03:F48B: A5 09       ;
CODE_03F48D:    LSR A                   ; $03:F48D: 4A          ;
CODE_03F48E:    LSR A                   ; $03:F48E: 4A          ;
CODE_03F48F:    PHA                     ; $03:F48F: 48          ;
CODE_03F490:    AND #$01                ; $03:F490: 29 01       ;
CODE_03F492:    EOR #$BE                ; $03:F492: 49 BE       ;
CODE_03F494:    STA $0902,y             ; $03:F494: 99 02 09    ;
CODE_03F497:    PLA                     ; $03:F497: 68          ;
CODE_03F498:    LSR A                   ; $03:F498: 4A          ;
CODE_03F499:    LSR A                   ; $03:F499: 4A          ;
CODE_03F49A:    LDA #$38                ; $03:F49A: A9 38       ;
CODE_03F49C:    BCC CODE_03F4A0         ; $03:F49C: 90 02       ;
CODE_03F49E:    ORA #$C0                ; $03:F49E: 09 C0       ;
CODE_03F4A0:    STA $0903,y             ; $03:F4A0: 99 03 09    ;
CODE_03F4A3:    RTS                     ; $03:F4A3: 60          ;

DATA_03F4A4:    db $CC,$CB,$CA,$FC                              ;

CODE_03F4A8:    LDY $0B51,x             ; $03:F4A8: BC 51 0B    ;
CODE_03F4AB:    LDA $0068,x             ; $03:F4AB: BD 68 00    ;
CODE_03F4AE:    BMI CODE_03F4C7         ; $03:F4AE: 30 17       ;
CODE_03F4B0:    LDA $03AF               ; $03:F4B0: AD AF 03    ;
CODE_03F4B3:    SEC                     ; $03:F4B3: 38          ;
CODE_03F4B4:    SBC #$04                ; $03:F4B4: E9 04       ;
CODE_03F4B6:    STA $03AF               ; $03:F4B6: 8D AF 03    ;
CODE_03F4B9:    CMP #$F8                ; $03:F4B9: C9 F8       ;
CODE_03F4BB:    BCC CODE_03F4E6         ; $03:F4BB: 90 29       ;
CODE_03F4BD:    LDA #$01                ; $03:F4BD: A9 01       ;
CODE_03F4BF:    STA $0C08,y             ; $03:F4BF: 99 08 0C    ;
CODE_03F4C2:    STA $0C0C,y             ; $03:F4C2: 99 0C 0C    ;
CODE_03F4C5:    BRA CODE_03F4E6         ; $03:F4C5: 80 1F       ;

CODE_03F4C7:    LDA $03AF               ; $03:F4C7: AD AF 03    ;
CODE_03F4CA:    CMP #$F0                ; $03:F4CA: C9 F0       ;
CODE_03F4CC:    BCC CODE_03F4E6         ; $03:F4CC: 90 18       ;
CODE_03F4CE:    CMP #$F8                ; $03:F4CE: C9 F8       ;
CODE_03F4D0:    BCC CODE_03F4DC         ; $03:F4D0: 90 0A       ;
CODE_03F4D2:    LDA #$01                ; $03:F4D2: A9 01       ;
CODE_03F4D4:    STA $0C00,y             ; $03:F4D4: 99 00 0C    ;
CODE_03F4D7:    STA $0C04,y             ; $03:F4D7: 99 04 0C    ;
CODE_03F4DA:    BRA CODE_03F4E6         ; $03:F4DA: 80 0A       ;

CODE_03F4DC:    LDA #$01                ; $03:F4DC: A9 01       ;
CODE_03F4DE:    STA $0C00,y             ; $03:F4DE: 99 00 0C    ;
CODE_03F4E1:    STA $0C04,y             ; $03:F4E1: 99 04 0C    ;
CODE_03F4E4:    BRA CODE_03F4BD         ; $03:F4E4: 80 D7       ;

CODE_03F4E6:    LDA $33,x               ; $03:F4E6: B5 33       ;
CODE_03F4E8:    INC $33,x               ; $03:F4E8: F6 33       ;
CODE_03F4EA:    LSR A                   ; $03:F4EA: 4A          ;
CODE_03F4EB:    AND #$07                ; $03:F4EB: 29 07       ;
CODE_03F4ED:    CMP #$03                ; $03:F4ED: C9 03       ;
CODE_03F4EF:    BCS CODE_03F538         ; $03:F4EF: B0 47       ;
CODE_03F4F1:    TAX                     ; $03:F4F1: AA          ;
CODE_03F4F2:    LDA DATA_03F4A4,x       ; $03:F4F2: BD A4 F4    ;
CODE_03F4F5:    INY                     ; $03:F4F5: C8          ;
CODE_03F4F6:    JSR CODE_03EC3C         ; $03:F4F6: 20 3C EC    ;
CODE_03F4F9:    DEY                     ; $03:F4F9: 88          ;
CODE_03F4FA:    LDX $9E                 ; $03:F4FA: A6 9E       ;
CODE_03F4FC:    LDA $03BA               ; $03:F4FC: AD BA 03    ;
CODE_03F4FF:    SEC                     ; $03:F4FF: 38          ;
CODE_03F500:    SBC #$04                ; $03:F500: E9 04       ;
CODE_03F502:    STA $0801,y             ; $03:F502: 99 01 08    ;
CODE_03F505:    STA $0809,y             ; $03:F505: 99 09 08    ;
CODE_03F508:    CLC                     ; $03:F508: 18          ;
CODE_03F509:    ADC #$08                ; $03:F509: 69 08       ;
CODE_03F50B:    STA $0805,y             ; $03:F50B: 99 05 08    ;
CODE_03F50E:    STA $080D,y             ; $03:F50E: 99 0D 08    ;
CODE_03F511:    LDA $03AF               ; $03:F511: AD AF 03    ;
CODE_03F514:    STA $0800,y             ; $03:F514: 99 00 08    ;
CODE_03F517:    STA $0804,y             ; $03:F517: 99 04 08    ;
CODE_03F51A:    CLC                     ; $03:F51A: 18          ;
CODE_03F51B:    ADC #$08                ; $03:F51B: 69 08       ;
CODE_03F51D:    STA $0808,y             ; $03:F51D: 99 08 08    ;
CODE_03F520:    STA $080C,y             ; $03:F520: 99 0C 08    ;
CODE_03F523:    LDA #$28                ; $03:F523: A9 28       ;
CODE_03F525:    STA $0803,y             ; $03:F525: 99 03 08    ;
CODE_03F528:    LDA #$A8                ; $03:F528: A9 A8       ;
CODE_03F52A:    STA $0807,y             ; $03:F52A: 99 07 08    ;
CODE_03F52D:    LDA #$68                ; $03:F52D: A9 68       ;
CODE_03F52F:    STA $080B,y             ; $03:F52F: 99 0B 08    ;
CODE_03F532:    LDA #$E8                ; $03:F532: A9 E8       ;
CODE_03F534:    STA $080F,y             ; $03:F534: 99 0F 08    ;
CODE_03F537:    RTS                     ; $03:F537: 60          ;

CODE_03F538:    STZ $33,x               ; $03:F538: 74 33       ;
CODE_03F53A:    RTS                     ; $03:F53A: 60          ;

DATA_03F53B:    db $48,$4A,$4C,$4E                              ;

DATA_03F53F:    db $0C,$08,$0A,$0C,$08,$0A,$0C,$08              ;
                db $0A                                          ;

CODE_03F548:    TAX                     ; $03:F548: AA          ;
CODE_03F549:    LDA DATA_03F53B,x       ; $03:F549: BD 3B F5    ;
CODE_03F54C:    INY                     ; $03:F54C: C8          ;
CODE_03F54D:    JSR CODE_03EC51         ; $03:F54D: 20 51 EC    ;
CODE_03F550:    DEY                     ; $03:F550: 88          ;
CODE_03F551:    LDX $9E                 ; $03:F551: A6 9E       ;
CODE_03F553:    LDA $03BA               ; $03:F553: AD BA 03    ;
CODE_03F556:    SEC                     ; $03:F556: 38          ;
CODE_03F557:    SBC #$10                ; $03:F557: E9 10       ;
CODE_03F559:    STA $0901,y             ; $03:F559: 99 01 09    ;
CODE_03F55C:    STA $0909,y             ; $03:F55C: 99 09 09    ;
CODE_03F55F:    CLC                     ; $03:F55F: 18          ;
CODE_03F560:    ADC #$10                ; $03:F560: 69 10       ;
CODE_03F562:    STA $0905,y             ; $03:F562: 99 05 09    ;
CODE_03F565:    STA $090D,y             ; $03:F565: 99 0D 09    ;
CODE_03F568:    LDA $03AF               ; $03:F568: AD AF 03    ;
CODE_03F56B:    SEC                     ; $03:F56B: 38          ;
CODE_03F56C:    SBC #$08                ; $03:F56C: E9 08       ;
CODE_03F56E:    STA $0900,y             ; $03:F56E: 99 00 09    ;
CODE_03F571:    STA $0904,y             ; $03:F571: 99 04 09    ;
CODE_03F574:    CLC                     ; $03:F574: 18          ;
CODE_03F575:    ADC #$10                ; $03:F575: 69 10       ;
CODE_03F577:    STA $0908,y             ; $03:F577: 99 08 09    ;
CODE_03F57A:    STA $090C,y             ; $03:F57A: 99 0C 09    ;
CODE_03F57D:    LDA #$02                ; $03:F57D: A9 02       ;
CODE_03F57F:    STA $0D00,y             ; $03:F57F: 99 00 0D    ;
CODE_03F582:    STA $0D04,y             ; $03:F582: 99 04 0D    ;
CODE_03F585:    STA $0D08,y             ; $03:F585: 99 08 0D    ;
CODE_03F588:    STA $0D0C,y             ; $03:F588: 99 0C 0D    ;
CODE_03F58B:    PHX                     ; $03:F58B: DA          ;
CODE_03F58C:    LDA $A1,x               ; $03:F58C: B5 A1       ;
CODE_03F58E:    TAX                     ; $03:F58E: AA          ;
CODE_03F58F:    DEX                     ; $03:F58F: CA          ;
CODE_03F590:    LDA DATA_03F53F,x       ; $03:F590: BD 3F F5    ;
CODE_03F593:    ORA #$20                ; $03:F593: 09 20       ;
CODE_03F595:    STA $0903,y             ; $03:F595: 99 03 09    ;
CODE_03F598:    LDA DATA_03F53F,x       ; $03:F598: BD 3F F5    ;
CODE_03F59B:    ORA #$A0                ; $03:F59B: 09 A0       ;
CODE_03F59D:    STA $0907,y             ; $03:F59D: 99 07 09    ;
CODE_03F5A0:    LDA DATA_03F53F,x       ; $03:F5A0: BD 3F F5    ;
CODE_03F5A3:    ORA #$60                ; $03:F5A3: 09 60       ;
CODE_03F5A5:    STA $090B,y             ; $03:F5A5: 99 0B 09    ;
CODE_03F5A8:    LDA DATA_03F53F,x       ; $03:F5A8: BD 3F F5    ;
CODE_03F5AB:    ORA #$E0                ; $03:F5AB: 09 E0       ;
CODE_03F5AD:    STA $090F,y             ; $03:F5AD: 99 0F 09    ;
CODE_03F5B0:    PLX                     ; $03:F5B0: FA          ;
CODE_03F5B1:    RTS                     ; $03:F5B1: 60          ;

CODE_03F5B2:    LDY $0B46,x             ; $03:F5B2: BC 46 0B    ;
CODE_03F5B5:    LDA #$87                ; $03:F5B5: A9 87       ;
CODE_03F5B7:    INY                     ; $03:F5B7: C8          ;
CODE_03F5B8:    JSR CODE_03EC4B         ; $03:F5B8: 20 4B EC    ;
CODE_03F5BB:    INY                     ; $03:F5BB: C8          ;
CODE_03F5BC:    LDA #$2C                ; $03:F5BC: A9 2C       ;
CODE_03F5BE:    JSR CODE_03EC4B         ; $03:F5BE: 20 4B EC    ;
CODE_03F5C1:    DEY                     ; $03:F5C1: 88          ;
CODE_03F5C2:    DEY                     ; $03:F5C2: 88          ;
CODE_03F5C3:    LDA $03AE               ; $03:F5C3: AD AE 03    ;
CODE_03F5C6:    STA $0900,y             ; $03:F5C6: 99 00 09    ;
CODE_03F5C9:    STA $090C,y             ; $03:F5C9: 99 0C 09    ;
CODE_03F5CC:    CLC                     ; $03:F5CC: 18          ;
CODE_03F5CD:    ADC #$08                ; $03:F5CD: 69 08       ;
CODE_03F5CF:    STA $0904,y             ; $03:F5CF: 99 04 09    ;
CODE_03F5D2:    STA $0910,y             ; $03:F5D2: 99 10 09    ;
CODE_03F5D5:    CLC                     ; $03:F5D5: 18          ;
CODE_03F5D6:    ADC #$08                ; $03:F5D6: 69 08       ;
CODE_03F5D8:    STA $0908,y             ; $03:F5D8: 99 08 09    ;
CODE_03F5DB:    STA $0914,y             ; $03:F5DB: 99 14 09    ;
CODE_03F5DE:    LDA $0238,x             ; $03:F5DE: BD 38 02    ;
CODE_03F5E1:    TAX                     ; $03:F5E1: AA          ;
CODE_03F5E2:    PHA                     ; $03:F5E2: 48          ;
CODE_03F5E3:    CPX #$00                ; $03:F5E3: E0 00       ;
CODE_03F5E5:    BCS CODE_03F5E9         ; $03:F5E5: B0 02       ;
CODE_03F5E7:    LDA #$F0                ; $03:F5E7: A9 F0       ;
CODE_03F5E9:    JSR CODE_03EC54         ; $03:F5E9: 20 54 EC    ;
CODE_03F5EC:    PLA                     ; $03:F5EC: 68          ;
CODE_03F5ED:    CLC                     ; $03:F5ED: 18          ;
CODE_03F5EE:    ADC #$80                ; $03:F5EE: 69 80       ;
CODE_03F5F0:    TAX                     ; $03:F5F0: AA          ;
CODE_03F5F1:    CPX #$00                ; $03:F5F1: E0 00       ;
CODE_03F5F3:    BCS CODE_03F5F7         ; $03:F5F3: B0 02       ;
CODE_03F5F5:    LDA #$F0                ; $03:F5F5: A9 F0       ;
CODE_03F5F7:    STA $090D,y             ; $03:F5F7: 99 0D 09    ;
CODE_03F5FA:    STA $0911,y             ; $03:F5FA: 99 11 09    ;
CODE_03F5FD:    STA $0915,y             ; $03:F5FD: 99 15 09    ;
CODE_03F600:    LDA $03D1               ; $03:F600: AD D1 03    ;
CODE_03F603:    PHA                     ; $03:F603: 48          ;
CODE_03F604:    AND #$08                ; $03:F604: 29 08       ;
CODE_03F606:    BEQ CODE_03F610         ; $03:F606: F0 08       ;
CODE_03F608:    LDA #$01                ; $03:F608: A9 01       ;
CODE_03F60A:    STA $0D00,y             ; $03:F60A: 99 00 0D    ;
CODE_03F60D:    STA $0D0C,y             ; $03:F60D: 99 0C 0D    ;
CODE_03F610:    PLA                     ; $03:F610: 68          ;
CODE_03F611:    PHA                     ; $03:F611: 48          ;
CODE_03F612:    AND #$04                ; $03:F612: 29 04       ;
CODE_03F614:    BEQ CODE_03F61E         ; $03:F614: F0 08       ;
CODE_03F616:    LDA #$01                ; $03:F616: A9 01       ;
CODE_03F618:    STA $0D04,y             ; $03:F618: 99 04 0D    ;
CODE_03F61B:    STA $0D10,y             ; $03:F61B: 99 10 0D    ;
CODE_03F61E:    PLA                     ; $03:F61E: 68          ;
CODE_03F61F:    AND #$02                ; $03:F61F: 29 02       ;
CODE_03F621:    BEQ CODE_03F62B         ; $03:F621: F0 08       ;
CODE_03F623:    LDA #$01                ; $03:F623: A9 01       ;
CODE_03F625:    STA $0D08,y             ; $03:F625: 99 08 0D    ;
CODE_03F628:    STA $0D14,y             ; $03:F628: 99 14 0D    ;
CODE_03F62B:    LDX $9E                 ; $03:F62B: A6 9E       ;
CODE_03F62D:    RTS                     ; $03:F62D: 60          ;

DATA_03F62E:    db $20,$28,$C8,$18,$00,$40,$50,$58              ;
                db $80,$88,$B8,$78,$60,$A0,$B0,$B8              ;

DATA_03F63E:    db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $00,$01,$02,$03,$04,$05,$06,$07              ;
                db $9E,$9F                                      ;

CODE_03F710:    LDA $0E41               ; $03:F710: AD 41 0E    ;
CODE_03F713:    BNE CODE_03F732         ; $03:F713: D0 1D       ;
CODE_03F715:    LDA $06D5               ; $03:F715: AD D5 06    ;
CODE_03F718:    CMP #$18                ; $03:F718: C9 18       ;
CODE_03F71A:    BEQ CODE_03F720         ; $03:F71A: F0 04       ;
CODE_03F71C:    CMP #$78                ; $03:F71C: C9 78       ;
CODE_03F71E:    BNE CODE_03F736         ; $03:F71E: D0 16       ;
CODE_03F720:    INC $0E41               ; $03:F720: EE 41 0E    ;
CODE_03F723:    BRA CODE_03F72F         ; $03:F723: 80 0A       ;

CODE_03F725:    LDA $0202               ; $03:F725: AD 02 02    ;
CODE_03F728:    AND #$02                ; $03:F728: 29 02       ;
CODE_03F72A:    BNE CODE_03F736         ; $03:F72A: D0 0A       ;
CODE_03F72C:    INC $0E41               ; $03:F72C: EE 41 0E    ;
CODE_03F72F:    STZ $0E40               ; $03:F72F: 9C 40 0E    ;
CODE_03F732:    JSL CODE_05D7A1         ; $03:F732: 22 A1 D7 05 ;
CODE_03F736:    LDA $0F                 ; $03:F736: A5 0F       ;
CODE_03F738:    CMP #$03                ; $03:F738: C9 03       ;
CODE_03F73A:    BEQ CODE_03F746         ; $03:F73A: F0 0A       ;
CODE_03F73C:    LDA $07AE               ; $03:F73C: AD AE 07    ;
CODE_03F73F:    BEQ CODE_03F746         ; $03:F73F: F0 05       ;
CODE_03F741:    LDA $09                 ; $03:F741: A5 09       ;
CODE_03F743:    LSR A                   ; $03:F743: 4A          ;
CODE_03F744:    BCS CODE_03F7AE         ; $03:F744: B0 68       ;
CODE_03F746:    LDA $0F                 ; $03:F746: A5 0F       ;
CODE_03F748:    CMP #$0B                ; $03:F748: C9 0B       ;
CODE_03F74A:    BEQ CODE_03F7B9         ; $03:F74A: F0 6D       ;
CODE_03F74C:    LDA $070B               ; $03:F74C: AD 0B 07    ;
CODE_03F74F:    BNE CODE_03F7B4         ; $03:F74F: D0 63       ;
CODE_03F751:    LDY $0704               ; $03:F751: AC 04 07    ;
CODE_03F754:    BEQ CODE_03F7AF         ; $03:F754: F0 59       ;
CODE_03F756:    LDA $28                 ; $03:F756: A5 28       ;
CODE_03F758:    CMP #$00                ; $03:F758: C9 00       ;
CODE_03F75A:    BEQ CODE_03F7AF         ; $03:F75A: F0 53       ;
CODE_03F75C:    JSR CODE_03F7AF         ; $03:F75C: 20 AF F7    ;
CODE_03F75F:    TAX                     ; $03:F75F: AA          ;
CODE_03F760:    LDY $0B45               ; $03:F760: AC 45 0B    ;
CODE_03F763:    LDA $0202               ; $03:F763: AD 02 02    ;
CODE_03F766:    LSR A                   ; $03:F766: 4A          ;
CODE_03F767:    BCS CODE_03F76D         ; $03:F767: B0 04       ;
CODE_03F769:    INY                     ; $03:F769: C8          ;
CODE_03F76A:    INY                     ; $03:F76A: C8          ;
CODE_03F76B:    INY                     ; $03:F76B: C8          ;
CODE_03F76C:    INY                     ; $03:F76C: C8          ;
CODE_03F76D:    LDA $0754               ; $03:F76D: AD 54 07    ;
CODE_03F770:    BNE CODE_03F7AE         ; $03:F770: D0 3C       ;
CODE_03F772:    PHX                     ; $03:F772: DA          ;
CODE_03F773:    LDA $0202               ; $03:F773: AD 02 02    ;
CODE_03F776:    CMP #$02                ; $03:F776: C9 02       ;
CODE_03F778:    BEQ CODE_03F789         ; $03:F778: F0 0F       ;
CODE_03F77A:    LDA $0810,y             ; $03:F77A: B9 10 08    ;
CODE_03F77D:    SEC                     ; $03:F77D: 38          ;
CODE_03F77E:    SBC #$08                ; $03:F77E: E9 08       ;
CODE_03F780:    STA $0810,y             ; $03:F780: 99 10 08    ;
CODE_03F783:    BCS CODE_03F789         ; $03:F783: B0 04       ;
CODE_03F785:    LDA #$03                ; $03:F785: A9 03       ;
CODE_03F787:    BRA CODE_03F78B         ; $03:F787: 80 02       ;

CODE_03F789:    LDA #$02                ; $03:F789: A9 02       ;
CODE_03F78B:    STA $0C10,y             ; $03:F78B: 99 10 0C    ;
CODE_03F78E:    LDA $06D5               ; $03:F78E: AD D5 06    ;
CODE_03F791:    SEC                     ; $03:F791: 38          ;
CODE_03F792:    SBC #$28                ; $03:F792: E9 28       ;
CODE_03F794:    LSR A                   ; $03:F794: 4A          ;
CODE_03F795:    LSR A                   ; $03:F795: 4A          ;
CODE_03F796:    CLC                     ; $03:F796: 18          ;
CODE_03F797:    ADC #$08                ; $03:F797: 69 08       ;
CODE_03F799:    STA $0812,y             ; $03:F799: 99 12 08    ;
CODE_03F79C:    LDA $0819,y             ; $03:F79C: B9 19 08    ;
CODE_03F79F:    CMP #$F0                ; $03:F79F: C9 F0       ;
CODE_03F7A1:    BCC CODE_03F7A8         ; $03:F7A1: 90 05       ;
CODE_03F7A3:    LDA #$F0                ; $03:F7A3: A9 F0       ;
CODE_03F7A5:    STA $0811,y             ; $03:F7A5: 99 11 08    ;
CODE_03F7A8:    LDA #$F0                ; $03:F7A8: A9 F0       ;
CODE_03F7AA:    STA $0819,y             ; $03:F7AA: 99 19 08    ;
CODE_03F7AD:    PLX                     ; $03:F7AD: FA          ;
CODE_03F7AE:    RTS                     ; $03:F7AE: 60          ;

CODE_03F7AF:    JSR CODE_03FBA2         ; $03:F7AF: 20 A2 FB    ;
CODE_03F7B2:    BRA CODE_03F7BE         ; $03:F7B2: 80 0A       ;

CODE_03F7B4:    JSR CODE_03FC60         ; $03:F7B4: 20 60 FC    ;
CODE_03F7B7:    BRA CODE_03F7BE         ; $03:F7B7: 80 05       ;

CODE_03F7B9:    LDY #$0E                ; $03:F7B9: A0 0E       ;
CODE_03F7BB:    LDA DATA_03F62E,y       ; $03:F7BB: B9 2E F6    ;
CODE_03F7BE:    STA $06D5               ; $03:F7BE: 8D D5 06    ;
CODE_03F7C1:    LDA $03CE               ; $03:F7C1: AD CE 03    ;
CODE_03F7C4:    BNE CODE_03F7D9         ; $03:F7C4: D0 13       ;
CODE_03F7C6:    LDA $0218               ; $03:F7C6: AD 18 02    ;
CODE_03F7C9:    BEQ CODE_03F7DC         ; $03:F7C9: F0 11       ;
CODE_03F7CB:    LDA $0754               ; $03:F7CB: AD 54 07    ;
CODE_03F7CE:    BNE CODE_03F7D7         ; $03:F7CE: D0 07       ;
CODE_03F7D0:    LDA #$D8                ; $03:F7D0: A9 D8       ;
CODE_03F7D2:    STA $06D5               ; $03:F7D2: 8D D5 06    ;
CODE_03F7D5:    BRA CODE_03F7DC         ; $03:F7D5: 80 05       ;

CODE_03F7D7:    LDA #$E0                ; $03:F7D7: A9 E0       ;
CODE_03F7D9:    STA $06D5               ; $03:F7D9: 8D D5 06    ;
CODE_03F7DC:    LDA #$04                ; $03:F7DC: A9 04       ;
CODE_03F7DE:    JSR CODE_03FB58         ; $03:F7DE: 20 58 FB    ;
CODE_03F7E1:    JSR CODE_03FC99         ; $03:F7E1: 20 99 FC    ;
CODE_03F7E4:    LDA $02                 ; $03:F7E4: A5 02       ;
CODE_03F7E6:    CMP #$03                ; $03:F7E6: C9 03       ;
CODE_03F7E8:    BNE CODE_03F804         ; $03:F7E8: D0 1A       ;
CODE_03F7EA:    LDA $0219               ; $03:F7EA: AD 19 02    ;
CODE_03F7ED:    SEC                     ; $03:F7ED: 38          ;
CODE_03F7EE:    SBC $42                 ; $03:F7EE: E5 42       ;
CODE_03F7F0:    LDA $78                 ; $03:F7F0: A5 78       ;
CODE_03F7F2:    SBC $43                 ; $03:F7F2: E5 43       ;
CODE_03F7F4:    BEQ CODE_03F804         ; $03:F7F4: F0 0E       ;
CODE_03F7F6:    LDA #$01                ; $03:F7F6: A9 01       ;
CODE_03F7F8:    STA $0CD0               ; $03:F7F8: 8D D0 0C    ;
CODE_03F7FB:    STA $0CD8               ; $03:F7FB: 8D D8 0C    ;
CODE_03F7FE:    STA $0CE0               ; $03:F7FE: 8D E0 0C    ;
CODE_03F801:    STA $0CE8               ; $03:F801: 8D E8 0C    ;
CODE_03F804:    LDA $0711               ; $03:F804: AD 11 07    ;
CODE_03F807:    BEQ CODE_03F834         ; $03:F807: F0 2B       ;
CODE_03F809:    LDY #$00                ; $03:F809: A0 00       ;
CODE_03F80B:    LDA $0789               ; $03:F80B: AD 89 07    ;
CODE_03F80E:    CMP $0711               ; $03:F80E: CD 11 07    ;
CODE_03F811:    STY $0711               ; $03:F811: 8C 11 07    ;
CODE_03F814:    BCS CODE_03F834         ; $03:F814: B0 1E       ;
CODE_03F816:    STA $0711               ; $03:F816: 8D 11 07    ;
CODE_03F819:    LDA $28                 ; $03:F819: A5 28       ;
CODE_03F81B:    CMP #$01                ; $03:F81B: C9 01       ;
CODE_03F81D:    BEQ CODE_03F827         ; $03:F81D: F0 08       ;
CODE_03F81F:    LDY #$07                ; $03:F81F: A0 07       ;
CODE_03F821:    LDA DATA_03F62E,y       ; $03:F821: B9 2E F6    ;
CODE_03F824:    STA $06D5               ; $03:F824: 8D D5 06    ;
CODE_03F827:    LDY #$04                ; $03:F827: A0 04       ;
CODE_03F829:    LDA $5D                 ; $03:F829: A5 5D       ;
CODE_03F82B:    ORA $0C                 ; $03:F82B: 05 0C       ;
CODE_03F82D:    BEQ CODE_03F830         ; $03:F82D: F0 01       ;
CODE_03F82F:    DEY                     ; $03:F82F: 88          ;
CODE_03F830:    TYA                     ; $03:F830: 98          ;
CODE_03F831:    JSR CODE_03FB58         ; $03:F831: 20 58 FB    ;
CODE_03F834:    LDA $03D0               ; $03:F834: AD D0 03    ;
CODE_03F837:    LSR A                   ; $03:F837: 4A          ;
CODE_03F838:    LSR A                   ; $03:F838: 4A          ;
CODE_03F839:    LSR A                   ; $03:F839: 4A          ;
CODE_03F83A:    LSR A                   ; $03:F83A: 4A          ;
CODE_03F83B:    STA $00                 ; $03:F83B: 85 00       ;
CODE_03F83D:    LDX #$03                ; $03:F83D: A2 03       ;
CODE_03F83F:    LDA $0B45               ; $03:F83F: AD 45 0B    ;
CODE_03F842:    CLC                     ; $03:F842: 18          ;
CODE_03F843:    ADC #$18                ; $03:F843: 69 18       ;
CODE_03F845:    TAY                     ; $03:F845: A8          ;
CODE_03F846:    LDA #$F0                ; $03:F846: A9 F0       ;
CODE_03F848:    LSR $00                 ; $03:F848: 46 00       ;
CODE_03F84A:    BCC CODE_03F84F         ; $03:F84A: 90 03       ;
CODE_03F84C:    JSR CODE_03EC42         ; $03:F84C: 20 42 EC    ;
CODE_03F84F:    TYA                     ; $03:F84F: 98          ;
CODE_03F850:    SEC                     ; $03:F850: 38          ;
CODE_03F851:    SBC #$08                ; $03:F851: E9 08       ;
CODE_03F853:    TAY                     ; $03:F853: A8          ;
CODE_03F854:    DEX                     ; $03:F854: CA          ;
CODE_03F855:    BPL CODE_03F846         ; $03:F855: 10 EF       ;
CODE_03F857:    JSR CODE_03FCB6         ; $03:F857: 20 B6 FC    ;
CODE_03F85A:    RTS                     ; $03:F85A: 60          ;

DATA_03F85B:    db $40,$01,$2E,$60,$FF,$04                      ;

CODE_03F861:    JSR CODE_0385F3         ; $03:F861: 20 F3 85    ;
CODE_03F864:    LDA #$D0                ; $03:F864: A9 D0       ;
CODE_03F866:    STA $06D5               ; $03:F866: 8D D5 06    ;
CODE_03F869:    JSL CODE_04D800         ; $03:F869: 22 00 D8 04 ;
CODE_03F86D:    LDX #$05                ; $03:F86D: A2 05       ;
CODE_03F86F:    LDA DATA_03F85B,x       ; $03:F86F: BD 5B F8    ;
CODE_03F872:    STA $02,x               ; $03:F872: 95 02       ;
CODE_03F874:    DEX                     ; $03:F874: CA          ;
CODE_03F875:    BPL CODE_03F86F         ; $03:F875: 10 F8       ;
CODE_03F877:    LDX #$B8                ; $03:F877: A2 B8       ;
CODE_03F879:    LDY #$D0                ; $03:F879: A0 D0       ;
CODE_03F87B:    JSR CODE_03FB7E         ; $03:F87B: 20 7E FB    ;
CODE_03F87E:    JSR CODE_03F885         ; $03:F87E: 20 85 F8    ;
CODE_03F881:    JSR CODE_039FBD         ; $03:F881: 20 BD 9F    ;
CODE_03F884:    RTS                     ; $03:F884: 60          ;

CODE_03F885:    PHX                     ; $03:F885: DA          ;
CODE_03F886:    PHY                     ; $03:F886: 5A          ;
CODE_03F887:    LDA #$F0                ; $03:F887: A9 F0       ;
CODE_03F889:    STA $0801,y             ; $03:F889: 99 01 08    ;
CODE_03F88C:    STA $0901,y             ; $03:F88C: 99 01 09    ;
CODE_03F88F:    INY                     ; $03:F88F: C8          ;
CODE_03F890:    BNE CODE_03F889         ; $03:F890: D0 F7       ;
CODE_03F892:    JSR CODE_03F98F         ; $03:F892: 20 8F F9    ;
CODE_03F895:    LDX #$00                ; $03:F895: A2 00       ;
CODE_03F897:    LDA #$30                ; $03:F897: A9 30       ;
CODE_03F899:    STA $E2                 ; $03:F899: 85 E2       ;
CODE_03F89B:    JSR CODE_03F922         ; $03:F89B: 20 22 F9    ;
CODE_03F89E:    CMP #$02                ; $03:F89E: C9 02       ;
CODE_03F8A0:    BNE CODE_03F8DB         ; $03:F8A0: D0 39       ;
CODE_03F8A2:    LDA $1C,x               ; $03:F8A2: B5 1C       ;
CODE_03F8A4:    CMP #$16                ; $03:F8A4: C9 16       ;
CODE_03F8A6:    BEQ CODE_03F8CD         ; $03:F8A6: F0 25       ;
CODE_03F8A8:    PHY                     ; $03:F8A8: 5A          ;
CODE_03F8A9:    PHX                     ; $03:F8A9: DA          ;
CODE_03F8AA:    JSR CODE_03EF1E         ; $03:F8AA: 20 1E EF    ;
CODE_03F8AD:    PLX                     ; $03:F8AD: FA          ;
CODE_03F8AE:    LDA $0B46,x             ; $03:F8AE: BD 46 0B    ;
CODE_03F8B1:    TAY                     ; $03:F8B1: A8          ;
CODE_03F8B2:    LDA #$00                ; $03:F8B2: A9 00       ;
CODE_03F8B4:    STA $0D00,y             ; $03:F8B4: 99 00 0D    ;
CODE_03F8B7:    STA $0D04,y             ; $03:F8B7: 99 04 0D    ;
CODE_03F8BA:    STA $0D08,y             ; $03:F8BA: 99 08 0D    ;
CODE_03F8BD:    STA $0D0C,y             ; $03:F8BD: 99 0C 0D    ;
CODE_03F8C0:    STA $0D10,y             ; $03:F8C0: 99 10 0D    ;
CODE_03F8C3:    STA $0D14,y             ; $03:F8C3: 99 14 0D    ;
CODE_03F8C6:    LDA $43                 ; $03:F8C6: A5 43       ;
CODE_03F8C8:    STA $79,x               ; $03:F8C8: 95 79       ;
CODE_03F8CA:    PLY                     ; $03:F8CA: 7A          ;
CODE_03F8CB:    BRA CODE_03F8D2         ; $03:F8CB: 80 05       ;

CODE_03F8CD:    JSR CODE_03FA6E         ; $03:F8CD: 20 6E FA    ;
CODE_03F8D0:    BRA CODE_03F915         ; $03:F8D0: 80 43       ;

CODE_03F8D2:    LDA $1C,x               ; $03:F8D2: B5 1C       ;
CODE_03F8D4:    CMP #$12                ; $03:F8D4: C9 12       ;
CODE_03F8D6:    BNE CODE_03F8DB         ; $03:F8D6: D0 03       ;
CODE_03F8D8:    JSR CODE_03FA17         ; $03:F8D8: 20 17 FA    ;
CODE_03F8DB:    INY                     ; $03:F8DB: C8          ;
CODE_03F8DC:    INX                     ; $03:F8DC: E8          ;
CODE_03F8DD:    CPX #$05                ; $03:F8DD: E0 05       ;
CODE_03F8DF:    BNE CODE_03F89B         ; $03:F8DF: D0 BA       ;
CODE_03F8E1:    LDA $5C                 ; $03:F8E1: A5 5C       ;
CODE_03F8E3:    CMP #$03                ; $03:F8E3: C9 03       ;
CODE_03F8E5:    BEQ CODE_03F915         ; $03:F8E5: F0 2E       ;
CODE_03F8E7:    LDX #$00                ; $03:F8E7: A2 00       ;
CODE_03F8E9:    LDA $0902,x             ; $03:F8E9: BD 02 09    ;
CODE_03F8EC:    CMP $0906,x             ; $03:F8EC: DD 06 09    ;
CODE_03F8EF:    BNE CODE_03F903         ; $03:F8EF: D0 12       ;
CODE_03F8F1:    LDA $0903,x             ; $03:F8F1: BD 03 09    ;
CODE_03F8F4:    AND #$3F                ; $03:F8F4: 29 3F       ;
CODE_03F8F6:    STA $0903,x             ; $03:F8F6: 9D 03 09    ;
CODE_03F8F9:    LDA $0907,x             ; $03:F8F9: BD 07 09    ;
CODE_03F8FC:    ORA #$40                ; $03:F8FC: 09 40       ;
CODE_03F8FE:    STA $0907,x             ; $03:F8FE: 9D 07 09    ;
CODE_03F901:    BRA CODE_03F909         ; $03:F901: 80 06       ;

CODE_03F903:    LDA $0907,x             ; $03:F903: BD 07 09    ;
CODE_03F906:    STA $0903,x             ; $03:F906: 9D 03 09    ;
CODE_03F909:    INX                     ; $03:F909: E8          ;
CODE_03F90A:    INX                     ; $03:F90A: E8          ;
CODE_03F90B:    INX                     ; $03:F90B: E8          ;
CODE_03F90C:    INX                     ; $03:F90C: E8          ;
CODE_03F90D:    INX                     ; $03:F90D: E8          ;
CODE_03F90E:    INX                     ; $03:F90E: E8          ;
CODE_03F90F:    INX                     ; $03:F90F: E8          ;
CODE_03F910:    INX                     ; $03:F910: E8          ;
CODE_03F911:    CPX #$00                ; $03:F911: E0 00       ;
CODE_03F913:    BNE CODE_03F8E9         ; $03:F913: D0 D4       ;
CODE_03F915:    LDX #$04                ; $03:F915: A2 04       ;
CODE_03F917:    STZ $1C,x               ; $03:F917: 74 1C       ;
CODE_03F919:    DEX                     ; $03:F919: CA          ;
CODE_03F91A:    BPL CODE_03F917         ; $03:F91A: 10 FB       ;
CODE_03F91C:    STZ $0E85               ; $03:F91C: 9C 85 0E    ;
CODE_03F91F:    PLY                     ; $03:F91F: 7A          ;
CODE_03F920:    PLX                     ; $03:F920: FA          ;
CODE_03F921:    RTS                     ; $03:F921: 60          ;

CODE_03F922:    STZ $0E85               ; $03:F922: 9C 85 0E    ;
CODE_03F925:    LDA $07FC               ; $03:F925: AD FC 07    ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_03F928:    BEQ CODE_03F933         ; $03:F928: F0 09       ;
CODE_03F92A:    PHX                     ; $03:F92A: DA          ;
CODE_03F92B:    TYX                     ; $03:F92B: BB          ;
CODE_03F92C:    LDA.l DATA_05EC41,x     ; $03:F92C: BF 41 EC 05 ;
CODE_03F930:    PLX                     ; $03:F930: FA          ;
CODE_03F931:    BRA CODE_03F93A         ; $03:F931: 80 07       ;

CODE_03F933:    PHX                     ; $03:F933: DA          ;
CODE_03F934:    TYX                     ; $03:F934: BB          ;
CODE_03F935:    LDA.l DATA_05EB9C,x     ; $03:F935: BF 9C EB 05 ;
CODE_03F939:    PLX                     ; $03:F939: FA          ;
CODE_03F93A:    CMP #$FF                ; $03:F93A: C9 FF       ;
CODE_03F93C:    BNE CODE_03F948         ; $03:F93C: D0 0A       ;
CODE_03F93E:    LDA $E2                 ; $03:F93E: A5 E2       ;
CODE_03F940:    CLC                     ; $03:F940: 18          ;
CODE_03F941:    ADC #$18                ; $03:F941: 69 18       ;
CODE_03F943:    STA $E2                 ; $03:F943: 85 E2       ;
CODE_03F945:    JMP CODE_03F98E         ; $03:F945: 4C 8E F9    ;

CODE_03F948:    STZ $00BC,x             ; $03:F948: 9E BC 00    ;
CODE_03F94B:    STA $1C,x               ; $03:F94B: 95 1C       ;
CODE_03F94D:    CMP #$0E                ; $03:F94D: C9 0E       ;
CODE_03F94F:    BEQ CODE_03F965         ; $03:F94F: F0 14       ;
CODE_03F951:    CMP #$0F                ; $03:F951: C9 0F       ;
CODE_03F953:    BEQ CODE_03F965         ; $03:F953: F0 10       ;
CODE_03F955:    CMP #$10                ; $03:F955: C9 10       ;
CODE_03F957:    BEQ CODE_03F965         ; $03:F957: F0 0C       ;
CODE_03F959:    CMP #$14                ; $03:F959: C9 14       ;
CODE_03F95B:    BEQ CODE_03F965         ; $03:F95B: F0 08       ;
CODE_03F95D:    CMP #$08                ; $03:F95D: C9 08       ;
CODE_03F95F:    BEQ CODE_03F965         ; $03:F95F: F0 04       ;
CODE_03F961:    LDA #$98                ; $03:F961: A9 98       ;
CODE_03F963:    BRA CODE_03F967         ; $03:F963: 80 02       ;

CODE_03F965:    LDA #$88                ; $03:F965: A9 88       ;
CODE_03F967:    STA $0238,x             ; $03:F967: 9D 38 02    ;
CODE_03F96A:    LDA $E2                 ; $03:F96A: A5 E2       ;
CODE_03F96C:    CLC                     ; $03:F96C: 18          ;
CODE_03F96D:    ADC #$18                ; $03:F96D: 69 18       ;
CODE_03F96F:    STA $E2                 ; $03:F96F: 85 E2       ;
CODE_03F971:    STA $03AE               ; $03:F971: 8D AE 03    ;
CODE_03F974:    LDA #$20                ; $03:F974: A9 20       ;
CODE_03F976:    STA $0257,x             ; $03:F976: 9D 57 02    ;
CODE_03F979:    PHX                     ; $03:F979: DA          ;
CODE_03F97A:    TYX                     ; $03:F97A: BB          ;
CODE_03F97B:    LDA.l DATA_05EB9C,x     ; $03:F97B: BF 9C EB 05 ;
CODE_03F97F:    PLX                     ; $03:F97F: FA          ;
CODE_03F980:    CMP #$05                ; $03:F980: C9 05       ;
CODE_03F982:    BNE CODE_03F98A         ; $03:F982: D0 06       ;
CODE_03F984:    STA $0E85               ; $03:F984: 8D 85 0E    ;
CODE_03F987:    JSR CODE_03FB36         ; $03:F987: 20 36 FB    ;
CODE_03F98A:    LDA #$02                ; $03:F98A: A9 02       ;
CODE_03F98C:    STA $47,x               ; $03:F98C: 95 47       ;
CODE_03F98E:    RTS                     ; $03:F98E: 60          ;

CODE_03F98F:    LDA $075F               ; $03:F98F: AD 5F 07    ;
CODE_03F992:    ASL A                   ; $03:F992: 0A          ;
CODE_03F993:    ASL A                   ; $03:F993: 0A          ;
CODE_03F994:    CLC                     ; $03:F994: 18          ;
CODE_03F995:    ADC $075F               ; $03:F995: 6D 5F 07    ;
CODE_03F998:    CLC                     ; $03:F998: 18          ;
CODE_03F999:    ADC $0760               ; $03:F999: 6D 60 07    ;
CODE_03F99C:    TAX                     ; $03:F99C: AA          ;
CODE_03F99D:    LDA.l DATA_05ECE6,x     ; $03:F99D: BF E6 EC 05 ;
CODE_03F9A1:    STA $0E22               ; $03:F9A1: 8D 22 0E    ;
CODE_03F9A4:    LDA.l DATA_05ED13,x     ; $03:F9A4: BF 13 ED 05 ;
CODE_03F9A8:    STA $0E21               ; $03:F9A8: 8D 21 0E    ;
CODE_03F9AB:    LDA $0E21               ; $03:F9AB: AD 21 0E    ;
CODE_03F9AE:    ASL A                   ; $03:F9AE: 0A          ;
CODE_03F9AF:    ASL A                   ; $03:F9AF: 0A          ;
CODE_03F9B0:    CLC                     ; $03:F9B0: 18          ;
CODE_03F9B1:    ADC $0E21               ; $03:F9B1: 6D 21 0E    ;
CODE_03F9B4:    TAY                     ; $03:F9B4: A8          ;
CODE_03F9B5:    LDA $071C               ; $03:F9B5: AD 1C 07    ;
CODE_03F9B8:    STA $9C                 ; $03:F9B8: 85 9C       ;
CODE_03F9BA:    LDA $071A               ; $03:F9BA: AD 1A 07    ;
CODE_03F9BD:    STA $9D                 ; $03:F9BD: 85 9D       ;
CODE_03F9BF:    INC $9B                 ; $03:F9BF: E6 9B       ;
CODE_03F9C1:    STZ $071A               ; $03:F9C1: 9C 1A 07    ;
CODE_03F9C4:    STZ $073F               ; $03:F9C4: 9C 3F 07    ;
CODE_03F9C7:    STZ $0EFD               ; $03:F9C7: 9C FD 0E    ;
CODE_03F9CA:    STZ $0EFE               ; $03:F9CA: 9C FE 0E    ;
CODE_03F9CD:    STZ $0EEE               ; $03:F9CD: 9C EE 0E    ;
CODE_03F9D0:    STZ $0EEF               ; $03:F9D0: 9C EF 0E    ;
CODE_03F9D3:    STZ $210D               ; $03:F9D3: 9C 0D 21    ;
CODE_03F9D6:    STZ $210D               ; $03:F9D6: 9C 0D 21    ;
CODE_03F9D9:    STZ $210F               ; $03:F9D9: 9C 0F 21    ;
CODE_03F9DC:    STZ $210F               ; $03:F9DC: 9C 0F 21    ;
CODE_03F9DF:    STZ $2111               ; $03:F9DF: 9C 11 21    ;
CODE_03F9E2:    STZ $2111               ; $03:F9E2: 9C 11 21    ;
CODE_03F9E5:    RTS                     ; $03:F9E5: 60          ;

DATA_03F9E6:    db $DC,$DC,$DD,$DD,$DE,$DE                      ;immediate data table

CODE_03F9EC:    LDA DATA_03F9E6         ; $03:F9EC: AD E6 F9    ;
CODE_03F9EF:    STA $0962               ; $03:F9EF: 8D 62 09    ;
CODE_03F9F2:    LDA DATA_03F9E6+1       ; $03:F9F2: AD E7 F9    ;
CODE_03F9F5:    STA $0966               ; $03:F9F5: 8D 66 09    ;
CODE_03F9F8:    LDA DATA_03F9E6+2       ; $03:F9F8: AD E8 F9    ;
CODE_03F9FB:    STA $096A               ; $03:F9FB: 8D 6A 09    ;
CODE_03F9FE:    LDA DATA_03F9E6+3       ; $03:F9FE: AD E9 F9    ;
CODE_03FA01:    STA $096E               ; $03:FA01: 8D 6E 09    ;
CODE_03FA04:    LDA DATA_03F9E6+4       ; $03:FA04: AD EA F9    ;
CODE_03FA07:    STA $0972               ; $03:FA07: 8D 72 09    ;
CODE_03FA0A:    LDA DATA_03F9E6+5       ; $03:FA0A: AD EB F9    ;
CODE_03FA0D:    STA $0976               ; $03:FA0D: 8D 76 09    ;
CODE_03FA10:    RTS                     ; $03:FA10: 60          ;

DATA_03FA11:    db $B9,$B8,$BB,$BA,$BC,$BC                      ;

CODE_03FA17:    PHY                     ; $03:FA17: 5A          ;
CODE_03FA18:    LDA #$03                ; $03:FA18: A9 03       ;
CODE_03FA1A:    STA $03                 ; $03:FA1A: 85 03       ;
CODE_03FA1C:    LDA $0238,x             ; $03:FA1C: BD 38 02    ;
CODE_03FA1F:    SEC                     ; $03:FA1F: 38          ;
CODE_03FA20:    SBC #$28                ; $03:FA20: E9 28       ;
CODE_03FA22:    STA $0238,x             ; $03:FA22: 9D 38 02    ;
CODE_03FA25:    STZ $E3                 ; $03:FA25: 64 E3       ;
CODE_03FA27:    LDY #$00                ; $03:FA27: A0 00       ;
CODE_03FA29:    LDA $03AE               ; $03:FA29: AD AE 03    ;
CODE_03FA2C:    STA $0990,y             ; $03:FA2C: 99 90 09    ;
CODE_03FA2F:    CLC                     ; $03:FA2F: 18          ;
CODE_03FA30:    ADC #$08                ; $03:FA30: 69 08       ;
CODE_03FA32:    STA $0994,y             ; $03:FA32: 99 94 09    ;
CODE_03FA35:    LDA $0238,x             ; $03:FA35: BD 38 02    ;
CODE_03FA38:    STA $0991,y             ; $03:FA38: 99 91 09    ;
CODE_03FA3B:    STA $0995,y             ; $03:FA3B: 99 95 09    ;
CODE_03FA3E:    CLC                     ; $03:FA3E: 18          ;
CODE_03FA3F:    ADC #$08                ; $03:FA3F: 69 08       ;
CODE_03FA41:    STA $0238,x             ; $03:FA41: 9D 38 02    ;
CODE_03FA44:    LDA #$2A                ; $03:FA44: A9 2A       ;
CODE_03FA46:    STA $0993,y             ; $03:FA46: 99 93 09    ;
CODE_03FA49:    STA $0997,y             ; $03:FA49: 99 97 09    ;
CODE_03FA4C:    PHX                     ; $03:FA4C: DA          ;
CODE_03FA4D:    LDX $E3                 ; $03:FA4D: A6 E3       ;
CODE_03FA4F:    LDA DATA_03FA11,x       ; $03:FA4F: BD 11 FA    ;
CODE_03FA52:    STA $0992,y             ; $03:FA52: 99 92 09    ;
CODE_03FA55:    LDA DATA_03FA11+1,x     ; $03:FA55: BD 12 FA    ;
CODE_03FA58:    STA $0996,y             ; $03:FA58: 99 96 09    ;
CODE_03FA5B:    INC $E3                 ; $03:FA5B: E6 E3       ;
CODE_03FA5D:    INC $E3                 ; $03:FA5D: E6 E3       ;
CODE_03FA5F:    PLX                     ; $03:FA5F: FA          ;
CODE_03FA60:    INY                     ; $03:FA60: C8          ;
CODE_03FA61:    INY                     ; $03:FA61: C8          ;
CODE_03FA62:    INY                     ; $03:FA62: C8          ;
CODE_03FA63:    INY                     ; $03:FA63: C8          ;
CODE_03FA64:    INY                     ; $03:FA64: C8          ;
CODE_03FA65:    INY                     ; $03:FA65: C8          ;
CODE_03FA66:    INY                     ; $03:FA66: C8          ;
CODE_03FA67:    INY                     ; $03:FA67: C8          ;
CODE_03FA68:    DEC $03                 ; $03:FA68: C6 03       ;
CODE_03FA6A:    BNE CODE_03FA29         ; $03:FA6A: D0 BD       ;
CODE_03FA6C:    PLY                     ; $03:FA6C: 7A          ;
CODE_03FA6D:    RTS                     ; $03:FA6D: 60          ;

CODE_03FA6E:    PHY                     ; $03:FA6E: 5A          ;
CODE_03FA6F:    PHX                     ; $03:FA6F: DA          ;
CODE_03FA70:    LDA $0238,x             ; $03:FA70: BD 38 02    ;
CODE_03FA73:    STA $03B9               ; $03:FA73: 8D B9 03    ;
CODE_03FA76:    SEC                     ; $03:FA76: 38          ;
CODE_03FA77:    SBC #$08                ; $03:FA77: E9 08       ;
CODE_03FA79:    STA $03B9               ; $03:FA79: 8D B9 03    ;
CODE_03FA7C:    LDA $03AE               ; $03:FA7C: AD AE 03    ;
CODE_03FA7F:    SEC                     ; $03:FA7F: 38          ;
CODE_03FA80:    SBC #$10                ; $03:FA80: E9 10       ;
CODE_03FA82:    STA $03AE               ; $03:FA82: 8D AE 03    ;
CODE_03FA85:    LDY #$90                ; $03:FA85: A0 90       ;
CODE_03FA87:    LDX #$00                ; $03:FA87: A2 00       ;
CODE_03FA89:    LDA $03AE               ; $03:FA89: AD AE 03    ;
CODE_03FA8C:    STA $0900,y             ; $03:FA8C: 99 00 09    ;
CODE_03FA8F:    STA $0908,y             ; $03:FA8F: 99 08 09    ;
CODE_03FA92:    CLC                     ; $03:FA92: 18          ;
CODE_03FA93:    ADC #$08                ; $03:FA93: 69 08       ;
CODE_03FA95:    STA $0910,y             ; $03:FA95: 99 10 09    ;
CODE_03FA98:    CLC                     ; $03:FA98: 18          ;
CODE_03FA99:    ADC #$08                ; $03:FA99: 69 08       ;
CODE_03FA9B:    STA $0904,y             ; $03:FA9B: 99 04 09    ;
CODE_03FA9E:    STA $090C,y             ; $03:FA9E: 99 0C 09    ;
CODE_03FAA1:    STA $0914,y             ; $03:FAA1: 99 14 09    ;
CODE_03FAA4:    LDA $03B9               ; $03:FAA4: AD B9 03    ;
CODE_03FAA7:    STA $0901,y             ; $03:FAA7: 99 01 09    ;
CODE_03FAAA:    STA $0905,y             ; $03:FAAA: 99 05 09    ;
CODE_03FAAD:    CLC                     ; $03:FAAD: 18          ;
CODE_03FAAE:    ADC #$10                ; $03:FAAE: 69 10       ;
CODE_03FAB0:    STA $0909,y             ; $03:FAB0: 99 09 09    ;
CODE_03FAB3:    STA $090D,y             ; $03:FAB3: 99 0D 09    ;
CODE_03FAB6:    SEC                     ; $03:FAB6: 38          ;
CODE_03FAB7:    SBC #$18                ; $03:FAB7: E9 18       ;
CODE_03FAB9:    STA $0911,y             ; $03:FAB9: 99 11 09    ;
CODE_03FABC:    STA $0915,y             ; $03:FABC: 99 15 09    ;
CODE_03FABF:    LDA #$00                ; $03:FABF: A9 00       ;
CODE_03FAC1:    STA $0C10,y             ; $03:FAC1: 99 10 0C    ;
CODE_03FAC4:    STA $0C14,y             ; $03:FAC4: 99 14 0C    ;
CODE_03FAC7:    LDA #$02                ; $03:FAC7: A9 02       ;
CODE_03FAC9:    STA $0D00,y             ; $03:FAC9: 99 00 0D    ;
CODE_03FACC:    STA $0D04,y             ; $03:FACC: 99 04 0D    ;
CODE_03FACF:    STA $0D08,y             ; $03:FACF: 99 08 0D    ;
CODE_03FAD2:    STA $0D0C,y             ; $03:FAD2: 99 0C 0D    ;
CODE_03FAD5:    LDA #$61                ; $03:FAD5: A9 61       ;
CODE_03FAD7:    STA $0903,y             ; $03:FAD7: 99 03 09    ;
CODE_03FADA:    STA $0907,y             ; $03:FADA: 99 07 09    ;
CODE_03FADD:    STA $090B,y             ; $03:FADD: 99 0B 09    ;
CODE_03FAE0:    STA $090F,y             ; $03:FAE0: 99 0F 09    ;
CODE_03FAE3:    STA $0913,y             ; $03:FAE3: 99 13 09    ;
CODE_03FAE6:    STA $0917,y             ; $03:FAE6: 99 17 09    ;
CODE_03FAE9:    LDA #$C5                ; $03:FAE9: A9 C5       ;
CODE_03FAEB:    STA $0912,y             ; $03:FAEB: 99 12 09    ;
CODE_03FAEE:    LDA #$C4                ; $03:FAEE: A9 C4       ;
CODE_03FAF0:    STA $0916,y             ; $03:FAF0: 99 16 09    ;
CODE_03FAF3:    LDA #$EE                ; $03:FAF3: A9 EE       ;
CODE_03FAF5:    STA $0902,y             ; $03:FAF5: 99 02 09    ;
CODE_03FAF8:    LDA #$C0                ; $03:FAF8: A9 C0       ;
CODE_03FAFA:    STA $0906,y             ; $03:FAFA: 99 06 09    ;
CODE_03FAFD:    LDA #$E2                ; $03:FAFD: A9 E2       ;
CODE_03FAFF:    STA $090A,y             ; $03:FAFF: 99 0A 09    ;
CODE_03FB02:    LDA #$E0                ; $03:FB02: A9 E0       ;
CODE_03FB04:    STA $090E,y             ; $03:FB04: 99 0E 09    ;
CODE_03FB07:    LDA #$70                ; $03:FB07: A9 70       ;
CODE_03FB09:    STA $09F0               ; $03:FB09: 8D F0 09    ;
CODE_03FB0C:    LDA #$78                ; $03:FB0C: A9 78       ;
CODE_03FB0E:    STA $09F4               ; $03:FB0E: 8D F4 09    ;
CODE_03FB11:    LDA #$98                ; $03:FB11: A9 98       ;
CODE_03FB13:    STA $09F1               ; $03:FB13: 8D F1 09    ;
CODE_03FB16:    STA $09F5               ; $03:FB16: 8D F5 09    ;
CODE_03FB19:    LDA #$86                ; $03:FB19: A9 86       ;
CODE_03FB1B:    STA $09F2               ; $03:FB1B: 8D F2 09    ;
CODE_03FB1E:    LDA #$87                ; $03:FB1E: A9 87       ;
CODE_03FB20:    STA $09F6               ; $03:FB20: 8D F6 09    ;
CODE_03FB23:    LDA #$21                ; $03:FB23: A9 21       ;
CODE_03FB25:    STA $09F3               ; $03:FB25: 8D F3 09    ;
CODE_03FB28:    STA $09F7               ; $03:FB28: 8D F7 09    ;
CODE_03FB2B:    LDA #$02                ; $03:FB2B: A9 02       ;
CODE_03FB2D:    STA $0DF0               ; $03:FB2D: 8D F0 0D    ;
CODE_03FB30:    STA $0DF4               ; $03:FB30: 8D F4 0D    ;
CODE_03FB33:    PLX                     ; $03:FB33: FA          ;
CODE_03FB34:    PLY                     ; $03:FB34: 7A          ;
CODE_03FB35:    RTS                     ; $03:FB35: 60          ;

CODE_03FB36:    LDA $0238,x             ; $03:FB36: BD 38 02    ;
CODE_03FB39:    SEC                     ; $03:FB39: 38          ;
CODE_03FB3A:    SBC #$0A                ; $03:FB3A: E9 0A       ;
CODE_03FB3C:    STA $0881               ; $03:FB3C: 8D 81 08    ;
CODE_03FB3F:    LDA $03AE               ; $03:FB3F: AD AE 03    ;
CODE_03FB42:    CLC                     ; $03:FB42: 18          ;
CODE_03FB43:    ADC #$03                ; $03:FB43: 69 03       ;
CODE_03FB45:    STA $0880               ; $03:FB45: 8D 80 08    ;
CODE_03FB48:    LDA #$2A                ; $03:FB48: A9 2A       ;
CODE_03FB4A:    STA $0883               ; $03:FB4A: 8D 83 08    ;
CODE_03FB4D:    LDA #$44                ; $03:FB4D: A9 44       ;
CODE_03FB4F:    STA $0882               ; $03:FB4F: 8D 82 08    ;
CODE_03FB52:    LDA #$02                ; $03:FB52: A9 02       ;
CODE_03FB54:    STA $0C80               ; $03:FB54: 8D 80 0C    ;
CODE_03FB57:    RTS                     ; $03:FB57: 60          ;

CODE_03FB58:    STA $07                 ; $03:FB58: 85 07       ;
CODE_03FB5A:    LDA $03AD               ; $03:FB5A: AD AD 03    ;
CODE_03FB5D:    STA $0755               ; $03:FB5D: 8D 55 07    ;
CODE_03FB60:    STA $05                 ; $03:FB60: 85 05       ;
CODE_03FB62:    LDA $03B8               ; $03:FB62: AD B8 03    ;
CODE_03FB65:    STA $02                 ; $03:FB65: 85 02       ;
CODE_03FB67:    LDA $0202               ; $03:FB67: AD 02 02    ;
CODE_03FB6A:    STA $03                 ; $03:FB6A: 85 03       ;
CODE_03FB6C:    JSL CODE_04D800         ; $03:FB6C: 22 00 D8 04 ;
CODE_03FB70:    LDA $06D5               ; $03:FB70: AD D5 06    ;
CODE_03FB73:    AND #$07                ; $03:FB73: 29 07       ;
CODE_03FB75:    TAX                     ; $03:FB75: AA          ;
CODE_03FB76:    LDA $0256               ; $03:FB76: AD 56 02    ;
CODE_03FB79:    STA $04                 ; $03:FB79: 85 04       ;
CODE_03FB7B:    LDY $0B45               ; $03:FB7B: AC 45 0B    ;
CODE_03FB7E:    LDA DATA_03F63E,x       ; $03:FB7E: BD 3E F6    ;
CODE_03FB81:    STA $00                 ; $03:FB81: 85 00       ;
CODE_03FB83:    LDA DATA_03F63E+1,x     ; $03:FB83: BD 3F F6    ;
CODE_03FB86:    JSR CODE_03F30E         ; $03:FB86: 20 0E F3    ;
CODE_03FB89:    DEC $07                 ; $03:FB89: C6 07       ;
CODE_03FB8B:    BNE CODE_03FB7E         ; $03:FB8B: D0 F1       ;
CODE_03FB8D:    LDA $05                 ; $03:FB8D: A5 05       ;
CODE_03FB8F:    CMP #$F8                ; $03:FB8F: C9 F8       ;
CODE_03FB91:    BCC CODE_03FBA1         ; $03:FB91: 90 0E       ;
CODE_03FB93:    LDA #$01                ; $03:FB93: A9 01       ;
CODE_03FB95:    STA $0CD0               ; $03:FB95: 8D D0 0C    ;
CODE_03FB98:    STA $0CD8               ; $03:FB98: 8D D8 0C    ;
CODE_03FB9B:    STA $0CE0               ; $03:FB9B: 8D E0 0C    ;
CODE_03FB9E:    STA $0CE8               ; $03:FB9E: 8D E8 0C    ;
CODE_03FBA1:    RTS                     ; $03:FBA1: 60          ;

CODE_03FBA2:    LDA $28                 ; $03:FBA2: A5 28       ;
CODE_03FBA4:    CMP #$03                ; $03:FBA4: C9 03       ;
CODE_03FBA6:    BEQ CODE_03FBF6         ; $03:FBA6: F0 4E       ;
CODE_03FBA8:    CMP #$02                ; $03:FBA8: C9 02       ;
CODE_03FBAA:    BEQ CODE_03FBE8         ; $03:FBAA: F0 3C       ;
CODE_03FBAC:    CMP #$01                ; $03:FBAC: C9 01       ;
CODE_03FBAE:    BNE CODE_03FBC0         ; $03:FBAE: D0 10       ;
CODE_03FBB0:    LDA $0704               ; $03:FBB0: AD 04 07    ;
CODE_03FBB3:    BNE CODE_03FC01         ; $03:FBB3: D0 4C       ;
CODE_03FBB5:    LDY #$06                ; $03:FBB5: A0 06       ;
CODE_03FBB7:    LDA $0714               ; $03:FBB7: AD 14 07    ;
CODE_03FBBA:    BNE CODE_03FBDE         ; $03:FBBA: D0 22       ;
CODE_03FBBC:    LDY #$00                ; $03:FBBC: A0 00       ;
CODE_03FBBE:    BRA CODE_03FBDE         ; $03:FBBE: 80 1E       ;

CODE_03FBC0:    LDY #$06                ; $03:FBC0: A0 06       ;
CODE_03FBC2:    LDA $0714               ; $03:FBC2: AD 14 07    ;
CODE_03FBC5:    BNE CODE_03FBDE         ; $03:FBC5: D0 17       ;
CODE_03FBC7:    LDY #$02                ; $03:FBC7: A0 02       ;
CODE_03FBC9:    LDA $5D                 ; $03:FBC9: A5 5D       ;
CODE_03FBCB:    ORA $0C                 ; $03:FBCB: 05 0C       ;
CODE_03FBCD:    BEQ CODE_03FBDE         ; $03:FBCD: F0 0F       ;
CODE_03FBCF:    LDA $0700               ; $03:FBCF: AD 00 07    ;
CODE_03FBD2:    CMP #$09                ; $03:FBD2: C9 09       ;
CODE_03FBD4:    BCC CODE_03FBEF         ; $03:FBD4: 90 19       ;
CODE_03FBD6:    LDA $46                 ; $03:FBD6: A5 46       ;
CODE_03FBD8:    AND $0202               ; $03:FBD8: 2D 02 02    ;
CODE_03FBDB:    BNE CODE_03FBEF         ; $03:FBDB: D0 12       ;
CODE_03FBDD:    INY                     ; $03:FBDD: C8          ;
CODE_03FBDE:    JSR CODE_03FC41         ; $03:FBDE: 20 41 FC    ;
CODE_03FBE1:    STZ $070D               ; $03:FBE1: 9C 0D 07    ;
CODE_03FBE4:    LDA DATA_03F62E,y       ; $03:FBE4: B9 2E F6    ;
CODE_03FBE7:    RTS                     ; $03:FBE7: 60          ;

CODE_03FBE8:    LDY #$04                ; $03:FBE8: A0 04       ;
CODE_03FBEA:    JSR CODE_03FC41         ; $03:FBEA: 20 41 FC    ;
CODE_03FBED:    BRA CODE_03FC13         ; $03:FBED: 80 24       ;

CODE_03FBEF:    LDY #$04                ; $03:FBEF: A0 04       ;
CODE_03FBF1:    JSR CODE_03FC41         ; $03:FBF1: 20 41 FC    ;
CODE_03FBF4:    BRA CODE_03FC19         ; $03:FBF4: 80 23       ;

CODE_03FBF6:    LDY #$05                ; $03:FBF6: A0 05       ;
CODE_03FBF8:    LDA $A0                 ; $03:FBF8: A5 A0       ;
CODE_03FBFA:    BEQ CODE_03FBDE         ; $03:FBFA: F0 E2       ;
CODE_03FBFC:    JSR CODE_03FC41         ; $03:FBFC: 20 41 FC    ;
CODE_03FBFF:    BRA CODE_03FC1D         ; $03:FBFF: 80 1C       ;

CODE_03FC01:    LDY #$01                ; $03:FC01: A0 01       ;
CODE_03FC03:    JSR CODE_03FC41         ; $03:FC03: 20 41 FC    ;
CODE_03FC06:    LDA $078A               ; $03:FC06: AD 8A 07    ;
CODE_03FC09:    ORA $070D               ; $03:FC09: 0D 0D 07    ;
CODE_03FC0C:    BNE CODE_03FC19         ; $03:FC0C: D0 0B       ;
CODE_03FC0E:    LDA $0A                 ; $03:FC0E: A5 0A       ;
CODE_03FC10:    ASL A                   ; $03:FC10: 0A          ;
CODE_03FC11:    BCS CODE_03FC19         ; $03:FC11: B0 06       ;
CODE_03FC13:    LDA $070D               ; $03:FC13: AD 0D 07    ;
CODE_03FC16:    JMP CODE_03FC80         ; $03:FC16: 4C 80 FC    ;

CODE_03FC19:    LDA #$03                ; $03:FC19: A9 03       ;
CODE_03FC1B:    BRA CODE_03FC1F         ; $03:FC1B: 80 02       ;

CODE_03FC1D:    LDA #$02                ; $03:FC1D: A9 02       ;
CODE_03FC1F:    STA $00                 ; $03:FC1F: 85 00       ;
CODE_03FC21:    JSR CODE_03FC13         ; $03:FC21: 20 13 FC    ;
CODE_03FC24:    PHA                     ; $03:FC24: 48          ;
CODE_03FC25:    LDA $0789               ; $03:FC25: AD 89 07    ;
CODE_03FC28:    BNE CODE_03FC3F         ; $03:FC28: D0 15       ;
CODE_03FC2A:    LDA $070C               ; $03:FC2A: AD 0C 07    ;
CODE_03FC2D:    STA $0789               ; $03:FC2D: 8D 89 07    ;
CODE_03FC30:    LDA $070D               ; $03:FC30: AD 0D 07    ;
CODE_03FC33:    CLC                     ; $03:FC33: 18          ;
CODE_03FC34:    ADC #$01                ; $03:FC34: 69 01       ;
CODE_03FC36:    CMP $00                 ; $03:FC36: C5 00       ;
CODE_03FC38:    BCC CODE_03FC3C         ; $03:FC38: 90 02       ;
CODE_03FC3A:    LDA #$00                ; $03:FC3A: A9 00       ;
CODE_03FC3C:    STA $070D               ; $03:FC3C: 8D 0D 07    ;
CODE_03FC3F:    PLA                     ; $03:FC3F: 68          ;
CODE_03FC40:    RTS                     ; $03:FC40: 60          ;

CODE_03FC41:    LDA $0754               ; $03:FC41: AD 54 07    ;
CODE_03FC44:    BEQ CODE_03FC4B         ; $03:FC44: F0 05       ;
CODE_03FC46:    TYA                     ; $03:FC46: 98          ;
CODE_03FC47:    CLC                     ; $03:FC47: 18          ;
CODE_03FC48:    ADC #$08                ; $03:FC48: 69 08       ;
CODE_03FC4A:    TAY                     ; $03:FC4A: A8          ;
CODE_03FC4B:    RTS                     ; $03:FC4B: 60          ;

DATA_03FC4C:    db $00,$01,$00,$01,$00,$01,$02,$00              ;
                db $01,$02,$02,$00,$02,$00,$02,$00              ;
                db $02,$00,$02,$00                              ;

CODE_03FC60:    LDY $070D               ; $03:FC60: AC 0D 07    ;
CODE_03FC63:    LDA $09                 ; $03:FC63: A5 09       ;
CODE_03FC65:    AND #$03                ; $03:FC65: 29 03       ;
CODE_03FC67:    BNE CODE_03FC76         ; $03:FC67: D0 0D       ;
CODE_03FC69:    INY                     ; $03:FC69: C8          ;
CODE_03FC6A:    CPY #$0A                ; $03:FC6A: C0 0A       ;
CODE_03FC6C:    BCC CODE_03FC73         ; $03:FC6C: 90 05       ;
CODE_03FC6E:    LDY #$00                ; $03:FC6E: A0 00       ;
CODE_03FC70:    STY $070B               ; $03:FC70: 8C 0B 07    ;
CODE_03FC73:    STY $070D               ; $03:FC73: 8C 0D 07    ;
CODE_03FC76:    LDA $0754               ; $03:FC76: AD 54 07    ;
CODE_03FC79:    BNE CODE_03FC87         ; $03:FC79: D0 0C       ;
CODE_03FC7B:    LDA DATA_03FC4C,y       ; $03:FC7B: B9 4C FC    ;
CODE_03FC7E:    LDY #$0F                ; $03:FC7E: A0 0F       ;
CODE_03FC80:    ASL A                   ; $03:FC80: 0A          ;
CODE_03FC81:    ASL A                   ; $03:FC81: 0A          ;
CODE_03FC82:    ASL A                   ; $03:FC82: 0A          ;
CODE_03FC83:    ADC DATA_03F62E,y       ; $03:FC83: 79 2E F6    ;
CODE_03FC86:    RTS                     ; $03:FC86: 60          ;

CODE_03FC87:    TYA                     ; $03:FC87: 98          ;
CODE_03FC88:    CLC                     ; $03:FC88: 18          ;
CODE_03FC89:    ADC #$0A                ; $03:FC89: 69 0A       ;
CODE_03FC8B:    TAX                     ; $03:FC8B: AA          ;
CODE_03FC8C:    LDY #$09                ; $03:FC8C: A0 09       ;
CODE_03FC8E:    LDA DATA_03FC4C,x       ; $03:FC8E: BD 4C FC    ;
CODE_03FC91:    BNE CODE_03FC95         ; $03:FC91: D0 02       ;
CODE_03FC93:    LDY #$01                ; $03:FC93: A0 01       ;
CODE_03FC95:    LDA DATA_03F62E,y       ; $03:FC95: B9 2E F6    ;
CODE_03FC98:    RTS                     ; $03:FC98: 60          ;

CODE_03FC99:    LDY $0B45               ; $03:FC99: AC 45 0B    ;
CODE_03FC9C:    LDA $0F                 ; $03:FC9C: A5 0F       ;
CODE_03FC9E:    CMP #$0B                ; $03:FC9E: C9 0B       ;
CODE_03FCA0:    BEQ CODE_03FCB5         ; $03:FCA0: F0 13       ;
CODE_03FCA2:    LDA $06D5               ; $03:FCA2: AD D5 06    ;
CODE_03FCA5:    CMP #$50                ; $03:FCA5: C9 50       ;
CODE_03FCA7:    BEQ CODE_03FCB5         ; $03:FCA7: F0 0C       ;
CODE_03FCA9:    CMP #$B8                ; $03:FCA9: C9 B8       ;
CODE_03FCAB:    BEQ CODE_03FCB5         ; $03:FCAB: F0 08       ;
CODE_03FCAD:    CMP #$C0                ; $03:FCAD: C9 C0       ;
CODE_03FCAF:    BEQ CODE_03FCB5         ; $03:FCAF: F0 04       ;
CODE_03FCB1:    CMP #$C8                ; $03:FCB1: C9 C8       ;
CODE_03FCB3:    BNE CODE_03FCB5         ; $03:FCB3: D0 00       ;
CODE_03FCB5:    RTS                     ; $03:FCB5: 60          ;

CODE_03FCB6:    LDA $0E4E               ; $03:FCB6: AD 4E 0E    ;
CODE_03FCB9:    BEQ CODE_03FD12         ; $03:FCB9: F0 57       ;
CODE_03FCBB:    LDX #$00                ; $03:FCBB: A2 00       ;
CODE_03FCBD:    LDA $08D0,x             ; $03:FCBD: BD D0 08    ;
CODE_03FCC0:    STA $09E0,x             ; $03:FCC0: 9D E0 09    ;
CODE_03FCC3:    INX                     ; $03:FCC3: E8          ;
CODE_03FCC4:    CPX #$20                ; $03:FCC4: E0 20       ;
CODE_03FCC6:    BNE CODE_03FCBD         ; $03:FCC6: D0 F5       ;
CODE_03FCC8:    LDA #$F0                ; $03:FCC8: A9 F0       ;
CODE_03FCCA:    STA $08D1               ; $03:FCCA: 8D D1 08    ;
CODE_03FCCD:    STA $08D5               ; $03:FCCD: 8D D5 08    ;
CODE_03FCD0:    STA $08D9               ; $03:FCD0: 8D D9 08    ;
CODE_03FCD3:    STA $08DD               ; $03:FCD3: 8D DD 08    ;
CODE_03FCD6:    STA $08E1               ; $03:FCD6: 8D E1 08    ;
CODE_03FCD9:    STA $08E5               ; $03:FCD9: 8D E5 08    ;
CODE_03FCDC:    STA $08E9               ; $03:FCDC: 8D E9 08    ;
CODE_03FCDF:    STA $08ED               ; $03:FCDF: 8D ED 08    ;
CODE_03FCE2:    LDA $0CD0               ; $03:FCE2: AD D0 0C    ;
CODE_03FCE5:    STA $0DE0               ; $03:FCE5: 8D E0 0D    ;
CODE_03FCE8:    LDA $0CD4               ; $03:FCE8: AD D4 0C    ;
CODE_03FCEB:    STA $0DE4               ; $03:FCEB: 8D E4 0D    ;
CODE_03FCEE:    LDA $0CD8               ; $03:FCEE: AD D8 0C    ;
CODE_03FCF1:    STA $0DE8               ; $03:FCF1: 8D E8 0D    ;
CODE_03FCF4:    LDA $0CDC               ; $03:FCF4: AD DC 0C    ;
CODE_03FCF7:    STA $0DEC               ; $03:FCF7: 8D EC 0D    ;
CODE_03FCFA:    LDA $0CE0               ; $03:FCFA: AD E0 0C    ;
CODE_03FCFD:    STA $0DF0               ; $03:FCFD: 8D F0 0D    ;
CODE_03FD00:    LDA $0CE4               ; $03:FD00: AD E4 0C    ;
CODE_03FD03:    STA $0DF4               ; $03:FD03: 8D F4 0D    ;
CODE_03FD06:    LDA $0CE8               ; $03:FD06: AD E8 0C    ;
CODE_03FD09:    STA $0DF8               ; $03:FD09: 8D F8 0D    ;
CODE_03FD0C:    LDA $0CEC               ; $03:FD0C: AD EC 0C    ;
CODE_03FD0F:    STA $0DFC               ; $03:FD0F: 8D FC 0D    ;
CODE_03FD12:    RTS                     ; $03:FD12: 60          ;

CODE_03FD13:    LDX #$00                ; $03:FD13: A2 00       ;
CODE_03FD15:    LDY #$00                ; $03:FD15: A0 00       ;
CODE_03FD17:    JMP CODE_03FD2A         ; $03:FD17: 4C 2A FD    ;

CODE_03FD1A:    LDY #$01                ; $03:FD1A: A0 01       ;
CODE_03FD1C:    JSR CODE_03FDC4         ; $03:FD1C: 20 C4 FD    ;
CODE_03FD1F:    LDY #$03                ; $03:FD1F: A0 03       ;
CODE_03FD21:    BRA CODE_03FD2A         ; $03:FD21: 80 07       ;

CODE_03FD23:    LDY #$00                ; $03:FD23: A0 00       ;
CODE_03FD25:    JSR CODE_03FDC4         ; $03:FD25: 20 C4 FD    ;
CODE_03FD28:    LDY #$02                ; $03:FD28: A0 02       ;
CODE_03FD2A:    JSR CODE_03FD58         ; $03:FD2A: 20 58 FD    ;
CODE_03FD2D:    LDX $9E                 ; $03:FD2D: A6 9E       ;
CODE_03FD2F:    RTS                     ; $03:FD2F: 60          ;

CODE_03FD30:    LDY #$02                ; $03:FD30: A0 02       ;
CODE_03FD32:    JSR CODE_03FDC4         ; $03:FD32: 20 C4 FD    ;
CODE_03FD35:    LDY #$06                ; $03:FD35: A0 06       ;
CODE_03FD37:    BRA CODE_03FD2A         ; $03:FD37: 80 F1       ;

CODE_03FD39:    LDA #$01                ; $03:FD39: A9 01       ;X = sprite index.
CODE_03FD3B:    LDY #$01                ; $03:FD3B: A0 01       ;
CODE_03FD3D:    JMP CODE_03FD4C         ; $03:FD3D: 4C 4C FD    ;

CODE_03FD40:    LDA #$0D                ; $03:FD40: A9 0D       ;
CODE_03FD42:    LDY #$04                ; $03:FD42: A0 04       ;
CODE_03FD44:    JSR CODE_03FD4C         ; $03:FD44: 20 4C FD    ;
CODE_03FD47:    INX                     ; $03:FD47: E8          ;
CODE_03FD48:    INX                     ; $03:FD48: E8          ;
CODE_03FD49:    LDA #$0D                ; $03:FD49: A9 0D       ;
CODE_03FD4B:    INY                     ; $03:FD4B: C8          ;
CODE_03FD4C:    STX $00                 ; $03:FD4C: 86 00       ;
CODE_03FD4E:    CLC                     ; $03:FD4E: 18          ;
CODE_03FD4F:    ADC $00                 ; $03:FD4F: 65 00       ;
CODE_03FD51:    TAX                     ; $03:FD51: AA          ;
CODE_03FD52:    JSR CODE_03FD58         ; $03:FD52: 20 58 FD    ;
CODE_03FD55:    LDX $9E                 ; $03:FD55: A6 9E       ;
CODE_03FD57:    RTS                     ; $03:FD57: 60          ;

CODE_03FD58:    LDA $0237,x             ; $03:FD58: BD 37 02    ;
CODE_03FD5B:    STA $03B8,y             ; $03:FD5B: 99 B8 03    ;
CODE_03FD5E:    LDA $0E                 ; $03:FD5E: A5 0E       ;
CODE_03FD60:    BEQ CODE_03FD6E         ; $03:FD60: F0 0C       ;
CODE_03FD62:    LDA $0219               ; $03:FD62: AD 19 02    ;
CODE_03FD65:    BNE CODE_03FD6E         ; $03:FD65: D0 07       ;
CODE_03FD67:    LDA #$28                ; $03:FD67: A9 28       ;
CODE_03FD69:    STA $0219               ; $03:FD69: 8D 19 02    ;
CODE_03FD6C:    BRA CODE_03FD80         ; $03:FD6C: 80 12       ;

CODE_03FD6E:    LDA $0219,x             ; $03:FD6E: BD 19 02    ;
CODE_03FD71:    SEC                     ; $03:FD71: 38          ;
CODE_03FD72:    SBC $071C               ; $03:FD72: ED 1C 07    ;
CODE_03FD75:    STA $03AD,y             ; $03:FD75: 99 AD 03    ;
CODE_03FD78:    LDA $78,x               ; $03:FD78: B5 78       ;
CODE_03FD7A:    SBC $071A               ; $03:FD7A: ED 1A 07    ;
CODE_03FD7D:    STA $03C1,y             ; $03:FD7D: 99 C1 03    ;
CODE_03FD80:    PHY                     ; $03:FD80: 5A          ;
CODE_03FD81:    TYA                     ; $03:FD81: 98          ;
CODE_03FD82:    ASL A                   ; $03:FD82: 0A          ;
CODE_03FD83:    TAY                     ; $03:FD83: A8          ;
CODE_03FD84:    LDA $0219,x             ; $03:FD84: BD 19 02    ;
CODE_03FD87:    STA $E4                 ; $03:FD87: 85 E4       ;
CODE_03FD89:    LDA $0078,x             ; $03:FD89: BD 78 00    ;
CODE_03FD8C:    STA $E5                 ; $03:FD8C: 85 E5       ;
CODE_03FD8E:    REP #$20                ; $03:FD8E: C2 20       ;
CODE_03FD90:    LDA $E4                 ; $03:FD90: A5 E4       ;
CODE_03FD92:    SEC                     ; $03:FD92: 38          ;
CODE_03FD93:    SBC $42                 ; $03:FD93: E5 42       ;
CODE_03FD95:    STA $0E87,y             ; $03:FD95: 99 87 0E    ;
CODE_03FD98:    SEP #$20                ; $03:FD98: E2 20       ;
CODE_03FD9A:    PLY                     ; $03:FD9A: 7A          ;
CODE_03FD9B:    RTS                     ; $03:FD9B: 60          ;

CODE_03FD9C:    LDX #$00                ; $03:FD9C: A2 00       ;
CODE_03FD9E:    LDY #$00                ; $03:FD9E: A0 00       ;
CODE_03FDA0:    JMP CODE_03FDDB         ; $03:FDA0: 4C DB FD    ;

CODE_03FDA3:    LDY #$00                ; $03:FDA3: A0 00       ;
CODE_03FDA5:    JSR CODE_03FDC4         ; $03:FDA5: 20 C4 FD    ;
CODE_03FDA8:    LDY #$02                ; $03:FDA8: A0 02       ;
CODE_03FDAA:    JMP CODE_03FDDB         ; $03:FDAA: 4C DB FD    ;

CODE_03FDAD:    LDY #$01                ; $03:FDAD: A0 01       ;
CODE_03FDAF:    JSR CODE_03FDC4         ; $03:FDAF: 20 C4 FD    ;
CODE_03FDB2:    LDY #$03                ; $03:FDB2: A0 03       ;
CODE_03FDB4:    JMP CODE_03FDDB         ; $03:FDB4: 4C DB FD    ;

CODE_03FDB7:    LDY #$02                ; $03:FDB7: A0 02       ;
CODE_03FDB9:    JSR CODE_03FDC4         ; $03:FDB9: 20 C4 FD    ;
CODE_03FDBC:    LDY #$06                ; $03:FDBC: A0 06       ;
CODE_03FDBE:    JMP CODE_03FDDB         ; $03:FDBE: 4C DB FD    ;

DATA_03FDC1:    db $0B,$1A,$11                                  ;

CODE_03FDC4:    TXA                     ; $03:FDC4: 8A          ;
CODE_03FDC5:    CLC                     ; $03:FDC5: 18          ;
CODE_03FDC6:    ADC DATA_03FDC1,y       ; $03:FDC6: 79 C1 FD    ;
CODE_03FDC9:    TAX                     ; $03:FDC9: AA          ;
CODE_03FDCA:    RTS                     ; $03:FDCA: 60          ;

CODE_03FDCB:    LDA #$01                ; $03:FDCB: A9 01       ;
CODE_03FDCD:    LDY #$01                ; $03:FDCD: A0 01       ;
CODE_03FDCF:    BRA CODE_03FDD5         ; $03:FDCF: 80 04       ;

CODE_03FDD1:    LDA #$0D                ; $03:FDD1: A9 0D       ;
CODE_03FDD3:    LDY #$04                ; $03:FDD3: A0 04       ;
CODE_03FDD5:    STX $00                 ; $03:FDD5: 86 00       ;Store current sprite index into $00
CODE_03FDD7:    CLC                     ; $03:FDD7: 18          ;
CODE_03FDD8:    ADC $00                 ; $03:FDD8: 65 00       ;
CODE_03FDDA:    TAX                     ; $03:FDDA: AA          ;
CODE_03FDDB:    TYA                     ; $03:FDDB: 98          ;
CODE_03FDDC:    PHA                     ; $03:FDDC: 48          ;
CODE_03FDDD:    JSR CODE_03FDFF         ; $03:FDDD: 20 FF FD    ;
CODE_03FDE0:    ASL A                   ; $03:FDE0: 0A          ;
CODE_03FDE1:    ASL A                   ; $03:FDE1: 0A          ;
CODE_03FDE2:    ASL A                   ; $03:FDE2: 0A          ;
CODE_03FDE3:    ASL A                   ; $03:FDE3: 0A          ;
CODE_03FDE4:    ORA $00                 ; $03:FDE4: 05 00       ;
CODE_03FDE6:    STA $00                 ; $03:FDE6: 85 00       ;
CODE_03FDE8:    PLA                     ; $03:FDE8: 68          ;
CODE_03FDE9:    TAY                     ; $03:FDE9: A8          ;
CODE_03FDEA:    LDA $00                 ; $03:FDEA: A5 00       ;
CODE_03FDEC:    STA $03D0,y             ; $03:FDEC: 99 D0 03    ;
CODE_03FDEF:    LSR A                   ; $03:FDEF: 4A          ;
CODE_03FDF0:    LSR A                   ; $03:FDF0: 4A          ;
CODE_03FDF1:    PHA                     ; $03:FDF1: 48          ;
CODE_03FDF2:    AND #$01                ; $03:FDF2: 29 01       ;
CODE_03FDF4:    STA $0E08,y             ; $03:FDF4: 99 08 0E    ;
CODE_03FDF7:    PLA                     ; $03:FDF7: 68          ;
CODE_03FDF8:    LSR A                   ; $03:FDF8: 4A          ;
CODE_03FDF9:    STA $0E00,y             ; $03:FDF9: 99 00 0E    ;
CODE_03FDFC:    LDX $9E                 ; $03:FDFC: A6 9E       ;
CODE_03FDFE:    RTS                     ; $03:FDFE: 60          ;

CODE_03FDFF:    JSR CODE_03FE1E         ; $03:FDFF: 20 1E FE    ;
CODE_03FE02:    LSR A                   ; $03:FE02: 4A          ;
CODE_03FE03:    LSR A                   ; $03:FE03: 4A          ;
CODE_03FE04:    LSR A                   ; $03:FE04: 4A          ;
CODE_03FE05:    LSR A                   ; $03:FE05: 4A          ;
CODE_03FE06:    STA $00                 ; $03:FE06: 85 00       ;
CODE_03FE08:    JMP CODE_03FE62         ; $03:FE08: 4C 62 FE    ;

DATA_03FE0B:    db $7F,$3F,$1F,$0F,$07,$03,$01,$00              ;
                db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF              ;

DATA_03FE1B:    db $07,$0F,$07                                  ;

CODE_03FE1E:    STX $04                 ; $03:FE1E: 86 04       ;
CODE_03FE20:    LDY #$01                ; $03:FE20: A0 01       ;
CODE_03FE22:    LDA $071C,y             ; $03:FE22: B9 1C 07    ;
CODE_03FE25:    SEC                     ; $03:FE25: 38          ;
CODE_03FE26:    SBC $0219,x             ; $03:FE26: FD 19 02    ;
CODE_03FE29:    STA $07                 ; $03:FE29: 85 07       ;
CODE_03FE2B:    LDA $071A,y             ; $03:FE2B: B9 1A 07    ;
CODE_03FE2E:    SBC $78,x               ; $03:FE2E: F5 78       ;
CODE_03FE30:    LDX DATA_03FE1B,y       ; $03:FE30: BE 1B FE    ;
CODE_03FE33:    CMP #$00                ; $03:FE33: C9 00       ;
CODE_03FE35:    BMI CODE_03FE47         ; $03:FE35: 30 10       ;
CODE_03FE37:    LDX DATA_03FE1B+1,y     ; $03:FE37: BE 1C FE    ;
CODE_03FE3A:    CMP #$01                ; $03:FE3A: C9 01       ;
CODE_03FE3C:    BPL CODE_03FE47         ; $03:FE3C: 10 09       ;
CODE_03FE3E:    LDA #$38                ; $03:FE3E: A9 38       ;
CODE_03FE40:    STA $06                 ; $03:FE40: 85 06       ;
CODE_03FE42:    LDA #$08                ; $03:FE42: A9 08       ;
CODE_03FE44:    JSR CODE_03FE97         ; $03:FE44: 20 97 FE    ;
CODE_03FE47:    LDA DATA_03FE0B,x       ; $03:FE47: BD 0B FE    ;
CODE_03FE4A:    LDX $04                 ; $03:FE4A: A6 04       ;
CODE_03FE4C:    CMP #$00                ; $03:FE4C: C9 00       ;
CODE_03FE4E:    BNE CODE_03FE53         ; $03:FE4E: D0 03       ;
CODE_03FE50:    DEY                     ; $03:FE50: 88          ;
CODE_03FE51:    BPL CODE_03FE22         ; $03:FE51: 10 CF       ;
CODE_03FE53:    RTS                     ; $03:FE53: 60          ;

DATA_03FE54:    db $00,$08,$0C,$0E,$0F,$07,$03,$01              ;
                db $00                                          ;

DATA_03FE5D:    db $04,$00,$04                                  ;

DATA_03FE60:    db $FF,$00                                      ;

CODE_03FE62:    STX $04                 ; $03:FE62: 86 04       ;
CODE_03FE64:    LDY #$01                ; $03:FE64: A0 01       ;
CODE_03FE66:    LDA DATA_03FE60,y       ; $03:FE66: B9 60 FE    ;
CODE_03FE69:    SEC                     ; $03:FE69: 38          ;
CODE_03FE6A:    SBC $0237,x             ; $03:FE6A: FD 37 02    ;
CODE_03FE6D:    STA $07                 ; $03:FE6D: 85 07       ;
CODE_03FE6F:    LDA #$01                ; $03:FE6F: A9 01       ;
CODE_03FE71:    SBC $BB,x               ; $03:FE71: F5 BB       ;
CODE_03FE73:    LDX DATA_03FE5D,y       ; $03:FE73: BE 5D FE    ;
CODE_03FE76:    CMP #$00                ; $03:FE76: C9 00       ;
CODE_03FE78:    BMI CODE_03FE8A         ; $03:FE78: 30 10       ;
CODE_03FE7A:    LDX DATA_03FE5D+1,y     ; $03:FE7A: BE 5E FE    ;
CODE_03FE7D:    CMP #$01                ; $03:FE7D: C9 01       ;
CODE_03FE7F:    BPL CODE_03FE8A         ; $03:FE7F: 10 09       ;
CODE_03FE81:    LDA #$20                ; $03:FE81: A9 20       ;
CODE_03FE83:    STA $06                 ; $03:FE83: 85 06       ;
CODE_03FE85:    LDA #$04                ; $03:FE85: A9 04       ;
CODE_03FE87:    JSR CODE_03FE97         ; $03:FE87: 20 97 FE    ;
CODE_03FE8A:    LDA DATA_03FE54,x       ; $03:FE8A: BD 54 FE    ;
CODE_03FE8D:    LDX $04                 ; $03:FE8D: A6 04       ;
CODE_03FE8F:    CMP #$00                ; $03:FE8F: C9 00       ;
CODE_03FE91:    BNE CODE_03FE96         ; $03:FE91: D0 03       ;
CODE_03FE93:    DEY                     ; $03:FE93: 88          ;
CODE_03FE94:    BPL CODE_03FE66         ; $03:FE94: 10 D0       ;
CODE_03FE96:    RTS                     ; $03:FE96: 60          ;

CODE_03FE97:    STA $05                 ; $03:FE97: 85 05       ;
CODE_03FE99:    LDA $07                 ; $03:FE99: A5 07       ;
CODE_03FE9B:    CMP $06                 ; $03:FE9B: C5 06       ;
CODE_03FE9D:    BCS CODE_03FEAB         ; $03:FE9D: B0 0C       ;
CODE_03FE9F:    LSR A                   ; $03:FE9F: 4A          ;
CODE_03FEA0:    LSR A                   ; $03:FEA0: 4A          ;
CODE_03FEA1:    LSR A                   ; $03:FEA1: 4A          ;
CODE_03FEA2:    AND #$07                ; $03:FEA2: 29 07       ;
CODE_03FEA4:    CPY #$01                ; $03:FEA4: C0 01       ;
CODE_03FEA6:    BCS CODE_03FEAA         ; $03:FEA6: B0 02       ;
CODE_03FEA8:    ADC $05                 ; $03:FEA8: 65 05       ;
CODE_03FEAA:    TAX                     ; $03:FEAA: AA          ;
CODE_03FEAB:    RTS                     ; $03:FEAB: 60          ;

CODE_03FEAC:    LDA $79,x               ; $03:FEAC: B5 79       ;
CODE_03FEAE:    STA $0E15               ; $03:FEAE: 8D 15 0E    ;
CODE_03FEB1:    LDA $021A,x             ; $03:FEB1: BD 1A 02    ;
CODE_03FEB4:    STA $0E14               ; $03:FEB4: 8D 14 0E    ;
CODE_03FEB7:    RTS                     ; $03:FEB7: 60          ;

CODE_03FEB8:    LDA $0E17               ; $03:FEB8: AD 17 0E    ;
CODE_03FEBB:    STA $0E15               ; $03:FEBB: 8D 15 0E    ;
CODE_03FEBE:    LDA $0E16               ; $03:FEBE: AD 16 0E    ;
CODE_03FEC1:    STA $0E14               ; $03:FEC1: 8D 14 0E    ;
CODE_03FEC4:    RTS                     ; $03:FEC4: 60          ;

CODE_03FEC5:    LDA #$06                ; $03:FEC5: A9 06       ;
CODE_03FEC7:    STA $04                 ; $03:FEC7: 85 04       ;
CODE_03FEC9:    REP #$20                ; $03:FEC9: C2 20       ;
CODE_03FECB:    LDA $0E14               ; $03:FECB: AD 14 0E    ;
CODE_03FECE:    SEC                     ; $03:FECE: 38          ;
CODE_03FECF:    SBC $42                 ; $03:FECF: E5 42       ;
CODE_03FED1:    STA $0E12               ; $03:FED1: 8D 12 0E    ;
CODE_03FED4:    SEP #$20                ; $03:FED4: E2 20       ;
CODE_03FED6:    LDA $0E13               ; $03:FED6: AD 13 0E    ;
CODE_03FED9:    BNE CODE_03FEDF         ; $03:FED9: D0 04       ;
CODE_03FEDB:    LDA #$00                ; $03:FEDB: A9 00       ;
CODE_03FEDD:    BRA CODE_03FEE1         ; $03:FEDD: 80 02       ;

CODE_03FEDF:    LDA #$01                ; $03:FEDF: A9 01       ;
CODE_03FEE1:    STA $0D00,y             ; $03:FEE1: 99 00 0D    ;
CODE_03FEE4:    RTS                     ; $03:FEE4: 60          ;

CODE_03FEE5:    REP #$20                ; $03:FEE5: C2 20       ;
CODE_03FEE7:    LDA $0E14               ; $03:FEE7: AD 14 0E    ;
CODE_03FEEA:    SEC                     ; $03:FEEA: 38          ;
CODE_03FEEB:    SBC $42                 ; $03:FEEB: E5 42       ;
CODE_03FEED:    STA $0E12               ; $03:FEED: 8D 12 0E    ;
CODE_03FEF0:    SEP #$20                ; $03:FEF0: E2 20       ;
CODE_03FEF2:    LDA $0E13               ; $03:FEF2: AD 13 0E    ;
CODE_03FEF5:    BNE CODE_03FEFB         ; $03:FEF5: D0 04       ;
CODE_03FEF7:    LDA #$00                ; $03:FEF7: A9 00       ;
CODE_03FEF9:    BRA CODE_03FEFD         ; $03:FEF9: 80 02       ;

CODE_03FEFB:    LDA #$01                ; $03:FEFB: A9 01       ;
CODE_03FEFD:    STA $0D10,y             ; $03:FEFD: 99 10 0D    ;
CODE_03FF00:    STA $0D08,y             ; $03:FF00: 99 08 0D    ;
CODE_03FF03:    STA $0D00,y             ; $03:FF03: 99 00 0D    ;
CODE_03FF06:    RTS                     ; $03:FF06: 60          ;

CODE_03FF07:    REP #$20                ; $03:FF07: C2 20       ;
CODE_03FF09:    LDA $0E14               ; $03:FF09: AD 14 0E    ;
CODE_03FF0C:    SEC                     ; $03:FF0C: 38          ;
CODE_03FF0D:    SBC $42                 ; $03:FF0D: E5 42       ;
CODE_03FF0F:    STA $0E12               ; $03:FF0F: 8D 12 0E    ;
CODE_03FF12:    SEP #$20                ; $03:FF12: E2 20       ;
CODE_03FF14:    LDA $0E13               ; $03:FF14: AD 13 0E    ;
CODE_03FF17:    BNE CODE_03FF1D         ; $03:FF17: D0 04       ;
CODE_03FF19:    LDA #$00                ; $03:FF19: A9 00       ;
CODE_03FF1B:    BRA CODE_03FF1F         ; $03:FF1B: 80 02       ;

CODE_03FF1D:    LDA #$01                ; $03:FF1D: A9 01       ;
CODE_03FF1F:    STA $0C08,y             ; $03:FF1F: 99 08 0C    ;
CODE_03FF22:    STA $0C00,y             ; $03:FF22: 99 00 0C    ;
CODE_03FF25:    RTS                     ; $03:FF25: 60          ;

CODE_03FF26:    STA $0C00,y             ; $03:FF26: 99 00 0C    ;
CODE_03FF29:    STA $0C08,y             ; $03:FF29: 99 08 0C    ;
CODE_03FF2C:    RTS                     ; $03:FF2C: 60          ;

CODE_03FF2D:    REP #$20                ; $03:FF2D: C2 20       ;
CODE_03FF2F:    PLA                     ; $03:FF2F: 68          ;
CODE_03FF30:    CLC                     ; $03:FF30: 18          ;
CODE_03FF31:    ADC $04                 ; $03:FF31: 65 04       ;
CODE_03FF33:    STA $04                 ; $03:FF33: 85 04       ;
CODE_03FF35:    PHA                     ; $03:FF35: 48          ;
CODE_03FF36:    SEP #$20                ; $03:FF36: E2 20       ;
CODE_03FF38:    LDA #$01                ; $03:FF38: A9 01       ;
CODE_03FF3A:    RTS                     ; $03:FF3A: 60          ;

CODE_03FF3B:    REP #$20                ; $03:FF3B: C2 20       ;
CODE_03FF3D:    LDA $0E14               ; $03:FF3D: AD 14 0E    ;
CODE_03FF40:    CLC                     ; $03:FF40: 18          ;
CODE_03FF41:    ADC #$0008              ; $03:FF41: 69 08 00    ;
CODE_03FF44:    STA $0E14               ; $03:FF44: 8D 14 0E    ;
CODE_03FF47:    SEP #$20                ; $03:FF47: E2 20       ;
CODE_03FF49:    INY                     ; $03:FF49: C8          ;
CODE_03FF4A:    INY                     ; $03:FF4A: C8          ;
CODE_03FF4B:    INY                     ; $03:FF4B: C8          ;
CODE_03FF4C:    INY                     ; $03:FF4C: C8          ;
CODE_03FF4D:    RTS                     ; $03:FF4D: 60          ;

CODE_03FF4E:    LDA $03                 ; $03:FF4E: A5 03       ;
CODE_03FF50:    LSR A                   ; $03:FF50: 4A          ;
CODE_03FF51:    LSR A                   ; $03:FF51: 4A          ;
CODE_03FF52:    LDA $00                 ; $03:FF52: A5 00       ;
CODE_03FF54:    BCC CODE_03FF62         ; $03:FF54: 90 0C       ;
CODE_03FF56:    STA $0806,y             ; $03:FF56: 99 06 08    ;
CODE_03FF59:    LDA $01                 ; $03:FF59: A5 01       ;
CODE_03FF5B:    STA $0802,y             ; $03:FF5B: 99 02 08    ;
CODE_03FF5E:    LDA #$40                ; $03:FF5E: A9 40       ;
CODE_03FF60:    BNE CODE_03FF6C         ; $03:FF60: D0 0A       ;
CODE_03FF62:    STA $0802,y             ; $03:FF62: 99 02 08    ;
CODE_03FF65:    LDA $01                 ; $03:FF65: A5 01       ;
CODE_03FF67:    STA $0806,y             ; $03:FF67: 99 06 08    ;
CODE_03FF6A:    LDA #$00                ; $03:FF6A: A9 00       ;
CODE_03FF6C:    ORA $04                 ; $03:FF6C: 05 04       ;
CODE_03FF6E:    STA $0803,y             ; $03:FF6E: 99 03 08    ;
CODE_03FF71:    STA $0807,y             ; $03:FF71: 99 07 08    ;
CODE_03FF74:    LDA $02                 ; $03:FF74: A5 02       ;
CODE_03FF76:    STA $0801,y             ; $03:FF76: 99 01 08    ;
CODE_03FF79:    STA $0805,y             ; $03:FF79: 99 05 08    ;
CODE_03FF7C:    LDA $05                 ; $03:FF7C: A5 05       ;
CODE_03FF7E:    STA $0800,y             ; $03:FF7E: 99 00 08    ;
CODE_03FF81:    CLC                     ; $03:FF81: 18          ;
CODE_03FF82:    ADC #$08                ; $03:FF82: 69 08       ;
CODE_03FF84:    STA $0804,y             ; $03:FF84: 99 04 08    ;
CODE_03FF87:    LDA $02                 ; $03:FF87: A5 02       ;
CODE_03FF89:    CLC                     ; $03:FF89: 18          ;
CODE_03FF8A:    ADC #$08                ; $03:FF8A: 69 08       ;
CODE_03FF8C:    STA $02                 ; $03:FF8C: 85 02       ;
CODE_03FF8E:    TYA                     ; $03:FF8E: 98          ;
CODE_03FF8F:    CLC                     ; $03:FF8F: 18          ;
CODE_03FF90:    ADC #$08                ; $03:FF90: 69 08       ;
CODE_03FF92:    TAY                     ; $03:FF92: A8          ;
CODE_03FF93:    INX                     ; $03:FF93: E8          ;
CODE_03FF94:    INX                     ; $03:FF94: E8          ;
CODE_03FF95:    RTS                     ; $03:FF95: 60          ;

CODE_03FF96:    LDA $03                 ; $03:FF96: A5 03       ;
CODE_03FF98:    LSR A                   ; $03:FF98: 4A          ;
CODE_03FF99:    LSR A                   ; $03:FF99: 4A          ;
CODE_03FF9A:    LDA $00                 ; $03:FF9A: A5 00       ;
CODE_03FF9C:    BCC CODE_03FFAA         ; $03:FF9C: 90 0C       ;
CODE_03FF9E:    STA $0906,y             ; $03:FF9E: 99 06 09    ;
CODE_03FFA1:    LDA $01                 ; $03:FFA1: A5 01       ;
CODE_03FFA3:    STA $0902,y             ; $03:FFA3: 99 02 09    ;
CODE_03FFA6:    LDA #$40                ; $03:FFA6: A9 40       ;
CODE_03FFA8:    BNE CODE_03FFB4         ; $03:FFA8: D0 0A       ;
CODE_03FFAA:    STA $0902,y             ; $03:FFAA: 99 02 09    ;
CODE_03FFAD:    LDA $01                 ; $03:FFAD: A5 01       ;
CODE_03FFAF:    STA $0906,y             ; $03:FFAF: 99 06 09    ;
CODE_03FFB2:    LDA #$00                ; $03:FFB2: A9 00       ;
CODE_03FFB4:    ORA $04                 ; $03:FFB4: 05 04       ;
CODE_03FFB6:    STA $0903,y             ; $03:FFB6: 99 03 09    ;
CODE_03FFB9:    STA $0907,y             ; $03:FFB9: 99 07 09    ;
CODE_03FFBC:    LDA $02                 ; $03:FFBC: A5 02       ;
CODE_03FFBE:    STA $0901,y             ; $03:FFBE: 99 01 09    ;
CODE_03FFC1:    STA $0905,y             ; $03:FFC1: 99 05 09    ;
CODE_03FFC4:    LDA $05                 ; $03:FFC4: A5 05       ;
CODE_03FFC6:    STA $0900,y             ; $03:FFC6: 99 00 09    ;
CODE_03FFC9:    CLC                     ; $03:FFC9: 18          ;
CODE_03FFCA:    ADC #$08                ; $03:FFCA: 69 08       ;
CODE_03FFCC:    STA $0904,y             ; $03:FFCC: 99 04 09    ;
CODE_03FFCF:    LDA $02                 ; $03:FFCF: A5 02       ;
CODE_03FFD1:    CLC                     ; $03:FFD1: 18          ;
CODE_03FFD2:    ADC #$08                ; $03:FFD2: 69 08       ;
CODE_03FFD4:    STA $02                 ; $03:FFD4: 85 02       ;
CODE_03FFD6:    TYA                     ; $03:FFD6: 98          ;
CODE_03FFD7:    CLC                     ; $03:FFD7: 18          ;
CODE_03FFD8:    ADC #$08                ; $03:FFD8: 69 08       ;
CODE_03FFDA:    TAY                     ; $03:FFDA: A8          ;
CODE_03FFDB:    INX                     ; $03:FFDB: E8          ;
CODE_03FFDC:    INX                     ; $03:FFDC: E8          ;
CODE_03FFDD:    RTS                     ; $03:FFDD: 60          ;

DATA_03FFDE:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Seems like empty space
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;VICTORY! BANK 3 FINISHED!
                db $FF,$FF                                      ;
