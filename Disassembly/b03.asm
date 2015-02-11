;Super Mario Bros. 1

CODE_038000:        4C 15 80      JMP CODE_038015           ;Jump to the main game: SMB1

CODE_038003:        4C 08 83      JMP CODE_038308           ;Jump to NMI data of SMB1

CODE_038006:        4C 0D 85      JMP CODE_03850D           ;Jump to SMB1 IRQ Data

DATA_038009:        db $00,$00,$03,$03,$04,$04,$05,$05 ;

CODE_038011:        5C 41 96 00   JML CODE_009641           ;Show "Pirated game" message

CODE_038015:        EA            NOP                       ;\Waste time for no reason?
CODE_038016:        EA            NOP                       ;/
CODE_038017:        A9 AA         LDA #$AA                  ;\
CODE_038019:        8F 00 20 70   STA $702000               ; |
CODE_03801D:        CF 00 00 70   CMP $700000               ; |
CODE_038021:        D0 EE         BNE CODE_038011           ; |Check if the ROM is pirated. If so
CODE_038023:        A9 55         LDA #$55                  ; |Show the pirated message
CODE_038025:        8F 00 20 70   STA $702000               ; |
CODE_038029:        CF 00 00 70   CMP $700000               ; |
CODE_03802D:        D0 E2         BNE CODE_038011           ;/
CODE_03802F:        78            SEI                       ;Set interrupt flag
CODE_038030:        9C 00 42      STZ $4200                 ;\
CODE_038033:        9C 0C 42      STZ $420C                 ; |Disable NMI, IRQ, DMA, HDMA, Auto-read joypad
CODE_038036:        9C 0B 42      STZ $420B                 ;/
CODE_038039:        A9 80         LDA #$80                  ;\Forced blanking
CODE_03803B:        8D 00 21      STA $2100                 ;/
CODE_03803E:        4B            PHK                       ;\Set program bank to current bank
CODE_03803F:        AB            PLB                       ;/
CODE_038040:        A9 01         LDA #$01                  ;\Stop most of the animations
CODE_038042:        8D 8C 02      STA $028C                 ;/
CODE_038045:        A9 03         LDA #$03                  ;
CODE_038047:        8D 0B 0F      STA $0F0B                 ;
CODE_03804A:        9C 8E 02      STZ $028E                 ;
CODE_03804D:        9C 67 0E      STZ $0E67                 ;
CODE_038050:        AF 09 00 70   LDA $700009               ;\Load the current level number loaded from save
CODE_038054:        8D 24 0E      STA $0E24                 ; |Should be 0, because you can't specify which level you want to load in SMB1.
CODE_038057:        8F 01 FB 7F   STA $7FFB01               ;/
CODE_03805B:        AF 08 00 70   LDA $700008               ;\Load the current world number loaded from save
CODE_03805F:        8D 5F 07      STA $075F                 ; |
CODE_038062:        8F 00 FB 7F   STA $7FFB00               ;/|Store into world number to load from the title screen
CODE_038066:        0A            ASL A                     ; | Current world number * 4 + current level number
CODE_038067:        0A            ASL A                     ; |
CODE_038068:        18            CLC                       ; |
CODE_038069:        6F 09 00 70   ADC $700009               ;/
CODE_03806D:        AA            TAX                       ;Into X
CODE_03806E:        BF 72 D2 05   LDA $05D272,x             ;\Load from level table
CODE_038072:        8F 09 00 70   STA $700009               ; |Store into current level number loaded from save
CODE_038076:        8F 02 FB 7F   STA $7FFB02               ;/|And some other address
CODE_03807A:        8D 60 07      STA $0760                 ;/ And into current level
CODE_03807D:        A9 03         LDA #$03                  ;\OBJ size: 8x8 and 16x16 sprites
CODE_03807F:        8D 01 21      STA $2101                 ;/OBJ VRAM: $C000
CODE_038082:        A9 01         LDA #$01                  ;\BG1 Tilemap address: $0000
CODE_038084:        8D 07 21      STA $2107                 ;/Enable BG1 tilemap horizontal mirroring
CODE_038087:        A9 09         LDA #$09                  ;\BG2 Tilemap address: $1000
CODE_038089:        8D 08 21      STA $2108                 ;/Enable BG2 tilemap horizontal mirroring
CODE_03808C:        A9 59         LDA #$59                  ;\BG3 Tilemap address: $B000
CODE_03808E:        8D 09 21      STA $2109                 ;/Enable BG3 tilemap horizontal mirroring
CODE_038091:        9C 0A 21      STZ $210A                 ;no BG4, but set it just in case.
CODE_038094:        A9 11         LDA #$11                  ;\BG1 and 2 gfx address: $2000
CODE_038096:        8D 0B 21      STA $210B                 ;/
CODE_038099:        A9 05         LDA #$05                  ;\BG3 and 4 gfx address: $A000
CODE_03809B:        8D 0C 21      STA $210C                 ;/
CODE_03809E:        9C 33 21      STZ $2133                 ;Nothing special about screen mode/video select
CODE_0380A1:        9C 81 16      STZ $1681                 ;unused?
CODE_0380A4:        9C 70 07      STZ $0770                 ;Set level mode to Title Screen
CODE_0380A7:        9C 72 07      STZ $0772                 ;
CODE_0380AA:        A9 00         LDA #$00                  ;
CODE_0380AC:        8F FF FF 7F   STA $7FFFFF               ;
CODE_0380B0:        22 C4 FD 04   JSL CODE_04FDC4           ;Reset scroll registers
CODE_0380B4:        A9 09         LDA #$09                  ;\Game mode and character size
CODE_0380B6:        8D 0D 12      STA $120D                 ;/Mode 1 with mode 1 bg3 priority bit enabled
CODE_0380B9:        9C 7E 0E      STZ $0E7E                 ;No screen pixelation/mosaic
CODE_0380BC:        A9 10         LDA #$10                  ;\
CODE_0380BE:        8D 0B 12      STA $120B                 ;/Main screen designation
CODE_0380C1:        9C 0C 12      STZ $120C                 ;Sub screen designation
CODE_0380C4:        9C 04 12      STZ $1204                 ;Window mask settings for BG1 and 2
CODE_0380C7:        9C 05 12      STZ $1205                 ;Window mask settings for BG3 and 4
CODE_0380CA:        9C 06 12      STZ $1206                 ;Window mask settings for OAM and color window
CODE_0380CD:        9C 09 12      STZ $1209                 ;Color addition select
CODE_0380D0:        A9 20         LDA #$20                  ;\CGADSUB settings
CODE_0380D2:        8D 0A 12      STA $120A                 ;/
CODE_0380D5:        A9 20         LDA #$20                  ;\
CODE_0380D7:        8D E0 0E      STA $0EE0                 ; |
CODE_0380DA:        A9 40         LDA #$40                  ; |Set fixed color
CODE_0380DC:        8D E1 0E      STA $0EE1                 ; |
CODE_0380DF:        A9 80         LDA #$80                  ; |
CODE_0380E1:        8D E2 0E      STA $0EE2                 ;/
CODE_0380E4:        9C 03 12      STZ $1203                 ;HDMA enable: none
CODE_0380E7:        A9 80         LDA #$80                  ;\Enable f-blank
CODE_0380E9:        8D 01 12      STA $1201                 ;/
CODE_0380EC:        9C 54 01      STZ $0154                 ;Reset lag thing.
CODE_0380EF:        9C E5 15      STZ $15E5                 ;
CODE_0380F2:        9C 7F 0E      STZ $0E7F                 ;Related to when fading in and out
CODE_0380F5:        9C 76 07      STZ $0776                 ;Clear pause flag
CODE_0380F8:        8D 22 07      STA $0722                 ;
CODE_0380FB:        9C 67 0E      STZ $0E67                 ;
CODE_0380FE:        64 BA         STZ $BA                   ;
CODE_038100:        9C D6 0E      STZ $0ED6                 ;
CODE_038103:        9C F9 0E      STZ $0EF9                 ;
CODE_038106:        9C D4 0E      STZ $0ED4                 ;
CODE_038109:        9C 00 12      STZ $1200                 ;
CODE_03810C:        9C 73 07      STZ $0773                 ;
CODE_03810F:        9C 8D 02      STZ $028D                 ;
CODE_038112:        C2 20         REP #$20                  ;
CODE_038114:        A9 00 00      LDA #$0000                ;
CODE_038117:        8D 00 10      STA $1000                 ;
CODE_03811A:        8D 00 11      STA $1100                 ;
CODE_03811D:        A9 FF FF      LDA #$FFFF                ;
CODE_038120:        8D 02 17      STA $1702                 ;
CODE_038123:        8F 02 00 7F   STA $7F0002               ;
CODE_038127:        8F 02 20 7F   STA $7F2002               ;
CODE_03812B:        0B            PHD                       ;
CODE_03812C:        A9 00 43      LDA #$4300                ;
CODE_03812F:        5B            TCD                       ;
CODE_038130:        A2 80         LDX #$80                  ;
CODE_038132:        8E 15 21      STX $2115                 ;
CODE_038135:        C2 20         REP #$20                  ;
CODE_038137:        A9 00 10      LDA #$1000                ;
CODE_03813A:        8D 16 21      STA $2116                 ;
CODE_03813D:        A9 01 18      LDA #$1801                ;
CODE_038140:        85 00         STA $00                   ;
CODE_038142:        A9 00 80      LDA #$8000                ;
CODE_038145:        85 02         STA $02                   ;
CODE_038147:        A0 06         LDY #$06                  ;
CODE_038149:        84 04         STY $04                   ;
CODE_03814B:        A9 00 40      LDA #$4000                ;
CODE_03814E:        85 05         STA $05                   ;
CODE_038150:        A2 01         LDX #$01                  ;
CODE_038152:        8E 0B 42      STX $420B                 ;
CODE_038155:        A9 00 60      LDA #$6000                ;
CODE_038158:        8D 16 21      STA $2116                 ;
CODE_03815B:        A9 00 80      LDA #$8000                ;
CODE_03815E:        85 02         STA $02                   ;
CODE_038160:        A0 07         LDY #$07                  ;
CODE_038162:        84 04         STY $04                   ;
CODE_038164:        A9 00 40      LDA #$4000                ;
CODE_038167:        85 05         STA $05                   ;
CODE_038169:        8E 0B 42      STX $420B                 ;
CODE_03816C:        A9 00 50      LDA #$5000                ;
CODE_03816F:        8D 16 21      STA $2116                 ;
CODE_038172:        A9 00 F8      LDA #$F800                ;
CODE_038175:        85 02         STA $02                   ;
CODE_038177:        A0 0C         LDY #$0C                  ;
CODE_038179:        84 04         STY $04                   ;
CODE_03817B:        A9 00 08      LDA #$0800                ;
CODE_03817E:        85 05         STA $05                   ;
CODE_038180:        8E 0B 42      STX $420B                 ;
CODE_038183:        2B            PLD                       ;
CODE_038184:        E2 20         SEP #$20                  ;
CODE_038186:        22 AE 80 04   JSL CODE_0480AE           ;
CODE_03818A:        9C 08 16      STZ $1608                 ;
CODE_03818D:        9C 09 16      STZ $1609                 ;
CODE_038190:        9C 0F 16      STZ $160F                 ;
CODE_038193:        9C 0E 16      STZ $160E                 ;
CODE_038196:        9C 0A 16      STZ $160A                 ;
CODE_038199:        8D 0D 16      STA $160D                 ;
CODE_03819C:        A9 01         LDA #$01                  ;
CODE_03819E:        8D 0C 16      STA $160C                 ;
CODE_0381A1:        A9 81         LDA #$81                  ;
CODE_0381A3:        85 09         STA $09                   ;
CODE_0381A5:        8D 00 42      STA $4200                 ;
CODE_0381A8:        58            CLI                       ;
CODE_0381A9:        AD 54 01      LDA $0154                 ;
CODE_0381AC:        F0 FB         BEQ CODE_0381A9           ;
CODE_0381AE:        22 00 C8 05   JSL CODE_05C800           ;
CODE_0381B2:        AD B7 07      LDA $07B7                 ;
CODE_0381B5:        29 02         AND #$02                  ;
CODE_0381B7:        8D C7 07      STA $07C7                 ;
CODE_0381BA:        AD B8 07      LDA $07B8                 ;
CODE_0381BD:        29 02         AND #$02                  ;
CODE_0381BF:        4D C7 07      EOR $07C7                 ;
CODE_0381C2:        18            CLC                       ;
CODE_0381C3:        F0 01         BEQ CODE_0381C6           ;
CODE_0381C5:        38            SEC                       ;
CODE_0381C6:        6E B7 07      ROR $07B7                 ;
CODE_0381C9:        6E B8 07      ROR $07B8                 ;
CODE_0381CC:        6E B9 07      ROR $07B9                 ;
CODE_0381CF:        6E BA 07      ROR $07BA                 ;
CODE_0381D2:        6E BB 07      ROR $07BB                 ;
CODE_0381D5:        6E BC 07      ROR $07BC                 ;
CODE_0381D8:        6E BD 07      ROR $07BD                 ;
CODE_0381DB:        22 63 81 04   JSL CODE_048163           ;
CODE_0381DF:        AF 07 00 70   LDA $700007               ;
CODE_0381E3:        F0 20         BEQ CODE_038205           ;
CODE_0381E5:        DA            PHX                       ;In debug mode
CODE_0381E6:        AE C3 0E      LDX $0EC3                 ;
CODE_0381E9:        BD FA 0F      LDA $0FFA,x               ;
CODE_0381EC:        29 20         AND #$20                  ;
CODE_0381EE:        F0 03         BEQ CODE_0381F3           ;
CODE_0381F0:        EE E5 15      INC $15E5                 ;
CODE_0381F3:        BD FA 0F      LDA $0FFA,x               ;
CODE_0381F6:        FA            PLX                       ;
CODE_0381F7:        29 10         AND #$10                  ;
CODE_0381F9:        D0 0A         BNE CODE_038205           ;
CODE_0381FB:        AD E5 15      LDA $15E5                 ;
CODE_0381FE:        29 01         AND #$01                  ;
CODE_038200:        F0 03         BEQ CODE_038205           ;
CODE_038202:        4C D4 82      JMP CODE_0382D4           ;

CODE_038205:        22 34 E6 05   JSL CODE_05E634           ;
CODE_038209:        20 55 85      JSR CODE_038555           ;
CODE_03820C:        22 3A EE 05   JSL CODE_05EE3A           ;
CODE_038210:        A5 5C         LDA $5C                   ;
CODE_038212:        D0 04         BNE CODE_038218           ;
CODE_038214:        22 BF 88 04   JSL CODE_0488BF           ;
CODE_038218:        AD D6 0E      LDA $0ED6                 ;
CODE_03821B:        30 1E         BMI CODE_03823B           ;
CODE_03821D:        F0 40         BEQ CODE_03825F           ;
CODE_03821F:        AD B0 07      LDA $07B0                 ;
CODE_038222:        F0 3B         BEQ CODE_03825F           ;
CODE_038224:        AE 53 07      LDX $0753                 ;
CODE_038227:        BD FA 0F      LDA $0FFA,x               ;
CODE_03822A:        30 07         BMI CODE_038233           ;
CODE_03822C:        BD F6 0F      LDA $0FF6,x               ;
CODE_03822F:        29 90         AND #$90                  ;
CODE_038231:        F0 2C         BEQ CODE_03825F           ;
CODE_038233:        9C B0 07      STZ $07B0                 ;
CODE_038236:        9C D6 0E      STZ $0ED6                 ;
CODE_038239:        80 24         BRA CODE_03825F           ;

CODE_03823B:        AD FA 0F      LDA $0FFA                 ;
CODE_03823E:        0D F6 0F      ORA $0FF6                 ;
CODE_038241:        29 40         AND #$40                  ;
CODE_038243:        D0 0A         BNE CODE_03824F           ;
CODE_038245:        AD FB 0F      LDA $0FFB                 ;
CODE_038248:        0D F7 0F      ORA $0FF7                 ;
CODE_03824B:        29 40         AND #$40                  ;
CODE_03824D:        F0 10         BEQ CODE_03825F           ;
CODE_03824F:        AD 01 12      LDA $1201                 ;
CODE_038252:        C9 0F         CMP #$0F                  ;
CODE_038254:        D0 09         BNE CODE_03825F           ;
CODE_038256:        A9 80         LDA #$80                  ;\Fade out music
CODE_038258:        8D 02 16      STA $1602                 ;/
CODE_03825B:        5C DE 80 00   JML CODE_0080DE           ;

CODE_03825F:        AD 7F 0E      LDA $0E7F                 ;
CODE_038262:        F0 05         BEQ CODE_038269           ;
CODE_038264:        20 96 C2      JSR CODE_03C296           ;
CODE_038267:        80 6B         BRA CODE_0382D4           ;

CODE_038269:        AD 76 07      LDA $0776                 ;\
CODE_03826C:        4A            LSR A                     ; |Branch if paused
CODE_03826D:        B0 5E         BCS CODE_0382CD           ;/
CODE_03826F:        0B            PHD                       ;
CODE_038270:        A9 07         LDA #$07                  ;
CODE_038272:        EB            XBA                       ;
CODE_038273:        A9 00         LDA #$00                  ;
CODE_038275:        5B            TCD                       ;
CODE_038276:        A5 47         LDA $47                   ;
CODE_038278:        F0 04         BEQ CODE_03827E           ;
CODE_03827A:        C6 47         DEC $47                   ;
CODE_03827C:        D0 15         BNE CODE_038293           ;
CODE_03827E:        A2 18         LDX #$18                  ;
CODE_038280:        C6 87         DEC $87                   ;
CODE_038282:        10 06         BPL CODE_03828A           ;
CODE_038284:        A9 14         LDA #$14                  ;
CODE_038286:        85 87         STA $87                   ;
CODE_038288:        A2 2B         LDX #$2B                  ;
CODE_03828A:        B5 88         LDA $88,x                 ;
CODE_03828C:        F0 02         BEQ CODE_038290           ;
CODE_03828E:        D6 88         DEC $88,x                 ;
CODE_038290:        CA            DEX                       ;
CODE_038291:        10 F7         BPL CODE_03828A           ;
CODE_038293:        2B            PLD                       ;
CODE_038294:        AD B0 07      LDA $07B0                 ;
CODE_038297:        D0 08         BNE CODE_0382A1           ;
CODE_038299:        AD D6 0E      LDA $0ED6                 ;
CODE_03829C:        29 80         AND #$80                  ;
CODE_03829E:        8D D6 0E      STA $0ED6                 ;
CODE_0382A1:        E6 09         INC $09                   ;
CODE_0382A3:        EE 68 0E      INC $0E68                 ;
CODE_0382A6:        AD 68 0E      LDA $0E68                 ;
CODE_0382A9:        29 18         AND #$18                  ;
CODE_0382AB:        C9 18         CMP #$18                  ;
CODE_0382AD:        D0 03         BNE CODE_0382B2           ;
CODE_0382AF:        9C 68 0E      STZ $0E68                 ;
CODE_0382B2:        22 72 D4 05   JSL CODE_05D472           ;
CODE_0382B6:        AD 22 07      LDA $0722                 ;
CODE_0382B9:        F0 08         BEQ CODE_0382C3           ;
CODE_0382BB:        A5 1B         LDA $1B                   ;
CODE_0382BD:        4A            LSR A                     ;
CODE_0382BE:        B0 03         BCS CODE_0382C3           ;
CODE_0382C0:        20 C3 85      JSR CODE_0385C3           ;
CODE_0382C3:        20 45 85      JSR CODE_038545           ;
CODE_0382C6:        AD 80 16      LDA $1680                 ;
CODE_0382C9:        30 02         BMI CODE_0382CD           ;
CODE_0382CB:        80 07         BRA CODE_0382D4           ;

CODE_0382CD:        20 F3 85      JSR CODE_0385F3           ;
CODE_0382D0:        22 4C DE 05   JSL CODE_05DE4C           ;
CODE_0382D4:        22 7A DD 05   JSL CODE_05DD7A           ;
CODE_0382D8:        9C 54 01      STZ $0154                 ;
CODE_0382DB:        4C A9 81      JMP CODE_0381A9           ;

DATA_0382DE:        db $02,$B8,$B8,$B8,$B8,$02,$02,$02
                    db $B8,$B8,$B8,$B8,$B9,$DE,$03,$56 ;Low bytes of VRAM addresses used by the stripe image uploader
                    db $81,$BC,$DB

DATA_0382F1:        db $17,$99,$99,$99,$99,$17,$1A,$1A ;High bytes of VRAM addresses used by the stripe image uploader
                    db $99,$99,$99,$99,$99,$99,$9A,$9A ;
                    db $9A,$9A,$9A                     ;

DATA_038304:        db $00,$00,$00,$03

;SMB1 NMI ROUTINE
CODE_038308:        8B            PHB                       ;\
CODE_038309:        4B            PHK                       ; |Set program bank to this one
CODE_03830A:        AB            PLB                       ;/
CODE_03830B:        AD 10 42      LDA $4210                 ;Read to enable NMI
CODE_03830E:        AD 01 12      LDA $1201                 ;\ Forced blank if
CODE_038311:        D0 02         BNE CODE_038315           ; |the screen is pitch-black
CODE_038313:        A9 80         LDA #$80                  ; |
CODE_038315:        8D 00 21      STA $2100                 ;/ Otherwise, normal brightness
CODE_038318:        9C 0C 42      STZ $420C                 ;Reset HDMA
CODE_03831B:        AD 54 01      LDA $0154                 ;
CODE_03831E:        F0 03         BEQ CODE_038323           ;
CODE_038320:        4C 48 84      JMP CODE_038448           ;

CODE_038323:        EE 54 01      INC $0154                 ;
CODE_038326:        AE 73 07      LDX $0773                 ;
CODE_038329:        BD DE 82      LDA $82DE,x               ;
CODE_03832C:        85 00         STA $00                   ;
CODE_03832E:        BD F1 82      LDA $82F1,x               ;
CODE_038331:        85 01         STA $01                   ;
CODE_038333:        A9 03         LDA #$03                  ;
CODE_038335:        85 02         STA $02                   ;
CODE_038337:        20 BC 9B      JSR CODE_039BBC           ;
CODE_03833A:        AE 73 07      LDX $0773                 ;
CODE_03833D:        E0 06         CPX #$06                  ;
CODE_03833F:        D0 11         BNE CODE_038352           ;
CODE_038341:        AD DE 82      LDA $82DE                 ;
CODE_038344:        85 00         STA $00                   ;
CODE_038346:        AD F1 82      LDA $82F1                 ;
CODE_038349:        85 01         STA $01                   ;
CODE_03834B:        A9 03         LDA #$03                  ;
CODE_03834D:        85 02         STA $02                   ;
CODE_03834F:        20 BC 9B      JSR CODE_039BBC           ;
CODE_038352:        0B            PHD                       ;\
CODE_038353:        A9 43         LDA #$43                  ; |
CODE_038355:        EB            XBA                       ; |Direct page: $4300
CODE_038356:        A9 00         LDA #$00                  ; |
CODE_038358:        5B            TCD                       ;/
CODE_038359:        C2 10         REP #$10                  ;16-bit XY
CODE_03835B:        A9 81         LDA #$81                  ;
CODE_03835D:        8D 15 21      STA $2115                 ;
CODE_038360:        A0 01 18      LDY #$1801                ;
CODE_038363:        84 00         STY $00                   ;
CODE_038365:        AD F9 0E      LDA $0EF9                 ;
CODE_038368:        F0 33         BEQ CODE_03839D           ;
CODE_03836A:        A9 7F         LDA #$7F                  ;
CODE_03836C:        85 04         STA $04                   ;
CODE_03836E:        C2 20         REP #$20                  ;
CODE_038370:        A0 40 00      LDY #$0040                ;
CODE_038373:        A2 00 00      LDX #$0000                ;
CODE_038376:        BF 02 00 7F   LDA $7F0002,x             ;
CODE_03837A:        8D 16 21      STA $2116                 ;
CODE_03837D:        8A            TXA                       ;
CODE_03837E:        18            CLC                       ;
CODE_03837F:        69 04 00      ADC #$0004                ;
CODE_038382:        85 02         STA $02                   ;
CODE_038384:        84 05         STY $05                   ;
CODE_038386:        8A            TXA                       ;
CODE_038387:        18            CLC                       ;
CODE_038388:        69 42 00      ADC #$0042                ;
CODE_03838B:        AA            TAX                       ;
CODE_03838C:        A9 01 00      LDA #$0001                ;
CODE_03838F:        8D 0B 42      STA $420B                 ;
CODE_038392:        BF 02 00 7F   LDA $7F0002,x             ;
CODE_038396:        10 E2         BPL CODE_03837A           ;
CODE_038398:        E2 20         SEP #$20                  ;
CODE_03839A:        9C F9 0E      STZ $0EF9                 ;
CODE_03839D:        AD D4 0E      LDA $0ED4                 ;
CODE_0383A0:        F0 34         BEQ CODE_0383D6           ;
CODE_0383A2:        A9 7F         LDA #$7F                  ;
CODE_0383A4:        85 04         STA $04                   ;
CODE_0383A6:        C2 20         REP #$20                  ;
CODE_0383A8:        A0 38 00      LDY #$0038                ;
CODE_0383AB:        A2 00 00      LDX #$0000                ;
CODE_0383AE:        BF 02 20 7F   LDA $7F2002,x             ;
CODE_0383B2:        8D 16 21      STA $2116                 ;
CODE_0383B5:        8A            TXA                       ;
CODE_0383B6:        18            CLC                       ;
CODE_0383B7:        69 04 20      ADC #$2004                ;
CODE_0383BA:        85 02         STA $02                   ;
CODE_0383BC:        84 05         STY $05                   ;
CODE_0383BE:        8A            TXA                       ;
CODE_0383BF:        18            CLC                       ;
CODE_0383C0:        69 3A 00      ADC #$003A                ;
CODE_0383C3:        AA            TAX                       ;
CODE_0383C4:        A9 01 00      LDA #$0001                ;
CODE_0383C7:        8D 0B 42      STA $420B                 ;
CODE_0383CA:        BF 02 20 7F   LDA $7F2002,x             ;
CODE_0383CE:        10 E2         BPL CODE_0383B2           ;
CODE_0383D0:        9C 00 20      STZ $2000                 ;
CODE_0383D3:        9C D4 0E      STZ $0ED4                 ;
CODE_0383D6:        E2 30         SEP #$30                  ;
CODE_0383D8:        A9 80         LDA #$80                  ;
CODE_0383DA:        8D 15 21      STA $2115                 ;
CODE_0383DD:        20 1D 9B      JSR CODE_039B1D           ;
CODE_0383E0:        AD 00 12      LDA $1200                 ;
CODE_0383E3:        F0 2B         BEQ CODE_038410           ;
CODE_0383E5:        30 24         BMI CODE_03840B           ;
CODE_0383E7:        C2 10         REP #$10                  ;
CODE_0383E9:        9C 21 21      STZ $2121                 ;
CODE_0383EC:        A0 00 22      LDY #$2200                ;
CODE_0383EF:        84 00         STY $00                   ;
CODE_0383F1:        A0 00 10      LDY #$1000                ;
CODE_0383F4:        84 02         STY $02                   ;
CODE_0383F6:        A9 00         LDA #$00                  ;
CODE_0383F8:        85 04         STA $04                   ;
CODE_0383FA:        A0 00 02      LDY #$0200                ;
CODE_0383FD:        84 05         STY $05                   ;
CODE_0383FF:        A9 01         LDA #$01                  ;
CODE_038401:        8D 0B 42      STA $420B                 ;
CODE_038404:        E2 10         SEP #$10                  ;
CODE_038406:        9C 00 12      STZ $1200                 ;
CODE_038409:        80 05         BRA CODE_038410           ;

CODE_03840B:        A9 01         LDA #$01                  ;
CODE_03840D:        8D 00 12      STA $1200                 ;
CODE_038410:        2B            PLD                       ;
CODE_038411:        A0 00         LDY #$00                  ;
CODE_038413:        AE 73 07      LDX $0773                 ;
CODE_038416:        E0 06         CPX #$06                  ;
CODE_038418:        D0 02         BNE CODE_03841C           ;
CODE_03841A:        C8            INY                       ;
CODE_03841B:        C8            INY                       ;
CODE_03841C:        C2 20         REP #$20                  ;
CODE_03841E:        B9 04 83      LDA $8304,y               ;
CODE_038421:        C2 10         REP #$10                  ;
CODE_038423:        AA            TAX                       ;
CODE_038424:        9E 00 17      STZ $1700,x               ;
CODE_038427:        A9 FF FF      LDA #$FFFF                ;
CODE_03842A:        9D 02 17      STA $1702,x               ;
CODE_03842D:        A9 00 00      LDA #$0000                ;
CODE_038430:        8F 00 00 7F   STA $7F0000               ;
CODE_038434:        AD 5C 00      LDA $005C                 ;
CODE_038437:        29 FF 00      AND #$00FF                ;
CODE_03843A:        F0 07         BEQ CODE_038443           ;
CODE_03843C:        A9 00 00      LDA #$0000                ;
CODE_03843F:        8F 00 20 7F   STA $7F2000               ;
CODE_038443:        E2 30         SEP #$30                  ;
CODE_038445:        9C 73 07      STZ $0773                 ;

CODE_038448:        0B            PHD                       ;\
CODE_038449:        A9 21         LDA #$21                  ; |
CODE_03844B:        EB            XBA                       ; |Direct page: $2100
CODE_03844C:        A9 00         LDA #$00                  ; |
CODE_03844E:        5B            TCD                       ;/
CODE_03844F:        AD 0E 12      LDA $120E                 ;\$7E:120E: Window 2 left position
CODE_038452:        85 28         STA $28                   ;/
CODE_038454:        AD 0F 12      LDA $120F                 ;\$7E:120F: Window 2 right position
CODE_038457:        85 29         STA $29                   ;/
CODE_038459:        AD 10 12      LDA $1210                 ;\$7E:1210: Direct color register
CODE_03845C:        85 32         STA $32                   ;/
CODE_03845E:        AD 09 12      LDA $1209                 ;\$7E:1209: Color addition select
CODE_038461:        85 30         STA $30                   ;/
CODE_038463:        AD 0A 12      LDA $120A                 ;\$7E:120A: CGADSUB
CODE_038466:        85 31         STA $31                   ;/
CODE_038468:        AD 04 12      LDA $1204                 ;\$7E:1204: Window mask settings for BG1 and 2
CODE_03846B:        85 23         STA $23                   ;/
CODE_03846D:        AD 05 12      LDA $1205                 ;\$7E:1205: Window mask settings for BG3 and 4
CODE_038470:        85 24         STA $24                   ;/
CODE_038472:        AD 06 12      LDA $1206                 ;\$7E:1206: Window mask settings for OAM and color wind
CODE_038475:        85 25         STA $25                   ;/
CODE_038477:        AD 0B 12      LDA $120B                 ;\$7E:120B: Main screen designation
CODE_03847A:        85 2C         STA $2C                   ;/
CODE_03847C:        AD 0C 12      LDA $120C                 ;\$7E:120C: Subscreen designation
CODE_03847F:        85 2D         STA $2D                   ;/
CODE_038481:        AD 07 12      LDA $1207                 ;\$7E:1207: Window mask designation for main screen
CODE_038484:        85 2E         STA $2E                   ;/
CODE_038486:        AD 08 12      LDA $1208                 ;\$7E:1208: Window mask designation for sub screen
CODE_038489:        85 2F         STA $2F                   ;/
CODE_03848B:        AD E0 0E      LDA $0EE0                 ;\$7E:0EE0: Direct color register
CODE_03848E:        85 32         STA $32                   ;/
CODE_038490:        AD E1 0E      LDA $0EE1                 ;\$7E:0EE1: Direct color register
CODE_038493:        85 32         STA $32                   ;/
CODE_038495:        AD E2 0E      LDA $0EE2                 ;\$7E:0EE2: Direct color register
CODE_038498:        85 32         STA $32                   ;/
CODE_03849A:        AD 0D 12      LDA $120D                 ;\$7E:120D: Screen mode
CODE_03849D:        85 05         STA $05                   ;/
CODE_03849F:        AD 7E 0E      LDA $0E7E                 ;\$7E:0E7E: Screen pixelation/Mosaic
CODE_0384A2:        85 06         STA $06                   ;/
CODE_0384A4:        64 11         STZ $11                   ;\Zero out BG3 horizontal scroll
CODE_0384A6:        64 11         STZ $11                   ;/
CODE_0384A8:        AD D1 0E      LDA $0ED1                 ;\
CODE_0384AB:        F0 0A         BEQ CODE_0384B7           ; |If starry night IRQ flag is set
CODE_0384AD:        AD EE 0E      LDA $0EEE                 ; |
CODE_0384B0:        85 0F         STA $0F                   ; |$7E:0EEE-$7E:0EEF: BG2 Horizontal scroll
CODE_0384B2:        AD EF 0E      LDA $0EEF                 ; |
CODE_0384B5:        85 0F         STA $0F                   ;/
CODE_0384B7:        AD 7F 0E      LDA $0E7F                 ;\
CODE_0384BA:        D0 2A         BNE CODE_0384E6           ;/Fade in/out things?
CODE_0384BC:        AD 3F 07      LDA $073F                 ;\$7E:073F: BG1 xscroll offset low byte
CODE_0384BF:        85 0D         STA $0D                   ;/
CODE_0384C1:        AD 1A 07      LDA $071A                 ;\$7E:071A: BG1 xscroll offset high byte
CODE_0384C4:        85 0D         STA $0D                   ;/
CODE_0384C6:        AD D1 0E      LDA $0ED1                 ;\
CODE_0384C9:        D0 0A         BNE CODE_0384D5           ;/If not Starry Night BG flag
CODE_0384CB:        AD FD 0E      LDA $0EFD                 ;\$7E:0EFD: BG2 xscroll offset low byte
CODE_0384CE:        85 0F         STA $0F                   ;/
CODE_0384D0:        AD FE 0E      LDA $0EFE                 ;\$7E:0EFE: BG2 xscroll offset high byte
CODE_0384D3:        85 0F         STA $0F                   ;/
CODE_0384D5:        AD 40 07      LDA $0740                 ;\$7E:0E70: BG1 yscroll offset low byte
CODE_0384D8:        85 0E         STA $0E                   ;/
CODE_0384DA:        64 0E         STZ $0E                   ;BG1 yscroll offset high byte hardcoded at #$00
CODE_0384DC:        AD D2 0E      LDA $0ED2                 ;\$7E:0ED2: BG2 yscroll offset low byte
CODE_0384DF:        85 10         STA $10                   ;/
CODE_0384E1:        AD D3 0E      LDA $0ED3                 ;\$7E:0ED3: BG2 yscroll offset high byte
CODE_0384E4:        85 10         STA $10                   ;/
CODE_0384E6:        2B            PLD                       ;recover direct page
CODE_0384E7:        AD 03 12      LDA $1203                 ;\$7E:1203: HDMA enable
CODE_0384EA:        8D 0C 42      STA $420C                 ;/
CODE_0384ED:        A2 81         LDX #$81                  ;\
CODE_0384EF:        AD DE 0E      LDA $0EDE                 ;/If IRQ is active
CODE_0384F2:        F0 14         BEQ CODE_038508           ;Read IRQ flag for whatever reason
CODE_0384F4:        AD 11 42      LDA $4211                 ;
CODE_0384F7:        AD F2 0E      LDA $0EF2                 ;\$7E:0EF2: V-timer
CODE_0384FA:        8D 09 42      STA $4209                 ; |With $00 as vtimer high byte
CODE_0384FD:        9C 0A 42      STZ $420A                 ;/
CODE_038500:        9C 07 42      STZ $4207                 ;\
CODE_038503:        9C 08 42      STZ $4208                 ;/Store zero to h-timer
CODE_038506:        A2 A1         LDX #$A1                  ;\
CODE_038508:        8E 00 42      STX $4200                 ;/Enable NMI, IRQ, and auto joypad-read enable, only
CODE_03850B:        AB            PLB                       ;when IRQ itself is enabled.
CODE_03850C:        6B            RTL                       ;Return from IRQ

CODE_03850D:        8B            PHB                       ;\SMB1 IRQ Routine
CODE_03850E:        4B            PHK                       ; |Set current program bank
CODE_03850F:        AB            PLB                       ;/
CODE_038510:        AD 11 42      LDA $4211                 ;\If IRQ isn't fired yet, return
CODE_038513:        10 2E         BPL CODE_038543           ;/
CODE_038515:        AD DE 0E      LDA $0EDE                 ;\If this bit is set, return
CODE_038518:        F0 29         BEQ CODE_038543           ;/(Seems like it is used as "IRQ enable flag")
CODE_03851A:        AD D1 0E      LDA $0ED1                 ;\"Starry night" IRQ mode
CODE_03851D:        F0 13         BEQ CODE_038532           ;/If it is clear, go to normal IRQ mode
CODE_03851F:        2C 12 42      BIT $4212                 ;\
CODE_038522:        50 FB         BVC CODE_03851F           ;/Wait till H-blank
CODE_038524:        AD FD 0E      LDA $0EFD                 ;\ Used with Starry BG IRQ mode
CODE_038527:        8D 0F 21      STA $210F                 ; |Set BG2 Horizontal scroll
CODE_03852A:        AD FE 0E      LDA $0EFE                 ; |
CODE_03852D:        8D 0F 21      STA $210F                 ;/
CODE_038530:        80 11         BRA CODE_038543           ;Return

CODE_038532:        2C 12 42      BIT $4212                 ;\
CODE_038535:        50 FB         BVC CODE_038532           ;/Wait till H-blank
CODE_038537:        AD EE 0E      LDA $0EEE                 ;\
CODE_03853A:        8D 11 21      STA $2111                 ; |Set BG3 horizontal scroll
CODE_03853D:        AD EF 0E      LDA $0EEF                 ; |
CODE_038540:        8D 11 21      STA $2111                 ;/
CODE_038543:        AB            PLB                       ;\Recover program bank & return
CODE_038544:        6B            RTL                       ;/

CODE_038545:        AD 70 07      LDA $0770                 ;\
CODE_038548:        0A            ASL A                     ; |Set up 'operation modes' (RAM $7E:0770)
CODE_038549:        AA            TAX                       ; |see pointers below for effects
CODE_03854A:        7C 4D 85      JMP (PNTR_03854D,x)       ;/

PNTR_03854D:        dw CODE_03868D            ;$00 Title screen
                    dw CODE_03AD60            ;$01 Normal playing and controls
                    dw CODE_0388BB            ;$02 Defeated Bowser
                    dw CODE_03A0A8            ;$03 Game Over

CODE_038555:        AD 70 07      LDA $0770                 ;\
CODE_038558:        C9 02         CMP #$02                  ; |Branch if operation mode is Defeated Bowser
CODE_03855A:        F0 1F         BEQ CODE_03857B           ;/
CODE_03855C:        C9 01         CMP #$01                  ;\
CODE_03855E:        D0 5E         BNE CODE_0385BE           ;/Branch if operation mode is Main
CODE_038560:        AD 72 07      LDA $0772                 ;
CODE_038563:        C9 03         CMP #$03                  ;
CODE_038565:        D0 57         BNE CODE_0385BE           ;
CODE_038567:        AD 67 0E      LDA $0E67                 ;
CODE_03856A:        D0 52         BNE CODE_0385BE           ;
CODE_03856C:        AD 01 12      LDA $1201                 ;
CODE_03856F:        C9 0F         CMP #$0F                  ;
CODE_038571:        D0 4B         BNE CODE_0385BE           ;
CODE_038573:        AD 77 07      LDA $0777                 ;\
CODE_038576:        F0 04         BEQ CODE_03857C           ; |Branch if Timer to disable start button = 0
CODE_038578:        CE 77 07      DEC $0777                 ;/Otherwise, keep decreasing
CODE_03857B:        60            RTS                       ;

CODE_03857C:        A5 0F         LDA $0F                   ;
CODE_03857E:        C9 02         CMP #$02                  ;
CODE_038580:        F0 3C         BEQ CODE_0385BE           ;
CODE_038582:        C9 03         CMP #$03                  ;
CODE_038584:        F0 38         BEQ CODE_0385BE           ;
CODE_038586:        AD 7A 0B      LDA $0B7A                 ;
CODE_038589:        D0 33         BNE CODE_0385BE           ;
CODE_03858B:        AD 75 0B      LDA $0B75                 ;
CODE_03858E:        C9 02         CMP #$02                  ;
CODE_038590:        B0 2C         BCS CODE_0385BE           ;
CODE_038592:        AD 8A 0F      LDA $0F8A                 ;
CODE_038595:        F0 05         BEQ CODE_03859C           ;
CODE_038597:        CE 8A 0F      DEC $0F8A                 ;
CODE_03859A:        80 22         BRA CODE_0385BE           ;

CODE_03859C:        AD 75 0B      LDA $0B75                 ;\If within pause screen
CODE_03859F:        D0 1D         BNE CODE_0385BE           ;/Skip "pause game" button check function
CODE_0385A1:        AC 53 07      LDY $0753                 ;\
CODE_0385A4:        B9 F6 0F      LDA $0FF6,y               ; |Get controller data based on player #.
CODE_0385A7:        29 10         AND #$10                  ; | if start is not pressed, continue
CODE_0385A9:        F0 13         BEQ CODE_0385BE           ;/
CODE_0385AB:        A9 11         LDA #$11                  ;\Else, pause the game
CODE_0385AD:        8D 77 07      STA $0777                 ;/Timer to disable start button (works while outside pause, fading into it)
CODE_0385B0:        A9 F1         LDA #$F1                  ;\
CODE_0385B2:        8D 02 16      STA $1602                 ; |Tone down volume of music
CODE_0385B5:        A9 43         LDA #$43                  ; |Play pause sound
CODE_0385B7:        8D 00 16      STA $1600                 ;/
CODE_0385BA:        22 31 DE 05   JSL CODE_05DE31           ;
CODE_0385BE:        60            RTS                       ;

CODE_0385BF:        20 F8 85      JSR CODE_0385F8           ;
CODE_0385C2:        6B            RTL                       ;

CODE_0385C3:        0B            PHD                       ;\
CODE_0385C4:        A9 0B         LDA #$0B                  ; |Direct page: $0B00
CODE_0385C6:        EB            XBA                       ; |
CODE_0385C7:        A9 00         LDA #$00                  ; |
CODE_0385C9:        5B            TCD                       ;/
CODE_0385CA:        A9 90         LDA #$90                  ;
CODE_0385CC:        85 62         STA $62                   ;
CODE_0385CE:        A9 94         LDA #$94                  ;
CODE_0385D0:        85 63         STA $63                   ;
CODE_0385D2:        A9 98         LDA #$98                  ;
CODE_0385D4:        85 64         STA $64                   ;
CODE_0385D6:        A9 9C         LDA #$9C                  ;
CODE_0385D8:        85 65         STA $65                   ;
CODE_0385DA:        A9 A0         LDA #$A0                  ;
CODE_0385DC:        85 66         STA $66                   ;
CODE_0385DE:        A9 A4         LDA #$A4                  ;
CODE_0385E0:        85 67         STA $67                   ;
CODE_0385E2:        A9 A8         LDA #$A8                  ;
CODE_0385E4:        85 68         STA $68                   ;
CODE_0385E6:        A9 AC         LDA #$AC                  ;
CODE_0385E8:        85 69         STA $69                   ;
CODE_0385EA:        A9 58         LDA #$58                  ;
CODE_0385EC:        85 6A         STA $6A                   ;
CODE_0385EE:        2B            PLD                       ;
CODE_0385EF:        A5 96         LDA $96                   ;
CODE_0385F1:        D0 42         BNE CODE_038635           ;
CODE_0385F3:        AD 67 0E      LDA $0E67                 ;
CODE_0385F6:        D0 74         BNE CODE_03866C           ;
CODE_0385F8:        A2 00         LDX #$00                  ;
CODE_0385FA:        A9 F0         LDA #$F0                  ;
CODE_0385FC:        9D 01 08      STA $0801,x               ;
CODE_0385FF:        9D 41 08      STA $0841,x               ;
CODE_038602:        9D 81 08      STA $0881,x               ;
CODE_038605:        9D C1 08      STA $08C1,x               ;
CODE_038608:        9D 01 09      STA $0901,x               ;
CODE_03860B:        9D 41 09      STA $0941,x               ;
CODE_03860E:        9D 81 09      STA $0981,x               ;
CODE_038611:        9D C1 09      STA $09C1,x               ;
CODE_038614:        9E 00 0C      STZ $0C00,x               ;
CODE_038617:        9E 40 0C      STZ $0C40,x               ;
CODE_03861A:        9E 80 0C      STZ $0C80,x               ;
CODE_03861D:        9E C0 0C      STZ $0CC0,x               ;
CODE_038620:        9E 00 0D      STZ $0D00,x               ;
CODE_038623:        9E 40 0D      STZ $0D40,x               ;
CODE_038626:        9E 80 0D      STZ $0D80,x               ;
CODE_038629:        9E C0 0D      STZ $0DC0,x               ;
CODE_03862C:        E8            INX                       ;
CODE_03862D:        E8            INX                       ;
CODE_03862E:        E8            INX                       ;
CODE_03862F:        E8            INX                       ;
CODE_038630:        E0 40         CPX #$40                  ;
CODE_038632:        D0 C8         BNE CODE_0385FC           ;
CODE_038634:        60            RTS                       ;

CODE_038635:        A2 00         LDX #$00                  ;
CODE_038637:        A9 F0         LDA #$F0                  ;
CODE_038639:        9D 41 08      STA $0841,x               ;
CODE_03863C:        9D 81 08      STA $0881,x               ;
CODE_03863F:        9D C1 08      STA $08C1,x               ;
CODE_038642:        9D 01 09      STA $0901,x               ;
CODE_038645:        9D 41 09      STA $0941,x               ;
CODE_038648:        9D 81 09      STA $0981,x               ;
CODE_03864B:        9D C1 09      STA $09C1,x               ;
CODE_03864E:        9E 40 0C      STZ $0C40,x               ;
CODE_038651:        9E 80 0C      STZ $0C80,x               ;
CODE_038654:        9E C0 0C      STZ $0CC0,x               ;
CODE_038657:        9E 00 0D      STZ $0D00,x               ;
CODE_03865A:        9E 40 0D      STZ $0D40,x               ;
CODE_03865D:        9E 80 0D      STZ $0D80,x               ;
CODE_038660:        9E C0 0D      STZ $0DC0,x               ;
CODE_038663:        E8            INX                       ;
CODE_038664:        E8            INX                       ;
CODE_038665:        E8            INX                       ;
CODE_038666:        E8            INX                       ;
CODE_038667:        E0 40         CPX #$40                  ;
CODE_038669:        D0 CE         BNE CODE_038639           ;
CODE_03866B:        60            RTS                       ;

CODE_03866C:        A9 F0         LDA #$F0                  ;
CODE_03866E:        8D 51 08      STA $0851                 ;
CODE_038671:        8D 55 08      STA $0855                 ;
CODE_038674:        8D B1 08      STA $08B1                 ;
CODE_038677:        8D B5 08      STA $08B5                 ;
CODE_03867A:        8D B9 08      STA $08B9                 ;
CODE_03867D:        8D BD 08      STA $08BD                 ;
CODE_038680:        8D C1 08      STA $08C1                 ;
CODE_038683:        8D C5 08      STA $08C5                 ;
CODE_038686:        8D C9 08      STA $08C9                 ;
CODE_038689:        8D CD 08      STA $08CD                 ;
CODE_03868C:        60            RTS                       ;

;Title screen operation mode
CODE_03868D:        AD 72 07      LDA $0772                 ;
CODE_038690:        0A            ASL A                     ;
CODE_038691:        AA            TAX                       ;
CODE_038692:        FC AC 86      JSR (PNTR_0386AC,x)       ;
CODE_038695:        AF F2 1F 70   LDA $701FF2               ;
CODE_038699:        F0 0D         BEQ CODE_0386A8           ;
CODE_03869B:        9C 00 16      STZ $1600                 ;\
CODE_03869E:        9C 01 16      STZ $1601                 ; |Clear sound registers so no sound plays during title screen
CODE_0386A1:        9C 02 16      STZ $1602                 ; |
CODE_0386A4:        9C 03 16      STZ $1603                 ;/
CODE_0386A7:        60            RTS                       ;

CODE_0386A8:        9C 02 16      STZ $1602                 ;
CODE_0386AB:        60            RTS                       ;

PNTR_0386AC:        dw CODE_039D91
                    dw CODE_038C18
                    dw CODE_039EBA
                    dw CODE_0386B4

CODE_0386B4:        AF F4 1F 70   LDA $701FF4               ;
CODE_0386B8:        D0 1F         BNE CODE_0386D9           ;
CODE_0386BA:        AF F6 1F 70   LDA $701FF6               ;
CODE_0386BE:        F0 19         BEQ CODE_0386D9           ;
CODE_0386C0:        AD F7 0F      LDA $0FF7                 ;
CODE_0386C3:        29 10         AND #$10                  ;
CODE_0386C5:        F0 12         BEQ CODE_0386D9           ;
CODE_0386C7:        AD 7A 07      LDA $077A                 ;
CODE_0386CA:        D0 17         BNE CODE_0386E3           ;
CODE_0386CC:        AD B2 07      LDA $07B2                 ;
CODE_0386CF:        F0 12         BEQ CODE_0386E3           ;
CODE_0386D1:        A9 2A         LDA #$2A                  ;\"WRONG" sound
CODE_0386D3:        8D 03 16      STA $1603                 ;/
CODE_0386D6:        4C A1 87      JMP CODE_0387A1           ;

CODE_0386D9:        AD F6 0F      LDA $0FF6                 ;
CODE_0386DC:        0D F7 0F      ORA $0FF7                 ;
CODE_0386DF:        89 10         BIT #$10                  ;
CODE_0386E1:        F0 37         BEQ CODE_03871A           ;
CODE_0386E3:        4C D3 87      JMP CODE_0387D3           ;

CODE_0386E6:        A9 00         LDA #$00                  ;\
CODE_0386E8:        8F E0 1F 70   STA $701FE0               ; |
CODE_0386EC:        8F E1 1F 70   STA $701FE1               ; |Reset highscore and its display
CODE_0386F0:        8F E2 1F 70   STA $701FE2               ; |
CODE_0386F4:        8F E3 1F 70   STA $701FE3               ; |
CODE_0386F8:        8F E4 1F 70   STA $701FE4               ; |
CODE_0386FC:        8F E5 1F 70   STA $701FE5               ; |
CODE_038700:        8D C8 07      STA $07C8                 ; |
CODE_038703:        8D C9 07      STA $07C9                 ; |
CODE_038706:        8D CA 07      STA $07CA                 ; |
CODE_038709:        8D CB 07      STA $07CB                 ; |
CODE_03870C:        8D CC 07      STA $07CC                 ; |
CODE_03870F:        8D CD 07      STA $07CD                 ;/
CODE_038712:        A9 08         LDA #$08                  ;\High score resetted sound
CODE_038714:        8D 00 16      STA $1600                 ;/
CODE_038717:        4C C1 87      JMP CODE_0387C1           ;

CODE_03871A:        AF F2 1F 70   LDA $701FF2               ;
CODE_03871E:        D0 33         BNE CODE_038753           ;
CODE_038720:        AD F8 0F      LDA $0FF8                 ;
CODE_038723:        C9 B0         CMP #$B0                  ;
CODE_038725:        D0 07         BNE CODE_03872E           ;
CODE_038727:        AD F4 0F      LDA $0FF4                 ;
CODE_03872A:        C9 80         CMP #$80                  ;
CODE_03872C:        F0 B8         BEQ CODE_0386E6           ;Reset highscore
CODE_03872E:        AD F9 0F      LDA $0FF9                 ;
CODE_038731:        C9 B0         CMP #$B0                  ;
CODE_038733:        D0 07         BNE CODE_03873C           ;
CODE_038735:        AD F5 0F      LDA $0FF5                 ;
CODE_038738:        C9 80         CMP #$80                  ;
CODE_03873A:        F0 AA         BEQ CODE_0386E6           ;Reset highscore
CODE_03873C:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_038740:        30 07         BMI CODE_038749           ;
CODE_038742:        A9 40         LDA #$40                  ;
CODE_038744:        8D B2 07      STA $07B2                 ;
CODE_038747:        80 5B         BRA CODE_0387A4           ;

CODE_038749:        AD F6 0F      LDA $0FF6                 ;
CODE_03874C:        0D F7 0F      ORA $0FF7                 ;
CODE_03874F:        89 2C         BIT #$2C                  ;
CODE_038751:        D0 0C         BNE CODE_03875F           ;
CODE_038753:        AE B2 07      LDX $07B2                 ;
CODE_038756:        D0 4C         BNE CODE_0387A4           ;
CODE_038758:        20 83 88      JSR CODE_038883           ;
CODE_03875B:        B0 64         BCS CODE_0387C1           ;
CODE_03875D:        80 48         BRA CODE_0387A7           ;

CODE_03875F:        AD B2 07      LDA $07B2                 ;
CODE_038762:        F0 5D         BEQ CODE_0387C1           ;
CODE_038764:        A9 18         LDA #$18                  ;
CODE_038766:        8D B2 07      STA $07B2                 ;
CODE_038769:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_03876D:        30 05         BMI CODE_038774           ;
CODE_03876F:        8D 7A 07      STA $077A                 ;
CODE_038772:        80 2D         BRA CODE_0387A1           ;

CODE_038774:        AF F2 1F 70   LDA $701FF2               ;
CODE_038778:        D0 2A         BNE CODE_0387A4           ;
CODE_03877A:        AD F6 0F      LDA $0FF6                 ;
CODE_03877D:        0D F7 0F      ORA $0FF7                 ;
CODE_038780:        89 20         BIT #$20                  ;
CODE_038782:        F0 07         BEQ CODE_03878B           ;
CODE_038784:        AD 7A 07      LDA $077A                 ;
CODE_038787:        49 01         EOR #$01                  ;
CODE_038789:        80 0E         BRA CODE_038799           ;

CODE_03878B:        29 0C         AND #$0C                  ;
CODE_03878D:        F0 12         BEQ CODE_0387A1           ;
CODE_03878F:        49 08         EOR #$08                  ;
CODE_038791:        4A            LSR A                     ;
CODE_038792:        4A            LSR A                     ;
CODE_038793:        4A            LSR A                     ;
CODE_038794:        CD 7A 07      CMP $077A                 ;
CODE_038797:        F0 08         BEQ CODE_0387A1           ;
CODE_038799:        8D 7A 07      STA $077A                 ;
CODE_03879C:        A9 01         LDA #$01                  ;\Collected a coin sound
CODE_03879E:        8D 03 16      STA $1603                 ;/
CODE_0387A1:        20 61 88      JSR CODE_038861           ;
CODE_0387A4:        9C F4 0F      STZ $0FF4                 ;
CODE_0387A7:        AD 03 16      LDA $1603                 ;
CODE_0387AA:        48            PHA                       ;
CODE_0387AB:        20 74 AD      JSR CODE_03AD74           ;
CODE_0387AE:        9C 00 16      STZ $1600                 ;
CODE_0387B1:        9C 01 16      STZ $1601                 ;
CODE_0387B4:        68            PLA                       ;
CODE_0387B5:        8D 03 16      STA $1603                 ;
CODE_0387B8:        A5 0F         LDA $0F                   ;
CODE_0387BA:        C9 06         CMP #$06                  ;
CODE_0387BC:        D0 7B         BNE CODE_038839           ;
CODE_0387BE:        9C C8 0E      STZ $0EC8                 ;
CODE_0387C1:        9C 70 07      STZ $0770                 ;
CODE_0387C4:        9C 72 07      STZ $0772                 ;
CODE_0387C7:        9C 22 07      STZ $0722                 ;
CODE_0387CA:        A9 01         LDA #$01                  ;
CODE_0387CC:        8D 7F 0E      STA $0E7F                 ;
CODE_0387CF:        EE 74 07      INC $0774                 ;
CODE_0387D2:        60            RTS                       ;

CODE_0387D3:        AC B2 07      LDY $07B2                 ;
CODE_0387D6:        F0 E9         BEQ CODE_0387C1           ;
CODE_0387D8:        A9 29         LDA #$29                  ;\"CORRECT" sound
CODE_0387DA:        8D 03 16      STA $1603                 ;/
CODE_0387DD:        AF 08 00 70   LDA $700008               ;
CODE_0387E1:        20 46 88      JSR CODE_038846           ;
CODE_0387E4:        A9 01         LDA #$01                  ;
CODE_0387E6:        8D 67 0E      STA $0E67                 ;
CODE_0387E9:        20 10 F7      JSR CODE_03F710           ;
CODE_0387EC:        22 0B C0 04   JSL CODE_04C00B           ;
CODE_0387F0:        EE 5D 07      INC $075D                 ;Enable hidden 1-up flag
CODE_0387F3:        EE 64 07      INC $0764                 ;
CODE_0387F6:        EE 57 07      INC $0757                 ;
CODE_0387F9:        EE 70 07      INC $0770                 ;
CODE_0387FC:        AD FC 07      LDA $07FC                 ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_0387FF:        8D 6A 07      STA $076A                 ;"More difficult quest" flag
CODE_038802:        9C 72 07      STZ $0772                 ;
CODE_038805:        9C B2 07      STZ $07B2                 ;
CODE_038808:        A2 0B         LDX #$0B                  ;
CODE_03880A:        A9 00         LDA #$00                  ;
CODE_03880C:        9D DA 07      STA $07DA,x               ;
CODE_03880F:        CA            DEX                       ;
CODE_038810:        10 FA         BPL CODE_03880C           ;
CODE_038812:        DA            PHX                       ;
CODE_038813:        64 E4         STZ $E4                   ;
CODE_038815:        AD 5E 07      LDA $075E                 ;
CODE_038818:        20 3A 88      JSR CODE_03883A           ;
CODE_03881B:        8D DF 07      STA $07DF                 ;
CODE_03881E:        A5 E4         LDA $E4                   ;
CODE_038820:        8D DE 07      STA $07DE                 ;
CODE_038823:        64 E4         STZ $E4                   ;
CODE_038825:        AD BB 06      LDA $06BB                 ;
CODE_038828:        20 3A 88      JSR CODE_03883A           ;
CODE_03882B:        8D E5 07      STA $07E5                 ;
CODE_03882E:        A5 E4         LDA $E4                   ;
CODE_038830:        8D E4 07      STA $07E4                 ;
CODE_038833:        A9 01         LDA #$01                  ;
CODE_038835:        8D 1A 0E      STA $0E1A                 ;
CODE_038838:        FA            PLX                       ;
CODE_038839:        60            RTS                       ;

CODE_03883A:        C9 0A         CMP #$0A                  ;
CODE_03883C:        90 07         BCC CODE_038845           ;
CODE_03883E:        E6 E4         INC $E4                   ;
CODE_038840:        38            SEC                       ;
CODE_038841:        E9 0A         SBC #$0A                  ;
CODE_038843:        80 F5         BRA CODE_03883A           ;

CODE_038845:        60            RTS                       ;

CODE_038846:        8D 5F 07      STA $075F                 ;
CODE_038849:        8D 66 07      STA $0766                 ;
CODE_03884C:        48            PHA                       ;
CODE_03884D:        22 5B C9 05   JSL CODE_05C95B           ;
CODE_038851:        68            PLA                       ;
CODE_038852:        60            RTS                       ;

DATA_038853:        db $0C,$00,$02,$49,$80,$05,$2E,$12
                    db $24,$10,$24,$10,$FF,$FF

CODE_038861:        C2 20         REP #$20                  ;
CODE_038863:        A0 0C         LDY #$0C                  ;
CODE_038865:        B9 53 88      LDA $8853,y               ;
CODE_038868:        99 00 17      STA $1700,y               ;
CODE_03886B:        88            DEY                       ;
CODE_03886C:        88            DEY                       ;
CODE_03886D:        10 F6         BPL CODE_038865           ;
CODE_03886F:        AC 7A 07      LDY $077A                 ;
CODE_038872:        F0 0C         BEQ CODE_038880           ;
CODE_038874:        A9 24 10      LDA #$1024                ;
CODE_038877:        8D 06 17      STA $1706                 ;
CODE_03887A:        A9 2E 12      LDA #$122E                ;
CODE_03887D:        8D 0A 17      STA $170A                 ;
CODE_038880:        E2 20         SEP #$20                  ;
CODE_038882:        60            RTS                       ;

CODE_038883:        AE 17 07      LDX $0717                 ;\ Current demo action in X
CODE_038886:        AD 18 07      LDA $0718                 ; |
CODE_038889:        D0 19         BNE CODE_0388A4           ; |If timer isn't 0 yet, branch
CODE_03888B:        E8            INX                       ; |
CODE_03888C:        EE 17 07      INC $0717                 ; |
CODE_03888F:        38            SEC                       ;
CODE_038890:        AD FB 07      LDA $07FB                 ;
CODE_038893:        F0 06         BEQ CODE_03889B           ;
CODE_038895:        BF 21 EE 05   LDA $05EE21,x             ;
CODE_038899:        80 04         BRA CODE_03889F           ;

CODE_03889B:        BF F4 ED 05   LDA $05EDF4,x             ;
CODE_03889F:        8D 18 07      STA $0718                 ;
CODE_0388A2:        F0 16         BEQ CODE_0388BA           ;
CODE_0388A4:        AD FB 07      LDA $07FB                 ;
CODE_0388A7:        F0 06         BEQ CODE_0388AF           ;
CODE_0388A9:        BF 0A EE 05   LDA $05EE0A,x             ;
CODE_0388AD:        80 04         BRA CODE_0388B3           ;

CODE_0388AF:        BF DF ED 05   LDA $05EDDF,x             ;
CODE_0388B3:        8D F4 0F      STA $0FF4                 ;
CODE_0388B6:        CE 18 07      DEC $0718                 ;
CODE_0388B9:        18            CLC                       ;
CODE_0388BA:        60            RTS                       ;

;Defeated Bowser operation mode
CODE_0388BB:        20 D0 88      JSR CODE_0388D0           ;Princess/toad saved sequence activator
CODE_0388BE:        AD 72 07      LDA $0772                 ;
CODE_0388C1:        F0 07         BEQ CODE_0388CA           ;
CODE_0388C3:        A2 00         LDX #$00                  ;
CODE_0388C5:        86 9E         STX $9E                   ;
CODE_0388C7:        20 B0 C3      JSR CODE_03C3B0           ;
CODE_0388CA:        20 13 FD      JSR CODE_03FD13           ;
CODE_0388CD:        4C 10 F7      JMP CODE_03F710           ;

CODE_0388D0:        AD 80 16      LDA $1680                 ;\
CODE_0388D3:        D0 0F         BNE CODE_0388E4           ; |If world 8, jump to other pointers
CODE_0388D5:        AD 5F 07      LDA $075F                 ; |
CODE_0388D8:        C9 07         CMP #$07                  ; |
CODE_0388DA:        F0 08         BEQ CODE_0388E4           ;/
CODE_0388DC:        AD 72 07      LDA $0772                 ;
CODE_0388DF:        0A            ASL A                     ;
CODE_0388E0:        AA            TAX                       ;
CODE_0388E1:        7C EC 88      JMP (PNTR_0388EC,x)       ;

;Victory commands for world 8
CODE_0388E4:        AD 72 07      LDA $0772                 ;
CODE_0388E7:        0A            ASL A                     ;
CODE_0388E8:        AA            TAX                       ;
CODE_0388E9:        7C FA 88      JMP (PNTR_0388FA,x)       ;

;Bowser victory pointers
PNTR_0388EC:        dw CODE_03D4D0                          ;$00 - Collapse bridge if necessary
                    dw CODE_0389D2
                    dw CODE_0389EA
                    dw CODE_038A55
                    dw CODE_038A6B
                    dw CODE_038993
                    dw CODE_038AD4

;Bowser victory pointers - World 8
PNTR_0388FA:        dw CODE_03D4D0                          ;$00 - Collapse bridge if necessary
                    dw CODE_0389CC
                    dw CODE_0389EA
                    dw CODE_038918
                    dw CODE_03892C
                    dw CODE_038993
                    dw CODE_038955
                    dw CODE_03895C
                    dw CODE_03896B
                    dw CODE_03897C
                    dw CODE_038981
                    dw CODE_038985
                    dw CODE_038AD4                          ;
                    dw CODE_038989                          ;$0D - Wait until player pushes start button
                    dw CODE_03898E                          ;$0E - Player chose to continue the game

CODE_038918:        AD 54 07      LDA $0754                 ;
CODE_03891B:        F0 08         BEQ CODE_038925           ;
CODE_03891D:        22 2D DE 04   JSL CODE_04DE2D           ;
CODE_038921:        EE 72 07      INC $0772                 ;
CODE_038924:        60            RTS                       ;

CODE_038925:        EE 72 07      INC $0772                 ;
CODE_038928:        EE 72 07      INC $0772                 ;
CODE_03892B:        60            RTS                       ;

CODE_03892C:        9C F4 0F      STZ $0FF4                 ;\
CODE_03892F:        9C F6 0F      STZ $0FF6                 ; |
CODE_038932:        9C F5 0F      STZ $0FF5                 ; |
CODE_038935:        9C F7 0F      STZ $0FF7                 ; |Zero out all controller data
CODE_038938:        9C F8 0F      STZ $0FF8                 ; |
CODE_03893B:        9C F9 0F      STZ $0FF9                 ; |
CODE_03893E:        9C FA 0F      STZ $0FFA                 ; |
CODE_038941:        9C FB 0F      STZ $0FFB                 ;/
CODE_038944:        A9 02         LDA #$02                  ;\
CODE_038946:        8D 8F 07      STA $078F                 ;/End of level timer to score conversion speed
CODE_038949:        20 70 AD      JSR CODE_03AD70           ;
CODE_03894C:        AD 54 07      LDA $0754                 ;\
CODE_03894F:        D0 03         BNE CODE_038954           ;/Return if small mario
CODE_038951:        EE 72 07      INC $0772                 ;
CODE_038954:        60            RTS                       ;

CODE_038955:        EE 72 07      INC $0772                 ;
CODE_038958:        EE 87 0F      INC $0F87                 ;
CODE_03895B:        60            RTS                       ;

CODE_03895C:        22 5F DC 04   JSL CODE_04DC5F           ;
CODE_038960:        AD 87 0F      LDA $0F87                 ;
CODE_038963:        C9 06         CMP #$06                  ;
CODE_038965:        90 03         BCC CODE_03896A           ;
CODE_038967:        EE 72 07      INC $0772                 ;
CODE_03896A:        60            RTS                       ;

CODE_03896B:        A9 0E         LDA #$0E                  ;\
CODE_03896D:        8D 02 16      STA $1602                 ;/Princess got rescued music.
CODE_038970:        22 60 D8 04   JSL CODE_04D860           ;Upload new palettes for the kiss sequence
CODE_038974:        22 12 DE 05   JSL CODE_05DE12           ;
CODE_038978:        EE 72 07      INC $0772                 ;
CODE_03897B:        60            RTS                       ;

CODE_03897C:        22 8B DE 04   JSL CODE_04DE8B           ;
CODE_038980:        60            RTS                       ;

CODE_038981:        EE 72 07      INC $0772                 ;
CODE_038984:        60            RTS                       ;

CODE_038985:        EE 72 07      INC $0772                 ;
CODE_038988:        60            RTS                       ;

;Rescued Peach - Operation $0D
CODE_038989:        22 2A 86 04   JSL CODE_04862A           ;Wait until player pushes the start button
CODE_03898D:        60            RTS                       ;

;Rescued Peach - Operation $0E
CODE_03898E:        22 40 86 04   JSL CODE_048640           ;Player chose to continue the game
CODE_038992:        60            RTS                       ;

CODE_038993:        AD B1 07      LDA $07B1                 ;
CODE_038996:        C9 06         CMP #$06                  ;
CODE_038998:        B0 31         BCS CODE_0389CB           ;
CODE_03899A:        AD 43 21      LDA $2143                 ;
CODE_03899D:        29 7F         AND #$7F                  ;\
CODE_03899F:        C9 4B         CMP #$4B                  ; |If the "Timer converted to score" sound...
CODE_0389A1:        F0 05         BEQ CODE_0389A8           ;/...is already playing, skip the SFX write
CODE_0389A3:        A9 4B         LDA #$4B                  ;\"Timer converted to score" sound
CODE_0389A5:        8D 03 16      STA $1603                 ;/(At level end)
CODE_0389A8:        20 09 D8      JSR CODE_03D809           ;
CODE_0389AB:        AD E9 07      LDA $07E9                 ;\
CODE_0389AE:        0D EA 07      ORA $07EA                 ; |Check if timer is 000 during decrement
CODE_0389B1:        0D EB 07      ORA $07EB                 ; |at level end. If it is not 000, return
CODE_0389B4:        D0 15         BNE CODE_0389CB           ;/
CODE_0389B6:        A9 4C         LDA #$4C                  ;\Stops the "Timer converted to score" sound
CODE_0389B8:        8D 03 16      STA $1603                 ;/(at level end)
CODE_0389BB:        8D 1A 0E      STA $0E1A                 ;
CODE_0389BE:        A9 30         LDA #$30                  ;
CODE_0389C0:        8D 88 07      STA $0788                 ;
CODE_0389C3:        A9 06         LDA #$06                  ;
CODE_0389C5:        8D B1 07      STA $07B1                 ;
CODE_0389C8:        EE 72 07      INC $0772                 ;
CODE_0389CB:        60            RTS                       ;

CODE_0389CC:        22 54 DE 04   JSL CODE_04DE54           ;
CODE_0389D0:        80 09         BRA CODE_0389DB           ;

CODE_0389D2:        AD 76 0B      LDA $0B76                 ;
CODE_0389D5:        F0 0E         BEQ CODE_0389E5           ;
CODE_0389D7:        22 07 ED 04   JSL CODE_04ED07           ;
CODE_0389DB:        AE 1B 07      LDX $071B                 ;
CODE_0389DE:        E8            INX                       ;
CODE_0389DF:        8E 03 02      STX $0203                 ;
CODE_0389E2:        4C 16 8F      JMP CODE_038F16           ;

CODE_0389E5:        22 CA EC 04   JSL CODE_04ECCA           ;
CODE_0389E9:        60            RTS                       ;

CODE_0389EA:        A5 96         LDA $96                   ;
CODE_0389EC:        F0 01         BEQ CODE_0389EF           ;
CODE_0389EE:        60            RTS                       ;

CODE_0389EF:        AD 82 0F      LDA $0F82                 ;
CODE_0389F2:        F0 04         BEQ CODE_0389F8           ;
CODE_0389F4:        22 55 DD 04   JSL CODE_04DD55           ;
CODE_0389F8:        A0 00         LDY #$00                  ;
CODE_0389FA:        8C 04 02      STY $0204                 ;
CODE_0389FD:        A5 78         LDA $78                   ;
CODE_0389FF:        CD 03 02      CMP $0203                 ;
CODE_038A02:        D0 24         BNE CODE_038A28           ;
CODE_038A04:        AD 5F 07      LDA $075F                 ;
CODE_038A07:        C9 07         CMP #$07                  ;
CODE_038A09:        D0 09         BNE CODE_038A14           ;
CODE_038A0B:        EE 04 02      INC $0204                 ;
CODE_038A0E:        22 DA DB 04   JSL CODE_04DBDA           ;
CODE_038A12:        80 18         BRA CODE_038A2C           ;

CODE_038A14:        C9 02         CMP #$02                  ;
CODE_038A16:        D0 09         BNE CODE_038A21           ;
CODE_038A18:        AD 19 02      LDA $0219                 ;
CODE_038A1B:        C9 44         CMP #$44                  ;
CODE_038A1D:        B0 0D         BCS CODE_038A2C           ;
CODE_038A1F:        80 07         BRA CODE_038A28           ;

CODE_038A21:        AD 19 02      LDA $0219                 ;
CODE_038A24:        C9 54         CMP #$54                  ;
CODE_038A26:        B0 04         BCS CODE_038A2C           ;
CODE_038A28:        EE 04 02      INC $0204                 ;
CODE_038A2B:        C8            INY                       ;
CODE_038A2C:        98            TYA                       ;
CODE_038A2D:        20 EA AF      JSR CODE_03AFEA           ;
CODE_038A30:        AD 1A 07      LDA $071A                 ;
CODE_038A33:        CD 03 02      CMP $0203                 ;
CODE_038A36:        F0 17         BEQ CODE_038A4F           ;
CODE_038A38:        AD 68 07      LDA $0768                 ;
CODE_038A3B:        18            CLC                       ;
CODE_038A3C:        69 80         ADC #$80                  ;
CODE_038A3E:        8D 68 07      STA $0768                 ;
CODE_038A41:        A9 01         LDA #$01                  ;
CODE_038A43:        69 00         ADC #$00                  ;
CODE_038A45:        A8            TAY                       ;
CODE_038A46:        20 82 AE      JSR CODE_03AE82           ;
CODE_038A49:        20 2C AE      JSR CODE_03AE2C           ;
CODE_038A4C:        EE 04 02      INC $0204                 ;
CODE_038A4F:        AD 04 02      LDA $0204                 ;
CODE_038A52:        F0 7C         BEQ CODE_038AD0           ;
CODE_038A54:        60            RTS                       ;

CODE_038A55:        EE 7F 0F      INC $0F7F                 ;
CODE_038A58:        AD 7F 0F      LDA $0F7F                 ;
CODE_038A5B:        C9 70         CMP #$70                  ;
CODE_038A5D:        D0 0B         BNE CODE_038A6A           ;
CODE_038A5F:        A9 01         LDA #$01                  ;
CODE_038A61:        8D 7E 0F      STA $0F7E                 ;
CODE_038A64:        9C 7F 0F      STZ $0F7F                 ;
CODE_038A67:        EE 72 07      INC $0772                 ;
CODE_038A6A:        60            RTS                       ;

CODE_038A6B:        AD 49 07      LDA $0749                 ;
CODE_038A6E:        D0 43         BNE CODE_038AB3           ;
CODE_038A70:        AD 19 07      LDA $0719                 ;
CODE_038A73:        F0 17         BEQ CODE_038A8C           ;
CODE_038A75:        C9 09         CMP #$09                  ;
CODE_038A77:        B0 3A         BCS CODE_038AB3           ;
CODE_038A79:        AC 5F 07      LDY $075F                 ;
CODE_038A7C:        C0 07         CPY #$07                  ;
CODE_038A7E:        D0 08         BNE CODE_038A88           ;
CODE_038A80:        C9 03         CMP #$03                  ;
CODE_038A82:        90 2F         BCC CODE_038AB3           ;
CODE_038A84:        E9 01         SBC #$01                  ;
CODE_038A86:        80 04         BRA CODE_038A8C           ;

CODE_038A88:        C9 02         CMP #$02                  ;
CODE_038A8A:        90 27         BCC CODE_038AB3           ;
CODE_038A8C:        A8            TAY                       ;
CODE_038A8D:        D0 08         BNE CODE_038A97           ;
CODE_038A8F:        AD 53 07      LDA $0753                 ;
CODE_038A92:        F0 14         BEQ CODE_038AA8           ;
CODE_038A94:        C8            INY                       ;
CODE_038A95:        D0 11         BNE CODE_038AA8           ;
CODE_038A97:        C8            INY                       ;
CODE_038A98:        AD 5F 07      LDA $075F                 ;
CODE_038A9B:        C9 07         CMP #$07                  ;
CODE_038A9D:        F0 09         BEQ CODE_038AA8           ;
CODE_038A9F:        88            DEY                       ;
CODE_038AA0:        C0 04         CPY #$04                  ;
CODE_038AA2:        B0 22         BCS CODE_038AC6           ;
CODE_038AA4:        C0 03         CPY #$03                  ;
CODE_038AA6:        B0 0B         BCS CODE_038AB3           ;
CODE_038AA8:        C0 03         CPY #$03                  ;
CODE_038AAA:        D0 00         BNE CODE_038AAC           ;
CODE_038AAC:        98            TYA                       ;
CODE_038AAD:        18            CLC                       ;
CODE_038AAE:        69 0C         ADC #$0C                  ;
CODE_038AB0:        8D 73 07      STA $0773                 ;
CODE_038AB3:        AD 49 07      LDA $0749                 ;
CODE_038AB6:        18            CLC                       ;
CODE_038AB7:        69 04         ADC #$04                  ;
CODE_038AB9:        8D 49 07      STA $0749                 ;
CODE_038ABC:        AD 19 07      LDA $0719                 ;
CODE_038ABF:        69 00         ADC #$00                  ;
CODE_038AC1:        8D 19 07      STA $0719                 ;
CODE_038AC4:        C9 07         CMP #$07                  ;
CODE_038AC6:        90 0B         BCC CODE_038AD3           ;
CODE_038AC8:        A9 06         LDA #$06                  ;
CODE_038ACA:        8D B1 07      STA $07B1                 ;
CODE_038ACD:        8D 67 0E      STA $0E67                 ;
CODE_038AD0:        EE 72 07      INC $0772                 ;
CODE_038AD3:        60            RTS                       ;

CODE_038AD4:        AD B1 07      LDA $07B1                 ;
CODE_038AD7:        D0 2E         BNE CODE_038B07           ;
CODE_038AD9:        AD 80 16      LDA $1680                 ;
CODE_038ADC:        D0 2A         BNE CODE_038B08           ;
CODE_038ADE:        AC 5F 07      LDY $075F                 ;\
CODE_038AE1:        C0 07         CPY #$07                  ; |
CODE_038AE3:        B0 23         BCS CODE_038B08           ;/ If current world is 8 or higher, branch
CODE_038AE5:        A9 00         LDA #$00                  ;\
CODE_038AE7:        8D 60 07      STA $0760                 ; |
CODE_038AEA:        8D 5C 07      STA $075C                 ; |Zero out player's current level number (set it to level 1)
CODE_038AED:        8D 72 07      STA $0772                 ;/ Set operation mode to 0
CODE_038AF0:        EE 5F 07      INC $075F                 ;Increase current world by 1
CODE_038AF3:        A9 01         LDA #$01                  ;\
CODE_038AF5:        8D A5 0B      STA $0BA5                 ;/Lock animations (for some reason)
CODE_038AF8:        20 2B A2      JSR CODE_03A22B           ;Swap players if necessary
CODE_038AFB:        22 0B C0 04   JSL CODE_04C00B           ;Set level number and map type
CODE_038AFF:        EE 57 07      INC $0757                 ;Increase operation mode to $01 (because it was set to 0 earlier)
CODE_038B02:        A9 01         LDA #$01                  ;\
CODE_038B04:        8D 70 07      STA $0770                 ;/Game operation mode = main
CODE_038B07:        60            RTS                       ;

;Handle new world after rescuing the princess
CODE_038B08:        4C 04 A2      JMP CODE_03A204           ;

CODE_038B0B:        60            RTS                       ;

DATA_038B0C:        db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB
                    db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E
                    db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE

DATA_038B24:        db $FF,$41,$42,$44,$45,$48,$31,$32
                    db $34,$35,$38,$00

CODE_038B30:        BD 10 01      LDA $0110,x               ;
CODE_038B33:        F0 D2         BEQ CODE_038B07           ;
CODE_038B35:        C9 0B         CMP #$0B                  ;
CODE_038B37:        90 0C         BCC CODE_038B45           ;
CODE_038B39:        A9 0B         LDA #$0B                  ;
CODE_038B3B:        9D 10 01      STA $0110,x               ;
CODE_038B3E:        E0 09         CPX #$09                  ;
CODE_038B40:        F0 03         BEQ CODE_038B45           ;
CODE_038B42:        8D 84 02      STA $0284                 ;
CODE_038B45:        A8            TAY                       ;
CODE_038B46:        BD 38 01      LDA $0138,x               ;
CODE_038B49:        D0 04         BNE CODE_038B4F           ;
CODE_038B4B:        9D 10 01      STA $0110,x               ;
CODE_038B4E:        60            RTS                       ;

CODE_038B4F:        DE 38 01      DEC $0138,x               ;
CODE_038B52:        C9 2B         CMP #$2B                  ;
CODE_038B54:        D0 20         BNE CODE_038B76           ;
CODE_038B56:        C0 0B         CPY #$0B                  ;
CODE_038B58:        D0 09         BNE CODE_038B63           ;
CODE_038B5A:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_038B5E:        A9 05         LDA #$05                  ;\1-UP sound
CODE_038B60:        8D 03 16      STA $1603                 ;/
CODE_038B63:        B9 24 8B      LDA $8B24,y               ;
CODE_038B66:        4A            LSR A                     ;
CODE_038B67:        4A            LSR A                     ;
CODE_038B68:        4A            LSR A                     ;
CODE_038B69:        4A            LSR A                     ;
CODE_038B6A:        AA            TAX                       ;
CODE_038B6B:        B9 24 8B      LDA $8B24,y               ;
CODE_038B6E:        29 0F         AND #$0F                  ;
CODE_038B70:        9D 45 01      STA $0145,x               ;
CODE_038B73:        20 55 BD      JSR CODE_03BD55           ;
CODE_038B76:        A6 9E         LDX $9E                   ;
CODE_038B78:        AC 58 0B      LDY $0B58                 ;
CODE_038B7B:        B9 01 08      LDA $0801,y               ;
CODE_038B7E:        C9 F0         CMP #$F0                  ;
CODE_038B80:        F0 0F         BEQ CODE_038B91           ;
CODE_038B82:        C8            INY                       ;
CODE_038B83:        C8            INY                       ;
CODE_038B84:        C8            INY                       ;
CODE_038B85:        C8            INY                       ;
CODE_038B86:        C8            INY                       ;
CODE_038B87:        C8            INY                       ;
CODE_038B88:        C8            INY                       ;
CODE_038B89:        C8            INY                       ;
CODE_038B8A:        C0 90         CPY #$90                  ;
CODE_038B8C:        D0 ED         BNE CODE_038B7B           ;
CODE_038B8E:        AC 58 0B      LDY $0B58                 ;
CODE_038B91:        BD 24 01      LDA $0124,x               ;
CODE_038B94:        C9 18         CMP #$18                  ;
CODE_038B96:        90 05         BCC CODE_038B9D           ;
CODE_038B98:        E9 01         SBC #$01                  ;
CODE_038B9A:        9D 24 01      STA $0124,x               ;
CODE_038B9D:        BD 24 01      LDA $0124,x               ;
CODE_038BA0:        20 42 EC      JSR CODE_03EC42           ;
CODE_038BA3:        86 E0         STX $E0                   ;
CODE_038BA5:        8A            TXA                       ;
CODE_038BA6:        0A            ASL A                     ;
CODE_038BA7:        AA            TAX                       ;
CODE_038BA8:        C2 20         REP #$20                  ;
CODE_038BAA:        BD 50 0E      LDA $0E50,x               ;
CODE_038BAD:        85 E2         STA $E2                   ;
CODE_038BAF:        18            CLC                       ;
CODE_038BB0:        69 08 00      ADC #$0008                ;
CODE_038BB3:        85 DE         STA $DE                   ;
CODE_038BB5:        E2 20         SEP #$20                  ;
CODE_038BB7:        A6 E0         LDX $E0                   ;
CODE_038BB9:        64 DD         STZ $DD                   ;
CODE_038BBB:        A5 E3         LDA $E3                   ;
CODE_038BBD:        F0 06         BEQ CODE_038BC5           ;
CODE_038BBF:        A5 DD         LDA $DD                   ;
CODE_038BC1:        09 01         ORA #$01                  ;
CODE_038BC3:        85 DD         STA $DD                   ;
CODE_038BC5:        A5 DD         LDA $DD                   ;
CODE_038BC7:        99 00 0C      STA $0C00,y               ;
CODE_038BCA:        BD 10 01      LDA $0110,x               ;
CODE_038BCD:        C9 06         CMP #$06                  ;
CODE_038BCF:        B0 04         BCS CODE_038BD5           ;
CODE_038BD1:        64 DD         STZ $DD                   ;
CODE_038BD3:        80 08         BRA CODE_038BDD           ;

CODE_038BD5:        C9 0B         CMP #$0B                  ;
CODE_038BD7:        F0 F8         BEQ CODE_038BD1           ;
CODE_038BD9:        A9 02         LDA #$02                  ;
CODE_038BDB:        85 DD         STA $DD                   ;
CODE_038BDD:        A5 DF         LDA $DF                   ;
CODE_038BDF:        F0 06         BEQ CODE_038BE7           ;
CODE_038BE1:        A5 DD         LDA $DD                   ;
CODE_038BE3:        09 01         ORA #$01                  ;
CODE_038BE5:        85 DD         STA $DD                   ;
CODE_038BE7:        A5 DD         LDA $DD                   ;
CODE_038BE9:        99 04 0C      STA $0C04,y               ;
CODE_038BEC:        A5 E2         LDA $E2                   ;
CODE_038BEE:        99 00 08      STA $0800,y               ;
CODE_038BF1:        A5 DE         LDA $DE                   ;
CODE_038BF3:        99 04 08      STA $0804,y               ;
CODE_038BF6:        BD 10 01      LDA $0110,x               ;
CODE_038BF9:        0A            ASL A                     ;
CODE_038BFA:        AA            TAX                       ;
CODE_038BFB:        BD 0C 8B      LDA $8B0C,x               ;
CODE_038BFE:        99 02 08      STA $0802,y               ;
CODE_038C01:        BD 0D 8B      LDA $8B0D,x               ;
CODE_038C04:        99 06 08      STA $0806,y               ;
CODE_038C07:        AA            TAX                       ;
CODE_038C08:        A9 32         LDA #$32                  ;
CODE_038C0A:        99 03 08      STA $0803,y               ;
CODE_038C0D:        E0 0E         CPX #$0E                  ;
CODE_038C0F:        D0 01         BNE CODE_038C12           ;
CODE_038C11:        1A            INC A                     ;
CODE_038C12:        99 07 08      STA $0807,y               ;
CODE_038C15:        A6 9E         LDX $9E                   ;
CODE_038C17:        60            RTS                       ;

CODE_038C18:        AD 3C 07      LDA $073C                 ;
CODE_038C1B:        0A            ASL A                     ;
CODE_038C1C:        AA            TAX                       ;
CODE_038C1D:        7C 20 8C      JMP (PNTR_038C20,x)       ;

PNTR_038C20:        dw CODE_038C3E
                    dw CODE_038C50
                    dw CODE_038C83
                    dw CODE_038C8B
                    dw CODE_038CFF
                    dw CODE_039213
                    dw CODE_038D7B
                    dw CODE_039213
                    dw CODE_038E37
                    dw CODE_038C6F
                    dw CODE_038C7A
                    dw CODE_038C7F
                    dw CODE_038E65
                    dw CODE_038EF1
                    dw CODE_038F11

CODE_038C3E:        AD 70 07      LDA $0770                 ;
CODE_038C41:        F0 29         BEQ CODE_038C6C           ;
CODE_038C43:        A2 03         LDX #$03                  ;
CODE_038C45:        9C 73 07      STZ $0773                 ;
CODE_038C48:        A9 01         LDA #$01                  ;
CODE_038C4A:        8D 00 12      STA $1200                 ;
CODE_038C4D:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038C50:        AD 44 07      LDA $0744                 ;
CODE_038C53:        48            PHA                       ;
CODE_038C54:        AD 56 07      LDA $0756                 ;
CODE_038C57:        48            PHA                       ;
CODE_038C58:        9C 56 07      STZ $0756                 ;
CODE_038C5B:        A9 02         LDA #$02                  ;
CODE_038C5D:        8D 44 07      STA $0744                 ;
CODE_038C60:        22 88 9A 04   JSL CODE_049A88           ;
CODE_038C64:        68            PLA                       ;
CODE_038C65:        8D 56 07      STA $0756                 ;
CODE_038C68:        68            PLA                       ;
CODE_038C69:        8D 44 07      STA $0744                 ;
CODE_038C6C:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038C6F:        A5 5C         LDA $5C                   ;
CODE_038C71:        22 FB C8 05   JSL CODE_05C8FB           ;
CODE_038C75:        22 6B 95 04   JSL CODE_04956B           ;
CODE_038C79:        60            RTS                       ;

CODE_038C7A:        22 7D 9A 04   JSL CODE_049A7D           ;
CODE_038C7E:        60            RTS                       ;

CODE_038C7F:        EE 3C 07      INC $073C                 ;
CODE_038C82:        60            RTS                       ;

CODE_038C83:        A9 00         LDA #$00                  ;
CODE_038C85:        20 FC 90      JSR CODE_0390FC           ;
CODE_038C88:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038C8B:        20 5E BD      JSR CODE_03BD5E           ;
CODE_038C8E:        C2 30         REP #$30                  ;
CODE_038C90:        AE 00 17      LDX $1700                 ;
CODE_038C93:        A9 58 72      LDA #$7258                ;
CODE_038C96:        9D 02 17      STA $1702,x               ;
CODE_038C99:        A9 00 07      LDA #$0700                ;
CODE_038C9C:        9D 04 17      STA $1704,x               ;
CODE_038C9F:        A9 28 20      LDA #$2028                ;
CODE_038CA2:        9D 06 17      STA $1706,x               ;
CODE_038CA5:        E2 20         SEP #$20                  ;
CODE_038CA7:        AD 5F 07      LDA $075F                 ;
CODE_038CAA:        1A            INC A                     ;
CODE_038CAB:        9D 08 17      STA $1708,x               ;
CODE_038CAE:        A9 20         LDA #$20                  ;
CODE_038CB0:        9D 09 17      STA $1709,x               ;
CODE_038CB3:        9D 0B 17      STA $170B,x               ;
CODE_038CB6:        9D 0D 17      STA $170D,x               ;
CODE_038CB9:        A9 24         LDA #$24                  ;
CODE_038CBB:        9D 0A 17      STA $170A,x               ;
CODE_038CBE:        AD 5C 07      LDA $075C                 ;
CODE_038CC1:        1A            INC A                     ;
CODE_038CC2:        9D 0C 17      STA $170C,x               ;
CODE_038CC5:        A9 FF         LDA #$FF                  ;
CODE_038CC7:        9D 0E 17      STA $170E,x               ;
CODE_038CCA:        AD 70 07      LDA $0770                 ;
CODE_038CCD:        D0 14         BNE CODE_038CE3           ;
CODE_038CCF:        AF F2 1F 70   LDA $701FF2               ;
CODE_038CD3:        D0 0E         BNE CODE_038CE3           ;
CODE_038CD5:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_038CD9:        30 08         BMI CODE_038CE3           ;
CODE_038CDB:        AF 00 FB 7F   LDA $7FFB00               ;
CODE_038CDF:        1A            INC A                     ;
CODE_038CE0:        9D 08 17      STA $1708,x               ;
CODE_038CE3:        C2 20         REP #$20                  ;
CODE_038CE5:        8A            TXA                       ;
CODE_038CE6:        18            CLC                       ;
CODE_038CE7:        69 0C 00      ADC #$000C                ;
CODE_038CEA:        8D 00 17      STA $1700                 ;
CODE_038CED:        AA            TAX                       ;
CODE_038CEE:        E2 20         SEP #$20                  ;
CODE_038CF0:        AD FC 07      LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_038CF3:        F0 05         BEQ CODE_038CFA           ;
CODE_038CF5:        A9 2A         LDA #$2A                  ;
CODE_038CF7:        9D FA 16      STA $16FA,x               ;
CODE_038CFA:        E2 10         SEP #$10                  ;
CODE_038CFC:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038CFF:        AD 59 07      LDA $0759                 ;
CODE_038D02:        F0 71         BEQ CODE_038D75           ;
CODE_038D04:        9C 59 07      STZ $0759                 ;
CODE_038D07:        A0 00         LDY #$00                  ;
CODE_038D09:        20 F3 85      JSR CODE_0385F3           ;
CODE_038D0C:        22 DD 91 04   JSL CODE_0491DD           ;
CODE_038D10:        A9 01         LDA #$01                  ;
CODE_038D12:        8D D6 0E      STA $0ED6                 ;
CODE_038D15:        A9 02         LDA #$02                  ;
CODE_038D17:        20 9D 8D      JSR CODE_038D9D           ;
CODE_038D1A:        AD 7A 07      LDA $077A                 ;
CODE_038D1D:        F0 55         BEQ CODE_038D74           ;
CODE_038D1F:        AD 61 07      LDA $0761                 ;
CODE_038D22:        30 50         BMI CODE_038D74           ;
CODE_038D24:        C2 20         REP #$20                  ;
CODE_038D26:        A9 58 72      LDA #$7258                ;
CODE_038D29:        99 02 17      STA $1702,y               ;
CODE_038D2C:        A9 00 07      LDA #$0700                ;
CODE_038D2F:        99 04 17      STA $1704,y               ;
CODE_038D32:        A9 28 20      LDA #$2028                ;
CODE_038D35:        99 06 17      STA $1706,y               ;
CODE_038D38:        E2 20         SEP #$20                  ;
CODE_038D3A:        AD 66 07      LDA $0766                 ;
CODE_038D3D:        1A            INC A                     ;
CODE_038D3E:        99 08 17      STA $1708,y               ;
CODE_038D41:        A9 20         LDA #$20                  ;
CODE_038D43:        99 09 17      STA $1709,y               ;
CODE_038D46:        99 0B 17      STA $170B,y               ;
CODE_038D49:        99 0D 17      STA $170D,y               ;
CODE_038D4C:        A9 24         LDA #$24                  ;
CODE_038D4E:        99 0A 17      STA $170A,y               ;
CODE_038D51:        AD 63 07      LDA $0763                 ;
CODE_038D54:        1A            INC A                     ;
CODE_038D55:        99 0C 17      STA $170C,y               ;
CODE_038D58:        A9 FF         LDA #$FF                  ;
CODE_038D5A:        99 0E 17      STA $170E,y               ;
CODE_038D5D:        C2 20         REP #$20                  ;
CODE_038D5F:        98            TYA                       ;
CODE_038D60:        18            CLC                       ;
CODE_038D61:        69 0C 00      ADC #$000C                ;
CODE_038D64:        8D 00 17      STA $1700                 ;
CODE_038D67:        A8            TAY                       ;
CODE_038D68:        E2 20         SEP #$20                  ;
CODE_038D6A:        AD 81 07      LDA $0781                 ;
CODE_038D6D:        F0 05         BEQ CODE_038D74           ;
CODE_038D6F:        A9 2A         LDA #$2A                  ;
CODE_038D71:        99 FA 16      STA $16FA,y               ;
CODE_038D74:        60            RTS                       ;

CODE_038D75:        EE 3C 07      INC $073C                 ;
CODE_038D78:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038D7B:        AD 70 07      LDA $0770                 ;
CODE_038D7E:        F0 49         BEQ CODE_038DC9           ;
CODE_038D80:        C9 03         CMP #$03                  ;
CODE_038D82:        F0 4B         BEQ CODE_038DCF           ;
CODE_038D84:        AD 52 07      LDA $0752                 ;
CODE_038D87:        D0 40         BNE CODE_038DC9           ;
CODE_038D89:        A4 5C         LDY $5C                   ;
CODE_038D8B:        C0 03         CPY #$03                  ;
CODE_038D8D:        F0 05         BEQ CODE_038D94           ;
CODE_038D8F:        AD 69 07      LDA $0769                 ;
CODE_038D92:        D0 35         BNE CODE_038DC9           ;
CODE_038D94:        20 61 F8      JSR CODE_03F861           ;
CODE_038D97:        22 E7 92 04   JSL CODE_0492E7           ;
CODE_038D9B:        A9 01         LDA #$01                  ;
CODE_038D9D:        20 FC 90      JSR CODE_0390FC           ;
CODE_038DA0:        20 24 92      JSR CODE_039224           ;
CODE_038DA3:        9C 04 12      STZ $1204                 ;
CODE_038DA6:        9C 05 12      STZ $1205                 ;
CODE_038DA9:        9C 06 12      STZ $1206                 ;
CODE_038DAC:        9C 09 12      STZ $1209                 ;
CODE_038DAF:        A9 20         LDA #$20                  ;
CODE_038DB1:        8D 0A 12      STA $120A                 ;
CODE_038DB4:        9C 03 12      STZ $1203                 ;
CODE_038DB7:        A9 02         LDA #$02                  ;
CODE_038DB9:        8D 7F 0E      STA $0E7F                 ;
CODE_038DBC:        9C 4F 0E      STZ $0E4F                 ;
CODE_038DBF:        9C 01 12      STZ $1201                 ;
CODE_038DC2:        9C 7E 0E      STZ $0E7E                 ;No screen pixelation/mosaic
CODE_038DC5:        9C 74 07      STZ $0774                 ;
CODE_038DC8:        60            RTS                       ;

CODE_038DC9:        A9 08         LDA #$08                  ;
CODE_038DCB:        8D 3C 07      STA $073C                 ;
CODE_038DCE:        60            RTS                       ;

CODE_038DCF:        9C 04 12      STZ $1204                 ;
CODE_038DD2:        9C 05 12      STZ $1205                 ;
CODE_038DD5:        9C 06 12      STZ $1206                 ;
CODE_038DD8:        9C 09 12      STZ $1209                 ;
CODE_038DDB:        A9 20         LDA #$20                  ;
CODE_038DDD:        8D 0A 12      STA $120A                 ;
CODE_038DE0:        9C 03 12      STZ $1203                 ;
CODE_038DE3:        AD 74 07      LDA $0774                 ;
CODE_038DE6:        F0 12         BEQ CODE_038DFA           ;
CODE_038DE8:        9C 4F 0E      STZ $0E4F                 ;
CODE_038DEB:        9C 74 07      STZ $0774                 ;
CODE_038DEE:        9C 01 12      STZ $1201                 ;
CODE_038DF1:        A9 02         LDA #$02                  ;
CODE_038DF3:        8D 7F 0E      STA $0E7F                 ;
CODE_038DF6:        22 DD 91 04   JSL CODE_0491DD           ;
CODE_038DFA:        A9 09         LDA #$09                  ;
CODE_038DFC:        8D B0 07      STA $07B0                 ;
CODE_038DFF:        A9 03         LDA #$03                  ;
CODE_038E01:        20 FC 90      JSR CODE_0390FC           ;
CODE_038E04:        AD 7A 07      LDA $077A                 ;
CODE_038E07:        F0 05         BEQ CODE_038E0E           ;
CODE_038E09:        AD 61 07      LDA $0761                 ;
CODE_038E0C:        10 1F         BPL CODE_038E2D           ;
CODE_038E0E:        DA            PHX                       ;
CODE_038E0F:        5A            PHY                       ;
CODE_038E10:        C2 10         REP #$10                  ;
CODE_038E12:        A2 00 00      LDX #$0000                ;
CODE_038E15:        64 E5         STZ $E5                   ;
CODE_038E17:        A4 E4         LDY $E4                   ;
CODE_038E19:        BD 30 90      LDA $9030,x               ;
CODE_038E1C:        99 02 17      STA $1702,y               ;
CODE_038E1F:        E8            INX                       ;
CODE_038E20:        C8            INY                       ;
CODE_038E21:        1A            INC A                     ;
CODE_038E22:        D0 F5         BNE CODE_038E19           ;
CODE_038E24:        8C 00 17      STY $1700                 ;
CODE_038E27:        E2 10         SEP #$10                  ;
CODE_038E29:        7A            PLY                       ;
CODE_038E2A:        FA            PLX                       ;
CODE_038E2B:        80 04         BRA CODE_038E31           ;

CODE_038E2D:        22 DF 86 04   JSL CODE_0486DF           ;
CODE_038E31:        9C C3 0E      STZ $0EC3                 ;
CODE_038E34:        4C 16 8F      JMP CODE_038F16           ;

CODE_038E37:        AD 74 07      LDA $0774                 ;
CODE_038E3A:        F0 06         BEQ CODE_038E42           ;
CODE_038E3C:        C9 01         CMP #$01                  ;
CODE_038E3E:        F0 0F         BEQ CODE_038E4F           ;
CODE_038E40:        80 0A         BRA CODE_038E4C           ;

CODE_038E42:        A9 01         LDA #$01                  ;
CODE_038E44:        8D 7F 0E      STA $0E7F                 ;
CODE_038E47:        9C 4F 0E      STZ $0E4F                 ;
CODE_038E4A:        80 18         BRA CODE_038E64           ;

CODE_038E4C:        EE 74 07      INC $0774                 ;
CODE_038E4F:        20 95 A2      JSR CODE_03A295           ;
CODE_038E52:        AD 1F 07      LDA $071F                 ;
CODE_038E55:        D0 F8         BNE CODE_038E4F           ;
CODE_038E57:        CE 1E 07      DEC $071E                 ;
CODE_038E5A:        10 03         BPL CODE_038E5F           ;
CODE_038E5C:        EE 3C 07      INC $073C                 ;
CODE_038E5F:        A9 06         LDA #$06                  ;
CODE_038E61:        8D 73 07      STA $0773                 ;
CODE_038E64:        60            RTS                       ;

CODE_038E65:        AD 70 07      LDA $0770                 ;
CODE_038E68:        F0 03         BEQ CODE_038E6D           ;
CODE_038E6A:        4C 16 8F      JMP CODE_038F16           ;

CODE_038E6D:        8B            PHB                       ;
CODE_038E6E:        A9 05         LDA #$05                  ;
CODE_038E70:        48            PHA                       ;
CODE_038E71:        AB            PLB                       ;
CODE_038E72:        A9 01         LDA #$01                  ;
CODE_038E74:        8D C8 0E      STA $0EC8                 ;
CODE_038E77:        C2 30         REP #$30                  ;
CODE_038E79:        AE 00 17      LDX $1700                 ;
CODE_038E7C:        A0 00 00      LDY #$0000                ;
CODE_038E7F:        B9 50 D8      LDA $D850,y               ;
CODE_038E82:        9D 02 17      STA $1702,x               ;
CODE_038E85:        1A            INC A                     ;
CODE_038E86:        F0 06         BEQ CODE_038E8E           ;
CODE_038E88:        E8            INX                       ;
CODE_038E89:        E8            INX                       ;
CODE_038E8A:        C8            INY                       ;
CODE_038E8B:        C8            INY                       ;
CODE_038E8C:        80 F1         BRA CODE_038E7F           ;

CODE_038E8E:        8E 00 17      STX $1700                 ;
CODE_038E91:        E2 30         SEP #$30                  ;
CODE_038E93:        AB            PLB                       ;
CODE_038E94:        9C 20 0E      STZ $0E20                 ;
CODE_038E97:        A9 80         LDA #$80                  ;
CODE_038E99:        8D 02 16      STA $1602                 ;
CODE_038E9C:        8D D6 0E      STA $0ED6                 ;
CODE_038E9F:        A9 05         LDA #$05                  ;
CODE_038EA1:        8D 73 07      STA $0773                 ;
CODE_038EA4:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_038EA8:        30 03         BMI CODE_038EAD           ;
CODE_038EAA:        20 B0 8E      JSR CODE_038EB0           ;
CODE_038EAD:        4C 0D 8F      JMP CODE_038F0D           ;

CODE_038EB0:        DA            PHX                       ;
CODE_038EB1:        5A            PHY                       ;
CODE_038EB2:        C2 30         REP #$30                  ;
CODE_038EB4:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_038EB8:        29 01 00      AND #$0001                ;
CODE_038EBB:        0A            ASL A                     ;
CODE_038EBC:        A8            TAY                       ;
CODE_038EBD:        AE 00 17      LDX $1700                 ;
CODE_038EC0:        A9 4A 02      LDA #$024A                ;
CODE_038EC3:        18            CLC                       ;
CODE_038EC4:        79 ED 8E      ADC $8EED,y               ;
CODE_038EC7:        EB            XBA                       ;
CODE_038EC8:        9D 02 17      STA $1702,x               ;
CODE_038ECB:        A9 18 40      LDA #$4018                ;
CODE_038ECE:        EB            XBA                       ;
CODE_038ECF:        9D 04 17      STA $1704,x               ;
CODE_038ED2:        A9 24 00      LDA #$0024                ;
CODE_038ED5:        9D 06 17      STA $1706,x               ;
CODE_038ED8:        A9 FF FF      LDA #$FFFF                ;
CODE_038EDB:        9D 08 17      STA $1708,x               ;
CODE_038EDE:        AD 00 17      LDA $1700                 ;
CODE_038EE1:        18            CLC                       ;
CODE_038EE2:        69 06 00      ADC #$0006                ;
CODE_038EE5:        8D 00 17      STA $1700                 ;
CODE_038EE8:        E2 30         SEP #$30                  ;
CODE_038EEA:        7A            PLY                       ;
CODE_038EEB:        FA            PLX                       ;
CODE_038EEC:        60            RTS                       ;

DATA_038EED:        dw $0040,$0000

CODE_038EF1:        AD 70 07      LDA $0770                 ;
CODE_038EF4:        D0 20         BNE CODE_038F16           ;
CODE_038EF6:        A2 00         LDX #$00                  ;
CODE_038EF8:        9D 00 03      STA $0300,x               ;
CODE_038EFB:        9D 00 04      STA $0400,x               ;
CODE_038EFE:        CA            DEX                       ;
CODE_038EFF:        D0 F7         BNE CODE_038EF8           ;
CODE_038F01:        AF 06 FB 7F   LDA $7FFB06               ;
CODE_038F05:        30 03         BMI CODE_038F0A           ;
CODE_038F07:        8D 7A 07      STA $077A                 ;
CODE_038F0A:        20 61 88      JSR CODE_038861           ;
CODE_038F0D:        EE 3C 07      INC $073C                 ;
CODE_038F10:        60            RTS                       ;

CODE_038F11:        A9 FA         LDA #$FA                  ;
CODE_038F13:        20 64 BD      JSR CODE_03BD64           ;
CODE_038F16:        EE 72 07      INC $0772                 ;
CODE_038F19:        60            RTS                       ;

DATA_038F1A:        db $58,$43,$00,$09,$16,$20,$0A,$20
                    db $1B,$20,$12,$20,$18,$20,$58,$52
                    db $00,$15,$20,$20,$18,$20,$1B,$20
                    db $15,$20,$0D,$20,$28,$20,$28,$20
                    db $1D,$20,$12,$20,$16,$20,$0E,$20
                    db $58,$68,$00,$09,$00,$20,$28,$20
                    db $28,$20,$27,$24,$25,$20,$FF,$59
                    db $6D,$00,$0F,$28,$20,$28,$20,$28
                    db $20,$25,$20,$28,$20,$28,$20,$28
                    db $20,$28,$20,$59,$E0,$40,$FE,$28
                    db $00,$59,$0B,$00,$13,$20,$20,$18
                    db $20,$1B,$20,$15,$20,$0D,$20,$28
                    db $20,$28,$20,$28,$20,$24,$20,$28
                    db $20,$58,$AC,$40,$0D,$28,$20,$FF
                    db $09,$6D,$00,$09,$E0,$19,$E1,$19
                    db $E2,$19,$E3,$19,$E4,$19,$09,$8D
                    db $00,$09,$F0,$19,$F1,$19,$F2,$19
                    db $F3,$19,$F4,$19,$09,$AC,$00,$0D
                    db $CA,$19,$CB,$19,$CC,$19,$CD,$19
                    db $24,$00,$CE,$19,$CF,$19,$09,$CC
                    db $00,$0D,$DA,$19,$DB,$19,$DC,$19
                    db $DD,$19,$24,$00,$DE,$19,$DF,$19
                    db $FF,$08,$CD,$00,$09,$E0,$19,$E1
                    db $19,$E2,$19,$E3,$19,$E4,$19,$08
                    db $ED,$00,$09,$F0,$19,$F1,$19,$F2
                    db $19,$F3,$19,$F4,$19,$09,$2B,$00
                    db $13,$C0,$19,$C1,$19,$C2,$19,$C3
                    db $19,$C4,$19,$C5,$19,$C6,$19,$C7
                    db $19,$C8,$19,$C9,$19,$09,$4B,$00
                    db $13,$D0,$19,$D1,$19,$D2,$19,$D3
                    db $19,$D4,$19,$D5,$19,$D6,$19,$D7
                    db $19,$D8,$19,$D9,$19,$09,$6D,$40
                    db $08,$24,$00,$09,$8D,$40,$08,$24
                    db $00,$09,$AC,$40,$0C,$24,$00,$09
                    db $CC,$40,$0C,$24,$00,$FF,$09,$AB
                    db $00,$0F,$A1,$02,$A2,$02,$A3,$02
                    db $A4,$02,$A5,$02,$A6,$02,$A7,$02
                    db $A8,$02,$09,$EB,$00,$19,$AE,$02
                    db $AF,$02,$B0,$02,$B1,$02,$AD,$02
                    db $A1,$02,$A2,$02,$A3,$02,$A4,$02
                    db $A5,$02,$A6,$02,$A7,$02,$A8,$02
                    db $0A,$2B,$00,$11,$AE,$02,$AF,$02
                    db $B0,$02,$B1,$02,$AD,$02,$A9,$02
                    db $AA,$02,$AB,$02,$AC,$02,$FF,$05
                    db $84,$00,$29,$20,$08,$0E,$08,$15
                    db $08,$0C,$08,$18,$08,$16,$08,$0E
                    db $08,$24,$00,$1D,$08,$18,$08,$24
                    db $00,$20,$08,$0A,$08,$1B,$08,$19
                    db $08,$24,$00,$23,$08,$18,$08,$17
                    db $08,$0E,$08,$2B,$08,$05,$E5,$00
                    db $01,$24,$08,$05,$ED,$00,$01,$24
                    db $08,$05,$F5,$00,$01,$24,$08,$FF
                    db $E5,$19,$E6,$19,$E7,$19,$E8,$19
                    db $E9,$19,$F5,$19,$F6,$19,$F7,$19
                    db $F8,$19,$F9,$19,$15,$20,$1E,$20
                    db $12,$20,$10,$20,$12,$20,$04,$03
                    db $02,$00,$24,$05,$24,$00,$08,$07
                    db $06,$00

DATA_0390E4:        dw $0000,$0000,$0037,$0037
                    dw $0070,$008C,$00B1,$00CD
                    dw $015F,$015F,$0116,$0116

CODE_0390FC:        48            PHA                       ;
CODE_0390FD:        0A            ASL A                     ;
CODE_0390FE:        A8            TAY                       ;
CODE_0390FF:        C0 04         CPY #$04                  ;
CODE_039101:        90 0C         BCC CODE_03910F           ;
CODE_039103:        C0 08         CPY #$08                  ;
CODE_039105:        90 02         BCC CODE_039109           ;
CODE_039107:        A0 08         LDY #$08                  ;
CODE_039109:        AD 7A 07      LDA $077A                 ;
CODE_03910C:        D0 01         BNE CODE_03910F           ;
CODE_03910E:        C8            INY                       ;
CODE_03910F:        84 F3         STY $F3                   ;
CODE_039111:        98            TYA                       ;
CODE_039112:        0A            ASL A                     ;
CODE_039113:        29 FF         AND #$FF                  ;
CODE_039115:        C2 30         REP #$30                  ;
CODE_039117:        29 FF 00      AND #$00FF                ;
CODE_03911A:        A8            TAY                       ;
CODE_03911B:        BE E4 90      LDX $90E4,y               ;
CODE_03911E:        AC 00 17      LDY $1700                 ;
CODE_039121:        E2 20         SEP #$20                  ;
CODE_039123:        BD 1A 8F      LDA $8F1A,x               ;
CODE_039126:        C9 FF         CMP #$FF                  ;
CODE_039128:        F0 07         BEQ CODE_039131           ;
CODE_03912A:        99 02 17      STA $1702,y               ;
CODE_03912D:        E8            INX                       ;
CODE_03912E:        C8            INY                       ;
CODE_03912F:        80 F2         BRA CODE_039123           ;

CODE_039131:        A9 FF         LDA #$FF                  ;
CODE_039133:        99 02 17      STA $1702,y               ;
CODE_039136:        84 E4         STY $E4                   ;
CODE_039138:        E2 10         SEP #$10                  ;
CODE_03913A:        68            PLA                       ;
CODE_03913B:        AA            TAX                       ;
CODE_03913C:        C9 04         CMP #$04                  ;
CODE_03913E:        90 03         BCC CODE_039143           ;
CODE_039140:        4C DA 91      JMP CODE_0391DA           ;

CODE_039143:        CA            DEX                       ;
CODE_039144:        D0 5C         BNE CODE_0391A2           ;
CODE_039146:        22 95 88 04   JSL CODE_048895           ;
CODE_03914A:        DA            PHX                       ;
CODE_03914B:        AE 00 17      LDX $1700                 ;
CODE_03914E:        AD 5A 07      LDA $075A                 ;
CODE_039151:        1A            INC A                     ;
CODE_039152:        C9 0A         CMP #$0A                  ;
CODE_039154:        90 2D         BCC CODE_039183           ;
CODE_039156:        64 E4         STZ $E4                   ;
CODE_039158:        64 E5         STZ $E5                   ;
CODE_03915A:        38            SEC                       ;
CODE_03915B:        E9 64         SBC #$64                  ;
CODE_03915D:        90 04         BCC CODE_039163           ;
CODE_03915F:        E6 E4         INC $E4                   ;
CODE_039161:        80 F7         BRA CODE_03915A           ;

CODE_039163:        18            CLC                       ;
CODE_039164:        69 64         ADC #$64                  ;
CODE_039166:        38            SEC                       ;
CODE_039167:        E9 0A         SBC #$0A                  ;
CODE_039169:        90 04         BCC CODE_03916F           ;
CODE_03916B:        E6 E5         INC $E5                   ;
CODE_03916D:        80 F7         BRA CODE_039166           ;

CODE_03916F:        18            CLC                       ;
CODE_039170:        69 0A         ADC #$0A                  ;
CODE_039172:        85 E6         STA $E6                   ;
CODE_039174:        A4 E4         LDY $E4                   ;
CODE_039176:        F0 04         BEQ CODE_03917C           ;
CODE_039178:        98            TYA                       ;
CODE_039179:        9D 0E 17      STA $170E,x               ;
CODE_03917C:        A5 E5         LDA $E5                   ;
CODE_03917E:        9D 10 17      STA $1710,x               ;
CODE_039181:        A5 E6         LDA $E6                   ;
CODE_039183:        9D 12 17      STA $1712,x               ;
CODE_039186:        AC 5F 07      LDY $075F                 ;
CODE_039189:        C8            INY                       ;
CODE_03918A:        98            TYA                       ;
CODE_03918B:        9D 2E 17      STA $172E,x               ;
CODE_03918E:        AC 5C 07      LDY $075C                 ;
CODE_039191:        C8            INY                       ;
CODE_039192:        98            TYA                       ;
CODE_039193:        9D 32 17      STA $1732,x               ;
CODE_039196:        AD FC 07      LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_039199:        F0 05         BEQ CODE_0391A0           ;
CODE_03919B:        A9 2A         LDA #$2A                  ;
CODE_03919D:        9D 2C 17      STA $172C,x               ;
CODE_0391A0:        FA            PLX                       ;
CODE_0391A1:        60            RTS                       ;

CODE_0391A2:        AD 7A 07      LDA $077A                 ;
CODE_0391A5:        F0 32         BEQ CODE_0391D9           ;
CODE_0391A7:        AD C3 0E      LDA $0EC3                 ;
CODE_0391AA:        F0 2D         BEQ CODE_0391D9           ;
CODE_0391AC:        5A            PHY                       ;
CODE_0391AD:        AD 00 17      LDA $1700                 ;
CODE_0391B0:        18            CLC                       ;
CODE_0391B1:        69 09         ADC #$09                  ;
CODE_0391B3:        A8            TAY                       ;
CODE_0391B4:        A5 F3         LDA $F3                   ;
CODE_0391B6:        C9 04         CMP #$04                  ;
CODE_0391B8:        F0 04         BEQ CODE_0391BE           ;
CODE_0391BA:        C9 06         CMP #$06                  ;
CODE_0391BC:        D0 11         BNE CODE_0391CF           ;
CODE_0391BE:        B9 BA 90      LDA $90BA,y               ;
CODE_0391C1:        99 06 17      STA $1706,y               ;
CODE_0391C4:        B9 C4 90      LDA $90C4,y               ;
CODE_0391C7:        99 14 17      STA $1714,y               ;
CODE_0391CA:        88            DEY                       ;
CODE_0391CB:        10 F1         BPL CODE_0391BE           ;
CODE_0391CD:        80 09         BRA CODE_0391D8           ;

CODE_0391CF:        B9 CE 90      LDA $90CE,y               ;
CODE_0391D2:        99 06 17      STA $1706,y               ;
CODE_0391D5:        88            DEY                       ;
CODE_0391D6:        10 F7         BPL CODE_0391CF           ;
CODE_0391D8:        7A            PLY                       ;
CODE_0391D9:        60            RTS                       ;

CODE_0391DA:        E9 04         SBC #$04                  ;
CODE_0391DC:        0A            ASL A                     ;
CODE_0391DD:        0A            ASL A                     ;
CODE_0391DE:        AA            TAX                       ;
CODE_0391DF:        C2 30         REP #$30                  ;
CODE_0391E1:        AD 00 17      LDA $1700                 ;
CODE_0391E4:        18            CLC                       ;
CODE_0391E5:        69 00 00      ADC #$0000                ;
CODE_0391E8:        A8            TAY                       ;
CODE_0391E9:        E2 30         SEP #$30                  ;
CODE_0391EB:        A9 12         LDA #$12                  ;
CODE_0391ED:        18            CLC                       ;
CODE_0391EE:        6D 00 17      ADC $1700                 ;
CODE_0391F1:        85 E6         STA $E6                   ;
CODE_0391F3:        BD D8 90      LDA $90D8,x               ;
CODE_0391F6:        99 34 17      STA $1734,y               ;
CODE_0391F9:        E8            INX                       ;
CODE_0391FA:        C8            INY                       ;
CODE_0391FB:        C8            INY                       ;
CODE_0391FC:        C8            INY                       ;
CODE_0391FD:        C8            INY                       ;
CODE_0391FE:        C8            INY                       ;
CODE_0391FF:        C8            INY                       ;
CODE_039200:        C4 E6         CPY $E6                   ;
CODE_039202:        90 EF         BCC CODE_0391F3           ;
CODE_039204:        C2 20         REP #$20                  ;
CODE_039206:        A9 40 00      LDA #$0040                ;
CODE_039209:        18            CLC                       ;
CODE_03920A:        6D 00 17      ADC $1700                 ;
CODE_03920D:        8D 00 17      STA $1700                 ;
CODE_039210:        E2 20         SEP #$20                  ;
CODE_039212:        60            RTS                       ;

CODE_039213:        AD B0 07      LDA $07B0                 ;
CODE_039216:        D0 14         BNE CODE_03922C           ;
CODE_039218:        AD 70 07      LDA $0770                 ;
CODE_03921B:        C9 03         CMP #$03                  ;
CODE_03921D:        F0 05         BEQ CODE_039224           ;
CODE_03921F:        A9 01         LDA #$01                  ;
CODE_039221:        8D 7F 0E      STA $0E7F                 ;
CODE_039224:        A9 07         LDA #$07                  ;
CODE_039226:        8D B0 07      STA $07B0                 ;
CODE_039229:        EE 3C 07      INC $073C                 ;
CODE_03922C:        60            RTS                       ;

CODE_03922D:        AD C9 0E      LDA $0EC9                 ;\If done rendering the level, return?
CODE_039230:        D0 FA         BNE CODE_03922C           ;/or: If no objects flag is set, return?
CODE_039232:        C2 30         REP #$30                  ;16-bit AXY
CODE_039234:        AC 00 1A      LDY $1A00                 ;\ 
CODE_039237:        84 00         STY $00                   ;/ ??
CODE_039239:        AD 20 07      LDA $0720                 ;\Load layer 1 drawing handler
CODE_03923C:        99 02 1A      STA $1A02,y               ;/Store it here?
CODE_03923F:        EB            XBA                       ;\
CODE_039240:        8D CC 0E      STA $0ECC                 ;/Swap high and low bytes and store it here.
CODE_039243:        A9 80 3D      LDA #$3D80                ;
CODE_039246:        99 04 1A      STA $1A04,y               ;
CODE_039249:        A9 24 00      LDA #$0024                ;
CODE_03924C:        99 06 1A      STA $1A06,y               ;
CODE_03924F:        99 08 1A      STA $1A08,y               ;
CODE_039252:        99 0A 1A      STA $1A0A,y               ;
CODE_039255:        99 0C 1A      STA $1A0C,y               ;
CODE_039258:        E2 30         SEP #$30                  ;
CODE_03925A:        A2 00         LDX #$00                  ;
CODE_03925C:        AD E7 0E      LDA $0EE7                 ;
CODE_03925F:        F0 10         BEQ CODE_039271           ;
CODE_039261:        8D E6 0E      STA $0EE6                 ;
CODE_039264:        AD 20 07      LDA $0720                 ;
CODE_039267:        8D F5 0E      STA $0EF5                 ;
CODE_03926A:        AD 21 07      LDA $0721                 ;
CODE_03926D:        1A            INC A                     ;
CODE_03926E:        8D F4 0E      STA $0EF4                 ;
CODE_039271:        86 02         STX $02                   ;
CODE_039273:        BD A1 06      LDA $06A1,x               ;
CODE_039276:        29 C0         AND #$C0                  ;
CODE_039278:        0A            ASL A                     ;
CODE_039279:        2A            ROL A                     ;
CODE_03927A:        2A            ROL A                     ;
CODE_03927B:        A8            TAY                       ;
CODE_03927C:        B9 38 94      LDA $9438,y               ;
CODE_03927F:        85 06         STA $06                   ;
CODE_039281:        B9 3C 94      LDA $943C,y               ;
CODE_039284:        85 07         STA $07                   ;
CODE_039286:        C2 30         REP #$30                  ;
CODE_039288:        8A            TXA                       ;
CODE_039289:        29 FF 00      AND #$00FF                ;
CODE_03928C:        AA            TAX                       ;
CODE_03928D:        BD A1 06      LDA $06A1,x               ;
CODE_039290:        29 3F 00      AND #$003F                ;
CODE_039293:        0A            ASL A                     ;
CODE_039294:        0A            ASL A                     ;
CODE_039295:        0A            ASL A                     ;
CODE_039296:        85 03         STA $03                   ;
CODE_039298:        AD 1F 07      LDA $071F                 ;
CODE_03929B:        29 01 00      AND #$0001                ;
CODE_03929E:        49 01 00      EOR #$0001                ;
CODE_0392A1:        0A            ASL A                     ;
CODE_0392A2:        0A            ASL A                     ;
CODE_0392A3:        65 03         ADC $03                   ;
CODE_0392A5:        A8            TAY                       ;
CODE_0392A6:        A6 00         LDX $00                   ;
CODE_0392A8:        B1 06         LDA ($06),y               ;
CODE_0392AA:        9D 0E 1A      STA $1A0E,x               ;
CODE_0392AD:        C8            INY                       ;
CODE_0392AE:        C8            INY                       ;
CODE_0392AF:        B1 06         LDA ($06),y               ;
CODE_0392B1:        9D 10 1A      STA $1A10,x               ;
CODE_0392B4:        E6 00         INC $00                   ;
CODE_0392B6:        E6 00         INC $00                   ;
CODE_0392B8:        E6 00         INC $00                   ;
CODE_0392BA:        E6 00         INC $00                   ;
CODE_0392BC:        E2 30         SEP #$30                  ;
CODE_0392BE:        A6 02         LDX $02                   ;
CODE_0392C0:        E8            INX                       ;
CODE_0392C1:        E0 0D         CPX #$0D                  ;
CODE_0392C3:        B0 03         BCS CODE_0392C8           ;
CODE_0392C5:        4C 71 92      JMP CODE_039271           ;

CODE_0392C8:        C2 30         REP #$30                  ;
CODE_0392CA:        AC 00 1A      LDY $1A00                 ;
CODE_0392CD:        B9 0E 1A      LDA $1A0E,y               ;
CODE_0392D0:        C9 A2 18      CMP #$18A2                ;
CODE_0392D3:        F0 05         BEQ CODE_0392DA           ;
CODE_0392D5:        C9 A3 18      CMP #$18A3                ;
CODE_0392D8:        D0 0C         BNE CODE_0392E6           ;
CODE_0392DA:        99 06 1A      STA $1A06,y               ;
CODE_0392DD:        99 08 1A      STA $1A08,y               ;
CODE_0392E0:        99 0A 1A      STA $1A0A,y               ;
CODE_0392E3:        99 0C 1A      STA $1A0C,y               ;
CODE_0392E6:        A5 00         LDA $00                   ;
CODE_0392E8:        18            CLC                       ;
CODE_0392E9:        69 0E 00      ADC #$000E                ;
CODE_0392EC:        A8            TAY                       ;
CODE_0392ED:        A9 FF FF      LDA #$FFFF                ;
CODE_0392F0:        99 02 1A      STA $1A02,y               ;
CODE_0392F3:        8C 00 1A      STY $1A00                 ;
CODE_0392F6:        AD 43 07      LDA $0743                 ;
CODE_0392F9:        29 FF 00      AND #$00FF                ;
CODE_0392FC:        D0 36         BNE CODE_039334           ;
CODE_0392FE:        A5 5C         LDA $5C                   ;
CODE_039300:        29 FF 00      AND #$00FF                ;
CODE_039303:        F0 2F         BEQ CODE_039334           ;
CODE_039305:        C9 03 00      CMP #$0003                ;
CODE_039308:        F0 2A         BEQ CODE_039334           ;
CODE_03930A:        B9 F8 19      LDA $19F8,y               ;
CODE_03930D:        C9 24 00      CMP #$0024                ;
CODE_039310:        F0 15         BEQ CODE_039327           ;
CODE_039312:        C9 A4 10      CMP #$10A4                ;
CODE_039315:        F0 10         BEQ CODE_039327           ;
CODE_039317:        C9 08 0A      CMP #$0A08                ;
CODE_03931A:        D0 14         BNE CODE_039330           ;
CODE_03931C:        AD CE 0E      LDA $0ECE                 ;
CODE_03931F:        29 00 FF      AND #$FF00                ;
CODE_039322:        8D CE 0E      STA $0ECE                 ;
CODE_039325:        80 09         BRA CODE_039330           ;

CODE_039327:        AD CE 0E      LDA $0ECE                 ;
CODE_03932A:        09 00 01      ORA #$0100                ;
CODE_03932D:        8D CE 0E      STA $0ECE                 ;
CODE_039330:        22 71 8D 04   JSL CODE_048D71           ;
CODE_039334:        E2 30         SEP #$30                  ;
CODE_039336:        EE 21 07      INC $0721                 ;
CODE_039339:        AD 21 07      LDA $0721                 ;
CODE_03933C:        29 1F         AND #$1F                  ;
CODE_03933E:        D0 0B         BNE CODE_03934B           ;
CODE_039340:        9C 21 07      STZ $0721                 ;
CODE_039343:        AD 20 07      LDA $0720                 ;
CODE_039346:        49 04         EOR #$04                  ;
CODE_039348:        8D 20 07      STA $0720                 ;
CODE_03934B:        A9 06         LDA #$06                  ;
CODE_03934D:        8D 73 07      STA $0773                 ;
CODE_039350:        60            RTS                       ;

CODE_039351:        60            RTS                       ;

CODE_039352:        60            RTS                       ;yeah waste one more by for a mere RTS you genius

DATA_039353:        dw $0C45,$0C45,$0C47,$0C47
                    dw $0C47,$0C47,$0C47,$0C47
                    dw $0C57,$0C58,$0C59,$0C5A
                    dw $0024,$0024,$0024,$0024

CODE_039373:        AC 00 17      LDY $1700                 ;
CODE_039376:        C8            INY                       ;
CODE_039377:        A9 03         LDA #$03                  ;
CODE_039379:        20 C1 93      JSR CODE_0393C1           ;
CODE_03937C:        A9 06         LDA #$06                  ;
CODE_03937E:        8D 73 07      STA $0773                 ;
CODE_039381:        4C B2 93      JMP CODE_0393B2           ;

CODE_039384:        20 90 93      JSR CODE_039390           ;
CODE_039387:        EE F2 03      INC $03F2                 ;Increase the counter for the amount of bounce blocks you've created.
CODE_03938A:        DE EE 03      DEC $03EE,x               ;
CODE_03938D:        60            RTS                       ;

CODE_03938E:        A9 00         LDA #$00                  ;
CODE_039390:        A0 03         LDY #$03                  ;
CODE_039392:        C9 00         CMP #$00                  ;
CODE_039394:        F0 14         BEQ CODE_0393AA           ;
CODE_039396:        A0 00         LDY #$00                  ;
CODE_039398:        C9 5B         CMP #$5B                  ;
CODE_03939A:        F0 0E         BEQ CODE_0393AA           ;
CODE_03939C:        C9 51         CMP #$51                  ;
CODE_03939E:        F0 0A         BEQ CODE_0393AA           ;
CODE_0393A0:        C8            INY                       ;
CODE_0393A1:        C9 60         CMP #$60                  ;
CODE_0393A3:        F0 05         BEQ CODE_0393AA           ;
CODE_0393A5:        C9 52         CMP #$52                  ;
CODE_0393A7:        F0 01         BEQ CODE_0393AA           ;
CODE_0393A9:        C8            INY                       ;
CODE_0393AA:        98            TYA                       ;
CODE_0393AB:        AC 00 17      LDY $1700                 ;
CODE_0393AE:        C8            INY                       ;
CODE_0393AF:        20 C1 93      JSR CODE_0393C1           ;
CODE_0393B2:        C2 20         REP #$20                  ;
CODE_0393B4:        AD 00 17      LDA $1700                 ;
CODE_0393B7:        18            CLC                       ;
CODE_0393B8:        69 10 00      ADC #$0010                ;
CODE_0393BB:        8D 00 17      STA $1700                 ;
CODE_0393BE:        E2 20         SEP #$20                  ;
CODE_0393C0:        60            RTS                       ;

CODE_0393C1:        86 00         STX $00                   ;
CODE_0393C3:        84 01         STY $01                   ;
CODE_0393C5:        0A            ASL A                     ;
CODE_0393C6:        0A            ASL A                     ;
CODE_0393C7:        0A            ASL A                     ;
CODE_0393C8:        AA            TAX                       ;
CODE_0393C9:        A0 00         LDY #$00                  ;
CODE_0393CB:        A5 06         LDA $06                   ;
CODE_0393CD:        C9 D0         CMP #$D0                  ;
CODE_0393CF:        90 02         BCC CODE_0393D3           ;
CODE_0393D1:        A0 04         LDY #$04                  ;
CODE_0393D3:        84 03         STY $03                   ;
CODE_0393D5:        29 0F         AND #$0F                  ;
CODE_0393D7:        0A            ASL A                     ;
CODE_0393D8:        85 04         STA $04                   ;
CODE_0393DA:        64 05         STZ $05                   ;
CODE_0393DC:        A5 02         LDA $02                   ;
CODE_0393DE:        18            CLC                       ;
CODE_0393DF:        69 20         ADC #$20                  ;
CODE_0393E1:        0A            ASL A                     ;
CODE_0393E2:        26 05         ROL $05                   ;
CODE_0393E4:        0A            ASL A                     ;
CODE_0393E5:        26 05         ROL $05                   ;
CODE_0393E7:        65 04         ADC $04                   ;
CODE_0393E9:        85 04         STA $04                   ;
CODE_0393EB:        A5 05         LDA $05                   ;
CODE_0393ED:        65 03         ADC $03                   ;
CODE_0393EF:        85 05         STA $05                   ;
CODE_0393F1:        A4 01         LDY $01                   ;
CODE_0393F3:        C2 30         REP #$30                  ;
CODE_0393F5:        98            TYA                       ;
CODE_0393F6:        29 FF 00      AND #$00FF                ;
CODE_0393F9:        A8            TAY                       ;
CODE_0393FA:        8A            TXA                       ;
CODE_0393FB:        29 FF 00      AND #$00FF                ;
CODE_0393FE:        AA            TAX                       ;
CODE_0393FF:        A5 04         LDA $04                   ;
CODE_039401:        EB            XBA                       ;
CODE_039402:        99 01 17      STA $1701,y               ;
CODE_039405:        18            CLC                       ;
CODE_039406:        69 00 20      ADC #$2000                ;
CODE_039409:        99 09 17      STA $1709,y               ;
CODE_03940C:        A9 00 03      LDA #$0300                ;
CODE_03940F:        99 03 17      STA $1703,y               ;
CODE_039412:        99 0B 17      STA $170B,y               ;
CODE_039415:        BD 53 93      LDA $9353,x               ;
CODE_039418:        99 05 17      STA $1705,y               ;
CODE_03941B:        BD 55 93      LDA $9355,x               ;
CODE_03941E:        99 07 17      STA $1707,y               ;
CODE_039421:        BD 57 93      LDA $9357,x               ;
CODE_039424:        99 0D 17      STA $170D,y               ;
CODE_039427:        BD 59 93      LDA $9359,x               ;
CODE_03942A:        99 0F 17      STA $170F,y               ;
CODE_03942D:        A9 FF FF      LDA #$FFFF                ;
CODE_039430:        99 11 17      STA $1711,y               ;
CODE_039433:        E2 30         SEP #$30                  ;
CODE_039435:        A6 00         LDX $00                   ;
CODE_039437:        60            RTS                       ;

DATA_039438:        dw $9840,$C858,$9594,$9797

;SMB1 MAP16 IMAGE DATA
;FORMAT: $upperleft,$property,$bottomleft,$property,$upperright,$property,$bottomright,$property

DATA_039440:        db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 000  
                    db $27,$00,$27,$00,$27,$00,$27,$00  ;MAP16 tile 001
                    db $24,$00,$E3,$09,$24,$00,$24,$00  ;MAP16 tile 002
                    db $24,$00,$24,$00,$24,$00,$E0,$09  ;MAP16 tile 003
                    db $24,$00,$24,$00,$24,$00,$D2,$08  ;MAP16 tile 004
                    db $D0,$08,$D3,$08,$D1,$08,$D4,$08  ;MAP16 tile 005
                    db $24,$00,$D5,$08,$24,$00,$24,$00  ;MAP16 tile 006
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 007
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 008
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 009
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 00A
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 00B
                    db $24,$00,$24,$00,$24,$00,$24,$00  ;MAP16 tile 00C
                    db $24,$00,$20,$2A,$24,$00,$20,$2A  ;MAP16 tile 00D
                    db $24,$00,$81,$28,$24,$00,$20,$2A  ;MAP16 tile 00E
                    db $24,$00,$20,$2A,$24,$00,$80,$28  ;MAP16 tile 00F
                    db $24,$00,$7F,$18,$7F,$18,$24,$00  ;MAP16 tile 010
                    db $B8,$08,$BA,$08,$B9,$08,$BB,$08  ;MAP16 tile 011
                    db $B8,$08,$BC,$08,$B9,$08,$BD,$08  ;MAP16 tile 012
                    db $BA,$08,$BC,$08,$BB,$08,$BD,$08  ;MAP16 tile 013
                    db $60,$08,$64,$08,$61,$08,$65,$08  ;MAP16 tile 014
                    db $62,$08,$66,$08,$63,$08,$67,$08  ;MAP16 tile 015
                    db $60,$08,$64,$08,$61,$08,$65,$08  ;MAP16 tile 016
                    db $62,$08,$66,$08,$63,$08,$67,$08  ;and so on.
                    db $68,$08,$68,$08,$69,$08,$69,$08
                    db $97,$08,$97,$08,$6A,$08,$6A,$08
                    db $4B,$10,$4C,$10,$4D,$10,$4E,$10
                    db $4D,$10,$4F,$10,$4D,$10,$4A,$10
                    db $4D,$10,$4E,$10,$50,$10,$51,$10
                    db $6B,$18,$70,$18,$2C,$18,$2D,$18
                    db $6C,$18,$71,$18,$6D,$18,$72,$18
                    db $6E,$18,$73,$18,$6F,$18,$74,$18
                    db $86,$08,$8A,$08,$87,$08,$8B,$08
                    db $88,$08,$8C,$08,$88,$08,$8C,$08
                    db $89,$08,$8D,$08,$69,$08,$69,$08
                    db $8E,$08,$91,$08,$8F,$08,$92,$08
                    db $98,$08,$93,$08,$98,$08,$93,$08
                    db $90,$08,$94,$08,$69,$08,$69,$08
                    db $4A,$1D,$5A,$1D,$4B,$1D,$5B,$1D
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$2F,$08,$24,$00,$3D,$08
                    db $A2,$18,$A2,$18,$A3,$18,$A3,$18
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $A2,$18,$A2,$18,$A3,$18,$A3,$18
                    db $99,$18,$24,$00,$99,$18,$24,$00
                    db $24,$00,$A2,$18,$3E,$18,$3F,$18
                    db $5B,$18,$5C,$18,$24,$00,$A3,$18
                    db $24,$10,$24,$10,$24,$10,$24,$10
                    db $04,$12,$10,$12,$05,$12,$11,$12
                    db $06,$12,$12,$12,$05,$12,$11,$12
                    db $06,$12,$12,$12,$07,$12,$13,$12
                    db $04,$12,$10,$12,$07,$12,$13,$12
                    db $00,$12,$10,$12,$01,$12,$11,$12
                    db $02,$12,$12,$12,$01,$12,$11,$12
                    db $02,$12,$12,$12,$03,$12,$13,$12
                    db $00,$12,$10,$12,$03,$12,$13,$12
                    db $14,$12,$16,$12,$15,$12,$17,$12
                    db $BE,$0C,$BE,$0C,$BF,$0C,$BF,$0C
                    db $75,$18,$9F,$18,$76,$18,$9F,$58
                    db $9F,$18,$9F,$18,$9F,$58,$9F,$58
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $27,$20,$27,$20,$27,$20,$27,$20
                    db $47,$2C,$47,$2C,$47,$2C,$47,$2C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $08,$0A,$18,$0A,$09,$0A,$19,$0A
                    db $0A,$0A,$1A,$0A,$0B,$0A,$1B,$0A
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $AB,$0C,$AC,$0C,$AD,$0C,$AE,$0C
                    db $E6,$09,$F6,$09,$E7,$09,$F7,$09
                    db $E8,$09,$F8,$09,$E9,$09,$F9,$09
                    db $E6,$09,$F6,$09,$E9,$09,$F9,$09
                    db $CA,$09,$DA,$09,$CB,$09,$DB,$09
                    db $EA,$09,$FA,$09,$EB,$09,$FB,$09
                    db $C6,$09,$D6,$09,$C7,$09,$D7,$09
                    db $21,$32,$24,$00,$21,$32,$24,$00
                    db $26,$0E,$28,$0E,$27,$0E,$29,$0E
                    db $2A,$0E,$2C,$0E,$2B,$0E,$2D,$0E
                    db $2A,$0C,$2A,$0C,$40,$0C,$40,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$47,$0C,$24,$00,$47,$0C
                    db $82,$10,$84,$10,$83,$10,$85,$10
                    db $16,$09,$18,$09,$17,$09,$19,$09
                    db $18,$09,$19,$09,$18,$09,$19,$09
                    db $24,$0C,$47,$0C,$24,$0C,$47,$0C
                    db $86,$08,$8A,$08,$87,$08,$8B,$08
                    db $8E,$08,$91,$08,$8F,$08,$92,$08
                    db $24,$00,$2F,$00,$24,$00,$3D,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $EC,$18,$24,$00,$ED,$18,$24,$00
                    db $C8,$10,$A4,$10,$C9,$10,$A4,$10
                    db $E0,$38,$E2,$38,$E1,$38,$E3,$38
                    db $EE,$18,$24,$00,$EF,$18,$24,$00
                    db $A4,$10,$A4,$10,$A4,$10,$A4,$10
                    db $96,$38,$96,$38,$96,$38,$96,$38
                    db $B0,$10,$B1,$10,$B2,$10,$B3,$10
                    db $9B,$0C,$9D,$0C,$9C,$0C,$9E,$0C
                    db $40,$0E,$50,$0E,$41,$0E,$51,$0E
                    db $42,$0E,$52,$0E,$43,$0E,$53,$0E
                    db $44,$0E,$54,$0E,$45,$0E,$55,$0E
                    db $46,$0E,$56,$0E,$47,$0E,$57,$0E
                    db $48,$0E,$58,$0E,$49,$0E,$59,$0E
                    db $4A,$0E,$5A,$0E,$4B,$0E,$5B,$0E
                    db $4B,$4E,$5B,$4E,$4A,$4E,$5A,$4E
                    db $49,$4E,$59,$4E,$48,$4E,$58,$4E
                    db $47,$4E,$57,$4E,$46,$4E,$56,$4E
                    db $45,$4E,$55,$4E,$44,$4E,$54,$4E
                    db $43,$4E,$53,$4E,$42,$4E,$52,$4E
                    db $41,$4E,$51,$4E,$40,$4E,$50,$4E
                    db $63,$0E,$73,$0E,$5C,$0E,$66,$0E
                    db $5D,$0E,$67,$0E,$62,$0E,$72,$0E
                    db $72,$0E,$73,$0E,$5E,$0E,$66,$0E
                    db $5F,$0E,$67,$0E,$73,$0E,$72,$0E
                    db $24,$00,$24,$00,$60,$0E,$70,$0E
                    db $61,$0E,$71,$0E,$62,$0E,$72,$0E
                    db $63,$0E,$73,$0E,$62,$0E,$72,$0E
                    db $63,$0E,$73,$0E,$64,$0E,$74,$0E
                    db $65,$0E,$75,$0E,$24,$00,$24,$00
                    db $24,$00,$24,$00,$4C,$0E,$70,$0E
                    db $4D,$0E,$71,$0E,$73,$0E,$72,$0E
                    db $72,$0E,$73,$0E,$73,$0E,$72,$0E
                    db $72,$0E,$73,$0E,$4E,$0E,$74,$0E
                    db $4F,$0E,$75,$0E,$24,$00,$24,$00
                    db $61,$0E,$66,$0E,$62,$0E,$72,$0E
                    db $63,$0E,$73,$0E,$64,$0E,$67,$0E
                    db $72,$0E,$73,$0E,$67,$4E,$66,$8E
                    db $66,$4E,$67,$8E,$73,$0E,$72,$0E
                    db $40,$0E,$50,$0E,$44,$0E,$54,$0E
                    db $44,$4E,$54,$4E,$40,$4E,$50,$4E
                    db $40,$0E,$50,$0E,$42,$0E,$52,$0E
                    db $43,$0E,$53,$0E,$44,$0E,$54,$0E
                    db $44,$4E,$54,$4E,$43,$4E,$53,$4E
                    db $42,$4E,$52,$4E,$40,$4E,$50,$4E
                    db $24,$00,$24,$00,$CC,$0C,$CE,$0C
                    db $CD,$0C,$CF,$0C,$24,$00,$24,$00
                    db $CC,$0C,$CE,$0C,$CD,$0C,$CF,$0C
                    db $53,$04,$55,$04,$54,$04,$56,$04
                    db $53,$04,$55,$04,$54,$04,$56,$04
                    db $A5,$04,$A7,$04,$A6,$04,$A8,$04
                    db $A5,$04,$A7,$04,$A6,$04,$A8,$04
                    db $EA,$09,$FA,$09,$D2,$09,$E2,$09
                    db $EA,$09,$FA,$09,$F2,$09,$FB,$09
                    db $F3,$09,$DA,$09,$CB,$09,$DB,$09
                    db $CA,$09,$DA,$09,$C3,$09,$E2,$09
                    db $CA,$09,$DA,$09,$F0,$09,$DB,$09
                    db $D2,$09,$E1,$09,$EB,$09,$FB,$09
                    db $F1,$09,$FA,$09,$EB,$09,$FB,$09
                    db $C0,$09,$E1,$09,$CB,$09,$DB,$09
                    db $C8,$09,$D4,$09,$C5,$09,$D5,$09
                    db $E4,$09,$F4,$09,$E5,$09,$F5,$09
                    db $C8,$09,$D4,$09,$C8,$09,$D4,$09
                    db $E4,$09,$F4,$09,$F4,$09,$E4,$09
                    db $CA,$09,$DA,$09,$C3,$09,$D3,$09
                    db $EA,$09,$FA,$09,$D2,$09,$D2,$09
                    db $C0,$09,$D0,$09,$CB,$09,$DB,$09
                    db $D2,$09,$D2,$09,$EB,$09,$FB,$09
                    db $08,$2A,$18,$2A,$09,$2A,$19,$2A
                    db $57,$0C,$59,$0C,$58,$0C,$5A,$0C
                    db $7B,$04,$7D,$04,$7C,$04,$7E,$04
                    db $FF,$05,$48,$00,$1F,$1D,$08,$11
                    db $08,$0A,$08,$17,$08,$14,$08,$24
                    db $00,$22,$08,$18,$08,$1E,$08,$24
                    db $00,$16,$08,$0A,$08,$1B,$08,$12
                    db $08,$18,$08,$2B,$08,$FF,$05,$48
                    db $00,$1F,$1D,$08,$11,$08,$0A,$08
                    db $17,$08,$14,$08,$24,$00,$22,$08
                    db $18,$08,$1E,$08,$24,$00,$15,$08
                    db $1E,$08,$12,$08,$10,$08,$12,$08
                    db $2B,$08,$FF,$05,$C5,$00,$2B,$0B
                    db $08,$1E,$08,$1D,$08,$24,$00,$18
                    db $08,$1E,$08,$1B,$08,$24,$00,$19
                    db $08,$1B,$08,$12,$08,$17,$08,$0C
                    db $08,$0E,$08,$1C,$08,$1C,$08,$24
                    db $00,$12,$08,$1C,$08,$24,$00,$12
                    db $08,$17,$08,$06,$05,$00,$1D,$0A
                    db $08,$17,$08,$18,$08,$1D,$08,$11
                    db $08,$0E,$08,$1B,$08,$24,$00,$0C
                    db $08,$0A,$08,$1C,$08,$1D,$08,$15
                    db $08,$0E,$08,$2B,$08,$FF,$05,$A7
                    db $00,$25,$22,$08,$18,$08,$1E,$08
                    db $1B,$08,$24,$00,$1A,$08,$1E,$08
                    db $0E,$08,$1C,$08,$1D,$08,$24,$00
                    db $12,$08,$1C,$08,$24,$00,$18,$08
                    db $1F,$08,$0E,$08,$1B,$08,$AF,$08
                    db $FF,$05,$E3,$00,$35,$20,$08,$0E
                    db $08,$24,$00,$19,$08,$1B,$08,$0E
                    db $08,$1C,$08,$0E,$08,$17,$08,$1D
                    db $08,$24,$00,$22,$08,$18,$08,$1E
                    db $08,$24,$00,$0A,$08,$24,$00,$17
                    db $08,$0E,$08,$20,$08,$24,$00,$1A
                    db $08,$1E,$08,$0E,$08,$1C,$08,$1D
                    db $08,$AF,$08,$FF,$06,$4A,$00,$19
                    db $19,$08,$1E,$08,$1C,$08,$11,$08
                    db $24,$00,$0B,$08,$1E,$08,$1D,$08
                    db $1D,$08,$18,$08,$17,$08,$24,$00
                    db $22,$08,$FF,$06,$86,$00,$27,$1D
                    db $08,$18,$08,$24,$00,$1C,$08,$1D
                    db $08,$0A,$08,$1B,$08,$1D,$08,$24
                    db $00,$0A,$08,$24,$00,$1E,$08,$1B
                    db $08,$0A,$08,$28,$08,$20,$08,$18
                    db $08,$1B,$08,$15,$08,$0D,$08,$FF

CODE_039B08:        0A            ASL A                     ;\Execute Pointer Short routine
CODE_039B09:        A8            TAY                       ; |
CODE_039B0A:        68            PLA                       ; |(ExecutePtrShort)
CODE_039B0B:        85 04         STA $04                   ; |
CODE_039B0D:        68            PLA                       ; |
CODE_039B0E:        85 05         STA $05                   ; |
CODE_039B10:        C8            INY                       ; |
CODE_039B11:        B1 04         LDA ($04),y               ; |
CODE_039B13:        85 06         STA $06                   ; |
CODE_039B15:        C8            INY                       ; |
CODE_039B16:        B1 04         LDA ($04),y               ; |
CODE_039B18:        85 07         STA $07                   ; |
CODE_039B1A:        6C 06 00      JMP ($0006)               ;/

CODE_039B1D:        64 00         STZ $00                   ;Looks like some sort of an OAM update routine.
CODE_039B1F:        C2 20         REP #$20                  ;Direct page = $4300. DMA mode: 1 reg write once
CODE_039B21:        9C 02 21      STZ $2102                 ;OAM address low byte: 00
CODE_039B24:        A9 04 00      LDA #$0004                ;\Dest: data for OAM write $2104
CODE_039B27:        85 01         STA $01                   ; |Source: $00:0800
CODE_039B29:        A9 08 00      LDA #$0008                ; |
CODE_039B2C:        85 03         STA $03                   ;/
CODE_039B2E:        A9 20 02      LDA #$0220                ;\$220 bytes
CODE_039B31:        85 05         STA $05                   ;/
CODE_039B33:        A2 01         LDX #$01                  ;\
CODE_039B35:        8E 0B 42      STX $420B                 ; |Enable DMA
CODE_039B38:        E2 20         SEP #$20                  ;/
CODE_039B3A:        A9 80         LDA #$80                  ;\
CODE_039B3C:        8D 03 21      STA $2103                 ; |Regular sprite priority.
CODE_039B3F:        9C 02 21      STZ $2102                 ;/ OAM address: $0000
CODE_039B42:        AD 76 0B      LDA $0B76                 ;
CODE_039B45:        D0 0D         BNE CODE_039B54           ;
CODE_039B47:        20 95 9B      JSR CODE_039B95           ;
CODE_039B4A:        AD 8C 02      LDA $028C                 ;
CODE_039B4D:        D0 42         BNE CODE_039B91           ;
CODE_039B4F:        AD 8D 02      LDA $028D                 ;
CODE_039B52:        F0 3D         BEQ CODE_039B91           ;
CODE_039B54:        C2 20         REP #$20                  ;
CODE_039B56:        AD 8A 02      LDA $028A                 ;
CODE_039B59:        8D 16 21      STA $2116                 ;
CODE_039B5C:        A9 01 18      LDA #$1801                ;
CODE_039B5F:        85 00         STA $00                   ;
CODE_039B61:        AD 85 02      LDA $0285                 ;
CODE_039B64:        85 02         STA $02                   ;
CODE_039B66:        AC 87 02      LDY $0287                 ;
CODE_039B69:        84 04         STY $04                   ;
CODE_039B6B:        AD 88 02      LDA $0288                 ;
CODE_039B6E:        85 05         STA $05                   ;
CODE_039B70:        8E 0B 42      STX $420B                 ;
CODE_039B73:        E2 20         SEP #$20                  ;
CODE_039B75:        AD 76 0B      LDA $0B76                 ;
CODE_039B78:        F0 17         BEQ CODE_039B91           ;
CODE_039B7A:        CE 76 0B      DEC $0B76                 ;
CODE_039B7D:        F0 12         BEQ CODE_039B91           ;
CODE_039B7F:        AD 86 02      LDA $0286                 ;
CODE_039B82:        18            CLC                       ;
CODE_039B83:        69 08         ADC #$08                  ;
CODE_039B85:        8D 86 02      STA $0286                 ;
CODE_039B88:        AD 8B 02      LDA $028B                 ;
CODE_039B8B:        18            CLC                       ;
CODE_039B8C:        69 04         ADC #$04                  ;
CODE_039B8E:        8D 8B 02      STA $028B                 ;
CODE_039B91:        9C 8C 02      STZ $028C                 ;
CODE_039B94:        60            RTS                       ;

CODE_039B95:        AD 8E 02      LDA $028E                 ;
CODE_039B98:        F0 21         BEQ CODE_039BBB           ;
CODE_039B9A:        C2 20         REP #$20                  ;
CODE_039B9C:        AD 95 02      LDA $0295                 ;
CODE_039B9F:        8D 16 21      STA $2116                 ;
CODE_039BA2:        A9 01 18      LDA #$1801                ;
CODE_039BA5:        85 00         STA $00                   ;
CODE_039BA7:        AD 8F 02      LDA $028F                 ;
CODE_039BAA:        85 02         STA $02                   ;
CODE_039BAC:        AC 91 02      LDY $0291                 ;
CODE_039BAF:        84 04         STY $04                   ;
CODE_039BB1:        AD 93 02      LDA $0293                 ;
CODE_039BB4:        85 05         STA $05                   ;
CODE_039BB6:        8E 0B 42      STX $420B                 ;
CODE_039BB9:        E2 20         SEP #$20                  ;
CODE_039BBB:        60            RTS                       ;

CODE_039BBC:        C2 10         REP #$10                  ;Stripe image uploader. Stripe image format:
CODE_039BBE:        A9 03         LDA #$03                  ;\VVVVVVVV VVVVVVVV DRLLLLLL LLLLLLLL <data bytes>
CODE_039BC0:        8D 14 43      STA $4314                 ;/DMA source: bank 3
CODE_039BC3:        64 06         STZ $06                   ;Clear something
CODE_039BC5:        A0 00 00      LDY #$0000                ;Go into a loop
CODE_039BC8:        B7 00         LDA [$00],y               ;\Load next byte
CODE_039BCA:        10 03         BPL CODE_039BCF           ;/If positive, go process stripe image
CODE_039BCC:        E2 30         SEP #$30                  ;\else, return.
CODE_039BCE:        60            RTS                       ;/

CODE_039BCF:        85 04         STA $04                   ;\
CODE_039BD1:        C8            INY                       ; |Store stripe image VRAM destination in 
CODE_039BD2:        B7 00         LDA [$00],y               ; |RAM $03-$04.
CODE_039BD4:        85 03         STA $03                   ; |
CODE_039BD6:        C8            INY                       ;/
CODE_039BD7:        B7 00         LDA [$00],y               ;\
CODE_039BD9:        29 80         AND #$80                  ; |Get direction bit.
CODE_039BDB:        0A            ASL A                     ; |0 = Horizontal, 1 = Vertical
CODE_039BDC:        2A            ROL A                     ; |
CODE_039BDD:        85 07         STA $07                   ;/
CODE_039BDF:        B7 00         LDA [$00],y               ;\
CODE_039BE1:        29 40         AND #$40                  ; |Get RLE bit. 1 = RLE, 0 = normal
CODE_039BE3:        85 05         STA $05                   ; |
CODE_039BE5:        4A            LSR A                     ; |
CODE_039BE6:        4A            LSR A                     ; |
CODE_039BE7:        4A            LSR A                     ; |DMA transfer becomes RLE if necessary
CODE_039BE8:        09 01         ORA #$01                  ; |
CODE_039BEA:        8D 10 43      STA $4310                 ;/
CODE_039BED:        A9 18         LDA #$18                  ;\DMA destination: $2118, $2119
CODE_039BEF:        8D 11 43      STA $4311                 ;/
CODE_039BF2:        C2 20         REP #$20                  ;16-bit A
CODE_039BF4:        A5 03         LDA $03                   ;\Set DMA VRAM dest
CODE_039BF6:        8D 16 21      STA $2116                 ;/
CODE_039BF9:        B7 00         LDA [$00],y               ;\
CODE_039BFB:        EB            XBA                       ; |Get Length bytes
CODE_039BFC:        29 FF 3F      AND #$3FFF                ; |
CODE_039BFF:        AA            TAX                       ; |
CODE_039C00:        E8            INX                       ; |
CODE_039C01:        8E 15 43      STX $4315                 ;/
CODE_039C04:        C8            INY                       ;\
CODE_039C05:        C8            INY                       ;/Get at next bytes
CODE_039C06:        98            TYA                       ;\
CODE_039C07:        18            CLC                       ; |Setup DMA source
CODE_039C08:        65 00         ADC $00                   ; |
CODE_039C0A:        8D 12 43      STA $4312                 ;/
CODE_039C0D:        A5 05         LDA $05                   ;\If not RLE, branch
CODE_039C0F:        F0 34         BEQ CODE_039C45           ;/
CODE_039C11:        E8            INX                       ;\
CODE_039C12:        8A            TXA                       ; |Setup RLE DMA size
CODE_039C13:        4A            LSR A                     ; |
CODE_039C14:        AA            TAX                       ; |
CODE_039C15:        8E 15 43      STX $4315                 ;/
CODE_039C18:        E2 20         SEP #$20                  ;8-bit A
CODE_039C1A:        A5 05         LDA $05                   ;\
CODE_039C1C:        4A            LSR A                     ; |Set RLE DMA flag
CODE_039C1D:        4A            LSR A                     ; |
CODE_039C1E:        4A            LSR A                     ; |
CODE_039C1F:        8D 10 43      STA $4310                 ;/
CODE_039C22:        A5 07         LDA $07                   ;\
CODE_039C24:        8D 15 21      STA $2115                 ;/Get RLE DMA direction. Either horz or vert
CODE_039C27:        A9 02         LDA #$02                  ;\Enable RLE DMA. This will DMA the low bytes of VRAM
CODE_039C29:        8D 0B 42      STA $420B                 ;/data.
CODE_039C2C:        A9 19         LDA #$19                  ;\RLE DMA dest: $2119
CODE_039C2E:        8D 11 43      STA $4311                 ;/
CODE_039C31:        C2 21         REP #$21                  ;\
CODE_039C33:        98            TYA                       ; |
CODE_039C34:        65 00         ADC $00                   ; |Setup RLE DMA source
CODE_039C36:        1A            INC A                     ; |
CODE_039C37:        8D 12 43      STA $4312                 ;/
CODE_039C3A:        A5 03         LDA $03                   ;\Setup RLE VRAM dest
CODE_039C3C:        8D 16 21      STA $2116                 ;/
CODE_039C3F:        8E 15 43      STX $4315                 ;Setup RLE size
CODE_039C42:        A2 02 00      LDX #$0002                ;\
CODE_039C45:        86 03         STX $03                   ; |
CODE_039C47:        98            TYA                       ; |
CODE_039C48:        18            CLC                       ; |Increase pointer to stripe image data
CODE_039C49:        65 03         ADC $03                   ; |
CODE_039C4B:        A8            TAY                       ; |
CODE_039C4C:        E2 20         SEP #$20                  ;/
CODE_039C4E:        A5 07         LDA $07                   ;\
CODE_039C50:        09 80         ORA #$80                  ; |Set VRAM DMA mode: Either horz/vert
CODE_039C52:        8D 15 21      STA $2115                 ;/ normal address increment mode
CODE_039C55:        A9 02         LDA #$02                  ;\Enable DMA to upload stripe image to VRAM
CODE_039C57:        8D 0B 42      STA $420B                 ;/
CODE_039C5A:        B7 00         LDA [$00],y               ;\If done, return
CODE_039C5C:        30 03         BMI CODE_039C61           ;/
CODE_039C5E:        4C CF 9B      JMP CODE_039BCF           ;Otherwise, process next chunk.

CODE_039C61:        E2 30         SEP #$30                  ;\Return from stripe image uploading.
CODE_039C63:        60            RTS                       ;/

DATA_039C64:        db $EF,$00,$06,$00,$62,$00,$06,$00
                    db $62,$00,$06,$00,$6D,$00,$02,$00
                    db $6D,$00,$02,$00,$7A,$00,$03,$00
                    db $06,$0C,$12,$18,$1E,$24

CODE_039C82:        85 00         STA $00                   ;
CODE_039C84:        20 8D 9C      JSR CODE_039C8D           ;
CODE_039C87:        A5 00         LDA $00                   ;
CODE_039C89:        4A            LSR A                     ;
CODE_039C8A:        4A            LSR A                     ;
CODE_039C8B:        4A            LSR A                     ;
CODE_039C8C:        4A            LSR A                     ;
CODE_039C8D:        18            CLC                       ;
CODE_039C8E:        69 01         ADC #$01                  ;
CODE_039C90:        29 0F         AND #$0F                  ;
CODE_039C92:        C9 06         CMP #$06                  ;
CODE_039C94:        B0 5A         BCS CODE_039CF0           ;
CODE_039C96:        48            PHA                       ;
CODE_039C97:        0A            ASL A                     ;
CODE_039C98:        0A            ASL A                     ;
CODE_039C99:        A8            TAY                       ;
CODE_039C9A:        A9 58         LDA #$58                  ;
CODE_039C9C:        A2 20         LDX #$20                  ;
CODE_039C9E:        C0 00         CPY #$00                  ;
CODE_039CA0:        D0 04         BNE CODE_039CA6           ;
CODE_039CA2:        A9 02         LDA #$02                  ;
CODE_039CA4:        A2 28         LDX #$28                  ;
CODE_039CA6:        86 F9         STX $F9                   ;
CODE_039CA8:        AE 00 17      LDX $1700                 ;
CODE_039CAB:        9D 02 17      STA $1702,x               ;
CODE_039CAE:        B9 64 9C      LDA $9C64,y               ;
CODE_039CB1:        9D 03 17      STA $1703,x               ;
CODE_039CB4:        B9 65 9C      LDA $9C65,y               ;
CODE_039CB7:        9D 04 17      STA $1704,x               ;
CODE_039CBA:        B9 66 9C      LDA $9C66,y               ;
CODE_039CBD:        85 03         STA $03                   ;
CODE_039CBF:        0A            ASL A                     ;
CODE_039CC0:        3A            DEC A                     ;
CODE_039CC1:        9D 05 17      STA $1705,x               ;
CODE_039CC4:        86 02         STX $02                   ;
CODE_039CC6:        68            PLA                       ;
CODE_039CC7:        AA            TAX                       ;
CODE_039CC8:        BD 7C 9C      LDA $9C7C,x               ;
CODE_039CCB:        38            SEC                       ;
CODE_039CCC:        F9 66 9C      SBC $9C66,y               ;
CODE_039CCF:        A8            TAY                       ;
CODE_039CD0:        A6 02         LDX $02                   ;
CODE_039CD2:        B9 C8 07      LDA $07C8,y               ;
CODE_039CD5:        9D 06 17      STA $1706,x               ;
CODE_039CD8:        A5 F9         LDA $F9                   ;
CODE_039CDA:        9D 07 17      STA $1707,x               ;
CODE_039CDD:        E8            INX                       ;
CODE_039CDE:        E8            INX                       ;
CODE_039CDF:        C8            INY                       ;
CODE_039CE0:        C6 03         DEC $03                   ;
CODE_039CE2:        D0 EE         BNE CODE_039CD2           ;
CODE_039CE4:        A9 FF         LDA #$FF                  ;
CODE_039CE6:        9D 06 17      STA $1706,x               ;
CODE_039CE9:        E8            INX                       ;
CODE_039CEA:        E8            INX                       ;
CODE_039CEB:        E8            INX                       ;
CODE_039CEC:        E8            INX                       ;
CODE_039CED:        8E 00 17      STX $1700                 ;
CODE_039CF0:        60            RTS                       ;

CODE_039CF1:        8B            PHB                       ;
CODE_039CF2:        4B            PHK                       ;
CODE_039CF3:        AB            PLB                       ;
CODE_039CF4:        20 82 9C      JSR CODE_039C82           ;
CODE_039CF7:        AB            PLB                       ;
CODE_039CF8:        6B            RTL                       ;

CODE_039CF9:        AD 70 07      LDA $0770                 ;
CODE_039CFC:        C9 00         CMP #$00                  ;
CODE_039CFE:        F0 21         BEQ CODE_039D21           ;
CODE_039D00:        C9 02         CMP #$02                  ;
CODE_039D02:        D0 07         BNE CODE_039D0B           ;
CODE_039D04:        AD 72 07      LDA $0772                 ;
CODE_039D07:        C9 05         CMP #$05                  ;
CODE_039D09:        D0 16         BNE CODE_039D21           ;
CODE_039D0B:        A2 05         LDX #$05                  ;
CODE_039D0D:        BD 45 01      LDA $0145,x               ;
CODE_039D10:        18            CLC                       ;
CODE_039D11:        79 C8 07      ADC $07C8,y               ;
CODE_039D14:        30 16         BMI CODE_039D2C           ;
CODE_039D16:        C9 0A         CMP #$0A                  ;
CODE_039D18:        B0 19         BCS CODE_039D33           ;
CODE_039D1A:        99 C8 07      STA $07C8,y               ;
CODE_039D1D:        88            DEY                       ;
CODE_039D1E:        CA            DEX                       ;
CODE_039D1F:        10 EC         BPL CODE_039D0D           ;
CODE_039D21:        A9 00         LDA #$00                  ;
CODE_039D23:        A2 06         LDX #$06                  ;
CODE_039D25:        9D 44 01      STA $0144,x               ;
CODE_039D28:        CA            DEX                       ;
CODE_039D29:        10 FA         BPL CODE_039D25           ;
CODE_039D2B:        60            RTS                       ;

CODE_039D2C:        DE 44 01      DEC $0144,x               ;
CODE_039D2F:        A9 09         LDA #$09                  ;
CODE_039D31:        D0 E7         BNE CODE_039D1A           ;
CODE_039D33:        E0 00         CPX #$00                  ;
CODE_039D35:        D0 0C         BNE CODE_039D43           ;
CODE_039D37:        A2 05         LDX #$05                  ;
CODE_039D39:        A9 09         LDA #$09                  ;
CODE_039D3B:        9D CE 07      STA $07CE,x               ;
CODE_039D3E:        CA            DEX                       ;
CODE_039D3F:        D0 FA         BNE CODE_039D3B           ;
CODE_039D41:        A9 13         LDA #$13                  ;
CODE_039D43:        38            SEC                       ;
CODE_039D44:        E9 0A         SBC #$0A                  ;
CODE_039D46:        FE 44 01      INC $0144,x               ;
CODE_039D49:        80 CF         BRA CODE_039D1A           ;

DATA_039D4A:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF

DATA_039D70:        db $D0,$00,$18,$30,$48,$60,$78,$90
                    db $A8,$C0,$D8,$D8,$B0,$C0,$40,$44
                    db $48,$50,$54,$60,$68,$70,$78,$80
                    db $88,$00,$08,$10,$18,$18,$FF,$23
                    db $58

CODE_039D91:        A9 80         LDA #$80                  ;
CODE_039D93:        8D 01 12      STA $1201                 ;
CODE_039D96:        A9 FF         LDA #$FF                  ;
CODE_039D98:        8D 02 11      STA $1102                 ;
CODE_039D9B:        A9 7F         LDA #$7F                  ;
CODE_039D9D:        8D 03 11      STA $1103                 ;
CODE_039DA0:        EE 00 12      INC $1200                 ;
CODE_039DA3:        A9 FF         LDA #$FF                  ;
CODE_039DA5:        8D 02 17      STA $1702                 ;
CODE_039DA8:        8D 03 17      STA $1703                 ;
CODE_039DAB:        A9 09         LDA #$09                  ;
CODE_039DAD:        8D 0D 12      STA $120D                 ;
CODE_039DB0:        A9 10         LDA #$10                  ;
CODE_039DB2:        8D 0B 12      STA $120B                 ;
CODE_039DB5:        A9 20         LDA #$20                  ;
CODE_039DB7:        8D 0A 12      STA $120A                 ;
CODE_039DBA:        A9 20         LDA #$20                  ;
CODE_039DBC:        8D E0 0E      STA $0EE0                 ;
CODE_039DBF:        A9 40         LDA #$40                  ;
CODE_039DC1:        8D E1 0E      STA $0EE1                 ;
CODE_039DC4:        A9 80         LDA #$80                  ;
CODE_039DC6:        8D E2 0E      STA $0EE2                 ;
CODE_039DC9:        A0 FE         LDY #$FE                  ;
CODE_039DCB:        A2 05         LDX #$05                  ;
CODE_039DCD:        BD C8 07      LDA $07C8,x               ;
CODE_039DD0:        C9 0A         CMP #$0A                  ;
CODE_039DD2:        B0 0C         BCS CODE_039DE0           ;
CODE_039DD4:        CA            DEX                       ;
CODE_039DD5:        10 F6         BPL CODE_039DCD           ;
CODE_039DD7:        AD FF 07      LDA $07FF                 ;
CODE_039DDA:        C9 A5         CMP #$A5                  ;
CODE_039DDC:        D0 02         BNE CODE_039DE0           ;
CODE_039DDE:        A0 C7         LDY #$C7                  ;
CODE_039DE0:        20 3E 9F      JSR CODE_039F3E           ;
CODE_039DE3:        A9 A5         LDA #$A5                  ;
CODE_039DE5:        8D FF 07      STA $07FF                 ;
CODE_039DE8:        8D B7 07      STA $07B7                 ;
CODE_039DEB:        9C F6 0E      STZ $0EF6                 ;
CODE_039DEE:        9C F9 0E      STZ $0EF9                 ;
CODE_039DF1:        9C F7 0E      STZ $0EF7                 ;
CODE_039DF4:        9C F8 0E      STZ $0EF8                 ;
CODE_039DF7:        A0 6F         LDY #$6F                  ;
CODE_039DF9:        20 3E 9F      JSR CODE_039F3E           ;
CODE_039DFC:        A9 18         LDA #$18                  ;
CODE_039DFE:        8D B2 07      STA $07B2                 ;
CODE_039E01:        22 0B C0 04   JSL CODE_04C00B           ;
CODE_039E05:        20 0C 9E      JSR CODE_039E0C           ;
CODE_039E08:        9C 7F 0E      STZ $0E7F                 ;
CODE_039E0B:        60            RTS                       ;

CODE_039E0C:        AC 5F 07      LDY $075F                 ;\ Load current world
CODE_039E0F:        C0 08         CPY #$08                  ; |If it is smaller than world 08
CODE_039E11:        90 04         BCC CODE_039E17           ;/Skip the "set level number & map type" routine
CODE_039E13:        22 0B C0 04   JSL CODE_04C00B           ;set level number & map type
CODE_039E17:        A0 4B         LDY #$4B                  ;
CODE_039E19:        20 3E 9F      JSR CODE_039F3E           ;
CODE_039E1C:        A2 29         LDX #$29                  ;
CODE_039E1E:        A9 00         LDA #$00                  ;
CODE_039E20:        9D 88 07      STA $0788,x               ;
CODE_039E23:        CA            DEX                       ;
CODE_039E24:        10 FA         BPL CODE_039E20           ;
CODE_039E26:        AD 5B 07      LDA $075B                 ;
CODE_039E29:        AC 52 07      LDY $0752                 ;
CODE_039E2C:        F0 03         BEQ CODE_039E31           ;
CODE_039E2E:        AD 51 07      LDA $0751                 ;
CODE_039E31:        8D 1A 07      STA $071A                 ;
CODE_039E34:        8D 25 07      STA $0725                 ;
CODE_039E37:        8D 28 07      STA $0728                 ;
CODE_039E3A:        5A            PHY                       ;
CODE_039E3B:        C2 20         REP #$20                  ;
CODE_039E3D:        EB            XBA                       ;
CODE_039E3E:        29 00 FF      AND #$FF00                ;
CODE_039E41:        85 42         STA $42                   ;
CODE_039E43:        4A            LSR A                     ;
CODE_039E44:        8D FD 0E      STA $0EFD                 ;
CODE_039E47:        4A            LSR A                     ;
CODE_039E48:        8D EE 0E      STA $0EEE                 ;
CODE_039E4B:        E2 20         SEP #$20                  ;
CODE_039E4D:        7A            PLY                       ;
CODE_039E4E:        20 0F AF      JSR CODE_03AF0F           ;
CODE_039E51:        A0 00         LDY #$00                  ;
CODE_039E53:        29 01         AND #$01                  ;
CODE_039E55:        F0 02         BEQ CODE_039E59           ;
CODE_039E57:        A0 04         LDY #$04                  ;
CODE_039E59:        8C 20 07      STY $0720                 ;
CODE_039E5C:        9C 21 07      STZ $0721                 ;
CODE_039E5F:        0A            ASL A                     ;
CODE_039E60:        0A            ASL A                     ;
CODE_039E61:        0A            ASL A                     ;
CODE_039E62:        0A            ASL A                     ;
CODE_039E63:        8D A0 06      STA $06A0                 ;
CODE_039E66:        A9 FF         LDA #$FF                  ;
CODE_039E68:        8D 00 13      STA $1300                 ;
CODE_039E6B:        8D 01 13      STA $1301                 ;
CODE_039E6E:        8D 02 13      STA $1302                 ;
CODE_039E71:        8D 03 13      STA $1303                 ;
CODE_039E74:        8D 04 13      STA $1304                 ;
CODE_039E77:        A9 0B         LDA #$0B                  ;
CODE_039E79:        8D 1E 07      STA $071E                 ;
CODE_039E7C:        22 41 C0 04   JSL CODE_04C041           ;
CODE_039E80:        AD 6A 07      LDA $076A                 ;"More difficult quest" flag
CODE_039E83:        D0 10         BNE CODE_039E95           ;
CODE_039E85:        AD 5F 07      LDA $075F                 ;
CODE_039E88:        C9 04         CMP #$04                  ;
CODE_039E8A:        90 0C         BCC CODE_039E98           ;
CODE_039E8C:        D0 07         BNE CODE_039E95           ;
CODE_039E8E:        AD 5C 07      LDA $075C                 ;
CODE_039E91:        C9 02         CMP #$02                  ;
CODE_039E93:        90 03         BCC CODE_039E98           ;
CODE_039E95:        EE CC 06      INC $06CC                 ;
CODE_039E98:        AD 5B 07      LDA $075B                 ;
CODE_039E9B:        F0 05         BEQ CODE_039EA2           ;
CODE_039E9D:        A9 02         LDA #$02                  ;
CODE_039E9F:        8D 10 07      STA $0710                 ;
CODE_039EA2:        A5 DB         LDA $DB                   ;\Load background image
CODE_039EA4:        C9 21         CMP #$21                  ; |If it is the 'real' Bowser's Castle background
CODE_039EA6:        F0 09         BEQ CODE_039EB1           ;/branch
CODE_039EA8:        C9 02         CMP #$02                  ;\If it is the underwater Bowser's Castle background
CODE_039EAA:        F0 05         BEQ CODE_039EB1           ;/Branch
CODE_039EAC:        A9 80         LDA #$80                  ;\Fade out the music
CODE_039EAE:        8D 02 16      STA $1602                 ;/
CODE_039EB1:        A9 01         LDA #$01                  ;
CODE_039EB3:        8D 7F 0E      STA $0E7F                 ;
CODE_039EB6:        EE 72 07      INC $0772                 ;
CODE_039EB9:        60            RTS                       ;

CODE_039EBA:        AD 42 21      LDA $2142                 ;
CODE_039EBD:        C9 14         CMP #$14                  ;
CODE_039EBF:        F0 09         BEQ CODE_039ECA           ;
CODE_039EC1:        22 B5 86 00   JSL CODE_0086B5           ;
CODE_039EC5:        A9 14         LDA #$14                  ;
CODE_039EC7:        8D 42 21      STA $2142                 ;
CODE_039ECA:        A9 01         LDA #$01                  ;
CODE_039ECC:        8D 57 07      STA $0757                 ;
CODE_039ECF:        8D 54 07      STA $0754                 ;
CODE_039ED2:        8D 7F 07      STA $077F                 ;
CODE_039ED5:        9C 73 0E      STZ $0E73                 ;
CODE_039ED8:        A9 02         LDA #$02                  ;
CODE_039EDA:        8D 7F 0E      STA $0E7F                 ;
CODE_039EDD:        A9 00         LDA #$00                  ;
CODE_039EDF:        8D 01 12      STA $1201                 ;
CODE_039EE2:        8D 74 07      STA $0774                 ;
CODE_039EE5:        A8            TAY                       ;
CODE_039EE6:        99 00 03      STA $0300,y               ;
CODE_039EE9:        C8            INY                       ;
CODE_039EEA:        D0 FA         BNE CODE_039EE6           ;
CODE_039EEC:        8D 59 07      STA $0759                 ;
CODE_039EEF:        8D 69 07      STA $0769                 ;
CODE_039EF2:        8D 28 07      STA $0728                 ;
CODE_039EF5:        A9 FF         LDA #$FF                  ;
CODE_039EF7:        8D A0 03      STA $03A0                 ;
CODE_039EFA:        8D 02 17      STA $1702                 ;
CODE_039EFD:        AD 1A 07      LDA $071A                 ;
CODE_039F00:        4E 78 07      LSR $0778                 ;
CODE_039F03:        29 01         AND #$01                  ;
CODE_039F05:        6A            ROR A                     ;
CODE_039F06:        2E 78 07      ROL $0778                 ;
CODE_039F09:        A9 38         LDA #$38                  ;
CODE_039F0B:        8D 43 0B      STA $0B43                 ;
CODE_039F0E:        A9 48         LDA #$48                  ;
CODE_039F10:        8D 42 0B      STA $0B42                 ;
CODE_039F13:        A9 58         LDA #$58                  ;
CODE_039F15:        8D 41 0B      STA $0B41                 ;
CODE_039F18:        A2 1C         LDX #$1C                  ;
CODE_039F1A:        BD 70 9D      LDA $9D70,x               ;
CODE_039F1D:        9D 45 0B      STA $0B45,x               ;
CODE_039F20:        CA            DEX                       ;
CODE_039F21:        10 F7         BPL CODE_039F1A           ;
CODE_039F23:        20 94 A2      JSR CODE_03A294           ;
CODE_039F26:        20 8F A2      JSR CODE_03A28F           ;
CODE_039F29:        EE 22 07      INC $0722                 ;
CODE_039F2C:        EE 72 07      INC $0772                 ;
CODE_039F2F:        60            RTS                       ;

CODE_039F30:        A9 00         LDA #$00                  ;
CODE_039F32:        85 06         STA $06                   ;
CODE_039F34:        86 07         STX $07                   ;
CODE_039F36:        91 06         STA ($06),y               ;
CODE_039F38:        88            DEY                       ;
CODE_039F39:        C0 FF         CPY #$FF                  ;
CODE_039F3B:        D0 F9         BNE CODE_039F36           ;
CODE_039F3D:        60            RTS                       ;

CODE_039F3E:        AD DB 00      LDA $00DB                 ;
CODE_039F41:        C9 21         CMP #$21                  ;
CODE_039F43:        D0 03         BNE CODE_039F48           ;
CODE_039F45:        EE 7F 0E      INC $0E7F                 ;
CODE_039F48:        A2 07         LDX #$07                  ;
CODE_039F4A:        A9 00         LDA #$00                  ;
CODE_039F4C:        85 06         STA $06                   ;
CODE_039F4E:        86 07         STX $07                   ;
CODE_039F50:        E0 01         CPX #$01                  ;
CODE_039F52:        D0 04         BNE CODE_039F58           ;
CODE_039F54:        C0 50         CPY #$50                  ;
CODE_039F56:        B0 02         BCS CODE_039F5A           ;
CODE_039F58:        91 06         STA ($06),y               ;
CODE_039F5A:        88            DEY                       ;
CODE_039F5B:        C0 FF         CPY #$FF                  ;
CODE_039F5D:        D0 F1         BNE CODE_039F50           ;
CODE_039F5F:        CA            DEX                       ;
CODE_039F60:        10 EC         BPL CODE_039F4E           ;
CODE_039F62:        A9 FF         LDA #$FF                  ;
CODE_039F64:        8D 02 17      STA $1702                 ;
CODE_039F67:        1A            INC A                     ;
CODE_039F68:        9C 25 0B      STZ $0B25                 ;
CODE_039F6B:        9C 26 0B      STZ $0B26                 ;
CODE_039F6E:        9C 27 0B      STZ $0B27                 ;
CODE_039F71:        9C 28 0B      STZ $0B28                 ;
CODE_039F74:        9C 29 0B      STZ $0B29                 ;
CODE_039F77:        AD FC 07      LDA $07FC                 ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_039F7A:        8D 6A 07      STA $076A                 ;"More difficult quest" flag
CODE_039F7D:        A2 40         LDX #$40                  ;
CODE_039F7F:        9E 00 0F      STZ $0F00,x               ;
CODE_039F82:        E8            INX                       ;
CODE_039F83:        D0 FA         BNE CODE_039F7F           ;
CODE_039F85:        AD 0B 0F      LDA $0F0B                 ;
CODE_039F88:        F0 17         BEQ CODE_039FA1           ;
CODE_039F8A:        3A            DEC A                     ;
CODE_039F8B:        8D 0B 0F      STA $0F0B                 ;
CODE_039F8E:        D0 11         BNE CODE_039FA1           ;
CODE_039F90:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_039F94:        8D FB 07      STA $07FB                 ;
CODE_039F97:        8D 6A 07      STA $076A                 ;"More difficult quest" flag
CODE_039F9A:        8D FC 07      STA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world.
CODE_039F9D:        22 94 C9 05   JSL CODE_05C994           ;
CODE_039FA1:        60            RTS                       ;

DATA_039FA2:        db $28,$18,$38,$28,$08,$00,$00,$20 ;
                    db $B0,$50,$00,$00,$B0,$B0,$F0,$2E ;
                    db $0E,$2E,$2E,$2E,$2E,$2E,$2E,$0E ;
                    db $04,$03,$02

;Looks like a level loading routine? Not sure.

CODE_039FBD:        AD 1A 07      LDA $071A                 ;
CODE_039FC0:        85 78         STA $78                   ;
CODE_039FC2:        A9 28         LDA #$28                  ;
CODE_039FC4:        8D 0A 07      STA $070A                 ;
CODE_039FC7:        A9 01         LDA #$01                  ;
CODE_039FC9:        8D 02 02      STA $0202                 ;
CODE_039FCC:        85 BB         STA $BB                   ;
CODE_039FCE:        A9 00         LDA #$00                  ;
CODE_039FD0:        85 28         STA $28                   ;
CODE_039FD2:        CE 80 04      DEC $0480                 ;
CODE_039FD5:        A0 00         LDY #$00                  ;
CODE_039FD7:        8C 5B 07      STY $075B                 ;
CODE_039FDA:        A5 5C         LDA $5C                   ;
CODE_039FDC:        D0 01         BNE CODE_039FDF           ;
CODE_039FDE:        C8            INY                       ;
CODE_039FDF:        8C 04 07      STY $0704                 ;
CODE_039FE2:        AE 10 07      LDX $0710                 ;
CODE_039FE5:        AC 52 07      LDY $0752                 ;
CODE_039FE8:        F0 07         BEQ CODE_039FF1           ;
CODE_039FEA:        C0 01         CPY #$01                  ;
CODE_039FEC:        F0 03         BEQ CODE_039FF1           ;
CODE_039FEE:        BE A4 9F      LDX $9FA4,y               ;
CODE_039FF1:        B9 A2 9F      LDA $9FA2,y               ;
CODE_039FF4:        8D 19 02      STA $0219                 ;
CODE_039FF7:        BD A8 9F      LDA $9FA8,x               ;
CODE_039FFA:        8D 37 02      STA $0237                 ;
CODE_039FFD:        BD B1 9F      LDA $9FB1,x               ;
CODE_03A000:        8D 56 02      STA $0256                 ;
CODE_03A003:        A2 00         LDX #$00                  ;
CODE_03A005:        20 2D EA      JSR CODE_03EA2D           ;
CODE_03A008:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03A00C:        AC 15 07      LDY $0715                 ;
CODE_03A00F:        F0 1A         BEQ CODE_03A02B           ;
CODE_03A011:        AD 57 07      LDA $0757                 ;
CODE_03A014:        F0 15         BEQ CODE_03A02B           ;
CODE_03A016:        B9 B9 9F      LDA $9FB9,y               ;
CODE_03A019:        8D E9 07      STA $07E9                 ;
CODE_03A01C:        A9 01         LDA #$01                  ;
CODE_03A01E:        8D EB 07      STA $07EB                 ;
CODE_03A021:        4A            LSR A                     ;
CODE_03A022:        8D EA 07      STA $07EA                 ;
CODE_03A025:        8D 57 07      STA $0757                 ;
CODE_03A028:        8D AF 07      STA $07AF                 ;
CODE_03A02B:        AC 58 07      LDY $0758                 ;
CODE_03A02E:        F0 14         BEQ CODE_03A044           ;
CODE_03A030:        A9 03         LDA #$03                  ;
CODE_03A032:        85 28         STA $28                   ;
CODE_03A034:        A2 00         LDX #$00                  ;
CODE_03A036:        20 0D BF      JSR CODE_03BF0D           ;
CODE_03A039:        A9 F0         LDA #$F0                  ;
CODE_03A03B:        85 44         STA $44                   ;
CODE_03A03D:        A2 09         LDX #$09                  ;
CODE_03A03F:        A0 00         LDY #$00                  ;
CODE_03A041:        20 FD B9      JSR CODE_03B9FD           ;
CODE_03A044:        A4 5C         LDY $5C                   ;
CODE_03A046:        D0 03         BNE CODE_03A04B           ;
CODE_03A048:        20 93 B7      JSR CODE_03B793           ;
CODE_03A04B:        A9 07         LDA #$07                  ;
CODE_03A04D:        85 0F         STA $0F                   ;
CODE_03A04F:        60            RTS                       ;

DATA_03A050:        db $56,$40,$65,$70,$66,$40,$66,$40
                    db $66,$40,$66,$60,$65,$70,$00,$00

;Player action - player loses life
CODE_03A060:        A9 01         LDA #$01                  ;
CODE_03A062:        8D 7F 0E      STA $0E7F                 ;
CODE_03A065:        8D 67 0E      STA $0E67                 ;
CODE_03A068:        9C 22 07      STZ $0722                 ;
CODE_03A06B:        CE 5A 07      DEC $075A                 ;
CODE_03A06E:        10 09         BPL CODE_03A079           ;
CODE_03A070:        9C 72 07      STZ $0772                 ;
CODE_03A073:        A9 03         LDA #$03                  ;
CODE_03A075:        8D 70 07      STA $0770                 ;
CODE_03A078:        60            RTS                       ;

CODE_03A079:        AD 5F 07      LDA $075F                 ;
CODE_03A07C:        0A            ASL A                     ;
CODE_03A07D:        AA            TAX                       ;
CODE_03A07E:        AD 5C 07      LDA $075C                 ;
CODE_03A081:        29 02         AND #$02                  ;
CODE_03A083:        F0 01         BEQ CODE_03A086           ;
CODE_03A085:        E8            INX                       ;
CODE_03A086:        BC 50 A0      LDY $A050,x               ;
CODE_03A089:        AD 5C 07      LDA $075C                 ;
CODE_03A08C:        4A            LSR A                     ;
CODE_03A08D:        98            TYA                       ;
CODE_03A08E:        B0 04         BCS CODE_03A094           ;
CODE_03A090:        4A            LSR A                     ;
CODE_03A091:        4A            LSR A                     ;
CODE_03A092:        4A            LSR A                     ;
CODE_03A093:        4A            LSR A                     ;
CODE_03A094:        29 0F         AND #$0F                  ;
CODE_03A096:        CD 1A 07      CMP $071A                 ;
CODE_03A099:        F0 04         BEQ CODE_03A09F           ;
CODE_03A09B:        90 02         BCC CODE_03A09F           ;
CODE_03A09D:        A9 00         LDA #$00                  ;
CODE_03A09F:        8D 5B 07      STA $075B                 ;
CODE_03A0A2:        20 2B A2      JSR CODE_03A22B           ;
CODE_03A0A5:        4C 04 A2      JMP CODE_03A204           ;

;Game Over operation mode
CODE_03A0A8:        AD 72 07      LDA $0772                 ;
CODE_03A0AB:        0A            ASL A                     ;
CODE_03A0AC:        AA            TAX                       ;
CODE_03A0AD:        7C B0 A0      JMP (PNTR_03A0B0,x)       ;

PNTR_03A0B0:        dw CODE_03A0B6 ;$00
                    dw CODE_038C18 ;$01
                    dw CODE_03A1E1 ;$02

CODE_03A0B6:        9C 3C 07      STZ $073C                 ;
CODE_03A0B9:        9C 22 07      STZ $0722                 ;
CODE_03A0BC:        A9 0A         LDA #$0A                  ;\Game over music
CODE_03A0BE:        8D 02 16      STA $1602                 ;/
CODE_03A0C1:        EE 74 07      INC $0774                 ;
CODE_03A0C4:        EE 72 07      INC $0772                 ;
CODE_03A0C7:        60            RTS                       ;

DATA_03A0C8:        db $42,$73,$0C,$2B,$63,$73,$83

CODE_03A0CF:        AD 7A 07      LDA $077A                 ;
CODE_03A0D2:        F0 08         BEQ CODE_03A0DC           ;
CODE_03A0D4:        AD 61 07      LDA $0761                 ;
CODE_03A0D7:        30 03         BMI CODE_03A0DC           ;
CODE_03A0D9:        4C E4 A1      JMP CODE_03A1E4           ;

CODE_03A0DC:        AD F6 0F      LDA $0FF6                 ;
CODE_03A0DF:        0D F7 0F      ORA $0FF7                 ;
CODE_03A0E2:        8D F6 0F      STA $0FF6                 ;
CODE_03A0E5:        29 0C         AND #$0C                  ;
CODE_03A0E7:        F0 1E         BEQ CODE_03A107           ;
CODE_03A0E9:        A0 01         LDY #$01                  ;\Mario collected a coin sound
CODE_03A0EB:        8C 03 16      STY $1603                 ;/
CODE_03A0EE:        AC 06 0F      LDY $0F06                 ;
CODE_03A0F1:        29 08         AND #$08                  ;
CODE_03A0F3:        F0 06         BEQ CODE_03A0FB           ;
CODE_03A0F5:        88            DEY                       ;
CODE_03A0F6:        10 0C         BPL CODE_03A104           ;
CODE_03A0F8:        C8            INY                       ;
CODE_03A0F9:        80 06         BRA CODE_03A101           ;

CODE_03A0FB:        C8            INY                       ;
CODE_03A0FC:        C0 03         CPY #$03                  ;
CODE_03A0FE:        D0 04         BNE CODE_03A104           ;
CODE_03A100:        88            DEY                       ;
CODE_03A101:        9C 03 16      STZ $1603                 ;
CODE_03A104:        8C 06 0F      STY $0F06                 ;
CODE_03A107:        AD 8A 0F      LDA $0F8A                 ;
CODE_03A10A:        D0 75         BNE CODE_03A181           ;
CODE_03A10C:        AD F6 0F      LDA $0FF6                 ;
CODE_03A10F:        0D F7 0F      ORA $0FF7                 ;
CODE_03A112:        29 10         AND #$10                  ;
CODE_03A114:        D0 52         BNE CODE_03A168           ;
CODE_03A116:        AD F6 0F      LDA $0FF6                 ;
CODE_03A119:        0D F7 0F      ORA $0FF7                 ;
CODE_03A11C:        29 20         AND #$20                  ;
CODE_03A11E:        F0 12         BEQ CODE_03A132           ;
CODE_03A120:        A9 01         LDA #$01                  ;\Mario collected a coin sound
CODE_03A122:        8D 03 16      STA $1603                 ;/
CODE_03A125:        EE 06 0F      INC $0F06                 ;
CODE_03A128:        AD 06 0F      LDA $0F06                 ;
CODE_03A12B:        C9 03         CMP #$03                  ;
CODE_03A12D:        D0 03         BNE CODE_03A132           ;
CODE_03A12F:        9C 06 0F      STZ $0F06                 ;
CODE_03A132:        AD 5F 07      LDA $075F                 ;
CODE_03A135:        C9 08         CMP #$08                  ;
CODE_03A137:        D0 01         BNE CODE_03A13A           ;
CODE_03A139:        60            RTS                       ;

CODE_03A13A:        AD 03 16      LDA $1603                 ;
CODE_03A13D:        F0 03         BEQ CODE_03A142           ;
CODE_03A13F:        9C 78 0B      STZ $0B78                 ;
CODE_03A142:        EE 78 0B      INC $0B78                 ;Frame counter which runs when the game is paused
CODE_03A145:        AD 78 0B      LDA $0B78                 ;
CODE_03A148:        29 10         AND #$10                  ;
CODE_03A14A:        4A            LSR A                     ;
CODE_03A14B:        4A            LSR A                     ;
CODE_03A14C:        4A            LSR A                     ;
CODE_03A14D:        4A            LSR A                     ;
CODE_03A14E:        09 02         ORA #$02                  ;
CODE_03A150:        8D 00 0C      STA $0C00                 ;
CODE_03A153:        A0 03         LDY #$03                  ;
CODE_03A155:        B9 C8 A0      LDA $A0C8,y               ;
CODE_03A158:        99 00 08      STA $0800,y               ;
CODE_03A15B:        88            DEY                       ;
CODE_03A15C:        10 F7         BPL CODE_03A155           ;
CODE_03A15E:        AC 06 0F      LDY $0F06                 ;
CODE_03A161:        B9 CC A0      LDA $A0CC,y               ;
CODE_03A164:        8D 01 08      STA $0801                 ;
CODE_03A167:        60            RTS                       ;

CODE_03A168:        A9 20         LDA #$20                  ;
CODE_03A16A:        8D 8A 0F      STA $0F8A                 ;
CODE_03A16D:        A9 43         LDA #$43                  ;\Pause sound
CODE_03A16F:        8D 00 16      STA $1600                 ;/
CODE_03A172:        A9 F3         LDA #$F3                  ;\Music fades out
CODE_03A174:        8D 02 16      STA $1602                 ;/
CODE_03A177:        AD 06 0F      LDA $0F06                 ;
CODE_03A17A:        F0 05         BEQ CODE_03A181           ;
CODE_03A17C:        A9 3B         LDA #$3B                  ;\
CODE_03A17E:        8D 00 16      STA $1600                 ;/"Save & Continue/Save & Quit" sound
CODE_03A181:        20 42 A1      JSR CODE_03A142           ;
CODE_03A184:        CE 8A 0F      DEC $0F8A                 ;
CODE_03A187:        AD 8A 0F      LDA $0F8A                 ;
CODE_03A18A:        F0 01         BEQ CODE_03A18D           ;
CODE_03A18C:        60            RTS                       ;

CODE_03A18D:        9C 78 0B      STZ $0B78                 ;
CODE_03A190:        A0 04         LDY #$04                  ;
CODE_03A192:        8C 5A 07      STY $075A                 ;
CODE_03A195:        9C 03 0F      STZ $0F03                 ;
CODE_03A198:        9C 5E 07      STZ $075E                 ;
CODE_03A19B:        9C 65 07      STZ $0765                 ;
CODE_03A19E:        AD 5F 07      LDA $075F                 ;
CODE_03A1A1:        8D 5F 07      STA $075F                 ;
CODE_03A1A4:        8F 08 00 70   STA $700008               ;
CODE_03A1A8:        9C 5C 07      STZ $075C                 ;
CODE_03A1AB:        9C 24 0E      STZ $0E24                 ;
CODE_03A1AE:        9C 63 07      STZ $0763                 ;
CODE_03A1B1:        9C 67 07      STZ $0767                 ;
CODE_03A1B4:        9C 60 07      STZ $0760                 ;
CODE_03A1B7:        A9 00         LDA #$00                  ;
CODE_03A1B9:        8F 09 00 70   STA $700009               ;
CODE_03A1BD:        A9 00         LDA #$00                  ;
CODE_03A1BF:        A0 11         LDY #$11                  ;
CODE_03A1C1:        99 CE 07      STA $07CE,y               ;
CODE_03A1C4:        88            DEY                       ;
CODE_03A1C5:        10 FA         BPL CODE_03A1C1           ;
CODE_03A1C7:        EE 5D 07      INC $075D                 ;Enable hidden 1-up flag
CODE_03A1CA:        AD 06 0F      LDA $0F06                 ;
CODE_03A1CD:        F0 0F         BEQ CODE_03A1DE           ;
CODE_03A1CF:        22 03 8F 00   JSL CODE_008F03           ;
CODE_03A1D3:        AD 06 0F      LDA $0F06                 ;
CODE_03A1D6:        C9 01         CMP #$01                  ;
CODE_03A1D8:        F0 04         BEQ CODE_03A1DE           ;
CODE_03A1DA:        5C DE 80 00   JML CODE_0080DE           ;

CODE_03A1DE:        4C EF A1      JMP CODE_03A1EF           ;
CODE_03A1E1:        4C CF A0      JMP CODE_03A0CF           ;

CODE_03A1E4:        22 50 86 04   JSL CODE_048650           ;
CODE_03A1E8:        7C EB A1      JMP (PNTR_03A1EB,x)       ;

PNTR_03A1EB:        dw CODE_03A22A
                    dw CODE_03A1EF

CODE_03A1EF:        20 2B A2      JSR CODE_03A22B           ;
CODE_03A1F2:        90 10         BCC CODE_03A204           ;
CODE_03A1F4:        AD 5F 07      LDA $075F                 ;\Residual from NES: store world number into secret continue function variable
CODE_03A1F7:        8D FD 07      STA $07FD                 ;/
CODE_03A1FA:        9C 72 07      STZ $0772                 ;
CODE_03A1FD:        9C B0 07      STZ $07B0                 ;
CODE_03A200:        9C 70 07      STZ $0770                 ;
CODE_03A203:        60            RTS                       ;

;Handle new world after game-over and rescuing the princess
CODE_03A204:        22 0B C0 04   JSL CODE_04C00B           ;Set level number and map type
CODE_03A208:        AD 80 16      LDA $1680                 ;\Skip clear powerup if new world from rescuing the princess
CODE_03A20B:        D0 0D         BNE CODE_03A21A           ;/
CODE_03A20D:        AD 7A 07      LDA $077A                 ;\Skip clear powerup if 2 players
CODE_03A210:        D0 08         BNE CODE_03A21A           ;/
CODE_03A212:        A9 01         LDA #$01                  ;\
CODE_03A214:        8D 54 07      STA $0754                 ; |Set small player flag
CODE_03A217:        9C 56 07      STZ $0756                 ;/ Clear powerup
CODE_03A21A:        EE 57 07      INC $0757                 ;set some timer flag
CODE_03A21D:        9C 47 07      STZ $0747                 ;Clear everything freezes timer
CODE_03A220:        64 0F         STZ $0F                   ;set player action to 0
CODE_03A222:        9C 72 07      STZ $0772                 ;Operation mode task to execute is 0
CODE_03A225:        A9 01         LDA #$01                  ;\
CODE_03A227:        8D 70 07      STA $0770                 ;/Operation mode: main
CODE_03A22A:        60            RTS                       ;

;Swap players
;Output: Carry set = player couldn't be swapped. Carry clear = player could be swapped.
CODE_03A22B:        38            SEC                       ;
CODE_03A22C:        AD 7A 07      LDA $077A                 ;\Branch if single player
CODE_03A22F:        F0 4F         BEQ CODE_03A280           ;/
CODE_03A231:        AD 61 07      LDA $0761                 ;\
CODE_03A234:        30 4A         BMI CODE_03A280           ;/Branch if previous player's extra lives is below 0
CODE_03A236:        AD 54 07      LDA $0754                 ;\
CODE_03A239:        48            PHA                       ; |
CODE_03A23A:        AD 7F 07      LDA $077F                 ; |
CODE_03A23D:        8D 54 07      STA $0754                 ; |Swap previous player's small flag with current player's
CODE_03A240:        68            PLA                       ; |
CODE_03A241:        8D 7F 07      STA $077F                 ;/
CODE_03A244:        AD 56 07      LDA $0756                 ;\
CODE_03A247:        48            PHA                       ; |
CODE_03A248:        AD 80 07      LDA $0780                 ; |
CODE_03A24B:        8D 56 07      STA $0756                 ; |Swap previous player's powerup with current player's
CODE_03A24E:        68            PLA                       ; |
CODE_03A24F:        8D 80 07      STA $0780                 ;/
CODE_03A252:        AD FC 07      LDA $07FC                 ;\"More difficult quest" flag
CODE_03A255:        48            PHA                       ; |
CODE_03A256:        AD 81 07      LDA $0781                 ; |
CODE_03A259:        8D FC 07      STA $07FC                 ; |Swap "more difficult quest" flag with previous player
CODE_03A25C:        68            PLA                       ; |
CODE_03A25D:        8D 81 07      STA $0781                 ;/
CODE_03A260:        AD 53 07      LDA $0753                 ;\
CODE_03A263:        49 01         EOR #$01                  ; |Swap current player
CODE_03A265:        8D 53 07      STA $0753                 ;/
CODE_03A268:        8D C2 0E      STA $0EC2                 ;And the current player's image
CODE_03A26B:        A2 06         LDX #$06                  ;\
CODE_03A26D:        BD 5A 07      LDA $075A,x               ; |Swap things like current player's coins, lives, levels, etc
CODE_03A270:        48            PHA                       ; |
CODE_03A271:        BD 61 07      LDA $0761,x               ; |
CODE_03A274:        9D 5A 07      STA $075A,x               ; |
CODE_03A277:        68            PLA                       ; |
CODE_03A278:        9D 61 07      STA $0761,x               ; |
CODE_03A27B:        CA            DEX                       ; |
CODE_03A27C:        10 EF         BPL CODE_03A26D           ;/
CODE_03A27E:        18            CLC                       ;
CODE_03A27F:        60            RTS                       ;

CODE_03A280:        AD 03 0F      LDA $0F03                 ;
CODE_03A283:        D0 FA         BNE CODE_03A27F           ;
CODE_03A285:        18            CLC                       ;
CODE_03A286:        60            RTS                       ;

;Swap player data after level end if a player didn't quit after game-over, and game is not single player.
CODE_03A287:        8B            PHB                       ;
CODE_03A288:        4B            PHK                       ;
CODE_03A289:        AB            PLB                       ;
CODE_03A28A:        20 2B A2      JSR CODE_03A22B           ;
CODE_03A28D:        AB            PLB                       ;
CODE_03A28E:        6B            RTL                       ;

CODE_03A28F:        A9 FF         LDA #$FF                  ;
CODE_03A291:        8D C9 06      STA $06C9                 ;
CODE_03A294:        60            RTS                       ;

CODE_03A295:        AC 1F 07      LDY $071F                 ;
CODE_03A298:        D0 05         BNE CODE_03A29F           ;
CODE_03A29A:        A0 08         LDY #$08                  ;
CODE_03A29C:        8C 1F 07      STY $071F                 ;
CODE_03A29F:        88            DEY                       ;
CODE_03A2A0:        98            TYA                       ;
CODE_03A2A1:        20 00 A3      JSR CODE_03A300           ;
CODE_03A2A4:        CE 1F 07      DEC $071F                 ;
CODE_03A2A7:        D0 35         BNE CODE_03A2DE           ;
CODE_03A2A9:        A9 20         LDA #$20                  ;
CODE_03A2AB:        85 00         STA $00                   ;
CODE_03A2AD:        A5 BA         LDA $BA                   ;
CODE_03A2AF:        C9 03         CMP #$03                  ;
CODE_03A2B1:        D0 02         BNE CODE_03A2B5           ;
CODE_03A2B3:        06 00         ASL $00                   ;
CODE_03A2B5:        AD D1 0E      LDA $0ED1                 ;
CODE_03A2B8:        D0 24         BNE CODE_03A2DE           ;
CODE_03A2BA:        AD FD 0E      LDA $0EFD                 ;
CODE_03A2BD:        25 00         AND $00                   ;
CODE_03A2BF:        F0 07         BEQ CODE_03A2C8           ;
CODE_03A2C1:        AD FC 0E      LDA $0EFC                 ;
CODE_03A2C4:        F0 0C         BEQ CODE_03A2D2           ;
CODE_03A2C6:        80 16         BRA CODE_03A2DE           ;

CODE_03A2C8:        AD FC 0E      LDA $0EFC                 ;
CODE_03A2CB:        F0 11         BEQ CODE_03A2DE           ;
CODE_03A2CD:        9C FC 0E      STZ $0EFC                 ;
CODE_03A2D0:        80 05         BRA CODE_03A2D7           ;

CODE_03A2D2:        A9 01         LDA #$01                  ;
CODE_03A2D4:        8D FC 0E      STA $0EFC                 ;
CODE_03A2D7:        22 35 9B 04   JSL CODE_049B35           ;
CODE_03A2DB:        20 51 93      JSR CODE_039351           ;
CODE_03A2DE:        AD EE 0E      LDA $0EEE                 ;
CODE_03A2E1:        29 10         AND #$10                  ;
CODE_03A2E3:        F0 07         BEQ CODE_03A2EC           ;
CODE_03A2E5:        AD DD 0E      LDA $0EDD                 ;
CODE_03A2E8:        F0 0C         BEQ CODE_03A2F6           ;
CODE_03A2EA:        80 13         BRA CODE_03A2FF           ;

CODE_03A2EC:        AD DD 0E      LDA $0EDD                 ;
CODE_03A2EF:        F0 0E         BEQ CODE_03A2FF           ;
CODE_03A2F1:        9C DD 0E      STZ $0EDD                 ;
CODE_03A2F4:        80 05         BRA CODE_03A2FB           ;

CODE_03A2F6:        A9 01         LDA #$01                  ;
CODE_03A2F8:        8D DD 0E      STA $0EDD                 ;
CODE_03A2FB:        22 4E 8B 04   JSL CODE_048B4E           ;
CODE_03A2FF:        60            RTS                       ;

CODE_03A300:        0A            ASL A                     ;
CODE_03A301:        AA            TAX                       ;
CODE_03A302:        7C 05 A3      JMP (PNTR_03A305,x)       ;

PNTR_03A305:        dw CODE_03A315
                    dw CODE_03922D
                    dw CODE_03922D
                    dw CODE_03A436
                    dw CODE_03A315
                    dw CODE_03922D
                    dw CODE_03922D
                    dw CODE_03A436

CODE_03A315:        EE 26 07      INC $0726                 ;
CODE_03A318:        AD 26 07      LDA $0726                 ;
CODE_03A31B:        29 0F         AND #$0F                  ;
CODE_03A31D:        D0 06         BNE CODE_03A325           ;
CODE_03A31F:        8D 26 07      STA $0726                 ;
CODE_03A322:        EE 25 07      INC $0725                 ;
CODE_03A325:        EE A0 06      INC $06A0                 ;
CODE_03A328:        AD A0 06      LDA $06A0                 ;
CODE_03A32B:        29 1F         AND #$1F                  ;
CODE_03A32D:        8D A0 06      STA $06A0                 ;
CODE_03A330:        60            RTS                       ;

DATA_03A331:        db $00,$30,$60,$93,$00,$00,$11,$12
                    db $12,$13,$00,$00,$51,$52,$53,$00
                    db $00,$00,$00,$00,$00,$01,$02,$02
                    db $03,$00,$00,$00,$00,$00,$00,$91
                    db $92,$93,$00,$00,$00,$00,$51,$52
                    db $53,$41,$42,$43,$00,$00,$00,$00
                    db $00,$91,$92,$97,$87,$88,$89,$99
                    db $00,$00,$00,$11,$12,$13,$A4,$A5
                    db $A5,$A5,$A6,$97,$98,$99,$01,$02
                    db $03,$00,$A4,$A5,$A6,$00,$11,$12
                    db $12,$12,$13,$00,$00,$00,$00,$01
                    db $02,$02,$03,$00,$A4,$A5,$A5,$A6
                    db $00,$00,$00,$11,$12,$12,$13,$00
                    db $00,$00,$00,$00,$00,$00,$9C,$00
                    db $8B,$AA,$AA,$AA,$AA,$11,$12,$13
                    db $8B,$00,$9C,$9C,$00,$00,$01,$02
                    db $03,$11,$12,$12,$13,$00,$00,$00
                    db $00,$AA,$AA,$9C,$AA,$00,$8B,$00
                    db $01,$02,$03,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$04,$00,$00,$05
                    db $00,$00,$06,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$4D,$00
                    db $00,$11,$13,$4E,$12,$4E,$4E,$00
                    db $0D,$1A,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$71,$71,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$71,$71,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00

DATA_03A410:        db $86,$8B,$72,$56,$52,$65,$00,$00
                    db $00,$18,$01,$18,$07,$18,$0F,$18
                    db $FF,$18,$01,$1F,$07,$1F,$0F,$1F
                    db $81,$1F,$01,$00,$8F,$1F,$F1,$1F
                    db $F9,$18,$F1,$18,$FF,$1F

CODE_03A436:        AD 28 07      LDA $0728                 ;
CODE_03A439:        F0 03         BEQ CODE_03A43E           ;
CODE_03A43B:        20 CC A5      JSR CODE_03A5CC           ;
CODE_03A43E:        A2 0C         LDX #$0C                  ;
CODE_03A440:        A9 00         LDA #$00                  ;
CODE_03A442:        9D A1 06      STA $06A1,x               ;
CODE_03A445:        CA            DEX                       ;
CODE_03A446:        10 FA         BPL CODE_03A442           ;
CODE_03A448:        AC 42 07      LDY $0742                 ;
CODE_03A44B:        F0 42         BEQ CODE_03A48F           ;
CODE_03A44D:        AD 25 07      LDA $0725                 ;
CODE_03A450:        C9 03         CMP #$03                  ;
CODE_03A452:        30 05         BMI CODE_03A459           ;
CODE_03A454:        38            SEC                       ;
CODE_03A455:        E9 03         SBC #$03                  ;
CODE_03A457:        10 F7         BPL CODE_03A450           ;
CODE_03A459:        0A            ASL A                     ;
CODE_03A45A:        0A            ASL A                     ;
CODE_03A45B:        0A            ASL A                     ;
CODE_03A45C:        0A            ASL A                     ;
CODE_03A45D:        79 30 A3      ADC $A330,y               ;
CODE_03A460:        6D 26 07      ADC $0726                 ;
CODE_03A463:        AA            TAX                       ;
CODE_03A464:        BD 34 A3      LDA $A334,x               ;
CODE_03A467:        F0 26         BEQ CODE_03A48F           ;
CODE_03A469:        48            PHA                       ;
CODE_03A46A:        29 0F         AND #$0F                  ;
CODE_03A46C:        38            SEC                       ;
CODE_03A46D:        E9 01         SBC #$01                  ;
CODE_03A46F:        85 00         STA $00                   ;
CODE_03A471:        0A            ASL A                     ;
CODE_03A472:        65 00         ADC $00                   ;
CODE_03A474:        AA            TAX                       ;
CODE_03A475:        68            PLA                       ;
CODE_03A476:        4A            LSR A                     ;
CODE_03A477:        4A            LSR A                     ;
CODE_03A478:        4A            LSR A                     ;
CODE_03A479:        4A            LSR A                     ;
CODE_03A47A:        A8            TAY                       ;
CODE_03A47B:        A9 03         LDA #$03                  ;
CODE_03A47D:        85 00         STA $00                   ;
CODE_03A47F:        BD C4 A3      LDA $A3C4,x               ;
CODE_03A482:        99 A1 06      STA $06A1,y               ;
CODE_03A485:        E8            INX                       ;
CODE_03A486:        C8            INY                       ;
CODE_03A487:        C0 0B         CPY #$0B                  ;
CODE_03A489:        F0 04         BEQ CODE_03A48F           ;
CODE_03A48B:        C6 00         DEC $00                   ;
CODE_03A48D:        D0 F0         BNE CODE_03A47F           ;
CODE_03A48F:        AE 41 07      LDX $0741                 ;
CODE_03A492:        F0 33         BEQ CODE_03A4C7           ;
CODE_03A494:        BC E7 A3      LDY $A3E7,x               ;
CODE_03A497:        A2 00         LDX #$00                  ;
CODE_03A499:        B9 EB A3      LDA $A3EB,y               ;
CODE_03A49C:        F0 23         BEQ CODE_03A4C1           ;
CODE_03A49E:        5A            PHY                       ;
CODE_03A49F:        A4 5C         LDY $5C                   ;
CODE_03A4A1:        D0 10         BNE CODE_03A4B3           ;
CODE_03A4A3:        AC F0 0E      LDY $0EF0                 ;
CODE_03A4A6:        D0 06         BNE CODE_03A4AE           ;
CODE_03A4A8:        EE F0 0E      INC $0EF0                 ;
CODE_03A4AB:        1A            INC A                     ;
CODE_03A4AC:        80 0D         BRA CODE_03A4BB           ;

CODE_03A4AE:        9C F0 0E      STZ $0EF0                 ;
CODE_03A4B1:        80 0A         BRA CODE_03A4BD           ;

CODE_03A4B3:        C0 03         CPY #$03                  ;
CODE_03A4B5:        D0 06         BNE CODE_03A4BD           ;
CODE_03A4B7:        C9 86         CMP #$86                  ;
CODE_03A4B9:        D0 02         BNE CODE_03A4BD           ;
CODE_03A4BB:        1A            INC A                     ;
CODE_03A4BC:        1A            INC A                     ;
CODE_03A4BD:        7A            PLY                       ;
CODE_03A4BE:        9D A1 06      STA $06A1,x               ;
CODE_03A4C1:        C8            INY                       ;
CODE_03A4C2:        E8            INX                       ;
CODE_03A4C3:        E0 0D         CPX #$0D                  ;
CODE_03A4C5:        D0 D2         BNE CODE_03A499           ;
CODE_03A4C7:        9C 09 01      STZ $0109                 ;
CODE_03A4CA:        64 F9         STZ $F9                   ;
CODE_03A4CC:        AD E8 0E      LDA $0EE8                 ;
CODE_03A4CF:        8D E9 0E      STA $0EE9                 ;
CODE_03A4D2:        EE E8 0E      INC $0EE8                 ;
CODE_03A4D5:        A4 5C         LDY $5C                   ;
CODE_03A4D7:        D0 0B         BNE CODE_03A4E4           ;
CODE_03A4D9:        AD 5F 07      LDA $075F                 ;
CODE_03A4DC:        C9 07         CMP #$07                  ;
CODE_03A4DE:        D0 04         BNE CODE_03A4E4           ;
CODE_03A4E0:        A9 65         LDA #$65                  ;
CODE_03A4E2:        80 0A         BRA CODE_03A4EE           ;

CODE_03A4E4:        B9 12 A4      LDA $A412,y               ;
CODE_03A4E7:        AC 43 07      LDY $0743                 ;
CODE_03A4EA:        F0 02         BEQ CODE_03A4EE           ;
CODE_03A4EC:        A9 8C         LDA #$8C                  ;
CODE_03A4EE:        85 07         STA $07                   ;
CODE_03A4F0:        A2 00         LDX #$00                  ;
CODE_03A4F2:        AD 27 07      LDA $0727                 ;
CODE_03A4F5:        0A            ASL A                     ;
CODE_03A4F6:        A8            TAY                       ;
CODE_03A4F7:        B9 16 A4      LDA $A416,y               ;
CODE_03A4FA:        85 00         STA $00                   ;
CODE_03A4FC:        C8            INY                       ;
CODE_03A4FD:        84 01         STY $01                   ;
CODE_03A4FF:        AD 43 07      LDA $0743                 ;
CODE_03A502:        F0 0A         BEQ CODE_03A50E           ;
CODE_03A504:        E0 00         CPX #$00                  ;
CODE_03A506:        F0 06         BEQ CODE_03A50E           ;
CODE_03A508:        A5 00         LDA $00                   ;
CODE_03A50A:        29 08         AND #$08                  ;
CODE_03A50C:        85 00         STA $00                   ;
CODE_03A50E:        A0 00         LDY #$00                  ;
CODE_03A510:        B9 9F CA      LDA $CA9F,y               ;
CODE_03A513:        24 00         BIT $00                   ;
CODE_03A515:        F0 44         BEQ CODE_03A55B           ;
CODE_03A517:        A5 BA         LDA $BA                   ;
CODE_03A519:        C9 03         CMP #$03                  ;
CODE_03A51B:        D0 0A         BNE CODE_03A527           ;
CODE_03A51D:        A5 F9         LDA $F9                   ;
CODE_03A51F:        F0 06         BEQ CODE_03A527           ;
CODE_03A521:        A9 68         LDA #$68                  ;
CODE_03A523:        85 07         STA $07                   ;
CODE_03A525:        80 02         BRA CODE_03A529           ;

CODE_03A527:        A5 07         LDA $07                   ;
CODE_03A529:        9D A1 06      STA $06A1,x               ;
CODE_03A52C:        A5 F9         LDA $F9                   ;
CODE_03A52E:        F0 14         BEQ CODE_03A544           ;
CODE_03A530:        A5 BA         LDA $BA                   ;
CODE_03A532:        C9 03         CMP #$03                  ;
CODE_03A534:        D0 0E         BNE CODE_03A544           ;
CODE_03A536:        A5 F9         LDA $F9                   ;
CODE_03A538:        E6 F9         INC $F9                   ;
CODE_03A53A:        1A            INC A                     ;
CODE_03A53B:        D0 25         BNE CODE_03A562           ;
CODE_03A53D:        FE A1 06      INC $06A1,x               ;
CODE_03A540:        E6 07         INC $07                   ;
CODE_03A542:        80 1E         BRA CODE_03A562           ;

CODE_03A544:        A5 BA         LDA $BA                   ;
CODE_03A546:        C9 03         CMP #$03                  ;
CODE_03A548:        D0 18         BNE CODE_03A562           ;
CODE_03A54A:        AD 09 01      LDA $0109                 ;
CODE_03A54D:        D0 13         BNE CODE_03A562           ;
CODE_03A54F:        AD E9 0E      LDA $0EE9                 ;
CODE_03A552:        29 01         AND #$01                  ;
CODE_03A554:        D0 0C         BNE CODE_03A562           ;
CODE_03A556:        FE A1 06      INC $06A1,x               ;
CODE_03A559:        80 07         BRA CODE_03A562           ;

CODE_03A55B:        A9 FE         LDA #$FE                  ;
CODE_03A55D:        85 F9         STA $F9                   ;
CODE_03A55F:        EE 09 01      INC $0109                 ;
CODE_03A562:        E8            INX                       ;
CODE_03A563:        E0 0D         CPX #$0D                  ;
CODE_03A565:        F0 1D         BEQ CODE_03A584           ;
CODE_03A567:        A5 5C         LDA $5C                   ;
CODE_03A569:        C9 02         CMP #$02                  ;
CODE_03A56B:        D0 08         BNE CODE_03A575           ;
CODE_03A56D:        E0 0B         CPX #$0B                  ;
CODE_03A56F:        D0 04         BNE CODE_03A575           ;
CODE_03A571:        A9 56         LDA #$56                  ;
CODE_03A573:        85 07         STA $07                   ;
CODE_03A575:        EE E9 0E      INC $0EE9                 ;
CODE_03A578:        C8            INY                       ;
CODE_03A579:        C0 08         CPY #$08                  ;
CODE_03A57B:        D0 93         BNE CODE_03A510           ;
CODE_03A57D:        A4 01         LDY $01                   ;
CODE_03A57F:        F0 03         BEQ CODE_03A584           ;
CODE_03A581:        4C F7 A4      JMP CODE_03A4F7           ;

CODE_03A584:        AD AD 06      LDA $06AD                 ;
CODE_03A587:        C9 56         CMP #$56                  ;
CODE_03A589:        F0 04         BEQ CODE_03A58F           ;
CODE_03A58B:        C9 72         CMP #$72                  ;
CODE_03A58D:        D0 03         BNE CODE_03A592           ;
CODE_03A58F:        EE AD 06      INC $06AD                 ;
CODE_03A592:        20 CC A5      JSR CODE_03A5CC           ;
CODE_03A595:        AD A0 06      LDA $06A0                 ;
CODE_03A598:        20 F6 AC      JSR CODE_03ACF6           ;
CODE_03A59B:        A2 00         LDX #$00                  ;
CODE_03A59D:        A0 00         LDY #$00                  ;
CODE_03A59F:        84 00         STY $00                   ;
CODE_03A5A1:        AD C9 0E      LDA $0EC9                 ;
CODE_03A5A4:        D0 21         BNE CODE_03A5C7           ;
CODE_03A5A6:        BD A1 06      LDA $06A1,x               ;
CODE_03A5A9:        29 C0         AND #$C0                  ;
CODE_03A5AB:        0A            ASL A                     ;
CODE_03A5AC:        2A            ROL A                     ;
CODE_03A5AD:        2A            ROL A                     ;
CODE_03A5AE:        A8            TAY                       ;
CODE_03A5AF:        BD A1 06      LDA $06A1,x               ;
CODE_03A5B2:        D9 C8 A5      CMP $A5C8,y               ;
CODE_03A5B5:        B0 02         BCS CODE_03A5B9           ;
CODE_03A5B7:        A9 00         LDA #$00                  ;
CODE_03A5B9:        A4 00         LDY $00                   ;
CODE_03A5BB:        91 06         STA ($06),y               ;
CODE_03A5BD:        98            TYA                       ;
CODE_03A5BE:        18            CLC                       ;
CODE_03A5BF:        69 10         ADC #$10                  ;
CODE_03A5C1:        A8            TAY                       ;
CODE_03A5C2:        E8            INX                       ;
CODE_03A5C3:        E0 0D         CPX #$0D                  ;
CODE_03A5C5:        90 D8         BCC CODE_03A59F           ;
CODE_03A5C7:        60            RTS                       ;

DATA_03A5C8:        db $14,$51,$8C,$E7

;Might be another level loading routine?

CODE_03A5CC:        C2 10         REP #$10                  ;16-bit XY
CODE_03A5CE:        A2 04 00      LDX #$0004                ;Load 0004 into X
CODE_03A5D1:        9C 0B 01      STZ $010B                 ;Store zero in 3-byte object flag
CODE_03A5D4:        86 9E         STX $9E                   ;Store X into $9E: Sprite index
CODE_03A5D6:        9C 29 07      STZ $0729                 ;
CODE_03A5D9:        AC 2C 07      LDY $072C                 ;
CODE_03A5DC:        B7 FA         LDA [$FA],y               ;
CODE_03A5DE:        C9 FD         CMP #$FD                  ;
CODE_03A5E0:        F0 63         BEQ CODE_03A645           ;
CODE_03A5E2:        29 0F         AND #$0F                  ;
CODE_03A5E4:        C9 0F         CMP #$0F                  ;
CODE_03A5E6:        D0 03         BNE CODE_03A5EB           ;
CODE_03A5E8:        EE 0B 01      INC $010B                 ;
CODE_03A5EB:        BD 00 13      LDA $1300,x               ;
CODE_03A5EE:        10 55         BPL CODE_03A645           ;
CODE_03A5F0:        AD 0B 01      LDA $010B                 ;
CODE_03A5F3:        F0 01         BEQ CODE_03A5F6           ;
CODE_03A5F5:        C8            INY                       ;
CODE_03A5F6:        C8            INY                       ;
CODE_03A5F7:        B7 FA         LDA [$FA],y               ;
CODE_03A5F9:        0A            ASL A                     ;
CODE_03A5FA:        90 0B         BCC CODE_03A607           ;
CODE_03A5FC:        AD 2B 07      LDA $072B                 ;
CODE_03A5FF:        D0 06         BNE CODE_03A607           ;
CODE_03A601:        EE 2B 07      INC $072B                 ;
CODE_03A604:        EE 2A 07      INC $072A                 ;
CODE_03A607:        AC 2C 07      LDY $072C                 ;
CODE_03A60A:        B7 FA         LDA [$FA],y               ;
CODE_03A60C:        29 0F         AND #$0F                  ;
CODE_03A60E:        C9 0D         CMP #$0D                  ;
CODE_03A610:        D0 22         BNE CODE_03A634           ;
CODE_03A612:        C8            INY                       ;
CODE_03A613:        B7 FA         LDA [$FA],y               ;
CODE_03A615:        AC 2C 07      LDY $072C                 ;
CODE_03A618:        29 40         AND #$40                  ;
CODE_03A61A:        D0 21         BNE CODE_03A63D           ;
CODE_03A61C:        AD 2B 07      LDA $072B                 ;
CODE_03A61F:        D0 1C         BNE CODE_03A63D           ;
CODE_03A621:        AD 0B 01      LDA $010B                 ;
CODE_03A624:        F0 01         BEQ CODE_03A627           ;
CODE_03A626:        C8            INY                       ;
CODE_03A627:        C8            INY                       ;
CODE_03A628:        B7 FA         LDA [$FA],y               ;
CODE_03A62A:        29 1F         AND #$1F                  ;
CODE_03A62C:        8D 2A 07      STA $072A                 ;
CODE_03A62F:        EE 2B 07      INC $072B                 ;
CODE_03A632:        80 1B         BRA CODE_03A64F           ;

CODE_03A634:        C9 0E         CMP #$0E                  ;
CODE_03A636:        D0 05         BNE CODE_03A63D           ;
CODE_03A638:        AD 28 07      LDA $0728                 ;
CODE_03A63B:        D0 08         BNE CODE_03A645           ;
CODE_03A63D:        AD 2A 07      LDA $072A                 ;
CODE_03A640:        CD 25 07      CMP $0725                 ;
CODE_03A643:        90 07         BCC CODE_03A64C           ;
CODE_03A645:        20 93 A6      JSR CODE_03A693           ;
CODE_03A648:        C2 10         REP #$10                  ;
CODE_03A64A:        80 06         BRA CODE_03A652           ;

CODE_03A64C:        EE 29 07      INC $0729                 ;
CODE_03A64F:        20 75 A6      JSR CODE_03A675           ;
CODE_03A652:        A6 9E         LDX $9E                   ;
CODE_03A654:        BD 00 13      LDA $1300,x               ;
CODE_03A657:        30 03         BMI CODE_03A65C           ;
CODE_03A659:        DE 00 13      DEC $1300,x               ;
CODE_03A65C:        CA            DEX                       ;
CODE_03A65D:        30 03         BMI CODE_03A662           ;
CODE_03A65F:        4C D1 A5      JMP CODE_03A5D1           ;

CODE_03A662:        AD 29 07      LDA $0729                 ;
CODE_03A665:        F0 03         BEQ CODE_03A66A           ;
CODE_03A667:        4C CC A5      JMP CODE_03A5CC           ;

CODE_03A66A:        AD 28 07      LDA $0728                 ;
CODE_03A66D:        F0 03         BEQ CODE_03A672           ;
CODE_03A66F:        4C CC A5      JMP CODE_03A5CC           ;

CODE_03A672:        E2 10         SEP #$10                  ;
CODE_03A674:        60            RTS                       ;

CODE_03A675:        C2 20         REP #$20                  ;
CODE_03A677:        EE 2C 07      INC $072C                 ;
CODE_03A67A:        EE 2C 07      INC $072C                 ;
CODE_03A67D:        AD 0B 01      LDA $010B                 ;
CODE_03A680:        29 FF 00      AND #$00FF                ;
CODE_03A683:        F0 03         BEQ CODE_03A688           ;
CODE_03A685:        EE 2C 07      INC $072C                 ;
CODE_03A688:        E2 20         SEP #$20                  ;
CODE_03A68A:        A9 00         LDA #$00                  ;
CODE_03A68C:        8D 2B 07      STA $072B                 ;
CODE_03A68F:        8D 0B 01      STA $010B                 ;
CODE_03A692:        60            RTS                       ;

CODE_03A693:        C2 30         REP #$30                  ;
CODE_03A695:        8A            TXA                       ;
CODE_03A696:        29 FF 00      AND #$00FF                ;
CODE_03A699:        AA            TAX                       ;
CODE_03A69A:        E2 20         SEP #$20                  ;
CODE_03A69C:        BD 00 13      LDA $1300,x               ;
CODE_03A69F:        30 0A         BMI CODE_03A6AB           ;
CODE_03A6A1:        C2 20         REP #$20                  ;
CODE_03A6A3:        8A            TXA                       ;
CODE_03A6A4:        0A            ASL A                     ;
CODE_03A6A5:        AA            TAX                       ;
CODE_03A6A6:        BC 05 13      LDY $1305,x               ;
CODE_03A6A9:        E2 20         SEP #$20                  ;
CODE_03A6AB:        AD 82 0F      LDA $0F82                 ;
CODE_03A6AE:        F0 08         BEQ CODE_03A6B8           ;
CODE_03A6B0:        22 17 88 04   JSL CODE_048817           ;
CODE_03A6B4:        9C 82 0F      STZ $0F82                 ;
CODE_03A6B7:        60            RTS                       ;

CODE_03A6B8:        84 F7         STY $F7                   ;
CODE_03A6BA:        64 F6         STZ $F6                   ;
CODE_03A6BC:        9C 0B 01      STZ $010B                 ;
CODE_03A6BF:        A2 10 00      LDX #$0010                ;
CODE_03A6C2:        B7 FA         LDA [$FA],y               ;
CODE_03A6C4:        C9 FD         CMP #$FD                  ;
CODE_03A6C6:        F0 AA         BEQ CODE_03A672           ;
CODE_03A6C8:        29 0F         AND #$0F                  ;
CODE_03A6CA:        C9 0F         CMP #$0F                  ;
CODE_03A6CC:        D0 04         BNE CODE_03A6D2           ;
CODE_03A6CE:        E6 F6         INC $F6                   ;
CODE_03A6D0:        80 0A         BRA CODE_03A6DC           ;

CODE_03A6D2:        A2 08 00      LDX #$0008                ;
CODE_03A6D5:        C9 0C         CMP #$0C                  ;
CODE_03A6D7:        F0 03         BEQ CODE_03A6DC           ;
CODE_03A6D9:        A2 00 00      LDX #$0000                ;
CODE_03A6DC:        86 07         STX $07                   ;
CODE_03A6DE:        A6 9E         LDX $9E                   ;
CODE_03A6E0:        C9 0E         CMP #$0E                  ;
CODE_03A6E2:        D0 06         BNE CODE_03A6EA           ;
CODE_03A6E4:        64 07         STZ $07                   ;
CODE_03A6E6:        A9 2E         LDA #$2E                  ;
CODE_03A6E8:        D0 5D         BNE CODE_03A747           ;
CODE_03A6EA:        C9 0D         CMP #$0D                  ;
CODE_03A6EC:        D0 1F         BNE CODE_03A70D           ;
CODE_03A6EE:        A9 22         LDA #$22                  ;
CODE_03A6F0:        85 07         STA $07                   ;
CODE_03A6F2:        A5 F6         LDA $F6                   ;
CODE_03A6F4:        F0 01         BEQ CODE_03A6F7           ;
CODE_03A6F6:        C8            INY                       ;
CODE_03A6F7:        C8            INY                       ;
CODE_03A6F8:        B7 FA         LDA [$FA],y               ;
CODE_03A6FA:        29 40         AND #$40                  ;
CODE_03A6FC:        F0 68         BEQ CODE_03A766           ;
CODE_03A6FE:        B7 FA         LDA [$FA],y               ;
CODE_03A700:        29 7F         AND #$7F                  ;
CODE_03A702:        C9 4B         CMP #$4B                  ;
CODE_03A704:        D0 03         BNE CODE_03A709           ;
CODE_03A706:        EE 45 07      INC $0745                 ;
CODE_03A709:        29 3F         AND #$3F                  ;
CODE_03A70B:        80 3A         BRA CODE_03A747           ;

CODE_03A70D:        C9 0C         CMP #$0C                  ;
CODE_03A70F:        B0 28         BCS CODE_03A739           ;
CODE_03A711:        A5 F6         LDA $F6                   ;
CODE_03A713:        F0 01         BEQ CODE_03A716           ;
CODE_03A715:        C8            INY                       ;
CODE_03A716:        C8            INY                       ;
CODE_03A717:        B7 FA         LDA [$FA],y               ;
CODE_03A719:        29 70         AND #$70                  ;
CODE_03A71B:        D0 0A         BNE CODE_03A727           ;
CODE_03A71D:        A9 16         LDA #$16                  ;
CODE_03A71F:        85 07         STA $07                   ;
CODE_03A721:        B7 FA         LDA [$FA],y               ;
CODE_03A723:        29 0F         AND #$0F                  ;
CODE_03A725:        80 20         BRA CODE_03A747           ;

CODE_03A727:        85 00         STA $00                   ;
CODE_03A729:        C9 70         CMP #$70                  ;
CODE_03A72B:        D0 08         BNE CODE_03A735           ;
CODE_03A72D:        B7 FA         LDA [$FA],y               ;
CODE_03A72F:        29 08         AND #$08                  ;
CODE_03A731:        F0 02         BEQ CODE_03A735           ;
CODE_03A733:        64 00         STZ $00                   ;
CODE_03A735:        A5 00         LDA $00                   ;
CODE_03A737:        80 0A         BRA CODE_03A743           ;

CODE_03A739:        A5 F6         LDA $F6                   ;
CODE_03A73B:        F0 01         BEQ CODE_03A73E           ;
CODE_03A73D:        C8            INY                       ;
CODE_03A73E:        C8            INY                       ;
CODE_03A73F:        B7 FA         LDA [$FA],y               ;
CODE_03A741:        29 70         AND #$70                  ;
CODE_03A743:        4A            LSR A                     ;
CODE_03A744:        4A            LSR A                     ;
CODE_03A745:        4A            LSR A                     ;
CODE_03A746:        4A            LSR A                     ;
CODE_03A747:        85 00         STA $00                   ;
CODE_03A749:        BD 00 13      LDA $1300,x               ;
CODE_03A74C:        10 58         BPL CODE_03A7A6           ;
CODE_03A74E:        AD 2A 07      LDA $072A                 ;
CODE_03A751:        CD 25 07      CMP $0725                 ;
CODE_03A754:        F0 13         BEQ CODE_03A769           ;
CODE_03A756:        AC 2C 07      LDY $072C                 ;
CODE_03A759:        B7 FA         LDA [$FA],y               ;
CODE_03A75B:        29 0F         AND #$0F                  ;
CODE_03A75D:        C9 0E         CMP #$0E                  ;
CODE_03A75F:        D0 05         BNE CODE_03A766           ;
CODE_03A761:        AD 28 07      LDA $0728                 ;
CODE_03A764:        D0 27         BNE CODE_03A78D           ;
CODE_03A766:        E2 10         SEP #$10                  ;
CODE_03A768:        60            RTS                       ;

CODE_03A769:        AD 28 07      LDA $0728                 ;
CODE_03A76C:        F0 0F         BEQ CODE_03A77D           ;
CODE_03A76E:        A9 00         LDA #$00                  ;
CODE_03A770:        8D 28 07      STA $0728                 ;
CODE_03A773:        8D 29 07      STA $0729                 ;
CODE_03A776:        85 9E         STA $9E                   ;
CODE_03A778:        85 9F         STA $9F                   ;
CODE_03A77A:        E2 10         SEP #$10                  ;
CODE_03A77C:        60            RTS                       ;

CODE_03A77D:        AC 2C 07      LDY $072C                 ;
CODE_03A780:        B7 FA         LDA [$FA],y               ;
CODE_03A782:        29 F0         AND #$F0                  ;
CODE_03A784:        4A            LSR A                     ;
CODE_03A785:        4A            LSR A                     ;
CODE_03A786:        4A            LSR A                     ;
CODE_03A787:        4A            LSR A                     ;
CODE_03A788:        CD 26 07      CMP $0726                 ;
CODE_03A78B:        D0 D9         BNE CODE_03A766           ;
CODE_03A78D:        DA            PHX                       ;
CODE_03A78E:        C2 20         REP #$20                  ;
CODE_03A790:        8A            TXA                       ;
CODE_03A791:        0A            ASL A                     ;
CODE_03A792:        AA            TAX                       ;
CODE_03A793:        AD 2C 07      LDA $072C                 ;
CODE_03A796:        9D 05 13      STA $1305,x               ;
CODE_03A799:        E2 20         SEP #$20                  ;
CODE_03A79B:        FA            PLX                       ;
CODE_03A79C:        A5 F6         LDA $F6                   ;
CODE_03A79E:        F0 03         BEQ CODE_03A7A3           ;
CODE_03A7A0:        EE 0B 01      INC $010B                 ;
CODE_03A7A3:        20 75 A6      JSR CODE_03A675           ;
CODE_03A7A6:        A5 F6         LDA $F6                   ;
CODE_03A7A8:        F0 09         BEQ CODE_03A7B3           ;
CODE_03A7AA:        A4 F7         LDY $F7                   ;
CODE_03A7AC:        22 15 8E 04   JSL CODE_048E15           ;
CODE_03A7B0:        E2 10         SEP #$10                  ;
CODE_03A7B2:        60            RTS                       ;

CODE_03A7B3:        E2 10         SEP #$10                  ;\
CODE_03A7B5:        A5 00         LDA $00                   ; |
CODE_03A7B7:        18            CLC                       ; |
CODE_03A7B8:        65 07         ADC $07                   ; |
CODE_03A7BA:        0A            ASL A                     ; |
CODE_03A7BB:        A8            TAY                       ; | Build objects appropriately and place them into the level
CODE_03A7BC:        B9 C9 A7      LDA $A7C9,y               ; |
CODE_03A7BF:        85 04         STA $04                   ; |
CODE_03A7C1:        B9 CA A7      LDA $A7CA,y               ; |
CODE_03A7C4:        85 05         STA $05                   ; |
CODE_03A7C6:        6C 04 00      JMP ($0004)               ;/

;Pointers to level objects
PNTR_03A7C9:        dw CODE_03A9F7                          ;Warp pipe
                    dw CODE_03A8AF                          ;$0733-dependant object. 00 = normal, green platform. 01 = mushroom, 02 = bullet bill cannons
                    dw CODE_03AB63                          ;Row of bricks
                    dw CODE_03AB72                          ;Row of stones
                    dw CODE_03AB2A                          ;Row of coins
                    dw CODE_03AB83                          ;Column of bricks
                    dw CODE_03AB8A                          ;Column of stones
                    dw CODE_03A9F7                          ;Decoration pipe
                    dw CODE_03AC3F                          ;Hole object
                    dw CODE_03A978                          ;Pulley rope
                    dw CODE_03AAB0                          ;Bridge (high)
                    dw CODE_03AAB4                          ;Bridge (mid)
                    dw CODE_03AAB8                          ;Bridge (low)
                    dw CODE_03AA7E                          ;Water/lava pit
                    dw CODE_03AA9E                          ;Row of Coin Question blocks (high)
                    dw CODE_03AAA2                          ;Row of Coin Question blocks (low)
                    dw CODE_03A827                          ;
                    dw CODE_03A827                          ;
                    dw CODE_03A827                          ;
                    dw CODE_03A827                          ;these point to an rts
                    dw CODE_03A827                          ;
                    dw CODE_03A827                          ;
                    dw CODE_03AC0F
                    dw CODE_03AC0F
                    dw CODE_03AC0F
                    dw CODE_03AC05
                    dw CODE_03AC18
                    dw CODE_03AC18
                    dw CODE_03AC18
                    dw CODE_03AC15
                    dw CODE_03AC18
                    dw CODE_03A98D
                    dw CODE_03AB4E
                    dw CODE_03ABD5                          ;Springboard object
                    dw CODE_03A9A0
                    dw CODE_03AAE4
                    dw CODE_03AB3F
                    dw CODE_03AB44
                    dw CODE_03AB38
                    dw CODE_03A862
                    dw CODE_03A87C
                    dw CODE_03A87C
                    dw CODE_03A89A
                    dw CODE_03A89A
                    dw CODE_03A89A
                    dw CODE_03A77A
                    dw CODE_03A828

CODE_03A827:        60            RTS                       ;

CODE_03A828:        DA            PHX                       ;
CODE_03A829:        C2 30         REP #$30                  ;
CODE_03A82B:        8A            TXA                       ;
CODE_03A82C:        0A            ASL A                     ;
CODE_03A82D:        AA            TAX                       ;
CODE_03A82E:        BC 05 13      LDY $1305,x               ;
CODE_03A831:        E2 20         SEP #$20                  ;
CODE_03A833:        C8            INY                       ;
CODE_03A834:        B7 FA         LDA [$FA],y               ;
CODE_03A836:        E2 10         SEP #$10                  ;
CODE_03A838:        FA            PLX                       ;
CODE_03A839:        48            PHA                       ;
CODE_03A83A:        29 40         AND #$40                  ;
CODE_03A83C:        D0 12         BNE CODE_03A850           ;
CODE_03A83E:        68            PLA                       ;
CODE_03A83F:        48            PHA                       ;
CODE_03A840:        29 0F         AND #$0F                  ;
CODE_03A842:        8D 27 07      STA $0727                 ;
CODE_03A845:        68            PLA                       ;
CODE_03A846:        29 30         AND #$30                  ;
CODE_03A848:        4A            LSR A                     ;
CODE_03A849:        4A            LSR A                     ;
CODE_03A84A:        4A            LSR A                     ;
CODE_03A84B:        4A            LSR A                     ;
CODE_03A84C:        8D 42 07      STA $0742                 ;
CODE_03A84F:        60            RTS                       ;

CODE_03A850:        68            PLA                       ;
CODE_03A851:        29 07         AND #$07                  ;
CODE_03A853:        C9 04         CMP #$04                  ;
CODE_03A855:        90 07         BCC CODE_03A85E           ;
CODE_03A857:        29 04         AND #$04                  ;
CODE_03A859:        8D 44 07      STA $0744                 ;
CODE_03A85C:        A9 00         LDA #$00                  ;
CODE_03A85E:        8D 41 07      STA $0741                 ;
CODE_03A861:        60            RTS                       ;

CODE_03A862:        A2 04         LDX #$04                  ;"warpzone scroll stop code" ~ SWR | Warpzone setup
CODE_03A864:        AD 5F 07      LDA $075F                 ;\If world 1-x
CODE_03A867:        F0 07         BEQ CODE_03A870           ;/Set warp zone config to world 1's warps
CODE_03A869:        E8            INX                       ;adjust config for next checks
CODE_03A86A:        A4 5C         LDY $5C                   ;\If map type is not "ground" and world is not 1-x
CODE_03A86C:        88            DEY                       ; |Set warp zone config to world 4's single warp
CODE_03A86D:        D0 01         BNE CODE_03A870           ;/
CODE_03A86F:        E8            INX                       ;Else set warp zone config to world 4's outside warps
CODE_03A870:        8A            TXA                       ;\
CODE_03A871:        8D D6 06      STA $06D6                 ;/Store warpzone config
CODE_03A874:        20 FC 90      JSR CODE_0390FC           ;Routine to write the "Welcome to warpzone" message
CODE_03A877:        A9 0D         LDA #$0D                  ;\Destroy all piranha plants
CODE_03A879:        20 85 A8      JSR CODE_03A885           ;/
CODE_03A87C:        AD 23 07      LDA $0723                 ;\
CODE_03A87F:        49 01         EOR #$01                  ; |Flip scroll enabled flag on or off
CODE_03A881:        8D 23 07      STA $0723                 ;/
CODE_03A884:        60            RTS                       ;Return

CODE_03A885:        85 00         STA $00                   ;\ Destroy all sprites with sprite number specified in A by setting them
CODE_03A887:        A9 00         LDA #$00                  ; |off-screen.
CODE_03A889:        A2 08         LDX #$08                  ; |
CODE_03A88B:        B4 1C         LDY $1C,x                 ; |
CODE_03A88D:        C4 00         CPY $00                   ; |
CODE_03A88F:        D0 02         BNE CODE_03A893           ; |
CODE_03A891:        95 10         STA $10,x                 ; |
CODE_03A893:        CA            DEX                       ; |
CODE_03A894:        10 F5         BPL CODE_03A88B           ; |
CODE_03A896:        60            RTS                       ;/

DATA_03A897:        db $14,$17,$18                          ;Generators: Bullet Bill, Flying Cheep-Cheep, Stop Generators

CODE_03A89A:        A6 00         LDX $00                   ;
CODE_03A89C:        BD 8F A8      LDA $A88F,x               ;
CODE_03A89F:        A0 09         LDY #$09                  ;
CODE_03A8A1:        88            DEY                       ;
CODE_03A8A2:        30 07         BMI CODE_03A8AB           ;
CODE_03A8A4:        D9 1C 00      CMP $001C,y               ;
CODE_03A8A7:        D0 F8         BNE CODE_03A8A1           ;
CODE_03A8A9:        A9 00         LDA #$00                  ;\
CODE_03A8AB:        8D CD 06      STA $06CD                 ;/Set enemy to generate: nothing
CODE_03A8AE:        60            RTS                       ;

CODE_03A8AF:        AD 33 07      LDA $0733                 ;\
CODE_03A8B2:        0A            ASL A                     ; |
CODE_03A8B3:        A8            TAY                       ; |
CODE_03A8B4:        B9 C1 A8      LDA $A8C1,y               ; |Execute routines according to area object styles
CODE_03A8B7:        85 04         STA $04                   ; |
CODE_03A8B9:        B9 C2 A8      LDA $A8C2,y               ; |
CODE_03A8BC:        85 05         STA $05                   ; |
CODE_03A8BE:        6C 04 00      JMP ($0004)               ;/

;Code for object $01: $0733-dependant object
PNTR_03A8C1:        dw CODE_03A8C7                          ;Regular
                    dw CODE_03A937                          ;Mushroom platforms
                    dw CODE_03AB99                          ;Bullet bill cannons

CODE_03A8C7:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03A8CA:        8E CA 0E      STX $0ECA                 ;
CODE_03A8CD:        BD 00 13      LDA $1300,x               ;
CODE_03A8D0:        F0 60         BEQ CODE_03A932           ;
CODE_03A8D2:        10 11         BPL CODE_03A8E5           ;
CODE_03A8D4:        98            TYA                       ;
CODE_03A8D5:        9D 00 13      STA $1300,x               ;
CODE_03A8D8:        AD 25 07      LDA $0725                 ;
CODE_03A8DB:        0D 26 07      ORA $0726                 ;
CODE_03A8DE:        F0 05         BEQ CODE_03A8E5           ;
CODE_03A8E0:        A9 1A         LDA #$1A                  ;
CODE_03A8E2:        4C 6E A9      JMP CODE_03A96E           ;

CODE_03A8E5:        8D CB 0E      STA $0ECB                 ;
CODE_03A8E8:        A6 07         LDX $07                   ;
CODE_03A8EA:        A9 1B         LDA #$1B                  ;
CODE_03A8EC:        9D A1 06      STA $06A1,x               ;
CODE_03A8EF:        9B            TXY                       ;
CODE_03A8F0:        C8            INY                       ;
CODE_03A8F1:        AE CA 0E      LDX $0ECA                 ;
CODE_03A8F4:        CE CB 0E      DEC $0ECB                 ;
CODE_03A8F7:        F0 1A         BEQ CODE_03A913           ;
CODE_03A8F9:        BD 0F 13      LDA $130F,x               ;
CODE_03A8FC:        D0 0C         BNE CODE_03A90A           ;
CODE_03A8FE:        FE 0F 13      INC $130F,x               ;
CODE_03A901:        A9 45         LDA #$45                  ;
CODE_03A903:        99 A1 06      STA $06A1,y               ;
CODE_03A906:        A9 49         LDA #$49                  ;
CODE_03A908:        80 24         BRA CODE_03A92E           ;

CODE_03A90A:        A9 46         LDA #$46                  ;
CODE_03A90C:        99 A1 06      STA $06A1,y               ;
CODE_03A90F:        A9 4A         LDA #$4A                  ;
CODE_03A911:        80 1B         BRA CODE_03A92E           ;

CODE_03A913:        BD 0F 13      LDA $130F,x               ;
CODE_03A916:        F0 0C         BEQ CODE_03A924           ;
CODE_03A918:        9E 0F 13      STZ $130F,x               ;
CODE_03A91B:        A9 47         LDA #$47                  ;
CODE_03A91D:        99 A1 06      STA $06A1,y               ;
CODE_03A920:        A9 4B         LDA #$4B                  ;
CODE_03A922:        80 0A         BRA CODE_03A92E           ;

CODE_03A924:        9E 0F 13      STZ $130F,x               ;
CODE_03A927:        A9 48         LDA #$48                  ;
CODE_03A929:        99 A1 06      STA $06A1,y               ;
CODE_03A92C:        A9 4C         LDA #$4C                  ;
CODE_03A92E:        BB            TYX                       ;
CODE_03A92F:        4C 68 A9      JMP CODE_03A968           ;

CODE_03A932:        A9 1C         LDA #$1C                  ;
CODE_03A934:        4C 6E A9      JMP CODE_03A96E           ;

CODE_03A937:        20 B3 AC      JSR CODE_03ACB3           ;
CODE_03A93A:        84 06         STY $06                   ;
CODE_03A93C:        90 0B         BCC CODE_03A949           ;
CODE_03A93E:        BD 00 13      LDA $1300,x               ;
CODE_03A941:        4A            LSR A                     ;
CODE_03A942:        9D 14 13      STA $1314,x               ;
CODE_03A945:        A9 1D         LDA #$1D                  ;
CODE_03A947:        80 25         BRA CODE_03A96E           ;

CODE_03A949:        A9 1F         LDA #$1F                  ;
CODE_03A94B:        BC 00 13      LDY $1300,x               ;
CODE_03A94E:        F0 1E         BEQ CODE_03A96E           ;
CODE_03A950:        BD 14 13      LDA $1314,x               ;
CODE_03A953:        85 06         STA $06                   ;
CODE_03A955:        A6 07         LDX $07                   ;
CODE_03A957:        A9 1E         LDA #$1E                  ;
CODE_03A959:        9D A1 06      STA $06A1,x               ;
CODE_03A95C:        C4 06         CPY $06                   ;
CODE_03A95E:        D0 2C         BNE CODE_03A98C           ;
CODE_03A960:        E8            INX                       ;
CODE_03A961:        A9 4F         LDA #$4F                  ;
CODE_03A963:        9D A1 06      STA $06A1,x               ;
CODE_03A966:        A9 50         LDA #$50                  ;
CODE_03A968:        E8            INX                       ;
CODE_03A969:        A0 0F         LDY #$0F                  ;
CODE_03A96B:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03A96E:        A6 07         LDX $07                   ;
CODE_03A970:        A0 00         LDY #$00                  ;
CODE_03A972:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

DATA_03A975:        db $42,$41,$43                          ;Pulley rope map16 tiles: left corner, middle, right corner

;Pulley rope
CODE_03A978:        20 B3 AC      JSR CODE_03ACB3           ;Get length of pulley rope object
CODE_03A97B:        A0 00         LDY #$00                  ;Initialize tile buffer index
CODE_03A97D:        B0 07         BCS CODE_03A986           ;If starting, render left corner
CODE_03A97F:        C8            INY                       ;\
CODE_03A980:        BD 00 13      LDA $1300,x               ; |
CODE_03A983:        D0 01         BNE CODE_03A986           ;/If not at the end, render rope
CODE_03A985:        C8            INY                       ;Otherwise render right corner
CODE_03A986:        B9 75 A9      LDA $A975,y               ;\
CODE_03A989:        8D A1 06      STA $06A1                 ;/render
CODE_03A98C:        60            RTS                       ;

CODE_03A98D:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03A990:        BC 00 13      LDY $1300,x               ;
CODE_03A993:        A6 07         LDX $07                   ;
CODE_03A995:        A9 75         LDA #$75                  ;
CODE_03A997:        9D A1 06      STA $06A1,x               ;
CODE_03A99A:        A9 76         LDA #$76                  ;
CODE_03A99C:        9D A2 06      STA $06A2,x               ;
CODE_03A99F:        60            RTS                       ;

CODE_03A9A0:        A0 03         LDY #$03                  ;
CODE_03A9A2:        20 B6 AC      JSR CODE_03ACB6           ;
CODE_03A9A5:        A0 0A         LDY #$0A                  ;
CODE_03A9A7:        88            DEY                       ;
CODE_03A9A8:        88            DEY                       ;
CODE_03A9A9:        84 05         STY $05                   ;
CODE_03A9AB:        BC 00 13      LDY $1300,x               ;
CODE_03A9AE:        84 06         STY $06                   ;
CODE_03A9B0:        A6 05         LDX $05                   ;
CODE_03A9B2:        E8            INX                       ;
CODE_03A9B3:        B9 E3 A9      LDA $A9E3,y               ;
CODE_03A9B6:        C9 00         CMP #$00                  ;
CODE_03A9B8:        F0 08         BEQ CODE_03A9C2           ;
CODE_03A9BA:        A2 00         LDX #$00                  ;
CODE_03A9BC:        A4 05         LDY $05                   ;
CODE_03A9BE:        20 78 AC      JSR CODE_03AC78           ;Place tile in Accumulator into level.
CODE_03A9C1:        18            CLC                       ;
CODE_03A9C2:        A4 06         LDY $06                   ;
CODE_03A9C4:        B9 E7 A9      LDA $A9E7,y               ;
CODE_03A9C7:        9D A1 06      STA $06A1,x               ;
CODE_03A9CA:        B9 EB A9      LDA $A9EB,y               ;
CODE_03A9CD:        9D A2 06      STA $06A2,x               ;
CODE_03A9D0:        B0 10         BCS CODE_03A9E2           ;
CODE_03A9D2:        A2 06         LDX #$06                  ;
CODE_03A9D4:        A9 00         LDA #$00                  ;
CODE_03A9D6:        9D A1 06      STA $06A1,x               ;
CODE_03A9D9:        CA            DEX                       ;
CODE_03A9DA:        10 F8         BPL CODE_03A9D4           ;
CODE_03A9DC:        B9 EF A9      LDA $A9EF,y               ;
CODE_03A9DF:        8D A8 06      STA $06A8                 ;
CODE_03A9E2:        60            RTS                       ;

DATA_03A9E3:        db $19,$18,$00,$00,$19,$22,$21,$20
                    db $19,$25,$24,$23,$15,$14,$19,$18
                    db $17,$16,$19,$18

;Generate pipe
CODE_03A9F7:        20 4D AA      JSR CODE_03AA4D           ;Get pipe height
CODE_03A9FA:        A5 00         LDA $00                   ;\
CODE_03A9FC:        F0 04         BEQ CODE_03AA02           ;/Branch if warp pipe
CODE_03A9FE:        C8            INY                       ;
CODE_03A9FF:        C8            INY                       ;
CODE_03AA00:        C8            INY                       ;
CODE_03AA01:        C8            INY                       ;
CODE_03AA02:        98            TYA                       ;
CODE_03AA03:        48            PHA                       ;Preserve A
CODE_03AA04:        AD 60 07      LDA $0760                 ;\
CODE_03AA07:        0D 5F 07      ORA $075F                 ; |If 1-1, piranha plants do not appear
CODE_03AA0A:        F0 2D         BEQ CODE_03AA39           ;/
CODE_03AA0C:        BC 00 13      LDY $1300,x               ;
CODE_03AA0F:        F0 28         BEQ CODE_03AA39           ;
CODE_03AA11:        20 6B AA      JSR CODE_03AA6B           ;\Get free sprite slot for the piranha plant
CODE_03AA14:        B0 23         BCS CODE_03AA39           ;/If none, skip
CODE_03AA16:        20 E0 AC      JSR CODE_03ACE0           ;\Get Xpos of screen ((AND #$F0>>4)<<4)
CODE_03AA19:        18            CLC                       ; |
CODE_03AA1A:        69 08         ADC #$08                  ; |Add 8 pixels to it
CODE_03AA1C:        9D 1A 02      STA $021A,x               ; |Store into Sprite X-Position
CODE_03AA1F:        AD 25 07      LDA $0725                 ; |
CODE_03AA22:        69 00         ADC #$00                  ; |Handle page boundary accordingly
CODE_03AA24:        95 79         STA $79,x                 ;/
CODE_03AA26:        A9 01         LDA #$01                  ;\
CODE_03AA28:        95 BC         STA $BC,x                 ; |Sprite is onscreen in a normal way
CODE_03AA2A:        95 10         STA $10,x                 ;/
CODE_03AA2C:        20 E8 AC      JSR CODE_03ACE8           ;\ (A << 4) + $20
CODE_03AA2F:        9D 38 02      STA $0238,x               ;/Store ypos
CODE_03AA32:        A9 0D         LDA #$0D                  ;\
CODE_03AA34:        95 1C         STA $1C,x                 ;/Sprite to generate: Piranha plant
CODE_03AA36:        20 99 CB      JSR CODE_03CB99           ;Run piranha plant code?
CODE_03AA39:        68            PLA                       ;Recover A
CODE_03AA3A:        A8            TAY                       ;
CODE_03AA3B:        A6 07         LDX $07                   ;
CODE_03AA3D:        B9 EF A9      LDA $A9EF,y               ;
CODE_03AA40:        9D A1 06      STA $06A1,x               ;
CODE_03AA43:        E8            INX                       ;
CODE_03AA44:        B9 F1 A9      LDA $A9F1,y               ;
CODE_03AA47:        A4 06         LDY $06                   ;
CODE_03AA49:        88            DEY                       ;
CODE_03AA4A:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03AA4D:        A0 01         LDY #$01                  ;
CODE_03AA4F:        20 B6 AC      JSR CODE_03ACB6           ;
CODE_03AA52:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AA55:        98            TYA                       ;
CODE_03AA56:        29 07         AND #$07                  ;
CODE_03AA58:        85 06         STA $06                   ;
CODE_03AA5A:        BC 00 13      LDY $1300,x               ;
CODE_03AA5D:        60            RTS                       ;

CODE_03AA5E:        A2 00         LDX #$00                  ;\ Get free sprite slot (begin-end)
CODE_03AA60:        18            CLC                       ; |
CODE_03AA61:        B5 10         LDA $10,x                 ; |
CODE_03AA63:        F0 05         BEQ CODE_03AA6A           ; |
CODE_03AA65:        E8            INX                       ; |
CODE_03AA66:        E0 08         CPX #$08                  ; |
CODE_03AA68:        D0 F6         BNE CODE_03AA60           ; |
CODE_03AA6A:        60            RTS                       ;/

CODE_03AA6B:        A2 08         LDX #$08                  ;\ Routine only used by piranha plant
CODE_03AA6D:        18            CLC                       ; |
CODE_03AA6E:        B5 10         LDA $10,x                 ; |
CODE_03AA70:        F0 05         BEQ CODE_03AA77           ; |Get free sprite slot (end-begin)
CODE_03AA72:        CA            DEX                       ; |Index = $FF if none
CODE_03AA73:        E0 FF         CPX #$FF                  ; |
CODE_03AA75:        D0 F6         BNE CODE_03AA6D           ; |
CODE_03AA77:        60            RTS                       ;/

DATA_03AA78:        db $86,$87,$00,$88                      ;Water/lava pit top tiles: Underwater, normal, cave, castle

DATA_03AA7C:        db $8A,$8B                              ;Water/lava pit tiles

;Water/lava pit
CODE_03AA7E:        20 B3 AC      JSR CODE_03ACB3           ;Get length of object
CODE_03AA81:        A2 0A         LDX #$0A                  ;Set row to 10
CODE_03AA83:        A5 5C         LDA $5C                   ;\
CODE_03AA85:        C9 03         CMP #$03                  ; |
CODE_03AA87:        D0 01         BNE CODE_03AA8A           ; |
CODE_03AA89:        E8            INX                       ;/Set row to 11 if castle level
CODE_03AA8A:        A4 5C         LDY $5C                   ;\
CODE_03AA8C:        B9 78 AA      LDA $AA78,y               ; |
CODE_03AA8F:        9D A1 06      STA $06A1,x               ; | Render tile depending on level type
CODE_03AA92:        E8            INX                       ; |
CODE_03AA93:        98            TYA                       ; |
CODE_03AA94:        4A            LSR A                     ; |
CODE_03AA95:        A8            TAY                       ; |
CODE_03AA96:        B9 7C AA      LDA $AA7C,y               ;/
CODE_03AA99:        A0 01         LDY #$01                  ;Height 2
CODE_03AA9B:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

;Row of Coin Question blocks (high)
CODE_03AA9E:        A9 03         LDA #$03                  ;Set row
CODE_03AAA0:        80 02         BRA CODE_03AAA4           ;

;Row of Coin Question blocks (low)
CODE_03AAA2:        A9 07         LDA #$07                  ;Set row
CODE_03AAA4:        48            PHA                       ;
CODE_03AAA5:        20 B3 AC      JSR CODE_03ACB3           ;Get length of object
CODE_03AAA8:        68            PLA                       ;
CODE_03AAA9:        AA            TAX                       ;
CODE_03AAAA:        A9 E7         LDA #$E7                  ;Coin question block map16
CODE_03AAAC:        9D A1 06      STA $06A1,x               ;
CODE_03AAAF:        60            RTS                       ;

;Bridge (high)
CODE_03AAB0:        A9 06         LDA #$06                  ;set row
CODE_03AAB2:        80 06         BRA CODE_03AABA           ;

;Bridge (mid)
CODE_03AAB4:        A9 07         LDA #$07                  ;set row
CODE_03AAB6:        80 02         BRA CODE_03AABA           ;

;Bridge (low)
CODE_03AAB8:        A9 09         LDA #$09                  ;set row
CODE_03AABA:        48            PHA                       ;
CODE_03AABB:        20 B3 AC      JSR CODE_03ACB3           ;Get bridge length
CODE_03AABE:        BD 00 13      LDA $1300,x               ;
CODE_03AAC1:        F0 10         BEQ CODE_03AAD3           ;
CODE_03AAC3:        BD 0F 13      LDA $130F,x               ;
CODE_03AAC6:        D0 07         BNE CODE_03AACF           ;
CODE_03AAC8:        FE 0F 13      INC $130F,x               ;
CODE_03AACB:        A9 0E         LDA #$0E                  ;Bridge begin railing tile
CODE_03AACD:        80 09         BRA CODE_03AAD8           ;

CODE_03AACF:        A9 0D         LDA #$0D                  ;Bridge middle railing tile
CODE_03AAD1:        80 05         BRA CODE_03AAD8           ;

CODE_03AAD3:        9E 0F 13      STZ $130F,x               ;
CODE_03AAD6:        A9 0F         LDA #$0F                  ;Bridge end railing tile
CODE_03AAD8:        FA            PLX                       ;
CODE_03AAD9:        9D A1 06      STA $06A1,x               ;render tile
CODE_03AADC:        E8            INX                       ;go down once
CODE_03AADD:        A0 00         LDY #$00                  ;\bridge height is 1
CODE_03AADF:        A9 6B         LDA #$6B                  ; |Bridge tile
CODE_03AAE1:        4C 78 AC      JMP CODE_03AC78           ;/Place tile in Accumulator into level.

CODE_03AAE4:        A9 28         LDA #$28                  ;
CODE_03AAE6:        8D A1 06      STA $06A1                 ;
CODE_03AAE9:        A2 01         LDX #$01                  ;
CODE_03AAEB:        A0 08         LDY #$08                  ;
CODE_03AAED:        A9 29         LDA #$29                  ;
CODE_03AAEF:        20 78 AC      JSR CODE_03AC78           ;
CODE_03AAF2:        A9 64         LDA #$64                  ;
CODE_03AAF4:        8D AB 06      STA $06AB                 ;
CODE_03AAF7:        20 E0 AC      JSR CODE_03ACE0           ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AAFA:        38            SEC                       ;
CODE_03AAFB:        E9 08         SBC #$08                  ;
CODE_03AAFD:        8D 1F 02      STA $021F                 ;
CODE_03AB00:        AD 25 07      LDA $0725                 ;
CODE_03AB03:        E9 00         SBC #$00                  ;
CODE_03AB05:        85 7E         STA $7E                   ;
CODE_03AB07:        A9 30         LDA #$30                  ;
CODE_03AB09:        8D 3D 02      STA $023D                 ;
CODE_03AB0C:        A9 B0         LDA #$B0                  ;
CODE_03AB0E:        8D 0D 01      STA $010D                 ;
CODE_03AB11:        A9 30         LDA #$30                  ;
CODE_03AB13:        85 21         STA $21                   ;
CODE_03AB15:        E6 15         INC $15                   ;
CODE_03AB17:        A9 FF         LDA #$FF                  ;
CODE_03AB19:        8D B4 0F      STA $0FB4                 ;
CODE_03AB1C:        8D B5 0F      STA $0FB5                 ;
CODE_03AB1F:        8D B6 0F      STA $0FB6                 ;
CODE_03AB22:        8D B7 0F      STA $0FB7                 ;
CODE_03AB25:        60            RTS                       ;

DATA_03AB26:        db $EA,$E9,$E9,$E9                      ;Coin map16, depending on $7E005C
                                                            ;Underwater coin, regular coin, underground coin, castle coin
;Row of coins object
CODE_03AB2A:        A4 5C         LDY $5C                   ;\
CODE_03AB2C:        B9 26 AB      LDA $AB26,y               ;/Load coin map16 tile number
CODE_03AB2F:        4C 77 AB      JMP CODE_03AB77           ;Render

CODE_03AB32:        06 07         ASL $07                   ;
CODE_03AB34:        08            PHP                       ;
CODE_03AB35:        FD 10 8D      SBC $8D10,x               ;
CODE_03AB38:        A0 0C         LDY #$0C                  ;
CODE_03AB3A:        20 B6 AC      JSR CODE_03ACB6           ;
CODE_03AB3D:        80 05         BRA CODE_03AB44           ;

CODE_03AB3F:        A9 08         LDA #$08                  ;
CODE_03AB41:        8D 73 07      STA $0773                 ;
CODE_03AB44:        A4 00         LDY $00                   ;
CODE_03AB46:        BE 30 AB      LDX $AB30,y               ;
CODE_03AB49:        B9 33 AB      LDA $AB33,y               ;
CODE_03AB4C:        80 07         BRA CODE_03AB55           ;

CODE_03AB4E:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB51:        A6 07         LDX $07                   ;
CODE_03AB53:        A9 FC         LDA #$FC                  ;
CODE_03AB55:        A0 00         LDY #$00                  ;
CODE_03AB57:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

DATA_03AB5A:        db $71,$64,$64,$6A                      ;Stone map16, depending on $5C
                                                            ;Coral stone, normal stone, underground stone, castle dark brick

DATA_03AB5E:        db $26,$51,$52,$52,$8C                  ;Brick map16, depending on $5C.
                                                            ;Coral, normal bricks, underground bricks, castle bricks, cloud tiles

;Row of bricks
CODE_03AB63:        A4 5C         LDY $5C                   ;\
CODE_03AB65:        AD 43 07      LDA $0743                 ; |
CODE_03AB68:        F0 02         BEQ CODE_03AB6C           ; |
CODE_03AB6A:        A0 04         LDY #$04                  ; |If cloud level, set index to $04
CODE_03AB6C:        B9 5E AB      LDA $AB5E,y               ;/ Get brick map16 tile number
CODE_03AB6F:        4C 77 AB      JMP CODE_03AB77           ;Render

;Row of stones object
CODE_03AB72:        A4 5C         LDY $5C                   ;\
CODE_03AB74:        B9 5A AB      LDA $AB5A,y               ;/Get stone map16 tile number and render

CODE_03AB77:        48            PHA                       ;map16 tile on stack
CODE_03AB78:        20 B3 AC      JSR CODE_03ACB3           ;check object length
CODE_03AB7B:        A6 07         LDX $07                   ;
CODE_03AB7D:        A0 00         LDY #$00                  ;Set vertical height of 1 block high
CODE_03AB7F:        68            PLA                       ;
CODE_03AB80:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

;Column of bricks object
CODE_03AB83:        A4 5C         LDY $5C                   ;\
CODE_03AB85:        B9 5E AB      LDA $AB5E,y               ; |Get brick map16 tile depending on area type and render
CODE_03AB88:        80 05         BRA CODE_03AB8F           ;/ Note that in this column code, there's no cloud area override.

;Column of stones object
CODE_03AB8A:        A4 5C         LDY $5C                   ;\
CODE_03AB8C:        B9 5A AB      LDA $AB5A,y               ;/Get stone map16 tile number and render

CODE_03AB8F:        48            PHA                       ;
CODE_03AB90:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB93:        68            PLA                       ;
CODE_03AB94:        A6 07         LDX $07                   ;
CODE_03AB96:        4C 78 AC      JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03AB99:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB9C:        A6 07         LDX $07                   ;
CODE_03AB9E:        A9 6C         LDA #$6C                  ;
CODE_03ABA0:        9D A1 06      STA $06A1,x               ;
CODE_03ABA3:        E8            INX                       ;
CODE_03ABA4:        88            DEY                       ;
CODE_03ABA5:        30 0E         BMI CODE_03ABB5           ;
CODE_03ABA7:        A9 6D         LDA #$6D                  ;
CODE_03ABA9:        9D A1 06      STA $06A1,x               ;
CODE_03ABAC:        E8            INX                       ;
CODE_03ABAD:        88            DEY                       ;
CODE_03ABAE:        30 05         BMI CODE_03ABB5           ;
CODE_03ABB0:        A9 6E         LDA #$6E                  ;
CODE_03ABB2:        20 78 AC      JSR CODE_03AC78           ;Place tile in Accumulator into level.
CODE_03ABB5:        AE 6A 02      LDX $026A                 ;
CODE_03ABB8:        20 E8 AC      JSR CODE_03ACE8           ; (A << 4) + $20
CODE_03ABBB:        9D 77 02      STA $0277,x               ;
CODE_03ABBE:        AD 25 07      LDA $0725                 ;
CODE_03ABC1:        9D 6B 02      STA $026B,x               ;
CODE_03ABC4:        20 E0 AC      JSR CODE_03ACE0           ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABC7:        9D 71 02      STA $0271,x               ;
CODE_03ABCA:        E8            INX                       ;
CODE_03ABCB:        E0 06         CPX #$06                  ;
CODE_03ABCD:        90 02         BCC CODE_03ABD1           ;
CODE_03ABCF:        A2 00         LDX #$00                  ;
CODE_03ABD1:        8E 6A 02      STX $026A                 ;
CODE_03ABD4:        60            RTS                       ;

;Springboard object
CODE_03ABD5:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03ABD8:        20 5E AA      JSR CODE_03AA5E           ;Get free sprite slot (begin-end)
CODE_03ABDB:        20 E0 AC      JSR CODE_03ACE0           ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABDE:        9D 1A 02      STA $021A,x               ;/Store into sprite X-pos, low byte
CODE_03ABE1:        AD 25 07      LDA $0725                 ;\Store screen number number into sprite X-pos, high byte
CODE_03ABE4:        95 79         STA $79,x                 ;/
CODE_03ABE6:        20 E8 AC      JSR CODE_03ACE8           ;(A << 4) + $20
CODE_03ABE9:        9D 38 02      STA $0238,x               ;
CODE_03ABEC:        95 5E         STA $5E,x                 ;
CODE_03ABEE:        A9 32         LDA #$32                  ;\
CODE_03ABF0:        95 1C         STA $1C,x                 ;/Sprite to generate: springboard
CODE_03ABF2:        A0 01         LDY #$01                  ;
CODE_03ABF4:        94 BC         STY $BC,x                 ;
CODE_03ABF6:        F6 10         INC $10,x                 ;
CODE_03ABF8:        A6 07         LDX $07                   ;
CODE_03ABFA:        A9 6F         LDA #$6F                  ;
CODE_03ABFC:        9D A1 06      STA $06A1,x               ;
CODE_03ABFF:        A9 70         LDA #$70                  ;
CODE_03AC01:        9D A2 06      STA $06A2,x               ;
CODE_03AC04:        60            RTS                       ;

CODE_03AC05:        AD 5D 07      LDA $075D                 ;
CODE_03AC08:        F0 34         BEQ CODE_03AC3E           ;
CODE_03AC0A:        9C 5D 07      STZ $075D                 ;
CODE_03AC0D:        80 09         BRA CODE_03AC18           ;

CODE_03AC0F:        20 38 AC      JSR CODE_03AC38           ;
CODE_03AC12:        4C 2A AC      JMP CODE_03AC2A           ;

CODE_03AC15:        9C BC 06      STZ $06BC                 ;
CODE_03AC18:        20 38 AC      JSR CODE_03AC38           ;
CODE_03AC1B:        84 07         STY $07                   ;
CODE_03AC1D:        A9 00         LDA #$00                  ;
CODE_03AC1F:        A4 5C         LDY $5C                   ;
CODE_03AC21:        88            DEY                       ;
CODE_03AC22:        F0 02         BEQ CODE_03AC26           ;
CODE_03AC24:        A9 05         LDA #$05                  ;
CODE_03AC26:        18            CLC                       ;
CODE_03AC27:        65 07         ADC $07                   ;
CODE_03AC29:        A8            TAY                       ;
CODE_03AC2A:        B9 87 BF      LDA $BF87,y               ;
CODE_03AC2D:        48            PHA                       ;
CODE_03AC2E:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AC31:        A6 07         LDX $07                   ;
CODE_03AC33:        68            PLA                       ;
CODE_03AC34:        9D A1 06      STA $06A1,x               ;
CODE_03AC37:        60            RTS                       ;

CODE_03AC38:        A5 00         LDA $00                   ;
CODE_03AC3A:        38            SEC                       ;
CODE_03AC3B:        E9 00         SBC #$00                  ;
CODE_03AC3D:        A8            TAY                       ;
CODE_03AC3E:        60            RTS                       ;

;Hole object
CODE_03AC3F:        20 B3 AC      JSR CODE_03ACB3           ;\
CODE_03AC42:        90 2C         BCC CODE_03AC70           ;/Skip if length already defined
CODE_03AC44:        A5 5C         LDA $5C                   ;\
CODE_03AC46:        D0 28         BNE CODE_03AC70           ;/Branch if not water level.
CODE_03AC48:        AE 6A 02      LDX $026A                 ;Whirlpool spawning code. Get whirlpool index
CODE_03AC4B:        20 E0 AC      JSR CODE_03ACE0           ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AC4E:        38            SEC                       ; |
CODE_03AC4F:        E9 10         SBC #$10                  ; |subtract 10 pixels
CODE_03AC51:        9D 71 02      STA $0271,x               ;/store as left extent of whirlpool
CODE_03AC54:        AD 25 07      LDA $0725                 ;\
CODE_03AC57:        E9 00         SBC #$00                  ; |Get page location
CODE_03AC59:        9D 6B 02      STA $026B,x               ;/ subtract with carry, store into page of whirlpool
CODE_03AC5C:        C8            INY                       ;\
CODE_03AC5D:        C8            INY                       ;/Increment length by 2
CODE_03AC5E:        98            TYA                       ;\
CODE_03AC5F:        0A            ASL A                     ; |
CODE_03AC60:        0A            ASL A                     ; |
CODE_03AC61:        0A            ASL A                     ; |Multiply by 16 to get size of whirlpool
CODE_03AC62:        0A            ASL A                     ; |
CODE_03AC63:        9D 77 02      STA $0277,x               ;/Store into size
CODE_03AC66:        E8            INX                       ;Increment whirlpool index
CODE_03AC67:        E0 05         CPX #$05                  ;\
CODE_03AC69:        90 02         BCC CODE_03AC6D           ;/If we didn't reach 5th whirlpool yet, branch
CODE_03AC6B:        A2 00         LDX #$00                  ;Otherwise, back at index 0
CODE_03AC6D:        8E 6A 02      STX $026A                 ;Store whirlpool index
CODE_03AC70:        A6 5C         LDX $5C                   ;Get map type in x, but it's lost again later?
CODE_03AC72:        A9 00         LDA #$00                  ;Map16 tile: hole
CODE_03AC74:        A2 08         LDX #$08                  ;Row number: 9 (bottom)
CODE_03AC76:        A0 0F         LDY #$0F                  ;Vertical height of object

;Place map16 tile into level
;Input:
;A: Map16 tile
;X: Row number (TODO: verify?)
;Y: Height of the object
CODE_03AC78:        8C 35 07      STY $0735                 ;Store vertical height of object
CODE_03AC7B:        BC A1 06      LDY $06A1,x               ;\Get map16 tile of current spot in question of being rendered
CODE_03AC7E:        F0 24         BEQ CODE_03ACA4           ;/If empty, proceed
CODE_03AC80:        C0 1B         CPY #$1B                  ;\If middle of green platform, wait until next row
CODE_03AC82:        F0 23         BEQ CODE_03ACA7           ;/
CODE_03AC84:        C0 1E         CPY #$1E                  ;\If middle of mushroom platform, wait until next row
CODE_03AC86:        F0 1F         BEQ CODE_03ACA7           ;/
CODE_03AC88:        C0 E7         CPY #$E7                  ;\If coin block
CODE_03AC8A:        F0 18         BEQ CODE_03ACA4           ;/overwrite
CODE_03AC8C:        C0 46         CPY #$46                  ;\If middle part of green platform's brown base w/ shadow, wait until next row
CODE_03AC8E:        F0 17         BEQ CODE_03ACA7           ;/
CODE_03AC90:        C0 4A         CPY #$4A                  ;\If middle part of green platform's brown base, wait until next row
CODE_03AC92:        F0 13         BEQ CODE_03ACA7           ;/
CODE_03AC94:        C0 E7         CPY #$E7                  ;\If map16 tile $E8-$FF, wait until next row
CODE_03AC96:        B0 0F         BCS CODE_03ACA7           ;/($E7 is not included because it's already checked for earlier)
CODE_03AC98:        C0 57         CPY #$57                  ;\
CODE_03AC9A:        F0 04         BEQ CODE_03ACA0           ; |If ground tile base, skip ground tile top check
CODE_03AC9C:        C0 56         CPY #$56                  ; |If ground tile top, overwrite
CODE_03AC9E:        D0 04         BNE CODE_03ACA4           ;/
CODE_03ACA0:        C9 50         CMP #$50                  ;\
CODE_03ACA2:        F0 03         BEQ CODE_03ACA7           ;/If mushroom platform stem, wait until next row
CODE_03ACA4:        9D A1 06      STA $06A1,x               ;Otherwise, write the map16 tile
CODE_03ACA7:        E8            INX                       ;Next row
CODE_03ACA8:        E0 0D         CPX #$0D                  ;\
CODE_03ACAA:        B0 06         BCS CODE_03ACB2           ;/Stop rendering if at bottom of screen
CODE_03ACAC:        AC 35 07      LDY $0735                 ;\Decrement object height and stop if we're done rendering all height.
CODE_03ACAF:        88            DEY                       ; |
CODE_03ACB0:        10 C6         BPL CODE_03AC78           ;/
CODE_03ACB2:        60            RTS                       ;

;Check if object is fixed length
;Output: set carry = object has fixed length, clear carry = object has specified length
;TODO: verify
CODE_03ACB3:        20 C2 AC      JSR CODE_03ACC2           ;Get object attributes from level object pointer

CODE_03ACB6:        BD 00 13      LDA $1300,x               ;Check object length buffer
CODE_03ACB9:        18            CLC                       ;Clear carry
CODE_03ACBA:        10 05         BPL CODE_03ACC1           ;\if $FF,
CODE_03ACBC:        98            TYA                       ; | Set specified fixed length in object length buffer?
CODE_03ACBD:        9D 00 13      STA $1300,x               ;/
CODE_03ACC0:        38            SEC                       ;Set carry
CODE_03ACC1:        60            RTS                       ;

;Get object attributes
;Output: $07 = Row/Y location, Y = ??? TODO: Find out.
CODE_03ACC2:        DA            PHX                       ;
CODE_03ACC3:        C2 30         REP #$30                  ;
CODE_03ACC5:        8A            TXA                       ;
CODE_03ACC6:        29 FF 00      AND #$00FF                ;
CODE_03ACC9:        0A            ASL A                     ;
CODE_03ACCA:        AA            TAX                       ;
CODE_03ACCB:        BC 05 13      LDY $1305,x               ;
CODE_03ACCE:        E2 20         SEP #$20                  ;
CODE_03ACD0:        B7 FA         LDA [$FA],y               ;\Get first byte of level object
CODE_03ACD2:        29 0F         AND #$0F                  ; |get Y coordinates
CODE_03ACD4:        85 07         STA $07                   ;/Save as row location
CODE_03ACD6:        C8            INY                       ;\
CODE_03ACD7:        B7 FA         LDA [$FA],y               ; |Get next byte of level object
CODE_03ACD9:        29 0F         AND #$0F                  ; |
CODE_03ACDB:        E2 10         SEP #$10                  ; |(object number?)
CODE_03ACDD:        A8            TAY                       ; |
CODE_03ACDE:        FA            PLX                       ;/
CODE_03ACDF:        60            RTS                       ;

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ACE0:        AD 26 07      LDA $0726                 ;\
CODE_03ACE3:        0A            ASL A                     ; | Turn screen X-coordinates from 16x16 to pixel coordinate
CODE_03ACE4:        0A            ASL A                     ; |
CODE_03ACE5:        0A            ASL A                     ; |
CODE_03ACE6:        0A            ASL A                     ; |
CODE_03ACE7:        60            RTS                       ;/

CODE_03ACE8:        A5 07         LDA $07                   ;
CODE_03ACEA:        0A            ASL A                     ;
CODE_03ACEB:        0A            ASL A                     ;
CODE_03ACEC:        0A            ASL A                     ;
CODE_03ACED:        0A            ASL A                     ;
CODE_03ACEE:        18            CLC                       ;\Account for the statusbar area
CODE_03ACEF:        69 20         ADC #$20                  ;/
CODE_03ACF1:        60            RTS                       ;

DATA_03ACF2:        db $00,$D0
DATA_03ACF4:        db $05,$05

CODE_03ACF6:        48            PHA                       ;
CODE_03ACF7:        4A            LSR A                     ;
CODE_03ACF8:        4A            LSR A                     ;
CODE_03ACF9:        4A            LSR A                     ;
CODE_03ACFA:        4A            LSR A                     ;
CODE_03ACFB:        A8            TAY                       ;
CODE_03ACFC:        B9 F4 AC      LDA $ACF4,y               ;
CODE_03ACFF:        85 07         STA $07                   ;
CODE_03AD01:        68            PLA                       ;
CODE_03AD02:        29 0F         AND #$0F                  ;
CODE_03AD04:        18            CLC                       ;
CODE_03AD05:        79 F2 AC      ADC $ACF2,y               ;
CODE_03AD08:        85 06         STA $06                   ;
CODE_03AD0A:        60            RTS                       ;

;Place tile into level. See subroutine for i/o
CODE_03AD0B:        8B            PHB                       ;\
CODE_03AD0C:        4B            PHK                       ; |
CODE_03AD0D:        AB            PLB                       ; |
CODE_03AD0E:        20 78 AC      JSR CODE_03AC78           ; |Place tile in Accumulator into level.
CODE_03AD11:        AB            PLB                       ; |
CODE_03AD12:        6B            RTL                       ;/

;Check object length attributes
CODE_03AD13:        8B            PHB                       ;\
CODE_03AD14:        4B            PHK                       ; |
CODE_03AD15:        AB            PLB                       ; |
CODE_03AD16:        20 B6 AC      JSR CODE_03ACB6           ; |Check if object is fixed or varied length
CODE_03AD19:        AB            PLB                       ; |
CODE_03AD1A:        6B            RTL                       ;/

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD1B:        8B            PHB                       ;\
CODE_03AD1C:        4B            PHK                       ; |
CODE_03AD1D:        AB            PLB                       ; |
CODE_03AD1E:        20 E0 AC      JSR CODE_03ACE0           ; |Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD21:        AB            PLB                       ; |
CODE_03AD22:        6B            RTL                       ;/

;Get free sprite slot (begin-end)
CODE_03AD23:        8B            PHB                       ;\
CODE_03AD24:        4B            PHK                       ; |
CODE_03AD25:        AB            PLB                       ; |
CODE_03AD26:        20 5E AA      JSR CODE_03AA5E           ; |Jump to get free sprite slot
CODE_03AD29:        AB            PLB                       ; |
CODE_03AD2A:        6B            RTL                       ;/

DATA_03AD2B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF          ;Mysterious, Empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF

;Main operation mode
CODE_03AD60:        AD 72 07      LDA $0772                 ;\
CODE_03AD63:        0A            ASL A                     ; |Get "In-game modes"
CODE_03AD64:        AA            TAX                       ; |
CODE_03AD65:        7C 68 AD      JMP (PNTR_03AD68,x)       ;/

PNTR_03AD68:        dw CODE_039E0C                          ;$00 Screen goes black
                    dw CODE_038C18                          ;$01 "Image before level" mode
                    dw CODE_039ED8                          ;$02 Pause timer, Sprites go disappear
                    dw CODE_03AD70                          ;$03 Normal mode

CODE_03AD70:        22 60 C8 05   JSL CODE_05C860           ;
CODE_03AD74:        A5 28         LDA $28                   ;
CODE_03AD76:        D0 03         BNE CODE_03AD7B           ;
CODE_03AD78:        9C 67 0E      STZ $0E67                 ;
CODE_03AD7B:        AE 53 07      LDX $0753                 ;
CODE_03AD7E:        BD F4 0F      LDA $0FF4,x               ;
CODE_03AD81:        8D F4 0F      STA $0FF4                 ;
CODE_03AD84:        20 21 AF      JSR CODE_03AF21           ;
CODE_03AD87:        AD 72 07      LDA $0772                 ;
CODE_03AD8A:        C9 03         CMP #$03                  ;
CODE_03AD8C:        B0 01         BCS CODE_03AD8F           ;
CODE_03AD8E:        60            RTS                       ;

CODE_03AD8F:        20 80 B6      JSR CODE_03B680           ;
CODE_03AD92:        A2 00         LDX #$00                  ;
CODE_03AD94:        86 9E         STX $9E                   ;
CODE_03AD96:        AD 67 0E      LDA $0E67                 ;
CODE_03AD99:        F0 04         BEQ CODE_03AD9F           ;
CODE_03AD9B:        C9 7F         CMP #$7F                  ;
CODE_03AD9D:        F0 1E         BEQ CODE_03ADBD           ;
CODE_03AD9F:        20 B0 C3      JSR CODE_03C3B0           ;
CODE_03ADA2:        AD 67 0E      LDA $0E67                 ;
CODE_03ADA5:        D0 03         BNE CODE_03ADAA           ;
CODE_03ADA7:        20 30 8B      JSR CODE_038B30           ;
CODE_03ADAA:        E8            INX                       ;
CODE_03ADAB:        E0 0A         CPX #$0A                  ;
CODE_03ADAD:        D0 E5         BNE CODE_03AD94           ;
CODE_03ADAF:        22 00 D3 05   JSL CODE_05D300           ;
CODE_03ADB3:        AD 67 0E      LDA $0E67                 ;
CODE_03ADB6:        F0 05         BEQ CODE_03ADBD           ;
CODE_03ADB8:        A9 7F         LDA #$7F                  ;
CODE_03ADBA:        8D 67 0E      STA $0E67                 ;
CODE_03ADBD:        20 9C FD      JSR CODE_03FD9C           ;
CODE_03ADC0:        20 13 FD      JSR CODE_03FD13           ;
CODE_03ADC3:        20 10 F7      JSR CODE_03F710           ;
CODE_03ADC6:        A2 01         LDX #$01                  ;
CODE_03ADC8:        86 9E         STX $9E                   ;
CODE_03ADCA:        20 1F C0      JSR CODE_03C01F           ;
CODE_03ADCD:        CA            DEX                       ;
CODE_03ADCE:        86 9E         STX $9E                   ;
CODE_03ADD0:        20 1F C0      JSR CODE_03C01F           ;
CODE_03ADD3:        20 84 C0      JSR CODE_03C084           ;
CODE_03ADD6:        20 B9 BC      JSR CODE_03BCB9           ;
CODE_03ADD9:        20 A2 BA      JSR CODE_03BAA2           ;
CODE_03ADDC:        20 4E B8      JSR CODE_03B84E           ;
CODE_03ADDF:        20 F5 B8      JSR CODE_03B8F5           ;
CODE_03ADE2:        20 DE B7      JSR CODE_03B7DE           ;
CODE_03ADE5:        20 52 93      JSR CODE_039352           ;
CODE_03ADE8:        A5 BB         LDA $BB                   ;
CODE_03ADEA:        C9 02         CMP #$02                  ;
CODE_03ADEC:        10 12         BPL CODE_03AE00           ;
CODE_03ADEE:        AD AF 07      LDA $07AF                 ;
CODE_03ADF1:        F0 1F         BEQ CODE_03AE12           ;
CODE_03ADF3:        C9 04         CMP #$04                  ;
CODE_03ADF5:        D0 09         BNE CODE_03AE00           ;
CODE_03ADF7:        AD 87 07      LDA $0787                 ;
CODE_03ADFA:        D0 04         BNE CODE_03AE00           ;
CODE_03ADFC:        22 FB C8 05   JSL CODE_05C8FB           ;
CODE_03AE00:        A5 09         LDA $09                   ;
CODE_03AE02:        5A            PHY                       ;
CODE_03AE03:        AC AF 07      LDY $07AF                 ;
CODE_03AE06:        C0 08         CPY #$08                  ;
CODE_03AE08:        B0 02         BCS CODE_03AE0C           ;
CODE_03AE0A:        4A            LSR A                     ;
CODE_03AE0B:        4A            LSR A                     ;
CODE_03AE0C:        7A            PLY                       ;
CODE_03AE0D:        20 C4 B2      JSR CODE_03B2C4           ;
CODE_03AE10:        80 14         BRA CODE_03AE26           ;

CODE_03AE12:        AD 87 07      LDA $0787                 ;
CODE_03AE15:        C9 01         CMP #$01                  ;
CODE_03AE17:        D0 0A         BNE CODE_03AE23           ;
CODE_03AE19:        A5 0F         LDA $0F                   ;
CODE_03AE1B:        C9 0C         CMP #$0C                  ;
CODE_03AE1D:        F0 04         BEQ CODE_03AE23           ;
CODE_03AE1F:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03AE23:        20 FD B2      JSR CODE_03B2FD           ;
CODE_03AE26:        A5 0A         LDA $0A                   ;
CODE_03AE28:        85 0D         STA $0D                   ;
CODE_03AE2A:        64 0C         STZ $0C                   ;
CODE_03AE2C:        AD 73 07      LDA $0773                 ;
CODE_03AE2F:        C9 06         CMP #$06                  ;
CODE_03AE31:        F0 1A         BEQ CODE_03AE4D           ;
CODE_03AE33:        AD 1F 07      LDA $071F                 ;
CODE_03AE36:        D0 12         BNE CODE_03AE4A           ;
CODE_03AE38:        AD 3D 07      LDA $073D                 ;
CODE_03AE3B:        C9 20         CMP #$20                  ;
CODE_03AE3D:        30 0E         BMI CODE_03AE4D           ;
CODE_03AE3F:        AD 3D 07      LDA $073D                 ;
CODE_03AE42:        E9 20         SBC #$20                  ;
CODE_03AE44:        8D 3D 07      STA $073D                 ;
CODE_03AE47:        9C 00 1A      STZ $1A00                 ;
CODE_03AE4A:        20 95 A2      JSR CODE_03A295           ;
CODE_03AE4D:        60            RTS                       ;

CODE_03AE4E:        AD FF 06      LDA $06FF                 ;
CODE_03AE51:        18            CLC                       ;
CODE_03AE52:        6D A1 03      ADC $03A1                 ;
CODE_03AE55:        8D FF 06      STA $06FF                 ;
CODE_03AE58:        AD 23 07      LDA $0723                 ;
CODE_03AE5B:        F0 03         BEQ CODE_03AE60           ;
CODE_03AE5D:        4C D5 AE      JMP CODE_03AED5           ;

CODE_03AE60:        AD 55 07      LDA $0755                 ;
CODE_03AE63:        C9 50         CMP #$50                  ;
CODE_03AE65:        90 6E         BCC CODE_03AED5           ;
CODE_03AE67:        AD 8D 07      LDA $078D                 ;
CODE_03AE6A:        D0 69         BNE CODE_03AED5           ;
CODE_03AE6C:        AC FF 06      LDY $06FF                 ;
CODE_03AE6F:        88            DEY                       ;
CODE_03AE70:        30 63         BMI CODE_03AED5           ;
CODE_03AE72:        C8            INY                       ;
CODE_03AE73:        C0 02         CPY #$02                  ;
CODE_03AE75:        90 01         BCC CODE_03AE78           ;
CODE_03AE77:        88            DEY                       ;
CODE_03AE78:        AD 55 07      LDA $0755                 ;
CODE_03AE7B:        C9 70         CMP #$70                  ;
CODE_03AE7D:        90 03         BCC CODE_03AE82           ;
CODE_03AE7F:        AC FF 06      LDY $06FF                 ;
CODE_03AE82:        98            TYA                       ;
CODE_03AE83:        8D 75 07      STA $0775                 ;
CODE_03AE86:        18            CLC                       ;
CODE_03AE87:        6D 3D 07      ADC $073D                 ;
CODE_03AE8A:        8D 3D 07      STA $073D                 ;
CODE_03AE8D:        AD 1C 07      LDA $071C                 ;
CODE_03AE90:        85 00         STA $00                   ;
CODE_03AE92:        AD 1A 07      LDA $071A                 ;
CODE_03AE95:        85 01         STA $01                   ;
CODE_03AE97:        C2 30         REP #$30                  ;
CODE_03AE99:        98            TYA                       ;
CODE_03AE9A:        29 FF 00      AND #$00FF                ;
CODE_03AE9D:        18            CLC                       ;
CODE_03AE9E:        65 00         ADC $00                   ;
CODE_03AEA0:        85 00         STA $00                   ;
CODE_03AEA2:        4A            LSR A                     ;
CODE_03AEA3:        8D FD 0E      STA $0EFD                 ;
CODE_03AEA6:        4A            LSR A                     ;
CODE_03AEA7:        8D EE 0E      STA $0EEE                 ;
CODE_03AEAA:        E2 30         SEP #$30                  ;
CODE_03AEAC:        A5 00         LDA $00                   ;
CODE_03AEAE:        8D 1C 07      STA $071C                 ;
CODE_03AEB1:        8D 3F 07      STA $073F                 ;
CODE_03AEB4:        85 42         STA $42                   ;
CODE_03AEB6:        A5 01         LDA $01                   ;
CODE_03AEB8:        8D 1A 07      STA $071A                 ;
CODE_03AEBB:        85 43         STA $43                   ;
CODE_03AEBD:        29 01         AND #$01                  ;
CODE_03AEBF:        85 00         STA $00                   ;
CODE_03AEC1:        AD 78 07      LDA $0778                 ;
CODE_03AEC4:        29 FE         AND #$FE                  ;
CODE_03AEC6:        05 00         ORA $00                   ;
CODE_03AEC8:        8D 78 07      STA $0778                 ;
CODE_03AECB:        20 0F AF      JSR CODE_03AF0F           ;
CODE_03AECE:        A9 08         LDA #$08                  ;
CODE_03AED0:        8D A1 07      STA $07A1                 ;
CODE_03AED3:        80 03         BRA CODE_03AED8           ;

CODE_03AED5:        9C 75 07      STZ $0775                 ;
CODE_03AED8:        A2 00         LDX #$00                  ;
CODE_03AEDA:        20 1E FE      JSR CODE_03FE1E           ;
CODE_03AEDD:        85 00         STA $00                   ;
CODE_03AEDF:        A0 00         LDY #$00                  ;
CODE_03AEE1:        0A            ASL A                     ;
CODE_03AEE2:        B0 07         BCS CODE_03AEEB           ;
CODE_03AEE4:        C8            INY                       ;
CODE_03AEE5:        A5 00         LDA $00                   ;
CODE_03AEE7:        29 20         AND #$20                  ;
CODE_03AEE9:        F0 1A         BEQ CODE_03AF05           ;
CODE_03AEEB:        B9 1C 07      LDA $071C,y               ;
CODE_03AEEE:        38            SEC                       ;
CODE_03AEEF:        F9 0B AF      SBC $AF0B,y               ;
CODE_03AEF2:        8D 19 02      STA $0219                 ;
CODE_03AEF5:        B9 1A 07      LDA $071A,y               ;
CODE_03AEF8:        E9 00         SBC #$00                  ;
CODE_03AEFA:        85 78         STA $78                   ;
CODE_03AEFC:        A5 0C         LDA $0C                   ;
CODE_03AEFE:        D9 0D AF      CMP $AF0D,y               ;
CODE_03AF01:        F0 02         BEQ CODE_03AF05           ;
CODE_03AF03:        64 5D         STZ $5D                   ;
CODE_03AF05:        A9 00         LDA #$00                  ;
CODE_03AF07:        8D A1 03      STA $03A1                 ;
CODE_03AF0A:        60            RTS                       ;

DATA_03AF0B:        db $00,$10,$01,$02

CODE_03AF0F:        AD 1C 07      LDA $071C                 ;
CODE_03AF12:        18            CLC                       ;
CODE_03AF13:        69 FF         ADC #$FF                  ;
CODE_03AF15:        8D 1D 07      STA $071D                 ;
CODE_03AF18:        AD 1A 07      LDA $071A                 ;
CODE_03AF1B:        69 00         ADC #$00                  ;
CODE_03AF1D:        8D 1B 07      STA $071B                 ;
CODE_03AF20:        60            RTS                       ;

CODE_03AF21:        A5 0F         LDA $0F                   ;\
CODE_03AF23:        0A            ASL A                     ; |Player actions
CODE_03AF24:        AA            TAX                       ; |
CODE_03AF25:        7C 28 AF      JMP (PNTR_03AF28,x)       ;/

PNTR_03AF28:        dw CODE_039FBD                          ;$00 - Set up level load game timer
                    dw CODE_03B1E3                          ;$01 - Autoclimb vine
                    dw CODE_03B233                          ;$02 - Enter pipe from the side
                    dw CODE_03B205                          ;$03 - Enter pipe normally
                    dw CODE_03B309                          ;$04 - Slide on flagpole
                    dw CODE_03B32B                          ;$05 - Player ends level (where he fades out and stuff)
                    dw CODE_03A060                          ;$06 - Player loses life
                    dw CODE_03AF42                          ;$07 - Player enters level
                    dw CODE_03AFF4                          ;$08 - Regular control routine
                    dw CODE_03B26E                          ;$09 - Player changes size
                    dw CODE_03B280                          ;$0A - Player has injury invincibility
                    dw CODE_03B2A4                          ;$0B - Player dies
                    dw CODE_03B2BA                          ;$0C - Player obtains fire flower

;Player action - player enters level
CODE_03AF42:        AD 52 07      LDA $0752                 ;
CODE_03AF45:        C9 02         CMP #$02                  ;
CODE_03AF47:        F0 3C         BEQ CODE_03AF85           ;
CODE_03AF49:        A9 00         LDA #$00                  ;
CODE_03AF4B:        AC 37 02      LDY $0237                 ;
CODE_03AF4E:        C0 30         CPY #$30                  ;
CODE_03AF50:        B0 03         BCS CODE_03AF55           ;
CODE_03AF52:        4C EA AF      JMP CODE_03AFEA           ;

CODE_03AF55:        AD 10 07      LDA $0710                 ;
CODE_03AF58:        C9 06         CMP #$06                  ;
CODE_03AF5A:        F0 04         BEQ CODE_03AF60           ;
CODE_03AF5C:        C9 07         CMP #$07                  ;
CODE_03AF5E:        D0 6F         BNE CODE_03AFCF           ;
CODE_03AF60:        AD 56 02      LDA $0256                 ;
CODE_03AF63:        29 F0         AND #$F0                  ;
CODE_03AF65:        F0 05         BEQ CODE_03AF6C           ;
CODE_03AF67:        A9 01         LDA #$01                  ;
CODE_03AF69:        4C EA AF      JMP CODE_03AFEA           ;

CODE_03AF6C:        20 59 B2      JSR CODE_03B259           ;
CODE_03AF6F:        CE DE 06      DEC $06DE                 ;
CODE_03AF72:        D0 71         BNE CODE_03AFE5           ;
CODE_03AF74:        A9 01         LDA #$01                  ;
CODE_03AF76:        8D 7F 0E      STA $0E7F                 ;
CODE_03AF79:        8D 4F 0E      STA $0E4F                 ;
CODE_03AF7C:        EE 69 07      INC $0769                 ;
CODE_03AF7F:        EE 60 07      INC $0760                 ;
CODE_03AF82:        4C 68 B3      JMP CODE_03B368           ;

CODE_03AF85:        AD 58 07      LDA $0758                 ;
CODE_03AF88:        D0 1C         BNE CODE_03AFA6           ;
CODE_03AF8A:        AD 37 02      LDA $0237                 ;
CODE_03AF8D:        C9 B0         CMP #$B0                  ;
CODE_03AF8F:        D0 05         BNE CODE_03AF96           ;
CODE_03AF91:        A9 04         LDA #$04                  ;\
CODE_03AF93:        8D 00 16      STA $1600                 ;/Enter pipe/hurt sound
CODE_03AF96:        8D 4E 0E      STA $0E4E                 ;
CODE_03AF99:        A9 FF         LDA #$FF                  ;
CODE_03AF9B:        20 2B B2      JSR CODE_03B22B           ;
CODE_03AF9E:        AD 37 02      LDA $0237                 ;
CODE_03AFA1:        C9 91         CMP #$91                  ;
CODE_03AFA3:        90 2A         BCC CODE_03AFCF           ;
CODE_03AFA5:        60            RTS                       ;

CODE_03AFA6:        AD 99 03      LDA $0399                 ;
CODE_03AFA9:        C9 60         CMP #$60                  ;
CODE_03AFAB:        D0 38         BNE CODE_03AFE5           ;
CODE_03AFAD:        AD 37 02      LDA $0237                 ;
CODE_03AFB0:        C9 99         CMP #$99                  ;
CODE_03AFB2:        A0 00         LDY #$00                  ;
CODE_03AFB4:        A9 01         LDA #$01                  ;
CODE_03AFB6:        90 0A         BCC CODE_03AFC2           ;
CODE_03AFB8:        A9 03         LDA #$03                  ;
CODE_03AFBA:        85 28         STA $28                   ;
CODE_03AFBC:        C8            INY                       ;
CODE_03AFBD:        A9 08         LDA #$08                  ;
CODE_03AFBF:        8D B4 05      STA $05B4                 ;
CODE_03AFC2:        8C 16 07      STY $0716                 ;
CODE_03AFC5:        20 EA AF      JSR CODE_03AFEA           ;
CODE_03AFC8:        AD 19 02      LDA $0219                 ;
CODE_03AFCB:        C9 48         CMP #$48                  ;
CODE_03AFCD:        90 16         BCC CODE_03AFE5           ;
CODE_03AFCF:        9C 4E 0E      STZ $0E4E                 ;
CODE_03AFD2:        A9 08         LDA #$08                  ;
CODE_03AFD4:        85 0F         STA $0F                   ;
CODE_03AFD6:        A9 01         LDA #$01                  ;
CODE_03AFD8:        8D 02 02      STA $0202                 ;
CODE_03AFDB:        4A            LSR A                     ;
CODE_03AFDC:        8D 52 07      STA $0752                 ;
CODE_03AFDF:        8D 16 07      STA $0716                 ;
CODE_03AFE2:        8D 58 07      STA $0758                 ;
CODE_03AFE5:        60            RTS                       ;

DATA_03AFE6:        db $03,$FD,$00,$FF

CODE_03AFEA:        8D F4 0F      STA $0FF4                 ;
CODE_03AFED:        A9 01         LDA #$01                  ;
CODE_03AFEF:        8D 7A 0B      STA $0B7A                 ;
CODE_03AFF2:        80 03         BRA CODE_03AFF7           ;

;Player action - regular control routine
CODE_03AFF4:        9C 7A 0B      STZ $0B7A                 ;
CODE_03AFF7:        A5 0F         LDA $0F                   ;
CODE_03AFF9:        C9 0B         CMP #$0B                  ;
CODE_03AFFB:        F0 38         BEQ CODE_03B035           ;
CODE_03AFFD:        A5 5C         LDA $5C                   ;
CODE_03AFFF:        D0 0F         BNE CODE_03B010           ;
CODE_03B001:        A4 BB         LDY $BB                   ;
CODE_03B003:        88            DEY                       ;
CODE_03B004:        D0 07         BNE CODE_03B00D           ;
CODE_03B006:        AD 37 02      LDA $0237                 ;
CODE_03B009:        C9 D0         CMP #$D0                  ;
CODE_03B00B:        90 03         BCC CODE_03B010           ;
CODE_03B00D:        9C F4 0F      STZ $0FF4                 ;
CODE_03B010:        AD F4 0F      LDA $0FF4                 ;
CODE_03B013:        29 C0         AND #$C0                  ;
CODE_03B015:        85 0A         STA $0A                   ;
CODE_03B017:        AD F4 0F      LDA $0FF4                 ;
CODE_03B01A:        29 03         AND #$03                  ;
CODE_03B01C:        85 0C         STA $0C                   ;
CODE_03B01E:        AD F4 0F      LDA $0FF4                 ;
CODE_03B021:        29 0C         AND #$0C                  ;
CODE_03B023:        85 0B         STA $0B                   ;
CODE_03B025:        29 04         AND #$04                  ;
CODE_03B027:        F0 0C         BEQ CODE_03B035           ;
CODE_03B029:        A5 28         LDA $28                   ;
CODE_03B02B:        D0 08         BNE CODE_03B035           ;
CODE_03B02D:        A4 0C         LDY $0C                   ;
CODE_03B02F:        F0 04         BEQ CODE_03B035           ;
CODE_03B031:        64 0C         STZ $0C                   ;
CODE_03B033:        64 0B         STZ $0B                   ;
CODE_03B035:        AF 07 00 70   LDA $700007               ;\
CODE_03B039:        D0 03         BNE CODE_03B03E           ;/Branch if debug mode
CODE_03B03B:        4C 29 B1      JMP CODE_03B129           ;

CODE_03B03E:        DA            PHX                       ;\
CODE_03B03F:        AE C3 0E      LDX $0EC3                 ; |
CODE_03B042:        BD F8 0F      LDA $0FF8,x               ; |Get controller input
CODE_03B045:        FA            PLX                       ;/
CODE_03B046:        29 C0         AND #$C0                  ;\ 
CODE_03B048:        F0 16         BEQ CODE_03B060           ; |Skip if no input
CODE_03B04A:        29 80         AND #$80                  ; |
CODE_03B04C:        F0 0A         BEQ CODE_03B058           ;/ Branch if controller input is $40
CODE_03B04E:        9C 54 07      STZ $0754                 ;Clear small player flag.  Controller input is $80
CODE_03B051:        A9 01         LDA #$01                  ;\
CODE_03B053:        8D 56 07      STA $0756                 ;/Set mushroom powerup
CODE_03B056:        80 08         BRA CODE_03B060           ;

CODE_03B058:        9C 54 07      STZ $0754                 ;Clear small player flag
CODE_03B05B:        A9 02         LDA #$02                  ;\
CODE_03B05D:        8D 56 07      STA $0756                 ;/Set fireflower powerup
CODE_03B060:        AD F6 0F      LDA $0FF6                 ;\
CODE_03B063:        29 20         AND #$20                  ; |If select not pressed, branch
CODE_03B065:        F0 0E         BEQ CODE_03B075           ;/
CODE_03B067:        4D 73 0E      EOR $0E73                 ;\ Select pressed.
CODE_03B06A:        8D 73 0E      STA $0E73                 ; | Pass through objects debug mode flag
CODE_03B06D:        4A            LSR A                     ; |
CODE_03B06E:        4A            LSR A                     ; |
CODE_03B06F:        4A            LSR A                     ; |
CODE_03B070:        4A            LSR A                     ; |
CODE_03B071:        4A            LSR A                     ;/
CODE_03B072:        8D 16 07      STA $0716                 ;Disable collision detection
CODE_03B075:        AD 73 0E      LDA $0E73                 ;
CODE_03B078:        D0 03         BNE CODE_03B07D           ;
CODE_03B07A:        4C 29 B1      JMP CODE_03B129           ;

CODE_03B07D:        A9 10         LDA #$10                  ;
CODE_03B07F:        8D AF 07      STA $07AF                 ;
CODE_03B082:        DA            PHX                       ;
CODE_03B083:        AE 53 07      LDX $0753                 ;
CODE_03B086:        BD F8 0F      LDA $0FF8,x               ;
CODE_03B089:        FA            PLX                       ;
CODE_03B08A:        29 10         AND #$10                  ;
CODE_03B08C:        F0 3F         BEQ CODE_03B0CD           ;
CODE_03B08E:        A5 09         LDA $09                   ;
CODE_03B090:        29 07         AND #$07                  ;
CODE_03B092:        D0 39         BNE CODE_03B0CD           ;
CODE_03B094:        AD F4 0F      LDA $0FF4                 ;
CODE_03B097:        4A            LSR A                     ;
CODE_03B098:        B0 0C         BCS CODE_03B0A6           ;
CODE_03B09A:        4A            LSR A                     ;
CODE_03B09B:        B0 17         BCS CODE_03B0B4           ;
CODE_03B09D:        4A            LSR A                     ;
CODE_03B09E:        B0 2A         BCS CODE_03B0CA           ;
CODE_03B0A0:        4A            LSR A                     ;
CODE_03B0A1:        B0 20         BCS CODE_03B0C3           ;
CODE_03B0A3:        4C 2C B1      JMP CODE_03B12C           ;

CODE_03B0A6:        A9 09         LDA #$09                  ;
CODE_03B0A8:        8D EA 07      STA $07EA                 ;
CODE_03B0AB:        8D EB 07      STA $07EB                 ;
CODE_03B0AE:        8D E9 07      STA $07E9                 ;
CODE_03B0B1:        4C 2C B1      JMP CODE_03B12C           ;

CODE_03B0B4:        9C EA 07      STZ $07EA                 ;
CODE_03B0B7:        9C EB 07      STZ $07EB                 ;
CODE_03B0BA:        9C E9 07      STZ $07E9                 ;
CODE_03B0BD:        9C 73 0E      STZ $0E73                 ;
CODE_03B0C0:        4C 2C B1      JMP CODE_03B12C           ;

CODE_03B0C3:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_03B0C7:        4C 2C B1      JMP CODE_03B12C           ;

CODE_03B0CA:        4C 2C B1      JMP CODE_03B12C           ;

CODE_03B0CD:        A5 09         LDA $09                   ;
CODE_03B0CF:        29 07         AND #$07                  ;
CODE_03B0D1:        D0 1B         BNE CODE_03B0EE           ;
CODE_03B0D3:        AD F4 0F      LDA $0FF4                 ;
CODE_03B0D6:        29 80         AND #$80                  ;
CODE_03B0D8:        F0 14         BEQ CODE_03B0EE           ;
CODE_03B0DA:        AD 54 07      LDA $0754                 ;
CODE_03B0DD:        49 01         EOR #$01                  ;
CODE_03B0DF:        8D 54 07      STA $0754                 ;
CODE_03B0E2:        AD 56 07      LDA $0756                 ;
CODE_03B0E5:        49 02         EOR #$02                  ;
CODE_03B0E7:        8D 56 07      STA $0756                 ;
CODE_03B0EA:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03B0EE:        AD F4 0F      LDA $0FF4                 ;
CODE_03B0F1:        29 03         AND #$03                  ;
CODE_03B0F3:        F0 17         BEQ CODE_03B10C           ;
CODE_03B0F5:        A8            TAY                       ;
CODE_03B0F6:        A5 0C         LDA $0C                   ;
CODE_03B0F8:        8D 02 02      STA $0202                 ;
CODE_03B0FB:        AD 19 02      LDA $0219                 ;
CODE_03B0FE:        18            CLC                       ;
CODE_03B0FF:        79 E5 AF      ADC $AFE5,y               ;
CODE_03B102:        8D 19 02      STA $0219                 ;
CODE_03B105:        A5 78         LDA $78                   ;
CODE_03B107:        79 E7 AF      ADC $AFE7,y               ;
CODE_03B10A:        85 78         STA $78                   ;
CODE_03B10C:        AD F4 0F      LDA $0FF4                 ;
CODE_03B10F:        29 0C         AND #$0C                  ;
CODE_03B111:        F0 19         BEQ CODE_03B12C           ;
CODE_03B113:        4A            LSR A                     ;
CODE_03B114:        4A            LSR A                     ;
CODE_03B115:        A8            TAY                       ;
CODE_03B116:        AD 37 02      LDA $0237                 ;
CODE_03B119:        18            CLC                       ;
CODE_03B11A:        79 E5 AF      ADC $AFE5,y               ;
CODE_03B11D:        8D 37 02      STA $0237                 ;
CODE_03B120:        A5 BB         LDA $BB                   ;
CODE_03B122:        79 E7 AF      ADC $AFE7,y               ;
CODE_03B125:        85 BB         STA $BB                   ;
CODE_03B127:        80 03         BRA CODE_03B12C           ;

CODE_03B129:        20 73 B3      JSR CODE_03B373           ;
CODE_03B12C:        A0 01         LDY #$01                  ;
CODE_03B12E:        AD 54 07      LDA $0754                 ;
CODE_03B131:        D0 09         BNE CODE_03B13C           ;
CODE_03B133:        A0 00         LDY #$00                  ;
CODE_03B135:        AD 14 07      LDA $0714                 ;
CODE_03B138:        F0 02         BEQ CODE_03B13C           ;
CODE_03B13A:        A0 02         LDY #$02                  ;
CODE_03B13C:        8C 8F 04      STY $048F                 ;
CODE_03B13F:        A9 01         LDA #$01                  ;
CODE_03B141:        A4 5D         LDY $5D                   ;
CODE_03B143:        F0 05         BEQ CODE_03B14A           ;
CODE_03B145:        10 01         BPL CODE_03B148           ;
CODE_03B147:        0A            ASL A                     ;
CODE_03B148:        85 46         STA $46                   ;
CODE_03B14A:        20 4E AE      JSR CODE_03AE4E           ;
CODE_03B14D:        20 9C FD      JSR CODE_03FD9C           ;
CODE_03B150:        20 13 FD      JSR CODE_03FD13           ;
CODE_03B153:        A2 00         LDX #$00                  ;
CODE_03B155:        20 2D EA      JSR CODE_03EA2D           ;
CODE_03B158:        20 09 E3      JSR CODE_03E309           ;
CODE_03B15B:        AD 37 02      LDA $0237                 ;
CODE_03B15E:        C9 40         CMP #$40                  ;
CODE_03B160:        90 27         BCC CODE_03B189           ;
CODE_03B162:        A5 0F         LDA $0F                   ;
CODE_03B164:        C9 05         CMP #$05                  ;
CODE_03B166:        F0 21         BEQ CODE_03B189           ;
CODE_03B168:        C9 07         CMP #$07                  ;
CODE_03B16A:        F0 1D         BEQ CODE_03B189           ;
CODE_03B16C:        C9 04         CMP #$04                  ;
CODE_03B16E:        90 19         BCC CODE_03B189           ;
CODE_03B170:        A5 0F         LDA $0F                   ;
CODE_03B172:        C9 0B         CMP #$0B                  ;
CODE_03B174:        D0 09         BNE CODE_03B17F           ;
CODE_03B176:        AD 56 02      LDA $0256                 ;
CODE_03B179:        29 CE         AND #$CE                  ;
CODE_03B17B:        09 30         ORA #$30                  ;
CODE_03B17D:        80 07         BRA CODE_03B186           ;

CODE_03B17F:        AD 56 02      LDA $0256                 ;
CODE_03B182:        29 CE         AND #$CE                  ;
CODE_03B184:        09 20         ORA #$20                  ;
CODE_03B186:        8D 56 02      STA $0256                 ;
CODE_03B189:        A5 BB         LDA $BB                   ;
CODE_03B18B:        C9 02         CMP #$02                  ;
CODE_03B18D:        30 49         BMI CODE_03B1D8           ;
CODE_03B18F:        A2 01         LDX #$01                  ;
CODE_03B191:        8E 23 07      STX $0723                 ;
CODE_03B194:        A0 04         LDY #$04                  ;
CODE_03B196:        84 07         STY $07                   ;
CODE_03B198:        A2 00         LDX #$00                  ;
CODE_03B19A:        AC 59 07      LDY $0759                 ;
CODE_03B19D:        D0 05         BNE CODE_03B1A4           ;
CODE_03B19F:        AC 43 07      LDY $0743                 ;
CODE_03B1A2:        D0 24         BNE CODE_03B1C8           ;
CODE_03B1A4:        E8            INX                       ;
CODE_03B1A5:        A4 0F         LDY $0F                   ;
CODE_03B1A7:        C0 0B         CPY #$0B                  ;
CODE_03B1A9:        F0 1D         BEQ CODE_03B1C8           ;
CODE_03B1AB:        AC 12 07      LDY $0712                 ;
CODE_03B1AE:        D0 14         BNE CODE_03B1C4           ;
CODE_03B1B0:        C8            INY                       ;
CODE_03B1B1:        8C 12 07      STY $0712                 ;
CODE_03B1B4:        A0 09         LDY #$09                  ;\Mario died music
CODE_03B1B6:        8C 02 16      STY $1602                 ;/
CODE_03B1B9:        8D 67 0E      STA $0E67                 ;
CODE_03B1BC:        A9 01         LDA #$01                  ;\Set Small Mario flag
CODE_03B1BE:        8D 54 07      STA $0754                 ;/
CODE_03B1C1:        9C 56 07      STZ $0756                 ;Small Mario powrup
CODE_03B1C4:        A0 06         LDY #$06                  ;
CODE_03B1C6:        84 07         STY $07                   ;
CODE_03B1C8:        C5 07         CMP $07                   ;
CODE_03B1CA:        30 0C         BMI CODE_03B1D8           ;
CODE_03B1CC:        CA            DEX                       ;
CODE_03B1CD:        30 0A         BMI CODE_03B1D9           ;
CODE_03B1CF:        AC B1 07      LDY $07B1                 ;
CODE_03B1D2:        D0 04         BNE CODE_03B1D8           ;
CODE_03B1D4:        A9 06         LDA #$06                  ;\Set game mode: Fade out to image before level
CODE_03B1D6:        85 0F         STA $0F                   ;/
CODE_03B1D8:        60            RTS                       ;

CODE_03B1D9:        9C 58 07      STZ $0758                 ;
CODE_03B1DC:        20 FD B1      JSR CODE_03B1FD           ;
CODE_03B1DF:        EE 52 07      INC $0752                 ;
CODE_03B1E2:        60            RTS                       ;

;Player action - autoclimb vine
CODE_03B1E3:        A5 BB         LDA $BB                   ;
CODE_03B1E5:        D0 07         BNE CODE_03B1EE           ;
CODE_03B1E7:        AD 37 02      LDA $0237                 ;
CODE_03B1EA:        C9 E4         CMP #$E4                  ;
CODE_03B1EC:        90 0F         BCC CODE_03B1FD           ;
CODE_03B1EE:        A9 08         LDA #$08                  ;
CODE_03B1F0:        8D 58 07      STA $0758                 ;
CODE_03B1F3:        8D 67 0E      STA $0E67                 ;
CODE_03B1F6:        A0 03         LDY #$03                  ;
CODE_03B1F8:        84 28         STY $28                   ;
CODE_03B1FA:        4C EA AF      JMP CODE_03AFEA           ;

CODE_03B1FD:        A9 02         LDA #$02                  ;
CODE_03B1FF:        8D 52 07      STA $0752                 ;
CODE_03B202:        4C 48 B2      JMP CODE_03B248           ;

;Player action - enter pipe normally
CODE_03B205:        A9 01         LDA #$01                  ;
CODE_03B207:        8D 4F 0E      STA $0E4F                 ;
CODE_03B20A:        8D 18 02      STA $0218                 ;
CODE_03B20D:        A5 09         LDA $09                   ;
CODE_03B20F:        4A            LSR A                     ;
CODE_03B210:        90 05         BCC CODE_03B217           ;
CODE_03B212:        A9 01         LDA #$01                  ;
CODE_03B214:        20 2B B2      JSR CODE_03B22B           ;
CODE_03B217:        20 4E AE      JSR CODE_03AE4E           ;
CODE_03B21A:        A0 00         LDY #$00                  ;
CODE_03B21C:        AD D6 06      LDA $06D6                 ;
CODE_03B21F:        D0 1F         BNE CODE_03B240           ;
CODE_03B221:        C8            INY                       ;
CODE_03B222:        A5 5C         LDA $5C                   ;
CODE_03B224:        C9 03         CMP #$03                  ;
CODE_03B226:        D0 18         BNE CODE_03B240           ;
CODE_03B228:        C8            INY                       ;
CODE_03B229:        80 15         BRA CODE_03B240           ;

CODE_03B22B:        18            CLC                       ;
CODE_03B22C:        6D 37 02      ADC $0237                 ;
CODE_03B22F:        8D 37 02      STA $0237                 ;
CODE_03B232:        60            RTS                       ;

;Player action - enter pipe from the side
CODE_03B233:        A9 01         LDA #$01                  ;
CODE_03B235:        8D 67 0E      STA $0E67                 ;
CODE_03B238:        8D 4F 0E      STA $0E4F                 ;
CODE_03B23B:        20 59 B2      JSR CODE_03B259           ;
CODE_03B23E:        A0 02         LDY #$02                  ;
CODE_03B240:        CE DE 06      DEC $06DE                 ;
CODE_03B243:        D0 13         BNE CODE_03B258           ;
CODE_03B245:        8C 52 07      STY $0752                 ;
CODE_03B248:        A9 01         LDA #$01                  ;
CODE_03B24A:        8D 7F 0E      STA $0E7F                 ;
CODE_03B24D:        8D 67 0E      STA $0E67                 ;
CODE_03B250:        A9 00         LDA #$00                  ;
CODE_03B252:        8D 72 07      STA $0772                 ;
CODE_03B255:        8D 22 07      STA $0722                 ;
CODE_03B258:        60            RTS                       ;

CODE_03B259:        A9 08         LDA #$08                  ;
CODE_03B25B:        85 5D         STA $5D                   ;
CODE_03B25D:        A0 01         LDY #$01                  ;
CODE_03B25F:        AD 19 02      LDA $0219                 ;
CODE_03B262:        29 0F         AND #$0F                  ;
CODE_03B264:        D0 03         BNE CODE_03B269           ;
CODE_03B266:        85 5D         STA $5D                   ;
CODE_03B268:        A8            TAY                       ;
CODE_03B269:        98            TYA                       ;
CODE_03B26A:        20 EA AF      JSR CODE_03AFEA           ;
CODE_03B26D:        60            RTS                       ;

;Player action - Player changes size
CODE_03B26E:        AD 47 07      LDA $0747                 ;
CODE_03B271:        C9 F8         CMP #$F8                  ;
CODE_03B273:        D0 03         BNE CODE_03B278           ;
CODE_03B275:        4C 90 B2      JMP CODE_03B290           ;

CODE_03B278:        C9 C4         CMP #$C4                  ;
CODE_03B27A:        D0 03         BNE CODE_03B27F           ;
CODE_03B27C:        20 AE B2      JSR CODE_03B2AE           ;
CODE_03B27F:        60            RTS                       ;

;Player action - player has injury invincibility
CODE_03B280:        AD 47 07      LDA $0747                 ;
CODE_03B283:        C9 F0         CMP #$F0                  ;
CODE_03B285:        B0 07         BCS CODE_03B28E           ;
CODE_03B287:        C9 C8         CMP #$C8                  ;
CODE_03B289:        F0 23         BEQ CODE_03B2AE           ;
CODE_03B28B:        4C F4 AF      JMP CODE_03AFF4           ;

CODE_03B28E:        D0 13         BNE CODE_03B2A3           ;
CODE_03B290:        AC 0B 07      LDY $070B                 ;
CODE_03B293:        D0 0E         BNE CODE_03B2A3           ;
CODE_03B295:        8C 0D 07      STY $070D                 ;
CODE_03B298:        EE 0B 07      INC $070B                 ;
CODE_03B29B:        AD 54 07      LDA $0754                 ;
CODE_03B29E:        49 01         EOR #$01                  ;
CODE_03B2A0:        8D 54 07      STA $0754                 ;
CODE_03B2A3:        60            RTS                       ;

;Player action - player dies
CODE_03B2A4:        AD 47 07      LDA $0747                 ;
CODE_03B2A7:        C9 F0         CMP #$F0                  ;
CODE_03B2A9:        B0 5D         BCS CODE_03B308           ;
CODE_03B2AB:        4C F4 AF      JMP CODE_03AFF4           ;

CODE_03B2AE:        9C 47 07      STZ $0747                 ;
CODE_03B2B1:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03B2B5:        A9 08         LDA #$08                  ;
CODE_03B2B7:        85 0F         STA $0F                   ;
CODE_03B2B9:        60            RTS                       ;

;Player action - player obtains fireflower
CODE_03B2BA:        AD 47 07      LDA $0747                 ;
CODE_03B2BD:        C9 C0         CMP #$C0                  ;
CODE_03B2BF:        F0 39         BEQ CODE_03B2FA           ;
CODE_03B2C1:        49 FF         EOR #$FF                  ;
CODE_03B2C3:        0A            ASL A                     ;
CODE_03B2C4:        0A            ASL A                     ;
CODE_03B2C5:        0A            ASL A                     ;
CODE_03B2C6:        0A            ASL A                     ;
CODE_03B2C7:        5A            PHY                       ;
CODE_03B2C8:        DA            PHX                       ;
CODE_03B2C9:        C2 30         REP #$30                  ;
CODE_03B2CB:        29 60 00      AND #$0060                ;
CODE_03B2CE:        AA            TAX                       ;
CODE_03B2CF:        AD 53 07      LDA $0753                 ;
CODE_03B2D2:        29 FF 00      AND #$00FF                ;
CODE_03B2D5:        F0 06         BEQ CODE_03B2DD           ;
CODE_03B2D7:        8A            TXA                       ;
CODE_03B2D8:        18            CLC                       ;
CODE_03B2D9:        69 20 00      ADC #$0020                ;
CODE_03B2DC:        AA            TAX                       ;
CODE_03B2DD:        A0 E0 01      LDY #$01E0                ;
CODE_03B2E0:        BF 40 ED 05   LDA $05ED40,x             ;
CODE_03B2E4:        99 00 10      STA $1000,y               ;
CODE_03B2E7:        E8            INX                       ;
CODE_03B2E8:        E8            INX                       ;
CODE_03B2E9:        C8            INY                       ;
CODE_03B2EA:        C8            INY                       ;
CODE_03B2EB:        C0 00 02      CPY #$0200                ;
CODE_03B2EE:        D0 F0         BNE CODE_03B2E0           ;
CODE_03B2F0:        E2 30         SEP #$30                  ;
CODE_03B2F2:        FA            PLX                       ;
CODE_03B2F3:        7A            PLY                       ;
CODE_03B2F4:        A9 01         LDA #$01                  ;
CODE_03B2F6:        8D 00 12      STA $1200                 ;
CODE_03B2F9:        60            RTS                       ;

CODE_03B2FA:        20 AE B2      JSR CODE_03B2AE           ;
CODE_03B2FD:        AD 56 02      LDA $0256                 ;
CODE_03B300:        29 F1         AND #$F1                  ;
CODE_03B302:        09 0E         ORA #$0E                  ;
CODE_03B304:        8D 56 02      STA $0256                 ;
CODE_03B307:        60            RTS                       ;

CODE_03B308:        60            RTS                       ;

;Player action - slide on flagpole
CODE_03B309:        A5 21         LDA $21                   ;
CODE_03B30B:        C9 30         CMP #$30                  ;
CODE_03B30D:        D0 11         BNE CODE_03B320           ;
CODE_03B30F:        A9 00         LDA #$00                  ;
CODE_03B311:        8D 13 07      STA $0713                 ;
CODE_03B314:        AC 37 02      LDY $0237                 ;
CODE_03B317:        C0 9E         CPY #$9E                  ;
CODE_03B319:        B0 02         BCS CODE_03B31D           ;
CODE_03B31B:        A9 04         LDA #$04                  ;
CODE_03B31D:        4C EA AF      JMP CODE_03AFEA           ;

CODE_03B320:        E6 0F         INC $0F                   ;
CODE_03B322:        60            RTS                       ;

DATA_03B323:        db $15,$23,$16,$1B,$17,$18,$23,$63

;Player action - Player ends level (where he fades out and stuff)
CODE_03B32B:        22 E5 CB 05   JSL CODE_05CBE5           ;
CODE_03B32F:        F0 0F         BEQ CODE_03B340           ;
CODE_03B331:        A9 01         LDA #$01                  ;
CODE_03B333:        20 EA AF      JSR CODE_03AFEA           ;
CODE_03B336:        AD 37 02      LDA $0237                 ;
CODE_03B339:        C9 AE         CMP #$AE                  ;
CODE_03B33B:        90 03         BCC CODE_03B340           ;
CODE_03B33D:        9C 23 07      STZ $0723                 ;
CODE_03B340:        AD 46 07      LDA $0746                 ;
CODE_03B343:        C9 05         CMP #$05                  ;
CODE_03B345:        D0 2B         BNE CODE_03B372           ;
CODE_03B347:        EE 5C 07      INC $075C                 ;
CODE_03B34A:        AD 5C 07      LDA $075C                 ;
CODE_03B34D:        C9 03         CMP #$03                  ;
CODE_03B34F:        D0 0E         BNE CODE_03B35F           ;
CODE_03B351:        AC 5F 07      LDY $075F                 ;
CODE_03B354:        AD 48 07      LDA $0748                 ;
CODE_03B357:        D9 23 B3      CMP $B323,y               ;
CODE_03B35A:        90 03         BCC CODE_03B35F           ;
CODE_03B35C:        EE 5D 07      INC $075D                 ;Enable hidden 1-up flag
CODE_03B35F:        EE 60 07      INC $0760                 ;
CODE_03B362:        9C 5B 07      STZ $075B                 ;
CODE_03B365:        20 2B A2      JSR CODE_03A22B           ;
CODE_03B368:        22 0B C0 04   JSL CODE_04C00B           ;
CODE_03B36C:        EE 57 07      INC $0757                 ;
CODE_03B36F:        20 48 B2      JSR CODE_03B248           ;
CODE_03B372:        60            RTS                       ;

CODE_03B373:        A9 00         LDA #$00                  ;
CODE_03B375:        AC 54 07      LDY $0754                 ;
CODE_03B378:        D0 08         BNE CODE_03B382           ;
CODE_03B37A:        A5 28         LDA $28                   ;
CODE_03B37C:        D0 07         BNE CODE_03B385           ;
CODE_03B37E:        A5 0B         LDA $0B                   ;
CODE_03B380:        29 04         AND #$04                  ;
CODE_03B382:        8D 14 07      STA $0714                 ;
CODE_03B385:        20 AD B4      JSR CODE_03B4AD           ;
CODE_03B388:        AD 0B 07      LDA $070B                 ;
CODE_03B38B:        D0 18         BNE CODE_03B3A5           ;
CODE_03B38D:        A5 28         LDA $28                   ;
CODE_03B38F:        C9 03         CMP #$03                  ;
CODE_03B391:        F0 05         BEQ CODE_03B398           ;
CODE_03B393:        A0 18         LDY #$18                  ;
CODE_03B395:        8C 91 07      STY $0791                 ;
CODE_03B398:        0A            ASL A                     ;
CODE_03B399:        AA            TAX                       ;
CODE_03B39A:        7C 9D B3      JMP (PNTR_03B39D,x)       ;

PNTR_03B39D:        dw CODE_03B3A6
                    dw CODE_03B3C3
                    dw CODE_03B3BA
                    dw CODE_03B41F


CODE_03B3A5:        60            RTS

CODE_03B3A6:        20 F0 B5      JSR CODE_03B5F0
CODE_03B3A9:        A5 0C         LDA $0C                   ;
CODE_03B3AB:        F0 03         BEQ CODE_03B3B0           ;
CODE_03B3AD:        8D 02 02      STA $0202                 ;
CODE_03B3B0:        20 2B B6      JSR CODE_03B62B           ;
CODE_03B3B3:        20 B4 C0      JSR CODE_03C0B4           ;
CODE_03B3B6:        8D FF 06      STA $06FF                 ;
CODE_03B3B9:        60            RTS                       ;

CODE_03B3BA:        AD 0A 07      LDA $070A                 ;
CODE_03B3BD:        8D 09 07      STA $0709                 ;
CODE_03B3C0:        4C FC B3      JMP CODE_03B3FC           ;

CODE_03B3C3:        A4 A0         LDY $A0                   ;
CODE_03B3C5:        10 14         BPL CODE_03B3DB           ;
CODE_03B3C7:        A5 0A         LDA $0A                   ;
CODE_03B3C9:        29 80         AND #$80                  ;
CODE_03B3CB:        25 0D         AND $0D                   ;
CODE_03B3CD:        D0 12         BNE CODE_03B3E1           ;
CODE_03B3CF:        AD 08 07      LDA $0708                 ;
CODE_03B3D2:        38            SEC                       ;
CODE_03B3D3:        ED 37 02      SBC $0237                 ;
CODE_03B3D6:        CD 06 07      CMP $0706                 ;
CODE_03B3D9:        90 06         BCC CODE_03B3E1           ;
CODE_03B3DB:        AD 0A 07      LDA $070A                 ;
CODE_03B3DE:        8D 09 07      STA $0709                 ;
CODE_03B3E1:        AD 04 07      LDA $0704                 ;
CODE_03B3E4:        F0 16         BEQ CODE_03B3FC           ;
CODE_03B3E6:        20 F0 B5      JSR CODE_03B5F0           ;
CODE_03B3E9:        AD 37 02      LDA $0237                 ;
CODE_03B3EC:        C9 14         CMP #$14                  ;
CODE_03B3EE:        B0 05         BCS CODE_03B3F5           ;
CODE_03B3F0:        A9 18         LDA #$18                  ;
CODE_03B3F2:        8D 09 07      STA $0709                 ;
CODE_03B3F5:        A5 0C         LDA $0C                   ;
CODE_03B3F7:        F0 03         BEQ CODE_03B3FC           ;
CODE_03B3F9:        8D 02 02      STA $0202                 ;
CODE_03B3FC:        A5 0C         LDA $0C                   ;
CODE_03B3FE:        F0 03         BEQ CODE_03B403           ;
CODE_03B400:        20 2B B6      JSR CODE_03B62B           ;
CODE_03B403:        20 B4 C0      JSR CODE_03C0B4           ;
CODE_03B406:        8D FF 06      STA $06FF                 ;
CODE_03B409:        A5 0F         LDA $0F                   ;\
CODE_03B40B:        C9 0B         CMP #$0B                  ; |If Mario is not dying
CODE_03B40D:        D0 05         BNE CODE_03B414           ;/ 
CODE_03B40F:        A9 28         LDA #$28                  ;
CODE_03B411:        8D 09 07      STA $0709                 ;
CODE_03B414:        4C FD C0      JMP CODE_03C0FD           ;

DATA_03B417:        db $0E,$04,$FC,$F2
DATA_03B41B:        db $00,$00,$FF,$FF

CODE_03B41F:        AD 1C 04      LDA $041C                 ;
CODE_03B422:        18            CLC                       ;
CODE_03B423:        6D 3C 04      ADC $043C                 ;
CODE_03B426:        8D 1C 04      STA $041C                 ;
CODE_03B429:        A0 00         LDY #$00                  ;
CODE_03B42B:        A5 A0         LDA $A0                   ;
CODE_03B42D:        10 01         BPL CODE_03B430           ;
CODE_03B42F:        88            DEY                       ;
CODE_03B430:        84 00         STY $00                   ;
CODE_03B432:        6D 37 02      ADC $0237                 ;
CODE_03B435:        8D 37 02      STA $0237                 ;
CODE_03B438:        A5 BB         LDA $BB                   ;
CODE_03B43A:        65 00         ADC $00                   ;
CODE_03B43C:        85 BB         STA $BB                   ;
CODE_03B43E:        A5 0C         LDA $0C                   ;
CODE_03B440:        2D 80 04      AND $0480                 ;
CODE_03B443:        F0 38         BEQ CODE_03B47D           ;
CODE_03B445:        AC 91 07      LDY $0791                 ;
CODE_03B448:        D0 32         BNE CODE_03B47C           ;
CODE_03B44A:        A0 18         LDY #$18                  ;
CODE_03B44C:        8C 91 07      STY $0791                 ;
CODE_03B44F:        A2 00         LDX #$00                  ;
CODE_03B451:        AC 02 02      LDY $0202                 ;
CODE_03B454:        4A            LSR A                     ;
CODE_03B455:        B0 09         BCS CODE_03B460           ;
CODE_03B457:        AD AD 03      LDA $03AD                 ;
CODE_03B45A:        C9 10         CMP #$10                  ;
CODE_03B45C:        90 1E         BCC CODE_03B47C           ;
CODE_03B45E:        E8            INX                       ;
CODE_03B45F:        E8            INX                       ;
CODE_03B460:        88            DEY                       ;
CODE_03B461:        F0 01         BEQ CODE_03B464           ;
CODE_03B463:        E8            INX                       ;
CODE_03B464:        AD 19 02      LDA $0219                 ;
CODE_03B467:        18            CLC                       ;
CODE_03B468:        7D 17 B4      ADC $B417,x               ;
CODE_03B46B:        8D 19 02      STA $0219                 ;
CODE_03B46E:        A5 78         LDA $78                   ;
CODE_03B470:        7D 1B B4      ADC $B41B,x               ;
CODE_03B473:        85 78         STA $78                   ;
CODE_03B475:        A5 0C         LDA $0C                   ;
CODE_03B477:        49 03         EOR #$03                  ;
CODE_03B479:        8D 02 02      STA $0202                 ;
CODE_03B47C:        60            RTS                       ;

CODE_03B47D:        8D 91 07      STA $0791                 ;
CODE_03B480:        60            RTS                       ;

DATA_03B481:        db $20,$20,$1E,$28,$28,$0D,$04

DATA_03B488:        db $70,$70,$60,$90,$90,$0A,$09

DATA_03B48F:        db $FC,$FC,$FC,$FB,$FB,$FE,$FF

DATA_03B496:        db $00,$00,$00,$00,$00,$80,$00

DATA_03B49D:        db $D8,$E8,$F0

DATA_03B4A0:        db $28,$18,$10,$0C,$E4,$98,$D0

DATA_03B4A7:        db $00,$FF,$01

DATA_03B4AA:        db $00,$20,$FF

CODE_03B4AD:        A5 28         LDA $28                   ;
CODE_03B4AF:        C9 03         CMP #$03                  ;
CODE_03B4B1:        D0 30         BNE CODE_03B4E3           ;
CODE_03B4B3:        A0 00         LDY #$00                  ;
CODE_03B4B5:        A5 0B         LDA $0B                   ;
CODE_03B4B7:        2D 80 04      AND $0480                 ;
CODE_03B4BA:        F0 13         BEQ CODE_03B4CF           ;
CODE_03B4BC:        C8            INY                       ;
CODE_03B4BD:        29 08         AND #$08                  ;
CODE_03B4BF:        F0 0D         BEQ CODE_03B4CE           ;
CODE_03B4C1:        A5 09         LDA $09                   ;\
CODE_03B4C3:        29 07         AND #$07                  ; |
CODE_03B4C5:        D0 08         BNE CODE_03B4CF           ; |Each 7 frames,
CODE_03B4C7:        A9 30         LDA #$30                  ; |
CODE_03B4C9:        8D 00 16      STA $1600                 ;/Mario is climbing vine sound plays.
CODE_03B4CC:        80 01         BRA CODE_03B4CF           ;

CODE_03B4CE:        C8            INY                       ;
CODE_03B4CF:        BE AA B4      LDX $B4AA,y               ;
CODE_03B4D2:        8E 3C 04      STX $043C                 ;
CODE_03B4D5:        A9 08         LDA #$08                  ;
CODE_03B4D7:        BE A7 B4      LDX $B4A7,y               ;
CODE_03B4DA:        86 A0         STX $A0                   ;
CODE_03B4DC:        30 01         BMI CODE_03B4DF           ;
CODE_03B4DE:        4A            LSR A                     ;
CODE_03B4DF:        8D 0C 07      STA $070C                 ;
CODE_03B4E2:        60            RTS                       ;

CODE_03B4E3:        AD 0E 07      LDA $070E                 ;
CODE_03B4E6:        D0 0A         BNE CODE_03B4F2           ;
CODE_03B4E8:        A5 0A         LDA $0A                   ;
CODE_03B4EA:        29 80         AND #$80                  ;
CODE_03B4EC:        F0 04         BEQ CODE_03B4F2           ;
CODE_03B4EE:        25 0D         AND $0D                   ;
CODE_03B4F0:        F0 03         BEQ CODE_03B4F5           ;
CODE_03B4F2:        4C 80 B5      JMP CODE_03B580           ;

CODE_03B4F5:        A5 28         LDA $28                   ;
CODE_03B4F7:        F0 11         BEQ CODE_03B50A           ;
CODE_03B4F9:        AD 04 07      LDA $0704                 ;
CODE_03B4FC:        F0 F4         BEQ CODE_03B4F2           ;
CODE_03B4FE:        AD 8A 07      LDA $078A                 ;
CODE_03B501:        D0 07         BNE CODE_03B50A           ;
CODE_03B503:        A5 A0         LDA $A0                   ;
CODE_03B505:        10 03         BPL CODE_03B50A           ;
CODE_03B507:        4C 80 B5      JMP CODE_03B580           ;

CODE_03B50A:        A9 20         LDA #$20                  ;
CODE_03B50C:        8D 8A 07      STA $078A                 ;
CODE_03B50F:        A0 00         LDY #$00                  ;
CODE_03B511:        8C 1C 04      STY $041C                 ;
CODE_03B514:        8C 3C 04      STY $043C                 ;
CODE_03B517:        A5 BB         LDA $BB                   ;
CODE_03B519:        8D 07 07      STA $0707                 ;
CODE_03B51C:        AD 37 02      LDA $0237                 ;
CODE_03B51F:        8D 08 07      STA $0708                 ;
CODE_03B522:        A9 01         LDA #$01                  ;
CODE_03B524:        85 28         STA $28                   ;
CODE_03B526:        AD 00 07      LDA $0700                 ;
CODE_03B529:        C9 09         CMP #$09                  ;
CODE_03B52B:        90 10         BCC CODE_03B53D           ;
CODE_03B52D:        C8            INY                       ;
CODE_03B52E:        C9 10         CMP #$10                  ;
CODE_03B530:        90 0B         BCC CODE_03B53D           ;
CODE_03B532:        C8            INY                       ;
CODE_03B533:        C9 19         CMP #$19                  ;
CODE_03B535:        90 06         BCC CODE_03B53D           ;
CODE_03B537:        C8            INY                       ;
CODE_03B538:        C9 1C         CMP #$1C                  ;
CODE_03B53A:        90 01         BCC CODE_03B53D           ;
CODE_03B53C:        C8            INY                       ;
CODE_03B53D:        A9 01         LDA #$01                  ;
CODE_03B53F:        8D 06 07      STA $0706                 ;
CODE_03B542:        AD 04 07      LDA $0704                 ;
CODE_03B545:        F0 08         BEQ CODE_03B54F           ;
CODE_03B547:        A0 05         LDY #$05                  ;
CODE_03B549:        AD 7D 02      LDA $027D                 ;
CODE_03B54C:        F0 01         BEQ CODE_03B54F           ;
CODE_03B54E:        C8            INY                       ;
CODE_03B54F:        B9 81 B4      LDA $B481,y               ;
CODE_03B552:        8D 09 07      STA $0709                 ;
CODE_03B555:        B9 88 B4      LDA $B488,y               ;
CODE_03B558:        8D 0A 07      STA $070A                 ;
CODE_03B55B:        B9 96 B4      LDA $B496,y               ;
CODE_03B55E:        8D 3C 04      STA $043C                 ;
CODE_03B561:        B9 8F B4      LDA $B48F,y               ;
CODE_03B564:        85 A0         STA $A0                   ;
CODE_03B566:        AD 04 07      LDA $0704                 ;
CODE_03B569:        F0 10         BEQ CODE_03B57B           ;
CODE_03B56B:        A9 0E         LDA #$0E                  ;\Mario is swimming sound
CODE_03B56D:        8D 00 16      STA $1600                 ;/
CODE_03B570:        AD 37 02      LDA $0237                 ;
CODE_03B573:        C9 14         CMP #$14                  ;
CODE_03B575:        B0 09         BCS CODE_03B580           ;
CODE_03B577:        64 A0         STZ $A0                   ;
CODE_03B579:        80 05         BRA CODE_03B580           ;

CODE_03B57B:        A9 01         LDA #$01                  ;\Mario is jumping sound
CODE_03B57D:        8D 01 16      STA $1601                 ;/
CODE_03B580:        A0 00         LDY #$00                  ;
CODE_03B582:        84 00         STY $00                   ;
CODE_03B584:        A5 28         LDA $28                   ;
CODE_03B586:        F0 09         BEQ CODE_03B591           ;
CODE_03B588:        AD 00 07      LDA $0700                 ;
CODE_03B58B:        C9 19         CMP #$19                  ;
CODE_03B58D:        B0 31         BCS CODE_03B5C0           ;
CODE_03B58F:        90 17         BCC CODE_03B5A8           ;
CODE_03B591:        C8            INY                       ;
CODE_03B592:        A5 5C         LDA $5C                   ;
CODE_03B594:        F0 12         BEQ CODE_03B5A8           ;
CODE_03B596:        88            DEY                       ;
CODE_03B597:        A5 0C         LDA $0C                   ;
CODE_03B599:        C5 46         CMP $46                   ;
CODE_03B59B:        D0 0B         BNE CODE_03B5A8           ;
CODE_03B59D:        A5 0A         LDA $0A                   ;
CODE_03B59F:        29 40         AND #$40                  ;
CODE_03B5A1:        D0 18         BNE CODE_03B5BB           ;
CODE_03B5A3:        AD 8B 07      LDA $078B                 ;
CODE_03B5A6:        D0 18         BNE CODE_03B5C0           ;
CODE_03B5A8:        C8            INY                       ;
CODE_03B5A9:        E6 00         INC $00                   ;
CODE_03B5AB:        AD 03 07      LDA $0703                 ;
CODE_03B5AE:        D0 07         BNE CODE_03B5B7           ;
CODE_03B5B0:        AD 00 07      LDA $0700                 ;
CODE_03B5B3:        C9 21         CMP #$21                  ;
CODE_03B5B5:        90 09         BCC CODE_03B5C0           ;
CODE_03B5B7:        E6 00         INC $00                   ;
CODE_03B5B9:        80 05         BRA CODE_03B5C0           ;

CODE_03B5BB:        A9 0A         LDA #$0A                  ;
CODE_03B5BD:        8D 8B 07      STA $078B                 ;
CODE_03B5C0:        B9 9D B4      LDA $B49D,y               ;
CODE_03B5C3:        8D 5D 04      STA $045D                 ;
CODE_03B5C6:        A5 0F         LDA $0F                   ;
CODE_03B5C8:        C9 07         CMP #$07                  ;
CODE_03B5CA:        D0 02         BNE CODE_03B5CE           ;
CODE_03B5CC:        A0 03         LDY #$03                  ;
CODE_03B5CE:        B9 A0 B4      LDA $B4A0,y               ;
CODE_03B5D1:        8D 63 04      STA $0463                 ;
CODE_03B5D4:        A4 00         LDY $00                   ;
CODE_03B5D6:        B9 A4 B4      LDA $B4A4,y               ;
CODE_03B5D9:        8D 02 07      STA $0702                 ;
CODE_03B5DC:        9C 01 07      STZ $0701                 ;
CODE_03B5DF:        AD 02 02      LDA $0202                 ;
CODE_03B5E2:        C5 46         CMP $46                   ;
CODE_03B5E4:        F0 06         BEQ CODE_03B5EC           ;
CODE_03B5E6:        0E 02 07      ASL $0702                 ;
CODE_03B5E9:        2E 01 07      ROL $0701                 ;
CODE_03B5EC:        60            RTS                       ;

DATA_03B5ED:        db $02,$04,$07

CODE_03B5F0:        A0 00         LDY #$00                  ;
CODE_03B5F2:        AD 00 07      LDA $0700                 ;
CODE_03B5F5:        C9 1C         CMP #$1C                  ;
CODE_03B5F7:        B0 15         BCS CODE_03B60E           ;
CODE_03B5F9:        C8            INY                       ;
CODE_03B5FA:        C9 0E         CMP #$0E                  ;
CODE_03B5FC:        B0 01         BCS CODE_03B5FF           ;
CODE_03B5FE:        C8            INY                       ;
CODE_03B5FF:        AD F4 0F      LDA $0FF4                 ;
CODE_03B602:        29 7F         AND #$7F                  ;
CODE_03B604:        F0 1E         BEQ CODE_03B624           ;
CODE_03B606:        29 03         AND #$03                  ;
CODE_03B608:        C5 46         CMP $46                   ;
CODE_03B60A:        D0 07         BNE CODE_03B613           ;
CODE_03B60C:        A9 00         LDA #$00                  ;
CODE_03B60E:        8D 03 07      STA $0703                 ;
CODE_03B611:        80 11         BRA CODE_03B624           ;

CODE_03B613:        AD 00 07      LDA $0700                 ;
CODE_03B616:        C9 0B         CMP #$0B                  ;
CODE_03B618:        B0 0A         BCS CODE_03B624           ;
CODE_03B61A:        AD 02 02      LDA $0202                 ;
CODE_03B61D:        85 46         STA $46                   ;
CODE_03B61F:        64 5D         STZ $5D                   ;
CODE_03B621:        9C 05 07      STZ $0705                 ;
CODE_03B624:        B9 ED B5      LDA $B5ED,y               ;
CODE_03B627:        8D 0C 07      STA $070C                 ;
CODE_03B62A:        60            RTS                       ;

CODE_03B62B:        2D 80 04      AND $0480                 ;
CODE_03B62E:        D0 08         BNE CODE_03B638           ;
CODE_03B630:        A5 5D         LDA $5D                   ;
CODE_03B632:        F0 48         BEQ CODE_03B67C           ;
CODE_03B634:        10 22         BPL CODE_03B658           ;
CODE_03B636:        30 03         BMI CODE_03B63B           ;
CODE_03B638:        4A            LSR A                     ;
CODE_03B639:        90 1D         BCC CODE_03B658           ;
CODE_03B63B:        AD 05 07      LDA $0705                 ;
CODE_03B63E:        18            CLC                       ;
CODE_03B63F:        6D 02 07      ADC $0702                 ;
CODE_03B642:        8D 05 07      STA $0705                 ;
CODE_03B645:        A5 5D         LDA $5D                   ;
CODE_03B647:        6D 01 07      ADC $0701                 ;
CODE_03B64A:        85 5D         STA $5D                   ;
CODE_03B64C:        CD 63 04      CMP $0463                 ;
CODE_03B64F:        30 22         BMI CODE_03B673           ;
CODE_03B651:        AD 63 04      LDA $0463                 ;
CODE_03B654:        85 5D         STA $5D                   ;
CODE_03B656:        80 24         BRA CODE_03B67C           ;

CODE_03B658:        AD 05 07      LDA $0705                 ;
CODE_03B65B:        38            SEC                       ;
CODE_03B65C:        ED 02 07      SBC $0702                 ;
CODE_03B65F:        8D 05 07      STA $0705                 ;
CODE_03B662:        A5 5D         LDA $5D                   ;
CODE_03B664:        ED 01 07      SBC $0701                 ;
CODE_03B667:        85 5D         STA $5D                   ;
CODE_03B669:        CD 5D 04      CMP $045D                 ;
CODE_03B66C:        10 05         BPL CODE_03B673           ;
CODE_03B66E:        AD 5D 04      LDA $045D                 ;
CODE_03B671:        85 5D         STA $5D                   ;
CODE_03B673:        C9 00         CMP #$00                  ;
CODE_03B675:        10 05         BPL CODE_03B67C           ;
CODE_03B677:        49 FF         EOR #$FF                  ;
CODE_03B679:        18            CLC                       ;
CODE_03B67A:        69 01         ADC #$01                  ;
CODE_03B67C:        8D 00 07      STA $0700                 ;
CODE_03B67F:        60            RTS                       ;

CODE_03B680:        AD 56 07      LDA $0756                 ;
CODE_03B683:        C9 02         CMP #$02                  ;
CODE_03B685:        90 44         BCC CODE_03B6CB           ;
CODE_03B687:        A5 0A         LDA $0A                   ;
CODE_03B689:        29 40         AND #$40                  ;
CODE_03B68B:        F0 34         BEQ CODE_03B6C1           ;
CODE_03B68D:        25 0D         AND $0D                   ;
CODE_03B68F:        D0 30         BNE CODE_03B6C1           ;
CODE_03B691:        AD CE 06      LDA $06CE                 ;
CODE_03B694:        29 01         AND #$01                  ;
CODE_03B696:        AA            TAX                       ;
CODE_03B697:        B5 33         LDA $33,x                 ;
CODE_03B699:        D0 26         BNE CODE_03B6C1           ;
CODE_03B69B:        A4 BB         LDY $BB                   ;
CODE_03B69D:        88            DEY                       ;
CODE_03B69E:        D0 21         BNE CODE_03B6C1           ;
CODE_03B6A0:        AD 14 07      LDA $0714                 ;
CODE_03B6A3:        D0 1C         BNE CODE_03B6C1           ;
CODE_03B6A5:        A5 28         LDA $28                   ;
CODE_03B6A7:        C9 03         CMP #$03                  ;
CODE_03B6A9:        F0 16         BEQ CODE_03B6C1           ;
CODE_03B6AB:        A9 06         LDA #$06                  ;\Mario threw a fireball sound
CODE_03B6AD:        8D 03 16      STA $1603                 ;/
CODE_03B6B0:        A9 02         LDA #$02                  ;
CODE_03B6B2:        95 33         STA $33,x                 ;
CODE_03B6B4:        AC 0C 07      LDY $070C                 ;
CODE_03B6B7:        8C 11 07      STY $0711                 ;
CODE_03B6BA:        88            DEY                       ;
CODE_03B6BB:        8C 89 07      STY $0789                 ;
CODE_03B6BE:        EE CE 06      INC $06CE                 ;
CODE_03B6C1:        A2 00         LDX #$00                  ;
CODE_03B6C3:        20 E6 B6      JSR CODE_03B6E6           ;
CODE_03B6C6:        A2 01         LDX #$01                  ;
CODE_03B6C8:        20 E6 B6      JSR CODE_03B6E6           ;
CODE_03B6CB:        A5 5C         LDA $5C                   ;
CODE_03B6CD:        D0 14         BNE CODE_03B6E3           ;
CODE_03B6CF:        A2 02         LDX #$02                  ;
CODE_03B6D1:        86 9E         STX $9E                   ;
CODE_03B6D3:        20 80 B7      JSR CODE_03B780           ;
CODE_03B6D6:        20 1A FD      JSR CODE_03FD1A           ;
CODE_03B6D9:        20 AD FD      JSR CODE_03FDAD           ;
CODE_03B6DC:        22 AA E2 05   JSL CODE_05E2AA           ;
CODE_03B6E0:        CA            DEX                       ;
CODE_03B6E1:        10 EE         BPL CODE_03B6D1           ;
CODE_03B6E3:        60            RTS                       ;

DATA_03B6E4:        db $40,$C0                ;Fireball Xspeed: Right, left

CODE_03B6E6:        86 9E         STX $9E                   ;
CODE_03B6E8:        B5 33         LDA $33,x                 ;
CODE_03B6EA:        0A            ASL A                     ;
CODE_03B6EB:        90 03         BCC CODE_03B6F0           ;
CODE_03B6ED:        4C 7A B7      JMP CODE_03B77A           ;

CODE_03B6F0:        B4 33         LDY $33,x                 ;\If fireball exists in any form,
CODE_03B6F2:        D0 03         BNE CODE_03B6F7           ; |Go to fireball throw routine
CODE_03B6F4:        4C 79 B7      JMP CODE_03B779           ;/Otherwise, return

CODE_03B6F7:        88            DEY                       ;
CODE_03B6F8:        F0 2C         BEQ CODE_03B726           ;

;This piece of code only triggers... |
;...when Mario throws a fireball.    V
CODE_03B6FA:        AD 19 02      LDA $0219                 ;\Load Mario's Xpos (Xpos in single page)
CODE_03B6FD:        69 04         ADC #$04                  ; |Add $04/$05 to it (Depends on C flag)
CODE_03B6FF:        9D 24 02      STA $0224,x               ;/Store into Fireball creation Xpos
CODE_03B702:        A5 78         LDA $78                   ;\Load Mario's Xpos (Page # player is in)
CODE_03B704:        69 00         ADC #$00                  ; |Add $00/$01 to it (Depends on C flag)
CODE_03B706:        95 83         STA $83,x                 ;/Store into page of Fireball (not sure)
CODE_03B708:        AD 37 02      LDA $0237                 ;\Load Mario's Ypos
CODE_03B70B:        9D 42 02      STA $0242,x               ;/Store into Ypos of fireball
CODE_03B70E:        A9 01         LDA #$01                  ;\Set the "Mario threw a fireball" flag
CODE_03B710:        95 C6         STA $C6,x                 ;/
CODE_03B712:        AC 02 02      LDY $0202                 ;\Mario's direction
CODE_03B715:        88            DEY                       ; |Decrease with 1
CODE_03B716:        B9 E4 B6      LDA $B6E4,y               ; |Load Horizontal speeds
CODE_03B719:        95 68         STA $68,x                 ;/Store into Fireball horizontal speed
CODE_03B71B:        A9 04         LDA #$04                  ;\Y-speed of the fireball when it gets thrown
CODE_03B71D:        95 AB         STA $AB,x                 ;/Which is of course, downwards
CODE_03B71F:        A9 07         LDA #$07                  ;
CODE_03B721:        9D 9A 04      STA $049A,x               ;
CODE_03B724:        D6 33         DEC $33,x                 ;Decrease fireball state timer
CODE_03B726:        8A            TXA                       ;
CODE_03B727:        18            CLC                       ;
CODE_03B728:        69 0B         ADC #$0B                  ;
CODE_03B72A:        AA            TAX                       ;
CODE_03B72B:        A9 50         LDA #$50                  ;
CODE_03B72D:        85 00         STA $00                   ;
CODE_03B72F:        A9 03         LDA #$03                  ;
CODE_03B731:        85 02         STA $02                   ;
CODE_03B733:        A9 00         LDA #$00                  ;
CODE_03B735:        20 8B C1      JSR CODE_03C18B           ;Impose gravity
CODE_03B738:        20 BA C0      JSR CODE_03C0BA           ;
CODE_03B73B:        A6 9E         LDX $9E                   ;
CODE_03B73D:        20 23 FD      JSR CODE_03FD23           ;
CODE_03B740:        20 A3 FD      JSR CODE_03FDA3           ;
CODE_03B743:        20 B6 E9      JSR CODE_03E9B6           ;
CODE_03B746:        20 46 E9      JSR CODE_03E946           ;
CODE_03B749:        AD D2 03      LDA $03D2                 ;
CODE_03B74C:        29 FC         AND #$FC                  ;
CODE_03B74E:        F0 1F         BEQ CODE_03B76F           ;
CODE_03B750:        29 F0         AND #$F0                  ;
CODE_03B752:        D0 21         BNE CODE_03B775           ;
CODE_03B754:        BD 68 00      LDA $0068,x               ;
CODE_03B757:        30 0B         BMI CODE_03B764           ;
CODE_03B759:        AD D2 03      LDA $03D2                 ;
CODE_03B75C:        29 0F         AND #$0F                  ;
CODE_03B75E:        C9 0F         CMP #$0F                  ;
CODE_03B760:        F0 13         BEQ CODE_03B775           ;
CODE_03B762:        80 0E         BRA CODE_03B772           ;

CODE_03B764:        AD D2 03      LDA $03D2                 ;
CODE_03B767:        29 0C         AND #$0C                  ;
CODE_03B769:        C9 0C         CMP #$0C                  ;
CODE_03B76B:        F0 08         BEQ CODE_03B775           ;
CODE_03B76D:        80 03         BRA CODE_03B772           ;

CODE_03B76F:        20 70 DC      JSR CODE_03DC70           ;
CODE_03B772:        4C 43 F4      JMP CODE_03F443           ;

CODE_03B775:        A9 00         LDA #$00                  ;
CODE_03B777:        95 33         STA $33,x                 ;
CODE_03B779:        60            RTS                       ;

CODE_03B77A:        20 23 FD      JSR CODE_03FD23           ;
CODE_03B77D:        4C A8 F4      JMP CODE_03F4A8           ;

CODE_03B780:        BD B8 07      LDA $07B8,x               ;
CODE_03B783:        29 01         AND #$01                  ;
CODE_03B785:        85 07         STA $07                   ;
CODE_03B787:        BD 51 02      LDA $0251,x               ;
CODE_03B78A:        C9 F8         CMP #$F8                  ;
CODE_03B78C:        D0 31         BNE CODE_03B7BF           ;
CODE_03B78E:        AD 9E 07      LDA $079E                 ;
CODE_03B791:        D0 46         BNE CODE_03B7D9           ;
CODE_03B793:        A0 00         LDY #$00                  ;
CODE_03B795:        AD 02 02      LDA $0202                 ;
CODE_03B798:        4A            LSR A                     ;
CODE_03B799:        90 02         BCC CODE_03B79D           ;
CODE_03B79B:        A0 08         LDY #$08                  ;
CODE_03B79D:        98            TYA                       ;
CODE_03B79E:        6D 19 02      ADC $0219                 ;
CODE_03B7A1:        9D 33 02      STA $0233,x               ;
CODE_03B7A4:        A5 78         LDA $78                   ;
CODE_03B7A6:        69 00         ADC #$00                  ;
CODE_03B7A8:        95 92         STA $92,x                 ;
CODE_03B7AA:        AD 37 02      LDA $0237                 ;
CODE_03B7AD:        18            CLC                       ;
CODE_03B7AE:        69 08         ADC #$08                  ;
CODE_03B7B0:        9D 51 02      STA $0251,x               ;
CODE_03B7B3:        A9 01         LDA #$01                  ;
CODE_03B7B5:        95 D5         STA $D5,x                 ;
CODE_03B7B7:        A4 07         LDY $07                   ;
CODE_03B7B9:        B9 DC B7      LDA $B7DC,y               ;
CODE_03B7BC:        8D 9E 07      STA $079E                 ;
CODE_03B7BF:        A4 07         LDY $07                   ;
CODE_03B7C1:        BD 36 04      LDA $0436,x               ;
CODE_03B7C4:        38            SEC                       ;
CODE_03B7C5:        F9 DA B7      SBC $B7DA,y               ;
CODE_03B7C8:        9D 36 04      STA $0436,x               ;
CODE_03B7CB:        BD 51 02      LDA $0251,x               ;
CODE_03B7CE:        E9 00         SBC #$00                  ;
CODE_03B7D0:        C9 20         CMP #$20                  ;
CODE_03B7D2:        B0 02         BCS CODE_03B7D6           ;
CODE_03B7D4:        A9 F8         LDA #$F8                  ;
CODE_03B7D6:        9D 51 02      STA $0251,x               ;
CODE_03B7D9:        60            RTS                       ;

DATA_03B7DA:        db $FF,$50
DATA_03B7DC:        db $40,$20

CODE_03B7DE:        AD 70 07      LDA $0770                 ;
CODE_03B7E1:        F0 55         BEQ CODE_03B838           ;
CODE_03B7E3:        A5 0F         LDA $0F                   ;
CODE_03B7E5:        C9 08         CMP #$08                  ;
CODE_03B7E7:        90 4F         BCC CODE_03B838           ;
CODE_03B7E9:        C9 0B         CMP #$0B                  ;
CODE_03B7EB:        F0 4B         BEQ CODE_03B838           ;
CODE_03B7ED:        A5 BB         LDA $BB                   ;
CODE_03B7EF:        C9 02         CMP #$02                  ;
CODE_03B7F1:        10 45         BPL CODE_03B838           ;
CODE_03B7F3:        AD 8F 07      LDA $078F                 ;\If timer countdown timer isn't, $00 yet, branch
CODE_03B7F6:        D0 40         BNE CODE_03B838           ;/
CODE_03B7F8:        AD E9 07      LDA $07E9                 ;\
CODE_03B7FB:        0D EA 07      ORA $07EA                 ; |Branch if timer is 000
CODE_03B7FE:        0D EB 07      ORA $07EB                 ; |
CODE_03B801:        F0 2C         BEQ CODE_03B82F           ;/
CODE_03B803:        AC E9 07      LDY $07E9                 ;\
CODE_03B806:        88            DEY                       ; |
CODE_03B807:        D0 0D         BNE CODE_03B816           ; |Check hundreds, if not $00, branch
CODE_03B809:        AD EA 07      LDA $07EA                 ;\|
CODE_03B80C:        0D EB 07      ORA $07EB                 ; |Check the tens and ones. If not $00, branch
CODE_03B80F:        D0 05         BNE CODE_03B816           ;/
CODE_03B811:        A9 FF         LDA #$FF                  ;\
CODE_03B813:        8D 00 16      STA $1600                 ;/Time is running out! sound
CODE_03B816:        A9 18         LDA #$18                  ;\
CODE_03B818:        8D 8F 07      STA $078F                 ;/Control the timer countdown speed
CODE_03B81B:        A0 23         LDY #$23                  ;
CODE_03B81D:        A9 FF         LDA #$FF                  ;
CODE_03B81F:        8D 4A 01      STA $014A                 ;
CODE_03B822:        AD 73 0E      LDA $0E73                 ;
CODE_03B825:        D0 03         BNE CODE_03B82A           ;
CODE_03B827:        20 F9 9C      JSR CODE_039CF9           ;
CODE_03B82A:        A9 A4         LDA #$A4                  ;
CODE_03B82C:        4C 82 9C      JMP CODE_039C82           ;

CODE_03B82F:        8D 56 07      STA $0756                 ;
CODE_03B832:        20 52 DF      JSR CODE_03DF52           ;
CODE_03B835:        EE 59 07      INC $0759                 ;
CODE_03B838:        60            RTS                       ;

CODE_03B839:        AD 23 07      LDA $0723                 ;
CODE_03B83C:        F0 FA         BEQ CODE_03B838           ;
CODE_03B83E:        AD 37 02      LDA $0237                 ;
CODE_03B841:        25 BB         AND $BB                   ;
CODE_03B843:        D0 F3         BNE CODE_03B838           ;
CODE_03B845:        8D 23 07      STA $0723                 ;
CODE_03B848:        EE D6 06      INC $06D6                 ;
CODE_03B84B:        4C E2 CD      JMP CODE_03CDE2           ; Erase sprite

CODE_03B84E:        A5 5C         LDA $5C                   ;
CODE_03B850:        D0 3D         BNE CODE_03B88F           ;
CODE_03B852:        8D 7D 02      STA $027D                 ;
CODE_03B855:        22 78 83 04   JSL CODE_048378           ;
CODE_03B859:        AD 47 07      LDA $0747                 ;
CODE_03B85C:        D0 31         BNE CODE_03B88F           ;
CODE_03B85E:        A0 04         LDY #$04                  ;
CODE_03B860:        B9 71 02      LDA $0271,y               ;
CODE_03B863:        18            CLC                       ;
CODE_03B864:        79 77 02      ADC $0277,y               ;
CODE_03B867:        85 02         STA $02                   ;
CODE_03B869:        B9 6B 02      LDA $026B,y               ;
CODE_03B86C:        F0 1E         BEQ CODE_03B88C           ;
CODE_03B86E:        69 00         ADC #$00                  ;
CODE_03B870:        85 01         STA $01                   ;
CODE_03B872:        AD 19 02      LDA $0219                 ;
CODE_03B875:        38            SEC                       ;
CODE_03B876:        F9 71 02      SBC $0271,y               ;
CODE_03B879:        A5 78         LDA $78                   ;
CODE_03B87B:        F9 6B 02      SBC $026B,y               ;
CODE_03B87E:        30 0C         BMI CODE_03B88C           ;
CODE_03B880:        A5 02         LDA $02                   ;
CODE_03B882:        38            SEC                       ;
CODE_03B883:        ED 19 02      SBC $0219                 ;
CODE_03B886:        A5 01         LDA $01                   ;
CODE_03B888:        E5 78         SBC $78                   ;
CODE_03B88A:        10 04         BPL CODE_03B890           ;
CODE_03B88C:        88            DEY                       ;
CODE_03B88D:        10 D1         BPL CODE_03B860           ;
CODE_03B88F:        60            RTS                       ;

CODE_03B890:        B9 77 02      LDA $0277,y               ;
CODE_03B893:        4A            LSR A                     ;
CODE_03B894:        85 00         STA $00                   ;
CODE_03B896:        B9 71 02      LDA $0271,y               ;
CODE_03B899:        18            CLC                       ;
CODE_03B89A:        65 00         ADC $00                   ;
CODE_03B89C:        85 01         STA $01                   ;
CODE_03B89E:        B9 6B 02      LDA $026B,y               ;
CODE_03B8A1:        69 00         ADC #$00                  ;
CODE_03B8A3:        85 00         STA $00                   ;
CODE_03B8A5:        A5 09         LDA $09                   ;
CODE_03B8A7:        4A            LSR A                     ;
CODE_03B8A8:        90 31         BCC CODE_03B8DB           ;
CODE_03B8AA:        A5 01         LDA $01                   ;
CODE_03B8AC:        38            SEC                       ;
CODE_03B8AD:        ED 19 02      SBC $0219                 ;
CODE_03B8B0:        A5 00         LDA $00                   ;
CODE_03B8B2:        E5 78         SBC $78                   ;
CODE_03B8B4:        10 10         BPL CODE_03B8C6           ;
CODE_03B8B6:        AD 19 02      LDA $0219                 ;
CODE_03B8B9:        38            SEC                       ;
CODE_03B8BA:        E9 01         SBC #$01                  ;
CODE_03B8BC:        8D 19 02      STA $0219                 ;
CODE_03B8BF:        A5 78         LDA $78                   ;
CODE_03B8C1:        E9 00         SBC #$00                  ;
CODE_03B8C3:        4C D9 B8      JMP CODE_03B8D9           ;

CODE_03B8C6:        AD 80 04      LDA $0480                 ;
CODE_03B8C9:        4A            LSR A                     ;
CODE_03B8CA:        90 0F         BCC CODE_03B8DB           ;
CODE_03B8CC:        AD 19 02      LDA $0219                 ;
CODE_03B8CF:        18            CLC                       ;
CODE_03B8D0:        69 01         ADC #$01                  ;
CODE_03B8D2:        8D 19 02      STA $0219                 ;
CODE_03B8D5:        A5 78         LDA $78                   ;
CODE_03B8D7:        69 00         ADC #$00                  ;
CODE_03B8D9:        85 78         STA $78                   ;
CODE_03B8DB:        A9 10         LDA #$10                  ;
CODE_03B8DD:        85 00         STA $00                   ;
CODE_03B8DF:        A9 01         LDA #$01                  ;
CODE_03B8E1:        8D 7D 02      STA $027D                 ;
CODE_03B8E4:        85 02         STA $02                   ;
CODE_03B8E6:        4A            LSR A                     ;
CODE_03B8E7:        AA            TAX                       ;
CODE_03B8E8:        4C 8B C1      JMP CODE_03C18B           ;Impose gravity

DATA_03B8EB:        db $05,$02,$08,$04,$01

DATA_03B8F0:        db $03,$03,$04,$04,$04

CODE_03B8F5:        A2 05         LDX #$05                  ;
CODE_03B8F7:        86 9E         STX $9E                   ;
CODE_03B8F9:        B5 1C         LDA $1C,x                 ;
CODE_03B8FB:        C9 30         CMP #$30                  ;
CODE_03B8FD:        F0 03         BEQ CODE_03B902           ;
CODE_03B8FF:        4C 8C B9      JMP CODE_03B98C           ;

CODE_03B902:        A5 0F         LDA $0F                   ;
CODE_03B904:        C9 04         CMP #$04                  ;
CODE_03B906:        D0 35         BNE CODE_03B93D           ;
CODE_03B908:        A5 28         LDA $28                   ;
CODE_03B90A:        C9 03         CMP #$03                  ;
CODE_03B90C:        D0 2F         BNE CODE_03B93D           ;
CODE_03B90E:        BD 38 02      LDA $0238,x               ;
CODE_03B911:        C9 AA         CMP #$AA                  ;
CODE_03B913:        B0 2A         BCS CODE_03B93F           ;
CODE_03B915:        AD 37 02      LDA $0237                 ;
CODE_03B918:        C9 A2         CMP #$A2                  ;
CODE_03B91A:        B0 23         BCS CODE_03B93F           ;
CODE_03B91C:        BD 1D 04      LDA $041D,x               ;
CODE_03B91F:        69 FF         ADC #$FF                  ;
CODE_03B921:        9D 1D 04      STA $041D,x               ;
CODE_03B924:        BD 38 02      LDA $0238,x               ;
CODE_03B927:        69 01         ADC #$01                  ;
CODE_03B929:        9D 38 02      STA $0238,x               ;
CODE_03B92C:        AD 0E 01      LDA $010E                 ;
CODE_03B92F:        38            SEC                       ;
CODE_03B930:        E9 FF         SBC #$FF                  ;
CODE_03B932:        8D 0E 01      STA $010E                 ;
CODE_03B935:        AD 0D 01      LDA $010D                 ;
CODE_03B938:        E9 01         SBC #$01                  ;
CODE_03B93A:        8D 0D 01      STA $010D                 ;
CODE_03B93D:        80 43         BRA CODE_03B982           ;

CODE_03B93F:        AC 0F 01      LDY $010F                 ;
CODE_03B942:        B9 EB B8      LDA $B8EB,y               ;
CODE_03B945:        BE F0 B8      LDX $B8F0,y               ;
CODE_03B948:        9D 45 01      STA $0145,x               ;
CODE_03B94B:        20 55 BD      JSR CODE_03BD55           ;
CODE_03B94E:        A9 05         LDA #$05                  ;
CODE_03B950:        85 0F         STA $0F                   ;
CODE_03B952:        A9 0C         LDA #$0C                  ;\Goal music
CODE_03B954:        8D 02 16      STA $1602                 ;/
CODE_03B957:        AD 02 02      LDA $0202                 ;
CODE_03B95A:        29 02         AND #$02                  ;
CODE_03B95C:        D0 04         BNE CODE_03B962           ;
CODE_03B95E:        A9 6E         LDA #$6E                  ;
CODE_03B960:        80 02         BRA CODE_03B964           ;

CODE_03B962:        A9 60         LDA #$60                  ;
CODE_03B964:        8D FD 02      STA $02FD                 ;
CODE_03B967:        AD 19 02      LDA $0219                 ;
CODE_03B96A:        8D CC 03      STA $03CC                 ;
CODE_03B96D:        A5 78         LDA $78                   ;
CODE_03B96F:        8D CD 03      STA $03CD                 ;
CODE_03B972:        A9 20         LDA #$20                  ;
CODE_03B974:        8D FB 03      STA $03FB                 ;
CODE_03B977:        8D FA 03      STA $03FA                 ;
CODE_03B97A:        A9 20         LDA #$20                  ;
CODE_03B97C:        8D FB 03      STA $03FB                 ;
CODE_03B97F:        8D FA 03      STA $03FA                 ;
CODE_03B982:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03B985:        20 39 FD      JSR CODE_03FD39           ;
CODE_03B988:        22 A0 EA 05   JSL CODE_05EAA0           ;
CODE_03B98C:        60            RTS                       ;

DATA_03B98D:        db $08,$10,$08,$00

CODE_03B991:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03B994:        AD 47 07      LDA $0747                 ;
CODE_03B997:        D0 48         BNE CODE_03B9E1           ;
CODE_03B999:        AD 0E 07      LDA $070E                 ;
CODE_03B99C:        F0 43         BEQ CODE_03B9E1           ;
CODE_03B99E:        A8            TAY                       ;
CODE_03B99F:        88            DEY                       ;
CODE_03B9A0:        98            TYA                       ;
CODE_03B9A1:        29 02         AND #$02                  ;
CODE_03B9A3:        D0 09         BNE CODE_03B9AE           ;
CODE_03B9A5:        EE 37 02      INC $0237                 ;
CODE_03B9A8:        EE 37 02      INC $0237                 ;
CODE_03B9AB:        4C B4 B9      JMP CODE_03B9B4           ;

CODE_03B9AE:        CE 37 02      DEC $0237                 ;
CODE_03B9B1:        CE 37 02      DEC $0237                 ;
CODE_03B9B4:        B5 5E         LDA $5E,x                 ;
CODE_03B9B6:        18            CLC                       ;
CODE_03B9B7:        79 8D B9      ADC $B98D,y               ;
CODE_03B9BA:        9D 38 02      STA $0238,x               ;
CODE_03B9BD:        C0 01         CPY #$01                  ;
CODE_03B9BF:        90 0F         BCC CODE_03B9D0           ;
CODE_03B9C1:        A5 0A         LDA $0A                   ;
CODE_03B9C3:        29 80         AND #$80                  ;
CODE_03B9C5:        F0 09         BEQ CODE_03B9D0           ;
CODE_03B9C7:        25 0D         AND $0D                   ;
CODE_03B9C9:        D0 05         BNE CODE_03B9D0           ;
CODE_03B9CB:        A9 F4         LDA #$F4                  ;
CODE_03B9CD:        8D DB 06      STA $06DB                 ;Springboard launch force
CODE_03B9D0:        C0 03         CPY #$03                  ;
CODE_03B9D2:        D0 0D         BNE CODE_03B9E1           ;
CODE_03B9D4:        AD DB 06      LDA $06DB                 ;\
CODE_03B9D7:        85 A0         STA $A0                   ;/Store springboard launch force into player Y speed
CODE_03B9D9:        9C 0E 07      STZ $070E                 ;
CODE_03B9DC:        A9 08         LDA #$08                  ;\Springboard sound
CODE_03B9DE:        8D 03 16      STA $1603                 ;/
CODE_03B9E1:        20 39 FD      JSR CODE_03FD39           ;
CODE_03B9E4:        20 EF EE      JSR CODE_03EEEF           ;
CODE_03B9E7:        20 03 DC      JSR CODE_03DC03           ;
CODE_03B9EA:        AD 0E 07      LDA $070E                 ;
CODE_03B9ED:        F0 0D         BEQ CODE_03B9FC           ;
CODE_03B9EF:        AD 8E 07      LDA $078E                 ;
CODE_03B9F2:        D0 08         BNE CODE_03B9FC           ;
CODE_03B9F4:        A9 04         LDA #$04                  ;
CODE_03B9F6:        8D 8E 07      STA $078E                 ;
CODE_03B9F9:        EE 0E 07      INC $070E                 ;
CODE_03B9FC:        60            RTS                       ;

CODE_03B9FD:        A9 2F         LDA #$2F                  ;\
CODE_03B9FF:        95 1C         STA $1C,x                 ;/Sprite to generate: Vine
CODE_03BA01:        A9 01         LDA #$01                  ;\
CODE_03BA03:        95 10         STA $10,x                 ;/Sprite on screen
CODE_03BA05:        B9 85 00      LDA $0085,y               ;\Spawn in current screen of course
CODE_03BA08:        95 79         STA $79,x                 ;/
CODE_03BA0A:        B9 26 02      LDA $0226,y               ;\Spawn at the brick
CODE_03BA0D:        9D 1A 02      STA $021A,x               ;/Store into Sprite X-Position
CODE_03BA10:        B9 44 02      LDA $0244,y               ;\
CODE_03BA13:        D0 02         BNE CODE_03BA17           ; |If brick position is at the very top
CODE_03BA15:        A9 F0         LDA #$F0                  ; |Spawn vine from the very bottom
CODE_03BA17:        9D 38 02      STA $0238,x               ;/ (Used in level entrances with the vine animation?)
CODE_03BA1A:        AC 98 03      LDY $0398                 ;
CODE_03BA1D:        D0 03         BNE CODE_03BA22           ;
CODE_03BA1F:        8D 9D 03      STA $039D                 ;
CODE_03BA22:        8A            TXA                       ;
CODE_03BA23:        99 9A 03      STA $039A,y               ;
CODE_03BA26:        EE 98 03      INC $0398                 ;
CODE_03BA29:        A9 03         LDA #$03                  ;\
CODE_03BA2B:        8D 03 16      STA $1603                 ;/Play vine sound
CODE_03BA2E:        60            RTS                       ;Return

DATA_03BA2F:        db $60,$90

CODE_03BA31:        E0 09         CPX #$09                  ;
CODE_03BA33:        F0 01         BEQ CODE_03BA36           ;
CODE_03BA35:        60            RTS                       ;

CODE_03BA36:        AD 36 02      LDA $0236                 ;
CODE_03BA39:        D0 05         BNE CODE_03BA40           ;
CODE_03BA3B:        AD 30 BA      LDA $BA30                 ;
CODE_03BA3E:        80 03         BRA CODE_03BA43           ;

CODE_03BA40:        AD 2F BA      LDA $BA2F                 ;
CODE_03BA43:        CD 99 03      CMP $0399                 ;
CODE_03BA46:        F0 10         BEQ CODE_03BA58           ;
CODE_03BA48:        A5 09         LDA $09                   ;
CODE_03BA4A:        4A            LSR A                     ;
CODE_03BA4B:        90 0B         BCC CODE_03BA58           ;
CODE_03BA4D:        AD 41 02      LDA $0241                 ;
CODE_03BA50:        E9 01         SBC #$01                  ;
CODE_03BA52:        8D 41 02      STA $0241                 ;
CODE_03BA55:        EE 99 03      INC $0399                 ;
CODE_03BA58:        AD 99 03      LDA $0399                 ;
CODE_03BA5B:        C9 08         CMP #$08                  ;
CODE_03BA5D:        90 3E         BCC CODE_03BA9D           ;
CODE_03BA5F:        20 39 FD      JSR CODE_03FD39           ;
CODE_03BA62:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03BA65:        A0 00         LDY #$00                  ;
CODE_03BA67:        22 72 DA 05   JSL CODE_05DA72           ;
CODE_03BA6B:        AD D1 03      LDA $03D1                 ;
CODE_03BA6E:        29 0F         AND #$0F                  ;
CODE_03BA70:        C9 0F         CMP #$0F                  ;
CODE_03BA72:        D0 0B         BNE CODE_03BA7F           ;
CODE_03BA74:        A2 09         LDX #$09                  ;
CODE_03BA76:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03BA79:        8D 98 03      STA $0398                 ;
CODE_03BA7C:        8D 99 03      STA $0399                 ;
CODE_03BA7F:        AD 99 03      LDA $0399                 ;
CODE_03BA82:        C9 20         CMP #$20                  ;
CODE_03BA84:        90 17         BCC CODE_03BA9D           ;
CODE_03BA86:        A2 0A         LDX #$0A                  ;
CODE_03BA88:        A9 01         LDA #$01                  ;
CODE_03BA8A:        A0 1B         LDY #$1B                  ;
CODE_03BA8C:        20 83 EB      JSR CODE_03EB83           ;
CODE_03BA8F:        A4 02         LDY $02                   ;
CODE_03BA91:        C0 D0         CPY #$D0                  ;
CODE_03BA93:        B0 08         BCS CODE_03BA9D           ;
CODE_03BA95:        B1 06         LDA ($06),y               ;
CODE_03BA97:        D0 04         BNE CODE_03BA9D           ;
CODE_03BA99:        A9 2A         LDA #$2A                  ;
CODE_03BA9B:        91 06         STA ($06),y               ;
CODE_03BA9D:        A6 9E         LDX $9E                   ;
CODE_03BA9F:        60            RTS                       ;

DATA_03BAA0:        db $0F,$07

CODE_03BAA2:        A5 5C         LDA $5C                   ;
CODE_03BAA4:        F0 6F         BEQ CODE_03BB15           ;
CODE_03BAA6:        A2 02         LDX #$02                  ;
CODE_03BAA8:        86 9E         STX $9E                   ;
CODE_03BAAA:        B5 10         LDA $10,x                 ;
CODE_03BAAC:        D0 51         BNE CODE_03BAFF           ;
CODE_03BAAE:        BD B8 07      LDA $07B8,x               ;
CODE_03BAB1:        AC CC 06      LDY $06CC                 ;
CODE_03BAB4:        39 A0 BA      AND $BAA0,y               ;
CODE_03BAB7:        C9 06         CMP #$06                  ;
CODE_03BAB9:        B0 44         BCS CODE_03BAFF           ;
CODE_03BABB:        A8            TAY                       ;
CODE_03BABC:        B9 6B 02      LDA $026B,y               ;
CODE_03BABF:        F0 3E         BEQ CODE_03BAFF           ;
CODE_03BAC1:        B9 7D 02      LDA $027D,y               ;
CODE_03BAC4:        F0 07         BEQ CODE_03BACD           ;
CODE_03BAC6:        E9 00         SBC #$00                  ;
CODE_03BAC8:        99 7D 02      STA $027D,y               ;
CODE_03BACB:        80 32         BRA CODE_03BAFF           ;

CODE_03BACD:        AD 47 07      LDA $0747                 ;
CODE_03BAD0:        D0 2D         BNE CODE_03BAFF           ;
CODE_03BAD2:        A9 0E         LDA #$0E                  ;
CODE_03BAD4:        99 7D 02      STA $027D,y               ;
CODE_03BAD7:        B9 6B 02      LDA $026B,y               ;
CODE_03BADA:        95 79         STA $79,x                 ;
CODE_03BADC:        B9 71 02      LDA $0271,y               ;
CODE_03BADF:        9D 1A 02      STA $021A,x               ;
CODE_03BAE2:        B9 77 02      LDA $0277,y               ;
CODE_03BAE5:        38            SEC                       ;
CODE_03BAE6:        E9 08         SBC #$08                  ;
CODE_03BAE8:        9D 38 02      STA $0238,x               ;
CODE_03BAEB:        A9 01         LDA #$01                  ;
CODE_03BAED:        95 BC         STA $BC,x                 ;
CODE_03BAEF:        95 10         STA $10,x                 ;
CODE_03BAF1:        4A            LSR A                     ;
CODE_03BAF2:        95 29         STA $29,x                 ;
CODE_03BAF4:        A9 09         LDA #$09                  ;
CODE_03BAF6:        9D 90 04      STA $0490,x               ;
CODE_03BAF9:        A9 33         LDA #$33                  ;\
CODE_03BAFB:        95 1C         STA $1C,x                 ;/Sprite to generate: Bullet bill
CODE_03BAFD:        80 13         BRA CODE_03BB12           ;

CODE_03BAFF:        B5 1C         LDA $1C,x                 ;
CODE_03BB01:        C9 33         CMP #$33                  ;
CODE_03BB03:        D0 0D         BNE CODE_03BB12           ;
CODE_03BB05:        20 03 DC      JSR CODE_03DC03           ;
CODE_03BB08:        B5 10         LDA $10,x                 ;
CODE_03BB0A:        F0 06         BEQ CODE_03BB12           ;
CODE_03BB0C:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03BB0F:        20 18 BB      JSR CODE_03BB18           ;
CODE_03BB12:        CA            DEX                       ;
CODE_03BB13:        10 93         BPL CODE_03BAA8           ;
CODE_03BB15:        60            RTS                       ;

DATA_03BB16:        db $18,$E8

CODE_03BB18:        AD 47 07      LDA $0747                 ;
CODE_03BB1B:        D0 53         BNE CODE_03BB70           ;
CODE_03BB1D:        B5 29         LDA $29,x                 ;
CODE_03BB1F:        D0 32         BNE CODE_03BB53           ;
CODE_03BB21:        AD D1 03      LDA $03D1                 ;
CODE_03BB24:        29 0C         AND #$0C                  ;
CODE_03BB26:        C9 0C         CMP #$0C                  ;
CODE_03BB28:        F0 55         BEQ CODE_03BB7F           ;
CODE_03BB2A:        A0 01         LDY #$01                  ;
CODE_03BB2C:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03BB2F:        30 01         BMI CODE_03BB32           ;
CODE_03BB31:        C8            INY                       ;
CODE_03BB32:        94 47         STY $47,x                 ;
CODE_03BB34:        88            DEY                       ;
CODE_03BB35:        B9 16 BB      LDA $BB16,y               ;
CODE_03BB38:        95 5E         STA $5E,x                 ;
CODE_03BB3A:        A5 00         LDA $00                   ;
CODE_03BB3C:        69 28         ADC #$28                  ;
CODE_03BB3E:        C9 50         CMP #$50                  ;
CODE_03BB40:        90 3D         BCC CODE_03BB7F           ;
CODE_03BB42:        A9 01         LDA #$01                  ;
CODE_03BB44:        95 29         STA $29,x                 ;
CODE_03BB46:        A9 0A         LDA #$0A                  ;
CODE_03BB48:        9D 92 07      STA $0792,x               ;
CODE_03BB4B:        A9 4A         LDA #$4A                  ;\Bullet bill sound
CODE_03BB4D:        8D 03 16      STA $1603                 ;/
CODE_03BB50:        20 7B C2      JSR CODE_03C27B           ;
CODE_03BB53:        AD D1 03      LDA $03D1                 ;
CODE_03BB56:        29 F0         AND #$F0                  ;
CODE_03BB58:        C9 F0         CMP #$F0                  ;
CODE_03BB5A:        F0 23         BEQ CODE_03BB7F           ;
CODE_03BB5C:        B5 29         LDA $29,x                 ;
CODE_03BB5E:        29 20         AND #$20                  ;
CODE_03BB60:        F0 03         BEQ CODE_03BB65           ;
CODE_03BB62:        20 13 C1      JSR CODE_03C113           ;
CODE_03BB65:        AD 67 0E      LDA $0E67                 ;
CODE_03BB68:        D0 06         BNE CODE_03BB70           ;
CODE_03BB6A:        20 AD C0      JSR CODE_03C0AD           ;
CODE_03BB6D:        20 FA C1      JSR CODE_03C1FA           ;
CODE_03BB70:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03BB73:        20 39 FD      JSR CODE_03FD39           ;
CODE_03BB76:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03BB79:        20 55 DE      JSR CODE_03DE55           ;
CODE_03BB7C:        4C EF EE      JMP CODE_03EEEF           ;

CODE_03BB7F:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03BB82:        60            RTS                       ;

DATA_03BB83:        db $04,$04,$04,$05,$05,$05,$06,$06
                    db $06

DATA_03BB8C:        db $10,$F0

CODE_03BB8E:        AD B8 07      LDA $07B8                 ;
CODE_03BB91:        29 07         AND #$07                  ;
CODE_03BB93:        D0 05         BNE CODE_03BB9A           ;
CODE_03BB95:        AD B8 07      LDA $07B8                 ;
CODE_03BB98:        29 08         AND #$08                  ;
CODE_03BB9A:        A8            TAY                       ;
CODE_03BB9B:        B9 39 00      LDA $0039,y               ;
CODE_03BB9E:        D0 19         BNE CODE_03BBB9           ;
CODE_03BBA0:        BE 83 BB      LDX $BB83,y               ;
CODE_03BBA3:        B5 10         LDA $10,x                 ;
CODE_03BBA5:        D0 12         BNE CODE_03BBB9           ;
CODE_03BBA7:        A6 9E         LDX $9E                   ;
CODE_03BBA9:        8A            TXA                       ;
CODE_03BBAA:        99 AE 06      STA $06AE,y               ;
CODE_03BBAD:        A9 90         LDA #$90                  ;
CODE_03BBAF:        99 39 00      STA $0039,y               ;
CODE_03BBB2:        A9 07         LDA #$07                  ;\
CODE_03BBB4:        99 9C 04      STA $049C,y               ;/Set extended sprite clipping size?
CODE_03BBB7:        38            SEC                       ;
CODE_03BBB8:        60            RTS                       ;

CODE_03BBB9:        A6 9E         LDX $9E                   ;\
CODE_03BBBB:        18            CLC                       ; |Get sprite index and clear carry flag
CODE_03BBBC:        60            RTS                       ;/

CODE_03BBBD:        AD 47 07      LDA $0747                 ;
CODE_03BBC0:        F0 03         BEQ CODE_03BBC5           ;
CODE_03BBC2:        4C 4B BC      JMP CODE_03BC4B           ;

CODE_03BBC5:        B5 39         LDA $39,x                 ;
CODE_03BBC7:        29 7F         AND #$7F                  ;
CODE_03BBC9:        BC AE 06      LDY $06AE,x               ;
CODE_03BBCC:        C9 02         CMP #$02                  ;
CODE_03BBCE:        F0 20         BEQ CODE_03BBF0           ;
CODE_03BBD0:        B0 34         BCS CODE_03BC06           ;
CODE_03BBD2:        8A            TXA                       ;
CODE_03BBD3:        18            CLC                       ;
CODE_03BBD4:        69 11         ADC #$11                  ;
CODE_03BBD6:        AA            TAX                       ;
CODE_03BBD7:        A9 10         LDA #$10                  ;
CODE_03BBD9:        85 00         STA $00                   ;
CODE_03BBDB:        A9 0F         LDA #$0F                  ;
CODE_03BBDD:        85 01         STA $01                   ;
CODE_03BBDF:        A9 04         LDA #$04                  ;
CODE_03BBE1:        85 02         STA $02                   ;
CODE_03BBE3:        A9 00         LDA #$00                  ;
CODE_03BBE5:        20 8B C1      JSR CODE_03C18B           ;Impose gravity
CODE_03BBE8:        20 BA C0      JSR CODE_03C0BA           ;
CODE_03BBEB:        A6 9E         LDX $9E                   ;
CODE_03BBED:        4C 48 BC      JMP CODE_03BC48           ;

CODE_03BBF0:        A9 FE         LDA #$FE                  ;Hammer bros hammer y-speed
CODE_03BBF2:        95 B1         STA $B1,x                 ;
CODE_03BBF4:        B9 29 00      LDA $0029,y               ;
CODE_03BBF7:        29 F7         AND #$F7                  ;
CODE_03BBF9:        99 29 00      STA $0029,y               ;
CODE_03BBFC:        B6 47         LDX $47,y                 ;\
CODE_03BBFE:        CA            DEX                       ; |
CODE_03BBFF:        BD 8C BB      LDA $BB8C,x               ; | Hammer bros hammer x-speed depending on direction
CODE_03BC02:        A6 9E         LDX $9E                   ; |
CODE_03BC04:        95 6E         STA $6E,x                 ;/
CODE_03BC06:        D6 39         DEC $39,x                 ;
CODE_03BC08:        B5 39         LDA $39,x                 ;
CODE_03BC0A:        C9 81         CMP #$81                  ;
CODE_03BC0C:        D0 05         BNE CODE_03BC13           ;
CODE_03BC0E:        A9 37         LDA #$37                  ;\Hammer thrown sound
CODE_03BC10:        8D 00 16      STA $1600                 ;/
CODE_03BC13:        B9 1C 00      LDA $001C,y               ;
CODE_03BC16:        C9 2D         CMP #$2D                  ;
CODE_03BC18:        D0 04         BNE CODE_03BC1E           ;
CODE_03BC1A:        A9 08         LDA #$08                  ;
CODE_03BC1C:        80 0D         BRA CODE_03BC2B           ;

CODE_03BC1E:        B9 47 00      LDA $0047,y               ;
CODE_03BC21:        C9 02         CMP #$02                  ;
CODE_03BC23:        D0 04         BNE CODE_03BC29           ;
CODE_03BC25:        A9 06         LDA #$06                  ;
CODE_03BC27:        80 02         BRA CODE_03BC2B           ;

CODE_03BC29:        A9 02         LDA #$02                  ;
CODE_03BC2B:        18            CLC                       ;
CODE_03BC2C:        79 1A 02      ADC $021A,y               ;
CODE_03BC2F:        9D 2A 02      STA $022A,x               ;
CODE_03BC32:        B9 79 00      LDA $0079,y               ;
CODE_03BC35:        69 00         ADC #$00                  ;
CODE_03BC37:        95 89         STA $89,x                 ;
CODE_03BC39:        B9 38 02      LDA $0238,y               ;
CODE_03BC3C:        38            SEC                       ;
CODE_03BC3D:        E9 0A         SBC #$0A                  ;
CODE_03BC3F:        9D 48 02      STA $0248,x               ;
CODE_03BC42:        A9 01         LDA #$01                  ;
CODE_03BC44:        95 CC         STA $CC,x                 ;
CODE_03BC46:        D0 03         BNE CODE_03BC4B           ;
CODE_03BC48:        20 BE DD      JSR CODE_03DDBE           ;
CODE_03BC4B:        20 B7 FD      JSR CODE_03FDB7           ;
CODE_03BC4E:        20 30 FD      JSR CODE_03FD30           ;
CODE_03BC51:        20 BF E9      JSR CODE_03E9BF           ;
CODE_03BC54:        22 07 DD 05   JSL CODE_05DD07           ;
CODE_03BC58:        60            RTS                       ;

CODE_03BC59:        20 A7 BC      JSR CODE_03BCA7           ;
CODE_03BC5C:        B5 85         LDA $85,x                 ;
CODE_03BC5E:        99 89 00      STA $0089,y               ;
CODE_03BC61:        BD 26 02      LDA $0226,x               ;
CODE_03BC64:        09 05         ORA #$05                  ;
CODE_03BC66:        99 2A 02      STA $022A,y               ;
CODE_03BC69:        BD 44 02      LDA $0244,x               ;
CODE_03BC6C:        E9 10         SBC #$10                  ;
CODE_03BC6E:        99 48 02      STA $0248,y               ;
CODE_03BC71:        80 1B         BRA CODE_03BC8E           ;

CODE_03BC73:        20 A7 BC      JSR CODE_03BCA7           ;
CODE_03BC76:        BD EC 03      LDA $03EC,x               ;
CODE_03BC79:        99 89 00      STA $0089,y               ;
CODE_03BC7C:        A5 06         LDA $06                   ;
CODE_03BC7E:        0A            ASL A                     ;
CODE_03BC7F:        0A            ASL A                     ;
CODE_03BC80:        0A            ASL A                     ;
CODE_03BC81:        0A            ASL A                     ;
CODE_03BC82:        09 05         ORA #$05                  ;
CODE_03BC84:        99 2A 02      STA $022A,y               ;
CODE_03BC87:        A5 02         LDA $02                   ;
CODE_03BC89:        69 20         ADC #$20                  ;
CODE_03BC8B:        99 48 02      STA $0248,y               ;
CODE_03BC8E:        A9 FB         LDA #$FB                  ;
CODE_03BC90:        99 B1 00      STA $00B1,y               ;
CODE_03BC93:        A9 01         LDA #$01                  ;
CODE_03BC95:        99 CC 00      STA $00CC,y               ;
CODE_03BC98:        99 39 00      STA $0039,y               ;
CODE_03BC9B:        8D 03 16      STA $1603                 ;
CODE_03BC9E:        86 9E         STX $9E                   ;
CODE_03BCA0:        20 2C BD      JSR CODE_03BD2C           ;
CODE_03BCA3:        EE 48 07      INC $0748                 ;
CODE_03BCA6:        60            RTS                       ;

CODE_03BCA7:        A0 08         LDY #$08                  ;
CODE_03BCA9:        B9 39 00      LDA $0039,y               ;
CODE_03BCAC:        F0 07         BEQ CODE_03BCB5           ;
CODE_03BCAE:        88            DEY                       ;
CODE_03BCAF:        C0 05         CPY #$05                  ;
CODE_03BCB1:        D0 F6         BNE CODE_03BCA9           ;
CODE_03BCB3:        A0 08         LDY #$08                  ;
CODE_03BCB5:        8C B7 06      STY $06B7                 ;
CODE_03BCB8:        60            RTS                       ;

;extended sprites MAIN core
CODE_03BCB9:        A2 08         LDX #$08                  ;\
CODE_03BCBB:        86 9E         STX $9E                   ; |Iterate through 9 slots of extended sprites
CODE_03BCBD:        B5 39         LDA $39,x                 ; |
CODE_03BCBF:        F0 61         BEQ CODE_03BD22           ;/ Continue iterating if empty slot.
CODE_03BCC1:        0A            ASL A                     ;\ If bit 7 set, it's a jumping coin (from [?] blocks)
CODE_03BCC2:        90 06         BCC CODE_03BCCA           ;/
CODE_03BCC4:        20 BD BB      JSR CODE_03BBBD           ;Otherwise, it's a hammer
CODE_03BCC7:        4C 22 BD      JMP CODE_03BD22           ;Continue iterating

;proc jumping coin
CODE_03BCCA:        B4 39         LDY $39,x                 ;\
CODE_03BCCC:        88            DEY                       ; | Check sprite state. if #$01, run jumping coin.
CODE_03BCCD:        F0 1F         BEQ CODE_03BCEE           ;/
CODE_03BCCF:        F6 39         INC $39,x                 ;
CODE_03BCD1:        BD 2A 02      LDA $022A,x               ;\
CODE_03BCD4:        18            CLC                       ; |
CODE_03BCD5:        6D 75 07      ADC $0775                 ; | Add camera scrolling X-Speed to the sprite X position and store it there.
CODE_03BCD8:        9D 2A 02      STA $022A,x               ; |
CODE_03BCDB:        B5 89         LDA $89,x                 ; |
CODE_03BCDD:        69 00         ADC #$00                  ; |
CODE_03BCDF:        95 89         STA $89,x                 ;/
CODE_03BCE1:        B5 39         LDA $39,x                 ;\
CODE_03BCE3:        C9 30         CMP #$30                  ; |
CODE_03BCE5:        D0 26         BNE CODE_03BD0D           ; | Check if floating score reached peak. If so, clear this jumping coin.
CODE_03BCE7:        A9 00         LDA #$00                  ; |
CODE_03BCE9:        95 39         STA $39,x                 ;/
CODE_03BCEB:        4C 22 BD      JMP CODE_03BD22           ;Continue iterating through extended sprites.

CODE_03BCEE:        8A            TXA                       ;\
CODE_03BCEF:        18            CLC                       ; |Increase index for next subroutine
CODE_03BCF0:        69 11         ADC #$11                  ; |
CODE_03BCF2:        AA            TAX                       ;/
CODE_03BCF3:        A9 50         LDA #$50                  ;\set downward movement amount
CODE_03BCF5:        85 00         STA $00                   ;/
CODE_03BCF7:        A9 06         LDA #$06                  ;\set maximum vertical speed
CODE_03BCF9:        85 02         STA $02                   ;/
CODE_03BCFB:        4A            LSR A                     ;
CODE_03BCFC:        85 01         STA $01                   ;
CODE_03BCFE:        A9 00         LDA #$00                  ;
CODE_03BD00:        20 8B C1      JSR CODE_03C18B           ;Impose gravity
CODE_03BD03:        A6 9E         LDX $9E                   ;
CODE_03BD05:        B5 B1         LDA $B1,x                 ;
CODE_03BD07:        C9 05         CMP #$05                  ;
CODE_03BD09:        D0 02         BNE CODE_03BD0D           ;
CODE_03BD0B:        F6 39         INC $39,x                 ;
CODE_03BD0D:        B5 B1         LDA $B1,x                 ;
CODE_03BD0F:        D0 04         BNE CODE_03BD15           ;
CODE_03BD11:        22 7E DC 05   JSL CODE_05DC7E           ;
CODE_03BD15:        20 30 FD      JSR CODE_03FD30           ;
CODE_03BD18:        20 B7 FD      JSR CODE_03FDB7           ;
CODE_03BD1B:        20 BF E9      JSR CODE_03E9BF           ;
CODE_03BD1E:        22 A0 DC 05   JSL CODE_05DCA0           ;
CODE_03BD22:        CA            DEX                       ;
CODE_03BD23:        10 96         BPL CODE_03BCBB           ;
CODE_03BD25:        60            RTS                       ;

DATA_03BD26:        db $17,$1D

DATA_03BD28:        db $0B,$11

DATA_03BD2A:        db $02,$13

CODE_03BD2C:        A9 01         LDA #$01                  ;
CODE_03BD2E:        8D 4A 01      STA $014A                 ;
CODE_03BD31:        AE 53 07      LDX $0753                 ;
CODE_03BD34:        BC 26 BD      LDY $BD26,x               ;
CODE_03BD37:        20 F9 9C      JSR CODE_039CF9           ;
CODE_03BD3A:        EE 5E 07      INC $075E                 ;
CODE_03BD3D:        AD 5E 07      LDA $075E                 ;
CODE_03BD40:        C9 64         CMP #$64                  ;
CODE_03BD42:        D0 0C         BNE CODE_03BD50           ;
CODE_03BD44:        9C 5E 07      STZ $075E                 ;
CODE_03BD47:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_03BD4B:        A9 05         LDA #$05                  ;\
CODE_03BD4D:        8D 03 16      STA $1603                 ;/1-up sound
CODE_03BD50:        A9 02         LDA #$02                  ;
CODE_03BD52:        8D 49 01      STA $0149                 ;
CODE_03BD55:        AE 53 07      LDX $0753                 ;
CODE_03BD58:        BC 28 BD      LDY $BD28,x               ;
CODE_03BD5B:        20 F9 9C      JSR CODE_039CF9           ;
CODE_03BD5E:        AC C3 0E      LDY $0EC3                 ;
CODE_03BD61:        B9 2A BD      LDA $BD2A,y               ;
CODE_03BD64:        20 82 9C      JSR CODE_039C82           ;
CODE_03BD67:        AC 00 17      LDY $1700                 ;
CODE_03BD6A:        B9 F6 16      LDA $16F6,y               ;
CODE_03BD6D:        D0 0E         BNE CODE_03BD7D           ;
CODE_03BD6F:        A9 28         LDA #$28                  ;
CODE_03BD71:        BE F2 16      LDX $16F2,y               ;
CODE_03BD74:        E0 02         CPX #$02                  ;
CODE_03BD76:        D0 02         BNE CODE_03BD7A           ;
CODE_03BD78:        A9 24         LDA #$24                  ;
CODE_03BD7A:        99 F6 16      STA $16F6,y               ;
CODE_03BD7D:        A6 9E         LDX $9E                   ;
CODE_03BD7F:        60            RTS                       ;

CODE_03BD80:        A9 2E         LDA #$2E                  ;
CODE_03BD82:        85 25         STA $25                   ;
CODE_03BD84:        B5 85         LDA $85,x                 ;
CODE_03BD86:        85 82         STA $82                   ;
CODE_03BD88:        BD 26 02      LDA $0226,x               ;
CODE_03BD8B:        8D 23 02      STA $0223                 ;
CODE_03BD8E:        A9 01         LDA #$01                  ;
CODE_03BD90:        85 C5         STA $C5                   ;
CODE_03BD92:        BD 44 02      LDA $0244,x               ;
CODE_03BD95:        38            SEC                       ;
CODE_03BD96:        E9 08         SBC #$08                  ;
CODE_03BD98:        8D 41 02      STA $0241                 ;
CODE_03BD9B:        A9 01         LDA #$01                  ;
CODE_03BD9D:        85 32         STA $32                   ;
CODE_03BD9F:        85 19         STA $19                   ;
CODE_03BDA1:        A9 03         LDA #$03                  ;
CODE_03BDA3:        8D 99 04      STA $0499                 ;
CODE_03BDA6:        AD 0C 02      LDA $020C                 ;
CODE_03BDA9:        C9 02         CMP #$02                  ;
CODE_03BDAB:        B0 0B         BCS CODE_03BDB8           ;
CODE_03BDAD:        AD 56 07      LDA $0756                 ;
CODE_03BDB0:        C9 02         CMP #$02                  ;
CODE_03BDB2:        90 01         BCC CODE_03BDB5           ;
CODE_03BDB4:        4A            LSR A                     ;
CODE_03BDB5:        8D 0C 02      STA $020C                 ;
CODE_03BDB8:        A9 30         LDA #$30                  ;
CODE_03BDBA:        8D 60 02      STA $0260                 ;
CODE_03BDBD:        A9 02         LDA #$02                  ;\Item out of [?] box sound
CODE_03BDBF:        8D 03 16      STA $1603                 ;/
CODE_03BDC2:        60            RTS                       ;

CODE_03BDC3:        A2 09         LDX #$09                  ;
CODE_03BDC5:        86 9E         STX $9E                   ;
CODE_03BDC7:        A5 32         LDA $32                   ;
CODE_03BDC9:        D0 03         BNE CODE_03BDCE           ;
CODE_03BDCB:        4C 72 BE      JMP CODE_03BE72           ;

CODE_03BDCE:        0A            ASL A                     ;
CODE_03BDCF:        90 24         BCC CODE_03BDF5           ;
CODE_03BDD1:        AD 47 07      LDA $0747                 ;
CODE_03BDD4:        D0 48         BNE CODE_03BE1E           ;
CODE_03BDD6:        AD 0C 02      LDA $020C                 ;
CODE_03BDD9:        F0 11         BEQ CODE_03BDEC           ;
CODE_03BDDB:        C9 03         CMP #$03                  ;
CODE_03BDDD:        F0 0D         BEQ CODE_03BDEC           ;
CODE_03BDDF:        C9 02         CMP #$02                  ;
CODE_03BDE1:        D0 3B         BNE CODE_03BE1E           ;
CODE_03BDE3:        20 8A CF      JSR CODE_03CF8A           ;
CODE_03BDE6:        20 E1 E8      JSR CODE_03E8E1           ;
CODE_03BDE9:        4C 1E BE      JMP CODE_03BE1E           ;

CODE_03BDEC:        20 08 CF      JSR CODE_03CF08           ;
CODE_03BDEF:        20 2E E7      JSR CODE_03E72E           ;
CODE_03BDF2:        4C 1E BE      JMP CODE_03BE1E           ;

CODE_03BDF5:        A5 09         LDA $09                   ;
CODE_03BDF7:        29 03         AND #$03                  ;
CODE_03BDF9:        D0 1A         BNE CODE_03BE15           ;
CODE_03BDFB:        CE 41 02      DEC $0241                 ;
CODE_03BDFE:        A5 32         LDA $32                   ;
CODE_03BE00:        E6 32         INC $32                   ;
CODE_03BE02:        C9 11         CMP #$11                  ;
CODE_03BE04:        90 0F         BCC CODE_03BE15           ;
CODE_03BE06:        A9 10         LDA #$10                  ;
CODE_03BE08:        95 5E         STA $5E,x                 ;
CODE_03BE0A:        A9 80         LDA #$80                  ;
CODE_03BE0C:        85 32         STA $32                   ;
CODE_03BE0E:        0A            ASL A                     ;
CODE_03BE0F:        8D 60 02      STA $0260                 ;
CODE_03BE12:        2A            ROL A                     ;
CODE_03BE13:        95 47         STA $47,x                 ;
CODE_03BE15:        A5 32         LDA $32                   ;
CODE_03BE17:        C9 06         CMP #$06                  ;
CODE_03BE19:        B0 03         BCS CODE_03BE1E           ;
CODE_03BE1B:        4C 72 BE      JMP CODE_03BE72           ;

CODE_03BE1E:        4C 60 BE      JMP CODE_03BE60           ;

CODE_03BE21:        B5 79         LDA $79,x                 ;
CODE_03BE23:        85 E9         STA $E9                   ;
CODE_03BE25:        BD 1A 02      LDA $021A,x               ;
CODE_03BE28:        85 E8         STA $E8                   ;
CODE_03BE2A:        C2 20         REP #$20                  ;
CODE_03BE2C:        A5 E8         LDA $E8                   ;
CODE_03BE2E:        C5 42         CMP $42                   ;
CODE_03BE30:        B0 11         BCS CODE_03BE43           ;
CODE_03BE32:        18            CLC                       ;
CODE_03BE33:        69 0C 00      ADC #$000C                ;
CODE_03BE36:        85 E6         STA $E6                   ;
CODE_03BE38:        E2 20         SEP #$20                  ;
CODE_03BE3A:        A5 E6         LDA $E6                   ;
CODE_03BE3C:        9D 1A 02      STA $021A,x               ;
CODE_03BE3F:        A5 E7         LDA $E7                   ;
CODE_03BE41:        95 79         STA $79,x                 ;
CODE_03BE43:        E2 20         SEP #$20                  ;
CODE_03BE45:        20 39 FD      JSR CODE_03FD39           ;
CODE_03BE48:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03BE4B:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03BE4E:        20 03 ED      JSR CODE_03ED03           ;
CODE_03BE51:        20 55 DE      JSR CODE_03DE55           ;
CODE_03BE54:        20 03 DC      JSR CODE_03DC03           ;
CODE_03BE57:        A5 E8         LDA $E8                   ;
CODE_03BE59:        9D 1A 02      STA $021A,x               ;
CODE_03BE5C:        A5 E9         LDA $E9                   ;
CODE_03BE5E:        95 79         STA $79,x                 ;
CODE_03BE60:        20 39 FD      JSR CODE_03FD39           ;
CODE_03BE63:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03BE66:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03BE69:        20 03 ED      JSR CODE_03ED03           ;
CODE_03BE6C:        20 55 DE      JSR CODE_03DE55           ;
CODE_03BE6F:        20 03 DC      JSR CODE_03DC03           ;
CODE_03BE72:        60            RTS                       ;

CODE_03BE73:        04 12         TSB $12                   ;code related to breaking bricks.
CODE_03BE75:        48            PHA                       ;
CODE_03BE76:        A9 11         LDA #$11                  ;Make brick bounce block shatter
CODE_03BE78:        AE F0 03      LDX $03F0                 ;Get bounce block index
CODE_03BE7B:        AC 54 07      LDY $0754                 ;\
CODE_03BE7E:        D0 02         BNE CODE_03BE82           ;/ Skip next instruction if big Mario
CODE_03BE80:        A9 12         LDA #$12                  ;\Make brick bounce block bounce
CODE_03BE82:        95 35         STA $35,x                 ;/
CODE_03BE84:        20 8E 93      JSR CODE_03938E           ;
CODE_03BE87:        AE F0 03      LDX $03F0                 ;
CODE_03BE8A:        A5 02         LDA $02                   ;
CODE_03BE8C:        9D E6 03      STA $03E6,x               ;
CODE_03BE8F:        A8            TAY                       ;
CODE_03BE90:        A5 06         LDA $06                   ;
CODE_03BE92:        9D E8 03      STA $03E8,x               ;
CODE_03BE95:        B1 06         LDA ($06),y               ;
CODE_03BE97:        20 95 BF      JSR CODE_03BF95           ;
CODE_03BE9A:        85 00         STA $00                   ;
CODE_03BE9C:        AC 54 07      LDY $0754                 ;
CODE_03BE9F:        D0 01         BNE CODE_03BEA2           ;
CODE_03BEA1:        98            TYA                       ;
CODE_03BEA2:        90 25         BCC CODE_03BEC9           ;
CODE_03BEA4:        A0 11         LDY #$11                  ;
CODE_03BEA6:        94 35         STY $35,x                 ;
CODE_03BEA8:        A9 FC         LDA #$FC                  ;
CODE_03BEAA:        A4 00         LDY $00                   ;
CODE_03BEAC:        C0 5B         CPY #$5B                  ;
CODE_03BEAE:        F0 04         BEQ CODE_03BEB4           ;
CODE_03BEB0:        C0 60         CPY #$60                  ;
CODE_03BEB2:        D0 15         BNE CODE_03BEC9           ;
CODE_03BEB4:        AD BC 06      LDA $06BC                 ;
CODE_03BEB7:        D0 08         BNE CODE_03BEC1           ;
CODE_03BEB9:        A9 0B         LDA #$0B                  ;
CODE_03BEBB:        8D AD 07      STA $07AD                 ;
CODE_03BEBE:        EE BC 06      INC $06BC                 ;
CODE_03BEC1:        AD AD 07      LDA $07AD                 ;
CODE_03BEC4:        D0 02         BNE CODE_03BEC8           ;
CODE_03BEC6:        A0 FC         LDY #$FC                  ;
CODE_03BEC8:        98            TYA                       ;
CODE_03BEC9:        9D EA 03      STA $03EA,x               ;
CODE_03BECC:        20 0D BF      JSR CODE_03BF0D           ;
CODE_03BECF:        A4 02         LDY $02                   ;
CODE_03BED1:        A9 27         LDA #$27                  ;
CODE_03BED3:        91 06         STA ($06),y               ;
CODE_03BED5:        A9 10         LDA #$10                  ;
CODE_03BED7:        8D 8C 07      STA $078C                 ;
CODE_03BEDA:        68            PLA                       ;
CODE_03BEDB:        85 05         STA $05                   ;
CODE_03BEDD:        A0 00         LDY #$00                  ;
CODE_03BEDF:        AD 14 07      LDA $0714                 ;
CODE_03BEE2:        D0 05         BNE CODE_03BEE9           ;
CODE_03BEE4:        AD 54 07      LDA $0754                 ;
CODE_03BEE7:        F0 01         BEQ CODE_03BEEA           ;
CODE_03BEE9:        C8            INY                       ;
CODE_03BEEA:        AD 37 02      LDA $0237                 ;
CODE_03BEED:        18            CLC                       ;
CODE_03BEEE:        79 73 BE      ADC $BE73,y               ;
CODE_03BEF1:        29 F0         AND #$F0                  ;
CODE_03BEF3:        9D 44 02      STA $0244,x               ;
CODE_03BEF6:        B4 35         LDY $35,x                 ;
CODE_03BEF8:        C0 11         CPY #$11                  ;
CODE_03BEFA:        F0 05         BEQ CODE_03BF01           ;
CODE_03BEFC:        20 A1 BF      JSR CODE_03BFA1           ;
CODE_03BEFF:        80 03         BRA CODE_03BF04           ;

CODE_03BF01:        20 2C BF      JSR CODE_03BF2C           ;
CODE_03BF04:        AD F0 03      LDA $03F0                 ;
CODE_03BF07:        49 01         EOR #$01                  ;
CODE_03BF09:        8D F0 03      STA $03F0                 ;
CODE_03BF0C:        60            RTS                       ;

CODE_03BF0D:        AD 19 02      LDA $0219                 ;
CODE_03BF10:        18            CLC                       ;
CODE_03BF11:        69 08         ADC #$08                  ;
CODE_03BF13:        29 F0         AND #$F0                  ;
CODE_03BF15:        9D 26 02      STA $0226,x               ;
CODE_03BF18:        8D 16 0E      STA $0E16                 ;
CODE_03BF1B:        A5 78         LDA $78                   ;
CODE_03BF1D:        69 00         ADC #$00                  ;
CODE_03BF1F:        95 85         STA $85,x                 ;
CODE_03BF21:        9D EC 03      STA $03EC,x               ;
CODE_03BF24:        8D 17 0E      STA $0E17                 ;
CODE_03BF27:        A5 BB         LDA $BB                   ;
CODE_03BF29:        95 C8         STA $C8,x                 ;
CODE_03BF2B:        60            RTS                       ;

CODE_03BF2C:        20 C6 BF      JSR CODE_03BFC6           ;
CODE_03BF2F:        A9 01         LDA #$01                  ;\"Mario hits ceiling/shell hits wall" sound
CODE_03BF31:        8D 00 16      STA $1600                 ;/
CODE_03BF34:        74 6A         STZ $6A,x                 ;Horizontal speed of bounce blocks: none
CODE_03BF36:        9E 49 04      STZ $0449,x               ;
CODE_03BF39:        64 A0         STZ $A0                   ;No vertical speed of Mario
CODE_03BF3B:        A9 FE         LDA #$FE                  ;\Vertical speed of bounce blocks
CODE_03BF3D:        95 AD         STA $AD,x                 ;/
CODE_03BF3F:        A5 05         LDA $05                   ;
CODE_03BF41:        20 95 BF      JSR CODE_03BF95           ;
CODE_03BF44:        90 40         BCC CODE_03BF86           ;
CODE_03BF46:        98            TYA                       ;
CODE_03BF47:        C9 09         CMP #$09                  ;
CODE_03BF49:        90 02         BCC CODE_03BF4D           ;
CODE_03BF4B:        E9 05         SBC #$05                  ;
CODE_03BF4D:        0A            ASL A                     ;
CODE_03BF4E:        A8            TAY                       ;
CODE_03BF4F:        B9 5C BF      LDA PNTR_03BF5C,y      ;
CODE_03BF52:        85 04         STA $04                   ;
CODE_03BF54:        B9 5D BF      LDA $BF5D,y               ;
CODE_03BF57:        85 05         STA $05                   ;
CODE_03BF59:        6C 04 00      JMP ($0004)               ;

;Looks like a pointer table of what the ? blocks spawn

PNTR_03BF5C:        dw CODE_03BF6E            ;Spawn Mushroom
                    dw CODE_03BC59            ;Spawn Coin
                    dw CODE_03BC59            ;Spawn Coin
                    dw CODE_03BF76            ;Spawn 1UP
                    dw CODE_03BF6E            ;Spawn Mushroom (again)
                    dw CODE_03BF7E            ;Spawn Vine
                    dw CODE_03BF72            ;Spawn Star
                    dw CODE_03BC59            ;Spawn Coin
                    dw CODE_03BF76            ;Spawn 1UP

CODE_03BF6E:        A9 00         LDA #$00                  ;\Spawn Mushroom
CODE_03BF70:        80 06         BRA CODE_03BF78           ;/

CODE_03BF72:        A9 02         LDA #$02                  ;\Spawn Star
CODE_03BF74:        80 02         BRA CODE_03BF78           ;/

CODE_03BF76:        A9 03         LDA #$03                  ;\Spawn 1-Up
CODE_03BF78:        8D 0C 02      STA $020C                 ;/
CODE_03BF7B:        4C 80 BD      JMP CODE_03BD80           ;

CODE_03BF7E:        A2 09         LDX #$09                  ;\Spawn vine?
CODE_03BF80:        AC F0 03      LDY $03F0                 ; |Sprite index: $09
CODE_03BF83:        20 FD B9      JSR CODE_03B9FD           ;/ Y = ???
CODE_03BF86:        60            RTS                       ;

DATA_03BF87:        db $E8,$E7,$62,$63,$58,$59,$5A,$5B
                    db $5C,$5D,$5E,$5F,$60,$61

CODE_03BF95:        A0 0D         LDY #$0D                  ;
CODE_03BF97:        D9 87 BF      CMP $BF87,y               ;
CODE_03BF9A:        F0 04         BEQ CODE_03BFA0           ;
CODE_03BF9C:        88            DEY                       ;
CODE_03BF9D:        10 F8         BPL CODE_03BF97           ;
CODE_03BF9F:        18            CLC                       ;
CODE_03BFA0:        60            RTS                       ;

CODE_03BFA1:        20 C6 BF      JSR CODE_03BFC6           ;
CODE_03BFA4:        A9 01         LDA #$01                  ;
CODE_03BFA6:        9D EE 03      STA $03EE,x               ;
CODE_03BFA9:        AD 03 16      LDA $1603                 ;\ 
CODE_03BFAC:        D0 05         BNE CODE_03BFB3           ; |If there's no SFX playing already
CODE_03BFAE:        A9 07         LDA #$07                  ; |Shatter bricks sound
CODE_03BFB0:        8D 03 16      STA $1603                 ;/
CODE_03BFB3:        20 ED BF      JSR CODE_03BFED           ;
CODE_03BFB6:        A9 FE         LDA #$FE                  ;
CODE_03BFB8:        85 A0         STA $A0                   ;
CODE_03BFBA:        A9 05         LDA #$05                  ;
CODE_03BFBC:        8D 4A 01      STA $014A                 ;
CODE_03BFBF:        20 55 BD      JSR CODE_03BD55           ;
CODE_03BFC2:        AE F0 03      LDX $03F0                 ;
CODE_03BFC5:        60            RTS                       ;

CODE_03BFC6:        AE F0 03      LDX $03F0                 ;
CODE_03BFC9:        A4 02         LDY $02                   ;
CODE_03BFCB:        F0 1F         BEQ CODE_03BFEC           ;
CODE_03BFCD:        98            TYA                       ;
CODE_03BFCE:        38            SEC                       ;
CODE_03BFCF:        E9 10         SBC #$10                  ;
CODE_03BFD1:        85 02         STA $02                   ;
CODE_03BFD3:        A8            TAY                       ;
CODE_03BFD4:        B1 06         LDA ($06),y               ;
CODE_03BFD6:        C9 E9         CMP #$E9                  ;
CODE_03BFD8:        D0 12         BNE CODE_03BFEC           ;
CODE_03BFDA:        A9 00         LDA #$00                  ;
CODE_03BFDC:        91 06         STA ($06),y               ;
CODE_03BFDE:        A9 01         LDA #$01                  ;\
CODE_03BFE0:        8D 03 16      STA $1603                 ;/Coin sound
CODE_03BFE3:        20 73 93      JSR CODE_039373           ;
CODE_03BFE6:        AE F0 03      LDX $03F0                 ;
CODE_03BFE9:        20 73 BC      JSR CODE_03BC73           ;
CODE_03BFEC:        60            RTS                       ;

CODE_03BFED:        BD 26 02      LDA $0226,x               ;
CODE_03BFF0:        9D F3 03      STA $03F3,x               ;
CODE_03BFF3:        A9 F0         LDA #$F0                  ;
CODE_03BFF5:        95 6A         STA $6A,x                 ;
CODE_03BFF7:        95 6C         STA $6C,x                 ;
CODE_03BFF9:        A9 FA         LDA #$FA                  ;
CODE_03BFFB:        95 AD         STA $AD,x                 ;
CODE_03BFFD:        A9 FC         LDA #$FC                  ;
CODE_03BFFF:        95 AF         STA $AF,x                 ;
CODE_03C001:        9E 49 04      STZ $0449,x               ;
CODE_03C004:        9E 4B 04      STZ $044B,x               ;
CODE_03C007:        B5 85         LDA $85,x                 ;
CODE_03C009:        95 87         STA $87,x                 ;
CODE_03C00B:        BD 26 02      LDA $0226,x               ;
CODE_03C00E:        9D 28 02      STA $0228,x               ;
CODE_03C011:        BD 44 02      LDA $0244,x               ;
CODE_03C014:        18            CLC                       ;
CODE_03C015:        69 08         ADC #$08                  ;
CODE_03C017:        9D 46 02      STA $0246,x               ;
CODE_03C01A:        A9 FA         LDA #$FA                  ;
CODE_03C01C:        95 AD         STA $AD,x                 ;
CODE_03C01E:        60            RTS                       ;

CODE_03C01F:        B5 35         LDA $35,x                 ;
CODE_03C021:        F0 60         BEQ CODE_03C083           ;
CODE_03C023:        29 0F         AND #$0F                  ;
CODE_03C025:        48            PHA                       ;
CODE_03C026:        A8            TAY                       ;
CODE_03C027:        8A            TXA                       ;
CODE_03C028:        18            CLC                       ;
CODE_03C029:        69 0D         ADC #$0D                  ;
CODE_03C02B:        AA            TAX                       ;
CODE_03C02C:        88            DEY                       ;
CODE_03C02D:        F0 33         BEQ CODE_03C062           ;
CODE_03C02F:        20 53 C1      JSR CODE_03C153           ;
CODE_03C032:        20 BA C0      JSR CODE_03C0BA           ;
CODE_03C035:        E8            INX                       ;
CODE_03C036:        E8            INX                       ;
CODE_03C037:        20 53 C1      JSR CODE_03C153           ;
CODE_03C03A:        20 BA C0      JSR CODE_03C0BA           ;
CODE_03C03D:        A6 9E         LDX $9E                   ;
CODE_03C03F:        20 40 FD      JSR CODE_03FD40           ;
CODE_03C042:        20 D1 FD      JSR CODE_03FDD1           ;
CODE_03C045:        20 AC F3      JSR CODE_03F3AC           ;
CODE_03C048:        68            PLA                       ;
CODE_03C049:        B4 C8         LDY $C8,x                 ;
CODE_03C04B:        F0 36         BEQ CODE_03C083           ;
CODE_03C04D:        48            PHA                       ;
CODE_03C04E:        A9 F0         LDA #$F0                  ;
CODE_03C050:        DD 46 02      CMP $0246,x               ;
CODE_03C053:        B0 03         BCS CODE_03C058           ;
CODE_03C055:        9D 46 02      STA $0246,x               ;
CODE_03C058:        BD 44 02      LDA $0244,x               ;
CODE_03C05B:        C9 F0         CMP #$F0                  ;
CODE_03C05D:        68            PLA                       ;
CODE_03C05E:        90 23         BCC CODE_03C083           ;
CODE_03C060:        B0 1F         BCS CODE_03C081           ;
CODE_03C062:        20 53 C1      JSR CODE_03C153           ;
CODE_03C065:        A6 9E         LDX $9E                   ;
CODE_03C067:        20 40 FD      JSR CODE_03FD40           ;
CODE_03C06A:        20 D1 FD      JSR CODE_03FDD1           ;
CODE_03C06D:        20 58 F3      JSR CODE_03F358           ;
CODE_03C070:        68            PLA                       ;
CODE_03C071:        95 35         STA $35,x                 ;
CODE_03C073:        BD 44 02      LDA $0244,x               ;
CODE_03C076:        29 0F         AND #$0F                  ;
CODE_03C078:        C9 05         CMP #$05                  ;
CODE_03C07A:        B0 07         BCS CODE_03C083           ;
CODE_03C07C:        A9 01         LDA #$01                  ;
CODE_03C07E:        9D EE 03      STA $03EE,x               ;
CODE_03C081:        74 35         STZ $35,x                 ;
CODE_03C083:        60            RTS                       ;

CODE_03C084:        A2 01         LDX #$01                  ;
CODE_03C086:        86 9E         STX $9E                   ;
CODE_03C088:        BD EE 03      LDA $03EE,x               ;
CODE_03C08B:        F0 1C         BEQ CODE_03C0A9           ;
CODE_03C08D:        BD E8 03      LDA $03E8,x               ;
CODE_03C090:        85 06         STA $06                   ;
CODE_03C092:        A9 05         LDA #$05                  ;
CODE_03C094:        85 07         STA $07                   ;
CODE_03C096:        BD E6 03      LDA $03E6,x               ;
CODE_03C099:        85 02         STA $02                   ;
CODE_03C09B:        A8            TAY                       ;
CODE_03C09C:        BD EA 03      LDA $03EA,x               ;
CODE_03C09F:        91 06         STA ($06),y               ;
CODE_03C0A1:        20 84 93      JSR CODE_039384           ;
CODE_03C0A4:        A9 00         LDA #$00                  ;
CODE_03C0A6:        9D EE 03      STA $03EE,x               ;
CODE_03C0A9:        CA            DEX                       ;
CODE_03C0AA:        10 DA         BPL CODE_03C086           ;
CODE_03C0AC:        60            RTS                       ;

CODE_03C0AD:        E8            INX                       ;
CODE_03C0AE:        20 BA C0      JSR CODE_03C0BA           ;
CODE_03C0B1:        A6 9E         LDX $9E                   ;
CODE_03C0B3:        60            RTS                       ;

CODE_03C0B4:        AD 0E 07      LDA $070E                 ;
CODE_03C0B7:        D0 43         BNE CODE_03C0FC           ;
CODE_03C0B9:        AA            TAX                       ;
CODE_03C0BA:        B5 5D         LDA $5D,x                 ;
CODE_03C0BC:        0A            ASL A                     ;
CODE_03C0BD:        0A            ASL A                     ;
CODE_03C0BE:        0A            ASL A                     ;
CODE_03C0BF:        0A            ASL A                     ;
CODE_03C0C0:        85 01         STA $01                   ;
CODE_03C0C2:        B5 5D         LDA $5D,x                 ;
CODE_03C0C4:        4A            LSR A                     ;
CODE_03C0C5:        4A            LSR A                     ;
CODE_03C0C6:        4A            LSR A                     ;
CODE_03C0C7:        4A            LSR A                     ;
CODE_03C0C8:        C9 08         CMP #$08                  ;
CODE_03C0CA:        90 02         BCC CODE_03C0CE           ;
CODE_03C0CC:        09 F0         ORA #$F0                  ;
CODE_03C0CE:        85 00         STA $00                   ;
CODE_03C0D0:        8D B6 0E      STA $0EB6                 ;
CODE_03C0D3:        A0 00         LDY #$00                  ;
CODE_03C0D5:        C9 00         CMP #$00                  ;
CODE_03C0D7:        10 01         BPL CODE_03C0DA           ;
CODE_03C0D9:        88            DEY                       ;
CODE_03C0DA:        84 02         STY $02                   ;
CODE_03C0DC:        BD 01 04      LDA $0401,x               ;
CODE_03C0DF:        18            CLC                       ;
CODE_03C0E0:        65 01         ADC $01                   ;
CODE_03C0E2:        9D 01 04      STA $0401,x               ;
CODE_03C0E5:        A9 00         LDA #$00                  ;
CODE_03C0E7:        2A            ROL A                     ;
CODE_03C0E8:        48            PHA                       ;
CODE_03C0E9:        6A            ROR A                     ;
CODE_03C0EA:        BD 19 02      LDA $0219,x               ;
CODE_03C0ED:        65 00         ADC $00                   ;
CODE_03C0EF:        9D 19 02      STA $0219,x               ;
CODE_03C0F2:        B5 78         LDA $78,x                 ;
CODE_03C0F4:        65 02         ADC $02                   ;
CODE_03C0F6:        95 78         STA $78,x                 ;
CODE_03C0F8:        68            PLA                       ;
CODE_03C0F9:        18            CLC                       ;
CODE_03C0FA:        65 00         ADC $00                   ;
CODE_03C0FC:        60            RTS                       ;

CODE_03C0FD:        A2 00         LDX #$00                  ;
CODE_03C0FF:        AD 47 07      LDA $0747                 ;
CODE_03C102:        D0 05         BNE CODE_03C109           ;
CODE_03C104:        AD 0E 07      LDA $070E                 ;
CODE_03C107:        D0 F3         BNE CODE_03C0FC           ;
CODE_03C109:        AD 09 07      LDA $0709                 ;
CODE_03C10C:        85 00         STA $00                   ;
CODE_03C10E:        A9 04         LDA #$04                  ;
CODE_03C110:        4C 5C C1      JMP CODE_03C15C           ;

CODE_03C113:        A0 3D         LDY #$3D                  ;\
CODE_03C115:        B5 29         LDA $29,x                 ; |
CODE_03C117:        C9 05         CMP #$05                  ; |If sprite state is #$05, Y = $20, else, Y = $3D
CODE_03C119:        D0 27         BNE CODE_03C142           ; |
CODE_03C11B:        A0 20         LDY #$20                  ; |
CODE_03C11D:        80 23         BRA CODE_03C142           ;/

CODE_03C11F:        A0 00         LDY #$00                  ;
CODE_03C121:        80 02         BRA CODE_03C125           ;

CODE_03C123:        A0 01         LDY #$01                  ;
CODE_03C125:        E8            INX                       ;
CODE_03C126:        A9 03         LDA #$03                  ;
CODE_03C128:        85 00         STA $00                   ;
CODE_03C12A:        A9 06         LDA #$06                  ;
CODE_03C12C:        85 01         STA $01                   ;
CODE_03C12E:        A9 02         LDA #$02                  ;
CODE_03C130:        85 02         STA $02                   ;
CODE_03C132:        98            TYA                       ;
CODE_03C133:        4C 81 C1      JMP CODE_03C181           ;

CODE_03C136:        A0 7F         LDY #$7F                  ;
CODE_03C138:        D0 02         BNE CODE_03C13C           ;
CODE_03C13A:        A0 0F         LDY #$0F                  ;
CODE_03C13C:        A9 02         LDA #$02                  ;
CODE_03C13E:        D0 04         BNE CODE_03C144           ;
CODE_03C140:        A0 1C         LDY #$1C                  ;
CODE_03C142:        A9 03         LDA #$03                  ;
CODE_03C144:        84 00         STY $00                   ;
CODE_03C146:        E8            INX                       ;
CODE_03C147:        20 5C C1      JSR CODE_03C15C           ;
CODE_03C14A:        A6 9E         LDX $9E                   ;
CODE_03C14C:        60            RTS                       ;

DATA_03C14D:        db $06,$08

CODE_03C14F:        A0 00         LDY #$00                  ;
CODE_03C151:        80 00         BRA CODE_03C153           ;

CODE_03C153:        A0 01         LDY #$01                  ;
CODE_03C155:        A9 50         LDA #$50                  ;
CODE_03C157:        85 00         STA $00                   ;
CODE_03C159:        B9 4D C1      LDA $C14D,y               ;
CODE_03C15C:        85 02         STA $02                   ;
CODE_03C15E:        A9 00         LDA #$00                  ;
CODE_03C160:        4C 8B C1      JMP CODE_03C18B           ;Impose gravity

CODE_03C163:        A9 00         LDA #$00                  ;
CODE_03C165:        80 02         BRA CODE_03C169           ;

CODE_03C167:        A9 01         LDA #$01                  ;
CODE_03C169:        48            PHA                       ;
CODE_03C16A:        B4 1C         LDY $1C,x                 ;
CODE_03C16C:        E8            INX                       ;
CODE_03C16D:        A9 05         LDA #$05                  ;
CODE_03C16F:        C0 29         CPY #$29                  ;
CODE_03C171:        D0 02         BNE CODE_03C175           ;
CODE_03C173:        A9 09         LDA #$09                  ;
CODE_03C175:        85 00         STA $00                   ;
CODE_03C177:        A9 0A         LDA #$0A                  ;
CODE_03C179:        85 01         STA $01                   ;
CODE_03C17B:        A9 03         LDA #$03                  ;
CODE_03C17D:        85 02         STA $02                   ;
CODE_03C17F:        68            PLA                       ;
CODE_03C180:        A8            TAY                       ;
CODE_03C181:        20 8B C1      JSR CODE_03C18B           ;Impose gravity
CODE_03C184:        A6 9E         LDX $9E                   ;
CODE_03C186:        60            RTS                       ;

CODE_03C187:        20 8B C1      JSR CODE_03C18B           ;Impose gravity
CODE_03C18A:        6B            RTL                       ;

;Impose gravity
;$00 - Downward force
;$01 - Upward force
;$07 - adder for vertical position
CODE_03C18B:        48            PHA                       ;
CODE_03C18C:        BD 1C 04      LDA $041C,x               ;
CODE_03C18F:        18            CLC                       ;
CODE_03C190:        7D 3C 04      ADC $043C,x               ;
CODE_03C193:        9D 1C 04      STA $041C,x               ;
CODE_03C196:        A0 00         LDY #$00                  ;
CODE_03C198:        B5 A0         LDA $A0,x                 ;
CODE_03C19A:        10 01         BPL CODE_03C19D           ;
CODE_03C19C:        88            DEY                       ;
CODE_03C19D:        84 07         STY $07                   ;
CODE_03C19F:        7D 37 02      ADC $0237,x               ;
CODE_03C1A2:        9D 37 02      STA $0237,x               ;
CODE_03C1A5:        B5 BB         LDA $BB,x                 ;
CODE_03C1A7:        65 07         ADC $07                   ;
CODE_03C1A9:        95 BB         STA $BB,x                 ;
CODE_03C1AB:        BD 3C 04      LDA $043C,x               ;
CODE_03C1AE:        18            CLC                       ;
CODE_03C1AF:        65 00         ADC $00                   ;
CODE_03C1B1:        9D 3C 04      STA $043C,x               ;
CODE_03C1B4:        B5 A0         LDA $A0,x                 ;
CODE_03C1B6:        69 00         ADC #$00                  ;
CODE_03C1B8:        95 A0         STA $A0,x                 ;
CODE_03C1BA:        C5 02         CMP $02                   ;
CODE_03C1BC:        30 0E         BMI CODE_03C1CC           ;
CODE_03C1BE:        BD 3C 04      LDA $043C,x               ;
CODE_03C1C1:        C9 80         CMP #$80                  ;
CODE_03C1C3:        90 07         BCC CODE_03C1CC           ;
CODE_03C1C5:        A5 02         LDA $02                   ;
CODE_03C1C7:        95 A0         STA $A0,x                 ;
CODE_03C1C9:        9E 3C 04      STZ $043C,x               ;
CODE_03C1CC:        68            PLA                       ;
CODE_03C1CD:        F0 2A         BEQ CODE_03C1F9           ;
CODE_03C1CF:        A5 02         LDA $02                   ;
CODE_03C1D1:        49 FF         EOR #$FF                  ;
CODE_03C1D3:        1A            INC A                     ;
CODE_03C1D4:        85 07         STA $07                   ;
CODE_03C1D6:        BD 3C 04      LDA $043C,x               ;
CODE_03C1D9:        38            SEC                       ;
CODE_03C1DA:        E5 01         SBC $01                   ;
CODE_03C1DC:        9D 3C 04      STA $043C,x               ;
CODE_03C1DF:        B5 A0         LDA $A0,x                 ;
CODE_03C1E1:        E9 00         SBC #$00                  ;
CODE_03C1E3:        95 A0         STA $A0,x                 ;
CODE_03C1E5:        C5 07         CMP $07                   ;
CODE_03C1E7:        10 10         BPL CODE_03C1F9           ;
CODE_03C1E9:        BD 3C 04      LDA $043C,x               ;
CODE_03C1EC:        C9 80         CMP #$80                  ;
CODE_03C1EE:        B0 09         BCS CODE_03C1F9           ;
CODE_03C1F0:        A5 07         LDA $07                   ;
CODE_03C1F2:        95 A0         STA $A0,x                 ;
CODE_03C1F4:        A9 FF         LDA #$FF                  ;
CODE_03C1F6:        9D 3C 04      STA $043C,x               ;
CODE_03C1F9:        60            RTS                       ;

CODE_03C1FA:        BD 9D 0E      LDA $0E9D,x               ;
CODE_03C1FD:        F0 62         BEQ CODE_03C261           ;
CODE_03C1FF:        FE A2 0E      INC $0EA2,x               ;
CODE_03C202:        BD A2 0E      LDA $0EA2,x               ;
CODE_03C205:        4A            LSR A                     ;
CODE_03C206:        4A            LSR A                     ;
CODE_03C207:        4A            LSR A                     ;
CODE_03C208:        C9 03         CMP #$03                  ;
CODE_03C20A:        F0 56         BEQ CODE_03C262           ;
CODE_03C20C:        0A            ASL A                     ;
CODE_03C20D:        18            CLC                       ;
CODE_03C20E:        69 40         ADC #$40                  ;
CODE_03C210:        85 E4         STA $E4                   ;
CODE_03C212:        BD AC 0E      LDA $0EAC,x               ;
CODE_03C215:        85 E5         STA $E5                   ;
CODE_03C217:        BD A7 0E      LDA $0EA7,x               ;
CODE_03C21A:        85 E6         STA $E6                   ;
CODE_03C21C:        C2 20         REP #$20                  ;
CODE_03C21E:        A5 E5         LDA $E5                   ;
CODE_03C220:        38            SEC                       ;
CODE_03C221:        E5 42         SBC $42                   ;
CODE_03C223:        48            PHA                       ;
CODE_03C224:        AD B5 0E      LDA $0EB5                 ;
CODE_03C227:        30 07         BMI CODE_03C230           ;
CODE_03C229:        68            PLA                       ;
CODE_03C22A:        18            CLC                       ;
CODE_03C22B:        69 0C 00      ADC #$000C                ;
CODE_03C22E:        80 05         BRA CODE_03C235           ;

CODE_03C230:        68            PLA                       ;
CODE_03C231:        38            SEC                       ;
CODE_03C232:        E9 0C 00      SBC #$000C                ;
CODE_03C235:        85 E5         STA $E5                   ;
CODE_03C237:        E2 20         SEP #$20                  ;
CODE_03C239:        5A            PHY                       ;
CODE_03C23A:        BC 46 0B      LDY $0B46,x               ;
CODE_03C23D:        A5 E5         LDA $E5                   ;
CODE_03C23F:        99 00 09      STA $0900,y               ;
CODE_03C242:        BD B1 0E      LDA $0EB1,x               ;
CODE_03C245:        99 01 09      STA $0901,y               ;
CODE_03C248:        A5 E4         LDA $E4                   ;
CODE_03C24A:        99 02 09      STA $0902,y               ;
CODE_03C24D:        A9 2D         LDA #$2D                  ;
CODE_03C24F:        99 03 09      STA $0903,y               ;
CODE_03C252:        A9 02         LDA #$02                  ;
CODE_03C254:        99 00 0D      STA $0D00,y               ;
CODE_03C257:        A5 E6         LDA $E6                   ;
CODE_03C259:        F0 05         BEQ CODE_03C260           ;
CODE_03C25B:        A9 03         LDA #$03                  ;
CODE_03C25D:        99 00 0D      STA $0D00,y               ;
CODE_03C260:        7A            PLY                       ;
CODE_03C261:        60            RTS                       ;

CODE_03C262:        9E 9D 0E      STZ $0E9D,x               ;
CODE_03C265:        8A            TXA                       ;
CODE_03C266:        0A            ASL A                     ;
CODE_03C267:        0A            ASL A                     ;
CODE_03C268:        0A            ASL A                     ;
CODE_03C269:        85 E8         STA $E8                   ;
CODE_03C26B:        0A            ASL A                     ;
CODE_03C26C:        18            CLC                       ;
CODE_03C26D:        65 E8         ADC $E8                   ;
CODE_03C26F:        DA            PHX                       ;
CODE_03C270:        AA            TAX                       ;
CODE_03C271:        A9 F0         LDA #$F0                  ;
CODE_03C273:        9D 01 09      STA $0901,x               ;
CODE_03C276:        9E 00 0D      STZ $0D00,x               ;
CODE_03C279:        FA            PLX                       ;
CODE_03C27A:        60            RTS                       ;

CODE_03C27B:        9D 9D 0E      STA $0E9D,x               ;
CODE_03C27E:        9E A2 0E      STZ $0EA2,x               ;
CODE_03C281:        BD 1A 02      LDA $021A,x               ;
CODE_03C284:        9D AC 0E      STA $0EAC,x               ;
CODE_03C287:        B5 79         LDA $79,x                 ;
CODE_03C289:        9D A7 0E      STA $0EA7,x               ;
CODE_03C28C:        BD 38 02      LDA $0238,x               ;
CODE_03C28F:        18            CLC                       ;
CODE_03C290:        69 08         ADC #$08                  ;
CODE_03C292:        9D B1 0E      STA $0EB1,x               ;
CODE_03C295:        60            RTS                       ;

CODE_03C296:        AD 7F 0E      LDA $0E7F                 ;
CODE_03C299:        4A            LSR A                     ;
CODE_03C29A:        90 4F         BCC CODE_03C2EB           ;
CODE_03C29C:        AD 01 12      LDA $1201                 ;
CODE_03C29F:        30 40         BMI CODE_03C2E1           ;
CODE_03C2A1:        AD 80 16      LDA $1680                 ;
CODE_03C2A4:        F0 05         BEQ CODE_03C2AB           ;
CODE_03C2A6:        AD 01 12      LDA $1201                 ;
CODE_03C2A9:        F0 05         BEQ CODE_03C2B0           ;
CODE_03C2AB:        CE 01 12      DEC $1201                 ;
CODE_03C2AE:        D0 67         BNE CODE_03C317           ;
CODE_03C2B0:        A9 80         LDA #$80                  ;
CODE_03C2B2:        8D 00 21      STA $2100                 ;
CODE_03C2B5:        8D 01 12      STA $1201                 ;
CODE_03C2B8:        9C 0C 42      STZ $420C                 ;
CODE_03C2BB:        9C 03 12      STZ $1203                 ;
CODE_03C2BE:        9C 75 0B      STZ $0B75                 ;
CODE_03C2C1:        9C 80 16      STZ $1680                 ;
CODE_03C2C4:        AF F2 1F 70   LDA $701FF2               ;
CODE_03C2C8:        F0 0D         BEQ CODE_03C2D7           ;
CODE_03C2CA:        AD C8 0E      LDA $0EC8                 ;
CODE_03C2CD:        D0 04         BNE CODE_03C2D3           ;
CODE_03C2CF:        5C 39 81 00   JML CODE_008139           ;

CODE_03C2D3:        5C DE 80 00   JML CODE_0080DE           ;

CODE_03C2D7:        22 00 80 04   JSL CODE_048000           ;
CODE_03C2DB:        20 3B C3      JSR CODE_03C33B           ;Hide all OAM tiles
CODE_03C2DE:        20 66 C3      JSR CODE_03C366           ;
CODE_03C2E1:        9C 7F 0E      STZ $0E7F                 ;
CODE_03C2E4:        A9 01         LDA #$01                  ;
CODE_03C2E6:        8D 74 07      STA $0774                 ;
CODE_03C2E9:        80 2C         BRA CODE_03C317           ;

CODE_03C2EB:        AD 66 0E      LDA $0E66                 ;
CODE_03C2EE:        D0 0B         BNE CODE_03C2FB           ;
CODE_03C2F0:        A5 0E         LDA $0E                   ;
CODE_03C2F2:        D0 07         BNE CODE_03C2FB           ;
CODE_03C2F4:        A9 01         LDA #$01                  ;
CODE_03C2F6:        85 0E         STA $0E                   ;
CODE_03C2F8:        20 70 AD      JSR CODE_03AD70           ;
CODE_03C2FB:        9C 67 0E      STZ $0E67                 ;
CODE_03C2FE:        AD 01 12      LDA $1201                 ;
CODE_03C301:        C9 0F         CMP #$0F                  ;
CODE_03C303:        F0 0A         BEQ CODE_03C30F           ;
CODE_03C305:        EE 01 12      INC $1201                 ;
CODE_03C308:        AD 01 12      LDA $1201                 ;
CODE_03C30B:        C9 0F         CMP #$0F                  ;
CODE_03C30D:        D0 08         BNE CODE_03C317           ;
CODE_03C30F:        9C 7F 0E      STZ $0E7F                 ;
CODE_03C312:        9C 74 07      STZ $0774                 ;
CODE_03C315:        64 0E         STZ $0E                   ;
CODE_03C317:        AD 4F 0E      LDA $0E4F                 ;\
CODE_03C31A:        F0 1E         BEQ CODE_03C33A           ;/Skip if no pipe fadeout
CODE_03C31C:        20 3B C3      JSR CODE_03C33B           ;Hide all OAM tiles
CODE_03C31F:        AD 01 12      LDA $1201                 ;\ Load brightness
CODE_03C322:        49 0F         EOR #$0F                  ; |Inverse the last nibble
CODE_03C324:        0A            ASL A                     ; |\<<4
CODE_03C325:        0A            ASL A                     ; | |
CODE_03C326:        0A            ASL A                     ; | |
CODE_03C327:        0A            ASL A                     ; |/
CODE_03C328:        09 0F         ORA #$0F                  ; | Affect all the layers
CODE_03C32A:        8D 7E 0E      STA $0E7E                 ;/Store into mosaic register
CODE_03C32D:        20 54 C3      JSR CODE_03C354           ;Also hide player's OAM tiles for good measure (even though they were hidden already)
CODE_03C330:        AD 01 12      LDA $1201                 ;\
CODE_03C333:        C9 0F         CMP #$0F                  ; |
CODE_03C335:        D0 03         BNE CODE_03C33A           ; | Clear pipe fading flag if brightness is maximum
CODE_03C337:        9C 4F 0E      STZ $0E4F                 ;/
CODE_03C33A:        60            RTS                       ;

CODE_03C33B:        DA            PHX                       ;\
CODE_03C33C:        A2 00         LDX #$00                  ; |
CODE_03C33E:        A9 F0         LDA #$F0                  ; |
CODE_03C340:        9D 01 08      STA $0801,x               ; |
CODE_03C343:        9D 01 09      STA $0901,x               ; |
CODE_03C346:        9E 00 0C      STZ $0C00,x               ; | Hides all OAM tiles by setting their Y position off-screen
CODE_03C349:        9E 00 0D      STZ $0D00,x               ; | and also zeroing out something
CODE_03C34C:        E8            INX                       ; |
CODE_03C34D:        E8            INX                       ; |
CODE_03C34E:        E8            INX                       ; |
CODE_03C34F:        E8            INX                       ; |
CODE_03C350:        D0 EE         BNE CODE_03C340           ; |
CODE_03C352:        FA            PLX                       ; |
CODE_03C353:        60            RTS                       ;/

CODE_03C354:        5A            PHY                       ;\
CODE_03C355:        A0 D0         LDY #$D0                  ; |
CODE_03C357:        A9 F0         LDA #$F0                  ; |
CODE_03C359:        99 01 08      STA $0801,y               ; |
CODE_03C35C:        C8            INY                       ; | Hides player's OAM tiles by setting their Y position off-screen
CODE_03C35D:        C8            INY                       ; |
CODE_03C35E:        C8            INY                       ; |
CODE_03C35F:        C8            INY                       ; |
CODE_03C360:        C0 F0         CPY #$F0                  ; |
CODE_03C362:        D0 F5         BNE CODE_03C359           ; |
CODE_03C364:        7A            PLY                       ; |
CODE_03C365:        60            RTS                       ;/

CODE_03C366:        22 2E ED 04   JSL CODE_04ED2E           ;
CODE_03C36A:        9C A5 0B      STZ $0BA5                 ;
CODE_03C36D:        9C 06 0F      STZ $0F06                 ;
CODE_03C370:        9C D1 0E      STZ $0ED1                 ;
CODE_03C373:        9C 40 0E      STZ $0E40                 ;
CODE_03C376:        9C 41 0E      STZ $0E41                 ;
CODE_03C379:        9C 42 0E      STZ $0E42                 ;
CODE_03C37C:        9C DC 0E      STZ $0EDC                 ;
CODE_03C37F:        AD 66 0E      LDA $0E66                 ;
CODE_03C382:        D0 0E         BNE CODE_03C392           ;
CODE_03C384:        AD 37 02      LDA $0237                 ;
CODE_03C387:        8D B8 03      STA $03B8                 ;
CODE_03C38A:        AD 19 02      LDA $0219                 ;
CODE_03C38D:        8D AD 03      STA $03AD                 ;
CODE_03C390:        80 03         BRA CODE_03C395           ;

CODE_03C392:        9C 66 0E      STZ $0E66                 ;
CODE_03C395:        64 0E         STZ $0E                   ;
CODE_03C397:        60            RTS                       ;

DATA_03C398:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;Looks like some empty space.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_03C3B0:        B5 10         LDA $10,x                 ;
CODE_03C3B2:        48            PHA                       ;
CODE_03C3B3:        0A            ASL A                     ;
CODE_03C3B4:        B0 12         BCS CODE_03C3C8           ;
CODE_03C3B6:        68            PLA                       ;
CODE_03C3B7:        F0 03         BEQ CODE_03C3BC           ;
CODE_03C3B9:        4C A8 CC      JMP CODE_03CCA8           ;

CODE_03C3BC:        AD 1F 07      LDA $071F                 ;
CODE_03C3BF:        29 07         AND #$07                  ;
CODE_03C3C1:        C9 07         CMP #$07                  ;
CODE_03C3C3:        F0 0E         BEQ CODE_03C3D3           ;
CODE_03C3C5:        4C 3C C4      JMP CODE_03C43C           ;

CODE_03C3C8:        68            PLA                       ;
CODE_03C3C9:        29 0F         AND #$0F                  ;
CODE_03C3CB:        A8            TAY                       ;
CODE_03C3CC:        B9 10 00      LDA $0010,y               ;
CODE_03C3CF:        D0 02         BNE CODE_03C3D3           ;
CODE_03C3D1:        95 10         STA $10,x                 ;
CODE_03C3D3:        60            RTS                       ;

DATA_03C3D4:        db $03,$03,$06,$06,$06,$06,$06,$06
                    db $07,$07,$07

DATA_03C3DF:        db $05,$09,$04,$05,$06,$08,$09,$0A
                    db $07,$0B,$10

DATA_03C34A:        db $40,$B0,$B0,$80,$40,$40,$80,$40
                    db $F0,$F0,$F0

CODE_03C3F5:        A5 78         LDA $78                   ;\
CODE_03C3F7:        38            SEC                       ; |
CODE_03C3F8:        E9 04         SBC #$04                  ; |Take the player back 4 pages
CODE_03C3FA:        85 78         STA $78                   ;/
CODE_03C3FC:        AD 25 07      LDA $0725                 ;\
CODE_03C3FF:        38            SEC                       ; |Take the screen number back 4 pages
CODE_03C400:        E9 04         SBC #$04                  ; |
CODE_03C402:        8D 25 07      STA $0725                 ;/
CODE_03C405:        AD 1A 07      LDA $071A                 ;\
CODE_03C408:        38            SEC                       ; |
CODE_03C409:        E9 04         SBC #$04                  ; | Take coordinates of left side of screen back 4 pages
CODE_03C40B:        8D 1A 07      STA $071A                 ;/
CODE_03C40E:        AD 1B 07      LDA $071B                 ;\
CODE_03C411:        38            SEC                       ; |
CODE_03C412:        E9 04         SBC #$04                  ; | Take coordinates of right sight of screen back 4 pages
CODE_03C414:        8D 1B 07      STA $071B                 ;/
CODE_03C417:        AD 2A 07      LDA $072A                 ;\
CODE_03C41A:        38            SEC                       ; | Take screen number relative to page skips back 4 pages
CODE_03C41B:        E9 04         SBC #$04                  ; |
CODE_03C41D:        8D 2A 07      STA $072A                 ;/
CODE_03C420:        A9 00         LDA #$00                  ;
CODE_03C422:        8D 3B 07      STA $073B                 ;
CODE_03C425:        8D 2B 07      STA $072B                 ;
CODE_03C428:        8D 39 07      STA $0739                 ;Zero out 16-bit enemy data pointer index
CODE_03C42B:        8D 3A 07      STA $073A                 ;Zero out page of the most recent sprite
CODE_03C42E:        DA            PHX                       ;
CODE_03C42F:        BB            TYX                       ;
CODE_03C430:        BF 00 C0 04   LDA $04C000,x             ;
CODE_03C434:        8D 2C 07      STA $072C                 ;Set level object data pointer index according to 
CODE_03C437:        FA            PLX                       ;
CODE_03C438:        9C DB 0E      STZ $0EDB                 ;
CODE_03C43B:        60            RTS                       ;

CODE_03C43C:        AD 45 07      LDA $0745                 ;
CODE_03C43F:        D0 03         BNE CODE_03C444           ;
CODE_03C441:        4C C7 C4      JMP CODE_03C4C7           ;

CODE_03C444:        AD 26 07      LDA $0726                 ;
CODE_03C447:        D0 7E         BNE CODE_03C4C7           ;
CODE_03C449:        A0 0B         LDY #$0B                  ;
CODE_03C44B:        88            DEY                       ;
CODE_03C44C:        30 79         BMI CODE_03C4C7           ;
CODE_03C44E:        AD 5F 07      LDA $075F                 ;
CODE_03C451:        D9 D4 C3      CMP $C3D4,y               ;
CODE_03C454:        D0 F5         BNE CODE_03C44B           ;
CODE_03C456:        AD 25 07      LDA $0725                 ;
CODE_03C459:        D9 DF C3      CMP $C3DF,y               ;
CODE_03C45C:        D0 ED         BNE CODE_03C44B           ;
CODE_03C45E:        AD 37 02      LDA $0237                 ;
CODE_03C461:        D9 EA C3      CMP $C3EA,y               ;
CODE_03C464:        D0 3C         BNE CODE_03C4A2           ;
CODE_03C466:        A5 28         LDA $28                   ;
CODE_03C468:        C9 00         CMP #$00                  ;
CODE_03C46A:        D0 36         BNE CODE_03C4A2           ;
CODE_03C46C:        AD DB 0E      LDA $0EDB                 ;
CODE_03C46F:        D0 1E         BNE CODE_03C48F           ;
CODE_03C471:        A9 29         LDA #$29                  ;\
CODE_03C473:        8D 03 16      STA $1603                 ;/"Correct" sound
CODE_03C476:        AD 5F 07      LDA $075F                 ;
CODE_03C479:        C9 06         CMP #$06                  ;
CODE_03C47B:        D0 3F         BNE CODE_03C4BC           ;
CODE_03C47D:        EE D9 06      INC $06D9                 ;
CODE_03C480:        80 0D         BRA CODE_03C48F           ;

CODE_03C482:        AD DB 0E      LDA $0EDB                 ;
CODE_03C485:        D0 08         BNE CODE_03C48F           ;
CODE_03C487:        A9 2A         LDA #$2A                  ;\
CODE_03C489:        8D 03 16      STA $1603                 ;/"Incorrect" sound
CODE_03C48C:        8D DB 0E      STA $0EDB                 ;
CODE_03C48F:        EE DA 06      INC $06DA                 ;
CODE_03C492:        AD DA 06      LDA $06DA                 ;
CODE_03C495:        C9 03         CMP #$03                  ;
CODE_03C497:        D0 2B         BNE CODE_03C4C4           ;
CODE_03C499:        AD D9 06      LDA $06D9                 ;
CODE_03C49C:        C9 03         CMP #$03                  ;
CODE_03C49E:        D0 16         BNE CODE_03C4B6           ;
CODE_03C4A0:        80 1A         BRA CODE_03C4BC           ;Branch if all maze checkpoints taken correctly

CODE_03C4A2:        AD 5F 07      LDA $075F                 ;\
CODE_03C4A5:        C9 06         CMP #$06                  ; | Branch if world 7
CODE_03C4A7:        F0 D9         BEQ CODE_03C482           ;/
CODE_03C4A9:        AD DB 0E      LDA $0EDB                 ;
CODE_03C4AC:        D0 08         BNE CODE_03C4B6           ;
CODE_03C4AE:        A9 2A         LDA #$2A                  ;\
CODE_03C4B0:        8D 03 16      STA $1603                 ;/"Incorrect" sound
CODE_03C4B3:        8D DB 0E      STA $0EDB                 ;
CODE_03C4B6:        20 F5 C3      JSR CODE_03C3F5           ;
CODE_03C4B9:        20 6B D5      JSR CODE_03D56B           ;
CODE_03C4BC:        A9 00         LDA #$00                  ;\
CODE_03C4BE:        8D DA 06      STA $06DA                 ; | Zero out correct checkpoints counter
CODE_03C4C1:        8D D9 06      STA $06D9                 ; | The total checkpoints counter
CODE_03C4C4:        9C 45 07      STZ $0745                 ;/ 
CODE_03C4C7:        AD CD 06      LDA $06CD                 ;
CODE_03C4CA:        F0 0E         BEQ CODE_03C4DA           ;
CODE_03C4CC:        95 1C         STA $1C,x                 ;
CODE_03C4CE:        A9 01         LDA #$01                  ;
CODE_03C4D0:        95 10         STA $10,x                 ;
CODE_03C4D2:        74 29         STZ $29,x                 ;
CODE_03C4D4:        9C CD 06      STZ $06CD                 ;
CODE_03C4D7:        4C CA C5      JMP CODE_03C5CA           ;

;Process sprite data from $FD
CODE_03C4DA:        AC 39 07      LDY $0739                 ;\ Get offset of enemy sprite data
CODE_03C4DD:        B7 FD         LDA [$FD],y               ; |Check first byte
CODE_03C4DF:        C9 FF         CMP #$FF                  ; |If end of data, continue
CODE_03C4E1:        D0 03         BNE CODE_03C4E6           ;/
CODE_03C4E3:        4C B6 C5      JMP CODE_03C5B6           ;else, jump

CODE_03C4E6:        29 0F         AND #$0F                  ;
CODE_03C4E8:        C9 0E         CMP #$0E                  ;
CODE_03C4EA:        F0 0E         BEQ CODE_03C4FA           ;
CODE_03C4EC:        E0 08         CPX #$08                  ;
CODE_03C4EE:        90 0A         BCC CODE_03C4FA           ;
CODE_03C4F0:        C8            INY                       ;
CODE_03C4F1:        B7 FD         LDA [$FD],y               ;
CODE_03C4F3:        29 3F         AND #$3F                  ;
CODE_03C4F5:        C9 2E         CMP #$2E                  ;
CODE_03C4F7:        F0 01         BEQ CODE_03C4FA           ;
CODE_03C4F9:        60            RTS                       ;

CODE_03C4FA:        AD 1D 07      LDA $071D                 ;
CODE_03C4FD:        18            CLC                       ;
CODE_03C4FE:        69 30         ADC #$30                  ;
CODE_03C500:        29 F0         AND #$F0                  ;
CODE_03C502:        85 07         STA $07                   ;
CODE_03C504:        AD 1B 07      LDA $071B                 ;
CODE_03C507:        69 00         ADC #$00                  ;
CODE_03C509:        85 06         STA $06                   ;
CODE_03C50B:        AC 39 07      LDY $0739                 ;
CODE_03C50E:        C8            INY                       ;
CODE_03C50F:        B7 FD         LDA [$FD],y               ;
CODE_03C511:        0A            ASL A                     ;
CODE_03C512:        90 0B         BCC CODE_03C51F           ;
CODE_03C514:        AD 3B 07      LDA $073B                 ;
CODE_03C517:        D0 06         BNE CODE_03C51F           ;
CODE_03C519:        EE 3B 07      INC $073B                 ;
CODE_03C51C:        EE 3A 07      INC $073A                 ;
CODE_03C51F:        88            DEY                       ;
CODE_03C520:        B7 FD         LDA [$FD],y               ;
CODE_03C522:        29 0F         AND #$0F                  ;
CODE_03C524:        C9 0F         CMP #$0F                  ;
CODE_03C526:        D0 19         BNE CODE_03C541           ;
CODE_03C528:        AD 3B 07      LDA $073B                 ;
CODE_03C52B:        D0 14         BNE CODE_03C541           ;
CODE_03C52D:        C8            INY                       ;
CODE_03C52E:        B7 FD         LDA [$FD],y               ;
CODE_03C530:        29 3F         AND #$3F                  ;
CODE_03C532:        8D 3A 07      STA $073A                 ;
CODE_03C535:        EE 39 07      INC $0739                 ;
CODE_03C538:        EE 39 07      INC $0739                 ;
CODE_03C53B:        EE 3B 07      INC $073B                 ;
CODE_03C53E:        4C 3C C4      JMP CODE_03C43C           ;

CODE_03C541:        AD 3A 07      LDA $073A                 ;
CODE_03C544:        95 79         STA $79,x                 ;
CODE_03C546:        B7 FD         LDA [$FD],y               ;
CODE_03C548:        29 F0         AND #$F0                  ;
CODE_03C54A:        9D 1A 02      STA $021A,x               ;
CODE_03C54D:        CD 1D 07      CMP $071D                 ;
CODE_03C550:        B5 79         LDA $79,x                 ;
CODE_03C552:        ED 1B 07      SBC $071B                 ;
CODE_03C555:        B0 0B         BCS CODE_03C562           ;
CODE_03C557:        B7 FD         LDA [$FD],y               ;
CODE_03C559:        29 0F         AND #$0F                  ;
CODE_03C55B:        C9 0E         CMP #$0E                  ;
CODE_03C55D:        F0 74         BEQ CODE_03C5D3           ;
CODE_03C55F:        4C F1 C5      JMP CODE_03C5F1           ;

CODE_03C562:        A5 07         LDA $07                   ;
CODE_03C564:        DD 1A 02      CMP $021A,x               ;
CODE_03C567:        A5 06         LDA $06                   ;
CODE_03C569:        F5 79         SBC $79,x                 ;
CODE_03C56B:        90 49         BCC CODE_03C5B6           ;
CODE_03C56D:        A9 01         LDA #$01                  ;
CODE_03C56F:        95 BC         STA $BC,x                 ;
CODE_03C571:        B7 FD         LDA [$FD],y               ;
CODE_03C573:        0A            ASL A                     ;
CODE_03C574:        0A            ASL A                     ;
CODE_03C575:        0A            ASL A                     ;
CODE_03C576:        0A            ASL A                     ;
CODE_03C577:        9D 38 02      STA $0238,x               ;
CODE_03C57A:        C9 E0         CMP #$E0                  ;
CODE_03C57C:        F0 55         BEQ CODE_03C5D3           ;
CODE_03C57E:        C8            INY                       ;
CODE_03C57F:        B7 FD         LDA [$FD],y               ;
CODE_03C581:        29 40         AND #$40                  ;
CODE_03C583:        F0 05         BEQ CODE_03C58A           ;
CODE_03C585:        AD CC 06      LDA $06CC                 ;
CODE_03C588:        F0 75         BEQ CODE_03C5FF           ;
CODE_03C58A:        B7 FD         LDA [$FD],y               ;
CODE_03C58C:        29 3F         AND #$3F                  ;
CODE_03C58E:        C9 37         CMP #$37                  ;
CODE_03C590:        90 04         BCC CODE_03C596           ;
CODE_03C592:        C9 3F         CMP #$3F                  ;
CODE_03C594:        90 3A         BCC CODE_03C5D0           ;
CODE_03C596:        C9 06         CMP #$06                  ;
CODE_03C598:        D0 07         BNE CODE_03C5A1           ;
CODE_03C59A:        AC 6A 07      LDY $076A                 ;"More difficult quest" flag
CODE_03C59D:        F0 02         BEQ CODE_03C5A1           ;
CODE_03C59F:        A9 02         LDA #$02                  ;
CODE_03C5A1:        95 1C         STA $1C,x                 ;
CODE_03C5A3:        C9 2D         CMP #$2D                  ;
CODE_03C5A5:        D0 03         BNE CODE_03C5AA           ;
CODE_03C5A7:        9C 4C 0F      STZ $0F4C                 ;
CODE_03C5AA:        A9 01         LDA #$01                  ;
CODE_03C5AC:        95 10         STA $10,x                 ;
CODE_03C5AE:        20 CA C5      JSR CODE_03C5CA           ;
CODE_03C5B1:        B5 10         LDA $10,x                 ;
CODE_03C5B3:        D0 4A         BNE CODE_03C5FF           ;
CODE_03C5B5:        60            RTS                       ;

CODE_03C5B6:        AD CB 06      LDA $06CB                 ;
CODE_03C5B9:        D0 09         BNE CODE_03C5C4           ;
CODE_03C5BB:        AD 98 03      LDA $0398                 ;
CODE_03C5BE:        C9 01         CMP #$01                  ;
CODE_03C5C0:        D0 0D         BNE CODE_03C5CF           ;
CODE_03C5C2:        A9 00         LDA #$00                  ;
CODE_03C5C4:        E0 09         CPX #$09                  ;
CODE_03C5C6:        F0 02         BEQ CODE_03C5CA           ;
CODE_03C5C8:        95 1C         STA $1C,x                 ;
CODE_03C5CA:        74 29         STZ $29,x                 ;
CODE_03C5CC:        20 0B C6      JSR CODE_03C60B           ;
CODE_03C5CF:        60            RTS                       ;

CODE_03C5D0:        4C 2B CB      JMP CODE_03CB2B           ;

CODE_03C5D3:        C8            INY                       ;
CODE_03C5D4:        C8            INY                       ;
CODE_03C5D5:        B7 FD         LDA [$FD],y               ;
CODE_03C5D7:        4A            LSR A                     ;
CODE_03C5D8:        4A            LSR A                     ;
CODE_03C5D9:        4A            LSR A                     ;
CODE_03C5DA:        4A            LSR A                     ;
CODE_03C5DB:        4A            LSR A                     ;
CODE_03C5DC:        CD 5F 07      CMP $075F                 ;
CODE_03C5DF:        D0 0E         BNE CODE_03C5EF           ;
CODE_03C5E1:        88            DEY                       ;
CODE_03C5E2:        B7 FD         LDA [$FD],y               ;
CODE_03C5E4:        8D 50 07      STA $0750                 ;
CODE_03C5E7:        C8            INY                       ;
CODE_03C5E8:        B7 FD         LDA [$FD],y               ;
CODE_03C5EA:        29 1F         AND #$1F                  ;
CODE_03C5EC:        8D 51 07      STA $0751                 ;
CODE_03C5EF:        80 0B         BRA CODE_03C5FC           ;

CODE_03C5F1:        AC 39 07      LDY $0739                 ;
CODE_03C5F4:        B7 FD         LDA [$FD],y               ;
CODE_03C5F6:        29 0F         AND #$0F                  ;
CODE_03C5F8:        C9 0E         CMP #$0E                  ;
CODE_03C5FA:        D0 03         BNE CODE_03C5FF           ;
CODE_03C5FC:        EE 39 07      INC $0739                 ;
CODE_03C5FF:        EE 39 07      INC $0739                 ;
CODE_03C602:        EE 39 07      INC $0739                 ;
CODE_03C605:        9C 3B 07      STZ $073B                 ;
CODE_03C608:        A6 9E         LDX $9E                   ;
CODE_03C60A:        60            RTS                       ;

CODE_03C60B:        B5 1C         LDA $1C,x                 ;Load Sprite number into A
CODE_03C60D:        C9 15         CMP #$15                  ;\If it is #15 or greater
CODE_03C60F:        B0 0F         BCS CODE_03C620           ; |Branch
CODE_03C611:        A8            TAY                       ;/Transfer A to Y
CODE_03C612:        BD 38 02      LDA $0238,x               ;\ no need for CLC since the CMP above did that.
CODE_03C615:        69 08         ADC #$08                  ; |sprites $1-$14: Add 8 pixels to the sprite Y position
CODE_03C617:        9D 38 02      STA $0238,x               ;/
CODE_03C61A:        A9 01         LDA #$01                  ;\
CODE_03C61C:        9D D9 03      STA $03D9,x               ;/Set initialized flag?
CODE_03C61F:        98            TYA                       ;\
CODE_03C620:        0A            ASL A                     ; |Sprite number*2, for index purposes
CODE_03C621:        A8            TAY                       ;/
CODE_03C622:        B9 2F C6      LDA $C62F,y               ;\
CODE_03C625:        85 04         STA $04                   ; |
CODE_03C627:        B9 30 C6      LDA $C630,y               ; |Load sprite pointers and jump to them
CODE_03C62A:        85 05         STA $05                   ; |for the INIT routine
CODE_03C62C:        6C 04 00      JMP ($0004)               ;/

;SMB1 SPRITE INIT POINTER TABLE

PNTR_03C62F:        dw CODE_03C6D3            ;00 - Green Koopa
                    dw CODE_03C6D3            ;01 - Red Koopa (Falls from edges)
                    dw CODE_03C6D3            ;02 - Buzzy Beetle
                    dw CODE_03C6E3            ;03 - Red Koopa (Stays on edges)
                    dw CODE_03C69D            ;04 - Green Koopa (Doesn't move)
                    dw CODE_03C6ED            ;05 - Hammer Bros
                    dw CODE_03C69E            ;06 - Goomba
                    dw CODE_03C705            ;07 - Blooper
                    dw CODE_03C72E            ;08 - Bullet Bill
                    dw CODE_03C69D            ;09 - Yellow Paratroopa (Doesn't move)
                    dw CODE_03C738            ;0A - Green Cheep-Cheep
                    dw CODE_03C738            ;0B - Red Cheep-Cheep 
                    dw CODE_03C6A4            ;0C - Podoboo
                    dw CODE_03CB99            ;0D - piranha Plant
                    dw CODE_03CBF2            ;0E - Green Paratroopa
                    dw CODE_03C70B            ;0F - Red Vertical Flying Paratroopa
                    dw CODE_03C700            ;10 - Green Horizontal Flying Paratroopa
                    dw CODE_03C749            ;11 - Lakitu
                    dw CODE_03CBB5            ;12 - Spiny
                    dw CODE_03C69D            ;13 - Nothing?
                    dw CODE_03CBB5            ;14 - Red Flying Cheep Cheep Generator
                    dw CODE_03CBB5            ;15 - Bowser's Fire Generator
                    dw CODE_03CBB5            ;16 - Firework Generator
                    dw CODE_03CBB5            ;17 - Bullet Bill/Cheep Cheep Generator
                    dw CODE_03CBD9            ;18 - Disable Lakitu Generator
                    dw CODE_03C69D            ;19 - Nothing
                    dw CODE_03C69D            ;1A - Nothing
                    dw CODE_03C821            ;1B - Firebar (Clockwise)
                    dw CODE_03C821            ;1C - Fast Firebar (Clockwise)
                    dw CODE_03C821            ;1D - Firebar (Counter-Clockwise)
                    dw CODE_03C821            ;1E - Fast Firebar (Counter-Clockwise)
                    dw CODE_03C81E            ;1F - Long Firebar (Clockwise)
                    dw CODE_03C69D            ;20 - Nothing? Related to the firebars above?
                    dw CODE_03C69D            ;21 - Nothing? Related to the firebars above?
                    dw CODE_03C69D            ;22 - Nothing? Related to the firebars above?
                    dw CODE_03C69D            ;23 - Nothing?
                    dw CODE_03CC00            ;24 - Balance Lift
                    dw CODE_03CC35            ;25 - Lift (Up then down)
                    dw CODE_03CC63            ;26 - Lift (Up)
                    dw CODE_03CC69            ;27 - Lift (Down)
                    dw CODE_03CC2E            ;28 - Lift (Left then right and so on)
                    dw CODE_03CC26            ;29 - Lift (Fall)
                    dw CODE_03CC2E            ;2A - Lift (Right)
                    dw CODE_03CC6F            ;2B - Short Lift (Up)
                    dw CODE_03CC7B            ;2C - Short Lift (Down)
                    dw CODE_03C918            ;2D - Bowser
                    dw CODE_03BD9B            ;2E - Powerup Object
                    dw CODE_03B9FD            ;2F - Vine
                    dw CODE_03C69D            ;30 - Flagpole
                    dw CODE_03C69D            ;31 - Star Flag
                    dw CODE_03C69D            ;32 - Springboard
                    dw CODE_03C69D            ;33 - Bullet Bill (Just shot)
                    dw CODE_03C69D            ;34 - Warp Zone
                    dw CODE_03C6C0            ;35 - Toad (World 1-7), Princess (World 8)
                    dw CODE_03CCA7            ;36 - ??? what is this i dont even?

CODE_03C69D:        60            RTS                       ;

CODE_03C69E:        20 D3 C6      JSR CODE_03C6D3           ;
CODE_03C6A1:        4C 07 C7      JMP CODE_03C707           ;

CODE_03C6A4:        A9 D0         LDA #$D0                  ;\Podoboo init
CODE_03C6A6:        9D 38 02      STA $0238,x               ;/Set Ypos to bottom of the screen
CODE_03C6A9:        A9 01         LDA #$01                  ;
CODE_03C6AB:        95 BC         STA $BC,x                 ;
CODE_03C6AD:        9D A2 07      STA $07A2,x               ;
CODE_03C6B0:        74 29         STZ $29,x                 ;
CODE_03C6B2:        9D 00 0B      STA $0B00,x               ;
CODE_03C6B5:        9E 09 0B      STZ $0B09,x               ;Reset some timer
CODE_03C6B8:        A9 27         LDA #$27                  ;\Play podoboo sound
CODE_03C6BA:        8D 03 16      STA $1603                 ;/
CODE_03C6BD:        4C 07 C7      JMP CODE_03C707           ;

CODE_03C6C0:        AD 5F 07      LDA $075F                 ;\INIT routine of Toad/Peach. Load current world
CODE_03C6C3:        C9 07         CMP #$07                  ; |If you are NOT in world 8
CODE_03C6C5:        D0 06         BNE CODE_03C6CD           ; |Set Ypos of sprite to $B8 (floor)
CODE_03C6C7:        A9 70         LDA #$70                  ;\|Otherwise, set Ypos to $70 (inside cage)
CODE_03C6C9:        9D 38 02      STA $0238,x               ;/
CODE_03C6CC:        60            RTS                       ;Return

CODE_03C6CD:        A9 B8         LDA #$B8                  ;\Set Ypos of sprite to $B8
CODE_03C6CF:        80 F8         BRA CODE_03C6C9           ;/

DATA_03C6D1:        db $F8,$F4                              ;Sprite initial xspeed. Format: Normal difficulty, hard difficulty

CODE_03C6D3:        A0 01         LDY #$01                  ;\
CODE_03C6D5:        AD 6A 07      LDA $076A                 ; |INIT routine for most walking sprites
CODE_03C6D8:        D0 01         BNE CODE_03C6DB           ; |Set sprite initial Xspeed depending on difficulty
CODE_03C6DA:        88            DEY                       ; |
CODE_03C6DB:        B9 D1 C6      LDA $C6D1,y               ; |
CODE_03C6DE:        95 5E         STA $5E,x                 ;/
CODE_03C6E0:        4C 1D C7      JMP CODE_03C71D           ;

CODE_03C6E3:        20 D3 C6      JSR CODE_03C6D3           ;
CODE_03C6E6:        A9 01         LDA #$01                  ;
CODE_03C6E8:        95 29         STA $29,x                 ;
CODE_03C6EA:        60            RTS                       ;

DATA_03C6EB:        db $80,$50

CODE_03C6ED:        9E A2 03      STZ $03A2,x               ;
CODE_03C6F0:        74 5E         STZ $5E,x                 ;
CODE_03C6F2:        AC CC 06      LDY $06CC                 ;
CODE_03C6F5:        B9 EB C6      LDA $C6EB,y               ;
CODE_03C6F8:        9D A2 07      STA $07A2,x               ;
CODE_03C6FB:        A9 0B         LDA #$0B                  ;
CODE_03C6FD:        4C 1F C7      JMP CODE_03C71F           ;

CODE_03C700:        A9 00         LDA #$00                  ;
CODE_03C702:        4C DE C6      JMP CODE_03C6DE           ;

CODE_03C705:        74 5E         STZ $5E,x                 ;
CODE_03C707:        A9 09         LDA #$09                  ;
CODE_03C709:        D0 14         BNE CODE_03C71F           ;
CODE_03C70B:        A0 30         LDY #$30                  ;
CODE_03C70D:        BD 38 02      LDA $0238,x               ;
CODE_03C710:        9D 02 04      STA $0402,x               ;
CODE_03C713:        10 02         BPL CODE_03C717           ;
CODE_03C715:        A0 E0         LDY #$E0                  ;
CODE_03C717:        98            TYA                       ;
CODE_03C718:        7D 38 02      ADC $0238,x               ;
CODE_03C71B:        95 5E         STA $5E,x                 ;
CODE_03C71D:        A9 03         LDA #$03                  ;
CODE_03C71F:        9D 90 04      STA $0490,x               ;
CODE_03C722:        A9 02         LDA #$02                  ;\ Set sprite direction to left
CODE_03C724:        95 47         STA $47,x                 ;/
CODE_03C726:        A9 00         LDA #$00                  ;\ Set sprite vertical speed to 0
CODE_03C728:        95 A1         STA $A1,x                 ; |
CODE_03C72A:        9D 3D 04      STA $043D,x               ;Set ??? to 0? Related to sprite falling and other movement-related speed.
CODE_03C72D:        60            RTS                       ;

CODE_03C72E:        A9 02         LDA #$02                  ;\INIT routine of bullet bill
CODE_03C730:        95 47         STA $47,x                 ;/Set direction of sprite to left
CODE_03C732:        A9 09         LDA #$09                  ;
CODE_03C734:        9D 90 04      STA $0490,x               ;
CODE_03C737:        60            RTS                       ;

CODE_03C738:        20 07 C7      JSR CODE_03C707           ;
CODE_03C73B:        BD B7 07      LDA $07B7,x               ;
CODE_03C73E:        29 10         AND #$10                  ;
CODE_03C740:        95 5E         STA $5E,x                 ;
CODE_03C742:        BD 38 02      LDA $0238,x               ;
CODE_03C745:        9D 3D 04      STA $043D,x               ;
CODE_03C748:        60            RTS                       ;

CODE_03C749:        AD CB 06      LDA $06CB                 ;
CODE_03C74C:        D0 0B         BNE CODE_03C759           ;
CODE_03C74E:        A9 00         LDA #$00                  ;
CODE_03C750:        8D D1 06      STA $06D1                 ;
CODE_03C753:        20 00 C7      JSR CODE_03C700           ;
CODE_03C756:        4C FA CB      JMP CODE_03CBFA           ;

CODE_03C759:        4C E2 CD      JMP CODE_03CDE2           ; Erase sprite

DATA_03C75C:        db $26,$2C,$32,$38,$20,$22,$24,$26
                    db $13,$14,$15,$16

CODE_03C768:        AD 9B 07      LDA $079B                 ;
CODE_03C76B:        D0 3A         BNE CODE_03C7A7           ;
CODE_03C76D:        E0 09         CPX #$09                  ;
CODE_03C76F:        B0 36         BCS CODE_03C7A7           ;
CODE_03C771:        A9 80         LDA #$80                  ;
CODE_03C773:        8D 9B 07      STA $079B                 ;
CODE_03C776:        A0 08         LDY #$08                  ;
CODE_03C778:        B9 1C 00      LDA $001C,y               ;
CODE_03C77B:        C9 11         CMP #$11                  ;
CODE_03C77D:        F0 29         BEQ CODE_03C7A8           ;
CODE_03C77F:        88            DEY                       ;
CODE_03C780:        10 F6         BPL CODE_03C778           ;
CODE_03C782:        EE D1 06      INC $06D1                 ;
CODE_03C785:        AD D1 06      LDA $06D1                 ;
CODE_03C788:        C9 07         CMP #$07                  ;
CODE_03C78A:        90 1B         BCC CODE_03C7A7           ;
CODE_03C78C:        A2 08         LDX #$08                  ;
CODE_03C78E:        B5 10         LDA $10,x                 ;
CODE_03C790:        F0 05         BEQ CODE_03C797           ;
CODE_03C792:        CA            DEX                       ;
CODE_03C793:        10 F9         BPL CODE_03C78E           ;
CODE_03C795:        30 0E         BMI CODE_03C7A5           ;
CODE_03C797:        74 29         STZ $29,x                 ;
CODE_03C799:        A9 11         LDA #$11                  ;\
CODE_03C79B:        95 1C         STA $1C,x                 ;/Sprite to generate: Lakitu
CODE_03C79D:        20 4E C7      JSR CODE_03C74E           ;
CODE_03C7A0:        A9 20         LDA #$20                  ;
CODE_03C7A2:        20 E8 C9      JSR CODE_03C9E8           ;
CODE_03C7A5:        A6 9E         LDX $9E                   ;
CODE_03C7A7:        60            RTS                       ;

CODE_03C7A8:        AD 37 02      LDA $0237                 ;
CODE_03C7AB:        C9 2C         CMP #$2C                  ;
CODE_03C7AD:        90 F8         BCC CODE_03C7A7           ;
CODE_03C7AF:        B9 29 00      LDA $0029,y               ;
CODE_03C7B2:        D0 F3         BNE CODE_03C7A7           ;
CODE_03C7B4:        B9 79 00      LDA $0079,y               ;
CODE_03C7B7:        95 79         STA $79,x                 ;
CODE_03C7B9:        B9 1A 02      LDA $021A,y               ;
CODE_03C7BC:        9D 1A 02      STA $021A,x               ;
CODE_03C7BF:        A9 01         LDA #$01                  ;
CODE_03C7C1:        95 BC         STA $BC,x                 ;
CODE_03C7C3:        B9 38 02      LDA $0238,y               ;
CODE_03C7C6:        38            SEC                       ;
CODE_03C7C7:        E9 08         SBC #$08                  ;
CODE_03C7C9:        9D 38 02      STA $0238,x               ;
CODE_03C7CC:        BD B7 07      LDA $07B7,x               ;
CODE_03C7CF:        29 03         AND #$03                  ;
CODE_03C7D1:        A8            TAY                       ;
CODE_03C7D2:        A2 02         LDX #$02                  ;
CODE_03C7D4:        B9 5C C7      LDA $C75C,y               ;
CODE_03C7D7:        95 01         STA $01,x                 ;
CODE_03C7D9:        C8            INY                       ;
CODE_03C7DA:        C8            INY                       ;
CODE_03C7DB:        C8            INY                       ;
CODE_03C7DC:        C8            INY                       ;
CODE_03C7DD:        CA            DEX                       ;
CODE_03C7DE:        10 F4         BPL CODE_03C7D4           ;
CODE_03C7E0:        A6 9E         LDX $9E                   ;
CODE_03C7E2:        20 20 D4      JSR CODE_03D420           ;
CODE_03C7E5:        A4 5D         LDY $5D                   ;
CODE_03C7E7:        C0 08         CPY #$08                  ;
CODE_03C7E9:        B0 0E         BCS CODE_03C7F9           ;
CODE_03C7EB:        A8            TAY                       ;
CODE_03C7EC:        BD B8 07      LDA $07B8,x               ;
CODE_03C7EF:        29 03         AND #$03                  ;
CODE_03C7F1:        F0 05         BEQ CODE_03C7F8           ;
CODE_03C7F3:        98            TYA                       ;
CODE_03C7F4:        49 FF         EOR #$FF                  ;
CODE_03C7F6:        A8            TAY                       ;
CODE_03C7F7:        C8            INY                       ;
CODE_03C7F8:        98            TYA                       ;
CODE_03C7F9:        20 07 C7      JSR CODE_03C707           ;
CODE_03C7FC:        A0 02         LDY #$02                  ;
CODE_03C7FE:        95 5E         STA $5E,x                 ;
CODE_03C800:        C9 00         CMP #$00                  ;
CODE_03C802:        30 01         BMI CODE_03C805           ;
CODE_03C804:        88            DEY                       ;
CODE_03C805:        94 47         STY $47,x                 ;
CODE_03C807:        A9 FD         LDA #$FD                  ;
CODE_03C809:        95 A1         STA $A1,x                 ;
CODE_03C80B:        A9 01         LDA #$01                  ;
CODE_03C80D:        95 10         STA $10,x                 ;
CODE_03C80F:        A9 05         LDA #$05                  ;
CODE_03C811:        95 29         STA $29,x                 ;
CODE_03C813:        60            RTS                       ;

DATA_03C814:        db $28,$38,$28,$38,$28    ;Castle firebar rotation speed data. Format:
                                              ;Firebar (clock), Fast Firebar (clock)
                                              ;Firebar (C-Clock), Fast Firebar (C-Clock)
                                              ;Long Firebar (Clock)

DATA_03C819:        db $00,$00,$10,$10,$00    ;When bit 4 is set, the firebar will rotate C-Clockwise
                                              ;Same format as above

;Firebar
CODE_03C81E:        20 46 C9      JSR CODE_03C946           ;Find a free sprite slot and place the sprite in the level.
CODE_03C821:        74 5E         STZ $5E,x                 ;No sprite horizontal speed.
CODE_03C823:        B5 1C         LDA $1C,x                 ;\Load sprite number
CODE_03C825:        38            SEC                       ; |Subtract $1B from it so we get index to 5 fire types
CODE_03C826:        E9 1B         SBC #$1B                  ; |Prepare for indexing
CODE_03C828:        A8            TAY                       ;/
CODE_03C829:        B9 14 C8      LDA DATA_03C814,y         ;\Get firebar rotation speed
CODE_03C82C:        9D 88 03      STA $0388,x               ;/Store in spinning speed of firebars
CODE_03C82F:        B9 19 C8      LDA DATA_03C819,y         ;\Get firebar rotation direction...
CODE_03C832:        9D 03 02      STA $0203,x               ;/
CODE_03C835:        BD 38 02      LDA $0238,x               ;\
CODE_03C838:        18            CLC                       ; |Sprite Ypos is 4px higher
CODE_03C839:        69 04         ADC #$04                  ; |So it will become centered in 1 16x16 block
CODE_03C83B:        9D 38 02      STA $0238,x               ;/
CODE_03C83E:        BD 1A 02      LDA $021A,x               ;\
CODE_03C841:        18            CLC                       ; |Sprite Xpos is 4px more to the right
CODE_03C842:        69 04         ADC #$04                  ; |So it will become centered in 1 16x16 block
CODE_03C844:        9D 1A 02      STA $021A,x               ;/
CODE_03C847:        B5 79         LDA $79,x                 ;\
CODE_03C849:        69 00         ADC #$00                  ; |Handle page boundary stuff or whatever.
CODE_03C84B:        95 79         STA $79,x                 ;/
CODE_03C84D:        4C FA CB      JMP CODE_03CBFA           ;

DATA_03C850:        db $80,$30,$40,$80,$30,$50,$50,$70
                    db $20,$40,$80,$A0,$70,$40,$90,$68
                    db $0E,$05,$06,$0E,$1C,$20,$10,$0C
                    db $1E,$22,$18,$14

DATA_03C86C:        db $10,$60,$20,$48

CODE_03C870:        AD 9B 07      LDA $079B                 ;
CODE_03C873:        D0 9E         BNE CODE_03C813           ;
CODE_03C875:        20 07 C7      JSR CODE_03C707           ;
CODE_03C878:        BD B8 07      LDA $07B8,x               ;
CODE_03C87B:        29 03         AND #$03                  ;
CODE_03C87D:        A8            TAY                       ;
CODE_03C87E:        B9 6C C8      LDA $C86C,y               ;
CODE_03C881:        8D 9B 07      STA $079B                 ;
CODE_03C884:        A0 03         LDY #$03                  ;
CODE_03C886:        AD CC 06      LDA $06CC                 ;
CODE_03C889:        F0 01         BEQ CODE_03C88C           ;
CODE_03C88B:        C8            INY                       ;
CODE_03C88C:        84 00         STY $00                   ;
CODE_03C88E:        E4 00         CPX $00                   ;
CODE_03C890:        90 03         BCC CODE_03C895           ;
CODE_03C892:        4C 13 C8      JMP CODE_03C813           ;

CODE_03C895:        BD B7 07      LDA $07B7,x               ;
CODE_03C898:        29 03         AND #$03                  ;
CODE_03C89A:        85 00         STA $00                   ;
CODE_03C89C:        85 01         STA $01                   ;
CODE_03C89E:        A9 FB         LDA #$FB                  ;
CODE_03C8A0:        95 A1         STA $A1,x                 ;
CODE_03C8A2:        A9 00         LDA #$00                  ;
CODE_03C8A4:        A4 5D         LDY $5D                   ;
CODE_03C8A6:        F0 07         BEQ CODE_03C8AF           ;
CODE_03C8A8:        A9 04         LDA #$04                  ;
CODE_03C8AA:        C0 19         CPY #$19                  ;
CODE_03C8AC:        90 01         BCC CODE_03C8AF           ;
CODE_03C8AE:        0A            ASL A                     ;
CODE_03C8AF:        48            PHA                       ;
CODE_03C8B0:        18            CLC                       ;
CODE_03C8B1:        65 00         ADC $00                   ;
CODE_03C8B3:        85 00         STA $00                   ;
CODE_03C8B5:        BD B8 07      LDA $07B8,x               ;
CODE_03C8B8:        29 03         AND #$03                  ;
CODE_03C8BA:        F0 07         BEQ CODE_03C8C3           ;
CODE_03C8BC:        BD B9 07      LDA $07B9,x               ;
CODE_03C8BF:        29 0F         AND #$0F                  ;
CODE_03C8C1:        85 00         STA $00                   ;
CODE_03C8C3:        68            PLA                       ;
CODE_03C8C4:        18            CLC                       ;
CODE_03C8C5:        65 01         ADC $01                   ;
CODE_03C8C7:        A8            TAY                       ;
CODE_03C8C8:        B9 60 C8      LDA $C860,y               ;
CODE_03C8CB:        95 5E         STA $5E,x                 ;
CODE_03C8CD:        A9 01         LDA #$01                  ;
CODE_03C8CF:        95 47         STA $47,x                 ;
CODE_03C8D1:        A5 5D         LDA $5D                   ;
CODE_03C8D3:        D0 12         BNE CODE_03C8E7           ;
CODE_03C8D5:        A4 00         LDY $00                   ;
CODE_03C8D7:        98            TYA                       ;
CODE_03C8D8:        29 02         AND #$02                  ;
CODE_03C8DA:        F0 0B         BEQ CODE_03C8E7           ;
CODE_03C8DC:        B5 5E         LDA $5E,x                 ;
CODE_03C8DE:        49 FF         EOR #$FF                  ;
CODE_03C8E0:        18            CLC                       ;
CODE_03C8E1:        69 01         ADC #$01                  ;
CODE_03C8E3:        95 5E         STA $5E,x                 ;
CODE_03C8E5:        F6 47         INC $47,x                 ;
CODE_03C8E7:        98            TYA                       ;
CODE_03C8E8:        29 02         AND #$02                  ;
CODE_03C8EA:        F0 10         BEQ CODE_03C8FC           ;
CODE_03C8EC:        AD 19 02      LDA $0219                 ;
CODE_03C8EF:        18            CLC                       ;
CODE_03C8F0:        79 50 C8      ADC $C850,y               ;
CODE_03C8F3:        9D 1A 02      STA $021A,x               ;
CODE_03C8F6:        A5 78         LDA $78                   ;
CODE_03C8F8:        69 00         ADC #$00                  ;
CODE_03C8FA:        80 0E         BRA CODE_03C90A           ;

CODE_03C8FC:        AD 19 02      LDA $0219                 ;
CODE_03C8FF:        38            SEC                       ;
CODE_03C900:        F9 50 C8      SBC $C850,y               ;
CODE_03C903:        9D 1A 02      STA $021A,x               ;
CODE_03C906:        A5 78         LDA $78                   ;
CODE_03C908:        E9 00         SBC #$00                  ;
CODE_03C90A:        95 79         STA $79,x                 ;
CODE_03C90C:        A9 01         LDA #$01                  ;
CODE_03C90E:        95 10         STA $10,x                 ;
CODE_03C910:        95 BC         STA $BC,x                 ;
CODE_03C912:        A9 F8         LDA #$F8                  ;
CODE_03C914:        9D 38 02      STA $0238,x               ;
CODE_03C917:        60            RTS                       ;

CODE_03C918:        20 46 C9      JSR CODE_03C946           ;Find a free sprite slot and place the sprite in the level.
CODE_03C91B:        8E 68 03      STX $0368                 ;
CODE_03C91E:        9C 63 03      STZ $0363                 ;
CODE_03C921:        9C 69 03      STZ $0369                 ;
CODE_03C924:        BD 1A 02      LDA $021A,x               ;
CODE_03C927:        8D 66 03      STA $0366                 ;
CODE_03C92A:        A9 DF         LDA #$DF                  ;
CODE_03C92C:        8D 9C 07      STA $079C                 ;
CODE_03C92F:        95 47         STA $47,x                 ;
CODE_03C931:        A9 20         LDA #$20                  ;
CODE_03C933:        8D 64 03      STA $0364                 ;
CODE_03C936:        9D 92 07      STA $0792,x               ;
CODE_03C939:        9D 57 02      STA $0257,x               ;
CODE_03C93C:        A9 05         LDA #$05                  ;
CODE_03C93E:        8D 83 02      STA $0283                 ;
CODE_03C941:        4A            LSR A                     ;
CODE_03C942:        8D 65 03      STA $0365                 ;
CODE_03C945:        60            RTS                       ;

;Find a free sprite slot and place the sprite in the level.
CODE_03C946:        A0 FF         LDY #$FF                  ;\
CODE_03C948:        C8            INY                       ; |Find a free sprite slot
CODE_03C949:        B9 10 00      LDA $0010,y               ; |
CODE_03C94C:        D0 FA         BNE CODE_03C948           ;/
CODE_03C94E:        8C CF 06      STY $06CF                 ;Store the index of the free sprite slot
CODE_03C951:        8A            TXA                       ;Sprite index -> to accumulator
CODE_03C952:        09 80         ORA #$80                  ; OR 0x80
CODE_03C954:        99 10 00      STA $0010,y               ;Store into sprite on-screen flag
CODE_03C957:        B5 79         LDA $79,x                 ;\Sprite xpos high byte
CODE_03C959:        99 79 00      STA $0079,y               ;/
CODE_03C95C:        BD 1A 02      LDA $021A,x               ;\
CODE_03C95F:        99 1A 02      STA $021A,y               ;/Sprite xpos low byte
CODE_03C962:        A9 01         LDA #$01                  ;\
CODE_03C964:        95 10         STA $10,x                 ;/Sprite off-screen flag?
CODE_03C966:        99 BC 00      STA $00BC,y               ;"position of sprites"
CODE_03C969:        BD 38 02      LDA $0238,x               ;\
CODE_03C96C:        99 38 02      STA $0238,y               ;/Sprite Ypos
CODE_03C96F:        60            RTS                       ;

DATA_03C970:        db $90,$80,$70,$90        ;Bowser's fireball possible Y positions

DATA_03C974:        db $FF,$01                ;Fireball Y Speed (both directions, but fireball goes 1-way only?)

CODE_03C976:        AD 9B 07      LDA $079B                 ;\Bowser Fire generator. Timer to spawn next sprite (generators)
CODE_03C979:        D0 F4         BNE CODE_03C96F           ;/If $079B != 00, return
CODE_03C97B:        9D 3D 04      STA $043D,x               ;Sprite vertical speed = 00
CODE_03C97E:        A9 06         LDA #$06                  ;
CODE_03C980:        8D 4B 01      STA $014B                 ;
CODE_03C983:        A9 18         LDA #$18                  ;
CODE_03C985:        8D 4C 0F      STA $0F4C                 ;
CODE_03C988:        8E 4D 0F      STX $0F4D                 ;
CODE_03C98B:        AC 68 03      LDY $0368                 ;\Index of bowser sprite
CODE_03C98E:        B9 1C 00      LDA $001C,y               ; |
CODE_03C991:        C9 2D         CMP #$2D                  ; |If there's a bowser sprite present, branch
CODE_03C993:        F0 4F         BEQ CODE_03C9E4           ;/
CODE_03C995:        20 F9 D6      JSR CODE_03D6F9           ;\Get timer delay of next fireball spawn
CODE_03C998:        18            CLC                       ; |make them spawn #$20 frames later by default.
CODE_03C999:        69 20         ADC #$20                  ;/
CODE_03C99B:        AC CC 06      LDY $06CC                 ;\If hard flag (levels after 5-3)
CODE_03C99E:        F0 03         BEQ CODE_03C9A3           ; |
CODE_03C9A0:        38            SEC                       ; |make fireballs spawn #$10 frames later instead of #$20
CODE_03C9A1:        E9 10         SBC #$10                  ; |
CODE_03C9A3:        8D 9B 07      STA $079B                 ;/Timer to spawn next sprite
CODE_03C9A6:        BD B7 07      LDA $07B7,x               ;\
CODE_03C9A9:        29 03         AND #$03                  ; |Get random value and make the range $00-$03
CODE_03C9AB:        9D 1D 04      STA $041D,x               ; |
CODE_03C9AE:        A8            TAY                       ; |
CODE_03C9AF:        B9 70 C9      LDA $C970,y               ; |Store bowser fireball Y position and into $041D,x
CODE_03C9B2:        9D 38 02      STA $0238,x               ;/
CODE_03C9B5:        AD 1D 07      LDA $071D                 ;\
CODE_03C9B8:        18            CLC                       ; |X-Position of fireball = right border of screen + #$20
CODE_03C9B9:        69 20         ADC #$20                  ; |
CODE_03C9BB:        9D 1A 02      STA $021A,x               ; |
CODE_03C9BE:        AD 1B 07      LDA $071B                 ; |
CODE_03C9C1:        69 00         ADC #$00                  ; |
CODE_03C9C3:        95 79         STA $79,x                 ;/
CODE_03C9C5:        9C 4C 0F      STZ $0F4C                 ;Zero out how long bowser holds his breath for firing
CODE_03C9C8:        9C 4D 0F      STZ $0F4D                 ;
CODE_03C9CB:        9C 4B 01      STZ $014B                 ;
CODE_03C9CE:        A9 17         LDA #$17                  ;\Play fire sound effect
CODE_03C9D0:        8D 03 16      STA $1603                 ;/(note: NOT fire breath from bowser)
CODE_03C9D3:        A9 08         LDA #$08                  ;
CODE_03C9D5:        9D 90 04      STA $0490,x               ;
CODE_03C9D8:        A9 01         LDA #$01                  ;
CODE_03C9DA:        95 BC         STA $BC,x                 ;
CODE_03C9DC:        95 10         STA $10,x                 ;Set sprite on-screen flag
CODE_03C9DE:        4A            LSR A                     ;A = 00
CODE_03C9DF:        9D 02 04      STA $0402,x               ;
CODE_03C9E2:        95 29         STA $29,x                 ;
CODE_03C9E4:        8E 4E 0F      STX $0F4E                 ;Generated sprite index to $0F4E
CODE_03C9E7:        60            RTS                       ;

CODE_03C9E8:        9D 38 02      STA $0238,x               ;
CODE_03C9EB:        AD 1D 07      LDA $071D                 ;
CODE_03C9EE:        18            CLC                       ;
CODE_03C9EF:        69 20         ADC #$20                  ;
CODE_03C9F1:        9D 1A 02      STA $021A,x               ;
CODE_03C9F4:        AD 1B 07      LDA $071B                 ;
CODE_03C9F7:        69 00         ADC #$00                  ;
CODE_03C9F9:        95 79         STA $79,x                 ;
CODE_03C9FB:        4C 32 CA      JMP CODE_03CA32           ;

CODE_03C9FE:        B9 1A 02      LDA $021A,y               ;
CODE_03CA01:        38            SEC                       ;
CODE_03CA02:        E9 0E         SBC #$0E                  ;
CODE_03CA04:        9D 1A 02      STA $021A,x               ;
CODE_03CA07:        B9 79 00      LDA $0079,y               ;
CODE_03CA0A:        95 79         STA $79,x                 ;
CODE_03CA0C:        B9 38 02      LDA $0238,y               ;
CODE_03CA0F:        18            CLC                       ;
CODE_03CA10:        69 08         ADC #$08                  ;
CODE_03CA12:        9D 38 02      STA $0238,x               ;
CODE_03CA15:        BD B7 07      LDA $07B7,x               ;
CODE_03CA18:        29 03         AND #$03                  ;
CODE_03CA1A:        9D 1D 04      STA $041D,x               ;
CODE_03CA1D:        A8            TAY                       ;
CODE_03CA1E:        B9 70 C9      LDA $C970,y               ;
CODE_03CA21:        A0 00         LDY #$00                  ;
CODE_03CA23:        DD 38 02      CMP $0238,x               ;
CODE_03CA26:        90 01         BCC CODE_03CA29           ;
CODE_03CA28:        C8            INY                       ;
CODE_03CA29:        B9 74 C9      LDA $C974,y               ;
CODE_03CA2C:        9D 3D 04      STA $043D,x               ;
CODE_03CA2F:        9C CB 06      STZ $06CB                 ;
CODE_03CA32:        A9 08         LDA #$08                  ;
CODE_03CA34:        9D 90 04      STA $0490,x               ;
CODE_03CA37:        A9 01         LDA #$01                  ;
CODE_03CA39:        95 BC         STA $BC,x                 ;
CODE_03CA3B:        95 10         STA $10,x                 ;
CODE_03CA3D:        4A            LSR A                     ;
CODE_03CA3E:        9D 02 04      STA $0402,x               ;
CODE_03CA41:        95 29         STA $29,x                 ;
CODE_03CA43:        60            RTS                       ;

DATA_03CA44:        db $00,$30,$60,$60,$00,$20,$60

DATA_03CA4A:        db $40,$70,$40,$60,$30

CODE_03CA50:        AD 9B 07      LDA $079B                 ;
CODE_03CA53:        D0 49         BNE CODE_03CA9E           ;
CODE_03CA55:        A9 20         LDA #$20                  ;
CODE_03CA57:        8D 9B 07      STA $079B                 ;
CODE_03CA5A:        CE D7 06      DEC $06D7                 ;
CODE_03CA5D:        A0 0A         LDY #$0A                  ;
CODE_03CA5F:        88            DEY                       ;
CODE_03CA60:        B9 1C 00      LDA $001C,y               ;
CODE_03CA63:        C9 31         CMP #$31                  ;
CODE_03CA65:        D0 F8         BNE CODE_03CA5F           ;
CODE_03CA67:        B9 1A 02      LDA $021A,y               ;
CODE_03CA6A:        38            SEC                       ;
CODE_03CA6B:        E9 30         SBC #$30                  ;
CODE_03CA6D:        48            PHA                       ;
CODE_03CA6E:        B9 79 00      LDA $0079,y               ;
CODE_03CA71:        E9 00         SBC #$00                  ;
CODE_03CA73:        85 00         STA $00                   ;
CODE_03CA75:        AD D7 06      LDA $06D7                 ;
CODE_03CA78:        18            CLC                       ;
CODE_03CA79:        79 29 00      ADC $0029,y               ;
CODE_03CA7C:        A8            TAY                       ;
CODE_03CA7D:        68            PLA                       ;
CODE_03CA7E:        18            CLC                       ;
CODE_03CA7F:        79 44 CA      ADC $CA44,y               ;
CODE_03CA82:        9D 1A 02      STA $021A,x               ;
CODE_03CA85:        A5 00         LDA $00                   ;
CODE_03CA87:        69 00         ADC #$00                  ;
CODE_03CA89:        95 79         STA $79,x                 ;
CODE_03CA8B:        B9 4A CA      LDA $CA4A,y               ;
CODE_03CA8E:        9D 38 02      STA $0238,x               ;
CODE_03CA91:        A9 01         LDA #$01                  ;
CODE_03CA93:        95 BC         STA $BC,x                 ;
CODE_03CA95:        95 10         STA $10,x                 ;
CODE_03CA97:        4A            LSR A                     ;
CODE_03CA98:        95 5E         STA $5E,x                 ;
CODE_03CA9A:        A9 08         LDA #$08                  ;
CODE_03CA9C:        95 A1         STA $A1,x                 ;
CODE_03CA9E:        60            RTS                       ;

DATA_03CA9F:        db $01,$02,$04,$08,$10,$20,$40,$80

DATA_03CAA7:        db $40,$30,$90,$50,$20,$60,$A0,$70

DATA_03CAAF:        db $0A,$0B

CODE_03CAB1:        AD 9B 07      LDA $079B                 ;
CODE_03CAB4:        D0 6B         BNE CODE_03CB21           ;
CODE_03CAB6:        A5 5C         LDA $5C                   ;
CODE_03CAB8:        D0 54         BNE CODE_03CB0E           ;
CODE_03CABA:        E0 03         CPX #$03                  ;
CODE_03CABC:        B0 63         BCS CODE_03CB21           ;
CODE_03CABE:        A0 00         LDY #$00                  ;\
CODE_03CAC0:        BD B7 07      LDA $07B7,x               ; |if RNG == $AA-$FF, y = 0
CODE_03CAC3:        C9 AA         CMP #$AA                  ; |else y = 1
CODE_03CAC5:        90 01         BCC CODE_03CAC8           ; |if world == 2, y = 0
CODE_03CAC7:        C8            INY                       ; |else y = 1
CODE_03CAC8:        AD 5F 07      LDA $075F                 ; |
CODE_03CACB:        C9 01         CMP #$01                  ; |
CODE_03CACD:        F0 01         BEQ CODE_03CAD0           ; |
CODE_03CACF:        C8            INY                       ; |
CODE_03CAD0:        98            TYA                       ; |
CODE_03CAD1:        29 01         AND #$01                  ; |
CODE_03CAD3:        A8            TAY                       ;/
CODE_03CAD4:        B9 AF CA      LDA $CAAF,y               ;\
CODE_03CAD7:        95 1C         STA $1C,x                 ;/Sprite to generate: Red or Green swimming cheep-cheep depending on above pseudocode
CODE_03CAD9:        AD DD 06      LDA $06DD                 ;
CODE_03CADC:        C9 FF         CMP #$FF                  ;
CODE_03CADE:        D0 03         BNE CODE_03CAE3           ;
CODE_03CAE0:        9C DD 06      STZ $06DD                 ;
CODE_03CAE3:        BD B7 07      LDA $07B7,x               ;
CODE_03CAE6:        29 07         AND #$07                  ;
CODE_03CAE8:        A8            TAY                       ;
CODE_03CAE9:        B9 9F CA      LDA $CA9F,y               ;
CODE_03CAEC:        2C DD 06      BIT $06DD                 ;
CODE_03CAEF:        F0 06         BEQ CODE_03CAF7           ;
CODE_03CAF1:        C8            INY                       ;
CODE_03CAF2:        98            TYA                       ;
CODE_03CAF3:        29 07         AND #$07                  ;
CODE_03CAF5:        80 F1         BRA CODE_03CAE8           ;

CODE_03CAF7:        0D DD 06      ORA $06DD                 ;
CODE_03CAFA:        8D DD 06      STA $06DD                 ;
CODE_03CAFD:        B9 A7 CA      LDA $CAA7,y               ;
CODE_03CB00:        20 E8 C9      JSR CODE_03C9E8           ;
CODE_03CB03:        9D 1D 04      STA $041D,x               ;
CODE_03CB06:        A9 20         LDA #$20                  ;
CODE_03CB08:        8D 9B 07      STA $079B                 ;
CODE_03CB0B:        4C 0B C6      JMP CODE_03C60B           ;

CODE_03CB0E:        A0 FF         LDY #$FF                  ;
CODE_03CB10:        C8            INY                       ;
CODE_03CB11:        C0 09         CPY #$09                  ;
CODE_03CB13:        B0 0D         BCS CODE_03CB22           ;
CODE_03CB15:        B9 10 00      LDA $0010,y               ;
CODE_03CB18:        F0 F6         BEQ CODE_03CB10           ;
CODE_03CB1A:        B9 1C 00      LDA $001C,y               ;
CODE_03CB1D:        C9 08         CMP #$08                  ;
CODE_03CB1F:        D0 EF         BNE CODE_03CB10           ;
CODE_03CB21:        60            RTS                       ;

CODE_03CB22:        A9 09         LDA #$09                  ;\
CODE_03CB24:        8D 03 16      STA $1603                 ;/Quake sound?
CODE_03CB27:        A9 08         LDA #$08                  ;
CODE_03CB29:        D0 AC         BNE CODE_03CAD7           ;
CODE_03CB2B:        A0 00         LDY #$00                  ;
CODE_03CB2D:        38            SEC                       ;
CODE_03CB2E:        E9 37         SBC #$37                  ;
CODE_03CB30:        48            PHA                       ;
CODE_03CB31:        C9 04         CMP #$04                  ;
CODE_03CB33:        B0 0B         BCS CODE_03CB40           ;
CODE_03CB35:        48            PHA                       ;
CODE_03CB36:        A0 06         LDY #$06                  ;
CODE_03CB38:        AD 6A 07      LDA $076A                 ;"More difficult quest" flag
CODE_03CB3B:        F0 02         BEQ CODE_03CB3F           ;
CODE_03CB3D:        A0 02         LDY #$02                  ;
CODE_03CB3F:        68            PLA                       ;
CODE_03CB40:        84 01         STY $01                   ;
CODE_03CB42:        A0 B0         LDY #$B0                  ;
CODE_03CB44:        29 02         AND #$02                  ;
CODE_03CB46:        F0 02         BEQ CODE_03CB4A           ;
CODE_03CB48:        A0 70         LDY #$70                  ;
CODE_03CB4A:        84 00         STY $00                   ;
CODE_03CB4C:        AD 1B 07      LDA $071B                 ;
CODE_03CB4F:        85 02         STA $02                   ;
CODE_03CB51:        AD 1D 07      LDA $071D                 ;
CODE_03CB54:        85 03         STA $03                   ;
CODE_03CB56:        A0 02         LDY #$02                  ;
CODE_03CB58:        68            PLA                       ;
CODE_03CB59:        4A            LSR A                     ;
CODE_03CB5A:        90 01         BCC CODE_03CB5D           ;
CODE_03CB5C:        C8            INY                       ;
CODE_03CB5D:        8C D3 06      STY $06D3                 ;
CODE_03CB60:        A2 FF         LDX #$FF                  ;
CODE_03CB62:        E8            INX                       ;
CODE_03CB63:        E0 09         CPX #$09                  ;
CODE_03CB65:        B0 2F         BCS CODE_03CB96           ;
CODE_03CB67:        B5 10         LDA $10,x                 ;
CODE_03CB69:        D0 F7         BNE CODE_03CB62           ;
CODE_03CB6B:        A5 01         LDA $01                   ;
CODE_03CB6D:        95 1C         STA $1C,x                 ;
CODE_03CB6F:        A5 02         LDA $02                   ;
CODE_03CB71:        95 79         STA $79,x                 ;
CODE_03CB73:        A5 03         LDA $03                   ;
CODE_03CB75:        9D 1A 02      STA $021A,x               ;
CODE_03CB78:        18            CLC                       ;
CODE_03CB79:        69 18         ADC #$18                  ;
CODE_03CB7B:        85 03         STA $03                   ;
CODE_03CB7D:        A5 02         LDA $02                   ;
CODE_03CB7F:        69 00         ADC #$00                  ;
CODE_03CB81:        85 02         STA $02                   ;
CODE_03CB83:        A5 00         LDA $00                   ;
CODE_03CB85:        9D 38 02      STA $0238,x               ;
CODE_03CB88:        A9 01         LDA #$01                  ;
CODE_03CB8A:        95 BC         STA $BC,x                 ;
CODE_03CB8C:        95 10         STA $10,x                 ;
CODE_03CB8E:        20 0B C6      JSR CODE_03C60B           ;
CODE_03CB91:        CE D3 06      DEC $06D3                 ;
CODE_03CB94:        D0 CA         BNE CODE_03CB60           ;
CODE_03CB96:        4C FF C5      JMP CODE_03C5FF           ;

CODE_03CB99:        A9 01         LDA #$01                  ;
CODE_03CB9B:        95 5E         STA $5E,x                 ;
CODE_03CB9D:        4A            LSR A                     ;
CODE_03CB9E:        95 29         STA $29,x                 ;
CODE_03CBA0:        95 A1         STA $A1,x                 ;
CODE_03CBA2:        BD 38 02      LDA $0238,x               ;
CODE_03CBA5:        9D 3D 04      STA $043D,x               ;
CODE_03CBA8:        38            SEC                       ;
CODE_03CBA9:        E9 18         SBC #$18                  ;
CODE_03CBAB:        9D 1D 04      STA $041D,x               ;
CODE_03CBAE:        A9 09         LDA #$09                  ;
CODE_03CBB0:        A9 0C         LDA #$0C                  ;
CODE_03CBB2:        4C FC CB      JMP CODE_03CBFC           ;

CODE_03CBB5:        B5 1C         LDA $1C,x                 ;\ Generator to create
CODE_03CBB7:        8D CB 06      STA $06CB                 ;/ Store in this RAM address
CODE_03CBBA:        38            SEC                       ;\ Subtract sprite by $12
CODE_03CBBB:        E9 12         SBC #$12                  ;/
CODE_03CBBD:        0A            ASL A                     ;\ Multiply by 2
CODE_03CBBE:        A8            TAY                       ;/ To use it as an index
CODE_03CBBF:        B9 CC CB      LDA $CBCC,y               ;\
CODE_03CBC2:        85 04         STA $04                   ; |
CODE_03CBC4:        B9 CD CB      LDA $CBCD,y               ; | Jump to pointer tables below.
CODE_03CBC7:        85 05         STA $05                   ; |
CODE_03CBC9:        6C 04 00      JMP ($0004)               ;/

;MAIN Routines for generators 12-17 (redirected from INIT routine pointer table)
PNTR_03CBCC:        dw CODE_03C768            ;12 - Lakitu generator (?)
                    dw CODE_03CBD8            ;13 - Nothing at all (crashes)
                    dw CODE_03C870            ;14 - Red flying cheep cheep generator
                    dw CODE_03C976            ;15 - Bowser's fire generator
                    dw CODE_03CA50            ;16 - Fireworks generator
                    dw CODE_03CAB1            ;17 - Bullet bill/swimming cheep cheep generator

CODE_03CBD8:        60            RTS                       ;Return

CODE_03CBD9:        A0 09         LDY #$09                  ;\ Disable lakitu generator sprite
CODE_03CBDB:        B9 1C 00      LDA $001C,y               ; |Find a lakitu, any of them
CODE_03CBDE:        C9 11         CMP #$11                  ; |
CODE_03CBE0:        D0 05         BNE CODE_03CBE7           ; |
CODE_03CBE2:        A9 01         LDA #$01                  ; |Tell them to go off-screen to the left without doing
CODE_03CBE4:        99 29 00      STA $0029,y               ; |anything.
CODE_03CBE7:        88            DEY                       ; |
CODE_03CBE8:        10 F1         BPL CODE_03CBDB           ; |
CODE_03CBEA:        A9 00         LDA #$00                  ; |
CODE_03CBEC:        8D CB 06      STA $06CB                 ; |
CODE_03CBEF:        95 10         STA $10,x                 ; |Disable on-screen flag?
CODE_03CBF1:        60            RTS                       ;/Return

CODE_03CBF2:        A9 02         LDA #$02                  ;
CODE_03CBF4:        95 47         STA $47,x                 ;
CODE_03CBF6:        A9 F8         LDA #$F8                  ;
CODE_03CBF8:        95 5E         STA $5E,x                 ;
CODE_03CBFA:        A9 03         LDA #$03                  ;
CODE_03CBFC:        9D 90 04      STA $0490,x               ;
CODE_03CBFF:        60            RTS                       ;

CODE_03CC00:        DE 38 02      DEC $0238,x               ;
CODE_03CC03:        DE 38 02      DEC $0238,x               ;
CODE_03CC06:        AC CC 06      LDY $06CC                 ;
CODE_03CC09:        D0 05         BNE CODE_03CC10           ;
CODE_03CC0B:        A0 02         LDY #$02                  ;
CODE_03CC0D:        20 95 CC      JSR CODE_03CC95           ;
CODE_03CC10:        A0 FF         LDY #$FF                  ;
CODE_03CC12:        AD A0 03      LDA $03A0                 ;
CODE_03CC15:        95 29         STA $29,x                 ;
CODE_03CC17:        10 02         BPL CODE_03CC1B           ;
CODE_03CC19:        8A            TXA                       ;
CODE_03CC1A:        A8            TAY                       ;
CODE_03CC1B:        8C A0 03      STY $03A0                 ;
CODE_03CC1E:        A9 00         LDA #$00                  ;
CODE_03CC20:        95 47         STA $47,x                 ;
CODE_03CC22:        A8            TAY                       ;
CODE_03CC23:        20 95 CC      JSR CODE_03CC95           ;
CODE_03CC26:        A9 FF         LDA #$FF                  ;
CODE_03CC28:        9D A2 03      STA $03A2,x               ;
CODE_03CC2B:        4C 4D CC      JMP CODE_03CC4D           ;

CODE_03CC2E:        A9 00         LDA #$00                  ;
CODE_03CC30:        95 5E         STA $5E,x                 ;
CODE_03CC32:        4C 4D CC      JMP CODE_03CC4D           ;

CODE_03CC35:        A0 40         LDY #$40                  ;
CODE_03CC37:        BD 38 02      LDA $0238,x               ;
CODE_03CC3A:        10 07         BPL CODE_03CC43           ;
CODE_03CC3C:        49 FF         EOR #$FF                  ;
CODE_03CC3E:        18            CLC                       ;
CODE_03CC3F:        69 01         ADC #$01                  ;
CODE_03CC41:        A0 C0         LDY #$C0                  ;
CODE_03CC43:        9D 02 04      STA $0402,x               ;
CODE_03CC46:        98            TYA                       ;
CODE_03CC47:        18            CLC                       ;
CODE_03CC48:        7D 38 02      ADC $0238,x               ;
CODE_03CC4B:        95 5E         STA $5E,x                 ;
CODE_03CC4D:        20 26 C7      JSR CODE_03C726           ;
CODE_03CC50:        A9 05         LDA #$05                  ;
CODE_03CC52:        A4 5C         LDY $5C                   ;
CODE_03CC54:        C0 03         CPY #$03                  ;
CODE_03CC56:        F0 07         BEQ CODE_03CC5F           ;
CODE_03CC58:        AC CC 06      LDY $06CC                 ;
CODE_03CC5B:        D0 02         BNE CODE_03CC5F           ;
CODE_03CC5D:        A9 06         LDA #$06                  ;
CODE_03CC5F:        9D 90 04      STA $0490,x               ;
CODE_03CC62:        60            RTS                       ;

CODE_03CC63:        20 6F CC      JSR CODE_03CC6F           ;
CODE_03CC66:        4C 6C CC      JMP CODE_03CC6C           ;

CODE_03CC69:        20 7B CC      JSR CODE_03CC7B           ;
CODE_03CC6C:        4C 50 CC      JMP CODE_03CC50           ;

CODE_03CC6F:        A9 10         LDA #$10                  ;
CODE_03CC71:        9D 3D 04      STA $043D,x               ;
CODE_03CC74:        A9 FF         LDA #$FF                  ;
CODE_03CC76:        95 A1         STA $A1,x                 ;
CODE_03CC78:        4C 84 CC      JMP CODE_03CC84           ;

CODE_03CC7B:        A9 F0         LDA #$F0                  ;
CODE_03CC7D:        9D 3D 04      STA $043D,x               ;
CODE_03CC80:        A9 00         LDA #$00                  ;
CODE_03CC82:        95 A1         STA $A1,x                 ;
CODE_03CC84:        A0 01         LDY #$01                  ;
CODE_03CC86:        20 95 CC      JSR CODE_03CC95           ;
CODE_03CC89:        A9 04         LDA #$04                  ;
CODE_03CC8B:        9D 90 04      STA $0490,x               ;
CODE_03CC8E:        60            RTS                       ;

DATA_03CC8F:        db $08,$0C,$F8

DATA_03CC92:        db $00,$00,$FF

CODE_03CC95:        BD 1A 02      LDA $021A,x               ;
CODE_03CC98:        18            CLC                       ;
CODE_03CC99:        79 8F CC      ADC $CC8F,y               ;
CODE_03CC9C:        9D 1A 02      STA $021A,x               ;
CODE_03CC9F:        B5 79         LDA $79,x                 ;
CODE_03CCA1:        79 92 CC      ADC $CC92,y               ;
CODE_03CCA4:        95 79         STA $79,x                 ;
CODE_03CCA6:        60            RTS                       ;

CODE_03CCA7:        60            RTS                       ;

CODE_03CCA8:        A6 9E         LDX $9E                   ;Get sprite index
CODE_03CCAA:        A9 00         LDA #$00                  ;load 00 into A
CODE_03CCAC:        B4 1C         LDY $1C,x                 ;Load current sprite number
CODE_03CCAE:        C0 15         CPY #$15                  ;\If it is smaller than $15 ($00-$14)
CODE_03CCB0:        90 03         BCC CODE_03CCB5           ;/Skip the next 2 lines. 
CODE_03CCB2:        98            TYA                       ;
CODE_03CCB3:        E9 14         SBC #$14                  ;
CODE_03CCB5:        0A            ASL A                     ;Get index to next table
CODE_03CCB6:        A8            TAY                       ;A -> Y
CODE_03CCB7:        B9 C4 CC      LDA $CCC4,y               ;\
CODE_03CCBA:        85 04         STA $04                   ; |Load 16-bit pointer tables
CODE_03CCBC:        B9 C5 CC      LDA $CCC5,y               ; |
CODE_03CCBF:        85 05         STA $05                   ; |
CODE_03CCC1:        6C 04 00      JMP ($0004)               ;/

;MAIN ROUTINES for sprites $14-$35
PNTR_03CCC4:        dw CODE_03CD12            ;Sprites $0-$14
                    dw CODE_03CD73            ;$15 - Bowser's fire generator
                    dw CODE_03D761            ;$16 - Fireworks generator
                    dw CODE_03CD08            ;$17 - Bullet Bill/Cheep Cheep generator
                    dw CODE_03CD08            ;$18 - Disable Lakitu generator (nothing in MAIN though)
                    dw CODE_03CD08            ;$19 - Nothing
                    dw CODE_03CD08            ;$1A - Nothing
                    dw CODE_03CD85            ;$1B - Firebar (Clockwise)
                    dw CODE_03CD85            ;$1C - Fast Firebar (Clockwise)
                    dw CODE_03CD85            ;$1D - Firebar (Counter-Clockwise)
                    dw CODE_03CD85            ;$1E - Fast Firebar (Counter-Clockwise)
                    dw CODE_03CD85            ;$1F - Long Fire Bar (Clockwise)
                    dw CODE_03CD85            ;$20 - Nothing? Related to the firebars above?
                    dw CODE_03CD85            ;$21 - Nothing? Related to the firebars above?
                    dw CODE_03CD85            ;$22 - Nothing? Related to the firebars above?
                    dw CODE_03CD08            ;$23 - Nothing.
                    dw CODE_03CDA3            ;$24 - Lift (Balance)
                    dw CODE_03CDA3            ;$25 - Lift (Down then Up)
                    dw CODE_03CDA3            ;$26 - Lift (Continuous up)
                    dw CODE_03CDA3            ;$27 - Lift (Continuous down)
                    dw CODE_03CDA3            ;$28 - Lift (Left the Right)
                    dw CODE_03CDA3            ;$29 - Lift (Fall)
                    dw CODE_03CDA3            ;$2A - Lift (Continuous right)
                    dw CODE_03CD8B            ;$2B - Short lift (Up)
                    dw CODE_03CD8B            ;$2C - Short lift (Down)
                    dw CODE_03D55E            ;$2D - Bowser
                    dw CODE_03BDC3            ;$2E - ???
                    dw CODE_03BA31            ;$2F - ???
                    dw CODE_03CD08            ;$30 - Flagpole?
                    dw CODE_03D7AF            ;$31 - Timer->Score and level end controller sprite + end level flag?
                    dw CODE_03B991            ;$32 - Red springboard
                    dw CODE_03CD08            ;$33 - Nothing
                    dw CODE_03B839            ;$34 - Warp Zone
                    dw CODE_03CD09            ;$35 - Toad/Princess

CODE_03CD08:        60            RTS                       ;

CODE_03CD09:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03CD0C:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CD0F:        4C EF EE      JMP CODE_03EEEF           ;

CODE_03CD12:        A9 20         LDA #$20                  ;\Handle sprites $00-$14
CODE_03CD14:        9D 57 02      STA $0257,x               ;/ Set sprite onscreen flag
CODE_03CD17:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03CD1A:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CD1D:        20 EF EE      JSR CODE_03EEEF           ;
CODE_03CD20:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03CD23:        20 2E E7      JSR CODE_03E72E           ;
CODE_03CD26:        20 C4 E0      JSR CODE_03E0C4           ;
CODE_03CD29:        20 55 DE      JSR CODE_03DE55           ;
CODE_03CD2C:        AC 47 07      LDY $0747                 ;\
CODE_03CD2F:        D0 03         BNE CODE_03CD34           ; | Update sprite movement when game is not locked
CODE_03CD31:        20 37 CD      JSR CODE_03CD37           ;/
CODE_03CD34:        4C 03 DC      JMP CODE_03DC03           ;

CODE_03CD37:        B5 1C         LDA $1C,x                 ;Load sprite number
CODE_03CD39:        0A            ASL A                     ;*2
CODE_03CD3A:        A8            TAY                       ;Use as index
CODE_03CD3B:        B9 48 CD      LDA $CD48,y               ;\
CODE_03CD3E:        85 04         STA $04                   ; |
CODE_03CD40:        B9 49 CD      LDA $CD49,y               ; |Jump to the sprite routines
CODE_03CD43:        85 05         STA $05                   ; |
CODE_03CD45:        6C 04 00      JMP ($0004)               ;/

;MAIN routines for general sprites - updates behaviour? OAM code is elsewhere?

PNTR_03CD48:        dw CODE_03CF08            ;00 - Green koopa
                    dw CODE_03CF08            ;01 - Red koopa (walks off ledges)
                    dw CODE_03CF08            ;02 - Buzzy beetle
                    dw CODE_03CF08            ;03 - Red koopa (stays on ledges)
                    dw CODE_03CF08            ;04 - Green koopa (doesn't move)
                    dw CODE_03CE67            ;05 - Hammer bros
                    dw CODE_03CF08            ;06 - Goomba
                    dw CODE_03D01F            ;07 - Blooper
                    dw CODE_03D0D5            ;08 - Bullet Bill
                    dw CODE_03CD72            ;09 - Yellow paratroopa (doesn't move)
                    dw CODE_03D0E9            ;0A - Green cheep-cheep (slow)
                    dw CODE_03D0E9            ;0B - Red cheep-cheep (fast)
                    dw CODE_03CE1A            ;0C - Podoboo
                    dw CODE_03D891            ;0D - piranha plant
                    dw CODE_03CF8A            ;0E - Green paratroopa (leaping)
                    dw CODE_03CF90            ;0F - Red paratroopa (down & up)
                    dw CODE_03CFB9            ;10 - Green paratroopa (left & right)
                    dw CODE_03D3DE            ;11 - Lakitu
                    dw CODE_03CF08            ;12 - Spiny (not recommended for direct use)
                    dw CODE_03CD72            ;13 - "DO NOT USE" (this points to an RTS)
                    dw CODE_03D397            ;14 - Red Flying Cheep-Cheep

CODE_03CD72:        60            RTS                       ;

CODE_03CD73:        20 0B D7      JSR CODE_03D70B           ;
CODE_03CD76:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03CD79:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CD7C:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03CD7F:        20 55 DE      JSR CODE_03DE55           ;
CODE_03CD82:        4C 03 DC      JMP CODE_03DC03           ;

CODE_03CD85:        20 E1 D1      JSR CODE_03D1E1           ;
CODE_03CD88:        4C 03 DC      JMP CODE_03DC03           ;

CODE_03CD8B:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03CD8E:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CD91:        20 D5 E9      JSR CODE_03E9D5           ;
CODE_03CD94:        20 1E E2      JSR CODE_03E21E           ;
CODE_03CD97:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CD9A:        20 B2 F5      JSR CODE_03F5B2           ;
CODE_03CD9D:        20 D9 DB      JSR CODE_03DBD9           ;
CODE_03CDA0:        4C 03 DC      JMP CODE_03DC03           ;

CODE_03CDA3:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03CDA6:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CDA9:        20 04 EA      JSR CODE_03EA04           ;
CODE_03CDAC:        20 E7 E1      JSR CODE_03E1E7           ;
CODE_03CDAF:        AD 47 07      LDA $0747                 ;
CODE_03CDB2:        D0 03         BNE CODE_03CDB7           ;
CODE_03CDB4:        20 C0 CD      JSR CODE_03CDC0           ;
CODE_03CDB7:        20 39 FD      JSR CODE_03FD39           ;
CODE_03CDBA:        20 5E EC      JSR CODE_03EC5E           ;
CODE_03CDBD:        4C 03 DC      JMP CODE_03DC03           ;

CODE_03CDC0:        B5 1C         LDA $1C,x                 ;\Load sprite number
CODE_03CDC2:        38            SEC                       ; |Sprite number - $24
CODE_03CDC3:        E9 24         SBC #$24                  ; |
CODE_03CDC5:        0A            ASL A                     ;/|*2
CODE_03CDC6:        A8            TAY                       ;/Use as index. Sprite $24 will haxe index $00
CODE_03CDC7:        B9 D4 CD      LDA $CDD4,y               ;\
CODE_03CDCA:        85 04         STA $04                   ; |
CODE_03CDCC:        B9 D5 CD      LDA $CDD5,y               ; |
CODE_03CDCF:        85 05         STA $05                   ; |Jump to pointer tables
CODE_03CDD1:        6C 04 00      JMP ($0004)               ;/

;lift movement handler (move by itself, move when stepped on by player, etc)

PNTR_03CDD4:        dw CODE_03D914            ;24 - Lift (Balance)
                    dw CODE_03DB54            ;25 - Lift (Down then up)
                    dw CODE_03DBD3            ;26 - Lift (Up)
                    dw CODE_03DBD3            ;27 - Lift (Down)
                    dw CODE_03DB8A            ;28 - Lift (Left then right)
                    dw CODE_03DBB5            ;28 - Lift (Fall)
                    dw CODE_03DBC1            ;29 - Lift (Right)

; Erase sprite
CODE_03CDE2:        9E A2 07      STZ $07A2,x               ; Clear enemy interval timer
CODE_03CDE5:        E0 09         CPX #$09                  ;\ Check if sprite index is that of a [?]-block item
CODE_03CDE7:        D0 17         BNE CODE_03CE00           ;/ If not, skip.
CODE_03CDE9:        A9 F0         LDA #$F0                  ;
CODE_03CDEB:        8D E1 09      STA $09E1                 ;
CODE_03CDEE:        8D E5 09      STA $09E5                 ;
CODE_03CDF1:        8D E9 09      STA $09E9                 ;
CODE_03CDF4:        8D ED 09      STA $09ED                 ;
CODE_03CDF7:        A5 DB         LDA $DB                   ;
CODE_03CDF9:        C9 22         CMP #$22                  ;
CODE_03CDFB:        D0 03         BNE CODE_03CE00           ;
CODE_03CDFD:        9C 43 07      STZ $0743                 ;No cloud terrain
CODE_03CE00:        74 10         STZ $10,x                 ;Clear sprite flag
CODE_03CE02:        74 1C         STZ $1C,x                 ;Clear sprite number
CODE_03CE04:        74 29         STZ $29,x                 ;Clear sprite state
CODE_03CE06:        9E 10 01      STZ $0110,x               ;Clear shell chain counter
CODE_03CE09:        9E 2E 01      STZ $012E,x               ;
CODE_03CE0C:        9E 92 07      STZ $0792,x               ;
CODE_03CE0F:        9E A2 03      STZ $03A2,x               ;
CODE_03CE12:        A9 20         LDA #$20                  ;
CODE_03CE14:        9D 57 02      STA $0257,x               ;
CODE_03CE17:        A9 00         LDA #$00                  ;
CODE_03CE19:        60            RTS                       ;

CODE_03CE1A:        BD A2 07      LDA $07A2,x               ;\If jump timer not expired
CODE_03CE1D:        D0 16         BNE CODE_03CE35           ; |
CODE_03CE1F:        20 A4 C6      JSR CODE_03C6A4           ;/Init podoboo again
CODE_03CE22:        BD B8 07      LDA $07B8,x               ;\
CODE_03CE25:        09 80         ORA #$80                  ; | Set movement force according to LSFR random number generator output
CODE_03CE27:        9D 3D 04      STA $043D,x               ;/
CODE_03CE2A:        29 0F         AND #$0F                  ;\
CODE_03CE2C:        09 06         ORA #$06                  ; | Set interval timer again
CODE_03CE2E:        9D A2 07      STA $07A2,x               ;/
CODE_03CE31:        A9 F9         LDA #$F9                  ;\ Set jumping speed of podoboo
CODE_03CE33:        95 A1         STA $A1,x                 ;/
CODE_03CE35:        BD A1 00      LDA $00A1,x               ;\If speed is upwards, skip
CODE_03CE38:        30 19         BMI CODE_03CE53           ;/
CODE_03CE3A:        BD 38 02      LDA $0238,x               ;\
CODE_03CE3D:        C9 C0         CMP #$C0                  ; | if Y position is less than $C0, skip
CODE_03CE3F:        90 12         BCC CODE_03CE53           ;/
CODE_03CE41:        BD 00 0B      LDA $0B00,x               ;
CODE_03CE44:        C9 02         CMP #$02                  ;
CODE_03CE46:        D0 0B         BNE CODE_03CE53           ;
CODE_03CE48:        FE 00 0B      INC $0B00,x               ;
CODE_03CE4B:        9E 09 0B      STZ $0B09,x               ;Reset some timer
CODE_03CE4E:        A9 27         LDA #$27                  ;\Podoboo jump sound
CODE_03CE50:        8D 03 16      STA $1603                 ;/
CODE_03CE53:        FE 09 0B      INC $0B09,x               ;Increase some timer
CODE_03CE56:        22 14 D6 05   JSL CODE_05D614           ;Leave behind fire and lava particles
CODE_03CE5A:        4C 40 C1      JMP CODE_03C140           ;

DATA_03CE5D:        db $30,$1C

DATA_03CE5F:        db $00,$E8,$00,$18,$08,$F8,$0C,$F4

CODE_03CE67:        B5 29         LDA $29,x                 ;\MAIN routine of hammer bros
CODE_03CE69:        29 20         AND #$20                  ; |If not dying, branch
CODE_03CE6B:        F0 03         BEQ CODE_03CE70           ;/
CODE_03CE6D:        4C 76 CF      JMP CODE_03CF76           ;Else, jump if dying.

CODE_03CE70:        BD 0F 02      LDA $020F,x               ;\ Hammer bros jump timer
CODE_03CE73:        F0 2E         BEQ CODE_03CEA3           ; |If jump timer reached 00, make hammer bros jump
CODE_03CE75:        DE 0F 02      DEC $020F,x               ;/ else, decrease timer and continue.
CODE_03CE78:        AD D1 03      LDA $03D1                 ;\
CODE_03CE7B:        29 0C         AND #$0C                  ; |If $04,$08 or $0C
CODE_03CE7D:        D0 6A         BNE CODE_03CEE9           ;/Branch
CODE_03CE7F:        BD A2 03      LDA $03A2,x               ;\If hammer throw timer ($03A2) is not 00
CODE_03CE82:        D0 17         BNE CODE_03CE9B           ;/Branch
CODE_03CE84:        AC CC 06      LDY $06CC                 ;\
CODE_03CE87:        B9 5D CE      LDA $CE5D,y               ; | Set hammer throwing timer according to hard world (post 5-3) flag
CODE_03CE8A:        9D A2 03      STA $03A2,x               ;/
CODE_03CE8D:        20 8E BB      JSR CODE_03BB8E           ;
CODE_03CE90:        90 09         BCC CODE_03CE9B           ;
CODE_03CE92:        B5 29         LDA $29,x                 ;
CODE_03CE94:        09 08         ORA #$08                  ;
CODE_03CE96:        95 29         STA $29,x                 ;
CODE_03CE98:        4C E9 CE      JMP CODE_03CEE9           ;

CODE_03CE9B:        DE A2 03      DEC $03A2,x               ;
CODE_03CE9E:        4C E9 CE      JMP CODE_03CEE9           ;

DATA_03CEA1:        db $20,$37

CODE_03CEA3:        B5 29         LDA $29,x                 ;
CODE_03CEA5:        29 07         AND #$07                  ;
CODE_03CEA7:        C9 01         CMP #$01                  ;
CODE_03CEA9:        F0 3E         BEQ CODE_03CEE9           ;
CODE_03CEAB:        64 00         STZ $00                   ;
CODE_03CEAD:        A0 FA         LDY #$FA                  ;
CODE_03CEAF:        BD 38 02      LDA $0238,x               ;
CODE_03CEB2:        30 13         BMI CODE_03CEC7           ;
CODE_03CEB4:        A0 FD         LDY #$FD                  ;
CODE_03CEB6:        C9 70         CMP #$70                  ;
CODE_03CEB8:        E6 00         INC $00                   ;
CODE_03CEBA:        90 0B         BCC CODE_03CEC7           ;
CODE_03CEBC:        C6 00         DEC $00                   ;
CODE_03CEBE:        BD B8 07      LDA $07B8,x               ;
CODE_03CEC1:        29 01         AND #$01                  ;
CODE_03CEC3:        D0 02         BNE CODE_03CEC7           ;
CODE_03CEC5:        A0 FA         LDY #$FA                  ;
CODE_03CEC7:        94 A1         STY $A1,x                 ;
CODE_03CEC9:        B5 29         LDA $29,x                 ;
CODE_03CECB:        09 01         ORA #$01                  ;
CODE_03CECD:        95 29         STA $29,x                 ;
CODE_03CECF:        A5 00         LDA $00                   ;
CODE_03CED1:        3D B9 07      AND $07B9,x               ;
CODE_03CED4:        A8            TAY                       ;
CODE_03CED5:        AD CC 06      LDA $06CC                 ;
CODE_03CED8:        D0 01         BNE CODE_03CEDB           ;
CODE_03CEDA:        A8            TAY                       ;
CODE_03CEDB:        B9 A1 CE      LDA $CEA1,y               ;
CODE_03CEDE:        9D 92 07      STA $0792,x               ;
CODE_03CEE1:        BD B8 07      LDA $07B8,x               ;
CODE_03CEE4:        09 C0         ORA #$C0                  ;
CODE_03CEE6:        9D 0F 02      STA $020F,x               ;
CODE_03CEE9:        A0 FC         LDY #$FC                  ; Hammer bros forwards walking speed
CODE_03CEEB:        A5 09         LDA $09                   ;
CODE_03CEED:        29 40         AND #$40                  ;
CODE_03CEEF:        D0 02         BNE CODE_03CEF3           ;
CODE_03CEF1:        A0 04         LDY #$04                  ;\ Hammer bros backwards walking speed
CODE_03CEF3:        94 5E         STY $5E,x                 ;/
CODE_03CEF5:        A0 01         LDY #$01                  ; Set sprite direction to right
CODE_03CEF7:        20 BC E8      JSR CODE_03E8BC           ;\SUB_HORZ_POS
CODE_03CEFA:        30 0A         BMI CODE_03CF06           ;/ Branch if player is to the right of the hammer bros.
CODE_03CEFC:        C8            INY                       ; Set sprite direction to left
CODE_03CEFD:        BD A2 07      LDA $07A2,x               ;\ Check if Hammer Bros. has waited long enough
CODE_03CF00:        D0 04         BNE CODE_03CF06           ;/
CODE_03CF02:        A9 F8         LDA #$F8                  ;\ Hammer bros forwards walking speed after he has waited long enough.
CODE_03CF04:        95 5E         STA $5E,x                 ;/
CODE_03CF06:        94 47         STY $47,x                 ;Set sprite direction
CODE_03CF08:        A0 00         LDY #$00                  ;
CODE_03CF0A:        B5 29         LDA $29,x                 ;
CODE_03CF0C:        29 40         AND #$40                  ;
CODE_03CF0E:        D0 19         BNE CODE_03CF29           ;
CODE_03CF10:        B5 29         LDA $29,x                 ;
CODE_03CF12:        0A            ASL A                     ;
CODE_03CF13:        B0 30         BCS CODE_03CF45           ;
CODE_03CF15:        B5 29         LDA $29,x                 ;
CODE_03CF17:        29 20         AND #$20                  ;
CODE_03CF19:        D0 5B         BNE CODE_03CF76           ;
CODE_03CF1B:        B5 29         LDA $29,x                 ;
CODE_03CF1D:        29 07         AND #$07                  ;
CODE_03CF1F:        F0 24         BEQ CODE_03CF45           ;
CODE_03CF21:        C9 05         CMP #$05                  ;
CODE_03CF23:        F0 04         BEQ CODE_03CF29           ;
CODE_03CF25:        C9 03         CMP #$03                  ;
CODE_03CF27:        B0 30         BCS CODE_03CF59           ;
CODE_03CF29:        20 13 C1      JSR CODE_03C113           ;
CODE_03CF2C:        A0 00         LDY #$00                  ;
CODE_03CF2E:        B5 29         LDA $29,x                 ;
CODE_03CF30:        C9 02         CMP #$02                  ;
CODE_03CF32:        F0 0C         BEQ CODE_03CF40           ;
CODE_03CF34:        29 40         AND #$40                  ;
CODE_03CF36:        F0 0D         BEQ CODE_03CF45           ;
CODE_03CF38:        B5 1C         LDA $1C,x                 ;
CODE_03CF3A:        C9 2E         CMP #$2E                  ;
CODE_03CF3C:        F0 07         BEQ CODE_03CF45           ;
CODE_03CF3E:        D0 03         BNE CODE_03CF43           ;
CODE_03CF40:        4C AD C0      JMP CODE_03C0AD           ;

CODE_03CF43:        A0 01         LDY #$01                  ;
CODE_03CF45:        B5 5E         LDA $5E,x                 ;
CODE_03CF47:        48            PHA                       ;
CODE_03CF48:        10 02         BPL CODE_03CF4C           ;
CODE_03CF4A:        C8            INY                       ;
CODE_03CF4B:        C8            INY                       ;
CODE_03CF4C:        18            CLC                       ;
CODE_03CF4D:        79 5F CE      ADC $CE5F,y               ;
CODE_03CF50:        95 5E         STA $5E,x                 ;
CODE_03CF52:        20 AD C0      JSR CODE_03C0AD           ;
CODE_03CF55:        68            PLA                       ;
CODE_03CF56:        95 5E         STA $5E,x                 ;
CODE_03CF58:        60            RTS                       ;

CODE_03CF59:        BD A2 07      LDA $07A2,x               ;
CODE_03CF5C:        D0 1E         BNE CODE_03CF7C           ;
CODE_03CF5E:        95 29         STA $29,x                 ;
CODE_03CF60:        A5 09         LDA $09                   ;
CODE_03CF62:        29 01         AND #$01                  ;
CODE_03CF64:        A8            TAY                       ;
CODE_03CF65:        C8            INY                       ;
CODE_03CF66:        94 47         STY $47,x                 ;
CODE_03CF68:        88            DEY                       ;
CODE_03CF69:        AD 6A 07      LDA $076A                 ;"More difficult quest" flag
CODE_03CF6C:        F0 02         BEQ CODE_03CF70           ;
CODE_03CF6E:        C8            INY                       ;
CODE_03CF6F:        C8            INY                       ;
CODE_03CF70:        B9 63 CE      LDA $CE63,y               ;
CODE_03CF73:        95 5E         STA $5E,x                 ;
CODE_03CF75:        60            RTS                       ;

CODE_03CF76:        20 13 C1      JSR CODE_03C113           ;
CODE_03CF79:        4C AD C0      JMP CODE_03C0AD           ;

CODE_03CF7C:        C9 0E         CMP #$0E                  ;
CODE_03CF7E:        D0 09         BNE CODE_03CF89           ;
CODE_03CF80:        B5 1C         LDA $1C,x                 ;
CODE_03CF82:        C9 06         CMP #$06                  ;
CODE_03CF84:        D0 03         BNE CODE_03CF89           ;
CODE_03CF86:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03CF89:        60            RTS                       ;

CODE_03CF8A:        20 40 C1      JSR CODE_03C140           ;
CODE_03CF8D:        4C AD C0      JMP CODE_03C0AD           ;

CODE_03CF90:        B5 A1         LDA $A1,x                 ;
CODE_03CF92:        1D 3D 04      ORA $043D,x               ;
CODE_03CF95:        D0 15         BNE CODE_03CFAC           ;
CODE_03CF97:        9D 1D 04      STA $041D,x               ;
CODE_03CF9A:        BD 38 02      LDA $0238,x               ;
CODE_03CF9D:        DD 02 04      CMP $0402,x               ;
CODE_03CFA0:        B0 0A         BCS CODE_03CFAC           ;
CODE_03CFA2:        A5 09         LDA $09                   ;
CODE_03CFA4:        29 07         AND #$07                  ;
CODE_03CFA6:        D0 03         BNE CODE_03CFAB           ;
CODE_03CFA8:        FE 38 02      INC $0238,x               ;
CODE_03CFAB:        60            RTS                       ;

CODE_03CFAC:        BD 38 02      LDA $0238,x               ;
CODE_03CFAF:        D5 5E         CMP $5E,x                 ;
CODE_03CFB1:        90 03         BCC CODE_03CFB6           ;
CODE_03CFB3:        4C 23 C1      JMP CODE_03C123           ;

CODE_03CFB6:        4C 1F C1      JMP CODE_03C11F           ;

CODE_03CFB9:        20 DB CF      JSR CODE_03CFDB           ;
CODE_03CFBC:        20 FC CF      JSR CODE_03CFFC           ;
CODE_03CFBF:        A0 01         LDY #$01                  ;
CODE_03CFC1:        A5 09         LDA $09                   ;
CODE_03CFC3:        29 03         AND #$03                  ;
CODE_03CFC5:        D0 13         BNE CODE_03CFDA           ;
CODE_03CFC7:        A5 09         LDA $09                   ;
CODE_03CFC9:        29 40         AND #$40                  ;
CODE_03CFCB:        D0 02         BNE CODE_03CFCF           ;
CODE_03CFCD:        A0 FF         LDY #$FF                  ;
CODE_03CFCF:        84 00         STY $00                   ;
CODE_03CFD1:        BD 38 02      LDA $0238,x               ;
CODE_03CFD4:        18            CLC                       ;
CODE_03CFD5:        65 00         ADC $00                   ;
CODE_03CFD7:        9D 38 02      STA $0238,x               ;
CODE_03CFDA:        60            RTS                       ;

CODE_03CFDB:        A9 13         LDA #$13                  ;
CODE_03CFDD:        85 01         STA $01                   ;
CODE_03CFDF:        A5 09         LDA $09                   ;
CODE_03CFE1:        29 03         AND #$03                  ;
CODE_03CFE3:        D0 0D         BNE CODE_03CFF2           ;
CODE_03CFE5:        B4 5E         LDY $5E,x                 ;
CODE_03CFE7:        B5 A1         LDA $A1,x                 ;
CODE_03CFE9:        4A            LSR A                     ;
CODE_03CFEA:        B0 0A         BCS CODE_03CFF6           ;
CODE_03CFEC:        C4 01         CPY $01                   ;
CODE_03CFEE:        F0 03         BEQ CODE_03CFF3           ;
CODE_03CFF0:        F6 5E         INC $5E,x                 ;
CODE_03CFF2:        60            RTS                       ;

CODE_03CFF3:        F6 A1         INC $A1,x                 ;
CODE_03CFF5:        60            RTS                       ;

CODE_03CFF6:        98            TYA                       ;
CODE_03CFF7:        F0 FA         BEQ CODE_03CFF3           ;
CODE_03CFF9:        D6 5E         DEC $5E,x                 ;
CODE_03CFFB:        60            RTS                       ;

CODE_03CFFC:        B5 5E         LDA $5E,x                 ;
CODE_03CFFE:        48            PHA                       ;
CODE_03CFFF:        A0 01         LDY #$01                  ;
CODE_03D001:        B5 A1         LDA $A1,x                 ;
CODE_03D003:        29 02         AND #$02                  ;
CODE_03D005:        D0 0B         BNE CODE_03D012           ;
CODE_03D007:        B5 5E         LDA $5E,x                 ;
CODE_03D009:        49 FF         EOR #$FF                  ;
CODE_03D00B:        18            CLC                       ;
CODE_03D00C:        69 01         ADC #$01                  ;
CODE_03D00E:        95 5E         STA $5E,x                 ;
CODE_03D010:        A0 02         LDY #$02                  ;
CODE_03D012:        94 47         STY $47,x                 ;
CODE_03D014:        20 AD C0      JSR CODE_03C0AD           ;
CODE_03D017:        85 00         STA $00                   ;
CODE_03D019:        68            PLA                       ;
CODE_03D01A:        95 5E         STA $5E,x                 ;
CODE_03D01C:        60            RTS                       ;

DATA_03D01D:        db $3F,$03

CODE_03D01F:        B5 29         LDA $29,x                 ;
CODE_03D021:        29 20         AND #$20                  ;
CODE_03D023:        D0 53         BNE CODE_03D078           ;
CODE_03D025:        AC CC 06      LDY $06CC                 ;
CODE_03D028:        BD B8 07      LDA $07B8,x               ;
CODE_03D02B:        39 1D D0      AND $D01D,y               ;
CODE_03D02E:        D0 12         BNE CODE_03D042           ;
CODE_03D030:        8A            TXA                       ;
CODE_03D031:        4A            LSR A                     ;
CODE_03D032:        90 04         BCC CODE_03D038           ;
CODE_03D034:        A4 46         LDY $46                   ;
CODE_03D036:        B0 08         BCS CODE_03D040           ;
CODE_03D038:        A0 02         LDY #$02                  ;
CODE_03D03A:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03D03D:        10 01         BPL CODE_03D040           ;
CODE_03D03F:        88            DEY                       ;
CODE_03D040:        94 47         STY $47,x                 ;
CODE_03D042:        20 7B D0      JSR CODE_03D07B           ;
CODE_03D045:        BD 38 02      LDA $0238,x               ;
CODE_03D048:        38            SEC                       ;
CODE_03D049:        FD 3D 04      SBC $043D,x               ;
CODE_03D04C:        C9 20         CMP #$20                  ;
CODE_03D04E:        90 03         BCC CODE_03D053           ;
CODE_03D050:        9D 38 02      STA $0238,x               ;
CODE_03D053:        B4 47         LDY $47,x                 ;
CODE_03D055:        88            DEY                       ;
CODE_03D056:        D0 10         BNE CODE_03D068           ;
CODE_03D058:        BD 1A 02      LDA $021A,x               ;
CODE_03D05B:        18            CLC                       ;
CODE_03D05C:        75 5E         ADC $5E,x                 ;
CODE_03D05E:        9D 1A 02      STA $021A,x               ;
CODE_03D061:        B5 79         LDA $79,x                 ;
CODE_03D063:        69 00         ADC #$00                  ;
CODE_03D065:        95 79         STA $79,x                 ;
CODE_03D067:        60            RTS                       ;

CODE_03D068:        BD 1A 02      LDA $021A,x               ;\
CODE_03D06B:        38            SEC                       ; |
CODE_03D06C:        F5 5E         SBC $5E,x                 ; | Subtract sprite X position with sprite X speed
CODE_03D06E:        9D 1A 02      STA $021A,x               ; |
CODE_03D071:        B5 79         LDA $79,x                 ; |
CODE_03D073:        E9 00         SBC #$00                  ; |
CODE_03D075:        95 79         STA $79,x                 ;/
CODE_03D077:        60            RTS                       ;

CODE_03D078:        4C 3A C1      JMP CODE_03C13A           ;

CODE_03D07B:        B5 A1         LDA $A1,x                 ;
CODE_03D07D:        29 02         AND #$02                  ;
CODE_03D07F:        D0 37         BNE CODE_03D0B8           ;
CODE_03D081:        A5 09         LDA $09                   ;
CODE_03D083:        29 07         AND #$07                  ;
CODE_03D085:        48            PHA                       ;
CODE_03D086:        B5 A1         LDA $A1,x                 ;
CODE_03D088:        4A            LSR A                     ;
CODE_03D089:        B0 15         BCS CODE_03D0A0           ;
CODE_03D08B:        68            PLA                       ;
CODE_03D08C:        D0 11         BNE CODE_03D09F           ;
CODE_03D08E:        BD 3D 04      LDA $043D,x               ;
CODE_03D091:        18            CLC                       ;
CODE_03D092:        69 01         ADC #$01                  ;
CODE_03D094:        9D 3D 04      STA $043D,x               ;
CODE_03D097:        95 5E         STA $5E,x                 ;
CODE_03D099:        C9 02         CMP #$02                  ;
CODE_03D09B:        D0 02         BNE CODE_03D09F           ;
CODE_03D09D:        F6 A1         INC $A1,x                 ;
CODE_03D09F:        60            RTS                       ;

CODE_03D0A0:        68            PLA                       ;
CODE_03D0A1:        D0 14         BNE CODE_03D0B7           ;
CODE_03D0A3:        BD 3D 04      LDA $043D,x               ;
CODE_03D0A6:        38            SEC                       ;
CODE_03D0A7:        E9 01         SBC #$01                  ;
CODE_03D0A9:        9D 3D 04      STA $043D,x               ;
CODE_03D0AC:        95 5E         STA $5E,x                 ;
CODE_03D0AE:        D0 07         BNE CODE_03D0B7           ;
CODE_03D0B0:        F6 A1         INC $A1,x                 ;
CODE_03D0B2:        A9 02         LDA #$02                  ;
CODE_03D0B4:        9D A2 07      STA $07A2,x               ;
CODE_03D0B7:        60            RTS                       ;

CODE_03D0B8:        BD A2 07      LDA $07A2,x               ;
CODE_03D0BB:        F0 09         BEQ CODE_03D0C6           ;
CODE_03D0BD:        A5 09         LDA $09                   ;
CODE_03D0BF:        4A            LSR A                     ;
CODE_03D0C0:        B0 03         BCS CODE_03D0C5           ;
CODE_03D0C2:        FE 38 02      INC $0238,x               ;
CODE_03D0C5:        60            RTS                       ;

CODE_03D0C6:        BD 38 02      LDA $0238,x               ;
CODE_03D0C9:        69 10         ADC #$10                  ;
CODE_03D0CB:        CD 37 02      CMP $0237                 ;
CODE_03D0CE:        90 ED         BCC CODE_03D0BD           ;
CODE_03D0D0:        A9 00         LDA #$00                  ;
CODE_03D0D2:        95 A1         STA $A1,x                 ;
CODE_03D0D4:        60            RTS                       ;

CODE_03D0D5:        B5 29         LDA $29,x                 ;
CODE_03D0D7:        29 20         AND #$20                  ;
CODE_03D0D9:        F0 03         BEQ CODE_03D0DE           ;
CODE_03D0DB:        4C 40 C1      JMP CODE_03C140           ;

CODE_03D0DE:        A9 E8         LDA #$E8                  ;
CODE_03D0E0:        95 5E         STA $5E,x                 ;
CODE_03D0E2:        4C AD C0      JMP CODE_03C0AD           ;

DATA_03D0E5:        db $40,$80,$04,$04

CODE_03D0E9:        B5 29         LDA $29,x                 ;
CODE_03D0EB:        29 20         AND #$20                  ;
CODE_03D0ED:        F0 03         BEQ CODE_03D0F2           ;
CODE_03D0EF:        4C 3A C1      JMP CODE_03C13A           ;

CODE_03D0F2:        85 03         STA $03                   ;
CODE_03D0F4:        B5 1C         LDA $1C,x                 ;
CODE_03D0F6:        38            SEC                       ;
CODE_03D0F7:        E9 0A         SBC #$0A                  ;
CODE_03D0F9:        A8            TAY                       ;
CODE_03D0FA:        B9 E5 D0      LDA $D0E5,y               ;
CODE_03D0FD:        85 02         STA $02                   ;
CODE_03D0FF:        BD 02 04      LDA $0402,x               ;
CODE_03D102:        38            SEC                       ;
CODE_03D103:        E5 02         SBC $02                   ;
CODE_03D105:        9D 02 04      STA $0402,x               ;
CODE_03D108:        BD 1A 02      LDA $021A,x               ;
CODE_03D10B:        E9 00         SBC #$00                  ;
CODE_03D10D:        9D 1A 02      STA $021A,x               ;
CODE_03D110:        B5 79         LDA $79,x                 ;
CODE_03D112:        E9 00         SBC #$00                  ;
CODE_03D114:        95 79         STA $79,x                 ;
CODE_03D116:        A9 20         LDA #$20                  ;
CODE_03D118:        85 02         STA $02                   ;
CODE_03D11A:        E0 02         CPX #$02                  ;
CODE_03D11C:        90 4D         BCC CODE_03D16B           ;
CODE_03D11E:        B5 5E         LDA $5E,x                 ;
CODE_03D120:        C9 10         CMP #$10                  ;
CODE_03D122:        90 17         BCC CODE_03D13B           ;
CODE_03D124:        BD 1D 04      LDA $041D,x               ;
CODE_03D127:        18            CLC                       ;
CODE_03D128:        65 02         ADC $02                   ;
CODE_03D12A:        9D 1D 04      STA $041D,x               ;
CODE_03D12D:        BD 38 02      LDA $0238,x               ;
CODE_03D130:        65 03         ADC $03                   ;
CODE_03D132:        9D 38 02      STA $0238,x               ;
CODE_03D135:        B5 BC         LDA $BC,x                 ;
CODE_03D137:        69 00         ADC #$00                  ;
CODE_03D139:        80 15         BRA CODE_03D150           ;

CODE_03D13B:        BD 1D 04      LDA $041D,x               ;
CODE_03D13E:        38            SEC                       ;
CODE_03D13F:        E5 02         SBC $02                   ;
CODE_03D141:        9D 1D 04      STA $041D,x               ;
CODE_03D144:        BD 38 02      LDA $0238,x               ;
CODE_03D147:        E5 03         SBC $03                   ;
CODE_03D149:        9D 38 02      STA $0238,x               ;
CODE_03D14C:        B5 BC         LDA $BC,x                 ;
CODE_03D14E:        E9 00         SBC #$00                  ;
CODE_03D150:        95 BC         STA $BC,x                 ;
CODE_03D152:        A0 00         LDY #$00                  ;
CODE_03D154:        BD 38 02      LDA $0238,x               ;
CODE_03D157:        38            SEC                       ;
CODE_03D158:        FD 3D 04      SBC $043D,x               ;
CODE_03D15B:        10 07         BPL CODE_03D164           ;
CODE_03D15D:        A0 10         LDY #$10                  ;
CODE_03D15F:        49 FF         EOR #$FF                  ;
CODE_03D161:        18            CLC                       ;
CODE_03D162:        69 01         ADC #$01                  ;
CODE_03D164:        C9 0F         CMP #$0F                  ;
CODE_03D166:        90 03         BCC CODE_03D16B           ;
CODE_03D168:        98            TYA                       ;
CODE_03D169:        95 5E         STA $5E,x                 ;
CODE_03D16B:        60            RTS                       ;

DATA_03C16C:        db $00,$01,$03,$04,$05,$06,$07,$07
                    db $08,$00,$03,$06,$09,$0B,$0D,$0E
                    db $0F,$10,$00,$04,$09,$0D,$10,$13
                    db $16,$17,$18,$00,$06,$0C,$12,$16
                    db $1A,$1D,$1F,$20,$00,$07,$0F,$16
                    db $1C,$21,$25,$27,$28,$00,$09,$12
                    db $1B,$21,$27,$2C,$2F,$30,$00,$0B
                    db $15,$1F,$27,$2E,$33,$37,$38,$00
                    db $0C,$18,$24,$2D,$35,$3B,$3E,$40
                    db $00,$0E,$1B,$28,$32,$3B,$42,$46
                    db $48,$00,$0F,$1F,$2D,$38,$42,$4A
                    db $4E,$50,$00,$11,$22,$31,$3E,$49
                    db $51,$56,$58

DATA_03C1CF:        db $01,$03,$02,$00

DATA_03C1D3:        db $00,$09,$12,$1B,$24,$2D,$36,$3F
                    db $48,$51,$5A,$63

DATA_03C1DF:        db $0C,$18

CODE_03D1E1:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03D1E4:        AD D1 03      LDA $03D1                 ;
CODE_03D1E7:        29 08         AND #$08                  ;
CODE_03D1E9:        D0 72         BNE CODE_03D25D           ;
CODE_03D1EB:        AD 47 07      LDA $0747                 ;
CODE_03D1EE:        D0 0A         BNE CODE_03D1FA           ;
CODE_03D1F0:        BD 88 03      LDA $0388,x               ;
CODE_03D1F3:        20 F1 D8      JSR CODE_03D8F1           ;
CODE_03D1F6:        29 1F         AND #$1F                  ;
CODE_03D1F8:        95 A1         STA $A1,x                 ;
CODE_03D1FA:        B5 A1         LDA $A1,x                 ;
CODE_03D1FC:        B4 1C         LDY $1C,x                 ;
CODE_03D1FE:        C0 1F         CPY #$1F                  ;
CODE_03D200:        90 0D         BCC CODE_03D20F           ;
CODE_03D202:        C9 08         CMP #$08                  ;
CODE_03D204:        F0 04         BEQ CODE_03D20A           ;
CODE_03D206:        C9 18         CMP #$18                  ;
CODE_03D208:        D0 05         BNE CODE_03D20F           ;
CODE_03D20A:        18            CLC                       ;
CODE_03D20B:        69 01         ADC #$01                  ;
CODE_03D20D:        95 A1         STA $A1,x                 ;
CODE_03D20F:        85 EF         STA $EF                   ;
CODE_03D211:        20 39 FD      JSR CODE_03FD39           ;
CODE_03D214:        20 46 D3      JSR CODE_03D346           ;
CODE_03D217:        BC 46 0B      LDY $0B46,x               ;
CODE_03D21A:        AD B9 03      LDA $03B9                 ;
CODE_03D21D:        99 01 09      STA $0901,y               ;
CODE_03D220:        85 07         STA $07                   ;
CODE_03D222:        AD AE 03      LDA $03AE                 ;
CODE_03D225:        99 00 09      STA $0900,y               ;
CODE_03D228:        85 06         STA $06                   ;
CODE_03D22A:        A9 01         LDA #$01                  ;
CODE_03D22C:        85 00         STA $00                   ;
CODE_03D22E:        20 BB D2      JSR CODE_03D2BB           ;
CODE_03D231:        A0 05         LDY #$05                  ;
CODE_03D233:        B5 1C         LDA $1C,x                 ;
CODE_03D235:        C9 1F         CMP #$1F                  ;
CODE_03D237:        90 02         BCC CODE_03D23B           ;
CODE_03D239:        A0 0B         LDY #$0B                  ;
CODE_03D23B:        84 ED         STY $ED                   ;
CODE_03D23D:        64 00         STZ $00                   ;
CODE_03D23F:        A5 EF         LDA $EF                   ;
CODE_03D241:        20 46 D3      JSR CODE_03D346           ;
CODE_03D244:        20 5E D2      JSR CODE_03D25E           ;
CODE_03D247:        A5 00         LDA $00                   ;
CODE_03D249:        C9 04         CMP #$04                  ;
CODE_03D24B:        D0 08         BNE CODE_03D255           ;
CODE_03D24D:        AC CF 06      LDY $06CF                 ;
CODE_03D250:        B9 46 0B      LDA $0B46,y               ;
CODE_03D253:        85 06         STA $06                   ;
CODE_03D255:        E6 00         INC $00                   ;
CODE_03D257:        A5 00         LDA $00                   ;
CODE_03D259:        C5 ED         CMP $ED                   ;
CODE_03D25B:        90 E2         BCC CODE_03D23F           ;
CODE_03D25D:        60            RTS                       ;

CODE_03D25E:        A5 03         LDA $03                   ;
CODE_03D260:        85 05         STA $05                   ;
CODE_03D262:        A4 06         LDY $06                   ;
CODE_03D264:        A5 01         LDA $01                   ;
CODE_03D266:        46 05         LSR $05                   ;
CODE_03D268:        B0 04         BCS CODE_03D26E           ;
CODE_03D26A:        49 FF         EOR #$FF                  ;
CODE_03D26C:        69 01         ADC #$01                  ;
CODE_03D26E:        18            CLC                       ;
CODE_03D26F:        6D AE 03      ADC $03AE                 ;
CODE_03D272:        99 00 09      STA $0900,y               ;
CODE_03D275:        85 06         STA $06                   ;
CODE_03D277:        CD AE 03      CMP $03AE                 ;
CODE_03D27A:        B0 09         BCS CODE_03D285           ;
CODE_03D27C:        AD AE 03      LDA $03AE                 ;
CODE_03D27F:        38            SEC                       ;
CODE_03D280:        E5 06         SBC $06                   ;
CODE_03D282:        4C 89 D2      JMP CODE_03D289           ;

CODE_03D285:        38            SEC                       ;
CODE_03D286:        ED AE 03      SBC $03AE                 ;
CODE_03D289:        C9 59         CMP #$59                  ;
CODE_03D28B:        90 04         BCC CODE_03D291           ;
CODE_03D28D:        A9 F8         LDA #$F8                  ;
CODE_03D28F:        D0 15         BNE CODE_03D2A6           ;
CODE_03D291:        AD B9 03      LDA $03B9                 ;
CODE_03D294:        C9 F8         CMP #$F8                  ;
CODE_03D296:        F0 0E         BEQ CODE_03D2A6           ;
CODE_03D298:        A5 02         LDA $02                   ;
CODE_03D29A:        46 05         LSR $05                   ;
CODE_03D29C:        B0 04         BCS CODE_03D2A2           ;
CODE_03D29E:        49 FF         EOR #$FF                  ;
CODE_03D2A0:        69 01         ADC #$01                  ;
CODE_03D2A2:        18            CLC                       ;
CODE_03D2A3:        6D B9 03      ADC $03B9                 ;
CODE_03D2A6:        99 01 09      STA $0901,y               ;
CODE_03D2A9:        85 07         STA $07                   ;
CODE_03D2AB:        C9 F0         CMP #$F0                  ;
CODE_03D2AD:        90 07         BCC CODE_03D2B6           ;
CODE_03D2AF:        A9 01         LDA #$01                  ;
CODE_03D2B1:        99 00 0D      STA $0D00,y               ;
CODE_03D2B4:        80 05         BRA CODE_03D2BB           ;

CODE_03D2B6:        A9 00         LDA #$00                  ;
CODE_03D2B8:        99 00 0D      STA $0D00,y               ;
CODE_03D2BB:        20 8B F4      JSR CODE_03F48B           ;
CODE_03D2BE:        98            TYA                       ;
CODE_03D2BF:        48            PHA                       ;
CODE_03D2C0:        AD AF 07      LDA $07AF                 ;
CODE_03D2C3:        0D 47 07      ORA $0747                 ;
CODE_03D2C6:        D0 75         BNE CODE_03D33D           ;
CODE_03D2C8:        85 05         STA $05                   ;
CODE_03D2CA:        A4 BB         LDY $BB                   ;
CODE_03D2CC:        88            DEY                       ;
CODE_03D2CD:        D0 6E         BNE CODE_03D33D           ;
CODE_03D2CF:        AC 37 02      LDY $0237                 ;
CODE_03D2D2:        AD 54 07      LDA $0754                 ;
CODE_03D2D5:        D0 05         BNE CODE_03D2DC           ;
CODE_03D2D7:        AD 14 07      LDA $0714                 ;
CODE_03D2DA:        F0 09         BEQ CODE_03D2E5           ;
CODE_03D2DC:        E6 05         INC $05                   ;
CODE_03D2DE:        E6 05         INC $05                   ;
CODE_03D2E0:        98            TYA                       ;
CODE_03D2E1:        18            CLC                       ;
CODE_03D2E2:        69 18         ADC #$18                  ;
CODE_03D2E4:        A8            TAY                       ;
CODE_03D2E5:        98            TYA                       ;
CODE_03D2E6:        38            SEC                       ;
CODE_03D2E7:        E5 07         SBC $07                   ;
CODE_03D2E9:        10 05         BPL CODE_03D2F0           ;
CODE_03D2EB:        49 FF         EOR #$FF                  ;
CODE_03D2ED:        18            CLC                       ;
CODE_03D2EE:        69 01         ADC #$01                  ;
CODE_03D2F0:        C9 08         CMP #$08                  ;
CODE_03D2F2:        B0 1C         BCS CODE_03D310           ;
CODE_03D2F4:        A5 06         LDA $06                   ;
CODE_03D2F6:        C9 F0         CMP #$F0                  ;
CODE_03D2F8:        B0 16         BCS CODE_03D310           ;
CODE_03D2FA:        AD AD 03      LDA $03AD                 ;
CODE_03D2FD:        18            CLC                       ;
CODE_03D2FE:        69 04         ADC #$04                  ;
CODE_03D300:        85 04         STA $04                   ;
CODE_03D302:        38            SEC                       ;
CODE_03D303:        E5 06         SBC $06                   ;
CODE_03D305:        10 05         BPL CODE_03D30C           ;
CODE_03D307:        49 FF         EOR #$FF                  ;
CODE_03D309:        18            CLC                       ;
CODE_03D30A:        69 01         ADC #$01                  ;
CODE_03D30C:        C9 08         CMP #$08                  ;
CODE_03D30E:        90 14         BCC CODE_03D324           ;
CODE_03D310:        A5 05         LDA $05                   ;
CODE_03D312:        C9 02         CMP #$02                  ;
CODE_03D314:        F0 27         BEQ CODE_03D33D           ;
CODE_03D316:        A4 05         LDY $05                   ;
CODE_03D318:        AD 37 02      LDA $0237                 ;
CODE_03D31B:        18            CLC                       ;
CODE_03D31C:        79 DF D1      ADC $D1DF,y               ;
CODE_03D31F:        E6 05         INC $05                   ;
CODE_03D321:        4C E6 D2      JMP CODE_03D2E6           ;

CODE_03D324:        A2 01         LDX #$01                  ;
CODE_03D326:        A5 04         LDA $04                   ;
CODE_03D328:        C5 06         CMP $06                   ;
CODE_03D32A:        B0 01         BCS CODE_03D32D           ;
CODE_03D32C:        E8            INX                       ;
CODE_03D32D:        8A            TXA                       ;
CODE_03D32E:        A6 9E         LDX $9E                   ;
CODE_03D330:        85 47         STA $47                   ;
CODE_03D332:        A2 00         LDX #$00                  ;
CODE_03D334:        A5 00         LDA $00                   ;
CODE_03D336:        48            PHA                       ;
CODE_03D337:        20 4D DF      JSR CODE_03DF4D           ;
CODE_03D33A:        68            PLA                       ;
CODE_03D33B:        85 00         STA $00                   ;
CODE_03D33D:        68            PLA                       ;
CODE_03D33E:        18            CLC                       ;
CODE_03D33F:        69 04         ADC #$04                  ;
CODE_03D341:        85 06         STA $06                   ;
CODE_03D343:        A6 9E         LDX $9E                   ;
CODE_03D345:        60            RTS                       ;

CODE_03D346:        48            PHA                       ;
CODE_03D347:        29 0F         AND #$0F                  ;
CODE_03D349:        C9 09         CMP #$09                  ;
CODE_03D34B:        90 05         BCC CODE_03D352           ;
CODE_03D34D:        49 0F         EOR #$0F                  ;
CODE_03D34F:        18            CLC                       ;
CODE_03D350:        69 01         ADC #$01                  ;
CODE_03D352:        85 01         STA $01                   ;
CODE_03D354:        A4 00         LDY $00                   ;
CODE_03D356:        B9 D3 D1      LDA $D1D3,y               ;
CODE_03D359:        18            CLC                       ;
CODE_03D35A:        65 01         ADC $01                   ;
CODE_03D35C:        A8            TAY                       ;
CODE_03D35D:        B9 6C D1      LDA $D16C,y               ;
CODE_03D360:        85 01         STA $01                   ;
CODE_03D362:        68            PLA                       ;
CODE_03D363:        48            PHA                       ;
CODE_03D364:        18            CLC                       ;
CODE_03D365:        69 08         ADC #$08                  ;
CODE_03D367:        29 0F         AND #$0F                  ;
CODE_03D369:        C9 09         CMP #$09                  ;
CODE_03D36B:        90 05         BCC CODE_03D372           ;
CODE_03D36D:        49 0F         EOR #$0F                  ;
CODE_03D36F:        18            CLC                       ;
CODE_03D370:        69 01         ADC #$01                  ;
CODE_03D372:        85 02         STA $02                   ;
CODE_03D374:        A4 00         LDY $00                   ;
CODE_03D376:        B9 D3 D1      LDA $D1D3,y               ;
CODE_03D379:        18            CLC                       ;
CODE_03D37A:        65 02         ADC $02                   ;
CODE_03D37C:        A8            TAY                       ;
CODE_03D37D:        B9 6C D1      LDA $D16C,y               ;
CODE_03D380:        85 02         STA $02                   ;
CODE_03D382:        68            PLA                       ;
CODE_03D383:        4A            LSR A                     ;
CODE_03D384:        4A            LSR A                     ;
CODE_03D385:        4A            LSR A                     ;
CODE_03D386:        A8            TAY                       ;
CODE_03D387:        B9 CF D1      LDA $D1CF,y               ;
CODE_03D38A:        85 03         STA $03                   ;
CODE_03D38C:        60            RTS                       ;

DATA_03D38D:        db $F8,$A0,$70,$BD,$00

DATA_03D392:        db $00,$00,$00,$20,$20

CODE_03D397:        B5 29         LDA $29,x                 ;0 S:01FF P:EnvMXdIzc HC:0206 VC:000 FC:00 I:00
CODE_03D399:        29 20         AND #$20                  ;0 S:01FF P:EnvMXdIzc HC:0222 VC:000 FC:00 I:00
CODE_03D39B:        F0 08         BEQ CODE_03D3A5           ;0 S:01FF P:EnvMXdIzc HC:0238 VC:000 FC:00 I:00
CODE_03D39D:        A9 20         LDA #$20                  ;
CODE_03D39F:        9D 57 02      STA $0257,x               ;
CODE_03D3A2:        4C 40 C1      JMP CODE_03C140           ;

CODE_03D3A5:        20 AD C0      JSR CODE_03C0AD           ;
CODE_03D3A8:        A0 0D         LDY #$0D                  ;
CODE_03D3AA:        A9 05         LDA #$05                  ;
CODE_03D3AC:        20 44 C1      JSR CODE_03C144           ;
CODE_03D3AF:        BD 3D 04      LDA $043D,x               ;
CODE_03D3B2:        4A            LSR A                     ;
CODE_03D3B3:        4A            LSR A                     ;
CODE_03D3B4:        4A            LSR A                     ;
CODE_03D3B5:        4A            LSR A                     ;
CODE_03D3B6:        A8            TAY                       ;
CODE_03D3B7:        BD 38 02      LDA $0238,x               ;
CODE_03D3BA:        38            SEC                       ;
CODE_03D3BB:        F9 8D D3      SBC $D38D,y               ;
CODE_03D3BE:        10 05         BPL CODE_03D3C5           ;
CODE_03D3C0:        49 FF         EOR #$FF                  ;
CODE_03D3C2:        18            CLC                       ;
CODE_03D3C3:        69 01         ADC #$01                  ;
CODE_03D3C5:        C9 08         CMP #$08                  ;
CODE_03D3C7:        B0 0B         BCS CODE_03D3D4           ;
CODE_03D3C9:        BD 3D 04      LDA $043D,x               ;
CODE_03D3CC:        18            CLC                       ;
CODE_03D3CD:        69 10         ADC #$10                  ;
CODE_03D3CF:        4A            LSR A                     ;
CODE_03D3D0:        4A            LSR A                     ;
CODE_03D3D1:        4A            LSR A                     ;
CODE_03D3D2:        4A            LSR A                     ;
CODE_03D3D3:        A8            TAY                       ;
CODE_03D3D4:        B9 92 D3      LDA $D392,y               ;
CODE_03D3D7:        9D 57 02      STA $0257,x               ;
CODE_03D3DA:        60            RTS                       ;

DATA_03D3DB:        db $15,$30,$40

CODE_03D3DE:        B5 29         LDA $29,x                 ;\
CODE_03D3E0:        29 20         AND #$20                  ; |If not dying, branch
CODE_03D3E2:        F0 03         BEQ CODE_03D3E7           ;/
CODE_03D3E4:        4C 13 C1      JMP CODE_03C113           ;Otherwise, take jump when dying.

CODE_03D3E7:        B5 29         LDA $29,x                 ;
CODE_03D3E9:        F0 09         BEQ CODE_03D3F4           ;
CODE_03D3EB:        74 A1         STZ $A1,x                 ;
CODE_03D3ED:        9C CB 06      STZ $06CB                 ;
CODE_03D3F0:        A9 10         LDA #$10                  ;
CODE_03D3F2:        D0 13         BNE CODE_03D407           ;
CODE_03D3F4:        A9 12         LDA #$12                  ;
CODE_03D3F6:        8D CB 06      STA $06CB                 ;
CODE_03D3F9:        A0 02         LDY #$02                  ;
CODE_03D3FB:        B9 DB D3      LDA $D3DB,y               ;
CODE_03D3FE:        99 01 00      STA $0001,y               ;
CODE_03D401:        88            DEY                       ;
CODE_03D402:        10 F7         BPL CODE_03D3FB           ;
CODE_03D404:        20 20 D4      JSR CODE_03D420           ;
CODE_03D407:        95 5E         STA $5E,x                 ;
CODE_03D409:        A0 01         LDY #$01                  ;
CODE_03D40B:        B5 A1         LDA $A1,x                 ;
CODE_03D40D:        29 01         AND #$01                  ;
CODE_03D40F:        D0 0A         BNE CODE_03D41B           ;
CODE_03D411:        B5 5E         LDA $5E,x                 ;
CODE_03D413:        49 FF         EOR #$FF                  ;
CODE_03D415:        18            CLC                       ;
CODE_03D416:        69 01         ADC #$01                  ;
CODE_03D418:        95 5E         STA $5E,x                 ;
CODE_03D41A:        C8            INY                       ;
CODE_03D41B:        94 47         STY $47,x                 ;
CODE_03D41D:        4C AD C0      JMP CODE_03C0AD           ;

CODE_03D420:        A0 00         LDY #$00                  ;
CODE_03D422:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03D425:        10 0A         BPL CODE_03D431           ;
CODE_03D427:        C8            INY                       ;
CODE_03D428:        A5 00         LDA $00                   ;
CODE_03D42A:        49 FF         EOR #$FF                  ;
CODE_03D42C:        18            CLC                       ;
CODE_03D42D:        69 01         ADC #$01                  ;
CODE_03D42F:        85 00         STA $00                   ;
CODE_03D431:        A5 00         LDA $00                   ;
CODE_03D433:        C9 3C         CMP #$3C                  ;
CODE_03D435:        90 1C         BCC CODE_03D453           ;
CODE_03D437:        A9 3C         LDA #$3C                  ;
CODE_03D439:        85 00         STA $00                   ;
CODE_03D43B:        B5 1C         LDA $1C,x                 ;
CODE_03D43D:        C9 11         CMP #$11                  ;
CODE_03D43F:        D0 12         BNE CODE_03D453           ;
CODE_03D441:        98            TYA                       ;
CODE_03D442:        D5 A1         CMP $A1,x                 ;
CODE_03D444:        F0 0D         BEQ CODE_03D453           ;
CODE_03D446:        B5 A1         LDA $A1,x                 ;
CODE_03D448:        F0 06         BEQ CODE_03D450           ;
CODE_03D44A:        D6 5E         DEC $5E,x                 ;
CODE_03D44C:        B5 5E         LDA $5E,x                 ;
CODE_03D44E:        D0 40         BNE CODE_03D490           ;
CODE_03D450:        98            TYA                       ;
CODE_03D451:        95 A1         STA $A1,x                 ;
CODE_03D453:        A5 00         LDA $00                   ;
CODE_03D455:        29 3C         AND #$3C                  ;
CODE_03D457:        4A            LSR A                     ;
CODE_03D458:        4A            LSR A                     ;
CODE_03D459:        85 00         STA $00                   ;
CODE_03D45B:        A0 00         LDY #$00                  ;
CODE_03D45D:        A5 5D         LDA $5D                   ;
CODE_03D45F:        F0 24         BEQ CODE_03D485           ;
CODE_03D461:        AD 75 07      LDA $0775                 ;
CODE_03D464:        F0 1F         BEQ CODE_03D485           ;
CODE_03D466:        C8            INY                       ;
CODE_03D467:        A5 5D         LDA $5D                   ;
CODE_03D469:        C9 19         CMP #$19                  ;
CODE_03D46B:        90 08         BCC CODE_03D475           ;
CODE_03D46D:        AD 75 07      LDA $0775                 ;
CODE_03D470:        C9 02         CMP #$02                  ;
CODE_03D472:        90 01         BCC CODE_03D475           ;
CODE_03D474:        C8            INY                       ;
CODE_03D475:        B5 1C         LDA $1C,x                 ;
CODE_03D477:        C9 12         CMP #$12                  ;
CODE_03D479:        D0 04         BNE CODE_03D47F           ;
CODE_03D47B:        A5 5D         LDA $5D                   ;
CODE_03D47D:        D0 06         BNE CODE_03D485           ;
CODE_03D47F:        B5 A1         LDA $A1,x                 ;
CODE_03D481:        D0 02         BNE CODE_03D485           ;
CODE_03D483:        A0 00         LDY #$00                  ;
CODE_03D485:        B9 01 00      LDA $0001,y               ;
CODE_03D488:        A4 00         LDY $00                   ;
CODE_03D48A:        38            SEC                       ;
CODE_03D48B:        E9 01         SBC #$01                  ;
CODE_03D48D:        88            DEY                       ;
CODE_03D48E:        10 FA         BPL CODE_03D48A           ;
CODE_03D490:        60            RTS                       ;

DATA_03D491:        db $1A,$58,$98,$96,$94,$92,$90,$8E
                    db $8C,$8A,$88,$86,$84,$82,$80

CODE_03D4A0:        DA            PHX                       ;
CODE_03D4A1:        AE 69 03      LDX $0369                 ;
CODE_03D4A4:        CA            DEX                       ;
CODE_03D4A5:        CA            DEX                       ;
CODE_03D4A6:        8E 34 03      STX $0334                 ;
CODE_03D4A9:        29 80         AND #$80                  ;
CODE_03D4AB:        F0 21         BEQ CODE_03D4CE           ;
CODE_03D4AD:        9E 0D 03      STZ $030D,x               ;
CODE_03D4B0:        A9 01         LDA #$01                  ;
CODE_03D4B2:        9D 00 03      STA $0300,x               ;
CODE_03D4B5:        A5 04         LDA $04                   ;
CODE_03D4B7:        29 1F         AND #$1F                  ;
CODE_03D4B9:        0A            ASL A                     ;
CODE_03D4BA:        0A            ASL A                     ;
CODE_03D4BB:        0A            ASL A                     ;
CODE_03D4BC:        85 E4         STA $E4                   ;
CODE_03D4BE:        A9 00         LDA #$00                  ;
CODE_03D4C0:        38            SEC                       ;
CODE_03D4C1:        E5 42         SBC $42                   ;
CODE_03D4C3:        18            CLC                       ;
CODE_03D4C4:        65 E4         ADC $E4                   ;
CODE_03D4C6:        9D 1A 03      STA $031A,x               ;
CODE_03D4C9:        A9 03         LDA #$03                  ;
CODE_03D4CB:        9D 27 03      STA $0327,x               ;
CODE_03D4CE:        FA            PLX                       ;
CODE_03D4CF:        60            RTS                       ;

;Bridge Collapse command
CODE_03D4D0:        AE 68 03      LDX $0368                 ;\
CODE_03D4D3:        B5 1C         LDA $1C,x                 ; |Check if Bowser still exists
CODE_03D4D5:        C9 2D         CMP #$2D                  ; |(He could've been killed by fireballs)
CODE_03D4D7:        D0 11         BNE CODE_03D4EA           ;/ If he doesn't exist, skip bridge destruction
CODE_03D4D9:        86 9E         STX $9E                   ;Store bowser's sprite index into current sprite index
CODE_03D4DB:        B5 29         LDA $29,x                 ;\
CODE_03D4DD:        F0 24         BEQ CODE_03D503           ;/If Bowser is in a normal state, destroy bridge
CODE_03D4DF:        29 40         AND #$40                  ;\
CODE_03D4E1:        F0 07         BEQ CODE_03D4EA           ;/If Bowser isn't in a defeated state (fall down bridge), remove bridge
CODE_03D4E3:        BD 38 02      LDA $0238,x               ;\
CODE_03D4E6:        C9 E0         CMP #$E0                  ; |If Bowser sprite is not low enough yet, branch
CODE_03D4E8:        90 13         BCC CODE_03D4FD           ;/
CODE_03D4EA:        AD 95 00      LDA $0095                 ;\Flag to not play music?
CODE_03D4ED:        D0 08         BNE CODE_03D4F7           ;/
CODE_03D4EF:        A9 0B         LDA #$0B                  ;\Toad/Princess saved fanfare music
CODE_03D4F1:        8D 02 16      STA $1602                 ;/
CODE_03D4F4:        8D 95 00      STA $0095                 ;
CODE_03D4F7:        EE 72 07      INC $0772                 ;Go to next command
CODE_03D4FA:        4C 6B D5      JMP CODE_03D56B           ;

CODE_03D4FD:        20 3A C1      JSR CODE_03C13A           ;
CODE_03D500:        4C 79 D6      JMP CODE_03D679           ;

CODE_03D503:        CE 64 03      DEC $0364                 ;
CODE_03D506:        D0 4F         BNE CODE_03D557           ;
CODE_03D508:        A9 04         LDA #$04                  ;\Amount of delay until the next bridge tile collapses
CODE_03D50A:        8D 64 03      STA $0364                 ;/
CODE_03D50D:        AD 63 03      LDA $0363                 ;
CODE_03D510:        49 01         EOR #$01                  ;
CODE_03D512:        8D 63 03      STA $0363                 ;
CODE_03D515:        A9 02         LDA #$02                  ;
CODE_03D517:        85 05         STA $05                   ;
CODE_03D519:        AC 69 03      LDY $0369                 ;
CODE_03D51C:        B9 91 D4      LDA $D491,y               ;
CODE_03D51F:        85 04         STA $04                   ;
CODE_03D521:        20 A0 D4      JSR CODE_03D4A0           ;
CODE_03D524:        AC 00 17      LDY $1700                 ;
CODE_03D527:        C8            INY                       ;
CODE_03D528:        A2 18         LDX #$18                  ;
CODE_03D52A:        20 F3 93      JSR CODE_0393F3           ;
CODE_03D52D:        A6 9E         LDX $9E                   ;
CODE_03D52F:        20 B2 93      JSR CODE_0393B2           ;
CODE_03D532:        A9 16         LDA #$16                  ;\
CODE_03D534:        8D 03 16      STA $1603                 ;/Bowser bridge crumbling sound
CODE_03D537:        AD 69 03      LDA $0369                 ;
CODE_03D53A:        D0 0A         BNE CODE_03D546           ;
CODE_03D53C:        A9 08         LDA #$08                  ;
CODE_03D53E:        8D 4B 01      STA $014B                 ;
CODE_03D541:        A9 FF         LDA #$FF                  ;
CODE_03D543:        8D 4C 0F      STA $0F4C                 ;
CODE_03D546:        EE 69 03      INC $0369                 ;
CODE_03D549:        AD 69 03      LDA $0369                 ;
CODE_03D54C:        C9 0F         CMP #$0F                  ;
CODE_03D54E:        D0 07         BNE CODE_03D557           ;
CODE_03D550:        20 26 C7      JSR CODE_03C726           ;
CODE_03D553:        A9 40         LDA #$40                  ;
CODE_03D555:        95 29         STA $29,x                 ;
CODE_03D557:        4C 79 D6      JMP CODE_03D679           ;

DATA_03D55A:        db $21,$41,$11,$31

CODE_03D55E:        B5 29         LDA $29,x                 ;
CODE_03D560:        29 20         AND #$20                  ;
CODE_03D562:        F0 15         BEQ CODE_03D579           ;
CODE_03D564:        BD 38 02      LDA $0238,x               ;
CODE_03D567:        C9 E0         CMP #$E0                  ;
CODE_03D569:        90 92         BCC CODE_03D4FD           ;
CODE_03D56B:        A2 08         LDX #$08                  ;
CODE_03D56D:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03D570:        CA            DEX                       ;
CODE_03D571:        10 FA         BPL CODE_03D56D           ;
CODE_03D573:        8D CB 06      STA $06CB                 ;
CODE_03D576:        A6 9E         LDX $9E                   ;
CODE_03D578:        60            RTS                       ;

CODE_03D579:        9C CB 06      STZ $06CB                 ;
CODE_03D57C:        AD 47 07      LDA $0747                 ;
CODE_03D57F:        F0 03         BEQ CODE_03D584           ;
CODE_03D581:        4C 36 D6      JMP CODE_03D636           ;

CODE_03D584:        AD 63 03      LDA $0363                 ;
CODE_03D587:        10 03         BPL CODE_03D58C           ;
CODE_03D589:        4C 0B D6      JMP CODE_03D60B           ;

CODE_03D58C:        CE 64 03      DEC $0364                 ;
CODE_03D58F:        D0 0D         BNE CODE_03D59E           ;
CODE_03D591:        A9 20         LDA #$20                  ;
CODE_03D593:        8D 64 03      STA $0364                 ;
CODE_03D596:        AD 63 03      LDA $0363                 ;
CODE_03D599:        49 01         EOR #$01                  ;
CODE_03D59B:        8D 63 03      STA $0363                 ;
CODE_03D59E:        A5 09         LDA $09                   ;
CODE_03D5A0:        29 0F         AND #$0F                  ;
CODE_03D5A2:        D0 04         BNE CODE_03D5A8           ;
CODE_03D5A4:        A9 02         LDA #$02                  ;
CODE_03D5A6:        95 47         STA $47,x                 ;
CODE_03D5A8:        BD 92 07      LDA $0792,x               ;
CODE_03D5AB:        F0 1D         BEQ CODE_03D5CA           ;
CODE_03D5AD:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03D5B0:        10 18         BPL CODE_03D5CA           ;
CODE_03D5B2:        A9 01         LDA #$01                  ;
CODE_03D5B4:        95 47         STA $47,x                 ;
CODE_03D5B6:        A9 02         LDA #$02                  ;
CODE_03D5B8:        8D 65 03      STA $0365                 ;
CODE_03D5BB:        A9 20         LDA #$20                  ;
CODE_03D5BD:        9D 92 07      STA $0792,x               ;
CODE_03D5C0:        8D 9C 07      STA $079C                 ;
CODE_03D5C3:        BD 1A 02      LDA $021A,x               ;
CODE_03D5C6:        C9 B0         CMP #$B0                  ;
CODE_03D5C8:        B0 41         BCS CODE_03D60B           ;
CODE_03D5CA:        A5 09         LDA $09                   ;
CODE_03D5CC:        29 03         AND #$03                  ;
CODE_03D5CE:        D0 3B         BNE CODE_03D60B           ;
CODE_03D5D0:        BD 1A 02      LDA $021A,x               ;
CODE_03D5D3:        CD 66 03      CMP $0366                 ;
CODE_03D5D6:        D0 0C         BNE CODE_03D5E4           ;
CODE_03D5D8:        BD B7 07      LDA $07B7,x               ;
CODE_03D5DB:        29 03         AND #$03                  ;
CODE_03D5DD:        A8            TAY                       ;
CODE_03D5DE:        B9 5A D5      LDA $D55A,y               ;
CODE_03D5E1:        8D DC 06      STA $06DC                 ;
CODE_03D5E4:        BD 1A 02      LDA $021A,x               ;
CODE_03D5E7:        18            CLC                       ;
CODE_03D5E8:        6D 65 03      ADC $0365                 ;
CODE_03D5EB:        9D 1A 02      STA $021A,x               ;
CODE_03D5EE:        B4 47         LDY $47,x                 ;
CODE_03D5F0:        C0 01         CPY #$01                  ;
CODE_03D5F2:        F0 17         BEQ CODE_03D60B           ;
CODE_03D5F4:        A0 FF         LDY #$FF                  ;
CODE_03D5F6:        38            SEC                       ;
CODE_03D5F7:        ED 66 03      SBC $0366                 ;
CODE_03D5FA:        10 07         BPL CODE_03D603           ;
CODE_03D5FC:        49 FF         EOR #$FF                  ;
CODE_03D5FE:        18            CLC                       ;
CODE_03D5FF:        69 01         ADC #$01                  ;
CODE_03D601:        A0 01         LDY #$01                  ;
CODE_03D603:        CD DC 06      CMP $06DC                 ;
CODE_03D606:        90 03         BCC CODE_03D60B           ;
CODE_03D608:        8C 65 03      STY $0365                 ;
CODE_03D60B:        BD 92 07      LDA $0792,x               ;
CODE_03D60E:        D0 29         BNE CODE_03D639           ;
CODE_03D610:        20 3A C1      JSR CODE_03C13A           ;
CODE_03D613:        AD 5F 07      LDA $075F                 ;
CODE_03D616:        C9 05         CMP #$05                  ;
CODE_03D618:        90 09         BCC CODE_03D623           ;
CODE_03D61A:        A5 09         LDA $09                   ;
CODE_03D61C:        29 03         AND #$03                  ;
CODE_03D61E:        D0 03         BNE CODE_03D623           ;
CODE_03D620:        20 8E BB      JSR CODE_03BB8E           ;
CODE_03D623:        BD 38 02      LDA $0238,x               ;
CODE_03D626:        C9 80         CMP #$80                  ;
CODE_03D628:        90 1D         BCC CODE_03D647           ;
CODE_03D62A:        BD B7 07      LDA $07B7,x               ;
CODE_03D62D:        29 03         AND #$03                  ;
CODE_03D62F:        A8            TAY                       ;
CODE_03D630:        B9 5A D5      LDA $D55A,y               ;
CODE_03D633:        9D 92 07      STA $0792,x               ;
CODE_03D636:        4C 47 D6      JMP CODE_03D647           ;

CODE_03D639:        C9 01         CMP #$01                  ;
CODE_03D63B:        D0 0A         BNE CODE_03D647           ;
CODE_03D63D:        DE 38 02      DEC $0238,x               ;
CODE_03D640:        20 26 C7      JSR CODE_03C726           ;
CODE_03D643:        A9 FE         LDA #$FE                  ;
CODE_03D645:        95 A1         STA $A1,x                 ;
CODE_03D647:        AD 5F 07      LDA $075F                 ;
CODE_03D64A:        C9 07         CMP #$07                  ;
CODE_03D64C:        F0 04         BEQ CODE_03D652           ;
CODE_03D64E:        C9 05         CMP #$05                  ;
CODE_03D650:        B0 27         BCS CODE_03D679           ;
CODE_03D652:        AD 9C 07      LDA $079C                 ;
CODE_03D655:        D0 22         BNE CODE_03D679           ;
CODE_03D657:        A9 20         LDA #$20                  ;
CODE_03D659:        8D 9C 07      STA $079C                 ;
CODE_03D65C:        AD 63 03      LDA $0363                 ;
CODE_03D65F:        49 80         EOR #$80                  ;
CODE_03D661:        8D 63 03      STA $0363                 ;
CODE_03D664:        30 E1         BMI CODE_03D647           ;
CODE_03D666:        20 F9 D6      JSR CODE_03D6F9           ;Get timer delay of next fireball spawn
CODE_03D669:        AC CC 06      LDY $06CC                 ;\If hard mode (after 5-3)
CODE_03D66C:        F0 03         BEQ CODE_03D671           ; |
CODE_03D66E:        38            SEC                       ; |Timer -= #$10;
CODE_03D66F:        E9 10         SBC #$10                  ; |
CODE_03D671:        8D 9C 07      STA $079C                 ;/ store into time until next sprite gets generated
CODE_03D674:        A9 15         LDA #$15                  ;\Activate bowser fire generator
CODE_03D676:        8D CB 06      STA $06CB                 ;/
CODE_03D679:        20 D4 D6      JSR CODE_03D6D4           ;
CODE_03D67C:        A0 10         LDY #$10                  ;
CODE_03D67E:        B5 47         LDA $47,x                 ;
CODE_03D680:        4A            LSR A                     ;
CODE_03D681:        90 02         BCC CODE_03D685           ;
CODE_03D683:        A0 F0         LDY #$F0                  ;
CODE_03D685:        98            TYA                       ;
CODE_03D686:        18            CLC                       ;
CODE_03D687:        7D 1A 02      ADC $021A,x               ;
CODE_03D68A:        AC CF 06      LDY $06CF                 ;
CODE_03D68D:        99 1A 02      STA $021A,y               ;
CODE_03D690:        BD 38 02      LDA $0238,x               ;
CODE_03D693:        18            CLC                       ;
CODE_03D694:        69 08         ADC #$08                  ;
CODE_03D696:        99 38 02      STA $0238,y               ;
CODE_03D699:        B5 29         LDA $29,x                 ;
CODE_03D69B:        99 29 00      STA $0029,y               ;
CODE_03D69E:        B5 47         LDA $47,x                 ;
CODE_03D6A0:        99 47 00      STA $0047,y               ;
CODE_03D6A3:        A5 9E         LDA $9E                   ;
CODE_03D6A5:        48            PHA                       ;
CODE_03D6A6:        AE CF 06      LDX $06CF                 ;
CODE_03D6A9:        86 9E         STX $9E                   ;
CODE_03D6AB:        A5 97         LDA $97                   ;
CODE_03D6AD:        D0 12         BNE CODE_03D6C1           ;
CODE_03D6AF:        AD 5F 07      LDA $075F                 ;\
CODE_03D6B2:        C9 07         CMP #$07                  ; |Play real bowser battle music at world 8
CODE_03D6B4:        D0 04         BNE CODE_03D6BA           ;/
CODE_03D6B6:        A9 05         LDA #$05                  ;"real" bowser battle music
CODE_03D6B8:        80 02         BRA CODE_03D6BC           ;

CODE_03D6BA:        A9 04         LDA #$04                  ;\"fake" bowser battle music
CODE_03D6BC:        8D 02 16      STA $1602                 ;/
CODE_03D6BF:        85 97         STA $97                   ;
CODE_03D6C1:        A9 2D         LDA #$2D                  ;\
CODE_03D6C3:        95 1C         STA $1C,x                 ;/Sprite to generate: Bowser
CODE_03D6C5:        A9 20         LDA #$20                  ;
CODE_03D6C7:        9D 57 02      STA $0257,x               ;
CODE_03D6CA:        68            PLA                       ;
CODE_03D6CB:        85 9E         STA $9E                   ;
CODE_03D6CD:        AA            TAX                       ;
CODE_03D6CE:        A9 00         LDA #$00                  ;
CODE_03D6D0:        8D 6A 03      STA $036A                 ;
CODE_03D6D3:        60            RTS                       ;

CODE_03D6D4:        EE 6A 03      INC $036A                 ;
CODE_03D6D7:        20 09 CD      JSR CODE_03CD09           ;
CODE_03D6DA:        B5 29         LDA $29,x                 ;
CODE_03D6DC:        D0 F5         BNE CODE_03D6D3           ;
CODE_03D6DE:        A9 0A         LDA #$0A                  ;
CODE_03D6E0:        9D 90 04      STA $0490,x               ;
CODE_03D6E3:        20 CC E9      JSR CODE_03E9CC           ;
CODE_03D6E6:        AD 70 07      LDA $0770                 ;
CODE_03D6E9:        C9 02         CMP #$02                  ;
CODE_03D6EB:        F0 03         BEQ CODE_03D6F0           ;
CODE_03D6ED:        4C 55 DE      JMP CODE_03DE55           ;

CODE_03D6F0:        60            RTS                       ;

DATA_03D6F1:        db $BF,$40,$BF,$BF,$BF,$40,$40,$BF      ;How fast the bowser fire generates.

CODE_03D6F9:        AC 67 03      LDY $0367                 ;\
CODE_03D6FC:        EE 67 03      INC $0367                 ; |Get timer delay of next fireball spawn
CODE_03D6FF:        AD 67 03      LDA $0367                 ; |Returns: Timer delay in A
CODE_03D702:        29 07         AND #$07                  ; |
CODE_03D704:        8D 67 03      STA $0367                 ; |
CODE_03D707:        B9 F1 D6      LDA $D6F1,y               ; |
CODE_03D70A:        60            RTS                       ;/

CODE_03D70B:        EC 4D 0F      CPX $0F4D                 ;
CODE_03D70E:        D0 0C         BNE CODE_03D71C           ;
CODE_03D710:        AD 4C 0F      LDA $0F4C                 ;
CODE_03D713:        F0 07         BEQ CODE_03D71C           ;
CODE_03D715:        AD 4B 01      LDA $014B                 ;
CODE_03D718:        C9 06         CMP #$06                  ;
CODE_03D71A:        F0 44         BEQ CODE_03D760           ;
CODE_03D71C:        AD 47 07      LDA $0747                 ;
CODE_03D71F:        D0 34         BNE CODE_03D755           ;
CODE_03D721:        A9 40         LDA #$40                  ;
CODE_03D723:        AC CC 06      LDY $06CC                 ;
CODE_03D726:        F0 02         BEQ CODE_03D72A           ;
CODE_03D728:        A9 60         LDA #$60                  ;
CODE_03D72A:        85 00         STA $00                   ;
CODE_03D72C:        BD 02 04      LDA $0402,x               ;
CODE_03D72F:        38            SEC                       ;
CODE_03D730:        E5 00         SBC $00                   ;
CODE_03D732:        9D 02 04      STA $0402,x               ;
CODE_03D735:        BD 1A 02      LDA $021A,x               ;
CODE_03D738:        E9 01         SBC #$01                  ;
CODE_03D73A:        9D 1A 02      STA $021A,x               ;
CODE_03D73D:        B5 79         LDA $79,x                 ;
CODE_03D73F:        E9 00         SBC #$00                  ;
CODE_03D741:        95 79         STA $79,x                 ;
CODE_03D743:        BC 1D 04      LDY $041D,x               ;
CODE_03D746:        BD 38 02      LDA $0238,x               ;
CODE_03D749:        D9 70 C9      CMP $C970,y               ;Compare with possible bowser fireball Y positions
CODE_03D74C:        F0 07         BEQ CODE_03D755           ;
CODE_03D74E:        18            CLC                       ;
CODE_03D74F:        7D 3D 04      ADC $043D,x               ;
CODE_03D752:        9D 38 02      STA $0238,x               ;
CODE_03D755:        20 39 FD      JSR CODE_03FD39           ;
CODE_03D758:        B5 29         LDA $29,x                 ;
CODE_03D75A:        D0 AE         BNE CODE_03D70A           ;
CODE_03D75C:        22 01 CD 05   JSL CODE_05CD01           ;
CODE_03D760:        60            RTS                       ;

CODE_03D761:        D6 A1         DEC $A1,x                 ;
CODE_03D763:        D0 17         BNE CODE_03D77C           ;
CODE_03D765:        A9 08         LDA #$08                  ;
CODE_03D767:        95 A1         STA $A1,x                 ;
CODE_03D769:        F6 5E         INC $5E,x                 ;
CODE_03D76B:        B5 5E         LDA $5E,x                 ;
CODE_03D76D:        C9 01         CMP #$01                  ;
CODE_03D76F:        D0 07         BNE CODE_03D778           ;
CODE_03D771:        A9 29         LDA #$29                  ;\
CODE_03D773:        8D 00 16      STA $1600                 ;/Firework sound
CODE_03D776:        80 04         BRA CODE_03D77C           ;

CODE_03D778:        C9 04         CMP #$04                  ;
CODE_03D77A:        B0 18         BCS CODE_03D794           ;
CODE_03D77C:        20 39 FD      JSR CODE_03FD39           ;
CODE_03D77F:        AD B9 03      LDA $03B9                 ;
CODE_03D782:        8D BA 03      STA $03BA                 ;
CODE_03D785:        AD AE 03      LDA $03AE                 ;
CODE_03D788:        8D AF 03      STA $03AF                 ;
CODE_03D78B:        BC 46 0B      LDY $0B46,x               ;
CODE_03D78E:        B5 5E         LDA $5E,x                 ;
CODE_03D790:        20 48 F5      JSR CODE_03F548           ;
CODE_03D793:        60            RTS                       ;

CODE_03D794:        74 10         STZ $10,x                 ;
CODE_03D796:        BC 46 0B      LDY $0B46,x               ;
CODE_03D799:        A9 03         LDA #$03                  ;
CODE_03D79B:        99 00 0D      STA $0D00,y               ;
CODE_03D79E:        99 04 0D      STA $0D04,y               ;
CODE_03D7A1:        99 08 0D      STA $0D08,y               ;
CODE_03D7A4:        99 0C 0D      STA $0D0C,y               ;
CODE_03D7A7:        A9 05         LDA #$05                  ;
CODE_03D7A9:        8D 49 01      STA $0149                 ;
CODE_03D7AC:        4C 18 D8      JMP CODE_03D818           ;

CODE_03D7AF:        9C CB 06      STZ $06CB                 ;
CODE_03D7B2:        AD 46 07      LDA $0746                 ;\
CODE_03D7B5:        C9 05         CMP #$05                  ; |Flagpole task control
CODE_03D7B7:        B0 3A         BCS CODE_03D7F3           ;/
CODE_03D7B9:        20 08 9B      JSR CODE_039B08           ;ExecutePtrShort

PNTR_03D7BC:        dw CODE_03D7F3                          ;$00 - Nothing
                    dw CODE_03D7C6                          ;$01 - Check if firework is applicable
                    dw CODE_03D7FE                          ;$02 - Award points
                    dw CODE_03D830                          ;$03 - Raise star flag and launch fireworks
                    dw CODE_03D883                          ;$04 - Delay to level fadeout

CODE_03D7C6:        A0 05         LDY #$05                  ;
CODE_03D7C8:        AD EB 07      LDA $07EB                 ;
CODE_03D7CB:        C9 01         CMP #$01                  ;
CODE_03D7CD:        F0 0E         BEQ CODE_03D7DD           ;
CODE_03D7CF:        A0 03         LDY #$03                  ;
CODE_03D7D1:        C9 03         CMP #$03                  ;
CODE_03D7D3:        F0 08         BEQ CODE_03D7DD           ;
CODE_03D7D5:        A0 00         LDY #$00                  ;
CODE_03D7D7:        C9 06         CMP #$06                  ;
CODE_03D7D9:        F0 02         BEQ CODE_03D7DD           ;
CODE_03D7DB:        A9 FF         LDA #$FF                  ;
CODE_03D7DD:        8D D7 06      STA $06D7                 ;
CODE_03D7E0:        94 29         STY $29,x                 ;
CODE_03D7E2:        AD 43 21      LDA $2143                 ;
CODE_03D7E5:        29 7F         AND #$7F                  ;
CODE_03D7E7:        C9 4B         CMP #$4B                  ;
CODE_03D7E9:        F0 05         BEQ CODE_03D7F0           ;
CODE_03D7EB:        A9 4B         LDA #$4B                  ;\
CODE_03D7ED:        8D 03 16      STA $1603                 ;/Timer to score conversion sound
CODE_03D7F0:        EE 46 07      INC $0746                 ;
CODE_03D7F3:        60            RTS                       ;

CODE_03D7F4:        A9 4C         LDA #$4C                  ;\SMAS menu 'zooming' sound (after pressing start in hall screen)
CODE_03D7F6:        8D 03 16      STA $1603                 ;/
CODE_03D7F9:        8D 1A 0E      STA $0E1A                 ;
CODE_03D7FC:        80 F2         BRA CODE_03D7F0           ;

CODE_03D7FE:        AD E9 07      LDA $07E9                 ;
CODE_03D801:        0D EA 07      ORA $07EA                 ;
CODE_03D804:        0D EB 07      ORA $07EB                 ;
CODE_03D807:        F0 EB         BEQ CODE_03D7F4           ;
CODE_03D809:        A0 23         LDY #$23                  ;
CODE_03D80B:        A9 FF         LDA #$FF                  ;
CODE_03D80D:        8D 4A 01      STA $014A                 ;
CODE_03D810:        20 F9 9C      JSR CODE_039CF9           ;
CODE_03D813:        A9 05         LDA #$05                  ;
CODE_03D815:        8D 4A 01      STA $014A                 ;
CODE_03D818:        A0 0B         LDY #$0B                  ;
CODE_03D81A:        AD 53 07      LDA $0753                 ;
CODE_03D81D:        F0 02         BEQ CODE_03D821           ;
CODE_03D81F:        A0 11         LDY #$11                  ;
CODE_03D821:        20 F9 9C      JSR CODE_039CF9           ;
CODE_03D824:        AD 53 07      LDA $0753                 ;
CODE_03D827:        0A            ASL A                     ;
CODE_03D828:        0A            ASL A                     ;
CODE_03D829:        0A            ASL A                     ;
CODE_03D82A:        0A            ASL A                     ;
CODE_03D82B:        09 04         ORA #$04                  ;
CODE_03D82D:        4C 64 BD      JMP CODE_03BD64           ;

CODE_03D830:        A9 01         LDA #$01                  ;
CODE_03D832:        85 1B         STA $1B                   ;
CODE_03D834:        BD 38 02      LDA $0238,x               ;
CODE_03D837:        C9 72         CMP #$72                  ;
CODE_03D839:        90 05         BCC CODE_03D840           ;
CODE_03D83B:        DE 38 02      DEC $0238,x               ;
CODE_03D83E:        80 0C         BRA CODE_03D84C           ;

CODE_03D840:        AD D7 06      LDA $06D7                 ;
CODE_03D843:        F0 32         BEQ CODE_03D877           ;
CODE_03D845:        30 30         BMI CODE_03D877           ;
CODE_03D847:        A9 16         LDA #$16                  ;
CODE_03D849:        8D CB 06      STA $06CB                 ;
CODE_03D84C:        20 39 FD      JSR CODE_03FD39           ;
CODE_03D84F:        BC 46 0B      LDY $0B46,x               ;
CODE_03D852:        AD B9 03      LDA $03B9                 ;
CODE_03D855:        99 01 09      STA $0901,y               ;
CODE_03D858:        A5 09         LDA $09                   ;
CODE_03D85A:        29 18         AND #$18                  ;
CODE_03D85C:        4A            LSR A                     ;
CODE_03D85D:        4A            LSR A                     ;
CODE_03D85E:        18            CLC                       ;
CODE_03D85F:        69 04         ADC #$04                  ;
CODE_03D861:        99 02 09      STA $0902,y               ;
CODE_03D864:        A9 0B         LDA #$0B                  ;
CODE_03D866:        99 03 09      STA $0903,y               ;
CODE_03D869:        AD AE 03      LDA $03AE                 ;
CODE_03D86C:        99 00 09      STA $0900,y               ;
CODE_03D86F:        A9 02         LDA #$02                  ;
CODE_03D871:        99 00 0D      STA $0D00,y               ;
CODE_03D874:        A6 9E         LDX $9E                   ;
CODE_03D876:        60            RTS                       ;

CODE_03D877:        20 4C D8      JSR CODE_03D84C           ;
CODE_03D87A:        A9 06         LDA #$06                  ;
CODE_03D87C:        9D A2 07      STA $07A2,x               ;
CODE_03D87F:        EE 46 07      INC $0746                 ;
CODE_03D882:        60            RTS                       ;

CODE_03D883:        20 4C D8      JSR CODE_03D84C           ;
CODE_03D886:        BD A2 07      LDA $07A2,x               ;
CODE_03D889:        D0 05         BNE CODE_03D890           ;
CODE_03D88B:        AD B1 07      LDA $07B1                 ;
CODE_03D88E:        F0 EF         BEQ CODE_03D87F           ;
CODE_03D890:        60            RTS                       ;

CODE_03D891:        B5 29         LDA $29,x                 ;
CODE_03D893:        D0 56         BNE CODE_03D8EB           ;
CODE_03D895:        BD 92 07      LDA $0792,x               ;
CODE_03D898:        D0 51         BNE CODE_03D8EB           ;
CODE_03D89A:        B5 A1         LDA $A1,x                 ;
CODE_03D89C:        D0 23         BNE CODE_03D8C1           ;
CODE_03D89E:        B5 5E         LDA $5E,x                 ;
CODE_03D8A0:        30 14         BMI CODE_03D8B6           ;
CODE_03D8A2:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03D8A5:        10 09         BPL CODE_03D8B0           ;
CODE_03D8A7:        A5 00         LDA $00                   ;
CODE_03D8A9:        49 FF         EOR #$FF                  ;
CODE_03D8AB:        18            CLC                       ;
CODE_03D8AC:        69 01         ADC #$01                  ;
CODE_03D8AE:        85 00         STA $00                   ;
CODE_03D8B0:        A5 00         LDA $00                   ;
CODE_03D8B2:        C9 21         CMP #$21                  ;
CODE_03D8B4:        90 35         BCC CODE_03D8EB           ;
CODE_03D8B6:        B5 5E         LDA $5E,x                 ;
CODE_03D8B8:        49 FF         EOR #$FF                  ;
CODE_03D8BA:        18            CLC                       ;
CODE_03D8BB:        69 01         ADC #$01                  ;
CODE_03D8BD:        95 5E         STA $5E,x                 ;
CODE_03D8BF:        F6 A1         INC $A1,x                 ;
CODE_03D8C1:        BD 3D 04      LDA $043D,x               ;
CODE_03D8C4:        B4 5E         LDY $5E,x                 ;
CODE_03D8C6:        10 03         BPL CODE_03D8CB           ;
CODE_03D8C8:        BD 1D 04      LDA $041D,x               ;
CODE_03D8CB:        85 00         STA $00                   ;
CODE_03D8CD:        A5 09         LDA $09                   ;
CODE_03D8CF:        4A            LSR A                     ;
CODE_03D8D0:        90 19         BCC CODE_03D8EB           ;
CODE_03D8D2:        AD 47 07      LDA $0747                 ;
CODE_03D8D5:        D0 14         BNE CODE_03D8EB           ;
CODE_03D8D7:        BD 38 02      LDA $0238,x               ;
CODE_03D8DA:        18            CLC                       ;
CODE_03D8DB:        75 5E         ADC $5E,x                 ;
CODE_03D8DD:        9D 38 02      STA $0238,x               ;
CODE_03D8E0:        C5 00         CMP $00                   ;
CODE_03D8E2:        D0 07         BNE CODE_03D8EB           ;
CODE_03D8E4:        74 A1         STZ $A1,x                 ;
CODE_03D8E6:        A9 40         LDA #$40                  ;
CODE_03D8E8:        9D 92 07      STA $0792,x               ;
CODE_03D8EB:        A9 00         LDA #$00                  ;
CODE_03D8ED:        9D 57 02      STA $0257,x               ;
CODE_03D8F0:        60            RTS                       ;

CODE_03D8F1:        85 07         STA $07                   ;
CODE_03D8F3:        BD 03 02      LDA $0203,x               ;
CODE_03D8F6:        D0 0E         BNE CODE_03D906           ;
CODE_03D8F8:        A0 18         LDY #$18                  ;
CODE_03D8FA:        B5 5E         LDA $5E,x                 ;
CODE_03D8FC:        18            CLC                       ;
CODE_03D8FD:        65 07         ADC $07                   ;
CODE_03D8FF:        95 5E         STA $5E,x                 ;
CODE_03D901:        B5 A1         LDA $A1,x                 ;
CODE_03D903:        69 00         ADC #$00                  ;
CODE_03D905:        60            RTS                       ;

CODE_03D906:        A0 08         LDY #$08                  ;
CODE_03D908:        B5 5E         LDA $5E,x                 ;
CODE_03D90A:        38            SEC                       ;
CODE_03D90B:        E5 07         SBC $07                   ;
CODE_03D90D:        95 5E         STA $5E,x                 ;
CODE_03D90F:        B5 A1         LDA $A1,x                 ;
CODE_03D911:        E9 00         SBC #$00                  ;
CODE_03D913:        60            RTS                       ;

CODE_03D914:        B5 BC         LDA $BC,x                 ;Lift (balance) movement code
CODE_03D916:        C9 03         CMP #$03                  ;
CODE_03D918:        D0 03         BNE CODE_03D91D           ;
CODE_03D91A:        4C E2 CD      JMP CODE_03CDE2           ; Erase sprite

CODE_03D91D:        B5 29         LDA $29,x                 ;
CODE_03D91F:        10 01         BPL CODE_03D922           ;
CODE_03D921:        60            RTS                       ;

CODE_03D922:        A8            TAY                       ;
CODE_03D923:        BD A2 03      LDA $03A2,x               ;
CODE_03D926:        85 00         STA $00                   ;
CODE_03D928:        B5 47         LDA $47,x                 ;
CODE_03D92A:        F0 03         BEQ CODE_03D92F           ;
CODE_03D92C:        4C 3A DB      JMP CODE_03DB3A           ;

CODE_03D92F:        A9 2D         LDA #$2D                  ;
CODE_03D931:        DD 38 02      CMP $0238,x               ;
CODE_03D934:        90 10         BCC CODE_03D946           ;
CODE_03D936:        C4 00         CPY $00                   ;
CODE_03D938:        F0 09         BEQ CODE_03D943           ;
CODE_03D93A:        18            CLC                       ;
CODE_03D93B:        69 02         ADC #$02                  ;
CODE_03D93D:        9D 38 02      STA $0238,x               ;
CODE_03D940:        4C 30 DB      JMP CODE_03DB30           ;

CODE_03D943:        4C 17 DB      JMP CODE_03DB17           ;

CODE_03D946:        D9 38 02      CMP $0238,y               ;
CODE_03D949:        90 0D         BCC CODE_03D958           ;
CODE_03D94B:        E4 00         CPX $00                   ;
CODE_03D94D:        F0 F4         BEQ CODE_03D943           ;
CODE_03D94F:        18            CLC                       ;
CODE_03D950:        69 02         ADC #$02                  ;
CODE_03D952:        99 38 02      STA $0238,y               ;
CODE_03D955:        4C 30 DB      JMP CODE_03DB30           ;

CODE_03D958:        BD 38 02      LDA $0238,x               ;
CODE_03D95B:        48            PHA                       ;
CODE_03D95C:        BD A2 03      LDA $03A2,x               ;
CODE_03D95F:        10 18         BPL CODE_03D979           ;
CODE_03D961:        BD 3D 04      LDA $043D,x               ;
CODE_03D964:        18            CLC                       ;
CODE_03D965:        69 05         ADC #$05                  ;
CODE_03D967:        85 00         STA $00                   ;
CODE_03D969:        B5 A1         LDA $A1,x                 ;
CODE_03D96B:        69 00         ADC #$00                  ;
CODE_03D96D:        30 1A         BMI CODE_03D989           ;
CODE_03D96F:        D0 0C         BNE CODE_03D97D           ;
CODE_03D971:        A5 00         LDA $00                   ;
CODE_03D973:        C9 0B         CMP #$0B                  ;
CODE_03D975:        90 0C         BCC CODE_03D983           ;
CODE_03D977:        B0 04         BCS CODE_03D97D           ;
CODE_03D979:        C5 9E         CMP $9E                   ;
CODE_03D97B:        F0 0C         BEQ CODE_03D989           ;
CODE_03D97D:        20 67 C1      JSR CODE_03C167           ;
CODE_03D980:        4C 8C D9      JMP CODE_03D98C           ;

CODE_03D983:        20 30 DB      JSR CODE_03DB30           ;
CODE_03D986:        4C 8C D9      JMP CODE_03D98C           ;

CODE_03D989:        20 63 C1      JSR CODE_03C163           ;
CODE_03D98C:        B4 29         LDY $29,x                 ;
CODE_03D98E:        68            PLA                       ;
CODE_03D98F:        38            SEC                       ;
CODE_03D990:        FD 38 02      SBC $0238,x               ;
CODE_03D993:        18            CLC                       ;
CODE_03D994:        79 38 02      ADC $0238,y               ;
CODE_03D997:        99 38 02      STA $0238,y               ;
CODE_03D99A:        BD A2 03      LDA $03A2,x               ;
CODE_03D99D:        30 04         BMI CODE_03D9A3           ;
CODE_03D99F:        AA            TAX                       ;
CODE_03D9A0:        20 CB E2      JSR CODE_03E2CB           ;
CODE_03D9A3:        A4 9E         LDY $9E                   ;
CODE_03D9A5:        B9 A1 00      LDA $00A1,y               ;
CODE_03D9A8:        19 3D 04      ORA $043D,y               ;
CODE_03D9AB:        D0 03         BNE CODE_03D9B0           ;
CODE_03D9AD:        4C BF DA      JMP CODE_03DABF           ;

CODE_03D9B0:        B9 A1 00      LDA $00A1,y               ;
CODE_03D9B3:        48            PHA                       ;
CODE_03D9B4:        48            PHA                       ;
CODE_03D9B5:        48            PHA                       ;
CODE_03D9B6:        20 C2 DA      JSR CODE_03DAC2           ;
CODE_03D9B9:        A5 42         LDA $42                   ;
CODE_03D9BB:        4A            LSR A                     ;
CODE_03D9BC:        4A            LSR A                     ;
CODE_03D9BD:        4A            LSR A                     ;
CODE_03D9BE:        85 F3         STA $F3                   ;
CODE_03D9C0:        A5 43         LDA $43                   ;
CODE_03D9C2:        29 01         AND #$01                  ;
CODE_03D9C4:        0A            ASL A                     ;
CODE_03D9C5:        0A            ASL A                     ;
CODE_03D9C6:        09 20         ORA #$20                  ;
CODE_03D9C8:        85 F4         STA $F4                   ;
CODE_03D9CA:        A5 F3         LDA $F3                   ;
CODE_03D9CC:        18            CLC                       ;
CODE_03D9CD:        69 1F         ADC #$1F                  ;
CODE_03D9CF:        AA            TAX                       ;
CODE_03D9D0:        29 1F         AND #$1F                  ;
CODE_03D9D2:        85 F5         STA $F5                   ;
CODE_03D9D4:        8A            TXA                       ;
CODE_03D9D5:        29 20         AND #$20                  ;
CODE_03D9D7:        F0 06         BEQ CODE_03D9DF           ;
CODE_03D9D9:        A5 F4         LDA $F4                   ;
CODE_03D9DB:        49 04         EOR #$04                  ;
CODE_03D9DD:        85 F6         STA $F6                   ;
CODE_03D9DF:        C2 30         REP #$30                  ;
CODE_03D9E1:        A5 00         LDA $00                   ;
CODE_03D9E3:        29 1F 24      AND #$241F                ;
CODE_03D9E6:        C5 F3         CMP $F3                   ;
CODE_03D9E8:        B0 07         BCS CODE_03D9F1           ;
CODE_03D9EA:        C5 F5         CMP $F5                   ;
CODE_03D9EC:        90 03         BCC CODE_03D9F1           ;
CODE_03D9EE:        4C 4A DA      JMP CODE_03DA4A           ;

CODE_03D9F1:        98            TYA                       ;
CODE_03D9F2:        29 FF 00      AND #$00FF                ;
CODE_03D9F5:        A8            TAY                       ;
CODE_03D9F6:        AE 00 17      LDX $1700                 ;
CODE_03D9F9:        A5 00         LDA $00                   ;
CODE_03D9FB:        29 FF 1F      AND #$1FFF                ;
CODE_03D9FE:        EB            XBA                       ;
CODE_03D9FF:        9D 02 17      STA $1702,x               ;
CODE_03DA02:        A9 00 03      LDA #$0300                ;
CODE_03DA05:        9D 04 17      STA $1704,x               ;
CODE_03DA08:        B9 A1 00      LDA $00A1,y               ;
CODE_03DA0B:        29 80 00      AND #$0080                ;
CODE_03DA0E:        D0 23         BNE CODE_03DA33           ;
CODE_03DA10:        BD 02 17      LDA $1702,x               ;
CODE_03DA13:        29 03 F0      AND #$F003                ;
CODE_03DA16:        C9 00 A0      CMP #$A000                ;
CODE_03DA19:        F0 05         BEQ CODE_03DA20           ;
CODE_03DA1B:        C9 00 B0      CMP #$B000                ;
CODE_03DA1E:        D0 05         BNE CODE_03DA25           ;
CODE_03DA20:        A9 5C 18      LDA #$185C                ;
CODE_03DA23:        80 03         BRA CODE_03DA28           ;

CODE_03DA25:        A9 A2 10      LDA #$10A2                ;
CODE_03DA28:        9D 06 17      STA $1706,x               ;
CODE_03DA2B:        A9 A3 18      LDA #$18A3                ;
CODE_03DA2E:        9D 08 17      STA $1708,x               ;
CODE_03DA31:        80 09         BRA CODE_03DA3C           ;

CODE_03DA33:        A9 24 00      LDA #$0024                ;
CODE_03DA36:        9D 06 17      STA $1706,x               ;
CODE_03DA39:        9D 08 17      STA $1708,x               ;
CODE_03DA3C:        A9 FF FF      LDA #$FFFF                ;
CODE_03DA3F:        9D 0A 17      STA $170A,x               ;
CODE_03DA42:        8A            TXA                       ;
CODE_03DA43:        18            CLC                       ;
CODE_03DA44:        69 08 00      ADC #$0008                ;
CODE_03DA47:        8D 00 17      STA $1700                 ;
CODE_03DA4A:        E2 30         SEP #$30                  ;
CODE_03DA4C:        B9 29 00      LDA $0029,y               ;
CODE_03DA4F:        A8            TAY                       ;
CODE_03DA50:        68            PLA                       ;
CODE_03DA51:        49 FF         EOR #$FF                  ;
CODE_03DA53:        20 C2 DA      JSR CODE_03DAC2           ;
CODE_03DA56:        C2 30         REP #$30                  ;
CODE_03DA58:        A5 00         LDA $00                   ;
CODE_03DA5A:        29 1F 24      AND #$241F                ;
CODE_03DA5D:        C5 F3         CMP $F3                   ;
CODE_03DA5F:        B0 07         BCS CODE_03DA68           ;
CODE_03DA61:        C5 F5         CMP $F5                   ;
CODE_03DA63:        90 03         BCC CODE_03DA68           ;
CODE_03DA65:        4C BC DA      JMP CODE_03DABC           ;

CODE_03DA68:        AE 00 17      LDX $1700                 ;
CODE_03DA6B:        A5 00         LDA $00                   ;
CODE_03DA6D:        29 FF 1F      AND #$1FFF                ;
CODE_03DA70:        EB            XBA                       ;
CODE_03DA71:        9D 02 17      STA $1702,x               ;
CODE_03DA74:        A9 00 03      LDA #$0300                ;
CODE_03DA77:        9D 04 17      STA $1704,x               ;
CODE_03DA7A:        68            PLA                       ;
CODE_03DA7B:        29 80 00      AND #$0080                ;
CODE_03DA7E:        F0 23         BEQ CODE_03DAA3           ;
CODE_03DA80:        A9 A2 10      LDA #$10A2                ;
CODE_03DA83:        9D 06 17      STA $1706,x               ;
CODE_03DA86:        BD 02 17      LDA $1702,x               ;
CODE_03DA89:        29 03 F0      AND #$F003                ;
CODE_03DA8C:        C9 00 A0      CMP #$A000                ;
CODE_03DA8F:        F0 05         BEQ CODE_03DA96           ;
CODE_03DA91:        C9 00 B0      CMP #$B000                ;
CODE_03DA94:        D0 05         BNE CODE_03DA9B           ;
CODE_03DA96:        A9 3F 18      LDA #$183F                ;
CODE_03DA99:        80 03         BRA CODE_03DA9E           ;

CODE_03DA9B:        A9 A3 18      LDA #$18A3                ;
CODE_03DA9E:        9D 08 17      STA $1708,x               ;
CODE_03DAA1:        80 09         BRA CODE_03DAAC           ;

CODE_03DAA3:        A9 24 00      LDA #$0024                ;
CODE_03DAA6:        9D 06 17      STA $1706,x               ;
CODE_03DAA9:        9D 08 17      STA $1708,x               ;
CODE_03DAAC:        A9 FF FF      LDA #$FFFF                ;
CODE_03DAAF:        9D 0A 17      STA $170A,x               ;
CODE_03DAB2:        8A            TXA                       ;
CODE_03DAB3:        18            CLC                       ;
CODE_03DAB4:        69 08 00      ADC #$0008                ;
CODE_03DAB7:        8D 00 17      STA $1700                 ;
CODE_03DABA:        80 01         BRA CODE_03DABD           ;

CODE_03DABC:        68            PLA                       ;
CODE_03DABD:        E2 30         SEP #$30                  ;
CODE_03DABF:        A6 9E         LDX $9E                   ;
CODE_03DAC1:        60            RTS                       ;

CODE_03DAC2:        48            PHA                       ;
CODE_03DAC3:        B9 1A 02      LDA $021A,y               ;
CODE_03DAC6:        18            CLC                       ;
CODE_03DAC7:        69 08         ADC #$08                  ;
CODE_03DAC9:        AE CC 06      LDX $06CC                 ;
CODE_03DACC:        D0 03         BNE CODE_03DAD1           ;
CODE_03DACE:        18            CLC                       ;
CODE_03DACF:        69 10         ADC #$10                  ;
CODE_03DAD1:        48            PHA                       ;
CODE_03DAD2:        B9 79 00      LDA $0079,y               ;
CODE_03DAD5:        69 00         ADC #$00                  ;
CODE_03DAD7:        85 02         STA $02                   ;
CODE_03DAD9:        68            PLA                       ;
CODE_03DADA:        29 F0         AND #$F0                  ;
CODE_03DADC:        4A            LSR A                     ;
CODE_03DADD:        4A            LSR A                     ;
CODE_03DADE:        4A            LSR A                     ;
CODE_03DADF:        85 00         STA $00                   ;
CODE_03DAE1:        BE 38 02      LDX $0238,y               ;
CODE_03DAE4:        68            PLA                       ;
CODE_03DAE5:        10 05         BPL CODE_03DAEC           ;
CODE_03DAE7:        8A            TXA                       ;
CODE_03DAE8:        18            CLC                       ;
CODE_03DAE9:        69 08         ADC #$08                  ;
CODE_03DAEB:        AA            TAX                       ;
CODE_03DAEC:        8A            TXA                       ;
CODE_03DAED:        0A            ASL A                     ;
CODE_03DAEE:        2A            ROL A                     ;
CODE_03DAEF:        48            PHA                       ;
CODE_03DAF0:        2A            ROL A                     ;
CODE_03DAF1:        29 03         AND #$03                  ;
CODE_03DAF3:        09 20         ORA #$20                  ;
CODE_03DAF5:        85 01         STA $01                   ;
CODE_03DAF7:        A5 02         LDA $02                   ;
CODE_03DAF9:        29 01         AND #$01                  ;
CODE_03DAFB:        0A            ASL A                     ;
CODE_03DAFC:        0A            ASL A                     ;
CODE_03DAFD:        05 01         ORA $01                   ;
CODE_03DAFF:        85 01         STA $01                   ;
CODE_03DB01:        68            PLA                       ;
CODE_03DB02:        29 E0         AND #$E0                  ;
CODE_03DB04:        18            CLC                       ;
CODE_03DB05:        65 00         ADC $00                   ;
CODE_03DB07:        85 00         STA $00                   ;
CODE_03DB09:        B9 38 02      LDA $0238,y               ;
CODE_03DB0C:        C9 E8         CMP #$E8                  ;
CODE_03DB0E:        90 06         BCC CODE_03DB16           ;
CODE_03DB10:        A5 00         LDA $00                   ;
CODE_03DB12:        29 BF         AND #$BF                  ;
CODE_03DB14:        85 00         STA $00                   ;
CODE_03DB16:        60            RTS                       ;

CODE_03DB17:        BB            TYX                       ;
CODE_03DB18:        20 CB FD      JSR CODE_03FDCB           ;
CODE_03DB1B:        A9 06         LDA #$06                  ;
CODE_03DB1D:        20 7E E0      JSR CODE_03E07E           ;
CODE_03DB20:        AD AD 03      LDA $03AD                 ;
CODE_03DB23:        9D 1A 01      STA $011A,x               ;
CODE_03DB26:        AD 37 02      LDA $0237                 ;
CODE_03DB29:        9D 24 01      STA $0124,x               ;
CODE_03DB2C:        A9 01         LDA #$01                  ;
CODE_03DB2E:        95 47         STA $47,x                 ;
CODE_03DB30:        20 26 C7      JSR CODE_03C726           ;
CODE_03DB33:        99 A1 00      STA $00A1,y               ;
CODE_03DB36:        99 3D 04      STA $043D,y               ;
CODE_03DB39:        60            RTS                       ;

CODE_03DB3A:        5A            PHY                       ;
CODE_03DB3B:        20 1B C1      JSR CODE_03C11B           ;
CODE_03DB3E:        FA            PLX                       ;
CODE_03DB3F:        B5 29         LDA $29,x                 ;
CODE_03DB41:        10 03         BPL CODE_03DB46           ;
CODE_03DB43:        20 1B C1      JSR CODE_03C11B           ;
CODE_03DB46:        A6 9E         LDX $9E                   ;
CODE_03DB48:        BD A2 03      LDA $03A2,x               ;
CODE_03DB4B:        30 04         BMI CODE_03DB51           ;
CODE_03DB4D:        AA            TAX                       ;
CODE_03DB4E:        20 CB E2      JSR CODE_03E2CB           ;
CODE_03DB51:        A6 9E         LDX $9E                   ;
CODE_03DB53:        60            RTS                       ;

CODE_03DB54:        B5 A1         LDA $A1,x                 ;
CODE_03DB56:        1D 3D 04      ORA $043D,x               ;
CODE_03DB59:        D0 16         BNE CODE_03DB71           ;
CODE_03DB5B:        9D 1D 04      STA $041D,x               ;
CODE_03DB5E:        BD 38 02      LDA $0238,x               ;
CODE_03DB61:        DD 02 04      CMP $0402,x               ;
CODE_03DB64:        B0 0B         BCS CODE_03DB71           ;
CODE_03DB66:        A5 09         LDA $09                   ;
CODE_03DB68:        29 07         AND #$07                  ;
CODE_03DB6A:        D0 03         BNE CODE_03DB6F           ;
CODE_03DB6C:        FE 38 02      INC $0238,x               ;
CODE_03DB6F:        80 10         BRA CODE_03DB81           ;

CODE_03DB71:        BD 38 02      LDA $0238,x               ;
CODE_03DB74:        D5 5E         CMP $5E,x                 ;
CODE_03DB76:        90 06         BCC CODE_03DB7E           ;
CODE_03DB78:        20 67 C1      JSR CODE_03C167           ;
CODE_03DB7B:        4C 81 DB      JMP CODE_03DB81           ;

CODE_03DB7E:        20 63 C1      JSR CODE_03C163           ;
CODE_03DB81:        BD A2 03      LDA $03A2,x               ;
CODE_03DB84:        30 03         BMI CODE_03DB89           ;
CODE_03DB86:        20 CB E2      JSR CODE_03E2CB           ;
CODE_03DB89:        60            RTS                       ;

CODE_03DB8A:        A9 0E         LDA #$0E                  ;
CODE_03DB8C:        20 DD CF      JSR CODE_03CFDD           ;
CODE_03DB8F:        20 FC CF      JSR CODE_03CFFC           ;
CODE_03DB92:        BD A2 03      LDA $03A2,x               ;
CODE_03DB95:        30 1D         BMI CODE_03DBB4           ;
CODE_03DB97:        AD 19 02      LDA $0219                 ;
CODE_03DB9A:        18            CLC                       ;
CODE_03DB9B:        65 00         ADC $00                   ;
CODE_03DB9D:        8D 19 02      STA $0219                 ;
CODE_03DBA0:        A5 78         LDA $78                   ;
CODE_03DBA2:        A4 00         LDY $00                   ;
CODE_03DBA4:        30 04         BMI CODE_03DBAA           ;
CODE_03DBA6:        69 00         ADC #$00                  ;
CODE_03DBA8:        80 02         BRA CODE_03DBAC           ;

CODE_03DBAA:        E9 00         SBC #$00                  ;
CODE_03DBAC:        85 78         STA $78                   ;
CODE_03DBAE:        8C A1 03      STY $03A1                 ;
CODE_03DBB1:        20 CB E2      JSR CODE_03E2CB           ;
CODE_03DBB4:        60            RTS                       ;

CODE_03DBB5:        BD A2 03      LDA $03A2,x               ;
CODE_03DBB8:        30 06         BMI CODE_03DBC0           ;
CODE_03DBBA:        20 36 C1      JSR CODE_03C136           ;
CODE_03DBBD:        20 CB E2      JSR CODE_03E2CB           ;
CODE_03DBC0:        60            RTS                       ;

CODE_03DBC1:        20 AD C0      JSR CODE_03C0AD           ;
CODE_03DBC4:        85 00         STA $00                   ;
CODE_03DBC6:        BD A2 03      LDA $03A2,x               ;
CODE_03DBC9:        30 07         BMI CODE_03DBD2           ;
CODE_03DBCB:        A9 10         LDA #$10                  ;
CODE_03DBCD:        95 5E         STA $5E,x                 ;
CODE_03DBCF:        20 97 DB      JSR CODE_03DB97           ;
CODE_03DBD2:        60            RTS                       ;

CODE_03DBD3:        20 DE DB      JSR CODE_03DBDE           ;
CODE_03DBD6:        4C 81 DB      JMP CODE_03DB81           ;

CODE_03DBD9:        20 DE DB      JSR CODE_03DBDE           ;
CODE_03DBDC:        80 18         BRA CODE_03DBF6           ;

CODE_03DBDE:        AD 47 07      LDA $0747                 ;
CODE_03DBE1:        D0 1F         BNE CODE_03DC02           ;
CODE_03DBE3:        BD 1D 04      LDA $041D,x               ;
CODE_03DBE6:        18            CLC                       ;
CODE_03DBE7:        7D 3D 04      ADC $043D,x               ;
CODE_03DBEA:        9D 1D 04      STA $041D,x               ;
CODE_03DBED:        BD 38 02      LDA $0238,x               ;
CODE_03DBF0:        75 A1         ADC $A1,x                 ;
CODE_03DBF2:        9D 38 02      STA $0238,x               ;
CODE_03DBF5:        60            RTS                       ;

CODE_03DBF6:        BD A2 03      LDA $03A2,x               ;
CODE_03DBF9:        F0 07         BEQ CODE_03DC02           ;
CODE_03DBFB:        C9 FF         CMP #$FF                  ;
CODE_03DBFD:        F0 03         BEQ CODE_03DC02           ;
CODE_03DBFF:        20 BC E2      JSR CODE_03E2BC           ;
CODE_03DC02:        60            RTS                       ;

CODE_03DC03:        B5 1C         LDA $1C,x                 ;\
CODE_03DC05:        C9 14         CMP #$14                  ; | If cheep-cheep, exit
CODE_03DC07:        F0 58         BEQ CODE_03DC61           ;/
CODE_03DC09:        AD 1C 07      LDA $071C                 ;Get horizontal coordinate of left side of screen
CODE_03DC0C:        B4 1C         LDY $1C,x                 ;\
CODE_03DC0E:        C0 05         CPY #$05                  ; | Check for hammer bros and piranha plant sprites
CODE_03DC10:        F0 04         BEQ CODE_03DC16           ; | Add 56 pixels if those.
CODE_03DC12:        C0 0D         CPY #$0D                  ; |
CODE_03DC14:        D0 02         BNE CODE_03DC18           ; |
CODE_03DC16:        69 38         ADC #$38                  ;/
CODE_03DC18:        E9 48         SBC #$48                  ;\Subtract 72 pixels from horizontal coordinate earlier
CODE_03DC1A:        85 01         STA $01                   ;/Regardless of the sprite
CODE_03DC1C:        AD 1A 07      LDA $071A                 ;\
CODE_03DC1F:        E9 00         SBC #$00                  ; |
CODE_03DC21:        85 00         STA $00                   ; |
CODE_03DC23:        AD 1D 07      LDA $071D                 ; |
CODE_03DC26:        18            CLC                       ; |
CODE_03DC27:        69 48         ADC #$48                  ; |add 72 pixels to the right side horizontal coordinate
CODE_03DC29:        85 03         STA $03                   ; |
CODE_03DC2B:        AD 1B 07      LDA $071B                 ; |
CODE_03DC2E:        69 00         ADC #$00                  ; |
CODE_03DC30:        85 02         STA $02                   ; |
CODE_03DC32:        BD 1A 02      LDA $021A,x               ; |
CODE_03DC35:        C5 01         CMP $01                   ;/
CODE_03DC37:        B5 79         LDA $79,x                 ;\
CODE_03DC39:        E5 00         SBC $00                   ; | if enemy object is too far left, branch to erase it
CODE_03DC3B:        30 21         BMI CODE_03DC5E           ;/
CODE_03DC3D:        BD 1A 02      LDA $021A,x               ;
CODE_03DC40:        C5 03         CMP $03                   ;
CODE_03DC42:        B5 79         LDA $79,x                 ;
CODE_03DC44:        E5 02         SBC $02                   ;
CODE_03DC46:        30 19         BMI CODE_03DC61           ;
CODE_03DC48:        B5 29         LDA $29,x                 ;\
CODE_03DC4A:        C9 05         CMP #$05                  ; |
CODE_03DC4C:        F0 13         BEQ CODE_03DC61           ; | Do not erase the following sprites when too far to the right:
CODE_03DC4E:        C0 0D         CPY #$0D                  ; | Hammer bros, piranha plant, flagpole, star flag (at end of level), springboard
CODE_03DC50:        F0 0F         BEQ CODE_03DC61           ; |
CODE_03DC52:        C0 30         CPY #$30                  ; |
CODE_03DC54:        F0 0B         BEQ CODE_03DC61           ; |
CODE_03DC56:        C0 31         CPY #$31                  ; |
CODE_03DC58:        F0 07         BEQ CODE_03DC61           ; |
CODE_03DC5A:        C0 32         CPY #$32                  ; |
CODE_03DC5C:        F0 03         BEQ CODE_03DC61           ;/
CODE_03DC5E:        20 E2 CD      JSR CODE_03CDE2           ;Erase sprite if necessary
CODE_03DC61:        60            RTS                       ;

DATA_03DC62:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF          ;looks like empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF

CODE_03DC70:        B5 33         LDA $33,x                 ;
CODE_03DC72:        F0 56         BEQ CODE_03DCCA           ;
CODE_03DC74:        0A            ASL A                     ;
CODE_03DC75:        B0 53         BCS CODE_03DCCA           ;
CODE_03DC77:        A5 09         LDA $09                   ;
CODE_03DC79:        4A            LSR A                     ;
CODE_03DC7A:        B0 4E         BCS CODE_03DCCA           ;
CODE_03DC7C:        8A            TXA                       ;
CODE_03DC7D:        0A            ASL A                     ;
CODE_03DC7E:        0A            ASL A                     ;
CODE_03DC7F:        18            CLC                       ;
CODE_03DC80:        69 2C         ADC #$2C                  ;
CODE_03DC82:        A8            TAY                       ;
CODE_03DC83:        A2 08         LDX #$08                  ;
CODE_03DC85:        86 01         STX $01                   ;
CODE_03DC87:        98            TYA                       ;
CODE_03DC88:        48            PHA                       ;
CODE_03DC89:        B5 29         LDA $29,x                 ;
CODE_03DC8B:        29 20         AND #$20                  ;
CODE_03DC8D:        D0 34         BNE CODE_03DCC3           ;
CODE_03DC8F:        B5 10         LDA $10,x                 ;
CODE_03DC91:        F0 30         BEQ CODE_03DCC3           ;
CODE_03DC93:        B5 1C         LDA $1C,x                 ;
CODE_03DC95:        C9 24         CMP #$24                  ;
CODE_03DC97:        90 04         BCC CODE_03DC9D           ;
CODE_03DC99:        C9 2B         CMP #$2B                  ;
CODE_03DC9B:        90 26         BCC CODE_03DCC3           ;
CODE_03DC9D:        C9 06         CMP #$06                  ;
CODE_03DC9F:        D0 06         BNE CODE_03DCA7           ;
CODE_03DCA1:        B5 29         LDA $29,x                 ;
CODE_03DCA3:        C9 02         CMP #$02                  ;
CODE_03DCA5:        B0 1C         BCS CODE_03DCC3           ;
CODE_03DCA7:        BD D9 03      LDA $03D9,x               ;
CODE_03DCAA:        D0 17         BNE CODE_03DCC3           ;
CODE_03DCAC:        8A            TXA                       ;
CODE_03DCAD:        0A            ASL A                     ;
CODE_03DCAE:        0A            ASL A                     ;
CODE_03DCAF:        18            CLC                       ;
CODE_03DCB0:        69 04         ADC #$04                  ;
CODE_03DCB2:        AA            TAX                       ;
CODE_03DCB3:        20 B9 EA      JSR CODE_03EAB9           ;
CODE_03DCB6:        A6 9E         LDX $9E                   ;
CODE_03DCB8:        90 09         BCC CODE_03DCC3           ;
CODE_03DCBA:        A9 80         LDA #$80                  ;
CODE_03DCBC:        95 33         STA $33,x                 ;
CODE_03DCBE:        A6 01         LDX $01                   ;
CODE_03DCC0:        20 D5 DC      JSR CODE_03DCD5           ;
CODE_03DCC3:        68            PLA                       ;
CODE_03DCC4:        A8            TAY                       ;
CODE_03DCC5:        A6 01         LDX $01                   ;
CODE_03DCC7:        CA            DEX                       ;
CODE_03DCC8:        10 BB         BPL CODE_03DC85           ;
CODE_03DCCA:        A6 9E         LDX $9E                   ;
CODE_03DCCC:        60            RTS                       ;

DATA_03DCCD:        db $06,$00,$02,$12,$11,$07,$05,$2D      ;Sprite to generate when you kill Bowser with fireballs. 
                                                            ;In this order: Goomba, Green Koopa, Red Koopa, Spiny, Lakitu, Blooper, Hammer Bros., Bowser

CODE_03DCD5:        20 39 FD      JSR CODE_03FD39           ;
CODE_03DCD8:        A9 03         LDA #$03                  ;\
CODE_03DCDA:        8D 00 16      STA $1600                 ;/Shell kick sound
CODE_03DCDD:        A6 01         LDX $01                   ;
CODE_03DCDF:        B5 10         LDA $10,x                 ;
CODE_03DCE1:        10 0B         BPL CODE_03DCEE           ;
CODE_03DCE3:        29 0F         AND #$0F                  ;
CODE_03DCE5:        AA            TAX                       ;
CODE_03DCE6:        B5 1C         LDA $1C,x                 ;
CODE_03DCE8:        C9 2D         CMP #$2D                  ;
CODE_03DCEA:        F0 0F         BEQ CODE_03DCFB           ;
CODE_03DCEC:        A6 01         LDX $01                   ;
CODE_03DCEE:        B5 1C         LDA $1C,x                 ;
CODE_03DCF0:        C9 02         CMP #$02                  ;
CODE_03DCF2:        D0 03         BNE CODE_03DCF7           ;
CODE_03DCF4:        4C BD DD      JMP CODE_03DDBD           ;

CODE_03DCF7:        C9 2D         CMP #$2D                  ;
CODE_03DCF9:        D0 7A         BNE CODE_03DD75           ;
CODE_03DCFB:        A9 08         LDA #$08                  ;
CODE_03DCFD:        8D 4B 01      STA $014B                 ;
CODE_03DD00:        A9 18         LDA #$18                  ;
CODE_03DD02:        8D 4C 0F      STA $0F4C                 ;
CODE_03DD05:        CE 83 02      DEC $0283                 ;
CODE_03DD08:        F0 15         BEQ CODE_03DD1F           ;
CODE_03DD0A:        AD 83 02      LDA $0283                 ;
CODE_03DD0D:        C9 01         CMP #$01                  ;
CODE_03DD0F:        F0 03         BEQ CODE_03DD14           ;
CODE_03DD11:        4C BD DD      JMP CODE_03DDBD           ;

CODE_03DD14:        9C CA 03      STZ $03CA                 ;
CODE_03DD17:        A9 01         LDA #$01                  ;
CODE_03DD19:        8D CB 03      STA $03CB                 ;
CODE_03DD1C:        4C BD DD      JMP CODE_03DDBD           ;

CODE_03DD1F:        A9 08         LDA #$08                  ;
CODE_03DD21:        8D 4B 01      STA $014B                 ;
CODE_03DD24:        A9 FF         LDA #$FF                  ;
CODE_03DD26:        8D 4C 0F      STA $0F4C                 ;
CODE_03DD29:        20 26 C7      JSR CODE_03C726           ;
CODE_03DD2C:        95 5E         STA $5E,x                 ;
CODE_03DD2E:        8D CB 06      STA $06CB                 ;
CODE_03DD31:        A9 FE         LDA #$FE                  ;
CODE_03DD33:        95 A1         STA $A1,x                 ;
CODE_03DD35:        AC 5F 07      LDY $075F                 ;\
CODE_03DD38:        B9 CD DC      LDA $DCCD,y               ; |
CODE_03DD3B:        95 1C         STA $1C,x                 ;/Sprite to generate: Bowser killed sprite depending on the world
CODE_03DD3D:        8E FC 02      STX $02FC                 ;
CODE_03DD40:        EE FC 02      INC $02FC                 ;
CODE_03DD43:        C9 2D         CMP #$2D                  ;
CODE_03DD45:        F0 1E         BEQ CODE_03DD65           ;
CODE_03DD47:        DA            PHX                       ;
CODE_03DD48:        A5 DB         LDA $DB                   ;
CODE_03DD4A:        C9 21         CMP #$21                  ;
CODE_03DD4C:        F0 16         BEQ CODE_03DD64           ;
CODE_03DD4E:        8E 77 00      STX $0077                 ;
CODE_03DD51:        EE 77 00      INC $0077                 ;
CODE_03DD54:        A2 08         LDX #$08                  ;
CODE_03DD56:        B5 1C         LDA $1C,x                 ;
CODE_03DD58:        CA            DEX                       ;
CODE_03DD59:        30 09         BMI CODE_03DD64           ;
CODE_03DD5B:        C9 2D         CMP #$2D                  ;
CODE_03DD5D:        D0 F7         BNE CODE_03DD56           ;
CODE_03DD5F:        E8            INX                       ;
CODE_03DD60:        74 10         STZ $10,x                 ;
CODE_03DD62:        74 1C         STZ $1C,x                 ;
CODE_03DD64:        FA            PLX                       ;
CODE_03DD65:        A9 20         LDA #$20                  ;
CODE_03DD67:        C0 03         CPY #$03                  ;
CODE_03DD69:        B0 02         BCS CODE_03DD6D           ;
CODE_03DD6B:        09 03         ORA #$03                  ;
CODE_03DD6D:        95 29         STA $29,x                 ;
CODE_03DD6F:        A6 01         LDX $01                   ;
CODE_03DD71:        A9 09         LDA #$09                  ;
CODE_03DD73:        D0 35         BNE CODE_03DDAA           ;
CODE_03DD75:        C9 08         CMP #$08                  ;
CODE_03DD77:        F0 44         BEQ CODE_03DDBD           ;
CODE_03DD79:        C9 0C         CMP #$0C                  ;
CODE_03DD7B:        F0 40         BEQ CODE_03DDBD           ;
CODE_03DD7D:        C9 15         CMP #$15                  ;
CODE_03DD7F:        B0 3C         BCS CODE_03DDBD           ;
CODE_03DD81:        B5 1C         LDA $1C,x                 ;
CODE_03DD83:        C9 0D         CMP #$0D                  ;
CODE_03DD85:        D0 08         BNE CODE_03DD8F           ;
CODE_03DD87:        BD 38 02      LDA $0238,x               ;
CODE_03DD8A:        69 18         ADC #$18                  ;
CODE_03DD8C:        9D 38 02      STA $0238,x               ;
CODE_03DD8F:        20 89 E7      JSR CODE_03E789           ;
CODE_03DD92:        B5 29         LDA $29,x                 ;
CODE_03DD94:        29 1F         AND #$1F                  ;
CODE_03DD96:        09 20         ORA #$20                  ;
CODE_03DD98:        95 29         STA $29,x                 ;
CODE_03DD9A:        A9 02         LDA #$02                  ;
CODE_03DD9C:        B4 1C         LDY $1C,x                 ;
CODE_03DD9E:        C0 05         CPY #$05                  ;
CODE_03DDA0:        D0 02         BNE CODE_03DDA4           ;
CODE_03DDA2:        A9 06         LDA #$06                  ;
CODE_03DDA4:        C0 06         CPY #$06                  ;
CODE_03DDA6:        D0 02         BNE CODE_03DDAA           ;
CODE_03DDA8:        A9 01         LDA #$01                  ;
CODE_03DDAA:        20 7E E0      JSR CODE_03E07E           ;
CODE_03DDAD:        AD 00 16      LDA $1600                 ;
CODE_03DDB0:        C9 03         CMP #$03                  ;
CODE_03DDB2:        F0 09         BEQ CODE_03DDBD           ;
CODE_03DDB4:        A9 03         LDA #$03                  ;\Shell kick sound
CODE_03DDB6:        8D 00 16      STA $1600                 ;/
CODE_03DDB9:        22 B1 D2 05   JSL CODE_05D2B1           ;
CODE_03DDBD:        60            RTS                       ;

CODE_03DDBE:        A5 09         LDA $09                   ;
CODE_03DDC0:        4A            LSR A                     ;
CODE_03DDC1:        90 36         BCC CODE_03DDF9           ;
CODE_03DDC3:        AD 47 07      LDA $0747                 ;
CODE_03DDC6:        0D D6 03      ORA $03D6                 ;
CODE_03DDC9:        D0 2E         BNE CODE_03DDF9           ;
CODE_03DDCB:        8A            TXA                       ;
CODE_03DDCC:        0A            ASL A                     ;
CODE_03DDCD:        0A            ASL A                     ;
CODE_03DDCE:        18            CLC                       ;
CODE_03DDCF:        69 34         ADC #$34                  ;
CODE_03DDD1:        A8            TAY                       ;
CODE_03DDD2:        20 B7 EA      JSR CODE_03EAB7           ;
CODE_03DDD5:        A6 9E         LDX $9E                   ;
CODE_03DDD7:        90 1B         BCC CODE_03DDF4           ;
CODE_03DDD9:        BD BE 06      LDA $06BE,x               ;
CODE_03DDDC:        D0 1B         BNE CODE_03DDF9           ;
CODE_03DDDE:        A9 01         LDA #$01                  ;
CODE_03DDE0:        9D BE 06      STA $06BE,x               ;
CODE_03DDE3:        B5 6E         LDA $6E,x                 ;
CODE_03DDE5:        49 FF         EOR #$FF                  ;
CODE_03DDE7:        18            CLC                       ;
CODE_03DDE8:        69 01         ADC #$01                  ;
CODE_03DDEA:        95 6E         STA $6E,x                 ;
CODE_03DDEC:        AD AF 07      LDA $07AF                 ;
CODE_03DDEF:        D0 08         BNE CODE_03DDF9           ;
CODE_03DDF1:        4C 4D DF      JMP CODE_03DF4D           ;

CODE_03DDF4:        A9 00         LDA #$00                  ;
CODE_03DDF6:        9D BE 06      STA $06BE,x               ;
CODE_03DDF9:        60            RTS                       ;

CODE_03DDFA:        20 E5 CD      JSR CODE_03CDE5           ;
CODE_03DDFD:        A9 06         LDA #$06                  ;
CODE_03DDFF:        20 4F E0      JSR CODE_03E04F           ;
CODE_03DE02:        A9 0A         LDA #$0A                  ;\You got powerup sound
CODE_03DE04:        8D 00 16      STA $1600                 ;/
CODE_03DE07:        AD 0C 02      LDA $020C                 ;\ If you obtained a mushroom or fireflower
CODE_03DE0A:        C9 02         CMP #$02                  ; |skip this code (to another code)
CODE_03DE0C:        90 0F         BCC CODE_03DE1D           ; |
CODE_03DE0E:        C9 03         CMP #$03                  ; |If you got a 1-up
CODE_03DE10:        F0 25         BEQ CODE_03DE37           ;/ skip this code (to another code)
CODE_03DE12:        A9 23         LDA #$23                  ;\ Otherwise enable starman stuff.
CODE_03DE14:        8D AF 07      STA $07AF                 ; |You got the star powerup music.
CODE_03DE17:        A9 0D         LDA #$0D                  ; |Set the timer of the starman powerup.
CODE_03DE19:        8D 02 16      STA $1602                 ;/
CODE_03DE1C:        60            RTS                       ;Return

CODE_03DE1D:        AD 56 07      LDA $0756                 ;\If you got a mushroom go branch
CODE_03DE20:        F0 20         BEQ CODE_03DE42           ;/
CODE_03DE22:        C9 01         CMP #$01                  ;If it is NOT fireflower, return
CODE_03DE24:        D0 28         BNE CODE_03DE4E           ;useless check, the only values can be $00-$01
CODE_03DE26:        A6 9E         LDX $9E                   ;
CODE_03DE28:        A9 02         LDA #$02                  ;\Set fireflower powerup
CODE_03DE2A:        8D 56 07      STA $0756                 ;/
CODE_03DE2D:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03DE31:        A6 9E         LDX $9E                   ;Get sprite index
CODE_03DE33:        A9 0C         LDA #$0C                  ;Set "fireflower get" animation
CODE_03DE35:        80 12         BRA CODE_03DE49           ;

CODE_03DE37:        A9 0B         LDA #$0B                  ;\
CODE_03DE39:        9D 10 01      STA $0110,x               ;/Get 1up
CODE_03DE3C:        A9 00         LDA #$00                  ;\
CODE_03DE3E:        8D 00 16      STA $1600                 ;/No SFX?
CODE_03DE41:        60            RTS                       ;

CODE_03DE42:        A9 01         LDA #$01                  ;\
CODE_03DE44:        8D 56 07      STA $0756                 ;/Set Mario's powerup
CODE_03DE47:        A9 09         LDA #$09                  ;Set "Mario got a powerup" flag
CODE_03DE49:        A0 00         LDY #$00                  ;Mario standing still flag?
CODE_03DE4B:        20 6C DF      JSR CODE_03DF6C           ;Goto powerup stuff
CODE_03DE4E:        60            RTS                       ;

DATA_03DE4F:        db $18,$E8,$30,$D0,$08,$F8

CODE_03DE55:        A5 09         LDA $09                   ;
CODE_03DE57:        4A            LSR A                     ;
CODE_03DE58:        B0 F4         BCS CODE_03DE4E           ;
CODE_03DE5A:        20 ED E2      JSR CODE_03E2ED           ;
CODE_03DE5D:        B0 30         BCS CODE_03DE8F           ;
CODE_03DE5F:        E0 09         CPX #$09                  ;
CODE_03DE61:        D0 09         BNE CODE_03DE6C           ;
CODE_03DE63:        AD AE 03      LDA $03AE                 ;
CODE_03DE66:        10 04         BPL CODE_03DE6C           ;
CODE_03DE68:        C9 F4         CMP #$F4                  ;
CODE_03DE6A:        B0 05         BCS CODE_03DE71           ;
CODE_03DE6C:        BD D9 03      LDA $03D9,x               ;
CODE_03DE6F:        D0 1E         BNE CODE_03DE8F           ;
CODE_03DE71:        A5 0F         LDA $0F                   ;
CODE_03DE73:        C9 08         CMP #$08                  ;
CODE_03DE75:        D0 18         BNE CODE_03DE8F           ;
CODE_03DE77:        B5 29         LDA $29,x                 ;
CODE_03DE79:        29 20         AND #$20                  ;
CODE_03DE7B:        D0 12         BNE CODE_03DE8F           ;
CODE_03DE7D:        20 F7 E2      JSR CODE_03E2F7           ;
CODE_03DE80:        20 B7 EA      JSR CODE_03EAB7           ;
CODE_03DE83:        A6 9E         LDX $9E                   ;
CODE_03DE85:        B0 09         BCS CODE_03DE90           ;
CODE_03DE87:        BD 81 04      LDA $0481,x               ;
CODE_03DE8A:        29 FE         AND #$FE                  ;
CODE_03DE8C:        9D 81 04      STA $0481,x               ;
CODE_03DE8F:        60            RTS                       ;

CODE_03DE90:        B4 1C         LDY $1C,x                 ;
CODE_03DE92:        C0 2E         CPY #$2E                  ;
CODE_03DE94:        D0 03         BNE CODE_03DE99           ;
CODE_03DE96:        4C FA DD      JMP CODE_03DDFA           ;

CODE_03DE99:        AD AF 07      LDA $07AF                 ;
CODE_03DE9C:        F0 06         BEQ CODE_03DEA4           ;
CODE_03DE9E:        4C 81 DD      JMP CODE_03DD81           ;

CODE_03DEA1:        0A            ASL A                     ;
CODE_03DEA2:        06 04         ASL $04                   ;
CODE_03DEA4:        BD 81 04      LDA $0481,x               ;
CODE_03DEA7:        29 01         AND #$01                  ;
CODE_03DEA9:        1D D9 03      ORA $03D9,x               ;
CODE_03DEAC:        D0 66         BNE CODE_03DF14           ;
CODE_03DEAE:        A9 01         LDA #$01                  ;
CODE_03DEB0:        1D 81 04      ORA $0481,x               ;
CODE_03DEB3:        9D 81 04      STA $0481,x               ;
CODE_03DEB6:        C0 12         CPY #$12                  ;
CODE_03DEB8:        F0 5B         BEQ CODE_03DF15           ;
CODE_03DEBA:        C0 0D         CPY #$0D                  ;
CODE_03DEBC:        D0 03         BNE CODE_03DEC1           ;
CODE_03DEBE:        4C 4D DF      JMP CODE_03DF4D           ;

CODE_03DEC1:        C0 0C         CPY #$0C                  ;
CODE_03DEC3:        D0 03         BNE CODE_03DEC8           ;
CODE_03DEC5:        4C 4D DF      JMP CODE_03DF4D           ;

CODE_03DEC8:        C0 33         CPY #$33                  ;
CODE_03DECA:        F0 49         BEQ CODE_03DF15           ;
CODE_03DECC:        C0 15         CPY #$15                  ;
CODE_03DECE:        B0 7D         BCS CODE_03DF4D           ;
CODE_03DED0:        A5 5C         LDA $5C                   ;
CODE_03DED2:        F0 79         BEQ CODE_03DF4D           ;
CODE_03DED4:        B5 29         LDA $29,x                 ;
CODE_03DED6:        0A            ASL A                     ;
CODE_03DED7:        B0 3C         BCS CODE_03DF15           ;
CODE_03DED9:        B5 29         LDA $29,x                 ;
CODE_03DEDB:        29 07         AND #$07                  ;
CODE_03DEDD:        C9 02         CMP #$02                  ;
CODE_03DEDF:        90 34         BCC CODE_03DF15           ;
CODE_03DEE1:        B5 1C         LDA $1C,x                 ;
CODE_03DEE3:        C9 06         CMP #$06                  ;
CODE_03DEE5:        F0 2D         BEQ CODE_03DF14           ;
CODE_03DEE7:        A9 03         LDA #$03                  ;\Shell kick sound
CODE_03DEE9:        8D 00 16      STA $1600                 ;/
CODE_03DEEC:        22 B1 D2 05   JSL CODE_05D2B1           ;
CODE_03DEF0:        9E 40 0F      STZ $0F40,x               ;
CODE_03DEF3:        B5 29         LDA $29,x                 ;
CODE_03DEF5:        09 80         ORA #$80                  ;
CODE_03DEF7:        95 29         STA $29,x                 ;
CODE_03DEF9:        20 43 E0      JSR CODE_03E043           ;
CODE_03DEFC:        B9 51 DE      LDA $DE51,y               ;
CODE_03DEFF:        95 5E         STA $5E,x                 ;
CODE_03DF01:        A9 03         LDA #$03                  ;
CODE_03DF03:        18            CLC                       ;
CODE_03DF04:        6D 84 02      ADC $0284                 ;
CODE_03DF07:        BC A2 07      LDY $07A2,x               ;
CODE_03DF0A:        C0 03         CPY #$03                  ;
CODE_03DF0C:        B0 03         BCS CODE_03DF11           ;
CODE_03DF0E:        B9 A1 DE      LDA $DEA1,y               ;
CODE_03DF11:        20 7E E0      JSR CODE_03E07E           ;
CODE_03DF14:        60            RTS                       ;

CODE_03DF15:        A5 A0         LDA $A0                   ;
CODE_03DF17:        30 05         BMI CODE_03DF1E           ;
CODE_03DF19:        F0 03         BEQ CODE_03DF1E           ;
CODE_03DF1B:        4C A6 DF      JMP CODE_03DFA6           ;

CODE_03DF1E:        B5 1C         LDA $1C,x                 ;
CODE_03DF20:        C9 07         CMP #$07                  ;
CODE_03DF22:        90 0B         BCC CODE_03DF2F           ;
CODE_03DF24:        AD 37 02      LDA $0237                 ;
CODE_03DF27:        18            CLC                       ;
CODE_03DF28:        69 0C         ADC #$0C                  ;
CODE_03DF2A:        DD 38 02      CMP $0238,x               ;
CODE_03DF2D:        90 77         BCC CODE_03DFA6           ;
CODE_03DF2F:        AD 9D 07      LDA $079D                 ;
CODE_03DF32:        D0 72         BNE CODE_03DFA6           ;
CODE_03DF34:        AD AE 07      LDA $07AE                 ;
CODE_03DF37:        D0 40         BNE CODE_03DF79           ;
CODE_03DF39:        AD AD 03      LDA $03AD                 ;
CODE_03DF3C:        CD AE 03      CMP $03AE                 ;
CODE_03DF3F:        90 03         BCC CODE_03DF44           ;
CODE_03DF41:        4C 34 E0      JMP CODE_03E034           ;

CODE_03DF44:        B5 47         LDA $47,x                 ;
CODE_03DF46:        C9 01         CMP #$01                  ;
CODE_03DF48:        D0 03         BNE CODE_03DF4D           ;
CODE_03DF4A:        4C 3D E0      JMP CODE_03E03D           ;

CODE_03DF4D:        AD AE 07      LDA $07AE                 ;
CODE_03DF50:        D0 27         BNE CODE_03DF79           ;
CODE_03DF52:        AE 56 07      LDX $0756                 ;
CODE_03DF55:        F0 25         BEQ CODE_03DF7C           ;
CODE_03DF57:        8D 56 07      STA $0756                 ;
CODE_03DF5A:        A9 08         LDA #$08                  ;
CODE_03DF5C:        8D AE 07      STA $07AE                 ;
CODE_03DF5F:        A9 04         LDA #$04                  ;\
CODE_03DF61:        8D 00 16      STA $1600                 ;/Enter pipe/hurt sound
CODE_03DF64:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03DF68:        A9 0A         LDA #$0A                  ;
CODE_03DF6A:        A0 01         LDY #$01                  ;
CODE_03DF6C:        85 0F         STA $0F                   ;
CODE_03DF6E:        84 28         STY $28                   ;
CODE_03DF70:        A0 FF         LDY #$FF                  ;\Everything freezes timer
CODE_03DF72:        8C 47 07      STY $0747                 ;/
CODE_03DF75:        C8            INY                       ;
CODE_03DF76:        8C 75 07      STY $0775                 ;
CODE_03DF79:        A6 9E         LDX $9E                   ;
CODE_03DF7B:        60            RTS                       ;

CODE_03DF7C:        86 5D         STX $5D                   ;
CODE_03DF7E:        DA            PHX                       ;
CODE_03DF7F:        A9 01         LDA #$01                  ;
CODE_03DF81:        8D 54 07      STA $0754                 ;
CODE_03DF84:        22 88 9A 04   JSL CODE_049A88           ;
CODE_03DF88:        FA            PLX                       ;
CODE_03DF89:        E8            INX                       ;
CODE_03DF8A:        A9 09         LDA #$09                  ;\
CODE_03DF8C:        8D 02 16      STA $1602                 ;/Mario died music
CODE_03DF8F:        A9 09         LDA #$09                  ;\
CODE_03DF91:        8D 02 16      STA $1602                 ;/...
CODE_03DF94:        8D 67 0E      STA $0E67                 ;
CODE_03DF97:        8D 23 07      STA $0723                 ;
CODE_03DF9A:        A9 FC         LDA #$FC                  ;
CODE_03DF9C:        85 A0         STA $A0                   ;
CODE_03DF9E:        A9 0B         LDA #$0B                  ;
CODE_03DFA0:        D0 C8         BNE CODE_03DF6A           ;

DATA_03DFA2:        db $02,$06,$05,$06

CODE_03DFA6:        B5 1C         LDA $1C,x                 ;
CODE_03DFA8:        C9 12         CMP #$12                  ;
CODE_03DFAA:        F0 A1         BEQ CODE_03DF4D           ;
CODE_03DFAC:        A9 02         LDA #$02                  ;\Jump on enemy sound
CODE_03DFAE:        8D 00 16      STA $1600                 ;/
CODE_03DFB1:        B5 1C         LDA $1C,x                 ;
CODE_03DFB3:        A0 00         LDY #$00                  ;
CODE_03DFB5:        C9 14         CMP #$14                  ;
CODE_03DFB7:        F0 1B         BEQ CODE_03DFD4           ;
CODE_03DFB9:        C9 08         CMP #$08                  ;
CODE_03DFBB:        F0 17         BEQ CODE_03DFD4           ;
CODE_03DFBD:        C9 33         CMP #$33                  ;
CODE_03DFBF:        F0 13         BEQ CODE_03DFD4           ;
CODE_03DFC1:        C9 0C         CMP #$0C                  ;
CODE_03DFC3:        F0 0F         BEQ CODE_03DFD4           ;
CODE_03DFC5:        C8            INY                       ;
CODE_03DFC6:        C9 05         CMP #$05                  ;
CODE_03DFC8:        F0 0A         BEQ CODE_03DFD4           ;
CODE_03DFCA:        C8            INY                       ;
CODE_03DFCB:        C9 11         CMP #$11                  ;
CODE_03DFCD:        F0 05         BEQ CODE_03DFD4           ;
CODE_03DFCF:        C8            INY                       ;
CODE_03DFD0:        C9 07         CMP #$07                  ;
CODE_03DFD2:        D0 1D         BNE CODE_03DFF1           ;
CODE_03DFD4:        B9 A2 DF      LDA $DFA2,y               ;
CODE_03DFD7:        20 7E E0      JSR CODE_03E07E           ;
CODE_03DFDA:        B5 47         LDA $47,x                 ;
CODE_03DFDC:        48            PHA                       ;
CODE_03DFDD:        20 9D E7      JSR CODE_03E79D           ;
CODE_03DFE0:        68            PLA                       ;
CODE_03DFE1:        95 47         STA $47,x                 ;
CODE_03DFE3:        A9 20         LDA #$20                  ;
CODE_03DFE5:        95 29         STA $29,x                 ;
CODE_03DFE7:        20 26 C7      JSR CODE_03C726           ;
CODE_03DFEA:        95 5E         STA $5E,x                 ;
CODE_03DFEC:        A9 FD         LDA #$FD                  ;
CODE_03DFEE:        85 A0         STA $A0                   ;
CODE_03DFF0:        60            RTS                       ;

CODE_03DFF1:        C9 09         CMP #$09                  ;
CODE_03DFF3:        90 1D         BCC CODE_03E012           ;
CODE_03DFF5:        29 01         AND #$01                  ;
CODE_03DFF7:        95 1C         STA $1C,x                 ;
CODE_03DFF9:        A0 00         LDY #$00                  ;
CODE_03DFFB:        94 29         STY $29,x                 ;
CODE_03DFFD:        A9 03         LDA #$03                  ;
CODE_03DFFF:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E002:        20 26 C7      JSR CODE_03C726           ;
CODE_03E005:        20 43 E0      JSR CODE_03E043           ;
CODE_03E008:        B9 53 DE      LDA $DE53,y               ;
CODE_03E00B:        95 5E         STA $5E,x                 ;
CODE_03E00D:        4C 2F E0      JMP CODE_03E02F           ;

CODE_03E010:        10 0B         BPL CODE_03E01D           ;
CODE_03E012:        A9 04         LDA #$04                  ;
CODE_03E014:        95 29         STA $29,x                 ;
CODE_03E016:        EE 84 02      INC $0284                 ;
CODE_03E019:        AD 84 02      LDA $0284                 ;
CODE_03E01C:        18            CLC                       ;
CODE_03E01D:        6D 9D 07      ADC $079D                 ;
CODE_03E020:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E023:        EE 9D 07      INC $079D                 ;
CODE_03E026:        AC 6A 07      LDY $076A                 ;"More difficult quest" flag
CODE_03E029:        B9 10 E0      LDA $E010,y               ;
CODE_03E02C:        9D A2 07      STA $07A2,x               ;
CODE_03E02F:        A9 FB         LDA #$FB                  ;
CODE_03E031:        85 A0         STA $A0                   ;
CODE_03E033:        60            RTS                       ;

CODE_03E034:        B5 47         LDA $47,x                 ;
CODE_03E036:        C9 01         CMP #$01                  ;
CODE_03E038:        D0 03         BNE CODE_03E03D           ;
CODE_03E03A:        4C 4D DF      JMP CODE_03DF4D           ;

CODE_03E03D:        20 BE E1      JSR CODE_03E1BE           ;
CODE_03E040:        4C 4D DF      JMP CODE_03DF4D           ;

CODE_03E043:        A0 01         LDY #$01                  ;
CODE_03E045:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03E048:        10 01         BPL CODE_03E04B           ;
CODE_03E04A:        C8            INY                       ;
CODE_03E04B:        94 47         STY $47,x                 ;
CODE_03E04D:        88            DEY                       ;
CODE_03E04E:        60            RTS                       ;

CODE_03E04F:        9D 10 01      STA $0110,x               ;
CODE_03E052:        A9 30         LDA #$30                  ;
CODE_03E054:        9D 38 01      STA $0138,x               ;
CODE_03E057:        BD 38 02      LDA $0238,x               ;
CODE_03E05A:        9D 24 01      STA $0124,x               ;
CODE_03E05D:        AD AE 03      LDA $03AE                 ;
CODE_03E060:        9D 1A 01      STA $011A,x               ;
CODE_03E063:        BD 1A 02      LDA $021A,x               ;
CODE_03E066:        85 ED         STA $ED                   ;
CODE_03E068:        B5 79         LDA $79,x                 ;
CODE_03E06A:        85 EE         STA $EE                   ;
CODE_03E06C:        DA            PHX                       ;
CODE_03E06D:        8A            TXA                       ;
CODE_03E06E:        0A            ASL A                     ;
CODE_03E06F:        AA            TAX                       ;
CODE_03E070:        C2 20         REP #$20                  ;
CODE_03E072:        A5 ED         LDA $ED                   ;
CODE_03E074:        38            SEC                       ;
CODE_03E075:        E5 42         SBC $42                   ;
CODE_03E077:        9D 50 0E      STA $0E50,x               ;
CODE_03E07A:        E2 20         SEP #$20                  ;
CODE_03E07C:        FA            PLX                       ;
CODE_03E07D:        60            RTS                       ;

CODE_03E07E:        DD 10 01      CMP $0110,x               ;
CODE_03E081:        B0 01         BCS CODE_03E084           ;
CODE_03E083:        60            RTS                       ;

CODE_03E084:        9D 10 01      STA $0110,x               ;
CODE_03E087:        A9 30         LDA #$30                  ;
CODE_03E089:        9D 38 01      STA $0138,x               ;
CODE_03E08C:        BD 38 02      LDA $0238,x               ;
CODE_03E08F:        9D 24 01      STA $0124,x               ;
CODE_03E092:        AD AE 03      LDA $03AE                 ;
CODE_03E095:        9D 1A 01      STA $011A,x               ;
CODE_03E098:        5A            PHY                       ;
CODE_03E099:        8A            TXA                       ;
CODE_03E09A:        0A            ASL A                     ;
CODE_03E09B:        A8            TAY                       ;
CODE_03E09C:        BD 1A 02      LDA $021A,x               ;
CODE_03E09F:        85 E4         STA $E4                   ;
CODE_03E0A1:        B5 79         LDA $79,x                 ;
CODE_03E0A3:        85 E5         STA $E5                   ;
CODE_03E0A5:        C2 20         REP #$20                  ;
CODE_03E0A7:        A5 E4         LDA $E4                   ;
CODE_03E0A9:        38            SEC                       ;
CODE_03E0AA:        E5 42         SBC $42                   ;
CODE_03E0AC:        99 50 0E      STA $0E50,y               ;
CODE_03E0AF:        E2 20         SEP #$20                  ;
CODE_03E0B1:        9D 1A 01      STA $011A,x               ;
CODE_03E0B4:        7A            PLY                       ;
CODE_03E0B5:        60            RTS                       ;

DATA_03E0B6:        db $80,$40,$20,$10,$08,$04,$02

DATA_03E0BD:        db $7F,$BF,$DF,$EF,$F7,$FB,$FD

CODE_03E0C4:        A5 09         LDA $09                   ;
CODE_03E0C6:        4A            LSR A                     ;
CODE_03E0C7:        90 B4         BCC CODE_03E07D           ;
CODE_03E0C9:        A5 5C         LDA $5C                   ;
CODE_03E0CB:        F0 B0         BEQ CODE_03E07D           ;
CODE_03E0CD:        B5 1C         LDA $1C,x                 ;
CODE_03E0CF:        C9 15         CMP #$15                  ;
CODE_03E0D1:        B0 6D         BCS CODE_03E140           ;
CODE_03E0D3:        C9 11         CMP #$11                  ;
CODE_03E0D5:        F0 69         BEQ CODE_03E140           ;
CODE_03E0D7:        C9 0D         CMP #$0D                  ;
CODE_03E0D9:        F0 65         BEQ CODE_03E140           ;
CODE_03E0DB:        BD D9 03      LDA $03D9,x               ;
CODE_03E0DE:        D0 60         BNE CODE_03E140           ;
CODE_03E0E0:        20 F7 E2      JSR CODE_03E2F7           ;
CODE_03E0E3:        CA            DEX                       ;
CODE_03E0E4:        30 5A         BMI CODE_03E140           ;
CODE_03E0E6:        86 01         STX $01                   ;
CODE_03E0E8:        98            TYA                       ;
CODE_03E0E9:        48            PHA                       ;
CODE_03E0EA:        B5 10         LDA $10,x                 ;
CODE_03E0EC:        F0 4B         BEQ CODE_03E139           ;
CODE_03E0EE:        B5 1C         LDA $1C,x                 ;
CODE_03E0F0:        C9 15         CMP #$15                  ;
CODE_03E0F2:        B0 45         BCS CODE_03E139           ;
CODE_03E0F4:        C9 11         CMP #$11                  ;
CODE_03E0F6:        F0 41         BEQ CODE_03E139           ;
CODE_03E0F8:        C9 0D         CMP #$0D                  ;
CODE_03E0FA:        F0 3D         BEQ CODE_03E139           ;
CODE_03E0FC:        BD D9 03      LDA $03D9,x               ;
CODE_03E0FF:        D0 38         BNE CODE_03E139           ;
CODE_03E101:        8A            TXA                       ;
CODE_03E102:        0A            ASL A                     ;
CODE_03E103:        0A            ASL A                     ;
CODE_03E104:        18            CLC                       ;
CODE_03E105:        69 04         ADC #$04                  ;
CODE_03E107:        AA            TAX                       ;
CODE_03E108:        20 B9 EA      JSR CODE_03EAB9           ;
CODE_03E10B:        A6 9E         LDX $9E                   ;
CODE_03E10D:        A4 01         LDY $01                   ;
CODE_03E10F:        90 1F         BCC CODE_03E130           ;
CODE_03E111:        B5 29         LDA $29,x                 ;
CODE_03E113:        19 29 00      ORA $0029,y               ;
CODE_03E116:        29 80         AND #$80                  ;
CODE_03E118:        D0 11         BNE CODE_03E12B           ;
CODE_03E11A:        B9 81 04      LDA $0481,y               ;
CODE_03E11D:        3D B6 E0      AND $E0B6,x               ;
CODE_03E120:        D0 17         BNE CODE_03E139           ;
CODE_03E122:        B9 81 04      LDA $0481,y               ;
CODE_03E125:        1D B6 E0      ORA $E0B6,x               ;
CODE_03E128:        99 81 04      STA $0481,y               ;
CODE_03E12B:        20 43 E1      JSR CODE_03E143           ;
CODE_03E12E:        80 09         BRA CODE_03E139           ;

CODE_03E130:        B9 81 04      LDA $0481,y               ;
CODE_03E133:        3D BD E0      AND $E0BD,x               ;
CODE_03E136:        99 81 04      STA $0481,y               ;
CODE_03E139:        68            PLA                       ;
CODE_03E13A:        A8            TAY                       ;
CODE_03E13B:        A6 01         LDX $01                   ;
CODE_03E13D:        CA            DEX                       ;
CODE_03E13E:        10 A6         BPL CODE_03E0E6           ;
CODE_03E140:        A6 9E         LDX $9E                   ;
CODE_03E142:        60            RTS                       ;

CODE_03E143:        B9 29 00      LDA $0029,y               ;
CODE_03E146:        15 29         ORA $29,x                 ;
CODE_03E148:        29 20         AND #$20                  ;
CODE_03E14A:        D0 37         BNE CODE_03E183           ;
CODE_03E14C:        B5 1C         LDA $1C,x                 ;
CODE_03E14E:        C9 05         CMP #$05                  ;
CODE_03E150:        D0 02         BNE CODE_03E154           ;
CODE_03E152:        74 29         STZ $29,x                 ;
CODE_03E154:        B5 29         LDA $29,x                 ;
CODE_03E156:        C9 06         CMP #$06                  ;
CODE_03E158:        90 2A         BCC CODE_03E184           ;
CODE_03E15A:        B9 29 00      LDA $0029,y               ;
CODE_03E15D:        0A            ASL A                     ;
CODE_03E15E:        90 0A         BCC CODE_03E16A           ;
CODE_03E160:        A9 06         LDA #$06                  ;
CODE_03E162:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E165:        20 81 DD      JSR CODE_03DD81           ;
CODE_03E168:        A4 01         LDY $01                   ;
CODE_03E16A:        98            TYA                       ;
CODE_03E16B:        AA            TAX                       ;
CODE_03E16C:        20 81 DD      JSR CODE_03DD81           ;
CODE_03E16F:        A6 9E         LDX $9E                   ;
CODE_03E171:        BD 2E 01      LDA $012E,x               ;
CODE_03E174:        18            CLC                       ;
CODE_03E175:        69 04         ADC #$04                  ;
CODE_03E177:        A6 01         LDX $01                   ;
CODE_03E179:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E17C:        A6 9E         LDX $9E                   ;
CODE_03E17E:        FE 2E 01      INC $012E,x               ;
CODE_03E181:        80 24         BRA CODE_03E1A7           ;

CODE_03E183:        60            RTS                       ;

CODE_03E184:        B9 29 00      LDA $0029,y               ;
CODE_03E187:        C9 06         CMP #$06                  ;
CODE_03E189:        90 2C         BCC CODE_03E1B7           ;
CODE_03E18B:        B9 1C 00      LDA $001C,y               ;
CODE_03E18E:        C9 05         CMP #$05                  ;
CODE_03E190:        F0 F1         BEQ CODE_03E183           ;
CODE_03E192:        20 81 DD      JSR CODE_03DD81           ;
CODE_03E195:        A4 01         LDY $01                   ;
CODE_03E197:        B9 2E 01      LDA $012E,y               ;
CODE_03E19A:        18            CLC                       ;
CODE_03E19B:        69 04         ADC #$04                  ;
CODE_03E19D:        A6 9E         LDX $9E                   ;
CODE_03E19F:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E1A2:        A6 01         LDX $01                   ;
CODE_03E1A4:        FE 2E 01      INC $012E,x               ;
CODE_03E1A7:        BD 2E 01      LDA $012E,x               ;
CODE_03E1AA:        18            CLC                       ;
CODE_03E1AB:        69 12         ADC #$12                  ;
CODE_03E1AD:        C9 1A         CMP #$1A                  ;
CODE_03E1AF:        90 02         BCC CODE_03E1B3           ;
CODE_03E1B1:        A9 00         LDA #$00                  ;\
CODE_03E1B3:        8D 00 16      STA $1600                 ;/No sound
CODE_03E1B6:        60            RTS                       ;

CODE_03E1B7:        98            TYA                       ;
CODE_03E1B8:        AA            TAX                       ;
CODE_03E1B9:        20 BE E1      JSR CODE_03E1BE           ;
CODE_03E1BC:        A6 9E         LDX $9E                   ;
CODE_03E1BE:        B5 1C         LDA $1C,x                 ;
CODE_03E1C0:        C9 0D         CMP #$0D                  ;
CODE_03E1C2:        F0 22         BEQ CODE_03E1E6           ;
CODE_03E1C4:        C9 11         CMP #$11                  ;
CODE_03E1C6:        F0 1E         BEQ CODE_03E1E6           ;
CODE_03E1C8:        C9 05         CMP #$05                  ;
CODE_03E1CA:        F0 1A         BEQ CODE_03E1E6           ;
CODE_03E1CC:        C9 12         CMP #$12                  ;
CODE_03E1CE:        F0 08         BEQ CODE_03E1D8           ;
CODE_03E1D0:        C9 0E         CMP #$0E                  ;
CODE_03E1D2:        F0 04         BEQ CODE_03E1D8           ;
CODE_03E1D4:        C9 07         CMP #$07                  ;
CODE_03E1D6:        B0 0E         BCS CODE_03E1E6           ;
CODE_03E1D8:        B5 5E         LDA $5E,x                 ;
CODE_03E1DA:        49 FF         EOR #$FF                  ;
CODE_03E1DC:        A8            TAY                       ;
CODE_03E1DD:        C8            INY                       ;
CODE_03E1DE:        94 5E         STY $5E,x                 ;
CODE_03E1E0:        B5 47         LDA $47,x                 ;
CODE_03E1E2:        49 03         EOR #$03                  ;
CODE_03E1E4:        95 47         STA $47,x                 ;
CODE_03E1E6:        60            RTS                       ;

CODE_03E1E7:        A9 FF         LDA #$FF                  ;
CODE_03E1E9:        9D A2 03      STA $03A2,x               ;
CODE_03E1EC:        AD 47 07      LDA $0747                 ;
CODE_03E1EF:        D0 2A         BNE CODE_03E21B           ;
CODE_03E1F1:        B5 29         LDA $29,x                 ;
CODE_03E1F3:        30 26         BMI CODE_03E21B           ;
CODE_03E1F5:        B5 1C         LDA $1C,x                 ;
CODE_03E1F7:        C9 24         CMP #$24                  ;
CODE_03E1F9:        D0 06         BNE CODE_03E201           ;
CODE_03E1FB:        B5 29         LDA $29,x                 ;
CODE_03E1FD:        AA            TAX                       ;
CODE_03E1FE:        20 01 E2      JSR CODE_03E201           ;
CODE_03E201:        20 ED E2      JSR CODE_03E2ED           ;
CODE_03E204:        B0 15         BCS CODE_03E21B           ;
CODE_03E206:        8A            TXA                       ;
CODE_03E207:        20 F9 E2      JSR CODE_03E2F9           ;
CODE_03E20A:        BD 38 02      LDA $0238,x               ;
CODE_03E20D:        85 00         STA $00                   ;
CODE_03E20F:        8A            TXA                       ;
CODE_03E210:        48            PHA                       ;
CODE_03E211:        20 B7 EA      JSR CODE_03EAB7           ;
CODE_03E214:        68            PLA                       ;
CODE_03E215:        AA            TAX                       ;
CODE_03E216:        90 03         BCC CODE_03E21B           ;
CODE_03E218:        20 5F E2      JSR CODE_03E25F           ;
CODE_03E21B:        A6 9E         LDX $9E                   ;
CODE_03E21D:        60            RTS                       ;

CODE_03E21E:        AD 47 07      LDA $0747                 ;
CODE_03E221:        D0 37         BNE CODE_03E25A           ;
CODE_03E223:        9D A2 03      STA $03A2,x               ;
CODE_03E226:        20 ED E2      JSR CODE_03E2ED           ;
CODE_03E229:        B0 2F         BCS CODE_03E25A           ;
CODE_03E22B:        A9 02         LDA #$02                  ;
CODE_03E22D:        85 00         STA $00                   ;
CODE_03E22F:        A6 9E         LDX $9E                   ;
CODE_03E231:        20 F7 E2      JSR CODE_03E2F7           ;
CODE_03E234:        29 02         AND #$02                  ;
CODE_03E236:        D0 22         BNE CODE_03E25A           ;
CODE_03E238:        B9 9D 0F      LDA $0F9D,y               ;
CODE_03E23B:        C9 20         CMP #$20                  ;
CODE_03E23D:        90 05         BCC CODE_03E244           ;
CODE_03E23F:        20 B7 EA      JSR CODE_03EAB7           ;
CODE_03E242:        B0 19         BCS CODE_03E25D           ;
CODE_03E244:        B9 9D 0F      LDA $0F9D,y               ;
CODE_03E247:        18            CLC                       ;
CODE_03E248:        69 80         ADC #$80                  ;
CODE_03E24A:        99 9D 0F      STA $0F9D,y               ;
CODE_03E24D:        B9 9F 0F      LDA $0F9F,y               ;
CODE_03E250:        18            CLC                       ;
CODE_03E251:        69 80         ADC #$80                  ;
CODE_03E253:        99 9F 0F      STA $0F9F,y               ;
CODE_03E256:        C6 00         DEC $00                   ;
CODE_03E258:        D0 D5         BNE CODE_03E22F           ;
CODE_03E25A:        A6 9E         LDX $9E                   ;
CODE_03E25C:        60            RTS                       ;

CODE_03E25D:        A6 9E         LDX $9E                   ;
CODE_03E25F:        B9 9F 0F      LDA $0F9F,y               ;
CODE_03E262:        38            SEC                       ;
CODE_03E263:        ED 9D 0F      SBC $0F9D                 ;
CODE_03E266:        C9 04         CMP #$04                  ;
CODE_03E268:        B0 08         BCS CODE_03E272           ;
CODE_03E26A:        A5 A0         LDA $A0                   ;
CODE_03E26C:        10 04         BPL CODE_03E272           ;
CODE_03E26E:        A9 01         LDA #$01                  ;
CODE_03E270:        85 A0         STA $A0                   ;
CODE_03E272:        AD 9F 0F      LDA $0F9F                 ;
CODE_03E275:        38            SEC                       ;
CODE_03E276:        F9 9D 0F      SBC $0F9D,y               ;
CODE_03E279:        C9 06         CMP #$06                  ;
CODE_03E27B:        B0 1B         BCS CODE_03E298           ;
CODE_03E27D:        A5 A0         LDA $A0                   ;
CODE_03E27F:        30 17         BMI CODE_03E298           ;
CODE_03E281:        A5 00         LDA $00                   ;
CODE_03E283:        B4 1C         LDY $1C,x                 ;
CODE_03E285:        C0 2B         CPY #$2B                  ;
CODE_03E287:        F0 05         BEQ CODE_03E28E           ;
CODE_03E289:        C0 2C         CPY #$2C                  ;
CODE_03E28B:        F0 01         BEQ CODE_03E28E           ;
CODE_03E28D:        8A            TXA                       ;
CODE_03E28E:        A6 9E         LDX $9E                   ;
CODE_03E290:        9D A2 03      STA $03A2,x               ;
CODE_03E293:        A9 00         LDA #$00                  ;
CODE_03E295:        85 28         STA $28                   ;
CODE_03E297:        60            RTS                       ;

CODE_03E298:        A9 01         LDA #$01                  ;
CODE_03E29A:        85 00         STA $00                   ;
CODE_03E29C:        AD 9E 0F      LDA $0F9E                 ;
CODE_03E29F:        38            SEC                       ;
CODE_03E2A0:        F9 9C 0F      SBC $0F9C,y               ;
CODE_03E2A3:        C9 08         CMP #$08                  ;
CODE_03E2A5:        90 0D         BCC CODE_03E2B4           ;
CODE_03E2A7:        E6 00         INC $00                   ;
CODE_03E2A9:        B9 9E 0F      LDA $0F9E,y               ;
CODE_03E2AC:        18            CLC                       ;
CODE_03E2AD:        ED 9C 0F      SBC $0F9C                 ;
CODE_03E2B0:        C9 09         CMP #$09                  ;
CODE_03E2B2:        B0 03         BCS CODE_03E2B7           ;
CODE_03E2B4:        20 B5 E6      JSR CODE_03E6B5           ;
CODE_03E2B7:        A6 9E         LDX $9E                   ;
CODE_03E2B9:        60            RTS                       ;

CODE_03E2BA:        80 00         BRA CODE_03E2BC           ;

CODE_03E2BC:        A8            TAY                       ;
CODE_03E2BD:        BD 38 02      LDA $0238,x               ;
CODE_03E2C0:        18            CLC                       ;
CODE_03E2C1:        79 B9 E2      ADC $E2B9,y               ;
CODE_03E2C4:        D0 08         BNE CODE_03E2CE           ;
CODE_03E2C6:        A9 02         LDA #$02                  ;
CODE_03E2C8:        85 BB         STA $BB                   ;
CODE_03E2CA:        60            RTS                       ;

CODE_03E2CB:        BD 38 02      LDA $0238,x               ;
CODE_03E2CE:        A4 0F         LDY $0F                   ;
CODE_03E2D0:        C0 0B         CPY #$0B                  ;
CODE_03E2D2:        F0 18         BEQ CODE_03E2EC           ;
CODE_03E2D4:        B4 BC         LDY $BC,x                 ;
CODE_03E2D6:        C0 01         CPY #$01                  ;
CODE_03E2D8:        D0 12         BNE CODE_03E2EC           ;
CODE_03E2DA:        38            SEC                       ;
CODE_03E2DB:        E9 20         SBC #$20                  ;
CODE_03E2DD:        8D 37 02      STA $0237                 ;
CODE_03E2E0:        98            TYA                       ;
CODE_03E2E1:        E9 00         SBC #$00                  ;
CODE_03E2E3:        85 BB         STA $BB                   ;
CODE_03E2E5:        A9 00         LDA #$00                  ;
CODE_03E2E7:        85 A0         STA $A0                   ;
CODE_03E2E9:        8D 3C 04      STA $043C                 ;
CODE_03E2EC:        60            RTS                       ;

CODE_03E2ED:        AD D0 03      LDA $03D0                 ;
CODE_03E2F0:        29 F0         AND #$F0                  ;
CODE_03E2F2:        18            CLC                       ;
CODE_03E2F3:        F0 01         BEQ CODE_03E2F6           ;
CODE_03E2F5:        38            SEC                       ;
CODE_03E2F6:        60            RTS                       ;

CODE_03E2F7:        A5 9E         LDA $9E                   ;
CODE_03E2F9:        0A            ASL A                     ;
CODE_03E2FA:        0A            ASL A                     ;
CODE_03E2FB:        18            CLC                       ;
CODE_03E2FC:        69 04         ADC #$04                  ;
CODE_03E2FE:        A8            TAY                       ;
CODE_03E2FF:        AD D1 03      LDA $03D1                 ;
CODE_03E302:        29 0F         AND #$0F                  ;
CODE_03E304:        C9 0F         CMP #$0F                  ;
CODE_03E306:        60            RTS                       ;

DATA_03E307:        db $20,$10

CODE_03E309:        AD 16 07      LDA $0716                 ;\When "pass through blocks" flag is enabled
CODE_03E30C:        D0 2F         BNE CODE_03E33D           ;/return.
CODE_03E30E:        A5 0F         LDA $0F                   ;\
CODE_03E310:        C9 0B         CMP #$0B                  ; |When in death animation
CODE_03E312:        F0 29         BEQ CODE_03E33D           ;/ return
CODE_03E314:        C9 04         CMP #$04                  ;\When on flagpole?
CODE_03E316:        90 25         BCC CODE_03E33D           ;/return
CODE_03E318:        A9 01         LDA #$01                  ;\
CODE_03E31A:        AC 04 07      LDY $0704                 ; |If swimming, make player state 01
CODE_03E31D:        D0 0A         BNE CODE_03E329           ;/branch
CODE_03E31F:        A5 28         LDA $28                   ;\
CODE_03E321:        F0 04         BEQ CODE_03E327           ; |If player state is 00, make it 02
CODE_03E323:        C9 03         CMP #$03                  ; |If player state is 03, keep it 03
CODE_03E325:        D0 04         BNE CODE_03E32B           ; |
CODE_03E327:        A9 02         LDA #$02                  ; |
CODE_03E329:        85 28         STA $28                   ;/
CODE_03E32B:        A5 BB         LDA $BB                   ;\
CODE_03E32D:        C9 01         CMP #$01                  ; |If position of Mario is NOT inside range --
CODE_03E32F:        D0 0C         BNE CODE_03E33D           ;/(AKA anywhere he can shoot fireballs), return
CODE_03E331:        A9 FF         LDA #$FF                  ;
CODE_03E333:        8D 80 04      STA $0480                 ;note to self: look at what this store does.
CODE_03E336:        AD 37 02      LDA $0237                 ;\
CODE_03E339:        C9 CF         CMP #$CF                  ; |Branch if player Y-position is inside the game
CODE_03E33B:        90 01         BCC CODE_03E33E           ;/ (AKA not in a bottomless pit)
CODE_03E33D:        60            RTS                       ;Return

CODE_03E33E:        A0 02         LDY #$02                  ;Block interaction routine
CODE_03E340:        AD 14 07      LDA $0714                 ;\If Mario is ducking, branch, #$0E into $EB
CODE_03E343:        D0 0C         BNE CODE_03E351           ;/
CODE_03E345:        AD 54 07      LDA $0754                 ;\If Small Mario, branch, #$0E into $EB
CODE_03E348:        D0 07         BNE CODE_03E351           ;/
CODE_03E34A:        88            DEY                       ;\
CODE_03E34B:        AD 04 07      LDA $0704                 ; |If swimming, branch, #$07 into $EB
CODE_03E34E:        D0 01         BNE CODE_03E351           ; |
CODE_03E350:        88            DEY                       ;/If anything else (normal non-small mario), #$00 into $EB
CODE_03E351:        B9 3F EB      LDA $EB3F,y               ;\Set Mario's hitbox for object interaction?
CODE_03E354:        85 EB         STA $EB                   ;/
CODE_03E356:        A8            TAY                       ;Hitbox size to Y
CODE_03E357:        AE 54 07      LDX $0754                 ;Mario Small Flag to X
CODE_03E35A:        AD 14 07      LDA $0714                 ;\If Mario isn't ducking
CODE_03E35D:        F0 01         BEQ CODE_03E360           ;/branch
CODE_03E35F:        E8            INX                       ;Mario is ducking, so Mario Small flag index indicates mario = small
CODE_03E360:        AD 37 02      LDA $0237                 ;\Mario's Y position
CODE_03E363:        DD 07 E3      CMP $E307,x               ; |If it's smaller than $20 (Small mario), or $10 (big mario)
CODE_03E366:        90 38         BCC CODE_03E3A0           ;/branch (to make mario not interact w/ objects on/above statusbar)
CODE_03E368:        A9 01         LDA #$01                  ;
CODE_03E36A:        85 E4         STA $E4                   ;
CODE_03E36C:        20 7B EB      JSR CODE_03EB7B           ;
CODE_03E36F:        F0 2F         BEQ CODE_03E3A0           ;
CODE_03E371:        20 0D E7      JSR CODE_03E70D           ;\Check if tile is E9 or EA, and if so, play the coin sound
CODE_03E374:        B0 53         BCS CODE_03E3C9           ;/Then branch. If not tile E9 or EA, continue.
CODE_03E376:        A4 A0         LDY $A0                   ;\If Mario y-speed is that of falling, branch
CODE_03E378:        10 26         BPL CODE_03E3A0           ;/
CODE_03E37A:        A4 04         LDY $04                   ;
CODE_03E37C:        C0 04         CPY #$04                  ;
CODE_03E37E:        90 20         BCC CODE_03E3A0           ;
CODE_03E380:        20 FB E6      JSR CODE_03E6FB           ;
CODE_03E383:        B0 0E         BCS CODE_03E393           ;
CODE_03E385:        A4 5C         LDY $5C                   ;
CODE_03E387:        F0 13         BEQ CODE_03E39C           ;
CODE_03E389:        AC 8C 07      LDY $078C                 ;
CODE_03E38C:        D0 0E         BNE CODE_03E39C           ;
CODE_03E38E:        20 75 BE      JSR CODE_03BE75           ;
CODE_03E391:        80 0D         BRA CODE_03E3A0           ;

CODE_03E393:        C9 2A         CMP #$2A                  ;
CODE_03E395:        F0 05         BEQ CODE_03E39C           ;
CODE_03E397:        A9 01         LDA #$01                  ;\ Executes as soon as mario hits a cement-block solid
CODE_03E399:        8D 00 16      STA $1600                 ; |block from below which does NOT spawn ANYTHING
CODE_03E39C:        A9 01         LDA #$01                  ; |Play sound, set Y-speed to downwards
CODE_03E39E:        85 A0         STA $A0                   ;/
CODE_03E3A0:        A4 EB         LDY $EB                   ;
CODE_03E3A2:        AD 37 02      LDA $0237                 ;
CODE_03E3A5:        C9 CF         CMP #$CF                  ;
CODE_03E3A7:        B0 66         BCS CODE_03E40F           ;
CODE_03E3A9:        64 E4         STZ $E4                   ;
CODE_03E3AB:        20 7A EB      JSR CODE_03EB7A           ;
CODE_03E3AE:        20 0D E7      JSR CODE_03E70D           ;
CODE_03E3B1:        B0 16         BCS CODE_03E3C9           ;
CODE_03E3B3:        48            PHA                       ;
CODE_03E3B4:        64 E4         STZ $E4                   ;
CODE_03E3B6:        20 7A EB      JSR CODE_03EB7A           ;
CODE_03E3B9:        85 00         STA $00                   ;
CODE_03E3BB:        68            PLA                       ;
CODE_03E3BC:        85 01         STA $01                   ;
CODE_03E3BE:        D0 0C         BNE CODE_03E3CC           ;
CODE_03E3C0:        A5 00         LDA $00                   ;
CODE_03E3C2:        F0 4B         BEQ CODE_03E40F           ;
CODE_03E3C4:        20 0D E7      JSR CODE_03E70D           ;
CODE_03E3C7:        90 03         BCC CODE_03E3CC           ;
CODE_03E3C9:        4C C8 E4      JMP CODE_03E4C8           ;

CODE_03E3CC:        20 06 E7      JSR CODE_03E706           ;
CODE_03E3CF:        B0 3E         BCS CODE_03E40F           ;
CODE_03E3D1:        A4 A0         LDY $A0                   ;
CODE_03E3D3:        30 3A         BMI CODE_03E40F           ;
CODE_03E3D5:        C9 FD         CMP #$FD                  ;
CODE_03E3D7:        D0 03         BNE CODE_03E3DC           ;
CODE_03E3D9:        4C D1 E4      JMP CODE_03E4D1           ;

CODE_03E3DC:        20 FA E5      JSR CODE_03E5FA           ;
CODE_03E3DF:        F0 2E         BEQ CODE_03E40F           ;
CODE_03E3E1:        AC 0E 07      LDY $070E                 ;
CODE_03E3E4:        D0 25         BNE CODE_03E40B           ;
CODE_03E3E6:        A4 04         LDY $04                   ;
CODE_03E3E8:        C0 05         CPY #$05                  ;
CODE_03E3EA:        90 07         BCC CODE_03E3F3           ;
CODE_03E3EC:        A5 46         LDA $46                   ;
CODE_03E3EE:        85 00         STA $00                   ;
CODE_03E3F0:        4C B5 E6      JMP CODE_03E6B5           ;

CODE_03E3F3:        20 01 E6      JSR CODE_03E601           ;
CODE_03E3F6:        A9 F0         LDA #$F0                  ;
CODE_03E3F8:        2D 37 02      AND $0237                 ;
CODE_03E3FB:        8D 37 02      STA $0237                 ;
CODE_03E3FE:        20 25 E6      JSR CODE_03E625           ;
CODE_03E401:        A9 00         LDA #$00                  ;
CODE_03E403:        85 A0         STA $A0                   ;
CODE_03E405:        8D 3C 04      STA $043C                 ;
CODE_03E408:        8D 84 02      STA $0284                 ;
CODE_03E40B:        A9 00         LDA #$00                  ;
CODE_03E40D:        85 28         STA $28                   ;
CODE_03E40F:        A4 EB         LDY $EB                   ;
CODE_03E411:        C8            INY                       ;
CODE_03E412:        C8            INY                       ;
CODE_03E413:        A9 02         LDA #$02                  ;
CODE_03E415:        85 00         STA $00                   ;
CODE_03E417:        C8            INY                       ;
CODE_03E418:        84 EB         STY $EB                   ;
CODE_03E41A:        AD 37 02      LDA $0237                 ;
CODE_03E41D:        C9 20         CMP #$20                  ;
CODE_03E41F:        90 18         BCC CODE_03E439           ;
CODE_03E421:        C9 E4         CMP #$E4                  ;
CODE_03E423:        B0 2D         BCS CODE_03E452           ;
CODE_03E425:        64 E4         STZ $E4                   ;
CODE_03E427:        20 7F EB      JSR CODE_03EB7F           ;
CODE_03E42A:        F0 0D         BEQ CODE_03E439           ;
CODE_03E42C:        C9 20         CMP #$20                  ;
CODE_03E42E:        F0 09         BEQ CODE_03E439           ;
CODE_03E430:        C9 75         CMP #$75                  ;
CODE_03E432:        F0 05         BEQ CODE_03E439           ;
CODE_03E434:        20 06 E7      JSR CODE_03E706           ;
CODE_03E437:        90 1A         BCC CODE_03E453           ;
CODE_03E439:        A4 EB         LDY $EB                   ;
CODE_03E43B:        C8            INY                       ;
CODE_03E43C:        AD 37 02      LDA $0237                 ;
CODE_03E43F:        C9 08         CMP #$08                  ;
CODE_03E441:        90 0F         BCC CODE_03E452           ;
CODE_03E443:        C9 D0         CMP #$D0                  ;
CODE_03E445:        B0 0B         BCS CODE_03E452           ;
CODE_03E447:        64 E4         STZ $E4                   ;
CODE_03E449:        20 7F EB      JSR CODE_03EB7F           ;
CODE_03E44C:        D0 05         BNE CODE_03E453           ;
CODE_03E44E:        C6 00         DEC $00                   ;
CODE_03E450:        D0 C5         BNE CODE_03E417           ;
CODE_03E452:        60            RTS                       ;

CODE_03E453:        20 FA E5      JSR CODE_03E5FA           ;
CODE_03E456:        F0 6D         BEQ CODE_03E4C5           ;
CODE_03E458:        20 06 E7      JSR CODE_03E706           ;
CODE_03E45B:        90 03         BCC CODE_03E460           ;
CODE_03E45D:        4C 26 E5      JMP CODE_03E526           ;

CODE_03E460:        20 0D E7      JSR CODE_03E70D           ;
CODE_03E463:        B0 63         BCS CODE_03E4C8           ;
CODE_03E465:        20 1A E6      JSR CODE_03E61A           ;
CODE_03E468:        90 08         BCC CODE_03E472           ;
CODE_03E46A:        AD 0E 07      LDA $070E                 ;
CODE_03E46D:        D0 56         BNE CODE_03E4C5           ;
CODE_03E46F:        4C C2 E4      JMP CODE_03E4C2           ;

CODE_03E472:        A4 28         LDY $28                   ;
CODE_03E474:        C0 00         CPY #$00                  ;
CODE_03E476:        D0 4A         BNE CODE_03E4C2           ;
CODE_03E478:        AC 02 02      LDY $0202                 ;
CODE_03E47B:        88            DEY                       ;
CODE_03E47C:        D0 44         BNE CODE_03E4C2           ;
CODE_03E47E:        C9 76         CMP #$76                  ;
CODE_03E480:        F0 04         BEQ CODE_03E486           ;
CODE_03E482:        C9 23         CMP #$23                  ;
CODE_03E484:        D0 3C         BNE CODE_03E4C2           ;
CODE_03E486:        AD 56 02      LDA $0256                 ;
CODE_03E489:        F0 0E         BEQ CODE_03E499           ;
CODE_03E48B:        A4 9A         LDY $9A                   ;
CODE_03E48D:        D0 0A         BNE CODE_03E499           ;
CODE_03E48F:        A0 04         LDY #$04                  ;\
CODE_03E491:        8C 00 16      STY $1600                 ;/Enter pipe/hurt sound
CODE_03E494:        84 9A         STY $9A                   ;
CODE_03E496:        9C AF 07      STZ $07AF                 ;
CODE_03E499:        29 CF         AND #$CF                  ;
CODE_03E49B:        8D 56 02      STA $0256                 ;
CODE_03E49E:        AD 19 02      LDA $0219                 ;
CODE_03E4A1:        29 0F         AND #$0F                  ;
CODE_03E4A3:        F0 0E         BEQ CODE_03E4B3           ;
CODE_03E4A5:        A0 00         LDY #$00                  ;
CODE_03E4A7:        AD 1A 07      LDA $071A                 ;
CODE_03E4AA:        F0 01         BEQ CODE_03E4AD           ;
CODE_03E4AC:        C8            INY                       ;
CODE_03E4AD:        B9 C6 E4      LDA $E4C6,y               ;
CODE_03E4B0:        8D DE 06      STA $06DE                 ;
CODE_03E4B3:        A5 0F         LDA $0F                   ;
CODE_03E4B5:        C9 07         CMP #$07                  ;
CODE_03E4B7:        F0 0C         BEQ CODE_03E4C5           ;
CODE_03E4B9:        C9 08         CMP #$08                  ;
CODE_03E4BB:        D0 08         BNE CODE_03E4C5           ;
CODE_03E4BD:        A9 02         LDA #$02                  ;
CODE_03E4BF:        85 0F         STA $0F                   ;
CODE_03E4C1:        60            RTS                       ;

CODE_03E4C2:        20 B5 E6      JSR CODE_03E6B5           ;
CODE_03E4C5:        60            RTS                       ;

DATA_03E4C6:        db $34,$34

CODE_03E4C8:        20 14 E5      JSR CODE_03E514           ;
CODE_03E4CB:        EE 48 07      INC $0748                 ;
CODE_03E4CE:        4C 2C BD      JMP CODE_03BD2C           ;

CODE_03E4D1:        A9 00         LDA #$00                  ;
CODE_03E4D3:        8D 72 07      STA $0772                 ;
CODE_03E4D6:        A9 02         LDA #$02                  ;
CODE_03E4D8:        8D 70 07      STA $0770                 ;
CODE_03E4DB:        AD 42 21      LDA $2142                 ;
CODE_03E4DE:        C9 0B         CMP #$0B                  ;
CODE_03E4E0:        F0 05         BEQ CODE_03E4E7           ;
CODE_03E4E2:        A9 F0         LDA #$F0                  ;
CODE_03E4E4:        8D 02 16      STA $1602                 ;
CODE_03E4E7:        A9 18         LDA #$18                  ;
CODE_03E4E9:        85 5D         STA $5D                   ;
CODE_03E4EB:        DA            PHX                       ;
CODE_03E4EC:        A2 00         LDX #$00                  ;
CODE_03E4EE:        B5 1C         LDA $1C,x                 ;
CODE_03E4F0:        C9 2D         CMP #$2D                  ;
CODE_03E4F2:        D0 1A         BNE CODE_03E50E           ;
CODE_03E4F4:        B5 10         LDA $10,x                 ;
CODE_03E4F6:        C9 01         CMP #$01                  ;
CODE_03E4F8:        D0 14         BNE CODE_03E50E           ;
CODE_03E4FA:        BD 1A 02      LDA $021A,x               ;
CODE_03E4FD:        38            SEC                       ;
CODE_03E4FE:        ED 3F 07      SBC $073F                 ;
CODE_03E501:        8D AE 03      STA $03AE                 ;
CODE_03E504:        BD 38 02      LDA $0238,x               ;
CODE_03E507:        8D B9 03      STA $03B9                 ;
CODE_03E50A:        22 55 D0 05   JSL CODE_05D055           ;
CODE_03E50E:        E8            INX                       ;
CODE_03E50F:        E0 09         CPX #$09                  ;
CODE_03E511:        D0 DB         BNE CODE_03E4EE           ;
CODE_03E513:        FA            PLX                       ;
CODE_03E514:        A4 02         LDY $02                   ;
CODE_03E516:        A9 00         LDA #$00                  ;
CODE_03E518:        91 06         STA ($06),y               ;
CODE_03E51A:        4C 73 93      JMP CODE_039373           ;

DATA_03E51D:        db $F9,$07,$FF,$00,$18,$22,$50,$68
                    db $90

CODE_03E526:        A4 04         LDY $04                   ;
CODE_03E528:        C0 06         CPY #$06                  ;
CODE_03E52A:        90 04         BCC CODE_03E530           ;
CODE_03E52C:        C0 0A         CPY #$0A                  ;
CODE_03E52E:        90 01         BCC CODE_03E531           ;
CODE_03E530:        60            RTS                       ;

CODE_03E531:        C9 28         CMP #$28                  ;
CODE_03E533:        F0 04         BEQ CODE_03E539           ;
CODE_03E535:        C9 29         CMP #$29                  ;
CODE_03E537:        D0 45         BNE CODE_03E57E           ;
CODE_03E539:        A5 0F         LDA $0F                   ;
CODE_03E53B:        C9 05         CMP #$05                  ;
CODE_03E53D:        F0 4E         BEQ CODE_03E58D           ;
CODE_03E53F:        A9 01         LDA #$01                  ;
CODE_03E541:        8D 02 02      STA $0202                 ;
CODE_03E544:        EE 23 07      INC $0723                 ;
CODE_03E547:        A5 0F         LDA $0F                   ;
CODE_03E549:        C9 04         CMP #$04                  ;
CODE_03E54B:        F0 2A         BEQ CODE_03E577           ;
CODE_03E54D:        A9 33         LDA #$33                  ;
CODE_03E54F:        20 85 A8      JSR CODE_03A885           ;
CODE_03E552:        22 EE 8C 04   JSL CODE_048CEE           ;
CODE_03E556:        A9 F0         LDA #$F0                  ;\Music Fade Out
CODE_03E558:        8D 02 16      STA $1602                 ;/
CODE_03E55B:        A9 46         LDA #$46                  ;\Flagpole sound
CODE_03E55D:        8D 00 16      STA $1600                 ;/
CODE_03E560:        4A            LSR A                     ;
CODE_03E561:        8D 13 07      STA $0713                 ;
CODE_03E564:        A2 04         LDX #$04                  ;
CODE_03E566:        AD 37 02      LDA $0237                 ;
CODE_03E569:        8D 0F 07      STA $070F                 ;
CODE_03E56C:        DD 21 E5      CMP $E521,x               ;
CODE_03E56F:        B0 03         BCS CODE_03E574           ;
CODE_03E571:        CA            DEX                       ;
CODE_03E572:        D0 F8         BNE CODE_03E56C           ;
CODE_03E574:        8E 0F 01      STX $010F                 ;
CODE_03E577:        A9 04         LDA #$04                  ;
CODE_03E579:        85 0F         STA $0F                   ;
CODE_03E57B:        4C 8D E5      JMP CODE_03E58D           ;

CODE_03E57E:        C9 2A         CMP #$2A                  ;
CODE_03E580:        D0 0B         BNE CODE_03E58D           ;
CODE_03E582:        AD 37 02      LDA $0237                 ;\
CODE_03E585:        C9 20         CMP #$20                  ; |If player Y-position is not above the flagpole
CODE_03E587:        B0 04         BCS CODE_03E58D           ; |
CODE_03E589:        A9 01         LDA #$01                  ;\|Player action: climb a vine/slide down the flagpole
CODE_03E58B:        85 0F         STA $0F                   ;/
CODE_03E58D:        A9 03         LDA #$03                  ;\Player state: slide down the flagpole
CODE_03E58F:        85 28         STA $28                   ;/
CODE_03E591:        A9 00         LDA #$00                  ;\Store zero to player X-speed
CODE_03E593:        85 5D         STA $5D                   ; |
CODE_03E595:        8D 05 07      STA $0705                 ;/Full left movement, minimal right movement flag?
CODE_03E598:        AD 98 03      LDA $0398                 ;
CODE_03E59B:        F0 2F         BEQ CODE_03E5CC           ;
CODE_03E59D:        AD AE 03      LDA $03AE                 ;
CODE_03E5A0:        10 2A         BPL CODE_03E5CC           ;
CODE_03E5A2:        C9 F8         CMP #$F8                  ;
CODE_03E5A4:        90 26         BCC CODE_03E5CC           ;
CODE_03E5A6:        AD 82 00      LDA $0082                 ;
CODE_03E5A9:        85 E5         STA $E5                   ;
CODE_03E5AB:        AD 23 02      LDA $0223                 ;
CODE_03E5AE:        85 E4         STA $E4                   ;
CODE_03E5B0:        C2 20         REP #$20                  ;
CODE_03E5B2:        A5 E4         LDA $E4                   ;
CODE_03E5B4:        18            CLC                       ;
CODE_03E5B5:        69 07 00      ADC #$0007                ;
CODE_03E5B8:        85 E4         STA $E4                   ;
CODE_03E5BA:        E2 20         SEP #$20                  ;
CODE_03E5BC:        A5 E4         LDA $E4                   ;
CODE_03E5BE:        8D 19 02      STA $0219                 ;
CODE_03E5C1:        A5 E5         LDA $E5                   ;
CODE_03E5C3:        85 78         STA $78                   ;
CODE_03E5C5:        A9 02         LDA #$02                  ;
CODE_03E5C7:        8D 02 02      STA $0202                 ;
CODE_03E5CA:        80 2D         BRA CODE_03E5F9           ;

CODE_03E5CC:        AD 19 02      LDA $0219                 ;
CODE_03E5CF:        38            SEC                       ;
CODE_03E5D0:        ED 1C 07      SBC $071C                 ;
CODE_03E5D3:        C9 10         CMP #$10                  ;
CODE_03E5D5:        B0 05         BCS CODE_03E5DC           ;
CODE_03E5D7:        A9 02         LDA #$02                  ;
CODE_03E5D9:        8D 02 02      STA $0202                 ;
CODE_03E5DC:        AC 02 02      LDY $0202                 ;
CODE_03E5DF:        A5 06         LDA $06                   ;
CODE_03E5E1:        0A            ASL A                     ;
CODE_03E5E2:        0A            ASL A                     ;
CODE_03E5E3:        0A            ASL A                     ;
CODE_03E5E4:        0A            ASL A                     ;
CODE_03E5E5:        18            CLC                       ;
CODE_03E5E6:        79 1C E5      ADC $E51C,y               ;
CODE_03E5E9:        8D 19 02      STA $0219                 ;
CODE_03E5EC:        A5 06         LDA $06                   ;
CODE_03E5EE:        D0 09         BNE CODE_03E5F9           ;
CODE_03E5F0:        AD 1B 07      LDA $071B                 ;
CODE_03E5F3:        18            CLC                       ;
CODE_03E5F4:        79 1E E5      ADC $E51E,y               ;
CODE_03E5F7:        85 78         STA $78                   ;
CODE_03E5F9:        60            RTS                       ;

CODE_03E5FA:        C9 62         CMP #$62                  ;
CODE_03E5FC:        F0 02         BEQ CODE_03E600           ;
CODE_03E5FE:        C9 63         CMP #$63                  ;
CODE_03E600:        60            RTS                       ;

CODE_03E601:        20 1A E6      JSR CODE_03E61A           ;
CODE_03E604:        90 13         BCC CODE_03E619           ;
CODE_03E606:        A9 70         LDA #$70                  ;
CODE_03E608:        8D 09 07      STA $0709                 ;
CODE_03E60B:        A9 F9         LDA #$F9                  ;\
CODE_03E60D:        8D DB 06      STA $06DB                 ;/Springboard launch force
CODE_03E610:        A9 03         LDA #$03                  ;
CODE_03E612:        8D 8E 07      STA $078E                 ;
CODE_03E615:        4A            LSR A                     ;
CODE_03E616:        8D 0E 07      STA $070E                 ;
CODE_03E619:        60            RTS                       ;

CODE_03E61A:        C9 6F         CMP #$6F                  ;
CODE_03E61C:        F0 05         BEQ CODE_03E623           ;
CODE_03E61E:        C9 70         CMP #$70                  ;
CODE_03E620:        18            CLC                       ;
CODE_03E621:        D0 01         BNE CODE_03E624           ;
CODE_03E623:        38            SEC                       ;
CODE_03E624:        60            RTS                       ;

CODE_03E625:        A5 0B         LDA $0B                   ;
CODE_03E627:        29 04         AND #$04                  ;
CODE_03E629:        F0 F9         BEQ CODE_03E624           ;
CODE_03E62B:        A5 00         LDA $00                   ;
CODE_03E62D:        C9 15         CMP #$15                  ;
CODE_03E62F:        D0 F3         BNE CODE_03E624           ;
CODE_03E631:        A5 01         LDA $01                   ;
CODE_03E633:        C9 14         CMP #$14                  ;
CODE_03E635:        D0 ED         BNE CODE_03E624           ;
CODE_03E637:        A9 30         LDA #$30                  ;
CODE_03E639:        8D DE 06      STA $06DE                 ;
CODE_03E63C:        A9 03         LDA #$03                  ;
CODE_03E63E:        85 0F         STA $0F                   ;
CODE_03E640:        A9 04         LDA #$04                  ;
CODE_03E642:        8D AE 07      STA $07AE                 ;
CODE_03E645:        9C AF 07      STZ $07AF                 ;
CODE_03E648:        A9 00         LDA #$00                  ;
CODE_03E64A:        8D 56 02      STA $0256                 ;
CODE_03E64D:        AD D6 06      LDA $06D6                 ;
CODE_03E650:        F0 5D         BEQ CODE_03E6AF           ;
CODE_03E652:        C9 04         CMP #$04                  ;
CODE_03E654:        B0 12         BCS CODE_03E668           ;
CODE_03E656:        A2 04         LDX #$04                  ;
CODE_03E658:        AD 5F 07      LDA $075F                 ;
CODE_03E65B:        F0 07         BEQ CODE_03E664           ;
CODE_03E65D:        E8            INX                       ;
CODE_03E65E:        A5 5C         LDA $5C                   ;
CODE_03E660:        3A            DEC A                     ;
CODE_03E661:        D0 01         BNE CODE_03E664           ;
CODE_03E663:        E8            INX                       ;
CODE_03E664:        8A            TXA                       ;
CODE_03E665:        8D D6 06      STA $06D6                 ;
CODE_03E668:        29 03         AND #$03                  ;
CODE_03E66A:        0A            ASL A                     ;
CODE_03E66B:        0A            ASL A                     ;
CODE_03E66C:        AA            TAX                       ;
CODE_03E66D:        AD 19 02      LDA $0219                 ;
CODE_03E670:        C9 60         CMP #$60                  ;
CODE_03E672:        90 06         BCC CODE_03E67A           ;
CODE_03E674:        E8            INX                       ;
CODE_03E675:        C9 A0         CMP #$A0                  ;
CODE_03E677:        90 01         BCC CODE_03E67A           ;
CODE_03E679:        E8            INX                       ;
CODE_03E67A:        BC D8 90      LDY $90D8,x               ;
CODE_03E67D:        88            DEY                       ;
CODE_03E67E:        8C 5F 07      STY $075F                 ;
CODE_03E681:        BB            TYX                       ;
CODE_03E682:        BF 1C C1 04   LDA $04C11C,x             ;
CODE_03E686:        AA            TAX                       ;
CODE_03E687:        BF 24 C1 04   LDA $04C124,x             ;
CODE_03E68B:        8D 50 07      STA $0750                 ;
CODE_03E68E:        A9 80         LDA #$80                  ;
CODE_03E690:        8D 02 16      STA $1602                 ;
CODE_03E693:        A9 00         LDA #$00                  ;
CODE_03E695:        8D 51 07      STA $0751                 ;
CODE_03E698:        8D 60 07      STA $0760                 ;
CODE_03E69B:        8D 5C 07      STA $075C                 ;
CODE_03E69E:        8D 52 07      STA $0752                 ;
CODE_03E6A1:        EE 5D 07      INC $075D                 ;Enable hidden 1-up flag
CODE_03E6A4:        EE 57 07      INC $0757                 ;
CODE_03E6A7:        A9 F3         LDA #$F3                  ;
CODE_03E6A9:        8D 02 16      STA $1602                 ;
CODE_03E6AC:        8D 1A 0E      STA $0E1A                 ;
CODE_03E6AF:        A9 04         LDA #$04                  ;\
CODE_03E6B1:        8D 00 16      STA $1600                 ;/Enter pipe/hurt sound
CODE_03E6B4:        60            RTS                       ;

CODE_03E6B5:        A9 00         LDA #$00                  ;
CODE_03E6B7:        A4 5D         LDY $5D                   ;
CODE_03E6B9:        A6 00         LDX $00                   ;
CODE_03E6BB:        CA            DEX                       ;
CODE_03E6BC:        D0 0A         BNE CODE_03E6C8           ;
CODE_03E6BE:        E8            INX                       ;
CODE_03E6BF:        C0 00         CPY #$00                  ;
CODE_03E6C1:        30 2A         BMI CODE_03E6ED           ;
CODE_03E6C3:        A9 FF         LDA #$FF                  ;
CODE_03E6C5:        4C D0 E6      JMP CODE_03E6D0           ;

CODE_03E6C8:        A2 02         LDX #$02                  ;
CODE_03E6CA:        C0 01         CPY #$01                  ;
CODE_03E6CC:        10 1F         BPL CODE_03E6ED           ;
CODE_03E6CE:        A9 01         LDA #$01                  ;
CODE_03E6D0:        A0 10         LDY #$10                  ;
CODE_03E6D2:        8C 8D 07      STY $078D                 ;
CODE_03E6D5:        A0 00         LDY #$00                  ;
CODE_03E6D7:        84 5D         STY $5D                   ;
CODE_03E6D9:        C9 00         CMP #$00                  ;
CODE_03E6DB:        10 01         BPL CODE_03E6DE           ;
CODE_03E6DD:        88            DEY                       ;
CODE_03E6DE:        84 00         STY $00                   ;
CODE_03E6E0:        18            CLC                       ;
CODE_03E6E1:        6D 19 02      ADC $0219                 ;
CODE_03E6E4:        8D 19 02      STA $0219                 ;
CODE_03E6E7:        A5 78         LDA $78                   ;
CODE_03E6E9:        65 00         ADC $00                   ;
CODE_03E6EB:        85 78         STA $78                   ;
CODE_03E6ED:        8A            TXA                       ;
CODE_03E6EE:        49 FF         EOR #$FF                  ;
CODE_03E6F0:        2D 80 04      AND $0480                 ;
CODE_03E6F3:        8D 80 04      STA $0480                 ;
CODE_03E6F6:        60            RTS                       ;

DATA_03E6F7:        db $14,$64,$8C,$FC

CODE_03E6FB:        20 1D E7      JSR CODE_03E71D           ;
CODE_03E6FE:        DD F7 E6      CMP $E6F7,x               ;
CODE_03E701:        60            RTS                       ;

DATA_03E702:        db $28,$77,$8E,$FE

CODE_03E706:        20 1D E7      JSR CODE_03E71D           ;0 S:01FF P:EnvMXdIzc HC:1062 VC:000 FC:00 I:00
CODE_03E709:        DD 02 E7      CMP $E702,x               ;0 S:01FF P:EnvMXdIzc HC:1078 VC:000 FC:00 I:00
CODE_03E70C:        60            RTS                       ;0 S:01FF P:EnvMXdIzc HC:1094 VC:000 FC:00 I:00

CODE_03E70D:        C9 E9         CMP #$E9                  ;
CODE_03E70F:        F0 06         BEQ CODE_03E717           ;
CODE_03E711:        C9 EA         CMP #$EA                  ;
CODE_03E713:        F0 02         BEQ CODE_03E717           ;
CODE_03E715:        18            CLC                       ;
CODE_03E716:        60            RTS                       ;

CODE_03E717:        A9 01         LDA #$01                  ;\
CODE_03E719:        8D 03 16      STA $1603                 ;/Coin sound
CODE_03E71C:        60            RTS                       ;Return

CODE_03E71D:        A8            TAY                       ;
CODE_03E71E:        29 C0         AND #$C0                  ;
CODE_03E720:        0A            ASL A                     ;
CODE_03E721:        2A            ROL A                     ;
CODE_03E722:        2A            ROL A                     ;
CODE_03E723:        AA            TAX                       ;
CODE_03E724:        98            TYA                       ;
CODE_03E725:        60            RTS                       ;

DATA_03E726:        db $01,$01,$02,$02,$02,$05,$10,$F0

CODE_03E72E:        B5 29         LDA $29,x                 ;
CODE_03E730:        29 20         AND #$20                  ;
CODE_03E732:        D0 F1         BNE CODE_03E725           ;
CODE_03E734:        20 D8 E8      JSR CODE_03E8D8           ;
CODE_03E737:        90 EC         BCC CODE_03E725           ;
CODE_03E739:        B4 1C         LDY $1C,x                 ;
CODE_03E73B:        C0 12         CPY #$12                  ;
CODE_03E73D:        D0 07         BNE CODE_03E746           ;
CODE_03E73F:        BD 38 02      LDA $0238,x               ;
CODE_03E742:        C9 25         CMP #$25                  ;
CODE_03E744:        90 DF         BCC CODE_03E725           ;
CODE_03E746:        C0 0E         CPY #$0E                  ;
CODE_03E748:        D0 03         BNE CODE_03E74D           ;
CODE_03E74A:        4C E1 E8      JMP CODE_03E8E1           ;

CODE_03E74D:        C0 05         CPY #$05                  ;
CODE_03E74F:        D0 03         BNE CODE_03E754           ;
CODE_03E751:        4C 03 E9      JMP CODE_03E903           ;

CODE_03E754:        C0 12         CPY #$12                  ;
CODE_03E756:        F0 08         BEQ CODE_03E760           ;
CODE_03E758:        C0 2E         CPY #$2E                  ;
CODE_03E75A:        F0 04         BEQ CODE_03E760           ;
CODE_03E75C:        C0 07         CPY #$07                  ;
CODE_03E75E:        B0 75         BCS CODE_03E7D5           ;
CODE_03E760:        20 2C E9      JSR CODE_03E92C           ;
CODE_03E763:        D0 03         BNE CODE_03E768           ;
CODE_03E765:        4C 51 E8      JMP CODE_03E851           ;

CODE_03E768:        20 33 E9      JSR CODE_03E933           ;
CODE_03E76B:        F0 F8         BEQ CODE_03E765           ;
CODE_03E76D:        C9 27         CMP #$27                  ;
CODE_03E76F:        D0 65         BNE CODE_03E7D6           ;
CODE_03E771:        A4 02         LDY $02                   ;
CODE_03E773:        A9 00         LDA #$00                  ;
CODE_03E775:        91 06         STA ($06),y               ;
CODE_03E777:        B5 1C         LDA $1C,x                 ;
CODE_03E779:        C9 15         CMP #$15                  ;
CODE_03E77B:        B0 0C         BCS CODE_03E789           ;
CODE_03E77D:        C9 06         CMP #$06                  ;
CODE_03E77F:        D0 03         BNE CODE_03E784           ;
CODE_03E781:        20 0C E9      JSR CODE_03E90C           ;
CODE_03E784:        A9 01         LDA #$01                  ;
CODE_03E786:        20 7E E0      JSR CODE_03E07E           ;
CODE_03E789:        C9 09         CMP #$09                  ;
CODE_03E78B:        90 10         BCC CODE_03E79D           ;
CODE_03E78D:        C9 11         CMP #$11                  ;
CODE_03E78F:        B0 0C         BCS CODE_03E79D           ;
CODE_03E791:        C9 0A         CMP #$0A                  ;
CODE_03E793:        90 04         BCC CODE_03E799           ;
CODE_03E795:        C9 0D         CMP #$0D                  ;
CODE_03E797:        90 04         BCC CODE_03E79D           ;
CODE_03E799:        29 01         AND #$01                  ;
CODE_03E79B:        95 1C         STA $1C,x                 ;
CODE_03E79D:        B5 29         LDA $29,x                 ;
CODE_03E79F:        29 F0         AND #$F0                  ;
CODE_03E7A1:        09 02         ORA #$02                  ;
CODE_03E7A3:        95 29         STA $29,x                 ;
CODE_03E7A5:        DE 38 02      DEC $0238,x               ;
CODE_03E7A8:        DE 38 02      DEC $0238,x               ;
CODE_03E7AB:        B5 1C         LDA $1C,x                 ;
CODE_03E7AD:        C9 07         CMP #$07                  ;
CODE_03E7AF:        F0 06         BEQ CODE_03E7B7           ;
CODE_03E7B1:        A9 FD         LDA #$FD                  ;
CODE_03E7B3:        A4 5C         LDY $5C                   ;
CODE_03E7B5:        D0 02         BNE CODE_03E7B9           ;
CODE_03E7B7:        A9 FF         LDA #$FF                  ;
CODE_03E7B9:        95 A1         STA $A1,x                 ;
CODE_03E7BB:        A0 01         LDY #$01                  ;
CODE_03E7BD:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03E7C0:        10 01         BPL CODE_03E7C3           ;
CODE_03E7C2:        C8            INY                       ;
CODE_03E7C3:        B5 1C         LDA $1C,x                 ;
CODE_03E7C5:        C9 33         CMP #$33                  ;
CODE_03E7C7:        F0 06         BEQ CODE_03E7CF           ;
CODE_03E7C9:        C9 08         CMP #$08                  ;
CODE_03E7CB:        F0 02         BEQ CODE_03E7CF           ;
CODE_03E7CD:        94 47         STY $47,x                 ;
CODE_03E7CF:        88            DEY                       ;
CODE_03E7D0:        B9 2C E7      LDA $E72C,y               ;
CODE_03E7D3:        95 5E         STA $5E,x                 ;
CODE_03E7D5:        60            RTS                       ;

CODE_03E7D6:        A5 04         LDA $04                   ;
CODE_03E7D8:        38            SEC                       ;
CODE_03E7D9:        E9 08         SBC #$08                  ;
CODE_03E7DB:        C9 05         CMP #$05                  ;
CODE_03E7DD:        B0 72         BCS CODE_03E851           ;
CODE_03E7DF:        B5 29         LDA $29,x                 ;
CODE_03E7E1:        29 40         AND #$40                  ;
CODE_03E7E3:        D0 57         BNE CODE_03E83C           ;
CODE_03E7E5:        B5 29         LDA $29,x                 ;
CODE_03E7E7:        0A            ASL A                     ;
CODE_03E7E8:        90 03         BCC CODE_03E7ED           ;
CODE_03E7EA:        4C 6D E8      JMP CODE_03E86D           ;

CODE_03E7ED:        B5 29         LDA $29,x                 ;
CODE_03E7EF:        F0 F9         BEQ CODE_03E7EA           ;
CODE_03E7F1:        C9 05         CMP #$05                  ;
CODE_03E7F3:        F0 1F         BEQ CODE_03E814           ;
CODE_03E7F5:        C9 03         CMP #$03                  ;
CODE_03E7F7:        B0 1A         BCS CODE_03E813           ;
CODE_03E7F9:        B5 29         LDA $29,x                 ;
CODE_03E7FB:        C9 02         CMP #$02                  ;
CODE_03E7FD:        D0 15         BNE CODE_03E814           ;
CODE_03E7FF:        A9 10         LDA #$10                  ;
CODE_03E801:        B4 1C         LDY $1C,x                 ;
CODE_03E803:        C0 12         CPY #$12                  ;
CODE_03E805:        D0 02         BNE CODE_03E809           ;
CODE_03E807:        A9 00         LDA #$00                  ;
CODE_03E809:        9D A2 07      STA $07A2,x               ;
CODE_03E80C:        A9 03         LDA #$03                  ;
CODE_03E80E:        95 29         STA $29,x                 ;
CODE_03E810:        20 CA E8      JSR CODE_03E8CA           ;
CODE_03E813:        60            RTS                       ;

CODE_03E814:        B5 1C         LDA $1C,x                 ;
CODE_03E816:        C9 06         CMP #$06                  ;
CODE_03E818:        F0 22         BEQ CODE_03E83C           ;
CODE_03E81A:        C9 12         CMP #$12                  ;
CODE_03E81C:        D0 0E         BNE CODE_03E82C           ;
CODE_03E81E:        A9 01         LDA #$01                  ;
CODE_03E820:        95 47         STA $47,x                 ;
CODE_03E822:        A9 08         LDA #$08                  ;
CODE_03E824:        95 5E         STA $5E,x                 ;
CODE_03E826:        A5 09         LDA $09                   ;
CODE_03E828:        29 07         AND #$07                  ;
CODE_03E82A:        F0 10         BEQ CODE_03E83C           ;
CODE_03E82C:        A0 01         LDY #$01                  ;
CODE_03E82E:        20 BC E8      JSR CODE_03E8BC           ;
CODE_03E831:        10 01         BPL CODE_03E834           ;
CODE_03E833:        C8            INY                       ;
CODE_03E834:        98            TYA                       ;
CODE_03E835:        D5 47         CMP $47,x                 ;
CODE_03E837:        D0 03         BNE CODE_03E83C           ;
CODE_03E839:        20 94 E8      JSR CODE_03E894           ;
CODE_03E83C:        20 CA E8      JSR CODE_03E8CA           ;
CODE_03E83F:        B5 29         LDA $29,x                 ;
CODE_03E841:        29 80         AND #$80                  ;
CODE_03E843:        D0 05         BNE CODE_03E84A           ;
CODE_03E845:        A9 00         LDA #$00                  ;
CODE_03E847:        95 29         STA $29,x                 ;
CODE_03E849:        60            RTS                       ;

CODE_03E84A:        B5 29         LDA $29,x                 ;
CODE_03E84C:        29 BF         AND #$BF                  ;
CODE_03E84E:        95 29         STA $29,x                 ;
CODE_03E850:        60            RTS                       ;

CODE_03E851:        B5 1C         LDA $1C,x                 ;
CODE_03E853:        C9 03         CMP #$03                  ;
CODE_03E855:        D0 04         BNE CODE_03E85B           ;
CODE_03E857:        B5 29         LDA $29,x                 ;
CODE_03E859:        F0 39         BEQ CODE_03E894           ;
CODE_03E85B:        B5 29         LDA $29,x                 ;
CODE_03E85D:        A8            TAY                       ;
CODE_03E85E:        0A            ASL A                     ;
CODE_03E85F:        90 07         BCC CODE_03E868           ;
CODE_03E861:        B5 29         LDA $29,x                 ;
CODE_03E863:        09 40         ORA #$40                  ;
CODE_03E865:        4C 6B E8      JMP CODE_03E86B           ;

CODE_03E868:        B9 26 E7      LDA $E726,y               ;
CODE_03E86B:        95 29         STA $29,x                 ;
CODE_03E86D:        BD 38 02      LDA $0238,x               ;
CODE_03E870:        C9 20         CMP #$20                  ;
CODE_03E872:        90 1F         BCC CODE_03E893           ;
CODE_03E874:        A0 16         LDY #$16                  ;
CODE_03E876:        A9 02         LDA #$02                  ;
CODE_03E878:        85 EB         STA $EB                   ;
CODE_03E87A:        A5 EB         LDA $EB                   ;
CODE_03E87C:        D5 47         CMP $47,x                 ;
CODE_03E87E:        D0 0C         BNE CODE_03E88C           ;
CODE_03E880:        A9 01         LDA #$01                  ;
CODE_03E882:        20 1A EB      JSR CODE_03EB1A           ;
CODE_03E885:        F0 05         BEQ CODE_03E88C           ;
CODE_03E887:        20 33 E9      JSR CODE_03E933           ;
CODE_03E88A:        D0 08         BNE CODE_03E894           ;
CODE_03E88C:        C6 EB         DEC $EB                   ;
CODE_03E88E:        C8            INY                       ;
CODE_03E88F:        C0 18         CPY #$18                  ;
CODE_03E891:        90 E7         BCC CODE_03E87A           ;
CODE_03E893:        60            RTS                       ;

CODE_03E894:        E0 09         CPX #$09                  ;
CODE_03E896:        F0 12         BEQ CODE_03E8AA           ;
CODE_03E898:        B5 29         LDA $29,x                 ;
CODE_03E89A:        0A            ASL A                     ;
CODE_03E89B:        90 0D         BCC CODE_03E8AA           ;
CODE_03E89D:        E0 09         CPX #$09                  ;
CODE_03E89F:        F0 09         BEQ CODE_03E8AA           ;
CODE_03E8A1:        A9 01         LDA #$01                  ;\Hit hard block sound
CODE_03E8A3:        8D 00 16      STA $1600                 ;/
CODE_03E8A6:        22 B1 D2 05   JSL CODE_05D2B1           ;
CODE_03E8AA:        B5 1C         LDA $1C,x                 ;
CODE_03E8AC:        C9 05         CMP #$05                  ;
CODE_03E8AE:        D0 09         BNE CODE_03E8B9           ;
CODE_03E8B0:        A9 00         LDA #$00                  ;
CODE_03E8B2:        85 00         STA $00                   ;
CODE_03E8B4:        A0 FA         LDY #$FA                  ;
CODE_03E8B6:        4C C7 CE      JMP CODE_03CEC7           ;

CODE_03E8B9:        4C D8 E1      JMP CODE_03E1D8           ;

CODE_03E8BC:        BD 1A 02      LDA $021A,x               ;SUB_HORZ_POS. Distance between Player and the sprite gets stored in $00
CODE_03E8BF:        38            SEC                       ;
CODE_03E8C0:        ED 19 02      SBC $0219                 ;
CODE_03E8C3:        85 00         STA $00                   ;
CODE_03E8C5:        B5 79         LDA $79,x                 ;
CODE_03E8C7:        E5 78         SBC $78                   ;
CODE_03E8C9:        60            RTS                       ;

CODE_03E8CA:        20 26 C7      JSR CODE_03C726           ;
CODE_03E8CD:        BD 38 02      LDA $0238,x               ;
CODE_03E8D0:        29 F0         AND #$F0                  ;
CODE_03E8D2:        09 08         ORA #$08                  ;
CODE_03E8D4:        9D 38 02      STA $0238,x               ;
CODE_03E8D7:        60            RTS                       ;

CODE_03E8D8:        BD 38 02      LDA $0238,x               ;
CODE_03E8DB:        18            CLC                       ;
CODE_03E8DC:        69 3E         ADC #$3E                  ;
CODE_03E8DE:        C9 44         CMP #$44                  ;
CODE_03E8E0:        60            RTS                       ;

CODE_03E8E1:        20 D8 E8      JSR CODE_03E8D8           ;
CODE_03E8E4:        90 1A         BCC CODE_03E900           ;
CODE_03E8E6:        B5 A1         LDA $A1,x                 ;
CODE_03E8E8:        18            CLC                       ;
CODE_03E8E9:        69 02         ADC #$02                  ;
CODE_03E8EB:        C9 03         CMP #$03                  ;
CODE_03E8ED:        90 11         BCC CODE_03E900           ;
CODE_03E8EF:        20 2C E9      JSR CODE_03E92C           ;
CODE_03E8F2:        F0 0C         BEQ CODE_03E900           ;
CODE_03E8F4:        20 33 E9      JSR CODE_03E933           ;
CODE_03E8F7:        F0 07         BEQ CODE_03E900           ;
CODE_03E8F9:        20 CA E8      JSR CODE_03E8CA           ;
CODE_03E8FC:        A9 FD         LDA #$FD                  ;
CODE_03E8FE:        95 A1         STA $A1,x                 ;
CODE_03E900:        4C 6D E8      JMP CODE_03E86D           ;

CODE_03E903:        20 2C E9      JSR CODE_03E92C           ;
CODE_03E906:        F0 1D         BEQ CODE_03E925           ;
CODE_03E908:        C9 27         CMP #$27                  ;
CODE_03E90A:        D0 08         BNE CODE_03E914           ;
CODE_03E90C:        20 81 DD      JSR CODE_03DD81           ;
CODE_03E90F:        A9 FC         LDA #$FC                  ;
CODE_03E911:        95 A1         STA $A1,x                 ;
CODE_03E913:        60            RTS                       ;

CODE_03E914:        BD 92 07      LDA $0792,x               ;
CODE_03E917:        D0 0C         BNE CODE_03E925           ;
CODE_03E919:        B5 29         LDA $29,x                 ;
CODE_03E91B:        29 88         AND #$88                  ;
CODE_03E91D:        95 29         STA $29,x                 ;
CODE_03E91F:        20 CA E8      JSR CODE_03E8CA           ;
CODE_03E922:        4C 6D E8      JMP CODE_03E86D           ;

CODE_03E925:        B5 29         LDA $29,x                 ;
CODE_03E927:        09 01         ORA #$01                  ;
CODE_03E929:        95 29         STA $29,x                 ;
CODE_03E92B:        60            RTS                       ;

CODE_03E92C:        A9 00         LDA #$00                  ;
CODE_03E92E:        A0 15         LDY #$15                  ;
CODE_03E930:        4C 1A EB      JMP CODE_03EB1A           ;

CODE_03E933:        C9 2A         CMP #$2A                  ;
CODE_03E935:        F0 0E         BEQ CODE_03E945           ;
CODE_03E937:        C9 E9         CMP #$E9                  ;
CODE_03E939:        F0 0A         BEQ CODE_03E945           ;
CODE_03E93B:        C9 EA         CMP #$EA                  ;
CODE_03E93D:        F0 06         BEQ CODE_03E945           ;
CODE_03E93F:        C9 62         CMP #$62                  ;
CODE_03E941:        F0 02         BEQ CODE_03E945           ;
CODE_03E943:        C9 63         CMP #$63                  ;
CODE_03E945:        60            RTS                       ;

CODE_03E946:        BD 42 02      LDA $0242,x               ;
CODE_03E949:        C9 18         CMP #$18                  ;
CODE_03E94B:        90 25         BCC CODE_03E972           ;
CODE_03E94D:        20 2E EB      JSR CODE_03EB2E           ;
CODE_03E950:        F0 20         BEQ CODE_03E972           ;
CODE_03E952:        20 33 E9      JSR CODE_03E933           ;
CODE_03E955:        F0 1B         BEQ CODE_03E972           ;
CODE_03E957:        B5 AB         LDA $AB,x                 ;
CODE_03E959:        30 1D         BMI CODE_03E978           ;
CODE_03E95B:        BD 0D 02      LDA $020D,x               ;
CODE_03E95E:        D0 18         BNE CODE_03E978           ;
CODE_03E960:        A9 FD         LDA #$FD                  ;
CODE_03E962:        95 AB         STA $AB,x                 ;
CODE_03E964:        A9 01         LDA #$01                  ;
CODE_03E966:        9D 0D 02      STA $020D,x               ;
CODE_03E969:        BD 42 02      LDA $0242,x               ;
CODE_03E96C:        29 F8         AND #$F8                  ;
CODE_03E96E:        9D 42 02      STA $0242,x               ;
CODE_03E971:        60            RTS                       ;

CODE_03E972:        A9 00         LDA #$00                  ;
CODE_03E974:        9D 0D 02      STA $020D,x               ;
CODE_03E977:        60            RTS                       ;

CODE_03E978:        A9 80         LDA #$80                  ;
CODE_03E97A:        95 33         STA $33,x                 ;
CODE_03E97C:        A9 01         LDA #$01                  ;\
CODE_03E97E:        8D 00 16      STA $1600                 ;/Hit hard block sound
CODE_03E981:        60            RTS                       ;

DATA_03E982:        db $02,$08

DATA_03E984:        db $0E,$20,$03,$14,$0D,$20,$02,$14
                    db $0E,$20,$02,$09,$0E,$15,$00,$00
                    db $18,$06,$00,$00,$20,$0D,$00,$00
                    db $30,$0D,$00,$00,$08,$08,$06,$04
                    db $0A,$0C,$03,$0E,$0D,$14,$04,$04
                    db $1C,$1C,$04,$04,$0C,$1C,$03,$07
                    db $0D,$16

CODE_03E9B6:        8A            TXA
CODE_03E9B7:        18            CLC                       ;
CODE_03E9B8:        69 0B         ADC #$0B                  ;
CODE_03E9BA:        AA            TAX                       ;
CODE_03E9BB:        A0 02         LDY #$02                  ;
CODE_03E9BD:        D0 07         BNE CODE_03E9C6           ;
CODE_03E9BF:        8A            TXA                       ;
CODE_03E9C0:        18            CLC                       ;
CODE_03E9C1:        69 0D         ADC #$0D                  ;
CODE_03E9C3:        AA            TAX                       ;
CODE_03E9C4:        A0 06         LDY #$06                  ;
CODE_03E9C6:        20 2D EA      JSR CODE_03EA2D           ;
CODE_03E9C9:        4C 6F EA      JMP CODE_03EA6F           ;

CODE_03E9CC:        A0 48         LDY #$48                  ;
CODE_03E9CE:        84 00         STY $00                   ;
CODE_03E9D0:        A0 44         LDY #$44                  ;
CODE_03E9D2:        4C DB E9      JMP CODE_03E9DB           ;

CODE_03E9D5:        A0 08         LDY #$08                  ;
CODE_03E9D7:        84 00         STY $00                   ;
CODE_03E9D9:        A0 04         LDY #$04                  ;
CODE_03E9DB:        BD 1A 02      LDA $021A,x               ;
CODE_03E9DE:        38            SEC                       ;
CODE_03E9DF:        ED 1C 07      SBC $071C                 ;
CODE_03E9E2:        85 01         STA $01                   ;
CODE_03E9E4:        B5 79         LDA $79,x                 ;
CODE_03E9E6:        ED 1A 07      SBC $071A                 ;
CODE_03E9E9:        30 06         BMI CODE_03E9F1           ;
CODE_03E9EB:        05 01         ORA $01                   ;
CODE_03E9ED:        F0 02         BEQ CODE_03E9F1           ;
CODE_03E9EF:        A4 00         LDY $00                   ;
CODE_03E9F1:        98            TYA                       ;
CODE_03E9F2:        2D D1 03      AND $03D1                 ;
CODE_03E9F5:        9D D9 03      STA $03D9,x               ;
CODE_03E9F8:        E0 09         CPX #$09                  ;
CODE_03E9FA:        F0 11         BEQ CODE_03EA0D           ;
CODE_03E9FC:        BD D9 03      LDA $03D9,x               ;
CODE_03E9FF:        D0 19         BNE CODE_03EA1A           ;
CODE_03EA01:        4C 0D EA      JMP CODE_03EA0D           ;

CODE_03EA04:        E8            INX                       ;
CODE_03EA05:        20 1E FE      JSR CODE_03FE1E           ;
CODE_03EA08:        CA            DEX                       ;
CODE_03EA09:        C9 FE         CMP #$FE                  ;
CODE_03EA0B:        B0 0D         BCS CODE_03EA1A           ;
CODE_03EA0D:        8A            TXA                       ;
CODE_03EA0E:        18            CLC                       ;
CODE_03EA0F:        69 01         ADC #$01                  ;
CODE_03EA11:        AA            TAX                       ;
CODE_03EA12:        A0 01         LDY #$01                  ;
CODE_03EA14:        20 2D EA      JSR CODE_03EA2D           ;
CODE_03EA17:        4C 6F EA      JMP CODE_03EA6F           ;

CODE_03EA1A:        8A            TXA                       ;
CODE_03EA1B:        0A            ASL A                     ;
CODE_03EA1C:        0A            ASL A                     ;
CODE_03EA1D:        A8            TAY                       ;
CODE_03EA1E:        A9 FF         LDA #$FF                  ;
CODE_03EA20:        99 A0 0F      STA $0FA0,y               ;
CODE_03EA23:        99 A1 0F      STA $0FA1,y               ;
CODE_03EA26:        99 A2 0F      STA $0FA2,y               ;
CODE_03EA29:        99 A3 0F      STA $0FA3,y               ;
CODE_03EA2C:        60            RTS                       ;

CODE_03EA2D:        86 00         STX $00                   ;
CODE_03EA2F:        B9 B8 03      LDA $03B8,y               ;
CODE_03EA32:        85 02         STA $02                   ;
CODE_03EA34:        B9 AD 03      LDA $03AD,y               ;
CODE_03EA37:        85 01         STA $01                   ;
CODE_03EA39:        8A            TXA                       ;
CODE_03EA3A:        0A            ASL A                     ;
CODE_03EA3B:        0A            ASL A                     ;
CODE_03EA3C:        48            PHA                       ;
CODE_03EA3D:        A8            TAY                       ;
CODE_03EA3E:        BD 8F 04      LDA $048F,x               ;
CODE_03EA41:        0A            ASL A                     ;
CODE_03EA42:        0A            ASL A                     ;
CODE_03EA43:        AA            TAX                       ;
CODE_03EA44:        A5 01         LDA $01                   ;
CODE_03EA46:        18            CLC                       ;
CODE_03EA47:        7D 82 E9      ADC $E982,x               ;
CODE_03EA4A:        99 9C 0F      STA $0F9C,y               ;
CODE_03EA4D:        A5 01         LDA $01                   ;
CODE_03EA4F:        18            CLC                       ;
CODE_03EA50:        7D 84 E9      ADC $E984,x               ;
CODE_03EA53:        99 9E 0F      STA $0F9E,y               ;
CODE_03EA56:        E8            INX                       ;
CODE_03EA57:        C8            INY                       ;
CODE_03EA58:        A5 02         LDA $02                   ;
CODE_03EA5A:        18            CLC                       ;
CODE_03EA5B:        7D 82 E9      ADC $E982,x               ;
CODE_03EA5E:        99 9C 0F      STA $0F9C,y               ;
CODE_03EA61:        A5 02         LDA $02                   ;
CODE_03EA63:        18            CLC                       ;
CODE_03EA64:        7D 84 E9      ADC $E984,x               ;
CODE_03EA67:        99 9E 0F      STA $0F9E,y               ;
CODE_03EA6A:        68            PLA                       ;
CODE_03EA6B:        A8            TAY                       ;
CODE_03EA6C:        A6 00         LDX $00                   ;
CODE_03EA6E:        60            RTS                       ;

CODE_03EA6F:        AD 1C 07      LDA $071C                 ;
CODE_03EA72:        18            CLC                       ;
CODE_03EA73:        69 80         ADC #$80                  ;
CODE_03EA75:        85 02         STA $02                   ;
CODE_03EA77:        AD 1A 07      LDA $071A                 ;
CODE_03EA7A:        69 00         ADC #$00                  ;
CODE_03EA7C:        85 01         STA $01                   ;
CODE_03EA7E:        BD 19 02      LDA $0219,x               ;
CODE_03EA81:        C5 02         CMP $02                   ;
CODE_03EA83:        B5 78         LDA $78,x                 ;
CODE_03EA85:        E5 01         SBC $01                   ;
CODE_03EA87:        90 15         BCC CODE_03EA9E           ;
CODE_03EA89:        B9 9E 0F      LDA $0F9E,y               ;
CODE_03EA8C:        30 0D         BMI CODE_03EA9B           ;
CODE_03EA8E:        A9 FF         LDA #$FF                  ;
CODE_03EA90:        BE 9C 0F      LDX $0F9C,y               ;
CODE_03EA93:        30 03         BMI CODE_03EA98           ;
CODE_03EA95:        99 9C 0F      STA $0F9C,y               ;
CODE_03EA98:        99 9E 0F      STA $0F9E,y               ;
CODE_03EA9B:        A6 9E         LDX $9E                   ;
CODE_03EA9D:        60            RTS                       ;

CODE_03EA9E:        B9 9C 0F      LDA $0F9C,y               ;
CODE_03EAA1:        10 11         BPL CODE_03EAB4           ;
CODE_03EAA3:        C9 A0         CMP #$A0                  ;
CODE_03EAA5:        90 0D         BCC CODE_03EAB4           ;
CODE_03EAA7:        A9 00         LDA #$00                  ;
CODE_03EAA9:        BE 9E 0F      LDX $0F9E,y               ;
CODE_03EAAC:        10 03         BPL CODE_03EAB1           ;
CODE_03EAAE:        99 9E 0F      STA $0F9E,y               ;
CODE_03EAB1:        99 9C 0F      STA $0F9C,y               ;
CODE_03EAB4:        A6 9E         LDX $9E                   ;
CODE_03EAB6:        60            RTS                       ;

CODE_03EAB7:        A2 00         LDX #$00                  ;
CODE_03EAB9:        84 06         STY $06                   ;
CODE_03EABB:        A9 01         LDA #$01                  ;
CODE_03EABD:        85 07         STA $07                   ;
CODE_03EABF:        B9 9C 0F      LDA $0F9C,y               ;
CODE_03EAC2:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EAC5:        B0 2A         BCS CODE_03EAF1           ;
CODE_03EAC7:        DD 9E 0F      CMP $0F9E,x               ;
CODE_03EACA:        90 12         BCC CODE_03EADE           ;
CODE_03EACC:        F0 42         BEQ CODE_03EB10           ;
CODE_03EACE:        B9 9E 0F      LDA $0F9E,y               ;
CODE_03EAD1:        D9 9C 0F      CMP $0F9C,y               ;
CODE_03EAD4:        90 3A         BCC CODE_03EB10           ;
CODE_03EAD6:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EAD9:        B0 35         BCS CODE_03EB10           ;
CODE_03EADB:        A4 06         LDY $06                   ;
CODE_03EADD:        60            RTS                       ;

CODE_03EADE:        BD 9E 0F      LDA $0F9E,x               ;
CODE_03EAE1:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EAE4:        90 2A         BCC CODE_03EB10           ;
CODE_03EAE6:        B9 9E 0F      LDA $0F9E,y               ;
CODE_03EAE9:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EAEC:        B0 22         BCS CODE_03EB10           ;
CODE_03EAEE:        A4 06         LDY $06                   ;
CODE_03EAF0:        60            RTS                       ;

CODE_03EAF1:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EAF4:        F0 1A         BEQ CODE_03EB10           ;
CODE_03EAF6:        DD 9E 0F      CMP $0F9E,x               ;
CODE_03EAF9:        90 15         BCC CODE_03EB10           ;
CODE_03EAFB:        F0 13         BEQ CODE_03EB10           ;
CODE_03EAFD:        D9 9E 0F      CMP $0F9E,y               ;
CODE_03EB00:        90 0A         BCC CODE_03EB0C           ;
CODE_03EB02:        F0 08         BEQ CODE_03EB0C           ;
CODE_03EB04:        B9 9E 0F      LDA $0F9E,y               ;
CODE_03EB07:        DD 9C 0F      CMP $0F9C,x               ;
CODE_03EB0A:        B0 04         BCS CODE_03EB10           ;
CODE_03EB0C:        18            CLC                       ;
CODE_03EB0D:        A4 06         LDY $06                   ;
CODE_03EB0F:        60            RTS                       ;

CODE_03EB10:        E8            INX                       ;
CODE_03EB11:        C8            INY                       ;
CODE_03EB12:        C6 07         DEC $07                   ;
CODE_03EB14:        10 A9         BPL CODE_03EABF           ;
CODE_03EB16:        38            SEC                       ;
CODE_03EB17:        A4 06         LDY $06                   ;
CODE_03EB19:        60            RTS                       ;

CODE_03EB1A:        48            PHA                       ;
CODE_03EB1B:        8A            TXA                       ;
CODE_03EB1C:        18            CLC                       ;
CODE_03EB1D:        69 01         ADC #$01                  ;
CODE_03EB1F:        AA            TAX                       ;
CODE_03EB20:        68            PLA                       ;
CODE_03EB21:        4C 37 EB      JMP CODE_03EB37           ;

CODE_03EB24:        8A            TXA                       ;
CODE_03EB25:        18            CLC                       ;
CODE_03EB26:        69 11         ADC #$11                  ;
CODE_03EB28:        AA            TAX                       ;
CODE_03EB29:        A0 1B         LDY #$1B                  ;
CODE_03EB2B:        4C 35 EB      JMP CODE_03EB35           ;

CODE_03EB2E:        A0 1A         LDY #$1A                  ;
CODE_03EB30:        8A            TXA                       ;
CODE_03EB31:        18            CLC                       ;
CODE_03EB32:        69 0B         ADC #$0B                  ;
CODE_03EB34:        AA            TAX                       ;
CODE_03EB35:        A9 00         LDA #$00                  ;
CODE_03EB37:        20 83 EB      JSR CODE_03EB83           ;
CODE_03EB3A:        A6 9E         LDX $9E                   ;
CODE_03EB3C:        C9 00         CMP #$00                  ;
CODE_03EB3E:        60            RTS                       ;

DATA_03EB3F:        db $00,$07,$0E            ; Mario<->block interaction "offset". Big Mario, Big swimming mario, Small mario

DATA_03EB42:        db $08,$03,$0C,$02,$02,$0D,$0D,$08
                    db $03,$0C,$02,$02,$0D,$0D,$08,$03
                    db $0C,$02,$02,$0D,$0D,$08,$00,$10
                    db $04,$14,$04,$04

DATA_03EB5E:        db $04,$20,$20,$08,$18,$08,$18,$02
                    db $20,$20,$08,$18,$08,$18,$12,$20
                    db $20,$18,$18,$18,$18,$18,$14,$14
                    db $06,$06,$08,$10

CODE_03EB7A:        C8            INY                       ;
CODE_03EB7B:        A9 00         LDA #$00                  ;
CODE_03EB7D:        80 02         BRA CODE_03EB81           ;

CODE_03EB7F:        A9 01         LDA #$01                  ;
CODE_03EB81:        A2 00         LDX #$00                  ;
CODE_03EB83:        48            PHA                       ;
CODE_03EB84:        84 04         STY $04                   ;
CODE_03EB86:        B9 42 EB      LDA $EB42,y               ;\
CODE_03EB89:        18            CLC                       ; |
CODE_03EB8A:        7D 19 02      ADC $0219,x               ; |X-position of Mario sprite
CODE_03EB8D:        85 05         STA $05                   ; |
CODE_03EB8F:        B5 78         LDA $78,x                 ; |Screen of player
CODE_03EB91:        69 00         ADC #$00                  ; | 
CODE_03EB93:        29 01         AND #$01                  ; |
CODE_03EB95:        4A            LSR A                     ; |
CODE_03EB96:        05 05         ORA $05                   ; |
CODE_03EB98:        6A            ROR A                     ; |
CODE_03EB99:        4A            LSR A                     ; |
CODE_03EB9A:        4A            LSR A                     ; |
CODE_03EB9B:        4A            LSR A                     ;/
CODE_03EB9C:        20 F6 AC      JSR CODE_03ACF6           ;put values in $06 for indirect pointer?
CODE_03EB9F:        A4 04         LDY $04                   ;
CODE_03EBA1:        BD 37 02      LDA $0237,x               ;\Y-position of Mario sprite
CODE_03EBA4:        18            CLC                       ; |
CODE_03EBA5:        79 5E EB      ADC $EB5E,y               ; |$7E0002 = (((MarioYpos+TableEB5E)&0xF0)-0x20)
CODE_03EBA8:        29 F0         AND #$F0                  ; |Is that 0x20 here to compensate for that statusbar area?
CODE_03EBAA:        38            SEC                       ; |
CODE_03EBAB:        E9 20         SBC #$20                  ; |
CODE_03EBAD:        85 02         STA $02                   ;/
CODE_03EBAF:        A8            TAY                       ;
CODE_03EBB0:        B1 06         LDA ($06),y               ;\Store block Mario is interacting with in $03
CODE_03EBB2:        85 03         STA $03                   ;/This indirect pointer points to the $0500 area. It contains
CODE_03EBB4:        A4 04         LDY $04                   ;the object layout of the current screen.
CODE_03EBB6:        68            PLA                       ;
CODE_03EBB7:        D0 06         BNE CODE_03EBBF           ;
CODE_03EBB9:        BD 37 02      LDA $0237,x               ;
CODE_03EBBC:        4C C2 EB      JMP CODE_03EBC2           ;

CODE_03EBBF:        BD 19 02      LDA $0219,x               ;
CODE_03EBC2:        29 0F         AND #$0F                  ;
CODE_03EBC4:        85 04         STA $04                   ;
CODE_03EBC6:        A5 E4         LDA $E4                   ;
CODE_03EBC8:        D0 0C         BNE CODE_03EBD6           ;
CODE_03EBCA:        A5 03         LDA $03                   ;
CODE_03EBCC:        C9 62         CMP #$62                  ;
CODE_03EBCE:        F0 04         BEQ CODE_03EBD4           ;
CODE_03EBD0:        C9 63         CMP #$63                  ;
CODE_03EBD2:        D0 02         BNE CODE_03EBD6           ;
CODE_03EBD4:        64 03         STZ $03                   ;
CODE_03EBD6:        A5 03         LDA $03                   ;
CODE_03EBD8:        60            RTS                       ;

DATA_03EBD9:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;empty
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_03EC10:        A2 06         LDX #$06                  ;
CODE_03EC12:        99 00 08      STA $0800,y               ;
CODE_03EC15:        18            CLC                       ;
CODE_03EC16:        69 08         ADC #$08                  ;
CODE_03EC18:        C8            INY                       ;
CODE_03EC19:        C8            INY                       ;
CODE_03EC1A:        C8            INY                       ;
CODE_03EC1B:        C8            INY                       ;
CODE_03EC1C:        CA            DEX                       ;
CODE_03EC1D:        D0 F3         BNE CODE_03EC12           ;
CODE_03EC1F:        A4 02         LDY $02                   ;
CODE_03EC21:        60            RTS                       ;

CODE_03EC22:        A2 06         LDX #$06                  ;
CODE_03EC24:        99 00 09      STA $0900,y               ;
CODE_03EC27:        18            CLC                       ;
CODE_03EC28:        69 08         ADC #$08                  ;
CODE_03EC2A:        C8            INY                       ;
CODE_03EC2B:        C8            INY                       ;
CODE_03EC2C:        C8            INY                       ;
CODE_03EC2D:        C8            INY                       ;
CODE_03EC2E:        CA            DEX                       ;
CODE_03EC2F:        D0 F3         BNE CODE_03EC24           ;
CODE_03EC31:        A4 02         LDY $02                   ;
CODE_03EC33:        60            RTS                       ;

CODE_03EC34:        A9 F0         LDA #$F0                  ;
CODE_03EC36:        99 15 08      STA $0815,y               ;
CODE_03EC39:        99 11 08      STA $0811,y               ;
CODE_03EC3C:        99 0D 08      STA $080D,y               ;
CODE_03EC3F:        99 09 08      STA $0809,y               ;
CODE_03EC42:        99 05 08      STA $0805,y               ;
CODE_03EC45:        99 01 08      STA $0801,y               ;
CODE_03EC48:        60            RTS                       ;

CODE_03EC49:        A9 F0         LDA #$F0                  ;
CODE_03EC4B:        99 15 09      STA $0915,y               ;
CODE_03EC4E:        99 11 09      STA $0911,y               ;
CODE_03EC51:        99 0D 09      STA $090D,y               ;
CODE_03EC54:        99 09 09      STA $0909,y               ;
CODE_03EC57:        99 05 09      STA $0905,y               ;
CODE_03EC5A:        99 01 09      STA $0901,y               ;
CODE_03EC5D:        60            RTS                       ;

CODE_03EC5E:        AD 43 07      LDA $0743                 ;
CODE_03EC61:        F0 03         BEQ CODE_03EC66           ;
CODE_03EC63:        4C EA EC      JMP CODE_03ECEA           ;

CODE_03EC66:        BC 46 0B      LDY $0B46,x               ;
CODE_03EC69:        84 02         STY $02                   ;
CODE_03EC6B:        AD AE 03      LDA $03AE                 ;
CODE_03EC6E:        20 22 EC      JSR CODE_03EC22           ;
CODE_03EC71:        A6 9E         LDX $9E                   ;
CODE_03EC73:        BD 38 02      LDA $0238,x               ;
CODE_03EC76:        20 51 EC      JSR CODE_03EC51           ;
CODE_03EC79:        A4 5C         LDY $5C                   ;
CODE_03EC7B:        C0 03         CPY #$03                  ;
CODE_03EC7D:        F0 05         BEQ CODE_03EC84           ;
CODE_03EC7F:        AC CC 06      LDY $06CC                 ;
CODE_03EC82:        F0 02         BEQ CODE_03EC86           ;
CODE_03EC84:        A9 F0         LDA #$F0                  ;
CODE_03EC86:        BC 46 0B      LDY $0B46,x               ;
CODE_03EC89:        99 11 09      STA $0911,y               ;
CODE_03EC8C:        99 15 09      STA $0915,y               ;
CODE_03EC8F:        A9 87         LDA #$87                  ;
CODE_03EC91:        A6 9E         LDX $9E                   ;
CODE_03EC93:        C8            INY                       ;
CODE_03EC94:        20 4B EC      JSR CODE_03EC4B           ;
CODE_03EC97:        A9 2C         LDA #$2C                  ;
CODE_03EC99:        C8            INY                       ;
CODE_03EC9A:        20 4B EC      JSR CODE_03EC4B           ;
CODE_03EC9D:        20 1E FE      JSR CODE_03FE1E           ;
CODE_03ECA0:        BC 46 0B      LDY $0B46,x               ;
CODE_03ECA3:        20 AC FE      JSR CODE_03FEAC           ;
CODE_03ECA6:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECA9:        5A            PHY                       ;
CODE_03ECAA:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03ECAD:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECB0:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03ECB3:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECB6:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03ECB9:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECBC:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03ECBF:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECC2:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03ECC5:        20 C5 FE      JSR CODE_03FEC5           ;
CODE_03ECC8:        7A            PLY                       ;
CODE_03ECC9:        AD D1 03      LDA $03D1                 ;
CODE_03ECCC:        0A            ASL A                     ;
CODE_03ECCD:        90 1A         BCC CODE_03ECE9           ;
CODE_03ECCF:        B5 1C         LDA $1C,x                 ;
CODE_03ECD1:        C9 27         CMP #$27                  ;
CODE_03ECD3:        F0 14         BEQ CODE_03ECE9           ;
CODE_03ECD5:        C9 26         CMP #$26                  ;
CODE_03ECD7:        F0 10         BEQ CODE_03ECE9           ;
CODE_03ECD9:        B5 BC         LDA $BC,x                 ;
CODE_03ECDB:        C9 01         CMP #$01                  ;
CODE_03ECDD:        D0 07         BNE CODE_03ECE6           ;
CODE_03ECDF:        AD B9 03      LDA $03B9                 ;
CODE_03ECE2:        C9 F0         CMP #$F0                  ;
CODE_03ECE4:        90 03         BCC CODE_03ECE9           ;
CODE_03ECE6:        20 49 EC      JSR CODE_03EC49           ;
CODE_03ECE9:        60            RTS                       ;

CODE_03ECEA:        22 EB CD 05   JSL CODE_05CDEB           ;
CODE_03ECEE:        60            RTS                       ;

DATA_03ECEF:        db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9
                    db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79
                    db $2C,$28,$28,$2A

CODE_03ED03:        AD 4F 0B      LDA $0B4F                 ;
CODE_03ED06:        18            CLC                       ;
CODE_03ED07:        69 08         ADC #$08                  ;
CODE_03ED09:        A8            TAY                       ;
CODE_03ED0A:        AD B9 03      LDA $03B9                 ;
CODE_03ED0D:        18            CLC                       ;
CODE_03ED0E:        69 08         ADC #$08                  ;
CODE_03ED10:        85 02         STA $02                   ;
CODE_03ED12:        AD AE 03      LDA $03AE                 ;
CODE_03ED15:        85 05         STA $05                   ;
CODE_03ED17:        AE 0C 02      LDX $020C                 ;
CODE_03ED1A:        BD FF EC      LDA $ECFF,x               ;
CODE_03ED1D:        4D 60 02      EOR $0260                 ;
CODE_03ED20:        85 04         STA $04                   ;
CODE_03ED22:        8A            TXA                       ;
CODE_03ED23:        48            PHA                       ;
CODE_03ED24:        0A            ASL A                     ;
CODE_03ED25:        0A            ASL A                     ;
CODE_03ED26:        AA            TAX                       ;
CODE_03ED27:        A9 01         LDA #$01                  ;
CODE_03ED29:        85 07         STA $07                   ;
CODE_03ED2B:        85 03         STA $03                   ;
CODE_03ED2D:        BD EF EC      LDA $ECEF,x               ;
CODE_03ED30:        85 00         STA $00                   ;
CODE_03ED32:        BD F0 EC      LDA $ECF0,x               ;
CODE_03ED35:        20 FF F2      JSR CODE_03F2FF           ;
CODE_03ED38:        C6 07         DEC $07                   ;
CODE_03ED3A:        10 F1         BPL CODE_03ED2D           ;
CODE_03ED3C:        AD 4F 0B      LDA $0B4F                 ;
CODE_03ED3F:        18            CLC                       ;
CODE_03ED40:        69 08         ADC #$08                  ;
CODE_03ED42:        A8            TAY                       ;
CODE_03ED43:        68            PLA                       ;
CODE_03ED44:        F0 3C         BEQ CODE_03ED82           ;
CODE_03ED46:        C9 03         CMP #$03                  ;
CODE_03ED48:        F0 38         BEQ CODE_03ED82           ;
CODE_03ED4A:        85 00         STA $00                   ;
CODE_03ED4C:        A5 09         LDA $09                   ;
CODE_03ED4E:        29 06         AND #$06                  ;
CODE_03ED50:        C9 06         CMP #$06                  ;
CODE_03ED52:        D0 02         BNE CODE_03ED56           ;
CODE_03ED54:        A9 0E         LDA #$0E                  ;
CODE_03ED56:        0D 60 02      ORA $0260                 ;
CODE_03ED59:        49 28         EOR #$28                  ;
CODE_03ED5B:        99 03 09      STA $0903,y               ;
CODE_03ED5E:        99 07 09      STA $0907,y               ;
CODE_03ED61:        99 0B 09      STA $090B,y               ;
CODE_03ED64:        99 0F 09      STA $090F,y               ;
CODE_03ED67:        A6 00         LDX $00                   ;
CODE_03ED69:        CA            DEX                       ;
CODE_03ED6A:        F0 06         BEQ CODE_03ED72           ;
CODE_03ED6C:        99 0B 09      STA $090B,y               ;
CODE_03ED6F:        99 0F 09      STA $090F,y               ;
CODE_03ED72:        B9 07 09      LDA $0907,y               ;
CODE_03ED75:        09 40         ORA #$40                  ;
CODE_03ED77:        99 07 09      STA $0907,y               ;
CODE_03ED7A:        B9 0F 09      LDA $090F,y               ;
CODE_03ED7D:        09 40         ORA #$40                  ;
CODE_03ED7F:        99 0F 09      STA $090F,y               ;
CODE_03ED82:        AD 4F 0B      LDA $0B4F                 ;
CODE_03ED85:        18            CLC                       ;
CODE_03ED86:        69 08         ADC #$08                  ;
CODE_03ED88:        A8            TAY                       ;
CODE_03ED89:        4C AF F2      JMP CODE_03F2AF           ;

DATA_03ED8C:        db $FC,$FC,$AA,$AB,$AC,$AD,$FC,$FC
                    db $AE,$AF,$B0,$B1,$FC,$A5,$A6,$A7
                    db $A8,$A9,$FC,$A0,$A1,$A2,$A3,$A4
                    db $69,$A5,$6A,$A7,$A8,$A9,$6B,$A0
                    db $6C,$A2,$A3,$A4,$FC,$FC,$96,$97
                    db $98,$99,$FC,$FC,$9A,$9B,$9C,$9D
                    db $FC,$FC,$8F,$8E,$8E,$8F,$FC,$FC
                    db $95,$94,$94,$95,$FC,$FC,$DC,$DC
                    db $DF,$DF,$DC,$DC,$DD,$DD,$DE,$DE
                    db $FC,$FC,$B2,$B3,$B4,$B5,$FC,$FC
                    db $B6,$B3,$B7,$B5,$FC,$FC,$C6,$C7
                    db $C8,$C9,$FC,$FC,$6E,$6E,$6F,$6F
                    db $FC,$FC,$6D,$6D,$6F,$6F,$FC,$FC
                    db $6F,$6F,$6E,$6E,$FC,$FC,$6F,$6F
                    db $6D,$6D,$FC,$FC,$F4,$F4,$F5,$F5
                    db $FC,$FC,$F4,$F4,$F5,$F5,$FC,$FC
                    db $F5,$F5,$F4,$F4,$FC,$FC,$F5,$F5
                    db $F4,$F4,$FC,$FC,$FC,$FC,$EF,$EF
                    db $B9,$B8,$BB,$BA,$BC,$BC,$FC,$FC
                    db $BD,$BD,$BC,$BC,$7A,$7B,$DA,$DB
                    db $D8,$9E,$CD,$CD,$CE,$CE,$CF,$CF
                    db $7D,$7C,$D1,$8C,$D3,$D2,$7D,$7C
                    db $89,$88,$8B,$8A,$D5,$D4,$E3,$E2
                    db $D3,$D2,$D5,$D4,$E3,$E2,$8B,$8A
                    db $E5,$E5,$E6,$E6,$EB,$EB,$EC,$EC
                    db $ED,$ED,$EB,$EB,$FC,$FC,$D0,$D0
                    db $D7,$D7,$BF,$BE,$C1,$C0,$C2,$FC
                    db $C4,$C3,$C6,$C5,$C8,$C7,$BF,$BE
                    db $CA,$C9,$C2,$FC,$C4,$C3,$C6,$C5
                    db $CC,$CB,$FC,$FC,$64,$65,$74,$75
                    db $F2,$F2,$F3,$F3,$F2,$F2,$F1,$F1
                    db $F1,$F1,$FC,$FC,$F0,$F0,$FC,$FC
                    db $FC,$FC,$0C,$0C,$00,$0C,$0C,$A8
                    db $54,$3C,$EA,$18,$48,$48,$CC,$C0
                    db $18,$18,$18,$90,$24,$FF,$48,$9C
                    db $D2,$D8,$F0,$F6,$FC,$0A,$0C,$0A
                    db $0C,$0A,$0A,$02,$08,$0A,$08,$0A
                    db $0C,$08,$2A,$0A,$0C,$0A,$0A,$0C
                    db $FF,$0C,$0C,$00,$00,$2C,$2C,$2C
                    db $08,$18,$18,$19,$1A,$19,$18,$00
                    db $00,$00,$00,$00,$00,$06,$06,$06
                    db $06,$06,$06,$0C,$0C,$0C,$0C,$0C
                    db $0C,$FC,$FC,$D0,$D0,$D7,$D7,$FC
                    db $FC,$7E,$7E,$7F,$7F,$FC,$FC,$E0
                    db $E0,$E1,$E1

CODE_03EEEF:        B5 1C         LDA $1C,x                 ;
CODE_03EEF1:        C9 0C         CMP #$0C                  ;
CODE_03EEF3:        D0 05         BNE CODE_03EEFA           ;
CODE_03EEF5:        22 38 EA 05   JSL CODE_05EA38           ;
CODE_03EEF9:        60            RTS                       ;

CODE_03EEFA:        C9 08         CMP #$08                  ;
CODE_03EEFC:        D0 0E         BNE CODE_03EF0C           ;
CODE_03EEFE:        B5 BC         LDA $BC,x                 ;
CODE_03EF00:        C9 02         CMP #$02                  ;
CODE_03EF02:        D0 03         BNE CODE_03EF07           ;
CODE_03EF04:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03EF07:        22 42 CB 05   JSL CODE_05CB42           ;
CODE_03EF0B:        60            RTS                       ;

CODE_03EF0C:        C9 33         CMP #$33                  ;
CODE_03EF0E:        D0 0E         BNE CODE_03EF1E           ;
CODE_03EF10:        B5 BC         LDA $BC,x                 ;
CODE_03EF12:        C9 02         CMP #$02                  ;
CODE_03EF14:        D0 03         BNE CODE_03EF19           ;
CODE_03EF16:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03EF19:        22 42 CB 05   JSL CODE_05CB42           ;
CODE_03EF1D:        60            RTS                       ;

CODE_03EF1E:        C9 2D         CMP #$2D                  ;
CODE_03EF20:        D0 05         BNE CODE_03EF27           ;
CODE_03EF22:        22 55 D0 05   JSL CODE_05D055           ;
CODE_03EF26:        60            RTS                       ;

CODE_03EF27:        C9 35         CMP #$35                  ;
CODE_03EF29:        D0 11         BNE CODE_03EF3C           ;
CODE_03EF2B:        AD 5F 07      LDA $075F                 ;
CODE_03EF2E:        C9 07         CMP #$07                  ;
CODE_03EF30:        F0 05         BEQ CODE_03EF37           ;
CODE_03EF32:        22 7A ED 04   JSL CODE_04ED7A           ;
CODE_03EF36:        60            RTS                       ;

CODE_03EF37:        22 BB DC 04   JSL CODE_04DCBB           ;
CODE_03EF3B:        60            RTS                       ;

CODE_03EF3C:        BD 38 02      LDA $0238,x               ;
CODE_03EF3F:        85 02         STA $02                   ;
CODE_03EF41:        AD AE 03      LDA $03AE                 ;
CODE_03EF44:        85 05         STA $05                   ;
CODE_03EF46:        BC 46 0B      LDY $0B46,x               ;
CODE_03EF49:        84 EB         STY $EB                   ;
CODE_03EF4B:        A9 00         LDA #$00                  ;
CODE_03EF4D:        85 F0         STA $F0                   ;
CODE_03EF4F:        B5 47         LDA $47,x                 ;
CODE_03EF51:        85 03         STA $03                   ;
CODE_03EF53:        BD 57 02      LDA $0257,x               ;
CODE_03EF56:        85 04         STA $04                   ;
CODE_03EF58:        B5 1C         LDA $1C,x                 ;
CODE_03EF5A:        C9 0D         CMP #$0D                  ;
CODE_03EF5C:        D0 0A         BNE CODE_03EF68           ;
CODE_03EF5E:        B4 5E         LDY $5E,x                 ;
CODE_03EF60:        30 06         BMI CODE_03EF68           ;
CODE_03EF62:        BC 92 07      LDY $0792,x               ;
CODE_03EF65:        F0 01         BEQ CODE_03EF68           ;
CODE_03EF67:        60            RTS                       ;

CODE_03EF68:        B5 29         LDA $29,x                 ;
CODE_03EF6A:        85 ED         STA $ED                   ;
CODE_03EF6C:        29 1F         AND #$1F                  ;
CODE_03EF6E:        A8            TAY                       ;
CODE_03EF6F:        B5 1C         LDA $1C,x                 ;
CODE_03EF71:        C9 35         CMP #$35                  ;
CODE_03EF73:        D0 08         BNE CODE_03EF7D           ;
CODE_03EF75:        A0 00         LDY #$00                  ;
CODE_03EF77:        A9 01         LDA #$01                  ;
CODE_03EF79:        85 03         STA $03                   ;
CODE_03EF7B:        A9 15         LDA #$15                  ;
CODE_03EF7D:        C9 33         CMP #$33                  ;
CODE_03EF7F:        D0 13         BNE CODE_03EF94           ;
CODE_03EF81:        C6 02         DEC $02                   ;
CODE_03EF83:        A9 20         LDA #$20                  ;
CODE_03EF85:        BC 92 07      LDY $0792,x               ;
CODE_03EF88:        F0 02         BEQ CODE_03EF8C           ;
CODE_03EF8A:        49 30         EOR #$30                  ;
CODE_03EF8C:        85 04         STA $04                   ;
CODE_03EF8E:        A0 00         LDY #$00                  ;
CODE_03EF90:        84 ED         STY $ED                   ;
CODE_03EF92:        A9 08         LDA #$08                  ;
CODE_03EF94:        C9 32         CMP #$32                  ;
CODE_03EF96:        D0 08         BNE CODE_03EFA0           ;
CODE_03EF98:        A0 03         LDY #$03                  ;
CODE_03EF9A:        AE 0E 07      LDX $070E                 ;
CODE_03EF9D:        BD C6 EE      LDA $EEC6,x               ;
CODE_03EFA0:        85 EF         STA $EF                   ;
CODE_03EFA2:        84 EC         STY $EC                   ;
CODE_03EFA4:        A6 9E         LDX $9E                   ;
CODE_03EFA6:        C9 0C         CMP #$0C                  ;
CODE_03EFA8:        D0 06         BNE CODE_03EFB0           ;
CODE_03EFAA:        B5 A1         LDA $A1,x                 ;
CODE_03EFAC:        30 02         BMI CODE_03EFB0           ;
CODE_03EFAE:        E6 F0         INC $F0                   ;
CODE_03EFB0:        AD 6A 03      LDA $036A                 ;
CODE_03EFB3:        F0 09         BEQ CODE_03EFBE           ;
CODE_03EFB5:        A0 16         LDY #$16                  ;
CODE_03EFB7:        C9 01         CMP #$01                  ;
CODE_03EFB9:        F0 01         BEQ CODE_03EFBC           ;
CODE_03EFBB:        C8            INY                       ;
CODE_03EFBC:        84 EF         STY $EF                   ;
CODE_03EFBE:        A4 EF         LDY $EF                   ;
CODE_03EFC0:        C0 06         CPY #$06                  ;
CODE_03EFC2:        D0 1D         BNE CODE_03EFE1           ;
CODE_03EFC4:        B5 29         LDA $29,x                 ;
CODE_03EFC6:        C9 02         CMP #$02                  ;
CODE_03EFC8:        90 04         BCC CODE_03EFCE           ;
CODE_03EFCA:        A2 04         LDX #$04                  ;
CODE_03EFCC:        86 EC         STX $EC                   ;
CODE_03EFCE:        29 20         AND #$20                  ;
CODE_03EFD0:        0D 47 07      ORA $0747                 ;
CODE_03EFD3:        D0 0C         BNE CODE_03EFE1           ;
CODE_03EFD5:        A5 09         LDA $09                   ;
CODE_03EFD7:        29 08         AND #$08                  ;
CODE_03EFD9:        D0 06         BNE CODE_03EFE1           ;
CODE_03EFDB:        A5 03         LDA $03                   ;
CODE_03EFDD:        49 03         EOR #$03                  ;
CODE_03EFDF:        85 03         STA $03                   ;
CODE_03EFE1:        B9 A9 EE      LDA $EEA9,y               ;
CODE_03EFE4:        C0 14         CPY #$14                  ;
CODE_03EFE6:        D0 04         BNE CODE_03EFEC           ;
CODE_03EFE8:        A9 3C         LDA #$3C                  ;
CODE_03EFEA:        80 02         BRA CODE_03EFEE           ;

CODE_03EFEC:        45 04         EOR $04                   ;
CODE_03EFEE:        85 04         STA $04                   ;
CODE_03EFF0:        C0 15         CPY #$15                  ;
CODE_03EFF2:        D0 0F         BNE CODE_03F003           ;
CODE_03EFF4:        AD 5F 07      LDA $075F                 ;
CODE_03EFF7:        C9 07         CMP #$07                  ;
CODE_03EFF9:        D0 08         BNE CODE_03F003           ;
CODE_03EFFB:        A5 04         LDA $04                   ;
CODE_03EFFD:        29 F0         AND #$F0                  ;
CODE_03EFFF:        09 04         ORA #$04                  ;
CODE_03F001:        85 04         STA $04                   ;
CODE_03F003:        AD 85 0E      LDA $0E85                 ;
CODE_03F006:        F0 09         BEQ CODE_03F011           ;
CODE_03F008:        B9 8E EE      LDA $EE8E,y               ;
CODE_03F00B:        18            CLC                       ;
CODE_03F00C:        69 06         ADC #$06                  ;
CODE_03F00E:        AA            TAX                       ;
CODE_03F00F:        80 04         BRA CODE_03F015           ;

CODE_03F011:        B9 8E EE      LDA $EE8E,y               ;
CODE_03F014:        AA            TAX                       ;
CODE_03F015:        A4 EC         LDY $EC                   ;
CODE_03F017:        AD 6A 03      LDA $036A                 ;
CODE_03F01A:        F0 2E         BEQ CODE_03F04A           ;
CODE_03F01C:        C9 01         CMP #$01                  ;
CODE_03F01E:        D0 12         BNE CODE_03F032           ;
CODE_03F020:        AD 63 03      LDA $0363                 ;
CODE_03F023:        10 02         BPL CODE_03F027           ;
CODE_03F025:        A2 DE         LDX #$DE                  ;
CODE_03F027:        A5 ED         LDA $ED                   ;
CODE_03F029:        29 20         AND #$20                  ;
CODE_03F02B:        F0 02         BEQ CODE_03F02F           ;
CODE_03F02D:        86 F0         STX $F0                   ;
CODE_03F02F:        4C 2D F1      JMP CODE_03F12D           ;

CODE_03F032:        AD 63 03      LDA $0363                 ;
CODE_03F035:        29 01         AND #$01                  ;
CODE_03F037:        F0 02         BEQ CODE_03F03B           ;
CODE_03F039:        A2 E4         LDX #$E4                  ;
CODE_03F03B:        A5 ED         LDA $ED                   ;
CODE_03F03D:        29 20         AND #$20                  ;
CODE_03F03F:        F0 EE         BEQ CODE_03F02F           ;
CODE_03F041:        A5 02         LDA $02                   ;
CODE_03F043:        38            SEC                       ;
CODE_03F044:        E9 10         SBC #$10                  ;
CODE_03F046:        85 02         STA $02                   ;
CODE_03F048:        80 E3         BRA CODE_03F02D           ;

CODE_03F04A:        E0 24         CPX #$24                  ;
CODE_03F04C:        D0 10         BNE CODE_03F05E           ;
CODE_03F04E:        C0 05         CPY #$05                  ;
CODE_03F050:        D0 0A         BNE CODE_03F05C           ;
CODE_03F052:        A2 30         LDX #$30                  ;
CODE_03F054:        A9 02         LDA #$02                  ;
CODE_03F056:        85 03         STA $03                   ;
CODE_03F058:        A9 05         LDA #$05                  ;
CODE_03F05A:        85 EC         STA $EC                   ;
CODE_03F05C:        80 50         BRA CODE_03F0AE           ;

CODE_03F05E:        E0 90         CPX #$90                  ;
CODE_03F060:        D0 12         BNE CODE_03F074           ;
CODE_03F062:        A5 ED         LDA $ED                   ;
CODE_03F064:        29 20         AND #$20                  ;
CODE_03F066:        D0 09         BNE CODE_03F071           ;
CODE_03F068:        AD 9B 07      LDA $079B                 ;
CODE_03F06B:        C9 10         CMP #$10                  ;
CODE_03F06D:        B0 02         BCS CODE_03F071           ;
CODE_03F06F:        A2 96         LDX #$96                  ;
CODE_03F071:        4C 1A F1      JMP CODE_03F11A           ;

CODE_03F074:        A5 EF         LDA $EF                   ;
CODE_03F076:        C9 04         CMP #$04                  ;
CODE_03F078:        B0 10         BCS CODE_03F08A           ;
CODE_03F07A:        C0 02         CPY #$02                  ;
CODE_03F07C:        90 0C         BCC CODE_03F08A           ;
CODE_03F07E:        A2 5A         LDX #$5A                  ;
CODE_03F080:        A4 EF         LDY $EF                   ;
CODE_03F082:        C0 02         CPY #$02                  ;
CODE_03F084:        D0 04         BNE CODE_03F08A           ;
CODE_03F086:        A2 7E         LDX #$7E                  ;
CODE_03F088:        E6 02         INC $02                   ;
CODE_03F08A:        A5 EC         LDA $EC                   ;
CODE_03F08C:        C9 04         CMP #$04                  ;
CODE_03F08E:        D0 1E         BNE CODE_03F0AE           ;
CODE_03F090:        A2 72         LDX #$72                  ;
CODE_03F092:        E6 02         INC $02                   ;
CODE_03F094:        A4 EF         LDY $EF                   ;
CODE_03F096:        C0 02         CPY #$02                  ;
CODE_03F098:        F0 04         BEQ CODE_03F09E           ;
CODE_03F09A:        A2 66         LDX #$66                  ;
CODE_03F09C:        E6 02         INC $02                   ;
CODE_03F09E:        C0 06         CPY #$06                  ;
CODE_03F0A0:        D0 0C         BNE CODE_03F0AE           ;
CODE_03F0A2:        A2 54         LDX #$54                  ;
CODE_03F0A4:        A5 ED         LDA $ED                   ;
CODE_03F0A6:        29 20         AND #$20                  ;
CODE_03F0A8:        D0 04         BNE CODE_03F0AE           ;
CODE_03F0AA:        A2 8A         LDX #$8A                  ;
CODE_03F0AC:        C6 02         DEC $02                   ;
CODE_03F0AE:        A4 9E         LDY $9E                   ;
CODE_03F0B0:        A5 EF         LDA $EF                   ;
CODE_03F0B2:        C9 05         CMP #$05                  ;
CODE_03F0B4:        D0 0C         BNE CODE_03F0C2           ;
CODE_03F0B6:        A5 ED         LDA $ED                   ;
CODE_03F0B8:        F0 23         BEQ CODE_03F0DD           ;
CODE_03F0BA:        29 08         AND #$08                  ;
CODE_03F0BC:        F0 5C         BEQ CODE_03F11A           ;
CODE_03F0BE:        A2 B4         LDX #$B4                  ;
CODE_03F0C0:        D0 1B         BNE CODE_03F0DD           ;
CODE_03F0C2:        E0 48         CPX #$48                  ;
CODE_03F0C4:        F0 17         BEQ CODE_03F0DD           ;
CODE_03F0C6:        B9 A2 07      LDA $07A2,y               ;
CODE_03F0C9:        C9 05         CMP #$05                  ;
CODE_03F0CB:        B0 4D         BCS CODE_03F11A           ;
CODE_03F0CD:        E0 3C         CPX #$3C                  ;
CODE_03F0CF:        D0 0C         BNE CODE_03F0DD           ;
CODE_03F0D1:        C9 01         CMP #$01                  ;
CODE_03F0D3:        F0 45         BEQ CODE_03F11A           ;
CODE_03F0D5:        E6 02         INC $02                   ;
CODE_03F0D7:        E6 02         INC $02                   ;
CODE_03F0D9:        E6 02         INC $02                   ;
CODE_03F0DB:        80 2F         BRA CODE_03F10C           ;

CODE_03F0DD:        A5 EF         LDA $EF                   ;
CODE_03F0DF:        C9 06         CMP #$06                  ;
CODE_03F0E1:        F0 37         BEQ CODE_03F11A           ;
CODE_03F0E3:        C9 08         CMP #$08                  ;
CODE_03F0E5:        F0 33         BEQ CODE_03F11A           ;
CODE_03F0E7:        C9 0C         CMP #$0C                  ;
CODE_03F0E9:        F0 2F         BEQ CODE_03F11A           ;
CODE_03F0EB:        C9 18         CMP #$18                  ;
CODE_03F0ED:        B0 2B         BCS CODE_03F11A           ;
CODE_03F0EF:        A0 00         LDY #$00                  ;
CODE_03F0F1:        C9 15         CMP #$15                  ;
CODE_03F0F3:        D0 10         BNE CODE_03F105           ;
CODE_03F0F5:        C8            INY                       ;
CODE_03F0F6:        AD 5F 07      LDA $075F                 ;
CODE_03F0F9:        C9 07         CMP #$07                  ;
CODE_03F0FB:        B0 1D         BCS CODE_03F11A           ;
CODE_03F0FD:        A2 A2         LDX #$A2                  ;
CODE_03F0FF:        A9 03         LDA #$03                  ;
CODE_03F101:        85 EC         STA $EC                   ;
CODE_03F103:        D0 15         BNE CODE_03F11A           ;
CODE_03F105:        A5 09         LDA $09                   ;
CODE_03F107:        39 C4 EE      AND $EEC4,y               ;
CODE_03F10A:        D0 0E         BNE CODE_03F11A           ;
CODE_03F10C:        A5 ED         LDA $ED                   ;
CODE_03F10E:        29 A0         AND #$A0                  ;
CODE_03F110:        0D 47 07      ORA $0747                 ;
CODE_03F113:        D0 05         BNE CODE_03F11A           ;
CODE_03F115:        8A            TXA                       ;
CODE_03F116:        18            CLC                       ;
CODE_03F117:        69 06         ADC #$06                  ;
CODE_03F119:        AA            TAX                       ;
CODE_03F11A:        A5 ED         LDA $ED                   ;
CODE_03F11C:        29 20         AND #$20                  ;
CODE_03F11E:        F0 0D         BEQ CODE_03F12D           ;
CODE_03F120:        A5 EF         LDA $EF                   ;
CODE_03F122:        C9 04         CMP #$04                  ;
CODE_03F124:        90 07         BCC CODE_03F12D           ;
CODE_03F126:        A0 01         LDY #$01                  ;
CODE_03F128:        84 F0         STY $F0                   ;
CODE_03F12A:        88            DEY                       ;
CODE_03F12B:        84 EC         STY $EC                   ;
CODE_03F12D:        A4 EB         LDY $EB                   ;
CODE_03F12F:        22 79 E8 05   JSL CODE_05E879           ;
CODE_03F133:        B0 0D         BCS CODE_03F142           ;
CODE_03F135:        20 F7 F2      JSR CODE_03F2F7           ;
CODE_03F138:        20 F7 F2      JSR CODE_03F2F7           ;
CODE_03F13B:        20 F7 F2      JSR CODE_03F2F7           ;
CODE_03F13E:        22 5A E9 05   JSL CODE_05E95A           ;
CODE_03F142:        A6 9E         LDX $9E                   ;
CODE_03F144:        BC 46 0B      LDY $0B46,x               ;
CODE_03F147:        B5 1C         LDA $1C,x                 ;
CODE_03F149:        C9 0C         CMP #$0C                  ;
CODE_03F14B:        D0 3B         BNE CODE_03F188           ;
CODE_03F14D:        FE 1B 0E      INC $0E1B,x               ;
CODE_03F150:        BD 1B 0E      LDA $0E1B,x               ;
CODE_03F153:        C9 12         CMP #$12                  ;
CODE_03F155:        90 06         BCC CODE_03F15D           ;
CODE_03F157:        9E 1B 0E      STZ $0E1B,x               ;
CODE_03F15A:        BD 1B 0E      LDA $0E1B,x               ;
CODE_03F15D:        AA            TAX                       ;
CODE_03F15E:        BD CB EE      LDA $EECB,x               ;
CODE_03F161:        AA            TAX                       ;
CODE_03F162:        BD DD EE      LDA $EEDD,x               ;
CODE_03F165:        99 02 09      STA $0902,y               ;
CODE_03F168:        BD DE EE      LDA $EEDE,x               ;
CODE_03F16B:        99 06 09      STA $0906,y               ;
CODE_03F16E:        BD DF EE      LDA $EEDF,x               ;
CODE_03F171:        99 0A 09      STA $090A,y               ;
CODE_03F174:        BD E0 EE      LDA $EEE0,x               ;
CODE_03F177:        99 0E 09      STA $090E,y               ;
CODE_03F17A:        BD E1 EE      LDA $EEE1,x               ;
CODE_03F17D:        99 12 09      STA $0912,y               ;
CODE_03F180:        BD E2 EE      LDA $EEE2,x               ;
CODE_03F183:        99 16 09      STA $0916,y               ;
CODE_03F186:        A6 9E         LDX $9E                   ;
CODE_03F188:        A5 EF         LDA $EF                   ;
CODE_03F18A:        C9 08         CMP #$08                  ;
CODE_03F18C:        D0 03         BNE CODE_03F191           ;
CODE_03F18E:        4C 95 F2      JMP CODE_03F295           ;

CODE_03F191:        A5 F0         LDA $F0                   ;
CODE_03F193:        F0 3D         BEQ CODE_03F1D2           ;
CODE_03F195:        B9 03 09      LDA $0903,y               ;
CODE_03F198:        09 80         ORA #$80                  ;
CODE_03F19A:        C8            INY                       ;
CODE_03F19B:        C8            INY                       ;
CODE_03F19C:        20 4B EC      JSR CODE_03EC4B           ;
CODE_03F19F:        88            DEY                       ;
CODE_03F1A0:        88            DEY                       ;
CODE_03F1A1:        98            TYA                       ;
CODE_03F1A2:        AA            TAX                       ;
CODE_03F1A3:        A5 EF         LDA $EF                   ;
CODE_03F1A5:        C9 05         CMP #$05                  ;
CODE_03F1A7:        F0 0D         BEQ CODE_03F1B6           ;
CODE_03F1A9:        C9 11         CMP #$11                  ;
CODE_03F1AB:        F0 09         BEQ CODE_03F1B6           ;
CODE_03F1AD:        C9 15         CMP #$15                  ;
CODE_03F1AF:        B0 05         BCS CODE_03F1B6           ;
CODE_03F1B1:        8A            TXA                       ;
CODE_03F1B2:        18            CLC                       ;
CODE_03F1B3:        69 08         ADC #$08                  ;
CODE_03F1B5:        AA            TAX                       ;
CODE_03F1B6:        BD 02 09      LDA $0902,x               ;
CODE_03F1B9:        48            PHA                       ;
CODE_03F1BA:        BD 06 09      LDA $0906,x               ;
CODE_03F1BD:        48            PHA                       ;
CODE_03F1BE:        B9 12 09      LDA $0912,y               ;
CODE_03F1C1:        9D 02 09      STA $0902,x               ;
CODE_03F1C4:        B9 16 09      LDA $0916,y               ;
CODE_03F1C7:        9D 06 09      STA $0906,x               ;
CODE_03F1CA:        68            PLA                       ;
CODE_03F1CB:        99 16 09      STA $0916,y               ;
CODE_03F1CE:        68            PLA                       ;
CODE_03F1CF:        99 12 09      STA $0912,y               ;
CODE_03F1D2:        AD 6A 03      LDA $036A                 ;
CODE_03F1D5:        D0 B7         BNE CODE_03F18E           ;
CODE_03F1D7:        A5 EF         LDA $EF                   ;
CODE_03F1D9:        A6 EC         LDX $EC                   ;
CODE_03F1DB:        C9 05         CMP #$05                  ;
CODE_03F1DD:        D0 03         BNE CODE_03F1E2           ;
CODE_03F1DF:        4C 95 F2      JMP CODE_03F295           ;

CODE_03F1E2:        C9 07         CMP #$07                  ;
CODE_03F1E4:        F0 14         BEQ CODE_03F1FA           ;
CODE_03F1E6:        C9 0D         CMP #$0D                  ;
CODE_03F1E8:        F0 10         BEQ CODE_03F1FA           ;
CODE_03F1EA:        C9 0C         CMP #$0C                  ;
CODE_03F1EC:        F0 0C         BEQ CODE_03F1FA           ;
CODE_03F1EE:        C9 12         CMP #$12                  ;
CODE_03F1F0:        D0 04         BNE CODE_03F1F6           ;
CODE_03F1F2:        E0 05         CPX #$05                  ;
CODE_03F1F4:        D0 44         BNE CODE_03F23A           ;
CODE_03F1F6:        E0 02         CPX #$02                  ;
CODE_03F1F8:        90 40         BCC CODE_03F23A           ;
CODE_03F1FA:        AD 6A 03      LDA $036A                 ;
CODE_03F1FD:        D0 3B         BNE CODE_03F23A           ;
CODE_03F1FF:        AD 49 0F      LDA $0F49                 ;
CODE_03F202:        D0 36         BNE CODE_03F23A           ;
CODE_03F204:        B9 03 09      LDA $0903,y               ;
CODE_03F207:        29 BE         AND #$BE                  ;
CODE_03F209:        99 03 09      STA $0903,y               ;
CODE_03F20C:        99 0B 09      STA $090B,y               ;
CODE_03F20F:        99 13 09      STA $0913,y               ;
CODE_03F212:        09 40         ORA #$40                  ;
CODE_03F214:        E0 05         CPX #$05                  ;
CODE_03F216:        D0 02         BNE CODE_03F21A           ;
CODE_03F218:        09 80         ORA #$80                  ;
CODE_03F21A:        99 07 09      STA $0907,y               ;
CODE_03F21D:        99 0F 09      STA $090F,y               ;
CODE_03F220:        99 17 09      STA $0917,y               ;
CODE_03F223:        E0 04         CPX #$04                  ;
CODE_03F225:        D0 13         BNE CODE_03F23A           ;
CODE_03F227:        B9 0B 09      LDA $090B,y               ;
CODE_03F22A:        09 80         ORA #$80                  ;
CODE_03F22C:        99 0B 09      STA $090B,y               ;
CODE_03F22F:        99 13 09      STA $0913,y               ;
CODE_03F232:        09 40         ORA #$40                  ;
CODE_03F234:        99 0F 09      STA $090F,y               ;
CODE_03F237:        99 17 09      STA $0917,y               ;
CODE_03F23A:        A5 EF         LDA $EF                   ;
CODE_03F23C:        C9 11         CMP #$11                  ;
CODE_03F23E:        D0 35         BNE CODE_03F275           ;
CODE_03F240:        A5 F0         LDA $F0                   ;
CODE_03F242:        D0 21         BNE CODE_03F265           ;
CODE_03F244:        B9 13 09      LDA $0913,y               ;
CODE_03F247:        29 BF         AND #$BF                  ;
CODE_03F249:        99 13 09      STA $0913,y               ;
CODE_03F24C:        B9 17 09      LDA $0917,y               ;
CODE_03F24F:        09 40         ORA #$40                  ;
CODE_03F251:        99 17 09      STA $0917,y               ;
CODE_03F254:        AE 9B 07      LDX $079B                 ;
CODE_03F257:        E0 10         CPX #$10                  ;
CODE_03F259:        B0 3A         BCS CODE_03F295           ;
CODE_03F25B:        99 0F 09      STA $090F,y               ;
CODE_03F25E:        29 BF         AND #$BF                  ;
CODE_03F260:        99 0B 09      STA $090B,y               ;
CODE_03F263:        90 30         BCC CODE_03F295           ;
CODE_03F265:        B9 03 09      LDA $0903,y               ;
CODE_03F268:        29 BF         AND #$BF                  ;
CODE_03F26A:        99 03 09      STA $0903,y               ;
CODE_03F26D:        B9 07 09      LDA $0907,y               ;
CODE_03F270:        09 40         ORA #$40                  ;
CODE_03F272:        99 07 09      STA $0907,y               ;
CODE_03F275:        A5 EF         LDA $EF                   ;
CODE_03F277:        C9 18         CMP #$18                  ;
CODE_03F279:        90 1A         BCC CODE_03F295           ;
CODE_03F27B:        A9 AC         LDA #$AC                  ;
CODE_03F27D:        99 0B 09      STA $090B,y               ;
CODE_03F280:        99 13 09      STA $0913,y               ;
CODE_03F283:        09 40         ORA #$40                  ;
CODE_03F285:        99 0F 09      STA $090F,y               ;
CODE_03F288:        99 17 09      STA $0917,y               ;
CODE_03F28B:        29 3F         AND #$3F                  ;
CODE_03F28D:        99 03 09      STA $0903,y               ;
CODE_03F290:        09 40         ORA #$40                  ;
CODE_03F292:        99 07 09      STA $0907,y               ;
CODE_03F295:        A5 EF         LDA $EF                   ;
CODE_03F297:        C9 0D         CMP #$0D                  ;
CODE_03F299:        D0 14         BNE CODE_03F2AF           ;
CODE_03F29B:        B9 13 09      LDA $0913,y               ;
CODE_03F29E:        29 F0         AND #$F0                  ;
CODE_03F2A0:        09 08         ORA #$08                  ;
CODE_03F2A2:        99 13 09      STA $0913,y               ;
CODE_03F2A5:        B9 17 09      LDA $0917,y               ;
CODE_03F2A8:        29 F0         AND #$F0                  ;
CODE_03F2AA:        09 08         ORA #$08                  ;
CODE_03F2AC:        99 17 09      STA $0917,y               ;
CODE_03F2AF:        A6 9E         LDX $9E                   ;
CODE_03F2B1:        20 AC FE      JSR CODE_03FEAC           ;
CODE_03F2B4:        64 04         STZ $04                   ;
CODE_03F2B6:        20 E5 FE      JSR CODE_03FEE5           ;
CODE_03F2B9:        20 3B FF      JSR CODE_03FF3B           ;
CODE_03F2BC:        64 04         STZ $04                   ;
CODE_03F2BE:        20 E5 FE      JSR CODE_03FEE5           ;
CODE_03F2C1:        88            DEY                       ;
CODE_03F2C2:        88            DEY                       ;
CODE_03F2C3:        88            DEY                       ;
CODE_03F2C4:        88            DEY                       ;
CODE_03F2C5:        AD D1 03      LDA $03D1                 ;
CODE_03F2C8:        4A            LSR A                     ;
CODE_03F2C9:        4A            LSR A                     ;
CODE_03F2CA:        4A            LSR A                     ;
CODE_03F2CB:        4A            LSR A                     ;
CODE_03F2CC:        4A            LSR A                     ;
CODE_03F2CD:        4A            LSR A                     ;
CODE_03F2CE:        48            PHA                       ;
CODE_03F2CF:        90 05         BCC CODE_03F2D6           ;
CODE_03F2D1:        A9 10         LDA #$10                  ;
CODE_03F2D3:        20 13 F3      JSR CODE_03F313           ;
CODE_03F2D6:        68            PLA                       ;
CODE_03F2D7:        4A            LSR A                     ;
CODE_03F2D8:        48            PHA                       ;
CODE_03F2D9:        90 05         BCC CODE_03F2E0           ;
CODE_03F2DB:        A9 08         LDA #$08                  ;
CODE_03F2DD:        20 13 F3      JSR CODE_03F313           ;
CODE_03F2E0:        68            PLA                       ;
CODE_03F2E1:        4A            LSR A                     ;
CODE_03F2E2:        90 12         BCC CODE_03F2F6           ;
CODE_03F2E4:        20 13 F3      JSR CODE_03F313           ;
CODE_03F2E7:        B5 1C         LDA $1C,x                 ;
CODE_03F2E9:        C9 0C         CMP #$0C                  ;
CODE_03F2EB:        F0 09         BEQ CODE_03F2F6           ;
CODE_03F2ED:        B5 BC         LDA $BC,x                 ;
CODE_03F2EF:        C9 02         CMP #$02                  ;
CODE_03F2F1:        D0 03         BNE CODE_03F2F6           ;
CODE_03F2F3:        20 E2 CD      JSR CODE_03CDE2           ; Erase sprite
CODE_03F2F6:        60            RTS                       ;

CODE_03F2F7:        BD 8C ED      LDA $ED8C,x               ;
CODE_03F2FA:        85 00         STA $00                   ;
CODE_03F2FC:        BD 8D ED      LDA $ED8D,x               ;
CODE_03F2FF:        85 01         STA $01                   ;
CODE_03F301:        A5 02         LDA $02                   ;
CODE_03F303:        C9 F9         CMP #$F9                  ;
CODE_03F305:        D0 04         BNE CODE_03F30B           ;
CODE_03F307:        A9 F0         LDA #$F0                  ;
CODE_03F309:        85 02         STA $02                   ;
CODE_03F30B:        4C 96 FF      JMP CODE_03FF96           ;

CODE_03F30E:        85 01         STA $01                   ;
CODE_03F310:        4C 4E FF      JMP CODE_03FF4E           ;

CODE_03F313:        86 9E         STX $9E                   ;
CODE_03F315:        E0 0A         CPX #$0A                  ;
CODE_03F317:        D0 01         BNE CODE_03F31A           ;
CODE_03F319:        CA            DEX                       ;
CODE_03F31A:        18            CLC                       ;
CODE_03F31B:        7D 46 0B      ADC $0B46,x               ;
CODE_03F31E:        A8            TAY                       ;
CODE_03F31F:        A9 F0         LDA #$F0                  ;
CODE_03F321:        A6 9E         LDX $9E                   ;
CODE_03F323:        4C 57 EC      JMP CODE_03EC57           ;

CODE_03F326:        86 9E         STX $9E                   ;
CODE_03F328:        E0 0A         CPX #$0A                  ;
CODE_03F32A:        D0 01         BNE CODE_03F32D           ;
CODE_03F32C:        CA            DEX                       ;
CODE_03F32D:        18            CLC                       ;
CODE_03F32E:        7D 46 0B      ADC $0B46,x               ;
CODE_03F331:        A8            TAY                       ;
CODE_03F332:        A9 F0         LDA #$F0                  ;
CODE_03F334:        99 01 09      STA $0901,y               ;
CODE_03F337:        99 09 09      STA $0909,y               ;
CODE_03F33A:        99 11 09      STA $0911,y               ;
CODE_03F33D:        A6 9E         LDX $9E                   ;
CODE_03F33F:        60            RTS                       ;

CODE_03F340:        A9 01         LDA #$01                  ;
CODE_03F342:        99 00 0D      STA $0D00,y               ;
CODE_03F345:        99 08 0D      STA $0D08,y               ;
CODE_03F348:        99 10 0D      STA $0D10,y               ;
CODE_03F34B:        60            RTS                       ;

CODE_03F34C:        A9 01         LDA #$01                  ;
CODE_03F34E:        99 04 0D      STA $0D04,y               ;
CODE_03F351:        99 0C 0D      STA $0D0C,y               ;
CODE_03F354:        99 14 0D      STA $0D14,y               ;
CODE_03F357:        60            RTS                       ;

CODE_03F358:        BC 51 0B      LDY $0B51,x               ;
CODE_03F35B:        AD B1 03      LDA $03B1                 ;
CODE_03F35E:        99 00 08      STA $0800,y               ;
CODE_03F361:        AD BC 03      LDA $03BC                 ;
CODE_03F364:        99 01 08      STA $0801,y               ;
CODE_03F367:        A9 2B         LDA #$2B                  ;
CODE_03F369:        99 03 08      STA $0803,y               ;
CODE_03F36C:        A9 02         LDA #$02                  ;
CODE_03F36E:        99 00 0C      STA $0C00,y               ;
CODE_03F371:        BD EA 03      LDA $03EA,x               ;
CODE_03F374:        C9 FC         CMP #$FC                  ;
CODE_03F376:        D0 04         BNE CODE_03F37C           ;
CODE_03F378:        A9 00         LDA #$00                  ;
CODE_03F37A:        80 02         BRA CODE_03F37E           ;

CODE_03F37C:        A9 02         LDA #$02                  ;
CODE_03F37E:        99 02 08      STA $0802,y               ;
CODE_03F381:        B5 85         LDA $85,x                 ;
CODE_03F383:        85 E5         STA $E5                   ;
CODE_03F385:        BD 26 02      LDA $0226,x               ;
CODE_03F388:        85 E4         STA $E4                   ;
CODE_03F38A:        C2 20         REP #$20                  ;
CODE_03F38C:        A5 E4         LDA $E4                   ;
CODE_03F38E:        38            SEC                       ;
CODE_03F38F:        E5 42         SBC $42                   ;
CODE_03F391:        85 E4         STA $E4                   ;
CODE_03F393:        E2 20         SEP #$20                  ;
CODE_03F395:        A5 E5         LDA $E5                   ;
CODE_03F397:        F0 05         BEQ CODE_03F39E           ;
CODE_03F399:        A9 03         LDA #$03                  ;
CODE_03F39B:        99 00 0C      STA $0C00,y               ;
CODE_03F39E:        60            RTS                       ;

CODE_03F39F:        29 08         AND #$08                  ;
CODE_03F3A1:        F0 08         BEQ CODE_03F3AB           ;
CODE_03F3A3:        A9 F0         LDA #$F0                  ;
CODE_03F3A5:        99 01 08      STA $0801,y               ;
CODE_03F3A8:        99 09 08      STA $0809,y               ;
CODE_03F3AB:        60            RTS                       ;

CODE_03F3AC:        A9 2C         LDA #$2C                  ;
CODE_03F3AE:        85 00         STA $00                   ;
CODE_03F3B0:        A9 75         LDA #$75                  ;
CODE_03F3B2:        A4 0F         LDY $0F                   ;
CODE_03F3B4:        C0 05         CPY #$05                  ;
CODE_03F3B6:        F0 06         BEQ CODE_03F3BE           ;
CODE_03F3B8:        A9 2A         LDA #$2A                  ;
CODE_03F3BA:        85 00         STA $00                   ;
CODE_03F3BC:        A9 84         LDA #$84                  ;
CODE_03F3BE:        BC 51 0B      LDY $0B51,x               ;
CODE_03F3C1:        C8            INY                       ;
CODE_03F3C2:        20 3C EC      JSR CODE_03EC3C           ;
CODE_03F3C5:        A5 09         LDA $09                   ;
CODE_03F3C7:        0A            ASL A                     ;
CODE_03F3C8:        0A            ASL A                     ;
CODE_03F3C9:        0A            ASL A                     ;
CODE_03F3CA:        0A            ASL A                     ;
CODE_03F3CB:        29 C0         AND #$C0                  ;
CODE_03F3CD:        05 00         ORA $00                   ;
CODE_03F3CF:        C8            INY                       ;
CODE_03F3D0:        20 3C EC      JSR CODE_03EC3C           ;
CODE_03F3D3:        88            DEY                       ;
CODE_03F3D4:        88            DEY                       ;
CODE_03F3D5:        AD BC 03      LDA $03BC                 ;
CODE_03F3D8:        C9 F0         CMP #$F0                  ;
CODE_03F3DA:        90 02         BCC CODE_03F3DE           ;
CODE_03F3DC:        A9 F0         LDA #$F0                  ;
CODE_03F3DE:        20 42 EC      JSR CODE_03EC42           ;
CODE_03F3E1:        AD B1 03      LDA $03B1                 ;
CODE_03F3E4:        99 00 08      STA $0800,y               ;
CODE_03F3E7:        BD F3 03      LDA $03F3,x               ;
CODE_03F3EA:        38            SEC                       ;
CODE_03F3EB:        ED 1C 07      SBC $071C                 ;
CODE_03F3EE:        85 00         STA $00                   ;
CODE_03F3F0:        38            SEC                       ;
CODE_03F3F1:        ED B1 03      SBC $03B1                 ;
CODE_03F3F4:        65 00         ADC $00                   ;
CODE_03F3F6:        69 06         ADC #$06                  ;
CODE_03F3F8:        99 04 08      STA $0804,y               ;
CODE_03F3FB:        AD BD 03      LDA $03BD                 ;
CODE_03F3FE:        C9 F0         CMP #$F0                  ;
CODE_03F400:        90 02         BCC CODE_03F404           ;
CODE_03F402:        A9 F0         LDA #$F0                  ;
CODE_03F404:        99 09 08      STA $0809,y               ;
CODE_03F407:        99 0D 08      STA $080D,y               ;
CODE_03F40A:        AD B2 03      LDA $03B2                 ;
CODE_03F40D:        99 08 08      STA $0808,y               ;
CODE_03F410:        A5 00         LDA $00                   ;
CODE_03F412:        38            SEC                       ;
CODE_03F413:        ED B2 03      SBC $03B2                 ;
CODE_03F416:        65 00         ADC $00                   ;
CODE_03F418:        69 06         ADC #$06                  ;
CODE_03F41A:        99 0C 08      STA $080C,y               ;
CODE_03F41D:        AD D4 03      LDA $03D4                 ;
CODE_03F420:        0A            ASL A                     ;
CODE_03F421:        90 05         BCC CODE_03F428           ;
CODE_03F423:        A9 F0         LDA #$F0                  ;
CODE_03F425:        20 42 EC      JSR CODE_03EC42           ;
CODE_03F428:        AD D4 03      LDA $03D4                 ;
CODE_03F42B:        F0 08         BEQ CODE_03F435           ;
CODE_03F42D:        A9 01         LDA #$01                  ;
CODE_03F42F:        99 00 0C      STA $0C00,y               ;
CODE_03F432:        99 08 0C      STA $0C08,y               ;
CODE_03F435:        AD D5 03      LDA $03D5                 ;
CODE_03F438:        F0 08         BEQ CODE_03F442           ;
CODE_03F43A:        A9 01         LDA #$01                  ;
CODE_03F43C:        99 04 0C      STA $0C04,y               ;
CODE_03F43F:        99 0C 0C      STA $0C0C,y               ;
CODE_03F442:        60            RTS                       ;

CODE_03F443:        BC 56 0B      LDY $0B56,x               ;
CODE_03F446:        AD BA 03      LDA $03BA                 ;
CODE_03F449:        99 01 08      STA $0801,y               ;
CODE_03F44C:        AD AF 03      LDA $03AF                 ;
CODE_03F44F:        99 00 08      STA $0800,y               ;
CODE_03F452:        A5 09         LDA $09                   ;
CODE_03F454:        4A            LSR A                     ;
CODE_03F455:        4A            LSR A                     ;
CODE_03F456:        48            PHA                       ;
CODE_03F457:        29 01         AND #$01                  ;
CODE_03F459:        49 BE         EOR #$BE                  ;
CODE_03F45B:        99 02 08      STA $0802,y               ;
CODE_03F45E:        68            PLA                       ;
CODE_03F45F:        4A            LSR A                     ;
CODE_03F460:        4A            LSR A                     ;
CODE_03F461:        A9 28         LDA #$28                  ;
CODE_03F463:        90 02         BCC CODE_03F467           ;
CODE_03F465:        09 C0         ORA #$C0                  ;
CODE_03F467:        99 03 08      STA $0803,y               ;
CODE_03F46A:        BD 68 00      LDA $0068,x               ;
CODE_03F46D:        10 0C         BPL CODE_03F47B           ;
CODE_03F46F:        AD AF 03      LDA $03AF                 ;
CODE_03F472:        C9 F8         CMP #$F8                  ;
CODE_03F474:        90 05         BCC CODE_03F47B           ;
CODE_03F476:        A9 01         LDA #$01                  ;
CODE_03F478:        99 00 0C      STA $0C00,y               ;
CODE_03F47B:        60            RTS                       ;

CODE_03F47C:        BC 56 0B      LDY $0B56,x               ;
CODE_03F47F:        AD BA 03      LDA $03BA                 ;
CODE_03F482:        99 01 09      STA $0901,y               ;
CODE_03F485:        AD AF 03      LDA $03AF                 ;
CODE_03F488:        99 00 09      STA $0900,y               ;
CODE_03F48B:        A5 09         LDA $09                   ;
CODE_03F48D:        4A            LSR A                     ;
CODE_03F48E:        4A            LSR A                     ;
CODE_03F48F:        48            PHA                       ;
CODE_03F490:        29 01         AND #$01                  ;
CODE_03F492:        49 BE         EOR #$BE                  ;
CODE_03F494:        99 02 09      STA $0902,y               ;
CODE_03F497:        68            PLA                       ;
CODE_03F498:        4A            LSR A                     ;
CODE_03F499:        4A            LSR A                     ;
CODE_03F49A:        A9 38         LDA #$38                  ;
CODE_03F49C:        90 02         BCC CODE_03F4A0           ;
CODE_03F49E:        09 C0         ORA #$C0                  ;
CODE_03F4A0:        99 03 09      STA $0903,y               ;
CODE_03F4A3:        60            RTS                       ;

DATA_03F4A4:        db $CC,$CB,$CA,$FC


CODE_03F4A8:        BC 51 0B      LDY $0B51,x
CODE_03F4AB:        BD 68 00      LDA $0068,x               ;
CODE_03F4AE:        30 17         BMI CODE_03F4C7           ;
CODE_03F4B0:        AD AF 03      LDA $03AF                 ;
CODE_03F4B3:        38            SEC                       ;
CODE_03F4B4:        E9 04         SBC #$04                  ;
CODE_03F4B6:        8D AF 03      STA $03AF                 ;
CODE_03F4B9:        C9 F8         CMP #$F8                  ;
CODE_03F4BB:        90 29         BCC CODE_03F4E6           ;
CODE_03F4BD:        A9 01         LDA #$01                  ;
CODE_03F4BF:        99 08 0C      STA $0C08,y               ;
CODE_03F4C2:        99 0C 0C      STA $0C0C,y               ;
CODE_03F4C5:        80 1F         BRA CODE_03F4E6           ;

CODE_03F4C7:        AD AF 03      LDA $03AF                 ;
CODE_03F4CA:        C9 F0         CMP #$F0                  ;
CODE_03F4CC:        90 18         BCC CODE_03F4E6           ;
CODE_03F4CE:        C9 F8         CMP #$F8                  ;
CODE_03F4D0:        90 0A         BCC CODE_03F4DC           ;
CODE_03F4D2:        A9 01         LDA #$01                  ;
CODE_03F4D4:        99 00 0C      STA $0C00,y               ;
CODE_03F4D7:        99 04 0C      STA $0C04,y               ;
CODE_03F4DA:        80 0A         BRA CODE_03F4E6           ;

CODE_03F4DC:        A9 01         LDA #$01                  ;
CODE_03F4DE:        99 00 0C      STA $0C00,y               ;
CODE_03F4E1:        99 04 0C      STA $0C04,y               ;
CODE_03F4E4:        80 D7         BRA CODE_03F4BD           ;

CODE_03F4E6:        B5 33         LDA $33,x                 ;
CODE_03F4E8:        F6 33         INC $33,x                 ;
CODE_03F4EA:        4A            LSR A                     ;
CODE_03F4EB:        29 07         AND #$07                  ;
CODE_03F4ED:        C9 03         CMP #$03                  ;
CODE_03F4EF:        B0 47         BCS CODE_03F538           ;
CODE_03F4F1:        AA            TAX                       ;
CODE_03F4F2:        BD A4 F4      LDA $F4A4,x               ;
CODE_03F4F5:        C8            INY                       ;
CODE_03F4F6:        20 3C EC      JSR CODE_03EC3C           ;
CODE_03F4F9:        88            DEY                       ;
CODE_03F4FA:        A6 9E         LDX $9E                   ;
CODE_03F4FC:        AD BA 03      LDA $03BA                 ;
CODE_03F4FF:        38            SEC                       ;
CODE_03F500:        E9 04         SBC #$04                  ;
CODE_03F502:        99 01 08      STA $0801,y               ;
CODE_03F505:        99 09 08      STA $0809,y               ;
CODE_03F508:        18            CLC                       ;
CODE_03F509:        69 08         ADC #$08                  ;
CODE_03F50B:        99 05 08      STA $0805,y               ;
CODE_03F50E:        99 0D 08      STA $080D,y               ;
CODE_03F511:        AD AF 03      LDA $03AF                 ;
CODE_03F514:        99 00 08      STA $0800,y               ;
CODE_03F517:        99 04 08      STA $0804,y               ;
CODE_03F51A:        18            CLC                       ;
CODE_03F51B:        69 08         ADC #$08                  ;
CODE_03F51D:        99 08 08      STA $0808,y               ;
CODE_03F520:        99 0C 08      STA $080C,y               ;
CODE_03F523:        A9 28         LDA #$28                  ;
CODE_03F525:        99 03 08      STA $0803,y               ;
CODE_03F528:        A9 A8         LDA #$A8                  ;
CODE_03F52A:        99 07 08      STA $0807,y               ;
CODE_03F52D:        A9 68         LDA #$68                  ;
CODE_03F52F:        99 0B 08      STA $080B,y               ;
CODE_03F532:        A9 E8         LDA #$E8                  ;
CODE_03F534:        99 0F 08      STA $080F,y               ;
CODE_03F537:        60            RTS                       ;

CODE_03F538:        74 33         STZ $33,x                 ;
CODE_03F53A:        60            RTS                       ;

DATA_03F53B:        db $48,$4A,$4C,$4E

DATA_03F53F:        db $0C,$08,$0A,$0C,$08,$0A,$0C,$08
                    db $0A

CODE_03F548:        AA            TAX                       ;
CODE_03F549:        BD 3B F5      LDA $F53B,x               ;
CODE_03F54C:        C8            INY                       ;
CODE_03F54D:        20 51 EC      JSR CODE_03EC51           ;
CODE_03F550:        88            DEY                       ;
CODE_03F551:        A6 9E         LDX $9E                   ;
CODE_03F553:        AD BA 03      LDA $03BA                 ;
CODE_03F556:        38            SEC                       ;
CODE_03F557:        E9 10         SBC #$10                  ;
CODE_03F559:        99 01 09      STA $0901,y               ;
CODE_03F55C:        99 09 09      STA $0909,y               ;
CODE_03F55F:        18            CLC                       ;
CODE_03F560:        69 10         ADC #$10                  ;
CODE_03F562:        99 05 09      STA $0905,y               ;
CODE_03F565:        99 0D 09      STA $090D,y               ;
CODE_03F568:        AD AF 03      LDA $03AF                 ;
CODE_03F56B:        38            SEC                       ;
CODE_03F56C:        E9 08         SBC #$08                  ;
CODE_03F56E:        99 00 09      STA $0900,y               ;
CODE_03F571:        99 04 09      STA $0904,y               ;
CODE_03F574:        18            CLC                       ;
CODE_03F575:        69 10         ADC #$10                  ;
CODE_03F577:        99 08 09      STA $0908,y               ;
CODE_03F57A:        99 0C 09      STA $090C,y               ;
CODE_03F57D:        A9 02         LDA #$02                  ;
CODE_03F57F:        99 00 0D      STA $0D00,y               ;
CODE_03F582:        99 04 0D      STA $0D04,y               ;
CODE_03F585:        99 08 0D      STA $0D08,y               ;
CODE_03F588:        99 0C 0D      STA $0D0C,y               ;
CODE_03F58B:        DA            PHX                       ;
CODE_03F58C:        B5 A1         LDA $A1,x                 ;
CODE_03F58E:        AA            TAX                       ;
CODE_03F58F:        CA            DEX                       ;
CODE_03F590:        BD 3F F5      LDA $F53F,x               ;
CODE_03F593:        09 20         ORA #$20                  ;
CODE_03F595:        99 03 09      STA $0903,y               ;
CODE_03F598:        BD 3F F5      LDA $F53F,x               ;
CODE_03F59B:        09 A0         ORA #$A0                  ;
CODE_03F59D:        99 07 09      STA $0907,y               ;
CODE_03F5A0:        BD 3F F5      LDA $F53F,x               ;
CODE_03F5A3:        09 60         ORA #$60                  ;
CODE_03F5A5:        99 0B 09      STA $090B,y               ;
CODE_03F5A8:        BD 3F F5      LDA $F53F,x               ;
CODE_03F5AB:        09 E0         ORA #$E0                  ;
CODE_03F5AD:        99 0F 09      STA $090F,y               ;
CODE_03F5B0:        FA            PLX                       ;
CODE_03F5B1:        60            RTS                       ;

CODE_03F5B2:        BC 46 0B      LDY $0B46,x               ;
CODE_03F5B5:        A9 87         LDA #$87                  ;
CODE_03F5B7:        C8            INY                       ;
CODE_03F5B8:        20 4B EC      JSR CODE_03EC4B           ;
CODE_03F5BB:        C8            INY                       ;
CODE_03F5BC:        A9 2C         LDA #$2C                  ;
CODE_03F5BE:        20 4B EC      JSR CODE_03EC4B           ;
CODE_03F5C1:        88            DEY                       ;
CODE_03F5C2:        88            DEY                       ;
CODE_03F5C3:        AD AE 03      LDA $03AE                 ;
CODE_03F5C6:        99 00 09      STA $0900,y               ;
CODE_03F5C9:        99 0C 09      STA $090C,y               ;
CODE_03F5CC:        18            CLC                       ;
CODE_03F5CD:        69 08         ADC #$08                  ;
CODE_03F5CF:        99 04 09      STA $0904,y               ;
CODE_03F5D2:        99 10 09      STA $0910,y               ;
CODE_03F5D5:        18            CLC                       ;
CODE_03F5D6:        69 08         ADC #$08                  ;
CODE_03F5D8:        99 08 09      STA $0908,y               ;
CODE_03F5DB:        99 14 09      STA $0914,y               ;
CODE_03F5DE:        BD 38 02      LDA $0238,x               ;
CODE_03F5E1:        AA            TAX                       ;
CODE_03F5E2:        48            PHA                       ;
CODE_03F5E3:        E0 00         CPX #$00                  ;
CODE_03F5E5:        B0 02         BCS CODE_03F5E9           ;
CODE_03F5E7:        A9 F0         LDA #$F0                  ;
CODE_03F5E9:        20 54 EC      JSR CODE_03EC54           ;
CODE_03F5EC:        68            PLA                       ;
CODE_03F5ED:        18            CLC                       ;
CODE_03F5EE:        69 80         ADC #$80                  ;
CODE_03F5F0:        AA            TAX                       ;
CODE_03F5F1:        E0 00         CPX #$00                  ;
CODE_03F5F3:        B0 02         BCS CODE_03F5F7           ;
CODE_03F5F5:        A9 F0         LDA #$F0                  ;
CODE_03F5F7:        99 0D 09      STA $090D,y               ;
CODE_03F5FA:        99 11 09      STA $0911,y               ;
CODE_03F5FD:        99 15 09      STA $0915,y               ;
CODE_03F600:        AD D1 03      LDA $03D1                 ;
CODE_03F603:        48            PHA                       ;
CODE_03F604:        29 08         AND #$08                  ;
CODE_03F606:        F0 08         BEQ CODE_03F610           ;
CODE_03F608:        A9 01         LDA #$01                  ;
CODE_03F60A:        99 00 0D      STA $0D00,y               ;
CODE_03F60D:        99 0C 0D      STA $0D0C,y               ;
CODE_03F610:        68            PLA                       ;
CODE_03F611:        48            PHA                       ;
CODE_03F612:        29 04         AND #$04                  ;
CODE_03F614:        F0 08         BEQ CODE_03F61E           ;
CODE_03F616:        A9 01         LDA #$01                  ;
CODE_03F618:        99 04 0D      STA $0D04,y               ;
CODE_03F61B:        99 10 0D      STA $0D10,y               ;
CODE_03F61E:        68            PLA                       ;
CODE_03F61F:        29 02         AND #$02                  ;
CODE_03F621:        F0 08         BEQ CODE_03F62B           ;
CODE_03F623:        A9 01         LDA #$01                  ;
CODE_03F625:        99 08 0D      STA $0D08,y               ;
CODE_03F628:        99 14 0D      STA $0D14,y               ;
CODE_03F62B:        A6 9E         LDX $9E                   ;
CODE_03F62D:        60            RTS                       ;

DATA_03F62E:        db $20,$28,$C8,$18,$00,$40,$50,$58
                    db $80,$88,$B8,$78,$60,$A0,$B0,$B8

DATA_03F63E:        db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $9E,$9F

CODE_03F710:        AD 41 0E      LDA $0E41                 ;
CODE_03F713:        D0 1D         BNE CODE_03F732           ;
CODE_03F715:        AD D5 06      LDA $06D5                 ;
CODE_03F718:        C9 18         CMP #$18                  ;
CODE_03F71A:        F0 04         BEQ CODE_03F720           ;
CODE_03F71C:        C9 78         CMP #$78                  ;
CODE_03F71E:        D0 16         BNE CODE_03F736           ;
CODE_03F720:        EE 41 0E      INC $0E41                 ;
CODE_03F723:        80 0A         BRA CODE_03F72F           ;

CODE_03F725:        AD 02 02      LDA $0202                 ;
CODE_03F728:        29 02         AND #$02                  ;
CODE_03F72A:        D0 0A         BNE CODE_03F736           ;
CODE_03F72C:        EE 41 0E      INC $0E41                 ;
CODE_03F72F:        9C 40 0E      STZ $0E40                 ;
CODE_03F732:        22 A1 D7 05   JSL CODE_05D7A1           ;
CODE_03F736:        A5 0F         LDA $0F                   ;
CODE_03F738:        C9 03         CMP #$03                  ;
CODE_03F73A:        F0 0A         BEQ CODE_03F746           ;
CODE_03F73C:        AD AE 07      LDA $07AE                 ;
CODE_03F73F:        F0 05         BEQ CODE_03F746           ;
CODE_03F741:        A5 09         LDA $09                   ;
CODE_03F743:        4A            LSR A                     ;
CODE_03F744:        B0 68         BCS CODE_03F7AE           ;
CODE_03F746:        A5 0F         LDA $0F                   ;
CODE_03F748:        C9 0B         CMP #$0B                  ;
CODE_03F74A:        F0 6D         BEQ CODE_03F7B9           ;
CODE_03F74C:        AD 0B 07      LDA $070B                 ;
CODE_03F74F:        D0 63         BNE CODE_03F7B4           ;
CODE_03F751:        AC 04 07      LDY $0704                 ;
CODE_03F754:        F0 59         BEQ CODE_03F7AF           ;
CODE_03F756:        A5 28         LDA $28                   ;
CODE_03F758:        C9 00         CMP #$00                  ;
CODE_03F75A:        F0 53         BEQ CODE_03F7AF           ;
CODE_03F75C:        20 AF F7      JSR CODE_03F7AF           ;
CODE_03F75F:        AA            TAX                       ;
CODE_03F760:        AC 45 0B      LDY $0B45                 ;
CODE_03F763:        AD 02 02      LDA $0202                 ;
CODE_03F766:        4A            LSR A                     ;
CODE_03F767:        B0 04         BCS CODE_03F76D           ;
CODE_03F769:        C8            INY                       ;
CODE_03F76A:        C8            INY                       ;
CODE_03F76B:        C8            INY                       ;
CODE_03F76C:        C8            INY                       ;
CODE_03F76D:        AD 54 07      LDA $0754                 ;
CODE_03F770:        D0 3C         BNE CODE_03F7AE           ;
CODE_03F772:        DA            PHX                       ;
CODE_03F773:        AD 02 02      LDA $0202                 ;
CODE_03F776:        C9 02         CMP #$02                  ;
CODE_03F778:        F0 0F         BEQ CODE_03F789           ;
CODE_03F77A:        B9 10 08      LDA $0810,y               ;
CODE_03F77D:        38            SEC                       ;
CODE_03F77E:        E9 08         SBC #$08                  ;
CODE_03F780:        99 10 08      STA $0810,y               ;
CODE_03F783:        B0 04         BCS CODE_03F789           ;
CODE_03F785:        A9 03         LDA #$03                  ;
CODE_03F787:        80 02         BRA CODE_03F78B           ;

CODE_03F789:        A9 02         LDA #$02                  ;
CODE_03F78B:        99 10 0C      STA $0C10,y               ;
CODE_03F78E:        AD D5 06      LDA $06D5                 ;
CODE_03F791:        38            SEC                       ;
CODE_03F792:        E9 28         SBC #$28                  ;
CODE_03F794:        4A            LSR A                     ;
CODE_03F795:        4A            LSR A                     ;
CODE_03F796:        18            CLC                       ;
CODE_03F797:        69 08         ADC #$08                  ;
CODE_03F799:        99 12 08      STA $0812,y               ;
CODE_03F79C:        B9 19 08      LDA $0819,y               ;
CODE_03F79F:        C9 F0         CMP #$F0                  ;
CODE_03F7A1:        90 05         BCC CODE_03F7A8           ;
CODE_03F7A3:        A9 F0         LDA #$F0                  ;
CODE_03F7A5:        99 11 08      STA $0811,y               ;
CODE_03F7A8:        A9 F0         LDA #$F0                  ;
CODE_03F7AA:        99 19 08      STA $0819,y               ;
CODE_03F7AD:        FA            PLX                       ;
CODE_03F7AE:        60            RTS                       ;

CODE_03F7AF:        20 A2 FB      JSR CODE_03FBA2           ;
CODE_03F7B2:        80 0A         BRA CODE_03F7BE           ;

CODE_03F7B4:        20 60 FC      JSR CODE_03FC60           ;
CODE_03F7B7:        80 05         BRA CODE_03F7BE           ;

CODE_03F7B9:        A0 0E         LDY #$0E                  ;
CODE_03F7BB:        B9 2E F6      LDA $F62E,y               ;
CODE_03F7BE:        8D D5 06      STA $06D5                 ;
CODE_03F7C1:        AD CE 03      LDA $03CE                 ;
CODE_03F7C4:        D0 13         BNE CODE_03F7D9           ;
CODE_03F7C6:        AD 18 02      LDA $0218                 ;
CODE_03F7C9:        F0 11         BEQ CODE_03F7DC           ;
CODE_03F7CB:        AD 54 07      LDA $0754                 ;
CODE_03F7CE:        D0 07         BNE CODE_03F7D7           ;
CODE_03F7D0:        A9 D8         LDA #$D8                  ;
CODE_03F7D2:        8D D5 06      STA $06D5                 ;
CODE_03F7D5:        80 05         BRA CODE_03F7DC           ;

CODE_03F7D7:        A9 E0         LDA #$E0                  ;
CODE_03F7D9:        8D D5 06      STA $06D5                 ;
CODE_03F7DC:        A9 04         LDA #$04                  ;
CODE_03F7DE:        20 58 FB      JSR CODE_03FB58           ;
CODE_03F7E1:        20 99 FC      JSR CODE_03FC99           ;
CODE_03F7E4:        A5 02         LDA $02                   ;
CODE_03F7E6:        C9 03         CMP #$03                  ;
CODE_03F7E8:        D0 1A         BNE CODE_03F804           ;
CODE_03F7EA:        AD 19 02      LDA $0219                 ;
CODE_03F7ED:        38            SEC                       ;
CODE_03F7EE:        E5 42         SBC $42                   ;
CODE_03F7F0:        A5 78         LDA $78                   ;
CODE_03F7F2:        E5 43         SBC $43                   ;
CODE_03F7F4:        F0 0E         BEQ CODE_03F804           ;
CODE_03F7F6:        A9 01         LDA #$01                  ;
CODE_03F7F8:        8D D0 0C      STA $0CD0                 ;
CODE_03F7FB:        8D D8 0C      STA $0CD8                 ;
CODE_03F7FE:        8D E0 0C      STA $0CE0                 ;
CODE_03F801:        8D E8 0C      STA $0CE8                 ;
CODE_03F804:        AD 11 07      LDA $0711                 ;
CODE_03F807:        F0 2B         BEQ CODE_03F834           ;
CODE_03F809:        A0 00         LDY #$00                  ;
CODE_03F80B:        AD 89 07      LDA $0789                 ;
CODE_03F80E:        CD 11 07      CMP $0711                 ;
CODE_03F811:        8C 11 07      STY $0711                 ;
CODE_03F814:        B0 1E         BCS CODE_03F834           ;
CODE_03F816:        8D 11 07      STA $0711                 ;
CODE_03F819:        A5 28         LDA $28                   ;
CODE_03F81B:        C9 01         CMP #$01                  ;
CODE_03F81D:        F0 08         BEQ CODE_03F827           ;
CODE_03F81F:        A0 07         LDY #$07                  ;
CODE_03F821:        B9 2E F6      LDA $F62E,y               ;
CODE_03F824:        8D D5 06      STA $06D5                 ;
CODE_03F827:        A0 04         LDY #$04                  ;
CODE_03F829:        A5 5D         LDA $5D                   ;
CODE_03F82B:        05 0C         ORA $0C                   ;
CODE_03F82D:        F0 01         BEQ CODE_03F830           ;
CODE_03F82F:        88            DEY                       ;
CODE_03F830:        98            TYA                       ;
CODE_03F831:        20 58 FB      JSR CODE_03FB58           ;
CODE_03F834:        AD D0 03      LDA $03D0                 ;
CODE_03F837:        4A            LSR A                     ;
CODE_03F838:        4A            LSR A                     ;
CODE_03F839:        4A            LSR A                     ;
CODE_03F83A:        4A            LSR A                     ;
CODE_03F83B:        85 00         STA $00                   ;
CODE_03F83D:        A2 03         LDX #$03                  ;
CODE_03F83F:        AD 45 0B      LDA $0B45                 ;
CODE_03F842:        18            CLC                       ;
CODE_03F843:        69 18         ADC #$18                  ;
CODE_03F845:        A8            TAY                       ;
CODE_03F846:        A9 F0         LDA #$F0                  ;
CODE_03F848:        46 00         LSR $00                   ;
CODE_03F84A:        90 03         BCC CODE_03F84F           ;
CODE_03F84C:        20 42 EC      JSR CODE_03EC42           ;
CODE_03F84F:        98            TYA                       ;
CODE_03F850:        38            SEC                       ;
CODE_03F851:        E9 08         SBC #$08                  ;
CODE_03F853:        A8            TAY                       ;
CODE_03F854:        CA            DEX                       ;
CODE_03F855:        10 EF         BPL CODE_03F846           ;
CODE_03F857:        20 B6 FC      JSR CODE_03FCB6           ;
CODE_03F85A:        60            RTS                       ;

DATA_03F85B:        db $40,$01,$2E,$60,$FF,$04

CODE_03F861:        20 F3 85      JSR $85F3
CODE_03F864:        A9 D0         LDA #$D0                  ;
CODE_03F866:        8D D5 06      STA $06D5                 ;
CODE_03F869:        22 00 D8 04   JSL CODE_04D800           ;
CODE_03F86D:        A2 05         LDX #$05                  ;
CODE_03F86F:        BD 5B F8      LDA $F85B,x               ;
CODE_03F872:        95 02         STA $02,x                 ;
CODE_03F874:        CA            DEX                       ;
CODE_03F875:        10 F8         BPL CODE_03F86F           ;
CODE_03F877:        A2 B8         LDX #$B8                  ;
CODE_03F879:        A0 D0         LDY #$D0                  ;
CODE_03F87B:        20 7E FB      JSR CODE_03FB7E           ;
CODE_03F87E:        20 85 F8      JSR CODE_03F885           ;
CODE_03F881:        20 BD 9F      JSR CODE_039FBD           ;
CODE_03F884:        60            RTS                       ;

CODE_03F885:        DA            PHX                       ;
CODE_03F886:        5A            PHY                       ;
CODE_03F887:        A9 F0         LDA #$F0                  ;
CODE_03F889:        99 01 08      STA $0801,y               ;
CODE_03F88C:        99 01 09      STA $0901,y               ;
CODE_03F88F:        C8            INY                       ;
CODE_03F890:        D0 F7         BNE CODE_03F889           ;
CODE_03F892:        20 8F F9      JSR CODE_03F98F           ;
CODE_03F895:        A2 00         LDX #$00                  ;
CODE_03F897:        A9 30         LDA #$30                  ;
CODE_03F899:        85 E2         STA $E2                   ;
CODE_03F89B:        20 22 F9      JSR CODE_03F922           ;
CODE_03F89E:        C9 02         CMP #$02                  ;
CODE_03F8A0:        D0 39         BNE CODE_03F8DB           ;
CODE_03F8A2:        B5 1C         LDA $1C,x                 ;
CODE_03F8A4:        C9 16         CMP #$16                  ;
CODE_03F8A6:        F0 25         BEQ CODE_03F8CD           ;
CODE_03F8A8:        5A            PHY                       ;
CODE_03F8A9:        DA            PHX                       ;
CODE_03F8AA:        20 1E EF      JSR CODE_03EF1E           ;
CODE_03F8AD:        FA            PLX                       ;
CODE_03F8AE:        BD 46 0B      LDA $0B46,x               ;
CODE_03F8B1:        A8            TAY                       ;
CODE_03F8B2:        A9 00         LDA #$00                  ;
CODE_03F8B4:        99 00 0D      STA $0D00,y               ;
CODE_03F8B7:        99 04 0D      STA $0D04,y               ;
CODE_03F8BA:        99 08 0D      STA $0D08,y               ;
CODE_03F8BD:        99 0C 0D      STA $0D0C,y               ;
CODE_03F8C0:        99 10 0D      STA $0D10,y               ;
CODE_03F8C3:        99 14 0D      STA $0D14,y               ;
CODE_03F8C6:        A5 43         LDA $43                   ;
CODE_03F8C8:        95 79         STA $79,x                 ;
CODE_03F8CA:        7A            PLY                       ;
CODE_03F8CB:        80 05         BRA CODE_03F8D2           ;

CODE_03F8CD:        20 6E FA      JSR CODE_03FA6E           ;
CODE_03F8D0:        80 43         BRA CODE_03F915           ;

CODE_03F8D2:        B5 1C         LDA $1C,x                 ;
CODE_03F8D4:        C9 12         CMP #$12                  ;
CODE_03F8D6:        D0 03         BNE CODE_03F8DB           ;
CODE_03F8D8:        20 17 FA      JSR CODE_03FA17           ;
CODE_03F8DB:        C8            INY                       ;
CODE_03F8DC:        E8            INX                       ;
CODE_03F8DD:        E0 05         CPX #$05                  ;
CODE_03F8DF:        D0 BA         BNE CODE_03F89B           ;
CODE_03F8E1:        A5 5C         LDA $5C                   ;
CODE_03F8E3:        C9 03         CMP #$03                  ;
CODE_03F8E5:        F0 2E         BEQ CODE_03F915           ;
CODE_03F8E7:        A2 00         LDX #$00                  ;
CODE_03F8E9:        BD 02 09      LDA $0902,x               ;
CODE_03F8EC:        DD 06 09      CMP $0906,x               ;
CODE_03F8EF:        D0 12         BNE CODE_03F903           ;
CODE_03F8F1:        BD 03 09      LDA $0903,x               ;
CODE_03F8F4:        29 3F         AND #$3F                  ;
CODE_03F8F6:        9D 03 09      STA $0903,x               ;
CODE_03F8F9:        BD 07 09      LDA $0907,x               ;
CODE_03F8FC:        09 40         ORA #$40                  ;
CODE_03F8FE:        9D 07 09      STA $0907,x               ;
CODE_03F901:        80 06         BRA CODE_03F909           ;

CODE_03F903:        BD 07 09      LDA $0907,x               ;
CODE_03F906:        9D 03 09      STA $0903,x               ;
CODE_03F909:        E8            INX                       ;
CODE_03F90A:        E8            INX                       ;
CODE_03F90B:        E8            INX                       ;
CODE_03F90C:        E8            INX                       ;
CODE_03F90D:        E8            INX                       ;
CODE_03F90E:        E8            INX                       ;
CODE_03F90F:        E8            INX                       ;
CODE_03F910:        E8            INX                       ;
CODE_03F911:        E0 00         CPX #$00                  ;
CODE_03F913:        D0 D4         BNE CODE_03F8E9           ;
CODE_03F915:        A2 04         LDX #$04                  ;
CODE_03F917:        74 1C         STZ $1C,x                 ;
CODE_03F919:        CA            DEX                       ;
CODE_03F91A:        10 FB         BPL CODE_03F917           ;
CODE_03F91C:        9C 85 0E      STZ $0E85                 ;
CODE_03F91F:        7A            PLY                       ;
CODE_03F920:        FA            PLX                       ;
CODE_03F921:        60            RTS                       ;

CODE_03F922:        9C 85 0E      STZ $0E85                 ;
CODE_03F925:        AD FC 07      LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_03F928:        F0 09         BEQ CODE_03F933           ;
CODE_03F92A:        DA            PHX                       ;
CODE_03F92B:        BB            TYX                       ;
CODE_03F92C:        BF 41 EC 05   LDA $05EC41,x             ;
CODE_03F930:        FA            PLX                       ;
CODE_03F931:        80 07         BRA CODE_03F93A           ;

CODE_03F933:        DA            PHX                       ;
CODE_03F934:        BB            TYX                       ;
CODE_03F935:        BF 9C EB 05   LDA $05EB9C,x             ;
CODE_03F939:        FA            PLX                       ;
CODE_03F93A:        C9 FF         CMP #$FF                  ;
CODE_03F93C:        D0 0A         BNE CODE_03F948           ;
CODE_03F93E:        A5 E2         LDA $E2                   ;
CODE_03F940:        18            CLC                       ;
CODE_03F941:        69 18         ADC #$18                  ;
CODE_03F943:        85 E2         STA $E2                   ;
CODE_03F945:        4C 8E F9      JMP CODE_03F98E           ;

CODE_03F948:        9E BC 00      STZ $00BC,x               ;
CODE_03F94B:        95 1C         STA $1C,x                 ;
CODE_03F94D:        C9 0E         CMP #$0E                  ;
CODE_03F94F:        F0 14         BEQ CODE_03F965           ;
CODE_03F951:        C9 0F         CMP #$0F                  ;
CODE_03F953:        F0 10         BEQ CODE_03F965           ;
CODE_03F955:        C9 10         CMP #$10                  ;
CODE_03F957:        F0 0C         BEQ CODE_03F965           ;
CODE_03F959:        C9 14         CMP #$14                  ;
CODE_03F95B:        F0 08         BEQ CODE_03F965           ;
CODE_03F95D:        C9 08         CMP #$08                  ;
CODE_03F95F:        F0 04         BEQ CODE_03F965           ;
CODE_03F961:        A9 98         LDA #$98                  ;
CODE_03F963:        80 02         BRA CODE_03F967           ;

CODE_03F965:        A9 88         LDA #$88                  ;
CODE_03F967:        9D 38 02      STA $0238,x               ;
CODE_03F96A:        A5 E2         LDA $E2                   ;
CODE_03F96C:        18            CLC                       ;
CODE_03F96D:        69 18         ADC #$18                  ;
CODE_03F96F:        85 E2         STA $E2                   ;
CODE_03F971:        8D AE 03      STA $03AE                 ;
CODE_03F974:        A9 20         LDA #$20                  ;
CODE_03F976:        9D 57 02      STA $0257,x               ;
CODE_03F979:        DA            PHX                       ;
CODE_03F97A:        BB            TYX                       ;
CODE_03F97B:        BF 9C EB 05   LDA $05EB9C,x             ;
CODE_03F97F:        FA            PLX                       ;
CODE_03F980:        C9 05         CMP #$05                  ;
CODE_03F982:        D0 06         BNE CODE_03F98A           ;
CODE_03F984:        8D 85 0E      STA $0E85                 ;
CODE_03F987:        20 36 FB      JSR CODE_03FB36           ;
CODE_03F98A:        A9 02         LDA #$02                  ;
CODE_03F98C:        95 47         STA $47,x                 ;
CODE_03F98E:        60            RTS                       ;

CODE_03F98F:        AD 5F 07      LDA $075F                 ;
CODE_03F992:        0A            ASL A                     ;
CODE_03F993:        0A            ASL A                     ;
CODE_03F994:        18            CLC                       ;
CODE_03F995:        6D 5F 07      ADC $075F                 ;
CODE_03F998:        18            CLC                       ;
CODE_03F999:        6D 60 07      ADC $0760                 ;
CODE_03F99C:        AA            TAX                       ;
CODE_03F99D:        BF E6 EC 05   LDA $05ECE6,x             ;
CODE_03F9A1:        8D 22 0E      STA $0E22                 ;
CODE_03F9A4:        BF 13 ED 05   LDA $05ED13,x             ;
CODE_03F9A8:        8D 21 0E      STA $0E21                 ;
CODE_03F9AB:        AD 21 0E      LDA $0E21                 ;
CODE_03F9AE:        0A            ASL A                     ;
CODE_03F9AF:        0A            ASL A                     ;
CODE_03F9B0:        18            CLC                       ;
CODE_03F9B1:        6D 21 0E      ADC $0E21                 ;
CODE_03F9B4:        A8            TAY                       ;
CODE_03F9B5:        AD 1C 07      LDA $071C                 ;
CODE_03F9B8:        85 9C         STA $9C                   ;
CODE_03F9BA:        AD 1A 07      LDA $071A                 ;
CODE_03F9BD:        85 9D         STA $9D                   ;
CODE_03F9BF:        E6 9B         INC $9B                   ;
CODE_03F9C1:        9C 1A 07      STZ $071A                 ;
CODE_03F9C4:        9C 3F 07      STZ $073F                 ;
CODE_03F9C7:        9C FD 0E      STZ $0EFD                 ;
CODE_03F9CA:        9C FE 0E      STZ $0EFE                 ;
CODE_03F9CD:        9C EE 0E      STZ $0EEE                 ;
CODE_03F9D0:        9C EF 0E      STZ $0EEF                 ;
CODE_03F9D3:        9C 0D 21      STZ $210D                 ;
CODE_03F9D6:        9C 0D 21      STZ $210D                 ;
CODE_03F9D9:        9C 0F 21      STZ $210F                 ;
CODE_03F9DC:        9C 0F 21      STZ $210F                 ;
CODE_03F9DF:        9C 11 21      STZ $2111                 ;
CODE_03F9E2:        9C 11 21      STZ $2111                 ;
CODE_03F9E5:        60            RTS                       ;

DATA_03F9E6:        db $DC,$DC,$DD,$DD,$DE,$DE              ;immediate data table

CODE_03F9EC:        AD E6 F9      LDA $F9E6                 ;why the fuck
CODE_03F9EF:        8D 62 09      STA $0962                 ;don't they use
CODE_03F9F2:        AD E7 F9      LDA $F9E7                 ;immediate data?
CODE_03F9F5:        8D 66 09      STA $0966                 ;trying to make it easier for us ROM hackers
CODE_03F9F8:        AD E8 F9      LDA $F9E8                 ;to document SMAS?
CODE_03F9FB:        8D 6A 09      STA $096A                 ;
CODE_03F9FE:        AD E9 F9      LDA $F9E9                 ;
CODE_03FA01:        8D 6E 09      STA $096E                 ;
CODE_03FA04:        AD EA F9      LDA $F9EA                 ;
CODE_03FA07:        8D 72 09      STA $0972                 ;
CODE_03FA0A:        AD EB F9      LDA $F9EB                 ;
CODE_03FA0D:        8D 76 09      STA $0976                 ;
CODE_03FA10:        60            RTS                       ;

DATA_03FA11:        db $B9,$B8,$BB,$BA,$BC,$BC

CODE_03FA17:        5A            PHY                       ;
CODE_03FA18:        A9 03         LDA #$03                  ;
CODE_03FA1A:        85 03         STA $03                   ;
CODE_03FA1C:        BD 38 02      LDA $0238,x               ;
CODE_03FA1F:        38            SEC                       ;
CODE_03FA20:        E9 28         SBC #$28                  ;
CODE_03FA22:        9D 38 02      STA $0238,x               ;
CODE_03FA25:        64 E3         STZ $E3                   ;
CODE_03FA27:        A0 00         LDY #$00                  ;
CODE_03FA29:        AD AE 03      LDA $03AE                 ;
CODE_03FA2C:        99 90 09      STA $0990,y               ;
CODE_03FA2F:        18            CLC                       ;
CODE_03FA30:        69 08         ADC #$08                  ;
CODE_03FA32:        99 94 09      STA $0994,y               ;
CODE_03FA35:        BD 38 02      LDA $0238,x               ;
CODE_03FA38:        99 91 09      STA $0991,y               ;
CODE_03FA3B:        99 95 09      STA $0995,y               ;
CODE_03FA3E:        18            CLC                       ;
CODE_03FA3F:        69 08         ADC #$08                  ;
CODE_03FA41:        9D 38 02      STA $0238,x               ;
CODE_03FA44:        A9 2A         LDA #$2A                  ;
CODE_03FA46:        99 93 09      STA $0993,y               ;
CODE_03FA49:        99 97 09      STA $0997,y               ;
CODE_03FA4C:        DA            PHX                       ;
CODE_03FA4D:        A6 E3         LDX $E3                   ;
CODE_03FA4F:        BD 11 FA      LDA $FA11,x               ;
CODE_03FA52:        99 92 09      STA $0992,y               ;
CODE_03FA55:        BD 12 FA      LDA $FA12,x               ;
CODE_03FA58:        99 96 09      STA $0996,y               ;
CODE_03FA5B:        E6 E3         INC $E3                   ;
CODE_03FA5D:        E6 E3         INC $E3                   ;
CODE_03FA5F:        FA            PLX                       ;
CODE_03FA60:        C8            INY                       ;
CODE_03FA61:        C8            INY                       ;
CODE_03FA62:        C8            INY                       ;
CODE_03FA63:        C8            INY                       ;
CODE_03FA64:        C8            INY                       ;
CODE_03FA65:        C8            INY                       ;
CODE_03FA66:        C8            INY                       ;
CODE_03FA67:        C8            INY                       ;
CODE_03FA68:        C6 03         DEC $03                   ;
CODE_03FA6A:        D0 BD         BNE CODE_03FA29           ;
CODE_03FA6C:        7A            PLY                       ;
CODE_03FA6D:        60            RTS                       ;

CODE_03FA6E:        5A            PHY                       ;
CODE_03FA6F:        DA            PHX                       ;
CODE_03FA70:        BD 38 02      LDA $0238,x               ;
CODE_03FA73:        8D B9 03      STA $03B9                 ;
CODE_03FA76:        38            SEC                       ;
CODE_03FA77:        E9 08         SBC #$08                  ;
CODE_03FA79:        8D B9 03      STA $03B9                 ;
CODE_03FA7C:        AD AE 03      LDA $03AE                 ;
CODE_03FA7F:        38            SEC                       ;
CODE_03FA80:        E9 10         SBC #$10                  ;
CODE_03FA82:        8D AE 03      STA $03AE                 ;
CODE_03FA85:        A0 90         LDY #$90                  ;
CODE_03FA87:        A2 00         LDX #$00                  ;
CODE_03FA89:        AD AE 03      LDA $03AE                 ;
CODE_03FA8C:        99 00 09      STA $0900,y               ;
CODE_03FA8F:        99 08 09      STA $0908,y               ;
CODE_03FA92:        18            CLC                       ;
CODE_03FA93:        69 08         ADC #$08                  ;
CODE_03FA95:        99 10 09      STA $0910,y               ;
CODE_03FA98:        18            CLC                       ;
CODE_03FA99:        69 08         ADC #$08                  ;
CODE_03FA9B:        99 04 09      STA $0904,y               ;
CODE_03FA9E:        99 0C 09      STA $090C,y               ;
CODE_03FAA1:        99 14 09      STA $0914,y               ;
CODE_03FAA4:        AD B9 03      LDA $03B9                 ;
CODE_03FAA7:        99 01 09      STA $0901,y               ;
CODE_03FAAA:        99 05 09      STA $0905,y               ;
CODE_03FAAD:        18            CLC                       ;
CODE_03FAAE:        69 10         ADC #$10                  ;
CODE_03FAB0:        99 09 09      STA $0909,y               ;
CODE_03FAB3:        99 0D 09      STA $090D,y               ;
CODE_03FAB6:        38            SEC                       ;
CODE_03FAB7:        E9 18         SBC #$18                  ;
CODE_03FAB9:        99 11 09      STA $0911,y               ;
CODE_03FABC:        99 15 09      STA $0915,y               ;
CODE_03FABF:        A9 00         LDA #$00                  ;
CODE_03FAC1:        99 10 0C      STA $0C10,y               ;
CODE_03FAC4:        99 14 0C      STA $0C14,y               ;
CODE_03FAC7:        A9 02         LDA #$02                  ;
CODE_03FAC9:        99 00 0D      STA $0D00,y               ;
CODE_03FACC:        99 04 0D      STA $0D04,y               ;
CODE_03FACF:        99 08 0D      STA $0D08,y               ;
CODE_03FAD2:        99 0C 0D      STA $0D0C,y               ;
CODE_03FAD5:        A9 61         LDA #$61                  ;
CODE_03FAD7:        99 03 09      STA $0903,y               ;
CODE_03FADA:        99 07 09      STA $0907,y               ;
CODE_03FADD:        99 0B 09      STA $090B,y               ;
CODE_03FAE0:        99 0F 09      STA $090F,y               ;
CODE_03FAE3:        99 13 09      STA $0913,y               ;
CODE_03FAE6:        99 17 09      STA $0917,y               ;
CODE_03FAE9:        A9 C5         LDA #$C5                  ;
CODE_03FAEB:        99 12 09      STA $0912,y               ;
CODE_03FAEE:        A9 C4         LDA #$C4                  ;
CODE_03FAF0:        99 16 09      STA $0916,y               ;
CODE_03FAF3:        A9 EE         LDA #$EE                  ;
CODE_03FAF5:        99 02 09      STA $0902,y               ;
CODE_03FAF8:        A9 C0         LDA #$C0                  ;
CODE_03FAFA:        99 06 09      STA $0906,y               ;
CODE_03FAFD:        A9 E2         LDA #$E2                  ;
CODE_03FAFF:        99 0A 09      STA $090A,y               ;
CODE_03FB02:        A9 E0         LDA #$E0                  ;
CODE_03FB04:        99 0E 09      STA $090E,y               ;
CODE_03FB07:        A9 70         LDA #$70                  ;
CODE_03FB09:        8D F0 09      STA $09F0                 ;
CODE_03FB0C:        A9 78         LDA #$78                  ;
CODE_03FB0E:        8D F4 09      STA $09F4                 ;
CODE_03FB11:        A9 98         LDA #$98                  ;
CODE_03FB13:        8D F1 09      STA $09F1                 ;
CODE_03FB16:        8D F5 09      STA $09F5                 ;
CODE_03FB19:        A9 86         LDA #$86                  ;
CODE_03FB1B:        8D F2 09      STA $09F2                 ;
CODE_03FB1E:        A9 87         LDA #$87                  ;
CODE_03FB20:        8D F6 09      STA $09F6                 ;
CODE_03FB23:        A9 21         LDA #$21                  ;
CODE_03FB25:        8D F3 09      STA $09F3                 ;
CODE_03FB28:        8D F7 09      STA $09F7                 ;
CODE_03FB2B:        A9 02         LDA #$02                  ;
CODE_03FB2D:        8D F0 0D      STA $0DF0                 ;
CODE_03FB30:        8D F4 0D      STA $0DF4                 ;
CODE_03FB33:        FA            PLX                       ;
CODE_03FB34:        7A            PLY                       ;
CODE_03FB35:        60            RTS                       ;

CODE_03FB36:        BD 38 02      LDA $0238,x               ;
CODE_03FB39:        38            SEC                       ;
CODE_03FB3A:        E9 0A         SBC #$0A                  ;
CODE_03FB3C:        8D 81 08      STA $0881                 ;
CODE_03FB3F:        AD AE 03      LDA $03AE                 ;
CODE_03FB42:        18            CLC                       ;
CODE_03FB43:        69 03         ADC #$03                  ;
CODE_03FB45:        8D 80 08      STA $0880                 ;
CODE_03FB48:        A9 2A         LDA #$2A                  ;
CODE_03FB4A:        8D 83 08      STA $0883                 ;
CODE_03FB4D:        A9 44         LDA #$44                  ;
CODE_03FB4F:        8D 82 08      STA $0882                 ;
CODE_03FB52:        A9 02         LDA #$02                  ;
CODE_03FB54:        8D 80 0C      STA $0C80                 ;
CODE_03FB57:        60            RTS                       ;

CODE_03FB58:        85 07         STA $07                   ;
CODE_03FB5A:        AD AD 03      LDA $03AD                 ;
CODE_03FB5D:        8D 55 07      STA $0755                 ;
CODE_03FB60:        85 05         STA $05                   ;
CODE_03FB62:        AD B8 03      LDA $03B8                 ;
CODE_03FB65:        85 02         STA $02                   ;
CODE_03FB67:        AD 02 02      LDA $0202                 ;
CODE_03FB6A:        85 03         STA $03                   ;
CODE_03FB6C:        22 00 D8 04   JSL CODE_04D800           ;
CODE_03FB70:        AD D5 06      LDA $06D5                 ;
CODE_03FB73:        29 07         AND #$07                  ;
CODE_03FB75:        AA            TAX                       ;
CODE_03FB76:        AD 56 02      LDA $0256                 ;
CODE_03FB79:        85 04         STA $04                   ;
CODE_03FB7B:        AC 45 0B      LDY $0B45                 ;
CODE_03FB7E:        BD 3E F6      LDA $F63E,x               ;
CODE_03FB81:        85 00         STA $00                   ;
CODE_03FB83:        BD 3F F6      LDA $F63F,x               ;
CODE_03FB86:        20 0E F3      JSR CODE_03F30E           ;
CODE_03FB89:        C6 07         DEC $07                   ;
CODE_03FB8B:        D0 F1         BNE CODE_03FB7E           ;
CODE_03FB8D:        A5 05         LDA $05                   ;
CODE_03FB8F:        C9 F8         CMP #$F8                  ;
CODE_03FB91:        90 0E         BCC CODE_03FBA1           ;
CODE_03FB93:        A9 01         LDA #$01                  ;
CODE_03FB95:        8D D0 0C      STA $0CD0                 ;
CODE_03FB98:        8D D8 0C      STA $0CD8                 ;
CODE_03FB9B:        8D E0 0C      STA $0CE0                 ;
CODE_03FB9E:        8D E8 0C      STA $0CE8                 ;
CODE_03FBA1:        60            RTS                       ;

CODE_03FBA2:        A5 28         LDA $28                   ;
CODE_03FBA4:        C9 03         CMP #$03                  ;
CODE_03FBA6:        F0 4E         BEQ CODE_03FBF6           ;
CODE_03FBA8:        C9 02         CMP #$02                  ;
CODE_03FBAA:        F0 3C         BEQ CODE_03FBE8           ;
CODE_03FBAC:        C9 01         CMP #$01                  ;
CODE_03FBAE:        D0 10         BNE CODE_03FBC0           ;
CODE_03FBB0:        AD 04 07      LDA $0704                 ;
CODE_03FBB3:        D0 4C         BNE CODE_03FC01           ;
CODE_03FBB5:        A0 06         LDY #$06                  ;
CODE_03FBB7:        AD 14 07      LDA $0714                 ;
CODE_03FBBA:        D0 22         BNE CODE_03FBDE           ;
CODE_03FBBC:        A0 00         LDY #$00                  ;
CODE_03FBBE:        80 1E         BRA CODE_03FBDE           ;

CODE_03FBC0:        A0 06         LDY #$06                  ;
CODE_03FBC2:        AD 14 07      LDA $0714                 ;
CODE_03FBC5:        D0 17         BNE CODE_03FBDE           ;
CODE_03FBC7:        A0 02         LDY #$02                  ;
CODE_03FBC9:        A5 5D         LDA $5D                   ;
CODE_03FBCB:        05 0C         ORA $0C                   ;
CODE_03FBCD:        F0 0F         BEQ CODE_03FBDE           ;
CODE_03FBCF:        AD 00 07      LDA $0700                 ;
CODE_03FBD2:        C9 09         CMP #$09                  ;
CODE_03FBD4:        90 19         BCC CODE_03FBEF           ;
CODE_03FBD6:        A5 46         LDA $46                   ;
CODE_03FBD8:        2D 02 02      AND $0202                 ;
CODE_03FBDB:        D0 12         BNE CODE_03FBEF           ;
CODE_03FBDD:        C8            INY                       ;
CODE_03FBDE:        20 41 FC      JSR CODE_03FC41           ;
CODE_03FBE1:        9C 0D 07      STZ $070D                 ;
CODE_03FBE4:        B9 2E F6      LDA $F62E,y               ;
CODE_03FBE7:        60            RTS                       ;

CODE_03FBE8:        A0 04         LDY #$04                  ;
CODE_03FBEA:        20 41 FC      JSR CODE_03FC41           ;
CODE_03FBED:        80 24         BRA CODE_03FC13           ;

CODE_03FBEF:        A0 04         LDY #$04                  ;
CODE_03FBF1:        20 41 FC      JSR CODE_03FC41           ;
CODE_03FBF4:        80 23         BRA CODE_03FC19           ;

CODE_03FBF6:        A0 05         LDY #$05                  ;
CODE_03FBF8:        A5 A0         LDA $A0                   ;
CODE_03FBFA:        F0 E2         BEQ CODE_03FBDE           ;
CODE_03FBFC:        20 41 FC      JSR CODE_03FC41           ;
CODE_03FBFF:        80 1C         BRA CODE_03FC1D           ;

CODE_03FC01:        A0 01         LDY #$01                  ;
CODE_03FC03:        20 41 FC      JSR CODE_03FC41           ;
CODE_03FC06:        AD 8A 07      LDA $078A                 ;
CODE_03FC09:        0D 0D 07      ORA $070D                 ;
CODE_03FC0C:        D0 0B         BNE CODE_03FC19           ;
CODE_03FC0E:        A5 0A         LDA $0A                   ;
CODE_03FC10:        0A            ASL A                     ;
CODE_03FC11:        B0 06         BCS CODE_03FC19           ;
CODE_03FC13:        AD 0D 07      LDA $070D                 ;
CODE_03FC16:        4C 80 FC      JMP CODE_03FC80           ;

CODE_03FC19:        A9 03         LDA #$03                  ;
CODE_03FC1B:        80 02         BRA CODE_03FC1F           ;

CODE_03FC1D:        A9 02         LDA #$02                  ;
CODE_03FC1F:        85 00         STA $00                   ;
CODE_03FC21:        20 13 FC      JSR CODE_03FC13           ;
CODE_03FC24:        48            PHA                       ;
CODE_03FC25:        AD 89 07      LDA $0789                 ;
CODE_03FC28:        D0 15         BNE CODE_03FC3F           ;
CODE_03FC2A:        AD 0C 07      LDA $070C                 ;
CODE_03FC2D:        8D 89 07      STA $0789                 ;
CODE_03FC30:        AD 0D 07      LDA $070D                 ;
CODE_03FC33:        18            CLC                       ;
CODE_03FC34:        69 01         ADC #$01                  ;
CODE_03FC36:        C5 00         CMP $00                   ;
CODE_03FC38:        90 02         BCC CODE_03FC3C           ;
CODE_03FC3A:        A9 00         LDA #$00                  ;
CODE_03FC3C:        8D 0D 07      STA $070D                 ;
CODE_03FC3F:        68            PLA                       ;
CODE_03FC40:        60            RTS                       ;

CODE_03FC41:        AD 54 07      LDA $0754                 ;
CODE_03FC44:        F0 05         BEQ CODE_03FC4B           ;
CODE_03FC46:        98            TYA                       ;
CODE_03FC47:        18            CLC                       ;
CODE_03FC48:        69 08         ADC #$08                  ;
CODE_03FC4A:        A8            TAY                       ;
CODE_03FC4B:        60            RTS                       ;

DATA_03FC4C:        db $00,$01,$00,$01,$00,$01,$02,$00
                    db $01,$02,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00

CODE_03FC60:        AC 0D 07      LDY $070D                 ;
CODE_03FC63:        A5 09         LDA $09                   ;
CODE_03FC65:        29 03         AND #$03                  ;
CODE_03FC67:        D0 0D         BNE CODE_03FC76           ;
CODE_03FC69:        C8            INY                       ;
CODE_03FC6A:        C0 0A         CPY #$0A                  ;
CODE_03FC6C:        90 05         BCC CODE_03FC73           ;
CODE_03FC6E:        A0 00         LDY #$00                  ;
CODE_03FC70:        8C 0B 07      STY $070B                 ;
CODE_03FC73:        8C 0D 07      STY $070D                 ;
CODE_03FC76:        AD 54 07      LDA $0754                 ;
CODE_03FC79:        D0 0C         BNE CODE_03FC87           ;
CODE_03FC7B:        B9 4C FC      LDA $FC4C,y               ;
CODE_03FC7E:        A0 0F         LDY #$0F                  ;
CODE_03FC80:        0A            ASL A                     ;
CODE_03FC81:        0A            ASL A                     ;
CODE_03FC82:        0A            ASL A                     ;
CODE_03FC83:        79 2E F6      ADC $F62E,y               ;
CODE_03FC86:        60            RTS                       ;

CODE_03FC87:        98            TYA                       ;
CODE_03FC88:        18            CLC                       ;
CODE_03FC89:        69 0A         ADC #$0A                  ;
CODE_03FC8B:        AA            TAX                       ;
CODE_03FC8C:        A0 09         LDY #$09                  ;
CODE_03FC8E:        BD 4C FC      LDA $FC4C,x               ;
CODE_03FC91:        D0 02         BNE CODE_03FC95           ;
CODE_03FC93:        A0 01         LDY #$01                  ;
CODE_03FC95:        B9 2E F6      LDA $F62E,y               ;
CODE_03FC98:        60            RTS                       ;

CODE_03FC99:        AC 45 0B      LDY $0B45                 ;
CODE_03FC9C:        A5 0F         LDA $0F                   ;
CODE_03FC9E:        C9 0B         CMP #$0B                  ;
CODE_03FCA0:        F0 13         BEQ CODE_03FCB5           ;
CODE_03FCA2:        AD D5 06      LDA $06D5                 ;
CODE_03FCA5:        C9 50         CMP #$50                  ;
CODE_03FCA7:        F0 0C         BEQ CODE_03FCB5           ;
CODE_03FCA9:        C9 B8         CMP #$B8                  ;
CODE_03FCAB:        F0 08         BEQ CODE_03FCB5           ;
CODE_03FCAD:        C9 C0         CMP #$C0                  ;
CODE_03FCAF:        F0 04         BEQ CODE_03FCB5           ;
CODE_03FCB1:        C9 C8         CMP #$C8                  ;
CODE_03FCB3:        D0 00         BNE CODE_03FCB5           ;
CODE_03FCB5:        60            RTS                       ;

CODE_03FCB6:        AD 4E 0E      LDA $0E4E                 ;
CODE_03FCB9:        F0 57         BEQ CODE_03FD12           ;
CODE_03FCBB:        A2 00         LDX #$00                  ;
CODE_03FCBD:        BD D0 08      LDA $08D0,x               ;
CODE_03FCC0:        9D E0 09      STA $09E0,x               ;
CODE_03FCC3:        E8            INX                       ;
CODE_03FCC4:        E0 20         CPX #$20                  ;
CODE_03FCC6:        D0 F5         BNE CODE_03FCBD           ;
CODE_03FCC8:        A9 F0         LDA #$F0                  ;
CODE_03FCCA:        8D D1 08      STA $08D1                 ;
CODE_03FCCD:        8D D5 08      STA $08D5                 ;
CODE_03FCD0:        8D D9 08      STA $08D9                 ;
CODE_03FCD3:        8D DD 08      STA $08DD                 ;
CODE_03FCD6:        8D E1 08      STA $08E1                 ;
CODE_03FCD9:        8D E5 08      STA $08E5                 ;
CODE_03FCDC:        8D E9 08      STA $08E9                 ;
CODE_03FCDF:        8D ED 08      STA $08ED                 ;
CODE_03FCE2:        AD D0 0C      LDA $0CD0                 ;
CODE_03FCE5:        8D E0 0D      STA $0DE0                 ;
CODE_03FCE8:        AD D4 0C      LDA $0CD4                 ;
CODE_03FCEB:        8D E4 0D      STA $0DE4                 ;
CODE_03FCEE:        AD D8 0C      LDA $0CD8                 ;
CODE_03FCF1:        8D E8 0D      STA $0DE8                 ;
CODE_03FCF4:        AD DC 0C      LDA $0CDC                 ;
CODE_03FCF7:        8D EC 0D      STA $0DEC                 ;
CODE_03FCFA:        AD E0 0C      LDA $0CE0                 ;
CODE_03FCFD:        8D F0 0D      STA $0DF0                 ;
CODE_03FD00:        AD E4 0C      LDA $0CE4                 ;
CODE_03FD03:        8D F4 0D      STA $0DF4                 ;
CODE_03FD06:        AD E8 0C      LDA $0CE8                 ;
CODE_03FD09:        8D F8 0D      STA $0DF8                 ;
CODE_03FD0C:        AD EC 0C      LDA $0CEC                 ;
CODE_03FD0F:        8D FC 0D      STA $0DFC                 ;
CODE_03FD12:        60            RTS                       ;

CODE_03FD13:        A2 00         LDX #$00                  ;
CODE_03FD15:        A0 00         LDY #$00                  ;
CODE_03FD17:        4C 2A FD      JMP CODE_03FD2A           ;

CODE_03FD1A:        A0 01         LDY #$01                  ;
CODE_03FD1C:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FD1F:        A0 03         LDY #$03                  ;
CODE_03FD21:        80 07         BRA CODE_03FD2A           ;

CODE_03FD23:        A0 00         LDY #$00                  ;
CODE_03FD25:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FD28:        A0 02         LDY #$02                  ;
CODE_03FD2A:        20 58 FD      JSR CODE_03FD58           ;
CODE_03FD2D:        A6 9E         LDX $9E                   ;
CODE_03FD2F:        60            RTS                       ;

CODE_03FD30:        A0 02         LDY #$02                  ;
CODE_03FD32:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FD35:        A0 06         LDY #$06                  ;
CODE_03FD37:        80 F1         BRA CODE_03FD2A           ;

CODE_03FD39:        A9 01         LDA #$01                  ;X = sprite index.
CODE_03FD3B:        A0 01         LDY #$01                  ;
CODE_03FD3D:        4C 4C FD      JMP CODE_03FD4C           ;

CODE_03FD40:        A9 0D         LDA #$0D                  ;
CODE_03FD42:        A0 04         LDY #$04                  ;
CODE_03FD44:        20 4C FD      JSR CODE_03FD4C           ;
CODE_03FD47:        E8            INX                       ;
CODE_03FD48:        E8            INX                       ;
CODE_03FD49:        A9 0D         LDA #$0D                  ;
CODE_03FD4B:        C8            INY                       ;
CODE_03FD4C:        86 00         STX $00                   ;
CODE_03FD4E:        18            CLC                       ;
CODE_03FD4F:        65 00         ADC $00                   ;
CODE_03FD51:        AA            TAX                       ;
CODE_03FD52:        20 58 FD      JSR CODE_03FD58           ;
CODE_03FD55:        A6 9E         LDX $9E                   ;
CODE_03FD57:        60            RTS                       ;

CODE_03FD58:        BD 37 02      LDA $0237,x               ;
CODE_03FD5B:        99 B8 03      STA $03B8,y               ;
CODE_03FD5E:        A5 0E         LDA $0E                   ;
CODE_03FD60:        F0 0C         BEQ CODE_03FD6E           ;
CODE_03FD62:        AD 19 02      LDA $0219                 ;
CODE_03FD65:        D0 07         BNE CODE_03FD6E           ;
CODE_03FD67:        A9 28         LDA #$28                  ;
CODE_03FD69:        8D 19 02      STA $0219                 ;
CODE_03FD6C:        80 12         BRA CODE_03FD80           ;

CODE_03FD6E:        BD 19 02      LDA $0219,x               ;
CODE_03FD71:        38            SEC                       ;
CODE_03FD72:        ED 1C 07      SBC $071C                 ;
CODE_03FD75:        99 AD 03      STA $03AD,y               ;
CODE_03FD78:        B5 78         LDA $78,x                 ;
CODE_03FD7A:        ED 1A 07      SBC $071A                 ;
CODE_03FD7D:        99 C1 03      STA $03C1,y               ;
CODE_03FD80:        5A            PHY                       ;
CODE_03FD81:        98            TYA                       ;
CODE_03FD82:        0A            ASL A                     ;
CODE_03FD83:        A8            TAY                       ;
CODE_03FD84:        BD 19 02      LDA $0219,x               ;
CODE_03FD87:        85 E4         STA $E4                   ;
CODE_03FD89:        BD 78 00      LDA $0078,x               ;
CODE_03FD8C:        85 E5         STA $E5                   ;
CODE_03FD8E:        C2 20         REP #$20                  ;
CODE_03FD90:        A5 E4         LDA $E4                   ;
CODE_03FD92:        38            SEC                       ;
CODE_03FD93:        E5 42         SBC $42                   ;
CODE_03FD95:        99 87 0E      STA $0E87,y               ;
CODE_03FD98:        E2 20         SEP #$20                  ;
CODE_03FD9A:        7A            PLY                       ;
CODE_03FD9B:        60            RTS                       ;

CODE_03FD9C:        A2 00         LDX #$00                  ;
CODE_03FD9E:        A0 00         LDY #$00                  ;
CODE_03FDA0:        4C DB FD      JMP CODE_03FDDB           ;

CODE_03FDA3:        A0 00         LDY #$00                  ;
CODE_03FDA5:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FDA8:        A0 02         LDY #$02                  ;
CODE_03FDAA:        4C DB FD      JMP CODE_03FDDB           ;

CODE_03FDAD:        A0 01         LDY #$01                  ;
CODE_03FDAF:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FDB2:        A0 03         LDY #$03                  ;
CODE_03FDB4:        4C DB FD      JMP CODE_03FDDB           ;

CODE_03FDB7:        A0 02         LDY #$02                  ;
CODE_03FDB9:        20 C4 FD      JSR CODE_03FDC4           ;
CODE_03FDBC:        A0 06         LDY #$06                  ;
CODE_03FDBE:        4C DB FD      JMP CODE_03FDDB           ;

DATA_03FDC1:        db $0B,$1A,$11

CODE_03FDC4:        8A            TXA
CODE_03FDC5:        18            CLC                       ;
CODE_03FDC6:        79 C1 FD      ADC $FDC1,y               ;
CODE_03FDC9:        AA            TAX                       ;
CODE_03FDCA:        60            RTS                       ;

CODE_03FDCB:        A9 01         LDA #$01                  ;
CODE_03FDCD:        A0 01         LDY #$01                  ;
CODE_03FDCF:        80 04         BRA CODE_03FDD5           ;

CODE_03FDD1:        A9 0D         LDA #$0D                  ;
CODE_03FDD3:        A0 04         LDY #$04                  ;
CODE_03FDD5:        86 00         STX $00                   ;Store current sprite index into $00
CODE_03FDD7:        18            CLC                       ;
CODE_03FDD8:        65 00         ADC $00                   ;
CODE_03FDDA:        AA            TAX                       ;
CODE_03FDDB:        98            TYA                       ;
CODE_03FDDC:        48            PHA                       ;
CODE_03FDDD:        20 FF FD      JSR CODE_03FDFF           ;
CODE_03FDE0:        0A            ASL A                     ;
CODE_03FDE1:        0A            ASL A                     ;
CODE_03FDE2:        0A            ASL A                     ;
CODE_03FDE3:        0A            ASL A                     ;
CODE_03FDE4:        05 00         ORA $00                   ;
CODE_03FDE6:        85 00         STA $00                   ;
CODE_03FDE8:        68            PLA                       ;
CODE_03FDE9:        A8            TAY                       ;
CODE_03FDEA:        A5 00         LDA $00                   ;
CODE_03FDEC:        99 D0 03      STA $03D0,y               ;
CODE_03FDEF:        4A            LSR A                     ;
CODE_03FDF0:        4A            LSR A                     ;
CODE_03FDF1:        48            PHA                       ;
CODE_03FDF2:        29 01         AND #$01                  ;
CODE_03FDF4:        99 08 0E      STA $0E08,y               ;
CODE_03FDF7:        68            PLA                       ;
CODE_03FDF8:        4A            LSR A                     ;
CODE_03FDF9:        99 00 0E      STA $0E00,y               ;
CODE_03FDFC:        A6 9E         LDX $9E                   ;
CODE_03FDFE:        60            RTS                       ;

CODE_03FDFF:        20 1E FE      JSR CODE_03FE1E           ;
CODE_03FE02:        4A            LSR A                     ;
CODE_03FE03:        4A            LSR A                     ;
CODE_03FE04:        4A            LSR A                     ;
CODE_03FE05:        4A            LSR A                     ;
CODE_03FE06:        85 00         STA $00                   ;
CODE_03FE08:        4C 62 FE      JMP CODE_03FE62           ;

DATA_03FE0B:        db $7F,$3F,$1F,$0F,$07,$03,$01,$00
                    db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_03FE1B:        db $07,$0F,$07

CODE_03FE1E:        86 04         STX $04                   ;
CODE_03FE20:        A0 01         LDY #$01                  ;
CODE_03FE22:        B9 1C 07      LDA $071C,y               ;
CODE_03FE25:        38            SEC                       ;
CODE_03FE26:        FD 19 02      SBC $0219,x               ;
CODE_03FE29:        85 07         STA $07                   ;
CODE_03FE2B:        B9 1A 07      LDA $071A,y               ;
CODE_03FE2E:        F5 78         SBC $78,x                 ;
CODE_03FE30:        BE 1B FE      LDX $FE1B,y               ;
CODE_03FE33:        C9 00         CMP #$00                  ;
CODE_03FE35:        30 10         BMI CODE_03FE47           ;
CODE_03FE37:        BE 1C FE      LDX $FE1C,y               ;
CODE_03FE3A:        C9 01         CMP #$01                  ;
CODE_03FE3C:        10 09         BPL CODE_03FE47           ;
CODE_03FE3E:        A9 38         LDA #$38                  ;
CODE_03FE40:        85 06         STA $06                   ;
CODE_03FE42:        A9 08         LDA #$08                  ;
CODE_03FE44:        20 97 FE      JSR CODE_03FE97           ;
CODE_03FE47:        BD 0B FE      LDA $FE0B,x               ;
CODE_03FE4A:        A6 04         LDX $04                   ;
CODE_03FE4C:        C9 00         CMP #$00                  ;
CODE_03FE4E:        D0 03         BNE CODE_03FE53           ;
CODE_03FE50:        88            DEY                       ;
CODE_03FE51:        10 CF         BPL CODE_03FE22           ;
CODE_03FE53:        60            RTS                       ;

DATA_03FE54:        db $00,$08,$0C,$0E,$0F,$07,$03,$01
                    db $00

DATA_03FE5D:        db $04,$00,$04

DATA_03FE60:        db $FF,$00

CODE_03FE62:        86 04         STX $04                   ;
CODE_03FE64:        A0 01         LDY #$01                  ;
CODE_03FE66:        B9 60 FE      LDA $FE60,y               ;
CODE_03FE69:        38            SEC                       ;
CODE_03FE6A:        FD 37 02      SBC $0237,x               ;
CODE_03FE6D:        85 07         STA $07                   ;
CODE_03FE6F:        A9 01         LDA #$01                  ;
CODE_03FE71:        F5 BB         SBC $BB,x                 ;
CODE_03FE73:        BE 5D FE      LDX $FE5D,y               ;
CODE_03FE76:        C9 00         CMP #$00                  ;
CODE_03FE78:        30 10         BMI CODE_03FE8A           ;
CODE_03FE7A:        BE 5E FE      LDX $FE5E,y               ;
CODE_03FE7D:        C9 01         CMP #$01                  ;
CODE_03FE7F:        10 09         BPL CODE_03FE8A           ;
CODE_03FE81:        A9 20         LDA #$20                  ;
CODE_03FE83:        85 06         STA $06                   ;
CODE_03FE85:        A9 04         LDA #$04                  ;
CODE_03FE87:        20 97 FE      JSR CODE_03FE97           ;
CODE_03FE8A:        BD 54 FE      LDA $FE54,x               ;
CODE_03FE8D:        A6 04         LDX $04                   ;
CODE_03FE8F:        C9 00         CMP #$00                  ;
CODE_03FE91:        D0 03         BNE CODE_03FE96           ;
CODE_03FE93:        88            DEY                       ;
CODE_03FE94:        10 D0         BPL CODE_03FE66           ;
CODE_03FE96:        60            RTS                       ;

CODE_03FE97:        85 05         STA $05                   ;
CODE_03FE99:        A5 07         LDA $07                   ;
CODE_03FE9B:        C5 06         CMP $06                   ;
CODE_03FE9D:        B0 0C         BCS CODE_03FEAB           ;
CODE_03FE9F:        4A            LSR A                     ;
CODE_03FEA0:        4A            LSR A                     ;
CODE_03FEA1:        4A            LSR A                     ;
CODE_03FEA2:        29 07         AND #$07                  ;
CODE_03FEA4:        C0 01         CPY #$01                  ;
CODE_03FEA6:        B0 02         BCS CODE_03FEAA           ;
CODE_03FEA8:        65 05         ADC $05                   ;
CODE_03FEAA:        AA            TAX                       ;
CODE_03FEAB:        60            RTS                       ;

CODE_03FEAC:        B5 79         LDA $79,x                 ;
CODE_03FEAE:        8D 15 0E      STA $0E15                 ;
CODE_03FEB1:        BD 1A 02      LDA $021A,x               ;
CODE_03FEB4:        8D 14 0E      STA $0E14                 ;
CODE_03FEB7:        60            RTS                       ;

CODE_03FEB8:        AD 17 0E      LDA $0E17                 ;
CODE_03FEBB:        8D 15 0E      STA $0E15                 ;
CODE_03FEBE:        AD 16 0E      LDA $0E16                 ;
CODE_03FEC1:        8D 14 0E      STA $0E14                 ;
CODE_03FEC4:        60            RTS                       ;

CODE_03FEC5:        A9 06         LDA #$06                  ;
CODE_03FEC7:        85 04         STA $04                   ;
CODE_03FEC9:        C2 20         REP #$20                  ;
CODE_03FECB:        AD 14 0E      LDA $0E14                 ;
CODE_03FECE:        38            SEC                       ;
CODE_03FECF:        E5 42         SBC $42                   ;
CODE_03FED1:        8D 12 0E      STA $0E12                 ;
CODE_03FED4:        E2 20         SEP #$20                  ;
CODE_03FED6:        AD 13 0E      LDA $0E13                 ;
CODE_03FED9:        D0 04         BNE CODE_03FEDF           ;
CODE_03FEDB:        A9 00         LDA #$00                  ;
CODE_03FEDD:        80 02         BRA CODE_03FEE1           ;

CODE_03FEDF:        A9 01         LDA #$01                  ;
CODE_03FEE1:        99 00 0D      STA $0D00,y               ;
CODE_03FEE4:        60            RTS                       ;

CODE_03FEE5:        C2 20         REP #$20                  ;
CODE_03FEE7:        AD 14 0E      LDA $0E14                 ;
CODE_03FEEA:        38            SEC                       ;
CODE_03FEEB:        E5 42         SBC $42                   ;
CODE_03FEED:        8D 12 0E      STA $0E12                 ;
CODE_03FEF0:        E2 20         SEP #$20                  ;
CODE_03FEF2:        AD 13 0E      LDA $0E13                 ;
CODE_03FEF5:        D0 04         BNE CODE_03FEFB           ;
CODE_03FEF7:        A9 00         LDA #$00                  ;
CODE_03FEF9:        80 02         BRA CODE_03FEFD           ;

CODE_03FEFB:        A9 01         LDA #$01                  ;
CODE_03FEFD:        99 10 0D      STA $0D10,y               ;
CODE_03FF00:        99 08 0D      STA $0D08,y               ;
CODE_03FF03:        99 00 0D      STA $0D00,y               ;
CODE_03FF06:        60            RTS                       ;

CODE_03FF07:        C2 20         REP #$20                  ;
CODE_03FF09:        AD 14 0E      LDA $0E14                 ;
CODE_03FF0C:        38            SEC                       ;
CODE_03FF0D:        E5 42         SBC $42                   ;
CODE_03FF0F:        8D 12 0E      STA $0E12                 ;
CODE_03FF12:        E2 20         SEP #$20                  ;
CODE_03FF14:        AD 13 0E      LDA $0E13                 ;
CODE_03FF17:        D0 04         BNE CODE_03FF1D           ;
CODE_03FF19:        A9 00         LDA #$00                  ;
CODE_03FF1B:        80 02         BRA CODE_03FF1F           ;

CODE_03FF1D:        A9 01         LDA #$01                  ;
CODE_03FF1F:        99 08 0C      STA $0C08,y               ;
CODE_03FF22:        99 00 0C      STA $0C00,y               ;
CODE_03FF25:        60            RTS                       ;

CODE_03FF26:        99 00 0C      STA $0C00,y               ;
CODE_03FF29:        99 08 0C      STA $0C08,y               ;
CODE_03FF2C:        60            RTS                       ;

CODE_03FF2D:        C2 20         REP #$20                  ;
CODE_03FF2F:        68            PLA                       ;
CODE_03FF30:        18            CLC                       ;
CODE_03FF31:        65 04         ADC $04                   ;
CODE_03FF33:        85 04         STA $04                   ;
CODE_03FF35:        48            PHA                       ;
CODE_03FF36:        E2 20         SEP #$20                  ;
CODE_03FF38:        A9 01         LDA #$01                  ;
CODE_03FF3A:        60            RTS                       ;

CODE_03FF3B:        C2 20         REP #$20                  ;
CODE_03FF3D:        AD 14 0E      LDA $0E14                 ;
CODE_03FF40:        18            CLC                       ;
CODE_03FF41:        69 08 00      ADC #$0008                ;
CODE_03FF44:        8D 14 0E      STA $0E14                 ;
CODE_03FF47:        E2 20         SEP #$20                  ;
CODE_03FF49:        C8            INY                       ;
CODE_03FF4A:        C8            INY                       ;
CODE_03FF4B:        C8            INY                       ;
CODE_03FF4C:        C8            INY                       ;
CODE_03FF4D:        60            RTS                       ;

CODE_03FF4E:        A5 03         LDA $03                   ;
CODE_03FF50:        4A            LSR A                     ;
CODE_03FF51:        4A            LSR A                     ;
CODE_03FF52:        A5 00         LDA $00                   ;
CODE_03FF54:        90 0C         BCC CODE_03FF62           ;
CODE_03FF56:        99 06 08      STA $0806,y               ;
CODE_03FF59:        A5 01         LDA $01                   ;
CODE_03FF5B:        99 02 08      STA $0802,y               ;
CODE_03FF5E:        A9 40         LDA #$40                  ;
CODE_03FF60:        D0 0A         BNE CODE_03FF6C           ;
CODE_03FF62:        99 02 08      STA $0802,y               ;
CODE_03FF65:        A5 01         LDA $01                   ;
CODE_03FF67:        99 06 08      STA $0806,y               ;
CODE_03FF6A:        A9 00         LDA #$00                  ;
CODE_03FF6C:        05 04         ORA $04                   ;
CODE_03FF6E:        99 03 08      STA $0803,y               ;
CODE_03FF71:        99 07 08      STA $0807,y               ;
CODE_03FF74:        A5 02         LDA $02                   ;
CODE_03FF76:        99 01 08      STA $0801,y               ;
CODE_03FF79:        99 05 08      STA $0805,y               ;
CODE_03FF7C:        A5 05         LDA $05                   ;
CODE_03FF7E:        99 00 08      STA $0800,y               ;
CODE_03FF81:        18            CLC                       ;
CODE_03FF82:        69 08         ADC #$08                  ;
CODE_03FF84:        99 04 08      STA $0804,y               ;
CODE_03FF87:        A5 02         LDA $02                   ;
CODE_03FF89:        18            CLC                       ;
CODE_03FF8A:        69 08         ADC #$08                  ;
CODE_03FF8C:        85 02         STA $02                   ;
CODE_03FF8E:        98            TYA                       ;
CODE_03FF8F:        18            CLC                       ;
CODE_03FF90:        69 08         ADC #$08                  ;
CODE_03FF92:        A8            TAY                       ;
CODE_03FF93:        E8            INX                       ;
CODE_03FF94:        E8            INX                       ;
CODE_03FF95:        60            RTS                       ;

CODE_03FF96:        A5 03         LDA $03                   ;
CODE_03FF98:        4A            LSR A                     ;
CODE_03FF99:        4A            LSR A                     ;
CODE_03FF9A:        A5 00         LDA $00                   ;
CODE_03FF9C:        90 0C         BCC CODE_03FFAA           ;
CODE_03FF9E:        99 06 09      STA $0906,y               ;
CODE_03FFA1:        A5 01         LDA $01                   ;
CODE_03FFA3:        99 02 09      STA $0902,y               ;
CODE_03FFA6:        A9 40         LDA #$40                  ;
CODE_03FFA8:        D0 0A         BNE CODE_03FFB4           ;
CODE_03FFAA:        99 02 09      STA $0902,y               ;
CODE_03FFAD:        A5 01         LDA $01                   ;
CODE_03FFAF:        99 06 09      STA $0906,y               ;
CODE_03FFB2:        A9 00         LDA #$00                  ;
CODE_03FFB4:        05 04         ORA $04                   ;
CODE_03FFB6:        99 03 09      STA $0903,y               ;
CODE_03FFB9:        99 07 09      STA $0907,y               ;
CODE_03FFBC:        A5 02         LDA $02                   ;
CODE_03FFBE:        99 01 09      STA $0901,y               ;
CODE_03FFC1:        99 05 09      STA $0905,y               ;
CODE_03FFC4:        A5 05         LDA $05                   ;
CODE_03FFC6:        99 00 09      STA $0900,y               ;
CODE_03FFC9:        18            CLC                       ;
CODE_03FFCA:        69 08         ADC #$08                  ;
CODE_03FFCC:        99 04 09      STA $0904,y               ;
CODE_03FFCF:        A5 02         LDA $02                   ;
CODE_03FFD1:        18            CLC                       ;
CODE_03FFD2:        69 08         ADC #$08                  ;
CODE_03FFD4:        85 02         STA $02                   ;
CODE_03FFD6:        98            TYA                       ;
CODE_03FFD7:        18            CLC                       ;
CODE_03FFD8:        69 08         ADC #$08                  ;
CODE_03FFDA:        A8            TAY                       ;
CODE_03FFDB:        E8            INX                       ;
CODE_03FFDC:        E8            INX                       ;
CODE_03FFDD:        60            RTS                       ;

DATA_03FFDE:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;Seems like empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;VICTORY! BANK 3 FINISHED!
                    db $FF,$FF                              ;