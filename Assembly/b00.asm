;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SUPER MARIO ALL-STARS (U) DISASSEMBLY
;;;
;;; CREDITS:
;;; Ersanio           spel werdz rite
;;; Roy/FuzzyFreak    imamelia
;;; BlueRabbit        Alcaro
;;; MiOr              wiiqwertyuiop
;;; Dotsarecool       and probably others who I forgot, sorry.
;;;
;;;

; This bank consists of the Presents screen, the Hall screen and the game selection
; as well as other miscellaneous stuff such as setting up the SPC-700

Reset:
                SEI                     ; $00:8000: 78          ; Set interput flag
                STZ $4200               ; $00:8001: 9C 00 42    ; Disable NMI, IRQ, and joypad read
                STZ $420C               ; $00:8004: 9C 0C 42    ; HDMA Disabled
                STZ $420B               ; $00:8007: 9C 0B 42    ; DMA Disabled
                STZ $2140               ; $00:800A: 9C 40 21    ;\
                STZ $2141               ; $00:800D: 9C 41 21    ; | SPC ports disabled.
                STZ $2142               ; $00:8010: 9C 42 21    ; |
                STZ $2143               ; $00:8013: 9C 43 21    ;/
                LDA #$80                ; $00:8016: A9 80       ;\ Forced blank
                STA $2100               ; $00:8018: 8D 00 21    ;/
                CLC                     ; $00:801B: 18          ;\ Native mode
                XCE                     ; $00:801C: FB          ;/
                REP #$38                ; $00:801D: C2 38       ;16-bit AXY, not decimal mode
                LDA #$0000              ; $00:801F: A9 00 00    ;\ Direct page register is now $0000
                TCD                     ; $00:8022: 5B          ;/
                LDA #$01FF              ; $00:8023: A9 FF 01    ;\ The stack pointer is now $00:01FF
                TCS                     ; $00:8026: 1B          ;/
                SEP #$30                ; $00:8027: E2 30       ; 8-bit AXY
                LDA #$00                ; $00:8029: A9 00       ;\
                PHA                     ; $00:802B: 48          ; | Set program bank: Bank $00
                PLB                     ; $00:802C: AB          ;/
                LDA $213F               ; $00:802D: AD 3F 21    ;\ This ROM is NTSC
                BIT #$10                ; $00:8030: 89 10       ; | If the SNES is a NTSC SNES 
                BEQ CODE_00803B         ; $00:8032: F0 07       ;/ Continue
                JMP CODE_0093C7         ; $00:8034: 4C C7 93    ; Otherwise, show error message (incompatible SNES)

CODE_008037:    JML CODE_009641         ; $00:8037: 5C 41 96 00 ;Show error message (Pirated game)

CODE_00803B:    JSR CODE_0083B6         ; $00:803B: 20 B6 83    ;
                LDA #$00                ; $00:803E: A9 00       ;
                STA $701FF0             ; $00:8040: 8F F0 1F 70 ;
                STA $701FF2             ; $00:8044: 8F F2 1F 70 ;
                REP #$20                ; $00:8048: C2 20       ;16-bit A
                LDA #$8000              ; $00:804A: A9 00 80    ;
                STA $0150               ; $00:804D: 8D 50 01    ;
                STA $0152               ; $00:8050: 8D 52 01    ;
                STZ $0154               ; $00:8053: 9C 54 01    ;
                SEP #$20                ; $00:8056: E2 20       ;8-bit A
                LDA #$81                ; $00:8058: A9 81       ;\
                STA $4200               ; $00:805A: 8D 00 42    ;/Enable NMI and joypad.
                STA $001C               ; $00:805D: 8D 1C 00    ;Store timer of Mario logo (#$81 too)
                JSR CODE_008C1B         ; $00:8060: 20 1B 8C    ;
                NOP                     ; $00:8063: EA          ;\No operation. Likely overwriting a
                NOP                     ; $00:8064: EA          ;/deprecated program operation
                LDA #$AA                ; $00:8065: A9 AA       ;\ Copier check
                STA $702000             ; $00:8067: 8F 00 20 70 ; |
                CMP $700000             ; $00:806B: CF 00 00 70 ; |If $700000 is not $AA
                BNE CODE_008037         ; $00:806F: D0 C6       ;/Then the game is pirated, show error msg.
                LDA #$55                ; $00:8071: A9 55       ;\ Another copier check
                STA $702000             ; $00:8073: 8F 00 20 70 ; |
                CMP $700000             ; $00:8077: CF 00 00 70 ; |If $700000 is not $55
                BNE CODE_008037         ; $00:807B: D0 BA       ;/Then the game is pirated, show error msg.
CODE_00807D:    LDA $0122               ; $00:807D: AD 22 01    ;\ Wait for NMI
                BEQ CODE_00807D         ; $00:8080: F0 FB       ;/
                JSR CODE_0086CC         ; $00:8082: 20 CC 86    ;
                CLI                     ; $00:8085: 58          ;Enable IRQ
                INC $FD                 ; $00:8086: E6 FD       ;Frame counter increment
                LDX $E0                 ; $00:8088: A6 E0       ;\ Game mode as index
                LDA DATA_00883D,x       ; $00:808A: BD 3D 88    ; |If flag to clear OAM is set, indexed by
                BEQ CODE_008092         ; $00:808D: F0 03       ; |game mode
                JSR CODE_008719         ; $00:808F: 20 19 87    ;/ <Then clear the OAM.
CODE_008092:    JSL GameIndex           ; $00:8092: 22 C7 80 00 ; Update the game
                LDX $E0                 ; $00:8096: A6 E0       ;\
                LDA DATA_00883D,x       ; $00:8098: BD 3D 88    ; |If flag to update OAM sizes is set
                BEQ CODE_0080A0         ; $00:809B: F0 03       ; |
                JSR CODE_008773         ; $00:809D: 20 73 87    ;/ Update OAM sizes
CODE_0080A0:    STZ $0122               ; $00:80A0: 9C 22 01    ;
                JMP CODE_00807D         ; $00:80A3: 4C 7D 80    ; Game loop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pointers below are specified by $E0's values
;;

DATA_0080A6:    db CODE_009BC0                                  ; Nintendo Presents Screen + Title screen
                db CODE_00A2D8                                  ; Set up game select screen
                db CODE_00A39B                                  ; Game select screen
                db CODE_00B1CE                                  ; Open erase file box
                db CODE_00B440                                  ; Erase file box
                db CODE_00B2A5                                  ; Close erase file box
                db CODE_00A2C5                                  ; Fade out of game select screen
                db CODE_0089F9                                  ; Setup game
                db CODE_0081A0                                  ; Setup game
                db CODE_00822B                                  ; Bring up game-play demo
                db $00                                          ; (null)

DATA_0080B1:    db CODE_009BC0>>8                               ;high bytes
                db CODE_00A2D8>>8                               ;
                db CODE_00A39B>>8                               ;
                db CODE_00B1CE>>8                               ;
                db CODE_00B440>>8                               ;
                db CODE_00B2A5>>8                               ;
                db CODE_00A2C5>>8                               ;
                db CODE_0089F9>>8                               ;
                db CODE_0081A0>>8                               ;
                db CODE_00822B>>8                               ;
                db $00                                          ;

DATA_0080BC:    db CODE_009BC0>>16                              ;bank bytes
                db CODE_00A2D8>>16                              ;
                db CODE_00A39B>>16                              ;
                db CODE_00B1CE>>16                              ;
                db CODE_00B440>>16                              ;
                db CODE_00B2A5>>16                              ;
                db CODE_00A2C5>>16                              ;
                db CODE_0089F9>>16                              ;
                db CODE_0081A0>>16                              ;
                db CODE_00822B>>16                              ;
                db $00                                          ;

GameIndex:
                LDX $E0                 ; $00:80C7: A6 E0       ;\
                LDA.l DATA_0080A6,x     ; $00:80C9: BF A6 80 00 ; |
                STA $03                 ; $00:80CD: 85 03       ; |Store indirect pointers.
                LDA.l DATA_0080B1,x     ; $00:80CF: BF B1 80 00 ; |
                STA $04                 ; $00:80D3: 85 04       ; |
                LDA.l DATA_0080BC,x     ; $00:80D5: BF BC 80 00 ; |
                STA $05                 ; $00:80D9: 85 05       ;/
                JML [$0003]             ; $00:80DB: DC 03 00    ;Jump to the indirect game pointers.

CODE_0080DE:    JSL ForceBlank          ; $00:80DE: 22 2E 88 00 ;Forced blank + HDMA-Disable
                STZ $4200               ; $00:80E2: 9C 00 42    ;Disable interrupts
                LDA #$00                ; $00:80E5: A9 00       ;\
                PHA                     ; $00:80E7: 48          ; |Set program bank to $00
                PLB                     ; $00:80E8: AB          ;/
                SEI                     ; $00:80E9: 78          ;Set interrupt flag
                STZ $4200               ; $00:80EA: 9C 00 42    ;\No interrupts and HDMA
                STZ $420C               ; $00:80ED: 9C 0C 42    ;/
                REP #$20                ; $00:80F0: C2 20       ;\
                LDA #$01FF              ; $00:80F2: A9 FF 01    ; |Stack pointer: $01FF
                TCS                     ; $00:80F5: 1B          ; |
                SEP #$20                ; $00:80F6: E2 20       ;/
                STZ $60                 ; $00:80F8: 64 60       ;\
                STZ $61                 ; $00:80FA: 64 61       ; |
                STZ $62                 ; $00:80FC: 64 62       ; |Clear sound effects and music
                STZ $63                 ; $00:80FE: 64 63       ; |
                STZ $2140               ; $00:8100: 9C 40 21    ; |
                STZ $2141               ; $00:8103: 9C 41 21    ; |
                STZ $2142               ; $00:8106: 9C 42 21    ; |
                STZ $2143               ; $00:8109: 9C 43 21    ; |
                LDA #$F0                ; $00:810C: A9 F0       ; |(Mute SFX panel 2?)
                STA $2141               ; $00:810E: 8D 41 21    ;/
                JSR CODE_0083B6         ; $00:8111: 20 B6 83    ;
                STZ $E0                 ; $00:8114: 64 E0       ;
                LDA #$03                ; $00:8116: A9 03       ;
                STA $E1                 ; $00:8118: 85 E1       ;
                LDA #$01                ; $00:811A: A9 01       ;
                STA $0100               ; $00:811C: 8D 00 01    ;
                LDA #$01                ; $00:811F: A9 01       ;
                STA $0124               ; $00:8121: 8D 24 01    ;
                LDA #$00                ; $00:8124: A9 00       ;
                STA $701FF2             ; $00:8126: 8F F2 1F 70 ;
                STA $7FFF00             ; $00:812A: 8F 00 FF 7F ;
                LDA #$81                ; $00:812E: A9 81       ;
                STA $4200               ; $00:8130: 8D 00 42    ;
                STA $001C               ; $00:8133: 8D 1C 00    ;
                JMP CODE_00807D         ; $00:8136: 4C 7D 80    ;

CODE_008139:    JSL ForceBlank          ; $00:8139: 22 2E 88 00 ;Forced blank + HDMA-Disable
                STZ $4200               ; $00:813D: 9C 00 42    ;Disable interrupts
                LDA #$00                ; $00:8140: A9 00       ;\
                PHA                     ; $00:8142: 48          ; |Set program bank to $00
                PLB                     ; $00:8143: AB          ;/
                SEI                     ; $00:8144: 78          ;Set interrupt flag
                STZ $4200               ; $00:8145: 9C 00 42    ;\Disable interrupts and HDMA
                STZ $420C               ; $00:8148: 9C 0C 42    ;/
                REP #$20                ; $00:814B: C2 20       ;\
                LDA #$01FF              ; $00:814D: A9 FF 01    ; |Stack pointer: $01FF
                TCS                     ; $00:8150: 1B          ; |
                SEP #$20                ; $00:8151: E2 20       ;/
                STZ $60                 ; $00:8153: 64 60       ;\
                STZ $61                 ; $00:8155: 64 61       ; |
                STZ $62                 ; $00:8157: 64 62       ; |
                STZ $63                 ; $00:8159: 64 63       ; |
                STZ $2140               ; $00:815B: 9C 40 21    ; |Clear sound effects and music
                STZ $2141               ; $00:815E: 9C 41 21    ; |
                STZ $2142               ; $00:8161: 9C 42 21    ; |
                STZ $2143               ; $00:8164: 9C 43 21    ; |
                LDA #$F0                ; $00:8167: A9 F0       ; |Mute SFX panel 2?
                STA $2141               ; $00:8169: 8D 41 21    ;/
                JSR CODE_0083B6         ; $00:816C: 20 B6 83    ;
                STZ $E0                 ; $00:816F: 64 E0       ;
                LDA #$03                ; $00:8171: A9 03       ;
                STA $E1                 ; $00:8173: 85 E1       ;
                LDA #$01                ; $00:8175: A9 01       ;
                STA $0100               ; $00:8177: 8D 00 01    ;
                LDA #$01                ; $00:817A: A9 01       ;
                STA $0124               ; $00:817C: 8D 24 01    ;
                LDA #$00                ; $00:817F: A9 00       ;
                STA $701FF2             ; $00:8181: 8F F2 1F 70 ;
                STA $7FFF00             ; $00:8185: 8F 00 FF 7F ;
                LDA #$81                ; $00:8189: A9 81       ;
                STA $4200               ; $00:818B: 8D 00 42    ;
                STA $001C               ; $00:818E: 8D 1C 00    ;
                JMP CODE_00807D         ; $00:8191: 4C 7D 80    ;

DATA_008194:    db CODE_038000                                  ;Indirect game pointers.
                db CODE_0D8000                                  ;SMB1, SMBTLL, SMB2, SMB3
                db CODE_118000                                  ;
                db CODE_208000                                  ;

DATA_008198:    db CODE_038000>>8                               ;
                db CODE_0D8000>>8                               ;
                db CODE_118000>>8                               ;
                db CODE_208000>>8                               ;

DATA_00819C:    db CODE_038000>>16                              ;
                db CODE_0D8000>>16                              ;
                db CODE_118000>>16                              ;
                db CODE_208000>>16                              ;

CODE_0081A0:    LDX #$0F                ; $00:81A0: A2 0F       ;
CODE_0081A2:    LDA $70,x               ; $00:81A2: B5 70       ;
                STA $700490,x           ; $00:81A4: 9F 90 04 70 ;
                DEX                     ; $00:81A8: CA          ;
                BPL CODE_0081A2         ; $00:81A9: 10 F7       ;
                LDA $D1                 ; $00:81AB: A5 D1       ;
                STA $70000E             ; $00:81AD: 8F 0E 00 70 ;
                LDA $D0                 ; $00:81B1: A5 D0       ;
                STA $70000F             ; $00:81B3: 8F 0F 00 70 ;
                REP #$20                ; $00:81B7: C2 20       ;
                LDA #$0000              ; $00:81B9: A9 00 00    ;
                STA $00                 ; $00:81BC: 85 00       ;
                LDA #$0000              ; $00:81BE: A9 00 00    ;
                LDY #$7F                ; $00:81C1: A0 7F       ;
                JSL CODE_00868E         ; $00:81C3: 22 8E 86 00 ;
                SEP #$20                ; $00:81C7: E2 20       ;
                LDA $D0                 ; $00:81C9: A5 D0       ;
                TAX                     ; $00:81CB: AA          ;
                INC A                   ; $00:81CC: 1A          ;
                ASL A                   ; $00:81CD: 0A          ;
                STA $7FFF00             ; $00:81CE: 8F 00 FF 7F ;
                LDA.l DATA_008194,x     ; $00:81D2: BF 94 81 00 ;
                STA $03                 ; $00:81D6: 85 03       ;
                LDA.l DATA_008198,x     ; $00:81D8: BF 98 81 00 ;
                STA $04                 ; $00:81DC: 85 04       ;
                LDA.l DATA_00819C,x     ; $00:81DE: BF 9C 81 00 ;
                STA $05                 ; $00:81E2: 85 05       ;
                REP #$20                ; $00:81E4: C2 20       ;
                LDA #$00F0              ; $00:81E6: A9 F0 00    ;
                STA $00                 ; $00:81E9: 85 00       ;
                LDA #$0010              ; $00:81EB: A9 10 00    ;
                LDY #$00                ; $00:81EE: A0 00       ;
                JSL CODE_00868E         ; $00:81F0: 22 8E 86 00 ;
                LDA #$1E00              ; $00:81F4: A9 00 1E    ;
                STA $00                 ; $00:81F7: 85 00       ;
                LDA #$0200              ; $00:81F9: A9 00 02    ;
                LDY #$00                ; $00:81FC: A0 00       ;
                JSL CODE_00868E         ; $00:81FE: 22 8E 86 00 ;
                SEP #$20                ; $00:8202: E2 20       ;
                PLB                     ; $00:8204: AB          ;
                PLB                     ; $00:8205: AB          ;
                PLB                     ; $00:8206: AB          ;
                JSL CODE_00A849         ; $00:8207: 22 49 A8 00 ;Load savegame into RAM $7FFB00 area.
                LDA #$00                ; $00:820B: A9 00       ;
                STA $701FF8             ; $00:820D: 8F F8 1F 70 ;
                STA $701FF9             ; $00:8211: 8F F9 1F 70 ;
                REP #$30                ; $00:8215: C2 30       ;
                LDA $700004             ; $00:8217: AF 04 00 70 ;
                TAX                     ; $00:821B: AA          ;
                SEP #$20                ; $00:821C: E2 20       ;
                LDA $700010,x           ; $00:821E: BF 10 00 70 ;
                STA $7FFF02             ; $00:8222: 8F 02 FF 7F ;
                SEP #$10                ; $00:8226: E2 10       ;
                JML [$0003]             ; $00:8228: DC 03 00    ;

CODE_00822B:    LDA $701FF0             ; $00:822B: AF F0 1F 70 ;\ Get game to show
                PHA                     ; $00:822F: 48          ;/
                INC A                   ; $00:8230: 1A          ;\
                AND #$03                ; $00:8231: 29 03       ; | Do  different game next time
                STA $701FF0             ; $00:8233: 8F F0 1F 70 ;/
                STZ $D1                 ; $00:8237: 64 D1       ;
                LDA #$01                ; $00:8239: A9 01       ;\ We are doing the game-play exmaple video
                STA $701FF2             ; $00:823B: 8F F2 1F 70 ;/
                LDX #$0F                ; $00:823F: A2 0F       ;\
CODE_008241:    LDA $70,x               ; $00:8241: B5 70       ; |
                STA $700490,x           ; $00:8243: 9F 90 04 70 ; | ?? Seems to write $00 to SRAM
                DEX                     ; $00:8247: CA          ; |
                BPL CODE_008241         ; $00:8248: 10 F7       ;/
                REP #$20                ; $00:824A: C2 20       ;
                LDA #$0000              ; $00:824C: A9 00 00    ;\
                STA $00                 ; $00:824F: 85 00       ; |
                LDA #$0000              ; $00:8251: A9 00 00    ; | Clear $7F:0000
                LDY #$7F                ; $00:8254: A0 7F       ; |
                JSL CODE_00868E         ; $00:8256: 22 8E 86 00 ;/
                SEP #$20                ; $00:825A: E2 20       ;
                PLA                     ; $00:825C: 68          ;\ Get game to show
                STA $00                 ; $00:825D: 85 00       ;/
                TAX                     ; $00:825F: AA          ; A->X
                INC A                   ; $00:8260: 1A          ; +1
                ASL A                   ; $00:8261: 0A          ; *2
                STA $7FFF00             ; $00:8262: 8F 00 FF 7F ; Store here
                LDA.l DATA_008194,x     ; $00:8266: BF 94 81 00 ;\
                STA $03                 ; $00:826A: 85 03       ; |
                LDA.l DATA_008198,x     ; $00:826C: BF 98 81 00 ; | Get pointers
                STA $04                 ; $00:8270: 85 04       ; |
                LDA.l DATA_00819C,x     ; $00:8272: BF 9C 81 00 ; |
                STA $05                 ; $00:8276: 85 05       ;/
                REP #$20                ; $00:8278: C2 20       ;
                LDA #$00F0              ; $00:827A: A9 F0 00    ;\
                STA $00                 ; $00:827D: 85 00       ; |
                LDA #$0010              ; $00:827F: A9 10 00    ; | Clear $00:00F0
                LDY #$00                ; $00:8282: A0 00       ; |
                JSL CODE_00868E         ; $00:8284: 22 8E 86 00 ;/
                LDA #$1E00              ; $00:8288: A9 00 1E    ;\
                STA $00                 ; $00:828B: 85 00       ; |
                LDA #$0200              ; $00:828D: A9 00 02    ; | Clear $00:0200
                LDY #$00                ; $00:8290: A0 00       ; |
                JSL CODE_00868E         ; $00:8292: 22 8E 86 00 ;/
                LDA #$8000              ; $00:8296: A9 00 80    ;
                SEP #$20                ; $00:8299: E2 20       ;
                PLB                     ; $00:829B: AB          ;\
                PLB                     ; $00:829C: AB          ; | Pull return address
                PLB                     ; $00:829D: AB          ;/
                REP #$30                ; $00:829E: C2 30       ;
                LDA $00                 ; $00:82A0: A5 00       ;
                AND #$0003              ; $00:82A2: 29 03 00    ;
                ASL A                   ; $00:82A5: 0A          ;
                TAX                     ; $00:82A6: AA          ;
                LDA DATA_008DD3,x       ; $00:82A7: BD D3 8D    ;
                TAY                     ; $00:82AA: A8          ;
                LDX #$0000              ; $00:82AB: A2 00 00    ;
                TXA                     ; $00:82AE: 8A          ;
                SEP #$20                ; $00:82AF: E2 20       ;
CODE_0082B1:    LDA DATA_008DE3,y       ; $00:82B1: B9 E3 8D    ;
                STA $7FFB00,x           ; $00:82B4: 9F 00 FB 7F ;
                INY                     ; $00:82B8: C8          ;
                INX                     ; $00:82B9: E8          ;
                CPX #$0106              ; $00:82BA: E0 06 01    ;
                BNE CODE_0082B1         ; $00:82BD: D0 F2       ;
                LDA #$00                ; $00:82BF: A9 00       ;
                STA $7FFB00             ; $00:82C1: 8F 00 FB 7F ;
                STA $7FFB01             ; $00:82C5: 8F 01 FB 7F ;
                SEP #$30                ; $00:82C9: E2 30       ;
                JML [$0003]             ; $00:82CB: DC 03 00    ; Jump to pointer

PNTR_0082CE:    dw CODE_0082FF                                  ;\
                dw CODE_00834E                                  ; |
                dw CODE_008353                                  ; | NMI Pointers, based on current game.
                dw CODE_008358                                  ; | 
                dw CODE_00835D                                  ;/

NMI:
                SEI                     ; $00:82D8: 78          ;Set interrupt flag
                REP #$30                ; $00:82D9: C2 30       ;\
                PHA                     ; $00:82DB: 48          ; |
                PHX                     ; $00:82DC: DA          ; |Preserve 'everything', set direct page reg to $0000
                PHY                     ; $00:82DD: 5A          ; |
                PHD                     ; $00:82DE: 0B          ; |Set program bank to current bank
                LDA #$0000              ; $00:82DF: A9 00 00    ; |
                TCD                     ; $00:82E2: 5B          ; |
                PHB                     ; $00:82E3: 8B          ; |
                PHK                     ; $00:82E4: 4B          ; |
                PLB                     ; $00:82E5: AB          ; |
                LDA $00                 ; $00:82E6: A5 00       ; |PEI ($00) would've worked too.
                PHA                     ; $00:82E8: 48          ; |Preserve RAM address $00-$01 (scratch ram)
                SEP #$30                ; $00:82E9: E2 30       ;/
                LDA $7FFF00             ; $00:82EB: AF 00 FF 7F ;\
                TAX                     ; $00:82EF: AA          ; |Jump to NMI routines of the current game
                JSR (PNTR_0082CE,x)     ; $00:82F0: FC CE 82    ;/
                REP #$30                ; $00:82F3: C2 30       ;\
                PLA                     ; $00:82F5: 68          ; |Recover scratch RAM
                STA $0000               ; $00:82F6: 8D 00 00    ; |
                PLB                     ; $00:82F9: AB          ; |
                PLD                     ; $00:82FA: 2B          ; |
                PLY                     ; $00:82FB: 7A          ; |Recover 'everything'
                PLX                     ; $00:82FC: FA          ; |
                PLA                     ; $00:82FD: 68          ; |
CODE_0082FE:    RTI                     ; $00:82FE: 40          ;/

CODE_0082FF:    LDA #$01                ; $00:82FF: A9 01       ;\
                XBA                     ; $00:8301: EB          ; |Set direct page to $0100
                LDA #$00                ; $00:8302: A9 00       ; |
                TCD                     ; $00:8304: 5B          ;/
                LDA $4210               ; $00:8305: AD 10 42    ;vital read to enable NMI
                LDA $00                 ; $00:8308: A5 00       ;\
                STA $2100               ; $00:830A: 8D 00 21    ;/Copy of reg $2100 to $0100 (Brightness)
                STZ $420C               ; $00:830D: 9C 0C 42    ;Disable HDMA
                LDA $22                 ; $00:8310: A5 22       ;\
                BNE CODE_00831D         ; $00:8312: D0 09       ; |
                INC $22                 ; $00:8314: E6 22       ; |
                PHD                     ; $00:8316: 0B          ; |Flag to do some general purpose DMA?
                JSR CODE_0088C3         ; $00:8317: 20 C3 88    ; |When $0122 is set, do some DMA transfers I guess
                SEP #$30                ; $00:831A: E2 30       ; |
                PLD                     ; $00:831C: 2B          ;/
CODE_00831D:    JSR CODE_00841A         ; $00:831D: 20 1A 84    ;Set up hardware addresses
                JSR CODE_0087CC         ; $00:8320: 20 CC 87    ;Do something SFX panels and music related
                LDX #$81                ; $00:8323: A2 81       ;\
                LDA $24                 ; $00:8325: A5 24       ; |
                BEQ CODE_008340         ; $00:8327: F0 17       ; |If $7E0124 is set, let the IRQ cover the whole screen
                AND #$FE                ; $00:8329: 29 FE       ; |by disabling NMI or something.
                STA $21                 ; $00:832B: 85 21       ; |
                LDA $4211               ; $00:832D: AD 11 42    ; |
                LDA $25                 ; $00:8330: A5 25       ; |
                STA $4209               ; $00:8332: 8D 09 42    ; |
                STZ $420A               ; $00:8335: 9C 0A 42    ; |
                STZ $4207               ; $00:8338: 9C 07 42    ; |
                STZ $4208               ; $00:833B: 9C 08 42    ; |
                LDX #$A1                ; $00:833E: A2 A1       ; |
CODE_008340:    STX $4200               ; $00:8340: 8E 00 42    ;/
                LDA $00                 ; $00:8343: A5 00       ;\$7E0100 = brightness
                STA $2100               ; $00:8345: 8D 00 21    ;/
                LDA $20                 ; $00:8348: A5 20       ;\$7E0120 = HDMA enable
                STA $420C               ; $00:834A: 8D 0C 42    ;/
                RTS                     ; $00:834D: 60          ;

CODE_00834E:    JSL CODE_038003         ; $00:834E: 22 03 80 03 ;\NMI for SMB1
                RTS                     ; $00:8352: 60          ;/

CODE_008353:    JSL CODE_0D8003         ; $00:8353: 22 03 80 0D ;\NMI for SMB:TLL
                RTS                     ; $00:8357: 60          ;/

CODE_008358:    JSL CODE_118003         ; $00:8358: 22 03 80 11 ;\NMI for SMB2
                RTS                     ; $00:835C: 60          ;/

CODE_00835D:    JSL CODE_208003         ; $00:835D: 22 03 80 20 ;\NMI for SMB3
                RTS                     ; $00:8361: 60          ;/

PNTR_008362:    dw CODE_00838B                                  ;\
                dw CODE_0083A2                                  ; |
                dw CODE_0083A7                                  ; | IRQ Pointers, based on current game.
                dw CODE_0083AC                                  ; |
                dw CODE_0083B1                                  ;/

IRQ:
                REP #$30                ; $00:836C: C2 30       ;\
                PHA                     ; $00:836E: 48          ; |
                PHX                     ; $00:836F: DA          ; |Preserve "everything", set direct page to $0000
                PHY                     ; $00:8370: 5A          ; |
                PHD                     ; $00:8371: 0B          ; |
                LDA #$0000              ; $00:8372: A9 00 00    ; |
                TCD                     ; $00:8375: 5B          ; |
                PHB                     ; $00:8376: 8B          ; |
                PHK                     ; $00:8377: 4B          ; |
                PLB                     ; $00:8378: AB          ; |
                SEP #$30                ; $00:8379: E2 30       ;/
                LDA $7FFF00             ; $00:837B: AF 00 FF 7F ;\
                TAX                     ; $00:837F: AA          ; |Execute IRQ based on current game
                JSR (PNTR_008362,x)     ; $00:8380: FC 62 83    ;/
                REP #$30                ; $00:8383: C2 30       ;\
                PLB                     ; $00:8385: AB          ; |
                PLD                     ; $00:8386: 2B          ; |Recover "everything" and return
                PLY                     ; $00:8387: 7A          ; |
                PLX                     ; $00:8388: FA          ; |
                PLA                     ; $00:8389: 68          ; |
                RTI                     ; $00:838A: 40          ;/

CODE_00838B:    LDA $4211               ; $00:838B: AD 11 42    ;\Menu IRQ routine. Wait until IRQ occurs
                BPL CODE_0083A1         ; $00:838E: 10 11       ;/
CODE_008390:    BIT $4212               ; $00:8390: 2C 12 42    ;\Wait for H-blank
                BVC CODE_008390         ; $00:8393: 50 FB       ;/
                LDA $0214               ; $00:8395: AD 14 02    ;\ 
                STA $210D               ; $00:8398: 8D 0D 21    ; |Set BG1 H-scroll to normal
                LDA $0215               ; $00:839B: AD 15 02    ; |
                STA $210D               ; $00:839E: 8D 0D 21    ; |
CODE_0083A1:    RTS                     ; $00:83A1: 60          ;/

CODE_0083A2:    JSL CODE_038006         ; $00:83A2: 22 06 80 03 ;\IRQ for SMB1
                RTS                     ; $00:83A6: 60          ;/

CODE_0083A7:    JSL CODE_0D8006         ; $00:83A7: 22 06 80 0D ;\IRQ for SMB:TLL
                RTS                     ; $00:83AB: 60          ;/

CODE_0083AC:    JSL CODE_118006         ; $00:83AC: 22 06 80 11 ;\IRQ for SMB2
                RTS                     ; $00:83B0: 60          ;/

CODE_0083B1:    JSL CODE_208006         ; $00:83B1: 22 06 80 20 ;\IRQ for SMB3
                RTS                     ; $00:83B5: 60          ;/

CODE_0083B6:    JSR CODE_008A4F         ; $00:83B6: 20 4F 8A    ;Upload SPC engine + audio data of hall and menu screen
CODE_0083B9:    REP #$20                ; $00:83B9: C2 20       ;16-bit A. 8-bit XY.
                LDA #$0150              ; $00:83BB: A9 50 01    ;\ Size: $0150
                STA $00                 ; $00:83BE: 85 00       ;/
                LDA #$0000              ; $00:83C0: A9 00 00    ;\ Destination: $00:0000
                TAY                     ; $00:83C3: A8          ;/
                JSL CODE_00868E         ; $00:83C4: 22 8E 86 00 ; Clear RAM
                LDA #$1E00              ; $00:83C8: A9 00 1E    ;\ Size: $1E00
                STA $00                 ; $00:83CB: 85 00       ;/
                LDA #$0200              ; $00:83CD: A9 00 02    ;\ Destination: $00:0200
                TAY                     ; $00:83D0: A8          ;/
                JSL CODE_00868E         ; $00:83D1: 22 8E 86 00 ; Clear RAM
                LDA #$E000              ; $00:83D5: A9 00 E0    ;\ Size: $E000
                STA $00                 ; $00:83D8: 85 00       ;/
                LDA #$2000              ; $00:83DA: A9 00 20    ;\ Destination: $7E:2000
                LDY #$7E                ; $00:83DD: A0 7E       ;/
                JSL CODE_00868E         ; $00:83DF: 22 8E 86 00 ; Clear RAM
                LDA #$0000              ; $00:83E3: A9 00 00    ;\ Size: $10000
                STA $00                 ; $00:83E6: 85 00       ;/
                LDA #$0000              ; $00:83E8: A9 00 00    ;\ Destination: $7F:0000
                LDY #$7F                ; $00:83EB: A0 7F       ;/
                JSL CODE_00868E         ; $00:83ED: 22 8E 86 00 ; Clear RAM
                LDA #$0000              ; $00:83F1: A9 00 00    ;
                STA $7F8000             ; $00:83F4: 8F 00 80 7F ;
                DEC A                   ; $00:83F8: 3A          ;
                STA $7F8002             ; $00:83F9: 8F 02 80 7F ;
                SEP #$20                ; $00:83FD: E2 20       ;
                LDX #$00                ; $00:83FF: A2 00       ;
                JSL CODE_00849C         ; $00:8401: 22 9C 84 00 ;
                PHD                     ; $00:8405: 0B          ;\
                LDA #$01                ; $00:8406: A9 01       ; |
                XBA                     ; $00:8408: EB          ; |Direct page: $0100
                LDA #$00                ; $00:8409: A9 00       ; |
                TCD                     ; $00:840B: 5B          ; |
                STZ $2133               ; $00:840C: 9C 33 21    ; |No interlace, overscan, p-hires etc
                JSR CODE_00841A         ; $00:840F: 20 1A 84    ; |Setup hardware RAM addresses of menu screens
                PLD                     ; $00:8412: 2B          ;/Recover direct page
                LDA #$01                ; $00:8413: A9 01       ;\
                STA $000AC0             ; $00:8415: 8F C0 0A 00 ;/Upload full palette data from $7F:9200 for 1 frame.
                RTS                     ; $00:8419: 60          ;

CODE_00841A:    REP #$10                ; $00:841A: C2 10       ;16-bit XY. This routine sets up hardware regs
                LDA $01                 ; $00:841C: A5 01       ;\DP is $0100 in this case.
                STA $2101               ; $00:841E: 8D 01 21    ;/Object size + Chr address
                LDX $04                 ; $00:8421: A6 04       ;\BG1 Tilemap Address and Size
                STX $2107               ; $00:8423: 8E 07 21    ;/BG2 Tilemap Address and Size
                LDA $06                 ; $00:8426: A5 06       ;\BG3 Tilemap Address and Size
                STA $2109               ; $00:8428: 8D 09 21    ;/
                LDA $07                 ; $00:842B: A5 07       ;\BG1 and 2 Character address
                STA $210B               ; $00:842D: 8D 0B 21    ;/
                LDA $08                 ; $00:8430: A5 08       ;\
                STA $210D               ; $00:8432: 8D 0D 21    ; |BG1 Horizontal Scroll
                LDA $09                 ; $00:8435: A5 09       ; |
                STA $210D               ; $00:8437: 8D 0D 21    ;/
                LDA $0A                 ; $00:843A: A5 0A       ;\
                STA $210E               ; $00:843C: 8D 0E 21    ; |BG1 Vertical Scroll
                LDA $0B                 ; $00:843F: A5 0B       ; |
                STA $210E               ; $00:8441: 8D 0E 21    ;/
                LDA $0C                 ; $00:8444: A5 0C       ;\
                STA $210F               ; $00:8446: 8D 0F 21    ; |BG2 Horizontal Scroll
                LDA $0D                 ; $00:8449: A5 0D       ; |
                STA $210F               ; $00:844B: 8D 0F 21    ;/
                LDA $0E                 ; $00:844E: A5 0E       ;\
                STA $2110               ; $00:8450: 8D 10 21    ; |BG2 Vertical Scroll
                LDA $0F                 ; $00:8453: A5 0F       ; |
                STA $2110               ; $00:8455: 8D 10 21    ;/
                LDA $10                 ; $00:8458: A5 10       ;\
                STA $2111               ; $00:845A: 8D 11 21    ; |BG3 Horizontal Scroll
                LDA $11                 ; $00:845D: A5 11       ; |
                STA $2111               ; $00:845F: 8D 11 21    ;/
                LDA $12                 ; $00:8462: A5 12       ;\
                STA $2112               ; $00:8464: 8D 12 21    ; |BG3 Vertical Scroll
                LDA $13                 ; $00:8467: A5 13       ; |
                STA $2112               ; $00:8469: 8D 12 21    ;/
                LDA $1D                 ; $00:846C: A5 1D       ;\
                STA $2132               ; $00:846E: 8D 32 21    ; |
                LDA $1E                 ; $00:8471: A5 1E       ; |Fixed Color data
                STA $2132               ; $00:8473: 8D 32 21    ; |
                LDA $1F                 ; $00:8476: A5 1F       ; |
                STA $2132               ; $00:8478: 8D 32 21    ;/
                LDX $17                 ; $00:847B: A6 17       ;\Main and Subscreen designation
                STX $212C               ; $00:847D: 8E 2C 21    ;/
                LDX $19                 ; $00:8480: A6 19       ;\Window mask designation for main
                STX $212E               ; $00:8482: 8E 2E 21    ;/and subscreen
                LDX $14                 ; $00:8485: A6 14       ;\Window Mask Settings for BG1/2/3/4
                STX $2123               ; $00:8487: 8E 23 21    ;/
                LDA $16                 ; $00:848A: A5 16       ;\Window Mask Settings for OBJ and Color Window
                STA $2125               ; $00:848C: 8D 25 21    ;/
                LDX $1B                 ; $00:848F: A6 1B       ;\Color addition select & CGADSUB
                STX $2130               ; $00:8491: 8E 30 21    ;/
                LDX $02                 ; $00:8494: A6 02       ;\Screen mode
                STX $2105               ; $00:8496: 8E 05 21    ;/
                SEP #$10                ; $00:8499: E2 10       ;8-bit XY
                RTS                     ; $00:849B: 60          ;Return.

CODE_00849C:    JSL ForceBlank          ; $00:849C: 22 2E 88 00 ;Forced blank + HDMA-Disable
                PHD                     ; $00:84A0: 0B          ;\
                LDA #$01                ; $00:84A1: A9 01       ; |
                XBA                     ; $00:84A3: EB          ; |Direct page: $0100 
                LDA #$00                ; $00:84A4: A9 00       ; |
                TCD                     ; $00:84A6: 5B          ;/
                TXA                     ; $00:84A7: 8A          ;\ If it is not time to upload the game select screen tilemap, branch
                BEQ CODE_0084D7         ; $00:84A8: F0 2D       ;/
                LDA #$01                ; $00:84AA: A9 01       ;\
                STA $0124               ; $00:84AC: 8D 24 01    ; | Set vertical IRQ timer
                LDA #$37                ; $00:84AF: A9 37       ; |
                STA $0125               ; $00:84B1: 8D 25 01    ;/
                PHB                     ; $00:84B4: 8B          ;\
                PHX                     ; $00:84B5: DA          ; |
                REP #$30                ; $00:84B6: C2 30       ; |
                LDA $0000D0             ; $00:84B8: AF D0 00 00 ; |Upload the game select tilemap to RAM after
                AND #$0003              ; $00:84BC: 29 03 00    ; |closing the file select menu. Upload the tiles
                ASL A                   ; $00:84BF: 0A          ; |according to $D0's index so we won't upload the
                TAX                     ; $00:84C0: AA          ; |wrong game's portrait tiles.
                LDA DATA_008559,x       ; $00:84C1: BD 59 85    ; |
                STA $0214               ; $00:84C4: 8D 14 02    ; |
                LDX.w #DATA_02F000      ; $00:84C7: A2 00 F0    ; |
                LDY #$1000              ; $00:84CA: A0 00 10    ; |
                LDA #$0FFF              ; $00:84CD: A9 FF 0F    ; |Source: $02:F000. Dest: $7F:1000
                MVN $7F, DATA_02F000>>16    ; $00:84D0: 54 7F 02    ; |Used when collapsing a file select menu
                SEP #$30                ; $00:84D3: E2 30       ; |after selecting a game. 8-bit AXY
                PLX                     ; $00:84D5: FA          ; |
                PLB                     ; $00:84D6: AB          ;/
CODE_0084D7:    LDA DATA_008873,x       ; $00:84D7: BD 73 88    ;
                STA $0A                 ; $00:84DA: 85 0A       ;
                LDA DATA_008873+2,x     ; $00:84DC: BD 75 88    ;
                STA $0B                 ; $00:84DF: 85 0B       ;
                LDA DATA_00885D,x       ; $00:84E1: BD 5D 88    ;
                STA $01                 ; $00:84E4: 85 01       ;
                LDA DATA_00885D+2,x     ; $00:84E6: BD 5F 88    ;
                STA $02                 ; $00:84E9: 85 02       ;
                STZ $03                 ; $00:84EB: 64 03       ;
                LDA DATA_008861,x       ; $00:84ED: BD 61 88    ;
                STA $04                 ; $00:84F0: 85 04       ;
                LDA DATA_008863,x       ; $00:84F2: BD 63 88    ;
                STA $05                 ; $00:84F5: 85 05       ;
                LDA DATA_008865,x       ; $00:84F7: BD 65 88    ;
                STA $06                 ; $00:84FA: 85 06       ;
                LDA DATA_008867,x       ; $00:84FC: BD 67 88    ;
                STA $07                 ; $00:84FF: 85 07       ;
                LDA DATA_008869,x       ; $00:8501: BD 69 88    ;
                STA $210C               ; $00:8504: 8D 0C 21    ;
                LDA #$20                ; $00:8507: A9 20       ;
                STA $1D                 ; $00:8509: 85 1D       ;
                ASL A                   ; $00:850B: 0A          ;
                STA $1E                 ; $00:850C: 85 1E       ;
                ASL A                   ; $00:850E: 0A          ;
                STA $1F                 ; $00:850F: 85 1F       ;
                LDA DATA_00886B,x       ; $00:8511: BD 6B 88    ;
                STA $17                 ; $00:8514: 85 17       ;
                LDA DATA_00886D,x       ; $00:8516: BD 6D 88    ;
                STA $18                 ; $00:8519: 85 18       ;
                LDA DATA_00886F,x       ; $00:851B: BD 6F 88    ;
                STA $1B                 ; $00:851E: 85 1B       ;
                LDA DATA_008871,x       ; $00:8520: BD 71 88    ;
                STA $1C                 ; $00:8523: 85 1C       ;
                STZ $19                 ; $00:8525: 64 19       ;
                STZ $1A                 ; $00:8527: 64 1A       ;
                STZ $14                 ; $00:8529: 64 14       ;
                STZ $15                 ; $00:852B: 64 15       ;
                STZ $16                 ; $00:852D: 64 16       ;
                REP #$20                ; $00:852F: C2 20       ;\
                LDA #$4300              ; $00:8531: A9 00 43    ; |Set direct page to $4300
                TCD                     ; $00:8534: 5B          ; |
                JSR CODE_008565         ; $00:8535: 20 65 85    ; |DMA game select/menu tiles to VRAM
                PLD                     ; $00:8538: 2B          ;/
                TXA                     ; $00:8539: 8A          ;\
                AND #$00FF              ; $00:853A: 29 FF 00    ; | Index correctly
                ASL A                   ; $00:853D: 0A          ; |
                TAX                     ; $00:853E: AA          ;/
                LDA #$0200              ; $00:853F: A9 00 02    ;\ Size: $0200
                STA $00                 ; $00:8542: 85 00       ;/
                LDA DATA_0088BF,x       ; $00:8544: BD BF 88    ;\
                LDY.b #DATA_3C8E00>>16  ; $00:8547: A0 3C       ; | Upload palette
                STA $02                 ; $00:8549: 85 02       ; |
                STY $04                 ; $00:854B: 84 04       ;/
                LDA #$9200              ; $00:854D: A9 00 92    ;\ $7F:9200
                LDY #$7F                ; $00:8550: A0 7F       ;/
                JSL CODE_00866D         ; $00:8552: 22 6D 86 00 ; Upload to RAM
                SEP #$20                ; $00:8556: E2 20       ;
                RTL                     ; $00:8558: 6B          ;

DATA_008559:    dw $0000,$0078,$00F8,$017C                      ;

PNTR_008561:    dw CODE_00857A                                  ;Upload "Hall screen" tiles to VRAM
                dw CODE_0085FF                                  ;Upload "Game select" tiles to VRAM

CODE_008565:    PHX                     ; $00:8565: DA          ; Upload Hall Screen/Game select tiles
                LDY #$80                ; $00:8566: A0 80       ;\Set VRAM mode
                STY $2115               ; $00:8568: 8C 15 21    ;/
                LDA #$01                ; $00:856B: A9 01       ;\
                CLC                     ; $00:856D: 18          ; |DMA mode 01: 2 regs write once
                STA $00                 ; $00:856E: 85 00       ;/
                LDY #$01                ; $00:8570: A0 01       ;<DMA Channel #0
                TXA                     ; $00:8572: 8A          ;\
                ASL A                   ; $00:8573: 0A          ; |
                TAX                     ; $00:8574: AA          ; |
                JSR (PNTR_008561,x)     ; $00:8575: FC 61 85    ; |
                PLX                     ; $00:8578: FA          ; |
                RTS                     ; $00:8579: 60          ;/

CODE_00857A:    LDA #$0000              ; $00:857A: A9 00 00    ;\ DMA 'hall screen' graphics to VRAM
                STA $2116               ; $00:857D: 8D 16 21    ; |DMA to: VRAM $0000-$7FFF
                LDA.w #DATA_018000      ; $00:8580: A9 00 80    ; |
                STA $02                 ; $00:8583: 85 02       ; |
                LDX.b #DATA_018000>>16  ; $00:8585: A2 01       ; |DMA source: $01:8000
                STX $04                 ; $00:8587: 86 04       ; |Size: $8000 bytes/32kB
                LDA #$8000              ; $00:8589: A9 00 80    ; |
                STA $05                 ; $00:858C: 85 05       ; |
                STY $420B               ; $00:858E: 8C 0B 42    ;/
                LDA.w #DATA_3DCC00      ; $00:8591: A9 00 CC    ;\ Upload animated hall screen tiles of Bowser, princess, toad, luigi's ear to VRAM
                STA $02                 ; $00:8594: 85 02       ; |DMA to: VRAM $8000-$93FF
                LDX.b #DATA_3DCC00>>16  ; $00:8596: A2 3D       ; |
                STX $04                 ; $00:8598: 86 04       ; |
                LDA #$1400              ; $00:859A: A9 00 14    ; |DMA Source: $3D:CC00
                STA $05                 ; $00:859D: 85 05       ; |Size: $1400 bytes
                STY $420B               ; $00:859F: 8C 0B 42    ;/
                LDA #$5000              ; $00:85A2: A9 00 50    ;\ Upload triangle fading GFX to VRAM
                STA $2116               ; $00:85A5: 8D 16 21    ; |
                LDA.w #DATA_029000      ; $00:85A8: A9 00 90    ; |DMA to: VRAM $A000-$A7FF
                STA $02                 ; $00:85AB: 85 02       ; |
                LDX.b #DATA_029000>>16  ; $00:85AD: A2 02       ; |DMA Source: $02:9000
                STX $04                 ; $00:85AF: 86 04       ; |Size: $0800 bytes
                LDA #$0800              ; $00:85B1: A9 00 08    ; |
                STA $05                 ; $00:85B4: 85 05       ; |
                STY $420B               ; $00:85B6: 8C 0B 42    ;/
                LDA #$6000              ; $00:85B9: A9 00 60    ;\ Upload Nintendo Presents graphics to VRAM
                STA $2116               ; $00:85BC: 8D 16 21    ; |
                LDA.w #DATA_028000      ; $00:85BF: A9 00 80    ; |
                STA $02                 ; $00:85C2: 85 02       ; |DMA to: VRAM $C000-$CFFF
                LDX.b #DATA_028000>>16  ; $00:85C4: A2 02       ; |
                STX $04                 ; $00:85C6: 86 04       ; |DMA Source: $02:8000
                LDA #$1000              ; $00:85C8: A9 00 10    ; |Size: $1000 bytes
                STA $05                 ; $00:85CB: 85 05       ; |
                STY $420B               ; $00:85CD: 8C 0B 42    ;/
                LDA #$7000              ; $00:85D0: A9 00 70    ;\ Upload default BG2 hall screen tilemap?
                STA $2116               ; $00:85D3: 8D 16 21    ; |
                LDA.w #DATA_02C000      ; $00:85D6: A9 00 C0    ; |DMA to: VRAM $E000-$E7FF
                STA $02                 ; $00:85D9: 85 02       ; |
                LDX.b #DATA_02C000>>16  ; $00:85DB: A2 02       ; |DMA Source: $02:C000
                STX $04                 ; $00:85DD: 86 04       ; |DMA Size: $0800 bytes
                LDA #$0800              ; $00:85DF: A9 00 08    ; |
                STA $05                 ; $00:85E2: 85 05       ; |
                STY $420B               ; $00:85E4: 8C 0B 42    ;/
                LDA #$7800              ; $00:85E7: A9 00 78    ;\ upload default BG1 hall screen tilemap
                STA $2116               ; $00:85EA: 8D 16 21    ; |
                LDA.w #DATA_3C8000      ; $00:85ED: A9 00 80    ; |
                STA $02                 ; $00:85F0: 85 02       ; |DMA to: VRAM $F000-$F7FF
                LDX.b #DATA_3C8000>>16  ; $00:85F2: A2 3C       ; |
                STX $04                 ; $00:85F4: 86 04       ; |DMA Source: $3C:8000
                LDA #$0800              ; $00:85F6: A9 00 08    ; |DMA Size: $0800 bytes
                STA $05                 ; $00:85F9: 85 05       ; |
                STY $420B               ; $00:85FB: 8C 0B 42    ;/
                RTS                     ; $00:85FE: 60          ;

CODE_0085FF:    LDA #$0000              ; $00:85FF: A9 00 00    ;\
                STA $2116               ; $00:8602: 8D 16 21    ; |Upload game select menu tiles
                LDA.w #DATA_2B8000      ; $00:8605: A9 00 80    ; |and its components to VRAM $0000-$D7FF
                STA $02                 ; $00:8608: 85 02       ; |
                LDX.b #DATA_2B8000>>16  ; $00:860A: A2 2B       ; |Source: $2B8000-$2BFFFF
                STX $04                 ; $00:860C: 86 04       ; |        $2C8000-$2CFFFF
                LDA #$8000              ; $00:860E: A9 00 80    ; |
                STA $05                 ; $00:8611: 85 05       ; |
                STY $420B               ; $00:8613: 8C 0B 42    ; |
                LDA.w #DATA_2C8000      ; $00:8616: A9 00 80    ; |
                STA $02                 ; $00:8619: 85 02       ; |
                LDX.b #DATA_2C8000>>16  ; $00:861B: A2 2C       ; |
                STX $04                 ; $00:861D: 86 04       ; |
                LDA #$5800              ; $00:861F: A9 00 58    ; |
                STA $05                 ; $00:8622: 85 05       ; |
                STY $420B               ; $00:8624: 8C 0B 42    ;/
                LDA #$6C00              ; $00:8627: A9 00 6C    ;\ Upload default BG2 hall screen tilemap?
                STA $2116               ; $00:862A: 8D 16 21    ; |DMA to VRAM $D800-$DFFF
                LDA.w #DATA_02C000      ; $00:862D: A9 00 C0    ; |
                STA $02                 ; $00:8630: 85 02       ; |Source: $02:C000
                LDX.b #DATA_02C000>>16  ; $00:8632: A2 02       ; |
                STX $04                 ; $00:8634: 86 04       ; |Size: $0800 bytes
                LDA #$0800              ; $00:8636: A9 00 08    ; |
                STA $05                 ; $00:8639: 85 05       ; |
                STY $420B               ; $00:863B: 8C 0B 42    ;/
                LDA #$7000              ; $00:863E: A9 00 70    ;\
                STA $2116               ; $00:8641: 8D 16 21    ; |
                LDA.w #DATA_3DA800      ; $00:8644: A9 00 A8    ; |Upload to VRAM $E000-$E7FF
                STA $02                 ; $00:8647: 85 02       ; |
                LDX.b #DATA_3DA800>>16  ; $00:8649: A2 3D       ; |Upload absolute nothingness?
                STX $04                 ; $00:864B: 86 04       ; |
                LDA #$0800              ; $00:864D: A9 00 08    ; |Source: $3D:A800
                STA $05                 ; $00:8650: 85 05       ; |
                STY $420B               ; $00:8652: 8C 0B 42    ;/
                LDA #$7800              ; $00:8655: A9 00 78    ;\
                STA $2116               ; $00:8658: 8D 16 21    ; |
                LDA.w #DATA_02F000      ; $00:865B: A9 00 F0    ; |Upload game select menu tilemap
                STA $02                 ; $00:865E: 85 02       ; |to VRAM $F000-$FFFF
                LDX.b #DATA_02F000>>16  ; $00:8660: A2 02       ; |
                STX $04                 ; $00:8662: 86 04       ; |Source: $02:F000-$02:FFFF
                LDA #$1000              ; $00:8664: A9 00 10    ; |
                STA $05                 ; $00:8667: 85 05       ; |
                STY $420B               ; $00:8669: 8C 0B 42    ;/
                RTS                     ; $00:866C: 60          ;

CODE_00866D:    STA $2181               ; $00:866D: 8D 81 21    ;\ 
                STY $2183               ; $00:8670: 8C 83 21    ; |
                LDA #$8000              ; $00:8673: A9 00 80    ; |
                STA $4300               ; $00:8676: 8D 00 43    ; |
                LDA $02                 ; $00:8679: A5 02       ; |DMA stuff to RAM routine.
                STA $4302               ; $00:867B: 8D 02 43    ; |Input: $7E0002 - 3 bytes - source address
                LDY $04                 ; $00:867E: A4 04       ; |       $7E0000 - 2 bytes - size
                STY $4304               ; $00:8680: 8C 04 43    ; |A = destination RAM
                LDA $00                 ; $00:8683: A5 00       ; |Y = flag for RAM $7F/$7E
                STA $4305               ; $00:8685: 8D 05 43    ; |A = 16-bit. XY = 8-bit.
                LDY #$01                ; $00:8688: A0 01       ; |
                STY $420B               ; $00:868A: 8C 0B 42    ;/
                RTL                     ; $00:868D: 6B          ;

CODE_00868E:    STZ $02                 ; $00:868E: 64 02       ;\Clear RAM routine
CODE_008690:    STA $4302               ; $00:8690: 8D 02 43    ; |
                STY $4304               ; $00:8693: 8C 04 43    ; |
                LDA #$3480              ; $00:8696: A9 80 34    ; | Input:
                STA $4300               ; $00:8699: 8D 00 43    ; | A: Dest low and high
                LDA $00                 ; $00:869C: A5 00       ; | Y: Dest bank
                STA $4305               ; $00:869E: 8D 05 43    ; | $00: DMA Size
                LDY #$01                ; $00:86A1: A0 01       ; | $02: 16-bit value to transfer (usually $0000 or $FFFF)
                STY $211B               ; $00:86A3: 8C 1B 21    ; |
                DEY                     ; $00:86A6: 88          ; |
                STY $211B               ; $00:86A7: 8C 1B 21    ; |
                LDY $02                 ; $00:86AA: A4 02       ; |
                STY $211C               ; $00:86AC: 8C 1C 21    ; |
                LDY #$01                ; $00:86AF: A0 01       ; |
                STY $420B               ; $00:86B1: 8C 0B 42    ; |
                RTL                     ; $00:86B4: 6B          ;/

CODE_0086B5:    LDA $4016               ; $00:86B5: AD 16 40    ;\NES-styled Joypad data 1
                AND #$01                ; $00:86B8: 29 01       ; |Read if the latch is open
                EOR #$01                ; $00:86BA: 49 01       ; |Reverse the latch status
                ASL A                   ; $00:86BC: 0A          ; |Multiply by 2
                STA $701FF4             ; $00:86BD: 8F F4 1F 70 ;/Store into SRAM
                LDA $4017               ; $00:86C1: AD 17 40    ;
                AND #$01                ; $00:86C4: 29 01       ;
                ASL A                   ; $00:86C6: 0A          ;
                STA $701FF6             ; $00:86C7: 8F F6 1F 70 ;
                RTL                     ; $00:86CB: 6B          ;

CODE_0086CC:    STZ $4016               ; $00:86CC: 9C 16 40    ;\
                LDA $4218               ; $00:86CF: AD 18 42    ;/Something related to controllers
                STA $00                 ; $00:86D2: 85 00       ;
                LDA $4219               ; $00:86D4: AD 19 42    ;
                STA $01                 ; $00:86D7: 85 01       ;
                LDA $00                 ; $00:86D9: A5 00       ;
                STA $F2                 ; $00:86DB: 85 F2       ;
                TAY                     ; $00:86DD: A8          ;
                EOR $FA                 ; $00:86DE: 45 FA       ;
                AND $F2                 ; $00:86E0: 25 F2       ;
                STA $F6                 ; $00:86E2: 85 F6       ;
                STY $FA                 ; $00:86E4: 84 FA       ;
                LDA $01                 ; $00:86E6: A5 01       ;
                STA $F0                 ; $00:86E8: 85 F0       ;
                TAY                     ; $00:86EA: A8          ;
                EOR $F8                 ; $00:86EB: 45 F8       ;
                AND $F0                 ; $00:86ED: 25 F0       ;
                STA $F4                 ; $00:86EF: 85 F4       ;
                STY $F8                 ; $00:86F1: 84 F8       ;
                NOP                     ; $00:86F3: EA          ;
                LDA $421A               ; $00:86F4: AD 1A 42    ;
                STA $00                 ; $00:86F7: 85 00       ;
                LDA $421B               ; $00:86F9: AD 1B 42    ;
                STA $01                 ; $00:86FC: 85 01       ;
                LDA $00                 ; $00:86FE: A5 00       ;
                STA $F3                 ; $00:8700: 85 F3       ;
                TAY                     ; $00:8702: A8          ;
                EOR $FB                 ; $00:8703: 45 FB       ;
                AND $F3                 ; $00:8705: 25 F3       ;
                STA $F7                 ; $00:8707: 85 F7       ;
                STY $FB                 ; $00:8709: 84 FB       ;
                LDA $01                 ; $00:870B: A5 01       ;
                STA $F1                 ; $00:870D: 85 F1       ;
                TAY                     ; $00:870F: A8          ;
                EOR $F9                 ; $00:8710: 45 F9       ;
                AND $F1                 ; $00:8712: 25 F1       ;
                STA $F5                 ; $00:8714: 85 F5       ;
                STY $F9                 ; $00:8716: 84 F9       ;
                RTS                     ; $00:8718: 60          ;

CODE_008719:    PHD                     ; $00:8719: 0B          ;\ Prepare OAM for the logo, menu, hall screen etc.
                REP #$30                ; $00:871A: C2 30       ; |Direct page: $0800
                LDA #$0800              ; $00:871C: A9 00 08    ; |
                TCD                     ; $00:871F: 5B          ;/
                LDY #$F000              ; $00:8720: A0 00 F0    ;\
                LDX #$0180              ; $00:8723: A2 80 01    ; |
CODE_008726:    TYA                     ; $00:8726: 98          ; |
                STA $00,x               ; $00:8727: 95 00       ; |
                STA $04,x               ; $00:8729: 95 04       ; |
                STA $08,x               ; $00:872B: 95 08       ; |
                STA $0C,x               ; $00:872D: 95 0C       ; |
                STA $10,x               ; $00:872F: 95 10       ; |
                STA $14,x               ; $00:8731: 95 14       ; |Clear OAM
                STA $18,x               ; $00:8733: 95 18       ; |Clear $0800-$09FF
                STA $1C,x               ; $00:8735: 95 1C       ; |
                STA $20,x               ; $00:8737: 95 20       ; |
                STA $24,x               ; $00:8739: 95 24       ; |
                STA $28,x               ; $00:873B: 95 28       ; |
                STA $2C,x               ; $00:873D: 95 2C       ; |
                STA $30,x               ; $00:873F: 95 30       ; | 
                STA $34,x               ; $00:8741: 95 34       ; |
                STA $38,x               ; $00:8743: 95 38       ; |
                STA $3C,x               ; $00:8745: 95 3C       ; |
                STA $40,x               ; $00:8747: 95 40       ; |
                STA $44,x               ; $00:8749: 95 44       ; |
                STA $48,x               ; $00:874B: 95 48       ; |
                STA $4C,x               ; $00:874D: 95 4C       ; |
                STA $50,x               ; $00:874F: 95 50       ; |
                STA $54,x               ; $00:8751: 95 54       ; |
                STA $58,x               ; $00:8753: 95 58       ; |
                STA $5C,x               ; $00:8755: 95 5C       ; |
                STA $60,x               ; $00:8757: 95 60       ; |
                STA $64,x               ; $00:8759: 95 64       ; |
                STA $68,x               ; $00:875B: 95 68       ; | 
                STA $6C,x               ; $00:875D: 95 6C       ; |
                STA $70,x               ; $00:875F: 95 70       ; |
                STA $74,x               ; $00:8761: 95 74       ; |
                STA $78,x               ; $00:8763: 95 78       ; |
                STA $7C,x               ; $00:8765: 95 7C       ;/
                TXA                     ; $00:8767: 8A          ;\
                SEC                     ; $00:8768: 38          ; |
                SBC #$0080              ; $00:8769: E9 80 00    ; |If not done yet
                TAX                     ; $00:876C: AA          ; |Loop
                BPL CODE_008726         ; $00:876D: 10 B7       ;/
                SEP #$30                ; $00:876F: E2 30       ;8-bit AXY
                PLD                     ; $00:8771: 2B          ;Recover direct page
                RTS                     ; $00:8772: 60          ;Return.

CODE_008773:    PHD                     ; $00:8773: 0B          ;\
                LDA #$0A                ; $00:8774: A9 0A       ; |
                XBA                     ; $00:8776: EB          ; |Direct page: $0A00
                LDA #$00                ; $00:8777: A9 00       ; |
                TCD                     ; $00:8779: 5B          ;/
                LDY #$1C                ; $00:877A: A0 1C       ;\
CODE_00877C:    TYA                     ; $00:877C: 98          ; |
                ASL A                   ; $00:877D: 0A          ; |
                ASL A                   ; $00:877E: 0A          ; |
                TAX                     ; $00:877F: AA          ; |Basically this sticks 2 bits of 4 bytes into 1 byte
                LDA $23,x               ; $00:8780: B5 23       ; |And stores it to OAM $0A00-$0A1F for the tilesize
                ASL A                   ; $00:8782: 0A          ; |
                ASL A                   ; $00:8783: 0A          ; |
                ORA $22,x               ; $00:8784: 15 22       ; |
                ASL A                   ; $00:8786: 0A          ; |
                ASL A                   ; $00:8787: 0A          ; |
                ORA $21,x               ; $00:8788: 15 21       ; |
                ASL A                   ; $00:878A: 0A          ; |
                ASL A                   ; $00:878B: 0A          ; |
                ORA $20,x               ; $00:878C: 15 20       ; |
                STA $0A00,y             ; $00:878E: 99 00 0A    ; |
                LDA $27,x               ; $00:8791: B5 27       ; |
                ASL A                   ; $00:8793: 0A          ; |
                ASL A                   ; $00:8794: 0A          ; |
                ORA $26,x               ; $00:8795: 15 26       ; |
                ASL A                   ; $00:8797: 0A          ; |
                ASL A                   ; $00:8798: 0A          ; |
                ORA $25,x               ; $00:8799: 15 25       ; |
                ASL A                   ; $00:879B: 0A          ; |
                ASL A                   ; $00:879C: 0A          ; |
                ORA $24,x               ; $00:879D: 15 24       ; |
                STA $0A01,y             ; $00:879F: 99 01 0A    ; |
                LDA $2B,x               ; $00:87A2: B5 2B       ; |
                ASL A                   ; $00:87A4: 0A          ; |
                ASL A                   ; $00:87A5: 0A          ; |
                ORA $2A,x               ; $00:87A6: 15 2A       ; |
                ASL A                   ; $00:87A8: 0A          ; |
                ASL A                   ; $00:87A9: 0A          ; |
                ORA $29,x               ; $00:87AA: 15 29       ; |
                ASL A                   ; $00:87AC: 0A          ; |
                ASL A                   ; $00:87AD: 0A          ; |
                ORA $28,x               ; $00:87AE: 15 28       ; |
                STA $0A02,y             ; $00:87B0: 99 02 0A    ; |
                LDA $2F,x               ; $00:87B3: B5 2F       ; |
                ASL A                   ; $00:87B5: 0A          ; |
                ASL A                   ; $00:87B6: 0A          ; |
                ORA $2E,x               ; $00:87B7: 15 2E       ; |
                ASL A                   ; $00:87B9: 0A          ; |
                ASL A                   ; $00:87BA: 0A          ; |
                ORA $2D,x               ; $00:87BB: 15 2D       ; |
                ASL A                   ; $00:87BD: 0A          ; |
                ASL A                   ; $00:87BE: 0A          ; |
                ORA $2C,x               ; $00:87BF: 15 2C       ; |
                STA $0A03,y             ; $00:87C1: 99 03 0A    ; |
                DEY                     ; $00:87C4: 88          ; |
                DEY                     ; $00:87C5: 88          ; |
                DEY                     ; $00:87C6: 88          ; |
                DEY                     ; $00:87C7: 88          ; |
                BPL CODE_00877C         ; $00:87C8: 10 B2       ; |
                PLD                     ; $00:87CA: 2B          ;/
                RTS                     ; $00:87CB: 60          ;

CODE_0087CC:    LDA $0062               ; $00:87CC: AD 62 00    ;
                BEQ CODE_008821         ; $00:87CF: F0 50       ;
                STA $2142               ; $00:87D1: 8D 42 21    ;
                CMP #$F0                ; $00:87D4: C9 F0       ;
                BCS CODE_0087DB         ; $00:87D6: B0 03       ;
                STA $0066               ; $00:87D8: 8D 66 00    ;
CODE_0087DB:    LDA $0060               ; $00:87DB: AD 60 00    ;
                BNE CODE_0087E8         ; $00:87DE: D0 08       ;
                LDY $2140               ; $00:87E0: AC 40 21    ;
                CPY $0064               ; $00:87E3: CC 64 00    ;
                BNE CODE_0087EE         ; $00:87E6: D0 06       ;
CODE_0087E8:    STA $2140               ; $00:87E8: 8D 40 21    ;
                STA $0064               ; $00:87EB: 8D 64 00    ;
CODE_0087EE:    LDA $0061               ; $00:87EE: AD 61 00    ;
                BNE CODE_0087FB         ; $00:87F1: D0 08       ;
                LDY $2141               ; $00:87F3: AC 41 21    ;
                CPY $0065               ; $00:87F6: CC 65 00    ;
                BNE CODE_008801         ; $00:87F9: D0 06       ;
CODE_0087FB:    STA $2141               ; $00:87FB: 8D 41 21    ;
                STA $0065               ; $00:87FE: 8D 65 00    ;
CODE_008801:    LDA $0063               ; $00:8801: AD 63 00    ;
                BNE CODE_00880E         ; $00:8804: D0 08       ;
                LDY $2143               ; $00:8806: AC 43 21    ;
                CPY $0067               ; $00:8809: CC 67 00    ;
                BNE CODE_008814         ; $00:880C: D0 06       ;
CODE_00880E:    STA $2143               ; $00:880E: 8D 43 21    ;
                STA $0067               ; $00:8811: 8D 67 00    ;
CODE_008814:    STZ $0060               ; $00:8814: 9C 60 00    ;
                STZ $0061               ; $00:8817: 9C 61 00    ;
                STZ $0062               ; $00:881A: 9C 62 00    ;
                STZ $0063               ; $00:881D: 9C 63 00    ;
                RTS                     ; $00:8820: 60          ;

CODE_008821:    LDY $2142               ; $00:8821: AC 42 21    ;
                CPY $0066               ; $00:8824: CC 66 00    ;
                BNE CODE_0087DB         ; $00:8827: D0 B2       ;
                STA $2142               ; $00:8829: 8D 42 21    ;
                BRA CODE_0087DB         ; $00:882C: 80 AD       ;

ForceBlank:
                LDA #$80                ; $00:882E: A9 80       ;\Enable forced blank & Disable HDMA
                STA $2100               ; $00:8830: 8D 00 21    ; |Forced blank
                STA $0100               ; $00:8833: 8D 00 01    ; |Forced blank on mirror too
                STZ $420C               ; $00:8836: 9C 0C 42    ; |HDMA disable
                STZ $0120               ; $00:8839: 9C 20 01    ; |HDMA disable on mirror too
                RTL                     ; $00:883C: 6B          ;/

DATA_00883D:    db $01,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$00,$00,$01,$01,$01,$01,$01              ;
                db $01,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$01,$01,$01,$01,$01,$01,$01              ;

DATA_00885D:    db $03,$00,$03,$03                              ;

DATA_008861:    db $78,$73                                      ;

DATA_008863:    db $72,$6C                                      ;

DATA_008865:    db $00,$00                                      ;

DATA_008867:    db $50,$70                                      ;

DATA_008869:    db $00,$05                                      ;

DATA_00886B:    db $13,$02                                      ;

DATA_00886D:    db $00,$11                                      ;

DATA_00886F:    db $00,$02                                      ;

DATA_008871:    db $20,$20                                      ;

DATA_008873:    db $00,$00,$00,$01,$00,$00,$00,$20              ;
                db $00,$00,$00,$80,$00,$00,$06,$00              ;
                db $00,$00,$00,$40,$00,$00,$00,$40              ;
                db $00,$00,$00,$A0,$00,$00,$07,$00              ;
                db $00,$00,$00,$20,$00,$00,$00,$70              ;
                db $00,$00,$00,$80,$00,$00,$07,$00              ;
                db $00,$00,$00,$20,$00,$00,$00,$00              ;
                db $00,$00,$00,$C0,$00,$00,$06,$00              ;
                db $00,$00,$00,$40,$0F,$00,$6D,$00              ;
                db $24,$01,$24,$01                              ;

DATA_0088BF:    dw DATA_3C8E00                                  ;
                dw DATA_3CB400                                  ;

CODE_0088C3:    LDA #$43                ; $00:88C3: A9 43       ;\
                XBA                     ; $00:88C5: EB          ; |Direct page: $4300
                LDA #$00                ; $00:88C6: A9 00       ; |
                TCD                     ; $00:88C8: 5B          ;/
                REP #$10                ; $00:88C9: C2 10       ;16-bit XY
                LDX #$1801              ; $00:88CB: A2 01 18    ;\Base register: $2118. 2 regs write once.
                STX $00                 ; $00:88CE: 86 00       ;/
                LDA #$80                ; $00:88D0: A9 80       ;\VRAM:
                STA $2115               ; $00:88D2: 8D 15 21    ;/increment after writing $2119/reading $213A
                LDA $0219               ; $00:88D5: AD 19 02    ;\
                BEQ CODE_0088FD         ; $00:88D8: F0 23       ; |Flag to do file select images DMA. If it is set:
                LDX #$6C00              ; $00:88DA: A2 00 6C    ; |Do file select images DMA.
                STX $2116               ; $00:88DD: 8E 16 21    ; |VRAM Destination: $D800
                LDX.w #DATA_2CD800      ; $00:88E0: A2 00 D8    ; |
                STX $02                 ; $00:88E3: 86 02       ; |DMA Source: $2C:D800
                LDA.b #DATA_2CD800>>16  ; $00:88E5: A9 2C       ; |
                STA $04                 ; $00:88E7: 85 04       ; |Size: 4kB 
                LDX #$1000              ; $00:88E9: A2 00 10    ; |
                STX $05                 ; $00:88EC: 86 05       ; |Do DMA transfer
                LDA #$01                ; $00:88EE: A9 01       ; |
                STA $420B               ; $00:88F0: 8D 0B 42    ; |
                STZ $0219               ; $00:88F3: 9C 19 02    ;/Reset "file select images DMA" flag
                STZ $00E5               ; $00:88F6: 9C E5 00    ;\Clear offset of fading out into game select triangle 
                STZ $00E6               ; $00:88F9: 9C E6 00    ;/                              graphics.
                RTS                     ; $00:88FC: 60          ;

CODE_0088FD:    LDX $00E5               ; $00:88FD: AE E5 00    ;\ If we're fading out into the game select room
                BEQ CODE_008926         ; $00:8900: F0 24       ; |
                STX $02                 ; $00:8902: 86 02       ; |DMA source: bank #$02, offset that $00E5 has
                LDA #$02                ; $00:8904: A9 02       ; |
                STA $04                 ; $00:8906: 85 04       ; |
                LDX #$5000              ; $00:8908: A2 00 50    ; |
                LDA $00E0               ; $00:890B: AD E0 00    ;\|If fading out, VRAM address is $A000, else, $E000
                BEQ CODE_008913         ; $00:890E: F0 03       ;/|
                LDX #$7000              ; $00:8910: A2 00 70    ; |
CODE_008913:    STX $2116               ; $00:8913: 8E 16 21    ; |
                LDY #$0800              ; $00:8916: A0 00 08    ; |DMA size: $800 bytes
                STY $05                 ; $00:8919: 84 05       ; |
                LDA #$01                ; $00:891B: A9 01       ; |
                STA $420B               ; $00:891D: 8D 0B 42    ; |
                STZ $00E5               ; $00:8920: 9C E5 00    ; |
                STZ $00E6               ; $00:8923: 9C E6 00    ;/
CODE_008926:    LDA $00DE               ; $00:8926: AD DE 00    ;\ If character animation on hall screen flag is set
                BEQ CODE_008947         ; $00:8929: F0 1C       ; |
                LDX #$7800              ; $00:892B: A2 00 78    ; |VRAM address: $F000
                STX $2116               ; $00:892E: 8E 16 21    ; |
                LDX #$0000              ; $00:8931: A2 00 00    ; |Update screen's tilemap using ram $7F0000 AKA animate stuff
                STX $02                 ; $00:8934: 86 02       ; |Source: $7F0000
                LDA #$7F                ; $00:8936: A9 7F       ; |
                STA $04                 ; $00:8938: 85 04       ; |
                LDY #$0800              ; $00:893A: A0 00 08    ; |
                STY $05                 ; $00:893D: 84 05       ; |Size: $0800 bytes
                LDA #$01                ; $00:893F: A9 01       ; |
                STA $420B               ; $00:8941: 8D 0B 42    ; |Enable DMA transfer
                STZ $00DE               ; $00:8944: 9C DE 00    ;/ Reset character animation on hall screen flag
CODE_008947:    LDA $0AC0               ; $00:8947: AD C0 0A    ;\ Dynamically upload palette
                BEQ CODE_00896A         ; $00:894A: F0 1E       ; |If $0AC0 is set, upload full palette to CGRAM
                STZ $2121               ; $00:894C: 9C 21 21    ; |located at Source: $7F:9200.
                LDY #$2200              ; $00:894F: A0 00 22    ; |One reg write once. Reg = $2122
                STY $00                 ; $00:8952: 84 00       ; |
                LDY #$9200              ; $00:8954: A0 00 92    ; |Source: $7F:9200
                STY $02                 ; $00:8957: 84 02       ; |
                LDA #$7F                ; $00:8959: A9 7F       ; |
                STA $04                 ; $00:895B: 85 04       ; |
                LDY #$0200              ; $00:895D: A0 00 02    ; |Size: Full palette
                STY $05                 ; $00:8960: 84 05       ; |
                LDA #$01                ; $00:8962: A9 01       ; |
                STA $420B               ; $00:8964: 8D 0B 42    ; |
                STZ $0AC0               ; $00:8967: 9C C0 0A    ;/
CODE_00896A:    REP #$20                ; $00:896A: C2 20       ;\ Update OAM using DMA
                SEP #$10                ; $00:896C: E2 10       ; |
                STZ $2102               ; $00:896E: 9C 02 21    ; |OAM address: $0000?
                LDA #$0400              ; $00:8971: A9 00 04    ; |\1 reg write once
                STA $00                 ; $00:8974: 85 00       ; |/OAM data DMA
                LDA #$0800              ; $00:8976: A9 00 08    ; |Source: $00:0800 - OAM
                STA $02                 ; $00:8979: 85 02       ; |
                STZ $04                 ; $00:897B: 64 04       ; |
                LDA #$0220              ; $00:897D: A9 20 02    ; |Size: 544 bytes (entire OAM)
                STA $05                 ; $00:8980: 85 05       ; |
                LDY #$01                ; $00:8982: A0 01       ; |Enable DMA transfer
                STY $420B               ; $00:8984: 8C 0B 42    ;/
                LDA #$1801              ; $00:8987: A9 01 18    ;\ 2 regs write once $2118
                STA $00                 ; $00:898A: 85 00       ; |
                LDA #$1801              ; $00:898C: A9 01 18    ; |...the same thing again?
                STA $00                 ; $00:898F: 85 00       ; |
                LDA #$0000              ; $00:8991: A9 00 00    ; |
                TCD                     ; $00:8994: 5B          ; |
                LDA #$8002              ; $00:8995: A9 02 80    ; |
                STA $E8                 ; $00:8998: 85 E8       ; |Indirect pointer $7F8002 at $E8-$EA
                SEP #$20                ; $00:899A: E2 20       ; |
                LDA #$7F                ; $00:899C: A9 7F       ; |
                STA $4304               ; $00:899E: 8D 04 43    ; |
                STA $EA                 ; $00:89A1: 85 EA       ; |
                REP #$10                ; $00:89A3: C2 10       ; |
                LDY #$0000              ; $00:89A5: A0 00 00    ; |
                JSR CODE_0089EC         ; $00:89A8: 20 EC 89    ; |
                REP #$20                ; $00:89AB: C2 20       ; |
                LDA #$0000              ; $00:89AD: A9 00 00    ; |
                STA $7F8000             ; $00:89B0: 8F 00 80 7F ; |
                DEC A                   ; $00:89B4: 3A          ; |
                STA $7F8002             ; $00:89B5: 8F 02 80 7F ; |
                RTS                     ; $00:89B9: 60          ;/

CODE_0089BA:    STA $2117               ; $00:89BA: 8D 17 21    ;
                INY                     ; $00:89BD: C8          ;
                LDA [$E8],y             ; $00:89BE: B7 E8       ;
                STA $2116               ; $00:89C0: 8D 16 21    ;
                INY                     ; $00:89C3: C8          ;
                LDA [$E8],y             ; $00:89C4: B7 E8       ;
                ASL A                   ; $00:89C6: 0A          ;
                LDA #$2A40              ; $00:89C7: A9 40 2A    ;
                STA $2115               ; $00:89CA: 8D 15 21    ;
                REP #$20                ; $00:89CD: C2 20       ;
                LDA [$E8],y             ; $00:89CF: B7 E8       ;
                XBA                     ; $00:89D1: EB          ;
                ASL A                   ; $00:89D2: 0A          ;
                LSR A                   ; $00:89D3: 4A          ;
                STA $4305               ; $00:89D4: 8D 05 43    ;
                STA $EC                 ; $00:89D7: 85 EC       ;
                INY                     ; $00:89D9: C8          ;
                INY                     ; $00:89DA: C8          ;
                TYA                     ; $00:89DB: 98          ;
                ADC $E8                 ; $00:89DC: 65 E8       ;
                STA $4302               ; $00:89DE: 8D 02 43    ;
                TYA                     ; $00:89E1: 98          ;
                ADC $EC                 ; $00:89E2: 65 EC       ;
                TAY                     ; $00:89E4: A8          ;
                SEP #$20                ; $00:89E5: E2 20       ;
                LDA #$01                ; $00:89E7: A9 01       ;
                STA $420B               ; $00:89E9: 8D 0B 42    ;
CODE_0089EC:    LDA [$E8],y             ; $00:89EC: B7 E8       ;
                BPL CODE_0089BA         ; $00:89EE: 10 CA       ;
                RTS                     ; $00:89F0: 60          ;

;Pointers to SPC data upload routine of games. 
PNTR_0089F1:    dw CODE_008B17                                  ;SMB1
                dw CODE_008B17                                  ;SMB:TLL
                dw CODE_008B27                                  ;SMB2
                dw CODE_008B37                                  ;SMB3

CODE_0089F9:    SEI                     ; $00:89F9: 78          ;Set IRQ disable flag
                STZ $4200               ; $00:89FA: 9C 00 42    ;\Disable interrupts
                STZ $420C               ; $00:89FD: 9C 0C 42    ;/Disable HDMA
                STZ $2140               ; $00:8A00: 9C 40 21    ;\
                STZ $2142               ; $00:8A03: 9C 42 21    ; |Disable SFX and music stuff
                STZ $2143               ; $00:8A06: 9C 43 21    ; |
                LDA #$FF                ; $00:8A09: A9 FF       ; |
                STA $2141               ; $00:8A0B: 8D 41 21    ;/
                LDA $D0                 ; $00:8A0E: A5 D0       ;\
                ASL A                   ; $00:8A10: 0A          ; |Load selected game
                TAX                     ; $00:8A11: AA          ; |
                JSR (PNTR_0089F1,x)     ; $00:8A12: FC F1 89    ;/ Upload SPC data of selected game
                REP #$20                ; $00:8A15: C2 20       ;\
                LDX #$02                ; $00:8A17: A2 02       ; |
                LDA #$0200              ; $00:8A19: A9 00 02    ; |
                STA $00                 ; $00:8A1C: 85 00       ; |
                LDA DATA_0088BF,x       ; $00:8A1E: BD BF 88    ; |
                LDY #$02                ; $00:8A21: A0 02       ; |Do some DMA transfers to RAM
                STA $02                 ; $00:8A23: 85 02       ; |
                STY $04                 ; $00:8A25: 84 04       ; |The DMA'd data goes in RAM, but doesn't get
                LDA #$9000              ; $00:8A27: A9 00 90    ; |read???
                LDY #$7F                ; $00:8A2A: A0 7F       ; |
                JSL CODE_00866D         ; $00:8A2C: 22 6D 86 00 ; |
                LDA #$9200              ; $00:8A30: A9 00 92    ; |
                LDY #$7F                ; $00:8A33: A0 7F       ; |
                JSL CODE_00866D         ; $00:8A35: 22 6D 86 00 ;/
                LDA #$0000              ; $00:8A39: A9 00 00    ;
                STA $7F8000             ; $00:8A3C: 8F 00 80 7F ;
                DEC A                   ; $00:8A40: 3A          ;
                STA $7F8002             ; $00:8A41: 8F 02 80 7F ;
                SEP #$20                ; $00:8A45: E2 20       ;
                LDA #$81                ; $00:8A47: A9 81       ;\Enable interrupts
                STA $4200               ; $00:8A49: 8D 00 42    ;/
                INC $E0                 ; $00:8A4C: E6 E0       ;
                RTL                     ; $00:8A4E: 6B          ;

CODE_008A4F:    REP #$20                ; $00:8A4F: C2 20       ;\
                LDA #$0400              ; $00:8A51: A9 00 04    ; |DMA SPC-700 data to RAM, part 1 of 2
                STA $00                 ; $00:8A54: 85 00       ; |Source: $07FC00
                LDA.w #DATA_07FC00      ; $00:8A56: A9 00 FC    ; |Size: $0400 bytes
                STA $02                 ; $00:8A59: 85 02       ; |Destination: $7F0000
                LDY.b #DATA_07FC00>>16  ; $00:8A5B: A0 07       ; |
                STY $04                 ; $00:8A5D: 84 04       ; |
                LDA #$0000              ; $00:8A5F: A9 00 00    ; |
                LDY #$7F                ; $00:8A62: A0 7F       ; |
                JSL CODE_00866D         ; $00:8A64: 22 6D 86 00 ;/
                LDA #$8000              ; $00:8A68: A9 00 80    ;\
                STA $00                 ; $00:8A6B: 85 00       ; |DMA SPC-700 data to RAM, part 2 of 2
                LDA.w #DATA_3B8000      ; $00:8A6D: A9 00 80    ; |Source: $3B8000
                STA $02                 ; $00:8A70: 85 02       ; |Size: $8000 bytes
                LDY.b #DATA_3B8000>>16  ; $00:8A72: A0 3B       ; |Destination: $7F0400
                STY $04                 ; $00:8A74: 84 04       ; |
                LDA #$0400              ; $00:8A76: A9 00 04    ; |
                LDY #$7F                ; $00:8A79: A0 7F       ; |
                JSL CODE_00866D         ; $00:8A7B: 22 6D 86 00 ; |
                SEP #$20                ; $00:8A7F: E2 20       ;/
                STZ $00                 ; $00:8A81: 64 00       ;\
                LDA #$00                ; $00:8A83: A9 00       ; |
                STA $01                 ; $00:8A85: 85 01       ; |SPC-700 data source: $7F:0000
                LDA #$7F                ; $00:8A87: A9 7F       ; |
                STA $02                 ; $00:8A89: 85 02       ;/
                JMP SPCUpload           ; $00:8A8B: 4C AC 8B    ;Upload SPC engine + SMAS hall and menu audio data

CODE_008A8E:    SEI                     ; $00:8A8E: 78          ;
                STZ $4200               ; $00:8A8F: 9C 00 42    ;
                STZ $420C               ; $00:8A92: 9C 0C 42    ;
                STZ $2140               ; $00:8A95: 9C 40 21    ;
                LDA #$FF                ; $00:8A98: A9 FF       ;
                STA $2141               ; $00:8A9A: 8D 41 21    ;
                STZ $2142               ; $00:8A9D: 9C 42 21    ;
                STZ $2143               ; $00:8AA0: 9C 43 21    ;
                STZ $00                 ; $00:8AA3: 64 00       ;\
                LDA.b #DATA_0B8000>>8   ; $00:8AA5: A9 80       ; |
                STA $01                 ; $00:8AA7: 85 01       ; |SPC-700 data source: $0B:8000
                LDA.b #DATA_0B8000>>16  ; $00:8AA9: A9 0B       ; |
                STA $02                 ; $00:8AAB: 85 02       ;/
                JSR SPCUpload           ; $00:8AAD: 20 AC 8B    ;Upload SPC data
                LDA #$81                ; $00:8AB0: A9 81       ;
                STA $4200               ; $00:8AB2: 8D 00 42    ;
                INC $E1                 ; $00:8AB5: E6 E1       ;
                LDA #$12                ; $00:8AB7: A9 12       ;
                STA $60                 ; $00:8AB9: 85 60       ;
                RTS                     ; $00:8ABB: 60          ;

CODE_008ABC:    SEI                     ; $00:8ABC: 78          ;
                STZ $4200               ; $00:8ABD: 9C 00 42    ; Don't let NMI interrupt the upload
                STZ $420C               ; $00:8AC0: 9C 0C 42    ; No DMA
                STZ $420B               ; $00:8AC3: 9C 0B 42    ; No HDMA
                STZ $2140               ; $00:8AC6: 9C 40 21    ;\
                LDA #$FF                ; $00:8AC9: A9 FF       ; |
                STA $2141               ; $00:8ACB: 8D 41 21    ; | Tell SPC700 we are ready to upload data
                STZ $2142               ; $00:8ACE: 9C 42 21    ; |
                STZ $2143               ; $00:8AD1: 9C 43 21    ;/
                STZ $00                 ; $00:8AD4: 64 00       ;\
                LDA.b #DATA_0B8000>>8   ; $00:8AD6: A9 80       ; |
                STA $01                 ; $00:8AD8: 85 01       ; |SPC-700 data source: $0B:8000
                LDA.b #DATA_0B8000>>16  ; $00:8ADA: A9 0B       ; |
                STA $02                 ; $00:8ADC: 85 02       ;/
                JSR SPCUpload           ; $00:8ADE: 20 AC 8B    ;Upload SPC data
                LDA #$81                ; $00:8AE1: A9 81       ;
                STA $4200               ; $00:8AE3: 8D 00 42    ;
                RTS                     ; $00:8AE6: 60          ;

CODE_008AE7:    SEI                     ; $00:8AE7: 78          ;
                STZ $4200               ; $00:8AE8: 9C 00 42    ; Don't let NMI interrupt the upload
                STZ $420C               ; $00:8AEB: 9C 0C 42    ; No DMA
                STZ $2140               ; $00:8AEE: 9C 40 21    ;\
                LDA #$FF                ; $00:8AF1: A9 FF       ; |
                STA $2141               ; $00:8AF3: 8D 41 21    ; | Tell the SPC700 we are ready to upload data
                STZ $2142               ; $00:8AF6: 9C 42 21    ; |
                STZ $2143               ; $00:8AF9: 9C 43 21    ;/
                LDA.b #DATA_3BA251      ; $00:8AFC: A9 51       ;\
                STA $00                 ; $00:8AFE: 85 00       ; |
                LDA.b #DATA_3BA251>>8   ; $00:8B00: A9 A2       ; |
                STA $01                 ; $00:8B02: 85 01       ; |SPC-700 data source: $3B:A251
                LDA.b #DATA_3BA251>>16  ; $00:8B04: A9 3B       ; |
                STA $02                 ; $00:8B06: 85 02       ;/
                JSR SPCUpload           ; $00:8B08: 20 AC 8B    ;Upload SPC-700 data
                LDA #$81                ; $00:8B0B: A9 81       ;\ Enable NMI again and joypad read
                STA $4200               ; $00:8B0D: 8D 00 42    ;/
                INC $E1                 ; $00:8B10: E6 E1       ; Next sub-game mode
                LDA #$3E                ; $00:8B12: A9 3E       ;\ Play talking crowd SFX
                STA $60                 ; $00:8B14: 85 60       ;/
                RTS                     ; $00:8B16: 60          ;

CODE_008B17:    LDA.b #DATA_1F8000      ; $00:8B17: A9 00       ;\
                STA $00                 ; $00:8B19: 85 00       ; |
                LDA.b #DATA_1F8000>>8   ; $00:8B1B: A9 80       ; |
                STA $01                 ; $00:8B1D: 85 01       ; |SPC-700 data source: $1F:8000
                LDA.b #DATA_1F8000>>16  ; $00:8B1F: A9 1F       ; |
                STA $02                 ; $00:8B21: 85 02       ;/
                JSR SPCUpload           ; $00:8B23: 20 AC 8B    ;Upload SPC-700 data
                RTS                     ; $00:8B26: 60          ;

CODE_008B27:    LDA.b #DATA_1FC000      ; $00:8B27: A9 00       ;\
                STA $00                 ; $00:8B29: 85 00       ; |
                LDA.b #DATA_1FC000>>8   ; $00:8B2B: A9 C0       ; |
                STA $01                 ; $00:8B2D: 85 01       ; |SPC-700 data source: $1F:C000
                LDA.b #DATA_1FC000>>16  ; $00:8B2F: A9 1F       ; |
                STA $02                 ; $00:8B31: 85 02       ;/
                JSR SPCUpload           ; $00:8B33: 20 AC 8B    ;Upload SPC-700 data
                RTS                     ; $00:8B36: 60          ;

CODE_008B37:    LDA.b #DATA_0C8000      ; $00:8B37: A9 00       ;\
                STA $00                 ; $00:8B39: 85 00       ; |
                LDA.b #DATA_0C8000>>8   ; $00:8B3B: A9 80       ; |SPC-700 data source: $0C:8000
                STA $01                 ; $00:8B3D: 85 01       ; |
                LDA.b #DATA_0C8000>>16  ; $00:8B3F: A9 0C       ; |
                STA $02                 ; $00:8B41: 85 02       ;/
                JSR SPCUpload           ; $00:8B43: 20 AC 8B    ;Upload SPC-700 data
                RTS                     ; $00:8B46: 60          ;

CODE_008B47:    SEI                     ; $00:8B47: 78          ;
                STZ $4200               ; $00:8B48: 9C 00 42    ;
                STZ $420C               ; $00:8B4B: 9C 0C 42    ;
                LDA #$FF                ; $00:8B4E: A9 FF       ;
                STA $2141               ; $00:8B50: 8D 41 21    ;
                LDA #$00                ; $00:8B53: A9 00       ;\
                STA $00                 ; $00:8B55: 85 00       ; |
                LDA #$80                ; $00:8B57: A9 80       ; |SPC-700 data source: $0C:8000
                STA $01                 ; $00:8B59: 85 01       ; |
                LDA #$0C                ; $00:8B5B: A9 0C       ; |
                STA $02                 ; $00:8B5D: 85 02       ;/
                JSR SPCUpload           ; $00:8B5F: 20 AC 8B    ;Upload SPC-700 data
                RTL                     ; $00:8B62: 6B          ;

CODE_008B63:    SEI                     ; $00:8B63: 78          ;
                STZ $4200               ; $00:8B64: 9C 00 42    ;
                STZ $420C               ; $00:8B67: 9C 0C 42    ;
                LDA #$FF                ; $00:8B6A: A9 FF       ;
                STA $2141               ; $00:8B6C: 8D 41 21    ;
                REP #$20                ; $00:8B6F: C2 20       ;
                LDA #$2800              ; $00:8B71: A9 00 28    ;\
                STA $00                 ; $00:8B74: 85 00       ; |
                LDA.w #DATA_07C000      ; $00:8B76: A9 00 C0    ; |
                STA $02                 ; $00:8B79: 85 02       ; |SPC-700 data to RAM:
                LDY.b #DATA_07C000>>16  ; $00:8B7B: A0 07       ; |Source: $07:C000
                STY $04                 ; $00:8B7D: 84 04       ; | Dest.: $7F:0000
                LDA #$0000              ; $00:8B7F: A9 00 00    ; | Size: $2800 bytes
                LDY #$7F                ; $00:8B82: A0 7F       ; |
                JSL CODE_00866D         ; $00:8B84: 22 6D 86 00 ;/
                SEP #$20                ; $00:8B88: E2 20       ;\
                LDA #$00                ; $00:8B8A: A9 00       ; |
                STZ $00                 ; $00:8B8C: 64 00       ; |SPC-700 data source: $7F:0000
                LDA #$00                ; $00:8B8E: A9 00       ; | 
                STA $01                 ; $00:8B90: 85 01       ; |
                LDA #$7F                ; $00:8B92: A9 7F       ; |
                STA $02                 ; $00:8B94: 85 02       ;/
                JSR SPCUpload           ; $00:8B96: 20 AC 8B    ;Upload SPC-700 data
                REP #$20                ; $00:8B99: C2 20       ;\
                LDA #$C000              ; $00:8B9B: A9 00 C0    ; |
                STA $00                 ; $00:8B9E: 85 00       ; |Clear $7F0000-$
                LDA #$0000              ; $00:8BA0: A9 00 00    ; |
                LDY #$7F                ; $00:8BA3: A0 7F       ; |
                JSL CODE_00868E         ; $00:8BA5: 22 8E 86 00 ; |
                SEP #$20                ; $00:8BA9: E2 20       ;/
                RTL                     ; $00:8BAB: 6B          ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Upload SPC data
;;
;; Works like this:
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
                PHP                     ; $00:8BAC: 08          ;Upload SPC data routine
                REP #$30                ; $00:8BAD: C2 30       ;
                LDY #$0000              ; $00:8BAF: A0 00 00    ;index to SPC data
                LDA #$BBAA              ; $00:8BB2: A9 AA BB    ;\
CODE_008BB5:    CMP $2140               ; $00:8BB5: CD 40 21    ; |Wait until SPC-700 is ready
                BNE CODE_008BB5         ; $00:8BB8: D0 FB       ;/ (it reaches ARAM $0fdc then)
                SEP #$20                ; $00:8BBA: E2 20       ;\
                LDA #$CC                ; $00:8BBC: A9 CC       ; |Tell SPC-700 that you're ready, and begin
                BRA CODE_008BE6         ; $00:8BBE: 80 26       ;/ uploading data.

CODE_008BC0:    LDA [$00],y             ; $00:8BC0: B7 00       ;
                INY                     ; $00:8BC2: C8          ;
                XBA                     ; $00:8BC3: EB          ;
                LDA #$00                ; $00:8BC4: A9 00       ;
                BRA CODE_008BD3         ; $00:8BC6: 80 0B       ;

CODE_008BC8:    XBA                     ; $00:8BC8: EB          ;
                LDA [$00],y             ; $00:8BC9: B7 00       ;
                INY                     ; $00:8BCB: C8          ;
                XBA                     ; $00:8BCC: EB          ;
CODE_008BCD:    CMP $2140               ; $00:8BCD: CD 40 21    ;
                BNE CODE_008BCD         ; $00:8BD0: D0 FB       ;
                INC A                   ; $00:8BD2: 1A          ;
CODE_008BD3:    REP #$20                ; $00:8BD3: C2 20       ;
                STA $2140               ; $00:8BD5: 8D 40 21    ;
                SEP #$20                ; $00:8BD8: E2 20       ;
                DEX                     ; $00:8BDA: CA          ;
                BNE CODE_008BC8         ; $00:8BDB: D0 EB       ;
CODE_008BDD:    CMP $2140               ; $00:8BDD: CD 40 21    ;
                BNE CODE_008BDD         ; $00:8BE0: D0 FB       ;
CODE_008BE2:    ADC #$03                ; $00:8BE2: 69 03       ;
                BEQ CODE_008BE2         ; $00:8BE4: F0 FC       ;
CODE_008BE6:    PHA                     ; $00:8BE6: 48          ;SPC-700 data header consists of 2 words/4 bytes
                REP #$20                ; $00:8BE7: C2 20       ;
                LDA [$00],y             ; $00:8BE9: B7 00       ;This loads the first word:
                INY                     ; $00:8BEB: C8          ;Length of SPC-700 data in hex (little-endian)
                INY                     ; $00:8BEC: C8          ;
                TAX                     ; $00:8BED: AA          ;
                LDA [$00],y             ; $00:8BEE: B7 00       ;This loads the second word:
                INY                     ; $00:8BF0: C8          ;Where in ARAM the SPC-700 should be uploaded to
                INY                     ; $00:8BF1: C8          ;(little-endian)
                STA $2142               ; $00:8BF2: 8D 42 21    ;
                SEP #$20                ; $00:8BF5: E2 20       ;
                CPX #$0001              ; $00:8BF7: E0 01 00    ;
                LDA #$00                ; $00:8BFA: A9 00       ;
                ROL A                   ; $00:8BFC: 2A          ;
                STA $2141               ; $00:8BFD: 8D 41 21    ;
                ADC #$7F                ; $00:8C00: 69 7F       ;
                PLA                     ; $00:8C02: 68          ;
                STA $2140               ; $00:8C03: 8D 40 21    ;
CODE_008C06:    CMP $2140               ; $00:8C06: CD 40 21    ;
                BNE CODE_008C06         ; $00:8C09: D0 FB       ;
                BVS CODE_008BC0         ; $00:8C0B: 70 B3       ;
                STZ $2140               ; $00:8C0D: 9C 40 21    ;
                STZ $2141               ; $00:8C10: 9C 41 21    ;
                STZ $2142               ; $00:8C13: 9C 42 21    ;
                STZ $2143               ; $00:8C16: 9C 43 21    ;
                PLP                     ; $00:8C19: 28          ;
                RTS                     ; $00:8C1A: 60          ;

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CODE_008C1B:    SEP #$20                ; $00:8C1B: E2 20       ;
                LDA #$00                ; $00:8C1D: A9 00       ;\
                STA $700007             ; $00:8C1F: 8F 07 00 70 ;/Clear debug mode
                REP #$30                ; $00:8C23: C2 30       ;
                LDA $700002             ; $00:8C25: AF 02 00 70 ;
                CMP #$9743              ; $00:8C29: C9 43 97    ;
                BNE CODE_008C37         ; $00:8C2C: D0 09       ;
                LDA $701FFC             ; $00:8C2E: AF FC 1F 70 ;
                CMP #$5321              ; $00:8C32: C9 21 53    ;
                BEQ CODE_008C6E         ; $00:8C35: F0 37       ;
CODE_008C37:    SEP #$10                ; $00:8C37: E2 10       ;
                LDA #$2000              ; $00:8C39: A9 00 20    ;
                STA $00                 ; $00:8C3C: 85 00       ;
                LDA #$0000              ; $00:8C3E: A9 00 00    ;
                LDY #$70                ; $00:8C41: A0 70       ;
                JSL CODE_00868E         ; $00:8C43: 22 8E 86 00 ;
                REP #$10                ; $00:8C47: C2 10       ;
                LDX #$0000              ; $00:8C49: A2 00 00    ;
CODE_008C4C:    JSR CODE_008D83         ; $00:8C4C: 20 83 8D    ;
                LDA $700004             ; $00:8C4F: AF 04 00 70 ;
                INC A                   ; $00:8C53: 1A          ;
                STA $700004             ; $00:8C54: 8F 04 00 70 ;
                CMP #$0010              ; $00:8C58: C9 10 00    ;
                BCC CODE_008C4C         ; $00:8C5B: 90 EF       ;
                LDA #$9743              ; $00:8C5D: A9 43 97    ;
                STA $700002             ; $00:8C60: 8F 02 00 70 ;
                LDA #$5321              ; $00:8C64: A9 21 53    ;
                STA $701FFC             ; $00:8C67: 8F FC 1F 70 ;
                JMP CODE_008C1B         ; $00:8C6B: 4C 1B 8C    ;

CODE_008C6E:    LDA #$0000              ; $00:8C6E: A9 00 00    ;
                STA $700004             ; $00:8C71: 8F 04 00 70 ;
                TAX                     ; $00:8C75: AA          ;
CODE_008C76:    AND #$0003              ; $00:8C76: 29 03 00    ;
                ASL A                   ; $00:8C79: 0A          ;
                TAY                     ; $00:8C7A: A8          ;
                LDA DATA_008DDB,y       ; $00:8C7B: B9 DB 8D    ;
                DEC A                   ; $00:8C7E: 3A          ;
                DEC A                   ; $00:8C7F: 3A          ;
                TAY                     ; $00:8C80: A8          ;
                STZ $00                 ; $00:8C81: 64 00       ;
                STX $02                 ; $00:8C83: 86 02       ;
                SEP #$20                ; $00:8C85: E2 20       ;
CODE_008C87:    LDA $700010,x           ; $00:8C87: BF 10 00 70 ;
                CLC                     ; $00:8C8B: 18          ;
                ADC $00                 ; $00:8C8C: 65 00       ;
                STA $00                 ; $00:8C8E: 85 00       ;
                LDA $01                 ; $00:8C90: A5 01       ;
                ADC #$00                ; $00:8C92: 69 00       ;
                STA $01                 ; $00:8C94: 85 01       ;
                INX                     ; $00:8C96: E8          ;
                DEY                     ; $00:8C97: 88          ;
                BNE CODE_008C87         ; $00:8C98: D0 ED       ;
                REP #$21                ; $00:8C9A: C2 21       ;
                LDA $00                 ; $00:8C9C: A5 00       ;
                ADC $700010,x           ; $00:8C9E: 7F 10 00 70 ;
                BNE CODE_008CB6         ; $00:8CA2: D0 12       ;
                INX                     ; $00:8CA4: E8          ;
                INX                     ; $00:8CA5: E8          ;
CODE_008CA6:    LDA $700004             ; $00:8CA6: AF 04 00 70 ;
                INC A                   ; $00:8CAA: 1A          ;
                STA $700004             ; $00:8CAB: 8F 04 00 70 ;
                CMP #$0010              ; $00:8CAF: C9 10 00    ;
                BCS CODE_008CC1         ; $00:8CB2: B0 0D       ;
                BRA CODE_008C76         ; $00:8CB4: 80 C0       ;

CODE_008CB6:    REP #$30                ; $00:8CB6: C2 30       ;
                LDX $02                 ; $00:8CB8: A6 02       ;
                JSR CODE_008D83         ; $00:8CBA: 20 83 8D    ;
                STX $02                 ; $00:8CBD: 86 02       ;
                BRA CODE_008CA6         ; $00:8CBF: 80 E5       ;

CODE_008CC1:    JMP CODE_008D80         ; $00:8CC1: 4C 80 8D    ;
                LDA $700389             ; $00:8CC4: AF 89 03 70 ;
                STA $00                 ; $00:8CC8: 85 00       ;
                LDA $700370             ; $00:8CCA: AF 70 03 70 ;
                AND #$00FF              ; $00:8CCE: 29 FF 00    ;
                CLC                     ; $00:8CD1: 18          ;
                ADC $00                 ; $00:8CD2: 65 00       ;
                SEC                     ; $00:8CD4: 38          ;
                SBC #$0007              ; $00:8CD5: E9 07 00    ;
                STA $00                 ; $00:8CD8: 85 00       ;
                LDA $700371             ; $00:8CDA: AF 71 03 70 ;
                AND #$00FF              ; $00:8CDE: 29 FF 00    ;
                CLC                     ; $00:8CE1: 18          ;
                ADC $00                 ; $00:8CE2: 65 00       ;
                SEC                     ; $00:8CE4: 38          ;
                SBC #$0003              ; $00:8CE5: E9 03 00    ;
                STA $700389             ; $00:8CE8: 8F 89 03 70 ;
                LDA #$0307              ; $00:8CEC: A9 07 03    ;
                STA $700370             ; $00:8CEF: 8F 70 03 70 ;
                LDA $70038A             ; $00:8CF3: AF 8A 03 70 ;
                STA $00                 ; $00:8CF7: 85 00       ;
                LDA $700379             ; $00:8CF9: AF 79 03 70 ;
                AND #$00FF              ; $00:8CFD: 29 FF 00    ;
                CLC                     ; $00:8D00: 18          ;
                ADC $00                 ; $00:8D01: 65 00       ;
                SEC                     ; $00:8D03: 38          ;
                SBC #$000C              ; $00:8D04: E9 0C 00    ;
                STA $00                 ; $00:8D07: 85 00       ;
                LDA $70037A             ; $00:8D09: AF 7A 03 70 ;
                AND #$00FF              ; $00:8D0D: 29 FF 00    ;
                CLC                     ; $00:8D10: 18          ;
                ADC $00                 ; $00:8D11: 65 00       ;
                SEC                     ; $00:8D13: 38          ;
                SBC #$0003              ; $00:8D14: E9 03 00    ;
                STA $70038A             ; $00:8D17: 8F 8A 03 70 ;
                LDA #$030C              ; $00:8D1B: A9 0C 03    ;
                STA $700379             ; $00:8D1E: 8F 79 03 70 ;
                LDA $700388             ; $00:8D22: AF 88 03 70 ;
                STA $00                 ; $00:8D26: 85 00       ;
                LDA $700381             ; $00:8D28: AF 81 03 70 ;
                AND #$00FF              ; $00:8D2C: 29 FF 00    ;
                CLC                     ; $00:8D2F: 18          ;
                ADC $00                 ; $00:8D30: 65 00       ;
                SEC                     ; $00:8D32: 38          ;
                SBC #$0006              ; $00:8D33: E9 06 00    ;
                STA $00                 ; $00:8D36: 85 00       ;
                LDA $700382             ; $00:8D38: AF 82 03 70 ;
                AND #$00FF              ; $00:8D3C: 29 FF 00    ;
                CLC                     ; $00:8D3F: 18          ;
                ADC $00                 ; $00:8D40: 65 00       ;
                SEC                     ; $00:8D42: 38          ;
                SBC #$0001              ; $00:8D43: E9 01 00    ;
                STA $700388             ; $00:8D46: 8F 88 03 70 ;
                LDA #$0106              ; $00:8D4A: A9 06 01    ;
                STA $700381             ; $00:8D4D: 8F 81 03 70 ;
                LDA $7004A0             ; $00:8D51: AF A0 04 70 ;
                STA $00                 ; $00:8D55: 85 00       ;
                LDA $70038A             ; $00:8D57: AF 8A 03 70 ;
                AND #$00FF              ; $00:8D5B: 29 FF 00    ;
                CLC                     ; $00:8D5E: 18          ;
                ADC $00                 ; $00:8D5F: 65 00       ;
                SEC                     ; $00:8D61: 38          ;
                SBC #$0006              ; $00:8D62: E9 06 00    ;
                STA $00                 ; $00:8D65: 85 00       ;
                LDA $70038B             ; $00:8D67: AF 8B 03 70 ;
                AND #$00FF              ; $00:8D6B: 29 FF 00    ;
                CLC                     ; $00:8D6E: 18          ;
                ADC $00                 ; $00:8D6F: 65 00       ;
                SEC                     ; $00:8D71: 38          ;
                SBC #$0000              ; $00:8D72: E9 00 00    ;
                STA $7004A0             ; $00:8D75: 8F A0 04 70 ;
                LDA #$0007              ; $00:8D79: A9 07 00    ;
                STA $70038A             ; $00:8D7C: 8F 8A 03 70 ;
CODE_008D80:    SEP #$30                ; $00:8D80: E2 30       ;
                RTS                     ; $00:8D82: 60          ;

CODE_008D83:    LDA $700004             ; $00:8D83: AF 04 00 70 ;
                AND #$0003              ; $00:8D87: 29 03 00    ;
                ASL A                   ; $00:8D8A: 0A          ;
                TAY                     ; $00:8D8B: A8          ;
                LDA DATA_008DDB,y       ; $00:8D8C: B9 DB 8D    ;
                DEC A                   ; $00:8D8F: 3A          ;
                DEC A                   ; $00:8D90: 3A          ;
                STA $0E                 ; $00:8D91: 85 0E       ;
                LDA DATA_008DD3,y       ; $00:8D93: B9 D3 8D    ;
                TAY                     ; $00:8D96: A8          ;
                STZ $00                 ; $00:8D97: 64 00       ;
                SEP #$20                ; $00:8D99: E2 20       ;

CODE_008D9B:    LDA DATA_008DE3,y       ; $00:8D9B: B9 E3 8D    ;
                STA $700010,x           ; $00:8D9E: 9F 10 00 70 ;
                CLC                     ; $00:8DA2: 18          ;
                ADC $00                 ; $00:8DA3: 65 00       ;
                STA $00                 ; $00:8DA5: 85 00       ;
                LDA $01                 ; $00:8DA7: A5 01       ;
                ADC #$00                ; $00:8DA9: 69 00       ;
                STA $01                 ; $00:8DAB: 85 01       ;
                LDA DATA_008DE3,y       ; $00:8DAD: B9 E3 8D    ;
                INX                     ; $00:8DB0: E8          ;
                INY                     ; $00:8DB1: C8          ;
                DEC $0E                 ; $00:8DB2: C6 0E       ;
                BNE CODE_008D9B         ; $00:8DB4: D0 E5       ;
                DEC $0F                 ; $00:8DB6: C6 0F       ;
                BPL CODE_008D9B         ; $00:8DB8: 10 E1       ;
                REP #$20                ; $00:8DBA: C2 20       ;
                LDA #$0000              ; $00:8DBC: A9 00 00    ;
                SEC                     ; $00:8DBF: 38          ;
                SBC $00                 ; $00:8DC0: E5 00       ;
                STA $700010,x           ; $00:8DC2: 9F 10 00 70 ;
                LDA $D0                 ; $00:8DC6: A5 D0       ;
                AND #$0003              ; $00:8DC8: 29 03 00    ;
                CMP #$0003              ; $00:8DCB: C9 03 00    ;
                BNE CODE_008DD0         ; $00:8DCE: D0 00       ;
CODE_008DD0:    INX                     ; $00:8DD0: E8          ;
                INX                     ; $00:8DD1: E8          ;
                RTS                     ; $00:8DD2: 60          ;

DATA_008DD3:    db $00,$00,$09,$00,$11,$00,$1A,$00              ;

DATA_008DDB:    db $09,$00,$08,$00,$09,$00,$06,$01              ;

DATA_008DE3:    db $FF,$FF,$FF,$04,$04,$00,$FF,$00              ;
                db $00,$FF,$FF,$FF,$04,$00,$FF,$00              ;
                db $00,$FF,$FF,$05,$00,$00,$00,$00              ;
                db $00,$00,$FF,$FF,$04,$04,$70,$80              ;
                db $80,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$D0,$C0,$A0,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $01,$00,$03,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$FF,$00,$00              ;

CODE_008F03:    PHX                     ; $00:8F03: DA          ;
                PHY                     ; $00:8F04: 5A          ;
                PHB                     ; $00:8F05: 8B          ;
                PHK                     ; $00:8F06: 4B          ;
                PLB                     ; $00:8F07: AB          ;
                LDA $701FF8             ; $00:8F08: AF F8 1F 70 ;
                BEQ CODE_008F11         ; $00:8F0C: F0 03       ;
                JMP CODE_00900C         ; $00:8F0E: 4C 0C 90    ;

CODE_008F11:    REP #$30                ; $00:8F11: C2 30       ;
                STZ $00                 ; $00:8F13: 64 00       ;
                LDA $700004             ; $00:8F15: AF 04 00 70 ;
                TAX                     ; $00:8F19: AA          ;
                SEP #$20                ; $00:8F1A: E2 20       ;
                LDA $077A               ; $00:8F1C: AD 7A 07    ;
                BEQ CODE_008F38         ; $00:8F1F: F0 17       ;
                LDA $07FC               ; $00:8F21: AD FC 07    ;
                CMP $0781               ; $00:8F24: CD 81 07    ;
                BEQ CODE_008F30         ; $00:8F27: F0 07       ;
                CMP #$01                ; $00:8F29: C9 01       ;
                BEQ CODE_008F38         ; $00:8F2B: F0 0B       ;
                JMP CODE_008F77         ; $00:8F2D: 4C 77 8F    ;

CODE_008F30:    LDA $075F               ; $00:8F30: AD 5F 07    ;
                CMP $0766               ; $00:8F33: CD 66 07    ;
                BCC CODE_008F77         ; $00:8F36: 90 3F       ;
CODE_008F38:    LDA $07FC               ; $00:8F38: AD FC 07    ;
                STA $02                 ; $00:8F3B: 85 02       ;
                CMP $700015,x           ; $00:8F3D: DF 15 00 70 ;
                BEQ CODE_008F49         ; $00:8F41: F0 06       ;
                CMP #$01                ; $00:8F43: C9 01       ;
                BEQ CODE_008F68         ; $00:8F45: F0 21       ;
                BRA CODE_008F54         ; $00:8F47: 80 0B       ;

CODE_008F49:    LDA $700010,x           ; $00:8F49: BF 10 00 70 ;
                BMI CODE_008F68         ; $00:8F4D: 30 19       ;
                CMP $075F               ; $00:8F4F: CD 5F 07    ;
                BCC CODE_008F68         ; $00:8F52: 90 14       ;
CODE_008F54:    LDA $700010,x           ; $00:8F54: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:8F58: 20 F6 92    ;
                LDA $700010,x           ; $00:8F5B: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:8F5F: 20 F6 92    ;
                LDA $700010,x           ; $00:8F62: BF 10 00 70 ;
                BRA CODE_008F75         ; $00:8F66: 80 0D       ;

CODE_008F68:    LDA $075F               ; $00:8F68: AD 5F 07    ;
                JSR CODE_0092F6         ; $00:8F6B: 20 F6 92    ;
                LDA #$00                ; $00:8F6E: A9 00       ;
                JSR CODE_0092F6         ; $00:8F70: 20 F6 92    ;
                LDA #$00                ; $00:8F73: A9 00       ;
CODE_008F75:    BRA CODE_008FB6         ; $00:8F75: 80 3F       ;

CODE_008F77:    LDA $0781               ; $00:8F77: AD 81 07    ;
                STA $02                 ; $00:8F7A: 85 02       ;
                CMP $700015,x           ; $00:8F7C: DF 15 00 70 ;
                BEQ CODE_008F88         ; $00:8F80: F0 06       ;
                CMP #$01                ; $00:8F82: C9 01       ;
                BEQ CODE_008FA7         ; $00:8F84: F0 21       ;
                BRA CODE_008F93         ; $00:8F86: 80 0B       ;

CODE_008F88:    LDA $700010,x           ; $00:8F88: BF 10 00 70 ;
                BMI CODE_008FA7         ; $00:8F8C: 30 19       ;
                CMP $0766               ; $00:8F8E: CD 66 07    ;
                BCC CODE_008FA7         ; $00:8F91: 90 14       ;
CODE_008F93:    LDA $700010,x           ; $00:8F93: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:8F97: 20 F6 92    ;
                LDA $700010,x           ; $00:8F9A: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:8F9E: 20 F6 92    ;
                LDA $700010,x           ; $00:8FA1: BF 10 00 70 ;
                BRA CODE_008FB6         ; $00:8FA5: 80 0F       ;

CODE_008FA7:    LDA $0766               ; $00:8FA7: AD 66 07    ;
                JSR CODE_0092F6         ; $00:8FAA: 20 F6 92    ;
                LDA $0763               ; $00:8FAD: AD 63 07    ;
                JSR CODE_0092F6         ; $00:8FB0: 20 F6 92    ;
                LDA $0767               ; $00:8FB3: AD 67 07    ;
CODE_008FB6:    JSR CODE_0092F6         ; $00:8FB6: 20 F6 92    ;
                LDA $075A               ; $00:8FB9: AD 5A 07    ;
                STA $04                 ; $00:8FBC: 85 04       ;
                LDA $0761               ; $00:8FBE: AD 61 07    ;
                STA $05                 ; $00:8FC1: 85 05       ;
                REP #$20                ; $00:8FC3: C2 20       ;
                LDA $0753               ; $00:8FC5: AD 53 07    ;
                AND #$00FF              ; $00:8FC8: 29 FF 00    ;
                TAY                     ; $00:8FCB: A8          ;
                SEP #$20                ; $00:8FCC: E2 20       ;
                LDA $0004,y             ; $00:8FCE: B9 04 00    ;
                BPL CODE_008FD5         ; $00:8FD1: 10 02       ;
                LDA #$04                ; $00:8FD3: A9 04       ;
CODE_008FD5:    JSR CODE_0092F6         ; $00:8FD5: 20 F6 92    ;
                TYA                     ; $00:8FD8: 98          ;
                EOR #$01                ; $00:8FD9: 49 01       ;
                TAY                     ; $00:8FDB: A8          ;
                LDA $0004,y             ; $00:8FDC: B9 04 00    ;
                BPL CODE_008FE3         ; $00:8FDF: 10 02       ;
                LDA #$04                ; $00:8FE1: A9 04       ;
CODE_008FE3:    JSR CODE_0092F6         ; $00:8FE3: 20 F6 92    ;
                PHX                     ; $00:8FE6: DA          ;
                JSR CODE_009083         ; $00:8FE7: 20 83 90    ;
                PLX                     ; $00:8FEA: FA          ;
                LDA $700010,x           ; $00:8FEB: BF 10 00 70 ;
                ORA $02                 ; $00:8FEF: 05 02       ;
                JSR CODE_0092F6         ; $00:8FF1: 20 F6 92    ;
                LDA $077A               ; $00:8FF4: AD 7A 07    ;
                JSR CODE_0092F6         ; $00:8FF7: 20 F6 92    ;
                REP #$20                ; $00:8FFA: C2 20       ;
                LDA #$0000              ; $00:8FFC: A9 00 00    ;
                SEC                     ; $00:8FFF: 38          ;
                SBC $00                 ; $00:9000: E5 00       ;
                STA $700010,x           ; $00:9002: 9F 10 00 70 ;
                SEP #$30                ; $00:9006: E2 30       ;
                PLB                     ; $00:9008: AB          ;
                PLY                     ; $00:9009: 7A          ;
                PLX                     ; $00:900A: FA          ;
                RTL                     ; $00:900B: 6B          ;

CODE_00900C:    REP #$30                ; $00:900C: C2 30       ;
                STZ $00                 ; $00:900E: 64 00       ;
                LDA $700004             ; $00:9010: AF 04 00 70 ;
                TAX                     ; $00:9014: AA          ;
                SEP #$20                ; $00:9015: E2 20       ;
                LDA $701FF9             ; $00:9017: AF F9 1F 70 ;
                JSR CODE_0092F6         ; $00:901B: 20 F6 92    ;
                LDA #$00                ; $00:901E: A9 00       ;
                JSR CODE_0092F6         ; $00:9020: 20 F6 92    ;
                LDA #$00                ; $00:9023: A9 00       ;
                JSR CODE_0092F6         ; $00:9025: 20 F6 92    ;
                LDA $075A               ; $00:9028: AD 5A 07    ;
                STA $04                 ; $00:902B: 85 04       ;
                LDA $0761               ; $00:902D: AD 61 07    ;
                STA $05                 ; $00:9030: 85 05       ;
                REP #$20                ; $00:9032: C2 20       ;
                LDA $0753               ; $00:9034: AD 53 07    ;
                AND #$00FF              ; $00:9037: 29 FF 00    ;
                TAY                     ; $00:903A: A8          ;
                SEP #$20                ; $00:903B: E2 20       ;
                LDA $0004,y             ; $00:903D: B9 04 00    ;
                BPL CODE_009044         ; $00:9040: 10 02       ;
                LDA #$04                ; $00:9042: A9 04       ;
CODE_009044:    JSR CODE_0092F6         ; $00:9044: 20 F6 92    ;
                TYA                     ; $00:9047: 98          ;
                EOR #$01                ; $00:9048: 49 01       ;
                TAY                     ; $00:904A: A8          ;
                LDA $0004,y             ; $00:904B: B9 04 00    ;
                BPL CODE_009052         ; $00:904E: 10 02       ;
                LDA #$04                ; $00:9050: A9 04       ;
CODE_009052:    JSR CODE_0092F6         ; $00:9052: 20 F6 92    ;
                PHX                     ; $00:9055: DA          ;
                JSR CODE_009083         ; $00:9056: 20 83 90    ;
                PLX                     ; $00:9059: FA          ;
                LDA $701FF8             ; $00:905A: AF F8 1F 70 ;
                JSR CODE_0092F6         ; $00:905E: 20 F6 92    ;
                LDA $077A               ; $00:9061: AD 7A 07    ;
                JSR CODE_0092F6         ; $00:9064: 20 F6 92    ;
                REP #$20                ; $00:9067: C2 20       ;
                LDA #$0000              ; $00:9069: A9 00 00    ;
                SEC                     ; $00:906C: 38          ;
                SBC $00                 ; $00:906D: E5 00       ;
                STA $700010,x           ; $00:906F: 9F 10 00 70 ;
                SEP #$30                ; $00:9073: E2 30       ;
                LDA #$00                ; $00:9075: A9 00       ;
                STA $701FF8             ; $00:9077: 8F F8 1F 70 ;
                STA $701FF9             ; $00:907B: 8F F9 1F 70 ;
                PLB                     ; $00:907F: AB          ;
                PLY                     ; $00:9080: 7A          ;
                PLX                     ; $00:9081: FA          ;
                RTL                     ; $00:9082: 6B          ;

CODE_009083:    PHB                     ; $00:9083: 8B          ;
                LDA #$70                ; $00:9084: A9 70       ;
                PHA                     ; $00:9086: 48          ;
                PLB                     ; $00:9087: AB          ;
                PHD                     ; $00:9088: 0B          ;
                LDA #$07                ; $00:9089: A9 07       ;
                XBA                     ; $00:908B: EB          ;
                LDA #$00                ; $00:908C: A9 00       ;
                TCD                     ; $00:908E: 5B          ;
                LDX #$0005              ; $00:908F: A2 05 00    ;
                SEC                     ; $00:9092: 38          ;
CODE_009093:    LDA $C8,x               ; $00:9093: B5 C8       ;
                SBC $1FE0,x             ; $00:9095: FD E0 1F    ;
                DEX                     ; $00:9098: CA          ;
                BPL CODE_009093         ; $00:9099: 10 F8       ;
                BCC CODE_0090A9         ; $00:909B: 90 0C       ;
                INX                     ; $00:909D: E8          ;
CODE_00909E:    LDA $C8,x               ; $00:909E: B5 C8       ;
                STA $1FE0,x             ; $00:90A0: 9D E0 1F    ;
                INX                     ; $00:90A3: E8          ;
                CPX #$0006              ; $00:90A4: E0 06 00    ;
                BCC CODE_00909E         ; $00:90A7: 90 F5       ;
CODE_0090A9:    PLD                     ; $00:90A9: 2B          ;
                PLB                     ; $00:90AA: AB          ;
                RTS                     ; $00:90AB: 60          ;

CODE_0090AC:    PHX                     ; $00:90AC: DA          ;
                PHY                     ; $00:90AD: 5A          ;
                PHB                     ; $00:90AE: 8B          ;
                PHK                     ; $00:90AF: 4B          ;
                PLB                     ; $00:90B0: AB          ;
                REP #$30                ; $00:90B1: C2 30       ;
                STZ $00                 ; $00:90B3: 64 00       ;
                LDA $700004             ; $00:90B5: AF 04 00 70 ;
                TAX                     ; $00:90B9: AA          ;
                SEP #$20                ; $00:90BA: E2 20       ;
                LDA $700010,x           ; $00:90BC: BF 10 00 70 ;
                BMI CODE_0090E9         ; $00:90C0: 30 27       ;
                CMP $075F               ; $00:90C2: CD 5F 07    ;
                BCC CODE_0090E9         ; $00:90C5: 90 22       ;
                BNE CODE_0090D2         ; $00:90C7: D0 09       ;
                LDA $700011,x           ; $00:90C9: BF 11 00 70 ;
                CMP $075C               ; $00:90CD: CD 5C 07    ;
                BCC CODE_0090E9         ; $00:90D0: 90 17       ;
CODE_0090D2:    LDA $700010,x           ; $00:90D2: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:90D6: 20 F6 92    ;
                LDA $700010,x           ; $00:90D9: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:90DD: 20 F6 92    ;
                LDA $700010,x           ; $00:90E0: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:90E4: 20 F6 92    ;
                BRA CODE_0090FB         ; $00:90E7: 80 12       ;

CODE_0090E9:    LDA $075F               ; $00:90E9: AD 5F 07    ;
                JSR CODE_0092F6         ; $00:90EC: 20 F6 92    ;
                LDA $075C               ; $00:90EF: AD 5C 07    ;
                JSR CODE_0092F6         ; $00:90F2: 20 F6 92    ;
                LDA $0760               ; $00:90F5: AD 60 07    ;
                JSR CODE_0092F6         ; $00:90F8: 20 F6 92    ;
CODE_0090FB:    LDA $075A               ; $00:90FB: AD 5A 07    ;
                BPL CODE_009102         ; $00:90FE: 10 02       ;
                LDA #$04                ; $00:9100: A9 04       ;
CODE_009102:    JSR CODE_0092F6         ; $00:9102: 20 F6 92    ;
                PHX                     ; $00:9105: DA          ;
                JSR CODE_009129         ; $00:9106: 20 29 91    ;
                PLX                     ; $00:9109: FA          ;
                LDA $0F2B               ; $00:910A: AD 2B 0F    ;
                JSR CODE_0092F6         ; $00:910D: 20 F6 92    ;
                LDA $7FFB05             ; $00:9110: AF 05 FB 7F ;
                JSR CODE_0092F6         ; $00:9114: 20 F6 92    ;
                REP #$20                ; $00:9117: C2 20       ;
                LDA #$0000              ; $00:9119: A9 00 00    ;
                SEC                     ; $00:911C: 38          ;
                SBC $00                 ; $00:911D: E5 00       ;
                STA $700010,x           ; $00:911F: 9F 10 00 70 ;
                SEP #$30                ; $00:9123: E2 30       ;
                PLB                     ; $00:9125: AB          ;
                PLY                     ; $00:9126: 7A          ;
                PLX                     ; $00:9127: FA          ;
                RTL                     ; $00:9128: 6B          ;

CODE_009129:    PHB                     ; $00:9129: 8B          ;
                LDA #$70                ; $00:912A: A9 70       ;
                PHA                     ; $00:912C: 48          ;
                PLB                     ; $00:912D: AB          ;
                PHD                     ; $00:912E: 0B          ;
                LDA #$07                ; $00:912F: A9 07       ;
                XBA                     ; $00:9131: EB          ;
                LDA #$00                ; $00:9132: A9 00       ;
                TCD                     ; $00:9134: 5B          ;
                LDX #$0005              ; $00:9135: A2 05 00    ;
                SEC                     ; $00:9138: 38          ;
CODE_009139:    LDA $C8,x               ; $00:9139: B5 C8       ;
                SBC $1FE8,x             ; $00:913B: FD E8 1F    ;
                DEX                     ; $00:913E: CA          ;
                BPL CODE_009139         ; $00:913F: 10 F8       ;
                BCC CODE_00914F         ; $00:9141: 90 0C       ;
                INX                     ; $00:9143: E8          ;
CODE_009144:    LDA $C8,x               ; $00:9144: B5 C8       ;
                STA $1FE8,x             ; $00:9146: 9D E8 1F    ;
                INX                     ; $00:9149: E8          ;
                CPX #$0006              ; $00:914A: E0 06 00    ;
                BCC CODE_009144         ; $00:914D: 90 F5       ;
CODE_00914F:    PLD                     ; $00:914F: 2B          ;
                PLB                     ; $00:9150: AB          ;
                RTS                     ; $00:9151: 60          ;

CODE_009152:    PHX                     ; $00:9152: DA          ;
                PHY                     ; $00:9153: 5A          ;
                PHB                     ; $00:9154: 8B          ;
                PHK                     ; $00:9155: 4B          ;
                PLB                     ; $00:9156: AB          ;
                STZ $0F                 ; $00:9157: 64 0F       ;
                LDA $04E8               ; $00:9159: AD E8 04    ;
                CMP #$13                ; $00:915C: C9 13       ;
                BNE CODE_009165         ; $00:915E: D0 05       ;
                DEC $04E8               ; $00:9160: CE E8 04    ;
                INC $0F                 ; $00:9163: E6 0F       ;
CODE_009165:    STZ $02                 ; $00:9165: 64 02       ;
                STZ $03                 ; $00:9167: 64 03       ;
                STZ $00                 ; $00:9169: 64 00       ;
                STZ $01                 ; $00:916B: 64 01       ;
                LDA $04E8               ; $00:916D: AD E8 04    ;
CODE_009170:    CMP #$03                ; $00:9170: C9 03       ;
                BCC CODE_00917B         ; $00:9172: 90 07       ;
                SEC                     ; $00:9174: 38          ;
                SBC #$03                ; $00:9175: E9 03       ;
                INC $02                 ; $00:9177: E6 02       ;
                BRA CODE_009170         ; $00:9179: 80 F5       ;

CODE_00917B:    REP #$10                ; $00:917B: C2 10       ;
                STA $03                 ; $00:917D: 85 03       ;
                LDA $700005             ; $00:917F: AF 05 00 70 ;
                XBA                     ; $00:9183: EB          ;
                LDA $700004             ; $00:9184: AF 04 00 70 ;
                TAX                     ; $00:9188: AA          ;
                LDA $0F                 ; $00:9189: A5 0F       ;
                BNE CODE_0091B4         ; $00:918B: D0 27       ;
                LDA $700010,x           ; $00:918D: BF 10 00 70 ;
                BMI CODE_0091B4         ; $00:9191: 30 21       ;
                CMP $02                 ; $00:9193: C5 02       ;
                BEQ CODE_00919C         ; $00:9195: F0 05       ;
                BCC CODE_0091B4         ; $00:9197: 90 1B       ;
                JMP CODE_0091A4         ; $00:9199: 4C A4 91    ;

CODE_00919C:    LDA $700011,x           ; $00:919C: BF 11 00 70 ;
                CMP $03                 ; $00:91A0: C5 03       ;
                BCC CODE_0091B4         ; $00:91A2: 90 10       ;
CODE_0091A4:    LDA $700010,x           ; $00:91A4: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:91A8: 20 F6 92    ;
                LDA $700010,x           ; $00:91AB: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:91AF: 20 F6 92    ;
                BRA CODE_0091BE         ; $00:91B2: 80 0A       ;

CODE_0091B4:    LDA $02                 ; $00:91B4: A5 02       ;
                JSR CODE_0092F6         ; $00:91B6: 20 F6 92    ;
                LDA $03                 ; $00:91B9: A5 03       ;
                JSR CODE_0092F6         ; $00:91BB: 20 F6 92    ;
CODE_0091BE:    LDA $04EE               ; $00:91BE: AD EE 04    ;
                BNE CODE_0091C5         ; $00:91C1: D0 02       ;
                LDA #$05                ; $00:91C3: A9 05       ;
CODE_0091C5:    JSR CODE_0092F6         ; $00:91C5: 20 F6 92    ;
                LDA $062D               ; $00:91C8: AD 2D 06    ;
                JSR CODE_0092F6         ; $00:91CB: 20 F6 92    ;
                LDA $062E               ; $00:91CE: AD 2E 06    ;
                JSR CODE_0092F6         ; $00:91D1: 20 F6 92    ;
                LDA $062F               ; $00:91D4: AD 2F 06    ;
                JSR CODE_0092F6         ; $00:91D7: 20 F6 92    ;
                LDA $0630               ; $00:91DA: AD 30 06    ;
                JSR CODE_0092F6         ; $00:91DD: 20 F6 92    ;
CODE_0091E0:    REP #$20                ; $00:91E0: C2 20       ;
                LDA #$0000              ; $00:91E2: A9 00 00    ;
                SEC                     ; $00:91E5: 38          ;
                SBC $00                 ; $00:91E6: E5 00       ;
                STA $700010,x           ; $00:91E8: 9F 10 00 70 ;
                SEP #$30                ; $00:91EC: E2 30       ;
                LDA $0F                 ; $00:91EE: A5 0F       ;
                BEQ CODE_0091F5         ; $00:91F0: F0 03       ;
                INC $04E8               ; $00:91F2: EE E8 04    ;
CODE_0091F5:    PLB                     ; $00:91F5: AB          ;
                PLY                     ; $00:91F6: 7A          ;
                PLX                     ; $00:91F7: FA          ;
                RTL                     ; $00:91F8: 6B          ;

                STZ $00                 ; $00:91F9: 64 00       ;
                STZ $01                 ; $00:91FB: 64 01       ;
                LDA $700010,x           ; $00:91FD: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:9201: 20 F6 92    ;
                LDA $700010,x           ; $00:9204: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:9208: 20 F6 92    ;
                LDA $700010,x           ; $00:920B: BF 10 00 70 ;
                JSR CODE_0092F6         ; $00:920F: 20 F6 92    ;
                LDA $062D               ; $00:9212: AD 2D 06    ;
                JSR CODE_0092F6         ; $00:9215: 20 F6 92    ;
                LDA $062E               ; $00:9218: AD 2E 06    ;
                JSR CODE_0092F6         ; $00:921B: 20 F6 92    ;
                LDA $062F               ; $00:921E: AD 2F 06    ;
                JSR CODE_0092F6         ; $00:9221: 20 F6 92    ;
                LDA $0630               ; $00:9224: AD 30 06    ;
                JSR CODE_0092F6         ; $00:9227: 20 F6 92    ;
                JMP CODE_0091E0         ; $00:922A: 4C E0 91    ;

CODE_00922D:    PHX                     ; $00:922D: DA          ;
                PHY                     ; $00:922E: 5A          ;
                PHB                     ; $00:922F: 8B          ;
                PHK                     ; $00:9230: 4B          ;
                PLB                     ; $00:9231: AB          ;
                REP #$30                ; $00:9232: C2 30       ;
                LDA $00                 ; $00:9234: A5 00       ;
                PHA                     ; $00:9236: 48          ;
                STZ $00                 ; $00:9237: 64 00       ;
                LDA $700004             ; $00:9239: AF 04 00 70 ;
                TAX                     ; $00:923D: AA          ;
                SEP #$20                ; $00:923E: E2 20       ;
                LDA $700010,x           ; $00:9240: BF 10 00 70 ;
                BPL CODE_00924D         ; $00:9244: 10 07       ;
                INC A                   ; $00:9246: 1A          ;
                STA $700010,x           ; $00:9247: 9F 10 00 70 ;
                BRA CODE_009257         ; $00:924B: 80 0A       ;

CODE_00924D:    CMP $0727               ; $00:924D: CD 27 07    ;
                BEQ CODE_009257         ; $00:9250: F0 05       ;
                BCC CODE_009257         ; $00:9252: 90 03       ;
                JMP CODE_00928B         ; $00:9254: 4C 8B 92    ;

CODE_009257:    LDA $0727               ; $00:9257: AD 27 07    ;
                STA $700010,x           ; $00:925A: 9F 10 00 70 ;
                PHX                     ; $00:925E: DA          ;
                LDY #$0000              ; $00:925F: A0 00 00    ;
CODE_009262:    LDA $1D00,y             ; $00:9262: B9 00 1D    ;
                STA $70004C,x           ; $00:9265: 9F 4C 00 70 ;
                INX                     ; $00:9269: E8          ;
                INY                     ; $00:926A: C8          ;
                CPY #$0080              ; $00:926B: C0 80 00    ;
                BCC CODE_009262         ; $00:926E: 90 F2       ;
                PLX                     ; $00:9270: FA          ;
                PHX                     ; $00:9271: DA          ;
                LDY #$0000              ; $00:9272: A0 00 00    ;
CODE_009275:    LDA $1EED,y             ; $00:9275: B9 ED 1E    ;
                STA $700014,x           ; $00:9278: 9F 14 00 70 ;
                INX                     ; $00:927C: E8          ;
                INY                     ; $00:927D: C8          ;
                CPY #$0038              ; $00:927E: C0 38 00    ;
                BCC CODE_009275         ; $00:9281: 90 F2       ;
                PLX                     ; $00:9283: FA          ;
                LDA $072B               ; $00:9284: AD 2B 07    ;
                STA $700113,x           ; $00:9287: 9F 13 01 70 ;
CODE_00928B:    PHX                     ; $00:928B: DA          ;
                LDY #$0000              ; $00:928C: A0 00 00    ;
CODE_00928F:    LDA $1D80,y             ; $00:928F: B9 80 1D    ;
                STA $7000CC,x           ; $00:9292: 9F CC 00 70 ;
                INX                     ; $00:9296: E8          ;
                INY                     ; $00:9297: C8          ;
                CPY #$0046              ; $00:9298: C0 46 00    ;
                BCC CODE_00928F         ; $00:929B: 90 F2       ;
                PLX                     ; $00:929D: FA          ;
                PHX                     ; $00:929E: DA          ;
                LDA $0736               ; $00:929F: AD 36 07    ;
                BPL CODE_0092A6         ; $00:92A2: 10 02       ;
                LDA #$04                ; $00:92A4: A9 04       ;
CODE_0092A6:    STA $700012,x           ; $00:92A6: 9F 12 00 70 ;
                LDA $0737               ; $00:92AA: AD 37 07    ;
                BPL CODE_0092B1         ; $00:92AD: 10 02       ;
                LDA #$04                ; $00:92AF: A9 04       ;
CODE_0092B1:    STA $700013,x           ; $00:92B1: 9F 13 00 70 ;
                PLX                     ; $00:92B5: FA          ;
                PHX                     ; $00:92B6: DA          ;
                LDA $7E3971             ; $00:92B7: AF 71 39 7E ;
                STA $700112,x           ; $00:92BB: 9F 12 01 70 ;
                LDY #$0104              ; $00:92BF: A0 04 01    ;
                PLX                     ; $00:92C2: FA          ;
CODE_0092C3:    LDA $700010,x           ; $00:92C3: BF 10 00 70 ;
                CLC                     ; $00:92C7: 18          ;
                ADC $00                 ; $00:92C8: 65 00       ;
                STA $00                 ; $00:92CA: 85 00       ;
                LDA #$00                ; $00:92CC: A9 00       ;
                ADC $01                 ; $00:92CE: 65 01       ;
                STA $01                 ; $00:92D0: 85 01       ;
                INX                     ; $00:92D2: E8          ;
                DEY                     ; $00:92D3: 88          ;
                BNE CODE_0092C3         ; $00:92D4: D0 ED       ;
                REP #$20                ; $00:92D6: C2 20       ;
                LDA #$0000              ; $00:92D8: A9 00 00    ;
                SEC                     ; $00:92DB: 38          ;
                SBC $00                 ; $00:92DC: E5 00       ;
                STA $700010,x           ; $00:92DE: 9F 10 00 70 ;
                SEP #$20                ; $00:92E2: E2 20       ;
                LDA #$00                ; $00:92E4: A9 00       ;
                STA $7FFF03             ; $00:92E6: 8F 03 FF 7F ;
                SEP #$30                ; $00:92EA: E2 30       ;
                PLA                     ; $00:92EC: 68          ;
                STA $01                 ; $00:92ED: 85 01       ;
                PLA                     ; $00:92EF: 68          ;
                STA $00                 ; $00:92F0: 85 00       ;
                PLB                     ; $00:92F2: AB          ;
                PLY                     ; $00:92F3: 7A          ;
                PLX                     ; $00:92F4: FA          ;
                RTL                     ; $00:92F5: 6B          ;

CODE_0092F6:    STA $700010,x           ; $00:92F6: 9F 10 00 70 ;
                INX                     ; $00:92FA: E8          ;
                CLC                     ; $00:92FB: 18          ;
                ADC $00                 ; $00:92FC: 65 00       ;
                STA $00                 ; $00:92FE: 85 00       ;
                LDA $01                 ; $00:9300: A5 01       ;
                ADC #$00                ; $00:9302: 69 00       ;
                STA $01                 ; $00:9304: 85 01       ;
                RTS                     ; $00:9306: 60          ;

DATA_009307:    db $3B,$00,$1D,$00,$11,$00,$12,$00              ;\
                db $1C,$00,$3B,$00,$10,$00,$0A,$00              ; |
                db $16,$00,$0E,$00,$3B,$00,$19,$00              ; |
                db $0A,$00,$14,$00,$3B,$00,$12,$00              ; |
                db $1C,$00,$3B,$00,$17,$00,$18,$00              ; |
                db $1D,$00,$3B,$00,$3B,$00,$3B,$00              ; |

DATA_009337:    db $0D,$00,$0E,$00,$1C,$00,$12,$00              ; |
                db $10,$00,$12,$00,$17,$00,$0E,$00              ; |
                db $0D,$00,$3B,$00,$0F,$00,$18,$00              ; |
                db $1B,$00,$3B,$00,$22,$00,$18,$00              ; |
                db $1E,$00,$1B,$00,$3B,$00,$1C,$00              ; |
                db $1E,$00,$19,$00,$0E,$00,$1B,$00              ; |

DATA_009367:    db $0F,$00,$0A,$00,$16,$00,$12,$00              ; |
                db $0C,$00,$18,$00,$16,$00,$3B,$00              ; |Text used by this error message:
                db $18,$00,$1B,$00,$3B,$00,$1C,$00              ; |"THIS GAME PAK IS NOT
                db $1E,$00,$19,$00,$0E,$00,$1B,$00              ; |DESIGINED FOR YOUR SUPER
                db $3B,$00,$17,$00,$0E,$00,$1C,$00              ; |FAMICOM OR SUPER NES.
                db $26,$00,$3B,$00,$3B,$00,$3B,$00              ; |NINTENDO CO.,LTD."

DATA_009397:    db $3B,$00,$3B,$00,$3B,$00,$17,$00              ; |
                db $12,$00,$17,$00,$1D,$00,$0E,$00              ; |
                db $17,$00,$0D,$00,$18,$00,$3B,$00              ; |
                db $0C,$00,$18,$00,$26,$00,$27,$00              ; |
                db $15,$00,$1D,$00,$0D,$00,$26,$00              ; |
                db $3B,$00,$3B,$00,$3B,$00,$3B,$00              ;/

;Error message: cartridge not designed for this type of SNES
CODE_0093C7:    JSR CODE_0083B9         ; $00:93C7: 20 B9 83    ;
                SEP #$20                ; $00:93CA: E2 20       ;8-bit A
                PHD                     ; $00:93CC: 0B          ;Push direct page
                STZ $2121               ; $00:93CD: 9C 21 21    ;CGRAM 'pointer': Palette 00
                REP #$20                ; $00:93D0: C2 20       ;16-bit A
                LDA #$3B3B              ; $00:93D2: A9 3B 3B    ;
                STA $02                 ; $00:93D5: 85 02       ;
                LDA #$0800              ; $00:93D7: A9 00 08    ;
                STA $00                 ; $00:93DA: 85 00       ;
                LDY #$00                ; $00:93DC: A0 00       ;
                JSL CODE_008690         ; $00:93DE: 22 90 86 00 ;
                LDA #$4300              ; $00:93E2: A9 00 43    ;\Direct page: $43xx
                TCD                     ; $00:93E5: 5B          ;/
                LDY #$80                ; $00:93E6: A0 80       ;\increment after writing $2119/reading $213A
                STY $2115               ; $00:93E8: 8C 15 21    ;/
                LDA #$7FFF              ; $00:93EB: A9 FF 7F    ;\4 colors which are white, and 3 blue tints
                STA $0218               ; $00:93EE: 8D 18 02    ; |They are located at palette 00
                LDA #$7FF9              ; $00:93F1: A9 F9 7F    ; |Colors $0C, $0D, $0E, $0F
                STA $021A               ; $00:93F4: 8D 1A 02    ; |
                LDA #$7FD0              ; $00:93F7: A9 D0 7F    ; |
                STA $021C               ; $00:93FA: 8D 1C 02    ; |
                LDA #$6AE9              ; $00:93FD: A9 E9 6A    ;/
                STA $021E               ; $00:9400: 8D 1E 02    ;
                LDA #$2200              ; $00:9403: A9 00 22    ;\Base register: $2122
                STA $00                 ; $00:9406: 85 00       ;/Writing mode: 1 regs write once
                LDA #$0200              ; $00:9408: A9 00 02    ;\DMA source: $00:0200
                STA $02                 ; $00:940B: 85 02       ; |
                LDX #$00                ; $00:940D: A2 00       ; |
                STX $04                 ; $00:940F: 86 04       ;/
                STA $05                 ; $00:9411: 85 05       ;DMA Size: 0x200/512 bytes.
                LDY #$01                ; $00:9413: A0 01       ;\
                STY $420B               ; $00:9415: 8C 0B 42    ;/Enable DMA channel 1
                LDA #$1801              ; $00:9418: A9 01 18    ;\Base register: $2118
                STA $00                 ; $00:941B: 85 00       ;/Writing mode: 2 regs write once
                LDA #$0000              ; $00:941D: A9 00 00    ;\VRAM Address: $0000
                STA $2116               ; $00:9420: 8D 16 21    ;/
                LDA.w #DATA_199800      ; $00:9423: A9 00 98    ;\
                STA $02                 ; $00:9426: 85 02       ; |DMA Source: $19:9800.
                LDX.b #DATA_199800>>16  ; $00:9428: A2 19       ; |(SMB2 font GFX is located there)
                STX $04                 ; $00:942A: 86 04       ;/
                LDA #$0800              ; $00:942C: A9 00 08    ;\DMA Size:
                STA $05                 ; $00:942F: 85 05       ;/0x800 bytes/2kB
                STY $420B               ; $00:9431: 8C 0B 42    ;Enable DMA channel
                PHB                     ; $00:9434: 8B          ;\
                LDX #$00                ; $00:9435: A2 00       ; |Set program bank: $00
                PHX                     ; $00:9437: DA          ; |
                PLB                     ; $00:9438: AB          ;/
                LDX #$00                ; $00:9439: A2 00       ;Load loop stuff.
CODE_00943B:    LDA.w DATA_009307,x     ; $00:943B: BD 07 93    ;\
                STA $09CA,x             ; $00:943E: 9D CA 09    ; |
                LDA.w DATA_009337,x     ; $00:9441: BD 37 93    ; |
                STA $0A4A,x             ; $00:9444: 9D 4A 0A    ; |Store all the text to RAM
                LDA.w DATA_009367,x     ; $00:9447: BD 67 93    ; |
                STA $0ACA,x             ; $00:944A: 9D CA 0A    ; |
                LDA.w DATA_009397,x     ; $00:944D: BD 97 93    ; |
                STA $0C4A,x             ; $00:9450: 9D 4A 0C    ;/
                INX                     ; $00:9453: E8          ;\
                INX                     ; $00:9454: E8          ; |If not done yet (uploading 48 * 4 tiles)
                CPX #$30                ; $00:9455: E0 30       ; |
                BNE CODE_00943B         ; $00:9457: D0 E2       ;/ Loop

CODE_009459:    PLB                     ; $00:9459: AB          ;Recover program bank.
                LDA #$1000              ; $00:945A: A9 00 10    ;\VRAM address: $1000
                STA $2116               ; $00:945D: 8D 16 21    ;/
                LDA #$0800              ; $00:9460: A9 00 08    ;\
                STA $02                 ; $00:9463: 85 02       ; |DMA Source: $00:0800
                LDX #$00                ; $00:9465: A2 00       ; |
                STX $04                 ; $00:9467: 86 04       ;/
                STA $05                 ; $00:9469: 85 05       ;DMA Size: 0x800 bytes/2kB
                STY $420B               ; $00:946B: 8C 0B 42    ;Activate DMA channel 1
                SEP #$20                ; $00:946E: E2 20       ;8-bit A
                PLD                     ; $00:9470: 2B          ;Recover direct page.
                LDA #$10                ; $00:9471: A9 10       ;\BG1 tilemap address: $4000
                STA $2107               ; $00:9473: 8D 07 21    ;/
                STZ $210B               ; $00:9476: 9C 0B 21    ;BG1 char address: $0000
                LDA #$01                ; $00:9479: A9 01       ;\Enable BG1 on main screen
                STA $212C               ; $00:947B: 8D 2C 21    ; |nothing on subscreen
                STZ $212D               ; $00:947E: 9C 2D 21    ;/
                LDA #$01                ; $00:9481: A9 01       ;\Mode 1, 8x8 tiles
                STA $2105               ; $00:9483: 8D 05 21    ;/
                STZ $2130               ; $00:9486: 9C 30 21    ;No color math?
                STZ $2131               ; $00:9489: 9C 31 21    ;No CGADSUB
                STZ $210D               ; $00:948C: 9C 0D 21    ;\
                STZ $210D               ; $00:948F: 9C 0D 21    ; |
                STZ $210E               ; $00:9492: 9C 0E 21    ; |NO BG1/2/3 Horizontal and vertical scroll
                STZ $210E               ; $00:9495: 9C 0E 21    ; |
                STZ $210F               ; $00:9498: 9C 0F 21    ; |
                STZ $210F               ; $00:949B: 9C 0F 21    ; |
                STZ $2110               ; $00:949E: 9C 10 21    ; |
                STZ $2110               ; $00:94A1: 9C 10 21    ; |
                STZ $2111               ; $00:94A4: 9C 11 21    ; |
                STZ $2111               ; $00:94A7: 9C 11 21    ; |
                STZ $2112               ; $00:94AA: 9C 12 21    ; |
                STZ $2112               ; $00:94AD: 9C 12 21    ;/
                LDA #$0F                ; $00:94B0: A9 0F       ;\Maximum brightness
                STA $2100               ; $00:94B2: 8D 00 21    ;/
CODE_0094B5:    BIT $4212               ; $00:94B5: 2C 12 42    ;\Wait for VBlank
                BPL CODE_0094B5         ; $00:94B8: 10 FB       ;/
                INC $FD                 ; $00:94BA: E6 FD       ;\From now on everything from here will execute
                LDA $FD                 ; $00:94BC: A5 FD       ; |on a vblank. Increase frame counter
                CMP #$18                ; $00:94BE: C9 18       ; |If it isn't $18 yet
                BNE CODE_009501         ; $00:94C0: D0 3F       ;/ branch 
                STZ $FD                 ; $00:94C2: 64 FD       ;Store zero to the something
                STZ $2121               ; $00:94C4: 9C 21 21    ;CGRAM Palette destination: 00
                REP #$20                ; $00:94C7: C2 20       ;16-bit A
                LDA #$4300              ; $00:94C9: A9 00 43    ;\Direct page:
                TCD                     ; $00:94CC: 5B          ;/$43xx
                LDY #$80                ; $00:94CD: A0 80       ;\increment after writing $2119/reading $213A
                STY $2115               ; $00:94CF: 8C 15 21    ;/
                LDA $021A               ; $00:94D2: AD 1A 02    ;\Load 2nd color.
                PHA                     ; $00:94D5: 48          ; |Push it into A
                LDA $021C               ; $00:94D6: AD 1C 02    ; |Load 3rd color
                STA $021A               ; $00:94D9: 8D 1A 02    ; |Overwrite 2nd color
                LDA $021E               ; $00:94DC: AD 1E 02    ; |load last color
                STA $021C               ; $00:94DF: 8D 1C 02    ; |overwrite 3rd color
                PLA                     ; $00:94E2: 68          ; |Pull 2nd color from A
                STA $021E               ; $00:94E3: 8D 1E 02    ;/Store into last color
                LDA #$2200              ; $00:94E6: A9 00 22    ;\Base register: $2122. 1 reg write once
                STA $00                 ; $00:94E9: 85 00       ; |
                LDA #$0200              ; $00:94EB: A9 00 02    ; |
                STA $02                 ; $00:94EE: 85 02       ; |Source address: $00:0200
                LDX #$00                ; $00:94F0: A2 00       ; |
                STX $04                 ; $00:94F2: 86 04       ;/
                STA $05                 ; $00:94F4: 85 05       ;DMA Size: 512 bytes.
                LDY #$01                ; $00:94F6: A0 01       ;\Enable DMA channel 1
                STY $420B               ; $00:94F8: 8C 0B 42    ;/
                LDA #$0000              ; $00:94FB: A9 00 00    ;\
                TCD                     ; $00:94FE: 5B          ; |Recover direct page. 8-bit A
                SEP #$20                ; $00:94FF: E2 20       ;/
CODE_009501:    BIT $4212               ; $00:9501: 2C 12 42    ;\If you have Vblank, don't continue
                BMI CODE_009501         ; $00:9504: 30 FB       ;/if out of Vblank then continue with...
                JMP CODE_0094B5         ; $00:9506: 4C B5 94    ;...Loop forever..... evil coding

;Tables which make the following text:
;"WARNING: IT IS A SERIOUS CRIME TO COPY VIDEO GAMES.
;18 USC 2319 PLEASE REFER TO YOUR NINTENDO GAME
;INSTRUCTION BOOKLET FOR FURTHER INFORMATION."

DATA_009509:    db $20,$00,$0A,$00,$1B,$00,$17,$00              ;
                db $12,$00,$17,$00,$10,$00,$3A,$00              ;
                db $3B,$00,$12,$00,$1D,$00,$3B,$00              ;
                db $12,$00,$1C,$00,$3B,$00,$0A,$00              ;
                db $3B,$00,$1C,$00,$0E,$00,$1B,$00              ;
                db $12,$00,$18,$00,$1E,$00,$1C,$00              ;
                db $3B,$00,$3B,$00                              ;

DATA_00953D:    db $0C,$00,$1B,$00,$12,$00,$16,$00              ;
                db $0E,$00,$3B,$00,$1D,$00,$18,$00              ;
                db $3B,$00,$0C,$00,$18,$00,$19,$00              ;
                db $22,$00,$3B,$00,$1F,$00,$12,$00              ;
                db $0D,$00,$0E,$00,$18,$00,$3B,$00              ;
                db $10,$00,$0A,$00,$16,$00,$0E,$00              ;
                db $1C,$00,$26,$00                              ;

DATA_009571:    db $01,$00,$08,$00,$3B,$00,$1E,$00              ;
                db $1C,$00,$0C,$00,$3B,$00,$02,$00              ;
                db $03,$00,$01,$00,$09,$00,$3B,$00              ;
                db $19,$00,$15,$00,$0E,$00,$0A,$00              ;
                db $1C,$00,$0E,$00,$3B,$00,$1B,$00              ;
                db $0E,$00,$0F,$00,$0E,$00,$1B,$00              ;
                db $3B,$00,$3B,$00                              ;

DATA_0095A5:    db $1D,$00,$18,$00,$3B,$00,$22,$00              ;
                db $18,$00,$1E,$00,$1B,$00,$3B,$00              ;
                db $17,$00,$12,$00,$17,$00,$1D,$00              ;
                db $0E,$00,$17,$00,$0D,$00,$18,$00              ;
                db $3B,$00,$10,$00,$0A,$00,$16,$00              ;
                db $0E,$00,$3B,$00,$3B,$00,$3B,$00              ;
                db $3B,$00,$3B,$00                              ;

DATA_0095D9:    db $12,$00,$17,$00,$1C,$00,$1D,$00              ;
                db $1B,$00,$1E,$00,$0C,$00,$1D,$00              ;
                db $12,$00,$18,$00,$17,$00,$3B,$00              ;
                db $0B,$00,$18,$00,$18,$00,$14,$00              ;
                db $15,$00,$0E,$00,$1D,$00,$3B,$00              ;
                db $0F,$00,$18,$00,$1B,$00,$3B,$00              ;
                db $3B,$00,$3B,$00                              ;

DATA_00960D:    db $0F,$00,$1E,$00,$1B,$00,$1D,$00              ;
                db $11,$00,$0E,$00,$1B,$00,$3B,$00              ;
                db $12,$00,$17,$00,$0F,$00,$18,$00              ;
                db $1B,$00,$16,$00,$0A,$00,$1D,$00              ;
                db $12,$00,$18,$00,$17,$00,$26,$00              ;
                db $3B,$00,$3B,$00,$3B,$00,$3B,$00              ;
                db $3B,$00,$3B,$00                              ;

CODE_009641:    SEI                     ; $00:9641: 78          ;Set interrupt flag
                STZ $4200               ; $00:9642: 9C 00 42    ;No interrupts
                STZ $420C               ; $00:9645: 9C 0C 42    ;No HDMA
                STZ $420B               ; $00:9648: 9C 0B 42    ;No DMA
                LDA #$80                ; $00:964B: A9 80       ;\Forced blank
                STA $2100               ; $00:964D: 8D 00 21    ;/
                STZ $2140               ; $00:9650: 9C 40 21    ;\
                STZ $2141               ; $00:9653: 9C 41 21    ; |No SFX
                STZ $2143               ; $00:9656: 9C 43 21    ;/
                LDA #$F0                ; $00:9659: A9 F0       ;\
                STA $2142               ; $00:965B: 8D 42 21    ;/Fade out the music
                JSR CODE_0083B9         ; $00:965E: 20 B9 83    ;
                SEP #$20                ; $00:9661: E2 20       ;16-bit A
                PHD                     ; $00:9663: 0B          ;Push direct page
                STZ $2121               ; $00:9664: 9C 21 21    ;Palette number: $00
                REP #$20                ; $00:9667: C2 20       ;16-bit A
                LDA #$3B3B              ; $00:9669: A9 3B 3B    ;
                STA $02                 ; $00:966C: 85 02       ;
                LDA #$0800              ; $00:966E: A9 00 08    ;
                STA $00                 ; $00:9671: 85 00       ;
                LDY #$00                ; $00:9673: A0 00       ;
                JSL CODE_008690         ; $00:9675: 22 90 86 00 ;
                LDA #$4300              ; $00:9679: A9 00 43    ;\Direct page: $43xx
                TCD                     ; $00:967C: 5B          ;/
                LDY #$80                ; $00:967D: A0 80       ;\increment after writing $2119/reading $213A
                STY $2115               ; $00:967F: 8C 15 21    ;/
                LDA #$7FFF              ; $00:9682: A9 FF 7F    ;\
                STA $0218               ; $00:9685: 8D 18 02    ; |
                LDA #$7FF9              ; $00:9688: A9 F9 7F    ; |4 colors which are white, and 3 blue tints
                STA $021A               ; $00:968B: 8D 1A 02    ; |They are located at palette 00
                LDA #$7FD0              ; $00:968E: A9 D0 7F    ; |Colors $0C, $0D, $0E, $0F
                STA $021C               ; $00:9691: 8D 1C 02    ; |
                LDA #$6AE9              ; $00:9694: A9 E9 6A    ; |
                STA $021E               ; $00:9697: 8D 1E 02    ;/
                LDA #$2200              ; $00:969A: A9 00 22    ;\1 reg write once. base reg = $2122
                STA $00                 ; $00:969D: 85 00       ;/CGRAM write reg
                LDA #$0200              ; $00:969F: A9 00 02    ;\
                STA $02                 ; $00:96A2: 85 02       ; |DMA Source: $00:0200
                LDX #$00                ; $00:96A4: A2 00       ; |
                STX $04                 ; $00:96A6: 86 04       ;/
                STA $05                 ; $00:96A8: 85 05       ;DMA size: 0x200/512 bytes.
                LDY #$01                ; $00:96AA: A0 01       ;\Enable DMA channel 1
                STY $420B               ; $00:96AC: 8C 0B 42    ;/
                LDA #$1801              ; $00:96AF: A9 01 18    ;\Base reg: $2118: VRAM Write
                STA $00                 ; $00:96B2: 85 00       ;/2 regs write once
                LDA #$0000              ; $00:96B4: A9 00 00    ;\VRAM Address: $0000
                STA $2116               ; $00:96B7: 8D 16 21    ;/
                LDA.w #DATA_199800      ; $00:96BA: A9 00 98    ;\
                STA $02                 ; $00:96BD: 85 02       ; |DMA Source: $19:9800
                LDX.b #DATA_199800>>16  ; $00:96BF: A2 19       ; |SMB2 font GFX
                STX $04                 ; $00:96C1: 86 04       ;/
                LDA #$0800              ; $00:96C3: A9 00 08    ;\DMA Size: 0x800 bytes/2kB
                STA $05                 ; $00:96C6: 85 05       ;/
                STY $420B               ; $00:96C8: 8C 0B 42    ;Enable DMA channel 1
                PHB                     ; $00:96CB: 8B          ;\
                LDX #$00                ; $00:96CC: A2 00       ; |Set program bank
                PHX                     ; $00:96CE: DA          ; |
                PLB                     ; $00:96CF: AB          ;/
                LDX #$00                ; $00:96D0: A2 00       ;\
CODE_0096D2:    LDA DATA_009509,x       ; $00:96D2: BD 09 95    ; |
                STA $09C6,x             ; $00:96D5: 9D C6 09    ; |
                LDA DATA_00953D,x       ; $00:96D8: BD 3D 95    ; |
                STA $0A46,x             ; $00:96DB: 9D 46 0A    ; |
                LDA DATA_009571,x       ; $00:96DE: BD 71 95    ; |Upload the 'pirated' message to RAM
                STA $0B46,x             ; $00:96E1: 9D 46 0B    ; |
                LDA DATA_0095A5,x       ; $00:96E4: BD A5 95    ; |
                STA $0BC6,x             ; $00:96E7: 9D C6 0B    ; |
                LDA DATA_0095D9,x       ; $00:96EA: BD D9 95    ; |
                STA $0C46,x             ; $00:96ED: 9D 46 0C    ; |
                LDA DATA_00960D,x       ; $00:96F0: BD 0D 96    ; |
                STA $0CC6,x             ; $00:96F3: 9D C6 0C    ;/
                INX                     ; $00:96F6: E8          ;\
                INX                     ; $00:96F7: E8          ; |If not done yet, continue uploading.
                CPX #$34                ; $00:96F8: E0 34       ; |
                BNE CODE_0096D2         ; $00:96FA: D0 D6       ;/
                JMP CODE_009459         ; $00:96FC: 4C 59 94    ;Continue updating palette animation and loop endlessly.

DATA_0096FF:    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;Values in a decrementing fashion
                db $FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE              ;
                db $FD,$FD,$FD,$FD,$FC,$FC,$FC,$FB              ;
                db $FB,$FB,$FA,$FA,$F9,$F9,$F8,$F8              ;
                db $F7,$F7,$F6,$F6,$F5,$F5,$F4,$F3              ;
                db $F3,$F2,$F1,$F1,$F0,$EF,$EE,$EE              ;
                db $ED,$EC,$EB,$EA,$E9,$E9,$E8,$E7              ;
                db $E6,$E5,$E4,$E3,$E2,$E1,$DF,$DE              ;
                db $DD,$DC,$DB,$DA,$D8,$D7,$D6,$D5              ;
                db $D3,$D2,$D0,$CF,$CD,$CC,$CA,$C9              ;
                db $C7,$C6,$C4,$C2,$C1,$BF,$BD,$BB              ;
                db $B9,$B7,$B6,$B4,$B1,$AF,$AD,$AB              ;
                db $A9,$A7,$A4,$A2,$9F,$9D,$9A,$97              ;
                db $95,$92,$8F,$8C,$89,$86,$82,$7F              ;
                db $7B,$78,$74,$70,$6C,$67,$63,$5E              ;
                db $59,$53,$4D,$46,$3F,$37,$2D,$1F              ;
                db $00                                          ;

DATA_009780:    dw $FFFF,$FFFF,$8000,$5555                      ;Values in a decrementing fashion
                dw $4000,$3333,$2AAA,$2492                      ;Used in "peach saved" sequence at the
                dw $2000,$1C71,$1999,$1745                      ;end of SMB1 and SMB:TLL for the windowing HDMA
                dw $1555,$13B1,$1249,$1111                      ;Format...?
                dw $1000,$0F0F,$0E38,$0D79                      ;
                dw $0CCC,$0C30,$0BA2,$0B21                      ;
                dw $0AAA,$0A3D,$09D8,$097B                      ;
                dw $0924,$08D3,$0888,$0842                      ;
                dw $0800,$07C1,$0787,$0750                      ;
                dw $071C,$06EB,$06BC,$0690                      ;
                dw $0666,$063E,$0618,$05F4                      ;
                dw $05D1,$05B0,$0590,$0572                      ;
                dw $0555,$0539,$051E,$0505                      ;
                dw $04EC,$04D4,$04BD,$04A7                      ;
                dw $0492,$047D,$0469,$0456                      ;
                dw $0444,$0432,$0421,$0410                      ;
                dw $0400,$03F0,$03E0,$03D2                      ;
                dw $03C3,$03B5,$03A8,$039B                      ;
                dw $038E,$0381,$0375,$0369                      ;
                dw $035E,$0353,$0348,$033D                      ;
                dw $0333,$0329,$031F,$0315                      ;
                dw $030C,$0303,$02FA,$02F1                      ;
                dw $02E8,$02E0,$02D8,$02D0                      ;
                dw $02C8,$02C0,$02B9,$02B1                      ;
                dw $02AA,$02A3,$029C,$0295                      ;
                dw $028F,$0288,$0282,$027C                      ;
                dw $0276,$0270,$026A,$0264                      ;
                dw $025E,$0259,$0253,$024E                      ;
                dw $0249,$0243,$023E,$0239                      ;
                dw $0234,$0230,$022B,$0226                      ;
                dw $0222,$021D,$0219,$0214                      ;
                dw $0210,$020C,$0208,$0204                      ;
                dw $0200,$01FC,$01F8,$01F4                      ;
                dw $01F0,$01EC,$01E9,$01E5                      ;
                dw $01E1,$01DE,$01DA,$01D7                      ;
                dw $01D4,$01D0,$01CD,$01CA                      ;
                dw $01C7,$01C3,$01C0,$01BD                      ;
                dw $01BA,$01B7,$01B4,$01B2                      ;
                dw $01AF,$01AC,$01A9,$01A6                      ;
                dw $01A4,$01A1,$019E,$019C                      ;
                dw $0199,$0197,$0194,$0192                      ;
                dw $018F,$018D,$018A,$0188                      ;
                dw $0186,$0183,$0181,$017F                      ;
                dw $017D,$017A,$0178,$0176                      ;
                dw $0174,$0172,$0170,$016E                      ;
                dw $016C,$016A,$0168,$0166                      ;
                dw $0164,$0162,$0160,$015E                      ;
                dw $015C,$015A,$0158,$0157                      ;
                dw $0155,$0153,$0151,$0150                      ;
                dw $014E,$014C,$014A,$0149                      ;
                dw $0147,$0146,$0144,$0142                      ;
                dw $0141,$013F,$013E,$013C                      ;
                dw $013B,$0139,$0138,$0136                      ;
                dw $0135,$0133,$0132,$0130                      ;
                dw $012F,$012E,$012C,$012B                      ;
                dw $0129,$0128,$0127,$0125                      ;
                dw $0124,$0123,$0121,$0120                      ;
                dw $011F,$011E,$011C,$011B                      ;
                dw $011A,$0119,$0118,$0116                      ;
                dw $0115,$0114,$0113,$0112                      ;
                dw $0111,$010F,$010E,$010D                      ;
                dw $010C,$010B,$010A,$0109                      ;
                dw $0108,$0107,$0106,$0105                      ;
                dw $0104,$0103,$0102,$0101                      ;
                dw $0100                                        ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF                      ;

PNTR_009B80:    dw CODE_009C3A                                  ; $00 = Set up things for Nintendo Presents Screen
                dw CODE_009C7A                                  ; $01 = Fade into Nintendo Presents Screen
                dw CODE_009C8A                                  ; $02 = Show Nintendo Presents Screen
                dw CODE_009CB6                                  ; $03 = Fade out of presents screen and setup title screen
                dw CODE_009D48                                  ; $04 = Fade into title screen
                dw CODE_009D5E                                  ; $05 = Title screen (lights out and everyone is talking)
                dw CODE_009F01                                  ; $06 = Waste some time
                dw CODE_009F01                                  ; $07 = Waste some time
                dw CODE_009F01                                  ; $08 = Waste some time
                dw CODE_009F01                                  ; $09 = Waste some time
                dw CODE_009EF9                                  ; $0A = Get some SPC data uploaded and play title screen music
                dw CODE_009DC6                                  ; $0B = ??? Unused?
                dw CODE_009E16                                  ; $0C = Title screen
                dw CODE_009EAC                                  ; $0D = Turn black
                dw CODE_009E16                                  ; $0E = Turn back to normal
                dw CODE_009EAC                                  ; $0F = Black
                dw CODE_009E16                                  ; $10 = Normal
                dw CODE_009EAC                                  ; $11 = Black
                dw CODE_009E16                                  ; $12 = Normal
                dw CODE_009EAC                                  ; $13 = Black
                dw CODE_009F01                                  ; $14 = Waste some time
                dw CODE_009F01                                  ; $15 = Waste some time
                dw CODE_009F01                                  ; $16 = Waste some time
                dw CODE_009F01                                  ; $17 = Waste some time
                dw CODE_009F01                                  ; $18 = Waste some time
                dw CODE_009F04                                  ; $19 = Upload SPC data
                dw CODE_009E5C                                  ; $1A = Lights out (again)
                dw CODE_009F14                                  ; $1B = Title screen
                dw CODE_009F6D                                  ; $1C = Title screen (almost time to change)
                dw CODE_009F85                                  ; $1D = Fade out to gameplay example
                dw CODE_009F9C                                  ; $1E = Wait a bit and play "fade out" SFX
                dw CODE_009FF1                                  ; $1F = Triangle fade out routine

CODE_009BC0:    LDA $E1                 ; $00:9BC0: A5 E1       ;\
                ASL A                   ; $00:9BC2: 0A          ; | Do sub-modes
                TAX                     ; $00:9BC3: AA          ; |
                JSR (PNTR_009B80,x)     ; $00:9BC4: FC 80 9B    ;/
                LDA $E1                 ; $00:9BC7: A5 E1       ;\
                CMP #$04                ; $00:9BC9: C9 04       ; | If we are not on the title screen yet, branch
                BCC CODE_009C39         ; $00:9BCB: 90 6C       ;/
                JSR CODE_00A0E3         ; $00:9BCD: 20 E3 A0    ; Show "Super Mario-All Stars" and Nintendo copyright text
                LDA $E1                 ; $00:9BD0: A5 E1       ;\
                CMP #$05                ; $00:9BD2: C9 05       ; | If we are not actually displaying the title screen yet, branch
                BCC CODE_009C39         ; $00:9BD4: 90 63       ;/
                CMP #$1E                ; $00:9BD6: C9 1E       ;\
                BCS CODE_009C39         ; $00:9BD8: B0 5F       ;/
                LDA $F0                 ; $00:9BDA: A5 F0       ;\
                ORA $F1                 ; $00:9BDC: 05 F1       ; |
                ORA $27                 ; $00:9BDE: 05 27       ; | Get controller input
                AND #$10                ; $00:9BE0: 29 10       ; |
                STA $27                 ; $00:9BE2: 85 27       ;/
                LDA $27                 ; $00:9BE4: A5 27       ;\ If we are not pressing start, branch
                BEQ CODE_009C39         ; $00:9BE6: F0 51       ;/
                REP #$20                ; $00:9BE8: C2 20       ;\
                LDA #$0200              ; $00:9BEA: A9 00 02    ; |
                STA $00                 ; $00:9BED: 85 00       ; |
                LDA #$CA00              ; $00:9BEF: A9 00 CA    ; |
                LDY #$02                ; $00:9BF2: A0 02       ; | Upload palette
                STA $02                 ; $00:9BF4: 85 02       ; |
                STY $04                 ; $00:9BF6: 84 04       ; |
                LDA #$9200              ; $00:9BF8: A9 00 92    ; |
                LDY #$7F                ; $00:9BFB: A0 7F       ; |
                JSL CODE_00866D         ; $00:9BFD: 22 6D 86 00 ;/
                LDA #$0000              ; $00:9C01: A9 00 00    ;\ Set color 0 to black
                STA $7F9200             ; $00:9C04: 8F 00 92 7F ;/
                SEP #$20                ; $00:9C08: E2 20       ;\
                LDA #$25                ; $00:9C0A: A9 25       ; |
                STA $011D               ; $00:9C0C: 8D 1D 01    ; | Set back drop color
                LDA #$4D                ; $00:9C0F: A9 4D       ; |
                STA $011E               ; $00:9C11: 8D 1E 01    ; |
                LDA #$95                ; $00:9C14: A9 95       ; |
                STA $011F               ; $00:9C16: 8D 1F 01    ;/
                INC $0AC0               ; $00:9C19: EE C0 0A    ; Update CGRAM
                JSR CODE_00B683         ; $00:9C1C: 20 83 B6    ; Move BG1 tilemap to RAM
                LDA #$50                ; $00:9C1F: A9 50       ;\
                STA $E3                 ; $00:9C21: 85 E3       ; | Set timer
                STZ $E4                 ; $00:9C23: 64 E4       ;/
                LDA #$0C                ; $00:9C25: A9 0C       ;\
                STA $22                 ; $00:9C27: 85 22       ; | Set timer
                STZ $23                 ; $00:9C29: 64 23       ;/
                LDA #$1E                ; $00:9C2B: A9 1E       ;\
                STA $E1                 ; $00:9C2D: 85 E1       ;/
                LDA #$11                ; $00:9C2F: A9 11       ;\ Mute music
                STA $0060               ; $00:9C31: 8D 60 00    ;/
                LDA #$29                ; $00:9C34: A9 29       ;\ Play sound effect
                STA $0063               ; $00:9C36: 8D 63 00    ;/
CODE_009C39:    RTL                     ; $00:9C39: 6B          ;

CODE_009C3A:    LDA #$00                ; $00:9C3A: A9 00       ;
                STA $701FF2             ; $00:9C3C: 8F F2 1F 70 ;
                STZ $E7                 ; $00:9C40: 64 E7       ;
                REP #$20                ; $00:9C42: C2 20       ;
                LDA #$0200              ; $00:9C44: A9 00 02    ;\ Size
                STA $00                 ; $00:9C47: 85 00       ;/
                LDA.w #DATA_02CA00      ; $00:9C49: A9 00 CA    ;\
                LDY.b #DATA_02CA00>>16  ; $00:9C4C: A0 02       ; | Source: $02:CA00
                STA $02                 ; $00:9C4E: 85 02       ; |
                STY $04                 ; $00:9C50: 84 04       ;/
                LDA #$9200              ; $00:9C52: A9 00 92    ;\ RAM: $7F:9200
                LDY #$7F                ; $00:9C55: A0 7F       ;/
                JSL CODE_00866D         ; $00:9C57: 22 6D 86 00 ; Upload to RAM
                LDA #$0000              ; $00:9C5B: A9 00 00    ;\
                STA $7F9000             ; $00:9C5E: 8F 00 90 7F ; | Make the first two colors black
                STA $7F9200             ; $00:9C62: 8F 00 92 7F ;/
                SEP #$20                ; $00:9C66: E2 20       ;
                INC $0AC0               ; $00:9C68: EE C0 0A    ; Update CGRAM
                LDA #$10                ; $00:9C6B: A9 10       ;\ Sprites on main screen
                STA $0117               ; $00:9C6D: 8D 17 01    ;/
                LDA #$20                ; $00:9C70: A9 20       ;
                STA $011C               ; $00:9C72: 8D 1C 01    ;
                STZ $0100               ; $00:9C75: 9C 00 01    ;
                INC $E1                 ; $00:9C78: E6 E1       ; Next sub-game mode
CODE_009C7A:    JSR CODE_00A02B         ; $00:9C7A: 20 2B A0    ; Draw sprite
                INC $0100               ; $00:9C7D: EE 00 01    ; Increase screen brightness
                LDA $0100               ; $00:9C80: AD 00 01    ;\
                CMP #$0F                ; $00:9C83: C9 0F       ; | Branch if we haven't reached max brightness
                BNE CODE_009C89         ; $00:9C85: D0 02       ;/
                INC $E1                 ; $00:9C87: E6 E1       ; Next sub-game mode
CODE_009C89:    RTS                     ; $00:9C89: 60          ;

CODE_009C8A:    LDA $1C                 ; $00:9C8A: A5 1C       ;\
                CMP #$61                ; $00:9C8C: C9 61       ; |If the presents timer reaches this value, branch
                BNE CODE_009C9D         ; $00:9C8E: D0 0D       ;/
                LDA #$01                ; $00:9C90: A9 01       ;\Blink SFX
                STA $0063               ; $00:9C92: 8D 63 00    ; |
                STA $24                 ; $00:9C95: 85 24       ; |Set blinking timer to #$02
                LDA #$02                ; $00:9C97: A9 02       ; |
                STA $22                 ; $00:9C99: 85 22       ; |
                STZ $23                 ; $00:9C9B: 64 23       ;/
CODE_009C9D:    JSR CODE_00A02B         ; $00:9C9D: 20 2B A0    ; Keep the sprite drawn
                LDA $24                 ; $00:9CA0: A5 24       ;\ If it is not time to blink, branch
                BEQ CODE_009CA7         ; $00:9CA2: F0 03       ;/
                JSR CODE_00A0A6         ; $00:9CA4: 20 A6 A0    ;
CODE_009CA7:    DEC $1C                 ; $00:9CA7: C6 1C       ;\ Decrease presents timer
                BNE CODE_009C89         ; $00:9CA9: D0 DE       ;/ If it is not zero, return
                INC $E1                 ; $00:9CAB: E6 E1       ; Next sub-game mode
                LDA #$F0                ; $00:9CAD: A9 F0       ;
                STA $1D                 ; $00:9CAF: 85 1D       ;
                STZ $21                 ; $00:9CB1: 64 21       ;
                BRA CODE_009CB6         ; $00:9CB3: 80 01       ;

CODE_009CB5:    RTS                     ; $00:9CB5: 60          ;

CODE_009CB6:    STZ $22                 ; $00:9CB6: 64 22       ;
                LDA #$01                ; $00:9CB8: A9 01       ;
                STA $24                 ; $00:9CBA: 85 24       ;
                JSR CODE_00A02B         ; $00:9CBC: 20 2B A0    ; Keep the sprite drawn
                DEC $0100               ; $00:9CBF: CE 00 01    ;\ Decrease screen brightness
                BNE CODE_009CB5         ; $00:9CC2: D0 F1       ;/ If it is not zero, branch
                LDA #$80                ; $00:9CC4: A9 80       ;\
                STA $2100               ; $00:9CC6: 8D 00 21    ; | Force blank
                STA $0100               ; $00:9CC9: 8D 00 01    ;/
                JSR CODE_00B683         ; $00:9CCC: 20 83 B6    ; Upload BG1 tilemap and set some timers
                REP #$20                ; $00:9CCF: C2 20       ;
                LDA #$0200              ; $00:9CD1: A9 00 02    ;\
                STA $00                 ; $00:9CD4: 85 00       ; |
                LDA #$C800              ; $00:9CD6: A9 00 C8    ; |
                LDY #$02                ; $00:9CD9: A0 02       ; |
                STA $02                 ; $00:9CDB: 85 02       ; | Upload title screen palette
                STY $04                 ; $00:9CDD: 84 04       ; |
                LDA #$9200              ; $00:9CDF: A9 00 92    ; |
                LDY #$7F                ; $00:9CE2: A0 7F       ; |
                JSL CODE_00866D         ; $00:9CE4: 22 6D 86 00 ;/
                LDA #$0000              ; $00:9CE8: A9 00 00    ;\ Set the first color to black
                STA $7F9200             ; $00:9CEB: 8F 00 92 7F ;/
                LDY #$80                ; $00:9CEF: A0 80       ;\
                STY $2115               ; $00:9CF1: 8C 15 21    ; |
                LDA #$6000              ; $00:9CF4: A9 00 60    ; |
                STA $2116               ; $00:9CF7: 8D 16 21    ; | Upload sprite GFX
                LDA #$1801              ; $00:9CFA: A9 01 18    ; |
                STA $4300               ; $00:9CFD: 8D 00 43    ; |
                LDA.w #DATA_02A000      ; $00:9D00: A9 00 A0    ; | Source: $02A000
                STA $4302               ; $00:9D03: 8D 02 43    ; | Size:   $2000
                LDY.b #DATA_02A000>>16  ; $00:9D06: A0 02       ; |
                STY $4304               ; $00:9D08: 8C 04 43    ; |
                LDA #$2000              ; $00:9D0B: A9 00 20    ; |
                STA $4305               ; $00:9D0E: 8D 05 43    ; |
                LDY #$01                ; $00:9D11: A0 01       ; |
                STY $420B               ; $00:9D13: 8C 0B 42    ;/
                SEP #$20                ; $00:9D16: E2 20       ;
                LDA #$02                ; $00:9D18: A9 02       ;\ BG2 on main screen
                STA $0117               ; $00:9D1A: 8D 17 01    ;/
                LDA #$11                ; $00:9D1D: A9 11       ;\ BG1 and sprites on sub-screen
                STA $0118               ; $00:9D1F: 8D 18 01    ;/
                LDA #$02                ; $00:9D22: A9 02       ;\
                STA $011B               ; $00:9D24: 8D 1B 01    ; | Enable sub-screen
                LDA #$20                ; $00:9D27: A9 20       ; |
                STA $011C               ; $00:9D29: 8D 1C 01    ;/
                LDA #$21                ; $00:9D2C: A9 21       ;\
                STA $011D               ; $00:9D2E: 8D 1D 01    ; | Set backdrop color
                LDA #$49                ; $00:9D31: A9 49       ; |
                STA $011E               ; $00:9D33: 8D 1E 01    ; |
                LDA #$91                ; $00:9D36: A9 91       ; |
                STA $011F               ; $00:9D38: 8D 1F 01    ;/
                LDA #$3E                ; $00:9D3B: A9 3E       ;\ Play chatting noise
                STA $0060               ; $00:9D3D: 8D 60 00    ;/
                INC $0AC0               ; $00:9D40: EE C0 0A    ; Update CGRAM
                STZ $0100               ; $00:9D43: 9C 00 01    ; Screen brightness = 0
                INC $E1                 ; $00:9D46: E6 E1       ; Next subgame mode
CODE_009D48:    INC $0100               ; $00:9D48: EE 00 01    ; Fade into title screen
                LDA $0100               ; $00:9D4B: AD 00 01    ;\
                CMP #$0F                ; $00:9D4E: C9 0F       ; | If we have not reached max screen brightness branch
                BNE CODE_009D5D         ; $00:9D50: D0 0B       ;/
                REP #$20                ; $00:9D52: C2 20       ;
                LDA #$011A              ; $00:9D54: A9 1A 01    ;\ Set timer (amount of time until we change the palette/"turn the lights on")
                STA $E3                 ; $00:9D57: 85 E3       ;/
                SEP #$20                ; $00:9D59: E2 20       ;
                INC $E1                 ; $00:9D5B: E6 E1       ; Next sub-game mode
CODE_009D5D:    RTS                     ; $00:9D5D: 60          ;

CODE_009D5E:    REP #$20                ; $00:9D5E: C2 20       ;
                LDA $E3                 ; $00:9D60: A5 E3       ;\
                CMP #$0020              ; $00:9D62: C9 20 00    ; | If the timer is < $0020 branch
                BCC CODE_009D6C         ; $00:9D65: 90 05       ;/
                SEP #$20                ; $00:9D67: E2 20       ;
                JSR CODE_00B63F         ; $00:9D69: 20 3F B6    ; Make everyone talk
CODE_009D6C:    REP #$20                ; $00:9D6C: C2 20       ;
                DEC $E3                 ; $00:9D6E: C6 E3       ;\ If it is not time to "turn the lights on", return
                BNE CODE_009DC3         ; $00:9D70: D0 51       ;/
                SEP #$20                ; $00:9D72: E2 20       ;
                JSR CODE_00B683         ; $00:9D74: 20 83 B6    ; Upload BG1 tilemap
                REP #$20                ; $00:9D77: C2 20       ;\
                LDA #$0200              ; $00:9D79: A9 00 02    ; |
                STA $00                 ; $00:9D7C: 85 00       ; |
                LDA #$CA00              ; $00:9D7E: A9 00 CA    ; | Put palette in RAM
                LDY #$02                ; $00:9D81: A0 02       ; |
                STA $02                 ; $00:9D83: 85 02       ; |
                STY $04                 ; $00:9D85: 84 04       ; |
                LDA #$9200              ; $00:9D87: A9 00 92    ; |
                LDY #$7F                ; $00:9D8A: A0 7F       ; |
                JSL CODE_00866D         ; $00:9D8C: 22 6D 86 00 ;/
                LDA #$0000              ; $00:9D90: A9 00 00    ;\ color 0 black
                STA $7F9200             ; $00:9D93: 8F 00 92 7F ;/
                SEP #$20                ; $00:9D97: E2 20       ;
                LDA #$25                ; $00:9D99: A9 25       ;\
                STA $011D               ; $00:9D9B: 8D 1D 01    ; |
                LDA #$4D                ; $00:9D9E: A9 4D       ; | Set backdrop color
                STA $011E               ; $00:9DA0: 8D 1E 01    ; |
                LDA #$95                ; $00:9DA3: A9 95       ; |
                STA $011F               ; $00:9DA5: 8D 1F 01    ;/
                INC $0AC0               ; $00:9DA8: EE C0 0A    ; Upload palette buffer to CGRAM
                REP #$20                ; $00:9DAB: C2 20       ;
                LDA #$0445              ; $00:9DAD: A9 45 04    ;\ Set amount of time left on title screen
                STA $E3                 ; $00:9DB0: 85 E3       ;/
                LSR A                   ; $00:9DB2: 4A          ;
                CLC                     ; $00:9DB3: 18          ;
                ADC #$0010              ; $00:9DB4: 69 10 00    ;
                STA $0225               ; $00:9DB7: 8D 25 02    ;
                SEP #$20                ; $00:9DBA: E2 20       ;
                INC $E1                 ; $00:9DBC: E6 E1       ; Next sub-game mode
                LDA #$11                ; $00:9DBE: A9 11       ;\ Mute sound on this channel
                STA $0060               ; $00:9DC0: 8D 60 00    ;/
CODE_009DC3:    SEP #$20                ; $00:9DC3: E2 20       ;
                RTS                     ; $00:9DC5: 60          ;

CODE_009DC6:    JSR CODE_00BD8D         ; $00:9DC6: 20 8D BD    ;
                REP #$20                ; $00:9DC9: C2 20       ;
                DEC $E3                 ; $00:9DCB: C6 E3       ;
                BNE CODE_009DC3         ; $00:9DCD: D0 F4       ;
                SEP #$20                ; $00:9DCF: E2 20       ;
                JSR CODE_00B683         ; $00:9DD1: 20 83 B6    ;
                REP #$20                ; $00:9DD4: C2 20       ;
                LDA #$0200              ; $00:9DD6: A9 00 02    ;
                STA $00                 ; $00:9DD9: 85 00       ;
                LDA #$C800              ; $00:9DDB: A9 00 C8    ;
                LDY #$02                ; $00:9DDE: A0 02       ;
                STA $02                 ; $00:9DE0: 85 02       ;
                STY $04                 ; $00:9DE2: 84 04       ;
                LDA #$9200              ; $00:9DE4: A9 00 92    ;
                LDY #$7F                ; $00:9DE7: A0 7F       ;
                JSL CODE_00866D         ; $00:9DE9: 22 6D 86 00 ;
                LDA #$0000              ; $00:9DED: A9 00 00    ;
                STA $7F9200             ; $00:9DF0: 8F 00 92 7F ;
                SEP #$20                ; $00:9DF4: E2 20       ;
                LDA #$21                ; $00:9DF6: A9 21       ;
                STA $011D               ; $00:9DF8: 8D 1D 01    ;
                LDA #$49                ; $00:9DFB: A9 49       ;
                STA $011E               ; $00:9DFD: 8D 1E 01    ;
                LDA #$91                ; $00:9E00: A9 91       ;
                STA $011F               ; $00:9E02: 8D 1F 01    ;
                INC $0AC0               ; $00:9E05: EE C0 0A    ;
                REP #$20                ; $00:9E08: C2 20       ;
                LDA #$0002              ; $00:9E0A: A9 02 00    ;
                STA $E3                 ; $00:9E0D: 85 E3       ;
                SEP #$20                ; $00:9E0F: E2 20       ;
                INC $E1                 ; $00:9E11: E6 E1       ;
                SEP #$20                ; $00:9E13: E2 20       ;
                RTS                     ; $00:9E15: 60          ;

CODE_009E16:    JSR CODE_00BD8D         ; $00:9E16: 20 8D BD    ; Handle flashing "Super Mario All-Stars" text
                REP #$20                ; $00:9E19: C2 20       ;
                DEC $E3                 ; $00:9E1B: C6 E3       ;\ If there is still time left on the title screen, branch
                BNE CODE_009E59         ; $00:9E1D: D0 3A       ;/
                LDA #$0200              ; $00:9E1F: A9 00 02    ;\
                STA $00                 ; $00:9E22: 85 00       ; |
                LDA #$CA00              ; $00:9E24: A9 00 CA    ; |
                LDY #$02                ; $00:9E27: A0 02       ; | Change palette
                STA $02                 ; $00:9E29: 85 02       ; |
                STY $04                 ; $00:9E2B: 84 04       ; |
                LDA #$9200              ; $00:9E2D: A9 00 92    ; |
                LDY #$7F                ; $00:9E30: A0 7F       ; |
                JSL CODE_00866D         ; $00:9E32: 22 6D 86 00 ;/
                LDA #$0000              ; $00:9E36: A9 00 00    ;\ Make the first color black
                STA $7F9200             ; $00:9E39: 8F 00 92 7F ;/
                LDA #$0004              ; $00:9E3D: A9 04 00    ;\ Set timer
                STA $E3                 ; $00:9E40: 85 E3       ;/
                LDA #$0025              ; $00:9E42: A9 25 00    ;\
                STA $011D               ; $00:9E45: 8D 1D 01    ; |
                LDA #$004D              ; $00:9E48: A9 4D 00    ; | Set backdrop color
                STA $011E               ; $00:9E4B: 8D 1E 01    ; |
                LDA #$0095              ; $00:9E4E: A9 95 00    ; |
                STA $011F               ; $00:9E51: 8D 1F 01    ;/
                INC $0AC0               ; $00:9E54: EE C0 0A    ; Update CGRAM
                INC $E1                 ; $00:9E57: E6 E1       ; Next sub-game mode
CODE_009E59:    SEP #$20                ; $00:9E59: E2 20       ;
                RTS                     ; $00:9E5B: 60          ;

CODE_009E5C:    JSR CODE_00B63F         ; $00:9E5C: 20 3F B6    ; Move everyone
                REP #$20                ; $00:9E5F: C2 20       ;
                DEC $E3                 ; $00:9E61: C6 E3       ;\ Decrease timer
                BNE CODE_009EA9         ; $00:9E63: D0 44       ;/
                LDA #$0060              ; $00:9E65: A9 60 00    ;\
                STA $22                 ; $00:9E68: 85 22       ; | Set timer
                STZ $23                 ; $00:9E6A: 64 23       ;/
                STZ $0204               ; $00:9E6C: 9C 04 02    ;
                LDA #$0200              ; $00:9E6F: A9 00 02    ;\
                STA $00                 ; $00:9E72: 85 00       ; |
                LDA #$CA00              ; $00:9E74: A9 00 CA    ; |
                LDY #$02                ; $00:9E77: A0 02       ; |
                STA $02                 ; $00:9E79: 85 02       ; |
                STY $04                 ; $00:9E7B: 84 04       ; | Set palette
                LDA #$9200              ; $00:9E7D: A9 00 92    ; |
                LDY #$7F                ; $00:9E80: A0 7F       ; |
                JSL CODE_00866D         ; $00:9E82: 22 6D 86 00 ; |
                LDA #$0000              ; $00:9E86: A9 00 00    ; |
                STA $7F9200             ; $00:9E89: 8F 00 92 7F ;/
                LDA #$003E              ; $00:9E8D: A9 3E 00    ;\ Set timer
                STA $E3                 ; $00:9E90: 85 E3       ;/
                LDA #$0025              ; $00:9E92: A9 25 00    ;\
                STA $011D               ; $00:9E95: 8D 1D 01    ; |   
                LDA #$004D              ; $00:9E98: A9 4D 00    ; | Set backdrop color
                STA $011E               ; $00:9E9B: 8D 1E 01    ; |
                LDA #$0095              ; $00:9E9E: A9 95 00    ; |
                STA $011F               ; $00:9EA1: 8D 1F 01    ;/
                INC $0AC0               ; $00:9EA4: EE C0 0A    ; Update CGRAM
                INC $E1                 ; $00:9EA7: E6 E1       ; Next sub-game mode
CODE_009EA9:    SEP #$20                ; $00:9EA9: E2 20       ;
                RTS                     ; $00:9EAB: 60          ;

CODE_009EAC:    REP #$20                ; $00:9EAC: C2 20       ;
                DEC $E3                 ; $00:9EAE: C6 E3       ;\ Decrease timer
                BNE CODE_009EF6         ; $00:9EB0: D0 44       ;/
                LDA #$0200              ; $00:9EB2: A9 00 02    ;\
                STA $00                 ; $00:9EB5: 85 00       ; |
                LDA #$C800              ; $00:9EB7: A9 00 C8    ; |
                LDY #$02                ; $00:9EBA: A0 02       ; | Upload palette
                STA $02                 ; $00:9EBC: 85 02       ; |
                STY $04                 ; $00:9EBE: 84 04       ; |
                LDA #$9200              ; $00:9EC0: A9 00 92    ; |
                LDY #$7F                ; $00:9EC3: A0 7F       ; |
                JSL CODE_00866D         ; $00:9EC5: 22 6D 86 00 ;/
                LDA #$0000              ; $00:9EC9: A9 00 00    ;\ Make the first color black
                STA $7F9200             ; $00:9ECC: 8F 00 92 7F ;/
                LDA #$0002              ; $00:9ED0: A9 02 00    ;
                LDX $E1                 ; $00:9ED3: A6 E1       ;\
                CPX #$13                ; $00:9ED5: E0 13       ; | Only mute the music after the last flash
                BNE CODE_009EDE         ; $00:9ED7: D0 05       ;/
                LDX #$11                ; $00:9ED9: A2 11       ;\ Mute music
                STX $0060               ; $00:9EDB: 8E 60 00    ;/
CODE_009EDE:    STA $E3                 ; $00:9EDE: 85 E3       ; Set timer
                SEP #$20                ; $00:9EE0: E2 20       ;
                INC $0AC0               ; $00:9EE2: EE C0 0A    ; Update CGRAM
                INC $E1                 ; $00:9EE5: E6 E1       ; Next sub-game mode
                LDA #$21                ; $00:9EE7: A9 21       ;\
                STA $011D               ; $00:9EE9: 8D 1D 01    ; |
                LDA #$49                ; $00:9EEC: A9 49       ; | Set backdrop color
                STA $011E               ; $00:9EEE: 8D 1E 01    ; |
                LDA #$91                ; $00:9EF1: A9 91       ; |
                STA $011F               ; $00:9EF3: 8D 1F 01    ;/
CODE_009EF6:    SEP #$20                ; $00:9EF6: E2 20       ;
                RTS                     ; $00:9EF8: 60          ;

CODE_009EF9:    JSR CODE_008A8E         ; $00:9EF9: 20 8E 8A    ; Go upload some SPC data
                LDA #$01                ; $00:9EFC: A9 01       ;\ Play title screen music
                STA $0062               ; $00:9EFE: 8D 62 00    ;/
CODE_009F01:    INC $E1                 ; $00:9F01: E6 E1       ; Next sub-game mode
                RTS                     ; $00:9F03: 60          ;

CODE_009F04:    JSR CODE_00B63F         ; $00:9F04: 20 3F B6    ; Move everyone
                JSR CODE_008AE7         ; $00:9F07: 20 E7 8A    ; Upload SPC data
                REP #$20                ; $00:9F0A: C2 20       ;
                LDA #$00FA              ; $00:9F0C: A9 FA 00    ;\ Set timer
                STA $E3                 ; $00:9F0F: 85 E3       ;/
                SEP #$20                ; $00:9F11: E2 20       ;
                RTS                     ; $00:9F13: 60          ;

CODE_009F14:    JSR CODE_00BD8D         ; $00:9F14: 20 8D BD    ; Make "All-Stars" text flash
                JSR CODE_00B63F         ; $00:9F17: 20 3F B6    ; Move everyone
                REP #$20                ; $00:9F1A: C2 20       ;
                DEC $E3                 ; $00:9F1C: C6 E3       ;\ Decrease timer
                BNE CODE_009F6A         ; $00:9F1E: D0 4A       ;/
                LDA #$0200              ; $00:9F20: A9 00 02    ;\
                STA $00                 ; $00:9F23: 85 00       ; |
                LDA #$CA00              ; $00:9F25: A9 00 CA    ; |
                LDY #$02                ; $00:9F28: A0 02       ; | Set palette
                STA $02                 ; $00:9F2A: 85 02       ; |
                STY $04                 ; $00:9F2C: 84 04       ; |
                LDA #$9200              ; $00:9F2E: A9 00 92    ; |
                LDY #$7F                ; $00:9F31: A0 7F       ; |
                JSL CODE_00866D         ; $00:9F33: 22 6D 86 00 ; |
                LDA #$0000              ; $00:9F37: A9 00 00    ; |
                STA $7F9200             ; $00:9F3A: 8F 00 92 7F ;/
                LDA #$0025              ; $00:9F3E: A9 25 00    ;\
                STA $011D               ; $00:9F41: 8D 1D 01    ; |
                LDA #$004D              ; $00:9F44: A9 4D 00    ; | Set backdrop color
                STA $011E               ; $00:9F47: 8D 1E 01    ; |
                LDA #$0095              ; $00:9F4A: A9 95 00    ; |
                STA $011F               ; $00:9F4D: 8D 1F 01    ;/
                LDA #$0390              ; $00:9F50: A9 90 03    ;
                STA $E3                 ; $00:9F53: 85 E3       ;
                LSR A                   ; $00:9F55: 4A          ;
                CLC                     ; $00:9F56: 18          ;
                ADC #$0020              ; $00:9F57: 69 20 00    ;
                STA $0225               ; $00:9F5A: 8D 25 02    ;
                SEP #$20                ; $00:9F5D: E2 20       ;
                INC $0AC0               ; $00:9F5F: EE C0 0A    ; Update CGRAM
                LDA #$80                ; $00:9F62: A9 80       ;
                STA $0211               ; $00:9F64: 8D 11 02    ;
                JSR CODE_008A8E         ; $00:9F67: 20 8E 8A    ; Go upload some SPC data
CODE_009F6A:    SEP #$20                ; $00:9F6A: E2 20       ;
                RTS                     ; $00:9F6C: 60          ;

CODE_009F6D:    JSR CODE_00BD8D         ; $00:9F6D: 20 8D BD    ; Make "All-Stars" text flash
                JSR CODE_00B62B         ; $00:9F70: 20 2B B6    ; Move everyone
                REP #$20                ; $00:9F73: C2 20       ;
                DEC $E3                 ; $00:9F75: C6 E3       ;\ Decrease timer
                BNE CODE_009F82         ; $00:9F77: D0 09       ;/
                SEP #$20                ; $00:9F79: E2 20       ;
                INC $E1                 ; $00:9F7B: E6 E1       ; next sub-game mode
                LDA #$80                ; $00:9F7D: A9 80       ;\
                STA $0062               ; $00:9F7F: 8D 62 00    ;/
CODE_009F82:    SEP #$20                ; $00:9F82: E2 20       ;
                RTS                     ; $00:9F84: 60          ;

CODE_009F85:    DEC $0100               ; $00:9F85: CE 00 01    ;\ Decrease screen brightness until black
                BNE CODE_009F82         ; $00:9F88: D0 F8       ;/
                LDA #$00                ; $00:9F8A: A9 00       ;\
                STA $2100               ; $00:9F8C: 8D 00 21    ; | screen brightness = 0
                STA $0100               ; $00:9F8F: 8D 00 01    ;/
                JSR CODE_008ABC         ; $00:9F92: 20 BC 8A    ; Upload SPC data
                STZ $E1                 ; $00:9F95: 64 E1       ; sub-game mode 0
                LDA #$09                ; $00:9F97: A9 09       ;\ Do gameplay example
                STA $E0                 ; $00:9F99: 85 E0       ;/
                RTS                     ; $00:9F9B: 60          ;

CODE_009F9C:    JSR CODE_00BD8D         ; $00:9F9C: 20 8D BD    ; Make "All-Stars" text flash
                DEC $E3                 ; $00:9F9F: C6 E3       ;\ Decrease timer
                BNE CODE_009FAA         ; $00:9FA1: D0 07       ;/
                LDA #$40                ; $00:9FA3: A9 40       ;\ Play "fade out" SFX
                STA $0063               ; $00:9FA5: 8D 63 00    ;/
                INC $E1                 ; $00:9FA8: E6 E1       ; Next sub-game mode
CODE_009FAA:    RTS                     ; $00:9FAA: 60          ;

DATA_009FAB:    dw $9000,$9020,$9040,$9060                      ;Triangle fading graphic offsets. bank is hardcoded at #$02
                dw $9080,$90A0,$90C0,$90E0                      ;
                dw $9100,$9120,$9140,$9160                      ;
                dw $9180,$91A0,$91C0,$91E0                      ;
                dw $9200,$9220,$9240,$9260                      ;
                dw $9280,$92A0,$92C0,$92E0                      ;
                dw $9300,$9320,$9340,$9360                      ;
                dw $9380,$93A0,$93C0,$93E0                      ;
                dw $9400,$9400,$9400                            ;

CODE_009FF1:    LDA $FD                 ; $00:9FF1: A5 FD       ;\
                LSR A                   ; $00:9FF3: 4A          ; | Return all odd frames
                BCS CODE_00A014         ; $00:9FF4: B0 1E       ;/
                REP #$20                ; $00:9FF6: C2 20       ;
                LDX $E3                 ; $00:9FF8: A6 E3       ; Get which step we are on
                LDA.l DATA_009FAB,x     ; $00:9FFA: BF AB 9F 00 ;\ Set source data location to upload to BG2's tilemap in $E5
                STA $E5                 ; $00:9FFE: 85 E5       ;/
                INX                     ; $00:A000: E8          ;\ Step we are on+2
                INX                     ; $00:A001: E8          ;/
                STX $E3                 ; $00:A002: 86 E3       ; Remeber it
                CPX #$46                ; $00:A004: E0 46       ;\ If this isn't the last step branch
                BNE CODE_00A014         ; $00:A006: D0 0C       ;/
                INC $E0                 ; $00:A008: E6 E0       ; Next game mode
                STZ $E1                 ; $00:A00A: 64 E1       ;\ Clear sub-game mode and timer
                STZ $E3                 ; $00:A00C: 64 E3       ;/
                LDA #$0080              ; $00:A00E: A9 80 00    ;\ Force blank
                STA $0100               ; $00:A011: 8D 00 01    ;/
CODE_00A014:    SEP #$20                ; $00:A014: E2 20       ;
                RTS                     ; $00:A016: 60          ;

DATA_00A017:    db $00,$02,$04,$06,$20,$22,$24,$26              ;Nintendo presents logo tilemap.
                db $08,$0A,$0C,$0E,$28,$2A,$2C,$2E              ;
                db $40,$42,$44,$46                              ;

CODE_00A02B:    LDY #$00                ; $00:A02B: A0 00       ;\
                TYX                     ; $00:A02D: BB          ;/Clear registers X and Y
                LDA #$50                ; $00:A02E: A9 50       ;\#$50 to logo Y
                STA $00                 ; $00:A030: 85 00       ;/
CODE_00A032:    LDA #$60                ; $00:A032: A9 60       ;\#$60 to logo X
                STA $01                 ; $00:A034: 85 01       ;/
CODE_00A036:    LDA $01                 ; $00:A036: A5 01       ;\
                STA $0800,y             ; $00:A038: 99 00 08    ; |
                LDA $00                 ; $00:A03B: A5 00       ; |Write logo to OAM
                STA $0801,y             ; $00:A03D: 99 01 08    ; |
                LDA DATA_00A017,x       ; $00:A040: BD 17 A0    ; |
                STA $0802,y             ; $00:A043: 99 02 08    ; |
                INX                     ; $00:A046: E8          ; |
                LDA #$2E                ; $00:A047: A9 2E       ; |
                STA $0803,y             ; $00:A049: 99 03 08    ; |
                PHY                     ; $00:A04C: 5A          ; |
                TYA                     ; $00:A04D: 98          ; |
                LSR A                   ; $00:A04E: 4A          ; |
                LSR A                   ; $00:A04F: 4A          ; |
                TAY                     ; $00:A050: A8          ; |
                LDA #$02                ; $00:A051: A9 02       ; |Write logo tiles size to OAM. $00 = 8x8, $02 = 16x16
                STA $0A20,y             ; $00:A053: 99 20 0A    ; |
                PLY                     ; $00:A056: 7A          ; |
                INY                     ; $00:A057: C8          ; |
                INY                     ; $00:A058: C8          ; |
                INY                     ; $00:A059: C8          ; |
                INY                     ; $00:A05A: C8          ; |
                LDA $01                 ; $00:A05B: A5 01       ; |
                CLC                     ; $00:A05D: 18          ; |
                ADC #$10                ; $00:A05E: 69 10       ; |
                STA $01                 ; $00:A060: 85 01       ; |If not done yet, continue looping
                CMP #$A0                ; $00:A062: C9 A0       ; |
                BCC CODE_00A036         ; $00:A064: 90 D0       ; |
                LDA $00                 ; $00:A066: A5 00       ; |
                CLC                     ; $00:A068: 18          ; |
                ADC #$10                ; $00:A069: 69 10       ; |
                STA $00                 ; $00:A06B: 85 00       ; |
                CMP #$A0                ; $00:A06D: C9 A0       ; |
                BCC CODE_00A032         ; $00:A06F: 90 C1       ;/
                RTS                     ; $00:A071: 60          ;

DATA_00A072:    db $02,$02,$02,$02                              ;How long the 4 blinks of the presents logo lasts

DATA_00A076:    dw $7FFF,$2BBC,$43FF,$171C                      ;RGB values for the blink. Kinda hard to figure it out...
                dw $7FFF,$2BBC,$171C,$2BBC                      ;
                dw $7FFF,$0A59,$171C,$2BBC                      ;

DATA_00A08E:    dw $53FF,$171C,$0A59,$53FF                      ;same as above
                dw $171C,$0A59,$53FF,$7FFF                      ;
                dw $2BBC,$53FF,$171C,$0A59                      ;

CODE_00A0A6:    LDA $23                 ; $00:A0A6: A5 23       ;\
                ASL A                   ; $00:A0A8: 0A          ; |
                STA $00                 ; $00:A0A9: 85 00       ; |Multiply $23 with 06 and move it to Y
                ASL A                   ; $00:A0AB: 0A          ; |
                CLC                     ; $00:A0AC: 18          ; |
                ADC $00                 ; $00:A0AD: 65 00       ; |
                TAY                     ; $00:A0AF: A8          ;/
                LDX #$00                ; $00:A0B0: A2 00       ;\
CODE_00A0B2:    LDA DATA_00A076,y       ; $00:A0B2: B9 76 A0    ; |
                STA $7F93EC,x           ; $00:A0B5: 9F EC 93 7F ; |
                LDA DATA_00A08E,y       ; $00:A0B9: B9 8E A0    ; |
                STA $7F93FA,x           ; $00:A0BC: 9F FA 93 7F ; |Do some logo-blinking stuff
                INY                     ; $00:A0C0: C8          ; |
                INX                     ; $00:A0C1: E8          ; |
                CPX #$06                ; $00:A0C2: E0 06       ; |
                BCC CODE_00A0B2         ; $00:A0C4: 90 EC       ;/
                INC $0AC0               ; $00:A0C6: EE C0 0A    ;
                DEC $22                 ; $00:A0C9: C6 22       ;\Decrease blinking timer.
                BNE CODE_00A0E2         ; $00:A0CB: D0 15       ;/
                INC $23                 ; $00:A0CD: E6 23       ;\
                LDX $23                 ; $00:A0CF: A6 23       ; |If not done yet with the blinking
                CPX #$04                ; $00:A0D1: E0 04       ; |Load the next blink's duration
                BCC CODE_00A0DD         ; $00:A0D3: 90 08       ;/
                STZ $23                 ; $00:A0D5: 64 23       ;\
                STZ $22                 ; $00:A0D7: 64 22       ; |Otherwise, we're done!
                STZ $24                 ; $00:A0D9: 64 24       ; |
                BRA CODE_00A0E2         ; $00:A0DB: 80 05       ;/

CODE_00A0DD:    LDA DATA_00A072,x       ; $00:A0DD: BD 72 A0    ;\ Load blinking duration, indexed by blink count
                STA $22                 ; $00:A0E0: 85 22       ; |
CODE_00A0E2:    RTS                     ; $00:A0E2: 60          ;/

CODE_00A0E3:    LDA #$48                ; $00:A0E3: A9 48       ;
                STA $00                 ; $00:A0E5: 85 00       ;
                LDY #$00                ; $00:A0E7: A0 00       ;
                TYX                     ; $00:A0E9: BB          ;
CODE_00A0EA:    LDA $00                 ; $00:A0EA: A5 00       ;
                STA $0980,y             ; $00:A0EC: 99 80 09    ;
                LDA #$C8                ; $00:A0EF: A9 C8       ;
                STA $0981,y             ; $00:A0F1: 99 81 09    ;
                TYA                     ; $00:A0F4: 98          ;
                LSR A                   ; $00:A0F5: 4A          ;
                ORA #$C0                ; $00:A0F6: 09 C0       ;
                STA $0982,y             ; $00:A0F8: 99 82 09    ;
                LDA #$22                ; $00:A0FB: A9 22       ;
                STA $0983,y             ; $00:A0FD: 99 83 09    ;
                LDA #$02                ; $00:A100: A9 02       ;
                STA $0A80,x             ; $00:A102: 9D 80 0A    ;
                INY                     ; $00:A105: C8          ;
                INY                     ; $00:A106: C8          ;
                INY                     ; $00:A107: C8          ;
                INY                     ; $00:A108: C8          ;
                LDA $00                 ; $00:A109: A5 00       ;
                CLC                     ; $00:A10B: 18          ;
                ADC #$10                ; $00:A10C: 69 10       ;
                STA $00                 ; $00:A10E: 85 00       ;
                INX                     ; $00:A110: E8          ;
                CPX #$07                ; $00:A111: E0 07       ;
                BNE CODE_00A0EA         ; $00:A113: D0 D5       ;
                PHB                     ; $00:A115: 8B          ;
                PHK                     ; $00:A116: 4B          ;
                PLB                     ; $00:A117: AB          ;
                STZ $00                 ; $00:A118: 64 00       ;
                STZ $01                 ; $00:A11A: 64 01       ;
                STZ $02                 ; $00:A11C: 64 02       ;
                STZ $03                 ; $00:A11E: 64 03       ;
                REP #$10                ; $00:A120: C2 10       ;
                LDY #$0000              ; $00:A122: A0 00 00    ;
CODE_00A125:    LDX $02                 ; $00:A125: A6 02       ;
                LDA DATA_00A1A7,x       ; $00:A127: BD A7 A1    ;
                CMP #$FF                ; $00:A12A: C9 FF       ;
                BEQ CODE_00A161         ; $00:A12C: F0 33       ;
                SEC                     ; $00:A12E: 38          ;
                SBC #$08                ; $00:A12F: E9 08       ;
                STA $0800,y             ; $00:A131: 99 00 08    ;
                LDA DATA_00A1A7+1,x     ; $00:A134: BD A8 A1    ;
                STA $0801,y             ; $00:A137: 99 01 08    ;
                LDA DATA_00A1A7+2,x     ; $00:A13A: BD A9 A1    ;
                STA $0802,y             ; $00:A13D: 99 02 08    ;
                LDA DATA_00A1A7+3,x     ; $00:A140: BD AA A1    ;
                STA $0803,y             ; $00:A143: 99 03 08    ;
                LDX $00                 ; $00:A146: A6 00       ;
                LDA #$02                ; $00:A148: A9 02       ;
                STA $0A20,x             ; $00:A14A: 9D 20 0A    ;
                INY                     ; $00:A14D: C8          ;
                INY                     ; $00:A14E: C8          ;
                INY                     ; $00:A14F: C8          ;
                INY                     ; $00:A150: C8          ;
                REP #$20                ; $00:A151: C2 20       ;
                INC $00                 ; $00:A153: E6 00       ;
                INC $02                 ; $00:A155: E6 02       ;
                INC $02                 ; $00:A157: E6 02       ;
                INC $02                 ; $00:A159: E6 02       ;
                INC $02                 ; $00:A15B: E6 02       ;
                SEP #$20                ; $00:A15D: E2 20       ;
                BRA CODE_00A125         ; $00:A15F: 80 C4       ;

CODE_00A161:    STZ $0002               ; $00:A161: 9C 02 00    ;
                STZ $0003               ; $00:A164: 9C 03 00    ;
CODE_00A167:    INY                     ; $00:A167: C8          ;
                INY                     ; $00:A168: C8          ;
                INY                     ; $00:A169: C8          ;
                INY                     ; $00:A16A: C8          ;
                INC $00                 ; $00:A16B: E6 00       ;
                LDX $02                 ; $00:A16D: A6 02       ;
                LDA DATA_00A248,x       ; $00:A16F: BD 48 A2    ;
                CMP #$FF                ; $00:A172: C9 FF       ;
                BEQ CODE_00A1A3         ; $00:A174: F0 2D       ;
                SEC                     ; $00:A176: 38          ;
                SBC #$08                ; $00:A177: E9 08       ;
                STA $0800,y             ; $00:A179: 99 00 08    ;
                LDA DATA_00A248+1,x     ; $00:A17C: BD 49 A2    ;
                STA $0801,y             ; $00:A17F: 99 01 08    ;
                LDA DATA_00A248+2,x     ; $00:A182: BD 4A A2    ;
                STA $0802,y             ; $00:A185: 99 02 08    ;
                LDA DATA_00A248+3,x     ; $00:A188: BD 4B A2    ;
                STA $0803,y             ; $00:A18B: 99 03 08    ;
                LDX $00                 ; $00:A18E: A6 00       ;
                LDA #$00                ; $00:A190: A9 00       ;
                STA $0A20,x             ; $00:A192: 9D 20 0A    ;
                REP #$20                ; $00:A195: C2 20       ;
                INC $02                 ; $00:A197: E6 02       ;
                INC $02                 ; $00:A199: E6 02       ;
                INC $02                 ; $00:A19B: E6 02       ;
                INC $02                 ; $00:A19D: E6 02       ;
                SEP #$20                ; $00:A19F: E2 20       ;
                BRA CODE_00A167         ; $00:A1A1: 80 C4       ;

CODE_00A1A3:    SEP #$10                ; $00:A1A3: E2 10       ;
                PLB                     ; $00:A1A5: AB          ;
                RTS                     ; $00:A1A6: 60          ;

DATA_00A1A7:    db $38,$20,$00,$02,$48,$20,$02,$02              ;Super Mario All-Stars logo OAM tilemap
                db $58,$20,$04,$02,$68,$20,$06,$02              ;on the "hall screen".
                db $78,$20,$08,$02,$38,$38,$44,$00              ;Format is as following: XX YY TT PP
                db $48,$30,$22,$00,$58,$30,$24,$00              ;XX = Xpos, YY = YPos,
                db $68,$30,$26,$00,$78,$30,$28,$00              ;TT = Tile Number, (PP = Properties).
                db $38,$48,$68,$00,$48,$40,$46,$00              ; YXPPCCCT -------------->^
                db $58,$40,$48,$00,$68,$40,$4A,$02              ;Basically this is all OAM. yep.
                db $78,$40,$4C,$00,$28,$58,$80,$00              ;
                db $38,$58,$82,$00,$48,$50,$6A,$00              ;These tiles are 16x16
                db $58,$50,$6C,$00,$68,$50,$6E,$00              ;
                db $98,$10,$8A,$02,$A8,$10,$8C,$02              ;
                db $B8,$10,$8E,$02,$88,$20,$0A,$02              ;
                db $98,$20,$0C,$02,$A8,$20,$0E,$02              ;
                db $B8,$20,$20,$02,$88,$30,$2A,$00              ;
                db $98,$30,$2C,$00,$A8,$30,$2E,$00              ;
                db $B8,$30,$40,$00,$C8,$30,$42,$00              ;
                db $88,$40,$4E,$00,$98,$40,$60,$00              ;
                db $A8,$40,$62,$00,$B8,$40,$64,$00              ;
                db $C8,$40,$66,$00,$B8,$50,$84,$00              ;
                db $C8,$50,$86,$00,$D8,$50,$88,$02              ;
                db $FF                                          ;

DATA_00A248:    db $38,$18,$A0,$02,$40,$18,$A1,$02              ;Same purpose as above table!
                db $48,$18,$A2,$02,$50,$18,$A3,$02              ;But these tiles are 8x8
                db $58,$18,$A4,$02,$60,$18,$A5,$02              ;
                db $68,$18,$A6,$02,$70,$18,$A7,$02              ;
                db $78,$18,$A8,$02,$80,$18,$A9,$02              ;
                db $38,$30,$AF,$02,$40,$30,$B0,$02              ;
                db $30,$38,$B1,$00,$30,$40,$B2,$00              ;
                db $30,$48,$B3,$00,$30,$50,$B4,$00              ;
                db $78,$50,$B6,$00,$80,$50,$B7,$00              ;
                db $48,$60,$BE,$00,$88,$18,$AA,$02              ;
                db $90,$18,$AB,$02,$C8,$18,$AC,$02              ;
                db $C8,$20,$AD,$02,$C8,$28,$AE,$02              ;
                db $D8,$48,$B5,$00,$88,$50,$B8,$00              ;
                db $90,$50,$B9,$00,$98,$50,$BA,$00              ;
                db $A0,$50,$BB,$00,$A8,$50,$BC,$00              ;
                db $B0,$50,$BD,$00,$FF                          ;

CODE_00A2C5:    DEC $0100               ; $00:A2C5: CE 00 01    ;
                BNE CODE_00A2D5         ; $00:A2C8: D0 0B       ;
                INC $E0                 ; $00:A2CA: E6 E0       ;
                STZ $E1                 ; $00:A2CC: 64 E1       ;
                STZ $E3                 ; $00:A2CE: 64 E3       ;
                LDA #$80                ; $00:A2D0: A9 80       ;
                STA $0100               ; $00:A2D2: 8D 00 01    ;
CODE_00A2D5:    SEP #$20                ; $00:A2D5: E2 20       ;
                RTL                     ; $00:A2D7: 6B          ;

CODE_00A2D8:    LDA $70000E             ; $00:A2D8: AF 0E 00 70 ;\
                STA $D1                 ; $00:A2DC: 85 D1       ;/
                LDA $70000F             ; $00:A2DE: AF 0F 00 70 ;\
                STA $D0                 ; $00:A2E2: 85 D0       ; | Get the last game played
                STA $0218               ; $00:A2E4: 8D 18 02    ;/
                LDX #$01                ; $00:A2E7: A2 01       ;
                JSL CODE_00849C         ; $00:A2E9: 22 9C 84 00 ; Upload GFX and palette
                JSR CODE_008ABC         ; $00:A2ED: 20 BC 8A    ; Upload SPC data
                LDA #$0F                ; $00:A2F0: A9 0F       ;\ Screen brightness
                STA $0100               ; $00:A2F2: 8D 00 01    ;/
                INC $0AC0               ; $00:A2F5: EE C0 0A    ; Update CGRAM
                INC $E0                 ; $00:A2F8: E6 E0       ; Next game mode
                STZ $E1                 ; $00:A2FA: 64 E1       ; Sub-game mode 0
                LDA #$44                ; $00:A2FC: A9 44       ;\ Set timer
                STA $E3                 ; $00:A2FE: 85 E3       ;/
                STZ $FD                 ; $00:A300: 64 FD       ; Reset the frame counter
                JSR CODE_00A30D         ; $00:A302: 20 0D A3    ;
                LDA #$41                ; $00:A305: A9 41       ;\ Play SFX
                STA $0063               ; $00:A307: 8D 63 00    ;/
                JMP CODE_00A39B         ; $00:A30A: 4C 9B A3    ;

CODE_00A30D:    REP #$10                ; $00:A30D: C2 10       ;
                LDY #$0000              ; $00:A30F: A0 00 00    ;
CODE_00A312:    LDA #$00                ; $00:A312: A9 00       ;
                XBA                     ; $00:A314: EB          ;
                PHY                     ; $00:A315: 5A          ;
                TYA                     ; $00:A316: 98          ;
                ASL A                   ; $00:A317: 0A          ;
                TAY                     ; $00:A318: A8          ;
                LDX DATA_00A80C,y       ; $00:A319: BE 0C A8    ;
                PLY                     ; $00:A31C: 7A          ;
                LDA $700010,x           ; $00:A31D: BF 10 00 70 ;
                BMI CODE_00A324         ; $00:A321: 30 01       ;
                INC A                   ; $00:A323: 1A          ;
CODE_00A324:    STA $0080,y             ; $00:A324: 99 80 00    ;
                STA $00B0,y             ; $00:A327: 99 B0 00    ;
                LDA $700011,x           ; $00:A32A: BF 11 00 70 ;
                BMI CODE_00A331         ; $00:A32E: 30 01       ;
                INC A                   ; $00:A330: 1A          ;
CODE_00A331:    STA $00                 ; $00:A331: 85 00       ;
                TYA                     ; $00:A333: 98          ;
                AND #$01                ; $00:A334: 29 01       ;
                BEQ CODE_00A341         ; $00:A336: F0 09       ;
                TYA                     ; $00:A338: 98          ;
                AND #$02                ; $00:A339: 29 02       ;
                BNE CODE_00A341         ; $00:A33B: D0 04       ;
                LDA $00                 ; $00:A33D: A5 00       ;
                BRA CODE_00A343         ; $00:A33F: 80 02       ;

CODE_00A341:    LDA #$FF                ; $00:A341: A9 FF       ;
CODE_00A343:    STA $0090,y             ; $00:A343: 99 90 00    ;
                STA $00C0,y             ; $00:A346: 99 C0 00    ;
                LDA $700014,x           ; $00:A349: BF 14 00 70 ;
                STA $00A0,y             ; $00:A34D: 99 A0 00    ;
                LDA $700015,x           ; $00:A350: BF 15 00 70 ;
                STA $0070,y             ; $00:A354: 99 70 00    ;
                PHX                     ; $00:A357: DA          ;
                TYX                     ; $00:A358: BB          ;
                STA $700490,x           ; $00:A359: 9F 90 04 70 ;
                PLX                     ; $00:A35D: FA          ;
                INY                     ; $00:A35E: C8          ;
                CPY #$0010              ; $00:A35F: C0 10 00    ;
                BCC CODE_00A312         ; $00:A362: 90 AE       ;
                SEP #$10                ; $00:A364: E2 10       ;
                RTS                     ; $00:A366: 60          ;

DATA_00A367:    dw $6127,$612D,$6133,$6139                      ;
                dw $6187,$618D,$6193,$6199                      ;
                dw $61E7,$61ED,$61F3,$61F9                      ;
                dw $6247,$624D,$6253,$6259                      ;

DATA_00A387:    db $1F,$21,$22,$22,$64,$F0,$64,$F1              ;
                db $64,$F4,$64,$F5,$64,$F2,$64,$F3              ;
                db $64,$F6,$64,$F7                              ;

CODE_00A39B:    LDA $E1                 ; $00:A39B: A5 E1       ;\ If we are running the game select screen branch
                BNE CODE_00A3F5         ; $00:A39D: D0 56       ;/
                LDA $FD                 ; $00:A39F: A5 FD       ;
                LSR A                   ; $00:A3A1: 4A          ;
                BCS CODE_00A3F2         ; $00:A3A2: B0 4E       ;
                REP #$20                ; $00:A3A4: C2 20       ;
                LDX $E3                 ; $00:A3A6: A6 E3       ;
                LDA.l DATA_009FAB,x     ; $00:A3A8: BF AB 9F 00 ;
                STA $E5                 ; $00:A3AC: 85 E5       ;
                DEX                     ; $00:A3AE: CA          ;
                DEX                     ; $00:A3AF: CA          ;
                STX $E3                 ; $00:A3B0: 86 E3       ;
                BPL CODE_00A3F2         ; $00:A3B2: 10 3E       ;
                LDA #$0002              ; $00:A3B4: A9 02 00    ;
                STA $0062               ; $00:A3B7: 8D 62 00    ;
                INC $E1                 ; $00:A3BA: E6 E1       ;
                LDX #$01                ; $00:A3BC: A2 01       ;
                STX $0219               ; $00:A3BE: 8E 19 02    ;
                LDA #$0000              ; $00:A3C1: A9 00 00    ;
                STA $0105               ; $00:A3C4: 8D 05 01    ;
                STZ $0107               ; $00:A3C7: 9C 07 01    ;
                LDA #$0032              ; $00:A3CA: A9 32 00    ;
                STA $14                 ; $00:A3CD: 85 14       ;
                STZ $15                 ; $00:A3CF: 64 15       ;
                LDA #$00C0              ; $00:A3D1: A9 C0 00    ;
                STA $16                 ; $00:A3D4: 85 16       ;
                LDA #$0000              ; $00:A3D6: A9 00 00    ;
                STA $19                 ; $00:A3D9: 85 19       ;
                STZ $1A                 ; $00:A3DB: 64 1A       ;
                LDA #$0001              ; $00:A3DD: A9 01 00    ;
                STA $0117               ; $00:A3E0: 8D 17 01    ;
                LDA #$0020              ; $00:A3E3: A9 20 00    ;
                STA $1B                 ; $00:A3E6: 85 1B       ;
                LDA #$0061              ; $00:A3E8: A9 61 00    ;
                STA $1C                 ; $00:A3EB: 85 1C       ;
                LDA #$0040              ; $00:A3ED: A9 40 00    ;
                STA $20                 ; $00:A3F0: 85 20       ;
CODE_00A3F2:    SEP #$20                ; $00:A3F2: E2 20       ;
                RTL                     ; $00:A3F4: 6B          ;

CODE_00A3F5:    LDA $0216               ; $00:A3F5: AD 16 02    ;
                BNE CODE_00A429         ; $00:A3F8: D0 2F       ;
                LDA $0217               ; $00:A3FA: AD 17 02    ;
                BNE CODE_00A455         ; $00:A3FD: D0 56       ;
                LDX $021A               ; $00:A3FF: AE 1A 02    ;
                BNE CODE_00A476         ; $00:A402: D0 72       ;
                LDX $0220               ; $00:A404: AE 20 02    ;
                BNE CODE_00A476         ; $00:A407: D0 6D       ;
                LDA $F4                 ; $00:A409: A5 F4       ;\
                ORA $F5                 ; $00:A40B: 05 F5       ; | If we are not pressing left or right branch
                AND #$03                ; $00:A40D: 29 03       ; |
                BEQ CODE_00A46B         ; $00:A40F: F0 5A       ;/
                AND #$01                ; $00:A411: 29 01       ;\ If we are pressing left, branch
                BEQ CODE_00A441         ; $00:A413: F0 2C       ;/
                LDA $0218               ; $00:A415: AD 18 02    ; Get the current game we are on
                AND #$03                ; $00:A418: 29 03       ;
                TAX                     ; $00:A41A: AA          ;
                LDA DATA_00A387,x       ; $00:A41B: BD 87 A3    ;\ Move the correct amount
                STA $0216               ; $00:A41E: 8D 16 02    ;/
                INC $0218               ; $00:A421: EE 18 02    ; Next game
                LDA #$01                ; $00:A424: A9 01       ;\ Play SFX
                STA $0063               ; $00:A426: 8D 63 00    ;/
CODE_00A429:    DEC $0216               ; $00:A429: CE 16 02    ;\ If zero, branch
                BEQ CODE_00A46B         ; $00:A42C: F0 3D       ;/
                REP #$20                ; $00:A42E: C2 20       ;
                LDA $0214               ; $00:A430: AD 14 02    ;\
                CLC                     ; $00:A433: 18          ; |
                ADC #$0004              ; $00:A434: 69 04 00    ; | Move the games
                AND #$01FF              ; $00:A437: 29 FF 01    ; |
                STA $0214               ; $00:A43A: 8D 14 02    ;/
                SEP #$20                ; $00:A43D: E2 20       ;
                BRA CODE_00A46B         ; $00:A43F: 80 2A       ;

CODE_00A441:    DEC $0218               ; $00:A441: CE 18 02    ; Same thing up there but the other way
                LDA $0218               ; $00:A444: AD 18 02    ;
                AND #$03                ; $00:A447: 29 03       ;
                TAX                     ; $00:A449: AA          ;
                LDA DATA_00A387,x       ; $00:A44A: BD 87 A3    ;
                STA $0217               ; $00:A44D: 8D 17 02    ;
                LDA #$01                ; $00:A450: A9 01       ;
                STA $0063               ; $00:A452: 8D 63 00    ;
CODE_00A455:    DEC $0217               ; $00:A455: CE 17 02    ;
                BEQ CODE_00A46B         ; $00:A458: F0 11       ;
                REP #$20                ; $00:A45A: C2 20       ;
                LDA $0214               ; $00:A45C: AD 14 02    ;
                SEC                     ; $00:A45F: 38          ;
                SBC #$0004              ; $00:A460: E9 04 00    ;
                AND #$01FF              ; $00:A463: 29 FF 01    ;
                STA $0214               ; $00:A466: 8D 14 02    ;
                SEP #$20                ; $00:A469: E2 20       ;
CODE_00A46B:    LDA $0216               ; $00:A46B: AD 16 02    ;\
                ORA $0217               ; $00:A46E: 0D 17 02    ; | If we stopped moving, branch
                BEQ CODE_00A476         ; $00:A471: F0 03       ;/
                JMP CODE_00A771         ; $00:A473: 4C 71 A7    ; Return

CODE_00A476:    STZ $00                 ; $00:A476: 64 00       ;
                LDA $0224               ; $00:A478: AD 24 02    ;\ 
                BEQ CODE_00A48C         ; $00:A47B: F0 0F       ;/
                DEC $0223               ; $00:A47D: CE 23 02    ;
                LDA $0223               ; $00:A480: AD 23 02    ;
                BNE CODE_00A489         ; $00:A483: D0 04       ;
                LDA #$06                ; $00:A485: A9 06       ;
                STA $E0                 ; $00:A487: 85 E0       ;
CODE_00A489:    JMP CODE_00A771         ; $00:A489: 4C 71 A7    ;

CODE_00A48C:    LDA $0220               ; $00:A48C: AD 20 02    ;\ If we did not select a game, branch
                BEQ CODE_00A4A6         ; $00:A48F: F0 15       ;/
                LDA $F4                 ; $00:A491: A5 F4       ;\
                ORA $F5                 ; $00:A493: 05 F5       ; |
                ORA $F6                 ; $00:A495: 05 F6       ; | If we want to select a new game, branch
                ORA $F7                 ; $00:A497: 05 F7       ; |
                AND #$40                ; $00:A499: 29 40       ; |
                STA $00                 ; $00:A49B: 85 00       ; |
                BNE CODE_00A4C0         ; $00:A49D: D0 21       ;/
                LDA $021A               ; $00:A49F: AD 1A 02    ;
                BNE CODE_00A4C0         ; $00:A4A2: D0 1C       ;
                BRA CODE_00A4CD         ; $00:A4A4: 80 27       ;

CODE_00A4A6:    LDA $021A               ; $00:A4A6: AD 1A 02    ;
                BNE CODE_00A4C0         ; $00:A4A9: D0 15       ;
                LDA $F4                 ; $00:A4AB: A5 F4       ;\
                ORA $F5                 ; $00:A4AD: 05 F5       ; |
                AND #$10                ; $00:A4AF: 29 10       ; | If we choosed a game, branch
                STA $00                 ; $00:A4B1: 85 00       ; |
                BNE CODE_00A4B7         ; $00:A4B3: D0 02       ;/
                BRA CODE_00A4CD         ; $00:A4B5: 80 16       ;

CODE_00A4B7:    LDA $00                 ; $00:A4B7: A5 00       ;
                PHA                     ; $00:A4B9: 48          ;
                JSR CODE_00A8AE         ; $00:A4BA: 20 AE A8    ;
                PLA                     ; $00:A4BD: 68          ;
                STA $00                 ; $00:A4BE: 85 00       ;
CODE_00A4C0:    LDA $0218               ; $00:A4C0: AD 18 02    ;
                AND #$03                ; $00:A4C3: 29 03       ;
                ASL A                   ; $00:A4C5: 0A          ;
                TAX                     ; $00:A4C6: AA          ;
                JSR (PNTR_00A8A6,x)     ; $00:A4C7: FC A6 A8    ;
                JMP CODE_00A771         ; $00:A4CA: 4C 71 A7    ;

CODE_00A4CD:    LDA $0220               ; $00:A4CD: AD 20 02    ;
                BNE CODE_00A4D5         ; $00:A4D0: D0 03       ;
                JMP CODE_00A771         ; $00:A4D2: 4C 71 A7    ;

CODE_00A4D5:    LDA $0C                 ; $00:A4D5: A5 0C       ;
                STA $00                 ; $00:A4D7: 85 00       ;
                LDA $0218               ; $00:A4D9: AD 18 02    ;
                AND #$03                ; $00:A4DC: 29 03       ;
                STA $D0                 ; $00:A4DE: 85 D0       ;
                LDA $F4                 ; $00:A4E0: A5 F4       ;
                ORA $F5                 ; $00:A4E2: 05 F5       ;
                AND #$20                ; $00:A4E4: 29 20       ;
                BEQ CODE_00A4FD         ; $00:A4E6: F0 15       ;
                LDA $700006             ; $00:A4E8: AF 06 00 70 ;
                EOR #$01                ; $00:A4EC: 49 01       ;
                STA $700006             ; $00:A4EE: 8F 06 00 70 ;
                LDA #$01                ; $00:A4F2: A9 01       ;
                STA $0063               ; $00:A4F4: 8D 63 00    ;
                JSR CODE_00AFEC         ; $00:A4F7: 20 EC AF    ;
                JMP CODE_00A771         ; $00:A4FA: 4C 71 A7    ;

CODE_00A4FD:    LDA $F4                 ; $00:A4FD: A5 F4       ;
                ORA $F5                 ; $00:A4FF: 05 F5       ;
                AND #$0C                ; $00:A501: 29 0C       ;
                LSR A                   ; $00:A503: 4A          ;
                LSR A                   ; $00:A504: 4A          ;
                TAX                     ; $00:A505: AA          ;
                LDA $D1                 ; $00:A506: A5 D1       ;
                CLC                     ; $00:A508: 18          ;
                ADC DATA_00B5EA,x       ; $00:A509: 7D EA B5    ;
                AND #$03                ; $00:A50C: 29 03       ;
                STA $D1                 ; $00:A50E: 85 D1       ;
                TXY                     ; $00:A510: 9B          ;
                BEQ CODE_00A529         ; $00:A511: F0 16       ;
                LDA $021A               ; $00:A513: AD 1A 02    ;
                BNE CODE_00A527         ; $00:A516: D0 0F       ;
                LDA $0220               ; $00:A518: AD 20 02    ;
                BEQ CODE_00A527         ; $00:A51B: F0 0A       ;
                JSR CODE_00B071         ; $00:A51D: 20 71 B0    ;
                LDA #$23                ; $00:A520: A9 23       ;\SFX to play when you move cursor |> over files ABCD
                STA $63                 ; $00:A522: 85 63       ;/when selecting a savefile after selecting a game.
                JMP CODE_00A771         ; $00:A524: 4C 71 A7    ;

CODE_00A527:    LDA $D1                 ; $00:A527: A5 D1       ;
CODE_00A529:    ASL A                   ; $00:A529: 0A          ;
                ASL A                   ; $00:A52A: 0A          ;
                CLC                     ; $00:A52B: 18          ;
                ADC $D0                 ; $00:A52C: 65 D0       ;
                STA $01                 ; $00:A52E: 85 01       ;
                TAX                     ; $00:A530: AA          ;
                LDA $D2                 ; $00:A531: A5 D2       ;
                BEQ CODE_00A538         ; $00:A533: F0 03       ;
                JMP CODE_00A7D6         ; $00:A535: 4C D6 A7    ;

CODE_00A538:    LDA $B0,x               ; $00:A538: B5 B0       ;
                INC A                   ; $00:A53A: 1A          ;
                BNE CODE_00A564         ; $00:A53B: D0 27       ;
                LDA $F4                 ; $00:A53D: A5 F4       ;
                ORA $F5                 ; $00:A53F: 05 F5       ;
                AND #$10                ; $00:A541: 29 10       ;
                BEQ CODE_00A548         ; $00:A543: F0 03       ;
                JMP CODE_00A742         ; $00:A545: 4C 42 A7    ;

CODE_00A548:    LDA $F4                 ; $00:A548: A5 F4       ;
                ORA $F5                 ; $00:A54A: 05 F5       ;
                AND #$83                ; $00:A54C: 29 83       ;
                STA $00                 ; $00:A54E: 85 00       ;
                LDA $F6                 ; $00:A550: A5 F6       ;
                ORA $F7                 ; $00:A552: 05 F7       ;
                AND #$80                ; $00:A554: 29 80       ;
                ORA $00                 ; $00:A556: 05 00       ;
                AND #$83                ; $00:A558: 29 83       ;
                BEQ CODE_00A561         ; $00:A55A: F0 05       ;
                LDA #$2A                ; $00:A55C: A9 2A       ;
                STA $0063               ; $00:A55E: 8D 63 00    ;
CODE_00A561:    JMP CODE_00A771         ; $00:A561: 4C 71 A7    ;

CODE_00A564:    TXA                     ; $00:A564: 8A          ;
                AND #$03                ; $00:A565: 29 03       ;
                CMP #$01                ; $00:A567: C9 01       ;
                BNE CODE_00A56E         ; $00:A569: D0 03       ;
                JMP CODE_00A658         ; $00:A56B: 4C 58 A6    ;

CODE_00A56E:    LDA $F4                 ; $00:A56E: A5 F4       ;
                ORA $F5                 ; $00:A570: 05 F5       ;
                AND #$83                ; $00:A572: 29 83       ;
                BNE CODE_00A579         ; $00:A574: D0 03       ;
                JMP CODE_00A709         ; $00:A576: 4C 09 A7    ;

CODE_00A579:    AND #$02                ; $00:A579: 29 02       ;
                BEQ CODE_00A580         ; $00:A57B: F0 03       ;
                JMP CODE_00A607         ; $00:A57D: 4C 07 A6    ;

CODE_00A580:    LDA $B0,x               ; $00:A580: B5 B0       ;
                CMP #$02                ; $00:A582: C9 02       ;
                BCS CODE_00A58B         ; $00:A584: B0 05       ;
                LDA #$2A                ; $00:A586: A9 2A       ;
                STA $0063               ; $00:A588: 8D 63 00    ;
CODE_00A58B:    LDA $D0                 ; $00:A58B: A5 D0       ;
                BNE CODE_00A595         ; $00:A58D: D0 06       ;
                LDA $700490,x           ; $00:A58F: BF 90 04 70 ;
                BNE CODE_00A59C         ; $00:A593: D0 07       ;
CODE_00A595:    LDA $0080,x             ; $00:A595: BD 80 00    ;
                CMP #$01                ; $00:A598: C9 01       ;
                BEQ CODE_00A5A1         ; $00:A59A: F0 05       ;
CODE_00A59C:    LDA #$4C                ; $00:A59C: A9 4C       ;
                STA $0063               ; $00:A59E: 8D 63 00    ;
CODE_00A5A1:    INC $00B0,x             ; $00:A5A1: FE B0 00    ;
                LDA $D0                 ; $00:A5A4: A5 D0       ;
                BNE CODE_00A5DF         ; $00:A5A6: D0 37       ;
                LDA $700490,x           ; $00:A5A8: BF 90 04 70 ;
                BEQ CODE_00A5DF         ; $00:A5AC: F0 31       ;
                LDA $70,x               ; $00:A5AE: B5 70       ;
                BNE CODE_00A5C5         ; $00:A5B0: D0 13       ;
                LDA $00B0,x             ; $00:A5B2: BD B0 00    ;
                CMP #$09                ; $00:A5B5: C9 09       ;
                BCC CODE_00A601         ; $00:A5B7: 90 48       ;
                LDA #$01                ; $00:A5B9: A9 01       ;
                STA $70,x               ; $00:A5BB: 95 70       ;
                STA $00B0,x             ; $00:A5BD: 9D B0 00    ;
                STA $00C0,x             ; $00:A5C0: 9D C0 00    ;
                BRA CODE_00A601         ; $00:A5C3: 80 3C       ;

CODE_00A5C5:    LDA $00B0,x             ; $00:A5C5: BD B0 00    ;
                CMP $0080,x             ; $00:A5C8: DD 80 00    ;
                BEQ CODE_00A5D7         ; $00:A5CB: F0 0A       ;
                BCC CODE_00A5D3         ; $00:A5CD: 90 04       ;
                STZ $70,x               ; $00:A5CF: 74 70       ;
                LDA #$01                ; $00:A5D1: A9 01       ;
CODE_00A5D3:    STA $B0,x               ; $00:A5D3: 95 B0       ;
                BRA CODE_00A601         ; $00:A5D5: 80 2A       ;

CODE_00A5D7:    STA $B0,x               ; $00:A5D7: 95 B0       ;
                LDA #$01                ; $00:A5D9: A9 01       ;
                STA $C0,x               ; $00:A5DB: 95 C0       ;
                BRA CODE_00A601         ; $00:A5DD: 80 22       ;

CODE_00A5DF:    LDA $00B0,x             ; $00:A5DF: BD B0 00    ;
                CMP $0080,x             ; $00:A5E2: DD 80 00    ;
                BEQ CODE_00A5EF         ; $00:A5E5: F0 08       ;
                BCC CODE_00A5EB         ; $00:A5E7: 90 02       ;
                LDA #$01                ; $00:A5E9: A9 01       ;
CODE_00A5EB:    STA $B0,x               ; $00:A5EB: 95 B0       ;
                BRA CODE_00A601         ; $00:A5ED: 80 12       ;

CODE_00A5EF:    STA $B0,x               ; $00:A5EF: 95 B0       ;
                LDA #$01                ; $00:A5F1: A9 01       ;
                STA $C0,x               ; $00:A5F3: 95 C0       ;
                LDA $0218               ; $00:A5F5: AD 18 02    ;
                AND #$03                ; $00:A5F8: 29 03       ;
                CMP #$01                ; $00:A5FA: C9 01       ;
                BNE CODE_00A601         ; $00:A5FC: D0 03       ;
                JSR CODE_00B16B         ; $00:A5FE: 20 6B B1    ;
CODE_00A601:    JSR CODE_00B0DA         ; $00:A601: 20 DA B0    ;
                JMP CODE_00A709         ; $00:A604: 4C 09 A7    ;

CODE_00A607:    LDA $B0,x               ; $00:A607: B5 B0       ;
                CMP #$02                ; $00:A609: C9 02       ;
                BCS CODE_00A611         ; $00:A60B: B0 04       ;
                LDA #$2A                ; $00:A60D: A9 2A       ;\SFX to play when you can't decrease world number
                STA $63                 ; $00:A60F: 85 63       ;/in a FILE A/B/C/D select
CODE_00A611:    LDA $D0                 ; $00:A611: A5 D0       ;
                BNE CODE_00A61B         ; $00:A613: D0 06       ;
                LDA $700490,x           ; $00:A615: BF 90 04 70 ;
                BNE CODE_00A624         ; $00:A619: D0 09       ;
CODE_00A61B:    LDA $80,x               ; $00:A61B: B5 80       ;
                CMP #$01                ; $00:A61D: C9 01       ;
                BNE CODE_00A624         ; $00:A61F: D0 03       ;
                JMP CODE_00A709         ; $00:A621: 4C 09 A7    ;

CODE_00A624:    LDA #$4C                ; $00:A624: A9 4C       ;
                STA $63                 ; $00:A626: 85 63       ;
                DEC $B0,x               ; $00:A628: D6 B0       ;
                LDA $D0                 ; $00:A62A: A5 D0       ;
                BNE CODE_00A64A         ; $00:A62C: D0 1C       ;
                LDA $700490,x           ; $00:A62E: BF 90 04 70 ;
                BEQ CODE_00A64A         ; $00:A632: F0 16       ;
                LDA $B0,x               ; $00:A634: B5 B0       ;
                BNE CODE_00A64A         ; $00:A636: D0 12       ;
                LDA $70,x               ; $00:A638: B5 70       ;
                BNE CODE_00A644         ; $00:A63A: D0 08       ;
                LDA $700490,x           ; $00:A63C: BF 90 04 70 ;
                STA $70,x               ; $00:A640: 95 70       ;
                BRA CODE_00A64A         ; $00:A642: 80 06       ;

CODE_00A644:    STZ $70,x               ; $00:A644: 74 70       ;
                LDA #$08                ; $00:A646: A9 08       ;
                STA $B0,x               ; $00:A648: 95 B0       ;
CODE_00A64A:    LDA $B0,x               ; $00:A64A: B5 B0       ;
                BNE CODE_00A652         ; $00:A64C: D0 04       ;
                LDA $80,x               ; $00:A64E: B5 80       ;
                STA $B0,x               ; $00:A650: 95 B0       ;
CODE_00A652:    JSR CODE_00B0DA         ; $00:A652: 20 DA B0    ;
                JMP CODE_00A709         ; $00:A655: 4C 09 A7    ;

CODE_00A658:    LDA $F4                 ; $00:A658: A5 F4       ;
                ORA $F5                 ; $00:A65A: 05 F5       ;
                AND #$83                ; $00:A65C: 29 83       ;
                BNE CODE_00A663         ; $00:A65E: D0 03       ;
                JMP CODE_00A709         ; $00:A660: 4C 09 A7    ;

CODE_00A663:    LDA $80,x               ; $00:A663: B5 80       ;
                CMP #$01                ; $00:A665: C9 01       ;
                BEQ CODE_00A66B         ; $00:A667: F0 02       ;
                BRA CODE_00A676         ; $00:A669: 80 0B       ;

CODE_00A66B:    LDA $0090,x             ; $00:A66B: BD 90 00    ;
                CMP #$01                ; $00:A66E: C9 01       ;
                BNE CODE_00A676         ; $00:A670: D0 04       ;
                LDA #$2A                ; $00:A672: A9 2A       ;
                BRA CODE_00A678         ; $00:A674: 80 02       ;

CODE_00A676:    LDA #$4C                ; $00:A676: A9 4C       ;
CODE_00A678:    STA $0063               ; $00:A678: 8D 63 00    ;
                LDA $F4                 ; $00:A67B: A5 F4       ;
                ORA $F5                 ; $00:A67D: 05 F5       ;
                BMI CODE_00A6BE         ; $00:A67F: 30 3D       ;
                AND #$01                ; $00:A681: 29 01       ;
                BNE CODE_00A6BE         ; $00:A683: D0 39       ;
                LDA $B0,x               ; $00:A685: B5 B0       ;
                CMP $80,x               ; $00:A687: D5 80       ;
                BNE CODE_00A699         ; $00:A689: D0 0E       ;
                DEC $C0,x               ; $00:A68B: D6 C0       ;
                BNE CODE_00A697         ; $00:A68D: D0 08       ;
                DEC $B0,x               ; $00:A68F: D6 B0       ;
                BEQ CODE_00A6A5         ; $00:A691: F0 12       ;
                LDA #$04                ; $00:A693: A9 04       ;
                STA $C0,x               ; $00:A695: 95 C0       ;
CODE_00A697:    BRA CODE_00A6AD         ; $00:A697: 80 14       ;

CODE_00A699:    DEC $C0,x               ; $00:A699: D6 C0       ;
                BNE CODE_00A6AD         ; $00:A69B: D0 10       ;
                LDA #$04                ; $00:A69D: A9 04       ;
                STA $C0,x               ; $00:A69F: 95 C0       ;
                DEC $B0,x               ; $00:A6A1: D6 B0       ;
                BNE CODE_00A6AD         ; $00:A6A3: D0 08       ;
CODE_00A6A5:    LDA $80,x               ; $00:A6A5: B5 80       ;
                STA $B0,x               ; $00:A6A7: 95 B0       ;
                LDA $90,x               ; $00:A6A9: B5 90       ;
                STA $C0,x               ; $00:A6AB: 95 C0       ;
CODE_00A6AD:    LDA $00A0,x             ; $00:A6AD: BD A0 00    ;
                BEQ CODE_00A6BB         ; $00:A6B0: F0 09       ;
                LDA $B0,x               ; $00:A6B2: B5 B0       ;
                CMP #$09                ; $00:A6B4: C9 09       ;
                BNE CODE_00A6BB         ; $00:A6B6: D0 03       ;
                DEC $00B0,x             ; $00:A6B8: DE B0 00    ;
CODE_00A6BB:    JMP CODE_00A703         ; $00:A6BB: 4C 03 A7    ;

CODE_00A6BE:    INC $00C0,x             ; $00:A6BE: FE C0 00    ;
                LDA $B0,x               ; $00:A6C1: B5 B0       ;
                CMP $0080,x             ; $00:A6C3: DD 80 00    ;
                BEQ CODE_00A6DA         ; $00:A6C6: F0 12       ;
                LDA $C0,x               ; $00:A6C8: B5 C0       ;
                CMP #$05                ; $00:A6CA: C9 05       ;
                BCC CODE_00A6F2         ; $00:A6CC: 90 24       ;
                INC $B0,x               ; $00:A6CE: F6 B0       ;
                LDA $B0,x               ; $00:A6D0: B5 B0       ;
                CMP $80,x               ; $00:A6D2: D5 80       ;
                BEQ CODE_00A6F0         ; $00:A6D4: F0 1A       ;
                BCC CODE_00A6F0         ; $00:A6D6: 90 18       ;
                BRA CODE_00A6EC         ; $00:A6D8: 80 12       ;

CODE_00A6DA:    LDA $C0,x               ; $00:A6DA: B5 C0       ;
                CMP $90,x               ; $00:A6DC: D5 90       ;
                BEQ CODE_00A6F2         ; $00:A6DE: F0 12       ;
                BCC CODE_00A6F2         ; $00:A6E0: 90 10       ;
                INC $B0,x               ; $00:A6E2: F6 B0       ;
                LDA $B0,x               ; $00:A6E4: B5 B0       ;
                CMP $80,x               ; $00:A6E6: D5 80       ;
                BEQ CODE_00A6F2         ; $00:A6E8: F0 08       ;
                BCC CODE_00A6F2         ; $00:A6EA: 90 06       ;
CODE_00A6EC:    LDA #$01                ; $00:A6EC: A9 01       ;
                STA $B0,x               ; $00:A6EE: 95 B0       ;
CODE_00A6F0:    LDA #$01                ; $00:A6F0: A9 01       ;
CODE_00A6F2:    STA $00C0,x             ; $00:A6F2: 9D C0 00    ;
                LDA $00A0,x             ; $00:A6F5: BD A0 00    ;
                BEQ CODE_00A703         ; $00:A6F8: F0 09       ;
                LDA $B0,x               ; $00:A6FA: B5 B0       ;
                CMP #$09                ; $00:A6FC: C9 09       ;
                BNE CODE_00A703         ; $00:A6FE: D0 03       ;
                INC $00B0,x             ; $00:A700: FE B0 00    ;
CODE_00A703:    JSR CODE_00B0DA         ; $00:A703: 20 DA B0    ;
                JSR CODE_00B16B         ; $00:A706: 20 6B B1    ;
CODE_00A709:    LDA #$00                ; $00:A709: A9 00       ;
                STA $00                 ; $00:A70B: 85 00       ;
                LDA $0F                 ; $00:A70D: A5 0F       ;
                STA $01                 ; $00:A70F: 85 01       ;
                LDA $D1                 ; $00:A711: A5 D1       ;
                ASL A                   ; $00:A713: 0A          ;
                ASL A                   ; $00:A714: 0A          ;
                ORA $D0                 ; $00:A715: 05 D0       ;
                STA $0C                 ; $00:A717: 85 0C       ;
                TAX                     ; $00:A719: AA          ;
                STZ $0D                 ; $00:A71A: 64 0D       ;
                ASL A                   ; $00:A71C: 0A          ;
                TAY                     ; $00:A71D: A8          ;
                LDA DATA_00A367,y       ; $00:A71E: B9 67 A3    ;
                STA $02                 ; $00:A721: 85 02       ;
                LDA DATA_00A367+1,y     ; $00:A723: B9 68 A3    ;
                STA $03                 ; $00:A726: 85 03       ;
                LDA $B0,x               ; $00:A728: B5 B0       ;
                STA $04                 ; $00:A72A: 85 04       ;
                STZ $05                 ; $00:A72C: 64 05       ;
                LDA $C0,x               ; $00:A72E: B5 C0       ;
                STA $06                 ; $00:A730: 85 06       ;
                STZ $07                 ; $00:A732: 64 07       ;
                STX $29                 ; $00:A734: 86 29       ;
                LDX $29                 ; $00:A736: A6 29       ;
                LDA $F6                 ; $00:A738: A5 F6       ;
                ORA $F7                 ; $00:A73A: 05 F7       ;
                AND #$80                ; $00:A73C: 29 80       ;
                BNE CODE_00A764         ; $00:A73E: D0 24       ;
                LDX $0C                 ; $00:A740: A6 0C       ;
CODE_00A742:    LDA $F4                 ; $00:A742: A5 F4       ;
                ORA $F5                 ; $00:A744: 05 F5       ;
                AND #$10                ; $00:A746: 29 10       ;
                BEQ CODE_00A771         ; $00:A748: F0 27       ;
                LDA #$29                ; $00:A74A: A9 29       ;
                STA $63                 ; $00:A74C: 85 63       ;
                STA $0224               ; $00:A74E: 8D 24 02    ;
                LDA #$10                ; $00:A751: A9 10       ;
                STA $0223               ; $00:A753: 8D 23 02    ;
                LDA #$70                ; $00:A756: A9 70       ;
                STA $0105               ; $00:A758: 8D 05 01    ;
                LDA #$50                ; $00:A75B: A9 50       ;
                STA $0107               ; $00:A75D: 8D 07 01    ;
                STZ $E3                 ; $00:A760: 64 E3       ;
                BRA CODE_00A772         ; $00:A762: 80 0E       ;

CODE_00A764:    STZ $0224               ; $00:A764: 9C 24 02    ;
                LDA #$04                ; $00:A767: A9 04       ;
                STA $D2                 ; $00:A769: 85 D2       ;
                INC $E0                 ; $00:A76B: E6 E0       ;
                LDA #$22                ; $00:A76D: A9 22       ;
                STA $63                 ; $00:A76F: 85 63       ;
CODE_00A771:    RTL                     ; $00:A771: 6B          ;

CODE_00A772:    LDA $D1                 ; $00:A772: A5 D1       ;
                ASL A                   ; $00:A774: 0A          ;
                ASL A                   ; $00:A775: 0A          ;
                ADC $D0                 ; $00:A776: 65 D0       ;
                LDA $B0,x               ; $00:A778: B5 B0       ;
                INC A                   ; $00:A77A: 1A          ;
                BNE CODE_00A798         ; $00:A77B: D0 1B       ;
                LDA #$00                ; $00:A77D: A9 00       ;
                STA $700008             ; $00:A77F: 8F 08 00 70 ;
                STA $700009             ; $00:A783: 8F 09 00 70 ;
                LDA $D2                 ; $00:A787: A5 D2       ;
                CMP #$04                ; $00:A789: C9 04       ;
                BNE CODE_00A7BE         ; $00:A78B: D0 31       ;
                LDA #$2A                ; $00:A78D: A9 2A       ;
                STA $0063               ; $00:A78F: 8D 63 00    ;
                DEC $E0                 ; $00:A792: C6 E0       ;
                STZ $D2                 ; $00:A794: 64 D2       ;
                BRA CODE_00A7BE         ; $00:A796: 80 26       ;

CODE_00A798:    LDA $D2                 ; $00:A798: A5 D2       ;
                CMP #$04                ; $00:A79A: C9 04       ;
                BNE CODE_00A7A8         ; $00:A79C: D0 0A       ;
                LDA #$22                ; $00:A79E: A9 22       ;
                STA $0063               ; $00:A7A0: 8D 63 00    ;
                LDA #$40                ; $00:A7A3: A9 40       ;
                STA $011B               ; $00:A7A5: 8D 1B 01    ;
CODE_00A7A8:    LDA $B0,x               ; $00:A7A8: B5 B0       ;
                DEC A                   ; $00:A7AA: 3A          ;
                BPL CODE_00A7AF         ; $00:A7AB: 10 02       ;
                LDA #$00                ; $00:A7AD: A9 00       ;
CODE_00A7AF:    STA $700008             ; $00:A7AF: 8F 08 00 70 ;
                LDA $C0,x               ; $00:A7B3: B5 C0       ;
                DEC A                   ; $00:A7B5: 3A          ;
                BPL CODE_00A7BA         ; $00:A7B6: 10 02       ;
                LDA #$00                ; $00:A7B8: A9 00       ;
CODE_00A7BA:    STA $700009             ; $00:A7BA: 8F 09 00 70 ;
CODE_00A7BE:    LDA $D1                 ; $00:A7BE: A5 D1       ;
                ASL A                   ; $00:A7C0: 0A          ;
                ASL A                   ; $00:A7C1: 0A          ;
                CLC                     ; $00:A7C2: 18          ;
                ADC $D0                 ; $00:A7C3: 65 D0       ;
                ASL A                   ; $00:A7C5: 0A          ;
                TAX                     ; $00:A7C6: AA          ;
                LDA DATA_00A80C,x       ; $00:A7C7: BD 0C A8    ;
                STA $700004             ; $00:A7CA: 8F 04 00 70 ;
                LDA DATA_00A80C+1,x     ; $00:A7CE: BD 0D A8    ;
                STA $700005             ; $00:A7D1: 8F 05 00 70 ;
                RTL                     ; $00:A7D5: 6B          ;

CODE_00A7D6:    LDA $F4                 ; $00:A7D6: A5 F4       ;
                ORA $F5                 ; $00:A7D8: 05 F5       ;
                AND #$10                ; $00:A7DA: 29 10       ;
                BEQ CODE_00A7E0         ; $00:A7DC: F0 02       ;
                INC $E0                 ; $00:A7DE: E6 E0       ;
CODE_00A7E0:    LDA #$00                ; $00:A7E0: A9 00       ;
                STA $00                 ; $00:A7E2: 85 00       ;
                LDA $0F                 ; $00:A7E4: A5 0F       ;
                STA $01                 ; $00:A7E6: 85 01       ;
                LDA $D1                 ; $00:A7E8: A5 D1       ;
                ASL A                   ; $00:A7EA: 0A          ;
                ASL A                   ; $00:A7EB: 0A          ;
                ORA $D0                 ; $00:A7EC: 05 D0       ;
                STA $0C                 ; $00:A7EE: 85 0C       ;
                TAX                     ; $00:A7F0: AA          ;
                STZ $0D                 ; $00:A7F1: 64 0D       ;
                ASL A                   ; $00:A7F3: 0A          ;
                TAY                     ; $00:A7F4: A8          ;
                LDA DATA_00A367,y       ; $00:A7F5: B9 67 A3    ;
                STA $02                 ; $00:A7F8: 85 02       ;
                LDA DATA_00A367+1,y     ; $00:A7FA: B9 68 A3    ;
                STA $03                 ; $00:A7FD: 85 03       ;
                LDA $B0,x               ; $00:A7FF: B5 B0       ;
                STA $04                 ; $00:A801: 85 04       ;
                STZ $05                 ; $00:A803: 64 05       ;
                LDA $C0,x               ; $00:A805: B5 C0       ;
                STA $06                 ; $00:A807: 85 06       ;
                STZ $07                 ; $00:A809: 64 07       ;
                RTL                     ; $00:A80B: 6B          ;

DATA_00A80C:    dw $0000,$0009,$0011,$001A                      ;
                dw $0120,$0129,$0131,$013A                      ;
                dw $0240,$0249,$0251,$025A                      ;
                dw $0360,$0369,$0371,$037A                      ;

CODE_00A82C:    LDA $D1                 ; $00:A82C: A5 D1       ;
                ASL A                   ; $00:A82E: 0A          ;
                ASL A                   ; $00:A82F: 0A          ;
                CLC                     ; $00:A830: 18          ;
                ADC $D0                 ; $00:A831: 65 D0       ;
                ASL A                   ; $00:A833: 0A          ;
                TAX                     ; $00:A834: AA          ;
                REP #$20                ; $00:A835: C2 20       ;
                LDA DATA_00A80C,x       ; $00:A837: BD 0C A8    ;
                REP #$10                ; $00:A83A: C2 10       ;
                TAX                     ; $00:A83C: AA          ;
                LDA #$FFFF              ; $00:A83D: A9 FF FF    ;
                STA $700010,x           ; $00:A840: 9F 10 00 70 ;
                SEP #$30                ; $00:A844: E2 30       ;
                JMP CODE_008C1B         ; $00:A846: 4C 1B 8C    ;

CODE_00A849:    PHB                     ; $00:A849: 8B          ;\
                LDA #$70                ; $00:A84A: A9 70       ; |Program bank: SRAM
                PHA                     ; $00:A84C: 48          ; |
                PLB                     ; $00:A84D: AB          ;/
                REP #$10                ; $00:A84E: C2 10       ;\
                LDA #$20                ; $00:A850: A9 20       ; |
                STA $0E                 ; $00:A852: 85 0E       ; |
                LDA #$01                ; $00:A854: A9 01       ; |
                STA $0F                 ; $00:A856: 85 0F       ; | 
                LDX #$0000              ; $00:A858: A2 00 00    ; |
                LDY $0004               ; $00:A85B: AC 04 00    ; | Load $120 bytes of saved data from SRAM Offset of last save data accessed
CODE_00A85E:    LDA $0010,y             ; $00:A85E: B9 10 00    ; | into RAM $7FFB00 whenever you load a game. Doesn't matter which.
                STA $7FFB00,x           ; $00:A861: 9F 00 FB 7F ; |
                INY                     ; $00:A865: C8          ; |
                INX                     ; $00:A866: E8          ; |
                CPX $0E                 ; $00:A867: E4 0E       ; |
                BNE CODE_00A85E         ; $00:A869: D0 F3       ;/
                LDA $0008               ; $00:A86B: AD 08 00    ;\
                STA $7FFB00             ; $00:A86E: 8F 00 FB 7F ;/Which world you have loaded, from SRAM into RAM
                LDA $0009               ; $00:A872: AD 09 00    ;\
                STA $7FFB01             ; $00:A875: 8F 01 FB 7F ;/Which level you have loaded, from SRAM into RAM
                LDA $70000F             ; $00:A879: AF 0F 00 70 ;\
                STA $00                 ; $00:A87D: 85 00       ;/Loaded game into scratch RAM
                BNE CODE_00A896         ; $00:A87F: D0 15       ;\
                LDA $70000E             ; $00:A881: AF 0E 00 70 ; |
                ASL A                   ; $00:A885: 0A          ; | If SMB1
                ASL A                   ; $00:A886: 0A          ; | Save slot # << 4
                ORA $00                 ; $00:A887: 05 00       ; | OR $00  (isn't this always 00 because we only get here when it's 00?)
                XBA                     ; $00:A889: EB          ; | 
                LDA #$00                ; $00:A88A: A9 00       ; | Clear high byte, to index.
                XBA                     ; $00:A88C: EB          ; | 
                TAX                     ; $00:A88D: AA          ; | (so basically save slot * 4 to index)
                LDA $700490,x           ; $00:A88E: BF 90 04 70 ;\|
                STA $7FFB05             ; $00:A892: 8F 05 FB 7F ;/ More difficult quest flag for SMB1
CODE_00A896:    LDA #$00                ; $00:A896: A9 00       ;\
                XBA                     ; $00:A898: EB          ; |
                LDA $70000E             ; $00:A899: AF 0E 00 70 ; |
                AND #$03                ; $00:A89D: 29 03       ; | Loaded save slot * 4 to X index
                ASL A                   ; $00:A89F: 0A          ; | (for what purpose?)
                ASL A                   ; $00:A8A0: 0A          ; |
                TAX                     ; $00:A8A1: AA          ; |
                SEP #$10                ; $00:A8A2: E2 10       ; |
                PLB                     ; $00:A8A4: AB          ; |
                RTL                     ; $00:A8A5: 6B          ;/

PNTR_00A8A6:    dw CODE_00AA05                                  ;
                dw CODE_00AAA1                                  ;
                dw CODE_00AB74                                  ;
                dw CODE_00AC12                                  ;

CODE_00A8AE:    REP #$20                ; $00:A8AE: C2 20       ;
                LDX #$80                ; $00:A8B0: A2 80       ;
                LDA #$02FF              ; $00:A8B2: A9 FF 02    ;
CODE_00A8B5:    STA $0400,x             ; $00:A8B5: 9D 00 04    ;
                STA $0480,x             ; $00:A8B8: 9D 80 04    ;
                STA $0500,x             ; $00:A8BB: 9D 00 05    ;
                STA $0580,x             ; $00:A8BE: 9D 80 05    ;
                STA $0600,x             ; $00:A8C1: 9D 00 06    ;
                STA $0680,x             ; $00:A8C4: 9D 80 06    ;
                STA $0700,x             ; $00:A8C7: 9D 00 07    ;
                DEX                     ; $00:A8CA: CA          ;
                DEX                     ; $00:A8CB: CA          ;
                BPL CODE_00A8B5         ; $00:A8CC: 10 E7       ;
                LDY $D1                 ; $00:A8CE: A4 D1       ;
                LDX DATA_00AA01,y       ; $00:A8D0: BE 01 AA    ;
                LDA #$034F              ; $00:A8D3: A9 4F 03    ;
                STA $04DA,x             ; $00:A8D6: 9D DA 04    ;
                LDX #$00                ; $00:A8D9: A2 00       ;
CODE_00A8DB:    LDA DATA_00A9B1,x       ; $00:A8DB: BD B1 A9    ;
                CMP #$FFFF              ; $00:A8DE: C9 FF FF    ;
                BEQ CODE_00A8F3         ; $00:A8E1: F0 10       ;
                STA $04DC,x             ; $00:A8E3: 9D DC 04    ;
                STA $0530,x             ; $00:A8E6: 9D 30 05    ;
                STA $0584,x             ; $00:A8E9: 9D 84 05    ;
                STA $05D8,x             ; $00:A8EC: 9D D8 05    ;
                INX                     ; $00:A8EF: E8          ;
                INX                     ; $00:A8F0: E8          ;
                BRA CODE_00A8DB         ; $00:A8F1: 80 E8       ;

CODE_00A8F3:    LDX #$00                ; $00:A8F3: A2 00       ;
                LDA #$0360              ; $00:A8F5: A9 60 03    ;
CODE_00A8F8:    STA $04BE,x             ; $00:A8F8: 9D BE 04    ;
                STA $0512,x             ; $00:A8FB: 9D 12 05    ;
                STA $0566,x             ; $00:A8FE: 9D 66 05    ;
                STA $05BA,x             ; $00:A901: 9D BA 05    ;
                INC A                   ; $00:A904: 1A          ;
                INX                     ; $00:A905: E8          ;
                INX                     ; $00:A906: E8          ;
                CPX #$08                ; $00:A907: E0 08       ;
                BNE CODE_00A8F8         ; $00:A909: D0 ED       ;
                REP #$10                ; $00:A90B: C2 10       ;
                LDX #$0000              ; $00:A90D: A2 00 00    ;
                LDA #$02F5              ; $00:A910: A9 F5 02    ;
                STA $00                 ; $00:A913: 85 00       ;
CODE_00A915:    LDA $00                 ; $00:A915: A5 00       ;
                STA $04B8,x             ; $00:A917: 9D B8 04    ;
                INC $00                 ; $00:A91A: E6 00       ;
                TXA                     ; $00:A91C: 8A          ;
                CLC                     ; $00:A91D: 18          ;
                ADC #$002A              ; $00:A91E: 69 2A 00    ;
                TAX                     ; $00:A921: AA          ;
                CPX #$0150              ; $00:A922: E0 50 01    ;
                BNE CODE_00A915         ; $00:A925: D0 EE       ;
                SEP #$10                ; $00:A927: E2 10       ;
                LDX #$00                ; $00:A929: A2 00       ;
                LDA #$038B              ; $00:A92B: A9 8B 03    ;
CODE_00A92E:    STA $0622,x             ; $00:A92E: 9D 22 06    ;
                INC A                   ; $00:A931: 1A          ;
                INX                     ; $00:A932: E8          ;
                INX                     ; $00:A933: E8          ;
                CPX #$14                ; $00:A934: E0 14       ;
                BNE CODE_00A92E         ; $00:A936: D0 F6       ;
                LDX #$00                ; $00:A938: A2 00       ;
CODE_00A93A:    LDA DATA_00A9C7,x       ; $00:A93A: BD C7 A9    ;
                STA $067C,x             ; $00:A93D: 9D 7C 06    ;
                LDA DATA_00A9CF,x       ; $00:A940: BD CF A9    ;
                STA $06A6,x             ; $00:A943: 9D A6 06    ;
                LDA DATA_00A9D7,x       ; $00:A946: BD D7 A9    ;
                STA $06D0,x             ; $00:A949: 9D D0 06    ;
                LDA DATA_00A9DF,x       ; $00:A94C: BD DF A9    ;
                STA $06FA,x             ; $00:A94F: 9D FA 06    ;
                INX                     ; $00:A952: E8          ;
                INX                     ; $00:A953: E8          ;
                CPX #$08                ; $00:A954: E0 08       ;
                BNE CODE_00A93A         ; $00:A956: D0 E2       ;
                LDA #$0368              ; $00:A958: A9 68 03    ;
                STA $00                 ; $00:A95B: 85 00       ;
                LDA #$0378              ; $00:A95D: A9 78 03    ;
                STA $02                 ; $00:A960: 85 02       ;
                LDX #$00                ; $00:A962: A2 00       ;
CODE_00A964:    LDA $00                 ; $00:A964: A5 00       ;
                STA $0684,x             ; $00:A966: 9D 84 06    ;
                STA $06CA,x             ; $00:A969: 9D CA 06    ;
                LDA $02                 ; $00:A96C: A5 02       ;
                STA $06AE,x             ; $00:A96E: 9D AE 06    ;
                STA $0702,x             ; $00:A971: 9D 02 07    ;
                INC $00                 ; $00:A974: E6 00       ;
                INC $02                 ; $00:A976: E6 02       ;
                INX                     ; $00:A978: E8          ;
                INX                     ; $00:A979: E8          ;
                CPX #$06                ; $00:A97A: E0 06       ;
                BNE CODE_00A964         ; $00:A97C: D0 E6       ;
                LDA #$0380              ; $00:A97E: A9 80 03    ;
                LDX #$00                ; $00:A981: A2 00       ;
CODE_00A983:    STA $0722,x             ; $00:A983: 9D 22 07    ;
                INC A                   ; $00:A986: 1A          ;
                INX                     ; $00:A987: E8          ;
                INX                     ; $00:A988: E8          ;
                CPX #$0C                ; $00:A989: E0 0C       ;
                BNE CODE_00A983         ; $00:A98B: D0 F6       ;
                LDA $700006             ; $00:A98D: AF 06 00 70 ;
                AND #$00FF              ; $00:A991: 29 FF 00    ;
                BEQ CODE_00A9AE         ; $00:A994: F0 18       ;
                LDA #$0368              ; $00:A996: A9 68 03    ;
                STA $0702               ; $00:A999: 8D 02 07    ;
                INC A                   ; $00:A99C: 1A          ;
                STA $0704               ; $00:A99D: 8D 04 07    ;
                INC A                   ; $00:A9A0: 1A          ;
                STA $0706               ; $00:A9A1: 8D 06 07    ;
                LDA #$0386              ; $00:A9A4: A9 86 03    ;
                STA $072A               ; $00:A9A7: 8D 2A 07    ;
                INC A                   ; $00:A9AA: 1A          ;
                STA $072C               ; $00:A9AB: 8D 2C 07    ;
CODE_00A9AE:    SEP #$20                ; $00:A9AE: E2 20       ;
                RTS                     ; $00:A9B0: 60          ;

DATA_00A9B1:    db $F2,$02,$F3,$02,$F4,$02,$51,$03              ; Tilemap in selected game's file select
                db $51,$03,$51,$03,$70,$03,$71,$03              ; Tilemap of "FILE" and the entire line below it
                db $72,$03,$73,$03,$FF,$FF                      ; Tilemap for all the 4 "FILE" sections. Format: tile, properties. FF marks end

DATA_00A9C7:    db $64,$03,$65,$03,$66,$03,$67,$03              ;Tilemap in selected game's file select

DATA_00A9CF:    db $74,$03,$75,$03,$76,$03,$77,$03              ;Tilemap of the small controller in the bottom-left corner

DATA_00A9D7:    db $6B,$03,$6C,$03,$6D,$03,$6E,$03              ;Format: tile, properties

DATA_00A9DF:    db $7B,$03,$7C,$03,$7D,$03,$7E,$03              ;Tilemap is for controller -only-, not for the text around it.

                db $FF,$FF,$83,$03,$95,$03,$96,$03              ;
                db $97,$03,$83,$03,$FF,$02,$98,$03              ;
                db $99,$03,$9A,$03,$83,$03,$FF,$02              ;
                db $5F,$03                                      ;

DATA_00AA01:    db $00,$54,$A8,$FC                              ;

CODE_00AA05:    LDA $0220               ; $00:AA05: AD 20 02    ;
                BNE CODE_00AA73         ; $00:AA08: D0 69       ;
                LDA $021B               ; $00:AA0A: AD 1B 02    ;
                BNE CODE_00AA6E         ; $00:AA0D: D0 5F       ;
                LDA $00                 ; $00:AA0F: A5 00       ;
                BNE CODE_00AA1E         ; $00:AA11: D0 0B       ;
                LDA #$01                ; $00:AA13: A9 01       ;
                STA $0220               ; $00:AA15: 8D 20 02    ;
                STZ $021A               ; $00:AA18: 9C 1A 02    ;
                JMP CODE_00AAA0         ; $00:AA1B: 4C A0 AA    ;

CODE_00AA1E:    LDA #$3F                ; $00:AA1E: A9 3F       ;
                STA $0063               ; $00:AA20: 8D 63 00    ;
                REP #$20                ; $00:AA23: C2 20       ;
                LDA #$0300              ; $00:AA25: A9 00 03    ;
                STA $00                 ; $00:AA28: 85 00       ;
                LDA #$0310              ; $00:AA2A: A9 10 03    ;
                STA $02                 ; $00:AA2D: 85 02       ;
                LDX #$00                ; $00:AA2F: A2 00       ;
CODE_00AA31:    LDA $00                 ; $00:AA31: A5 00       ;
                STA $0438,x             ; $00:AA33: 9D 38 04    ;
                LDA $02                 ; $00:AA36: A5 02       ;
                STA $0462,x             ; $00:AA38: 9D 62 04    ;
                INC $00                 ; $00:AA3B: E6 00       ;
                INC $02                 ; $00:AA3D: E6 02       ;
                INX                     ; $00:AA3F: E8          ;
                INX                     ; $00:AA40: E8          ;
                CPX #$10                ; $00:AA41: E0 10       ;
                BNE CODE_00AA31         ; $00:AA43: D0 EC       ;
                STZ $021E               ; $00:AA45: 9C 1E 02    ;
                LDA #$00B0              ; $00:AA48: A9 B0 00    ;
                STA $00                 ; $00:AA4B: 85 00       ;
                JSR CODE_00ACF0         ; $00:AA4D: 20 F0 AC    ;
                LDA #$0016              ; $00:AA50: A9 16 00    ;
                STA $00                 ; $00:AA53: 85 00       ;
                LDX #$70                ; $00:AA55: A2 70       ;
                STX $02                 ; $00:AA57: 86 02       ;
                JSR CODE_00ADAB         ; $00:AA59: 20 AB AD    ;
                LDA #$78E5              ; $00:AA5C: A9 E5 78    ;
                STA $021C               ; $00:AA5F: 8D 1C 02    ;
                SEP #$20                ; $00:AA62: E2 20       ;
                LDA #$01                ; $00:AA64: A9 01       ;
                STA $021A               ; $00:AA66: 8D 1A 02    ;
                LDA #$15                ; $00:AA69: A9 15       ;
                STA $021B               ; $00:AA6B: 8D 1B 02    ;
CODE_00AA6E:    JSR CODE_00ADF8         ; $00:AA6E: 20 F8 AD    ;
                BRA CODE_00AAA0         ; $00:AA71: 80 2D       ;

CODE_00AA73:    LDA $021B               ; $00:AA73: AD 1B 02    ;
                BNE CODE_00AA9D         ; $00:AA76: D0 25       ;
                LDA $00                 ; $00:AA78: A5 00       ;
                BNE CODE_00AA84         ; $00:AA7A: D0 08       ;
                STZ $021A               ; $00:AA7C: 9C 1A 02    ;
                STZ $0220               ; $00:AA7F: 9C 20 02    ;
                BRA CODE_00AAA0         ; $00:AA82: 80 1C       ;

CODE_00AA84:    LDA #$3F                ; $00:AA84: A9 3F       ;
                STA $0063               ; $00:AA86: 8D 63 00    ;
                REP #$20                ; $00:AA89: C2 20       ;
                LDA #$070A              ; $00:AA8B: A9 0A 07    ;
                STA $021E               ; $00:AA8E: 8D 1E 02    ;
                SEP #$20                ; $00:AA91: E2 20       ;
                LDA #$01                ; $00:AA93: A9 01       ;
                STA $021A               ; $00:AA95: 8D 1A 02    ;
                LDA #$16                ; $00:AA98: A9 16       ;
                STA $021B               ; $00:AA9A: 8D 1B 02    ;
CODE_00AA9D:    JSR CODE_00AEC9         ; $00:AA9D: 20 C9 AE    ;
CODE_00AAA0:    RTS                     ; $00:AAA0: 60          ;

CODE_00AAA1:    LDA $0220               ; $00:AAA1: AD 20 02    ;
                BEQ CODE_00AAA9         ; $00:AAA4: F0 03       ;
                JMP CODE_00AB2E         ; $00:AAA6: 4C 2E AB    ;

CODE_00AAA9:    LDA $021B               ; $00:AAA9: AD 1B 02    ;
                BNE CODE_00AB11         ; $00:AAAC: D0 63       ;
                LDA $00                 ; $00:AAAE: A5 00       ;
                BNE CODE_00AABD         ; $00:AAB0: D0 0B       ;
                LDA #$01                ; $00:AAB2: A9 01       ;
                STA $0220               ; $00:AAB4: 8D 20 02    ;
                STZ $021A               ; $00:AAB7: 9C 1A 02    ;
                JMP CODE_00AB73         ; $00:AABA: 4C 73 AB    ;

CODE_00AABD:    LDA #$3F                ; $00:AABD: A9 3F       ;
                STA $0063               ; $00:AABF: 8D 63 00    ;
                REP #$20                ; $00:AAC2: C2 20       ;
                LDA #$0300              ; $00:AAC4: A9 00 03    ;
                STA $00                 ; $00:AAC7: 85 00       ;
                LDA #$0310              ; $00:AAC9: A9 10 03    ;
                STA $02                 ; $00:AACC: 85 02       ;
                LDX #$00                ; $00:AACE: A2 00       ;
CODE_00AAD0:    LDA $00                 ; $00:AAD0: A5 00       ;
                STA $0438,x             ; $00:AAD2: 9D 38 04    ;
                LDA $02                 ; $00:AAD5: A5 02       ;
                STA $0462,x             ; $00:AAD7: 9D 62 04    ;
                INC $00                 ; $00:AADA: E6 00       ;
                INC $02                 ; $00:AADC: E6 02       ;
                INX                     ; $00:AADE: E8          ;
                INX                     ; $00:AADF: E8          ;
                CPX #$10                ; $00:AAE0: E0 10       ;
                BNE CODE_00AAD0         ; $00:AAE2: D0 EC       ;
                LDX #$00                ; $00:AAE4: A2 00       ;
                LDA #$02E0              ; $00:AAE6: A9 E0 02    ;
CODE_00AAE9:    STA $048C,x             ; $00:AAE9: 9D 8C 04    ;
                INC A                   ; $00:AAEC: 1A          ;
                INX                     ; $00:AAED: E8          ;
                INX                     ; $00:AAEE: E8          ;
                CPX #$10                ; $00:AAEF: E0 10       ;
                BNE CODE_00AAE9         ; $00:AAF1: D0 F6       ;
                STZ $021E               ; $00:AAF3: 9C 1E 02    ;
                LDA #$00B0              ; $00:AAF6: A9 B0 00    ;
                INC A                   ; $00:AAF9: 1A          ;
                STA $00                 ; $00:AAFA: 85 00       ;
                JSR CODE_00AD5C         ; $00:AAFC: 20 5C AD    ;
                LDA #$78F4              ; $00:AAFF: A9 F4 78    ;
                STA $021C               ; $00:AB02: 8D 1C 02    ;
                SEP #$20                ; $00:AB05: E2 20       ;
                LDA #$01                ; $00:AB07: A9 01       ;
                STA $021A               ; $00:AB09: 8D 1A 02    ;
                LDA #$15                ; $00:AB0C: A9 15       ;
                STA $021B               ; $00:AB0E: 8D 1B 02    ;
CODE_00AB11:    REP #$20                ; $00:AB11: C2 20       ;
                LDA #$000C              ; $00:AB13: A9 0C 00    ;
                STA $00                 ; $00:AB16: 85 00       ;
                LDA #$0009              ; $00:AB18: A9 09 00    ;
                STA $02                 ; $00:AB1B: 85 02       ;
                LDA #$0018              ; $00:AB1D: A9 18 00    ;
                STA $04                 ; $00:AB20: 85 04       ;
                LDA #$0012              ; $00:AB22: A9 12 00    ;
                STA $06                 ; $00:AB25: 85 06       ;
                SEP #$20                ; $00:AB27: E2 20       ;
                JSR CODE_00AE4A         ; $00:AB29: 20 4A AE    ;
                BRA CODE_00AB73         ; $00:AB2C: 80 45       ;

CODE_00AB2E:    LDA $021B               ; $00:AB2E: AD 1B 02    ;
                BNE CODE_00AB58         ; $00:AB31: D0 25       ;
                LDA $00                 ; $00:AB33: A5 00       ;
                BNE CODE_00AB3F         ; $00:AB35: D0 08       ;
                STZ $021A               ; $00:AB37: 9C 1A 02    ;
                STZ $0220               ; $00:AB3A: 9C 20 02    ;
                BRA CODE_00AB73         ; $00:AB3D: 80 34       ;

CODE_00AB3F:    LDA #$3F                ; $00:AB3F: A9 3F       ;
                STA $0063               ; $00:AB41: 8D 63 00    ;
                REP #$20                ; $00:AB44: C2 20       ;
                LDA #$0728              ; $00:AB46: A9 28 07    ;
                STA $021E               ; $00:AB49: 8D 1E 02    ;
                SEP #$20                ; $00:AB4C: E2 20       ;
                LDA #$01                ; $00:AB4E: A9 01       ;
                STA $021A               ; $00:AB50: 8D 1A 02    ;
                LDA #$16                ; $00:AB53: A9 16       ;
                STA $021B               ; $00:AB55: 8D 1B 02    ;
CODE_00AB58:    REP #$20                ; $00:AB58: C2 20       ;
                LDA #$000C              ; $00:AB5A: A9 0C 00    ;
                STA $00                 ; $00:AB5D: 85 00       ;
                LDA #$0009              ; $00:AB5F: A9 09 00    ;
                STA $02                 ; $00:AB62: 85 02       ;
                LDA #$0018              ; $00:AB64: A9 18 00    ;
                STA $04                 ; $00:AB67: 85 04       ;
                LDA #$0012              ; $00:AB69: A9 12 00    ;
                STA $06                 ; $00:AB6C: 85 06       ;
                SEP #$20                ; $00:AB6E: E2 20       ;
                JSR CODE_00AF3C         ; $00:AB70: 20 3C AF    ;
CODE_00AB73:    RTS                     ; $00:AB73: 60          ;

CODE_00AB74:    LDA $0220               ; $00:AB74: AD 20 02    ;
                BNE CODE_00ABE4         ; $00:AB77: D0 6B       ;
                LDA $021B               ; $00:AB79: AD 1B 02    ;
                BNE CODE_00ABDF         ; $00:AB7C: D0 61       ;
                LDA $00                 ; $00:AB7E: A5 00       ;
                BNE CODE_00AB8D         ; $00:AB80: D0 0B       ;
                LDA #$01                ; $00:AB82: A9 01       ;
                STA $0220               ; $00:AB84: 8D 20 02    ;
                STZ $021A               ; $00:AB87: 9C 1A 02    ;
                JMP CODE_00AC11         ; $00:AB8A: 4C 11 AC    ;

CODE_00AB8D:    LDA #$3F                ; $00:AB8D: A9 3F       ;
                STA $0063               ; $00:AB8F: 8D 63 00    ;
                REP #$20                ; $00:AB92: C2 20       ;
                LDA #$0300              ; $00:AB94: A9 00 03    ;
                STA $00                 ; $00:AB97: 85 00       ;
                LDA #$0310              ; $00:AB99: A9 10 03    ;
                STA $02                 ; $00:AB9C: 85 02       ;
                LDX #$00                ; $00:AB9E: A2 00       ;
CODE_00ABA0:    LDA $00                 ; $00:ABA0: A5 00       ;
                STA $0436,x             ; $00:ABA2: 9D 36 04    ;
                LDA $02                 ; $00:ABA5: A5 02       ;
                STA $0460,x             ; $00:ABA7: 9D 60 04    ;
                INC $00                 ; $00:ABAA: E6 00       ;
                INC $02                 ; $00:ABAC: E6 02       ;
                INX                     ; $00:ABAE: E8          ;
                INX                     ; $00:ABAF: E8          ;
                CPX #$10                ; $00:ABB0: E0 10       ;
                BNE CODE_00ABA0         ; $00:ABB2: D0 EC       ;
                LDA #$030B              ; $00:ABB4: A9 0B 03    ;
                STA $0446               ; $00:ABB7: 8D 46 04    ;
                LDA #$031B              ; $00:ABBA: A9 1B 03    ;
                STA $0470               ; $00:ABBD: 8D 70 04    ;
                STZ $021E               ; $00:ABC0: 9C 1E 02    ;
                LDA #$00B0              ; $00:ABC3: A9 B0 00    ;
                INC A                   ; $00:ABC6: 1A          ;
                INC A                   ; $00:ABC7: 1A          ;
                STA $00                 ; $00:ABC8: 85 00       ;
                JSR CODE_00ACF0         ; $00:ABCA: 20 F0 AC    ;
                LDA #$7CE4              ; $00:ABCD: A9 E4 7C    ;
                STA $021C               ; $00:ABD0: 8D 1C 02    ;
                SEP #$20                ; $00:ABD3: E2 20       ;
                LDA #$01                ; $00:ABD5: A9 01       ;
                STA $021A               ; $00:ABD7: 8D 1A 02    ;
                LDA #$15                ; $00:ABDA: A9 15       ;
                STA $021B               ; $00:ABDC: 8D 1B 02    ;
CODE_00ABDF:    JSR CODE_00ADF8         ; $00:ABDF: 20 F8 AD    ;
                BRA CODE_00AC11         ; $00:ABE2: 80 2D       ;

CODE_00ABE4:    LDA $021B               ; $00:ABE4: AD 1B 02    ;
                BNE CODE_00AC0E         ; $00:ABE7: D0 25       ;
                LDA $00                 ; $00:ABE9: A5 00       ;
                BNE CODE_00ABF5         ; $00:ABEB: D0 08       ;
                STZ $021A               ; $00:ABED: 9C 1A 02    ;
                STZ $0220               ; $00:ABF0: 9C 20 02    ;
                BRA CODE_00AC11         ; $00:ABF3: 80 1C       ;

CODE_00ABF5:    LDA #$3F                ; $00:ABF5: A9 3F       ;
                STA $0063               ; $00:ABF7: 8D 63 00    ;
                REP #$20                ; $00:ABFA: C2 20       ;
                LDA #$0F08              ; $00:ABFC: A9 08 0F    ;
                STA $021E               ; $00:ABFF: 8D 1E 02    ;
                SEP #$20                ; $00:AC02: E2 20       ;
                LDA #$01                ; $00:AC04: A9 01       ;
                STA $021A               ; $00:AC06: 8D 1A 02    ;
                LDA #$16                ; $00:AC09: A9 16       ;
                STA $021B               ; $00:AC0B: 8D 1B 02    ;
CODE_00AC0E:    JSR CODE_00AEC9         ; $00:AC0E: 20 C9 AE    ;
CODE_00AC11:    RTS                     ; $00:AC11: 60          ;

CODE_00AC12:    LDA $0220               ; $00:AC12: AD 20 02    ;
                BEQ CODE_00AC1A         ; $00:AC15: F0 03       ;
                JMP CODE_00ACAA         ; $00:AC17: 4C AA AC    ;

CODE_00AC1A:    LDA $021B               ; $00:AC1A: AD 1B 02    ;
                BNE CODE_00AC8D         ; $00:AC1D: D0 6E       ;
                LDA $00                 ; $00:AC1F: A5 00       ;
                BNE CODE_00AC2E         ; $00:AC21: D0 0B       ;
                LDA #$01                ; $00:AC23: A9 01       ;
                STA $0220               ; $00:AC25: 8D 20 02    ;
                STZ $021A               ; $00:AC28: 9C 1A 02    ;
                JMP CODE_00ACEF         ; $00:AC2B: 4C EF AC    ;

CODE_00AC2E:    LDA #$3F                ; $00:AC2E: A9 3F       ;
                STA $0063               ; $00:AC30: 8D 63 00    ;
                REP #$20                ; $00:AC33: C2 20       ;
                LDA #$0300              ; $00:AC35: A9 00 03    ;
                STA $00                 ; $00:AC38: 85 00       ;
                LDA #$0310              ; $00:AC3A: A9 10 03    ;
                STA $02                 ; $00:AC3D: 85 02       ;
                LDX #$00                ; $00:AC3F: A2 00       ;
CODE_00AC41:    LDA $00                 ; $00:AC41: A5 00       ;
                STA $0436,x             ; $00:AC43: 9D 36 04    ;
                LDA $02                 ; $00:AC46: A5 02       ;
                STA $0460,x             ; $00:AC48: 9D 60 04    ;
                INC $00                 ; $00:AC4B: E6 00       ;
                INC $02                 ; $00:AC4D: E6 02       ;
                INX                     ; $00:AC4F: E8          ;
                INX                     ; $00:AC50: E8          ;
                CPX #$10                ; $00:AC51: E0 10       ;
                BNE CODE_00AC41         ; $00:AC53: D0 EC       ;
                LDA #$030C              ; $00:AC55: A9 0C 03    ;
                STA $0446               ; $00:AC58: 8D 46 04    ;
                LDA #$031C              ; $00:AC5B: A9 1C 03    ;
                STA $0470               ; $00:AC5E: 8D 70 04    ;
                STZ $021E               ; $00:AC61: 9C 1E 02    ;
                LDA #$00B0              ; $00:AC64: A9 B0 00    ;
                INC A                   ; $00:AC67: 1A          ;
                INC A                   ; $00:AC68: 1A          ;
                INC A                   ; $00:AC69: 1A          ;
                STA $00                 ; $00:AC6A: 85 00       ;
                JSR CODE_00ACF0         ; $00:AC6C: 20 F0 AC    ;
                LDA #$012D              ; $00:AC6F: A9 2D 01    ;
                STA $00                 ; $00:AC72: 85 00       ;
                LDX #$70                ; $00:AC74: A2 70       ;
                STX $02                 ; $00:AC76: 86 02       ;
                JSR CODE_00ADAB         ; $00:AC78: 20 AB AD    ;
                LDA #$7CF5              ; $00:AC7B: A9 F5 7C    ;
                STA $021C               ; $00:AC7E: 8D 1C 02    ;
                SEP #$20                ; $00:AC81: E2 20       ;
                LDA #$01                ; $00:AC83: A9 01       ;
                STA $021A               ; $00:AC85: 8D 1A 02    ;
                LDA #$15                ; $00:AC88: A9 15       ;
                STA $021B               ; $00:AC8A: 8D 1B 02    ;
CODE_00AC8D:    REP #$20                ; $00:AC8D: C2 20       ;
                LDA #$000B              ; $00:AC8F: A9 0B 00    ;
                STA $00                 ; $00:AC92: 85 00       ;
                LDA #$000A              ; $00:AC94: A9 0A 00    ;
                STA $02                 ; $00:AC97: 85 02       ;
                LDA #$0016              ; $00:AC99: A9 16 00    ;
                STA $04                 ; $00:AC9C: 85 04       ;
                LDA #$0014              ; $00:AC9E: A9 14 00    ;
                STA $06                 ; $00:ACA1: 85 06       ;
                SEP #$20                ; $00:ACA3: E2 20       ;
                JSR CODE_00AE4A         ; $00:ACA5: 20 4A AE    ;
                BRA CODE_00ACEF         ; $00:ACA8: 80 45       ;

CODE_00ACAA:    LDA $021B               ; $00:ACAA: AD 1B 02    ;
                BNE CODE_00ACD4         ; $00:ACAD: D0 25       ;
                LDA $00                 ; $00:ACAF: A5 00       ;
                BNE CODE_00ACBB         ; $00:ACB1: D0 08       ;
                STZ $021A               ; $00:ACB3: 9C 1A 02    ;
                STZ $0220               ; $00:ACB6: 9C 20 02    ;
                BRA CODE_00ACEF         ; $00:ACB9: 80 34       ;

CODE_00ACBB:    LDA #$3F                ; $00:ACBB: A9 3F       ;
                STA $0063               ; $00:ACBD: 8D 63 00    ;
                REP #$20                ; $00:ACC0: C2 20       ;
                LDA #$0F2A              ; $00:ACC2: A9 2A 0F    ;
                STA $021E               ; $00:ACC5: 8D 1E 02    ;
                SEP #$20                ; $00:ACC8: E2 20       ;
                LDA #$01                ; $00:ACCA: A9 01       ;
                STA $021A               ; $00:ACCC: 8D 1A 02    ;
                LDA #$16                ; $00:ACCF: A9 16       ;
                STA $021B               ; $00:ACD1: 8D 1B 02    ;
CODE_00ACD4:    REP #$20                ; $00:ACD4: C2 20       ;
                LDA #$000B              ; $00:ACD6: A9 0B 00    ;
                STA $00                 ; $00:ACD9: 85 00       ;
                LDA #$000A              ; $00:ACDB: A9 0A 00    ;
                STA $02                 ; $00:ACDE: 85 02       ;
                LDA #$0016              ; $00:ACE0: A9 16 00    ;
                STA $04                 ; $00:ACE3: 85 04       ;
                LDA #$0014              ; $00:ACE5: A9 14 00    ;
                STA $06                 ; $00:ACE8: 85 06       ;
                SEP #$20                ; $00:ACEA: E2 20       ;
                JSR CODE_00AF3C         ; $00:ACEC: 20 3C AF    ;
CODE_00ACEF:    RTS                     ; $00:ACEF: 60          ;

CODE_00ACF0:    LDX #$00                ; $00:ACF0: A2 00       ;
                TXY                     ; $00:ACF2: 9B          ;
CODE_00ACF3:    LDA ($00),y             ; $00:ACF3: B1 00       ;
                INC A                   ; $00:ACF5: 1A          ;
                AND #$00FF              ; $00:ACF6: 29 FF 00    ;
                BEQ CODE_00AD22         ; $00:ACF9: F0 27       ;
                ORA #$0340              ; $00:ACFB: 09 40 03    ;
                STA $04C0,x             ; $00:ACFE: 9D C0 04    ;
                ORA #$0010              ; $00:AD01: 09 10 00    ;
                STA $04EA,x             ; $00:AD04: 9D EA 04    ;
                LDA #$02FD              ; $00:AD07: A9 FD 02    ;
                STA $04EC,x             ; $00:AD0A: 9D EC 04    ;
                LDA #$0351              ; $00:AD0D: A9 51 03    ;
                STA $04E8,x             ; $00:AD10: 9D E8 04    ;
                STA $04EE,x             ; $00:AD13: 9D EE 04    ;
                LDA #$02FF              ; $00:AD16: A9 FF 02    ;
                STA $04BE,x             ; $00:AD19: 9D BE 04    ;
                STA $04C2,x             ; $00:AD1C: 9D C2 04    ;
                STA $04C4,x             ; $00:AD1F: 9D C4 04    ;
CODE_00AD22:    TXA                     ; $00:AD22: 8A          ;
                CLC                     ; $00:AD23: 18          ;
                ADC #$0054              ; $00:AD24: 69 54 00    ;
                TAX                     ; $00:AD27: AA          ;
                INY                     ; $00:AD28: C8          ;
                INY                     ; $00:AD29: C8          ;
                INY                     ; $00:AD2A: C8          ;
                INY                     ; $00:AD2B: C8          ;
                CPY #$10                ; $00:AD2C: C0 10       ;
                BNE CODE_00ACF3         ; $00:AD2E: D0 C3       ;
                LDA $0218               ; $00:AD30: AD 18 02    ;
                AND #$0003              ; $00:AD33: 29 03 00    ;
                CMP #$0002              ; $00:AD36: C9 02 00    ;
                BCS CODE_00AD5B         ; $00:AD39: B0 20       ;
                LDX #$00                ; $00:AD3B: A2 00       ;
                TXY                     ; $00:AD3D: 9B          ;
CODE_00AD3E:    LDA $70,x               ; $00:AD3E: B5 70       ;
                AND #$00FF              ; $00:AD40: 29 FF 00    ;
                BEQ CODE_00AD4B         ; $00:AD43: F0 06       ;
                LDA #$039B              ; $00:AD45: A9 9B 03    ;
                STA $04E8,y             ; $00:AD48: 99 E8 04    ;
CODE_00AD4B:    TYA                     ; $00:AD4B: 98          ;
                CLC                     ; $00:AD4C: 18          ;
                ADC #$0054              ; $00:AD4D: 69 54 00    ;
                TAY                     ; $00:AD50: A8          ;
                INX                     ; $00:AD51: E8          ;
                INX                     ; $00:AD52: E8          ;
                INX                     ; $00:AD53: E8          ;
                INX                     ; $00:AD54: E8          ;
                CPX #$10                ; $00:AD55: E0 10       ;
                BEQ CODE_00AD5B         ; $00:AD57: F0 02       ;
                BRA CODE_00AD3E         ; $00:AD59: 80 E3       ;

CODE_00AD5B:    RTS                     ; $00:AD5B: 60          ;

CODE_00AD5C:    LDX #$00                ; $00:AD5C: A2 00       ;
                TXY                     ; $00:AD5E: 9B          ;
CODE_00AD5F:    LDA ($00),y             ; $00:AD5F: B1 00       ;
                INC A                   ; $00:AD61: 1A          ;
                AND #$00FF              ; $00:AD62: 29 FF 00    ;
                BEQ CODE_00AD9C         ; $00:AD65: F0 35       ;
                ORA #$0340              ; $00:AD67: 09 40 03    ;
                STA $04BE,x             ; $00:AD6A: 9D BE 04    ;
                ORA #$0010              ; $00:AD6D: 09 10 00    ;
                STA $04E8,x             ; $00:AD70: 9D E8 04    ;
                LDA #$02FD              ; $00:AD73: A9 FD 02    ;
                STA $04EA,x             ; $00:AD76: 9D EA 04    ;
                LDA #$02FE              ; $00:AD79: A9 FE 02    ;
                STA $04EC,x             ; $00:AD7C: 9D EC 04    ;
                LDA #$02FF              ; $00:AD7F: A9 FF 02    ;
                STA $04C0,x             ; $00:AD82: 9D C0 04    ;
                STA $04C2,x             ; $00:AD85: 9D C2 04    ;
                LDA $00C0,y             ; $00:AD88: B9 C0 00    ;
                XBA                     ; $00:AD8B: EB          ;
                AND #$00FF              ; $00:AD8C: 29 FF 00    ;
                INC A                   ; $00:AD8F: 1A          ;
                ORA #$0340              ; $00:AD90: 09 40 03    ;
                STA $04C4,x             ; $00:AD93: 9D C4 04    ;
                ORA #$0010              ; $00:AD96: 09 10 00    ;
                STA $04EE,x             ; $00:AD99: 9D EE 04    ;
CODE_00AD9C:    TXA                     ; $00:AD9C: 8A          ;
                CLC                     ; $00:AD9D: 18          ;
                ADC #$0054              ; $00:AD9E: 69 54 00    ;
                TAX                     ; $00:ADA1: AA          ;
                INY                     ; $00:ADA2: C8          ;
                INY                     ; $00:ADA3: C8          ;
                INY                     ; $00:ADA4: C8          ;
                INY                     ; $00:ADA5: C8          ;
                CPY #$10                ; $00:ADA6: C0 10       ;
                BNE CODE_00AD5F         ; $00:ADA8: D0 B5       ;
                RTS                     ; $00:ADAA: 60          ;

CODE_00ADAB:    REP #$10                ; $00:ADAB: C2 10       ;
                LDA $0218               ; $00:ADAD: AD 18 02    ;
                AND #$0003              ; $00:ADB0: 29 03 00    ;
                STA $0A                 ; $00:ADB3: 85 0A       ;
                LDA #$0000              ; $00:ADB5: A9 00 00    ;
                TAX                     ; $00:ADB8: AA          ;
                STA $04                 ; $00:ADB9: 85 04       ;
CODE_00ADBB:    LDY $04                 ; $00:ADBB: A4 04       ;
                LDA [$00],y             ; $00:ADBD: B7 00       ;
                AND #$00FF              ; $00:ADBF: 29 FF 00    ;
                CMP #$00FF              ; $00:ADC2: C9 FF 00    ;
                BEQ CODE_00ADD6         ; $00:ADC5: F0 0F       ;
                CLC                     ; $00:ADC7: 18          ;
                ADC $0A                 ; $00:ADC8: 65 0A       ;
                ASL A                   ; $00:ADCA: 0A          ;
                TAY                     ; $00:ADCB: A8          ;
                LDA DATA_00ADEC,y       ; $00:ADCC: B9 EC AD    ;
                STA $04F0,x             ; $00:ADCF: 9D F0 04    ;
                INC A                   ; $00:ADD2: 1A          ;
                STA $04F2,x             ; $00:ADD3: 9D F2 04    ;
CODE_00ADD6:    LDA $04                 ; $00:ADD6: A5 04       ;
                CLC                     ; $00:ADD8: 18          ;
                ADC #$0120              ; $00:ADD9: 69 20 01    ;
                STA $04                 ; $00:ADDC: 85 04       ;
                TXA                     ; $00:ADDE: 8A          ;
                CLC                     ; $00:ADDF: 18          ;
                ADC #$0054              ; $00:ADE0: 69 54 00    ;
                TAX                     ; $00:ADE3: AA          ;
                AND #$0100              ; $00:ADE4: 29 00 01    ;
                BEQ CODE_00ADBB         ; $00:ADE7: F0 D2       ;
                SEP #$10                ; $00:ADE9: E2 10       ;
                RTS                     ; $00:ADEB: 60          ;

DATA_00ADEC:    db $9C,$03,$9E,$03,$00,$00,$00,$00              ;
                db $9C,$03,$9E,$03                              ;

CODE_00ADF8:    LDA $7F8000             ; $00:ADF8: AF 00 80 7F ;
                TAX                     ; $00:ADFC: AA          ;
                REP #$30                ; $00:ADFD: C2 30       ;
                LDA #$0015              ; $00:ADFF: A9 15 00    ;
                STA $04                 ; $00:AE02: 85 04       ;
                LDA $021C               ; $00:AE04: AD 1C 02    ;
                XBA                     ; $00:AE07: EB          ;
                STA $7F8002,x           ; $00:AE08: 9F 02 80 7F ;
                INX                     ; $00:AE0C: E8          ;
                INX                     ; $00:AE0D: E8          ;
                LDA #$002A              ; $00:AE0E: A9 2A 00    ;
                XBA                     ; $00:AE11: EB          ;
                STA $7F8002,x           ; $00:AE12: 9F 02 80 7F ;
                INX                     ; $00:AE16: E8          ;
                INX                     ; $00:AE17: E8          ;
CODE_00AE18:    LDY $021E               ; $00:AE18: AC 1E 02    ;
                LDA $0400,y             ; $00:AE1B: B9 00 04    ;
                STA $7F8002,x           ; $00:AE1E: 9F 02 80 7F ;
                INX                     ; $00:AE22: E8          ;
                INX                     ; $00:AE23: E8          ;
                INC $021E               ; $00:AE24: EE 1E 02    ;
                INC $021E               ; $00:AE27: EE 1E 02    ;
                DEC $04                 ; $00:AE2A: C6 04       ;
                BNE CODE_00AE18         ; $00:AE2C: D0 EA       ;
                LDA $021C               ; $00:AE2E: AD 1C 02    ;
                CLC                     ; $00:AE31: 18          ;
                ADC #$0020              ; $00:AE32: 69 20 00    ;
                STA $021C               ; $00:AE35: 8D 1C 02    ;
                LDA #$FFFF              ; $00:AE38: A9 FF FF    ;
                STA $7F8002,x           ; $00:AE3B: 9F 02 80 7F ;
                TXA                     ; $00:AE3F: 8A          ;
                STA $7F8000             ; $00:AE40: 8F 00 80 7F ;
                SEP #$30                ; $00:AE44: E2 30       ;
                DEC $021B               ; $00:AE46: CE 1B 02    ;
                RTS                     ; $00:AE49: 60          ;

CODE_00AE4A:    LDA $7F8000             ; $00:AE4A: AF 00 80 7F ;
                TAX                     ; $00:AE4E: AA          ;
                REP #$30                ; $00:AE4F: C2 30       ;
                LDA $00                 ; $00:AE51: A5 00       ;
                LDA $02                 ; $00:AE53: A5 02       ;
                LDA $021C               ; $00:AE55: AD 1C 02    ;
                XBA                     ; $00:AE58: EB          ;
                STA $7F8002,x           ; $00:AE59: 9F 02 80 7F ;
                INX                     ; $00:AE5D: E8          ;
                INX                     ; $00:AE5E: E8          ;
                LDA $04                 ; $00:AE5F: A5 04       ;
                XBA                     ; $00:AE61: EB          ;
                STA $7F8002,x           ; $00:AE62: 9F 02 80 7F ;
                INX                     ; $00:AE66: E8          ;
                INX                     ; $00:AE67: E8          ;
CODE_00AE68:    LDY $021E               ; $00:AE68: AC 1E 02    ;
                LDA $0400,y             ; $00:AE6B: B9 00 04    ;
                STA $7F8002,x           ; $00:AE6E: 9F 02 80 7F ;
                INX                     ; $00:AE72: E8          ;
                INX                     ; $00:AE73: E8          ;
                INC $021E               ; $00:AE74: EE 1E 02    ;
                INC $021E               ; $00:AE77: EE 1E 02    ;
                DEC $00                 ; $00:AE7A: C6 00       ;
                BNE CODE_00AE68         ; $00:AE7C: D0 EA       ;
                LDA $021C               ; $00:AE7E: AD 1C 02    ;
                AND #$7FE0              ; $00:AE81: 29 E0 7F    ;
                EOR #$0400              ; $00:AE84: 49 00 04    ;
                XBA                     ; $00:AE87: EB          ;
                STA $7F8002,x           ; $00:AE88: 9F 02 80 7F ;
                INX                     ; $00:AE8C: E8          ;
                INX                     ; $00:AE8D: E8          ;
                LDA $06                 ; $00:AE8E: A5 06       ;
                XBA                     ; $00:AE90: EB          ;
                STA $7F8002,x           ; $00:AE91: 9F 02 80 7F ;
                INX                     ; $00:AE95: E8          ;
                INX                     ; $00:AE96: E8          ;
CODE_00AE97:    LDY $021E               ; $00:AE97: AC 1E 02    ;
                LDA $0400,y             ; $00:AE9A: B9 00 04    ;
                STA $7F8002,x           ; $00:AE9D: 9F 02 80 7F ;
                INX                     ; $00:AEA1: E8          ;
                INX                     ; $00:AEA2: E8          ;
                INC $021E               ; $00:AEA3: EE 1E 02    ;
                INC $021E               ; $00:AEA6: EE 1E 02    ;
                DEC $02                 ; $00:AEA9: C6 02       ;
                BNE CODE_00AE97         ; $00:AEAB: D0 EA       ;
                LDA $021C               ; $00:AEAD: AD 1C 02    ;
                CLC                     ; $00:AEB0: 18          ;
                ADC #$0020              ; $00:AEB1: 69 20 00    ;
                STA $021C               ; $00:AEB4: 8D 1C 02    ;
                LDA #$FFFF              ; $00:AEB7: A9 FF FF    ;
                STA $7F8002,x           ; $00:AEBA: 9F 02 80 7F ;
                TXA                     ; $00:AEBE: 8A          ;
                STA $7F8000             ; $00:AEBF: 8F 00 80 7F ;
                SEP #$30                ; $00:AEC3: E2 30       ;
                DEC $021B               ; $00:AEC5: CE 1B 02    ;
                RTS                     ; $00:AEC8: 60          ;

CODE_00AEC9:    LDA $7F8000             ; $00:AEC9: AF 00 80 7F ;
                TAX                     ; $00:AECD: AA          ;
                REP #$30                ; $00:AECE: C2 30       ;
                LDA #$0015              ; $00:AED0: A9 15 00    ;
                STA $04                 ; $00:AED3: 85 04       ;
                LDA $021C               ; $00:AED5: AD 1C 02    ;
                XBA                     ; $00:AED8: EB          ;
                STA $7F8002,x           ; $00:AED9: 9F 02 80 7F ;
                INX                     ; $00:AEDD: E8          ;
                INX                     ; $00:AEDE: E8          ;
                LDA #$002A              ; $00:AEDF: A9 2A 00    ;
                XBA                     ; $00:AEE2: EB          ;
                STA $7F8002,x           ; $00:AEE3: 9F 02 80 7F ;
                INX                     ; $00:AEE7: E8          ;
                INX                     ; $00:AEE8: E8          ;
                SEP #$20                ; $00:AEE9: E2 20       ;
                PHB                     ; $00:AEEB: 8B          ;
                LDA #$7F                ; $00:AEEC: A9 7F       ;
                PHA                     ; $00:AEEE: 48          ;
                PLB                     ; $00:AEEF: AB          ;
                REP #$20                ; $00:AEF0: C2 20       ;
                LDA $00021E             ; $00:AEF2: AF 1E 02 00 ;
                TAY                     ; $00:AEF6: A8          ;
CODE_00AEF7:    LDA $1000,y             ; $00:AEF7: B9 00 10    ;
                STA $7F8002,x           ; $00:AEFA: 9F 02 80 7F ;
                INX                     ; $00:AEFE: E8          ;
                INX                     ; $00:AEFF: E8          ;
                INY                     ; $00:AF00: C8          ;
                INY                     ; $00:AF01: C8          ;
                DEC $04                 ; $00:AF02: C6 04       ;
                BNE CODE_00AEF7         ; $00:AF04: D0 F1       ;
                SEP #$20                ; $00:AF06: E2 20       ;
                PLB                     ; $00:AF08: AB          ;
                REP #$20                ; $00:AF09: C2 20       ;
                LDA $021C               ; $00:AF0B: AD 1C 02    ;
                SEC                     ; $00:AF0E: 38          ;
                SBC #$0020              ; $00:AF0F: E9 20 00    ;
                STA $021C               ; $00:AF12: 8D 1C 02    ;
                LDA $021E               ; $00:AF15: AD 1E 02    ;
                SEC                     ; $00:AF18: 38          ;
                SBC #$0040              ; $00:AF19: E9 40 00    ;
                STA $021E               ; $00:AF1C: 8D 1E 02    ;
                LDA #$FFFF              ; $00:AF1F: A9 FF FF    ;
                STA $7F8002,x           ; $00:AF22: 9F 02 80 7F ;
                TXA                     ; $00:AF26: 8A          ;
                STA $7F8000             ; $00:AF27: 8F 00 80 7F ;
                SEP #$30                ; $00:AF2B: E2 30       ;
                DEC $021B               ; $00:AF2D: CE 1B 02    ;
                LDA $021B               ; $00:AF30: AD 1B 02    ;
                BNE CODE_00AF3B         ; $00:AF33: D0 06       ;
                STZ $021A               ; $00:AF35: 9C 1A 02    ;
                STZ $0220               ; $00:AF38: 9C 20 02    ;
CODE_00AF3B:    RTS                     ; $00:AF3B: 60          ;

CODE_00AF3C:    LDA $7F8000             ; $00:AF3C: AF 00 80 7F ;
                TAX                     ; $00:AF40: AA          ;
                REP #$30                ; $00:AF41: C2 30       ;
                LDA $00                 ; $00:AF43: A5 00       ;
                LDA $02                 ; $00:AF45: A5 02       ;
                LDA $021C               ; $00:AF47: AD 1C 02    ;
                XBA                     ; $00:AF4A: EB          ;
                STA $7F8002,x           ; $00:AF4B: 9F 02 80 7F ;
                INX                     ; $00:AF4F: E8          ;
                INX                     ; $00:AF50: E8          ;
                LDA $04                 ; $00:AF51: A5 04       ;
                XBA                     ; $00:AF53: EB          ;
                STA $7F8002,x           ; $00:AF54: 9F 02 80 7F ;
                INX                     ; $00:AF58: E8          ;
                INX                     ; $00:AF59: E8          ;
                SEP #$20                ; $00:AF5A: E2 20       ;
                PHB                     ; $00:AF5C: 8B          ;
                LDA #$7F                ; $00:AF5D: A9 7F       ;
                PHA                     ; $00:AF5F: 48          ;
                PLB                     ; $00:AF60: AB          ;
                REP #$20                ; $00:AF61: C2 20       ;
                LDA $00021E             ; $00:AF63: AF 1E 02 00 ;
                TAY                     ; $00:AF67: A8          ;
CODE_00AF68:    LDA $1000,y             ; $00:AF68: B9 00 10    ;
                STA $7F8002,x           ; $00:AF6B: 9F 02 80 7F ;
                INX                     ; $00:AF6F: E8          ;
                INX                     ; $00:AF70: E8          ;
                INY                     ; $00:AF71: C8          ;
                INY                     ; $00:AF72: C8          ;
                DEC $00                 ; $00:AF73: C6 00       ;
                BNE CODE_00AF68         ; $00:AF75: D0 F1       ;
                SEP #$20                ; $00:AF77: E2 20       ;
                PLB                     ; $00:AF79: AB          ;
                REP #$20                ; $00:AF7A: C2 20       ;
                LDA $021C               ; $00:AF7C: AD 1C 02    ;
                AND #$7FE0              ; $00:AF7F: 29 E0 7F    ;
                EOR #$0400              ; $00:AF82: 49 00 04    ;
                XBA                     ; $00:AF85: EB          ;
                STA $7F8002,x           ; $00:AF86: 9F 02 80 7F ;
                INX                     ; $00:AF8A: E8          ;
                INX                     ; $00:AF8B: E8          ;
                LDA $06                 ; $00:AF8C: A5 06       ;
                XBA                     ; $00:AF8E: EB          ;
                STA $7F8002,x           ; $00:AF8F: 9F 02 80 7F ;
                INX                     ; $00:AF93: E8          ;
                INX                     ; $00:AF94: E8          ;
                SEP #$20                ; $00:AF95: E2 20       ;
                PHB                     ; $00:AF97: 8B          ;
                LDA #$7F                ; $00:AF98: A9 7F       ;
                PHA                     ; $00:AF9A: 48          ;
                PLB                     ; $00:AF9B: AB          ;
                REP #$20                ; $00:AF9C: C2 20       ;
                TYA                     ; $00:AF9E: 98          ;
                CLC                     ; $00:AF9F: 18          ;
                ADC #$07C0              ; $00:AFA0: 69 C0 07    ;
                AND #$0FFF              ; $00:AFA3: 29 FF 0F    ;
                TAY                     ; $00:AFA6: A8          ;
CODE_00AFA7:    LDA $1000,y             ; $00:AFA7: B9 00 10    ;
                STA $7F8002,x           ; $00:AFAA: 9F 02 80 7F ;
                INX                     ; $00:AFAE: E8          ;
                INX                     ; $00:AFAF: E8          ;
                INY                     ; $00:AFB0: C8          ;
                INY                     ; $00:AFB1: C8          ;
                DEC $02                 ; $00:AFB2: C6 02       ;
                BNE CODE_00AFA7         ; $00:AFB4: D0 F1       ;
                SEP #$20                ; $00:AFB6: E2 20       ;
                PLB                     ; $00:AFB8: AB          ;
                REP #$20                ; $00:AFB9: C2 20       ;
                LDA $021C               ; $00:AFBB: AD 1C 02    ;
                SEC                     ; $00:AFBE: 38          ;
                SBC #$0020              ; $00:AFBF: E9 20 00    ;
                STA $021C               ; $00:AFC2: 8D 1C 02    ;
                LDA $021E               ; $00:AFC5: AD 1E 02    ;
                SEC                     ; $00:AFC8: 38          ;
                SBC #$0040              ; $00:AFC9: E9 40 00    ;
                STA $021E               ; $00:AFCC: 8D 1E 02    ;
                LDA #$FFFF              ; $00:AFCF: A9 FF FF    ;
                STA $7F8002,x           ; $00:AFD2: 9F 02 80 7F ;
                TXA                     ; $00:AFD6: 8A          ;
                STA $7F8000             ; $00:AFD7: 8F 00 80 7F ;
                SEP #$30                ; $00:AFDB: E2 30       ;
                DEC $021B               ; $00:AFDD: CE 1B 02    ;
                LDA $021B               ; $00:AFE0: AD 1B 02    ;
                BNE CODE_00AFEB         ; $00:AFE3: D0 06       ;
                STZ $021A               ; $00:AFE5: 9C 1A 02    ;
                STZ $0220               ; $00:AFE8: 9C 20 02    ;
CODE_00AFEB:    RTS                     ; $00:AFEB: 60          ;

CODE_00AFEC:    REP #$20                ; $00:AFEC: C2 20       ;
                LDA $7F8000             ; $00:AFEE: AF 00 80 7F ;
                TAX                     ; $00:AFF2: AA          ;
                LDA $0218               ; $00:AFF3: AD 18 02    ;
                AND #$0003              ; $00:AFF6: 29 03 00    ;
                ASL A                   ; $00:AFF9: 0A          ;
                TAY                     ; $00:AFFA: A8          ;
                LDA DATA_00B05D,y       ; $00:AFFB: B9 5D B0    ;
                XBA                     ; $00:AFFE: EB          ;
                STA $7F8002,x           ; $00:AFFF: 9F 02 80 7F ;
                LDA #$0006              ; $00:B003: A9 06 00    ;
                XBA                     ; $00:B006: EB          ;
                STA $7F8004,x           ; $00:B007: 9F 04 80 7F ;
                PHY                     ; $00:B00B: 5A          ;
                LDA $700006             ; $00:B00C: AF 06 00 70 ;
                AND #$0001              ; $00:B010: 29 01 00    ;
                ASL A                   ; $00:B013: 0A          ;
                TAY                     ; $00:B014: A8          ;
                LDA DATA_00B06D,y       ; $00:B015: B9 6D B0    ;
                STA $7F8006,x           ; $00:B018: 9F 06 80 7F ;
                INC A                   ; $00:B01C: 1A          ;
                STA $7F8008,x           ; $00:B01D: 9F 08 80 7F ;
                INC A                   ; $00:B021: 1A          ;
                STA $7F800A,x           ; $00:B022: 9F 0A 80 7F ;
                PLY                     ; $00:B026: 7A          ;
                TXA                     ; $00:B027: 8A          ;
                CLC                     ; $00:B028: 18          ;
                ADC #$000A              ; $00:B029: 69 0A 00    ;
                TAX                     ; $00:B02C: AA          ;
                LDA DATA_00B065,y       ; $00:B02D: B9 65 B0    ;
                XBA                     ; $00:B030: EB          ;
                STA $7F8002,x           ; $00:B031: 9F 02 80 7F ;
                LDA #$0004              ; $00:B035: A9 04 00    ;
                XBA                     ; $00:B038: EB          ;
                STA $7F8004,x           ; $00:B039: 9F 04 80 7F ;
                LDA $700006             ; $00:B03D: AF 06 00 70 ;
                AND #$0001              ; $00:B041: 29 01 00    ;
                ASL A                   ; $00:B044: 0A          ;
                ADC #$0384              ; $00:B045: 69 84 03    ;
                STA $7F8006,x           ; $00:B048: 9F 06 80 7F ;
                INC A                   ; $00:B04C: 1A          ;
                STA $7F8008,x           ; $00:B04D: 9F 08 80 7F ;
                TXA                     ; $00:B051: 8A          ;
                CLC                     ; $00:B052: 18          ;
                ADC #$0008              ; $00:B053: 69 08 00    ;
                STA $7F8000             ; $00:B056: 8F 00 80 7F ;
                SEP #$20                ; $00:B05A: E2 20       ;
                RTS                     ; $00:B05C: 60          ;

DATA_00B05D:    dw $7B2C,$7B3B,$7F2B,$7F3C                      ;

DATA_00B065:    dw $7B4B,$7B5A,$7F4A,$7F5B                      ;

DATA_00B06D:    db $78,$03,$68,$03                              ;

CODE_00B071:    REP #$20                ; $00:B071: C2 20       ;
                LDA #$02FF              ; $00:B073: A9 FF 02    ;
                STA $00                 ; $00:B076: 85 00       ;
                STA $02                 ; $00:B078: 85 02       ;
                STA $04                 ; $00:B07A: 85 04       ;
                STA $06                 ; $00:B07C: 85 06       ;
                STA $08                 ; $00:B07E: 85 08       ;
                STA $0A                 ; $00:B080: 85 0A       ;
                STA $0C                 ; $00:B082: 85 0C       ;
                LDA $D1                 ; $00:B084: A5 D1       ;
                AND #$0003              ; $00:B086: 29 03 00    ;
                ASL A                   ; $00:B089: 0A          ;
                ASL A                   ; $00:B08A: 0A          ;
                TAX                     ; $00:B08B: AA          ;
                LDA #$034F              ; $00:B08C: A9 4F 03    ;
                STA $00,x               ; $00:B08F: 95 00       ;
                LDA $7F8000             ; $00:B091: AF 00 80 7F ;
                TAX                     ; $00:B095: AA          ;
                LDA $0218               ; $00:B096: AD 18 02    ;
                AND #$0003              ; $00:B099: 29 03 00    ;
                ASL A                   ; $00:B09C: 0A          ;
                TAY                     ; $00:B09D: A8          ;
                LDA DATA_00B0D2,y       ; $00:B09E: B9 D2 B0    ;
                XBA                     ; $00:B0A1: EB          ;
                STA $7F8002,x           ; $00:B0A2: 9F 02 80 7F ;
                INX                     ; $00:B0A6: E8          ;
                INX                     ; $00:B0A7: E8          ;
                LDA #$800E              ; $00:B0A8: A9 0E 80    ;
                XBA                     ; $00:B0AB: EB          ;
                STA $7F8002,x           ; $00:B0AC: 9F 02 80 7F ;
                INX                     ; $00:B0B0: E8          ;
                INX                     ; $00:B0B1: E8          ;
                LDY #$00                ; $00:B0B2: A0 00       ;
CODE_00B0B4:    LDA $0000,y             ; $00:B0B4: B9 00 00    ;
                STA $7F8002,x           ; $00:B0B7: 9F 02 80 7F ;
                INX                     ; $00:B0BB: E8          ;
                INX                     ; $00:B0BC: E8          ;
                INY                     ; $00:B0BD: C8          ;
                INY                     ; $00:B0BE: C8          ;
                CPY #$0E                ; $00:B0BF: C0 0E       ;
                BNE CODE_00B0B4         ; $00:B0C1: D0 F1       ;
                LDA #$FFFF              ; $00:B0C3: A9 FF FF    ;
                STA $7F8002,x           ; $00:B0C6: 9F 02 80 7F ;
                TXA                     ; $00:B0CA: 8A          ;
                STA $7F8000             ; $00:B0CB: 8F 00 80 7F ;
                SEP #$20                ; $00:B0CF: E2 20       ;
                RTS                     ; $00:B0D1: 60          ;

DATA_00B0D2:    db $89,$79,$98,$79,$88,$7D,$99,$7D              ;

CODE_00B0DA:    PHX                     ; $00:B0DA: DA          ;
                PHY                     ; $00:B0DB: 5A          ;
                REP #$20                ; $00:B0DC: C2 20       ;
                LDA $7F8000             ; $00:B0DE: AF 00 80 7F ;
                TAX                     ; $00:B0E2: AA          ;
                LDA $0218               ; $00:B0E3: AD 18 02    ;
                AND #$0003              ; $00:B0E6: 29 03 00    ;
                STA $00                 ; $00:B0E9: 85 00       ;
                ASL A                   ; $00:B0EB: 0A          ;
                TAY                     ; $00:B0EC: A8          ;
                LDA $D1                 ; $00:B0ED: A5 D1       ;
                AND #$00FF              ; $00:B0EF: 29 FF 00    ;
                XBA                     ; $00:B0F2: EB          ;
                LSR A                   ; $00:B0F3: 4A          ;
                LSR A                   ; $00:B0F4: 4A          ;
                ADC DATA_00B1C2,y       ; $00:B0F5: 79 C2 B1    ;
                STA $02                 ; $00:B0F8: 85 02       ;
                XBA                     ; $00:B0FA: EB          ;
                STA $7F8002,x           ; $00:B0FB: 9F 02 80 7F ;
                INX                     ; $00:B0FF: E8          ;
                INX                     ; $00:B100: E8          ;
                LDA #$8004              ; $00:B101: A9 04 80    ;
                XBA                     ; $00:B104: EB          ;
                STA $7F8002,x           ; $00:B105: 9F 02 80 7F ;
                INX                     ; $00:B109: E8          ;
                INX                     ; $00:B10A: E8          ;
                LDA $D1                 ; $00:B10B: A5 D1       ;
                AND #$0003              ; $00:B10D: 29 03 00    ;
                ASL A                   ; $00:B110: 0A          ;
                ASL A                   ; $00:B111: 0A          ;
                ADC $00                 ; $00:B112: 65 00       ;
                TAY                     ; $00:B114: A8          ;
                LDA $00B0,y             ; $00:B115: B9 B0 00    ;
                AND #$00FF              ; $00:B118: 29 FF 00    ;
                CLC                     ; $00:B11B: 18          ;
                ADC #$0341              ; $00:B11C: 69 41 03    ;
                STA $7F8002,x           ; $00:B11F: 9F 02 80 7F ;
                INX                     ; $00:B123: E8          ;
                INX                     ; $00:B124: E8          ;
                ORA #$0010              ; $00:B125: 09 10 00    ;
                STA $7F8002,x           ; $00:B128: 9F 02 80 7F ;
                INX                     ; $00:B12C: E8          ;
                INX                     ; $00:B12D: E8          ;
                LDA $00                 ; $00:B12E: A5 00       ;
                BNE CODE_00B15A         ; $00:B130: D0 28       ;
                LDA $0070,y             ; $00:B132: B9 70 00    ;
                AND #$00FF              ; $00:B135: 29 FF 00    ;
                ASL A                   ; $00:B138: 0A          ;
                TAY                     ; $00:B139: A8          ;
                LDA $02                 ; $00:B13A: A5 02       ;
                CLC                     ; $00:B13C: 18          ;
                ADC #$001F              ; $00:B13D: 69 1F 00    ;
                XBA                     ; $00:B140: EB          ;
                STA $7F8002,x           ; $00:B141: 9F 02 80 7F ;
                INX                     ; $00:B145: E8          ;
                INX                     ; $00:B146: E8          ;
                LDA #$0002              ; $00:B147: A9 02 00    ;
                XBA                     ; $00:B14A: EB          ;
                STA $7F8002,x           ; $00:B14B: 9F 02 80 7F ;
                INX                     ; $00:B14F: E8          ;
                INX                     ; $00:B150: E8          ;
                LDA DATA_00B1CA,y       ; $00:B151: B9 CA B1    ;
                STA $7F8002,x           ; $00:B154: 9F 02 80 7F ;
                INX                     ; $00:B158: E8          ;
                INX                     ; $00:B159: E8          ;
CODE_00B15A:    LDA #$FFFF              ; $00:B15A: A9 FF FF    ;
                STA $7F8002,x           ; $00:B15D: 9F 02 80 7F ;
                TXA                     ; $00:B161: 8A          ;
                STA $7F8000             ; $00:B162: 8F 00 80 7F ;
                SEP #$20                ; $00:B166: E2 20       ;
                PLY                     ; $00:B168: 7A          ;
                PLX                     ; $00:B169: FA          ;
                RTS                     ; $00:B16A: 60          ;

CODE_00B16B:    PHX                     ; $00:B16B: DA          ;
                PHY                     ; $00:B16C: 5A          ;
                REP #$20                ; $00:B16D: C2 20       ;
                LDA $7F8000             ; $00:B16F: AF 00 80 7F ;
                TAX                     ; $00:B173: AA          ;
                LDA $D1                 ; $00:B174: A5 D1       ;
                AND #$00FF              ; $00:B176: 29 FF 00    ;
                XBA                     ; $00:B179: EB          ;
                LSR A                   ; $00:B17A: 4A          ;
                LSR A                   ; $00:B17B: 4A          ;
                ADC #$7D62              ; $00:B17C: 69 62 7D    ;
                XBA                     ; $00:B17F: EB          ;
                STA $7F8002,x           ; $00:B180: 9F 02 80 7F ;
                INX                     ; $00:B184: E8          ;
                INX                     ; $00:B185: E8          ;
                LDA #$8004              ; $00:B186: A9 04 80    ;
                XBA                     ; $00:B189: EB          ;
                STA $7F8002,x           ; $00:B18A: 9F 02 80 7F ;
                INX                     ; $00:B18E: E8          ;
                INX                     ; $00:B18F: E8          ;
                LDA $D1                 ; $00:B190: A5 D1       ;
                AND #$0003              ; $00:B192: 29 03 00    ;
                ASL A                   ; $00:B195: 0A          ;
                ASL A                   ; $00:B196: 0A          ;
                TAY                     ; $00:B197: A8          ;
                LDA $00C1,y             ; $00:B198: B9 C1 00    ;
                AND #$00FF              ; $00:B19B: 29 FF 00    ;
                CLC                     ; $00:B19E: 18          ;
                ADC #$0341              ; $00:B19F: 69 41 03    ;
                STA $7F8002,x           ; $00:B1A2: 9F 02 80 7F ;
                INX                     ; $00:B1A6: E8          ;
                INX                     ; $00:B1A7: E8          ;
                ORA #$0010              ; $00:B1A8: 09 10 00    ;
                STA $7F8002,x           ; $00:B1AB: 9F 02 80 7F ;
                INX                     ; $00:B1AF: E8          ;
                INX                     ; $00:B1B0: E8          ;
                LDA #$FFFF              ; $00:B1B1: A9 FF FF    ;
                STA $7F8002,x           ; $00:B1B4: 9F 02 80 7F ;
                TXA                     ; $00:B1B8: 8A          ;
                STA $7F8000             ; $00:B1B9: 8F 00 80 7F ;
                SEP #$20                ; $00:B1BD: E2 20       ;
                PLY                     ; $00:B1BF: 7A          ;
                PLX                     ; $00:B1C0: FA          ;
                RTS                     ; $00:B1C1: 60          ;

DATA_00B1C2:    db $71,$79,$7F,$79,$70,$7D,$61,$79              ;

DATA_00B1CA:    db $51,$03,$9B,$03                              ;

CODE_00B1CE:    REP #$30                ; $00:B1CE: C2 30       ;
                LDA $0218               ; $00:B1D0: AD 18 02    ;
                AND #$0003              ; $00:B1D3: 29 03 00    ;
                ASL A                   ; $00:B1D6: 0A          ;
                TAY                     ; $00:B1D7: A8          ;
                PHY                     ; $00:B1D8: 5A          ;
                LDA $0221               ; $00:B1D9: AD 21 02    ;
                AND #$000F              ; $00:B1DC: 29 0F 00    ;
                XBA                     ; $00:B1DF: EB          ;
                LSR A                   ; $00:B1E0: 4A          ;
                LSR A                   ; $00:B1E1: 4A          ;
                LSR A                   ; $00:B1E2: 4A          ;
                STA $0E                 ; $00:B1E3: 85 0E       ;
                TAX                     ; $00:B1E5: AA          ;
                LDA DATA_00B34A,y       ; $00:B1E6: B9 4A B3    ;
                SEC                     ; $00:B1E9: 38          ;
                SBC $0E                 ; $00:B1EA: E5 0E       ;
                STA $00                 ; $00:B1EC: 85 00       ;
                LDA DATA_00B35A,y       ; $00:B1EE: B9 5A B3    ;
                STA $02                 ; $00:B1F1: 85 02       ;
                LDA $0221               ; $00:B1F3: AD 21 02    ;
                AND #$000F              ; $00:B1F6: 29 0F 00    ;
                ASL A                   ; $00:B1F9: 0A          ;
                TAY                     ; $00:B1FA: A8          ;
                LDA DATA_00B36A,y       ; $00:B1FB: B9 6A B3    ;
                STA $08                 ; $00:B1FE: 85 08       ;
                STZ $04                 ; $00:B200: 64 04       ;
                LDA $7F8000             ; $00:B202: AF 00 80 7F ;
                TAX                     ; $00:B206: AA          ;
                JSR CODE_00B27C         ; $00:B207: 20 7C B2    ;
                PLY                     ; $00:B20A: 7A          ;
                BEQ CODE_00B224         ; $00:B20B: F0 17       ;
                CPY #$0004              ; $00:B20D: C0 04 00    ;
                BEQ CODE_00B224         ; $00:B210: F0 12       ;
                LDA $00                 ; $00:B212: A5 00       ;
                AND #$7FE0              ; $00:B214: 29 E0 7F    ;
                EOR #$0400              ; $00:B217: 49 00 04    ;
                STA $00                 ; $00:B21A: 85 00       ;
                LDA DATA_00B362,y       ; $00:B21C: B9 62 B3    ;
                STA $02                 ; $00:B21F: 85 02       ;
                JSR CODE_00B27C         ; $00:B221: 20 7C B2    ;
CODE_00B224:    PHY                     ; $00:B224: 5A          ;
                LDA DATA_00B352,y       ; $00:B225: B9 52 B3    ;
                CLC                     ; $00:B228: 18          ;
                ADC $0E                 ; $00:B229: 65 0E       ;
                STA $00                 ; $00:B22B: 85 00       ;
                LDA DATA_00B35A,y       ; $00:B22D: B9 5A B3    ;
                STA $02                 ; $00:B230: 85 02       ;
                LDA $0221               ; $00:B232: AD 21 02    ;
                AND #$000F              ; $00:B235: 29 0F 00    ;
                ASL A                   ; $00:B238: 0A          ;
                TAY                     ; $00:B239: A8          ;
                LDA DATA_00B372,y       ; $00:B23A: B9 72 B3    ;
                STA $08                 ; $00:B23D: 85 08       ;
                STZ $04                 ; $00:B23F: 64 04       ;
                JSR CODE_00B27C         ; $00:B241: 20 7C B2    ;
                PLY                     ; $00:B244: 7A          ;
                BEQ CODE_00B25E         ; $00:B245: F0 17       ;
                CPY #$0004              ; $00:B247: C0 04 00    ;
                BEQ CODE_00B25E         ; $00:B24A: F0 12       ;
                LDA $00                 ; $00:B24C: A5 00       ;
                AND #$7FE0              ; $00:B24E: 29 E0 7F    ;
                EOR #$0400              ; $00:B251: 49 00 04    ;
                STA $00                 ; $00:B254: 85 00       ;
                LDA DATA_00B362,y       ; $00:B256: B9 62 B3    ;
                STA $02                 ; $00:B259: 85 02       ;
                JSR CODE_00B27C         ; $00:B25B: 20 7C B2    ;
CODE_00B25E:    LDA #$FFFF              ; $00:B25E: A9 FF FF    ;
                STA $7F8002,x           ; $00:B261: 9F 02 80 7F ;
                TXA                     ; $00:B265: 8A          ;
                STA $7F8000             ; $00:B266: 8F 00 80 7F ;
                SEP #$30                ; $00:B26A: E2 30       ;
                INC $0221               ; $00:B26C: EE 21 02    ;
                LDA $0221               ; $00:B26F: AD 21 02    ;
                CMP #$04                ; $00:B272: C9 04       ;
                BNE CODE_00B27B         ; $00:B274: D0 05       ;
                INC $E0                 ; $00:B276: E6 E0       ;
                STZ $0222               ; $00:B278: 9C 22 02    ;
CODE_00B27B:    RTL                     ; $00:B27B: 6B          ;

CODE_00B27C:    PHY                     ; $00:B27C: 5A          ;
                LDA $00                 ; $00:B27D: A5 00       ;
                XBA                     ; $00:B27F: EB          ;
                STA $7F8002,x           ; $00:B280: 9F 02 80 7F ;
                INX                     ; $00:B284: E8          ;
                INX                     ; $00:B285: E8          ;
                LDA $02                 ; $00:B286: A5 02       ;
                XBA                     ; $00:B288: EB          ;
                STA $7F8002,x           ; $00:B289: 9F 02 80 7F ;
                INX                     ; $00:B28D: E8          ;
                INX                     ; $00:B28E: E8          ;
                LSR $02                 ; $00:B28F: 46 02       ;
                LDY $04                 ; $00:B291: A4 04       ;
CODE_00B293:    LDA ($08),y             ; $00:B293: B1 08       ;
                STA $7F8002,x           ; $00:B295: 9F 02 80 7F ;
                INX                     ; $00:B299: E8          ;
                INX                     ; $00:B29A: E8          ;
                INY                     ; $00:B29B: C8          ;
                INY                     ; $00:B29C: C8          ;
                DEC $02                 ; $00:B29D: C6 02       ;
                BNE CODE_00B293         ; $00:B29F: D0 F2       ;
                STY $04                 ; $00:B2A1: 84 04       ;
                PLY                     ; $00:B2A3: 7A          ;
                RTS                     ; $00:B2A4: 60          ;

CODE_00B2A5:    REP #$20                ; $00:B2A5: C2 20       ;
                LDA $7F8000             ; $00:B2A7: AF 00 80 7F ;
                TAX                     ; $00:B2AB: AA          ;
                LDA $0218               ; $00:B2AC: AD 18 02    ;
                AND #$0003              ; $00:B2AF: 29 03 00    ;
                ASL A                   ; $00:B2B2: 0A          ;
                TAY                     ; $00:B2B3: A8          ;
                PHY                     ; $00:B2B4: 5A          ;
                LDA $0221               ; $00:B2B5: AD 21 02    ;
                AND #$000F              ; $00:B2B8: 29 0F 00    ;
                XBA                     ; $00:B2BB: EB          ;
                LSR A                   ; $00:B2BC: 4A          ;
                LSR A                   ; $00:B2BD: 4A          ;
                LSR A                   ; $00:B2BE: 4A          ;
                STA $0E                 ; $00:B2BF: 85 0E       ;
                TAX                     ; $00:B2C1: AA          ;
                LDA DATA_00B34A,y       ; $00:B2C2: B9 4A B3    ;
                CLC                     ; $00:B2C5: 18          ;
                ADC $0E                 ; $00:B2C6: 65 0E       ;
                STA $00                 ; $00:B2C8: 85 00       ;
                LDA DATA_00B35A,y       ; $00:B2CA: B9 5A B3    ;
                STA $02                 ; $00:B2CD: 85 02       ;
                LDA #$B42A              ; $00:B2CF: A9 2A B4    ;
                STA $08                 ; $00:B2D2: 85 08       ;
                STZ $04                 ; $00:B2D4: 64 04       ;
                LDA $7F8000             ; $00:B2D6: AF 00 80 7F ;
                TAX                     ; $00:B2DA: AA          ;
                JSR CODE_00B27C         ; $00:B2DB: 20 7C B2    ;
                PLY                     ; $00:B2DE: 7A          ;
                BEQ CODE_00B2F7         ; $00:B2DF: F0 16       ;
                CPY #$04                ; $00:B2E1: C0 04       ;
                BEQ CODE_00B2F7         ; $00:B2E3: F0 12       ;
                LDA $00                 ; $00:B2E5: A5 00       ;
                AND #$7FE0              ; $00:B2E7: 29 E0 7F    ;
                EOR #$0400              ; $00:B2EA: 49 00 04    ;
                STA $00                 ; $00:B2ED: 85 00       ;
                LDA DATA_00B362,y       ; $00:B2EF: B9 62 B3    ;
                STA $02                 ; $00:B2F2: 85 02       ;
                JSR CODE_00B27C         ; $00:B2F4: 20 7C B2    ;
CODE_00B2F7:    PHY                     ; $00:B2F7: 5A          ;
                LDA DATA_00B352,y       ; $00:B2F8: B9 52 B3    ;
                SEC                     ; $00:B2FB: 38          ;
                SBC $0E                 ; $00:B2FC: E5 0E       ;
                STA $00                 ; $00:B2FE: 85 00       ;
                LDA DATA_00B35A,y       ; $00:B300: B9 5A B3    ;
                STA $02                 ; $00:B303: 85 02       ;
                LDA #$B42A              ; $00:B305: A9 2A B4    ;
                STA $08                 ; $00:B308: 85 08       ;
                STZ $04                 ; $00:B30A: 64 04       ;
                JSR CODE_00B27C         ; $00:B30C: 20 7C B2    ;
                PLY                     ; $00:B30F: 7A          ;
                BEQ CODE_00B328         ; $00:B310: F0 16       ;
                CPY #$04                ; $00:B312: C0 04       ;
                BEQ CODE_00B328         ; $00:B314: F0 12       ;
                LDA $00                 ; $00:B316: A5 00       ;
                AND #$7FE0              ; $00:B318: 29 E0 7F    ;
                EOR #$0400              ; $00:B31B: 49 00 04    ;
                STA $00                 ; $00:B31E: 85 00       ;
                LDA DATA_00B362,y       ; $00:B320: B9 62 B3    ;
                STA $02                 ; $00:B323: 85 02       ;
                JSR CODE_00B27C         ; $00:B325: 20 7C B2    ;
CODE_00B328:    LDA #$FFFF              ; $00:B328: A9 FF FF    ;
                STA $7F8002,x           ; $00:B32B: 9F 02 80 7F ;
                TXA                     ; $00:B32F: 8A          ;
                STA $7F8000             ; $00:B330: 8F 00 80 7F ;
                SEP #$20                ; $00:B334: E2 20       ;
                DEC $0221               ; $00:B336: CE 21 02    ;
                LDA $0221               ; $00:B339: AD 21 02    ;
                BPL CODE_00B349         ; $00:B33C: 10 0B       ;
                STZ $0221               ; $00:B33E: 9C 21 02    ;
                LDA #$02                ; $00:B341: A9 02       ;
                STA $E0                 ; $00:B343: 85 E0       ;
                STZ $D2                 ; $00:B345: 64 D2       ;
                STZ $1A                 ; $00:B347: 64 1A       ;
CODE_00B349:    RTL                     ; $00:B349: 6B          ;

DATA_00B34A:    db $EF,$7A,$FE,$7A,$EE,$7E,$FF,$7E              ;

DATA_00B352:    db $0F,$7B,$1E,$7B,$0E,$7F,$1F,$7F              ;

DATA_00B35A:    db $16,$00,$04,$00,$16,$00,$02,$00              ;

DATA_00B362:    db $00,$00,$12,$00,$00,$00,$14,$00              ;

DATA_00B36A:    db $BC,$B3,$A6,$B3,$90,$B3,$7A,$B3              ;

DATA_00B372:    db $D2,$B3,$E8,$B3,$FE,$B3,$14,$B4              ;
                db $88,$03,$89,$03,$89,$03,$89,$03              ;
                db $89,$03,$89,$03,$89,$03,$89,$03              ;
                db $89,$03,$89,$03,$88,$43,$8A,$03              ;
                db $83,$03,$95,$03,$96,$03,$97,$03              ;
                db $83,$03,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$8A,$43,$8A,$03,$FF,$02              ;
                db $FF,$02,$FF,$02,$98,$03,$99,$03              ;
                db $9A,$03,$83,$03,$FF,$02,$5F,$03              ;
                db $8A,$43,$8A,$03,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$FF,$02,$8A,$43              ;
                db $8A,$03,$FF,$02,$FF,$02,$4F,$03              ;
                db $6F,$03,$7F,$03,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$8A,$43,$8A,$03              ;
                db $FF,$02,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$8A,$43,$8A,$03,$FF,$02              ;
                db $FF,$02,$FF,$02,$81,$03,$83,$03              ;
                db $97,$03,$FF,$02,$FF,$02,$FF,$02              ;
                db $8A,$43,$88,$83,$89,$83,$89,$83              ;
                db $89,$83,$89,$83,$89,$83,$89,$83              ;
                db $89,$83,$89,$83,$89,$83,$88,$C3              ;
                db $FF,$02,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$FF,$02,$FF,$02              ;
                db $FF,$02,$FF,$02,$FF,$02                      ;

CODE_00B440:    LDA $F6                 ; $00:B440: A5 F6       ;
                ORA $F7                 ; $00:B442: 05 F7       ;
                AND #$80                ; $00:B444: 29 80       ;
                STA $00                 ; $00:B446: 85 00       ;
                LDA $F4                 ; $00:B448: A5 F4       ;
                ORA $F5                 ; $00:B44A: 05 F5       ;
                AND #$3C                ; $00:B44C: 29 3C       ;
                ORA $00                 ; $00:B44E: 05 00       ;
                BEQ CODE_00B4B0         ; $00:B450: F0 5E       ;
                STA $00                 ; $00:B452: 85 00       ;
                AND #$2C                ; $00:B454: 29 2C       ;
                BEQ CODE_00B4B3         ; $00:B456: F0 5B       ;
                LDA $0222               ; $00:B458: AD 22 02    ;
                EOR #$04                ; $00:B45B: 49 04       ;
                STA $0222               ; $00:B45D: 8D 22 02    ;
                REP #$20                ; $00:B460: C2 20       ;
                LDA $7F8000             ; $00:B462: AF 00 80 7F ;
                TAX                     ; $00:B466: AA          ;
                LDA $0218               ; $00:B467: AD 18 02    ;
                AND #$0003              ; $00:B46A: 29 03 00    ;
                ASL A                   ; $00:B46D: 0A          ;
                TAY                     ; $00:B46E: A8          ;
                LDA DATA_00B5BA,y       ; $00:B46F: B9 BA B5    ;
                XBA                     ; $00:B472: EB          ;
                STA $7F8002,x           ; $00:B473: 9F 02 80 7F ;
                LDA #$8006              ; $00:B477: A9 06 80    ;
                XBA                     ; $00:B47A: EB          ;
                STA $7F8004,x           ; $00:B47B: 9F 04 80 7F ;
                LDA #$02FF              ; $00:B47F: A9 FF 02    ;
                STA $7F8006,x           ; $00:B482: 9F 06 80 7F ;
                STA $7F8008,x           ; $00:B486: 9F 08 80 7F ;
                STA $7F800A,x           ; $00:B48A: 9F 0A 80 7F ;
                PHX                     ; $00:B48E: DA          ;
                LDX $0222               ; $00:B48F: AE 22 02    ;
                LDA #$034F              ; $00:B492: A9 4F 03    ;
                STA $7F8006,x           ; $00:B495: 9F 06 80 7F ;
                PLX                     ; $00:B499: FA          ;
                LDA #$FFFF              ; $00:B49A: A9 FF FF    ;
                STA $7F800C,x           ; $00:B49D: 9F 0C 80 7F ;
                TXA                     ; $00:B4A1: 8A          ;
                CLC                     ; $00:B4A2: 18          ;
                ADC #$000C              ; $00:B4A3: 69 0C 00    ;
                STA $7F8000             ; $00:B4A6: 8F 00 80 7F ;
                SEP #$20                ; $00:B4AA: E2 20       ;
                LDA #$23                ; $00:B4AC: A9 23       ;
                STA $63                 ; $00:B4AE: 85 63       ;
CODE_00B4B0:    JMP CODE_00B58A         ; $00:B4B0: 4C 8A B5    ;

CODE_00B4B3:    LDA $00                 ; $00:B4B3: A5 00       ;
                AND #$90                ; $00:B4B5: 29 90       ;
                BNE CODE_00B4C0         ; $00:B4B7: D0 07       ;
CODE_00B4B9:    LDA #$22                ; $00:B4B9: A9 22       ;
                STA $63                 ; $00:B4BB: 85 63       ;
                JMP CODE_00B58A         ; $00:B4BD: 4C 8A B5    ;

CODE_00B4C0:    LDA #$05                ; $00:B4C0: A9 05       ;
                STA $63                 ; $00:B4C2: 85 63       ;
                INC $E0                 ; $00:B4C4: E6 E0       ;
                LDA $0222               ; $00:B4C6: AD 22 02    ;
                BEQ CODE_00B4B9         ; $00:B4C9: F0 EE       ;
                LDA $0218               ; $00:B4CB: AD 18 02    ;
                AND #$03                ; $00:B4CE: 29 03       ;
                STA $00                 ; $00:B4D0: 85 00       ;
                LDA $D1                 ; $00:B4D2: A5 D1       ;
                AND #$03                ; $00:B4D4: 29 03       ;
                ASL A                   ; $00:B4D6: 0A          ;
                ASL A                   ; $00:B4D7: 0A          ;
                ADC $00                 ; $00:B4D8: 65 00       ;
                TAX                     ; $00:B4DA: AA          ;
                LDA #$FF                ; $00:B4DB: A9 FF       ;
                STA $B0,x               ; $00:B4DD: 95 B0       ;
                STA $C0,x               ; $00:B4DF: 95 C0       ;
                LDA #$00                ; $00:B4E1: A9 00       ;
                STA $70,x               ; $00:B4E3: 95 70       ;
                JSR CODE_00A82C         ; $00:B4E5: 20 2C A8    ;
                REP #$20                ; $00:B4E8: C2 20       ;
                LDA $7F8000             ; $00:B4EA: AF 00 80 7F ;
                TAX                     ; $00:B4EE: AA          ;
                LDA $0218               ; $00:B4EF: AD 18 02    ;
                AND #$0003              ; $00:B4F2: 29 03 00    ;
                ASL A                   ; $00:B4F5: 0A          ;
                TAY                     ; $00:B4F6: A8          ;
                LDA DATA_00B5C2,y       ; $00:B4F7: B9 C2 B5    ;
                STA $00                 ; $00:B4FA: 85 00       ;
                LDA $00D1               ; $00:B4FC: AD D1 00    ;
                AND #$0003              ; $00:B4FF: 29 03 00    ;
                XBA                     ; $00:B502: EB          ;
                LSR A                   ; $00:B503: 4A          ;
                LSR A                   ; $00:B504: 4A          ;
                ADC $00                 ; $00:B505: 65 00       ;
                STA $00                 ; $00:B507: 85 00       ;
                LDA DATA_00B5CA,y       ; $00:B509: B9 CA B5    ;
                STA $02                 ; $00:B50C: 85 02       ;
                STZ $0E                 ; $00:B50E: 64 0E       ;
                JSR CODE_00B58B         ; $00:B510: 20 8B B5    ;
                LDA $0218               ; $00:B513: AD 18 02    ;
                AND #$0003              ; $00:B516: 29 03 00    ;
                CMP #$0001              ; $00:B519: C9 01 00    ;
                BNE CODE_00B53A         ; $00:B51C: D0 1C       ;
                PHY                     ; $00:B51E: 5A          ;
                LDA #$7D60              ; $00:B51F: A9 60 7D    ;
                STA $00                 ; $00:B522: 85 00       ;
                LDA $00D1               ; $00:B524: AD D1 00    ;
                AND #$0003              ; $00:B527: 29 03 00    ;
                XBA                     ; $00:B52A: EB          ;
                LSR A                   ; $00:B52B: 4A          ;
                LSR A                   ; $00:B52C: 4A          ;
                ADC $00                 ; $00:B52D: 65 00       ;
                STA $00                 ; $00:B52F: 85 00       ;
                LDA #$000A              ; $00:B531: A9 0A 00    ;
                STA $02                 ; $00:B534: 85 02       ;
                JSR CODE_00B58B         ; $00:B536: 20 8B B5    ;
                PLY                     ; $00:B539: 7A          ;
CODE_00B53A:    LDA DATA_00B5C2,y       ; $00:B53A: B9 C2 B5    ;
                STA $00                 ; $00:B53D: 85 00       ;
                LDA $00D1               ; $00:B53F: AD D1 00    ;
                AND #$0003              ; $00:B542: 29 03 00    ;
                XBA                     ; $00:B545: EB          ;
                LSR A                   ; $00:B546: 4A          ;
                LSR A                   ; $00:B547: 4A          ;
                ADC #$0020              ; $00:B548: 69 20 00    ;
                ADC $00                 ; $00:B54B: 65 00       ;
                STA $00                 ; $00:B54D: 85 00       ;
                LDA DATA_00B5CA,y       ; $00:B54F: B9 CA B5    ;
                STA $02                 ; $00:B552: 85 02       ;
                JSR CODE_00B58B         ; $00:B554: 20 8B B5    ;
                LDA $0218               ; $00:B557: AD 18 02    ;
                AND #$0003              ; $00:B55A: 29 03 00    ;
                CMP #$0001              ; $00:B55D: C9 01 00    ;
                BNE CODE_00B57C         ; $00:B560: D0 1A       ;
                LDA #$7D80              ; $00:B562: A9 80 7D    ;
                STA $00                 ; $00:B565: 85 00       ;
                LDA $00D1               ; $00:B567: AD D1 00    ;
                AND #$0003              ; $00:B56A: 29 03 00    ;
                XBA                     ; $00:B56D: EB          ;
                LSR A                   ; $00:B56E: 4A          ;
                LSR A                   ; $00:B56F: 4A          ;
                ADC $00                 ; $00:B570: 65 00       ;
                STA $00                 ; $00:B572: 85 00       ;
                LDA #$000A              ; $00:B574: A9 0A 00    ;
                STA $02                 ; $00:B577: 85 02       ;
                JSR CODE_00B58B         ; $00:B579: 20 8B B5    ;
CODE_00B57C:    LDA #$FFFF              ; $00:B57C: A9 FF FF    ;
                STA $7F8002,x           ; $00:B57F: 9F 02 80 7F ;
                TXA                     ; $00:B583: 8A          ;
                STA $7F8000             ; $00:B584: 8F 00 80 7F ;
                SEP #$20                ; $00:B588: E2 20       ;
CODE_00B58A:    RTL                     ; $00:B58A: 6B          ;

CODE_00B58B:    PHY                     ; $00:B58B: 5A          ;
                LDA $00                 ; $00:B58C: A5 00       ;
                XBA                     ; $00:B58E: EB          ;
                STA $7F8002,x           ; $00:B58F: 9F 02 80 7F ;
                INX                     ; $00:B593: E8          ;
                INX                     ; $00:B594: E8          ;
                LDA $02                 ; $00:B595: A5 02       ;
                XBA                     ; $00:B597: EB          ;
                STA $7F8002,x           ; $00:B598: 9F 02 80 7F ;
                XBA                     ; $00:B59C: EB          ;
                LSR A                   ; $00:B59D: 4A          ;
                AND #$00FF              ; $00:B59E: 29 FF 00    ;
                STA $04                 ; $00:B5A1: 85 04       ;
                INX                     ; $00:B5A3: E8          ;
                INX                     ; $00:B5A4: E8          ;
CODE_00B5A5:    LDY $0E                 ; $00:B5A5: A4 0E       ;
                LDA DATA_00B5D2,y       ; $00:B5A7: B9 D2 B5    ;
                STA $7F8002,x           ; $00:B5AA: 9F 02 80 7F ;
                INC $0E                 ; $00:B5AE: E6 0E       ;
                INC $0E                 ; $00:B5B0: E6 0E       ;
                INX                     ; $00:B5B2: E8          ;
                INX                     ; $00:B5B3: E8          ;
                DEC $04                 ; $00:B5B4: C6 04       ;
                BNE CODE_00B5A5         ; $00:B5B6: D0 ED       ;
                PLY                     ; $00:B5B8: 7A          ;
                RTS                     ; $00:B5B9: 60          ;

DATA_00B5BA:    db $12,$7B,$01,$7F,$11,$7F,$02,$7B              ;

DATA_00B5C2:    db $70,$79,$7F,$79,$6F,$7D,$60,$79              ;

DATA_00B5CA:    db $0C,$00,$02,$00,$0C,$00,$0C,$00              ;

DATA_00B5D2:    db $60,$03,$61,$03,$62,$03,$63,$03              ;
                db $FF,$02,$FF,$02,$70,$03,$71,$03              ;
                db $72,$03,$73,$03,$FF,$02,$FF,$02              ;

DATA_00B5EA:    db $00,$01,$FF,$07,$08,$09,$0A,$7F              ;
                db $17,$18,$19,$1A,$7F,$07,$08,$09              ;
                db $0A,$0E,$17,$18,$19,$1A,$1E,$17              ;
                db $18,$19,$1A,$7F,$7F,$7F,$0B,$0C              ;
                db $0D,$07,$08,$09,$0A,$0F,$17,$18              ;
                db $19,$1A,$1F,$1B,$1C,$1D,$20,$1B              ;
                db $1C,$1D,$21,$1B,$1C,$1D,$30,$1B              ;
                db $1C,$1D,$31,$65,$66,$67,$75,$76              ;
                db $77                                          ;

CODE_00B62B:    PHB                     ; $00:B62B: 8B          ;
                PHK                     ; $00:B62C: 4B          ;
                PLB                     ; $00:B62D: AB          ;
                LDA $0211               ; $00:B62E: AD 11 02    ;
                BEQ CODE_00B63D         ; $00:B631: F0 0A       ;
                DEC $0211               ; $00:B633: CE 11 02    ;
                BNE CODE_00B63D         ; $00:B636: D0 05       ;
                JSR CODE_00B925         ; $00:B638: 20 25 B9    ;
                INC $DE                 ; $00:B63B: E6 DE       ;
CODE_00B63D:    PLB                     ; $00:B63D: AB          ;
                RTS                     ; $00:B63E: 60          ;

CODE_00B63F:    PHB                     ; $00:B63F: 8B          ;
                PHK                     ; $00:B640: 4B          ;
                PLB                     ; $00:B641: AB          ;
                DEC $020E               ; $00:B642: CE 0E 02    ;\ Decrease timer (used for making Mario, toad, move the carpet bird/pidget, move luigi's hand, and birdo's tail move)
                BNE CODE_00B65D         ; $00:B645: D0 16       ;/ If it is not zero branch
                JSR CODE_00B6DA         ; $00:B647: 20 DA B6    ; Move luigi's hand
                JSR CODE_00B748         ; $00:B64A: 20 48 B7    ; Move toad
                JSR CODE_00B7BD         ; $00:B64D: 20 BD B7    ; Move birdo's tail
                JSR CODE_00B88C         ; $00:B650: 20 8C B8    ; Move pidget
                JSR CODE_00B8B5         ; $00:B653: 20 B5 B8    ; Move Mario
                LDA #$09                ; $00:B656: A9 09       ;\ Reset timer
                STA $020E               ; $00:B658: 8D 0E 02    ;/
                STA $DE                 ; $00:B65B: 85 DE       ; Upload tilemap
CODE_00B65D:    DEC $0210               ; $00:B65D: CE 10 02    ;\ If it is not time to make bowser talk and luigi's head move, branch
                BNE CODE_00B66F         ; $00:B660: D0 0D       ;/
                JSR CODE_00B6B9         ; $00:B662: 20 B9 B6    ; Move luigi's head
                JSR CODE_00B970         ; $00:B665: 20 70 B9    ; Move bowser
                LDA #$10                ; $00:B668: A9 10       ;\ Reset timer
                STA $0210               ; $00:B66A: 8D 10 02    ;/
                STA $DE                 ; $00:B66D: 85 DE       ; Upload tilemap
CODE_00B66F:    DEC $0211               ; $00:B66F: CE 11 02    ;\ If it is not time to make peach talk and birdo talk, branch
                BNE CODE_00B681         ; $00:B672: D0 0D       ;/
                JSR CODE_00B723         ; $00:B674: 20 23 B7    ; Move peach
                JSR CODE_00B79C         ; $00:B677: 20 9C B7    ; Move birdo
                LDA #$20                ; $00:B67A: A9 20       ;\ Reset timer
                STA $0211               ; $00:B67C: 8D 11 02    ;/
                STA $DE                 ; $00:B67F: 85 DE       ; Upload tilemap
CODE_00B681:    PLB                     ; $00:B681: AB          ;
                RTS                     ; $00:B682: 60          ;

CODE_00B683:    PHB                     ; $00:B683: 8B          ;
                PHK                     ; $00:B684: 4B          ;
                PLB                     ; $00:B685: AB          ;
                REP #$30                ; $00:B686: C2 30       ; Upload BG1 tilemap to RAM
                LDX.w #DATA_3C8000      ; $00:B688: A2 00 80    ; Source low and high byte
                LDY #$0000              ; $00:B68B: A0 00 00    ; Destination low and high byte
                LDA #$07FF              ; $00:B68E: A9 FF 07    ; Amount of byte to transfer
                MVN $7F, DATA_3C8000>>16    ; $00:B691: 54 7F 3C    ; Transfer $3C:8000 -> $7F:0000
                SEP #$30                ; $00:B694: E2 30       ;
                PLB                     ; $00:B696: AB          ;
                LDA #$0B                ; $00:B697: A9 0B       ;\
                STA $020E               ; $00:B699: 8D 0E 02    ; |
                LDA #$08                ; $00:B69C: A9 08       ; |
                STA $020F               ; $00:B69E: 8D 0F 02    ; | Set timers
                LDA #$10                ; $00:B6A1: A9 10       ; |
                STA $0210               ; $00:B6A3: 8D 10 02    ; |
                LDA #$20                ; $00:B6A6: A9 20       ; |
                STA $0211               ; $00:B6A8: 8D 11 02    ;/
                LDA #$01                ; $00:B6AB: A9 01       ;\ Upload $7F:0000 to BG1 tilemap
                STA $DE                 ; $00:B6AD: 85 DE       ;/
                STZ $0212               ; $00:B6AF: 9C 12 02    ;
                LDA #$60                ; $00:B6B2: A9 60       ;\
                STA $22                 ; $00:B6B4: 85 22       ; | Set flash timer for the "All-Stars" text on the title screen
                STZ $23                 ; $00:B6B6: 64 23       ;/
                RTS                     ; $00:B6B8: 60          ;

CODE_00B6B9:    LDA #$00                ; $00:B6B9: A9 00       ;\ Source bank
                STA $02                 ; $00:B6BB: 85 02       ;/
                REP #$30                ; $00:B6BD: C2 30       ;
                LDA $0200               ; $00:B6BF: AD 00 02    ; Get frame
                AND #$0003              ; $00:B6C2: 29 03 00    ;
                ASL A                   ; $00:B6C5: 0A          ;
                TAX                     ; $00:B6C6: AA          ;
                LDA DATA_00B705,x       ; $00:B6C7: BD 05 B7    ;\ Source low and high byte
                STA $00                 ; $00:B6CA: 85 00       ;/
                LDA #$03A6              ; $00:B6CC: A9 A6 03    ;\ Destination
                STA $04                 ; $00:B6CF: 85 04       ;/
                JSR CODE_00B9AB         ; $00:B6D1: 20 AB B9    ; Put tilemap in RAM
                SEP #$30                ; $00:B6D4: E2 30       ;
                INC $0200               ; $00:B6D6: EE 00 02    ; Next frame
                RTS                     ; $00:B6D9: 60          ;

CODE_00B6DA:    LDA #$00                ; $00:B6DA: A9 00       ;\ Source bank
                STA $02                 ; $00:B6DC: 85 02       ;/
                REP #$30                ; $00:B6DE: C2 30       ;
                LDA $0201               ; $00:B6E0: AD 01 02    ; Get the frame
                AND #$00FF              ; $00:B6E3: 29 FF 00    ;
                ASL A                   ; $00:B6E6: 0A          ;
                TAX                     ; $00:B6E7: AA          ;
                LDA DATA_00B70D,x       ; $00:B6E8: BD 0D B7    ;\ Source low and high
                STA $00                 ; $00:B6EB: 85 00       ;/
                LDA #$0464              ; $00:B6ED: A9 64 04    ;\ Destination
                STA $04                 ; $00:B6F0: 85 04       ;/
                JSR CODE_00B9AB         ; $00:B6F2: 20 AB B9    ; Put tilemap in RAM
                SEP #$30                ; $00:B6F5: E2 30       ;
                INC $0201               ; $00:B6F7: EE 01 02    ;
                LDA $0201               ; $00:B6FA: AD 01 02    ;
                CMP #$0B                ; $00:B6FD: C9 0B       ;
                BCC CODE_00B704         ; $00:B6FF: 90 03       ;
                STZ $0201               ; $00:B701: 9C 01 02    ;
CODE_00B704:    RTS                     ; $00:B704: 60          ;

DATA_00B705:    dw $B9D1,$B9F5,$BA19,$B9F5                      ;
          
DATA_00B70D:    dw $BA3D,$BA3D,$BA4D,$BA4D                      ;
                dw $BA4D,$BA4D,$BA5D,$BA4D                      ;
                dw $BA4D,$BA4D,$BA4D                            ;

CODE_00B723:    LDA #$00                ; $00:B723: A9 00       ;
                STA $02                 ; $00:B725: 85 02       ;
                REP #$30                ; $00:B727: C2 30       ;
                LDA $0202               ; $00:B729: AD 02 02    ;
                AND #$0001              ; $00:B72C: 29 01 00    ;
                ASL A                   ; $00:B72F: 0A          ;
                TAX                     ; $00:B730: AA          ;
                LDA DATA_00B744,x       ; $00:B731: BD 44 B7    ;
                STA $00                 ; $00:B734: 85 00       ;
                LDA #$0392              ; $00:B736: A9 92 03    ;
                STA $04                 ; $00:B739: 85 04       ;
                JSR CODE_00B9AB         ; $00:B73B: 20 AB B9    ;
                SEP #$30                ; $00:B73E: E2 30       ;
                INC $0202               ; $00:B740: EE 02 02    ;
                RTS                     ; $00:B743: 60          ;

DATA_00B744:    dw $BA6D : dw $BA8B                             ;

CODE_00B748:    LDA #$00                ; $00:B748: A9 00       ;
                STA $02                 ; $00:B74A: 85 02       ;
                REP #$30                ; $00:B74C: C2 30       ;
                LDA $0203               ; $00:B74E: AD 03 02    ;
                AND #$0001              ; $00:B751: 29 01 00    ;
                ASL A                   ; $00:B754: 0A          ;
                TAX                     ; $00:B755: AA          ;
                LDA DATA_00B769,x       ; $00:B756: BD 69 B7    ;
                STA $00                 ; $00:B759: 85 00       ;
                LDA #$04EC              ; $00:B75B: A9 EC 04    ;
                STA $04                 ; $00:B75E: 85 04       ;
                JSR CODE_00B9AB         ; $00:B760: 20 AB B9    ;
                SEP #$30                ; $00:B763: E2 30       ;
                INC $0203               ; $00:B765: EE 03 02    ;
                RTS                     ; $00:B768: 60          ;

DATA_00B769:    dw $BAA9 : dw $BAE3                             ;

                LDA #$00                ; $00:B76D: A9 00       ;
                STA $02                 ; $00:B76F: 85 02       ;
                REP #$30                ; $00:B771: C2 30       ;
                LDA $0204               ; $00:B773: AD 04 02    ;
                AND #$0003              ; $00:B776: 29 03 00    ;
                ASL A                   ; $00:B779: 0A          ;
                TAX                     ; $00:B77A: AA          ;
                LDA DATA_00B7DE,x       ; $00:B77B: BD DE B7    ;
                STA $00                 ; $00:B77E: 85 00       ;
                LDA #$0476              ; $00:B780: A9 76 04    ;
                STA $04                 ; $00:B783: 85 04       ;
                JSR CODE_00B9AB         ; $00:B785: 20 AB B9    ;
                SEP #$30                ; $00:B788: E2 30       ;
                INC $0204               ; $00:B78A: EE 04 02    ;
                LDA $0204               ; $00:B78D: AD 04 02    ;
                AND #$0F                ; $00:B790: 29 0F       ;
                CMP #$03                ; $00:B792: C9 03       ;
                BNE CODE_00B79B         ; $00:B794: D0 05       ;
                LDA #$80                ; $00:B796: A9 80       ;
                STA $0204               ; $00:B798: 8D 04 02    ;
CODE_00B79B:    RTS                     ; $00:B79B: 60          ;

CODE_00B79C:    LDA #$00                ; $00:B79C: A9 00       ;
                STA $02                 ; $00:B79E: 85 02       ;
                REP #$30                ; $00:B7A0: C2 30       ;
                LDA $0205               ; $00:B7A2: AD 05 02    ;
                AND #$0001              ; $00:B7A5: 29 01 00    ;
                ASL A                   ; $00:B7A8: 0A          ;
                TAX                     ; $00:B7A9: AA          ;
                LDA DATA_00B7E4,x       ; $00:B7AA: BD E4 B7    ;
                STA $00                 ; $00:B7AD: 85 00       ;
                LDA #$04B4              ; $00:B7AF: A9 B4 04    ;
                STA $04                 ; $00:B7B2: 85 04       ;
                JSR CODE_00B9AB         ; $00:B7B4: 20 AB B9    ;
                SEP #$30                ; $00:B7B7: E2 30       ;
                INC $0205               ; $00:B7B9: EE 05 02    ;
                RTS                     ; $00:B7BC: 60          ;

CODE_00B7BD:    LDA #$00                ; $00:B7BD: A9 00       ;
                STA $02                 ; $00:B7BF: 85 02       ;
                REP #$30                ; $00:B7C1: C2 30       ;
                LDA $0206               ; $00:B7C3: AD 06 02    ;
                AND #$0003              ; $00:B7C6: 29 03 00    ;
                ASL A                   ; $00:B7C9: 0A          ;
                TAX                     ; $00:B7CA: AA          ;
                LDA DATA_00B7E8,x       ; $00:B7CB: BD E8 B7    ;
                STA $00                 ; $00:B7CE: 85 00       ;
                LDA #$04FA              ; $00:B7D0: A9 FA 04    ;
                STA $04                 ; $00:B7D3: 85 04       ;
                JSR CODE_00B9AB         ; $00:B7D5: 20 AB B9    ;
                SEP #$30                ; $00:B7D8: E2 30       ;
                INC $0206               ; $00:B7DA: EE 06 02    ;
                RTS                     ; $00:B7DD: 60          ;

DATA_00B7DE:    dw $BB1D,$BB29,$BB1D                            ;

DATA_00B7E4:    dw $BB35,$BB45                                  ;

DATA_00B7E8:    dw $BB55,$BB67,$BB79,$BB8B                      ;

                LDA #$00                ; $00:B7F0: A9 00       ;
                STA $02                 ; $00:B7F2: 85 02       ;
                REP #$30                ; $00:B7F4: C2 30       ;
                LDA $0207               ; $00:B7F6: AD 07 02    ;
                AND #$0003              ; $00:B7F9: 29 03 00    ;
                ASL A                   ; $00:B7FC: 0A          ;
                TAX                     ; $00:B7FD: AA          ;
                LDA DATA_00B81F,x       ; $00:B7FE: BD 1F B8    ;
                STA $00                 ; $00:B801: 85 00       ;
                LDA #$054E              ; $00:B803: A9 4E 05    ;
                STA $04                 ; $00:B806: 85 04       ;
                JSR CODE_00B9AB         ; $00:B808: 20 AB B9    ;
                SEP #$30                ; $00:B80B: E2 30       ;
                INC $0207               ; $00:B80D: EE 07 02    ;
                LDA $0207               ; $00:B810: AD 07 02    ;
                AND #$0F                ; $00:B813: 29 0F       ;
                CMP #$03                ; $00:B815: C9 03       ;
                BNE CODE_00B81E         ; $00:B817: D0 05       ;
                LDA #$80                ; $00:B819: A9 80       ;
                STA $0207               ; $00:B81B: 8D 07 02    ;
CODE_00B81E:    RTS                     ; $00:B81E: 60          ;

DATA_00B81F:    db $9D,$BB,$AB,$BB,$9D,$BB                      ;

                LDA #$00                ; $00:B825: A9 00       ;
                STA $02                 ; $00:B827: 85 02       ;
                REP #$30                ; $00:B829: C2 30       ;
                LDA $0208               ; $00:B82B: AD 08 02    ;
                AND #$0003              ; $00:B82E: 29 03 00    ;
                ASL A                   ; $00:B831: 0A          ;
                TAX                     ; $00:B832: AA          ;
                LDA DATA_00B852,x       ; $00:B833: BD 52 B8    ;
                STA $00                 ; $00:B836: 85 00       ;
                LDA #$0544              ; $00:B838: A9 44 05    ;
                STA $04                 ; $00:B83B: 85 04       ;
                JSR CODE_00B9AB         ; $00:B83D: 20 AB B9    ;
                SEP #$30                ; $00:B840: E2 30       ;
                INC $0208               ; $00:B842: EE 08 02    ;
                LDA $0208               ; $00:B845: AD 08 02    ;
                AND #$04                ; $00:B848: 29 04       ;
                BEQ CODE_00B851         ; $00:B84A: F0 05       ;
                LDA #$80                ; $00:B84C: A9 80       ;
                STA $0208               ; $00:B84E: 8D 08 02    ;
CODE_00B851:    RTS                     ; $00:B851: 60          ;

DATA_00B852:    db $B9,$BB,$BF,$BB,$C5,$BB,$B9,$BB              ;

                LDA #$00                ; $00:B85A: A9 00       ;
                STA $02                 ; $00:B85C: 85 02       ;
                REP #$30                ; $00:B85E: C2 30       ;
                LDA $0209               ; $00:B860: AD 09 02    ;
                AND #$0001              ; $00:B863: 29 01 00    ;
                ASL A                   ; $00:B866: 0A          ;
                TAX                     ; $00:B867: AA          ;
                LDA DATA_00B888,x       ; $00:B868: BD 88 B8    ;
                STA $00                 ; $00:B86B: 85 00       ;
                LDA #$0672              ; $00:B86D: A9 72 06    ;
                STA $04                 ; $00:B870: 85 04       ;
                JSR CODE_00B9AB         ; $00:B872: 20 AB B9    ;
                SEP #$30                ; $00:B875: E2 30       ;
                LDA $0209               ; $00:B877: AD 09 02    ;
                BEQ CODE_00B884         ; $00:B87A: F0 08       ;
                LDA $0209               ; $00:B87C: AD 09 02    ;
                ORA #$80                ; $00:B87F: 09 80       ;
                STA $0209               ; $00:B881: 8D 09 02    ;
CODE_00B884:    INC $0209               ; $00:B884: EE 09 02    ;
                RTS                     ; $00:B887: 60          ;

DATA_00B888:    db $CB,$BB,$D1,$BB                              ;

CODE_00B88C:    LDA #$00                ; $00:B88C: A9 00       ;
                STA $02                 ; $00:B88E: 85 02       ;
                REP #$30                ; $00:B890: C2 30       ;
                LDA $020A               ; $00:B892: AD 0A 02    ;
                AND #$0003              ; $00:B895: 29 03 00    ;
                ASL A                   ; $00:B898: 0A          ;
                TAX                     ; $00:B899: AA          ;
                LDA DATA_00B8AD,x       ; $00:B89A: BD AD B8    ;
                STA $00                 ; $00:B89D: 85 00       ;
                LDA #$00B2              ; $00:B89F: A9 B2 00    ;
                STA $04                 ; $00:B8A2: 85 04       ;
                JSR CODE_00B9AB         ; $00:B8A4: 20 AB B9    ;
                SEP #$30                ; $00:B8A7: E2 30       ;
                INC $020A               ; $00:B8A9: EE 0A 02    ;
                RTS                     ; $00:B8AC: 60          ;

DATA_00B8AD:    db $D7,$BB,$01,$BC,$2B,$BC,$55,$BC              ;

CODE_00B8B5:    LDA #$00                ; $00:B8B5: A9 00       ;
                STA $02                 ; $00:B8B7: 85 02       ;
                REP #$30                ; $00:B8B9: C2 30       ;
                LDA $020B               ; $00:B8BB: AD 0B 02    ;
                AND #$000F              ; $00:B8BE: 29 0F 00    ;
                ASL A                   ; $00:B8C1: 0A          ;
                TAX                     ; $00:B8C2: AA          ;
                LDA DATA_00B938,x       ; $00:B8C3: BD 38 B9    ;
                STA $00                 ; $00:B8C6: 85 00       ;
                LDA #$0458              ; $00:B8C8: A9 58 04    ;
                STA $04                 ; $00:B8CB: 85 04       ;
                JSR CODE_00B9AB         ; $00:B8CD: 20 AB B9    ;
                LDA DATA_00B94C,x       ; $00:B8D0: BD 4C B9    ;
                STA $00                 ; $00:B8D3: 85 00       ;
                LDA #$041A              ; $00:B8D5: A9 1A 04    ;
                STA $04                 ; $00:B8D8: 85 04       ;
                JSR CODE_00B9AB         ; $00:B8DA: 20 AB B9    ;
                SEP #$30                ; $00:B8DD: E2 30       ;
                LDA $020B               ; $00:B8DF: AD 0B 02    ;
                BNE CODE_00B8EC         ; $00:B8E2: D0 08       ;
                JSR CODE_00B901         ; $00:B8E4: 20 01 B9    ;
                STZ $020C               ; $00:B8E7: 9C 0C 02    ;
                BRA CODE_00B8F3         ; $00:B8EA: 80 07       ;

CODE_00B8EC:    CMP #$06                ; $00:B8EC: C9 06       ;
                BCC CODE_00B8F3         ; $00:B8EE: 90 03       ;
                JSR CODE_00B901         ; $00:B8F0: 20 01 B9    ;
CODE_00B8F3:    INC $020B               ; $00:B8F3: EE 0B 02    ;
                LDA $020B               ; $00:B8F6: AD 0B 02    ;
                CMP #$0A                ; $00:B8F9: C9 0A       ;
                BCC CODE_00B900         ; $00:B8FB: 90 03       ;
                STZ $020B               ; $00:B8FD: 9C 0B 02    ;
CODE_00B900:    RTS                     ; $00:B900: 60          ;

CODE_00B901:    REP #$30                ; $00:B901: C2 30       ;
                LDA $020C               ; $00:B903: AD 0C 02    ;
                AND #$0003              ; $00:B906: 29 03 00    ;
                ASL A                   ; $00:B909: 0A          ;
                TAX                     ; $00:B90A: AA          ;
                LDA DATA_00B960,x       ; $00:B90B: BD 60 B9    ;
                STA $7F051E             ; $00:B90E: 8F 1E 05 7F ;
                LDA DATA_00B968,x       ; $00:B912: BD 68 B9    ;
                STA $00                 ; $00:B915: 85 00       ;
                LDA #$04A0              ; $00:B917: A9 A0 04    ;
                STA $04                 ; $00:B91A: 85 04       ;
                JSR CODE_00B9AB         ; $00:B91C: 20 AB B9    ;
                SEP #$30                ; $00:B91F: E2 30       ;
                INC $020C               ; $00:B921: EE 0C 02    ;
                RTS                     ; $00:B924: 60          ;

CODE_00B925:    REP #$30                ; $00:B925: C2 30       ;
                LDA #$01B0              ; $00:B927: A9 B0 01    ;
                STA $7F045C             ; $00:B92A: 8F 5C 04 7F ;
                LDA #$01C0              ; $00:B92E: A9 C0 01    ;
                STA $7F049C             ; $00:B931: 8F 9C 04 7F ;
                SEP #$30                ; $00:B935: E2 30       ;
                RTS                     ; $00:B937: 60          ;

DATA_00B938:    dw $BC7F,$BC9D,$BCBB,$BC9D                      ;
                dw $BC7F,$BC9D,$BCBB,$BCD9                      ;
                dw $BCD9,$BCD9                                  ;

DATA_00B94C:    dw $BCF7,$BCFF,$BD07,$BCFF                      ;
                dw $BCF7,$BCFF,$BD07,$BD0F                      ;
                dw $BD0F,$BD0F                                  ;

DATA_00B960:    dw $007F,$01D4,$01D4,$01D4                      ;

DATA_00B968:    dw $BD17,$BD25,$BD25,$BD25                      ;

CODE_00B970:    LDA #$00                ; $00:B970: A9 00       ;
                STA $02                 ; $00:B972: 85 02       ;
                REP #$30                ; $00:B974: C2 30       ;
                LDA $020D               ; $00:B976: AD 0D 02    ;
                AND #$00FF              ; $00:B979: 29 FF 00    ;
                ASL A                   ; $00:B97C: 0A          ;
                TAX                     ; $00:B97D: AA          ;
                LDA DATA_00B99B,x       ; $00:B97E: BD 9B B9    ;
                STA $00                 ; $00:B981: 85 00       ;
                LDA #$040E              ; $00:B983: A9 0E 04    ;
                STA $04                 ; $00:B986: 85 04       ;
                JSR CODE_00B9AB         ; $00:B988: 20 AB B9    ;
                SEP #$30                ; $00:B98B: E2 30       ;
                INC $020D               ; $00:B98D: EE 0D 02    ;
                LDA $020D               ; $00:B990: AD 0D 02    ;
                CMP #$08                ; $00:B993: C9 08       ;
                BCC CODE_00B99A         ; $00:B995: 90 03       ;
                STZ $020D               ; $00:B997: 9C 0D 02    ;
CODE_00B99A:    RTS                     ; $00:B99A: 60          ;

DATA_00B99B:    dw $BD33,$BD33,$BD33,$BD51                      ;
                dw $BD6F,$BD6F,$BD6F,$BD51                      ;

CODE_00B9AB:    PHX                     ; $00:B9AB: DA          ;\ Push X and Y
                PHY                     ; $00:B9AC: 5A          ;/
                LDY #$0000              ; $00:B9AD: A0 00 00    ; X= #$0000
CODE_00B9B0:    LDX $04                 ; $00:B9B0: A6 04       ; Get destination
CODE_00B9B2:    LDA [$00],y             ; $00:B9B2: B7 00       ; Read data
                BEQ CODE_00B9C2         ; $00:B9B4: F0 0C       ; If it is zero, branch
                BMI CODE_00B9CE         ; $00:B9B6: 30 16       ; If it is negative, return
                STA $7F0000,x           ; $00:B9B8: 9F 00 00 7F ; Write data
                INX                     ; $00:B9BC: E8          ;\
                INX                     ; $00:B9BD: E8          ; | Move on
                INY                     ; $00:B9BE: C8          ; |
                INY                     ; $00:B9BF: C8          ;/
                BRA CODE_00B9B2         ; $00:B9C0: 80 F0       ;

CODE_00B9C2:    INY                     ; $00:B9C2: C8          ;\
                INY                     ; $00:B9C3: C8          ; |
                LDA $04                 ; $00:B9C4: A5 04       ; | Move on
                CLC                     ; $00:B9C6: 18          ; |
                ADC #$0040              ; $00:B9C7: 69 40 00    ; |
                STA $04                 ; $00:B9CA: 85 04       ;/
                BRA CODE_00B9B0         ; $00:B9CC: 80 E2       ;

CODE_00B9CE:    PLY                     ; $00:B9CE: 7A          ;
                PLX                     ; $00:B9CF: FA          ;
                RTS                     ; $00:B9D0: 60          ;

                dw $01D6,$01D7,$01D8,$0000                      ;
                dw $01D9,$01DA,$01DB,$01DC                      ;
                dw $0000,$01DD,$01DE,$01DF                      ;
                dw $0240,$0000,$01E0,$01E1                      ;
                dw $01E2,$FFFF,$0111,$0112                      ;
                dw $0113,$0000,$0121,$0122                      ;
                dw $0123,$0124,$0000,$0106                      ;
                dw $0107,$0108,$0109,$0000                      ;
                dw $0116,$0117,$0118,$FFFF                      ;
                dw $01E3,$01E4,$01E5,$0000                      ;
                dw $01E6,$01E7,$01E8,$01E9                      ;
                dw $0000,$01EA,$01EB,$01EC                      ;
                dw $01ED,$0000,$01EE,$01EF                      ;
                dw $01F0,$FFFF,$0115,$0000                      ;
                dw $0125,$0126,$0000,$0105                      ;
                dw $010A,$FFFF,$01F1,$0000                      ;
                dw $01F2,$01F3,$0000,$01F4                      ;
                dw $01F5,$FFFF,$01F6,$0000                      ;
                dw $01F7,$01F8,$0000,$01F9                      ;
                dw $01FA,$FFFF,$0019,$001A                      ;
                dw $001B,$001C,$0000,$0029                      ;
                dw $002A,$002B,$002C,$0000                      ;
                dw $0039,$003A,$003B,$003C                      ;
                dw $FFFF,$021A,$021B,$021C                      ;
                dw $021D,$0000,$021E,$021F                      ;
                dw $0220,$0221,$0000,$0222                      ;
                dw $0223,$0224,$0225,$FFFF                      ;
                dw $010D,$010E,$010F,$0131                      ;
                dw $0000,$011D,$011E,$011F                      ;
                dw $0141,$0000,$012D,$012E                      ;
                dw $012F,$0151,$0000,$000D                      ;
                dw $000E,$000F,$00E5,$0000                      ;
                dw $001D,$001E,$001F,$00F4                      ;
                dw $0000,$002D,$002E,$002F                      ;
                dw $FFFF,$0200,$0201,$0202                      ;
                dw $0203,$0000,$0204,$0205                      ;
                dw $0206,$0207,$0000,$0208                      ;
                dw $0209,$020A,$020B,$0000                      ;
                dw $020C,$020D,$020E,$020F                      ;
                dw $0000,$0210,$0211,$0212                      ;
                dw $0213,$0000,$002D,$0214                      ;
                dw $0215,$FFFF,$0143,$0144                      ;
                dw $0000,$0153,$0154,$FFFF                      ;
                dw $01AC,$01AD,$0000,$0153                      ;
                dw $01AE,$FFFF,$0152,$0000                      ;
                dw $0136,$0137,$0000,$0146                      ;
                dw $0147,$FFFF,$019F,$0000                      ;
                dw $01A0,$01A1,$0000,$01A2                      ;
                dw $01A3,$FFFF,$0139,$013A                      ;
                dw $0000,$0149,$014A,$0000                      ;
                dw $0159,$015A,$FFFF,$0139                      ;
                dw $01A4,$0000,$01A5,$01A6                      ;
                dw $0000,$0159,$01A7,$FFFF                      ;
                dw $0139,$01A8,$0000,$01A9                      ;
                dw $01AA,$0000,$0159,$01AB                      ;
                dw $FFFF,$0139,$01A4,$0000                      ;
                dw $01A5,$01A6,$0000,$0159                      ;
                dw $01A7,$FFFF,$0087,$0088                      ;
                dw $0000,$0097,$0098,$0099                      ;
                dw $FFFF,$01FB,$01FC,$0000                      ;
                dw $01FD,$01FE,$01FF,$FFFF                      ;
                dw $0082,$0083,$FFFF,$0216                      ;
                dw $0217,$FFFF,$0218,$0219                      ;
                dw $FFFF,$00F8,$00F9,$FFFF                      ;
                dw $023E,$023F,$FFFF,$015B                      ;
                dw $015C,$015D,$0000,$015E                      ;
                dw $015F,$0160,$0161,$0000                      ;
                dw $0162,$0163,$0164,$0165                      ;
                dw $0166,$0000,$0167,$0168                      ;
                dw $0169,$016A,$016B,$FFFF                      ;
                dw $016C,$016D,$016E,$0000                      ;
                dw $016F,$0170,$0171,$0172                      ;
                dw $0000,$0173,$0174,$0175                      ;
                dw $0176,$0177,$0000,$0178                      ;
                dw $0179,$017A,$017B,$017C                      ;
                dw $FFFF,$017D,$017E,$017F                      ;
                dw $0000,$0180,$0181,$0182                      ;
                dw $0183,$0000,$0184,$0185                      ;
                dw $0186,$0187,$0188,$0000                      ;
                dw $0189,$018A,$018B,$018C                      ;
                dw $018D,$FFFF,$018E,$018F                      ;
                dw $0190,$0000,$0191,$0192                      ;
                dw $0193,$0194,$0000,$0195                      ;
                dw $0196,$0197,$0198,$0199                      ;
                dw $0000,$019A,$019B,$019C                      ;
                dw $019D,$019E,$FFFF,$004C                      ;
                dw $004D,$004E,$004F,$0000                      ;
                dw $005C,$005D,$005E,$005F                      ;
                dw $0000,$006C,$006D,$006E                      ;
                dw $006F,$FFFF,$01B4,$01B5                      ;
                dw $01B6,$01B7,$0000,$01B8                      ;
                dw $01B9,$01BA,$01BB,$0000                      ;
                dw $01BC,$01BD,$01BE,$01BF                      ;
                dw $FFFF,$01C4,$01C5,$01C6                      ;
                dw $01C7,$0000,$01C8,$01C9                      ;
                dw $01CA,$01CB,$0000,$01CC                      ;
                dw $01CD,$01CE,$01CF,$FFFF                      ;
                dw $01C4,$01C5,$01C6,$01C7                      ;
                dw $0000,$01C8,$01C9,$01CA                      ;
                dw $01D0,$0000,$01CC,$01CD                      ;
                dw $01CE,$01D2,$FFFF,$003D                      ;
                dw $003E,$003F,$FFFF,$01B1                      ;
                dw $01B2,$01B3,$FFFF,$01C1                      ;
                dw $01C2,$01C3,$FFFF,$01C1                      ;
                dw $01C2,$01C3,$FFFF,$0150                      ;
                dw $0000,$013B,$0104,$0000                      ;
                dw $013C,$FFFF,$01D1,$0000                      ;
                dw $01D3,$01D3,$0000,$01D5                      ;
                dw $FFFF,$0037,$0038,$0000                      ;
                dw $0047,$0048,$0049,$0000                      ;
                dw $0057,$0058,$0059,$0000                      ;
                dw $0067,$0068,$0069,$FFFF                      ;
                dw $0226,$0227,$0000,$0228                      ;
                dw $0229,$022A,$0000,$022B                      ;
                dw $022C,$022D,$0000,$0067                      ;
                dw $022F,$0230,$FFFF,$0231                      ;
                dw $0232,$0000,$0233,$0234                      ;
                dw $0235,$0000,$0236,$0237                      ;
                dw $0238,$0000,$0067,$023A                      ;
                dw $023B,$FFFF                                  ;

CODE_00BD8D:    LDA $22                 ; $00:BD8D: A5 22       ;\ If the timer is not zero, branch
                BNE CODE_00BE05         ; $00:BD8F: D0 74       ;/ (if it is not time to "flash")
                LDA $23                 ; $00:BD91: A5 23       ;\
                CMP #$1C                ; $00:BD93: C9 1C       ; | If we finished flashing branch
                BEQ CODE_00BDF1         ; $00:BD95: F0 5A       ;/
                LDA #$04                ; $00:BD97: A9 04       ;\ Set timer
                STA $22                 ; $00:BD99: 85 22       ;/
                PHB                     ; $00:BD9B: 8B          ;
                PHK                     ; $00:BD9C: 4B          ;
                PLB                     ; $00:BD9D: AB          ;
                REP #$20                ; $00:BD9E: C2 20       ;
                LDA $23                 ; $00:BDA0: A5 23       ;\
                AND #$00FF              ; $00:BDA2: 29 FF 00    ; | Get which step we are on
                STA $04                 ; $00:BDA5: 85 04       ;/
                CMP #$000E              ; $00:BDA7: C9 0E 00    ;\ If we are halfway through it or more, branch
                BCS CODE_00BDCA         ; $00:BDAA: B0 1E       ;/
                LDA #$001C              ; $00:BDAC: A9 1C 00    ;
                SEC                     ; $00:BDAF: 38          ;
                SBC $04                 ; $00:BDB0: E5 04       ;
                TAX                     ; $00:BDB2: AA          ;
                LDY #$00                ; $00:BDB3: A0 00       ; Change the palette
CODE_00BDB5:    LDA DATA_00BE08,y       ; $00:BDB5: B9 08 BE    ;
                STA $7F9300,x           ; $00:BDB8: 9F 00 93 7F ;
                LDA $04                 ; $00:BDBC: A5 04       ;
                BEQ CODE_00BDE5         ; $00:BDBE: F0 25       ;
                DEC $04                 ; $00:BDC0: C6 04       ;
                DEC $04                 ; $00:BDC2: C6 04       ;
                INX                     ; $00:BDC4: E8          ;
                INX                     ; $00:BDC5: E8          ;
                INY                     ; $00:BDC6: C8          ;
                INY                     ; $00:BDC7: C8          ;
                BRA CODE_00BDB5         ; $00:BDC8: 80 EB       ;

CODE_00BDCA:    LDA $23                 ; $00:BDCA: A5 23       ;
                AND #$00FF              ; $00:BDCC: 29 FF 00    ;
                SEC                     ; $00:BDCF: 38          ;
                SBC #$000C              ; $00:BDD0: E9 0C 00    ; Change the palette
                TAY                     ; $00:BDD3: A8          ;
                LDX #$00                ; $00:BDD4: A2 00       ;
CODE_00BDD6:    LDA DATA_00BE08,y       ; $00:BDD6: B9 08 BE    ;
                STA $7F930E,x           ; $00:BDD9: 9F 0E 93 7F ;
                INY                     ; $00:BDDD: C8          ;
                INY                     ; $00:BDDE: C8          ;
                INX                     ; $00:BDDF: E8          ;
                INX                     ; $00:BDE0: E8          ;
                CPX #$10                ; $00:BDE1: E0 10       ;
                BNE CODE_00BDD6         ; $00:BDE3: D0 F1       ;
CODE_00BDE5:    INC $23                 ; $00:BDE5: E6 23       ;\ Increase the timer
                INC $23                 ; $00:BDE7: E6 23       ;/
                INC $0AC0               ; $00:BDE9: EE C0 0A    ; Update CGRAM
                SEP #$20                ; $00:BDEC: E2 20       ;
                PLB                     ; $00:BDEE: AB          ;
                BRA CODE_00BE05         ; $00:BDEF: 80 14       ;

CODE_00BDF1:    REP #$20                ; $00:BDF1: C2 20       ;
                LDA $E3                 ; $00:BDF3: A5 E3       ;\
                CMP $0225               ; $00:BDF5: CD 25 02    ; | If the amount of time left on the title screen is not equal to $0225,  branch
                BNE CODE_00BE01         ; $00:BDF8: D0 07       ;/
                LDA #$00F0              ; $00:BDFA: A9 F0 00    ;\
                STA $22                 ; $00:BDFD: 85 22       ; | Reset timers
                STZ $23                 ; $00:BDFF: 64 23       ;/
CODE_00BE01:    SEP #$20                ; $00:BE01: E2 20       ;
                BRA CODE_00BE07         ; $00:BE03: 80 02       ;

CODE_00BE05:    DEC $22                 ; $00:BE05: C6 22       ; Decrease the timer
CODE_00BE07:    RTS                     ; $00:BE07: 60          ;

DATA_00BE08:    dw $1EDF,$435F,$5FBF,$7FFF                      ; Palette of the shining ALL*STARS logo
                dw $5FBF,$435F,$1EDF,$025F                      ;
                dw $025F,$025F,$025F,$025F                      ;
                dw $025F,$025F,$025F                            ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
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
;; From here on starts duplicate code of $04D800
;; This is for TLL while the code at $04D800 is for
;; SMB1.
;;

CODE_00C000:    LDA $0BA5               ; $00:C000: AD A5 0B    ;
                BNE CODE_00C059         ; $00:C003: D0 54       ;
                LDA $06D5               ; $00:C005: AD D5 06    ;
                CMP #$18                ; $00:C008: C9 18       ;
                BEQ CODE_00C010         ; $00:C00A: F0 04       ;
                CMP #$78                ; $00:C00C: C9 78       ;
                BNE CODE_00C020         ; $00:C00E: D0 10       ;
CODE_00C010:    LDA $09                 ; $00:C010: A5 09       ;
                AND #$07                ; $00:C012: 29 07       ;
                BNE CODE_00C020         ; $00:C014: D0 0A       ;
                LDA $1601               ; $00:C016: AD 01 16    ;
                BNE CODE_00C020         ; $00:C019: D0 05       ;
                LDA #$04                ; $00:C01B: A9 04       ;
                STA $1601               ; $00:C01D: 8D 01 16    ;
CODE_00C020:    STZ $028E               ; $00:C020: 9C 8E 02    ;
                LDA $06D5               ; $00:C023: AD D5 06    ;
                LSR A                   ; $00:C026: 4A          ;
                LSR A                   ; $00:C027: 4A          ;
                LSR A                   ; $00:C028: 4A          ;
                INC $028E               ; $00:C029: EE 8E 02    ;
                REP #$20                ; $00:C02C: C2 20       ;
                AND #$00FF              ; $00:C02E: 29 FF 00    ;
                XBA                     ; $00:C031: EB          ;
                CLC                     ; $00:C032: 18          ;
                ADC #$8000              ; $00:C033: 69 00 80    ;
                STA $028F               ; $00:C036: 8D 8F 02    ;
                LDA #$6000              ; $00:C039: A9 00 60    ;
                STA $0295               ; $00:C03C: 8D 95 02    ;
                LDA #$0100              ; $00:C03F: A9 00 01    ;
                STA $0293               ; $00:C042: 8D 93 02    ;
                SEP #$20                ; $00:C045: E2 20       ;
                LDA $0EC2               ; $00:C047: AD C2 0E    ;
                BEQ CODE_00C054         ; $00:C04A: F0 08       ;
                LDA $0290               ; $00:C04C: AD 90 02    ;
                ORA #$40                ; $00:C04F: 09 40       ;
                STA $0290               ; $00:C051: 8D 90 02    ;
CODE_00C054:    LDA #$0A                ; $00:C054: A9 0A       ;
                STA $0291               ; $00:C056: 8D 91 02    ;
CODE_00C059:    RTL                     ; $00:C059: 6B          ;

                STZ $0F4A               ; $00:C05A: 9C 4A 0F    ;
                LDA #$35                ; $00:C05D: A9 35       ;
                RTL                     ; $00:C05F: 6B          ;

CODE_00C060:    REP #$20                ; $00:C060: C2 20       ;For SMB:TLL
                LDX #$1E                ; $00:C062: A2 1E       ;Set loop count
CODE_00C064:    LDA $0753               ; $00:C064: AD 53 07    ;\
                BEQ CODE_00C06F         ; $00:C067: F0 06       ;/Branch if Mario
                LDA.l DATA_00C0A3,x     ; $00:C069: BF A3 C0 00 ;Get Luigi palette data
                BRA CODE_00C073         ; $00:C06D: 80 04       ;

CODE_00C06F:    LDA.l DATA_00C083,x     ; $00:C06F: BF 83 C0 00 ;Get Mario palette data
CODE_00C073:    STA $1160,x             ; $00:C073: 9D 60 11    ;Write palette data to RAM
                DEX                     ; $00:C076: CA          ;
                DEX                     ; $00:C077: CA          ;
                BPL CODE_00C064         ; $00:C078: 10 EA       ;
                SEP #$20                ; $00:C07A: E2 20       ;
                INC $1200               ; $00:C07C: EE 00 12    ;
                JSR CODE_00C0C3         ; $00:C07F: 20 C3 C0    ;Write princess peach thank you message
                RTL                     ; $00:C082: 6B          ;

DATA_00C083:    dw $734E,$7FFF,$14A5,$5D68                      ;Mario portrait Palette of princess saved sequence
                dw $762E,$27BF,$31BB,$3ABF                      ;
                dw $0000,$152F,$355D,$525F                      ;
                dw $169B,$1C9F,$0C19,$0C19                      ;

DATA_00C0A3:    dw $734E,$7FFF,$14A5,$5588                      ;Luigi portrait Palette of princess saved sequence
                dw $724D,$27BF,$31BB,$3ABF                      ;
                dw $0000,$152F,$355D,$525F                      ;
                dw $169B,$3303,$1A40,$1C9F                      ;

CODE_00C0C3:    PHB                     ; $00:C0C3: 8B          ;
                PHK                     ; $00:C0C4: 4B          ;
                PLB                     ; $00:C0C5: AB          ;
                PHX                     ; $00:C0C6: DA          ;
                LDA #$FF                ; $00:C0C7: A9 FF       ;
                STA $0EEE               ; $00:C0C9: 8D EE 0E    ;
                STZ $0EEF               ; $00:C0CC: 9C EF 0E    ;
                STZ $0BA3               ; $00:C0CF: 9C A3 0B    ;
                LDA #$15                ; $00:C0D2: A9 15       ;\
                STA $120B               ; $00:C0D4: 8D 0B 12    ;/Main Screen designation
                LDA #$02                ; $00:C0D7: A9 02       ;\
                STA $120C               ; $00:C0D9: 8D 0C 12    ;/Sub Screen designation
                REP #$10                ; $00:C0DC: C2 10       ;16 bit xy
                LDA $075F               ; $00:C0DE: AD 5F 07    ;\
                PHA                     ; $00:C0E1: 48          ;/Push world number onto stack
                LDA $70000F             ; $00:C0E2: AF 0F 00 70 ;\
                BNE CODE_00C0F2         ; $00:C0E6: D0 0A       ;/ Branch if loaded game isn't SMB1
                LDA $07FC               ; $00:C0E8: AD FC 07    ;\ When SMB1
                BEQ CODE_00C0F2         ; $00:C0EB: F0 05       ;/ If not more difficult quest flag, branch
                LDA #$0C                ; $00:C0ED: A9 0C       ;\
                STA $075F               ; $00:C0EF: 8D 5F 07    ;/ Set world number to... 0C?
CODE_00C0F2:    LDA #$00                ; $00:C0F2: A9 00       ;\
                XBA                     ; $00:C0F4: EB          ;/Clear high byte
                LDA $0753               ; $00:C0F5: AD 53 07    ;\
                ASL A                   ; $00:C0F8: 0A          ; | Player << 2
                ASL A                   ; $00:C0F9: 0A          ; | 
                STA $00                 ; $00:C0FA: 85 00       ;/ into $00
                LDA $075F               ; $00:C0FC: AD 5F 07    ;\ World number
                AND #$08                ; $00:C0FF: 29 08       ; | Bit is set when in world D
                LSR A                   ; $00:C101: 4A          ; | >> 2
                LSR A                   ; $00:C102: 4A          ; | 
                ORA $00                 ; $00:C103: 05 00       ; | OR with the player thing
                TAY                     ; $00:C105: A8          ;/ to index
                PLA                     ; $00:C106: 68          ;\
                STA $075F               ; $00:C107: 8D 5F 07    ;/restore world number
                LDX DATA_00C126,y       ; $00:C10A: BE 26 C1    ;\
                TXY                     ; $00:C10D: 9B          ;/Get message index
                LDX $1700               ; $00:C10E: AE 00 17    ;
CODE_00C111:    LDA DATA_00C12E,y       ; $00:C111: B9 2E C1    ;
                STA $1702,x             ; $00:C114: 9D 02 17    ;
                INC A                   ; $00:C117: 1A          ;\ Check if the written byte is FF
                BEQ CODE_00C11E         ; $00:C118: F0 04       ;/ if so, return
                INX                     ; $00:C11A: E8          ;
                INY                     ; $00:C11B: C8          ;
                BRA CODE_00C111         ; $00:C11C: 80 F3       ;

CODE_00C11E:    STX $1700               ; $00:C11E: 8E 00 17    ;
                SEP #$10                ; $00:C121: E2 10       ;
                PLX                     ; $00:C123: FA          ;
                PLB                     ; $00:C124: AB          ;
                RTS                     ; $00:C125: 60          ;

DATA_00C126:    dw $0000,$00A4,$0156,$01FA                      ;Indices to the messages of peach to the player

DATA_00C12E:    db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Mario! The kingdom is saved!
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

                db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Mario for restoring peace to our
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  kingdom. Hurrah to our hero, Mario!" text
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$11,$16,$20,$0A,$20,$1B,$20              ; Encoded in stripe image.
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

                db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Luigi! The kingdom is saved!
                db $0A,$20,$17,$20,$14,$20,$28,$20              ;  Now try a more difficult quest..." text
                db $22,$20,$18,$20,$1E,$20,$59,$45              ;
                db $00,$0B,$15,$20,$1E,$20,$12,$20              ; Encoded in stripe image.
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

                db $59,$05,$00,$11,$1D,$20,$11,$20              ; "Thank you Luigi for restoring peace to our
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

CODE_00C3DA:    PHX                     ; $00:C3DA: DA          ;
                LDA $0F85               ; $00:C3DB: AD 85 0F    ;
                BNE CODE_00C41B         ; $00:C3DE: D0 3B       ;
                LDA $70000F             ; $00:C3E0: AF 0F 00 70 ;
                BEQ CODE_00C3E9         ; $00:C3E4: F0 03       ;
                LDA $0753               ; $00:C3E6: AD 53 07    ;
CODE_00C3E9:    ASL A                   ; $00:C3E9: 0A          ;
                ASL A                   ; $00:C3EA: 0A          ;
                ASL A                   ; $00:C3EB: 0A          ;
                ORA $0F84               ; $00:C3EC: 0D 84 0F    ;
                TAX                     ; $00:C3EF: AA          ;
                INC $0F84               ; $00:C3F0: EE 84 0F    ;
                LDA $0F84               ; $00:C3F3: AD 84 0F    ;
                CMP #$03                ; $00:C3F6: C9 03       ;
                BNE CODE_00C402         ; $00:C3F8: D0 08       ;
                LDA #$FF                ; $00:C3FA: A9 FF       ;
                STA $00A1               ; $00:C3FC: 8D A1 00    ;
                STZ $043D               ; $00:C3FF: 9C 3D 04    ;
CODE_00C402:    LDA.l DATA_00C43F,x     ; $00:C402: BF 3F C4 00 ;
                BNE CODE_00C411         ; $00:C406: D0 09       ;
                INC $0772               ; $00:C408: EE 72 07    ;
                STZ $0705               ; $00:C40B: 9C 05 07    ;
                STZ $005D               ; $00:C40E: 9C 5D 00    ;
CODE_00C411:    STA $0F85               ; $00:C411: 8D 85 0F    ;
                LDA.l DATA_00C44F,x     ; $00:C414: BF 4F C4 00 ;
                STA $0F86               ; $00:C418: 8D 86 0F    ;
CODE_00C41B:    DEC $0F85               ; $00:C41B: CE 85 0F    ;
                LDA $0F86               ; $00:C41E: AD 86 0F    ;
                AND #$08                ; $00:C421: 29 08       ;
                ASL A                   ; $00:C423: 0A          ;
                ASL A                   ; $00:C424: 0A          ;
                ASL A                   ; $00:C425: 0A          ;
                ASL A                   ; $00:C426: 0A          ;
                STA $0D                 ; $00:C427: 85 0D       ;
                LDY $0F86               ; $00:C429: AC 86 0F    ;
                LDA $0723               ; $00:C42C: AD 23 07    ;
                BEQ CODE_00C43D         ; $00:C42F: F0 0C       ;
                LDA $0219               ; $00:C431: AD 19 02    ;
                CMP #$A2                ; $00:C434: C9 A2       ;
                BCC CODE_00C43D         ; $00:C436: 90 05       ;
                LDA #$A2                ; $00:C438: A9 A2       ;
                STA $0219               ; $00:C43A: 8D 19 02    ;
CODE_00C43D:    PLX                     ; $00:C43D: FA          ;
                RTL                     ; $00:C43E: 6B          ;

DATA_00C43F:    dw $A018,$0108,$1028,$0003                      ;
                dw $A010,$0108,$1E28,$0002                      ;

DATA_00C44F:    dw $0001,$C141,$01C9,$0001                      ;
                dw $0001,$C141,$01C9,$0001                      ;

CODE_00C45F:    DEC $0F88               ; $00:C45F: CE 88 0F    ;
                LDA $0F88               ; $00:C462: AD 88 0F    ;
                BPL CODE_00C47D         ; $00:C465: 10 16       ;
                INC $0F87               ; $00:C467: EE 87 0F    ;
                LDX $0F87               ; $00:C46A: AE 87 0F    ;
                CPX #$05                ; $00:C46D: E0 05       ;
                BNE CODE_00C476         ; $00:C46F: D0 05       ;
                LDA #$A0                ; $00:C471: A9 A0       ;\ Set player X position to A0
                STA $0219               ; $00:C473: 8D 19 02    ;/ (This happens when the princess hugs the player and gets pushed back 2 pixels or so)
CODE_00C476:    LDA.l DATA_00C4B4,x     ; $00:C476: BF B4 C4 00 ;
                STA $0F88               ; $00:C47A: 8D 88 0F    ;
CODE_00C47D:    LDA $0F87               ; $00:C47D: AD 87 0F    ;
                ASL A                   ; $00:C480: 0A          ;
                TAX                     ; $00:C481: AA          ;
                LDA.l PNTR_00C491,x     ; $00:C482: BF 91 C4 00 ;
                STA $00                 ; $00:C486: 85 00       ;
                LDA.l PNTR_00C491+1,x   ; $00:C488: BF 92 C4 00 ;
                STA $01                 ; $00:C48C: 85 01       ;
                JMP ($0000)             ; $00:C48E: 6C 00 00    ;

PNTR_00C491:    dw CODE_00C49F                                  ;
                dw CODE_00C49F                                  ;
                dw CODE_00C49F                                  ;
                dw CODE_00C4B0                                  ;
                dw CODE_00C4A0                                  ;
                dw CODE_00C49F                                  ;
                dw CODE_00C49F                                  ;

CODE_00C49F:    RTL                     ; $00:C49F: 6B          ;

CODE_00C4A0:    LDA #$20                ; $00:C4A0: A9 20       ;
                STA $00                 ; $00:C4A2: 85 00       ;
                LDA #$04                ; $00:C4A4: A9 04       ;
                STA $02                 ; $00:C4A6: 85 02       ;
                LDA #$00                ; $00:C4A8: A9 00       ;
                LDX #$01                ; $00:C4AA: A2 01       ;
                JSL CODE_0DBF7A         ; $00:C4AC: 22 7A BF 0D ;
CODE_00C4B0:    DEC $021A               ; $00:C4B0: CE 1A 02    ;
                RTL                     ; $00:C4B3: 6B          ;

DATA_00C4B4:    db $00,$30,$37,$1A,$10,$60,$FF                  ;

CODE_00C4BB:    PHX                     ; $00:C4BB: DA          ;
                LDA $03AE               ; $00:C4BC: AD AE 03    ;
                CLC                     ; $00:C4BF: 18          ;
                ADC #$07                ; $00:C4C0: 69 07       ;
                STA $08B0               ; $00:C4C2: 8D B0 08    ;
                STA $08B4               ; $00:C4C5: 8D B4 08    ;
                LDA $03B9               ; $00:C4C8: AD B9 03    ;
                STA $08B1               ; $00:C4CB: 8D B1 08    ;
                CLC                     ; $00:C4CE: 18          ;
                ADC #$10                ; $00:C4CF: 69 10       ;
                STA $08B5               ; $00:C4D1: 8D B5 08    ;
                LDX $0F87               ; $00:C4D4: AE 87 0F    ;
                CPX #$03                ; $00:C4D7: E0 03       ;
                BNE CODE_00C4E9         ; $00:C4D9: D0 0E       ;
                LDA $09                 ; $00:C4DB: A5 09       ;
                AND #$04                ; $00:C4DD: 29 04       ;
                BNE CODE_00C4E9         ; $00:C4DF: D0 08       ;
                LDA.l DATA_00C54E,x     ; $00:C4E1: BF 4E C5 00 ;
                INC A                   ; $00:C4E5: 1A          ;
                INC A                   ; $00:C4E6: 1A          ;
                BRA CODE_00C4ED         ; $00:C4E7: 80 04       ;

CODE_00C4E9:    LDA.l DATA_00C54E,x     ; $00:C4E9: BF 4E C5 00 ;
CODE_00C4ED:    STA $08B2               ; $00:C4ED: 8D B2 08    ;
                CLC                     ; $00:C4F0: 18          ;
                ADC #$20                ; $00:C4F1: 69 20       ;
                STA $08B6               ; $00:C4F3: 8D B6 08    ;
                LDA #$25                ; $00:C4F6: A9 25       ;
                STA $08B3               ; $00:C4F8: 8D B3 08    ;
                STA $08B7               ; $00:C4FB: 8D B7 08    ;
                LDA $021A               ; $00:C4FE: AD 1A 02    ;
                CLC                     ; $00:C501: 18          ;
                ADC #$07                ; $00:C502: 69 07       ;
                SEC                     ; $00:C504: 38          ;
                SBC $0042               ; $00:C505: ED 42 00    ;
                LDA $0079               ; $00:C508: AD 79 00    ;
                SBC $0043               ; $00:C50B: ED 43 00    ;
                ORA #$02                ; $00:C50E: 09 02       ;
                STA $0CB0               ; $00:C510: 8D B0 0C    ;
                STA $0CB4               ; $00:C513: 8D B4 0C    ;
                LDX $0B58               ; $00:C516: AE 58 0B    ;
                LDA $0802,x             ; $00:C519: BD 02 08    ;
                CMP #$F6                ; $00:C51C: C9 F6       ;
                BNE CODE_00C528         ; $00:C51E: D0 08       ;
                LDA #$F0                ; $00:C520: A9 F0       ;
                STA $0801,x             ; $00:C522: 9D 01 08    ;
                STA $0805,x             ; $00:C525: 9D 05 08    ;
CODE_00C528:    LDA $25                 ; $00:C528: A5 25       ;
                BEQ CODE_00C54C         ; $00:C52A: F0 20       ;
                LDA #$1C                ; $00:C52C: A9 1C       ;
                STA $09E3               ; $00:C52E: 8D E3 09    ;
                STA $09E7               ; $00:C531: 8D E7 09    ;
                STA $09EB               ; $00:C534: 8D EB 09    ;
                STA $09EF               ; $00:C537: 8D EF 09    ;
                LDA #$80                ; $00:C53A: A9 80       ;
                STA $09E2               ; $00:C53C: 8D E2 09    ;
                INC A                   ; $00:C53F: 1A          ;
                STA $09E6               ; $00:C540: 8D E6 09    ;
                LDA #$90                ; $00:C543: A9 90       ;
                STA $09EA               ; $00:C545: 8D EA 09    ;
                INC A                   ; $00:C548: 1A          ;
                STA $09EE               ; $00:C549: 8D EE 09    ;
CODE_00C54C:    PLX                     ; $00:C54C: FA          ;
                RTL                     ; $00:C54D: 6B          ;

DATA_00C54E:    db $88,$88,$80,$82,$86,$86,$86                  ;

CODE_00C555:    LDA $0F83               ; $00:C555: AD 83 0F    ;
                CMP #$0A                ; $00:C558: C9 0A       ;
                BCS CODE_00C586         ; $00:C55A: B0 2A       ;
                PHB                     ; $00:C55C: 8B          ;
                PHK                     ; $00:C55D: 4B          ;
                PLB                     ; $00:C55E: AB          ;
                PHX                     ; $00:C55F: DA          ;
                ASL A                   ; $00:C560: 0A          ;
                TAX                     ; $00:C561: AA          ;
                INC $0F83               ; $00:C562: EE 83 0F    ;
                LDA DATA_00C587,x       ; $00:C565: BD 87 C5    ;
                STA $0287               ; $00:C568: 8D 87 02    ;
                REP #$20                ; $00:C56B: C2 20       ;
                LDA #$0800              ; $00:C56D: A9 00 08    ;
                STA $0288               ; $00:C570: 8D 88 02    ;
                LDA DATA_00C5AF,x       ; $00:C573: BD AF C5    ;
                STA $028A               ; $00:C576: 8D 8A 02    ;
                LDA DATA_00C59B,x       ; $00:C579: BD 9B C5    ;
                STA $0285               ; $00:C57C: 8D 85 02    ;
                SEP #$20                ; $00:C57F: E2 20       ;
                INC $0B76               ; $00:C581: EE 76 0B    ;
                PLX                     ; $00:C584: FA          ;
                PLB                     ; $00:C585: AB          ;
CODE_00C586:    RTL                     ; $00:C586: 6B          ;

DATA_00C587:    db $08,$00,$2F,$00,$2F,$00,$2F,$00              ;
                db $2F,$00,$2F,$00,$2F,$00,$1E,$00              ;
                db $1E,$00,$1A,$00                              ;

DATA_00C59B:    db $00,$A0,$00,$D1,$00,$D8,$00,$E0              ;
                db $00,$E8,$00,$F0,$00,$F8,$00,$D0              ;
                db $00,$D8,$00,$E8                              ;

DATA_00C5AF:    db $00,$30,$80,$60,$00,$64,$00,$68              ;
                db $00,$6C,$00,$70,$00,$74,$00,$78              ;
                db $00,$7C,$00,$04                              ;

                PHB                     ; $00:C5C3: 8B          ;
                PHK                     ; $00:C5C4: 4B          ;
                PLB                     ; $00:C5C5: AB          ;
                PHX                     ; $00:C5C6: DA          ;
                LDA $0F83               ; $00:C5C7: AD 83 0F    ;
                ASL A                   ; $00:C5CA: 0A          ;
                TAX                     ; $00:C5CB: AA          ;
                INC $0F83               ; $00:C5CC: EE 83 0F    ;
                LDA DATA_00C5F1,x       ; $00:C5CF: BD F1 C5    ;
                STA $0287               ; $00:C5D2: 8D 87 02    ;
                REP #$20                ; $00:C5D5: C2 20       ;
                LDA #$0800              ; $00:C5D7: A9 00 08    ;
                STA $0288               ; $00:C5DA: 8D 88 02    ;
                LDA DATA_00C619,x       ; $00:C5DD: BD 19 C6    ;
                STA $028A               ; $00:C5E0: 8D 8A 02    ;
                LDA DATA_00C605,x       ; $00:C5E3: BD 05 C6    ;
                STA $0285               ; $00:C5E6: 8D 85 02    ;
                SEP #$20                ; $00:C5E9: E2 20       ;
                INC $0B76               ; $00:C5EB: EE 76 0B    ;
                PLX                     ; $00:C5EE: FA          ;
                PLB                     ; $00:C5EF: AB          ;
                RTL                     ; $00:C5F0: 6B          ;

DATA_00C5F1:    db $08,$00,$07,$00,$07,$00,$07,$00              ;
                db $07,$00,$07,$00,$07,$00,$07,$00              ;
                db $07,$00,$07,$00                              ;

DATA_00C605:    dw $A000,$8100,$8800,$9000                      ;
                dw $9800,$A000,$A800,$B000                      ;
                dw $B800,$B800                                  ;

DATA_00C619:    dw $3000,$6080,$6400,$6800                      ;
                dw $6C00,$7000,$7400,$7800                      ;
                dw $7C00,$7C00                                  ;

CODE_00C62D:    LDA #$2E                ; $00:C62D: A9 2E       ;
                STA $25                 ; $00:C62F: 85 25       ;
                LDA #$80                ; $00:C631: A9 80       ;
                STA $32                 ; $00:C633: 85 32       ;
                LDA #$01                ; $00:C635: A9 01       ;
                STA $19                 ; $00:C637: 85 19       ;
                LDA $78                 ; $00:C639: A5 78       ;
                STA $82                 ; $00:C63B: 85 82       ;
                LDA $0219               ; $00:C63D: AD 19 02    ;
                STA $0223               ; $00:C640: 8D 23 02    ;
                LDA #$01                ; $00:C643: A9 01       ;
                STA $00C5               ; $00:C645: 8D C5 00    ;
                LDA #$18                ; $00:C648: A9 18       ;
                STA $0241               ; $00:C64A: 8D 41 02    ;
                STZ $0067               ; $00:C64D: 9C 67 00    ;
                STZ $020C               ; $00:C650: 9C 0C 02    ;
                RTL                     ; $00:C653: 6B          ;

CODE_00C654:    LDA $70000F             ; $00:C654: AF 0F 00 70 ;
                BEQ CODE_00C664         ; $00:C658: F0 0A       ;
                LDA $075F               ; $00:C65A: AD 5F 07    ;
                CMP #$08                ; $00:C65D: C9 08       ;
                BCC CODE_00C67F         ; $00:C65F: 90 1E       ;
                JMP CODE_00C67F         ; $00:C661: 4C 7F C6    ;

CODE_00C664:    LDA $075F               ; $00:C664: AD 5F 07    ;
                PHA                     ; $00:C667: 48          ;
                LDA $0E24               ; $00:C668: AD 24 0E    ;
                PHA                     ; $00:C66B: 48          ;
                LDA $07FC               ; $00:C66C: AD FC 07    ;
                BNE CODE_00C677         ; $00:C66F: D0 06       ;
                STZ $0E24               ; $00:C671: 9C 24 0E    ;
                STZ $075F               ; $00:C674: 9C 5F 07    ;
CODE_00C677:    PLA                     ; $00:C677: 68          ;
                STA $0E24               ; $00:C678: 8D 24 0E    ;
                PLA                     ; $00:C67B: 68          ;
                STA $075F               ; $00:C67C: 8D 5F 07    ;
CODE_00C67F:    LDA #$01                ; $00:C67F: A9 01       ;
                STA $0F82               ; $00:C681: 8D 82 0F    ;
                STZ $0F83               ; $00:C684: 9C 83 0F    ;
                STZ $0717               ; $00:C687: 9C 17 07    ;
                RTL                     ; $00:C68A: 6B          ;

CODE_00C68B:    LDA $70000F             ; $00:C68B: AF 0F 00 70 ;
                BEQ CODE_00C694         ; $00:C68F: F0 03       ;
                JMP CODE_00C7BF         ; $00:C691: 4C BF C7    ;

CODE_00C694:    PHB                     ; $00:C694: 8B          ;
                PHK                     ; $00:C695: 4B          ;
                PLB                     ; $00:C696: AB          ;
                JSL CODE_0E81F6         ; $00:C697: 22 F6 81 0E ;
                LDX $0F80               ; $00:C69B: AE 80 0F    ;
                LDA $0F81               ; $00:C69E: AD 81 0F    ;
                CMP DATA_00CA5D,x       ; $00:C6A1: DD 5D CA    ;
                BCC CODE_00C6BD         ; $00:C6A4: 90 17       ;
                STZ $0F81               ; $00:C6A6: 9C 81 0F    ;
                INC $0F80               ; $00:C6A9: EE 80 0F    ;
                LDA $0F80               ; $00:C6AC: AD 80 0F    ;
                CMP #$08                ; $00:C6AF: C9 08       ;
                BCC CODE_00C6BD         ; $00:C6B1: 90 0A       ;
                BNE CODE_00C6B8         ; $00:C6B3: D0 03       ;
                STZ $0F89               ; $00:C6B5: 9C 89 0F    ;
CODE_00C6B8:    LDA #$08                ; $00:C6B8: A9 08       ;
                STA $0F80               ; $00:C6BA: 8D 80 0F    ;
CODE_00C6BD:    INC $0F81               ; $00:C6BD: EE 81 0F    ;
                LDA #$00                ; $00:C6C0: A9 00       ;
                XBA                     ; $00:C6C2: EB          ;
                LDA $0F80               ; $00:C6C3: AD 80 0F    ;
                ASL A                   ; $00:C6C6: 0A          ;
                REP #$10                ; $00:C6C7: C2 10       ;
                TAY                     ; $00:C6C9: A8          ;
                LDX DATA_00CAB4,y       ; $00:C6CA: BE B4 CA    ;
                STX $ED                 ; $00:C6CD: 86 ED       ;
                LDX DATA_00CA80,y       ; $00:C6CF: BE 80 CA    ;
                LDY #$0004              ; $00:C6D2: A0 04 00    ;
CODE_00C6D5:    LDA DATA_00CAFA,x       ; $00:C6D5: BD FA CA    ;
                CMP #$FF                ; $00:C6D8: C9 FF       ;
                BEQ CODE_00C715         ; $00:C6DA: F0 39       ;
                CLC                     ; $00:C6DC: 18          ;
                ADC #$80                ; $00:C6DD: 69 80       ;
                STA $0801,y             ; $00:C6DF: 99 01 08    ;
                INX                     ; $00:C6E2: E8          ;
                LDA DATA_00CAFA,x       ; $00:C6E3: BD FA CA    ;
                CLC                     ; $00:C6E6: 18          ;
                ADC #$C0                ; $00:C6E7: 69 C0       ;
                STA $0800,y             ; $00:C6E9: 99 00 08    ;
                INX                     ; $00:C6EC: E8          ;
                LDA DATA_00CAFA,x       ; $00:C6ED: BD FA CA    ;
                STA $0802,y             ; $00:C6F0: 99 02 08    ;
                INX                     ; $00:C6F3: E8          ;
                STZ $00                 ; $00:C6F4: 64 00       ;
                CMP #$80                ; $00:C6F6: C9 80       ;
                BCS CODE_00C6FF         ; $00:C6F8: B0 05       ;
                LDA $0753               ; $00:C6FA: AD 53 07    ;
                STA $00                 ; $00:C6FD: 85 00       ;
CODE_00C6FF:    LDA DATA_00CAFA,x       ; $00:C6FF: BD FA CA    ;
                ORA $00                 ; $00:C702: 05 00       ;
                ORA #$20                ; $00:C704: 09 20       ;
                STA $0803,y             ; $00:C706: 99 03 08    ;
                INX                     ; $00:C709: E8          ;
                LDA #$02                ; $00:C70A: A9 02       ;
                STA $0C00,y             ; $00:C70C: 99 00 0C    ;
                INY                     ; $00:C70F: C8          ;
                INY                     ; $00:C710: C8          ;
                INY                     ; $00:C711: C8          ;
                INY                     ; $00:C712: C8          ;
                BRA CODE_00C6D5         ; $00:C713: 80 C0       ;

CODE_00C715:    LDX $ED                 ; $00:C715: A6 ED       ;
CODE_00C717:    LDA DATA_00CAFA,x       ; $00:C717: BD FA CA    ;
                CMP #$FF                ; $00:C71A: C9 FF       ;
                BEQ CODE_00C764         ; $00:C71C: F0 46       ;
                CLC                     ; $00:C71E: 18          ;
                ADC #$80                ; $00:C71F: 69 80       ;
                STA $0801,y             ; $00:C721: 99 01 08    ;
                INX                     ; $00:C724: E8          ;
                LDA DATA_00CAFA,x       ; $00:C725: BD FA CA    ;
                CLC                     ; $00:C728: 18          ;
                ADC #$C0                ; $00:C729: 69 C0       ;
                CLC                     ; $00:C72B: 18          ;
                ADC $0753               ; $00:C72C: 6D 53 07    ;
                ADC $0753               ; $00:C72F: 6D 53 07    ;
                ADC $0753               ; $00:C732: 6D 53 07    ;
                ADC $0753               ; $00:C735: 6D 53 07    ;
                STA $0800,y             ; $00:C738: 99 00 08    ;
                INX                     ; $00:C73B: E8          ;
                LDA DATA_00CAFA,x       ; $00:C73C: BD FA CA    ;
                STA $0802,y             ; $00:C73F: 99 02 08    ;
                INX                     ; $00:C742: E8          ;
                STZ $00                 ; $00:C743: 64 00       ;
                CMP #$80                ; $00:C745: C9 80       ;
                BCS CODE_00C74E         ; $00:C747: B0 05       ;
                LDA $0753               ; $00:C749: AD 53 07    ;
                STA $00                 ; $00:C74C: 85 00       ;
CODE_00C74E:    LDA DATA_00CAFA,x       ; $00:C74E: BD FA CA    ;
                ORA $00                 ; $00:C751: 05 00       ;
                ORA #$20                ; $00:C753: 09 20       ;
                STA $0803,y             ; $00:C755: 99 03 08    ;
                INX                     ; $00:C758: E8          ;
                LDA #$02                ; $00:C759: A9 02       ;
                STA $0C00,y             ; $00:C75B: 99 00 0C    ;
                INY                     ; $00:C75E: C8          ;
                INY                     ; $00:C75F: C8          ;
                INY                     ; $00:C760: C8          ;
                INY                     ; $00:C761: C8          ;
                BRA CODE_00C717         ; $00:C762: 80 B3       ;

CODE_00C764:    LDA $0F80               ; $00:C764: AD 80 0F    ;
                CMP #$08                ; $00:C767: C9 08       ;
                BNE CODE_00C7B8         ; $00:C769: D0 4D       ;
                SEP #$10                ; $00:C76B: E2 10       ;
                JSR CODE_00E543         ; $00:C76D: 20 43 E5    ;
                LDA $0F89               ; $00:C770: AD 89 0F    ;
                LSR A                   ; $00:C773: 4A          ;
                LSR A                   ; $00:C774: 4A          ;
                LSR A                   ; $00:C775: 4A          ;
                AND #$03                ; $00:C776: 29 03       ;
                TAX                     ; $00:C778: AA          ;
                LDA.l DATA_00CA59,x     ; $00:C779: BF 59 CA 00 ;
                CLC                     ; $00:C77D: 18          ;
                ADC #$B0                ; $00:C77E: 69 B0       ;
                STA $0800               ; $00:C780: 8D 00 08    ;
                LDA $0F89               ; $00:C783: AD 89 0F    ;
                LSR A                   ; $00:C786: 4A          ;
                LSR A                   ; $00:C787: 4A          ;
                STA $00                 ; $00:C788: 85 00       ;
                LDA #$60                ; $00:C78A: A9 60       ;
                SEC                     ; $00:C78C: 38          ;
                SBC $00                 ; $00:C78D: E5 00       ;
                STA $0801               ; $00:C78F: 8D 01 08    ;
                LDA $0F89               ; $00:C792: AD 89 0F    ;
                LSR A                   ; $00:C795: 4A          ;
                LSR A                   ; $00:C796: 4A          ;
                LSR A                   ; $00:C797: 4A          ;
                LSR A                   ; $00:C798: 4A          ;
                LSR A                   ; $00:C799: 4A          ;
                AND #$03                ; $00:C79A: 29 03       ;
                TAX                     ; $00:C79C: AA          ;
                LDA.l DATA_00CA55,x     ; $00:C79D: BF 55 CA 00 ;
                STA $0802               ; $00:C7A1: 8D 02 08    ;
                LDA #$26                ; $00:C7A4: A9 26       ;
                STA $0803               ; $00:C7A6: 8D 03 08    ;
                LDA #$00                ; $00:C7A9: A9 00       ;
                STA $0C00               ; $00:C7AB: 8D 00 0C    ;
                INC $0F89               ; $00:C7AE: EE 89 0F    ;
                CPX #$03                ; $00:C7B1: E0 03       ;
                BNE CODE_00C7B8         ; $00:C7B3: D0 03       ;
                STZ $0F89               ; $00:C7B5: 9C 89 0F    ;
CODE_00C7B8:    SEP #$10                ; $00:C7B8: E2 10       ;
                JSR CODE_00CA21         ; $00:C7BA: 20 21 CA    ;
                PLB                     ; $00:C7BD: AB          ;
                RTL                     ; $00:C7BE: 6B          ;

CODE_00C7BF:    LDA $075F               ; $00:C7BF: AD 5F 07    ;
                CMP #$08                ; $00:C7C2: C9 08       ;
                BCC CODE_00C7C9         ; $00:C7C4: 90 03       ;
                JMP CODE_00C8F6         ; $00:C7C6: 4C F6 C8    ;

CODE_00C7C9:    PHB                     ; $00:C7C9: 8B          ;
                PHK                     ; $00:C7CA: 4B          ;
                PLB                     ; $00:C7CB: AB          ;
                JSL CODE_0E81F6         ; $00:C7CC: 22 F6 81 0E ;
                LDX $0F80               ; $00:C7D0: AE 80 0F    ;
                LDA $0F81               ; $00:C7D3: AD 81 0F    ;
                CMP.w DATA_00CA66,x     ; $00:C7D6: DD 66 CA    ;
                BCC CODE_00C7F4         ; $00:C7D9: 90 19       ;
                STZ $0F81               ; $00:C7DB: 9C 81 0F    ;
                INC $0F80               ; $00:C7DE: EE 80 0F    ;
                LDA $0F80               ; $00:C7E1: AD 80 0F    ;
                CMP #$05                ; $00:C7E4: C9 05       ;
                BNE CODE_00C7EB         ; $00:C7E6: D0 03       ;
                STZ $0F89               ; $00:C7E8: 9C 89 0F    ;
CODE_00C7EB:    CMP #$0F                ; $00:C7EB: C9 0F       ;
                BCC CODE_00C7F4         ; $00:C7ED: 90 05       ;
                LDA #$06                ; $00:C7EF: A9 06       ;
                STA $0F80               ; $00:C7F1: 8D 80 0F    ;
CODE_00C7F4:    INC $0F81               ; $00:C7F4: EE 81 0F    ;
                LDA #$00                ; $00:C7F7: A9 00       ;
                XBA                     ; $00:C7F9: EB          ;
                LDA $0F80               ; $00:C7FA: AD 80 0F    ;
                ASL A                   ; $00:C7FD: 0A          ;
                REP #$10                ; $00:C7FE: C2 10       ;
                TAY                     ; $00:C800: A8          ;
                LDX DATA_00CAC6,y       ; $00:C801: BE C6 CA    ;
                STX $ED                 ; $00:C804: 86 ED       ;
                LDX DATA_00CA80,y       ; $00:C806: BE 80 CA    ;
                LDY #$0004              ; $00:C809: A0 04 00    ;
CODE_00C80C:    LDA DATA_00CAFA,x       ; $00:C80C: BD FA CA    ;
                CMP #$FF                ; $00:C80F: C9 FF       ;
                BEQ CODE_00C84C         ; $00:C811: F0 39       ;
                CLC                     ; $00:C813: 18          ;
                ADC #$80                ; $00:C814: 69 80       ;
                STA $0801,y             ; $00:C816: 99 01 08    ;
                INX                     ; $00:C819: E8          ;
                LDA DATA_00CAFA,x       ; $00:C81A: BD FA CA    ;
                CLC                     ; $00:C81D: 18          ;
                ADC #$C0                ; $00:C81E: 69 C0       ;
                STA $0800,y             ; $00:C820: 99 00 08    ;
                INX                     ; $00:C823: E8          ;
                LDA DATA_00CAFA,x       ; $00:C824: BD FA CA    ;
                STA $0802,y             ; $00:C827: 99 02 08    ;
                INX                     ; $00:C82A: E8          ;
                STZ $00                 ; $00:C82B: 64 00       ;
                CMP #$80                ; $00:C82D: C9 80       ;
                BCS CODE_00C836         ; $00:C82F: B0 05       ;
                LDA $0753               ; $00:C831: AD 53 07    ;
                STA $00                 ; $00:C834: 85 00       ;
CODE_00C836:    LDA DATA_00CAFA,x       ; $00:C836: BD FA CA    ;
                ORA $00                 ; $00:C839: 05 00       ;
                ORA #$20                ; $00:C83B: 09 20       ;
                STA $0803,y             ; $00:C83D: 99 03 08    ;
                INX                     ; $00:C840: E8          ;
                LDA #$02                ; $00:C841: A9 02       ;
                STA $0C00,y             ; $00:C843: 99 00 0C    ;
                INY                     ; $00:C846: C8          ;
                INY                     ; $00:C847: C8          ;
                INY                     ; $00:C848: C8          ;
                INY                     ; $00:C849: C8          ;
                BRA CODE_00C80C         ; $00:C84A: 80 C0       ;

CODE_00C84C:    LDX $ED                 ; $00:C84C: A6 ED       ;
CODE_00C84E:    LDA DATA_00CAFA,x       ; $00:C84E: BD FA CA    ;
                CMP #$FF                ; $00:C851: C9 FF       ;
                BEQ CODE_00C89B         ; $00:C853: F0 46       ;
                CLC                     ; $00:C855: 18          ;
                ADC #$80                ; $00:C856: 69 80       ;
                STA $0801,y             ; $00:C858: 99 01 08    ;
                INX                     ; $00:C85B: E8          ;
                LDA DATA_00CAFA,x       ; $00:C85C: BD FA CA    ;
                CLC                     ; $00:C85F: 18          ;
                ADC #$C0                ; $00:C860: 69 C0       ;
                CLC                     ; $00:C862: 18          ;
                ADC $0753               ; $00:C863: 6D 53 07    ;
                ADC $0753               ; $00:C866: 6D 53 07    ;
                ADC $0753               ; $00:C869: 6D 53 07    ;
                ADC $0753               ; $00:C86C: 6D 53 07    ;
                STA $0800,y             ; $00:C86F: 99 00 08    ;
                INX                     ; $00:C872: E8          ;
                LDA DATA_00CAFA,x       ; $00:C873: BD FA CA    ;
                STA $0802,y             ; $00:C876: 99 02 08    ;
                INX                     ; $00:C879: E8          ;
                STZ $00                 ; $00:C87A: 64 00       ;
                CMP #$80                ; $00:C87C: C9 80       ;
                BCS CODE_00C885         ; $00:C87E: B0 05       ;
                LDA $0753               ; $00:C880: AD 53 07    ;
                STA $00                 ; $00:C883: 85 00       ;
CODE_00C885:    LDA DATA_00CAFA,x       ; $00:C885: BD FA CA    ;
                ORA $00                 ; $00:C888: 05 00       ;
                ORA #$20                ; $00:C88A: 09 20       ;
                STA $0803,y             ; $00:C88C: 99 03 08    ;
                INX                     ; $00:C88F: E8          ;
                LDA #$02                ; $00:C890: A9 02       ;
                STA $0C00,y             ; $00:C892: 99 00 0C    ;
                INY                     ; $00:C895: C8          ;
                INY                     ; $00:C896: C8          ;
                INY                     ; $00:C897: C8          ;
                INY                     ; $00:C898: C8          ;
                BRA CODE_00C84E         ; $00:C899: 80 B3       ;

CODE_00C89B:    LDA $0F80               ; $00:C89B: AD 80 0F    ;
                CMP #$06                ; $00:C89E: C9 06       ;
                BCC CODE_00C8EF         ; $00:C8A0: 90 4D       ;
                SEP #$10                ; $00:C8A2: E2 10       ;
                JSR CODE_00E543         ; $00:C8A4: 20 43 E5    ;
                LDA $0F89               ; $00:C8A7: AD 89 0F    ;
                LSR A                   ; $00:C8AA: 4A          ;
                LSR A                   ; $00:C8AB: 4A          ;
                LSR A                   ; $00:C8AC: 4A          ;
                AND #$03                ; $00:C8AD: 29 03       ;
                TAX                     ; $00:C8AF: AA          ;
                LDA.l DATA_00CA59,x     ; $00:C8B0: BF 59 CA 00 ;
                CLC                     ; $00:C8B4: 18          ;
                ADC #$B0                ; $00:C8B5: 69 B0       ;
                STA $0800               ; $00:C8B7: 8D 00 08    ;
                LDA $0F89               ; $00:C8BA: AD 89 0F    ;
                LSR A                   ; $00:C8BD: 4A          ;
                LSR A                   ; $00:C8BE: 4A          ;
                STA $00                 ; $00:C8BF: 85 00       ;
                LDA #$60                ; $00:C8C1: A9 60       ;
                SEC                     ; $00:C8C3: 38          ;
                SBC $00                 ; $00:C8C4: E5 00       ;
                STA $0801               ; $00:C8C6: 8D 01 08    ;
                LDA $0F89               ; $00:C8C9: AD 89 0F    ;
                LSR A                   ; $00:C8CC: 4A          ;
                LSR A                   ; $00:C8CD: 4A          ;
                LSR A                   ; $00:C8CE: 4A          ;
                LSR A                   ; $00:C8CF: 4A          ;
                LSR A                   ; $00:C8D0: 4A          ;
                AND #$03                ; $00:C8D1: 29 03       ;
                TAX                     ; $00:C8D3: AA          ;
                LDA.l DATA_00CA55,x     ; $00:C8D4: BF 55 CA 00 ;
                STA $0802               ; $00:C8D8: 8D 02 08    ;
                LDA #$26                ; $00:C8DB: A9 26       ;
                STA $0803               ; $00:C8DD: 8D 03 08    ;
                LDA #$00                ; $00:C8E0: A9 00       ;
                STA $0C00               ; $00:C8E2: 8D 00 0C    ;
                INC $0F89               ; $00:C8E5: EE 89 0F    ;
                CPX #$03                ; $00:C8E8: E0 03       ;
                BNE CODE_00C8EF         ; $00:C8EA: D0 03       ;
                STZ $0F89               ; $00:C8EC: 9C 89 0F    ;
CODE_00C8EF:    SEP #$10                ; $00:C8EF: E2 10       ;
                JSR CODE_00CA21         ; $00:C8F1: 20 21 CA    ;
                PLB                     ; $00:C8F4: AB          ;
                RTL                     ; $00:C8F5: 6B          ;

CODE_00C8F6:    PHB                     ; $00:C8F6: 8B          ;
                PHK                     ; $00:C8F7: 4B          ;
                PLB                     ; $00:C8F8: AB          ;
                JSL CODE_0E81F6         ; $00:C8F9: 22 F6 81 0E ;
                LDX $0F80               ; $00:C8FD: AE 80 0F    ;
                LDA $0F81               ; $00:C900: AD 81 0F    ;
                CMP.w DATA_00CA76,x     ; $00:C903: DD 76 CA    ;
                BCC CODE_00C91F         ; $00:C906: 90 17       ;
                STZ $0F81               ; $00:C908: 9C 81 0F    ;
                INC $0F80               ; $00:C90B: EE 80 0F    ;
                LDA $0F80               ; $00:C90E: AD 80 0F    ;
                CMP #$09                ; $00:C911: C9 09       ;
                BCC CODE_00C91F         ; $00:C913: 90 0A       ;
                BNE CODE_00C91A         ; $00:C915: D0 03       ;
                STZ $0F89               ; $00:C917: 9C 89 0F    ;
CODE_00C91A:    LDA #$09                ; $00:C91A: A9 09       ;
                STA $0F80               ; $00:C91C: 8D 80 0F    ;
CODE_00C91F:    INC $0F81               ; $00:C91F: EE 81 0F    ;
                LDA #$00                ; $00:C922: A9 00       ;
                XBA                     ; $00:C924: EB          ;
                LDA $0F80               ; $00:C925: AD 80 0F    ;
                ASL A                   ; $00:C928: 0A          ;
                REP #$10                ; $00:C929: C2 10       ;
                TAY                     ; $00:C92B: A8          ;
                LDX DATA_00CAE6,y       ; $00:C92C: BE E6 CA    ;
                STX $ED                 ; $00:C92F: 86 ED       ;
                LDX DATA_00CAA0,y       ; $00:C931: BE A0 CA    ;
                LDY #$0004              ; $00:C934: A0 04 00    ;
CODE_00C937:    LDA DATA_00CAFA,x       ; $00:C937: BD FA CA    ;
                CMP #$FF                ; $00:C93A: C9 FF       ;
                BEQ CODE_00C977         ; $00:C93C: F0 39       ;
                CLC                     ; $00:C93E: 18          ;
                ADC #$80                ; $00:C93F: 69 80       ;
                STA $0801,y             ; $00:C941: 99 01 08    ;
                INX                     ; $00:C944: E8          ;
                LDA DATA_00CAFA,x       ; $00:C945: BD FA CA    ;
                CLC                     ; $00:C948: 18          ;
                ADC #$C0                ; $00:C949: 69 C0       ;
                STA $0800,y             ; $00:C94B: 99 00 08    ;
                INX                     ; $00:C94E: E8          ;
                LDA DATA_00CAFA,x       ; $00:C94F: BD FA CA    ;
                STA $0802,y             ; $00:C952: 99 02 08    ;
                INX                     ; $00:C955: E8          ;
                STZ $00                 ; $00:C956: 64 00       ;
                CMP #$80                ; $00:C958: C9 80       ;
                BCS CODE_00C961         ; $00:C95A: B0 05       ;
                LDA $0753               ; $00:C95C: AD 53 07    ;
                STA $00                 ; $00:C95F: 85 00       ;
CODE_00C961:    LDA DATA_00CAFA,x       ; $00:C961: BD FA CA    ;
                ORA $00                 ; $00:C964: 05 00       ;
                ORA #$20                ; $00:C966: 09 20       ;
                STA $0803,y             ; $00:C968: 99 03 08    ;
                INX                     ; $00:C96B: E8          ;
                LDA #$02                ; $00:C96C: A9 02       ;
                STA $0C00,y             ; $00:C96E: 99 00 0C    ;
                INY                     ; $00:C971: C8          ;
                INY                     ; $00:C972: C8          ;
                INY                     ; $00:C973: C8          ;
                INY                     ; $00:C974: C8          ;
                BRA CODE_00C937         ; $00:C975: 80 C0       ;

CODE_00C977:    LDX $ED                 ; $00:C977: A6 ED       ;
CODE_00C979:    LDA DATA_00CAFA,x       ; $00:C979: BD FA CA    ;
                CMP #$FF                ; $00:C97C: C9 FF       ;
                BEQ CODE_00C9C6         ; $00:C97E: F0 46       ;
                CLC                     ; $00:C980: 18          ;
                ADC #$80                ; $00:C981: 69 80       ;
                STA $0801,y             ; $00:C983: 99 01 08    ;
                INX                     ; $00:C986: E8          ;
                LDA DATA_00CAFA,x       ; $00:C987: BD FA CA    ;
                CLC                     ; $00:C98A: 18          ;
                ADC #$C0                ; $00:C98B: 69 C0       ;
                CLC                     ; $00:C98D: 18          ;
                ADC $0753               ; $00:C98E: 6D 53 07    ;
                ADC $0753               ; $00:C991: 6D 53 07    ;
                ADC $0753               ; $00:C994: 6D 53 07    ;
                ADC $0753               ; $00:C997: 6D 53 07    ;
                STA $0800,y             ; $00:C99A: 99 00 08    ;
                INX                     ; $00:C99D: E8          ;
                LDA DATA_00CAFA,x       ; $00:C99E: BD FA CA    ;
                STA $0802,y             ; $00:C9A1: 99 02 08    ;
                INX                     ; $00:C9A4: E8          ;
                STZ $00                 ; $00:C9A5: 64 00       ;
                CMP #$80                ; $00:C9A7: C9 80       ;
                BCS CODE_00C9B0         ; $00:C9A9: B0 05       ;
                LDA $0753               ; $00:C9AB: AD 53 07    ;
                STA $00                 ; $00:C9AE: 85 00       ;
CODE_00C9B0:    LDA DATA_00CAFA,x       ; $00:C9B0: BD FA CA    ;
                ORA $00                 ; $00:C9B3: 05 00       ;
                ORA #$20                ; $00:C9B5: 09 20       ;
                STA $0803,y             ; $00:C9B7: 99 03 08    ;
                INX                     ; $00:C9BA: E8          ;
                LDA #$02                ; $00:C9BB: A9 02       ;
                STA $0C00,y             ; $00:C9BD: 99 00 0C    ;
                INY                     ; $00:C9C0: C8          ;
                INY                     ; $00:C9C1: C8          ;
                INY                     ; $00:C9C2: C8          ;
                INY                     ; $00:C9C3: C8          ;
                BRA CODE_00C979         ; $00:C9C4: 80 B3       ;

CODE_00C9C6:    LDA $0F80               ; $00:C9C6: AD 80 0F    ;
                CMP #$09                ; $00:C9C9: C9 09       ;
                BNE CODE_00CA1A         ; $00:C9CB: D0 4D       ;
                SEP #$10                ; $00:C9CD: E2 10       ;
                JSR CODE_00E543         ; $00:C9CF: 20 43 E5    ;
                LDA $0F89               ; $00:C9D2: AD 89 0F    ;
                LSR A                   ; $00:C9D5: 4A          ;
                LSR A                   ; $00:C9D6: 4A          ;
                LSR A                   ; $00:C9D7: 4A          ;
                AND #$03                ; $00:C9D8: 29 03       ;
                TAX                     ; $00:C9DA: AA          ;
                LDA.l DATA_00CA59,x     ; $00:C9DB: BF 59 CA 00 ;
                CLC                     ; $00:C9DF: 18          ;
                ADC #$B0                ; $00:C9E0: 69 B0       ;
                STA $0800               ; $00:C9E2: 8D 00 08    ;
                LDA $0F89               ; $00:C9E5: AD 89 0F    ;
                LSR A                   ; $00:C9E8: 4A          ;
                LSR A                   ; $00:C9E9: 4A          ;
                STA $00                 ; $00:C9EA: 85 00       ;
                LDA #$60                ; $00:C9EC: A9 60       ;
                SEC                     ; $00:C9EE: 38          ;
                SBC $00                 ; $00:C9EF: E5 00       ;
                STA $0801               ; $00:C9F1: 8D 01 08    ;
                LDA $0F89               ; $00:C9F4: AD 89 0F    ;
                LSR A                   ; $00:C9F7: 4A          ;
                LSR A                   ; $00:C9F8: 4A          ;
                LSR A                   ; $00:C9F9: 4A          ;
                LSR A                   ; $00:C9FA: 4A          ;
                LSR A                   ; $00:C9FB: 4A          ;
                AND #$03                ; $00:C9FC: 29 03       ;
                TAX                     ; $00:C9FE: AA          ;
                LDA.l DATA_00CA55,x     ; $00:C9FF: BF 55 CA 00 ;
                STA $0802               ; $00:CA03: 8D 02 08    ;
                LDA #$26                ; $00:CA06: A9 26       ;
                STA $0803               ; $00:CA08: 8D 03 08    ;
                LDA #$00                ; $00:CA0B: A9 00       ;
                STA $0C00               ; $00:CA0D: 8D 00 0C    ;
                INC $0F89               ; $00:CA10: EE 89 0F    ;
                CPX #$03                ; $00:CA13: E0 03       ;
                BNE CODE_00CA1A         ; $00:CA15: D0 03       ;
                STZ $0F89               ; $00:CA17: 9C 89 0F    ;
CODE_00CA1A:    SEP #$10                ; $00:CA1A: E2 10       ;
                JSR CODE_00CA21         ; $00:CA1C: 20 21 CA    ;
                PLB                     ; $00:CA1F: AB          ;
                RTL                     ; $00:CA20: 6B          ;

CODE_00CA21:    LDA $0753               ; $00:CA21: AD 53 07    ;
                BEQ CODE_00CA54         ; $00:CA24: F0 2E       ;
                LDA $0806               ; $00:CA26: AD 06 08    ;
                CMP #$EE                ; $00:CA29: C9 EE       ;
                BNE CODE_00CA54         ; $00:CA2B: D0 27       ;
                LDA $0804               ; $00:CA2D: AD 04 08    ;
                DEC A                   ; $00:CA30: 3A          ;
                DEC A                   ; $00:CA31: 3A          ;
                STA $0804               ; $00:CA32: 8D 04 08    ;
                STA $0808               ; $00:CA35: 8D 08 08    ;
                LDA #$82                ; $00:CA38: A9 82       ;
                STA $0806               ; $00:CA3A: 8D 06 08    ;
                INC A                   ; $00:CA3D: 1A          ;
                STA $080A               ; $00:CA3E: 8D 0A 08    ;
                LDA $0804               ; $00:CA41: AD 04 08    ;
                CLC                     ; $00:CA44: 18          ;
                ADC #$08                ; $00:CA45: 69 08       ;
                STA $0808               ; $00:CA47: 8D 08 08    ;
                LDA #$85                ; $00:CA4A: A9 85       ;
                STA $080E               ; $00:CA4C: 8D 0E 08    ;
                LDA #$89                ; $00:CA4F: A9 89       ;
                STA $0812               ; $00:CA51: 8D 12 08    ;
CODE_00CA54:    RTS                     ; $00:CA54: 60          ;

DATA_00CA55:    db $5F,$5E,$5D,$5C                              ;

DATA_00CA59:    db $00,$02,$00,$FE                              ;

DATA_00CA5D:    db $50,$30,$08,$08,$20,$20,$08,$08              ;
                db $FF                                          ;

DATA_00CA66:    db $50,$30,$08,$08,$20,$20,$08,$08              ;
                db $0C,$08,$08,$0C,$08,$08,$0C,$FF              ;

DATA_00CA76:    db $60,$08,$08,$10,$14,$10,$14,$10              ;
                db $14,$FF                                      ;

DATA_00CA80:    dw $0000,$008A,$011C,$01AE                      ;
                dw $0244,$02D2,$0360,$045F                      ;
                dw $055E,$055E,$055E,$055E                      ;
                dw $055E,$055E,$055E,$055E                      ;

DATA_00CAA0:    dw $06BE,$0789,$07CE,$06FF                      ;
                dw $0744,$06FF,$0744,$06FF                      ;
                dw $0744,$06FF                                  ;

DATA_00CAB4:    dw $0041,$00CB,$015D,$01F3                      ;
                dw $0289,$0317,$03A5,$04A4                      ;
                dw $05A3                                        ;

DATA_00CAC6:    dw $0041,$00CB,$015D,$01F3                      ;
                dw $0289,$0317,$03F6,$04F5                      ;
                dw $05F4,$03F6,$04F5,$05F4                      ;
                dw $03F6,$04F5,$05F4,$065D                      ;

DATA_00CAE6:    dw $0813,$091E,$0977,$086C                      ;
                dw $08C5,$086C,$08C5,$086C                      ;
                dw $08C5,$086C                                  ;

DATA_00CAFA:    db $E8,$EC,$A0,$06,$E8,$FC,$A2,$06              ;
                db $E8,$0C,$A4,$06,$F8,$EC,$C0,$06              ;
                db $F8,$FC,$C2,$06,$F8,$0C,$C4,$06              ;
                db $08,$EC,$E0,$06,$08,$FC,$E2,$06              ;
                db $08,$0C,$E4,$06,$10,$CC,$8D,$06              ;
                db $10,$D4,$8E,$06,$10,$E4,$AC,$06              ;
                db $10,$F4,$AE,$06,$18,$F4,$CC,$06              ;
                db $18,$04,$CE,$06,$18,$14,$EC,$06              ;
                db $FF,$D8,$D0,$0A,$06,$D8,$E0,$08              ;
                db $06,$E8,$C0,$28,$06,$E8,$D0,$2A              ;
                db $06,$E8,$E0,$2A,$46,$E8,$F0,$28              ;
                db $46,$F8,$C0,$48,$06,$F8,$D0,$4A              ;
                db $06,$F8,$E0,$4A,$46,$F8,$F0,$48              ;
                db $46,$08,$C0,$68,$06,$08,$D0,$6A              ;
                db $06,$08,$E0,$6A,$46,$08,$F0,$68              ;
                db $46,$18,$C0,$6E,$46,$18,$D0,$6C              ;
                db $46,$18,$E0,$6C,$06,$18,$F0,$6E              ;
                db $06,$FF,$E8,$EC,$A0,$06,$E8,$FC              ;
                db $A2,$06,$E8,$0C,$A4,$06,$F8,$EC              ;
                db $C0,$06,$F8,$FC,$C2,$06,$F8,$0C              ;
                db $C4,$06,$08,$EC,$E0,$06,$08,$FC              ;
                db $E2,$06,$08,$0C,$E4,$06,$10,$CC              ;
                db $8D,$06,$10,$D4,$8E,$06,$10,$E4              ;
                db $AC,$06,$10,$F4,$AE,$06,$18,$F4              ;
                db $CC,$06,$18,$04,$CE,$06,$18,$14              ;
                db $EC,$06,$FF,$F0,$D0,$14,$06,$F0              ;
                db $E0,$16,$06,$D8,$D0,$0A,$06,$D8              ;
                db $E0,$08,$06,$E8,$C0,$28,$06,$E8              ;
                db $D0,$2A,$06,$E8,$E0,$2A,$46,$E8              ;
                db $F0,$28,$46,$F8,$C0,$48,$06,$F8              ;
                db $D0,$4A,$06,$F8,$E0,$4A,$46,$F8              ;
                db $F0,$48,$46,$08,$C0,$68,$06,$08              ;
                db $D0,$6A,$06,$08,$E0,$6A,$46,$08              ;
                db $F0,$68,$46,$18,$C0,$6E,$46,$18              ;
                db $D0,$6C,$46,$18,$E0,$6C,$06,$18              ;
                db $F0,$6E,$06,$FF,$E8,$EB,$A0,$06              ;
                db $E8,$FB,$A2,$06,$E8,$0B,$A4,$06              ;
                db $F8,$EB,$C0,$06,$F8,$FB,$C2,$06              ;
                db $F8,$0B,$C4,$06,$08,$EB,$E0,$06              ;
                db $08,$FB,$E2,$06,$08,$0B,$E4,$06              ;
                db $10,$CB,$8D,$06,$10,$D3,$8E,$06              ;
                db $10,$E3,$AC,$06,$10,$F3,$AE,$06              ;
                db $18,$F3,$CC,$06,$18,$03,$CE,$06              ;
                db $18,$13,$EC,$06,$FF,$F0,$D0,$14              ;
                db $06,$F0,$E0,$16,$06,$D8,$D0,$0A              ;
                db $06,$D8,$E0,$08,$06,$E8,$C0,$28              ;
                db $06,$E8,$D0,$2A,$06,$E8,$E0,$2A              ;
                db $46,$E8,$F0,$28,$46,$F8,$C0,$48              ;
                db $06,$F8,$D0,$4A,$06,$F8,$E0,$4A              ;
                db $46,$F8,$F0,$48,$46,$08,$C0,$68              ;
                db $06,$08,$D0,$6A,$06,$08,$E0,$6A              ;
                db $46,$08,$F0,$68,$46,$18,$C0,$6E              ;
                db $46,$18,$D0,$6C,$46,$18,$E0,$6C              ;
                db $06,$18,$F0,$6E,$06,$FF,$00,$D5              ;
                db $EE,$06,$00,$D5,$EE,$06,$10,$DB              ;
                db $88,$06,$10,$E2,$89,$06,$E8,$EA              ;
                db $A0,$06,$E8,$FA,$A2,$06,$E8,$0A              ;
                db $A4,$06,$F8,$EA,$C0,$06,$F8,$FA              ;
                db $C2,$06,$F8,$0A,$C4,$06,$08,$EA              ;
                db $E0,$06,$08,$FA,$E2,$06,$08,$0A              ;
                db $E4,$06,$10,$F2,$8B,$06,$18,$F2              ;
                db $CC,$06,$18,$02,$CE,$06,$18,$12              ;
                db $EC,$06,$FF,$F0,$D0,$14,$06,$F0              ;
                db $E0,$16,$06,$D8,$D0,$0A,$06,$D8              ;
                db $E0,$08,$06,$E8,$C0,$28,$06,$E8              ;
                db $D0,$2A,$06,$E8,$E0,$2A,$46,$E8              ;
                db $F0,$28,$46,$F8,$C0,$48,$06,$F8              ;
                db $D0,$4A,$06,$F8,$E0,$4A,$46,$F8              ;
                db $F0,$48,$46,$08,$C0,$68,$06,$08              ;
                db $D0,$6A,$06,$08,$E0,$6A,$46,$08              ;
                db $F0,$68,$46,$18,$C0,$6E,$46,$18              ;
                db $D0,$6C,$46,$18,$E0,$6C,$06,$18              ;
                db $F0,$6E,$06,$FF,$00,$D4,$EE,$06              ;
                db $00,$D4,$EE,$06,$10,$DA,$88,$06              ;
                db $10,$E1,$89,$06,$E8,$E9,$A0,$06              ;
                db $E8,$F9,$A2,$06,$E8,$09,$A4,$06              ;
                db $F8,$E9,$C0,$06,$F8,$F9,$C2,$06              ;
                db $F8,$09,$C4,$06,$08,$E9,$E0,$06              ;
                db $08,$F9,$E2,$06,$08,$09,$E4,$06              ;
                db $10,$F1,$8B,$06,$18,$F1,$CC,$06              ;
                db $18,$01,$CE,$06,$18,$11,$EC,$06              ;
                db $FF,$D8,$D0,$0A,$06,$D8,$E0,$08              ;
                db $06,$E8,$C0,$28,$06,$E8,$D0,$2A              ;
                db $06,$E8,$E0,$2A,$46,$E8,$F0,$28              ;
                db $46,$F8,$C0,$48,$06,$F8,$D0,$4A              ;
                db $06,$F8,$E0,$4A,$46,$F8,$F0,$48              ;
                db $46,$08,$C0,$68,$06,$08,$D0,$6A              ;
                db $06,$08,$E0,$6A,$46,$08,$F0,$68              ;
                db $46,$18,$C0,$6E,$46,$18,$D0,$6C              ;
                db $46,$18,$E0,$6C,$06,$18,$F0,$6E              ;
                db $06,$FF,$00,$D3,$EE,$06,$00,$D3              ;
                db $EE,$06,$10,$D9,$88,$06,$10,$E0              ;
                db $89,$06,$E8,$E8,$A6,$06,$E8,$F8              ;
                db $A8,$06,$E8,$08,$AA,$06,$F8,$E8              ;
                db $C6,$06,$F8,$F8,$C8,$06,$F8,$08              ;
                db $CA,$06,$08,$E8,$E6,$06,$08,$F8              ;
                db $E8,$06,$08,$08,$EA,$06,$10,$F0              ;
                db $8B,$06,$18,$F0,$CC,$06,$18,$00              ;
                db $CE,$06,$18,$10,$EC,$06,$FF,$D8              ;
                db $D0,$0A,$06,$D8,$E0,$08,$06,$E8              ;
                db $C0,$28,$06,$E8,$D0,$2A,$06,$E8              ;
                db $E0,$2A,$46,$E8,$F0,$28,$46,$F8              ;
                db $C0,$48,$06,$F8,$D0,$4A,$06,$F8              ;
                db $E0,$4A,$46,$F8,$F0,$48,$46,$08              ;
                db $C0,$68,$06,$08,$D0,$6A,$06,$08              ;
                db $E0,$6A,$46,$08,$F0,$68,$46,$18              ;
                db $C0,$6E,$46,$18,$D0,$6C,$46,$18              ;
                db $E0,$6C,$06,$18,$F0,$6E,$06,$FF              ;
                db $00,$D3,$EE,$06,$00,$D3,$EE,$06              ;
                db $10,$D9,$88,$06,$10,$E0,$89,$06              ;
                db $E8,$E8,$A6,$06,$E8,$F8,$A8,$06              ;
                db $E8,$08,$AA,$06,$F8,$E8,$C6,$06              ;
                db $F8,$F8,$C8,$06,$F8,$08,$CA,$06              ;
                db $08,$E8,$E6,$06,$08,$F8,$E8,$06              ;
                db $08,$08,$EA,$06,$10,$F0,$8B,$06              ;
                db $18,$F0,$CC,$06,$18,$00,$CE,$06              ;
                db $18,$10,$EC,$06,$FF,$D8,$D0,$0A              ;
                db $06,$D8,$E0,$08,$06,$E8,$C0,$28              ;
                db $06,$E8,$D0,$0E,$06,$E8,$E0,$0E              ;
                db $46,$00,$D0,$3E,$06,$00,$E0,$3E              ;
                db $46,$E8,$F0,$28,$46,$F8,$C0,$48              ;
                db $06,$F8,$D0,$2E,$06,$F8,$E0,$2E              ;
                db $46,$F8,$F0,$48,$46,$08,$C0,$68              ;
                db $06,$08,$D0,$6A,$06,$08,$E0,$6A              ;
                db $46,$08,$F0,$68,$46,$18,$C0,$6E              ;
                db $46,$18,$D0,$6C,$46,$18,$E0,$6C              ;
                db $06,$18,$F0,$6E,$06,$FF,$F0,$D0              ;
                db $42,$06,$F0,$E0,$42,$46,$D8,$D0              ;
                db $0A,$06,$D8,$E0,$08,$06,$E8,$C0              ;
                db $28,$06,$E8,$D0,$0C,$06,$E8,$D0              ;
                db $2A,$06,$E8,$E0,$0C,$46,$E8,$E0              ;
                db $2A,$46,$E8,$F0,$28,$46,$F8,$C0              ;
                db $48,$06,$F8,$D0,$2C,$06,$F8,$D0              ;
                db $4A,$06,$F8,$E0,$2C,$46,$F8,$E0              ;
                db $4A,$46,$F8,$F0,$48,$46,$00,$D0              ;
                db $60,$06,$00,$E0,$60,$46,$08,$C0              ;
                db $68,$06,$08,$D0,$6A,$06,$08,$E0              ;
                db $6A,$46,$08,$F0,$68,$46,$18,$C0              ;
                db $6E,$46,$18,$D0,$6C,$46,$18,$E0              ;
                db $6C,$06,$18,$F0,$6E,$06,$FF,$00              ;
                db $D3,$EE,$06,$00,$D3,$EE,$06,$10              ;
                db $D9,$88,$06,$10,$E0,$89,$06,$E8              ;
                db $E8,$A6,$06,$E8,$F8,$A8,$06,$E8              ;
                db $08,$AA,$06,$F8,$E8,$C6,$06,$F8              ;
                db $F8,$C8,$06,$F8,$08,$CA,$06,$08              ;
                db $E8,$E6,$06,$08,$F8,$E8,$06,$08              ;
                db $08,$EA,$06,$10,$F0,$8B,$06,$18              ;
                db $F0,$CC,$06,$18,$00,$CE,$06,$18              ;
                db $10,$EC,$06,$FF,$D8,$D0,$0A,$06              ;
                db $D8,$E0,$08,$06,$E8,$C0,$28,$06              ;
                db $00,$D0,$3C,$06,$00,$E0,$3C,$46              ;
                db $E8,$D0,$0C,$06,$E8,$E0,$0C,$46              ;
                db $E8,$F0,$28,$46,$F8,$C0,$48,$06              ;
                db $F8,$D0,$2C,$06,$F8,$E0,$2C,$46              ;
                db $F8,$F0,$48,$46,$08,$C0,$68,$06              ;
                db $08,$D0,$6A,$06,$08,$E0,$6A,$46              ;
                db $08,$F0,$68,$46,$18,$C0,$6E,$46              ;
                db $18,$D0,$6C,$46,$18,$E0,$6C,$06              ;
                db $18,$F0,$6E,$06,$FF,$F0,$D0,$62              ;
                db $06,$F0,$E0,$62,$46,$D8,$D0,$0A              ;
                db $06,$D8,$E0,$08,$06,$E8,$C0,$28              ;
                db $06,$E8,$D0,$0C,$06,$E8,$D0,$2A              ;
                db $06,$E8,$E0,$0C,$46,$E8,$E0,$2A              ;
                db $46,$E8,$F0,$28,$46,$F8,$C0,$48              ;
                db $06,$F8,$D0,$2C,$06,$F8,$D0,$4A              ;
                db $06,$F8,$E0,$2C,$46,$F8,$E0,$4A              ;
                db $46,$F8,$F0,$48,$46,$00,$D0,$60              ;
                db $06,$00,$E0,$60,$46,$08,$C0,$68              ;
                db $06,$08,$D0,$6A,$06,$08,$E0,$6A              ;
                db $46,$08,$F0,$68,$46,$18,$C0,$6E              ;
                db $46,$18,$D0,$6C,$46,$18,$E0,$6C              ;
                db $06,$18,$F0,$6E,$06,$FF,$00,$D3              ;
                db $EE,$06,$00,$D3,$EE,$06,$10,$D9              ;
                db $88,$06,$10,$E0,$89,$06,$E8,$E8              ;
                db $A6,$06,$E8,$F8,$A8,$06,$E8,$08              ;
                db $AA,$06,$F8,$E8,$C6,$06,$F8,$F8              ;
                db $C8,$06,$F8,$08,$CA,$06,$08,$E8              ;
                db $E6,$06,$08,$F8,$E8,$06,$08,$08              ;
                db $EA,$06,$10,$F0,$8B,$06,$18,$F0              ;
                db $CC,$06,$18,$00,$CE,$06,$18,$10              ;
                db $EC,$06,$FF,$D8,$D0,$0A,$06,$D8              ;
                db $E0,$08,$06,$E8,$C0,$28,$06,$E8              ;
                db $D0,$0C,$06,$E8,$E0,$0C,$46,$00              ;
                db $D0,$3C,$06,$00,$E0,$3C,$46,$E8              ;
                db $F0,$28,$46,$F8,$C0,$48,$06,$F8              ;
                db $D0,$2C,$06,$F8,$E0,$2C,$46,$F8              ;
                db $F0,$48,$46,$08,$C0,$68,$06,$08              ;
                db $D0,$6A,$06,$08,$E0,$6A,$46,$08              ;
                db $F0,$68,$46,$18,$C0,$6E,$46,$18              ;
                db $D0,$6C,$46,$18,$E0,$6C,$06,$18              ;
                db $F0,$6E,$06,$FF,$F0,$D0,$40,$06              ;
                db $F0,$E0,$40,$46,$D8,$D0,$0A,$06              ;
                db $D8,$E0,$08,$06,$E8,$C0,$28,$06              ;
                db $E8,$D0,$0C,$06,$E8,$D0,$2A,$06              ;
                db $E8,$E0,$0C,$46,$E8,$E0,$2A,$46              ;
                db $E8,$F0,$28,$46,$F8,$C0,$48,$06              ;
                db $F8,$D0,$2C,$06,$F8,$D0,$4A,$06              ;
                db $F8,$E0,$2C,$46,$F8,$E0,$4A,$46              ;
                db $F8,$F0,$48,$46,$00,$D0,$60,$06              ;
                db $00,$E0,$60,$46,$08,$C0,$68,$06              ;
                db $08,$D0,$6A,$06,$08,$E0,$6A,$46              ;
                db $08,$F0,$68,$46,$18,$C0,$6E,$46              ;
                db $18,$D0,$6C,$46,$18,$E0,$6C,$06              ;
                db $18,$F0,$6E,$06,$FF,$D8,$D0,$0A              ;
                db $06,$D8,$E0,$08,$06,$E8,$C0,$28              ;
                db $06,$E8,$D0,$0C,$06,$E8,$D0,$2A              ;
                db $06,$E8,$E0,$0C,$46,$E8,$E0,$2A              ;
                db $46,$E8,$F0,$28,$46,$F8,$C0,$48              ;
                db $06,$F8,$D0,$2C,$06,$F8,$D0,$4A              ;
                db $06,$F8,$E0,$2C,$46,$F8,$E0,$4A              ;
                db $46,$F8,$F0,$48,$46,$00,$D0,$60              ;
                db $06,$00,$E0,$60,$46,$08,$C0,$68              ;
                db $06,$08,$D0,$6A,$06,$08,$E0,$6A              ;
                db $46,$08,$F0,$68,$46,$18,$C0,$6E              ;
                db $46,$18,$D0,$6C,$46,$18,$E0,$6C              ;
                db $06,$18,$F0,$6E,$06,$FF,$E8,$EA              ;
                db $A0,$06,$E8,$FA,$A2,$06,$E8,$0A              ;
                db $A4,$06,$F8,$EA,$C0,$06,$F8,$FA              ;
                db $C2,$06,$F8,$0A,$C4,$06,$08,$EA              ;
                db $E0,$06,$08,$FA,$E2,$06,$08,$0A              ;
                db $E4,$06,$10,$CA,$8D,$06,$10,$D2              ;
                db $8E,$06,$10,$E2,$AC,$06,$10,$F2              ;
                db $AE,$06,$18,$F2,$CC,$06,$18,$02              ;
                db $CE,$06,$18,$12,$EC,$06,$FF,$00              ;
                db $D2,$EE,$06,$00,$D2,$EE,$06,$10              ;
                db $D8,$88,$06,$10,$E0,$89,$06,$E8              ;
                db $E8,$A6,$06,$E8,$F8,$A8,$06,$E8              ;
                db $08,$AA,$06,$F8,$E8,$C6,$06,$F8              ;
                db $F8,$C8,$06,$F8,$08,$CA,$06,$08              ;
                db $E8,$E6,$06,$08,$F8,$E8,$06,$08              ;
                db $08,$EA,$06,$10,$F0,$8B,$06,$18              ;
                db $F0,$CC,$06,$18,$00,$CE,$06,$18              ;
                db $10,$EC,$06,$FF,$00,$D2,$EE,$06              ;
                db $00,$D2,$EE,$06,$10,$D8,$88,$06              ;
                db $10,$E0,$89,$06,$E8,$E8,$A0,$06              ;
                db $E8,$F8,$A2,$06,$E8,$08,$A4,$06              ;
                db $F8,$E8,$C0,$06,$F8,$F8,$C2,$06              ;
                db $F8,$08,$C4,$06,$08,$E8,$E0,$06              ;
                db $08,$F8,$E2,$06,$08,$08,$E4,$06              ;
                db $10,$F0,$8B,$06,$18,$F0,$CC,$06              ;
                db $18,$00,$CE,$06,$18,$10,$EC,$06              ;
                db $FF,$00,$D3,$EE,$06,$00,$D3,$EE              ;
                db $06,$10,$D9,$88,$06,$10,$E1,$89              ;
                db $06,$E8,$E9,$A6,$06,$E8,$F9,$A8              ;
                db $06,$E8,$09,$AA,$06,$F8,$E9,$C6              ;
                db $06,$F8,$F9,$C8,$06,$F8,$09,$CA              ;
                db $06,$08,$E9,$E6,$06,$08,$F9,$E8              ;
                db $06,$08,$09,$EA,$06,$10,$F1,$8B              ;
                db $06,$18,$F1,$CC,$06,$18,$01,$CE              ;
                db $06,$18,$11,$EC,$06,$FF,$00,$D2              ;
                db $EE,$06,$00,$D2,$EE,$06,$10,$D8              ;
                db $88,$06,$10,$E0,$89,$06,$E8,$E8              ;
                db $A6,$06,$E8,$F8,$A8,$06,$E8,$08              ;
                db $AA,$06,$F8,$E8,$C6,$06,$F8,$F8              ;
                db $C8,$06,$F8,$08,$CA,$06,$08,$E8              ;
                db $E6,$06,$08,$F8,$E8,$06,$08,$08              ;
                db $EA,$06,$10,$F0,$8B,$06,$18,$F0              ;
                db $CC,$06,$18,$00,$CE,$06,$18,$10              ;
                db $EC,$06,$FF,$D8,$D0,$0A,$06,$D8              ;
                db $E0,$08,$06,$E8,$C0,$28,$06,$E8              ;
                db $D0,$0C,$06,$E8,$E0,$34,$06,$E8              ;
                db $E0,$2A,$46,$E8,$F0,$28,$46,$F0              ;
                db $E0,$44,$06,$F8,$C0,$48,$06,$F8              ;
                db $F0,$48,$46,$00,$D0,$3C,$06,$00              ;
                db $E0,$64,$06,$F8,$D0,$2C,$06,$F8              ;
                db $E0,$4A,$46,$08,$C0,$68,$06,$08              ;
                db $D0,$6A,$06,$08,$E0,$6A,$46,$08              ;
                db $F0,$68,$46,$18,$C0,$6E,$46,$18              ;
                db $D0,$6C,$46,$18,$E0,$6C,$06,$18              ;
                db $F0,$6E,$06,$FF,$D8,$D0,$0A,$06              ;
                db $D8,$E0,$08,$06,$F0,$E0,$10,$06              ;
                db $E8,$D0,$36,$06,$E8,$E0,$36,$46              ;
                db $E8,$E0,$2A,$46,$E8,$F0,$28,$46              ;
                db $F0,$D0,$46,$06,$E8,$C0,$28,$06              ;
                db $F8,$C0,$48,$06,$00,$E0,$12,$06              ;
                db $F8,$E0,$4A,$46,$F8,$F0,$48,$46              ;
                db $00,$D0,$66,$06,$08,$C0,$68,$06              ;
                db $08,$D0,$6A,$06,$08,$E0,$6A,$46              ;
                db $08,$F0,$68,$46,$18,$C0,$6E,$46              ;
                db $18,$D0,$6C,$46,$18,$E0,$6C,$06              ;
                db $18,$F0,$6E,$06,$FF,$D8,$D0,$0A              ;
                db $06,$D8,$E0,$08,$06,$F0,$E0,$10              ;
                db $06,$E8,$C0,$28,$06,$E8,$D0,$36              ;
                db $06,$E8,$E0,$36,$46,$E8,$E0,$2A              ;
                db $46,$E8,$F0,$28,$46,$F0,$D0,$46              ;
                db $06,$F8,$C0,$48,$06,$00,$E0,$12              ;
                db $06,$F8,$E0,$4A,$46,$F8,$F0,$48              ;
                db $46,$00,$D0,$66,$06,$08,$C0,$68              ;
                db $06,$08,$D0,$6A,$06,$08,$E0,$6A              ;
                db $46,$08,$F0,$68,$46,$18,$C0,$6E              ;
                db $46,$18,$D0,$6C,$46,$18,$E0,$6C              ;
                db $06,$18,$F0,$6E,$06,$FF,$D8,$D0              ;
                db $0A,$06,$D8,$E0,$08,$06,$E8,$C0              ;
                db $28,$06,$E8,$D0,$0C,$06,$E8,$E0              ;
                db $34,$06,$E8,$E0,$2A,$46,$E8,$F0              ;
                db $28,$46,$F0,$E0,$44,$06,$F8,$C0              ;
                db $48,$06,$F8,$F0,$48,$46,$00,$D0              ;
                db $3C,$06,$00,$E0,$64,$06,$F8,$D0              ;
                db $2C,$06,$F8,$E0,$4A,$46,$08,$C0              ;
                db $68,$06,$08,$D0,$6A,$06,$08,$E0              ;
                db $6A,$46,$08,$F0,$68,$46,$18,$C0              ;
                db $6E,$46,$18,$D0,$6C,$46,$18,$E0              ;
                db $6C,$06,$18,$F0,$6E,$06,$FF,$D8              ;
                db $D0,$0A,$06,$D8,$E0,$08,$06,$E8              ;
                db $C0,$28,$06,$E8,$D0,$0C,$06,$E8              ;
                db $E0,$34,$06,$E8,$E0,$2A,$46,$E8              ;
                db $F0,$28,$46,$F0,$E0,$44,$06,$F8              ;
                db $C0,$48,$06,$F8,$F0,$48,$46,$00              ;
                db $D0,$3C,$06,$00,$E0,$64,$06,$F8              ;
                db $D0,$2C,$06,$F8,$E0,$4A,$46,$08              ;
                db $C0,$68,$06,$08,$D0,$6A,$06,$08              ;
                db $E0,$6A,$46,$08,$F0,$68,$46,$18              ;
                db $C0,$6E,$46,$18,$D0,$6C,$46,$18              ;
                db $E0,$6C,$06,$18,$F0,$6E,$06,$FF              ;

CODE_00D4CA:    LDA #$1E                ; $00:D4CA: A9 1E       ;
                STA $0287               ; $00:D4CC: 8D 87 02    ;
                REP #$20                ; $00:D4CF: C2 20       ;
                LDA #$0800              ; $00:D4D1: A9 00 08    ;
                STA $0288               ; $00:D4D4: 8D 88 02    ;
                LDA #$7800              ; $00:D4D7: A9 00 78    ;
                STA $028A               ; $00:D4DA: 8D 8A 02    ;
                LDA $075F               ; $00:D4DD: AD 5F 07    ;
                AND #$00FF              ; $00:D4E0: 29 FF 00    ;
                CMP #$0007              ; $00:D4E3: C9 07 00    ;
                BNE CODE_00D4ED         ; $00:D4E6: D0 05       ;
                LDA #$D000              ; $00:D4E8: A9 00 D0    ;
                BRA CODE_00D4F0         ; $00:D4EB: 80 03       ;

CODE_00D4ED:    LDA #$C000              ; $00:D4ED: A9 00 C0    ;
CODE_00D4F0:    STA $0285               ; $00:D4F0: 8D 85 02    ;
                SEP #$20                ; $00:D4F3: E2 20       ;
                STZ $0F7D               ; $00:D4F5: 9C 7D 0F    ;
                STZ $0F7E               ; $00:D4F8: 9C 7E 0F    ;
                STZ $0F7F               ; $00:D4FB: 9C 7F 0F    ;
                STZ $0B9C               ; $00:D4FE: 9C 9C 0B    ;
                LDA #$02                ; $00:D501: A9 02       ;
                STA $0B76               ; $00:D503: 8D 76 0B    ;
                RTL                     ; $00:D506: 6B          ;

CODE_00D507:    PHX                     ; $00:D507: DA          ;
                LDA #$1E                ; $00:D508: A9 1E       ;
                STA $0287               ; $00:D50A: 8D 87 02    ;
                REP #$20                ; $00:D50D: C2 20       ;
                LDA #$0800              ; $00:D50F: A9 00 08    ;
                STA $0288               ; $00:D512: 8D 88 02    ;
                LDA #$7C00              ; $00:D515: A9 00 7C    ;
                STA $028A               ; $00:D518: 8D 8A 02    ;
                LDA $075F               ; $00:D51B: AD 5F 07    ;
                AND #$00FF              ; $00:D51E: 29 FF 00    ;
                ASL A                   ; $00:D521: 0A          ;
                TAX                     ; $00:D522: AA          ;
                LDA.l DATA_00D55A,x     ; $00:D523: BF 5A D5 00 ;
                STA $0285               ; $00:D527: 8D 85 02    ;
                SEP #$20                ; $00:D52A: E2 20       ;
                PLX                     ; $00:D52C: FA          ;
                RTL                     ; $00:D52D: 6B          ;

CODE_00D52E:    LDA #$80                ; $00:D52E: A9 80       ;
                STA $2115               ; $00:D530: 8D 15 21    ;
                REP #$20                ; $00:D533: C2 20       ;
                LDA #$6000              ; $00:D535: A9 00 60    ;
                STA $2116               ; $00:D538: 8D 16 21    ;
                LDA #$1801              ; $00:D53B: A9 01 18    ;
                STA $4300               ; $00:D53E: 8D 00 43    ;
                LDA.w #DATA_078000      ; $00:D541: A9 00 80    ;
                STA $4302               ; $00:D544: 8D 02 43    ;
                LDX.b #DATA_078000>>16  ; $00:D547: A2 07       ;
                STX $4304               ; $00:D549: 8E 04 43    ;
                LDA #$4000              ; $00:D54C: A9 00 40    ;
                STA $4305               ; $00:D54F: 8D 05 43    ;
                LDX #$01                ; $00:D552: A2 01       ;
                STX $420B               ; $00:D554: 8E 0B 42    ;
                SEP #$20                ; $00:D557: E2 20       ;
                RTL                     ; $00:D559: 6B          ;

DATA_00D55A:    dw $C800,$C800,$C800,$C800                      ;
                dw $E800,$E000,$E000,$D000                      ;
                dw $C800,$E800,$E000,$E000                      ;
                dw $D000,$D000,$D000,$D000                      ;

CODE_00D57A:    LDA $0F7E               ; $00:D57A: AD 7E 0F    ;
                BEQ CODE_00D582         ; $00:D57D: F0 03       ;
                JMP CODE_00D626         ; $00:D57F: 4C 26 D6    ;

CODE_00D582:    LDA $09                 ; $00:D582: A5 09       ;
                AND #$07                ; $00:D584: 29 07       ;
                BEQ CODE_00D58D         ; $00:D586: F0 05       ;
                LDA $0F7D               ; $00:D588: AD 7D 0F    ;
                BRA CODE_00D5AF         ; $00:D58B: 80 22       ;

CODE_00D58D:    INC $0F7D               ; $00:D58D: EE 7D 0F    ;
                LDA $0F7D               ; $00:D590: AD 7D 0F    ;
                CMP #$03                ; $00:D593: C9 03       ;
                BCC CODE_00D5AF         ; $00:D595: 90 18       ;
                LDA $07B9               ; $00:D597: AD B9 07    ;
                EOR $07BA               ; $00:D59A: 4D BA 07    ;
                AND #$01                ; $00:D59D: 29 01       ;
                BNE CODE_00D5AA         ; $00:D59F: D0 09       ;
                LDA #$03                ; $00:D5A1: A9 03       ;
                STA $0F7D               ; $00:D5A3: 8D 7D 0F    ;
                LDA #$01                ; $00:D5A6: A9 01       ;
                BRA CODE_00D5AF         ; $00:D5A8: 80 05       ;

CODE_00D5AA:    LDA #$00                ; $00:D5AA: A9 00       ;
                STA $0F7D               ; $00:D5AC: 8D 7D 0F    ;
CODE_00D5AF:    STA $00                 ; $00:D5AF: 85 00       ;
                LDA $79                 ; $00:D5B1: A5 79       ;
                XBA                     ; $00:D5B3: EB          ;
                LDA $021A               ; $00:D5B4: AD 1A 02    ;
                LDY #$00                ; $00:D5B7: A0 00       ;
                JSR CODE_00E4FD         ; $00:D5B9: 20 FD E4    ;
                LDA $79                 ; $00:D5BC: A5 79       ;
                XBA                     ; $00:D5BE: EB          ;
                LDA $021A               ; $00:D5BF: AD 1A 02    ;
                REP #$20                ; $00:D5C2: C2 20       ;
                CLC                     ; $00:D5C4: 18          ;
                ADC #$0008              ; $00:D5C5: 69 08 00    ;
                SEP #$20                ; $00:D5C8: E2 20       ;
                LDY #$04                ; $00:D5CA: A0 04       ;
                JSR CODE_00E4FD         ; $00:D5CC: 20 FD E4    ;
                LDA $00                 ; $00:D5CF: A5 00       ;
                CMP #$02                ; $00:D5D1: C9 02       ;
                BEQ CODE_00D602         ; $00:D5D3: F0 2D       ;
                CMP #$00                ; $00:D5D5: C9 00       ;
                BNE CODE_00D5DD         ; $00:D5D7: D0 04       ;
                LDA #$83                ; $00:D5D9: A9 83       ;
                BRA CODE_00D5DF         ; $00:D5DB: 80 02       ;

CODE_00D5DD:    LDA #$80                ; $00:D5DD: A9 80       ;
CODE_00D5DF:    STA $0902               ; $00:D5DF: 8D 02 09    ;
                INC A                   ; $00:D5E2: 1A          ;
                STA $0906               ; $00:D5E3: 8D 06 09    ;
                CLC                     ; $00:D5E6: 18          ;
                ADC #$1F                ; $00:D5E7: 69 1F       ;
                STA $090A               ; $00:D5E9: 8D 0A 09    ;
                INC A                   ; $00:D5EC: 1A          ;
                STA $090E               ; $00:D5ED: 8D 0E 09    ;
                LDA #$B0                ; $00:D5F0: A9 B0       ;
                STA $0901               ; $00:D5F2: 8D 01 09    ;
                STA $0905               ; $00:D5F5: 8D 05 09    ;
                LDA #$C0                ; $00:D5F8: A9 C0       ;
                STA $0909               ; $00:D5FA: 8D 09 09    ;
                STA $090D               ; $00:D5FD: 8D 0D 09    ;
                BRA CODE_00D625         ; $00:D600: 80 23       ;

CODE_00D602:    LDA #$86                ; $00:D602: A9 86       ;
                STA $0902               ; $00:D604: 8D 02 09    ;
                INC A                   ; $00:D607: 1A          ;
                STA $0906               ; $00:D608: 8D 06 09    ;
                CLC                     ; $00:D60B: 18          ;
                ADC #$0F                ; $00:D60C: 69 0F       ;
                STA $090A               ; $00:D60E: 8D 0A 09    ;
                INC A                   ; $00:D611: 1A          ;
                STA $090E               ; $00:D612: 8D 0E 09    ;
                LDA #$B8                ; $00:D615: A9 B8       ;
                STA $0901               ; $00:D617: 8D 01 09    ;
                STA $0905               ; $00:D61A: 8D 05 09    ;
                LDA #$C0                ; $00:D61D: A9 C0       ;
                STA $0909               ; $00:D61F: 8D 09 09    ;
                STA $090D               ; $00:D622: 8D 0D 09    ;
CODE_00D625:    RTL                     ; $00:D625: 6B          ;

CODE_00D626:    PHB                     ; $00:D626: 8B          ;
                PHK                     ; $00:D627: 4B          ;
                PLB                     ; $00:D628: AB          ;
                PHX                     ; $00:D629: DA          ;
                PHY                     ; $00:D62A: 5A          ;
                LDA $075F               ; $00:D62B: AD 5F 07    ;
                ASL A                   ; $00:D62E: 0A          ;
                TAX                     ; $00:D62F: AA          ;
                LDA $0B9C               ; $00:D630: AD 9C 0B    ;
                BNE CODE_00D638         ; $00:D633: D0 03       ;
                JSR CODE_00E3A4         ; $00:D635: 20 A4 E3    ;
CODE_00D638:    LDA PNTR_00D645,x       ; $00:D638: BD 45 D6    ;
                STA $00                 ; $00:D63B: 85 00       ;
                LDA PNTR_00D645+1,x     ; $00:D63D: BD 46 D6    ;
                STA $01                 ; $00:D640: 85 01       ;
                JMP ($0000)             ; $00:D642: 6C 00 00    ;

PNTR_00D645:    dw CODE_00D661                                  ;
                dw CODE_00D6E4                                  ;
                dw CODE_00D785                                  ;
                dw CODE_00D95A                                  ;
                dw CODE_00DBA1                                  ;
                dw CODE_00DDFA                                  ;
                dw CODE_00E096                                  ;
                dw CODE_00D661                                  ;
                dw CODE_00D661                                  ;
                dw CODE_00DBA1                                  ;
                dw CODE_00DDFA                                  ;
                dw CODE_00E096                                  ;
                dw CODE_00D661                                  ;

DATA_00D65F:    db $90,$00                                      ;

CODE_00D661:    JSR CODE_00E27B         ; $00:D661: 20 7B E2    ;
                LDA $0F7F               ; $00:D664: AD 7F 0F    ;
                BNE CODE_00D66C         ; $00:D667: D0 03       ;
                JMP CODE_00E1D5         ; $00:D669: 4C D5 E1    ;

CODE_00D66C:    CMP #$03                ; $00:D66C: C9 03       ;
                BNE CODE_00D6BB         ; $00:D66E: D0 4B       ;
                LDA $0B9F               ; $00:D670: AD 9F 0B    ;
                BNE CODE_00D6BB         ; $00:D673: D0 46       ;
                JSR CODE_00E566         ; $00:D675: 20 66 E5    ;
                LDA #$20                ; $00:D678: A9 20       ;
                STA $00                 ; $00:D67A: 85 00       ;
                LDA #$04                ; $00:D67C: A9 04       ;
                STA $02                 ; $00:D67E: 85 02       ;
                LDX #$01                ; $00:D680: A2 01       ;
                LDA #$00                ; $00:D682: A9 00       ;
                JSL CODE_0DBF7A         ; $00:D684: 22 7A BF 0D ;
                LDA $0238               ; $00:D688: AD 38 02    ;
                CMP #$B0                ; $00:D68B: C9 B0       ;
                BCS CODE_00D697         ; $00:D68D: B0 08       ;
                LDA #$01                ; $00:D68F: A9 01       ;
                STA $0B9D               ; $00:D691: 8D 9D 0B    ;
                LDA $0238               ; $00:D694: AD 38 02    ;
CODE_00D697:    CMP #$B8                ; $00:D697: C9 B8       ;
                BCC CODE_00D6BB         ; $00:D699: 90 20       ;
                LDA #$B8                ; $00:D69B: A9 B8       ;
                STA $0238               ; $00:D69D: 8D 38 02    ;
                LDA #$FE                ; $00:D6A0: A9 FE       ;
                STA $00A1               ; $00:D6A2: 8D A1 00    ;
                STZ $043D               ; $00:D6A5: 9C 3D 04    ;
                STZ $041D               ; $00:D6A8: 9C 1D 04    ;
                LDA #$00                ; $00:D6AB: A9 00       ;
                STA $0B9E               ; $00:D6AD: 8D 9E 0B    ;
                LDA #$18                ; $00:D6B0: A9 18       ;
                STA $0B9F               ; $00:D6B2: 8D 9F 0B    ;
                STZ $0BA4               ; $00:D6B5: 9C A4 0B    ;
                JSR CODE_00E529         ; $00:D6B8: 20 29 E5    ;
CODE_00D6BB:    LDA $0B9F               ; $00:D6BB: AD 9F 0B    ;
                BNE CODE_00D6C7         ; $00:D6BE: D0 07       ;
                LDA #$01                ; $00:D6C0: A9 01       ;
                STA $0B9E               ; $00:D6C2: 8D 9E 0B    ;
                BRA CODE_00D6CA         ; $00:D6C5: 80 03       ;

CODE_00D6C7:    DEC $0B9F               ; $00:D6C7: CE 9F 0B    ;
CODE_00D6CA:    LDA $03AE               ; $00:D6CA: AD AE 03    ;
                STA $00                 ; $00:D6CD: 85 00       ;
                LDA $0238               ; $00:D6CF: AD 38 02    ;
                STA $01                 ; $00:D6D2: 85 01       ;
                LDY $0B9D               ; $00:D6D4: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:D6D7: B9 5F D6    ;
                TAY                     ; $00:D6DA: A8          ;
                LDA $0B9E               ; $00:D6DB: AD 9E 0B    ;
                JSR CODE_00E1FC         ; $00:D6DE: 20 FC E1    ;
                JMP CODE_00E1D5         ; $00:D6E1: 4C D5 E1    ;

CODE_00D6E4:    JSR CODE_00E27B         ; $00:D6E4: 20 7B E2    ;
                LDA $0F7F               ; $00:D6E7: AD 7F 0F    ;
                BNE CODE_00D6EF         ; $00:D6EA: D0 03       ;
                JMP CODE_00E1D5         ; $00:D6EC: 4C D5 E1    ;

CODE_00D6EF:    CMP #$03                ; $00:D6EF: C9 03       ;
                BNE CODE_00D74F         ; $00:D6F1: D0 5C       ;
                LDA $0B9F               ; $00:D6F3: AD 9F 0B    ;
                BNE CODE_00D74C         ; $00:D6F6: D0 54       ;
                LDA $0B9C               ; $00:D6F8: AD 9C 0B    ;
                CMP #$02                ; $00:D6FB: C9 02       ;
                BNE CODE_00D704         ; $00:D6FD: D0 05       ;
                STA $0B9E               ; $00:D6FF: 8D 9E 0B    ;
                BRA CODE_00D74F         ; $00:D702: 80 4B       ;

CODE_00D704:    JSR CODE_00E566         ; $00:D704: 20 66 E5    ;
                LDA #$01                ; $00:D707: A9 01       ;
                STA $0B9E               ; $00:D709: 8D 9E 0B    ;
                LDA #$20                ; $00:D70C: A9 20       ;
                STA $00                 ; $00:D70E: 85 00       ;
                LDA #$04                ; $00:D710: A9 04       ;
                STA $02                 ; $00:D712: 85 02       ;
                LDX #$01                ; $00:D714: A2 01       ;
                LDA #$00                ; $00:D716: A9 00       ;
                JSL CODE_0DBF7A         ; $00:D718: 22 7A BF 0D ;
                LDA $0238               ; $00:D71C: AD 38 02    ;
                CMP #$B0                ; $00:D71F: C9 B0       ;
                BCS CODE_00D72B         ; $00:D721: B0 08       ;
                LDA #$01                ; $00:D723: A9 01       ;
                STA $0B9D               ; $00:D725: 8D 9D 0B    ;
                LDA $0238               ; $00:D728: AD 38 02    ;
CODE_00D72B:    CMP #$B8                ; $00:D72B: C9 B8       ;
                BCC CODE_00D74F         ; $00:D72D: 90 20       ;
                LDA #$B8                ; $00:D72F: A9 B8       ;
                STA $0238               ; $00:D731: 8D 38 02    ;
                STZ $00A1               ; $00:D734: 9C A1 00    ;
                STZ $043D               ; $00:D737: 9C 3D 04    ;
                STZ $041D               ; $00:D73A: 9C 1D 04    ;
                LDA #$28                ; $00:D73D: A9 28       ;
                STA $0B9F               ; $00:D73F: 8D 9F 0B    ;
                LDA #$02                ; $00:D742: A9 02       ;
                STA $0B9C               ; $00:D744: 8D 9C 0B    ;
                LDA #$00                ; $00:D747: A9 00       ;
                STA $0B9E               ; $00:D749: 8D 9E 0B    ;
CODE_00D74C:    DEC $0B9F               ; $00:D74C: CE 9F 0B    ;
CODE_00D74F:    LDA $03AE               ; $00:D74F: AD AE 03    ;
                STA $00                 ; $00:D752: 85 00       ;
                LDA $0238               ; $00:D754: AD 38 02    ;
                STA $01                 ; $00:D757: 85 01       ;
                LDY $0B9D               ; $00:D759: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:D75C: B9 5F D6    ;
                TAY                     ; $00:D75F: A8          ;
                LDA $0B9E               ; $00:D760: AD 9E 0B    ;
                JSR CODE_00E1FC         ; $00:D763: 20 FC E1    ;
                TYA                     ; $00:D766: 98          ;
                CLC                     ; $00:D767: 18          ;
                ADC #$10                ; $00:D768: 69 10       ;
                TAY                     ; $00:D76A: A8          ;
                LDA $03AE               ; $00:D76B: AD AE 03    ;
                CLC                     ; $00:D76E: 18          ;
                ADC #$10                ; $00:D76F: 69 10       ;
                STA $00                 ; $00:D771: 85 00       ;
                LDA $0B9E               ; $00:D773: AD 9E 0B    ;
                CMP #$02                ; $00:D776: C9 02       ;
                BNE CODE_00D77F         ; $00:D778: D0 05       ;
                JSR CODE_00E529         ; $00:D77A: 20 29 E5    ;
                LDA #$03                ; $00:D77D: A9 03       ;
CODE_00D77F:    JSR CODE_00E1FC         ; $00:D77F: 20 FC E1    ;
                JMP CODE_00E1D5         ; $00:D782: 4C D5 E1    ;

CODE_00D785:    JSR CODE_00E27B         ; $00:D785: 20 7B E2    ;
                LDA $0F7F               ; $00:D788: AD 7F 0F    ;
                BNE CODE_00D790         ; $00:D78B: D0 03       ;
                JMP CODE_00E1D5         ; $00:D78D: 4C D5 E1    ;

CODE_00D790:    CMP #$03                ; $00:D790: C9 03       ;
                BEQ CODE_00D797         ; $00:D792: F0 03       ;
                JMP CODE_00D817         ; $00:D794: 4C 17 D8    ;

CODE_00D797:    LDA $0BA0               ; $00:D797: AD A0 0B    ;
                CMP #$28                ; $00:D79A: C9 28       ;
                BCC CODE_00D814         ; $00:D79C: 90 76       ;
                CMP #$50                ; $00:D79E: C9 50       ;
                BCC CODE_00D7FD         ; $00:D7A0: 90 5B       ;
                CMP #$58                ; $00:D7A2: C9 58       ;
                BCC CODE_00D7F7         ; $00:D7A4: 90 51       ;
                JSR CODE_00E566         ; $00:D7A6: 20 66 E5    ;
                LDA #$20                ; $00:D7A9: A9 20       ;
                STA $00                 ; $00:D7AB: 85 00       ;
                LDA #$04                ; $00:D7AD: A9 04       ;
                STA $02                 ; $00:D7AF: 85 02       ;
                LDX #$01                ; $00:D7B1: A2 01       ;
                LDA #$00                ; $00:D7B3: A9 00       ;
                JSL CODE_0DBF7A         ; $00:D7B5: 22 7A BF 0D ;
                LDA #$01                ; $00:D7B9: A9 01       ;
                STA $0B9E               ; $00:D7BB: 8D 9E 0B    ;
                LDA $0238               ; $00:D7BE: AD 38 02    ;
                CMP #$B0                ; $00:D7C1: C9 B0       ;
                BCS CODE_00D7CC         ; $00:D7C3: B0 07       ;
                LDA #$01                ; $00:D7C5: A9 01       ;
                STA $0B9D               ; $00:D7C7: 8D 9D 0B    ;
                BRA CODE_00D7E9         ; $00:D7CA: 80 1D       ;

CODE_00D7CC:    CMP #$B8                ; $00:D7CC: C9 B8       ;
                BCC CODE_00D7E9         ; $00:D7CE: 90 19       ;
                STZ $00A1               ; $00:D7D0: 9C A1 00    ;
                STZ $043D               ; $00:D7D3: 9C 3D 04    ;
                STZ $041D               ; $00:D7D6: 9C 1D 04    ;
                LDA #$B8                ; $00:D7D9: A9 B8       ;
                STA $0238               ; $00:D7DB: 8D 38 02    ;
                STZ $0B9E               ; $00:D7DE: 9C 9E 0B    ;
                LDA #$01                ; $00:D7E1: A9 01       ;
                STA $0B9F               ; $00:D7E3: 8D 9F 0B    ;
                JSR CODE_00E529         ; $00:D7E6: 20 29 E5    ;
CODE_00D7E9:    LDA $0B9F               ; $00:D7E9: AD 9F 0B    ;
                BNE CODE_00D7F7         ; $00:D7EC: D0 09       ;
                LDA $09                 ; $00:D7EE: A5 09       ;
                AND #$01                ; $00:D7F0: 29 01       ;
                BNE CODE_00D7F7         ; $00:D7F2: D0 03       ;
                INC $021D               ; $00:D7F4: EE 1D 02    ;
CODE_00D7F7:    JSR CODE_00D831         ; $00:D7F7: 20 31 D8    ;
                JMP CODE_00E1D5         ; $00:D7FA: 4C D5 E1    ;

CODE_00D7FD:    LDY #$A0                ; $00:D7FD: A0 A0       ;
                CMP #$2C                ; $00:D7FF: C9 2C       ;
                BCC CODE_00D811         ; $00:D801: 90 0E       ;
                CMP #$30                ; $00:D803: C9 30       ;
                BCC CODE_00D80C         ; $00:D805: 90 05       ;
                JSR CODE_00D891         ; $00:D807: 20 91 D8    ;
                BRA CODE_00D814         ; $00:D80A: 80 08       ;

CODE_00D80C:    JSR CODE_00D8ED         ; $00:D80C: 20 ED D8    ;
                BRA CODE_00D814         ; $00:D80F: 80 03       ;

CODE_00D811:    JSR CODE_00D924         ; $00:D811: 20 24 D9    ;
CODE_00D814:    INC $0BA0               ; $00:D814: EE A0 0B    ;
CODE_00D817:    LDA $03AE               ; $00:D817: AD AE 03    ;
                STA $00                 ; $00:D81A: 85 00       ;
                LDA $0238               ; $00:D81C: AD 38 02    ;
                STA $01                 ; $00:D81F: 85 01       ;
                LDY $0B9D               ; $00:D821: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:D824: B9 5F D6    ;
                TAY                     ; $00:D827: A8          ;
                LDA $0B9E               ; $00:D828: AD 9E 0B    ;
                JSR CODE_00E1FC         ; $00:D82B: 20 FC E1    ;
                JMP CODE_00E1D5         ; $00:D82E: 4C D5 E1    ;

CODE_00D831:    LDA $03AE               ; $00:D831: AD AE 03    ;
                STA $00                 ; $00:D834: 85 00       ;
                LDA $0238               ; $00:D836: AD 38 02    ;
                STA $01                 ; $00:D839: 85 01       ;
                LDY $0B9D               ; $00:D83B: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:D83E: B9 5F D6    ;
                TAY                     ; $00:D841: A8          ;
                LDA $0B9E               ; $00:D842: AD 9E 0B    ;
                JSR CODE_00E1FC         ; $00:D845: 20 FC E1    ;
                TYA                     ; $00:D848: 98          ;
                CLC                     ; $00:D849: 18          ;
                ADC #$10                ; $00:D84A: 69 10       ;
                TAY                     ; $00:D84C: A8          ;
                LDA $03AE               ; $00:D84D: AD AE 03    ;
                SEC                     ; $00:D850: 38          ;
                SBC $021D               ; $00:D851: ED 1D 02    ;
                SEC                     ; $00:D854: 38          ;
                SBC #$07                ; $00:D855: E9 07       ;
                STA $00                 ; $00:D857: 85 00       ;
                LDA $0B9F               ; $00:D859: AD 9F 0B    ;
                DEC A                   ; $00:D85C: 3A          ;
                BEQ CODE_00D865         ; $00:D85D: F0 06       ;
                LDA #$04                ; $00:D85F: A9 04       ;
                CLC                     ; $00:D861: 18          ;
                ADC $0B9E               ; $00:D862: 6D 9E 0B    ;
CODE_00D865:    JSR CODE_00E1FC         ; $00:D865: 20 FC E1    ;
                TYA                     ; $00:D868: 98          ;
                CLC                     ; $00:D869: 18          ;
                ADC #$10                ; $00:D86A: 69 10       ;
                TAY                     ; $00:D86C: A8          ;
                LDA $03AE               ; $00:D86D: AD AE 03    ;
                CLC                     ; $00:D870: 18          ;
                ADC $021D               ; $00:D871: 6D 1D 02    ;
                CLC                     ; $00:D874: 18          ;
                ADC #$07                ; $00:D875: 69 07       ;
                STA $00                 ; $00:D877: 85 00       ;
                LDA $0B9F               ; $00:D879: AD 9F 0B    ;
                DEC A                   ; $00:D87C: 3A          ;
                BEQ CODE_00D885         ; $00:D87D: F0 06       ;
                LDA #$06                ; $00:D87F: A9 06       ;
                CLC                     ; $00:D881: 18          ;
                ADC $0B9E               ; $00:D882: 6D 9E 0B    ;
CODE_00D885:    JSR CODE_00E1FC         ; $00:D885: 20 FC E1    ;
                LDA $0BA0               ; $00:D888: AD A0 0B    ;
                BMI CODE_00D890         ; $00:D88B: 30 03       ;
                INC $0BA0               ; $00:D88D: EE A0 0B    ;
CODE_00D890:    RTS                     ; $00:D890: 60          ;

CODE_00D891:    LDA $0238               ; $00:D891: AD 38 02    ;
                INC A                   ; $00:D894: 1A          ;
                STA $0905,y             ; $00:D895: 99 05 09    ;
                STA $090D,y             ; $00:D898: 99 0D 09    ;
                CLC                     ; $00:D89B: 18          ;
                ADC #$07                ; $00:D89C: 69 07       ;
                STA $0901,y             ; $00:D89E: 99 01 09    ;
                STA $0909,y             ; $00:D8A1: 99 09 09    ;
                LDA $03AE               ; $00:D8A4: AD AE 03    ;
                SEC                     ; $00:D8A7: 38          ;
                SBC #$0D                ; $00:D8A8: E9 0D       ;
                STA $0904,y             ; $00:D8AA: 99 04 09    ;
                DEC A                   ; $00:D8AD: 3A          ;
                STA $0900,y             ; $00:D8AE: 99 00 09    ;
                LDA $03AE               ; $00:D8B1: AD AE 03    ;
                CLC                     ; $00:D8B4: 18          ;
                ADC #$0D                ; $00:D8B5: 69 0D       ;
                STA $090C,y             ; $00:D8B7: 99 0C 09    ;
                INC A                   ; $00:D8BA: 1A          ;
                STA $0908,y             ; $00:D8BB: 99 08 09    ;
                LDA #$E0                ; $00:D8BE: A9 E0       ;
                STA $0906,y             ; $00:D8C0: 99 06 09    ;
                STA $090E,y             ; $00:D8C3: 99 0E 09    ;
                LDA #$CE                ; $00:D8C6: A9 CE       ;
                STA $0902,y             ; $00:D8C8: 99 02 09    ;
                STA $090A,y             ; $00:D8CB: 99 0A 09    ;
                LDA #$2D                ; $00:D8CE: A9 2D       ;
                STA $090B,y             ; $00:D8D0: 99 0B 09    ;
                STA $090F,y             ; $00:D8D3: 99 0F 09    ;
                LDA #$6D                ; $00:D8D6: A9 6D       ;
                STA $0903,y             ; $00:D8D8: 99 03 09    ;
                STA $0907,y             ; $00:D8DB: 99 07 09    ;
                LDA #$02                ; $00:D8DE: A9 02       ;
                STA $0D00,y             ; $00:D8E0: 99 00 0D    ;
                STA $0D04,y             ; $00:D8E3: 99 04 0D    ;
                STA $0D08,y             ; $00:D8E6: 99 08 0D    ;
                STA $0D0C,y             ; $00:D8E9: 99 0C 0D    ;
                RTS                     ; $00:D8EC: 60          ;

CODE_00D8ED:    LDA $03AE               ; $00:D8ED: AD AE 03    ;
                SEC                     ; $00:D8F0: 38          ;
                SBC #$09                ; $00:D8F1: E9 09       ;
                STA $0900,y             ; $00:D8F3: 99 00 09    ;
                LDA $03AE               ; $00:D8F6: AD AE 03    ;
                CLC                     ; $00:D8F9: 18          ;
                ADC #$09                ; $00:D8FA: 69 09       ;
                STA $0904,y             ; $00:D8FC: 99 04 09    ;
                LDA $0238               ; $00:D8FF: AD 38 02    ;
                INC A                   ; $00:D902: 1A          ;
                STA $0901,y             ; $00:D903: 99 01 09    ;
                STA $0905,y             ; $00:D906: 99 05 09    ;
                LDA #$E0                ; $00:D909: A9 E0       ;
                STA $0902,y             ; $00:D90B: 99 02 09    ;
                STA $0906,y             ; $00:D90E: 99 06 09    ;
                LDA #$6D                ; $00:D911: A9 6D       ;
                STA $0903,y             ; $00:D913: 99 03 09    ;
                LDA #$2D                ; $00:D916: A9 2D       ;
                STA $0907,y             ; $00:D918: 99 07 09    ;
                LDA #$02                ; $00:D91B: A9 02       ;
                STA $0D00,y             ; $00:D91D: 99 00 0D    ;
                STA $0D04,y             ; $00:D920: 99 04 0D    ;
                RTS                     ; $00:D923: 60          ;

CODE_00D924:    LDA $03AE               ; $00:D924: AD AE 03    ;
                SEC                     ; $00:D927: 38          ;
                SBC #$05                ; $00:D928: E9 05       ;
                STA $0900,y             ; $00:D92A: 99 00 09    ;
                LDA $03AE               ; $00:D92D: AD AE 03    ;
                CLC                     ; $00:D930: 18          ;
                ADC #$05                ; $00:D931: 69 05       ;
                STA $0904,y             ; $00:D933: 99 04 09    ;
                LDA $0238               ; $00:D936: AD 38 02    ;
                STA $0901,y             ; $00:D939: 99 01 09    ;
                STA $0905,y             ; $00:D93C: 99 05 09    ;
                LDA #$E0                ; $00:D93F: A9 E0       ;
                STA $0902,y             ; $00:D941: 99 02 09    ;
                STA $0906,y             ; $00:D944: 99 06 09    ;
                LDA #$6D                ; $00:D947: A9 6D       ;
                STA $0903,y             ; $00:D949: 99 03 09    ;
                LDA #$2D                ; $00:D94C: A9 2D       ;
                STA $0907,y             ; $00:D94E: 99 07 09    ;
                LDA #$02                ; $00:D951: A9 02       ;
                STA $0D00,y             ; $00:D953: 99 00 0D    ;
                STA $0D04,y             ; $00:D956: 99 04 0D    ;
                RTS                     ; $00:D959: 60          ;

CODE_00D95A:    JSR CODE_00E27B         ; $00:D95A: 20 7B E2    ;
                LDA $0F7F               ; $00:D95D: AD 7F 0F    ;
                BNE CODE_00D965         ; $00:D960: D0 03       ;
                JMP CODE_00E1D5         ; $00:D962: 4C D5 E1    ;

CODE_00D965:    INC $0B9F               ; $00:D965: EE 9F 0B    ;
                LDA $0B9F               ; $00:D968: AD 9F 0B    ;
                CMP #$C0                ; $00:D96B: C9 C0       ;
                BCC CODE_00D987         ; $00:D96D: 90 18       ;
                LDA #$C0                ; $00:D96F: A9 C0       ;
                STA $0B9F               ; $00:D971: 8D 9F 0B    ;
                LDA #$02                ; $00:D974: A9 02       ;
                STA $0B9C               ; $00:D976: 8D 9C 0B    ;
                LDA #$01                ; $00:D979: A9 01       ;
                STA $0BB8               ; $00:D97B: 8D B8 0B    ;
                STA $0BB9               ; $00:D97E: 8D B9 0B    ;
                STA $0BBA               ; $00:D981: 8D BA 0B    ;
                STA $0BBB               ; $00:D984: 8D BB 0B    ;
CODE_00D987:    STZ $0E67               ; $00:D987: 9C 67 0E    ;
                LDA $0BB4               ; $00:D98A: AD B4 0B    ;
                BNE CODE_00D9A2         ; $00:D98D: D0 13       ;
                LDA $0B9C               ; $00:D98F: AD 9C 0B    ;
                CMP #$02                ; $00:D992: C9 02       ;
                BEQ CODE_00D99C         ; $00:D994: F0 06       ;
                JSR CODE_00DAAB         ; $00:D996: 20 AB DA    ;
                JMP CODE_00E1D5         ; $00:D999: 4C D5 E1    ;

CODE_00D99C:    JSR CODE_00D9D7         ; $00:D99C: 20 D7 D9    ;
                JMP CODE_00E1D5         ; $00:D99F: 4C D5 E1    ;

CODE_00D9A2:    LDA $0BA1               ; $00:D9A2: AD A1 0B    ;
                BEQ CODE_00D9AE         ; $00:D9A5: F0 07       ;
                DEC $0BA1               ; $00:D9A7: CE A1 0B    ;
                LDA #$00                ; $00:D9AA: A9 00       ;
                BRA CODE_00D9B3         ; $00:D9AC: 80 05       ;

CODE_00D9AE:    JSR CODE_00E529         ; $00:D9AE: 20 29 E5    ;
                LDA #$02                ; $00:D9B1: A9 02       ;
CODE_00D9B3:    STA $0B9E               ; $00:D9B3: 8D 9E 0B    ;
                LDX #$03                ; $00:D9B6: A2 03       ;
                LDY #$00                ; $00:D9B8: A0 00       ;
CODE_00D9BA:    LDA $0BB0,x             ; $00:D9BA: BD B0 0B    ;
                STA $00                 ; $00:D9BD: 85 00       ;
                LDA #$B8                ; $00:D9BF: A9 B8       ;
                STA $01                 ; $00:D9C1: 85 01       ;
                LDA $0B9E               ; $00:D9C3: AD 9E 0B    ;
                JSR CODE_00E1FC         ; $00:D9C6: 20 FC E1    ;
                TYA                     ; $00:D9C9: 98          ;
                CLC                     ; $00:D9CA: 18          ;
                ADC #$10                ; $00:D9CB: 69 10       ;
                TAY                     ; $00:D9CD: A8          ;
                STY $0E67               ; $00:D9CE: 8C 67 0E    ;
                DEX                     ; $00:D9D1: CA          ;
                BPL CODE_00D9BA         ; $00:D9D2: 10 E6       ;
                JMP CODE_00E1D5         ; $00:D9D4: 4C D5 E1    ;

CODE_00D9D7:    JSR CODE_00E566         ; $00:D9D7: 20 66 E5    ;
                LDA #$20                ; $00:D9DA: A9 20       ;
                STA $00                 ; $00:D9DC: 85 00       ;
                LDA #$04                ; $00:D9DE: A9 04       ;
                STA $02                 ; $00:D9E0: 85 02       ;
                LDX #$01                ; $00:D9E2: A2 01       ;
                LDA #$00                ; $00:D9E4: A9 00       ;
                JSL CODE_0DBF7A         ; $00:D9E6: 22 7A BF 0D ;
                LDA $0238               ; $00:D9EA: AD 38 02    ;
                CMP #$B0                ; $00:D9ED: C9 B0       ;
                BCS CODE_00D9F6         ; $00:D9EF: B0 05       ;
                LDA #$01                ; $00:D9F1: A9 01       ;
                STA $0B9D               ; $00:D9F3: 8D 9D 0B    ;
CODE_00D9F6:    LDY $0B9D               ; $00:D9F6: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:D9F9: B9 5F D6    ;
                TAY                     ; $00:D9FC: A8          ;
                LDA $03AE               ; $00:D9FD: AD AE 03    ;
                STA $00                 ; $00:DA00: 85 00       ;
                LDA $0238               ; $00:DA02: AD 38 02    ;
                CMP #$B8                ; $00:DA05: C9 B8       ;
                BCC CODE_00DA0E         ; $00:DA07: 90 05       ;
                LDA #$B8                ; $00:DA09: A9 B8       ;
                STZ $0BB8               ; $00:DA0B: 9C B8 0B    ;
CODE_00DA0E:    STA $01                 ; $00:DA0E: 85 01       ;
                LDA $0BB8               ; $00:DA10: AD B8 0B    ;
                JSR CODE_00E1FC         ; $00:DA13: 20 FC E1    ;
                LDA $0BB1               ; $00:DA16: AD B1 0B    ;
                STA $00                 ; $00:DA19: 85 00       ;
                LDA $0238               ; $00:DA1B: AD 38 02    ;
                SEC                     ; $00:DA1E: 38          ;
                SBC #$0C                ; $00:DA1F: E9 0C       ;
                CMP #$B8                ; $00:DA21: C9 B8       ;
                BCC CODE_00DA2C         ; $00:DA23: 90 07       ;
                LDA #$B8                ; $00:DA25: A9 B8       ;
                STZ $0BB9               ; $00:DA27: 9C B9 0B    ;
                BRA CODE_00DA3A         ; $00:DA2A: 80 0E       ;

CODE_00DA2C:    LDA $09                 ; $00:DA2C: A5 09       ;
                LSR A                   ; $00:DA2E: 4A          ;
                BCC CODE_00DA34         ; $00:DA2F: 90 03       ;
                INC $0BB1               ; $00:DA31: EE B1 0B    ;
CODE_00DA34:    LDA $0238               ; $00:DA34: AD 38 02    ;
                SEC                     ; $00:DA37: 38          ;
                SBC #$0C                ; $00:DA38: E9 0C       ;
CODE_00DA3A:    STA $01                 ; $00:DA3A: 85 01       ;
                TYA                     ; $00:DA3C: 98          ;
                CLC                     ; $00:DA3D: 18          ;
                ADC #$10                ; $00:DA3E: 69 10       ;
                TAY                     ; $00:DA40: A8          ;
                LDA $0BB9               ; $00:DA41: AD B9 0B    ;
                CLC                     ; $00:DA44: 18          ;
                ADC #$06                ; $00:DA45: 69 06       ;
                JSR CODE_00E1FC         ; $00:DA47: 20 FC E1    ;
                LDA $0BB2               ; $00:DA4A: AD B2 0B    ;
                STA $00                 ; $00:DA4D: 85 00       ;
                LDA $0238               ; $00:DA4F: AD 38 02    ;
                SEC                     ; $00:DA52: 38          ;
                SBC #$18                ; $00:DA53: E9 18       ;
                CMP #$B8                ; $00:DA55: C9 B8       ;
                BCC CODE_00DA60         ; $00:DA57: 90 07       ;
                LDA #$B8                ; $00:DA59: A9 B8       ;
                STZ $0BBA               ; $00:DA5B: 9C BA 0B    ;
                BRA CODE_00DA63         ; $00:DA5E: 80 03       ;

CODE_00DA60:    DEC $0BB2               ; $00:DA60: CE B2 0B    ;
CODE_00DA63:    STA $01                 ; $00:DA63: 85 01       ;
                TYA                     ; $00:DA65: 98          ;
                CLC                     ; $00:DA66: 18          ;
                ADC #$10                ; $00:DA67: 69 10       ;
                TAY                     ; $00:DA69: A8          ;
                LDA $0BBA               ; $00:DA6A: AD BA 0B    ;
                CLC                     ; $00:DA6D: 18          ;
                ADC #$04                ; $00:DA6E: 69 04       ;
                JSR CODE_00E1FC         ; $00:DA70: 20 FC E1    ;
                LDA $0BB3               ; $00:DA73: AD B3 0B    ;
                STA $00                 ; $00:DA76: 85 00       ;
                LDA $0238               ; $00:DA78: AD 38 02    ;
                SEC                     ; $00:DA7B: 38          ;
                SBC #$24                ; $00:DA7C: E9 24       ;
                CMP #$B8                ; $00:DA7E: C9 B8       ;
                BCC CODE_00DA97         ; $00:DA80: 90 15       ;
                LDA #$B8                ; $00:DA82: A9 B8       ;
                STZ $0BBB               ; $00:DA84: 9C BB 0B    ;
                INC $0BB4               ; $00:DA87: EE B4 0B    ;
                LDA #$28                ; $00:DA8A: A9 28       ;
                STA $0BA1               ; $00:DA8C: 8D A1 0B    ;
                LDA $0238               ; $00:DA8F: AD 38 02    ;
                SEC                     ; $00:DA92: 38          ;
                SBC #$24                ; $00:DA93: E9 24       ;
                BRA CODE_00DA9A         ; $00:DA95: 80 03       ;

CODE_00DA97:    INC $0BB3               ; $00:DA97: EE B3 0B    ;
CODE_00DA9A:    STA $01                 ; $00:DA9A: 85 01       ;
                TYA                     ; $00:DA9C: 98          ;
                CLC                     ; $00:DA9D: 18          ;
                ADC #$10                ; $00:DA9E: 69 10       ;
                TAY                     ; $00:DAA0: A8          ;
                LDA $0BBB               ; $00:DAA1: AD BB 0B    ;
                CLC                     ; $00:DAA4: 18          ;
                ADC #$06                ; $00:DAA5: 69 06       ;
                JSR CODE_00E1FC         ; $00:DAA7: 20 FC E1    ;
                RTS                     ; $00:DAAA: 60          ;

CODE_00DAAB:    LDY #$B0                ; $00:DAAB: A0 B0       ;
                LDX #$00                ; $00:DAAD: A2 00       ;
CODE_00DAAF:    LDA $03AE               ; $00:DAAF: AD AE 03    ;
                STA $0900,y             ; $00:DAB2: 99 00 09    ;
                LDA DATA_00DB8F,x       ; $00:DAB5: BD 8F DB    ;
                STA $0901,y             ; $00:DAB8: 99 01 09    ;
                LDA DATA_00DB8F+1,x     ; $00:DABB: BD 90 DB    ;
                STA $0902,y             ; $00:DABE: 99 02 09    ;
                LDA #$2D                ; $00:DAC1: A9 2D       ;
                STA $0903,y             ; $00:DAC3: 99 03 09    ;
                LDA #$02                ; $00:DAC6: A9 02       ;
                STA $0D00,y             ; $00:DAC8: 99 00 0D    ;
                INY                     ; $00:DACB: C8          ;
                INY                     ; $00:DACC: C8          ;
                INY                     ; $00:DACD: C8          ;
                INY                     ; $00:DACE: C8          ;
                INX                     ; $00:DACF: E8          ;
                INX                     ; $00:DAD0: E8          ;
                CPX #$12                ; $00:DAD1: E0 12       ;
                BCC CODE_00DAAF         ; $00:DAD3: 90 DA       ;
                LDA #$6D                ; $00:DAD5: A9 6D       ;
                STA $09C3               ; $00:DAD7: 8D C3 09    ;
                STZ $0DC0               ; $00:DADA: 9C C0 0D    ;
                STZ $0DBC               ; $00:DADD: 9C BC 0D    ;
                LDA $09BC               ; $00:DAE0: AD BC 09    ;
                CLC                     ; $00:DAE3: 18          ;
                ADC #$08                ; $00:DAE4: 69 08       ;
                STA $09C0               ; $00:DAE6: 8D C0 09    ;
                LDX #$00                ; $00:DAE9: A2 00       ;
CODE_00DAEB:    LDA DATA_00DB88,x       ; $00:DAEB: BD 88 DB    ;
                CMP $0B9F               ; $00:DAEE: CD 9F 0B    ;
                BCS CODE_00DAF8         ; $00:DAF1: B0 05       ;
                INX                     ; $00:DAF3: E8          ;
                CPX #$06                ; $00:DAF4: E0 06       ;
                BNE CODE_00DAEB         ; $00:DAF6: D0 F3       ;
CODE_00DAF8:    TXA                     ; $00:DAF8: 8A          ;
                ASL A                   ; $00:DAF9: 0A          ;
                TAX                     ; $00:DAFA: AA          ;
                LDA PNTR_00DB7A,x       ; $00:DAFB: BD 7A DB    ;
                STA $00                 ; $00:DAFE: 85 00       ;
                LDA PNTR_00DB7A+1,x     ; $00:DB00: BD 7B DB    ;
                STA $01                 ; $00:DB03: 85 01       ;
                LDA #$01                ; $00:DB05: A9 01       ;
                JMP ($0000)             ; $00:DB07: 6C 00 00    ;

CODE_00DB0A:    STA $0DB0               ; $00:DB0A: 8D B0 0D    ;
                STA $0DB4               ; $00:DB0D: 8D B4 0D    ;
                STA $0DB8               ; $00:DB10: 8D B8 0D    ;
                STA $0DC8               ; $00:DB13: 8D C8 0D    ;
                STA $0DCC               ; $00:DB16: 8D CC 0D    ;
                STA $0DD0               ; $00:DB19: 8D D0 0D    ;
                RTS                     ; $00:DB1C: 60          ;

CODE_00DB1D:    STA $0DB0               ; $00:DB1D: 8D B0 0D    ;
                STA $0DB4               ; $00:DB20: 8D B4 0D    ;
                STA $0DB8               ; $00:DB23: 8D B8 0D    ;
                STA $0DCC               ; $00:DB26: 8D CC 0D    ;
                STA $0DD0               ; $00:DB29: 8D D0 0D    ;
                LDA #$09                ; $00:DB2C: A9 09       ;
                STA $1600               ; $00:DB2E: 8D 00 16    ;
                RTS                     ; $00:DB31: 60          ;

CODE_00DB32:    STA $0DB0               ; $00:DB32: 8D B0 0D    ;
                STA $0DB4               ; $00:DB35: 8D B4 0D    ;
                STA $0DC8               ; $00:DB38: 8D C8 0D    ;
                STA $0DCC               ; $00:DB3B: 8D CC 0D    ;
                STA $0DD0               ; $00:DB3E: 8D D0 0D    ;
                RTS                     ; $00:DB41: 60          ;

CODE_00DB42:    STA $0DB0               ; $00:DB42: 8D B0 0D    ;
                STA $0DB4               ; $00:DB45: 8D B4 0D    ;
                STA $0DC8               ; $00:DB48: 8D C8 0D    ;
                STA $0DD0               ; $00:DB4B: 8D D0 0D    ;
                LDA #$09                ; $00:DB4E: A9 09       ;
                STA $1600               ; $00:DB50: 8D 00 16    ;
                RTS                     ; $00:DB53: 60          ;

CODE_00DB54:    STA $0DB0               ; $00:DB54: 8D B0 0D    ;
                STA $0DC8               ; $00:DB57: 8D C8 0D    ;
                STA $0DCC               ; $00:DB5A: 8D CC 0D    ;
                STA $0DD0               ; $00:DB5D: 8D D0 0D    ;
                RTS                     ; $00:DB60: 60          ;

CODE_00DB61:    STA $0DB0               ; $00:DB61: 8D B0 0D    ;
                STA $0DC8               ; $00:DB64: 8D C8 0D    ;
                STA $0DCC               ; $00:DB67: 8D CC 0D    ;
                LDA #$09                ; $00:DB6A: A9 09       ;
                STA $1600               ; $00:DB6C: 8D 00 16    ;
                RTS                     ; $00:DB6F: 60          ;

CODE_00DB70:    STA $0DC8               ; $00:DB70: 8D C8 0D    ;
                STA $0DCC               ; $00:DB73: 8D CC 0D    ;
                STA $0DD0               ; $00:DB76: 8D D0 0D    ;
                RTS                     ; $00:DB79: 60          ;

PNTR_00DB7A:    dw CODE_00DB0A                                  ;
                dw CODE_00DB1D                                  ;
                dw CODE_00DB32                                  ;
                dw CODE_00DB42                                  ;
                dw CODE_00DB54                                  ;
                dw CODE_00DB61                                  ;
                dw CODE_00DB70                                  ;

DATA_00DB88:    db $40,$48,$58,$60,$70,$78,$BF                  ;

DATA_00DB8F:    db $97,$EA,$A2,$EA,$AD,$EA,$B8,$B6              ;
                db $B8,$B6,$C0,$C9,$B3,$EA,$A8,$EA              ;
                db $9D,$EA                                      ;

CODE_00DBA1:    JSR CODE_00E27B         ; $00:DBA1: 20 7B E2    ;
                LDA $0F7F               ; $00:DBA4: AD 7F 0F    ;
                BNE CODE_00DBAC         ; $00:DBA7: D0 03       ;
                JMP CODE_00E1D5         ; $00:DBA9: 4C D5 E1    ;

CODE_00DBAC:    JSR CODE_00E566         ; $00:DBAC: 20 66 E5    ;
                LDA #$20                ; $00:DBAF: A9 20       ;
                STA $00                 ; $00:DBB1: 85 00       ;
                LDA #$04                ; $00:DBB3: A9 04       ;
                STA $02                 ; $00:DBB5: 85 02       ;
                LDX #$01                ; $00:DBB7: A2 01       ;
                LDA #$00                ; $00:DBB9: A9 00       ;
                JSL CODE_0DBF7A         ; $00:DBBB: 22 7A BF 0D ;
                LDA $0238               ; $00:DBBF: AD 38 02    ;
                CMP #$A0                ; $00:DBC2: C9 A0       ;
                BCS CODE_00DBCB         ; $00:DBC4: B0 05       ;
                LDA #$01                ; $00:DBC6: A9 01       ;
                STA $0B9D               ; $00:DBC8: 8D 9D 0B    ;
CODE_00DBCB:    LDA $0238               ; $00:DBCB: AD 38 02    ;
                CMP #$B0                ; $00:DBCE: C9 B0       ;
                BCC CODE_00DBED         ; $00:DBD0: 90 1B       ;
                LDA #$B0                ; $00:DBD2: A9 B0       ;
                STA $0238               ; $00:DBD4: 8D 38 02    ;
                STZ $043D               ; $00:DBD7: 9C 3D 04    ;
                STZ $041C               ; $00:DBDA: 9C 1C 04    ;
                INC $0B9E               ; $00:DBDD: EE 9E 0B    ;
                LDA $0B9E               ; $00:DBE0: AD 9E 0B    ;
                BMI CODE_00DBEA         ; $00:DBE3: 30 05       ;
                LDA #$00                ; $00:DBE5: A9 00       ;
                STA $0B9E               ; $00:DBE7: 8D 9E 0B    ;
CODE_00DBEA:    STA $00A1               ; $00:DBEA: 8D A1 00    ;
CODE_00DBED:    INC $0B9F               ; $00:DBED: EE 9F 0B    ;
                LDA $0B9F               ; $00:DBF0: AD 9F 0B    ;
                CMP #$44                ; $00:DBF3: C9 44       ;
                BCC CODE_00DC0C         ; $00:DBF5: 90 15       ;
                BNE CODE_00DBFE         ; $00:DBF7: D0 05       ;
                LDA #$08                ; $00:DBF9: A9 08       ;
                STA $1600               ; $00:DBFB: 8D 00 16    ;
CODE_00DBFE:    LDA #$45                ; $00:DBFE: A9 45       ;
                STA $0B9F               ; $00:DC00: 8D 9F 0B    ;
                JSR CODE_00DC12         ; $00:DC03: 20 12 DC    ;
                JSR CODE_00E529         ; $00:DC06: 20 29 E5    ;
                JMP CODE_00E1D5         ; $00:DC09: 4C D5 E1    ;

CODE_00DC0C:    JSR CODE_00DD86         ; $00:DC0C: 20 86 DD    ;
                JMP CODE_00E1D5         ; $00:DC0F: 4C D5 E1    ;

CODE_00DC12:    LDA $03AE               ; $00:DC12: AD AE 03    ;
                CLC                     ; $00:DC15: 18          ;
                ADC $0B9F               ; $00:DC16: 6D 9F 0B    ;
                STA $00                 ; $00:DC19: 85 00       ;
                CLC                     ; $00:DC1B: 18          ;
                ADC #$06                ; $00:DC1C: 69 06       ;
                STA $0900               ; $00:DC1E: 8D 00 09    ;
                CLC                     ; $00:DC21: 18          ;
                ADC #$10                ; $00:DC22: 69 10       ;
                STA $0904               ; $00:DC24: 8D 04 09    ;
                LDA $00                 ; $00:DC27: A5 00       ;
                STA $0910               ; $00:DC29: 8D 10 09    ;
                STA $0918               ; $00:DC2C: 8D 18 09    ;
                CLC                     ; $00:DC2F: 18          ;
                ADC #$08                ; $00:DC30: 69 08       ;
                STA $0914               ; $00:DC32: 8D 14 09    ;
                LDA $00                 ; $00:DC35: A5 00       ;
                CLC                     ; $00:DC37: 18          ;
                ADC #$1C                ; $00:DC38: 69 1C       ;
                STA $0920               ; $00:DC3A: 8D 20 09    ;
                STA $0928               ; $00:DC3D: 8D 28 09    ;
                CLC                     ; $00:DC40: 18          ;
                ADC #$08                ; $00:DC41: 69 08       ;
                STA $0924               ; $00:DC43: 8D 24 09    ;
                LDA $00                 ; $00:DC46: A5 00       ;
                CLC                     ; $00:DC48: 18          ;
                ADC #$06                ; $00:DC49: 69 06       ;
                STA $0930               ; $00:DC4B: 8D 30 09    ;
                STA $0938               ; $00:DC4E: 8D 38 09    ;
                CLC                     ; $00:DC51: 18          ;
                ADC #$08                ; $00:DC52: 69 08       ;
                STA $0934               ; $00:DC54: 8D 34 09    ;
                LDA $00                 ; $00:DC57: A5 00       ;
                CLC                     ; $00:DC59: 18          ;
                ADC #$16                ; $00:DC5A: 69 16       ;
                STA $0940               ; $00:DC5C: 8D 40 09    ;
                STA $0948               ; $00:DC5F: 8D 48 09    ;
                CLC                     ; $00:DC62: 18          ;
                ADC #$08                ; $00:DC63: 69 08       ;
                STA $0944               ; $00:DC65: 8D 44 09    ;
                LDA #$B8                ; $00:DC68: A9 B8       ;
                STA $0911               ; $00:DC6A: 8D 11 09    ;
                STA $0915               ; $00:DC6D: 8D 15 09    ;
                STA $0921               ; $00:DC70: 8D 21 09    ;
                STA $0925               ; $00:DC73: 8D 25 09    ;
                STA $0931               ; $00:DC76: 8D 31 09    ;
                STA $0935               ; $00:DC79: 8D 35 09    ;
                STA $0941               ; $00:DC7C: 8D 41 09    ;
                STA $0945               ; $00:DC7F: 8D 45 09    ;
                LDA #$C0                ; $00:DC82: A9 C0       ;
                STA $0901               ; $00:DC84: 8D 01 09    ;
                STA $0905               ; $00:DC87: 8D 05 09    ;
                STA $0919               ; $00:DC8A: 8D 19 09    ;
                STA $0929               ; $00:DC8D: 8D 29 09    ;
                STA $0939               ; $00:DC90: 8D 39 09    ;
                STA $0949               ; $00:DC93: 8D 49 09    ;
                LDA #$BE                ; $00:DC96: A9 BE       ;
                STA $0912               ; $00:DC98: 8D 12 09    ;
                STA $0926               ; $00:DC9B: 8D 26 09    ;
                LDA #$BF                ; $00:DC9E: A9 BF       ;
                STA $0916               ; $00:DCA0: 8D 16 09    ;
                STA $0922               ; $00:DCA3: 8D 22 09    ;
                LDA #$EC                ; $00:DCA6: A9 EC       ;
                STA $091A               ; $00:DCA8: 8D 1A 09    ;
                STA $092A               ; $00:DCAB: 8D 2A 09    ;
                LDA #$EA                ; $00:DCAE: A9 EA       ;
                STA $0902               ; $00:DCB0: 8D 02 09    ;
                STA $0906               ; $00:DCB3: 8D 06 09    ;
                LDA #$B6                ; $00:DCB6: A9 B6       ;
                STA $0932               ; $00:DCB8: 8D 32 09    ;
                STA $0936               ; $00:DCBB: 8D 36 09    ;
                STA $0942               ; $00:DCBE: 8D 42 09    ;
                STA $0946               ; $00:DCC1: 8D 46 09    ;
                LDA #$C9                ; $00:DCC4: A9 C9       ;
                STA $093A               ; $00:DCC6: 8D 3A 09    ;
                STA $094A               ; $00:DCC9: 8D 4A 09    ;
                LDA #$2D                ; $00:DCCC: A9 2D       ;
                STA $0903               ; $00:DCCE: 8D 03 09    ;
                STA $0913               ; $00:DCD1: 8D 13 09    ;
                STA $0917               ; $00:DCD4: 8D 17 09    ;
                STA $091B               ; $00:DCD7: 8D 1B 09    ;
                STA $0933               ; $00:DCDA: 8D 33 09    ;
                STA $093B               ; $00:DCDD: 8D 3B 09    ;
                STA $0943               ; $00:DCE0: 8D 43 09    ;
                STA $094B               ; $00:DCE3: 8D 4B 09    ;
                LDA #$6D                ; $00:DCE6: A9 6D       ;
                STA $0907               ; $00:DCE8: 8D 07 09    ;
                STA $0923               ; $00:DCEB: 8D 23 09    ;
                STA $0927               ; $00:DCEE: 8D 27 09    ;
                STA $092B               ; $00:DCF1: 8D 2B 09    ;
                STA $0937               ; $00:DCF4: 8D 37 09    ;
                STA $0947               ; $00:DCF7: 8D 47 09    ;
                LDA #$02                ; $00:DCFA: A9 02       ;
                STA $0D00               ; $00:DCFC: 8D 00 0D    ;
                STA $0D04               ; $00:DCFF: 8D 04 0D    ;
                STA $0D18               ; $00:DD02: 8D 18 0D    ;
                STA $0D28               ; $00:DD05: 8D 28 0D    ;
                STA $0D38               ; $00:DD08: 8D 38 0D    ;
                STA $0D48               ; $00:DD0B: 8D 48 0D    ;
                LDX #$03                ; $00:DD0E: A2 03       ;
CODE_00DD10:    LDA $0BB8,x             ; $00:DD10: BD B8 0B    ;
                BEQ CODE_00DD21         ; $00:DD13: F0 0C       ;
                CMP #$1E                ; $00:DD15: C9 1E       ;
                BCC CODE_00DD1E         ; $00:DD17: 90 05       ;
                STZ $0BB8,x             ; $00:DD19: 9E B8 0B    ;
                BRA CODE_00DD21         ; $00:DD1C: 80 03       ;

CODE_00DD1E:    INC $0BB8,x             ; $00:DD1E: FE B8 0B    ;
CODE_00DD21:    DEX                     ; $00:DD21: CA          ;
                BPL CODE_00DD10         ; $00:DD22: 10 EC       ;
                LDA $09                 ; $00:DD24: A5 09       ;
                AND #$07                ; $00:DD26: 29 07       ;
                BNE CODE_00DD56         ; $00:DD28: D0 2C       ;
                LDX #$03                ; $00:DD2A: A2 03       ;
CODE_00DD2C:    LDA $0BB8,x             ; $00:DD2C: BD B8 0B    ;
                BEQ CODE_00DD34         ; $00:DD2F: F0 03       ;
                DEX                     ; $00:DD31: CA          ;
                BNE CODE_00DD2C         ; $00:DD32: D0 F8       ;
CODE_00DD34:    LDA $09                 ; $00:DD34: A5 09       ;
                AND #$03                ; $00:DD36: 29 03       ;
                TAY                     ; $00:DD38: A8          ;
                LDA $07B9,y             ; $00:DD39: B9 B9 07    ;
                EOR $09                 ; $00:DD3C: 45 09       ;
                AND #$1F                ; $00:DD3E: 29 1F       ;
                CLC                     ; $00:DD40: 18          ;
                ADC #$CC                ; $00:DD41: 69 CC       ;
                STA $0BB0,x             ; $00:DD43: 9D B0 0B    ;
                LDA $07BA,y             ; $00:DD46: B9 BA 07    ;
                EOR $09                 ; $00:DD49: 45 09       ;
                AND #$07                ; $00:DD4B: 29 07       ;
                CLC                     ; $00:DD4D: 18          ;
                ADC #$B0                ; $00:DD4E: 69 B0       ;
                STA $0BB4,x             ; $00:DD50: 9D B4 0B    ;
                INC $0BB8,x             ; $00:DD53: FE B8 0B    ;
CODE_00DD56:    LDX #$03                ; $00:DD56: A2 03       ;
CODE_00DD58:    LDA $0BB8,x             ; $00:DD58: BD B8 0B    ;
                LSR A                   ; $00:DD5B: 4A          ;
                LSR A                   ; $00:DD5C: 4A          ;
                LSR A                   ; $00:DD5D: 4A          ;
                TAY                     ; $00:DD5E: A8          ;
                LDA DATA_00DD82,y       ; $00:DD5F: B9 82 DD    ;
                STA $00                 ; $00:DD62: 85 00       ;
                TXA                     ; $00:DD64: 8A          ;
                ASL A                   ; $00:DD65: 0A          ;
                ASL A                   ; $00:DD66: 0A          ;
                TAY                     ; $00:DD67: A8          ;
                LDA $0BB0,x             ; $00:DD68: BD B0 0B    ;
                STA $0800,y             ; $00:DD6B: 99 00 08    ;
                LDA $0BB4,x             ; $00:DD6E: BD B4 0B    ;
                STA $0801,y             ; $00:DD71: 99 01 08    ;
                LDA $00                 ; $00:DD74: A5 00       ;
                STA $0802,y             ; $00:DD76: 99 02 08    ;
                LDA #$25                ; $00:DD79: A9 25       ;
                STA $0803,y             ; $00:DD7B: 99 03 08    ;
                DEX                     ; $00:DD7E: CA          ;
                BPL CODE_00DD58         ; $00:DD7F: 10 D7       ;
                RTS                     ; $00:DD81: 60          ;

DATA_00DD82:    db $F5,$E4,$F4,$E5                              ;

CODE_00DD86:    LDY $0B9D               ; $00:DD86: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:DD89: B9 5F D6    ;
                TAY                     ; $00:DD8C: A8          ;
                LDA $03AE               ; $00:DD8D: AD AE 03    ;
                CLC                     ; $00:DD90: 18          ;
                ADC $0B9F               ; $00:DD91: 6D 9F 0B    ;
                STA $0900,y             ; $00:DD94: 99 00 09    ;
                STA $0908,y             ; $00:DD97: 99 08 09    ;
                CLC                     ; $00:DD9A: 18          ;
                ADC #$10                ; $00:DD9B: 69 10       ;
                STA $0904,y             ; $00:DD9D: 99 04 09    ;
                STA $090C,y             ; $00:DDA0: 99 0C 09    ;
                LDA $0238               ; $00:DDA3: AD 38 02    ;
                STA $0901,y             ; $00:DDA6: 99 01 09    ;
                STA $0905,y             ; $00:DDA9: 99 05 09    ;
                CLC                     ; $00:DDAC: 18          ;
                ADC #$10                ; $00:DDAD: 69 10       ;
                STA $0909,y             ; $00:DDAF: 99 09 09    ;
                STA $090D,y             ; $00:DDB2: 99 0D 09    ;
                LDA $0B9F               ; $00:DDB5: AD 9F 0B    ;
                AND #$0C                ; $00:DDB8: 29 0C       ;
                TAX                     ; $00:DDBA: AA          ;
                LDA #$04                ; $00:DDBB: A9 04       ;
                STA $00                 ; $00:DDBD: 85 00       ;
CODE_00DDBF:    LDA DATA_00DDDA,x       ; $00:DDBF: BD DA DD    ;
                STA $0902,y             ; $00:DDC2: 99 02 09    ;
                LDA DATA_00DDEA,x       ; $00:DDC5: BD EA DD    ;
                STA $0903,y             ; $00:DDC8: 99 03 09    ;
                LDA #$02                ; $00:DDCB: A9 02       ;
                STA $0D00,y             ; $00:DDCD: 99 00 0D    ;
                INY                     ; $00:DDD0: C8          ;
                INY                     ; $00:DDD1: C8          ;
                INY                     ; $00:DDD2: C8          ;
                INY                     ; $00:DDD3: C8          ;
                INX                     ; $00:DDD4: E8          ;
                DEC $00                 ; $00:DDD5: C6 00       ;
                BNE CODE_00DDBF         ; $00:DDD7: D0 E6       ;
                RTS                     ; $00:DDD9: 60          ;

DATA_00DDDA:    db $CE,$CE,$EE,$EE,$E0,$E2,$E0,$E2              ;
                db $EE,$EE,$CE,$CE,$E2,$E0,$E2,$E0              ;
					
DATA_00DDEA:    db $2D,$4D,$2D,$4D,$2D,$2D,$AD,$AD              ;
                db $AD,$CD,$AD,$CD,$4D,$4D,$CD,$CD              ;

CODE_00DDFA:    JSR CODE_00E27B         ; $00:DDFA: 20 7B E2    ;
                LDA $0F7F               ; $00:DDFD: AD 7F 0F    ;
                BNE CODE_00DE05         ; $00:DE00: D0 03       ;
                JMP CODE_00E1D5         ; $00:DE02: 4C D5 E1    ;

CODE_00DE05:    JSR CODE_00E566         ; $00:DE05: 20 66 E5    ;
                LDA #$20                ; $00:DE08: A9 20       ;
                STA $00                 ; $00:DE0A: 85 00       ;
                LDA #$04                ; $00:DE0C: A9 04       ;
                STA $01                 ; $00:DE0E: 85 01       ;
                LDX #$01                ; $00:DE10: A2 01       ;
                LDA #$00                ; $00:DE12: A9 00       ;
                JSL CODE_0DBF7A         ; $00:DE14: 22 7A BF 0D ;
                LDA $0238               ; $00:DE18: AD 38 02    ;
                CMP #$A0                ; $00:DE1B: C9 A0       ;
                BCS CODE_00DE24         ; $00:DE1D: B0 05       ;
                LDA #$01                ; $00:DE1F: A9 01       ;
                STA $0B9D               ; $00:DE21: 8D 9D 0B    ;
CODE_00DE24:    LDA $0238               ; $00:DE24: AD 38 02    ;
                CMP #$B8                ; $00:DE27: C9 B8       ;
                BCC CODE_00DE4A         ; $00:DE29: 90 1F       ;
                LDA #$B8                ; $00:DE2B: A9 B8       ;
                STA $0238               ; $00:DE2D: 8D 38 02    ;
                STZ $00A1               ; $00:DE30: 9C A1 00    ;
                STZ $043D               ; $00:DE33: 9C 3D 04    ;
                STZ $041D               ; $00:DE36: 9C 1D 04    ;
                LDA $0BA4               ; $00:DE39: AD A4 0B    ;
                CMP #$01                ; $00:DE3C: C9 01       ;
                BNE CODE_00DE5A         ; $00:DE3E: D0 1A       ;
                LDA #$20                ; $00:DE40: A9 20       ;
                STA $1600               ; $00:DE42: 8D 00 16    ;
                STA $0BA4               ; $00:DE45: 8D A4 0B    ;
                BRA CODE_00DE5A         ; $00:DE48: 80 10       ;

CODE_00DE4A:    LDY $0B9D               ; $00:DE4A: AC 9D 0B    ;
                LDA DATA_00D65F,y       ; $00:DE4D: B9 5F D6    ;
                TAY                     ; $00:DE50: A8          ;
                LDA $00A1               ; $00:DE51: AD A1 00    ;
                JSR CODE_00DEF9         ; $00:DE54: 20 F9 DE    ;
                JMP CODE_00E1D5         ; $00:DE57: 4C D5 E1    ;

CODE_00DE5A:    LDA $0B9C               ; $00:DE5A: AD 9C 0B    ;
                CMP #$02                ; $00:DE5D: C9 02       ;
                BEQ CODE_00DE78         ; $00:DE5F: F0 17       ;
                INC $0B9C               ; $00:DE61: EE 9C 0B    ;
                LDA $03AE               ; $00:DE64: AD AE 03    ;
                SEC                     ; $00:DE67: 38          ;
                SBC #$08                ; $00:DE68: E9 08       ;
                STA $03AE               ; $00:DE6A: 8D AE 03    ;
                LDA $021A               ; $00:DE6D: AD 1A 02    ;
                SEC                     ; $00:DE70: 38          ;
                SBC #$08                ; $00:DE71: E9 08       ;
                STA $021A               ; $00:DE73: 8D 1A 02    ;
                STZ $09                 ; $00:DE76: 64 09       ;
CODE_00DE78:    LDA $0BA0               ; $00:DE78: AD A0 0B    ;
                BNE CODE_00DE8C         ; $00:DE7B: D0 0F       ;
                INC $0B9F               ; $00:DE7D: EE 9F 0B    ;
                LDA $0B9F               ; $00:DE80: AD 9F 0B    ;
                CMP #$40                ; $00:DE83: C9 40       ;
                BCC CODE_00DE9B         ; $00:DE85: 90 14       ;
                LDA #$40                ; $00:DE87: A9 40       ;
                STA $0B9F               ; $00:DE89: 8D 9F 0B    ;
CODE_00DE8C:    INC $0BA0               ; $00:DE8C: EE A0 0B    ;
                LDA $0BA0               ; $00:DE8F: AD A0 0B    ;
                CMP #$88                ; $00:DE92: C9 88       ;
                BCC CODE_00DE9B         ; $00:DE94: 90 05       ;
                LDA #$88                ; $00:DE96: A9 88       ;
                STA $0BA0               ; $00:DE98: 8D A0 0B    ;
CODE_00DE9B:    JSR CODE_00DF4C         ; $00:DE9B: 20 4C DF    ;
                JSR CODE_00E529         ; $00:DE9E: 20 29 E5    ;
                JMP CODE_00E1D5         ; $00:DEA1: 4C D5 E1    ;

                LDA $03AE               ; $00:DEA4: AD AE 03    ;
                STA $0900,y             ; $00:DEA7: 99 00 09    ;
                STA $0908,y             ; $00:DEAA: 99 08 09    ;
                CLC                     ; $00:DEAD: 18          ;
                ADC #$10                ; $00:DEAE: 69 10       ;
                STA $0904,y             ; $00:DEB0: 99 04 09    ;
                STA $090C,y             ; $00:DEB3: 99 0C 09    ;
                LDA $0238               ; $00:DEB6: AD 38 02    ;
                STA $0901,y             ; $00:DEB9: 99 01 09    ;
                STA $0905,y             ; $00:DEBC: 99 05 09    ;
                CLC                     ; $00:DEBF: 18          ;
                ADC #$10                ; $00:DEC0: 69 10       ;
                STA $0909,y             ; $00:DEC2: 99 09 09    ;
                STA $090D,y             ; $00:DEC5: 99 0D 09    ;
                LDA #$CE                ; $00:DEC8: A9 CE       ;
                STA $0902,y             ; $00:DECA: 99 02 09    ;
                STA $0906,y             ; $00:DECD: 99 06 09    ;
                STA $090A,y             ; $00:DED0: 99 0A 09    ;
                STA $090E,y             ; $00:DED3: 99 0E 09    ;
                LDA #$2D                ; $00:DED6: A9 2D       ;
                STA $0903,y             ; $00:DED8: 99 03 09    ;
                LDA #$6D                ; $00:DEDB: A9 6D       ;
                STA $0907,y             ; $00:DEDD: 99 07 09    ;
                LDA #$AD                ; $00:DEE0: A9 AD       ;
                STA $090B,y             ; $00:DEE2: 99 0B 09    ;
                LDA #$CD                ; $00:DEE5: A9 CD       ;
                STA $090F,y             ; $00:DEE7: 99 0F 09    ;
                LDA #$02                ; $00:DEEA: A9 02       ;
                STA $0D00,y             ; $00:DEEC: 99 00 0D    ;
                STA $0D04,y             ; $00:DEEF: 99 04 0D    ;
                STA $0D08,y             ; $00:DEF2: 99 08 0D    ;
                STA $0D0C,y             ; $00:DEF5: 99 0C 0D    ;
                RTS                     ; $00:DEF8: 60          ;

CODE_00DEF9:    LDA $03AE               ; $00:DEF9: AD AE 03    ;
                STA $0900,y             ; $00:DEFC: 99 00 09    ;
                STA $0908,y             ; $00:DEFF: 99 08 09    ;
                CLC                     ; $00:DF02: 18          ;
                ADC #$10                ; $00:DF03: 69 10       ;
                STA $0904,y             ; $00:DF05: 99 04 09    ;
                STA $090C,y             ; $00:DF08: 99 0C 09    ;
                LDA $0238               ; $00:DF0B: AD 38 02    ;
                STA $0909,y             ; $00:DF0E: 99 09 09    ;
                STA $090D,y             ; $00:DF11: 99 0D 09    ;
                CLC                     ; $00:DF14: 18          ;
                ADC #$08                ; $00:DF15: 69 08       ;
                STA $0901,y             ; $00:DF17: 99 01 09    ;
                STA $0905,y             ; $00:DF1A: 99 05 09    ;
                LDA #$CE                ; $00:DF1D: A9 CE       ;
                STA $090A,y             ; $00:DF1F: 99 0A 09    ;
                STA $090E,y             ; $00:DF22: 99 0E 09    ;
                LDA #$DE                ; $00:DF25: A9 DE       ;
                STA $0902,y             ; $00:DF27: 99 02 09    ;
                STA $0906,y             ; $00:DF2A: 99 06 09    ;
                LDA #$2D                ; $00:DF2D: A9 2D       ;
                STA $0903,y             ; $00:DF2F: 99 03 09    ;
                STA $090B,y             ; $00:DF32: 99 0B 09    ;
                LDA #$6D                ; $00:DF35: A9 6D       ;
                STA $0907,y             ; $00:DF37: 99 07 09    ;
                STA $090F,y             ; $00:DF3A: 99 0F 09    ;
                LDA #$02                ; $00:DF3D: A9 02       ;
                STA $0D00,y             ; $00:DF3F: 99 00 0D    ;
                STA $0D04,y             ; $00:DF42: 99 04 0D    ;
                STA $0D08,y             ; $00:DF45: 99 08 0D    ;
                STA $0D0C,y             ; $00:DF48: 99 0C 0D    ;
                RTS                     ; $00:DF4B: 60          ;

CODE_00DF4C:    LDA $0B9F               ; $00:DF4C: AD 9F 0B    ;
                SEC                     ; $00:DF4F: 38          ;
                SBC #$28                ; $00:DF50: E9 28       ;
                BPL CODE_00DF56         ; $00:DF52: 10 02       ;
                LDA #$00                ; $00:DF54: A9 00       ;
CODE_00DF56:    LSR A                   ; $00:DF56: 4A          ;
                LSR A                   ; $00:DF57: 4A          ;
                STA $00                 ; $00:DF58: 85 00       ;
                LDA $0BA0               ; $00:DF5A: AD A0 0B    ;
                AND #$08                ; $00:DF5D: 29 08       ;
                LSR A                   ; $00:DF5F: 4A          ;
                LSR A                   ; $00:DF60: 4A          ;
                LSR A                   ; $00:DF61: 4A          ;
                STA $01                 ; $00:DF62: 85 01       ;
                LDA $03AE               ; $00:DF64: AD AE 03    ;
                CLC                     ; $00:DF67: 18          ;
                ADC $0BA0               ; $00:DF68: 6D A0 0B    ;
                CLC                     ; $00:DF6B: 18          ;
                ADC $01                 ; $00:DF6C: 65 01       ;
                STA $0900               ; $00:DF6E: 8D 00 09    ;
                STA $0910               ; $00:DF71: 8D 10 09    ;
                CLC                     ; $00:DF74: 18          ;
                ADC #$10                ; $00:DF75: 69 10       ;
                SEC                     ; $00:DF77: 38          ;
                SBC $01                 ; $00:DF78: E5 01       ;
                STA $0904               ; $00:DF7A: 8D 04 09    ;
                STA $0914               ; $00:DF7D: 8D 14 09    ;
                CLC                     ; $00:DF80: 18          ;
                ADC #$10                ; $00:DF81: 69 10       ;
                SEC                     ; $00:DF83: 38          ;
                SBC $01                 ; $00:DF84: E5 01       ;
                STA $0908               ; $00:DF86: 8D 08 09    ;
                STA $0918               ; $00:DF89: 8D 18 09    ;
                LDA $0238               ; $00:DF8C: AD 38 02    ;
                SEC                     ; $00:DF8F: 38          ;
                SBC $00                 ; $00:DF90: E5 00       ;
                CLC                     ; $00:DF92: 18          ;
                ADC $01                 ; $00:DF93: 65 01       ;
                STA $0911               ; $00:DF95: 8D 11 09    ;
                STA $0915               ; $00:DF98: 8D 15 09    ;
                STA $0919               ; $00:DF9B: 8D 19 09    ;
                CLC                     ; $00:DF9E: 18          ;
                ADC #$08                ; $00:DF9F: 69 08       ;
                STA $0901               ; $00:DFA1: 8D 01 09    ;
                STA $0905               ; $00:DFA4: 8D 05 09    ;
                STA $0909               ; $00:DFA7: 8D 09 09    ;
                LDA #$DE                ; $00:DFAA: A9 DE       ;
                STA $0902               ; $00:DFAC: 8D 02 09    ;
                STA $090A               ; $00:DFAF: 8D 0A 09    ;
                LDA #$EC                ; $00:DFB2: A9 EC       ;
                STA $0906               ; $00:DFB4: 8D 06 09    ;
                LDA #$CE                ; $00:DFB7: A9 CE       ;
                STA $0912               ; $00:DFB9: 8D 12 09    ;
                STA $091A               ; $00:DFBC: 8D 1A 09    ;
                LDA #$EA                ; $00:DFBF: A9 EA       ;
                STA $0916               ; $00:DFC1: 8D 16 09    ;
                LDA #$2D                ; $00:DFC4: A9 2D       ;
                STA $0903               ; $00:DFC6: 8D 03 09    ;
                STA $0907               ; $00:DFC9: 8D 07 09    ;
                STA $0913               ; $00:DFCC: 8D 13 09    ;
                STA $0917               ; $00:DFCF: 8D 17 09    ;
                LDA #$6D                ; $00:DFD2: A9 6D       ;
                STA $090B               ; $00:DFD4: 8D 0B 09    ;
                STA $091B               ; $00:DFD7: 8D 1B 09    ;
                LDA #$02                ; $00:DFDA: A9 02       ;
                STA $0D00               ; $00:DFDC: 8D 00 0D    ;
                STA $0D04               ; $00:DFDF: 8D 04 0D    ;
                STA $0D08               ; $00:DFE2: 8D 08 0D    ;
                STA $0D10               ; $00:DFE5: 8D 10 0D    ;
                STA $0D14               ; $00:DFE8: 8D 14 0D    ;
                STA $0D18               ; $00:DFEB: 8D 18 0D    ;
                LDA $03AE               ; $00:DFEE: AD AE 03    ;
                CLC                     ; $00:DFF1: 18          ;
                ADC $0BA0               ; $00:DFF2: 6D A0 0B    ;
                INC A                   ; $00:DFF5: 1A          ;
                INC A                   ; $00:DFF6: 1A          ;
                STA $0920               ; $00:DFF7: 8D 20 09    ;
                CLC                     ; $00:DFFA: 18          ;
                ADC #$08                ; $00:DFFB: 69 08       ;
                STA $0924               ; $00:DFFD: 8D 24 09    ;
                INC A                   ; $00:E000: 1A          ;
                STA $0928               ; $00:E001: 8D 28 09    ;
                CLC                     ; $00:E004: 18          ;
                ADC #$08                ; $00:E005: 69 08       ;
                STA $092C               ; $00:E007: 8D 2C 09    ;
                INC A                   ; $00:E00A: 1A          ;
                STA $0930               ; $00:E00B: 8D 30 09    ;
                CLC                     ; $00:E00E: 18          ;
                ADC #$08                ; $00:E00F: 69 08       ;
                STA $0934               ; $00:E011: 8D 34 09    ;
                INC A                   ; $00:E014: 1A          ;
                STA $0938               ; $00:E015: 8D 38 09    ;
                CLC                     ; $00:E018: 18          ;
                ADC #$08                ; $00:E019: 69 08       ;
                STA $093C               ; $00:E01B: 8D 3C 09    ;
                LDA #$C8                ; $00:E01E: A9 C8       ;
                STA $0921               ; $00:E020: 8D 21 09    ;
                STA $0925               ; $00:E023: 8D 25 09    ;
                STA $0929               ; $00:E026: 8D 29 09    ;
                STA $092D               ; $00:E029: 8D 2D 09    ;
                STA $0931               ; $00:E02C: 8D 31 09    ;
                STA $0935               ; $00:E02F: 8D 35 09    ;
                STA $0939               ; $00:E032: 8D 39 09    ;
                STA $093D               ; $00:E035: 8D 3D 09    ;
                LDA $0BA0               ; $00:E038: AD A0 0B    ;
                AND #$0F                ; $00:E03B: 29 0F       ;
                CMP #$0F                ; $00:E03D: C9 0F       ;
                BNE CODE_00E046         ; $00:E03F: D0 05       ;
                LDA #$0E                ; $00:E041: A9 0E       ;
                STA $1600               ; $00:E043: 8D 00 16    ;
CODE_00E046:    LDA $0BA0               ; $00:E046: AD A0 0B    ;
                AND #$08                ; $00:E049: 29 08       ;
                ASL A                   ; $00:E04B: 0A          ;
                ORA #$CB                ; $00:E04C: 09 CB       ;
                STA $0922               ; $00:E04E: 8D 22 09    ;
                STA $092A               ; $00:E051: 8D 2A 09    ;
                STA $0932               ; $00:E054: 8D 32 09    ;
                STA $093A               ; $00:E057: 8D 3A 09    ;
                INC A                   ; $00:E05A: 1A          ;
                STA $0926               ; $00:E05B: 8D 26 09    ;
                STA $092E               ; $00:E05E: 8D 2E 09    ;
                STA $0936               ; $00:E061: 8D 36 09    ;
                STA $093E               ; $00:E064: 8D 3E 09    ;
                LDA #$2D                ; $00:E067: A9 2D       ;
                STA $0923               ; $00:E069: 8D 23 09    ;
                STA $0927               ; $00:E06C: 8D 27 09    ;
                STA $092B               ; $00:E06F: 8D 2B 09    ;
                STA $092F               ; $00:E072: 8D 2F 09    ;
                STA $0933               ; $00:E075: 8D 33 09    ;
                STA $0937               ; $00:E078: 8D 37 09    ;
                STA $093B               ; $00:E07B: 8D 3B 09    ;
                STA $093F               ; $00:E07E: 8D 3F 09    ;
                LDY #$00                ; $00:E081: A0 00       ;
CODE_00E083:    LDA $0900,y             ; $00:E083: B9 00 09    ;
                CMP #$40                ; $00:E086: C9 40       ;
                BCS CODE_00E08F         ; $00:E088: B0 05       ;
                LDA #$F0                ; $00:E08A: A9 F0       ;
                STA $0901,y             ; $00:E08C: 99 01 09    ;
CODE_00E08F:    INY                     ; $00:E08F: C8          ;
                INY                     ; $00:E090: C8          ;
                INY                     ; $00:E091: C8          ;
                INY                     ; $00:E092: C8          ;
                BNE CODE_00E083         ; $00:E093: D0 EE       ;
                RTS                     ; $00:E095: 60          ;

CODE_00E096:    INC $0F7F               ; $00:E096: EE 7F 0F    ;
                LDA $0F7F               ; $00:E099: AD 7F 0F    ;
                CMP #$D0                ; $00:E09C: C9 D0       ;
                BCC CODE_00E0AB         ; $00:E09E: 90 0B       ;
                JSR CODE_00E529         ; $00:E0A0: 20 29 E5    ;
                LDA #$D0                ; $00:E0A3: A9 D0       ;
                STA $0F7F               ; $00:E0A5: 8D 7F 0F    ;
                JMP CODE_00E0BA         ; $00:E0A8: 4C BA E0    ;

CODE_00E0AB:    CMP #$20                ; $00:E0AB: C9 20       ;
                BCC CODE_00E0BA         ; $00:E0AD: 90 0B       ;
                PHA                     ; $00:E0AF: 48          ;
                AND #$0F                ; $00:E0B0: 29 0F       ;
                BNE CODE_00E0B9         ; $00:E0B2: D0 05       ;
                LDA #$0E                ; $00:E0B4: A9 0E       ;
                STA $1600               ; $00:E0B6: 8D 00 16    ;
CODE_00E0B9:    PLA                     ; $00:E0B9: 68          ;
CODE_00E0BA:    LSR A                   ; $00:E0BA: 4A          ;
                LSR A                   ; $00:E0BB: 4A          ;
                LSR A                   ; $00:E0BC: 4A          ;
                CMP #$03                ; $00:E0BD: C9 03       ;
                BCC CODE_00E0C3         ; $00:E0BF: 90 02       ;
                LDA #$03                ; $00:E0C1: A9 03       ;
CODE_00E0C3:    PHA                     ; $00:E0C3: 48          ;
                JSR CODE_00E0DC         ; $00:E0C4: 20 DC E0    ;
                PLA                     ; $00:E0C7: 68          ;
                CMP #$02                ; $00:E0C8: C9 02       ;
                BNE CODE_00E0D9         ; $00:E0CA: D0 0D       ;
                LDA $0BA4               ; $00:E0CC: AD A4 0B    ;
                BNE CODE_00E0D9         ; $00:E0CF: D0 08       ;
                LDA #$2B                ; $00:E0D1: A9 2B       ;
                STA $1600               ; $00:E0D3: 8D 00 16    ;
                STA $0BA4               ; $00:E0D6: 8D A4 0B    ;
CODE_00E0D9:    JMP CODE_00E1D5         ; $00:E0D9: 4C D5 E1    ;

CODE_00E0DC:    ASL A                   ; $00:E0DC: 0A          ;
                ASL A                   ; $00:E0DD: 0A          ;
                ASL A                   ; $00:E0DE: 0A          ;
                TAX                     ; $00:E0DF: AA          ;
                LDY #$08                ; $00:E0E0: A0 08       ;
                LDA #$88                ; $00:E0E2: A9 88       ;
                STA $0900,y             ; $00:E0E4: 99 00 09    ;
                STA $0908,y             ; $00:E0E7: 99 08 09    ;
                LDA #$90                ; $00:E0EA: A9 90       ;
                STA $0904,y             ; $00:E0EC: 99 04 09    ;
                LDA #$B0                ; $00:E0EF: A9 B0       ;
                STA $0901,y             ; $00:E0F1: 99 01 09    ;
                STA $0905,y             ; $00:E0F4: 99 05 09    ;
                LDA #$C0                ; $00:E0F7: A9 C0       ;
                STA $0909,y             ; $00:E0F9: 99 09 09    ;
                LDA #$80                ; $00:E0FC: A9 80       ;
                STA $0902,y             ; $00:E0FE: 99 02 09    ;
                INC A                   ; $00:E101: 1A          ;
                STA $0906,y             ; $00:E102: 99 06 09    ;
                LDA #$A0                ; $00:E105: A9 A0       ;
                STA $090A,y             ; $00:E107: 99 0A 09    ;
                LDA #$2D                ; $00:E10A: A9 2D       ;
                STA $0903,y             ; $00:E10C: 99 03 09    ;
                STA $0907,y             ; $00:E10F: 99 07 09    ;
                STA $090B,y             ; $00:E112: 99 0B 09    ;
                LDY #$00                ; $00:E115: A0 00       ;
CODE_00E117:    LDA DATA_00E1B5,x       ; $00:E117: BD B5 E1    ;
                STA $0900,y             ; $00:E11A: 99 00 09    ;
                INY                     ; $00:E11D: C8          ;
                INX                     ; $00:E11E: E8          ;
                CPY #$08                ; $00:E11F: C0 08       ;
                BCC CODE_00E117         ; $00:E121: 90 F4       ;
                LDA #$02                ; $00:E123: A9 02       ;
                STA $0D00               ; $00:E125: 8D 00 0D    ;
                STA $0D04               ; $00:E128: 8D 04 0D    ;
                STA $0D08               ; $00:E12B: 8D 08 0D    ;
                STA $0D0C               ; $00:E12E: 8D 0C 0D    ;
                STA $0D10               ; $00:E131: 8D 10 0D    ;
                LDA #$7E                ; $00:E134: A9 7E       ;
                CLC                     ; $00:E136: 18          ;
                ADC $0F7F               ; $00:E137: 6D 7F 0F    ;
                STA $091C               ; $00:E13A: 8D 1C 09    ;
                CMP #$88                ; $00:E13D: C9 88       ;
                BCS CODE_00E145         ; $00:E13F: B0 04       ;
                LDA #$F0                ; $00:E141: A9 F0       ;
                BRA CODE_00E147         ; $00:E143: 80 02       ;

CODE_00E145:    LDA #$C0                ; $00:E145: A9 C0       ;
CODE_00E147:    STA $091D               ; $00:E147: 8D 1D 09    ;
                LDA $09                 ; $00:E14A: A5 09       ;
                LSR A                   ; $00:E14C: 4A          ;
                LSR A                   ; $00:E14D: 4A          ;
                AND #$02                ; $00:E14E: 29 02       ;
                STA $01                 ; $00:E150: 85 01       ;
                CLC                     ; $00:E152: 18          ;
                ADC #$E6                ; $00:E153: 69 E6       ;
                STA $091E               ; $00:E155: 8D 1E 09    ;
                LDA #$2D                ; $00:E158: A9 2D       ;
                STA $091F               ; $00:E15A: 8D 1F 09    ;
                LDA #$02                ; $00:E15D: A9 02       ;
                STA $0D1C               ; $00:E15F: 8D 1C 0D    ;
                LDY #$20                ; $00:E162: A0 20       ;
                LDX #$06                ; $00:E164: A2 06       ;
                LDA #$78                ; $00:E166: A9 78       ;
                CLC                     ; $00:E168: 18          ;
                ADC $0F7F               ; $00:E169: 6D 7F 0F    ;
                STA $00                 ; $00:E16C: 85 00       ;
CODE_00E16E:    LDA $00                 ; $00:E16E: A5 00       ;
                STA $0900,y             ; $00:E170: 99 00 09    ;
                STA $0904,y             ; $00:E173: 99 04 09    ;
                CMP #$91                ; $00:E176: C9 91       ;
                BCS CODE_00E184         ; $00:E178: B0 0A       ;
                LDA #$F0                ; $00:E17A: A9 F0       ;
                STA $0901,y             ; $00:E17C: 99 01 09    ;
                STA $0905,y             ; $00:E17F: 99 05 09    ;
                BRA CODE_00E18E         ; $00:E182: 80 0A       ;

CODE_00E184:    LDA #$C0                ; $00:E184: A9 C0       ;
                STA $0901,y             ; $00:E186: 99 01 09    ;
                LDA #$C8                ; $00:E189: A9 C8       ;
                STA $0905,y             ; $00:E18B: 99 05 09    ;
CODE_00E18E:    LDA #$BA                ; $00:E18E: A9 BA       ;
                CLC                     ; $00:E190: 18          ;
                ADC $01                 ; $00:E191: 65 01       ;
                STA $0902,y             ; $00:E193: 99 02 09    ;
                INC A                   ; $00:E196: 1A          ;
                STA $0906,y             ; $00:E197: 99 06 09    ;
                LDA #$2D                ; $00:E19A: A9 2D       ;
                STA $0903,y             ; $00:E19C: 99 03 09    ;
                STA $0907,y             ; $00:E19F: 99 07 09    ;
                INY                     ; $00:E1A2: C8          ;
                INY                     ; $00:E1A3: C8          ;
                INY                     ; $00:E1A4: C8          ;
                INY                     ; $00:E1A5: C8          ;
                INY                     ; $00:E1A6: C8          ;
                INY                     ; $00:E1A7: C8          ;
                INY                     ; $00:E1A8: C8          ;
                INY                     ; $00:E1A9: C8          ;
                LDA $00                 ; $00:E1AA: A5 00       ;
                SEC                     ; $00:E1AC: 38          ;
                SBC #$0A                ; $00:E1AD: E9 0A       ;
                STA $00                 ; $00:E1AF: 85 00       ;
                DEX                     ; $00:E1B1: CA          ;
                BNE CODE_00E16E         ; $00:E1B2: D0 BA       ;
                RTS                     ; $00:E1B4: 60          ;

DATA_00E1B5:    db $98,$C0,$E4,$2D,$90,$C0,$A1,$2D              ;
                db $99,$BF,$E4,$2D,$90,$C0,$A1,$2D              ;
                db $9B,$BF,$E2,$2D,$90,$C0,$E0,$2D              ;
                db $90,$C0,$E0,$2D,$90,$C0,$E0,$2D              ;

CODE_00E1D5:    LDA $0BA6               ; $00:E1D5: AD A6 0B    ;
                BEQ CODE_00E1E1         ; $00:E1D8: F0 07       ;
                BMI CODE_00E1F8         ; $00:E1DA: 30 1C       ;
                DEC $0BA6               ; $00:E1DC: CE A6 0B    ;
                BRA CODE_00E1F8         ; $00:E1DF: 80 17       ;

CODE_00E1E1:    LDA $0BA7               ; $00:E1E1: AD A7 0B    ;
                BNE CODE_00E1F8         ; $00:E1E4: D0 12       ;
                INC $0BA7               ; $00:E1E6: EE A7 0B    ;
                LDA #$B8                ; $00:E1E9: A9 B8       ;
                STA $03CE               ; $00:E1EB: 8D CE 03    ;
                LDA $0754               ; $00:E1EE: AD 54 07    ;
                BNE CODE_00E1F8         ; $00:E1F1: D0 05       ;
                LDA #$C8                ; $00:E1F3: A9 C8       ;
                STA $03CE               ; $00:E1F5: 8D CE 03    ;
CODE_00E1F8:    PLY                     ; $00:E1F8: 7A          ;
                PLX                     ; $00:E1F9: FA          ;
                PLB                     ; $00:E1FA: AB          ;
                RTL                     ; $00:E1FB: 6B          ;

CODE_00E1FC:    PHX                     ; $00:E1FC: DA          ;
                STA $02                 ; $00:E1FD: 85 02       ;
                ASL A                   ; $00:E1FF: 0A          ;
                CLC                     ; $00:E200: 18          ;
                ADC $02                 ; $00:E201: 65 02       ;
                TAX                     ; $00:E203: AA          ;
                LDA $00                 ; $00:E204: A5 00       ;
                STA $0900,y             ; $00:E206: 99 00 09    ;
                STA $0908,y             ; $00:E209: 99 08 09    ;
                CLC                     ; $00:E20C: 18          ;
                ADC #$08                ; $00:E20D: 69 08       ;
                STA $0904,y             ; $00:E20F: 99 04 09    ;
                LDA $01                 ; $00:E212: A5 01       ;
                STA $0901,y             ; $00:E214: 99 01 09    ;
                STA $0905,y             ; $00:E217: 99 05 09    ;
                CLC                     ; $00:E21A: 18          ;
                ADC #$08                ; $00:E21B: 69 08       ;
                STA $0909,y             ; $00:E21D: 99 09 09    ;
                LDA DATA_00E24B,x       ; $00:E220: BD 4B E2    ;
                STA $0902,y             ; $00:E223: 99 02 09    ;
                LDA DATA_00E24B+1,x     ; $00:E226: BD 4C E2    ;
                STA $0906,y             ; $00:E229: 99 06 09    ;
                LDA DATA_00E24B+2,x     ; $00:E22C: BD 4D E2    ;
                STA $090A,y             ; $00:E22F: 99 0A 09    ;
                LDA DATA_00E263,x       ; $00:E232: BD 63 E2    ;
                STA $0903,y             ; $00:E235: 99 03 09    ;
                LDA DATA_00E263+1,x     ; $00:E238: BD 64 E2    ;
                STA $0907,y             ; $00:E23B: 99 07 09    ;
                LDA DATA_00E263+2,x     ; $00:E23E: BD 65 E2    ;
                STA $090B,y             ; $00:E241: 99 0B 09    ;
                LDA #$02                ; $00:E244: A9 02       ;
                STA $0D08,y             ; $00:E246: 99 08 0D    ;
                PLX                     ; $00:E249: FA          ;
                RTS                     ; $00:E24A: 60          ;

DATA_00E24B:    db $B6,$B6,$C9,$B7,$B7,$CB,$B8,$B9              ;
                db $EC,$B9,$B8,$EC,$E3,$E2,$E4,$F3              ;
                db $F2,$E6,$E2,$E3,$E4,$F2,$F3,$E6              ;

DATA_00E263:    db $2D,$6D,$2D,$2D,$6D,$2D,$2D,$2D              ;
                db $2D,$6D,$6D,$6D,$6D,$6D,$6D,$6D              ;
                db $6D,$6D,$2D,$2D,$2D,$2D,$2D,$2D              ;

CODE_00E27B:    DEC $0F7D               ; $00:E27B: CE 7D 0F    ;
                LDA $0F7D               ; $00:E27E: AD 7D 0F    ;
                BPL CODE_00E28B         ; $00:E281: 10 08       ;
                INC $0F7F               ; $00:E283: EE 7F 0F    ;
                LDA #$07                ; $00:E286: A9 07       ;
                STA $0F7D               ; $00:E288: 8D 7D 0F    ;
CODE_00E28B:    LDA $0F7F               ; $00:E28B: AD 7F 0F    ;
                CMP #$03                ; $00:E28E: C9 03       ;
                BCC CODE_00E297         ; $00:E290: 90 05       ;
                LDA #$03                ; $00:E292: A9 03       ;
                STA $0F7F               ; $00:E294: 8D 7F 0F    ;
CODE_00E297:    PHX                     ; $00:E297: DA          ;
                ASL A                   ; $00:E298: 0A          ;
                TAX                     ; $00:E299: AA          ;
                LDA PNTR_00E2A7,x       ; $00:E29A: BD A7 E2    ;
                STA $00                 ; $00:E29D: 85 00       ;
                LDA PNTR_00E2A7+1,x     ; $00:E29F: BD A8 E2    ;
                STA $01                 ; $00:E2A2: 85 01       ;
                JMP ($0000)             ; $00:E2A4: 6C 00 00    ;

PNTR_00E2A7:    dw CODE_00E2AF                                  ;
                dw CODE_00E318                                  ;
                dw CODE_00E35E                                  ;
                dw CODE_00E377                                  ;

CODE_00E2AF:    LDA #$94                ; $00:E2AF: A9 94       ;
                STA $0958               ; $00:E2B1: 8D 58 09    ;
                LDA #$BB                ; $00:E2B4: A9 BB       ;
                STA $0959               ; $00:E2B6: 8D 59 09    ;
                LDA #$C0                ; $00:E2B9: A9 C0       ;
                STA $095A               ; $00:E2BB: 8D 5A 09    ;
                LDA #$2D                ; $00:E2BE: A9 2D       ;
                STA $095B               ; $00:E2C0: 8D 5B 09    ;
                LDA #$02                ; $00:E2C3: A9 02       ;
                STA $0D58               ; $00:E2C5: 8D 58 0D    ;
                LDA #$88                ; $00:E2C8: A9 88       ;
                STA $0960               ; $00:E2CA: 8D 60 09    ;
                STA $0970               ; $00:E2CD: 8D 70 09    ;
                LDA #$90                ; $00:E2D0: A9 90       ;
                STA $0964               ; $00:E2D2: 8D 64 09    ;
                STA $0974               ; $00:E2D5: 8D 74 09    ;
                LDA #$C0                ; $00:E2D8: A9 C0       ;
                STA $0971               ; $00:E2DA: 8D 71 09    ;
                STA $0975               ; $00:E2DD: 8D 75 09    ;
                LDA #$9C                ; $00:E2E0: A9 9C       ;
                STA $0972               ; $00:E2E2: 8D 72 09    ;
                INC A                   ; $00:E2E5: 1A          ;
                STA $0976               ; $00:E2E6: 8D 76 09    ;
                LDA #$B8                ; $00:E2E9: A9 B8       ;
                STA $0961               ; $00:E2EB: 8D 61 09    ;
                STA $0965               ; $00:E2EE: 8D 65 09    ;
                LDA #$8C                ; $00:E2F1: A9 8C       ;
                STA $0962               ; $00:E2F3: 8D 62 09    ;
                INC A                   ; $00:E2F6: 1A          ;
                STA $0966               ; $00:E2F7: 8D 66 09    ;
                LDA #$2D                ; $00:E2FA: A9 2D       ;
                STA $0973               ; $00:E2FC: 8D 73 09    ;
                STA $0977               ; $00:E2FF: 8D 77 09    ;
                STA $0963               ; $00:E302: 8D 63 09    ;
                STA $0967               ; $00:E305: 8D 67 09    ;
                LDA #$02                ; $00:E308: A9 02       ;
                STA $0D70               ; $00:E30A: 8D 70 0D    ;
                STA $0D74               ; $00:E30D: 8D 74 0D    ;
                STA $0D60               ; $00:E310: 8D 60 0D    ;
                STA $0D64               ; $00:E313: 8D 64 0D    ;
                PLX                     ; $00:E316: FA          ;
                RTS                     ; $00:E317: 60          ;

CODE_00E318:    LDA #$9A                ; $00:E318: A9 9A       ;
                STA $0958               ; $00:E31A: 8D 58 09    ;
                LDA #$BE                ; $00:E31D: A9 BE       ;
                STA $0959               ; $00:E31F: 8D 59 09    ;
                LDA #$C2                ; $00:E322: A9 C2       ;
                STA $095A               ; $00:E324: 8D 5A 09    ;
                LDA #$2D                ; $00:E327: A9 2D       ;
                STA $095B               ; $00:E329: 8D 5B 09    ;
                LDA #$02                ; $00:E32C: A9 02       ;
                STA $0D58               ; $00:E32E: 8D 58 0D    ;
                LDA #$88                ; $00:E331: A9 88       ;
                STA $0970               ; $00:E333: 8D 70 09    ;
                LDA #$90                ; $00:E336: A9 90       ;
                STA $0974               ; $00:E338: 8D 74 09    ;
                LDA #$C0                ; $00:E33B: A9 C0       ;
                STA $0971               ; $00:E33D: 8D 71 09    ;
                STA $0975               ; $00:E340: 8D 75 09    ;
                LDA #$99                ; $00:E343: A9 99       ;
                STA $0972               ; $00:E345: 8D 72 09    ;
                INC A                   ; $00:E348: 1A          ;
                STA $0976               ; $00:E349: 8D 76 09    ;
                LDA #$2D                ; $00:E34C: A9 2D       ;
                STA $0973               ; $00:E34E: 8D 73 09    ;
                STA $0977               ; $00:E351: 8D 77 09    ;
                LDA #$02                ; $00:E354: A9 02       ;
                STA $0D70               ; $00:E356: 8D 70 0D    ;
                STA $0D74               ; $00:E359: 8D 74 0D    ;
                PLX                     ; $00:E35C: FA          ;
                RTS                     ; $00:E35D: 60          ;

CODE_00E35E:    LDA #$9C                ; $00:E35E: A9 9C       ;
                STA $0958               ; $00:E360: 8D 58 09    ;
                LDA #$C1                ; $00:E363: A9 C1       ;
                STA $0959               ; $00:E365: 8D 59 09    ;
                LDA #$C4                ; $00:E368: A9 C4       ;
                STA $095A               ; $00:E36A: 8D 5A 09    ;
                LDA #$2D                ; $00:E36D: A9 2D       ;
                STA $095B               ; $00:E36F: 8D 5B 09    ;
                LDA #$02                ; $00:E372: A9 02       ;
                STA $0D58               ; $00:E374: 8D 58 0D    ;
CODE_00E377:    LDA #$88                ; $00:E377: A9 88       ;
                STA $0970               ; $00:E379: 8D 70 09    ;
                LDA #$90                ; $00:E37C: A9 90       ;
                STA $0974               ; $00:E37E: 8D 74 09    ;
                LDA #$C0                ; $00:E381: A9 C0       ;
                STA $0971               ; $00:E383: 8D 71 09    ;
                STA $0975               ; $00:E386: 8D 75 09    ;
                LDA #$C6                ; $00:E389: A9 C6       ;
                STA $0972               ; $00:E38B: 8D 72 09    ;
                INC A                   ; $00:E38E: 1A          ;
                STA $0976               ; $00:E38F: 8D 76 09    ;
                LDA #$2D                ; $00:E392: A9 2D       ;
                STA $0973               ; $00:E394: 8D 73 09    ;
                STA $0977               ; $00:E397: 8D 77 09    ;
                LDA #$02                ; $00:E39A: A9 02       ;
                STA $0D70               ; $00:E39C: 8D 70 0D    ;
                STA $0D74               ; $00:E39F: 8D 74 0D    ;
                PLX                     ; $00:E3A2: FA          ;
                RTS                     ; $00:E3A3: 60          ;

CODE_00E3A4:    LDA #$0F                ; $00:E3A4: A9 0F       ;
                STA $1600               ; $00:E3A6: 8D 00 16    ;
                LDA $0754               ; $00:E3A9: AD 54 07    ;
                EOR #$01                ; $00:E3AC: 49 01       ;
                ASL A                   ; $00:E3AE: 0A          ;
                ASL A                   ; $00:E3AF: 0A          ;
                ASL A                   ; $00:E3B0: 0A          ;
                ASL A                   ; $00:E3B1: 0A          ;
                CLC                     ; $00:E3B2: 18          ;
                ADC #$E0                ; $00:E3B3: 69 E0       ;
                CLC                     ; $00:E3B5: 18          ;
                ADC #$08                ; $00:E3B6: 69 08       ;
                STA $03CE               ; $00:E3B8: 8D CE 03    ;
                LDY #$9C                ; $00:E3BB: A0 9C       ;
                LDA #$0B                ; $00:E3BD: A9 0B       ;
                STA $01                 ; $00:E3BF: 85 01       ;
                STZ $00                 ; $00:E3C1: 64 00       ;
                LDA #$00                ; $00:E3C3: A9 00       ;
CODE_00E3C5:    STA ($00),y             ; $00:E3C5: 91 00       ;
                INY                     ; $00:E3C7: C8          ;
                CPY #$BF                ; $00:E3C8: C0 BF       ;
                BNE CODE_00E3C5         ; $00:E3CA: D0 F9       ;
                INC $0B9C               ; $00:E3CC: EE 9C 0B    ;
                DEC $0BA6               ; $00:E3CF: CE A6 0B    ;
                LDA $075F               ; $00:E3D2: AD 5F 07    ;\
                ASL A                   ; $00:E3D5: 0A          ; |
                TAX                     ; $00:E3D6: AA          ; |
                LDA PNTR_00E3E4,x       ; $00:E3D7: BD E4 E3    ; | Jump to pointers according to the world number
                STA $00                 ; $00:E3DA: 85 00       ; |
                LDA PNTR_00E3E4+1,x     ; $00:E3DC: BD E5 E3    ; |
                STA $01                 ; $00:E3DF: 85 01       ; |
                JMP ($0000)             ; $00:E3E1: 6C 00 00    ;/

PNTR_00E3E4:    dw CODE_00E3FE                                  ;$00 - World 1
                dw CODE_00E426                                  ;$01 - World 2
                dw CODE_00E44E                                  ;$02 - World 3
                dw CODE_00E47C                                  ;$03 - World 4
                dw CODE_00E4AE                                  ;$04 - World 5
                dw CODE_00E4D4                                  ;$05 - World 6
                dw CODE_00E4EE                                  ;$06 - World 7
                dw CODE_00E3FE                                  ;$07 - World 8
                dw CODE_00E3FE                                  ;$08 - World 9
                dw CODE_00E4AE                                  ;$09 - World A
                dw CODE_00E4D4                                  ;$0A - World B
                dw CODE_00E4EE                                  ;$0B - World C
                dw CODE_00E3FE                                  ;$0C - World D

CODE_00E3FE:    LDA $021A               ; $00:E3FE: AD 1A 02    ;
                SEC                     ; $00:E401: 38          ;
                SBC #$04                ; $00:E402: E9 04       ;
                STA $021A               ; $00:E404: 8D 1A 02    ;
                LDA $03AE               ; $00:E407: AD AE 03    ;
                SEC                     ; $00:E40A: 38          ;
                SBC #$04                ; $00:E40B: E9 04       ;
                STA $03AE               ; $00:E40D: 8D AE 03    ;
                LDA #$08                ; $00:E410: A9 08       ;
                STA $0F7D               ; $00:E412: 8D 7D 0F    ;
                LDA #$01                ; $00:E415: A9 01       ;
                STA $1601               ; $00:E417: 8D 01 16    ;
                LDA #$FE                ; $00:E41A: A9 FE       ;
                STA $00A1               ; $00:E41C: 8D A1 00    ;
                STZ $043D               ; $00:E41F: 9C 3D 04    ;
                STZ $041D               ; $00:E422: 9C 1D 04    ;
                RTS                     ; $00:E425: 60          ;

CODE_00E426:    LDA $021A               ; $00:E426: AD 1A 02    ;
                SEC                     ; $00:E429: 38          ;
                SBC #$0C                ; $00:E42A: E9 0C       ;
                STA $021A               ; $00:E42C: 8D 1A 02    ;
                LDA $03AE               ; $00:E42F: AD AE 03    ;
                SEC                     ; $00:E432: 38          ;
                SBC #$0C                ; $00:E433: E9 0C       ;
                STA $03AE               ; $00:E435: 8D AE 03    ;
                LDA #$08                ; $00:E438: A9 08       ;
                STA $0F7D               ; $00:E43A: 8D 7D 0F    ;
                LDA #$01                ; $00:E43D: A9 01       ;
                STA $1601               ; $00:E43F: 8D 01 16    ;
                LDA #$FE                ; $00:E442: A9 FE       ;
                STA $00A1               ; $00:E444: 8D A1 00    ;
                STZ $043D               ; $00:E447: 9C 3D 04    ;
                STZ $041D               ; $00:E44A: 9C 1D 04    ;
                RTS                     ; $00:E44D: 60          ;

CODE_00E44E:    LDA $021A               ; $00:E44E: AD 1A 02    ;
                SEC                     ; $00:E451: 38          ;
                SBC #$04                ; $00:E452: E9 04       ;
                STA $021A               ; $00:E454: 8D 1A 02    ;
                LDA $03AE               ; $00:E457: AD AE 03    ;
                SEC                     ; $00:E45A: 38          ;
                SBC #$04                ; $00:E45B: E9 04       ;
                STA $03AE               ; $00:E45D: 8D AE 03    ;
                LDA #$08                ; $00:E460: A9 08       ;
                STA $0F7D               ; $00:E462: 8D 7D 0F    ;
                STZ $021D               ; $00:E465: 9C 1D 02    ;
                LDA #$01                ; $00:E468: A9 01       ;
                STA $1601               ; $00:E46A: 8D 01 16    ;
                LDA #$FE                ; $00:E46D: A9 FE       ;
                STA $00A1               ; $00:E46F: 8D A1 00    ;
                STZ $043D               ; $00:E472: 9C 3D 04    ;
                STZ $041D               ; $00:E475: 9C 1D 04    ;
                STZ $0BA0               ; $00:E478: 9C A0 0B    ;
                RTS                     ; $00:E47B: 60          ;

CODE_00E47C:    LDA $021A               ; $00:E47C: AD 1A 02    ;
                SEC                     ; $00:E47F: 38          ;
                SBC #$04                ; $00:E480: E9 04       ;
                STA $021A               ; $00:E482: 8D 1A 02    ;
                LDA $03AE               ; $00:E485: AD AE 03    ;
                SEC                     ; $00:E488: 38          ;
                SBC #$04                ; $00:E489: E9 04       ;
                STA $03AE               ; $00:E48B: 8D AE 03    ;
                STA $0BB0               ; $00:E48E: 8D B0 0B    ;
                STA $0BB1               ; $00:E491: 8D B1 0B    ;
                STA $0BB2               ; $00:E494: 8D B2 0B    ;
                STA $0BB3               ; $00:E497: 8D B3 0B    ;
                LDA #$01                ; $00:E49A: A9 01       ;
                STA $1601               ; $00:E49C: 8D 01 16    ;
                LDA #$FE                ; $00:E49F: A9 FE       ;
                STA $00A1               ; $00:E4A1: 8D A1 00    ;
                STZ $043D               ; $00:E4A4: 9C 3D 04    ;
                STZ $041D               ; $00:E4A7: 9C 1D 04    ;
                STZ $0E67               ; $00:E4AA: 9C 67 0E    ;
                RTS                     ; $00:E4AD: 60          ;

CODE_00E4AE:    LDA $021A               ; $00:E4AE: AD 1A 02    ;
                SEC                     ; $00:E4B1: 38          ;
                SBC #$0C                ; $00:E4B2: E9 0C       ;
                STA $021A               ; $00:E4B4: 8D 1A 02    ;
                LDA $0238               ; $00:E4B7: AD 38 02    ;
                SEC                     ; $00:E4BA: 38          ;
                SBC #$0C                ; $00:E4BB: E9 0C       ;
                STA $0238               ; $00:E4BD: 8D 38 02    ;
                LDA #$01                ; $00:E4C0: A9 01       ;
                STA $1601               ; $00:E4C2: 8D 01 16    ;
                LDA #$FE                ; $00:E4C5: A9 FE       ;
                STA $0B9E               ; $00:E4C7: 8D 9E 0B    ;
                STA $00A1               ; $00:E4CA: 8D A1 00    ;
                STZ $043D               ; $00:E4CD: 9C 3D 04    ;
                STZ $041D               ; $00:E4D0: 9C 1D 04    ;
                RTS                     ; $00:E4D3: 60          ;

CODE_00E4D4:    LDA $021A               ; $00:E4D4: AD 1A 02    ;
                SEC                     ; $00:E4D7: 38          ;
                SBC #$0C                ; $00:E4D8: E9 0C       ;
                STA $021A               ; $00:E4DA: 8D 1A 02    ;
                LDA #$01                ; $00:E4DD: A9 01       ;
                STA $1601               ; $00:E4DF: 8D 01 16    ;
                LDA #$FD                ; $00:E4E2: A9 FD       ;
                STA $00A1               ; $00:E4E4: 8D A1 00    ;
                STZ $043D               ; $00:E4E7: 9C 3D 04    ;
                STZ $041D               ; $00:E4EA: 9C 1D 04    ;
                RTS                     ; $00:E4ED: 60          ;

CODE_00E4EE:    STZ $1600               ; $00:E4EE: 9C 00 16    ;
                LDA #$FE                ; $00:E4F1: A9 FE       ;
                STA $00A1               ; $00:E4F3: 8D A1 00    ;
                STZ $043D               ; $00:E4F6: 9C 3D 04    ;
                STZ $041D               ; $00:E4F9: 9C 1D 04    ;
                RTS                     ; $00:E4FC: 60          ;

CODE_00E4FD:    REP #$20                ; $00:E4FD: C2 20       ;
                SEC                     ; $00:E4FF: 38          ;
                SBC #$0008              ; $00:E500: E9 08 00    ;
                SEC                     ; $00:E503: 38          ;
                SBC $0042               ; $00:E504: ED 42 00    ;
                STA $01                 ; $00:E507: 85 01       ;
                SEP #$20                ; $00:E509: E2 20       ;
                STA $0900,y             ; $00:E50B: 99 00 09    ;
                STA $0908,y             ; $00:E50E: 99 08 09    ;
                LDA #$2D                ; $00:E511: A9 2D       ;
                STA $0903,y             ; $00:E513: 99 03 09    ;
                STA $090B,y             ; $00:E516: 99 0B 09    ;
                XBA                     ; $00:E519: EB          ;
                CMP #$00                ; $00:E51A: C9 00       ;
                BEQ CODE_00E520         ; $00:E51C: F0 02       ;
                LDA #$01                ; $00:E51E: A9 01       ;
CODE_00E520:    ORA #$02                ; $00:E520: 09 02       ;
                STA $0D00,y             ; $00:E522: 99 00 0D    ;
                STA $0D08,y             ; $00:E525: 99 08 0D    ;
                RTS                     ; $00:E528: 60          ;

CODE_00E529:    LDA $03CE               ; $00:E529: AD CE 03    ;
                CMP #$D0                ; $00:E52C: C9 D0       ;
                BCC CODE_00E542         ; $00:E52E: 90 12       ;
                AND #$08                ; $00:E530: 29 08       ;
                BEQ CODE_00E542         ; $00:E532: F0 0E       ;
                LDA $03CE               ; $00:E534: AD CE 03    ;
                SEC                     ; $00:E537: 38          ;
                SBC #$08                ; $00:E538: E9 08       ;
                STA $03CE               ; $00:E53A: 8D CE 03    ;
                LDA #$30                ; $00:E53D: A9 30       ;
                STA $0BA6               ; $00:E53F: 8D A6 0B    ;
CODE_00E542:    RTS                     ; $00:E542: 60          ;

CODE_00E543:    LDA $0EEE               ; $00:E543: AD EE 0E    ;
                BEQ CODE_00E54C         ; $00:E546: F0 04       ;
                DEC $0EEE               ; $00:E548: CE EE 0E    ;
                RTS                     ; $00:E54B: 60          ;

CODE_00E54C:    LDA $0BA3               ; $00:E54C: AD A3 0B    ;
                CMP #$C0                ; $00:E54F: C9 C0       ;
                BCS CODE_00E561         ; $00:E551: B0 0E       ;
                INC $0BA3               ; $00:E553: EE A3 0B    ;
                LDA $0BA3               ; $00:E556: AD A3 0B    ;
                CMP #$C0                ; $00:E559: C9 C0       ;
                BNE CODE_00E560         ; $00:E55B: D0 03       ;
                JSR CODE_00E574         ; $00:E55D: 20 74 E5    ;
CODE_00E560:    RTS                     ; $00:E560: 60          ;

CODE_00E561:    JSL CODE_0E8171         ; $00:E561: 22 71 81 0E ;
                RTS                     ; $00:E565: 60          ;

CODE_00E566:    LDA $0BA4               ; $00:E566: AD A4 0B    ;
                BNE CODE_00E573         ; $00:E569: D0 08       ;
                LDA #$01                ; $00:E56B: A9 01       ;
                STA $1601               ; $00:E56D: 8D 01 16    ;
                STA $0BA4               ; $00:E570: 8D A4 0B    ;
CODE_00E573:    RTS                     ; $00:E573: 60          ;

CODE_00E574:    REP #$20                ; $00:E574: C2 20       ;
                PHD                     ; $00:E576: 0B          ;
                LDA #$1700              ; $00:E577: A9 00 17    ;
                TCD                     ; $00:E57A: 5B          ;
                LDA #$F15A              ; $00:E57B: A9 5A F1    ;
                STA $02                 ; $00:E57E: 85 02       ;
                LDA #$1300              ; $00:E580: A9 00 13    ;
                STA $04                 ; $00:E583: 85 04       ;
                LDA #$0019              ; $00:E585: A9 19 00    ;
                STA $06                 ; $00:E588: 85 06       ;
                LDA #$001E              ; $00:E58A: A9 1E 00    ;
                STA $08                 ; $00:E58D: 85 08       ;
                LDA #$001C              ; $00:E58F: A9 1C 00    ;
                STA $0A                 ; $00:E592: 85 0A       ;
                LDA #$0011              ; $00:E594: A9 11 00    ;
                STA $0C                 ; $00:E597: 85 0C       ;
                LDA #$0028              ; $00:E599: A9 28 00    ;
                STA $0E                 ; $00:E59C: 85 0E       ;
                LDA #$001C              ; $00:E59E: A9 1C 00    ;
                STA $10                 ; $00:E5A1: 85 10       ;
                LDA #$001D              ; $00:E5A3: A9 1D 00    ;
                STA $12                 ; $00:E5A6: 85 12       ;
                LDA #$000A              ; $00:E5A8: A9 0A 00    ;
                STA $14                 ; $00:E5AB: 85 14       ;
                LDA #$001B              ; $00:E5AD: A9 1B 00    ;
                STA $16                 ; $00:E5B0: 85 16       ;
                LDA #$001D              ; $00:E5B2: A9 1D 00    ;
                STA $18                 ; $00:E5B5: 85 18       ;
                SEP #$20                ; $00:E5B7: E2 20       ;
                LDA #$FF                ; $00:E5B9: A9 FF       ;
                STA $1A                 ; $00:E5BB: 85 1A       ;
                PLD                     ; $00:E5BD: 2B          ;
                LDA #$15                ; $00:E5BE: A9 15       ;
                STA $1603               ; $00:E5C0: 8D 03 16    ;
                RTS                     ; $00:E5C3: 60          ;

;;
;; Duplicate code of $04D800 ends here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;
                db $FF,$FF,$FF,$FF                              ;

INTERNALHEADER: 
                db "SUPER MARIO ALL_STARS"                      ;ROM NAME
                db $20                                          ;MAP MODE. Mode 20 = 2.68 MHz (= Normal Speed)
                db $02                                          ;CARTRIDGE TYPE: ROM + RAM + SRAM
                db $0B                                          ;ROM SIZE: 9-16 MBIT
                db $03                                          ;RAM SIZE: 64k RAM
                db $01                                          ;DEST. CODE: North America. This ROM comes from America?
                db $01                                          ;FIXED VALUE. It was supposed to be 33?
                db $00                                          ;MASK ROM VERSION. This ROM is not revised.
                dw $55A3                                        ;COMPLEMENT CHECK
                dw $AA5C                                        ;CHECKSUM

;Vectors
                dw $FFFF                                        ;Unused vector
                dw $FFFF                                        ;Unused vector
                dw CODE_0082FE                                  ;COP
                dw $FFFF                                        ;BRK
                dw CODE_0082FE                                  ;ABORT
                dw NMI                                          ;NMI
                dw Reset                                        ;RESET
                dw IRQ                                          ;IRQ

                dw $FFFF                                        ;Unused
                dw $FFFF                                        ;Unused vector
                dw CODE_0082FE                                  ;COP
                dw CODE_0082FE                                  ;BRK
                dw CODE_0082FE                                  ;ABORT
                dw CODE_0082FE                                  ;NMI
                dw Reset                                        ;RESET
                dw IRQ                                          ;IRQ
