;Super Mario Bros. 1

CODE_038000:        JMP CODE_038015           ;Jump to the main game: SMB1

CODE_038003:        JMP CODE_038308           ;Jump to NMI data of SMB1

CODE_038006:        JMP CODE_03850D           ;Jump to SMB1 IRQ Data

DATA_038009:        db $00,$00,$03,$03,$04,$04,$05,$05 ;

CODE_038011:        JML CODE_009641           ;Show "Pirated game" message

CODE_038015:        NOP                       ;\Waste time for no reason?
CODE_038016:        NOP                       ;/
CODE_038017:        LDA #$AA                  ;\
CODE_038019:        STA $702000               ; |
CODE_03801D:        CMP $700000               ; |
CODE_038021:        BNE CODE_038011           ; |Check if the ROM is pirated. If so
CODE_038023:        LDA #$55                  ; |Show the pirated message
CODE_038025:        STA $702000               ; |
CODE_038029:        CMP $700000               ; |
CODE_03802D:        BNE CODE_038011           ;/
CODE_03802F:        SEI                       ;Set interrupt flag
CODE_038030:        STZ $4200                 ;\
CODE_038033:        STZ $420C                 ; |Disable NMI, IRQ, DMA, HDMA, Auto-read joypad
CODE_038036:        STZ $420B                 ;/
CODE_038039:        LDA #$80                  ;\Forced blanking
CODE_03803B:        STA $2100                 ;/
CODE_03803E:        PHK                       ;\Set program bank to current bank
CODE_03803F:        PLB                       ;/
CODE_038040:        LDA #$01                  ;\Stop most of the animations
CODE_038042:        STA $028C                 ;/
CODE_038045:        LDA #$03                  ;
CODE_038047:        STA $0F0B                 ;
CODE_03804A:        STZ $028E                 ;
CODE_03804D:        STZ $0E67                 ;
CODE_038050:        LDA $700009               ;\Load the current level number loaded from save
CODE_038054:        STA $0E24                 ; |Should be 0, because you can't specify which level you want to load in SMB1.
CODE_038057:        STA $7FFB01               ;/
CODE_03805B:        LDA $700008               ;\Load the current world number loaded from save
CODE_03805F:        STA $075F                 ; |
CODE_038062:        STA $7FFB00               ;/|Store into world number to load from the title screen
CODE_038066:        ASL A                     ; | Current world number * 4 + current level number
CODE_038067:        ASL A                     ; |
CODE_038068:        CLC                       ; |
CODE_038069:        ADC $700009               ;/
CODE_03806D:        TAX                       ;Into X
CODE_03806E:        LDA $05D272,x             ;\Load from level table
CODE_038072:        STA $700009               ; |Store into current level number loaded from save
CODE_038076:        STA $7FFB02               ;/|And some other address
CODE_03807A:        STA $0760                 ;/ And into current level
CODE_03807D:        LDA #$03                  ;\OBJ size: 8x8 and 16x16 sprites
CODE_03807F:        STA $2101                 ;/OBJ VRAM: $C000
CODE_038082:        LDA #$01                  ;\BG1 Tilemap address: $0000
CODE_038084:        STA $2107                 ;/Enable BG1 tilemap horizontal mirroring
CODE_038087:        LDA #$09                  ;\BG2 Tilemap address: $1000
CODE_038089:        STA $2108                 ;/Enable BG2 tilemap horizontal mirroring
CODE_03808C:        LDA #$59                  ;\BG3 Tilemap address: $B000
CODE_03808E:        STA $2109                 ;/Enable BG3 tilemap horizontal mirroring
CODE_038091:        STZ $210A                 ;no BG4, but set it just in case.
CODE_038094:        LDA #$11                  ;\BG1 and 2 gfx address: $2000
CODE_038096:        STA $210B                 ;/
CODE_038099:        LDA #$05                  ;\BG3 and 4 gfx address: $A000
CODE_03809B:        STA $210C                 ;/
CODE_03809E:        STZ $2133                 ;Nothing special about screen mode/video select
CODE_0380A1:        STZ $1681                 ;unused?
CODE_0380A4:        STZ $0770                 ;Set level mode to Title Screen
CODE_0380A7:        STZ $0772                 ;
CODE_0380AA:        LDA #$00                  ;
CODE_0380AC:        STA $7FFFFF               ;
CODE_0380B0:        JSL CODE_04FDC4           ;Reset scroll registers
CODE_0380B4:        LDA #$09                  ;\Game mode and character size
CODE_0380B6:        STA $120D                 ;/Mode 1 with mode 1 bg3 priority bit enabled
CODE_0380B9:        STZ $0E7E                 ;No screen pixelation/mosaic
CODE_0380BC:        LDA #$10                  ;\
CODE_0380BE:        STA $120B                 ;/Main screen designation
CODE_0380C1:        STZ $120C                 ;Sub screen designation
CODE_0380C4:        STZ $1204                 ;Window mask settings for BG1 and 2
CODE_0380C7:        STZ $1205                 ;Window mask settings for BG3 and 4
CODE_0380CA:        STZ $1206                 ;Window mask settings for OAM and color window
CODE_0380CD:        STZ $1209                 ;Color addition select
CODE_0380D0:        LDA #$20                  ;\CGADSUB settings
CODE_0380D2:        STA $120A                 ;/
CODE_0380D5:        LDA #$20                  ;\
CODE_0380D7:        STA $0EE0                 ; |
CODE_0380DA:        LDA #$40                  ; |Set fixed color
CODE_0380DC:        STA $0EE1                 ; |
CODE_0380DF:        LDA #$80                  ; |
CODE_0380E1:        STA $0EE2                 ;/
CODE_0380E4:        STZ $1203                 ;HDMA enable: none
CODE_0380E7:        LDA #$80                  ;\Enable f-blank
CODE_0380E9:        STA $1201                 ;/
CODE_0380EC:        STZ $0154                 ;Reset lag thing.
CODE_0380EF:        STZ $15E5                 ;
CODE_0380F2:        STZ $0E7F                 ;Related to when fading in and out
CODE_0380F5:        STZ $0776                 ;Clear pause flag
CODE_0380F8:        STA $0722                 ;
CODE_0380FB:        STZ $0E67                 ;
CODE_0380FE:        STZ $BA                   ;
CODE_038100:        STZ $0ED6                 ;
CODE_038103:        STZ $0EF9                 ;
CODE_038106:        STZ $0ED4                 ;
CODE_038109:        STZ $1200                 ;
CODE_03810C:        STZ $0773                 ;
CODE_03810F:        STZ $028D                 ;Clear flag to upload animated graphics
CODE_038112:        REP #$20                  ;
CODE_038114:        LDA #$0000                ;
CODE_038117:        STA $1000                 ;
CODE_03811A:        STA $1100                 ;
CODE_03811D:        LDA #$FFFF                ;
CODE_038120:        STA $1702                 ;
CODE_038123:        STA $7F0002               ;
CODE_038127:        STA $7F2002               ;
CODE_03812B:        PHD                       ;
CODE_03812C:        LDA #$4300                ;
CODE_03812F:        TCD                       ;
CODE_038130:        LDX #$80                  ;
CODE_038132:        STX $2115                 ;
CODE_038135:        REP #$20                  ;
CODE_038137:        LDA #$1000                ;
CODE_03813A:        STA $2116                 ;
CODE_03813D:        LDA #$1801                ;
CODE_038140:        STA $00                   ;
CODE_038142:        LDA #$8000                ;
CODE_038145:        STA $02                   ;
CODE_038147:        LDY #$06                  ;
CODE_038149:        STY $04                   ;
CODE_03814B:        LDA #$4000                ;
CODE_03814E:        STA $05                   ;
CODE_038150:        LDX #$01                  ;
CODE_038152:        STX $420B                 ;
CODE_038155:        LDA #$6000                ;
CODE_038158:        STA $2116                 ;
CODE_03815B:        LDA #$8000                ;
CODE_03815E:        STA $02                   ;
CODE_038160:        LDY #$07                  ;
CODE_038162:        STY $04                   ;
CODE_038164:        LDA #$4000                ;
CODE_038167:        STA $05                   ;
CODE_038169:        STX $420B                 ;
CODE_03816C:        LDA #$5000                ;
CODE_03816F:        STA $2116                 ;
CODE_038172:        LDA #$F800                ;
CODE_038175:        STA $02                   ;
CODE_038177:        LDY #$0C                  ;
CODE_038179:        STY $04                   ;
CODE_03817B:        LDA #$0800                ;
CODE_03817E:        STA $05                   ;
CODE_038180:        STX $420B                 ;
CODE_038183:        PLD                       ;
CODE_038184:        SEP #$20                  ;
CODE_038186:        JSL CODE_0480AE           ;
CODE_03818A:        STZ $1608                 ;
CODE_03818D:        STZ $1609                 ;
CODE_038190:        STZ $160F                 ;
CODE_038193:        STZ $160E                 ;
CODE_038196:        STZ $160A                 ;
CODE_038199:        STA $160D                 ;
CODE_03819C:        LDA #$01                  ;
CODE_03819E:        STA $160C                 ;
CODE_0381A1:        LDA #$81                  ;
CODE_0381A3:        STA $09                   ;
CODE_0381A5:        STA $4200                 ;
CODE_0381A8:        CLI                       ;
CODE_0381A9:        LDA $0154                 ;
CODE_0381AC:        BEQ CODE_0381A9           ;
CODE_0381AE:        JSL CODE_05C800           ;
CODE_0381B2:        LDA $07B7                 ;
CODE_0381B5:        AND #$02                  ;
CODE_0381B7:        STA $07C7                 ;
CODE_0381BA:        LDA $07B8                 ;
CODE_0381BD:        AND #$02                  ;
CODE_0381BF:        EOR $07C7                 ;
CODE_0381C2:        CLC                       ;
CODE_0381C3:        BEQ CODE_0381C6           ;
CODE_0381C5:        SEC                       ;
CODE_0381C6:        ROR $07B7                 ;
CODE_0381C9:        ROR $07B8                 ;
CODE_0381CC:        ROR $07B9                 ;
CODE_0381CF:        ROR $07BA                 ;
CODE_0381D2:        ROR $07BB                 ;
CODE_0381D5:        ROR $07BC                 ;
CODE_0381D8:        ROR $07BD                 ;
CODE_0381DB:        JSL CODE_048163           ;
CODE_0381DF:        LDA $700007               ;
CODE_0381E3:        BEQ CODE_038205           ;
CODE_0381E5:        PHX                       ;In debug mode
CODE_0381E6:        LDX $0EC3                 ;
CODE_0381E9:        LDA $0FFA,x               ;
CODE_0381EC:        AND #$20                  ;
CODE_0381EE:        BEQ CODE_0381F3           ;
CODE_0381F0:        INC $15E5                 ;
CODE_0381F3:        LDA $0FFA,x               ;
CODE_0381F6:        PLX                       ;
CODE_0381F7:        AND #$10                  ;
CODE_0381F9:        BNE CODE_038205           ;
CODE_0381FB:        LDA $15E5                 ;
CODE_0381FE:        AND #$01                  ;
CODE_038200:        BEQ CODE_038205           ;
CODE_038202:        JMP CODE_0382D4           ;

CODE_038205:        JSL CODE_05E634           ;
CODE_038209:        JSR CODE_038555           ;
CODE_03820C:        JSL CODE_05EE3A           ;
CODE_038210:        LDA $5C                   ;
CODE_038212:        BNE CODE_038218           ;
CODE_038214:        JSL CODE_0488BF           ;
CODE_038218:        LDA $0ED6                 ;
CODE_03821B:        BMI CODE_03823B           ;
CODE_03821D:        BEQ CODE_03825F           ;
CODE_03821F:        LDA $07B0                 ;
CODE_038222:        BEQ CODE_03825F           ;
CODE_038224:        LDX $0753                 ;
CODE_038227:        LDA $0FFA,x               ;
CODE_03822A:        BMI CODE_038233           ;
CODE_03822C:        LDA $0FF6,x               ;
CODE_03822F:        AND #$90                  ;
CODE_038231:        BEQ CODE_03825F           ;
CODE_038233:        STZ $07B0                 ;
CODE_038236:        STZ $0ED6                 ;
CODE_038239:        BRA CODE_03825F           ;

CODE_03823B:        LDA $0FFA                 ;
CODE_03823E:        ORA $0FF6                 ;
CODE_038241:        AND #$40                  ;
CODE_038243:        BNE CODE_03824F           ;
CODE_038245:        LDA $0FFB                 ;
CODE_038248:        ORA $0FF7                 ;
CODE_03824B:        AND #$40                  ;
CODE_03824D:        BEQ CODE_03825F           ;
CODE_03824F:        LDA $1201                 ;
CODE_038252:        CMP #$0F                  ;
CODE_038254:        BNE CODE_03825F           ;
CODE_038256:        LDA #$80                  ;\Fade out music
CODE_038258:        STA $1602                 ;/
CODE_03825B:        JML CODE_0080DE           ;

CODE_03825F:        LDA $0E7F                 ;
CODE_038262:        BEQ CODE_038269           ;
CODE_038264:        JSR CODE_03C296           ;
CODE_038267:        BRA CODE_0382D4           ;

CODE_038269:        LDA $0776                 ;\
CODE_03826C:        LSR A                     ; |Branch if paused
CODE_03826D:        BCS CODE_0382CD           ;/
CODE_03826F:        PHD                       ;
CODE_038270:        LDA #$07                  ;
CODE_038272:        XBA                       ;
CODE_038273:        LDA #$00                  ;
CODE_038275:        TCD                       ;
CODE_038276:        LDA $47                   ;
CODE_038278:        BEQ CODE_03827E           ;
CODE_03827A:        DEC $47                   ;
CODE_03827C:        BNE CODE_038293           ;
CODE_03827E:        LDX #$18                  ;
CODE_038280:        DEC $87                   ;
CODE_038282:        BPL CODE_03828A           ;
CODE_038284:        LDA #$14                  ;
CODE_038286:        STA $87                   ;
CODE_038288:        LDX #$2B                  ;
CODE_03828A:        LDA $88,x                 ;
CODE_03828C:        BEQ CODE_038290           ;
CODE_03828E:        DEC $88,x                 ;
CODE_038290:        DEX                       ;
CODE_038291:        BPL CODE_03828A           ;
CODE_038293:        PLD                       ;
CODE_038294:        LDA $07B0                 ;
CODE_038297:        BNE CODE_0382A1           ;
CODE_038299:        LDA $0ED6                 ;
CODE_03829C:        AND #$80                  ;
CODE_03829E:        STA $0ED6                 ;
CODE_0382A1:        INC $09                   ;
CODE_0382A3:        INC $0E68                 ;
CODE_0382A6:        LDA $0E68                 ;
CODE_0382A9:        AND #$18                  ;
CODE_0382AB:        CMP #$18                  ;
CODE_0382AD:        BNE CODE_0382B2           ;
CODE_0382AF:        STZ $0E68                 ;
CODE_0382B2:        JSL CODE_05D472           ;
CODE_0382B6:        LDA $0722                 ;
CODE_0382B9:        BEQ CODE_0382C3           ;
CODE_0382BB:        LDA $1B                   ;
CODE_0382BD:        LSR A                     ;
CODE_0382BE:        BCS CODE_0382C3           ;
CODE_0382C0:        JSR CODE_0385C3           ;
CODE_0382C3:        JSR CODE_038545           ;
CODE_0382C6:        LDA $1680                 ;
CODE_0382C9:        BMI CODE_0382CD           ;
CODE_0382CB:        BRA CODE_0382D4           ;

CODE_0382CD:        JSR CODE_0385F3           ;
CODE_0382D0:        JSL CODE_05DE4C           ;
CODE_0382D4:        JSL CODE_05DD7A           ;
CODE_0382D8:        STZ $0154                 ;
CODE_0382DB:        JMP CODE_0381A9           ;

DATA_0382DE:        db $02,$B8,$B8,$B8,$B8,$02,$02,$02
                    db $B8,$B8,$B8,$B8,$B9,$DE,$03,$56      ;Low bytes of VRAM addresses used by the stripe image uploader
                    db $81,$BC,$DB

DATA_0382F1:        db $17,$99,$99,$99,$99,$17,$1A,$1A      ;High bytes of VRAM addresses used by the stripe image uploader
                    db $99,$99,$99,$99,$99,$99,$9A,$9A      ;
                    db $9A,$9A,$9A                          ;

DATA_038304:        dw $0000,$0300

;SMB1 NMI ROUTINE
CODE_038308:        PHB                       ;\
CODE_038309:        PHK                       ; |Set program bank to this one
CODE_03830A:        PLB                       ;/
CODE_03830B:        LDA $4210                 ;Read to enable NMI
CODE_03830E:        LDA $1201                 ;\ Forced blank if
CODE_038311:        BNE CODE_038315           ; |the screen is pitch-black
CODE_038313:        LDA #$80                  ; |
CODE_038315:        STA $2100                 ;/ Otherwise, normal brightness
CODE_038318:        STZ $420C                 ;Reset HDMA
CODE_03831B:        LDA $0154                 ;\
CODE_03831E:        BEQ CODE_038323           ;/Make sure the game runs at normal fps?
CODE_038320:        JMP CODE_038448           ;

CODE_038323:        INC $0154                 ;
CODE_038326:        LDX $0773                 ;\
CODE_038329:        LDA DATA_0382DE,x               ; |
CODE_03832C:        STA $00                   ; |
CODE_03832E:        LDA DATA_0382F1,x               ; |
CODE_038331:        STA $01                   ; | 
CODE_038333:        LDA #$03                  ; |
CODE_038335:        STA $02                   ; |
CODE_038337:        JSR CODE_039BBC           ;/ Stripe image uploader
CODE_03833A:        LDX $0773                 ;\
CODE_03833D:        CPX #$06                  ; |
CODE_03833F:        BNE CODE_038352           ;/
CODE_038341:        LDA DATA_0382DE                 ;
CODE_038344:        STA $00                   ;
CODE_038346:        LDA DATA_0382F1                 ;
CODE_038349:        STA $01                   ;
CODE_03834B:        LDA #$03                  ;
CODE_03834D:        STA $02                   ;
CODE_03834F:        JSR CODE_039BBC           ;Stripe image uploader
CODE_038352:        PHD                       ;\
CODE_038353:        LDA #$43                  ; |
CODE_038355:        XBA                       ; |Direct page: $4300
CODE_038356:        LDA #$00                  ; |
CODE_038358:        TCD                       ;/
CODE_038359:        REP #$10                  ;16-bit XY
CODE_03835B:        LDA #$81                  ;\Address increment mode: after every write to 2119
CODE_03835D:        STA $2115                 ;/Also, every 32 bytes. so vertical
CODE_038360:        LDY #$1801                ;\2 regs write once
CODE_038363:        STY $00                   ;/DMA destination: $2118
CODE_038365:        LDA $0EF9                 ;What is this address?
CODE_038368:        BEQ CODE_03839D           ;
CODE_03836A:        LDA #$7F                  ;\DMA source bank: $7F
CODE_03836C:        STA $04                   ;/
CODE_03836E:        REP #$20                  ;
CODE_038370:        LDY #$0040                ;
CODE_038373:        LDX #$0000                ;
CODE_038376:        LDA $7F0002,x             ;\
CODE_03837A:        STA $2116                 ;/Set VRAM address
CODE_03837D:        TXA                       ;\
CODE_03837E:        CLC                       ; |
CODE_03837F:        ADC #$0004                ; |
CODE_038382:        STA $02                   ;/DMA source address: $0000 + 4 something?
CODE_038384:        STY $05                   ; DMA size: $0040 bytes
CODE_038386:        TXA                       ;\
CODE_038387:        CLC                       ; |
CODE_038388:        ADC #$0042                ; | add $42 bytes
CODE_03838B:        TAX                       ;/
CODE_03838C:        LDA #$0001                ;\Enable DMA
CODE_03838F:        STA $420B                 ;/
CODE_038392:        LDA $7F0002,x             ;
CODE_038396:        BPL CODE_03837A           ;
CODE_038398:        SEP #$20                  ;
CODE_03839A:        STZ $0EF9                 ;

CODE_03839D:        LDA $0ED4                 ;What is this address?
CODE_0383A0:        BEQ CODE_0383D6           ;
CODE_0383A2:        LDA #$7F                  ;\
CODE_0383A4:        STA $04                   ;/DMA source bank: $7F
CODE_0383A6:        REP #$20                  ;
CODE_0383A8:        LDY #$0038                ;
CODE_0383AB:        LDX #$0000                ;
CODE_0383AE:        LDA $7F2002,x             ;\
CODE_0383B2:        STA $2116                 ;/Set VRAM address
CODE_0383B5:        TXA                       ;
CODE_0383B6:        CLC                       ;
CODE_0383B7:        ADC #$2004                ;
CODE_0383BA:        STA $02                   ;
CODE_0383BC:        STY $05                   ;DMA size: $0038 bytes
CODE_0383BE:        TXA                       ;
CODE_0383BF:        CLC                       ;
CODE_0383C0:        ADC #$003A                ;
CODE_0383C3:        TAX                       ;
CODE_0383C4:        LDA #$0001                ;
CODE_0383C7:        STA $420B                 ;
CODE_0383CA:        LDA $7F2002,x             ;
CODE_0383CE:        BPL CODE_0383B2           ;
CODE_0383D0:        STZ $2000                 ;
CODE_0383D3:        STZ $0ED4                 ;
CODE_0383D6:        SEP #$30                  ;

CODE_0383D8:        LDA #$80                  ;
CODE_0383DA:        STA $2115                 ;
CODE_0383DD:        JSR CODE_039B1D           ;
CODE_0383E0:        LDA $1200                 ;
CODE_0383E3:        BEQ CODE_038410           ;
CODE_0383E5:        BMI CODE_03840B           ;
CODE_0383E7:        REP #$10                  ;
CODE_0383E9:        STZ $2121                 ;CGRAM address: $00
CODE_0383EC:        LDY #$2200                ;\
CODE_0383EF:        STY $00                   ;/1 reg write once to $2122
CODE_0383F1:        LDY #$1000                ;\
CODE_0383F4:        STY $02                   ; |
CODE_0383F6:        LDA #$00                  ; | DMA source: $00:1000
CODE_0383F8:        STA $04                   ; | Length: 512 bytes
CODE_0383FA:        LDY #$0200                ; |
CODE_0383FD:        STY $05                   ;/
CODE_0383FF:        LDA #$01                  ;\
CODE_038401:        STA $420B                 ;/Enable HDMA channel 0
CODE_038404:        SEP #$10                  ;
CODE_038406:        STZ $1200                 ;
CODE_038409:        BRA CODE_038410           ;

CODE_03840B:        LDA #$01                  ;
CODE_03840D:        STA $1200                 ;
CODE_038410:        PLD                       ;
CODE_038411:        LDY #$00                  ;
CODE_038413:        LDX $0773                 ;\
CODE_038416:        CPX #$06                  ; | Branch if stripe image destination VRAM index is not 6
CODE_038418:        BNE CODE_03841C           ;/
CODE_03841A:        INY                       ;
CODE_03841B:        INY                       ;
CODE_03841C:        REP #$20                  ;
CODE_03841E:        LDA DATA_038304,y               ;
CODE_038421:        REP #$10                  ;
CODE_038423:        TAX                       ;
CODE_038424:        STZ $1700,x               ;
CODE_038427:        LDA #$FFFF                ;
CODE_03842A:        STA $1702,x               ;
CODE_03842D:        LDA #$0000                ;
CODE_038430:        STA $7F0000               ;
CODE_038434:        LDA $005C                 ;
CODE_038437:        AND #$00FF                ;
CODE_03843A:        BEQ CODE_038443           ;
CODE_03843C:        LDA #$0000                ;
CODE_03843F:        STA $7F2000               ;
CODE_038443:        SEP #$30                  ;
CODE_038445:        STZ $0773                 ;

CODE_038448:        PHD                       ;\
CODE_038449:        LDA #$21                  ; |
CODE_03844B:        XBA                       ; |Direct page: $2100
CODE_03844C:        LDA #$00                  ; |
CODE_03844E:        TCD                       ;/
CODE_03844F:        LDA $120E                 ;\$7E:120E: Window 2 left position
CODE_038452:        STA $28                   ;/
CODE_038454:        LDA $120F                 ;\$7E:120F: Window 2 right position
CODE_038457:        STA $29                   ;/
CODE_038459:        LDA $1210                 ;\$7E:1210: Direct color register
CODE_03845C:        STA $32                   ;/
CODE_03845E:        LDA $1209                 ;\$7E:1209: Color addition select
CODE_038461:        STA $30                   ;/
CODE_038463:        LDA $120A                 ;\$7E:120A: CGADSUB
CODE_038466:        STA $31                   ;/
CODE_038468:        LDA $1204                 ;\$7E:1204: Window mask settings for BG1 and 2
CODE_03846B:        STA $23                   ;/
CODE_03846D:        LDA $1205                 ;\$7E:1205: Window mask settings for BG3 and 4
CODE_038470:        STA $24                   ;/
CODE_038472:        LDA $1206                 ;\$7E:1206: Window mask settings for OAM and color wind
CODE_038475:        STA $25                   ;/
CODE_038477:        LDA $120B                 ;\$7E:120B: Main screen designation
CODE_03847A:        STA $2C                   ;/
CODE_03847C:        LDA $120C                 ;\$7E:120C: Subscreen designation
CODE_03847F:        STA $2D                   ;/
CODE_038481:        LDA $1207                 ;\$7E:1207: Window mask designation for main screen
CODE_038484:        STA $2E                   ;/
CODE_038486:        LDA $1208                 ;\$7E:1208: Window mask designation for sub screen
CODE_038489:        STA $2F                   ;/
CODE_03848B:        LDA $0EE0                 ;\$7E:0EE0: Direct color register
CODE_03848E:        STA $32                   ;/
CODE_038490:        LDA $0EE1                 ;\$7E:0EE1: Direct color register
CODE_038493:        STA $32                   ;/
CODE_038495:        LDA $0EE2                 ;\$7E:0EE2: Direct color register
CODE_038498:        STA $32                   ;/
CODE_03849A:        LDA $120D                 ;\$7E:120D: Screen mode
CODE_03849D:        STA $05                   ;/
CODE_03849F:        LDA $0E7E                 ;\$7E:0E7E: Screen pixelation/Mosaic
CODE_0384A2:        STA $06                   ;/
CODE_0384A4:        STZ $11                   ;\Zero out BG3 horizontal scroll
CODE_0384A6:        STZ $11                   ;/
CODE_0384A8:        LDA $0ED1                 ;\
CODE_0384AB:        BEQ CODE_0384B7           ; |If starry night IRQ flag is set
CODE_0384AD:        LDA $0EEE                 ; |
CODE_0384B0:        STA $0F                   ; |$7E:0EEE-$7E:0EEF: BG2 Horizontal scroll
CODE_0384B2:        LDA $0EEF                 ; |
CODE_0384B5:        STA $0F                   ;/
CODE_0384B7:        LDA $0E7F                 ;\
CODE_0384BA:        BNE CODE_0384E6           ;/Fade in/out things?
CODE_0384BC:        LDA $073F                 ;\$7E:073F: BG1 xscroll offset low byte
CODE_0384BF:        STA $0D                   ;/
CODE_0384C1:        LDA $071A                 ;\$7E:071A: BG1 xscroll offset high byte
CODE_0384C4:        STA $0D                   ;/
CODE_0384C6:        LDA $0ED1                 ;\
CODE_0384C9:        BNE CODE_0384D5           ;/If not Starry Night BG flag
CODE_0384CB:        LDA $0EFD                 ;\$7E:0EFD: BG2 xscroll offset low byte
CODE_0384CE:        STA $0F                   ;/
CODE_0384D0:        LDA $0EFE                 ;\$7E:0EFE: BG2 xscroll offset high byte
CODE_0384D3:        STA $0F                   ;/
CODE_0384D5:        LDA $0740                 ;\$7E:0E70: BG1 yscroll offset low byte
CODE_0384D8:        STA $0E                   ;/
CODE_0384DA:        STZ $0E                   ;BG1 yscroll offset high byte hardcoded at #$00
CODE_0384DC:        LDA $0ED2                 ;\$7E:0ED2: BG2 yscroll offset low byte
CODE_0384DF:        STA $10                   ;/
CODE_0384E1:        LDA $0ED3                 ;\$7E:0ED3: BG2 yscroll offset high byte
CODE_0384E4:        STA $10                   ;/
CODE_0384E6:        PLD                       ;recover direct page
CODE_0384E7:        LDA $1203                 ;\$7E:1203: HDMA enable
CODE_0384EA:        STA $420C                 ;/
CODE_0384ED:        LDX #$81                  ;\
CODE_0384EF:        LDA $0EDE                 ;/If IRQ is active
CODE_0384F2:        BEQ CODE_038508           ;Read IRQ flag for whatever reason
CODE_0384F4:        LDA $4211                 ;
CODE_0384F7:        LDA $0EF2                 ;\$7E:0EF2: V-timer
CODE_0384FA:        STA $4209                 ; |With $00 as vtimer high byte
CODE_0384FD:        STZ $420A                 ;/
CODE_038500:        STZ $4207                 ;\
CODE_038503:        STZ $4208                 ;/Store zero to h-timer
CODE_038506:        LDX #$A1                  ;\
CODE_038508:        STX $4200                 ;/Enable NMI, IRQ, and auto joypad-read enable, only
CODE_03850B:        PLB                       ;when IRQ itself is enabled.
CODE_03850C:        RTL                       ;Return

CODE_03850D:        PHB                       ;\SMB1 IRQ Routine
CODE_03850E:        PHK                       ; |Set current program bank
CODE_03850F:        PLB                       ;/
CODE_038510:        LDA $4211                 ;\If IRQ isn't fired yet, return
CODE_038513:        BPL CODE_038543           ;/
CODE_038515:        LDA $0EDE                 ;\If this bit is set, return
CODE_038518:        BEQ CODE_038543           ;/(Seems like it is used as "IRQ enable flag")
CODE_03851A:        LDA $0ED1                 ;\"Starry night" IRQ mode
CODE_03851D:        BEQ CODE_038532           ;/If it is clear, go to normal IRQ mode
CODE_03851F:        BIT $4212                 ;\
CODE_038522:        BVC CODE_03851F           ;/Wait till H-blank
CODE_038524:        LDA $0EFD                 ;\ Used with Starry BG IRQ mode
CODE_038527:        STA $210F                 ; |Set BG2 Horizontal scroll
CODE_03852A:        LDA $0EFE                 ; |
CODE_03852D:        STA $210F                 ;/
CODE_038530:        BRA CODE_038543           ;Return

CODE_038532:        BIT $4212                 ;\
CODE_038535:        BVC CODE_038532           ;/Wait till H-blank
CODE_038537:        LDA $0EEE                 ;\
CODE_03853A:        STA $2111                 ; |Set BG3 horizontal scroll
CODE_03853D:        LDA $0EEF                 ; |
CODE_038540:        STA $2111                 ;/
CODE_038543:        PLB                       ;\Recover program bank & return
CODE_038544:        RTL                       ;/

CODE_038545:        LDA $0770                 ;\
CODE_038548:        ASL A                     ; |Set up 'operation modes' (RAM $7E:0770)
CODE_038549:        TAX                       ; |see pointers below for effects
CODE_03854A:        JMP (PNTR_03854D,x)       ;/

PNTR_03854D:        dw CODE_03868D                          ;$00 Title screen
                    dw CODE_03AD60                          ;$01 Normal playing and controls
                    dw CODE_0388BB                          ;$02 Defeated Bowser
                    dw CODE_03A0A8                          ;$03 Game Over

CODE_038555:        LDA $0770                 ;\
CODE_038558:        CMP #$02                  ; |Branch if operation mode is Defeated Bowser
CODE_03855A:        BEQ CODE_03857B           ;/
CODE_03855C:        CMP #$01                  ;\
CODE_03855E:        BNE CODE_0385BE           ;/Branch if operation mode is Main
CODE_038560:        LDA $0772                 ;
CODE_038563:        CMP #$03                  ;
CODE_038565:        BNE CODE_0385BE           ;
CODE_038567:        LDA $0E67                 ;
CODE_03856A:        BNE CODE_0385BE           ;
CODE_03856C:        LDA $1201                 ;
CODE_03856F:        CMP #$0F                  ;
CODE_038571:        BNE CODE_0385BE           ;
CODE_038573:        LDA $0777                 ;\
CODE_038576:        BEQ CODE_03857C           ; |Branch if Timer to disable start button = 0
CODE_038578:        DEC $0777                 ;/Otherwise, keep decreasing
CODE_03857B:        RTS                       ;

CODE_03857C:        LDA $0F                   ;
CODE_03857E:        CMP #$02                  ;
CODE_038580:        BEQ CODE_0385BE           ;
CODE_038582:        CMP #$03                  ;
CODE_038584:        BEQ CODE_0385BE           ;
CODE_038586:        LDA $0B7A                 ;
CODE_038589:        BNE CODE_0385BE           ;
CODE_03858B:        LDA $0B75                 ;
CODE_03858E:        CMP #$02                  ;
CODE_038590:        BCS CODE_0385BE           ;
CODE_038592:        LDA $0F8A                 ;
CODE_038595:        BEQ CODE_03859C           ;
CODE_038597:        DEC $0F8A                 ;
CODE_03859A:        BRA CODE_0385BE           ;

CODE_03859C:        LDA $0B75                 ;\If within pause screen
CODE_03859F:        BNE CODE_0385BE           ;/Skip "pause game" button check function
CODE_0385A1:        LDY $0753                 ;\
CODE_0385A4:        LDA $0FF6,y               ; |Get controller data based on player #.
CODE_0385A7:        AND #$10                  ; | if start is not pressed, continue
CODE_0385A9:        BEQ CODE_0385BE           ;/
CODE_0385AB:        LDA #$11                  ;\Else, pause the game
CODE_0385AD:        STA $0777                 ;/Timer to disable start button (works while outside pause, fading into it)
CODE_0385B0:        LDA #$F1                  ;\
CODE_0385B2:        STA $1602                 ; |Tone down volume of music
CODE_0385B5:        LDA #$43                  ; |Play pause sound
CODE_0385B7:        STA $1600                 ;/
CODE_0385BA:        JSL CODE_05DE31           ;
CODE_0385BE:        RTS                       ;

CODE_0385BF:        JSR CODE_0385F8           ;
CODE_0385C2:        RTL                       ;

CODE_0385C3:        PHD                       ;\
CODE_0385C4:        LDA #$0B                  ; |Direct page: $0B00
CODE_0385C6:        XBA                       ; |
CODE_0385C7:        LDA #$00                  ; |
CODE_0385C9:        TCD                       ;/
CODE_0385CA:        LDA #$90                  ;
CODE_0385CC:        STA $62                   ;
CODE_0385CE:        LDA #$94                  ;
CODE_0385D0:        STA $63                   ;
CODE_0385D2:        LDA #$98                  ;
CODE_0385D4:        STA $64                   ;
CODE_0385D6:        LDA #$9C                  ;
CODE_0385D8:        STA $65                   ;
CODE_0385DA:        LDA #$A0                  ;
CODE_0385DC:        STA $66                   ;
CODE_0385DE:        LDA #$A4                  ;
CODE_0385E0:        STA $67                   ;
CODE_0385E2:        LDA #$A8                  ;
CODE_0385E4:        STA $68                   ;
CODE_0385E6:        LDA #$AC                  ;
CODE_0385E8:        STA $69                   ;
CODE_0385EA:        LDA #$58                  ;
CODE_0385EC:        STA $6A                   ;
CODE_0385EE:        PLD                       ;
CODE_0385EF:        LDA $96                   ;
CODE_0385F1:        BNE CODE_038635           ;
CODE_0385F3:        LDA $0E67                 ;
CODE_0385F6:        BNE CODE_03866C           ;
CODE_0385F8:        LDX #$00                  ;
CODE_0385FA:        LDA #$F0                  ;
CODE_0385FC:        STA $0801,x               ;
CODE_0385FF:        STA $0841,x               ;
CODE_038602:        STA $0881,x               ;
CODE_038605:        STA $08C1,x               ;
CODE_038608:        STA $0901,x               ;
CODE_03860B:        STA $0941,x               ;
CODE_03860E:        STA $0981,x               ;
CODE_038611:        STA $09C1,x               ;
CODE_038614:        STZ $0C00,x               ;
CODE_038617:        STZ $0C40,x               ;
CODE_03861A:        STZ $0C80,x               ;
CODE_03861D:        STZ $0CC0,x               ;
CODE_038620:        STZ $0D00,x               ;
CODE_038623:        STZ $0D40,x               ;
CODE_038626:        STZ $0D80,x               ;
CODE_038629:        STZ $0DC0,x               ;
CODE_03862C:        INX                       ;
CODE_03862D:        INX                       ;
CODE_03862E:        INX                       ;
CODE_03862F:        INX                       ;
CODE_038630:        CPX #$40                  ;
CODE_038632:        BNE CODE_0385FC           ;
CODE_038634:        RTS                       ;

CODE_038635:        LDX #$00                  ;
CODE_038637:        LDA #$F0                  ;
CODE_038639:        STA $0841,x               ;
CODE_03863C:        STA $0881,x               ;
CODE_03863F:        STA $08C1,x               ;
CODE_038642:        STA $0901,x               ;
CODE_038645:        STA $0941,x               ;
CODE_038648:        STA $0981,x               ;
CODE_03864B:        STA $09C1,x               ;
CODE_03864E:        STZ $0C40,x               ;
CODE_038651:        STZ $0C80,x               ;
CODE_038654:        STZ $0CC0,x               ;
CODE_038657:        STZ $0D00,x               ;
CODE_03865A:        STZ $0D40,x               ;
CODE_03865D:        STZ $0D80,x               ;
CODE_038660:        STZ $0DC0,x               ;
CODE_038663:        INX                       ;
CODE_038664:        INX                       ;
CODE_038665:        INX                       ;
CODE_038666:        INX                       ;
CODE_038667:        CPX #$40                  ;
CODE_038669:        BNE CODE_038639           ;
CODE_03866B:        RTS                       ;

CODE_03866C:        LDA #$F0                  ;
CODE_03866E:        STA $0851                 ;
CODE_038671:        STA $0855                 ;
CODE_038674:        STA $08B1                 ;
CODE_038677:        STA $08B5                 ;
CODE_03867A:        STA $08B9                 ;
CODE_03867D:        STA $08BD                 ;
CODE_038680:        STA $08C1                 ;
CODE_038683:        STA $08C5                 ;
CODE_038686:        STA $08C9                 ;
CODE_038689:        STA $08CD                 ;
CODE_03868C:        RTS                       ;

;Title screen operation mode
CODE_03868D:        LDA $0772                 ;
CODE_038690:        ASL A                     ;
CODE_038691:        TAX                       ;
CODE_038692:        JSR (PNTR_0386AC,x)       ;
CODE_038695:        LDA $701FF2               ;
CODE_038699:        BEQ CODE_0386A8           ;
CODE_03869B:        STZ $1600                 ;\
CODE_03869E:        STZ $1601                 ; |Clear sound registers so no sound plays during title screen
CODE_0386A1:        STZ $1602                 ; |
CODE_0386A4:        STZ $1603                 ;/
CODE_0386A7:        RTS                       ;

CODE_0386A8:        STZ $1602                 ;
CODE_0386AB:        RTS                       ;

;Title screen operation modes
PNTR_0386AC:        dw CODE_039D91
                    dw CODE_038C18
                    dw CODE_039EBA
                    dw CODE_0386B4

CODE_0386B4:        LDA $701FF4               ;
CODE_0386B8:        BNE CODE_0386D9           ;
CODE_0386BA:        LDA $701FF6               ;
CODE_0386BE:        BEQ CODE_0386D9           ;
CODE_0386C0:        LDA $0FF7                 ;
CODE_0386C3:        AND #$10                  ;
CODE_0386C5:        BEQ CODE_0386D9           ;
CODE_0386C7:        LDA $077A                 ;
CODE_0386CA:        BNE CODE_0386E3           ;
CODE_0386CC:        LDA $07B2                 ;
CODE_0386CF:        BEQ CODE_0386E3           ;
CODE_0386D1:        LDA #$2A                  ;\"WRONG" sound
CODE_0386D3:        STA $1603                 ;/
CODE_0386D6:        JMP CODE_0387A1           ;

CODE_0386D9:        LDA $0FF6                 ;
CODE_0386DC:        ORA $0FF7                 ;
CODE_0386DF:        BIT #$10                  ;
CODE_0386E1:        BEQ CODE_03871A           ;
CODE_0386E3:        JMP CODE_0387D3           ;

CODE_0386E6:        LDA #$00                  ;\
CODE_0386E8:        STA $701FE0               ; |
CODE_0386EC:        STA $701FE1               ; |Reset highscore and its display
CODE_0386F0:        STA $701FE2               ; |
CODE_0386F4:        STA $701FE3               ; |
CODE_0386F8:        STA $701FE4               ; |
CODE_0386FC:        STA $701FE5               ; |
CODE_038700:        STA $07C8                 ; |
CODE_038703:        STA $07C9                 ; |
CODE_038706:        STA $07CA                 ; |
CODE_038709:        STA $07CB                 ; |
CODE_03870C:        STA $07CC                 ; |
CODE_03870F:        STA $07CD                 ;/
CODE_038712:        LDA #$08                  ;\High score resetted sound
CODE_038714:        STA $1600                 ;/
CODE_038717:        JMP CODE_0387C1           ;

CODE_03871A:        LDA $701FF2               ;
CODE_03871E:        BNE CODE_038753           ;
CODE_038720:        LDA $0FF8                 ;
CODE_038723:        CMP #$B0                  ;
CODE_038725:        BNE CODE_03872E           ;
CODE_038727:        LDA $0FF4                 ;
CODE_03872A:        CMP #$80                  ;
CODE_03872C:        BEQ CODE_0386E6           ;Reset highscore
CODE_03872E:        LDA $0FF9                 ;
CODE_038731:        CMP #$B0                  ;
CODE_038733:        BNE CODE_03873C           ;
CODE_038735:        LDA $0FF5                 ;
CODE_038738:        CMP #$80                  ;
CODE_03873A:        BEQ CODE_0386E6           ;Reset highscore
CODE_03873C:        LDA $7FFB06               ;
CODE_038740:        BMI CODE_038749           ;
CODE_038742:        LDA #$40                  ;
CODE_038744:        STA $07B2                 ;
CODE_038747:        BRA CODE_0387A4           ;

CODE_038749:        LDA $0FF6                 ;
CODE_03874C:        ORA $0FF7                 ;
CODE_03874F:        BIT #$2C                  ;
CODE_038751:        BNE CODE_03875F           ;
CODE_038753:        LDX $07B2                 ;
CODE_038756:        BNE CODE_0387A4           ;
CODE_038758:        JSR CODE_038883           ;
CODE_03875B:        BCS CODE_0387C1           ;
CODE_03875D:        BRA CODE_0387A7           ;

CODE_03875F:        LDA $07B2                 ;
CODE_038762:        BEQ CODE_0387C1           ;
CODE_038764:        LDA #$18                  ;
CODE_038766:        STA $07B2                 ;
CODE_038769:        LDA $7FFB06               ;
CODE_03876D:        BMI CODE_038774           ;
CODE_03876F:        STA $077A                 ;
CODE_038772:        BRA CODE_0387A1           ;

CODE_038774:        LDA $701FF2               ;
CODE_038778:        BNE CODE_0387A4           ;
CODE_03877A:        LDA $0FF6                 ;
CODE_03877D:        ORA $0FF7                 ;
CODE_038780:        BIT #$20                  ;
CODE_038782:        BEQ CODE_03878B           ;
CODE_038784:        LDA $077A                 ;
CODE_038787:        EOR #$01                  ;
CODE_038789:        BRA CODE_038799           ;

CODE_03878B:        AND #$0C                  ;
CODE_03878D:        BEQ CODE_0387A1           ;
CODE_03878F:        EOR #$08                  ;
CODE_038791:        LSR A                     ;
CODE_038792:        LSR A                     ;
CODE_038793:        LSR A                     ;
CODE_038794:        CMP $077A                 ;
CODE_038797:        BEQ CODE_0387A1           ;
CODE_038799:        STA $077A                 ;
CODE_03879C:        LDA #$01                  ;\Collected a coin sound
CODE_03879E:        STA $1603                 ;/
CODE_0387A1:        JSR CODE_038861           ;
CODE_0387A4:        STZ $0FF4                 ;
CODE_0387A7:        LDA $1603                 ;
CODE_0387AA:        PHA                       ;
CODE_0387AB:        JSR CODE_03AD74           ;
CODE_0387AE:        STZ $1600                 ;
CODE_0387B1:        STZ $1601                 ;
CODE_0387B4:        PLA                       ;
CODE_0387B5:        STA $1603                 ;
CODE_0387B8:        LDA $0F                   ;
CODE_0387BA:        CMP #$06                  ;
CODE_0387BC:        BNE CODE_038839           ;
CODE_0387BE:        STZ $0EC8                 ;
CODE_0387C1:        STZ $0770                 ;
CODE_0387C4:        STZ $0772                 ;
CODE_0387C7:        STZ $0722                 ;
CODE_0387CA:        LDA #$01                  ;
CODE_0387CC:        STA $0E7F                 ;
CODE_0387CF:        INC $0774                 ;
CODE_0387D2:        RTS                       ;

CODE_0387D3:        LDY $07B2                 ;
CODE_0387D6:        BEQ CODE_0387C1           ;
CODE_0387D8:        LDA #$29                  ;\"CORRECT" sound
CODE_0387DA:        STA $1603                 ;/
CODE_0387DD:        LDA $700008               ;
CODE_0387E1:        JSR CODE_038846           ;
CODE_0387E4:        LDA #$01                  ;
CODE_0387E6:        STA $0E67                 ;
CODE_0387E9:        JSR CODE_03F710           ;
CODE_0387EC:        JSL CODE_04C00B           ;
CODE_0387F0:        INC $075D                 ;Enable hidden 1-up flag
CODE_0387F3:        INC $0764                 ;
CODE_0387F6:        INC $0757                 ;
CODE_0387F9:        INC $0770                 ;
CODE_0387FC:        LDA $07FC                 ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_0387FF:        STA $076A                 ;"More difficult quest" flag
CODE_038802:        STZ $0772                 ;
CODE_038805:        STZ $07B2                 ;
CODE_038808:        LDX #$0B                  ;
CODE_03880A:        LDA #$00                  ;
CODE_03880C:        STA $07DA,x               ;
CODE_03880F:        DEX                       ;
CODE_038810:        BPL CODE_03880C           ;
CODE_038812:        PHX                       ;
CODE_038813:        STZ $E4                   ;
CODE_038815:        LDA $075E                 ;
CODE_038818:        JSR CODE_03883A           ;
CODE_03881B:        STA $07DF                 ;
CODE_03881E:        LDA $E4                   ;
CODE_038820:        STA $07DE                 ;
CODE_038823:        STZ $E4                   ;
CODE_038825:        LDA $06BB                 ;
CODE_038828:        JSR CODE_03883A           ;
CODE_03882B:        STA $07E5                 ;
CODE_03882E:        LDA $E4                   ;
CODE_038830:        STA $07E4                 ;
CODE_038833:        LDA #$01                  ;
CODE_038835:        STA $0E1A                 ;
CODE_038838:        PLX                       ;
CODE_038839:        RTS                       ;

CODE_03883A:        CMP #$0A                  ;
CODE_03883C:        BCC CODE_038845           ;
CODE_03883E:        INC $E4                   ;
CODE_038840:        SEC                       ;
CODE_038841:        SBC #$0A                  ;
CODE_038843:        BRA CODE_03883A           ;

CODE_038845:        RTS                       ;

CODE_038846:        STA $075F                 ;
CODE_038849:        STA $0766                 ;
CODE_03884C:        PHA                       ;
CODE_03884D:        JSL CODE_05C95B           ;
CODE_038851:        PLA                       ;
CODE_038852:        RTS                       ;

DATA_038853:        db $0C,$00,$02,$49,$80,$05,$2E,$12
                    db $24,$10,$24,$10,$FF,$FF

CODE_038861:        REP #$20                  ;
CODE_038863:        LDY #$0C                  ;
CODE_038865:        LDA DATA_038853,y               ;
CODE_038868:        STA $1700,y               ;
CODE_03886B:        DEY                       ;
CODE_03886C:        DEY                       ;
CODE_03886D:        BPL CODE_038865           ;
CODE_03886F:        LDY $077A                 ;
CODE_038872:        BEQ CODE_038880           ;
CODE_038874:        LDA #$1024                ;
CODE_038877:        STA $1706                 ;
CODE_03887A:        LDA #$122E                ;
CODE_03887D:        STA $170A                 ;
CODE_038880:        SEP #$20                  ;
CODE_038882:        RTS                       ;

CODE_038883:        LDX $0717                 ;\ Current demo action in X
CODE_038886:        LDA $0718                 ; |
CODE_038889:        BNE CODE_0388A4           ; |If timer isn't 0 yet, branch
CODE_03888B:        INX                       ; |
CODE_03888C:        INC $0717                 ; |
CODE_03888F:        SEC                       ;
CODE_038890:        LDA $07FB                 ;
CODE_038893:        BEQ CODE_03889B           ;
CODE_038895:        LDA $05EE21,x             ;
CODE_038899:        BRA CODE_03889F           ;

CODE_03889B:        LDA $05EDF4,x             ;
CODE_03889F:        STA $0718                 ;
CODE_0388A2:        BEQ CODE_0388BA           ;
CODE_0388A4:        LDA $07FB                 ;
CODE_0388A7:        BEQ CODE_0388AF           ;
CODE_0388A9:        LDA $05EE0A,x             ;
CODE_0388AD:        BRA CODE_0388B3           ;

CODE_0388AF:        LDA $05EDDF,x             ;
CODE_0388B3:        STA $0FF4                 ;
CODE_0388B6:        DEC $0718                 ;
CODE_0388B9:        CLC                       ;
CODE_0388BA:        RTS                       ;

;Defeated Bowser operation mode
CODE_0388BB:        JSR CODE_0388D0           ;Princess/toad saved sequence activator
CODE_0388BE:        LDA $0772                 ;
CODE_0388C1:        BEQ CODE_0388CA           ;
CODE_0388C3:        LDX #$00                  ;
CODE_0388C5:        STX $9E                   ;
CODE_0388C7:        JSR CODE_03C3B0           ;
CODE_0388CA:        JSR CODE_03FD13           ;
CODE_0388CD:        JMP CODE_03F710           ;

CODE_0388D0:        LDA $1680                 ;\
CODE_0388D3:        BNE CODE_0388E4           ; |If world 8, jump to other pointers
CODE_0388D5:        LDA $075F                 ; |
CODE_0388D8:        CMP #$07                  ; |
CODE_0388DA:        BEQ CODE_0388E4           ;/
CODE_0388DC:        LDA $0772                 ;
CODE_0388DF:        ASL A                     ;
CODE_0388E0:        TAX                       ;
CODE_0388E1:        JMP (PNTR_0388EC,x)       ;

;Victory commands for world 8
CODE_0388E4:        LDA $0772                 ;
CODE_0388E7:        ASL A                     ;
CODE_0388E8:        TAX                       ;
CODE_0388E9:        JMP (PNTR_0388FA,x)       ;

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

CODE_038918:        LDA $0754                 ;
CODE_03891B:        BEQ CODE_038925           ;
CODE_03891D:        JSL CODE_04DE2D           ;
CODE_038921:        INC $0772                 ;
CODE_038924:        RTS                       ;

CODE_038925:        INC $0772                 ;
CODE_038928:        INC $0772                 ;
CODE_03892B:        RTS                       ;

CODE_03892C:        STZ $0FF4                 ;\
CODE_03892F:        STZ $0FF6                 ; |
CODE_038932:        STZ $0FF5                 ; |
CODE_038935:        STZ $0FF7                 ; |Zero out all controller data
CODE_038938:        STZ $0FF8                 ; |
CODE_03893B:        STZ $0FF9                 ; |
CODE_03893E:        STZ $0FFA                 ; |
CODE_038941:        STZ $0FFB                 ;/
CODE_038944:        LDA #$02                  ;\
CODE_038946:        STA $078F                 ;/End of level timer to score conversion speed
CODE_038949:        JSR CODE_03AD70           ;
CODE_03894C:        LDA $0754                 ;\
CODE_03894F:        BNE CODE_038954           ;/Return if small mario
CODE_038951:        INC $0772                 ;
CODE_038954:        RTS                       ;

CODE_038955:        INC $0772                 ;
CODE_038958:        INC $0F87                 ;
CODE_03895B:        RTS                       ;

CODE_03895C:        JSL CODE_04DC5F           ;
CODE_038960:        LDA $0F87                 ;
CODE_038963:        CMP #$06                  ;
CODE_038965:        BCC CODE_03896A           ;
CODE_038967:        INC $0772                 ;
CODE_03896A:        RTS                       ;

CODE_03896B:        LDA #$0E                  ;\
CODE_03896D:        STA $1602                 ;/Princess got rescued music.
CODE_038970:        JSL CODE_04D860           ;Upload new palettes for the kiss sequence
CODE_038974:        JSL CODE_05DE12           ;
CODE_038978:        INC $0772                 ;
CODE_03897B:        RTS                       ;

CODE_03897C:        JSL CODE_04DE8B           ;
CODE_038980:        RTS                       ;

CODE_038981:        INC $0772                 ;
CODE_038984:        RTS                       ;

CODE_038985:        INC $0772                 ;
CODE_038988:        RTS                       ;

;Rescued Peach - Operation $0D
CODE_038989:        JSL CODE_04862A           ;Wait until player pushes the start button
CODE_03898D:        RTS                       ;

;Rescued Peach - Operation $0E
CODE_03898E:        JSL CODE_048640           ;Player chose to continue the game
CODE_038992:        RTS                       ;

CODE_038993:        LDA $07B1                 ;
CODE_038996:        CMP #$06                  ;
CODE_038998:        BCS CODE_0389CB           ;
CODE_03899A:        LDA $2143                 ;
CODE_03899D:        AND #$7F                  ;\
CODE_03899F:        CMP #$4B                  ; |If the "Timer converted to score" sound...
CODE_0389A1:        BEQ CODE_0389A8           ;/...is already playing, skip the SFX write
CODE_0389A3:        LDA #$4B                  ;\"Timer converted to score" sound
CODE_0389A5:        STA $1603                 ;/(At level end)
CODE_0389A8:        JSR CODE_03D809           ;
CODE_0389AB:        LDA $07E9                 ;\
CODE_0389AE:        ORA $07EA                 ; |Check if timer is 000 during decrement
CODE_0389B1:        ORA $07EB                 ; |at level end. If it is not 000, return
CODE_0389B4:        BNE CODE_0389CB           ;/
CODE_0389B6:        LDA #$4C                  ;\Stops the "Timer converted to score" sound
CODE_0389B8:        STA $1603                 ;/(at level end)
CODE_0389BB:        STA $0E1A                 ;
CODE_0389BE:        LDA #$30                  ;
CODE_0389C0:        STA $0788                 ;
CODE_0389C3:        LDA #$06                  ;
CODE_0389C5:        STA $07B1                 ;
CODE_0389C8:        INC $0772                 ;
CODE_0389CB:        RTS                       ;

CODE_0389CC:        JSL CODE_04DE54           ;
CODE_0389D0:        BRA CODE_0389DB           ;

CODE_0389D2:        LDA $0B76                 ;
CODE_0389D5:        BEQ CODE_0389E5           ;
CODE_0389D7:        JSL CODE_04ED07           ;
CODE_0389DB:        LDX $071B                 ;
CODE_0389DE:        INX                       ;
CODE_0389DF:        STX $0203                 ;
CODE_0389E2:        JMP CODE_038F16           ;

CODE_0389E5:        JSL CODE_04ECCA           ;
CODE_0389E9:        RTS                       ;

CODE_0389EA:        LDA $96                   ;
CODE_0389EC:        BEQ CODE_0389EF           ;
CODE_0389EE:        RTS                       ;

CODE_0389EF:        LDA $0F82                 ;
CODE_0389F2:        BEQ CODE_0389F8           ;
CODE_0389F4:        JSL CODE_04DD55           ;
CODE_0389F8:        LDY #$00                  ;
CODE_0389FA:        STY $0204                 ;
CODE_0389FD:        LDA $78                   ;
CODE_0389FF:        CMP $0203                 ;
CODE_038A02:        BNE CODE_038A28           ;
CODE_038A04:        LDA $075F                 ;
CODE_038A07:        CMP #$07                  ;
CODE_038A09:        BNE CODE_038A14           ;
CODE_038A0B:        INC $0204                 ;
CODE_038A0E:        JSL CODE_04DBDA           ;
CODE_038A12:        BRA CODE_038A2C           ;

CODE_038A14:        CMP #$02                  ;
CODE_038A16:        BNE CODE_038A21           ;
CODE_038A18:        LDA $0219                 ;
CODE_038A1B:        CMP #$44                  ;
CODE_038A1D:        BCS CODE_038A2C           ;
CODE_038A1F:        BRA CODE_038A28           ;

CODE_038A21:        LDA $0219                 ;
CODE_038A24:        CMP #$54                  ;
CODE_038A26:        BCS CODE_038A2C           ;
CODE_038A28:        INC $0204                 ;
CODE_038A2B:        INY                       ;
CODE_038A2C:        TYA                       ;
CODE_038A2D:        JSR CODE_03AFEA           ;
CODE_038A30:        LDA $071A                 ;
CODE_038A33:        CMP $0203                 ;
CODE_038A36:        BEQ CODE_038A4F           ;
CODE_038A38:        LDA $0768                 ;
CODE_038A3B:        CLC                       ;
CODE_038A3C:        ADC #$80                  ;
CODE_038A3E:        STA $0768                 ;
CODE_038A41:        LDA #$01                  ;
CODE_038A43:        ADC #$00                  ;
CODE_038A45:        TAY                       ;
CODE_038A46:        JSR CODE_03AE82           ;
CODE_038A49:        JSR CODE_03AE2C           ;
CODE_038A4C:        INC $0204                 ;
CODE_038A4F:        LDA $0204                 ;
CODE_038A52:        BEQ CODE_038AD0           ;
CODE_038A54:        RTS                       ;

CODE_038A55:        INC $0F7F                 ;
CODE_038A58:        LDA $0F7F                 ;
CODE_038A5B:        CMP #$70                  ;
CODE_038A5D:        BNE CODE_038A6A           ;
CODE_038A5F:        LDA #$01                  ;
CODE_038A61:        STA $0F7E                 ;
CODE_038A64:        STZ $0F7F                 ;
CODE_038A67:        INC $0772                 ;
CODE_038A6A:        RTS                       ;

CODE_038A6B:        LDA $0749                 ;
CODE_038A6E:        BNE CODE_038AB3           ;
CODE_038A70:        LDA $0719                 ;
CODE_038A73:        BEQ CODE_038A8C           ;
CODE_038A75:        CMP #$09                  ;
CODE_038A77:        BCS CODE_038AB3           ;
CODE_038A79:        LDY $075F                 ;
CODE_038A7C:        CPY #$07                  ;
CODE_038A7E:        BNE CODE_038A88           ;
CODE_038A80:        CMP #$03                  ;
CODE_038A82:        BCC CODE_038AB3           ;
CODE_038A84:        SBC #$01                  ;
CODE_038A86:        BRA CODE_038A8C           ;

CODE_038A88:        CMP #$02                  ;
CODE_038A8A:        BCC CODE_038AB3           ;
CODE_038A8C:        TAY                       ;
CODE_038A8D:        BNE CODE_038A97           ;
CODE_038A8F:        LDA $0753                 ;
CODE_038A92:        BEQ CODE_038AA8           ;
CODE_038A94:        INY                       ;
CODE_038A95:        BNE CODE_038AA8           ;
CODE_038A97:        INY                       ;
CODE_038A98:        LDA $075F                 ;
CODE_038A9B:        CMP #$07                  ;
CODE_038A9D:        BEQ CODE_038AA8           ;
CODE_038A9F:        DEY                       ;
CODE_038AA0:        CPY #$04                  ;
CODE_038AA2:        BCS CODE_038AC6           ;
CODE_038AA4:        CPY #$03                  ;
CODE_038AA6:        BCS CODE_038AB3           ;
CODE_038AA8:        CPY #$03                  ;
CODE_038AAA:        BNE CODE_038AAC           ;
CODE_038AAC:        TYA                       ;
CODE_038AAD:        CLC                       ;
CODE_038AAE:        ADC #$0C                  ;
CODE_038AB0:        STA $0773                 ;
CODE_038AB3:        LDA $0749                 ;
CODE_038AB6:        CLC                       ;
CODE_038AB7:        ADC #$04                  ;
CODE_038AB9:        STA $0749                 ;
CODE_038ABC:        LDA $0719                 ;
CODE_038ABF:        ADC #$00                  ;
CODE_038AC1:        STA $0719                 ;
CODE_038AC4:        CMP #$07                  ;
CODE_038AC6:        BCC CODE_038AD3           ;
CODE_038AC8:        LDA #$06                  ;
CODE_038ACA:        STA $07B1                 ;
CODE_038ACD:        STA $0E67                 ;
CODE_038AD0:        INC $0772                 ;
CODE_038AD3:        RTS                       ;

CODE_038AD4:        LDA $07B1                 ;
CODE_038AD7:        BNE CODE_038B07           ;
CODE_038AD9:        LDA $1680                 ;
CODE_038ADC:        BNE CODE_038B08           ;
CODE_038ADE:        LDY $075F                 ;\
CODE_038AE1:        CPY #$07                  ; |
CODE_038AE3:        BCS CODE_038B08           ;/ If current world is 8 or higher, branch
CODE_038AE5:        LDA #$00                  ;\
CODE_038AE7:        STA $0760                 ; |
CODE_038AEA:        STA $075C                 ; |Zero out player's current level number (set it to level 1)
CODE_038AED:        STA $0772                 ;/ Set operation mode to 0
CODE_038AF0:        INC $075F                 ;Increase current world by 1
CODE_038AF3:        LDA #$01                  ;\
CODE_038AF5:        STA $0BA5                 ;/Lock animations (for some reason)
CODE_038AF8:        JSR CODE_03A22B           ;Swap players if necessary
CODE_038AFB:        JSL CODE_04C00B           ;Set level number and map type
CODE_038AFF:        INC $0757                 ;Increase operation mode to $01 (because it was set to 0 earlier)
CODE_038B02:        LDA #$01                  ;\
CODE_038B04:        STA $0770                 ;/Game operation mode = main
CODE_038B07:        RTS                       ;

;Handle new world after rescuing the princess
CODE_038B08:        JMP CODE_03A204           ;

CODE_038B0B:        RTS                       ;

DATA_038B0C:        db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB
                    db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E
                    db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE

DATA_038B24:        db $FF,$41,$42,$44,$45,$48,$31,$32
                    db $34,$35,$38,$00

CODE_038B30:        LDA $0110,x               ;
CODE_038B33:        BEQ CODE_038B07           ;
CODE_038B35:        CMP #$0B                  ;
CODE_038B37:        BCC CODE_038B45           ;
CODE_038B39:        LDA #$0B                  ;
CODE_038B3B:        STA $0110,x               ;
CODE_038B3E:        CPX #$09                  ;
CODE_038B40:        BEQ CODE_038B45           ;
CODE_038B42:        STA $0284                 ;
CODE_038B45:        TAY                       ;
CODE_038B46:        LDA $0138,x               ;
CODE_038B49:        BNE CODE_038B4F           ;
CODE_038B4B:        STA $0110,x               ;
CODE_038B4E:        RTS                       ;

CODE_038B4F:        DEC $0138,x               ;
CODE_038B52:        CMP #$2B                  ;
CODE_038B54:        BNE CODE_038B76           ;
CODE_038B56:        CPY #$0B                  ;
CODE_038B58:        BNE CODE_038B63           ;
CODE_038B5A:        JSL CODE_048596           ;Increase lives by one
CODE_038B5E:        LDA #$05                  ;\1-UP sound
CODE_038B60:        STA $1603                 ;/
CODE_038B63:        LDA DATA_038B24,y               ;
CODE_038B66:        LSR A                     ;
CODE_038B67:        LSR A                     ;
CODE_038B68:        LSR A                     ;
CODE_038B69:        LSR A                     ;
CODE_038B6A:        TAX                       ;
CODE_038B6B:        LDA DATA_038B24,y               ;
CODE_038B6E:        AND #$0F                  ;
CODE_038B70:        STA $0145,x               ;
CODE_038B73:        JSR CODE_03BD55           ;
CODE_038B76:        LDX $9E                   ;
CODE_038B78:        LDY $0B58                 ;
CODE_038B7B:        LDA $0801,y               ;
CODE_038B7E:        CMP #$F0                  ;
CODE_038B80:        BEQ CODE_038B91           ;
CODE_038B82:        INY                       ;
CODE_038B83:        INY                       ;
CODE_038B84:        INY                       ;
CODE_038B85:        INY                       ;
CODE_038B86:        INY                       ;
CODE_038B87:        INY                       ;
CODE_038B88:        INY                       ;
CODE_038B89:        INY                       ;
CODE_038B8A:        CPY #$90                  ;
CODE_038B8C:        BNE CODE_038B7B           ;
CODE_038B8E:        LDY $0B58                 ;
CODE_038B91:        LDA $0124,x               ;
CODE_038B94:        CMP #$18                  ;
CODE_038B96:        BCC CODE_038B9D           ;
CODE_038B98:        SBC #$01                  ;
CODE_038B9A:        STA $0124,x               ;
CODE_038B9D:        LDA $0124,x               ;
CODE_038BA0:        JSR CODE_03EC42           ;
CODE_038BA3:        STX $E0                   ;
CODE_038BA5:        TXA                       ;
CODE_038BA6:        ASL A                     ;
CODE_038BA7:        TAX                       ;
CODE_038BA8:        REP #$20                  ;
CODE_038BAA:        LDA $0E50,x               ;
CODE_038BAD:        STA $E2                   ;
CODE_038BAF:        CLC                       ;
CODE_038BB0:        ADC #$0008                ;
CODE_038BB3:        STA $DE                   ;
CODE_038BB5:        SEP #$20                  ;
CODE_038BB7:        LDX $E0                   ;
CODE_038BB9:        STZ $DD                   ;
CODE_038BBB:        LDA $E3                   ;
CODE_038BBD:        BEQ CODE_038BC5           ;
CODE_038BBF:        LDA $DD                   ;
CODE_038BC1:        ORA #$01                  ;
CODE_038BC3:        STA $DD                   ;
CODE_038BC5:        LDA $DD                   ;
CODE_038BC7:        STA $0C00,y               ;
CODE_038BCA:        LDA $0110,x               ;
CODE_038BCD:        CMP #$06                  ;
CODE_038BCF:        BCS CODE_038BD5           ;
CODE_038BD1:        STZ $DD                   ;
CODE_038BD3:        BRA CODE_038BDD           ;

CODE_038BD5:        CMP #$0B                  ;
CODE_038BD7:        BEQ CODE_038BD1           ;
CODE_038BD9:        LDA #$02                  ;
CODE_038BDB:        STA $DD                   ;
CODE_038BDD:        LDA $DF                   ;
CODE_038BDF:        BEQ CODE_038BE7           ;
CODE_038BE1:        LDA $DD                   ;
CODE_038BE3:        ORA #$01                  ;
CODE_038BE5:        STA $DD                   ;
CODE_038BE7:        LDA $DD                   ;
CODE_038BE9:        STA $0C04,y               ;
CODE_038BEC:        LDA $E2                   ;
CODE_038BEE:        STA $0800,y               ;
CODE_038BF1:        LDA $DE                   ;
CODE_038BF3:        STA $0804,y               ;
CODE_038BF6:        LDA $0110,x               ;
CODE_038BF9:        ASL A                     ;
CODE_038BFA:        TAX                       ;
CODE_038BFB:        LDA DATA_038B0C,x               ;
CODE_038BFE:        STA $0802,y               ;
CODE_038C01:        LDA DATA_038B0C+1,x               ;
CODE_038C04:        STA $0806,y               ;
CODE_038C07:        TAX                       ;
CODE_038C08:        LDA #$32                  ;
CODE_038C0A:        STA $0803,y               ;
CODE_038C0D:        CPX #$0E                  ;
CODE_038C0F:        BNE CODE_038C12           ;
CODE_038C11:        INC A                     ;
CODE_038C12:        STA $0807,y               ;
CODE_038C15:        LDX $9E                   ;
CODE_038C17:        RTS                       ;

CODE_038C18:        LDA $073C                 ;\
CODE_038C1B:        ASL A                     ; | Current screen routine to execute
CODE_038C1C:        TAX                       ; |
CODE_038C1D:        JMP (PNTR_038C20,x)       ;/

PNTR_038C20:        dw CODE_038C3E                          ;$00 - 
                    dw CODE_038C50                          ;$01 - 
                    dw CODE_038C83                          ;$02 - 
                    dw CODE_038C8B                          ;$03 - 
                    dw CODE_038CFF                          ;$04 - 
                    dw CODE_039213                          ;$05 - 
                    dw CODE_038D7B                          ;$06 - Display intermediate
                    dw CODE_039213                          ;$07 - 
                    dw CODE_038E37                          ;$08 -
                    dw CODE_038C6F                          ;$09 -
                    dw CODE_038C7A                          ;$0A -
                    dw CODE_038C7F                          ;$0B -
                    dw CODE_038E65                          ;$0C -
                    dw CODE_038EF1                          ;$0D -
                    dw CODE_038F11                          ;$0E - Write top score

CODE_038C3E:        LDA $0770                 ;
CODE_038C41:        BEQ CODE_038C6C           ;
CODE_038C43:        LDX #$03                  ;
CODE_038C45:        STZ $0773                 ;
CODE_038C48:        LDA #$01                  ;
CODE_038C4A:        STA $1200                 ;
CODE_038C4D:        JMP CODE_038F0D           ;

CODE_038C50:        LDA $0744                 ;\
CODE_038C53:        PHA                       ; | Save background color and current player status
CODE_038C54:        LDA $0756                 ; | to stack
CODE_038C57:        PHA                       ;/
CODE_038C58:        STZ $0756                 ;Small powerup
CODE_038C5B:        LDA #$02                  ;\
CODE_038C5D:        STA $0744                 ;/Set background color
CODE_038C60:        JSL CODE_049A88           ;
CODE_038C64:        PLA                       ;\
CODE_038C65:        STA $0756                 ; | Restore background color and current player powerup
CODE_038C68:        PLA                       ; |
CODE_038C69:        STA $0744                 ;/
CODE_038C6C:        JMP CODE_038F0D           ;To next screen routine

CODE_038C6F:        LDA $5C                   ;
CODE_038C71:        JSL CODE_05C8FB           ;
CODE_038C75:        JSL CODE_04956B           ;
CODE_038C79:        RTS                       ;

CODE_038C7A:        JSL CODE_049A7D           ;
CODE_038C7E:        RTS                       ;

CODE_038C7F:        INC $073C                 ;
CODE_038C82:        RTS                       ;

CODE_038C83:        LDA #$00                  ;
CODE_038C85:        JSR CODE_0390FC           ;
CODE_038C88:        JMP CODE_038F0D           ;

CODE_038C8B:        JSR CODE_03BD5E           ;
CODE_038C8E:        REP #$30                  ;
CODE_038C90:        LDX $1700                 ;
CODE_038C93:        LDA #$7258                ;
CODE_038C96:        STA $1702,x               ;
CODE_038C99:        LDA #$0700                ;
CODE_038C9C:        STA $1704,x               ;
CODE_038C9F:        LDA #$2028                ;
CODE_038CA2:        STA $1706,x               ;
CODE_038CA5:        SEP #$20                  ;
CODE_038CA7:        LDA $075F                 ;
CODE_038CAA:        INC A                     ;
CODE_038CAB:        STA $1708,x               ;
CODE_038CAE:        LDA #$20                  ;
CODE_038CB0:        STA $1709,x               ;
CODE_038CB3:        STA $170B,x               ;
CODE_038CB6:        STA $170D,x               ;
CODE_038CB9:        LDA #$24                  ;
CODE_038CBB:        STA $170A,x               ;
CODE_038CBE:        LDA $075C                 ;
CODE_038CC1:        INC A                     ;
CODE_038CC2:        STA $170C,x               ;
CODE_038CC5:        LDA #$FF                  ;
CODE_038CC7:        STA $170E,x               ;
CODE_038CCA:        LDA $0770                 ;
CODE_038CCD:        BNE CODE_038CE3           ;
CODE_038CCF:        LDA $701FF2               ;
CODE_038CD3:        BNE CODE_038CE3           ;
CODE_038CD5:        LDA $7FFB06               ;
CODE_038CD9:        BMI CODE_038CE3           ;
CODE_038CDB:        LDA $7FFB00               ;
CODE_038CDF:        INC A                     ;
CODE_038CE0:        STA $1708,x               ;
CODE_038CE3:        REP #$20                  ;
CODE_038CE5:        TXA                       ;
CODE_038CE6:        CLC                       ;
CODE_038CE7:        ADC #$000C                ;
CODE_038CEA:        STA $1700                 ;
CODE_038CED:        TAX                       ;
CODE_038CEE:        SEP #$20                  ;
CODE_038CF0:        LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_038CF3:        BEQ CODE_038CFA           ;
CODE_038CF5:        LDA #$2A                  ;
CODE_038CF7:        STA $16FA,x               ;
CODE_038CFA:        SEP #$10                  ;
CODE_038CFC:        JMP CODE_038F0D           ;

CODE_038CFF:        LDA $0759                 ;
CODE_038D02:        BEQ CODE_038D75           ;
CODE_038D04:        STZ $0759                 ;
CODE_038D07:        LDY #$00                  ;
CODE_038D09:        JSR CODE_0385F3           ;
CODE_038D0C:        JSL CODE_0491DD           ;
CODE_038D10:        LDA #$01                  ;
CODE_038D12:        STA $0ED6                 ;
CODE_038D15:        LDA #$02                  ;
CODE_038D17:        JSR CODE_038D9D           ;
CODE_038D1A:        LDA $077A                 ;
CODE_038D1D:        BEQ CODE_038D74           ;
CODE_038D1F:        LDA $0761                 ;
CODE_038D22:        BMI CODE_038D74           ;
CODE_038D24:        REP #$20                  ;
CODE_038D26:        LDA #$7258                ;
CODE_038D29:        STA $1702,y               ;
CODE_038D2C:        LDA #$0700                ;
CODE_038D2F:        STA $1704,y               ;
CODE_038D32:        LDA #$2028                ;
CODE_038D35:        STA $1706,y               ;
CODE_038D38:        SEP #$20                  ;
CODE_038D3A:        LDA $0766                 ;
CODE_038D3D:        INC A                     ;
CODE_038D3E:        STA $1708,y               ;
CODE_038D41:        LDA #$20                  ;
CODE_038D43:        STA $1709,y               ;
CODE_038D46:        STA $170B,y               ;
CODE_038D49:        STA $170D,y               ;
CODE_038D4C:        LDA #$24                  ;
CODE_038D4E:        STA $170A,y               ;
CODE_038D51:        LDA $0763                 ;
CODE_038D54:        INC A                     ;
CODE_038D55:        STA $170C,y               ;
CODE_038D58:        LDA #$FF                  ;
CODE_038D5A:        STA $170E,y               ;
CODE_038D5D:        REP #$20                  ;
CODE_038D5F:        TYA                       ;
CODE_038D60:        CLC                       ;
CODE_038D61:        ADC #$000C                ;
CODE_038D64:        STA $1700                 ;
CODE_038D67:        TAY                       ;
CODE_038D68:        SEP #$20                  ;
CODE_038D6A:        LDA $0781                 ;
CODE_038D6D:        BEQ CODE_038D74           ;
CODE_038D6F:        LDA #$2A                  ;
CODE_038D71:        STA $16FA,y               ;
CODE_038D74:        RTS                       ;

CODE_038D75:        INC $073C                 ;
CODE_038D78:        JMP CODE_038F0D           ;

CODE_038D7B:        LDA $0770                 ;\
CODE_038D7E:        BEQ CODE_038DC9           ;/Skip if game operating mode is title screen
CODE_038D80:        CMP #$03                  ;\
CODE_038D82:        BEQ CODE_038DCF           ;/If game over, display game over instead.
CODE_038D84:        LDA $0752                 ;\
CODE_038D87:        BNE CODE_038DC9           ;/Branch if an exit is taken
CODE_038D89:        LDY $5C                   ;\
CODE_038D8B:        CPY #$03                  ; | Check for castle level
CODE_038D8D:        BEQ CODE_038D94           ;/ If castle, branch
CODE_038D8F:        LDA $0769                 ;\
CODE_038D92:        BNE CODE_038DC9           ;/ Go to next screen task if level preview skip flag is set
CODE_038D94:        JSR CODE_03F861           ;
CODE_038D97:        JSL CODE_0492E7           ;
CODE_038D9B:        LDA #$01                  ;
CODE_038D9D:        JSR CODE_0390FC           ;
CODE_038DA0:        JSR CODE_039224           ;
CODE_038DA3:        STZ $1204                 ;
CODE_038DA6:        STZ $1205                 ;
CODE_038DA9:        STZ $1206                 ;
CODE_038DAC:        STZ $1209                 ;
CODE_038DAF:        LDA #$20                  ;
CODE_038DB1:        STA $120A                 ;
CODE_038DB4:        STZ $1203                 ;
CODE_038DB7:        LDA #$02                  ;
CODE_038DB9:        STA $0E7F                 ;
CODE_038DBC:        STZ $0E4F                 ;
CODE_038DBF:        STZ $1201                 ;
CODE_038DC2:        STZ $0E7E                 ;No screen pixelation/mosaic
CODE_038DC5:        STZ $0774                 ;
CODE_038DC8:        RTS                       ;

CODE_038DC9:        LDA #$08                  ;
CODE_038DCB:        STA $073C                 ;
CODE_038DCE:        RTS                       ;

CODE_038DCF:        STZ $1204                 ;
CODE_038DD2:        STZ $1205                 ;
CODE_038DD5:        STZ $1206                 ;
CODE_038DD8:        STZ $1209                 ;
CODE_038DDB:        LDA #$20                  ;
CODE_038DDD:        STA $120A                 ;
CODE_038DE0:        STZ $1203                 ;
CODE_038DE3:        LDA $0774                 ;
CODE_038DE6:        BEQ CODE_038DFA           ;
CODE_038DE8:        STZ $0E4F                 ;
CODE_038DEB:        STZ $0774                 ;
CODE_038DEE:        STZ $1201                 ;
CODE_038DF1:        LDA #$02                  ;
CODE_038DF3:        STA $0E7F                 ;
CODE_038DF6:        JSL CODE_0491DD           ;
CODE_038DFA:        LDA #$09                  ;
CODE_038DFC:        STA $07B0                 ;
CODE_038DFF:        LDA #$03                  ;
CODE_038E01:        JSR CODE_0390FC           ;
CODE_038E04:        LDA $077A                 ;
CODE_038E07:        BEQ CODE_038E0E           ;
CODE_038E09:        LDA $0761                 ;
CODE_038E0C:        BPL CODE_038E2D           ;
CODE_038E0E:        PHX                       ;
CODE_038E0F:        PHY                       ;
CODE_038E10:        REP #$10                  ;
CODE_038E12:        LDX #$0000                ;
CODE_038E15:        STZ $E5                   ;
CODE_038E17:        LDY $E4                   ;
CODE_038E19:        LDA DATA_039030,x               ;
CODE_038E1C:        STA $1702,y               ;
CODE_038E1F:        INX                       ;
CODE_038E20:        INY                       ;
CODE_038E21:        INC A                     ;
CODE_038E22:        BNE CODE_038E19           ;
CODE_038E24:        STY $1700                 ;
CODE_038E27:        SEP #$10                  ;
CODE_038E29:        PLY                       ;
CODE_038E2A:        PLX                       ;
CODE_038E2B:        BRA CODE_038E31           ;

CODE_038E2D:        JSL CODE_0486DF           ;
CODE_038E31:        STZ $0EC3                 ;
CODE_038E34:        JMP CODE_038F16           ;

CODE_038E37:        LDA $0774                 ;
CODE_038E3A:        BEQ CODE_038E42           ;
CODE_038E3C:        CMP #$01                  ;
CODE_038E3E:        BEQ CODE_038E4F           ;
CODE_038E40:        BRA CODE_038E4C           ;

CODE_038E42:        LDA #$01                  ;
CODE_038E44:        STA $0E7F                 ;
CODE_038E47:        STZ $0E4F                 ;
CODE_038E4A:        BRA CODE_038E64           ;

CODE_038E4C:        INC $0774                 ;
CODE_038E4F:        JSR CODE_03A295           ;
CODE_038E52:        LDA $071F                 ;
CODE_038E55:        BNE CODE_038E4F           ;
CODE_038E57:        DEC $071E                 ;
CODE_038E5A:        BPL CODE_038E5F           ;
CODE_038E5C:        INC $073C                 ;
CODE_038E5F:        LDA #$06                  ;
CODE_038E61:        STA $0773                 ;
CODE_038E64:        RTS                       ;

CODE_038E65:        LDA $0770                 ;
CODE_038E68:        BEQ CODE_038E6D           ;
CODE_038E6A:        JMP CODE_038F16           ;

CODE_038E6D:        PHB                       ;
CODE_038E6E:        LDA.b #DATA_05D850>>16    ;
CODE_038E70:        PHA                       ;
CODE_038E71:        PLB                       ;
CODE_038E72:        LDA #$01                  ;
CODE_038E74:        STA $0EC8                 ;
CODE_038E77:        REP #$30                  ;
CODE_038E79:        LDX $1700                 ;
CODE_038E7C:        LDY #$0000                ;
CODE_038E7F:        LDA.w DATA_05D850,y       ;
CODE_038E82:        STA $1702,x               ;
CODE_038E85:        INC A                     ;
CODE_038E86:        BEQ CODE_038E8E           ;
CODE_038E88:        INX                       ;
CODE_038E89:        INX                       ;
CODE_038E8A:        INY                       ;
CODE_038E8B:        INY                       ;
CODE_038E8C:        BRA CODE_038E7F           ;

CODE_038E8E:        STX $1700                 ;
CODE_038E91:        SEP #$30                  ;
CODE_038E93:        PLB                       ;
CODE_038E94:        STZ $0E20                 ;
CODE_038E97:        LDA #$80                  ;
CODE_038E99:        STA $1602                 ;
CODE_038E9C:        STA $0ED6                 ;
CODE_038E9F:        LDA #$05                  ;
CODE_038EA1:        STA $0773                 ;
CODE_038EA4:        LDA $7FFB06               ;
CODE_038EA8:        BMI CODE_038EAD           ;
CODE_038EAA:        JSR CODE_038EB0           ;
CODE_038EAD:        JMP CODE_038F0D           ;

CODE_038EB0:        PHX                       ;
CODE_038EB1:        PHY                       ;
CODE_038EB2:        REP #$30                  ;
CODE_038EB4:        LDA $7FFB06               ;
CODE_038EB8:        AND #$0001                ;
CODE_038EBB:        ASL A                     ;
CODE_038EBC:        TAY                       ;
CODE_038EBD:        LDX $1700                 ;
CODE_038EC0:        LDA #$024A                ;
CODE_038EC3:        CLC                       ;
CODE_038EC4:        ADC DATA_038EED,y               ;
CODE_038EC7:        XBA                       ;
CODE_038EC8:        STA $1702,x               ;
CODE_038ECB:        LDA #$4018                ;
CODE_038ECE:        XBA                       ;
CODE_038ECF:        STA $1704,x               ;
CODE_038ED2:        LDA #$0024                ;
CODE_038ED5:        STA $1706,x               ;
CODE_038ED8:        LDA #$FFFF                ;
CODE_038EDB:        STA $1708,x               ;
CODE_038EDE:        LDA $1700                 ;
CODE_038EE1:        CLC                       ;
CODE_038EE2:        ADC #$0006                ;
CODE_038EE5:        STA $1700                 ;
CODE_038EE8:        SEP #$30                  ;
CODE_038EEA:        PLY                       ;
CODE_038EEB:        PLX                       ;
CODE_038EEC:        RTS                       ;

DATA_038EED:        dw $0040,$0000

CODE_038EF1:        LDA $0770                 ;
CODE_038EF4:        BNE CODE_038F16           ;
CODE_038EF6:        LDX #$00                  ;
CODE_038EF8:        STA $0300,x               ;
CODE_038EFB:        STA $0400,x               ;
CODE_038EFE:        DEX                       ;
CODE_038EFF:        BNE CODE_038EF8           ;
CODE_038F01:        LDA $7FFB06               ;
CODE_038F05:        BMI CODE_038F0A           ;
CODE_038F07:        STA $077A                 ;
CODE_038F0A:        JSR CODE_038861           ;
CODE_038F0D:        INC $073C                 ;
CODE_038F10:        RTS                       ;

;Write Top Score screen routine task
CODE_038F11:        LDA #$FA                  ;
CODE_038F13:        JSR CODE_03BD64           ;
CODE_038F16:        INC $0772                 ; Move to next screen routine task
CODE_038F19:        RTS                       ;

DATA_038F1A:        db $58,$43,$00,$09,$16,$20,$0A,$20 ;
                    db $1B,$20,$12,$20,$18,$20,$58,$52 ;
                    db $00,$15,$20,$20,$18,$20,$1B,$20 ;
                    db $15,$20,$0D,$20,$28,$20,$28,$20 ;
                    db $1D,$20,$12,$20,$16,$20,$0E,$20 ;
                    db $58,$68,$00,$09,$00,$20,$28,$20 ;
                    db $28,$20,$27,$24,$25,$20,$FF,$59 ;
                    db $6D,$00,$0F,$28,$20,$28,$20,$28 ;
                    db $20,$25,$20,$28,$20,$28,$20,$28 ;
                    db $20,$28,$20,$59,$E0,$40,$FE,$28 ;
                    db $00,$59,$0B,$00,$13,$20,$20,$18 ;
                    db $20,$1B,$20,$15,$20,$0D,$20,$28 ;
                    db $20,$28,$20,$28,$20,$24,$20,$28 ;
                    db $20,$58,$AC,$40,$0D,$28,$20,$FF ;
                    db $09,$6D,$00,$09,$E0,$19,$E1,$19 ;
                    db $E2,$19,$E3,$19,$E4,$19,$09,$8D ;
                    db $00,$09,$F0,$19,$F1,$19,$F2,$19 ;
                    db $F3,$19,$F4,$19,$09,$AC,$00,$0D ;
                    db $CA,$19,$CB,$19,$CC,$19,$CD,$19 ;
                    db $24,$00,$CE,$19,$CF,$19,$09,$CC ;
                    db $00,$0D,$DA,$19,$DB,$19,$DC,$19 ;
                    db $DD,$19,$24,$00,$DE,$19,$DF,$19 ;
                    db $FF,$08,$CD,$00,$09,$E0,$19,$E1 ;
                    db $19,$E2,$19,$E3,$19,$E4,$19,$08 ;
                    db $ED,$00,$09,$F0,$19,$F1,$19,$F2 ;
                    db $19,$F3,$19,$F4,$19,$09,$2B,$00 ;
                    db $13,$C0,$19,$C1,$19,$C2,$19,$C3 ;
                    db $19,$C4,$19,$C5,$19,$C6,$19,$C7 ;
                    db $19,$C8,$19,$C9,$19,$09,$4B,$00 ;
                    db $13,$D0,$19,$D1,$19,$D2,$19,$D3 ;
                    db $19,$D4,$19,$D5,$19,$D6,$19,$D7 ;
                    db $19,$D8,$19,$D9,$19,$09,$6D,$40 ;
                    db $08,$24,$00,$09,$8D,$40,$08,$24 ;
                    db $00,$09,$AC,$40,$0C,$24,$00,$09 ;
                    db $CC,$40,$0C,$24,$00,$FF ;

DATA_039030:        db $09,$AB,$00,$0F,$A1,$02,$A2,$02 ;
                    db $A3,$02,$A4,$02,$A5,$02,$A6,$02 ;
                    db $A7,$02,$A8,$02,$09,$EB,$00,$19 ;
                    db $AE,$02,$AF,$02,$B0,$02,$B1,$02 ;
                    db $AD,$02,$A1,$02,$A2,$02,$A3,$02 ;
                    db $A4,$02,$A5,$02,$A6,$02,$A7,$02 ;
                    db $A8,$02,$0A,$2B,$00,$11,$AE,$02 ;
                    db $AF,$02,$B0,$02,$B1,$02,$AD,$02 ;
                    db $A9,$02,$AA,$02,$AB,$02,$AC,$02 ;
                    db $FF,$05,$84,$00,$29,$20,$08,$0E ;
                    db $08,$15,$08,$0C,$08,$18,$08,$16 ;
                    db $08,$0E,$08,$24,$00,$1D,$08,$18 ;
                    db $08,$24,$00,$20,$08,$0A,$08,$1B ;
                    db $08,$19,$08,$24,$00,$23,$08,$18 ;
                    db $08,$17,$08,$0E,$08,$2B,$08,$05 ;
                    db $E5,$00,$01,$24,$08,$05,$ED,$00 ;
                    db $01,$24,$08,$05,$F5,$00,$01,$24 ;
                    db $08,$FF ;

DATA_0390BA:        db $E5,$19,$E6,$19,$E7,$19,$E8,$19 ;
                    db $E9,$19 ;

DATA_0390C4:        db $F5,$19,$F6,$19,$F7,$19,$F8,$19 ;
                    db $F9,$19 ;

DATA_0390CE:        db $15,$20,$1E,$20,$12,$20,$10,$20 ;
                    db $12,$20 ;

DATA_0390D8:        db $04,$03,$02,$00,$24,$05,$24,$00 ;
                    db $08,$07,$06,$00 ;

DATA_0390E4:        dw $0000,$0000,$0037,$0037
                    dw $0070,$008C,$00B1,$00CD
                    dw $015F,$015F,$0116,$0116

CODE_0390FC:        PHA                       ;
CODE_0390FD:        ASL A                     ;
CODE_0390FE:        TAY                       ;
CODE_0390FF:        CPY #$04                  ;
CODE_039101:        BCC CODE_03910F           ;
CODE_039103:        CPY #$08                  ;
CODE_039105:        BCC CODE_039109           ;
CODE_039107:        LDY #$08                  ;
CODE_039109:        LDA $077A                 ;
CODE_03910C:        BNE CODE_03910F           ;
CODE_03910E:        INY                       ;
CODE_03910F:        STY $F3                   ;
CODE_039111:        TYA                       ;
CODE_039112:        ASL A                     ;
CODE_039113:        AND #$FF                  ;
CODE_039115:        REP #$30                  ;
CODE_039117:        AND #$00FF                ;
CODE_03911A:        TAY                       ;
CODE_03911B:        LDX DATA_0390E4,y               ;
CODE_03911E:        LDY $1700                 ;
CODE_039121:        SEP #$20                  ;
CODE_039123:        LDA DATA_038F1A,x               ;
CODE_039126:        CMP #$FF                  ;
CODE_039128:        BEQ CODE_039131           ;
CODE_03912A:        STA $1702,y               ;
CODE_03912D:        INX                       ;
CODE_03912E:        INY                       ;
CODE_03912F:        BRA CODE_039123           ;

CODE_039131:        LDA #$FF                  ;
CODE_039133:        STA $1702,y               ;
CODE_039136:        STY $E4                   ;
CODE_039138:        SEP #$10                  ;
CODE_03913A:        PLA                       ;
CODE_03913B:        TAX                       ;
CODE_03913C:        CMP #$04                  ;
CODE_03913E:        BCC CODE_039143           ;
CODE_039140:        JMP CODE_0391DA           ;

CODE_039143:        DEX                       ;
CODE_039144:        BNE CODE_0391A2           ;
CODE_039146:        JSL CODE_048895           ;
CODE_03914A:        PHX                       ;
CODE_03914B:        LDX $1700                 ;
CODE_03914E:        LDA $075A                 ;
CODE_039151:        INC A                     ;
CODE_039152:        CMP #$0A                  ;
CODE_039154:        BCC CODE_039183           ;
CODE_039156:        STZ $E4                   ;
CODE_039158:        STZ $E5                   ;
CODE_03915A:        SEC                       ;
CODE_03915B:        SBC #$64                  ;
CODE_03915D:        BCC CODE_039163           ;
CODE_03915F:        INC $E4                   ;
CODE_039161:        BRA CODE_03915A           ;

CODE_039163:        CLC                       ;
CODE_039164:        ADC #$64                  ;
CODE_039166:        SEC                       ;
CODE_039167:        SBC #$0A                  ;
CODE_039169:        BCC CODE_03916F           ;
CODE_03916B:        INC $E5                   ;
CODE_03916D:        BRA CODE_039166           ;

CODE_03916F:        CLC                       ;
CODE_039170:        ADC #$0A                  ;
CODE_039172:        STA $E6                   ;
CODE_039174:        LDY $E4                   ;
CODE_039176:        BEQ CODE_03917C           ;
CODE_039178:        TYA                       ;
CODE_039179:        STA $170E,x               ;
CODE_03917C:        LDA $E5                   ;
CODE_03917E:        STA $1710,x               ;
CODE_039181:        LDA $E6                   ;
CODE_039183:        STA $1712,x               ;
CODE_039186:        LDY $075F                 ;
CODE_039189:        INY                       ;
CODE_03918A:        TYA                       ;
CODE_03918B:        STA $172E,x               ;
CODE_03918E:        LDY $075C                 ;
CODE_039191:        INY                       ;
CODE_039192:        TYA                       ;
CODE_039193:        STA $1732,x               ;
CODE_039196:        LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_039199:        BEQ CODE_0391A0           ;
CODE_03919B:        LDA #$2A                  ;
CODE_03919D:        STA $172C,x               ;
CODE_0391A0:        PLX                       ;
CODE_0391A1:        RTS                       ;

CODE_0391A2:        LDA $077A                 ;
CODE_0391A5:        BEQ CODE_0391D9           ;
CODE_0391A7:        LDA $0EC3                 ;
CODE_0391AA:        BEQ CODE_0391D9           ;
CODE_0391AC:        PHY                       ;
CODE_0391AD:        LDA $1700                 ;
CODE_0391B0:        CLC                       ;
CODE_0391B1:        ADC #$09                  ;
CODE_0391B3:        TAY                       ;
CODE_0391B4:        LDA $F3                   ;
CODE_0391B6:        CMP #$04                  ;
CODE_0391B8:        BEQ CODE_0391BE           ;
CODE_0391BA:        CMP #$06                  ;
CODE_0391BC:        BNE CODE_0391CF           ;
CODE_0391BE:        LDA DATA_0390BA,y               ;
CODE_0391C1:        STA $1706,y               ;
CODE_0391C4:        LDA DATA_0390C4,y               ;
CODE_0391C7:        STA $1714,y               ;
CODE_0391CA:        DEY                       ;
CODE_0391CB:        BPL CODE_0391BE           ;
CODE_0391CD:        BRA CODE_0391D8           ;

CODE_0391CF:        LDA DATA_0390CE,y               ;
CODE_0391D2:        STA $1706,y               ;
CODE_0391D5:        DEY                       ;
CODE_0391D6:        BPL CODE_0391CF           ;
CODE_0391D8:        PLY                       ;
CODE_0391D9:        RTS                       ;

CODE_0391DA:        SBC #$04                  ;
CODE_0391DC:        ASL A                     ;
CODE_0391DD:        ASL A                     ;
CODE_0391DE:        TAX                       ;
CODE_0391DF:        REP #$30                  ;
CODE_0391E1:        LDA $1700                 ;
CODE_0391E4:        CLC                       ;
CODE_0391E5:        ADC #$0000                ;
CODE_0391E8:        TAY                       ;
CODE_0391E9:        SEP #$30                  ;
CODE_0391EB:        LDA #$12                  ;
CODE_0391ED:        CLC                       ;
CODE_0391EE:        ADC $1700                 ;
CODE_0391F1:        STA $E6                   ;
CODE_0391F3:        LDA DATA_0390D8,x               ;
CODE_0391F6:        STA $1734,y               ;
CODE_0391F9:        INX                       ;
CODE_0391FA:        INY                       ;
CODE_0391FB:        INY                       ;
CODE_0391FC:        INY                       ;
CODE_0391FD:        INY                       ;
CODE_0391FE:        INY                       ;
CODE_0391FF:        INY                       ;
CODE_039200:        CPY $E6                   ;
CODE_039202:        BCC CODE_0391F3           ;
CODE_039204:        REP #$20                  ;
CODE_039206:        LDA #$0040                ;
CODE_039209:        CLC                       ;
CODE_03920A:        ADC $1700                 ;
CODE_03920D:        STA $1700                 ;
CODE_039210:        SEP #$20                  ;
CODE_039212:        RTS                       ;

CODE_039213:        LDA $07B0                 ;
CODE_039216:        BNE CODE_03922C           ;
CODE_039218:        LDA $0770                 ;
CODE_03921B:        CMP #$03                  ;
CODE_03921D:        BEQ CODE_039224           ;
CODE_03921F:        LDA #$01                  ;
CODE_039221:        STA $0E7F                 ;
CODE_039224:        LDA #$07                  ;
CODE_039226:        STA $07B0                 ;
CODE_039229:        INC $073C                 ;
CODE_03922C:        RTS                       ;

CODE_03922D:        LDA $0EC9                 ;\If done rendering the level, return?
CODE_039230:        BNE CODE_03922C           ;/or: If no objects flag is set, return?
CODE_039232:        REP #$30                  ;16-bit AXY
CODE_039234:        LDY $1A00                 ;\ 
CODE_039237:        STY $00                   ;/ ??
CODE_039239:        LDA $0720                 ;\Load layer 1 drawing handler
CODE_03923C:        STA $1A02,y               ;/Store it here?
CODE_03923F:        XBA                       ;\
CODE_039240:        STA $0ECC                 ;/Swap high and low bytes and store it here.
CODE_039243:        LDA #$3D80                ;
CODE_039246:        STA $1A04,y               ;
CODE_039249:        LDA #$0024                ;
CODE_03924C:        STA $1A06,y               ;
CODE_03924F:        STA $1A08,y               ;
CODE_039252:        STA $1A0A,y               ;
CODE_039255:        STA $1A0C,y               ;
CODE_039258:        SEP #$30                  ;
CODE_03925A:        LDX #$00                  ;
CODE_03925C:        LDA $0EE7                 ;
CODE_03925F:        BEQ CODE_039271           ;
CODE_039261:        STA $0EE6                 ;
CODE_039264:        LDA $0720                 ;
CODE_039267:        STA $0EF5                 ;
CODE_03926A:        LDA $0721                 ;
CODE_03926D:        INC A                     ;
CODE_03926E:        STA $0EF4                 ;
CODE_039271:        STX $02                   ;
CODE_039273:        LDA $06A1,x               ;
CODE_039276:        AND #$C0                  ;
CODE_039278:        ASL A                     ;
CODE_039279:        ROL A                     ;
CODE_03927A:        ROL A                     ;
CODE_03927B:        TAY                       ;
CODE_03927C:        LDA DATA_039438,y               ;
CODE_03927F:        STA $06                   ;
CODE_039281:        LDA DATA_03943C,y               ;
CODE_039284:        STA $07                   ;
CODE_039286:        REP #$30                  ;
CODE_039288:        TXA                       ;
CODE_039289:        AND #$00FF                ;
CODE_03928C:        TAX                       ;
CODE_03928D:        LDA $06A1,x               ;
CODE_039290:        AND #$003F                ;
CODE_039293:        ASL A                     ;
CODE_039294:        ASL A                     ;
CODE_039295:        ASL A                     ;
CODE_039296:        STA $03                   ;
CODE_039298:        LDA $071F                 ;
CODE_03929B:        AND #$0001                ;
CODE_03929E:        EOR #$0001                ;
CODE_0392A1:        ASL A                     ;
CODE_0392A2:        ASL A                     ;
CODE_0392A3:        ADC $03                   ;
CODE_0392A5:        TAY                       ;
CODE_0392A6:        LDX $00                   ;
CODE_0392A8:        LDA ($06),y               ;
CODE_0392AA:        STA $1A0E,x               ;
CODE_0392AD:        INY                       ;
CODE_0392AE:        INY                       ;
CODE_0392AF:        LDA ($06),y               ;
CODE_0392B1:        STA $1A10,x               ;
CODE_0392B4:        INC $00                   ;
CODE_0392B6:        INC $00                   ;
CODE_0392B8:        INC $00                   ;
CODE_0392BA:        INC $00                   ;
CODE_0392BC:        SEP #$30                  ;
CODE_0392BE:        LDX $02                   ;
CODE_0392C0:        INX                       ;
CODE_0392C1:        CPX #$0D                  ;
CODE_0392C3:        BCS CODE_0392C8           ;
CODE_0392C5:        JMP CODE_039271           ;

CODE_0392C8:        REP #$30                  ;
CODE_0392CA:        LDY $1A00                 ;
CODE_0392CD:        LDA $1A0E,y               ;
CODE_0392D0:        CMP #$18A2                ;
CODE_0392D3:        BEQ CODE_0392DA           ;
CODE_0392D5:        CMP #$18A3                ;
CODE_0392D8:        BNE CODE_0392E6           ;
CODE_0392DA:        STA $1A06,y               ;
CODE_0392DD:        STA $1A08,y               ;
CODE_0392E0:        STA $1A0A,y               ;
CODE_0392E3:        STA $1A0C,y               ;
CODE_0392E6:        LDA $00                   ;
CODE_0392E8:        CLC                       ;
CODE_0392E9:        ADC #$000E                ;
CODE_0392EC:        TAY                       ;
CODE_0392ED:        LDA #$FFFF                ;
CODE_0392F0:        STA $1A02,y               ;
CODE_0392F3:        STY $1A00                 ;
CODE_0392F6:        LDA $0743                 ;
CODE_0392F9:        AND #$00FF                ;
CODE_0392FC:        BNE CODE_039334           ;
CODE_0392FE:        LDA $5C                   ;
CODE_039300:        AND #$00FF                ;
CODE_039303:        BEQ CODE_039334           ;
CODE_039305:        CMP #$0003                ;
CODE_039308:        BEQ CODE_039334           ;
CODE_03930A:        LDA $19F8,y               ;
CODE_03930D:        CMP #$0024                ;
CODE_039310:        BEQ CODE_039327           ;
CODE_039312:        CMP #$10A4                ;
CODE_039315:        BEQ CODE_039327           ;
CODE_039317:        CMP #$0A08                ;
CODE_03931A:        BNE CODE_039330           ;
CODE_03931C:        LDA $0ECE                 ;
CODE_03931F:        AND #$FF00                ;
CODE_039322:        STA $0ECE                 ;
CODE_039325:        BRA CODE_039330           ;

CODE_039327:        LDA $0ECE                 ;
CODE_03932A:        ORA #$0100                ;
CODE_03932D:        STA $0ECE                 ;
CODE_039330:        JSL CODE_048D71           ;
CODE_039334:        SEP #$30                  ;
CODE_039336:        INC $0721                 ;
CODE_039339:        LDA $0721                 ;
CODE_03933C:        AND #$1F                  ;
CODE_03933E:        BNE CODE_03934B           ;
CODE_039340:        STZ $0721                 ;
CODE_039343:        LDA $0720                 ;
CODE_039346:        EOR #$04                  ;
CODE_039348:        STA $0720                 ;
CODE_03934B:        LDA #$06                  ;
CODE_03934D:        STA $0773                 ;
CODE_039350:        RTS                       ;

CODE_039351:        RTS                       ;

CODE_039352:        RTS                       ;

DATA_039353:        dw $0C45,$0C45,$0C47,$0C47
                    dw $0C47,$0C47,$0C47,$0C47
                    dw $0C57,$0C58,$0C59,$0C5A
                    dw $0024,$0024,$0024,$0024

CODE_039373:        LDY $1700                 ;
CODE_039376:        INY                       ;
CODE_039377:        LDA #$03                  ;
CODE_039379:        JSR CODE_0393C1           ;
CODE_03937C:        LDA #$06                  ;
CODE_03937E:        STA $0773                 ;
CODE_039381:        JMP CODE_0393B2           ;

CODE_039384:        JSR CODE_039390           ;
CODE_039387:        INC $03F2                 ;Increase the counter for the amount of bounce blocks you've created.
CODE_03938A:        DEC $03EE,x               ;
CODE_03938D:        RTS                       ;

CODE_03938E:        LDA #$00                  ;
CODE_039390:        LDY #$03                  ;
CODE_039392:        CMP #$00                  ;
CODE_039394:        BEQ CODE_0393AA           ;
CODE_039396:        LDY #$00                  ;
CODE_039398:        CMP #$5B                  ;
CODE_03939A:        BEQ CODE_0393AA           ;
CODE_03939C:        CMP #$51                  ;
CODE_03939E:        BEQ CODE_0393AA           ;
CODE_0393A0:        INY                       ;
CODE_0393A1:        CMP #$60                  ;
CODE_0393A3:        BEQ CODE_0393AA           ;
CODE_0393A5:        CMP #$52                  ;
CODE_0393A7:        BEQ CODE_0393AA           ;
CODE_0393A9:        INY                       ;
CODE_0393AA:        TYA                       ;
CODE_0393AB:        LDY $1700                 ;
CODE_0393AE:        INY                       ;
CODE_0393AF:        JSR CODE_0393C1           ;
CODE_0393B2:        REP #$20                  ;
CODE_0393B4:        LDA $1700                 ;
CODE_0393B7:        CLC                       ;
CODE_0393B8:        ADC #$0010                ;
CODE_0393BB:        STA $1700                 ;
CODE_0393BE:        SEP #$20                  ;
CODE_0393C0:        RTS                       ;

CODE_0393C1:        STX $00                   ;
CODE_0393C3:        STY $01                   ;
CODE_0393C5:        ASL A                     ;
CODE_0393C6:        ASL A                     ;
CODE_0393C7:        ASL A                     ;
CODE_0393C8:        TAX                       ;
CODE_0393C9:        LDY #$00                  ;
CODE_0393CB:        LDA $06                   ;
CODE_0393CD:        CMP #$D0                  ;
CODE_0393CF:        BCC CODE_0393D3           ;
CODE_0393D1:        LDY #$04                  ;
CODE_0393D3:        STY $03                   ;
CODE_0393D5:        AND #$0F                  ;
CODE_0393D7:        ASL A                     ;
CODE_0393D8:        STA $04                   ;
CODE_0393DA:        STZ $05                   ;
CODE_0393DC:        LDA $02                   ;
CODE_0393DE:        CLC                       ;
CODE_0393DF:        ADC #$20                  ;
CODE_0393E1:        ASL A                     ;
CODE_0393E2:        ROL $05                   ;
CODE_0393E4:        ASL A                     ;
CODE_0393E5:        ROL $05                   ;
CODE_0393E7:        ADC $04                   ;
CODE_0393E9:        STA $04                   ;
CODE_0393EB:        LDA $05                   ;
CODE_0393ED:        ADC $03                   ;
CODE_0393EF:        STA $05                   ;
CODE_0393F1:        LDY $01                   ;
CODE_0393F3:        REP #$30                  ;
CODE_0393F5:        TYA                       ;
CODE_0393F6:        AND #$00FF                ;
CODE_0393F9:        TAY                       ;
CODE_0393FA:        TXA                       ;
CODE_0393FB:        AND #$00FF                ;
CODE_0393FE:        TAX                       ;
CODE_0393FF:        LDA $04                   ;
CODE_039401:        XBA                       ;
CODE_039402:        STA $1701,y               ;
CODE_039405:        CLC                       ;
CODE_039406:        ADC #$2000                ;
CODE_039409:        STA $1709,y               ;
CODE_03940C:        LDA #$0300                ;
CODE_03940F:        STA $1703,y               ;
CODE_039412:        STA $170B,y               ;
CODE_039415:        LDA DATA_039353,x               ;
CODE_039418:        STA $1705,y               ;
CODE_03941B:        LDA DATA_039353+2,x               ;
CODE_03941E:        STA $1707,y               ;
CODE_039421:        LDA DATA_039353+4,x               ;
CODE_039424:        STA $170D,y               ;
CODE_039427:        LDA DATA_039353+6,x               ;
CODE_03942A:        STA $170F,y               ;
CODE_03942D:        LDA #$FFFF                ;
CODE_039430:        STA $1711,y               ;
CODE_039433:        SEP #$30                  ;
CODE_039435:        LDX $00                   ;
CODE_039437:        RTS                       ;

DATA_039438:        dw $9840,$C858

DATA_03943C:        dw $9594,$9797

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

CODE_039B08:        ASL A                     ;\Execute Pointer Short routine
CODE_039B09:        TAY                       ; |
CODE_039B0A:        PLA                       ; |(ExecutePtrShort)
CODE_039B0B:        STA $04                   ; |
CODE_039B0D:        PLA                       ; |
CODE_039B0E:        STA $05                   ; |
CODE_039B10:        INY                       ; |
CODE_039B11:        LDA ($04),y               ; |
CODE_039B13:        STA $06                   ; |
CODE_039B15:        INY                       ; |
CODE_039B16:        LDA ($04),y               ; |
CODE_039B18:        STA $07                   ; |
CODE_039B1A:        JMP ($0006)               ;/

CODE_039B1D:        STZ $00                   ;Bunch of DMA routines
CODE_039B1F:        REP #$20                  ;Direct page = $4300. DMA mode: 1 reg write once
CODE_039B21:        STZ $2102                 ;OAM address low byte: 00
CODE_039B24:        LDA #$0004                ;\Dest: data for OAM write $2104
CODE_039B27:        STA $01                   ; |Source: $00:0800
CODE_039B29:        LDA #$0008                ; |
CODE_039B2C:        STA $03                   ;/
CODE_039B2E:        LDA #$0220                ;\$220 bytes
CODE_039B31:        STA $05                   ;/
CODE_039B33:        LDX #$01                  ;\
CODE_039B35:        STX $420B                 ; |Enable DMA
CODE_039B38:        SEP #$20                  ;/
CODE_039B3A:        LDA #$80                  ;\
CODE_039B3C:        STA $2103                 ; |Regular sprite priority.
CODE_039B3F:        STZ $2102                 ;/ OAM address: $0000
CODE_039B42:        LDA $0B76                 ;
CODE_039B45:        BNE CODE_039B54           ;
CODE_039B47:        JSR CODE_039B95           ;
CODE_039B4A:        LDA $028C                 ;\Flag to disable animated graphics
CODE_039B4D:        BNE CODE_039B91           ;/
CODE_039B4F:        LDA $028D                 ;\Flag to upload animated graphics
CODE_039B52:        BEQ CODE_039B91           ;/

CODE_039B54:        REP #$20                  ;
CODE_039B56:        LDA $028A                 ;\
CODE_039B59:        STA $2116                 ;/VRAM address
CODE_039B5C:        LDA #$1801                ;\2 regs write once
CODE_039B5F:        STA $00                   ;/to 2118
CODE_039B61:        LDA $0285                 ;\
CODE_039B64:        STA $02                   ; |
CODE_039B66:        LDY $0287                 ; | DMA source: [$7E0285]
CODE_039B69:        STY $04                   ;/
CODE_039B6B:        LDA $0288                 ;\DMA size: $0288
CODE_039B6E:        STA $05                   ;/
CODE_039B70:        STX $420B                 ;enable DMA
CODE_039B73:        SEP #$20                  ;
CODE_039B75:        LDA $0B76                 ;
CODE_039B78:        BEQ CODE_039B91           ;
CODE_039B7A:        DEC $0B76                 ;
CODE_039B7D:        BEQ CODE_039B91           ;
CODE_039B7F:        LDA $0286                 ;
CODE_039B82:        CLC                       ;
CODE_039B83:        ADC #$08                  ;
CODE_039B85:        STA $0286                 ;
CODE_039B88:        LDA $028B                 ;
CODE_039B8B:        CLC                       ;
CODE_039B8C:        ADC #$04                  ;
CODE_039B8E:        STA $028B                 ;

CODE_039B91:        STZ $028C                 ;Clear flag so graphics animate again
CODE_039B94:        RTS                       ;

CODE_039B95:        LDA $028E                 ;
CODE_039B98:        BEQ CODE_039BBB           ;
CODE_039B9A:        REP #$20                  ;
CODE_039B9C:        LDA $0295                 ;
CODE_039B9F:        STA $2116                 ;
CODE_039BA2:        LDA #$1801                ;
CODE_039BA5:        STA $00                   ;
CODE_039BA7:        LDA $028F                 ;
CODE_039BAA:        STA $02                   ;
CODE_039BAC:        LDY $0291                 ;
CODE_039BAF:        STY $04                   ;
CODE_039BB1:        LDA $0293                 ;
CODE_039BB4:        STA $05                   ;
CODE_039BB6:        STX $420B                 ;
CODE_039BB9:        SEP #$20                  ;
CODE_039BBB:        RTS                       ;

;Stripe image uploader. $00-02 = 24-bit pointer to stripe image
CODE_039BBC:        REP #$10                  ;Stripe image uploader. Stripe image format:
CODE_039BBE:        LDA #$03                  ;\VVVVVVVV VVVVVVVV DRLLLLLL LLLLLLLL <data bytes>
CODE_039BC0:        STA $4314                 ;/DMA source: bank 3
CODE_039BC3:        STZ $06                   ;Clear something
CODE_039BC5:        LDY #$0000                ;Go into a loop
CODE_039BC8:        LDA [$00],y               ;\Load next byte
CODE_039BCA:        BPL CODE_039BCF           ;/If positive, go process stripe image
CODE_039BCC:        SEP #$30                  ;\else, return.
CODE_039BCE:        RTS                       ;/

CODE_039BCF:        STA $04                   ;\
CODE_039BD1:        INY                       ; |Store stripe image VRAM destination in 
CODE_039BD2:        LDA [$00],y               ; |RAM $03-$04.
CODE_039BD4:        STA $03                   ; |
CODE_039BD6:        INY                       ;/
CODE_039BD7:        LDA [$00],y               ;\
CODE_039BD9:        AND #$80                  ; |Get direction bit.
CODE_039BDB:        ASL A                     ; |0 = Horizontal, 1 = Vertical
CODE_039BDC:        ROL A                     ; |
CODE_039BDD:        STA $07                   ;/
CODE_039BDF:        LDA [$00],y               ;\
CODE_039BE1:        AND #$40                  ; |Get RLE bit. 1 = RLE, 0 = normal
CODE_039BE3:        STA $05                   ; |
CODE_039BE5:        LSR A                     ; |
CODE_039BE6:        LSR A                     ; |
CODE_039BE7:        LSR A                     ; |DMA transfer becomes RLE if necessary
CODE_039BE8:        ORA #$01                  ; |
CODE_039BEA:        STA $4310                 ;/
CODE_039BED:        LDA #$18                  ;\DMA destination: $2118, $2119
CODE_039BEF:        STA $4311                 ;/
CODE_039BF2:        REP #$20                  ;16-bit A
CODE_039BF4:        LDA $03                   ;\Set DMA VRAM dest
CODE_039BF6:        STA $2116                 ;/
CODE_039BF9:        LDA [$00],y               ;\
CODE_039BFB:        XBA                       ; |Get Length bytes
CODE_039BFC:        AND #$3FFF                ; |
CODE_039BFF:        TAX                       ; |
CODE_039C00:        INX                       ; |
CODE_039C01:        STX $4315                 ;/
CODE_039C04:        INY                       ;\
CODE_039C05:        INY                       ;/Get at next bytes
CODE_039C06:        TYA                       ;\
CODE_039C07:        CLC                       ; |Setup DMA source
CODE_039C08:        ADC $00                   ; |
CODE_039C0A:        STA $4312                 ;/
CODE_039C0D:        LDA $05                   ;\If not RLE, branch
CODE_039C0F:        BEQ CODE_039C45           ;/
CODE_039C11:        INX                       ;\
CODE_039C12:        TXA                       ; |Setup RLE DMA size
CODE_039C13:        LSR A                     ; |
CODE_039C14:        TAX                       ; |
CODE_039C15:        STX $4315                 ;/
CODE_039C18:        SEP #$20                  ;8-bit A
CODE_039C1A:        LDA $05                   ;\
CODE_039C1C:        LSR A                     ; |Set RLE DMA flag
CODE_039C1D:        LSR A                     ; |
CODE_039C1E:        LSR A                     ; |
CODE_039C1F:        STA $4310                 ;/
CODE_039C22:        LDA $07                   ;\
CODE_039C24:        STA $2115                 ;/Get RLE DMA direction. Either horz or vert
CODE_039C27:        LDA #$02                  ;\Enable RLE DMA. This will DMA the low bytes of VRAM
CODE_039C29:        STA $420B                 ;/data.
CODE_039C2C:        LDA #$19                  ;\RLE DMA dest: $2119
CODE_039C2E:        STA $4311                 ;/
CODE_039C31:        REP #$21                  ;\
CODE_039C33:        TYA                       ; |
CODE_039C34:        ADC $00                   ; |Setup RLE DMA source
CODE_039C36:        INC A                     ; |
CODE_039C37:        STA $4312                 ;/
CODE_039C3A:        LDA $03                   ;\Setup RLE VRAM dest
CODE_039C3C:        STA $2116                 ;/
CODE_039C3F:        STX $4315                 ;Setup RLE size
CODE_039C42:        LDX #$0002                ;\
CODE_039C45:        STX $03                   ; |
CODE_039C47:        TYA                       ; |
CODE_039C48:        CLC                       ; |Increase pointer to stripe image data
CODE_039C49:        ADC $03                   ; |
CODE_039C4B:        TAY                       ; |
CODE_039C4C:        SEP #$20                  ;/
CODE_039C4E:        LDA $07                   ;\
CODE_039C50:        ORA #$80                  ; |Set VRAM DMA mode: Either horz/vert
CODE_039C52:        STA $2115                 ;/ normal address increment mode
CODE_039C55:        LDA #$02                  ;\Enable DMA to upload stripe image to VRAM
CODE_039C57:        STA $420B                 ;/
CODE_039C5A:        LDA [$00],y               ;\If done, return
CODE_039C5C:        BMI CODE_039C61           ;/
CODE_039C5E:        JMP CODE_039BCF           ;Otherwise, process next chunk.

CODE_039C61:        SEP #$30                  ;\Return from stripe image uploading.
CODE_039C63:        RTS                       ;/

DATA_039C64:        db $EF,$00,$06,$00,$62,$00,$06,$00 ;
                    db $62,$00,$06,$00,$6D,$00,$02,$00 ;
                    db $6D,$00,$02,$00,$7A,$00,$03,$00 ;

DATA_039C7C:        db $06,$0C,$12,$18,$1E,$24 ;

CODE_039C82:        STA $00                   ;
CODE_039C84:        JSR CODE_039C8D           ;
CODE_039C87:        LDA $00                   ;
CODE_039C89:        LSR A                     ;
CODE_039C8A:        LSR A                     ;
CODE_039C8B:        LSR A                     ;
CODE_039C8C:        LSR A                     ;
CODE_039C8D:        CLC                       ;
CODE_039C8E:        ADC #$01                  ;
CODE_039C90:        AND #$0F                  ;
CODE_039C92:        CMP #$06                  ;
CODE_039C94:        BCS CODE_039CF0           ;
CODE_039C96:        PHA                       ;
CODE_039C97:        ASL A                     ;
CODE_039C98:        ASL A                     ;
CODE_039C99:        TAY                       ;
CODE_039C9A:        LDA #$58                  ;
CODE_039C9C:        LDX #$20                  ;
CODE_039C9E:        CPY #$00                  ;
CODE_039CA0:        BNE CODE_039CA6           ;
CODE_039CA2:        LDA #$02                  ;
CODE_039CA4:        LDX #$28                  ;
CODE_039CA6:        STX $F9                   ;
CODE_039CA8:        LDX $1700                 ;
CODE_039CAB:        STA $1702,x               ;
CODE_039CAE:        LDA DATA_039C64,y               ;
CODE_039CB1:        STA $1703,x               ;
CODE_039CB4:        LDA DATA_039C64+1,y               ;
CODE_039CB7:        STA $1704,x               ;
CODE_039CBA:        LDA DATA_039C64+2,y               ;
CODE_039CBD:        STA $03                   ;
CODE_039CBF:        ASL A                     ;
CODE_039CC0:        DEC A                     ;
CODE_039CC1:        STA $1705,x               ;
CODE_039CC4:        STX $02                   ;
CODE_039CC6:        PLA                       ;
CODE_039CC7:        TAX                       ;
CODE_039CC8:        LDA DATA_039C7C,x         ;
CODE_039CCB:        SEC                       ;
CODE_039CCC:        SBC DATA_039C64+2,y       ;
CODE_039CCF:        TAY                       ;
CODE_039CD0:        LDX $02                   ;
CODE_039CD2:        LDA $07C8,y               ;
CODE_039CD5:        STA $1706,x               ;
CODE_039CD8:        LDA $F9                   ;
CODE_039CDA:        STA $1707,x               ;
CODE_039CDD:        INX                       ;
CODE_039CDE:        INX                       ;
CODE_039CDF:        INY                       ;
CODE_039CE0:        DEC $03                   ;
CODE_039CE2:        BNE CODE_039CD2           ;
CODE_039CE4:        LDA #$FF                  ;
CODE_039CE6:        STA $1706,x               ;
CODE_039CE9:        INX                       ;
CODE_039CEA:        INX                       ;
CODE_039CEB:        INX                       ;
CODE_039CEC:        INX                       ;
CODE_039CED:        STX $1700                 ;
CODE_039CF0:        RTS                       ;

CODE_039CF1:        PHB                       ;
CODE_039CF2:        PHK                       ;
CODE_039CF3:        PLB                       ;
CODE_039CF4:        JSR CODE_039C82           ;
CODE_039CF7:        PLB                       ;
CODE_039CF8:        RTL                       ;

CODE_039CF9:        LDA $0770                 ;
CODE_039CFC:        CMP #$00                  ;
CODE_039CFE:        BEQ CODE_039D21           ;
CODE_039D00:        CMP #$02                  ;
CODE_039D02:        BNE CODE_039D0B           ;
CODE_039D04:        LDA $0772                 ;
CODE_039D07:        CMP #$05                  ;
CODE_039D09:        BNE CODE_039D21           ;
CODE_039D0B:        LDX #$05                  ;
CODE_039D0D:        LDA $0145,x               ;
CODE_039D10:        CLC                       ;
CODE_039D11:        ADC $07C8,y               ;
CODE_039D14:        BMI CODE_039D2C           ;
CODE_039D16:        CMP #$0A                  ;
CODE_039D18:        BCS CODE_039D33           ;
CODE_039D1A:        STA $07C8,y               ;
CODE_039D1D:        DEY                       ;
CODE_039D1E:        DEX                       ;
CODE_039D1F:        BPL CODE_039D0D           ;
CODE_039D21:        LDA #$00                  ;
CODE_039D23:        LDX #$06                  ;
CODE_039D25:        STA $0144,x               ;
CODE_039D28:        DEX                       ;
CODE_039D29:        BPL CODE_039D25           ;
CODE_039D2B:        RTS                       ;

CODE_039D2C:        DEC $0144,x               ;
CODE_039D2F:        LDA #$09                  ;
CODE_039D31:        BNE CODE_039D1A           ;
CODE_039D33:        CPX #$00                  ;
CODE_039D35:        BNE CODE_039D43           ;
CODE_039D37:        LDX #$05                  ;
CODE_039D39:        LDA #$09                  ;
CODE_039D3B:        STA $07CE,x               ;
CODE_039D3E:        DEX                       ;
CODE_039D3F:        BNE CODE_039D3B           ;
CODE_039D41:        LDA #$13                  ;
CODE_039D43:        SEC                       ;
CODE_039D44:        SBC #$0A                  ;
CODE_039D46:        INC $0144,x               ;
CODE_039D49:        BRA CODE_039D1A           ;

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

CODE_039D91:        LDA #$80                  ;\
CODE_039D93:        STA $1201                 ;/F-Blank
CODE_039D96:        LDA #$FF                  ;\
CODE_039D98:        STA $1102                 ; |Palette 8, color 1 = white
CODE_039D9B:        LDA #$7F                  ; |
CODE_039D9D:        STA $1103                 ;/
CODE_039DA0:        INC $1200                 ;
CODE_039DA3:        LDA #$FF                  ;
CODE_039DA5:        STA $1702                 ;
CODE_039DA8:        STA $1703                 ;
CODE_039DAB:        LDA #$09                  ;
CODE_039DAD:        STA $120D                 ;
CODE_039DB0:        LDA #$10                  ;
CODE_039DB2:        STA $120B                 ;
CODE_039DB5:        LDA #$20                  ;
CODE_039DB7:        STA $120A                 ;
CODE_039DBA:        LDA #$20                  ;
CODE_039DBC:        STA $0EE0                 ;
CODE_039DBF:        LDA #$40                  ;
CODE_039DC1:        STA $0EE1                 ;
CODE_039DC4:        LDA #$80                  ;
CODE_039DC6:        STA $0EE2                 ;
CODE_039DC9:        LDY #$FE                  ;
CODE_039DCB:        LDX #$05                  ;
CODE_039DCD:        LDA $07C8,x               ;
CODE_039DD0:        CMP #$0A                  ;
CODE_039DD2:        BCS CODE_039DE0           ;
CODE_039DD4:        DEX                       ;
CODE_039DD5:        BPL CODE_039DCD           ;
CODE_039DD7:        LDA $07FF                 ;
CODE_039DDA:        CMP #$A5                  ;
CODE_039DDC:        BNE CODE_039DE0           ;
CODE_039DDE:        LDY #$C7                  ;
CODE_039DE0:        JSR CODE_039F3E           ;
CODE_039DE3:        LDA #$A5                  ;
CODE_039DE5:        STA $07FF                 ;
CODE_039DE8:        STA $07B7                 ;
CODE_039DEB:        STZ $0EF6                 ;
CODE_039DEE:        STZ $0EF9                 ;
CODE_039DF1:        STZ $0EF7                 ;
CODE_039DF4:        STZ $0EF8                 ;
CODE_039DF7:        LDY #$6F                  ;
CODE_039DF9:        JSR CODE_039F3E           ;
CODE_039DFC:        LDA #$18                  ;
CODE_039DFE:        STA $07B2                 ;
CODE_039E01:        JSL CODE_04C00B           ;
CODE_039E05:        JSR CODE_039E0C           ;
CODE_039E08:        STZ $0E7F                 ;
CODE_039E0B:        RTS                       ;

CODE_039E0C:        LDY $075F                 ;\ Load current world
CODE_039E0F:        CPY #$08                  ; |If it is smaller than world 08
CODE_039E11:        BCC CODE_039E17           ;/Skip the "set level number & map type" routine
CODE_039E13:        JSL CODE_04C00B           ;set level number & map type
CODE_039E17:        LDY #$4B                  ;
CODE_039E19:        JSR CODE_039F3E           ;
CODE_039E1C:        LDX #$29                  ;
CODE_039E1E:        LDA #$00                  ;
CODE_039E20:        STA $0788,x               ;
CODE_039E23:        DEX                       ;
CODE_039E24:        BPL CODE_039E20           ;
CODE_039E26:        LDA $075B                 ;
CODE_039E29:        LDY $0752                 ;
CODE_039E2C:        BEQ CODE_039E31           ;
CODE_039E2E:        LDA $0751                 ;
CODE_039E31:        STA $071A                 ;
CODE_039E34:        STA $0725                 ;
CODE_039E37:        STA $0728                 ;
CODE_039E3A:        PHY                       ;
CODE_039E3B:        REP #$20                  ;
CODE_039E3D:        XBA                       ;
CODE_039E3E:        AND #$FF00                ;
CODE_039E41:        STA $42                   ;
CODE_039E43:        LSR A                     ;
CODE_039E44:        STA $0EFD                 ;
CODE_039E47:        LSR A                     ;
CODE_039E48:        STA $0EEE                 ;
CODE_039E4B:        SEP #$20                  ;
CODE_039E4D:        PLY                       ;
CODE_039E4E:        JSR CODE_03AF0F           ;
CODE_039E51:        LDY #$00                  ;
CODE_039E53:        AND #$01                  ;
CODE_039E55:        BEQ CODE_039E59           ;
CODE_039E57:        LDY #$04                  ;
CODE_039E59:        STY $0720                 ;
CODE_039E5C:        STZ $0721                 ;
CODE_039E5F:        ASL A                     ;
CODE_039E60:        ASL A                     ;
CODE_039E61:        ASL A                     ;
CODE_039E62:        ASL A                     ;
CODE_039E63:        STA $06A0                 ;
CODE_039E66:        LDA #$FF                  ;
CODE_039E68:        STA $1300                 ;
CODE_039E6B:        STA $1301                 ;
CODE_039E6E:        STA $1302                 ;
CODE_039E71:        STA $1303                 ;
CODE_039E74:        STA $1304                 ;
CODE_039E77:        LDA #$0B                  ;
CODE_039E79:        STA $071E                 ;
CODE_039E7C:        JSL CODE_04C041           ;
CODE_039E80:        LDA $076A                 ;"More difficult quest" flag
CODE_039E83:        BNE CODE_039E95           ;
CODE_039E85:        LDA $075F                 ;
CODE_039E88:        CMP #$04                  ;
CODE_039E8A:        BCC CODE_039E98           ;
CODE_039E8C:        BNE CODE_039E95           ;
CODE_039E8E:        LDA $075C                 ;
CODE_039E91:        CMP #$02                  ;
CODE_039E93:        BCC CODE_039E98           ;
CODE_039E95:        INC $06CC                 ;
CODE_039E98:        LDA $075B                 ;
CODE_039E9B:        BEQ CODE_039EA2           ;
CODE_039E9D:        LDA #$02                  ;
CODE_039E9F:        STA $0710                 ;
CODE_039EA2:        LDA $DB                   ;\Load background image
CODE_039EA4:        CMP #$21                  ; |If it is the 'real' Bowser's Castle background
CODE_039EA6:        BEQ CODE_039EB1           ;/branch
CODE_039EA8:        CMP #$02                  ;\If it is the underwater Bowser's Castle background
CODE_039EAA:        BEQ CODE_039EB1           ;/Branch
CODE_039EAC:        LDA #$80                  ;\Fade out the music
CODE_039EAE:        STA $1602                 ;/
CODE_039EB1:        LDA #$01                  ;
CODE_039EB3:        STA $0E7F                 ;
CODE_039EB6:        INC $0772                 ;
CODE_039EB9:        RTS                       ;

CODE_039EBA:        LDA $2142                 ;
CODE_039EBD:        CMP #$14                  ;
CODE_039EBF:        BEQ CODE_039ECA           ;
CODE_039EC1:        JSL CODE_0086B5           ;
CODE_039EC5:        LDA #$14                  ;
CODE_039EC7:        STA $2142                 ;
CODE_039ECA:        LDA #$01                  ;
CODE_039ECC:        STA $0757                 ;
CODE_039ECF:        STA $0754                 ;
CODE_039ED2:        STA $077F                 ;
CODE_039ED5:        STZ $0E73                 ;
CODE_039ED8:        LDA #$02                  ;
CODE_039EDA:        STA $0E7F                 ;
CODE_039EDD:        LDA #$00                  ;
CODE_039EDF:        STA $1201                 ;
CODE_039EE2:        STA $0774                 ;
CODE_039EE5:        TAY                       ;
CODE_039EE6:        STA $0300,y               ;
CODE_039EE9:        INY                       ;
CODE_039EEA:        BNE CODE_039EE6           ;
CODE_039EEC:        STA $0759                 ;
CODE_039EEF:        STA $0769                 ;
CODE_039EF2:        STA $0728                 ;
CODE_039EF5:        LDA #$FF                  ;
CODE_039EF7:        STA $03A0                 ;
CODE_039EFA:        STA $1702                 ;
CODE_039EFD:        LDA $071A                 ;
CODE_039F00:        LSR $0778                 ;
CODE_039F03:        AND #$01                  ;
CODE_039F05:        ROR A                     ;
CODE_039F06:        ROL $0778                 ;
CODE_039F09:        LDA #$38                  ;
CODE_039F0B:        STA $0B43                 ;
CODE_039F0E:        LDA #$48                  ;
CODE_039F10:        STA $0B42                 ;
CODE_039F13:        LDA #$58                  ;
CODE_039F15:        STA $0B41                 ;
CODE_039F18:        LDX #$1C                  ;
CODE_039F1A:        LDA DATA_039D70,x               ;
CODE_039F1D:        STA $0B45,x               ;
CODE_039F20:        DEX                       ;
CODE_039F21:        BPL CODE_039F1A           ;
CODE_039F23:        JSR CODE_03A294           ;
CODE_039F26:        JSR CODE_03A28F           ;
CODE_039F29:        INC $0722                 ;
CODE_039F2C:        INC $0772                 ;
CODE_039F2F:        RTS                       ;

CODE_039F30:        LDA #$00                  ;
CODE_039F32:        STA $06                   ;
CODE_039F34:        STX $07                   ;
CODE_039F36:        STA ($06),y               ;
CODE_039F38:        DEY                       ;
CODE_039F39:        CPY #$FF                  ;
CODE_039F3B:        BNE CODE_039F36           ;
CODE_039F3D:        RTS                       ;

CODE_039F3E:        LDA $00DB                 ;
CODE_039F41:        CMP #$21                  ;
CODE_039F43:        BNE CODE_039F48           ;
CODE_039F45:        INC $0E7F                 ;
CODE_039F48:        LDX #$07                  ;
CODE_039F4A:        LDA #$00                  ;
CODE_039F4C:        STA $06                   ;
CODE_039F4E:        STX $07                   ;
CODE_039F50:        CPX #$01                  ;
CODE_039F52:        BNE CODE_039F58           ;
CODE_039F54:        CPY #$50                  ;
CODE_039F56:        BCS CODE_039F5A           ;
CODE_039F58:        STA ($06),y               ;
CODE_039F5A:        DEY                       ;
CODE_039F5B:        CPY #$FF                  ;
CODE_039F5D:        BNE CODE_039F50           ;
CODE_039F5F:        DEX                       ;
CODE_039F60:        BPL CODE_039F4E           ;
CODE_039F62:        LDA #$FF                  ;
CODE_039F64:        STA $1702                 ;
CODE_039F67:        INC A                     ;
CODE_039F68:        STZ $0B25                 ;
CODE_039F6B:        STZ $0B26                 ;
CODE_039F6E:        STZ $0B27                 ;
CODE_039F71:        STZ $0B28                 ;
CODE_039F74:        STZ $0B29                 ;
CODE_039F77:        LDA $07FC                 ;"More difficult quest" flag. Sets $076A too and shows star next to world
CODE_039F7A:        STA $076A                 ;"More difficult quest" flag
CODE_039F7D:        LDX #$40                  ;
CODE_039F7F:        STZ $0F00,x               ;
CODE_039F82:        INX                       ;
CODE_039F83:        BNE CODE_039F7F           ;
CODE_039F85:        LDA $0F0B                 ;
CODE_039F88:        BEQ CODE_039FA1           ;
CODE_039F8A:        DEC A                     ;
CODE_039F8B:        STA $0F0B                 ;
CODE_039F8E:        BNE CODE_039FA1           ;
CODE_039F90:        LDA $7FFB05               ;
CODE_039F94:        STA $07FB                 ;
CODE_039F97:        STA $076A                 ;"More difficult quest" flag
CODE_039F9A:        STA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world.
CODE_039F9D:        JSL CODE_05C994           ;
CODE_039FA1:        RTS                       ;

DATA_039FA2:        db $28,$18 ;

DATA_039FA4:        db $38,$28,$08,$00 ;

DATA_039FA8:        db $00,$20,$B0,$50,$00,$00,$B0,$B0 ;
                    db $F0 ;

DATA_039FB1:        db $2E,$0E,$2E,$2E,$2E,$2E,$2E,$2E ;

DATA_039FB9:        db $0E,$04,$03,$02 ;

;Looks like a level loading routine? Not sure.

CODE_039FBD:        LDA $071A                 ;
CODE_039FC0:        STA $78                   ;
CODE_039FC2:        LDA #$28                  ;
CODE_039FC4:        STA $070A                 ;
CODE_039FC7:        LDA #$01                  ;
CODE_039FC9:        STA $0202                 ;
CODE_039FCC:        STA $BB                   ;
CODE_039FCE:        LDA #$00                  ;
CODE_039FD0:        STA $28                   ;
CODE_039FD2:        DEC $0480                 ;
CODE_039FD5:        LDY #$00                  ;
CODE_039FD7:        STY $075B                 ;
CODE_039FDA:        LDA $5C                   ;
CODE_039FDC:        BNE CODE_039FDF           ;
CODE_039FDE:        INY                       ;
CODE_039FDF:        STY $0704                 ;
CODE_039FE2:        LDX $0710                 ;
CODE_039FE5:        LDY $0752                 ;
CODE_039FE8:        BEQ CODE_039FF1           ;
CODE_039FEA:        CPY #$01                  ;
CODE_039FEC:        BEQ CODE_039FF1           ;
CODE_039FEE:        LDX DATA_039FA4,y               ;
CODE_039FF1:        LDA DATA_039FA2,y               ;
CODE_039FF4:        STA $0219                 ;
CODE_039FF7:        LDA DATA_039FA8,x               ;
CODE_039FFA:        STA $0237                 ;
CODE_039FFD:        LDA DATA_039FB1,x               ;
CODE_03A000:        STA $0256                 ;
CODE_03A003:        LDX #$00                  ;
CODE_03A005:        JSR CODE_03EA2D           ;
CODE_03A008:        JSL CODE_049A88           ;
CODE_03A00C:        LDY $0715                 ;
CODE_03A00F:        BEQ CODE_03A02B           ;
CODE_03A011:        LDA $0757                 ;
CODE_03A014:        BEQ CODE_03A02B           ;
CODE_03A016:        LDA DATA_039FB9,y               ;
CODE_03A019:        STA $07E9                 ;
CODE_03A01C:        LDA #$01                  ;
CODE_03A01E:        STA $07EB                 ;
CODE_03A021:        LSR A                     ;
CODE_03A022:        STA $07EA                 ;
CODE_03A025:        STA $0757                 ;
CODE_03A028:        STA $07AF                 ;
CODE_03A02B:        LDY $0758                 ;
CODE_03A02E:        BEQ CODE_03A044           ;
CODE_03A030:        LDA #$03                  ;
CODE_03A032:        STA $28                   ;
CODE_03A034:        LDX #$00                  ;
CODE_03A036:        JSR CODE_03BF0D           ;
CODE_03A039:        LDA #$F0                  ;
CODE_03A03B:        STA $44                   ;
CODE_03A03D:        LDX #$09                  ;
CODE_03A03F:        LDY #$00                  ;
CODE_03A041:        JSR CODE_03B9FD           ;
CODE_03A044:        LDY $5C                   ;
CODE_03A046:        BNE CODE_03A04B           ;
CODE_03A048:        JSR CODE_03B793           ;
CODE_03A04B:        LDA #$07                  ;
CODE_03A04D:        STA $0F                   ;
CODE_03A04F:        RTS                       ;

DATA_03A050:        db $56,$40,$65,$70,$66,$40,$66,$40
                    db $66,$40,$66,$60,$65,$70,$00,$00

;Player action - player loses life
CODE_03A060:        LDA #$01                  ;
CODE_03A062:        STA $0E7F                 ;
CODE_03A065:        STA $0E67                 ;
CODE_03A068:        STZ $0722                 ;
CODE_03A06B:        DEC $075A                 ;
CODE_03A06E:        BPL CODE_03A079           ;
CODE_03A070:        STZ $0772                 ;
CODE_03A073:        LDA #$03                  ;
CODE_03A075:        STA $0770                 ;
CODE_03A078:        RTS                       ;

CODE_03A079:        LDA $075F                 ;
CODE_03A07C:        ASL A                     ;
CODE_03A07D:        TAX                       ;
CODE_03A07E:        LDA $075C                 ;
CODE_03A081:        AND #$02                  ;
CODE_03A083:        BEQ CODE_03A086           ;
CODE_03A085:        INX                       ;
CODE_03A086:        LDY DATA_03A050,x               ;
CODE_03A089:        LDA $075C                 ;
CODE_03A08C:        LSR A                     ;
CODE_03A08D:        TYA                       ;
CODE_03A08E:        BCS CODE_03A094           ;
CODE_03A090:        LSR A                     ;
CODE_03A091:        LSR A                     ;
CODE_03A092:        LSR A                     ;
CODE_03A093:        LSR A                     ;
CODE_03A094:        AND #$0F                  ;
CODE_03A096:        CMP $071A                 ;
CODE_03A099:        BEQ CODE_03A09F           ;
CODE_03A09B:        BCC CODE_03A09F           ;
CODE_03A09D:        LDA #$00                  ;
CODE_03A09F:        STA $075B                 ;
CODE_03A0A2:        JSR CODE_03A22B           ;
CODE_03A0A5:        JMP CODE_03A204           ;

;Game Over operation mode
CODE_03A0A8:        LDA $0772                 ;
CODE_03A0AB:        ASL A                     ;
CODE_03A0AC:        TAX                       ;
CODE_03A0AD:        JMP (PNTR_03A0B0,x)       ;

PNTR_03A0B0:        dw CODE_03A0B6 ;$00
                    dw CODE_038C18 ;$01
                    dw CODE_03A1E1 ;$02

CODE_03A0B6:        STZ $073C                 ;
CODE_03A0B9:        STZ $0722                 ;
CODE_03A0BC:        LDA #$0A                  ;\Game over music
CODE_03A0BE:        STA $1602                 ;/
CODE_03A0C1:        INC $0774                 ;
CODE_03A0C4:        INC $0772                 ;
CODE_03A0C7:        RTS                       ;

DATA_03A0C8:        db $42,$73,$0C,$2B

DATA_03A0CC:        db $63,$73,$83

CODE_03A0CF:        LDA $077A                 ;
CODE_03A0D2:        BEQ CODE_03A0DC           ;
CODE_03A0D4:        LDA $0761                 ;
CODE_03A0D7:        BMI CODE_03A0DC           ;
CODE_03A0D9:        JMP CODE_03A1E4           ;

CODE_03A0DC:        LDA $0FF6                 ;
CODE_03A0DF:        ORA $0FF7                 ;
CODE_03A0E2:        STA $0FF6                 ;
CODE_03A0E5:        AND #$0C                  ;
CODE_03A0E7:        BEQ CODE_03A107           ;
CODE_03A0E9:        LDY #$01                  ;\Mario collected a coin sound
CODE_03A0EB:        STY $1603                 ;/
CODE_03A0EE:        LDY $0F06                 ;
CODE_03A0F1:        AND #$08                  ;
CODE_03A0F3:        BEQ CODE_03A0FB           ;
CODE_03A0F5:        DEY                       ;
CODE_03A0F6:        BPL CODE_03A104           ;
CODE_03A0F8:        INY                       ;
CODE_03A0F9:        BRA CODE_03A101           ;

CODE_03A0FB:        INY                       ;
CODE_03A0FC:        CPY #$03                  ;
CODE_03A0FE:        BNE CODE_03A104           ;
CODE_03A100:        DEY                       ;
CODE_03A101:        STZ $1603                 ;
CODE_03A104:        STY $0F06                 ;
CODE_03A107:        LDA $0F8A                 ;
CODE_03A10A:        BNE CODE_03A181           ;
CODE_03A10C:        LDA $0FF6                 ;
CODE_03A10F:        ORA $0FF7                 ;
CODE_03A112:        AND #$10                  ;
CODE_03A114:        BNE CODE_03A168           ;
CODE_03A116:        LDA $0FF6                 ;
CODE_03A119:        ORA $0FF7                 ;
CODE_03A11C:        AND #$20                  ;
CODE_03A11E:        BEQ CODE_03A132           ;
CODE_03A120:        LDA #$01                  ;\Mario collected a coin sound
CODE_03A122:        STA $1603                 ;/
CODE_03A125:        INC $0F06                 ;
CODE_03A128:        LDA $0F06                 ;
CODE_03A12B:        CMP #$03                  ;
CODE_03A12D:        BNE CODE_03A132           ;
CODE_03A12F:        STZ $0F06                 ;
CODE_03A132:        LDA $075F                 ;
CODE_03A135:        CMP #$08                  ;
CODE_03A137:        BNE CODE_03A13A           ;
CODE_03A139:        RTS                       ;

CODE_03A13A:        LDA $1603                 ;
CODE_03A13D:        BEQ CODE_03A142           ;
CODE_03A13F:        STZ $0B78                 ;
CODE_03A142:        INC $0B78                 ;Frame counter which runs when the game is paused
CODE_03A145:        LDA $0B78                 ;
CODE_03A148:        AND #$10                  ;
CODE_03A14A:        LSR A                     ;
CODE_03A14B:        LSR A                     ;
CODE_03A14C:        LSR A                     ;
CODE_03A14D:        LSR A                     ;
CODE_03A14E:        ORA #$02                  ;
CODE_03A150:        STA $0C00                 ;
CODE_03A153:        LDY #$03                  ;
CODE_03A155:        LDA DATA_03A0C8,y               ;
CODE_03A158:        STA $0800,y               ;
CODE_03A15B:        DEY                       ;
CODE_03A15C:        BPL CODE_03A155           ;
CODE_03A15E:        LDY $0F06                 ;
CODE_03A161:        LDA DATA_03A0CC,y               ;
CODE_03A164:        STA $0801                 ;
CODE_03A167:        RTS                       ;

CODE_03A168:        LDA #$20                  ;
CODE_03A16A:        STA $0F8A                 ;
CODE_03A16D:        LDA #$43                  ;\Pause sound
CODE_03A16F:        STA $1600                 ;/
CODE_03A172:        LDA #$F3                  ;\Music fades out
CODE_03A174:        STA $1602                 ;/
CODE_03A177:        LDA $0F06                 ;
CODE_03A17A:        BEQ CODE_03A181           ;
CODE_03A17C:        LDA #$3B                  ;\
CODE_03A17E:        STA $1600                 ;/"Save & Continue/Save & Quit" sound
CODE_03A181:        JSR CODE_03A142           ;
CODE_03A184:        DEC $0F8A                 ;
CODE_03A187:        LDA $0F8A                 ;
CODE_03A18A:        BEQ CODE_03A18D           ;
CODE_03A18C:        RTS                       ;

CODE_03A18D:        STZ $0B78                 ;
CODE_03A190:        LDY #$04                  ;
CODE_03A192:        STY $075A                 ;
CODE_03A195:        STZ $0F03                 ;
CODE_03A198:        STZ $075E                 ;
CODE_03A19B:        STZ $0765                 ;
CODE_03A19E:        LDA $075F                 ;
CODE_03A1A1:        STA $075F                 ;
CODE_03A1A4:        STA $700008               ;
CODE_03A1A8:        STZ $075C                 ;
CODE_03A1AB:        STZ $0E24                 ;
CODE_03A1AE:        STZ $0763                 ;
CODE_03A1B1:        STZ $0767                 ;
CODE_03A1B4:        STZ $0760                 ;
CODE_03A1B7:        LDA #$00                  ;
CODE_03A1B9:        STA $700009               ;
CODE_03A1BD:        LDA #$00                  ;
CODE_03A1BF:        LDY #$11                  ;
CODE_03A1C1:        STA $07CE,y               ;
CODE_03A1C4:        DEY                       ;
CODE_03A1C5:        BPL CODE_03A1C1           ;
CODE_03A1C7:        INC $075D                 ;Enable hidden 1-up flag
CODE_03A1CA:        LDA $0F06                 ;
CODE_03A1CD:        BEQ CODE_03A1DE           ;
CODE_03A1CF:        JSL CODE_008F03           ;
CODE_03A1D3:        LDA $0F06                 ;
CODE_03A1D6:        CMP #$01                  ;
CODE_03A1D8:        BEQ CODE_03A1DE           ;
CODE_03A1DA:        JML CODE_0080DE           ;

CODE_03A1DE:        JMP CODE_03A1EF           ;
CODE_03A1E1:        JMP CODE_03A0CF           ;

CODE_03A1E4:        JSL CODE_048650           ;
CODE_03A1E8:        JMP (PNTR_03A1EB,x)       ;

PNTR_03A1EB:        dw CODE_03A22A
                    dw CODE_03A1EF

CODE_03A1EF:        JSR CODE_03A22B           ;
CODE_03A1F2:        BCC CODE_03A204           ;
CODE_03A1F4:        LDA $075F                 ;\Residual from NES: store world number into secret continue function variable
CODE_03A1F7:        STA $07FD                 ;/
CODE_03A1FA:        STZ $0772                 ;
CODE_03A1FD:        STZ $07B0                 ;
CODE_03A200:        STZ $0770                 ;
CODE_03A203:        RTS                       ;

;Handle new world after game-over and rescuing the princess
CODE_03A204:        JSL CODE_04C00B           ;Set level number and map type
CODE_03A208:        LDA $1680                 ;\Skip clear powerup if new world from rescuing the princess
CODE_03A20B:        BNE CODE_03A21A           ;/
CODE_03A20D:        LDA $077A                 ;\Skip clear powerup if 2 players
CODE_03A210:        BNE CODE_03A21A           ;/
CODE_03A212:        LDA #$01                  ;\
CODE_03A214:        STA $0754                 ; |Set small player flag
CODE_03A217:        STZ $0756                 ;/ Clear powerup
CODE_03A21A:        INC $0757                 ;set some timer flag
CODE_03A21D:        STZ $0747                 ;Clear everything freezes timer
CODE_03A220:        STZ $0F                   ;set player action to 0
CODE_03A222:        STZ $0772                 ;Operation mode task to execute is 0
CODE_03A225:        LDA #$01                  ;\
CODE_03A227:        STA $0770                 ;/Operation mode: main
CODE_03A22A:        RTS                       ;

;Swap players
;Output: Carry set = player couldn't be swapped. Carry clear = player could be swapped.
CODE_03A22B:        SEC                       ;
CODE_03A22C:        LDA $077A                 ;\Branch if single player
CODE_03A22F:        BEQ CODE_03A280           ;/
CODE_03A231:        LDA $0761                 ;\
CODE_03A234:        BMI CODE_03A280           ;/Branch if previous player's extra lives is below 0
CODE_03A236:        LDA $0754                 ;\
CODE_03A239:        PHA                       ; |
CODE_03A23A:        LDA $077F                 ; |
CODE_03A23D:        STA $0754                 ; |Swap previous player's small flag with current player's
CODE_03A240:        PLA                       ; |
CODE_03A241:        STA $077F                 ;/
CODE_03A244:        LDA $0756                 ;\
CODE_03A247:        PHA                       ; |
CODE_03A248:        LDA $0780                 ; |
CODE_03A24B:        STA $0756                 ; |Swap previous player's powerup with current player's
CODE_03A24E:        PLA                       ; |
CODE_03A24F:        STA $0780                 ;/
CODE_03A252:        LDA $07FC                 ;\"More difficult quest" flag
CODE_03A255:        PHA                       ; |
CODE_03A256:        LDA $0781                 ; |
CODE_03A259:        STA $07FC                 ; |Swap "more difficult quest" flag with previous player
CODE_03A25C:        PLA                       ; |
CODE_03A25D:        STA $0781                 ;/
CODE_03A260:        LDA $0753                 ;\
CODE_03A263:        EOR #$01                  ; |Swap current player
CODE_03A265:        STA $0753                 ;/
CODE_03A268:        STA $0EC2                 ;And the current player's image
CODE_03A26B:        LDX #$06                  ;\
CODE_03A26D:        LDA $075A,x               ; |Swap things like current player's coins, lives, levels, etc
CODE_03A270:        PHA                       ; |
CODE_03A271:        LDA $0761,x               ; |
CODE_03A274:        STA $075A,x               ; |
CODE_03A277:        PLA                       ; |
CODE_03A278:        STA $0761,x               ; |
CODE_03A27B:        DEX                       ; |
CODE_03A27C:        BPL CODE_03A26D           ;/
CODE_03A27E:        CLC                       ;
CODE_03A27F:        RTS                       ;

CODE_03A280:        LDA $0F03                 ;
CODE_03A283:        BNE CODE_03A27F           ;
CODE_03A285:        CLC                       ;
CODE_03A286:        RTS                       ;

;Swap player data after level end if a player didn't quit after game-over, and game is not single player.
CODE_03A287:        PHB                       ;
CODE_03A288:        PHK                       ;
CODE_03A289:        PLB                       ;
CODE_03A28A:        JSR CODE_03A22B           ;
CODE_03A28D:        PLB                       ;
CODE_03A28E:        RTL                       ;

CODE_03A28F:        LDA #$FF                  ;
CODE_03A291:        STA $06C9                 ;
CODE_03A294:        RTS                       ;

CODE_03A295:        LDY $071F                 ;
CODE_03A298:        BNE CODE_03A29F           ;
CODE_03A29A:        LDY #$08                  ;
CODE_03A29C:        STY $071F                 ;
CODE_03A29F:        DEY                       ;
CODE_03A2A0:        TYA                       ;
CODE_03A2A1:        JSR CODE_03A300           ;
CODE_03A2A4:        DEC $071F                 ;
CODE_03A2A7:        BNE CODE_03A2DE           ;
CODE_03A2A9:        LDA #$20                  ;
CODE_03A2AB:        STA $00                   ;
CODE_03A2AD:        LDA $BA                   ;
CODE_03A2AF:        CMP #$03                  ;
CODE_03A2B1:        BNE CODE_03A2B5           ;
CODE_03A2B3:        ASL $00                   ;
CODE_03A2B5:        LDA $0ED1                 ;
CODE_03A2B8:        BNE CODE_03A2DE           ;
CODE_03A2BA:        LDA $0EFD                 ;
CODE_03A2BD:        AND $00                   ;
CODE_03A2BF:        BEQ CODE_03A2C8           ;
CODE_03A2C1:        LDA $0EFC                 ;
CODE_03A2C4:        BEQ CODE_03A2D2           ;
CODE_03A2C6:        BRA CODE_03A2DE           ;

CODE_03A2C8:        LDA $0EFC                 ;
CODE_03A2CB:        BEQ CODE_03A2DE           ;
CODE_03A2CD:        STZ $0EFC                 ;
CODE_03A2D0:        BRA CODE_03A2D7           ;

CODE_03A2D2:        LDA #$01                  ;
CODE_03A2D4:        STA $0EFC                 ;
CODE_03A2D7:        JSL CODE_049B35           ;
CODE_03A2DB:        JSR CODE_039351           ;
CODE_03A2DE:        LDA $0EEE                 ;
CODE_03A2E1:        AND #$10                  ;
CODE_03A2E3:        BEQ CODE_03A2EC           ;
CODE_03A2E5:        LDA $0EDD                 ;
CODE_03A2E8:        BEQ CODE_03A2F6           ;
CODE_03A2EA:        BRA CODE_03A2FF           ;

CODE_03A2EC:        LDA $0EDD                 ;
CODE_03A2EF:        BEQ CODE_03A2FF           ;
CODE_03A2F1:        STZ $0EDD                 ;
CODE_03A2F4:        BRA CODE_03A2FB           ;

CODE_03A2F6:        LDA #$01                  ;
CODE_03A2F8:        STA $0EDD                 ;
CODE_03A2FB:        JSL CODE_048B4E           ;
CODE_03A2FF:        RTS                       ;

CODE_03A300:        ASL A                     ;
CODE_03A301:        TAX                       ;
CODE_03A302:        JMP (PNTR_03A305,x)       ;

PNTR_03A305:        dw CODE_03A315                          ;Increment column position RAM
                    dw CODE_03922D                          ;
                    dw CODE_03922D                          ;
                    dw CODE_03A436                          ;
                    dw CODE_03A315                          ;Increment column position RAM
                    dw CODE_03922D                          ;
                    dw CODE_03922D                          ;
                    dw CODE_03A436                          ;

CODE_03A315:        INC $0726                 ;
CODE_03A318:        LDA $0726                 ;
CODE_03A31B:        AND #$0F                  ;
CODE_03A31D:        BNE CODE_03A325           ;
CODE_03A31F:        STA $0726                 ;
CODE_03A322:        INC $0725                 ;
CODE_03A325:        INC $06A0                 ;
CODE_03A328:        LDA $06A0                 ;
CODE_03A32B:        AND #$1F                  ;
CODE_03A32D:        STA $06A0                 ;
CODE_03A330:        RTS                       ;

DATA_03A331:        db $00,$30,$60 ;

DATA_03A334:        db $93,$00,$00,$11,$12,$12,$13,$00 ;
                    db $00,$51,$52,$53,$00,$00,$00,$00 ;
                    db $00,$00,$01,$02,$02,$03,$00,$00 ;
                    db $00,$00,$00,$00,$91,$92,$93,$00 ;
                    db $00,$00,$00,$51,$52,$53,$41,$42 ;
                    db $43,$00,$00,$00,$00,$00,$91,$92 ;
                    db $97,$87,$88,$89,$99,$00,$00,$00 ;
                    db $11,$12,$13,$A4,$A5,$A5,$A5,$A6 ;
                    db $97,$98,$99,$01,$02,$03,$00,$A4 ;
                    db $A5,$A6,$00,$11,$12,$12,$12,$13 ;
                    db $00,$00,$00,$00,$01,$02,$02,$03 ;
                    db $00,$A4,$A5,$A5,$A6,$00,$00,$00 ;
                    db $11,$12,$12,$13,$00,$00,$00,$00 ;
                    db $00,$00,$00,$9C,$00,$8B,$AA,$AA ;
                    db $AA,$AA,$11,$12,$13,$8B,$00,$9C ;
                    db $9C,$00,$00,$01,$02,$03,$11,$12 ;
                    db $12,$13,$00,$00,$00,$00,$AA,$AA ;
                    db $9C,$AA,$00,$8B,$00,$01,$02,$03 ;

DATA_03A3C4:        db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$04,$00,$00,$05,$00,$00,$06 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$4D,$00,$00,$11,$13 ;
                    db $4E,$12,$4E ;

DATA_03A3E7:        db $4E,$00,$0D,$1A ;

DATA_03A3EB:        db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$71,$71,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $71,$71,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00 ;

DATA_03A410:        db $86,$8B ;

DATA_03A412:        db $72,$56,$52,$65 ;

DATA_03A416:        db $00,$00,$00,$18,$01,$18,$07,$18 ;
                    db $0F,$18,$FF,$18,$01,$1F,$07,$1F ;
                    db $0F,$1F,$81,$1F,$01,$00,$8F,$1F ;
                    db $F1,$1F,$F9,$18,$F1,$18,$FF,$1F ;

CODE_03A436:        LDA $0728                 ;
CODE_03A439:        BEQ CODE_03A43E           ;
CODE_03A43B:        JSR CODE_03A5CC           ;
CODE_03A43E:        LDX #$0C                  ;
CODE_03A440:        LDA #$00                  ;
CODE_03A442:        STA $06A1,x               ;
CODE_03A445:        DEX                       ;
CODE_03A446:        BPL CODE_03A442           ;
CODE_03A448:        LDY $0742                 ;
CODE_03A44B:        BEQ CODE_03A48F           ;
CODE_03A44D:        LDA $0725                 ;
CODE_03A450:        CMP #$03                  ;
CODE_03A452:        BMI CODE_03A459           ;
CODE_03A454:        SEC                       ;
CODE_03A455:        SBC #$03                  ;
CODE_03A457:        BPL CODE_03A450           ;
CODE_03A459:        ASL A                     ;
CODE_03A45A:        ASL A                     ;
CODE_03A45B:        ASL A                     ;
CODE_03A45C:        ASL A                     ;
CODE_03A45D:        ADC DATA_03A331-1,y       ;
CODE_03A460:        ADC $0726                 ;
CODE_03A463:        TAX                       ;
CODE_03A464:        LDA DATA_03A334,x               ;
CODE_03A467:        BEQ CODE_03A48F           ;
CODE_03A469:        PHA                       ;
CODE_03A46A:        AND #$0F                  ;
CODE_03A46C:        SEC                       ;
CODE_03A46D:        SBC #$01                  ;
CODE_03A46F:        STA $00                   ;
CODE_03A471:        ASL A                     ;
CODE_03A472:        ADC $00                   ;
CODE_03A474:        TAX                       ;
CODE_03A475:        PLA                       ;
CODE_03A476:        LSR A                     ;
CODE_03A477:        LSR A                     ;
CODE_03A478:        LSR A                     ;
CODE_03A479:        LSR A                     ;
CODE_03A47A:        TAY                       ;
CODE_03A47B:        LDA #$03                  ;
CODE_03A47D:        STA $00                   ;
CODE_03A47F:        LDA DATA_03A3C4,x               ;
CODE_03A482:        STA $06A1,y               ;
CODE_03A485:        INX                       ;
CODE_03A486:        INY                       ;
CODE_03A487:        CPY #$0B                  ;
CODE_03A489:        BEQ CODE_03A48F           ;
CODE_03A48B:        DEC $00                   ;
CODE_03A48D:        BNE CODE_03A47F           ;
CODE_03A48F:        LDX $0741                 ;
CODE_03A492:        BEQ CODE_03A4C7           ;
CODE_03A494:        LDY DATA_03A3E7,x               ;
CODE_03A497:        LDX #$00                  ;
CODE_03A499:        LDA DATA_03A3EB,y               ;
CODE_03A49C:        BEQ CODE_03A4C1           ;
CODE_03A49E:        PHY                       ;
CODE_03A49F:        LDY $5C                   ;
CODE_03A4A1:        BNE CODE_03A4B3           ;
CODE_03A4A3:        LDY $0EF0                 ;
CODE_03A4A6:        BNE CODE_03A4AE           ;
CODE_03A4A8:        INC $0EF0                 ;
CODE_03A4AB:        INC A                     ;
CODE_03A4AC:        BRA CODE_03A4BB           ;

CODE_03A4AE:        STZ $0EF0                 ;
CODE_03A4B1:        BRA CODE_03A4BD           ;

CODE_03A4B3:        CPY #$03                  ;
CODE_03A4B5:        BNE CODE_03A4BD           ;
CODE_03A4B7:        CMP #$86                  ;
CODE_03A4B9:        BNE CODE_03A4BD           ;
CODE_03A4BB:        INC A                     ;
CODE_03A4BC:        INC A                     ;
CODE_03A4BD:        PLY                       ;
CODE_03A4BE:        STA $06A1,x               ;
CODE_03A4C1:        INY                       ;
CODE_03A4C2:        INX                       ;
CODE_03A4C3:        CPX #$0D                  ;
CODE_03A4C5:        BNE CODE_03A499           ;
CODE_03A4C7:        STZ $0109                 ;
CODE_03A4CA:        STZ $F9                   ;
CODE_03A4CC:        LDA $0EE8                 ;
CODE_03A4CF:        STA $0EE9                 ;
CODE_03A4D2:        INC $0EE8                 ;
CODE_03A4D5:        LDY $5C                   ;
CODE_03A4D7:        BNE CODE_03A4E4           ;
CODE_03A4D9:        LDA $075F                 ;
CODE_03A4DC:        CMP #$07                  ;
CODE_03A4DE:        BNE CODE_03A4E4           ;
CODE_03A4E0:        LDA #$65                  ;
CODE_03A4E2:        BRA CODE_03A4EE           ;

CODE_03A4E4:        LDA DATA_03A412,y               ;
CODE_03A4E7:        LDY $0743                 ;
CODE_03A4EA:        BEQ CODE_03A4EE           ;
CODE_03A4EC:        LDA #$8C                  ;
CODE_03A4EE:        STA $07                   ;
CODE_03A4F0:        LDX #$00                  ;
CODE_03A4F2:        LDA $0727                 ;
CODE_03A4F5:        ASL A                     ;
CODE_03A4F6:        TAY                       ;
CODE_03A4F7:        LDA DATA_03A416,y               ;
CODE_03A4FA:        STA $00                   ;
CODE_03A4FC:        INY                       ;
CODE_03A4FD:        STY $01                   ;
CODE_03A4FF:        LDA $0743                 ;
CODE_03A502:        BEQ CODE_03A50E           ;
CODE_03A504:        CPX #$00                  ;
CODE_03A506:        BEQ CODE_03A50E           ;
CODE_03A508:        LDA $00                   ;
CODE_03A50A:        AND #$08                  ;
CODE_03A50C:        STA $00                   ;
CODE_03A50E:        LDY #$00                  ;
CODE_03A510:        LDA DATA_03CA9F,y               ;
CODE_03A513:        BIT $00                   ;
CODE_03A515:        BEQ CODE_03A55B           ;
CODE_03A517:        LDA $BA                   ;
CODE_03A519:        CMP #$03                  ;
CODE_03A51B:        BNE CODE_03A527           ;
CODE_03A51D:        LDA $F9                   ;
CODE_03A51F:        BEQ CODE_03A527           ;
CODE_03A521:        LDA #$68                  ;
CODE_03A523:        STA $07                   ;
CODE_03A525:        BRA CODE_03A529           ;

CODE_03A527:        LDA $07                   ;
CODE_03A529:        STA $06A1,x               ;
CODE_03A52C:        LDA $F9                   ;
CODE_03A52E:        BEQ CODE_03A544           ;
CODE_03A530:        LDA $BA                   ;
CODE_03A532:        CMP #$03                  ;
CODE_03A534:        BNE CODE_03A544           ;
CODE_03A536:        LDA $F9                   ;
CODE_03A538:        INC $F9                   ;
CODE_03A53A:        INC A                     ;
CODE_03A53B:        BNE CODE_03A562           ;
CODE_03A53D:        INC $06A1,x               ;
CODE_03A540:        INC $07                   ;
CODE_03A542:        BRA CODE_03A562           ;

CODE_03A544:        LDA $BA                   ;
CODE_03A546:        CMP #$03                  ;
CODE_03A548:        BNE CODE_03A562           ;
CODE_03A54A:        LDA $0109                 ;
CODE_03A54D:        BNE CODE_03A562           ;
CODE_03A54F:        LDA $0EE9                 ;
CODE_03A552:        AND #$01                  ;
CODE_03A554:        BNE CODE_03A562           ;
CODE_03A556:        INC $06A1,x               ;
CODE_03A559:        BRA CODE_03A562           ;

CODE_03A55B:        LDA #$FE                  ;
CODE_03A55D:        STA $F9                   ;
CODE_03A55F:        INC $0109                 ;
CODE_03A562:        INX                       ;
CODE_03A563:        CPX #$0D                  ;
CODE_03A565:        BEQ CODE_03A584           ;
CODE_03A567:        LDA $5C                   ;
CODE_03A569:        CMP #$02                  ;
CODE_03A56B:        BNE CODE_03A575           ;
CODE_03A56D:        CPX #$0B                  ;
CODE_03A56F:        BNE CODE_03A575           ;
CODE_03A571:        LDA #$56                  ;
CODE_03A573:        STA $07                   ;
CODE_03A575:        INC $0EE9                 ;
CODE_03A578:        INY                       ;
CODE_03A579:        CPY #$08                  ;
CODE_03A57B:        BNE CODE_03A510           ;
CODE_03A57D:        LDY $01                   ;
CODE_03A57F:        BEQ CODE_03A584           ;
CODE_03A581:        JMP CODE_03A4F7           ;

CODE_03A584:        LDA $06AD                 ;
CODE_03A587:        CMP #$56                  ;
CODE_03A589:        BEQ CODE_03A58F           ;
CODE_03A58B:        CMP #$72                  ;
CODE_03A58D:        BNE CODE_03A592           ;
CODE_03A58F:        INC $06AD                 ;
CODE_03A592:        JSR CODE_03A5CC           ;
CODE_03A595:        LDA $06A0                 ;
CODE_03A598:        JSR CODE_03ACF6           ;
CODE_03A59B:        LDX #$00                  ;
CODE_03A59D:        LDY #$00                  ;
CODE_03A59F:        STY $00                   ;
CODE_03A5A1:        LDA $0EC9                 ;
CODE_03A5A4:        BNE CODE_03A5C7           ;
CODE_03A5A6:        LDA $06A1,x               ;
CODE_03A5A9:        AND #$C0                  ;
CODE_03A5AB:        ASL A                     ;
CODE_03A5AC:        ROL A                     ;
CODE_03A5AD:        ROL A                     ;
CODE_03A5AE:        TAY                       ;
CODE_03A5AF:        LDA $06A1,x               ;
CODE_03A5B2:        CMP DATA_03A5C8,y               ;
CODE_03A5B5:        BCS CODE_03A5B9           ;
CODE_03A5B7:        LDA #$00                  ;
CODE_03A5B9:        LDY $00                   ;
CODE_03A5BB:        STA ($06),y               ;
CODE_03A5BD:        TYA                       ;
CODE_03A5BE:        CLC                       ;
CODE_03A5BF:        ADC #$10                  ;
CODE_03A5C1:        TAY                       ;
CODE_03A5C2:        INX                       ;
CODE_03A5C3:        CPX #$0D                  ;
CODE_03A5C5:        BCC CODE_03A59F           ;
CODE_03A5C7:        RTS                       ;

DATA_03A5C8:        db $14,$51,$8C,$E7

;Part of level loading routine for objects
;Parse objects
;(equivalent of ProcessAreaData in smb1dis.asm)
CODE_03A5CC:        REP #$10                  ;16-bit XY
CODE_03A5CE:        LDX #$0004                ;Load 0004 into X
CODE_03A5D1:        STZ $010B                 ;Store zero in 3-byte object flag
CODE_03A5D4:        STX $9E                   ;Store X into $9E: Sprite index
CODE_03A5D6:        STZ $0729                 ;
CODE_03A5D9:        LDY $072C                 ;Offset of level object data
CODE_03A5DC:        LDA [$FA],y               ;\
CODE_03A5DE:        CMP #$FD                  ; |If end-of-area, skip all of this
CODE_03A5E0:        BEQ CODE_03A645           ;/
CODE_03A5E2:        AND #$0F                  ;
CODE_03A5E4:        CMP #$0F                  ;
CODE_03A5E6:        BNE CODE_03A5EB           ;
CODE_03A5E8:        INC $010B                 ;
CODE_03A5EB:        LDA $1300,x               ;
CODE_03A5EE:        BPL CODE_03A645           ;
CODE_03A5F0:        LDA $010B                 ;
CODE_03A5F3:        BEQ CODE_03A5F6           ;
CODE_03A5F5:        INY                       ;
CODE_03A5F6:        INY                       ;
CODE_03A5F7:        LDA [$FA],y               ;
CODE_03A5F9:        ASL A                     ;
CODE_03A5FA:        BCC CODE_03A607           ;
CODE_03A5FC:        LDA $072B                 ;
CODE_03A5FF:        BNE CODE_03A607           ;
CODE_03A601:        INC $072B                 ;
CODE_03A604:        INC $072A                 ;
CODE_03A607:        LDY $072C                 ;
CODE_03A60A:        LDA [$FA],y               ;
CODE_03A60C:        AND #$0F                  ;
CODE_03A60E:        CMP #$0D                  ;
CODE_03A610:        BNE CODE_03A634           ;
CODE_03A612:        INY                       ;
CODE_03A613:        LDA [$FA],y               ;
CODE_03A615:        LDY $072C                 ;
CODE_03A618:        AND #$40                  ;
CODE_03A61A:        BNE CODE_03A63D           ;
CODE_03A61C:        LDA $072B                 ;
CODE_03A61F:        BNE CODE_03A63D           ;
CODE_03A621:        LDA $010B                 ;
CODE_03A624:        BEQ CODE_03A627           ;
CODE_03A626:        INY                       ;
CODE_03A627:        INY                       ;
CODE_03A628:        LDA [$FA],y               ;
CODE_03A62A:        AND #$1F                  ;
CODE_03A62C:        STA $072A                 ;
CODE_03A62F:        INC $072B                 ;
CODE_03A632:        BRA CODE_03A64F           ;

CODE_03A634:        CMP #$0E                  ;
CODE_03A636:        BNE CODE_03A63D           ;
CODE_03A638:        LDA $0728                 ;
CODE_03A63B:        BNE CODE_03A645           ;
CODE_03A63D:        LDA $072A                 ;
CODE_03A640:        CMP $0725                 ;
CODE_03A643:        BCC CODE_03A64C           ;
CODE_03A645:        JSR CODE_03A693           ;
CODE_03A648:        REP #$10                  ;
CODE_03A64A:        BRA CODE_03A652           ;

CODE_03A64C:        INC $0729                 ;
CODE_03A64F:        JSR CODE_03A675           ;Increase level data index accordingly
CODE_03A652:        LDX $9E                   ;
CODE_03A654:        LDA $1300,x               ;
CODE_03A657:        BMI CODE_03A65C           ;
CODE_03A659:        DEC $1300,x               ;
CODE_03A65C:        DEX                       ;
CODE_03A65D:        BMI CODE_03A662           ;
CODE_03A65F:        JMP CODE_03A5D1           ;

CODE_03A662:        LDA $0729                 ;
CODE_03A665:        BEQ CODE_03A66A           ;
CODE_03A667:        JMP CODE_03A5CC           ;

CODE_03A66A:        LDA $0728                 ;
CODE_03A66D:        BEQ CODE_03A672           ;
CODE_03A66F:        JMP CODE_03A5CC           ;

CODE_03A672:        SEP #$10                  ;
CODE_03A674:        RTS                       ;

;Increase level data index accordingly
CODE_03A675:        REP #$20                  ;\
CODE_03A677:        INC $072C                 ; |
CODE_03A67A:        INC $072C                 ; | Increase index to level data by 2. If it's a 3-byte object, increase by 3.
CODE_03A67D:        LDA $010B                 ; |
CODE_03A680:        AND #$00FF                ; |
CODE_03A683:        BEQ CODE_03A688           ; |
CODE_03A685:        INC $072C                 ;/
CODE_03A688:        SEP #$20                  ;
CODE_03A68A:        LDA #$00                  ;
CODE_03A68C:        STA $072B                 ;
CODE_03A68F:        STA $010B                 ;Clear the 3 byte object flag
CODE_03A692:        RTS                       ;

CODE_03A693:        REP #$30                  ;
CODE_03A695:        TXA                       ;
CODE_03A696:        AND #$00FF                ;
CODE_03A699:        TAX                       ;
CODE_03A69A:        SEP #$20                  ;
CODE_03A69C:        LDA $1300,x               ;
CODE_03A69F:        BMI CODE_03A6AB           ;
CODE_03A6A1:        REP #$20                  ;
CODE_03A6A3:        TXA                       ;
CODE_03A6A4:        ASL A                     ;
CODE_03A6A5:        TAX                       ;
CODE_03A6A6:        LDY $1305,x               ;
CODE_03A6A9:        SEP #$20                  ;
CODE_03A6AB:        LDA $0F82                 ;
CODE_03A6AE:        BEQ CODE_03A6B8           ;
CODE_03A6B0:        JSL CODE_048817           ;
CODE_03A6B4:        STZ $0F82                 ;
CODE_03A6B7:        RTS                       ;

CODE_03A6B8:        STY $F7                   ;
CODE_03A6BA:        STZ $F6                   ;
CODE_03A6BC:        STZ $010B                 ;
CODE_03A6BF:        LDX #$0010                ;
CODE_03A6C2:        LDA [$FA],y               ;
CODE_03A6C4:        CMP #$FD                  ;
CODE_03A6C6:        BEQ CODE_03A672           ;
CODE_03A6C8:        AND #$0F                  ;
CODE_03A6CA:        CMP #$0F                  ;
CODE_03A6CC:        BNE CODE_03A6D2           ;
CODE_03A6CE:        INC $F6                   ;
CODE_03A6D0:        BRA CODE_03A6DC           ;

CODE_03A6D2:        LDX #$0008                ;
CODE_03A6D5:        CMP #$0C                  ;
CODE_03A6D7:        BEQ CODE_03A6DC           ;
CODE_03A6D9:        LDX #$0000                ;
CODE_03A6DC:        STX $07                   ;
CODE_03A6DE:        LDX $9E                   ;
CODE_03A6E0:        CMP #$0E                  ;
CODE_03A6E2:        BNE CODE_03A6EA           ;
CODE_03A6E4:        STZ $07                   ;
CODE_03A6E6:        LDA #$2E                  ;
CODE_03A6E8:        BNE CODE_03A747           ;
CODE_03A6EA:        CMP #$0D                  ;
CODE_03A6EC:        BNE CODE_03A70D           ;
CODE_03A6EE:        LDA #$22                  ;
CODE_03A6F0:        STA $07                   ;
CODE_03A6F2:        LDA $F6                   ;
CODE_03A6F4:        BEQ CODE_03A6F7           ;
CODE_03A6F6:        INY                       ;
CODE_03A6F7:        INY                       ;
CODE_03A6F8:        LDA [$FA],y               ;
CODE_03A6FA:        AND #$40                  ;
CODE_03A6FC:        BEQ CODE_03A766           ;
CODE_03A6FE:        LDA [$FA],y               ;
CODE_03A700:        AND #$7F                  ;
CODE_03A702:        CMP #$4B                  ;
CODE_03A704:        BNE CODE_03A709           ;
CODE_03A706:        INC $0745                 ;
CODE_03A709:        AND #$3F                  ;
CODE_03A70B:        BRA CODE_03A747           ;

CODE_03A70D:        CMP #$0C                  ;
CODE_03A70F:        BCS CODE_03A739           ;
CODE_03A711:        LDA $F6                   ;
CODE_03A713:        BEQ CODE_03A716           ;
CODE_03A715:        INY                       ;
CODE_03A716:        INY                       ;
CODE_03A717:        LDA [$FA],y               ;
CODE_03A719:        AND #$70                  ;
CODE_03A71B:        BNE CODE_03A727           ;
CODE_03A71D:        LDA #$16                  ;
CODE_03A71F:        STA $07                   ;
CODE_03A721:        LDA [$FA],y               ;
CODE_03A723:        AND #$0F                  ;
CODE_03A725:        BRA CODE_03A747           ;

CODE_03A727:        STA $00                   ;
CODE_03A729:        CMP #$70                  ;
CODE_03A72B:        BNE CODE_03A735           ;
CODE_03A72D:        LDA [$FA],y               ;
CODE_03A72F:        AND #$08                  ;
CODE_03A731:        BEQ CODE_03A735           ;
CODE_03A733:        STZ $00                   ;
CODE_03A735:        LDA $00                   ;
CODE_03A737:        BRA CODE_03A743           ;

CODE_03A739:        LDA $F6                   ;
CODE_03A73B:        BEQ CODE_03A73E           ;
CODE_03A73D:        INY                       ;
CODE_03A73E:        INY                       ;
CODE_03A73F:        LDA [$FA],y               ;
CODE_03A741:        AND #$70                  ;
CODE_03A743:        LSR A                     ;
CODE_03A744:        LSR A                     ;
CODE_03A745:        LSR A                     ;
CODE_03A746:        LSR A                     ;
CODE_03A747:        STA $00                   ;
CODE_03A749:        LDA $1300,x               ;
CODE_03A74C:        BPL CODE_03A7A6           ;
CODE_03A74E:        LDA $072A                 ;
CODE_03A751:        CMP $0725                 ;
CODE_03A754:        BEQ CODE_03A769           ;
CODE_03A756:        LDY $072C                 ;
CODE_03A759:        LDA [$FA],y               ;
CODE_03A75B:        AND #$0F                  ;
CODE_03A75D:        CMP #$0E                  ;
CODE_03A75F:        BNE CODE_03A766           ;
CODE_03A761:        LDA $0728                 ;
CODE_03A764:        BNE CODE_03A78D           ;
CODE_03A766:        SEP #$10                  ;
CODE_03A768:        RTS                       ;

CODE_03A769:        LDA $0728                 ;
CODE_03A76C:        BEQ CODE_03A77D           ;
CODE_03A76E:        LDA #$00                  ;
CODE_03A770:        STA $0728                 ;
CODE_03A773:        STA $0729                 ;
CODE_03A776:        STA $9E                   ;
CODE_03A778:        STA $9F                   ;
CODE_03A77A:        SEP #$10                  ;
CODE_03A77C:        RTS                       ;

CODE_03A77D:        LDY $072C                 ;Offset of current level data in index
CODE_03A780:        LDA [$FA],y               ;Get level data's high nibble (x-coordinate?)
CODE_03A782:        AND #$F0                  ;
CODE_03A784:        LSR A                     ;
CODE_03A785:        LSR A                     ;
CODE_03A786:        LSR A                     ;
CODE_03A787:        LSR A                     ;
CODE_03A788:        CMP $0726                 ;
CODE_03A78B:        BNE CODE_03A766           ;
CODE_03A78D:        PHX                       ;
CODE_03A78E:        REP #$20                  ;
CODE_03A790:        TXA                       ;
CODE_03A791:        ASL A                     ;
CODE_03A792:        TAX                       ;
CODE_03A793:        LDA $072C                 ;
CODE_03A796:        STA $1305,x               ;
CODE_03A799:        SEP #$20                  ;
CODE_03A79B:        PLX                       ;
CODE_03A79C:        LDA $F6                   ;\
CODE_03A79E:        BEQ CODE_03A7A3           ; | If vertically extendable object
CODE_03A7A0:        INC $010B                 ;/ Set flag for 3 byte object
CODE_03A7A3:        JSR CODE_03A675           ;Increase level data index accordingly
CODE_03A7A6:        LDA $F6                   ;\
CODE_03A7A8:        BEQ CODE_03A7B3           ;/ If vertically extendable objects, branch
CODE_03A7AA:        LDY $F7                   ;
CODE_03A7AC:        JSL CODE_048E15           ;
CODE_03A7B0:        SEP #$10                  ;
CODE_03A7B2:        RTS                       ;

CODE_03A7B3:        SEP #$10                  ;\
CODE_03A7B5:        LDA $00                   ; |
CODE_03A7B7:        CLC                       ; |
CODE_03A7B8:        ADC $07                   ; |
CODE_03A7BA:        ASL A                     ; |
CODE_03A7BB:        TAY                       ; | Build vertically extendable objects appropriately and place them into the level
CODE_03A7BC:        LDA PNTR_03A7C9,y               ; |
CODE_03A7BF:        STA $04                   ; |
CODE_03A7C1:        LDA PNTR_03A7C9+1,y               ; |
CODE_03A7C4:        STA $05                   ; |
CODE_03A7C6:        JMP ($0004)               ;/

;Pointers to level objects
PNTR_03A7C9:        dw CODE_03A9F7                          ;$00 - Warp pipe
                    dw CODE_03A8AF                          ;$01 - $0733-dependant object. 00 = normal, green platform. 01 = mushroom, 02 = bullet bill cannons
                    dw CODE_03AB63                          ;$02 - Row of bricks
                    dw CODE_03AB72                          ;$03 - Row of stones
                    dw CODE_03AB2A                          ;$04 - Row of coins
                    dw CODE_03AB83                          ;$05 - Column of bricks
                    dw CODE_03AB8A                          ;$06 - Column of stones
                    dw CODE_03A9F7                          ;$07 - Decoration pipe
                    dw CODE_03AC3F                          ;$08 - Hole object
                    dw CODE_03A978                          ;$09 - Pulley rope
                    dw CODE_03AAB0                          ;$0A - Bridge (high)
                    dw CODE_03AAB4                          ;$0B - Bridge (mid)
                    dw CODE_03AAB8                          ;$0C - Bridge (low)
                    dw CODE_03AA7E                          ;$0D - Water/lava pit
                    dw CODE_03AA9E                          ;$0E - Row of Coin Question blocks (high)
                    dw CODE_03AAA2                          ;$0F - Row of Coin Question blocks (low)
                    dw CODE_03A827                          ;$10 - 
                    dw CODE_03A827                          ;$11 - 
                    dw CODE_03A827                          ;$12 - 
                    dw CODE_03A827                          ;$13 - these point to an rts
                    dw CODE_03A827                          ;$14 - 
                    dw CODE_03A827                          ;$15 - 
                    dw CODE_03AC0F                          ;$16 - 
                    dw CODE_03AC0F                          ;$17 - 
                    dw CODE_03AC0F                          ;$18 - 
                    dw CODE_03AC05                          ;$19 - 
                    dw CODE_03AC18                          ;$1A - 
                    dw CODE_03AC18                          ;$1B - 
                    dw CODE_03AC18                          ;$1C - 
                    dw CODE_03AC15                          ;$1D - 
                    dw CODE_03AC18                          ;$1E - 
                    dw CODE_03A98D                          ;$1F - Underwater horizontal pipe
                    dw CODE_03AB4E                          ;$20 - Empty block
                    dw CODE_03ABD5                          ;$21 - Springboard object
                    dw CODE_03A9A0                          ;$22 - 
                    dw CODE_03AAE4                          ;$23 - 
                    dw CODE_03AB3F                          ;$24 - 
                    dw CODE_03AB44                          ;$25 - 
                    dw CODE_03AB38                          ;$26 - 
                    dw CODE_03A862                          ;$27 - 
                    dw CODE_03A87C                          ;$28 - 
                    dw CODE_03A87C                          ;$29 - 
                    dw CODE_03A89A                          ;$2A - 
                    dw CODE_03A89A                          ;$2B - 
                    dw CODE_03A89A                          ;$2C - 
                    dw CODE_03A77A                          ;$2D - 
                    dw CODE_03A828                          ;$2E - 

CODE_03A827:        RTS                       ;

CODE_03A828:        PHX                       ;
CODE_03A829:        REP #$30                  ;
CODE_03A82B:        TXA                       ;
CODE_03A82C:        ASL A                     ;
CODE_03A82D:        TAX                       ;
CODE_03A82E:        LDY $1305,x               ;
CODE_03A831:        SEP #$20                  ;
CODE_03A833:        INY                       ;
CODE_03A834:        LDA [$FA],y               ;
CODE_03A836:        SEP #$10                  ;
CODE_03A838:        PLX                       ;
CODE_03A839:        PHA                       ;
CODE_03A83A:        AND #$40                  ;
CODE_03A83C:        BNE CODE_03A850           ;
CODE_03A83E:        PLA                       ;
CODE_03A83F:        PHA                       ;
CODE_03A840:        AND #$0F                  ;
CODE_03A842:        STA $0727                 ;
CODE_03A845:        PLA                       ;
CODE_03A846:        AND #$30                  ;
CODE_03A848:        LSR A                     ;
CODE_03A849:        LSR A                     ;
CODE_03A84A:        LSR A                     ;
CODE_03A84B:        LSR A                     ;
CODE_03A84C:        STA $0742                 ;
CODE_03A84F:        RTS                       ;

CODE_03A850:        PLA                       ;
CODE_03A851:        AND #$07                  ;
CODE_03A853:        CMP #$04                  ;
CODE_03A855:        BCC CODE_03A85E           ;
CODE_03A857:        AND #$04                  ;
CODE_03A859:        STA $0744                 ;
CODE_03A85C:        LDA #$00                  ;
CODE_03A85E:        STA $0741                 ;
CODE_03A861:        RTS                       ;

CODE_03A862:        LDX #$04                  ;"warpzone scroll stop code" ~ SWR | Warpzone setup
CODE_03A864:        LDA $075F                 ;\If world 1-x
CODE_03A867:        BEQ CODE_03A870           ;/Set warp zone config to world 1's warps
CODE_03A869:        INX                       ;adjust config for next checks
CODE_03A86A:        LDY $5C                   ;\If map type is not "ground" and world is not 1-x
CODE_03A86C:        DEY                       ; |Set warp zone config to world 4's single warp
CODE_03A86D:        BNE CODE_03A870           ;/
CODE_03A86F:        INX                       ;Else set warp zone config to world 4's outside warps
CODE_03A870:        TXA                       ;\
CODE_03A871:        STA $06D6                 ;/Store warpzone config
CODE_03A874:        JSR CODE_0390FC           ;Routine to write the "Welcome to warpzone" message
CODE_03A877:        LDA #$0D                  ;\Destroy all piranha plants
CODE_03A879:        JSR CODE_03A885           ;/
CODE_03A87C:        LDA $0723                 ;\
CODE_03A87F:        EOR #$01                  ; |Flip scroll enabled flag on or off
CODE_03A881:        STA $0723                 ;/
CODE_03A884:        RTS                       ;Return

CODE_03A885:        STA $00                   ;\ Destroy all sprites with sprite number specified in A by setting them
CODE_03A887:        LDA #$00                  ; |off-screen.
CODE_03A889:        LDX #$08                  ; |
CODE_03A88B:        LDY $1C,x                 ; |
CODE_03A88D:        CPY $00                   ; |
CODE_03A88F:        BNE CODE_03A893           ; |
CODE_03A891:        STA $10,x                 ; |
CODE_03A893:        DEX                       ; |
CODE_03A894:        BPL CODE_03A88B           ; |
CODE_03A896:        RTS                       ;/

DATA_03A897:        db $14,$17,$18                          ;Generators: Bullet Bill, Flying Cheep-Cheep, Stop Generators

CODE_03A89A:        LDX $00                   ;
CODE_03A89C:        LDA DATA_03A897-8,x       ;
CODE_03A89F:        LDY #$09                  ;
CODE_03A8A1:        DEY                       ;
CODE_03A8A2:        BMI CODE_03A8AB           ;
CODE_03A8A4:        CMP $001C,y               ;
CODE_03A8A7:        BNE CODE_03A8A1           ;
CODE_03A8A9:        LDA #$00                  ;\
CODE_03A8AB:        STA $06CD                 ;/Set enemy to generate: nothing
CODE_03A8AE:        RTS                       ;

CODE_03A8AF:        LDA $0733                 ;\
CODE_03A8B2:        ASL A                     ; |
CODE_03A8B3:        TAY                       ; |
CODE_03A8B4:        LDA PNTR_03A8C1,y               ; |Execute routines according to area object styles
CODE_03A8B7:        STA $04                   ; |
CODE_03A8B9:        LDA PNTR_03A8C1+1,y               ; |
CODE_03A8BC:        STA $05                   ; |
CODE_03A8BE:        JMP ($0004)               ;/

;Code for object $01: $0733-dependant object
PNTR_03A8C1:        dw CODE_03A8C7                          ;Regular
                    dw CODE_03A937                          ;Mushroom platforms
                    dw CODE_03AB99                          ;Bullet bill cannons

CODE_03A8C7:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03A8CA:        STX $0ECA                 ;
CODE_03A8CD:        LDA $1300,x               ;
CODE_03A8D0:        BEQ CODE_03A932           ;
CODE_03A8D2:        BPL CODE_03A8E5           ;
CODE_03A8D4:        TYA                       ;
CODE_03A8D5:        STA $1300,x               ;
CODE_03A8D8:        LDA $0725                 ;
CODE_03A8DB:        ORA $0726                 ;
CODE_03A8DE:        BEQ CODE_03A8E5           ;
CODE_03A8E0:        LDA #$1A                  ;
CODE_03A8E2:        JMP CODE_03A96E           ;

CODE_03A8E5:        STA $0ECB                 ;
CODE_03A8E8:        LDX $07                   ;
CODE_03A8EA:        LDA #$1B                  ;
CODE_03A8EC:        STA $06A1,x               ;
CODE_03A8EF:        TXY                       ;
CODE_03A8F0:        INY                       ;
CODE_03A8F1:        LDX $0ECA                 ;
CODE_03A8F4:        DEC $0ECB                 ;
CODE_03A8F7:        BEQ CODE_03A913           ;
CODE_03A8F9:        LDA $130F,x               ;
CODE_03A8FC:        BNE CODE_03A90A           ;
CODE_03A8FE:        INC $130F,x               ;
CODE_03A901:        LDA #$45                  ;
CODE_03A903:        STA $06A1,y               ;
CODE_03A906:        LDA #$49                  ;
CODE_03A908:        BRA CODE_03A92E           ;

CODE_03A90A:        LDA #$46                  ;
CODE_03A90C:        STA $06A1,y               ;
CODE_03A90F:        LDA #$4A                  ;
CODE_03A911:        BRA CODE_03A92E           ;

CODE_03A913:        LDA $130F,x               ;
CODE_03A916:        BEQ CODE_03A924           ;
CODE_03A918:        STZ $130F,x               ;
CODE_03A91B:        LDA #$47                  ;
CODE_03A91D:        STA $06A1,y               ;
CODE_03A920:        LDA #$4B                  ;
CODE_03A922:        BRA CODE_03A92E           ;

CODE_03A924:        STZ $130F,x               ;
CODE_03A927:        LDA #$48                  ;
CODE_03A929:        STA $06A1,y               ;
CODE_03A92C:        LDA #$4C                  ;
CODE_03A92E:        TYX                       ;
CODE_03A92F:        JMP CODE_03A968           ;

CODE_03A932:        LDA #$1C                  ;
CODE_03A934:        JMP CODE_03A96E           ;

CODE_03A937:        JSR CODE_03ACB3           ;
CODE_03A93A:        STY $06                   ;
CODE_03A93C:        BCC CODE_03A949           ;
CODE_03A93E:        LDA $1300,x               ;
CODE_03A941:        LSR A                     ;
CODE_03A942:        STA $1314,x               ;
CODE_03A945:        LDA #$1D                  ;
CODE_03A947:        BRA CODE_03A96E           ;

CODE_03A949:        LDA #$1F                  ;
CODE_03A94B:        LDY $1300,x               ;
CODE_03A94E:        BEQ CODE_03A96E           ;
CODE_03A950:        LDA $1314,x               ;
CODE_03A953:        STA $06                   ;
CODE_03A955:        LDX $07                   ;
CODE_03A957:        LDA #$1E                  ;
CODE_03A959:        STA $06A1,x               ;
CODE_03A95C:        CPY $06                   ;
CODE_03A95E:        BNE CODE_03A98C           ;
CODE_03A960:        INX                       ;
CODE_03A961:        LDA #$4F                  ;
CODE_03A963:        STA $06A1,x               ;
CODE_03A966:        LDA #$50                  ;
CODE_03A968:        INX                       ;
CODE_03A969:        LDY #$0F                  ;
CODE_03A96B:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03A96E:        LDX $07                   ;
CODE_03A970:        LDY #$00                  ;
CODE_03A972:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

DATA_03A975:        db $42,$41,$43                          ;Pulley rope map16 tiles: left corner, middle, right corner

;Pulley rope
CODE_03A978:        JSR CODE_03ACB3           ;Get length of pulley rope object
CODE_03A97B:        LDY #$00                  ;Initialize tile buffer index
CODE_03A97D:        BCS CODE_03A986           ;If starting, render left corner
CODE_03A97F:        INY                       ;\
CODE_03A980:        LDA $1300,x               ; |
CODE_03A983:        BNE CODE_03A986           ;/If not at the end, render rope
CODE_03A985:        INY                       ;Otherwise render right corner
CODE_03A986:        LDA DATA_03A975,y         ;\
CODE_03A989:        STA $06A1                 ;/render
CODE_03A98C:        RTS                       ;

;Underwater horizontal pipe
CODE_03A98D:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03A990:        LDY $1300,x               ;
CODE_03A993:        LDX $07                   ;
CODE_03A995:        LDA #$75                  ;Pipe top tile
CODE_03A997:        STA $06A1,x               ;
CODE_03A99A:        LDA #$76                  ;Pipe bottom tile
CODE_03A99C:        STA $06A2,x               ;
CODE_03A99F:        RTS                       ;

CODE_03A9A0:        LDY #$03                  ;
CODE_03A9A2:        JSR CODE_03ACB6           ;
CODE_03A9A5:        LDY #$0A                  ;
CODE_03A9A7:        DEY                       ;
CODE_03A9A8:        DEY                       ;
CODE_03A9A9:        STY $05                   ;
CODE_03A9AB:        LDY $1300,x               ;
CODE_03A9AE:        STY $06                   ;
CODE_03A9B0:        LDX $05                   ;
CODE_03A9B2:        INX                       ;
CODE_03A9B3:        LDA DATA_03A9E3,y         ;
CODE_03A9B6:        CMP #$00                  ;
CODE_03A9B8:        BEQ CODE_03A9C2           ;
CODE_03A9BA:        LDX #$00                  ;
CODE_03A9BC:        LDY $05                   ;
CODE_03A9BE:        JSR CODE_03AC78           ;Place tile in Accumulator into level.
CODE_03A9C1:        CLC                       ;
CODE_03A9C2:        LDY $06                   ;
CODE_03A9C4:        LDA DATA_03A9E7,y         ;
CODE_03A9C7:        STA $06A1,x               ;
CODE_03A9CA:        LDA DATA_03A9EB,y         ;
CODE_03A9CD:        STA $06A2,x               ;
CODE_03A9D0:        BCS CODE_03A9E2           ;
CODE_03A9D2:        LDX #$06                  ;
CODE_03A9D4:        LDA #$00                  ;
CODE_03A9D6:        STA $06A1,x               ;
CODE_03A9D9:        DEX                       ;
CODE_03A9DA:        BPL CODE_03A9D4           ;
CODE_03A9DC:        LDA DATA_03A9EF,y         ;
CODE_03A9DF:        STA $06A8                 ;
CODE_03A9E2:        RTS                       ;

DATA_03A9E3:        db $19,$18,$00,$00 ;

DATA_03A9E7:        db $19,$22,$21,$20 ;

DATA_03A9EB:        db $19,$25,$24,$23 ;

DATA_03A9EF:        db $15,$14 ;

DATA_03A9F1:        db $19,$18,$17,$16,$19,$18 ;

;Generate pipe
CODE_03A9F7:        JSR CODE_03AA4D           ;Get pipe height
CODE_03A9FA:        LDA $00                   ;\
CODE_03A9FC:        BEQ CODE_03AA02           ;/Branch if warp pipe
CODE_03A9FE:        INY                       ;
CODE_03A9FF:        INY                       ;
CODE_03AA00:        INY                       ;
CODE_03AA01:        INY                       ;
CODE_03AA02:        TYA                       ;
CODE_03AA03:        PHA                       ;Preserve A
CODE_03AA04:        LDA $0760                 ;\
CODE_03AA07:        ORA $075F                 ; |If 1-1, piranha plants do not appear
CODE_03AA0A:        BEQ CODE_03AA39           ;/
CODE_03AA0C:        LDY $1300,x               ;
CODE_03AA0F:        BEQ CODE_03AA39           ;
CODE_03AA11:        JSR CODE_03AA6B           ;\Get free sprite slot for the piranha plant
CODE_03AA14:        BCS CODE_03AA39           ;/If none, skip
CODE_03AA16:        JSR CODE_03ACE0           ;\Get Xpos of screen ((AND #$F0>>4)<<4)
CODE_03AA19:        CLC                       ; |
CODE_03AA1A:        ADC #$08                  ; |Add 8 pixels to it
CODE_03AA1C:        STA $021A,x               ; |Store into Sprite X-Position
CODE_03AA1F:        LDA $0725                 ; |
CODE_03AA22:        ADC #$00                  ; |Handle page boundary accordingly
CODE_03AA24:        STA $79,x                 ;/
CODE_03AA26:        LDA #$01                  ;\
CODE_03AA28:        STA $BC,x                 ; |Sprite is onscreen in a normal way
CODE_03AA2A:        STA $10,x                 ;/
CODE_03AA2C:        JSR CODE_03ACE8           ;\ (A << 4) + $20
CODE_03AA2F:        STA $0238,x               ;/Store ypos
CODE_03AA32:        LDA #$0D                  ;\
CODE_03AA34:        STA $1C,x                 ;/Sprite to generate: Piranha plant
CODE_03AA36:        JSR CODE_03CB99           ;Run piranha plant code?
CODE_03AA39:        PLA                       ;Recover A
CODE_03AA3A:        TAY                       ;
CODE_03AA3B:        LDX $07                   ;
CODE_03AA3D:        LDA DATA_03A9EF,y               ;
CODE_03AA40:        STA $06A1,x               ;
CODE_03AA43:        INX                       ;
CODE_03AA44:        LDA DATA_03A9F1,y               ;
CODE_03AA47:        LDY $06                   ;
CODE_03AA49:        DEY                       ;
CODE_03AA4A:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03AA4D:        LDY #$01                  ;
CODE_03AA4F:        JSR CODE_03ACB6           ;
CODE_03AA52:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AA55:        TYA                       ;
CODE_03AA56:        AND #$07                  ;
CODE_03AA58:        STA $06                   ;
CODE_03AA5A:        LDY $1300,x               ;
CODE_03AA5D:        RTS                       ;

CODE_03AA5E:        LDX #$00                  ;\ Get free sprite slot (begin-end)
CODE_03AA60:        CLC                       ; |
CODE_03AA61:        LDA $10,x                 ; |
CODE_03AA63:        BEQ CODE_03AA6A           ; |
CODE_03AA65:        INX                       ; |
CODE_03AA66:        CPX #$08                  ; |
CODE_03AA68:        BNE CODE_03AA60           ; |
CODE_03AA6A:        RTS                       ;/

CODE_03AA6B:        LDX #$08                  ;\ Routine only used by piranha plant
CODE_03AA6D:        CLC                       ; |
CODE_03AA6E:        LDA $10,x                 ; |
CODE_03AA70:        BEQ CODE_03AA77           ; |Get free sprite slot (end-begin)
CODE_03AA72:        DEX                       ; |Index = $FF if none
CODE_03AA73:        CPX #$FF                  ; |
CODE_03AA75:        BNE CODE_03AA6D           ; |
CODE_03AA77:        RTS                       ;/

DATA_03AA78:        db $86,$87,$00,$88                      ;Water/lava pit top tiles: Underwater, normal, cave, castle

DATA_03AA7C:        db $8A,$8B                              ;Water/lava pit tiles

;Water/lava pit
CODE_03AA7E:        JSR CODE_03ACB3           ;Get length of object
CODE_03AA81:        LDX #$0A                  ;Set row to 10
CODE_03AA83:        LDA $5C                   ;\
CODE_03AA85:        CMP #$03                  ; |
CODE_03AA87:        BNE CODE_03AA8A           ; |
CODE_03AA89:        INX                       ;/Set row to 11 if castle level
CODE_03AA8A:        LDY $5C                   ;\
CODE_03AA8C:        LDA DATA_03AA78,y               ; |
CODE_03AA8F:        STA $06A1,x               ; | Render tile depending on level type
CODE_03AA92:        INX                       ; |
CODE_03AA93:        TYA                       ; |
CODE_03AA94:        LSR A                     ; |
CODE_03AA95:        TAY                       ; |
CODE_03AA96:        LDA DATA_03AA7C,y               ;/
CODE_03AA99:        LDY #$01                  ;Height 2
CODE_03AA9B:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

;Row of Coin Question blocks (high)
CODE_03AA9E:        LDA #$03                  ;Set row
CODE_03AAA0:        BRA CODE_03AAA4           ;

;Row of Coin Question blocks (low)
CODE_03AAA2:        LDA #$07                  ;Set row
CODE_03AAA4:        PHA                       ;
CODE_03AAA5:        JSR CODE_03ACB3           ;Get length of object
CODE_03AAA8:        PLA                       ;
CODE_03AAA9:        TAX                       ;
CODE_03AAAA:        LDA #$E7                  ;Coin question block map16
CODE_03AAAC:        STA $06A1,x               ;
CODE_03AAAF:        RTS                       ;

;Bridge (high)
CODE_03AAB0:        LDA #$06                  ;set row
CODE_03AAB2:        BRA CODE_03AABA           ;

;Bridge (mid)
CODE_03AAB4:        LDA #$07                  ;set row
CODE_03AAB6:        BRA CODE_03AABA           ;

;Bridge (low)
CODE_03AAB8:        LDA #$09                  ;set row
CODE_03AABA:        PHA                       ;
CODE_03AABB:        JSR CODE_03ACB3           ;Get bridge length
CODE_03AABE:        LDA $1300,x               ;
CODE_03AAC1:        BEQ CODE_03AAD3           ;
CODE_03AAC3:        LDA $130F,x               ;
CODE_03AAC6:        BNE CODE_03AACF           ;
CODE_03AAC8:        INC $130F,x               ;
CODE_03AACB:        LDA #$0E                  ;Bridge begin railing tile
CODE_03AACD:        BRA CODE_03AAD8           ;

CODE_03AACF:        LDA #$0D                  ;Bridge middle railing tile
CODE_03AAD1:        BRA CODE_03AAD8           ;

CODE_03AAD3:        STZ $130F,x               ;
CODE_03AAD6:        LDA #$0F                  ;Bridge end railing tile
CODE_03AAD8:        PLX                       ;
CODE_03AAD9:        STA $06A1,x               ;render tile
CODE_03AADC:        INX                       ;go down once
CODE_03AADD:        LDY #$00                  ;\bridge height is 1
CODE_03AADF:        LDA #$6B                  ; |Bridge tile
CODE_03AAE1:        JMP CODE_03AC78           ;/Place tile in Accumulator into level.

CODE_03AAE4:        LDA #$28                  ;
CODE_03AAE6:        STA $06A1                 ;
CODE_03AAE9:        LDX #$01                  ;
CODE_03AAEB:        LDY #$08                  ;
CODE_03AAED:        LDA #$29                  ;
CODE_03AAEF:        JSR CODE_03AC78           ;
CODE_03AAF2:        LDA #$64                  ;
CODE_03AAF4:        STA $06AB                 ;
CODE_03AAF7:        JSR CODE_03ACE0           ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AAFA:        SEC                       ;
CODE_03AAFB:        SBC #$08                  ;
CODE_03AAFD:        STA $021F                 ;
CODE_03AB00:        LDA $0725                 ;
CODE_03AB03:        SBC #$00                  ;
CODE_03AB05:        STA $7E                   ;
CODE_03AB07:        LDA #$30                  ;
CODE_03AB09:        STA $023D                 ;
CODE_03AB0C:        LDA #$B0                  ;
CODE_03AB0E:        STA $010D                 ;
CODE_03AB11:        LDA #$30                  ;
CODE_03AB13:        STA $21                   ;
CODE_03AB15:        INC $15                   ;
CODE_03AB17:        LDA #$FF                  ;
CODE_03AB19:        STA $0FB4                 ;
CODE_03AB1C:        STA $0FB5                 ;
CODE_03AB1F:        STA $0FB6                 ;
CODE_03AB22:        STA $0FB7                 ;
CODE_03AB25:        RTS                       ;

DATA_03AB26:        db $EA,$E9,$E9,$E9                      ;Coin map16, depending on $7E005C
                                                            ;Underwater coin, regular coin, underground coin, castle coin
;Row of coins object
CODE_03AB2A:        LDY $5C                   ;\
CODE_03AB2C:        LDA DATA_03AB26,y         ;/Load coin map16 tile number
CODE_03AB2F:        JMP CODE_03AB77           ;Render

DATA_03AB32:        db $06,$07,$08

DATA_03AB35:        db $FD,$10,$8D                          ;Bowser bridge map16 tiles: Axe, Axechainrope Thing, Bridge

;
CODE_03AB38:        LDY #$0C                  ;
CODE_03AB3A:        JSR CODE_03ACB6           ;
CODE_03AB3D:        BRA CODE_03AB44           ;

;Bowser Bridge Tiles
CODE_03AB3F:        LDA #$08                  ;
CODE_03AB41:        STA $0773                 ;
CODE_03AB44:        LDY $00                   ;
CODE_03AB46:        LDX DATA_03AB32-2,y       ;
CODE_03AB49:        LDA DATA_03AB35-2,y       ;
CODE_03AB4C:        BRA CODE_03AB55           ;

;Empty Block object
CODE_03AB4E:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB51:        LDX $07                   ;
CODE_03AB53:        LDA #$FC                  ;Empty block map16 tile
CODE_03AB55:        LDY #$00                  ;
CODE_03AB57:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

DATA_03AB5A:        db $71,$64,$64,$6A                      ;Stone map16, depending on $5C
                                                            ;Coral stone, normal stone, underground stone, castle dark brick

DATA_03AB5E:        db $26,$51,$52,$52,$8C                  ;Brick map16, depending on $5C.
                                                            ;Coral, normal bricks, underground bricks, castle bricks, cloud tiles

;Row of bricks
CODE_03AB63:        LDY $5C                   ;\
CODE_03AB65:        LDA $0743                 ; |
CODE_03AB68:        BEQ CODE_03AB6C           ; |
CODE_03AB6A:        LDY #$04                  ; |If cloud level, set index to $04
CODE_03AB6C:        LDA DATA_03AB5E,y               ;/ Get brick map16 tile number
CODE_03AB6F:        JMP CODE_03AB77           ;Render

;Row of stones object
CODE_03AB72:        LDY $5C                   ;\
CODE_03AB74:        LDA DATA_03AB5A,y               ;/Get stone map16 tile number and render

CODE_03AB77:        PHA                       ;map16 tile on stack
CODE_03AB78:        JSR CODE_03ACB3           ;check object length
CODE_03AB7B:        LDX $07                   ;
CODE_03AB7D:        LDY #$00                  ;Set vertical height of 1 block high
CODE_03AB7F:        PLA                       ;
CODE_03AB80:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

;Column of bricks object
CODE_03AB83:        LDY $5C                   ;\
CODE_03AB85:        LDA DATA_03AB5E,y               ; |Get brick map16 tile depending on area type and render
CODE_03AB88:        BRA CODE_03AB8F           ;/ Note that in this column code, there's no cloud area override.

;Column of stones object
CODE_03AB8A:        LDY $5C                   ;\
CODE_03AB8C:        LDA DATA_03AB5A,y               ;/Get stone map16 tile number and render

CODE_03AB8F:        PHA                       ;
CODE_03AB90:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB93:        PLA                       ;
CODE_03AB94:        LDX $07                   ;
CODE_03AB96:        JMP CODE_03AC78           ;Place tile in Accumulator into level.

CODE_03AB99:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AB9C:        LDX $07                   ;
CODE_03AB9E:        LDA #$6C                  ;
CODE_03ABA0:        STA $06A1,x               ;
CODE_03ABA3:        INX                       ;
CODE_03ABA4:        DEY                       ;
CODE_03ABA5:        BMI CODE_03ABB5           ;
CODE_03ABA7:        LDA #$6D                  ;
CODE_03ABA9:        STA $06A1,x               ;
CODE_03ABAC:        INX                       ;
CODE_03ABAD:        DEY                       ;
CODE_03ABAE:        BMI CODE_03ABB5           ;
CODE_03ABB0:        LDA #$6E                  ;
CODE_03ABB2:        JSR CODE_03AC78           ;Place tile in Accumulator into level.
CODE_03ABB5:        LDX $026A                 ;
CODE_03ABB8:        JSR CODE_03ACE8           ; (A << 4) + $20
CODE_03ABBB:        STA $0277,x               ;
CODE_03ABBE:        LDA $0725                 ;
CODE_03ABC1:        STA $026B,x               ;
CODE_03ABC4:        JSR CODE_03ACE0           ;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABC7:        STA $0271,x               ;
CODE_03ABCA:        INX                       ;
CODE_03ABCB:        CPX #$06                  ;
CODE_03ABCD:        BCC CODE_03ABD1           ;
CODE_03ABCF:        LDX #$00                  ;
CODE_03ABD1:        STX $026A                 ;
CODE_03ABD4:        RTS                       ;

;Springboard object
CODE_03ABD5:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03ABD8:        JSR CODE_03AA5E           ;Get free sprite slot (begin-end)
CODE_03ABDB:        JSR CODE_03ACE0           ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ABDE:        STA $021A,x               ;/Store into sprite X-pos, low byte
CODE_03ABE1:        LDA $0725                 ;\Store screen number number into sprite X-pos, high byte
CODE_03ABE4:        STA $79,x                 ;/
CODE_03ABE6:        JSR CODE_03ACE8           ;(A << 4) + $20
CODE_03ABE9:        STA $0238,x               ;
CODE_03ABEC:        STA $5E,x                 ;
CODE_03ABEE:        LDA #$32                  ;\
CODE_03ABF0:        STA $1C,x                 ;/Sprite to generate: springboard
CODE_03ABF2:        LDY #$01                  ;
CODE_03ABF4:        STY $BC,x                 ;
CODE_03ABF6:        INC $10,x                 ;
CODE_03ABF8:        LDX $07                   ;
CODE_03ABFA:        LDA #$6F                  ;
CODE_03ABFC:        STA $06A1,x               ;
CODE_03ABFF:        LDA #$70                  ;
CODE_03AC01:        STA $06A2,x               ;
CODE_03AC04:        RTS                       ;

CODE_03AC05:        LDA $075D                 ;
CODE_03AC08:        BEQ CODE_03AC3E           ;
CODE_03AC0A:        STZ $075D                 ;
CODE_03AC0D:        BRA CODE_03AC18           ;

CODE_03AC0F:        JSR CODE_03AC38           ;
CODE_03AC12:        JMP CODE_03AC2A           ;

CODE_03AC15:        STZ $06BC                 ;
CODE_03AC18:        JSR CODE_03AC38           ;
CODE_03AC1B:        STY $07                   ;
CODE_03AC1D:        LDA #$00                  ;
CODE_03AC1F:        LDY $5C                   ;
CODE_03AC21:        DEY                       ;
CODE_03AC22:        BEQ CODE_03AC26           ;
CODE_03AC24:        LDA #$05                  ;
CODE_03AC26:        CLC                       ;
CODE_03AC27:        ADC $07                   ;
CODE_03AC29:        TAY                       ;
CODE_03AC2A:        LDA DATA_03BF87,y               ;
CODE_03AC2D:        PHA                       ;
CODE_03AC2E:        JSR CODE_03ACC2           ;Get object attributes from level object pointer
CODE_03AC31:        LDX $07                   ;
CODE_03AC33:        PLA                       ;
CODE_03AC34:        STA $06A1,x               ;
CODE_03AC37:        RTS                       ;

CODE_03AC38:        LDA $00                   ;
CODE_03AC3A:        SEC                       ;
CODE_03AC3B:        SBC #$00                  ;
CODE_03AC3D:        TAY                       ;
CODE_03AC3E:        RTS                       ;

;Hole object
CODE_03AC3F:        JSR CODE_03ACB3           ;\
CODE_03AC42:        BCC CODE_03AC70           ;/Skip if length already defined
CODE_03AC44:        LDA $5C                   ;\
CODE_03AC46:        BNE CODE_03AC70           ;/Branch if not water level.
CODE_03AC48:        LDX $026A                 ;Whirlpool spawning code. Get whirlpool index
CODE_03AC4B:        JSR CODE_03ACE0           ;\Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AC4E:        SEC                       ; |
CODE_03AC4F:        SBC #$10                  ; |subtract 10 pixels
CODE_03AC51:        STA $0271,x               ;/store as left extent of whirlpool
CODE_03AC54:        LDA $0725                 ;\
CODE_03AC57:        SBC #$00                  ; |Get page location
CODE_03AC59:        STA $026B,x               ;/ subtract with carry, store into page of whirlpool
CODE_03AC5C:        INY                       ;\
CODE_03AC5D:        INY                       ;/Increment length by 2
CODE_03AC5E:        TYA                       ;\
CODE_03AC5F:        ASL A                     ; |
CODE_03AC60:        ASL A                     ; |
CODE_03AC61:        ASL A                     ; |Multiply by 16 to get size of whirlpool
CODE_03AC62:        ASL A                     ; |
CODE_03AC63:        STA $0277,x               ;/Store into size
CODE_03AC66:        INX                       ;Increment whirlpool index
CODE_03AC67:        CPX #$05                  ;\
CODE_03AC69:        BCC CODE_03AC6D           ;/If we didn't reach 5th whirlpool yet, branch
CODE_03AC6B:        LDX #$00                  ;Otherwise, back at index 0
CODE_03AC6D:        STX $026A                 ;Store whirlpool index
CODE_03AC70:        LDX $5C                   ;Get map type in x, but it's lost again later?
CODE_03AC72:        LDA #$00                  ;Map16 tile: hole
CODE_03AC74:        LDX #$08                  ;Row number: 9 (bottom)
CODE_03AC76:        LDY #$0F                  ;Vertical height of object

;Place map16 tile into level
;Input:
;A: Map16 tile
;X: Row number (TODO: verify?)
;Y: Height of the object
CODE_03AC78:        STY $0735                 ;Store vertical height of object
CODE_03AC7B:        LDY $06A1,x               ;\Get map16 tile of current spot in question of being rendered
CODE_03AC7E:        BEQ CODE_03ACA4           ;/If empty, proceed
CODE_03AC80:        CPY #$1B                  ;\If middle of green platform, wait until next row
CODE_03AC82:        BEQ CODE_03ACA7           ;/
CODE_03AC84:        CPY #$1E                  ;\If middle of mushroom platform, wait until next row
CODE_03AC86:        BEQ CODE_03ACA7           ;/
CODE_03AC88:        CPY #$E7                  ;\If coin block
CODE_03AC8A:        BEQ CODE_03ACA4           ;/overwrite
CODE_03AC8C:        CPY #$46                  ;\If middle part of green platform's brown base w/ shadow, wait until next row
CODE_03AC8E:        BEQ CODE_03ACA7           ;/
CODE_03AC90:        CPY #$4A                  ;\If middle part of green platform's brown base, wait until next row
CODE_03AC92:        BEQ CODE_03ACA7           ;/
CODE_03AC94:        CPY #$E7                  ;\If map16 tile $E8-$FF, wait until next row
CODE_03AC96:        BCS CODE_03ACA7           ;/($E7 is not included because it's already checked for earlier)
CODE_03AC98:        CPY #$57                  ;\
CODE_03AC9A:        BEQ CODE_03ACA0           ; |If ground tile base, skip ground tile top check
CODE_03AC9C:        CPY #$56                  ; |If ground tile top, overwrite
CODE_03AC9E:        BNE CODE_03ACA4           ;/
CODE_03ACA0:        CMP #$50                  ;\
CODE_03ACA2:        BEQ CODE_03ACA7           ;/If mushroom platform stem, wait until next row
CODE_03ACA4:        STA $06A1,x               ;Otherwise, write the map16 tile
CODE_03ACA7:        INX                       ;Next row
CODE_03ACA8:        CPX #$0D                  ;\
CODE_03ACAA:        BCS CODE_03ACB2           ;/Stop rendering if at bottom of screen
CODE_03ACAC:        LDY $0735                 ;\Decrement object height and stop if we're done rendering all height.
CODE_03ACAF:        DEY                       ; |
CODE_03ACB0:        BPL CODE_03AC78           ;/
CODE_03ACB2:        RTS                       ;

;Check if object is fixed length
;Output: set carry = object has fixed length, clear carry = object has specified length
;TODO: verify
CODE_03ACB3:        JSR CODE_03ACC2           ;Get object attributes from level object pointer

CODE_03ACB6:        LDA $1300,x               ;Check object length buffer
CODE_03ACB9:        CLC                       ;Clear carry
CODE_03ACBA:        BPL CODE_03ACC1           ;\if $FF,
CODE_03ACBC:        TYA                       ; | Set specified fixed length in object length buffer?
CODE_03ACBD:        STA $1300,x               ;/
CODE_03ACC0:        SEC                       ;Set carry
CODE_03ACC1:        RTS                       ;

;Get object attributes
;Output: $07 = Row/Y location, Y = ??? TODO: Find out.
CODE_03ACC2:        PHX                       ;
CODE_03ACC3:        REP #$30                  ;
CODE_03ACC5:        TXA                       ;
CODE_03ACC6:        AND #$00FF                ;
CODE_03ACC9:        ASL A                     ;
CODE_03ACCA:        TAX                       ;
CODE_03ACCB:        LDY $1305,x               ;
CODE_03ACCE:        SEP #$20                  ;
CODE_03ACD0:        LDA [$FA],y               ;\Get first byte of level object
CODE_03ACD2:        AND #$0F                  ; |get Y coordinates
CODE_03ACD4:        STA $07                   ;/Save as row location
CODE_03ACD6:        INY                       ;\
CODE_03ACD7:        LDA [$FA],y               ; |Get next byte of level object
CODE_03ACD9:        AND #$0F                  ; |
CODE_03ACDB:        SEP #$10                  ; |(object number?)
CODE_03ACDD:        TAY                       ; |
CODE_03ACDE:        PLX                       ;/
CODE_03ACDF:        RTS                       ;

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03ACE0:        LDA $0726                 ;\
CODE_03ACE3:        ASL A                     ; | Turn screen X-coordinates from 16x16 to pixel coordinate
CODE_03ACE4:        ASL A                     ; |
CODE_03ACE5:        ASL A                     ; |
CODE_03ACE6:        ASL A                     ; |
CODE_03ACE7:        RTS                       ;/

CODE_03ACE8:        LDA $07                   ;
CODE_03ACEA:        ASL A                     ;
CODE_03ACEB:        ASL A                     ;
CODE_03ACEC:        ASL A                     ;
CODE_03ACED:        ASL A                     ;
CODE_03ACEE:        CLC                       ;\Account for the statusbar area
CODE_03ACEF:        ADC #$20                  ;/
CODE_03ACF1:        RTS                       ;

DATA_03ACF2:        db $00,$D0
DATA_03ACF4:        db $05,$05

CODE_03ACF6:        PHA                       ;
CODE_03ACF7:        LSR A                     ;
CODE_03ACF8:        LSR A                     ;
CODE_03ACF9:        LSR A                     ;
CODE_03ACFA:        LSR A                     ;
CODE_03ACFB:        TAY                       ;
CODE_03ACFC:        LDA DATA_03ACF4,y               ;
CODE_03ACFF:        STA $07                   ;
CODE_03AD01:        PLA                       ;
CODE_03AD02:        AND #$0F                  ;
CODE_03AD04:        CLC                       ;
CODE_03AD05:        ADC DATA_03ACF2,y               ;
CODE_03AD08:        STA $06                   ;
CODE_03AD0A:        RTS                       ;

;Place tile into level. See subroutine for i/o
CODE_03AD0B:        PHB                       ;\
CODE_03AD0C:        PHK                       ; |
CODE_03AD0D:        PLB                       ; |
CODE_03AD0E:        JSR CODE_03AC78           ; |Place tile in Accumulator into level.
CODE_03AD11:        PLB                       ; |
CODE_03AD12:        RTL                       ;/

;Check object length attributes
CODE_03AD13:        PHB                       ;\
CODE_03AD14:        PHK                       ; |
CODE_03AD15:        PLB                       ; |
CODE_03AD16:        JSR CODE_03ACB6           ; |Check if object is fixed or varied length
CODE_03AD19:        PLB                       ; |
CODE_03AD1A:        RTL                       ;/

;Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD1B:        PHB                       ;\
CODE_03AD1C:        PHK                       ; |
CODE_03AD1D:        PLB                       ; |
CODE_03AD1E:        JSR CODE_03ACE0           ; |Turn current screen x-coordinate (16x16) to pixel coordinate
CODE_03AD21:        PLB                       ; |
CODE_03AD22:        RTL                       ;/

;Get free sprite slot (begin-end)
CODE_03AD23:        PHB                       ;\
CODE_03AD24:        PHK                       ; |
CODE_03AD25:        PLB                       ; |
CODE_03AD26:        JSR CODE_03AA5E           ; |Jump to get free sprite slot
CODE_03AD29:        PLB                       ; |
CODE_03AD2A:        RTL                       ;/

DATA_03AD2B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF          ;Mysterious, Empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF

;Main operation mode
CODE_03AD60:        LDA $0772                 ;\
CODE_03AD63:        ASL A                     ; |Get "In-game modes"
CODE_03AD64:        TAX                       ; |
CODE_03AD65:        JMP (PNTR_03AD68,x)       ;/

PNTR_03AD68:        dw CODE_039E0C                          ;$00 Screen goes black
                    dw CODE_038C18                          ;$01 "Image before level" mode
                    dw CODE_039ED8                          ;$02 Pause timer, Sprites go disappear
                    dw CODE_03AD70                          ;$03 Normal mode

CODE_03AD70:        JSL CODE_05C860           ;
CODE_03AD74:        LDA $28                   ;
CODE_03AD76:        BNE CODE_03AD7B           ;
CODE_03AD78:        STZ $0E67                 ;
CODE_03AD7B:        LDX $0753                 ;
CODE_03AD7E:        LDA $0FF4,x               ;
CODE_03AD81:        STA $0FF4                 ;
CODE_03AD84:        JSR CODE_03AF21           ;
CODE_03AD87:        LDA $0772                 ;
CODE_03AD8A:        CMP #$03                  ;
CODE_03AD8C:        BCS CODE_03AD8F           ;
CODE_03AD8E:        RTS                       ;

CODE_03AD8F:        JSR CODE_03B680           ;
CODE_03AD92:        LDX #$00                  ;
CODE_03AD94:        STX $9E                   ;
CODE_03AD96:        LDA $0E67                 ;
CODE_03AD99:        BEQ CODE_03AD9F           ;
CODE_03AD9B:        CMP #$7F                  ;
CODE_03AD9D:        BEQ CODE_03ADBD           ;
CODE_03AD9F:        JSR CODE_03C3B0           ;
CODE_03ADA2:        LDA $0E67                 ;
CODE_03ADA5:        BNE CODE_03ADAA           ;
CODE_03ADA7:        JSR CODE_038B30           ;
CODE_03ADAA:        INX                       ;
CODE_03ADAB:        CPX #$0A                  ;
CODE_03ADAD:        BNE CODE_03AD94           ;
CODE_03ADAF:        JSL CODE_05D300           ;
CODE_03ADB3:        LDA $0E67                 ;
CODE_03ADB6:        BEQ CODE_03ADBD           ;
CODE_03ADB8:        LDA #$7F                  ;
CODE_03ADBA:        STA $0E67                 ;
CODE_03ADBD:        JSR CODE_03FD9C           ;
CODE_03ADC0:        JSR CODE_03FD13           ;
CODE_03ADC3:        JSR CODE_03F710           ;
CODE_03ADC6:        LDX #$01                  ;
CODE_03ADC8:        STX $9E                   ;
CODE_03ADCA:        JSR CODE_03C01F           ;
CODE_03ADCD:        DEX                       ;
CODE_03ADCE:        STX $9E                   ;
CODE_03ADD0:        JSR CODE_03C01F           ;
CODE_03ADD3:        JSR CODE_03C084           ;
CODE_03ADD6:        JSR CODE_03BCB9           ;
CODE_03ADD9:        JSR CODE_03BAA2           ;
CODE_03ADDC:        JSR CODE_03B84E           ;
CODE_03ADDF:        JSR CODE_03B8F5           ;
CODE_03ADE2:        JSR CODE_03B7DE           ;
CODE_03ADE5:        JSR CODE_039352           ;
CODE_03ADE8:        LDA $BB                   ;
CODE_03ADEA:        CMP #$02                  ;
CODE_03ADEC:        BPL CODE_03AE00           ;
CODE_03ADEE:        LDA $07AF                 ;
CODE_03ADF1:        BEQ CODE_03AE12           ;
CODE_03ADF3:        CMP #$04                  ;
CODE_03ADF5:        BNE CODE_03AE00           ;
CODE_03ADF7:        LDA $0787                 ;
CODE_03ADFA:        BNE CODE_03AE00           ;
CODE_03ADFC:        JSL CODE_05C8FB           ;
CODE_03AE00:        LDA $09                   ;
CODE_03AE02:        PHY                       ;
CODE_03AE03:        LDY $07AF                 ;
CODE_03AE06:        CPY #$08                  ;
CODE_03AE08:        BCS CODE_03AE0C           ;
CODE_03AE0A:        LSR A                     ;
CODE_03AE0B:        LSR A                     ;
CODE_03AE0C:        PLY                       ;
CODE_03AE0D:        JSR CODE_03B2C4           ;
CODE_03AE10:        BRA CODE_03AE26           ;

CODE_03AE12:        LDA $0787                 ;
CODE_03AE15:        CMP #$01                  ;
CODE_03AE17:        BNE CODE_03AE23           ;
CODE_03AE19:        LDA $0F                   ;
CODE_03AE1B:        CMP #$0C                  ;
CODE_03AE1D:        BEQ CODE_03AE23           ;
CODE_03AE1F:        JSL CODE_049A88           ;
CODE_03AE23:        JSR CODE_03B2FD           ;
CODE_03AE26:        LDA $0A                   ;
CODE_03AE28:        STA $0D                   ;
CODE_03AE2A:        STZ $0C                   ;
CODE_03AE2C:        LDA $0773                 ;
CODE_03AE2F:        CMP #$06                  ;
CODE_03AE31:        BEQ CODE_03AE4D           ;
CODE_03AE33:        LDA $071F                 ;
CODE_03AE36:        BNE CODE_03AE4A           ;
CODE_03AE38:        LDA $073D                 ;
CODE_03AE3B:        CMP #$20                  ;
CODE_03AE3D:        BMI CODE_03AE4D           ;
CODE_03AE3F:        LDA $073D                 ;
CODE_03AE42:        SBC #$20                  ;
CODE_03AE44:        STA $073D                 ;
CODE_03AE47:        STZ $1A00                 ;
CODE_03AE4A:        JSR CODE_03A295           ;
CODE_03AE4D:        RTS                       ;

CODE_03AE4E:        LDA $06FF                 ;
CODE_03AE51:        CLC                       ;
CODE_03AE52:        ADC $03A1                 ;
CODE_03AE55:        STA $06FF                 ;
CODE_03AE58:        LDA $0723                 ;
CODE_03AE5B:        BEQ CODE_03AE60           ;
CODE_03AE5D:        JMP CODE_03AED5           ;

CODE_03AE60:        LDA $0755                 ;
CODE_03AE63:        CMP #$50                  ;
CODE_03AE65:        BCC CODE_03AED5           ;
CODE_03AE67:        LDA $078D                 ;
CODE_03AE6A:        BNE CODE_03AED5           ;
CODE_03AE6C:        LDY $06FF                 ;
CODE_03AE6F:        DEY                       ;
CODE_03AE70:        BMI CODE_03AED5           ;
CODE_03AE72:        INY                       ;
CODE_03AE73:        CPY #$02                  ;
CODE_03AE75:        BCC CODE_03AE78           ;
CODE_03AE77:        DEY                       ;
CODE_03AE78:        LDA $0755                 ;
CODE_03AE7B:        CMP #$70                  ;
CODE_03AE7D:        BCC CODE_03AE82           ;
CODE_03AE7F:        LDY $06FF                 ;
CODE_03AE82:        TYA                       ;
CODE_03AE83:        STA $0775                 ;
CODE_03AE86:        CLC                       ;
CODE_03AE87:        ADC $073D                 ;
CODE_03AE8A:        STA $073D                 ;
CODE_03AE8D:        LDA $071C                 ;
CODE_03AE90:        STA $00                   ;
CODE_03AE92:        LDA $071A                 ;
CODE_03AE95:        STA $01                   ;
CODE_03AE97:        REP #$30                  ;
CODE_03AE99:        TYA                       ;
CODE_03AE9A:        AND #$00FF                ;
CODE_03AE9D:        CLC                       ;
CODE_03AE9E:        ADC $00                   ;
CODE_03AEA0:        STA $00                   ;
CODE_03AEA2:        LSR A                     ;
CODE_03AEA3:        STA $0EFD                 ;
CODE_03AEA6:        LSR A                     ;
CODE_03AEA7:        STA $0EEE                 ;
CODE_03AEAA:        SEP #$30                  ;
CODE_03AEAC:        LDA $00                   ;
CODE_03AEAE:        STA $071C                 ;
CODE_03AEB1:        STA $073F                 ;
CODE_03AEB4:        STA $42                   ;
CODE_03AEB6:        LDA $01                   ;
CODE_03AEB8:        STA $071A                 ;
CODE_03AEBB:        STA $43                   ;
CODE_03AEBD:        AND #$01                  ;
CODE_03AEBF:        STA $00                   ;
CODE_03AEC1:        LDA $0778                 ;
CODE_03AEC4:        AND #$FE                  ;
CODE_03AEC6:        ORA $00                   ;
CODE_03AEC8:        STA $0778                 ;
CODE_03AECB:        JSR CODE_03AF0F           ;
CODE_03AECE:        LDA #$08                  ;
CODE_03AED0:        STA $07A1                 ;
CODE_03AED3:        BRA CODE_03AED8           ;

CODE_03AED5:        STZ $0775                 ;
CODE_03AED8:        LDX #$00                  ;
CODE_03AEDA:        JSR CODE_03FE1E           ;
CODE_03AEDD:        STA $00                   ;
CODE_03AEDF:        LDY #$00                  ;
CODE_03AEE1:        ASL A                     ;
CODE_03AEE2:        BCS CODE_03AEEB           ;
CODE_03AEE4:        INY                       ;
CODE_03AEE5:        LDA $00                   ;
CODE_03AEE7:        AND #$20                  ;
CODE_03AEE9:        BEQ CODE_03AF05           ;
CODE_03AEEB:        LDA $071C,y               ;
CODE_03AEEE:        SEC                       ;
CODE_03AEEF:        SBC DATA_03AF0B,y               ;
CODE_03AEF2:        STA $0219                 ;
CODE_03AEF5:        LDA $071A,y               ;
CODE_03AEF8:        SBC #$00                  ;
CODE_03AEFA:        STA $78                   ;
CODE_03AEFC:        LDA $0C                   ;
CODE_03AEFE:        CMP DATA_03AF0D,y               ;
CODE_03AF01:        BEQ CODE_03AF05           ;
CODE_03AF03:        STZ $5D                   ;
CODE_03AF05:        LDA #$00                  ;
CODE_03AF07:        STA $03A1                 ;
CODE_03AF0A:        RTS                       ;

DATA_03AF0B:        db $00,$10

DATA_03AF0D:        db $01,$02

CODE_03AF0F:        LDA $071C                 ;
CODE_03AF12:        CLC                       ;
CODE_03AF13:        ADC #$FF                  ;
CODE_03AF15:        STA $071D                 ;
CODE_03AF18:        LDA $071A                 ;
CODE_03AF1B:        ADC #$00                  ;
CODE_03AF1D:        STA $071B                 ;
CODE_03AF20:        RTS                       ;

CODE_03AF21:        LDA $0F                   ;\
CODE_03AF23:        ASL A                     ; |Player actions
CODE_03AF24:        TAX                       ; |
CODE_03AF25:        JMP (PNTR_03AF28,x)       ;/

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
CODE_03AF42:        LDA $0752                 ;
CODE_03AF45:        CMP #$02                  ;
CODE_03AF47:        BEQ CODE_03AF85           ;
CODE_03AF49:        LDA #$00                  ;
CODE_03AF4B:        LDY $0237                 ;
CODE_03AF4E:        CPY #$30                  ;
CODE_03AF50:        BCS CODE_03AF55           ;
CODE_03AF52:        JMP CODE_03AFEA           ;

CODE_03AF55:        LDA $0710                 ;
CODE_03AF58:        CMP #$06                  ;
CODE_03AF5A:        BEQ CODE_03AF60           ;
CODE_03AF5C:        CMP #$07                  ;
CODE_03AF5E:        BNE CODE_03AFCF           ;
CODE_03AF60:        LDA $0256                 ;
CODE_03AF63:        AND #$F0                  ;
CODE_03AF65:        BEQ CODE_03AF6C           ;
CODE_03AF67:        LDA #$01                  ;
CODE_03AF69:        JMP CODE_03AFEA           ;

CODE_03AF6C:        JSR CODE_03B259           ;
CODE_03AF6F:        DEC $06DE                 ;
CODE_03AF72:        BNE CODE_03AFE5           ;
CODE_03AF74:        LDA #$01                  ;
CODE_03AF76:        STA $0E7F                 ;
CODE_03AF79:        STA $0E4F                 ;
CODE_03AF7C:        INC $0769                 ;
CODE_03AF7F:        INC $0760                 ;
CODE_03AF82:        JMP CODE_03B368           ;

CODE_03AF85:        LDA $0758                 ;
CODE_03AF88:        BNE CODE_03AFA6           ;
CODE_03AF8A:        LDA $0237                 ;
CODE_03AF8D:        CMP #$B0                  ;
CODE_03AF8F:        BNE CODE_03AF96           ;
CODE_03AF91:        LDA #$04                  ;\
CODE_03AF93:        STA $1600                 ;/Enter pipe/hurt sound
CODE_03AF96:        STA $0E4E                 ;
CODE_03AF99:        LDA #$FF                  ;
CODE_03AF9B:        JSR CODE_03B22B           ;
CODE_03AF9E:        LDA $0237                 ;
CODE_03AFA1:        CMP #$91                  ;
CODE_03AFA3:        BCC CODE_03AFCF           ;
CODE_03AFA5:        RTS                       ;

CODE_03AFA6:        LDA $0399                 ;
CODE_03AFA9:        CMP #$60                  ;
CODE_03AFAB:        BNE CODE_03AFE5           ;
CODE_03AFAD:        LDA $0237                 ;
CODE_03AFB0:        CMP #$99                  ;
CODE_03AFB2:        LDY #$00                  ;
CODE_03AFB4:        LDA #$01                  ;
CODE_03AFB6:        BCC CODE_03AFC2           ;
CODE_03AFB8:        LDA #$03                  ;
CODE_03AFBA:        STA $28                   ;
CODE_03AFBC:        INY                       ;
CODE_03AFBD:        LDA #$08                  ;
CODE_03AFBF:        STA $05B4                 ;
CODE_03AFC2:        STY $0716                 ;
CODE_03AFC5:        JSR CODE_03AFEA           ;
CODE_03AFC8:        LDA $0219                 ;
CODE_03AFCB:        CMP #$48                  ;
CODE_03AFCD:        BCC CODE_03AFE5           ;
CODE_03AFCF:        STZ $0E4E                 ;
CODE_03AFD2:        LDA #$08                  ;
CODE_03AFD4:        STA $0F                   ;
CODE_03AFD6:        LDA #$01                  ;
CODE_03AFD8:        STA $0202                 ;
CODE_03AFDB:        LSR A                     ;
CODE_03AFDC:        STA $0752                 ;
CODE_03AFDF:        STA $0716                 ;
CODE_03AFE2:        STA $0758                 ;
CODE_03AFE5:        RTS                       ;

DATA_03AFE6:        db $03,$FD

DATA_03AFE8:        db $00,$FF

CODE_03AFEA:        STA $0FF4                 ;
CODE_03AFED:        LDA #$01                  ;
CODE_03AFEF:        STA $0B7A                 ;
CODE_03AFF2:        BRA CODE_03AFF7           ;

;Player action - regular control routine
CODE_03AFF4:        STZ $0B7A                 ;
CODE_03AFF7:        LDA $0F                   ;
CODE_03AFF9:        CMP #$0B                  ;
CODE_03AFFB:        BEQ CODE_03B035           ;
CODE_03AFFD:        LDA $5C                   ;
CODE_03AFFF:        BNE CODE_03B010           ;
CODE_03B001:        LDY $BB                   ;
CODE_03B003:        DEY                       ;
CODE_03B004:        BNE CODE_03B00D           ;
CODE_03B006:        LDA $0237                 ;
CODE_03B009:        CMP #$D0                  ;
CODE_03B00B:        BCC CODE_03B010           ;
CODE_03B00D:        STZ $0FF4                 ;
CODE_03B010:        LDA $0FF4                 ;
CODE_03B013:        AND #$C0                  ;
CODE_03B015:        STA $0A                   ;
CODE_03B017:        LDA $0FF4                 ;
CODE_03B01A:        AND #$03                  ;
CODE_03B01C:        STA $0C                   ;
CODE_03B01E:        LDA $0FF4                 ;
CODE_03B021:        AND #$0C                  ;
CODE_03B023:        STA $0B                   ;
CODE_03B025:        AND #$04                  ;
CODE_03B027:        BEQ CODE_03B035           ;
CODE_03B029:        LDA $28                   ;
CODE_03B02B:        BNE CODE_03B035           ;
CODE_03B02D:        LDY $0C                   ;
CODE_03B02F:        BEQ CODE_03B035           ;
CODE_03B031:        STZ $0C                   ;
CODE_03B033:        STZ $0B                   ;
CODE_03B035:        LDA $700007               ;\
CODE_03B039:        BNE CODE_03B03E           ;/Branch if debug mode
CODE_03B03B:        JMP CODE_03B129           ;

CODE_03B03E:        PHX                       ;\
CODE_03B03F:        LDX $0EC3                 ; |
CODE_03B042:        LDA $0FF8,x               ; |Get controller input
CODE_03B045:        PLX                       ;/
CODE_03B046:        AND #$C0                  ;\ 
CODE_03B048:        BEQ CODE_03B060           ; |Skip if no input
CODE_03B04A:        AND #$80                  ; |
CODE_03B04C:        BEQ CODE_03B058           ;/ Branch if controller input is $40
CODE_03B04E:        STZ $0754                 ;Clear small player flag.  Controller input is $80
CODE_03B051:        LDA #$01                  ;\
CODE_03B053:        STA $0756                 ;/Set mushroom powerup
CODE_03B056:        BRA CODE_03B060           ;

CODE_03B058:        STZ $0754                 ;Clear small player flag
CODE_03B05B:        LDA #$02                  ;\
CODE_03B05D:        STA $0756                 ;/Set fireflower powerup
CODE_03B060:        LDA $0FF6                 ;\
CODE_03B063:        AND #$20                  ; |If select not pressed, branch
CODE_03B065:        BEQ CODE_03B075           ;/
CODE_03B067:        EOR $0E73                 ;\ Select pressed.
CODE_03B06A:        STA $0E73                 ; | Pass through objects debug mode flag
CODE_03B06D:        LSR A                     ; |
CODE_03B06E:        LSR A                     ; |
CODE_03B06F:        LSR A                     ; |
CODE_03B070:        LSR A                     ; |
CODE_03B071:        LSR A                     ;/
CODE_03B072:        STA $0716                 ;Disable collision detection
CODE_03B075:        LDA $0E73                 ;
CODE_03B078:        BNE CODE_03B07D           ;
CODE_03B07A:        JMP CODE_03B129           ;

CODE_03B07D:        LDA #$10                  ;
CODE_03B07F:        STA $07AF                 ;
CODE_03B082:        PHX                       ;
CODE_03B083:        LDX $0753                 ;
CODE_03B086:        LDA $0FF8,x               ;
CODE_03B089:        PLX                       ;
CODE_03B08A:        AND #$10                  ;
CODE_03B08C:        BEQ CODE_03B0CD           ;
CODE_03B08E:        LDA $09                   ;
CODE_03B090:        AND #$07                  ;
CODE_03B092:        BNE CODE_03B0CD           ;
CODE_03B094:        LDA $0FF4                 ;
CODE_03B097:        LSR A                     ;
CODE_03B098:        BCS CODE_03B0A6           ;
CODE_03B09A:        LSR A                     ;
CODE_03B09B:        BCS CODE_03B0B4           ;
CODE_03B09D:        LSR A                     ;
CODE_03B09E:        BCS CODE_03B0CA           ;
CODE_03B0A0:        LSR A                     ;
CODE_03B0A1:        BCS CODE_03B0C3           ;
CODE_03B0A3:        JMP CODE_03B12C           ;

CODE_03B0A6:        LDA #$09                  ;
CODE_03B0A8:        STA $07EA                 ;
CODE_03B0AB:        STA $07EB                 ;
CODE_03B0AE:        STA $07E9                 ;
CODE_03B0B1:        JMP CODE_03B12C           ;

CODE_03B0B4:        STZ $07EA                 ;
CODE_03B0B7:        STZ $07EB                 ;
CODE_03B0BA:        STZ $07E9                 ;
CODE_03B0BD:        STZ $0E73                 ;
CODE_03B0C0:        JMP CODE_03B12C           ;

CODE_03B0C3:        JSL CODE_048596           ;Increase lives by one
CODE_03B0C7:        JMP CODE_03B12C           ;

CODE_03B0CA:        JMP CODE_03B12C           ;

CODE_03B0CD:        LDA $09                   ;
CODE_03B0CF:        AND #$07                  ;
CODE_03B0D1:        BNE CODE_03B0EE           ;
CODE_03B0D3:        LDA $0FF4                 ;
CODE_03B0D6:        AND #$80                  ;
CODE_03B0D8:        BEQ CODE_03B0EE           ;
CODE_03B0DA:        LDA $0754                 ;
CODE_03B0DD:        EOR #$01                  ;
CODE_03B0DF:        STA $0754                 ;
CODE_03B0E2:        LDA $0756                 ;
CODE_03B0E5:        EOR #$02                  ;
CODE_03B0E7:        STA $0756                 ;
CODE_03B0EA:        JSL CODE_049A88           ;
CODE_03B0EE:        LDA $0FF4                 ;
CODE_03B0F1:        AND #$03                  ;
CODE_03B0F3:        BEQ CODE_03B10C           ;
CODE_03B0F5:        TAY                       ;
CODE_03B0F6:        LDA $0C                   ;
CODE_03B0F8:        STA $0202                 ;
CODE_03B0FB:        LDA $0219                 ;
CODE_03B0FE:        CLC                       ;
CODE_03B0FF:        ADC DATA_03AFE6-1,y       ;
CODE_03B102:        STA $0219                 ;
CODE_03B105:        LDA $78                   ;
CODE_03B107:        ADC DATA_03AFE8-1,y       ;
CODE_03B10A:        STA $78                   ;
CODE_03B10C:        LDA $0FF4                 ;
CODE_03B10F:        AND #$0C                  ;
CODE_03B111:        BEQ CODE_03B12C           ;
CODE_03B113:        LSR A                     ;
CODE_03B114:        LSR A                     ;
CODE_03B115:        TAY                       ;
CODE_03B116:        LDA $0237                 ;
CODE_03B119:        CLC                       ;
CODE_03B11A:        ADC DATA_03AFE6-1,y       ;
CODE_03B11D:        STA $0237                 ;
CODE_03B120:        LDA $BB                   ;
CODE_03B122:        ADC DATA_03AFE8-1,y       ;
CODE_03B125:        STA $BB                   ;
CODE_03B127:        BRA CODE_03B12C           ;

CODE_03B129:        JSR CODE_03B373           ;
CODE_03B12C:        LDY #$01                  ;
CODE_03B12E:        LDA $0754                 ;
CODE_03B131:        BNE CODE_03B13C           ;
CODE_03B133:        LDY #$00                  ;
CODE_03B135:        LDA $0714                 ;
CODE_03B138:        BEQ CODE_03B13C           ;
CODE_03B13A:        LDY #$02                  ;
CODE_03B13C:        STY $048F                 ;
CODE_03B13F:        LDA #$01                  ;
CODE_03B141:        LDY $5D                   ;
CODE_03B143:        BEQ CODE_03B14A           ;
CODE_03B145:        BPL CODE_03B148           ;
CODE_03B147:        ASL A                     ;
CODE_03B148:        STA $46                   ;
CODE_03B14A:        JSR CODE_03AE4E           ;
CODE_03B14D:        JSR CODE_03FD9C           ;
CODE_03B150:        JSR CODE_03FD13           ;
CODE_03B153:        LDX #$00                  ;
CODE_03B155:        JSR CODE_03EA2D           ;
CODE_03B158:        JSR CODE_03E309           ;
CODE_03B15B:        LDA $0237                 ;
CODE_03B15E:        CMP #$40                  ;
CODE_03B160:        BCC CODE_03B189           ;
CODE_03B162:        LDA $0F                   ;
CODE_03B164:        CMP #$05                  ;
CODE_03B166:        BEQ CODE_03B189           ;
CODE_03B168:        CMP #$07                  ;
CODE_03B16A:        BEQ CODE_03B189           ;
CODE_03B16C:        CMP #$04                  ;
CODE_03B16E:        BCC CODE_03B189           ;
CODE_03B170:        LDA $0F                   ;
CODE_03B172:        CMP #$0B                  ;
CODE_03B174:        BNE CODE_03B17F           ;
CODE_03B176:        LDA $0256                 ;
CODE_03B179:        AND #$CE                  ;
CODE_03B17B:        ORA #$30                  ;
CODE_03B17D:        BRA CODE_03B186           ;

CODE_03B17F:        LDA $0256                 ;
CODE_03B182:        AND #$CE                  ;
CODE_03B184:        ORA #$20                  ;
CODE_03B186:        STA $0256                 ;
CODE_03B189:        LDA $BB                   ;
CODE_03B18B:        CMP #$02                  ;
CODE_03B18D:        BMI CODE_03B1D8           ;
CODE_03B18F:        LDX #$01                  ;
CODE_03B191:        STX $0723                 ;
CODE_03B194:        LDY #$04                  ;
CODE_03B196:        STY $07                   ;
CODE_03B198:        LDX #$00                  ;
CODE_03B19A:        LDY $0759                 ;
CODE_03B19D:        BNE CODE_03B1A4           ;
CODE_03B19F:        LDY $0743                 ;
CODE_03B1A2:        BNE CODE_03B1C8           ;
CODE_03B1A4:        INX                       ;
CODE_03B1A5:        LDY $0F                   ;
CODE_03B1A7:        CPY #$0B                  ;
CODE_03B1A9:        BEQ CODE_03B1C8           ;
CODE_03B1AB:        LDY $0712                 ;
CODE_03B1AE:        BNE CODE_03B1C4           ;
CODE_03B1B0:        INY                       ;
CODE_03B1B1:        STY $0712                 ;
CODE_03B1B4:        LDY #$09                  ;\Mario died music
CODE_03B1B6:        STY $1602                 ;/
CODE_03B1B9:        STA $0E67                 ;
CODE_03B1BC:        LDA #$01                  ;\Set Small Mario flag
CODE_03B1BE:        STA $0754                 ;/
CODE_03B1C1:        STZ $0756                 ;Small Mario powrup
CODE_03B1C4:        LDY #$06                  ;
CODE_03B1C6:        STY $07                   ;
CODE_03B1C8:        CMP $07                   ;
CODE_03B1CA:        BMI CODE_03B1D8           ;
CODE_03B1CC:        DEX                       ;
CODE_03B1CD:        BMI CODE_03B1D9           ;
CODE_03B1CF:        LDY $07B1                 ;
CODE_03B1D2:        BNE CODE_03B1D8           ;
CODE_03B1D4:        LDA #$06                  ;\Set game mode: Fade out to image before level
CODE_03B1D6:        STA $0F                   ;/
CODE_03B1D8:        RTS                       ;

CODE_03B1D9:        STZ $0758                 ;
CODE_03B1DC:        JSR CODE_03B1FD           ;
CODE_03B1DF:        INC $0752                 ;
CODE_03B1E2:        RTS                       ;

;Player action - autoclimb vine
CODE_03B1E3:        LDA $BB                   ;
CODE_03B1E5:        BNE CODE_03B1EE           ;
CODE_03B1E7:        LDA $0237                 ;
CODE_03B1EA:        CMP #$E4                  ;
CODE_03B1EC:        BCC CODE_03B1FD           ;
CODE_03B1EE:        LDA #$08                  ;
CODE_03B1F0:        STA $0758                 ;
CODE_03B1F3:        STA $0E67                 ;
CODE_03B1F6:        LDY #$03                  ;
CODE_03B1F8:        STY $28                   ;
CODE_03B1FA:        JMP CODE_03AFEA           ;

CODE_03B1FD:        LDA #$02                  ;
CODE_03B1FF:        STA $0752                 ;
CODE_03B202:        JMP CODE_03B248           ;

;Player action - enter pipe normally
CODE_03B205:        LDA #$01                  ;
CODE_03B207:        STA $0E4F                 ;
CODE_03B20A:        STA $0218                 ;
CODE_03B20D:        LDA $09                   ;
CODE_03B20F:        LSR A                     ;
CODE_03B210:        BCC CODE_03B217           ;
CODE_03B212:        LDA #$01                  ;
CODE_03B214:        JSR CODE_03B22B           ;
CODE_03B217:        JSR CODE_03AE4E           ;
CODE_03B21A:        LDY #$00                  ;
CODE_03B21C:        LDA $06D6                 ;
CODE_03B21F:        BNE CODE_03B240           ;
CODE_03B221:        INY                       ;
CODE_03B222:        LDA $5C                   ;
CODE_03B224:        CMP #$03                  ;
CODE_03B226:        BNE CODE_03B240           ;
CODE_03B228:        INY                       ;
CODE_03B229:        BRA CODE_03B240           ;

CODE_03B22B:        CLC                       ;
CODE_03B22C:        ADC $0237                 ;
CODE_03B22F:        STA $0237                 ;
CODE_03B232:        RTS                       ;

;Player action - enter pipe from the side
CODE_03B233:        LDA #$01                  ;
CODE_03B235:        STA $0E67                 ;
CODE_03B238:        STA $0E4F                 ;
CODE_03B23B:        JSR CODE_03B259           ;
CODE_03B23E:        LDY #$02                  ;
CODE_03B240:        DEC $06DE                 ;
CODE_03B243:        BNE CODE_03B258           ;
CODE_03B245:        STY $0752                 ;
CODE_03B248:        LDA #$01                  ;
CODE_03B24A:        STA $0E7F                 ;
CODE_03B24D:        STA $0E67                 ;
CODE_03B250:        LDA #$00                  ;
CODE_03B252:        STA $0772                 ;
CODE_03B255:        STA $0722                 ;
CODE_03B258:        RTS                       ;

CODE_03B259:        LDA #$08                  ;
CODE_03B25B:        STA $5D                   ;
CODE_03B25D:        LDY #$01                  ;
CODE_03B25F:        LDA $0219                 ;
CODE_03B262:        AND #$0F                  ;
CODE_03B264:        BNE CODE_03B269           ;
CODE_03B266:        STA $5D                   ;
CODE_03B268:        TAY                       ;
CODE_03B269:        TYA                       ;
CODE_03B26A:        JSR CODE_03AFEA           ;
CODE_03B26D:        RTS                       ;

;Player action - Player changes size
CODE_03B26E:        LDA $0747                 ;
CODE_03B271:        CMP #$F8                  ;
CODE_03B273:        BNE CODE_03B278           ;
CODE_03B275:        JMP CODE_03B290           ;

CODE_03B278:        CMP #$C4                  ;
CODE_03B27A:        BNE CODE_03B27F           ;
CODE_03B27C:        JSR CODE_03B2AE           ;
CODE_03B27F:        RTS                       ;

;Player action - player has injury invincibility
CODE_03B280:        LDA $0747                 ;
CODE_03B283:        CMP #$F0                  ;
CODE_03B285:        BCS CODE_03B28E           ;
CODE_03B287:        CMP #$C8                  ;
CODE_03B289:        BEQ CODE_03B2AE           ;
CODE_03B28B:        JMP CODE_03AFF4           ;

CODE_03B28E:        BNE CODE_03B2A3           ;
CODE_03B290:        LDY $070B                 ;
CODE_03B293:        BNE CODE_03B2A3           ;
CODE_03B295:        STY $070D                 ;
CODE_03B298:        INC $070B                 ;
CODE_03B29B:        LDA $0754                 ;
CODE_03B29E:        EOR #$01                  ;
CODE_03B2A0:        STA $0754                 ;
CODE_03B2A3:        RTS                       ;

;Player action - player dies
CODE_03B2A4:        LDA $0747                 ;
CODE_03B2A7:        CMP #$F0                  ;
CODE_03B2A9:        BCS CODE_03B308           ;
CODE_03B2AB:        JMP CODE_03AFF4           ;

CODE_03B2AE:        STZ $0747                 ;
CODE_03B2B1:        JSL CODE_049A88           ;
CODE_03B2B5:        LDA #$08                  ;
CODE_03B2B7:        STA $0F                   ;
CODE_03B2B9:        RTS                       ;

;Player action - player obtains fireflower
CODE_03B2BA:        LDA $0747                 ;
CODE_03B2BD:        CMP #$C0                  ;
CODE_03B2BF:        BEQ CODE_03B2FA           ;
CODE_03B2C1:        EOR #$FF                  ;
CODE_03B2C3:        ASL A                     ;
CODE_03B2C4:        ASL A                     ;
CODE_03B2C5:        ASL A                     ;
CODE_03B2C6:        ASL A                     ;
CODE_03B2C7:        PHY                       ;
CODE_03B2C8:        PHX                       ;
CODE_03B2C9:        REP #$30                  ;
CODE_03B2CB:        AND #$0060                ;
CODE_03B2CE:        TAX                       ;
CODE_03B2CF:        LDA $0753                 ;
CODE_03B2D2:        AND #$00FF                ;
CODE_03B2D5:        BEQ CODE_03B2DD           ;
CODE_03B2D7:        TXA                       ;
CODE_03B2D8:        CLC                       ;
CODE_03B2D9:        ADC #$0020                ;
CODE_03B2DC:        TAX                       ;
CODE_03B2DD:        LDY #$01E0                ;
CODE_03B2E0:        LDA $05ED40,x             ;
CODE_03B2E4:        STA $1000,y               ;
CODE_03B2E7:        INX                       ;
CODE_03B2E8:        INX                       ;
CODE_03B2E9:        INY                       ;
CODE_03B2EA:        INY                       ;
CODE_03B2EB:        CPY #$0200                ;
CODE_03B2EE:        BNE CODE_03B2E0           ;
CODE_03B2F0:        SEP #$30                  ;
CODE_03B2F2:        PLX                       ;
CODE_03B2F3:        PLY                       ;
CODE_03B2F4:        LDA #$01                  ;
CODE_03B2F6:        STA $1200                 ;
CODE_03B2F9:        RTS                       ;

CODE_03B2FA:        JSR CODE_03B2AE           ;
CODE_03B2FD:        LDA $0256                 ;
CODE_03B300:        AND #$F1                  ;
CODE_03B302:        ORA #$0E                  ;
CODE_03B304:        STA $0256                 ;
CODE_03B307:        RTS                       ;

CODE_03B308:        RTS                       ;

;Player action - slide on flagpole
CODE_03B309:        LDA $21                   ;
CODE_03B30B:        CMP #$30                  ;
CODE_03B30D:        BNE CODE_03B320           ;
CODE_03B30F:        LDA #$00                  ;
CODE_03B311:        STA $0713                 ;
CODE_03B314:        LDY $0237                 ;
CODE_03B317:        CPY #$9E                  ;
CODE_03B319:        BCS CODE_03B31D           ;
CODE_03B31B:        LDA #$04                  ;
CODE_03B31D:        JMP CODE_03AFEA           ;

CODE_03B320:        INC $0F                   ;
CODE_03B322:        RTS                       ;

DATA_03B323:        db $15,$23,$16,$1B,$17,$18,$23,$63

;Player action - Player ends level (where he fades out and stuff)
CODE_03B32B:        JSL CODE_05CBE5           ;
CODE_03B32F:        BEQ CODE_03B340           ;
CODE_03B331:        LDA #$01                  ;
CODE_03B333:        JSR CODE_03AFEA           ;
CODE_03B336:        LDA $0237                 ;
CODE_03B339:        CMP #$AE                  ;
CODE_03B33B:        BCC CODE_03B340           ;
CODE_03B33D:        STZ $0723                 ;
CODE_03B340:        LDA $0746                 ;
CODE_03B343:        CMP #$05                  ;
CODE_03B345:        BNE CODE_03B372           ;
CODE_03B347:        INC $075C                 ;
CODE_03B34A:        LDA $075C                 ;
CODE_03B34D:        CMP #$03                  ;
CODE_03B34F:        BNE CODE_03B35F           ;
CODE_03B351:        LDY $075F                 ;
CODE_03B354:        LDA $0748                 ;
CODE_03B357:        CMP DATA_03B323,y               ;
CODE_03B35A:        BCC CODE_03B35F           ;
CODE_03B35C:        INC $075D                 ;Enable hidden 1-up flag
CODE_03B35F:        INC $0760                 ;
CODE_03B362:        STZ $075B                 ;
CODE_03B365:        JSR CODE_03A22B           ;
CODE_03B368:        JSL CODE_04C00B           ;
CODE_03B36C:        INC $0757                 ;
CODE_03B36F:        JSR CODE_03B248           ;
CODE_03B372:        RTS                       ;

CODE_03B373:        LDA #$00                  ;
CODE_03B375:        LDY $0754                 ;
CODE_03B378:        BNE CODE_03B382           ;
CODE_03B37A:        LDA $28                   ;
CODE_03B37C:        BNE CODE_03B385           ;
CODE_03B37E:        LDA $0B                   ;
CODE_03B380:        AND #$04                  ;
CODE_03B382:        STA $0714                 ;
CODE_03B385:        JSR CODE_03B4AD           ;
CODE_03B388:        LDA $070B                 ;
CODE_03B38B:        BNE CODE_03B3A5           ;
CODE_03B38D:        LDA $28                   ;
CODE_03B38F:        CMP #$03                  ;
CODE_03B391:        BEQ CODE_03B398           ;
CODE_03B393:        LDY #$18                  ;
CODE_03B395:        STY $0791                 ;
CODE_03B398:        ASL A                     ;
CODE_03B399:        TAX                       ;
CODE_03B39A:        JMP (PNTR_03B39D,x)       ;

PNTR_03B39D:        dw CODE_03B3A6
                    dw CODE_03B3C3
                    dw CODE_03B3BA
                    dw CODE_03B41F

CODE_03B3A5:        RTS

CODE_03B3A6:        JSR CODE_03B5F0
CODE_03B3A9:        LDA $0C                   ;
CODE_03B3AB:        BEQ CODE_03B3B0           ;
CODE_03B3AD:        STA $0202                 ;
CODE_03B3B0:        JSR CODE_03B62B           ;
CODE_03B3B3:        JSR CODE_03C0B4           ;
CODE_03B3B6:        STA $06FF                 ;
CODE_03B3B9:        RTS                       ;

CODE_03B3BA:        LDA $070A                 ;
CODE_03B3BD:        STA $0709                 ;
CODE_03B3C0:        JMP CODE_03B3FC           ;

CODE_03B3C3:        LDY $A0                   ;
CODE_03B3C5:        BPL CODE_03B3DB           ;
CODE_03B3C7:        LDA $0A                   ;
CODE_03B3C9:        AND #$80                  ;
CODE_03B3CB:        AND $0D                   ;
CODE_03B3CD:        BNE CODE_03B3E1           ;
CODE_03B3CF:        LDA $0708                 ;
CODE_03B3D2:        SEC                       ;
CODE_03B3D3:        SBC $0237                 ;
CODE_03B3D6:        CMP $0706                 ;
CODE_03B3D9:        BCC CODE_03B3E1           ;
CODE_03B3DB:        LDA $070A                 ;
CODE_03B3DE:        STA $0709                 ;
CODE_03B3E1:        LDA $0704                 ;
CODE_03B3E4:        BEQ CODE_03B3FC           ;
CODE_03B3E6:        JSR CODE_03B5F0           ;
CODE_03B3E9:        LDA $0237                 ;
CODE_03B3EC:        CMP #$14                  ;
CODE_03B3EE:        BCS CODE_03B3F5           ;
CODE_03B3F0:        LDA #$18                  ;
CODE_03B3F2:        STA $0709                 ;
CODE_03B3F5:        LDA $0C                   ;
CODE_03B3F7:        BEQ CODE_03B3FC           ;
CODE_03B3F9:        STA $0202                 ;
CODE_03B3FC:        LDA $0C                   ;
CODE_03B3FE:        BEQ CODE_03B403           ;
CODE_03B400:        JSR CODE_03B62B           ;
CODE_03B403:        JSR CODE_03C0B4           ;
CODE_03B406:        STA $06FF                 ;
CODE_03B409:        LDA $0F                   ;\
CODE_03B40B:        CMP #$0B                  ; |If Mario is not dying
CODE_03B40D:        BNE CODE_03B414           ;/ 
CODE_03B40F:        LDA #$28                  ;
CODE_03B411:        STA $0709                 ;
CODE_03B414:        JMP CODE_03C0FD           ;

DATA_03B417:        db $0E,$04,$FC,$F2
DATA_03B41B:        db $00,$00,$FF,$FF

CODE_03B41F:        LDA $041C                 ;
CODE_03B422:        CLC                       ;
CODE_03B423:        ADC $043C                 ;
CODE_03B426:        STA $041C                 ;
CODE_03B429:        LDY #$00                  ;
CODE_03B42B:        LDA $A0                   ;
CODE_03B42D:        BPL CODE_03B430           ;
CODE_03B42F:        DEY                       ;
CODE_03B430:        STY $00                   ;
CODE_03B432:        ADC $0237                 ;
CODE_03B435:        STA $0237                 ;
CODE_03B438:        LDA $BB                   ;
CODE_03B43A:        ADC $00                   ;
CODE_03B43C:        STA $BB                   ;
CODE_03B43E:        LDA $0C                   ;
CODE_03B440:        AND $0480                 ;
CODE_03B443:        BEQ CODE_03B47D           ;
CODE_03B445:        LDY $0791                 ;
CODE_03B448:        BNE CODE_03B47C           ;
CODE_03B44A:        LDY #$18                  ;
CODE_03B44C:        STY $0791                 ;
CODE_03B44F:        LDX #$00                  ;
CODE_03B451:        LDY $0202                 ;
CODE_03B454:        LSR A                     ;
CODE_03B455:        BCS CODE_03B460           ;
CODE_03B457:        LDA $03AD                 ;
CODE_03B45A:        CMP #$10                  ;
CODE_03B45C:        BCC CODE_03B47C           ;
CODE_03B45E:        INX                       ;
CODE_03B45F:        INX                       ;
CODE_03B460:        DEY                       ;
CODE_03B461:        BEQ CODE_03B464           ;
CODE_03B463:        INX                       ;
CODE_03B464:        LDA $0219                 ;
CODE_03B467:        CLC                       ;
CODE_03B468:        ADC DATA_03B417,x               ;
CODE_03B46B:        STA $0219                 ;
CODE_03B46E:        LDA $78                   ;
CODE_03B470:        ADC DATA_03B41B,x               ;
CODE_03B473:        STA $78                   ;
CODE_03B475:        LDA $0C                   ;
CODE_03B477:        EOR #$03                  ;
CODE_03B479:        STA $0202                 ;
CODE_03B47C:        RTS                       ;

CODE_03B47D:        STA $0791                 ;
CODE_03B480:        RTS                       ;

DATA_03B481:        db $20,$20,$1E,$28,$28,$0D,$04

DATA_03B488:        db $70,$70,$60,$90,$90,$0A,$09

DATA_03B48F:        db $FC,$FC,$FC,$FB,$FB,$FE,$FF

DATA_03B496:        db $00,$00,$00,$00,$00,$80,$00

DATA_03B49D:        db $D8,$E8,$F0

DATA_03B4A0:        db $28,$18,$10,$0C

DATA_03B4A4:        db $E4,$98,$D0

DATA_03B4A7:        db $00,$FF,$01

DATA_03B4AA:        db $00,$20,$FF

CODE_03B4AD:        LDA $28                   ;
CODE_03B4AF:        CMP #$03                  ;
CODE_03B4B1:        BNE CODE_03B4E3           ;
CODE_03B4B3:        LDY #$00                  ;
CODE_03B4B5:        LDA $0B                   ;
CODE_03B4B7:        AND $0480                 ;
CODE_03B4BA:        BEQ CODE_03B4CF           ;
CODE_03B4BC:        INY                       ;
CODE_03B4BD:        AND #$08                  ;
CODE_03B4BF:        BEQ CODE_03B4CE           ;
CODE_03B4C1:        LDA $09                   ;\
CODE_03B4C3:        AND #$07                  ; |
CODE_03B4C5:        BNE CODE_03B4CF           ; |Each 7 frames,
CODE_03B4C7:        LDA #$30                  ; |
CODE_03B4C9:        STA $1600                 ;/Mario is climbing vine sound plays.
CODE_03B4CC:        BRA CODE_03B4CF           ;

CODE_03B4CE:        INY                       ;
CODE_03B4CF:        LDX DATA_03B4AA,y         ;
CODE_03B4D2:        STX $043C                 ;
CODE_03B4D5:        LDA #$08                  ;
CODE_03B4D7:        LDX DATA_03B4A7,y         ;
CODE_03B4DA:        STX $A0                   ;
CODE_03B4DC:        BMI CODE_03B4DF           ;
CODE_03B4DE:        LSR A                     ;
CODE_03B4DF:        STA $070C                 ;
CODE_03B4E2:        RTS                       ;

CODE_03B4E3:        LDA $070E                 ;
CODE_03B4E6:        BNE CODE_03B4F2           ;
CODE_03B4E8:        LDA $0A                   ;
CODE_03B4EA:        AND #$80                  ;
CODE_03B4EC:        BEQ CODE_03B4F2           ;
CODE_03B4EE:        AND $0D                   ;
CODE_03B4F0:        BEQ CODE_03B4F5           ;
CODE_03B4F2:        JMP CODE_03B580           ;

CODE_03B4F5:        LDA $28                   ;
CODE_03B4F7:        BEQ CODE_03B50A           ;
CODE_03B4F9:        LDA $0704                 ;
CODE_03B4FC:        BEQ CODE_03B4F2           ;
CODE_03B4FE:        LDA $078A                 ;
CODE_03B501:        BNE CODE_03B50A           ;
CODE_03B503:        LDA $A0                   ;
CODE_03B505:        BPL CODE_03B50A           ;
CODE_03B507:        JMP CODE_03B580           ;

CODE_03B50A:        LDA #$20                  ;
CODE_03B50C:        STA $078A                 ;
CODE_03B50F:        LDY #$00                  ;
CODE_03B511:        STY $041C                 ;
CODE_03B514:        STY $043C                 ;
CODE_03B517:        LDA $BB                   ;
CODE_03B519:        STA $0707                 ;
CODE_03B51C:        LDA $0237                 ;
CODE_03B51F:        STA $0708                 ;
CODE_03B522:        LDA #$01                  ;
CODE_03B524:        STA $28                   ;
CODE_03B526:        LDA $0700                 ;
CODE_03B529:        CMP #$09                  ;
CODE_03B52B:        BCC CODE_03B53D           ;
CODE_03B52D:        INY                       ;
CODE_03B52E:        CMP #$10                  ;
CODE_03B530:        BCC CODE_03B53D           ;
CODE_03B532:        INY                       ;
CODE_03B533:        CMP #$19                  ;
CODE_03B535:        BCC CODE_03B53D           ;
CODE_03B537:        INY                       ;
CODE_03B538:        CMP #$1C                  ;
CODE_03B53A:        BCC CODE_03B53D           ;
CODE_03B53C:        INY                       ;
CODE_03B53D:        LDA #$01                  ;
CODE_03B53F:        STA $0706                 ;
CODE_03B542:        LDA $0704                 ;
CODE_03B545:        BEQ CODE_03B54F           ;
CODE_03B547:        LDY #$05                  ;
CODE_03B549:        LDA $027D                 ;
CODE_03B54C:        BEQ CODE_03B54F           ;
CODE_03B54E:        INY                       ;
CODE_03B54F:        LDA DATA_03B481,y               ;
CODE_03B552:        STA $0709                 ;
CODE_03B555:        LDA DATA_03B488,y               ;
CODE_03B558:        STA $070A                 ;
CODE_03B55B:        LDA DATA_03B496,y               ;
CODE_03B55E:        STA $043C                 ;
CODE_03B561:        LDA DATA_03B48F,y               ;
CODE_03B564:        STA $A0                   ;
CODE_03B566:        LDA $0704                 ;
CODE_03B569:        BEQ CODE_03B57B           ;
CODE_03B56B:        LDA #$0E                  ;\Mario is swimming sound
CODE_03B56D:        STA $1600                 ;/
CODE_03B570:        LDA $0237                 ;
CODE_03B573:        CMP #$14                  ;
CODE_03B575:        BCS CODE_03B580           ;
CODE_03B577:        STZ $A0                   ;
CODE_03B579:        BRA CODE_03B580           ;

CODE_03B57B:        LDA #$01                  ;\Mario is jumping sound
CODE_03B57D:        STA $1601                 ;/
CODE_03B580:        LDY #$00                  ;
CODE_03B582:        STY $00                   ;
CODE_03B584:        LDA $28                   ;
CODE_03B586:        BEQ CODE_03B591           ;
CODE_03B588:        LDA $0700                 ;
CODE_03B58B:        CMP #$19                  ;
CODE_03B58D:        BCS CODE_03B5C0           ;
CODE_03B58F:        BCC CODE_03B5A8           ;
CODE_03B591:        INY                       ;
CODE_03B592:        LDA $5C                   ;
CODE_03B594:        BEQ CODE_03B5A8           ;
CODE_03B596:        DEY                       ;
CODE_03B597:        LDA $0C                   ;
CODE_03B599:        CMP $46                   ;
CODE_03B59B:        BNE CODE_03B5A8           ;
CODE_03B59D:        LDA $0A                   ;
CODE_03B59F:        AND #$40                  ;
CODE_03B5A1:        BNE CODE_03B5BB           ;
CODE_03B5A3:        LDA $078B                 ;
CODE_03B5A6:        BNE CODE_03B5C0           ;
CODE_03B5A8:        INY                       ;
CODE_03B5A9:        INC $00                   ;
CODE_03B5AB:        LDA $0703                 ;
CODE_03B5AE:        BNE CODE_03B5B7           ;
CODE_03B5B0:        LDA $0700                 ;
CODE_03B5B3:        CMP #$21                  ;
CODE_03B5B5:        BCC CODE_03B5C0           ;
CODE_03B5B7:        INC $00                   ;
CODE_03B5B9:        BRA CODE_03B5C0           ;

CODE_03B5BB:        LDA #$0A                  ;
CODE_03B5BD:        STA $078B                 ;
CODE_03B5C0:        LDA DATA_03B49D,y               ;
CODE_03B5C3:        STA $045D                 ;
CODE_03B5C6:        LDA $0F                   ;
CODE_03B5C8:        CMP #$07                  ;
CODE_03B5CA:        BNE CODE_03B5CE           ;
CODE_03B5CC:        LDY #$03                  ;
CODE_03B5CE:        LDA DATA_03B4A0,y               ;
CODE_03B5D1:        STA $0463                 ;
CODE_03B5D4:        LDY $00                   ;
CODE_03B5D6:        LDA DATA_03B4A4,y               ;
CODE_03B5D9:        STA $0702                 ;
CODE_03B5DC:        STZ $0701                 ;
CODE_03B5DF:        LDA $0202                 ;
CODE_03B5E2:        CMP $46                   ;
CODE_03B5E4:        BEQ CODE_03B5EC           ;
CODE_03B5E6:        ASL $0702                 ;
CODE_03B5E9:        ROL $0701                 ;
CODE_03B5EC:        RTS                       ;

DATA_03B5ED:        db $02,$04,$07

CODE_03B5F0:        LDY #$00                  ;
CODE_03B5F2:        LDA $0700                 ;
CODE_03B5F5:        CMP #$1C                  ;
CODE_03B5F7:        BCS CODE_03B60E           ;
CODE_03B5F9:        INY                       ;
CODE_03B5FA:        CMP #$0E                  ;
CODE_03B5FC:        BCS CODE_03B5FF           ;
CODE_03B5FE:        INY                       ;
CODE_03B5FF:        LDA $0FF4                 ;
CODE_03B602:        AND #$7F                  ;
CODE_03B604:        BEQ CODE_03B624           ;
CODE_03B606:        AND #$03                  ;
CODE_03B608:        CMP $46                   ;
CODE_03B60A:        BNE CODE_03B613           ;
CODE_03B60C:        LDA #$00                  ;
CODE_03B60E:        STA $0703                 ;
CODE_03B611:        BRA CODE_03B624           ;

CODE_03B613:        LDA $0700                 ;
CODE_03B616:        CMP #$0B                  ;
CODE_03B618:        BCS CODE_03B624           ;
CODE_03B61A:        LDA $0202                 ;
CODE_03B61D:        STA $46                   ;
CODE_03B61F:        STZ $5D                   ;
CODE_03B621:        STZ $0705                 ;
CODE_03B624:        LDA DATA_03B5ED,y               ;
CODE_03B627:        STA $070C                 ;
CODE_03B62A:        RTS                       ;

CODE_03B62B:        AND $0480                 ;
CODE_03B62E:        BNE CODE_03B638           ;
CODE_03B630:        LDA $5D                   ;
CODE_03B632:        BEQ CODE_03B67C           ;
CODE_03B634:        BPL CODE_03B658           ;
CODE_03B636:        BMI CODE_03B63B           ;
CODE_03B638:        LSR A                     ;
CODE_03B639:        BCC CODE_03B658           ;
CODE_03B63B:        LDA $0705                 ;
CODE_03B63E:        CLC                       ;
CODE_03B63F:        ADC $0702                 ;
CODE_03B642:        STA $0705                 ;
CODE_03B645:        LDA $5D                   ;
CODE_03B647:        ADC $0701                 ;
CODE_03B64A:        STA $5D                   ;
CODE_03B64C:        CMP $0463                 ;
CODE_03B64F:        BMI CODE_03B673           ;
CODE_03B651:        LDA $0463                 ;
CODE_03B654:        STA $5D                   ;
CODE_03B656:        BRA CODE_03B67C           ;

CODE_03B658:        LDA $0705                 ;
CODE_03B65B:        SEC                       ;
CODE_03B65C:        SBC $0702                 ;
CODE_03B65F:        STA $0705                 ;
CODE_03B662:        LDA $5D                   ;
CODE_03B664:        SBC $0701                 ;
CODE_03B667:        STA $5D                   ;
CODE_03B669:        CMP $045D                 ;
CODE_03B66C:        BPL CODE_03B673           ;
CODE_03B66E:        LDA $045D                 ;
CODE_03B671:        STA $5D                   ;
CODE_03B673:        CMP #$00                  ;
CODE_03B675:        BPL CODE_03B67C           ;
CODE_03B677:        EOR #$FF                  ;
CODE_03B679:        CLC                       ;
CODE_03B67A:        ADC #$01                  ;
CODE_03B67C:        STA $0700                 ;
CODE_03B67F:        RTS                       ;

CODE_03B680:        LDA $0756                 ;
CODE_03B683:        CMP #$02                  ;
CODE_03B685:        BCC CODE_03B6CB           ;
CODE_03B687:        LDA $0A                   ;
CODE_03B689:        AND #$40                  ;
CODE_03B68B:        BEQ CODE_03B6C1           ;
CODE_03B68D:        AND $0D                   ;
CODE_03B68F:        BNE CODE_03B6C1           ;
CODE_03B691:        LDA $06CE                 ;
CODE_03B694:        AND #$01                  ;
CODE_03B696:        TAX                       ;
CODE_03B697:        LDA $33,x                 ;
CODE_03B699:        BNE CODE_03B6C1           ;
CODE_03B69B:        LDY $BB                   ;
CODE_03B69D:        DEY                       ;
CODE_03B69E:        BNE CODE_03B6C1           ;
CODE_03B6A0:        LDA $0714                 ;
CODE_03B6A3:        BNE CODE_03B6C1           ;
CODE_03B6A5:        LDA $28                   ;
CODE_03B6A7:        CMP #$03                  ;
CODE_03B6A9:        BEQ CODE_03B6C1           ;
CODE_03B6AB:        LDA #$06                  ;\Mario threw a fireball sound
CODE_03B6AD:        STA $1603                 ;/
CODE_03B6B0:        LDA #$02                  ;
CODE_03B6B2:        STA $33,x                 ;
CODE_03B6B4:        LDY $070C                 ;
CODE_03B6B7:        STY $0711                 ;
CODE_03B6BA:        DEY                       ;
CODE_03B6BB:        STY $0789                 ;
CODE_03B6BE:        INC $06CE                 ;
CODE_03B6C1:        LDX #$00                  ;
CODE_03B6C3:        JSR CODE_03B6E6           ;
CODE_03B6C6:        LDX #$01                  ;
CODE_03B6C8:        JSR CODE_03B6E6           ;
CODE_03B6CB:        LDA $5C                   ;
CODE_03B6CD:        BNE CODE_03B6E3           ;
CODE_03B6CF:        LDX #$02                  ;
CODE_03B6D1:        STX $9E                   ;
CODE_03B6D3:        JSR CODE_03B780           ;
CODE_03B6D6:        JSR CODE_03FD1A           ;
CODE_03B6D9:        JSR CODE_03FDAD           ;
CODE_03B6DC:        JSL CODE_05E2AA           ;
CODE_03B6E0:        DEX                       ;
CODE_03B6E1:        BPL CODE_03B6D1           ;
CODE_03B6E3:        RTS                       ;

DATA_03B6E4:        db $40,$C0                ;Fireball Xspeed: Right, left

CODE_03B6E6:        STX $9E                   ;
CODE_03B6E8:        LDA $33,x                 ;
CODE_03B6EA:        ASL A                     ;
CODE_03B6EB:        BCC CODE_03B6F0           ;
CODE_03B6ED:        JMP CODE_03B77A           ;

CODE_03B6F0:        LDY $33,x                 ;\If fireball exists in any form,
CODE_03B6F2:        BNE CODE_03B6F7           ; |Go to fireball throw routine
CODE_03B6F4:        JMP CODE_03B779           ;/Otherwise, return

CODE_03B6F7:        DEY                       ;
CODE_03B6F8:        BEQ CODE_03B726           ;

;This piece of code only triggers... |
;...when Mario throws a fireball.    V
CODE_03B6FA:        LDA $0219                 ;\Load Mario's Xpos (Xpos in single page)
CODE_03B6FD:        ADC #$04                  ; |Add $04/$05 to it (Depends on C flag)
CODE_03B6FF:        STA $0224,x               ;/Store into Fireball creation Xpos
CODE_03B702:        LDA $78                   ;\Load Mario's Xpos (Page # player is in)
CODE_03B704:        ADC #$00                  ; |Add $00/$01 to it (Depends on C flag)
CODE_03B706:        STA $83,x                 ;/Store into page of Fireball (not sure)
CODE_03B708:        LDA $0237                 ;\Load Mario's Ypos
CODE_03B70B:        STA $0242,x               ;/Store into Ypos of fireball
CODE_03B70E:        LDA #$01                  ;\Set the "Mario threw a fireball" flag
CODE_03B710:        STA $C6,x                 ;/
CODE_03B712:        LDY $0202                 ;\Mario's direction
CODE_03B715:        DEY                       ; |Decrease with 1
CODE_03B716:        LDA DATA_03B6E4,y               ; |Load Horizontal speeds
CODE_03B719:        STA $68,x                 ;/Store into Fireball horizontal speed
CODE_03B71B:        LDA #$04                  ;\Y-speed of the fireball when it gets thrown
CODE_03B71D:        STA $AB,x                 ;/Which is of course, downwards
CODE_03B71F:        LDA #$07                  ;
CODE_03B721:        STA $049A,x               ;
CODE_03B724:        DEC $33,x                 ;Decrease fireball state timer
CODE_03B726:        TXA                       ;
CODE_03B727:        CLC                       ;
CODE_03B728:        ADC #$0B                  ;
CODE_03B72A:        TAX                       ;
CODE_03B72B:        LDA #$50                  ;
CODE_03B72D:        STA $00                   ;
CODE_03B72F:        LDA #$03                  ;
CODE_03B731:        STA $02                   ;
CODE_03B733:        LDA #$00                  ;
CODE_03B735:        JSR CODE_03C18B           ;Impose gravity
CODE_03B738:        JSR CODE_03C0BA           ;
CODE_03B73B:        LDX $9E                   ;
CODE_03B73D:        JSR CODE_03FD23           ;
CODE_03B740:        JSR CODE_03FDA3           ;
CODE_03B743:        JSR CODE_03E9B6           ;
CODE_03B746:        JSR CODE_03E946           ;
CODE_03B749:        LDA $03D2                 ;
CODE_03B74C:        AND #$FC                  ;
CODE_03B74E:        BEQ CODE_03B76F           ;
CODE_03B750:        AND #$F0                  ;
CODE_03B752:        BNE CODE_03B775           ;
CODE_03B754:        LDA $0068,x               ;
CODE_03B757:        BMI CODE_03B764           ;
CODE_03B759:        LDA $03D2                 ;
CODE_03B75C:        AND #$0F                  ;
CODE_03B75E:        CMP #$0F                  ;
CODE_03B760:        BEQ CODE_03B775           ;
CODE_03B762:        BRA CODE_03B772           ;

CODE_03B764:        LDA $03D2                 ;
CODE_03B767:        AND #$0C                  ;
CODE_03B769:        CMP #$0C                  ;
CODE_03B76B:        BEQ CODE_03B775           ;
CODE_03B76D:        BRA CODE_03B772           ;

CODE_03B76F:        JSR CODE_03DC70           ;
CODE_03B772:        JMP CODE_03F443           ;

CODE_03B775:        LDA #$00                  ;
CODE_03B777:        STA $33,x                 ;
CODE_03B779:        RTS                       ;

CODE_03B77A:        JSR CODE_03FD23           ;
CODE_03B77D:        JMP CODE_03F4A8           ;

CODE_03B780:        LDA $07B8,x               ;
CODE_03B783:        AND #$01                  ;
CODE_03B785:        STA $07                   ;
CODE_03B787:        LDA $0251,x               ;
CODE_03B78A:        CMP #$F8                  ;
CODE_03B78C:        BNE CODE_03B7BF           ;
CODE_03B78E:        LDA $079E                 ;
CODE_03B791:        BNE CODE_03B7D9           ;
CODE_03B793:        LDY #$00                  ;
CODE_03B795:        LDA $0202                 ;
CODE_03B798:        LSR A                     ;
CODE_03B799:        BCC CODE_03B79D           ;
CODE_03B79B:        LDY #$08                  ;
CODE_03B79D:        TYA                       ;
CODE_03B79E:        ADC $0219                 ;
CODE_03B7A1:        STA $0233,x               ;
CODE_03B7A4:        LDA $78                   ;
CODE_03B7A6:        ADC #$00                  ;
CODE_03B7A8:        STA $92,x                 ;
CODE_03B7AA:        LDA $0237                 ;
CODE_03B7AD:        CLC                       ;
CODE_03B7AE:        ADC #$08                  ;
CODE_03B7B0:        STA $0251,x               ;
CODE_03B7B3:        LDA #$01                  ;
CODE_03B7B5:        STA $D5,x                 ;
CODE_03B7B7:        LDY $07                   ;
CODE_03B7B9:        LDA DATA_03B7DC,y               ;
CODE_03B7BC:        STA $079E                 ;
CODE_03B7BF:        LDY $07                   ;
CODE_03B7C1:        LDA $0436,x               ;
CODE_03B7C4:        SEC                       ;
CODE_03B7C5:        SBC DATA_03B7DA,y               ;
CODE_03B7C8:        STA $0436,x               ;
CODE_03B7CB:        LDA $0251,x               ;
CODE_03B7CE:        SBC #$00                  ;
CODE_03B7D0:        CMP #$20                  ;
CODE_03B7D2:        BCS CODE_03B7D6           ;
CODE_03B7D4:        LDA #$F8                  ;
CODE_03B7D6:        STA $0251,x               ;
CODE_03B7D9:        RTS                       ;

DATA_03B7DA:        db $FF,$50
DATA_03B7DC:        db $40,$20

CODE_03B7DE:        LDA $0770                 ;
CODE_03B7E1:        BEQ CODE_03B838           ;
CODE_03B7E3:        LDA $0F                   ;
CODE_03B7E5:        CMP #$08                  ;
CODE_03B7E7:        BCC CODE_03B838           ;
CODE_03B7E9:        CMP #$0B                  ;
CODE_03B7EB:        BEQ CODE_03B838           ;
CODE_03B7ED:        LDA $BB                   ;
CODE_03B7EF:        CMP #$02                  ;
CODE_03B7F1:        BPL CODE_03B838           ;
CODE_03B7F3:        LDA $078F                 ;\If timer countdown timer isn't, $00 yet, branch
CODE_03B7F6:        BNE CODE_03B838           ;/
CODE_03B7F8:        LDA $07E9                 ;\
CODE_03B7FB:        ORA $07EA                 ; |Branch if timer is 000
CODE_03B7FE:        ORA $07EB                 ; |
CODE_03B801:        BEQ CODE_03B82F           ;/
CODE_03B803:        LDY $07E9                 ;\
CODE_03B806:        DEY                       ; |
CODE_03B807:        BNE CODE_03B816           ; |Check hundreds, if not $00, branch
CODE_03B809:        LDA $07EA                 ;\|
CODE_03B80C:        ORA $07EB                 ; |Check the tens and ones. If not $00, branch
CODE_03B80F:        BNE CODE_03B816           ;/
CODE_03B811:        LDA #$FF                  ;\
CODE_03B813:        STA $1600                 ;/Time is running out! sound
CODE_03B816:        LDA #$18                  ;\
CODE_03B818:        STA $078F                 ;/Control the timer countdown speed
CODE_03B81B:        LDY #$23                  ;
CODE_03B81D:        LDA #$FF                  ;
CODE_03B81F:        STA $014A                 ;
CODE_03B822:        LDA $0E73                 ;
CODE_03B825:        BNE CODE_03B82A           ;
CODE_03B827:        JSR CODE_039CF9           ;
CODE_03B82A:        LDA #$A4                  ;
CODE_03B82C:        JMP CODE_039C82           ;

CODE_03B82F:        STA $0756                 ;
CODE_03B832:        JSR CODE_03DF52           ;
CODE_03B835:        INC $0759                 ;
CODE_03B838:        RTS                       ;

CODE_03B839:        LDA $0723                 ;
CODE_03B83C:        BEQ CODE_03B838           ;
CODE_03B83E:        LDA $0237                 ;
CODE_03B841:        AND $BB                   ;
CODE_03B843:        BNE CODE_03B838           ;
CODE_03B845:        STA $0723                 ;
CODE_03B848:        INC $06D6                 ;
CODE_03B84B:        JMP CODE_03CDE2           ; Erase sprite

CODE_03B84E:        LDA $5C                   ;
CODE_03B850:        BNE CODE_03B88F           ;
CODE_03B852:        STA $027D                 ;
CODE_03B855:        JSL CODE_048378           ;
CODE_03B859:        LDA $0747                 ;
CODE_03B85C:        BNE CODE_03B88F           ;
CODE_03B85E:        LDY #$04                  ;
CODE_03B860:        LDA $0271,y               ;
CODE_03B863:        CLC                       ;
CODE_03B864:        ADC $0277,y               ;
CODE_03B867:        STA $02                   ;
CODE_03B869:        LDA $026B,y               ;
CODE_03B86C:        BEQ CODE_03B88C           ;
CODE_03B86E:        ADC #$00                  ;
CODE_03B870:        STA $01                   ;
CODE_03B872:        LDA $0219                 ;
CODE_03B875:        SEC                       ;
CODE_03B876:        SBC $0271,y               ;
CODE_03B879:        LDA $78                   ;
CODE_03B87B:        SBC $026B,y               ;
CODE_03B87E:        BMI CODE_03B88C           ;
CODE_03B880:        LDA $02                   ;
CODE_03B882:        SEC                       ;
CODE_03B883:        SBC $0219                 ;
CODE_03B886:        LDA $01                   ;
CODE_03B888:        SBC $78                   ;
CODE_03B88A:        BPL CODE_03B890           ;
CODE_03B88C:        DEY                       ;
CODE_03B88D:        BPL CODE_03B860           ;
CODE_03B88F:        RTS                       ;

CODE_03B890:        LDA $0277,y               ;
CODE_03B893:        LSR A                     ;
CODE_03B894:        STA $00                   ;
CODE_03B896:        LDA $0271,y               ;
CODE_03B899:        CLC                       ;
CODE_03B89A:        ADC $00                   ;
CODE_03B89C:        STA $01                   ;
CODE_03B89E:        LDA $026B,y               ;
CODE_03B8A1:        ADC #$00                  ;
CODE_03B8A3:        STA $00                   ;
CODE_03B8A5:        LDA $09                   ;
CODE_03B8A7:        LSR A                     ;
CODE_03B8A8:        BCC CODE_03B8DB           ;
CODE_03B8AA:        LDA $01                   ;
CODE_03B8AC:        SEC                       ;
CODE_03B8AD:        SBC $0219                 ;
CODE_03B8B0:        LDA $00                   ;
CODE_03B8B2:        SBC $78                   ;
CODE_03B8B4:        BPL CODE_03B8C6           ;
CODE_03B8B6:        LDA $0219                 ;
CODE_03B8B9:        SEC                       ;
CODE_03B8BA:        SBC #$01                  ;
CODE_03B8BC:        STA $0219                 ;
CODE_03B8BF:        LDA $78                   ;
CODE_03B8C1:        SBC #$00                  ;
CODE_03B8C3:        JMP CODE_03B8D9           ;

CODE_03B8C6:        LDA $0480                 ;
CODE_03B8C9:        LSR A                     ;
CODE_03B8CA:        BCC CODE_03B8DB           ;
CODE_03B8CC:        LDA $0219                 ;
CODE_03B8CF:        CLC                       ;
CODE_03B8D0:        ADC #$01                  ;
CODE_03B8D2:        STA $0219                 ;
CODE_03B8D5:        LDA $78                   ;
CODE_03B8D7:        ADC #$00                  ;
CODE_03B8D9:        STA $78                   ;
CODE_03B8DB:        LDA #$10                  ;
CODE_03B8DD:        STA $00                   ;
CODE_03B8DF:        LDA #$01                  ;
CODE_03B8E1:        STA $027D                 ;
CODE_03B8E4:        STA $02                   ;
CODE_03B8E6:        LSR A                     ;
CODE_03B8E7:        TAX                       ;
CODE_03B8E8:        JMP CODE_03C18B           ;Impose gravity

DATA_03B8EB:        db $05,$02,$08,$04,$01

DATA_03B8F0:        db $03,$03,$04,$04,$04

CODE_03B8F5:        LDX #$05                  ;
CODE_03B8F7:        STX $9E                   ;
CODE_03B8F9:        LDA $1C,x                 ;
CODE_03B8FB:        CMP #$30                  ;
CODE_03B8FD:        BEQ CODE_03B902           ;
CODE_03B8FF:        JMP CODE_03B98C           ;

CODE_03B902:        LDA $0F                   ;
CODE_03B904:        CMP #$04                  ;
CODE_03B906:        BNE CODE_03B93D           ;
CODE_03B908:        LDA $28                   ;
CODE_03B90A:        CMP #$03                  ;
CODE_03B90C:        BNE CODE_03B93D           ;
CODE_03B90E:        LDA $0238,x               ;
CODE_03B911:        CMP #$AA                  ;
CODE_03B913:        BCS CODE_03B93F           ;
CODE_03B915:        LDA $0237                 ;
CODE_03B918:        CMP #$A2                  ;
CODE_03B91A:        BCS CODE_03B93F           ;
CODE_03B91C:        LDA $041D,x               ;
CODE_03B91F:        ADC #$FF                  ;
CODE_03B921:        STA $041D,x               ;
CODE_03B924:        LDA $0238,x               ;
CODE_03B927:        ADC #$01                  ;
CODE_03B929:        STA $0238,x               ;
CODE_03B92C:        LDA $010E                 ;
CODE_03B92F:        SEC                       ;
CODE_03B930:        SBC #$FF                  ;
CODE_03B932:        STA $010E                 ;
CODE_03B935:        LDA $010D                 ;
CODE_03B938:        SBC #$01                  ;
CODE_03B93A:        STA $010D                 ;
CODE_03B93D:        BRA CODE_03B982           ;

CODE_03B93F:        LDY $010F                 ;
CODE_03B942:        LDA DATA_03B8EB,y               ;
CODE_03B945:        LDX DATA_03B8F0,y               ;
CODE_03B948:        STA $0145,x               ;
CODE_03B94B:        JSR CODE_03BD55           ;
CODE_03B94E:        LDA #$05                  ;
CODE_03B950:        STA $0F                   ;
CODE_03B952:        LDA #$0C                  ;\Goal music
CODE_03B954:        STA $1602                 ;/
CODE_03B957:        LDA $0202                 ;
CODE_03B95A:        AND #$02                  ;
CODE_03B95C:        BNE CODE_03B962           ;
CODE_03B95E:        LDA #$6E                  ;
CODE_03B960:        BRA CODE_03B964           ;

CODE_03B962:        LDA #$60                  ;
CODE_03B964:        STA $02FD                 ;
CODE_03B967:        LDA $0219                 ;
CODE_03B96A:        STA $03CC                 ;
CODE_03B96D:        LDA $78                   ;
CODE_03B96F:        STA $03CD                 ;
CODE_03B972:        LDA #$20                  ;
CODE_03B974:        STA $03FB                 ;
CODE_03B977:        STA $03FA                 ;
CODE_03B97A:        LDA #$20                  ;
CODE_03B97C:        STA $03FB                 ;
CODE_03B97F:        STA $03FA                 ;
CODE_03B982:        JSR CODE_03FDCB           ;
CODE_03B985:        JSR CODE_03FD39           ;
CODE_03B988:        JSL CODE_05EAA0           ;
CODE_03B98C:        RTS                       ;

DATA_03B98D:        db $08,$10,$08,$00

CODE_03B991:        JSR CODE_03FDCB           ;
CODE_03B994:        LDA $0747                 ;
CODE_03B997:        BNE CODE_03B9E1           ;
CODE_03B999:        LDA $070E                 ;
CODE_03B99C:        BEQ CODE_03B9E1           ;
CODE_03B99E:        TAY                       ;
CODE_03B99F:        DEY                       ;
CODE_03B9A0:        TYA                       ;
CODE_03B9A1:        AND #$02                  ;
CODE_03B9A3:        BNE CODE_03B9AE           ;
CODE_03B9A5:        INC $0237                 ;
CODE_03B9A8:        INC $0237                 ;
CODE_03B9AB:        JMP CODE_03B9B4           ;

CODE_03B9AE:        DEC $0237                 ;
CODE_03B9B1:        DEC $0237                 ;
CODE_03B9B4:        LDA $5E,x                 ;
CODE_03B9B6:        CLC                       ;
CODE_03B9B7:        ADC DATA_03B98D,y               ;
CODE_03B9BA:        STA $0238,x               ;
CODE_03B9BD:        CPY #$01                  ;
CODE_03B9BF:        BCC CODE_03B9D0           ;
CODE_03B9C1:        LDA $0A                   ;
CODE_03B9C3:        AND #$80                  ;
CODE_03B9C5:        BEQ CODE_03B9D0           ;
CODE_03B9C7:        AND $0D                   ;
CODE_03B9C9:        BNE CODE_03B9D0           ;
CODE_03B9CB:        LDA #$F4                  ;
CODE_03B9CD:        STA $06DB                 ;Springboard launch force
CODE_03B9D0:        CPY #$03                  ;
CODE_03B9D2:        BNE CODE_03B9E1           ;
CODE_03B9D4:        LDA $06DB                 ;\
CODE_03B9D7:        STA $A0                   ;/Store springboard launch force into player Y speed
CODE_03B9D9:        STZ $070E                 ;
CODE_03B9DC:        LDA #$08                  ;\Springboard sound
CODE_03B9DE:        STA $1603                 ;/
CODE_03B9E1:        JSR CODE_03FD39           ;
CODE_03B9E4:        JSR CODE_03EEEF           ;
CODE_03B9E7:        JSR CODE_03DC03           ;
CODE_03B9EA:        LDA $070E                 ;
CODE_03B9ED:        BEQ CODE_03B9FC           ;
CODE_03B9EF:        LDA $078E                 ;
CODE_03B9F2:        BNE CODE_03B9FC           ;
CODE_03B9F4:        LDA #$04                  ;
CODE_03B9F6:        STA $078E                 ;
CODE_03B9F9:        INC $070E                 ;
CODE_03B9FC:        RTS                       ;

CODE_03B9FD:        LDA #$2F                  ;\
CODE_03B9FF:        STA $1C,x                 ;/Sprite to generate: Vine
CODE_03BA01:        LDA #$01                  ;\
CODE_03BA03:        STA $10,x                 ;/Sprite on screen
CODE_03BA05:        LDA $0085,y               ;\Spawn in current screen of course
CODE_03BA08:        STA $79,x                 ;/
CODE_03BA0A:        LDA $0226,y               ;\Spawn at the brick
CODE_03BA0D:        STA $021A,x               ;/Store into Sprite X-Position
CODE_03BA10:        LDA $0244,y               ;\
CODE_03BA13:        BNE CODE_03BA17           ; |If brick position is at the very top
CODE_03BA15:        LDA #$F0                  ; |Spawn vine from the very bottom
CODE_03BA17:        STA $0238,x               ;/ (Used in level entrances with the vine animation?)
CODE_03BA1A:        LDY $0398                 ;
CODE_03BA1D:        BNE CODE_03BA22           ;
CODE_03BA1F:        STA $039D                 ;
CODE_03BA22:        TXA                       ;
CODE_03BA23:        STA $039A,y               ;
CODE_03BA26:        INC $0398                 ;
CODE_03BA29:        LDA #$03                  ;\
CODE_03BA2B:        STA $1603                 ;/Play vine sound
CODE_03BA2E:        RTS                       ;Return

DATA_03BA2F:        db $60,$90

CODE_03BA31:        CPX #$09                  ;
CODE_03BA33:        BEQ CODE_03BA36           ;
CODE_03BA35:        RTS                       ;

CODE_03BA36:        LDA $0236                 ;
CODE_03BA39:        BNE CODE_03BA40           ;
CODE_03BA3B:        LDA DATA_03BA2F+1         ;
CODE_03BA3E:        BRA CODE_03BA43           ;

CODE_03BA40:        LDA DATA_03BA2F           ;
CODE_03BA43:        CMP $0399                 ;
CODE_03BA46:        BEQ CODE_03BA58           ;
CODE_03BA48:        LDA $09                   ;
CODE_03BA4A:        LSR A                     ;
CODE_03BA4B:        BCC CODE_03BA58           ;
CODE_03BA4D:        LDA $0241                 ;
CODE_03BA50:        SBC #$01                  ;
CODE_03BA52:        STA $0241                 ;
CODE_03BA55:        INC $0399                 ;
CODE_03BA58:        LDA $0399                 ;
CODE_03BA5B:        CMP #$08                  ;
CODE_03BA5D:        BCC CODE_03BA9D           ;
CODE_03BA5F:        JSR CODE_03FD39           ;
CODE_03BA62:        JSR CODE_03FDCB           ;
CODE_03BA65:        LDY #$00                  ;
CODE_03BA67:        JSL CODE_05DA72           ;
CODE_03BA6B:        LDA $03D1                 ;
CODE_03BA6E:        AND #$0F                  ;
CODE_03BA70:        CMP #$0F                  ;
CODE_03BA72:        BNE CODE_03BA7F           ;
CODE_03BA74:        LDX #$09                  ;
CODE_03BA76:        JSR CODE_03CDE2           ; Erase sprite
CODE_03BA79:        STA $0398                 ;
CODE_03BA7C:        STA $0399                 ;
CODE_03BA7F:        LDA $0399                 ;
CODE_03BA82:        CMP #$20                  ;
CODE_03BA84:        BCC CODE_03BA9D           ;
CODE_03BA86:        LDX #$0A                  ;
CODE_03BA88:        LDA #$01                  ;
CODE_03BA8A:        LDY #$1B                  ;
CODE_03BA8C:        JSR CODE_03EB83           ;
CODE_03BA8F:        LDY $02                   ;
CODE_03BA91:        CPY #$D0                  ;
CODE_03BA93:        BCS CODE_03BA9D           ;
CODE_03BA95:        LDA ($06),y               ;
CODE_03BA97:        BNE CODE_03BA9D           ;
CODE_03BA99:        LDA #$2A                  ;
CODE_03BA9B:        STA ($06),y               ;
CODE_03BA9D:        LDX $9E                   ;
CODE_03BA9F:        RTS                       ;

DATA_03BAA0:        db $0F,$07

CODE_03BAA2:        LDA $5C                   ;
CODE_03BAA4:        BEQ CODE_03BB15           ;
CODE_03BAA6:        LDX #$02                  ;
CODE_03BAA8:        STX $9E                   ;
CODE_03BAAA:        LDA $10,x                 ;
CODE_03BAAC:        BNE CODE_03BAFF           ;
CODE_03BAAE:        LDA $07B8,x               ;
CODE_03BAB1:        LDY $06CC                 ;
CODE_03BAB4:        AND DATA_03BAA0,y               ;
CODE_03BAB7:        CMP #$06                  ;
CODE_03BAB9:        BCS CODE_03BAFF           ;
CODE_03BABB:        TAY                       ;
CODE_03BABC:        LDA $026B,y               ;
CODE_03BABF:        BEQ CODE_03BAFF           ;
CODE_03BAC1:        LDA $027D,y               ;
CODE_03BAC4:        BEQ CODE_03BACD           ;
CODE_03BAC6:        SBC #$00                  ;
CODE_03BAC8:        STA $027D,y               ;
CODE_03BACB:        BRA CODE_03BAFF           ;

CODE_03BACD:        LDA $0747                 ;
CODE_03BAD0:        BNE CODE_03BAFF           ;
CODE_03BAD2:        LDA #$0E                  ;
CODE_03BAD4:        STA $027D,y               ;
CODE_03BAD7:        LDA $026B,y               ;
CODE_03BADA:        STA $79,x                 ;
CODE_03BADC:        LDA $0271,y               ;
CODE_03BADF:        STA $021A,x               ;
CODE_03BAE2:        LDA $0277,y               ;
CODE_03BAE5:        SEC                       ;
CODE_03BAE6:        SBC #$08                  ;
CODE_03BAE8:        STA $0238,x               ;
CODE_03BAEB:        LDA #$01                  ;
CODE_03BAED:        STA $BC,x                 ;
CODE_03BAEF:        STA $10,x                 ;
CODE_03BAF1:        LSR A                     ;
CODE_03BAF2:        STA $29,x                 ;
CODE_03BAF4:        LDA #$09                  ;
CODE_03BAF6:        STA $0490,x               ;
CODE_03BAF9:        LDA #$33                  ;\
CODE_03BAFB:        STA $1C,x                 ;/Sprite to generate: Bullet bill
CODE_03BAFD:        BRA CODE_03BB12           ;

CODE_03BAFF:        LDA $1C,x                 ;
CODE_03BB01:        CMP #$33                  ;
CODE_03BB03:        BNE CODE_03BB12           ;
CODE_03BB05:        JSR CODE_03DC03           ;
CODE_03BB08:        LDA $10,x                 ;
CODE_03BB0A:        BEQ CODE_03BB12           ;
CODE_03BB0C:        JSR CODE_03FDCB           ;
CODE_03BB0F:        JSR CODE_03BB18           ;
CODE_03BB12:        DEX                       ;
CODE_03BB13:        BPL CODE_03BAA8           ;
CODE_03BB15:        RTS                       ;

DATA_03BB16:        db $18,$E8

CODE_03BB18:        LDA $0747                 ;
CODE_03BB1B:        BNE CODE_03BB70           ;
CODE_03BB1D:        LDA $29,x                 ;
CODE_03BB1F:        BNE CODE_03BB53           ;
CODE_03BB21:        LDA $03D1                 ;
CODE_03BB24:        AND #$0C                  ;
CODE_03BB26:        CMP #$0C                  ;
CODE_03BB28:        BEQ CODE_03BB7F           ;
CODE_03BB2A:        LDY #$01                  ;
CODE_03BB2C:        JSR CODE_03E8BC           ;
CODE_03BB2F:        BMI CODE_03BB32           ;
CODE_03BB31:        INY                       ;
CODE_03BB32:        STY $47,x                 ;
CODE_03BB34:        DEY                       ;
CODE_03BB35:        LDA DATA_03BB16,y               ;
CODE_03BB38:        STA $5E,x                 ;
CODE_03BB3A:        LDA $00                   ;
CODE_03BB3C:        ADC #$28                  ;
CODE_03BB3E:        CMP #$50                  ;
CODE_03BB40:        BCC CODE_03BB7F           ;
CODE_03BB42:        LDA #$01                  ;
CODE_03BB44:        STA $29,x                 ;
CODE_03BB46:        LDA #$0A                  ;
CODE_03BB48:        STA $0792,x               ;
CODE_03BB4B:        LDA #$4A                  ;\Bullet bill sound
CODE_03BB4D:        STA $1603                 ;/
CODE_03BB50:        JSR CODE_03C27B           ;
CODE_03BB53:        LDA $03D1                 ;
CODE_03BB56:        AND #$F0                  ;
CODE_03BB58:        CMP #$F0                  ;
CODE_03BB5A:        BEQ CODE_03BB7F           ;
CODE_03BB5C:        LDA $29,x                 ;
CODE_03BB5E:        AND #$20                  ;
CODE_03BB60:        BEQ CODE_03BB65           ;
CODE_03BB62:        JSR CODE_03C113           ;
CODE_03BB65:        LDA $0E67                 ;
CODE_03BB68:        BNE CODE_03BB70           ;
CODE_03BB6A:        JSR CODE_03C0AD           ;
CODE_03BB6D:        JSR CODE_03C1FA           ;
CODE_03BB70:        JSR CODE_03FDCB           ;
CODE_03BB73:        JSR CODE_03FD39           ;
CODE_03BB76:        JSR CODE_03E9CC           ;
CODE_03BB79:        JSR CODE_03DE55           ;
CODE_03BB7C:        JMP CODE_03EEEF           ;

CODE_03BB7F:        JSR CODE_03CDE2           ; Erase sprite
CODE_03BB82:        RTS                       ;

DATA_03BB83:        db $04,$04,$04,$05,$05,$05,$06,$06
                    db $06

DATA_03BB8C:        db $10,$F0

CODE_03BB8E:        LDA $07B8                 ;
CODE_03BB91:        AND #$07                  ;
CODE_03BB93:        BNE CODE_03BB9A           ;
CODE_03BB95:        LDA $07B8                 ;
CODE_03BB98:        AND #$08                  ;
CODE_03BB9A:        TAY                       ;
CODE_03BB9B:        LDA $0039,y               ;
CODE_03BB9E:        BNE CODE_03BBB9           ;
CODE_03BBA0:        LDX DATA_03BB83,y               ;
CODE_03BBA3:        LDA $10,x                 ;
CODE_03BBA5:        BNE CODE_03BBB9           ;
CODE_03BBA7:        LDX $9E                   ;
CODE_03BBA9:        TXA                       ;
CODE_03BBAA:        STA $06AE,y               ;
CODE_03BBAD:        LDA #$90                  ;
CODE_03BBAF:        STA $0039,y               ;
CODE_03BBB2:        LDA #$07                  ;\
CODE_03BBB4:        STA $049C,y               ;/Set extended sprite clipping size?
CODE_03BBB7:        SEC                       ;
CODE_03BBB8:        RTS                       ;

CODE_03BBB9:        LDX $9E                   ;\
CODE_03BBBB:        CLC                       ; |Get sprite index and clear carry flag
CODE_03BBBC:        RTS                       ;/

CODE_03BBBD:        LDA $0747                 ;
CODE_03BBC0:        BEQ CODE_03BBC5           ;
CODE_03BBC2:        JMP CODE_03BC4B           ;

CODE_03BBC5:        LDA $39,x                 ;
CODE_03BBC7:        AND #$7F                  ;
CODE_03BBC9:        LDY $06AE,x               ;
CODE_03BBCC:        CMP #$02                  ;
CODE_03BBCE:        BEQ CODE_03BBF0           ;
CODE_03BBD0:        BCS CODE_03BC06           ;
CODE_03BBD2:        TXA                       ;
CODE_03BBD3:        CLC                       ;
CODE_03BBD4:        ADC #$11                  ;
CODE_03BBD6:        TAX                       ;
CODE_03BBD7:        LDA #$10                  ;
CODE_03BBD9:        STA $00                   ;
CODE_03BBDB:        LDA #$0F                  ;
CODE_03BBDD:        STA $01                   ;
CODE_03BBDF:        LDA #$04                  ;
CODE_03BBE1:        STA $02                   ;
CODE_03BBE3:        LDA #$00                  ;
CODE_03BBE5:        JSR CODE_03C18B           ;Impose gravity
CODE_03BBE8:        JSR CODE_03C0BA           ;
CODE_03BBEB:        LDX $9E                   ;
CODE_03BBED:        JMP CODE_03BC48           ;

CODE_03BBF0:        LDA #$FE                  ;Hammer bros hammer y-speed
CODE_03BBF2:        STA $B1,x                 ;
CODE_03BBF4:        LDA $0029,y               ;
CODE_03BBF7:        AND #$F7                  ;
CODE_03BBF9:        STA $0029,y               ;
CODE_03BBFC:        LDX $47,y                 ;\
CODE_03BBFE:        DEX                       ; |
CODE_03BBFF:        LDA DATA_03BB8C,x               ; | Hammer bros hammer x-speed depending on direction
CODE_03BC02:        LDX $9E                   ; |
CODE_03BC04:        STA $6E,x                 ;/
CODE_03BC06:        DEC $39,x                 ;
CODE_03BC08:        LDA $39,x                 ;
CODE_03BC0A:        CMP #$81                  ;
CODE_03BC0C:        BNE CODE_03BC13           ;
CODE_03BC0E:        LDA #$37                  ;\Hammer thrown sound
CODE_03BC10:        STA $1600                 ;/
CODE_03BC13:        LDA $001C,y               ;
CODE_03BC16:        CMP #$2D                  ;
CODE_03BC18:        BNE CODE_03BC1E           ;
CODE_03BC1A:        LDA #$08                  ;
CODE_03BC1C:        BRA CODE_03BC2B           ;

CODE_03BC1E:        LDA $0047,y               ;
CODE_03BC21:        CMP #$02                  ;
CODE_03BC23:        BNE CODE_03BC29           ;
CODE_03BC25:        LDA #$06                  ;
CODE_03BC27:        BRA CODE_03BC2B           ;

CODE_03BC29:        LDA #$02                  ;
CODE_03BC2B:        CLC                       ;
CODE_03BC2C:        ADC $021A,y               ;
CODE_03BC2F:        STA $022A,x               ;
CODE_03BC32:        LDA $0079,y               ;
CODE_03BC35:        ADC #$00                  ;
CODE_03BC37:        STA $89,x                 ;
CODE_03BC39:        LDA $0238,y               ;
CODE_03BC3C:        SEC                       ;
CODE_03BC3D:        SBC #$0A                  ;
CODE_03BC3F:        STA $0248,x               ;
CODE_03BC42:        LDA #$01                  ;
CODE_03BC44:        STA $CC,x                 ;
CODE_03BC46:        BNE CODE_03BC4B           ;
CODE_03BC48:        JSR CODE_03DDBE           ;
CODE_03BC4B:        JSR CODE_03FDB7           ;
CODE_03BC4E:        JSR CODE_03FD30           ;
CODE_03BC51:        JSR CODE_03E9BF           ;
CODE_03BC54:        JSL CODE_05DD07           ;
CODE_03BC58:        RTS                       ;

CODE_03BC59:        JSR CODE_03BCA7           ;
CODE_03BC5C:        LDA $85,x                 ;
CODE_03BC5E:        STA $0089,y               ;
CODE_03BC61:        LDA $0226,x               ;
CODE_03BC64:        ORA #$05                  ;
CODE_03BC66:        STA $022A,y               ;
CODE_03BC69:        LDA $0244,x               ;
CODE_03BC6C:        SBC #$10                  ;
CODE_03BC6E:        STA $0248,y               ;
CODE_03BC71:        BRA CODE_03BC8E           ;

CODE_03BC73:        JSR CODE_03BCA7           ;
CODE_03BC76:        LDA $03EC,x               ;
CODE_03BC79:        STA $0089,y               ;
CODE_03BC7C:        LDA $06                   ;
CODE_03BC7E:        ASL A                     ;
CODE_03BC7F:        ASL A                     ;
CODE_03BC80:        ASL A                     ;
CODE_03BC81:        ASL A                     ;
CODE_03BC82:        ORA #$05                  ;
CODE_03BC84:        STA $022A,y               ;
CODE_03BC87:        LDA $02                   ;
CODE_03BC89:        ADC #$20                  ;
CODE_03BC8B:        STA $0248,y               ;
CODE_03BC8E:        LDA #$FB                  ;
CODE_03BC90:        STA $00B1,y               ;
CODE_03BC93:        LDA #$01                  ;
CODE_03BC95:        STA $00CC,y               ;
CODE_03BC98:        STA $0039,y               ;
CODE_03BC9B:        STA $1603                 ;
CODE_03BC9E:        STX $9E                   ;
CODE_03BCA0:        JSR CODE_03BD2C           ;
CODE_03BCA3:        INC $0748                 ;
CODE_03BCA6:        RTS                       ;

CODE_03BCA7:        LDY #$08                  ;
CODE_03BCA9:        LDA $0039,y               ;
CODE_03BCAC:        BEQ CODE_03BCB5           ;
CODE_03BCAE:        DEY                       ;
CODE_03BCAF:        CPY #$05                  ;
CODE_03BCB1:        BNE CODE_03BCA9           ;
CODE_03BCB3:        LDY #$08                  ;
CODE_03BCB5:        STY $06B7                 ;
CODE_03BCB8:        RTS                       ;

;extended sprites MAIN core
CODE_03BCB9:        LDX #$08                  ;\
CODE_03BCBB:        STX $9E                   ; |Iterate through 9 slots of extended sprites
CODE_03BCBD:        LDA $39,x                 ; |
CODE_03BCBF:        BEQ CODE_03BD22           ;/ Continue iterating if empty slot.
CODE_03BCC1:        ASL A                     ;\ If bit 7 set, it's a jumping coin (from [?] blocks)
CODE_03BCC2:        BCC CODE_03BCCA           ;/
CODE_03BCC4:        JSR CODE_03BBBD           ;Otherwise, it's a hammer
CODE_03BCC7:        JMP CODE_03BD22           ;Continue iterating

;proc jumping coin
CODE_03BCCA:        LDY $39,x                 ;\
CODE_03BCCC:        DEY                       ; | Check sprite state. if #$01, run jumping coin.
CODE_03BCCD:        BEQ CODE_03BCEE           ;/
CODE_03BCCF:        INC $39,x                 ;
CODE_03BCD1:        LDA $022A,x               ;\
CODE_03BCD4:        CLC                       ; |
CODE_03BCD5:        ADC $0775                 ; | Add camera scrolling X-Speed to the sprite X position and store it there.
CODE_03BCD8:        STA $022A,x               ; |
CODE_03BCDB:        LDA $89,x                 ; |
CODE_03BCDD:        ADC #$00                  ; |
CODE_03BCDF:        STA $89,x                 ;/
CODE_03BCE1:        LDA $39,x                 ;\
CODE_03BCE3:        CMP #$30                  ; |
CODE_03BCE5:        BNE CODE_03BD0D           ; | Check if floating score reached peak. If so, clear this jumping coin.
CODE_03BCE7:        LDA #$00                  ; |
CODE_03BCE9:        STA $39,x                 ;/
CODE_03BCEB:        JMP CODE_03BD22           ;Continue iterating through extended sprites.

CODE_03BCEE:        TXA                       ;\
CODE_03BCEF:        CLC                       ; |Increase index for next subroutine
CODE_03BCF0:        ADC #$11                  ; |
CODE_03BCF2:        TAX                       ;/
CODE_03BCF3:        LDA #$50                  ;\set downward movement amount
CODE_03BCF5:        STA $00                   ;/
CODE_03BCF7:        LDA #$06                  ;\set maximum vertical speed
CODE_03BCF9:        STA $02                   ;/
CODE_03BCFB:        LSR A                     ;
CODE_03BCFC:        STA $01                   ;
CODE_03BCFE:        LDA #$00                  ;
CODE_03BD00:        JSR CODE_03C18B           ;Impose gravity
CODE_03BD03:        LDX $9E                   ;
CODE_03BD05:        LDA $B1,x                 ;
CODE_03BD07:        CMP #$05                  ;
CODE_03BD09:        BNE CODE_03BD0D           ;
CODE_03BD0B:        INC $39,x                 ;
CODE_03BD0D:        LDA $B1,x                 ;
CODE_03BD0F:        BNE CODE_03BD15           ;
CODE_03BD11:        JSL CODE_05DC7E           ;
CODE_03BD15:        JSR CODE_03FD30           ;
CODE_03BD18:        JSR CODE_03FDB7           ;
CODE_03BD1B:        JSR CODE_03E9BF           ;
CODE_03BD1E:        JSL CODE_05DCA0           ;
CODE_03BD22:        DEX                       ;
CODE_03BD23:        BPL CODE_03BCBB           ;
CODE_03BD25:        RTS                       ;

DATA_03BD26:        db $17,$1D

DATA_03BD28:        db $0B,$11

DATA_03BD2A:        db $02,$13

CODE_03BD2C:        LDA #$01                  ;
CODE_03BD2E:        STA $014A                 ;
CODE_03BD31:        LDX $0753                 ;
CODE_03BD34:        LDY DATA_03BD26,x               ;
CODE_03BD37:        JSR CODE_039CF9           ;
CODE_03BD3A:        INC $075E                 ;
CODE_03BD3D:        LDA $075E                 ;
CODE_03BD40:        CMP #$64                  ;
CODE_03BD42:        BNE CODE_03BD50           ;
CODE_03BD44:        STZ $075E                 ;
CODE_03BD47:        JSL CODE_048596           ;Increase lives by one
CODE_03BD4B:        LDA #$05                  ;\
CODE_03BD4D:        STA $1603                 ;/1-up sound
CODE_03BD50:        LDA #$02                  ;
CODE_03BD52:        STA $0149                 ;
CODE_03BD55:        LDX $0753                 ;
CODE_03BD58:        LDY DATA_03BD28,x               ;
CODE_03BD5B:        JSR CODE_039CF9           ;
CODE_03BD5E:        LDY $0EC3                 ;
CODE_03BD61:        LDA DATA_03BD2A,y               ;
CODE_03BD64:        JSR CODE_039C82           ;
CODE_03BD67:        LDY $1700                 ;
CODE_03BD6A:        LDA $16F6,y               ;
CODE_03BD6D:        BNE CODE_03BD7D           ;
CODE_03BD6F:        LDA #$28                  ;
CODE_03BD71:        LDX $16F2,y               ;
CODE_03BD74:        CPX #$02                  ;
CODE_03BD76:        BNE CODE_03BD7A           ;
CODE_03BD78:        LDA #$24                  ;
CODE_03BD7A:        STA $16F6,y               ;
CODE_03BD7D:        LDX $9E                   ;
CODE_03BD7F:        RTS                       ;

CODE_03BD80:        LDA #$2E                  ;
CODE_03BD82:        STA $25                   ;
CODE_03BD84:        LDA $85,x                 ;
CODE_03BD86:        STA $82                   ;
CODE_03BD88:        LDA $0226,x               ;
CODE_03BD8B:        STA $0223                 ;
CODE_03BD8E:        LDA #$01                  ;
CODE_03BD90:        STA $C5                   ;
CODE_03BD92:        LDA $0244,x               ;
CODE_03BD95:        SEC                       ;
CODE_03BD96:        SBC #$08                  ;
CODE_03BD98:        STA $0241                 ;
CODE_03BD9B:        LDA #$01                  ;
CODE_03BD9D:        STA $32                   ;
CODE_03BD9F:        STA $19                   ;
CODE_03BDA1:        LDA #$03                  ;
CODE_03BDA3:        STA $0499                 ;
CODE_03BDA6:        LDA $020C                 ;
CODE_03BDA9:        CMP #$02                  ;
CODE_03BDAB:        BCS CODE_03BDB8           ;
CODE_03BDAD:        LDA $0756                 ;
CODE_03BDB0:        CMP #$02                  ;
CODE_03BDB2:        BCC CODE_03BDB5           ;
CODE_03BDB4:        LSR A                     ;
CODE_03BDB5:        STA $020C                 ;
CODE_03BDB8:        LDA #$30                  ;
CODE_03BDBA:        STA $0260                 ;
CODE_03BDBD:        LDA #$02                  ;\Item out of [?] box sound
CODE_03BDBF:        STA $1603                 ;/
CODE_03BDC2:        RTS                       ;

CODE_03BDC3:        LDX #$09                  ;
CODE_03BDC5:        STX $9E                   ;
CODE_03BDC7:        LDA $32                   ;
CODE_03BDC9:        BNE CODE_03BDCE           ;
CODE_03BDCB:        JMP CODE_03BE72           ;

CODE_03BDCE:        ASL A                     ;
CODE_03BDCF:        BCC CODE_03BDF5           ;
CODE_03BDD1:        LDA $0747                 ;
CODE_03BDD4:        BNE CODE_03BE1E           ;
CODE_03BDD6:        LDA $020C                 ;
CODE_03BDD9:        BEQ CODE_03BDEC           ;
CODE_03BDDB:        CMP #$03                  ;
CODE_03BDDD:        BEQ CODE_03BDEC           ;
CODE_03BDDF:        CMP #$02                  ;
CODE_03BDE1:        BNE CODE_03BE1E           ;
CODE_03BDE3:        JSR CODE_03CF8A           ;
CODE_03BDE6:        JSR CODE_03E8E1           ;
CODE_03BDE9:        JMP CODE_03BE1E           ;

CODE_03BDEC:        JSR CODE_03CF08           ;
CODE_03BDEF:        JSR CODE_03E72E           ;
CODE_03BDF2:        JMP CODE_03BE1E           ;

CODE_03BDF5:        LDA $09                   ;
CODE_03BDF7:        AND #$03                  ;
CODE_03BDF9:        BNE CODE_03BE15           ;
CODE_03BDFB:        DEC $0241                 ;
CODE_03BDFE:        LDA $32                   ;
CODE_03BE00:        INC $32                   ;
CODE_03BE02:        CMP #$11                  ;
CODE_03BE04:        BCC CODE_03BE15           ;
CODE_03BE06:        LDA #$10                  ;
CODE_03BE08:        STA $5E,x                 ;
CODE_03BE0A:        LDA #$80                  ;
CODE_03BE0C:        STA $32                   ;
CODE_03BE0E:        ASL A                     ;
CODE_03BE0F:        STA $0260                 ;
CODE_03BE12:        ROL A                     ;
CODE_03BE13:        STA $47,x                 ;
CODE_03BE15:        LDA $32                   ;
CODE_03BE17:        CMP #$06                  ;
CODE_03BE19:        BCS CODE_03BE1E           ;
CODE_03BE1B:        JMP CODE_03BE72           ;

CODE_03BE1E:        JMP CODE_03BE60           ;

CODE_03BE21:        LDA $79,x                 ;
CODE_03BE23:        STA $E9                   ;
CODE_03BE25:        LDA $021A,x               ;
CODE_03BE28:        STA $E8                   ;
CODE_03BE2A:        REP #$20                  ;
CODE_03BE2C:        LDA $E8                   ;
CODE_03BE2E:        CMP $42                   ;
CODE_03BE30:        BCS CODE_03BE43           ;
CODE_03BE32:        CLC                       ;
CODE_03BE33:        ADC #$000C                ;
CODE_03BE36:        STA $E6                   ;
CODE_03BE38:        SEP #$20                  ;
CODE_03BE3A:        LDA $E6                   ;
CODE_03BE3C:        STA $021A,x               ;
CODE_03BE3F:        LDA $E7                   ;
CODE_03BE41:        STA $79,x                 ;
CODE_03BE43:        SEP #$20                  ;
CODE_03BE45:        JSR CODE_03FD39           ;
CODE_03BE48:        JSR CODE_03FDCB           ;
CODE_03BE4B:        JSR CODE_03E9CC           ;
CODE_03BE4E:        JSR CODE_03ED03           ;
CODE_03BE51:        JSR CODE_03DE55           ;
CODE_03BE54:        JSR CODE_03DC03           ;
CODE_03BE57:        LDA $E8                   ;
CODE_03BE59:        STA $021A,x               ;
CODE_03BE5C:        LDA $E9                   ;
CODE_03BE5E:        STA $79,x                 ;
CODE_03BE60:        JSR CODE_03FD39           ;
CODE_03BE63:        JSR CODE_03FDCB           ;
CODE_03BE66:        JSR CODE_03E9CC           ;
CODE_03BE69:        JSR CODE_03ED03           ;
CODE_03BE6C:        JSR CODE_03DE55           ;
CODE_03BE6F:        JSR CODE_03DC03           ;
CODE_03BE72:        RTS                       ;

DATA_03BE73:        db $04,$12

CODE_03BE75:        PHA                       ;code related to breaking bricks.
CODE_03BE76:        LDA #$11                  ;Make brick bounce block shatter
CODE_03BE78:        LDX $03F0                 ;Get bounce block index
CODE_03BE7B:        LDY $0754                 ;\
CODE_03BE7E:        BNE CODE_03BE82           ;/ Skip next instruction if big Mario
CODE_03BE80:        LDA #$12                  ;\Make brick bounce block bounce
CODE_03BE82:        STA $35,x                 ;/
CODE_03BE84:        JSR CODE_03938E           ;
CODE_03BE87:        LDX $03F0                 ;
CODE_03BE8A:        LDA $02                   ;
CODE_03BE8C:        STA $03E6,x               ;
CODE_03BE8F:        TAY                       ;
CODE_03BE90:        LDA $06                   ;
CODE_03BE92:        STA $03E8,x               ;
CODE_03BE95:        LDA ($06),y               ;
CODE_03BE97:        JSR CODE_03BF95           ;
CODE_03BE9A:        STA $00                   ;
CODE_03BE9C:        LDY $0754                 ;
CODE_03BE9F:        BNE CODE_03BEA2           ;
CODE_03BEA1:        TYA                       ;
CODE_03BEA2:        BCC CODE_03BEC9           ;
CODE_03BEA4:        LDY #$11                  ;
CODE_03BEA6:        STY $35,x                 ;
CODE_03BEA8:        LDA #$FC                  ;
CODE_03BEAA:        LDY $00                   ;
CODE_03BEAC:        CPY #$5B                  ;
CODE_03BEAE:        BEQ CODE_03BEB4           ;
CODE_03BEB0:        CPY #$60                  ;
CODE_03BEB2:        BNE CODE_03BEC9           ;
CODE_03BEB4:        LDA $06BC                 ;
CODE_03BEB7:        BNE CODE_03BEC1           ;
CODE_03BEB9:        LDA #$0B                  ;
CODE_03BEBB:        STA $07AD                 ;
CODE_03BEBE:        INC $06BC                 ;
CODE_03BEC1:        LDA $07AD                 ;
CODE_03BEC4:        BNE CODE_03BEC8           ;
CODE_03BEC6:        LDY #$FC                  ;
CODE_03BEC8:        TYA                       ;
CODE_03BEC9:        STA $03EA,x               ;
CODE_03BECC:        JSR CODE_03BF0D           ;
CODE_03BECF:        LDY $02                   ;
CODE_03BED1:        LDA #$27                  ;
CODE_03BED3:        STA ($06),y               ;
CODE_03BED5:        LDA #$10                  ;
CODE_03BED7:        STA $078C                 ;
CODE_03BEDA:        PLA                       ;
CODE_03BEDB:        STA $05                   ;
CODE_03BEDD:        LDY #$00                  ;
CODE_03BEDF:        LDA $0714                 ;
CODE_03BEE2:        BNE CODE_03BEE9           ;
CODE_03BEE4:        LDA $0754                 ;
CODE_03BEE7:        BEQ CODE_03BEEA           ;
CODE_03BEE9:        INY                       ;
CODE_03BEEA:        LDA $0237                 ;
CODE_03BEED:        CLC                       ;
CODE_03BEEE:        ADC DATA_03BE73,y               ;
CODE_03BEF1:        AND #$F0                  ;
CODE_03BEF3:        STA $0244,x               ;
CODE_03BEF6:        LDY $35,x                 ;
CODE_03BEF8:        CPY #$11                  ;
CODE_03BEFA:        BEQ CODE_03BF01           ;
CODE_03BEFC:        JSR CODE_03BFA1           ;
CODE_03BEFF:        BRA CODE_03BF04           ;

CODE_03BF01:        JSR CODE_03BF2C           ;
CODE_03BF04:        LDA $03F0                 ;
CODE_03BF07:        EOR #$01                  ;
CODE_03BF09:        STA $03F0                 ;
CODE_03BF0C:        RTS                       ;

CODE_03BF0D:        LDA $0219                 ;
CODE_03BF10:        CLC                       ;
CODE_03BF11:        ADC #$08                  ;
CODE_03BF13:        AND #$F0                  ;
CODE_03BF15:        STA $0226,x               ;
CODE_03BF18:        STA $0E16                 ;
CODE_03BF1B:        LDA $78                   ;
CODE_03BF1D:        ADC #$00                  ;
CODE_03BF1F:        STA $85,x                 ;
CODE_03BF21:        STA $03EC,x               ;
CODE_03BF24:        STA $0E17                 ;
CODE_03BF27:        LDA $BB                   ;
CODE_03BF29:        STA $C8,x                 ;
CODE_03BF2B:        RTS                       ;

CODE_03BF2C:        JSR CODE_03BFC6           ;
CODE_03BF2F:        LDA #$01                  ;\"Mario hits ceiling/shell hits wall" sound
CODE_03BF31:        STA $1600                 ;/
CODE_03BF34:        STZ $6A,x                 ;Horizontal speed of bounce blocks: none
CODE_03BF36:        STZ $0449,x               ;
CODE_03BF39:        STZ $A0                   ;No vertical speed of Mario
CODE_03BF3B:        LDA #$FE                  ;\Vertical speed of bounce blocks
CODE_03BF3D:        STA $AD,x                 ;/
CODE_03BF3F:        LDA $05                   ;
CODE_03BF41:        JSR CODE_03BF95           ;
CODE_03BF44:        BCC CODE_03BF86           ;
CODE_03BF46:        TYA                       ;
CODE_03BF47:        CMP #$09                  ;
CODE_03BF49:        BCC CODE_03BF4D           ;
CODE_03BF4B:        SBC #$05                  ;
CODE_03BF4D:        ASL A                     ;
CODE_03BF4E:        TAY                       ;
CODE_03BF4F:        LDA PNTR_03BF5C,y      ;
CODE_03BF52:        STA $04                   ;
CODE_03BF54:        LDA PNTR_03BF5C+1,y               ;
CODE_03BF57:        STA $05                   ;
CODE_03BF59:        JMP ($0004)               ;

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

CODE_03BF6E:        LDA #$00                  ;\Spawn Mushroom
CODE_03BF70:        BRA CODE_03BF78           ;/

CODE_03BF72:        LDA #$02                  ;\Spawn Star
CODE_03BF74:        BRA CODE_03BF78           ;/

CODE_03BF76:        LDA #$03                  ;\Spawn 1-Up
CODE_03BF78:        STA $020C                 ;/
CODE_03BF7B:        JMP CODE_03BD80           ;

CODE_03BF7E:        LDX #$09                  ;\Spawn vine?
CODE_03BF80:        LDY $03F0                 ; |Sprite index: $09
CODE_03BF83:        JSR CODE_03B9FD           ;/ Y = ???
CODE_03BF86:        RTS                       ;

DATA_03BF87:        db $E8,$E7,$62,$63,$58,$59,$5A,$5B
                    db $5C,$5D,$5E,$5F,$60,$61

CODE_03BF95:        LDY #$0D                  ;
CODE_03BF97:        CMP DATA_03BF87,y               ;
CODE_03BF9A:        BEQ CODE_03BFA0           ;
CODE_03BF9C:        DEY                       ;
CODE_03BF9D:        BPL CODE_03BF97           ;
CODE_03BF9F:        CLC                       ;
CODE_03BFA0:        RTS                       ;

CODE_03BFA1:        JSR CODE_03BFC6           ;
CODE_03BFA4:        LDA #$01                  ;
CODE_03BFA6:        STA $03EE,x               ;
CODE_03BFA9:        LDA $1603                 ;\ 
CODE_03BFAC:        BNE CODE_03BFB3           ; |If there's no SFX playing already
CODE_03BFAE:        LDA #$07                  ; |Shatter bricks sound
CODE_03BFB0:        STA $1603                 ;/
CODE_03BFB3:        JSR CODE_03BFED           ;
CODE_03BFB6:        LDA #$FE                  ;
CODE_03BFB8:        STA $A0                   ;
CODE_03BFBA:        LDA #$05                  ;
CODE_03BFBC:        STA $014A                 ;
CODE_03BFBF:        JSR CODE_03BD55           ;
CODE_03BFC2:        LDX $03F0                 ;
CODE_03BFC5:        RTS                       ;

CODE_03BFC6:        LDX $03F0                 ;
CODE_03BFC9:        LDY $02                   ;
CODE_03BFCB:        BEQ CODE_03BFEC           ;
CODE_03BFCD:        TYA                       ;
CODE_03BFCE:        SEC                       ;
CODE_03BFCF:        SBC #$10                  ;
CODE_03BFD1:        STA $02                   ;
CODE_03BFD3:        TAY                       ;
CODE_03BFD4:        LDA ($06),y               ;
CODE_03BFD6:        CMP #$E9                  ;
CODE_03BFD8:        BNE CODE_03BFEC           ;
CODE_03BFDA:        LDA #$00                  ;
CODE_03BFDC:        STA ($06),y               ;
CODE_03BFDE:        LDA #$01                  ;\
CODE_03BFE0:        STA $1603                 ;/Coin sound
CODE_03BFE3:        JSR CODE_039373           ;
CODE_03BFE6:        LDX $03F0                 ;
CODE_03BFE9:        JSR CODE_03BC73           ;
CODE_03BFEC:        RTS                       ;

CODE_03BFED:        LDA $0226,x               ;
CODE_03BFF0:        STA $03F3,x               ;
CODE_03BFF3:        LDA #$F0                  ;
CODE_03BFF5:        STA $6A,x                 ;
CODE_03BFF7:        STA $6C,x                 ;
CODE_03BFF9:        LDA #$FA                  ;
CODE_03BFFB:        STA $AD,x                 ;
CODE_03BFFD:        LDA #$FC                  ;
CODE_03BFFF:        STA $AF,x                 ;
CODE_03C001:        STZ $0449,x               ;
CODE_03C004:        STZ $044B,x               ;
CODE_03C007:        LDA $85,x                 ;
CODE_03C009:        STA $87,x                 ;
CODE_03C00B:        LDA $0226,x               ;
CODE_03C00E:        STA $0228,x               ;
CODE_03C011:        LDA $0244,x               ;
CODE_03C014:        CLC                       ;
CODE_03C015:        ADC #$08                  ;
CODE_03C017:        STA $0246,x               ;
CODE_03C01A:        LDA #$FA                  ;
CODE_03C01C:        STA $AD,x                 ;
CODE_03C01E:        RTS                       ;

CODE_03C01F:        LDA $35,x                 ;
CODE_03C021:        BEQ CODE_03C083           ;
CODE_03C023:        AND #$0F                  ;
CODE_03C025:        PHA                       ;
CODE_03C026:        TAY                       ;
CODE_03C027:        TXA                       ;
CODE_03C028:        CLC                       ;
CODE_03C029:        ADC #$0D                  ;
CODE_03C02B:        TAX                       ;
CODE_03C02C:        DEY                       ;
CODE_03C02D:        BEQ CODE_03C062           ;
CODE_03C02F:        JSR CODE_03C153           ;
CODE_03C032:        JSR CODE_03C0BA           ;
CODE_03C035:        INX                       ;
CODE_03C036:        INX                       ;
CODE_03C037:        JSR CODE_03C153           ;
CODE_03C03A:        JSR CODE_03C0BA           ;
CODE_03C03D:        LDX $9E                   ;
CODE_03C03F:        JSR CODE_03FD40           ;
CODE_03C042:        JSR CODE_03FDD1           ;
CODE_03C045:        JSR CODE_03F3AC           ;
CODE_03C048:        PLA                       ;
CODE_03C049:        LDY $C8,x                 ;
CODE_03C04B:        BEQ CODE_03C083           ;
CODE_03C04D:        PHA                       ;
CODE_03C04E:        LDA #$F0                  ;
CODE_03C050:        CMP $0246,x               ;
CODE_03C053:        BCS CODE_03C058           ;
CODE_03C055:        STA $0246,x               ;
CODE_03C058:        LDA $0244,x               ;
CODE_03C05B:        CMP #$F0                  ;
CODE_03C05D:        PLA                       ;
CODE_03C05E:        BCC CODE_03C083           ;
CODE_03C060:        BCS CODE_03C081           ;
CODE_03C062:        JSR CODE_03C153           ;
CODE_03C065:        LDX $9E                   ;
CODE_03C067:        JSR CODE_03FD40           ;
CODE_03C06A:        JSR CODE_03FDD1           ;
CODE_03C06D:        JSR CODE_03F358           ;
CODE_03C070:        PLA                       ;
CODE_03C071:        STA $35,x                 ;
CODE_03C073:        LDA $0244,x               ;
CODE_03C076:        AND #$0F                  ;
CODE_03C078:        CMP #$05                  ;
CODE_03C07A:        BCS CODE_03C083           ;
CODE_03C07C:        LDA #$01                  ;
CODE_03C07E:        STA $03EE,x               ;
CODE_03C081:        STZ $35,x                 ;
CODE_03C083:        RTS                       ;

CODE_03C084:        LDX #$01                  ;
CODE_03C086:        STX $9E                   ;
CODE_03C088:        LDA $03EE,x               ;
CODE_03C08B:        BEQ CODE_03C0A9           ;
CODE_03C08D:        LDA $03E8,x               ;
CODE_03C090:        STA $06                   ;
CODE_03C092:        LDA #$05                  ;
CODE_03C094:        STA $07                   ;
CODE_03C096:        LDA $03E6,x               ;
CODE_03C099:        STA $02                   ;
CODE_03C09B:        TAY                       ;
CODE_03C09C:        LDA $03EA,x               ;
CODE_03C09F:        STA ($06),y               ;
CODE_03C0A1:        JSR CODE_039384           ;
CODE_03C0A4:        LDA #$00                  ;
CODE_03C0A6:        STA $03EE,x               ;
CODE_03C0A9:        DEX                       ;
CODE_03C0AA:        BPL CODE_03C086           ;
CODE_03C0AC:        RTS                       ;

CODE_03C0AD:        INX                       ;
CODE_03C0AE:        JSR CODE_03C0BA           ;
CODE_03C0B1:        LDX $9E                   ;
CODE_03C0B3:        RTS                       ;

CODE_03C0B4:        LDA $070E                 ;
CODE_03C0B7:        BNE CODE_03C0FC           ;
CODE_03C0B9:        TAX                       ;
CODE_03C0BA:        LDA $5D,x                 ;
CODE_03C0BC:        ASL A                     ;
CODE_03C0BD:        ASL A                     ;
CODE_03C0BE:        ASL A                     ;
CODE_03C0BF:        ASL A                     ;
CODE_03C0C0:        STA $01                   ;
CODE_03C0C2:        LDA $5D,x                 ;
CODE_03C0C4:        LSR A                     ;
CODE_03C0C5:        LSR A                     ;
CODE_03C0C6:        LSR A                     ;
CODE_03C0C7:        LSR A                     ;
CODE_03C0C8:        CMP #$08                  ;
CODE_03C0CA:        BCC CODE_03C0CE           ;
CODE_03C0CC:        ORA #$F0                  ;
CODE_03C0CE:        STA $00                   ;
CODE_03C0D0:        STA $0EB6                 ;
CODE_03C0D3:        LDY #$00                  ;
CODE_03C0D5:        CMP #$00                  ;
CODE_03C0D7:        BPL CODE_03C0DA           ;
CODE_03C0D9:        DEY                       ;
CODE_03C0DA:        STY $02                   ;
CODE_03C0DC:        LDA $0401,x               ;
CODE_03C0DF:        CLC                       ;
CODE_03C0E0:        ADC $01                   ;
CODE_03C0E2:        STA $0401,x               ;
CODE_03C0E5:        LDA #$00                  ;
CODE_03C0E7:        ROL A                     ;
CODE_03C0E8:        PHA                       ;
CODE_03C0E9:        ROR A                     ;
CODE_03C0EA:        LDA $0219,x               ;
CODE_03C0ED:        ADC $00                   ;
CODE_03C0EF:        STA $0219,x               ;
CODE_03C0F2:        LDA $78,x                 ;
CODE_03C0F4:        ADC $02                   ;
CODE_03C0F6:        STA $78,x                 ;
CODE_03C0F8:        PLA                       ;
CODE_03C0F9:        CLC                       ;
CODE_03C0FA:        ADC $00                   ;
CODE_03C0FC:        RTS                       ;

CODE_03C0FD:        LDX #$00                  ;
CODE_03C0FF:        LDA $0747                 ;
CODE_03C102:        BNE CODE_03C109           ;
CODE_03C104:        LDA $070E                 ;
CODE_03C107:        BNE CODE_03C0FC           ;
CODE_03C109:        LDA $0709                 ;
CODE_03C10C:        STA $00                   ;
CODE_03C10E:        LDA #$04                  ;
CODE_03C110:        JMP CODE_03C15C           ;

CODE_03C113:        LDY #$3D                  ;\
CODE_03C115:        LDA $29,x                 ; |
CODE_03C117:        CMP #$05                  ; |If sprite state is #$05, Y = $20, else, Y = $3D
CODE_03C119:        BNE CODE_03C142           ; |
CODE_03C11B:        LDY #$20                  ; |
CODE_03C11D:        BRA CODE_03C142           ;/

CODE_03C11F:        LDY #$00                  ;
CODE_03C121:        BRA CODE_03C125           ;

CODE_03C123:        LDY #$01                  ;
CODE_03C125:        INX                       ;
CODE_03C126:        LDA #$03                  ;
CODE_03C128:        STA $00                   ;
CODE_03C12A:        LDA #$06                  ;
CODE_03C12C:        STA $01                   ;
CODE_03C12E:        LDA #$02                  ;
CODE_03C130:        STA $02                   ;
CODE_03C132:        TYA                       ;
CODE_03C133:        JMP CODE_03C181           ;

CODE_03C136:        LDY #$7F                  ;
CODE_03C138:        BNE CODE_03C13C           ;
CODE_03C13A:        LDY #$0F                  ;
CODE_03C13C:        LDA #$02                  ;
CODE_03C13E:        BNE CODE_03C144           ;
CODE_03C140:        LDY #$1C                  ;
CODE_03C142:        LDA #$03                  ;
CODE_03C144:        STY $00                   ;
CODE_03C146:        INX                       ;
CODE_03C147:        JSR CODE_03C15C           ;
CODE_03C14A:        LDX $9E                   ;
CODE_03C14C:        RTS                       ;

DATA_03C14D:        db $06,$08

CODE_03C14F:        LDY #$00                  ;
CODE_03C151:        BRA CODE_03C153           ;

CODE_03C153:        LDY #$01                  ;
CODE_03C155:        LDA #$50                  ;
CODE_03C157:        STA $00                   ;
CODE_03C159:        LDA DATA_03C14D,y               ;
CODE_03C15C:        STA $02                   ;
CODE_03C15E:        LDA #$00                  ;
CODE_03C160:        JMP CODE_03C18B           ;Impose gravity

CODE_03C163:        LDA #$00                  ;
CODE_03C165:        BRA CODE_03C169           ;

CODE_03C167:        LDA #$01                  ;
CODE_03C169:        PHA                       ;
CODE_03C16A:        LDY $1C,x                 ;
CODE_03C16C:        INX                       ;
CODE_03C16D:        LDA #$05                  ;
CODE_03C16F:        CPY #$29                  ;
CODE_03C171:        BNE CODE_03C175           ;
CODE_03C173:        LDA #$09                  ;
CODE_03C175:        STA $00                   ;
CODE_03C177:        LDA #$0A                  ;
CODE_03C179:        STA $01                   ;
CODE_03C17B:        LDA #$03                  ;
CODE_03C17D:        STA $02                   ;
CODE_03C17F:        PLA                       ;
CODE_03C180:        TAY                       ;
CODE_03C181:        JSR CODE_03C18B           ;Impose gravity
CODE_03C184:        LDX $9E                   ;
CODE_03C186:        RTS                       ;

CODE_03C187:        JSR CODE_03C18B           ;Impose gravity
CODE_03C18A:        RTL                       ;

;Impose gravity
;$00 - Downward force
;$01 - Upward force
;$07 - adder for vertical position
CODE_03C18B:        PHA                       ;
CODE_03C18C:        LDA $041C,x               ;
CODE_03C18F:        CLC                       ;
CODE_03C190:        ADC $043C,x               ;
CODE_03C193:        STA $041C,x               ;
CODE_03C196:        LDY #$00                  ;
CODE_03C198:        LDA $A0,x                 ;
CODE_03C19A:        BPL CODE_03C19D           ;
CODE_03C19C:        DEY                       ;
CODE_03C19D:        STY $07                   ;
CODE_03C19F:        ADC $0237,x               ;
CODE_03C1A2:        STA $0237,x               ;
CODE_03C1A5:        LDA $BB,x                 ;
CODE_03C1A7:        ADC $07                   ;
CODE_03C1A9:        STA $BB,x                 ;
CODE_03C1AB:        LDA $043C,x               ;
CODE_03C1AE:        CLC                       ;
CODE_03C1AF:        ADC $00                   ;
CODE_03C1B1:        STA $043C,x               ;
CODE_03C1B4:        LDA $A0,x                 ;
CODE_03C1B6:        ADC #$00                  ;
CODE_03C1B8:        STA $A0,x                 ;
CODE_03C1BA:        CMP $02                   ;
CODE_03C1BC:        BMI CODE_03C1CC           ;
CODE_03C1BE:        LDA $043C,x               ;
CODE_03C1C1:        CMP #$80                  ;
CODE_03C1C3:        BCC CODE_03C1CC           ;
CODE_03C1C5:        LDA $02                   ;
CODE_03C1C7:        STA $A0,x                 ;
CODE_03C1C9:        STZ $043C,x               ;
CODE_03C1CC:        PLA                       ;
CODE_03C1CD:        BEQ CODE_03C1F9           ;
CODE_03C1CF:        LDA $02                   ;
CODE_03C1D1:        EOR #$FF                  ;
CODE_03C1D3:        INC A                     ;
CODE_03C1D4:        STA $07                   ;
CODE_03C1D6:        LDA $043C,x               ;
CODE_03C1D9:        SEC                       ;
CODE_03C1DA:        SBC $01                   ;
CODE_03C1DC:        STA $043C,x               ;
CODE_03C1DF:        LDA $A0,x                 ;
CODE_03C1E1:        SBC #$00                  ;
CODE_03C1E3:        STA $A0,x                 ;
CODE_03C1E5:        CMP $07                   ;
CODE_03C1E7:        BPL CODE_03C1F9           ;
CODE_03C1E9:        LDA $043C,x               ;
CODE_03C1EC:        CMP #$80                  ;
CODE_03C1EE:        BCS CODE_03C1F9           ;
CODE_03C1F0:        LDA $07                   ;
CODE_03C1F2:        STA $A0,x                 ;
CODE_03C1F4:        LDA #$FF                  ;
CODE_03C1F6:        STA $043C,x               ;
CODE_03C1F9:        RTS                       ;

CODE_03C1FA:        LDA $0E9D,x               ;
CODE_03C1FD:        BEQ CODE_03C261           ;
CODE_03C1FF:        INC $0EA2,x               ;
CODE_03C202:        LDA $0EA2,x               ;
CODE_03C205:        LSR A                     ;
CODE_03C206:        LSR A                     ;
CODE_03C207:        LSR A                     ;
CODE_03C208:        CMP #$03                  ;
CODE_03C20A:        BEQ CODE_03C262           ;
CODE_03C20C:        ASL A                     ;
CODE_03C20D:        CLC                       ;
CODE_03C20E:        ADC #$40                  ;
CODE_03C210:        STA $E4                   ;
CODE_03C212:        LDA $0EAC,x               ;
CODE_03C215:        STA $E5                   ;
CODE_03C217:        LDA $0EA7,x               ;
CODE_03C21A:        STA $E6                   ;
CODE_03C21C:        REP #$20                  ;
CODE_03C21E:        LDA $E5                   ;
CODE_03C220:        SEC                       ;
CODE_03C221:        SBC $42                   ;
CODE_03C223:        PHA                       ;
CODE_03C224:        LDA $0EB5                 ;
CODE_03C227:        BMI CODE_03C230           ;
CODE_03C229:        PLA                       ;
CODE_03C22A:        CLC                       ;
CODE_03C22B:        ADC #$000C                ;
CODE_03C22E:        BRA CODE_03C235           ;

CODE_03C230:        PLA                       ;
CODE_03C231:        SEC                       ;
CODE_03C232:        SBC #$000C                ;
CODE_03C235:        STA $E5                   ;
CODE_03C237:        SEP #$20                  ;
CODE_03C239:        PHY                       ;
CODE_03C23A:        LDY $0B46,x               ;
CODE_03C23D:        LDA $E5                   ;
CODE_03C23F:        STA $0900,y               ;
CODE_03C242:        LDA $0EB1,x               ;
CODE_03C245:        STA $0901,y               ;
CODE_03C248:        LDA $E4                   ;
CODE_03C24A:        STA $0902,y               ;
CODE_03C24D:        LDA #$2D                  ;
CODE_03C24F:        STA $0903,y               ;
CODE_03C252:        LDA #$02                  ;
CODE_03C254:        STA $0D00,y               ;
CODE_03C257:        LDA $E6                   ;
CODE_03C259:        BEQ CODE_03C260           ;
CODE_03C25B:        LDA #$03                  ;
CODE_03C25D:        STA $0D00,y               ;
CODE_03C260:        PLY                       ;
CODE_03C261:        RTS                       ;

CODE_03C262:        STZ $0E9D,x               ;
CODE_03C265:        TXA                       ;
CODE_03C266:        ASL A                     ;
CODE_03C267:        ASL A                     ;
CODE_03C268:        ASL A                     ;
CODE_03C269:        STA $E8                   ;
CODE_03C26B:        ASL A                     ;
CODE_03C26C:        CLC                       ;
CODE_03C26D:        ADC $E8                   ;
CODE_03C26F:        PHX                       ;
CODE_03C270:        TAX                       ;
CODE_03C271:        LDA #$F0                  ;
CODE_03C273:        STA $0901,x               ;
CODE_03C276:        STZ $0D00,x               ;
CODE_03C279:        PLX                       ;
CODE_03C27A:        RTS                       ;

CODE_03C27B:        STA $0E9D,x               ;
CODE_03C27E:        STZ $0EA2,x               ;
CODE_03C281:        LDA $021A,x               ;
CODE_03C284:        STA $0EAC,x               ;
CODE_03C287:        LDA $79,x                 ;
CODE_03C289:        STA $0EA7,x               ;
CODE_03C28C:        LDA $0238,x               ;
CODE_03C28F:        CLC                       ;
CODE_03C290:        ADC #$08                  ;
CODE_03C292:        STA $0EB1,x               ;
CODE_03C295:        RTS                       ;

CODE_03C296:        LDA $0E7F                 ;
CODE_03C299:        LSR A                     ;
CODE_03C29A:        BCC CODE_03C2EB           ;
CODE_03C29C:        LDA $1201                 ;
CODE_03C29F:        BMI CODE_03C2E1           ;
CODE_03C2A1:        LDA $1680                 ;
CODE_03C2A4:        BEQ CODE_03C2AB           ;
CODE_03C2A6:        LDA $1201                 ;
CODE_03C2A9:        BEQ CODE_03C2B0           ;
CODE_03C2AB:        DEC $1201                 ;
CODE_03C2AE:        BNE CODE_03C317           ;
CODE_03C2B0:        LDA #$80                  ;
CODE_03C2B2:        STA $2100                 ;
CODE_03C2B5:        STA $1201                 ;
CODE_03C2B8:        STZ $420C                 ;
CODE_03C2BB:        STZ $1203                 ;
CODE_03C2BE:        STZ $0B75                 ;
CODE_03C2C1:        STZ $1680                 ;
CODE_03C2C4:        LDA $701FF2               ;
CODE_03C2C8:        BEQ CODE_03C2D7           ;
CODE_03C2CA:        LDA $0EC8                 ;
CODE_03C2CD:        BNE CODE_03C2D3           ;
CODE_03C2CF:        JML CODE_008139           ;

CODE_03C2D3:        JML CODE_0080DE           ;

CODE_03C2D7:        JSL CODE_048000           ;
CODE_03C2DB:        JSR CODE_03C33B           ;Hide all OAM tiles
CODE_03C2DE:        JSR CODE_03C366           ;
CODE_03C2E1:        STZ $0E7F                 ;
CODE_03C2E4:        LDA #$01                  ;
CODE_03C2E6:        STA $0774                 ;
CODE_03C2E9:        BRA CODE_03C317           ;

CODE_03C2EB:        LDA $0E66                 ;
CODE_03C2EE:        BNE CODE_03C2FB           ;
CODE_03C2F0:        LDA $0E                   ;
CODE_03C2F2:        BNE CODE_03C2FB           ;
CODE_03C2F4:        LDA #$01                  ;
CODE_03C2F6:        STA $0E                   ;
CODE_03C2F8:        JSR CODE_03AD70           ;
CODE_03C2FB:        STZ $0E67                 ;
CODE_03C2FE:        LDA $1201                 ;
CODE_03C301:        CMP #$0F                  ;
CODE_03C303:        BEQ CODE_03C30F           ;
CODE_03C305:        INC $1201                 ;
CODE_03C308:        LDA $1201                 ;
CODE_03C30B:        CMP #$0F                  ;
CODE_03C30D:        BNE CODE_03C317           ;
CODE_03C30F:        STZ $0E7F                 ;
CODE_03C312:        STZ $0774                 ;
CODE_03C315:        STZ $0E                   ;
CODE_03C317:        LDA $0E4F                 ;\
CODE_03C31A:        BEQ CODE_03C33A           ;/Skip if no pipe fadeout
CODE_03C31C:        JSR CODE_03C33B           ;Hide all OAM tiles
CODE_03C31F:        LDA $1201                 ;\ Load brightness
CODE_03C322:        EOR #$0F                  ; |Inverse the last nibble
CODE_03C324:        ASL A                     ; |\<<4
CODE_03C325:        ASL A                     ; | |
CODE_03C326:        ASL A                     ; | |
CODE_03C327:        ASL A                     ; |/
CODE_03C328:        ORA #$0F                  ; | Affect all the layers
CODE_03C32A:        STA $0E7E                 ;/Store into mosaic register
CODE_03C32D:        JSR CODE_03C354           ;Also hide player's OAM tiles for good measure (even though they were hidden already)
CODE_03C330:        LDA $1201                 ;\
CODE_03C333:        CMP #$0F                  ; |
CODE_03C335:        BNE CODE_03C33A           ; | Clear pipe fading flag if brightness is maximum
CODE_03C337:        STZ $0E4F                 ;/
CODE_03C33A:        RTS                       ;

CODE_03C33B:        PHX                       ;\
CODE_03C33C:        LDX #$00                  ; |
CODE_03C33E:        LDA #$F0                  ; |
CODE_03C340:        STA $0801,x               ; |
CODE_03C343:        STA $0901,x               ; |
CODE_03C346:        STZ $0C00,x               ; | Hides all OAM tiles by setting their Y position off-screen
CODE_03C349:        STZ $0D00,x               ; | and also zeroing out something
CODE_03C34C:        INX                       ; |
CODE_03C34D:        INX                       ; |
CODE_03C34E:        INX                       ; |
CODE_03C34F:        INX                       ; |
CODE_03C350:        BNE CODE_03C340           ; |
CODE_03C352:        PLX                       ; |
CODE_03C353:        RTS                       ;/

CODE_03C354:        PHY                       ;\
CODE_03C355:        LDY #$D0                  ; |
CODE_03C357:        LDA #$F0                  ; |
CODE_03C359:        STA $0801,y               ; |
CODE_03C35C:        INY                       ; | Hides player's OAM tiles by setting their Y position off-screen
CODE_03C35D:        INY                       ; |
CODE_03C35E:        INY                       ; |
CODE_03C35F:        INY                       ; |
CODE_03C360:        CPY #$F0                  ; |
CODE_03C362:        BNE CODE_03C359           ; |
CODE_03C364:        PLY                       ; |
CODE_03C365:        RTS                       ;/

CODE_03C366:        JSL CODE_04ED2E           ;
CODE_03C36A:        STZ $0BA5                 ;
CODE_03C36D:        STZ $0F06                 ;
CODE_03C370:        STZ $0ED1                 ;
CODE_03C373:        STZ $0E40                 ;
CODE_03C376:        STZ $0E41                 ;
CODE_03C379:        STZ $0E42                 ;
CODE_03C37C:        STZ $0EDC                 ;
CODE_03C37F:        LDA $0E66                 ;
CODE_03C382:        BNE CODE_03C392           ;
CODE_03C384:        LDA $0237                 ;
CODE_03C387:        STA $03B8                 ;
CODE_03C38A:        LDA $0219                 ;
CODE_03C38D:        STA $03AD                 ;
CODE_03C390:        BRA CODE_03C395           ;

CODE_03C392:        STZ $0E66                 ;
CODE_03C395:        STZ $0E                   ;
CODE_03C397:        RTS                       ;

DATA_03C398:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;Looks like some empty space.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_03C3B0:        LDA $10,x                 ;
CODE_03C3B2:        PHA                       ;
CODE_03C3B3:        ASL A                     ;
CODE_03C3B4:        BCS CODE_03C3C8           ;
CODE_03C3B6:        PLA                       ;
CODE_03C3B7:        BEQ CODE_03C3BC           ;
CODE_03C3B9:        JMP CODE_03CCA8           ;

CODE_03C3BC:        LDA $071F                 ;
CODE_03C3BF:        AND #$07                  ;
CODE_03C3C1:        CMP #$07                  ;
CODE_03C3C3:        BEQ CODE_03C3D3           ;
CODE_03C3C5:        JMP CODE_03C43C           ;

CODE_03C3C8:        PLA                       ;
CODE_03C3C9:        AND #$0F                  ;
CODE_03C3CB:        TAY                       ;
CODE_03C3CC:        LDA $0010,y               ;
CODE_03C3CF:        BNE CODE_03C3D3           ;
CODE_03C3D1:        STA $10,x                 ;
CODE_03C3D3:        RTS                       ;

DATA_03C3D4:        db $03,$03,$06,$06,$06,$06,$06,$06
                    db $07,$07,$07

DATA_03C3DF:        db $05,$09,$04,$05,$06,$08,$09,$0A
                    db $07,$0B,$10

DATA_03C3EA:        db $40,$B0,$B0,$80,$40,$40,$80,$40
                    db $F0,$F0,$F0

CODE_03C3F5:        LDA $78                   ;\
CODE_03C3F7:        SEC                       ; |
CODE_03C3F8:        SBC #$04                  ; |Take the player back 4 pages
CODE_03C3FA:        STA $78                   ;/
CODE_03C3FC:        LDA $0725                 ;\
CODE_03C3FF:        SEC                       ; |Take the screen number back 4 pages
CODE_03C400:        SBC #$04                  ; |
CODE_03C402:        STA $0725                 ;/
CODE_03C405:        LDA $071A                 ;\
CODE_03C408:        SEC                       ; |
CODE_03C409:        SBC #$04                  ; | Take coordinates of left side of screen back 4 pages
CODE_03C40B:        STA $071A                 ;/
CODE_03C40E:        LDA $071B                 ;\
CODE_03C411:        SEC                       ; |
CODE_03C412:        SBC #$04                  ; | Take coordinates of right sight of screen back 4 pages
CODE_03C414:        STA $071B                 ;/
CODE_03C417:        LDA $072A                 ;\
CODE_03C41A:        SEC                       ; | Take screen number relative to page skips back 4 pages
CODE_03C41B:        SBC #$04                  ; |
CODE_03C41D:        STA $072A                 ;/
CODE_03C420:        LDA #$00                  ;
CODE_03C422:        STA $073B                 ;
CODE_03C425:        STA $072B                 ;
CODE_03C428:        STA $0739                 ;Zero out 16-bit enemy data pointer index
CODE_03C42B:        STA $073A                 ;Zero out page of the most recent sprite
CODE_03C42E:        PHX                       ;
CODE_03C42F:        TYX                       ;
CODE_03C430:        LDA $04C000,x             ;
CODE_03C434:        STA $072C                 ;Set level object data pointer index according to 
CODE_03C437:        PLX                       ;
CODE_03C438:        STZ $0EDB                 ;
CODE_03C43B:        RTS                       ;

CODE_03C43C:        LDA $0745                 ;
CODE_03C43F:        BNE CODE_03C444           ;
CODE_03C441:        JMP CODE_03C4C7           ;

CODE_03C444:        LDA $0726                 ;
CODE_03C447:        BNE CODE_03C4C7           ;
CODE_03C449:        LDY #$0B                  ;
CODE_03C44B:        DEY                       ;
CODE_03C44C:        BMI CODE_03C4C7           ;
CODE_03C44E:        LDA $075F                 ;
CODE_03C451:        CMP DATA_03C3D4,y               ;
CODE_03C454:        BNE CODE_03C44B           ;
CODE_03C456:        LDA $0725                 ;
CODE_03C459:        CMP DATA_03C3DF,y               ;
CODE_03C45C:        BNE CODE_03C44B           ;
CODE_03C45E:        LDA $0237                 ;
CODE_03C461:        CMP DATA_03C3EA,y               ;
CODE_03C464:        BNE CODE_03C4A2           ;
CODE_03C466:        LDA $28                   ;
CODE_03C468:        CMP #$00                  ;
CODE_03C46A:        BNE CODE_03C4A2           ;
CODE_03C46C:        LDA $0EDB                 ;
CODE_03C46F:        BNE CODE_03C48F           ;
CODE_03C471:        LDA #$29                  ;\
CODE_03C473:        STA $1603                 ;/"Correct" sound
CODE_03C476:        LDA $075F                 ;
CODE_03C479:        CMP #$06                  ;
CODE_03C47B:        BNE CODE_03C4BC           ;
CODE_03C47D:        INC $06D9                 ;
CODE_03C480:        BRA CODE_03C48F           ;

CODE_03C482:        LDA $0EDB                 ;
CODE_03C485:        BNE CODE_03C48F           ;
CODE_03C487:        LDA #$2A                  ;\
CODE_03C489:        STA $1603                 ;/"Incorrect" sound
CODE_03C48C:        STA $0EDB                 ;
CODE_03C48F:        INC $06DA                 ;
CODE_03C492:        LDA $06DA                 ;
CODE_03C495:        CMP #$03                  ;
CODE_03C497:        BNE CODE_03C4C4           ;
CODE_03C499:        LDA $06D9                 ;
CODE_03C49C:        CMP #$03                  ;
CODE_03C49E:        BNE CODE_03C4B6           ;
CODE_03C4A0:        BRA CODE_03C4BC           ;Branch if all maze checkpoints taken correctly

CODE_03C4A2:        LDA $075F                 ;\
CODE_03C4A5:        CMP #$06                  ; | Branch if world 7
CODE_03C4A7:        BEQ CODE_03C482           ;/
CODE_03C4A9:        LDA $0EDB                 ;
CODE_03C4AC:        BNE CODE_03C4B6           ;
CODE_03C4AE:        LDA #$2A                  ;\
CODE_03C4B0:        STA $1603                 ;/"Incorrect" sound
CODE_03C4B3:        STA $0EDB                 ;
CODE_03C4B6:        JSR CODE_03C3F5           ;
CODE_03C4B9:        JSR CODE_03D56B           ;
CODE_03C4BC:        LDA #$00                  ;\
CODE_03C4BE:        STA $06DA                 ; | Zero out correct checkpoints counter
CODE_03C4C1:        STA $06D9                 ; | The total checkpoints counter
CODE_03C4C4:        STZ $0745                 ;/ 
CODE_03C4C7:        LDA $06CD                 ;
CODE_03C4CA:        BEQ CODE_03C4DA           ;
CODE_03C4CC:        STA $1C,x                 ;
CODE_03C4CE:        LDA #$01                  ;
CODE_03C4D0:        STA $10,x                 ;
CODE_03C4D2:        STZ $29,x                 ;
CODE_03C4D4:        STZ $06CD                 ;
CODE_03C4D7:        JMP CODE_03C5CA           ;

;Process sprite data from $FD
CODE_03C4DA:        LDY $0739                 ;\ Get offset of enemy sprite data
CODE_03C4DD:        LDA [$FD],y               ; |Check first byte
CODE_03C4DF:        CMP #$FF                  ; |If end of data, continue
CODE_03C4E1:        BNE CODE_03C4E6           ;/
CODE_03C4E3:        JMP CODE_03C5B6           ;else, jump

CODE_03C4E6:        AND #$0F                  ;
CODE_03C4E8:        CMP #$0E                  ;
CODE_03C4EA:        BEQ CODE_03C4FA           ;
CODE_03C4EC:        CPX #$08                  ;
CODE_03C4EE:        BCC CODE_03C4FA           ;
CODE_03C4F0:        INY                       ;
CODE_03C4F1:        LDA [$FD],y               ;
CODE_03C4F3:        AND #$3F                  ;
CODE_03C4F5:        CMP #$2E                  ;
CODE_03C4F7:        BEQ CODE_03C4FA           ;
CODE_03C4F9:        RTS                       ;

CODE_03C4FA:        LDA $071D                 ;
CODE_03C4FD:        CLC                       ;
CODE_03C4FE:        ADC #$30                  ;
CODE_03C500:        AND #$F0                  ;
CODE_03C502:        STA $07                   ;
CODE_03C504:        LDA $071B                 ;
CODE_03C507:        ADC #$00                  ;
CODE_03C509:        STA $06                   ;
CODE_03C50B:        LDY $0739                 ;
CODE_03C50E:        INY                       ;
CODE_03C50F:        LDA [$FD],y               ;
CODE_03C511:        ASL A                     ;
CODE_03C512:        BCC CODE_03C51F           ;
CODE_03C514:        LDA $073B                 ;
CODE_03C517:        BNE CODE_03C51F           ;
CODE_03C519:        INC $073B                 ;
CODE_03C51C:        INC $073A                 ;
CODE_03C51F:        DEY                       ;
CODE_03C520:        LDA [$FD],y               ;
CODE_03C522:        AND #$0F                  ;
CODE_03C524:        CMP #$0F                  ;
CODE_03C526:        BNE CODE_03C541           ;
CODE_03C528:        LDA $073B                 ;
CODE_03C52B:        BNE CODE_03C541           ;
CODE_03C52D:        INY                       ;
CODE_03C52E:        LDA [$FD],y               ;
CODE_03C530:        AND #$3F                  ;
CODE_03C532:        STA $073A                 ;
CODE_03C535:        INC $0739                 ;
CODE_03C538:        INC $0739                 ;
CODE_03C53B:        INC $073B                 ;
CODE_03C53E:        JMP CODE_03C43C           ;

CODE_03C541:        LDA $073A                 ;
CODE_03C544:        STA $79,x                 ;
CODE_03C546:        LDA [$FD],y               ;
CODE_03C548:        AND #$F0                  ;
CODE_03C54A:        STA $021A,x               ;
CODE_03C54D:        CMP $071D                 ;
CODE_03C550:        LDA $79,x                 ;
CODE_03C552:        SBC $071B                 ;
CODE_03C555:        BCS CODE_03C562           ;
CODE_03C557:        LDA [$FD],y               ;
CODE_03C559:        AND #$0F                  ;
CODE_03C55B:        CMP #$0E                  ;
CODE_03C55D:        BEQ CODE_03C5D3           ;
CODE_03C55F:        JMP CODE_03C5F1           ;

CODE_03C562:        LDA $07                   ;
CODE_03C564:        CMP $021A,x               ;
CODE_03C567:        LDA $06                   ;
CODE_03C569:        SBC $79,x                 ;
CODE_03C56B:        BCC CODE_03C5B6           ;
CODE_03C56D:        LDA #$01                  ;
CODE_03C56F:        STA $BC,x                 ;
CODE_03C571:        LDA [$FD],y               ;
CODE_03C573:        ASL A                     ;
CODE_03C574:        ASL A                     ;
CODE_03C575:        ASL A                     ;
CODE_03C576:        ASL A                     ;
CODE_03C577:        STA $0238,x               ;
CODE_03C57A:        CMP #$E0                  ;
CODE_03C57C:        BEQ CODE_03C5D3           ;
CODE_03C57E:        INY                       ;
CODE_03C57F:        LDA [$FD],y               ;
CODE_03C581:        AND #$40                  ;
CODE_03C583:        BEQ CODE_03C58A           ;
CODE_03C585:        LDA $06CC                 ;
CODE_03C588:        BEQ CODE_03C5FF           ;
CODE_03C58A:        LDA [$FD],y               ;
CODE_03C58C:        AND #$3F                  ;
CODE_03C58E:        CMP #$37                  ;
CODE_03C590:        BCC CODE_03C596           ;
CODE_03C592:        CMP #$3F                  ;
CODE_03C594:        BCC CODE_03C5D0           ;
CODE_03C596:        CMP #$06                  ;
CODE_03C598:        BNE CODE_03C5A1           ;
CODE_03C59A:        LDY $076A                 ;"More difficult quest" flag
CODE_03C59D:        BEQ CODE_03C5A1           ;
CODE_03C59F:        LDA #$02                  ;
CODE_03C5A1:        STA $1C,x                 ;
CODE_03C5A3:        CMP #$2D                  ;
CODE_03C5A5:        BNE CODE_03C5AA           ;
CODE_03C5A7:        STZ $0F4C                 ;
CODE_03C5AA:        LDA #$01                  ;
CODE_03C5AC:        STA $10,x                 ;
CODE_03C5AE:        JSR CODE_03C5CA           ;
CODE_03C5B1:        LDA $10,x                 ;
CODE_03C5B3:        BNE CODE_03C5FF           ;
CODE_03C5B5:        RTS                       ;

CODE_03C5B6:        LDA $06CB                 ;
CODE_03C5B9:        BNE CODE_03C5C4           ;
CODE_03C5BB:        LDA $0398                 ;
CODE_03C5BE:        CMP #$01                  ;
CODE_03C5C0:        BNE CODE_03C5CF           ;
CODE_03C5C2:        LDA #$00                  ;
CODE_03C5C4:        CPX #$09                  ;
CODE_03C5C6:        BEQ CODE_03C5CA           ;
CODE_03C5C8:        STA $1C,x                 ;
CODE_03C5CA:        STZ $29,x                 ;
CODE_03C5CC:        JSR CODE_03C60B           ;
CODE_03C5CF:        RTS                       ;

CODE_03C5D0:        JMP CODE_03CB2B           ;

CODE_03C5D3:        INY                       ;
CODE_03C5D4:        INY                       ;
CODE_03C5D5:        LDA [$FD],y               ;
CODE_03C5D7:        LSR A                     ;
CODE_03C5D8:        LSR A                     ;
CODE_03C5D9:        LSR A                     ;
CODE_03C5DA:        LSR A                     ;
CODE_03C5DB:        LSR A                     ;
CODE_03C5DC:        CMP $075F                 ;
CODE_03C5DF:        BNE CODE_03C5EF           ;
CODE_03C5E1:        DEY                       ;
CODE_03C5E2:        LDA [$FD],y               ;
CODE_03C5E4:        STA $0750                 ;
CODE_03C5E7:        INY                       ;
CODE_03C5E8:        LDA [$FD],y               ;
CODE_03C5EA:        AND #$1F                  ;
CODE_03C5EC:        STA $0751                 ;
CODE_03C5EF:        BRA CODE_03C5FC           ;

CODE_03C5F1:        LDY $0739                 ;
CODE_03C5F4:        LDA [$FD],y               ;
CODE_03C5F6:        AND #$0F                  ;
CODE_03C5F8:        CMP #$0E                  ;
CODE_03C5FA:        BNE CODE_03C5FF           ;
CODE_03C5FC:        INC $0739                 ;
CODE_03C5FF:        INC $0739                 ;
CODE_03C602:        INC $0739                 ;
CODE_03C605:        STZ $073B                 ;
CODE_03C608:        LDX $9E                   ;
CODE_03C60A:        RTS                       ;

CODE_03C60B:        LDA $1C,x                 ;Load Sprite number into A
CODE_03C60D:        CMP #$15                  ;\If it is #15 or greater
CODE_03C60F:        BCS CODE_03C620           ; |Branch
CODE_03C611:        TAY                       ;/Transfer A to Y
CODE_03C612:        LDA $0238,x               ;\ no need for CLC since the CMP above did that.
CODE_03C615:        ADC #$08                  ; |sprites $1-$14: Add 8 pixels to the sprite Y position
CODE_03C617:        STA $0238,x               ;/
CODE_03C61A:        LDA #$01                  ;\
CODE_03C61C:        STA $03D9,x               ;/Set initialized flag?
CODE_03C61F:        TYA                       ;\
CODE_03C620:        ASL A                     ; |Sprite number*2, for index purposes
CODE_03C621:        TAY                       ;/
CODE_03C622:        LDA PNTR_03C62F,y               ;\
CODE_03C625:        STA $04                   ; |
CODE_03C627:        LDA PNTR_03C62F+1,y               ; |Load sprite pointers and jump to them
CODE_03C62A:        STA $05                   ; |for the INIT routine
CODE_03C62C:        JMP ($0004)               ;/

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

CODE_03C69D:        RTS                       ;

CODE_03C69E:        JSR CODE_03C6D3           ;
CODE_03C6A1:        JMP CODE_03C707           ;

CODE_03C6A4:        LDA #$D0                  ;\Podoboo init
CODE_03C6A6:        STA $0238,x               ;/Set Ypos to bottom of the screen
CODE_03C6A9:        LDA #$01                  ;
CODE_03C6AB:        STA $BC,x                 ;
CODE_03C6AD:        STA $07A2,x               ;
CODE_03C6B0:        STZ $29,x                 ;
CODE_03C6B2:        STA $0B00,x               ;
CODE_03C6B5:        STZ $0B09,x               ;Reset some timer
CODE_03C6B8:        LDA #$27                  ;\Play podoboo sound
CODE_03C6BA:        STA $1603                 ;/
CODE_03C6BD:        JMP CODE_03C707           ;

CODE_03C6C0:        LDA $075F                 ;\INIT routine of Toad/Peach. Load current world
CODE_03C6C3:        CMP #$07                  ; |If you are NOT in world 8
CODE_03C6C5:        BNE CODE_03C6CD           ; |Set Ypos of sprite to $B8 (floor)
CODE_03C6C7:        LDA #$70                  ;\|Otherwise, set Ypos to $70 (inside cage)
CODE_03C6C9:        STA $0238,x               ;/
CODE_03C6CC:        RTS                       ;Return

CODE_03C6CD:        LDA #$B8                  ;\Set Ypos of sprite to $B8
CODE_03C6CF:        BRA CODE_03C6C9           ;/

DATA_03C6D1:        db $F8,$F4                              ;Sprite initial xspeed. Format: Normal difficulty, hard difficulty

CODE_03C6D3:        LDY #$01                  ;\
CODE_03C6D5:        LDA $076A                 ; |INIT routine for most walking sprites
CODE_03C6D8:        BNE CODE_03C6DB           ; |Set sprite initial Xspeed depending on difficulty
CODE_03C6DA:        DEY                       ; |
CODE_03C6DB:        LDA DATA_03C6D1,y               ; |
CODE_03C6DE:        STA $5E,x                 ;/
CODE_03C6E0:        JMP CODE_03C71D           ;

CODE_03C6E3:        JSR CODE_03C6D3           ;
CODE_03C6E6:        LDA #$01                  ;
CODE_03C6E8:        STA $29,x                 ;
CODE_03C6EA:        RTS                       ;

DATA_03C6EB:        db $80,$50

CODE_03C6ED:        STZ $03A2,x               ;
CODE_03C6F0:        STZ $5E,x                 ;
CODE_03C6F2:        LDY $06CC                 ;
CODE_03C6F5:        LDA DATA_03C6EB,y               ;
CODE_03C6F8:        STA $07A2,x               ;
CODE_03C6FB:        LDA #$0B                  ;
CODE_03C6FD:        JMP CODE_03C71F           ;

CODE_03C700:        LDA #$00                  ;
CODE_03C702:        JMP CODE_03C6DE           ;

CODE_03C705:        STZ $5E,x                 ;
CODE_03C707:        LDA #$09                  ;
CODE_03C709:        BNE CODE_03C71F           ;
CODE_03C70B:        LDY #$30                  ;
CODE_03C70D:        LDA $0238,x               ;
CODE_03C710:        STA $0402,x               ;
CODE_03C713:        BPL CODE_03C717           ;
CODE_03C715:        LDY #$E0                  ;
CODE_03C717:        TYA                       ;
CODE_03C718:        ADC $0238,x               ;
CODE_03C71B:        STA $5E,x                 ;
CODE_03C71D:        LDA #$03                  ;
CODE_03C71F:        STA $0490,x               ;
CODE_03C722:        LDA #$02                  ;\ Set sprite direction to left
CODE_03C724:        STA $47,x                 ;/
CODE_03C726:        LDA #$00                  ;\ Set sprite vertical speed to 0
CODE_03C728:        STA $A1,x                 ; |
CODE_03C72A:        STA $043D,x               ;Set ??? to 0? Related to sprite falling and other movement-related speed.
CODE_03C72D:        RTS                       ;

CODE_03C72E:        LDA #$02                  ;\INIT routine of bullet bill
CODE_03C730:        STA $47,x                 ;/Set direction of sprite to left
CODE_03C732:        LDA #$09                  ;
CODE_03C734:        STA $0490,x               ;
CODE_03C737:        RTS                       ;

CODE_03C738:        JSR CODE_03C707           ;
CODE_03C73B:        LDA $07B7,x               ;
CODE_03C73E:        AND #$10                  ;
CODE_03C740:        STA $5E,x                 ;
CODE_03C742:        LDA $0238,x               ;
CODE_03C745:        STA $043D,x               ;
CODE_03C748:        RTS                       ;

CODE_03C749:        LDA $06CB                 ;
CODE_03C74C:        BNE CODE_03C759           ;
CODE_03C74E:        LDA #$00                  ;
CODE_03C750:        STA $06D1                 ;
CODE_03C753:        JSR CODE_03C700           ;
CODE_03C756:        JMP CODE_03CBFA           ;

CODE_03C759:        JMP CODE_03CDE2           ; Erase sprite

DATA_03C75C:        db $26,$2C,$32,$38,$20,$22,$24,$26
                    db $13,$14,$15,$16

CODE_03C768:        LDA $079B                 ;
CODE_03C76B:        BNE CODE_03C7A7           ;
CODE_03C76D:        CPX #$09                  ;
CODE_03C76F:        BCS CODE_03C7A7           ;
CODE_03C771:        LDA #$80                  ;
CODE_03C773:        STA $079B                 ;
CODE_03C776:        LDY #$08                  ;
CODE_03C778:        LDA $001C,y               ;
CODE_03C77B:        CMP #$11                  ;
CODE_03C77D:        BEQ CODE_03C7A8           ;
CODE_03C77F:        DEY                       ;
CODE_03C780:        BPL CODE_03C778           ;
CODE_03C782:        INC $06D1                 ;
CODE_03C785:        LDA $06D1                 ;
CODE_03C788:        CMP #$07                  ;
CODE_03C78A:        BCC CODE_03C7A7           ;
CODE_03C78C:        LDX #$08                  ;
CODE_03C78E:        LDA $10,x                 ;
CODE_03C790:        BEQ CODE_03C797           ;
CODE_03C792:        DEX                       ;
CODE_03C793:        BPL CODE_03C78E           ;
CODE_03C795:        BMI CODE_03C7A5           ;
CODE_03C797:        STZ $29,x                 ;
CODE_03C799:        LDA #$11                  ;\
CODE_03C79B:        STA $1C,x                 ;/Sprite to generate: Lakitu
CODE_03C79D:        JSR CODE_03C74E           ;
CODE_03C7A0:        LDA #$20                  ;
CODE_03C7A2:        JSR CODE_03C9E8           ;
CODE_03C7A5:        LDX $9E                   ;
CODE_03C7A7:        RTS                       ;

CODE_03C7A8:        LDA $0237                 ;
CODE_03C7AB:        CMP #$2C                  ;
CODE_03C7AD:        BCC CODE_03C7A7           ;
CODE_03C7AF:        LDA $0029,y               ;
CODE_03C7B2:        BNE CODE_03C7A7           ;
CODE_03C7B4:        LDA $0079,y               ;
CODE_03C7B7:        STA $79,x                 ;
CODE_03C7B9:        LDA $021A,y               ;
CODE_03C7BC:        STA $021A,x               ;
CODE_03C7BF:        LDA #$01                  ;
CODE_03C7C1:        STA $BC,x                 ;
CODE_03C7C3:        LDA $0238,y               ;
CODE_03C7C6:        SEC                       ;
CODE_03C7C7:        SBC #$08                  ;
CODE_03C7C9:        STA $0238,x               ;
CODE_03C7CC:        LDA $07B7,x               ;
CODE_03C7CF:        AND #$03                  ;
CODE_03C7D1:        TAY                       ;
CODE_03C7D2:        LDX #$02                  ;
CODE_03C7D4:        LDA DATA_03C75C,y               ;
CODE_03C7D7:        STA $01,x                 ;
CODE_03C7D9:        INY                       ;
CODE_03C7DA:        INY                       ;
CODE_03C7DB:        INY                       ;
CODE_03C7DC:        INY                       ;
CODE_03C7DD:        DEX                       ;
CODE_03C7DE:        BPL CODE_03C7D4           ;
CODE_03C7E0:        LDX $9E                   ;
CODE_03C7E2:        JSR CODE_03D420           ;
CODE_03C7E5:        LDY $5D                   ;
CODE_03C7E7:        CPY #$08                  ;
CODE_03C7E9:        BCS CODE_03C7F9           ;
CODE_03C7EB:        TAY                       ;
CODE_03C7EC:        LDA $07B8,x               ;
CODE_03C7EF:        AND #$03                  ;
CODE_03C7F1:        BEQ CODE_03C7F8           ;
CODE_03C7F3:        TYA                       ;
CODE_03C7F4:        EOR #$FF                  ;
CODE_03C7F6:        TAY                       ;
CODE_03C7F7:        INY                       ;
CODE_03C7F8:        TYA                       ;
CODE_03C7F9:        JSR CODE_03C707           ;
CODE_03C7FC:        LDY #$02                  ;
CODE_03C7FE:        STA $5E,x                 ;
CODE_03C800:        CMP #$00                  ;
CODE_03C802:        BMI CODE_03C805           ;
CODE_03C804:        DEY                       ;
CODE_03C805:        STY $47,x                 ;
CODE_03C807:        LDA #$FD                  ;
CODE_03C809:        STA $A1,x                 ;
CODE_03C80B:        LDA #$01                  ;
CODE_03C80D:        STA $10,x                 ;
CODE_03C80F:        LDA #$05                  ;
CODE_03C811:        STA $29,x                 ;
CODE_03C813:        RTS                       ;

DATA_03C814:        db $28,$38,$28,$38,$28    ;Castle firebar rotation speed data. Format:
                                              ;Firebar (clock), Fast Firebar (clock)
                                              ;Firebar (C-Clock), Fast Firebar (C-Clock)
                                              ;Long Firebar (Clock)

DATA_03C819:        db $00,$00,$10,$10,$00    ;When bit 4 is set, the firebar will rotate C-Clockwise
                                              ;Same format as above

;Firebar
CODE_03C81E:        JSR CODE_03C946           ;Find a free sprite slot and place the sprite in the level.
CODE_03C821:        STZ $5E,x                 ;No sprite horizontal speed.
CODE_03C823:        LDA $1C,x                 ;\Load sprite number
CODE_03C825:        SEC                       ; |Subtract $1B from it so we get index to 5 fire types
CODE_03C826:        SBC #$1B                  ; |Prepare for indexing
CODE_03C828:        TAY                       ;/
CODE_03C829:        LDA DATA_03C814,y         ;\Get firebar rotation speed
CODE_03C82C:        STA $0388,x               ;/Store in spinning speed of firebars
CODE_03C82F:        LDA DATA_03C819,y         ;\Get firebar rotation direction...
CODE_03C832:        STA $0203,x               ;/
CODE_03C835:        LDA $0238,x               ;\
CODE_03C838:        CLC                       ; |Sprite Ypos is 4px higher
CODE_03C839:        ADC #$04                  ; |So it will become centered in 1 16x16 block
CODE_03C83B:        STA $0238,x               ;/
CODE_03C83E:        LDA $021A,x               ;\
CODE_03C841:        CLC                       ; |Sprite Xpos is 4px more to the right
CODE_03C842:        ADC #$04                  ; |So it will become centered in 1 16x16 block
CODE_03C844:        STA $021A,x               ;/
CODE_03C847:        LDA $79,x                 ;\
CODE_03C849:        ADC #$00                  ; |Handle page boundary stuff or whatever.
CODE_03C84B:        STA $79,x                 ;/
CODE_03C84D:        JMP CODE_03CBFA           ;

DATA_03C850:        db $80,$30,$40,$80,$30,$50,$50,$70
                    db $20,$40,$80,$A0,$70,$40,$90,$68

DATA_03C860:        db $0E,$05,$06,$0E,$1C,$20,$10,$0C
                    db $1E,$22,$18,$14

DATA_03C86C:        db $10,$60,$20,$48

CODE_03C870:        LDA $079B                 ;
CODE_03C873:        BNE CODE_03C813           ;
CODE_03C875:        JSR CODE_03C707           ;
CODE_03C878:        LDA $07B8,x               ;
CODE_03C87B:        AND #$03                  ;
CODE_03C87D:        TAY                       ;
CODE_03C87E:        LDA DATA_03C86C,y               ;
CODE_03C881:        STA $079B                 ;
CODE_03C884:        LDY #$03                  ;
CODE_03C886:        LDA $06CC                 ;
CODE_03C889:        BEQ CODE_03C88C           ;
CODE_03C88B:        INY                       ;
CODE_03C88C:        STY $00                   ;
CODE_03C88E:        CPX $00                   ;
CODE_03C890:        BCC CODE_03C895           ;
CODE_03C892:        JMP CODE_03C813           ;

CODE_03C895:        LDA $07B7,x               ;
CODE_03C898:        AND #$03                  ;
CODE_03C89A:        STA $00                   ;
CODE_03C89C:        STA $01                   ;
CODE_03C89E:        LDA #$FB                  ;
CODE_03C8A0:        STA $A1,x                 ;
CODE_03C8A2:        LDA #$00                  ;
CODE_03C8A4:        LDY $5D                   ;
CODE_03C8A6:        BEQ CODE_03C8AF           ;
CODE_03C8A8:        LDA #$04                  ;
CODE_03C8AA:        CPY #$19                  ;
CODE_03C8AC:        BCC CODE_03C8AF           ;
CODE_03C8AE:        ASL A                     ;
CODE_03C8AF:        PHA                       ;
CODE_03C8B0:        CLC                       ;
CODE_03C8B1:        ADC $00                   ;
CODE_03C8B3:        STA $00                   ;
CODE_03C8B5:        LDA $07B8,x               ;
CODE_03C8B8:        AND #$03                  ;
CODE_03C8BA:        BEQ CODE_03C8C3           ;
CODE_03C8BC:        LDA $07B9,x               ;
CODE_03C8BF:        AND #$0F                  ;
CODE_03C8C1:        STA $00                   ;
CODE_03C8C3:        PLA                       ;
CODE_03C8C4:        CLC                       ;
CODE_03C8C5:        ADC $01                   ;
CODE_03C8C7:        TAY                       ;
CODE_03C8C8:        LDA DATA_03C860,y         ;
CODE_03C8CB:        STA $5E,x                 ;
CODE_03C8CD:        LDA #$01                  ;
CODE_03C8CF:        STA $47,x                 ;
CODE_03C8D1:        LDA $5D                   ;
CODE_03C8D3:        BNE CODE_03C8E7           ;
CODE_03C8D5:        LDY $00                   ;
CODE_03C8D7:        TYA                       ;
CODE_03C8D8:        AND #$02                  ;
CODE_03C8DA:        BEQ CODE_03C8E7           ;
CODE_03C8DC:        LDA $5E,x                 ;
CODE_03C8DE:        EOR #$FF                  ;
CODE_03C8E0:        CLC                       ;
CODE_03C8E1:        ADC #$01                  ;
CODE_03C8E3:        STA $5E,x                 ;
CODE_03C8E5:        INC $47,x                 ;
CODE_03C8E7:        TYA                       ;
CODE_03C8E8:        AND #$02                  ;
CODE_03C8EA:        BEQ CODE_03C8FC           ;
CODE_03C8EC:        LDA $0219                 ;
CODE_03C8EF:        CLC                       ;
CODE_03C8F0:        ADC DATA_03C850,y               ;
CODE_03C8F3:        STA $021A,x               ;
CODE_03C8F6:        LDA $78                   ;
CODE_03C8F8:        ADC #$00                  ;
CODE_03C8FA:        BRA CODE_03C90A           ;

CODE_03C8FC:        LDA $0219                 ;
CODE_03C8FF:        SEC                       ;
CODE_03C900:        SBC DATA_03C850,y               ;
CODE_03C903:        STA $021A,x               ;
CODE_03C906:        LDA $78                   ;
CODE_03C908:        SBC #$00                  ;
CODE_03C90A:        STA $79,x                 ;
CODE_03C90C:        LDA #$01                  ;
CODE_03C90E:        STA $10,x                 ;
CODE_03C910:        STA $BC,x                 ;
CODE_03C912:        LDA #$F8                  ;
CODE_03C914:        STA $0238,x               ;
CODE_03C917:        RTS                       ;

CODE_03C918:        JSR CODE_03C946           ;Find a free sprite slot and place the sprite in the level.
CODE_03C91B:        STX $0368                 ;
CODE_03C91E:        STZ $0363                 ;
CODE_03C921:        STZ $0369                 ;
CODE_03C924:        LDA $021A,x               ;
CODE_03C927:        STA $0366                 ;
CODE_03C92A:        LDA #$DF                  ;
CODE_03C92C:        STA $079C                 ;
CODE_03C92F:        STA $47,x                 ;
CODE_03C931:        LDA #$20                  ;
CODE_03C933:        STA $0364                 ;
CODE_03C936:        STA $0792,x               ;
CODE_03C939:        STA $0257,x               ;
CODE_03C93C:        LDA #$05                  ;
CODE_03C93E:        STA $0283                 ;
CODE_03C941:        LSR A                     ;
CODE_03C942:        STA $0365                 ;
CODE_03C945:        RTS                       ;

;Find a free sprite slot and place the sprite in the level.
CODE_03C946:        LDY #$FF                  ;\
CODE_03C948:        INY                       ; |Find a free sprite slot
CODE_03C949:        LDA $0010,y               ; |
CODE_03C94C:        BNE CODE_03C948           ;/
CODE_03C94E:        STY $06CF                 ;Store the index of the free sprite slot
CODE_03C951:        TXA                       ;Sprite index -> to accumulator
CODE_03C952:        ORA #$80                  ; OR 0x80
CODE_03C954:        STA $0010,y               ;Store into sprite on-screen flag
CODE_03C957:        LDA $79,x                 ;\Sprite xpos high byte
CODE_03C959:        STA $0079,y               ;/
CODE_03C95C:        LDA $021A,x               ;\
CODE_03C95F:        STA $021A,y               ;/Sprite xpos low byte
CODE_03C962:        LDA #$01                  ;\
CODE_03C964:        STA $10,x                 ;/Sprite off-screen flag?
CODE_03C966:        STA $00BC,y               ;"position of sprites"
CODE_03C969:        LDA $0238,x               ;\
CODE_03C96C:        STA $0238,y               ;/Sprite Ypos
CODE_03C96F:        RTS                       ;

DATA_03C970:        db $90,$80,$70,$90        ;Bowser's fireball possible Y positions

DATA_03C974:        db $FF,$01                ;Fireball Y Speed (both directions, but fireball goes 1-way only?)

CODE_03C976:        LDA $079B                 ;\Bowser Fire generator. Timer to spawn next sprite (generators)
CODE_03C979:        BNE CODE_03C96F           ;/If $079B != 00, return
CODE_03C97B:        STA $043D,x               ;Sprite vertical speed = 00
CODE_03C97E:        LDA #$06                  ;
CODE_03C980:        STA $014B                 ;
CODE_03C983:        LDA #$18                  ;
CODE_03C985:        STA $0F4C                 ;
CODE_03C988:        STX $0F4D                 ;
CODE_03C98B:        LDY $0368                 ;\Index of bowser sprite
CODE_03C98E:        LDA $001C,y               ; |
CODE_03C991:        CMP #$2D                  ; |If there's a bowser sprite present, branch
CODE_03C993:        BEQ CODE_03C9E4           ;/
CODE_03C995:        JSR CODE_03D6F9           ;\Get timer delay of next fireball spawn
CODE_03C998:        CLC                       ; |make them spawn #$20 frames later by default.
CODE_03C999:        ADC #$20                  ;/
CODE_03C99B:        LDY $06CC                 ;\If hard flag (levels after 5-3)
CODE_03C99E:        BEQ CODE_03C9A3           ; |
CODE_03C9A0:        SEC                       ; |make fireballs spawn #$10 frames later instead of #$20
CODE_03C9A1:        SBC #$10                  ; |
CODE_03C9A3:        STA $079B                 ;/Timer to spawn next sprite
CODE_03C9A6:        LDA $07B7,x               ;\
CODE_03C9A9:        AND #$03                  ; |Get random value and make the range $00-$03
CODE_03C9AB:        STA $041D,x               ; |
CODE_03C9AE:        TAY                       ; |
CODE_03C9AF:        LDA DATA_03C970,y               ; |Store bowser fireball Y position and into $041D,x
CODE_03C9B2:        STA $0238,x               ;/
CODE_03C9B5:        LDA $071D                 ;\
CODE_03C9B8:        CLC                       ; |X-Position of fireball = right border of screen + #$20
CODE_03C9B9:        ADC #$20                  ; |
CODE_03C9BB:        STA $021A,x               ; |
CODE_03C9BE:        LDA $071B                 ; |
CODE_03C9C1:        ADC #$00                  ; |
CODE_03C9C3:        STA $79,x                 ;/
CODE_03C9C5:        STZ $0F4C                 ;Zero out how long bowser holds his breath for firing
CODE_03C9C8:        STZ $0F4D                 ;
CODE_03C9CB:        STZ $014B                 ;
CODE_03C9CE:        LDA #$17                  ;\Play fire sound effect
CODE_03C9D0:        STA $1603                 ;/(note: NOT fire breath from bowser)
CODE_03C9D3:        LDA #$08                  ;
CODE_03C9D5:        STA $0490,x               ;
CODE_03C9D8:        LDA #$01                  ;
CODE_03C9DA:        STA $BC,x                 ;
CODE_03C9DC:        STA $10,x                 ;Set sprite on-screen flag
CODE_03C9DE:        LSR A                     ;A = 00
CODE_03C9DF:        STA $0402,x               ;
CODE_03C9E2:        STA $29,x                 ;
CODE_03C9E4:        STX $0F4E                 ;Generated sprite index to $0F4E
CODE_03C9E7:        RTS                       ;

CODE_03C9E8:        STA $0238,x               ;
CODE_03C9EB:        LDA $071D                 ;
CODE_03C9EE:        CLC                       ;
CODE_03C9EF:        ADC #$20                  ;
CODE_03C9F1:        STA $021A,x               ;
CODE_03C9F4:        LDA $071B                 ;
CODE_03C9F7:        ADC #$00                  ;
CODE_03C9F9:        STA $79,x                 ;
CODE_03C9FB:        JMP CODE_03CA32           ;

CODE_03C9FE:        LDA $021A,y               ;
CODE_03CA01:        SEC                       ;
CODE_03CA02:        SBC #$0E                  ;
CODE_03CA04:        STA $021A,x               ;
CODE_03CA07:        LDA $0079,y               ;
CODE_03CA0A:        STA $79,x                 ;
CODE_03CA0C:        LDA $0238,y               ;
CODE_03CA0F:        CLC                       ;
CODE_03CA10:        ADC #$08                  ;
CODE_03CA12:        STA $0238,x               ;
CODE_03CA15:        LDA $07B7,x               ;
CODE_03CA18:        AND #$03                  ;
CODE_03CA1A:        STA $041D,x               ;
CODE_03CA1D:        TAY                       ;
CODE_03CA1E:        LDA DATA_03C970,y               ;
CODE_03CA21:        LDY #$00                  ;
CODE_03CA23:        CMP $0238,x               ;
CODE_03CA26:        BCC CODE_03CA29           ;
CODE_03CA28:        INY                       ;
CODE_03CA29:        LDA DATA_03C974,y               ;
CODE_03CA2C:        STA $043D,x               ;
CODE_03CA2F:        STZ $06CB                 ;
CODE_03CA32:        LDA #$08                  ;
CODE_03CA34:        STA $0490,x               ;
CODE_03CA37:        LDA #$01                  ;
CODE_03CA39:        STA $BC,x                 ;
CODE_03CA3B:        STA $10,x                 ;
CODE_03CA3D:        LSR A                     ;
CODE_03CA3E:        STA $0402,x               ;
CODE_03CA41:        STA $29,x                 ;
CODE_03CA43:        RTS                       ;

DATA_03CA44:        db $00,$30,$60,$60,$00,$20

DATA_03CA4A:        db $60,$40,$70,$40,$60,$30

CODE_03CA50:        LDA $079B                 ;
CODE_03CA53:        BNE CODE_03CA9E           ;
CODE_03CA55:        LDA #$20                  ;
CODE_03CA57:        STA $079B                 ;
CODE_03CA5A:        DEC $06D7                 ;
CODE_03CA5D:        LDY #$0A                  ;
CODE_03CA5F:        DEY                       ;
CODE_03CA60:        LDA $001C,y               ;
CODE_03CA63:        CMP #$31                  ;
CODE_03CA65:        BNE CODE_03CA5F           ;
CODE_03CA67:        LDA $021A,y               ;
CODE_03CA6A:        SEC                       ;
CODE_03CA6B:        SBC #$30                  ;
CODE_03CA6D:        PHA                       ;
CODE_03CA6E:        LDA $0079,y               ;
CODE_03CA71:        SBC #$00                  ;
CODE_03CA73:        STA $00                   ;
CODE_03CA75:        LDA $06D7                 ;
CODE_03CA78:        CLC                       ;
CODE_03CA79:        ADC $0029,y               ;
CODE_03CA7C:        TAY                       ;
CODE_03CA7D:        PLA                       ;
CODE_03CA7E:        CLC                       ;
CODE_03CA7F:        ADC DATA_03CA44,y         ;
CODE_03CA82:        STA $021A,x               ;
CODE_03CA85:        LDA $00                   ;
CODE_03CA87:        ADC #$00                  ;
CODE_03CA89:        STA $79,x                 ;
CODE_03CA8B:        LDA DATA_03CA4A,y         ;
CODE_03CA8E:        STA $0238,x               ;
CODE_03CA91:        LDA #$01                  ;
CODE_03CA93:        STA $BC,x                 ;
CODE_03CA95:        STA $10,x                 ;
CODE_03CA97:        LSR A                     ;
CODE_03CA98:        STA $5E,x                 ;
CODE_03CA9A:        LDA #$08                  ;
CODE_03CA9C:        STA $A1,x                 ;
CODE_03CA9E:        RTS                       ;

DATA_03CA9F:        db $01,$02,$04,$08,$10,$20,$40,$80

DATA_03CAA7:        db $40,$30,$90,$50,$20,$60,$A0,$70

DATA_03CAAF:        db $0A,$0B

CODE_03CAB1:        LDA $079B                 ;
CODE_03CAB4:        BNE CODE_03CB21           ;
CODE_03CAB6:        LDA $5C                   ;
CODE_03CAB8:        BNE CODE_03CB0E           ;
CODE_03CABA:        CPX #$03                  ;
CODE_03CABC:        BCS CODE_03CB21           ;
CODE_03CABE:        LDY #$00                  ;\
CODE_03CAC0:        LDA $07B7,x               ; |if RNG == $AA-$FF, y = 0
CODE_03CAC3:        CMP #$AA                  ; |else y = 1
CODE_03CAC5:        BCC CODE_03CAC8           ; |if world == 2, y = 0
CODE_03CAC7:        INY                       ; |else y = 1
CODE_03CAC8:        LDA $075F                 ; |
CODE_03CACB:        CMP #$01                  ; |
CODE_03CACD:        BEQ CODE_03CAD0           ; |
CODE_03CACF:        INY                       ; |
CODE_03CAD0:        TYA                       ; |
CODE_03CAD1:        AND #$01                  ; |
CODE_03CAD3:        TAY                       ;/
CODE_03CAD4:        LDA DATA_03CAAF,y               ;\
CODE_03CAD7:        STA $1C,x                 ;/Sprite to generate: Red or Green swimming cheep-cheep depending on above pseudocode
CODE_03CAD9:        LDA $06DD                 ;
CODE_03CADC:        CMP #$FF                  ;
CODE_03CADE:        BNE CODE_03CAE3           ;
CODE_03CAE0:        STZ $06DD                 ;
CODE_03CAE3:        LDA $07B7,x               ;
CODE_03CAE6:        AND #$07                  ;
CODE_03CAE8:        TAY                       ;
CODE_03CAE9:        LDA DATA_03CA9F,y               ;
CODE_03CAEC:        BIT $06DD                 ;
CODE_03CAEF:        BEQ CODE_03CAF7           ;
CODE_03CAF1:        INY                       ;
CODE_03CAF2:        TYA                       ;
CODE_03CAF3:        AND #$07                  ;
CODE_03CAF5:        BRA CODE_03CAE8           ;

CODE_03CAF7:        ORA $06DD                 ;
CODE_03CAFA:        STA $06DD                 ;
CODE_03CAFD:        LDA DATA_03CAA7,y               ;
CODE_03CB00:        JSR CODE_03C9E8           ;
CODE_03CB03:        STA $041D,x               ;
CODE_03CB06:        LDA #$20                  ;
CODE_03CB08:        STA $079B                 ;
CODE_03CB0B:        JMP CODE_03C60B           ;

CODE_03CB0E:        LDY #$FF                  ;
CODE_03CB10:        INY                       ;
CODE_03CB11:        CPY #$09                  ;
CODE_03CB13:        BCS CODE_03CB22           ;
CODE_03CB15:        LDA $0010,y               ;
CODE_03CB18:        BEQ CODE_03CB10           ;
CODE_03CB1A:        LDA $001C,y               ;
CODE_03CB1D:        CMP #$08                  ;
CODE_03CB1F:        BNE CODE_03CB10           ;
CODE_03CB21:        RTS                       ;

CODE_03CB22:        LDA #$09                  ;\
CODE_03CB24:        STA $1603                 ;/Quake sound?
CODE_03CB27:        LDA #$08                  ;
CODE_03CB29:        BNE CODE_03CAD7           ;
CODE_03CB2B:        LDY #$00                  ;
CODE_03CB2D:        SEC                       ;
CODE_03CB2E:        SBC #$37                  ;
CODE_03CB30:        PHA                       ;
CODE_03CB31:        CMP #$04                  ;
CODE_03CB33:        BCS CODE_03CB40           ;
CODE_03CB35:        PHA                       ;
CODE_03CB36:        LDY #$06                  ;
CODE_03CB38:        LDA $076A                 ;"More difficult quest" flag
CODE_03CB3B:        BEQ CODE_03CB3F           ;
CODE_03CB3D:        LDY #$02                  ;
CODE_03CB3F:        PLA                       ;
CODE_03CB40:        STY $01                   ;
CODE_03CB42:        LDY #$B0                  ;
CODE_03CB44:        AND #$02                  ;
CODE_03CB46:        BEQ CODE_03CB4A           ;
CODE_03CB48:        LDY #$70                  ;
CODE_03CB4A:        STY $00                   ;
CODE_03CB4C:        LDA $071B                 ;
CODE_03CB4F:        STA $02                   ;
CODE_03CB51:        LDA $071D                 ;
CODE_03CB54:        STA $03                   ;
CODE_03CB56:        LDY #$02                  ;
CODE_03CB58:        PLA                       ;
CODE_03CB59:        LSR A                     ;
CODE_03CB5A:        BCC CODE_03CB5D           ;
CODE_03CB5C:        INY                       ;
CODE_03CB5D:        STY $06D3                 ;
CODE_03CB60:        LDX #$FF                  ;
CODE_03CB62:        INX                       ;
CODE_03CB63:        CPX #$09                  ;
CODE_03CB65:        BCS CODE_03CB96           ;
CODE_03CB67:        LDA $10,x                 ;
CODE_03CB69:        BNE CODE_03CB62           ;
CODE_03CB6B:        LDA $01                   ;
CODE_03CB6D:        STA $1C,x                 ;
CODE_03CB6F:        LDA $02                   ;
CODE_03CB71:        STA $79,x                 ;
CODE_03CB73:        LDA $03                   ;
CODE_03CB75:        STA $021A,x               ;
CODE_03CB78:        CLC                       ;
CODE_03CB79:        ADC #$18                  ;
CODE_03CB7B:        STA $03                   ;
CODE_03CB7D:        LDA $02                   ;
CODE_03CB7F:        ADC #$00                  ;
CODE_03CB81:        STA $02                   ;
CODE_03CB83:        LDA $00                   ;
CODE_03CB85:        STA $0238,x               ;
CODE_03CB88:        LDA #$01                  ;
CODE_03CB8A:        STA $BC,x                 ;
CODE_03CB8C:        STA $10,x                 ;
CODE_03CB8E:        JSR CODE_03C60B           ;
CODE_03CB91:        DEC $06D3                 ;
CODE_03CB94:        BNE CODE_03CB60           ;
CODE_03CB96:        JMP CODE_03C5FF           ;

CODE_03CB99:        LDA #$01                  ;
CODE_03CB9B:        STA $5E,x                 ;
CODE_03CB9D:        LSR A                     ;
CODE_03CB9E:        STA $29,x                 ;
CODE_03CBA0:        STA $A1,x                 ;
CODE_03CBA2:        LDA $0238,x               ;
CODE_03CBA5:        STA $043D,x               ;
CODE_03CBA8:        SEC                       ;
CODE_03CBA9:        SBC #$18                  ;
CODE_03CBAB:        STA $041D,x               ;
CODE_03CBAE:        LDA #$09                  ;
CODE_03CBB0:        LDA #$0C                  ;
CODE_03CBB2:        JMP CODE_03CBFC           ;

CODE_03CBB5:        LDA $1C,x                 ;\ Generator to create
CODE_03CBB7:        STA $06CB                 ;/ Store in this RAM address
CODE_03CBBA:        SEC                       ;\ Subtract sprite by $12
CODE_03CBBB:        SBC #$12                  ;/
CODE_03CBBD:        ASL A                     ;\ Multiply by 2
CODE_03CBBE:        TAY                       ;/ To use it as an index
CODE_03CBBF:        LDA PNTR_03CBCC,y               ;\
CODE_03CBC2:        STA $04                   ; |
CODE_03CBC4:        LDA PNTR_03CBCC+1,y               ; | Jump to pointer tables below.
CODE_03CBC7:        STA $05                   ; |
CODE_03CBC9:        JMP ($0004)               ;/

;MAIN Routines for generators 12-17 (redirected from INIT routine pointer table)
PNTR_03CBCC:        dw CODE_03C768            ;12 - Lakitu generator (?)
                    dw CODE_03CBD8            ;13 - Nothing at all (crashes)
                    dw CODE_03C870            ;14 - Red flying cheep cheep generator
                    dw CODE_03C976            ;15 - Bowser's fire generator
                    dw CODE_03CA50            ;16 - Fireworks generator
                    dw CODE_03CAB1            ;17 - Bullet bill/swimming cheep cheep generator

CODE_03CBD8:        RTS                       ;Return

CODE_03CBD9:        LDY #$09                  ;\ Disable lakitu generator sprite
CODE_03CBDB:        LDA $001C,y               ; |Find a lakitu, any of them
CODE_03CBDE:        CMP #$11                  ; |
CODE_03CBE0:        BNE CODE_03CBE7           ; |
CODE_03CBE2:        LDA #$01                  ; |Tell them to go off-screen to the left without doing
CODE_03CBE4:        STA $0029,y               ; |anything.
CODE_03CBE7:        DEY                       ; |
CODE_03CBE8:        BPL CODE_03CBDB           ; |
CODE_03CBEA:        LDA #$00                  ; |
CODE_03CBEC:        STA $06CB                 ; |
CODE_03CBEF:        STA $10,x                 ; |Disable on-screen flag?
CODE_03CBF1:        RTS                       ;/Return

CODE_03CBF2:        LDA #$02                  ;
CODE_03CBF4:        STA $47,x                 ;
CODE_03CBF6:        LDA #$F8                  ;
CODE_03CBF8:        STA $5E,x                 ;
CODE_03CBFA:        LDA #$03                  ;
CODE_03CBFC:        STA $0490,x               ;
CODE_03CBFF:        RTS                       ;

CODE_03CC00:        DEC $0238,x               ;
CODE_03CC03:        DEC $0238,x               ;
CODE_03CC06:        LDY $06CC                 ;
CODE_03CC09:        BNE CODE_03CC10           ;
CODE_03CC0B:        LDY #$02                  ;
CODE_03CC0D:        JSR CODE_03CC95           ;
CODE_03CC10:        LDY #$FF                  ;
CODE_03CC12:        LDA $03A0                 ;
CODE_03CC15:        STA $29,x                 ;
CODE_03CC17:        BPL CODE_03CC1B           ;
CODE_03CC19:        TXA                       ;
CODE_03CC1A:        TAY                       ;
CODE_03CC1B:        STY $03A0                 ;
CODE_03CC1E:        LDA #$00                  ;
CODE_03CC20:        STA $47,x                 ;
CODE_03CC22:        TAY                       ;
CODE_03CC23:        JSR CODE_03CC95           ;
CODE_03CC26:        LDA #$FF                  ;
CODE_03CC28:        STA $03A2,x               ;
CODE_03CC2B:        JMP CODE_03CC4D           ;

CODE_03CC2E:        LDA #$00                  ;
CODE_03CC30:        STA $5E,x                 ;
CODE_03CC32:        JMP CODE_03CC4D           ;

CODE_03CC35:        LDY #$40                  ;
CODE_03CC37:        LDA $0238,x               ;
CODE_03CC3A:        BPL CODE_03CC43           ;
CODE_03CC3C:        EOR #$FF                  ;
CODE_03CC3E:        CLC                       ;
CODE_03CC3F:        ADC #$01                  ;
CODE_03CC41:        LDY #$C0                  ;
CODE_03CC43:        STA $0402,x               ;
CODE_03CC46:        TYA                       ;
CODE_03CC47:        CLC                       ;
CODE_03CC48:        ADC $0238,x               ;
CODE_03CC4B:        STA $5E,x                 ;
CODE_03CC4D:        JSR CODE_03C726           ;
CODE_03CC50:        LDA #$05                  ;
CODE_03CC52:        LDY $5C                   ;
CODE_03CC54:        CPY #$03                  ;
CODE_03CC56:        BEQ CODE_03CC5F           ;
CODE_03CC58:        LDY $06CC                 ;
CODE_03CC5B:        BNE CODE_03CC5F           ;
CODE_03CC5D:        LDA #$06                  ;
CODE_03CC5F:        STA $0490,x               ;
CODE_03CC62:        RTS                       ;

CODE_03CC63:        JSR CODE_03CC6F           ;
CODE_03CC66:        JMP CODE_03CC6C           ;

CODE_03CC69:        JSR CODE_03CC7B           ;
CODE_03CC6C:        JMP CODE_03CC50           ;

CODE_03CC6F:        LDA #$10                  ;
CODE_03CC71:        STA $043D,x               ;
CODE_03CC74:        LDA #$FF                  ;
CODE_03CC76:        STA $A1,x                 ;
CODE_03CC78:        JMP CODE_03CC84           ;

CODE_03CC7B:        LDA #$F0                  ;
CODE_03CC7D:        STA $043D,x               ;
CODE_03CC80:        LDA #$00                  ;
CODE_03CC82:        STA $A1,x                 ;
CODE_03CC84:        LDY #$01                  ;
CODE_03CC86:        JSR CODE_03CC95           ;
CODE_03CC89:        LDA #$04                  ;
CODE_03CC8B:        STA $0490,x               ;
CODE_03CC8E:        RTS                       ;

DATA_03CC8F:        db $08,$0C,$F8

DATA_03CC92:        db $00,$00,$FF

CODE_03CC95:        LDA $021A,x               ;
CODE_03CC98:        CLC                       ;
CODE_03CC99:        ADC DATA_03CC8F,y               ;
CODE_03CC9C:        STA $021A,x               ;
CODE_03CC9F:        LDA $79,x                 ;
CODE_03CCA1:        ADC DATA_03CC92,y               ;
CODE_03CCA4:        STA $79,x                 ;
CODE_03CCA6:        RTS                       ;

CODE_03CCA7:        RTS                       ;

CODE_03CCA8:        LDX $9E                   ;Get sprite index
CODE_03CCAA:        LDA #$00                  ;load 00 into A
CODE_03CCAC:        LDY $1C,x                 ;Load current sprite number
CODE_03CCAE:        CPY #$15                  ;\If it is smaller than $15 ($00-$14)
CODE_03CCB0:        BCC CODE_03CCB5           ;/Skip the next 2 lines. 
CODE_03CCB2:        TYA                       ;
CODE_03CCB3:        SBC #$14                  ;
CODE_03CCB5:        ASL A                     ;Get index to next table
CODE_03CCB6:        TAY                       ;A -> Y
CODE_03CCB7:        LDA PNTR_03CCC4,y               ;\
CODE_03CCBA:        STA $04                   ; |Load 16-bit pointer tables
CODE_03CCBC:        LDA PNTR_03CCC4+1,y               ; |
CODE_03CCBF:        STA $05                   ; |
CODE_03CCC1:        JMP ($0004)               ;/

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

CODE_03CD08:        RTS                       ;

CODE_03CD09:        JSR CODE_03FDCB           ;
CODE_03CD0C:        JSR CODE_03FD39           ;
CODE_03CD0F:        JMP CODE_03EEEF           ;

CODE_03CD12:        LDA #$20                  ;\Handle sprites $00-$14
CODE_03CD14:        STA $0257,x               ;/ Set sprite onscreen flag
CODE_03CD17:        JSR CODE_03FDCB           ;
CODE_03CD1A:        JSR CODE_03FD39           ;
CODE_03CD1D:        JSR CODE_03EEEF           ;
CODE_03CD20:        JSR CODE_03E9CC           ;
CODE_03CD23:        JSR CODE_03E72E           ;
CODE_03CD26:        JSR CODE_03E0C4           ;
CODE_03CD29:        JSR CODE_03DE55           ;
CODE_03CD2C:        LDY $0747                 ;\
CODE_03CD2F:        BNE CODE_03CD34           ; | Update sprite movement when game is not locked
CODE_03CD31:        JSR CODE_03CD37           ;/
CODE_03CD34:        JMP CODE_03DC03           ;

CODE_03CD37:        LDA $1C,x                 ;Load sprite number
CODE_03CD39:        ASL A                     ;*2
CODE_03CD3A:        TAY                       ;Use as index
CODE_03CD3B:        LDA PNTR_03CD48,y               ;\
CODE_03CD3E:        STA $04                   ; |
CODE_03CD40:        LDA PNTR_03CD48+1,y               ; |Jump to the sprite routines
CODE_03CD43:        STA $05                   ; |
CODE_03CD45:        JMP ($0004)               ;/

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

CODE_03CD72:        RTS                       ;

CODE_03CD73:        JSR CODE_03D70B           ;
CODE_03CD76:        JSR CODE_03FDCB           ;
CODE_03CD79:        JSR CODE_03FD39           ;
CODE_03CD7C:        JSR CODE_03E9CC           ;
CODE_03CD7F:        JSR CODE_03DE55           ;
CODE_03CD82:        JMP CODE_03DC03           ;

CODE_03CD85:        JSR CODE_03D1E1           ;
CODE_03CD88:        JMP CODE_03DC03           ;

CODE_03CD8B:        JSR CODE_03FDCB           ;
CODE_03CD8E:        JSR CODE_03FD39           ;
CODE_03CD91:        JSR CODE_03E9D5           ;
CODE_03CD94:        JSR CODE_03E21E           ;
CODE_03CD97:        JSR CODE_03FD39           ;
CODE_03CD9A:        JSR CODE_03F5B2           ;
CODE_03CD9D:        JSR CODE_03DBD9           ;
CODE_03CDA0:        JMP CODE_03DC03           ;

CODE_03CDA3:        JSR CODE_03FDCB           ;
CODE_03CDA6:        JSR CODE_03FD39           ;
CODE_03CDA9:        JSR CODE_03EA04           ;
CODE_03CDAC:        JSR CODE_03E1E7           ;
CODE_03CDAF:        LDA $0747                 ;
CODE_03CDB2:        BNE CODE_03CDB7           ;
CODE_03CDB4:        JSR CODE_03CDC0           ;
CODE_03CDB7:        JSR CODE_03FD39           ;
CODE_03CDBA:        JSR CODE_03EC5E           ;
CODE_03CDBD:        JMP CODE_03DC03           ;

CODE_03CDC0:        LDA $1C,x                 ;\Load sprite number
CODE_03CDC2:        SEC                       ; |Sprite number - $24
CODE_03CDC3:        SBC #$24                  ; |
CODE_03CDC5:        ASL A                     ;/|*2
CODE_03CDC6:        TAY                       ;/Use as index. Sprite $24 will haxe index $00
CODE_03CDC7:        LDA PNTR_03CDD4,y               ;\
CODE_03CDCA:        STA $04                   ; |
CODE_03CDCC:        LDA PNTR_03CDD4+1,y               ; |
CODE_03CDCF:        STA $05                   ; |Jump to pointer tables
CODE_03CDD1:        JMP ($0004)               ;/

;lift movement handler (move by itself, move when stepped on by player, etc)

PNTR_03CDD4:        dw CODE_03D914            ;24 - Lift (Balance)
                    dw CODE_03DB54            ;25 - Lift (Down then up)
                    dw CODE_03DBD3            ;26 - Lift (Up)
                    dw CODE_03DBD3            ;27 - Lift (Down)
                    dw CODE_03DB8A            ;28 - Lift (Left then right)
                    dw CODE_03DBB5            ;28 - Lift (Fall)
                    dw CODE_03DBC1            ;29 - Lift (Right)

; Erase sprite
CODE_03CDE2:        STZ $07A2,x               ; Clear enemy interval timer
CODE_03CDE5:        CPX #$09                  ;\ Check if sprite index is that of a [?]-block item
CODE_03CDE7:        BNE CODE_03CE00           ;/ If not, skip.
CODE_03CDE9:        LDA #$F0                  ;
CODE_03CDEB:        STA $09E1                 ;
CODE_03CDEE:        STA $09E5                 ;
CODE_03CDF1:        STA $09E9                 ;
CODE_03CDF4:        STA $09ED                 ;
CODE_03CDF7:        LDA $DB                   ;
CODE_03CDF9:        CMP #$22                  ;
CODE_03CDFB:        BNE CODE_03CE00           ;
CODE_03CDFD:        STZ $0743                 ;No cloud terrain
CODE_03CE00:        STZ $10,x                 ;Clear sprite flag
CODE_03CE02:        STZ $1C,x                 ;Clear sprite number
CODE_03CE04:        STZ $29,x                 ;Clear sprite state
CODE_03CE06:        STZ $0110,x               ;Clear shell chain counter
CODE_03CE09:        STZ $012E,x               ;
CODE_03CE0C:        STZ $0792,x               ;
CODE_03CE0F:        STZ $03A2,x               ;
CODE_03CE12:        LDA #$20                  ;
CODE_03CE14:        STA $0257,x               ;
CODE_03CE17:        LDA #$00                  ;
CODE_03CE19:        RTS                       ;

CODE_03CE1A:        LDA $07A2,x               ;\If jump timer not expired
CODE_03CE1D:        BNE CODE_03CE35           ; |
CODE_03CE1F:        JSR CODE_03C6A4           ;/Init podoboo again
CODE_03CE22:        LDA $07B8,x               ;\
CODE_03CE25:        ORA #$80                  ; | Set movement force according to LSFR random number generator output
CODE_03CE27:        STA $043D,x               ;/
CODE_03CE2A:        AND #$0F                  ;\
CODE_03CE2C:        ORA #$06                  ; | Set interval timer again
CODE_03CE2E:        STA $07A2,x               ;/
CODE_03CE31:        LDA #$F9                  ;\ Set jumping speed of podoboo
CODE_03CE33:        STA $A1,x                 ;/
CODE_03CE35:        LDA $00A1,x               ;\If speed is upwards, skip
CODE_03CE38:        BMI CODE_03CE53           ;/
CODE_03CE3A:        LDA $0238,x               ;\
CODE_03CE3D:        CMP #$C0                  ; | if Y position is less than $C0, skip
CODE_03CE3F:        BCC CODE_03CE53           ;/
CODE_03CE41:        LDA $0B00,x               ;
CODE_03CE44:        CMP #$02                  ;
CODE_03CE46:        BNE CODE_03CE53           ;
CODE_03CE48:        INC $0B00,x               ;
CODE_03CE4B:        STZ $0B09,x               ;Reset some timer
CODE_03CE4E:        LDA #$27                  ;\Podoboo jump sound
CODE_03CE50:        STA $1603                 ;/
CODE_03CE53:        INC $0B09,x               ;Increase some timer
CODE_03CE56:        JSL CODE_05D614           ;Leave behind fire and lava particles
CODE_03CE5A:        JMP CODE_03C140           ;

DATA_03CE5D:        db $30,$1C

DATA_03CE5F:        db $00,$E8,$00,$18

DATA_03CE63:        db $08,$F8,$0C,$F4

CODE_03CE67:        LDA $29,x                 ;\MAIN routine of hammer bros
CODE_03CE69:        AND #$20                  ; |If not dying, branch
CODE_03CE6B:        BEQ CODE_03CE70           ;/
CODE_03CE6D:        JMP CODE_03CF76           ;Else, jump if dying.

CODE_03CE70:        LDA $020F,x               ;\ Hammer bros jump timer
CODE_03CE73:        BEQ CODE_03CEA3           ; |If jump timer reached 00, make hammer bros jump
CODE_03CE75:        DEC $020F,x               ;/ else, decrease timer and continue.
CODE_03CE78:        LDA $03D1                 ;\
CODE_03CE7B:        AND #$0C                  ; |If $04,$08 or $0C
CODE_03CE7D:        BNE CODE_03CEE9           ;/Branch
CODE_03CE7F:        LDA $03A2,x               ;\If hammer throw timer ($03A2) is not 00
CODE_03CE82:        BNE CODE_03CE9B           ;/Branch
CODE_03CE84:        LDY $06CC                 ;\
CODE_03CE87:        LDA DATA_03CE5D,y               ; | Set hammer throwing timer according to hard world (post 5-3) flag
CODE_03CE8A:        STA $03A2,x               ;/
CODE_03CE8D:        JSR CODE_03BB8E           ;
CODE_03CE90:        BCC CODE_03CE9B           ;
CODE_03CE92:        LDA $29,x                 ;
CODE_03CE94:        ORA #$08                  ;
CODE_03CE96:        STA $29,x                 ;
CODE_03CE98:        JMP CODE_03CEE9           ;

CODE_03CE9B:        DEC $03A2,x               ;
CODE_03CE9E:        JMP CODE_03CEE9           ;

DATA_03CEA1:        db $20,$37

CODE_03CEA3:        LDA $29,x                 ;
CODE_03CEA5:        AND #$07                  ;
CODE_03CEA7:        CMP #$01                  ;
CODE_03CEA9:        BEQ CODE_03CEE9           ;
CODE_03CEAB:        STZ $00                   ;
CODE_03CEAD:        LDY #$FA                  ;
CODE_03CEAF:        LDA $0238,x               ;
CODE_03CEB2:        BMI CODE_03CEC7           ;
CODE_03CEB4:        LDY #$FD                  ;
CODE_03CEB6:        CMP #$70                  ;
CODE_03CEB8:        INC $00                   ;
CODE_03CEBA:        BCC CODE_03CEC7           ;
CODE_03CEBC:        DEC $00                   ;
CODE_03CEBE:        LDA $07B8,x               ;
CODE_03CEC1:        AND #$01                  ;
CODE_03CEC3:        BNE CODE_03CEC7           ;
CODE_03CEC5:        LDY #$FA                  ;
CODE_03CEC7:        STY $A1,x                 ;
CODE_03CEC9:        LDA $29,x                 ;
CODE_03CECB:        ORA #$01                  ;
CODE_03CECD:        STA $29,x                 ;
CODE_03CECF:        LDA $00                   ;
CODE_03CED1:        AND $07B9,x               ;
CODE_03CED4:        TAY                       ;
CODE_03CED5:        LDA $06CC                 ;
CODE_03CED8:        BNE CODE_03CEDB           ;
CODE_03CEDA:        TAY                       ;
CODE_03CEDB:        LDA DATA_03CEA1,y               ;
CODE_03CEDE:        STA $0792,x               ;
CODE_03CEE1:        LDA $07B8,x               ;
CODE_03CEE4:        ORA #$C0                  ;
CODE_03CEE6:        STA $020F,x               ;
CODE_03CEE9:        LDY #$FC                  ; Hammer bros forwards walking speed
CODE_03CEEB:        LDA $09                   ;
CODE_03CEED:        AND #$40                  ;
CODE_03CEEF:        BNE CODE_03CEF3           ;
CODE_03CEF1:        LDY #$04                  ;\ Hammer bros backwards walking speed
CODE_03CEF3:        STY $5E,x                 ;/
CODE_03CEF5:        LDY #$01                  ; Set sprite direction to right
CODE_03CEF7:        JSR CODE_03E8BC           ;\SUB_HORZ_POS
CODE_03CEFA:        BMI CODE_03CF06           ;/ Branch if player is to the right of the hammer bros.
CODE_03CEFC:        INY                       ; Set sprite direction to left
CODE_03CEFD:        LDA $07A2,x               ;\ Check if Hammer Bros. has waited long enough
CODE_03CF00:        BNE CODE_03CF06           ;/
CODE_03CF02:        LDA #$F8                  ;\ Hammer bros forwards walking speed after he has waited long enough.
CODE_03CF04:        STA $5E,x                 ;/
CODE_03CF06:        STY $47,x                 ;Set sprite direction
CODE_03CF08:        LDY #$00                  ;
CODE_03CF0A:        LDA $29,x                 ;
CODE_03CF0C:        AND #$40                  ;
CODE_03CF0E:        BNE CODE_03CF29           ;
CODE_03CF10:        LDA $29,x                 ;
CODE_03CF12:        ASL A                     ;
CODE_03CF13:        BCS CODE_03CF45           ;
CODE_03CF15:        LDA $29,x                 ;
CODE_03CF17:        AND #$20                  ;
CODE_03CF19:        BNE CODE_03CF76           ;
CODE_03CF1B:        LDA $29,x                 ;
CODE_03CF1D:        AND #$07                  ;
CODE_03CF1F:        BEQ CODE_03CF45           ;
CODE_03CF21:        CMP #$05                  ;
CODE_03CF23:        BEQ CODE_03CF29           ;
CODE_03CF25:        CMP #$03                  ;
CODE_03CF27:        BCS CODE_03CF59           ;
CODE_03CF29:        JSR CODE_03C113           ;
CODE_03CF2C:        LDY #$00                  ;
CODE_03CF2E:        LDA $29,x                 ;
CODE_03CF30:        CMP #$02                  ;
CODE_03CF32:        BEQ CODE_03CF40           ;
CODE_03CF34:        AND #$40                  ;
CODE_03CF36:        BEQ CODE_03CF45           ;
CODE_03CF38:        LDA $1C,x                 ;
CODE_03CF3A:        CMP #$2E                  ;
CODE_03CF3C:        BEQ CODE_03CF45           ;
CODE_03CF3E:        BNE CODE_03CF43           ;
CODE_03CF40:        JMP CODE_03C0AD           ;

CODE_03CF43:        LDY #$01                  ;
CODE_03CF45:        LDA $5E,x                 ;
CODE_03CF47:        PHA                       ;
CODE_03CF48:        BPL CODE_03CF4C           ;
CODE_03CF4A:        INY                       ;
CODE_03CF4B:        INY                       ;
CODE_03CF4C:        CLC                       ;
CODE_03CF4D:        ADC DATA_03CE5F,y               ;
CODE_03CF50:        STA $5E,x                 ;
CODE_03CF52:        JSR CODE_03C0AD           ;
CODE_03CF55:        PLA                       ;
CODE_03CF56:        STA $5E,x                 ;
CODE_03CF58:        RTS                       ;

CODE_03CF59:        LDA $07A2,x               ;
CODE_03CF5C:        BNE CODE_03CF7C           ;
CODE_03CF5E:        STA $29,x                 ;
CODE_03CF60:        LDA $09                   ;
CODE_03CF62:        AND #$01                  ;
CODE_03CF64:        TAY                       ;
CODE_03CF65:        INY                       ;
CODE_03CF66:        STY $47,x                 ;
CODE_03CF68:        DEY                       ;
CODE_03CF69:        LDA $076A                 ;"More difficult quest" flag
CODE_03CF6C:        BEQ CODE_03CF70           ;
CODE_03CF6E:        INY                       ;
CODE_03CF6F:        INY                       ;
CODE_03CF70:        LDA DATA_03CE63,y               ;
CODE_03CF73:        STA $5E,x                 ;
CODE_03CF75:        RTS                       ;

CODE_03CF76:        JSR CODE_03C113           ;
CODE_03CF79:        JMP CODE_03C0AD           ;

CODE_03CF7C:        CMP #$0E                  ;
CODE_03CF7E:        BNE CODE_03CF89           ;
CODE_03CF80:        LDA $1C,x                 ;
CODE_03CF82:        CMP #$06                  ;
CODE_03CF84:        BNE CODE_03CF89           ;
CODE_03CF86:        JSR CODE_03CDE2           ; Erase sprite
CODE_03CF89:        RTS                       ;

CODE_03CF8A:        JSR CODE_03C140           ;
CODE_03CF8D:        JMP CODE_03C0AD           ;

CODE_03CF90:        LDA $A1,x                 ;
CODE_03CF92:        ORA $043D,x               ;
CODE_03CF95:        BNE CODE_03CFAC           ;
CODE_03CF97:        STA $041D,x               ;
CODE_03CF9A:        LDA $0238,x               ;
CODE_03CF9D:        CMP $0402,x               ;
CODE_03CFA0:        BCS CODE_03CFAC           ;
CODE_03CFA2:        LDA $09                   ;
CODE_03CFA4:        AND #$07                  ;
CODE_03CFA6:        BNE CODE_03CFAB           ;
CODE_03CFA8:        INC $0238,x               ;
CODE_03CFAB:        RTS                       ;

CODE_03CFAC:        LDA $0238,x               ;
CODE_03CFAF:        CMP $5E,x                 ;
CODE_03CFB1:        BCC CODE_03CFB6           ;
CODE_03CFB3:        JMP CODE_03C123           ;

CODE_03CFB6:        JMP CODE_03C11F           ;

CODE_03CFB9:        JSR CODE_03CFDB           ;
CODE_03CFBC:        JSR CODE_03CFFC           ;
CODE_03CFBF:        LDY #$01                  ;
CODE_03CFC1:        LDA $09                   ;
CODE_03CFC3:        AND #$03                  ;
CODE_03CFC5:        BNE CODE_03CFDA           ;
CODE_03CFC7:        LDA $09                   ;
CODE_03CFC9:        AND #$40                  ;
CODE_03CFCB:        BNE CODE_03CFCF           ;
CODE_03CFCD:        LDY #$FF                  ;
CODE_03CFCF:        STY $00                   ;
CODE_03CFD1:        LDA $0238,x               ;
CODE_03CFD4:        CLC                       ;
CODE_03CFD5:        ADC $00                   ;
CODE_03CFD7:        STA $0238,x               ;
CODE_03CFDA:        RTS                       ;

CODE_03CFDB:        LDA #$13                  ;
CODE_03CFDD:        STA $01                   ;
CODE_03CFDF:        LDA $09                   ;
CODE_03CFE1:        AND #$03                  ;
CODE_03CFE3:        BNE CODE_03CFF2           ;
CODE_03CFE5:        LDY $5E,x                 ;
CODE_03CFE7:        LDA $A1,x                 ;
CODE_03CFE9:        LSR A                     ;
CODE_03CFEA:        BCS CODE_03CFF6           ;
CODE_03CFEC:        CPY $01                   ;
CODE_03CFEE:        BEQ CODE_03CFF3           ;
CODE_03CFF0:        INC $5E,x                 ;
CODE_03CFF2:        RTS                       ;

CODE_03CFF3:        INC $A1,x                 ;
CODE_03CFF5:        RTS                       ;

CODE_03CFF6:        TYA                       ;
CODE_03CFF7:        BEQ CODE_03CFF3           ;
CODE_03CFF9:        DEC $5E,x                 ;
CODE_03CFFB:        RTS                       ;

CODE_03CFFC:        LDA $5E,x                 ;
CODE_03CFFE:        PHA                       ;
CODE_03CFFF:        LDY #$01                  ;
CODE_03D001:        LDA $A1,x                 ;
CODE_03D003:        AND #$02                  ;
CODE_03D005:        BNE CODE_03D012           ;
CODE_03D007:        LDA $5E,x                 ;
CODE_03D009:        EOR #$FF                  ;
CODE_03D00B:        CLC                       ;
CODE_03D00C:        ADC #$01                  ;
CODE_03D00E:        STA $5E,x                 ;
CODE_03D010:        LDY #$02                  ;
CODE_03D012:        STY $47,x                 ;
CODE_03D014:        JSR CODE_03C0AD           ;
CODE_03D017:        STA $00                   ;
CODE_03D019:        PLA                       ;
CODE_03D01A:        STA $5E,x                 ;
CODE_03D01C:        RTS                       ;

DATA_03D01D:        db $3F,$03

CODE_03D01F:        LDA $29,x                 ;
CODE_03D021:        AND #$20                  ;
CODE_03D023:        BNE CODE_03D078           ;
CODE_03D025:        LDY $06CC                 ;
CODE_03D028:        LDA $07B8,x               ;
CODE_03D02B:        AND DATA_03D01D,y               ;
CODE_03D02E:        BNE CODE_03D042           ;
CODE_03D030:        TXA                       ;
CODE_03D031:        LSR A                     ;
CODE_03D032:        BCC CODE_03D038           ;
CODE_03D034:        LDY $46                   ;
CODE_03D036:        BCS CODE_03D040           ;
CODE_03D038:        LDY #$02                  ;
CODE_03D03A:        JSR CODE_03E8BC           ;
CODE_03D03D:        BPL CODE_03D040           ;
CODE_03D03F:        DEY                       ;
CODE_03D040:        STY $47,x                 ;
CODE_03D042:        JSR CODE_03D07B           ;
CODE_03D045:        LDA $0238,x               ;
CODE_03D048:        SEC                       ;
CODE_03D049:        SBC $043D,x               ;
CODE_03D04C:        CMP #$20                  ;
CODE_03D04E:        BCC CODE_03D053           ;
CODE_03D050:        STA $0238,x               ;
CODE_03D053:        LDY $47,x                 ;
CODE_03D055:        DEY                       ;
CODE_03D056:        BNE CODE_03D068           ;
CODE_03D058:        LDA $021A,x               ;
CODE_03D05B:        CLC                       ;
CODE_03D05C:        ADC $5E,x                 ;
CODE_03D05E:        STA $021A,x               ;
CODE_03D061:        LDA $79,x                 ;
CODE_03D063:        ADC #$00                  ;
CODE_03D065:        STA $79,x                 ;
CODE_03D067:        RTS                       ;

CODE_03D068:        LDA $021A,x               ;\
CODE_03D06B:        SEC                       ; |
CODE_03D06C:        SBC $5E,x                 ; | Subtract sprite X position with sprite X speed
CODE_03D06E:        STA $021A,x               ; |
CODE_03D071:        LDA $79,x                 ; |
CODE_03D073:        SBC #$00                  ; |
CODE_03D075:        STA $79,x                 ;/
CODE_03D077:        RTS                       ;

CODE_03D078:        JMP CODE_03C13A           ;

CODE_03D07B:        LDA $A1,x                 ;
CODE_03D07D:        AND #$02                  ;
CODE_03D07F:        BNE CODE_03D0B8           ;
CODE_03D081:        LDA $09                   ;
CODE_03D083:        AND #$07                  ;
CODE_03D085:        PHA                       ;
CODE_03D086:        LDA $A1,x                 ;
CODE_03D088:        LSR A                     ;
CODE_03D089:        BCS CODE_03D0A0           ;
CODE_03D08B:        PLA                       ;
CODE_03D08C:        BNE CODE_03D09F           ;
CODE_03D08E:        LDA $043D,x               ;
CODE_03D091:        CLC                       ;
CODE_03D092:        ADC #$01                  ;
CODE_03D094:        STA $043D,x               ;
CODE_03D097:        STA $5E,x                 ;
CODE_03D099:        CMP #$02                  ;
CODE_03D09B:        BNE CODE_03D09F           ;
CODE_03D09D:        INC $A1,x                 ;
CODE_03D09F:        RTS                       ;

CODE_03D0A0:        PLA                       ;
CODE_03D0A1:        BNE CODE_03D0B7           ;
CODE_03D0A3:        LDA $043D,x               ;
CODE_03D0A6:        SEC                       ;
CODE_03D0A7:        SBC #$01                  ;
CODE_03D0A9:        STA $043D,x               ;
CODE_03D0AC:        STA $5E,x                 ;
CODE_03D0AE:        BNE CODE_03D0B7           ;
CODE_03D0B0:        INC $A1,x                 ;
CODE_03D0B2:        LDA #$02                  ;
CODE_03D0B4:        STA $07A2,x               ;
CODE_03D0B7:        RTS                       ;

CODE_03D0B8:        LDA $07A2,x               ;
CODE_03D0BB:        BEQ CODE_03D0C6           ;
CODE_03D0BD:        LDA $09                   ;
CODE_03D0BF:        LSR A                     ;
CODE_03D0C0:        BCS CODE_03D0C5           ;
CODE_03D0C2:        INC $0238,x               ;
CODE_03D0C5:        RTS                       ;

CODE_03D0C6:        LDA $0238,x               ;
CODE_03D0C9:        ADC #$10                  ;
CODE_03D0CB:        CMP $0237                 ;
CODE_03D0CE:        BCC CODE_03D0BD           ;
CODE_03D0D0:        LDA #$00                  ;
CODE_03D0D2:        STA $A1,x                 ;
CODE_03D0D4:        RTS                       ;

CODE_03D0D5:        LDA $29,x                 ;
CODE_03D0D7:        AND #$20                  ;
CODE_03D0D9:        BEQ CODE_03D0DE           ;
CODE_03D0DB:        JMP CODE_03C140           ;

CODE_03D0DE:        LDA #$E8                  ;
CODE_03D0E0:        STA $5E,x                 ;
CODE_03D0E2:        JMP CODE_03C0AD           ;

DATA_03D0E5:        db $40,$80,$04,$04

CODE_03D0E9:        LDA $29,x                 ;
CODE_03D0EB:        AND #$20                  ;
CODE_03D0ED:        BEQ CODE_03D0F2           ;
CODE_03D0EF:        JMP CODE_03C13A           ;

CODE_03D0F2:        STA $03                   ;
CODE_03D0F4:        LDA $1C,x                 ;
CODE_03D0F6:        SEC                       ;
CODE_03D0F7:        SBC #$0A                  ;
CODE_03D0F9:        TAY                       ;
CODE_03D0FA:        LDA DATA_03D0E5,y               ;
CODE_03D0FD:        STA $02                   ;
CODE_03D0FF:        LDA $0402,x               ;
CODE_03D102:        SEC                       ;
CODE_03D103:        SBC $02                   ;
CODE_03D105:        STA $0402,x               ;
CODE_03D108:        LDA $021A,x               ;
CODE_03D10B:        SBC #$00                  ;
CODE_03D10D:        STA $021A,x               ;
CODE_03D110:        LDA $79,x                 ;
CODE_03D112:        SBC #$00                  ;
CODE_03D114:        STA $79,x                 ;
CODE_03D116:        LDA #$20                  ;
CODE_03D118:        STA $02                   ;
CODE_03D11A:        CPX #$02                  ;
CODE_03D11C:        BCC CODE_03D16B           ;
CODE_03D11E:        LDA $5E,x                 ;
CODE_03D120:        CMP #$10                  ;
CODE_03D122:        BCC CODE_03D13B           ;
CODE_03D124:        LDA $041D,x               ;
CODE_03D127:        CLC                       ;
CODE_03D128:        ADC $02                   ;
CODE_03D12A:        STA $041D,x               ;
CODE_03D12D:        LDA $0238,x               ;
CODE_03D130:        ADC $03                   ;
CODE_03D132:        STA $0238,x               ;
CODE_03D135:        LDA $BC,x                 ;
CODE_03D137:        ADC #$00                  ;
CODE_03D139:        BRA CODE_03D150           ;

CODE_03D13B:        LDA $041D,x               ;
CODE_03D13E:        SEC                       ;
CODE_03D13F:        SBC $02                   ;
CODE_03D141:        STA $041D,x               ;
CODE_03D144:        LDA $0238,x               ;
CODE_03D147:        SBC $03                   ;
CODE_03D149:        STA $0238,x               ;
CODE_03D14C:        LDA $BC,x                 ;
CODE_03D14E:        SBC #$00                  ;
CODE_03D150:        STA $BC,x                 ;
CODE_03D152:        LDY #$00                  ;
CODE_03D154:        LDA $0238,x               ;
CODE_03D157:        SEC                       ;
CODE_03D158:        SBC $043D,x               ;
CODE_03D15B:        BPL CODE_03D164           ;
CODE_03D15D:        LDY #$10                  ;
CODE_03D15F:        EOR #$FF                  ;
CODE_03D161:        CLC                       ;
CODE_03D162:        ADC #$01                  ;
CODE_03D164:        CMP #$0F                  ;
CODE_03D166:        BCC CODE_03D16B           ;
CODE_03D168:        TYA                       ;
CODE_03D169:        STA $5E,x                 ;
CODE_03D16B:        RTS                       ;

DATA_03D16C:        db $00,$01,$03,$04,$05,$06,$07,$07
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

DATA_03D1CF:        db $01,$03,$02,$00

DATA_03D1D3:        db $00,$09,$12,$1B,$24,$2D,$36,$3F
                    db $48,$51,$5A,$63

DATA_03D1DF:        db $0C,$18

CODE_03D1E1:        JSR CODE_03FDCB           ;
CODE_03D1E4:        LDA $03D1                 ;
CODE_03D1E7:        AND #$08                  ;
CODE_03D1E9:        BNE CODE_03D25D           ;
CODE_03D1EB:        LDA $0747                 ;
CODE_03D1EE:        BNE CODE_03D1FA           ;
CODE_03D1F0:        LDA $0388,x               ;
CODE_03D1F3:        JSR CODE_03D8F1           ;
CODE_03D1F6:        AND #$1F                  ;
CODE_03D1F8:        STA $A1,x                 ;
CODE_03D1FA:        LDA $A1,x                 ;
CODE_03D1FC:        LDY $1C,x                 ;
CODE_03D1FE:        CPY #$1F                  ;
CODE_03D200:        BCC CODE_03D20F           ;
CODE_03D202:        CMP #$08                  ;
CODE_03D204:        BEQ CODE_03D20A           ;
CODE_03D206:        CMP #$18                  ;
CODE_03D208:        BNE CODE_03D20F           ;
CODE_03D20A:        CLC                       ;
CODE_03D20B:        ADC #$01                  ;
CODE_03D20D:        STA $A1,x                 ;
CODE_03D20F:        STA $EF                   ;
CODE_03D211:        JSR CODE_03FD39           ;
CODE_03D214:        JSR CODE_03D346           ;
CODE_03D217:        LDY $0B46,x               ;
CODE_03D21A:        LDA $03B9                 ;
CODE_03D21D:        STA $0901,y               ;
CODE_03D220:        STA $07                   ;
CODE_03D222:        LDA $03AE                 ;
CODE_03D225:        STA $0900,y               ;
CODE_03D228:        STA $06                   ;
CODE_03D22A:        LDA #$01                  ;
CODE_03D22C:        STA $00                   ;
CODE_03D22E:        JSR CODE_03D2BB           ;
CODE_03D231:        LDY #$05                  ;
CODE_03D233:        LDA $1C,x                 ;
CODE_03D235:        CMP #$1F                  ;
CODE_03D237:        BCC CODE_03D23B           ;
CODE_03D239:        LDY #$0B                  ;
CODE_03D23B:        STY $ED                   ;
CODE_03D23D:        STZ $00                   ;
CODE_03D23F:        LDA $EF                   ;
CODE_03D241:        JSR CODE_03D346           ;
CODE_03D244:        JSR CODE_03D25E           ;
CODE_03D247:        LDA $00                   ;
CODE_03D249:        CMP #$04                  ;
CODE_03D24B:        BNE CODE_03D255           ;
CODE_03D24D:        LDY $06CF                 ;
CODE_03D250:        LDA $0B46,y               ;
CODE_03D253:        STA $06                   ;
CODE_03D255:        INC $00                   ;
CODE_03D257:        LDA $00                   ;
CODE_03D259:        CMP $ED                   ;
CODE_03D25B:        BCC CODE_03D23F           ;
CODE_03D25D:        RTS                       ;

CODE_03D25E:        LDA $03                   ;
CODE_03D260:        STA $05                   ;
CODE_03D262:        LDY $06                   ;
CODE_03D264:        LDA $01                   ;
CODE_03D266:        LSR $05                   ;
CODE_03D268:        BCS CODE_03D26E           ;
CODE_03D26A:        EOR #$FF                  ;
CODE_03D26C:        ADC #$01                  ;
CODE_03D26E:        CLC                       ;
CODE_03D26F:        ADC $03AE                 ;
CODE_03D272:        STA $0900,y               ;
CODE_03D275:        STA $06                   ;
CODE_03D277:        CMP $03AE                 ;
CODE_03D27A:        BCS CODE_03D285           ;
CODE_03D27C:        LDA $03AE                 ;
CODE_03D27F:        SEC                       ;
CODE_03D280:        SBC $06                   ;
CODE_03D282:        JMP CODE_03D289           ;

CODE_03D285:        SEC                       ;
CODE_03D286:        SBC $03AE                 ;
CODE_03D289:        CMP #$59                  ;
CODE_03D28B:        BCC CODE_03D291           ;
CODE_03D28D:        LDA #$F8                  ;
CODE_03D28F:        BNE CODE_03D2A6           ;
CODE_03D291:        LDA $03B9                 ;
CODE_03D294:        CMP #$F8                  ;
CODE_03D296:        BEQ CODE_03D2A6           ;
CODE_03D298:        LDA $02                   ;
CODE_03D29A:        LSR $05                   ;
CODE_03D29C:        BCS CODE_03D2A2           ;
CODE_03D29E:        EOR #$FF                  ;
CODE_03D2A0:        ADC #$01                  ;
CODE_03D2A2:        CLC                       ;
CODE_03D2A3:        ADC $03B9                 ;
CODE_03D2A6:        STA $0901,y               ;
CODE_03D2A9:        STA $07                   ;
CODE_03D2AB:        CMP #$F0                  ;
CODE_03D2AD:        BCC CODE_03D2B6           ;
CODE_03D2AF:        LDA #$01                  ;
CODE_03D2B1:        STA $0D00,y               ;
CODE_03D2B4:        BRA CODE_03D2BB           ;

CODE_03D2B6:        LDA #$00                  ;
CODE_03D2B8:        STA $0D00,y               ;
CODE_03D2BB:        JSR CODE_03F48B           ;
CODE_03D2BE:        TYA                       ;
CODE_03D2BF:        PHA                       ;
CODE_03D2C0:        LDA $07AF                 ;
CODE_03D2C3:        ORA $0747                 ;
CODE_03D2C6:        BNE CODE_03D33D           ;
CODE_03D2C8:        STA $05                   ;
CODE_03D2CA:        LDY $BB                   ;
CODE_03D2CC:        DEY                       ;
CODE_03D2CD:        BNE CODE_03D33D           ;
CODE_03D2CF:        LDY $0237                 ;
CODE_03D2D2:        LDA $0754                 ;
CODE_03D2D5:        BNE CODE_03D2DC           ;
CODE_03D2D7:        LDA $0714                 ;
CODE_03D2DA:        BEQ CODE_03D2E5           ;
CODE_03D2DC:        INC $05                   ;
CODE_03D2DE:        INC $05                   ;
CODE_03D2E0:        TYA                       ;
CODE_03D2E1:        CLC                       ;
CODE_03D2E2:        ADC #$18                  ;
CODE_03D2E4:        TAY                       ;
CODE_03D2E5:        TYA                       ;
CODE_03D2E6:        SEC                       ;
CODE_03D2E7:        SBC $07                   ;
CODE_03D2E9:        BPL CODE_03D2F0           ;
CODE_03D2EB:        EOR #$FF                  ;
CODE_03D2ED:        CLC                       ;
CODE_03D2EE:        ADC #$01                  ;
CODE_03D2F0:        CMP #$08                  ;
CODE_03D2F2:        BCS CODE_03D310           ;
CODE_03D2F4:        LDA $06                   ;
CODE_03D2F6:        CMP #$F0                  ;
CODE_03D2F8:        BCS CODE_03D310           ;
CODE_03D2FA:        LDA $03AD                 ;
CODE_03D2FD:        CLC                       ;
CODE_03D2FE:        ADC #$04                  ;
CODE_03D300:        STA $04                   ;
CODE_03D302:        SEC                       ;
CODE_03D303:        SBC $06                   ;
CODE_03D305:        BPL CODE_03D30C           ;
CODE_03D307:        EOR #$FF                  ;
CODE_03D309:        CLC                       ;
CODE_03D30A:        ADC #$01                  ;
CODE_03D30C:        CMP #$08                  ;
CODE_03D30E:        BCC CODE_03D324           ;
CODE_03D310:        LDA $05                   ;
CODE_03D312:        CMP #$02                  ;
CODE_03D314:        BEQ CODE_03D33D           ;
CODE_03D316:        LDY $05                   ;
CODE_03D318:        LDA $0237                 ;
CODE_03D31B:        CLC                       ;
CODE_03D31C:        ADC DATA_03D1DF,y         ;
CODE_03D31F:        INC $05                   ;
CODE_03D321:        JMP CODE_03D2E6           ;

CODE_03D324:        LDX #$01                  ;
CODE_03D326:        LDA $04                   ;
CODE_03D328:        CMP $06                   ;
CODE_03D32A:        BCS CODE_03D32D           ;
CODE_03D32C:        INX                       ;
CODE_03D32D:        TXA                       ;
CODE_03D32E:        LDX $9E                   ;
CODE_03D330:        STA $47                   ;
CODE_03D332:        LDX #$00                  ;
CODE_03D334:        LDA $00                   ;
CODE_03D336:        PHA                       ;
CODE_03D337:        JSR CODE_03DF4D           ;
CODE_03D33A:        PLA                       ;
CODE_03D33B:        STA $00                   ;
CODE_03D33D:        PLA                       ;
CODE_03D33E:        CLC                       ;
CODE_03D33F:        ADC #$04                  ;
CODE_03D341:        STA $06                   ;
CODE_03D343:        LDX $9E                   ;
CODE_03D345:        RTS                       ;

CODE_03D346:        PHA                       ;
CODE_03D347:        AND #$0F                  ;
CODE_03D349:        CMP #$09                  ;
CODE_03D34B:        BCC CODE_03D352           ;
CODE_03D34D:        EOR #$0F                  ;
CODE_03D34F:        CLC                       ;
CODE_03D350:        ADC #$01                  ;
CODE_03D352:        STA $01                   ;
CODE_03D354:        LDY $00                   ;
CODE_03D356:        LDA DATA_03D1D3,y               ;
CODE_03D359:        CLC                       ;
CODE_03D35A:        ADC $01                   ;
CODE_03D35C:        TAY                       ;
CODE_03D35D:        LDA DATA_03D16C,y               ;
CODE_03D360:        STA $01                   ;
CODE_03D362:        PLA                       ;
CODE_03D363:        PHA                       ;
CODE_03D364:        CLC                       ;
CODE_03D365:        ADC #$08                  ;
CODE_03D367:        AND #$0F                  ;
CODE_03D369:        CMP #$09                  ;
CODE_03D36B:        BCC CODE_03D372           ;
CODE_03D36D:        EOR #$0F                  ;
CODE_03D36F:        CLC                       ;
CODE_03D370:        ADC #$01                  ;
CODE_03D372:        STA $02                   ;
CODE_03D374:        LDY $00                   ;
CODE_03D376:        LDA DATA_03D1D3,y               ;
CODE_03D379:        CLC                       ;
CODE_03D37A:        ADC $02                   ;
CODE_03D37C:        TAY                       ;
CODE_03D37D:        LDA DATA_03D16C,y               ;
CODE_03D380:        STA $02                   ;
CODE_03D382:        PLA                       ;
CODE_03D383:        LSR A                     ;
CODE_03D384:        LSR A                     ;
CODE_03D385:        LSR A                     ;
CODE_03D386:        TAY                       ;
CODE_03D387:        LDA DATA_03D1CF,y               ;
CODE_03D38A:        STA $03                   ;
CODE_03D38C:        RTS                       ;

DATA_03D38D:        db $F8,$A0,$70,$BD,$00

DATA_03D392:        db $00,$00,$00,$20,$20

CODE_03D397:        LDA $29,x                 ;0 S:01FF P:EnvMXdIzc HC:0206 VC:000 FC:00 I:00
CODE_03D399:        AND #$20                  ;0 S:01FF P:EnvMXdIzc HC:0222 VC:000 FC:00 I:00
CODE_03D39B:        BEQ CODE_03D3A5           ;0 S:01FF P:EnvMXdIzc HC:0238 VC:000 FC:00 I:00
CODE_03D39D:        LDA #$20                  ;
CODE_03D39F:        STA $0257,x               ;
CODE_03D3A2:        JMP CODE_03C140           ;

CODE_03D3A5:        JSR CODE_03C0AD           ;
CODE_03D3A8:        LDY #$0D                  ;
CODE_03D3AA:        LDA #$05                  ;
CODE_03D3AC:        JSR CODE_03C144           ;
CODE_03D3AF:        LDA $043D,x               ;
CODE_03D3B2:        LSR A                     ;
CODE_03D3B3:        LSR A                     ;
CODE_03D3B4:        LSR A                     ;
CODE_03D3B5:        LSR A                     ;
CODE_03D3B6:        TAY                       ;
CODE_03D3B7:        LDA $0238,x               ;
CODE_03D3BA:        SEC                       ;
CODE_03D3BB:        SBC DATA_03D38D,y               ;
CODE_03D3BE:        BPL CODE_03D3C5           ;
CODE_03D3C0:        EOR #$FF                  ;
CODE_03D3C2:        CLC                       ;
CODE_03D3C3:        ADC #$01                  ;
CODE_03D3C5:        CMP #$08                  ;
CODE_03D3C7:        BCS CODE_03D3D4           ;
CODE_03D3C9:        LDA $043D,x               ;
CODE_03D3CC:        CLC                       ;
CODE_03D3CD:        ADC #$10                  ;
CODE_03D3CF:        LSR A                     ;
CODE_03D3D0:        LSR A                     ;
CODE_03D3D1:        LSR A                     ;
CODE_03D3D2:        LSR A                     ;
CODE_03D3D3:        TAY                       ;
CODE_03D3D4:        LDA DATA_03D392,y               ;
CODE_03D3D7:        STA $0257,x               ;
CODE_03D3DA:        RTS                       ;

DATA_03D3DB:        db $15,$30,$40

CODE_03D3DE:        LDA $29,x                 ;\
CODE_03D3E0:        AND #$20                  ; |If not dying, branch
CODE_03D3E2:        BEQ CODE_03D3E7           ;/
CODE_03D3E4:        JMP CODE_03C113           ;Otherwise, take jump when dying.

CODE_03D3E7:        LDA $29,x                 ;
CODE_03D3E9:        BEQ CODE_03D3F4           ;
CODE_03D3EB:        STZ $A1,x                 ;
CODE_03D3ED:        STZ $06CB                 ;
CODE_03D3F0:        LDA #$10                  ;
CODE_03D3F2:        BNE CODE_03D407           ;
CODE_03D3F4:        LDA #$12                  ;
CODE_03D3F6:        STA $06CB                 ;
CODE_03D3F9:        LDY #$02                  ;
CODE_03D3FB:        LDA DATA_03D3DB,y               ;
CODE_03D3FE:        STA $0001,y               ;
CODE_03D401:        DEY                       ;
CODE_03D402:        BPL CODE_03D3FB           ;
CODE_03D404:        JSR CODE_03D420           ;
CODE_03D407:        STA $5E,x                 ;
CODE_03D409:        LDY #$01                  ;
CODE_03D40B:        LDA $A1,x                 ;
CODE_03D40D:        AND #$01                  ;
CODE_03D40F:        BNE CODE_03D41B           ;
CODE_03D411:        LDA $5E,x                 ;
CODE_03D413:        EOR #$FF                  ;
CODE_03D415:        CLC                       ;
CODE_03D416:        ADC #$01                  ;
CODE_03D418:        STA $5E,x                 ;
CODE_03D41A:        INY                       ;
CODE_03D41B:        STY $47,x                 ;
CODE_03D41D:        JMP CODE_03C0AD           ;

CODE_03D420:        LDY #$00                  ;
CODE_03D422:        JSR CODE_03E8BC           ;
CODE_03D425:        BPL CODE_03D431           ;
CODE_03D427:        INY                       ;
CODE_03D428:        LDA $00                   ;
CODE_03D42A:        EOR #$FF                  ;
CODE_03D42C:        CLC                       ;
CODE_03D42D:        ADC #$01                  ;
CODE_03D42F:        STA $00                   ;
CODE_03D431:        LDA $00                   ;
CODE_03D433:        CMP #$3C                  ;
CODE_03D435:        BCC CODE_03D453           ;
CODE_03D437:        LDA #$3C                  ;
CODE_03D439:        STA $00                   ;
CODE_03D43B:        LDA $1C,x                 ;
CODE_03D43D:        CMP #$11                  ;
CODE_03D43F:        BNE CODE_03D453           ;
CODE_03D441:        TYA                       ;
CODE_03D442:        CMP $A1,x                 ;
CODE_03D444:        BEQ CODE_03D453           ;
CODE_03D446:        LDA $A1,x                 ;
CODE_03D448:        BEQ CODE_03D450           ;
CODE_03D44A:        DEC $5E,x                 ;
CODE_03D44C:        LDA $5E,x                 ;
CODE_03D44E:        BNE CODE_03D490           ;
CODE_03D450:        TYA                       ;
CODE_03D451:        STA $A1,x                 ;
CODE_03D453:        LDA $00                   ;
CODE_03D455:        AND #$3C                  ;
CODE_03D457:        LSR A                     ;
CODE_03D458:        LSR A                     ;
CODE_03D459:        STA $00                   ;
CODE_03D45B:        LDY #$00                  ;
CODE_03D45D:        LDA $5D                   ;
CODE_03D45F:        BEQ CODE_03D485           ;
CODE_03D461:        LDA $0775                 ;
CODE_03D464:        BEQ CODE_03D485           ;
CODE_03D466:        INY                       ;
CODE_03D467:        LDA $5D                   ;
CODE_03D469:        CMP #$19                  ;
CODE_03D46B:        BCC CODE_03D475           ;
CODE_03D46D:        LDA $0775                 ;
CODE_03D470:        CMP #$02                  ;
CODE_03D472:        BCC CODE_03D475           ;
CODE_03D474:        INY                       ;
CODE_03D475:        LDA $1C,x                 ;
CODE_03D477:        CMP #$12                  ;
CODE_03D479:        BNE CODE_03D47F           ;
CODE_03D47B:        LDA $5D                   ;
CODE_03D47D:        BNE CODE_03D485           ;
CODE_03D47F:        LDA $A1,x                 ;
CODE_03D481:        BNE CODE_03D485           ;
CODE_03D483:        LDY #$00                  ;
CODE_03D485:        LDA $0001,y               ;
CODE_03D488:        LDY $00                   ;
CODE_03D48A:        SEC                       ;
CODE_03D48B:        SBC #$01                  ;
CODE_03D48D:        DEY                       ;
CODE_03D48E:        BPL CODE_03D48A           ;
CODE_03D490:        RTS                       ;

DATA_03D491:        db $1A,$58,$98,$96,$94,$92,$90,$8E
                    db $8C,$8A,$88,$86,$84,$82,$80

CODE_03D4A0:        PHX                       ;
CODE_03D4A1:        LDX $0369                 ;
CODE_03D4A4:        DEX                       ;
CODE_03D4A5:        DEX                       ;
CODE_03D4A6:        STX $0334                 ;
CODE_03D4A9:        AND #$80                  ;
CODE_03D4AB:        BEQ CODE_03D4CE           ;
CODE_03D4AD:        STZ $030D,x               ;
CODE_03D4B0:        LDA #$01                  ;
CODE_03D4B2:        STA $0300,x               ;
CODE_03D4B5:        LDA $04                   ;
CODE_03D4B7:        AND #$1F                  ;
CODE_03D4B9:        ASL A                     ;
CODE_03D4BA:        ASL A                     ;
CODE_03D4BB:        ASL A                     ;
CODE_03D4BC:        STA $E4                   ;
CODE_03D4BE:        LDA #$00                  ;
CODE_03D4C0:        SEC                       ;
CODE_03D4C1:        SBC $42                   ;
CODE_03D4C3:        CLC                       ;
CODE_03D4C4:        ADC $E4                   ;
CODE_03D4C6:        STA $031A,x               ;
CODE_03D4C9:        LDA #$03                  ;
CODE_03D4CB:        STA $0327,x               ;
CODE_03D4CE:        PLX                       ;
CODE_03D4CF:        RTS                       ;

;Bridge Collapse command
CODE_03D4D0:        LDX $0368                 ;\
CODE_03D4D3:        LDA $1C,x                 ; |Check if Bowser still exists
CODE_03D4D5:        CMP #$2D                  ; |(He could've been killed by fireballs)
CODE_03D4D7:        BNE CODE_03D4EA           ;/ If he doesn't exist, skip bridge destruction
CODE_03D4D9:        STX $9E                   ;Store bowser's sprite index into current sprite index
CODE_03D4DB:        LDA $29,x                 ;\
CODE_03D4DD:        BEQ CODE_03D503           ;/If Bowser is in a normal state, destroy bridge
CODE_03D4DF:        AND #$40                  ;\
CODE_03D4E1:        BEQ CODE_03D4EA           ;/If Bowser isn't in a defeated state (fall down bridge), remove bridge
CODE_03D4E3:        LDA $0238,x               ;\
CODE_03D4E6:        CMP #$E0                  ; |If Bowser sprite is not low enough yet, branch
CODE_03D4E8:        BCC CODE_03D4FD           ;/
CODE_03D4EA:        LDA $0095                 ;\Flag to not play music?
CODE_03D4ED:        BNE CODE_03D4F7           ;/
CODE_03D4EF:        LDA #$0B                  ;\Toad/Princess saved fanfare music
CODE_03D4F1:        STA $1602                 ;/
CODE_03D4F4:        STA $0095                 ;
CODE_03D4F7:        INC $0772                 ;Go to next command
CODE_03D4FA:        JMP CODE_03D56B           ;

CODE_03D4FD:        JSR CODE_03C13A           ;
CODE_03D500:        JMP CODE_03D679           ;

CODE_03D503:        DEC $0364                 ;
CODE_03D506:        BNE CODE_03D557           ;
CODE_03D508:        LDA #$04                  ;\Amount of delay until the next bridge tile collapses
CODE_03D50A:        STA $0364                 ;/
CODE_03D50D:        LDA $0363                 ;
CODE_03D510:        EOR #$01                  ;
CODE_03D512:        STA $0363                 ;
CODE_03D515:        LDA #$02                  ;
CODE_03D517:        STA $05                   ;
CODE_03D519:        LDY $0369                 ;
CODE_03D51C:        LDA DATA_03D491,y               ;
CODE_03D51F:        STA $04                   ;
CODE_03D521:        JSR CODE_03D4A0           ;
CODE_03D524:        LDY $1700                 ;
CODE_03D527:        INY                       ;
CODE_03D528:        LDX #$18                  ;
CODE_03D52A:        JSR CODE_0393F3           ;
CODE_03D52D:        LDX $9E                   ;
CODE_03D52F:        JSR CODE_0393B2           ;
CODE_03D532:        LDA #$16                  ;\
CODE_03D534:        STA $1603                 ;/Bowser bridge crumbling sound
CODE_03D537:        LDA $0369                 ;
CODE_03D53A:        BNE CODE_03D546           ;
CODE_03D53C:        LDA #$08                  ;
CODE_03D53E:        STA $014B                 ;
CODE_03D541:        LDA #$FF                  ;
CODE_03D543:        STA $0F4C                 ;
CODE_03D546:        INC $0369                 ;
CODE_03D549:        LDA $0369                 ;
CODE_03D54C:        CMP #$0F                  ;
CODE_03D54E:        BNE CODE_03D557           ;
CODE_03D550:        JSR CODE_03C726           ;
CODE_03D553:        LDA #$40                  ;
CODE_03D555:        STA $29,x                 ;
CODE_03D557:        JMP CODE_03D679           ;

DATA_03D55A:        db $21,$41,$11,$31

CODE_03D55E:        LDA $29,x                 ;
CODE_03D560:        AND #$20                  ;
CODE_03D562:        BEQ CODE_03D579           ;
CODE_03D564:        LDA $0238,x               ;
CODE_03D567:        CMP #$E0                  ;
CODE_03D569:        BCC CODE_03D4FD           ;
CODE_03D56B:        LDX #$08                  ;
CODE_03D56D:        JSR CODE_03CDE2           ; Erase sprite
CODE_03D570:        DEX                       ;
CODE_03D571:        BPL CODE_03D56D           ;
CODE_03D573:        STA $06CB                 ;
CODE_03D576:        LDX $9E                   ;
CODE_03D578:        RTS                       ;

CODE_03D579:        STZ $06CB                 ;
CODE_03D57C:        LDA $0747                 ;
CODE_03D57F:        BEQ CODE_03D584           ;
CODE_03D581:        JMP CODE_03D636           ;

CODE_03D584:        LDA $0363                 ;
CODE_03D587:        BPL CODE_03D58C           ;
CODE_03D589:        JMP CODE_03D60B           ;

CODE_03D58C:        DEC $0364                 ;
CODE_03D58F:        BNE CODE_03D59E           ;
CODE_03D591:        LDA #$20                  ;
CODE_03D593:        STA $0364                 ;
CODE_03D596:        LDA $0363                 ;
CODE_03D599:        EOR #$01                  ;
CODE_03D59B:        STA $0363                 ;
CODE_03D59E:        LDA $09                   ;
CODE_03D5A0:        AND #$0F                  ;
CODE_03D5A2:        BNE CODE_03D5A8           ;
CODE_03D5A4:        LDA #$02                  ;
CODE_03D5A6:        STA $47,x                 ;
CODE_03D5A8:        LDA $0792,x               ;
CODE_03D5AB:        BEQ CODE_03D5CA           ;
CODE_03D5AD:        JSR CODE_03E8BC           ;
CODE_03D5B0:        BPL CODE_03D5CA           ;
CODE_03D5B2:        LDA #$01                  ;
CODE_03D5B4:        STA $47,x                 ;
CODE_03D5B6:        LDA #$02                  ;
CODE_03D5B8:        STA $0365                 ;
CODE_03D5BB:        LDA #$20                  ;
CODE_03D5BD:        STA $0792,x               ;
CODE_03D5C0:        STA $079C                 ;
CODE_03D5C3:        LDA $021A,x               ;
CODE_03D5C6:        CMP #$B0                  ;
CODE_03D5C8:        BCS CODE_03D60B           ;
CODE_03D5CA:        LDA $09                   ;
CODE_03D5CC:        AND #$03                  ;
CODE_03D5CE:        BNE CODE_03D60B           ;
CODE_03D5D0:        LDA $021A,x               ;
CODE_03D5D3:        CMP $0366                 ;
CODE_03D5D6:        BNE CODE_03D5E4           ;
CODE_03D5D8:        LDA $07B7,x               ;
CODE_03D5DB:        AND #$03                  ;
CODE_03D5DD:        TAY                       ;
CODE_03D5DE:        LDA DATA_03D55A,y               ;
CODE_03D5E1:        STA $06DC                 ;
CODE_03D5E4:        LDA $021A,x               ;
CODE_03D5E7:        CLC                       ;
CODE_03D5E8:        ADC $0365                 ;
CODE_03D5EB:        STA $021A,x               ;
CODE_03D5EE:        LDY $47,x                 ;
CODE_03D5F0:        CPY #$01                  ;
CODE_03D5F2:        BEQ CODE_03D60B           ;
CODE_03D5F4:        LDY #$FF                  ;
CODE_03D5F6:        SEC                       ;
CODE_03D5F7:        SBC $0366                 ;
CODE_03D5FA:        BPL CODE_03D603           ;
CODE_03D5FC:        EOR #$FF                  ;
CODE_03D5FE:        CLC                       ;
CODE_03D5FF:        ADC #$01                  ;
CODE_03D601:        LDY #$01                  ;
CODE_03D603:        CMP $06DC                 ;
CODE_03D606:        BCC CODE_03D60B           ;
CODE_03D608:        STY $0365                 ;
CODE_03D60B:        LDA $0792,x               ;
CODE_03D60E:        BNE CODE_03D639           ;
CODE_03D610:        JSR CODE_03C13A           ;
CODE_03D613:        LDA $075F                 ;
CODE_03D616:        CMP #$05                  ;
CODE_03D618:        BCC CODE_03D623           ;
CODE_03D61A:        LDA $09                   ;
CODE_03D61C:        AND #$03                  ;
CODE_03D61E:        BNE CODE_03D623           ;
CODE_03D620:        JSR CODE_03BB8E           ;
CODE_03D623:        LDA $0238,x               ;
CODE_03D626:        CMP #$80                  ;
CODE_03D628:        BCC CODE_03D647           ;
CODE_03D62A:        LDA $07B7,x               ;
CODE_03D62D:        AND #$03                  ;
CODE_03D62F:        TAY                       ;
CODE_03D630:        LDA DATA_03D55A,y               ;
CODE_03D633:        STA $0792,x               ;
CODE_03D636:        JMP CODE_03D647           ;

CODE_03D639:        CMP #$01                  ;
CODE_03D63B:        BNE CODE_03D647           ;
CODE_03D63D:        DEC $0238,x               ;
CODE_03D640:        JSR CODE_03C726           ;
CODE_03D643:        LDA #$FE                  ;
CODE_03D645:        STA $A1,x                 ;
CODE_03D647:        LDA $075F                 ;
CODE_03D64A:        CMP #$07                  ;
CODE_03D64C:        BEQ CODE_03D652           ;
CODE_03D64E:        CMP #$05                  ;
CODE_03D650:        BCS CODE_03D679           ;
CODE_03D652:        LDA $079C                 ;
CODE_03D655:        BNE CODE_03D679           ;
CODE_03D657:        LDA #$20                  ;
CODE_03D659:        STA $079C                 ;
CODE_03D65C:        LDA $0363                 ;
CODE_03D65F:        EOR #$80                  ;
CODE_03D661:        STA $0363                 ;
CODE_03D664:        BMI CODE_03D647           ;
CODE_03D666:        JSR CODE_03D6F9           ;Get timer delay of next fireball spawn
CODE_03D669:        LDY $06CC                 ;\If hard mode (after 5-3)
CODE_03D66C:        BEQ CODE_03D671           ; |
CODE_03D66E:        SEC                       ; |Timer -= #$10;
CODE_03D66F:        SBC #$10                  ; |
CODE_03D671:        STA $079C                 ;/ store into time until next sprite gets generated
CODE_03D674:        LDA #$15                  ;\Activate bowser fire generator
CODE_03D676:        STA $06CB                 ;/
CODE_03D679:        JSR CODE_03D6D4           ;
CODE_03D67C:        LDY #$10                  ;
CODE_03D67E:        LDA $47,x                 ;
CODE_03D680:        LSR A                     ;
CODE_03D681:        BCC CODE_03D685           ;
CODE_03D683:        LDY #$F0                  ;
CODE_03D685:        TYA                       ;
CODE_03D686:        CLC                       ;
CODE_03D687:        ADC $021A,x               ;
CODE_03D68A:        LDY $06CF                 ;
CODE_03D68D:        STA $021A,y               ;
CODE_03D690:        LDA $0238,x               ;
CODE_03D693:        CLC                       ;
CODE_03D694:        ADC #$08                  ;
CODE_03D696:        STA $0238,y               ;
CODE_03D699:        LDA $29,x                 ;
CODE_03D69B:        STA $0029,y               ;
CODE_03D69E:        LDA $47,x                 ;
CODE_03D6A0:        STA $0047,y               ;
CODE_03D6A3:        LDA $9E                   ;
CODE_03D6A5:        PHA                       ;
CODE_03D6A6:        LDX $06CF                 ;
CODE_03D6A9:        STX $9E                   ;
CODE_03D6AB:        LDA $97                   ;
CODE_03D6AD:        BNE CODE_03D6C1           ;
CODE_03D6AF:        LDA $075F                 ;\
CODE_03D6B2:        CMP #$07                  ; |Play real bowser battle music at world 8
CODE_03D6B4:        BNE CODE_03D6BA           ;/
CODE_03D6B6:        LDA #$05                  ;"real" bowser battle music
CODE_03D6B8:        BRA CODE_03D6BC           ;

CODE_03D6BA:        LDA #$04                  ;\"fake" bowser battle music
CODE_03D6BC:        STA $1602                 ;/
CODE_03D6BF:        STA $97                   ;
CODE_03D6C1:        LDA #$2D                  ;\
CODE_03D6C3:        STA $1C,x                 ;/Sprite to generate: Bowser
CODE_03D6C5:        LDA #$20                  ;
CODE_03D6C7:        STA $0257,x               ;
CODE_03D6CA:        PLA                       ;
CODE_03D6CB:        STA $9E                   ;
CODE_03D6CD:        TAX                       ;
CODE_03D6CE:        LDA #$00                  ;
CODE_03D6D0:        STA $036A                 ;
CODE_03D6D3:        RTS                       ;

CODE_03D6D4:        INC $036A                 ;
CODE_03D6D7:        JSR CODE_03CD09           ;
CODE_03D6DA:        LDA $29,x                 ;
CODE_03D6DC:        BNE CODE_03D6D3           ;
CODE_03D6DE:        LDA #$0A                  ;
CODE_03D6E0:        STA $0490,x               ;
CODE_03D6E3:        JSR CODE_03E9CC           ;
CODE_03D6E6:        LDA $0770                 ;
CODE_03D6E9:        CMP #$02                  ;
CODE_03D6EB:        BEQ CODE_03D6F0           ;
CODE_03D6ED:        JMP CODE_03DE55           ;

CODE_03D6F0:        RTS                       ;

DATA_03D6F1:        db $BF,$40,$BF,$BF,$BF,$40,$40,$BF      ;How fast the bowser fire generates.

CODE_03D6F9:        LDY $0367                 ;\
CODE_03D6FC:        INC $0367                 ; |Get timer delay of next fireball spawn
CODE_03D6FF:        LDA $0367                 ; |Returns: Timer delay in A
CODE_03D702:        AND #$07                  ; |
CODE_03D704:        STA $0367                 ; |
CODE_03D707:        LDA DATA_03D6F1,y               ; |
CODE_03D70A:        RTS                       ;/

CODE_03D70B:        CPX $0F4D                 ;
CODE_03D70E:        BNE CODE_03D71C           ;
CODE_03D710:        LDA $0F4C                 ;
CODE_03D713:        BEQ CODE_03D71C           ;
CODE_03D715:        LDA $014B                 ;
CODE_03D718:        CMP #$06                  ;
CODE_03D71A:        BEQ CODE_03D760           ;
CODE_03D71C:        LDA $0747                 ;
CODE_03D71F:        BNE CODE_03D755           ;
CODE_03D721:        LDA #$40                  ;
CODE_03D723:        LDY $06CC                 ;
CODE_03D726:        BEQ CODE_03D72A           ;
CODE_03D728:        LDA #$60                  ;
CODE_03D72A:        STA $00                   ;
CODE_03D72C:        LDA $0402,x               ;
CODE_03D72F:        SEC                       ;
CODE_03D730:        SBC $00                   ;
CODE_03D732:        STA $0402,x               ;
CODE_03D735:        LDA $021A,x               ;
CODE_03D738:        SBC #$01                  ;
CODE_03D73A:        STA $021A,x               ;
CODE_03D73D:        LDA $79,x                 ;
CODE_03D73F:        SBC #$00                  ;
CODE_03D741:        STA $79,x                 ;
CODE_03D743:        LDY $041D,x               ;
CODE_03D746:        LDA $0238,x               ;
CODE_03D749:        CMP DATA_03C970,y               ;Compare with possible bowser fireball Y positions
CODE_03D74C:        BEQ CODE_03D755           ;
CODE_03D74E:        CLC                       ;
CODE_03D74F:        ADC $043D,x               ;
CODE_03D752:        STA $0238,x               ;
CODE_03D755:        JSR CODE_03FD39           ;
CODE_03D758:        LDA $29,x                 ;
CODE_03D75A:        BNE CODE_03D70A           ;
CODE_03D75C:        JSL CODE_05CD01           ;
CODE_03D760:        RTS                       ;

CODE_03D761:        DEC $A1,x                 ;
CODE_03D763:        BNE CODE_03D77C           ;
CODE_03D765:        LDA #$08                  ;
CODE_03D767:        STA $A1,x                 ;
CODE_03D769:        INC $5E,x                 ;
CODE_03D76B:        LDA $5E,x                 ;
CODE_03D76D:        CMP #$01                  ;
CODE_03D76F:        BNE CODE_03D778           ;
CODE_03D771:        LDA #$29                  ;\
CODE_03D773:        STA $1600                 ;/Firework sound
CODE_03D776:        BRA CODE_03D77C           ;

CODE_03D778:        CMP #$04                  ;
CODE_03D77A:        BCS CODE_03D794           ;
CODE_03D77C:        JSR CODE_03FD39           ;
CODE_03D77F:        LDA $03B9                 ;
CODE_03D782:        STA $03BA                 ;
CODE_03D785:        LDA $03AE                 ;
CODE_03D788:        STA $03AF                 ;
CODE_03D78B:        LDY $0B46,x               ;
CODE_03D78E:        LDA $5E,x                 ;
CODE_03D790:        JSR CODE_03F548           ;
CODE_03D793:        RTS                       ;

CODE_03D794:        STZ $10,x                 ;
CODE_03D796:        LDY $0B46,x               ;
CODE_03D799:        LDA #$03                  ;
CODE_03D79B:        STA $0D00,y               ;
CODE_03D79E:        STA $0D04,y               ;
CODE_03D7A1:        STA $0D08,y               ;
CODE_03D7A4:        STA $0D0C,y               ;
CODE_03D7A7:        LDA #$05                  ;
CODE_03D7A9:        STA $0149                 ;
CODE_03D7AC:        JMP CODE_03D818           ;

CODE_03D7AF:        STZ $06CB                 ;
CODE_03D7B2:        LDA $0746                 ;\
CODE_03D7B5:        CMP #$05                  ; |Flagpole task control
CODE_03D7B7:        BCS CODE_03D7F3           ;/
CODE_03D7B9:        JSR CODE_039B08           ;ExecutePtrShort

PNTR_03D7BC:        dw CODE_03D7F3                          ;$00 - Nothing
                    dw CODE_03D7C6                          ;$01 - Check if firework is applicable
                    dw CODE_03D7FE                          ;$02 - Award points
                    dw CODE_03D830                          ;$03 - Raise star flag and launch fireworks
                    dw CODE_03D883                          ;$04 - Delay to level fadeout

CODE_03D7C6:        LDY #$05                  ;
CODE_03D7C8:        LDA $07EB                 ;
CODE_03D7CB:        CMP #$01                  ;
CODE_03D7CD:        BEQ CODE_03D7DD           ;
CODE_03D7CF:        LDY #$03                  ;
CODE_03D7D1:        CMP #$03                  ;
CODE_03D7D3:        BEQ CODE_03D7DD           ;
CODE_03D7D5:        LDY #$00                  ;
CODE_03D7D7:        CMP #$06                  ;
CODE_03D7D9:        BEQ CODE_03D7DD           ;
CODE_03D7DB:        LDA #$FF                  ;
CODE_03D7DD:        STA $06D7                 ;
CODE_03D7E0:        STY $29,x                 ;
CODE_03D7E2:        LDA $2143                 ;
CODE_03D7E5:        AND #$7F                  ;
CODE_03D7E7:        CMP #$4B                  ;
CODE_03D7E9:        BEQ CODE_03D7F0           ;
CODE_03D7EB:        LDA #$4B                  ;\
CODE_03D7ED:        STA $1603                 ;/Timer to score conversion sound
CODE_03D7F0:        INC $0746                 ;
CODE_03D7F3:        RTS                       ;

CODE_03D7F4:        LDA #$4C                  ;\SMAS menu 'zooming' sound (after pressing start in hall screen)
CODE_03D7F6:        STA $1603                 ;/
CODE_03D7F9:        STA $0E1A                 ;
CODE_03D7FC:        BRA CODE_03D7F0           ;

CODE_03D7FE:        LDA $07E9                 ;
CODE_03D801:        ORA $07EA                 ;
CODE_03D804:        ORA $07EB                 ;
CODE_03D807:        BEQ CODE_03D7F4           ;
CODE_03D809:        LDY #$23                  ;
CODE_03D80B:        LDA #$FF                  ;
CODE_03D80D:        STA $014A                 ;
CODE_03D810:        JSR CODE_039CF9           ;
CODE_03D813:        LDA #$05                  ;
CODE_03D815:        STA $014A                 ;
CODE_03D818:        LDY #$0B                  ;
CODE_03D81A:        LDA $0753                 ;
CODE_03D81D:        BEQ CODE_03D821           ;
CODE_03D81F:        LDY #$11                  ;
CODE_03D821:        JSR CODE_039CF9           ;
CODE_03D824:        LDA $0753                 ;
CODE_03D827:        ASL A                     ;
CODE_03D828:        ASL A                     ;
CODE_03D829:        ASL A                     ;
CODE_03D82A:        ASL A                     ;
CODE_03D82B:        ORA #$04                  ;
CODE_03D82D:        JMP CODE_03BD64           ;

CODE_03D830:        LDA #$01                  ;
CODE_03D832:        STA $1B                   ;
CODE_03D834:        LDA $0238,x               ;
CODE_03D837:        CMP #$72                  ;
CODE_03D839:        BCC CODE_03D840           ;
CODE_03D83B:        DEC $0238,x               ;
CODE_03D83E:        BRA CODE_03D84C           ;

CODE_03D840:        LDA $06D7                 ;
CODE_03D843:        BEQ CODE_03D877           ;
CODE_03D845:        BMI CODE_03D877           ;
CODE_03D847:        LDA #$16                  ;
CODE_03D849:        STA $06CB                 ;
CODE_03D84C:        JSR CODE_03FD39           ;
CODE_03D84F:        LDY $0B46,x               ;
CODE_03D852:        LDA $03B9                 ;
CODE_03D855:        STA $0901,y               ;
CODE_03D858:        LDA $09                   ;
CODE_03D85A:        AND #$18                  ;
CODE_03D85C:        LSR A                     ;
CODE_03D85D:        LSR A                     ;
CODE_03D85E:        CLC                       ;
CODE_03D85F:        ADC #$04                  ;
CODE_03D861:        STA $0902,y               ;
CODE_03D864:        LDA #$0B                  ;
CODE_03D866:        STA $0903,y               ;
CODE_03D869:        LDA $03AE                 ;
CODE_03D86C:        STA $0900,y               ;
CODE_03D86F:        LDA #$02                  ;
CODE_03D871:        STA $0D00,y               ;
CODE_03D874:        LDX $9E                   ;
CODE_03D876:        RTS                       ;

CODE_03D877:        JSR CODE_03D84C           ;
CODE_03D87A:        LDA #$06                  ;
CODE_03D87C:        STA $07A2,x               ;
CODE_03D87F:        INC $0746                 ;
CODE_03D882:        RTS                       ;

CODE_03D883:        JSR CODE_03D84C           ;
CODE_03D886:        LDA $07A2,x               ;
CODE_03D889:        BNE CODE_03D890           ;
CODE_03D88B:        LDA $07B1                 ;
CODE_03D88E:        BEQ CODE_03D87F           ;
CODE_03D890:        RTS                       ;

CODE_03D891:        LDA $29,x                 ;
CODE_03D893:        BNE CODE_03D8EB           ;
CODE_03D895:        LDA $0792,x               ;
CODE_03D898:        BNE CODE_03D8EB           ;
CODE_03D89A:        LDA $A1,x                 ;
CODE_03D89C:        BNE CODE_03D8C1           ;
CODE_03D89E:        LDA $5E,x                 ;
CODE_03D8A0:        BMI CODE_03D8B6           ;
CODE_03D8A2:        JSR CODE_03E8BC           ;
CODE_03D8A5:        BPL CODE_03D8B0           ;
CODE_03D8A7:        LDA $00                   ;
CODE_03D8A9:        EOR #$FF                  ;
CODE_03D8AB:        CLC                       ;
CODE_03D8AC:        ADC #$01                  ;
CODE_03D8AE:        STA $00                   ;
CODE_03D8B0:        LDA $00                   ;
CODE_03D8B2:        CMP #$21                  ;
CODE_03D8B4:        BCC CODE_03D8EB           ;
CODE_03D8B6:        LDA $5E,x                 ;
CODE_03D8B8:        EOR #$FF                  ;
CODE_03D8BA:        CLC                       ;
CODE_03D8BB:        ADC #$01                  ;
CODE_03D8BD:        STA $5E,x                 ;
CODE_03D8BF:        INC $A1,x                 ;
CODE_03D8C1:        LDA $043D,x               ;
CODE_03D8C4:        LDY $5E,x                 ;
CODE_03D8C6:        BPL CODE_03D8CB           ;
CODE_03D8C8:        LDA $041D,x               ;
CODE_03D8CB:        STA $00                   ;
CODE_03D8CD:        LDA $09                   ;
CODE_03D8CF:        LSR A                     ;
CODE_03D8D0:        BCC CODE_03D8EB           ;
CODE_03D8D2:        LDA $0747                 ;
CODE_03D8D5:        BNE CODE_03D8EB           ;
CODE_03D8D7:        LDA $0238,x               ;
CODE_03D8DA:        CLC                       ;
CODE_03D8DB:        ADC $5E,x                 ;
CODE_03D8DD:        STA $0238,x               ;
CODE_03D8E0:        CMP $00                   ;
CODE_03D8E2:        BNE CODE_03D8EB           ;
CODE_03D8E4:        STZ $A1,x                 ;
CODE_03D8E6:        LDA #$40                  ;
CODE_03D8E8:        STA $0792,x               ;
CODE_03D8EB:        LDA #$00                  ;
CODE_03D8ED:        STA $0257,x               ;
CODE_03D8F0:        RTS                       ;

CODE_03D8F1:        STA $07                   ;
CODE_03D8F3:        LDA $0203,x               ;
CODE_03D8F6:        BNE CODE_03D906           ;
CODE_03D8F8:        LDY #$18                  ;
CODE_03D8FA:        LDA $5E,x                 ;
CODE_03D8FC:        CLC                       ;
CODE_03D8FD:        ADC $07                   ;
CODE_03D8FF:        STA $5E,x                 ;
CODE_03D901:        LDA $A1,x                 ;
CODE_03D903:        ADC #$00                  ;
CODE_03D905:        RTS                       ;

CODE_03D906:        LDY #$08                  ;
CODE_03D908:        LDA $5E,x                 ;
CODE_03D90A:        SEC                       ;
CODE_03D90B:        SBC $07                   ;
CODE_03D90D:        STA $5E,x                 ;
CODE_03D90F:        LDA $A1,x                 ;
CODE_03D911:        SBC #$00                  ;
CODE_03D913:        RTS                       ;

CODE_03D914:        LDA $BC,x                 ;Lift (balance) movement code
CODE_03D916:        CMP #$03                  ;
CODE_03D918:        BNE CODE_03D91D           ;
CODE_03D91A:        JMP CODE_03CDE2           ; Erase sprite

CODE_03D91D:        LDA $29,x                 ;
CODE_03D91F:        BPL CODE_03D922           ;
CODE_03D921:        RTS                       ;

CODE_03D922:        TAY                       ;
CODE_03D923:        LDA $03A2,x               ;
CODE_03D926:        STA $00                   ;
CODE_03D928:        LDA $47,x                 ;
CODE_03D92A:        BEQ CODE_03D92F           ;
CODE_03D92C:        JMP CODE_03DB3A           ;

CODE_03D92F:        LDA #$2D                  ;
CODE_03D931:        CMP $0238,x               ;
CODE_03D934:        BCC CODE_03D946           ;
CODE_03D936:        CPY $00                   ;
CODE_03D938:        BEQ CODE_03D943           ;
CODE_03D93A:        CLC                       ;
CODE_03D93B:        ADC #$02                  ;
CODE_03D93D:        STA $0238,x               ;
CODE_03D940:        JMP CODE_03DB30           ;

CODE_03D943:        JMP CODE_03DB17           ;

CODE_03D946:        CMP $0238,y               ;
CODE_03D949:        BCC CODE_03D958           ;
CODE_03D94B:        CPX $00                   ;
CODE_03D94D:        BEQ CODE_03D943           ;
CODE_03D94F:        CLC                       ;
CODE_03D950:        ADC #$02                  ;
CODE_03D952:        STA $0238,y               ;
CODE_03D955:        JMP CODE_03DB30           ;

CODE_03D958:        LDA $0238,x               ;
CODE_03D95B:        PHA                       ;
CODE_03D95C:        LDA $03A2,x               ;
CODE_03D95F:        BPL CODE_03D979           ;
CODE_03D961:        LDA $043D,x               ;
CODE_03D964:        CLC                       ;
CODE_03D965:        ADC #$05                  ;
CODE_03D967:        STA $00                   ;
CODE_03D969:        LDA $A1,x                 ;
CODE_03D96B:        ADC #$00                  ;
CODE_03D96D:        BMI CODE_03D989           ;
CODE_03D96F:        BNE CODE_03D97D           ;
CODE_03D971:        LDA $00                   ;
CODE_03D973:        CMP #$0B                  ;
CODE_03D975:        BCC CODE_03D983           ;
CODE_03D977:        BCS CODE_03D97D           ;
CODE_03D979:        CMP $9E                   ;
CODE_03D97B:        BEQ CODE_03D989           ;
CODE_03D97D:        JSR CODE_03C167           ;
CODE_03D980:        JMP CODE_03D98C           ;

CODE_03D983:        JSR CODE_03DB30           ;
CODE_03D986:        JMP CODE_03D98C           ;

CODE_03D989:        JSR CODE_03C163           ;
CODE_03D98C:        LDY $29,x                 ;
CODE_03D98E:        PLA                       ;
CODE_03D98F:        SEC                       ;
CODE_03D990:        SBC $0238,x               ;
CODE_03D993:        CLC                       ;
CODE_03D994:        ADC $0238,y               ;
CODE_03D997:        STA $0238,y               ;
CODE_03D99A:        LDA $03A2,x               ;
CODE_03D99D:        BMI CODE_03D9A3           ;
CODE_03D99F:        TAX                       ;
CODE_03D9A0:        JSR CODE_03E2CB           ;
CODE_03D9A3:        LDY $9E                   ;
CODE_03D9A5:        LDA $00A1,y               ;
CODE_03D9A8:        ORA $043D,y               ;
CODE_03D9AB:        BNE CODE_03D9B0           ;
CODE_03D9AD:        JMP CODE_03DABF           ;

CODE_03D9B0:        LDA $00A1,y               ;
CODE_03D9B3:        PHA                       ;
CODE_03D9B4:        PHA                       ;
CODE_03D9B5:        PHA                       ;
CODE_03D9B6:        JSR CODE_03DAC2           ;
CODE_03D9B9:        LDA $42                   ;
CODE_03D9BB:        LSR A                     ;
CODE_03D9BC:        LSR A                     ;
CODE_03D9BD:        LSR A                     ;
CODE_03D9BE:        STA $F3                   ;
CODE_03D9C0:        LDA $43                   ;
CODE_03D9C2:        AND #$01                  ;
CODE_03D9C4:        ASL A                     ;
CODE_03D9C5:        ASL A                     ;
CODE_03D9C6:        ORA #$20                  ;
CODE_03D9C8:        STA $F4                   ;
CODE_03D9CA:        LDA $F3                   ;
CODE_03D9CC:        CLC                       ;
CODE_03D9CD:        ADC #$1F                  ;
CODE_03D9CF:        TAX                       ;
CODE_03D9D0:        AND #$1F                  ;
CODE_03D9D2:        STA $F5                   ;
CODE_03D9D4:        TXA                       ;
CODE_03D9D5:        AND #$20                  ;
CODE_03D9D7:        BEQ CODE_03D9DF           ;
CODE_03D9D9:        LDA $F4                   ;
CODE_03D9DB:        EOR #$04                  ;
CODE_03D9DD:        STA $F6                   ;
CODE_03D9DF:        REP #$30                  ;
CODE_03D9E1:        LDA $00                   ;
CODE_03D9E3:        AND #$241F                ;
CODE_03D9E6:        CMP $F3                   ;
CODE_03D9E8:        BCS CODE_03D9F1           ;
CODE_03D9EA:        CMP $F5                   ;
CODE_03D9EC:        BCC CODE_03D9F1           ;
CODE_03D9EE:        JMP CODE_03DA4A           ;

CODE_03D9F1:        TYA                       ;
CODE_03D9F2:        AND #$00FF                ;
CODE_03D9F5:        TAY                       ;
CODE_03D9F6:        LDX $1700                 ;
CODE_03D9F9:        LDA $00                   ;
CODE_03D9FB:        AND #$1FFF                ;
CODE_03D9FE:        XBA                       ;
CODE_03D9FF:        STA $1702,x               ;
CODE_03DA02:        LDA #$0300                ;
CODE_03DA05:        STA $1704,x               ;
CODE_03DA08:        LDA $00A1,y               ;
CODE_03DA0B:        AND #$0080                ;
CODE_03DA0E:        BNE CODE_03DA33           ;
CODE_03DA10:        LDA $1702,x               ;
CODE_03DA13:        AND #$F003                ;
CODE_03DA16:        CMP #$A000                ;
CODE_03DA19:        BEQ CODE_03DA20           ;
CODE_03DA1B:        CMP #$B000                ;
CODE_03DA1E:        BNE CODE_03DA25           ;
CODE_03DA20:        LDA #$185C                ;
CODE_03DA23:        BRA CODE_03DA28           ;

CODE_03DA25:        LDA #$10A2                ;
CODE_03DA28:        STA $1706,x               ;
CODE_03DA2B:        LDA #$18A3                ;
CODE_03DA2E:        STA $1708,x               ;
CODE_03DA31:        BRA CODE_03DA3C           ;

CODE_03DA33:        LDA #$0024                ;
CODE_03DA36:        STA $1706,x               ;
CODE_03DA39:        STA $1708,x               ;
CODE_03DA3C:        LDA #$FFFF                ;
CODE_03DA3F:        STA $170A,x               ;
CODE_03DA42:        TXA                       ;
CODE_03DA43:        CLC                       ;
CODE_03DA44:        ADC #$0008                ;
CODE_03DA47:        STA $1700                 ;
CODE_03DA4A:        SEP #$30                  ;
CODE_03DA4C:        LDA $0029,y               ;
CODE_03DA4F:        TAY                       ;
CODE_03DA50:        PLA                       ;
CODE_03DA51:        EOR #$FF                  ;
CODE_03DA53:        JSR CODE_03DAC2           ;
CODE_03DA56:        REP #$30                  ;
CODE_03DA58:        LDA $00                   ;
CODE_03DA5A:        AND #$241F                ;
CODE_03DA5D:        CMP $F3                   ;
CODE_03DA5F:        BCS CODE_03DA68           ;
CODE_03DA61:        CMP $F5                   ;
CODE_03DA63:        BCC CODE_03DA68           ;
CODE_03DA65:        JMP CODE_03DABC           ;

CODE_03DA68:        LDX $1700                 ;
CODE_03DA6B:        LDA $00                   ;
CODE_03DA6D:        AND #$1FFF                ;
CODE_03DA70:        XBA                       ;
CODE_03DA71:        STA $1702,x               ;
CODE_03DA74:        LDA #$0300                ;
CODE_03DA77:        STA $1704,x               ;
CODE_03DA7A:        PLA                       ;
CODE_03DA7B:        AND #$0080                ;
CODE_03DA7E:        BEQ CODE_03DAA3           ;
CODE_03DA80:        LDA #$10A2                ;
CODE_03DA83:        STA $1706,x               ;
CODE_03DA86:        LDA $1702,x               ;
CODE_03DA89:        AND #$F003                ;
CODE_03DA8C:        CMP #$A000                ;
CODE_03DA8F:        BEQ CODE_03DA96           ;
CODE_03DA91:        CMP #$B000                ;
CODE_03DA94:        BNE CODE_03DA9B           ;
CODE_03DA96:        LDA #$183F                ;
CODE_03DA99:        BRA CODE_03DA9E           ;

CODE_03DA9B:        LDA #$18A3                ;
CODE_03DA9E:        STA $1708,x               ;
CODE_03DAA1:        BRA CODE_03DAAC           ;

CODE_03DAA3:        LDA #$0024                ;
CODE_03DAA6:        STA $1706,x               ;
CODE_03DAA9:        STA $1708,x               ;
CODE_03DAAC:        LDA #$FFFF                ;
CODE_03DAAF:        STA $170A,x               ;
CODE_03DAB2:        TXA                       ;
CODE_03DAB3:        CLC                       ;
CODE_03DAB4:        ADC #$0008                ;
CODE_03DAB7:        STA $1700                 ;
CODE_03DABA:        BRA CODE_03DABD           ;

CODE_03DABC:        PLA                       ;
CODE_03DABD:        SEP #$30                  ;
CODE_03DABF:        LDX $9E                   ;
CODE_03DAC1:        RTS                       ;

CODE_03DAC2:        PHA                       ;
CODE_03DAC3:        LDA $021A,y               ;
CODE_03DAC6:        CLC                       ;
CODE_03DAC7:        ADC #$08                  ;
CODE_03DAC9:        LDX $06CC                 ;
CODE_03DACC:        BNE CODE_03DAD1           ;
CODE_03DACE:        CLC                       ;
CODE_03DACF:        ADC #$10                  ;
CODE_03DAD1:        PHA                       ;
CODE_03DAD2:        LDA $0079,y               ;
CODE_03DAD5:        ADC #$00                  ;
CODE_03DAD7:        STA $02                   ;
CODE_03DAD9:        PLA                       ;
CODE_03DADA:        AND #$F0                  ;
CODE_03DADC:        LSR A                     ;
CODE_03DADD:        LSR A                     ;
CODE_03DADE:        LSR A                     ;
CODE_03DADF:        STA $00                   ;
CODE_03DAE1:        LDX $0238,y               ;
CODE_03DAE4:        PLA                       ;
CODE_03DAE5:        BPL CODE_03DAEC           ;
CODE_03DAE7:        TXA                       ;
CODE_03DAE8:        CLC                       ;
CODE_03DAE9:        ADC #$08                  ;
CODE_03DAEB:        TAX                       ;
CODE_03DAEC:        TXA                       ;
CODE_03DAED:        ASL A                     ;
CODE_03DAEE:        ROL A                     ;
CODE_03DAEF:        PHA                       ;
CODE_03DAF0:        ROL A                     ;
CODE_03DAF1:        AND #$03                  ;
CODE_03DAF3:        ORA #$20                  ;
CODE_03DAF5:        STA $01                   ;
CODE_03DAF7:        LDA $02                   ;
CODE_03DAF9:        AND #$01                  ;
CODE_03DAFB:        ASL A                     ;
CODE_03DAFC:        ASL A                     ;
CODE_03DAFD:        ORA $01                   ;
CODE_03DAFF:        STA $01                   ;
CODE_03DB01:        PLA                       ;
CODE_03DB02:        AND #$E0                  ;
CODE_03DB04:        CLC                       ;
CODE_03DB05:        ADC $00                   ;
CODE_03DB07:        STA $00                   ;
CODE_03DB09:        LDA $0238,y               ;
CODE_03DB0C:        CMP #$E8                  ;
CODE_03DB0E:        BCC CODE_03DB16           ;
CODE_03DB10:        LDA $00                   ;
CODE_03DB12:        AND #$BF                  ;
CODE_03DB14:        STA $00                   ;
CODE_03DB16:        RTS                       ;

CODE_03DB17:        TYX                       ;
CODE_03DB18:        JSR CODE_03FDCB           ;
CODE_03DB1B:        LDA #$06                  ;
CODE_03DB1D:        JSR CODE_03E07E           ;
CODE_03DB20:        LDA $03AD                 ;
CODE_03DB23:        STA $011A,x               ;
CODE_03DB26:        LDA $0237                 ;
CODE_03DB29:        STA $0124,x               ;
CODE_03DB2C:        LDA #$01                  ;
CODE_03DB2E:        STA $47,x                 ;
CODE_03DB30:        JSR CODE_03C726           ;
CODE_03DB33:        STA $00A1,y               ;
CODE_03DB36:        STA $043D,y               ;
CODE_03DB39:        RTS                       ;

CODE_03DB3A:        PHY                       ;
CODE_03DB3B:        JSR CODE_03C11B           ;
CODE_03DB3E:        PLX                       ;
CODE_03DB3F:        LDA $29,x                 ;
CODE_03DB41:        BPL CODE_03DB46           ;
CODE_03DB43:        JSR CODE_03C11B           ;
CODE_03DB46:        LDX $9E                   ;
CODE_03DB48:        LDA $03A2,x               ;
CODE_03DB4B:        BMI CODE_03DB51           ;
CODE_03DB4D:        TAX                       ;
CODE_03DB4E:        JSR CODE_03E2CB           ;
CODE_03DB51:        LDX $9E                   ;
CODE_03DB53:        RTS                       ;

CODE_03DB54:        LDA $A1,x                 ;
CODE_03DB56:        ORA $043D,x               ;
CODE_03DB59:        BNE CODE_03DB71           ;
CODE_03DB5B:        STA $041D,x               ;
CODE_03DB5E:        LDA $0238,x               ;
CODE_03DB61:        CMP $0402,x               ;
CODE_03DB64:        BCS CODE_03DB71           ;
CODE_03DB66:        LDA $09                   ;
CODE_03DB68:        AND #$07                  ;
CODE_03DB6A:        BNE CODE_03DB6F           ;
CODE_03DB6C:        INC $0238,x               ;
CODE_03DB6F:        BRA CODE_03DB81           ;

CODE_03DB71:        LDA $0238,x               ;
CODE_03DB74:        CMP $5E,x                 ;
CODE_03DB76:        BCC CODE_03DB7E           ;
CODE_03DB78:        JSR CODE_03C167           ;
CODE_03DB7B:        JMP CODE_03DB81           ;

CODE_03DB7E:        JSR CODE_03C163           ;
CODE_03DB81:        LDA $03A2,x               ;
CODE_03DB84:        BMI CODE_03DB89           ;
CODE_03DB86:        JSR CODE_03E2CB           ;
CODE_03DB89:        RTS                       ;

CODE_03DB8A:        LDA #$0E                  ;
CODE_03DB8C:        JSR CODE_03CFDD           ;
CODE_03DB8F:        JSR CODE_03CFFC           ;
CODE_03DB92:        LDA $03A2,x               ;
CODE_03DB95:        BMI CODE_03DBB4           ;
CODE_03DB97:        LDA $0219                 ;
CODE_03DB9A:        CLC                       ;
CODE_03DB9B:        ADC $00                   ;
CODE_03DB9D:        STA $0219                 ;
CODE_03DBA0:        LDA $78                   ;
CODE_03DBA2:        LDY $00                   ;
CODE_03DBA4:        BMI CODE_03DBAA           ;
CODE_03DBA6:        ADC #$00                  ;
CODE_03DBA8:        BRA CODE_03DBAC           ;

CODE_03DBAA:        SBC #$00                  ;
CODE_03DBAC:        STA $78                   ;
CODE_03DBAE:        STY $03A1                 ;
CODE_03DBB1:        JSR CODE_03E2CB           ;
CODE_03DBB4:        RTS                       ;

CODE_03DBB5:        LDA $03A2,x               ;
CODE_03DBB8:        BMI CODE_03DBC0           ;
CODE_03DBBA:        JSR CODE_03C136           ;
CODE_03DBBD:        JSR CODE_03E2CB           ;
CODE_03DBC0:        RTS                       ;

CODE_03DBC1:        JSR CODE_03C0AD           ;
CODE_03DBC4:        STA $00                   ;
CODE_03DBC6:        LDA $03A2,x               ;
CODE_03DBC9:        BMI CODE_03DBD2           ;
CODE_03DBCB:        LDA #$10                  ;
CODE_03DBCD:        STA $5E,x                 ;
CODE_03DBCF:        JSR CODE_03DB97           ;
CODE_03DBD2:        RTS                       ;

CODE_03DBD3:        JSR CODE_03DBDE           ;
CODE_03DBD6:        JMP CODE_03DB81           ;

CODE_03DBD9:        JSR CODE_03DBDE           ;
CODE_03DBDC:        BRA CODE_03DBF6           ;

CODE_03DBDE:        LDA $0747                 ;
CODE_03DBE1:        BNE CODE_03DC02           ;
CODE_03DBE3:        LDA $041D,x               ;
CODE_03DBE6:        CLC                       ;
CODE_03DBE7:        ADC $043D,x               ;
CODE_03DBEA:        STA $041D,x               ;
CODE_03DBED:        LDA $0238,x               ;
CODE_03DBF0:        ADC $A1,x                 ;
CODE_03DBF2:        STA $0238,x               ;
CODE_03DBF5:        RTS                       ;

CODE_03DBF6:        LDA $03A2,x               ;
CODE_03DBF9:        BEQ CODE_03DC02           ;
CODE_03DBFB:        CMP #$FF                  ;
CODE_03DBFD:        BEQ CODE_03DC02           ;
CODE_03DBFF:        JSR CODE_03E2BC           ;
CODE_03DC02:        RTS                       ;

CODE_03DC03:        LDA $1C,x                 ;\
CODE_03DC05:        CMP #$14                  ; | If cheep-cheep, exit
CODE_03DC07:        BEQ CODE_03DC61           ;/
CODE_03DC09:        LDA $071C                 ;Get horizontal coordinate of left side of screen
CODE_03DC0C:        LDY $1C,x                 ;\
CODE_03DC0E:        CPY #$05                  ; | Check for hammer bros and piranha plant sprites
CODE_03DC10:        BEQ CODE_03DC16           ; | Add 56 pixels if those.
CODE_03DC12:        CPY #$0D                  ; |
CODE_03DC14:        BNE CODE_03DC18           ; |
CODE_03DC16:        ADC #$38                  ;/
CODE_03DC18:        SBC #$48                  ;\Subtract 72 pixels from horizontal coordinate earlier
CODE_03DC1A:        STA $01                   ;/Regardless of the sprite
CODE_03DC1C:        LDA $071A                 ;\
CODE_03DC1F:        SBC #$00                  ; |
CODE_03DC21:        STA $00                   ; |
CODE_03DC23:        LDA $071D                 ; |
CODE_03DC26:        CLC                       ; |
CODE_03DC27:        ADC #$48                  ; |add 72 pixels to the right side horizontal coordinate
CODE_03DC29:        STA $03                   ; |
CODE_03DC2B:        LDA $071B                 ; |
CODE_03DC2E:        ADC #$00                  ; |
CODE_03DC30:        STA $02                   ; |
CODE_03DC32:        LDA $021A,x               ; |
CODE_03DC35:        CMP $01                   ;/
CODE_03DC37:        LDA $79,x                 ;\
CODE_03DC39:        SBC $00                   ; | if enemy object is too far left, branch to erase it
CODE_03DC3B:        BMI CODE_03DC5E           ;/
CODE_03DC3D:        LDA $021A,x               ;
CODE_03DC40:        CMP $03                   ;
CODE_03DC42:        LDA $79,x                 ;
CODE_03DC44:        SBC $02                   ;
CODE_03DC46:        BMI CODE_03DC61           ;
CODE_03DC48:        LDA $29,x                 ;\
CODE_03DC4A:        CMP #$05                  ; |
CODE_03DC4C:        BEQ CODE_03DC61           ; | Do not erase the following sprites when too far to the right:
CODE_03DC4E:        CPY #$0D                  ; | Hammer bros, piranha plant, flagpole, star flag (at end of level), springboard
CODE_03DC50:        BEQ CODE_03DC61           ; |
CODE_03DC52:        CPY #$30                  ; |
CODE_03DC54:        BEQ CODE_03DC61           ; |
CODE_03DC56:        CPY #$31                  ; |
CODE_03DC58:        BEQ CODE_03DC61           ; |
CODE_03DC5A:        CPY #$32                  ; |
CODE_03DC5C:        BEQ CODE_03DC61           ;/
CODE_03DC5E:        JSR CODE_03CDE2           ;Erase sprite if necessary
CODE_03DC61:        RTS                       ;

DATA_03DC62:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF          ;looks like empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF

CODE_03DC70:        LDA $33,x                 ;
CODE_03DC72:        BEQ CODE_03DCCA           ;
CODE_03DC74:        ASL A                     ;
CODE_03DC75:        BCS CODE_03DCCA           ;
CODE_03DC77:        LDA $09                   ;
CODE_03DC79:        LSR A                     ;
CODE_03DC7A:        BCS CODE_03DCCA           ;
CODE_03DC7C:        TXA                       ;
CODE_03DC7D:        ASL A                     ;
CODE_03DC7E:        ASL A                     ;
CODE_03DC7F:        CLC                       ;
CODE_03DC80:        ADC #$2C                  ;
CODE_03DC82:        TAY                       ;
CODE_03DC83:        LDX #$08                  ;
CODE_03DC85:        STX $01                   ;
CODE_03DC87:        TYA                       ;
CODE_03DC88:        PHA                       ;
CODE_03DC89:        LDA $29,x                 ;
CODE_03DC8B:        AND #$20                  ;
CODE_03DC8D:        BNE CODE_03DCC3           ;
CODE_03DC8F:        LDA $10,x                 ;
CODE_03DC91:        BEQ CODE_03DCC3           ;
CODE_03DC93:        LDA $1C,x                 ;
CODE_03DC95:        CMP #$24                  ;
CODE_03DC97:        BCC CODE_03DC9D           ;
CODE_03DC99:        CMP #$2B                  ;
CODE_03DC9B:        BCC CODE_03DCC3           ;
CODE_03DC9D:        CMP #$06                  ;
CODE_03DC9F:        BNE CODE_03DCA7           ;
CODE_03DCA1:        LDA $29,x                 ;
CODE_03DCA3:        CMP #$02                  ;
CODE_03DCA5:        BCS CODE_03DCC3           ;
CODE_03DCA7:        LDA $03D9,x               ;
CODE_03DCAA:        BNE CODE_03DCC3           ;
CODE_03DCAC:        TXA                       ;
CODE_03DCAD:        ASL A                     ;
CODE_03DCAE:        ASL A                     ;
CODE_03DCAF:        CLC                       ;
CODE_03DCB0:        ADC #$04                  ;
CODE_03DCB2:        TAX                       ;
CODE_03DCB3:        JSR CODE_03EAB9           ;
CODE_03DCB6:        LDX $9E                   ;
CODE_03DCB8:        BCC CODE_03DCC3           ;
CODE_03DCBA:        LDA #$80                  ;
CODE_03DCBC:        STA $33,x                 ;
CODE_03DCBE:        LDX $01                   ;
CODE_03DCC0:        JSR CODE_03DCD5           ;
CODE_03DCC3:        PLA                       ;
CODE_03DCC4:        TAY                       ;
CODE_03DCC5:        LDX $01                   ;
CODE_03DCC7:        DEX                       ;
CODE_03DCC8:        BPL CODE_03DC85           ;
CODE_03DCCA:        LDX $9E                   ;
CODE_03DCCC:        RTS                       ;

DATA_03DCCD:        db $06,$00,$02,$12,$11,$07,$05,$2D      ;Sprite to generate when you kill Bowser with fireballs. 
                                                            ;In this order: Goomba, Green Koopa, Red Koopa, Spiny, Lakitu, Blooper, Hammer Bros., Bowser

CODE_03DCD5:        JSR CODE_03FD39           ;
CODE_03DCD8:        LDA #$03                  ;\
CODE_03DCDA:        STA $1600                 ;/Shell kick sound
CODE_03DCDD:        LDX $01                   ;
CODE_03DCDF:        LDA $10,x                 ;
CODE_03DCE1:        BPL CODE_03DCEE           ;
CODE_03DCE3:        AND #$0F                  ;
CODE_03DCE5:        TAX                       ;
CODE_03DCE6:        LDA $1C,x                 ;
CODE_03DCE8:        CMP #$2D                  ;
CODE_03DCEA:        BEQ CODE_03DCFB           ;
CODE_03DCEC:        LDX $01                   ;
CODE_03DCEE:        LDA $1C,x                 ;
CODE_03DCF0:        CMP #$02                  ;
CODE_03DCF2:        BNE CODE_03DCF7           ;
CODE_03DCF4:        JMP CODE_03DDBD           ;

CODE_03DCF7:        CMP #$2D                  ;
CODE_03DCF9:        BNE CODE_03DD75           ;
CODE_03DCFB:        LDA #$08                  ;
CODE_03DCFD:        STA $014B                 ;
CODE_03DD00:        LDA #$18                  ;
CODE_03DD02:        STA $0F4C                 ;
CODE_03DD05:        DEC $0283                 ;
CODE_03DD08:        BEQ CODE_03DD1F           ;
CODE_03DD0A:        LDA $0283                 ;
CODE_03DD0D:        CMP #$01                  ;
CODE_03DD0F:        BEQ CODE_03DD14           ;
CODE_03DD11:        JMP CODE_03DDBD           ;

CODE_03DD14:        STZ $03CA                 ;
CODE_03DD17:        LDA #$01                  ;
CODE_03DD19:        STA $03CB                 ;
CODE_03DD1C:        JMP CODE_03DDBD           ;

CODE_03DD1F:        LDA #$08                  ;
CODE_03DD21:        STA $014B                 ;
CODE_03DD24:        LDA #$FF                  ;
CODE_03DD26:        STA $0F4C                 ;
CODE_03DD29:        JSR CODE_03C726           ;
CODE_03DD2C:        STA $5E,x                 ;
CODE_03DD2E:        STA $06CB                 ;
CODE_03DD31:        LDA #$FE                  ;
CODE_03DD33:        STA $A1,x                 ;
CODE_03DD35:        LDY $075F                 ;\
CODE_03DD38:        LDA DATA_03DCCD,y               ; |
CODE_03DD3B:        STA $1C,x                 ;/Sprite to generate: Bowser killed sprite depending on the world
CODE_03DD3D:        STX $02FC                 ;
CODE_03DD40:        INC $02FC                 ;
CODE_03DD43:        CMP #$2D                  ;
CODE_03DD45:        BEQ CODE_03DD65           ;
CODE_03DD47:        PHX                       ;
CODE_03DD48:        LDA $DB                   ;
CODE_03DD4A:        CMP #$21                  ;
CODE_03DD4C:        BEQ CODE_03DD64           ;
CODE_03DD4E:        STX $0077                 ;
CODE_03DD51:        INC $0077                 ;
CODE_03DD54:        LDX #$08                  ;
CODE_03DD56:        LDA $1C,x                 ;
CODE_03DD58:        DEX                       ;
CODE_03DD59:        BMI CODE_03DD64           ;
CODE_03DD5B:        CMP #$2D                  ;
CODE_03DD5D:        BNE CODE_03DD56           ;
CODE_03DD5F:        INX                       ;
CODE_03DD60:        STZ $10,x                 ;
CODE_03DD62:        STZ $1C,x                 ;
CODE_03DD64:        PLX                       ;
CODE_03DD65:        LDA #$20                  ;
CODE_03DD67:        CPY #$03                  ;
CODE_03DD69:        BCS CODE_03DD6D           ;
CODE_03DD6B:        ORA #$03                  ;
CODE_03DD6D:        STA $29,x                 ;
CODE_03DD6F:        LDX $01                   ;
CODE_03DD71:        LDA #$09                  ;
CODE_03DD73:        BNE CODE_03DDAA           ;
CODE_03DD75:        CMP #$08                  ;
CODE_03DD77:        BEQ CODE_03DDBD           ;
CODE_03DD79:        CMP #$0C                  ;
CODE_03DD7B:        BEQ CODE_03DDBD           ;
CODE_03DD7D:        CMP #$15                  ;
CODE_03DD7F:        BCS CODE_03DDBD           ;
CODE_03DD81:        LDA $1C,x                 ;
CODE_03DD83:        CMP #$0D                  ;
CODE_03DD85:        BNE CODE_03DD8F           ;
CODE_03DD87:        LDA $0238,x               ;
CODE_03DD8A:        ADC #$18                  ;
CODE_03DD8C:        STA $0238,x               ;
CODE_03DD8F:        JSR CODE_03E789           ;
CODE_03DD92:        LDA $29,x                 ;
CODE_03DD94:        AND #$1F                  ;
CODE_03DD96:        ORA #$20                  ;
CODE_03DD98:        STA $29,x                 ;
CODE_03DD9A:        LDA #$02                  ;
CODE_03DD9C:        LDY $1C,x                 ;
CODE_03DD9E:        CPY #$05                  ;
CODE_03DDA0:        BNE CODE_03DDA4           ;
CODE_03DDA2:        LDA #$06                  ;
CODE_03DDA4:        CPY #$06                  ;
CODE_03DDA6:        BNE CODE_03DDAA           ;
CODE_03DDA8:        LDA #$01                  ;
CODE_03DDAA:        JSR CODE_03E07E           ;
CODE_03DDAD:        LDA $1600                 ;
CODE_03DDB0:        CMP #$03                  ;
CODE_03DDB2:        BEQ CODE_03DDBD           ;
CODE_03DDB4:        LDA #$03                  ;\Shell kick sound
CODE_03DDB6:        STA $1600                 ;/
CODE_03DDB9:        JSL CODE_05D2B1           ;
CODE_03DDBD:        RTS                       ;

CODE_03DDBE:        LDA $09                   ;
CODE_03DDC0:        LSR A                     ;
CODE_03DDC1:        BCC CODE_03DDF9           ;
CODE_03DDC3:        LDA $0747                 ;
CODE_03DDC6:        ORA $03D6                 ;
CODE_03DDC9:        BNE CODE_03DDF9           ;
CODE_03DDCB:        TXA                       ;
CODE_03DDCC:        ASL A                     ;
CODE_03DDCD:        ASL A                     ;
CODE_03DDCE:        CLC                       ;
CODE_03DDCF:        ADC #$34                  ;
CODE_03DDD1:        TAY                       ;
CODE_03DDD2:        JSR CODE_03EAB7           ;
CODE_03DDD5:        LDX $9E                   ;
CODE_03DDD7:        BCC CODE_03DDF4           ;
CODE_03DDD9:        LDA $06BE,x               ;
CODE_03DDDC:        BNE CODE_03DDF9           ;
CODE_03DDDE:        LDA #$01                  ;
CODE_03DDE0:        STA $06BE,x               ;
CODE_03DDE3:        LDA $6E,x                 ;
CODE_03DDE5:        EOR #$FF                  ;
CODE_03DDE7:        CLC                       ;
CODE_03DDE8:        ADC #$01                  ;
CODE_03DDEA:        STA $6E,x                 ;
CODE_03DDEC:        LDA $07AF                 ;
CODE_03DDEF:        BNE CODE_03DDF9           ;
CODE_03DDF1:        JMP CODE_03DF4D           ;

CODE_03DDF4:        LDA #$00                  ;
CODE_03DDF6:        STA $06BE,x               ;
CODE_03DDF9:        RTS                       ;

CODE_03DDFA:        JSR CODE_03CDE5           ;
CODE_03DDFD:        LDA #$06                  ;
CODE_03DDFF:        JSR CODE_03E04F           ;
CODE_03DE02:        LDA #$0A                  ;\You got powerup sound
CODE_03DE04:        STA $1600                 ;/
CODE_03DE07:        LDA $020C                 ;\ If you obtained a mushroom or fireflower
CODE_03DE0A:        CMP #$02                  ; |skip this code (to another code)
CODE_03DE0C:        BCC CODE_03DE1D           ; |
CODE_03DE0E:        CMP #$03                  ; |If you got a 1-up
CODE_03DE10:        BEQ CODE_03DE37           ;/ skip this code (to another code)
CODE_03DE12:        LDA #$23                  ;\ Otherwise enable starman stuff.
CODE_03DE14:        STA $07AF                 ; |You got the star powerup music.
CODE_03DE17:        LDA #$0D                  ; |Set the timer of the starman powerup.
CODE_03DE19:        STA $1602                 ;/
CODE_03DE1C:        RTS                       ;Return

CODE_03DE1D:        LDA $0756                 ;\If you got a mushroom go branch
CODE_03DE20:        BEQ CODE_03DE42           ;/
CODE_03DE22:        CMP #$01                  ;If it is NOT fireflower, return
CODE_03DE24:        BNE CODE_03DE4E           ;useless check, the only values can be $00-$01
CODE_03DE26:        LDX $9E                   ;
CODE_03DE28:        LDA #$02                  ;\Set fireflower powerup
CODE_03DE2A:        STA $0756                 ;/
CODE_03DE2D:        JSL CODE_049A88           ;
CODE_03DE31:        LDX $9E                   ;Get sprite index
CODE_03DE33:        LDA #$0C                  ;Set "fireflower get" animation
CODE_03DE35:        BRA CODE_03DE49           ;

CODE_03DE37:        LDA #$0B                  ;\
CODE_03DE39:        STA $0110,x               ;/Get 1up
CODE_03DE3C:        LDA #$00                  ;\
CODE_03DE3E:        STA $1600                 ;/No SFX?
CODE_03DE41:        RTS                       ;

CODE_03DE42:        LDA #$01                  ;\
CODE_03DE44:        STA $0756                 ;/Set Mario's powerup
CODE_03DE47:        LDA #$09                  ;Set "Mario got a powerup" flag
CODE_03DE49:        LDY #$00                  ;Mario standing still flag?
CODE_03DE4B:        JSR CODE_03DF6C           ;Goto powerup stuff
CODE_03DE4E:        RTS                       ;

DATA_03DE4F:        db $18,$E8

DATA_03DE51:        db $30,$D0

DATA_03DE53:        db $08,$F8

CODE_03DE55:        LDA $09                   ;
CODE_03DE57:        LSR A                     ;
CODE_03DE58:        BCS CODE_03DE4E           ;
CODE_03DE5A:        JSR CODE_03E2ED           ;
CODE_03DE5D:        BCS CODE_03DE8F           ;
CODE_03DE5F:        CPX #$09                  ;
CODE_03DE61:        BNE CODE_03DE6C           ;
CODE_03DE63:        LDA $03AE                 ;
CODE_03DE66:        BPL CODE_03DE6C           ;
CODE_03DE68:        CMP #$F4                  ;
CODE_03DE6A:        BCS CODE_03DE71           ;
CODE_03DE6C:        LDA $03D9,x               ;
CODE_03DE6F:        BNE CODE_03DE8F           ;
CODE_03DE71:        LDA $0F                   ;
CODE_03DE73:        CMP #$08                  ;
CODE_03DE75:        BNE CODE_03DE8F           ;
CODE_03DE77:        LDA $29,x                 ;
CODE_03DE79:        AND #$20                  ;
CODE_03DE7B:        BNE CODE_03DE8F           ;
CODE_03DE7D:        JSR CODE_03E2F7           ;
CODE_03DE80:        JSR CODE_03EAB7           ;
CODE_03DE83:        LDX $9E                   ;
CODE_03DE85:        BCS CODE_03DE90           ;
CODE_03DE87:        LDA $0481,x               ;
CODE_03DE8A:        AND #$FE                  ;
CODE_03DE8C:        STA $0481,x               ;
CODE_03DE8F:        RTS                       ;

CODE_03DE90:        LDY $1C,x                 ;
CODE_03DE92:        CPY #$2E                  ;
CODE_03DE94:        BNE CODE_03DE99           ;
CODE_03DE96:        JMP CODE_03DDFA           ;

CODE_03DE99:        LDA $07AF                 ;
CODE_03DE9C:        BEQ CODE_03DEA4           ;
CODE_03DE9E:        JMP CODE_03DD81           ;

DATA_03DEA1:        db $0A,$06,$04

CODE_03DEA4:        LDA $0481,x               ;
CODE_03DEA7:        AND #$01                  ;
CODE_03DEA9:        ORA $03D9,x               ;
CODE_03DEAC:        BNE CODE_03DF14           ;
CODE_03DEAE:        LDA #$01                  ;
CODE_03DEB0:        ORA $0481,x               ;
CODE_03DEB3:        STA $0481,x               ;
CODE_03DEB6:        CPY #$12                  ;
CODE_03DEB8:        BEQ CODE_03DF15           ;
CODE_03DEBA:        CPY #$0D                  ;
CODE_03DEBC:        BNE CODE_03DEC1           ;
CODE_03DEBE:        JMP CODE_03DF4D           ;

CODE_03DEC1:        CPY #$0C                  ;
CODE_03DEC3:        BNE CODE_03DEC8           ;
CODE_03DEC5:        JMP CODE_03DF4D           ;

CODE_03DEC8:        CPY #$33                  ;
CODE_03DECA:        BEQ CODE_03DF15           ;
CODE_03DECC:        CPY #$15                  ;
CODE_03DECE:        BCS CODE_03DF4D           ;
CODE_03DED0:        LDA $5C                   ;
CODE_03DED2:        BEQ CODE_03DF4D           ;
CODE_03DED4:        LDA $29,x                 ;
CODE_03DED6:        ASL A                     ;
CODE_03DED7:        BCS CODE_03DF15           ;
CODE_03DED9:        LDA $29,x                 ;
CODE_03DEDB:        AND #$07                  ;
CODE_03DEDD:        CMP #$02                  ;
CODE_03DEDF:        BCC CODE_03DF15           ;
CODE_03DEE1:        LDA $1C,x                 ;
CODE_03DEE3:        CMP #$06                  ;
CODE_03DEE5:        BEQ CODE_03DF14           ;
CODE_03DEE7:        LDA #$03                  ;\Shell kick sound
CODE_03DEE9:        STA $1600                 ;/
CODE_03DEEC:        JSL CODE_05D2B1           ;
CODE_03DEF0:        STZ $0F40,x               ;
CODE_03DEF3:        LDA $29,x                 ;
CODE_03DEF5:        ORA #$80                  ;
CODE_03DEF7:        STA $29,x                 ;
CODE_03DEF9:        JSR CODE_03E043           ;
CODE_03DEFC:        LDA DATA_03DE51,y               ;
CODE_03DEFF:        STA $5E,x                 ;
CODE_03DF01:        LDA #$03                  ;
CODE_03DF03:        CLC                       ;
CODE_03DF04:        ADC $0284                 ;
CODE_03DF07:        LDY $07A2,x               ;
CODE_03DF0A:        CPY #$03                  ;
CODE_03DF0C:        BCS CODE_03DF11           ;
CODE_03DF0E:        LDA DATA_03DEA1,y               ;
CODE_03DF11:        JSR CODE_03E07E           ;
CODE_03DF14:        RTS                       ;

CODE_03DF15:        LDA $A0                   ;
CODE_03DF17:        BMI CODE_03DF1E           ;
CODE_03DF19:        BEQ CODE_03DF1E           ;
CODE_03DF1B:        JMP CODE_03DFA6           ;

CODE_03DF1E:        LDA $1C,x                 ;
CODE_03DF20:        CMP #$07                  ;
CODE_03DF22:        BCC CODE_03DF2F           ;
CODE_03DF24:        LDA $0237                 ;
CODE_03DF27:        CLC                       ;
CODE_03DF28:        ADC #$0C                  ;
CODE_03DF2A:        CMP $0238,x               ;
CODE_03DF2D:        BCC CODE_03DFA6           ;
CODE_03DF2F:        LDA $079D                 ;
CODE_03DF32:        BNE CODE_03DFA6           ;
CODE_03DF34:        LDA $07AE                 ;
CODE_03DF37:        BNE CODE_03DF79           ;
CODE_03DF39:        LDA $03AD                 ;
CODE_03DF3C:        CMP $03AE                 ;
CODE_03DF3F:        BCC CODE_03DF44           ;
CODE_03DF41:        JMP CODE_03E034           ;

CODE_03DF44:        LDA $47,x                 ;
CODE_03DF46:        CMP #$01                  ;
CODE_03DF48:        BNE CODE_03DF4D           ;
CODE_03DF4A:        JMP CODE_03E03D           ;

CODE_03DF4D:        LDA $07AE                 ;
CODE_03DF50:        BNE CODE_03DF79           ;
CODE_03DF52:        LDX $0756                 ;
CODE_03DF55:        BEQ CODE_03DF7C           ;
CODE_03DF57:        STA $0756                 ;
CODE_03DF5A:        LDA #$08                  ;
CODE_03DF5C:        STA $07AE                 ;
CODE_03DF5F:        LDA #$04                  ;\
CODE_03DF61:        STA $1600                 ;/Enter pipe/hurt sound
CODE_03DF64:        JSL CODE_049A88           ;
CODE_03DF68:        LDA #$0A                  ;
CODE_03DF6A:        LDY #$01                  ;
CODE_03DF6C:        STA $0F                   ;
CODE_03DF6E:        STY $28                   ;
CODE_03DF70:        LDY #$FF                  ;\Everything freezes timer
CODE_03DF72:        STY $0747                 ;/
CODE_03DF75:        INY                       ;
CODE_03DF76:        STY $0775                 ;
CODE_03DF79:        LDX $9E                   ;
CODE_03DF7B:        RTS                       ;

CODE_03DF7C:        STX $5D                   ;
CODE_03DF7E:        PHX                       ;
CODE_03DF7F:        LDA #$01                  ;
CODE_03DF81:        STA $0754                 ;
CODE_03DF84:        JSL CODE_049A88           ;
CODE_03DF88:        PLX                       ;
CODE_03DF89:        INX                       ;
CODE_03DF8A:        LDA #$09                  ;\
CODE_03DF8C:        STA $1602                 ;/Mario died music
CODE_03DF8F:        LDA #$09                  ;\
CODE_03DF91:        STA $1602                 ;/...
CODE_03DF94:        STA $0E67                 ;
CODE_03DF97:        STA $0723                 ;
CODE_03DF9A:        LDA #$FC                  ;
CODE_03DF9C:        STA $A0                   ;
CODE_03DF9E:        LDA #$0B                  ;
CODE_03DFA0:        BNE CODE_03DF6A           ;

DATA_03DFA2:        db $02,$06,$05,$06

CODE_03DFA6:        LDA $1C,x                 ;
CODE_03DFA8:        CMP #$12                  ;
CODE_03DFAA:        BEQ CODE_03DF4D           ;
CODE_03DFAC:        LDA #$02                  ;\Jump on enemy sound
CODE_03DFAE:        STA $1600                 ;/
CODE_03DFB1:        LDA $1C,x                 ;
CODE_03DFB3:        LDY #$00                  ;
CODE_03DFB5:        CMP #$14                  ;
CODE_03DFB7:        BEQ CODE_03DFD4           ;
CODE_03DFB9:        CMP #$08                  ;
CODE_03DFBB:        BEQ CODE_03DFD4           ;
CODE_03DFBD:        CMP #$33                  ;
CODE_03DFBF:        BEQ CODE_03DFD4           ;
CODE_03DFC1:        CMP #$0C                  ;
CODE_03DFC3:        BEQ CODE_03DFD4           ;
CODE_03DFC5:        INY                       ;
CODE_03DFC6:        CMP #$05                  ;
CODE_03DFC8:        BEQ CODE_03DFD4           ;
CODE_03DFCA:        INY                       ;
CODE_03DFCB:        CMP #$11                  ;
CODE_03DFCD:        BEQ CODE_03DFD4           ;
CODE_03DFCF:        INY                       ;
CODE_03DFD0:        CMP #$07                  ;
CODE_03DFD2:        BNE CODE_03DFF1           ;
CODE_03DFD4:        LDA DATA_03DFA2,y               ;
CODE_03DFD7:        JSR CODE_03E07E           ;
CODE_03DFDA:        LDA $47,x                 ;
CODE_03DFDC:        PHA                       ;
CODE_03DFDD:        JSR CODE_03E79D           ;
CODE_03DFE0:        PLA                       ;
CODE_03DFE1:        STA $47,x                 ;
CODE_03DFE3:        LDA #$20                  ;
CODE_03DFE5:        STA $29,x                 ;
CODE_03DFE7:        JSR CODE_03C726           ;
CODE_03DFEA:        STA $5E,x                 ;
CODE_03DFEC:        LDA #$FD                  ;
CODE_03DFEE:        STA $A0                   ;
CODE_03DFF0:        RTS                       ;

CODE_03DFF1:        CMP #$09                  ;
CODE_03DFF3:        BCC CODE_03E012           ;
CODE_03DFF5:        AND #$01                  ;
CODE_03DFF7:        STA $1C,x                 ;
CODE_03DFF9:        LDY #$00                  ;
CODE_03DFFB:        STY $29,x                 ;
CODE_03DFFD:        LDA #$03                  ;
CODE_03DFFF:        JSR CODE_03E07E           ;
CODE_03E002:        JSR CODE_03C726           ;
CODE_03E005:        JSR CODE_03E043           ;
CODE_03E008:        LDA DATA_03DE53,y               ;
CODE_03E00B:        STA $5E,x                 ;
CODE_03E00D:        JMP CODE_03E02F           ;

DATA_03E010:        db $10,$0B

CODE_03E012:        LDA #$04                  ;
CODE_03E014:        STA $29,x                 ;
CODE_03E016:        INC $0284                 ;
CODE_03E019:        LDA $0284                 ;
CODE_03E01C:        CLC                       ;
CODE_03E01D:        ADC $079D                 ;
CODE_03E020:        JSR CODE_03E07E           ;
CODE_03E023:        INC $079D                 ;
CODE_03E026:        LDY $076A                 ;"More difficult quest" flag
CODE_03E029:        LDA DATA_03E010,y         ;
CODE_03E02C:        STA $07A2,x               ;
CODE_03E02F:        LDA #$FB                  ;
CODE_03E031:        STA $A0                   ;
CODE_03E033:        RTS                       ;

CODE_03E034:        LDA $47,x                 ;
CODE_03E036:        CMP #$01                  ;
CODE_03E038:        BNE CODE_03E03D           ;
CODE_03E03A:        JMP CODE_03DF4D           ;

CODE_03E03D:        JSR CODE_03E1BE           ;
CODE_03E040:        JMP CODE_03DF4D           ;

CODE_03E043:        LDY #$01                  ;
CODE_03E045:        JSR CODE_03E8BC           ;
CODE_03E048:        BPL CODE_03E04B           ;
CODE_03E04A:        INY                       ;
CODE_03E04B:        STY $47,x                 ;
CODE_03E04D:        DEY                       ;
CODE_03E04E:        RTS                       ;

CODE_03E04F:        STA $0110,x               ;
CODE_03E052:        LDA #$30                  ;
CODE_03E054:        STA $0138,x               ;
CODE_03E057:        LDA $0238,x               ;
CODE_03E05A:        STA $0124,x               ;
CODE_03E05D:        LDA $03AE                 ;
CODE_03E060:        STA $011A,x               ;
CODE_03E063:        LDA $021A,x               ;
CODE_03E066:        STA $ED                   ;
CODE_03E068:        LDA $79,x                 ;
CODE_03E06A:        STA $EE                   ;
CODE_03E06C:        PHX                       ;
CODE_03E06D:        TXA                       ;
CODE_03E06E:        ASL A                     ;
CODE_03E06F:        TAX                       ;
CODE_03E070:        REP #$20                  ;
CODE_03E072:        LDA $ED                   ;
CODE_03E074:        SEC                       ;
CODE_03E075:        SBC $42                   ;
CODE_03E077:        STA $0E50,x               ;
CODE_03E07A:        SEP #$20                  ;
CODE_03E07C:        PLX                       ;
CODE_03E07D:        RTS                       ;

CODE_03E07E:        CMP $0110,x               ;
CODE_03E081:        BCS CODE_03E084           ;
CODE_03E083:        RTS                       ;

CODE_03E084:        STA $0110,x               ;
CODE_03E087:        LDA #$30                  ;
CODE_03E089:        STA $0138,x               ;
CODE_03E08C:        LDA $0238,x               ;
CODE_03E08F:        STA $0124,x               ;
CODE_03E092:        LDA $03AE                 ;
CODE_03E095:        STA $011A,x               ;
CODE_03E098:        PHY                       ;
CODE_03E099:        TXA                       ;
CODE_03E09A:        ASL A                     ;
CODE_03E09B:        TAY                       ;
CODE_03E09C:        LDA $021A,x               ;
CODE_03E09F:        STA $E4                   ;
CODE_03E0A1:        LDA $79,x                 ;
CODE_03E0A3:        STA $E5                   ;
CODE_03E0A5:        REP #$20                  ;
CODE_03E0A7:        LDA $E4                   ;
CODE_03E0A9:        SEC                       ;
CODE_03E0AA:        SBC $42                   ;
CODE_03E0AC:        STA $0E50,y               ;
CODE_03E0AF:        SEP #$20                  ;
CODE_03E0B1:        STA $011A,x               ;
CODE_03E0B4:        PLY                       ;
CODE_03E0B5:        RTS                       ;

DATA_03E0B6:        db $80,$40,$20,$10,$08,$04,$02

DATA_03E0BD:        db $7F,$BF,$DF,$EF,$F7,$FB,$FD

CODE_03E0C4:        LDA $09                   ;
CODE_03E0C6:        LSR A                     ;
CODE_03E0C7:        BCC CODE_03E07D           ;
CODE_03E0C9:        LDA $5C                   ;
CODE_03E0CB:        BEQ CODE_03E07D           ;
CODE_03E0CD:        LDA $1C,x                 ;
CODE_03E0CF:        CMP #$15                  ;
CODE_03E0D1:        BCS CODE_03E140           ;
CODE_03E0D3:        CMP #$11                  ;
CODE_03E0D5:        BEQ CODE_03E140           ;
CODE_03E0D7:        CMP #$0D                  ;
CODE_03E0D9:        BEQ CODE_03E140           ;
CODE_03E0DB:        LDA $03D9,x               ;
CODE_03E0DE:        BNE CODE_03E140           ;
CODE_03E0E0:        JSR CODE_03E2F7           ;
CODE_03E0E3:        DEX                       ;
CODE_03E0E4:        BMI CODE_03E140           ;
CODE_03E0E6:        STX $01                   ;
CODE_03E0E8:        TYA                       ;
CODE_03E0E9:        PHA                       ;
CODE_03E0EA:        LDA $10,x                 ;
CODE_03E0EC:        BEQ CODE_03E139           ;
CODE_03E0EE:        LDA $1C,x                 ;
CODE_03E0F0:        CMP #$15                  ;
CODE_03E0F2:        BCS CODE_03E139           ;
CODE_03E0F4:        CMP #$11                  ;
CODE_03E0F6:        BEQ CODE_03E139           ;
CODE_03E0F8:        CMP #$0D                  ;
CODE_03E0FA:        BEQ CODE_03E139           ;
CODE_03E0FC:        LDA $03D9,x               ;
CODE_03E0FF:        BNE CODE_03E139           ;
CODE_03E101:        TXA                       ;
CODE_03E102:        ASL A                     ;
CODE_03E103:        ASL A                     ;
CODE_03E104:        CLC                       ;
CODE_03E105:        ADC #$04                  ;
CODE_03E107:        TAX                       ;
CODE_03E108:        JSR CODE_03EAB9           ;
CODE_03E10B:        LDX $9E                   ;
CODE_03E10D:        LDY $01                   ;
CODE_03E10F:        BCC CODE_03E130           ;
CODE_03E111:        LDA $29,x                 ;
CODE_03E113:        ORA $0029,y               ;
CODE_03E116:        AND #$80                  ;
CODE_03E118:        BNE CODE_03E12B           ;
CODE_03E11A:        LDA $0481,y               ;
CODE_03E11D:        AND DATA_03E0B6,x               ;
CODE_03E120:        BNE CODE_03E139           ;
CODE_03E122:        LDA $0481,y               ;
CODE_03E125:        ORA DATA_03E0B6,x               ;
CODE_03E128:        STA $0481,y               ;
CODE_03E12B:        JSR CODE_03E143           ;
CODE_03E12E:        BRA CODE_03E139           ;

CODE_03E130:        LDA $0481,y               ;
CODE_03E133:        AND DATA_03E0BD,x               ;
CODE_03E136:        STA $0481,y               ;
CODE_03E139:        PLA                       ;
CODE_03E13A:        TAY                       ;
CODE_03E13B:        LDX $01                   ;
CODE_03E13D:        DEX                       ;
CODE_03E13E:        BPL CODE_03E0E6           ;
CODE_03E140:        LDX $9E                   ;
CODE_03E142:        RTS                       ;

CODE_03E143:        LDA $0029,y               ;
CODE_03E146:        ORA $29,x                 ;
CODE_03E148:        AND #$20                  ;
CODE_03E14A:        BNE CODE_03E183           ;
CODE_03E14C:        LDA $1C,x                 ;
CODE_03E14E:        CMP #$05                  ;
CODE_03E150:        BNE CODE_03E154           ;
CODE_03E152:        STZ $29,x                 ;
CODE_03E154:        LDA $29,x                 ;
CODE_03E156:        CMP #$06                  ;
CODE_03E158:        BCC CODE_03E184           ;
CODE_03E15A:        LDA $0029,y               ;
CODE_03E15D:        ASL A                     ;
CODE_03E15E:        BCC CODE_03E16A           ;
CODE_03E160:        LDA #$06                  ;
CODE_03E162:        JSR CODE_03E07E           ;
CODE_03E165:        JSR CODE_03DD81           ;
CODE_03E168:        LDY $01                   ;
CODE_03E16A:        TYA                       ;
CODE_03E16B:        TAX                       ;
CODE_03E16C:        JSR CODE_03DD81           ;
CODE_03E16F:        LDX $9E                   ;
CODE_03E171:        LDA $012E,x               ;
CODE_03E174:        CLC                       ;
CODE_03E175:        ADC #$04                  ;
CODE_03E177:        LDX $01                   ;
CODE_03E179:        JSR CODE_03E07E           ;
CODE_03E17C:        LDX $9E                   ;
CODE_03E17E:        INC $012E,x               ;
CODE_03E181:        BRA CODE_03E1A7           ;

CODE_03E183:        RTS                       ;

CODE_03E184:        LDA $0029,y               ;
CODE_03E187:        CMP #$06                  ;
CODE_03E189:        BCC CODE_03E1B7           ;
CODE_03E18B:        LDA $001C,y               ;
CODE_03E18E:        CMP #$05                  ;
CODE_03E190:        BEQ CODE_03E183           ;
CODE_03E192:        JSR CODE_03DD81           ;
CODE_03E195:        LDY $01                   ;
CODE_03E197:        LDA $012E,y               ;
CODE_03E19A:        CLC                       ;
CODE_03E19B:        ADC #$04                  ;
CODE_03E19D:        LDX $9E                   ;
CODE_03E19F:        JSR CODE_03E07E           ;
CODE_03E1A2:        LDX $01                   ;
CODE_03E1A4:        INC $012E,x               ;
CODE_03E1A7:        LDA $012E,x               ;
CODE_03E1AA:        CLC                       ;
CODE_03E1AB:        ADC #$12                  ;
CODE_03E1AD:        CMP #$1A                  ;
CODE_03E1AF:        BCC CODE_03E1B3           ;
CODE_03E1B1:        LDA #$00                  ;\
CODE_03E1B3:        STA $1600                 ;/No sound
CODE_03E1B6:        RTS                       ;

CODE_03E1B7:        TYA                       ;
CODE_03E1B8:        TAX                       ;
CODE_03E1B9:        JSR CODE_03E1BE           ;
CODE_03E1BC:        LDX $9E                   ;
CODE_03E1BE:        LDA $1C,x                 ;
CODE_03E1C0:        CMP #$0D                  ;
CODE_03E1C2:        BEQ CODE_03E1E6           ;
CODE_03E1C4:        CMP #$11                  ;
CODE_03E1C6:        BEQ CODE_03E1E6           ;
CODE_03E1C8:        CMP #$05                  ;
CODE_03E1CA:        BEQ CODE_03E1E6           ;
CODE_03E1CC:        CMP #$12                  ;
CODE_03E1CE:        BEQ CODE_03E1D8           ;
CODE_03E1D0:        CMP #$0E                  ;
CODE_03E1D2:        BEQ CODE_03E1D8           ;
CODE_03E1D4:        CMP #$07                  ;
CODE_03E1D6:        BCS CODE_03E1E6           ;
CODE_03E1D8:        LDA $5E,x                 ;
CODE_03E1DA:        EOR #$FF                  ;
CODE_03E1DC:        TAY                       ;
CODE_03E1DD:        INY                       ;
CODE_03E1DE:        STY $5E,x                 ;
CODE_03E1E0:        LDA $47,x                 ;
CODE_03E1E2:        EOR #$03                  ;
CODE_03E1E4:        STA $47,x                 ;
CODE_03E1E6:        RTS                       ;

CODE_03E1E7:        LDA #$FF                  ;
CODE_03E1E9:        STA $03A2,x               ;
CODE_03E1EC:        LDA $0747                 ;
CODE_03E1EF:        BNE CODE_03E21B           ;
CODE_03E1F1:        LDA $29,x                 ;
CODE_03E1F3:        BMI CODE_03E21B           ;
CODE_03E1F5:        LDA $1C,x                 ;
CODE_03E1F7:        CMP #$24                  ;
CODE_03E1F9:        BNE CODE_03E201           ;
CODE_03E1FB:        LDA $29,x                 ;
CODE_03E1FD:        TAX                       ;
CODE_03E1FE:        JSR CODE_03E201           ;
CODE_03E201:        JSR CODE_03E2ED           ;
CODE_03E204:        BCS CODE_03E21B           ;
CODE_03E206:        TXA                       ;
CODE_03E207:        JSR CODE_03E2F9           ;
CODE_03E20A:        LDA $0238,x               ;
CODE_03E20D:        STA $00                   ;
CODE_03E20F:        TXA                       ;
CODE_03E210:        PHA                       ;
CODE_03E211:        JSR CODE_03EAB7           ;
CODE_03E214:        PLA                       ;
CODE_03E215:        TAX                       ;
CODE_03E216:        BCC CODE_03E21B           ;
CODE_03E218:        JSR CODE_03E25F           ;
CODE_03E21B:        LDX $9E                   ;
CODE_03E21D:        RTS                       ;

CODE_03E21E:        LDA $0747                 ;
CODE_03E221:        BNE CODE_03E25A           ;
CODE_03E223:        STA $03A2,x               ;
CODE_03E226:        JSR CODE_03E2ED           ;
CODE_03E229:        BCS CODE_03E25A           ;
CODE_03E22B:        LDA #$02                  ;
CODE_03E22D:        STA $00                   ;
CODE_03E22F:        LDX $9E                   ;
CODE_03E231:        JSR CODE_03E2F7           ;
CODE_03E234:        AND #$02                  ;
CODE_03E236:        BNE CODE_03E25A           ;
CODE_03E238:        LDA $0F9D,y               ;
CODE_03E23B:        CMP #$20                  ;
CODE_03E23D:        BCC CODE_03E244           ;
CODE_03E23F:        JSR CODE_03EAB7           ;
CODE_03E242:        BCS CODE_03E25D           ;
CODE_03E244:        LDA $0F9D,y               ;
CODE_03E247:        CLC                       ;
CODE_03E248:        ADC #$80                  ;
CODE_03E24A:        STA $0F9D,y               ;
CODE_03E24D:        LDA $0F9F,y               ;
CODE_03E250:        CLC                       ;
CODE_03E251:        ADC #$80                  ;
CODE_03E253:        STA $0F9F,y               ;
CODE_03E256:        DEC $00                   ;
CODE_03E258:        BNE CODE_03E22F           ;
CODE_03E25A:        LDX $9E                   ;
CODE_03E25C:        RTS                       ;

CODE_03E25D:        LDX $9E                   ;
CODE_03E25F:        LDA $0F9F,y               ;
CODE_03E262:        SEC                       ;
CODE_03E263:        SBC $0F9D                 ;
CODE_03E266:        CMP #$04                  ;
CODE_03E268:        BCS CODE_03E272           ;
CODE_03E26A:        LDA $A0                   ;
CODE_03E26C:        BPL CODE_03E272           ;
CODE_03E26E:        LDA #$01                  ;
CODE_03E270:        STA $A0                   ;
CODE_03E272:        LDA $0F9F                 ;
CODE_03E275:        SEC                       ;
CODE_03E276:        SBC $0F9D,y               ;
CODE_03E279:        CMP #$06                  ;
CODE_03E27B:        BCS CODE_03E298           ;
CODE_03E27D:        LDA $A0                   ;
CODE_03E27F:        BMI CODE_03E298           ;
CODE_03E281:        LDA $00                   ;
CODE_03E283:        LDY $1C,x                 ;
CODE_03E285:        CPY #$2B                  ;
CODE_03E287:        BEQ CODE_03E28E           ;
CODE_03E289:        CPY #$2C                  ;
CODE_03E28B:        BEQ CODE_03E28E           ;
CODE_03E28D:        TXA                       ;
CODE_03E28E:        LDX $9E                   ;
CODE_03E290:        STA $03A2,x               ;
CODE_03E293:        LDA #$00                  ;
CODE_03E295:        STA $28                   ;
CODE_03E297:        RTS                       ;

CODE_03E298:        LDA #$01                  ;
CODE_03E29A:        STA $00                   ;
CODE_03E29C:        LDA $0F9E                 ;
CODE_03E29F:        SEC                       ;
CODE_03E2A0:        SBC $0F9C,y               ;
CODE_03E2A3:        CMP #$08                  ;
CODE_03E2A5:        BCC CODE_03E2B4           ;
CODE_03E2A7:        INC $00                   ;
CODE_03E2A9:        LDA $0F9E,y               ;
CODE_03E2AC:        CLC                       ;
CODE_03E2AD:        SBC $0F9C                 ;
CODE_03E2B0:        CMP #$09                  ;
CODE_03E2B2:        BCS CODE_03E2B7           ;
CODE_03E2B4:        JSR CODE_03E6B5           ;
CODE_03E2B7:        LDX $9E                   ;
CODE_03E2B9:        RTS                       ;

DATA_03E2BA:        db $80,$00

CODE_03E2BC:        TAY                       ;
CODE_03E2BD:        LDA $0238,x               ;
CODE_03E2C0:        CLC                       ;
CODE_03E2C1:        ADC DATA_03E2BA-1,y       ;
CODE_03E2C4:        BNE CODE_03E2CE           ;
CODE_03E2C6:        LDA #$02                  ;
CODE_03E2C8:        STA $BB                   ;
CODE_03E2CA:        RTS                       ;

CODE_03E2CB:        LDA $0238,x               ;
CODE_03E2CE:        LDY $0F                   ;
CODE_03E2D0:        CPY #$0B                  ;
CODE_03E2D2:        BEQ CODE_03E2EC           ;
CODE_03E2D4:        LDY $BC,x                 ;
CODE_03E2D6:        CPY #$01                  ;
CODE_03E2D8:        BNE CODE_03E2EC           ;
CODE_03E2DA:        SEC                       ;
CODE_03E2DB:        SBC #$20                  ;
CODE_03E2DD:        STA $0237                 ;
CODE_03E2E0:        TYA                       ;
CODE_03E2E1:        SBC #$00                  ;
CODE_03E2E3:        STA $BB                   ;
CODE_03E2E5:        LDA #$00                  ;
CODE_03E2E7:        STA $A0                   ;
CODE_03E2E9:        STA $043C                 ;
CODE_03E2EC:        RTS                       ;

CODE_03E2ED:        LDA $03D0                 ;
CODE_03E2F0:        AND #$F0                  ;
CODE_03E2F2:        CLC                       ;
CODE_03E2F3:        BEQ CODE_03E2F6           ;
CODE_03E2F5:        SEC                       ;
CODE_03E2F6:        RTS                       ;

CODE_03E2F7:        LDA $9E                   ;
CODE_03E2F9:        ASL A                     ;
CODE_03E2FA:        ASL A                     ;
CODE_03E2FB:        CLC                       ;
CODE_03E2FC:        ADC #$04                  ;
CODE_03E2FE:        TAY                       ;
CODE_03E2FF:        LDA $03D1                 ;
CODE_03E302:        AND #$0F                  ;
CODE_03E304:        CMP #$0F                  ;
CODE_03E306:        RTS                       ;

DATA_03E307:        db $20,$10

CODE_03E309:        LDA $0716                 ;\When "pass through blocks" flag is enabled
CODE_03E30C:        BNE CODE_03E33D           ;/return.
CODE_03E30E:        LDA $0F                   ;\
CODE_03E310:        CMP #$0B                  ; |When in death animation
CODE_03E312:        BEQ CODE_03E33D           ;/ return
CODE_03E314:        CMP #$04                  ;\When on flagpole?
CODE_03E316:        BCC CODE_03E33D           ;/return
CODE_03E318:        LDA #$01                  ;\
CODE_03E31A:        LDY $0704                 ; |If swimming, make player state 01
CODE_03E31D:        BNE CODE_03E329           ;/branch
CODE_03E31F:        LDA $28                   ;\
CODE_03E321:        BEQ CODE_03E327           ; |If player state is 00, make it 02
CODE_03E323:        CMP #$03                  ; |If player state is 03, keep it 03
CODE_03E325:        BNE CODE_03E32B           ; |
CODE_03E327:        LDA #$02                  ; |
CODE_03E329:        STA $28                   ;/
CODE_03E32B:        LDA $BB                   ;\
CODE_03E32D:        CMP #$01                  ; |If position of Mario is NOT inside range --
CODE_03E32F:        BNE CODE_03E33D           ;/(AKA anywhere he can shoot fireballs), return
CODE_03E331:        LDA #$FF                  ;
CODE_03E333:        STA $0480                 ;note to self: look at what this store does.
CODE_03E336:        LDA $0237                 ;\
CODE_03E339:        CMP #$CF                  ; |Branch if player Y-position is inside the game
CODE_03E33B:        BCC CODE_03E33E           ;/ (AKA not in a bottomless pit)
CODE_03E33D:        RTS                       ;Return

CODE_03E33E:        LDY #$02                  ;Block interaction routine
CODE_03E340:        LDA $0714                 ;\If Mario is ducking, branch, #$0E into $EB
CODE_03E343:        BNE CODE_03E351           ;/
CODE_03E345:        LDA $0754                 ;\If Small Mario, branch, #$0E into $EB
CODE_03E348:        BNE CODE_03E351           ;/
CODE_03E34A:        DEY                       ;\
CODE_03E34B:        LDA $0704                 ; |If swimming, branch, #$07 into $EB
CODE_03E34E:        BNE CODE_03E351           ; |
CODE_03E350:        DEY                       ;/If anything else (normal non-small mario), #$00 into $EB
CODE_03E351:        LDA DATA_03EB3F,y               ;\Set Mario's hitbox for object interaction?
CODE_03E354:        STA $EB                   ;/
CODE_03E356:        TAY                       ;Hitbox size to Y
CODE_03E357:        LDX $0754                 ;Mario Small Flag to X
CODE_03E35A:        LDA $0714                 ;\If Mario isn't ducking
CODE_03E35D:        BEQ CODE_03E360           ;/branch
CODE_03E35F:        INX                       ;Mario is ducking, so Mario Small flag index indicates mario = small
CODE_03E360:        LDA $0237                 ;\Mario's Y position
CODE_03E363:        CMP DATA_03E307,x               ; |If it's smaller than $20 (Small mario), or $10 (big mario)
CODE_03E366:        BCC CODE_03E3A0           ;/branch (to make mario not interact w/ objects on/above statusbar)
CODE_03E368:        LDA #$01                  ;
CODE_03E36A:        STA $E4                   ;
CODE_03E36C:        JSR CODE_03EB7B           ;
CODE_03E36F:        BEQ CODE_03E3A0           ;
CODE_03E371:        JSR CODE_03E70D           ;\Check if tile is E9 or EA, and if so, play the coin sound
CODE_03E374:        BCS CODE_03E3C9           ;/Then branch. If not tile E9 or EA, continue.
CODE_03E376:        LDY $A0                   ;\If Mario y-speed is that of falling, branch
CODE_03E378:        BPL CODE_03E3A0           ;/
CODE_03E37A:        LDY $04                   ;
CODE_03E37C:        CPY #$04                  ;
CODE_03E37E:        BCC CODE_03E3A0           ;
CODE_03E380:        JSR CODE_03E6FB           ;
CODE_03E383:        BCS CODE_03E393           ;
CODE_03E385:        LDY $5C                   ;
CODE_03E387:        BEQ CODE_03E39C           ;
CODE_03E389:        LDY $078C                 ;
CODE_03E38C:        BNE CODE_03E39C           ;
CODE_03E38E:        JSR CODE_03BE75           ;
CODE_03E391:        BRA CODE_03E3A0           ;

CODE_03E393:        CMP #$2A                  ;
CODE_03E395:        BEQ CODE_03E39C           ;
CODE_03E397:        LDA #$01                  ;\ Executes as soon as mario hits a cement-block solid
CODE_03E399:        STA $1600                 ; |block from below which does NOT spawn ANYTHING
CODE_03E39C:        LDA #$01                  ; |Play sound, set Y-speed to downwards
CODE_03E39E:        STA $A0                   ;/
CODE_03E3A0:        LDY $EB                   ;
CODE_03E3A2:        LDA $0237                 ;
CODE_03E3A5:        CMP #$CF                  ;
CODE_03E3A7:        BCS CODE_03E40F           ;
CODE_03E3A9:        STZ $E4                   ;
CODE_03E3AB:        JSR CODE_03EB7A           ;
CODE_03E3AE:        JSR CODE_03E70D           ;
CODE_03E3B1:        BCS CODE_03E3C9           ;
CODE_03E3B3:        PHA                       ;
CODE_03E3B4:        STZ $E4                   ;
CODE_03E3B6:        JSR CODE_03EB7A           ;
CODE_03E3B9:        STA $00                   ;
CODE_03E3BB:        PLA                       ;
CODE_03E3BC:        STA $01                   ;
CODE_03E3BE:        BNE CODE_03E3CC           ;
CODE_03E3C0:        LDA $00                   ;
CODE_03E3C2:        BEQ CODE_03E40F           ;
CODE_03E3C4:        JSR CODE_03E70D           ;
CODE_03E3C7:        BCC CODE_03E3CC           ;
CODE_03E3C9:        JMP CODE_03E4C8           ;

CODE_03E3CC:        JSR CODE_03E706           ;
CODE_03E3CF:        BCS CODE_03E40F           ;
CODE_03E3D1:        LDY $A0                   ;
CODE_03E3D3:        BMI CODE_03E40F           ;
CODE_03E3D5:        CMP #$FD                  ;
CODE_03E3D7:        BNE CODE_03E3DC           ;
CODE_03E3D9:        JMP CODE_03E4D1           ;

CODE_03E3DC:        JSR CODE_03E5FA           ;
CODE_03E3DF:        BEQ CODE_03E40F           ;
CODE_03E3E1:        LDY $070E                 ;
CODE_03E3E4:        BNE CODE_03E40B           ;
CODE_03E3E6:        LDY $04                   ;
CODE_03E3E8:        CPY #$05                  ;
CODE_03E3EA:        BCC CODE_03E3F3           ;
CODE_03E3EC:        LDA $46                   ;
CODE_03E3EE:        STA $00                   ;
CODE_03E3F0:        JMP CODE_03E6B5           ;

CODE_03E3F3:        JSR CODE_03E601           ;
CODE_03E3F6:        LDA #$F0                  ;
CODE_03E3F8:        AND $0237                 ;
CODE_03E3FB:        STA $0237                 ;
CODE_03E3FE:        JSR CODE_03E625           ;
CODE_03E401:        LDA #$00                  ;
CODE_03E403:        STA $A0                   ;
CODE_03E405:        STA $043C                 ;
CODE_03E408:        STA $0284                 ;
CODE_03E40B:        LDA #$00                  ;
CODE_03E40D:        STA $28                   ;
CODE_03E40F:        LDY $EB                   ;
CODE_03E411:        INY                       ;
CODE_03E412:        INY                       ;
CODE_03E413:        LDA #$02                  ;
CODE_03E415:        STA $00                   ;
CODE_03E417:        INY                       ;
CODE_03E418:        STY $EB                   ;
CODE_03E41A:        LDA $0237                 ;
CODE_03E41D:        CMP #$20                  ;
CODE_03E41F:        BCC CODE_03E439           ;
CODE_03E421:        CMP #$E4                  ;
CODE_03E423:        BCS CODE_03E452           ;
CODE_03E425:        STZ $E4                   ;
CODE_03E427:        JSR CODE_03EB7F           ;
CODE_03E42A:        BEQ CODE_03E439           ;
CODE_03E42C:        CMP #$20                  ;
CODE_03E42E:        BEQ CODE_03E439           ;
CODE_03E430:        CMP #$75                  ;
CODE_03E432:        BEQ CODE_03E439           ;
CODE_03E434:        JSR CODE_03E706           ;
CODE_03E437:        BCC CODE_03E453           ;
CODE_03E439:        LDY $EB                   ;
CODE_03E43B:        INY                       ;
CODE_03E43C:        LDA $0237                 ;
CODE_03E43F:        CMP #$08                  ;
CODE_03E441:        BCC CODE_03E452           ;
CODE_03E443:        CMP #$D0                  ;
CODE_03E445:        BCS CODE_03E452           ;
CODE_03E447:        STZ $E4                   ;
CODE_03E449:        JSR CODE_03EB7F           ;
CODE_03E44C:        BNE CODE_03E453           ;
CODE_03E44E:        DEC $00                   ;
CODE_03E450:        BNE CODE_03E417           ;
CODE_03E452:        RTS                       ;

CODE_03E453:        JSR CODE_03E5FA           ;
CODE_03E456:        BEQ CODE_03E4C5           ;
CODE_03E458:        JSR CODE_03E706           ;
CODE_03E45B:        BCC CODE_03E460           ;
CODE_03E45D:        JMP CODE_03E526           ;

CODE_03E460:        JSR CODE_03E70D           ;
CODE_03E463:        BCS CODE_03E4C8           ;
CODE_03E465:        JSR CODE_03E61A           ;
CODE_03E468:        BCC CODE_03E472           ;
CODE_03E46A:        LDA $070E                 ;
CODE_03E46D:        BNE CODE_03E4C5           ;
CODE_03E46F:        JMP CODE_03E4C2           ;

CODE_03E472:        LDY $28                   ;
CODE_03E474:        CPY #$00                  ;
CODE_03E476:        BNE CODE_03E4C2           ;
CODE_03E478:        LDY $0202                 ;
CODE_03E47B:        DEY                       ;
CODE_03E47C:        BNE CODE_03E4C2           ;
CODE_03E47E:        CMP #$76                  ;
CODE_03E480:        BEQ CODE_03E486           ;
CODE_03E482:        CMP #$23                  ;
CODE_03E484:        BNE CODE_03E4C2           ;
CODE_03E486:        LDA $0256                 ;
CODE_03E489:        BEQ CODE_03E499           ;
CODE_03E48B:        LDY $9A                   ;
CODE_03E48D:        BNE CODE_03E499           ;
CODE_03E48F:        LDY #$04                  ;\
CODE_03E491:        STY $1600                 ;/Enter pipe/hurt sound
CODE_03E494:        STY $9A                   ;
CODE_03E496:        STZ $07AF                 ;
CODE_03E499:        AND #$CF                  ;
CODE_03E49B:        STA $0256                 ;
CODE_03E49E:        LDA $0219                 ;
CODE_03E4A1:        AND #$0F                  ;
CODE_03E4A3:        BEQ CODE_03E4B3           ;
CODE_03E4A5:        LDY #$00                  ;
CODE_03E4A7:        LDA $071A                 ;
CODE_03E4AA:        BEQ CODE_03E4AD           ;
CODE_03E4AC:        INY                       ;
CODE_03E4AD:        LDA DATA_03E4C6,y               ;
CODE_03E4B0:        STA $06DE                 ;
CODE_03E4B3:        LDA $0F                   ;
CODE_03E4B5:        CMP #$07                  ;
CODE_03E4B7:        BEQ CODE_03E4C5           ;
CODE_03E4B9:        CMP #$08                  ;
CODE_03E4BB:        BNE CODE_03E4C5           ;
CODE_03E4BD:        LDA #$02                  ;
CODE_03E4BF:        STA $0F                   ;
CODE_03E4C1:        RTS                       ;

CODE_03E4C2:        JSR CODE_03E6B5           ;
CODE_03E4C5:        RTS                       ;

DATA_03E4C6:        db $34,$34

CODE_03E4C8:        JSR CODE_03E514           ;
CODE_03E4CB:        INC $0748                 ;
CODE_03E4CE:        JMP CODE_03BD2C           ;

CODE_03E4D1:        LDA #$00                  ;
CODE_03E4D3:        STA $0772                 ;
CODE_03E4D6:        LDA #$02                  ;
CODE_03E4D8:        STA $0770                 ;
CODE_03E4DB:        LDA $2142                 ;
CODE_03E4DE:        CMP #$0B                  ;
CODE_03E4E0:        BEQ CODE_03E4E7           ;
CODE_03E4E2:        LDA #$F0                  ;
CODE_03E4E4:        STA $1602                 ;
CODE_03E4E7:        LDA #$18                  ;
CODE_03E4E9:        STA $5D                   ;
CODE_03E4EB:        PHX                       ;
CODE_03E4EC:        LDX #$00                  ;
CODE_03E4EE:        LDA $1C,x                 ;
CODE_03E4F0:        CMP #$2D                  ;
CODE_03E4F2:        BNE CODE_03E50E           ;
CODE_03E4F4:        LDA $10,x                 ;
CODE_03E4F6:        CMP #$01                  ;
CODE_03E4F8:        BNE CODE_03E50E           ;
CODE_03E4FA:        LDA $021A,x               ;
CODE_03E4FD:        SEC                       ;
CODE_03E4FE:        SBC $073F                 ;
CODE_03E501:        STA $03AE                 ;
CODE_03E504:        LDA $0238,x               ;
CODE_03E507:        STA $03B9                 ;
CODE_03E50A:        JSL CODE_05D055           ;
CODE_03E50E:        INX                       ;
CODE_03E50F:        CPX #$09                  ;
CODE_03E511:        BNE CODE_03E4EE           ;
CODE_03E513:        PLX                       ;
CODE_03E514:        LDY $02                   ;
CODE_03E516:        LDA #$00                  ;
CODE_03E518:        STA ($06),y               ;
CODE_03E51A:        JMP CODE_039373           ;

DATA_03E51D:        db $F9,$07

DATA_03E51F:        db $FF,$00

DATA_03E521:        db $18,$22,$50,$68,$90

CODE_03E526:        LDY $04                   ;
CODE_03E528:        CPY #$06                  ;
CODE_03E52A:        BCC CODE_03E530           ;
CODE_03E52C:        CPY #$0A                  ;
CODE_03E52E:        BCC CODE_03E531           ;
CODE_03E530:        RTS                       ;

CODE_03E531:        CMP #$28                  ;
CODE_03E533:        BEQ CODE_03E539           ;
CODE_03E535:        CMP #$29                  ;
CODE_03E537:        BNE CODE_03E57E           ;
CODE_03E539:        LDA $0F                   ;
CODE_03E53B:        CMP #$05                  ;
CODE_03E53D:        BEQ CODE_03E58D           ;
CODE_03E53F:        LDA #$01                  ;
CODE_03E541:        STA $0202                 ;
CODE_03E544:        INC $0723                 ;
CODE_03E547:        LDA $0F                   ;
CODE_03E549:        CMP #$04                  ;
CODE_03E54B:        BEQ CODE_03E577           ;
CODE_03E54D:        LDA #$33                  ;
CODE_03E54F:        JSR CODE_03A885           ;
CODE_03E552:        JSL CODE_048CEE           ;
CODE_03E556:        LDA #$F0                  ;\Music Fade Out
CODE_03E558:        STA $1602                 ;/
CODE_03E55B:        LDA #$46                  ;\Flagpole sound
CODE_03E55D:        STA $1600                 ;/
CODE_03E560:        LSR A                     ;
CODE_03E561:        STA $0713                 ;
CODE_03E564:        LDX #$04                  ;
CODE_03E566:        LDA $0237                 ;
CODE_03E569:        STA $070F                 ;
CODE_03E56C:        CMP DATA_03E521,x               ;
CODE_03E56F:        BCS CODE_03E574           ;
CODE_03E571:        DEX                       ;
CODE_03E572:        BNE CODE_03E56C           ;
CODE_03E574:        STX $010F                 ;
CODE_03E577:        LDA #$04                  ;
CODE_03E579:        STA $0F                   ;
CODE_03E57B:        JMP CODE_03E58D           ;

CODE_03E57E:        CMP #$2A                  ;
CODE_03E580:        BNE CODE_03E58D           ;
CODE_03E582:        LDA $0237                 ;\
CODE_03E585:        CMP #$20                  ; |If player Y-position is not above the flagpole
CODE_03E587:        BCS CODE_03E58D           ; |
CODE_03E589:        LDA #$01                  ;\|Player action: climb a vine/slide down the flagpole
CODE_03E58B:        STA $0F                   ;/
CODE_03E58D:        LDA #$03                  ;\Player state: slide down the flagpole
CODE_03E58F:        STA $28                   ;/
CODE_03E591:        LDA #$00                  ;\Store zero to player X-speed
CODE_03E593:        STA $5D                   ; |
CODE_03E595:        STA $0705                 ;/Full left movement, minimal right movement flag?
CODE_03E598:        LDA $0398                 ;
CODE_03E59B:        BEQ CODE_03E5CC           ;
CODE_03E59D:        LDA $03AE                 ;
CODE_03E5A0:        BPL CODE_03E5CC           ;
CODE_03E5A2:        CMP #$F8                  ;
CODE_03E5A4:        BCC CODE_03E5CC           ;
CODE_03E5A6:        LDA $0082                 ;
CODE_03E5A9:        STA $E5                   ;
CODE_03E5AB:        LDA $0223                 ;
CODE_03E5AE:        STA $E4                   ;
CODE_03E5B0:        REP #$20                  ;
CODE_03E5B2:        LDA $E4                   ;
CODE_03E5B4:        CLC                       ;
CODE_03E5B5:        ADC #$0007                ;
CODE_03E5B8:        STA $E4                   ;
CODE_03E5BA:        SEP #$20                  ;
CODE_03E5BC:        LDA $E4                   ;
CODE_03E5BE:        STA $0219                 ;
CODE_03E5C1:        LDA $E5                   ;
CODE_03E5C3:        STA $78                   ;
CODE_03E5C5:        LDA #$02                  ;
CODE_03E5C7:        STA $0202                 ;
CODE_03E5CA:        BRA CODE_03E5F9           ;

CODE_03E5CC:        LDA $0219                 ;
CODE_03E5CF:        SEC                       ;
CODE_03E5D0:        SBC $071C                 ;
CODE_03E5D3:        CMP #$10                  ;
CODE_03E5D5:        BCS CODE_03E5DC           ;
CODE_03E5D7:        LDA #$02                  ;
CODE_03E5D9:        STA $0202                 ;
CODE_03E5DC:        LDY $0202                 ;
CODE_03E5DF:        LDA $06                   ;
CODE_03E5E1:        ASL A                     ;
CODE_03E5E2:        ASL A                     ;
CODE_03E5E3:        ASL A                     ;
CODE_03E5E4:        ASL A                     ;
CODE_03E5E5:        CLC                       ;
CODE_03E5E6:        ADC DATA_03E51D-1,y       ;
CODE_03E5E9:        STA $0219                 ;
CODE_03E5EC:        LDA $06                   ;
CODE_03E5EE:        BNE CODE_03E5F9           ;
CODE_03E5F0:        LDA $071B                 ;
CODE_03E5F3:        CLC                       ;
CODE_03E5F4:        ADC DATA_03E51F-1,y               ;
CODE_03E5F7:        STA $78                   ;
CODE_03E5F9:        RTS                       ;

CODE_03E5FA:        CMP #$62                  ;
CODE_03E5FC:        BEQ CODE_03E600           ;
CODE_03E5FE:        CMP #$63                  ;
CODE_03E600:        RTS                       ;

CODE_03E601:        JSR CODE_03E61A           ;
CODE_03E604:        BCC CODE_03E619           ;
CODE_03E606:        LDA #$70                  ;
CODE_03E608:        STA $0709                 ;
CODE_03E60B:        LDA #$F9                  ;\
CODE_03E60D:        STA $06DB                 ;/Springboard launch force
CODE_03E610:        LDA #$03                  ;
CODE_03E612:        STA $078E                 ;
CODE_03E615:        LSR A                     ;
CODE_03E616:        STA $070E                 ;
CODE_03E619:        RTS                       ;

CODE_03E61A:        CMP #$6F                  ;
CODE_03E61C:        BEQ CODE_03E623           ;
CODE_03E61E:        CMP #$70                  ;
CODE_03E620:        CLC                       ;
CODE_03E621:        BNE CODE_03E624           ;
CODE_03E623:        SEC                       ;
CODE_03E624:        RTS                       ;

CODE_03E625:        LDA $0B                   ;
CODE_03E627:        AND #$04                  ;
CODE_03E629:        BEQ CODE_03E624           ;
CODE_03E62B:        LDA $00                   ;
CODE_03E62D:        CMP #$15                  ;
CODE_03E62F:        BNE CODE_03E624           ;
CODE_03E631:        LDA $01                   ;
CODE_03E633:        CMP #$14                  ;
CODE_03E635:        BNE CODE_03E624           ;
CODE_03E637:        LDA #$30                  ;
CODE_03E639:        STA $06DE                 ;
CODE_03E63C:        LDA #$03                  ;
CODE_03E63E:        STA $0F                   ;
CODE_03E640:        LDA #$04                  ;
CODE_03E642:        STA $07AE                 ;
CODE_03E645:        STZ $07AF                 ;
CODE_03E648:        LDA #$00                  ;
CODE_03E64A:        STA $0256                 ;
CODE_03E64D:        LDA $06D6                 ;
CODE_03E650:        BEQ CODE_03E6AF           ;
CODE_03E652:        CMP #$04                  ;
CODE_03E654:        BCS CODE_03E668           ;
CODE_03E656:        LDX #$04                  ;
CODE_03E658:        LDA $075F                 ;
CODE_03E65B:        BEQ CODE_03E664           ;
CODE_03E65D:        INX                       ;
CODE_03E65E:        LDA $5C                   ;
CODE_03E660:        DEC A                     ;
CODE_03E661:        BNE CODE_03E664           ;
CODE_03E663:        INX                       ;
CODE_03E664:        TXA                       ;
CODE_03E665:        STA $06D6                 ;
CODE_03E668:        AND #$03                  ;
CODE_03E66A:        ASL A                     ;
CODE_03E66B:        ASL A                     ;
CODE_03E66C:        TAX                       ;
CODE_03E66D:        LDA $0219                 ;
CODE_03E670:        CMP #$60                  ;
CODE_03E672:        BCC CODE_03E67A           ;
CODE_03E674:        INX                       ;
CODE_03E675:        CMP #$A0                  ;
CODE_03E677:        BCC CODE_03E67A           ;
CODE_03E679:        INX                       ;
CODE_03E67A:        LDY DATA_0390D8,x               ;
CODE_03E67D:        DEY                       ;
CODE_03E67E:        STY $075F                 ;
CODE_03E681:        TYX                       ;
CODE_03E682:        LDA $04C11C,x             ;
CODE_03E686:        TAX                       ;
CODE_03E687:        LDA $04C124,x             ;
CODE_03E68B:        STA $0750                 ;
CODE_03E68E:        LDA #$80                  ;
CODE_03E690:        STA $1602                 ;
CODE_03E693:        LDA #$00                  ;
CODE_03E695:        STA $0751                 ;
CODE_03E698:        STA $0760                 ;
CODE_03E69B:        STA $075C                 ;
CODE_03E69E:        STA $0752                 ;
CODE_03E6A1:        INC $075D                 ;Enable hidden 1-up flag
CODE_03E6A4:        INC $0757                 ;
CODE_03E6A7:        LDA #$F3                  ;
CODE_03E6A9:        STA $1602                 ;
CODE_03E6AC:        STA $0E1A                 ;
CODE_03E6AF:        LDA #$04                  ;\
CODE_03E6B1:        STA $1600                 ;/Enter pipe/hurt sound
CODE_03E6B4:        RTS                       ;

CODE_03E6B5:        LDA #$00                  ;
CODE_03E6B7:        LDY $5D                   ;
CODE_03E6B9:        LDX $00                   ;
CODE_03E6BB:        DEX                       ;
CODE_03E6BC:        BNE CODE_03E6C8           ;
CODE_03E6BE:        INX                       ;
CODE_03E6BF:        CPY #$00                  ;
CODE_03E6C1:        BMI CODE_03E6ED           ;
CODE_03E6C3:        LDA #$FF                  ;
CODE_03E6C5:        JMP CODE_03E6D0           ;

CODE_03E6C8:        LDX #$02                  ;
CODE_03E6CA:        CPY #$01                  ;
CODE_03E6CC:        BPL CODE_03E6ED           ;
CODE_03E6CE:        LDA #$01                  ;
CODE_03E6D0:        LDY #$10                  ;
CODE_03E6D2:        STY $078D                 ;
CODE_03E6D5:        LDY #$00                  ;
CODE_03E6D7:        STY $5D                   ;
CODE_03E6D9:        CMP #$00                  ;
CODE_03E6DB:        BPL CODE_03E6DE           ;
CODE_03E6DD:        DEY                       ;
CODE_03E6DE:        STY $00                   ;
CODE_03E6E0:        CLC                       ;
CODE_03E6E1:        ADC $0219                 ;
CODE_03E6E4:        STA $0219                 ;
CODE_03E6E7:        LDA $78                   ;
CODE_03E6E9:        ADC $00                   ;
CODE_03E6EB:        STA $78                   ;
CODE_03E6ED:        TXA                       ;
CODE_03E6EE:        EOR #$FF                  ;
CODE_03E6F0:        AND $0480                 ;
CODE_03E6F3:        STA $0480                 ;
CODE_03E6F6:        RTS                       ;

DATA_03E6F7:        db $14,$64,$8C,$FC

CODE_03E6FB:        JSR CODE_03E71D           ;
CODE_03E6FE:        CMP DATA_03E6F7,x               ;
CODE_03E701:        RTS                       ;

DATA_03E702:        db $28,$77,$8E,$FE

CODE_03E706:        JSR CODE_03E71D           ;0 S:01FF P:EnvMXdIzc HC:1062 VC:000 FC:00 I:00
CODE_03E709:        CMP DATA_03E702,x               ;0 S:01FF P:EnvMXdIzc HC:1078 VC:000 FC:00 I:00
CODE_03E70C:        RTS                       ;0 S:01FF P:EnvMXdIzc HC:1094 VC:000 FC:00 I:00

CODE_03E70D:        CMP #$E9                  ;
CODE_03E70F:        BEQ CODE_03E717           ;
CODE_03E711:        CMP #$EA                  ;
CODE_03E713:        BEQ CODE_03E717           ;
CODE_03E715:        CLC                       ;
CODE_03E716:        RTS                       ;

CODE_03E717:        LDA #$01                  ;\
CODE_03E719:        STA $1603                 ;/Coin sound
CODE_03E71C:        RTS                       ;Return

CODE_03E71D:        TAY                       ;
CODE_03E71E:        AND #$C0                  ;
CODE_03E720:        ASL A                     ;
CODE_03E721:        ROL A                     ;
CODE_03E722:        ROL A                     ;
CODE_03E723:        TAX                       ;
CODE_03E724:        TYA                       ;
CODE_03E725:        RTS                       ;

DATA_03E726:        db $01,$01,$02,$02,$02,$05

DATA_03E72C:        db $10,$F0

CODE_03E72E:        LDA $29,x                 ;
CODE_03E730:        AND #$20                  ;
CODE_03E732:        BNE CODE_03E725           ;
CODE_03E734:        JSR CODE_03E8D8           ;
CODE_03E737:        BCC CODE_03E725           ;
CODE_03E739:        LDY $1C,x                 ;
CODE_03E73B:        CPY #$12                  ;
CODE_03E73D:        BNE CODE_03E746           ;
CODE_03E73F:        LDA $0238,x               ;
CODE_03E742:        CMP #$25                  ;
CODE_03E744:        BCC CODE_03E725           ;
CODE_03E746:        CPY #$0E                  ;
CODE_03E748:        BNE CODE_03E74D           ;
CODE_03E74A:        JMP CODE_03E8E1           ;

CODE_03E74D:        CPY #$05                  ;
CODE_03E74F:        BNE CODE_03E754           ;
CODE_03E751:        JMP CODE_03E903           ;

CODE_03E754:        CPY #$12                  ;
CODE_03E756:        BEQ CODE_03E760           ;
CODE_03E758:        CPY #$2E                  ;
CODE_03E75A:        BEQ CODE_03E760           ;
CODE_03E75C:        CPY #$07                  ;
CODE_03E75E:        BCS CODE_03E7D5           ;
CODE_03E760:        JSR CODE_03E92C           ;
CODE_03E763:        BNE CODE_03E768           ;
CODE_03E765:        JMP CODE_03E851           ;

CODE_03E768:        JSR CODE_03E933           ;
CODE_03E76B:        BEQ CODE_03E765           ;
CODE_03E76D:        CMP #$27                  ;
CODE_03E76F:        BNE CODE_03E7D6           ;
CODE_03E771:        LDY $02                   ;
CODE_03E773:        LDA #$00                  ;
CODE_03E775:        STA ($06),y               ;
CODE_03E777:        LDA $1C,x                 ;
CODE_03E779:        CMP #$15                  ;
CODE_03E77B:        BCS CODE_03E789           ;
CODE_03E77D:        CMP #$06                  ;
CODE_03E77F:        BNE CODE_03E784           ;
CODE_03E781:        JSR CODE_03E90C           ;
CODE_03E784:        LDA #$01                  ;
CODE_03E786:        JSR CODE_03E07E           ;
CODE_03E789:        CMP #$09                  ;
CODE_03E78B:        BCC CODE_03E79D           ;
CODE_03E78D:        CMP #$11                  ;
CODE_03E78F:        BCS CODE_03E79D           ;
CODE_03E791:        CMP #$0A                  ;
CODE_03E793:        BCC CODE_03E799           ;
CODE_03E795:        CMP #$0D                  ;
CODE_03E797:        BCC CODE_03E79D           ;
CODE_03E799:        AND #$01                  ;
CODE_03E79B:        STA $1C,x                 ;
CODE_03E79D:        LDA $29,x                 ;
CODE_03E79F:        AND #$F0                  ;
CODE_03E7A1:        ORA #$02                  ;
CODE_03E7A3:        STA $29,x                 ;
CODE_03E7A5:        DEC $0238,x               ;
CODE_03E7A8:        DEC $0238,x               ;
CODE_03E7AB:        LDA $1C,x                 ;
CODE_03E7AD:        CMP #$07                  ;
CODE_03E7AF:        BEQ CODE_03E7B7           ;
CODE_03E7B1:        LDA #$FD                  ;
CODE_03E7B3:        LDY $5C                   ;
CODE_03E7B5:        BNE CODE_03E7B9           ;
CODE_03E7B7:        LDA #$FF                  ;
CODE_03E7B9:        STA $A1,x                 ;
CODE_03E7BB:        LDY #$01                  ;
CODE_03E7BD:        JSR CODE_03E8BC           ;
CODE_03E7C0:        BPL CODE_03E7C3           ;
CODE_03E7C2:        INY                       ;
CODE_03E7C3:        LDA $1C,x                 ;
CODE_03E7C5:        CMP #$33                  ;
CODE_03E7C7:        BEQ CODE_03E7CF           ;
CODE_03E7C9:        CMP #$08                  ;
CODE_03E7CB:        BEQ CODE_03E7CF           ;
CODE_03E7CD:        STY $47,x                 ;
CODE_03E7CF:        DEY                       ;
CODE_03E7D0:        LDA DATA_03E72C,y               ;
CODE_03E7D3:        STA $5E,x                 ;
CODE_03E7D5:        RTS                       ;

CODE_03E7D6:        LDA $04                   ;
CODE_03E7D8:        SEC                       ;
CODE_03E7D9:        SBC #$08                  ;
CODE_03E7DB:        CMP #$05                  ;
CODE_03E7DD:        BCS CODE_03E851           ;
CODE_03E7DF:        LDA $29,x                 ;
CODE_03E7E1:        AND #$40                  ;
CODE_03E7E3:        BNE CODE_03E83C           ;
CODE_03E7E5:        LDA $29,x                 ;
CODE_03E7E7:        ASL A                     ;
CODE_03E7E8:        BCC CODE_03E7ED           ;
CODE_03E7EA:        JMP CODE_03E86D           ;

CODE_03E7ED:        LDA $29,x                 ;
CODE_03E7EF:        BEQ CODE_03E7EA           ;
CODE_03E7F1:        CMP #$05                  ;
CODE_03E7F3:        BEQ CODE_03E814           ;
CODE_03E7F5:        CMP #$03                  ;
CODE_03E7F7:        BCS CODE_03E813           ;
CODE_03E7F9:        LDA $29,x                 ;
CODE_03E7FB:        CMP #$02                  ;
CODE_03E7FD:        BNE CODE_03E814           ;
CODE_03E7FF:        LDA #$10                  ;
CODE_03E801:        LDY $1C,x                 ;
CODE_03E803:        CPY #$12                  ;
CODE_03E805:        BNE CODE_03E809           ;
CODE_03E807:        LDA #$00                  ;
CODE_03E809:        STA $07A2,x               ;
CODE_03E80C:        LDA #$03                  ;
CODE_03E80E:        STA $29,x                 ;
CODE_03E810:        JSR CODE_03E8CA           ;
CODE_03E813:        RTS                       ;

CODE_03E814:        LDA $1C,x                 ;
CODE_03E816:        CMP #$06                  ;
CODE_03E818:        BEQ CODE_03E83C           ;
CODE_03E81A:        CMP #$12                  ;
CODE_03E81C:        BNE CODE_03E82C           ;
CODE_03E81E:        LDA #$01                  ;
CODE_03E820:        STA $47,x                 ;
CODE_03E822:        LDA #$08                  ;
CODE_03E824:        STA $5E,x                 ;
CODE_03E826:        LDA $09                   ;
CODE_03E828:        AND #$07                  ;
CODE_03E82A:        BEQ CODE_03E83C           ;
CODE_03E82C:        LDY #$01                  ;
CODE_03E82E:        JSR CODE_03E8BC           ;
CODE_03E831:        BPL CODE_03E834           ;
CODE_03E833:        INY                       ;
CODE_03E834:        TYA                       ;
CODE_03E835:        CMP $47,x                 ;
CODE_03E837:        BNE CODE_03E83C           ;
CODE_03E839:        JSR CODE_03E894           ;
CODE_03E83C:        JSR CODE_03E8CA           ;
CODE_03E83F:        LDA $29,x                 ;
CODE_03E841:        AND #$80                  ;
CODE_03E843:        BNE CODE_03E84A           ;
CODE_03E845:        LDA #$00                  ;
CODE_03E847:        STA $29,x                 ;
CODE_03E849:        RTS                       ;

CODE_03E84A:        LDA $29,x                 ;
CODE_03E84C:        AND #$BF                  ;
CODE_03E84E:        STA $29,x                 ;
CODE_03E850:        RTS                       ;

CODE_03E851:        LDA $1C,x                 ;
CODE_03E853:        CMP #$03                  ;
CODE_03E855:        BNE CODE_03E85B           ;
CODE_03E857:        LDA $29,x                 ;
CODE_03E859:        BEQ CODE_03E894           ;
CODE_03E85B:        LDA $29,x                 ;
CODE_03E85D:        TAY                       ;
CODE_03E85E:        ASL A                     ;
CODE_03E85F:        BCC CODE_03E868           ;
CODE_03E861:        LDA $29,x                 ;
CODE_03E863:        ORA #$40                  ;
CODE_03E865:        JMP CODE_03E86B           ;

CODE_03E868:        LDA DATA_03E726,y               ;
CODE_03E86B:        STA $29,x                 ;
CODE_03E86D:        LDA $0238,x               ;
CODE_03E870:        CMP #$20                  ;
CODE_03E872:        BCC CODE_03E893           ;
CODE_03E874:        LDY #$16                  ;
CODE_03E876:        LDA #$02                  ;
CODE_03E878:        STA $EB                   ;
CODE_03E87A:        LDA $EB                   ;
CODE_03E87C:        CMP $47,x                 ;
CODE_03E87E:        BNE CODE_03E88C           ;
CODE_03E880:        LDA #$01                  ;
CODE_03E882:        JSR CODE_03EB1A           ;
CODE_03E885:        BEQ CODE_03E88C           ;
CODE_03E887:        JSR CODE_03E933           ;
CODE_03E88A:        BNE CODE_03E894           ;
CODE_03E88C:        DEC $EB                   ;
CODE_03E88E:        INY                       ;
CODE_03E88F:        CPY #$18                  ;
CODE_03E891:        BCC CODE_03E87A           ;
CODE_03E893:        RTS                       ;

CODE_03E894:        CPX #$09                  ;
CODE_03E896:        BEQ CODE_03E8AA           ;
CODE_03E898:        LDA $29,x                 ;
CODE_03E89A:        ASL A                     ;
CODE_03E89B:        BCC CODE_03E8AA           ;
CODE_03E89D:        CPX #$09                  ;
CODE_03E89F:        BEQ CODE_03E8AA           ;
CODE_03E8A1:        LDA #$01                  ;\Hit hard block sound
CODE_03E8A3:        STA $1600                 ;/
CODE_03E8A6:        JSL CODE_05D2B1           ;
CODE_03E8AA:        LDA $1C,x                 ;
CODE_03E8AC:        CMP #$05                  ;
CODE_03E8AE:        BNE CODE_03E8B9           ;
CODE_03E8B0:        LDA #$00                  ;
CODE_03E8B2:        STA $00                   ;
CODE_03E8B4:        LDY #$FA                  ;
CODE_03E8B6:        JMP CODE_03CEC7           ;

CODE_03E8B9:        JMP CODE_03E1D8           ;

CODE_03E8BC:        LDA $021A,x               ;SUB_HORZ_POS. Distance between Player and the sprite gets stored in $00
CODE_03E8BF:        SEC                       ;
CODE_03E8C0:        SBC $0219                 ;
CODE_03E8C3:        STA $00                   ;
CODE_03E8C5:        LDA $79,x                 ;
CODE_03E8C7:        SBC $78                   ;
CODE_03E8C9:        RTS                       ;

CODE_03E8CA:        JSR CODE_03C726           ;
CODE_03E8CD:        LDA $0238,x               ;
CODE_03E8D0:        AND #$F0                  ;
CODE_03E8D2:        ORA #$08                  ;
CODE_03E8D4:        STA $0238,x               ;
CODE_03E8D7:        RTS                       ;

CODE_03E8D8:        LDA $0238,x               ;
CODE_03E8DB:        CLC                       ;
CODE_03E8DC:        ADC #$3E                  ;
CODE_03E8DE:        CMP #$44                  ;
CODE_03E8E0:        RTS                       ;

CODE_03E8E1:        JSR CODE_03E8D8           ;
CODE_03E8E4:        BCC CODE_03E900           ;
CODE_03E8E6:        LDA $A1,x                 ;
CODE_03E8E8:        CLC                       ;
CODE_03E8E9:        ADC #$02                  ;
CODE_03E8EB:        CMP #$03                  ;
CODE_03E8ED:        BCC CODE_03E900           ;
CODE_03E8EF:        JSR CODE_03E92C           ;
CODE_03E8F2:        BEQ CODE_03E900           ;
CODE_03E8F4:        JSR CODE_03E933           ;
CODE_03E8F7:        BEQ CODE_03E900           ;
CODE_03E8F9:        JSR CODE_03E8CA           ;
CODE_03E8FC:        LDA #$FD                  ;
CODE_03E8FE:        STA $A1,x                 ;
CODE_03E900:        JMP CODE_03E86D           ;

CODE_03E903:        JSR CODE_03E92C           ;
CODE_03E906:        BEQ CODE_03E925           ;
CODE_03E908:        CMP #$27                  ;
CODE_03E90A:        BNE CODE_03E914           ;
CODE_03E90C:        JSR CODE_03DD81           ;
CODE_03E90F:        LDA #$FC                  ;
CODE_03E911:        STA $A1,x                 ;
CODE_03E913:        RTS                       ;

CODE_03E914:        LDA $0792,x               ;
CODE_03E917:        BNE CODE_03E925           ;
CODE_03E919:        LDA $29,x                 ;
CODE_03E91B:        AND #$88                  ;
CODE_03E91D:        STA $29,x                 ;
CODE_03E91F:        JSR CODE_03E8CA           ;
CODE_03E922:        JMP CODE_03E86D           ;

CODE_03E925:        LDA $29,x                 ;
CODE_03E927:        ORA #$01                  ;
CODE_03E929:        STA $29,x                 ;
CODE_03E92B:        RTS                       ;

CODE_03E92C:        LDA #$00                  ;
CODE_03E92E:        LDY #$15                  ;
CODE_03E930:        JMP CODE_03EB1A           ;

CODE_03E933:        CMP #$2A                  ;
CODE_03E935:        BEQ CODE_03E945           ;
CODE_03E937:        CMP #$E9                  ;
CODE_03E939:        BEQ CODE_03E945           ;
CODE_03E93B:        CMP #$EA                  ;
CODE_03E93D:        BEQ CODE_03E945           ;
CODE_03E93F:        CMP #$62                  ;
CODE_03E941:        BEQ CODE_03E945           ;
CODE_03E943:        CMP #$63                  ;
CODE_03E945:        RTS                       ;

CODE_03E946:        LDA $0242,x               ;
CODE_03E949:        CMP #$18                  ;
CODE_03E94B:        BCC CODE_03E972           ;
CODE_03E94D:        JSR CODE_03EB2E           ;
CODE_03E950:        BEQ CODE_03E972           ;
CODE_03E952:        JSR CODE_03E933           ;
CODE_03E955:        BEQ CODE_03E972           ;
CODE_03E957:        LDA $AB,x                 ;
CODE_03E959:        BMI CODE_03E978           ;
CODE_03E95B:        LDA $020D,x               ;
CODE_03E95E:        BNE CODE_03E978           ;
CODE_03E960:        LDA #$FD                  ;
CODE_03E962:        STA $AB,x                 ;
CODE_03E964:        LDA #$01                  ;
CODE_03E966:        STA $020D,x               ;
CODE_03E969:        LDA $0242,x               ;
CODE_03E96C:        AND #$F8                  ;
CODE_03E96E:        STA $0242,x               ;
CODE_03E971:        RTS                       ;

CODE_03E972:        LDA #$00                  ;
CODE_03E974:        STA $020D,x               ;
CODE_03E977:        RTS                       ;

CODE_03E978:        LDA #$80                  ;
CODE_03E97A:        STA $33,x                 ;
CODE_03E97C:        LDA #$01                  ;\
CODE_03E97E:        STA $1600                 ;/Hit hard block sound
CODE_03E981:        RTS                       ;

DATA_03E982:        db $02,$08

DATA_03E984:        db $0E,$20,$03,$14,$0D,$20,$02,$14
                    db $0E,$20,$02,$09,$0E,$15,$00,$00
                    db $18,$06,$00,$00,$20,$0D,$00,$00
                    db $30,$0D,$00,$00,$08,$08,$06,$04
                    db $0A,$0C,$03,$0E,$0D,$14,$04,$04
                    db $1C,$1C,$04,$04,$0C,$1C,$03,$07
                    db $0D,$16

CODE_03E9B6:        TXA
CODE_03E9B7:        CLC                       ;
CODE_03E9B8:        ADC #$0B                  ;
CODE_03E9BA:        TAX                       ;
CODE_03E9BB:        LDY #$02                  ;
CODE_03E9BD:        BNE CODE_03E9C6           ;
CODE_03E9BF:        TXA                       ;
CODE_03E9C0:        CLC                       ;
CODE_03E9C1:        ADC #$0D                  ;
CODE_03E9C3:        TAX                       ;
CODE_03E9C4:        LDY #$06                  ;
CODE_03E9C6:        JSR CODE_03EA2D           ;
CODE_03E9C9:        JMP CODE_03EA6F           ;

CODE_03E9CC:        LDY #$48                  ;
CODE_03E9CE:        STY $00                   ;
CODE_03E9D0:        LDY #$44                  ;
CODE_03E9D2:        JMP CODE_03E9DB           ;

CODE_03E9D5:        LDY #$08                  ;
CODE_03E9D7:        STY $00                   ;
CODE_03E9D9:        LDY #$04                  ;
CODE_03E9DB:        LDA $021A,x               ;
CODE_03E9DE:        SEC                       ;
CODE_03E9DF:        SBC $071C                 ;
CODE_03E9E2:        STA $01                   ;
CODE_03E9E4:        LDA $79,x                 ;
CODE_03E9E6:        SBC $071A                 ;
CODE_03E9E9:        BMI CODE_03E9F1           ;
CODE_03E9EB:        ORA $01                   ;
CODE_03E9ED:        BEQ CODE_03E9F1           ;
CODE_03E9EF:        LDY $00                   ;
CODE_03E9F1:        TYA                       ;
CODE_03E9F2:        AND $03D1                 ;
CODE_03E9F5:        STA $03D9,x               ;
CODE_03E9F8:        CPX #$09                  ;
CODE_03E9FA:        BEQ CODE_03EA0D           ;
CODE_03E9FC:        LDA $03D9,x               ;
CODE_03E9FF:        BNE CODE_03EA1A           ;
CODE_03EA01:        JMP CODE_03EA0D           ;

CODE_03EA04:        INX                       ;
CODE_03EA05:        JSR CODE_03FE1E           ;
CODE_03EA08:        DEX                       ;
CODE_03EA09:        CMP #$FE                  ;
CODE_03EA0B:        BCS CODE_03EA1A           ;
CODE_03EA0D:        TXA                       ;
CODE_03EA0E:        CLC                       ;
CODE_03EA0F:        ADC #$01                  ;
CODE_03EA11:        TAX                       ;
CODE_03EA12:        LDY #$01                  ;
CODE_03EA14:        JSR CODE_03EA2D           ;
CODE_03EA17:        JMP CODE_03EA6F           ;

CODE_03EA1A:        TXA                       ;
CODE_03EA1B:        ASL A                     ;
CODE_03EA1C:        ASL A                     ;
CODE_03EA1D:        TAY                       ;
CODE_03EA1E:        LDA #$FF                  ;
CODE_03EA20:        STA $0FA0,y               ;
CODE_03EA23:        STA $0FA1,y               ;
CODE_03EA26:        STA $0FA2,y               ;
CODE_03EA29:        STA $0FA3,y               ;
CODE_03EA2C:        RTS                       ;

CODE_03EA2D:        STX $00                   ;
CODE_03EA2F:        LDA $03B8,y               ;
CODE_03EA32:        STA $02                   ;
CODE_03EA34:        LDA $03AD,y               ;
CODE_03EA37:        STA $01                   ;
CODE_03EA39:        TXA                       ;
CODE_03EA3A:        ASL A                     ;
CODE_03EA3B:        ASL A                     ;
CODE_03EA3C:        PHA                       ;
CODE_03EA3D:        TAY                       ;
CODE_03EA3E:        LDA $048F,x               ;
CODE_03EA41:        ASL A                     ;
CODE_03EA42:        ASL A                     ;
CODE_03EA43:        TAX                       ;
CODE_03EA44:        LDA $01                   ;
CODE_03EA46:        CLC                       ;
CODE_03EA47:        ADC DATA_03E982,x               ;
CODE_03EA4A:        STA $0F9C,y               ;
CODE_03EA4D:        LDA $01                   ;
CODE_03EA4F:        CLC                       ;
CODE_03EA50:        ADC DATA_03E984,x               ;
CODE_03EA53:        STA $0F9E,y               ;
CODE_03EA56:        INX                       ;
CODE_03EA57:        INY                       ;
CODE_03EA58:        LDA $02                   ;
CODE_03EA5A:        CLC                       ;
CODE_03EA5B:        ADC DATA_03E982,x               ;
CODE_03EA5E:        STA $0F9C,y               ;
CODE_03EA61:        LDA $02                   ;
CODE_03EA63:        CLC                       ;
CODE_03EA64:        ADC DATA_03E984,x               ;
CODE_03EA67:        STA $0F9E,y               ;
CODE_03EA6A:        PLA                       ;
CODE_03EA6B:        TAY                       ;
CODE_03EA6C:        LDX $00                   ;
CODE_03EA6E:        RTS                       ;

CODE_03EA6F:        LDA $071C                 ;
CODE_03EA72:        CLC                       ;
CODE_03EA73:        ADC #$80                  ;
CODE_03EA75:        STA $02                   ;
CODE_03EA77:        LDA $071A                 ;
CODE_03EA7A:        ADC #$00                  ;
CODE_03EA7C:        STA $01                   ;
CODE_03EA7E:        LDA $0219,x               ;
CODE_03EA81:        CMP $02                   ;
CODE_03EA83:        LDA $78,x                 ;
CODE_03EA85:        SBC $01                   ;
CODE_03EA87:        BCC CODE_03EA9E           ;
CODE_03EA89:        LDA $0F9E,y               ;
CODE_03EA8C:        BMI CODE_03EA9B           ;
CODE_03EA8E:        LDA #$FF                  ;
CODE_03EA90:        LDX $0F9C,y               ;
CODE_03EA93:        BMI CODE_03EA98           ;
CODE_03EA95:        STA $0F9C,y               ;
CODE_03EA98:        STA $0F9E,y               ;
CODE_03EA9B:        LDX $9E                   ;
CODE_03EA9D:        RTS                       ;

CODE_03EA9E:        LDA $0F9C,y               ;
CODE_03EAA1:        BPL CODE_03EAB4           ;
CODE_03EAA3:        CMP #$A0                  ;
CODE_03EAA5:        BCC CODE_03EAB4           ;
CODE_03EAA7:        LDA #$00                  ;
CODE_03EAA9:        LDX $0F9E,y               ;
CODE_03EAAC:        BPL CODE_03EAB1           ;
CODE_03EAAE:        STA $0F9E,y               ;
CODE_03EAB1:        STA $0F9C,y               ;
CODE_03EAB4:        LDX $9E                   ;
CODE_03EAB6:        RTS                       ;

CODE_03EAB7:        LDX #$00                  ;
CODE_03EAB9:        STY $06                   ;
CODE_03EABB:        LDA #$01                  ;
CODE_03EABD:        STA $07                   ;
CODE_03EABF:        LDA $0F9C,y               ;
CODE_03EAC2:        CMP $0F9C,x               ;
CODE_03EAC5:        BCS CODE_03EAF1           ;
CODE_03EAC7:        CMP $0F9E,x               ;
CODE_03EACA:        BCC CODE_03EADE           ;
CODE_03EACC:        BEQ CODE_03EB10           ;
CODE_03EACE:        LDA $0F9E,y               ;
CODE_03EAD1:        CMP $0F9C,y               ;
CODE_03EAD4:        BCC CODE_03EB10           ;
CODE_03EAD6:        CMP $0F9C,x               ;
CODE_03EAD9:        BCS CODE_03EB10           ;
CODE_03EADB:        LDY $06                   ;
CODE_03EADD:        RTS                       ;

CODE_03EADE:        LDA $0F9E,x               ;
CODE_03EAE1:        CMP $0F9C,x               ;
CODE_03EAE4:        BCC CODE_03EB10           ;
CODE_03EAE6:        LDA $0F9E,y               ;
CODE_03EAE9:        CMP $0F9C,x               ;
CODE_03EAEC:        BCS CODE_03EB10           ;
CODE_03EAEE:        LDY $06                   ;
CODE_03EAF0:        RTS                       ;

CODE_03EAF1:        CMP $0F9C,x               ;
CODE_03EAF4:        BEQ CODE_03EB10           ;
CODE_03EAF6:        CMP $0F9E,x               ;
CODE_03EAF9:        BCC CODE_03EB10           ;
CODE_03EAFB:        BEQ CODE_03EB10           ;
CODE_03EAFD:        CMP $0F9E,y               ;
CODE_03EB00:        BCC CODE_03EB0C           ;
CODE_03EB02:        BEQ CODE_03EB0C           ;
CODE_03EB04:        LDA $0F9E,y               ;
CODE_03EB07:        CMP $0F9C,x               ;
CODE_03EB0A:        BCS CODE_03EB10           ;
CODE_03EB0C:        CLC                       ;
CODE_03EB0D:        LDY $06                   ;
CODE_03EB0F:        RTS                       ;

CODE_03EB10:        INX                       ;
CODE_03EB11:        INY                       ;
CODE_03EB12:        DEC $07                   ;
CODE_03EB14:        BPL CODE_03EABF           ;
CODE_03EB16:        SEC                       ;
CODE_03EB17:        LDY $06                   ;
CODE_03EB19:        RTS                       ;

CODE_03EB1A:        PHA                       ;
CODE_03EB1B:        TXA                       ;
CODE_03EB1C:        CLC                       ;
CODE_03EB1D:        ADC #$01                  ;
CODE_03EB1F:        TAX                       ;
CODE_03EB20:        PLA                       ;
CODE_03EB21:        JMP CODE_03EB37           ;

CODE_03EB24:        TXA                       ;
CODE_03EB25:        CLC                       ;
CODE_03EB26:        ADC #$11                  ;
CODE_03EB28:        TAX                       ;
CODE_03EB29:        LDY #$1B                  ;
CODE_03EB2B:        JMP CODE_03EB35           ;

CODE_03EB2E:        LDY #$1A                  ;
CODE_03EB30:        TXA                       ;
CODE_03EB31:        CLC                       ;
CODE_03EB32:        ADC #$0B                  ;
CODE_03EB34:        TAX                       ;
CODE_03EB35:        LDA #$00                  ;
CODE_03EB37:        JSR CODE_03EB83           ;
CODE_03EB3A:        LDX $9E                   ;
CODE_03EB3C:        CMP #$00                  ;
CODE_03EB3E:        RTS                       ;

DATA_03EB3F:        db $00,$07,$0E            ; Mario<->block interaction "offset". Big Mario, Big swimming mario, Small mario

DATA_03EB42:        db $08,$03,$0C,$02,$02,$0D,$0D,$08
                    db $03,$0C,$02,$02,$0D,$0D,$08,$03
                    db $0C,$02,$02,$0D,$0D,$08,$00,$10
                    db $04,$14,$04,$04

DATA_03EB5E:        db $04,$20,$20,$08,$18,$08,$18,$02
                    db $20,$20,$08,$18,$08,$18,$12,$20
                    db $20,$18,$18,$18,$18,$18,$14,$14
                    db $06,$06,$08,$10

CODE_03EB7A:        INY                       ;
CODE_03EB7B:        LDA #$00                  ;
CODE_03EB7D:        BRA CODE_03EB81           ;

CODE_03EB7F:        LDA #$01                  ;
CODE_03EB81:        LDX #$00                  ;
CODE_03EB83:        PHA                       ;
CODE_03EB84:        STY $04                   ;
CODE_03EB86:        LDA DATA_03EB42,y               ;\
CODE_03EB89:        CLC                       ; |
CODE_03EB8A:        ADC $0219,x               ; |X-position of Mario sprite
CODE_03EB8D:        STA $05                   ; |
CODE_03EB8F:        LDA $78,x                 ; |Screen of player
CODE_03EB91:        ADC #$00                  ; | 
CODE_03EB93:        AND #$01                  ; |
CODE_03EB95:        LSR A                     ; |
CODE_03EB96:        ORA $05                   ; |
CODE_03EB98:        ROR A                     ; |
CODE_03EB99:        LSR A                     ; |
CODE_03EB9A:        LSR A                     ; |
CODE_03EB9B:        LSR A                     ;/
CODE_03EB9C:        JSR CODE_03ACF6           ;put values in $06 for indirect pointer?
CODE_03EB9F:        LDY $04                   ;
CODE_03EBA1:        LDA $0237,x               ;\Y-position of Mario sprite
CODE_03EBA4:        CLC                       ; |
CODE_03EBA5:        ADC DATA_03EB5E,y               ; |$7E0002 = (((MarioYpos+TableEB5E)&0xF0)-0x20)
CODE_03EBA8:        AND #$F0                  ; |Is that 0x20 here to compensate for that statusbar area?
CODE_03EBAA:        SEC                       ; |
CODE_03EBAB:        SBC #$20                  ; |
CODE_03EBAD:        STA $02                   ;/
CODE_03EBAF:        TAY                       ;
CODE_03EBB0:        LDA ($06),y               ;\Store block Mario is interacting with in $03
CODE_03EBB2:        STA $03                   ;/This indirect pointer points to the $0500 area. It contains
CODE_03EBB4:        LDY $04                   ;the object layout of the current screen.
CODE_03EBB6:        PLA                       ;
CODE_03EBB7:        BNE CODE_03EBBF           ;
CODE_03EBB9:        LDA $0237,x               ;
CODE_03EBBC:        JMP CODE_03EBC2           ;

CODE_03EBBF:        LDA $0219,x               ;
CODE_03EBC2:        AND #$0F                  ;
CODE_03EBC4:        STA $04                   ;
CODE_03EBC6:        LDA $E4                   ;
CODE_03EBC8:        BNE CODE_03EBD6           ;
CODE_03EBCA:        LDA $03                   ;
CODE_03EBCC:        CMP #$62                  ;
CODE_03EBCE:        BEQ CODE_03EBD4           ;
CODE_03EBD0:        CMP #$63                  ;
CODE_03EBD2:        BNE CODE_03EBD6           ;
CODE_03EBD4:        STZ $03                   ;
CODE_03EBD6:        LDA $03                   ;
CODE_03EBD8:        RTS                       ;

DATA_03EBD9:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;empty
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_03EC10:        LDX #$06                  ;
CODE_03EC12:        STA $0800,y               ;
CODE_03EC15:        CLC                       ;
CODE_03EC16:        ADC #$08                  ;
CODE_03EC18:        INY                       ;
CODE_03EC19:        INY                       ;
CODE_03EC1A:        INY                       ;
CODE_03EC1B:        INY                       ;
CODE_03EC1C:        DEX                       ;
CODE_03EC1D:        BNE CODE_03EC12           ;
CODE_03EC1F:        LDY $02                   ;
CODE_03EC21:        RTS                       ;

CODE_03EC22:        LDX #$06                  ;
CODE_03EC24:        STA $0900,y               ;
CODE_03EC27:        CLC                       ;
CODE_03EC28:        ADC #$08                  ;
CODE_03EC2A:        INY                       ;
CODE_03EC2B:        INY                       ;
CODE_03EC2C:        INY                       ;
CODE_03EC2D:        INY                       ;
CODE_03EC2E:        DEX                       ;
CODE_03EC2F:        BNE CODE_03EC24           ;
CODE_03EC31:        LDY $02                   ;
CODE_03EC33:        RTS                       ;

CODE_03EC34:        LDA #$F0                  ;
CODE_03EC36:        STA $0815,y               ;
CODE_03EC39:        STA $0811,y               ;
CODE_03EC3C:        STA $080D,y               ;
CODE_03EC3F:        STA $0809,y               ;
CODE_03EC42:        STA $0805,y               ;
CODE_03EC45:        STA $0801,y               ;
CODE_03EC48:        RTS                       ;

CODE_03EC49:        LDA #$F0                  ;
CODE_03EC4B:        STA $0915,y               ;
CODE_03EC4E:        STA $0911,y               ;
CODE_03EC51:        STA $090D,y               ;
CODE_03EC54:        STA $0909,y               ;
CODE_03EC57:        STA $0905,y               ;
CODE_03EC5A:        STA $0901,y               ;
CODE_03EC5D:        RTS                       ;

CODE_03EC5E:        LDA $0743                 ;
CODE_03EC61:        BEQ CODE_03EC66           ;
CODE_03EC63:        JMP CODE_03ECEA           ;

CODE_03EC66:        LDY $0B46,x               ;
CODE_03EC69:        STY $02                   ;
CODE_03EC6B:        LDA $03AE                 ;
CODE_03EC6E:        JSR CODE_03EC22           ;
CODE_03EC71:        LDX $9E                   ;
CODE_03EC73:        LDA $0238,x               ;
CODE_03EC76:        JSR CODE_03EC51           ;
CODE_03EC79:        LDY $5C                   ;
CODE_03EC7B:        CPY #$03                  ;
CODE_03EC7D:        BEQ CODE_03EC84           ;
CODE_03EC7F:        LDY $06CC                 ;
CODE_03EC82:        BEQ CODE_03EC86           ;
CODE_03EC84:        LDA #$F0                  ;
CODE_03EC86:        LDY $0B46,x               ;
CODE_03EC89:        STA $0911,y               ;
CODE_03EC8C:        STA $0915,y               ;
CODE_03EC8F:        LDA #$87                  ;
CODE_03EC91:        LDX $9E                   ;
CODE_03EC93:        INY                       ;
CODE_03EC94:        JSR CODE_03EC4B           ;
CODE_03EC97:        LDA #$2C                  ;
CODE_03EC99:        INY                       ;
CODE_03EC9A:        JSR CODE_03EC4B           ;
CODE_03EC9D:        JSR CODE_03FE1E           ;
CODE_03ECA0:        LDY $0B46,x               ;
CODE_03ECA3:        JSR CODE_03FEAC           ;
CODE_03ECA6:        JSR CODE_03FEC5           ;
CODE_03ECA9:        PHY                       ;
CODE_03ECAA:        JSR CODE_03FF3B           ;
CODE_03ECAD:        JSR CODE_03FEC5           ;
CODE_03ECB0:        JSR CODE_03FF3B           ;
CODE_03ECB3:        JSR CODE_03FEC5           ;
CODE_03ECB6:        JSR CODE_03FF3B           ;
CODE_03ECB9:        JSR CODE_03FEC5           ;
CODE_03ECBC:        JSR CODE_03FF3B           ;
CODE_03ECBF:        JSR CODE_03FEC5           ;
CODE_03ECC2:        JSR CODE_03FF3B           ;
CODE_03ECC5:        JSR CODE_03FEC5           ;
CODE_03ECC8:        PLY                       ;
CODE_03ECC9:        LDA $03D1                 ;
CODE_03ECCC:        ASL A                     ;
CODE_03ECCD:        BCC CODE_03ECE9           ;
CODE_03ECCF:        LDA $1C,x                 ;
CODE_03ECD1:        CMP #$27                  ;
CODE_03ECD3:        BEQ CODE_03ECE9           ;
CODE_03ECD5:        CMP #$26                  ;
CODE_03ECD7:        BEQ CODE_03ECE9           ;
CODE_03ECD9:        LDA $BC,x                 ;
CODE_03ECDB:        CMP #$01                  ;
CODE_03ECDD:        BNE CODE_03ECE6           ;
CODE_03ECDF:        LDA $03B9                 ;
CODE_03ECE2:        CMP #$F0                  ;
CODE_03ECE4:        BCC CODE_03ECE9           ;
CODE_03ECE6:        JSR CODE_03EC49           ;
CODE_03ECE9:        RTS                       ;

CODE_03ECEA:        JSL CODE_05CDEB           ;
CODE_03ECEE:        RTS                       ;

DATA_03ECEF:        db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9
                    db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79
					
DATA_03ECFF:        db $2C,$28,$28,$2A

CODE_03ED03:        LDA $0B4F                 ;
CODE_03ED06:        CLC                       ;
CODE_03ED07:        ADC #$08                  ;
CODE_03ED09:        TAY                       ;
CODE_03ED0A:        LDA $03B9                 ;
CODE_03ED0D:        CLC                       ;
CODE_03ED0E:        ADC #$08                  ;
CODE_03ED10:        STA $02                   ;
CODE_03ED12:        LDA $03AE                 ;
CODE_03ED15:        STA $05                   ;
CODE_03ED17:        LDX $020C                 ;
CODE_03ED1A:        LDA DATA_03ECFF,x               ;
CODE_03ED1D:        EOR $0260                 ;
CODE_03ED20:        STA $04                   ;
CODE_03ED22:        TXA                       ;
CODE_03ED23:        PHA                       ;
CODE_03ED24:        ASL A                     ;
CODE_03ED25:        ASL A                     ;
CODE_03ED26:        TAX                       ;
CODE_03ED27:        LDA #$01                  ;
CODE_03ED29:        STA $07                   ;
CODE_03ED2B:        STA $03                   ;
CODE_03ED2D:        LDA DATA_03ECEF,x               ;
CODE_03ED30:        STA $00                   ;
CODE_03ED32:        LDA DATA_03ECEF+1,x               ;
CODE_03ED35:        JSR CODE_03F2FF           ;
CODE_03ED38:        DEC $07                   ;
CODE_03ED3A:        BPL CODE_03ED2D           ;
CODE_03ED3C:        LDA $0B4F                 ;
CODE_03ED3F:        CLC                       ;
CODE_03ED40:        ADC #$08                  ;
CODE_03ED42:        TAY                       ;
CODE_03ED43:        PLA                       ;
CODE_03ED44:        BEQ CODE_03ED82           ;
CODE_03ED46:        CMP #$03                  ;
CODE_03ED48:        BEQ CODE_03ED82           ;
CODE_03ED4A:        STA $00                   ;
CODE_03ED4C:        LDA $09                   ;
CODE_03ED4E:        AND #$06                  ;
CODE_03ED50:        CMP #$06                  ;
CODE_03ED52:        BNE CODE_03ED56           ;
CODE_03ED54:        LDA #$0E                  ;
CODE_03ED56:        ORA $0260                 ;
CODE_03ED59:        EOR #$28                  ;
CODE_03ED5B:        STA $0903,y               ;
CODE_03ED5E:        STA $0907,y               ;
CODE_03ED61:        STA $090B,y               ;
CODE_03ED64:        STA $090F,y               ;
CODE_03ED67:        LDX $00                   ;
CODE_03ED69:        DEX                       ;
CODE_03ED6A:        BEQ CODE_03ED72           ;
CODE_03ED6C:        STA $090B,y               ;
CODE_03ED6F:        STA $090F,y               ;
CODE_03ED72:        LDA $0907,y               ;
CODE_03ED75:        ORA #$40                  ;
CODE_03ED77:        STA $0907,y               ;
CODE_03ED7A:        LDA $090F,y               ;
CODE_03ED7D:        ORA #$40                  ;
CODE_03ED7F:        STA $090F,y               ;
CODE_03ED82:        LDA $0B4F                 ;
CODE_03ED85:        CLC                       ;
CODE_03ED86:        ADC #$08                  ;
CODE_03ED88:        TAY                       ;
CODE_03ED89:        JMP CODE_03F2AF           ;

DATA_03ED8C:        db $FC,$FC,$AA,$AB,$AC,$AD,$FC,$FC ;
                    db $AE,$AF,$B0,$B1,$FC,$A5,$A6,$A7 ;
                    db $A8,$A9,$FC,$A0,$A1,$A2,$A3,$A4 ;
                    db $69,$A5,$6A,$A7,$A8,$A9,$6B,$A0 ;
                    db $6C,$A2,$A3,$A4,$FC,$FC,$96,$97 ;
                    db $98,$99,$FC,$FC,$9A,$9B,$9C,$9D ;
                    db $FC,$FC,$8F,$8E,$8E,$8F,$FC,$FC ;
                    db $95,$94,$94,$95,$FC,$FC,$DC,$DC ;
                    db $DF,$DF,$DC,$DC,$DD,$DD,$DE,$DE ;
                    db $FC,$FC,$B2,$B3,$B4,$B5,$FC,$FC ;
                    db $B6,$B3,$B7,$B5,$FC,$FC,$C6,$C7 ;
                    db $C8,$C9,$FC,$FC,$6E,$6E,$6F,$6F ;
                    db $FC,$FC,$6D,$6D,$6F,$6F,$FC,$FC ;
                    db $6F,$6F,$6E,$6E,$FC,$FC,$6F,$6F ;
                    db $6D,$6D,$FC,$FC,$F4,$F4,$F5,$F5 ;
                    db $FC,$FC,$F4,$F4,$F5,$F5,$FC,$FC ;
                    db $F5,$F5,$F4,$F4,$FC,$FC,$F5,$F5 ;
                    db $F4,$F4,$FC,$FC,$FC,$FC,$EF,$EF ;
                    db $B9,$B8,$BB,$BA,$BC,$BC,$FC,$FC ;
                    db $BD,$BD,$BC,$BC,$7A,$7B,$DA,$DB ;
                    db $D8,$9E,$CD,$CD,$CE,$CE,$CF,$CF ;
                    db $7D,$7C,$D1,$8C,$D3,$D2,$7D,$7C ;
                    db $89,$88,$8B,$8A,$D5,$D4,$E3,$E2 ;
                    db $D3,$D2,$D5,$D4,$E3,$E2,$8B,$8A ;
                    db $E5,$E5,$E6,$E6,$EB,$EB,$EC,$EC ;
                    db $ED,$ED,$EB,$EB,$FC,$FC,$D0,$D0 ;
                    db $D7,$D7,$BF,$BE,$C1,$C0,$C2,$FC ;
                    db $C4,$C3,$C6,$C5,$C8,$C7,$BF,$BE ;
                    db $CA,$C9,$C2,$FC,$C4,$C3,$C6,$C5 ;
                    db $CC,$CB,$FC,$FC,$64,$65,$74,$75 ;
                    db $F2,$F2,$F3,$F3,$F2,$F2,$F1,$F1 ;
                    db $F1,$F1,$FC,$FC,$F0,$F0,$FC,$FC ;
                    db $FC,$FC ;

DATA_03EE8E:        db $0C,$0C,$00,$0C,$0C,$A8,$54,$3C ;
                    db $EA,$18,$48,$48,$CC,$C0,$18,$18 ;
                    db $18,$90,$24,$FF,$48,$9C,$D2,$D8 ;
                    db $F0,$F6,$FC ;

DATA_03EEA9:        db $0A,$0C,$0A,$0C,$0A,$0A,$02,$08 ;
                    db $0A,$08,$0A,$0C,$08,$2A,$0A,$0C ;
                    db $0A,$0A,$0C,$FF,$0C,$0C,$00,$00 ;
                    db $2C,$2C,$2C ;

DATA_03EEC4:        db $08,$18 ;

DATA_03EEC6:        db $18,$19,$1A,$19,$18 ;

DATA_03EECB:        db $00,$00,$00,$00,$00,$00,$06,$06 ;
                    db $06,$06,$06,$06,$0C,$0C,$0C,$0C ;
                    db $0C,$0C ;

DATA_03EEDD:        db $FC,$FC,$D0,$D0,$D7,$D7,$FC,$FC ;
                    db $7E,$7E,$7F,$7F,$FC,$FC,$E0,$E0 ;
                    db $E1,$E1 ;

CODE_03EEEF:        LDA $1C,x                 ;
CODE_03EEF1:        CMP #$0C                  ;
CODE_03EEF3:        BNE CODE_03EEFA           ;
CODE_03EEF5:        JSL CODE_05EA38           ;
CODE_03EEF9:        RTS                       ;

CODE_03EEFA:        CMP #$08                  ;
CODE_03EEFC:        BNE CODE_03EF0C           ;
CODE_03EEFE:        LDA $BC,x                 ;
CODE_03EF00:        CMP #$02                  ;
CODE_03EF02:        BNE CODE_03EF07           ;
CODE_03EF04:        JSR CODE_03CDE2           ; Erase sprite
CODE_03EF07:        JSL CODE_05CB42           ;
CODE_03EF0B:        RTS                       ;

CODE_03EF0C:        CMP #$33                  ;
CODE_03EF0E:        BNE CODE_03EF1E           ;
CODE_03EF10:        LDA $BC,x                 ;
CODE_03EF12:        CMP #$02                  ;
CODE_03EF14:        BNE CODE_03EF19           ;
CODE_03EF16:        JSR CODE_03CDE2           ; Erase sprite
CODE_03EF19:        JSL CODE_05CB42           ;
CODE_03EF1D:        RTS                       ;

CODE_03EF1E:        CMP #$2D                  ;
CODE_03EF20:        BNE CODE_03EF27           ;
CODE_03EF22:        JSL CODE_05D055           ;
CODE_03EF26:        RTS                       ;

CODE_03EF27:        CMP #$35                  ;
CODE_03EF29:        BNE CODE_03EF3C           ;
CODE_03EF2B:        LDA $075F                 ;
CODE_03EF2E:        CMP #$07                  ;
CODE_03EF30:        BEQ CODE_03EF37           ;
CODE_03EF32:        JSL CODE_04ED7A           ;
CODE_03EF36:        RTS                       ;

CODE_03EF37:        JSL CODE_04DCBB           ;
CODE_03EF3B:        RTS                       ;

CODE_03EF3C:        LDA $0238,x               ;
CODE_03EF3F:        STA $02                   ;
CODE_03EF41:        LDA $03AE                 ;
CODE_03EF44:        STA $05                   ;
CODE_03EF46:        LDY $0B46,x               ;
CODE_03EF49:        STY $EB                   ;
CODE_03EF4B:        LDA #$00                  ;
CODE_03EF4D:        STA $F0                   ;
CODE_03EF4F:        LDA $47,x                 ;
CODE_03EF51:        STA $03                   ;
CODE_03EF53:        LDA $0257,x               ;
CODE_03EF56:        STA $04                   ;
CODE_03EF58:        LDA $1C,x                 ;
CODE_03EF5A:        CMP #$0D                  ;
CODE_03EF5C:        BNE CODE_03EF68           ;
CODE_03EF5E:        LDY $5E,x                 ;
CODE_03EF60:        BMI CODE_03EF68           ;
CODE_03EF62:        LDY $0792,x               ;
CODE_03EF65:        BEQ CODE_03EF68           ;
CODE_03EF67:        RTS                       ;

CODE_03EF68:        LDA $29,x                 ;
CODE_03EF6A:        STA $ED                   ;
CODE_03EF6C:        AND #$1F                  ;
CODE_03EF6E:        TAY                       ;
CODE_03EF6F:        LDA $1C,x                 ;
CODE_03EF71:        CMP #$35                  ;
CODE_03EF73:        BNE CODE_03EF7D           ;
CODE_03EF75:        LDY #$00                  ;
CODE_03EF77:        LDA #$01                  ;
CODE_03EF79:        STA $03                   ;
CODE_03EF7B:        LDA #$15                  ;
CODE_03EF7D:        CMP #$33                  ;
CODE_03EF7F:        BNE CODE_03EF94           ;
CODE_03EF81:        DEC $02                   ;
CODE_03EF83:        LDA #$20                  ;
CODE_03EF85:        LDY $0792,x               ;
CODE_03EF88:        BEQ CODE_03EF8C           ;
CODE_03EF8A:        EOR #$30                  ;
CODE_03EF8C:        STA $04                   ;
CODE_03EF8E:        LDY #$00                  ;
CODE_03EF90:        STY $ED                   ;
CODE_03EF92:        LDA #$08                  ;
CODE_03EF94:        CMP #$32                  ;
CODE_03EF96:        BNE CODE_03EFA0           ;
CODE_03EF98:        LDY #$03                  ;
CODE_03EF9A:        LDX $070E                 ;
CODE_03EF9D:        LDA DATA_03EEC6,x               ;
CODE_03EFA0:        STA $EF                   ;
CODE_03EFA2:        STY $EC                   ;
CODE_03EFA4:        LDX $9E                   ;
CODE_03EFA6:        CMP #$0C                  ;
CODE_03EFA8:        BNE CODE_03EFB0           ;
CODE_03EFAA:        LDA $A1,x                 ;
CODE_03EFAC:        BMI CODE_03EFB0           ;
CODE_03EFAE:        INC $F0                   ;
CODE_03EFB0:        LDA $036A                 ;
CODE_03EFB3:        BEQ CODE_03EFBE           ;
CODE_03EFB5:        LDY #$16                  ;
CODE_03EFB7:        CMP #$01                  ;
CODE_03EFB9:        BEQ CODE_03EFBC           ;
CODE_03EFBB:        INY                       ;
CODE_03EFBC:        STY $EF                   ;
CODE_03EFBE:        LDY $EF                   ;
CODE_03EFC0:        CPY #$06                  ;
CODE_03EFC2:        BNE CODE_03EFE1           ;
CODE_03EFC4:        LDA $29,x                 ;
CODE_03EFC6:        CMP #$02                  ;
CODE_03EFC8:        BCC CODE_03EFCE           ;
CODE_03EFCA:        LDX #$04                  ;
CODE_03EFCC:        STX $EC                   ;
CODE_03EFCE:        AND #$20                  ;
CODE_03EFD0:        ORA $0747                 ;
CODE_03EFD3:        BNE CODE_03EFE1           ;
CODE_03EFD5:        LDA $09                   ;
CODE_03EFD7:        AND #$08                  ;
CODE_03EFD9:        BNE CODE_03EFE1           ;
CODE_03EFDB:        LDA $03                   ;
CODE_03EFDD:        EOR #$03                  ;
CODE_03EFDF:        STA $03                   ;
CODE_03EFE1:        LDA DATA_03EEA9,y               ;
CODE_03EFE4:        CPY #$14                  ;
CODE_03EFE6:        BNE CODE_03EFEC           ;
CODE_03EFE8:        LDA #$3C                  ;
CODE_03EFEA:        BRA CODE_03EFEE           ;

CODE_03EFEC:        EOR $04                   ;
CODE_03EFEE:        STA $04                   ;
CODE_03EFF0:        CPY #$15                  ;
CODE_03EFF2:        BNE CODE_03F003           ;
CODE_03EFF4:        LDA $075F                 ;
CODE_03EFF7:        CMP #$07                  ;
CODE_03EFF9:        BNE CODE_03F003           ;
CODE_03EFFB:        LDA $04                   ;
CODE_03EFFD:        AND #$F0                  ;
CODE_03EFFF:        ORA #$04                  ;
CODE_03F001:        STA $04                   ;
CODE_03F003:        LDA $0E85                 ;
CODE_03F006:        BEQ CODE_03F011           ;
CODE_03F008:        LDA DATA_03EE8E,y               ;
CODE_03F00B:        CLC                       ;
CODE_03F00C:        ADC #$06                  ;
CODE_03F00E:        TAX                       ;
CODE_03F00F:        BRA CODE_03F015           ;

CODE_03F011:        LDA DATA_03EE8E,y               ;
CODE_03F014:        TAX                       ;
CODE_03F015:        LDY $EC                   ;
CODE_03F017:        LDA $036A                 ;
CODE_03F01A:        BEQ CODE_03F04A           ;
CODE_03F01C:        CMP #$01                  ;
CODE_03F01E:        BNE CODE_03F032           ;
CODE_03F020:        LDA $0363                 ;
CODE_03F023:        BPL CODE_03F027           ;
CODE_03F025:        LDX #$DE                  ;
CODE_03F027:        LDA $ED                   ;
CODE_03F029:        AND #$20                  ;
CODE_03F02B:        BEQ CODE_03F02F           ;
CODE_03F02D:        STX $F0                   ;
CODE_03F02F:        JMP CODE_03F12D           ;

CODE_03F032:        LDA $0363                 ;
CODE_03F035:        AND #$01                  ;
CODE_03F037:        BEQ CODE_03F03B           ;
CODE_03F039:        LDX #$E4                  ;
CODE_03F03B:        LDA $ED                   ;
CODE_03F03D:        AND #$20                  ;
CODE_03F03F:        BEQ CODE_03F02F           ;
CODE_03F041:        LDA $02                   ;
CODE_03F043:        SEC                       ;
CODE_03F044:        SBC #$10                  ;
CODE_03F046:        STA $02                   ;
CODE_03F048:        BRA CODE_03F02D           ;

CODE_03F04A:        CPX #$24                  ;
CODE_03F04C:        BNE CODE_03F05E           ;
CODE_03F04E:        CPY #$05                  ;
CODE_03F050:        BNE CODE_03F05C           ;
CODE_03F052:        LDX #$30                  ;
CODE_03F054:        LDA #$02                  ;
CODE_03F056:        STA $03                   ;
CODE_03F058:        LDA #$05                  ;
CODE_03F05A:        STA $EC                   ;
CODE_03F05C:        BRA CODE_03F0AE           ;

CODE_03F05E:        CPX #$90                  ;
CODE_03F060:        BNE CODE_03F074           ;
CODE_03F062:        LDA $ED                   ;
CODE_03F064:        AND #$20                  ;
CODE_03F066:        BNE CODE_03F071           ;
CODE_03F068:        LDA $079B                 ;
CODE_03F06B:        CMP #$10                  ;
CODE_03F06D:        BCS CODE_03F071           ;
CODE_03F06F:        LDX #$96                  ;
CODE_03F071:        JMP CODE_03F11A           ;

CODE_03F074:        LDA $EF                   ;
CODE_03F076:        CMP #$04                  ;
CODE_03F078:        BCS CODE_03F08A           ;
CODE_03F07A:        CPY #$02                  ;
CODE_03F07C:        BCC CODE_03F08A           ;
CODE_03F07E:        LDX #$5A                  ;
CODE_03F080:        LDY $EF                   ;
CODE_03F082:        CPY #$02                  ;
CODE_03F084:        BNE CODE_03F08A           ;
CODE_03F086:        LDX #$7E                  ;
CODE_03F088:        INC $02                   ;
CODE_03F08A:        LDA $EC                   ;
CODE_03F08C:        CMP #$04                  ;
CODE_03F08E:        BNE CODE_03F0AE           ;
CODE_03F090:        LDX #$72                  ;
CODE_03F092:        INC $02                   ;
CODE_03F094:        LDY $EF                   ;
CODE_03F096:        CPY #$02                  ;
CODE_03F098:        BEQ CODE_03F09E           ;
CODE_03F09A:        LDX #$66                  ;
CODE_03F09C:        INC $02                   ;
CODE_03F09E:        CPY #$06                  ;
CODE_03F0A0:        BNE CODE_03F0AE           ;
CODE_03F0A2:        LDX #$54                  ;
CODE_03F0A4:        LDA $ED                   ;
CODE_03F0A6:        AND #$20                  ;
CODE_03F0A8:        BNE CODE_03F0AE           ;
CODE_03F0AA:        LDX #$8A                  ;
CODE_03F0AC:        DEC $02                   ;
CODE_03F0AE:        LDY $9E                   ;
CODE_03F0B0:        LDA $EF                   ;
CODE_03F0B2:        CMP #$05                  ;
CODE_03F0B4:        BNE CODE_03F0C2           ;
CODE_03F0B6:        LDA $ED                   ;
CODE_03F0B8:        BEQ CODE_03F0DD           ;
CODE_03F0BA:        AND #$08                  ;
CODE_03F0BC:        BEQ CODE_03F11A           ;
CODE_03F0BE:        LDX #$B4                  ;
CODE_03F0C0:        BNE CODE_03F0DD           ;
CODE_03F0C2:        CPX #$48                  ;
CODE_03F0C4:        BEQ CODE_03F0DD           ;
CODE_03F0C6:        LDA $07A2,y               ;
CODE_03F0C9:        CMP #$05                  ;
CODE_03F0CB:        BCS CODE_03F11A           ;
CODE_03F0CD:        CPX #$3C                  ;
CODE_03F0CF:        BNE CODE_03F0DD           ;
CODE_03F0D1:        CMP #$01                  ;
CODE_03F0D3:        BEQ CODE_03F11A           ;
CODE_03F0D5:        INC $02                   ;
CODE_03F0D7:        INC $02                   ;
CODE_03F0D9:        INC $02                   ;
CODE_03F0DB:        BRA CODE_03F10C           ;

CODE_03F0DD:        LDA $EF                   ;
CODE_03F0DF:        CMP #$06                  ;
CODE_03F0E1:        BEQ CODE_03F11A           ;
CODE_03F0E3:        CMP #$08                  ;
CODE_03F0E5:        BEQ CODE_03F11A           ;
CODE_03F0E7:        CMP #$0C                  ;
CODE_03F0E9:        BEQ CODE_03F11A           ;
CODE_03F0EB:        CMP #$18                  ;
CODE_03F0ED:        BCS CODE_03F11A           ;
CODE_03F0EF:        LDY #$00                  ;
CODE_03F0F1:        CMP #$15                  ;
CODE_03F0F3:        BNE CODE_03F105           ;
CODE_03F0F5:        INY                       ;
CODE_03F0F6:        LDA $075F                 ;
CODE_03F0F9:        CMP #$07                  ;
CODE_03F0FB:        BCS CODE_03F11A           ;
CODE_03F0FD:        LDX #$A2                  ;
CODE_03F0FF:        LDA #$03                  ;
CODE_03F101:        STA $EC                   ;
CODE_03F103:        BNE CODE_03F11A           ;
CODE_03F105:        LDA $09                   ;
CODE_03F107:        AND DATA_03EEC4,y               ;
CODE_03F10A:        BNE CODE_03F11A           ;
CODE_03F10C:        LDA $ED                   ;
CODE_03F10E:        AND #$A0                  ;
CODE_03F110:        ORA $0747                 ;
CODE_03F113:        BNE CODE_03F11A           ;
CODE_03F115:        TXA                       ;
CODE_03F116:        CLC                       ;
CODE_03F117:        ADC #$06                  ;
CODE_03F119:        TAX                       ;
CODE_03F11A:        LDA $ED                   ;
CODE_03F11C:        AND #$20                  ;
CODE_03F11E:        BEQ CODE_03F12D           ;
CODE_03F120:        LDA $EF                   ;
CODE_03F122:        CMP #$04                  ;
CODE_03F124:        BCC CODE_03F12D           ;
CODE_03F126:        LDY #$01                  ;
CODE_03F128:        STY $F0                   ;
CODE_03F12A:        DEY                       ;
CODE_03F12B:        STY $EC                   ;
CODE_03F12D:        LDY $EB                   ;
CODE_03F12F:        JSL CODE_05E879           ;
CODE_03F133:        BCS CODE_03F142           ;
CODE_03F135:        JSR CODE_03F2F7           ;
CODE_03F138:        JSR CODE_03F2F7           ;
CODE_03F13B:        JSR CODE_03F2F7           ;
CODE_03F13E:        JSL CODE_05E95A           ;
CODE_03F142:        LDX $9E                   ;
CODE_03F144:        LDY $0B46,x               ;
CODE_03F147:        LDA $1C,x                 ;
CODE_03F149:        CMP #$0C                  ;
CODE_03F14B:        BNE CODE_03F188           ;
CODE_03F14D:        INC $0E1B,x               ;
CODE_03F150:        LDA $0E1B,x               ;
CODE_03F153:        CMP #$12                  ;
CODE_03F155:        BCC CODE_03F15D           ;
CODE_03F157:        STZ $0E1B,x               ;
CODE_03F15A:        LDA $0E1B,x               ;
CODE_03F15D:        TAX                       ;
CODE_03F15E:        LDA DATA_03EECB,x               ;
CODE_03F161:        TAX                       ;
CODE_03F162:        LDA DATA_03EEDD,x               ;
CODE_03F165:        STA $0902,y               ;
CODE_03F168:        LDA DATA_03EEDD+1,x               ;
CODE_03F16B:        STA $0906,y               ;
CODE_03F16E:        LDA DATA_03EEDD+2,x               ;
CODE_03F171:        STA $090A,y               ;
CODE_03F174:        LDA DATA_03EEDD+3,x               ;
CODE_03F177:        STA $090E,y               ;
CODE_03F17A:        LDA DATA_03EEDD+4,x               ;
CODE_03F17D:        STA $0912,y               ;
CODE_03F180:        LDA DATA_03EEDD+5,x               ;
CODE_03F183:        STA $0916,y               ;
CODE_03F186:        LDX $9E                   ;
CODE_03F188:        LDA $EF                   ;
CODE_03F18A:        CMP #$08                  ;
CODE_03F18C:        BNE CODE_03F191           ;
CODE_03F18E:        JMP CODE_03F295           ;

CODE_03F191:        LDA $F0                   ;
CODE_03F193:        BEQ CODE_03F1D2           ;
CODE_03F195:        LDA $0903,y               ;
CODE_03F198:        ORA #$80                  ;
CODE_03F19A:        INY                       ;
CODE_03F19B:        INY                       ;
CODE_03F19C:        JSR CODE_03EC4B           ;
CODE_03F19F:        DEY                       ;
CODE_03F1A0:        DEY                       ;
CODE_03F1A1:        TYA                       ;
CODE_03F1A2:        TAX                       ;
CODE_03F1A3:        LDA $EF                   ;
CODE_03F1A5:        CMP #$05                  ;
CODE_03F1A7:        BEQ CODE_03F1B6           ;
CODE_03F1A9:        CMP #$11                  ;
CODE_03F1AB:        BEQ CODE_03F1B6           ;
CODE_03F1AD:        CMP #$15                  ;
CODE_03F1AF:        BCS CODE_03F1B6           ;
CODE_03F1B1:        TXA                       ;
CODE_03F1B2:        CLC                       ;
CODE_03F1B3:        ADC #$08                  ;
CODE_03F1B5:        TAX                       ;
CODE_03F1B6:        LDA $0902,x               ;
CODE_03F1B9:        PHA                       ;
CODE_03F1BA:        LDA $0906,x               ;
CODE_03F1BD:        PHA                       ;
CODE_03F1BE:        LDA $0912,y               ;
CODE_03F1C1:        STA $0902,x               ;
CODE_03F1C4:        LDA $0916,y               ;
CODE_03F1C7:        STA $0906,x               ;
CODE_03F1CA:        PLA                       ;
CODE_03F1CB:        STA $0916,y               ;
CODE_03F1CE:        PLA                       ;
CODE_03F1CF:        STA $0912,y               ;
CODE_03F1D2:        LDA $036A                 ;
CODE_03F1D5:        BNE CODE_03F18E           ;
CODE_03F1D7:        LDA $EF                   ;
CODE_03F1D9:        LDX $EC                   ;
CODE_03F1DB:        CMP #$05                  ;
CODE_03F1DD:        BNE CODE_03F1E2           ;
CODE_03F1DF:        JMP CODE_03F295           ;

CODE_03F1E2:        CMP #$07                  ;
CODE_03F1E4:        BEQ CODE_03F1FA           ;
CODE_03F1E6:        CMP #$0D                  ;
CODE_03F1E8:        BEQ CODE_03F1FA           ;
CODE_03F1EA:        CMP #$0C                  ;
CODE_03F1EC:        BEQ CODE_03F1FA           ;
CODE_03F1EE:        CMP #$12                  ;
CODE_03F1F0:        BNE CODE_03F1F6           ;
CODE_03F1F2:        CPX #$05                  ;
CODE_03F1F4:        BNE CODE_03F23A           ;
CODE_03F1F6:        CPX #$02                  ;
CODE_03F1F8:        BCC CODE_03F23A           ;
CODE_03F1FA:        LDA $036A                 ;
CODE_03F1FD:        BNE CODE_03F23A           ;
CODE_03F1FF:        LDA $0F49                 ;
CODE_03F202:        BNE CODE_03F23A           ;
CODE_03F204:        LDA $0903,y               ;
CODE_03F207:        AND #$BE                  ;
CODE_03F209:        STA $0903,y               ;
CODE_03F20C:        STA $090B,y               ;
CODE_03F20F:        STA $0913,y               ;
CODE_03F212:        ORA #$40                  ;
CODE_03F214:        CPX #$05                  ;
CODE_03F216:        BNE CODE_03F21A           ;
CODE_03F218:        ORA #$80                  ;
CODE_03F21A:        STA $0907,y               ;
CODE_03F21D:        STA $090F,y               ;
CODE_03F220:        STA $0917,y               ;
CODE_03F223:        CPX #$04                  ;
CODE_03F225:        BNE CODE_03F23A           ;
CODE_03F227:        LDA $090B,y               ;
CODE_03F22A:        ORA #$80                  ;
CODE_03F22C:        STA $090B,y               ;
CODE_03F22F:        STA $0913,y               ;
CODE_03F232:        ORA #$40                  ;
CODE_03F234:        STA $090F,y               ;
CODE_03F237:        STA $0917,y               ;
CODE_03F23A:        LDA $EF                   ;
CODE_03F23C:        CMP #$11                  ;
CODE_03F23E:        BNE CODE_03F275           ;
CODE_03F240:        LDA $F0                   ;
CODE_03F242:        BNE CODE_03F265           ;
CODE_03F244:        LDA $0913,y               ;
CODE_03F247:        AND #$BF                  ;
CODE_03F249:        STA $0913,y               ;
CODE_03F24C:        LDA $0917,y               ;
CODE_03F24F:        ORA #$40                  ;
CODE_03F251:        STA $0917,y               ;
CODE_03F254:        LDX $079B                 ;
CODE_03F257:        CPX #$10                  ;
CODE_03F259:        BCS CODE_03F295           ;
CODE_03F25B:        STA $090F,y               ;
CODE_03F25E:        AND #$BF                  ;
CODE_03F260:        STA $090B,y               ;
CODE_03F263:        BCC CODE_03F295           ;
CODE_03F265:        LDA $0903,y               ;
CODE_03F268:        AND #$BF                  ;
CODE_03F26A:        STA $0903,y               ;
CODE_03F26D:        LDA $0907,y               ;
CODE_03F270:        ORA #$40                  ;
CODE_03F272:        STA $0907,y               ;
CODE_03F275:        LDA $EF                   ;
CODE_03F277:        CMP #$18                  ;
CODE_03F279:        BCC CODE_03F295           ;
CODE_03F27B:        LDA #$AC                  ;
CODE_03F27D:        STA $090B,y               ;
CODE_03F280:        STA $0913,y               ;
CODE_03F283:        ORA #$40                  ;
CODE_03F285:        STA $090F,y               ;
CODE_03F288:        STA $0917,y               ;
CODE_03F28B:        AND #$3F                  ;
CODE_03F28D:        STA $0903,y               ;
CODE_03F290:        ORA #$40                  ;
CODE_03F292:        STA $0907,y               ;
CODE_03F295:        LDA $EF                   ;
CODE_03F297:        CMP #$0D                  ;
CODE_03F299:        BNE CODE_03F2AF           ;
CODE_03F29B:        LDA $0913,y               ;
CODE_03F29E:        AND #$F0                  ;
CODE_03F2A0:        ORA #$08                  ;
CODE_03F2A2:        STA $0913,y               ;
CODE_03F2A5:        LDA $0917,y               ;
CODE_03F2A8:        AND #$F0                  ;
CODE_03F2AA:        ORA #$08                  ;
CODE_03F2AC:        STA $0917,y               ;
CODE_03F2AF:        LDX $9E                   ;
CODE_03F2B1:        JSR CODE_03FEAC           ;
CODE_03F2B4:        STZ $04                   ;
CODE_03F2B6:        JSR CODE_03FEE5           ;
CODE_03F2B9:        JSR CODE_03FF3B           ;
CODE_03F2BC:        STZ $04                   ;
CODE_03F2BE:        JSR CODE_03FEE5           ;
CODE_03F2C1:        DEY                       ;
CODE_03F2C2:        DEY                       ;
CODE_03F2C3:        DEY                       ;
CODE_03F2C4:        DEY                       ;
CODE_03F2C5:        LDA $03D1                 ;
CODE_03F2C8:        LSR A                     ;
CODE_03F2C9:        LSR A                     ;
CODE_03F2CA:        LSR A                     ;
CODE_03F2CB:        LSR A                     ;
CODE_03F2CC:        LSR A                     ;
CODE_03F2CD:        LSR A                     ;
CODE_03F2CE:        PHA                       ;
CODE_03F2CF:        BCC CODE_03F2D6           ;
CODE_03F2D1:        LDA #$10                  ;
CODE_03F2D3:        JSR CODE_03F313           ;
CODE_03F2D6:        PLA                       ;
CODE_03F2D7:        LSR A                     ;
CODE_03F2D8:        PHA                       ;
CODE_03F2D9:        BCC CODE_03F2E0           ;
CODE_03F2DB:        LDA #$08                  ;
CODE_03F2DD:        JSR CODE_03F313           ;
CODE_03F2E0:        PLA                       ;
CODE_03F2E1:        LSR A                     ;
CODE_03F2E2:        BCC CODE_03F2F6           ;
CODE_03F2E4:        JSR CODE_03F313           ;
CODE_03F2E7:        LDA $1C,x                 ;
CODE_03F2E9:        CMP #$0C                  ;
CODE_03F2EB:        BEQ CODE_03F2F6           ;
CODE_03F2ED:        LDA $BC,x                 ;
CODE_03F2EF:        CMP #$02                  ;
CODE_03F2F1:        BNE CODE_03F2F6           ;
CODE_03F2F3:        JSR CODE_03CDE2           ; Erase sprite
CODE_03F2F6:        RTS                       ;

CODE_03F2F7:        LDA DATA_03ED8C,x               ;
CODE_03F2FA:        STA $00                   ;
CODE_03F2FC:        LDA DATA_03ED8C+1,x               ;
CODE_03F2FF:        STA $01                   ;
CODE_03F301:        LDA $02                   ;
CODE_03F303:        CMP #$F9                  ;
CODE_03F305:        BNE CODE_03F30B           ;
CODE_03F307:        LDA #$F0                  ;
CODE_03F309:        STA $02                   ;
CODE_03F30B:        JMP CODE_03FF96           ;

CODE_03F30E:        STA $01                   ;
CODE_03F310:        JMP CODE_03FF4E           ;

CODE_03F313:        STX $9E                   ;
CODE_03F315:        CPX #$0A                  ;
CODE_03F317:        BNE CODE_03F31A           ;
CODE_03F319:        DEX                       ;
CODE_03F31A:        CLC                       ;
CODE_03F31B:        ADC $0B46,x               ;
CODE_03F31E:        TAY                       ;
CODE_03F31F:        LDA #$F0                  ;
CODE_03F321:        LDX $9E                   ;
CODE_03F323:        JMP CODE_03EC57           ;

CODE_03F326:        STX $9E                   ;
CODE_03F328:        CPX #$0A                  ;
CODE_03F32A:        BNE CODE_03F32D           ;
CODE_03F32C:        DEX                       ;
CODE_03F32D:        CLC                       ;
CODE_03F32E:        ADC $0B46,x               ;
CODE_03F331:        TAY                       ;
CODE_03F332:        LDA #$F0                  ;
CODE_03F334:        STA $0901,y               ;
CODE_03F337:        STA $0909,y               ;
CODE_03F33A:        STA $0911,y               ;
CODE_03F33D:        LDX $9E                   ;
CODE_03F33F:        RTS                       ;

CODE_03F340:        LDA #$01                  ;
CODE_03F342:        STA $0D00,y               ;
CODE_03F345:        STA $0D08,y               ;
CODE_03F348:        STA $0D10,y               ;
CODE_03F34B:        RTS                       ;

CODE_03F34C:        LDA #$01                  ;
CODE_03F34E:        STA $0D04,y               ;
CODE_03F351:        STA $0D0C,y               ;
CODE_03F354:        STA $0D14,y               ;
CODE_03F357:        RTS                       ;

CODE_03F358:        LDY $0B51,x               ;
CODE_03F35B:        LDA $03B1                 ;
CODE_03F35E:        STA $0800,y               ;
CODE_03F361:        LDA $03BC                 ;
CODE_03F364:        STA $0801,y               ;
CODE_03F367:        LDA #$2B                  ;
CODE_03F369:        STA $0803,y               ;
CODE_03F36C:        LDA #$02                  ;
CODE_03F36E:        STA $0C00,y               ;
CODE_03F371:        LDA $03EA,x               ;
CODE_03F374:        CMP #$FC                  ;
CODE_03F376:        BNE CODE_03F37C           ;
CODE_03F378:        LDA #$00                  ;
CODE_03F37A:        BRA CODE_03F37E           ;

CODE_03F37C:        LDA #$02                  ;
CODE_03F37E:        STA $0802,y               ;
CODE_03F381:        LDA $85,x                 ;
CODE_03F383:        STA $E5                   ;
CODE_03F385:        LDA $0226,x               ;
CODE_03F388:        STA $E4                   ;
CODE_03F38A:        REP #$20                  ;
CODE_03F38C:        LDA $E4                   ;
CODE_03F38E:        SEC                       ;
CODE_03F38F:        SBC $42                   ;
CODE_03F391:        STA $E4                   ;
CODE_03F393:        SEP #$20                  ;
CODE_03F395:        LDA $E5                   ;
CODE_03F397:        BEQ CODE_03F39E           ;
CODE_03F399:        LDA #$03                  ;
CODE_03F39B:        STA $0C00,y               ;
CODE_03F39E:        RTS                       ;

CODE_03F39F:        AND #$08                  ;
CODE_03F3A1:        BEQ CODE_03F3AB           ;
CODE_03F3A3:        LDA #$F0                  ;
CODE_03F3A5:        STA $0801,y               ;
CODE_03F3A8:        STA $0809,y               ;
CODE_03F3AB:        RTS                       ;

CODE_03F3AC:        LDA #$2C                  ;
CODE_03F3AE:        STA $00                   ;
CODE_03F3B0:        LDA #$75                  ;
CODE_03F3B2:        LDY $0F                   ;
CODE_03F3B4:        CPY #$05                  ;
CODE_03F3B6:        BEQ CODE_03F3BE           ;
CODE_03F3B8:        LDA #$2A                  ;
CODE_03F3BA:        STA $00                   ;
CODE_03F3BC:        LDA #$84                  ;
CODE_03F3BE:        LDY $0B51,x               ;
CODE_03F3C1:        INY                       ;
CODE_03F3C2:        JSR CODE_03EC3C           ;
CODE_03F3C5:        LDA $09                   ;
CODE_03F3C7:        ASL A                     ;
CODE_03F3C8:        ASL A                     ;
CODE_03F3C9:        ASL A                     ;
CODE_03F3CA:        ASL A                     ;
CODE_03F3CB:        AND #$C0                  ;
CODE_03F3CD:        ORA $00                   ;
CODE_03F3CF:        INY                       ;
CODE_03F3D0:        JSR CODE_03EC3C           ;
CODE_03F3D3:        DEY                       ;
CODE_03F3D4:        DEY                       ;
CODE_03F3D5:        LDA $03BC                 ;
CODE_03F3D8:        CMP #$F0                  ;
CODE_03F3DA:        BCC CODE_03F3DE           ;
CODE_03F3DC:        LDA #$F0                  ;
CODE_03F3DE:        JSR CODE_03EC42           ;
CODE_03F3E1:        LDA $03B1                 ;
CODE_03F3E4:        STA $0800,y               ;
CODE_03F3E7:        LDA $03F3,x               ;
CODE_03F3EA:        SEC                       ;
CODE_03F3EB:        SBC $071C                 ;
CODE_03F3EE:        STA $00                   ;
CODE_03F3F0:        SEC                       ;
CODE_03F3F1:        SBC $03B1                 ;
CODE_03F3F4:        ADC $00                   ;
CODE_03F3F6:        ADC #$06                  ;
CODE_03F3F8:        STA $0804,y               ;
CODE_03F3FB:        LDA $03BD                 ;
CODE_03F3FE:        CMP #$F0                  ;
CODE_03F400:        BCC CODE_03F404           ;
CODE_03F402:        LDA #$F0                  ;
CODE_03F404:        STA $0809,y               ;
CODE_03F407:        STA $080D,y               ;
CODE_03F40A:        LDA $03B2                 ;
CODE_03F40D:        STA $0808,y               ;
CODE_03F410:        LDA $00                   ;
CODE_03F412:        SEC                       ;
CODE_03F413:        SBC $03B2                 ;
CODE_03F416:        ADC $00                   ;
CODE_03F418:        ADC #$06                  ;
CODE_03F41A:        STA $080C,y               ;
CODE_03F41D:        LDA $03D4                 ;
CODE_03F420:        ASL A                     ;
CODE_03F421:        BCC CODE_03F428           ;
CODE_03F423:        LDA #$F0                  ;
CODE_03F425:        JSR CODE_03EC42           ;
CODE_03F428:        LDA $03D4                 ;
CODE_03F42B:        BEQ CODE_03F435           ;
CODE_03F42D:        LDA #$01                  ;
CODE_03F42F:        STA $0C00,y               ;
CODE_03F432:        STA $0C08,y               ;
CODE_03F435:        LDA $03D5                 ;
CODE_03F438:        BEQ CODE_03F442           ;
CODE_03F43A:        LDA #$01                  ;
CODE_03F43C:        STA $0C04,y               ;
CODE_03F43F:        STA $0C0C,y               ;
CODE_03F442:        RTS                       ;

CODE_03F443:        LDY $0B56,x               ;
CODE_03F446:        LDA $03BA                 ;
CODE_03F449:        STA $0801,y               ;
CODE_03F44C:        LDA $03AF                 ;
CODE_03F44F:        STA $0800,y               ;
CODE_03F452:        LDA $09                   ;
CODE_03F454:        LSR A                     ;
CODE_03F455:        LSR A                     ;
CODE_03F456:        PHA                       ;
CODE_03F457:        AND #$01                  ;
CODE_03F459:        EOR #$BE                  ;
CODE_03F45B:        STA $0802,y               ;
CODE_03F45E:        PLA                       ;
CODE_03F45F:        LSR A                     ;
CODE_03F460:        LSR A                     ;
CODE_03F461:        LDA #$28                  ;
CODE_03F463:        BCC CODE_03F467           ;
CODE_03F465:        ORA #$C0                  ;
CODE_03F467:        STA $0803,y               ;
CODE_03F46A:        LDA $0068,x               ;
CODE_03F46D:        BPL CODE_03F47B           ;
CODE_03F46F:        LDA $03AF                 ;
CODE_03F472:        CMP #$F8                  ;
CODE_03F474:        BCC CODE_03F47B           ;
CODE_03F476:        LDA #$01                  ;
CODE_03F478:        STA $0C00,y               ;
CODE_03F47B:        RTS                       ;

CODE_03F47C:        LDY $0B56,x               ;
CODE_03F47F:        LDA $03BA                 ;
CODE_03F482:        STA $0901,y               ;
CODE_03F485:        LDA $03AF                 ;
CODE_03F488:        STA $0900,y               ;
CODE_03F48B:        LDA $09                   ;
CODE_03F48D:        LSR A                     ;
CODE_03F48E:        LSR A                     ;
CODE_03F48F:        PHA                       ;
CODE_03F490:        AND #$01                  ;
CODE_03F492:        EOR #$BE                  ;
CODE_03F494:        STA $0902,y               ;
CODE_03F497:        PLA                       ;
CODE_03F498:        LSR A                     ;
CODE_03F499:        LSR A                     ;
CODE_03F49A:        LDA #$38                  ;
CODE_03F49C:        BCC CODE_03F4A0           ;
CODE_03F49E:        ORA #$C0                  ;
CODE_03F4A0:        STA $0903,y               ;
CODE_03F4A3:        RTS                       ;

DATA_03F4A4:        db $CC,$CB,$CA,$FC


CODE_03F4A8:        LDY $0B51,x
CODE_03F4AB:        LDA $0068,x               ;
CODE_03F4AE:        BMI CODE_03F4C7           ;
CODE_03F4B0:        LDA $03AF                 ;
CODE_03F4B3:        SEC                       ;
CODE_03F4B4:        SBC #$04                  ;
CODE_03F4B6:        STA $03AF                 ;
CODE_03F4B9:        CMP #$F8                  ;
CODE_03F4BB:        BCC CODE_03F4E6           ;
CODE_03F4BD:        LDA #$01                  ;
CODE_03F4BF:        STA $0C08,y               ;
CODE_03F4C2:        STA $0C0C,y               ;
CODE_03F4C5:        BRA CODE_03F4E6           ;

CODE_03F4C7:        LDA $03AF                 ;
CODE_03F4CA:        CMP #$F0                  ;
CODE_03F4CC:        BCC CODE_03F4E6           ;
CODE_03F4CE:        CMP #$F8                  ;
CODE_03F4D0:        BCC CODE_03F4DC           ;
CODE_03F4D2:        LDA #$01                  ;
CODE_03F4D4:        STA $0C00,y               ;
CODE_03F4D7:        STA $0C04,y               ;
CODE_03F4DA:        BRA CODE_03F4E6           ;

CODE_03F4DC:        LDA #$01                  ;
CODE_03F4DE:        STA $0C00,y               ;
CODE_03F4E1:        STA $0C04,y               ;
CODE_03F4E4:        BRA CODE_03F4BD           ;

CODE_03F4E6:        LDA $33,x                 ;
CODE_03F4E8:        INC $33,x                 ;
CODE_03F4EA:        LSR A                     ;
CODE_03F4EB:        AND #$07                  ;
CODE_03F4ED:        CMP #$03                  ;
CODE_03F4EF:        BCS CODE_03F538           ;
CODE_03F4F1:        TAX                       ;
CODE_03F4F2:        LDA DATA_03F4A4,x               ;
CODE_03F4F5:        INY                       ;
CODE_03F4F6:        JSR CODE_03EC3C           ;
CODE_03F4F9:        DEY                       ;
CODE_03F4FA:        LDX $9E                   ;
CODE_03F4FC:        LDA $03BA                 ;
CODE_03F4FF:        SEC                       ;
CODE_03F500:        SBC #$04                  ;
CODE_03F502:        STA $0801,y               ;
CODE_03F505:        STA $0809,y               ;
CODE_03F508:        CLC                       ;
CODE_03F509:        ADC #$08                  ;
CODE_03F50B:        STA $0805,y               ;
CODE_03F50E:        STA $080D,y               ;
CODE_03F511:        LDA $03AF                 ;
CODE_03F514:        STA $0800,y               ;
CODE_03F517:        STA $0804,y               ;
CODE_03F51A:        CLC                       ;
CODE_03F51B:        ADC #$08                  ;
CODE_03F51D:        STA $0808,y               ;
CODE_03F520:        STA $080C,y               ;
CODE_03F523:        LDA #$28                  ;
CODE_03F525:        STA $0803,y               ;
CODE_03F528:        LDA #$A8                  ;
CODE_03F52A:        STA $0807,y               ;
CODE_03F52D:        LDA #$68                  ;
CODE_03F52F:        STA $080B,y               ;
CODE_03F532:        LDA #$E8                  ;
CODE_03F534:        STA $080F,y               ;
CODE_03F537:        RTS                       ;

CODE_03F538:        STZ $33,x                 ;
CODE_03F53A:        RTS                       ;

DATA_03F53B:        db $48,$4A,$4C,$4E

DATA_03F53F:        db $0C,$08,$0A,$0C,$08,$0A,$0C,$08
                    db $0A

CODE_03F548:        TAX                       ;
CODE_03F549:        LDA DATA_03F53B,x               ;
CODE_03F54C:        INY                       ;
CODE_03F54D:        JSR CODE_03EC51           ;
CODE_03F550:        DEY                       ;
CODE_03F551:        LDX $9E                   ;
CODE_03F553:        LDA $03BA                 ;
CODE_03F556:        SEC                       ;
CODE_03F557:        SBC #$10                  ;
CODE_03F559:        STA $0901,y               ;
CODE_03F55C:        STA $0909,y               ;
CODE_03F55F:        CLC                       ;
CODE_03F560:        ADC #$10                  ;
CODE_03F562:        STA $0905,y               ;
CODE_03F565:        STA $090D,y               ;
CODE_03F568:        LDA $03AF                 ;
CODE_03F56B:        SEC                       ;
CODE_03F56C:        SBC #$08                  ;
CODE_03F56E:        STA $0900,y               ;
CODE_03F571:        STA $0904,y               ;
CODE_03F574:        CLC                       ;
CODE_03F575:        ADC #$10                  ;
CODE_03F577:        STA $0908,y               ;
CODE_03F57A:        STA $090C,y               ;
CODE_03F57D:        LDA #$02                  ;
CODE_03F57F:        STA $0D00,y               ;
CODE_03F582:        STA $0D04,y               ;
CODE_03F585:        STA $0D08,y               ;
CODE_03F588:        STA $0D0C,y               ;
CODE_03F58B:        PHX                       ;
CODE_03F58C:        LDA $A1,x                 ;
CODE_03F58E:        TAX                       ;
CODE_03F58F:        DEX                       ;
CODE_03F590:        LDA DATA_03F53F,x               ;
CODE_03F593:        ORA #$20                  ;
CODE_03F595:        STA $0903,y               ;
CODE_03F598:        LDA DATA_03F53F,x               ;
CODE_03F59B:        ORA #$A0                  ;
CODE_03F59D:        STA $0907,y               ;
CODE_03F5A0:        LDA DATA_03F53F,x               ;
CODE_03F5A3:        ORA #$60                  ;
CODE_03F5A5:        STA $090B,y               ;
CODE_03F5A8:        LDA DATA_03F53F,x               ;
CODE_03F5AB:        ORA #$E0                  ;
CODE_03F5AD:        STA $090F,y               ;
CODE_03F5B0:        PLX                       ;
CODE_03F5B1:        RTS                       ;

CODE_03F5B2:        LDY $0B46,x               ;
CODE_03F5B5:        LDA #$87                  ;
CODE_03F5B7:        INY                       ;
CODE_03F5B8:        JSR CODE_03EC4B           ;
CODE_03F5BB:        INY                       ;
CODE_03F5BC:        LDA #$2C                  ;
CODE_03F5BE:        JSR CODE_03EC4B           ;
CODE_03F5C1:        DEY                       ;
CODE_03F5C2:        DEY                       ;
CODE_03F5C3:        LDA $03AE                 ;
CODE_03F5C6:        STA $0900,y               ;
CODE_03F5C9:        STA $090C,y               ;
CODE_03F5CC:        CLC                       ;
CODE_03F5CD:        ADC #$08                  ;
CODE_03F5CF:        STA $0904,y               ;
CODE_03F5D2:        STA $0910,y               ;
CODE_03F5D5:        CLC                       ;
CODE_03F5D6:        ADC #$08                  ;
CODE_03F5D8:        STA $0908,y               ;
CODE_03F5DB:        STA $0914,y               ;
CODE_03F5DE:        LDA $0238,x               ;
CODE_03F5E1:        TAX                       ;
CODE_03F5E2:        PHA                       ;
CODE_03F5E3:        CPX #$00                  ;
CODE_03F5E5:        BCS CODE_03F5E9           ;
CODE_03F5E7:        LDA #$F0                  ;
CODE_03F5E9:        JSR CODE_03EC54           ;
CODE_03F5EC:        PLA                       ;
CODE_03F5ED:        CLC                       ;
CODE_03F5EE:        ADC #$80                  ;
CODE_03F5F0:        TAX                       ;
CODE_03F5F1:        CPX #$00                  ;
CODE_03F5F3:        BCS CODE_03F5F7           ;
CODE_03F5F5:        LDA #$F0                  ;
CODE_03F5F7:        STA $090D,y               ;
CODE_03F5FA:        STA $0911,y               ;
CODE_03F5FD:        STA $0915,y               ;
CODE_03F600:        LDA $03D1                 ;
CODE_03F603:        PHA                       ;
CODE_03F604:        AND #$08                  ;
CODE_03F606:        BEQ CODE_03F610           ;
CODE_03F608:        LDA #$01                  ;
CODE_03F60A:        STA $0D00,y               ;
CODE_03F60D:        STA $0D0C,y               ;
CODE_03F610:        PLA                       ;
CODE_03F611:        PHA                       ;
CODE_03F612:        AND #$04                  ;
CODE_03F614:        BEQ CODE_03F61E           ;
CODE_03F616:        LDA #$01                  ;
CODE_03F618:        STA $0D04,y               ;
CODE_03F61B:        STA $0D10,y               ;
CODE_03F61E:        PLA                       ;
CODE_03F61F:        AND #$02                  ;
CODE_03F621:        BEQ CODE_03F62B           ;
CODE_03F623:        LDA #$01                  ;
CODE_03F625:        STA $0D08,y               ;
CODE_03F628:        STA $0D14,y               ;
CODE_03F62B:        LDX $9E                   ;
CODE_03F62D:        RTS                       ;

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

CODE_03F710:        LDA $0E41                 ;
CODE_03F713:        BNE CODE_03F732           ;
CODE_03F715:        LDA $06D5                 ;
CODE_03F718:        CMP #$18                  ;
CODE_03F71A:        BEQ CODE_03F720           ;
CODE_03F71C:        CMP #$78                  ;
CODE_03F71E:        BNE CODE_03F736           ;
CODE_03F720:        INC $0E41                 ;
CODE_03F723:        BRA CODE_03F72F           ;

CODE_03F725:        LDA $0202                 ;
CODE_03F728:        AND #$02                  ;
CODE_03F72A:        BNE CODE_03F736           ;
CODE_03F72C:        INC $0E41                 ;
CODE_03F72F:        STZ $0E40                 ;
CODE_03F732:        JSL CODE_05D7A1           ;
CODE_03F736:        LDA $0F                   ;
CODE_03F738:        CMP #$03                  ;
CODE_03F73A:        BEQ CODE_03F746           ;
CODE_03F73C:        LDA $07AE                 ;
CODE_03F73F:        BEQ CODE_03F746           ;
CODE_03F741:        LDA $09                   ;
CODE_03F743:        LSR A                     ;
CODE_03F744:        BCS CODE_03F7AE           ;
CODE_03F746:        LDA $0F                   ;
CODE_03F748:        CMP #$0B                  ;
CODE_03F74A:        BEQ CODE_03F7B9           ;
CODE_03F74C:        LDA $070B                 ;
CODE_03F74F:        BNE CODE_03F7B4           ;
CODE_03F751:        LDY $0704                 ;
CODE_03F754:        BEQ CODE_03F7AF           ;
CODE_03F756:        LDA $28                   ;
CODE_03F758:        CMP #$00                  ;
CODE_03F75A:        BEQ CODE_03F7AF           ;
CODE_03F75C:        JSR CODE_03F7AF           ;
CODE_03F75F:        TAX                       ;
CODE_03F760:        LDY $0B45                 ;
CODE_03F763:        LDA $0202                 ;
CODE_03F766:        LSR A                     ;
CODE_03F767:        BCS CODE_03F76D           ;
CODE_03F769:        INY                       ;
CODE_03F76A:        INY                       ;
CODE_03F76B:        INY                       ;
CODE_03F76C:        INY                       ;
CODE_03F76D:        LDA $0754                 ;
CODE_03F770:        BNE CODE_03F7AE           ;
CODE_03F772:        PHX                       ;
CODE_03F773:        LDA $0202                 ;
CODE_03F776:        CMP #$02                  ;
CODE_03F778:        BEQ CODE_03F789           ;
CODE_03F77A:        LDA $0810,y               ;
CODE_03F77D:        SEC                       ;
CODE_03F77E:        SBC #$08                  ;
CODE_03F780:        STA $0810,y               ;
CODE_03F783:        BCS CODE_03F789           ;
CODE_03F785:        LDA #$03                  ;
CODE_03F787:        BRA CODE_03F78B           ;

CODE_03F789:        LDA #$02                  ;
CODE_03F78B:        STA $0C10,y               ;
CODE_03F78E:        LDA $06D5                 ;
CODE_03F791:        SEC                       ;
CODE_03F792:        SBC #$28                  ;
CODE_03F794:        LSR A                     ;
CODE_03F795:        LSR A                     ;
CODE_03F796:        CLC                       ;
CODE_03F797:        ADC #$08                  ;
CODE_03F799:        STA $0812,y               ;
CODE_03F79C:        LDA $0819,y               ;
CODE_03F79F:        CMP #$F0                  ;
CODE_03F7A1:        BCC CODE_03F7A8           ;
CODE_03F7A3:        LDA #$F0                  ;
CODE_03F7A5:        STA $0811,y               ;
CODE_03F7A8:        LDA #$F0                  ;
CODE_03F7AA:        STA $0819,y               ;
CODE_03F7AD:        PLX                       ;
CODE_03F7AE:        RTS                       ;

CODE_03F7AF:        JSR CODE_03FBA2           ;
CODE_03F7B2:        BRA CODE_03F7BE           ;

CODE_03F7B4:        JSR CODE_03FC60           ;
CODE_03F7B7:        BRA CODE_03F7BE           ;

CODE_03F7B9:        LDY #$0E                  ;
CODE_03F7BB:        LDA DATA_03F62E,y               ;
CODE_03F7BE:        STA $06D5                 ;
CODE_03F7C1:        LDA $03CE                 ;
CODE_03F7C4:        BNE CODE_03F7D9           ;
CODE_03F7C6:        LDA $0218                 ;
CODE_03F7C9:        BEQ CODE_03F7DC           ;
CODE_03F7CB:        LDA $0754                 ;
CODE_03F7CE:        BNE CODE_03F7D7           ;
CODE_03F7D0:        LDA #$D8                  ;
CODE_03F7D2:        STA $06D5                 ;
CODE_03F7D5:        BRA CODE_03F7DC           ;

CODE_03F7D7:        LDA #$E0                  ;
CODE_03F7D9:        STA $06D5                 ;
CODE_03F7DC:        LDA #$04                  ;
CODE_03F7DE:        JSR CODE_03FB58           ;
CODE_03F7E1:        JSR CODE_03FC99           ;
CODE_03F7E4:        LDA $02                   ;
CODE_03F7E6:        CMP #$03                  ;
CODE_03F7E8:        BNE CODE_03F804           ;
CODE_03F7EA:        LDA $0219                 ;
CODE_03F7ED:        SEC                       ;
CODE_03F7EE:        SBC $42                   ;
CODE_03F7F0:        LDA $78                   ;
CODE_03F7F2:        SBC $43                   ;
CODE_03F7F4:        BEQ CODE_03F804           ;
CODE_03F7F6:        LDA #$01                  ;
CODE_03F7F8:        STA $0CD0                 ;
CODE_03F7FB:        STA $0CD8                 ;
CODE_03F7FE:        STA $0CE0                 ;
CODE_03F801:        STA $0CE8                 ;
CODE_03F804:        LDA $0711                 ;
CODE_03F807:        BEQ CODE_03F834           ;
CODE_03F809:        LDY #$00                  ;
CODE_03F80B:        LDA $0789                 ;
CODE_03F80E:        CMP $0711                 ;
CODE_03F811:        STY $0711                 ;
CODE_03F814:        BCS CODE_03F834           ;
CODE_03F816:        STA $0711                 ;
CODE_03F819:        LDA $28                   ;
CODE_03F81B:        CMP #$01                  ;
CODE_03F81D:        BEQ CODE_03F827           ;
CODE_03F81F:        LDY #$07                  ;
CODE_03F821:        LDA DATA_03F62E,y               ;
CODE_03F824:        STA $06D5                 ;
CODE_03F827:        LDY #$04                  ;
CODE_03F829:        LDA $5D                   ;
CODE_03F82B:        ORA $0C                   ;
CODE_03F82D:        BEQ CODE_03F830           ;
CODE_03F82F:        DEY                       ;
CODE_03F830:        TYA                       ;
CODE_03F831:        JSR CODE_03FB58           ;
CODE_03F834:        LDA $03D0                 ;
CODE_03F837:        LSR A                     ;
CODE_03F838:        LSR A                     ;
CODE_03F839:        LSR A                     ;
CODE_03F83A:        LSR A                     ;
CODE_03F83B:        STA $00                   ;
CODE_03F83D:        LDX #$03                  ;
CODE_03F83F:        LDA $0B45                 ;
CODE_03F842:        CLC                       ;
CODE_03F843:        ADC #$18                  ;
CODE_03F845:        TAY                       ;
CODE_03F846:        LDA #$F0                  ;
CODE_03F848:        LSR $00                   ;
CODE_03F84A:        BCC CODE_03F84F           ;
CODE_03F84C:        JSR CODE_03EC42           ;
CODE_03F84F:        TYA                       ;
CODE_03F850:        SEC                       ;
CODE_03F851:        SBC #$08                  ;
CODE_03F853:        TAY                       ;
CODE_03F854:        DEX                       ;
CODE_03F855:        BPL CODE_03F846           ;
CODE_03F857:        JSR CODE_03FCB6           ;
CODE_03F85A:        RTS                       ;

DATA_03F85B:        db $40,$01,$2E,$60,$FF,$04

CODE_03F861:        JSR CODE_0385F3           ;
CODE_03F864:        LDA #$D0                  ;
CODE_03F866:        STA $06D5                 ;
CODE_03F869:        JSL CODE_04D800           ;
CODE_03F86D:        LDX #$05                  ;
CODE_03F86F:        LDA DATA_03F85B,x               ;
CODE_03F872:        STA $02,x                 ;
CODE_03F874:        DEX                       ;
CODE_03F875:        BPL CODE_03F86F           ;
CODE_03F877:        LDX #$B8                  ;
CODE_03F879:        LDY #$D0                  ;
CODE_03F87B:        JSR CODE_03FB7E           ;
CODE_03F87E:        JSR CODE_03F885           ;
CODE_03F881:        JSR CODE_039FBD           ;
CODE_03F884:        RTS                       ;

CODE_03F885:        PHX                       ;
CODE_03F886:        PHY                       ;
CODE_03F887:        LDA #$F0                  ;
CODE_03F889:        STA $0801,y               ;
CODE_03F88C:        STA $0901,y               ;
CODE_03F88F:        INY                       ;
CODE_03F890:        BNE CODE_03F889           ;
CODE_03F892:        JSR CODE_03F98F           ;
CODE_03F895:        LDX #$00                  ;
CODE_03F897:        LDA #$30                  ;
CODE_03F899:        STA $E2                   ;
CODE_03F89B:        JSR CODE_03F922           ;
CODE_03F89E:        CMP #$02                  ;
CODE_03F8A0:        BNE CODE_03F8DB           ;
CODE_03F8A2:        LDA $1C,x                 ;
CODE_03F8A4:        CMP #$16                  ;
CODE_03F8A6:        BEQ CODE_03F8CD           ;
CODE_03F8A8:        PHY                       ;
CODE_03F8A9:        PHX                       ;
CODE_03F8AA:        JSR CODE_03EF1E           ;
CODE_03F8AD:        PLX                       ;
CODE_03F8AE:        LDA $0B46,x               ;
CODE_03F8B1:        TAY                       ;
CODE_03F8B2:        LDA #$00                  ;
CODE_03F8B4:        STA $0D00,y               ;
CODE_03F8B7:        STA $0D04,y               ;
CODE_03F8BA:        STA $0D08,y               ;
CODE_03F8BD:        STA $0D0C,y               ;
CODE_03F8C0:        STA $0D10,y               ;
CODE_03F8C3:        STA $0D14,y               ;
CODE_03F8C6:        LDA $43                   ;
CODE_03F8C8:        STA $79,x                 ;
CODE_03F8CA:        PLY                       ;
CODE_03F8CB:        BRA CODE_03F8D2           ;

CODE_03F8CD:        JSR CODE_03FA6E           ;
CODE_03F8D0:        BRA CODE_03F915           ;

CODE_03F8D2:        LDA $1C,x                 ;
CODE_03F8D4:        CMP #$12                  ;
CODE_03F8D6:        BNE CODE_03F8DB           ;
CODE_03F8D8:        JSR CODE_03FA17           ;
CODE_03F8DB:        INY                       ;
CODE_03F8DC:        INX                       ;
CODE_03F8DD:        CPX #$05                  ;
CODE_03F8DF:        BNE CODE_03F89B           ;
CODE_03F8E1:        LDA $5C                   ;
CODE_03F8E3:        CMP #$03                  ;
CODE_03F8E5:        BEQ CODE_03F915           ;
CODE_03F8E7:        LDX #$00                  ;
CODE_03F8E9:        LDA $0902,x               ;
CODE_03F8EC:        CMP $0906,x               ;
CODE_03F8EF:        BNE CODE_03F903           ;
CODE_03F8F1:        LDA $0903,x               ;
CODE_03F8F4:        AND #$3F                  ;
CODE_03F8F6:        STA $0903,x               ;
CODE_03F8F9:        LDA $0907,x               ;
CODE_03F8FC:        ORA #$40                  ;
CODE_03F8FE:        STA $0907,x               ;
CODE_03F901:        BRA CODE_03F909           ;

CODE_03F903:        LDA $0907,x               ;
CODE_03F906:        STA $0903,x               ;
CODE_03F909:        INX                       ;
CODE_03F90A:        INX                       ;
CODE_03F90B:        INX                       ;
CODE_03F90C:        INX                       ;
CODE_03F90D:        INX                       ;
CODE_03F90E:        INX                       ;
CODE_03F90F:        INX                       ;
CODE_03F910:        INX                       ;
CODE_03F911:        CPX #$00                  ;
CODE_03F913:        BNE CODE_03F8E9           ;
CODE_03F915:        LDX #$04                  ;
CODE_03F917:        STZ $1C,x                 ;
CODE_03F919:        DEX                       ;
CODE_03F91A:        BPL CODE_03F917           ;
CODE_03F91C:        STZ $0E85                 ;
CODE_03F91F:        PLY                       ;
CODE_03F920:        PLX                       ;
CODE_03F921:        RTS                       ;

CODE_03F922:        STZ $0E85                 ;
CODE_03F925:        LDA $07FC                 ;"More difficult quest" flag. Sets 076A too and shows star next to world
CODE_03F928:        BEQ CODE_03F933           ;
CODE_03F92A:        PHX                       ;
CODE_03F92B:        TYX                       ;
CODE_03F92C:        LDA $05EC41,x             ;
CODE_03F930:        PLX                       ;
CODE_03F931:        BRA CODE_03F93A           ;

CODE_03F933:        PHX                       ;
CODE_03F934:        TYX                       ;
CODE_03F935:        LDA $05EB9C,x             ;
CODE_03F939:        PLX                       ;
CODE_03F93A:        CMP #$FF                  ;
CODE_03F93C:        BNE CODE_03F948           ;
CODE_03F93E:        LDA $E2                   ;
CODE_03F940:        CLC                       ;
CODE_03F941:        ADC #$18                  ;
CODE_03F943:        STA $E2                   ;
CODE_03F945:        JMP CODE_03F98E           ;

CODE_03F948:        STZ $00BC,x               ;
CODE_03F94B:        STA $1C,x                 ;
CODE_03F94D:        CMP #$0E                  ;
CODE_03F94F:        BEQ CODE_03F965           ;
CODE_03F951:        CMP #$0F                  ;
CODE_03F953:        BEQ CODE_03F965           ;
CODE_03F955:        CMP #$10                  ;
CODE_03F957:        BEQ CODE_03F965           ;
CODE_03F959:        CMP #$14                  ;
CODE_03F95B:        BEQ CODE_03F965           ;
CODE_03F95D:        CMP #$08                  ;
CODE_03F95F:        BEQ CODE_03F965           ;
CODE_03F961:        LDA #$98                  ;
CODE_03F963:        BRA CODE_03F967           ;

CODE_03F965:        LDA #$88                  ;
CODE_03F967:        STA $0238,x               ;
CODE_03F96A:        LDA $E2                   ;
CODE_03F96C:        CLC                       ;
CODE_03F96D:        ADC #$18                  ;
CODE_03F96F:        STA $E2                   ;
CODE_03F971:        STA $03AE                 ;
CODE_03F974:        LDA #$20                  ;
CODE_03F976:        STA $0257,x               ;
CODE_03F979:        PHX                       ;
CODE_03F97A:        TYX                       ;
CODE_03F97B:        LDA $05EB9C,x             ;
CODE_03F97F:        PLX                       ;
CODE_03F980:        CMP #$05                  ;
CODE_03F982:        BNE CODE_03F98A           ;
CODE_03F984:        STA $0E85                 ;
CODE_03F987:        JSR CODE_03FB36           ;
CODE_03F98A:        LDA #$02                  ;
CODE_03F98C:        STA $47,x                 ;
CODE_03F98E:        RTS                       ;

CODE_03F98F:        LDA $075F                 ;
CODE_03F992:        ASL A                     ;
CODE_03F993:        ASL A                     ;
CODE_03F994:        CLC                       ;
CODE_03F995:        ADC $075F                 ;
CODE_03F998:        CLC                       ;
CODE_03F999:        ADC $0760                 ;
CODE_03F99C:        TAX                       ;
CODE_03F99D:        LDA $05ECE6,x             ;
CODE_03F9A1:        STA $0E22                 ;
CODE_03F9A4:        LDA $05ED13,x             ;
CODE_03F9A8:        STA $0E21                 ;
CODE_03F9AB:        LDA $0E21                 ;
CODE_03F9AE:        ASL A                     ;
CODE_03F9AF:        ASL A                     ;
CODE_03F9B0:        CLC                       ;
CODE_03F9B1:        ADC $0E21                 ;
CODE_03F9B4:        TAY                       ;
CODE_03F9B5:        LDA $071C                 ;
CODE_03F9B8:        STA $9C                   ;
CODE_03F9BA:        LDA $071A                 ;
CODE_03F9BD:        STA $9D                   ;
CODE_03F9BF:        INC $9B                   ;
CODE_03F9C1:        STZ $071A                 ;
CODE_03F9C4:        STZ $073F                 ;
CODE_03F9C7:        STZ $0EFD                 ;
CODE_03F9CA:        STZ $0EFE                 ;
CODE_03F9CD:        STZ $0EEE                 ;
CODE_03F9D0:        STZ $0EEF                 ;
CODE_03F9D3:        STZ $210D                 ;
CODE_03F9D6:        STZ $210D                 ;
CODE_03F9D9:        STZ $210F                 ;
CODE_03F9DC:        STZ $210F                 ;
CODE_03F9DF:        STZ $2111                 ;
CODE_03F9E2:        STZ $2111                 ;
CODE_03F9E5:        RTS                       ;

DATA_03F9E6:        db $DC,$DC,$DD,$DD,$DE,$DE              ;immediate data table

CODE_03F9EC:        LDA DATA_03F9E6                 ;
CODE_03F9EF:        STA $0962                 ;
CODE_03F9F2:        LDA DATA_03F9E6+1                 ;
CODE_03F9F5:        STA $0966                 ;
CODE_03F9F8:        LDA DATA_03F9E6+2                 ;
CODE_03F9FB:        STA $096A                 ;
CODE_03F9FE:        LDA DATA_03F9E6+3                 ;
CODE_03FA01:        STA $096E                 ;
CODE_03FA04:        LDA DATA_03F9E6+4                 ;
CODE_03FA07:        STA $0972                 ;
CODE_03FA0A:        LDA DATA_03F9E6+5                 ;
CODE_03FA0D:        STA $0976                 ;
CODE_03FA10:        RTS                       ;

DATA_03FA11:        db $B9,$B8,$BB,$BA,$BC,$BC

CODE_03FA17:        PHY                       ;
CODE_03FA18:        LDA #$03                  ;
CODE_03FA1A:        STA $03                   ;
CODE_03FA1C:        LDA $0238,x               ;
CODE_03FA1F:        SEC                       ;
CODE_03FA20:        SBC #$28                  ;
CODE_03FA22:        STA $0238,x               ;
CODE_03FA25:        STZ $E3                   ;
CODE_03FA27:        LDY #$00                  ;
CODE_03FA29:        LDA $03AE                 ;
CODE_03FA2C:        STA $0990,y               ;
CODE_03FA2F:        CLC                       ;
CODE_03FA30:        ADC #$08                  ;
CODE_03FA32:        STA $0994,y               ;
CODE_03FA35:        LDA $0238,x               ;
CODE_03FA38:        STA $0991,y               ;
CODE_03FA3B:        STA $0995,y               ;
CODE_03FA3E:        CLC                       ;
CODE_03FA3F:        ADC #$08                  ;
CODE_03FA41:        STA $0238,x               ;
CODE_03FA44:        LDA #$2A                  ;
CODE_03FA46:        STA $0993,y               ;
CODE_03FA49:        STA $0997,y               ;
CODE_03FA4C:        PHX                       ;
CODE_03FA4D:        LDX $E3                   ;
CODE_03FA4F:        LDA DATA_03FA11,x               ;
CODE_03FA52:        STA $0992,y               ;
CODE_03FA55:        LDA DATA_03FA11+1,x               ;
CODE_03FA58:        STA $0996,y               ;
CODE_03FA5B:        INC $E3                   ;
CODE_03FA5D:        INC $E3                   ;
CODE_03FA5F:        PLX                       ;
CODE_03FA60:        INY                       ;
CODE_03FA61:        INY                       ;
CODE_03FA62:        INY                       ;
CODE_03FA63:        INY                       ;
CODE_03FA64:        INY                       ;
CODE_03FA65:        INY                       ;
CODE_03FA66:        INY                       ;
CODE_03FA67:        INY                       ;
CODE_03FA68:        DEC $03                   ;
CODE_03FA6A:        BNE CODE_03FA29           ;
CODE_03FA6C:        PLY                       ;
CODE_03FA6D:        RTS                       ;

CODE_03FA6E:        PHY                       ;
CODE_03FA6F:        PHX                       ;
CODE_03FA70:        LDA $0238,x               ;
CODE_03FA73:        STA $03B9                 ;
CODE_03FA76:        SEC                       ;
CODE_03FA77:        SBC #$08                  ;
CODE_03FA79:        STA $03B9                 ;
CODE_03FA7C:        LDA $03AE                 ;
CODE_03FA7F:        SEC                       ;
CODE_03FA80:        SBC #$10                  ;
CODE_03FA82:        STA $03AE                 ;
CODE_03FA85:        LDY #$90                  ;
CODE_03FA87:        LDX #$00                  ;
CODE_03FA89:        LDA $03AE                 ;
CODE_03FA8C:        STA $0900,y               ;
CODE_03FA8F:        STA $0908,y               ;
CODE_03FA92:        CLC                       ;
CODE_03FA93:        ADC #$08                  ;
CODE_03FA95:        STA $0910,y               ;
CODE_03FA98:        CLC                       ;
CODE_03FA99:        ADC #$08                  ;
CODE_03FA9B:        STA $0904,y               ;
CODE_03FA9E:        STA $090C,y               ;
CODE_03FAA1:        STA $0914,y               ;
CODE_03FAA4:        LDA $03B9                 ;
CODE_03FAA7:        STA $0901,y               ;
CODE_03FAAA:        STA $0905,y               ;
CODE_03FAAD:        CLC                       ;
CODE_03FAAE:        ADC #$10                  ;
CODE_03FAB0:        STA $0909,y               ;
CODE_03FAB3:        STA $090D,y               ;
CODE_03FAB6:        SEC                       ;
CODE_03FAB7:        SBC #$18                  ;
CODE_03FAB9:        STA $0911,y               ;
CODE_03FABC:        STA $0915,y               ;
CODE_03FABF:        LDA #$00                  ;
CODE_03FAC1:        STA $0C10,y               ;
CODE_03FAC4:        STA $0C14,y               ;
CODE_03FAC7:        LDA #$02                  ;
CODE_03FAC9:        STA $0D00,y               ;
CODE_03FACC:        STA $0D04,y               ;
CODE_03FACF:        STA $0D08,y               ;
CODE_03FAD2:        STA $0D0C,y               ;
CODE_03FAD5:        LDA #$61                  ;
CODE_03FAD7:        STA $0903,y               ;
CODE_03FADA:        STA $0907,y               ;
CODE_03FADD:        STA $090B,y               ;
CODE_03FAE0:        STA $090F,y               ;
CODE_03FAE3:        STA $0913,y               ;
CODE_03FAE6:        STA $0917,y               ;
CODE_03FAE9:        LDA #$C5                  ;
CODE_03FAEB:        STA $0912,y               ;
CODE_03FAEE:        LDA #$C4                  ;
CODE_03FAF0:        STA $0916,y               ;
CODE_03FAF3:        LDA #$EE                  ;
CODE_03FAF5:        STA $0902,y               ;
CODE_03FAF8:        LDA #$C0                  ;
CODE_03FAFA:        STA $0906,y               ;
CODE_03FAFD:        LDA #$E2                  ;
CODE_03FAFF:        STA $090A,y               ;
CODE_03FB02:        LDA #$E0                  ;
CODE_03FB04:        STA $090E,y               ;
CODE_03FB07:        LDA #$70                  ;
CODE_03FB09:        STA $09F0                 ;
CODE_03FB0C:        LDA #$78                  ;
CODE_03FB0E:        STA $09F4                 ;
CODE_03FB11:        LDA #$98                  ;
CODE_03FB13:        STA $09F1                 ;
CODE_03FB16:        STA $09F5                 ;
CODE_03FB19:        LDA #$86                  ;
CODE_03FB1B:        STA $09F2                 ;
CODE_03FB1E:        LDA #$87                  ;
CODE_03FB20:        STA $09F6                 ;
CODE_03FB23:        LDA #$21                  ;
CODE_03FB25:        STA $09F3                 ;
CODE_03FB28:        STA $09F7                 ;
CODE_03FB2B:        LDA #$02                  ;
CODE_03FB2D:        STA $0DF0                 ;
CODE_03FB30:        STA $0DF4                 ;
CODE_03FB33:        PLX                       ;
CODE_03FB34:        PLY                       ;
CODE_03FB35:        RTS                       ;

CODE_03FB36:        LDA $0238,x               ;
CODE_03FB39:        SEC                       ;
CODE_03FB3A:        SBC #$0A                  ;
CODE_03FB3C:        STA $0881                 ;
CODE_03FB3F:        LDA $03AE                 ;
CODE_03FB42:        CLC                       ;
CODE_03FB43:        ADC #$03                  ;
CODE_03FB45:        STA $0880                 ;
CODE_03FB48:        LDA #$2A                  ;
CODE_03FB4A:        STA $0883                 ;
CODE_03FB4D:        LDA #$44                  ;
CODE_03FB4F:        STA $0882                 ;
CODE_03FB52:        LDA #$02                  ;
CODE_03FB54:        STA $0C80                 ;
CODE_03FB57:        RTS                       ;

CODE_03FB58:        STA $07                   ;
CODE_03FB5A:        LDA $03AD                 ;
CODE_03FB5D:        STA $0755                 ;
CODE_03FB60:        STA $05                   ;
CODE_03FB62:        LDA $03B8                 ;
CODE_03FB65:        STA $02                   ;
CODE_03FB67:        LDA $0202                 ;
CODE_03FB6A:        STA $03                   ;
CODE_03FB6C:        JSL CODE_04D800           ;
CODE_03FB70:        LDA $06D5                 ;
CODE_03FB73:        AND #$07                  ;
CODE_03FB75:        TAX                       ;
CODE_03FB76:        LDA $0256                 ;
CODE_03FB79:        STA $04                   ;
CODE_03FB7B:        LDY $0B45                 ;
CODE_03FB7E:        LDA DATA_03F63E,x               ;
CODE_03FB81:        STA $00                   ;
CODE_03FB83:        LDA DATA_03F63E+1,x               ;
CODE_03FB86:        JSR CODE_03F30E           ;
CODE_03FB89:        DEC $07                   ;
CODE_03FB8B:        BNE CODE_03FB7E           ;
CODE_03FB8D:        LDA $05                   ;
CODE_03FB8F:        CMP #$F8                  ;
CODE_03FB91:        BCC CODE_03FBA1           ;
CODE_03FB93:        LDA #$01                  ;
CODE_03FB95:        STA $0CD0                 ;
CODE_03FB98:        STA $0CD8                 ;
CODE_03FB9B:        STA $0CE0                 ;
CODE_03FB9E:        STA $0CE8                 ;
CODE_03FBA1:        RTS                       ;

CODE_03FBA2:        LDA $28                   ;
CODE_03FBA4:        CMP #$03                  ;
CODE_03FBA6:        BEQ CODE_03FBF6           ;
CODE_03FBA8:        CMP #$02                  ;
CODE_03FBAA:        BEQ CODE_03FBE8           ;
CODE_03FBAC:        CMP #$01                  ;
CODE_03FBAE:        BNE CODE_03FBC0           ;
CODE_03FBB0:        LDA $0704                 ;
CODE_03FBB3:        BNE CODE_03FC01           ;
CODE_03FBB5:        LDY #$06                  ;
CODE_03FBB7:        LDA $0714                 ;
CODE_03FBBA:        BNE CODE_03FBDE           ;
CODE_03FBBC:        LDY #$00                  ;
CODE_03FBBE:        BRA CODE_03FBDE           ;

CODE_03FBC0:        LDY #$06                  ;
CODE_03FBC2:        LDA $0714                 ;
CODE_03FBC5:        BNE CODE_03FBDE           ;
CODE_03FBC7:        LDY #$02                  ;
CODE_03FBC9:        LDA $5D                   ;
CODE_03FBCB:        ORA $0C                   ;
CODE_03FBCD:        BEQ CODE_03FBDE           ;
CODE_03FBCF:        LDA $0700                 ;
CODE_03FBD2:        CMP #$09                  ;
CODE_03FBD4:        BCC CODE_03FBEF           ;
CODE_03FBD6:        LDA $46                   ;
CODE_03FBD8:        AND $0202                 ;
CODE_03FBDB:        BNE CODE_03FBEF           ;
CODE_03FBDD:        INY                       ;
CODE_03FBDE:        JSR CODE_03FC41           ;
CODE_03FBE1:        STZ $070D                 ;
CODE_03FBE4:        LDA DATA_03F62E,y               ;
CODE_03FBE7:        RTS                       ;

CODE_03FBE8:        LDY #$04                  ;
CODE_03FBEA:        JSR CODE_03FC41           ;
CODE_03FBED:        BRA CODE_03FC13           ;

CODE_03FBEF:        LDY #$04                  ;
CODE_03FBF1:        JSR CODE_03FC41           ;
CODE_03FBF4:        BRA CODE_03FC19           ;

CODE_03FBF6:        LDY #$05                  ;
CODE_03FBF8:        LDA $A0                   ;
CODE_03FBFA:        BEQ CODE_03FBDE           ;
CODE_03FBFC:        JSR CODE_03FC41           ;
CODE_03FBFF:        BRA CODE_03FC1D           ;

CODE_03FC01:        LDY #$01                  ;
CODE_03FC03:        JSR CODE_03FC41           ;
CODE_03FC06:        LDA $078A                 ;
CODE_03FC09:        ORA $070D                 ;
CODE_03FC0C:        BNE CODE_03FC19           ;
CODE_03FC0E:        LDA $0A                   ;
CODE_03FC10:        ASL A                     ;
CODE_03FC11:        BCS CODE_03FC19           ;
CODE_03FC13:        LDA $070D                 ;
CODE_03FC16:        JMP CODE_03FC80           ;

CODE_03FC19:        LDA #$03                  ;
CODE_03FC1B:        BRA CODE_03FC1F           ;

CODE_03FC1D:        LDA #$02                  ;
CODE_03FC1F:        STA $00                   ;
CODE_03FC21:        JSR CODE_03FC13           ;
CODE_03FC24:        PHA                       ;
CODE_03FC25:        LDA $0789                 ;
CODE_03FC28:        BNE CODE_03FC3F           ;
CODE_03FC2A:        LDA $070C                 ;
CODE_03FC2D:        STA $0789                 ;
CODE_03FC30:        LDA $070D                 ;
CODE_03FC33:        CLC                       ;
CODE_03FC34:        ADC #$01                  ;
CODE_03FC36:        CMP $00                   ;
CODE_03FC38:        BCC CODE_03FC3C           ;
CODE_03FC3A:        LDA #$00                  ;
CODE_03FC3C:        STA $070D                 ;
CODE_03FC3F:        PLA                       ;
CODE_03FC40:        RTS                       ;

CODE_03FC41:        LDA $0754                 ;
CODE_03FC44:        BEQ CODE_03FC4B           ;
CODE_03FC46:        TYA                       ;
CODE_03FC47:        CLC                       ;
CODE_03FC48:        ADC #$08                  ;
CODE_03FC4A:        TAY                       ;
CODE_03FC4B:        RTS                       ;

DATA_03FC4C:        db $00,$01,$00,$01,$00,$01,$02,$00
                    db $01,$02,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00

CODE_03FC60:        LDY $070D                 ;
CODE_03FC63:        LDA $09                   ;
CODE_03FC65:        AND #$03                  ;
CODE_03FC67:        BNE CODE_03FC76           ;
CODE_03FC69:        INY                       ;
CODE_03FC6A:        CPY #$0A                  ;
CODE_03FC6C:        BCC CODE_03FC73           ;
CODE_03FC6E:        LDY #$00                  ;
CODE_03FC70:        STY $070B                 ;
CODE_03FC73:        STY $070D                 ;
CODE_03FC76:        LDA $0754                 ;
CODE_03FC79:        BNE CODE_03FC87           ;
CODE_03FC7B:        LDA DATA_03FC4C,y               ;
CODE_03FC7E:        LDY #$0F                  ;
CODE_03FC80:        ASL A                     ;
CODE_03FC81:        ASL A                     ;
CODE_03FC82:        ASL A                     ;
CODE_03FC83:        ADC DATA_03F62E,y               ;
CODE_03FC86:        RTS                       ;

CODE_03FC87:        TYA                       ;
CODE_03FC88:        CLC                       ;
CODE_03FC89:        ADC #$0A                  ;
CODE_03FC8B:        TAX                       ;
CODE_03FC8C:        LDY #$09                  ;
CODE_03FC8E:        LDA DATA_03FC4C,x               ;
CODE_03FC91:        BNE CODE_03FC95           ;
CODE_03FC93:        LDY #$01                  ;
CODE_03FC95:        LDA DATA_03F62E,y               ;
CODE_03FC98:        RTS                       ;

CODE_03FC99:        LDY $0B45                 ;
CODE_03FC9C:        LDA $0F                   ;
CODE_03FC9E:        CMP #$0B                  ;
CODE_03FCA0:        BEQ CODE_03FCB5           ;
CODE_03FCA2:        LDA $06D5                 ;
CODE_03FCA5:        CMP #$50                  ;
CODE_03FCA7:        BEQ CODE_03FCB5           ;
CODE_03FCA9:        CMP #$B8                  ;
CODE_03FCAB:        BEQ CODE_03FCB5           ;
CODE_03FCAD:        CMP #$C0                  ;
CODE_03FCAF:        BEQ CODE_03FCB5           ;
CODE_03FCB1:        CMP #$C8                  ;
CODE_03FCB3:        BNE CODE_03FCB5           ;
CODE_03FCB5:        RTS                       ;

CODE_03FCB6:        LDA $0E4E                 ;
CODE_03FCB9:        BEQ CODE_03FD12           ;
CODE_03FCBB:        LDX #$00                  ;
CODE_03FCBD:        LDA $08D0,x               ;
CODE_03FCC0:        STA $09E0,x               ;
CODE_03FCC3:        INX                       ;
CODE_03FCC4:        CPX #$20                  ;
CODE_03FCC6:        BNE CODE_03FCBD           ;
CODE_03FCC8:        LDA #$F0                  ;
CODE_03FCCA:        STA $08D1                 ;
CODE_03FCCD:        STA $08D5                 ;
CODE_03FCD0:        STA $08D9                 ;
CODE_03FCD3:        STA $08DD                 ;
CODE_03FCD6:        STA $08E1                 ;
CODE_03FCD9:        STA $08E5                 ;
CODE_03FCDC:        STA $08E9                 ;
CODE_03FCDF:        STA $08ED                 ;
CODE_03FCE2:        LDA $0CD0                 ;
CODE_03FCE5:        STA $0DE0                 ;
CODE_03FCE8:        LDA $0CD4                 ;
CODE_03FCEB:        STA $0DE4                 ;
CODE_03FCEE:        LDA $0CD8                 ;
CODE_03FCF1:        STA $0DE8                 ;
CODE_03FCF4:        LDA $0CDC                 ;
CODE_03FCF7:        STA $0DEC                 ;
CODE_03FCFA:        LDA $0CE0                 ;
CODE_03FCFD:        STA $0DF0                 ;
CODE_03FD00:        LDA $0CE4                 ;
CODE_03FD03:        STA $0DF4                 ;
CODE_03FD06:        LDA $0CE8                 ;
CODE_03FD09:        STA $0DF8                 ;
CODE_03FD0C:        LDA $0CEC                 ;
CODE_03FD0F:        STA $0DFC                 ;
CODE_03FD12:        RTS                       ;

CODE_03FD13:        LDX #$00                  ;
CODE_03FD15:        LDY #$00                  ;
CODE_03FD17:        JMP CODE_03FD2A           ;

CODE_03FD1A:        LDY #$01                  ;
CODE_03FD1C:        JSR CODE_03FDC4           ;
CODE_03FD1F:        LDY #$03                  ;
CODE_03FD21:        BRA CODE_03FD2A           ;

CODE_03FD23:        LDY #$00                  ;
CODE_03FD25:        JSR CODE_03FDC4           ;
CODE_03FD28:        LDY #$02                  ;
CODE_03FD2A:        JSR CODE_03FD58           ;
CODE_03FD2D:        LDX $9E                   ;
CODE_03FD2F:        RTS                       ;

CODE_03FD30:        LDY #$02                  ;
CODE_03FD32:        JSR CODE_03FDC4           ;
CODE_03FD35:        LDY #$06                  ;
CODE_03FD37:        BRA CODE_03FD2A           ;

CODE_03FD39:        LDA #$01                  ;X = sprite index.
CODE_03FD3B:        LDY #$01                  ;
CODE_03FD3D:        JMP CODE_03FD4C           ;

CODE_03FD40:        LDA #$0D                  ;
CODE_03FD42:        LDY #$04                  ;
CODE_03FD44:        JSR CODE_03FD4C           ;
CODE_03FD47:        INX                       ;
CODE_03FD48:        INX                       ;
CODE_03FD49:        LDA #$0D                  ;
CODE_03FD4B:        INY                       ;
CODE_03FD4C:        STX $00                   ;
CODE_03FD4E:        CLC                       ;
CODE_03FD4F:        ADC $00                   ;
CODE_03FD51:        TAX                       ;
CODE_03FD52:        JSR CODE_03FD58           ;
CODE_03FD55:        LDX $9E                   ;
CODE_03FD57:        RTS                       ;

CODE_03FD58:        LDA $0237,x               ;
CODE_03FD5B:        STA $03B8,y               ;
CODE_03FD5E:        LDA $0E                   ;
CODE_03FD60:        BEQ CODE_03FD6E           ;
CODE_03FD62:        LDA $0219                 ;
CODE_03FD65:        BNE CODE_03FD6E           ;
CODE_03FD67:        LDA #$28                  ;
CODE_03FD69:        STA $0219                 ;
CODE_03FD6C:        BRA CODE_03FD80           ;

CODE_03FD6E:        LDA $0219,x               ;
CODE_03FD71:        SEC                       ;
CODE_03FD72:        SBC $071C                 ;
CODE_03FD75:        STA $03AD,y               ;
CODE_03FD78:        LDA $78,x                 ;
CODE_03FD7A:        SBC $071A                 ;
CODE_03FD7D:        STA $03C1,y               ;
CODE_03FD80:        PHY                       ;
CODE_03FD81:        TYA                       ;
CODE_03FD82:        ASL A                     ;
CODE_03FD83:        TAY                       ;
CODE_03FD84:        LDA $0219,x               ;
CODE_03FD87:        STA $E4                   ;
CODE_03FD89:        LDA $0078,x               ;
CODE_03FD8C:        STA $E5                   ;
CODE_03FD8E:        REP #$20                  ;
CODE_03FD90:        LDA $E4                   ;
CODE_03FD92:        SEC                       ;
CODE_03FD93:        SBC $42                   ;
CODE_03FD95:        STA $0E87,y               ;
CODE_03FD98:        SEP #$20                  ;
CODE_03FD9A:        PLY                       ;
CODE_03FD9B:        RTS                       ;

CODE_03FD9C:        LDX #$00                  ;
CODE_03FD9E:        LDY #$00                  ;
CODE_03FDA0:        JMP CODE_03FDDB           ;

CODE_03FDA3:        LDY #$00                  ;
CODE_03FDA5:        JSR CODE_03FDC4           ;
CODE_03FDA8:        LDY #$02                  ;
CODE_03FDAA:        JMP CODE_03FDDB           ;

CODE_03FDAD:        LDY #$01                  ;
CODE_03FDAF:        JSR CODE_03FDC4           ;
CODE_03FDB2:        LDY #$03                  ;
CODE_03FDB4:        JMP CODE_03FDDB           ;

CODE_03FDB7:        LDY #$02                  ;
CODE_03FDB9:        JSR CODE_03FDC4           ;
CODE_03FDBC:        LDY #$06                  ;
CODE_03FDBE:        JMP CODE_03FDDB           ;

DATA_03FDC1:        db $0B,$1A,$11

CODE_03FDC4:        TXA
CODE_03FDC5:        CLC                       ;
CODE_03FDC6:        ADC DATA_03FDC1,y               ;
CODE_03FDC9:        TAX                       ;
CODE_03FDCA:        RTS                       ;

CODE_03FDCB:        LDA #$01                  ;
CODE_03FDCD:        LDY #$01                  ;
CODE_03FDCF:        BRA CODE_03FDD5           ;

CODE_03FDD1:        LDA #$0D                  ;
CODE_03FDD3:        LDY #$04                  ;
CODE_03FDD5:        STX $00                   ;Store current sprite index into $00
CODE_03FDD7:        CLC                       ;
CODE_03FDD8:        ADC $00                   ;
CODE_03FDDA:        TAX                       ;
CODE_03FDDB:        TYA                       ;
CODE_03FDDC:        PHA                       ;
CODE_03FDDD:        JSR CODE_03FDFF           ;
CODE_03FDE0:        ASL A                     ;
CODE_03FDE1:        ASL A                     ;
CODE_03FDE2:        ASL A                     ;
CODE_03FDE3:        ASL A                     ;
CODE_03FDE4:        ORA $00                   ;
CODE_03FDE6:        STA $00                   ;
CODE_03FDE8:        PLA                       ;
CODE_03FDE9:        TAY                       ;
CODE_03FDEA:        LDA $00                   ;
CODE_03FDEC:        STA $03D0,y               ;
CODE_03FDEF:        LSR A                     ;
CODE_03FDF0:        LSR A                     ;
CODE_03FDF1:        PHA                       ;
CODE_03FDF2:        AND #$01                  ;
CODE_03FDF4:        STA $0E08,y               ;
CODE_03FDF7:        PLA                       ;
CODE_03FDF8:        LSR A                     ;
CODE_03FDF9:        STA $0E00,y               ;
CODE_03FDFC:        LDX $9E                   ;
CODE_03FDFE:        RTS                       ;

CODE_03FDFF:        JSR CODE_03FE1E           ;
CODE_03FE02:        LSR A                     ;
CODE_03FE03:        LSR A                     ;
CODE_03FE04:        LSR A                     ;
CODE_03FE05:        LSR A                     ;
CODE_03FE06:        STA $00                   ;
CODE_03FE08:        JMP CODE_03FE62           ;

DATA_03FE0B:        db $7F,$3F,$1F,$0F,$07,$03,$01,$00
                    db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_03FE1B:        db $07,$0F,$07

CODE_03FE1E:        STX $04                   ;
CODE_03FE20:        LDY #$01                  ;
CODE_03FE22:        LDA $071C,y               ;
CODE_03FE25:        SEC                       ;
CODE_03FE26:        SBC $0219,x               ;
CODE_03FE29:        STA $07                   ;
CODE_03FE2B:        LDA $071A,y               ;
CODE_03FE2E:        SBC $78,x                 ;
CODE_03FE30:        LDX DATA_03FE1B,y         ;
CODE_03FE33:        CMP #$00                  ;
CODE_03FE35:        BMI CODE_03FE47           ;
CODE_03FE37:        LDX DATA_03FE1B+1,y       ;
CODE_03FE3A:        CMP #$01                  ;
CODE_03FE3C:        BPL CODE_03FE47           ;
CODE_03FE3E:        LDA #$38                  ;
CODE_03FE40:        STA $06                   ;
CODE_03FE42:        LDA #$08                  ;
CODE_03FE44:        JSR CODE_03FE97           ;
CODE_03FE47:        LDA DATA_03FE0B,x         ;
CODE_03FE4A:        LDX $04                   ;
CODE_03FE4C:        CMP #$00                  ;
CODE_03FE4E:        BNE CODE_03FE53           ;
CODE_03FE50:        DEY                       ;
CODE_03FE51:        BPL CODE_03FE22           ;
CODE_03FE53:        RTS                       ;

DATA_03FE54:        db $00,$08,$0C,$0E,$0F,$07,$03,$01
                    db $00

DATA_03FE5D:        db $04,$00,$04

DATA_03FE60:        db $FF,$00

CODE_03FE62:        STX $04                   ;
CODE_03FE64:        LDY #$01                  ;
CODE_03FE66:        LDA DATA_03FE60,y         ;
CODE_03FE69:        SEC                       ;
CODE_03FE6A:        SBC $0237,x               ;
CODE_03FE6D:        STA $07                   ;
CODE_03FE6F:        LDA #$01                  ;
CODE_03FE71:        SBC $BB,x                 ;
CODE_03FE73:        LDX DATA_03FE5D,y         ;
CODE_03FE76:        CMP #$00                  ;
CODE_03FE78:        BMI CODE_03FE8A           ;
CODE_03FE7A:        LDX DATA_03FE5D+1,y       ;
CODE_03FE7D:        CMP #$01                  ;
CODE_03FE7F:        BPL CODE_03FE8A           ;
CODE_03FE81:        LDA #$20                  ;
CODE_03FE83:        STA $06                   ;
CODE_03FE85:        LDA #$04                  ;
CODE_03FE87:        JSR CODE_03FE97           ;
CODE_03FE8A:        LDA DATA_03FE54,x        ;
CODE_03FE8D:        LDX $04                   ;
CODE_03FE8F:        CMP #$00                  ;
CODE_03FE91:        BNE CODE_03FE96           ;
CODE_03FE93:        DEY                       ;
CODE_03FE94:        BPL CODE_03FE66           ;
CODE_03FE96:        RTS                       ;

CODE_03FE97:        STA $05                   ;
CODE_03FE99:        LDA $07                   ;
CODE_03FE9B:        CMP $06                   ;
CODE_03FE9D:        BCS CODE_03FEAB           ;
CODE_03FE9F:        LSR A                     ;
CODE_03FEA0:        LSR A                     ;
CODE_03FEA1:        LSR A                     ;
CODE_03FEA2:        AND #$07                  ;
CODE_03FEA4:        CPY #$01                  ;
CODE_03FEA6:        BCS CODE_03FEAA           ;
CODE_03FEA8:        ADC $05                   ;
CODE_03FEAA:        TAX                       ;
CODE_03FEAB:        RTS                       ;

CODE_03FEAC:        LDA $79,x                 ;
CODE_03FEAE:        STA $0E15                 ;
CODE_03FEB1:        LDA $021A,x               ;
CODE_03FEB4:        STA $0E14                 ;
CODE_03FEB7:        RTS                       ;

CODE_03FEB8:        LDA $0E17                 ;
CODE_03FEBB:        STA $0E15                 ;
CODE_03FEBE:        LDA $0E16                 ;
CODE_03FEC1:        STA $0E14                 ;
CODE_03FEC4:        RTS                       ;

CODE_03FEC5:        LDA #$06                  ;
CODE_03FEC7:        STA $04                   ;
CODE_03FEC9:        REP #$20                  ;
CODE_03FECB:        LDA $0E14                 ;
CODE_03FECE:        SEC                       ;
CODE_03FECF:        SBC $42                   ;
CODE_03FED1:        STA $0E12                 ;
CODE_03FED4:        SEP #$20                  ;
CODE_03FED6:        LDA $0E13                 ;
CODE_03FED9:        BNE CODE_03FEDF           ;
CODE_03FEDB:        LDA #$00                  ;
CODE_03FEDD:        BRA CODE_03FEE1           ;

CODE_03FEDF:        LDA #$01                  ;
CODE_03FEE1:        STA $0D00,y               ;
CODE_03FEE4:        RTS                       ;

CODE_03FEE5:        REP #$20                  ;
CODE_03FEE7:        LDA $0E14                 ;
CODE_03FEEA:        SEC                       ;
CODE_03FEEB:        SBC $42                   ;
CODE_03FEED:        STA $0E12                 ;
CODE_03FEF0:        SEP #$20                  ;
CODE_03FEF2:        LDA $0E13                 ;
CODE_03FEF5:        BNE CODE_03FEFB           ;
CODE_03FEF7:        LDA #$00                  ;
CODE_03FEF9:        BRA CODE_03FEFD           ;

CODE_03FEFB:        LDA #$01                  ;
CODE_03FEFD:        STA $0D10,y               ;
CODE_03FF00:        STA $0D08,y               ;
CODE_03FF03:        STA $0D00,y               ;
CODE_03FF06:        RTS                       ;

CODE_03FF07:        REP #$20                  ;
CODE_03FF09:        LDA $0E14                 ;
CODE_03FF0C:        SEC                       ;
CODE_03FF0D:        SBC $42                   ;
CODE_03FF0F:        STA $0E12                 ;
CODE_03FF12:        SEP #$20                  ;
CODE_03FF14:        LDA $0E13                 ;
CODE_03FF17:        BNE CODE_03FF1D           ;
CODE_03FF19:        LDA #$00                  ;
CODE_03FF1B:        BRA CODE_03FF1F           ;

CODE_03FF1D:        LDA #$01                  ;
CODE_03FF1F:        STA $0C08,y               ;
CODE_03FF22:        STA $0C00,y               ;
CODE_03FF25:        RTS                       ;

CODE_03FF26:        STA $0C00,y               ;
CODE_03FF29:        STA $0C08,y               ;
CODE_03FF2C:        RTS                       ;

CODE_03FF2D:        REP #$20                  ;
CODE_03FF2F:        PLA                       ;
CODE_03FF30:        CLC                       ;
CODE_03FF31:        ADC $04                   ;
CODE_03FF33:        STA $04                   ;
CODE_03FF35:        PHA                       ;
CODE_03FF36:        SEP #$20                  ;
CODE_03FF38:        LDA #$01                  ;
CODE_03FF3A:        RTS                       ;

CODE_03FF3B:        REP #$20                  ;
CODE_03FF3D:        LDA $0E14                 ;
CODE_03FF40:        CLC                       ;
CODE_03FF41:        ADC #$0008                ;
CODE_03FF44:        STA $0E14                 ;
CODE_03FF47:        SEP #$20                  ;
CODE_03FF49:        INY                       ;
CODE_03FF4A:        INY                       ;
CODE_03FF4B:        INY                       ;
CODE_03FF4C:        INY                       ;
CODE_03FF4D:        RTS                       ;

CODE_03FF4E:        LDA $03                   ;
CODE_03FF50:        LSR A                     ;
CODE_03FF51:        LSR A                     ;
CODE_03FF52:        LDA $00                   ;
CODE_03FF54:        BCC CODE_03FF62           ;
CODE_03FF56:        STA $0806,y               ;
CODE_03FF59:        LDA $01                   ;
CODE_03FF5B:        STA $0802,y               ;
CODE_03FF5E:        LDA #$40                  ;
CODE_03FF60:        BNE CODE_03FF6C           ;
CODE_03FF62:        STA $0802,y               ;
CODE_03FF65:        LDA $01                   ;
CODE_03FF67:        STA $0806,y               ;
CODE_03FF6A:        LDA #$00                  ;
CODE_03FF6C:        ORA $04                   ;
CODE_03FF6E:        STA $0803,y               ;
CODE_03FF71:        STA $0807,y               ;
CODE_03FF74:        LDA $02                   ;
CODE_03FF76:        STA $0801,y               ;
CODE_03FF79:        STA $0805,y               ;
CODE_03FF7C:        LDA $05                   ;
CODE_03FF7E:        STA $0800,y               ;
CODE_03FF81:        CLC                       ;
CODE_03FF82:        ADC #$08                  ;
CODE_03FF84:        STA $0804,y               ;
CODE_03FF87:        LDA $02                   ;
CODE_03FF89:        CLC                       ;
CODE_03FF8A:        ADC #$08                  ;
CODE_03FF8C:        STA $02                   ;
CODE_03FF8E:        TYA                       ;
CODE_03FF8F:        CLC                       ;
CODE_03FF90:        ADC #$08                  ;
CODE_03FF92:        TAY                       ;
CODE_03FF93:        INX                       ;
CODE_03FF94:        INX                       ;
CODE_03FF95:        RTS                       ;

CODE_03FF96:        LDA $03                   ;
CODE_03FF98:        LSR A                     ;
CODE_03FF99:        LSR A                     ;
CODE_03FF9A:        LDA $00                   ;
CODE_03FF9C:        BCC CODE_03FFAA           ;
CODE_03FF9E:        STA $0906,y               ;
CODE_03FFA1:        LDA $01                   ;
CODE_03FFA3:        STA $0902,y               ;
CODE_03FFA6:        LDA #$40                  ;
CODE_03FFA8:        BNE CODE_03FFB4           ;
CODE_03FFAA:        STA $0902,y               ;
CODE_03FFAD:        LDA $01                   ;
CODE_03FFAF:        STA $0906,y               ;
CODE_03FFB2:        LDA #$00                  ;
CODE_03FFB4:        ORA $04                   ;
CODE_03FFB6:        STA $0903,y               ;
CODE_03FFB9:        STA $0907,y               ;
CODE_03FFBC:        LDA $02                   ;
CODE_03FFBE:        STA $0901,y               ;
CODE_03FFC1:        STA $0905,y               ;
CODE_03FFC4:        LDA $05                   ;
CODE_03FFC6:        STA $0900,y               ;
CODE_03FFC9:        CLC                       ;
CODE_03FFCA:        ADC #$08                  ;
CODE_03FFCC:        STA $0904,y               ;
CODE_03FFCF:        LDA $02                   ;
CODE_03FFD1:        CLC                       ;
CODE_03FFD2:        ADC #$08                  ;
CODE_03FFD4:        STA $02                   ;
CODE_03FFD6:        TYA                       ;
CODE_03FFD7:        CLC                       ;
CODE_03FFD8:        ADC #$08                  ;
CODE_03FFDA:        TAY                       ;
CODE_03FFDB:        INX                       ;
CODE_03FFDC:        INX                       ;
CODE_03FFDD:        RTS                       ;

DATA_03FFDE:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;Seems like empty space
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;VICTORY! BANK 3 FINISHED!
                    db $FF,$FF                              ;
