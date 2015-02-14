;The Presents screen, the Hall screen and the game selection
;as well as other miscellaneous stuff like setting up the SPC-700

CODE_008000:        78            SEI                       ; Set interput flag
CODE_008001:        9C 00 42      STZ $4200                 ; Disable NMI, IRQ, and joypad read
CODE_008004:        9C 0C 42      STZ $420C                 ; HDMA Disabled
CODE_008007:        9C 0B 42      STZ $420B                 ; DMA Disabled
CODE_00800A:        9C 40 21      STZ $2140                 ;\
CODE_00800D:        9C 41 21      STZ $2141                 ; | SPC ports disabled.
CODE_008010:        9C 42 21      STZ $2142                 ; |
CODE_008013:        9C 43 21      STZ $2143                 ;/
CODE_008016:        A9 80         LDA #$80                  ;\ Forced blank
CODE_008018:        8D 00 21      STA $2100                 ;/
CODE_00801B:        18            CLC                       ;\ Native mode
CODE_00801C:        FB            XCE                       ;/
CODE_00801D:        C2 38         REP #$38                  ;16-bit AXY, not decimal mode
CODE_00801F:        A9 00 00      LDA #$0000                ;\ Direct page register is now $0000
CODE_008022:        5B            TCD                       ;/
CODE_008023:        A9 FF 01      LDA #$01FF                ;\ The stack pointer is now $00:01FF
CODE_008026:        1B            TCS                       ;/
CODE_008027:        E2 30         SEP #$30                  ; 8-bit AXY
CODE_008029:        A9 00         LDA #$00                  ;\
CODE_00802B:        48            PHA                       ; | Set program bank: Bank $00
CODE_00802C:        AB            PLB                       ;/
CODE_00802D:        AD 3F 21      LDA $213F                 ;\ This ROM is NTSC
CODE_008030:        89 10         BIT #$10                  ; | If the SNES is a NTSC SNES 
CODE_008032:        F0 07         BEQ CODE_00803B           ;/ Continue
CODE_008034:        4C C7 93      JMP CODE_0093C7           ; Otherwise, show error message (incompatible SNES)

CODE_008037:        5C 41 96 00   JML CODE_009641           ;Show error message (Pirated game)

CODE_00803B:        20 B6 83      JSR CODE_0083B6           ;
CODE_00803E:        A9 00         LDA #$00                  ;
CODE_008040:        8F F0 1F 70   STA $701FF0               ;
CODE_008044:        8F F2 1F 70   STA $701FF2               ;
CODE_008048:        C2 20         REP #$20                  ;16-bit A
CODE_00804A:        A9 00 80      LDA #$8000                ;
CODE_00804D:        8D 50 01      STA $0150                 ;
CODE_008050:        8D 52 01      STA $0152                 ;
CODE_008053:        9C 54 01      STZ $0154                 ;
CODE_008056:        E2 20         SEP #$20                  ;8-bit A
CODE_008058:        A9 81         LDA #$81                  ;\
CODE_00805A:        8D 00 42      STA $4200                 ;/Enable NMI and joypad.
CODE_00805D:        8D 1C 00      STA $001C                 ;Store timer of Mario logo (#$81 too)
CODE_008060:        20 1B 8C      JSR CODE_008C1B           ;
CODE_008063:        EA            NOP                       ;\No operation. Likely overwriting a
CODE_008064:        EA            NOP                       ;/deprecated program operation
CODE_008065:        A9 AA         LDA #$AA                  ;\ Copier check
CODE_008067:        8F 00 20 70   STA $702000               ; |
CODE_00806B:        CF 00 00 70   CMP $700000               ; |If $700000 is not $AA
CODE_00806F:        D0 C6         BNE CODE_008037           ;/Then the game is pirated, show error msg.
CODE_008071:        A9 55         LDA #$55                  ;\ Another copier check
CODE_008073:        8F 00 20 70   STA $702000               ; |
CODE_008077:        CF 00 00 70   CMP $700000               ; |If $700000 is not $55
CODE_00807B:        D0 BA         BNE CODE_008037           ;/Then the game is pirated, show error msg.
CODE_00807D:        AD 22 01      LDA $0122                 ;\ Wait for NMI
CODE_008080:        F0 FB         BEQ CODE_00807D           ;/
CODE_008082:        20 CC 86      JSR CODE_0086CC           ;
CODE_008085:        58            CLI                       ;Enable IRQ
CODE_008086:        E6 FD         INC $FD                   ;Frame counter increment
CODE_008088:        A6 E0         LDX $E0                   ;\ Game mode as index
CODE_00808A:        BD 3D 88      LDA $883D,x               ; |If flag to clear OAM is set, indexed by
CODE_00808D:        F0 03         BEQ CODE_008092           ; |game mode
CODE_00808F:        20 19 87      JSR CODE_008719           ;/ <Then clear the OAM.
CODE_008092:        22 C7 80 00   JSL GameIndex             ; Update the game
CODE_008096:        A6 E0         LDX $E0                   ;\
CODE_008098:        BD 3D 88      LDA $883D,x               ; |If flag to update OAM sizes is set
CODE_00809B:        F0 03         BEQ CODE_0080A0           ; |
CODE_00809D:        20 73 87      JSR CODE_008773           ;/ Update OAM sizes
CODE_0080A0:        9C 22 01      STZ $0122                 ;
CODE_0080A3:        4C 7D 80      JMP CODE_00807D           ; Game loop

DATA_0080A6:        db $C0,$D8,$9B,$CE,$40,$A5,$C5,$F9
                    db $A0,$2B,$00                     ;low byte portion of indirect pointers

DATA_0080B1:        db $9B,$A2,$A3,$B1,$B4,$B2,$A2,$89
                    db $81,$82,$00                     ;high byte portion of indirect pointers

DATA_0080BC:        db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00                     ;bank portion of indirect pointers

GameIndex:
CODE_0080C7:        A6 E0         LDX $E0                   ;\
CODE_0080C9:        BF A6 80 00   LDA.l DATA_0080A6,x       ; |
CODE_0080CD:        85 03         STA $03                   ; |Store indirect pointers.
CODE_0080CF:        BF B1 80 00   LDA.l DATA_0080B1,x       ; |
CODE_0080D3:        85 04         STA $04                   ; |
CODE_0080D5:        BF BC 80 00   LDA.l DATA_0080BC,x       ; |
CODE_0080D9:        85 05         STA $05                   ;/
CODE_0080DB:        DC 03 00      JML [$0003]               ;Jump to the indirect game pointers.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This is where it will jump to with $E0's values:
;;
;; #$00 = $009BC0                  ; Nintendo Presents Screen + Title screen
;; #$01 = $00A2D8                  ; Set up game select screen
;; #$02 = $00A39B                  ; Game select screen
;; #$03 = $00B1CE                  ; Open erase file box
;; #$04 = $00B440                  ; Erase file box
;; #$05 = $00B2A5                  ; Close erase file box
;; #$06 = $00A2C5                  ; Fade out of game select screen
;; #$07 = $0089F9                  ; Setup game
;; #$08 = $0081A0                  ; Setup game
;; #$09 = $00822B                  ; Bring up game-play demo
;; #$0A = $000000                  ; (null)

CODE_0080DE:        22 2E 88 00   JSL ForceBlank           ;Forced blank + HDMA-Disable
CODE_0080E2:        9C 00 42      STZ $4200                 ;Disable interrupts
CODE_0080E5:        A9 00         LDA #$00                  ;\
CODE_0080E7:        48            PHA                       ; |Set program bank to $00
CODE_0080E8:        AB            PLB                       ;/
CODE_0080E9:        78            SEI                       ;Set interrupt flag
CODE_0080EA:        9C 00 42      STZ $4200                 ;\No interrupts and HDMA
CODE_0080ED:        9C 0C 42      STZ $420C                 ;/
CODE_0080F0:        C2 20         REP #$20                  ;\
CODE_0080F2:        A9 FF 01      LDA #$01FF                ; |Stack pointer: $01FF
CODE_0080F5:        1B            TCS                       ; |
CODE_0080F6:        E2 20         SEP #$20                  ;/
CODE_0080F8:        64 60         STZ $60                   ;\
CODE_0080FA:        64 61         STZ $61                   ; |
CODE_0080FC:        64 62         STZ $62                   ; |Clear sound effects and music
CODE_0080FE:        64 63         STZ $63                   ; |
CODE_008100:        9C 40 21      STZ $2140                 ; |
CODE_008103:        9C 41 21      STZ $2141                 ; |
CODE_008106:        9C 42 21      STZ $2142                 ; |
CODE_008109:        9C 43 21      STZ $2143                 ; |
CODE_00810C:        A9 F0         LDA #$F0                  ; |(Mute SFX panel 2?)
CODE_00810E:        8D 41 21      STA $2141                 ;/
CODE_008111:        20 B6 83      JSR CODE_0083B6           ;
CODE_008114:        64 E0         STZ $E0                   ;
CODE_008116:        A9 03         LDA #$03                  ;
CODE_008118:        85 E1         STA $E1                   ;
CODE_00811A:        A9 01         LDA #$01                  ;
CODE_00811C:        8D 00 01      STA $0100                 ;
CODE_00811F:        A9 01         LDA #$01                  ;
CODE_008121:        8D 24 01      STA $0124                 ;
CODE_008124:        A9 00         LDA #$00                  ;
CODE_008126:        8F F2 1F 70   STA $701FF2               ;
CODE_00812A:        8F 00 FF 7F   STA $7FFF00               ;
CODE_00812E:        A9 81         LDA #$81                  ;
CODE_008130:        8D 00 42      STA $4200                 ;
CODE_008133:        8D 1C 00      STA $001C                 ;
CODE_008136:        4C 7D 80      JMP CODE_00807D           ;

CODE_008139:        22 2E 88 00   JSL ForceBlank           ;Forced blank + HDMA-Disable
CODE_00813D:        9C 00 42      STZ $4200                 ;Disable interrupts
CODE_008140:        A9 00         LDA #$00                  ;\
CODE_008142:        48            PHA                       ; |Set program bank to $00
CODE_008143:        AB            PLB                       ;/
CODE_008144:        78            SEI                       ;Set interrupt flag
CODE_008145:        9C 00 42      STZ $4200                 ;\Disable interrupts and HDMA
CODE_008148:        9C 0C 42      STZ $420C                 ;/
CODE_00814B:        C2 20         REP #$20                  ;\
CODE_00814D:        A9 FF 01      LDA #$01FF                ; |Stack pointer: $01FF
CODE_008150:        1B            TCS                       ; |
CODE_008151:        E2 20         SEP #$20                  ;/
CODE_008153:        64 60         STZ $60                   ;\
CODE_008155:        64 61         STZ $61                   ; |
CODE_008157:        64 62         STZ $62                   ; |
CODE_008159:        64 63         STZ $63                   ; |
CODE_00815B:        9C 40 21      STZ $2140                 ; |Clear sound effects and music
CODE_00815E:        9C 41 21      STZ $2141                 ; |
CODE_008161:        9C 42 21      STZ $2142                 ; |
CODE_008164:        9C 43 21      STZ $2143                 ; |
CODE_008167:        A9 F0         LDA #$F0                  ; |Mute SFX panel 2?
CODE_008169:        8D 41 21      STA $2141                 ;/
CODE_00816C:        20 B6 83      JSR CODE_0083B6           ;
CODE_00816F:        64 E0         STZ $E0                   ;
CODE_008171:        A9 03         LDA #$03                  ;
CODE_008173:        85 E1         STA $E1                   ;
CODE_008175:        A9 01         LDA #$01                  ;
CODE_008177:        8D 00 01      STA $0100                 ;
CODE_00817A:        A9 01         LDA #$01                  ;
CODE_00817C:        8D 24 01      STA $0124                 ;
CODE_00817F:        A9 00         LDA #$00                  ;
CODE_008181:        8F F2 1F 70   STA $701FF2               ;
CODE_008185:        8F 00 FF 7F   STA $7FFF00               ;
CODE_008189:        A9 81         LDA #$81                  ;
CODE_00818B:        8D 00 42      STA $4200                 ;
CODE_00818E:        8D 1C 00      STA $001C                 ;
CODE_008191:        4C 7D 80      JMP CODE_00807D           ;

DATA_008194:        db $00,$00,$00,$00        ;Indirect game pointers.

DATA_008198:        db $80,$80,$80,$80        ;$038000, $0D8000, $118000, $208000

DATA_00819C:        db $03,$0D,$11,$20        ;SMB1, SMBTLL, SMB2, SMB3

CODE_0081A0:        A2 0F         LDX #$0F                  ;
CODE_0081A2:        B5 70         LDA $70,x                 ;
CODE_0081A4:        9F 90 04 70   STA $700490,x             ;
CODE_0081A8:        CA            DEX                       ;
CODE_0081A9:        10 F7         BPL CODE_0081A2           ;
CODE_0081AB:        A5 D1         LDA $D1                   ;
CODE_0081AD:        8F 0E 00 70   STA $70000E               ;
CODE_0081B1:        A5 D0         LDA $D0                   ;
CODE_0081B3:        8F 0F 00 70   STA $70000F               ;
CODE_0081B7:        C2 20         REP #$20                  ;
CODE_0081B9:        A9 00 00      LDA #$0000                ;
CODE_0081BC:        85 00         STA $00                   ;
CODE_0081BE:        A9 00 00      LDA #$0000                ;
CODE_0081C1:        A0 7F         LDY #$7F                  ;
CODE_0081C3:        22 8E 86 00   JSL CODE_00868E           ;
CODE_0081C7:        E2 20         SEP #$20                  ;
CODE_0081C9:        A5 D0         LDA $D0                   ;
CODE_0081CB:        AA            TAX                       ;
CODE_0081CC:        1A            INC A                     ;
CODE_0081CD:        0A            ASL A                     ;
CODE_0081CE:        8F 00 FF 7F   STA $7FFF00               ;
CODE_0081D2:        BF 94 81 00   LDA $008194,x             ;
CODE_0081D6:        85 03         STA $03                   ;
CODE_0081D8:        BF 98 81 00   LDA $008198,x             ;
CODE_0081DC:        85 04         STA $04                   ;
CODE_0081DE:        BF 9C 81 00   LDA $00819C,x             ;
CODE_0081E2:        85 05         STA $05                   ;
CODE_0081E4:        C2 20         REP #$20                  ;
CODE_0081E6:        A9 F0 00      LDA #$00F0                ;
CODE_0081E9:        85 00         STA $00                   ;
CODE_0081EB:        A9 10 00      LDA #$0010                ;
CODE_0081EE:        A0 00         LDY #$00                  ;
CODE_0081F0:        22 8E 86 00   JSL CODE_00868E           ;
CODE_0081F4:        A9 00 1E      LDA #$1E00                ;
CODE_0081F7:        85 00         STA $00                   ;
CODE_0081F9:        A9 00 02      LDA #$0200                ;
CODE_0081FC:        A0 00         LDY #$00                  ;
CODE_0081FE:        22 8E 86 00   JSL CODE_00868E           ;
CODE_008202:        E2 20         SEP #$20                  ;
CODE_008204:        AB            PLB                       ;
CODE_008205:        AB            PLB                       ;
CODE_008206:        AB            PLB                       ;
CODE_008207:        22 49 A8 00   JSL CODE_00A849           ;Load savegame into RAM $7FFB00 area.
CODE_00820B:        A9 00         LDA #$00                  ;
CODE_00820D:        8F F8 1F 70   STA $701FF8               ;
CODE_008211:        8F F9 1F 70   STA $701FF9               ;
CODE_008215:        C2 30         REP #$30                  ;
CODE_008217:        AF 04 00 70   LDA $700004               ;
CODE_00821B:        AA            TAX                       ;
CODE_00821C:        E2 20         SEP #$20                  ;
CODE_00821E:        BF 10 00 70   LDA $700010,x             ;
CODE_008222:        8F 02 FF 7F   STA $7FFF02               ;
CODE_008226:        E2 10         SEP #$10                  ;
CODE_008228:        DC 03 00      JML [$0003]               ;

CODE_00822B:        AF F0 1F 70   LDA $701FF0               ;\ Get game to show
CODE_00822F:        48            PHA                       ;/
CODE_008230:        1A            INC A                     ;\
CODE_008231:        29 03         AND #$03                  ; | Do  different game next time
CODE_008233:        8F F0 1F 70   STA $701FF0               ;/
CODE_008237:        64 D1         STZ $D1                   ;
CODE_008239:        A9 01         LDA #$01                  ;\ We are doing the game-play exmaple video
CODE_00823B:        8F F2 1F 70   STA $701FF2               ;/
CODE_00823F:        A2 0F         LDX #$0F                  ;\
CODE_008241:        B5 70         LDA $70,x                 ; |
CODE_008243:        9F 90 04 70   STA $700490,x             ; | ?? Seems to write $00 to SRAM
CODE_008247:        CA            DEX                       ; |
CODE_008248:        10 F7         BPL CODE_008241           ;/
CODE_00824A:        C2 20         REP #$20                  ;
CODE_00824C:        A9 00 00      LDA #$0000                ;\
CODE_00824F:        85 00         STA $00                   ; |
CODE_008251:        A9 00 00      LDA #$0000                ; | Clear $7F:0000
CODE_008254:        A0 7F         LDY #$7F                  ; |
CODE_008256:        22 8E 86 00   JSL CODE_00868E           ;/
CODE_00825A:        E2 20         SEP #$20                  ;
CODE_00825C:        68            PLA                       ;\ Get game to show
CODE_00825D:        85 00         STA $00                   ;/
CODE_00825F:        AA            TAX                       ; A->X
CODE_008260:        1A            INC A                     ; +1
CODE_008261:        0A            ASL A                     ; *2
CODE_008262:        8F 00 FF 7F   STA $7FFF00               ; Store here
CODE_008266:        BF 94 81 00   LDA $008194,x             ;\
CODE_00826A:        85 03         STA $03                   ; |
CODE_00826C:        BF 98 81 00   LDA $008198,x             ; | Get pointers
CODE_008270:        85 04         STA $04                   ; |
CODE_008272:        BF 9C 81 00   LDA $00819C,x             ; |
CODE_008276:        85 05         STA $05                   ;/
CODE_008278:        C2 20         REP #$20                  ;
CODE_00827A:        A9 F0 00      LDA #$00F0                ;\
CODE_00827D:        85 00         STA $00                   ; |
CODE_00827F:        A9 10 00      LDA #$0010                ; | Clear $00:00F0
CODE_008282:        A0 00         LDY #$00                  ; |
CODE_008284:        22 8E 86 00   JSL CODE_00868E           ;/
CODE_008288:        A9 00 1E      LDA #$1E00                ;\
CODE_00828B:        85 00         STA $00                   ; |
CODE_00828D:        A9 00 02      LDA #$0200                ; | Clear $00:0200
CODE_008290:        A0 00         LDY #$00                  ; |
CODE_008292:        22 8E 86 00   JSL CODE_00868E           ;/
CODE_008296:        A9 00 80      LDA #$8000                ;
CODE_008299:        E2 20         SEP #$20                  ;
CODE_00829B:        AB            PLB                       ;\
CODE_00829C:        AB            PLB                       ; | Pull return address
CODE_00829D:        AB            PLB                       ;/
CODE_00829E:        C2 30         REP #$30                  ;
CODE_0082A0:        A5 00         LDA $00                   ;
CODE_0082A2:        29 03 00      AND #$0003                ;
CODE_0082A5:        0A            ASL A                     ;
CODE_0082A6:        AA            TAX                       ;
CODE_0082A7:        BD D3 8D      LDA $8DD3,x               ;
CODE_0082AA:        A8            TAY                       ;
CODE_0082AB:        A2 00 00      LDX #$0000                ;
CODE_0082AE:        8A            TXA                       ;
CODE_0082AF:        E2 20         SEP #$20                  ;
CODE_0082B1:        B9 E3 8D      LDA $8DE3,y               ;
CODE_0082B4:        9F 00 FB 7F   STA $7FFB00,x             ;
CODE_0082B8:        C8            INY                       ;
CODE_0082B9:        E8            INX                       ;
CODE_0082BA:        E0 06 01      CPX #$0106                ;
CODE_0082BD:        D0 F2         BNE CODE_0082B1           ;
CODE_0082BF:        A9 00         LDA #$00                  ;
CODE_0082C1:        8F 00 FB 7F   STA $7FFB00               ;
CODE_0082C5:        8F 01 FB 7F   STA $7FFB01               ;
CODE_0082C9:        E2 30         SEP #$30                  ;
CODE_0082CB:        DC 03 00      JML [$0003]               ; Jump to pointer

PNTR_0082CE:        dw CODE_0082FF                          ;\
                    dw CODE_00834E                          ; |
                    dw CODE_008353                          ; | NMI Pointers, based on current game.
                    dw CODE_008358                          ; | 
                    dw CODE_00835D                          ;/

NMI:
CODE_0082D8:        78            SEI                       ;Set interrupt flag
CODE_0082D9:        C2 30         REP #$30                  ;\
CODE_0082DB:        48            PHA                       ; |
CODE_0082DC:        DA            PHX                       ; |Preserve 'everything', set direct page reg to $0000
CODE_0082DD:        5A            PHY                       ; |
CODE_0082DE:        0B            PHD                       ; |Set program bank to current bank
CODE_0082DF:        A9 00 00      LDA #$0000                ; |
CODE_0082E2:        5B            TCD                       ; |
CODE_0082E3:        8B            PHB                       ; |
CODE_0082E4:        4B            PHK                       ; |
CODE_0082E5:        AB            PLB                       ; |
CODE_0082E6:        A5 00         LDA $00                   ; |PEI ($00) would've worked too.
CODE_0082E8:        48            PHA                       ; |Preserve RAM address $00-$01 (scratch ram)
CODE_0082E9:        E2 30         SEP #$30                  ;/
CODE_0082EB:        AF 00 FF 7F   LDA $7FFF00               ;\
CODE_0082EF:        AA            TAX                       ; |Jump to NMI routines of the current game
CODE_0082F0:        FC CE 82      JSR (PNTR_0082CE,x)       ;/
CODE_0082F3:        C2 30         REP #$30                  ;\
CODE_0082F5:        68            PLA                       ; |Recover scratch RAM
CODE_0082F6:        8D 00 00      STA $0000                 ; |
CODE_0082F9:        AB            PLB                       ; |
CODE_0082FA:        2B            PLD                       ; |
CODE_0082FB:        7A            PLY                       ; |Recover 'everything'
CODE_0082FC:        FA            PLX                       ; |
CODE_0082FD:        68            PLA                       ; |
CODE_0082FE:        40            RTI                       ;/

CODE_0082FF:        A9 01         LDA #$01                  ;\
CODE_008301:        EB            XBA                       ; |Set direct page to $0100
CODE_008302:        A9 00         LDA #$00                  ; |
CODE_008304:        5B            TCD                       ;/
CODE_008305:        AD 10 42      LDA $4210                 ;vital read to enable NMI
CODE_008308:        A5 00         LDA $00                   ;\
CODE_00830A:        8D 00 21      STA $2100                 ;/Copy of reg $2100 to $0100 (Brightness)
CODE_00830D:        9C 0C 42      STZ $420C                 ;Disable HDMA
CODE_008310:        A5 22         LDA $22                   ;\
CODE_008312:        D0 09         BNE CODE_00831D           ; |
CODE_008314:        E6 22         INC $22                   ; |
CODE_008316:        0B            PHD                       ; |Flag to do some general purpose DMA?
CODE_008317:        20 C3 88      JSR CODE_0088C3           ; |When $0122 is set, do some DMA transfers I guess
CODE_00831A:        E2 30         SEP #$30                  ; |
CODE_00831C:        2B            PLD                       ;/
CODE_00831D:        20 1A 84      JSR CODE_00841A           ;Set up hardware addresses
CODE_008320:        20 CC 87      JSR CODE_0087CC           ;Do something SFX panels and music related
CODE_008323:        A2 81         LDX #$81                  ;\
CODE_008325:        A5 24         LDA $24                   ; |
CODE_008327:        F0 17         BEQ CODE_008340           ; |If $7E0124 is set, let the IRQ cover the whole screen
CODE_008329:        29 FE         AND #$FE                  ; |by disabling NMI or something.
CODE_00832B:        85 21         STA $21                   ; |
CODE_00832D:        AD 11 42      LDA $4211                 ; |
CODE_008330:        A5 25         LDA $25                   ; |
CODE_008332:        8D 09 42      STA $4209                 ; |
CODE_008335:        9C 0A 42      STZ $420A                 ; |
CODE_008338:        9C 07 42      STZ $4207                 ; |
CODE_00833B:        9C 08 42      STZ $4208                 ; |
CODE_00833E:        A2 A1         LDX #$A1                  ; |
CODE_008340:        8E 00 42      STX $4200                 ;/
CODE_008343:        A5 00         LDA $00                   ;\$7E0100 = brightness
CODE_008345:        8D 00 21      STA $2100                 ;/
CODE_008348:        A5 20         LDA $20                   ;\$7E0120 = HDMA enable
CODE_00834A:        8D 0C 42      STA $420C                 ;/
CODE_00834D:        60            RTS                       ;

CODE_00834E:        22 03 80 03   JSL CODE_038003           ;\NMI for SMB1
CODE_008352:        60            RTS                       ;/

CODE_008353:        22 03 80 0D   JSL CODE_0D8003           ;\NMI for SMB:TLL
CODE_008357:        60            RTS                       ;/

CODE_008358:        22 03 80 11   JSL CODE_118003           ;\NMI for SMB2
CODE_00835C:        60            RTS                       ;/

CODE_00835D:        22 03 80 20   JSL CODE_208003           ;\NMI for SMB3
CODE_008361:        60            RTS                       ;/

PNTR_008362:        dw CODE_00838B                          ;\
                    dw CODE_0083A2                          ; |
                    dw CODE_0083A7                          ; | IRQ Pointers, based on current game.
                    dw CODE_0083AC                          ; |
                    dw CODE_0083B1                          ;/

IRQ:
CODE_00836C:        C2 30         REP #$30                  ;\
CODE_00836E:        48            PHA                       ; |
CODE_00836F:        DA            PHX                       ; |Preserve "everything", set direct page to $0000
CODE_008370:        5A            PHY                       ; |
CODE_008371:        0B            PHD                       ; |
CODE_008372:        A9 00 00      LDA #$0000                ; |
CODE_008375:        5B            TCD                       ; |
CODE_008376:        8B            PHB                       ; |
CODE_008377:        4B            PHK                       ; |
CODE_008378:        AB            PLB                       ; |
CODE_008379:        E2 30         SEP #$30                  ;/
CODE_00837B:        AF 00 FF 7F   LDA $7FFF00               ;\
CODE_00837F:        AA            TAX                       ; |Execute IRQ based on current game
CODE_008380:        FC 62 83      JSR (PNTR_008362,x)       ;/
CODE_008383:        C2 30         REP #$30                  ;\
CODE_008385:        AB            PLB                       ; |
CODE_008386:        2B            PLD                       ; |Recover "everything" and return
CODE_008387:        7A            PLY                       ; |
CODE_008388:        FA            PLX                       ; |
CODE_008389:        68            PLA                       ; |
CODE_00838A:        40            RTI                       ;/

CODE_00838B:        AD 11 42      LDA $4211                 ;\Menu IRQ routine. Wait until IRQ occurs
CODE_00838E:        10 11         BPL CODE_0083A1           ;/
CODE_008390:        2C 12 42      BIT $4212                 ;\Wait for H-blank
CODE_008393:        50 FB         BVC CODE_008390           ;/
CODE_008395:        AD 14 02      LDA $0214                 ;\ 
CODE_008398:        8D 0D 21      STA $210D                 ; |Set BG1 H-scroll to normal
CODE_00839B:        AD 15 02      LDA $0215                 ; |
CODE_00839E:        8D 0D 21      STA $210D                 ; |
CODE_0083A1:        60            RTS                       ;/

CODE_0083A2:        22 06 80 03   JSL CODE_038006           ;\IRQ for SMB1
CODE_0083A6:        60            RTS                       ;/

CODE_0083A7:        22 06 80 0D   JSL CODE_0D8006           ;\IRQ for SMB:TLL
CODE_0083AB:        60            RTS                       ;/

CODE_0083AC:        22 06 80 11   JSL CODE_118006           ;\IRQ for SMB2
CODE_0083B0:        60            RTS                       ;/

CODE_0083B1:        22 06 80 20   JSL CODE_208006           ;\IRQ for SMB3
CODE_0083B5:        60            RTS                       ;/

CODE_0083B6:        20 4F 8A      JSR CODE_008A4F           ;Upload SPC engine + audio data of hall and menu screen
CODE_0083B9:        C2 20         REP #$20                  ;16-bit A. 8-bit XY.
CODE_0083BB:        A9 50 01      LDA #$0150                ;\ Size: $0150
CODE_0083BE:        85 00         STA $00                   ;/
CODE_0083C0:        A9 00 00      LDA #$0000                ;\ Destination: $00:0000
CODE_0083C3:        A8            TAY                       ;/
CODE_0083C4:        22 8E 86 00   JSL CODE_00868E           ; Clear RAM
CODE_0083C8:        A9 00 1E      LDA #$1E00                ;\ Size: $1E00
CODE_0083CB:        85 00         STA $00                   ;/
CODE_0083CD:        A9 00 02      LDA #$0200                ;\ Destination: $00:0200
CODE_0083D0:        A8            TAY                       ;/
CODE_0083D1:        22 8E 86 00   JSL CODE_00868E           ; Clear RAM
CODE_0083D5:        A9 00 E0      LDA #$E000                ;\ Size: $E000
CODE_0083D8:        85 00         STA $00                   ;/
CODE_0083DA:        A9 00 20      LDA #$2000                ;\ Destination: $7E:2000
CODE_0083DD:        A0 7E         LDY #$7E                  ;/
CODE_0083DF:        22 8E 86 00   JSL CODE_00868E           ; Clear RAM
CODE_0083E3:        A9 00 00      LDA #$0000                ;\ Size: $10000
CODE_0083E6:        85 00         STA $00                   ;/
CODE_0083E8:        A9 00 00      LDA #$0000                ;\ Destination: $7F:0000
CODE_0083EB:        A0 7F         LDY #$7F                  ;/
CODE_0083ED:        22 8E 86 00   JSL CODE_00868E           ; Clear RAM
CODE_0083F1:        A9 00 00      LDA #$0000                ;
CODE_0083F4:        8F 00 80 7F   STA $7F8000               ;
CODE_0083F8:        3A            DEC A                     ;
CODE_0083F9:        8F 02 80 7F   STA $7F8002               ;
CODE_0083FD:        E2 20         SEP #$20                  ;
CODE_0083FF:        A2 00         LDX #$00                  ;
CODE_008401:        22 9C 84 00   JSL CODE_00849C           ;
CODE_008405:        0B            PHD                       ;\
CODE_008406:        A9 01         LDA #$01                  ; |
CODE_008408:        EB            XBA                       ; |Direct page: $0100
CODE_008409:        A9 00         LDA #$00                  ; |
CODE_00840B:        5B            TCD                       ; |
CODE_00840C:        9C 33 21      STZ $2133                 ; |No interlace, overscan, p-hires etc
CODE_00840F:        20 1A 84      JSR CODE_00841A           ; |Setup hardware RAM addresses of menu screens
CODE_008412:        2B            PLD                       ;/Recover direct page
CODE_008413:        A9 01         LDA #$01                  ;\
CODE_008415:        8F C0 0A 00   STA $000AC0               ;/Upload full palette data from $7F:9200 for 1 frame.
CODE_008419:        60            RTS                       ;

CODE_00841A:        C2 10         REP #$10                  ;16-bit XY. This routine sets up hardware regs
CODE_00841C:        A5 01         LDA $01                   ;\DP is $0100 in this case.
CODE_00841E:        8D 01 21      STA $2101                 ;/Object size + Chr address
CODE_008421:        A6 04         LDX $04                   ;\BG1 Tilemap Address and Size
CODE_008423:        8E 07 21      STX $2107                 ;/BG2 Tilemap Address and Size
CODE_008426:        A5 06         LDA $06                   ;\BG3 Tilemap Address and Size
CODE_008428:        8D 09 21      STA $2109                 ;/
CODE_00842B:        A5 07         LDA $07                   ;\BG1 and 2 Character address
CODE_00842D:        8D 0B 21      STA $210B                 ;/
CODE_008430:        A5 08         LDA $08                   ;\
CODE_008432:        8D 0D 21      STA $210D                 ; |BG1 Horizontal Scroll
CODE_008435:        A5 09         LDA $09                   ; |
CODE_008437:        8D 0D 21      STA $210D                 ;/
CODE_00843A:        A5 0A         LDA $0A                   ;\
CODE_00843C:        8D 0E 21      STA $210E                 ; |BG1 Vertical Scroll
CODE_00843F:        A5 0B         LDA $0B                   ; |
CODE_008441:        8D 0E 21      STA $210E                 ;/
CODE_008444:        A5 0C         LDA $0C                   ;\
CODE_008446:        8D 0F 21      STA $210F                 ; |BG2 Horizontal Scroll
CODE_008449:        A5 0D         LDA $0D                   ; |
CODE_00844B:        8D 0F 21      STA $210F                 ;/
CODE_00844E:        A5 0E         LDA $0E                   ;\
CODE_008450:        8D 10 21      STA $2110                 ; |BG2 Vertical Scroll
CODE_008453:        A5 0F         LDA $0F                   ; |
CODE_008455:        8D 10 21      STA $2110                 ;/
CODE_008458:        A5 10         LDA $10                   ;\
CODE_00845A:        8D 11 21      STA $2111                 ; |BG3 Horizontal Scroll
CODE_00845D:        A5 11         LDA $11                   ; |
CODE_00845F:        8D 11 21      STA $2111                 ;/
CODE_008462:        A5 12         LDA $12                   ;\
CODE_008464:        8D 12 21      STA $2112                 ; |BG3 Vertical Scroll
CODE_008467:        A5 13         LDA $13                   ; |
CODE_008469:        8D 12 21      STA $2112                 ;/
CODE_00846C:        A5 1D         LDA $1D                   ;\
CODE_00846E:        8D 32 21      STA $2132                 ; |
CODE_008471:        A5 1E         LDA $1E                   ; |Fixed Color data
CODE_008473:        8D 32 21      STA $2132                 ; |
CODE_008476:        A5 1F         LDA $1F                   ; |
CODE_008478:        8D 32 21      STA $2132                 ;/
CODE_00847B:        A6 17         LDX $17                   ;\Main and Subscreen designation
CODE_00847D:        8E 2C 21      STX $212C                 ;/
CODE_008480:        A6 19         LDX $19                   ;\Window mask designation for main
CODE_008482:        8E 2E 21      STX $212E                 ;/and subscreen
CODE_008485:        A6 14         LDX $14                   ;\Window Mask Settings for BG1/2/3/4
CODE_008487:        8E 23 21      STX $2123                 ;/
CODE_00848A:        A5 16         LDA $16                   ;\Window Mask Settings for OBJ and Color Window
CODE_00848C:        8D 25 21      STA $2125                 ;/
CODE_00848F:        A6 1B         LDX $1B                   ;\Color addition select & CGADSUB
CODE_008491:        8E 30 21      STX $2130                 ;/
CODE_008494:        A6 02         LDX $02                   ;\Screen mode
CODE_008496:        8E 05 21      STX $2105                 ;/
CODE_008499:        E2 10         SEP #$10                  ;8-bit XY
CODE_00849B:        60            RTS                       ;Return.

CODE_00849C:        22 2E 88 00   JSL ForceBlank           ;Forced blank + HDMA-Disable
CODE_0084A0:        0B            PHD                       ;\
CODE_0084A1:        A9 01         LDA #$01                  ; |
CODE_0084A3:        EB            XBA                       ; |Direct page: $0100 
CODE_0084A4:        A9 00         LDA #$00                  ; |
CODE_0084A6:        5B            TCD                       ;/
CODE_0084A7:        8A            TXA                       ;\ If it is not time to upload the game select screen tilemap, branch
CODE_0084A8:        F0 2D         BEQ CODE_0084D7           ;/
CODE_0084AA:        A9 01         LDA #$01                  ;\
CODE_0084AC:        8D 24 01      STA $0124                 ; | Set vertical IRQ timer
CODE_0084AF:        A9 37         LDA #$37                  ; |
CODE_0084B1:        8D 25 01      STA $0125                 ;/
CODE_0084B4:        8B            PHB                       ;\
CODE_0084B5:        DA            PHX                       ; |
CODE_0084B6:        C2 30         REP #$30                  ; |
CODE_0084B8:        AF D0 00 00   LDA $0000D0               ; |Upload the game select tilemap to RAM after
CODE_0084BC:        29 03 00      AND #$0003                ; |closing the file select menu. Upload the tiles
CODE_0084BF:        0A            ASL A                     ; |according to $D0's index so we won't upload the
CODE_0084C0:        AA            TAX                       ; |wrong game's portrait tiles.
CODE_0084C1:        BD 59 85      LDA $8559,x               ; |
CODE_0084C4:        8D 14 02      STA $0214                 ; |
CODE_0084C7:        A2 00 F0      LDX #$F000                ; |
CODE_0084CA:        A0 00 10      LDY #$1000                ; |
CODE_0084CD:        A9 FF 0F      LDA #$0FFF                ; |Source: $02:F000. Dest: $7F:1000
CODE_0084D0:        54 7F 02      MVN $027F                 ; |Used when collapsing a file select menu
CODE_0084D3:        E2 30         SEP #$30                  ; |after selecting a game. 8-bit AXY
CODE_0084D5:        FA            PLX                       ; |
CODE_0084D6:        AB            PLB                       ;/
CODE_0084D7:        BD 73 88      LDA $8873,x               ;
CODE_0084DA:        85 0A         STA $0A                   ;
CODE_0084DC:        BD 75 88      LDA $8875,x               ;
CODE_0084DF:        85 0B         STA $0B                   ;
CODE_0084E1:        BD 5D 88      LDA $885D,x               ;
CODE_0084E4:        85 01         STA $01                   ;
CODE_0084E6:        BD 5F 88      LDA $885F,x               ;
CODE_0084E9:        85 02         STA $02                   ;
CODE_0084EB:        64 03         STZ $03                   ;
CODE_0084ED:        BD 61 88      LDA $8861,x               ;
CODE_0084F0:        85 04         STA $04                   ;
CODE_0084F2:        BD 63 88      LDA $8863,x               ;
CODE_0084F5:        85 05         STA $05                   ;
CODE_0084F7:        BD 65 88      LDA $8865,x               ;
CODE_0084FA:        85 06         STA $06                   ;
CODE_0084FC:        BD 67 88      LDA $8867,x               ;
CODE_0084FF:        85 07         STA $07                   ;
CODE_008501:        BD 69 88      LDA $8869,x               ;
CODE_008504:        8D 0C 21      STA $210C                 ;
CODE_008507:        A9 20         LDA #$20                  ;
CODE_008509:        85 1D         STA $1D                   ;
CODE_00850B:        0A            ASL A                     ;
CODE_00850C:        85 1E         STA $1E                   ;
CODE_00850E:        0A            ASL A                     ;
CODE_00850F:        85 1F         STA $1F                   ;
CODE_008511:        BD 6B 88      LDA $886B,x               ;
CODE_008514:        85 17         STA $17                   ;
CODE_008516:        BD 6D 88      LDA $886D,x               ;
CODE_008519:        85 18         STA $18                   ;
CODE_00851B:        BD 6F 88      LDA $886F,x               ;
CODE_00851E:        85 1B         STA $1B                   ;
CODE_008520:        BD 71 88      LDA $8871,x               ;
CODE_008523:        85 1C         STA $1C                   ;
CODE_008525:        64 19         STZ $19                   ;
CODE_008527:        64 1A         STZ $1A                   ;
CODE_008529:        64 14         STZ $14                   ;
CODE_00852B:        64 15         STZ $15                   ;
CODE_00852D:        64 16         STZ $16                   ;
CODE_00852F:        C2 20         REP #$20                  ;\
CODE_008531:        A9 00 43      LDA #$4300                ; |Set direct page to $4300
CODE_008534:        5B            TCD                       ; |
CODE_008535:        20 65 85      JSR CODE_008565           ; |DMA game select/menu tiles to VRAM
CODE_008538:        2B            PLD                       ;/
CODE_008539:        8A            TXA                       ;\
CODE_00853A:        29 FF 00      AND #$00FF                ; | Index correctly
CODE_00853D:        0A            ASL A                     ; |
CODE_00853E:        AA            TAX                       ;/
CODE_00853F:        A9 00 02      LDA #$0200                ;\ Size: $0200
CODE_008542:        85 00         STA $00                   ;/
CODE_008544:        BD BF 88      LDA $88BF,x               ;\
CODE_008547:        A0 3C         LDY #$3C                  ; | Upload palette
CODE_008549:        85 02         STA $02                   ; |
CODE_00854B:        84 04         STY $04                   ;/
CODE_00854D:        A9 00 92      LDA #$9200                ;\ $7F:9200
CODE_008550:        A0 7F         LDY #$7F                  ;/
CODE_008552:        22 6D 86 00   JSL CODE_00866D           ; Upload to RAM
CODE_008556:        E2 20         SEP #$20                  ;
CODE_008558:        6B            RTL                       ;

DATA_008559:        dw $0000,$0078,$00F8,$017C              ;

PNTR_008561:        dw CODE_00857A                          ;Upload "Hall screen" tiles to VRAM
                    dw CODE_0085FF                          ;Upload "Game select" tiles to VRAM

CODE_008565:        DA            PHX                       ; Upload Hall Screen/Game select tiles
CODE_008566:        A0 80         LDY #$80                  ;\Set VRAM mode
CODE_008568:        8C 15 21      STY $2115                 ;/
CODE_00856B:        A9 01         LDA #$01                  ;\
CODE_00856D:        18            CLC                       ; |DMA mode 01: 2 regs write once
CODE_00856E:        85 00         STA $00                   ;/
CODE_008570:        A0 01         LDY #$01                  ;<DMA Channel #0
CODE_008572:        8A            TXA                       ;\
CODE_008573:        0A            ASL A                     ; |
CODE_008574:        AA            TAX                       ; |
CODE_008575:        FC 61 85      JSR (PNTR_008561,x)       ; |
CODE_008578:        FA            PLX                       ; |
CODE_008579:        60            RTS                       ;/

CODE_00857A:        A9 00 00      LDA #$0000                ;\ DMA 'hall screen' graphics to VRAM
CODE_00857D:        8D 16 21      STA $2116                 ; |DMA to: VRAM $0000-$7FFF
CODE_008580:        A9 00 80      LDA #$8000                ; |
CODE_008583:        85 02         STA $02                   ; |
CODE_008585:        A2 01         LDX #$01                  ; |DMA source: $01:8000
CODE_008587:        86 04         STX $04                   ; |Size: $8000 bytes/32kB
CODE_008589:        A9 00 80      LDA #$8000                ; |
CODE_00858C:        85 05         STA $05                   ; |
CODE_00858E:        8C 0B 42      STY $420B                 ;/
CODE_008591:        A9 00 CC      LDA #$CC00                ;\ Upload animated hall screen tiles of Bowser, princess, toad, luigi's ear to VRAM
CODE_008594:        85 02         STA $02                   ; |DMA to: VRAM $8000-$93FF
CODE_008596:        A2 3D         LDX #$3D                  ; |
CODE_008598:        86 04         STX $04                   ; |
CODE_00859A:        A9 00 14      LDA #$1400                ; |DMA Source: $3D:CC00
CODE_00859D:        85 05         STA $05                   ; |Size: $1400 bytes
CODE_00859F:        8C 0B 42      STY $420B                 ;/
CODE_0085A2:        A9 00 50      LDA #$5000                ;\ Upload triangle fading GFX to VRAM
CODE_0085A5:        8D 16 21      STA $2116                 ; |
CODE_0085A8:        A9 00 90      LDA #$9000                ; |DMA to: VRAM $A000-$A7FF
CODE_0085AB:        85 02         STA $02                   ; |
CODE_0085AD:        A2 02         LDX #$02                  ; |DMA Source: $02:9000
CODE_0085AF:        86 04         STX $04                   ; |Size: $0800 bytes
CODE_0085B1:        A9 00 08      LDA #$0800                ; |
CODE_0085B4:        85 05         STA $05                   ; |
CODE_0085B6:        8C 0B 42      STY $420B                 ;/
CODE_0085B9:        A9 00 60      LDA #$6000                ;\ Upload Nintendo Presents graphics to VRAM
CODE_0085BC:        8D 16 21      STA $2116                 ; |
CODE_0085BF:        A9 00 80      LDA #$8000                ; |
CODE_0085C2:        85 02         STA $02                   ; |DMA to: VRAM $C000-$CFFF
CODE_0085C4:        A2 02         LDX #$02                  ; |
CODE_0085C6:        86 04         STX $04                   ; |DMA Source: $02:8000
CODE_0085C8:        A9 00 10      LDA #$1000                ; |Size: $1000 bytes
CODE_0085CB:        85 05         STA $05                   ; |
CODE_0085CD:        8C 0B 42      STY $420B                 ;/
CODE_0085D0:        A9 00 70      LDA #$7000                ;\ Upload default BG2 hall screen tilemap?
CODE_0085D3:        8D 16 21      STA $2116                 ; |
CODE_0085D6:        A9 00 C0      LDA #$C000                ; |DMA to: VRAM $E000-$E7FF
CODE_0085D9:        85 02         STA $02                   ; |
CODE_0085DB:        A2 02         LDX #$02                  ; |DMA Source: $02:C000
CODE_0085DD:        86 04         STX $04                   ; |DMA Size: $0800 bytes
CODE_0085DF:        A9 00 08      LDA #$0800                ; |
CODE_0085E2:        85 05         STA $05                   ; |
CODE_0085E4:        8C 0B 42      STY $420B                 ;/
CODE_0085E7:        A9 00 78      LDA #$7800                ;\ upload default BG1 hall screen tilemap
CODE_0085EA:        8D 16 21      STA $2116                 ; |
CODE_0085ED:        A9 00 80      LDA #$8000                ; |
CODE_0085F0:        85 02         STA $02                   ; |DMA to: VRAM $F000-$F7FF
CODE_0085F2:        A2 3C         LDX #$3C                  ; |
CODE_0085F4:        86 04         STX $04                   ; |DMA Source: $3C:8000
CODE_0085F6:        A9 00 08      LDA #$0800                ; |DMA Size: $0800 bytes
CODE_0085F9:        85 05         STA $05                   ; |
CODE_0085FB:        8C 0B 42      STY $420B                 ;/
CODE_0085FE:        60            RTS                       ;

CODE_0085FF:        A9 00 00      LDA #$0000                ;\
CODE_008602:        8D 16 21      STA $2116                 ; |Upload game select menu tiles
CODE_008605:        A9 00 80      LDA #$8000                ; |and its components to VRAM $0000-$D7FF
CODE_008608:        85 02         STA $02                   ; |
CODE_00860A:        A2 2B         LDX #$2B                  ; |Source: $2B8000-$2BFFFF
CODE_00860C:        86 04         STX $04                   ; |        $2C8000-$2CFFFF
CODE_00860E:        A9 00 80      LDA #$8000                ; |
CODE_008611:        85 05         STA $05                   ; |
CODE_008613:        8C 0B 42      STY $420B                 ; |
CODE_008616:        A9 00 80      LDA #$8000                ; |
CODE_008619:        85 02         STA $02                   ; |
CODE_00861B:        A2 2C         LDX #$2C                  ; |
CODE_00861D:        86 04         STX $04                   ; |
CODE_00861F:        A9 00 58      LDA #$5800                ; |
CODE_008622:        85 05         STA $05                   ; |
CODE_008624:        8C 0B 42      STY $420B                 ;/
CODE_008627:        A9 00 6C      LDA #$6C00                ;\ Upload default BG2 hall screen tilemap?
CODE_00862A:        8D 16 21      STA $2116                 ; |DMA to VRAM $D800-$DFFF
CODE_00862D:        A9 00 C0      LDA #$C000                ; |
CODE_008630:        85 02         STA $02                   ; |Source: $02:C000
CODE_008632:        A2 02         LDX #$02                  ; |
CODE_008634:        86 04         STX $04                   ; |Size: $0800 bytes
CODE_008636:        A9 00 08      LDA #$0800                ; |
CODE_008639:        85 05         STA $05                   ; |
CODE_00863B:        8C 0B 42      STY $420B                 ;/
CODE_00863E:        A9 00 70      LDA #$7000                ;\
CODE_008641:        8D 16 21      STA $2116                 ; |
CODE_008644:        A9 00 A8      LDA #$A800                ; |Upload to VRAM $E000-$E7FF
CODE_008647:        85 02         STA $02                   ; |
CODE_008649:        A2 3D         LDX #$3D                  ; |Upload absolute nothingness?
CODE_00864B:        86 04         STX $04                   ; |
CODE_00864D:        A9 00 08      LDA #$0800                ; |Source: $3D:A800
CODE_008650:        85 05         STA $05                   ; |
CODE_008652:        8C 0B 42      STY $420B                 ;/
CODE_008655:        A9 00 78      LDA #$7800                ;\
CODE_008658:        8D 16 21      STA $2116                 ; |
CODE_00865B:        A9 00 F0      LDA #$F000                ; |Upload game select menu tilemap
CODE_00865E:        85 02         STA $02                   ; |to VRAM $F000-$FFFF
CODE_008660:        A2 02         LDX #$02                  ; |
CODE_008662:        86 04         STX $04                   ; |Source: $02:F000-$02:FFFF
CODE_008664:        A9 00 10      LDA #$1000                ; |
CODE_008667:        85 05         STA $05                   ; |
CODE_008669:        8C 0B 42      STY $420B                 ;/
CODE_00866C:        60            RTS                       ;

CODE_00866D:        8D 81 21      STA $2181                 ;\ 
CODE_008670:        8C 83 21      STY $2183                 ; |
CODE_008673:        A9 00 80      LDA #$8000                ; |
CODE_008676:        8D 00 43      STA $4300                 ; |
CODE_008679:        A5 02         LDA $02                   ; |DMA stuff to RAM routine.
CODE_00867B:        8D 02 43      STA $4302                 ; |Input: $7E0002 - 3 bytes - source address
CODE_00867E:        A4 04         LDY $04                   ; |       $7E0000 - 2 bytes - size
CODE_008680:        8C 04 43      STY $4304                 ; |A = destination RAM
CODE_008683:        A5 00         LDA $00                   ; |Y = flag for RAM $7F/$7E
CODE_008685:        8D 05 43      STA $4305                 ; |A = 16-bit. XY = 8-bit.
CODE_008688:        A0 01         LDY #$01                  ; |
CODE_00868A:        8C 0B 42      STY $420B                 ;/
CODE_00868D:        6B            RTL                       ;

CODE_00868E:        64 02         STZ $02                   ;\Clear RAM routine
CODE_008690:        8D 02 43      STA $4302                 ; |
CODE_008693:        8C 04 43      STY $4304                 ; |
CODE_008696:        A9 80 34      LDA #$3480                ; | Input:
CODE_008699:        8D 00 43      STA $4300                 ; | A: Dest low and high
CODE_00869C:        A5 00         LDA $00                   ; | Y: Dest bank
CODE_00869E:        8D 05 43      STA $4305                 ; | $00: DMA Size
CODE_0086A1:        A0 01         LDY #$01                  ; | $02: 16-bit value to transfer (usually $0000 or $FFFF)
CODE_0086A3:        8C 1B 21      STY $211B                 ; |
CODE_0086A6:        88            DEY                       ; |
CODE_0086A7:        8C 1B 21      STY $211B                 ; |
CODE_0086AA:        A4 02         LDY $02                   ; |
CODE_0086AC:        8C 1C 21      STY $211C                 ; |
CODE_0086AF:        A0 01         LDY #$01                  ; |
CODE_0086B1:        8C 0B 42      STY $420B                 ; |
CODE_0086B4:        6B            RTL                       ;/

CODE_0086B5:        AD 16 40      LDA $4016                 ;\NES-styled Joypad data 1
CODE_0086B8:        29 01         AND #$01                  ; |Read if the latch is open
CODE_0086BA:        49 01         EOR #$01                  ; |Reverse the latch status
CODE_0086BC:        0A            ASL A                     ; |Multiply by 2
CODE_0086BD:        8F F4 1F 70   STA $701FF4               ;/Store into SRAM
CODE_0086C1:        AD 17 40      LDA $4017                 ;
CODE_0086C4:        29 01         AND #$01                  ;
CODE_0086C6:        0A            ASL A                     ;
CODE_0086C7:        8F F6 1F 70   STA $701FF6               ;
CODE_0086CB:        6B            RTL                       ;

CODE_0086CC:        9C 16 40      STZ $4016                 ;\
CODE_0086CF:        AD 18 42      LDA $4218                 ;/Something related to controllers
CODE_0086D2:        85 00         STA $00                   ;
CODE_0086D4:        AD 19 42      LDA $4219                 ;
CODE_0086D7:        85 01         STA $01                   ;
CODE_0086D9:        A5 00         LDA $00                   ;
CODE_0086DB:        85 F2         STA $F2                   ;
CODE_0086DD:        A8            TAY                       ;
CODE_0086DE:        45 FA         EOR $FA                   ;
CODE_0086E0:        25 F2         AND $F2                   ;
CODE_0086E2:        85 F6         STA $F6                   ;
CODE_0086E4:        84 FA         STY $FA                   ;
CODE_0086E6:        A5 01         LDA $01                   ;
CODE_0086E8:        85 F0         STA $F0                   ;
CODE_0086EA:        A8            TAY                       ;
CODE_0086EB:        45 F8         EOR $F8                   ;
CODE_0086ED:        25 F0         AND $F0                   ;
CODE_0086EF:        85 F4         STA $F4                   ;
CODE_0086F1:        84 F8         STY $F8                   ;
CODE_0086F3:        EA            NOP                       ;
CODE_0086F4:        AD 1A 42      LDA $421A                 ;
CODE_0086F7:        85 00         STA $00                   ;
CODE_0086F9:        AD 1B 42      LDA $421B                 ;
CODE_0086FC:        85 01         STA $01                   ;
CODE_0086FE:        A5 00         LDA $00                   ;
CODE_008700:        85 F3         STA $F3                   ;
CODE_008702:        A8            TAY                       ;
CODE_008703:        45 FB         EOR $FB                   ;
CODE_008705:        25 F3         AND $F3                   ;
CODE_008707:        85 F7         STA $F7                   ;
CODE_008709:        84 FB         STY $FB                   ;
CODE_00870B:        A5 01         LDA $01                   ;
CODE_00870D:        85 F1         STA $F1                   ;
CODE_00870F:        A8            TAY                       ;
CODE_008710:        45 F9         EOR $F9                   ;
CODE_008712:        25 F1         AND $F1                   ;
CODE_008714:        85 F5         STA $F5                   ;
CODE_008716:        84 F9         STY $F9                   ;
CODE_008718:        60            RTS                       ;

CODE_008719:        0B            PHD                       ;\ Prepare OAM for the logo, menu, hall screen etc.
CODE_00871A:        C2 30         REP #$30                  ; |Direct page: $0800
CODE_00871C:        A9 00 08      LDA #$0800                ; |
CODE_00871F:        5B            TCD                       ;/
CODE_008720:        A0 00 F0      LDY #$F000                ;\
CODE_008723:        A2 80 01      LDX #$0180                ; |
CODE_008726:        98            TYA                       ; |
CODE_008727:        95 00         STA $00,x                 ; |
CODE_008729:        95 04         STA $04,x                 ; |
CODE_00872B:        95 08         STA $08,x                 ; |
CODE_00872D:        95 0C         STA $0C,x                 ; |
CODE_00872F:        95 10         STA $10,x                 ; |
CODE_008731:        95 14         STA $14,x                 ; |Clear OAM
CODE_008733:        95 18         STA $18,x                 ; |Clear $0800-$09FF
CODE_008735:        95 1C         STA $1C,x                 ; |
CODE_008737:        95 20         STA $20,x                 ; |
CODE_008739:        95 24         STA $24,x                 ; |
CODE_00873B:        95 28         STA $28,x                 ; |
CODE_00873D:        95 2C         STA $2C,x                 ; |
CODE_00873F:        95 30         STA $30,x                 ; | 
CODE_008741:        95 34         STA $34,x                 ; |
CODE_008743:        95 38         STA $38,x                 ; |
CODE_008745:        95 3C         STA $3C,x                 ; |
CODE_008747:        95 40         STA $40,x                 ; |
CODE_008749:        95 44         STA $44,x                 ; |
CODE_00874B:        95 48         STA $48,x                 ; |
CODE_00874D:        95 4C         STA $4C,x                 ; |
CODE_00874F:        95 50         STA $50,x                 ; |
CODE_008751:        95 54         STA $54,x                 ; |
CODE_008753:        95 58         STA $58,x                 ; |
CODE_008755:        95 5C         STA $5C,x                 ; |
CODE_008757:        95 60         STA $60,x                 ; |
CODE_008759:        95 64         STA $64,x                 ; |
CODE_00875B:        95 68         STA $68,x                 ; | 
CODE_00875D:        95 6C         STA $6C,x                 ; |
CODE_00875F:        95 70         STA $70,x                 ; |
CODE_008761:        95 74         STA $74,x                 ; |
CODE_008763:        95 78         STA $78,x                 ; |
CODE_008765:        95 7C         STA $7C,x                 ;/
CODE_008767:        8A            TXA                       ;\
CODE_008768:        38            SEC                       ; |
CODE_008769:        E9 80 00      SBC #$0080                ; |If not done yet
CODE_00876C:        AA            TAX                       ; |Loop
CODE_00876D:        10 B7         BPL CODE_008726           ;/
CODE_00876F:        E2 30         SEP #$30                  ;8-bit AXY
CODE_008771:        2B            PLD                       ;Recover direct page
CODE_008772:        60            RTS                       ;Return.

CODE_008773:        0B            PHD                       ;\
CODE_008774:        A9 0A         LDA #$0A                  ; |
CODE_008776:        EB            XBA                       ; |Direct page: $0A00
CODE_008777:        A9 00         LDA #$00                  ; |
CODE_008779:        5B            TCD                       ;/
CODE_00877A:        A0 1C         LDY #$1C                  ;\
CODE_00877C:        98            TYA                       ; |
CODE_00877D:        0A            ASL A                     ; |
CODE_00877E:        0A            ASL A                     ; |
CODE_00877F:        AA            TAX                       ; |Basically this sticks 2 bits of 4 bytes into 1 byte
CODE_008780:        B5 23         LDA $23,x                 ; |And stores it to OAM $0A00-$0A1F for the tilesize
CODE_008782:        0A            ASL A                     ; |
CODE_008783:        0A            ASL A                     ; |
CODE_008784:        15 22         ORA $22,x                 ; |
CODE_008786:        0A            ASL A                     ; |
CODE_008787:        0A            ASL A                     ; |
CODE_008788:        15 21         ORA $21,x                 ; |
CODE_00878A:        0A            ASL A                     ; |
CODE_00878B:        0A            ASL A                     ; |
CODE_00878C:        15 20         ORA $20,x                 ; |
CODE_00878E:        99 00 0A      STA $0A00,y               ; |
CODE_008791:        B5 27         LDA $27,x                 ; |
CODE_008793:        0A            ASL A                     ; |
CODE_008794:        0A            ASL A                     ; |
CODE_008795:        15 26         ORA $26,x                 ; |
CODE_008797:        0A            ASL A                     ; |
CODE_008798:        0A            ASL A                     ; |
CODE_008799:        15 25         ORA $25,x                 ; |
CODE_00879B:        0A            ASL A                     ; |
CODE_00879C:        0A            ASL A                     ; |
CODE_00879D:        15 24         ORA $24,x                 ; |
CODE_00879F:        99 01 0A      STA $0A01,y               ; |
CODE_0087A2:        B5 2B         LDA $2B,x                 ; |
CODE_0087A4:        0A            ASL A                     ; |
CODE_0087A5:        0A            ASL A                     ; |
CODE_0087A6:        15 2A         ORA $2A,x                 ; |
CODE_0087A8:        0A            ASL A                     ; |
CODE_0087A9:        0A            ASL A                     ; |
CODE_0087AA:        15 29         ORA $29,x                 ; |
CODE_0087AC:        0A            ASL A                     ; |
CODE_0087AD:        0A            ASL A                     ; |
CODE_0087AE:        15 28         ORA $28,x                 ; |
CODE_0087B0:        99 02 0A      STA $0A02,y               ; |
CODE_0087B3:        B5 2F         LDA $2F,x                 ; |
CODE_0087B5:        0A            ASL A                     ; |
CODE_0087B6:        0A            ASL A                     ; |
CODE_0087B7:        15 2E         ORA $2E,x                 ; |
CODE_0087B9:        0A            ASL A                     ; |
CODE_0087BA:        0A            ASL A                     ; |
CODE_0087BB:        15 2D         ORA $2D,x                 ; |
CODE_0087BD:        0A            ASL A                     ; |
CODE_0087BE:        0A            ASL A                     ; |
CODE_0087BF:        15 2C         ORA $2C,x                 ; |
CODE_0087C1:        99 03 0A      STA $0A03,y               ; |
CODE_0087C4:        88            DEY                       ; |
CODE_0087C5:        88            DEY                       ; |
CODE_0087C6:        88            DEY                       ; |
CODE_0087C7:        88            DEY                       ; |
CODE_0087C8:        10 B2         BPL CODE_00877C           ; |
CODE_0087CA:        2B            PLD                       ;/
CODE_0087CB:        60            RTS                       ;

CODE_0087CC:        AD 62 00      LDA $0062                 ;
CODE_0087CF:        F0 50         BEQ CODE_008821           ;
CODE_0087D1:        8D 42 21      STA $2142                 ;
CODE_0087D4:        C9 F0         CMP #$F0                  ;
CODE_0087D6:        B0 03         BCS CODE_0087DB           ;
CODE_0087D8:        8D 66 00      STA $0066                 ;
CODE_0087DB:        AD 60 00      LDA $0060                 ;
CODE_0087DE:        D0 08         BNE CODE_0087E8           ;
CODE_0087E0:        AC 40 21      LDY $2140                 ;
CODE_0087E3:        CC 64 00      CPY $0064                 ;
CODE_0087E6:        D0 06         BNE CODE_0087EE           ;
CODE_0087E8:        8D 40 21      STA $2140                 ;
CODE_0087EB:        8D 64 00      STA $0064                 ;
CODE_0087EE:        AD 61 00      LDA $0061                 ;
CODE_0087F1:        D0 08         BNE CODE_0087FB           ;
CODE_0087F3:        AC 41 21      LDY $2141                 ;
CODE_0087F6:        CC 65 00      CPY $0065                 ;
CODE_0087F9:        D0 06         BNE CODE_008801           ;
CODE_0087FB:        8D 41 21      STA $2141                 ;
CODE_0087FE:        8D 65 00      STA $0065                 ;
CODE_008801:        AD 63 00      LDA $0063                 ;
CODE_008804:        D0 08         BNE CODE_00880E           ;
CODE_008806:        AC 43 21      LDY $2143                 ;
CODE_008809:        CC 67 00      CPY $0067                 ;
CODE_00880C:        D0 06         BNE CODE_008814           ;
CODE_00880E:        8D 43 21      STA $2143                 ;
CODE_008811:        8D 67 00      STA $0067                 ;
CODE_008814:        9C 60 00      STZ $0060                 ;
CODE_008817:        9C 61 00      STZ $0061                 ;
CODE_00881A:        9C 62 00      STZ $0062                 ;
CODE_00881D:        9C 63 00      STZ $0063                 ;
CODE_008820:        60            RTS                       ;

CODE_008821:        AC 42 21      LDY $2142                 ;
CODE_008824:        CC 66 00      CPY $0066                 ;
CODE_008827:        D0 B2         BNE CODE_0087DB           ;
CODE_008829:        8D 42 21      STA $2142                 ;
CODE_00882C:        80 AD         BRA CODE_0087DB           ;

ForceBlank:
CODE_00882E:        A9 80         LDA #$80                  ;\Enable forced blank & Disable HDMA
CODE_008830:        8D 00 21      STA $2100                 ; |Forced blank
CODE_008833:        8D 00 01      STA $0100                 ; |Forced blank on mirror too
CODE_008836:        9C 0C 42      STZ $420C                 ; |HDMA disable
CODE_008839:        9C 20 01      STZ $0120                 ; |HDMA disable on mirror too
CODE_00883C:        6B            RTL                       ;/

DATA_00883D:        db $01,$01,$01,$01,$01,$01,$01,$01 ;
                    db $01,$00,$00,$01,$01,$01,$01,$01 ;
                    db $01,$01,$01,$01,$01,$01,$01,$01 ;
                    db $01,$01,$01,$01,$01,$01,$01,$01 ;

DATA_00885D:        db $03,$00,$03,$03,$78,$73,$72,$6C ;
                    db $00,$00,$50,$70,$00,$05,$13,$02 ;
                    db $00,$11,$00,$02,$20,$20

DATA_008873:        db $00,$00,$00,$01,$00,$00,$00,$20 ;
                    db $00,$00,$00,$80,$00,$00,$06,$00 ;
                    db $00,$00,$00,$40,$00,$00,$00,$40 ;
                    db $00,$00,$00,$A0,$00,$00,$07,$00 ;
                    db $00,$00,$00,$20,$00,$00,$00,$70 ;
                    db $00,$00,$00,$80,$00,$00,$07,$00 ;
                    db $00,$00,$00,$20,$00,$00,$00,$00 ;
                    db $00,$00,$00,$C0,$00,$00,$06,$00 ;
                    db $00,$00,$00,$40,$0F,$00,$6D,$00 ;
                    db $24,$01,$24,$01                 ;

DATA_0088BF:        dw $8E00 : dw $B400

CODE_0088C3:        A9 43         LDA #$43                  ;\
CODE_0088C5:        EB            XBA                       ; |Direct page: $43xx
CODE_0088C6:        A9 00         LDA #$00                  ; |
CODE_0088C8:        5B            TCD                       ;/
CODE_0088C9:        C2 10         REP #$10                  ;16-bit XY
CODE_0088CB:        A2 01 18      LDX #$1801                ;\Base register: $2118. 2 regs write once.
CODE_0088CE:        86 00         STX $00                   ;/
CODE_0088D0:        A9 80         LDA #$80                  ;\VRAM:
CODE_0088D2:        8D 15 21      STA $2115                 ;/increment after writing $2119/reading $213A
CODE_0088D5:        AD 19 02      LDA $0219                 ;\
CODE_0088D8:        F0 23         BEQ CODE_0088FD           ; |Flag to do file select images DMA. If it is set:
CODE_0088DA:        A2 00 6C      LDX #$6C00                ; |Do file select images DMA.
CODE_0088DD:        8E 16 21      STX $2116                 ; |VRAM Destination: $D800
CODE_0088E0:        A2 00 D8      LDX #$D800                ; |
CODE_0088E3:        86 02         STX $02                   ; |DMA Source: $2C:D800
CODE_0088E5:        A9 2C         LDA #$2C                  ; |
CODE_0088E7:        85 04         STA $04                   ; |Size: 4kB 
CODE_0088E9:        A2 00 10      LDX #$1000                ; |
CODE_0088EC:        86 05         STX $05                   ; |Do DMA transfer
CODE_0088EE:        A9 01         LDA #$01                  ; |
CODE_0088F0:        8D 0B 42      STA $420B                 ; |
CODE_0088F3:        9C 19 02      STZ $0219                 ;/Reset "file select images DMA" flag
CODE_0088F6:        9C E5 00      STZ $00E5                 ;\Clear offset of fading out into game select triangle 
CODE_0088F9:        9C E6 00      STZ $00E6                 ;/                              graphics.
CODE_0088FC:        60            RTS                       ;

CODE_0088FD:        AE E5 00      LDX $00E5                 ;\ If we're fading out into the game select room
CODE_008900:        F0 24         BEQ CODE_008926           ; |
CODE_008902:        86 02         STX $02                   ; |DMA source: bank #$02, offset that $00E5 has
CODE_008904:        A9 02         LDA #$02                  ; |
CODE_008906:        85 04         STA $04                   ; |
CODE_008908:        A2 00 50      LDX #$5000                ; |
CODE_00890B:        AD E0 00      LDA $00E0                 ;\|If fading out, VRAM address is $A000, else, $E000
CODE_00890E:        F0 03         BEQ CODE_008913           ;/|
CODE_008910:        A2 00 70      LDX #$7000                ; |
CODE_008913:        8E 16 21      STX $2116                 ; |
CODE_008916:        A0 00 08      LDY #$0800                ; |DMA size: $800 bytes
CODE_008919:        84 05         STY $05                   ; |
CODE_00891B:        A9 01         LDA #$01                  ; |
CODE_00891D:        8D 0B 42      STA $420B                 ; |
CODE_008920:        9C E5 00      STZ $00E5                 ; |
CODE_008923:        9C E6 00      STZ $00E6                 ;/
CODE_008926:        AD DE 00      LDA $00DE                 ;\ If character animation on hall screen flag is set
CODE_008929:        F0 1C         BEQ CODE_008947           ; |
CODE_00892B:        A2 00 78      LDX #$7800                ; |VRAM address: $F000
CODE_00892E:        8E 16 21      STX $2116                 ; |
CODE_008931:        A2 00 00      LDX #$0000                ; |Update screen's tilemap using ram $7F0000 AKA animate stuff
CODE_008934:        86 02         STX $02                   ; |Source: $7F0000
CODE_008936:        A9 7F         LDA #$7F                  ; |
CODE_008938:        85 04         STA $04                   ; |
CODE_00893A:        A0 00 08      LDY #$0800                ; |
CODE_00893D:        84 05         STY $05                   ; |Size: $0800 bytes
CODE_00893F:        A9 01         LDA #$01                  ; |
CODE_008941:        8D 0B 42      STA $420B                 ; |Enable DMA transfer
CODE_008944:        9C DE 00      STZ $00DE                 ;/ Reset character animation on hall screen flag
CODE_008947:        AD C0 0A      LDA $0AC0                 ;\ Dynamically upload palette
CODE_00894A:        F0 1E         BEQ CODE_00896A           ; |If $0AC0 is set, upload full palette to CGRAM
CODE_00894C:        9C 21 21      STZ $2121                 ; |located at Source: $7F:9200.
CODE_00894F:        A0 00 22      LDY #$2200                ; |One reg write once. Reg = $2122
CODE_008952:        84 00         STY $00                   ; |
CODE_008954:        A0 00 92      LDY #$9200                ; |Source: $7F:9200
CODE_008957:        84 02         STY $02                   ; |
CODE_008959:        A9 7F         LDA #$7F                  ; |
CODE_00895B:        85 04         STA $04                   ; |
CODE_00895D:        A0 00 02      LDY #$0200                ; |Size: Full palette
CODE_008960:        84 05         STY $05                   ; |
CODE_008962:        A9 01         LDA #$01                  ; |
CODE_008964:        8D 0B 42      STA $420B                 ; |
CODE_008967:        9C C0 0A      STZ $0AC0                 ;/
CODE_00896A:        C2 20         REP #$20                  ;\ Update OAM using DMA
CODE_00896C:        E2 10         SEP #$10                  ; |
CODE_00896E:        9C 02 21      STZ $2102                 ; |OAM address: $0000?
CODE_008971:        A9 00 04      LDA #$0400                ; |\1 reg write once
CODE_008974:        85 00         STA $00                   ; |/OAM data DMA
CODE_008976:        A9 00 08      LDA #$0800                ; |Source: $00:0800 - OAM
CODE_008979:        85 02         STA $02                   ; |
CODE_00897B:        64 04         STZ $04                   ; |
CODE_00897D:        A9 20 02      LDA #$0220                ; |Size: 544 bytes (entire OAM)
CODE_008980:        85 05         STA $05                   ; |
CODE_008982:        A0 01         LDY #$01                  ; |Enable DMA transfer
CODE_008984:        8C 0B 42      STY $420B                 ;/
CODE_008987:        A9 01 18      LDA #$1801                ;\ 2 regs write once $2118
CODE_00898A:        85 00         STA $00                   ; |
CODE_00898C:        A9 01 18      LDA #$1801                ; |...the same thing again?
CODE_00898F:        85 00         STA $00                   ; |
CODE_008991:        A9 00 00      LDA #$0000                ; |
CODE_008994:        5B            TCD                       ; |
CODE_008995:        A9 02 80      LDA #$8002                ; |
CODE_008998:        85 E8         STA $E8                   ; |Indirect pointer $7F8002 at $E8-$EA
CODE_00899A:        E2 20         SEP #$20                  ; |
CODE_00899C:        A9 7F         LDA #$7F                  ; |
CODE_00899E:        8D 04 43      STA $4304                 ; |
CODE_0089A1:        85 EA         STA $EA                   ; |
CODE_0089A3:        C2 10         REP #$10                  ; |
CODE_0089A5:        A0 00 00      LDY #$0000                ; |
CODE_0089A8:        20 EC 89      JSR CODE_0089EC           ; |
CODE_0089AB:        C2 20         REP #$20                  ; |
CODE_0089AD:        A9 00 00      LDA #$0000                ; |
CODE_0089B0:        8F 00 80 7F   STA $7F8000               ; |
CODE_0089B4:        3A            DEC A                     ; |
CODE_0089B5:        8F 02 80 7F   STA $7F8002               ; |
CODE_0089B9:        60            RTS                       ;/

CODE_0089BA:        8D 17 21      STA $2117                 ;
CODE_0089BD:        C8            INY                       ;
CODE_0089BE:        B7 E8         LDA [$E8],y               ;
CODE_0089C0:        8D 16 21      STA $2116                 ;
CODE_0089C3:        C8            INY                       ;
CODE_0089C4:        B7 E8         LDA [$E8],y               ;
CODE_0089C6:        0A            ASL A                     ;
CODE_0089C7:        A9 40 2A      LDA #$2A40                ;
CODE_0089CA:        8D 15 21      STA $2115                 ;
CODE_0089CD:        C2 20         REP #$20                  ;
CODE_0089CF:        B7 E8         LDA [$E8],y               ;
CODE_0089D1:        EB            XBA                       ;
CODE_0089D2:        0A            ASL A                     ;
CODE_0089D3:        4A            LSR A                     ;
CODE_0089D4:        8D 05 43      STA $4305                 ;
CODE_0089D7:        85 EC         STA $EC                   ;
CODE_0089D9:        C8            INY                       ;
CODE_0089DA:        C8            INY                       ;
CODE_0089DB:        98            TYA                       ;
CODE_0089DC:        65 E8         ADC $E8                   ;
CODE_0089DE:        8D 02 43      STA $4302                 ;
CODE_0089E1:        98            TYA                       ;
CODE_0089E2:        65 EC         ADC $EC                   ;
CODE_0089E4:        A8            TAY                       ;
CODE_0089E5:        E2 20         SEP #$20                  ;
CODE_0089E7:        A9 01         LDA #$01                  ;
CODE_0089E9:        8D 0B 42      STA $420B                 ;
CODE_0089EC:        B7 E8         LDA [$E8],y               ;
CODE_0089EE:        10 CA         BPL CODE_0089BA           ;
CODE_0089F0:        60            RTS                       ;

PNTR_0089F1:        dw CODE_008B17            ;Pointer to SPC data upload of games. SMB1
                    dw CODE_008B17            ;SMB:TLL
                    dw CODE_008B27            ;SMB2
                    dw CODE_008B37            ;SMB3

CODE_0089F9:        78            SEI                       ;Set IRQ disable flag
CODE_0089FA:        9C 00 42      STZ $4200                 ;\Disable interrupts
CODE_0089FD:        9C 0C 42      STZ $420C                 ;/Disable HDMA
CODE_008A00:        9C 40 21      STZ $2140                 ;\
CODE_008A03:        9C 42 21      STZ $2142                 ; |Disable SFX and music stuff
CODE_008A06:        9C 43 21      STZ $2143                 ; |
CODE_008A09:        A9 FF         LDA #$FF                  ; |
CODE_008A0B:        8D 41 21      STA $2141                 ;/
CODE_008A0E:        A5 D0         LDA $D0                   ;\
CODE_008A10:        0A            ASL A                     ; |Load selected game
CODE_008A11:        AA            TAX                       ; |
CODE_008A12:        FC F1 89      JSR (PNTR_0089F1,x)       ;/ Upload SPC data of selected game
CODE_008A15:        C2 20         REP #$20                  ;\
CODE_008A17:        A2 02         LDX #$02                  ; |
CODE_008A19:        A9 00 02      LDA #$0200                ; |
CODE_008A1C:        85 00         STA $00                   ; |
CODE_008A1E:        BD BF 88      LDA $88BF,x               ; |
CODE_008A21:        A0 02         LDY #$02                  ; |Do some DMA transfers to RAM
CODE_008A23:        85 02         STA $02                   ; |
CODE_008A25:        84 04         STY $04                   ; |The DMA'd data goes in RAM, but doesn't get
CODE_008A27:        A9 00 90      LDA #$9000                ; |read???
CODE_008A2A:        A0 7F         LDY #$7F                  ; |
CODE_008A2C:        22 6D 86 00   JSL CODE_00866D           ; |
CODE_008A30:        A9 00 92      LDA #$9200                ; |
CODE_008A33:        A0 7F         LDY #$7F                  ; |
CODE_008A35:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_008A39:        A9 00 00      LDA #$0000                ;
CODE_008A3C:        8F 00 80 7F   STA $7F8000               ;
CODE_008A40:        3A            DEC A                     ;
CODE_008A41:        8F 02 80 7F   STA $7F8002               ;
CODE_008A45:        E2 20         SEP #$20                  ;
CODE_008A47:        A9 81         LDA #$81                  ;\Enable interrupts
CODE_008A49:        8D 00 42      STA $4200                 ;/
CODE_008A4C:        E6 E0         INC $E0                   ;
CODE_008A4E:        6B            RTL                       ;

CODE_008A4F:        C2 20         REP #$20                  ;\
CODE_008A51:        A9 00 04      LDA #$0400                ; |DMA SPC-700 data to RAM, part 1 of 2
CODE_008A54:        85 00         STA $00                   ; |Source: $07FC00
CODE_008A56:        A9 00 FC      LDA #$FC00                ; |Size: $0400 bytes
CODE_008A59:        85 02         STA $02                   ; |Destination: $7F0000
CODE_008A5B:        A0 07         LDY #$07                  ; |
CODE_008A5D:        84 04         STY $04                   ; |
CODE_008A5F:        A9 00 00      LDA #$0000                ; |
CODE_008A62:        A0 7F         LDY #$7F                  ; |
CODE_008A64:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_008A68:        A9 00 80      LDA #$8000                ;\
CODE_008A6B:        85 00         STA $00                   ; |DMA SPC-700 data to RAM, part 2 of 2
CODE_008A6D:        A9 00 80      LDA #$8000                ; |Source: $3B8000
CODE_008A70:        85 02         STA $02                   ; |Size: $8000 bytes
CODE_008A72:        A0 3B         LDY #$3B                  ; |Destination: $7F0400
CODE_008A74:        84 04         STY $04                   ; |
CODE_008A76:        A9 00 04      LDA #$0400                ; |
CODE_008A79:        A0 7F         LDY #$7F                  ; |
CODE_008A7B:        22 6D 86 00   JSL CODE_00866D           ; |
CODE_008A7F:        E2 20         SEP #$20                  ;/
CODE_008A81:        64 00         STZ $00                   ;\
CODE_008A83:        A9 00         LDA #$00                  ; |
CODE_008A85:        85 01         STA $01                   ; |SPC-700 data source: $7F:0000
CODE_008A87:        A9 7F         LDA #$7F                  ; |
CODE_008A89:        85 02         STA $02                   ;/
CODE_008A8B:        4C AC 8B      JMP SPCUpload             ;Upload SPC engine + SMAS hall and menu audio data

CODE_008A8E:        78            SEI                       ;
CODE_008A8F:        9C 00 42      STZ $4200                 ;
CODE_008A92:        9C 0C 42      STZ $420C                 ;
CODE_008A95:        9C 40 21      STZ $2140                 ;
CODE_008A98:        A9 FF         LDA #$FF                  ;
CODE_008A9A:        8D 41 21      STA $2141                 ;
CODE_008A9D:        9C 42 21      STZ $2142                 ;
CODE_008AA0:        9C 43 21      STZ $2143                 ;
CODE_008AA3:        64 00         STZ $00                   ;\
CODE_008AA5:        A9 80         LDA #$80                  ; |
CODE_008AA7:        85 01         STA $01                   ; |SPC-700 data source: $0B:8000
CODE_008AA9:        A9 0B         LDA #$0B                  ; |
CODE_008AAB:        85 02         STA $02                   ;/
CODE_008AAD:        20 AC 8B      JSR SPCUpload             ;Upload SPC data
CODE_008AB0:        A9 81         LDA #$81                  ;
CODE_008AB2:        8D 00 42      STA $4200                 ;
CODE_008AB5:        E6 E1         INC $E1                   ;
CODE_008AB7:        A9 12         LDA #$12                  ;
CODE_008AB9:        85 60         STA $60                   ;
CODE_008ABB:        60            RTS                       ;

CODE_008ABC:        78            SEI                       ;
CODE_008ABD:        9C 00 42      STZ $4200                 ; Don't let NMI interrupt the upload
CODE_008AC0:        9C 0C 42      STZ $420C                 ; No DMA
CODE_008AC3:        9C 0B 42      STZ $420B                 ; No HDMA
CODE_008AC6:        9C 40 21      STZ $2140                 ;\
CODE_008AC9:        A9 FF         LDA #$FF                  ; |
CODE_008ACB:        8D 41 21      STA $2141                 ; | Tell SPC700 we are ready to upload data
CODE_008ACE:        9C 42 21      STZ $2142                 ; |
CODE_008AD1:        9C 43 21      STZ $2143                 ;/
CODE_008AD4:        64 00         STZ $00                   ;\
CODE_008AD6:        A9 80         LDA #$80                  ; |
CODE_008AD8:        85 01         STA $01                   ; |SPC-700 data source: $0B:8000
CODE_008ADA:        A9 0B         LDA #$0B                  ; |
CODE_008ADC:        85 02         STA $02                   ;/
CODE_008ADE:        20 AC 8B      JSR SPCUpload             ;Upload SPC data
CODE_008AE1:        A9 81         LDA #$81                  ;
CODE_008AE3:        8D 00 42      STA $4200                 ;
CODE_008AE6:        60            RTS                       ;

CODE_008AE7:        78            SEI                       ;
CODE_008AE8:        9C 00 42      STZ $4200                 ; Don't let NMI interrupt the upload
CODE_008AEB:        9C 0C 42      STZ $420C                 ; No DMA
CODE_008AEE:        9C 40 21      STZ $2140                 ;\
CODE_008AF1:        A9 FF         LDA #$FF                  ; |
CODE_008AF3:        8D 41 21      STA $2141                 ; | Tell the SPC700 we are ready to upload data
CODE_008AF6:        9C 42 21      STZ $2142                 ; |
CODE_008AF9:        9C 43 21      STZ $2143                 ;/
CODE_008AFC:        A9 51         LDA #$51                  ;\
CODE_008AFE:        85 00         STA $00                   ; |
CODE_008B00:        A9 A2         LDA #$A2                  ; |
CODE_008B02:        85 01         STA $01                   ; |SPC-700 data source: $3B:A251
CODE_008B04:        A9 3B         LDA #$3B                  ; |
CODE_008B06:        85 02         STA $02                   ;/
CODE_008B08:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B0B:        A9 81         LDA #$81                  ;\ Enable NMI again and joypad read
CODE_008B0D:        8D 00 42      STA $4200                 ;/
CODE_008B10:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_008B12:        A9 3E         LDA #$3E                  ;\ Play talking crowd SFX
CODE_008B14:        85 60         STA $60                   ;/
CODE_008B16:        60            RTS                       ;

CODE_008B17:        A9 00         LDA #$00                  ;\
CODE_008B19:        85 00         STA $00                   ; |
CODE_008B1B:        A9 80         LDA #$80                  ; |
CODE_008B1D:        85 01         STA $01                   ; |SPC-700 data source: $1F:8000
CODE_008B1F:        A9 1F         LDA #$1F                  ; |
CODE_008B21:        85 02         STA $02                   ;/
CODE_008B23:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B26:        60            RTS                       ;

CODE_008B27:        A9 00         LDA #$00                  ;\
CODE_008B29:        85 00         STA $00                   ; |
CODE_008B2B:        A9 C0         LDA #$C0                  ; |
CODE_008B2D:        85 01         STA $01                   ; |SPC-700 data source: $1F:C000
CODE_008B2F:        A9 1F         LDA #$1F                  ; |
CODE_008B31:        85 02         STA $02                   ;/
CODE_008B33:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B36:        60            RTS                       ;

CODE_008B37:        A9 00         LDA #$00                  ;\
CODE_008B39:        85 00         STA $00                   ; |
CODE_008B3B:        A9 80         LDA #$80                  ; |SPC-700 data source: $0C:8000
CODE_008B3D:        85 01         STA $01                   ; |
CODE_008B3F:        A9 0C         LDA #$0C                  ; |
CODE_008B41:        85 02         STA $02                   ;/
CODE_008B43:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B46:        60            RTS                       ;

CODE_008B47:        78            SEI                       ;
CODE_008B48:        9C 00 42      STZ $4200                 ;
CODE_008B4B:        9C 0C 42      STZ $420C                 ;
CODE_008B4E:        A9 FF         LDA #$FF                  ;
CODE_008B50:        8D 41 21      STA $2141                 ;
CODE_008B53:        A9 00         LDA #$00                  ;\
CODE_008B55:        85 00         STA $00                   ; |
CODE_008B57:        A9 80         LDA #$80                  ; |SPC-700 data source: $0C:8000
CODE_008B59:        85 01         STA $01                   ; |
CODE_008B5B:        A9 0C         LDA #$0C                  ; |
CODE_008B5D:        85 02         STA $02                   ;/
CODE_008B5F:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B62:        6B            RTL                       ;

CODE_008B63:        78            SEI                       ;
CODE_008B64:        9C 00 42      STZ $4200                 ;
CODE_008B67:        9C 0C 42      STZ $420C                 ;
CODE_008B6A:        A9 FF         LDA #$FF                  ;
CODE_008B6C:        8D 41 21      STA $2141                 ;
CODE_008B6F:        C2 20         REP #$20                  ;
CODE_008B71:        A9 00 28      LDA #$2800                ;\
CODE_008B74:        85 00         STA $00                   ; |
CODE_008B76:        A9 00 C0      LDA #$C000                ; |
CODE_008B79:        85 02         STA $02                   ; |SPC-700 data to RAM:
CODE_008B7B:        A0 07         LDY #$07                  ; |Source: $07:C000
CODE_008B7D:        84 04         STY $04                   ; | Dest.: $7F:0000
CODE_008B7F:        A9 00 00      LDA #$0000                ; | Size: $2800 bytes
CODE_008B82:        A0 7F         LDY #$7F                  ; |
CODE_008B84:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_008B88:        E2 20         SEP #$20                  ;\
CODE_008B8A:        A9 00         LDA #$00                  ; |
CODE_008B8C:        64 00         STZ $00                   ; |SPC-700 data source: $7F:0000
CODE_008B8E:        A9 00         LDA #$00                  ; | 
CODE_008B90:        85 01         STA $01                   ; |
CODE_008B92:        A9 7F         LDA #$7F                  ; |
CODE_008B94:        85 02         STA $02                   ;/
CODE_008B96:        20 AC 8B      JSR SPCUpload             ;Upload SPC-700 data
CODE_008B99:        C2 20         REP #$20                  ;\
CODE_008B9B:        A9 00 C0      LDA #$C000                ; |
CODE_008B9E:        85 00         STA $00                   ; |Clear $7F0000-$
CODE_008BA0:        A9 00 00      LDA #$0000                ; |
CODE_008BA3:        A0 7F         LDY #$7F                  ; |
CODE_008BA5:        22 8E 86 00   JSL CODE_00868E           ; |
CODE_008BA9:        E2 20         SEP #$20                  ;/
CODE_008BAB:        6B            RTL                       ;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Upload SPC data
;;
;; Works like so:
;; 1. Wait for $2140-1 to return $BBAA.
;; 2. Write target address to $2142-3 (the address where you are uploading the data to).
;; 3. Write non-zero to $2141.
;; 4. Write $CC to $2140.
;; 5. Wait until $2140 returns $CC.
;; 6. Set your first byte to $2141.
;; 7. Set your byte index ($00 for the first byte) to $2140.
;; 8. Wait for $2140 to echo your byte index.
;; 9. Go back to step 6 with your next byte and increase the byte index until you are done.
;;
;; 10. If you want to write another block set the next address to $2142-3, non-zero to $2141 and index+2 (or +3 if that would be zero, otherwise it'll srew up the transfer) to $2140 
;;     and wait for it to echo. Then go to step 6 with index equaling 0.
;;
;; 11. Otherwise put the target address you want to jump to in $2142-3, $00 in $2141 and index+2 in $2140 and wait for the echo. You code ;; will then be executing.
;;
;; Nintendo uses the same SPC upload routine (from what I have seen) in every game they make
;; so if you need more help with this routine try the ALTTP dis or SMW dis or something
;;

SPCUpload:
CODE_008BAC:        08            PHP                       ;Upload SPC data routine
CODE_008BAD:        C2 30         REP #$30                  ;
CODE_008BAF:        A0 00 00      LDY #$0000                ;index to SPC data
CODE_008BB2:        A9 AA BB      LDA #$BBAA                ;\
CODE_008BB5:        CD 40 21      CMP $2140                 ; |Wait until SPC-700 is ready
CODE_008BB8:        D0 FB         BNE CODE_008BB5           ;/ (it reaches ARAM $0fdc then)
CODE_008BBA:        E2 20         SEP #$20                  ;\
CODE_008BBC:        A9 CC         LDA #$CC                  ; |Tell SPC-700 that you're ready, and begin
CODE_008BBE:        80 26         BRA CODE_008BE6           ;/ uploading data.

CODE_008BC0:        B7 00         LDA [$00],y               ;
CODE_008BC2:        C8            INY                       ;
CODE_008BC3:        EB            XBA                       ;
CODE_008BC4:        A9 00         LDA #$00                  ;
CODE_008BC6:        80 0B         BRA CODE_008BD3           ;

CODE_008BC8:        EB            XBA                       ;
CODE_008BC9:        B7 00         LDA [$00],y               ;
CODE_008BCB:        C8            INY                       ;
CODE_008BCC:        EB            XBA                       ;
CODE_008BCD:        CD 40 21      CMP $2140                 ;
CODE_008BD0:        D0 FB         BNE CODE_008BCD           ;
CODE_008BD2:        1A            INC A                     ;
CODE_008BD3:        C2 20         REP #$20                  ;
CODE_008BD5:        8D 40 21      STA $2140                 ;
CODE_008BD8:        E2 20         SEP #$20                  ;
CODE_008BDA:        CA            DEX                       ;
CODE_008BDB:        D0 EB         BNE CODE_008BC8           ;
CODE_008BDD:        CD 40 21      CMP $2140                 ;
CODE_008BE0:        D0 FB         BNE CODE_008BDD           ;
CODE_008BE2:        69 03         ADC #$03                  ;
CODE_008BE4:        F0 FC         BEQ CODE_008BE2           ;
CODE_008BE6:        48            PHA                       ;SPC-700 data header consists of 2 words/4 bytes
CODE_008BE7:        C2 20         REP #$20                  ;
CODE_008BE9:        B7 00         LDA [$00],y               ;This loads the first word:
CODE_008BEB:        C8            INY                       ;Length of SPC-700 data in hex (little-endian)
CODE_008BEC:        C8            INY                       ;
CODE_008BED:        AA            TAX                       ;
CODE_008BEE:        B7 00         LDA [$00],y               ;This loads the second word:
CODE_008BF0:        C8            INY                       ;Where in ARAM the SPC-700 should be uploaded to
CODE_008BF1:        C8            INY                       ;(little-endian)
CODE_008BF2:        8D 42 21      STA $2142                 ;
CODE_008BF5:        E2 20         SEP #$20                  ;
CODE_008BF7:        E0 01 00      CPX #$0001                ;
CODE_008BFA:        A9 00         LDA #$00                  ;
CODE_008BFC:        2A            ROL A                     ;
CODE_008BFD:        8D 41 21      STA $2141                 ;
CODE_008C00:        69 7F         ADC #$7F                  ;
CODE_008C02:        68            PLA                       ;
CODE_008C03:        8D 40 21      STA $2140                 ;
CODE_008C06:        CD 40 21      CMP $2140                 ;
CODE_008C09:        D0 FB         BNE CODE_008C06           ;
CODE_008C0B:        70 B3         BVS CODE_008BC0           ;
CODE_008C0D:        9C 40 21      STZ $2140                 ;
CODE_008C10:        9C 41 21      STZ $2141                 ;
CODE_008C13:        9C 42 21      STZ $2142                 ;
CODE_008C16:        9C 43 21      STZ $2143                 ;
CODE_008C19:        28            PLP                       ;
CODE_008C1A:        60            RTS                       ;

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CODE_008C1B:        E2 20         SEP #$20                  ;
CODE_008C1D:        A9 00         LDA #$00                  ;\
CODE_008C1F:        8F 07 00 70   STA $700007               ;/Clear debug mode
CODE_008C23:        C2 30         REP #$30                  ;
CODE_008C25:        AF 02 00 70   LDA $700002               ;
CODE_008C29:        C9 43 97      CMP #$9743                ;
CODE_008C2C:        D0 09         BNE CODE_008C37           ;
CODE_008C2E:        AF FC 1F 70   LDA $701FFC               ;
CODE_008C32:        C9 21 53      CMP #$5321                ;
CODE_008C35:        F0 37         BEQ CODE_008C6E           ;
CODE_008C37:        E2 10         SEP #$10                  ;
CODE_008C39:        A9 00 20      LDA #$2000                ;
CODE_008C3C:        85 00         STA $00                   ;
CODE_008C3E:        A9 00 00      LDA #$0000                ;
CODE_008C41:        A0 70         LDY #$70                  ;
CODE_008C43:        22 8E 86 00   JSL CODE_00868E           ;
CODE_008C47:        C2 10         REP #$10                  ;
CODE_008C49:        A2 00 00      LDX #$0000                ;
CODE_008C4C:        20 83 8D      JSR CODE_008D83           ;
CODE_008C4F:        AF 04 00 70   LDA $700004               ;
CODE_008C53:        1A            INC A                     ;
CODE_008C54:        8F 04 00 70   STA $700004               ;
CODE_008C58:        C9 10 00      CMP #$0010                ;
CODE_008C5B:        90 EF         BCC CODE_008C4C           ;
CODE_008C5D:        A9 43 97      LDA #$9743                ;
CODE_008C60:        8F 02 00 70   STA $700002               ;
CODE_008C64:        A9 21 53      LDA #$5321                ;
CODE_008C67:        8F FC 1F 70   STA $701FFC               ;
CODE_008C6B:        4C 1B 8C      JMP CODE_008C1B           ;

CODE_008C6E:        A9 00 00      LDA #$0000                ;
CODE_008C71:        8F 04 00 70   STA $700004               ;
CODE_008C75:        AA            TAX                       ;
CODE_008C76:        29 03 00      AND #$0003                ;
CODE_008C79:        0A            ASL A                     ;
CODE_008C7A:        A8            TAY                       ;
CODE_008C7B:        B9 DB 8D      LDA $8DDB,y               ;
CODE_008C7E:        3A            DEC A                     ;
CODE_008C7F:        3A            DEC A                     ;
CODE_008C80:        A8            TAY                       ;
CODE_008C81:        64 00         STZ $00                   ;
CODE_008C83:        86 02         STX $02                   ;
CODE_008C85:        E2 20         SEP #$20                  ;
CODE_008C87:        BF 10 00 70   LDA $700010,x             ;
CODE_008C8B:        18            CLC                       ;
CODE_008C8C:        65 00         ADC $00                   ;
CODE_008C8E:        85 00         STA $00                   ;
CODE_008C90:        A5 01         LDA $01                   ;
CODE_008C92:        69 00         ADC #$00                  ;
CODE_008C94:        85 01         STA $01                   ;
CODE_008C96:        E8            INX                       ;
CODE_008C97:        88            DEY                       ;
CODE_008C98:        D0 ED         BNE CODE_008C87           ;
CODE_008C9A:        C2 21         REP #$21                  ;
CODE_008C9C:        A5 00         LDA $00                   ;
CODE_008C9E:        7F 10 00 70   ADC $700010,x             ;
CODE_008CA2:        D0 12         BNE CODE_008CB6           ;
CODE_008CA4:        E8            INX                       ;
CODE_008CA5:        E8            INX                       ;
CODE_008CA6:        AF 04 00 70   LDA $700004               ;
CODE_008CAA:        1A            INC A                     ;
CODE_008CAB:        8F 04 00 70   STA $700004               ;
CODE_008CAF:        C9 10 00      CMP #$0010                ;
CODE_008CB2:        B0 0D         BCS CODE_008CC1           ;
CODE_008CB4:        80 C0         BRA CODE_008C76           ;

CODE_008CB6:        C2 30         REP #$30                  ;
CODE_008CB8:        A6 02         LDX $02                   ;
CODE_008CBA:        20 83 8D      JSR CODE_008D83           ;
CODE_008CBD:        86 02         STX $02                   ;
CODE_008CBF:        80 E5         BRA CODE_008CA6           ;

CODE_008CC1:        4C 80 8D      JMP CODE_008D80           ;
CODE_008CC4:        AF 89 03 70   LDA $700389               ;
CODE_008CC8:        85 00         STA $00                   ;
CODE_008CCA:        AF 70 03 70   LDA $700370               ;
CODE_008CCE:        29 FF 00      AND #$00FF                ;
CODE_008CD1:        18            CLC                       ;
CODE_008CD2:        65 00         ADC $00                   ;
CODE_008CD4:        38            SEC                       ;
CODE_008CD5:        E9 07 00      SBC #$0007                ;
CODE_008CD8:        85 00         STA $00                   ;
CODE_008CDA:        AF 71 03 70   LDA $700371               ;
CODE_008CDE:        29 FF 00      AND #$00FF                ;
CODE_008CE1:        18            CLC                       ;
CODE_008CE2:        65 00         ADC $00                   ;
CODE_008CE4:        38            SEC                       ;
CODE_008CE5:        E9 03 00      SBC #$0003                ;
CODE_008CE8:        8F 89 03 70   STA $700389               ;
CODE_008CEC:        A9 07 03      LDA #$0307                ;
CODE_008CEF:        8F 70 03 70   STA $700370               ;
CODE_008CF3:        AF 8A 03 70   LDA $70038A               ;
CODE_008CF7:        85 00         STA $00                   ;
CODE_008CF9:        AF 79 03 70   LDA $700379               ;
CODE_008CFD:        29 FF 00      AND #$00FF                ;
CODE_008D00:        18            CLC                       ;
CODE_008D01:        65 00         ADC $00                   ;
CODE_008D03:        38            SEC                       ;
CODE_008D04:        E9 0C 00      SBC #$000C                ;
CODE_008D07:        85 00         STA $00                   ;
CODE_008D09:        AF 7A 03 70   LDA $70037A               ;
CODE_008D0D:        29 FF 00      AND #$00FF                ;
CODE_008D10:        18            CLC                       ;
CODE_008D11:        65 00         ADC $00                   ;
CODE_008D13:        38            SEC                       ;
CODE_008D14:        E9 03 00      SBC #$0003                ;
CODE_008D17:        8F 8A 03 70   STA $70038A               ;
CODE_008D1B:        A9 0C 03      LDA #$030C                ;
CODE_008D1E:        8F 79 03 70   STA $700379               ;
CODE_008D22:        AF 88 03 70   LDA $700388               ;
CODE_008D26:        85 00         STA $00                   ;
CODE_008D28:        AF 81 03 70   LDA $700381               ;
CODE_008D2C:        29 FF 00      AND #$00FF                ;
CODE_008D2F:        18            CLC                       ;
CODE_008D30:        65 00         ADC $00                   ;
CODE_008D32:        38            SEC                       ;
CODE_008D33:        E9 06 00      SBC #$0006                ;
CODE_008D36:        85 00         STA $00                   ;
CODE_008D38:        AF 82 03 70   LDA $700382               ;
CODE_008D3C:        29 FF 00      AND #$00FF                ;
CODE_008D3F:        18            CLC                       ;
CODE_008D40:        65 00         ADC $00                   ;
CODE_008D42:        38            SEC                       ;
CODE_008D43:        E9 01 00      SBC #$0001                ;
CODE_008D46:        8F 88 03 70   STA $700388               ;
CODE_008D4A:        A9 06 01      LDA #$0106                ;
CODE_008D4D:        8F 81 03 70   STA $700381               ;
CODE_008D51:        AF A0 04 70   LDA $7004A0               ;
CODE_008D55:        85 00         STA $00                   ;
CODE_008D57:        AF 8A 03 70   LDA $70038A               ;
CODE_008D5B:        29 FF 00      AND #$00FF                ;
CODE_008D5E:        18            CLC                       ;
CODE_008D5F:        65 00         ADC $00                   ;
CODE_008D61:        38            SEC                       ;
CODE_008D62:        E9 06 00      SBC #$0006                ;
CODE_008D65:        85 00         STA $00                   ;
CODE_008D67:        AF 8B 03 70   LDA $70038B               ;
CODE_008D6B:        29 FF 00      AND #$00FF                ;
CODE_008D6E:        18            CLC                       ;
CODE_008D6F:        65 00         ADC $00                   ;
CODE_008D71:        38            SEC                       ;
CODE_008D72:        E9 00 00      SBC #$0000                ;
CODE_008D75:        8F A0 04 70   STA $7004A0               ;
CODE_008D79:        A9 07 00      LDA #$0007                ;
CODE_008D7C:        8F 8A 03 70   STA $70038A               ;
CODE_008D80:        E2 30         SEP #$30                  ;
CODE_008D82:        60            RTS                       ;

CODE_008D83:        AF 04 00 70   LDA $700004               ;
CODE_008D87:        29 03 00      AND #$0003                ;
CODE_008D8A:        0A            ASL A                     ;
CODE_008D8B:        A8            TAY                       ;
CODE_008D8C:        B9 DB 8D      LDA $8DDB,y               ;
CODE_008D8F:        3A            DEC A                     ;
CODE_008D90:        3A            DEC A                     ;
CODE_008D91:        85 0E         STA $0E                   ;
CODE_008D93:        B9 D3 8D      LDA $8DD3,y               ;
CODE_008D96:        A8            TAY                       ;
CODE_008D97:        64 00         STZ $00                   ;
CODE_008D99:        E2 20         SEP #$20                  ;

CODE_008D9B:        B9 E3 8D      LDA $8DE3,y               ;
CODE_008D9E:        9F 10 00 70   STA $700010,x             ;
CODE_008DA2:        18            CLC                       ;
CODE_008DA3:        65 00         ADC $00                   ;
CODE_008DA5:        85 00         STA $00                   ;
CODE_008DA7:        A5 01         LDA $01                   ;
CODE_008DA9:        69 00         ADC #$00                  ;
CODE_008DAB:        85 01         STA $01                   ;
CODE_008DAD:        B9 E3 8D      LDA $8DE3,y               ;
CODE_008DB0:        E8            INX                       ;
CODE_008DB1:        C8            INY                       ;
CODE_008DB2:        C6 0E         DEC $0E                   ;
CODE_008DB4:        D0 E5         BNE CODE_008D9B           ;
CODE_008DB6:        C6 0F         DEC $0F                   ;
CODE_008DB8:        10 E1         BPL CODE_008D9B           ;
CODE_008DBA:        C2 20         REP #$20                  ;
CODE_008DBC:        A9 00 00      LDA #$0000                ;
CODE_008DBF:        38            SEC                       ;
CODE_008DC0:        E5 00         SBC $00                   ;
CODE_008DC2:        9F 10 00 70   STA $700010,x             ;
CODE_008DC6:        A5 D0         LDA $D0                   ;
CODE_008DC8:        29 03 00      AND #$0003                ;
CODE_008DCB:        C9 03 00      CMP #$0003                ;
CODE_008DCE:        D0 00         BNE CODE_008DD0           ;
CODE_008DD0:        E8            INX                       ;
CODE_008DD1:        E8            INX                       ;
CODE_008DD2:        60            RTS                       ;

DATA_008DD3:        db $00,$00,$09,$00,$11,$00,$1A,$00 ;

DATA_008DDB:        db $09,$00,$08,$00,$09,$00,$06,$01 ;

DATA_008DE3:        db $FF,$FF,$FF,$04,$04,$00,$FF,$00 ;
                    db $00,$FF,$FF,$FF,$04,$00,$FF,$00 ;
                    db $00,$FF,$FF,$05,$00,$00,$00,$00 ;
                    db $00,$00,$FF,$FF,$04,$04,$70,$80 ;
                    db $80,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$D0,$C0,$A0,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $01,$00,$03,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$FF,$00,$00 ;

CODE_008F03:        DA            PHX                       ;
CODE_008F04:        5A            PHY                       ;
CODE_008F05:        8B            PHB                       ;
CODE_008F06:        4B            PHK                       ;
CODE_008F07:        AB            PLB                       ;
CODE_008F08:        AF F8 1F 70   LDA $701FF8               ;
CODE_008F0C:        F0 03         BEQ CODE_008F11           ;
CODE_008F0E:        4C 0C 90      JMP CODE_00900C           ;

CODE_008F11:        C2 30         REP #$30                  ;
CODE_008F13:        64 00         STZ $00                   ;
CODE_008F15:        AF 04 00 70   LDA $700004               ;
CODE_008F19:        AA            TAX                       ;
CODE_008F1A:        E2 20         SEP #$20                  ;
CODE_008F1C:        AD 7A 07      LDA $077A                 ;
CODE_008F1F:        F0 17         BEQ CODE_008F38           ;
CODE_008F21:        AD FC 07      LDA $07FC                 ;
CODE_008F24:        CD 81 07      CMP $0781                 ;
CODE_008F27:        F0 07         BEQ CODE_008F30           ;
CODE_008F29:        C9 01         CMP #$01                  ;
CODE_008F2B:        F0 0B         BEQ CODE_008F38           ;
CODE_008F2D:        4C 77 8F      JMP CODE_008F77           ;

CODE_008F30:        AD 5F 07      LDA $075F                 ;
CODE_008F33:        CD 66 07      CMP $0766                 ;
CODE_008F36:        90 3F         BCC CODE_008F77           ;
CODE_008F38:        AD FC 07      LDA $07FC                 ;
CODE_008F3B:        85 02         STA $02                   ;
CODE_008F3D:        DF 15 00 70   CMP $700015,x             ;
CODE_008F41:        F0 06         BEQ CODE_008F49           ;
CODE_008F43:        C9 01         CMP #$01                  ;
CODE_008F45:        F0 21         BEQ CODE_008F68           ;
CODE_008F47:        80 0B         BRA CODE_008F54           ;

CODE_008F49:        BF 10 00 70   LDA $700010,x             ;
CODE_008F4D:        30 19         BMI CODE_008F68           ;
CODE_008F4F:        CD 5F 07      CMP $075F                 ;
CODE_008F52:        90 14         BCC CODE_008F68           ;
CODE_008F54:        BF 10 00 70   LDA $700010,x             ;
CODE_008F58:        20 F6 92      JSR CODE_0092F6           ;
CODE_008F5B:        BF 10 00 70   LDA $700010,x             ;
CODE_008F5F:        20 F6 92      JSR CODE_0092F6           ;
CODE_008F62:        BF 10 00 70   LDA $700010,x             ;
CODE_008F66:        80 0D         BRA CODE_008F75           ;

CODE_008F68:        AD 5F 07      LDA $075F                 ;
CODE_008F6B:        20 F6 92      JSR CODE_0092F6           ;
CODE_008F6E:        A9 00         LDA #$00                  ;
CODE_008F70:        20 F6 92      JSR CODE_0092F6           ;
CODE_008F73:        A9 00         LDA #$00                  ;
CODE_008F75:        80 3F         BRA CODE_008FB6           ;

CODE_008F77:        AD 81 07      LDA $0781                 ;
CODE_008F7A:        85 02         STA $02                   ;
CODE_008F7C:        DF 15 00 70   CMP $700015,x             ;
CODE_008F80:        F0 06         BEQ CODE_008F88           ;
CODE_008F82:        C9 01         CMP #$01                  ;
CODE_008F84:        F0 21         BEQ CODE_008FA7           ;
CODE_008F86:        80 0B         BRA CODE_008F93           ;

CODE_008F88:        BF 10 00 70   LDA $700010,x             ;
CODE_008F8C:        30 19         BMI CODE_008FA7           ;
CODE_008F8E:        CD 66 07      CMP $0766                 ;
CODE_008F91:        90 14         BCC CODE_008FA7           ;
CODE_008F93:        BF 10 00 70   LDA $700010,x             ;
CODE_008F97:        20 F6 92      JSR CODE_0092F6           ;
CODE_008F9A:        BF 10 00 70   LDA $700010,x             ;
CODE_008F9E:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FA1:        BF 10 00 70   LDA $700010,x             ;
CODE_008FA5:        80 0F         BRA CODE_008FB6           ;

CODE_008FA7:        AD 66 07      LDA $0766                 ;
CODE_008FAA:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FAD:        AD 63 07      LDA $0763                 ;
CODE_008FB0:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FB3:        AD 67 07      LDA $0767                 ;
CODE_008FB6:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FB9:        AD 5A 07      LDA $075A                 ;
CODE_008FBC:        85 04         STA $04                   ;
CODE_008FBE:        AD 61 07      LDA $0761                 ;
CODE_008FC1:        85 05         STA $05                   ;
CODE_008FC3:        C2 20         REP #$20                  ;
CODE_008FC5:        AD 53 07      LDA $0753                 ;
CODE_008FC8:        29 FF 00      AND #$00FF                ;
CODE_008FCB:        A8            TAY                       ;
CODE_008FCC:        E2 20         SEP #$20                  ;
CODE_008FCE:        B9 04 00      LDA $0004,y               ;
CODE_008FD1:        10 02         BPL CODE_008FD5           ;
CODE_008FD3:        A9 04         LDA #$04                  ;
CODE_008FD5:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FD8:        98            TYA                       ;
CODE_008FD9:        49 01         EOR #$01                  ;
CODE_008FDB:        A8            TAY                       ;
CODE_008FDC:        B9 04 00      LDA $0004,y               ;
CODE_008FDF:        10 02         BPL CODE_008FE3           ;
CODE_008FE1:        A9 04         LDA #$04                  ;
CODE_008FE3:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FE6:        DA            PHX                       ;
CODE_008FE7:        20 83 90      JSR CODE_009083           ;
CODE_008FEA:        FA            PLX                       ;
CODE_008FEB:        BF 10 00 70   LDA $700010,x             ;
CODE_008FEF:        05 02         ORA $02                   ;
CODE_008FF1:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FF4:        AD 7A 07      LDA $077A                 ;
CODE_008FF7:        20 F6 92      JSR CODE_0092F6           ;
CODE_008FFA:        C2 20         REP #$20                  ;
CODE_008FFC:        A9 00 00      LDA #$0000                ;
CODE_008FFF:        38            SEC                       ;
CODE_009000:        E5 00         SBC $00                   ;
CODE_009002:        9F 10 00 70   STA $700010,x             ;
CODE_009006:        E2 30         SEP #$30                  ;
CODE_009008:        AB            PLB                       ;
CODE_009009:        7A            PLY                       ;
CODE_00900A:        FA            PLX                       ;
CODE_00900B:        6B            RTL                       ;

CODE_00900C:        C2 30         REP #$30                  ;
CODE_00900E:        64 00         STZ $00                   ;
CODE_009010:        AF 04 00 70   LDA $700004               ;
CODE_009014:        AA            TAX                       ;
CODE_009015:        E2 20         SEP #$20                  ;
CODE_009017:        AF F9 1F 70   LDA $701FF9               ;
CODE_00901B:        20 F6 92      JSR CODE_0092F6           ;
CODE_00901E:        A9 00         LDA #$00                  ;
CODE_009020:        20 F6 92      JSR CODE_0092F6           ;
CODE_009023:        A9 00         LDA #$00                  ;
CODE_009025:        20 F6 92      JSR CODE_0092F6           ;
CODE_009028:        AD 5A 07      LDA $075A                 ;
CODE_00902B:        85 04         STA $04                   ;
CODE_00902D:        AD 61 07      LDA $0761                 ;
CODE_009030:        85 05         STA $05                   ;
CODE_009032:        C2 20         REP #$20                  ;
CODE_009034:        AD 53 07      LDA $0753                 ;
CODE_009037:        29 FF 00      AND #$00FF                ;
CODE_00903A:        A8            TAY                       ;
CODE_00903B:        E2 20         SEP #$20                  ;
CODE_00903D:        B9 04 00      LDA $0004,y               ;
CODE_009040:        10 02         BPL CODE_009044           ;
CODE_009042:        A9 04         LDA #$04                  ;
CODE_009044:        20 F6 92      JSR CODE_0092F6           ;
CODE_009047:        98            TYA                       ;
CODE_009048:        49 01         EOR #$01                  ;
CODE_00904A:        A8            TAY                       ;
CODE_00904B:        B9 04 00      LDA $0004,y               ;
CODE_00904E:        10 02         BPL CODE_009052           ;
CODE_009050:        A9 04         LDA #$04                  ;
CODE_009052:        20 F6 92      JSR CODE_0092F6           ;
CODE_009055:        DA            PHX                       ;
CODE_009056:        20 83 90      JSR CODE_009083           ;
CODE_009059:        FA            PLX                       ;
CODE_00905A:        AF F8 1F 70   LDA $701FF8               ;
CODE_00905E:        20 F6 92      JSR CODE_0092F6           ;
CODE_009061:        AD 7A 07      LDA $077A                 ;
CODE_009064:        20 F6 92      JSR CODE_0092F6           ;
CODE_009067:        C2 20         REP #$20                  ;
CODE_009069:        A9 00 00      LDA #$0000                ;
CODE_00906C:        38            SEC                       ;
CODE_00906D:        E5 00         SBC $00                   ;
CODE_00906F:        9F 10 00 70   STA $700010,x             ;
CODE_009073:        E2 30         SEP #$30                  ;
CODE_009075:        A9 00         LDA #$00                  ;
CODE_009077:        8F F8 1F 70   STA $701FF8               ;
CODE_00907B:        8F F9 1F 70   STA $701FF9               ;
CODE_00907F:        AB            PLB                       ;
CODE_009080:        7A            PLY                       ;
CODE_009081:        FA            PLX                       ;
CODE_009082:        6B            RTL                       ;

CODE_009083:        8B            PHB                       ;
CODE_009084:        A9 70         LDA #$70                  ;
CODE_009086:        48            PHA                       ;
CODE_009087:        AB            PLB                       ;
CODE_009088:        0B            PHD                       ;
CODE_009089:        A9 07         LDA #$07                  ;
CODE_00908B:        EB            XBA                       ;
CODE_00908C:        A9 00         LDA #$00                  ;
CODE_00908E:        5B            TCD                       ;
CODE_00908F:        A2 05 00      LDX #$0005                ;
CODE_009092:        38            SEC                       ;
CODE_009093:        B5 C8         LDA $C8,x                 ;
CODE_009095:        FD E0 1F      SBC $1FE0,x               ;
CODE_009098:        CA            DEX                       ;
CODE_009099:        10 F8         BPL CODE_009093           ;
CODE_00909B:        90 0C         BCC CODE_0090A9           ;
CODE_00909D:        E8            INX                       ;
CODE_00909E:        B5 C8         LDA $C8,x                 ;
CODE_0090A0:        9D E0 1F      STA $1FE0,x               ;
CODE_0090A3:        E8            INX                       ;
CODE_0090A4:        E0 06 00      CPX #$0006                ;
CODE_0090A7:        90 F5         BCC CODE_00909E           ;
CODE_0090A9:        2B            PLD                       ;
CODE_0090AA:        AB            PLB                       ;
CODE_0090AB:        60            RTS                       ;

CODE_0090AC:        DA            PHX                       ;
CODE_0090AD:        5A            PHY                       ;
CODE_0090AE:        8B            PHB                       ;
CODE_0090AF:        4B            PHK                       ;
CODE_0090B0:        AB            PLB                       ;
CODE_0090B1:        C2 30         REP #$30                  ;
CODE_0090B3:        64 00         STZ $00                   ;
CODE_0090B5:        AF 04 00 70   LDA $700004               ;
CODE_0090B9:        AA            TAX                       ;
CODE_0090BA:        E2 20         SEP #$20                  ;
CODE_0090BC:        BF 10 00 70   LDA $700010,x             ;
CODE_0090C0:        30 27         BMI CODE_0090E9           ;
CODE_0090C2:        CD 5F 07      CMP $075F                 ;
CODE_0090C5:        90 22         BCC CODE_0090E9           ;
CODE_0090C7:        D0 09         BNE CODE_0090D2           ;
CODE_0090C9:        BF 11 00 70   LDA $700011,x             ;
CODE_0090CD:        CD 5C 07      CMP $075C                 ;
CODE_0090D0:        90 17         BCC CODE_0090E9           ;
CODE_0090D2:        BF 10 00 70   LDA $700010,x             ;
CODE_0090D6:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090D9:        BF 10 00 70   LDA $700010,x             ;
CODE_0090DD:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090E0:        BF 10 00 70   LDA $700010,x             ;
CODE_0090E4:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090E7:        80 12         BRA CODE_0090FB           ;

CODE_0090E9:        AD 5F 07      LDA $075F                 ;
CODE_0090EC:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090EF:        AD 5C 07      LDA $075C                 ;
CODE_0090F2:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090F5:        AD 60 07      LDA $0760                 ;
CODE_0090F8:        20 F6 92      JSR CODE_0092F6           ;
CODE_0090FB:        AD 5A 07      LDA $075A                 ;
CODE_0090FE:        10 02         BPL CODE_009102           ;
CODE_009100:        A9 04         LDA #$04                  ;
CODE_009102:        20 F6 92      JSR CODE_0092F6           ;
CODE_009105:        DA            PHX                       ;
CODE_009106:        20 29 91      JSR CODE_009129           ;
CODE_009109:        FA            PLX                       ;
CODE_00910A:        AD 2B 0F      LDA $0F2B                 ;
CODE_00910D:        20 F6 92      JSR CODE_0092F6           ;
CODE_009110:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_009114:        20 F6 92      JSR CODE_0092F6           ;
CODE_009117:        C2 20         REP #$20                  ;
CODE_009119:        A9 00 00      LDA #$0000                ;
CODE_00911C:        38            SEC                       ;
CODE_00911D:        E5 00         SBC $00                   ;
CODE_00911F:        9F 10 00 70   STA $700010,x             ;
CODE_009123:        E2 30         SEP #$30                  ;
CODE_009125:        AB            PLB                       ;
CODE_009126:        7A            PLY                       ;
CODE_009127:        FA            PLX                       ;
CODE_009128:        6B            RTL                       ;

CODE_009129:        8B            PHB                       ;
CODE_00912A:        A9 70         LDA #$70                  ;
CODE_00912C:        48            PHA                       ;
CODE_00912D:        AB            PLB                       ;
CODE_00912E:        0B            PHD                       ;
CODE_00912F:        A9 07         LDA #$07                  ;
CODE_009131:        EB            XBA                       ;
CODE_009132:        A9 00         LDA #$00                  ;
CODE_009134:        5B            TCD                       ;
CODE_009135:        A2 05 00      LDX #$0005                ;
CODE_009138:        38            SEC                       ;
CODE_009139:        B5 C8         LDA $C8,x                 ;
CODE_00913B:        FD E8 1F      SBC $1FE8,x               ;
CODE_00913E:        CA            DEX                       ;
CODE_00913F:        10 F8         BPL CODE_009139           ;
CODE_009141:        90 0C         BCC CODE_00914F           ;
CODE_009143:        E8            INX                       ;
CODE_009144:        B5 C8         LDA $C8,x                 ;
CODE_009146:        9D E8 1F      STA $1FE8,x               ;
CODE_009149:        E8            INX                       ;
CODE_00914A:        E0 06 00      CPX #$0006                ;
CODE_00914D:        90 F5         BCC CODE_009144           ;
CODE_00914F:        2B            PLD                       ;
CODE_009150:        AB            PLB                       ;
CODE_009151:        60            RTS                       ;

CODE_009152:        DA            PHX                       ;
CODE_009153:        5A            PHY                       ;
CODE_009154:        8B            PHB                       ;
CODE_009155:        4B            PHK                       ;
CODE_009156:        AB            PLB                       ;
CODE_009157:        64 0F         STZ $0F                   ;
CODE_009159:        AD E8 04      LDA $04E8                 ;
CODE_00915C:        C9 13         CMP #$13                  ;
CODE_00915E:        D0 05         BNE CODE_009165           ;
CODE_009160:        CE E8 04      DEC $04E8                 ;
CODE_009163:        E6 0F         INC $0F                   ;
CODE_009165:        64 02         STZ $02                   ;
CODE_009167:        64 03         STZ $03                   ;
CODE_009169:        64 00         STZ $00                   ;
CODE_00916B:        64 01         STZ $01                   ;
CODE_00916D:        AD E8 04      LDA $04E8                 ;
CODE_009170:        C9 03         CMP #$03                  ;
CODE_009172:        90 07         BCC CODE_00917B           ;
CODE_009174:        38            SEC                       ;
CODE_009175:        E9 03         SBC #$03                  ;
CODE_009177:        E6 02         INC $02                   ;
CODE_009179:        80 F5         BRA CODE_009170           ;

CODE_00917B:        C2 10         REP #$10                  ;
CODE_00917D:        85 03         STA $03                   ;
CODE_00917F:        AF 05 00 70   LDA $700005               ;
CODE_009183:        EB            XBA                       ;
CODE_009184:        AF 04 00 70   LDA $700004               ;
CODE_009188:        AA            TAX                       ;
CODE_009189:        A5 0F         LDA $0F                   ;
CODE_00918B:        D0 27         BNE CODE_0091B4           ;
CODE_00918D:        BF 10 00 70   LDA $700010,x             ;
CODE_009191:        30 21         BMI CODE_0091B4           ;
CODE_009193:        C5 02         CMP $02                   ;
CODE_009195:        F0 05         BEQ CODE_00919C           ;
CODE_009197:        90 1B         BCC CODE_0091B4           ;
CODE_009199:        4C A4 91      JMP CODE_0091A4           ;

CODE_00919C:        BF 11 00 70   LDA $700011,x             ;
CODE_0091A0:        C5 03         CMP $03                   ;
CODE_0091A2:        90 10         BCC CODE_0091B4           ;
CODE_0091A4:        BF 10 00 70   LDA $700010,x             ;
CODE_0091A8:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091AB:        BF 10 00 70   LDA $700010,x             ;
CODE_0091AF:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091B2:        80 0A         BRA CODE_0091BE           ;

CODE_0091B4:        A5 02         LDA $02                   ;
CODE_0091B6:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091B9:        A5 03         LDA $03                   ;
CODE_0091BB:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091BE:        AD EE 04      LDA $04EE                 ;
CODE_0091C1:        D0 02         BNE CODE_0091C5           ;
CODE_0091C3:        A9 05         LDA #$05                  ;
CODE_0091C5:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091C8:        AD 2D 06      LDA $062D                 ;
CODE_0091CB:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091CE:        AD 2E 06      LDA $062E                 ;
CODE_0091D1:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091D4:        AD 2F 06      LDA $062F                 ;
CODE_0091D7:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091DA:        AD 30 06      LDA $0630                 ;
CODE_0091DD:        20 F6 92      JSR CODE_0092F6           ;
CODE_0091E0:        C2 20         REP #$20                  ;
CODE_0091E2:        A9 00 00      LDA #$0000                ;
CODE_0091E5:        38            SEC                       ;
CODE_0091E6:        E5 00         SBC $00                   ;
CODE_0091E8:        9F 10 00 70   STA $700010,x             ;
CODE_0091EC:        E2 30         SEP #$30                  ;
CODE_0091EE:        A5 0F         LDA $0F                   ;
CODE_0091F0:        F0 03         BEQ CODE_0091F5           ;
CODE_0091F2:        EE E8 04      INC $04E8                 ;
CODE_0091F5:        AB            PLB                       ;
CODE_0091F6:        7A            PLY                       ;
CODE_0091F7:        FA            PLX                       ;
CODE_0091F8:        6B            RTL                       ;

CODE_0091F9:        64 00         STZ $00                   ;
CODE_0091FB:        64 01         STZ $01                   ;
CODE_0091FD:        BF 10 00 70   LDA $700010,x             ;
CODE_009201:        20 F6 92      JSR CODE_0092F6           ;
CODE_009204:        BF 10 00 70   LDA $700010,x             ;
CODE_009208:        20 F6 92      JSR CODE_0092F6           ;
CODE_00920B:        BF 10 00 70   LDA $700010,x             ;
CODE_00920F:        20 F6 92      JSR CODE_0092F6           ;
CODE_009212:        AD 2D 06      LDA $062D                 ;
CODE_009215:        20 F6 92      JSR CODE_0092F6           ;
CODE_009218:        AD 2E 06      LDA $062E                 ;
CODE_00921B:        20 F6 92      JSR CODE_0092F6           ;
CODE_00921E:        AD 2F 06      LDA $062F                 ;
CODE_009221:        20 F6 92      JSR CODE_0092F6           ;
CODE_009224:        AD 30 06      LDA $0630                 ;
CODE_009227:        20 F6 92      JSR CODE_0092F6           ;
CODE_00922A:        4C E0 91      JMP CODE_0091E0           ;

CODE_00922D:        DA            PHX                       ;
CODE_00922E:        5A            PHY                       ;
CODE_00922F:        8B            PHB                       ;
CODE_009230:        4B            PHK                       ;
CODE_009231:        AB            PLB                       ;
CODE_009232:        C2 30         REP #$30                  ;
CODE_009234:        A5 00         LDA $00                   ;
CODE_009236:        48            PHA                       ;
CODE_009237:        64 00         STZ $00                   ;
CODE_009239:        AF 04 00 70   LDA $700004               ;
CODE_00923D:        AA            TAX                       ;
CODE_00923E:        E2 20         SEP #$20                  ;
CODE_009240:        BF 10 00 70   LDA $700010,x             ;
CODE_009244:        10 07         BPL CODE_00924D           ;
CODE_009246:        1A            INC A                     ;
CODE_009247:        9F 10 00 70   STA $700010,x             ;
CODE_00924B:        80 0A         BRA CODE_009257           ;

CODE_00924D:        CD 27 07      CMP $0727                 ;
CODE_009250:        F0 05         BEQ CODE_009257           ;
CODE_009252:        90 03         BCC CODE_009257           ;
CODE_009254:        4C 8B 92      JMP CODE_00928B           ;

CODE_009257:        AD 27 07      LDA $0727                 ;
CODE_00925A:        9F 10 00 70   STA $700010,x             ;
CODE_00925E:        DA            PHX                       ;
CODE_00925F:        A0 00 00      LDY #$0000                ;
CODE_009262:        B9 00 1D      LDA $1D00,y               ;
CODE_009265:        9F 4C 00 70   STA $70004C,x             ;
CODE_009269:        E8            INX                       ;
CODE_00926A:        C8            INY                       ;
CODE_00926B:        C0 80 00      CPY #$0080                ;
CODE_00926E:        90 F2         BCC CODE_009262           ;
CODE_009270:        FA            PLX                       ;
CODE_009271:        DA            PHX                       ;
CODE_009272:        A0 00 00      LDY #$0000                ;
CODE_009275:        B9 ED 1E      LDA $1EED,y               ;
CODE_009278:        9F 14 00 70   STA $700014,x             ;
CODE_00927C:        E8            INX                       ;
CODE_00927D:        C8            INY                       ;
CODE_00927E:        C0 38 00      CPY #$0038                ;
CODE_009281:        90 F2         BCC CODE_009275           ;
CODE_009283:        FA            PLX                       ;
CODE_009284:        AD 2B 07      LDA $072B                 ;
CODE_009287:        9F 13 01 70   STA $700113,x             ;
CODE_00928B:        DA            PHX                       ;
CODE_00928C:        A0 00 00      LDY #$0000                ;
CODE_00928F:        B9 80 1D      LDA $1D80,y               ;
CODE_009292:        9F CC 00 70   STA $7000CC,x             ;
CODE_009296:        E8            INX                       ;
CODE_009297:        C8            INY                       ;
CODE_009298:        C0 46 00      CPY #$0046                ;
CODE_00929B:        90 F2         BCC CODE_00928F           ;
CODE_00929D:        FA            PLX                       ;
CODE_00929E:        DA            PHX                       ;
CODE_00929F:        AD 36 07      LDA $0736                 ;
CODE_0092A2:        10 02         BPL CODE_0092A6           ;
CODE_0092A4:        A9 04         LDA #$04                  ;
CODE_0092A6:        9F 12 00 70   STA $700012,x             ;
CODE_0092AA:        AD 37 07      LDA $0737                 ;
CODE_0092AD:        10 02         BPL CODE_0092B1           ;
CODE_0092AF:        A9 04         LDA #$04                  ;
CODE_0092B1:        9F 13 00 70   STA $700013,x             ;
CODE_0092B5:        FA            PLX                       ;
CODE_0092B6:        DA            PHX                       ;
CODE_0092B7:        AF 71 39 7E   LDA $7E3971               ;
CODE_0092BB:        9F 12 01 70   STA $700112,x             ;
CODE_0092BF:        A0 04 01      LDY #$0104                ;
CODE_0092C2:        FA            PLX                       ;
CODE_0092C3:        BF 10 00 70   LDA $700010,x             ;
CODE_0092C7:        18            CLC                       ;
CODE_0092C8:        65 00         ADC $00                   ;
CODE_0092CA:        85 00         STA $00                   ;
CODE_0092CC:        A9 00         LDA #$00                  ;
CODE_0092CE:        65 01         ADC $01                   ;
CODE_0092D0:        85 01         STA $01                   ;
CODE_0092D2:        E8            INX                       ;
CODE_0092D3:        88            DEY                       ;
CODE_0092D4:        D0 ED         BNE CODE_0092C3           ;
CODE_0092D6:        C2 20         REP #$20                  ;
CODE_0092D8:        A9 00 00      LDA #$0000                ;
CODE_0092DB:        38            SEC                       ;
CODE_0092DC:        E5 00         SBC $00                   ;
CODE_0092DE:        9F 10 00 70   STA $700010,x             ;
CODE_0092E2:        E2 20         SEP #$20                  ;
CODE_0092E4:        A9 00         LDA #$00                  ;
CODE_0092E6:        8F 03 FF 7F   STA $7FFF03               ;
CODE_0092EA:        E2 30         SEP #$30                  ;
CODE_0092EC:        68            PLA                       ;
CODE_0092ED:        85 01         STA $01                   ;
CODE_0092EF:        68            PLA                       ;
CODE_0092F0:        85 00         STA $00                   ;
CODE_0092F2:        AB            PLB                       ;
CODE_0092F3:        7A            PLY                       ;
CODE_0092F4:        FA            PLX                       ;
CODE_0092F5:        6B            RTL                       ;

CODE_0092F6:        9F 10 00 70   STA $700010,x             ;
CODE_0092FA:        E8            INX                       ;
CODE_0092FB:        18            CLC                       ;
CODE_0092FC:        65 00         ADC $00                   ;
CODE_0092FE:        85 00         STA $00                   ;
CODE_009300:        A5 01         LDA $01                   ;
CODE_009302:        69 00         ADC #$00                  ;
CODE_009304:        85 01         STA $01                   ;
CODE_009306:        60            RTS                       ;

DATA_009307:        db $3B,$00,$1D,$00,$11,$00,$12,$00 ;\
                    db $1C,$00,$3B,$00,$10,$00,$0A,$00 ; |
                    db $16,$00,$0E,$00,$3B,$00,$19,$00 ; |
                    db $0A,$00,$14,$00,$3B,$00,$12,$00 ; |
                    db $1C,$00,$3B,$00,$17,$00,$18,$00 ; |
                    db $1D,$00,$3B,$00,$3B,$00,$3B,$00 ; |

DATA_009337:        db $0D,$00,$0E,$00,$1C,$00,$12,$00 ; |
                    db $10,$00,$12,$00,$17,$00,$0E,$00 ; |
                    db $0D,$00,$3B,$00,$0F,$00,$18,$00 ; |
                    db $1B,$00,$3B,$00,$22,$00,$18,$00 ; |
                    db $1E,$00,$1B,$00,$3B,$00,$1C,$00 ; |
                    db $1E,$00,$19,$00,$0E,$00,$1B,$00 ; |

DATA_009367:        db $0F,$00,$0A,$00,$16,$00,$12,$00 ; |
                    db $0C,$00,$18,$00,$16,$00,$3B,$00 ; |Text used by this error message:
                    db $18,$00,$1B,$00,$3B,$00,$1C,$00 ; |"THIS GAME PAK IS NOT
                    db $1E,$00,$19,$00,$0E,$00,$1B,$00 ; |DESIGINED FOR YOUR SUPER
                    db $3B,$00,$17,$00,$0E,$00,$1C,$00 ; |FAMICOM OR SUPER NES.
                    db $26,$00,$3B,$00,$3B,$00,$3B,$00 ; |NINTENDO CO.,LTD."

DATA_009397:        db $3B,$00,$3B,$00,$3B,$00,$17,$00 ; |
                    db $12,$00,$17,$00,$1D,$00,$0E,$00 ; |
                    db $17,$00,$0D,$00,$18,$00,$3B,$00 ; |
                    db $0C,$00,$18,$00,$26,$00,$27,$00 ; |
                    db $15,$00,$1D,$00,$0D,$00,$26,$00 ; |
                    db $3B,$00,$3B,$00,$3B,$00,$3B,$00 ;/

;Error message: cartridge not designed for this type of SNES
CODE_0093C7:        20 B9 83      JSR CODE_0083B9           ;
CODE_0093CA:        E2 20         SEP #$20                  ;8-bit A
CODE_0093CC:        0B            PHD                       ;Push direct page
CODE_0093CD:        9C 21 21      STZ $2121                 ;CGRAM 'pointer': Palette 00
CODE_0093D0:        C2 20         REP #$20                  ;16-bit A
CODE_0093D2:        A9 3B 3B      LDA #$3B3B                ;
CODE_0093D5:        85 02         STA $02                   ;
CODE_0093D7:        A9 00 08      LDA #$0800                ;
CODE_0093DA:        85 00         STA $00                   ;
CODE_0093DC:        A0 00         LDY #$00                  ;
CODE_0093DE:        22 90 86 00   JSL CODE_008690           ;
CODE_0093E2:        A9 00 43      LDA #$4300                ;\Direct page: $43xx
CODE_0093E5:        5B            TCD                       ;/
CODE_0093E6:        A0 80         LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_0093E8:        8C 15 21      STY $2115                 ;/
CODE_0093EB:        A9 FF 7F      LDA #$7FFF                ;\4 colors which are white, and 3 blue tints
CODE_0093EE:        8D 18 02      STA $0218                 ; |They are located at palette 00
CODE_0093F1:        A9 F9 7F      LDA #$7FF9                ; |Colors $0C, $0D, $0E, $0F
CODE_0093F4:        8D 1A 02      STA $021A                 ; |
CODE_0093F7:        A9 D0 7F      LDA #$7FD0                ; |
CODE_0093FA:        8D 1C 02      STA $021C                 ; |
CODE_0093FD:        A9 E9 6A      LDA #$6AE9                ;/
CODE_009400:        8D 1E 02      STA $021E                 ;
CODE_009403:        A9 00 22      LDA #$2200                ;\Base register: $2122
CODE_009406:        85 00         STA $00                   ;/Writing mode: 1 regs write once
CODE_009408:        A9 00 02      LDA #$0200                ;\DMA source: $00:0200
CODE_00940B:        85 02         STA $02                   ; |
CODE_00940D:        A2 00         LDX #$00                  ; |
CODE_00940F:        86 04         STX $04                   ;/
CODE_009411:        85 05         STA $05                   ;DMA Size: 0x200/512 bytes.
CODE_009413:        A0 01         LDY #$01                  ;\
CODE_009415:        8C 0B 42      STY $420B                 ;/Enable DMA channel 1
CODE_009418:        A9 01 18      LDA #$1801                ;\Base register: $2118
CODE_00941B:        85 00         STA $00                   ;/Writing mode: 2 regs write once
CODE_00941D:        A9 00 00      LDA #$0000                ;\VRAM Address: $0000
CODE_009420:        8D 16 21      STA $2116                 ;/
CODE_009423:        A9 00 98      LDA #$9800                ;\
CODE_009426:        85 02         STA $02                   ; |DMA Source: $19:9800.
CODE_009428:        A2 19         LDX #$19                  ; |(SMB2 font GFX is located there)
CODE_00942A:        86 04         STX $04                   ;/
CODE_00942C:        A9 00 08      LDA #$0800                ;\DMA Size:
CODE_00942F:        85 05         STA $05                   ;/0x800 bytes/2kB
CODE_009431:        8C 0B 42      STY $420B                 ;Enable DMA channel
CODE_009434:        8B            PHB                       ;\
CODE_009435:        A2 00         LDX #$00                  ; |Set program bank: $00
CODE_009437:        DA            PHX                       ; |
CODE_009438:        AB            PLB                       ;/
CODE_009439:        A2 00         LDX #$00                  ;Load loop stuff.
CODE_00943B:        BD 07 93      LDA.w DATA_009307,x         ;\
CODE_00943E:        9D CA 09      STA $09CA,x               ; |
CODE_009441:        BD 37 93      LDA.w DATA_009337,x         ; |
CODE_009444:        9D 4A 0A      STA $0A4A,x               ; |Store all the text to RAM
CODE_009447:        BD 67 93      LDA.w DATA_009367,x         ; |
CODE_00944A:        9D CA 0A      STA $0ACA,x               ; |
CODE_00944D:        BD 97 93      LDA.w DATA_009397,x         ; |
CODE_009450:        9D 4A 0C      STA $0C4A,x               ;/
CODE_009453:        E8            INX                       ;\
CODE_009454:        E8            INX                       ; |If not done yet (uploading 48 * 4 tiles)
CODE_009455:        E0 30         CPX #$30                  ; |
CODE_009457:        D0 E2         BNE CODE_00943B           ;/ Loop

CODE_009459:        AB            PLB                       ;Recover program bank.
CODE_00945A:        A9 00 10      LDA #$1000                ;\VRAM address: $1000
CODE_00945D:        8D 16 21      STA $2116                 ;/
CODE_009460:        A9 00 08      LDA #$0800                ;\
CODE_009463:        85 02         STA $02                   ; |DMA Source: $00:0800
CODE_009465:        A2 00         LDX #$00                  ; |
CODE_009467:        86 04         STX $04                   ;/
CODE_009469:        85 05         STA $05                   ;DMA Size: 0x800 bytes/2kB
CODE_00946B:        8C 0B 42      STY $420B                 ;Activate DMA channel 1
CODE_00946E:        E2 20         SEP #$20                  ;8-bit A
CODE_009470:        2B            PLD                       ;Recover direct page.
CODE_009471:        A9 10         LDA #$10                  ;\BG1 tilemap address: $4000
CODE_009473:        8D 07 21      STA $2107                 ;/
CODE_009476:        9C 0B 21      STZ $210B                 ;BG1 char address: $0000
CODE_009479:        A9 01         LDA #$01                  ;\Enable BG1 on main screen
CODE_00947B:        8D 2C 21      STA $212C                 ; |nothing on subscreen
CODE_00947E:        9C 2D 21      STZ $212D                 ;/
CODE_009481:        A9 01         LDA #$01                  ;\Mode 1, 8x8 tiles
CODE_009483:        8D 05 21      STA $2105                 ;/
CODE_009486:        9C 30 21      STZ $2130                 ;No color math?
CODE_009489:        9C 31 21      STZ $2131                 ;No CGADSUB
CODE_00948C:        9C 0D 21      STZ $210D                 ;\
CODE_00948F:        9C 0D 21      STZ $210D                 ; |
CODE_009492:        9C 0E 21      STZ $210E                 ; |NO BG1/2/3 Horizontal and vertical scroll
CODE_009495:        9C 0E 21      STZ $210E                 ; |
CODE_009498:        9C 0F 21      STZ $210F                 ; |
CODE_00949B:        9C 0F 21      STZ $210F                 ; |
CODE_00949E:        9C 10 21      STZ $2110                 ; |
CODE_0094A1:        9C 10 21      STZ $2110                 ; |
CODE_0094A4:        9C 11 21      STZ $2111                 ; |
CODE_0094A7:        9C 11 21      STZ $2111                 ; |
CODE_0094AA:        9C 12 21      STZ $2112                 ; |
CODE_0094AD:        9C 12 21      STZ $2112                 ;/
CODE_0094B0:        A9 0F         LDA #$0F                  ;\Maximum brightness
CODE_0094B2:        8D 00 21      STA $2100                 ;/
CODE_0094B5:        2C 12 42      BIT $4212                 ;\Wait for VBlank
CODE_0094B8:        10 FB         BPL CODE_0094B5           ;/
CODE_0094BA:        E6 FD         INC $FD                   ;\From now on everything from here will execute
CODE_0094BC:        A5 FD         LDA $FD                   ; |on a vblank. Increase frame counter
CODE_0094BE:        C9 18         CMP #$18                  ; |If it isn't $18 yet
CODE_0094C0:        D0 3F         BNE CODE_009501           ;/ branch 
CODE_0094C2:        64 FD         STZ $FD                   ;Store zero to the something
CODE_0094C4:        9C 21 21      STZ $2121                 ;CGRAM Palette destination: 00
CODE_0094C7:        C2 20         REP #$20                  ;16-bit A
CODE_0094C9:        A9 00 43      LDA #$4300                ;\Direct page:
CODE_0094CC:        5B            TCD                       ;/$43xx
CODE_0094CD:        A0 80         LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_0094CF:        8C 15 21      STY $2115                 ;/
CODE_0094D2:        AD 1A 02      LDA $021A                 ;\Load 2nd color.
CODE_0094D5:        48            PHA                       ; |Push it into A
CODE_0094D6:        AD 1C 02      LDA $021C                 ; |Load 3rd color
CODE_0094D9:        8D 1A 02      STA $021A                 ; |Overwrite 2nd color
CODE_0094DC:        AD 1E 02      LDA $021E                 ; |load last color
CODE_0094DF:        8D 1C 02      STA $021C                 ; |overwrite 3rd color
CODE_0094E2:        68            PLA                       ; |Pull 2nd color from A
CODE_0094E3:        8D 1E 02      STA $021E                 ;/Store into last color
CODE_0094E6:        A9 00 22      LDA #$2200                ;\Base register: $2122. 1 reg write once
CODE_0094E9:        85 00         STA $00                   ; |
CODE_0094EB:        A9 00 02      LDA #$0200                ; |
CODE_0094EE:        85 02         STA $02                   ; |Source address: $00:0200
CODE_0094F0:        A2 00         LDX #$00                  ; |
CODE_0094F2:        86 04         STX $04                   ;/
CODE_0094F4:        85 05         STA $05                   ;DMA Size: 512 bytes.
CODE_0094F6:        A0 01         LDY #$01                  ;\Enable DMA channel 1
CODE_0094F8:        8C 0B 42      STY $420B                 ;/
CODE_0094FB:        A9 00 00      LDA #$0000                ;\
CODE_0094FE:        5B            TCD                       ; |Recover direct page. 8-bit A
CODE_0094FF:        E2 20         SEP #$20                  ;/
CODE_009501:        2C 12 42      BIT $4212                 ;\If you have Vblank, don't continue
CODE_009504:        30 FB         BMI CODE_009501           ;/if out of Vblank then continue with...
CODE_009506:        4C B5 94      JMP CODE_0094B5           ;...Loop forever..... evil coding

DATA_009509:        db $20,$00,$0A,$00,$1B,$00,$17,$00 ;
                    db $12,$00,$17,$00,$10,$00,$3A,$00 ;
                    db $3B,$00,$12,$00,$1D,$00,$3B,$00 ;
                    db $12,$00,$1C,$00,$3B,$00,$0A,$00 ;
                    db $3B,$00,$1C,$00,$0E,$00,$1B,$00 ;
                    db $12,$00,$18,$00,$1E,$00,$1C,$00 ;
                    db $3B,$00,$3B,$00,$0C,$00,$1B,$00 ;
                    db $12,$00,$16,$00,$0E,$00,$3B,$00 ;
                    db $1D,$00,$18,$00,$3B,$00,$0C,$00 ;
                    db $18,$00,$19,$00,$22,$00,$3B,$00 ;"WARNING: IT IS A SERIOUS CRIME TO COPY VIDEO GAMES.
                    db $1F,$00,$12,$00,$0D,$00,$0E,$00 ;18 USC 2319 PLEASE REFER TO YOUR NINTENDO GAME
                    db $18,$00,$3B,$00,$10,$00,$0A,$00 ;INSTRUCTION BOOKLET FOR FURTHER INFORMATION."
                    db $16,$00,$0E,$00,$1C,$00,$26,$00 ;
                    db $01,$00,$08,$00,$3B,$00,$1E,$00 ;
                    db $1C,$00,$0C,$00,$3B,$00,$02,$00 ;
                    db $03,$00,$01,$00,$09,$00,$3B,$00 ;
                    db $19,$00,$15,$00,$0E,$00,$0A,$00 ;
                    db $1C,$00,$0E,$00,$3B,$00,$1B,$00 ;
                    db $0E,$00,$0F,$00,$0E,$00,$1B,$00 ;
                    db $3B,$00,$3B,$00,$1D,$00,$18,$00 ;
                    db $3B,$00,$22,$00,$18,$00,$1E,$00 ;
                    db $1B,$00,$3B,$00,$17,$00,$12,$00 ;
                    db $17,$00,$1D,$00,$0E,$00,$17,$00 ;
                    db $0D,$00,$18,$00,$3B,$00,$10,$00 ;
                    db $0A,$00,$16,$00,$0E,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00,$3B,$00,$3B,$00 ;
                    db $12,$00,$17,$00,$1C,$00,$1D,$00 ;
                    db $1B,$00,$1E,$00,$0C,$00,$1D,$00 ;
                    db $12,$00,$18,$00,$17,$00,$3B,$00 ;
                    db $0B,$00,$18,$00,$18,$00,$14,$00 ;
                    db $15,$00,$0E,$00,$1D,$00,$3B,$00 ;
                    db $0F,$00,$18,$00,$1B,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00,$0F,$00,$1E,$00 ;
                    db $1B,$00,$1D,$00,$11,$00,$0E,$00 ;
                    db $1B,$00,$3B,$00,$12,$00,$17,$00 ;
                    db $0F,$00,$18,$00,$1B,$00,$16,$00 ;
                    db $0A,$00,$1D,$00,$12,$00,$18,$00 ;
                    db $17,$00,$26,$00,$3B,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00,$3B,$00,$3B,$00 ;

CODE_009641:        78            SEI                       ;Set interrupt flag
CODE_009642:        9C 00 42      STZ $4200                 ;No interrupts
CODE_009645:        9C 0C 42      STZ $420C                 ;No HDMA
CODE_009648:        9C 0B 42      STZ $420B                 ;No DMA
CODE_00964B:        A9 80         LDA #$80                  ;\Forced blank
CODE_00964D:        8D 00 21      STA $2100                 ;/
CODE_009650:        9C 40 21      STZ $2140                 ;\
CODE_009653:        9C 41 21      STZ $2141                 ; |No SFX
CODE_009656:        9C 43 21      STZ $2143                 ;/
CODE_009659:        A9 F0         LDA #$F0                  ;\
CODE_00965B:        8D 42 21      STA $2142                 ;/Fade out the music
CODE_00965E:        20 B9 83      JSR CODE_0083B9           ;
CODE_009661:        E2 20         SEP #$20                  ;16-bit A
CODE_009663:        0B            PHD                       ;Push direct page
CODE_009664:        9C 21 21      STZ $2121                 ;Palette number: $00
CODE_009667:        C2 20         REP #$20                  ;16-bit A
CODE_009669:        A9 3B 3B      LDA #$3B3B                ;
CODE_00966C:        85 02         STA $02                   ;
CODE_00966E:        A9 00 08      LDA #$0800                ;
CODE_009671:        85 00         STA $00                   ;
CODE_009673:        A0 00         LDY #$00                  ;
CODE_009675:        22 90 86 00   JSL CODE_008690           ;
CODE_009679:        A9 00 43      LDA #$4300                ;\Direct page: $43xx
CODE_00967C:        5B            TCD                       ;/
CODE_00967D:        A0 80         LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_00967F:        8C 15 21      STY $2115                 ;/
CODE_009682:        A9 FF 7F      LDA #$7FFF                ;\
CODE_009685:        8D 18 02      STA $0218                 ; |
CODE_009688:        A9 F9 7F      LDA #$7FF9                ; |4 colors which are white, and 3 blue tints
CODE_00968B:        8D 1A 02      STA $021A                 ; |They are located at palette 00
CODE_00968E:        A9 D0 7F      LDA #$7FD0                ; |Colors $0C, $0D, $0E, $0F
CODE_009691:        8D 1C 02      STA $021C                 ; |
CODE_009694:        A9 E9 6A      LDA #$6AE9                ; |
CODE_009697:        8D 1E 02      STA $021E                 ;/
CODE_00969A:        A9 00 22      LDA #$2200                ;\1 reg write once. base reg = $2122
CODE_00969D:        85 00         STA $00                   ;/CGRAM write reg
CODE_00969F:        A9 00 02      LDA #$0200                ;\
CODE_0096A2:        85 02         STA $02                   ; |DMA Source: $00:0200
CODE_0096A4:        A2 00         LDX #$00                  ; |
CODE_0096A6:        86 04         STX $04                   ;/
CODE_0096A8:        85 05         STA $05                   ;DMA size: 0x200/512 bytes.
CODE_0096AA:        A0 01         LDY #$01                  ;\Enable DMA channel 1
CODE_0096AC:        8C 0B 42      STY $420B                 ;/
CODE_0096AF:        A9 01 18      LDA #$1801                ;\Base reg: $2118: VRAM Write
CODE_0096B2:        85 00         STA $00                   ;/2 regs write once
CODE_0096B4:        A9 00 00      LDA #$0000                ;\VRAM Address: $0000
CODE_0096B7:        8D 16 21      STA $2116                 ;/
CODE_0096BA:        A9 00 98      LDA #$9800                ;\
CODE_0096BD:        85 02         STA $02                   ; |DMA Source: $19:9800
CODE_0096BF:        A2 19         LDX #$19                  ; |SMB2 font GFX
CODE_0096C1:        86 04         STX $04                   ;/
CODE_0096C3:        A9 00 08      LDA #$0800                ;\DMA Size: 0x800 bytes/2kB
CODE_0096C6:        85 05         STA $05                   ;/
CODE_0096C8:        8C 0B 42      STY $420B                 ;Enable DMA channel 1
CODE_0096CB:        8B            PHB                       ;\
CODE_0096CC:        A2 00         LDX #$00                  ; |Set program bank
CODE_0096CE:        DA            PHX                       ; |
CODE_0096CF:        AB            PLB                       ;/
CODE_0096D0:        A2 00         LDX #$00                  ;\
CODE_0096D2:        BD 09 95      LDA $9509,x               ; |
CODE_0096D5:        9D C6 09      STA $09C6,x               ; |
CODE_0096D8:        BD 3D 95      LDA $953D,x               ; |
CODE_0096DB:        9D 46 0A      STA $0A46,x               ; |
CODE_0096DE:        BD 71 95      LDA $9571,x               ; |Upload the 'pirated' message to RAM
CODE_0096E1:        9D 46 0B      STA $0B46,x               ; |
CODE_0096E4:        BD A5 95      LDA $95A5,x               ; |
CODE_0096E7:        9D C6 0B      STA $0BC6,x               ; |
CODE_0096EA:        BD D9 95      LDA $95D9,x               ; |
CODE_0096ED:        9D 46 0C      STA $0C46,x               ; |
CODE_0096F0:        BD 0D 96      LDA $960D,x               ; |
CODE_0096F3:        9D C6 0C      STA $0CC6,x               ;/
CODE_0096F6:        E8            INX                       ;\
CODE_0096F7:        E8            INX                       ; |If not done yet, continue uploading.
CODE_0096F8:        E0 34         CPX #$34                  ; |
CODE_0096FA:        D0 D6         BNE CODE_0096D2           ;/
CODE_0096FC:        4C 59 94      JMP CODE_009459           ;Continue updating palette animation and loop.

DATA_0096FF:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;Values in a decrementing fashion
                    db $FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE
                    db $FD,$FD,$FD,$FD,$FC,$FC,$FC,$FB
                    db $FB,$FB,$FA,$FA,$F9,$F9,$F8,$F8
                    db $F7,$F7,$F6,$F6,$F5,$F5,$F4,$F3
                    db $F3,$F2,$F1,$F1,$F0,$EF,$EE,$EE
                    db $ED,$EC,$EB,$EA,$E9,$E9,$E8,$E7
                    db $E6,$E5,$E4,$E3,$E2,$E1,$DF,$DE
                    db $DD,$DC,$DB,$DA,$D8,$D7,$D6,$D5
                    db $D3,$D2,$D0,$CF,$CD,$CC,$CA,$C9
                    db $C7,$C6,$C4,$C2,$C1,$BF,$BD,$BB
                    db $B9,$B7,$B6,$B4,$B1,$AF,$AD,$AB
                    db $A9,$A7,$A4,$A2,$9F,$9D,$9A,$97
                    db $95,$92,$8F,$8C,$89,$86,$82,$7F
                    db $7B,$78,$74,$70,$6C,$67,$63,$5E
                    db $59,$53,$4D,$46,$3F,$37,$2D,$1F
                    db $00

DATA_009780:        dw $FFFF,$FFFF,$8000,$5555 ;Values in a decrementing fashion
                    dw $4000,$3333,$2AAA,$2492 ;Used in "peach saved" sequence at the
                    dw $2000,$1C71,$1999,$1745 ;end of SMB1 and SMB:TLL for the windowing HDMA
                    dw $1555,$13B1,$1249,$1111 ;Format...?
                    dw $1000,$0F0F,$0E38,$0D79
                    dw $0CCC,$0C30,$0BA2,$0B21
                    dw $0AAA,$0A3D,$09D8,$097B
                    dw $0924,$08D3,$0888,$0842
                    dw $0800,$07C1,$0787,$0750
                    dw $071C,$06EB,$06BC,$0690
                    dw $0666,$063E,$0618,$05F4
                    dw $05D1,$05B0,$0590,$0572
                    dw $0555,$0539,$051E,$0505
                    dw $04EC,$04D4,$04BD,$04A7
                    dw $0492,$047D,$0469,$0456
                    dw $0444,$0432,$0421,$0410
                    dw $0400,$03F0,$03E0,$03D2
                    dw $03C3,$03B5,$03A8,$039B
                    dw $038E,$0381,$0375,$0369
                    dw $035E,$0353,$0348,$033D
                    dw $0333,$0329,$031F,$0315
                    dw $030C,$0303,$02FA,$02F1
                    dw $02E8,$02E0,$02D8,$02D0
                    dw $02C8,$02C0,$02B9,$02B1
                    dw $02AA,$02A3,$029C,$0295
                    dw $028F,$0288,$0282,$027C
                    dw $0276,$0270,$026A,$0264
                    dw $025E,$0259,$0253,$024E
                    dw $0249,$0243,$023E,$0239
                    dw $0234,$0230,$022B,$0226
                    dw $0222,$021D,$0219,$0214
                    dw $0210,$020C,$0208,$0204
                    dw $0200,$01FC,$01F8,$01F4
                    dw $01F0,$01EC,$01E9,$01E5
                    dw $01E1,$01DE,$01DA,$01D7
                    dw $01D4,$01D0,$01CD,$01CA
                    dw $01C7,$01C3,$01C0,$01BD
                    dw $01BA,$01B7,$01B4,$01B2
                    dw $01AF,$01AC,$01A9,$01A6
                    dw $01A4,$01A1,$019E,$019C
                    dw $0199,$0197,$0194,$0192
                    dw $018F,$018D,$018A,$0188
                    dw $0186,$0183,$0181,$017F
                    dw $017D,$017A,$0178,$0176
                    dw $0174,$0172,$0170,$016E
                    dw $016C,$016A,$0168,$0166
                    dw $0164,$0162,$0160,$015E
                    dw $015C,$015A,$0158,$0157
                    dw $0155,$0153,$0151,$0150
                    dw $014E,$014C,$014A,$0149
                    dw $0147,$0146,$0144,$0142
                    dw $0141,$013F,$013E,$013C
                    dw $013B,$0139,$0138,$0136
                    dw $0135,$0133,$0132,$0130
                    dw $012F,$012E,$012C,$012B
                    dw $0129,$0128,$0127,$0125
                    dw $0124,$0123,$0121,$0120
                    dw $011F,$011E,$011C,$011B
                    dw $011A,$0119,$0118,$0116
                    dw $0115,$0114,$0113,$0112
                    dw $0111,$010F,$010E,$010D
                    dw $010C,$010B,$010A,$0109
                    dw $0108,$0107,$0106,$0105
                    dw $0104,$0103,$0102,$0101
                    dw $0100

DATA_009982:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF

PNTR_009B80:        dw CODE_009C3A            ; $00 = Set up things for Nintendo Presents Screen
                    dw CODE_009C7A            ; $01 = Fade into Nintendo Presents Screen
                    dw CODE_009C8A            ; $02 = Show Nintendo Presents Screen
                    dw CODE_009CB6            ; $03 = Fade out of presents screen and setup title screen
                    dw CODE_009D48            ; $04 = Fade into title screen
                    dw CODE_009D5E            ; $05 = Title screen (lights out and everyone is talking)
                    dw CODE_009F01            ; $06 = Waste some time
                    dw CODE_009F01            ; $07 = Waste some time
                    dw CODE_009F01            ; $08 = Waste some time
                    dw CODE_009F01            ; $09 = Waste some time
                    dw CODE_009EF9            ; $0A = Get some SPC data uploaded and play title screen music
                    dw CODE_009DC6            ; $0B = ??? Unused?
                    dw CODE_009E16            ; $0C = Title screen
                    dw CODE_009EAC            ; $0D = Turn black
                    dw CODE_009E16            ; $0E = Turn back to normal
                    dw CODE_009EAC            ; $0F = Black
                    dw CODE_009E16            ; $10 = Normal
                    dw CODE_009EAC            ; $11 = Black
                    dw CODE_009E16            ; $12 = Normal
                    dw CODE_009EAC            ; $13 = Black
                    dw CODE_009F01            ; $14 = Waste some time
                    dw CODE_009F01            ; $15 = Waste some time
                    dw CODE_009F01            ; $16 = Waste some time
                    dw CODE_009F01            ; $17 = Waste some time
                    dw CODE_009F01            ; $18 = Waste some time
                    dw CODE_009F04            ; $19 = Upload SPC data
                    dw CODE_009E5C            ; $1A = Lights out (again)
                    dw CODE_009F14            ; $1B = Title screen
                    dw CODE_009F6D            ; $1C = Title screen (almost time to change)
                    dw CODE_009F85            ; $1D = Fade out to gameplay example
                    dw CODE_009F9C            ; $1E = Wait a bit and play "fade out" SFX
                    dw CODE_009FF1            ; $1F = Triangle fade out routine

CODE_009BC0:        A5 E1         LDA $E1                   ;\
CODE_009BC2:        0A            ASL A                     ; | Do sub-modes
CODE_009BC3:        AA            TAX                       ; |
CODE_009BC4:        FC 80 9B      JSR (PNTR_009B80,x)       ;/
CODE_009BC7:        A5 E1         LDA $E1                   ;\
CODE_009BC9:        C9 04         CMP #$04                  ; | If we are not on the title screen yet, branch
CODE_009BCB:        90 6C         BCC CODE_009C39           ;/
CODE_009BCD:        20 E3 A0      JSR CODE_00A0E3           ; Show "Super Mario-All Stars" and Nintendo copyright text
CODE_009BD0:        A5 E1         LDA $E1                   ;\
CODE_009BD2:        C9 05         CMP #$05                  ; | If we are not actually displaying the title screen yet, branch
CODE_009BD4:        90 63         BCC CODE_009C39           ;/
CODE_009BD6:        C9 1E         CMP #$1E                  ;\
CODE_009BD8:        B0 5F         BCS CODE_009C39           ;/
CODE_009BDA:        A5 F0         LDA $F0                   ;\
CODE_009BDC:        05 F1         ORA $F1                   ; |
CODE_009BDE:        05 27         ORA $27                   ; | Get controller input
CODE_009BE0:        29 10         AND #$10                  ; |
CODE_009BE2:        85 27         STA $27                   ;/
CODE_009BE4:        A5 27         LDA $27                   ;\ If we are not pressing start, branch
CODE_009BE6:        F0 51         BEQ CODE_009C39           ;/
CODE_009BE8:        C2 20         REP #$20                  ;\
CODE_009BEA:        A9 00 02      LDA #$0200                ; |
CODE_009BED:        85 00         STA $00                   ; |
CODE_009BEF:        A9 00 CA      LDA #$CA00                ; |
CODE_009BF2:        A0 02         LDY #$02                  ; | Upload palette
CODE_009BF4:        85 02         STA $02                   ; |
CODE_009BF6:        84 04         STY $04                   ; |
CODE_009BF8:        A9 00 92      LDA #$9200                ; |
CODE_009BFB:        A0 7F         LDY #$7F                  ; |
CODE_009BFD:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_009C01:        A9 00 00      LDA #$0000                ;\ Set color 0 to black
CODE_009C04:        8F 00 92 7F   STA $7F9200               ;/
CODE_009C08:        E2 20         SEP #$20                  ;\
CODE_009C0A:        A9 25         LDA #$25                  ; |
CODE_009C0C:        8D 1D 01      STA $011D                 ; | Set back drop color
CODE_009C0F:        A9 4D         LDA #$4D                  ; |
CODE_009C11:        8D 1E 01      STA $011E                 ; |
CODE_009C14:        A9 95         LDA #$95                  ; |
CODE_009C16:        8D 1F 01      STA $011F                 ;/
CODE_009C19:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009C1C:        20 83 B6      JSR CODE_00B683           ; Move BG1 tilemap to RAM
CODE_009C1F:        A9 50         LDA #$50                  ;\
CODE_009C21:        85 E3         STA $E3                   ; | Set timer
CODE_009C23:        64 E4         STZ $E4                   ;/
CODE_009C25:        A9 0C         LDA #$0C                  ;\
CODE_009C27:        85 22         STA $22                   ; | Set timer
CODE_009C29:        64 23         STZ $23                   ;/
CODE_009C2B:        A9 1E         LDA #$1E                  ;\
CODE_009C2D:        85 E1         STA $E1                   ;/
CODE_009C2F:        A9 11         LDA #$11                  ;\ Mute music
CODE_009C31:        8D 60 00      STA $0060                 ;/
CODE_009C34:        A9 29         LDA #$29                  ;\ Play sound effect
CODE_009C36:        8D 63 00      STA $0063                 ;/
CODE_009C39:        6B            RTL                       ;

CODE_009C3A:        A9 00         LDA #$00                  ;
CODE_009C3C:        8F F2 1F 70   STA $701FF2               ;
CODE_009C40:        64 E7         STZ $E7                   ;
CODE_009C42:        C2 20         REP #$20                  ;
CODE_009C44:        A9 00 02      LDA #$0200                ;\ Size
CODE_009C47:        85 00         STA $00                   ;/
CODE_009C49:        A9 00 CA      LDA #$CA00                ;\
CODE_009C4C:        A0 02         LDY #$02                  ; | Source: $02:CA00
CODE_009C4E:        85 02         STA $02                   ; |
CODE_009C50:        84 04         STY $04                   ;/
CODE_009C52:        A9 00 92      LDA #$9200                ;\ RAM: $7F:9200
CODE_009C55:        A0 7F         LDY #$7F                  ;/
CODE_009C57:        22 6D 86 00   JSL CODE_00866D           ; Upload to RAM
CODE_009C5B:        A9 00 00      LDA #$0000                ;\
CODE_009C5E:        8F 00 90 7F   STA $7F9000               ; | Make the first two colors black
CODE_009C62:        8F 00 92 7F   STA $7F9200               ;/
CODE_009C66:        E2 20         SEP #$20                  ;
CODE_009C68:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009C6B:        A9 10         LDA #$10                  ;\ Sprites on main screen
CODE_009C6D:        8D 17 01      STA $0117                 ;/
CODE_009C70:        A9 20         LDA #$20                  ;
CODE_009C72:        8D 1C 01      STA $011C                 ;
CODE_009C75:        9C 00 01      STZ $0100                 ;
CODE_009C78:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009C7A:        20 2B A0      JSR CODE_00A02B           ; Draw sprite
CODE_009C7D:        EE 00 01      INC $0100                 ; Increase screen brightness
CODE_009C80:        AD 00 01      LDA $0100                 ;\
CODE_009C83:        C9 0F         CMP #$0F                  ; | Branch if we haven't reached max brightness
CODE_009C85:        D0 02         BNE CODE_009C89           ;/
CODE_009C87:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009C89:        60            RTS                       ;

CODE_009C8A:        A5 1C         LDA $1C                   ;\
CODE_009C8C:        C9 61         CMP #$61                  ; |If the presents timer reaches this value, branch
CODE_009C8E:        D0 0D         BNE CODE_009C9D           ;/
CODE_009C90:        A9 01         LDA #$01                  ;\Blink SFX
CODE_009C92:        8D 63 00      STA $0063                 ; |
CODE_009C95:        85 24         STA $24                   ; |Set blinking timer to #$02
CODE_009C97:        A9 02         LDA #$02                  ; |
CODE_009C99:        85 22         STA $22                   ; |
CODE_009C9B:        64 23         STZ $23                   ;/
CODE_009C9D:        20 2B A0      JSR CODE_00A02B           ; Keep the sprite drawn
CODE_009CA0:        A5 24         LDA $24                   ;\ If it is not time to blink, branch
CODE_009CA2:        F0 03         BEQ CODE_009CA7           ;/
CODE_009CA4:        20 A6 A0      JSR CODE_00A0A6           ;
CODE_009CA7:        C6 1C         DEC $1C                   ;\ Decrease presents timer
CODE_009CA9:        D0 DE         BNE CODE_009C89           ;/ If it is not zero, return
CODE_009CAB:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009CAD:        A9 F0         LDA #$F0                  ;
CODE_009CAF:        85 1D         STA $1D                   ;
CODE_009CB1:        64 21         STZ $21                   ;
CODE_009CB3:        80 01         BRA CODE_009CB6           ;

CODE_009CB5:        60            RTS                       ;

CODE_009CB6:        64 22         STZ $22                   ;
CODE_009CB8:        A9 01         LDA #$01                  ;
CODE_009CBA:        85 24         STA $24                   ;
CODE_009CBC:        20 2B A0      JSR CODE_00A02B           ; Keep the sprite drawn
CODE_009CBF:        CE 00 01      DEC $0100                 ;\ Decrease screen brightness
CODE_009CC2:        D0 F1         BNE CODE_009CB5           ;/ If it is not zero, branch
CODE_009CC4:        A9 80         LDA #$80                  ;\
CODE_009CC6:        8D 00 21      STA $2100                 ; | Force blank
CODE_009CC9:        8D 00 01      STA $0100                 ;/
CODE_009CCC:        20 83 B6      JSR CODE_00B683           ; Upload BG1 tilemap and set some timers
CODE_009CCF:        C2 20         REP #$20                  ;
CODE_009CD1:        A9 00 02      LDA #$0200                ;\
CODE_009CD4:        85 00         STA $00                   ; |
CODE_009CD6:        A9 00 C8      LDA #$C800                ; |
CODE_009CD9:        A0 02         LDY #$02                  ; |
CODE_009CDB:        85 02         STA $02                   ; | Upload title screen palette
CODE_009CDD:        84 04         STY $04                   ; |
CODE_009CDF:        A9 00 92      LDA #$9200                ; |
CODE_009CE2:        A0 7F         LDY #$7F                  ; |
CODE_009CE4:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_009CE8:        A9 00 00      LDA #$0000                ;\ Set the first color to black
CODE_009CEB:        8F 00 92 7F   STA $7F9200               ;/
CODE_009CEF:        A0 80         LDY #$80                  ;\
CODE_009CF1:        8C 15 21      STY $2115                 ; |
CODE_009CF4:        A9 00 60      LDA #$6000                ; |
CODE_009CF7:        8D 16 21      STA $2116                 ; | Upload sprite GFX
CODE_009CFA:        A9 01 18      LDA #$1801                ; |
CODE_009CFD:        8D 00 43      STA $4300                 ; |
CODE_009D00:        A9 00 A0      LDA #$A000                ; | Source: $02A000
CODE_009D03:        8D 02 43      STA $4302                 ; | Size:   $2000
CODE_009D06:        A0 02         LDY #$02                  ; |
CODE_009D08:        8C 04 43      STY $4304                 ; |
CODE_009D0B:        A9 00 20      LDA #$2000                ; |
CODE_009D0E:        8D 05 43      STA $4305                 ; |
CODE_009D11:        A0 01         LDY #$01                  ; |
CODE_009D13:        8C 0B 42      STY $420B                 ;/
CODE_009D16:        E2 20         SEP #$20                  ;
CODE_009D18:        A9 02         LDA #$02                  ;\ BG2 on main screen
CODE_009D1A:        8D 17 01      STA $0117                 ;/ why?
CODE_009D1D:        A9 11         LDA #$11                  ;\ BG1 and sprites on sub-screen
CODE_009D1F:        8D 18 01      STA $0118                 ;/
CODE_009D22:        A9 02         LDA #$02                  ;\
CODE_009D24:        8D 1B 01      STA $011B                 ; | Enable sub-screen
CODE_009D27:        A9 20         LDA #$20                  ; |
CODE_009D29:        8D 1C 01      STA $011C                 ;/
CODE_009D2C:        A9 21         LDA #$21                  ;\
CODE_009D2E:        8D 1D 01      STA $011D                 ; | Set backdrop color
CODE_009D31:        A9 49         LDA #$49                  ; |
CODE_009D33:        8D 1E 01      STA $011E                 ; |
CODE_009D36:        A9 91         LDA #$91                  ; |
CODE_009D38:        8D 1F 01      STA $011F                 ;/
CODE_009D3B:        A9 3E         LDA #$3E                  ;\ Play chatting noise
CODE_009D3D:        8D 60 00      STA $0060                 ;/
CODE_009D40:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009D43:        9C 00 01      STZ $0100                 ; Screen brightness = 0
CODE_009D46:        E6 E1         INC $E1                   ; Next subgame mode
CODE_009D48:        EE 00 01      INC $0100                 ; Fade into title screen
CODE_009D4B:        AD 00 01      LDA $0100                 ;\
CODE_009D4E:        C9 0F         CMP #$0F                  ; | If we have not reached max screen brightness branch
CODE_009D50:        D0 0B         BNE CODE_009D5D           ;/
CODE_009D52:        C2 20         REP #$20                  ;
CODE_009D54:        A9 1A 01      LDA #$011A                ;\ Set timer (amount of time until we change the palette/"turn the lights on")
CODE_009D57:        85 E3         STA $E3                   ;/
CODE_009D59:        E2 20         SEP #$20                  ;
CODE_009D5B:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009D5D:        60            RTS                       ;

CODE_009D5E:        C2 20         REP #$20                  ;
CODE_009D60:        A5 E3         LDA $E3                   ;\
CODE_009D62:        C9 20 00      CMP #$0020                ; | If the timer is < $0020 branch
CODE_009D65:        90 05         BCC CODE_009D6C           ;/
CODE_009D67:        E2 20         SEP #$20                  ;
CODE_009D69:        20 3F B6      JSR CODE_00B63F           ; Make everyone talk
CODE_009D6C:        C2 20         REP #$20                  ;
CODE_009D6E:        C6 E3         DEC $E3                   ;\ If it is not time to "turn the lights on", return
CODE_009D70:        D0 51         BNE CODE_009DC3           ;/
CODE_009D72:        E2 20         SEP #$20                  ;
CODE_009D74:        20 83 B6      JSR CODE_00B683           ; Upload BG1 tilemap
CODE_009D77:        C2 20         REP #$20                  ;\
CODE_009D79:        A9 00 02      LDA #$0200                ; |
CODE_009D7C:        85 00         STA $00                   ; |
CODE_009D7E:        A9 00 CA      LDA #$CA00                ; | Put palette in RAM
CODE_009D81:        A0 02         LDY #$02                  ; |
CODE_009D83:        85 02         STA $02                   ; |
CODE_009D85:        84 04         STY $04                   ; |
CODE_009D87:        A9 00 92      LDA #$9200                ; |
CODE_009D8A:        A0 7F         LDY #$7F                  ; |
CODE_009D8C:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_009D90:        A9 00 00      LDA #$0000                ;\ color 0 black
CODE_009D93:        8F 00 92 7F   STA $7F9200               ;/
CODE_009D97:        E2 20         SEP #$20                  ;
CODE_009D99:        A9 25         LDA #$25                  ;\
CODE_009D9B:        8D 1D 01      STA $011D                 ; |
CODE_009D9E:        A9 4D         LDA #$4D                  ; | Set backdrop color
CODE_009DA0:        8D 1E 01      STA $011E                 ; |
CODE_009DA3:        A9 95         LDA #$95                  ; |
CODE_009DA5:        8D 1F 01      STA $011F                 ;/
CODE_009DA8:        EE C0 0A      INC $0AC0                 ; Upload palette buffer to CGRAM
CODE_009DAB:        C2 20         REP #$20                  ;
CODE_009DAD:        A9 45 04      LDA #$0445                ;\ Set amount of time left on title screen
CODE_009DB0:        85 E3         STA $E3                   ;/
CODE_009DB2:        4A            LSR A                     ;
CODE_009DB3:        18            CLC                       ;
CODE_009DB4:        69 10 00      ADC #$0010                ;
CODE_009DB7:        8D 25 02      STA $0225                 ;
CODE_009DBA:        E2 20         SEP #$20                  ;
CODE_009DBC:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009DBE:        A9 11         LDA #$11                  ;\ Mute sound on this channel
CODE_009DC0:        8D 60 00      STA $0060                 ;/
CODE_009DC3:        E2 20         SEP #$20                  ;
CODE_009DC5:        60            RTS                       ;

CODE_009DC6:        20 8D BD      JSR CODE_00BD8D           ;
CODE_009DC9:        C2 20         REP #$20                  ;
CODE_009DCB:        C6 E3         DEC $E3                   ;
CODE_009DCD:        D0 F4         BNE CODE_009DC3           ;
CODE_009DCF:        E2 20         SEP #$20                  ;
CODE_009DD1:        20 83 B6      JSR CODE_00B683           ;
CODE_009DD4:        C2 20         REP #$20                  ;
CODE_009DD6:        A9 00 02      LDA #$0200                ;
CODE_009DD9:        85 00         STA $00                   ;
CODE_009DDB:        A9 00 C8      LDA #$C800                ;
CODE_009DDE:        A0 02         LDY #$02                  ;
CODE_009DE0:        85 02         STA $02                   ;
CODE_009DE2:        84 04         STY $04                   ;
CODE_009DE4:        A9 00 92      LDA #$9200                ;
CODE_009DE7:        A0 7F         LDY #$7F                  ;
CODE_009DE9:        22 6D 86 00   JSL CODE_00866D           ;
CODE_009DED:        A9 00 00      LDA #$0000                ;
CODE_009DF0:        8F 00 92 7F   STA $7F9200               ;
CODE_009DF4:        E2 20         SEP #$20                  ;
CODE_009DF6:        A9 21         LDA #$21                  ;
CODE_009DF8:        8D 1D 01      STA $011D                 ;
CODE_009DFB:        A9 49         LDA #$49                  ;
CODE_009DFD:        8D 1E 01      STA $011E                 ;
CODE_009E00:        A9 91         LDA #$91                  ;
CODE_009E02:        8D 1F 01      STA $011F                 ;
CODE_009E05:        EE C0 0A      INC $0AC0                 ;
CODE_009E08:        C2 20         REP #$20                  ;
CODE_009E0A:        A9 02 00      LDA #$0002                ;
CODE_009E0D:        85 E3         STA $E3                   ;
CODE_009E0F:        E2 20         SEP #$20                  ;
CODE_009E11:        E6 E1         INC $E1                   ;
CODE_009E13:        E2 20         SEP #$20                  ;
CODE_009E15:        60            RTS                       ;

CODE_009E16:        20 8D BD      JSR CODE_00BD8D           ; Handle flashing "Super Mario All-Stars" text
CODE_009E19:        C2 20         REP #$20                  ;
CODE_009E1B:        C6 E3         DEC $E3                   ;\ If there is still time left on the title screen, branch
CODE_009E1D:        D0 3A         BNE CODE_009E59           ;/
CODE_009E1F:        A9 00 02      LDA #$0200                ;\
CODE_009E22:        85 00         STA $00                   ; |
CODE_009E24:        A9 00 CA      LDA #$CA00                ; |
CODE_009E27:        A0 02         LDY #$02                  ; | Change palette
CODE_009E29:        85 02         STA $02                   ; |
CODE_009E2B:        84 04         STY $04                   ; |
CODE_009E2D:        A9 00 92      LDA #$9200                ; |
CODE_009E30:        A0 7F         LDY #$7F                  ; |
CODE_009E32:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_009E36:        A9 00 00      LDA #$0000                ;\ Make the first color black
CODE_009E39:        8F 00 92 7F   STA $7F9200               ;/
CODE_009E3D:        A9 04 00      LDA #$0004                ;\ Set timer
CODE_009E40:        85 E3         STA $E3                   ;/
CODE_009E42:        A9 25 00      LDA #$0025                ;\
CODE_009E45:        8D 1D 01      STA $011D                 ; |
CODE_009E48:        A9 4D 00      LDA #$004D                ; | Set backdrop color
CODE_009E4B:        8D 1E 01      STA $011E                 ; |
CODE_009E4E:        A9 95 00      LDA #$0095                ; |
CODE_009E51:        8D 1F 01      STA $011F                 ;/
CODE_009E54:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009E57:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009E59:        E2 20         SEP #$20                  ;
CODE_009E5B:        60            RTS                       ;

CODE_009E5C:        20 3F B6      JSR CODE_00B63F           ; Move everyone
CODE_009E5F:        C2 20         REP #$20                  ;
CODE_009E61:        C6 E3         DEC $E3                   ;\ Decrease timer
CODE_009E63:        D0 44         BNE CODE_009EA9           ;/
CODE_009E65:        A9 60 00      LDA #$0060                ;\
CODE_009E68:        85 22         STA $22                   ; | Set timer
CODE_009E6A:        64 23         STZ $23                   ;/
CODE_009E6C:        9C 04 02      STZ $0204                 ;
CODE_009E6F:        A9 00 02      LDA #$0200                ;\
CODE_009E72:        85 00         STA $00                   ; |
CODE_009E74:        A9 00 CA      LDA #$CA00                ; |
CODE_009E77:        A0 02         LDY #$02                  ; |
CODE_009E79:        85 02         STA $02                   ; |
CODE_009E7B:        84 04         STY $04                   ; | Set palette
CODE_009E7D:        A9 00 92      LDA #$9200                ; |
CODE_009E80:        A0 7F         LDY #$7F                  ; |
CODE_009E82:        22 6D 86 00   JSL CODE_00866D           ; |
CODE_009E86:        A9 00 00      LDA #$0000                ; |
CODE_009E89:        8F 00 92 7F   STA $7F9200               ;/
CODE_009E8D:        A9 3E 00      LDA #$003E                ;\ Set timer
CODE_009E90:        85 E3         STA $E3                   ;/
CODE_009E92:        A9 25 00      LDA #$0025                ;\
CODE_009E95:        8D 1D 01      STA $011D                 ; |   
CODE_009E98:        A9 4D 00      LDA #$004D                ; | Set backdrop color
CODE_009E9B:        8D 1E 01      STA $011E                 ; |
CODE_009E9E:        A9 95 00      LDA #$0095                ; |
CODE_009EA1:        8D 1F 01      STA $011F                 ;/
CODE_009EA4:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009EA7:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009EA9:        E2 20         SEP #$20                  ;
CODE_009EAB:        60            RTS                       ;

CODE_009EAC:        C2 20         REP #$20                  ;
CODE_009EAE:        C6 E3         DEC $E3                   ;\ Decrease timer
CODE_009EB0:        D0 44         BNE CODE_009EF6           ;/
CODE_009EB2:        A9 00 02      LDA #$0200                ;\
CODE_009EB5:        85 00         STA $00                   ; |
CODE_009EB7:        A9 00 C8      LDA #$C800                ; |
CODE_009EBA:        A0 02         LDY #$02                  ; | Upload palette
CODE_009EBC:        85 02         STA $02                   ; |
CODE_009EBE:        84 04         STY $04                   ; |
CODE_009EC0:        A9 00 92      LDA #$9200                ; |
CODE_009EC3:        A0 7F         LDY #$7F                  ; |
CODE_009EC5:        22 6D 86 00   JSL CODE_00866D           ;/
CODE_009EC9:        A9 00 00      LDA #$0000                ;\ Make the first color black
CODE_009ECC:        8F 00 92 7F   STA $7F9200               ;/
CODE_009ED0:        A9 02 00      LDA #$0002                ;
CODE_009ED3:        A6 E1         LDX $E1                   ;\
CODE_009ED5:        E0 13         CPX #$13                  ; | Only mute the music after the last flash
CODE_009ED7:        D0 05         BNE CODE_009EDE           ;/
CODE_009ED9:        A2 11         LDX #$11                  ;\ Mute music
CODE_009EDB:        8E 60 00      STX $0060                 ;/
CODE_009EDE:        85 E3         STA $E3                   ; Set timer
CODE_009EE0:        E2 20         SEP #$20                  ;
CODE_009EE2:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009EE5:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009EE7:        A9 21         LDA #$21                  ;\
CODE_009EE9:        8D 1D 01      STA $011D                 ; |
CODE_009EEC:        A9 49         LDA #$49                  ; | Set backdrop color
CODE_009EEE:        8D 1E 01      STA $011E                 ; |
CODE_009EF1:        A9 91         LDA #$91                  ; |
CODE_009EF3:        8D 1F 01      STA $011F                 ;/
CODE_009EF6:        E2 20         SEP #$20                  ;
CODE_009EF8:        60            RTS                       ;

CODE_009EF9:        20 8E 8A      JSR CODE_008A8E           ; Go upload some SPC data
CODE_009EFC:        A9 01         LDA #$01                  ;\ Play title screen music
CODE_009EFE:        8D 62 00      STA $0062                 ;/
CODE_009F01:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009F03:        60            RTS                       ;

CODE_009F04:        20 3F B6      JSR CODE_00B63F           ; Move everyone
CODE_009F07:        20 E7 8A      JSR CODE_008AE7           ; Upload SPC data
CODE_009F0A:        C2 20         REP #$20                  ;
CODE_009F0C:        A9 FA 00      LDA #$00FA                ;\ Set timer
CODE_009F0F:        85 E3         STA $E3                   ;/
CODE_009F11:        E2 20         SEP #$20                  ;
CODE_009F13:        60            RTS                       ;

CODE_009F14:        20 8D BD      JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F17:        20 3F B6      JSR CODE_00B63F           ; Move everyone
CODE_009F1A:        C2 20         REP #$20                  ;
CODE_009F1C:        C6 E3         DEC $E3                   ;\ Decrease timer
CODE_009F1E:        D0 4A         BNE CODE_009F6A           ;/
CODE_009F20:        A9 00 02      LDA #$0200                ;\
CODE_009F23:        85 00         STA $00                   ; |
CODE_009F25:        A9 00 CA      LDA #$CA00                ; |
CODE_009F28:        A0 02         LDY #$02                  ; | Set palette
CODE_009F2A:        85 02         STA $02                   ; |
CODE_009F2C:        84 04         STY $04                   ; |
CODE_009F2E:        A9 00 92      LDA #$9200                ; |
CODE_009F31:        A0 7F         LDY #$7F                  ; |
CODE_009F33:        22 6D 86 00   JSL CODE_00866D           ; |
CODE_009F37:        A9 00 00      LDA #$0000                ; |
CODE_009F3A:        8F 00 92 7F   STA $7F9200               ;/
CODE_009F3E:        A9 25 00      LDA #$0025                ;\
CODE_009F41:        8D 1D 01      STA $011D                 ; |
CODE_009F44:        A9 4D 00      LDA #$004D                ; | Set backdrop color
CODE_009F47:        8D 1E 01      STA $011E                 ; |
CODE_009F4A:        A9 95 00      LDA #$0095                ; |
CODE_009F4D:        8D 1F 01      STA $011F                 ;/
CODE_009F50:        A9 90 03      LDA #$0390                ;
CODE_009F53:        85 E3         STA $E3                   ;
CODE_009F55:        4A            LSR A                     ;
CODE_009F56:        18            CLC                       ;
CODE_009F57:        69 20 00      ADC #$0020                ;
CODE_009F5A:        8D 25 02      STA $0225                 ;
CODE_009F5D:        E2 20         SEP #$20                  ;
CODE_009F5F:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_009F62:        A9 80         LDA #$80                  ;
CODE_009F64:        8D 11 02      STA $0211                 ;
CODE_009F67:        20 8E 8A      JSR CODE_008A8E           ; Go upload some SPC data
CODE_009F6A:        E2 20         SEP #$20                  ;
CODE_009F6C:        60            RTS                       ;

CODE_009F6D:        20 8D BD      JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F70:        20 2B B6      JSR CODE_00B62B           ; Move everyone
CODE_009F73:        C2 20         REP #$20                  ;
CODE_009F75:        C6 E3         DEC $E3                   ;\ Decrease timer
CODE_009F77:        D0 09         BNE CODE_009F82           ;/
CODE_009F79:        E2 20         SEP #$20                  ;
CODE_009F7B:        E6 E1         INC $E1                   ; next sub-game mode
CODE_009F7D:        A9 80         LDA #$80                  ;\
CODE_009F7F:        8D 62 00      STA $0062                 ;/
CODE_009F82:        E2 20         SEP #$20                  ;
CODE_009F84:        60            RTS                       ;

CODE_009F85:        CE 00 01      DEC $0100                 ;\ Decrease screen brightness until black
CODE_009F88:        D0 F8         BNE CODE_009F82           ;/
CODE_009F8A:        A9 00         LDA #$00                  ;\
CODE_009F8C:        8D 00 21      STA $2100                 ; | screen brightness = 0
CODE_009F8F:        8D 00 01      STA $0100                 ;/
CODE_009F92:        20 BC 8A      JSR CODE_008ABC           ; Upload SPC data
CODE_009F95:        64 E1         STZ $E1                   ; sub-game mode 0
CODE_009F97:        A9 09         LDA #$09                  ;\ Do gameplay example
CODE_009F99:        85 E0         STA $E0                   ;/
CODE_009F9B:        60            RTS                       ;

CODE_009F9C:        20 8D BD      JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F9F:        C6 E3         DEC $E3                   ;\ Decrease timer
CODE_009FA1:        D0 07         BNE CODE_009FAA           ;/
CODE_009FA3:        A9 40         LDA #$40                  ;\ Play "fade out" SFX
CODE_009FA5:        8D 63 00      STA $0063                 ;/
CODE_009FA8:        E6 E1         INC $E1                   ; Next sub-game mode
CODE_009FAA:        60            RTS                       ;

DATA_009FAB:        dw $9000,$9020,$9040,$9060 ;Triangle fading graphic offsets. bank is hardcoded at #$02
                    dw $9080,$90A0,$90C0,$90E0
                    dw $9100,$9120,$9140,$9160
                    dw $9180,$91A0,$91C0,$91E0
                    dw $9200,$9220,$9240,$9260
                    dw $9280,$92A0,$92C0,$92E0
                    dw $9300,$9320,$9340,$9360
                    dw $9380,$93A0,$93C0,$93E0
                    dw $9400,$9400,$9400

CODE_009FF1:        A5 FD         LDA $FD                   ;\
CODE_009FF3:        4A            LSR A                     ; | Return all odd frames
CODE_009FF4:        B0 1E         BCS CODE_00A014           ;/
CODE_009FF6:        C2 20         REP #$20                  ;
CODE_009FF8:        A6 E3         LDX $E3                   ; Get which step we are on
CODE_009FFA:        BF AB 9F 00   LDA $009FAB,x             ;\ Set source data location to upload to BG2's tilemap in $E5
CODE_009FFE:        85 E5         STA $E5                   ;/
CODE_00A000:        E8            INX                       ;\ Step we are on+2
CODE_00A001:        E8            INX                       ;/
CODE_00A002:        86 E3         STX $E3                   ; Remeber it
CODE_00A004:        E0 46         CPX #$46                  ;\ If this isn't the last step branch
CODE_00A006:        D0 0C         BNE CODE_00A014           ;/
CODE_00A008:        E6 E0         INC $E0                   ; Next game mode
CODE_00A00A:        64 E1         STZ $E1                   ;\ Clear sub-game mode and timer
CODE_00A00C:        64 E3         STZ $E3                   ;/
CODE_00A00E:        A9 80 00      LDA #$0080                ;\ Force blank
CODE_00A011:        8D 00 01      STA $0100                 ;/
CODE_00A014:        E2 20         SEP #$20                  ;
CODE_00A016:        60            RTS                       ;

DATA_00A017:        db $00,$02,$04,$06,$20,$22,$24,$26  ;Nintendo presents logo tilemap.
                    db $08,$0A,$0C,$0E,$28,$2A,$2C,$2E
                    db $40,$42,$44,$46

CODE_00A02B:        A0 00         LDY #$00                  ;\
CODE_00A02D:        BB            TYX                       ;/Clear registers X and Y
CODE_00A02E:        A9 50         LDA #$50                  ;\#$50 to logo Y
CODE_00A030:        85 00         STA $00                   ;/
CODE_00A032:        A9 60         LDA #$60                  ;\#$60 to logo X
CODE_00A034:        85 01         STA $01                   ;/
CODE_00A036:        A5 01         LDA $01                   ;\
CODE_00A038:        99 00 08      STA $0800,y               ; |
CODE_00A03B:        A5 00         LDA $00                   ; |Write logo to OAM
CODE_00A03D:        99 01 08      STA $0801,y               ; |
CODE_00A040:        BD 17 A0      LDA $A017,x               ; |
CODE_00A043:        99 02 08      STA $0802,y               ; |
CODE_00A046:        E8            INX                       ; |
CODE_00A047:        A9 2E         LDA #$2E                  ; |
CODE_00A049:        99 03 08      STA $0803,y               ; |
CODE_00A04C:        5A            PHY                       ; |
CODE_00A04D:        98            TYA                       ; |
CODE_00A04E:        4A            LSR A                     ; |
CODE_00A04F:        4A            LSR A                     ; |
CODE_00A050:        A8            TAY                       ; |
CODE_00A051:        A9 02         LDA #$02                  ; |Write logo tiles size to OAM. $00 = 8x8, $02 = 16x16
CODE_00A053:        99 20 0A      STA $0A20,y               ; |
CODE_00A056:        7A            PLY                       ; |
CODE_00A057:        C8            INY                       ; |
CODE_00A058:        C8            INY                       ; |
CODE_00A059:        C8            INY                       ; |
CODE_00A05A:        C8            INY                       ; |
CODE_00A05B:        A5 01         LDA $01                   ; |
CODE_00A05D:        18            CLC                       ; |
CODE_00A05E:        69 10         ADC #$10                  ; |
CODE_00A060:        85 01         STA $01                   ; |If not done yet, continue looping
CODE_00A062:        C9 A0         CMP #$A0                  ; |
CODE_00A064:        90 D0         BCC CODE_00A036           ; |
CODE_00A066:        A5 00         LDA $00                   ; |
CODE_00A068:        18            CLC                       ; |
CODE_00A069:        69 10         ADC #$10                  ; |
CODE_00A06B:        85 00         STA $00                   ; |
CODE_00A06D:        C9 A0         CMP #$A0                  ; |
CODE_00A06F:        90 C1         BCC CODE_00A032           ;/
CODE_00A071:        60            RTS                       ;

DATA_00A072:        db $02,$02,$02,$02        ;How long the 4 blinks of the presents logo lasts

DATA_00A076:        dw $7FFF,$2BBC,$43FF,$171C ;RGB values for the blink. Kinda hard to figure it out...
                    dw $7FFF,$2BBC,$171C,$2BBC
                    dw $7FFF,$0A59,$171C,$2BBC

DATA_00A08E:        dw $53FF,$171C,$0A59,$53FF ;same as above
                    dw $171C,$0A59,$53FF,$7FFF
                    dw $2BBC,$53FF,$171C,$0A59

CODE_00A0A6:        A5 23         LDA $23                   ;\
CODE_00A0A8:        0A            ASL A                     ; |
CODE_00A0A9:        85 00         STA $00                   ; |Multiply $23 with 06 and move it to Y
CODE_00A0AB:        0A            ASL A                     ; |
CODE_00A0AC:        18            CLC                       ; |
CODE_00A0AD:        65 00         ADC $00                   ; |
CODE_00A0AF:        A8            TAY                       ;/
CODE_00A0B0:        A2 00         LDX #$00                  ;\
CODE_00A0B2:        B9 76 A0      LDA $A076,y               ; |
CODE_00A0B5:        9F EC 93 7F   STA $7F93EC,x             ; |
CODE_00A0B9:        B9 8E A0      LDA $A08E,y               ; |
CODE_00A0BC:        9F FA 93 7F   STA $7F93FA,x             ; |Do some logo-blinking stuff
CODE_00A0C0:        C8            INY                       ; |
CODE_00A0C1:        E8            INX                       ; |
CODE_00A0C2:        E0 06         CPX #$06                  ; |
CODE_00A0C4:        90 EC         BCC CODE_00A0B2           ;/
CODE_00A0C6:        EE C0 0A      INC $0AC0                 ;
CODE_00A0C9:        C6 22         DEC $22                   ;\Decrease blinking timer.
CODE_00A0CB:        D0 15         BNE CODE_00A0E2           ;/
CODE_00A0CD:        E6 23         INC $23                   ;\
CODE_00A0CF:        A6 23         LDX $23                   ; |If not done yet with the blinking
CODE_00A0D1:        E0 04         CPX #$04                  ; |Load the next blink's duration
CODE_00A0D3:        90 08         BCC CODE_00A0DD           ;/
CODE_00A0D5:        64 23         STZ $23                   ;\
CODE_00A0D7:        64 22         STZ $22                   ; |Otherwise, we're done!
CODE_00A0D9:        64 24         STZ $24                   ; |
CODE_00A0DB:        80 05         BRA CODE_00A0E2           ;/

CODE_00A0DD:        BD 72 A0      LDA $A072,x               ;\ Load blinking duration, indexed by blink count
CODE_00A0E0:        85 22         STA $22                   ; |
CODE_00A0E2:        60            RTS                       ;/

CODE_00A0E3:        A9 48         LDA #$48                  ;
CODE_00A0E5:        85 00         STA $00                   ;
CODE_00A0E7:        A0 00         LDY #$00                  ;
CODE_00A0E9:        BB            TYX                       ;
CODE_00A0EA:        A5 00         LDA $00                   ;
CODE_00A0EC:        99 80 09      STA $0980,y               ;
CODE_00A0EF:        A9 C8         LDA #$C8                  ;
CODE_00A0F1:        99 81 09      STA $0981,y               ;
CODE_00A0F4:        98            TYA                       ;
CODE_00A0F5:        4A            LSR A                     ;
CODE_00A0F6:        09 C0         ORA #$C0                  ;
CODE_00A0F8:        99 82 09      STA $0982,y               ;
CODE_00A0FB:        A9 22         LDA #$22                  ;
CODE_00A0FD:        99 83 09      STA $0983,y               ;
CODE_00A100:        A9 02         LDA #$02                  ;
CODE_00A102:        9D 80 0A      STA $0A80,x               ;
CODE_00A105:        C8            INY                       ;
CODE_00A106:        C8            INY                       ;
CODE_00A107:        C8            INY                       ;
CODE_00A108:        C8            INY                       ;
CODE_00A109:        A5 00         LDA $00                   ;
CODE_00A10B:        18            CLC                       ;
CODE_00A10C:        69 10         ADC #$10                  ;
CODE_00A10E:        85 00         STA $00                   ;
CODE_00A110:        E8            INX                       ;
CODE_00A111:        E0 07         CPX #$07                  ;
CODE_00A113:        D0 D5         BNE CODE_00A0EA           ;
CODE_00A115:        8B            PHB                       ;
CODE_00A116:        4B            PHK                       ;
CODE_00A117:        AB            PLB                       ;
CODE_00A118:        64 00         STZ $00                   ;
CODE_00A11A:        64 01         STZ $01                   ;
CODE_00A11C:        64 02         STZ $02                   ;
CODE_00A11E:        64 03         STZ $03                   ;
CODE_00A120:        C2 10         REP #$10                  ;
CODE_00A122:        A0 00 00      LDY #$0000                ;
CODE_00A125:        A6 02         LDX $02                   ;
CODE_00A127:        BD A7 A1      LDA $A1A7,x               ;
CODE_00A12A:        C9 FF         CMP #$FF                  ;
CODE_00A12C:        F0 33         BEQ CODE_00A161           ;
CODE_00A12E:        38            SEC                       ;
CODE_00A12F:        E9 08         SBC #$08                  ;
CODE_00A131:        99 00 08      STA $0800,y               ;
CODE_00A134:        BD A8 A1      LDA $A1A8,x               ;
CODE_00A137:        99 01 08      STA $0801,y               ;
CODE_00A13A:        BD A9 A1      LDA $A1A9,x               ;
CODE_00A13D:        99 02 08      STA $0802,y               ;
CODE_00A140:        BD AA A1      LDA $A1AA,x               ;
CODE_00A143:        99 03 08      STA $0803,y               ;
CODE_00A146:        A6 00         LDX $00                   ;
CODE_00A148:        A9 02         LDA #$02                  ;
CODE_00A14A:        9D 20 0A      STA $0A20,x               ;
CODE_00A14D:        C8            INY                       ;
CODE_00A14E:        C8            INY                       ;
CODE_00A14F:        C8            INY                       ;
CODE_00A150:        C8            INY                       ;
CODE_00A151:        C2 20         REP #$20                  ;
CODE_00A153:        E6 00         INC $00                   ;
CODE_00A155:        E6 02         INC $02                   ;
CODE_00A157:        E6 02         INC $02                   ;
CODE_00A159:        E6 02         INC $02                   ;
CODE_00A15B:        E6 02         INC $02                   ;
CODE_00A15D:        E2 20         SEP #$20                  ;
CODE_00A15F:        80 C4         BRA CODE_00A125           ;

CODE_00A161:        9C 02 00      STZ $0002                 ;
CODE_00A164:        9C 03 00      STZ $0003                 ;
CODE_00A167:        C8            INY                       ;
CODE_00A168:        C8            INY                       ;
CODE_00A169:        C8            INY                       ;
CODE_00A16A:        C8            INY                       ;
CODE_00A16B:        E6 00         INC $00                   ;
CODE_00A16D:        A6 02         LDX $02                   ;
CODE_00A16F:        BD 48 A2      LDA $A248,x               ;
CODE_00A172:        C9 FF         CMP #$FF                  ;
CODE_00A174:        F0 2D         BEQ CODE_00A1A3           ;
CODE_00A176:        38            SEC                       ;
CODE_00A177:        E9 08         SBC #$08                  ;
CODE_00A179:        99 00 08      STA $0800,y               ;
CODE_00A17C:        BD 49 A2      LDA $A249,x               ;
CODE_00A17F:        99 01 08      STA $0801,y               ;
CODE_00A182:        BD 4A A2      LDA $A24A,x               ;
CODE_00A185:        99 02 08      STA $0802,y               ;
CODE_00A188:        BD 4B A2      LDA $A24B,x               ;
CODE_00A18B:        99 03 08      STA $0803,y               ;
CODE_00A18E:        A6 00         LDX $00                   ;
CODE_00A190:        A9 00         LDA #$00                  ;
CODE_00A192:        9D 20 0A      STA $0A20,x               ;
CODE_00A195:        C2 20         REP #$20                  ;
CODE_00A197:        E6 02         INC $02                   ;
CODE_00A199:        E6 02         INC $02                   ;
CODE_00A19B:        E6 02         INC $02                   ;
CODE_00A19D:        E6 02         INC $02                   ;
CODE_00A19F:        E2 20         SEP #$20                  ;
CODE_00A1A1:        80 C4         BRA CODE_00A167           ;

CODE_00A1A3:        E2 10         SEP #$10                  ;
CODE_00A1A5:        AB            PLB                       ;
CODE_00A1A6:        60            RTS                       ;

DATA_00A1A7:        db $38,$20,$00,$02,$48,$20,$02,$02 ;Super Mario All-Stars logo OAM tilemap
                    db $58,$20,$04,$02,$68,$20,$06,$02 ;on the "hall screen".
                    db $78,$20,$08,$02,$38,$38,$44,$00 ;Format is as following: XX YY TT PP
                    db $48,$30,$22,$00,$58,$30,$24,$00 ;XX = Xpos, YY = YPos,
                    db $68,$30,$26,$00,$78,$30,$28,$00 ;TT = Tile Number, (PP = Properties).
                    db $38,$48,$68,$00,$48,$40,$46,$00 ; YXPPCCCT -------------->^
                    db $58,$40,$48,$00,$68,$40,$4A,$02 ;Basically this is all OAM. yep.
                    db $78,$40,$4C,$00,$28,$58,$80,$00
                    db $38,$58,$82,$00,$48,$50,$6A,$00 ;These tiles are 16x16
                    db $58,$50,$6C,$00,$68,$50,$6E,$00
                    db $98,$10,$8A,$02,$A8,$10,$8C,$02
                    db $B8,$10,$8E,$02,$88,$20,$0A,$02
                    db $98,$20,$0C,$02,$A8,$20,$0E,$02
                    db $B8,$20,$20,$02,$88,$30,$2A,$00
                    db $98,$30,$2C,$00,$A8,$30,$2E,$00
                    db $B8,$30,$40,$00,$C8,$30,$42,$00
                    db $88,$40,$4E,$00,$98,$40,$60,$00
                    db $A8,$40,$62,$00,$B8,$40,$64,$00
                    db $C8,$40,$66,$00,$B8,$50,$84,$00
                    db $C8,$50,$86,$00,$D8,$50,$88,$02
                    db $FF

DATA_00A248:        db $38,$18,$A0,$02,$40,$18,$A1,$02 ;Same purpose as above table!
                    db $48,$18,$A2,$02,$50,$18,$A3,$02 ;But these tiles are 8x8
                    db $58,$18,$A4,$02,$60,$18,$A5,$02
                    db $68,$18,$A6,$02,$70,$18,$A7,$02
                    db $78,$18,$A8,$02,$80,$18,$A9,$02
                    db $38,$30,$AF,$02,$40,$30,$B0,$02
                    db $30,$38,$B1,$00,$30,$40,$B2,$00
                    db $30,$48,$B3,$00,$30,$50,$B4,$00
                    db $78,$50,$B6,$00,$80,$50,$B7,$00
                    db $48,$60,$BE,$00,$88,$18,$AA,$02
                    db $90,$18,$AB,$02,$C8,$18,$AC,$02
                    db $C8,$20,$AD,$02,$C8,$28,$AE,$02
                    db $D8,$48,$B5,$00,$88,$50,$B8,$00
                    db $90,$50,$B9,$00,$98,$50,$BA,$00
                    db $A0,$50,$BB,$00,$A8,$50,$BC,$00
                    db $B0,$50,$BD,$00,$FF

CODE_00A2C5:        CE 00 01      DEC $0100                 ;
CODE_00A2C8:        D0 0B         BNE CODE_00A2D5           ;
CODE_00A2CA:        E6 E0         INC $E0                   ;
CODE_00A2CC:        64 E1         STZ $E1                   ;
CODE_00A2CE:        64 E3         STZ $E3                   ;
CODE_00A2D0:        A9 80         LDA #$80                  ;
CODE_00A2D2:        8D 00 01      STA $0100                 ;
CODE_00A2D5:        E2 20         SEP #$20                  ;
CODE_00A2D7:        6B            RTL                       ;

CODE_00A2D8:        AF 0E 00 70   LDA $70000E               ;\
CODE_00A2DC:        85 D1         STA $D1                   ;/
CODE_00A2DE:        AF 0F 00 70   LDA $70000F               ;\
CODE_00A2E2:        85 D0         STA $D0                   ; | Get the last game played
CODE_00A2E4:        8D 18 02      STA $0218                 ;/
CODE_00A2E7:        A2 01         LDX #$01                  ;
CODE_00A2E9:        22 9C 84 00   JSL CODE_00849C           ; Upload GFX and palette
CODE_00A2ED:        20 BC 8A      JSR CODE_008ABC           ; Upload SPC data
CODE_00A2F0:        A9 0F         LDA #$0F                  ;\ Screen brightness
CODE_00A2F2:        8D 00 01      STA $0100                 ;/
CODE_00A2F5:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_00A2F8:        E6 E0         INC $E0                   ; Next game mode
CODE_00A2FA:        64 E1         STZ $E1                   ; Sub-game mode 0
CODE_00A2FC:        A9 44         LDA #$44                  ;\ Set timer
CODE_00A2FE:        85 E3         STA $E3                   ;/
CODE_00A300:        64 FD         STZ $FD                   ; Reset the frame counter
CODE_00A302:        20 0D A3      JSR CODE_00A30D           ;
CODE_00A305:        A9 41         LDA #$41                  ;\ Play SFX
CODE_00A307:        8D 63 00      STA $0063                 ;/
CODE_00A30A:        4C 9B A3      JMP CODE_00A39B           ;

CODE_00A30D:        C2 10         REP #$10                  ;
CODE_00A30F:        A0 00 00      LDY #$0000                ;
CODE_00A312:        A9 00         LDA #$00                  ;
CODE_00A314:        EB            XBA                       ;
CODE_00A315:        5A            PHY                       ;
CODE_00A316:        98            TYA                       ;
CODE_00A317:        0A            ASL A                     ;
CODE_00A318:        A8            TAY                       ;
CODE_00A319:        BE 0C A8      LDX $A80C,y               ;
CODE_00A31C:        7A            PLY                       ;
CODE_00A31D:        BF 10 00 70   LDA $700010,x             ;
CODE_00A321:        30 01         BMI CODE_00A324           ;
CODE_00A323:        1A            INC A                     ;
CODE_00A324:        99 80 00      STA $0080,y               ;
CODE_00A327:        99 B0 00      STA $00B0,y               ;
CODE_00A32A:        BF 11 00 70   LDA $700011,x             ;
CODE_00A32E:        30 01         BMI CODE_00A331           ;
CODE_00A330:        1A            INC A                     ;
CODE_00A331:        85 00         STA $00                   ;
CODE_00A333:        98            TYA                       ;
CODE_00A334:        29 01         AND #$01                  ;
CODE_00A336:        F0 09         BEQ CODE_00A341           ;
CODE_00A338:        98            TYA                       ;
CODE_00A339:        29 02         AND #$02                  ;
CODE_00A33B:        D0 04         BNE CODE_00A341           ;
CODE_00A33D:        A5 00         LDA $00                   ;
CODE_00A33F:        80 02         BRA CODE_00A343           ;

CODE_00A341:        A9 FF         LDA #$FF                  ;
CODE_00A343:        99 90 00      STA $0090,y               ;
CODE_00A346:        99 C0 00      STA $00C0,y               ;
CODE_00A349:        BF 14 00 70   LDA $700014,x             ;
CODE_00A34D:        99 A0 00      STA $00A0,y               ;
CODE_00A350:        BF 15 00 70   LDA $700015,x             ;
CODE_00A354:        99 70 00      STA $0070,y               ;
CODE_00A357:        DA            PHX                       ;
CODE_00A358:        BB            TYX                       ;
CODE_00A359:        9F 90 04 70   STA $700490,x             ;
CODE_00A35D:        FA            PLX                       ;
CODE_00A35E:        C8            INY                       ;
CODE_00A35F:        C0 10 00      CPY #$0010                ;
CODE_00A362:        90 AE         BCC CODE_00A312           ;
CODE_00A364:        E2 10         SEP #$10                  ;
CODE_00A366:        60            RTS                       ;

DATA_00A367:        dw $6127,$612D,$6133,$6139
                    dw $6187,$618D,$6193,$6199
                    dw $61E7,$61ED,$61F3,$61F9
                    dw $6247,$624D,$6253,$6259

DATA_00A387:        db $1F,$21,$22,$22,$64,$F0,$64,$F1
                    db $64,$F4,$64,$F5,$64,$F2,$64,$F3
                    db $64,$F6,$64,$F7

CODE_00A39B:        A5 E1         LDA $E1                   ;\ If we are running the game select screen branch
CODE_00A39D:        D0 56         BNE CODE_00A3F5           ;/
CODE_00A39F:        A5 FD         LDA $FD                   ;
CODE_00A3A1:        4A            LSR A                     ;
CODE_00A3A2:        B0 4E         BCS CODE_00A3F2           ;
CODE_00A3A4:        C2 20         REP #$20                  ;
CODE_00A3A6:        A6 E3         LDX $E3                   ;
CODE_00A3A8:        BF AB 9F 00   LDA $009FAB,x             ;
CODE_00A3AC:        85 E5         STA $E5                   ;
CODE_00A3AE:        CA            DEX                       ;
CODE_00A3AF:        CA            DEX                       ;
CODE_00A3B0:        86 E3         STX $E3                   ;
CODE_00A3B2:        10 3E         BPL CODE_00A3F2           ;
CODE_00A3B4:        A9 02 00      LDA #$0002                ;
CODE_00A3B7:        8D 62 00      STA $0062                 ;
CODE_00A3BA:        E6 E1         INC $E1                   ;
CODE_00A3BC:        A2 01         LDX #$01                  ;
CODE_00A3BE:        8E 19 02      STX $0219                 ;
CODE_00A3C1:        A9 00 00      LDA #$0000                ;
CODE_00A3C4:        8D 05 01      STA $0105                 ;
CODE_00A3C7:        9C 07 01      STZ $0107                 ;
CODE_00A3CA:        A9 32 00      LDA #$0032                ;
CODE_00A3CD:        85 14         STA $14                   ;
CODE_00A3CF:        64 15         STZ $15                   ;
CODE_00A3D1:        A9 C0 00      LDA #$00C0                ;
CODE_00A3D4:        85 16         STA $16                   ;
CODE_00A3D6:        A9 00 00      LDA #$0000                ;
CODE_00A3D9:        85 19         STA $19                   ;
CODE_00A3DB:        64 1A         STZ $1A                   ;
CODE_00A3DD:        A9 01 00      LDA #$0001                ;
CODE_00A3E0:        8D 17 01      STA $0117                 ;
CODE_00A3E3:        A9 20 00      LDA #$0020                ;
CODE_00A3E6:        85 1B         STA $1B                   ;
CODE_00A3E8:        A9 61 00      LDA #$0061                ;
CODE_00A3EB:        85 1C         STA $1C                   ;
CODE_00A3ED:        A9 40 00      LDA #$0040                ;
CODE_00A3F0:        85 20         STA $20                   ;
CODE_00A3F2:        E2 20         SEP #$20                  ;
CODE_00A3F4:        6B            RTL                       ;

CODE_00A3F5:        AD 16 02      LDA $0216                 ;
CODE_00A3F8:        D0 2F         BNE CODE_00A429           ;
CODE_00A3FA:        AD 17 02      LDA $0217                 ;
CODE_00A3FD:        D0 56         BNE CODE_00A455           ;
CODE_00A3FF:        AE 1A 02      LDX $021A                 ;
CODE_00A402:        D0 72         BNE CODE_00A476           ;
CODE_00A404:        AE 20 02      LDX $0220                 ;
CODE_00A407:        D0 6D         BNE CODE_00A476           ;
CODE_00A409:        A5 F4         LDA $F4                   ;\
CODE_00A40B:        05 F5         ORA $F5                   ; | If we are not pressing left or right branch
CODE_00A40D:        29 03         AND #$03                  ; |
CODE_00A40F:        F0 5A         BEQ CODE_00A46B           ;/
CODE_00A411:        29 01         AND #$01                  ;\ If we are pressing left, branch
CODE_00A413:        F0 2C         BEQ CODE_00A441           ;/
CODE_00A415:        AD 18 02      LDA $0218                 ; Get the current game we are on
CODE_00A418:        29 03         AND #$03                  ;
CODE_00A41A:        AA            TAX                       ;
CODE_00A41B:        BD 87 A3      LDA $A387,x               ;\ Move the correct amount
CODE_00A41E:        8D 16 02      STA $0216                 ;/
CODE_00A421:        EE 18 02      INC $0218                 ; Next game
CODE_00A424:        A9 01         LDA #$01                  ;\ Play SFX
CODE_00A426:        8D 63 00      STA $0063                 ;/
CODE_00A429:        CE 16 02      DEC $0216                 ;\ If zero, branch
CODE_00A42C:        F0 3D         BEQ CODE_00A46B           ;/
CODE_00A42E:        C2 20         REP #$20                  ;
CODE_00A430:        AD 14 02      LDA $0214                 ;\
CODE_00A433:        18            CLC                       ; |
CODE_00A434:        69 04 00      ADC #$0004                ; | Move the games
CODE_00A437:        29 FF 01      AND #$01FF                ; |
CODE_00A43A:        8D 14 02      STA $0214                 ;/
CODE_00A43D:        E2 20         SEP #$20                  ;
CODE_00A43F:        80 2A         BRA CODE_00A46B           ;

CODE_00A441:        CE 18 02      DEC $0218                 ; Same thing up there but the other way
CODE_00A444:        AD 18 02      LDA $0218                 ;
CODE_00A447:        29 03         AND #$03                  ;
CODE_00A449:        AA            TAX                       ;
CODE_00A44A:        BD 87 A3      LDA $A387,x               ;
CODE_00A44D:        8D 17 02      STA $0217                 ;
CODE_00A450:        A9 01         LDA #$01                  ;
CODE_00A452:        8D 63 00      STA $0063                 ;
CODE_00A455:        CE 17 02      DEC $0217                 ;
CODE_00A458:        F0 11         BEQ CODE_00A46B           ;
CODE_00A45A:        C2 20         REP #$20                  ;
CODE_00A45C:        AD 14 02      LDA $0214                 ;
CODE_00A45F:        38            SEC                       ;
CODE_00A460:        E9 04 00      SBC #$0004                ;
CODE_00A463:        29 FF 01      AND #$01FF                ;
CODE_00A466:        8D 14 02      STA $0214                 ;
CODE_00A469:        E2 20         SEP #$20                  ;
CODE_00A46B:        AD 16 02      LDA $0216                 ;\
CODE_00A46E:        0D 17 02      ORA $0217                 ; | If we stopped moving, branch
CODE_00A471:        F0 03         BEQ CODE_00A476           ;/
CODE_00A473:        4C 71 A7      JMP CODE_00A771           ; Return

CODE_00A476:        64 00         STZ $00                   ;
CODE_00A478:        AD 24 02      LDA $0224                 ;\ 
CODE_00A47B:        F0 0F         BEQ CODE_00A48C           ;/
CODE_00A47D:        CE 23 02      DEC $0223                 ;
CODE_00A480:        AD 23 02      LDA $0223                 ;
CODE_00A483:        D0 04         BNE CODE_00A489           ;
CODE_00A485:        A9 06         LDA #$06                  ;
CODE_00A487:        85 E0         STA $E0                   ;
CODE_00A489:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A48C:        AD 20 02      LDA $0220                 ;\ If we did not select a game, branch
CODE_00A48F:        F0 15         BEQ CODE_00A4A6           ;/
CODE_00A491:        A5 F4         LDA $F4                   ;\
CODE_00A493:        05 F5         ORA $F5                   ; |
CODE_00A495:        05 F6         ORA $F6                   ; | If we want to select a new game, branch
CODE_00A497:        05 F7         ORA $F7                   ; |
CODE_00A499:        29 40         AND #$40                  ; |
CODE_00A49B:        85 00         STA $00                   ; |
CODE_00A49D:        D0 21         BNE CODE_00A4C0           ;/
CODE_00A49F:        AD 1A 02      LDA $021A                 ;
CODE_00A4A2:        D0 1C         BNE CODE_00A4C0           ;
CODE_00A4A4:        80 27         BRA CODE_00A4CD           ;

CODE_00A4A6:        AD 1A 02      LDA $021A                 ;
CODE_00A4A9:        D0 15         BNE CODE_00A4C0           ;
CODE_00A4AB:        A5 F4         LDA $F4                   ;\
CODE_00A4AD:        05 F5         ORA $F5                   ; |
CODE_00A4AF:        29 10         AND #$10                  ; | If we choosed a game, branch
CODE_00A4B1:        85 00         STA $00                   ; |
CODE_00A4B3:        D0 02         BNE CODE_00A4B7           ;/
CODE_00A4B5:        80 16         BRA CODE_00A4CD           ;

CODE_00A4B7:        A5 00         LDA $00                   ;
CODE_00A4B9:        48            PHA                       ;
CODE_00A4BA:        20 AE A8      JSR CODE_00A8AE           ;
CODE_00A4BD:        68            PLA                       ;
CODE_00A4BE:        85 00         STA $00                   ;
CODE_00A4C0:        AD 18 02      LDA $0218                 ;
CODE_00A4C3:        29 03         AND #$03                  ;
CODE_00A4C5:        0A            ASL A                     ;
CODE_00A4C6:        AA            TAX                       ;
CODE_00A4C7:        FC A6 A8      JSR (PNTR_00A8A6,x)       ;
CODE_00A4CA:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A4CD:        AD 20 02      LDA $0220                 ;
CODE_00A4D0:        D0 03         BNE CODE_00A4D5           ;
CODE_00A4D2:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A4D5:        A5 0C         LDA $0C                   ;
CODE_00A4D7:        85 00         STA $00                   ;
CODE_00A4D9:        AD 18 02      LDA $0218                 ;
CODE_00A4DC:        29 03         AND #$03                  ;
CODE_00A4DE:        85 D0         STA $D0                   ;
CODE_00A4E0:        A5 F4         LDA $F4                   ;
CODE_00A4E2:        05 F5         ORA $F5                   ;
CODE_00A4E4:        29 20         AND #$20                  ;
CODE_00A4E6:        F0 15         BEQ CODE_00A4FD           ;
CODE_00A4E8:        AF 06 00 70   LDA $700006               ;
CODE_00A4EC:        49 01         EOR #$01                  ;
CODE_00A4EE:        8F 06 00 70   STA $700006               ;
CODE_00A4F2:        A9 01         LDA #$01                  ;
CODE_00A4F4:        8D 63 00      STA $0063                 ;
CODE_00A4F7:        20 EC AF      JSR CODE_00AFEC           ;
CODE_00A4FA:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A4FD:        A5 F4         LDA $F4                   ;
CODE_00A4FF:        05 F5         ORA $F5                   ;
CODE_00A501:        29 0C         AND #$0C                  ;
CODE_00A503:        4A            LSR A                     ;
CODE_00A504:        4A            LSR A                     ;
CODE_00A505:        AA            TAX                       ;
CODE_00A506:        A5 D1         LDA $D1                   ;
CODE_00A508:        18            CLC                       ;
CODE_00A509:        7D EA B5      ADC $B5EA,x               ;
CODE_00A50C:        29 03         AND #$03                  ;
CODE_00A50E:        85 D1         STA $D1                   ;
CODE_00A510:        9B            TXY                       ;
CODE_00A511:        F0 16         BEQ CODE_00A529           ;
CODE_00A513:        AD 1A 02      LDA $021A                 ;
CODE_00A516:        D0 0F         BNE CODE_00A527           ;
CODE_00A518:        AD 20 02      LDA $0220                 ;
CODE_00A51B:        F0 0A         BEQ CODE_00A527           ;
CODE_00A51D:        20 71 B0      JSR CODE_00B071           ;
CODE_00A520:        A9 23         LDA #$23                  ;\SFX to play when you move cursor |> over files ABCD
CODE_00A522:        85 63         STA $63                   ;/when selecting a savefile after selecting a game.
CODE_00A524:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A527:        A5 D1         LDA $D1                   ;
CODE_00A529:        0A            ASL A                     ;
CODE_00A52A:        0A            ASL A                     ;
CODE_00A52B:        18            CLC                       ;
CODE_00A52C:        65 D0         ADC $D0                   ;
CODE_00A52E:        85 01         STA $01                   ;
CODE_00A530:        AA            TAX                       ;
CODE_00A531:        A5 D2         LDA $D2                   ;
CODE_00A533:        F0 03         BEQ CODE_00A538           ;
CODE_00A535:        4C D6 A7      JMP CODE_00A7D6           ;

CODE_00A538:        B5 B0         LDA $B0,x                 ;
CODE_00A53A:        1A            INC A                     ;
CODE_00A53B:        D0 27         BNE CODE_00A564           ;
CODE_00A53D:        A5 F4         LDA $F4                   ;
CODE_00A53F:        05 F5         ORA $F5                   ;
CODE_00A541:        29 10         AND #$10                  ;
CODE_00A543:        F0 03         BEQ CODE_00A548           ;
CODE_00A545:        4C 42 A7      JMP CODE_00A742           ;

CODE_00A548:        A5 F4         LDA $F4                   ;
CODE_00A54A:        05 F5         ORA $F5                   ;
CODE_00A54C:        29 83         AND #$83                  ;
CODE_00A54E:        85 00         STA $00                   ;
CODE_00A550:        A5 F6         LDA $F6                   ;
CODE_00A552:        05 F7         ORA $F7                   ;
CODE_00A554:        29 80         AND #$80                  ;
CODE_00A556:        05 00         ORA $00                   ;
CODE_00A558:        29 83         AND #$83                  ;
CODE_00A55A:        F0 05         BEQ CODE_00A561           ;
CODE_00A55C:        A9 2A         LDA #$2A                  ;
CODE_00A55E:        8D 63 00      STA $0063                 ;
CODE_00A561:        4C 71 A7      JMP CODE_00A771           ;

CODE_00A564:        8A            TXA                       ;
CODE_00A565:        29 03         AND #$03                  ;
CODE_00A567:        C9 01         CMP #$01                  ;
CODE_00A569:        D0 03         BNE CODE_00A56E           ;
CODE_00A56B:        4C 58 A6      JMP CODE_00A658           ;

CODE_00A56E:        A5 F4         LDA $F4                   ;
CODE_00A570:        05 F5         ORA $F5                   ;
CODE_00A572:        29 83         AND #$83                  ;
CODE_00A574:        D0 03         BNE CODE_00A579           ;
CODE_00A576:        4C 09 A7      JMP CODE_00A709           ;

CODE_00A579:        29 02         AND #$02                  ;
CODE_00A57B:        F0 03         BEQ CODE_00A580           ;
CODE_00A57D:        4C 07 A6      JMP CODE_00A607           ;

CODE_00A580:        B5 B0         LDA $B0,x                 ;
CODE_00A582:        C9 02         CMP #$02                  ;
CODE_00A584:        B0 05         BCS CODE_00A58B           ;
CODE_00A586:        A9 2A         LDA #$2A                  ;
CODE_00A588:        8D 63 00      STA $0063                 ;
CODE_00A58B:        A5 D0         LDA $D0                   ;
CODE_00A58D:        D0 06         BNE CODE_00A595           ;
CODE_00A58F:        BF 90 04 70   LDA $700490,x             ;
CODE_00A593:        D0 07         BNE CODE_00A59C           ;
CODE_00A595:        BD 80 00      LDA $0080,x               ;
CODE_00A598:        C9 01         CMP #$01                  ;
CODE_00A59A:        F0 05         BEQ CODE_00A5A1           ;
CODE_00A59C:        A9 4C         LDA #$4C                  ;
CODE_00A59E:        8D 63 00      STA $0063                 ;
CODE_00A5A1:        FE B0 00      INC $00B0,x               ;
CODE_00A5A4:        A5 D0         LDA $D0                   ;
CODE_00A5A6:        D0 37         BNE CODE_00A5DF           ;
CODE_00A5A8:        BF 90 04 70   LDA $700490,x             ;
CODE_00A5AC:        F0 31         BEQ CODE_00A5DF           ;
CODE_00A5AE:        B5 70         LDA $70,x                 ;
CODE_00A5B0:        D0 13         BNE CODE_00A5C5           ;
CODE_00A5B2:        BD B0 00      LDA $00B0,x               ;
CODE_00A5B5:        C9 09         CMP #$09                  ;
CODE_00A5B7:        90 48         BCC CODE_00A601           ;
CODE_00A5B9:        A9 01         LDA #$01                  ;
CODE_00A5BB:        95 70         STA $70,x                 ;
CODE_00A5BD:        9D B0 00      STA $00B0,x               ;
CODE_00A5C0:        9D C0 00      STA $00C0,x               ;
CODE_00A5C3:        80 3C         BRA CODE_00A601           ;

CODE_00A5C5:        BD B0 00      LDA $00B0,x               ;
CODE_00A5C8:        DD 80 00      CMP $0080,x               ;
CODE_00A5CB:        F0 0A         BEQ CODE_00A5D7           ;
CODE_00A5CD:        90 04         BCC CODE_00A5D3           ;
CODE_00A5CF:        74 70         STZ $70,x                 ;
CODE_00A5D1:        A9 01         LDA #$01                  ;
CODE_00A5D3:        95 B0         STA $B0,x                 ;
CODE_00A5D5:        80 2A         BRA CODE_00A601           ;

CODE_00A5D7:        95 B0         STA $B0,x                 ;
CODE_00A5D9:        A9 01         LDA #$01                  ;
CODE_00A5DB:        95 C0         STA $C0,x                 ;
CODE_00A5DD:        80 22         BRA CODE_00A601           ;

CODE_00A5DF:        BD B0 00      LDA $00B0,x               ;
CODE_00A5E2:        DD 80 00      CMP $0080,x               ;
CODE_00A5E5:        F0 08         BEQ CODE_00A5EF           ;
CODE_00A5E7:        90 02         BCC CODE_00A5EB           ;
CODE_00A5E9:        A9 01         LDA #$01                  ;
CODE_00A5EB:        95 B0         STA $B0,x                 ;
CODE_00A5ED:        80 12         BRA CODE_00A601           ;

CODE_00A5EF:        95 B0         STA $B0,x                 ;
CODE_00A5F1:        A9 01         LDA #$01                  ;
CODE_00A5F3:        95 C0         STA $C0,x                 ;
CODE_00A5F5:        AD 18 02      LDA $0218                 ;
CODE_00A5F8:        29 03         AND #$03                  ;
CODE_00A5FA:        C9 01         CMP #$01                  ;
CODE_00A5FC:        D0 03         BNE CODE_00A601           ;
CODE_00A5FE:        20 6B B1      JSR CODE_00B16B           ;
CODE_00A601:        20 DA B0      JSR CODE_00B0DA           ;
CODE_00A604:        4C 09 A7      JMP CODE_00A709           ;

CODE_00A607:        B5 B0         LDA $B0,x                 ;
CODE_00A609:        C9 02         CMP #$02                  ;
CODE_00A60B:        B0 04         BCS CODE_00A611           ;
CODE_00A60D:        A9 2A         LDA #$2A                  ;\SFX to play when you can't decrease world number
CODE_00A60F:        85 63         STA $63                   ;/in a FILE A/B/C/D select
CODE_00A611:        A5 D0         LDA $D0                   ;
CODE_00A613:        D0 06         BNE CODE_00A61B           ;
CODE_00A615:        BF 90 04 70   LDA $700490,x             ;
CODE_00A619:        D0 09         BNE CODE_00A624           ;
CODE_00A61B:        B5 80         LDA $80,x                 ;
CODE_00A61D:        C9 01         CMP #$01                  ;
CODE_00A61F:        D0 03         BNE CODE_00A624           ;
CODE_00A621:        4C 09 A7      JMP CODE_00A709           ;

CODE_00A624:        A9 4C         LDA #$4C                  ;
CODE_00A626:        85 63         STA $63                   ;
CODE_00A628:        D6 B0         DEC $B0,x                 ;
CODE_00A62A:        A5 D0         LDA $D0                   ;
CODE_00A62C:        D0 1C         BNE CODE_00A64A           ;
CODE_00A62E:        BF 90 04 70   LDA $700490,x             ;
CODE_00A632:        F0 16         BEQ CODE_00A64A           ;
CODE_00A634:        B5 B0         LDA $B0,x                 ;
CODE_00A636:        D0 12         BNE CODE_00A64A           ;
CODE_00A638:        B5 70         LDA $70,x                 ;
CODE_00A63A:        D0 08         BNE CODE_00A644           ;
CODE_00A63C:        BF 90 04 70   LDA $700490,x             ;
CODE_00A640:        95 70         STA $70,x                 ;
CODE_00A642:        80 06         BRA CODE_00A64A           ;

CODE_00A644:        74 70         STZ $70,x                 ;
CODE_00A646:        A9 08         LDA #$08                  ;
CODE_00A648:        95 B0         STA $B0,x                 ;
CODE_00A64A:        B5 B0         LDA $B0,x                 ;
CODE_00A64C:        D0 04         BNE CODE_00A652           ;
CODE_00A64E:        B5 80         LDA $80,x                 ;
CODE_00A650:        95 B0         STA $B0,x                 ;
CODE_00A652:        20 DA B0      JSR CODE_00B0DA           ;
CODE_00A655:        4C 09 A7      JMP CODE_00A709           ;

CODE_00A658:        A5 F4         LDA $F4                   ;
CODE_00A65A:        05 F5         ORA $F5                   ;
CODE_00A65C:        29 83         AND #$83                  ;
CODE_00A65E:        D0 03         BNE CODE_00A663           ;
CODE_00A660:        4C 09 A7      JMP CODE_00A709           ;

CODE_00A663:        B5 80         LDA $80,x                 ;
CODE_00A665:        C9 01         CMP #$01                  ;
CODE_00A667:        F0 02         BEQ CODE_00A66B           ;
CODE_00A669:        80 0B         BRA CODE_00A676           ;

CODE_00A66B:        BD 90 00      LDA $0090,x               ;
CODE_00A66E:        C9 01         CMP #$01                  ;
CODE_00A670:        D0 04         BNE CODE_00A676           ;
CODE_00A672:        A9 2A         LDA #$2A                  ;
CODE_00A674:        80 02         BRA CODE_00A678           ;

CODE_00A676:        A9 4C         LDA #$4C                  ;
CODE_00A678:        8D 63 00      STA $0063                 ;
CODE_00A67B:        A5 F4         LDA $F4                   ;
CODE_00A67D:        05 F5         ORA $F5                   ;
CODE_00A67F:        30 3D         BMI CODE_00A6BE           ;
CODE_00A681:        29 01         AND #$01                  ;
CODE_00A683:        D0 39         BNE CODE_00A6BE           ;
CODE_00A685:        B5 B0         LDA $B0,x                 ;
CODE_00A687:        D5 80         CMP $80,x                 ;
CODE_00A689:        D0 0E         BNE CODE_00A699           ;
CODE_00A68B:        D6 C0         DEC $C0,x                 ;
CODE_00A68D:        D0 08         BNE CODE_00A697           ;
CODE_00A68F:        D6 B0         DEC $B0,x                 ;
CODE_00A691:        F0 12         BEQ CODE_00A6A5           ;
CODE_00A693:        A9 04         LDA #$04                  ;
CODE_00A695:        95 C0         STA $C0,x                 ;
CODE_00A697:        80 14         BRA CODE_00A6AD           ;

CODE_00A699:        D6 C0         DEC $C0,x                 ;
CODE_00A69B:        D0 10         BNE CODE_00A6AD           ;
CODE_00A69D:        A9 04         LDA #$04                  ;
CODE_00A69F:        95 C0         STA $C0,x                 ;
CODE_00A6A1:        D6 B0         DEC $B0,x                 ;
CODE_00A6A3:        D0 08         BNE CODE_00A6AD           ;
CODE_00A6A5:        B5 80         LDA $80,x                 ;
CODE_00A6A7:        95 B0         STA $B0,x                 ;
CODE_00A6A9:        B5 90         LDA $90,x                 ;
CODE_00A6AB:        95 C0         STA $C0,x                 ;
CODE_00A6AD:        BD A0 00      LDA $00A0,x               ;
CODE_00A6B0:        F0 09         BEQ CODE_00A6BB           ;
CODE_00A6B2:        B5 B0         LDA $B0,x                 ;
CODE_00A6B4:        C9 09         CMP #$09                  ;
CODE_00A6B6:        D0 03         BNE CODE_00A6BB           ;
CODE_00A6B8:        DE B0 00      DEC $00B0,x               ;
CODE_00A6BB:        4C 03 A7      JMP CODE_00A703           ;

CODE_00A6BE:        FE C0 00      INC $00C0,x               ;
CODE_00A6C1:        B5 B0         LDA $B0,x                 ;
CODE_00A6C3:        DD 80 00      CMP $0080,x               ;
CODE_00A6C6:        F0 12         BEQ CODE_00A6DA           ;
CODE_00A6C8:        B5 C0         LDA $C0,x                 ;
CODE_00A6CA:        C9 05         CMP #$05                  ;
CODE_00A6CC:        90 24         BCC CODE_00A6F2           ;
CODE_00A6CE:        F6 B0         INC $B0,x                 ;
CODE_00A6D0:        B5 B0         LDA $B0,x                 ;
CODE_00A6D2:        D5 80         CMP $80,x                 ;
CODE_00A6D4:        F0 1A         BEQ CODE_00A6F0           ;
CODE_00A6D6:        90 18         BCC CODE_00A6F0           ;
CODE_00A6D8:        80 12         BRA CODE_00A6EC           ;

CODE_00A6DA:        B5 C0         LDA $C0,x                 ;
CODE_00A6DC:        D5 90         CMP $90,x                 ;
CODE_00A6DE:        F0 12         BEQ CODE_00A6F2           ;
CODE_00A6E0:        90 10         BCC CODE_00A6F2           ;
CODE_00A6E2:        F6 B0         INC $B0,x                 ;
CODE_00A6E4:        B5 B0         LDA $B0,x                 ;
CODE_00A6E6:        D5 80         CMP $80,x                 ;
CODE_00A6E8:        F0 08         BEQ CODE_00A6F2           ;
CODE_00A6EA:        90 06         BCC CODE_00A6F2           ;
CODE_00A6EC:        A9 01         LDA #$01                  ;
CODE_00A6EE:        95 B0         STA $B0,x                 ;
CODE_00A6F0:        A9 01         LDA #$01                  ;
CODE_00A6F2:        9D C0 00      STA $00C0,x               ;
CODE_00A6F5:        BD A0 00      LDA $00A0,x               ;
CODE_00A6F8:        F0 09         BEQ CODE_00A703           ;
CODE_00A6FA:        B5 B0         LDA $B0,x                 ;
CODE_00A6FC:        C9 09         CMP #$09                  ;
CODE_00A6FE:        D0 03         BNE CODE_00A703           ;
CODE_00A700:        FE B0 00      INC $00B0,x               ;
CODE_00A703:        20 DA B0      JSR CODE_00B0DA           ;
CODE_00A706:        20 6B B1      JSR CODE_00B16B           ;
CODE_00A709:        A9 00         LDA #$00                  ;
CODE_00A70B:        85 00         STA $00                   ;
CODE_00A70D:        A5 0F         LDA $0F                   ;
CODE_00A70F:        85 01         STA $01                   ;
CODE_00A711:        A5 D1         LDA $D1                   ;
CODE_00A713:        0A            ASL A                     ;
CODE_00A714:        0A            ASL A                     ;
CODE_00A715:        05 D0         ORA $D0                   ;
CODE_00A717:        85 0C         STA $0C                   ;
CODE_00A719:        AA            TAX                       ;
CODE_00A71A:        64 0D         STZ $0D                   ;
CODE_00A71C:        0A            ASL A                     ;
CODE_00A71D:        A8            TAY                       ;
CODE_00A71E:        B9 67 A3      LDA $A367,y               ;
CODE_00A721:        85 02         STA $02                   ;
CODE_00A723:        B9 68 A3      LDA $A368,y               ;
CODE_00A726:        85 03         STA $03                   ;
CODE_00A728:        B5 B0         LDA $B0,x                 ;
CODE_00A72A:        85 04         STA $04                   ;
CODE_00A72C:        64 05         STZ $05                   ;
CODE_00A72E:        B5 C0         LDA $C0,x                 ;
CODE_00A730:        85 06         STA $06                   ;
CODE_00A732:        64 07         STZ $07                   ;
CODE_00A734:        86 29         STX $29                   ;
CODE_00A736:        A6 29         LDX $29                   ;
CODE_00A738:        A5 F6         LDA $F6                   ;
CODE_00A73A:        05 F7         ORA $F7                   ;
CODE_00A73C:        29 80         AND #$80                  ;
CODE_00A73E:        D0 24         BNE CODE_00A764           ;
CODE_00A740:        A6 0C         LDX $0C                   ;
CODE_00A742:        A5 F4         LDA $F4                   ;
CODE_00A744:        05 F5         ORA $F5                   ;
CODE_00A746:        29 10         AND #$10                  ;
CODE_00A748:        F0 27         BEQ CODE_00A771           ;
CODE_00A74A:        A9 29         LDA #$29                  ;
CODE_00A74C:        85 63         STA $63                   ;
CODE_00A74E:        8D 24 02      STA $0224                 ;
CODE_00A751:        A9 10         LDA #$10                  ;
CODE_00A753:        8D 23 02      STA $0223                 ;
CODE_00A756:        A9 70         LDA #$70                  ;
CODE_00A758:        8D 05 01      STA $0105                 ;
CODE_00A75B:        A9 50         LDA #$50                  ;
CODE_00A75D:        8D 07 01      STA $0107                 ;
CODE_00A760:        64 E3         STZ $E3                   ;
CODE_00A762:        80 0E         BRA CODE_00A772           ;

CODE_00A764:        9C 24 02      STZ $0224                 ;
CODE_00A767:        A9 04         LDA #$04                  ;
CODE_00A769:        85 D2         STA $D2                   ;
CODE_00A76B:        E6 E0         INC $E0                   ;
CODE_00A76D:        A9 22         LDA #$22                  ;
CODE_00A76F:        85 63         STA $63                   ;
CODE_00A771:        6B            RTL                       ;

CODE_00A772:        A5 D1         LDA $D1                   ;
CODE_00A774:        0A            ASL A                     ;
CODE_00A775:        0A            ASL A                     ;
CODE_00A776:        65 D0         ADC $D0                   ;
CODE_00A778:        B5 B0         LDA $B0,x                 ;
CODE_00A77A:        1A            INC A                     ;
CODE_00A77B:        D0 1B         BNE CODE_00A798           ;
CODE_00A77D:        A9 00         LDA #$00                  ;
CODE_00A77F:        8F 08 00 70   STA $700008               ;
CODE_00A783:        8F 09 00 70   STA $700009               ;
CODE_00A787:        A5 D2         LDA $D2                   ;
CODE_00A789:        C9 04         CMP #$04                  ;
CODE_00A78B:        D0 31         BNE CODE_00A7BE           ;
CODE_00A78D:        A9 2A         LDA #$2A                  ;
CODE_00A78F:        8D 63 00      STA $0063                 ;
CODE_00A792:        C6 E0         DEC $E0                   ;
CODE_00A794:        64 D2         STZ $D2                   ;
CODE_00A796:        80 26         BRA CODE_00A7BE           ;

CODE_00A798:        A5 D2         LDA $D2                   ;
CODE_00A79A:        C9 04         CMP #$04                  ;
CODE_00A79C:        D0 0A         BNE CODE_00A7A8           ;
CODE_00A79E:        A9 22         LDA #$22                  ;
CODE_00A7A0:        8D 63 00      STA $0063                 ;
CODE_00A7A3:        A9 40         LDA #$40                  ;
CODE_00A7A5:        8D 1B 01      STA $011B                 ;
CODE_00A7A8:        B5 B0         LDA $B0,x                 ;
CODE_00A7AA:        3A            DEC A                     ;
CODE_00A7AB:        10 02         BPL CODE_00A7AF           ;
CODE_00A7AD:        A9 00         LDA #$00                  ;
CODE_00A7AF:        8F 08 00 70   STA $700008               ;
CODE_00A7B3:        B5 C0         LDA $C0,x                 ;
CODE_00A7B5:        3A            DEC A                     ;
CODE_00A7B6:        10 02         BPL CODE_00A7BA           ;
CODE_00A7B8:        A9 00         LDA #$00                  ;
CODE_00A7BA:        8F 09 00 70   STA $700009               ;
CODE_00A7BE:        A5 D1         LDA $D1                   ;
CODE_00A7C0:        0A            ASL A                     ;
CODE_00A7C1:        0A            ASL A                     ;
CODE_00A7C2:        18            CLC                       ;
CODE_00A7C3:        65 D0         ADC $D0                   ;
CODE_00A7C5:        0A            ASL A                     ;
CODE_00A7C6:        AA            TAX                       ;
CODE_00A7C7:        BD 0C A8      LDA $A80C,x               ;
CODE_00A7CA:        8F 04 00 70   STA $700004               ;
CODE_00A7CE:        BD 0D A8      LDA $A80D,x               ;
CODE_00A7D1:        8F 05 00 70   STA $700005               ;
CODE_00A7D5:        6B            RTL                       ;

CODE_00A7D6:        A5 F4         LDA $F4                   ;
CODE_00A7D8:        05 F5         ORA $F5                   ;
CODE_00A7DA:        29 10         AND #$10                  ;
CODE_00A7DC:        F0 02         BEQ CODE_00A7E0           ;
CODE_00A7DE:        E6 E0         INC $E0                   ;
CODE_00A7E0:        A9 00         LDA #$00                  ;
CODE_00A7E2:        85 00         STA $00                   ;
CODE_00A7E4:        A5 0F         LDA $0F                   ;
CODE_00A7E6:        85 01         STA $01                   ;
CODE_00A7E8:        A5 D1         LDA $D1                   ;
CODE_00A7EA:        0A            ASL A                     ;
CODE_00A7EB:        0A            ASL A                     ;
CODE_00A7EC:        05 D0         ORA $D0                   ;
CODE_00A7EE:        85 0C         STA $0C                   ;
CODE_00A7F0:        AA            TAX                       ;
CODE_00A7F1:        64 0D         STZ $0D                   ;
CODE_00A7F3:        0A            ASL A                     ;
CODE_00A7F4:        A8            TAY                       ;
CODE_00A7F5:        B9 67 A3      LDA $A367,y               ;
CODE_00A7F8:        85 02         STA $02                   ;
CODE_00A7FA:        B9 68 A3      LDA $A368,y               ;
CODE_00A7FD:        85 03         STA $03                   ;
CODE_00A7FF:        B5 B0         LDA $B0,x                 ;
CODE_00A801:        85 04         STA $04                   ;
CODE_00A803:        64 05         STZ $05                   ;
CODE_00A805:        B5 C0         LDA $C0,x                 ;
CODE_00A807:        85 06         STA $06                   ;
CODE_00A809:        64 07         STZ $07                   ;
CODE_00A80B:        6B            RTL                       ;

DATA_00A80C:        dw $0000,$0009,$0011,$001A
                    dw $0120,$0129,$0131,$013A
                    dw $0240,$0249,$0251,$025A
                    dw $0360,$0369,$0371,$037A

CODE_00A82C:        A5 D1         LDA $D1                   ;
CODE_00A82E:        0A            ASL A                     ;
CODE_00A82F:        0A            ASL A                     ;
CODE_00A830:        18            CLC                       ;
CODE_00A831:        65 D0         ADC $D0                   ;
CODE_00A833:        0A            ASL A                     ;
CODE_00A834:        AA            TAX                       ;
CODE_00A835:        C2 20         REP #$20                  ;
CODE_00A837:        BD 0C A8      LDA $A80C,x               ;
CODE_00A83A:        C2 10         REP #$10                  ;
CODE_00A83C:        AA            TAX                       ;
CODE_00A83D:        A9 FF FF      LDA #$FFFF                ;
CODE_00A840:        9F 10 00 70   STA $700010,x             ;
CODE_00A844:        E2 30         SEP #$30                  ;
CODE_00A846:        4C 1B 8C      JMP CODE_008C1B           ;

CODE_00A849:        8B            PHB                       ;\
CODE_00A84A:        A9 70         LDA #$70                  ; |Program bank: SRAM
CODE_00A84C:        48            PHA                       ; |
CODE_00A84D:        AB            PLB                       ;/
CODE_00A84E:        C2 10         REP #$10                  ;\
CODE_00A850:        A9 20         LDA #$20                  ; |
CODE_00A852:        85 0E         STA $0E                   ; |
CODE_00A854:        A9 01         LDA #$01                  ; |
CODE_00A856:        85 0F         STA $0F                   ; | 
CODE_00A858:        A2 00 00      LDX #$0000                ; |
CODE_00A85B:        AC 04 00      LDY $0004                 ; | Load $120 bytes of saved data from SRAM Offset of last save data accessed
CODE_00A85E:        B9 10 00      LDA $0010,y               ; | into RAM $7FFB00 whenever you load a game. Doesn't matter which.
CODE_00A861:        9F 00 FB 7F   STA $7FFB00,x             ; |
CODE_00A865:        C8            INY                       ; |
CODE_00A866:        E8            INX                       ; |
CODE_00A867:        E4 0E         CPX $0E                   ; |
CODE_00A869:        D0 F3         BNE CODE_00A85E           ;/
CODE_00A86B:        AD 08 00      LDA $0008                 ;\
CODE_00A86E:        8F 00 FB 7F   STA $7FFB00               ;/Which world you have loaded, from SRAM into RAM
CODE_00A872:        AD 09 00      LDA $0009                 ;\
CODE_00A875:        8F 01 FB 7F   STA $7FFB01               ;/Which level you have loaded, from SRAM into RAM
CODE_00A879:        AF 0F 00 70   LDA $70000F               ;\
CODE_00A87D:        85 00         STA $00                   ;/Loaded game into scratch RAM
CODE_00A87F:        D0 15         BNE CODE_00A896           ;\
CODE_00A881:        AF 0E 00 70   LDA $70000E               ; |
CODE_00A885:        0A            ASL A                     ; | If SMB1
CODE_00A886:        0A            ASL A                     ; | Save slot # << 4
CODE_00A887:        05 00         ORA $00                   ; | OR $00  (isn't this always 00 because we only get here when it's 00?)
CODE_00A889:        EB            XBA                       ; | 
CODE_00A88A:        A9 00         LDA #$00                  ; | Clear high byte, to index.
CODE_00A88C:        EB            XBA                       ; | 
CODE_00A88D:        AA            TAX                       ; | (so basically save slot * 4 to index)
CODE_00A88E:        BF 90 04 70   LDA $700490,x             ;\|
CODE_00A892:        8F 05 FB 7F   STA $7FFB05               ;/ More difficult quest flag for SMB1
CODE_00A896:        A9 00         LDA #$00                  ;\
CODE_00A898:        EB            XBA                       ; |
CODE_00A899:        AF 0E 00 70   LDA $70000E               ; |
CODE_00A89D:        29 03         AND #$03                  ; | Loaded save slot * 4 to X index
CODE_00A89F:        0A            ASL A                     ; | (for what purpose?)
CODE_00A8A0:        0A            ASL A                     ; |
CODE_00A8A1:        AA            TAX                       ; |
CODE_00A8A2:        E2 10         SEP #$10                  ; |
CODE_00A8A4:        AB            PLB                       ; |
CODE_00A8A5:        6B            RTL                       ;/

PNTR_00A8A6:        dw CODE_00AA05
                    dw CODE_00AAA1
                    dw CODE_00AB74
                    dw CODE_00AC12

CODE_00A8AE:        C2 20         REP #$20                  ;
CODE_00A8B0:        A2 80         LDX #$80                  ;
CODE_00A8B2:        A9 FF 02      LDA #$02FF                ;
CODE_00A8B5:        9D 00 04      STA $0400,x               ;
CODE_00A8B8:        9D 80 04      STA $0480,x               ;
CODE_00A8BB:        9D 00 05      STA $0500,x               ;
CODE_00A8BE:        9D 80 05      STA $0580,x               ;
CODE_00A8C1:        9D 00 06      STA $0600,x               ;
CODE_00A8C4:        9D 80 06      STA $0680,x               ;
CODE_00A8C7:        9D 00 07      STA $0700,x               ;
CODE_00A8CA:        CA            DEX                       ;
CODE_00A8CB:        CA            DEX                       ;
CODE_00A8CC:        10 E7         BPL CODE_00A8B5           ;
CODE_00A8CE:        A4 D1         LDY $D1                   ;
CODE_00A8D0:        BE 01 AA      LDX $AA01,y               ;
CODE_00A8D3:        A9 4F 03      LDA #$034F                ;
CODE_00A8D6:        9D DA 04      STA $04DA,x               ;
CODE_00A8D9:        A2 00         LDX #$00                  ;
CODE_00A8DB:        BD B1 A9      LDA $A9B1,x               ;
CODE_00A8DE:        C9 FF FF      CMP #$FFFF                ;
CODE_00A8E1:        F0 10         BEQ CODE_00A8F3           ;
CODE_00A8E3:        9D DC 04      STA $04DC,x               ;
CODE_00A8E6:        9D 30 05      STA $0530,x               ;
CODE_00A8E9:        9D 84 05      STA $0584,x               ;
CODE_00A8EC:        9D D8 05      STA $05D8,x               ;
CODE_00A8EF:        E8            INX                       ;
CODE_00A8F0:        E8            INX                       ;
CODE_00A8F1:        80 E8         BRA CODE_00A8DB           ;

CODE_00A8F3:        A2 00         LDX #$00                  ;
CODE_00A8F5:        A9 60 03      LDA #$0360                ;
CODE_00A8F8:        9D BE 04      STA $04BE,x               ;
CODE_00A8FB:        9D 12 05      STA $0512,x               ;
CODE_00A8FE:        9D 66 05      STA $0566,x               ;
CODE_00A901:        9D BA 05      STA $05BA,x               ;
CODE_00A904:        1A            INC A                     ;
CODE_00A905:        E8            INX                       ;
CODE_00A906:        E8            INX                       ;
CODE_00A907:        E0 08         CPX #$08                  ;
CODE_00A909:        D0 ED         BNE CODE_00A8F8           ;
CODE_00A90B:        C2 10         REP #$10                  ;
CODE_00A90D:        A2 00 00      LDX #$0000                ;
CODE_00A910:        A9 F5 02      LDA #$02F5                ;
CODE_00A913:        85 00         STA $00                   ;
CODE_00A915:        A5 00         LDA $00                   ;
CODE_00A917:        9D B8 04      STA $04B8,x               ;
CODE_00A91A:        E6 00         INC $00                   ;
CODE_00A91C:        8A            TXA                       ;
CODE_00A91D:        18            CLC                       ;
CODE_00A91E:        69 2A 00      ADC #$002A                ;
CODE_00A921:        AA            TAX                       ;
CODE_00A922:        E0 50 01      CPX #$0150                ;
CODE_00A925:        D0 EE         BNE CODE_00A915           ;
CODE_00A927:        E2 10         SEP #$10                  ;
CODE_00A929:        A2 00         LDX #$00                  ;
CODE_00A92B:        A9 8B 03      LDA #$038B                ;
CODE_00A92E:        9D 22 06      STA $0622,x               ;
CODE_00A931:        1A            INC A                     ;
CODE_00A932:        E8            INX                       ;
CODE_00A933:        E8            INX                       ;
CODE_00A934:        E0 14         CPX #$14                  ;
CODE_00A936:        D0 F6         BNE CODE_00A92E           ;
CODE_00A938:        A2 00         LDX #$00                  ;
CODE_00A93A:        BD C7 A9      LDA $A9C7,x               ;
CODE_00A93D:        9D 7C 06      STA $067C,x               ;
CODE_00A940:        BD CF A9      LDA $A9CF,x               ;
CODE_00A943:        9D A6 06      STA $06A6,x               ;
CODE_00A946:        BD D7 A9      LDA $A9D7,x               ;
CODE_00A949:        9D D0 06      STA $06D0,x               ;
CODE_00A94C:        BD DF A9      LDA $A9DF,x               ;
CODE_00A94F:        9D FA 06      STA $06FA,x               ;
CODE_00A952:        E8            INX                       ;
CODE_00A953:        E8            INX                       ;
CODE_00A954:        E0 08         CPX #$08                  ;
CODE_00A956:        D0 E2         BNE CODE_00A93A           ;
CODE_00A958:        A9 68 03      LDA #$0368                ;
CODE_00A95B:        85 00         STA $00                   ;
CODE_00A95D:        A9 78 03      LDA #$0378                ;
CODE_00A960:        85 02         STA $02                   ;
CODE_00A962:        A2 00         LDX #$00                  ;
CODE_00A964:        A5 00         LDA $00                   ;
CODE_00A966:        9D 84 06      STA $0684,x               ;
CODE_00A969:        9D CA 06      STA $06CA,x               ;
CODE_00A96C:        A5 02         LDA $02                   ;
CODE_00A96E:        9D AE 06      STA $06AE,x               ;
CODE_00A971:        9D 02 07      STA $0702,x               ;
CODE_00A974:        E6 00         INC $00                   ;
CODE_00A976:        E6 02         INC $02                   ;
CODE_00A978:        E8            INX                       ;
CODE_00A979:        E8            INX                       ;
CODE_00A97A:        E0 06         CPX #$06                  ;
CODE_00A97C:        D0 E6         BNE CODE_00A964           ;
CODE_00A97E:        A9 80 03      LDA #$0380                ;
CODE_00A981:        A2 00         LDX #$00                  ;
CODE_00A983:        9D 22 07      STA $0722,x               ;
CODE_00A986:        1A            INC A                     ;
CODE_00A987:        E8            INX                       ;
CODE_00A988:        E8            INX                       ;
CODE_00A989:        E0 0C         CPX #$0C                  ;
CODE_00A98B:        D0 F6         BNE CODE_00A983           ;
CODE_00A98D:        AF 06 00 70   LDA $700006               ;
CODE_00A991:        29 FF 00      AND #$00FF                ;
CODE_00A994:        F0 18         BEQ CODE_00A9AE           ;
CODE_00A996:        A9 68 03      LDA #$0368                ;
CODE_00A999:        8D 02 07      STA $0702                 ;
CODE_00A99C:        1A            INC A                     ;
CODE_00A99D:        8D 04 07      STA $0704                 ;
CODE_00A9A0:        1A            INC A                     ;
CODE_00A9A1:        8D 06 07      STA $0706                 ;
CODE_00A9A4:        A9 86 03      LDA #$0386                ;
CODE_00A9A7:        8D 2A 07      STA $072A                 ;
CODE_00A9AA:        1A            INC A                     ;
CODE_00A9AB:        8D 2C 07      STA $072C                 ;
CODE_00A9AE:        E2 20         SEP #$20                  ;
CODE_00A9B0:        60            RTS                       ;

DATA_00A9B1:        db $F2,$02,$F3,$02,$F4,$02,$51,$03 ; Tilemap in selected game's file select
                    db $51,$03,$51,$03,$70,$03,$71,$03 ; Tilemap of "FILE" and the entire line below it
                    db $72,$03,$73,$03,$FF,$FF         ; Tilemap for all the 4 "FILE" sections. Format: tile, properties. FF marks end

DATA_00A9C7:        db $64,$03,$65,$03,$66,$03,$67,$03 ;Tilemap in selected game's file select
                    db $74,$03,$75,$03,$76,$03,$77,$03 ;Tilemap of the small controller in the bottom-left corner
                    db $6B,$03,$6C,$03,$6D,$03,$6E,$03 ;Format: tile, properties
                    db $7B,$03,$7C,$03,$7D,$03,$7E,$03 ;Tilemap is for controller -only-, not for the text around it.

DATA_00A9E7:        db $FF,$FF,$83,$03,$95,$03,$96,$03 ;
                    db $97,$03,$83,$03,$FF,$02,$98,$03 ;
                    db $99,$03,$9A,$03,$83,$03,$FF,$02 ;
                    db $5F,$03                         ;

DATA_00AA01:        db $00,$54,$A8,$FC

CODE_00AA05:        AD 20 02      LDA $0220                 ;
CODE_00AA08:        D0 69         BNE CODE_00AA73           ;
CODE_00AA0A:        AD 1B 02      LDA $021B                 ;
CODE_00AA0D:        D0 5F         BNE CODE_00AA6E           ;
CODE_00AA0F:        A5 00         LDA $00                   ;
CODE_00AA11:        D0 0B         BNE CODE_00AA1E           ;
CODE_00AA13:        A9 01         LDA #$01                  ;
CODE_00AA15:        8D 20 02      STA $0220                 ;
CODE_00AA18:        9C 1A 02      STZ $021A                 ;
CODE_00AA1B:        4C A0 AA      JMP CODE_00AAA0           ;

CODE_00AA1E:        A9 3F         LDA #$3F                  ;
CODE_00AA20:        8D 63 00      STA $0063                 ;
CODE_00AA23:        C2 20         REP #$20                  ;
CODE_00AA25:        A9 00 03      LDA #$0300                ;
CODE_00AA28:        85 00         STA $00                   ;
CODE_00AA2A:        A9 10 03      LDA #$0310                ;
CODE_00AA2D:        85 02         STA $02                   ;
CODE_00AA2F:        A2 00         LDX #$00                  ;
CODE_00AA31:        A5 00         LDA $00                   ;
CODE_00AA33:        9D 38 04      STA $0438,x               ;
CODE_00AA36:        A5 02         LDA $02                   ;
CODE_00AA38:        9D 62 04      STA $0462,x               ;
CODE_00AA3B:        E6 00         INC $00                   ;
CODE_00AA3D:        E6 02         INC $02                   ;
CODE_00AA3F:        E8            INX                       ;
CODE_00AA40:        E8            INX                       ;
CODE_00AA41:        E0 10         CPX #$10                  ;
CODE_00AA43:        D0 EC         BNE CODE_00AA31           ;
CODE_00AA45:        9C 1E 02      STZ $021E                 ;
CODE_00AA48:        A9 B0 00      LDA #$00B0                ;
CODE_00AA4B:        85 00         STA $00                   ;
CODE_00AA4D:        20 F0 AC      JSR CODE_00ACF0           ;
CODE_00AA50:        A9 16 00      LDA #$0016                ;
CODE_00AA53:        85 00         STA $00                   ;
CODE_00AA55:        A2 70         LDX #$70                  ;
CODE_00AA57:        86 02         STX $02                   ;
CODE_00AA59:        20 AB AD      JSR CODE_00ADAB           ;
CODE_00AA5C:        A9 E5 78      LDA #$78E5                ;
CODE_00AA5F:        8D 1C 02      STA $021C                 ;
CODE_00AA62:        E2 20         SEP #$20                  ;
CODE_00AA64:        A9 01         LDA #$01                  ;
CODE_00AA66:        8D 1A 02      STA $021A                 ;
CODE_00AA69:        A9 15         LDA #$15                  ;
CODE_00AA6B:        8D 1B 02      STA $021B                 ;
CODE_00AA6E:        20 F8 AD      JSR CODE_00ADF8           ;
CODE_00AA71:        80 2D         BRA CODE_00AAA0           ;

CODE_00AA73:        AD 1B 02      LDA $021B                 ;
CODE_00AA76:        D0 25         BNE CODE_00AA9D           ;
CODE_00AA78:        A5 00         LDA $00                   ;
CODE_00AA7A:        D0 08         BNE CODE_00AA84           ;
CODE_00AA7C:        9C 1A 02      STZ $021A                 ;
CODE_00AA7F:        9C 20 02      STZ $0220                 ;
CODE_00AA82:        80 1C         BRA CODE_00AAA0           ;

CODE_00AA84:        A9 3F         LDA #$3F                  ;
CODE_00AA86:        8D 63 00      STA $0063                 ;
CODE_00AA89:        C2 20         REP #$20                  ;
CODE_00AA8B:        A9 0A 07      LDA #$070A                ;
CODE_00AA8E:        8D 1E 02      STA $021E                 ;
CODE_00AA91:        E2 20         SEP #$20                  ;
CODE_00AA93:        A9 01         LDA #$01                  ;
CODE_00AA95:        8D 1A 02      STA $021A                 ;
CODE_00AA98:        A9 16         LDA #$16                  ;
CODE_00AA9A:        8D 1B 02      STA $021B                 ;
CODE_00AA9D:        20 C9 AE      JSR CODE_00AEC9           ;
CODE_00AAA0:        60            RTS                       ;

CODE_00AAA1:        AD 20 02      LDA $0220                 ;
CODE_00AAA4:        F0 03         BEQ CODE_00AAA9           ;
CODE_00AAA6:        4C 2E AB      JMP CODE_00AB2E           ;

CODE_00AAA9:        AD 1B 02      LDA $021B                 ;
CODE_00AAAC:        D0 63         BNE CODE_00AB11           ;
CODE_00AAAE:        A5 00         LDA $00                   ;
CODE_00AAB0:        D0 0B         BNE CODE_00AABD           ;
CODE_00AAB2:        A9 01         LDA #$01                  ;
CODE_00AAB4:        8D 20 02      STA $0220                 ;
CODE_00AAB7:        9C 1A 02      STZ $021A                 ;
CODE_00AABA:        4C 73 AB      JMP CODE_00AB73           ;

CODE_00AABD:        A9 3F         LDA #$3F                  ;
CODE_00AABF:        8D 63 00      STA $0063                 ;
CODE_00AAC2:        C2 20         REP #$20                  ;
CODE_00AAC4:        A9 00 03      LDA #$0300                ;
CODE_00AAC7:        85 00         STA $00                   ;
CODE_00AAC9:        A9 10 03      LDA #$0310                ;
CODE_00AACC:        85 02         STA $02                   ;
CODE_00AACE:        A2 00         LDX #$00                  ;
CODE_00AAD0:        A5 00         LDA $00                   ;
CODE_00AAD2:        9D 38 04      STA $0438,x               ;
CODE_00AAD5:        A5 02         LDA $02                   ;
CODE_00AAD7:        9D 62 04      STA $0462,x               ;
CODE_00AADA:        E6 00         INC $00                   ;
CODE_00AADC:        E6 02         INC $02                   ;
CODE_00AADE:        E8            INX                       ;
CODE_00AADF:        E8            INX                       ;
CODE_00AAE0:        E0 10         CPX #$10                  ;
CODE_00AAE2:        D0 EC         BNE CODE_00AAD0           ;
CODE_00AAE4:        A2 00         LDX #$00                  ;
CODE_00AAE6:        A9 E0 02      LDA #$02E0                ;
CODE_00AAE9:        9D 8C 04      STA $048C,x               ;
CODE_00AAEC:        1A            INC A                     ;
CODE_00AAED:        E8            INX                       ;
CODE_00AAEE:        E8            INX                       ;
CODE_00AAEF:        E0 10         CPX #$10                  ;
CODE_00AAF1:        D0 F6         BNE CODE_00AAE9           ;
CODE_00AAF3:        9C 1E 02      STZ $021E                 ;
CODE_00AAF6:        A9 B0 00      LDA #$00B0                ;
CODE_00AAF9:        1A            INC A                     ;
CODE_00AAFA:        85 00         STA $00                   ;
CODE_00AAFC:        20 5C AD      JSR CODE_00AD5C           ;
CODE_00AAFF:        A9 F4 78      LDA #$78F4                ;
CODE_00AB02:        8D 1C 02      STA $021C                 ;
CODE_00AB05:        E2 20         SEP #$20                  ;
CODE_00AB07:        A9 01         LDA #$01                  ;
CODE_00AB09:        8D 1A 02      STA $021A                 ;
CODE_00AB0C:        A9 15         LDA #$15                  ;
CODE_00AB0E:        8D 1B 02      STA $021B                 ;
CODE_00AB11:        C2 20         REP #$20                  ;
CODE_00AB13:        A9 0C 00      LDA #$000C                ;
CODE_00AB16:        85 00         STA $00                   ;
CODE_00AB18:        A9 09 00      LDA #$0009                ;
CODE_00AB1B:        85 02         STA $02                   ;
CODE_00AB1D:        A9 18 00      LDA #$0018                ;
CODE_00AB20:        85 04         STA $04                   ;
CODE_00AB22:        A9 12 00      LDA #$0012                ;
CODE_00AB25:        85 06         STA $06                   ;
CODE_00AB27:        E2 20         SEP #$20                  ;
CODE_00AB29:        20 4A AE      JSR CODE_00AE4A           ;
CODE_00AB2C:        80 45         BRA CODE_00AB73           ;

CODE_00AB2E:        AD 1B 02      LDA $021B                 ;
CODE_00AB31:        D0 25         BNE CODE_00AB58           ;
CODE_00AB33:        A5 00         LDA $00                   ;
CODE_00AB35:        D0 08         BNE CODE_00AB3F           ;
CODE_00AB37:        9C 1A 02      STZ $021A                 ;
CODE_00AB3A:        9C 20 02      STZ $0220                 ;
CODE_00AB3D:        80 34         BRA CODE_00AB73           ;

CODE_00AB3F:        A9 3F         LDA #$3F                  ;
CODE_00AB41:        8D 63 00      STA $0063                 ;
CODE_00AB44:        C2 20         REP #$20                  ;
CODE_00AB46:        A9 28 07      LDA #$0728                ;
CODE_00AB49:        8D 1E 02      STA $021E                 ;
CODE_00AB4C:        E2 20         SEP #$20                  ;
CODE_00AB4E:        A9 01         LDA #$01                  ;
CODE_00AB50:        8D 1A 02      STA $021A                 ;
CODE_00AB53:        A9 16         LDA #$16                  ;
CODE_00AB55:        8D 1B 02      STA $021B                 ;
CODE_00AB58:        C2 20         REP #$20                  ;
CODE_00AB5A:        A9 0C 00      LDA #$000C                ;
CODE_00AB5D:        85 00         STA $00                   ;
CODE_00AB5F:        A9 09 00      LDA #$0009                ;
CODE_00AB62:        85 02         STA $02                   ;
CODE_00AB64:        A9 18 00      LDA #$0018                ;
CODE_00AB67:        85 04         STA $04                   ;
CODE_00AB69:        A9 12 00      LDA #$0012                ;
CODE_00AB6C:        85 06         STA $06                   ;
CODE_00AB6E:        E2 20         SEP #$20                  ;
CODE_00AB70:        20 3C AF      JSR CODE_00AF3C           ;
CODE_00AB73:        60            RTS                       ;

CODE_00AB74:        AD 20 02      LDA $0220                 ;
CODE_00AB77:        D0 6B         BNE CODE_00ABE4           ;
CODE_00AB79:        AD 1B 02      LDA $021B                 ;
CODE_00AB7C:        D0 61         BNE CODE_00ABDF           ;
CODE_00AB7E:        A5 00         LDA $00                   ;
CODE_00AB80:        D0 0B         BNE CODE_00AB8D           ;
CODE_00AB82:        A9 01         LDA #$01                  ;
CODE_00AB84:        8D 20 02      STA $0220                 ;
CODE_00AB87:        9C 1A 02      STZ $021A                 ;
CODE_00AB8A:        4C 11 AC      JMP CODE_00AC11           ;

CODE_00AB8D:        A9 3F         LDA #$3F                  ;
CODE_00AB8F:        8D 63 00      STA $0063                 ;
CODE_00AB92:        C2 20         REP #$20                  ;
CODE_00AB94:        A9 00 03      LDA #$0300                ;
CODE_00AB97:        85 00         STA $00                   ;
CODE_00AB99:        A9 10 03      LDA #$0310                ;
CODE_00AB9C:        85 02         STA $02                   ;
CODE_00AB9E:        A2 00         LDX #$00                  ;
CODE_00ABA0:        A5 00         LDA $00                   ;
CODE_00ABA2:        9D 36 04      STA $0436,x               ;
CODE_00ABA5:        A5 02         LDA $02                   ;
CODE_00ABA7:        9D 60 04      STA $0460,x               ;
CODE_00ABAA:        E6 00         INC $00                   ;
CODE_00ABAC:        E6 02         INC $02                   ;
CODE_00ABAE:        E8            INX                       ;
CODE_00ABAF:        E8            INX                       ;
CODE_00ABB0:        E0 10         CPX #$10                  ;
CODE_00ABB2:        D0 EC         BNE CODE_00ABA0           ;
CODE_00ABB4:        A9 0B 03      LDA #$030B                ;
CODE_00ABB7:        8D 46 04      STA $0446                 ;
CODE_00ABBA:        A9 1B 03      LDA #$031B                ;
CODE_00ABBD:        8D 70 04      STA $0470                 ;
CODE_00ABC0:        9C 1E 02      STZ $021E                 ;
CODE_00ABC3:        A9 B0 00      LDA #$00B0                ;
CODE_00ABC6:        1A            INC A                     ;
CODE_00ABC7:        1A            INC A                     ;
CODE_00ABC8:        85 00         STA $00                   ;
CODE_00ABCA:        20 F0 AC      JSR CODE_00ACF0           ;
CODE_00ABCD:        A9 E4 7C      LDA #$7CE4                ;
CODE_00ABD0:        8D 1C 02      STA $021C                 ;
CODE_00ABD3:        E2 20         SEP #$20                  ;
CODE_00ABD5:        A9 01         LDA #$01                  ;
CODE_00ABD7:        8D 1A 02      STA $021A                 ;
CODE_00ABDA:        A9 15         LDA #$15                  ;
CODE_00ABDC:        8D 1B 02      STA $021B                 ;
CODE_00ABDF:        20 F8 AD      JSR CODE_00ADF8           ;
CODE_00ABE2:        80 2D         BRA CODE_00AC11           ;

CODE_00ABE4:        AD 1B 02      LDA $021B                 ;
CODE_00ABE7:        D0 25         BNE CODE_00AC0E           ;
CODE_00ABE9:        A5 00         LDA $00                   ;
CODE_00ABEB:        D0 08         BNE CODE_00ABF5           ;
CODE_00ABED:        9C 1A 02      STZ $021A                 ;
CODE_00ABF0:        9C 20 02      STZ $0220                 ;
CODE_00ABF3:        80 1C         BRA CODE_00AC11           ;

CODE_00ABF5:        A9 3F         LDA #$3F                  ;
CODE_00ABF7:        8D 63 00      STA $0063                 ;
CODE_00ABFA:        C2 20         REP #$20                  ;
CODE_00ABFC:        A9 08 0F      LDA #$0F08                ;
CODE_00ABFF:        8D 1E 02      STA $021E                 ;
CODE_00AC02:        E2 20         SEP #$20                  ;
CODE_00AC04:        A9 01         LDA #$01                  ;
CODE_00AC06:        8D 1A 02      STA $021A                 ;
CODE_00AC09:        A9 16         LDA #$16                  ;
CODE_00AC0B:        8D 1B 02      STA $021B                 ;
CODE_00AC0E:        20 C9 AE      JSR CODE_00AEC9           ;
CODE_00AC11:        60            RTS                       ;

CODE_00AC12:        AD 20 02      LDA $0220                 ;
CODE_00AC15:        F0 03         BEQ CODE_00AC1A           ;
CODE_00AC17:        4C AA AC      JMP CODE_00ACAA           ;

CODE_00AC1A:        AD 1B 02      LDA $021B                 ;
CODE_00AC1D:        D0 6E         BNE CODE_00AC8D           ;
CODE_00AC1F:        A5 00         LDA $00                   ;
CODE_00AC21:        D0 0B         BNE CODE_00AC2E           ;
CODE_00AC23:        A9 01         LDA #$01                  ;
CODE_00AC25:        8D 20 02      STA $0220                 ;
CODE_00AC28:        9C 1A 02      STZ $021A                 ;
CODE_00AC2B:        4C EF AC      JMP CODE_00ACEF           ;

CODE_00AC2E:        A9 3F         LDA #$3F                  ;
CODE_00AC30:        8D 63 00      STA $0063                 ;
CODE_00AC33:        C2 20         REP #$20                  ;
CODE_00AC35:        A9 00 03      LDA #$0300                ;
CODE_00AC38:        85 00         STA $00                   ;
CODE_00AC3A:        A9 10 03      LDA #$0310                ;
CODE_00AC3D:        85 02         STA $02                   ;
CODE_00AC3F:        A2 00         LDX #$00                  ;
CODE_00AC41:        A5 00         LDA $00                   ;
CODE_00AC43:        9D 36 04      STA $0436,x               ;
CODE_00AC46:        A5 02         LDA $02                   ;
CODE_00AC48:        9D 60 04      STA $0460,x               ;
CODE_00AC4B:        E6 00         INC $00                   ;
CODE_00AC4D:        E6 02         INC $02                   ;
CODE_00AC4F:        E8            INX                       ;
CODE_00AC50:        E8            INX                       ;
CODE_00AC51:        E0 10         CPX #$10                  ;
CODE_00AC53:        D0 EC         BNE CODE_00AC41           ;
CODE_00AC55:        A9 0C 03      LDA #$030C                ;
CODE_00AC58:        8D 46 04      STA $0446                 ;
CODE_00AC5B:        A9 1C 03      LDA #$031C                ;
CODE_00AC5E:        8D 70 04      STA $0470                 ;
CODE_00AC61:        9C 1E 02      STZ $021E                 ;
CODE_00AC64:        A9 B0 00      LDA #$00B0                ;
CODE_00AC67:        1A            INC A                     ;
CODE_00AC68:        1A            INC A                     ;
CODE_00AC69:        1A            INC A                     ;
CODE_00AC6A:        85 00         STA $00                   ;
CODE_00AC6C:        20 F0 AC      JSR CODE_00ACF0           ;
CODE_00AC6F:        A9 2D 01      LDA #$012D                ;
CODE_00AC72:        85 00         STA $00                   ;
CODE_00AC74:        A2 70         LDX #$70                  ;
CODE_00AC76:        86 02         STX $02                   ;
CODE_00AC78:        20 AB AD      JSR CODE_00ADAB           ;
CODE_00AC7B:        A9 F5 7C      LDA #$7CF5                ;
CODE_00AC7E:        8D 1C 02      STA $021C                 ;
CODE_00AC81:        E2 20         SEP #$20                  ;
CODE_00AC83:        A9 01         LDA #$01                  ;
CODE_00AC85:        8D 1A 02      STA $021A                 ;
CODE_00AC88:        A9 15         LDA #$15                  ;
CODE_00AC8A:        8D 1B 02      STA $021B                 ;
CODE_00AC8D:        C2 20         REP #$20                  ;
CODE_00AC8F:        A9 0B 00      LDA #$000B                ;
CODE_00AC92:        85 00         STA $00                   ;
CODE_00AC94:        A9 0A 00      LDA #$000A                ;
CODE_00AC97:        85 02         STA $02                   ;
CODE_00AC99:        A9 16 00      LDA #$0016                ;
CODE_00AC9C:        85 04         STA $04                   ;
CODE_00AC9E:        A9 14 00      LDA #$0014                ;
CODE_00ACA1:        85 06         STA $06                   ;
CODE_00ACA3:        E2 20         SEP #$20                  ;
CODE_00ACA5:        20 4A AE      JSR CODE_00AE4A           ;
CODE_00ACA8:        80 45         BRA CODE_00ACEF           ;

CODE_00ACAA:        AD 1B 02      LDA $021B                 ;
CODE_00ACAD:        D0 25         BNE CODE_00ACD4           ;
CODE_00ACAF:        A5 00         LDA $00                   ;
CODE_00ACB1:        D0 08         BNE CODE_00ACBB           ;
CODE_00ACB3:        9C 1A 02      STZ $021A                 ;
CODE_00ACB6:        9C 20 02      STZ $0220                 ;
CODE_00ACB9:        80 34         BRA CODE_00ACEF           ;

CODE_00ACBB:        A9 3F         LDA #$3F                  ;
CODE_00ACBD:        8D 63 00      STA $0063                 ;
CODE_00ACC0:        C2 20         REP #$20                  ;
CODE_00ACC2:        A9 2A 0F      LDA #$0F2A                ;
CODE_00ACC5:        8D 1E 02      STA $021E                 ;
CODE_00ACC8:        E2 20         SEP #$20                  ;
CODE_00ACCA:        A9 01         LDA #$01                  ;
CODE_00ACCC:        8D 1A 02      STA $021A                 ;
CODE_00ACCF:        A9 16         LDA #$16                  ;
CODE_00ACD1:        8D 1B 02      STA $021B                 ;
CODE_00ACD4:        C2 20         REP #$20                  ;
CODE_00ACD6:        A9 0B 00      LDA #$000B                ;
CODE_00ACD9:        85 00         STA $00                   ;
CODE_00ACDB:        A9 0A 00      LDA #$000A                ;
CODE_00ACDE:        85 02         STA $02                   ;
CODE_00ACE0:        A9 16 00      LDA #$0016                ;
CODE_00ACE3:        85 04         STA $04                   ;
CODE_00ACE5:        A9 14 00      LDA #$0014                ;
CODE_00ACE8:        85 06         STA $06                   ;
CODE_00ACEA:        E2 20         SEP #$20                  ;
CODE_00ACEC:        20 3C AF      JSR CODE_00AF3C           ;
CODE_00ACEF:        60            RTS                       ;

CODE_00ACF0:        A2 00         LDX #$00                  ;
CODE_00ACF2:        9B            TXY                       ;
CODE_00ACF3:        B1 00         LDA ($00),y               ;
CODE_00ACF5:        1A            INC A                     ;
CODE_00ACF6:        29 FF 00      AND #$00FF                ;
CODE_00ACF9:        F0 27         BEQ CODE_00AD22           ;
CODE_00ACFB:        09 40 03      ORA #$0340                ;
CODE_00ACFE:        9D C0 04      STA $04C0,x               ;
CODE_00AD01:        09 10 00      ORA #$0010                ;
CODE_00AD04:        9D EA 04      STA $04EA,x               ;
CODE_00AD07:        A9 FD 02      LDA #$02FD                ;
CODE_00AD0A:        9D EC 04      STA $04EC,x               ;
CODE_00AD0D:        A9 51 03      LDA #$0351                ;
CODE_00AD10:        9D E8 04      STA $04E8,x               ;
CODE_00AD13:        9D EE 04      STA $04EE,x               ;
CODE_00AD16:        A9 FF 02      LDA #$02FF                ;
CODE_00AD19:        9D BE 04      STA $04BE,x               ;
CODE_00AD1C:        9D C2 04      STA $04C2,x               ;
CODE_00AD1F:        9D C4 04      STA $04C4,x               ;
CODE_00AD22:        8A            TXA                       ;
CODE_00AD23:        18            CLC                       ;
CODE_00AD24:        69 54 00      ADC #$0054                ;
CODE_00AD27:        AA            TAX                       ;
CODE_00AD28:        C8            INY                       ;
CODE_00AD29:        C8            INY                       ;
CODE_00AD2A:        C8            INY                       ;
CODE_00AD2B:        C8            INY                       ;
CODE_00AD2C:        C0 10         CPY #$10                  ;
CODE_00AD2E:        D0 C3         BNE CODE_00ACF3           ;
CODE_00AD30:        AD 18 02      LDA $0218                 ;
CODE_00AD33:        29 03 00      AND #$0003                ;
CODE_00AD36:        C9 02 00      CMP #$0002                ;
CODE_00AD39:        B0 20         BCS CODE_00AD5B           ;
CODE_00AD3B:        A2 00         LDX #$00                  ;
CODE_00AD3D:        9B            TXY                       ;
CODE_00AD3E:        B5 70         LDA $70,x                 ;
CODE_00AD40:        29 FF 00      AND #$00FF                ;
CODE_00AD43:        F0 06         BEQ CODE_00AD4B           ;
CODE_00AD45:        A9 9B 03      LDA #$039B                ;
CODE_00AD48:        99 E8 04      STA $04E8,y               ;
CODE_00AD4B:        98            TYA                       ;
CODE_00AD4C:        18            CLC                       ;
CODE_00AD4D:        69 54 00      ADC #$0054                ;
CODE_00AD50:        A8            TAY                       ;
CODE_00AD51:        E8            INX                       ;
CODE_00AD52:        E8            INX                       ;
CODE_00AD53:        E8            INX                       ;
CODE_00AD54:        E8            INX                       ;
CODE_00AD55:        E0 10         CPX #$10                  ;
CODE_00AD57:        F0 02         BEQ CODE_00AD5B           ;
CODE_00AD59:        80 E3         BRA CODE_00AD3E           ;

CODE_00AD5B:        60            RTS                       ;

CODE_00AD5C:        A2 00         LDX #$00                  ;
CODE_00AD5E:        9B            TXY                       ;
CODE_00AD5F:        B1 00         LDA ($00),y               ;
CODE_00AD61:        1A            INC A                     ;
CODE_00AD62:        29 FF 00      AND #$00FF                ;
CODE_00AD65:        F0 35         BEQ CODE_00AD9C           ;
CODE_00AD67:        09 40 03      ORA #$0340                ;
CODE_00AD6A:        9D BE 04      STA $04BE,x               ;
CODE_00AD6D:        09 10 00      ORA #$0010                ;
CODE_00AD70:        9D E8 04      STA $04E8,x               ;
CODE_00AD73:        A9 FD 02      LDA #$02FD                ;
CODE_00AD76:        9D EA 04      STA $04EA,x               ;
CODE_00AD79:        A9 FE 02      LDA #$02FE                ;
CODE_00AD7C:        9D EC 04      STA $04EC,x               ;
CODE_00AD7F:        A9 FF 02      LDA #$02FF                ;
CODE_00AD82:        9D C0 04      STA $04C0,x               ;
CODE_00AD85:        9D C2 04      STA $04C2,x               ;
CODE_00AD88:        B9 C0 00      LDA $00C0,y               ;
CODE_00AD8B:        EB            XBA                       ;
CODE_00AD8C:        29 FF 00      AND #$00FF                ;
CODE_00AD8F:        1A            INC A                     ;
CODE_00AD90:        09 40 03      ORA #$0340                ;
CODE_00AD93:        9D C4 04      STA $04C4,x               ;
CODE_00AD96:        09 10 00      ORA #$0010                ;
CODE_00AD99:        9D EE 04      STA $04EE,x               ;
CODE_00AD9C:        8A            TXA                       ;
CODE_00AD9D:        18            CLC                       ;
CODE_00AD9E:        69 54 00      ADC #$0054                ;
CODE_00ADA1:        AA            TAX                       ;
CODE_00ADA2:        C8            INY                       ;
CODE_00ADA3:        C8            INY                       ;
CODE_00ADA4:        C8            INY                       ;
CODE_00ADA5:        C8            INY                       ;
CODE_00ADA6:        C0 10         CPY #$10                  ;
CODE_00ADA8:        D0 B5         BNE CODE_00AD5F           ;
CODE_00ADAA:        60            RTS                       ;

CODE_00ADAB:        C2 10         REP #$10                  ;
CODE_00ADAD:        AD 18 02      LDA $0218                 ;
CODE_00ADB0:        29 03 00      AND #$0003                ;
CODE_00ADB3:        85 0A         STA $0A                   ;
CODE_00ADB5:        A9 00 00      LDA #$0000                ;
CODE_00ADB8:        AA            TAX                       ;
CODE_00ADB9:        85 04         STA $04                   ;
CODE_00ADBB:        A4 04         LDY $04                   ;
CODE_00ADBD:        B7 00         LDA [$00],y               ;
CODE_00ADBF:        29 FF 00      AND #$00FF                ;
CODE_00ADC2:        C9 FF 00      CMP #$00FF                ;
CODE_00ADC5:        F0 0F         BEQ CODE_00ADD6           ;
CODE_00ADC7:        18            CLC                       ;
CODE_00ADC8:        65 0A         ADC $0A                   ;
CODE_00ADCA:        0A            ASL A                     ;
CODE_00ADCB:        A8            TAY                       ;
CODE_00ADCC:        B9 EC AD      LDA $ADEC,y               ;
CODE_00ADCF:        9D F0 04      STA $04F0,x               ;
CODE_00ADD2:        1A            INC A                     ;
CODE_00ADD3:        9D F2 04      STA $04F2,x               ;
CODE_00ADD6:        A5 04         LDA $04                   ;
CODE_00ADD8:        18            CLC                       ;
CODE_00ADD9:        69 20 01      ADC #$0120                ;
CODE_00ADDC:        85 04         STA $04                   ;
CODE_00ADDE:        8A            TXA                       ;
CODE_00ADDF:        18            CLC                       ;
CODE_00ADE0:        69 54 00      ADC #$0054                ;
CODE_00ADE3:        AA            TAX                       ;
CODE_00ADE4:        29 00 01      AND #$0100                ;
CODE_00ADE7:        F0 D2         BEQ CODE_00ADBB           ;
CODE_00ADE9:        E2 10         SEP #$10                  ;
CODE_00ADEB:        60            RTS                       ;

DATA_00ADEC:        db $9C,$03,$9E,$03,$00,$00,$00,$00 ;
                    db $9C,$03,$9E,$03 ;

CODE_00ADF8:        AF 00 80 7F   LDA $7F8000               ;
CODE_00ADFC:        AA            TAX                       ;
CODE_00ADFD:        C2 30         REP #$30                  ;
CODE_00ADFF:        A9 15 00      LDA #$0015                ;
CODE_00AE02:        85 04         STA $04                   ;
CODE_00AE04:        AD 1C 02      LDA $021C                 ;
CODE_00AE07:        EB            XBA                       ;
CODE_00AE08:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE0C:        E8            INX                       ;
CODE_00AE0D:        E8            INX                       ;
CODE_00AE0E:        A9 2A 00      LDA #$002A                ;
CODE_00AE11:        EB            XBA                       ;
CODE_00AE12:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE16:        E8            INX                       ;
CODE_00AE17:        E8            INX                       ;
CODE_00AE18:        AC 1E 02      LDY $021E                 ;
CODE_00AE1B:        B9 00 04      LDA $0400,y               ;
CODE_00AE1E:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE22:        E8            INX                       ;
CODE_00AE23:        E8            INX                       ;
CODE_00AE24:        EE 1E 02      INC $021E                 ;
CODE_00AE27:        EE 1E 02      INC $021E                 ;
CODE_00AE2A:        C6 04         DEC $04                   ;
CODE_00AE2C:        D0 EA         BNE CODE_00AE18           ;
CODE_00AE2E:        AD 1C 02      LDA $021C                 ;
CODE_00AE31:        18            CLC                       ;
CODE_00AE32:        69 20 00      ADC #$0020                ;
CODE_00AE35:        8D 1C 02      STA $021C                 ;
CODE_00AE38:        A9 FF FF      LDA #$FFFF                ;
CODE_00AE3B:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE3F:        8A            TXA                       ;
CODE_00AE40:        8F 00 80 7F   STA $7F8000               ;
CODE_00AE44:        E2 30         SEP #$30                  ;
CODE_00AE46:        CE 1B 02      DEC $021B                 ;
CODE_00AE49:        60            RTS                       ;

CODE_00AE4A:        AF 00 80 7F   LDA $7F8000               ;
CODE_00AE4E:        AA            TAX                       ;
CODE_00AE4F:        C2 30         REP #$30                  ;
CODE_00AE51:        A5 00         LDA $00                   ;
CODE_00AE53:        A5 02         LDA $02                   ;
CODE_00AE55:        AD 1C 02      LDA $021C                 ;
CODE_00AE58:        EB            XBA                       ;
CODE_00AE59:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE5D:        E8            INX                       ;
CODE_00AE5E:        E8            INX                       ;
CODE_00AE5F:        A5 04         LDA $04                   ;
CODE_00AE61:        EB            XBA                       ;
CODE_00AE62:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE66:        E8            INX                       ;
CODE_00AE67:        E8            INX                       ;
CODE_00AE68:        AC 1E 02      LDY $021E                 ;
CODE_00AE6B:        B9 00 04      LDA $0400,y               ;
CODE_00AE6E:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE72:        E8            INX                       ;
CODE_00AE73:        E8            INX                       ;
CODE_00AE74:        EE 1E 02      INC $021E                 ;
CODE_00AE77:        EE 1E 02      INC $021E                 ;
CODE_00AE7A:        C6 00         DEC $00                   ;
CODE_00AE7C:        D0 EA         BNE CODE_00AE68           ;
CODE_00AE7E:        AD 1C 02      LDA $021C                 ;
CODE_00AE81:        29 E0 7F      AND #$7FE0                ;
CODE_00AE84:        49 00 04      EOR #$0400                ;
CODE_00AE87:        EB            XBA                       ;
CODE_00AE88:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE8C:        E8            INX                       ;
CODE_00AE8D:        E8            INX                       ;
CODE_00AE8E:        A5 06         LDA $06                   ;
CODE_00AE90:        EB            XBA                       ;
CODE_00AE91:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AE95:        E8            INX                       ;
CODE_00AE96:        E8            INX      *                 ;
CODE_00AE97:        AC 1E 02      LDY $021E                 ;
CODE_00AE9A:        B9 00 04      LDA $0400,y               ;
CODE_00AE9D:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AEA1:        E8            INX                       ;
CODE_00AEA2:        E8            INX                       ;
CODE_00AEA3:        EE 1E 02      INC $021E                 ;
CODE_00AEA6:        EE 1E 02      INC $021E                 ;
CODE_00AEA9:        C6 02         DEC $02                   ;
CODE_00AEAB:        D0 EA         BNE CODE_00AE97           ;
CODE_00AEAD:        AD 1C 02      LDA $021C                 ;
CODE_00AEB0:        18            CLC                       ;
CODE_00AEB1:        69 20 00      ADC #$0020                ;
CODE_00AEB4:        8D 1C 02      STA $021C                 ;
CODE_00AEB7:        A9 FF FF      LDA #$FFFF                ;
CODE_00AEBA:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AEBE:        8A            TXA                       ;
CODE_00AEBF:        8F 00 80 7F   STA $7F8000               ;
CODE_00AEC3:        E2 30         SEP #$30                  ;
CODE_00AEC5:        CE 1B 02      DEC $021B                 ;
CODE_00AEC8:        60            RTS                       ;

CODE_00AEC9:        AF 00 80 7F   LDA $7F8000               ;
CODE_00AECD:        AA            TAX                       ;
CODE_00AECE:        C2 30         REP #$30                  ;
CODE_00AED0:        A9 15 00      LDA #$0015                ;
CODE_00AED3:        85 04         STA $04                   ;
CODE_00AED5:        AD 1C 02      LDA $021C                 ;
CODE_00AED8:        EB            XBA                       ;
CODE_00AED9:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AEDD:        E8            INX                       ;
CODE_00AEDE:        E8            INX                       ;
CODE_00AEDF:        A9 2A 00      LDA #$002A                ;
CODE_00AEE2:        EB            XBA                       ;
CODE_00AEE3:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AEE7:        E8            INX                       ;
CODE_00AEE8:        E8            INX                       ;
CODE_00AEE9:        E2 20         SEP #$20                  ;
CODE_00AEEB:        8B            PHB                       ;
CODE_00AEEC:        A9 7F         LDA #$7F                  ;
CODE_00AEEE:        48            PHA                       ;
CODE_00AEEF:        AB            PLB                       ;
CODE_00AEF0:        C2 20         REP #$20                  ;
CODE_00AEF2:        AF 1E 02 00   LDA $00021E               ;
CODE_00AEF6:        A8            TAY                       ;
CODE_00AEF7:        B9 00 10      LDA $1000,y               ;
CODE_00AEFA:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AEFE:        E8            INX                       ;
CODE_00AEFF:        E8            INX                       ;
CODE_00AF00:        C8            INY                       ;
CODE_00AF01:        C8            INY                       ;
CODE_00AF02:        C6 04         DEC $04                   ;
CODE_00AF04:        D0 F1         BNE CODE_00AEF7           ;
CODE_00AF06:        E2 20         SEP #$20                  ;
CODE_00AF08:        AB            PLB                       ;
CODE_00AF09:        C2 20         REP #$20                  ;
CODE_00AF0B:        AD 1C 02      LDA $021C                 ;
CODE_00AF0E:        38            SEC                       ;
CODE_00AF0F:        E9 20 00      SBC #$0020                ;
CODE_00AF12:        8D 1C 02      STA $021C                 ;
CODE_00AF15:        AD 1E 02      LDA $021E                 ;
CODE_00AF18:        38            SEC                       ;
CODE_00AF19:        E9 40 00      SBC #$0040                ;
CODE_00AF1C:        8D 1E 02      STA $021E                 ;
CODE_00AF1F:        A9 FF FF      LDA #$FFFF                ;
CODE_00AF22:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF26:        8A            TXA                       ;
CODE_00AF27:        8F 00 80 7F   STA $7F8000               ;
CODE_00AF2B:        E2 30         SEP #$30                  ;
CODE_00AF2D:        CE 1B 02      DEC $021B                 ;
CODE_00AF30:        AD 1B 02      LDA $021B                 ;
CODE_00AF33:        D0 06         BNE CODE_00AF3B           ;
CODE_00AF35:        9C 1A 02      STZ $021A                 ;
CODE_00AF38:        9C 20 02      STZ $0220                 ;
CODE_00AF3B:        60            RTS                       ;

CODE_00AF3C:        AF 00 80 7F   LDA $7F8000               ;
CODE_00AF40:        AA            TAX                       ;
CODE_00AF41:        C2 30         REP #$30                  ;
CODE_00AF43:        A5 00         LDA $00                   ;
CODE_00AF45:        A5 02         LDA $02                   ;
CODE_00AF47:        AD 1C 02      LDA $021C                 ;
CODE_00AF4A:        EB            XBA                       ;
CODE_00AF4B:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF4F:        E8            INX                       ;
CODE_00AF50:        E8            INX                       ;
CODE_00AF51:        A5 04         LDA $04                   ;
CODE_00AF53:        EB            XBA                       ;
CODE_00AF54:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF58:        E8            INX                       ;
CODE_00AF59:        E8            INX                       ;
CODE_00AF5A:        E2 20         SEP #$20                  ;
CODE_00AF5C:        8B            PHB                       ;
CODE_00AF5D:        A9 7F         LDA #$7F                  ;
CODE_00AF5F:        48            PHA                       ;
CODE_00AF60:        AB            PLB                       ;
CODE_00AF61:        C2 20         REP #$20                  ;
CODE_00AF63:        AF 1E 02 00   LDA $00021E               ;
CODE_00AF67:        A8            TAY                       ;
CODE_00AF68:        B9 00 10      LDA $1000,y               ;
CODE_00AF6B:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF6F:        E8            INX                       ;
CODE_00AF70:        E8            INX                       ;
CODE_00AF71:        C8            INY                       ;
CODE_00AF72:        C8            INY                       ;
CODE_00AF73:        C6 00         DEC $00                   ;
CODE_00AF75:        D0 F1         BNE CODE_00AF68           ;
CODE_00AF77:        E2 20         SEP #$20                  ;
CODE_00AF79:        AB            PLB                       ;
CODE_00AF7A:        C2 20         REP #$20                  ;
CODE_00AF7C:        AD 1C 02      LDA $021C                 ;
CODE_00AF7F:        29 E0 7F      AND #$7FE0                ;
CODE_00AF82:        49 00 04      EOR #$0400                ;
CODE_00AF85:        EB            XBA                       ;
CODE_00AF86:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF8A:        E8            INX                       ;
CODE_00AF8B:        E8            INX                       ;
CODE_00AF8C:        A5 06         LDA $06                   ;
CODE_00AF8E:        EB            XBA                       ;
CODE_00AF8F:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AF93:        E8            INX                       ;
CODE_00AF94:        E8            INX                       ;
CODE_00AF95:        E2 20         SEP #$20                  ;
CODE_00AF97:        8B            PHB                       ;
CODE_00AF98:        A9 7F         LDA #$7F                  ;
CODE_00AF9A:        48            PHA                       ;
CODE_00AF9B:        AB            PLB                       ;
CODE_00AF9C:        C2 20         REP #$20                  ;
CODE_00AF9E:        98            TYA                       ;
CODE_00AF9F:        18            CLC                       ;
CODE_00AFA0:        69 C0 07      ADC #$07C0                ;
CODE_00AFA3:        29 FF 0F      AND #$0FFF                ;
CODE_00AFA6:        A8            TAY                       ;
CODE_00AFA7:        B9 00 10      LDA $1000,y               ;
CODE_00AFAA:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AFAE:        E8            INX                       ;
CODE_00AFAF:        E8            INX                       ;
CODE_00AFB0:        C8            INY                       ;
CODE_00AFB1:        C8            INY                       ;
CODE_00AFB2:        C6 02         DEC $02                   ;
CODE_00AFB4:        D0 F1         BNE CODE_00AFA7           ;
CODE_00AFB6:        E2 20         SEP #$20                  ;
CODE_00AFB8:        AB            PLB                       ;
CODE_00AFB9:        C2 20         REP #$20                  ;
CODE_00AFBB:        AD 1C 02      LDA $021C                 ;
CODE_00AFBE:        38            SEC                       ;
CODE_00AFBF:        E9 20 00      SBC #$0020                ;
CODE_00AFC2:        8D 1C 02      STA $021C                 ;
CODE_00AFC5:        AD 1E 02      LDA $021E                 ;
CODE_00AFC8:        38            SEC                       ;
CODE_00AFC9:        E9 40 00      SBC #$0040                ;
CODE_00AFCC:        8D 1E 02      STA $021E                 ;
CODE_00AFCF:        A9 FF FF      LDA #$FFFF                ;
CODE_00AFD2:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00AFD6:        8A            TXA                       ;
CODE_00AFD7:        8F 00 80 7F   STA $7F8000               ;
CODE_00AFDB:        E2 30         SEP #$30                  ;
CODE_00AFDD:        CE 1B 02      DEC $021B                 ;
CODE_00AFE0:        AD 1B 02      LDA $021B                 ;
CODE_00AFE3:        D0 06         BNE CODE_00AFEB           ;
CODE_00AFE5:        9C 1A 02      STZ $021A                 ;
CODE_00AFE8:        9C 20 02      STZ $0220                 ;
CODE_00AFEB:        60            RTS                       ;

CODE_00AFEC:        C2 20         REP #$20                  ;
CODE_00AFEE:        AF 00 80 7F   LDA $7F8000               ;
CODE_00AFF2:        AA            TAX                       ;
CODE_00AFF3:        AD 18 02      LDA $0218                 ;
CODE_00AFF6:        29 03 00      AND #$0003                ;
CODE_00AFF9:        0A            ASL A                     ;
CODE_00AFFA:        A8            TAY                       ;
CODE_00AFFB:        B9 5D B0      LDA $B05D,y               ;
CODE_00AFFE:        EB            XBA                       ;
CODE_00AFFF:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B003:        A9 06 00      LDA #$0006                ;
CODE_00B006:        EB            XBA                       ;
CODE_00B007:        9F 04 80 7F   STA $7F8004,x             ;
CODE_00B00B:        5A            PHY                       ;
CODE_00B00C:        AF 06 00 70   LDA $700006               ;
CODE_00B010:        29 01 00      AND #$0001                ;
CODE_00B013:        0A            ASL A                     ;
CODE_00B014:        A8            TAY                       ;
CODE_00B015:        B9 6D B0      LDA $B06D,y               ;
CODE_00B018:        9F 06 80 7F   STA $7F8006,x             ;
CODE_00B01C:        1A            INC A                     ;
CODE_00B01D:        9F 08 80 7F   STA $7F8008,x             ;
CODE_00B021:        1A            INC A                     ;
CODE_00B022:        9F 0A 80 7F   STA $7F800A,x             ;
CODE_00B026:        7A            PLY                       ;
CODE_00B027:        8A            TXA                       ;
CODE_00B028:        18            CLC                       ;
CODE_00B029:        69 0A 00      ADC #$000A                ;
CODE_00B02C:        AA            TAX                       ;
CODE_00B02D:        B9 65 B0      LDA $B065,y               ;
CODE_00B030:        EB            XBA                       ;
CODE_00B031:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B035:        A9 04 00      LDA #$0004                ;
CODE_00B038:        EB            XBA                       ;
CODE_00B039:        9F 04 80 7F   STA $7F8004,x             ;
CODE_00B03D:        AF 06 00 70   LDA $700006               ;
CODE_00B041:        29 01 00      AND #$0001                ;
CODE_00B044:        0A            ASL A                     ;
CODE_00B045:        69 84 03      ADC #$0384                ;
CODE_00B048:        9F 06 80 7F   STA $7F8006,x             ;
CODE_00B04C:        1A            INC A                     ;
CODE_00B04D:        9F 08 80 7F   STA $7F8008,x             ;
CODE_00B051:        8A            TXA                       ;
CODE_00B052:        18            CLC                       ;
CODE_00B053:        69 08 00      ADC #$0008                ;
CODE_00B056:        8F 00 80 7F   STA $7F8000               ;
CODE_00B05A:        E2 20         SEP #$20                  ;
CODE_00B05C:        60            RTS                       ;

DATA_00B05D:        dw $7B2C,$7B3B,$7F2B,$7F3C
                    dw $7B4B,$7B5A,$7F4A,$7F5B

DATA_00B06D:        db $78,$03,$68,$03 ;

CODE_00B071:        C2 20         REP #$20                  ;
CODE_00B073:        A9 FF 02      LDA #$02FF                ;
CODE_00B076:        85 00         STA $00                   ;
CODE_00B078:        85 02         STA $02                   ;
CODE_00B07A:        85 04         STA $04                   ;
CODE_00B07C:        85 06         STA $06                   ;
CODE_00B07E:        85 08         STA $08                   ;
CODE_00B080:        85 0A         STA $0A                   ;
CODE_00B082:        85 0C         STA $0C                   ;
CODE_00B084:        A5 D1         LDA $D1                   ;
CODE_00B086:        29 03 00      AND #$0003                ;
CODE_00B089:        0A            ASL A                     ;
CODE_00B08A:        0A            ASL A                     ;
CODE_00B08B:        AA            TAX                       ;
CODE_00B08C:        A9 4F 03      LDA #$034F                ;
CODE_00B08F:        95 00         STA $00,x                 ;
CODE_00B091:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B095:        AA            TAX                       ;
CODE_00B096:        AD 18 02      LDA $0218                 ;
CODE_00B099:        29 03 00      AND #$0003                ;
CODE_00B09C:        0A            ASL A                     ;
CODE_00B09D:        A8            TAY                       ;
CODE_00B09E:        B9 D2 B0      LDA $B0D2,y               ;
CODE_00B0A1:        EB            XBA                       ;
CODE_00B0A2:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B0A6:        E8            INX                       ;
CODE_00B0A7:        E8            INX                       ;
CODE_00B0A8:        A9 0E 80      LDA #$800E                ;
CODE_00B0AB:        EB            XBA                       ;
CODE_00B0AC:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B0B0:        E8            INX                       ;
CODE_00B0B1:        E8            INX                       ;
CODE_00B0B2:        A0 00         LDY #$00                  ;
CODE_00B0B4:        B9 00 00      LDA $0000,y               ;
CODE_00B0B7:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B0BB:        E8            INX                       ;
CODE_00B0BC:        E8            INX                       ;
CODE_00B0BD:        C8            INY                       ;
CODE_00B0BE:        C8            INY                       ;
CODE_00B0BF:        C0 0E         CPY #$0E                  ;
CODE_00B0C1:        D0 F1         BNE CODE_00B0B4           ;
CODE_00B0C3:        A9 FF FF      LDA #$FFFF                ;
CODE_00B0C6:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B0CA:        8A            TXA                       ;
CODE_00B0CB:        8F 00 80 7F   STA $7F8000               ;
CODE_00B0CF:        E2 20         SEP #$20                  ;
CODE_00B0D1:        60            RTS                       ;

DATA_00B0D2:        db $89,$79,$98,$79,$88,$7D,$99,$7D

CODE_00B0DA:        DA            PHX                       ;
CODE_00B0DB:        5A            PHY                       ;
CODE_00B0DC:        C2 20         REP #$20                  ;
CODE_00B0DE:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B0E2:        AA            TAX                       ;
CODE_00B0E3:        AD 18 02      LDA $0218                 ;
CODE_00B0E6:        29 03 00      AND #$0003                ;
CODE_00B0E9:        85 00         STA $00                   ;
CODE_00B0EB:        0A            ASL A                     ;
CODE_00B0EC:        A8            TAY                       ;
CODE_00B0ED:        A5 D1         LDA $D1                   ;
CODE_00B0EF:        29 FF 00      AND #$00FF                ;
CODE_00B0F2:        EB            XBA                       ;
CODE_00B0F3:        4A            LSR A                     ;
CODE_00B0F4:        4A            LSR A                     ;
CODE_00B0F5:        79 C2 B1      ADC $B1C2,y               ;
CODE_00B0F8:        85 02         STA $02                   ;
CODE_00B0FA:        EB            XBA                       ;
CODE_00B0FB:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B0FF:        E8            INX                       ;
CODE_00B100:        E8            INX                       ;
CODE_00B101:        A9 04 80      LDA #$8004                ;
CODE_00B104:        EB            XBA                       ;
CODE_00B105:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B109:        E8            INX                       ;
CODE_00B10A:        E8            INX                       ;
CODE_00B10B:        A5 D1         LDA $D1                   ;
CODE_00B10D:        29 03 00      AND #$0003                ;
CODE_00B110:        0A            ASL A                     ;
CODE_00B111:        0A            ASL A                     ;
CODE_00B112:        65 00         ADC $00                   ;
CODE_00B114:        A8            TAY                       ;
CODE_00B115:        B9 B0 00      LDA $00B0,y               ;
CODE_00B118:        29 FF 00      AND #$00FF                ;
CODE_00B11B:        18            CLC                       ;
CODE_00B11C:        69 41 03      ADC #$0341                ;
CODE_00B11F:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B123:        E8            INX                       ;
CODE_00B124:        E8            INX                       ;
CODE_00B125:        09 10 00      ORA #$0010                ;
CODE_00B128:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B12C:        E8            INX                       ;
CODE_00B12D:        E8            INX                       ;
CODE_00B12E:        A5 00         LDA $00                   ;
CODE_00B130:        D0 28         BNE CODE_00B15A           ;
CODE_00B132:        B9 70 00      LDA $0070,y               ;
CODE_00B135:        29 FF 00      AND #$00FF                ;
CODE_00B138:        0A            ASL A                     ;
CODE_00B139:        A8            TAY                       ;
CODE_00B13A:        A5 02         LDA $02                   ;
CODE_00B13C:        18            CLC                       ;
CODE_00B13D:        69 1F 00      ADC #$001F                ;
CODE_00B140:        EB            XBA                       ;
CODE_00B141:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B145:        E8            INX                       ;
CODE_00B146:        E8            INX                       ;
CODE_00B147:        A9 02 00      LDA #$0002                ;
CODE_00B14A:        EB            XBA                       ;
CODE_00B14B:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B14F:        E8            INX                       ;
CODE_00B150:        E8            INX                       ;
CODE_00B151:        B9 CA B1      LDA $B1CA,y               ;
CODE_00B154:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B158:        E8            INX                       ;
CODE_00B159:        E8            INX                       ;
CODE_00B15A:        A9 FF FF      LDA #$FFFF                ;
CODE_00B15D:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B161:        8A            TXA                       ;
CODE_00B162:        8F 00 80 7F   STA $7F8000               ;
CODE_00B166:        E2 20         SEP #$20                  ;
CODE_00B168:        7A            PLY                       ;
CODE_00B169:        FA            PLX                       ;
CODE_00B16A:        60            RTS                       ;

CODE_00B16B:        DA            PHX                       ;
CODE_00B16C:        5A            PHY                       ;
CODE_00B16D:        C2 20         REP #$20                  ;
CODE_00B16F:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B173:        AA            TAX                       ;
CODE_00B174:        A5 D1         LDA $D1                   ;
CODE_00B176:        29 FF 00      AND #$00FF                ;
CODE_00B179:        EB            XBA                       ;
CODE_00B17A:        4A            LSR A                     ;
CODE_00B17B:        4A            LSR A                     ;
CODE_00B17C:        69 62 7D      ADC #$7D62                ;
CODE_00B17F:        EB            XBA                       ;
CODE_00B180:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B184:        E8            INX                       ;
CODE_00B185:        E8            INX                       ;
CODE_00B186:        A9 04 80      LDA #$8004                ;
CODE_00B189:        EB            XBA                       ;
CODE_00B18A:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B18E:        E8            INX                       ;
CODE_00B18F:        E8            INX                       ;
CODE_00B190:        A5 D1         LDA $D1                   ;
CODE_00B192:        29 03 00      AND #$0003                ;
CODE_00B195:        0A            ASL A                     ;
CODE_00B196:        0A            ASL A                     ;
CODE_00B197:        A8            TAY                       ;
CODE_00B198:        B9 C1 00      LDA $00C1,y               ;
CODE_00B19B:        29 FF 00      AND #$00FF                ;
CODE_00B19E:        18            CLC                       ;
CODE_00B19F:        69 41 03      ADC #$0341                ;
CODE_00B1A2:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B1A6:        E8            INX                       ;
CODE_00B1A7:        E8            INX                       ;
CODE_00B1A8:        09 10 00      ORA #$0010                ;
CODE_00B1AB:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B1AF:        E8            INX                       ;
CODE_00B1B0:        E8            INX                       ;
CODE_00B1B1:        A9 FF FF      LDA #$FFFF                ;
CODE_00B1B4:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B1B8:        8A            TXA                       ;
CODE_00B1B9:        8F 00 80 7F   STA $7F8000               ;
CODE_00B1BD:        E2 20         SEP #$20                  ;
CODE_00B1BF:        7A            PLY                       ;
CODE_00B1C0:        FA            PLX                       ;
CODE_00B1C1:        60            RTS                       ;

DATA_00B1C2:        db $71,$79,$7F,$79,$70,$7D,$61,$79 ;
                    db $51,$03,$9B,$03 ;

CODE_00B1CE:        C2 30         REP #$30                  ;
CODE_00B1D0:        AD 18 02      LDA $0218                 ;
CODE_00B1D3:        29 03 00      AND #$0003                ;
CODE_00B1D6:        0A            ASL A                     ;
CODE_00B1D7:        A8            TAY                       ;
CODE_00B1D8:        5A            PHY                       ;
CODE_00B1D9:        AD 21 02      LDA $0221                 ;
CODE_00B1DC:        29 0F 00      AND #$000F                ;
CODE_00B1DF:        EB            XBA                       ;
CODE_00B1E0:        4A            LSR A                     ;
CODE_00B1E1:        4A            LSR A                     ;
CODE_00B1E2:        4A            LSR A                     ;
CODE_00B1E3:        85 0E         STA $0E                   ;
CODE_00B1E5:        AA            TAX                       ;
CODE_00B1E6:        B9 4A B3      LDA $B34A,y               ;
CODE_00B1E9:        38            SEC                       ;
CODE_00B1EA:        E5 0E         SBC $0E                   ;
CODE_00B1EC:        85 00         STA $00                   ;
CODE_00B1EE:        B9 5A B3      LDA $B35A,y               ;
CODE_00B1F1:        85 02         STA $02                   ;
CODE_00B1F3:        AD 21 02      LDA $0221                 ;
CODE_00B1F6:        29 0F 00      AND #$000F                ;
CODE_00B1F9:        0A            ASL A                     ;
CODE_00B1FA:        A8            TAY                       ;
CODE_00B1FB:        B9 6A B3      LDA $B36A,y               ;
CODE_00B1FE:        85 08         STA $08                   ;
CODE_00B200:        64 04         STZ $04                   ;
CODE_00B202:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B206:        AA            TAX                       ;
CODE_00B207:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B20A:        7A            PLY                       ;
CODE_00B20B:        F0 17         BEQ CODE_00B224           ;
CODE_00B20D:        C0 04 00      CPY #$0004                ;
CODE_00B210:        F0 12         BEQ CODE_00B224           ;
CODE_00B212:        A5 00         LDA $00                   ;
CODE_00B214:        29 E0 7F      AND #$7FE0                ;
CODE_00B217:        49 00 04      EOR #$0400                ;
CODE_00B21A:        85 00         STA $00                   ;
CODE_00B21C:        B9 62 B3      LDA $B362,y               ;
CODE_00B21F:        85 02         STA $02                   ;
CODE_00B221:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B224:        5A            PHY                       ;
CODE_00B225:        B9 52 B3      LDA $B352,y               ;
CODE_00B228:        18            CLC                       ;
CODE_00B229:        65 0E         ADC $0E                   ;
CODE_00B22B:        85 00         STA $00                   ;
CODE_00B22D:        B9 5A B3      LDA $B35A,y               ;
CODE_00B230:        85 02         STA $02                   ;
CODE_00B232:        AD 21 02      LDA $0221                 ;
CODE_00B235:        29 0F 00      AND #$000F                ;
CODE_00B238:        0A            ASL A                     ;
CODE_00B239:        A8            TAY                       ;
CODE_00B23A:        B9 72 B3      LDA $B372,y               ;
CODE_00B23D:        85 08         STA $08                   ;
CODE_00B23F:        64 04         STZ $04                   ;
CODE_00B241:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B244:        7A            PLY                       ;
CODE_00B245:        F0 17         BEQ CODE_00B25E           ;
CODE_00B247:        C0 04 00      CPY #$0004                ;
CODE_00B24A:        F0 12         BEQ CODE_00B25E           ;
CODE_00B24C:        A5 00         LDA $00                   ;
CODE_00B24E:        29 E0 7F      AND #$7FE0                ;
CODE_00B251:        49 00 04      EOR #$0400                ;
CODE_00B254:        85 00         STA $00                   ;
CODE_00B256:        B9 62 B3      LDA $B362,y               ;
CODE_00B259:        85 02         STA $02                   ;
CODE_00B25B:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B25E:        A9 FF FF      LDA #$FFFF                ;
CODE_00B261:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B265:        8A            TXA                       ;
CODE_00B266:        8F 00 80 7F   STA $7F8000               ;
CODE_00B26A:        E2 30         SEP #$30                  ;
CODE_00B26C:        EE 21 02      INC $0221                 ;
CODE_00B26F:        AD 21 02      LDA $0221                 ;
CODE_00B272:        C9 04         CMP #$04                  ;
CODE_00B274:        D0 05         BNE CODE_00B27B           ;
CODE_00B276:        E6 E0         INC $E0                   ;
CODE_00B278:        9C 22 02      STZ $0222                 ;
CODE_00B27B:        6B            RTL                       ;

CODE_00B27C:        5A            PHY                       ;
CODE_00B27D:        A5 00         LDA $00                   ;
CODE_00B27F:        EB            XBA                       ;
CODE_00B280:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B284:        E8            INX                       ;
CODE_00B285:        E8            INX                       ;
CODE_00B286:        A5 02         LDA $02                   ;
CODE_00B288:        EB            XBA                       ;
CODE_00B289:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B28D:        E8            INX                       ;
CODE_00B28E:        E8            INX                       ;
CODE_00B28F:        46 02         LSR $02                   ;
CODE_00B291:        A4 04         LDY $04                   ;
CODE_00B293:        B1 08         LDA ($08),y               ;
CODE_00B295:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B299:        E8            INX                       ;
CODE_00B29A:        E8            INX                       ;
CODE_00B29B:        C8            INY                       ;
CODE_00B29C:        C8            INY                       ;
CODE_00B29D:        C6 02         DEC $02                   ;
CODE_00B29F:        D0 F2         BNE CODE_00B293           ;
CODE_00B2A1:        84 04         STY $04                   ;
CODE_00B2A3:        7A            PLY                       ;
CODE_00B2A4:        60            RTS                       ;

CODE_00B2A5:        C2 20         REP #$20                  ;
CODE_00B2A7:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B2AB:        AA            TAX                       ;
CODE_00B2AC:        AD 18 02      LDA $0218                 ;
CODE_00B2AF:        29 03 00      AND #$0003                ;
CODE_00B2B2:        0A            ASL A                     ;
CODE_00B2B3:        A8            TAY                       ;
CODE_00B2B4:        5A            PHY                       ;
CODE_00B2B5:        AD 21 02      LDA $0221                 ;
CODE_00B2B8:        29 0F 00      AND #$000F                ;
CODE_00B2BB:        EB            XBA                       ;
CODE_00B2BC:        4A            LSR A                     ;
CODE_00B2BD:        4A            LSR A                     ;
CODE_00B2BE:        4A            LSR A                     ;
CODE_00B2BF:        85 0E         STA $0E                   ;
CODE_00B2C1:        AA            TAX                       ;
CODE_00B2C2:        B9 4A B3      LDA $B34A,y               ;
CODE_00B2C5:        18            CLC                       ;
CODE_00B2C6:        65 0E         ADC $0E                   ;
CODE_00B2C8:        85 00         STA $00                   ;
CODE_00B2CA:        B9 5A B3      LDA $B35A,y               ;
CODE_00B2CD:        85 02         STA $02                   ;
CODE_00B2CF:        A9 2A B4      LDA #$B42A                ;
CODE_00B2D2:        85 08         STA $08                   ;
CODE_00B2D4:        64 04         STZ $04                   ;
CODE_00B2D6:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B2DA:        AA            TAX                       ;
CODE_00B2DB:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B2DE:        7A            PLY                       ;
CODE_00B2DF:        F0 16         BEQ CODE_00B2F7           ;
CODE_00B2E1:        C0 04         CPY #$04                  ;
CODE_00B2E3:        F0 12         BEQ CODE_00B2F7           ;
CODE_00B2E5:        A5 00         LDA $00                   ;
CODE_00B2E7:        29 E0 7F      AND #$7FE0                ;
CODE_00B2EA:        49 00 04      EOR #$0400                ;
CODE_00B2ED:        85 00         STA $00                   ;
CODE_00B2EF:        B9 62 B3      LDA $B362,y               ;
CODE_00B2F2:        85 02         STA $02                   ;
CODE_00B2F4:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B2F7:        5A            PHY                       ;
CODE_00B2F8:        B9 52 B3      LDA $B352,y               ;
CODE_00B2FB:        38            SEC                       ;
CODE_00B2FC:        E5 0E         SBC $0E                   ;
CODE_00B2FE:        85 00         STA $00                   ;
CODE_00B300:        B9 5A B3      LDA $B35A,y               ;
CODE_00B303:        85 02         STA $02                   ;
CODE_00B305:        A9 2A B4      LDA #$B42A                ;
CODE_00B308:        85 08         STA $08                   ;
CODE_00B30A:        64 04         STZ $04                   ;
CODE_00B30C:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B30F:        7A            PLY                       ;
CODE_00B310:        F0 16         BEQ CODE_00B328           ;
CODE_00B312:        C0 04         CPY #$04                  ;
CODE_00B314:        F0 12         BEQ CODE_00B328           ;
CODE_00B316:        A5 00         LDA $00                   ;
CODE_00B318:        29 E0 7F      AND #$7FE0                ;
CODE_00B31B:        49 00 04      EOR #$0400                ;
CODE_00B31E:        85 00         STA $00                   ;
CODE_00B320:        B9 62 B3      LDA $B362,y               ;
CODE_00B323:        85 02         STA $02                   ;
CODE_00B325:        20 7C B2      JSR CODE_00B27C           ;
CODE_00B328:        A9 FF FF      LDA #$FFFF                ;
CODE_00B32B:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B32F:        8A            TXA                       ;
CODE_00B330:        8F 00 80 7F   STA $7F8000               ;
CODE_00B334:        E2 20         SEP #$20                  ;
CODE_00B336:        CE 21 02      DEC $0221                 ;
CODE_00B339:        AD 21 02      LDA $0221                 ;
CODE_00B33C:        10 0B         BPL CODE_00B349           ;
CODE_00B33E:        9C 21 02      STZ $0221                 ;
CODE_00B341:        A9 02         LDA #$02                  ;
CODE_00B343:        85 E0         STA $E0                   ;
CODE_00B345:        64 D2         STZ $D2                   ;
CODE_00B347:        64 1A         STZ $1A                   ;
CODE_00B349:        6B            RTL                       ;

DATA_00B34A:        db $EF,$7A,$FE,$7A,$EE,$7E,$FF,$7E ;
                    db $0F,$7B,$1E,$7B,$0E,$7F,$1F,$7F ;
                    db $16,$00,$04,$00,$16,$00,$02,$00 ;
                    db $00,$00,$12,$00,$00,$00,$14,$00 ;
                    db $BC,$B3,$A6,$B3,$90,$B3,$7A,$B3 ;
                    db $D2,$B3,$E8,$B3,$FE,$B3,$14,$B4 ;
                    db $88,$03,$89,$03,$89,$03,$89,$03 ;
                    db $89,$03,$89,$03,$89,$03,$89,$03 ;
                    db $89,$03,$89,$03,$88,$43,$8A,$03 ;
                    db $83,$03,$95,$03,$96,$03,$97,$03 ;
                    db $83,$03,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$8A,$43,$8A,$03,$FF,$02 ;
                    db $FF,$02,$FF,$02,$98,$03,$99,$03 ;
                    db $9A,$03,$83,$03,$FF,$02,$5F,$03 ;
                    db $8A,$43,$8A,$03,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$FF,$02,$8A,$43 ;
                    db $8A,$03,$FF,$02,$FF,$02,$4F,$03 ;
                    db $6F,$03,$7F,$03,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$8A,$43,$8A,$03 ;
                    db $FF,$02,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$8A,$43,$8A,$03,$FF,$02 ;
                    db $FF,$02,$FF,$02,$81,$03,$83,$03 ;
                    db $97,$03,$FF,$02,$FF,$02,$FF,$02 ;
                    db $8A,$43,$88,$83,$89,$83,$89,$83 ;
                    db $89,$83,$89,$83,$89,$83,$89,$83 ;
                    db $89,$83,$89,$83,$89,$83,$88,$C3 ;
                    db $FF,$02,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$FF,$02,$FF,$02 ;
                    db $FF,$02,$FF,$02,$FF,$02 ;

CODE_00B440:        A5 F6         LDA $F6                   ;
CODE_00B442:        05 F7         ORA $F7                   ;
CODE_00B444:        29 80         AND #$80                  ;
CODE_00B446:        85 00         STA $00                   ;
CODE_00B448:        A5 F4         LDA $F4                   ;
CODE_00B44A:        05 F5         ORA $F5                   ;
CODE_00B44C:        29 3C         AND #$3C                  ;
CODE_00B44E:        05 00         ORA $00                   ;
CODE_00B450:        F0 5E         BEQ CODE_00B4B0           ;
CODE_00B452:        85 00         STA $00                   ;
CODE_00B454:        29 2C         AND #$2C                  ;
CODE_00B456:        F0 5B         BEQ CODE_00B4B3           ;
CODE_00B458:        AD 22 02      LDA $0222                 ;
CODE_00B45B:        49 04         EOR #$04                  ;
CODE_00B45D:        8D 22 02      STA $0222                 ;
CODE_00B460:        C2 20         REP #$20                  ;
CODE_00B462:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B466:        AA            TAX                       ;
CODE_00B467:        AD 18 02      LDA $0218                 ;
CODE_00B46A:        29 03 00      AND #$0003                ;
CODE_00B46D:        0A            ASL A                     ;
CODE_00B46E:        A8            TAY                       ;
CODE_00B46F:        B9 BA B5      LDA $B5BA,y               ;
CODE_00B472:        EB            XBA                       ;
CODE_00B473:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B477:        A9 06 80      LDA #$8006                ;
CODE_00B47A:        EB            XBA                       ;
CODE_00B47B:        9F 04 80 7F   STA $7F8004,x             ;
CODE_00B47F:        A9 FF 02      LDA #$02FF                ;
CODE_00B482:        9F 06 80 7F   STA $7F8006,x             ;
CODE_00B486:        9F 08 80 7F   STA $7F8008,x             ;
CODE_00B48A:        9F 0A 80 7F   STA $7F800A,x             ;
CODE_00B48E:        DA            PHX                       ;
CODE_00B48F:        AE 22 02      LDX $0222                 ;
CODE_00B492:        A9 4F 03      LDA #$034F                ;
CODE_00B495:        9F 06 80 7F   STA $7F8006,x             ;
CODE_00B499:        FA            PLX                       ;
CODE_00B49A:        A9 FF FF      LDA #$FFFF                ;
CODE_00B49D:        9F 0C 80 7F   STA $7F800C,x             ;
CODE_00B4A1:        8A            TXA                       ;
CODE_00B4A2:        18            CLC                       ;
CODE_00B4A3:        69 0C 00      ADC #$000C                ;
CODE_00B4A6:        8F 00 80 7F   STA $7F8000               ;
CODE_00B4AA:        E2 20         SEP #$20                  ;
CODE_00B4AC:        A9 23         LDA #$23                  ;
CODE_00B4AE:        85 63         STA $63                   ;
CODE_00B4B0:        4C 8A B5      JMP CODE_00B58A           ;

CODE_00B4B3:        A5 00         LDA $00                   ;
CODE_00B4B5:        29 90         AND #$90                  ;
CODE_00B4B7:        D0 07         BNE CODE_00B4C0           ;
CODE_00B4B9:        A9 22         LDA #$22                  ;
CODE_00B4BB:        85 63         STA $63                   ;
CODE_00B4BD:        4C 8A B5      JMP CODE_00B58A           ;

CODE_00B4C0:        A9 05         LDA #$05                  ;
CODE_00B4C2:        85 63         STA $63                   ;
CODE_00B4C4:        E6 E0         INC $E0                   ;
CODE_00B4C6:        AD 22 02      LDA $0222                 ;
CODE_00B4C9:        F0 EE         BEQ CODE_00B4B9           ;
CODE_00B4CB:        AD 18 02      LDA $0218                 ;
CODE_00B4CE:        29 03         AND #$03                  ;
CODE_00B4D0:        85 00         STA $00                   ;
CODE_00B4D2:        A5 D1         LDA $D1                   ;
CODE_00B4D4:        29 03         AND #$03                  ;
CODE_00B4D6:        0A            ASL A                     ;
CODE_00B4D7:        0A            ASL A                     ;
CODE_00B4D8:        65 00         ADC $00                   ;
CODE_00B4DA:        AA            TAX                       ;
CODE_00B4DB:        A9 FF         LDA #$FF                  ;
CODE_00B4DD:        95 B0         STA $B0,x                 ;
CODE_00B4DF:        95 C0         STA $C0,x                 ;
CODE_00B4E1:        A9 00         LDA #$00                  ;
CODE_00B4E3:        95 70         STA $70,x                 ;
CODE_00B4E5:        20 2C A8      JSR CODE_00A82C           ;
CODE_00B4E8:        C2 20         REP #$20                  ;
CODE_00B4EA:        AF 00 80 7F   LDA $7F8000               ;
CODE_00B4EE:        AA            TAX                       ;
CODE_00B4EF:        AD 18 02      LDA $0218                 ;
CODE_00B4F2:        29 03 00      AND #$0003                ;
CODE_00B4F5:        0A            ASL A                     ;
CODE_00B4F6:        A8            TAY                       ;
CODE_00B4F7:        B9 C2 B5      LDA $B5C2,y               ;
CODE_00B4FA:        85 00         STA $00                   ;
CODE_00B4FC:        AD D1 00      LDA $00D1                 ;
CODE_00B4FF:        29 03 00      AND #$0003                ;
CODE_00B502:        EB            XBA                       ;
CODE_00B503:        4A            LSR A                     ;
CODE_00B504:        4A            LSR A                     ;
CODE_00B505:        65 00         ADC $00                   ;
CODE_00B507:        85 00         STA $00                   ;
CODE_00B509:        B9 CA B5      LDA $B5CA,y               ;
CODE_00B50C:        85 02         STA $02                   ;
CODE_00B50E:        64 0E         STZ $0E                   ;
CODE_00B510:        20 8B B5      JSR CODE_00B58B           ;
CODE_00B513:        AD 18 02      LDA $0218                 ;
CODE_00B516:        29 03 00      AND #$0003                ;
CODE_00B519:        C9 01 00      CMP #$0001                ;
CODE_00B51C:        D0 1C         BNE CODE_00B53A           ;
CODE_00B51E:        5A            PHY                       ;
CODE_00B51F:        A9 60 7D      LDA #$7D60                ;
CODE_00B522:        85 00         STA $00                   ;
CODE_00B524:        AD D1 00      LDA $00D1                 ;
CODE_00B527:        29 03 00      AND #$0003                ;
CODE_00B52A:        EB            XBA                       ;
CODE_00B52B:        4A            LSR A                     ;
CODE_00B52C:        4A            LSR A                     ;
CODE_00B52D:        65 00         ADC $00                   ;
CODE_00B52F:        85 00         STA $00                   ;
CODE_00B531:        A9 0A 00      LDA #$000A                ;
CODE_00B534:        85 02         STA $02                   ;
CODE_00B536:        20 8B B5      JSR CODE_00B58B           ;
CODE_00B539:        7A            PLY                       ;
CODE_00B53A:        B9 C2 B5      LDA $B5C2,y               ;
CODE_00B53D:        85 00         STA $00                   ;
CODE_00B53F:        AD D1 00      LDA $00D1                 ;
CODE_00B542:        29 03 00      AND #$0003                ;
CODE_00B545:        EB            XBA                       ;
CODE_00B546:        4A            LSR A                     ;
CODE_00B547:        4A            LSR A                     ;
CODE_00B548:        69 20 00      ADC #$0020                ;
CODE_00B54B:        65 00         ADC $00                   ;
CODE_00B54D:        85 00         STA $00                   ;
CODE_00B54F:        B9 CA B5      LDA $B5CA,y               ;
CODE_00B552:        85 02         STA $02                   ;
CODE_00B554:        20 8B B5      JSR CODE_00B58B           ;
CODE_00B557:        AD 18 02      LDA $0218                 ;
CODE_00B55A:        29 03 00      AND #$0003                ;
CODE_00B55D:        C9 01 00      CMP #$0001                ;
CODE_00B560:        D0 1A         BNE CODE_00B57C           ;
CODE_00B562:        A9 80 7D      LDA #$7D80                ;
CODE_00B565:        85 00         STA $00                   ;
CODE_00B567:        AD D1 00      LDA $00D1                 ;
CODE_00B56A:        29 03 00      AND #$0003                ;
CODE_00B56D:        EB            XBA                       ;
CODE_00B56E:        4A            LSR A                     ;
CODE_00B56F:        4A            LSR A                     ;
CODE_00B570:        65 00         ADC $00                   ;
CODE_00B572:        85 00         STA $00                   ;
CODE_00B574:        A9 0A 00      LDA #$000A                ;
CODE_00B577:        85 02         STA $02                   ;
CODE_00B579:        20 8B B5      JSR CODE_00B58B           ;
CODE_00B57C:        A9 FF FF      LDA #$FFFF                ;
CODE_00B57F:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B583:        8A            TXA                       ;
CODE_00B584:        8F 00 80 7F   STA $7F8000               ;
CODE_00B588:        E2 20         SEP #$20                  ;
CODE_00B58A:        6B            RTL                       ;

CODE_00B58B:        5A            PHY                       ;
CODE_00B58C:        A5 00         LDA $00                   ;
CODE_00B58E:        EB            XBA                       ;
CODE_00B58F:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B593:        E8            INX                       ;
CODE_00B594:        E8            INX                       ;
CODE_00B595:        A5 02         LDA $02                   ;
CODE_00B597:        EB            XBA                       ;
CODE_00B598:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B59C:        EB            XBA                       ;
CODE_00B59D:        4A            LSR A                     ;
CODE_00B59E:        29 FF 00      AND #$00FF                ;
CODE_00B5A1:        85 04         STA $04                   ;
CODE_00B5A3:        E8            INX                       ;
CODE_00B5A4:        E8            INX                       ;
CODE_00B5A5:        A4 0E         LDY $0E                   ;
CODE_00B5A7:        B9 D2 B5      LDA $B5D2,y               ;
CODE_00B5AA:        9F 02 80 7F   STA $7F8002,x             ;
CODE_00B5AE:        E6 0E         INC $0E                   ;
CODE_00B5B0:        E6 0E         INC $0E                   ;
CODE_00B5B2:        E8            INX                       ;
CODE_00B5B3:        E8            INX                       ;
CODE_00B5B4:        C6 04         DEC $04                   ;
CODE_00B5B6:        D0 ED         BNE CODE_00B5A5           ;
CODE_00B5B8:        7A            PLY                       ;
CODE_00B5B9:        60            RTS                       ;

DATA_00B5BA:        db $12,$7B,$01,$7F,$11,$7F,$02,$7B
                    db $70,$79,$7F,$79,$6F,$7D,$60,$79
                    db $0C,$00,$02,$00,$0C,$00,$0C,$00
                    db $60,$03,$61,$03,$62,$03,$63,$03
                    db $FF,$02,$FF,$02,$70,$03,$71,$03
                    db $72,$03,$73,$03,$FF,$02,$FF,$02
                    db $00,$01,$FF,$07,$08,$09,$0A,$7F
                    db $17,$18,$19,$1A,$7F,$07,$08,$09
                    db $0A,$0E,$17,$18,$19,$1A,$1E,$17
                    db $18,$19,$1A,$7F,$7F,$7F,$0B,$0C
                    db $0D,$07,$08,$09,$0A,$0F,$17,$18
                    db $19,$1A,$1F,$1B,$1C,$1D,$20,$1B
                    db $1C,$1D,$21,$1B,$1C,$1D,$30,$1B
                    db $1C,$1D,$31,$65,$66,$67,$75,$76
                    db $77

CODE_00B62B:        8B            PHB                       ;
CODE_00B62C:        4B            PHK                       ;
CODE_00B62D:        AB            PLB                       ;
CODE_00B62E:        AD 11 02      LDA $0211                 ;
CODE_00B631:        F0 0A         BEQ CODE_00B63D           ;
CODE_00B633:        CE 11 02      DEC $0211                 ;
CODE_00B636:        D0 05         BNE CODE_00B63D           ;
CODE_00B638:        20 25 B9      JSR CODE_00B925           ;
CODE_00B63B:        E6 DE         INC $DE                   ;
CODE_00B63D:        AB            PLB                       ;
CODE_00B63E:        60            RTS                       ;

CODE_00B63F:        8B            PHB                       ;
CODE_00B640:        4B            PHK                       ;
CODE_00B641:        AB            PLB                       ;
CODE_00B642:        CE 0E 02      DEC $020E                 ;\ Decrease timer (used for making Mario, toad, move the carpet bird/pidget, move luigi's hand, and birdo's tail move)
CODE_00B645:        D0 16         BNE CODE_00B65D           ;/ If it is not zero branch
CODE_00B647:        20 DA B6      JSR CODE_00B6DA           ; Move luigi's hand
CODE_00B64A:        20 48 B7      JSR CODE_00B748           ; Move toad
CODE_00B64D:        20 BD B7      JSR CODE_00B7BD           ; Move birdo's tail
CODE_00B650:        20 8C B8      JSR CODE_00B88C           ; Move pidget
CODE_00B653:        20 B5 B8      JSR CODE_00B8B5           ; Move Mario
CODE_00B656:        A9 09         LDA #$09                  ;\ Reset timer
CODE_00B658:        8D 0E 02      STA $020E                 ;/
CODE_00B65B:        85 DE         STA $DE                   ; Upload tilemap
CODE_00B65D:        CE 10 02      DEC $0210                 ;\ If it is not time to make bowser talk and luigi's head move, branch
CODE_00B660:        D0 0D         BNE CODE_00B66F           ;/
CODE_00B662:        20 B9 B6      JSR CODE_00B6B9           ; Move luigi's head
CODE_00B665:        20 70 B9      JSR CODE_00B970           ; Move bowser
CODE_00B668:        A9 10         LDA #$10                  ;\ Reset timer
CODE_00B66A:        8D 10 02      STA $0210                 ;/
CODE_00B66D:        85 DE         STA $DE                   ; Upload tilemap
CODE_00B66F:        CE 11 02      DEC $0211                 ;\ If it is not time to make peach talk and birdo talk, branch
CODE_00B672:        D0 0D         BNE CODE_00B681           ;/
CODE_00B674:        20 23 B7      JSR CODE_00B723           ; Move peach
CODE_00B677:        20 9C B7      JSR CODE_00B79C           ; Move birdo
CODE_00B67A:        A9 20         LDA #$20                  ;\ Reset timer
CODE_00B67C:        8D 11 02      STA $0211                 ;/
CODE_00B67F:        85 DE         STA $DE                   ; Upload tilemap
CODE_00B681:        AB            PLB                       ;
CODE_00B682:        60            RTS                       ;

CODE_00B683:        8B            PHB                       ;
CODE_00B684:        4B            PHK                       ;
CODE_00B685:        AB            PLB                       ;
CODE_00B686:        C2 30         REP #$30                  ; Upload BG1 tilemap to RAM
CODE_00B688:        A2 00 80      LDX #$8000                ; Source low and high byte
CODE_00B68B:        A0 00 00      LDY #$0000                ; Destination low and high byte
CODE_00B68E:        A9 FF 07      LDA #$07FF                ; Amount of byte to transfer
CODE_00B691:        54 7F 3C      MVN $3C7F                 ; Transfer $3C:8000 -> $7F:0000
CODE_00B694:        E2 30         SEP #$30                  ;
CODE_00B696:        AB            PLB                       ;
CODE_00B697:        A9 0B         LDA #$0B                  ;\
CODE_00B699:        8D 0E 02      STA $020E                 ; |
CODE_00B69C:        A9 08         LDA #$08                  ; |
CODE_00B69E:        8D 0F 02      STA $020F                 ; | Set timers
CODE_00B6A1:        A9 10         LDA #$10                  ; |
CODE_00B6A3:        8D 10 02      STA $0210                 ; |
CODE_00B6A6:        A9 20         LDA #$20                  ; |
CODE_00B6A8:        8D 11 02      STA $0211                 ;/
CODE_00B6AB:        A9 01         LDA #$01                  ;\ Upload $7F:0000 to BG1 tilemap
CODE_00B6AD:        85 DE         STA $DE                   ;/
CODE_00B6AF:        9C 12 02      STZ $0212                 ;
CODE_00B6B2:        A9 60         LDA #$60                  ;\
CODE_00B6B4:        85 22         STA $22                   ; | Set flash timer for the "All-Stars" text on the title screen
CODE_00B6B6:        64 23         STZ $23                   ;/
CODE_00B6B8:        60            RTS                       ;

CODE_00B6B9:        A9 00         LDA #$00                  ;\ Source bank
CODE_00B6BB:        85 02         STA $02                   ;/
CODE_00B6BD:        C2 30         REP #$30                  ;
CODE_00B6BF:        AD 00 02      LDA $0200                 ; Get frame
CODE_00B6C2:        29 03 00      AND #$0003                ;
CODE_00B6C5:        0A            ASL A                     ;
CODE_00B6C6:        AA            TAX                       ;
CODE_00B6C7:        BD 05 B7      LDA $B705,x               ;\ Source low and high byte
CODE_00B6CA:        85 00         STA $00                   ;/
CODE_00B6CC:        A9 A6 03      LDA #$03A6                ;\ Destination
CODE_00B6CF:        85 04         STA $04                   ;/
CODE_00B6D1:        20 AB B9      JSR CODE_00B9AB           ; Put tilemap in RAM
CODE_00B6D4:        E2 30         SEP #$30                  ;
CODE_00B6D6:        EE 00 02      INC $0200                 ; Next frame
CODE_00B6D9:        60            RTS                       ;

CODE_00B6DA:        A9 00         LDA #$00                  ;\ Source bank
CODE_00B6DC:        85 02         STA $02                   ;/
CODE_00B6DE:        C2 30         REP #$30                  ;
CODE_00B6E0:        AD 01 02      LDA $0201                 ; Get the frame
CODE_00B6E3:        29 FF 00      AND #$00FF                ;
CODE_00B6E6:        0A            ASL A                     ;
CODE_00B6E7:        AA            TAX                       ;
CODE_00B6E8:        BD 0D B7      LDA $B70D,x               ;\ Source low and high
CODE_00B6EB:        85 00         STA $00                   ;/
CODE_00B6ED:        A9 64 04      LDA #$0464                ;\ Destination
CODE_00B6F0:        85 04         STA $04                   ;/
CODE_00B6F2:        20 AB B9      JSR CODE_00B9AB           ; Put tilemap in RAM
CODE_00B6F5:        E2 30         SEP #$30                  ;
CODE_00B6F7:        EE 01 02      INC $0201                 ;
CODE_00B6FA:        AD 01 02      LDA $0201                 ;
CODE_00B6FD:        C9 0B         CMP #$0B                  ;
CODE_00B6FF:        90 03         BCC CODE_00B704           ;
CODE_00B701:        9C 01 02      STZ $0201                 ;
CODE_00B704:        60            RTS                       ;

DATA_00B705:        dw $B9D1 : dw $B9F5 : dw $BA19 : dw $B9F5
          
DATA_00B70D:        dw $BA3D : dw $BA3D : dw $BA4D : dw $BA4D
                    dw $BA4D : dw $BA4D : dw $BA5D : dw $BA4D
                    dw $BA4D : dw $BA4D : dw $BA4D

CODE_00B723:        A9 00         LDA #$00                  ;
CODE_00B725:        85 02         STA $02                   ;
CODE_00B727:        C2 30         REP #$30                  ;
CODE_00B729:        AD 02 02      LDA $0202                 ;
CODE_00B72C:        29 01 00      AND #$0001                ;
CODE_00B72F:        0A            ASL A                     ;
CODE_00B730:        AA            TAX                       ;
CODE_00B731:        BD 44 B7      LDA $B744,x               ;
CODE_00B734:        85 00         STA $00                   ;
CODE_00B736:        A9 92 03      LDA #$0392                ;
CODE_00B739:        85 04         STA $04                   ;
CODE_00B73B:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B73E:        E2 30         SEP #$30                  ;
CODE_00B740:        EE 02 02      INC $0202                 ;
CODE_00B743:        60            RTS                       ;

DATA_00B744:        dw $BA6D : dw $BA8B

CODE_00B748:        A9 00         LDA #$00                  ;
CODE_00B74A:        85 02         STA $02                   ;
CODE_00B74C:        C2 30         REP #$30                  ;
CODE_00B74E:        AD 03 02      LDA $0203                 ;
CODE_00B751:        29 01 00      AND #$0001                ;
CODE_00B754:        0A            ASL A                     ;
CODE_00B755:        AA            TAX                       ;
CODE_00B756:        BD 69 B7      LDA $B769,x               ;
CODE_00B759:        85 00         STA $00                   ;
CODE_00B75B:        A9 EC 04      LDA #$04EC                ;
CODE_00B75E:        85 04         STA $04                   ;
CODE_00B760:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B763:        E2 30         SEP #$30                  ;
CODE_00B765:        EE 03 02      INC $0203                 ;
CODE_00B768:        60            RTS                       ;

DATA_00B769:        dw $BAA9 : dw $BAE3

CODE_00B76D:        A9 00         LDA #$00                  ;
CODE_00B76F:        85 02         STA $02                   ;
CODE_00B771:        C2 30         REP #$30                  ;
CODE_00B773:        AD 04 02      LDA $0204                 ;
CODE_00B776:        29 03 00      AND #$0003                ;
CODE_00B779:        0A            ASL A                     ;
CODE_00B77A:        AA            TAX                       ;
CODE_00B77B:        BD DE B7      LDA $B7DE,x               ;
CODE_00B77E:        85 00         STA $00                   ;
CODE_00B780:        A9 76 04      LDA #$0476                ;
CODE_00B783:        85 04         STA $04                   ;
CODE_00B785:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B788:        E2 30         SEP #$30                  ;
CODE_00B78A:        EE 04 02      INC $0204                 ;
CODE_00B78D:        AD 04 02      LDA $0204                 ;
CODE_00B790:        29 0F         AND #$0F                  ;
CODE_00B792:        C9 03         CMP #$03                  ;
CODE_00B794:        D0 05         BNE CODE_00B79B           ;
CODE_00B796:        A9 80         LDA #$80                  ;
CODE_00B798:        8D 04 02      STA $0204                 ;
CODE_00B79B:        60            RTS                       ;

CODE_00B79C:        A9 00         LDA #$00                  ;
CODE_00B79E:        85 02         STA $02                   ;
CODE_00B7A0:        C2 30         REP #$30                  ;
CODE_00B7A2:        AD 05 02      LDA $0205                 ;
CODE_00B7A5:        29 01 00      AND #$0001                ;
CODE_00B7A8:        0A            ASL A                     ;
CODE_00B7A9:        AA            TAX                       ;
CODE_00B7AA:        BD E4 B7      LDA $B7E4,x               ;
CODE_00B7AD:        85 00         STA $00                   ;
CODE_00B7AF:        A9 B4 04      LDA #$04B4                ;
CODE_00B7B2:        85 04         STA $04                   ;
CODE_00B7B4:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B7B7:        E2 30         SEP #$30                  ;
CODE_00B7B9:        EE 05 02      INC $0205                 ;
CODE_00B7BC:        60            RTS                       ;

CODE_00B7BD:        A9 00         LDA #$00                  ;
CODE_00B7BF:        85 02         STA $02                   ;
CODE_00B7C1:        C2 30         REP #$30                  ;
CODE_00B7C3:        AD 06 02      LDA $0206                 ;
CODE_00B7C6:        29 03 00      AND #$0003                ;
CODE_00B7C9:        0A            ASL A                     ;
CODE_00B7CA:        AA            TAX                       ;
CODE_00B7CB:        BD E8 B7      LDA $B7E8,x               ;
CODE_00B7CE:        85 00         STA $00                   ;
CODE_00B7D0:        A9 FA 04      LDA #$04FA                ;
CODE_00B7D3:        85 04         STA $04                   ;
CODE_00B7D5:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B7D8:        E2 30         SEP #$30                  ;
CODE_00B7DA:        EE 06 02      INC $0206                 ;
CODE_00B7DD:        60            RTS                       ;

DATA_00B7DE:        dw $BB1D,$BB29,$BB1D,$BB35
                    dw $BB45,$BB55,$BB67,$BB79
                    dw $BB8B

CODE_00B7F0:        A9 00         LDA #$00                  ;
CODE_00B7F2:        85 02         STA $02                   ;
CODE_00B7F4:        C2 30         REP #$30                  ;
CODE_00B7F6:        AD 07 02      LDA $0207                 ;
CODE_00B7F9:        29 03 00      AND #$0003                ;
CODE_00B7FC:        0A            ASL A                     ;
CODE_00B7FD:        AA            TAX                       ;
CODE_00B7FE:        BD 1F B8      LDA $B81F,x               ;
CODE_00B801:        85 00         STA $00                   ;
CODE_00B803:        A9 4E 05      LDA #$054E                ;
CODE_00B806:        85 04         STA $04                   ;
CODE_00B808:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B80B:        E2 30         SEP #$30                  ;
CODE_00B80D:        EE 07 02      INC $0207                 ;
CODE_00B810:        AD 07 02      LDA $0207                 ;
CODE_00B813:        29 0F         AND #$0F                  ;
CODE_00B815:        C9 03         CMP #$03                  ;
CODE_00B817:        D0 05         BNE CODE_00B81E           ;
CODE_00B819:        A9 80         LDA #$80                  ;
CODE_00B81B:        8D 07 02      STA $0207                 ;
CODE_00B81E:        60            RTS                       ;

DATA_00B81F:        db $9D,$BB,$AB,$BB,$9D,$BB

CODE_00B825:        A9 00         LDA #$00                  ;
CODE_00B827:        85 02         STA $02                   ;
CODE_00B829:        C2 30         REP #$30                  ;
CODE_00B82B:        AD 08 02      LDA $0208                 ;
CODE_00B82E:        29 03 00      AND #$0003                ;
CODE_00B831:        0A            ASL A                     ;
CODE_00B832:        AA            TAX                       ;
CODE_00B833:        BD 52 B8      LDA $B852,x               ;
CODE_00B836:        85 00         STA $00                   ;
CODE_00B838:        A9 44 05      LDA #$0544                ;
CODE_00B83B:        85 04         STA $04                   ;
CODE_00B83D:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B840:        E2 30         SEP #$30                  ;
CODE_00B842:        EE 08 02      INC $0208                 ;
CODE_00B845:        AD 08 02      LDA $0208                 ;
CODE_00B848:        29 04         AND #$04                  ;
CODE_00B84A:        F0 05         BEQ CODE_00B851           ;
CODE_00B84C:        A9 80         LDA #$80                  ;
CODE_00B84E:        8D 08 02      STA $0208                 ;
CODE_00B851:        60            RTS                       ;

DATA_00B852:        db $B9,$BB,$BF,$BB,$C5,$BB,$B9,$BB

CODE_00B85A:        A9 00         LDA #$00                  ;
CODE_00B85C:        85 02         STA $02                   ;
CODE_00B85E:        C2 30         REP #$30                  ;
CODE_00B860:        AD 09 02      LDA $0209                 ;
CODE_00B863:        29 01 00      AND #$0001                ;
CODE_00B866:        0A            ASL A                     ;
CODE_00B867:        AA            TAX                       ;
CODE_00B868:        BD 88 B8      LDA $B888,x               ;
CODE_00B86B:        85 00         STA $00                   ;
CODE_00B86D:        A9 72 06      LDA #$0672                ;
CODE_00B870:        85 04         STA $04                   ;
CODE_00B872:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B875:        E2 30         SEP #$30                  ;
CODE_00B877:        AD 09 02      LDA $0209                 ;
CODE_00B87A:        F0 08         BEQ CODE_00B884           ;
CODE_00B87C:        AD 09 02      LDA $0209                 ;
CODE_00B87F:        09 80         ORA #$80                  ;
CODE_00B881:        8D 09 02      STA $0209                 ;
CODE_00B884:        EE 09 02      INC $0209                 ;
CODE_00B887:        60            RTS                       ;

DATA_00B888:        db $CB,$BB,$D1,$BB

CODE_00B88C:        A9 00         LDA #$00                  ;
CODE_00B88E:        85 02         STA $02                   ;
CODE_00B890:        C2 30         REP #$30                  ;
CODE_00B892:        AD 0A 02      LDA $020A                 ;
CODE_00B895:        29 03 00      AND #$0003                ;
CODE_00B898:        0A            ASL A                     ;
CODE_00B899:        AA            TAX                       ;
CODE_00B89A:        BD AD B8      LDA $B8AD,x               ;
CODE_00B89D:        85 00         STA $00                   ;
CODE_00B89F:        A9 B2 00      LDA #$00B2                ;
CODE_00B8A2:        85 04         STA $04                   ;
CODE_00B8A4:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B8A7:        E2 30         SEP #$30                  ;
CODE_00B8A9:        EE 0A 02      INC $020A                 ;
CODE_00B8AC:        60            RTS                       ;

DATA_00B8AD:        db $D7,$BB,$01,$BC,$2B,$BC,$55,$BC

CODE_00B8B5:        A9 00         LDA #$00                  ;
CODE_00B8B7:        85 02         STA $02                   ;
CODE_00B8B9:        C2 30         REP #$30                  ;
CODE_00B8BB:        AD 0B 02      LDA $020B                 ;
CODE_00B8BE:        29 0F 00      AND #$000F                ;
CODE_00B8C1:        0A            ASL A                     ;
CODE_00B8C2:        AA            TAX                       ;
CODE_00B8C3:        BD 38 B9      LDA $B938,x               ;
CODE_00B8C6:        85 00         STA $00                   ;
CODE_00B8C8:        A9 58 04      LDA #$0458                ;
CODE_00B8CB:        85 04         STA $04                   ;
CODE_00B8CD:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B8D0:        BD 4C B9      LDA $B94C,x               ;
CODE_00B8D3:        85 00         STA $00                   ;
CODE_00B8D5:        A9 1A 04      LDA #$041A                ;
CODE_00B8D8:        85 04         STA $04                   ;
CODE_00B8DA:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B8DD:        E2 30         SEP #$30                  ;
CODE_00B8DF:        AD 0B 02      LDA $020B                 ;
CODE_00B8E2:        D0 08         BNE CODE_00B8EC           ;
CODE_00B8E4:        20 01 B9      JSR CODE_00B901           ;
CODE_00B8E7:        9C 0C 02      STZ $020C                 ;
CODE_00B8EA:        80 07         BRA CODE_00B8F3           ;

CODE_00B8EC:        C9 06         CMP #$06                  ;
CODE_00B8EE:        90 03         BCC CODE_00B8F3           ;
CODE_00B8F0:        20 01 B9      JSR CODE_00B901           ;
CODE_00B8F3:        EE 0B 02      INC $020B                 ;
CODE_00B8F6:        AD 0B 02      LDA $020B                 ;
CODE_00B8F9:        C9 0A         CMP #$0A                  ;
CODE_00B8FB:        90 03         BCC CODE_00B900           ;
CODE_00B8FD:        9C 0B 02      STZ $020B                 ;
CODE_00B900:        60            RTS                       ;

CODE_00B901:        C2 30         REP #$30                  ;
CODE_00B903:        AD 0C 02      LDA $020C                 ;
CODE_00B906:        29 03 00      AND #$0003                ;
CODE_00B909:        0A            ASL A                     ;
CODE_00B90A:        AA            TAX                       ;
CODE_00B90B:        BD 60 B9      LDA $B960,x               ;
CODE_00B90E:        8F 1E 05 7F   STA $7F051E               ;
CODE_00B912:        BD 68 B9      LDA $B968,x               ;
CODE_00B915:        85 00         STA $00                   ;
CODE_00B917:        A9 A0 04      LDA #$04A0                ;
CODE_00B91A:        85 04         STA $04                   ;
CODE_00B91C:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B91F:        E2 30         SEP #$30                  ;
CODE_00B921:        EE 0C 02      INC $020C                 ;
CODE_00B924:        60            RTS                       ;

CODE_00B925:        C2 30         REP #$30                  ;
CODE_00B927:        A9 B0 01      LDA #$01B0                ;
CODE_00B92A:        8F 5C 04 7F   STA $7F045C               ;
CODE_00B92E:        A9 C0 01      LDA #$01C0                ;
CODE_00B931:        8F 9C 04 7F   STA $7F049C               ;
CODE_00B935:        E2 30         SEP #$30                  ;
CODE_00B937:        60            RTS                       ;

DATA_00B938:        dw $BC7F,$BC9D,$BCBB,$BC9D
                    dw $BC7F,$BC9D,$BCBB,$BCD9
                    dw $BCD9,$BCD9,$BCF7,$BCFF
                    dw $BD07,$BCFF,$BCF7,$BCFF
                    dw $BD07,$BD0F,$BD0F,$BD0F
                    dw $007F,$01D4,$01D4,$01D4
                    dw $BD17,$BD25,$BD25,$BD25

CODE_00B970:        A9 00         LDA #$00                  ;
CODE_00B972:        85 02         STA $02                   ;
CODE_00B974:        C2 30         REP #$30                  ;
CODE_00B976:        AD 0D 02      LDA $020D                 ;
CODE_00B979:        29 FF 00      AND #$00FF                ;
CODE_00B97C:        0A            ASL A                     ;
CODE_00B97D:        AA            TAX                       ;
CODE_00B97E:        BD 9B B9      LDA $B99B,x               ;
CODE_00B981:        85 00         STA $00                   ;
CODE_00B983:        A9 0E 04      LDA #$040E                ;
CODE_00B986:        85 04         STA $04                   ;
CODE_00B988:        20 AB B9      JSR CODE_00B9AB           ;
CODE_00B98B:        E2 30         SEP #$30                  ;
CODE_00B98D:        EE 0D 02      INC $020D                 ;
CODE_00B990:        AD 0D 02      LDA $020D                 ;
CODE_00B993:        C9 08         CMP #$08                  ;
CODE_00B995:        90 03         BCC CODE_00B99A           ;
CODE_00B997:        9C 0D 02      STZ $020D                 ;
CODE_00B99A:        60            RTS                       ;

DATA_00B99B:        dw $BD33,$BD33,$BD33,$BD51
                    dw $BD6F,$BD6F,$BD6F,$BD51

CODE_00B9AB:        DA            PHX                       ;\ Push X and Y
CODE_00B9AC:        5A            PHY                       ;/
CODE_00B9AD:        A0 00 00      LDY #$0000                ; X= #$0000
CODE_00B9B0:        A6 04         LDX $04                   ; Get destination
CODE_00B9B2:        B7 00         LDA [$00],y               ; Read data
CODE_00B9B4:        F0 0C         BEQ CODE_00B9C2           ; If it is zero, branch
CODE_00B9B6:        30 16         BMI CODE_00B9CE           ; If it is negative, return
CODE_00B9B8:        9F 00 00 7F   STA $7F0000,x             ; Write data
CODE_00B9BC:        E8            INX                       ;\
CODE_00B9BD:        E8            INX                       ; | Move on
CODE_00B9BE:        C8            INY                       ; |
CODE_00B9BF:        C8            INY                       ;/
CODE_00B9C0:        80 F0         BRA CODE_00B9B2           ;

CODE_00B9C2:        C8            INY                       ;\
CODE_00B9C3:        C8            INY                       ; |
CODE_00B9C4:        A5 04         LDA $04                   ; | Move on
CODE_00B9C6:        18            CLC                       ; |
CODE_00B9C7:        69 40 00      ADC #$0040                ; |
CODE_00B9CA:        85 04         STA $04                   ;/
CODE_00B9CC:        80 E2         BRA CODE_00B9B0           ;

CODE_00B9CE:        7A            PLY                       ;
CODE_00B9CF:        FA            PLX                       ;
CODE_00B9D0:        60            RTS                       ;

DATA_00B9D1:        dw $01D6,$01D7,$01D8,$0000
                    dw $01D9,$01DA,$01DB,$01DC
                    dw $0000,$01DD,$01DE,$01DF
                    dw $0240,$0000,$01E0,$01E1
                    dw $01E2,$FFFF,$0111,$0112
                    dw $0113,$0000,$0121,$0122
                    dw $0123,$0124,$0000,$0106
                    dw $0107,$0108,$0109,$0000
                    dw $0116,$0117,$0118,$FFFF
                    dw $01E3,$01E4,$01E5,$0000
                    dw $01E6,$01E7,$01E8,$01E9
                    dw $0000,$01EA,$01EB,$01EC
                    dw $01ED,$0000,$01EE,$01EF
                    dw $01F0,$FFFF,$0115,$0000
                    dw $0125,$0126,$0000,$0105
                    dw $010A,$FFFF,$01F1,$0000
                    dw $01F2,$01F3,$0000,$01F4
                    dw $01F5,$FFFF,$01F6,$0000
                    dw $01F7,$01F8,$0000,$01F9
                    dw $01FA,$FFFF,$0019,$001A
                    dw $001B,$001C,$0000,$0029
                    dw $002A,$002B,$002C,$0000
                    dw $0039,$003A,$003B,$003C
                    dw $FFFF,$021A,$021B,$021C
                    dw $021D,$0000,$021E,$021F
                    dw $0220,$0221,$0000,$0222
                    dw $0223,$0224,$0225,$FFFF
                    dw $010D,$010E,$010F,$0131
                    dw $0000,$011D,$011E,$011F
                    dw $0141,$0000,$012D,$012E
                    dw $012F,$0151,$0000,$000D
                    dw $000E,$000F,$00E5,$0000
                    dw $001D,$001E,$001F,$00F4
                    dw $0000,$002D,$002E,$002F
                    dw $FFFF,$0200,$0201,$0202
                    dw $0203,$0000,$0204,$0205
                    dw $0206,$0207,$0000,$0208
                    dw $0209,$020A,$020B,$0000
                    dw $020C,$020D,$020E,$020F
                    dw $0000,$0210,$0211,$0212
                    dw $0213,$0000,$002D,$0214
                    dw $0215,$FFFF,$0143,$0144
                    dw $0000,$0153,$0154,$FFFF
                    dw $01AC,$01AD,$0000,$0153
                    dw $01AE,$FFFF,$0152,$0000
                    dw $0136,$0137,$0000,$0146
                    dw $0147,$FFFF,$019F,$0000
                    dw $01A0,$01A1,$0000,$01A2
                    dw $01A3,$FFFF,$0139,$013A
                    dw $0000,$0149,$014A,$0000
                    dw $0159,$015A,$FFFF,$0139
                    dw $01A4,$0000,$01A5,$01A6
                    dw $0000,$0159,$01A7,$FFFF
                    dw $0139,$01A8,$0000,$01A9
                    dw $01AA,$0000,$0159,$01AB
                    dw $FFFF,$0139,$01A4,$0000
                    dw $01A5,$01A6,$0000,$0159
                    dw $01A7,$FFFF,$0087,$0088
                    dw $0000,$0097,$0098,$0099
                    dw $FFFF,$01FB,$01FC,$0000
                    dw $01FD,$01FE,$01FF,$FFFF
                    dw $0082,$0083,$FFFF,$0216
                    dw $0217,$FFFF,$0218,$0219
                    dw $FFFF,$00F8,$00F9,$FFFF
                    dw $023E,$023F,$FFFF,$015B
                    dw $015C,$015D,$0000,$015E
                    dw $015F,$0160,$0161,$0000
                    dw $0162,$0163,$0164,$0165
                    dw $0166,$0000,$0167,$0168
                    dw $0169,$016A,$016B,$FFFF
                    dw $016C,$016D,$016E,$0000
                    dw $016F,$0170,$0171,$0172
                    dw $0000,$0173,$0174,$0175
                    dw $0176,$0177,$0000,$0178
                    dw $0179,$017A,$017B,$017C
                    dw $FFFF,$017D,$017E,$017F
                    dw $0000,$0180,$0181,$0182
                    dw $0183,$0000,$0184,$0185
                    dw $0186,$0187,$0188,$0000
                    dw $0189,$018A,$018B,$018C
                    dw $018D,$FFFF,$018E,$018F
                    dw $0190,$0000,$0191,$0192
                    dw $0193,$0194,$0000,$0195
                    dw $0196,$0197,$0198,$0199
                    dw $0000,$019A,$019B,$019C
                    dw $019D,$019E,$FFFF,$004C
                    dw $004D,$004E,$004F,$0000
                    dw $005C,$005D,$005E,$005F
                    dw $0000,$006C,$006D,$006E
                    dw $006F,$FFFF,$01B4,$01B5
                    dw $01B6,$01B7,$0000,$01B8
                    dw $01B9,$01BA,$01BB,$0000
                    dw $01BC,$01BD,$01BE,$01BF
                    dw $FFFF,$01C4,$01C5,$01C6
                    dw $01C7,$0000,$01C8,$01C9
                    dw $01CA,$01CB,$0000,$01CC
                    dw $01CD,$01CE,$01CF,$FFFF
                    dw $01C4,$01C5,$01C6,$01C7
                    dw $0000,$01C8,$01C9,$01CA
                    dw $01D0,$0000,$01CC,$01CD
                    dw $01CE,$01D2,$FFFF,$003D
                    dw $003E,$003F,$FFFF,$01B1
                    dw $01B2,$01B3,$FFFF,$01C1
                    dw $01C2,$01C3,$FFFF,$01C1
                    dw $01C2,$01C3,$FFFF,$0150
                    dw $0000,$013B,$0104,$0000
                    dw $013C,$FFFF,$01D1,$0000
                    dw $01D3,$01D3,$0000,$01D5
                    dw $FFFF,$0037,$0038,$0000
                    dw $0047,$0048,$0049,$0000
                    dw $0057,$0058,$0059,$0000
                    dw $0067,$0068,$0069,$FFFF
                    dw $0226,$0227,$0000,$0228
                    dw $0229,$022A,$0000,$022B
                    dw $022C,$022D,$0000,$0067
                    dw $022F,$0230,$FFFF,$0231
                    dw $0232,$0000,$0233,$0234
                    dw $0235,$0000,$0236,$0237
                    dw $0238,$0000,$0067,$023A
                    dw $023B,$FFFF

CODE_00BD8D:        A5 22         LDA $22                   ;\ If the timer is not zero, branch
CODE_00BD8F:        D0 74         BNE CODE_00BE05           ;/ (if it is not time to "flash")
CODE_00BD91:        A5 23         LDA $23                   ;\
CODE_00BD93:        C9 1C         CMP #$1C                  ; | If we finished flashing branch
CODE_00BD95:        F0 5A         BEQ CODE_00BDF1           ;/
CODE_00BD97:        A9 04         LDA #$04                  ;\ Set timer
CODE_00BD99:        85 22         STA $22                   ;/
CODE_00BD9B:        8B            PHB                       ;
CODE_00BD9C:        4B            PHK                       ;
CODE_00BD9D:        AB            PLB                       ;
CODE_00BD9E:        C2 20         REP #$20                  ;
CODE_00BDA0:        A5 23         LDA $23                   ;\
CODE_00BDA2:        29 FF 00      AND #$00FF                ; | Get which step we are on
CODE_00BDA5:        85 04         STA $04                   ;/
CODE_00BDA7:        C9 0E 00      CMP #$000E                ;\ If we are halfway through it or more, branch
CODE_00BDAA:        B0 1E         BCS CODE_00BDCA           ;/
CODE_00BDAC:        A9 1C 00      LDA #$001C                ;
CODE_00BDAF:        38            SEC                       ;
CODE_00BDB0:        E5 04         SBC $04                   ;
CODE_00BDB2:        AA            TAX                       ;
CODE_00BDB3:        A0 00         LDY #$00                  ; Change the palette
CODE_00BDB5:        B9 08 BE      LDA $BE08,y               ;
CODE_00BDB8:        9F 00 93 7F   STA $7F9300,x             ;
CODE_00BDBC:        A5 04         LDA $04                   ;
CODE_00BDBE:        F0 25         BEQ CODE_00BDE5           ;
CODE_00BDC0:        C6 04         DEC $04                   ;
CODE_00BDC2:        C6 04         DEC $04                   ;
CODE_00BDC4:        E8            INX                       ;
CODE_00BDC5:        E8            INX                       ;
CODE_00BDC6:        C8            INY                       ;
CODE_00BDC7:        C8            INY                       ;
CODE_00BDC8:        80 EB         BRA CODE_00BDB5           ;

CODE_00BDCA:        A5 23         LDA $23                   ;
CODE_00BDCC:        29 FF 00      AND #$00FF                ;
CODE_00BDCF:        38            SEC                       ;
CODE_00BDD0:        E9 0C 00      SBC #$000C                ; Change the palette
CODE_00BDD3:        A8            TAY                       ;
CODE_00BDD4:        A2 00         LDX #$00                  ;
CODE_00BDD6:        B9 08 BE      LDA $BE08,y               ;
CODE_00BDD9:        9F 0E 93 7F   STA $7F930E,x             ;
CODE_00BDDD:        C8            INY                       ;
CODE_00BDDE:        C8            INY                       ;
CODE_00BDDF:        E8            INX                       ;
CODE_00BDE0:        E8            INX                       ;
CODE_00BDE1:        E0 10         CPX #$10                  ;
CODE_00BDE3:        D0 F1         BNE CODE_00BDD6           ;
CODE_00BDE5:        E6 23         INC $23                   ;\ Increase the timer
CODE_00BDE7:        E6 23         INC $23                   ;/
CODE_00BDE9:        EE C0 0A      INC $0AC0                 ; Update CGRAM
CODE_00BDEC:        E2 20         SEP #$20                  ;
CODE_00BDEE:        AB            PLB                       ;
CODE_00BDEF:        80 14         BRA CODE_00BE05           ;

CODE_00BDF1:        C2 20         REP #$20                  ;
CODE_00BDF3:        A5 E3         LDA $E3                   ;\
CODE_00BDF5:        CD 25 02      CMP $0225                 ; | If the amount of time left on the title screen is not equal to $0225,  branch
CODE_00BDF8:        D0 07         BNE CODE_00BE01           ;/
CODE_00BDFA:        A9 F0 00      LDA #$00F0                ;\
CODE_00BDFD:        85 22         STA $22                   ; | Reset timers
CODE_00BDFF:        64 23         STZ $23                   ;/
CODE_00BE01:        E2 20         SEP #$20                  ;
CODE_00BE03:        80 02         BRA CODE_00BE07           ;

CODE_00BE05:        C6 22         DEC $22                   ; Decrease the timer
CODE_00BE07:        60            RTS                       ;

DATA_00BE08:        dw $1EDF,$435F,$5FBF,$7FFF
                    dw $5FBF,$435F,$1EDF,$025F
                    dw $025F,$025F,$025F,$025F
                    dw $025F,$025F,$025F

DATA_00BE26:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; From here on starts duplicate code of $04D800
;; This is for TLL while the code at $04D800 is for
;; SMB1.
;;
					
CODE_00C000:        AD A5 0B      LDA $0BA5                 ;
CODE_00C003:        D0 54         BNE CODE_00C059           ;
CODE_00C005:        AD D5 06      LDA $06D5                 ;
CODE_00C008:        C9 18         CMP #$18                  ;
CODE_00C00A:        F0 04         BEQ CODE_00C010           ;
CODE_00C00C:        C9 78         CMP #$78                  ;
CODE_00C00E:        D0 10         BNE CODE_00C020           ;
CODE_00C010:        A5 09         LDA $09                   ;
CODE_00C012:        29 07         AND #$07                  ;
CODE_00C014:        D0 0A         BNE CODE_00C020           ;
CODE_00C016:        AD 01 16      LDA $1601                 ;
CODE_00C019:        D0 05         BNE CODE_00C020           ;
CODE_00C01B:        A9 04         LDA #$04                  ;
CODE_00C01D:        8D 01 16      STA $1601                 ;
CODE_00C020:        9C 8E 02      STZ $028E                 ;
CODE_00C023:        AD D5 06      LDA $06D5                 ;
CODE_00C026:        4A            LSR A                     ;
CODE_00C027:        4A            LSR A                     ;
CODE_00C028:        4A            LSR A                     ;
CODE_00C029:        EE 8E 02      INC $028E                 ;
CODE_00C02C:        C2 20         REP #$20                  ;
CODE_00C02E:        29 FF 00      AND #$00FF                ;
CODE_00C031:        EB            XBA                       ;
CODE_00C032:        18            CLC                       ;
CODE_00C033:        69 00 80      ADC #$8000                ;
CODE_00C036:        8D 8F 02      STA $028F                 ;
CODE_00C039:        A9 00 60      LDA #$6000                ;
CODE_00C03C:        8D 95 02      STA $0295                 ;
CODE_00C03F:        A9 00 01      LDA #$0100                ;
CODE_00C042:        8D 93 02      STA $0293                 ;
CODE_00C045:        E2 20         SEP #$20                  ;
CODE_00C047:        AD C2 0E      LDA $0EC2                 ;
CODE_00C04A:        F0 08         BEQ CODE_00C054           ;
CODE_00C04C:        AD 90 02      LDA $0290                 ;
CODE_00C04F:        09 40         ORA #$40                  ;
CODE_00C051:        8D 90 02      STA $0290                 ;
CODE_00C054:        A9 0A         LDA #$0A                  ;
CODE_00C056:        8D 91 02      STA $0291                 ;
CODE_00C059:        6B            RTL                       ;

CODE_00C05A:        9C 4A 0F      STZ $0F4A                 ;
CODE_00C05D:        A9 35         LDA #$35                  ;
CODE_00C05F:        6B            RTL                       ;

CODE_00C060:        C2 20         REP #$20                  ;For SMB:TLL
CODE_00C062:        A2 1E         LDX #$1E                  ;Set loop count
CODE_00C064:        AD 53 07      LDA $0753                 ;\
CODE_00C067:        F0 06         BEQ CODE_00C06F           ;/Branch if Mario
CODE_00C069:        BF A3 C0 00   LDA $00C0A3,x             ;Get Luigi palette data
CODE_00C06D:        80 04         BRA CODE_00C073           ;

CODE_00C06F:        BF 83 C0 00   LDA $00C083,x             ;Get Mario palette data
CODE_00C073:        9D 60 11      STA $1160,x               ;Write palette data to RAM
CODE_00C076:        CA            DEX                       ;
CODE_00C077:        CA            DEX                       ;
CODE_00C078:        10 EA         BPL CODE_00C064           ;
CODE_00C07A:        E2 20         SEP #$20                  ;
CODE_00C07C:        EE 00 12      INC $1200                 ;
CODE_00C07F:        20 C3 C0      JSR CODE_00C0C3           ;Write princess peach thank you message
CODE_00C082:        6B            RTL                       ;

DATA_00C083:        dw $734E,$7FFF,$14A5,$5D68              ;Mario portrait Palette of princess saved sequence
                    dw $762E,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$1C9F,$0C19,$0C19
					
DATA_00C0A3:        dw $734E,$7FFF,$14A5,$5588              ;Luigi portrait Palette of princess saved sequence
                    dw $724D,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$3303,$1A40,$1C9F

CODE_00C0C3:        8B            PHB                       ;
CODE_00C0C4:        4B            PHK                       ;
CODE_00C0C5:        AB            PLB                       ;
CODE_00C0C6:        DA            PHX                       ;
CODE_00C0C7:        A9 FF         LDA #$FF                  ;
CODE_00C0C9:        8D EE 0E      STA $0EEE                 ;
CODE_00C0CC:        9C EF 0E      STZ $0EEF                 ;
CODE_00C0CF:        9C A3 0B      STZ $0BA3                 ;
CODE_00C0D2:        A9 15         LDA #$15                  ;\
CODE_00C0D4:        8D 0B 12      STA $120B                 ;/Main Screen designation
CODE_00C0D7:        A9 02         LDA #$02                  ;\
CODE_00C0D9:        8D 0C 12      STA $120C                 ;/Sub Screen designation
CODE_00C0DC:        C2 10         REP #$10                  ;16 bit xy
CODE_00C0DE:        AD 5F 07      LDA $075F                 ;\
CODE_00C0E1:        48            PHA                       ;/Push world number onto stack
CODE_00C0E2:        AF 0F 00 70   LDA $70000F               ;\
CODE_00C0E6:        D0 0A         BNE CODE_00C0F2           ;/ Branch if loaded game isn't SMB1
CODE_00C0E8:        AD FC 07      LDA $07FC                 ;\ When SMB1
CODE_00C0EB:        F0 05         BEQ CODE_00C0F2           ;/ If not more difficult quest flag, branch
CODE_00C0ED:        A9 0C         LDA #$0C                  ;\
CODE_00C0EF:        8D 5F 07      STA $075F                 ;/ Set world number to... 0C?
CODE_00C0F2:        A9 00         LDA #$00                  ;\
CODE_00C0F4:        EB            XBA                       ;/Clear high byte
CODE_00C0F5:        AD 53 07      LDA $0753                 ;\
CODE_00C0F8:        0A            ASL A                     ; | Player << 2
CODE_00C0F9:        0A            ASL A                     ; | 
CODE_00C0FA:        85 00         STA $00                   ;/ into $00
CODE_00C0FC:        AD 5F 07      LDA $075F                 ;\ World number
CODE_00C0FF:        29 08         AND #$08                  ; | Bit is set when in world D
CODE_00C101:        4A            LSR A                     ; | >> 2
CODE_00C102:        4A            LSR A                     ; | 
CODE_00C103:        05 00         ORA $00                   ; | OR with the player thing
CODE_00C105:        A8            TAY                       ;/ to index
CODE_00C106:        68            PLA                       ;\
CODE_00C107:        8D 5F 07      STA $075F                 ;/restore world number
CODE_00C10A:        BE 26 C1      LDX $C126,y               ;\
CODE_00C10D:        9B            TXY                       ;/Get message index
CODE_00C10E:        AE 00 17      LDX $1700                 ;
CODE_00C111:        B9 2E C1      LDA $C12E,y               ;
CODE_00C114:        9D 02 17      STA $1702,x               ;
CODE_00C117:        1A            INC A                     ;\ Check if the written byte is FF
CODE_00C118:        F0 04         BEQ CODE_00C11E           ;/ if so, return
CODE_00C11A:        E8            INX                       ;
CODE_00C11B:        C8            INY                       ;
CODE_00C11C:        80 F3         BRA CODE_00C111           ;

CODE_00C11E:        8E 00 17      STX $1700                 ;
CODE_00C121:        E2 10         SEP #$10                  ;
CODE_00C123:        FA            PLX                       ;
CODE_00C124:        AB            PLB                       ;
CODE_00C125:        60            RTS                       ;

DATA_00C126:        dw $0000,$00A4,$0156,$01FA              ;Indices to the messages of peach to the player

DATA_00C12E:        db $59,$05,$00,$11,$1D,$20,$11,$20      ; "Thank you Mario! The kingdom is saved!
                    db $0A,$20,$17,$20,$14,$20,$28,$20      ;  Now try a more difficult quest..." text.
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$0B,$16,$20,$0A,$20,$1B,$20      ; Encoded in stripe image.
                    db $12,$20,$18,$20,$26,$20,$59,$85
                    db $00,$15,$1D,$20,$11,$20,$0E,$20
                    db $28,$20,$14,$20,$12,$20,$17,$20
                    db $10,$20,$0D,$20,$18,$20,$16,$20
                    db $59,$C5,$00,$11,$12,$20,$1C,$20
                    db $28,$20,$1C,$20,$0A,$20,$1F,$20
                    db $0E,$20,$0D,$20,$26,$20,$5A,$05
                    db $00,$0D,$17,$20,$18,$20,$20,$20
                    db $28,$20,$1D,$20,$1B,$20,$22,$20
                    db $5A,$45,$00,$0B,$0A,$20,$28,$20
                    db $16,$20,$18,$20,$1B,$20,$0E,$20
                    db $5A,$85,$00,$11,$0D,$20,$12,$20
                    db $0F,$20,$0F,$20,$12,$20,$0C,$20
                    db $1E,$20,$15,$20,$1D,$20,$5A,$C5
                    db $00,$0F,$1A,$20,$1E,$20,$0E,$20
                    db $1C,$20,$1D,$20,$29,$20,$29,$20
                    db $29,$20,$FF,$FF

DATA_00C1D2:        db $59,$05,$00,$11,$1D,$20,$11,$20      ; "Thank you Mario for restoring peace to our
                    db $0A,$20,$17,$20,$14,$20,$28,$20      ;  kingdom. Hurrah to our hero, Mario!" text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$11,$16,$20,$0A,$20,$1B,$20      ; Encoded in stripe image.
                    db $12,$20,$18,$20,$28,$20,$0F,$20
                    db $18,$20,$1B,$20,$59,$85,$00,$11
                    db $1B,$20,$0E,$20,$1C,$20,$1D,$20
                    db $18,$20,$1B,$20,$12,$20,$17,$20
                    db $10,$20,$59,$C5,$00,$0F,$19,$20
                    db $0E,$20,$0A,$20,$0C,$20,$0E,$20
                    db $28,$20,$1D,$20,$18,$20,$5A,$05
                    db $00,$05,$18,$20,$1E,$20,$1B,$20
                    db $5A,$45,$00,$0F,$14,$20,$12,$20
                    db $17,$20,$10,$20,$0D,$20,$18,$20
                    db $16,$20,$29,$20,$5A,$85,$00,$11
                    db $11,$20,$1E,$20,$1B,$20,$1B,$20
                    db $0A,$20,$11,$20,$28,$20,$1D,$20
                    db $18,$20,$5A,$C5,$00,$11,$18,$20
                    db $1E,$20,$1B,$20,$28,$20,$11,$20
                    db $0E,$20,$1B,$20,$18,$20,$2B,$20
                    db $5B,$05,$00,$0B,$16,$20,$0A,$20
                    db $1B,$20,$12,$20,$18,$20,$26,$20
                    db $FF,$FF

DATA_00C284:        db $59,$05,$00,$11,$1D,$20,$11,$20     ; "Thank you Luigi! The kingdom is saved!
                    db $0A,$20,$17,$20,$14,$20,$28,$20     ;  Now try a more difficult quest..." text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$0B,$15,$20,$1E,$20,$12,$20     ; Encoded in stripe image.
                    db $10,$20,$12,$20,$26,$20,$59,$85
                    db $00,$15,$1D,$20,$11,$20,$0E,$20
                    db $28,$20,$14,$20,$12,$20,$17,$20
                    db $10,$20,$0D,$20,$18,$20,$16,$20
                    db $59,$C5,$00,$11,$12,$20,$1C,$20
                    db $28,$20,$1C,$20,$0A,$20,$1F,$20
                    db $0E,$20,$0D,$20,$26,$20,$5A,$05
                    db $00,$0D,$17,$20,$18,$20,$20,$20
                    db $28,$20,$1D,$20,$1B,$20,$22,$20
                    db $5A,$45,$00,$0B,$0A,$20,$28,$20
                    db $16,$20,$18,$20,$1B,$20,$0E,$20
                    db $5A,$85,$00,$11,$0D,$20,$12,$20
                    db $0F,$20,$0F,$20,$12,$20,$0C,$20
                    db $1E,$20,$15,$20,$1D,$20,$5A,$C5
                    db $00,$0F,$1A,$20,$1E,$20,$0E,$20
                    db $1C,$20,$1D,$20,$29,$20,$29,$20
                    db $29,$20,$FF,$FF

DATA_00C328:        db $59,$05,$00,$11,$1D,$20,$11,$20     ; "Thank you Luigi for restoring peace to our
                    db $0A,$20,$17,$20,$14,$20,$28,$20     ;  kingdom. Hurrah to our hero, Luigi!" text
                    db $22,$20,$18,$20,$1E,$20,$59,$45
                    db $00,$11,$15,$20,$1E,$20,$12,$20     ; Encoded in stripe image.
                    db $10,$20,$12,$20,$28,$20,$0F,$20
                    db $18,$20,$1B,$20,$59,$85,$00,$11
                    db $1B,$20,$0E,$20,$1C,$20,$1D,$20
                    db $18,$20,$1B,$20,$12,$20,$17,$20
                    db $10,$20,$59,$C5,$00,$0F,$19,$20
                    db $0E,$20,$0A,$20,$0C,$20,$0E,$20
                    db $28,$20,$1D,$20,$18,$20,$5A,$05
                    db $00,$05,$18,$20,$1E,$20,$1B,$20
                    db $5A,$45,$00,$0F,$14,$20,$12,$20
                    db $17,$20,$10,$20,$0D,$20,$18,$20
                    db $16,$20,$29,$20,$5A,$85,$00,$11
                    db $11,$20,$1E,$20,$1B,$20,$1B,$20
                    db $0A,$20,$11,$20,$28,$20,$1D,$20
                    db $18,$20,$5A,$C5,$00,$11,$18,$20
                    db $1E,$20,$1B,$20,$28,$20,$11,$20
                    db $0E,$20,$1B,$20,$18,$20,$2B,$20
                    db $5B,$05,$00,$0B,$15,$20,$1E,$20
                    db $12,$20,$10,$20,$12,$20,$26,$20
                    db $FF,$FF

CODE_00C3DA:        DA            PHX                       ;
CODE_00C3DB:        AD 85 0F      LDA $0F85                 ;
CODE_00C3DE:        D0 3B         BNE CODE_00C41B           ;
CODE_00C3E0:        AF 0F 00 70   LDA $70000F               ;
CODE_00C3E4:        F0 03         BEQ CODE_00C3E9           ;
CODE_00C3E6:        AD 53 07      LDA $0753                 ;
CODE_00C3E9:        0A            ASL A                     ;
CODE_00C3EA:        0A            ASL A                     ;
CODE_00C3EB:        0A            ASL A                     ;
CODE_00C3EC:        0D 84 0F      ORA $0F84                 ;
CODE_00C3EF:        AA            TAX                       ;
CODE_00C3F0:        EE 84 0F      INC $0F84                 ;
CODE_00C3F3:        AD 84 0F      LDA $0F84                 ;
CODE_00C3F6:        C9 03         CMP #$03                  ;
CODE_00C3F8:        D0 08         BNE CODE_00C402           ;
CODE_00C3FA:        A9 FF         LDA #$FF                  ;
CODE_00C3FC:        8D A1 00      STA $00A1                 ;
CODE_00C3FF:        9C 3D 04      STZ $043D                 ;
CODE_00C402:        BF 3F C4 00   LDA $00C43F,x             ;
CODE_00C406:        D0 09         BNE CODE_00C411           ;
CODE_00C408:        EE 72 07      INC $0772                 ;
CODE_00C40B:        9C 05 07      STZ $0705                 ;
CODE_00C40E:        9C 5D 00      STZ $005D                 ;
CODE_00C411:        8D 85 0F      STA $0F85                 ;
CODE_00C414:        BF 4F C4 00   LDA $00C44F,x             ;
CODE_00C418:        8D 86 0F      STA $0F86                 ;
CODE_00C41B:        CE 85 0F      DEC $0F85                 ;
CODE_00C41E:        AD 86 0F      LDA $0F86                 ;
CODE_00C421:        29 08         AND #$08                  ;
CODE_00C423:        0A            ASL A                     ;
CODE_00C424:        0A            ASL A                     ;
CODE_00C425:        0A            ASL A                     ;
CODE_00C426:        0A            ASL A                     ;
CODE_00C427:        85 0D         STA $0D                   ;
CODE_00C429:        AC 86 0F      LDY $0F86                 ;
CODE_00C42C:        AD 23 07      LDA $0723                 ;
CODE_00C42F:        F0 0C         BEQ CODE_00C43D           ;
CODE_00C431:        AD 19 02      LDA $0219                 ;
CODE_00C434:        C9 A2         CMP #$A2                  ;
CODE_00C436:        90 05         BCC CODE_00C43D           ;
CODE_00C438:        A9 A2         LDA #$A2                  ;
CODE_00C43A:        8D 19 02      STA $0219                 ;
CODE_00C43D:        FA            PLX                       ;
CODE_00C43E:        6B            RTL                       ;

DATA_00C43F:        dw $A018,$0108,$1028,$0003
                    dw $A010,$0108,$1E28,$0002
                    dw $0001,$C141,$01C9,$0001
                    dw $0001,$C141,$01C9,$0001

CODE_00C45F:        CE 88 0F      DEC $0F88                 ;
CODE_00C462:        AD 88 0F      LDA $0F88                 ;
CODE_00C465:        10 16         BPL CODE_00C47D           ;
CODE_00C467:        EE 87 0F      INC $0F87                 ;
CODE_00C46A:        AE 87 0F      LDX $0F87                 ;
CODE_00C46D:        E0 05         CPX #$05                  ;
CODE_00C46F:        D0 05         BNE CODE_00C476           ;
CODE_00C471:        A9 A0         LDA #$A0                  ;
CODE_00C473:        8D 19 02      STA $0219                 ;
CODE_00C476:        BF B4 C4 00   LDA $00C4B4,x             ;
CODE_00C47A:        8D 88 0F      STA $0F88                 ;
CODE_00C47D:        AD 87 0F      LDA $0F87                 ;
CODE_00C480:        0A            ASL A                     ;
CODE_00C481:        AA            TAX                       ;
CODE_00C482:        BF 91 C4 00   LDA $00C491,x             ;
CODE_00C486:        85 00         STA $00                   ;
CODE_00C488:        BF 92 C4 00   LDA $00C492,x             ;
CODE_00C48C:        85 01         STA $01                   ;
CODE_00C48E:        6C 00 00      JMP ($0000)               ;

PNTR_00C491:        dw CODE_00C49F
                    dw CODE_00C49F
                    dw CODE_00C49F
                    dw CODE_00C4B0
                    dw CODE_00C4A0
                    dw CODE_00C49F
                    dw CODE_00C49F

CODE_00C49F:        6B            RTL                       ;

CODE_00C4A0:        A9 20         LDA #$20                  ;
CODE_00C4A2:        85 00         STA $00                   ;
CODE_00C4A4:        A9 04         LDA #$04                  ;
CODE_00C4A6:        85 02         STA $02                   ;
CODE_00C4A8:        A9 00         LDA #$00                  ;
CODE_00C4AA:        A2 01         LDX #$01                  ;
CODE_00C4AC:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00C4B0:        CE 1A 02      DEC $021A                 ;
CODE_00C4B3:        6B            RTL                       ;

DATA_00C4B4:        db $00,$30,$37,$1A,$10,$60,$FF

CODE_00C4BB:        DA            PHX                       ;
CODE_00C4BC:        AD AE 03      LDA $03AE                 ;
CODE_00C4BF:        18            CLC                       ;
CODE_00C4C0:        69 07         ADC #$07                  ;
CODE_00C4C2:        8D B0 08      STA $08B0                 ;
CODE_00C4C5:        8D B4 08      STA $08B4                 ;
CODE_00C4C8:        AD B9 03      LDA $03B9                 ;
CODE_00C4CB:        8D B1 08      STA $08B1                 ;
CODE_00C4CE:        18            CLC                       ;
CODE_00C4CF:        69 10         ADC #$10                  ;
CODE_00C4D1:        8D B5 08      STA $08B5                 ;
CODE_00C4D4:        AE 87 0F      LDX $0F87                 ;
CODE_00C4D7:        E0 03         CPX #$03                  ;
CODE_00C4D9:        D0 0E         BNE CODE_00C4E9           ;
CODE_00C4DB:        A5 09         LDA $09                   ;
CODE_00C4DD:        29 04         AND #$04                  ;
CODE_00C4DF:        D0 08         BNE CODE_00C4E9           ;
CODE_00C4E1:        BF 4E C5 00   LDA $00C54E,x             ;
CODE_00C4E5:        1A            INC A                     ;
CODE_00C4E6:        1A            INC A                     ;
CODE_00C4E7:        80 04         BRA CODE_00C4ED           ;

CODE_00C4E9:        BF 4E C5 00   LDA $00C54E,x             ;
CODE_00C4ED:        8D B2 08      STA $08B2                 ;
CODE_00C4F0:        18            CLC                       ;
CODE_00C4F1:        69 20         ADC #$20                  ;
CODE_00C4F3:        8D B6 08      STA $08B6                 ;
CODE_00C4F6:        A9 25         LDA #$25                  ;
CODE_00C4F8:        8D B3 08      STA $08B3                 ;
CODE_00C4FB:        8D B7 08      STA $08B7                 ;
CODE_00C4FE:        AD 1A 02      LDA $021A                 ;
CODE_00C501:        18            CLC                       ;
CODE_00C502:        69 07         ADC #$07                  ;
CODE_00C504:        38            SEC                       ;
CODE_00C505:        ED 42 00      SBC $0042                 ;
CODE_00C508:        AD 79 00      LDA $0079                 ;
CODE_00C50B:        ED 43 00      SBC $0043                 ;
CODE_00C50E:        09 02         ORA #$02                  ;
CODE_00C510:        8D B0 0C      STA $0CB0                 ;
CODE_00C513:        8D B4 0C      STA $0CB4                 ;
CODE_00C516:        AE 58 0B      LDX $0B58                 ;
CODE_00C519:        BD 02 08      LDA $0802,x               ;
CODE_00C51C:        C9 F6         CMP #$F6                  ;
CODE_00C51E:        D0 08         BNE CODE_00C528           ;
CODE_00C520:        A9 F0         LDA #$F0                  ;
CODE_00C522:        9D 01 08      STA $0801,x               ;
CODE_00C525:        9D 05 08      STA $0805,x               ;
CODE_00C528:        A5 25         LDA $25                   ;
CODE_00C52A:        F0 20         BEQ CODE_00C54C           ;
CODE_00C52C:        A9 1C         LDA #$1C                  ;
CODE_00C52E:        8D E3 09      STA $09E3                 ;
CODE_00C531:        8D E7 09      STA $09E7                 ;
CODE_00C534:        8D EB 09      STA $09EB                 ;
CODE_00C537:        8D EF 09      STA $09EF                 ;
CODE_00C53A:        A9 80         LDA #$80                  ;
CODE_00C53C:        8D E2 09      STA $09E2                 ;
CODE_00C53F:        1A            INC A                     ;
CODE_00C540:        8D E6 09      STA $09E6                 ;
CODE_00C543:        A9 90         LDA #$90                  ;
CODE_00C545:        8D EA 09      STA $09EA                 ;
CODE_00C548:        1A            INC A                     ;
CODE_00C549:        8D EE 09      STA $09EE                 ;
CODE_00C54C:        FA            PLX                       ;
CODE_00C54D:        6B            RTL                       ;

DATA_00C54E:        db $88,$88,$80,$82,$86,$86,$86

CODE_00C555:        AD 83 0F      LDA $0F83                 ;
CODE_00C558:        C9 0A         CMP #$0A                  ;
CODE_00C55A:        B0 2A         BCS CODE_00C586           ;
CODE_00C55C:        8B            PHB                       ;
CODE_00C55D:        4B            PHK                       ;
CODE_00C55E:        AB            PLB                       ;
CODE_00C55F:        DA            PHX                       ;
CODE_00C560:        0A            ASL A                     ;
CODE_00C561:        AA            TAX                       ;
CODE_00C562:        EE 83 0F      INC $0F83                 ;
CODE_00C565:        BD 87 C5      LDA $C587,x               ;
CODE_00C568:        8D 87 02      STA $0287                 ;
CODE_00C56B:        C2 20         REP #$20                  ;
CODE_00C56D:        A9 00 08      LDA #$0800                ;
CODE_00C570:        8D 88 02      STA $0288                 ;
CODE_00C573:        BD AF C5      LDA $C5AF,x               ;
CODE_00C576:        8D 8A 02      STA $028A                 ;
CODE_00C579:        BD 9B C5      LDA $C59B,x               ;
CODE_00C57C:        8D 85 02      STA $0285                 ;
CODE_00C57F:        E2 20         SEP #$20                  ;
CODE_00C581:        EE 76 0B      INC $0B76                 ;
CODE_00C584:        FA            PLX                       ;
CODE_00C585:        AB            PLB                       ;
CODE_00C586:        6B            RTL                       ;

DATA_00C587:        db $08,$00,$2F,$00,$2F,$00,$2F,$00
                    db $2F,$00,$2F,$00,$2F,$00,$1E,$00
                    db $1E,$00,$1A,$00

DATA_00C59B:        db $00,$A0,$00,$D1,$00,$D8,$00,$E0
                    db $00,$E8,$00,$F0,$00,$F8,$00,$D0
                    db $00,$D8,$00,$E8

DATA_00C5AF:        db $00,$30,$80,$60,$00,$64,$00,$68
                    db $00,$6C,$00,$70,$00,$74,$00,$78
                    db $00,$7C,$00,$04

CODE_00C5C3:        8B            PHB                       ;
CODE_00C5C4:        4B            PHK                       ;
CODE_00C5C5:        AB            PLB                       ;
CODE_00C5C6:        DA            PHX                       ;
CODE_00C5C7:        AD 83 0F      LDA $0F83                 ;
CODE_00C5CA:        0A            ASL A                     ;
CODE_00C5CB:        AA            TAX                       ;
CODE_00C5CC:        EE 83 0F      INC $0F83                 ;
CODE_00C5CF:        BD F1 C5      LDA $C5F1,x               ;
CODE_00C5D2:        8D 87 02      STA $0287                 ;
CODE_00C5D5:        C2 20         REP #$20                  ;
CODE_00C5D7:        A9 00 08      LDA #$0800                ;
CODE_00C5DA:        8D 88 02      STA $0288                 ;
CODE_00C5DD:        BD 19 C6      LDA $C619,x               ;
CODE_00C5E0:        8D 8A 02      STA $028A                 ;
CODE_00C5E3:        BD 05 C6      LDA $C605,x               ;
CODE_00C5E6:        8D 85 02      STA $0285                 ;
CODE_00C5E9:        E2 20         SEP #$20                  ;
CODE_00C5EB:        EE 76 0B      INC $0B76                 ;
CODE_00C5EE:        FA            PLX                       ;
CODE_00C5EF:        AB            PLB                       ;
CODE_00C5F0:        6B            RTL                       ;

DATA_00C5F1:        db $08,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00

DATA_00C605:        dw $A000,$8100,$8800,$9000
                    dw $9800,$A000,$A800,$B000
                    dw $B800,$B800

DATA_00C619:        dw $3000,$6080,$6400,$6800
                    dw $6C00,$7000,$7400,$7800
                    dw $7C00,$7C00

CODE_00C62D:        A9 2E         LDA #$2E                  ;
CODE_00C62F:        85 25         STA $25                   ;
CODE_00C631:        A9 80         LDA #$80                  ;
CODE_00C633:        85 32         STA $32                   ;
CODE_00C635:        A9 01         LDA #$01                  ;
CODE_00C637:        85 19         STA $19                   ;
CODE_00C639:        A5 78         LDA $78                   ;
CODE_00C63B:        85 82         STA $82                   ;
CODE_00C63D:        AD 19 02      LDA $0219                 ;
CODE_00C640:        8D 23 02      STA $0223                 ;
CODE_00C643:        A9 01         LDA #$01                  ;
CODE_00C645:        8D C5 00      STA $00C5                 ;
CODE_00C648:        A9 18         LDA #$18                  ;
CODE_00C64A:        8D 41 02      STA $0241                 ;
CODE_00C64D:        9C 67 00      STZ $0067                 ;
CODE_00C650:        9C 0C 02      STZ $020C                 ;
CODE_00C653:        6B            RTL                       ;

CODE_00C654:        AF 0F 00 70   LDA $70000F               ;
CODE_00C658:        F0 0A         BEQ CODE_00C664           ;
CODE_00C65A:        AD 5F 07      LDA $075F                 ;
CODE_00C65D:        C9 08         CMP #$08                  ;
CODE_00C65F:        90 1E         BCC CODE_00C67F           ;
CODE_00C661:        4C 7F C6      JMP CODE_00C67F           ;

CODE_00C664:        AD 5F 07      LDA $075F                 ;
CODE_00C667:        48            PHA                       ;
CODE_00C668:        AD 24 0E      LDA $0E24                 ;
CODE_00C66B:        48            PHA                       ;
CODE_00C66C:        AD FC 07      LDA $07FC                 ;
CODE_00C66F:        D0 06         BNE CODE_00C677           ;
CODE_00C671:        9C 24 0E      STZ $0E24                 ;
CODE_00C674:        9C 5F 07      STZ $075F                 ;
CODE_00C677:        68            PLA                       ;
CODE_00C678:        8D 24 0E      STA $0E24                 ;
CODE_00C67B:        68            PLA                       ;
CODE_00C67C:        8D 5F 07      STA $075F                 ;
CODE_00C67F:        A9 01         LDA #$01                  ;
CODE_00C681:        8D 82 0F      STA $0F82                 ;
CODE_00C684:        9C 83 0F      STZ $0F83                 ;
CODE_00C687:        9C 17 07      STZ $0717                 ;
CODE_00C68A:        6B            RTL                       ;

CODE_00C68B:        AF 0F 00 70   LDA $70000F               ;
CODE_00C68F:        F0 03         BEQ CODE_00C694           ;
CODE_00C691:        4C BF C7      JMP CODE_00C7BF           ;

CODE_00C694:        8B            PHB                       ;
CODE_00C695:        4B            PHK                       ;
CODE_00C696:        AB            PLB                       ;
CODE_00C697:        22 F6 81 0E   JSL CODE_0E81F6           ;
CODE_00C69B:        AE 80 0F      LDX $0F80                 ;
CODE_00C69E:        AD 81 0F      LDA $0F81                 ;
CODE_00C6A1:        DD 5D CA      CMP $CA5D,x               ;
CODE_00C6A4:        90 17         BCC CODE_00C6BD           ;
CODE_00C6A6:        9C 81 0F      STZ $0F81                 ;
CODE_00C6A9:        EE 80 0F      INC $0F80                 ;
CODE_00C6AC:        AD 80 0F      LDA $0F80                 ;
CODE_00C6AF:        C9 08         CMP #$08                  ;
CODE_00C6B1:        90 0A         BCC CODE_00C6BD           ;
CODE_00C6B3:        D0 03         BNE CODE_00C6B8           ;
CODE_00C6B5:        9C 89 0F      STZ $0F89                 ;
CODE_00C6B8:        A9 08         LDA #$08                  ;
CODE_00C6BA:        8D 80 0F      STA $0F80                 ;
CODE_00C6BD:        EE 81 0F      INC $0F81                 ;
CODE_00C6C0:        A9 00         LDA #$00                  ;
CODE_00C6C2:        EB            XBA                       ;
CODE_00C6C3:        AD 80 0F      LDA $0F80                 ;
CODE_00C6C6:        0A            ASL A                     ;
CODE_00C6C7:        C2 10         REP #$10                  ;
CODE_00C6C9:        A8            TAY                       ;
CODE_00C6CA:        BE B4 CA      LDX $CAB4,y               ;
CODE_00C6CD:        86 ED         STX $ED                   ;
CODE_00C6CF:        BE 80 CA      LDX $CA80,y               ;
CODE_00C6D2:        A0 04 00      LDY #$0004                ;
CODE_00C6D5:        BD FA CA      LDA $CAFA,x               ;
CODE_00C6D8:        C9 FF         CMP #$FF                  ;
CODE_00C6DA:        F0 39         BEQ CODE_00C715           ;
CODE_00C6DC:        18            CLC                       ;
CODE_00C6DD:        69 80         ADC #$80                  ;
CODE_00C6DF:        99 01 08      STA $0801,y               ;
CODE_00C6E2:        E8            INX                       ;
CODE_00C6E3:        BD FA CA      LDA $CAFA,x               ;
CODE_00C6E6:        18            CLC                       ;
CODE_00C6E7:        69 C0         ADC #$C0                  ;
CODE_00C6E9:        99 00 08      STA $0800,y               ;
CODE_00C6EC:        E8            INX                       ;
CODE_00C6ED:        BD FA CA      LDA $CAFA,x               ;
CODE_00C6F0:        99 02 08      STA $0802,y               ;
CODE_00C6F3:        E8            INX                       ;
CODE_00C6F4:        64 00         STZ $00                   ;
CODE_00C6F6:        C9 80         CMP #$80                  ;
CODE_00C6F8:        B0 05         BCS CODE_00C6FF           ;
CODE_00C6FA:        AD 53 07      LDA $0753                 ;
CODE_00C6FD:        85 00         STA $00                   ;
CODE_00C6FF:        BD FA CA      LDA $CAFA,x               ;
CODE_00C702:        05 00         ORA $00                   ;
CODE_00C704:        09 20         ORA #$20                  ;
CODE_00C706:        99 03 08      STA $0803,y               ;
CODE_00C709:        E8            INX                       ;
CODE_00C70A:        A9 02         LDA #$02                  ;
CODE_00C70C:        99 00 0C      STA $0C00,y               ;
CODE_00C70F:        C8            INY                       ;
CODE_00C710:        C8            INY                       ;
CODE_00C711:        C8            INY                       ;
CODE_00C712:        C8            INY                       ;
CODE_00C713:        80 C0         BRA CODE_00C6D5           ;

CODE_00C715:        A6 ED         LDX $ED                   ;
CODE_00C717:        BD FA CA      LDA $CAFA,x               ;
CODE_00C71A:        C9 FF         CMP #$FF                  ;
CODE_00C71C:        F0 46         BEQ CODE_00C764           ;
CODE_00C71E:        18            CLC                       ;
CODE_00C71F:        69 80         ADC #$80                  ;
CODE_00C721:        99 01 08      STA $0801,y               ;
CODE_00C724:        E8            INX                       ;
CODE_00C725:        BD FA CA      LDA $CAFA,x               ;
CODE_00C728:        18            CLC                       ;
CODE_00C729:        69 C0         ADC #$C0                  ;
CODE_00C72B:        18            CLC                       ;
CODE_00C72C:        6D 53 07      ADC $0753                 ;
CODE_00C72F:        6D 53 07      ADC $0753                 ;
CODE_00C732:        6D 53 07      ADC $0753                 ;
CODE_00C735:        6D 53 07      ADC $0753                 ;
CODE_00C738:        99 00 08      STA $0800,y               ;
CODE_00C73B:        E8            INX                       ;
CODE_00C73C:        BD FA CA      LDA $CAFA,x               ;
CODE_00C73F:        99 02 08      STA $0802,y               ;
CODE_00C742:        E8            INX                       ;
CODE_00C743:        64 00         STZ $00                   ;
CODE_00C745:        C9 80         CMP #$80                  ;
CODE_00C747:        B0 05         BCS CODE_00C74E           ;
CODE_00C749:        AD 53 07      LDA $0753                 ;
CODE_00C74C:        85 00         STA $00                   ;
CODE_00C74E:        BD FA CA      LDA $CAFA,x               ;
CODE_00C751:        05 00         ORA $00                   ;
CODE_00C753:        09 20         ORA #$20                  ;
CODE_00C755:        99 03 08      STA $0803,y               ;
CODE_00C758:        E8            INX                       ;
CODE_00C759:        A9 02         LDA #$02                  ;
CODE_00C75B:        99 00 0C      STA $0C00,y               ;
CODE_00C75E:        C8            INY                       ;
CODE_00C75F:        C8            INY                       ;
CODE_00C760:        C8            INY                       ;
CODE_00C761:        C8            INY                       ;
CODE_00C762:        80 B3         BRA CODE_00C717           ;

CODE_00C764:        AD 80 0F      LDA $0F80                 ;
CODE_00C767:        C9 08         CMP #$08                  ;
CODE_00C769:        D0 4D         BNE CODE_00C7B8           ;
CODE_00C76B:        E2 10         SEP #$10                  ;
CODE_00C76D:        20 43 E5      JSR CODE_00E543           ;
CODE_00C770:        AD 89 0F      LDA $0F89                 ;
CODE_00C773:        4A            LSR A                     ;
CODE_00C774:        4A            LSR A                     ;
CODE_00C775:        4A            LSR A                     ;
CODE_00C776:        29 03         AND #$03                  ;
CODE_00C778:        AA            TAX                       ;
CODE_00C779:        BF 59 CA 00   LDA $00CA59,x             ;
CODE_00C77D:        18            CLC                       ;
CODE_00C77E:        69 B0         ADC #$B0                  ;
CODE_00C780:        8D 00 08      STA $0800                 ;
CODE_00C783:        AD 89 0F      LDA $0F89                 ;
CODE_00C786:        4A            LSR A                     ;
CODE_00C787:        4A            LSR A                     ;
CODE_00C788:        85 00         STA $00                   ;
CODE_00C78A:        A9 60         LDA #$60                  ;
CODE_00C78C:        38            SEC                       ;
CODE_00C78D:        E5 00         SBC $00                   ;
CODE_00C78F:        8D 01 08      STA $0801                 ;
CODE_00C792:        AD 89 0F      LDA $0F89                 ;
CODE_00C795:        4A            LSR A                     ;
CODE_00C796:        4A            LSR A                     ;
CODE_00C797:        4A            LSR A                     ;
CODE_00C798:        4A            LSR A                     ;
CODE_00C799:        4A            LSR A                     ;
CODE_00C79A:        29 03         AND #$03                  ;
CODE_00C79C:        AA            TAX                       ;
CODE_00C79D:        BF 55 CA 00   LDA $00CA55,x             ;
CODE_00C7A1:        8D 02 08      STA $0802                 ;
CODE_00C7A4:        A9 26         LDA #$26                  ;
CODE_00C7A6:        8D 03 08      STA $0803                 ;
CODE_00C7A9:        A9 00         LDA #$00                  ;
CODE_00C7AB:        8D 00 0C      STA $0C00                 ;
CODE_00C7AE:        EE 89 0F      INC $0F89                 ;
CODE_00C7B1:        E0 03         CPX #$03                  ;
CODE_00C7B3:        D0 03         BNE CODE_00C7B8           ;
CODE_00C7B5:        9C 89 0F      STZ $0F89                 ;
CODE_00C7B8:        E2 10         SEP #$10                  ;
CODE_00C7BA:        20 21 CA      JSR CODE_00CA21           ;
CODE_00C7BD:        AB            PLB                       ;
CODE_00C7BE:        6B            RTL                       ;

CODE_00C7BF:        AD 5F 07      LDA $075F                 ;
CODE_00C7C2:        C9 08         CMP #$08                  ;
CODE_00C7C4:        90 03         BCC CODE_00C7C9           ;
CODE_00C7C6:        4C F6 C8      JMP CODE_00C8F6           ;

CODE_00C7C9:        8B            PHB                       ;
CODE_00C7CA:        4B            PHK                       ;
CODE_00C7CB:        AB            PLB                       ;
CODE_00C7CC:        22 F6 81 0E   JSL CODE_0E81F6           ;
CODE_00C7D0:        AE 80 0F      LDX $0F80                 ;
CODE_00C7D3:        AD 81 0F      LDA $0F81                 ;
CODE_00C7D6:        DD 66 CA      CMP $CA66,x               ;
CODE_00C7D9:        90 19         BCC CODE_00C7F4           ;
CODE_00C7DB:        9C 81 0F      STZ $0F81                 ;
CODE_00C7DE:        EE 80 0F      INC $0F80                 ;
CODE_00C7E1:        AD 80 0F      LDA $0F80                 ;
CODE_00C7E4:        C9 05         CMP #$05                  ;
CODE_00C7E6:        D0 03         BNE CODE_00C7EB           ;
CODE_00C7E8:        9C 89 0F      STZ $0F89                 ;
CODE_00C7EB:        C9 0F         CMP #$0F                  ;
CODE_00C7ED:        90 05         BCC CODE_00C7F4           ;
CODE_00C7EF:        A9 06         LDA #$06                  ;
CODE_00C7F1:        8D 80 0F      STA $0F80                 ;
CODE_00C7F4:        EE 81 0F      INC $0F81                 ;
CODE_00C7F7:        A9 00         LDA #$00                  ;
CODE_00C7F9:        EB            XBA                       ;
CODE_00C7FA:        AD 80 0F      LDA $0F80                 ;
CODE_00C7FD:        0A            ASL A                     ;
CODE_00C7FE:        C2 10         REP #$10                  ;
CODE_00C800:        A8            TAY                       ;
CODE_00C801:        BE C6 CA      LDX $CAC6,y               ;
CODE_00C804:        86 ED         STX $ED                   ;
CODE_00C806:        BE 80 CA      LDX $CA80,y               ;
CODE_00C809:        A0 04 00      LDY #$0004                ;
CODE_00C80C:        BD FA CA      LDA $CAFA,x               ;
CODE_00C80F:        C9 FF         CMP #$FF                  ;
CODE_00C811:        F0 39         BEQ CODE_00C84C           ;
CODE_00C813:        18            CLC                       ;
CODE_00C814:        69 80         ADC #$80                  ;
CODE_00C816:        99 01 08      STA $0801,y               ;
CODE_00C819:        E8            INX                       ;
CODE_00C81A:        BD FA CA      LDA $CAFA,x               ;
CODE_00C81D:        18            CLC                       ;
CODE_00C81E:        69 C0         ADC #$C0                  ;
CODE_00C820:        99 00 08      STA $0800,y               ;
CODE_00C823:        E8            INX                       ;
CODE_00C824:        BD FA CA      LDA $CAFA,x               ;
CODE_00C827:        99 02 08      STA $0802,y               ;
CODE_00C82A:        E8            INX                       ;
CODE_00C82B:        64 00         STZ $00                   ;
CODE_00C82D:        C9 80         CMP #$80                  ;
CODE_00C82F:        B0 05         BCS CODE_00C836           ;
CODE_00C831:        AD 53 07      LDA $0753                 ;
CODE_00C834:        85 00         STA $00                   ;
CODE_00C836:        BD FA CA      LDA $CAFA,x               ;
CODE_00C839:        05 00         ORA $00                   ;
CODE_00C83B:        09 20         ORA #$20                  ;
CODE_00C83D:        99 03 08      STA $0803,y               ;
CODE_00C840:        E8            INX                       ;
CODE_00C841:        A9 02         LDA #$02                  ;
CODE_00C843:        99 00 0C      STA $0C00,y               ;
CODE_00C846:        C8            INY                       ;
CODE_00C847:        C8            INY                       ;
CODE_00C848:        C8            INY                       ;
CODE_00C849:        C8            INY                       ;
CODE_00C84A:        80 C0         BRA CODE_00C80C           ;

CODE_00C84C:        A6 ED         LDX $ED                   ;
CODE_00C84E:        BD FA CA      LDA $CAFA,x               ;
CODE_00C851:        C9 FF         CMP #$FF                  ;
CODE_00C853:        F0 46         BEQ CODE_00C89B           ;
CODE_00C855:        18            CLC                       ;
CODE_00C856:        69 80         ADC #$80                  ;
CODE_00C858:        99 01 08      STA $0801,y               ;
CODE_00C85B:        E8            INX                       ;
CODE_00C85C:        BD FA CA      LDA $CAFA,x               ;
CODE_00C85F:        18            CLC                       ;
CODE_00C860:        69 C0         ADC #$C0                  ;
CODE_00C862:        18            CLC                       ;
CODE_00C863:        6D 53 07      ADC $0753                 ;
CODE_00C866:        6D 53 07      ADC $0753                 ;
CODE_00C869:        6D 53 07      ADC $0753                 ;
CODE_00C86C:        6D 53 07      ADC $0753                 ;
CODE_00C86F:        99 00 08      STA $0800,y               ;
CODE_00C872:        E8            INX                       ;
CODE_00C873:        BD FA CA      LDA $CAFA,x               ;
CODE_00C876:        99 02 08      STA $0802,y               ;
CODE_00C879:        E8            INX                       ;
CODE_00C87A:        64 00         STZ $00                   ;
CODE_00C87C:        C9 80         CMP #$80                  ;
CODE_00C87E:        B0 05         BCS CODE_00C885           ;
CODE_00C880:        AD 53 07      LDA $0753                 ;
CODE_00C883:        85 00         STA $00                   ;
CODE_00C885:        BD FA CA      LDA $CAFA,x               ;
CODE_00C888:        05 00         ORA $00                   ;
CODE_00C88A:        09 20         ORA #$20                  ;
CODE_00C88C:        99 03 08      STA $0803,y               ;
CODE_00C88F:        E8            INX                       ;
CODE_00C890:        A9 02         LDA #$02                  ;
CODE_00C892:        99 00 0C      STA $0C00,y               ;
CODE_00C895:        C8            INY                       ;
CODE_00C896:        C8            INY                       ;
CODE_00C897:        C8            INY                       ;
CODE_00C898:        C8            INY                       ;
CODE_00C899:        80 B3         BRA CODE_00C84E           ;

CODE_00C89B:        AD 80 0F      LDA $0F80                 ;
CODE_00C89E:        C9 06         CMP #$06                  ;
CODE_00C8A0:        90 4D         BCC CODE_00C8EF           ;
CODE_00C8A2:        E2 10         SEP #$10                  ;
CODE_00C8A4:        20 43 E5      JSR CODE_00E543           ;
CODE_00C8A7:        AD 89 0F      LDA $0F89                 ;
CODE_00C8AA:        4A            LSR A                     ;
CODE_00C8AB:        4A            LSR A                     ;
CODE_00C8AC:        4A            LSR A                     ;
CODE_00C8AD:        29 03         AND #$03                  ;
CODE_00C8AF:        AA            TAX                       ;
CODE_00C8B0:        BF 59 CA 00   LDA $00CA59,x             ;
CODE_00C8B4:        18            CLC                       ;
CODE_00C8B5:        69 B0         ADC #$B0                  ;
CODE_00C8B7:        8D 00 08      STA $0800                 ;
CODE_00C8BA:        AD 89 0F      LDA $0F89                 ;
CODE_00C8BD:        4A            LSR A                     ;
CODE_00C8BE:        4A            LSR A                     ;
CODE_00C8BF:        85 00         STA $00                   ;
CODE_00C8C1:        A9 60         LDA #$60                  ;
CODE_00C8C3:        38            SEC                       ;
CODE_00C8C4:        E5 00         SBC $00                   ;
CODE_00C8C6:        8D 01 08      STA $0801                 ;
CODE_00C8C9:        AD 89 0F      LDA $0F89                 ;
CODE_00C8CC:        4A            LSR A                     ;
CODE_00C8CD:        4A            LSR A                     ;
CODE_00C8CE:        4A            LSR A                     ;
CODE_00C8CF:        4A            LSR A                     ;
CODE_00C8D0:        4A            LSR A                     ;
CODE_00C8D1:        29 03         AND #$03                  ;
CODE_00C8D3:        AA            TAX                       ;
CODE_00C8D4:        BF 55 CA 00   LDA $00CA55,x             ;
CODE_00C8D8:        8D 02 08      STA $0802                 ;
CODE_00C8DB:        A9 26         LDA #$26                  ;
CODE_00C8DD:        8D 03 08      STA $0803                 ;
CODE_00C8E0:        A9 00         LDA #$00                  ;
CODE_00C8E2:        8D 00 0C      STA $0C00                 ;
CODE_00C8E5:        EE 89 0F      INC $0F89                 ;
CODE_00C8E8:        E0 03         CPX #$03                  ;
CODE_00C8EA:        D0 03         BNE CODE_00C8EF           ;
CODE_00C8EC:        9C 89 0F      STZ $0F89                 ;
CODE_00C8EF:        E2 10         SEP #$10                  ;
CODE_00C8F1:        20 21 CA      JSR CODE_00CA21           ;
CODE_00C8F4:        AB            PLB                       ;
CODE_00C8F5:        6B            RTL                       ;

CODE_00C8F6:        8B            PHB                       ;
CODE_00C8F7:        4B            PHK                       ;
CODE_00C8F8:        AB            PLB                       ;
CODE_00C8F9:        22 F6 81 0E   JSL CODE_0E81F6           ;
CODE_00C8FD:        AE 80 0F      LDX $0F80                 ;
CODE_00C900:        AD 81 0F      LDA $0F81                 ;
CODE_00C903:        DD 76 CA      CMP $CA76,x               ;
CODE_00C906:        90 17         BCC CODE_00C91F           ;
CODE_00C908:        9C 81 0F      STZ $0F81                 ;
CODE_00C90B:        EE 80 0F      INC $0F80                 ;
CODE_00C90E:        AD 80 0F      LDA $0F80                 ;
CODE_00C911:        C9 09         CMP #$09                  ;
CODE_00C913:        90 0A         BCC CODE_00C91F           ;
CODE_00C915:        D0 03         BNE CODE_00C91A           ;
CODE_00C917:        9C 89 0F      STZ $0F89                 ;
CODE_00C91A:        A9 09         LDA #$09                  ;
CODE_00C91C:        8D 80 0F      STA $0F80                 ;
CODE_00C91F:        EE 81 0F      INC $0F81                 ;
CODE_00C922:        A9 00         LDA #$00                  ;
CODE_00C924:        EB            XBA                       ;
CODE_00C925:        AD 80 0F      LDA $0F80                 ;
CODE_00C928:        0A            ASL A                     ;
CODE_00C929:        C2 10         REP #$10                  ;
CODE_00C92B:        A8            TAY                       ;
CODE_00C92C:        BE E6 CA      LDX $CAE6,y               ;
CODE_00C92F:        86 ED         STX $ED                   ;
CODE_00C931:        BE A0 CA      LDX $CAA0,y               ;
CODE_00C934:        A0 04 00      LDY #$0004                ;
CODE_00C937:        BD FA CA      LDA $CAFA,x               ;
CODE_00C93A:        C9 FF         CMP #$FF                  ;
CODE_00C93C:        F0 39         BEQ CODE_00C977           ;
CODE_00C93E:        18            CLC                       ;
CODE_00C93F:        69 80         ADC #$80                  ;
CODE_00C941:        99 01 08      STA $0801,y               ;
CODE_00C944:        E8            INX                       ;
CODE_00C945:        BD FA CA      LDA $CAFA,x               ;
CODE_00C948:        18            CLC                       ;
CODE_00C949:        69 C0         ADC #$C0                  ;
CODE_00C94B:        99 00 08      STA $0800,y               ;
CODE_00C94E:        E8            INX                       ;
CODE_00C94F:        BD FA CA      LDA $CAFA,x               ;
CODE_00C952:        99 02 08      STA $0802,y               ;
CODE_00C955:        E8            INX                       ;
CODE_00C956:        64 00         STZ $00                   ;
CODE_00C958:        C9 80         CMP #$80                  ;
CODE_00C95A:        B0 05         BCS CODE_00C961           ;
CODE_00C95C:        AD 53 07      LDA $0753                 ;
CODE_00C95F:        85 00         STA $00                   ;
CODE_00C961:        BD FA CA      LDA $CAFA,x               ;
CODE_00C964:        05 00         ORA $00                   ;
CODE_00C966:        09 20         ORA #$20                  ;
CODE_00C968:        99 03 08      STA $0803,y               ;
CODE_00C96B:        E8            INX                       ;
CODE_00C96C:        A9 02         LDA #$02                  ;
CODE_00C96E:        99 00 0C      STA $0C00,y               ;
CODE_00C971:        C8            INY                       ;
CODE_00C972:        C8            INY                       ;
CODE_00C973:        C8            INY                       ;
CODE_00C974:        C8            INY                       ;
CODE_00C975:        80 C0         BRA CODE_00C937           ;

CODE_00C977:        A6 ED         LDX $ED                   ;
CODE_00C979:        BD FA CA      LDA $CAFA,x               ;
CODE_00C97C:        C9 FF         CMP #$FF                  ;
CODE_00C97E:        F0 46         BEQ CODE_00C9C6           ;
CODE_00C980:        18            CLC                       ;
CODE_00C981:        69 80         ADC #$80                  ;
CODE_00C983:        99 01 08      STA $0801,y               ;
CODE_00C986:        E8            INX                       ;
CODE_00C987:        BD FA CA      LDA $CAFA,x               ;
CODE_00C98A:        18            CLC                       ;
CODE_00C98B:        69 C0         ADC #$C0                  ;
CODE_00C98D:        18            CLC                       ;
CODE_00C98E:        6D 53 07      ADC $0753                 ;
CODE_00C991:        6D 53 07      ADC $0753                 ;
CODE_00C994:        6D 53 07      ADC $0753                 ;
CODE_00C997:        6D 53 07      ADC $0753                 ;
CODE_00C99A:        99 00 08      STA $0800,y               ;
CODE_00C99D:        E8            INX                       ;
CODE_00C99E:        BD FA CA      LDA $CAFA,x               ;
CODE_00C9A1:        99 02 08      STA $0802,y               ;
CODE_00C9A4:        E8            INX                       ;
CODE_00C9A5:        64 00         STZ $00                   ;
CODE_00C9A7:        C9 80         CMP #$80                  ;
CODE_00C9A9:        B0 05         BCS CODE_00C9B0           ;
CODE_00C9AB:        AD 53 07      LDA $0753                 ;
CODE_00C9AE:        85 00         STA $00                   ;
CODE_00C9B0:        BD FA CA      LDA $CAFA,x               ;
CODE_00C9B3:        05 00         ORA $00                   ;
CODE_00C9B5:        09 20         ORA #$20                  ;
CODE_00C9B7:        99 03 08      STA $0803,y               ;
CODE_00C9BA:        E8            INX                       ;
CODE_00C9BB:        A9 02         LDA #$02                  ;
CODE_00C9BD:        99 00 0C      STA $0C00,y               ;
CODE_00C9C0:        C8            INY                       ;
CODE_00C9C1:        C8            INY                       ;
CODE_00C9C2:        C8            INY                       ;
CODE_00C9C3:        C8            INY                       ;
CODE_00C9C4:        80 B3         BRA CODE_00C979           ;

CODE_00C9C6:        AD 80 0F      LDA $0F80                 ;
CODE_00C9C9:        C9 09         CMP #$09                  ;
CODE_00C9CB:        D0 4D         BNE CODE_00CA1A           ;
CODE_00C9CD:        E2 10         SEP #$10                  ;
CODE_00C9CF:        20 43 E5      JSR CODE_00E543           ;
CODE_00C9D2:        AD 89 0F      LDA $0F89                 ;
CODE_00C9D5:        4A            LSR A                     ;
CODE_00C9D6:        4A            LSR A                     ;
CODE_00C9D7:        4A            LSR A                     ;
CODE_00C9D8:        29 03         AND #$03                  ;
CODE_00C9DA:        AA            TAX                       ;
CODE_00C9DB:        BF 59 CA 00   LDA $00CA59,x             ;
CODE_00C9DF:        18            CLC                       ;
CODE_00C9E0:        69 B0         ADC #$B0                  ;
CODE_00C9E2:        8D 00 08      STA $0800                 ;
CODE_00C9E5:        AD 89 0F      LDA $0F89                 ;
CODE_00C9E8:        4A            LSR A                     ;
CODE_00C9E9:        4A            LSR A                     ;
CODE_00C9EA:        85 00         STA $00                   ;
CODE_00C9EC:        A9 60         LDA #$60                  ;
CODE_00C9EE:        38            SEC                       ;
CODE_00C9EF:        E5 00         SBC $00                   ;
CODE_00C9F1:        8D 01 08      STA $0801                 ;
CODE_00C9F4:        AD 89 0F      LDA $0F89                 ;
CODE_00C9F7:        4A            LSR A                     ;
CODE_00C9F8:        4A            LSR A                     ;
CODE_00C9F9:        4A            LSR A                     ;
CODE_00C9FA:        4A            LSR A                     ;
CODE_00C9FB:        4A            LSR A                     ;
CODE_00C9FC:        29 03         AND #$03                  ;
CODE_00C9FE:        AA            TAX                       ;
CODE_00C9FF:        BF 55 CA 00   LDA $00CA55,x             ;
CODE_00CA03:        8D 02 08      STA $0802                 ;
CODE_00CA06:        A9 26         LDA #$26                  ;
CODE_00CA08:        8D 03 08      STA $0803                 ;
CODE_00CA0B:        A9 00         LDA #$00                  ;
CODE_00CA0D:        8D 00 0C      STA $0C00                 ;
CODE_00CA10:        EE 89 0F      INC $0F89                 ;
CODE_00CA13:        E0 03         CPX #$03                  ;
CODE_00CA15:        D0 03         BNE CODE_00CA1A           ;
CODE_00CA17:        9C 89 0F      STZ $0F89                 ;
CODE_00CA1A:        E2 10         SEP #$10                  ;
CODE_00CA1C:        20 21 CA      JSR CODE_00CA21           ;
CODE_00CA1F:        AB            PLB                       ;
CODE_00CA20:        6B            RTL                       ;

CODE_00CA21:        AD 53 07      LDA $0753                 ;
CODE_00CA24:        F0 2E         BEQ CODE_00CA54           ;
CODE_00CA26:        AD 06 08      LDA $0806                 ;
CODE_00CA29:        C9 EE         CMP #$EE                  ;
CODE_00CA2B:        D0 27         BNE CODE_00CA54           ;
CODE_00CA2D:        AD 04 08      LDA $0804                 ;
CODE_00CA30:        3A            DEC A                     ;
CODE_00CA31:        3A            DEC A                     ;
CODE_00CA32:        8D 04 08      STA $0804                 ;
CODE_00CA35:        8D 08 08      STA $0808                 ;
CODE_00CA38:        A9 82         LDA #$82                  ;
CODE_00CA3A:        8D 06 08      STA $0806                 ;
CODE_00CA3D:        1A            INC A                     ;
CODE_00CA3E:        8D 0A 08      STA $080A                 ;
CODE_00CA41:        AD 04 08      LDA $0804                 ;
CODE_00CA44:        18            CLC                       ;
CODE_00CA45:        69 08         ADC #$08                  ;
CODE_00CA47:        8D 08 08      STA $0808                 ;
CODE_00CA4A:        A9 85         LDA #$85                  ;
CODE_00CA4C:        8D 0E 08      STA $080E                 ;
CODE_00CA4F:        A9 89         LDA #$89                  ;
CODE_00CA51:        8D 12 08      STA $0812                 ;
CODE_00CA54:        60            RTS                       ;

DATA_00CA55:        db $5F,$5E,$5D,$5C

DATA_00CA59:        db $00,$02,$00,$FE

DATA_00CA5D:        db $50,$30,$08,$08,$20,$20,$08,$08
                    db $FF

DATA_00CA66:        db $50,$30,$08,$08,$20,$20,$08,$08
                    db $0C,$08,$08,$0C,$08,$08,$0C,$FF

DATA_00CA76:        db $60,$08,$08,$10,$14,$10,$14,$10
                    db $14,$FF

DATA_00CA80:        dw $0000,$008A,$011C,$01AE
                    dw $0244,$02D2,$0360,$045F
                    dw $055E,$055E,$055E,$055E
                    dw $055E,$055E,$055E,$055E

DATA_00CAA0:        dw $06BE,$0789,$07CE,$06FF
                    dw $0744,$06FF,$0744,$06FF
                    dw $0744,$06FF

DATA_00CAB4:        dw $0041,$00CB,$015D,$01F3
                    dw $0289,$0317,$03A5,$04A4
                    dw $05A3

DATA_00CAC6:        dw $0041,$00CB,$015D,$01F3
                    dw $0289,$0317,$03F6,$04F5
                    dw $05F4,$03F6,$04F5,$05F4
                    dw $03F6,$04F5,$05F4,$065D

DATA_00CAE6:        dw $0813,$091E,$0977,$086C
                    dw $08C5,$086C,$08C5,$086C
                    dw $08C5,$086C

DATA_00CAFA:        db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06
                    db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06
                    db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06
                    db $08,$EC,$E0,$06,$08,$FC,$E2,$06
                    db $08,$0C,$E4,$06,$10,$CC,$8D,$06
                    db $10,$D4,$8E,$06,$10,$E4,$AC,$06
                    db $10,$F4,$AE,$06,$18,$F4,$CC,$06
                    db $18,$04,$CE,$06,$18,$14,$EC,$06
                    db $FF,$D8,$D0,$0A,$06,$D8,$E0,$08
                    db $06,$E8,$C0,$28,$06,$E8,$D0,$2A
                    db $06,$E8,$E0,$2A,$46,$E8,$F0,$28
                    db $46,$F8,$C0,$48,$06,$F8,$D0,$4A
                    db $06,$F8,$E0,$4A,$46,$F8,$F0,$48
                    db $46,$08,$C0,$68,$06,$08,$D0,$6A
                    db $06,$08,$E0,$6A,$46,$08,$F0,$68
                    db $46,$18,$C0,$6E,$46,$18,$D0,$6C
                    db $46,$18,$E0,$6C,$06,$18,$F0,$6E
                    db $06,$FF,$E8,$EC,$A0,$06,$E8,$FC
                    db $A2,$06,$E8,$0C,$A4,$06,$F8,$EC
                    db $C0,$06,$F8,$FC,$C2,$06,$F8,$0C
                    db $C4,$06,$08,$EC,$E0,$06,$08,$FC
                    db $E2,$06,$08,$0C,$E4,$06,$10,$CC
                    db $8D,$06,$10,$D4,$8E,$06,$10,$E4
                    db $AC,$06,$10,$F4,$AE,$06,$18,$F4
                    db $CC,$06,$18,$04,$CE,$06,$18,$14
                    db $EC,$06,$FF,$F0,$D0,$14,$06,$F0
                    db $E0,$16,$06,$D8,$D0,$0A,$06,$D8
                    db $E0,$08,$06,$E8,$C0,$28,$06,$E8
                    db $D0,$2A,$06,$E8,$E0,$2A,$46,$E8
                    db $F0,$28,$46,$F8,$C0,$48,$06,$F8
                    db $D0,$4A,$06,$F8,$E0,$4A,$46,$F8
                    db $F0,$48,$46,$08,$C0,$68,$06,$08
                    db $D0,$6A,$06,$08,$E0,$6A,$46,$08
                    db $F0,$68,$46,$18,$C0,$6E,$46,$18
                    db $D0,$6C,$46,$18,$E0,$6C,$06,$18
                    db $F0,$6E,$06,$FF,$E8,$EB,$A0,$06
                    db $E8,$FB,$A2,$06,$E8,$0B,$A4,$06
                    db $F8,$EB,$C0,$06,$F8,$FB,$C2,$06
                    db $F8,$0B,$C4,$06,$08,$EB,$E0,$06
                    db $08,$FB,$E2,$06,$08,$0B,$E4,$06
                    db $10,$CB,$8D,$06,$10,$D3,$8E,$06
                    db $10,$E3,$AC,$06,$10,$F3,$AE,$06
                    db $18,$F3,$CC,$06,$18,$03,$CE,$06
                    db $18,$13,$EC,$06,$FF,$F0,$D0,$14
                    db $06,$F0,$E0,$16,$06,$D8,$D0,$0A
                    db $06,$D8,$E0,$08,$06,$E8,$C0,$28
                    db $06,$E8,$D0,$2A,$06,$E8,$E0,$2A
                    db $46,$E8,$F0,$28,$46,$F8,$C0,$48
                    db $06,$F8,$D0,$4A,$06,$F8,$E0,$4A
                    db $46,$F8,$F0,$48,$46,$08,$C0,$68
                    db $06,$08,$D0,$6A,$06,$08,$E0,$6A
                    db $46,$08,$F0,$68,$46,$18,$C0,$6E
                    db $46,$18,$D0,$6C,$46,$18,$E0,$6C
                    db $06,$18,$F0,$6E,$06,$FF,$00,$D5
                    db $EE,$06,$00,$D5,$EE,$06,$10,$DB
                    db $88,$06,$10,$E2,$89,$06,$E8,$EA
                    db $A0,$06,$E8,$FA,$A2,$06,$E8,$0A
                    db $A4,$06,$F8,$EA,$C0,$06,$F8,$FA
                    db $C2,$06,$F8,$0A,$C4,$06,$08,$EA
                    db $E0,$06,$08,$FA,$E2,$06,$08,$0A
                    db $E4,$06,$10,$F2,$8B,$06,$18,$F2
                    db $CC,$06,$18,$02,$CE,$06,$18,$12
                    db $EC,$06,$FF,$F0,$D0,$14,$06,$F0
                    db $E0,$16,$06,$D8,$D0,$0A,$06,$D8
                    db $E0,$08,$06,$E8,$C0,$28,$06,$E8
                    db $D0,$2A,$06,$E8,$E0,$2A,$46,$E8
                    db $F0,$28,$46,$F8,$C0,$48,$06,$F8
                    db $D0,$4A,$06,$F8,$E0,$4A,$46,$F8
                    db $F0,$48,$46,$08,$C0,$68,$06,$08
                    db $D0,$6A,$06,$08,$E0,$6A,$46,$08
                    db $F0,$68,$46,$18,$C0,$6E,$46,$18
                    db $D0,$6C,$46,$18,$E0,$6C,$06,$18
                    db $F0,$6E,$06,$FF,$00,$D4,$EE,$06
                    db $00,$D4,$EE,$06,$10,$DA,$88,$06
                    db $10,$E1,$89,$06,$E8,$E9,$A0,$06
                    db $E8,$F9,$A2,$06,$E8,$09,$A4,$06
                    db $F8,$E9,$C0,$06,$F8,$F9,$C2,$06
                    db $F8,$09,$C4,$06,$08,$E9,$E0,$06
                    db $08,$F9,$E2,$06,$08,$09,$E4,$06
                    db $10,$F1,$8B,$06,$18,$F1,$CC,$06
                    db $18,$01,$CE,$06,$18,$11,$EC,$06
                    db $FF,$D8,$D0,$0A,$06,$D8,$E0,$08
                    db $06,$E8,$C0,$28,$06,$E8,$D0,$2A
                    db $06,$E8,$E0,$2A,$46,$E8,$F0,$28
                    db $46,$F8,$C0,$48,$06,$F8,$D0,$4A
                    db $06,$F8,$E0,$4A,$46,$F8,$F0,$48
                    db $46,$08,$C0,$68,$06,$08,$D0,$6A
                    db $06,$08,$E0,$6A,$46,$08,$F0,$68
                    db $46,$18,$C0,$6E,$46,$18,$D0,$6C
                    db $46,$18,$E0,$6C,$06,$18,$F0,$6E
                    db $06,$FF,$00,$D3,$EE,$06,$00,$D3
                    db $EE,$06,$10,$D9,$88,$06,$10,$E0
                    db $89,$06,$E8,$E8,$A6,$06,$E8,$F8
                    db $A8,$06,$E8,$08,$AA,$06,$F8,$E8
                    db $C6,$06,$F8,$F8,$C8,$06,$F8,$08
                    db $CA,$06,$08,$E8,$E6,$06,$08,$F8
                    db $E8,$06,$08,$08,$EA,$06,$10,$F0
                    db $8B,$06,$18,$F0,$CC,$06,$18,$00
                    db $CE,$06,$18,$10,$EC,$06,$FF,$D8
                    db $D0,$0A,$06,$D8,$E0,$08,$06,$E8
                    db $C0,$28,$06,$E8,$D0,$2A,$06,$E8
                    db $E0,$2A,$46,$E8,$F0,$28,$46,$F8
                    db $C0,$48,$06,$F8,$D0,$4A,$06,$F8
                    db $E0,$4A,$46,$F8,$F0,$48,$46,$08
                    db $C0,$68,$06,$08,$D0,$6A,$06,$08
                    db $E0,$6A,$46,$08,$F0,$68,$46,$18
                    db $C0,$6E,$46,$18,$D0,$6C,$46,$18
                    db $E0,$6C,$06,$18,$F0,$6E,$06,$FF
                    db $00,$D3,$EE,$06,$00,$D3,$EE,$06
                    db $10,$D9,$88,$06,$10,$E0,$89,$06
                    db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06
                    db $E8,$08,$AA,$06,$F8,$E8,$C6,$06
                    db $F8,$F8,$C8,$06,$F8,$08,$CA,$06
                    db $08,$E8,$E6,$06,$08,$F8,$E8,$06
                    db $08,$08,$EA,$06,$10,$F0,$8B,$06
                    db $18,$F0,$CC,$06,$18,$00,$CE,$06
                    db $18,$10,$EC,$06,$FF,$D8,$D0,$0A
                    db $06,$D8,$E0,$08,$06,$E8,$C0,$28
                    db $06,$E8,$D0,$0E,$06,$E8,$E0,$0E
                    db $46,$00,$D0,$3E,$06,$00,$E0,$3E
                    db $46,$E8,$F0,$28,$46,$F8,$C0,$48
                    db $06,$F8,$D0,$2E,$06,$F8,$E0,$2E
                    db $46,$F8,$F0,$48,$46,$08,$C0,$68
                    db $06,$08,$D0,$6A,$06,$08,$E0,$6A
                    db $46,$08,$F0,$68,$46,$18,$C0,$6E
                    db $46,$18,$D0,$6C,$46,$18,$E0,$6C
                    db $06,$18,$F0,$6E,$06,$FF,$F0,$D0
                    db $42,$06,$F0,$E0,$42,$46,$D8,$D0
                    db $0A,$06,$D8,$E0,$08,$06,$E8,$C0
                    db $28,$06,$E8,$D0,$0C,$06,$E8,$D0
                    db $2A,$06,$E8,$E0,$0C,$46,$E8,$E0
                    db $2A,$46,$E8,$F0,$28,$46,$F8,$C0
                    db $48,$06,$F8,$D0,$2C,$06,$F8,$D0
                    db $4A,$06,$F8,$E0,$2C,$46,$F8,$E0
                    db $4A,$46,$F8,$F0,$48,$46,$00,$D0
                    db $60,$06,$00,$E0,$60,$46,$08,$C0
                    db $68,$06,$08,$D0,$6A,$06,$08,$E0
                    db $6A,$46,$08,$F0,$68,$46,$18,$C0
                    db $6E,$46,$18,$D0,$6C,$46,$18,$E0
                    db $6C,$06,$18,$F0,$6E,$06,$FF,$00
                    db $D3,$EE,$06,$00,$D3,$EE,$06,$10
                    db $D9,$88,$06,$10,$E0,$89,$06,$E8
                    db $E8,$A6,$06,$E8,$F8,$A8,$06,$E8
                    db $08,$AA,$06,$F8,$E8,$C6,$06,$F8
                    db $F8,$C8,$06,$F8,$08,$CA,$06,$08
                    db $E8,$E6,$06,$08,$F8,$E8,$06,$08
                    db $08,$EA,$06,$10,$F0,$8B,$06,$18
                    db $F0,$CC,$06,$18,$00,$CE,$06,$18
                    db $10,$EC,$06,$FF,$D8,$D0,$0A,$06
                    db $D8,$E0,$08,$06,$E8,$C0,$28,$06
                    db $00,$D0,$3C,$06,$00,$E0,$3C,$46
                    db $E8,$D0,$0C,$06,$E8,$E0,$0C,$46
                    db $E8,$F0,$28,$46,$F8,$C0,$48,$06
                    db $F8,$D0,$2C,$06,$F8,$E0,$2C,$46
                    db $F8,$F0,$48,$46,$08,$C0,$68,$06
                    db $08,$D0,$6A,$06,$08,$E0,$6A,$46
                    db $08,$F0,$68,$46,$18,$C0,$6E,$46
                    db $18,$D0,$6C,$46,$18,$E0,$6C,$06
                    db $18,$F0,$6E,$06,$FF,$F0,$D0,$62
                    db $06,$F0,$E0,$62,$46,$D8,$D0,$0A
                    db $06,$D8,$E0,$08,$06,$E8,$C0,$28
                    db $06,$E8,$D0,$0C,$06,$E8,$D0,$2A
                    db $06,$E8,$E0,$0C,$46,$E8,$E0,$2A
                    db $46,$E8,$F0,$28,$46,$F8,$C0,$48
                    db $06,$F8,$D0,$2C,$06,$F8,$D0,$4A
                    db $06,$F8,$E0,$2C,$46,$F8,$E0,$4A
                    db $46,$F8,$F0,$48,$46,$00,$D0,$60
                    db $06,$00,$E0,$60,$46,$08,$C0,$68
                    db $06,$08,$D0,$6A,$06,$08,$E0,$6A
                    db $46,$08,$F0,$68,$46,$18,$C0,$6E
                    db $46,$18,$D0,$6C,$46,$18,$E0,$6C
                    db $06,$18,$F0,$6E,$06,$FF,$00,$D3
                    db $EE,$06,$00,$D3,$EE,$06,$10,$D9
                    db $88,$06,$10,$E0,$89,$06,$E8,$E8
                    db $A6,$06,$E8,$F8,$A8,$06,$E8,$08
                    db $AA,$06,$F8,$E8,$C6,$06,$F8,$F8
                    db $C8,$06,$F8,$08,$CA,$06,$08,$E8
                    db $E6,$06,$08,$F8,$E8,$06,$08,$08
                    db $EA,$06,$10,$F0,$8B,$06,$18,$F0
                    db $CC,$06,$18,$00,$CE,$06,$18,$10
                    db $EC,$06,$FF,$D8,$D0,$0A,$06,$D8
                    db $E0,$08,$06,$E8,$C0,$28,$06,$E8
                    db $D0,$0C,$06,$E8,$E0,$0C,$46,$00
                    db $D0,$3C,$06,$00,$E0,$3C,$46,$E8
                    db $F0,$28,$46,$F8,$C0,$48,$06,$F8
                    db $D0,$2C,$06,$F8,$E0,$2C,$46,$F8
                    db $F0,$48,$46,$08,$C0,$68,$06,$08
                    db $D0,$6A,$06,$08,$E0,$6A,$46,$08
                    db $F0,$68,$46,$18,$C0,$6E,$46,$18
                    db $D0,$6C,$46,$18,$E0,$6C,$06,$18
                    db $F0,$6E,$06,$FF,$F0,$D0,$40,$06
                    db $F0,$E0,$40,$46,$D8,$D0,$0A,$06
                    db $D8,$E0,$08,$06,$E8,$C0,$28,$06
                    db $E8,$D0,$0C,$06,$E8,$D0,$2A,$06
                    db $E8,$E0,$0C,$46,$E8,$E0,$2A,$46
                    db $E8,$F0,$28,$46,$F8,$C0,$48,$06
                    db $F8,$D0,$2C,$06,$F8,$D0,$4A,$06
                    db $F8,$E0,$2C,$46,$F8,$E0,$4A,$46
                    db $F8,$F0,$48,$46,$00,$D0,$60,$06
                    db $00,$E0,$60,$46,$08,$C0,$68,$06
                    db $08,$D0,$6A,$06,$08,$E0,$6A,$46
                    db $08,$F0,$68,$46,$18,$C0,$6E,$46
                    db $18,$D0,$6C,$46,$18,$E0,$6C,$06
                    db $18,$F0,$6E,$06,$FF,$D8,$D0,$0A
                    db $06,$D8,$E0,$08,$06,$E8,$C0,$28
                    db $06,$E8,$D0,$0C,$06,$E8,$D0,$2A
                    db $06,$E8,$E0,$0C,$46,$E8,$E0,$2A
                    db $46,$E8,$F0,$28,$46,$F8,$C0,$48
                    db $06,$F8,$D0,$2C,$06,$F8,$D0,$4A
                    db $06,$F8,$E0,$2C,$46,$F8,$E0,$4A
                    db $46,$F8,$F0,$48,$46,$00,$D0,$60
                    db $06,$00,$E0,$60,$46,$08,$C0,$68
                    db $06,$08,$D0,$6A,$06,$08,$E0,$6A
                    db $46,$08,$F0,$68,$46,$18,$C0,$6E
                    db $46,$18,$D0,$6C,$46,$18,$E0,$6C
                    db $06,$18,$F0,$6E,$06,$FF,$E8,$EA
                    db $A0,$06,$E8,$FA,$A2,$06,$E8,$0A
                    db $A4,$06,$F8,$EA,$C0,$06,$F8,$FA
                    db $C2,$06,$F8,$0A,$C4,$06,$08,$EA
                    db $E0,$06,$08,$FA,$E2,$06,$08,$0A
                    db $E4,$06,$10,$CA,$8D,$06,$10,$D2
                    db $8E,$06,$10,$E2,$AC,$06,$10,$F2
                    db $AE,$06,$18,$F2,$CC,$06,$18,$02
                    db $CE,$06,$18,$12,$EC,$06,$FF,$00
                    db $D2,$EE,$06,$00,$D2,$EE,$06,$10
                    db $D8,$88,$06,$10,$E0,$89,$06,$E8
                    db $E8,$A6,$06,$E8,$F8,$A8,$06,$E8
                    db $08,$AA,$06,$F8,$E8,$C6,$06,$F8
                    db $F8,$C8,$06,$F8,$08,$CA,$06,$08
                    db $E8,$E6,$06,$08,$F8,$E8,$06,$08
                    db $08,$EA,$06,$10,$F0,$8B,$06,$18
                    db $F0,$CC,$06,$18,$00,$CE,$06,$18
                    db $10,$EC,$06,$FF,$00,$D2,$EE,$06
                    db $00,$D2,$EE,$06,$10,$D8,$88,$06
                    db $10,$E0,$89,$06,$E8,$E8,$A0,$06
                    db $E8,$F8,$A2,$06,$E8,$08,$A4,$06
                    db $F8,$E8,$C0,$06,$F8,$F8,$C2,$06
                    db $F8,$08,$C4,$06,$08,$E8,$E0,$06
                    db $08,$F8,$E2,$06,$08,$08,$E4,$06
                    db $10,$F0,$8B,$06,$18,$F0,$CC,$06
                    db $18,$00,$CE,$06,$18,$10,$EC,$06
                    db $FF,$00,$D3,$EE,$06,$00,$D3,$EE
                    db $06,$10,$D9,$88,$06,$10,$E1,$89
                    db $06,$E8,$E9,$A6,$06,$E8,$F9,$A8
                    db $06,$E8,$09,$AA,$06,$F8,$E9,$C6
                    db $06,$F8,$F9,$C8,$06,$F8,$09,$CA
                    db $06,$08,$E9,$E6,$06,$08,$F9,$E8
                    db $06,$08,$09,$EA,$06,$10,$F1,$8B
                    db $06,$18,$F1,$CC,$06,$18,$01,$CE
                    db $06,$18,$11,$EC,$06,$FF,$00,$D2
                    db $EE,$06,$00,$D2,$EE,$06,$10,$D8
                    db $88,$06,$10,$E0,$89,$06,$E8,$E8
                    db $A6,$06,$E8,$F8,$A8,$06,$E8,$08
                    db $AA,$06,$F8,$E8,$C6,$06,$F8,$F8
                    db $C8,$06,$F8,$08,$CA,$06,$08,$E8
                    db $E6,$06,$08,$F8,$E8,$06,$08,$08
                    db $EA,$06,$10,$F0,$8B,$06,$18,$F0
                    db $CC,$06,$18,$00,$CE,$06,$18,$10
                    db $EC,$06,$FF,$D8,$D0,$0A,$06,$D8
                    db $E0,$08,$06,$E8,$C0,$28,$06,$E8
                    db $D0,$0C,$06,$E8,$E0,$34,$06,$E8
                    db $E0,$2A,$46,$E8,$F0,$28,$46,$F0
                    db $E0,$44,$06,$F8,$C0,$48,$06,$F8
                    db $F0,$48,$46,$00,$D0,$3C,$06,$00
                    db $E0,$64,$06,$F8,$D0,$2C,$06,$F8
                    db $E0,$4A,$46,$08,$C0,$68,$06,$08
                    db $D0,$6A,$06,$08,$E0,$6A,$46,$08
                    db $F0,$68,$46,$18,$C0,$6E,$46,$18
                    db $D0,$6C,$46,$18,$E0,$6C,$06,$18
                    db $F0,$6E,$06,$FF,$D8,$D0,$0A,$06
                    db $D8,$E0,$08,$06,$F0,$E0,$10,$06
                    db $E8,$D0,$36,$06,$E8,$E0,$36,$46
                    db $E8,$E0,$2A,$46,$E8,$F0,$28,$46
                    db $F0,$D0,$46,$06,$E8,$C0,$28,$06
                    db $F8,$C0,$48,$06,$00,$E0,$12,$06
                    db $F8,$E0,$4A,$46,$F8,$F0,$48,$46
                    db $00,$D0,$66,$06,$08,$C0,$68,$06
                    db $08,$D0,$6A,$06,$08,$E0,$6A,$46
                    db $08,$F0,$68,$46,$18,$C0,$6E,$46
                    db $18,$D0,$6C,$46,$18,$E0,$6C,$06
                    db $18,$F0,$6E,$06,$FF,$D8,$D0,$0A
                    db $06,$D8,$E0,$08,$06,$F0,$E0,$10
                    db $06,$E8,$C0,$28,$06,$E8,$D0,$36
                    db $06,$E8,$E0,$36,$46,$E8,$E0,$2A
                    db $46,$E8,$F0,$28,$46,$F0,$D0,$46
                    db $06,$F8,$C0,$48,$06,$00,$E0,$12
                    db $06,$F8,$E0,$4A,$46,$F8,$F0,$48
                    db $46,$00,$D0,$66,$06,$08,$C0,$68
                    db $06,$08,$D0,$6A,$06,$08,$E0,$6A
                    db $46,$08,$F0,$68,$46,$18,$C0,$6E
                    db $46,$18,$D0,$6C,$46,$18,$E0,$6C
                    db $06,$18,$F0,$6E,$06,$FF,$D8,$D0
                    db $0A,$06,$D8,$E0,$08,$06,$E8,$C0
                    db $28,$06,$E8,$D0,$0C,$06,$E8,$E0
                    db $34,$06,$E8,$E0,$2A,$46,$E8,$F0
                    db $28,$46,$F0,$E0,$44,$06,$F8,$C0
                    db $48,$06,$F8,$F0,$48,$46,$00,$D0
                    db $3C,$06,$00,$E0,$64,$06,$F8,$D0
                    db $2C,$06,$F8,$E0,$4A,$46,$08,$C0
                    db $68,$06,$08,$D0,$6A,$06,$08,$E0
                    db $6A,$46,$08,$F0,$68,$46,$18,$C0
                    db $6E,$46,$18,$D0,$6C,$46,$18,$E0
                    db $6C,$06,$18,$F0,$6E,$06,$FF,$D8
                    db $D0,$0A,$06,$D8,$E0,$08,$06,$E8
                    db $C0,$28,$06,$E8,$D0,$0C,$06,$E8
                    db $E0,$34,$06,$E8,$E0,$2A,$46,$E8
                    db $F0,$28,$46,$F0,$E0,$44,$06,$F8
                    db $C0,$48,$06,$F8,$F0,$48,$46,$00
                    db $D0,$3C,$06,$00,$E0,$64,$06,$F8
                    db $D0,$2C,$06,$F8,$E0,$4A,$46,$08
                    db $C0,$68,$06,$08,$D0,$6A,$06,$08
                    db $E0,$6A,$46,$08,$F0,$68,$46,$18
                    db $C0,$6E,$46,$18,$D0,$6C,$46,$18
                    db $E0,$6C,$06,$18,$F0,$6E,$06,$FF

CODE_00D4CA:        A9 1E         LDA #$1E                  ;
CODE_00D4CC:        8D 87 02      STA $0287                 ;
CODE_00D4CF:        C2 20         REP #$20                  ;
CODE_00D4D1:        A9 00 08      LDA #$0800                ;
CODE_00D4D4:        8D 88 02      STA $0288                 ;
CODE_00D4D7:        A9 00 78      LDA #$7800                ;
CODE_00D4DA:        8D 8A 02      STA $028A                 ;
CODE_00D4DD:        AD 5F 07      LDA $075F                 ;
CODE_00D4E0:        29 FF 00      AND #$00FF                ;
CODE_00D4E3:        C9 07 00      CMP #$0007                ;
CODE_00D4E6:        D0 05         BNE CODE_00D4ED           ;
CODE_00D4E8:        A9 00 D0      LDA #$D000                ;
CODE_00D4EB:        80 03         BRA CODE_00D4F0           ;

CODE_00D4ED:        A9 00 C0      LDA #$C000                ;
CODE_00D4F0:        8D 85 02      STA $0285                 ;
CODE_00D4F3:        E2 20         SEP #$20                  ;
CODE_00D4F5:        9C 7D 0F      STZ $0F7D                 ;
CODE_00D4F8:        9C 7E 0F      STZ $0F7E                 ;
CODE_00D4FB:        9C 7F 0F      STZ $0F7F                 ;
CODE_00D4FE:        9C 9C 0B      STZ $0B9C                 ;
CODE_00D501:        A9 02         LDA #$02                  ;
CODE_00D503:        8D 76 0B      STA $0B76                 ;
CODE_00D506:        6B            RTL                       ;

CODE_00D507:        DA            PHX                       ;
CODE_00D508:        A9 1E         LDA #$1E                  ;
CODE_00D50A:        8D 87 02      STA $0287                 ;
CODE_00D50D:        C2 20         REP #$20                  ;
CODE_00D50F:        A9 00 08      LDA #$0800                ;
CODE_00D512:        8D 88 02      STA $0288                 ;
CODE_00D515:        A9 00 7C      LDA #$7C00                ;
CODE_00D518:        8D 8A 02      STA $028A                 ;
CODE_00D51B:        AD 5F 07      LDA $075F                 ;
CODE_00D51E:        29 FF 00      AND #$00FF                ;
CODE_00D521:        0A            ASL A                     ;
CODE_00D522:        AA            TAX                       ;
CODE_00D523:        BF 5A D5 00   LDA $00D55A,x             ;
CODE_00D527:        8D 85 02      STA $0285                 ;
CODE_00D52A:        E2 20         SEP #$20                  ;
CODE_00D52C:        FA            PLX                       ;
CODE_00D52D:        6B            RTL                       ;

CODE_00D52E:        A9 80         LDA #$80                  ;
CODE_00D530:        8D 15 21      STA $2115                 ;
CODE_00D533:        C2 20         REP #$20                  ;
CODE_00D535:        A9 00 60      LDA #$6000                ;
CODE_00D538:        8D 16 21      STA $2116                 ;
CODE_00D53B:        A9 01 18      LDA #$1801                ;
CODE_00D53E:        8D 00 43      STA $4300                 ;
CODE_00D541:        A9 00 80      LDA #$8000                ;
CODE_00D544:        8D 02 43      STA $4302                 ;
CODE_00D547:        A2 07         LDX #$07                  ;
CODE_00D549:        8E 04 43      STX $4304                 ;
CODE_00D54C:        A9 00 40      LDA #$4000                ;
CODE_00D54F:        8D 05 43      STA $4305                 ;
CODE_00D552:        A2 01         LDX #$01                  ;
CODE_00D554:        8E 0B 42      STX $420B                 ;
CODE_00D557:        E2 20         SEP #$20                  ;
CODE_00D559:        6B            RTL                       ;

DATA_00D55A:        dw $C800,$C800,$C800,$C800
                    dw $E800,$E000,$E000,$D000
                    dw $C800,$E800,$E000,$E000
                    dw $D000,$D000,$D000,$D000

CODE_00D57A:        AD 7E 0F      LDA $0F7E                 ;
CODE_00D57D:        F0 03         BEQ CODE_00D582           ;
CODE_00D57F:        4C 26 D6      JMP CODE_00D626           ;

CODE_00D582:        A5 09         LDA $09                   ;
CODE_00D584:        29 07         AND #$07                  ;
CODE_00D586:        F0 05         BEQ CODE_00D58D           ;
CODE_00D588:        AD 7D 0F      LDA $0F7D                 ;
CODE_00D58B:        80 22         BRA CODE_00D5AF           ;

CODE_00D58D:        EE 7D 0F      INC $0F7D                 ;
CODE_00D590:        AD 7D 0F      LDA $0F7D                 ;
CODE_00D593:        C9 03         CMP #$03                  ;
CODE_00D595:        90 18         BCC CODE_00D5AF           ;
CODE_00D597:        AD B9 07      LDA $07B9                 ;
CODE_00D59A:        4D BA 07      EOR $07BA                 ;
CODE_00D59D:        29 01         AND #$01                  ;
CODE_00D59F:        D0 09         BNE CODE_00D5AA           ;
CODE_00D5A1:        A9 03         LDA #$03                  ;
CODE_00D5A3:        8D 7D 0F      STA $0F7D                 ;
CODE_00D5A6:        A9 01         LDA #$01                  ;
CODE_00D5A8:        80 05         BRA CODE_00D5AF           ;

CODE_00D5AA:        A9 00         LDA #$00                  ;
CODE_00D5AC:        8D 7D 0F      STA $0F7D                 ;
CODE_00D5AF:        85 00         STA $00                   ;
CODE_00D5B1:        A5 79         LDA $79                   ;
CODE_00D5B3:        EB            XBA                       ;
CODE_00D5B4:        AD 1A 02      LDA $021A                 ;
CODE_00D5B7:        A0 00         LDY #$00                  ;
CODE_00D5B9:        20 FD E4      JSR CODE_00E4FD           ;
CODE_00D5BC:        A5 79         LDA $79                   ;
CODE_00D5BE:        EB            XBA                       ;
CODE_00D5BF:        AD 1A 02      LDA $021A                 ;
CODE_00D5C2:        C2 20         REP #$20                  ;
CODE_00D5C4:        18            CLC                       ;
CODE_00D5C5:        69 08 00      ADC #$0008                ;
CODE_00D5C8:        E2 20         SEP #$20                  ;
CODE_00D5CA:        A0 04         LDY #$04                  ;
CODE_00D5CC:        20 FD E4      JSR CODE_00E4FD           ;
CODE_00D5CF:        A5 00         LDA $00                   ;
CODE_00D5D1:        C9 02         CMP #$02                  ;
CODE_00D5D3:        F0 2D         BEQ CODE_00D602           ;
CODE_00D5D5:        C9 00         CMP #$00                  ;
CODE_00D5D7:        D0 04         BNE CODE_00D5DD           ;
CODE_00D5D9:        A9 83         LDA #$83                  ;
CODE_00D5DB:        80 02         BRA CODE_00D5DF           ;

CODE_00D5DD:        A9 80         LDA #$80                  ;
CODE_00D5DF:        8D 02 09      STA $0902                 ;
CODE_00D5E2:        1A            INC A                     ;
CODE_00D5E3:        8D 06 09      STA $0906                 ;
CODE_00D5E6:        18            CLC                       ;
CODE_00D5E7:        69 1F         ADC #$1F                  ;
CODE_00D5E9:        8D 0A 09      STA $090A                 ;
CODE_00D5EC:        1A            INC A                     ;
CODE_00D5ED:        8D 0E 09      STA $090E                 ;
CODE_00D5F0:        A9 B0         LDA #$B0                  ;
CODE_00D5F2:        8D 01 09      STA $0901                 ;
CODE_00D5F5:        8D 05 09      STA $0905                 ;
CODE_00D5F8:        A9 C0         LDA #$C0                  ;
CODE_00D5FA:        8D 09 09      STA $0909                 ;
CODE_00D5FD:        8D 0D 09      STA $090D                 ;
CODE_00D600:        80 23         BRA CODE_00D625           ;

CODE_00D602:        A9 86         LDA #$86                  ;
CODE_00D604:        8D 02 09      STA $0902                 ;
CODE_00D607:        1A            INC A                     ;
CODE_00D608:        8D 06 09      STA $0906                 ;
CODE_00D60B:        18            CLC                       ;
CODE_00D60C:        69 0F         ADC #$0F                  ;
CODE_00D60E:        8D 0A 09      STA $090A                 ;
CODE_00D611:        1A            INC A                     ;
CODE_00D612:        8D 0E 09      STA $090E                 ;
CODE_00D615:        A9 B8         LDA #$B8                  ;
CODE_00D617:        8D 01 09      STA $0901                 ;
CODE_00D61A:        8D 05 09      STA $0905                 ;
CODE_00D61D:        A9 C0         LDA #$C0                  ;
CODE_00D61F:        8D 09 09      STA $0909                 ;
CODE_00D622:        8D 0D 09      STA $090D                 ;
CODE_00D625:        6B            RTL                       ;

CODE_00D626:        8B            PHB                       ;
CODE_00D627:        4B            PHK                       ;
CODE_00D628:        AB            PLB                       ;
CODE_00D629:        DA            PHX                       ;
CODE_00D62A:        5A            PHY                       ;
CODE_00D62B:        AD 5F 07      LDA $075F                 ;
CODE_00D62E:        0A            ASL A                     ;
CODE_00D62F:        AA            TAX                       ;
CODE_00D630:        AD 9C 0B      LDA $0B9C                 ;
CODE_00D633:        D0 03         BNE CODE_00D638           ;
CODE_00D635:        20 A4 E3      JSR CODE_00E3A4           ;
CODE_00D638:        BD 45 D6      LDA $D645,x               ;
CODE_00D63B:        85 00         STA $00                   ;
CODE_00D63D:        BD 46 D6      LDA $D646,x               ;
CODE_00D640:        85 01         STA $01                   ;
CODE_00D642:        6C 00 00      JMP ($0000)               ;

PNTR_00D645:        dw CODE_00D661
                    dw CODE_00D6E4
                    dw CODE_00D785
                    dw CODE_00D95A
                    dw CODE_00DBA1
                    dw CODE_00DDFA
                    dw CODE_00E096
                    dw CODE_00D661
                    dw CODE_00D661
                    dw CODE_00DBA1
                    dw CODE_00DDFA
                    dw CODE_00E096
                    dw CODE_00D661

DATA_00D65F:        db $90,$00

CODE_00D661:        20 7B E2      JSR CODE_00E27B           ;
CODE_00D664:        AD 7F 0F      LDA $0F7F                 ;
CODE_00D667:        D0 03         BNE CODE_00D66C           ;
CODE_00D669:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D66C:        C9 03         CMP #$03                  ;
CODE_00D66E:        D0 4B         BNE CODE_00D6BB           ;
CODE_00D670:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D673:        D0 46         BNE CODE_00D6BB           ;
CODE_00D675:        20 66 E5      JSR CODE_00E566           ;
CODE_00D678:        A9 20         LDA #$20                  ;
CODE_00D67A:        85 00         STA $00                   ;
CODE_00D67C:        A9 04         LDA #$04                  ;
CODE_00D67E:        85 02         STA $02                   ;
CODE_00D680:        A2 01         LDX #$01                  ;
CODE_00D682:        A9 00         LDA #$00                  ;
CODE_00D684:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00D688:        AD 38 02      LDA $0238                 ;
CODE_00D68B:        C9 B0         CMP #$B0                  ;
CODE_00D68D:        B0 08         BCS CODE_00D697           ;
CODE_00D68F:        A9 01         LDA #$01                  ;
CODE_00D691:        8D 9D 0B      STA $0B9D                 ;
CODE_00D694:        AD 38 02      LDA $0238                 ;
CODE_00D697:        C9 B8         CMP #$B8                  ;
CODE_00D699:        90 20         BCC CODE_00D6BB           ;
CODE_00D69B:        A9 B8         LDA #$B8                  ;
CODE_00D69D:        8D 38 02      STA $0238                 ;
CODE_00D6A0:        A9 FE         LDA #$FE                  ;
CODE_00D6A2:        8D A1 00      STA $00A1                 ;
CODE_00D6A5:        9C 3D 04      STZ $043D                 ;
CODE_00D6A8:        9C 1D 04      STZ $041D                 ;
CODE_00D6AB:        A9 00         LDA #$00                  ;
CODE_00D6AD:        8D 9E 0B      STA $0B9E                 ;
CODE_00D6B0:        A9 18         LDA #$18                  ;
CODE_00D6B2:        8D 9F 0B      STA $0B9F                 ;
CODE_00D6B5:        9C A4 0B      STZ $0BA4                 ;
CODE_00D6B8:        20 29 E5      JSR CODE_00E529           ;
CODE_00D6BB:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D6BE:        D0 07         BNE CODE_00D6C7           ;
CODE_00D6C0:        A9 01         LDA #$01                  ;
CODE_00D6C2:        8D 9E 0B      STA $0B9E                 ;
CODE_00D6C5:        80 03         BRA CODE_00D6CA           ;

CODE_00D6C7:        CE 9F 0B      DEC $0B9F                 ;
CODE_00D6CA:        AD AE 03      LDA $03AE                 ;
CODE_00D6CD:        85 00         STA $00                   ;
CODE_00D6CF:        AD 38 02      LDA $0238                 ;
CODE_00D6D2:        85 01         STA $01                   ;
CODE_00D6D4:        AC 9D 0B      LDY $0B9D                 ;
CODE_00D6D7:        B9 5F D6      LDA $D65F,y               ;
CODE_00D6DA:        A8            TAY                       ;
CODE_00D6DB:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D6DE:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D6E1:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D6E4:        20 7B E2      JSR CODE_00E27B           ;
CODE_00D6E7:        AD 7F 0F      LDA $0F7F                 ;
CODE_00D6EA:        D0 03         BNE CODE_00D6EF           ;
CODE_00D6EC:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D6EF:        C9 03         CMP #$03                  ;
CODE_00D6F1:        D0 5C         BNE CODE_00D74F           ;
CODE_00D6F3:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D6F6:        D0 54         BNE CODE_00D74C           ;
CODE_00D6F8:        AD 9C 0B      LDA $0B9C                 ;
CODE_00D6FB:        C9 02         CMP #$02                  ;
CODE_00D6FD:        D0 05         BNE CODE_00D704           ;
CODE_00D6FF:        8D 9E 0B      STA $0B9E                 ;
CODE_00D702:        80 4B         BRA CODE_00D74F           ;

CODE_00D704:        20 66 E5      JSR CODE_00E566           ;
CODE_00D707:        A9 01         LDA #$01                  ;
CODE_00D709:        8D 9E 0B      STA $0B9E                 ;
CODE_00D70C:        A9 20         LDA #$20                  ;
CODE_00D70E:        85 00         STA $00                   ;
CODE_00D710:        A9 04         LDA #$04                  ;
CODE_00D712:        85 02         STA $02                   ;
CODE_00D714:        A2 01         LDX #$01                  ;
CODE_00D716:        A9 00         LDA #$00                  ;
CODE_00D718:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00D71C:        AD 38 02      LDA $0238                 ;
CODE_00D71F:        C9 B0         CMP #$B0                  ;
CODE_00D721:        B0 08         BCS CODE_00D72B           ;
CODE_00D723:        A9 01         LDA #$01                  ;
CODE_00D725:        8D 9D 0B      STA $0B9D                 ;
CODE_00D728:        AD 38 02      LDA $0238                 ;
CODE_00D72B:        C9 B8         CMP #$B8                  ;
CODE_00D72D:        90 20         BCC CODE_00D74F           ;
CODE_00D72F:        A9 B8         LDA #$B8                  ;
CODE_00D731:        8D 38 02      STA $0238                 ;
CODE_00D734:        9C A1 00      STZ $00A1                 ;
CODE_00D737:        9C 3D 04      STZ $043D                 ;
CODE_00D73A:        9C 1D 04      STZ $041D                 ;
CODE_00D73D:        A9 28         LDA #$28                  ;
CODE_00D73F:        8D 9F 0B      STA $0B9F                 ;
CODE_00D742:        A9 02         LDA #$02                  ;
CODE_00D744:        8D 9C 0B      STA $0B9C                 ;
CODE_00D747:        A9 00         LDA #$00                  ;
CODE_00D749:        8D 9E 0B      STA $0B9E                 ;
CODE_00D74C:        CE 9F 0B      DEC $0B9F                 ;
CODE_00D74F:        AD AE 03      LDA $03AE                 ;
CODE_00D752:        85 00         STA $00                   ;
CODE_00D754:        AD 38 02      LDA $0238                 ;
CODE_00D757:        85 01         STA $01                   ;
CODE_00D759:        AC 9D 0B      LDY $0B9D                 ;
CODE_00D75C:        B9 5F D6      LDA $D65F,y               ;
CODE_00D75F:        A8            TAY                       ;
CODE_00D760:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D763:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D766:        98            TYA                       ;
CODE_00D767:        18            CLC                       ;
CODE_00D768:        69 10         ADC #$10                  ;
CODE_00D76A:        A8            TAY                       ;
CODE_00D76B:        AD AE 03      LDA $03AE                 ;
CODE_00D76E:        18            CLC                       ;
CODE_00D76F:        69 10         ADC #$10                  ;
CODE_00D771:        85 00         STA $00                   ;
CODE_00D773:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D776:        C9 02         CMP #$02                  ;
CODE_00D778:        D0 05         BNE CODE_00D77F           ;
CODE_00D77A:        20 29 E5      JSR CODE_00E529           ;
CODE_00D77D:        A9 03         LDA #$03                  ;
CODE_00D77F:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D782:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D785:        20 7B E2      JSR CODE_00E27B           ;
CODE_00D788:        AD 7F 0F      LDA $0F7F                 ;
CODE_00D78B:        D0 03         BNE CODE_00D790           ;
CODE_00D78D:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D790:        C9 03         CMP #$03                  ;
CODE_00D792:        F0 03         BEQ CODE_00D797           ;
CODE_00D794:        4C 17 D8      JMP CODE_00D817           ;

CODE_00D797:        AD A0 0B      LDA $0BA0                 ;
CODE_00D79A:        C9 28         CMP #$28                  ;
CODE_00D79C:        90 76         BCC CODE_00D814           ;
CODE_00D79E:        C9 50         CMP #$50                  ;
CODE_00D7A0:        90 5B         BCC CODE_00D7FD           ;
CODE_00D7A2:        C9 58         CMP #$58                  ;
CODE_00D7A4:        90 51         BCC CODE_00D7F7           ;
CODE_00D7A6:        20 66 E5      JSR CODE_00E566           ;
CODE_00D7A9:        A9 20         LDA #$20                  ;
CODE_00D7AB:        85 00         STA $00                   ;
CODE_00D7AD:        A9 04         LDA #$04                  ;
CODE_00D7AF:        85 02         STA $02                   ;
CODE_00D7B1:        A2 01         LDX #$01                  ;
CODE_00D7B3:        A9 00         LDA #$00                  ;
CODE_00D7B5:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00D7B9:        A9 01         LDA #$01                  ;
CODE_00D7BB:        8D 9E 0B      STA $0B9E                 ;
CODE_00D7BE:        AD 38 02      LDA $0238                 ;
CODE_00D7C1:        C9 B0         CMP #$B0                  ;
CODE_00D7C3:        B0 07         BCS CODE_00D7CC           ;
CODE_00D7C5:        A9 01         LDA #$01                  ;
CODE_00D7C7:        8D 9D 0B      STA $0B9D                 ;
CODE_00D7CA:        80 1D         BRA CODE_00D7E9           ;

CODE_00D7CC:        C9 B8         CMP #$B8                  ;
CODE_00D7CE:        90 19         BCC CODE_00D7E9           ;
CODE_00D7D0:        9C A1 00      STZ $00A1                 ;
CODE_00D7D3:        9C 3D 04      STZ $043D                 ;
CODE_00D7D6:        9C 1D 04      STZ $041D                 ;
CODE_00D7D9:        A9 B8         LDA #$B8                  ;
CODE_00D7DB:        8D 38 02      STA $0238                 ;
CODE_00D7DE:        9C 9E 0B      STZ $0B9E                 ;
CODE_00D7E1:        A9 01         LDA #$01                  ;
CODE_00D7E3:        8D 9F 0B      STA $0B9F                 ;
CODE_00D7E6:        20 29 E5      JSR CODE_00E529           ;
CODE_00D7E9:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D7EC:        D0 09         BNE CODE_00D7F7           ;
CODE_00D7EE:        A5 09         LDA $09                   ;
CODE_00D7F0:        29 01         AND #$01                  ;
CODE_00D7F2:        D0 03         BNE CODE_00D7F7           ;
CODE_00D7F4:        EE 1D 02      INC $021D                 ;
CODE_00D7F7:        20 31 D8      JSR CODE_00D831           ;
CODE_00D7FA:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D7FD:        A0 A0         LDY #$A0                  ;
CODE_00D7FF:        C9 2C         CMP #$2C                  ;
CODE_00D801:        90 0E         BCC CODE_00D811           ;
CODE_00D803:        C9 30         CMP #$30                  ;
CODE_00D805:        90 05         BCC CODE_00D80C           ;
CODE_00D807:        20 91 D8      JSR CODE_00D891           ;
CODE_00D80A:        80 08         BRA CODE_00D814           ;

CODE_00D80C:        20 ED D8      JSR CODE_00D8ED           ;
CODE_00D80F:        80 03         BRA CODE_00D814           ;

CODE_00D811:        20 24 D9      JSR CODE_00D924           ;
CODE_00D814:        EE A0 0B      INC $0BA0                 ;
CODE_00D817:        AD AE 03      LDA $03AE                 ;
CODE_00D81A:        85 00         STA $00                   ;
CODE_00D81C:        AD 38 02      LDA $0238                 ;
CODE_00D81F:        85 01         STA $01                   ;
CODE_00D821:        AC 9D 0B      LDY $0B9D                 ;
CODE_00D824:        B9 5F D6      LDA $D65F,y               ;
CODE_00D827:        A8            TAY                       ;
CODE_00D828:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D82B:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D82E:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D831:        AD AE 03      LDA $03AE                 ;
CODE_00D834:        85 00         STA $00                   ;
CODE_00D836:        AD 38 02      LDA $0238                 ;
CODE_00D839:        85 01         STA $01                   ;
CODE_00D83B:        AC 9D 0B      LDY $0B9D                 ;
CODE_00D83E:        B9 5F D6      LDA $D65F,y               ;
CODE_00D841:        A8            TAY                       ;
CODE_00D842:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D845:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D848:        98            TYA                       ;
CODE_00D849:        18            CLC                       ;
CODE_00D84A:        69 10         ADC #$10                  ;
CODE_00D84C:        A8            TAY                       ;
CODE_00D84D:        AD AE 03      LDA $03AE                 ;
CODE_00D850:        38            SEC                       ;
CODE_00D851:        ED 1D 02      SBC $021D                 ;
CODE_00D854:        38            SEC                       ;
CODE_00D855:        E9 07         SBC #$07                  ;
CODE_00D857:        85 00         STA $00                   ;
CODE_00D859:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D85C:        3A            DEC A                     ;
CODE_00D85D:        F0 06         BEQ CODE_00D865           ;
CODE_00D85F:        A9 04         LDA #$04                  ;
CODE_00D861:        18            CLC                       ;
CODE_00D862:        6D 9E 0B      ADC $0B9E                 ;
CODE_00D865:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D868:        98            TYA                       ;
CODE_00D869:        18            CLC                       ;
CODE_00D86A:        69 10         ADC #$10                  ;
CODE_00D86C:        A8            TAY                       ;
CODE_00D86D:        AD AE 03      LDA $03AE                 ;
CODE_00D870:        18            CLC                       ;
CODE_00D871:        6D 1D 02      ADC $021D                 ;
CODE_00D874:        18            CLC                       ;
CODE_00D875:        69 07         ADC #$07                  ;
CODE_00D877:        85 00         STA $00                   ;
CODE_00D879:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D87C:        3A            DEC A                     ;
CODE_00D87D:        F0 06         BEQ CODE_00D885           ;
CODE_00D87F:        A9 06         LDA #$06                  ;
CODE_00D881:        18            CLC                       ;
CODE_00D882:        6D 9E 0B      ADC $0B9E                 ;
CODE_00D885:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D888:        AD A0 0B      LDA $0BA0                 ;
CODE_00D88B:        30 03         BMI CODE_00D890           ;
CODE_00D88D:        EE A0 0B      INC $0BA0                 ;
CODE_00D890:        60            RTS                       ;

CODE_00D891:        AD 38 02      LDA $0238                 ;
CODE_00D894:        1A            INC A                     ;
CODE_00D895:        99 05 09      STA $0905,y               ;
CODE_00D898:        99 0D 09      STA $090D,y               ;
CODE_00D89B:        18            CLC                       ;
CODE_00D89C:        69 07         ADC #$07                  ;
CODE_00D89E:        99 01 09      STA $0901,y               ;
CODE_00D8A1:        99 09 09      STA $0909,y               ;
CODE_00D8A4:        AD AE 03      LDA $03AE                 ;
CODE_00D8A7:        38            SEC                       ;
CODE_00D8A8:        E9 0D         SBC #$0D                  ;
CODE_00D8AA:        99 04 09      STA $0904,y               ;
CODE_00D8AD:        3A            DEC A                     ;
CODE_00D8AE:        99 00 09      STA $0900,y               ;
CODE_00D8B1:        AD AE 03      LDA $03AE                 ;
CODE_00D8B4:        18            CLC                       ;
CODE_00D8B5:        69 0D         ADC #$0D                  ;
CODE_00D8B7:        99 0C 09      STA $090C,y               ;
CODE_00D8BA:        1A            INC A                     ;
CODE_00D8BB:        99 08 09      STA $0908,y               ;
CODE_00D8BE:        A9 E0         LDA #$E0                  ;
CODE_00D8C0:        99 06 09      STA $0906,y               ;
CODE_00D8C3:        99 0E 09      STA $090E,y               ;
CODE_00D8C6:        A9 CE         LDA #$CE                  ;
CODE_00D8C8:        99 02 09      STA $0902,y               ;
CODE_00D8CB:        99 0A 09      STA $090A,y               ;
CODE_00D8CE:        A9 2D         LDA #$2D                  ;
CODE_00D8D0:        99 0B 09      STA $090B,y               ;
CODE_00D8D3:        99 0F 09      STA $090F,y               ;
CODE_00D8D6:        A9 6D         LDA #$6D                  ;
CODE_00D8D8:        99 03 09      STA $0903,y               ;
CODE_00D8DB:        99 07 09      STA $0907,y               ;
CODE_00D8DE:        A9 02         LDA #$02                  ;
CODE_00D8E0:        99 00 0D      STA $0D00,y               ;
CODE_00D8E3:        99 04 0D      STA $0D04,y               ;
CODE_00D8E6:        99 08 0D      STA $0D08,y               ;
CODE_00D8E9:        99 0C 0D      STA $0D0C,y               ;
CODE_00D8EC:        60            RTS                       ;

CODE_00D8ED:        AD AE 03      LDA $03AE                 ;
CODE_00D8F0:        38            SEC                       ;
CODE_00D8F1:        E9 09         SBC #$09                  ;
CODE_00D8F3:        99 00 09      STA $0900,y               ;
CODE_00D8F6:        AD AE 03      LDA $03AE                 ;
CODE_00D8F9:        18            CLC                       ;
CODE_00D8FA:        69 09         ADC #$09                  ;
CODE_00D8FC:        99 04 09      STA $0904,y               ;
CODE_00D8FF:        AD 38 02      LDA $0238                 ;
CODE_00D902:        1A            INC A                     ;
CODE_00D903:        99 01 09      STA $0901,y               ;
CODE_00D906:        99 05 09      STA $0905,y               ;
CODE_00D909:        A9 E0         LDA #$E0                  ;
CODE_00D90B:        99 02 09      STA $0902,y               ;
CODE_00D90E:        99 06 09      STA $0906,y               ;
CODE_00D911:        A9 6D         LDA #$6D                  ;
CODE_00D913:        99 03 09      STA $0903,y               ;
CODE_00D916:        A9 2D         LDA #$2D                  ;
CODE_00D918:        99 07 09      STA $0907,y               ;
CODE_00D91B:        A9 02         LDA #$02                  ;
CODE_00D91D:        99 00 0D      STA $0D00,y               ;
CODE_00D920:        99 04 0D      STA $0D04,y               ;
CODE_00D923:        60            RTS                       ;

CODE_00D924:        AD AE 03      LDA $03AE                 ;
CODE_00D927:        38            SEC                       ;
CODE_00D928:        E9 05         SBC #$05                  ;
CODE_00D92A:        99 00 09      STA $0900,y               ;
CODE_00D92D:        AD AE 03      LDA $03AE                 ;
CODE_00D930:        18            CLC                       ;
CODE_00D931:        69 05         ADC #$05                  ;
CODE_00D933:        99 04 09      STA $0904,y               ;
CODE_00D936:        AD 38 02      LDA $0238                 ;
CODE_00D939:        99 01 09      STA $0901,y               ;
CODE_00D93C:        99 05 09      STA $0905,y               ;
CODE_00D93F:        A9 E0         LDA #$E0                  ;
CODE_00D941:        99 02 09      STA $0902,y               ;
CODE_00D944:        99 06 09      STA $0906,y               ;
CODE_00D947:        A9 6D         LDA #$6D                  ;
CODE_00D949:        99 03 09      STA $0903,y               ;
CODE_00D94C:        A9 2D         LDA #$2D                  ;
CODE_00D94E:        99 07 09      STA $0907,y               ;
CODE_00D951:        A9 02         LDA #$02                  ;
CODE_00D953:        99 00 0D      STA $0D00,y               ;
CODE_00D956:        99 04 0D      STA $0D04,y               ;
CODE_00D959:        60            RTS                       ;

CODE_00D95A:        20 7B E2      JSR CODE_00E27B           ;
CODE_00D95D:        AD 7F 0F      LDA $0F7F                 ;
CODE_00D960:        D0 03         BNE CODE_00D965           ;
CODE_00D962:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D965:        EE 9F 0B      INC $0B9F                 ;
CODE_00D968:        AD 9F 0B      LDA $0B9F                 ;
CODE_00D96B:        C9 C0         CMP #$C0                  ;
CODE_00D96D:        90 18         BCC CODE_00D987           ;
CODE_00D96F:        A9 C0         LDA #$C0                  ;
CODE_00D971:        8D 9F 0B      STA $0B9F                 ;
CODE_00D974:        A9 02         LDA #$02                  ;
CODE_00D976:        8D 9C 0B      STA $0B9C                 ;
CODE_00D979:        A9 01         LDA #$01                  ;
CODE_00D97B:        8D B8 0B      STA $0BB8                 ;
CODE_00D97E:        8D B9 0B      STA $0BB9                 ;
CODE_00D981:        8D BA 0B      STA $0BBA                 ;
CODE_00D984:        8D BB 0B      STA $0BBB                 ;
CODE_00D987:        9C 67 0E      STZ $0E67                 ;
CODE_00D98A:        AD B4 0B      LDA $0BB4                 ;
CODE_00D98D:        D0 13         BNE CODE_00D9A2           ;
CODE_00D98F:        AD 9C 0B      LDA $0B9C                 ;
CODE_00D992:        C9 02         CMP #$02                  ;
CODE_00D994:        F0 06         BEQ CODE_00D99C           ;
CODE_00D996:        20 AB DA      JSR CODE_00DAAB           ;
CODE_00D999:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D99C:        20 D7 D9      JSR CODE_00D9D7           ;
CODE_00D99F:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D9A2:        AD A1 0B      LDA $0BA1                 ;
CODE_00D9A5:        F0 07         BEQ CODE_00D9AE           ;
CODE_00D9A7:        CE A1 0B      DEC $0BA1                 ;
CODE_00D9AA:        A9 00         LDA #$00                  ;
CODE_00D9AC:        80 05         BRA CODE_00D9B3           ;

CODE_00D9AE:        20 29 E5      JSR CODE_00E529           ;
CODE_00D9B1:        A9 02         LDA #$02                  ;
CODE_00D9B3:        8D 9E 0B      STA $0B9E                 ;
CODE_00D9B6:        A2 03         LDX #$03                  ;
CODE_00D9B8:        A0 00         LDY #$00                  ;
CODE_00D9BA:        BD B0 0B      LDA $0BB0,x               ;
CODE_00D9BD:        85 00         STA $00                   ;
CODE_00D9BF:        A9 B8         LDA #$B8                  ;
CODE_00D9C1:        85 01         STA $01                   ;
CODE_00D9C3:        AD 9E 0B      LDA $0B9E                 ;
CODE_00D9C6:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00D9C9:        98            TYA                       ;
CODE_00D9CA:        18            CLC                       ;
CODE_00D9CB:        69 10         ADC #$10                  ;
CODE_00D9CD:        A8            TAY                       ;
CODE_00D9CE:        8C 67 0E      STY $0E67                 ;
CODE_00D9D1:        CA            DEX                       ;
CODE_00D9D2:        10 E6         BPL CODE_00D9BA           ;
CODE_00D9D4:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00D9D7:        20 66 E5      JSR CODE_00E566           ;
CODE_00D9DA:        A9 20         LDA #$20                  ;
CODE_00D9DC:        85 00         STA $00                   ;
CODE_00D9DE:        A9 04         LDA #$04                  ;
CODE_00D9E0:        85 02         STA $02                   ;
CODE_00D9E2:        A2 01         LDX #$01                  ;
CODE_00D9E4:        A9 00         LDA #$00                  ;
CODE_00D9E6:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00D9EA:        AD 38 02      LDA $0238                 ;
CODE_00D9ED:        C9 B0         CMP #$B0                  ;
CODE_00D9EF:        B0 05         BCS CODE_00D9F6           ;
CODE_00D9F1:        A9 01         LDA #$01                  ;
CODE_00D9F3:        8D 9D 0B      STA $0B9D                 ;
CODE_00D9F6:        AC 9D 0B      LDY $0B9D                 ;
CODE_00D9F9:        B9 5F D6      LDA $D65F,y               ;
CODE_00D9FC:        A8            TAY                       ;
CODE_00D9FD:        AD AE 03      LDA $03AE                 ;
CODE_00DA00:        85 00         STA $00                   ;
CODE_00DA02:        AD 38 02      LDA $0238                 ;
CODE_00DA05:        C9 B8         CMP #$B8                  ;
CODE_00DA07:        90 05         BCC CODE_00DA0E           ;
CODE_00DA09:        A9 B8         LDA #$B8                  ;
CODE_00DA0B:        9C B8 0B      STZ $0BB8                 ;
CODE_00DA0E:        85 01         STA $01                   ;
CODE_00DA10:        AD B8 0B      LDA $0BB8                 ;
CODE_00DA13:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00DA16:        AD B1 0B      LDA $0BB1                 ;
CODE_00DA19:        85 00         STA $00                   ;
CODE_00DA1B:        AD 38 02      LDA $0238                 ;
CODE_00DA1E:        38            SEC                       ;
CODE_00DA1F:        E9 0C         SBC #$0C                  ;
CODE_00DA21:        C9 B8         CMP #$B8                  ;
CODE_00DA23:        90 07         BCC CODE_00DA2C           ;
CODE_00DA25:        A9 B8         LDA #$B8                  ;
CODE_00DA27:        9C B9 0B      STZ $0BB9                 ;
CODE_00DA2A:        80 0E         BRA CODE_00DA3A           ;

CODE_00DA2C:        A5 09         LDA $09                   ;
CODE_00DA2E:        4A            LSR A                     ;
CODE_00DA2F:        90 03         BCC CODE_00DA34           ;
CODE_00DA31:        EE B1 0B      INC $0BB1                 ;
CODE_00DA34:        AD 38 02      LDA $0238                 ;
CODE_00DA37:        38            SEC                       ;
CODE_00DA38:        E9 0C         SBC #$0C                  ;
CODE_00DA3A:        85 01         STA $01                   ;
CODE_00DA3C:        98            TYA                       ;
CODE_00DA3D:        18            CLC                       ;
CODE_00DA3E:        69 10         ADC #$10                  ;
CODE_00DA40:        A8            TAY                       ;
CODE_00DA41:        AD B9 0B      LDA $0BB9                 ;
CODE_00DA44:        18            CLC                       ;
CODE_00DA45:        69 06         ADC #$06                  ;
CODE_00DA47:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00DA4A:        AD B2 0B      LDA $0BB2                 ;
CODE_00DA4D:        85 00         STA $00                   ;
CODE_00DA4F:        AD 38 02      LDA $0238                 ;
CODE_00DA52:        38            SEC                       ;
CODE_00DA53:        E9 18         SBC #$18                  ;
CODE_00DA55:        C9 B8         CMP #$B8                  ;
CODE_00DA57:        90 07         BCC CODE_00DA60           ;
CODE_00DA59:        A9 B8         LDA #$B8                  ;
CODE_00DA5B:        9C BA 0B      STZ $0BBA                 ;
CODE_00DA5E:        80 03         BRA CODE_00DA63           ;

CODE_00DA60:        CE B2 0B      DEC $0BB2                 ;
CODE_00DA63:        85 01         STA $01                   ;
CODE_00DA65:        98            TYA                       ;
CODE_00DA66:        18            CLC                       ;
CODE_00DA67:        69 10         ADC #$10                  ;
CODE_00DA69:        A8            TAY                       ;
CODE_00DA6A:        AD BA 0B      LDA $0BBA                 ;
CODE_00DA6D:        18            CLC                       ;
CODE_00DA6E:        69 04         ADC #$04                  ;
CODE_00DA70:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00DA73:        AD B3 0B      LDA $0BB3                 ;
CODE_00DA76:        85 00         STA $00                   ;
CODE_00DA78:        AD 38 02      LDA $0238                 ;
CODE_00DA7B:        38            SEC                       ;
CODE_00DA7C:        E9 24         SBC #$24                  ;
CODE_00DA7E:        C9 B8         CMP #$B8                  ;
CODE_00DA80:        90 15         BCC CODE_00DA97           ;
CODE_00DA82:        A9 B8         LDA #$B8                  ;
CODE_00DA84:        9C BB 0B      STZ $0BBB                 ;
CODE_00DA87:        EE B4 0B      INC $0BB4                 ;
CODE_00DA8A:        A9 28         LDA #$28                  ;
CODE_00DA8C:        8D A1 0B      STA $0BA1                 ;
CODE_00DA8F:        AD 38 02      LDA $0238                 ;
CODE_00DA92:        38            SEC                       ;
CODE_00DA93:        E9 24         SBC #$24                  ;
CODE_00DA95:        80 03         BRA CODE_00DA9A           ;

CODE_00DA97:        EE B3 0B      INC $0BB3                 ;
CODE_00DA9A:        85 01         STA $01                   ;
CODE_00DA9C:        98            TYA                       ;
CODE_00DA9D:        18            CLC                       ;
CODE_00DA9E:        69 10         ADC #$10                  ;
CODE_00DAA0:        A8            TAY                       ;
CODE_00DAA1:        AD BB 0B      LDA $0BBB                 ;
CODE_00DAA4:        18            CLC                       ;
CODE_00DAA5:        69 06         ADC #$06                  ;
CODE_00DAA7:        20 FC E1      JSR CODE_00E1FC           ;
CODE_00DAAA:        60            RTS                       ;

CODE_00DAAB:        A0 B0         LDY #$B0                  ;
CODE_00DAAD:        A2 00         LDX #$00                  ;
CODE_00DAAF:        AD AE 03      LDA $03AE                 ;
CODE_00DAB2:        99 00 09      STA $0900,y               ;
CODE_00DAB5:        BD 8F DB      LDA $DB8F,x               ;
CODE_00DAB8:        99 01 09      STA $0901,y               ;
CODE_00DABB:        BD 90 DB      LDA $DB90,x               ;
CODE_00DABE:        99 02 09      STA $0902,y               ;
CODE_00DAC1:        A9 2D         LDA #$2D                  ;
CODE_00DAC3:        99 03 09      STA $0903,y               ;
CODE_00DAC6:        A9 02         LDA #$02                  ;
CODE_00DAC8:        99 00 0D      STA $0D00,y               ;
CODE_00DACB:        C8            INY                       ;
CODE_00DACC:        C8            INY                       ;
CODE_00DACD:        C8            INY                       ;
CODE_00DACE:        C8            INY                       ;
CODE_00DACF:        E8            INX                       ;
CODE_00DAD0:        E8            INX                       ;
CODE_00DAD1:        E0 12         CPX #$12                  ;
CODE_00DAD3:        90 DA         BCC CODE_00DAAF           ;
CODE_00DAD5:        A9 6D         LDA #$6D                  ;
CODE_00DAD7:        8D C3 09      STA $09C3                 ;
CODE_00DADA:        9C C0 0D      STZ $0DC0                 ;
CODE_00DADD:        9C BC 0D      STZ $0DBC                 ;
CODE_00DAE0:        AD BC 09      LDA $09BC                 ;
CODE_00DAE3:        18            CLC                       ;
CODE_00DAE4:        69 08         ADC #$08                  ;
CODE_00DAE6:        8D C0 09      STA $09C0                 ;
CODE_00DAE9:        A2 00         LDX #$00                  ;
CODE_00DAEB:        BD 88 DB      LDA $DB88,x               ;
CODE_00DAEE:        CD 9F 0B      CMP $0B9F                 ;
CODE_00DAF1:        B0 05         BCS CODE_00DAF8           ;
CODE_00DAF3:        E8            INX                       ;
CODE_00DAF4:        E0 06         CPX #$06                  ;
CODE_00DAF6:        D0 F3         BNE CODE_00DAEB           ;
CODE_00DAF8:        8A            TXA                       ;
CODE_00DAF9:        0A            ASL A                     ;
CODE_00DAFA:        AA            TAX                       ;
CODE_00DAFB:        BD 7A DB      LDA $DB7A,x               ;
CODE_00DAFE:        85 00         STA $00                   ;
CODE_00DB00:        BD 7B DB      LDA $DB7B,x               ;
CODE_00DB03:        85 01         STA $01                   ;
CODE_00DB05:        A9 01         LDA #$01                  ;
CODE_00DB07:        6C 00 00      JMP ($0000)               ;

CODE_00DB0A:        8D B0 0D      STA $0DB0                 ;
CODE_00DB0D:        8D B4 0D      STA $0DB4                 ;
CODE_00DB10:        8D B8 0D      STA $0DB8                 ;
CODE_00DB13:        8D C8 0D      STA $0DC8                 ;
CODE_00DB16:        8D CC 0D      STA $0DCC                 ;
CODE_00DB19:        8D D0 0D      STA $0DD0                 ;
CODE_00DB1C:        60            RTS                       ;

CODE_00DB1D:        8D B0 0D      STA $0DB0                 ;
CODE_00DB20:        8D B4 0D      STA $0DB4                 ;
CODE_00DB23:        8D B8 0D      STA $0DB8                 ;
CODE_00DB26:        8D CC 0D      STA $0DCC                 ;
CODE_00DB29:        8D D0 0D      STA $0DD0                 ;
CODE_00DB2C:        A9 09         LDA #$09                  ;
CODE_00DB2E:        8D 00 16      STA $1600                 ;
CODE_00DB31:        60            RTS                       ;

CODE_00DB32:        8D B0 0D      STA $0DB0                 ;
CODE_00DB35:        8D B4 0D      STA $0DB4                 ;
CODE_00DB38:        8D C8 0D      STA $0DC8                 ;
CODE_00DB3B:        8D CC 0D      STA $0DCC                 ;
CODE_00DB3E:        8D D0 0D      STA $0DD0                 ;
CODE_00DB41:        60            RTS                       ;

CODE_00DB42:        8D B0 0D      STA $0DB0                 ;
CODE_00DB45:        8D B4 0D      STA $0DB4                 ;
CODE_00DB48:        8D C8 0D      STA $0DC8                 ;
CODE_00DB4B:        8D D0 0D      STA $0DD0                 ;
CODE_00DB4E:        A9 09         LDA #$09                  ;
CODE_00DB50:        8D 00 16      STA $1600                 ;
CODE_00DB53:        60            RTS                       ;

CODE_00DB54:        8D B0 0D      STA $0DB0                 ;
CODE_00DB57:        8D C8 0D      STA $0DC8                 ;
CODE_00DB5A:        8D CC 0D      STA $0DCC                 ;
CODE_00DB5D:        8D D0 0D      STA $0DD0                 ;
CODE_00DB60:        60            RTS                       ;

CODE_00DB61:        8D B0 0D      STA $0DB0                 ;
CODE_00DB64:        8D C8 0D      STA $0DC8                 ;
CODE_00DB67:        8D CC 0D      STA $0DCC                 ;
CODE_00DB6A:        A9 09         LDA #$09                  ;
CODE_00DB6C:        8D 00 16      STA $1600                 ;
CODE_00DB6F:        60            RTS                       ;

CODE_00DB70:        8D C8 0D      STA $0DC8                 ;
CODE_00DB73:        8D CC 0D      STA $0DCC                 ;
CODE_00DB76:        8D D0 0D      STA $0DD0                 ;
CODE_00DB79:        60            RTS                       ;

PNTR_00DB7A:        dw CODE_00DB0A
                    dw CODE_00DB1D
                    dw CODE_00DB32
                    dw CODE_00DB42
                    dw CODE_00DB54
                    dw CODE_00DB61
                    dw CODE_00DB70

DATA_00DB88:        db $40,$48,$58,$60,$70,$78,$BF,$97

DATA_00DB90:        db $EA,$A2,$EA,$AD,$EA,$B8,$B6,$B8
                    db $B6,$C0,$C9,$B3,$EA,$A8,$EA,$9D
                    db $EA 

CODE_00DBA1:        20 7B E2      JSR CODE_00E27B
CODE_00DBA4:        AD 7F 0F      LDA $0F7F                 ;
CODE_00DBA7:        D0 03         BNE CODE_00DBAC           ;
CODE_00DBA9:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DBAC:        20 66 E5      JSR CODE_00E566           ;
CODE_00DBAF:        A9 20         LDA #$20                  ;
CODE_00DBB1:        85 00         STA $00                   ;
CODE_00DBB3:        A9 04         LDA #$04                  ;
CODE_00DBB5:        85 02         STA $02                   ;
CODE_00DBB7:        A2 01         LDX #$01                  ;
CODE_00DBB9:        A9 00         LDA #$00                  ;
CODE_00DBBB:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00DBBF:        AD 38 02      LDA $0238                 ;
CODE_00DBC2:        C9 A0         CMP #$A0                  ;
CODE_00DBC4:        B0 05         BCS CODE_00DBCB           ;
CODE_00DBC6:        A9 01         LDA #$01                  ;
CODE_00DBC8:        8D 9D 0B      STA $0B9D                 ;
CODE_00DBCB:        AD 38 02      LDA $0238                 ;
CODE_00DBCE:        C9 B0         CMP #$B0                  ;
CODE_00DBD0:        90 1B         BCC CODE_00DBED           ;
CODE_00DBD2:        A9 B0         LDA #$B0                  ;
CODE_00DBD4:        8D 38 02      STA $0238                 ;
CODE_00DBD7:        9C 3D 04      STZ $043D                 ;
CODE_00DBDA:        9C 1C 04      STZ $041C                 ;
CODE_00DBDD:        EE 9E 0B      INC $0B9E                 ;
CODE_00DBE0:        AD 9E 0B      LDA $0B9E                 ;
CODE_00DBE3:        30 05         BMI CODE_00DBEA           ;
CODE_00DBE5:        A9 00         LDA #$00                  ;
CODE_00DBE7:        8D 9E 0B      STA $0B9E                 ;
CODE_00DBEA:        8D A1 00      STA $00A1                 ;
CODE_00DBED:        EE 9F 0B      INC $0B9F                 ;
CODE_00DBF0:        AD 9F 0B      LDA $0B9F                 ;
CODE_00DBF3:        C9 44         CMP #$44                  ;
CODE_00DBF5:        90 15         BCC CODE_00DC0C           ;
CODE_00DBF7:        D0 05         BNE CODE_00DBFE           ;
CODE_00DBF9:        A9 08         LDA #$08                  ;
CODE_00DBFB:        8D 00 16      STA $1600                 ;
CODE_00DBFE:        A9 45         LDA #$45                  ;
CODE_00DC00:        8D 9F 0B      STA $0B9F                 ;
CODE_00DC03:        20 12 DC      JSR CODE_00DC12           ;
CODE_00DC06:        20 29 E5      JSR CODE_00E529           ;
CODE_00DC09:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DC0C:        20 86 DD      JSR CODE_00DD86           ;
CODE_00DC0F:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DC12:        AD AE 03      LDA $03AE                 ;
CODE_00DC15:        18            CLC                       ;
CODE_00DC16:        6D 9F 0B      ADC $0B9F                 ;
CODE_00DC19:        85 00         STA $00                   ;
CODE_00DC1B:        18            CLC                       ;
CODE_00DC1C:        69 06         ADC #$06                  ;
CODE_00DC1E:        8D 00 09      STA $0900                 ;
CODE_00DC21:        18            CLC                       ;
CODE_00DC22:        69 10         ADC #$10                  ;
CODE_00DC24:        8D 04 09      STA $0904                 ;
CODE_00DC27:        A5 00         LDA $00                   ;
CODE_00DC29:        8D 10 09      STA $0910                 ;
CODE_00DC2C:        8D 18 09      STA $0918                 ;
CODE_00DC2F:        18            CLC                       ;
CODE_00DC30:        69 08         ADC #$08                  ;
CODE_00DC32:        8D 14 09      STA $0914                 ;
CODE_00DC35:        A5 00         LDA $00                   ;
CODE_00DC37:        18            CLC                       ;
CODE_00DC38:        69 1C         ADC #$1C                  ;
CODE_00DC3A:        8D 20 09      STA $0920                 ;
CODE_00DC3D:        8D 28 09      STA $0928                 ;
CODE_00DC40:        18            CLC                       ;
CODE_00DC41:        69 08         ADC #$08                  ;
CODE_00DC43:        8D 24 09      STA $0924                 ;
CODE_00DC46:        A5 00         LDA $00                   ;
CODE_00DC48:        18            CLC                       ;
CODE_00DC49:        69 06         ADC #$06                  ;
CODE_00DC4B:        8D 30 09      STA $0930                 ;
CODE_00DC4E:        8D 38 09      STA $0938                 ;
CODE_00DC51:        18            CLC                       ;
CODE_00DC52:        69 08         ADC #$08                  ;
CODE_00DC54:        8D 34 09      STA $0934                 ;
CODE_00DC57:        A5 00         LDA $00                   ;
CODE_00DC59:        18            CLC                       ;
CODE_00DC5A:        69 16         ADC #$16                  ;
CODE_00DC5C:        8D 40 09      STA $0940                 ;
CODE_00DC5F:        8D 48 09      STA $0948                 ;
CODE_00DC62:        18            CLC                       ;
CODE_00DC63:        69 08         ADC #$08                  ;
CODE_00DC65:        8D 44 09      STA $0944                 ;
CODE_00DC68:        A9 B8         LDA #$B8                  ;
CODE_00DC6A:        8D 11 09      STA $0911                 ;
CODE_00DC6D:        8D 15 09      STA $0915                 ;
CODE_00DC70:        8D 21 09      STA $0921                 ;
CODE_00DC73:        8D 25 09      STA $0925                 ;
CODE_00DC76:        8D 31 09      STA $0931                 ;
CODE_00DC79:        8D 35 09      STA $0935                 ;
CODE_00DC7C:        8D 41 09      STA $0941                 ;
CODE_00DC7F:        8D 45 09      STA $0945                 ;
CODE_00DC82:        A9 C0         LDA #$C0                  ;
CODE_00DC84:        8D 01 09      STA $0901                 ;
CODE_00DC87:        8D 05 09      STA $0905                 ;
CODE_00DC8A:        8D 19 09      STA $0919                 ;
CODE_00DC8D:        8D 29 09      STA $0929                 ;
CODE_00DC90:        8D 39 09      STA $0939                 ;
CODE_00DC93:        8D 49 09      STA $0949                 ;
CODE_00DC96:        A9 BE         LDA #$BE                  ;
CODE_00DC98:        8D 12 09      STA $0912                 ;
CODE_00DC9B:        8D 26 09      STA $0926                 ;
CODE_00DC9E:        A9 BF         LDA #$BF                  ;
CODE_00DCA0:        8D 16 09      STA $0916                 ;
CODE_00DCA3:        8D 22 09      STA $0922                 ;
CODE_00DCA6:        A9 EC         LDA #$EC                  ;
CODE_00DCA8:        8D 1A 09      STA $091A                 ;
CODE_00DCAB:        8D 2A 09      STA $092A                 ;
CODE_00DCAE:        A9 EA         LDA #$EA                  ;
CODE_00DCB0:        8D 02 09      STA $0902                 ;
CODE_00DCB3:        8D 06 09      STA $0906                 ;
CODE_00DCB6:        A9 B6         LDA #$B6                  ;
CODE_00DCB8:        8D 32 09      STA $0932                 ;
CODE_00DCBB:        8D 36 09      STA $0936                 ;
CODE_00DCBE:        8D 42 09      STA $0942                 ;
CODE_00DCC1:        8D 46 09      STA $0946                 ;
CODE_00DCC4:        A9 C9         LDA #$C9                  ;
CODE_00DCC6:        8D 3A 09      STA $093A                 ;
CODE_00DCC9:        8D 4A 09      STA $094A                 ;
CODE_00DCCC:        A9 2D         LDA #$2D                  ;
CODE_00DCCE:        8D 03 09      STA $0903                 ;
CODE_00DCD1:        8D 13 09      STA $0913                 ;
CODE_00DCD4:        8D 17 09      STA $0917                 ;
CODE_00DCD7:        8D 1B 09      STA $091B                 ;
CODE_00DCDA:        8D 33 09      STA $0933                 ;
CODE_00DCDD:        8D 3B 09      STA $093B                 ;
CODE_00DCE0:        8D 43 09      STA $0943                 ;
CODE_00DCE3:        8D 4B 09      STA $094B                 ;
CODE_00DCE6:        A9 6D         LDA #$6D                  ;
CODE_00DCE8:        8D 07 09      STA $0907                 ;
CODE_00DCEB:        8D 23 09      STA $0923                 ;
CODE_00DCEE:        8D 27 09      STA $0927                 ;
CODE_00DCF1:        8D 2B 09      STA $092B                 ;
CODE_00DCF4:        8D 37 09      STA $0937                 ;
CODE_00DCF7:        8D 47 09      STA $0947                 ;
CODE_00DCFA:        A9 02         LDA #$02                  ;
CODE_00DCFC:        8D 00 0D      STA $0D00                 ;
CODE_00DCFF:        8D 04 0D      STA $0D04                 ;
CODE_00DD02:        8D 18 0D      STA $0D18                 ;
CODE_00DD05:        8D 28 0D      STA $0D28                 ;
CODE_00DD08:        8D 38 0D      STA $0D38                 ;
CODE_00DD0B:        8D 48 0D      STA $0D48                 ;
CODE_00DD0E:        A2 03         LDX #$03                  ;
CODE_00DD10:        BD B8 0B      LDA $0BB8,x               ;
CODE_00DD13:        F0 0C         BEQ CODE_00DD21           ;
CODE_00DD15:        C9 1E         CMP #$1E                  ;
CODE_00DD17:        90 05         BCC CODE_00DD1E           ;
CODE_00DD19:        9E B8 0B      STZ $0BB8,x               ;
CODE_00DD1C:        80 03         BRA CODE_00DD21           ;

CODE_00DD1E:        FE B8 0B      INC $0BB8,x               ;
CODE_00DD21:        CA            DEX                       ;
CODE_00DD22:        10 EC         BPL CODE_00DD10           ;
CODE_00DD24:        A5 09         LDA $09                   ;
CODE_00DD26:        29 07         AND #$07                  ;
CODE_00DD28:        D0 2C         BNE CODE_00DD56           ;
CODE_00DD2A:        A2 03         LDX #$03                  ;
CODE_00DD2C:        BD B8 0B      LDA $0BB8,x               ;
CODE_00DD2F:        F0 03         BEQ CODE_00DD34           ;
CODE_00DD31:        CA            DEX                       ;
CODE_00DD32:        D0 F8         BNE CODE_00DD2C           ;
CODE_00DD34:        A5 09         LDA $09                   ;
CODE_00DD36:        29 03         AND #$03                  ;
CODE_00DD38:        A8            TAY                       ;
CODE_00DD39:        B9 B9 07      LDA $07B9,y               ;
CODE_00DD3C:        45 09         EOR $09                   ;
CODE_00DD3E:        29 1F         AND #$1F                  ;
CODE_00DD40:        18            CLC                       ;
CODE_00DD41:        69 CC         ADC #$CC                  ;
CODE_00DD43:        9D B0 0B      STA $0BB0,x               ;
CODE_00DD46:        B9 BA 07      LDA $07BA,y               ;
CODE_00DD49:        45 09         EOR $09                   ;
CODE_00DD4B:        29 07         AND #$07                  ;
CODE_00DD4D:        18            CLC                       ;
CODE_00DD4E:        69 B0         ADC #$B0                  ;
CODE_00DD50:        9D B4 0B      STA $0BB4,x               ;
CODE_00DD53:        FE B8 0B      INC $0BB8,x               ;
CODE_00DD56:        A2 03         LDX #$03                  ;
CODE_00DD58:        BD B8 0B      LDA $0BB8,x               ;
CODE_00DD5B:        4A            LSR A                     ;
CODE_00DD5C:        4A            LSR A                     ;
CODE_00DD5D:        4A            LSR A                     ;
CODE_00DD5E:        A8            TAY                       ;
CODE_00DD5F:        B9 82 DD      LDA $DD82,y               ;
CODE_00DD62:        85 00         STA $00                   ;
CODE_00DD64:        8A            TXA                       ;
CODE_00DD65:        0A            ASL A                     ;
CODE_00DD66:        0A            ASL A                     ;
CODE_00DD67:        A8            TAY                       ;
CODE_00DD68:        BD B0 0B      LDA $0BB0,x               ;
CODE_00DD6B:        99 00 08      STA $0800,y               ;
CODE_00DD6E:        BD B4 0B      LDA $0BB4,x               ;
CODE_00DD71:        99 01 08      STA $0801,y               ;
CODE_00DD74:        A5 00         LDA $00                   ;
CODE_00DD76:        99 02 08      STA $0802,y               ;
CODE_00DD79:        A9 25         LDA #$25                  ;
CODE_00DD7B:        99 03 08      STA $0803,y               ;
CODE_00DD7E:        CA            DEX                       ;
CODE_00DD7F:        10 D7         BPL CODE_00DD58           ;
CODE_00DD81:        60            RTS                       ;

DATA_00DD82:        db $F5,$E4,$F4,$E5

CODE_00DD86:        AC 9D 0B      LDY $0B9D                 ;
CODE_00DD89:        B9 5F D6      LDA $D65F,y               ;
CODE_00DD8C:        A8            TAY                       ;
CODE_00DD8D:        AD AE 03      LDA $03AE                 ;
CODE_00DD90:        18            CLC                       ;
CODE_00DD91:        6D 9F 0B      ADC $0B9F                 ;
CODE_00DD94:        99 00 09      STA $0900,y               ;
CODE_00DD97:        99 08 09      STA $0908,y               ;
CODE_00DD9A:        18            CLC                       ;
CODE_00DD9B:        69 10         ADC #$10                  ;
CODE_00DD9D:        99 04 09      STA $0904,y               ;
CODE_00DDA0:        99 0C 09      STA $090C,y               ;
CODE_00DDA3:        AD 38 02      LDA $0238                 ;
CODE_00DDA6:        99 01 09      STA $0901,y               ;
CODE_00DDA9:        99 05 09      STA $0905,y               ;
CODE_00DDAC:        18            CLC                       ;
CODE_00DDAD:        69 10         ADC #$10                  ;
CODE_00DDAF:        99 09 09      STA $0909,y               ;
CODE_00DDB2:        99 0D 09      STA $090D,y               ;
CODE_00DDB5:        AD 9F 0B      LDA $0B9F                 ;
CODE_00DDB8:        29 0C         AND #$0C                  ;
CODE_00DDBA:        AA            TAX                       ;
CODE_00DDBB:        A9 04         LDA #$04                  ;
CODE_00DDBD:        85 00         STA $00                   ;
CODE_00DDBF:        BD DA DD      LDA $DDDA,x               ;
CODE_00DDC2:        99 02 09      STA $0902,y               ;
CODE_00DDC5:        BD EA DD      LDA $DDEA,x               ;
CODE_00DDC8:        99 03 09      STA $0903,y               ;
CODE_00DDCB:        A9 02         LDA #$02                  ;
CODE_00DDCD:        99 00 0D      STA $0D00,y               ;
CODE_00DDD0:        C8            INY                       ;
CODE_00DDD1:        C8            INY                       ;
CODE_00DDD2:        C8            INY                       ;
CODE_00DDD3:        C8            INY                       ;
CODE_00DDD4:        E8            INX                       ;
CODE_00DDD5:        C6 00         DEC $00                   ;
CODE_00DDD7:        D0 E6         BNE CODE_00DDBF           ;
CODE_00DDD9:        60            RTS                       ;

DATA_00DDDA:        db $CE,$CE,$EE,$EE,$E0,$E2,$E0,$E2
                    db $EE,$EE,$CE,$CE,$E2,$E0,$E2,$E0
                    db $2D,$4D,$2D,$4D,$2D,$2D,$AD,$AD
                    db $AD,$CD,$AD,$CD,$4D,$4D,$CD,$CD

CODE_00DDFA:        20 7B E2      JSR CODE_00E27B           ;
CODE_00DDFD:        AD 7F 0F      LDA $0F7F                 ;
CODE_00DE00:        D0 03         BNE CODE_00DE05           ;
CODE_00DE02:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DE05:        20 66 E5      JSR CODE_00E566           ;
CODE_00DE08:        A9 20         LDA #$20                  ;
CODE_00DE0A:        85 00         STA $00                   ;
CODE_00DE0C:        A9 04         LDA #$04                  ;
CODE_00DE0E:        85 01         STA $01                   ;
CODE_00DE10:        A2 01         LDX #$01                  ;
CODE_00DE12:        A9 00         LDA #$00                  ;
CODE_00DE14:        22 7A BF 0D   JSL CODE_0DBF7A           ;
CODE_00DE18:        AD 38 02      LDA $0238                 ;
CODE_00DE1B:        C9 A0         CMP #$A0                  ;
CODE_00DE1D:        B0 05         BCS CODE_00DE24           ;
CODE_00DE1F:        A9 01         LDA #$01                  ;
CODE_00DE21:        8D 9D 0B      STA $0B9D                 ;
CODE_00DE24:        AD 38 02      LDA $0238                 ;
CODE_00DE27:        C9 B8         CMP #$B8                  ;
CODE_00DE29:        90 1F         BCC CODE_00DE4A           ;
CODE_00DE2B:        A9 B8         LDA #$B8                  ;
CODE_00DE2D:        8D 38 02      STA $0238                 ;
CODE_00DE30:        9C A1 00      STZ $00A1                 ;
CODE_00DE33:        9C 3D 04      STZ $043D                 ;
CODE_00DE36:        9C 1D 04      STZ $041D                 ;
CODE_00DE39:        AD A4 0B      LDA $0BA4                 ;
CODE_00DE3C:        C9 01         CMP #$01                  ;
CODE_00DE3E:        D0 1A         BNE CODE_00DE5A           ;
CODE_00DE40:        A9 20         LDA #$20                  ;
CODE_00DE42:        8D 00 16      STA $1600                 ;
CODE_00DE45:        8D A4 0B      STA $0BA4                 ;
CODE_00DE48:        80 10         BRA CODE_00DE5A           ;

CODE_00DE4A:        AC 9D 0B      LDY $0B9D                 ;
CODE_00DE4D:        B9 5F D6      LDA $D65F,y               ;
CODE_00DE50:        A8            TAY                       ;
CODE_00DE51:        AD A1 00      LDA $00A1                 ;
CODE_00DE54:        20 F9 DE      JSR CODE_00DEF9           ;
CODE_00DE57:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DE5A:        AD 9C 0B      LDA $0B9C                 ;
CODE_00DE5D:        C9 02         CMP #$02                  ;
CODE_00DE5F:        F0 17         BEQ CODE_00DE78           ;
CODE_00DE61:        EE 9C 0B      INC $0B9C                 ;
CODE_00DE64:        AD AE 03      LDA $03AE                 ;
CODE_00DE67:        38            SEC                       ;
CODE_00DE68:        E9 08         SBC #$08                  ;
CODE_00DE6A:        8D AE 03      STA $03AE                 ;
CODE_00DE6D:        AD 1A 02      LDA $021A                 ;
CODE_00DE70:        38            SEC                       ;
CODE_00DE71:        E9 08         SBC #$08                  ;
CODE_00DE73:        8D 1A 02      STA $021A                 ;
CODE_00DE76:        64 09         STZ $09                   ;
CODE_00DE78:        AD A0 0B      LDA $0BA0                 ;
CODE_00DE7B:        D0 0F         BNE CODE_00DE8C           ;
CODE_00DE7D:        EE 9F 0B      INC $0B9F                 ;
CODE_00DE80:        AD 9F 0B      LDA $0B9F                 ;
CODE_00DE83:        C9 40         CMP #$40                  ;
CODE_00DE85:        90 14         BCC CODE_00DE9B           ;
CODE_00DE87:        A9 40         LDA #$40                  ;
CODE_00DE89:        8D 9F 0B      STA $0B9F                 ;
CODE_00DE8C:        EE A0 0B      INC $0BA0                 ;
CODE_00DE8F:        AD A0 0B      LDA $0BA0                 ;
CODE_00DE92:        C9 88         CMP #$88                  ;
CODE_00DE94:        90 05         BCC CODE_00DE9B           ;
CODE_00DE96:        A9 88         LDA #$88                  ;
CODE_00DE98:        8D A0 0B      STA $0BA0                 ;
CODE_00DE9B:        20 4C DF      JSR CODE_00DF4C           ;
CODE_00DE9E:        20 29 E5      JSR CODE_00E529           ;
CODE_00DEA1:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00DEA4:        AD AE 03      LDA $03AE                 ;
CODE_00DEA7:        99 00 09      STA $0900,y               ;
CODE_00DEAA:        99 08 09      STA $0908,y               ;
CODE_00DEAD:        18            CLC                       ;
CODE_00DEAE:        69 10         ADC #$10                  ;
CODE_00DEB0:        99 04 09      STA $0904,y               ;
CODE_00DEB3:        99 0C 09      STA $090C,y               ;
CODE_00DEB6:        AD 38 02      LDA $0238                 ;
CODE_00DEB9:        99 01 09      STA $0901,y               ;
CODE_00DEBC:        99 05 09      STA $0905,y               ;
CODE_00DEBF:        18            CLC                       ;
CODE_00DEC0:        69 10         ADC #$10                  ;
CODE_00DEC2:        99 09 09      STA $0909,y               ;
CODE_00DEC5:        99 0D 09      STA $090D,y               ;
CODE_00DEC8:        A9 CE         LDA #$CE                  ;
CODE_00DECA:        99 02 09      STA $0902,y               ;
CODE_00DECD:        99 06 09      STA $0906,y               ;
CODE_00DED0:        99 0A 09      STA $090A,y               ;
CODE_00DED3:        99 0E 09      STA $090E,y               ;
CODE_00DED6:        A9 2D         LDA #$2D                  ;
CODE_00DED8:        99 03 09      STA $0903,y               ;
CODE_00DEDB:        A9 6D         LDA #$6D                  ;
CODE_00DEDD:        99 07 09      STA $0907,y               ;
CODE_00DEE0:        A9 AD         LDA #$AD                  ;
CODE_00DEE2:        99 0B 09      STA $090B,y               ;
CODE_00DEE5:        A9 CD         LDA #$CD                  ;
CODE_00DEE7:        99 0F 09      STA $090F,y               ;
CODE_00DEEA:        A9 02         LDA #$02                  ;
CODE_00DEEC:        99 00 0D      STA $0D00,y               ;
CODE_00DEEF:        99 04 0D      STA $0D04,y               ;
CODE_00DEF2:        99 08 0D      STA $0D08,y               ;
CODE_00DEF5:        99 0C 0D      STA $0D0C,y               ;
CODE_00DEF8:        60            RTS                       ;

CODE_00DEF9:        AD AE 03      LDA $03AE                 ;
CODE_00DEFC:        99 00 09      STA $0900,y               ;
CODE_00DEFF:        99 08 09      STA $0908,y               ;
CODE_00DF02:        18            CLC                       ;
CODE_00DF03:        69 10         ADC #$10                  ;
CODE_00DF05:        99 04 09      STA $0904,y               ;
CODE_00DF08:        99 0C 09      STA $090C,y               ;
CODE_00DF0B:        AD 38 02      LDA $0238                 ;
CODE_00DF0E:        99 09 09      STA $0909,y               ;
CODE_00DF11:        99 0D 09      STA $090D,y               ;
CODE_00DF14:        18            CLC                       ;
CODE_00DF15:        69 08         ADC #$08                  ;
CODE_00DF17:        99 01 09      STA $0901,y               ;
CODE_00DF1A:        99 05 09      STA $0905,y               ;
CODE_00DF1D:        A9 CE         LDA #$CE                  ;
CODE_00DF1F:        99 0A 09      STA $090A,y               ;
CODE_00DF22:        99 0E 09      STA $090E,y               ;
CODE_00DF25:        A9 DE         LDA #$DE                  ;
CODE_00DF27:        99 02 09      STA $0902,y               ;
CODE_00DF2A:        99 06 09      STA $0906,y               ;
CODE_00DF2D:        A9 2D         LDA #$2D                  ;
CODE_00DF2F:        99 03 09      STA $0903,y               ;
CODE_00DF32:        99 0B 09      STA $090B,y               ;
CODE_00DF35:        A9 6D         LDA #$6D                  ;
CODE_00DF37:        99 07 09      STA $0907,y               ;
CODE_00DF3A:        99 0F 09      STA $090F,y               ;
CODE_00DF3D:        A9 02         LDA #$02                  ;
CODE_00DF3F:        99 00 0D      STA $0D00,y               ;
CODE_00DF42:        99 04 0D      STA $0D04,y               ;
CODE_00DF45:        99 08 0D      STA $0D08,y               ;
CODE_00DF48:        99 0C 0D      STA $0D0C,y               ;
CODE_00DF4B:        60            RTS                       ;

CODE_00DF4C:        AD 9F 0B      LDA $0B9F                 ;
CODE_00DF4F:        38            SEC                       ;
CODE_00DF50:        E9 28         SBC #$28                  ;
CODE_00DF52:        10 02         BPL CODE_00DF56           ;
CODE_00DF54:        A9 00         LDA #$00                  ;
CODE_00DF56:        4A            LSR A                     ;
CODE_00DF57:        4A            LSR A                     ;
CODE_00DF58:        85 00         STA $00                   ;
CODE_00DF5A:        AD A0 0B      LDA $0BA0                 ;
CODE_00DF5D:        29 08         AND #$08                  ;
CODE_00DF5F:        4A            LSR A                     ;
CODE_00DF60:        4A            LSR A                     ;
CODE_00DF61:        4A            LSR A                     ;
CODE_00DF62:        85 01         STA $01                   ;
CODE_00DF64:        AD AE 03      LDA $03AE                 ;
CODE_00DF67:        18            CLC                       ;
CODE_00DF68:        6D A0 0B      ADC $0BA0                 ;
CODE_00DF6B:        18            CLC                       ;
CODE_00DF6C:        65 01         ADC $01                   ;
CODE_00DF6E:        8D 00 09      STA $0900                 ;
CODE_00DF71:        8D 10 09      STA $0910                 ;
CODE_00DF74:        18            CLC                       ;
CODE_00DF75:        69 10         ADC #$10                  ;
CODE_00DF77:        38            SEC                       ;
CODE_00DF78:        E5 01         SBC $01                   ;
CODE_00DF7A:        8D 04 09      STA $0904                 ;
CODE_00DF7D:        8D 14 09      STA $0914                 ;
CODE_00DF80:        18            CLC                       ;
CODE_00DF81:        69 10         ADC #$10                  ;
CODE_00DF83:        38            SEC                       ;
CODE_00DF84:        E5 01         SBC $01                   ;
CODE_00DF86:        8D 08 09      STA $0908                 ;
CODE_00DF89:        8D 18 09      STA $0918                 ;
CODE_00DF8C:        AD 38 02      LDA $0238                 ;
CODE_00DF8F:        38            SEC                       ;
CODE_00DF90:        E5 00         SBC $00                   ;
CODE_00DF92:        18            CLC                       ;
CODE_00DF93:        65 01         ADC $01                   ;
CODE_00DF95:        8D 11 09      STA $0911                 ;
CODE_00DF98:        8D 15 09      STA $0915                 ;
CODE_00DF9B:        8D 19 09      STA $0919                 ;
CODE_00DF9E:        18            CLC                       ;
CODE_00DF9F:        69 08         ADC #$08                  ;
CODE_00DFA1:        8D 01 09      STA $0901                 ;
CODE_00DFA4:        8D 05 09      STA $0905                 ;
CODE_00DFA7:        8D 09 09      STA $0909                 ;
CODE_00DFAA:        A9 DE         LDA #$DE                  ;
CODE_00DFAC:        8D 02 09      STA $0902                 ;
CODE_00DFAF:        8D 0A 09      STA $090A                 ;
CODE_00DFB2:        A9 EC         LDA #$EC                  ;
CODE_00DFB4:        8D 06 09      STA $0906                 ;
CODE_00DFB7:        A9 CE         LDA #$CE                  ;
CODE_00DFB9:        8D 12 09      STA $0912                 ;
CODE_00DFBC:        8D 1A 09      STA $091A                 ;
CODE_00DFBF:        A9 EA         LDA #$EA                  ;
CODE_00DFC1:        8D 16 09      STA $0916                 ;
CODE_00DFC4:        A9 2D         LDA #$2D                  ;
CODE_00DFC6:        8D 03 09      STA $0903                 ;
CODE_00DFC9:        8D 07 09      STA $0907                 ;
CODE_00DFCC:        8D 13 09      STA $0913                 ;
CODE_00DFCF:        8D 17 09      STA $0917                 ;
CODE_00DFD2:        A9 6D         LDA #$6D                  ;
CODE_00DFD4:        8D 0B 09      STA $090B                 ;
CODE_00DFD7:        8D 1B 09      STA $091B                 ;
CODE_00DFDA:        A9 02         LDA #$02                  ;
CODE_00DFDC:        8D 00 0D      STA $0D00                 ;
CODE_00DFDF:        8D 04 0D      STA $0D04                 ;
CODE_00DFE2:        8D 08 0D      STA $0D08                 ;
CODE_00DFE5:        8D 10 0D      STA $0D10                 ;
CODE_00DFE8:        8D 14 0D      STA $0D14                 ;
CODE_00DFEB:        8D 18 0D      STA $0D18                 ;
CODE_00DFEE:        AD AE 03      LDA $03AE                 ;
CODE_00DFF1:        18            CLC                       ;
CODE_00DFF2:        6D A0 0B      ADC $0BA0                 ;
CODE_00DFF5:        1A            INC A                     ;
CODE_00DFF6:        1A            INC A                     ;
CODE_00DFF7:        8D 20 09      STA $0920                 ;
CODE_00DFFA:        18            CLC                       ;
CODE_00DFFB:        69 08         ADC #$08                  ;
CODE_00DFFD:        8D 24 09      STA $0924                 ;
CODE_00E000:        1A            INC A                     ;
CODE_00E001:        8D 28 09      STA $0928                 ;
CODE_00E004:        18            CLC                       ;
CODE_00E005:        69 08         ADC #$08                  ;
CODE_00E007:        8D 2C 09      STA $092C                 ;
CODE_00E00A:        1A            INC A                     ;
CODE_00E00B:        8D 30 09      STA $0930                 ;
CODE_00E00E:        18            CLC                       ;
CODE_00E00F:        69 08         ADC #$08                  ;
CODE_00E011:        8D 34 09      STA $0934                 ;
CODE_00E014:        1A            INC A                     ;
CODE_00E015:        8D 38 09      STA $0938                 ;
CODE_00E018:        18            CLC                       ;
CODE_00E019:        69 08         ADC #$08                  ;
CODE_00E01B:        8D 3C 09      STA $093C                 ;
CODE_00E01E:        A9 C8         LDA #$C8                  ;
CODE_00E020:        8D 21 09      STA $0921                 ;
CODE_00E023:        8D 25 09      STA $0925                 ;
CODE_00E026:        8D 29 09      STA $0929                 ;
CODE_00E029:        8D 2D 09      STA $092D                 ;
CODE_00E02C:        8D 31 09      STA $0931                 ;
CODE_00E02F:        8D 35 09      STA $0935                 ;
CODE_00E032:        8D 39 09      STA $0939                 ;
CODE_00E035:        8D 3D 09      STA $093D                 ;
CODE_00E038:        AD A0 0B      LDA $0BA0                 ;
CODE_00E03B:        29 0F         AND #$0F                  ;
CODE_00E03D:        C9 0F         CMP #$0F                  ;
CODE_00E03F:        D0 05         BNE CODE_00E046           ;
CODE_00E041:        A9 0E         LDA #$0E                  ;
CODE_00E043:        8D 00 16      STA $1600                 ;
CODE_00E046:        AD A0 0B      LDA $0BA0                 ;
CODE_00E049:        29 08         AND #$08                  ;
CODE_00E04B:        0A            ASL A                     ;
CODE_00E04C:        09 CB         ORA #$CB                  ;
CODE_00E04E:        8D 22 09      STA $0922                 ;
CODE_00E051:        8D 2A 09      STA $092A                 ;
CODE_00E054:        8D 32 09      STA $0932                 ;
CODE_00E057:        8D 3A 09      STA $093A                 ;
CODE_00E05A:        1A            INC A                     ;
CODE_00E05B:        8D 26 09      STA $0926                 ;
CODE_00E05E:        8D 2E 09      STA $092E                 ;
CODE_00E061:        8D 36 09      STA $0936                 ;
CODE_00E064:        8D 3E 09      STA $093E                 ;
CODE_00E067:        A9 2D         LDA #$2D                  ;
CODE_00E069:        8D 23 09      STA $0923                 ;
CODE_00E06C:        8D 27 09      STA $0927                 ;
CODE_00E06F:        8D 2B 09      STA $092B                 ;
CODE_00E072:        8D 2F 09      STA $092F                 ;
CODE_00E075:        8D 33 09      STA $0933                 ;
CODE_00E078:        8D 37 09      STA $0937                 ;
CODE_00E07B:        8D 3B 09      STA $093B                 ;
CODE_00E07E:        8D 3F 09      STA $093F                 ;
CODE_00E081:        A0 00         LDY #$00                  ;
CODE_00E083:        B9 00 09      LDA $0900,y               ;
CODE_00E086:        C9 40         CMP #$40                  ;
CODE_00E088:        B0 05         BCS CODE_00E08F           ;
CODE_00E08A:        A9 F0         LDA #$F0                  ;
CODE_00E08C:        99 01 09      STA $0901,y               ;
CODE_00E08F:        C8            INY                       ;
CODE_00E090:        C8            INY                       ;
CODE_00E091:        C8            INY                       ;
CODE_00E092:        C8            INY                       ;
CODE_00E093:        D0 EE         BNE CODE_00E083           ;
CODE_00E095:        60            RTS                       ;

CODE_00E096:        EE 7F 0F      INC $0F7F                 ;
CODE_00E099:        AD 7F 0F      LDA $0F7F                 ;
CODE_00E09C:        C9 D0         CMP #$D0                  ;
CODE_00E09E:        90 0B         BCC CODE_00E0AB           ;
CODE_00E0A0:        20 29 E5      JSR CODE_00E529           ;
CODE_00E0A3:        A9 D0         LDA #$D0                  ;
CODE_00E0A5:        8D 7F 0F      STA $0F7F                 ;
CODE_00E0A8:        4C BA E0      JMP CODE_00E0BA           ;

CODE_00E0AB:        C9 20         CMP #$20                  ;
CODE_00E0AD:        90 0B         BCC CODE_00E0BA           ;
CODE_00E0AF:        48            PHA                       ;
CODE_00E0B0:        29 0F         AND #$0F                  ;
CODE_00E0B2:        D0 05         BNE CODE_00E0B9           ;
CODE_00E0B4:        A9 0E         LDA #$0E                  ;
CODE_00E0B6:        8D 00 16      STA $1600                 ;
CODE_00E0B9:        68            PLA                       ;
CODE_00E0BA:        4A            LSR A                     ;
CODE_00E0BB:        4A            LSR A                     ;
CODE_00E0BC:        4A            LSR A                     ;
CODE_00E0BD:        C9 03         CMP #$03                  ;
CODE_00E0BF:        90 02         BCC CODE_00E0C3           ;
CODE_00E0C1:        A9 03         LDA #$03                  ;
CODE_00E0C3:        48            PHA                       ;
CODE_00E0C4:        20 DC E0      JSR CODE_00E0DC           ;
CODE_00E0C7:        68            PLA                       ;
CODE_00E0C8:        C9 02         CMP #$02                  ;
CODE_00E0CA:        D0 0D         BNE CODE_00E0D9           ;
CODE_00E0CC:        AD A4 0B      LDA $0BA4                 ;
CODE_00E0CF:        D0 08         BNE CODE_00E0D9           ;
CODE_00E0D1:        A9 2B         LDA #$2B                  ;
CODE_00E0D3:        8D 00 16      STA $1600                 ;
CODE_00E0D6:        8D A4 0B      STA $0BA4                 ;
CODE_00E0D9:        4C D5 E1      JMP CODE_00E1D5           ;

CODE_00E0DC:        0A            ASL A                     ;
CODE_00E0DD:        0A            ASL A                     ;
CODE_00E0DE:        0A            ASL A                     ;
CODE_00E0DF:        AA            TAX                       ;
CODE_00E0E0:        A0 08         LDY #$08                  ;
CODE_00E0E2:        A9 88         LDA #$88                  ;
CODE_00E0E4:        99 00 09      STA $0900,y               ;
CODE_00E0E7:        99 08 09      STA $0908,y               ;
CODE_00E0EA:        A9 90         LDA #$90                  ;
CODE_00E0EC:        99 04 09      STA $0904,y               ;
CODE_00E0EF:        A9 B0         LDA #$B0                  ;
CODE_00E0F1:        99 01 09      STA $0901,y               ;
CODE_00E0F4:        99 05 09      STA $0905,y               ;
CODE_00E0F7:        A9 C0         LDA #$C0                  ;
CODE_00E0F9:        99 09 09      STA $0909,y               ;
CODE_00E0FC:        A9 80         LDA #$80                  ;
CODE_00E0FE:        99 02 09      STA $0902,y               ;
CODE_00E101:        1A            INC A                     ;
CODE_00E102:        99 06 09      STA $0906,y               ;
CODE_00E105:        A9 A0         LDA #$A0                  ;
CODE_00E107:        99 0A 09      STA $090A,y               ;
CODE_00E10A:        A9 2D         LDA #$2D                  ;
CODE_00E10C:        99 03 09      STA $0903,y               ;
CODE_00E10F:        99 07 09      STA $0907,y               ;
CODE_00E112:        99 0B 09      STA $090B,y               ;
CODE_00E115:        A0 00         LDY #$00                  ;
CODE_00E117:        BD B5 E1      LDA $E1B5,x               ;
CODE_00E11A:        99 00 09      STA $0900,y               ;
CODE_00E11D:        C8            INY                       ;
CODE_00E11E:        E8            INX                       ;
CODE_00E11F:        C0 08         CPY #$08                  ;
CODE_00E121:        90 F4         BCC CODE_00E117           ;
CODE_00E123:        A9 02         LDA #$02                  ;
CODE_00E125:        8D 00 0D      STA $0D00                 ;
CODE_00E128:        8D 04 0D      STA $0D04                 ;
CODE_00E12B:        8D 08 0D      STA $0D08                 ;
CODE_00E12E:        8D 0C 0D      STA $0D0C                 ;
CODE_00E131:        8D 10 0D      STA $0D10                 ;
CODE_00E134:        A9 7E         LDA #$7E                  ;
CODE_00E136:        18            CLC                       ;
CODE_00E137:        6D 7F 0F      ADC $0F7F                 ;
CODE_00E13A:        8D 1C 09      STA $091C                 ;
CODE_00E13D:        C9 88         CMP #$88                  ;
CODE_00E13F:        B0 04         BCS CODE_00E145           ;
CODE_00E141:        A9 F0         LDA #$F0                  ;
CODE_00E143:        80 02         BRA CODE_00E147           ;

CODE_00E145:        A9 C0         LDA #$C0                  ;
CODE_00E147:        8D 1D 09      STA $091D                 ;
CODE_00E14A:        A5 09         LDA $09                   ;
CODE_00E14C:        4A            LSR A                     ;
CODE_00E14D:        4A            LSR A                     ;
CODE_00E14E:        29 02         AND #$02                  ;
CODE_00E150:        85 01         STA $01                   ;
CODE_00E152:        18            CLC                       ;
CODE_00E153:        69 E6         ADC #$E6                  ;
CODE_00E155:        8D 1E 09      STA $091E                 ;
CODE_00E158:        A9 2D         LDA #$2D                  ;
CODE_00E15A:        8D 1F 09      STA $091F                 ;
CODE_00E15D:        A9 02         LDA #$02                  ;
CODE_00E15F:        8D 1C 0D      STA $0D1C                 ;
CODE_00E162:        A0 20         LDY #$20                  ;
CODE_00E164:        A2 06         LDX #$06                  ;
CODE_00E166:        A9 78         LDA #$78                  ;
CODE_00E168:        18            CLC                       ;
CODE_00E169:        6D 7F 0F      ADC $0F7F                 ;
CODE_00E16C:        85 00         STA $00                   ;
CODE_00E16E:        A5 00         LDA $00                   ;
CODE_00E170:        99 00 09      STA $0900,y               ;
CODE_00E173:        99 04 09      STA $0904,y               ;
CODE_00E176:        C9 91         CMP #$91                  ;
CODE_00E178:        B0 0A         BCS CODE_00E184           ;
CODE_00E17A:        A9 F0         LDA #$F0                  ;
CODE_00E17C:        99 01 09      STA $0901,y               ;
CODE_00E17F:        99 05 09      STA $0905,y               ;
CODE_00E182:        80 0A         BRA CODE_00E18E           ;

CODE_00E184:        A9 C0         LDA #$C0                  ;
CODE_00E186:        99 01 09      STA $0901,y               ;
CODE_00E189:        A9 C8         LDA #$C8                  ;
CODE_00E18B:        99 05 09      STA $0905,y               ;
CODE_00E18E:        A9 BA         LDA #$BA                  ;
CODE_00E190:        18            CLC                       ;
CODE_00E191:        65 01         ADC $01                   ;
CODE_00E193:        99 02 09      STA $0902,y               ;
CODE_00E196:        1A            INC A                     ;
CODE_00E197:        99 06 09      STA $0906,y               ;
CODE_00E19A:        A9 2D         LDA #$2D                  ;
CODE_00E19C:        99 03 09      STA $0903,y               ;
CODE_00E19F:        99 07 09      STA $0907,y               ;
CODE_00E1A2:        C8            INY                       ;
CODE_00E1A3:        C8            INY                       ;
CODE_00E1A4:        C8            INY                       ;
CODE_00E1A5:        C8            INY                       ;
CODE_00E1A6:        C8            INY                       ;
CODE_00E1A7:        C8            INY                       ;
CODE_00E1A8:        C8            INY                       ;
CODE_00E1A9:        C8            INY                       ;
CODE_00E1AA:        A5 00         LDA $00                   ;
CODE_00E1AC:        38            SEC                       ;
CODE_00E1AD:        E9 0A         SBC #$0A                  ;
CODE_00E1AF:        85 00         STA $00                   ;
CODE_00E1B1:        CA            DEX                       ;
CODE_00E1B2:        D0 BA         BNE CODE_00E16E           ;
CODE_00E1B4:        60            RTS                       ;

DATA_00E1B5:        db $98,$C0,$E4,$2D,$90,$C0,$A1,$2D
                    db $99,$BF,$E4,$2D,$90,$C0,$A1,$2D
                    db $9B,$BF,$E2,$2D,$90,$C0,$E0,$2D
                    db $90,$C0,$E0,$2D,$90,$C0,$E0,$2D

CODE_00E1D5:        AD A6 0B      LDA $0BA6                 ;
CODE_00E1D8:        F0 07         BEQ CODE_00E1E1           ;
CODE_00E1DA:        30 1C         BMI CODE_00E1F8           ;
CODE_00E1DC:        CE A6 0B      DEC $0BA6                 ;
CODE_00E1DF:        80 17         BRA CODE_00E1F8           ;

CODE_00E1E1:        AD A7 0B      LDA $0BA7                 ;
CODE_00E1E4:        D0 12         BNE CODE_00E1F8           ;
CODE_00E1E6:        EE A7 0B      INC $0BA7                 ;
CODE_00E1E9:        A9 B8         LDA #$B8                  ;
CODE_00E1EB:        8D CE 03      STA $03CE                 ;
CODE_00E1EE:        AD 54 07      LDA $0754                 ;
CODE_00E1F1:        D0 05         BNE CODE_00E1F8           ;
CODE_00E1F3:        A9 C8         LDA #$C8                  ;
CODE_00E1F5:        8D CE 03      STA $03CE                 ;
CODE_00E1F8:        7A            PLY                       ;
CODE_00E1F9:        FA            PLX                       ;
CODE_00E1FA:        AB            PLB                       ;
CODE_00E1FB:        6B            RTL                       ;

CODE_00E1FC:        DA            PHX                       ;
CODE_00E1FD:        85 02         STA $02                   ;
CODE_00E1FF:        0A            ASL A                     ;
CODE_00E200:        18            CLC                       ;
CODE_00E201:        65 02         ADC $02                   ;
CODE_00E203:        AA            TAX                       ;
CODE_00E204:        A5 00         LDA $00                   ;
CODE_00E206:        99 00 09      STA $0900,y               ;
CODE_00E209:        99 08 09      STA $0908,y               ;
CODE_00E20C:        18            CLC                       ;
CODE_00E20D:        69 08         ADC #$08                  ;
CODE_00E20F:        99 04 09      STA $0904,y               ;
CODE_00E212:        A5 01         LDA $01                   ;
CODE_00E214:        99 01 09      STA $0901,y               ;
CODE_00E217:        99 05 09      STA $0905,y               ;
CODE_00E21A:        18            CLC                       ;
CODE_00E21B:        69 08         ADC #$08                  ;
CODE_00E21D:        99 09 09      STA $0909,y               ;
CODE_00E220:        BD 4B E2      LDA $E24B,x               ;
CODE_00E223:        99 02 09      STA $0902,y               ;
CODE_00E226:        BD 4C E2      LDA $E24C,x               ;
CODE_00E229:        99 06 09      STA $0906,y               ;
CODE_00E22C:        BD 4D E2      LDA $E24D,x               ;
CODE_00E22F:        99 0A 09      STA $090A,y               ;
CODE_00E232:        BD 63 E2      LDA $E263,x               ;
CODE_00E235:        99 03 09      STA $0903,y               ;
CODE_00E238:        BD 64 E2      LDA $E264,x               ;
CODE_00E23B:        99 07 09      STA $0907,y               ;
CODE_00E23E:        BD 65 E2      LDA $E265,x               ;
CODE_00E241:        99 0B 09      STA $090B,y               ;
CODE_00E244:        A9 02         LDA #$02                  ;
CODE_00E246:        99 08 0D      STA $0D08,y               ;
CODE_00E249:        FA            PLX                       ;
CODE_00E24A:        60            RTS                       ;

DATA_00E24B:        db $B6,$B6,$C9,$B7,$B7,$CB,$B8,$B9
                    db $EC,$B9,$B8,$EC,$E3,$E2,$E4,$F3
                    db $F2,$E6,$E2,$E3,$E4,$F2,$F3,$E6
                    db $2D,$6D,$2D,$2D,$6D,$2D,$2D,$2D
                    db $2D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
                    db $6D,$6D,$2D,$2D,$2D,$2D,$2D,$2D

CODE_00E27B:        CE 7D 0F      DEC $0F7D                 ;
CODE_00E27E:        AD 7D 0F      LDA $0F7D                 ;
CODE_00E281:        10 08         BPL CODE_00E28B           ;
CODE_00E283:        EE 7F 0F      INC $0F7F                 ;
CODE_00E286:        A9 07         LDA #$07                  ;
CODE_00E288:        8D 7D 0F      STA $0F7D                 ;
CODE_00E28B:        AD 7F 0F      LDA $0F7F                 ;
CODE_00E28E:        C9 03         CMP #$03                  ;
CODE_00E290:        90 05         BCC CODE_00E297           ;
CODE_00E292:        A9 03         LDA #$03                  ;
CODE_00E294:        8D 7F 0F      STA $0F7F                 ;
CODE_00E297:        DA            PHX                       ;
CODE_00E298:        0A            ASL A                     ;
CODE_00E299:        AA            TAX                       ;
CODE_00E29A:        BD A7 E2      LDA $E2A7,x               ;
CODE_00E29D:        85 00         STA $00                   ;
CODE_00E29F:        BD A8 E2      LDA $E2A8,x               ;
CODE_00E2A2:        85 01         STA $01                   ;
CODE_00E2A4:        6C 00 00      JMP ($0000)               ;

PNTR_00E2A7:        dw CODE_00E2AF
                    dw CODE_00E318
                    dw CODE_00E35E
                    dw CODE_00E377

CODE_00E2AF:        A9 94         LDA #$94                  ;
CODE_00E2B1:        8D 58 09      STA $0958                 ;
CODE_00E2B4:        A9 BB         LDA #$BB                  ;
CODE_00E2B6:        8D 59 09      STA $0959                 ;
CODE_00E2B9:        A9 C0         LDA #$C0                  ;
CODE_00E2BB:        8D 5A 09      STA $095A                 ;
CODE_00E2BE:        A9 2D         LDA #$2D                  ;
CODE_00E2C0:        8D 5B 09      STA $095B                 ;
CODE_00E2C3:        A9 02         LDA #$02                  ;
CODE_00E2C5:        8D 58 0D      STA $0D58                 ;
CODE_00E2C8:        A9 88         LDA #$88                  ;
CODE_00E2CA:        8D 60 09      STA $0960                 ;
CODE_00E2CD:        8D 70 09      STA $0970                 ;
CODE_00E2D0:        A9 90         LDA #$90                  ;
CODE_00E2D2:        8D 64 09      STA $0964                 ;
CODE_00E2D5:        8D 74 09      STA $0974                 ;
CODE_00E2D8:        A9 C0         LDA #$C0                  ;
CODE_00E2DA:        8D 71 09      STA $0971                 ;
CODE_00E2DD:        8D 75 09      STA $0975                 ;
CODE_00E2E0:        A9 9C         LDA #$9C                  ;
CODE_00E2E2:        8D 72 09      STA $0972                 ;
CODE_00E2E5:        1A            INC A                     ;
CODE_00E2E6:        8D 76 09      STA $0976                 ;
CODE_00E2E9:        A9 B8         LDA #$B8                  ;
CODE_00E2EB:        8D 61 09      STA $0961                 ;
CODE_00E2EE:        8D 65 09      STA $0965                 ;
CODE_00E2F1:        A9 8C         LDA #$8C                  ;
CODE_00E2F3:        8D 62 09      STA $0962                 ;
CODE_00E2F6:        1A            INC A                     ;
CODE_00E2F7:        8D 66 09      STA $0966                 ;
CODE_00E2FA:        A9 2D         LDA #$2D                  ;
CODE_00E2FC:        8D 73 09      STA $0973                 ;
CODE_00E2FF:        8D 77 09      STA $0977                 ;
CODE_00E302:        8D 63 09      STA $0963                 ;
CODE_00E305:        8D 67 09      STA $0967                 ;
CODE_00E308:        A9 02         LDA #$02                  ;
CODE_00E30A:        8D 70 0D      STA $0D70                 ;
CODE_00E30D:        8D 74 0D      STA $0D74                 ;
CODE_00E310:        8D 60 0D      STA $0D60                 ;
CODE_00E313:        8D 64 0D      STA $0D64                 ;
CODE_00E316:        FA            PLX                       ;
CODE_00E317:        60            RTS                       ;

CODE_00E318:        A9 9A         LDA #$9A                  ;
CODE_00E31A:        8D 58 09      STA $0958                 ;
CODE_00E31D:        A9 BE         LDA #$BE                  ;
CODE_00E31F:        8D 59 09      STA $0959                 ;
CODE_00E322:        A9 C2         LDA #$C2                  ;
CODE_00E324:        8D 5A 09      STA $095A                 ;
CODE_00E327:        A9 2D         LDA #$2D                  ;
CODE_00E329:        8D 5B 09      STA $095B                 ;
CODE_00E32C:        A9 02         LDA #$02                  ;
CODE_00E32E:        8D 58 0D      STA $0D58                 ;
CODE_00E331:        A9 88         LDA #$88                  ;
CODE_00E333:        8D 70 09      STA $0970                 ;
CODE_00E336:        A9 90         LDA #$90                  ;
CODE_00E338:        8D 74 09      STA $0974                 ;
CODE_00E33B:        A9 C0         LDA #$C0                  ;
CODE_00E33D:        8D 71 09      STA $0971                 ;
CODE_00E340:        8D 75 09      STA $0975                 ;
CODE_00E343:        A9 99         LDA #$99                  ;
CODE_00E345:        8D 72 09      STA $0972                 ;
CODE_00E348:        1A            INC A                     ;
CODE_00E349:        8D 76 09      STA $0976                 ;
CODE_00E34C:        A9 2D         LDA #$2D                  ;
CODE_00E34E:        8D 73 09      STA $0973                 ;
CODE_00E351:        8D 77 09      STA $0977                 ;
CODE_00E354:        A9 02         LDA #$02                  ;
CODE_00E356:        8D 70 0D      STA $0D70                 ;
CODE_00E359:        8D 74 0D      STA $0D74                 ;
CODE_00E35C:        FA            PLX                       ;
CODE_00E35D:        60            RTS                       ;

CODE_00E35E:        A9 9C         LDA #$9C                  ;
CODE_00E360:        8D 58 09      STA $0958                 ;
CODE_00E363:        A9 C1         LDA #$C1                  ;
CODE_00E365:        8D 59 09      STA $0959                 ;
CODE_00E368:        A9 C4         LDA #$C4                  ;
CODE_00E36A:        8D 5A 09      STA $095A                 ;
CODE_00E36D:        A9 2D         LDA #$2D                  ;
CODE_00E36F:        8D 5B 09      STA $095B                 ;
CODE_00E372:        A9 02         LDA #$02                  ;
CODE_00E374:        8D 58 0D      STA $0D58                 ;
CODE_00E377:        A9 88         LDA #$88                  ;
CODE_00E379:        8D 70 09      STA $0970                 ;
CODE_00E37C:        A9 90         LDA #$90                  ;
CODE_00E37E:        8D 74 09      STA $0974                 ;
CODE_00E381:        A9 C0         LDA #$C0                  ;
CODE_00E383:        8D 71 09      STA $0971                 ;
CODE_00E386:        8D 75 09      STA $0975                 ;
CODE_00E389:        A9 C6         LDA #$C6                  ;
CODE_00E38B:        8D 72 09      STA $0972                 ;
CODE_00E38E:        1A            INC A                     ;
CODE_00E38F:        8D 76 09      STA $0976                 ;
CODE_00E392:        A9 2D         LDA #$2D                  ;
CODE_00E394:        8D 73 09      STA $0973                 ;
CODE_00E397:        8D 77 09      STA $0977                 ;
CODE_00E39A:        A9 02         LDA #$02                  ;
CODE_00E39C:        8D 70 0D      STA $0D70                 ;
CODE_00E39F:        8D 74 0D      STA $0D74                 ;
CODE_00E3A2:        FA            PLX                       ;
CODE_00E3A3:        60            RTS                       ;

CODE_00E3A4:        A9 0F         LDA #$0F                  ;
CODE_00E3A6:        8D 00 16      STA $1600                 ;
CODE_00E3A9:        AD 54 07      LDA $0754                 ;
CODE_00E3AC:        49 01         EOR #$01                  ;
CODE_00E3AE:        0A            ASL A                     ;
CODE_00E3AF:        0A            ASL A                     ;
CODE_00E3B0:        0A            ASL A                     ;
CODE_00E3B1:        0A            ASL A                     ;
CODE_00E3B2:        18            CLC                       ;
CODE_00E3B3:        69 E0         ADC #$E0                  ;
CODE_00E3B5:        18            CLC                       ;
CODE_00E3B6:        69 08         ADC #$08                  ;
CODE_00E3B8:        8D CE 03      STA $03CE                 ;
CODE_00E3BB:        A0 9C         LDY #$9C                  ;
CODE_00E3BD:        A9 0B         LDA #$0B                  ;
CODE_00E3BF:        85 01         STA $01                   ;
CODE_00E3C1:        64 00         STZ $00                   ;
CODE_00E3C3:        A9 00         LDA #$00                  ;
CODE_00E3C5:        91 00         STA ($00),y               ;
CODE_00E3C7:        C8            INY                       ;
CODE_00E3C8:        C0 BF         CPY #$BF                  ;
CODE_00E3CA:        D0 F9         BNE CODE_00E3C5           ;
CODE_00E3CC:        EE 9C 0B      INC $0B9C                 ;
CODE_00E3CF:        CE A6 0B      DEC $0BA6                 ;
CODE_00E3D2:        AD 5F 07      LDA $075F                 ;
CODE_00E3D5:        0A            ASL A                     ;
CODE_00E3D6:        AA            TAX                       ;
CODE_00E3D7:        BD E4 E3      LDA $E3E4,x               ;
CODE_00E3DA:        85 00         STA $00                   ;
CODE_00E3DC:        BD E5 E3      LDA $E3E5,x               ;
CODE_00E3DF:        85 01         STA $01                   ;
CODE_00E3E1:        6C 00 00      JMP ($0000)               ;

PNTR_00E3E4:        dw CODE_00E3FE
                    dw CODE_00E426
                    dw CODE_00E44E
                    dw CODE_00E47C
                    dw CODE_00E4AE
                    dw CODE_00E4D4
                    dw CODE_00E4EE
                    dw CODE_00E3FE
                    dw CODE_00E3FE
                    dw CODE_00E4AE
                    dw CODE_00E4D4
                    dw CODE_00E4EE
                    dw CODE_00E3FE

CODE_00E3FE:        AD 1A 02      LDA $021A                 ;
CODE_00E401:        38            SEC                       ;
CODE_00E402:        E9 04         SBC #$04                  ;
CODE_00E404:        8D 1A 02      STA $021A                 ;
CODE_00E407:        AD AE 03      LDA $03AE                 ;
CODE_00E40A:        38            SEC                       ;
CODE_00E40B:        E9 04         SBC #$04                  ;
CODE_00E40D:        8D AE 03      STA $03AE                 ;
CODE_00E410:        A9 08         LDA #$08                  ;
CODE_00E412:        8D 7D 0F      STA $0F7D                 ;
CODE_00E415:        A9 01         LDA #$01                  ;
CODE_00E417:        8D 01 16      STA $1601                 ;
CODE_00E41A:        A9 FE         LDA #$FE                  ;
CODE_00E41C:        8D A1 00      STA $00A1                 ;
CODE_00E41F:        9C 3D 04      STZ $043D                 ;
CODE_00E422:        9C 1D 04      STZ $041D                 ;
CODE_00E425:        60            RTS                       ;

CODE_00E426:        AD 1A 02      LDA $021A                 ;
CODE_00E429:        38            SEC                       ;
CODE_00E42A:        E9 0C         SBC #$0C                  ;
CODE_00E42C:        8D 1A 02      STA $021A                 ;
CODE_00E42F:        AD AE 03      LDA $03AE                 ;
CODE_00E432:        38            SEC                       ;
CODE_00E433:        E9 0C         SBC #$0C                  ;
CODE_00E435:        8D AE 03      STA $03AE                 ;
CODE_00E438:        A9 08         LDA #$08                  ;
CODE_00E43A:        8D 7D 0F      STA $0F7D                 ;
CODE_00E43D:        A9 01         LDA #$01                  ;
CODE_00E43F:        8D 01 16      STA $1601                 ;
CODE_00E442:        A9 FE         LDA #$FE                  ;
CODE_00E444:        8D A1 00      STA $00A1                 ;
CODE_00E447:        9C 3D 04      STZ $043D                 ;
CODE_00E44A:        9C 1D 04      STZ $041D                 ;
CODE_00E44D:        60            RTS                       ;

CODE_00E44E:        AD 1A 02      LDA $021A                 ;
CODE_00E451:        38            SEC                       ;
CODE_00E452:        E9 04         SBC #$04                  ;
CODE_00E454:        8D 1A 02      STA $021A                 ;
CODE_00E457:        AD AE 03      LDA $03AE                 ;
CODE_00E45A:        38            SEC                       ;
CODE_00E45B:        E9 04         SBC #$04                  ;
CODE_00E45D:        8D AE 03      STA $03AE                 ;
CODE_00E460:        A9 08         LDA #$08                  ;
CODE_00E462:        8D 7D 0F      STA $0F7D                 ;
CODE_00E465:        9C 1D 02      STZ $021D                 ;
CODE_00E468:        A9 01         LDA #$01                  ;
CODE_00E46A:        8D 01 16      STA $1601                 ;
CODE_00E46D:        A9 FE         LDA #$FE                  ;
CODE_00E46F:        8D A1 00      STA $00A1                 ;
CODE_00E472:        9C 3D 04      STZ $043D                 ;
CODE_00E475:        9C 1D 04      STZ $041D                 ;
CODE_00E478:        9C A0 0B      STZ $0BA0                 ;
CODE_00E47B:        60            RTS                       ;

CODE_00E47C:        AD 1A 02      LDA $021A                 ;
CODE_00E47F:        38            SEC                       ;
CODE_00E480:        E9 04         SBC #$04                  ;
CODE_00E482:        8D 1A 02      STA $021A                 ;
CODE_00E485:        AD AE 03      LDA $03AE                 ;
CODE_00E488:        38            SEC                       ;
CODE_00E489:        E9 04         SBC #$04                  ;
CODE_00E48B:        8D AE 03      STA $03AE                 ;
CODE_00E48E:        8D B0 0B      STA $0BB0                 ;
CODE_00E491:        8D B1 0B      STA $0BB1                 ;
CODE_00E494:        8D B2 0B      STA $0BB2                 ;
CODE_00E497:        8D B3 0B      STA $0BB3                 ;
CODE_00E49A:        A9 01         LDA #$01                  ;
CODE_00E49C:        8D 01 16      STA $1601                 ;
CODE_00E49F:        A9 FE         LDA #$FE                  ;
CODE_00E4A1:        8D A1 00      STA $00A1                 ;
CODE_00E4A4:        9C 3D 04      STZ $043D                 ;
CODE_00E4A7:        9C 1D 04      STZ $041D                 ;
CODE_00E4AA:        9C 67 0E      STZ $0E67                 ;
CODE_00E4AD:        60            RTS                       ;

CODE_00E4AE:        AD 1A 02      LDA $021A                 ;
CODE_00E4B1:        38            SEC                       ;
CODE_00E4B2:        E9 0C         SBC #$0C                  ;
CODE_00E4B4:        8D 1A 02      STA $021A                 ;
CODE_00E4B7:        AD 38 02      LDA $0238                 ;
CODE_00E4BA:        38            SEC                       ;
CODE_00E4BB:        E9 0C         SBC #$0C                  ;
CODE_00E4BD:        8D 38 02      STA $0238                 ;
CODE_00E4C0:        A9 01         LDA #$01                  ;
CODE_00E4C2:        8D 01 16      STA $1601                 ;
CODE_00E4C5:        A9 FE         LDA #$FE                  ;
CODE_00E4C7:        8D 9E 0B      STA $0B9E                 ;
CODE_00E4CA:        8D A1 00      STA $00A1                 ;
CODE_00E4CD:        9C 3D 04      STZ $043D                 ;
CODE_00E4D0:        9C 1D 04      STZ $041D                 ;
CODE_00E4D3:        60            RTS                       ;

CODE_00E4D4:        AD 1A 02      LDA $021A                 ;
CODE_00E4D7:        38            SEC                       ;
CODE_00E4D8:        E9 0C         SBC #$0C                  ;
CODE_00E4DA:        8D 1A 02      STA $021A                 ;
CODE_00E4DD:        A9 01         LDA #$01                  ;
CODE_00E4DF:        8D 01 16      STA $1601                 ;
CODE_00E4E2:        A9 FD         LDA #$FD                  ;
CODE_00E4E4:        8D A1 00      STA $00A1                 ;
CODE_00E4E7:        9C 3D 04      STZ $043D                 ;
CODE_00E4EA:        9C 1D 04      STZ $041D                 ;
CODE_00E4ED:        60            RTS                       ;

CODE_00E4EE:        9C 00 16      STZ $1600                 ;
CODE_00E4F1:        A9 FE         LDA #$FE                  ;
CODE_00E4F3:        8D A1 00      STA $00A1                 ;
CODE_00E4F6:        9C 3D 04      STZ $043D                 ;
CODE_00E4F9:        9C 1D 04      STZ $041D                 ;
CODE_00E4FC:        60            RTS                       ;

CODE_00E4FD:        C2 20         REP #$20                  ;
CODE_00E4FF:        38            SEC                       ;
CODE_00E500:        E9 08 00      SBC #$0008                ;
CODE_00E503:        38            SEC                       ;
CODE_00E504:        ED 42 00      SBC $0042                 ;
CODE_00E507:        85 01         STA $01                   ;
CODE_00E509:        E2 20         SEP #$20                  ;
CODE_00E50B:        99 00 09      STA $0900,y               ;
CODE_00E50E:        99 08 09      STA $0908,y               ;
CODE_00E511:        A9 2D         LDA #$2D                  ;
CODE_00E513:        99 03 09      STA $0903,y               ;
CODE_00E516:        99 0B 09      STA $090B,y               ;
CODE_00E519:        EB            XBA                       ;
CODE_00E51A:        C9 00         CMP #$00                  ;
CODE_00E51C:        F0 02         BEQ CODE_00E520           ;
CODE_00E51E:        A9 01         LDA #$01                  ;
CODE_00E520:        09 02         ORA #$02                  ;
CODE_00E522:        99 00 0D      STA $0D00,y               ;
CODE_00E525:        99 08 0D      STA $0D08,y               ;
CODE_00E528:        60            RTS                       ;

CODE_00E529:        AD CE 03      LDA $03CE                 ;
CODE_00E52C:        C9 D0         CMP #$D0                  ;
CODE_00E52E:        90 12         BCC CODE_00E542           ;
CODE_00E530:        29 08         AND #$08                  ;
CODE_00E532:        F0 0E         BEQ CODE_00E542           ;
CODE_00E534:        AD CE 03      LDA $03CE                 ;
CODE_00E537:        38            SEC                       ;
CODE_00E538:        E9 08         SBC #$08                  ;
CODE_00E53A:        8D CE 03      STA $03CE                 ;
CODE_00E53D:        A9 30         LDA #$30                  ;
CODE_00E53F:        8D A6 0B      STA $0BA6                 ;
CODE_00E542:        60            RTS                       ;

CODE_00E543:        AD EE 0E      LDA $0EEE                 ;
CODE_00E546:        F0 04         BEQ CODE_00E54C           ;
CODE_00E548:        CE EE 0E      DEC $0EEE                 ;
CODE_00E54B:        60            RTS                       ;

CODE_00E54C:        AD A3 0B      LDA $0BA3                 ;
CODE_00E54F:        C9 C0         CMP #$C0                  ;
CODE_00E551:        B0 0E         BCS CODE_00E561           ;
CODE_00E553:        EE A3 0B      INC $0BA3                 ;
CODE_00E556:        AD A3 0B      LDA $0BA3                 ;
CODE_00E559:        C9 C0         CMP #$C0                  ;
CODE_00E55B:        D0 03         BNE CODE_00E560           ;
CODE_00E55D:        20 74 E5      JSR CODE_00E574           ;
CODE_00E560:        60            RTS                       ;

CODE_00E561:        22 71 81 0E   JSL CODE_0E8171           ;
CODE_00E565:        60            RTS                       ;

CODE_00E566:        AD A4 0B      LDA $0BA4                 ;
CODE_00E569:        D0 08         BNE CODE_00E573           ;
CODE_00E56B:        A9 01         LDA #$01                  ;
CODE_00E56D:        8D 01 16      STA $1601                 ;
CODE_00E570:        8D A4 0B      STA $0BA4                 ;
CODE_00E573:        60            RTS                       ;

CODE_00E574:        C2 20         REP #$20                  ;
CODE_00E576:        0B            PHD                       ;
CODE_00E577:        A9 00 17      LDA #$1700                ;
CODE_00E57A:        5B            TCD                       ;
CODE_00E57B:        A9 5A F1      LDA #$F15A                ;
CODE_00E57E:        85 02         STA $02                   ;
CODE_00E580:        A9 00 13      LDA #$1300                ;
CODE_00E583:        85 04         STA $04                   ;
CODE_00E585:        A9 19 00      LDA #$0019                ;
CODE_00E588:        85 06         STA $06                   ;
CODE_00E58A:        A9 1E 00      LDA #$001E                ;
CODE_00E58D:        85 08         STA $08                   ;
CODE_00E58F:        A9 1C 00      LDA #$001C                ;
CODE_00E592:        85 0A         STA $0A                   ;
CODE_00E594:        A9 11 00      LDA #$0011                ;
CODE_00E597:        85 0C         STA $0C                   ;
CODE_00E599:        A9 28 00      LDA #$0028                ;
CODE_00E59C:        85 0E         STA $0E                   ;
CODE_00E59E:        A9 1C 00      LDA #$001C                ;
CODE_00E5A1:        85 10         STA $10                   ;
CODE_00E5A3:        A9 1D 00      LDA #$001D                ;
CODE_00E5A6:        85 12         STA $12                   ;
CODE_00E5A8:        A9 0A 00      LDA #$000A                ;
CODE_00E5AB:        85 14         STA $14                   ;
CODE_00E5AD:        A9 1B 00      LDA #$001B                ;
CODE_00E5B0:        85 16         STA $16                   ;
CODE_00E5B2:        A9 1D 00      LDA #$001D                ;
CODE_00E5B5:        85 18         STA $18                   ;
CODE_00E5B7:        E2 20         SEP #$20                  ;
CODE_00E5B9:        A9 FF         LDA #$FF                  ;
CODE_00E5BB:        85 1A         STA $1A                   ;
CODE_00E5BD:        2B            PLD                       ;
CODE_00E5BE:        A9 15         LDA #$15                  ;
CODE_00E5C0:        8D 03 16      STA $1603                 ;
CODE_00E5C3:        60            RTS                       ;

;;
;; Duplicate code of $04D800 ends here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DATA_00E5C4:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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


INTERNALHEADER: 
                    db "SUPER MARIO ALL_STARS"         ;ROM NAME
                    db $20                             ;MAP MODE. Mode 20 = 2.68 MHz (= Normal Speed)
                    db $02                             ;CARTRIDGE TYPE: ROM + RAM + SRAM
                    db $0B                             ;ROM SIZE: 9-16 MBIT
                    db $03                             ;RAM SIZE: 64k RAM
                    db $01                             ;DEST. CODE: North America. This ROM comes from America?
                    db $01                             ;FIXED VALUE. It was supposed to be 33?
                    db $00                             ;MASK ROM VERSION. This ROM is not revised.
                    dw $55A3                           ;COMPLEMENT CHECK
                    dw $AA5C                           ;CHECKSUM

;Vectors
                    dw $FFFF                           ;Unused vector
                    dw $FFFF                           ;Unused vector
                    dw CODE_0082FE                     ;COP
                    dw $FFFF                           ;BRK
                    dw CODE_0082FE                     ;ABORT
                    dw NMI                             ;NMI
                    dw Reset                           ;RESET
                    dw IRQ                             ;IRQ

                    dw $FFFF                           ;Unused
                    dw $FFFF                           ;Unused vector
                    dw CODE_0082FE                     ;COP
                    dw CODE_0082FE                     ;BRK
                    dw CODE_0082FE                     ;ABORT
                    dw CODE_0082FE                     ;NMI
                    dw Reset                           ;RESET
                    dw IRQ                             ;IRQ