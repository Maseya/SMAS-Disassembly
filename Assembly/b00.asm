;The Presents screen, the Hall screen and the game selection
;as well as other miscellaneous stuff like setting up the SPC-700

Reset:
CODE_008000:        SEI                       ; Set interput flag
CODE_008001:        STZ $4200                 ; Disable NMI, IRQ, and joypad read
CODE_008004:        STZ $420C                 ; HDMA Disabled
CODE_008007:        STZ $420B                 ; DMA Disabled
CODE_00800A:        STZ $2140                 ;\
CODE_00800D:        STZ $2141                 ; | SPC ports disabled.
CODE_008010:        STZ $2142                 ; |
CODE_008013:        STZ $2143                 ;/
CODE_008016:        LDA #$80                  ;\ Forced blank
CODE_008018:        STA $2100                 ;/
CODE_00801B:        CLC                       ;\ Native mode
CODE_00801C:        XCE                       ;/
CODE_00801D:        REP #$38                  ;16-bit AXY, not decimal mode
CODE_00801F:        LDA #$0000                ;\ Direct page register is now $0000
CODE_008022:        TCD                       ;/
CODE_008023:        LDA #$01FF                ;\ The stack pointer is now $00:01FF
CODE_008026:        TCS                       ;/
CODE_008027:        SEP #$30                  ; 8-bit AXY
CODE_008029:        LDA #$00                  ;\
CODE_00802B:        PHA                       ; | Set program bank: Bank $00
CODE_00802C:        PLB                       ;/
CODE_00802D:        LDA $213F                 ;\ This ROM is NTSC
CODE_008030:        BIT #$10                  ; | If the SNES is a NTSC SNES 
CODE_008032:        BEQ CODE_00803B           ;/ Continue
CODE_008034:        JMP CODE_0093C7           ; Otherwise, show error message (incompatible SNES)

CODE_008037:        JML CODE_009641           ;Show error message (Pirated game)

CODE_00803B:        JSR CODE_0083B6           ;
CODE_00803E:        LDA #$00                  ;
CODE_008040:        STA $701FF0               ;
CODE_008044:        STA $701FF2               ;
CODE_008048:        REP #$20                  ;16-bit A
CODE_00804A:        LDA #$8000                ;
CODE_00804D:        STA $0150                 ;
CODE_008050:        STA $0152                 ;
CODE_008053:        STZ $0154                 ;
CODE_008056:        SEP #$20                  ;8-bit A
CODE_008058:        LDA #$81                  ;\
CODE_00805A:        STA $4200                 ;/Enable NMI and joypad.
CODE_00805D:        STA $001C                 ;Store timer of Mario logo (#$81 too)
CODE_008060:        JSR CODE_008C1B           ;
CODE_008063:        NOP                       ;\No operation. Likely overwriting a
CODE_008064:        NOP                       ;/deprecated program operation
CODE_008065:        LDA #$AA                  ;\ Copier check
CODE_008067:        STA $702000               ; |
CODE_00806B:        CMP $700000               ; |If $700000 is not $AA
CODE_00806F:        BNE CODE_008037           ;/Then the game is pirated, show error msg.
CODE_008071:        LDA #$55                  ;\ Another copier check
CODE_008073:        STA $702000               ; |
CODE_008077:        CMP $700000               ; |If $700000 is not $55
CODE_00807B:        BNE CODE_008037           ;/Then the game is pirated, show error msg.
CODE_00807D:        LDA $0122                 ;\ Wait for NMI
CODE_008080:        BEQ CODE_00807D           ;/
CODE_008082:        JSR CODE_0086CC           ;
CODE_008085:        CLI                       ;Enable IRQ
CODE_008086:        INC $FD                   ;Frame counter increment
CODE_008088:        LDX $E0                   ;\ Game mode as index
CODE_00808A:        LDA DATA_00883D,x               ; |If flag to clear OAM is set, indexed by
CODE_00808D:        BEQ CODE_008092           ; |game mode
CODE_00808F:        JSR CODE_008719           ;/ <Then clear the OAM.
CODE_008092:        JSL GameIndex             ; Update the game
CODE_008096:        LDX $E0                   ;\
CODE_008098:        LDA DATA_00883D,x               ; |If flag to update OAM sizes is set
CODE_00809B:        BEQ CODE_0080A0           ; |
CODE_00809D:        JSR CODE_008773           ;/ Update OAM sizes
CODE_0080A0:        STZ $0122                 ;
CODE_0080A3:        JMP CODE_00807D           ; Game loop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pointers below are specified by $E0's values
;;

DATA_0080A6:        db CODE_009BC0                          ; Nintendo Presents Screen + Title screen
                    db CODE_00A2D8                          ; Set up game select screen
                    db CODE_00A39B                          ; Game select screen
                    db CODE_00B1CE                          ; Open erase file box
                    db CODE_00B440                          ; Erase file box
                    db CODE_00B2A5                          ; Close erase file box
                    db CODE_00A2C5                          ; Fade out of game select screen
                    db CODE_0089F9                          ; Setup game
                    db CODE_0081A0                          ; Setup game
                    db CODE_00822B                          ; Bring up game-play demo
                    db $00                                  ; (null)

DATA_0080B1:        db CODE_009BC0>>8                       ;high bytes
                    db CODE_00A2D8>>8
                    db CODE_00A39B>>8
                    db CODE_00B1CE>>8
                    db CODE_00B440>>8
                    db CODE_00B2A5>>8
                    db CODE_00A2C5>>8
                    db CODE_0089F9>>8
                    db CODE_0081A0>>8
                    db CODE_00822B>>8
                    db $00

DATA_0080BC:        db CODE_009BC0>>16                      ;bank bytes
                    db CODE_00A2D8>>16
                    db CODE_00A39B>>16
                    db CODE_00B1CE>>16
                    db CODE_00B440>>16
                    db CODE_00B2A5>>16
                    db CODE_00A2C5>>16
                    db CODE_0089F9>>16
                    db CODE_0081A0>>16
                    db CODE_00822B>>16
                    db $00

GameIndex:
CODE_0080C7:        LDX $E0                   ;\
CODE_0080C9:        LDA.l DATA_0080A6,x       ; |
CODE_0080CD:        STA $03                   ; |Store indirect pointers.
CODE_0080CF:        LDA.l DATA_0080B1,x       ; |
CODE_0080D3:        STA $04                   ; |
CODE_0080D5:        LDA.l DATA_0080BC,x       ; |
CODE_0080D9:        STA $05                   ;/
CODE_0080DB:        JML [$0003]               ;Jump to the indirect game pointers.

CODE_0080DE:        JSL ForceBlank           ;Forced blank + HDMA-Disable
CODE_0080E2:        STZ $4200                 ;Disable interrupts
CODE_0080E5:        LDA #$00                  ;\
CODE_0080E7:        PHA                       ; |Set program bank to $00
CODE_0080E8:        PLB                       ;/
CODE_0080E9:        SEI                       ;Set interrupt flag
CODE_0080EA:        STZ $4200                 ;\No interrupts and HDMA
CODE_0080ED:        STZ $420C                 ;/
CODE_0080F0:        REP #$20                  ;\
CODE_0080F2:        LDA #$01FF                ; |Stack pointer: $01FF
CODE_0080F5:        TCS                       ; |
CODE_0080F6:        SEP #$20                  ;/
CODE_0080F8:        STZ $60                   ;\
CODE_0080FA:        STZ $61                   ; |
CODE_0080FC:        STZ $62                   ; |Clear sound effects and music
CODE_0080FE:        STZ $63                   ; |
CODE_008100:        STZ $2140                 ; |
CODE_008103:        STZ $2141                 ; |
CODE_008106:        STZ $2142                 ; |
CODE_008109:        STZ $2143                 ; |
CODE_00810C:        LDA #$F0                  ; |(Mute SFX panel 2?)
CODE_00810E:        STA $2141                 ;/
CODE_008111:        JSR CODE_0083B6           ;
CODE_008114:        STZ $E0                   ;
CODE_008116:        LDA #$03                  ;
CODE_008118:        STA $E1                   ;
CODE_00811A:        LDA #$01                  ;
CODE_00811C:        STA $0100                 ;
CODE_00811F:        LDA #$01                  ;
CODE_008121:        STA $0124                 ;
CODE_008124:        LDA #$00                  ;
CODE_008126:        STA $701FF2               ;
CODE_00812A:        STA $7FFF00               ;
CODE_00812E:        LDA #$81                  ;
CODE_008130:        STA $4200                 ;
CODE_008133:        STA $001C                 ;
CODE_008136:        JMP CODE_00807D           ;

CODE_008139:        JSL ForceBlank           ;Forced blank + HDMA-Disable
CODE_00813D:        STZ $4200                 ;Disable interrupts
CODE_008140:        LDA #$00                  ;\
CODE_008142:        PHA                       ; |Set program bank to $00
CODE_008143:        PLB                       ;/
CODE_008144:        SEI                       ;Set interrupt flag
CODE_008145:        STZ $4200                 ;\Disable interrupts and HDMA
CODE_008148:        STZ $420C                 ;/
CODE_00814B:        REP #$20                  ;\
CODE_00814D:        LDA #$01FF                ; |Stack pointer: $01FF
CODE_008150:        TCS                       ; |
CODE_008151:        SEP #$20                  ;/
CODE_008153:        STZ $60                   ;\
CODE_008155:        STZ $61                   ; |
CODE_008157:        STZ $62                   ; |
CODE_008159:        STZ $63                   ; |
CODE_00815B:        STZ $2140                 ; |Clear sound effects and music
CODE_00815E:        STZ $2141                 ; |
CODE_008161:        STZ $2142                 ; |
CODE_008164:        STZ $2143                 ; |
CODE_008167:        LDA #$F0                  ; |Mute SFX panel 2?
CODE_008169:        STA $2141                 ;/
CODE_00816C:        JSR CODE_0083B6           ;
CODE_00816F:        STZ $E0                   ;
CODE_008171:        LDA #$03                  ;
CODE_008173:        STA $E1                   ;
CODE_008175:        LDA #$01                  ;
CODE_008177:        STA $0100                 ;
CODE_00817A:        LDA #$01                  ;
CODE_00817C:        STA $0124                 ;
CODE_00817F:        LDA #$00                  ;
CODE_008181:        STA $701FF2               ;
CODE_008185:        STA $7FFF00               ;
CODE_008189:        LDA #$81                  ;
CODE_00818B:        STA $4200                 ;
CODE_00818E:        STA $001C                 ;
CODE_008191:        JMP CODE_00807D           ;

DATA_008194:        db CODE_038000                          ;Indirect game pointers.
                    db CODE_0D8000                          ;SMB1, SMBTLL, SMB2, SMB3
                    db CODE_118000
                    db CODE_208000

DATA_008198:        db CODE_038000>>8
                    db CODE_0D8000>>8
                    db CODE_118000>>8
                    db CODE_208000>>8

DATA_00819C:        db CODE_038000>>16
                    db CODE_0D8000>>16
                    db CODE_118000>>16
                    db CODE_208000>>16                    

CODE_0081A0:        LDX #$0F                  ;
CODE_0081A2:        LDA $70,x                 ;
CODE_0081A4:        STA $700490,x             ;
CODE_0081A8:        DEX                       ;
CODE_0081A9:        BPL CODE_0081A2           ;
CODE_0081AB:        LDA $D1                   ;
CODE_0081AD:        STA $70000E               ;
CODE_0081B1:        LDA $D0                   ;
CODE_0081B3:        STA $70000F               ;
CODE_0081B7:        REP #$20                  ;
CODE_0081B9:        LDA #$0000                ;
CODE_0081BC:        STA $00                   ;
CODE_0081BE:        LDA #$0000                ;
CODE_0081C1:        LDY #$7F                  ;
CODE_0081C3:        JSL CODE_00868E           ;
CODE_0081C7:        SEP #$20                  ;
CODE_0081C9:        LDA $D0                   ;
CODE_0081CB:        TAX                       ;
CODE_0081CC:        INC A                     ;
CODE_0081CD:        ASL A                     ;
CODE_0081CE:        STA $7FFF00               ;
CODE_0081D2:        LDA.l DATA_008194,x             ;
CODE_0081D6:        STA $03                   ;
CODE_0081D8:        LDA.l DATA_008198,x             ;
CODE_0081DC:        STA $04                   ;
CODE_0081DE:        LDA.l DATA_00819C,x             ;
CODE_0081E2:        STA $05                   ;
CODE_0081E4:        REP #$20                  ;
CODE_0081E6:        LDA #$00F0                ;
CODE_0081E9:        STA $00                   ;
CODE_0081EB:        LDA #$0010                ;
CODE_0081EE:        LDY #$00                  ;
CODE_0081F0:        JSL CODE_00868E           ;
CODE_0081F4:        LDA #$1E00                ;
CODE_0081F7:        STA $00                   ;
CODE_0081F9:        LDA #$0200                ;
CODE_0081FC:        LDY #$00                  ;
CODE_0081FE:        JSL CODE_00868E           ;
CODE_008202:        SEP #$20                  ;
CODE_008204:        PLB                       ;
CODE_008205:        PLB                       ;
CODE_008206:        PLB                       ;
CODE_008207:        JSL CODE_00A849           ;Load savegame into RAM $7FFB00 area.
CODE_00820B:        LDA #$00                  ;
CODE_00820D:        STA $701FF8               ;
CODE_008211:        STA $701FF9               ;
CODE_008215:        REP #$30                  ;
CODE_008217:        LDA $700004               ;
CODE_00821B:        TAX                       ;
CODE_00821C:        SEP #$20                  ;
CODE_00821E:        LDA $700010,x             ;
CODE_008222:        STA $7FFF02               ;
CODE_008226:        SEP #$10                  ;
CODE_008228:        JML [$0003]               ;

CODE_00822B:        LDA $701FF0               ;\ Get game to show
CODE_00822F:        PHA                       ;/
CODE_008230:        INC A                     ;\
CODE_008231:        AND #$03                  ; | Do  different game next time
CODE_008233:        STA $701FF0               ;/
CODE_008237:        STZ $D1                   ;
CODE_008239:        LDA #$01                  ;\ We are doing the game-play exmaple video
CODE_00823B:        STA $701FF2               ;/
CODE_00823F:        LDX #$0F                  ;\
CODE_008241:        LDA $70,x                 ; |
CODE_008243:        STA $700490,x             ; | ?? Seems to write $00 to SRAM
CODE_008247:        DEX                       ; |
CODE_008248:        BPL CODE_008241           ;/
CODE_00824A:        REP #$20                  ;
CODE_00824C:        LDA #$0000                ;\
CODE_00824F:        STA $00                   ; |
CODE_008251:        LDA #$0000                ; | Clear $7F:0000
CODE_008254:        LDY #$7F                  ; |
CODE_008256:        JSL CODE_00868E           ;/
CODE_00825A:        SEP #$20                  ;
CODE_00825C:        PLA                       ;\ Get game to show
CODE_00825D:        STA $00                   ;/
CODE_00825F:        TAX                       ; A->X
CODE_008260:        INC A                     ; +1
CODE_008261:        ASL A                     ; *2
CODE_008262:        STA $7FFF00               ; Store here
CODE_008266:        LDA.l DATA_008194,x             ;\
CODE_00826A:        STA $03                   ; |
CODE_00826C:        LDA.l DATA_008198,x             ; | Get pointers
CODE_008270:        STA $04                   ; |
CODE_008272:        LDA.l DATA_00819C,x             ; |
CODE_008276:        STA $05                   ;/
CODE_008278:        REP #$20                  ;
CODE_00827A:        LDA #$00F0                ;\
CODE_00827D:        STA $00                   ; |
CODE_00827F:        LDA #$0010                ; | Clear $00:00F0
CODE_008282:        LDY #$00                  ; |
CODE_008284:        JSL CODE_00868E           ;/
CODE_008288:        LDA #$1E00                ;\
CODE_00828B:        STA $00                   ; |
CODE_00828D:        LDA #$0200                ; | Clear $00:0200
CODE_008290:        LDY #$00                  ; |
CODE_008292:        JSL CODE_00868E           ;/
CODE_008296:        LDA #$8000                ;
CODE_008299:        SEP #$20                  ;
CODE_00829B:        PLB                       ;\
CODE_00829C:        PLB                       ; | Pull return address
CODE_00829D:        PLB                       ;/
CODE_00829E:        REP #$30                  ;
CODE_0082A0:        LDA $00                   ;
CODE_0082A2:        AND #$0003                ;
CODE_0082A5:        ASL A                     ;
CODE_0082A6:        TAX                       ;
CODE_0082A7:        LDA DATA_008DD3,x               ;
CODE_0082AA:        TAY                       ;
CODE_0082AB:        LDX #$0000                ;
CODE_0082AE:        TXA                       ;
CODE_0082AF:        SEP #$20                  ;
CODE_0082B1:        LDA DATA_008DE3,y               ;
CODE_0082B4:        STA $7FFB00,x             ;
CODE_0082B8:        INY                       ;
CODE_0082B9:        INX                       ;
CODE_0082BA:        CPX #$0106                ;
CODE_0082BD:        BNE CODE_0082B1           ;
CODE_0082BF:        LDA #$00                  ;
CODE_0082C1:        STA $7FFB00               ;
CODE_0082C5:        STA $7FFB01               ;
CODE_0082C9:        SEP #$30                  ;
CODE_0082CB:        JML [$0003]               ; Jump to pointer

PNTR_0082CE:        dw CODE_0082FF                          ;\
                    dw CODE_00834E                          ; |
                    dw CODE_008353                          ; | NMI Pointers, based on current game.
                    dw CODE_008358                          ; | 
                    dw CODE_00835D                          ;/

NMI:
CODE_0082D8:        SEI                       ;Set interrupt flag
CODE_0082D9:        REP #$30                  ;\
CODE_0082DB:        PHA                       ; |
CODE_0082DC:        PHX                       ; |Preserve 'everything', set direct page reg to $0000
CODE_0082DD:        PHY                       ; |
CODE_0082DE:        PHD                       ; |Set program bank to current bank
CODE_0082DF:        LDA #$0000                ; |
CODE_0082E2:        TCD                       ; |
CODE_0082E3:        PHB                       ; |
CODE_0082E4:        PHK                       ; |
CODE_0082E5:        PLB                       ; |
CODE_0082E6:        LDA $00                   ; |PEI ($00) would've worked too.
CODE_0082E8:        PHA                       ; |Preserve RAM address $00-$01 (scratch ram)
CODE_0082E9:        SEP #$30                  ;/
CODE_0082EB:        LDA $7FFF00               ;\
CODE_0082EF:        TAX                       ; |Jump to NMI routines of the current game
CODE_0082F0:        JSR (PNTR_0082CE,x)       ;/
CODE_0082F3:        REP #$30                  ;\
CODE_0082F5:        PLA                       ; |Recover scratch RAM
CODE_0082F6:        STA $0000                 ; |
CODE_0082F9:        PLB                       ; |
CODE_0082FA:        PLD                       ; |
CODE_0082FB:        PLY                       ; |Recover 'everything'
CODE_0082FC:        PLX                       ; |
CODE_0082FD:        PLA                       ; |
CODE_0082FE:        RTI                       ;/

CODE_0082FF:        LDA #$01                  ;\
CODE_008301:        XBA                       ; |Set direct page to $0100
CODE_008302:        LDA #$00                  ; |
CODE_008304:        TCD                       ;/
CODE_008305:        LDA $4210                 ;vital read to enable NMI
CODE_008308:        LDA $00                   ;\
CODE_00830A:        STA $2100                 ;/Copy of reg $2100 to $0100 (Brightness)
CODE_00830D:        STZ $420C                 ;Disable HDMA
CODE_008310:        LDA $22                   ;\
CODE_008312:        BNE CODE_00831D           ; |
CODE_008314:        INC $22                   ; |
CODE_008316:        PHD                       ; |Flag to do some general purpose DMA?
CODE_008317:        JSR CODE_0088C3           ; |When $0122 is set, do some DMA transfers I guess
CODE_00831A:        SEP #$30                  ; |
CODE_00831C:        PLD                       ;/
CODE_00831D:        JSR CODE_00841A           ;Set up hardware addresses
CODE_008320:        JSR CODE_0087CC           ;Do something SFX panels and music related
CODE_008323:        LDX #$81                  ;\
CODE_008325:        LDA $24                   ; |
CODE_008327:        BEQ CODE_008340           ; |If $7E0124 is set, let the IRQ cover the whole screen
CODE_008329:        AND #$FE                  ; |by disabling NMI or something.
CODE_00832B:        STA $21                   ; |
CODE_00832D:        LDA $4211                 ; |
CODE_008330:        LDA $25                   ; |
CODE_008332:        STA $4209                 ; |
CODE_008335:        STZ $420A                 ; |
CODE_008338:        STZ $4207                 ; |
CODE_00833B:        STZ $4208                 ; |
CODE_00833E:        LDX #$A1                  ; |
CODE_008340:        STX $4200                 ;/
CODE_008343:        LDA $00                   ;\$7E0100 = brightness
CODE_008345:        STA $2100                 ;/
CODE_008348:        LDA $20                   ;\$7E0120 = HDMA enable
CODE_00834A:        STA $420C                 ;/
CODE_00834D:        RTS                       ;

CODE_00834E:        JSL CODE_038003           ;\NMI for SMB1
CODE_008352:        RTS                       ;/

CODE_008353:        JSL CODE_0D8003           ;\NMI for SMB:TLL
CODE_008357:        RTS                       ;/

CODE_008358:        JSL CODE_118003           ;\NMI for SMB2
CODE_00835C:        RTS                       ;/

CODE_00835D:        JSL CODE_208003           ;\NMI for SMB3
CODE_008361:        RTS                       ;/

PNTR_008362:        dw CODE_00838B                          ;\
                    dw CODE_0083A2                          ; |
                    dw CODE_0083A7                          ; | IRQ Pointers, based on current game.
                    dw CODE_0083AC                          ; |
                    dw CODE_0083B1                          ;/

IRQ:
CODE_00836C:        REP #$30                  ;\
CODE_00836E:        PHA                       ; |
CODE_00836F:        PHX                       ; |Preserve "everything", set direct page to $0000
CODE_008370:        PHY                       ; |
CODE_008371:        PHD                       ; |
CODE_008372:        LDA #$0000                ; |
CODE_008375:        TCD                       ; |
CODE_008376:        PHB                       ; |
CODE_008377:        PHK                       ; |
CODE_008378:        PLB                       ; |
CODE_008379:        SEP #$30                  ;/
CODE_00837B:        LDA $7FFF00               ;\
CODE_00837F:        TAX                       ; |Execute IRQ based on current game
CODE_008380:        JSR (PNTR_008362,x)       ;/
CODE_008383:        REP #$30                  ;\
CODE_008385:        PLB                       ; |
CODE_008386:        PLD                       ; |Recover "everything" and return
CODE_008387:        PLY                       ; |
CODE_008388:        PLX                       ; |
CODE_008389:        PLA                       ; |
CODE_00838A:        RTI                       ;/

CODE_00838B:        LDA $4211                 ;\Menu IRQ routine. Wait until IRQ occurs
CODE_00838E:        BPL CODE_0083A1           ;/
CODE_008390:        BIT $4212                 ;\Wait for H-blank
CODE_008393:        BVC CODE_008390           ;/
CODE_008395:        LDA $0214                 ;\ 
CODE_008398:        STA $210D                 ; |Set BG1 H-scroll to normal
CODE_00839B:        LDA $0215                 ; |
CODE_00839E:        STA $210D                 ; |
CODE_0083A1:        RTS                       ;/

CODE_0083A2:        JSL CODE_038006           ;\IRQ for SMB1
CODE_0083A6:        RTS                       ;/

CODE_0083A7:        JSL CODE_0D8006           ;\IRQ for SMB:TLL
CODE_0083AB:        RTS                       ;/

CODE_0083AC:        JSL CODE_118006           ;\IRQ for SMB2
CODE_0083B0:        RTS                       ;/

CODE_0083B1:        JSL CODE_208006           ;\IRQ for SMB3
CODE_0083B5:        RTS                       ;/

CODE_0083B6:        JSR CODE_008A4F           ;Upload SPC engine + audio data of hall and menu screen
CODE_0083B9:        REP #$20                  ;16-bit A. 8-bit XY.
CODE_0083BB:        LDA #$0150                ;\ Size: $0150
CODE_0083BE:        STA $00                   ;/
CODE_0083C0:        LDA #$0000                ;\ Destination: $00:0000
CODE_0083C3:        TAY                       ;/
CODE_0083C4:        JSL CODE_00868E           ; Clear RAM
CODE_0083C8:        LDA #$1E00                ;\ Size: $1E00
CODE_0083CB:        STA $00                   ;/
CODE_0083CD:        LDA #$0200                ;\ Destination: $00:0200
CODE_0083D0:        TAY                       ;/
CODE_0083D1:        JSL CODE_00868E           ; Clear RAM
CODE_0083D5:        LDA #$E000                ;\ Size: $E000
CODE_0083D8:        STA $00                   ;/
CODE_0083DA:        LDA #$2000                ;\ Destination: $7E:2000
CODE_0083DD:        LDY #$7E                  ;/
CODE_0083DF:        JSL CODE_00868E           ; Clear RAM
CODE_0083E3:        LDA #$0000                ;\ Size: $10000
CODE_0083E6:        STA $00                   ;/
CODE_0083E8:        LDA #$0000                ;\ Destination: $7F:0000
CODE_0083EB:        LDY #$7F                  ;/
CODE_0083ED:        JSL CODE_00868E           ; Clear RAM
CODE_0083F1:        LDA #$0000                ;
CODE_0083F4:        STA $7F8000               ;
CODE_0083F8:        DEC A                     ;
CODE_0083F9:        STA $7F8002               ;
CODE_0083FD:        SEP #$20                  ;
CODE_0083FF:        LDX #$00                  ;
CODE_008401:        JSL CODE_00849C           ;
CODE_008405:        PHD                       ;\
CODE_008406:        LDA #$01                  ; |
CODE_008408:        XBA                       ; |Direct page: $0100
CODE_008409:        LDA #$00                  ; |
CODE_00840B:        TCD                       ; |
CODE_00840C:        STZ $2133                 ; |No interlace, overscan, p-hires etc
CODE_00840F:        JSR CODE_00841A           ; |Setup hardware RAM addresses of menu screens
CODE_008412:        PLD                       ;/Recover direct page
CODE_008413:        LDA #$01                  ;\
CODE_008415:        STA $000AC0               ;/Upload full palette data from $7F:9200 for 1 frame.
CODE_008419:        RTS                       ;

CODE_00841A:        REP #$10                  ;16-bit XY. This routine sets up hardware regs
CODE_00841C:        LDA $01                   ;\DP is $0100 in this case.
CODE_00841E:        STA $2101                 ;/Object size + Chr address
CODE_008421:        LDX $04                   ;\BG1 Tilemap Address and Size
CODE_008423:        STX $2107                 ;/BG2 Tilemap Address and Size
CODE_008426:        LDA $06                   ;\BG3 Tilemap Address and Size
CODE_008428:        STA $2109                 ;/
CODE_00842B:        LDA $07                   ;\BG1 and 2 Character address
CODE_00842D:        STA $210B                 ;/
CODE_008430:        LDA $08                   ;\
CODE_008432:        STA $210D                 ; |BG1 Horizontal Scroll
CODE_008435:        LDA $09                   ; |
CODE_008437:        STA $210D                 ;/
CODE_00843A:        LDA $0A                   ;\
CODE_00843C:        STA $210E                 ; |BG1 Vertical Scroll
CODE_00843F:        LDA $0B                   ; |
CODE_008441:        STA $210E                 ;/
CODE_008444:        LDA $0C                   ;\
CODE_008446:        STA $210F                 ; |BG2 Horizontal Scroll
CODE_008449:        LDA $0D                   ; |
CODE_00844B:        STA $210F                 ;/
CODE_00844E:        LDA $0E                   ;\
CODE_008450:        STA $2110                 ; |BG2 Vertical Scroll
CODE_008453:        LDA $0F                   ; |
CODE_008455:        STA $2110                 ;/
CODE_008458:        LDA $10                   ;\
CODE_00845A:        STA $2111                 ; |BG3 Horizontal Scroll
CODE_00845D:        LDA $11                   ; |
CODE_00845F:        STA $2111                 ;/
CODE_008462:        LDA $12                   ;\
CODE_008464:        STA $2112                 ; |BG3 Vertical Scroll
CODE_008467:        LDA $13                   ; |
CODE_008469:        STA $2112                 ;/
CODE_00846C:        LDA $1D                   ;\
CODE_00846E:        STA $2132                 ; |
CODE_008471:        LDA $1E                   ; |Fixed Color data
CODE_008473:        STA $2132                 ; |
CODE_008476:        LDA $1F                   ; |
CODE_008478:        STA $2132                 ;/
CODE_00847B:        LDX $17                   ;\Main and Subscreen designation
CODE_00847D:        STX $212C                 ;/
CODE_008480:        LDX $19                   ;\Window mask designation for main
CODE_008482:        STX $212E                 ;/and subscreen
CODE_008485:        LDX $14                   ;\Window Mask Settings for BG1/2/3/4
CODE_008487:        STX $2123                 ;/
CODE_00848A:        LDA $16                   ;\Window Mask Settings for OBJ and Color Window
CODE_00848C:        STA $2125                 ;/
CODE_00848F:        LDX $1B                   ;\Color addition select & CGADSUB
CODE_008491:        STX $2130                 ;/
CODE_008494:        LDX $02                   ;\Screen mode
CODE_008496:        STX $2105                 ;/
CODE_008499:        SEP #$10                  ;8-bit XY
CODE_00849B:        RTS                       ;Return.

CODE_00849C:        JSL ForceBlank            ;Forced blank + HDMA-Disable
CODE_0084A0:        PHD                       ;\
CODE_0084A1:        LDA #$01                  ; |
CODE_0084A3:        XBA                       ; |Direct page: $0100 
CODE_0084A4:        LDA #$00                  ; |
CODE_0084A6:        TCD                       ;/
CODE_0084A7:        TXA                       ;\ If it is not time to upload the game select screen tilemap, branch
CODE_0084A8:        BEQ CODE_0084D7           ;/
CODE_0084AA:        LDA #$01                  ;\
CODE_0084AC:        STA $0124                 ; | Set vertical IRQ timer
CODE_0084AF:        LDA #$37                  ; |
CODE_0084B1:        STA $0125                 ;/
CODE_0084B4:        PHB                       ;\
CODE_0084B5:        PHX                       ; |
CODE_0084B6:        REP #$30                  ; |
CODE_0084B8:        LDA $0000D0               ; |Upload the game select tilemap to RAM after
CODE_0084BC:        AND #$0003                ; |closing the file select menu. Upload the tiles
CODE_0084BF:        ASL A                     ; |according to $D0's index so we won't upload the
CODE_0084C0:        TAX                       ; |wrong game's portrait tiles.
CODE_0084C1:        LDA DATA_008559,x         ; |
CODE_0084C4:        STA $0214                 ; |
CODE_0084C7:        LDX.w #DATA_02F000        ; |
CODE_0084CA:        LDY #$1000                ; |
CODE_0084CD:        LDA #$0FFF                ; |Source: $02:F000. Dest: $7F:1000
CODE_0084D0:        MVN $7F, DATA_02F000>>16  ; |Used when collapsing a file select menu
CODE_0084D3:        SEP #$30                  ; |after selecting a game. 8-bit AXY
CODE_0084D5:        PLX                       ; |
CODE_0084D6:        PLB                       ;/
CODE_0084D7:        LDA DATA_008873,x         ;
CODE_0084DA:        STA $0A                   ;
CODE_0084DC:        LDA DATA_008873+2,x       ;
CODE_0084DF:        STA $0B                   ;
CODE_0084E1:        LDA DATA_00885D,x         ;
CODE_0084E4:        STA $01                   ;
CODE_0084E6:        LDA DATA_00885D+2,x       ;
CODE_0084E9:        STA $02                   ;
CODE_0084EB:        STZ $03                   ;
CODE_0084ED:        LDA DATA_008861,x               ;
CODE_0084F0:        STA $04                   ;
CODE_0084F2:        LDA DATA_008863,x               ;
CODE_0084F5:        STA $05                   ;
CODE_0084F7:        LDA DATA_008865,x               ;
CODE_0084FA:        STA $06                   ;
CODE_0084FC:        LDA DATA_008867,x               ;
CODE_0084FF:        STA $07                   ;
CODE_008501:        LDA DATA_008869,x               ;
CODE_008504:        STA $210C                 ;
CODE_008507:        LDA #$20                  ;
CODE_008509:        STA $1D                   ;
CODE_00850B:        ASL A                     ;
CODE_00850C:        STA $1E                   ;
CODE_00850E:        ASL A                     ;
CODE_00850F:        STA $1F                   ;
CODE_008511:        LDA DATA_00886B,x               ;
CODE_008514:        STA $17                   ;
CODE_008516:        LDA DATA_00886D,x               ;
CODE_008519:        STA $18                   ;
CODE_00851B:        LDA DATA_00886F,x               ;
CODE_00851E:        STA $1B                   ;
CODE_008520:        LDA DATA_008871,x               ;
CODE_008523:        STA $1C                   ;
CODE_008525:        STZ $19                   ;
CODE_008527:        STZ $1A                   ;
CODE_008529:        STZ $14                   ;
CODE_00852B:        STZ $15                   ;
CODE_00852D:        STZ $16                   ;
CODE_00852F:        REP #$20                  ;\
CODE_008531:        LDA #$4300                ; |Set direct page to $4300
CODE_008534:        TCD                       ; |
CODE_008535:        JSR CODE_008565           ; |DMA game select/menu tiles to VRAM
CODE_008538:        PLD                       ;/
CODE_008539:        TXA                       ;\
CODE_00853A:        AND #$00FF                ; | Index correctly
CODE_00853D:        ASL A                     ; |
CODE_00853E:        TAX                       ;/
CODE_00853F:        LDA #$0200                ;\ Size: $0200
CODE_008542:        STA $00                   ;/
CODE_008544:        LDA DATA_0088BF,x         ;\
CODE_008547:        LDY.b #DATA_3C8E00>>16    ; | Upload palette
CODE_008549:        STA $02                   ; |
CODE_00854B:        STY $04                   ;/
CODE_00854D:        LDA #$9200                ;\ $7F:9200
CODE_008550:        LDY #$7F                  ;/
CODE_008552:        JSL CODE_00866D           ; Upload to RAM
CODE_008556:        SEP #$20                  ;
CODE_008558:        RTL                       ;

DATA_008559:        dw $0000,$0078,$00F8,$017C              ;

PNTR_008561:        dw CODE_00857A                          ;Upload "Hall screen" tiles to VRAM
                    dw CODE_0085FF                          ;Upload "Game select" tiles to VRAM

CODE_008565:        PHX                       ; Upload Hall Screen/Game select tiles
CODE_008566:        LDY #$80                  ;\Set VRAM mode
CODE_008568:        STY $2115                 ;/
CODE_00856B:        LDA #$01                  ;\
CODE_00856D:        CLC                       ; |DMA mode 01: 2 regs write once
CODE_00856E:        STA $00                   ;/
CODE_008570:        LDY #$01                  ;<DMA Channel #0
CODE_008572:        TXA                       ;\
CODE_008573:        ASL A                     ; |
CODE_008574:        TAX                       ; |
CODE_008575:        JSR (PNTR_008561,x)       ; |
CODE_008578:        PLX                       ; |
CODE_008579:        RTS                       ;/

CODE_00857A:        LDA #$0000                ;\ DMA 'hall screen' graphics to VRAM
CODE_00857D:        STA $2116                 ; |DMA to: VRAM $0000-$7FFF
CODE_008580:        LDA.w #DATA_018000        ; |
CODE_008583:        STA $02                   ; |
CODE_008585:        LDX.b #DATA_018000>>16    ; |DMA source: $01:8000
CODE_008587:        STX $04                   ; |Size: $8000 bytes/32kB
CODE_008589:        LDA #$8000                ; |
CODE_00858C:        STA $05                   ; |
CODE_00858E:        STY $420B                 ;/
CODE_008591:        LDA.w #DATA_3DCC00        ;\ Upload animated hall screen tiles of Bowser, princess, toad, luigi's ear to VRAM
CODE_008594:        STA $02                   ; |DMA to: VRAM $8000-$93FF
CODE_008596:        LDX.b #DATA_3DCC00>>16    ; |
CODE_008598:        STX $04                   ; |
CODE_00859A:        LDA #$1400                ; |DMA Source: $3D:CC00
CODE_00859D:        STA $05                   ; |Size: $1400 bytes
CODE_00859F:        STY $420B                 ;/
CODE_0085A2:        LDA #$5000                ;\ Upload triangle fading GFX to VRAM
CODE_0085A5:        STA $2116                 ; |
CODE_0085A8:        LDA.w #DATA_029000        ; |DMA to: VRAM $A000-$A7FF
CODE_0085AB:        STA $02                   ; |
CODE_0085AD:        LDX.b #DATA_029000>>16    ; |DMA Source: $02:9000
CODE_0085AF:        STX $04                   ; |Size: $0800 bytes
CODE_0085B1:        LDA #$0800                ; |
CODE_0085B4:        STA $05                   ; |
CODE_0085B6:        STY $420B                 ;/
CODE_0085B9:        LDA #$6000                ;\ Upload Nintendo Presents graphics to VRAM
CODE_0085BC:        STA $2116                 ; |
CODE_0085BF:        LDA.w #DATA_028000        ; |
CODE_0085C2:        STA $02                   ; |DMA to: VRAM $C000-$CFFF
CODE_0085C4:        LDX.b #DATA_028000>>16    ; |
CODE_0085C6:        STX $04                   ; |DMA Source: $02:8000
CODE_0085C8:        LDA #$1000                ; |Size: $1000 bytes
CODE_0085CB:        STA $05                   ; |
CODE_0085CD:        STY $420B                 ;/
CODE_0085D0:        LDA #$7000                ;\ Upload default BG2 hall screen tilemap?
CODE_0085D3:        STA $2116                 ; |
CODE_0085D6:        LDA.w #DATA_02C000        ; |DMA to: VRAM $E000-$E7FF
CODE_0085D9:        STA $02                   ; |
CODE_0085DB:        LDX.b #DATA_02C000>>16    ; |DMA Source: $02:C000
CODE_0085DD:        STX $04                   ; |DMA Size: $0800 bytes
CODE_0085DF:        LDA #$0800                ; |
CODE_0085E2:        STA $05                   ; |
CODE_0085E4:        STY $420B                 ;/
CODE_0085E7:        LDA #$7800                ;\ upload default BG1 hall screen tilemap
CODE_0085EA:        STA $2116                 ; |
CODE_0085ED:        LDA.w #DATA_3C8000        ; |
CODE_0085F0:        STA $02                   ; |DMA to: VRAM $F000-$F7FF
CODE_0085F2:        LDX.b #DATA_3C8000>>16    ; |
CODE_0085F4:        STX $04                   ; |DMA Source: $3C:8000
CODE_0085F6:        LDA #$0800                ; |DMA Size: $0800 bytes
CODE_0085F9:        STA $05                   ; |
CODE_0085FB:        STY $420B                 ;/
CODE_0085FE:        RTS                       ;

CODE_0085FF:        LDA #$0000                ;\
CODE_008602:        STA $2116                 ; |Upload game select menu tiles
CODE_008605:        LDA.w #DATA_2B8000        ; |and its components to VRAM $0000-$D7FF
CODE_008608:        STA $02                   ; |
CODE_00860A:        LDX.b #DATA_2B8000>>16    ; |Source: $2B8000-$2BFFFF
CODE_00860C:        STX $04                   ; |        $2C8000-$2CFFFF
CODE_00860E:        LDA #$8000                ; |
CODE_008611:        STA $05                   ; |
CODE_008613:        STY $420B                 ; |
CODE_008616:        LDA.w #DATA_2C8000        ; |
CODE_008619:        STA $02                   ; |
CODE_00861B:        LDX.b #DATA_2C8000>>16    ; |
CODE_00861D:        STX $04                   ; |
CODE_00861F:        LDA #$5800                ; |
CODE_008622:        STA $05                   ; |
CODE_008624:        STY $420B                 ;/
CODE_008627:        LDA #$6C00                ;\ Upload default BG2 hall screen tilemap?
CODE_00862A:        STA $2116                 ; |DMA to VRAM $D800-$DFFF
CODE_00862D:        LDA.w #DATA_02C000        ; |
CODE_008630:        STA $02                   ; |Source: $02:C000
CODE_008632:        LDX.b #DATA_02C000>>16    ; |
CODE_008634:        STX $04                   ; |Size: $0800 bytes
CODE_008636:        LDA #$0800                ; |
CODE_008639:        STA $05                   ; |
CODE_00863B:        STY $420B                 ;/
CODE_00863E:        LDA #$7000                ;\
CODE_008641:        STA $2116                 ; |
CODE_008644:        LDA.w #DATA_3DA800        ; |Upload to VRAM $E000-$E7FF
CODE_008647:        STA $02                   ; |
CODE_008649:        LDX.b #DATA_3DA800>>16    ; |Upload absolute nothingness?
CODE_00864B:        STX $04                   ; |
CODE_00864D:        LDA #$0800                ; |Source: $3D:A800
CODE_008650:        STA $05                   ; |
CODE_008652:        STY $420B                 ;/
CODE_008655:        LDA #$7800                ;\
CODE_008658:        STA $2116                 ; |
CODE_00865B:        LDA.w #DATA_02F000        ; |Upload game select menu tilemap
CODE_00865E:        STA $02                   ; |to VRAM $F000-$FFFF
CODE_008660:        LDX.b #DATA_02F000>>16    ; |
CODE_008662:        STX $04                   ; |Source: $02:F000-$02:FFFF
CODE_008664:        LDA #$1000                ; |
CODE_008667:        STA $05                   ; |
CODE_008669:        STY $420B                 ;/
CODE_00866C:        RTS                       ;

CODE_00866D:        STA $2181                 ;\ 
CODE_008670:        STY $2183                 ; |
CODE_008673:        LDA #$8000                ; |
CODE_008676:        STA $4300                 ; |
CODE_008679:        LDA $02                   ; |DMA stuff to RAM routine.
CODE_00867B:        STA $4302                 ; |Input: $7E0002 - 3 bytes - source address
CODE_00867E:        LDY $04                   ; |       $7E0000 - 2 bytes - size
CODE_008680:        STY $4304                 ; |A = destination RAM
CODE_008683:        LDA $00                   ; |Y = flag for RAM $7F/$7E
CODE_008685:        STA $4305                 ; |A = 16-bit. XY = 8-bit.
CODE_008688:        LDY #$01                  ; |
CODE_00868A:        STY $420B                 ;/
CODE_00868D:        RTL                       ;

CODE_00868E:        STZ $02                   ;\Clear RAM routine
CODE_008690:        STA $4302                 ; |
CODE_008693:        STY $4304                 ; |
CODE_008696:        LDA #$3480                ; | Input:
CODE_008699:        STA $4300                 ; | A: Dest low and high
CODE_00869C:        LDA $00                   ; | Y: Dest bank
CODE_00869E:        STA $4305                 ; | $00: DMA Size
CODE_0086A1:        LDY #$01                  ; | $02: 16-bit value to transfer (usually $0000 or $FFFF)
CODE_0086A3:        STY $211B                 ; |
CODE_0086A6:        DEY                       ; |
CODE_0086A7:        STY $211B                 ; |
CODE_0086AA:        LDY $02                   ; |
CODE_0086AC:        STY $211C                 ; |
CODE_0086AF:        LDY #$01                  ; |
CODE_0086B1:        STY $420B                 ; |
CODE_0086B4:        RTL                       ;/

CODE_0086B5:        LDA $4016                 ;\NES-styled Joypad data 1
CODE_0086B8:        AND #$01                  ; |Read if the latch is open
CODE_0086BA:        EOR #$01                  ; |Reverse the latch status
CODE_0086BC:        ASL A                     ; |Multiply by 2
CODE_0086BD:        STA $701FF4               ;/Store into SRAM
CODE_0086C1:        LDA $4017                 ;
CODE_0086C4:        AND #$01                  ;
CODE_0086C6:        ASL A                     ;
CODE_0086C7:        STA $701FF6               ;
CODE_0086CB:        RTL                       ;

CODE_0086CC:        STZ $4016                 ;\
CODE_0086CF:        LDA $4218                 ;/Something related to controllers
CODE_0086D2:        STA $00                   ;
CODE_0086D4:        LDA $4219                 ;
CODE_0086D7:        STA $01                   ;
CODE_0086D9:        LDA $00                   ;
CODE_0086DB:        STA $F2                   ;
CODE_0086DD:        TAY                       ;
CODE_0086DE:        EOR $FA                   ;
CODE_0086E0:        AND $F2                   ;
CODE_0086E2:        STA $F6                   ;
CODE_0086E4:        STY $FA                   ;
CODE_0086E6:        LDA $01                   ;
CODE_0086E8:        STA $F0                   ;
CODE_0086EA:        TAY                       ;
CODE_0086EB:        EOR $F8                   ;
CODE_0086ED:        AND $F0                   ;
CODE_0086EF:        STA $F4                   ;
CODE_0086F1:        STY $F8                   ;
CODE_0086F3:        NOP                       ;
CODE_0086F4:        LDA $421A                 ;
CODE_0086F7:        STA $00                   ;
CODE_0086F9:        LDA $421B                 ;
CODE_0086FC:        STA $01                   ;
CODE_0086FE:        LDA $00                   ;
CODE_008700:        STA $F3                   ;
CODE_008702:        TAY                       ;
CODE_008703:        EOR $FB                   ;
CODE_008705:        AND $F3                   ;
CODE_008707:        STA $F7                   ;
CODE_008709:        STY $FB                   ;
CODE_00870B:        LDA $01                   ;
CODE_00870D:        STA $F1                   ;
CODE_00870F:        TAY                       ;
CODE_008710:        EOR $F9                   ;
CODE_008712:        AND $F1                   ;
CODE_008714:        STA $F5                   ;
CODE_008716:        STY $F9                   ;
CODE_008718:        RTS                       ;

CODE_008719:        PHD                       ;\ Prepare OAM for the logo, menu, hall screen etc.
CODE_00871A:        REP #$30                  ; |Direct page: $0800
CODE_00871C:        LDA #$0800                ; |
CODE_00871F:        TCD                       ;/
CODE_008720:        LDY #$F000                ;\
CODE_008723:        LDX #$0180                ; |
CODE_008726:        TYA                       ; |
CODE_008727:        STA $00,x                 ; |
CODE_008729:        STA $04,x                 ; |
CODE_00872B:        STA $08,x                 ; |
CODE_00872D:        STA $0C,x                 ; |
CODE_00872F:        STA $10,x                 ; |
CODE_008731:        STA $14,x                 ; |Clear OAM
CODE_008733:        STA $18,x                 ; |Clear $0800-$09FF
CODE_008735:        STA $1C,x                 ; |
CODE_008737:        STA $20,x                 ; |
CODE_008739:        STA $24,x                 ; |
CODE_00873B:        STA $28,x                 ; |
CODE_00873D:        STA $2C,x                 ; |
CODE_00873F:        STA $30,x                 ; | 
CODE_008741:        STA $34,x                 ; |
CODE_008743:        STA $38,x                 ; |
CODE_008745:        STA $3C,x                 ; |
CODE_008747:        STA $40,x                 ; |
CODE_008749:        STA $44,x                 ; |
CODE_00874B:        STA $48,x                 ; |
CODE_00874D:        STA $4C,x                 ; |
CODE_00874F:        STA $50,x                 ; |
CODE_008751:        STA $54,x                 ; |
CODE_008753:        STA $58,x                 ; |
CODE_008755:        STA $5C,x                 ; |
CODE_008757:        STA $60,x                 ; |
CODE_008759:        STA $64,x                 ; |
CODE_00875B:        STA $68,x                 ; | 
CODE_00875D:        STA $6C,x                 ; |
CODE_00875F:        STA $70,x                 ; |
CODE_008761:        STA $74,x                 ; |
CODE_008763:        STA $78,x                 ; |
CODE_008765:        STA $7C,x                 ;/
CODE_008767:        TXA                       ;\
CODE_008768:        SEC                       ; |
CODE_008769:        SBC #$0080                ; |If not done yet
CODE_00876C:        TAX                       ; |Loop
CODE_00876D:        BPL CODE_008726           ;/
CODE_00876F:        SEP #$30                  ;8-bit AXY
CODE_008771:        PLD                       ;Recover direct page
CODE_008772:        RTS                       ;Return.

CODE_008773:        PHD                       ;\
CODE_008774:        LDA #$0A                  ; |
CODE_008776:        XBA                       ; |Direct page: $0A00
CODE_008777:        LDA #$00                  ; |
CODE_008779:        TCD                       ;/
CODE_00877A:        LDY #$1C                  ;\
CODE_00877C:        TYA                       ; |
CODE_00877D:        ASL A                     ; |
CODE_00877E:        ASL A                     ; |
CODE_00877F:        TAX                       ; |Basically this sticks 2 bits of 4 bytes into 1 byte
CODE_008780:        LDA $23,x                 ; |And stores it to OAM $0A00-$0A1F for the tilesize
CODE_008782:        ASL A                     ; |
CODE_008783:        ASL A                     ; |
CODE_008784:        ORA $22,x                 ; |
CODE_008786:        ASL A                     ; |
CODE_008787:        ASL A                     ; |
CODE_008788:        ORA $21,x                 ; |
CODE_00878A:        ASL A                     ; |
CODE_00878B:        ASL A                     ; |
CODE_00878C:        ORA $20,x                 ; |
CODE_00878E:        STA $0A00,y               ; |
CODE_008791:        LDA $27,x                 ; |
CODE_008793:        ASL A                     ; |
CODE_008794:        ASL A                     ; |
CODE_008795:        ORA $26,x                 ; |
CODE_008797:        ASL A                     ; |
CODE_008798:        ASL A                     ; |
CODE_008799:        ORA $25,x                 ; |
CODE_00879B:        ASL A                     ; |
CODE_00879C:        ASL A                     ; |
CODE_00879D:        ORA $24,x                 ; |
CODE_00879F:        STA $0A01,y               ; |
CODE_0087A2:        LDA $2B,x                 ; |
CODE_0087A4:        ASL A                     ; |
CODE_0087A5:        ASL A                     ; |
CODE_0087A6:        ORA $2A,x                 ; |
CODE_0087A8:        ASL A                     ; |
CODE_0087A9:        ASL A                     ; |
CODE_0087AA:        ORA $29,x                 ; |
CODE_0087AC:        ASL A                     ; |
CODE_0087AD:        ASL A                     ; |
CODE_0087AE:        ORA $28,x                 ; |
CODE_0087B0:        STA $0A02,y               ; |
CODE_0087B3:        LDA $2F,x                 ; |
CODE_0087B5:        ASL A                     ; |
CODE_0087B6:        ASL A                     ; |
CODE_0087B7:        ORA $2E,x                 ; |
CODE_0087B9:        ASL A                     ; |
CODE_0087BA:        ASL A                     ; |
CODE_0087BB:        ORA $2D,x                 ; |
CODE_0087BD:        ASL A                     ; |
CODE_0087BE:        ASL A                     ; |
CODE_0087BF:        ORA $2C,x                 ; |
CODE_0087C1:        STA $0A03,y               ; |
CODE_0087C4:        DEY                       ; |
CODE_0087C5:        DEY                       ; |
CODE_0087C6:        DEY                       ; |
CODE_0087C7:        DEY                       ; |
CODE_0087C8:        BPL CODE_00877C           ; |
CODE_0087CA:        PLD                       ;/
CODE_0087CB:        RTS                       ;

CODE_0087CC:        LDA $0062                 ;
CODE_0087CF:        BEQ CODE_008821           ;
CODE_0087D1:        STA $2142                 ;
CODE_0087D4:        CMP #$F0                  ;
CODE_0087D6:        BCS CODE_0087DB           ;
CODE_0087D8:        STA $0066                 ;
CODE_0087DB:        LDA $0060                 ;
CODE_0087DE:        BNE CODE_0087E8           ;
CODE_0087E0:        LDY $2140                 ;
CODE_0087E3:        CPY $0064                 ;
CODE_0087E6:        BNE CODE_0087EE           ;
CODE_0087E8:        STA $2140                 ;
CODE_0087EB:        STA $0064                 ;
CODE_0087EE:        LDA $0061                 ;
CODE_0087F1:        BNE CODE_0087FB           ;
CODE_0087F3:        LDY $2141                 ;
CODE_0087F6:        CPY $0065                 ;
CODE_0087F9:        BNE CODE_008801           ;
CODE_0087FB:        STA $2141                 ;
CODE_0087FE:        STA $0065                 ;
CODE_008801:        LDA $0063                 ;
CODE_008804:        BNE CODE_00880E           ;
CODE_008806:        LDY $2143                 ;
CODE_008809:        CPY $0067                 ;
CODE_00880C:        BNE CODE_008814           ;
CODE_00880E:        STA $2143                 ;
CODE_008811:        STA $0067                 ;
CODE_008814:        STZ $0060                 ;
CODE_008817:        STZ $0061                 ;
CODE_00881A:        STZ $0062                 ;
CODE_00881D:        STZ $0063                 ;
CODE_008820:        RTS                       ;

CODE_008821:        LDY $2142                 ;
CODE_008824:        CPY $0066                 ;
CODE_008827:        BNE CODE_0087DB           ;
CODE_008829:        STA $2142                 ;
CODE_00882C:        BRA CODE_0087DB           ;

ForceBlank:
CODE_00882E:        LDA #$80                  ;\Enable forced blank & Disable HDMA
CODE_008830:        STA $2100                 ; |Forced blank
CODE_008833:        STA $0100                 ; |Forced blank on mirror too
CODE_008836:        STZ $420C                 ; |HDMA disable
CODE_008839:        STZ $0120                 ; |HDMA disable on mirror too
CODE_00883C:        RTL                       ;/

DATA_00883D:        db $01,$01,$01,$01,$01,$01,$01,$01 ;
                    db $01,$00,$00,$01,$01,$01,$01,$01 ;
                    db $01,$01,$01,$01,$01,$01,$01,$01 ;
                    db $01,$01,$01,$01,$01,$01,$01,$01 ;

DATA_00885D:        db $03,$00,$03,$03

DATA_008861:        db $78,$73

DATA_008863:        db $72,$6C

DATA_008865:        db $00,$00

DATA_008867:        db $50,$70

DATA_008869:        db $00,$05

DATA_00886B:        db $13,$02

DATA_00886D:        db $00,$11

DATA_00886F:        db $00,$02

DATA_008871:        db $20,$20

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

DATA_0088BF:        dw DATA_3C8E00
                    dw DATA_3CB400

CODE_0088C3:        LDA #$43                  ;\
CODE_0088C5:        XBA                       ; |Direct page: $4300
CODE_0088C6:        LDA #$00                  ; |
CODE_0088C8:        TCD                       ;/
CODE_0088C9:        REP #$10                  ;16-bit XY
CODE_0088CB:        LDX #$1801                ;\Base register: $2118. 2 regs write once.
CODE_0088CE:        STX $00                   ;/
CODE_0088D0:        LDA #$80                  ;\VRAM:
CODE_0088D2:        STA $2115                 ;/increment after writing $2119/reading $213A
CODE_0088D5:        LDA $0219                 ;\
CODE_0088D8:        BEQ CODE_0088FD           ; |Flag to do file select images DMA. If it is set:
CODE_0088DA:        LDX #$6C00                ; |Do file select images DMA.
CODE_0088DD:        STX $2116                 ; |VRAM Destination: $D800
CODE_0088E0:        LDX.w #DATA_2CD800        ; |
CODE_0088E3:        STX $02                   ; |DMA Source: $2C:D800
CODE_0088E5:        LDA.b #DATA_2CD800>>16    ; |
CODE_0088E7:        STA $04                   ; |Size: 4kB 
CODE_0088E9:        LDX #$1000                ; |
CODE_0088EC:        STX $05                   ; |Do DMA transfer
CODE_0088EE:        LDA #$01                  ; |
CODE_0088F0:        STA $420B                 ; |
CODE_0088F3:        STZ $0219                 ;/Reset "file select images DMA" flag
CODE_0088F6:        STZ $00E5                 ;\Clear offset of fading out into game select triangle 
CODE_0088F9:        STZ $00E6                 ;/                              graphics.
CODE_0088FC:        RTS                       ;

CODE_0088FD:        LDX $00E5                 ;\ If we're fading out into the game select room
CODE_008900:        BEQ CODE_008926           ; |
CODE_008902:        STX $02                   ; |DMA source: bank #$02, offset that $00E5 has
CODE_008904:        LDA #$02                  ; |
CODE_008906:        STA $04                   ; |
CODE_008908:        LDX #$5000                ; |
CODE_00890B:        LDA $00E0                 ;\|If fading out, VRAM address is $A000, else, $E000
CODE_00890E:        BEQ CODE_008913           ;/|
CODE_008910:        LDX #$7000                ; |
CODE_008913:        STX $2116                 ; |
CODE_008916:        LDY #$0800                ; |DMA size: $800 bytes
CODE_008919:        STY $05                   ; |
CODE_00891B:        LDA #$01                  ; |
CODE_00891D:        STA $420B                 ; |
CODE_008920:        STZ $00E5                 ; |
CODE_008923:        STZ $00E6                 ;/
CODE_008926:        LDA $00DE                 ;\ If character animation on hall screen flag is set
CODE_008929:        BEQ CODE_008947           ; |
CODE_00892B:        LDX #$7800                ; |VRAM address: $F000
CODE_00892E:        STX $2116                 ; |
CODE_008931:        LDX #$0000                ; |Update screen's tilemap using ram $7F0000 AKA animate stuff
CODE_008934:        STX $02                   ; |Source: $7F0000
CODE_008936:        LDA #$7F                  ; |
CODE_008938:        STA $04                   ; |
CODE_00893A:        LDY #$0800                ; |
CODE_00893D:        STY $05                   ; |Size: $0800 bytes
CODE_00893F:        LDA #$01                  ; |
CODE_008941:        STA $420B                 ; |Enable DMA transfer
CODE_008944:        STZ $00DE                 ;/ Reset character animation on hall screen flag
CODE_008947:        LDA $0AC0                 ;\ Dynamically upload palette
CODE_00894A:        BEQ CODE_00896A           ; |If $0AC0 is set, upload full palette to CGRAM
CODE_00894C:        STZ $2121                 ; |located at Source: $7F:9200.
CODE_00894F:        LDY #$2200                ; |One reg write once. Reg = $2122
CODE_008952:        STY $00                   ; |
CODE_008954:        LDY #$9200                ; |Source: $7F:9200
CODE_008957:        STY $02                   ; |
CODE_008959:        LDA #$7F                  ; |
CODE_00895B:        STA $04                   ; |
CODE_00895D:        LDY #$0200                ; |Size: Full palette
CODE_008960:        STY $05                   ; |
CODE_008962:        LDA #$01                  ; |
CODE_008964:        STA $420B                 ; |
CODE_008967:        STZ $0AC0                 ;/
CODE_00896A:        REP #$20                  ;\ Update OAM using DMA
CODE_00896C:        SEP #$10                  ; |
CODE_00896E:        STZ $2102                 ; |OAM address: $0000?
CODE_008971:        LDA #$0400                ; |\1 reg write once
CODE_008974:        STA $00                   ; |/OAM data DMA
CODE_008976:        LDA #$0800                ; |Source: $00:0800 - OAM
CODE_008979:        STA $02                   ; |
CODE_00897B:        STZ $04                   ; |
CODE_00897D:        LDA #$0220                ; |Size: 544 bytes (entire OAM)
CODE_008980:        STA $05                   ; |
CODE_008982:        LDY #$01                  ; |Enable DMA transfer
CODE_008984:        STY $420B                 ;/
CODE_008987:        LDA #$1801                ;\ 2 regs write once $2118
CODE_00898A:        STA $00                   ; |
CODE_00898C:        LDA #$1801                ; |...the same thing again?
CODE_00898F:        STA $00                   ; |
CODE_008991:        LDA #$0000                ; |
CODE_008994:        TCD                       ; |
CODE_008995:        LDA #$8002                ; |
CODE_008998:        STA $E8                   ; |Indirect pointer $7F8002 at $E8-$EA
CODE_00899A:        SEP #$20                  ; |
CODE_00899C:        LDA #$7F                  ; |
CODE_00899E:        STA $4304                 ; |
CODE_0089A1:        STA $EA                   ; |
CODE_0089A3:        REP #$10                  ; |
CODE_0089A5:        LDY #$0000                ; |
CODE_0089A8:        JSR CODE_0089EC           ; |
CODE_0089AB:        REP #$20                  ; |
CODE_0089AD:        LDA #$0000                ; |
CODE_0089B0:        STA $7F8000               ; |
CODE_0089B4:        DEC A                     ; |
CODE_0089B5:        STA $7F8002               ; |
CODE_0089B9:        RTS                       ;/

CODE_0089BA:        STA $2117                 ;
CODE_0089BD:        INY                       ;
CODE_0089BE:        LDA [$E8],y               ;
CODE_0089C0:        STA $2116                 ;
CODE_0089C3:        INY                       ;
CODE_0089C4:        LDA [$E8],y               ;
CODE_0089C6:        ASL A                     ;
CODE_0089C7:        LDA #$2A40                ;
CODE_0089CA:        STA $2115                 ;
CODE_0089CD:        REP #$20                  ;
CODE_0089CF:        LDA [$E8],y               ;
CODE_0089D1:        XBA                       ;
CODE_0089D2:        ASL A                     ;
CODE_0089D3:        LSR A                     ;
CODE_0089D4:        STA $4305                 ;
CODE_0089D7:        STA $EC                   ;
CODE_0089D9:        INY                       ;
CODE_0089DA:        INY                       ;
CODE_0089DB:        TYA                       ;
CODE_0089DC:        ADC $E8                   ;
CODE_0089DE:        STA $4302                 ;
CODE_0089E1:        TYA                       ;
CODE_0089E2:        ADC $EC                   ;
CODE_0089E4:        TAY                       ;
CODE_0089E5:        SEP #$20                  ;
CODE_0089E7:        LDA #$01                  ;
CODE_0089E9:        STA $420B                 ;
CODE_0089EC:        LDA [$E8],y               ;
CODE_0089EE:        BPL CODE_0089BA           ;
CODE_0089F0:        RTS                       ;

;Pointers to SPC data upload routine of games. 
PNTR_0089F1:        dw CODE_008B17            ;SMB1
                    dw CODE_008B17            ;SMB:TLL
                    dw CODE_008B27            ;SMB2
                    dw CODE_008B37            ;SMB3

CODE_0089F9:        SEI                       ;Set IRQ disable flag
CODE_0089FA:        STZ $4200                 ;\Disable interrupts
CODE_0089FD:        STZ $420C                 ;/Disable HDMA
CODE_008A00:        STZ $2140                 ;\
CODE_008A03:        STZ $2142                 ; |Disable SFX and music stuff
CODE_008A06:        STZ $2143                 ; |
CODE_008A09:        LDA #$FF                  ; |
CODE_008A0B:        STA $2141                 ;/
CODE_008A0E:        LDA $D0                   ;\
CODE_008A10:        ASL A                     ; |Load selected game
CODE_008A11:        TAX                       ; |
CODE_008A12:        JSR (PNTR_0089F1,x)       ;/ Upload SPC data of selected game
CODE_008A15:        REP #$20                  ;\
CODE_008A17:        LDX #$02                  ; |
CODE_008A19:        LDA #$0200                ; |
CODE_008A1C:        STA $00                   ; |
CODE_008A1E:        LDA DATA_0088BF,x         ; |
CODE_008A21:        LDY #$02                  ; |Do some DMA transfers to RAM
CODE_008A23:        STA $02                   ; |
CODE_008A25:        STY $04                   ; |The DMA'd data goes in RAM, but doesn't get
CODE_008A27:        LDA #$9000                ; |read???
CODE_008A2A:        LDY #$7F                  ; |
CODE_008A2C:        JSL CODE_00866D           ; |
CODE_008A30:        LDA #$9200                ; |
CODE_008A33:        LDY #$7F                  ; |
CODE_008A35:        JSL CODE_00866D           ;/
CODE_008A39:        LDA #$0000                ;
CODE_008A3C:        STA $7F8000               ;
CODE_008A40:        DEC A                     ;
CODE_008A41:        STA $7F8002               ;
CODE_008A45:        SEP #$20                  ;
CODE_008A47:        LDA #$81                  ;\Enable interrupts
CODE_008A49:        STA $4200                 ;/
CODE_008A4C:        INC $E0                   ;
CODE_008A4E:        RTL                       ;

CODE_008A4F:        REP #$20                  ;\
CODE_008A51:        LDA #$0400                ; |DMA SPC-700 data to RAM, part 1 of 2
CODE_008A54:        STA $00                   ; |Source: $07FC00
CODE_008A56:        LDA.w #DATA_07FC00        ; |Size: $0400 bytes
CODE_008A59:        STA $02                   ; |Destination: $7F0000
CODE_008A5B:        LDY.b #DATA_07FC00>>16    ; |
CODE_008A5D:        STY $04                   ; |
CODE_008A5F:        LDA #$0000                ; |
CODE_008A62:        LDY #$7F                  ; |
CODE_008A64:        JSL CODE_00866D           ;/
CODE_008A68:        LDA #$8000                ;\
CODE_008A6B:        STA $00                   ; |DMA SPC-700 data to RAM, part 2 of 2
CODE_008A6D:        LDA.w #DATA_3B8000        ; |Source: $3B8000
CODE_008A70:        STA $02                   ; |Size: $8000 bytes
CODE_008A72:        LDY.b #DATA_3B8000>>16    ; |Destination: $7F0400
CODE_008A74:        STY $04                   ; |
CODE_008A76:        LDA #$0400                ; |
CODE_008A79:        LDY #$7F                  ; |
CODE_008A7B:        JSL CODE_00866D           ; |
CODE_008A7F:        SEP #$20                  ;/
CODE_008A81:        STZ $00                   ;\
CODE_008A83:        LDA #$00                  ; |
CODE_008A85:        STA $01                   ; |SPC-700 data source: $7F:0000
CODE_008A87:        LDA #$7F                  ; |
CODE_008A89:        STA $02                   ;/
CODE_008A8B:        JMP SPCUpload             ;Upload SPC engine + SMAS hall and menu audio data

CODE_008A8E:        SEI                       ;
CODE_008A8F:        STZ $4200                 ;
CODE_008A92:        STZ $420C                 ;
CODE_008A95:        STZ $2140                 ;
CODE_008A98:        LDA #$FF                  ;
CODE_008A9A:        STA $2141                 ;
CODE_008A9D:        STZ $2142                 ;
CODE_008AA0:        STZ $2143                 ;
CODE_008AA3:        STZ $00                   ;\
CODE_008AA5:        LDA.b #DATA_0B8000>>8     ; |
CODE_008AA7:        STA $01                   ; |SPC-700 data source: $0B:8000
CODE_008AA9:        LDA.b #DATA_0B8000>>16    ; |
CODE_008AAB:        STA $02                   ;/
CODE_008AAD:        JSR SPCUpload             ;Upload SPC data
CODE_008AB0:        LDA #$81                  ;
CODE_008AB2:        STA $4200                 ;
CODE_008AB5:        INC $E1                   ;
CODE_008AB7:        LDA #$12                  ;
CODE_008AB9:        STA $60                   ;
CODE_008ABB:        RTS                       ;

CODE_008ABC:        SEI                       ;
CODE_008ABD:        STZ $4200                 ; Don't let NMI interrupt the upload
CODE_008AC0:        STZ $420C                 ; No DMA
CODE_008AC3:        STZ $420B                 ; No HDMA
CODE_008AC6:        STZ $2140                 ;\
CODE_008AC9:        LDA #$FF                  ; |
CODE_008ACB:        STA $2141                 ; | Tell SPC700 we are ready to upload data
CODE_008ACE:        STZ $2142                 ; |
CODE_008AD1:        STZ $2143                 ;/
CODE_008AD4:        STZ $00                   ;\
CODE_008AD6:        LDA.b #DATA_0B8000>>8     ; |
CODE_008AD8:        STA $01                   ; |SPC-700 data source: $0B:8000
CODE_008ADA:        LDA.b #DATA_0B8000>>16    ; |
CODE_008ADC:        STA $02                   ;/
CODE_008ADE:        JSR SPCUpload             ;Upload SPC data
CODE_008AE1:        LDA #$81                  ;
CODE_008AE3:        STA $4200                 ;
CODE_008AE6:        RTS                       ;

CODE_008AE7:        SEI                       ;
CODE_008AE8:        STZ $4200                 ; Don't let NMI interrupt the upload
CODE_008AEB:        STZ $420C                 ; No DMA
CODE_008AEE:        STZ $2140                 ;\
CODE_008AF1:        LDA #$FF                  ; |
CODE_008AF3:        STA $2141                 ; | Tell the SPC700 we are ready to upload data
CODE_008AF6:        STZ $2142                 ; |
CODE_008AF9:        STZ $2143                 ;/
CODE_008AFC:        LDA.b #DATA_3BA251        ;\
CODE_008AFE:        STA $00                   ; |
CODE_008B00:        LDA.b #DATA_3BA251>>8     ; |
CODE_008B02:        STA $01                   ; |SPC-700 data source: $3B:A251
CODE_008B04:        LDA.b #DATA_3BA251>>16    ; |
CODE_008B06:        STA $02                   ;/
CODE_008B08:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B0B:        LDA #$81                  ;\ Enable NMI again and joypad read
CODE_008B0D:        STA $4200                 ;/
CODE_008B10:        INC $E1                   ; Next sub-game mode
CODE_008B12:        LDA #$3E                  ;\ Play talking crowd SFX
CODE_008B14:        STA $60                   ;/
CODE_008B16:        RTS                       ;

CODE_008B17:        LDA.b #DATA_1F8000        ;\
CODE_008B19:        STA $00                   ; |
CODE_008B1B:        LDA.b #DATA_1F8000>>8     ; |
CODE_008B1D:        STA $01                   ; |SPC-700 data source: $1F:8000
CODE_008B1F:        LDA.b #DATA_1F8000>>16    ; |
CODE_008B21:        STA $02                   ;/
CODE_008B23:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B26:        RTS                       ;

CODE_008B27:        LDA.b #DATA_1FC000        ;\
CODE_008B29:        STA $00                   ; |
CODE_008B2B:        LDA.b #DATA_1FC000>>8     ; |
CODE_008B2D:        STA $01                   ; |SPC-700 data source: $1F:C000
CODE_008B2F:        LDA.b #DATA_1FC000>>16    ; |
CODE_008B31:        STA $02                   ;/
CODE_008B33:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B36:        RTS                       ;

CODE_008B37:        LDA.b #DATA_0C8000        ;\
CODE_008B39:        STA $00                   ; |
CODE_008B3B:        LDA.b #DATA_0C8000>>8     ; |SPC-700 data source: $0C:8000
CODE_008B3D:        STA $01                   ; |
CODE_008B3F:        LDA.b #DATA_0C8000>>16    ; |
CODE_008B41:        STA $02                   ;/
CODE_008B43:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B46:        RTS                       ;

CODE_008B47:        SEI                       ;
CODE_008B48:        STZ $4200                 ;
CODE_008B4B:        STZ $420C                 ;
CODE_008B4E:        LDA #$FF                  ;
CODE_008B50:        STA $2141                 ;
CODE_008B53:        LDA #$00                  ;\
CODE_008B55:        STA $00                   ; |
CODE_008B57:        LDA #$80                  ; |SPC-700 data source: $0C:8000
CODE_008B59:        STA $01                   ; |
CODE_008B5B:        LDA #$0C                  ; |
CODE_008B5D:        STA $02                   ;/
CODE_008B5F:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B62:        RTL                       ;

CODE_008B63:        SEI                       ;
CODE_008B64:        STZ $4200                 ;
CODE_008B67:        STZ $420C                 ;
CODE_008B6A:        LDA #$FF                  ;
CODE_008B6C:        STA $2141                 ;
CODE_008B6F:        REP #$20                  ;
CODE_008B71:        LDA #$2800                ;\
CODE_008B74:        STA $00                   ; |
CODE_008B76:        LDA.w #DATA_07C000        ; |
CODE_008B79:        STA $02                   ; |SPC-700 data to RAM:
CODE_008B7B:        LDY.b #DATA_07C000>>16    ; |Source: $07:C000
CODE_008B7D:        STY $04                   ; | Dest.: $7F:0000
CODE_008B7F:        LDA #$0000                ; | Size: $2800 bytes
CODE_008B82:        LDY #$7F                  ; |
CODE_008B84:        JSL CODE_00866D           ;/
CODE_008B88:        SEP #$20                  ;\
CODE_008B8A:        LDA #$00                  ; |
CODE_008B8C:        STZ $00                   ; |SPC-700 data source: $7F:0000
CODE_008B8E:        LDA #$00                  ; | 
CODE_008B90:        STA $01                   ; |
CODE_008B92:        LDA #$7F                  ; |
CODE_008B94:        STA $02                   ;/
CODE_008B96:        JSR SPCUpload             ;Upload SPC-700 data
CODE_008B99:        REP #$20                  ;\
CODE_008B9B:        LDA #$C000                ; |
CODE_008B9E:        STA $00                   ; |Clear $7F0000-$
CODE_008BA0:        LDA #$0000                ; |
CODE_008BA3:        LDY #$7F                  ; |
CODE_008BA5:        JSL CODE_00868E           ; |
CODE_008BA9:        SEP #$20                  ;/
CODE_008BAB:        RTL                       ;

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
CODE_008BAC:        PHP                       ;Upload SPC data routine
CODE_008BAD:        REP #$30                  ;
CODE_008BAF:        LDY #$0000                ;index to SPC data
CODE_008BB2:        LDA #$BBAA                ;\
CODE_008BB5:        CMP $2140                 ; |Wait until SPC-700 is ready
CODE_008BB8:        BNE CODE_008BB5           ;/ (it reaches ARAM $0fdc then)
CODE_008BBA:        SEP #$20                  ;\
CODE_008BBC:        LDA #$CC                  ; |Tell SPC-700 that you're ready, and begin
CODE_008BBE:        BRA CODE_008BE6           ;/ uploading data.

CODE_008BC0:        LDA [$00],y               ;
CODE_008BC2:        INY                       ;
CODE_008BC3:        XBA                       ;
CODE_008BC4:        LDA #$00                  ;
CODE_008BC6:        BRA CODE_008BD3           ;

CODE_008BC8:        XBA                       ;
CODE_008BC9:        LDA [$00],y               ;
CODE_008BCB:        INY                       ;
CODE_008BCC:        XBA                       ;
CODE_008BCD:        CMP $2140                 ;
CODE_008BD0:        BNE CODE_008BCD           ;
CODE_008BD2:        INC A                     ;
CODE_008BD3:        REP #$20                  ;
CODE_008BD5:        STA $2140                 ;
CODE_008BD8:        SEP #$20                  ;
CODE_008BDA:        DEX                       ;
CODE_008BDB:        BNE CODE_008BC8           ;
CODE_008BDD:        CMP $2140                 ;
CODE_008BE0:        BNE CODE_008BDD           ;
CODE_008BE2:        ADC #$03                  ;
CODE_008BE4:        BEQ CODE_008BE2           ;
CODE_008BE6:        PHA                       ;SPC-700 data header consists of 2 words/4 bytes
CODE_008BE7:        REP #$20                  ;
CODE_008BE9:        LDA [$00],y               ;This loads the first word:
CODE_008BEB:        INY                       ;Length of SPC-700 data in hex (little-endian)
CODE_008BEC:        INY                       ;
CODE_008BED:        TAX                       ;
CODE_008BEE:        LDA [$00],y               ;This loads the second word:
CODE_008BF0:        INY                       ;Where in ARAM the SPC-700 should be uploaded to
CODE_008BF1:        INY                       ;(little-endian)
CODE_008BF2:        STA $2142                 ;
CODE_008BF5:        SEP #$20                  ;
CODE_008BF7:        CPX #$0001                ;
CODE_008BFA:        LDA #$00                  ;
CODE_008BFC:        ROL A                     ;
CODE_008BFD:        STA $2141                 ;
CODE_008C00:        ADC #$7F                  ;
CODE_008C02:        PLA                       ;
CODE_008C03:        STA $2140                 ;
CODE_008C06:        CMP $2140                 ;
CODE_008C09:        BNE CODE_008C06           ;
CODE_008C0B:        BVS CODE_008BC0           ;
CODE_008C0D:        STZ $2140                 ;
CODE_008C10:        STZ $2141                 ;
CODE_008C13:        STZ $2142                 ;
CODE_008C16:        STZ $2143                 ;
CODE_008C19:        PLP                       ;
CODE_008C1A:        RTS                       ;

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CODE_008C1B:        SEP #$20                  ;
CODE_008C1D:        LDA #$00                  ;\
CODE_008C1F:        STA $700007               ;/Clear debug mode
CODE_008C23:        REP #$30                  ;
CODE_008C25:        LDA $700002               ;
CODE_008C29:        CMP #$9743                ;
CODE_008C2C:        BNE CODE_008C37           ;
CODE_008C2E:        LDA $701FFC               ;
CODE_008C32:        CMP #$5321                ;
CODE_008C35:        BEQ CODE_008C6E           ;
CODE_008C37:        SEP #$10                  ;
CODE_008C39:        LDA #$2000                ;
CODE_008C3C:        STA $00                   ;
CODE_008C3E:        LDA #$0000                ;
CODE_008C41:        LDY #$70                  ;
CODE_008C43:        JSL CODE_00868E           ;
CODE_008C47:        REP #$10                  ;
CODE_008C49:        LDX #$0000                ;
CODE_008C4C:        JSR CODE_008D83           ;
CODE_008C4F:        LDA $700004               ;
CODE_008C53:        INC A                     ;
CODE_008C54:        STA $700004               ;
CODE_008C58:        CMP #$0010                ;
CODE_008C5B:        BCC CODE_008C4C           ;
CODE_008C5D:        LDA #$9743                ;
CODE_008C60:        STA $700002               ;
CODE_008C64:        LDA #$5321                ;
CODE_008C67:        STA $701FFC               ;
CODE_008C6B:        JMP CODE_008C1B           ;

CODE_008C6E:        LDA #$0000                ;
CODE_008C71:        STA $700004               ;
CODE_008C75:        TAX                       ;
CODE_008C76:        AND #$0003                ;
CODE_008C79:        ASL A                     ;
CODE_008C7A:        TAY                       ;
CODE_008C7B:        LDA DATA_008DDB,y               ;
CODE_008C7E:        DEC A                     ;
CODE_008C7F:        DEC A                     ;
CODE_008C80:        TAY                       ;
CODE_008C81:        STZ $00                   ;
CODE_008C83:        STX $02                   ;
CODE_008C85:        SEP #$20                  ;
CODE_008C87:        LDA $700010,x             ;
CODE_008C8B:        CLC                       ;
CODE_008C8C:        ADC $00                   ;
CODE_008C8E:        STA $00                   ;
CODE_008C90:        LDA $01                   ;
CODE_008C92:        ADC #$00                  ;
CODE_008C94:        STA $01                   ;
CODE_008C96:        INX                       ;
CODE_008C97:        DEY                       ;
CODE_008C98:        BNE CODE_008C87           ;
CODE_008C9A:        REP #$21                  ;
CODE_008C9C:        LDA $00                   ;
CODE_008C9E:        ADC $700010,x             ;
CODE_008CA2:        BNE CODE_008CB6           ;
CODE_008CA4:        INX                       ;
CODE_008CA5:        INX                       ;
CODE_008CA6:        LDA $700004               ;
CODE_008CAA:        INC A                     ;
CODE_008CAB:        STA $700004               ;
CODE_008CAF:        CMP #$0010                ;
CODE_008CB2:        BCS CODE_008CC1           ;
CODE_008CB4:        BRA CODE_008C76           ;

CODE_008CB6:        REP #$30                  ;
CODE_008CB8:        LDX $02                   ;
CODE_008CBA:        JSR CODE_008D83           ;
CODE_008CBD:        STX $02                   ;
CODE_008CBF:        BRA CODE_008CA6           ;

CODE_008CC1:        JMP CODE_008D80           ;
CODE_008CC4:        LDA $700389               ;
CODE_008CC8:        STA $00                   ;
CODE_008CCA:        LDA $700370               ;
CODE_008CCE:        AND #$00FF                ;
CODE_008CD1:        CLC                       ;
CODE_008CD2:        ADC $00                   ;
CODE_008CD4:        SEC                       ;
CODE_008CD5:        SBC #$0007                ;
CODE_008CD8:        STA $00                   ;
CODE_008CDA:        LDA $700371               ;
CODE_008CDE:        AND #$00FF                ;
CODE_008CE1:        CLC                       ;
CODE_008CE2:        ADC $00                   ;
CODE_008CE4:        SEC                       ;
CODE_008CE5:        SBC #$0003                ;
CODE_008CE8:        STA $700389               ;
CODE_008CEC:        LDA #$0307                ;
CODE_008CEF:        STA $700370               ;
CODE_008CF3:        LDA $70038A               ;
CODE_008CF7:        STA $00                   ;
CODE_008CF9:        LDA $700379               ;
CODE_008CFD:        AND #$00FF                ;
CODE_008D00:        CLC                       ;
CODE_008D01:        ADC $00                   ;
CODE_008D03:        SEC                       ;
CODE_008D04:        SBC #$000C                ;
CODE_008D07:        STA $00                   ;
CODE_008D09:        LDA $70037A               ;
CODE_008D0D:        AND #$00FF                ;
CODE_008D10:        CLC                       ;
CODE_008D11:        ADC $00                   ;
CODE_008D13:        SEC                       ;
CODE_008D14:        SBC #$0003                ;
CODE_008D17:        STA $70038A               ;
CODE_008D1B:        LDA #$030C                ;
CODE_008D1E:        STA $700379               ;
CODE_008D22:        LDA $700388               ;
CODE_008D26:        STA $00                   ;
CODE_008D28:        LDA $700381               ;
CODE_008D2C:        AND #$00FF                ;
CODE_008D2F:        CLC                       ;
CODE_008D30:        ADC $00                   ;
CODE_008D32:        SEC                       ;
CODE_008D33:        SBC #$0006                ;
CODE_008D36:        STA $00                   ;
CODE_008D38:        LDA $700382               ;
CODE_008D3C:        AND #$00FF                ;
CODE_008D3F:        CLC                       ;
CODE_008D40:        ADC $00                   ;
CODE_008D42:        SEC                       ;
CODE_008D43:        SBC #$0001                ;
CODE_008D46:        STA $700388               ;
CODE_008D4A:        LDA #$0106                ;
CODE_008D4D:        STA $700381               ;
CODE_008D51:        LDA $7004A0               ;
CODE_008D55:        STA $00                   ;
CODE_008D57:        LDA $70038A               ;
CODE_008D5B:        AND #$00FF                ;
CODE_008D5E:        CLC                       ;
CODE_008D5F:        ADC $00                   ;
CODE_008D61:        SEC                       ;
CODE_008D62:        SBC #$0006                ;
CODE_008D65:        STA $00                   ;
CODE_008D67:        LDA $70038B               ;
CODE_008D6B:        AND #$00FF                ;
CODE_008D6E:        CLC                       ;
CODE_008D6F:        ADC $00                   ;
CODE_008D71:        SEC                       ;
CODE_008D72:        SBC #$0000                ;
CODE_008D75:        STA $7004A0               ;
CODE_008D79:        LDA #$0007                ;
CODE_008D7C:        STA $70038A               ;
CODE_008D80:        SEP #$30                  ;
CODE_008D82:        RTS                       ;

CODE_008D83:        LDA $700004               ;
CODE_008D87:        AND #$0003                ;
CODE_008D8A:        ASL A                     ;
CODE_008D8B:        TAY                       ;
CODE_008D8C:        LDA DATA_008DDB,y               ;
CODE_008D8F:        DEC A                     ;
CODE_008D90:        DEC A                     ;
CODE_008D91:        STA $0E                   ;
CODE_008D93:        LDA DATA_008DD3,y               ;
CODE_008D96:        TAY                       ;
CODE_008D97:        STZ $00                   ;
CODE_008D99:        SEP #$20                  ;

CODE_008D9B:        LDA DATA_008DE3,y               ;
CODE_008D9E:        STA $700010,x             ;
CODE_008DA2:        CLC                       ;
CODE_008DA3:        ADC $00                   ;
CODE_008DA5:        STA $00                   ;
CODE_008DA7:        LDA $01                   ;
CODE_008DA9:        ADC #$00                  ;
CODE_008DAB:        STA $01                   ;
CODE_008DAD:        LDA DATA_008DE3,y               ;
CODE_008DB0:        INX                       ;
CODE_008DB1:        INY                       ;
CODE_008DB2:        DEC $0E                   ;
CODE_008DB4:        BNE CODE_008D9B           ;
CODE_008DB6:        DEC $0F                   ;
CODE_008DB8:        BPL CODE_008D9B           ;
CODE_008DBA:        REP #$20                  ;
CODE_008DBC:        LDA #$0000                ;
CODE_008DBF:        SEC                       ;
CODE_008DC0:        SBC $00                   ;
CODE_008DC2:        STA $700010,x             ;
CODE_008DC6:        LDA $D0                   ;
CODE_008DC8:        AND #$0003                ;
CODE_008DCB:        CMP #$0003                ;
CODE_008DCE:        BNE CODE_008DD0           ;
CODE_008DD0:        INX                       ;
CODE_008DD1:        INX                       ;
CODE_008DD2:        RTS                       ;

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

CODE_008F03:        PHX                       ;
CODE_008F04:        PHY                       ;
CODE_008F05:        PHB                       ;
CODE_008F06:        PHK                       ;
CODE_008F07:        PLB                       ;
CODE_008F08:        LDA $701FF8               ;
CODE_008F0C:        BEQ CODE_008F11           ;
CODE_008F0E:        JMP CODE_00900C           ;

CODE_008F11:        REP #$30                  ;
CODE_008F13:        STZ $00                   ;
CODE_008F15:        LDA $700004               ;
CODE_008F19:        TAX                       ;
CODE_008F1A:        SEP #$20                  ;
CODE_008F1C:        LDA $077A                 ;
CODE_008F1F:        BEQ CODE_008F38           ;
CODE_008F21:        LDA $07FC                 ;
CODE_008F24:        CMP $0781                 ;
CODE_008F27:        BEQ CODE_008F30           ;
CODE_008F29:        CMP #$01                  ;
CODE_008F2B:        BEQ CODE_008F38           ;
CODE_008F2D:        JMP CODE_008F77           ;

CODE_008F30:        LDA $075F                 ;
CODE_008F33:        CMP $0766                 ;
CODE_008F36:        BCC CODE_008F77           ;
CODE_008F38:        LDA $07FC                 ;
CODE_008F3B:        STA $02                   ;
CODE_008F3D:        CMP $700015,x             ;
CODE_008F41:        BEQ CODE_008F49           ;
CODE_008F43:        CMP #$01                  ;
CODE_008F45:        BEQ CODE_008F68           ;
CODE_008F47:        BRA CODE_008F54           ;

CODE_008F49:        LDA $700010,x             ;
CODE_008F4D:        BMI CODE_008F68           ;
CODE_008F4F:        CMP $075F                 ;
CODE_008F52:        BCC CODE_008F68           ;
CODE_008F54:        LDA $700010,x             ;
CODE_008F58:        JSR CODE_0092F6           ;
CODE_008F5B:        LDA $700010,x             ;
CODE_008F5F:        JSR CODE_0092F6           ;
CODE_008F62:        LDA $700010,x             ;
CODE_008F66:        BRA CODE_008F75           ;

CODE_008F68:        LDA $075F                 ;
CODE_008F6B:        JSR CODE_0092F6           ;
CODE_008F6E:        LDA #$00                  ;
CODE_008F70:        JSR CODE_0092F6           ;
CODE_008F73:        LDA #$00                  ;
CODE_008F75:        BRA CODE_008FB6           ;

CODE_008F77:        LDA $0781                 ;
CODE_008F7A:        STA $02                   ;
CODE_008F7C:        CMP $700015,x             ;
CODE_008F80:        BEQ CODE_008F88           ;
CODE_008F82:        CMP #$01                  ;
CODE_008F84:        BEQ CODE_008FA7           ;
CODE_008F86:        BRA CODE_008F93           ;

CODE_008F88:        LDA $700010,x             ;
CODE_008F8C:        BMI CODE_008FA7           ;
CODE_008F8E:        CMP $0766                 ;
CODE_008F91:        BCC CODE_008FA7           ;
CODE_008F93:        LDA $700010,x             ;
CODE_008F97:        JSR CODE_0092F6           ;
CODE_008F9A:        LDA $700010,x             ;
CODE_008F9E:        JSR CODE_0092F6           ;
CODE_008FA1:        LDA $700010,x             ;
CODE_008FA5:        BRA CODE_008FB6           ;

CODE_008FA7:        LDA $0766                 ;
CODE_008FAA:        JSR CODE_0092F6           ;
CODE_008FAD:        LDA $0763                 ;
CODE_008FB0:        JSR CODE_0092F6           ;
CODE_008FB3:        LDA $0767                 ;
CODE_008FB6:        JSR CODE_0092F6           ;
CODE_008FB9:        LDA $075A                 ;
CODE_008FBC:        STA $04                   ;
CODE_008FBE:        LDA $0761                 ;
CODE_008FC1:        STA $05                   ;
CODE_008FC3:        REP #$20                  ;
CODE_008FC5:        LDA $0753                 ;
CODE_008FC8:        AND #$00FF                ;
CODE_008FCB:        TAY                       ;
CODE_008FCC:        SEP #$20                  ;
CODE_008FCE:        LDA $0004,y               ;
CODE_008FD1:        BPL CODE_008FD5           ;
CODE_008FD3:        LDA #$04                  ;
CODE_008FD5:        JSR CODE_0092F6           ;
CODE_008FD8:        TYA                       ;
CODE_008FD9:        EOR #$01                  ;
CODE_008FDB:        TAY                       ;
CODE_008FDC:        LDA $0004,y               ;
CODE_008FDF:        BPL CODE_008FE3           ;
CODE_008FE1:        LDA #$04                  ;
CODE_008FE3:        JSR CODE_0092F6           ;
CODE_008FE6:        PHX                       ;
CODE_008FE7:        JSR CODE_009083           ;
CODE_008FEA:        PLX                       ;
CODE_008FEB:        LDA $700010,x             ;
CODE_008FEF:        ORA $02                   ;
CODE_008FF1:        JSR CODE_0092F6           ;
CODE_008FF4:        LDA $077A                 ;
CODE_008FF7:        JSR CODE_0092F6           ;
CODE_008FFA:        REP #$20                  ;
CODE_008FFC:        LDA #$0000                ;
CODE_008FFF:        SEC                       ;
CODE_009000:        SBC $00                   ;
CODE_009002:        STA $700010,x             ;
CODE_009006:        SEP #$30                  ;
CODE_009008:        PLB                       ;
CODE_009009:        PLY                       ;
CODE_00900A:        PLX                       ;
CODE_00900B:        RTL                       ;

CODE_00900C:        REP #$30                  ;
CODE_00900E:        STZ $00                   ;
CODE_009010:        LDA $700004               ;
CODE_009014:        TAX                       ;
CODE_009015:        SEP #$20                  ;
CODE_009017:        LDA $701FF9               ;
CODE_00901B:        JSR CODE_0092F6           ;
CODE_00901E:        LDA #$00                  ;
CODE_009020:        JSR CODE_0092F6           ;
CODE_009023:        LDA #$00                  ;
CODE_009025:        JSR CODE_0092F6           ;
CODE_009028:        LDA $075A                 ;
CODE_00902B:        STA $04                   ;
CODE_00902D:        LDA $0761                 ;
CODE_009030:        STA $05                   ;
CODE_009032:        REP #$20                  ;
CODE_009034:        LDA $0753                 ;
CODE_009037:        AND #$00FF                ;
CODE_00903A:        TAY                       ;
CODE_00903B:        SEP #$20                  ;
CODE_00903D:        LDA $0004,y               ;
CODE_009040:        BPL CODE_009044           ;
CODE_009042:        LDA #$04                  ;
CODE_009044:        JSR CODE_0092F6           ;
CODE_009047:        TYA                       ;
CODE_009048:        EOR #$01                  ;
CODE_00904A:        TAY                       ;
CODE_00904B:        LDA $0004,y               ;
CODE_00904E:        BPL CODE_009052           ;
CODE_009050:        LDA #$04                  ;
CODE_009052:        JSR CODE_0092F6           ;
CODE_009055:        PHX                       ;
CODE_009056:        JSR CODE_009083           ;
CODE_009059:        PLX                       ;
CODE_00905A:        LDA $701FF8               ;
CODE_00905E:        JSR CODE_0092F6           ;
CODE_009061:        LDA $077A                 ;
CODE_009064:        JSR CODE_0092F6           ;
CODE_009067:        REP #$20                  ;
CODE_009069:        LDA #$0000                ;
CODE_00906C:        SEC                       ;
CODE_00906D:        SBC $00                   ;
CODE_00906F:        STA $700010,x             ;
CODE_009073:        SEP #$30                  ;
CODE_009075:        LDA #$00                  ;
CODE_009077:        STA $701FF8               ;
CODE_00907B:        STA $701FF9               ;
CODE_00907F:        PLB                       ;
CODE_009080:        PLY                       ;
CODE_009081:        PLX                       ;
CODE_009082:        RTL                       ;

CODE_009083:        PHB                       ;
CODE_009084:        LDA #$70                  ;
CODE_009086:        PHA                       ;
CODE_009087:        PLB                       ;
CODE_009088:        PHD                       ;
CODE_009089:        LDA #$07                  ;
CODE_00908B:        XBA                       ;
CODE_00908C:        LDA #$00                  ;
CODE_00908E:        TCD                       ;
CODE_00908F:        LDX #$0005                ;
CODE_009092:        SEC                       ;
CODE_009093:        LDA $C8,x                 ;
CODE_009095:        SBC $1FE0,x               ;
CODE_009098:        DEX                       ;
CODE_009099:        BPL CODE_009093           ;
CODE_00909B:        BCC CODE_0090A9           ;
CODE_00909D:        INX                       ;
CODE_00909E:        LDA $C8,x                 ;
CODE_0090A0:        STA $1FE0,x               ;
CODE_0090A3:        INX                       ;
CODE_0090A4:        CPX #$0006                ;
CODE_0090A7:        BCC CODE_00909E           ;
CODE_0090A9:        PLD                       ;
CODE_0090AA:        PLB                       ;
CODE_0090AB:        RTS                       ;

CODE_0090AC:        PHX                       ;
CODE_0090AD:        PHY                       ;
CODE_0090AE:        PHB                       ;
CODE_0090AF:        PHK                       ;
CODE_0090B0:        PLB                       ;
CODE_0090B1:        REP #$30                  ;
CODE_0090B3:        STZ $00                   ;
CODE_0090B5:        LDA $700004               ;
CODE_0090B9:        TAX                       ;
CODE_0090BA:        SEP #$20                  ;
CODE_0090BC:        LDA $700010,x             ;
CODE_0090C0:        BMI CODE_0090E9           ;
CODE_0090C2:        CMP $075F                 ;
CODE_0090C5:        BCC CODE_0090E9           ;
CODE_0090C7:        BNE CODE_0090D2           ;
CODE_0090C9:        LDA $700011,x             ;
CODE_0090CD:        CMP $075C                 ;
CODE_0090D0:        BCC CODE_0090E9           ;
CODE_0090D2:        LDA $700010,x             ;
CODE_0090D6:        JSR CODE_0092F6           ;
CODE_0090D9:        LDA $700010,x             ;
CODE_0090DD:        JSR CODE_0092F6           ;
CODE_0090E0:        LDA $700010,x             ;
CODE_0090E4:        JSR CODE_0092F6           ;
CODE_0090E7:        BRA CODE_0090FB           ;

CODE_0090E9:        LDA $075F                 ;
CODE_0090EC:        JSR CODE_0092F6           ;
CODE_0090EF:        LDA $075C                 ;
CODE_0090F2:        JSR CODE_0092F6           ;
CODE_0090F5:        LDA $0760                 ;
CODE_0090F8:        JSR CODE_0092F6           ;
CODE_0090FB:        LDA $075A                 ;
CODE_0090FE:        BPL CODE_009102           ;
CODE_009100:        LDA #$04                  ;
CODE_009102:        JSR CODE_0092F6           ;
CODE_009105:        PHX                       ;
CODE_009106:        JSR CODE_009129           ;
CODE_009109:        PLX                       ;
CODE_00910A:        LDA $0F2B                 ;
CODE_00910D:        JSR CODE_0092F6           ;
CODE_009110:        LDA $7FFB05               ;
CODE_009114:        JSR CODE_0092F6           ;
CODE_009117:        REP #$20                  ;
CODE_009119:        LDA #$0000                ;
CODE_00911C:        SEC                       ;
CODE_00911D:        SBC $00                   ;
CODE_00911F:        STA $700010,x             ;
CODE_009123:        SEP #$30                  ;
CODE_009125:        PLB                       ;
CODE_009126:        PLY                       ;
CODE_009127:        PLX                       ;
CODE_009128:        RTL                       ;

CODE_009129:        PHB                       ;
CODE_00912A:        LDA #$70                  ;
CODE_00912C:        PHA                       ;
CODE_00912D:        PLB                       ;
CODE_00912E:        PHD                       ;
CODE_00912F:        LDA #$07                  ;
CODE_009131:        XBA                       ;
CODE_009132:        LDA #$00                  ;
CODE_009134:        TCD                       ;
CODE_009135:        LDX #$0005                ;
CODE_009138:        SEC                       ;
CODE_009139:        LDA $C8,x                 ;
CODE_00913B:        SBC $1FE8,x               ;
CODE_00913E:        DEX                       ;
CODE_00913F:        BPL CODE_009139           ;
CODE_009141:        BCC CODE_00914F           ;
CODE_009143:        INX                       ;
CODE_009144:        LDA $C8,x                 ;
CODE_009146:        STA $1FE8,x               ;
CODE_009149:        INX                       ;
CODE_00914A:        CPX #$0006                ;
CODE_00914D:        BCC CODE_009144           ;
CODE_00914F:        PLD                       ;
CODE_009150:        PLB                       ;
CODE_009151:        RTS                       ;

CODE_009152:        PHX                       ;
CODE_009153:        PHY                       ;
CODE_009154:        PHB                       ;
CODE_009155:        PHK                       ;
CODE_009156:        PLB                       ;
CODE_009157:        STZ $0F                   ;
CODE_009159:        LDA $04E8                 ;
CODE_00915C:        CMP #$13                  ;
CODE_00915E:        BNE CODE_009165           ;
CODE_009160:        DEC $04E8                 ;
CODE_009163:        INC $0F                   ;
CODE_009165:        STZ $02                   ;
CODE_009167:        STZ $03                   ;
CODE_009169:        STZ $00                   ;
CODE_00916B:        STZ $01                   ;
CODE_00916D:        LDA $04E8                 ;
CODE_009170:        CMP #$03                  ;
CODE_009172:        BCC CODE_00917B           ;
CODE_009174:        SEC                       ;
CODE_009175:        SBC #$03                  ;
CODE_009177:        INC $02                   ;
CODE_009179:        BRA CODE_009170           ;

CODE_00917B:        REP #$10                  ;
CODE_00917D:        STA $03                   ;
CODE_00917F:        LDA $700005               ;
CODE_009183:        XBA                       ;
CODE_009184:        LDA $700004               ;
CODE_009188:        TAX                       ;
CODE_009189:        LDA $0F                   ;
CODE_00918B:        BNE CODE_0091B4           ;
CODE_00918D:        LDA $700010,x             ;
CODE_009191:        BMI CODE_0091B4           ;
CODE_009193:        CMP $02                   ;
CODE_009195:        BEQ CODE_00919C           ;
CODE_009197:        BCC CODE_0091B4           ;
CODE_009199:        JMP CODE_0091A4           ;

CODE_00919C:        LDA $700011,x             ;
CODE_0091A0:        CMP $03                   ;
CODE_0091A2:        BCC CODE_0091B4           ;
CODE_0091A4:        LDA $700010,x             ;
CODE_0091A8:        JSR CODE_0092F6           ;
CODE_0091AB:        LDA $700010,x             ;
CODE_0091AF:        JSR CODE_0092F6           ;
CODE_0091B2:        BRA CODE_0091BE           ;

CODE_0091B4:        LDA $02                   ;
CODE_0091B6:        JSR CODE_0092F6           ;
CODE_0091B9:        LDA $03                   ;
CODE_0091BB:        JSR CODE_0092F6           ;
CODE_0091BE:        LDA $04EE                 ;
CODE_0091C1:        BNE CODE_0091C5           ;
CODE_0091C3:        LDA #$05                  ;
CODE_0091C5:        JSR CODE_0092F6           ;
CODE_0091C8:        LDA $062D                 ;
CODE_0091CB:        JSR CODE_0092F6           ;
CODE_0091CE:        LDA $062E                 ;
CODE_0091D1:        JSR CODE_0092F6           ;
CODE_0091D4:        LDA $062F                 ;
CODE_0091D7:        JSR CODE_0092F6           ;
CODE_0091DA:        LDA $0630                 ;
CODE_0091DD:        JSR CODE_0092F6           ;
CODE_0091E0:        REP #$20                  ;
CODE_0091E2:        LDA #$0000                ;
CODE_0091E5:        SEC                       ;
CODE_0091E6:        SBC $00                   ;
CODE_0091E8:        STA $700010,x             ;
CODE_0091EC:        SEP #$30                  ;
CODE_0091EE:        LDA $0F                   ;
CODE_0091F0:        BEQ CODE_0091F5           ;
CODE_0091F2:        INC $04E8                 ;
CODE_0091F5:        PLB                       ;
CODE_0091F6:        PLY                       ;
CODE_0091F7:        PLX                       ;
CODE_0091F8:        RTL                       ;

CODE_0091F9:        STZ $00                   ;
CODE_0091FB:        STZ $01                   ;
CODE_0091FD:        LDA $700010,x             ;
CODE_009201:        JSR CODE_0092F6           ;
CODE_009204:        LDA $700010,x             ;
CODE_009208:        JSR CODE_0092F6           ;
CODE_00920B:        LDA $700010,x             ;
CODE_00920F:        JSR CODE_0092F6           ;
CODE_009212:        LDA $062D                 ;
CODE_009215:        JSR CODE_0092F6           ;
CODE_009218:        LDA $062E                 ;
CODE_00921B:        JSR CODE_0092F6           ;
CODE_00921E:        LDA $062F                 ;
CODE_009221:        JSR CODE_0092F6           ;
CODE_009224:        LDA $0630                 ;
CODE_009227:        JSR CODE_0092F6           ;
CODE_00922A:        JMP CODE_0091E0           ;

CODE_00922D:        PHX                       ;
CODE_00922E:        PHY                       ;
CODE_00922F:        PHB                       ;
CODE_009230:        PHK                       ;
CODE_009231:        PLB                       ;
CODE_009232:        REP #$30                  ;
CODE_009234:        LDA $00                   ;
CODE_009236:        PHA                       ;
CODE_009237:        STZ $00                   ;
CODE_009239:        LDA $700004               ;
CODE_00923D:        TAX                       ;
CODE_00923E:        SEP #$20                  ;
CODE_009240:        LDA $700010,x             ;
CODE_009244:        BPL CODE_00924D           ;
CODE_009246:        INC A                     ;
CODE_009247:        STA $700010,x             ;
CODE_00924B:        BRA CODE_009257           ;

CODE_00924D:        CMP $0727                 ;
CODE_009250:        BEQ CODE_009257           ;
CODE_009252:        BCC CODE_009257           ;
CODE_009254:        JMP CODE_00928B           ;

CODE_009257:        LDA $0727                 ;
CODE_00925A:        STA $700010,x             ;
CODE_00925E:        PHX                       ;
CODE_00925F:        LDY #$0000                ;
CODE_009262:        LDA $1D00,y               ;
CODE_009265:        STA $70004C,x             ;
CODE_009269:        INX                       ;
CODE_00926A:        INY                       ;
CODE_00926B:        CPY #$0080                ;
CODE_00926E:        BCC CODE_009262           ;
CODE_009270:        PLX                       ;
CODE_009271:        PHX                       ;
CODE_009272:        LDY #$0000                ;
CODE_009275:        LDA $1EED,y               ;
CODE_009278:        STA $700014,x             ;
CODE_00927C:        INX                       ;
CODE_00927D:        INY                       ;
CODE_00927E:        CPY #$0038                ;
CODE_009281:        BCC CODE_009275           ;
CODE_009283:        PLX                       ;
CODE_009284:        LDA $072B                 ;
CODE_009287:        STA $700113,x             ;
CODE_00928B:        PHX                       ;
CODE_00928C:        LDY #$0000                ;
CODE_00928F:        LDA $1D80,y               ;
CODE_009292:        STA $7000CC,x             ;
CODE_009296:        INX                       ;
CODE_009297:        INY                       ;
CODE_009298:        CPY #$0046                ;
CODE_00929B:        BCC CODE_00928F           ;
CODE_00929D:        PLX                       ;
CODE_00929E:        PHX                       ;
CODE_00929F:        LDA $0736                 ;
CODE_0092A2:        BPL CODE_0092A6           ;
CODE_0092A4:        LDA #$04                  ;
CODE_0092A6:        STA $700012,x             ;
CODE_0092AA:        LDA $0737                 ;
CODE_0092AD:        BPL CODE_0092B1           ;
CODE_0092AF:        LDA #$04                  ;
CODE_0092B1:        STA $700013,x             ;
CODE_0092B5:        PLX                       ;
CODE_0092B6:        PHX                       ;
CODE_0092B7:        LDA $7E3971               ;
CODE_0092BB:        STA $700112,x             ;
CODE_0092BF:        LDY #$0104                ;
CODE_0092C2:        PLX                       ;
CODE_0092C3:        LDA $700010,x             ;
CODE_0092C7:        CLC                       ;
CODE_0092C8:        ADC $00                   ;
CODE_0092CA:        STA $00                   ;
CODE_0092CC:        LDA #$00                  ;
CODE_0092CE:        ADC $01                   ;
CODE_0092D0:        STA $01                   ;
CODE_0092D2:        INX                       ;
CODE_0092D3:        DEY                       ;
CODE_0092D4:        BNE CODE_0092C3           ;
CODE_0092D6:        REP #$20                  ;
CODE_0092D8:        LDA #$0000                ;
CODE_0092DB:        SEC                       ;
CODE_0092DC:        SBC $00                   ;
CODE_0092DE:        STA $700010,x             ;
CODE_0092E2:        SEP #$20                  ;
CODE_0092E4:        LDA #$00                  ;
CODE_0092E6:        STA $7FFF03               ;
CODE_0092EA:        SEP #$30                  ;
CODE_0092EC:        PLA                       ;
CODE_0092ED:        STA $01                   ;
CODE_0092EF:        PLA                       ;
CODE_0092F0:        STA $00                   ;
CODE_0092F2:        PLB                       ;
CODE_0092F3:        PLY                       ;
CODE_0092F4:        PLX                       ;
CODE_0092F5:        RTL                       ;

CODE_0092F6:        STA $700010,x             ;
CODE_0092FA:        INX                       ;
CODE_0092FB:        CLC                       ;
CODE_0092FC:        ADC $00                   ;
CODE_0092FE:        STA $00                   ;
CODE_009300:        LDA $01                   ;
CODE_009302:        ADC #$00                  ;
CODE_009304:        STA $01                   ;
CODE_009306:        RTS                       ;

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
CODE_0093C7:        JSR CODE_0083B9           ;
CODE_0093CA:        SEP #$20                  ;8-bit A
CODE_0093CC:        PHD                       ;Push direct page
CODE_0093CD:        STZ $2121                 ;CGRAM 'pointer': Palette 00
CODE_0093D0:        REP #$20                  ;16-bit A
CODE_0093D2:        LDA #$3B3B                ;
CODE_0093D5:        STA $02                   ;
CODE_0093D7:        LDA #$0800                ;
CODE_0093DA:        STA $00                   ;
CODE_0093DC:        LDY #$00                  ;
CODE_0093DE:        JSL CODE_008690           ;
CODE_0093E2:        LDA #$4300                ;\Direct page: $43xx
CODE_0093E5:        TCD                       ;/
CODE_0093E6:        LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_0093E8:        STY $2115                 ;/
CODE_0093EB:        LDA #$7FFF                ;\4 colors which are white, and 3 blue tints
CODE_0093EE:        STA $0218                 ; |They are located at palette 00
CODE_0093F1:        LDA #$7FF9                ; |Colors $0C, $0D, $0E, $0F
CODE_0093F4:        STA $021A                 ; |
CODE_0093F7:        LDA #$7FD0                ; |
CODE_0093FA:        STA $021C                 ; |
CODE_0093FD:        LDA #$6AE9                ;/
CODE_009400:        STA $021E                 ;
CODE_009403:        LDA #$2200                ;\Base register: $2122
CODE_009406:        STA $00                   ;/Writing mode: 1 regs write once
CODE_009408:        LDA #$0200                ;\DMA source: $00:0200
CODE_00940B:        STA $02                   ; |
CODE_00940D:        LDX #$00                  ; |
CODE_00940F:        STX $04                   ;/
CODE_009411:        STA $05                   ;DMA Size: 0x200/512 bytes.
CODE_009413:        LDY #$01                  ;\
CODE_009415:        STY $420B                 ;/Enable DMA channel 1
CODE_009418:        LDA #$1801                ;\Base register: $2118
CODE_00941B:        STA $00                   ;/Writing mode: 2 regs write once
CODE_00941D:        LDA #$0000                ;\VRAM Address: $0000
CODE_009420:        STA $2116                 ;/
CODE_009423:        LDA.w #DATA_199800        ;\
CODE_009426:        STA $02                   ; |DMA Source: $19:9800.
CODE_009428:        LDX.b #DATA_199800>>16    ; |(SMB2 font GFX is located there)
CODE_00942A:        STX $04                   ;/
CODE_00942C:        LDA #$0800                ;\DMA Size:
CODE_00942F:        STA $05                   ;/0x800 bytes/2kB
CODE_009431:        STY $420B                 ;Enable DMA channel
CODE_009434:        PHB                       ;\
CODE_009435:        LDX #$00                  ; |Set program bank: $00
CODE_009437:        PHX                       ; |
CODE_009438:        PLB                       ;/
CODE_009439:        LDX #$00                  ;Load loop stuff.
CODE_00943B:        LDA.w DATA_009307,x         ;\
CODE_00943E:        STA $09CA,x               ; |
CODE_009441:        LDA.w DATA_009337,x         ; |
CODE_009444:        STA $0A4A,x               ; |Store all the text to RAM
CODE_009447:        LDA.w DATA_009367,x         ; |
CODE_00944A:        STA $0ACA,x               ; |
CODE_00944D:        LDA.w DATA_009397,x         ; |
CODE_009450:        STA $0C4A,x               ;/
CODE_009453:        INX                       ;\
CODE_009454:        INX                       ; |If not done yet (uploading 48 * 4 tiles)
CODE_009455:        CPX #$30                  ; |
CODE_009457:        BNE CODE_00943B           ;/ Loop

CODE_009459:        PLB                       ;Recover program bank.
CODE_00945A:        LDA #$1000                ;\VRAM address: $1000
CODE_00945D:        STA $2116                 ;/
CODE_009460:        LDA #$0800                ;\
CODE_009463:        STA $02                   ; |DMA Source: $00:0800
CODE_009465:        LDX #$00                  ; |
CODE_009467:        STX $04                   ;/
CODE_009469:        STA $05                   ;DMA Size: 0x800 bytes/2kB
CODE_00946B:        STY $420B                 ;Activate DMA channel 1
CODE_00946E:        SEP #$20                  ;8-bit A
CODE_009470:        PLD                       ;Recover direct page.
CODE_009471:        LDA #$10                  ;\BG1 tilemap address: $4000
CODE_009473:        STA $2107                 ;/
CODE_009476:        STZ $210B                 ;BG1 char address: $0000
CODE_009479:        LDA #$01                  ;\Enable BG1 on main screen
CODE_00947B:        STA $212C                 ; |nothing on subscreen
CODE_00947E:        STZ $212D                 ;/
CODE_009481:        LDA #$01                  ;\Mode 1, 8x8 tiles
CODE_009483:        STA $2105                 ;/
CODE_009486:        STZ $2130                 ;No color math?
CODE_009489:        STZ $2131                 ;No CGADSUB
CODE_00948C:        STZ $210D                 ;\
CODE_00948F:        STZ $210D                 ; |
CODE_009492:        STZ $210E                 ; |NO BG1/2/3 Horizontal and vertical scroll
CODE_009495:        STZ $210E                 ; |
CODE_009498:        STZ $210F                 ; |
CODE_00949B:        STZ $210F                 ; |
CODE_00949E:        STZ $2110                 ; |
CODE_0094A1:        STZ $2110                 ; |
CODE_0094A4:        STZ $2111                 ; |
CODE_0094A7:        STZ $2111                 ; |
CODE_0094AA:        STZ $2112                 ; |
CODE_0094AD:        STZ $2112                 ;/
CODE_0094B0:        LDA #$0F                  ;\Maximum brightness
CODE_0094B2:        STA $2100                 ;/
CODE_0094B5:        BIT $4212                 ;\Wait for VBlank
CODE_0094B8:        BPL CODE_0094B5           ;/
CODE_0094BA:        INC $FD                   ;\From now on everything from here will execute
CODE_0094BC:        LDA $FD                   ; |on a vblank. Increase frame counter
CODE_0094BE:        CMP #$18                  ; |If it isn't $18 yet
CODE_0094C0:        BNE CODE_009501           ;/ branch 
CODE_0094C2:        STZ $FD                   ;Store zero to the something
CODE_0094C4:        STZ $2121                 ;CGRAM Palette destination: 00
CODE_0094C7:        REP #$20                  ;16-bit A
CODE_0094C9:        LDA #$4300                ;\Direct page:
CODE_0094CC:        TCD                       ;/$43xx
CODE_0094CD:        LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_0094CF:        STY $2115                 ;/
CODE_0094D2:        LDA $021A                 ;\Load 2nd color.
CODE_0094D5:        PHA                       ; |Push it into A
CODE_0094D6:        LDA $021C                 ; |Load 3rd color
CODE_0094D9:        STA $021A                 ; |Overwrite 2nd color
CODE_0094DC:        LDA $021E                 ; |load last color
CODE_0094DF:        STA $021C                 ; |overwrite 3rd color
CODE_0094E2:        PLA                       ; |Pull 2nd color from A
CODE_0094E3:        STA $021E                 ;/Store into last color
CODE_0094E6:        LDA #$2200                ;\Base register: $2122. 1 reg write once
CODE_0094E9:        STA $00                   ; |
CODE_0094EB:        LDA #$0200                ; |
CODE_0094EE:        STA $02                   ; |Source address: $00:0200
CODE_0094F0:        LDX #$00                  ; |
CODE_0094F2:        STX $04                   ;/
CODE_0094F4:        STA $05                   ;DMA Size: 512 bytes.
CODE_0094F6:        LDY #$01                  ;\Enable DMA channel 1
CODE_0094F8:        STY $420B                 ;/
CODE_0094FB:        LDA #$0000                ;\
CODE_0094FE:        TCD                       ; |Recover direct page. 8-bit A
CODE_0094FF:        SEP #$20                  ;/
CODE_009501:        BIT $4212                 ;\If you have Vblank, don't continue
CODE_009504:        BMI CODE_009501           ;/if out of Vblank then continue with...
CODE_009506:        JMP CODE_0094B5           ;...Loop forever..... evil coding

;Tables which make the following text:
;"WARNING: IT IS A SERIOUS CRIME TO COPY VIDEO GAMES.
;18 USC 2319 PLEASE REFER TO YOUR NINTENDO GAME
;INSTRUCTION BOOKLET FOR FURTHER INFORMATION."

DATA_009509:        db $20,$00,$0A,$00,$1B,$00,$17,$00 ;
                    db $12,$00,$17,$00,$10,$00,$3A,$00 ;
                    db $3B,$00,$12,$00,$1D,$00,$3B,$00 ;
                    db $12,$00,$1C,$00,$3B,$00,$0A,$00 ;
                    db $3B,$00,$1C,$00,$0E,$00,$1B,$00 ;
                    db $12,$00,$18,$00,$1E,$00,$1C,$00 ;
                    db $3B,$00,$3B,$00 ;

DATA_00953D:        db $0C,$00,$1B,$00,$12,$00,$16,$00 ;
                    db $0E,$00,$3B,$00,$1D,$00,$18,$00 ;
                    db $3B,$00,$0C,$00,$18,$00,$19,$00 ;
                    db $22,$00,$3B,$00,$1F,$00,$12,$00 ;
                    db $0D,$00,$0E,$00,$18,$00,$3B,$00 ;
                    db $10,$00,$0A,$00,$16,$00,$0E,$00 ;
                    db $1C,$00,$26,$00 ;

DATA_009571:        db $01,$00,$08,$00,$3B,$00,$1E,$00 ;
                    db $1C,$00,$0C,$00,$3B,$00,$02,$00 ;
                    db $03,$00,$01,$00,$09,$00,$3B,$00 ;
                    db $19,$00,$15,$00,$0E,$00,$0A,$00 ;
                    db $1C,$00,$0E,$00,$3B,$00,$1B,$00 ;
                    db $0E,$00,$0F,$00,$0E,$00,$1B,$00 ;
                    db $3B,$00,$3B,$00 ;

DATA_0095A5:        db $1D,$00,$18,$00,$3B,$00,$22,$00 ;
                    db $18,$00,$1E,$00,$1B,$00,$3B,$00 ;
                    db $17,$00,$12,$00,$17,$00,$1D,$00 ;
                    db $0E,$00,$17,$00,$0D,$00,$18,$00 ;
                    db $3B,$00,$10,$00,$0A,$00,$16,$00 ;
                    db $0E,$00,$3B,$00,$3B,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00 ;

DATA_0095D9:        db $12,$00,$17,$00,$1C,$00,$1D,$00 ;
                    db $1B,$00,$1E,$00,$0C,$00,$1D,$00 ;
                    db $12,$00,$18,$00,$17,$00,$3B,$00 ;
                    db $0B,$00,$18,$00,$18,$00,$14,$00 ;
                    db $15,$00,$0E,$00,$1D,$00,$3B,$00 ;
                    db $0F,$00,$18,$00,$1B,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00 ;

DATA_00960D:        db $0F,$00,$1E,$00,$1B,$00,$1D,$00 ;
                    db $11,$00,$0E,$00,$1B,$00,$3B,$00 ;
                    db $12,$00,$17,$00,$0F,$00,$18,$00 ;
                    db $1B,$00,$16,$00,$0A,$00,$1D,$00 ;
                    db $12,$00,$18,$00,$17,$00,$26,$00 ;
                    db $3B,$00,$3B,$00,$3B,$00,$3B,$00 ;
                    db $3B,$00,$3B,$00 ;

CODE_009641:        SEI                       ;Set interrupt flag
CODE_009642:        STZ $4200                 ;No interrupts
CODE_009645:        STZ $420C                 ;No HDMA
CODE_009648:        STZ $420B                 ;No DMA
CODE_00964B:        LDA #$80                  ;\Forced blank
CODE_00964D:        STA $2100                 ;/
CODE_009650:        STZ $2140                 ;\
CODE_009653:        STZ $2141                 ; |No SFX
CODE_009656:        STZ $2143                 ;/
CODE_009659:        LDA #$F0                  ;\
CODE_00965B:        STA $2142                 ;/Fade out the music
CODE_00965E:        JSR CODE_0083B9           ;
CODE_009661:        SEP #$20                  ;16-bit A
CODE_009663:        PHD                       ;Push direct page
CODE_009664:        STZ $2121                 ;Palette number: $00
CODE_009667:        REP #$20                  ;16-bit A
CODE_009669:        LDA #$3B3B                ;
CODE_00966C:        STA $02                   ;
CODE_00966E:        LDA #$0800                ;
CODE_009671:        STA $00                   ;
CODE_009673:        LDY #$00                  ;
CODE_009675:        JSL CODE_008690           ;
CODE_009679:        LDA #$4300                ;\Direct page: $43xx
CODE_00967C:        TCD                       ;/
CODE_00967D:        LDY #$80                  ;\increment after writing $2119/reading $213A
CODE_00967F:        STY $2115                 ;/
CODE_009682:        LDA #$7FFF                ;\
CODE_009685:        STA $0218                 ; |
CODE_009688:        LDA #$7FF9                ; |4 colors which are white, and 3 blue tints
CODE_00968B:        STA $021A                 ; |They are located at palette 00
CODE_00968E:        LDA #$7FD0                ; |Colors $0C, $0D, $0E, $0F
CODE_009691:        STA $021C                 ; |
CODE_009694:        LDA #$6AE9                ; |
CODE_009697:        STA $021E                 ;/
CODE_00969A:        LDA #$2200                ;\1 reg write once. base reg = $2122
CODE_00969D:        STA $00                   ;/CGRAM write reg
CODE_00969F:        LDA #$0200                ;\
CODE_0096A2:        STA $02                   ; |DMA Source: $00:0200
CODE_0096A4:        LDX #$00                  ; |
CODE_0096A6:        STX $04                   ;/
CODE_0096A8:        STA $05                   ;DMA size: 0x200/512 bytes.
CODE_0096AA:        LDY #$01                  ;\Enable DMA channel 1
CODE_0096AC:        STY $420B                 ;/
CODE_0096AF:        LDA #$1801                ;\Base reg: $2118: VRAM Write
CODE_0096B2:        STA $00                   ;/2 regs write once
CODE_0096B4:        LDA #$0000                ;\VRAM Address: $0000
CODE_0096B7:        STA $2116                 ;/
CODE_0096BA:        LDA.w #DATA_199800        ;\
CODE_0096BD:        STA $02                   ; |DMA Source: $19:9800
CODE_0096BF:        LDX.b #DATA_199800>>16    ; |SMB2 font GFX
CODE_0096C1:        STX $04                   ;/
CODE_0096C3:        LDA #$0800                ;\DMA Size: 0x800 bytes/2kB
CODE_0096C6:        STA $05                   ;/
CODE_0096C8:        STY $420B                 ;Enable DMA channel 1
CODE_0096CB:        PHB                       ;\
CODE_0096CC:        LDX #$00                  ; |Set program bank
CODE_0096CE:        PHX                       ; |
CODE_0096CF:        PLB                       ;/
CODE_0096D0:        LDX #$00                  ;\
CODE_0096D2:        LDA DATA_009509,x         ; |
CODE_0096D5:        STA $09C6,x               ; |
CODE_0096D8:        LDA DATA_00953D,x         ; |
CODE_0096DB:        STA $0A46,x               ; |
CODE_0096DE:        LDA DATA_009571,x         ; |Upload the 'pirated' message to RAM
CODE_0096E1:        STA $0B46,x               ; |
CODE_0096E4:        LDA DATA_0095A5,x         ; |
CODE_0096E7:        STA $0BC6,x               ; |
CODE_0096EA:        LDA DATA_0095D9,x         ; |
CODE_0096ED:        STA $0C46,x               ; |
CODE_0096F0:        LDA DATA_00960D,x         ; |
CODE_0096F3:        STA $0CC6,x               ;/
CODE_0096F6:        INX                       ;\
CODE_0096F7:        INX                       ; |If not done yet, continue uploading.
CODE_0096F8:        CPX #$34                  ; |
CODE_0096FA:        BNE CODE_0096D2           ;/
CODE_0096FC:        JMP CODE_009459           ;Continue updating palette animation and loop endlessly.

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

CODE_009BC0:        LDA $E1                   ;\
CODE_009BC2:        ASL A                     ; | Do sub-modes
CODE_009BC3:        TAX                       ; |
CODE_009BC4:        JSR (PNTR_009B80,x)       ;/
CODE_009BC7:        LDA $E1                   ;\
CODE_009BC9:        CMP #$04                  ; | If we are not on the title screen yet, branch
CODE_009BCB:        BCC CODE_009C39           ;/
CODE_009BCD:        JSR CODE_00A0E3           ; Show "Super Mario-All Stars" and Nintendo copyright text
CODE_009BD0:        LDA $E1                   ;\
CODE_009BD2:        CMP #$05                  ; | If we are not actually displaying the title screen yet, branch
CODE_009BD4:        BCC CODE_009C39           ;/
CODE_009BD6:        CMP #$1E                  ;\
CODE_009BD8:        BCS CODE_009C39           ;/
CODE_009BDA:        LDA $F0                   ;\
CODE_009BDC:        ORA $F1                   ; |
CODE_009BDE:        ORA $27                   ; | Get controller input
CODE_009BE0:        AND #$10                  ; |
CODE_009BE2:        STA $27                   ;/
CODE_009BE4:        LDA $27                   ;\ If we are not pressing start, branch
CODE_009BE6:        BEQ CODE_009C39           ;/
CODE_009BE8:        REP #$20                  ;\
CODE_009BEA:        LDA #$0200                ; |
CODE_009BED:        STA $00                   ; |
CODE_009BEF:        LDA #$CA00                ; |
CODE_009BF2:        LDY #$02                  ; | Upload palette
CODE_009BF4:        STA $02                   ; |
CODE_009BF6:        STY $04                   ; |
CODE_009BF8:        LDA #$9200                ; |
CODE_009BFB:        LDY #$7F                  ; |
CODE_009BFD:        JSL CODE_00866D           ;/
CODE_009C01:        LDA #$0000                ;\ Set color 0 to black
CODE_009C04:        STA $7F9200               ;/
CODE_009C08:        SEP #$20                  ;\
CODE_009C0A:        LDA #$25                  ; |
CODE_009C0C:        STA $011D                 ; | Set back drop color
CODE_009C0F:        LDA #$4D                  ; |
CODE_009C11:        STA $011E                 ; |
CODE_009C14:        LDA #$95                  ; |
CODE_009C16:        STA $011F                 ;/
CODE_009C19:        INC $0AC0                 ; Update CGRAM
CODE_009C1C:        JSR CODE_00B683           ; Move BG1 tilemap to RAM
CODE_009C1F:        LDA #$50                  ;\
CODE_009C21:        STA $E3                   ; | Set timer
CODE_009C23:        STZ $E4                   ;/
CODE_009C25:        LDA #$0C                  ;\
CODE_009C27:        STA $22                   ; | Set timer
CODE_009C29:        STZ $23                   ;/
CODE_009C2B:        LDA #$1E                  ;\
CODE_009C2D:        STA $E1                   ;/
CODE_009C2F:        LDA #$11                  ;\ Mute music
CODE_009C31:        STA $0060                 ;/
CODE_009C34:        LDA #$29                  ;\ Play sound effect
CODE_009C36:        STA $0063                 ;/
CODE_009C39:        RTL                       ;

CODE_009C3A:        LDA #$00                  ;
CODE_009C3C:        STA $701FF2               ;
CODE_009C40:        STZ $E7                   ;
CODE_009C42:        REP #$20                  ;
CODE_009C44:        LDA #$0200                ;\ Size
CODE_009C47:        STA $00                   ;/
CODE_009C49:        LDA.w #DATA_02CA00        ;\
CODE_009C4C:        LDY.b #DATA_02CA00>>16    ; | Source: $02:CA00
CODE_009C4E:        STA $02                   ; |
CODE_009C50:        STY $04                   ;/
CODE_009C52:        LDA #$9200                ;\ RAM: $7F:9200
CODE_009C55:        LDY #$7F                  ;/
CODE_009C57:        JSL CODE_00866D           ; Upload to RAM
CODE_009C5B:        LDA #$0000                ;\
CODE_009C5E:        STA $7F9000               ; | Make the first two colors black
CODE_009C62:        STA $7F9200               ;/
CODE_009C66:        SEP #$20                  ;
CODE_009C68:        INC $0AC0                 ; Update CGRAM
CODE_009C6B:        LDA #$10                  ;\ Sprites on main screen
CODE_009C6D:        STA $0117                 ;/
CODE_009C70:        LDA #$20                  ;
CODE_009C72:        STA $011C                 ;
CODE_009C75:        STZ $0100                 ;
CODE_009C78:        INC $E1                   ; Next sub-game mode
CODE_009C7A:        JSR CODE_00A02B           ; Draw sprite
CODE_009C7D:        INC $0100                 ; Increase screen brightness
CODE_009C80:        LDA $0100                 ;\
CODE_009C83:        CMP #$0F                  ; | Branch if we haven't reached max brightness
CODE_009C85:        BNE CODE_009C89           ;/
CODE_009C87:        INC $E1                   ; Next sub-game mode
CODE_009C89:        RTS                       ;

CODE_009C8A:        LDA $1C                   ;\
CODE_009C8C:        CMP #$61                  ; |If the presents timer reaches this value, branch
CODE_009C8E:        BNE CODE_009C9D           ;/
CODE_009C90:        LDA #$01                  ;\Blink SFX
CODE_009C92:        STA $0063                 ; |
CODE_009C95:        STA $24                   ; |Set blinking timer to #$02
CODE_009C97:        LDA #$02                  ; |
CODE_009C99:        STA $22                   ; |
CODE_009C9B:        STZ $23                   ;/
CODE_009C9D:        JSR CODE_00A02B           ; Keep the sprite drawn
CODE_009CA0:        LDA $24                   ;\ If it is not time to blink, branch
CODE_009CA2:        BEQ CODE_009CA7           ;/
CODE_009CA4:        JSR CODE_00A0A6           ;
CODE_009CA7:        DEC $1C                   ;\ Decrease presents timer
CODE_009CA9:        BNE CODE_009C89           ;/ If it is not zero, return
CODE_009CAB:        INC $E1                   ; Next sub-game mode
CODE_009CAD:        LDA #$F0                  ;
CODE_009CAF:        STA $1D                   ;
CODE_009CB1:        STZ $21                   ;
CODE_009CB3:        BRA CODE_009CB6           ;

CODE_009CB5:        RTS                       ;

CODE_009CB6:        STZ $22                   ;
CODE_009CB8:        LDA #$01                  ;
CODE_009CBA:        STA $24                   ;
CODE_009CBC:        JSR CODE_00A02B           ; Keep the sprite drawn
CODE_009CBF:        DEC $0100                 ;\ Decrease screen brightness
CODE_009CC2:        BNE CODE_009CB5           ;/ If it is not zero, branch
CODE_009CC4:        LDA #$80                  ;\
CODE_009CC6:        STA $2100                 ; | Force blank
CODE_009CC9:        STA $0100                 ;/
CODE_009CCC:        JSR CODE_00B683           ; Upload BG1 tilemap and set some timers
CODE_009CCF:        REP #$20                  ;
CODE_009CD1:        LDA #$0200                ;\
CODE_009CD4:        STA $00                   ; |
CODE_009CD6:        LDA #$C800                ; |
CODE_009CD9:        LDY #$02                  ; |
CODE_009CDB:        STA $02                   ; | Upload title screen palette
CODE_009CDD:        STY $04                   ; |
CODE_009CDF:        LDA #$9200                ; |
CODE_009CE2:        LDY #$7F                  ; |
CODE_009CE4:        JSL CODE_00866D           ;/
CODE_009CE8:        LDA #$0000                ;\ Set the first color to black
CODE_009CEB:        STA $7F9200               ;/
CODE_009CEF:        LDY #$80                  ;\
CODE_009CF1:        STY $2115                 ; |
CODE_009CF4:        LDA #$6000                ; |
CODE_009CF7:        STA $2116                 ; | Upload sprite GFX
CODE_009CFA:        LDA #$1801                ; |
CODE_009CFD:        STA $4300                 ; |
CODE_009D00:        LDA.w #DATA_02A000        ; | Source: $02A000
CODE_009D03:        STA $4302                 ; | Size:   $2000
CODE_009D06:        LDY.b #DATA_02A000>>16    ; |
CODE_009D08:        STY $4304                 ; |
CODE_009D0B:        LDA #$2000                ; |
CODE_009D0E:        STA $4305                 ; |
CODE_009D11:        LDY #$01                  ; |
CODE_009D13:        STY $420B                 ;/
CODE_009D16:        SEP #$20                  ;
CODE_009D18:        LDA #$02                  ;\ BG2 on main screen
CODE_009D1A:        STA $0117                 ;/
CODE_009D1D:        LDA #$11                  ;\ BG1 and sprites on sub-screen
CODE_009D1F:        STA $0118                 ;/
CODE_009D22:        LDA #$02                  ;\
CODE_009D24:        STA $011B                 ; | Enable sub-screen
CODE_009D27:        LDA #$20                  ; |
CODE_009D29:        STA $011C                 ;/
CODE_009D2C:        LDA #$21                  ;\
CODE_009D2E:        STA $011D                 ; | Set backdrop color
CODE_009D31:        LDA #$49                  ; |
CODE_009D33:        STA $011E                 ; |
CODE_009D36:        LDA #$91                  ; |
CODE_009D38:        STA $011F                 ;/
CODE_009D3B:        LDA #$3E                  ;\ Play chatting noise
CODE_009D3D:        STA $0060                 ;/
CODE_009D40:        INC $0AC0                 ; Update CGRAM
CODE_009D43:        STZ $0100                 ; Screen brightness = 0
CODE_009D46:        INC $E1                   ; Next subgame mode
CODE_009D48:        INC $0100                 ; Fade into title screen
CODE_009D4B:        LDA $0100                 ;\
CODE_009D4E:        CMP #$0F                  ; | If we have not reached max screen brightness branch
CODE_009D50:        BNE CODE_009D5D           ;/
CODE_009D52:        REP #$20                  ;
CODE_009D54:        LDA #$011A                ;\ Set timer (amount of time until we change the palette/"turn the lights on")
CODE_009D57:        STA $E3                   ;/
CODE_009D59:        SEP #$20                  ;
CODE_009D5B:        INC $E1                   ; Next sub-game mode
CODE_009D5D:        RTS                       ;

CODE_009D5E:        REP #$20                  ;
CODE_009D60:        LDA $E3                   ;\
CODE_009D62:        CMP #$0020                ; | If the timer is < $0020 branch
CODE_009D65:        BCC CODE_009D6C           ;/
CODE_009D67:        SEP #$20                  ;
CODE_009D69:        JSR CODE_00B63F           ; Make everyone talk
CODE_009D6C:        REP #$20                  ;
CODE_009D6E:        DEC $E3                   ;\ If it is not time to "turn the lights on", return
CODE_009D70:        BNE CODE_009DC3           ;/
CODE_009D72:        SEP #$20                  ;
CODE_009D74:        JSR CODE_00B683           ; Upload BG1 tilemap
CODE_009D77:        REP #$20                  ;\
CODE_009D79:        LDA #$0200                ; |
CODE_009D7C:        STA $00                   ; |
CODE_009D7E:        LDA #$CA00                ; | Put palette in RAM
CODE_009D81:        LDY #$02                  ; |
CODE_009D83:        STA $02                   ; |
CODE_009D85:        STY $04                   ; |
CODE_009D87:        LDA #$9200                ; |
CODE_009D8A:        LDY #$7F                  ; |
CODE_009D8C:        JSL CODE_00866D           ;/
CODE_009D90:        LDA #$0000                ;\ color 0 black
CODE_009D93:        STA $7F9200               ;/
CODE_009D97:        SEP #$20                  ;
CODE_009D99:        LDA #$25                  ;\
CODE_009D9B:        STA $011D                 ; |
CODE_009D9E:        LDA #$4D                  ; | Set backdrop color
CODE_009DA0:        STA $011E                 ; |
CODE_009DA3:        LDA #$95                  ; |
CODE_009DA5:        STA $011F                 ;/
CODE_009DA8:        INC $0AC0                 ; Upload palette buffer to CGRAM
CODE_009DAB:        REP #$20                  ;
CODE_009DAD:        LDA #$0445                ;\ Set amount of time left on title screen
CODE_009DB0:        STA $E3                   ;/
CODE_009DB2:        LSR A                     ;
CODE_009DB3:        CLC                       ;
CODE_009DB4:        ADC #$0010                ;
CODE_009DB7:        STA $0225                 ;
CODE_009DBA:        SEP #$20                  ;
CODE_009DBC:        INC $E1                   ; Next sub-game mode
CODE_009DBE:        LDA #$11                  ;\ Mute sound on this channel
CODE_009DC0:        STA $0060                 ;/
CODE_009DC3:        SEP #$20                  ;
CODE_009DC5:        RTS                       ;

CODE_009DC6:        JSR CODE_00BD8D           ;
CODE_009DC9:        REP #$20                  ;
CODE_009DCB:        DEC $E3                   ;
CODE_009DCD:        BNE CODE_009DC3           ;
CODE_009DCF:        SEP #$20                  ;
CODE_009DD1:        JSR CODE_00B683           ;
CODE_009DD4:        REP #$20                  ;
CODE_009DD6:        LDA #$0200                ;
CODE_009DD9:        STA $00                   ;
CODE_009DDB:        LDA #$C800                ;
CODE_009DDE:        LDY #$02                  ;
CODE_009DE0:        STA $02                   ;
CODE_009DE2:        STY $04                   ;
CODE_009DE4:        LDA #$9200                ;
CODE_009DE7:        LDY #$7F                  ;
CODE_009DE9:        JSL CODE_00866D           ;
CODE_009DED:        LDA #$0000                ;
CODE_009DF0:        STA $7F9200               ;
CODE_009DF4:        SEP #$20                  ;
CODE_009DF6:        LDA #$21                  ;
CODE_009DF8:        STA $011D                 ;
CODE_009DFB:        LDA #$49                  ;
CODE_009DFD:        STA $011E                 ;
CODE_009E00:        LDA #$91                  ;
CODE_009E02:        STA $011F                 ;
CODE_009E05:        INC $0AC0                 ;
CODE_009E08:        REP #$20                  ;
CODE_009E0A:        LDA #$0002                ;
CODE_009E0D:        STA $E3                   ;
CODE_009E0F:        SEP #$20                  ;
CODE_009E11:        INC $E1                   ;
CODE_009E13:        SEP #$20                  ;
CODE_009E15:        RTS                       ;

CODE_009E16:        JSR CODE_00BD8D           ; Handle flashing "Super Mario All-Stars" text
CODE_009E19:        REP #$20                  ;
CODE_009E1B:        DEC $E3                   ;\ If there is still time left on the title screen, branch
CODE_009E1D:        BNE CODE_009E59           ;/
CODE_009E1F:        LDA #$0200                ;\
CODE_009E22:        STA $00                   ; |
CODE_009E24:        LDA #$CA00                ; |
CODE_009E27:        LDY #$02                  ; | Change palette
CODE_009E29:        STA $02                   ; |
CODE_009E2B:        STY $04                   ; |
CODE_009E2D:        LDA #$9200                ; |
CODE_009E30:        LDY #$7F                  ; |
CODE_009E32:        JSL CODE_00866D           ;/
CODE_009E36:        LDA #$0000                ;\ Make the first color black
CODE_009E39:        STA $7F9200               ;/
CODE_009E3D:        LDA #$0004                ;\ Set timer
CODE_009E40:        STA $E3                   ;/
CODE_009E42:        LDA #$0025                ;\
CODE_009E45:        STA $011D                 ; |
CODE_009E48:        LDA #$004D                ; | Set backdrop color
CODE_009E4B:        STA $011E                 ; |
CODE_009E4E:        LDA #$0095                ; |
CODE_009E51:        STA $011F                 ;/
CODE_009E54:        INC $0AC0                 ; Update CGRAM
CODE_009E57:        INC $E1                   ; Next sub-game mode
CODE_009E59:        SEP #$20                  ;
CODE_009E5B:        RTS                       ;

CODE_009E5C:        JSR CODE_00B63F           ; Move everyone
CODE_009E5F:        REP #$20                  ;
CODE_009E61:        DEC $E3                   ;\ Decrease timer
CODE_009E63:        BNE CODE_009EA9           ;/
CODE_009E65:        LDA #$0060                ;\
CODE_009E68:        STA $22                   ; | Set timer
CODE_009E6A:        STZ $23                   ;/
CODE_009E6C:        STZ $0204                 ;
CODE_009E6F:        LDA #$0200                ;\
CODE_009E72:        STA $00                   ; |
CODE_009E74:        LDA #$CA00                ; |
CODE_009E77:        LDY #$02                  ; |
CODE_009E79:        STA $02                   ; |
CODE_009E7B:        STY $04                   ; | Set palette
CODE_009E7D:        LDA #$9200                ; |
CODE_009E80:        LDY #$7F                  ; |
CODE_009E82:        JSL CODE_00866D           ; |
CODE_009E86:        LDA #$0000                ; |
CODE_009E89:        STA $7F9200               ;/
CODE_009E8D:        LDA #$003E                ;\ Set timer
CODE_009E90:        STA $E3                   ;/
CODE_009E92:        LDA #$0025                ;\
CODE_009E95:        STA $011D                 ; |   
CODE_009E98:        LDA #$004D                ; | Set backdrop color
CODE_009E9B:        STA $011E                 ; |
CODE_009E9E:        LDA #$0095                ; |
CODE_009EA1:        STA $011F                 ;/
CODE_009EA4:        INC $0AC0                 ; Update CGRAM
CODE_009EA7:        INC $E1                   ; Next sub-game mode
CODE_009EA9:        SEP #$20                  ;
CODE_009EAB:        RTS                       ;

CODE_009EAC:        REP #$20                  ;
CODE_009EAE:        DEC $E3                   ;\ Decrease timer
CODE_009EB0:        BNE CODE_009EF6           ;/
CODE_009EB2:        LDA #$0200                ;\
CODE_009EB5:        STA $00                   ; |
CODE_009EB7:        LDA #$C800                ; |
CODE_009EBA:        LDY #$02                  ; | Upload palette
CODE_009EBC:        STA $02                   ; |
CODE_009EBE:        STY $04                   ; |
CODE_009EC0:        LDA #$9200                ; |
CODE_009EC3:        LDY #$7F                  ; |
CODE_009EC5:        JSL CODE_00866D           ;/
CODE_009EC9:        LDA #$0000                ;\ Make the first color black
CODE_009ECC:        STA $7F9200               ;/
CODE_009ED0:        LDA #$0002                ;
CODE_009ED3:        LDX $E1                   ;\
CODE_009ED5:        CPX #$13                  ; | Only mute the music after the last flash
CODE_009ED7:        BNE CODE_009EDE           ;/
CODE_009ED9:        LDX #$11                  ;\ Mute music
CODE_009EDB:        STX $0060                 ;/
CODE_009EDE:        STA $E3                   ; Set timer
CODE_009EE0:        SEP #$20                  ;
CODE_009EE2:        INC $0AC0                 ; Update CGRAM
CODE_009EE5:        INC $E1                   ; Next sub-game mode
CODE_009EE7:        LDA #$21                  ;\
CODE_009EE9:        STA $011D                 ; |
CODE_009EEC:        LDA #$49                  ; | Set backdrop color
CODE_009EEE:        STA $011E                 ; |
CODE_009EF1:        LDA #$91                  ; |
CODE_009EF3:        STA $011F                 ;/
CODE_009EF6:        SEP #$20                  ;
CODE_009EF8:        RTS                       ;

CODE_009EF9:        JSR CODE_008A8E           ; Go upload some SPC data
CODE_009EFC:        LDA #$01                  ;\ Play title screen music
CODE_009EFE:        STA $0062                 ;/
CODE_009F01:        INC $E1                   ; Next sub-game mode
CODE_009F03:        RTS                       ;

CODE_009F04:        JSR CODE_00B63F           ; Move everyone
CODE_009F07:        JSR CODE_008AE7           ; Upload SPC data
CODE_009F0A:        REP #$20                  ;
CODE_009F0C:        LDA #$00FA                ;\ Set timer
CODE_009F0F:        STA $E3                   ;/
CODE_009F11:        SEP #$20                  ;
CODE_009F13:        RTS                       ;

CODE_009F14:        JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F17:        JSR CODE_00B63F           ; Move everyone
CODE_009F1A:        REP #$20                  ;
CODE_009F1C:        DEC $E3                   ;\ Decrease timer
CODE_009F1E:        BNE CODE_009F6A           ;/
CODE_009F20:        LDA #$0200                ;\
CODE_009F23:        STA $00                   ; |
CODE_009F25:        LDA #$CA00                ; |
CODE_009F28:        LDY #$02                  ; | Set palette
CODE_009F2A:        STA $02                   ; |
CODE_009F2C:        STY $04                   ; |
CODE_009F2E:        LDA #$9200                ; |
CODE_009F31:        LDY #$7F                  ; |
CODE_009F33:        JSL CODE_00866D           ; |
CODE_009F37:        LDA #$0000                ; |
CODE_009F3A:        STA $7F9200               ;/
CODE_009F3E:        LDA #$0025                ;\
CODE_009F41:        STA $011D                 ; |
CODE_009F44:        LDA #$004D                ; | Set backdrop color
CODE_009F47:        STA $011E                 ; |
CODE_009F4A:        LDA #$0095                ; |
CODE_009F4D:        STA $011F                 ;/
CODE_009F50:        LDA #$0390                ;
CODE_009F53:        STA $E3                   ;
CODE_009F55:        LSR A                     ;
CODE_009F56:        CLC                       ;
CODE_009F57:        ADC #$0020                ;
CODE_009F5A:        STA $0225                 ;
CODE_009F5D:        SEP #$20                  ;
CODE_009F5F:        INC $0AC0                 ; Update CGRAM
CODE_009F62:        LDA #$80                  ;
CODE_009F64:        STA $0211                 ;
CODE_009F67:        JSR CODE_008A8E           ; Go upload some SPC data
CODE_009F6A:        SEP #$20                  ;
CODE_009F6C:        RTS                       ;

CODE_009F6D:        JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F70:        JSR CODE_00B62B           ; Move everyone
CODE_009F73:        REP #$20                  ;
CODE_009F75:        DEC $E3                   ;\ Decrease timer
CODE_009F77:        BNE CODE_009F82           ;/
CODE_009F79:        SEP #$20                  ;
CODE_009F7B:        INC $E1                   ; next sub-game mode
CODE_009F7D:        LDA #$80                  ;\
CODE_009F7F:        STA $0062                 ;/
CODE_009F82:        SEP #$20                  ;
CODE_009F84:        RTS                       ;

CODE_009F85:        DEC $0100                 ;\ Decrease screen brightness until black
CODE_009F88:        BNE CODE_009F82           ;/
CODE_009F8A:        LDA #$00                  ;\
CODE_009F8C:        STA $2100                 ; | screen brightness = 0
CODE_009F8F:        STA $0100                 ;/
CODE_009F92:        JSR CODE_008ABC           ; Upload SPC data
CODE_009F95:        STZ $E1                   ; sub-game mode 0
CODE_009F97:        LDA #$09                  ;\ Do gameplay example
CODE_009F99:        STA $E0                   ;/
CODE_009F9B:        RTS                       ;

CODE_009F9C:        JSR CODE_00BD8D           ; Make "All-Stars" text flash
CODE_009F9F:        DEC $E3                   ;\ Decrease timer
CODE_009FA1:        BNE CODE_009FAA           ;/
CODE_009FA3:        LDA #$40                  ;\ Play "fade out" SFX
CODE_009FA5:        STA $0063                 ;/
CODE_009FA8:        INC $E1                   ; Next sub-game mode
CODE_009FAA:        RTS                       ;

DATA_009FAB:        dw $9000,$9020,$9040,$9060 ;Triangle fading graphic offsets. bank is hardcoded at #$02
                    dw $9080,$90A0,$90C0,$90E0
                    dw $9100,$9120,$9140,$9160
                    dw $9180,$91A0,$91C0,$91E0
                    dw $9200,$9220,$9240,$9260
                    dw $9280,$92A0,$92C0,$92E0
                    dw $9300,$9320,$9340,$9360
                    dw $9380,$93A0,$93C0,$93E0
                    dw $9400,$9400,$9400

CODE_009FF1:        LDA $FD                   ;\
CODE_009FF3:        LSR A                     ; | Return all odd frames
CODE_009FF4:        BCS CODE_00A014           ;/
CODE_009FF6:        REP #$20                  ;
CODE_009FF8:        LDX $E3                   ; Get which step we are on
CODE_009FFA:        LDA.l DATA_009FAB,x             ;\ Set source data location to upload to BG2's tilemap in $E5
CODE_009FFE:        STA $E5                   ;/
CODE_00A000:        INX                       ;\ Step we are on+2
CODE_00A001:        INX                       ;/
CODE_00A002:        STX $E3                   ; Remeber it
CODE_00A004:        CPX #$46                  ;\ If this isn't the last step branch
CODE_00A006:        BNE CODE_00A014           ;/
CODE_00A008:        INC $E0                   ; Next game mode
CODE_00A00A:        STZ $E1                   ;\ Clear sub-game mode and timer
CODE_00A00C:        STZ $E3                   ;/
CODE_00A00E:        LDA #$0080                ;\ Force blank
CODE_00A011:        STA $0100                 ;/
CODE_00A014:        SEP #$20                  ;
CODE_00A016:        RTS                       ;

DATA_00A017:        db $00,$02,$04,$06,$20,$22,$24,$26  ;Nintendo presents logo tilemap.
                    db $08,$0A,$0C,$0E,$28,$2A,$2C,$2E
                    db $40,$42,$44,$46

CODE_00A02B:        LDY #$00                  ;\
CODE_00A02D:        TYX                       ;/Clear registers X and Y
CODE_00A02E:        LDA #$50                  ;\#$50 to logo Y
CODE_00A030:        STA $00                   ;/
CODE_00A032:        LDA #$60                  ;\#$60 to logo X
CODE_00A034:        STA $01                   ;/
CODE_00A036:        LDA $01                   ;\
CODE_00A038:        STA $0800,y               ; |
CODE_00A03B:        LDA $00                   ; |Write logo to OAM
CODE_00A03D:        STA $0801,y               ; |
CODE_00A040:        LDA DATA_00A017,x               ; |
CODE_00A043:        STA $0802,y               ; |
CODE_00A046:        INX                       ; |
CODE_00A047:        LDA #$2E                  ; |
CODE_00A049:        STA $0803,y               ; |
CODE_00A04C:        PHY                       ; |
CODE_00A04D:        TYA                       ; |
CODE_00A04E:        LSR A                     ; |
CODE_00A04F:        LSR A                     ; |
CODE_00A050:        TAY                       ; |
CODE_00A051:        LDA #$02                  ; |Write logo tiles size to OAM. $00 = 8x8, $02 = 16x16
CODE_00A053:        STA $0A20,y               ; |
CODE_00A056:        PLY                       ; |
CODE_00A057:        INY                       ; |
CODE_00A058:        INY                       ; |
CODE_00A059:        INY                       ; |
CODE_00A05A:        INY                       ; |
CODE_00A05B:        LDA $01                   ; |
CODE_00A05D:        CLC                       ; |
CODE_00A05E:        ADC #$10                  ; |
CODE_00A060:        STA $01                   ; |If not done yet, continue looping
CODE_00A062:        CMP #$A0                  ; |
CODE_00A064:        BCC CODE_00A036           ; |
CODE_00A066:        LDA $00                   ; |
CODE_00A068:        CLC                       ; |
CODE_00A069:        ADC #$10                  ; |
CODE_00A06B:        STA $00                   ; |
CODE_00A06D:        CMP #$A0                  ; |
CODE_00A06F:        BCC CODE_00A032           ;/
CODE_00A071:        RTS                       ;

DATA_00A072:        db $02,$02,$02,$02        ;How long the 4 blinks of the presents logo lasts

DATA_00A076:        dw $7FFF,$2BBC,$43FF,$171C ;RGB values for the blink. Kinda hard to figure it out...
                    dw $7FFF,$2BBC,$171C,$2BBC
                    dw $7FFF,$0A59,$171C,$2BBC

DATA_00A08E:        dw $53FF,$171C,$0A59,$53FF ;same as above
                    dw $171C,$0A59,$53FF,$7FFF
                    dw $2BBC,$53FF,$171C,$0A59

CODE_00A0A6:        LDA $23                   ;\
CODE_00A0A8:        ASL A                     ; |
CODE_00A0A9:        STA $00                   ; |Multiply $23 with 06 and move it to Y
CODE_00A0AB:        ASL A                     ; |
CODE_00A0AC:        CLC                       ; |
CODE_00A0AD:        ADC $00                   ; |
CODE_00A0AF:        TAY                       ;/
CODE_00A0B0:        LDX #$00                  ;\
CODE_00A0B2:        LDA DATA_00A076,y               ; |
CODE_00A0B5:        STA $7F93EC,x             ; |
CODE_00A0B9:        LDA DATA_00A08E,y               ; |
CODE_00A0BC:        STA $7F93FA,x             ; |Do some logo-blinking stuff
CODE_00A0C0:        INY                       ; |
CODE_00A0C1:        INX                       ; |
CODE_00A0C2:        CPX #$06                  ; |
CODE_00A0C4:        BCC CODE_00A0B2           ;/
CODE_00A0C6:        INC $0AC0                 ;
CODE_00A0C9:        DEC $22                   ;\Decrease blinking timer.
CODE_00A0CB:        BNE CODE_00A0E2           ;/
CODE_00A0CD:        INC $23                   ;\
CODE_00A0CF:        LDX $23                   ; |If not done yet with the blinking
CODE_00A0D1:        CPX #$04                  ; |Load the next blink's duration
CODE_00A0D3:        BCC CODE_00A0DD           ;/
CODE_00A0D5:        STZ $23                   ;\
CODE_00A0D7:        STZ $22                   ; |Otherwise, we're done!
CODE_00A0D9:        STZ $24                   ; |
CODE_00A0DB:        BRA CODE_00A0E2           ;/

CODE_00A0DD:        LDA DATA_00A072,x               ;\ Load blinking duration, indexed by blink count
CODE_00A0E0:        STA $22                   ; |
CODE_00A0E2:        RTS                       ;/

CODE_00A0E3:        LDA #$48                  ;
CODE_00A0E5:        STA $00                   ;
CODE_00A0E7:        LDY #$00                  ;
CODE_00A0E9:        TYX                       ;
CODE_00A0EA:        LDA $00                   ;
CODE_00A0EC:        STA $0980,y               ;
CODE_00A0EF:        LDA #$C8                  ;
CODE_00A0F1:        STA $0981,y               ;
CODE_00A0F4:        TYA                       ;
CODE_00A0F5:        LSR A                     ;
CODE_00A0F6:        ORA #$C0                  ;
CODE_00A0F8:        STA $0982,y               ;
CODE_00A0FB:        LDA #$22                  ;
CODE_00A0FD:        STA $0983,y               ;
CODE_00A100:        LDA #$02                  ;
CODE_00A102:        STA $0A80,x               ;
CODE_00A105:        INY                       ;
CODE_00A106:        INY                       ;
CODE_00A107:        INY                       ;
CODE_00A108:        INY                       ;
CODE_00A109:        LDA $00                   ;
CODE_00A10B:        CLC                       ;
CODE_00A10C:        ADC #$10                  ;
CODE_00A10E:        STA $00                   ;
CODE_00A110:        INX                       ;
CODE_00A111:        CPX #$07                  ;
CODE_00A113:        BNE CODE_00A0EA           ;
CODE_00A115:        PHB                       ;
CODE_00A116:        PHK                       ;
CODE_00A117:        PLB                       ;
CODE_00A118:        STZ $00                   ;
CODE_00A11A:        STZ $01                   ;
CODE_00A11C:        STZ $02                   ;
CODE_00A11E:        STZ $03                   ;
CODE_00A120:        REP #$10                  ;
CODE_00A122:        LDY #$0000                ;
CODE_00A125:        LDX $02                   ;
CODE_00A127:        LDA DATA_00A1A7,x         ;
CODE_00A12A:        CMP #$FF                  ;
CODE_00A12C:        BEQ CODE_00A161           ;
CODE_00A12E:        SEC                       ;
CODE_00A12F:        SBC #$08                  ;
CODE_00A131:        STA $0800,y               ;
CODE_00A134:        LDA DATA_00A1A7+1,x       ;
CODE_00A137:        STA $0801,y               ;
CODE_00A13A:        LDA DATA_00A1A7+2,x       ;
CODE_00A13D:        STA $0802,y               ;
CODE_00A140:        LDA DATA_00A1A7+3,x       ;
CODE_00A143:        STA $0803,y               ;
CODE_00A146:        LDX $00                   ;
CODE_00A148:        LDA #$02                  ;
CODE_00A14A:        STA $0A20,x               ;
CODE_00A14D:        INY                       ;
CODE_00A14E:        INY                       ;
CODE_00A14F:        INY                       ;
CODE_00A150:        INY                       ;
CODE_00A151:        REP #$20                  ;
CODE_00A153:        INC $00                   ;
CODE_00A155:        INC $02                   ;
CODE_00A157:        INC $02                   ;
CODE_00A159:        INC $02                   ;
CODE_00A15B:        INC $02                   ;
CODE_00A15D:        SEP #$20                  ;
CODE_00A15F:        BRA CODE_00A125           ;

CODE_00A161:        STZ $0002                 ;
CODE_00A164:        STZ $0003                 ;
CODE_00A167:        INY                       ;
CODE_00A168:        INY                       ;
CODE_00A169:        INY                       ;
CODE_00A16A:        INY                       ;
CODE_00A16B:        INC $00                   ;
CODE_00A16D:        LDX $02                   ;
CODE_00A16F:        LDA DATA_00A248,x         ;
CODE_00A172:        CMP #$FF                  ;
CODE_00A174:        BEQ CODE_00A1A3           ;
CODE_00A176:        SEC                       ;
CODE_00A177:        SBC #$08                  ;
CODE_00A179:        STA $0800,y               ;
CODE_00A17C:        LDA DATA_00A248+1,x       ;
CODE_00A17F:        STA $0801,y               ;
CODE_00A182:        LDA DATA_00A248+2,x       ;
CODE_00A185:        STA $0802,y               ;
CODE_00A188:        LDA DATA_00A248+3,x       ;
CODE_00A18B:        STA $0803,y               ;
CODE_00A18E:        LDX $00                   ;
CODE_00A190:        LDA #$00                  ;
CODE_00A192:        STA $0A20,x               ;
CODE_00A195:        REP #$20                  ;
CODE_00A197:        INC $02                   ;
CODE_00A199:        INC $02                   ;
CODE_00A19B:        INC $02                   ;
CODE_00A19D:        INC $02                   ;
CODE_00A19F:        SEP #$20                  ;
CODE_00A1A1:        BRA CODE_00A167           ;

CODE_00A1A3:        SEP #$10                  ;
CODE_00A1A5:        PLB                       ;
CODE_00A1A6:        RTS                       ;

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

CODE_00A2C5:        DEC $0100                 ;
CODE_00A2C8:        BNE CODE_00A2D5           ;
CODE_00A2CA:        INC $E0                   ;
CODE_00A2CC:        STZ $E1                   ;
CODE_00A2CE:        STZ $E3                   ;
CODE_00A2D0:        LDA #$80                  ;
CODE_00A2D2:        STA $0100                 ;
CODE_00A2D5:        SEP #$20                  ;
CODE_00A2D7:        RTL                       ;

CODE_00A2D8:        LDA $70000E               ;\
CODE_00A2DC:        STA $D1                   ;/
CODE_00A2DE:        LDA $70000F               ;\
CODE_00A2E2:        STA $D0                   ; | Get the last game played
CODE_00A2E4:        STA $0218                 ;/
CODE_00A2E7:        LDX #$01                  ;
CODE_00A2E9:        JSL CODE_00849C           ; Upload GFX and palette
CODE_00A2ED:        JSR CODE_008ABC           ; Upload SPC data
CODE_00A2F0:        LDA #$0F                  ;\ Screen brightness
CODE_00A2F2:        STA $0100                 ;/
CODE_00A2F5:        INC $0AC0                 ; Update CGRAM
CODE_00A2F8:        INC $E0                   ; Next game mode
CODE_00A2FA:        STZ $E1                   ; Sub-game mode 0
CODE_00A2FC:        LDA #$44                  ;\ Set timer
CODE_00A2FE:        STA $E3                   ;/
CODE_00A300:        STZ $FD                   ; Reset the frame counter
CODE_00A302:        JSR CODE_00A30D           ;
CODE_00A305:        LDA #$41                  ;\ Play SFX
CODE_00A307:        STA $0063                 ;/
CODE_00A30A:        JMP CODE_00A39B           ;

CODE_00A30D:        REP #$10                  ;
CODE_00A30F:        LDY #$0000                ;
CODE_00A312:        LDA #$00                  ;
CODE_00A314:        XBA                       ;
CODE_00A315:        PHY                       ;
CODE_00A316:        TYA                       ;
CODE_00A317:        ASL A                     ;
CODE_00A318:        TAY                       ;
CODE_00A319:        LDX DATA_00A80C,y               ;
CODE_00A31C:        PLY                       ;
CODE_00A31D:        LDA $700010,x             ;
CODE_00A321:        BMI CODE_00A324           ;
CODE_00A323:        INC A                     ;
CODE_00A324:        STA $0080,y               ;
CODE_00A327:        STA $00B0,y               ;
CODE_00A32A:        LDA $700011,x             ;
CODE_00A32E:        BMI CODE_00A331           ;
CODE_00A330:        INC A                     ;
CODE_00A331:        STA $00                   ;
CODE_00A333:        TYA                       ;
CODE_00A334:        AND #$01                  ;
CODE_00A336:        BEQ CODE_00A341           ;
CODE_00A338:        TYA                       ;
CODE_00A339:        AND #$02                  ;
CODE_00A33B:        BNE CODE_00A341           ;
CODE_00A33D:        LDA $00                   ;
CODE_00A33F:        BRA CODE_00A343           ;

CODE_00A341:        LDA #$FF                  ;
CODE_00A343:        STA $0090,y               ;
CODE_00A346:        STA $00C0,y               ;
CODE_00A349:        LDA $700014,x             ;
CODE_00A34D:        STA $00A0,y               ;
CODE_00A350:        LDA $700015,x             ;
CODE_00A354:        STA $0070,y               ;
CODE_00A357:        PHX                       ;
CODE_00A358:        TYX                       ;
CODE_00A359:        STA $700490,x             ;
CODE_00A35D:        PLX                       ;
CODE_00A35E:        INY                       ;
CODE_00A35F:        CPY #$0010                ;
CODE_00A362:        BCC CODE_00A312           ;
CODE_00A364:        SEP #$10                  ;
CODE_00A366:        RTS                       ;

DATA_00A367:        dw $6127,$612D,$6133,$6139
                    dw $6187,$618D,$6193,$6199
                    dw $61E7,$61ED,$61F3,$61F9
                    dw $6247,$624D,$6253,$6259

DATA_00A387:        db $1F,$21,$22,$22,$64,$F0,$64,$F1
                    db $64,$F4,$64,$F5,$64,$F2,$64,$F3
                    db $64,$F6,$64,$F7

CODE_00A39B:        LDA $E1                   ;\ If we are running the game select screen branch
CODE_00A39D:        BNE CODE_00A3F5           ;/
CODE_00A39F:        LDA $FD                   ;
CODE_00A3A1:        LSR A                     ;
CODE_00A3A2:        BCS CODE_00A3F2           ;
CODE_00A3A4:        REP #$20                  ;
CODE_00A3A6:        LDX $E3                   ;
CODE_00A3A8:        LDA.l DATA_009FAB,x             ;
CODE_00A3AC:        STA $E5                   ;
CODE_00A3AE:        DEX                       ;
CODE_00A3AF:        DEX                       ;
CODE_00A3B0:        STX $E3                   ;
CODE_00A3B2:        BPL CODE_00A3F2           ;
CODE_00A3B4:        LDA #$0002                ;
CODE_00A3B7:        STA $0062                 ;
CODE_00A3BA:        INC $E1                   ;
CODE_00A3BC:        LDX #$01                  ;
CODE_00A3BE:        STX $0219                 ;
CODE_00A3C1:        LDA #$0000                ;
CODE_00A3C4:        STA $0105                 ;
CODE_00A3C7:        STZ $0107                 ;
CODE_00A3CA:        LDA #$0032                ;
CODE_00A3CD:        STA $14                   ;
CODE_00A3CF:        STZ $15                   ;
CODE_00A3D1:        LDA #$00C0                ;
CODE_00A3D4:        STA $16                   ;
CODE_00A3D6:        LDA #$0000                ;
CODE_00A3D9:        STA $19                   ;
CODE_00A3DB:        STZ $1A                   ;
CODE_00A3DD:        LDA #$0001                ;
CODE_00A3E0:        STA $0117                 ;
CODE_00A3E3:        LDA #$0020                ;
CODE_00A3E6:        STA $1B                   ;
CODE_00A3E8:        LDA #$0061                ;
CODE_00A3EB:        STA $1C                   ;
CODE_00A3ED:        LDA #$0040                ;
CODE_00A3F0:        STA $20                   ;
CODE_00A3F2:        SEP #$20                  ;
CODE_00A3F4:        RTL                       ;

CODE_00A3F5:        LDA $0216                 ;
CODE_00A3F8:        BNE CODE_00A429           ;
CODE_00A3FA:        LDA $0217                 ;
CODE_00A3FD:        BNE CODE_00A455           ;
CODE_00A3FF:        LDX $021A                 ;
CODE_00A402:        BNE CODE_00A476           ;
CODE_00A404:        LDX $0220                 ;
CODE_00A407:        BNE CODE_00A476           ;
CODE_00A409:        LDA $F4                   ;\
CODE_00A40B:        ORA $F5                   ; | If we are not pressing left or right branch
CODE_00A40D:        AND #$03                  ; |
CODE_00A40F:        BEQ CODE_00A46B           ;/
CODE_00A411:        AND #$01                  ;\ If we are pressing left, branch
CODE_00A413:        BEQ CODE_00A441           ;/
CODE_00A415:        LDA $0218                 ; Get the current game we are on
CODE_00A418:        AND #$03                  ;
CODE_00A41A:        TAX                       ;
CODE_00A41B:        LDA DATA_00A387,x               ;\ Move the correct amount
CODE_00A41E:        STA $0216                 ;/
CODE_00A421:        INC $0218                 ; Next game
CODE_00A424:        LDA #$01                  ;\ Play SFX
CODE_00A426:        STA $0063                 ;/
CODE_00A429:        DEC $0216                 ;\ If zero, branch
CODE_00A42C:        BEQ CODE_00A46B           ;/
CODE_00A42E:        REP #$20                  ;
CODE_00A430:        LDA $0214                 ;\
CODE_00A433:        CLC                       ; |
CODE_00A434:        ADC #$0004                ; | Move the games
CODE_00A437:        AND #$01FF                ; |
CODE_00A43A:        STA $0214                 ;/
CODE_00A43D:        SEP #$20                  ;
CODE_00A43F:        BRA CODE_00A46B           ;

CODE_00A441:        DEC $0218                 ; Same thing up there but the other way
CODE_00A444:        LDA $0218                 ;
CODE_00A447:        AND #$03                  ;
CODE_00A449:        TAX                       ;
CODE_00A44A:        LDA DATA_00A387,x               ;
CODE_00A44D:        STA $0217                 ;
CODE_00A450:        LDA #$01                  ;
CODE_00A452:        STA $0063                 ;
CODE_00A455:        DEC $0217                 ;
CODE_00A458:        BEQ CODE_00A46B           ;
CODE_00A45A:        REP #$20                  ;
CODE_00A45C:        LDA $0214                 ;
CODE_00A45F:        SEC                       ;
CODE_00A460:        SBC #$0004                ;
CODE_00A463:        AND #$01FF                ;
CODE_00A466:        STA $0214                 ;
CODE_00A469:        SEP #$20                  ;
CODE_00A46B:        LDA $0216                 ;\
CODE_00A46E:        ORA $0217                 ; | If we stopped moving, branch
CODE_00A471:        BEQ CODE_00A476           ;/
CODE_00A473:        JMP CODE_00A771           ; Return

CODE_00A476:        STZ $00                   ;
CODE_00A478:        LDA $0224                 ;\ 
CODE_00A47B:        BEQ CODE_00A48C           ;/
CODE_00A47D:        DEC $0223                 ;
CODE_00A480:        LDA $0223                 ;
CODE_00A483:        BNE CODE_00A489           ;
CODE_00A485:        LDA #$06                  ;
CODE_00A487:        STA $E0                   ;
CODE_00A489:        JMP CODE_00A771           ;

CODE_00A48C:        LDA $0220                 ;\ If we did not select a game, branch
CODE_00A48F:        BEQ CODE_00A4A6           ;/
CODE_00A491:        LDA $F4                   ;\
CODE_00A493:        ORA $F5                   ; |
CODE_00A495:        ORA $F6                   ; | If we want to select a new game, branch
CODE_00A497:        ORA $F7                   ; |
CODE_00A499:        AND #$40                  ; |
CODE_00A49B:        STA $00                   ; |
CODE_00A49D:        BNE CODE_00A4C0           ;/
CODE_00A49F:        LDA $021A                 ;
CODE_00A4A2:        BNE CODE_00A4C0           ;
CODE_00A4A4:        BRA CODE_00A4CD           ;

CODE_00A4A6:        LDA $021A                 ;
CODE_00A4A9:        BNE CODE_00A4C0           ;
CODE_00A4AB:        LDA $F4                   ;\
CODE_00A4AD:        ORA $F5                   ; |
CODE_00A4AF:        AND #$10                  ; | If we choosed a game, branch
CODE_00A4B1:        STA $00                   ; |
CODE_00A4B3:        BNE CODE_00A4B7           ;/
CODE_00A4B5:        BRA CODE_00A4CD           ;

CODE_00A4B7:        LDA $00                   ;
CODE_00A4B9:        PHA                       ;
CODE_00A4BA:        JSR CODE_00A8AE           ;
CODE_00A4BD:        PLA                       ;
CODE_00A4BE:        STA $00                   ;
CODE_00A4C0:        LDA $0218                 ;
CODE_00A4C3:        AND #$03                  ;
CODE_00A4C5:        ASL A                     ;
CODE_00A4C6:        TAX                       ;
CODE_00A4C7:        JSR (PNTR_00A8A6,x)       ;
CODE_00A4CA:        JMP CODE_00A771           ;

CODE_00A4CD:        LDA $0220                 ;
CODE_00A4D0:        BNE CODE_00A4D5           ;
CODE_00A4D2:        JMP CODE_00A771           ;

CODE_00A4D5:        LDA $0C                   ;
CODE_00A4D7:        STA $00                   ;
CODE_00A4D9:        LDA $0218                 ;
CODE_00A4DC:        AND #$03                  ;
CODE_00A4DE:        STA $D0                   ;
CODE_00A4E0:        LDA $F4                   ;
CODE_00A4E2:        ORA $F5                   ;
CODE_00A4E4:        AND #$20                  ;
CODE_00A4E6:        BEQ CODE_00A4FD           ;
CODE_00A4E8:        LDA $700006               ;
CODE_00A4EC:        EOR #$01                  ;
CODE_00A4EE:        STA $700006               ;
CODE_00A4F2:        LDA #$01                  ;
CODE_00A4F4:        STA $0063                 ;
CODE_00A4F7:        JSR CODE_00AFEC           ;
CODE_00A4FA:        JMP CODE_00A771           ;

CODE_00A4FD:        LDA $F4                   ;
CODE_00A4FF:        ORA $F5                   ;
CODE_00A501:        AND #$0C                  ;
CODE_00A503:        LSR A                     ;
CODE_00A504:        LSR A                     ;
CODE_00A505:        TAX                       ;
CODE_00A506:        LDA $D1                   ;
CODE_00A508:        CLC                       ;
CODE_00A509:        ADC DATA_00B5EA,x         ;
CODE_00A50C:        AND #$03                  ;
CODE_00A50E:        STA $D1                   ;
CODE_00A510:        TXY                       ;
CODE_00A511:        BEQ CODE_00A529           ;
CODE_00A513:        LDA $021A                 ;
CODE_00A516:        BNE CODE_00A527           ;
CODE_00A518:        LDA $0220                 ;
CODE_00A51B:        BEQ CODE_00A527           ;
CODE_00A51D:        JSR CODE_00B071           ;
CODE_00A520:        LDA #$23                  ;\SFX to play when you move cursor |> over files ABCD
CODE_00A522:        STA $63                   ;/when selecting a savefile after selecting a game.
CODE_00A524:        JMP CODE_00A771           ;

CODE_00A527:        LDA $D1                   ;
CODE_00A529:        ASL A                     ;
CODE_00A52A:        ASL A                     ;
CODE_00A52B:        CLC                       ;
CODE_00A52C:        ADC $D0                   ;
CODE_00A52E:        STA $01                   ;
CODE_00A530:        TAX                       ;
CODE_00A531:        LDA $D2                   ;
CODE_00A533:        BEQ CODE_00A538           ;
CODE_00A535:        JMP CODE_00A7D6           ;

CODE_00A538:        LDA $B0,x                 ;
CODE_00A53A:        INC A                     ;
CODE_00A53B:        BNE CODE_00A564           ;
CODE_00A53D:        LDA $F4                   ;
CODE_00A53F:        ORA $F5                   ;
CODE_00A541:        AND #$10                  ;
CODE_00A543:        BEQ CODE_00A548           ;
CODE_00A545:        JMP CODE_00A742           ;

CODE_00A548:        LDA $F4                   ;
CODE_00A54A:        ORA $F5                   ;
CODE_00A54C:        AND #$83                  ;
CODE_00A54E:        STA $00                   ;
CODE_00A550:        LDA $F6                   ;
CODE_00A552:        ORA $F7                   ;
CODE_00A554:        AND #$80                  ;
CODE_00A556:        ORA $00                   ;
CODE_00A558:        AND #$83                  ;
CODE_00A55A:        BEQ CODE_00A561           ;
CODE_00A55C:        LDA #$2A                  ;
CODE_00A55E:        STA $0063                 ;
CODE_00A561:        JMP CODE_00A771           ;

CODE_00A564:        TXA                       ;
CODE_00A565:        AND #$03                  ;
CODE_00A567:        CMP #$01                  ;
CODE_00A569:        BNE CODE_00A56E           ;
CODE_00A56B:        JMP CODE_00A658           ;

CODE_00A56E:        LDA $F4                   ;
CODE_00A570:        ORA $F5                   ;
CODE_00A572:        AND #$83                  ;
CODE_00A574:        BNE CODE_00A579           ;
CODE_00A576:        JMP CODE_00A709           ;

CODE_00A579:        AND #$02                  ;
CODE_00A57B:        BEQ CODE_00A580           ;
CODE_00A57D:        JMP CODE_00A607           ;

CODE_00A580:        LDA $B0,x                 ;
CODE_00A582:        CMP #$02                  ;
CODE_00A584:        BCS CODE_00A58B           ;
CODE_00A586:        LDA #$2A                  ;
CODE_00A588:        STA $0063                 ;
CODE_00A58B:        LDA $D0                   ;
CODE_00A58D:        BNE CODE_00A595           ;
CODE_00A58F:        LDA $700490,x             ;
CODE_00A593:        BNE CODE_00A59C           ;
CODE_00A595:        LDA $0080,x               ;
CODE_00A598:        CMP #$01                  ;
CODE_00A59A:        BEQ CODE_00A5A1           ;
CODE_00A59C:        LDA #$4C                  ;
CODE_00A59E:        STA $0063                 ;
CODE_00A5A1:        INC $00B0,x               ;
CODE_00A5A4:        LDA $D0                   ;
CODE_00A5A6:        BNE CODE_00A5DF           ;
CODE_00A5A8:        LDA $700490,x             ;
CODE_00A5AC:        BEQ CODE_00A5DF           ;
CODE_00A5AE:        LDA $70,x                 ;
CODE_00A5B0:        BNE CODE_00A5C5           ;
CODE_00A5B2:        LDA $00B0,x               ;
CODE_00A5B5:        CMP #$09                  ;
CODE_00A5B7:        BCC CODE_00A601           ;
CODE_00A5B9:        LDA #$01                  ;
CODE_00A5BB:        STA $70,x                 ;
CODE_00A5BD:        STA $00B0,x               ;
CODE_00A5C0:        STA $00C0,x               ;
CODE_00A5C3:        BRA CODE_00A601           ;

CODE_00A5C5:        LDA $00B0,x               ;
CODE_00A5C8:        CMP $0080,x               ;
CODE_00A5CB:        BEQ CODE_00A5D7           ;
CODE_00A5CD:        BCC CODE_00A5D3           ;
CODE_00A5CF:        STZ $70,x                 ;
CODE_00A5D1:        LDA #$01                  ;
CODE_00A5D3:        STA $B0,x                 ;
CODE_00A5D5:        BRA CODE_00A601           ;

CODE_00A5D7:        STA $B0,x                 ;
CODE_00A5D9:        LDA #$01                  ;
CODE_00A5DB:        STA $C0,x                 ;
CODE_00A5DD:        BRA CODE_00A601           ;

CODE_00A5DF:        LDA $00B0,x               ;
CODE_00A5E2:        CMP $0080,x               ;
CODE_00A5E5:        BEQ CODE_00A5EF           ;
CODE_00A5E7:        BCC CODE_00A5EB           ;
CODE_00A5E9:        LDA #$01                  ;
CODE_00A5EB:        STA $B0,x                 ;
CODE_00A5ED:        BRA CODE_00A601           ;

CODE_00A5EF:        STA $B0,x                 ;
CODE_00A5F1:        LDA #$01                  ;
CODE_00A5F3:        STA $C0,x                 ;
CODE_00A5F5:        LDA $0218                 ;
CODE_00A5F8:        AND #$03                  ;
CODE_00A5FA:        CMP #$01                  ;
CODE_00A5FC:        BNE CODE_00A601           ;
CODE_00A5FE:        JSR CODE_00B16B           ;
CODE_00A601:        JSR CODE_00B0DA           ;
CODE_00A604:        JMP CODE_00A709           ;

CODE_00A607:        LDA $B0,x                 ;
CODE_00A609:        CMP #$02                  ;
CODE_00A60B:        BCS CODE_00A611           ;
CODE_00A60D:        LDA #$2A                  ;\SFX to play when you can't decrease world number
CODE_00A60F:        STA $63                   ;/in a FILE A/B/C/D select
CODE_00A611:        LDA $D0                   ;
CODE_00A613:        BNE CODE_00A61B           ;
CODE_00A615:        LDA $700490,x             ;
CODE_00A619:        BNE CODE_00A624           ;
CODE_00A61B:        LDA $80,x                 ;
CODE_00A61D:        CMP #$01                  ;
CODE_00A61F:        BNE CODE_00A624           ;
CODE_00A621:        JMP CODE_00A709           ;

CODE_00A624:        LDA #$4C                  ;
CODE_00A626:        STA $63                   ;
CODE_00A628:        DEC $B0,x                 ;
CODE_00A62A:        LDA $D0                   ;
CODE_00A62C:        BNE CODE_00A64A           ;
CODE_00A62E:        LDA $700490,x             ;
CODE_00A632:        BEQ CODE_00A64A           ;
CODE_00A634:        LDA $B0,x                 ;
CODE_00A636:        BNE CODE_00A64A           ;
CODE_00A638:        LDA $70,x                 ;
CODE_00A63A:        BNE CODE_00A644           ;
CODE_00A63C:        LDA $700490,x             ;
CODE_00A640:        STA $70,x                 ;
CODE_00A642:        BRA CODE_00A64A           ;

CODE_00A644:        STZ $70,x                 ;
CODE_00A646:        LDA #$08                  ;
CODE_00A648:        STA $B0,x                 ;
CODE_00A64A:        LDA $B0,x                 ;
CODE_00A64C:        BNE CODE_00A652           ;
CODE_00A64E:        LDA $80,x                 ;
CODE_00A650:        STA $B0,x                 ;
CODE_00A652:        JSR CODE_00B0DA           ;
CODE_00A655:        JMP CODE_00A709           ;

CODE_00A658:        LDA $F4                   ;
CODE_00A65A:        ORA $F5                   ;
CODE_00A65C:        AND #$83                  ;
CODE_00A65E:        BNE CODE_00A663           ;
CODE_00A660:        JMP CODE_00A709           ;

CODE_00A663:        LDA $80,x                 ;
CODE_00A665:        CMP #$01                  ;
CODE_00A667:        BEQ CODE_00A66B           ;
CODE_00A669:        BRA CODE_00A676           ;

CODE_00A66B:        LDA $0090,x               ;
CODE_00A66E:        CMP #$01                  ;
CODE_00A670:        BNE CODE_00A676           ;
CODE_00A672:        LDA #$2A                  ;
CODE_00A674:        BRA CODE_00A678           ;

CODE_00A676:        LDA #$4C                  ;
CODE_00A678:        STA $0063                 ;
CODE_00A67B:        LDA $F4                   ;
CODE_00A67D:        ORA $F5                   ;
CODE_00A67F:        BMI CODE_00A6BE           ;
CODE_00A681:        AND #$01                  ;
CODE_00A683:        BNE CODE_00A6BE           ;
CODE_00A685:        LDA $B0,x                 ;
CODE_00A687:        CMP $80,x                 ;
CODE_00A689:        BNE CODE_00A699           ;
CODE_00A68B:        DEC $C0,x                 ;
CODE_00A68D:        BNE CODE_00A697           ;
CODE_00A68F:        DEC $B0,x                 ;
CODE_00A691:        BEQ CODE_00A6A5           ;
CODE_00A693:        LDA #$04                  ;
CODE_00A695:        STA $C0,x                 ;
CODE_00A697:        BRA CODE_00A6AD           ;

CODE_00A699:        DEC $C0,x                 ;
CODE_00A69B:        BNE CODE_00A6AD           ;
CODE_00A69D:        LDA #$04                  ;
CODE_00A69F:        STA $C0,x                 ;
CODE_00A6A1:        DEC $B0,x                 ;
CODE_00A6A3:        BNE CODE_00A6AD           ;
CODE_00A6A5:        LDA $80,x                 ;
CODE_00A6A7:        STA $B0,x                 ;
CODE_00A6A9:        LDA $90,x                 ;
CODE_00A6AB:        STA $C0,x                 ;
CODE_00A6AD:        LDA $00A0,x               ;
CODE_00A6B0:        BEQ CODE_00A6BB           ;
CODE_00A6B2:        LDA $B0,x                 ;
CODE_00A6B4:        CMP #$09                  ;
CODE_00A6B6:        BNE CODE_00A6BB           ;
CODE_00A6B8:        DEC $00B0,x               ;
CODE_00A6BB:        JMP CODE_00A703           ;

CODE_00A6BE:        INC $00C0,x               ;
CODE_00A6C1:        LDA $B0,x                 ;
CODE_00A6C3:        CMP $0080,x               ;
CODE_00A6C6:        BEQ CODE_00A6DA           ;
CODE_00A6C8:        LDA $C0,x                 ;
CODE_00A6CA:        CMP #$05                  ;
CODE_00A6CC:        BCC CODE_00A6F2           ;
CODE_00A6CE:        INC $B0,x                 ;
CODE_00A6D0:        LDA $B0,x                 ;
CODE_00A6D2:        CMP $80,x                 ;
CODE_00A6D4:        BEQ CODE_00A6F0           ;
CODE_00A6D6:        BCC CODE_00A6F0           ;
CODE_00A6D8:        BRA CODE_00A6EC           ;

CODE_00A6DA:        LDA $C0,x                 ;
CODE_00A6DC:        CMP $90,x                 ;
CODE_00A6DE:        BEQ CODE_00A6F2           ;
CODE_00A6E0:        BCC CODE_00A6F2           ;
CODE_00A6E2:        INC $B0,x                 ;
CODE_00A6E4:        LDA $B0,x                 ;
CODE_00A6E6:        CMP $80,x                 ;
CODE_00A6E8:        BEQ CODE_00A6F2           ;
CODE_00A6EA:        BCC CODE_00A6F2           ;
CODE_00A6EC:        LDA #$01                  ;
CODE_00A6EE:        STA $B0,x                 ;
CODE_00A6F0:        LDA #$01                  ;
CODE_00A6F2:        STA $00C0,x               ;
CODE_00A6F5:        LDA $00A0,x               ;
CODE_00A6F8:        BEQ CODE_00A703           ;
CODE_00A6FA:        LDA $B0,x                 ;
CODE_00A6FC:        CMP #$09                  ;
CODE_00A6FE:        BNE CODE_00A703           ;
CODE_00A700:        INC $00B0,x               ;
CODE_00A703:        JSR CODE_00B0DA           ;
CODE_00A706:        JSR CODE_00B16B           ;
CODE_00A709:        LDA #$00                  ;
CODE_00A70B:        STA $00                   ;
CODE_00A70D:        LDA $0F                   ;
CODE_00A70F:        STA $01                   ;
CODE_00A711:        LDA $D1                   ;
CODE_00A713:        ASL A                     ;
CODE_00A714:        ASL A                     ;
CODE_00A715:        ORA $D0                   ;
CODE_00A717:        STA $0C                   ;
CODE_00A719:        TAX                       ;
CODE_00A71A:        STZ $0D                   ;
CODE_00A71C:        ASL A                     ;
CODE_00A71D:        TAY                       ;
CODE_00A71E:        LDA DATA_00A367,y         ;
CODE_00A721:        STA $02                   ;
CODE_00A723:        LDA DATA_00A367+1,y       ;
CODE_00A726:        STA $03                   ;
CODE_00A728:        LDA $B0,x                 ;
CODE_00A72A:        STA $04                   ;
CODE_00A72C:        STZ $05                   ;
CODE_00A72E:        LDA $C0,x                 ;
CODE_00A730:        STA $06                   ;
CODE_00A732:        STZ $07                   ;
CODE_00A734:        STX $29                   ;
CODE_00A736:        LDX $29                   ;
CODE_00A738:        LDA $F6                   ;
CODE_00A73A:        ORA $F7                   ;
CODE_00A73C:        AND #$80                  ;
CODE_00A73E:        BNE CODE_00A764           ;
CODE_00A740:        LDX $0C                   ;
CODE_00A742:        LDA $F4                   ;
CODE_00A744:        ORA $F5                   ;
CODE_00A746:        AND #$10                  ;
CODE_00A748:        BEQ CODE_00A771           ;
CODE_00A74A:        LDA #$29                  ;
CODE_00A74C:        STA $63                   ;
CODE_00A74E:        STA $0224                 ;
CODE_00A751:        LDA #$10                  ;
CODE_00A753:        STA $0223                 ;
CODE_00A756:        LDA #$70                  ;
CODE_00A758:        STA $0105                 ;
CODE_00A75B:        LDA #$50                  ;
CODE_00A75D:        STA $0107                 ;
CODE_00A760:        STZ $E3                   ;
CODE_00A762:        BRA CODE_00A772           ;

CODE_00A764:        STZ $0224                 ;
CODE_00A767:        LDA #$04                  ;
CODE_00A769:        STA $D2                   ;
CODE_00A76B:        INC $E0                   ;
CODE_00A76D:        LDA #$22                  ;
CODE_00A76F:        STA $63                   ;
CODE_00A771:        RTL                       ;

CODE_00A772:        LDA $D1                   ;
CODE_00A774:        ASL A                     ;
CODE_00A775:        ASL A                     ;
CODE_00A776:        ADC $D0                   ;
CODE_00A778:        LDA $B0,x                 ;
CODE_00A77A:        INC A                     ;
CODE_00A77B:        BNE CODE_00A798           ;
CODE_00A77D:        LDA #$00                  ;
CODE_00A77F:        STA $700008               ;
CODE_00A783:        STA $700009               ;
CODE_00A787:        LDA $D2                   ;
CODE_00A789:        CMP #$04                  ;
CODE_00A78B:        BNE CODE_00A7BE           ;
CODE_00A78D:        LDA #$2A                  ;
CODE_00A78F:        STA $0063                 ;
CODE_00A792:        DEC $E0                   ;
CODE_00A794:        STZ $D2                   ;
CODE_00A796:        BRA CODE_00A7BE           ;

CODE_00A798:        LDA $D2                   ;
CODE_00A79A:        CMP #$04                  ;
CODE_00A79C:        BNE CODE_00A7A8           ;
CODE_00A79E:        LDA #$22                  ;
CODE_00A7A0:        STA $0063                 ;
CODE_00A7A3:        LDA #$40                  ;
CODE_00A7A5:        STA $011B                 ;
CODE_00A7A8:        LDA $B0,x                 ;
CODE_00A7AA:        DEC A                     ;
CODE_00A7AB:        BPL CODE_00A7AF           ;
CODE_00A7AD:        LDA #$00                  ;
CODE_00A7AF:        STA $700008               ;
CODE_00A7B3:        LDA $C0,x                 ;
CODE_00A7B5:        DEC A                     ;
CODE_00A7B6:        BPL CODE_00A7BA           ;
CODE_00A7B8:        LDA #$00                  ;
CODE_00A7BA:        STA $700009               ;
CODE_00A7BE:        LDA $D1                   ;
CODE_00A7C0:        ASL A                     ;
CODE_00A7C1:        ASL A                     ;
CODE_00A7C2:        CLC                       ;
CODE_00A7C3:        ADC $D0                   ;
CODE_00A7C5:        ASL A                     ;
CODE_00A7C6:        TAX                       ;
CODE_00A7C7:        LDA DATA_00A80C,x         ;
CODE_00A7CA:        STA $700004               ;
CODE_00A7CE:        LDA DATA_00A80C+1,x       ;
CODE_00A7D1:        STA $700005               ;
CODE_00A7D5:        RTL                       ;

CODE_00A7D6:        LDA $F4                   ;
CODE_00A7D8:        ORA $F5                   ;
CODE_00A7DA:        AND #$10                  ;
CODE_00A7DC:        BEQ CODE_00A7E0           ;
CODE_00A7DE:        INC $E0                   ;
CODE_00A7E0:        LDA #$00                  ;
CODE_00A7E2:        STA $00                   ;
CODE_00A7E4:        LDA $0F                   ;
CODE_00A7E6:        STA $01                   ;
CODE_00A7E8:        LDA $D1                   ;
CODE_00A7EA:        ASL A                     ;
CODE_00A7EB:        ASL A                     ;
CODE_00A7EC:        ORA $D0                   ;
CODE_00A7EE:        STA $0C                   ;
CODE_00A7F0:        TAX                       ;
CODE_00A7F1:        STZ $0D                   ;
CODE_00A7F3:        ASL A                     ;
CODE_00A7F4:        TAY                       ;
CODE_00A7F5:        LDA DATA_00A367,y         ;
CODE_00A7F8:        STA $02                   ;
CODE_00A7FA:        LDA DATA_00A367+1,y       ;
CODE_00A7FD:        STA $03                   ;
CODE_00A7FF:        LDA $B0,x                 ;
CODE_00A801:        STA $04                   ;
CODE_00A803:        STZ $05                   ;
CODE_00A805:        LDA $C0,x                 ;
CODE_00A807:        STA $06                   ;
CODE_00A809:        STZ $07                   ;
CODE_00A80B:        RTL                       ;

DATA_00A80C:        dw $0000,$0009,$0011,$001A
                    dw $0120,$0129,$0131,$013A
                    dw $0240,$0249,$0251,$025A
                    dw $0360,$0369,$0371,$037A

CODE_00A82C:        LDA $D1                   ;
CODE_00A82E:        ASL A                     ;
CODE_00A82F:        ASL A                     ;
CODE_00A830:        CLC                       ;
CODE_00A831:        ADC $D0                   ;
CODE_00A833:        ASL A                     ;
CODE_00A834:        TAX                       ;
CODE_00A835:        REP #$20                  ;
CODE_00A837:        LDA DATA_00A80C,x         ;
CODE_00A83A:        REP #$10                  ;
CODE_00A83C:        TAX                       ;
CODE_00A83D:        LDA #$FFFF                ;
CODE_00A840:        STA $700010,x             ;
CODE_00A844:        SEP #$30                  ;
CODE_00A846:        JMP CODE_008C1B           ;

CODE_00A849:        PHB                       ;\
CODE_00A84A:        LDA #$70                  ; |Program bank: SRAM
CODE_00A84C:        PHA                       ; |
CODE_00A84D:        PLB                       ;/
CODE_00A84E:        REP #$10                  ;\
CODE_00A850:        LDA #$20                  ; |
CODE_00A852:        STA $0E                   ; |
CODE_00A854:        LDA #$01                  ; |
CODE_00A856:        STA $0F                   ; | 
CODE_00A858:        LDX #$0000                ; |
CODE_00A85B:        LDY $0004                 ; | Load $120 bytes of saved data from SRAM Offset of last save data accessed
CODE_00A85E:        LDA $0010,y               ; | into RAM $7FFB00 whenever you load a game. Doesn't matter which.
CODE_00A861:        STA $7FFB00,x             ; |
CODE_00A865:        INY                       ; |
CODE_00A866:        INX                       ; |
CODE_00A867:        CPX $0E                   ; |
CODE_00A869:        BNE CODE_00A85E           ;/
CODE_00A86B:        LDA $0008                 ;\
CODE_00A86E:        STA $7FFB00               ;/Which world you have loaded, from SRAM into RAM
CODE_00A872:        LDA $0009                 ;\
CODE_00A875:        STA $7FFB01               ;/Which level you have loaded, from SRAM into RAM
CODE_00A879:        LDA $70000F               ;\
CODE_00A87D:        STA $00                   ;/Loaded game into scratch RAM
CODE_00A87F:        BNE CODE_00A896           ;\
CODE_00A881:        LDA $70000E               ; |
CODE_00A885:        ASL A                     ; | If SMB1
CODE_00A886:        ASL A                     ; | Save slot # << 4
CODE_00A887:        ORA $00                   ; | OR $00  (isn't this always 00 because we only get here when it's 00?)
CODE_00A889:        XBA                       ; | 
CODE_00A88A:        LDA #$00                  ; | Clear high byte, to index.
CODE_00A88C:        XBA                       ; | 
CODE_00A88D:        TAX                       ; | (so basically save slot * 4 to index)
CODE_00A88E:        LDA $700490,x             ;\|
CODE_00A892:        STA $7FFB05               ;/ More difficult quest flag for SMB1
CODE_00A896:        LDA #$00                  ;\
CODE_00A898:        XBA                       ; |
CODE_00A899:        LDA $70000E               ; |
CODE_00A89D:        AND #$03                  ; | Loaded save slot * 4 to X index
CODE_00A89F:        ASL A                     ; | (for what purpose?)
CODE_00A8A0:        ASL A                     ; |
CODE_00A8A1:        TAX                       ; |
CODE_00A8A2:        SEP #$10                  ; |
CODE_00A8A4:        PLB                       ; |
CODE_00A8A5:        RTL                       ;/

PNTR_00A8A6:        dw CODE_00AA05
                    dw CODE_00AAA1
                    dw CODE_00AB74
                    dw CODE_00AC12

CODE_00A8AE:        REP #$20                  ;
CODE_00A8B0:        LDX #$80                  ;
CODE_00A8B2:        LDA #$02FF                ;
CODE_00A8B5:        STA $0400,x               ;
CODE_00A8B8:        STA $0480,x               ;
CODE_00A8BB:        STA $0500,x               ;
CODE_00A8BE:        STA $0580,x               ;
CODE_00A8C1:        STA $0600,x               ;
CODE_00A8C4:        STA $0680,x               ;
CODE_00A8C7:        STA $0700,x               ;
CODE_00A8CA:        DEX                       ;
CODE_00A8CB:        DEX                       ;
CODE_00A8CC:        BPL CODE_00A8B5           ;
CODE_00A8CE:        LDY $D1                   ;
CODE_00A8D0:        LDX DATA_00AA01,y               ;
CODE_00A8D3:        LDA #$034F                ;
CODE_00A8D6:        STA $04DA,x               ;
CODE_00A8D9:        LDX #$00                  ;
CODE_00A8DB:        LDA DATA_00A9B1,x               ;
CODE_00A8DE:        CMP #$FFFF                ;
CODE_00A8E1:        BEQ CODE_00A8F3           ;
CODE_00A8E3:        STA $04DC,x               ;
CODE_00A8E6:        STA $0530,x               ;
CODE_00A8E9:        STA $0584,x               ;
CODE_00A8EC:        STA $05D8,x               ;
CODE_00A8EF:        INX                       ;
CODE_00A8F0:        INX                       ;
CODE_00A8F1:        BRA CODE_00A8DB           ;

CODE_00A8F3:        LDX #$00                  ;
CODE_00A8F5:        LDA #$0360                ;
CODE_00A8F8:        STA $04BE,x               ;
CODE_00A8FB:        STA $0512,x               ;
CODE_00A8FE:        STA $0566,x               ;
CODE_00A901:        STA $05BA,x               ;
CODE_00A904:        INC A                     ;
CODE_00A905:        INX                       ;
CODE_00A906:        INX                       ;
CODE_00A907:        CPX #$08                  ;
CODE_00A909:        BNE CODE_00A8F8           ;
CODE_00A90B:        REP #$10                  ;
CODE_00A90D:        LDX #$0000                ;
CODE_00A910:        LDA #$02F5                ;
CODE_00A913:        STA $00                   ;
CODE_00A915:        LDA $00                   ;
CODE_00A917:        STA $04B8,x               ;
CODE_00A91A:        INC $00                   ;
CODE_00A91C:        TXA                       ;
CODE_00A91D:        CLC                       ;
CODE_00A91E:        ADC #$002A                ;
CODE_00A921:        TAX                       ;
CODE_00A922:        CPX #$0150                ;
CODE_00A925:        BNE CODE_00A915           ;
CODE_00A927:        SEP #$10                  ;
CODE_00A929:        LDX #$00                  ;
CODE_00A92B:        LDA #$038B                ;
CODE_00A92E:        STA $0622,x               ;
CODE_00A931:        INC A                     ;
CODE_00A932:        INX                       ;
CODE_00A933:        INX                       ;
CODE_00A934:        CPX #$14                  ;
CODE_00A936:        BNE CODE_00A92E           ;
CODE_00A938:        LDX #$00                  ;
CODE_00A93A:        LDA DATA_00A9C7,x         ;
CODE_00A93D:        STA $067C,x               ;
CODE_00A940:        LDA DATA_00A9CF,x         ;
CODE_00A943:        STA $06A6,x               ;
CODE_00A946:        LDA DATA_00A9D7,x         ;
CODE_00A949:        STA $06D0,x               ;
CODE_00A94C:        LDA DATA_00A9DF,x         ;
CODE_00A94F:        STA $06FA,x               ;
CODE_00A952:        INX                       ;
CODE_00A953:        INX                       ;
CODE_00A954:        CPX #$08                  ;
CODE_00A956:        BNE CODE_00A93A           ;
CODE_00A958:        LDA #$0368                ;
CODE_00A95B:        STA $00                   ;
CODE_00A95D:        LDA #$0378                ;
CODE_00A960:        STA $02                   ;
CODE_00A962:        LDX #$00                  ;
CODE_00A964:        LDA $00                   ;
CODE_00A966:        STA $0684,x               ;
CODE_00A969:        STA $06CA,x               ;
CODE_00A96C:        LDA $02                   ;
CODE_00A96E:        STA $06AE,x               ;
CODE_00A971:        STA $0702,x               ;
CODE_00A974:        INC $00                   ;
CODE_00A976:        INC $02                   ;
CODE_00A978:        INX                       ;
CODE_00A979:        INX                       ;
CODE_00A97A:        CPX #$06                  ;
CODE_00A97C:        BNE CODE_00A964           ;
CODE_00A97E:        LDA #$0380                ;
CODE_00A981:        LDX #$00                  ;
CODE_00A983:        STA $0722,x               ;
CODE_00A986:        INC A                     ;
CODE_00A987:        INX                       ;
CODE_00A988:        INX                       ;
CODE_00A989:        CPX #$0C                  ;
CODE_00A98B:        BNE CODE_00A983           ;
CODE_00A98D:        LDA $700006               ;
CODE_00A991:        AND #$00FF                ;
CODE_00A994:        BEQ CODE_00A9AE           ;
CODE_00A996:        LDA #$0368                ;
CODE_00A999:        STA $0702                 ;
CODE_00A99C:        INC A                     ;
CODE_00A99D:        STA $0704                 ;
CODE_00A9A0:        INC A                     ;
CODE_00A9A1:        STA $0706                 ;
CODE_00A9A4:        LDA #$0386                ;
CODE_00A9A7:        STA $072A                 ;
CODE_00A9AA:        INC A                     ;
CODE_00A9AB:        STA $072C                 ;
CODE_00A9AE:        SEP #$20                  ;
CODE_00A9B0:        RTS                       ;

DATA_00A9B1:        db $F2,$02,$F3,$02,$F4,$02,$51,$03 ; Tilemap in selected game's file select
                    db $51,$03,$51,$03,$70,$03,$71,$03 ; Tilemap of "FILE" and the entire line below it
                    db $72,$03,$73,$03,$FF,$FF         ; Tilemap for all the 4 "FILE" sections. Format: tile, properties. FF marks end

DATA_00A9C7:        db $64,$03,$65,$03,$66,$03,$67,$03 ;Tilemap in selected game's file select

DATA_00A9CF:        db $74,$03,$75,$03,$76,$03,$77,$03 ;Tilemap of the small controller in the bottom-left corner

DATA_00A9D7:        db $6B,$03,$6C,$03,$6D,$03,$6E,$03 ;Format: tile, properties

DATA_00A9DF:        db $7B,$03,$7C,$03,$7D,$03,$7E,$03 ;Tilemap is for controller -only-, not for the text around it.

DATA_00A9E7:        db $FF,$FF,$83,$03,$95,$03,$96,$03 ;
                    db $97,$03,$83,$03,$FF,$02,$98,$03 ;
                    db $99,$03,$9A,$03,$83,$03,$FF,$02 ;
                    db $5F,$03                         ;

DATA_00AA01:        db $00,$54,$A8,$FC

CODE_00AA05:        LDA $0220                 ;
CODE_00AA08:        BNE CODE_00AA73           ;
CODE_00AA0A:        LDA $021B                 ;
CODE_00AA0D:        BNE CODE_00AA6E           ;
CODE_00AA0F:        LDA $00                   ;
CODE_00AA11:        BNE CODE_00AA1E           ;
CODE_00AA13:        LDA #$01                  ;
CODE_00AA15:        STA $0220                 ;
CODE_00AA18:        STZ $021A                 ;
CODE_00AA1B:        JMP CODE_00AAA0           ;

CODE_00AA1E:        LDA #$3F                  ;
CODE_00AA20:        STA $0063                 ;
CODE_00AA23:        REP #$20                  ;
CODE_00AA25:        LDA #$0300                ;
CODE_00AA28:        STA $00                   ;
CODE_00AA2A:        LDA #$0310                ;
CODE_00AA2D:        STA $02                   ;
CODE_00AA2F:        LDX #$00                  ;
CODE_00AA31:        LDA $00                   ;
CODE_00AA33:        STA $0438,x               ;
CODE_00AA36:        LDA $02                   ;
CODE_00AA38:        STA $0462,x               ;
CODE_00AA3B:        INC $00                   ;
CODE_00AA3D:        INC $02                   ;
CODE_00AA3F:        INX                       ;
CODE_00AA40:        INX                       ;
CODE_00AA41:        CPX #$10                  ;
CODE_00AA43:        BNE CODE_00AA31           ;
CODE_00AA45:        STZ $021E                 ;
CODE_00AA48:        LDA #$00B0                ;
CODE_00AA4B:        STA $00                   ;
CODE_00AA4D:        JSR CODE_00ACF0           ;
CODE_00AA50:        LDA #$0016                ;
CODE_00AA53:        STA $00                   ;
CODE_00AA55:        LDX #$70                  ;
CODE_00AA57:        STX $02                   ;
CODE_00AA59:        JSR CODE_00ADAB           ;
CODE_00AA5C:        LDA #$78E5                ;
CODE_00AA5F:        STA $021C                 ;
CODE_00AA62:        SEP #$20                  ;
CODE_00AA64:        LDA #$01                  ;
CODE_00AA66:        STA $021A                 ;
CODE_00AA69:        LDA #$15                  ;
CODE_00AA6B:        STA $021B                 ;
CODE_00AA6E:        JSR CODE_00ADF8           ;
CODE_00AA71:        BRA CODE_00AAA0           ;

CODE_00AA73:        LDA $021B                 ;
CODE_00AA76:        BNE CODE_00AA9D           ;
CODE_00AA78:        LDA $00                   ;
CODE_00AA7A:        BNE CODE_00AA84           ;
CODE_00AA7C:        STZ $021A                 ;
CODE_00AA7F:        STZ $0220                 ;
CODE_00AA82:        BRA CODE_00AAA0           ;

CODE_00AA84:        LDA #$3F                  ;
CODE_00AA86:        STA $0063                 ;
CODE_00AA89:        REP #$20                  ;
CODE_00AA8B:        LDA #$070A                ;
CODE_00AA8E:        STA $021E                 ;
CODE_00AA91:        SEP #$20                  ;
CODE_00AA93:        LDA #$01                  ;
CODE_00AA95:        STA $021A                 ;
CODE_00AA98:        LDA #$16                  ;
CODE_00AA9A:        STA $021B                 ;
CODE_00AA9D:        JSR CODE_00AEC9           ;
CODE_00AAA0:        RTS                       ;

CODE_00AAA1:        LDA $0220                 ;
CODE_00AAA4:        BEQ CODE_00AAA9           ;
CODE_00AAA6:        JMP CODE_00AB2E           ;

CODE_00AAA9:        LDA $021B                 ;
CODE_00AAAC:        BNE CODE_00AB11           ;
CODE_00AAAE:        LDA $00                   ;
CODE_00AAB0:        BNE CODE_00AABD           ;
CODE_00AAB2:        LDA #$01                  ;
CODE_00AAB4:        STA $0220                 ;
CODE_00AAB7:        STZ $021A                 ;
CODE_00AABA:        JMP CODE_00AB73           ;

CODE_00AABD:        LDA #$3F                  ;
CODE_00AABF:        STA $0063                 ;
CODE_00AAC2:        REP #$20                  ;
CODE_00AAC4:        LDA #$0300                ;
CODE_00AAC7:        STA $00                   ;
CODE_00AAC9:        LDA #$0310                ;
CODE_00AACC:        STA $02                   ;
CODE_00AACE:        LDX #$00                  ;
CODE_00AAD0:        LDA $00                   ;
CODE_00AAD2:        STA $0438,x               ;
CODE_00AAD5:        LDA $02                   ;
CODE_00AAD7:        STA $0462,x               ;
CODE_00AADA:        INC $00                   ;
CODE_00AADC:        INC $02                   ;
CODE_00AADE:        INX                       ;
CODE_00AADF:        INX                       ;
CODE_00AAE0:        CPX #$10                  ;
CODE_00AAE2:        BNE CODE_00AAD0           ;
CODE_00AAE4:        LDX #$00                  ;
CODE_00AAE6:        LDA #$02E0                ;
CODE_00AAE9:        STA $048C,x               ;
CODE_00AAEC:        INC A                     ;
CODE_00AAED:        INX                       ;
CODE_00AAEE:        INX                       ;
CODE_00AAEF:        CPX #$10                  ;
CODE_00AAF1:        BNE CODE_00AAE9           ;
CODE_00AAF3:        STZ $021E                 ;
CODE_00AAF6:        LDA #$00B0                ;
CODE_00AAF9:        INC A                     ;
CODE_00AAFA:        STA $00                   ;
CODE_00AAFC:        JSR CODE_00AD5C           ;
CODE_00AAFF:        LDA #$78F4                ;
CODE_00AB02:        STA $021C                 ;
CODE_00AB05:        SEP #$20                  ;
CODE_00AB07:        LDA #$01                  ;
CODE_00AB09:        STA $021A                 ;
CODE_00AB0C:        LDA #$15                  ;
CODE_00AB0E:        STA $021B                 ;
CODE_00AB11:        REP #$20                  ;
CODE_00AB13:        LDA #$000C                ;
CODE_00AB16:        STA $00                   ;
CODE_00AB18:        LDA #$0009                ;
CODE_00AB1B:        STA $02                   ;
CODE_00AB1D:        LDA #$0018                ;
CODE_00AB20:        STA $04                   ;
CODE_00AB22:        LDA #$0012                ;
CODE_00AB25:        STA $06                   ;
CODE_00AB27:        SEP #$20                  ;
CODE_00AB29:        JSR CODE_00AE4A           ;
CODE_00AB2C:        BRA CODE_00AB73           ;

CODE_00AB2E:        LDA $021B                 ;
CODE_00AB31:        BNE CODE_00AB58           ;
CODE_00AB33:        LDA $00                   ;
CODE_00AB35:        BNE CODE_00AB3F           ;
CODE_00AB37:        STZ $021A                 ;
CODE_00AB3A:        STZ $0220                 ;
CODE_00AB3D:        BRA CODE_00AB73           ;

CODE_00AB3F:        LDA #$3F                  ;
CODE_00AB41:        STA $0063                 ;
CODE_00AB44:        REP #$20                  ;
CODE_00AB46:        LDA #$0728                ;
CODE_00AB49:        STA $021E                 ;
CODE_00AB4C:        SEP #$20                  ;
CODE_00AB4E:        LDA #$01                  ;
CODE_00AB50:        STA $021A                 ;
CODE_00AB53:        LDA #$16                  ;
CODE_00AB55:        STA $021B                 ;
CODE_00AB58:        REP #$20                  ;
CODE_00AB5A:        LDA #$000C                ;
CODE_00AB5D:        STA $00                   ;
CODE_00AB5F:        LDA #$0009                ;
CODE_00AB62:        STA $02                   ;
CODE_00AB64:        LDA #$0018                ;
CODE_00AB67:        STA $04                   ;
CODE_00AB69:        LDA #$0012                ;
CODE_00AB6C:        STA $06                   ;
CODE_00AB6E:        SEP #$20                  ;
CODE_00AB70:        JSR CODE_00AF3C           ;
CODE_00AB73:        RTS                       ;

CODE_00AB74:        LDA $0220                 ;
CODE_00AB77:        BNE CODE_00ABE4           ;
CODE_00AB79:        LDA $021B                 ;
CODE_00AB7C:        BNE CODE_00ABDF           ;
CODE_00AB7E:        LDA $00                   ;
CODE_00AB80:        BNE CODE_00AB8D           ;
CODE_00AB82:        LDA #$01                  ;
CODE_00AB84:        STA $0220                 ;
CODE_00AB87:        STZ $021A                 ;
CODE_00AB8A:        JMP CODE_00AC11           ;

CODE_00AB8D:        LDA #$3F                  ;
CODE_00AB8F:        STA $0063                 ;
CODE_00AB92:        REP #$20                  ;
CODE_00AB94:        LDA #$0300                ;
CODE_00AB97:        STA $00                   ;
CODE_00AB99:        LDA #$0310                ;
CODE_00AB9C:        STA $02                   ;
CODE_00AB9E:        LDX #$00                  ;
CODE_00ABA0:        LDA $00                   ;
CODE_00ABA2:        STA $0436,x               ;
CODE_00ABA5:        LDA $02                   ;
CODE_00ABA7:        STA $0460,x               ;
CODE_00ABAA:        INC $00                   ;
CODE_00ABAC:        INC $02                   ;
CODE_00ABAE:        INX                       ;
CODE_00ABAF:        INX                       ;
CODE_00ABB0:        CPX #$10                  ;
CODE_00ABB2:        BNE CODE_00ABA0           ;
CODE_00ABB4:        LDA #$030B                ;
CODE_00ABB7:        STA $0446                 ;
CODE_00ABBA:        LDA #$031B                ;
CODE_00ABBD:        STA $0470                 ;
CODE_00ABC0:        STZ $021E                 ;
CODE_00ABC3:        LDA #$00B0                ;
CODE_00ABC6:        INC A                     ;
CODE_00ABC7:        INC A                     ;
CODE_00ABC8:        STA $00                   ;
CODE_00ABCA:        JSR CODE_00ACF0           ;
CODE_00ABCD:        LDA #$7CE4                ;
CODE_00ABD0:        STA $021C                 ;
CODE_00ABD3:        SEP #$20                  ;
CODE_00ABD5:        LDA #$01                  ;
CODE_00ABD7:        STA $021A                 ;
CODE_00ABDA:        LDA #$15                  ;
CODE_00ABDC:        STA $021B                 ;
CODE_00ABDF:        JSR CODE_00ADF8           ;
CODE_00ABE2:        BRA CODE_00AC11           ;

CODE_00ABE4:        LDA $021B                 ;
CODE_00ABE7:        BNE CODE_00AC0E           ;
CODE_00ABE9:        LDA $00                   ;
CODE_00ABEB:        BNE CODE_00ABF5           ;
CODE_00ABED:        STZ $021A                 ;
CODE_00ABF0:        STZ $0220                 ;
CODE_00ABF3:        BRA CODE_00AC11           ;

CODE_00ABF5:        LDA #$3F                  ;
CODE_00ABF7:        STA $0063                 ;
CODE_00ABFA:        REP #$20                  ;
CODE_00ABFC:        LDA #$0F08                ;
CODE_00ABFF:        STA $021E                 ;
CODE_00AC02:        SEP #$20                  ;
CODE_00AC04:        LDA #$01                  ;
CODE_00AC06:        STA $021A                 ;
CODE_00AC09:        LDA #$16                  ;
CODE_00AC0B:        STA $021B                 ;
CODE_00AC0E:        JSR CODE_00AEC9           ;
CODE_00AC11:        RTS                       ;

CODE_00AC12:        LDA $0220                 ;
CODE_00AC15:        BEQ CODE_00AC1A           ;
CODE_00AC17:        JMP CODE_00ACAA           ;

CODE_00AC1A:        LDA $021B                 ;
CODE_00AC1D:        BNE CODE_00AC8D           ;
CODE_00AC1F:        LDA $00                   ;
CODE_00AC21:        BNE CODE_00AC2E           ;
CODE_00AC23:        LDA #$01                  ;
CODE_00AC25:        STA $0220                 ;
CODE_00AC28:        STZ $021A                 ;
CODE_00AC2B:        JMP CODE_00ACEF           ;

CODE_00AC2E:        LDA #$3F                  ;
CODE_00AC30:        STA $0063                 ;
CODE_00AC33:        REP #$20                  ;
CODE_00AC35:        LDA #$0300                ;
CODE_00AC38:        STA $00                   ;
CODE_00AC3A:        LDA #$0310                ;
CODE_00AC3D:        STA $02                   ;
CODE_00AC3F:        LDX #$00                  ;
CODE_00AC41:        LDA $00                   ;
CODE_00AC43:        STA $0436,x               ;
CODE_00AC46:        LDA $02                   ;
CODE_00AC48:        STA $0460,x               ;
CODE_00AC4B:        INC $00                   ;
CODE_00AC4D:        INC $02                   ;
CODE_00AC4F:        INX                       ;
CODE_00AC50:        INX                       ;
CODE_00AC51:        CPX #$10                  ;
CODE_00AC53:        BNE CODE_00AC41           ;
CODE_00AC55:        LDA #$030C                ;
CODE_00AC58:        STA $0446                 ;
CODE_00AC5B:        LDA #$031C                ;
CODE_00AC5E:        STA $0470                 ;
CODE_00AC61:        STZ $021E                 ;
CODE_00AC64:        LDA #$00B0                ;
CODE_00AC67:        INC A                     ;
CODE_00AC68:        INC A                     ;
CODE_00AC69:        INC A                     ;
CODE_00AC6A:        STA $00                   ;
CODE_00AC6C:        JSR CODE_00ACF0           ;
CODE_00AC6F:        LDA #$012D                ;
CODE_00AC72:        STA $00                   ;
CODE_00AC74:        LDX #$70                  ;
CODE_00AC76:        STX $02                   ;
CODE_00AC78:        JSR CODE_00ADAB           ;
CODE_00AC7B:        LDA #$7CF5                ;
CODE_00AC7E:        STA $021C                 ;
CODE_00AC81:        SEP #$20                  ;
CODE_00AC83:        LDA #$01                  ;
CODE_00AC85:        STA $021A                 ;
CODE_00AC88:        LDA #$15                  ;
CODE_00AC8A:        STA $021B                 ;
CODE_00AC8D:        REP #$20                  ;
CODE_00AC8F:        LDA #$000B                ;
CODE_00AC92:        STA $00                   ;
CODE_00AC94:        LDA #$000A                ;
CODE_00AC97:        STA $02                   ;
CODE_00AC99:        LDA #$0016                ;
CODE_00AC9C:        STA $04                   ;
CODE_00AC9E:        LDA #$0014                ;
CODE_00ACA1:        STA $06                   ;
CODE_00ACA3:        SEP #$20                  ;
CODE_00ACA5:        JSR CODE_00AE4A           ;
CODE_00ACA8:        BRA CODE_00ACEF           ;

CODE_00ACAA:        LDA $021B                 ;
CODE_00ACAD:        BNE CODE_00ACD4           ;
CODE_00ACAF:        LDA $00                   ;
CODE_00ACB1:        BNE CODE_00ACBB           ;
CODE_00ACB3:        STZ $021A                 ;
CODE_00ACB6:        STZ $0220                 ;
CODE_00ACB9:        BRA CODE_00ACEF           ;

CODE_00ACBB:        LDA #$3F                  ;
CODE_00ACBD:        STA $0063                 ;
CODE_00ACC0:        REP #$20                  ;
CODE_00ACC2:        LDA #$0F2A                ;
CODE_00ACC5:        STA $021E                 ;
CODE_00ACC8:        SEP #$20                  ;
CODE_00ACCA:        LDA #$01                  ;
CODE_00ACCC:        STA $021A                 ;
CODE_00ACCF:        LDA #$16                  ;
CODE_00ACD1:        STA $021B                 ;
CODE_00ACD4:        REP #$20                  ;
CODE_00ACD6:        LDA #$000B                ;
CODE_00ACD9:        STA $00                   ;
CODE_00ACDB:        LDA #$000A                ;
CODE_00ACDE:        STA $02                   ;
CODE_00ACE0:        LDA #$0016                ;
CODE_00ACE3:        STA $04                   ;
CODE_00ACE5:        LDA #$0014                ;
CODE_00ACE8:        STA $06                   ;
CODE_00ACEA:        SEP #$20                  ;
CODE_00ACEC:        JSR CODE_00AF3C           ;
CODE_00ACEF:        RTS                       ;

CODE_00ACF0:        LDX #$00                  ;
CODE_00ACF2:        TXY                       ;
CODE_00ACF3:        LDA ($00),y               ;
CODE_00ACF5:        INC A                     ;
CODE_00ACF6:        AND #$00FF                ;
CODE_00ACF9:        BEQ CODE_00AD22           ;
CODE_00ACFB:        ORA #$0340                ;
CODE_00ACFE:        STA $04C0,x               ;
CODE_00AD01:        ORA #$0010                ;
CODE_00AD04:        STA $04EA,x               ;
CODE_00AD07:        LDA #$02FD                ;
CODE_00AD0A:        STA $04EC,x               ;
CODE_00AD0D:        LDA #$0351                ;
CODE_00AD10:        STA $04E8,x               ;
CODE_00AD13:        STA $04EE,x               ;
CODE_00AD16:        LDA #$02FF                ;
CODE_00AD19:        STA $04BE,x               ;
CODE_00AD1C:        STA $04C2,x               ;
CODE_00AD1F:        STA $04C4,x               ;
CODE_00AD22:        TXA                       ;
CODE_00AD23:        CLC                       ;
CODE_00AD24:        ADC #$0054                ;
CODE_00AD27:        TAX                       ;
CODE_00AD28:        INY                       ;
CODE_00AD29:        INY                       ;
CODE_00AD2A:        INY                       ;
CODE_00AD2B:        INY                       ;
CODE_00AD2C:        CPY #$10                  ;
CODE_00AD2E:        BNE CODE_00ACF3           ;
CODE_00AD30:        LDA $0218                 ;
CODE_00AD33:        AND #$0003                ;
CODE_00AD36:        CMP #$0002                ;
CODE_00AD39:        BCS CODE_00AD5B           ;
CODE_00AD3B:        LDX #$00                  ;
CODE_00AD3D:        TXY                       ;
CODE_00AD3E:        LDA $70,x                 ;
CODE_00AD40:        AND #$00FF                ;
CODE_00AD43:        BEQ CODE_00AD4B           ;
CODE_00AD45:        LDA #$039B                ;
CODE_00AD48:        STA $04E8,y               ;
CODE_00AD4B:        TYA                       ;
CODE_00AD4C:        CLC                       ;
CODE_00AD4D:        ADC #$0054                ;
CODE_00AD50:        TAY                       ;
CODE_00AD51:        INX                       ;
CODE_00AD52:        INX                       ;
CODE_00AD53:        INX                       ;
CODE_00AD54:        INX                       ;
CODE_00AD55:        CPX #$10                  ;
CODE_00AD57:        BEQ CODE_00AD5B           ;
CODE_00AD59:        BRA CODE_00AD3E           ;

CODE_00AD5B:        RTS                       ;

CODE_00AD5C:        LDX #$00                  ;
CODE_00AD5E:        TXY                       ;
CODE_00AD5F:        LDA ($00),y               ;
CODE_00AD61:        INC A                     ;
CODE_00AD62:        AND #$00FF                ;
CODE_00AD65:        BEQ CODE_00AD9C           ;
CODE_00AD67:        ORA #$0340                ;
CODE_00AD6A:        STA $04BE,x               ;
CODE_00AD6D:        ORA #$0010                ;
CODE_00AD70:        STA $04E8,x               ;
CODE_00AD73:        LDA #$02FD                ;
CODE_00AD76:        STA $04EA,x               ;
CODE_00AD79:        LDA #$02FE                ;
CODE_00AD7C:        STA $04EC,x               ;
CODE_00AD7F:        LDA #$02FF                ;
CODE_00AD82:        STA $04C0,x               ;
CODE_00AD85:        STA $04C2,x               ;
CODE_00AD88:        LDA $00C0,y               ;
CODE_00AD8B:        XBA                       ;
CODE_00AD8C:        AND #$00FF                ;
CODE_00AD8F:        INC A                     ;
CODE_00AD90:        ORA #$0340                ;
CODE_00AD93:        STA $04C4,x               ;
CODE_00AD96:        ORA #$0010                ;
CODE_00AD99:        STA $04EE,x               ;
CODE_00AD9C:        TXA                       ;
CODE_00AD9D:        CLC                       ;
CODE_00AD9E:        ADC #$0054                ;
CODE_00ADA1:        TAX                       ;
CODE_00ADA2:        INY                       ;
CODE_00ADA3:        INY                       ;
CODE_00ADA4:        INY                       ;
CODE_00ADA5:        INY                       ;
CODE_00ADA6:        CPY #$10                  ;
CODE_00ADA8:        BNE CODE_00AD5F           ;
CODE_00ADAA:        RTS                       ;

CODE_00ADAB:        REP #$10                  ;
CODE_00ADAD:        LDA $0218                 ;
CODE_00ADB0:        AND #$0003                ;
CODE_00ADB3:        STA $0A                   ;
CODE_00ADB5:        LDA #$0000                ;
CODE_00ADB8:        TAX                       ;
CODE_00ADB9:        STA $04                   ;
CODE_00ADBB:        LDY $04                   ;
CODE_00ADBD:        LDA [$00],y               ;
CODE_00ADBF:        AND #$00FF                ;
CODE_00ADC2:        CMP #$00FF                ;
CODE_00ADC5:        BEQ CODE_00ADD6           ;
CODE_00ADC7:        CLC                       ;
CODE_00ADC8:        ADC $0A                   ;
CODE_00ADCA:        ASL A                     ;
CODE_00ADCB:        TAY                       ;
CODE_00ADCC:        LDA DATA_00ADEC,y               ;
CODE_00ADCF:        STA $04F0,x               ;
CODE_00ADD2:        INC A                     ;
CODE_00ADD3:        STA $04F2,x               ;
CODE_00ADD6:        LDA $04                   ;
CODE_00ADD8:        CLC                       ;
CODE_00ADD9:        ADC #$0120                ;
CODE_00ADDC:        STA $04                   ;
CODE_00ADDE:        TXA                       ;
CODE_00ADDF:        CLC                       ;
CODE_00ADE0:        ADC #$0054                ;
CODE_00ADE3:        TAX                       ;
CODE_00ADE4:        AND #$0100                ;
CODE_00ADE7:        BEQ CODE_00ADBB           ;
CODE_00ADE9:        SEP #$10                  ;
CODE_00ADEB:        RTS                       ;

DATA_00ADEC:        db $9C,$03,$9E,$03,$00,$00,$00,$00 ;
                    db $9C,$03,$9E,$03 ;

CODE_00ADF8:        LDA $7F8000               ;
CODE_00ADFC:        TAX                       ;
CODE_00ADFD:        REP #$30                  ;
CODE_00ADFF:        LDA #$0015                ;
CODE_00AE02:        STA $04                   ;
CODE_00AE04:        LDA $021C                 ;
CODE_00AE07:        XBA                       ;
CODE_00AE08:        STA $7F8002,x             ;
CODE_00AE0C:        INX                       ;
CODE_00AE0D:        INX                       ;
CODE_00AE0E:        LDA #$002A                ;
CODE_00AE11:        XBA                       ;
CODE_00AE12:        STA $7F8002,x             ;
CODE_00AE16:        INX                       ;
CODE_00AE17:        INX                       ;
CODE_00AE18:        LDY $021E                 ;
CODE_00AE1B:        LDA $0400,y               ;
CODE_00AE1E:        STA $7F8002,x             ;
CODE_00AE22:        INX                       ;
CODE_00AE23:        INX                       ;
CODE_00AE24:        INC $021E                 ;
CODE_00AE27:        INC $021E                 ;
CODE_00AE2A:        DEC $04                   ;
CODE_00AE2C:        BNE CODE_00AE18           ;
CODE_00AE2E:        LDA $021C                 ;
CODE_00AE31:        CLC                       ;
CODE_00AE32:        ADC #$0020                ;
CODE_00AE35:        STA $021C                 ;
CODE_00AE38:        LDA #$FFFF                ;
CODE_00AE3B:        STA $7F8002,x             ;
CODE_00AE3F:        TXA                       ;
CODE_00AE40:        STA $7F8000               ;
CODE_00AE44:        SEP #$30                  ;
CODE_00AE46:        DEC $021B                 ;
CODE_00AE49:        RTS                       ;

CODE_00AE4A:        LDA $7F8000               ;
CODE_00AE4E:        TAX                       ;
CODE_00AE4F:        REP #$30                  ;
CODE_00AE51:        LDA $00                   ;
CODE_00AE53:        LDA $02                   ;
CODE_00AE55:        LDA $021C                 ;
CODE_00AE58:        XBA                       ;
CODE_00AE59:        STA $7F8002,x             ;
CODE_00AE5D:        INX                       ;
CODE_00AE5E:        INX                       ;
CODE_00AE5F:        LDA $04                   ;
CODE_00AE61:        XBA                       ;
CODE_00AE62:        STA $7F8002,x             ;
CODE_00AE66:        INX                       ;
CODE_00AE67:        INX                       ;
CODE_00AE68:        LDY $021E                 ;
CODE_00AE6B:        LDA $0400,y               ;
CODE_00AE6E:        STA $7F8002,x             ;
CODE_00AE72:        INX                       ;
CODE_00AE73:        INX                       ;
CODE_00AE74:        INC $021E                 ;
CODE_00AE77:        INC $021E                 ;
CODE_00AE7A:        DEC $00                   ;
CODE_00AE7C:        BNE CODE_00AE68           ;
CODE_00AE7E:        LDA $021C                 ;
CODE_00AE81:        AND #$7FE0                ;
CODE_00AE84:        EOR #$0400                ;
CODE_00AE87:        XBA                       ;
CODE_00AE88:        STA $7F8002,x             ;
CODE_00AE8C:        INX                       ;
CODE_00AE8D:        INX                       ;
CODE_00AE8E:        LDA $06                   ;
CODE_00AE90:        XBA                       ;
CODE_00AE91:        STA $7F8002,x             ;
CODE_00AE95:        INX                       ;
CODE_00AE96:        INX                       ;
CODE_00AE97:        LDY $021E                 ;
CODE_00AE9A:        LDA $0400,y               ;
CODE_00AE9D:        STA $7F8002,x             ;
CODE_00AEA1:        INX                       ;
CODE_00AEA2:        INX                       ;
CODE_00AEA3:        INC $021E                 ;
CODE_00AEA6:        INC $021E                 ;
CODE_00AEA9:        DEC $02                   ;
CODE_00AEAB:        BNE CODE_00AE97           ;
CODE_00AEAD:        LDA $021C                 ;
CODE_00AEB0:        CLC                       ;
CODE_00AEB1:        ADC #$0020                ;
CODE_00AEB4:        STA $021C                 ;
CODE_00AEB7:        LDA #$FFFF                ;
CODE_00AEBA:        STA $7F8002,x             ;
CODE_00AEBE:        TXA                       ;
CODE_00AEBF:        STA $7F8000               ;
CODE_00AEC3:        SEP #$30                  ;
CODE_00AEC5:        DEC $021B                 ;
CODE_00AEC8:        RTS                       ;

CODE_00AEC9:        LDA $7F8000               ;
CODE_00AECD:        TAX                       ;
CODE_00AECE:        REP #$30                  ;
CODE_00AED0:        LDA #$0015                ;
CODE_00AED3:        STA $04                   ;
CODE_00AED5:        LDA $021C                 ;
CODE_00AED8:        XBA                       ;
CODE_00AED9:        STA $7F8002,x             ;
CODE_00AEDD:        INX                       ;
CODE_00AEDE:        INX                       ;
CODE_00AEDF:        LDA #$002A                ;
CODE_00AEE2:        XBA                       ;
CODE_00AEE3:        STA $7F8002,x             ;
CODE_00AEE7:        INX                       ;
CODE_00AEE8:        INX                       ;
CODE_00AEE9:        SEP #$20                  ;
CODE_00AEEB:        PHB                       ;
CODE_00AEEC:        LDA #$7F                  ;
CODE_00AEEE:        PHA                       ;
CODE_00AEEF:        PLB                       ;
CODE_00AEF0:        REP #$20                  ;
CODE_00AEF2:        LDA $00021E               ;
CODE_00AEF6:        TAY                       ;
CODE_00AEF7:        LDA $1000,y               ;
CODE_00AEFA:        STA $7F8002,x             ;
CODE_00AEFE:        INX                       ;
CODE_00AEFF:        INX                       ;
CODE_00AF00:        INY                       ;
CODE_00AF01:        INY                       ;
CODE_00AF02:        DEC $04                   ;
CODE_00AF04:        BNE CODE_00AEF7           ;
CODE_00AF06:        SEP #$20                  ;
CODE_00AF08:        PLB                       ;
CODE_00AF09:        REP #$20                  ;
CODE_00AF0B:        LDA $021C                 ;
CODE_00AF0E:        SEC                       ;
CODE_00AF0F:        SBC #$0020                ;
CODE_00AF12:        STA $021C                 ;
CODE_00AF15:        LDA $021E                 ;
CODE_00AF18:        SEC                       ;
CODE_00AF19:        SBC #$0040                ;
CODE_00AF1C:        STA $021E                 ;
CODE_00AF1F:        LDA #$FFFF                ;
CODE_00AF22:        STA $7F8002,x             ;
CODE_00AF26:        TXA                       ;
CODE_00AF27:        STA $7F8000               ;
CODE_00AF2B:        SEP #$30                  ;
CODE_00AF2D:        DEC $021B                 ;
CODE_00AF30:        LDA $021B                 ;
CODE_00AF33:        BNE CODE_00AF3B           ;
CODE_00AF35:        STZ $021A                 ;
CODE_00AF38:        STZ $0220                 ;
CODE_00AF3B:        RTS                       ;

CODE_00AF3C:        LDA $7F8000               ;
CODE_00AF40:        TAX                       ;
CODE_00AF41:        REP #$30                  ;
CODE_00AF43:        LDA $00                   ;
CODE_00AF45:        LDA $02                   ;
CODE_00AF47:        LDA $021C                 ;
CODE_00AF4A:        XBA                       ;
CODE_00AF4B:        STA $7F8002,x             ;
CODE_00AF4F:        INX                       ;
CODE_00AF50:        INX                       ;
CODE_00AF51:        LDA $04                   ;
CODE_00AF53:        XBA                       ;
CODE_00AF54:        STA $7F8002,x             ;
CODE_00AF58:        INX                       ;
CODE_00AF59:        INX                       ;
CODE_00AF5A:        SEP #$20                  ;
CODE_00AF5C:        PHB                       ;
CODE_00AF5D:        LDA #$7F                  ;
CODE_00AF5F:        PHA                       ;
CODE_00AF60:        PLB                       ;
CODE_00AF61:        REP #$20                  ;
CODE_00AF63:        LDA $00021E               ;
CODE_00AF67:        TAY                       ;
CODE_00AF68:        LDA $1000,y               ;
CODE_00AF6B:        STA $7F8002,x             ;
CODE_00AF6F:        INX                       ;
CODE_00AF70:        INX                       ;
CODE_00AF71:        INY                       ;
CODE_00AF72:        INY                       ;
CODE_00AF73:        DEC $00                   ;
CODE_00AF75:        BNE CODE_00AF68           ;
CODE_00AF77:        SEP #$20                  ;
CODE_00AF79:        PLB                       ;
CODE_00AF7A:        REP #$20                  ;
CODE_00AF7C:        LDA $021C                 ;
CODE_00AF7F:        AND #$7FE0                ;
CODE_00AF82:        EOR #$0400                ;
CODE_00AF85:        XBA                       ;
CODE_00AF86:        STA $7F8002,x             ;
CODE_00AF8A:        INX                       ;
CODE_00AF8B:        INX                       ;
CODE_00AF8C:        LDA $06                   ;
CODE_00AF8E:        XBA                       ;
CODE_00AF8F:        STA $7F8002,x             ;
CODE_00AF93:        INX                       ;
CODE_00AF94:        INX                       ;
CODE_00AF95:        SEP #$20                  ;
CODE_00AF97:        PHB                       ;
CODE_00AF98:        LDA #$7F                  ;
CODE_00AF9A:        PHA                       ;
CODE_00AF9B:        PLB                       ;
CODE_00AF9C:        REP #$20                  ;
CODE_00AF9E:        TYA                       ;
CODE_00AF9F:        CLC                       ;
CODE_00AFA0:        ADC #$07C0                ;
CODE_00AFA3:        AND #$0FFF                ;
CODE_00AFA6:        TAY                       ;
CODE_00AFA7:        LDA $1000,y               ;
CODE_00AFAA:        STA $7F8002,x             ;
CODE_00AFAE:        INX                       ;
CODE_00AFAF:        INX                       ;
CODE_00AFB0:        INY                       ;
CODE_00AFB1:        INY                       ;
CODE_00AFB2:        DEC $02                   ;
CODE_00AFB4:        BNE CODE_00AFA7           ;
CODE_00AFB6:        SEP #$20                  ;
CODE_00AFB8:        PLB                       ;
CODE_00AFB9:        REP #$20                  ;
CODE_00AFBB:        LDA $021C                 ;
CODE_00AFBE:        SEC                       ;
CODE_00AFBF:        SBC #$0020                ;
CODE_00AFC2:        STA $021C                 ;
CODE_00AFC5:        LDA $021E                 ;
CODE_00AFC8:        SEC                       ;
CODE_00AFC9:        SBC #$0040                ;
CODE_00AFCC:        STA $021E                 ;
CODE_00AFCF:        LDA #$FFFF                ;
CODE_00AFD2:        STA $7F8002,x             ;
CODE_00AFD6:        TXA                       ;
CODE_00AFD7:        STA $7F8000               ;
CODE_00AFDB:        SEP #$30                  ;
CODE_00AFDD:        DEC $021B                 ;
CODE_00AFE0:        LDA $021B                 ;
CODE_00AFE3:        BNE CODE_00AFEB           ;
CODE_00AFE5:        STZ $021A                 ;
CODE_00AFE8:        STZ $0220                 ;
CODE_00AFEB:        RTS                       ;

CODE_00AFEC:        REP #$20                  ;
CODE_00AFEE:        LDA $7F8000               ;
CODE_00AFF2:        TAX                       ;
CODE_00AFF3:        LDA $0218                 ;
CODE_00AFF6:        AND #$0003                ;
CODE_00AFF9:        ASL A                     ;
CODE_00AFFA:        TAY                       ;
CODE_00AFFB:        LDA DATA_00B05D,y               ;
CODE_00AFFE:        XBA                       ;
CODE_00AFFF:        STA $7F8002,x             ;
CODE_00B003:        LDA #$0006                ;
CODE_00B006:        XBA                       ;
CODE_00B007:        STA $7F8004,x             ;
CODE_00B00B:        PHY                       ;
CODE_00B00C:        LDA $700006               ;
CODE_00B010:        AND #$0001                ;
CODE_00B013:        ASL A                     ;
CODE_00B014:        TAY                       ;
CODE_00B015:        LDA DATA_00B06D,y         ;
CODE_00B018:        STA $7F8006,x             ;
CODE_00B01C:        INC A                     ;
CODE_00B01D:        STA $7F8008,x             ;
CODE_00B021:        INC A                     ;
CODE_00B022:        STA $7F800A,x             ;
CODE_00B026:        PLY                       ;
CODE_00B027:        TXA                       ;
CODE_00B028:        CLC                       ;
CODE_00B029:        ADC #$000A                ;
CODE_00B02C:        TAX                       ;
CODE_00B02D:        LDA DATA_00B065,y         ;
CODE_00B030:        XBA                       ;
CODE_00B031:        STA $7F8002,x             ;
CODE_00B035:        LDA #$0004                ;
CODE_00B038:        XBA                       ;
CODE_00B039:        STA $7F8004,x             ;
CODE_00B03D:        LDA $700006               ;
CODE_00B041:        AND #$0001                ;
CODE_00B044:        ASL A                     ;
CODE_00B045:        ADC #$0384                ;
CODE_00B048:        STA $7F8006,x             ;
CODE_00B04C:        INC A                     ;
CODE_00B04D:        STA $7F8008,x             ;
CODE_00B051:        TXA                       ;
CODE_00B052:        CLC                       ;
CODE_00B053:        ADC #$0008                ;
CODE_00B056:        STA $7F8000               ;
CODE_00B05A:        SEP #$20                  ;
CODE_00B05C:        RTS                       ;

DATA_00B05D:        dw $7B2C,$7B3B,$7F2B,$7F3C

DATA_00B065:        dw $7B4B,$7B5A,$7F4A,$7F5B

DATA_00B06D:        db $78,$03,$68,$03 ;

CODE_00B071:        REP #$20                  ;
CODE_00B073:        LDA #$02FF                ;
CODE_00B076:        STA $00                   ;
CODE_00B078:        STA $02                   ;
CODE_00B07A:        STA $04                   ;
CODE_00B07C:        STA $06                   ;
CODE_00B07E:        STA $08                   ;
CODE_00B080:        STA $0A                   ;
CODE_00B082:        STA $0C                   ;
CODE_00B084:        LDA $D1                   ;
CODE_00B086:        AND #$0003                ;
CODE_00B089:        ASL A                     ;
CODE_00B08A:        ASL A                     ;
CODE_00B08B:        TAX                       ;
CODE_00B08C:        LDA #$034F                ;
CODE_00B08F:        STA $00,x                 ;
CODE_00B091:        LDA $7F8000               ;
CODE_00B095:        TAX                       ;
CODE_00B096:        LDA $0218                 ;
CODE_00B099:        AND #$0003                ;
CODE_00B09C:        ASL A                     ;
CODE_00B09D:        TAY                       ;
CODE_00B09E:        LDA DATA_00B0D2,y               ;
CODE_00B0A1:        XBA                       ;
CODE_00B0A2:        STA $7F8002,x             ;
CODE_00B0A6:        INX                       ;
CODE_00B0A7:        INX                       ;
CODE_00B0A8:        LDA #$800E                ;
CODE_00B0AB:        XBA                       ;
CODE_00B0AC:        STA $7F8002,x             ;
CODE_00B0B0:        INX                       ;
CODE_00B0B1:        INX                       ;
CODE_00B0B2:        LDY #$00                  ;
CODE_00B0B4:        LDA $0000,y               ;
CODE_00B0B7:        STA $7F8002,x             ;
CODE_00B0BB:        INX                       ;
CODE_00B0BC:        INX                       ;
CODE_00B0BD:        INY                       ;
CODE_00B0BE:        INY                       ;
CODE_00B0BF:        CPY #$0E                  ;
CODE_00B0C1:        BNE CODE_00B0B4           ;
CODE_00B0C3:        LDA #$FFFF                ;
CODE_00B0C6:        STA $7F8002,x             ;
CODE_00B0CA:        TXA                       ;
CODE_00B0CB:        STA $7F8000               ;
CODE_00B0CF:        SEP #$20                  ;
CODE_00B0D1:        RTS                       ;

DATA_00B0D2:        db $89,$79,$98,$79,$88,$7D,$99,$7D

CODE_00B0DA:        PHX                       ;
CODE_00B0DB:        PHY                       ;
CODE_00B0DC:        REP #$20                  ;
CODE_00B0DE:        LDA $7F8000               ;
CODE_00B0E2:        TAX                       ;
CODE_00B0E3:        LDA $0218                 ;
CODE_00B0E6:        AND #$0003                ;
CODE_00B0E9:        STA $00                   ;
CODE_00B0EB:        ASL A                     ;
CODE_00B0EC:        TAY                       ;
CODE_00B0ED:        LDA $D1                   ;
CODE_00B0EF:        AND #$00FF                ;
CODE_00B0F2:        XBA                       ;
CODE_00B0F3:        LSR A                     ;
CODE_00B0F4:        LSR A                     ;
CODE_00B0F5:        ADC DATA_00B1C2,y               ;
CODE_00B0F8:        STA $02                   ;
CODE_00B0FA:        XBA                       ;
CODE_00B0FB:        STA $7F8002,x             ;
CODE_00B0FF:        INX                       ;
CODE_00B100:        INX                       ;
CODE_00B101:        LDA #$8004                ;
CODE_00B104:        XBA                       ;
CODE_00B105:        STA $7F8002,x             ;
CODE_00B109:        INX                       ;
CODE_00B10A:        INX                       ;
CODE_00B10B:        LDA $D1                   ;
CODE_00B10D:        AND #$0003                ;
CODE_00B110:        ASL A                     ;
CODE_00B111:        ASL A                     ;
CODE_00B112:        ADC $00                   ;
CODE_00B114:        TAY                       ;
CODE_00B115:        LDA $00B0,y               ;
CODE_00B118:        AND #$00FF                ;
CODE_00B11B:        CLC                       ;
CODE_00B11C:        ADC #$0341                ;
CODE_00B11F:        STA $7F8002,x             ;
CODE_00B123:        INX                       ;
CODE_00B124:        INX                       ;
CODE_00B125:        ORA #$0010                ;
CODE_00B128:        STA $7F8002,x             ;
CODE_00B12C:        INX                       ;
CODE_00B12D:        INX                       ;
CODE_00B12E:        LDA $00                   ;
CODE_00B130:        BNE CODE_00B15A           ;
CODE_00B132:        LDA $0070,y               ;
CODE_00B135:        AND #$00FF                ;
CODE_00B138:        ASL A                     ;
CODE_00B139:        TAY                       ;
CODE_00B13A:        LDA $02                   ;
CODE_00B13C:        CLC                       ;
CODE_00B13D:        ADC #$001F                ;
CODE_00B140:        XBA                       ;
CODE_00B141:        STA $7F8002,x             ;
CODE_00B145:        INX                       ;
CODE_00B146:        INX                       ;
CODE_00B147:        LDA #$0002                ;
CODE_00B14A:        XBA                       ;
CODE_00B14B:        STA $7F8002,x             ;
CODE_00B14F:        INX                       ;
CODE_00B150:        INX                       ;
CODE_00B151:        LDA DATA_00B1CA,y         ;
CODE_00B154:        STA $7F8002,x             ;
CODE_00B158:        INX                       ;
CODE_00B159:        INX                       ;
CODE_00B15A:        LDA #$FFFF                ;
CODE_00B15D:        STA $7F8002,x             ;
CODE_00B161:        TXA                       ;
CODE_00B162:        STA $7F8000               ;
CODE_00B166:        SEP #$20                  ;
CODE_00B168:        PLY                       ;
CODE_00B169:        PLX                       ;
CODE_00B16A:        RTS                       ;

CODE_00B16B:        PHX                       ;
CODE_00B16C:        PHY                       ;
CODE_00B16D:        REP #$20                  ;
CODE_00B16F:        LDA $7F8000               ;
CODE_00B173:        TAX                       ;
CODE_00B174:        LDA $D1                   ;
CODE_00B176:        AND #$00FF                ;
CODE_00B179:        XBA                       ;
CODE_00B17A:        LSR A                     ;
CODE_00B17B:        LSR A                     ;
CODE_00B17C:        ADC #$7D62                ;
CODE_00B17F:        XBA                       ;
CODE_00B180:        STA $7F8002,x             ;
CODE_00B184:        INX                       ;
CODE_00B185:        INX                       ;
CODE_00B186:        LDA #$8004                ;
CODE_00B189:        XBA                       ;
CODE_00B18A:        STA $7F8002,x             ;
CODE_00B18E:        INX                       ;
CODE_00B18F:        INX                       ;
CODE_00B190:        LDA $D1                   ;
CODE_00B192:        AND #$0003                ;
CODE_00B195:        ASL A                     ;
CODE_00B196:        ASL A                     ;
CODE_00B197:        TAY                       ;
CODE_00B198:        LDA $00C1,y               ;
CODE_00B19B:        AND #$00FF                ;
CODE_00B19E:        CLC                       ;
CODE_00B19F:        ADC #$0341                ;
CODE_00B1A2:        STA $7F8002,x             ;
CODE_00B1A6:        INX                       ;
CODE_00B1A7:        INX                       ;
CODE_00B1A8:        ORA #$0010                ;
CODE_00B1AB:        STA $7F8002,x             ;
CODE_00B1AF:        INX                       ;
CODE_00B1B0:        INX                       ;
CODE_00B1B1:        LDA #$FFFF                ;
CODE_00B1B4:        STA $7F8002,x             ;
CODE_00B1B8:        TXA                       ;
CODE_00B1B9:        STA $7F8000               ;
CODE_00B1BD:        SEP #$20                  ;
CODE_00B1BF:        PLY                       ;
CODE_00B1C0:        PLX                       ;
CODE_00B1C1:        RTS                       ;

DATA_00B1C2:        db $71,$79,$7F,$79,$70,$7D,$61,$79 ;

DATA_00B1CA:        db $51,$03,$9B,$03 ;

CODE_00B1CE:        REP #$30                  ;
CODE_00B1D0:        LDA $0218                 ;
CODE_00B1D3:        AND #$0003                ;
CODE_00B1D6:        ASL A                     ;
CODE_00B1D7:        TAY                       ;
CODE_00B1D8:        PHY                       ;
CODE_00B1D9:        LDA $0221                 ;
CODE_00B1DC:        AND #$000F                ;
CODE_00B1DF:        XBA                       ;
CODE_00B1E0:        LSR A                     ;
CODE_00B1E1:        LSR A                     ;
CODE_00B1E2:        LSR A                     ;
CODE_00B1E3:        STA $0E                   ;
CODE_00B1E5:        TAX                       ;
CODE_00B1E6:        LDA DATA_00B34A,y               ;
CODE_00B1E9:        SEC                       ;
CODE_00B1EA:        SBC $0E                   ;
CODE_00B1EC:        STA $00                   ;
CODE_00B1EE:        LDA DATA_00B35A,y               ;
CODE_00B1F1:        STA $02                   ;
CODE_00B1F3:        LDA $0221                 ;
CODE_00B1F6:        AND #$000F                ;
CODE_00B1F9:        ASL A                     ;
CODE_00B1FA:        TAY                       ;
CODE_00B1FB:        LDA DATA_00B36A,y               ;
CODE_00B1FE:        STA $08                   ;
CODE_00B200:        STZ $04                   ;
CODE_00B202:        LDA $7F8000               ;
CODE_00B206:        TAX                       ;
CODE_00B207:        JSR CODE_00B27C           ;
CODE_00B20A:        PLY                       ;
CODE_00B20B:        BEQ CODE_00B224           ;
CODE_00B20D:        CPY #$0004                ;
CODE_00B210:        BEQ CODE_00B224           ;
CODE_00B212:        LDA $00                   ;
CODE_00B214:        AND #$7FE0                ;
CODE_00B217:        EOR #$0400                ;
CODE_00B21A:        STA $00                   ;
CODE_00B21C:        LDA DATA_00B362,y         ;
CODE_00B21F:        STA $02                   ;
CODE_00B221:        JSR CODE_00B27C           ;
CODE_00B224:        PHY                       ;
CODE_00B225:        LDA DATA_00B352,y         ;
CODE_00B228:        CLC                       ;
CODE_00B229:        ADC $0E                   ;
CODE_00B22B:        STA $00                   ;
CODE_00B22D:        LDA DATA_00B35A,y         ;
CODE_00B230:        STA $02                   ;
CODE_00B232:        LDA $0221                 ;
CODE_00B235:        AND #$000F                ;
CODE_00B238:        ASL A                     ;
CODE_00B239:        TAY                       ;
CODE_00B23A:        LDA DATA_00B372,y         ;
CODE_00B23D:        STA $08                   ;
CODE_00B23F:        STZ $04                   ;
CODE_00B241:        JSR CODE_00B27C           ;
CODE_00B244:        PLY                       ;
CODE_00B245:        BEQ CODE_00B25E           ;
CODE_00B247:        CPY #$0004                ;
CODE_00B24A:        BEQ CODE_00B25E           ;
CODE_00B24C:        LDA $00                   ;
CODE_00B24E:        AND #$7FE0                ;
CODE_00B251:        EOR #$0400                ;
CODE_00B254:        STA $00                   ;
CODE_00B256:        LDA DATA_00B362,y               ;
CODE_00B259:        STA $02                   ;
CODE_00B25B:        JSR CODE_00B27C           ;
CODE_00B25E:        LDA #$FFFF                ;
CODE_00B261:        STA $7F8002,x             ;
CODE_00B265:        TXA                       ;
CODE_00B266:        STA $7F8000               ;
CODE_00B26A:        SEP #$30                  ;
CODE_00B26C:        INC $0221                 ;
CODE_00B26F:        LDA $0221                 ;
CODE_00B272:        CMP #$04                  ;
CODE_00B274:        BNE CODE_00B27B           ;
CODE_00B276:        INC $E0                   ;
CODE_00B278:        STZ $0222                 ;
CODE_00B27B:        RTL                       ;

CODE_00B27C:        PHY                       ;
CODE_00B27D:        LDA $00                   ;
CODE_00B27F:        XBA                       ;
CODE_00B280:        STA $7F8002,x             ;
CODE_00B284:        INX                       ;
CODE_00B285:        INX                       ;
CODE_00B286:        LDA $02                   ;
CODE_00B288:        XBA                       ;
CODE_00B289:        STA $7F8002,x             ;
CODE_00B28D:        INX                       ;
CODE_00B28E:        INX                       ;
CODE_00B28F:        LSR $02                   ;
CODE_00B291:        LDY $04                   ;
CODE_00B293:        LDA ($08),y               ;
CODE_00B295:        STA $7F8002,x             ;
CODE_00B299:        INX                       ;
CODE_00B29A:        INX                       ;
CODE_00B29B:        INY                       ;
CODE_00B29C:        INY                       ;
CODE_00B29D:        DEC $02                   ;
CODE_00B29F:        BNE CODE_00B293           ;
CODE_00B2A1:        STY $04                   ;
CODE_00B2A3:        PLY                       ;
CODE_00B2A4:        RTS                       ;

CODE_00B2A5:        REP #$20                  ;
CODE_00B2A7:        LDA $7F8000               ;
CODE_00B2AB:        TAX                       ;
CODE_00B2AC:        LDA $0218                 ;
CODE_00B2AF:        AND #$0003                ;
CODE_00B2B2:        ASL A                     ;
CODE_00B2B3:        TAY                       ;
CODE_00B2B4:        PHY                       ;
CODE_00B2B5:        LDA $0221                 ;
CODE_00B2B8:        AND #$000F                ;
CODE_00B2BB:        XBA                       ;
CODE_00B2BC:        LSR A                     ;
CODE_00B2BD:        LSR A                     ;
CODE_00B2BE:        LSR A                     ;
CODE_00B2BF:        STA $0E                   ;
CODE_00B2C1:        TAX                       ;
CODE_00B2C2:        LDA DATA_00B34A,y               ;
CODE_00B2C5:        CLC                       ;
CODE_00B2C6:        ADC $0E                   ;
CODE_00B2C8:        STA $00                   ;
CODE_00B2CA:        LDA DATA_00B35A,y               ;
CODE_00B2CD:        STA $02                   ;
CODE_00B2CF:        LDA #$B42A                ;
CODE_00B2D2:        STA $08                   ;
CODE_00B2D4:        STZ $04                   ;
CODE_00B2D6:        LDA $7F8000               ;
CODE_00B2DA:        TAX                       ;
CODE_00B2DB:        JSR CODE_00B27C           ;
CODE_00B2DE:        PLY                       ;
CODE_00B2DF:        BEQ CODE_00B2F7           ;
CODE_00B2E1:        CPY #$04                  ;
CODE_00B2E3:        BEQ CODE_00B2F7           ;
CODE_00B2E5:        LDA $00                   ;
CODE_00B2E7:        AND #$7FE0                ;
CODE_00B2EA:        EOR #$0400                ;
CODE_00B2ED:        STA $00                   ;
CODE_00B2EF:        LDA DATA_00B362,y               ;
CODE_00B2F2:        STA $02                   ;
CODE_00B2F4:        JSR CODE_00B27C           ;
CODE_00B2F7:        PHY                       ;
CODE_00B2F8:        LDA DATA_00B352,y               ;
CODE_00B2FB:        SEC                       ;
CODE_00B2FC:        SBC $0E                   ;
CODE_00B2FE:        STA $00                   ;
CODE_00B300:        LDA DATA_00B35A,y               ;
CODE_00B303:        STA $02                   ;
CODE_00B305:        LDA #$B42A                ;
CODE_00B308:        STA $08                   ;
CODE_00B30A:        STZ $04                   ;
CODE_00B30C:        JSR CODE_00B27C           ;
CODE_00B30F:        PLY                       ;
CODE_00B310:        BEQ CODE_00B328           ;
CODE_00B312:        CPY #$04                  ;
CODE_00B314:        BEQ CODE_00B328           ;
CODE_00B316:        LDA $00                   ;
CODE_00B318:        AND #$7FE0                ;
CODE_00B31B:        EOR #$0400                ;
CODE_00B31E:        STA $00                   ;
CODE_00B320:        LDA DATA_00B362,y               ;
CODE_00B323:        STA $02                   ;
CODE_00B325:        JSR CODE_00B27C           ;
CODE_00B328:        LDA #$FFFF                ;
CODE_00B32B:        STA $7F8002,x             ;
CODE_00B32F:        TXA                       ;
CODE_00B330:        STA $7F8000               ;
CODE_00B334:        SEP #$20                  ;
CODE_00B336:        DEC $0221                 ;
CODE_00B339:        LDA $0221                 ;
CODE_00B33C:        BPL CODE_00B349           ;
CODE_00B33E:        STZ $0221                 ;
CODE_00B341:        LDA #$02                  ;
CODE_00B343:        STA $E0                   ;
CODE_00B345:        STZ $D2                   ;
CODE_00B347:        STZ $1A                   ;
CODE_00B349:        RTL                       ;

DATA_00B34A:        db $EF,$7A,$FE,$7A,$EE,$7E,$FF,$7E ;

DATA_00B352:        db $0F,$7B,$1E,$7B,$0E,$7F,$1F,$7F ;

DATA_00B35A:        db $16,$00,$04,$00,$16,$00,$02,$00 ;

DATA_00B362:        db $00,$00,$12,$00,$00,$00,$14,$00 ;

DATA_00B36A:        db $BC,$B3,$A6,$B3,$90,$B3,$7A,$B3 ;

DATA_00B372:        db $D2,$B3,$E8,$B3,$FE,$B3,$14,$B4 ;
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

CODE_00B440:        LDA $F6                   ;
CODE_00B442:        ORA $F7                   ;
CODE_00B444:        AND #$80                  ;
CODE_00B446:        STA $00                   ;
CODE_00B448:        LDA $F4                   ;
CODE_00B44A:        ORA $F5                   ;
CODE_00B44C:        AND #$3C                  ;
CODE_00B44E:        ORA $00                   ;
CODE_00B450:        BEQ CODE_00B4B0           ;
CODE_00B452:        STA $00                   ;
CODE_00B454:        AND #$2C                  ;
CODE_00B456:        BEQ CODE_00B4B3           ;
CODE_00B458:        LDA $0222                 ;
CODE_00B45B:        EOR #$04                  ;
CODE_00B45D:        STA $0222                 ;
CODE_00B460:        REP #$20                  ;
CODE_00B462:        LDA $7F8000               ;
CODE_00B466:        TAX                       ;
CODE_00B467:        LDA $0218                 ;
CODE_00B46A:        AND #$0003                ;
CODE_00B46D:        ASL A                     ;
CODE_00B46E:        TAY                       ;
CODE_00B46F:        LDA DATA_00B5BA,y         ;
CODE_00B472:        XBA                       ;
CODE_00B473:        STA $7F8002,x             ;
CODE_00B477:        LDA #$8006                ;
CODE_00B47A:        XBA                       ;
CODE_00B47B:        STA $7F8004,x             ;
CODE_00B47F:        LDA #$02FF                ;
CODE_00B482:        STA $7F8006,x             ;
CODE_00B486:        STA $7F8008,x             ;
CODE_00B48A:        STA $7F800A,x             ;
CODE_00B48E:        PHX                       ;
CODE_00B48F:        LDX $0222                 ;
CODE_00B492:        LDA #$034F                ;
CODE_00B495:        STA $7F8006,x             ;
CODE_00B499:        PLX                       ;
CODE_00B49A:        LDA #$FFFF                ;
CODE_00B49D:        STA $7F800C,x             ;
CODE_00B4A1:        TXA                       ;
CODE_00B4A2:        CLC                       ;
CODE_00B4A3:        ADC #$000C                ;
CODE_00B4A6:        STA $7F8000               ;
CODE_00B4AA:        SEP #$20                  ;
CODE_00B4AC:        LDA #$23                  ;
CODE_00B4AE:        STA $63                   ;
CODE_00B4B0:        JMP CODE_00B58A           ;

CODE_00B4B3:        LDA $00                   ;
CODE_00B4B5:        AND #$90                  ;
CODE_00B4B7:        BNE CODE_00B4C0           ;
CODE_00B4B9:        LDA #$22                  ;
CODE_00B4BB:        STA $63                   ;
CODE_00B4BD:        JMP CODE_00B58A           ;

CODE_00B4C0:        LDA #$05                  ;
CODE_00B4C2:        STA $63                   ;
CODE_00B4C4:        INC $E0                   ;
CODE_00B4C6:        LDA $0222                 ;
CODE_00B4C9:        BEQ CODE_00B4B9           ;
CODE_00B4CB:        LDA $0218                 ;
CODE_00B4CE:        AND #$03                  ;
CODE_00B4D0:        STA $00                   ;
CODE_00B4D2:        LDA $D1                   ;
CODE_00B4D4:        AND #$03                  ;
CODE_00B4D6:        ASL A                     ;
CODE_00B4D7:        ASL A                     ;
CODE_00B4D8:        ADC $00                   ;
CODE_00B4DA:        TAX                       ;
CODE_00B4DB:        LDA #$FF                  ;
CODE_00B4DD:        STA $B0,x                 ;
CODE_00B4DF:        STA $C0,x                 ;
CODE_00B4E1:        LDA #$00                  ;
CODE_00B4E3:        STA $70,x                 ;
CODE_00B4E5:        JSR CODE_00A82C           ;
CODE_00B4E8:        REP #$20                  ;
CODE_00B4EA:        LDA $7F8000               ;
CODE_00B4EE:        TAX                       ;
CODE_00B4EF:        LDA $0218                 ;
CODE_00B4F2:        AND #$0003                ;
CODE_00B4F5:        ASL A                     ;
CODE_00B4F6:        TAY                       ;
CODE_00B4F7:        LDA DATA_00B5C2,y               ;
CODE_00B4FA:        STA $00                   ;
CODE_00B4FC:        LDA $00D1                 ;
CODE_00B4FF:        AND #$0003                ;
CODE_00B502:        XBA                       ;
CODE_00B503:        LSR A                     ;
CODE_00B504:        LSR A                     ;
CODE_00B505:        ADC $00                   ;
CODE_00B507:        STA $00                   ;
CODE_00B509:        LDA DATA_00B5CA,y               ;
CODE_00B50C:        STA $02                   ;
CODE_00B50E:        STZ $0E                   ;
CODE_00B510:        JSR CODE_00B58B           ;
CODE_00B513:        LDA $0218                 ;
CODE_00B516:        AND #$0003                ;
CODE_00B519:        CMP #$0001                ;
CODE_00B51C:        BNE CODE_00B53A           ;
CODE_00B51E:        PHY                       ;
CODE_00B51F:        LDA #$7D60                ;
CODE_00B522:        STA $00                   ;
CODE_00B524:        LDA $00D1                 ;
CODE_00B527:        AND #$0003                ;
CODE_00B52A:        XBA                       ;
CODE_00B52B:        LSR A                     ;
CODE_00B52C:        LSR A                     ;
CODE_00B52D:        ADC $00                   ;
CODE_00B52F:        STA $00                   ;
CODE_00B531:        LDA #$000A                ;
CODE_00B534:        STA $02                   ;
CODE_00B536:        JSR CODE_00B58B           ;
CODE_00B539:        PLY                       ;
CODE_00B53A:        LDA DATA_00B5C2,y               ;
CODE_00B53D:        STA $00                   ;
CODE_00B53F:        LDA $00D1                 ;
CODE_00B542:        AND #$0003                ;
CODE_00B545:        XBA                       ;
CODE_00B546:        LSR A                     ;
CODE_00B547:        LSR A                     ;
CODE_00B548:        ADC #$0020                ;
CODE_00B54B:        ADC $00                   ;
CODE_00B54D:        STA $00                   ;
CODE_00B54F:        LDA DATA_00B5CA,y               ;
CODE_00B552:        STA $02                   ;
CODE_00B554:        JSR CODE_00B58B           ;
CODE_00B557:        LDA $0218                 ;
CODE_00B55A:        AND #$0003                ;
CODE_00B55D:        CMP #$0001                ;
CODE_00B560:        BNE CODE_00B57C           ;
CODE_00B562:        LDA #$7D80                ;
CODE_00B565:        STA $00                   ;
CODE_00B567:        LDA $00D1                 ;
CODE_00B56A:        AND #$0003                ;
CODE_00B56D:        XBA                       ;
CODE_00B56E:        LSR A                     ;
CODE_00B56F:        LSR A                     ;
CODE_00B570:        ADC $00                   ;
CODE_00B572:        STA $00                   ;
CODE_00B574:        LDA #$000A                ;
CODE_00B577:        STA $02                   ;
CODE_00B579:        JSR CODE_00B58B           ;
CODE_00B57C:        LDA #$FFFF                ;
CODE_00B57F:        STA $7F8002,x             ;
CODE_00B583:        TXA                       ;
CODE_00B584:        STA $7F8000               ;
CODE_00B588:        SEP #$20                  ;
CODE_00B58A:        RTL                       ;

CODE_00B58B:        PHY                       ;
CODE_00B58C:        LDA $00                   ;
CODE_00B58E:        XBA                       ;
CODE_00B58F:        STA $7F8002,x             ;
CODE_00B593:        INX                       ;
CODE_00B594:        INX                       ;
CODE_00B595:        LDA $02                   ;
CODE_00B597:        XBA                       ;
CODE_00B598:        STA $7F8002,x             ;
CODE_00B59C:        XBA                       ;
CODE_00B59D:        LSR A                     ;
CODE_00B59E:        AND #$00FF                ;
CODE_00B5A1:        STA $04                   ;
CODE_00B5A3:        INX                       ;
CODE_00B5A4:        INX                       ;
CODE_00B5A5:        LDY $0E                   ;
CODE_00B5A7:        LDA DATA_00B5D2,y               ;
CODE_00B5AA:        STA $7F8002,x             ;
CODE_00B5AE:        INC $0E                   ;
CODE_00B5B0:        INC $0E                   ;
CODE_00B5B2:        INX                       ;
CODE_00B5B3:        INX                       ;
CODE_00B5B4:        DEC $04                   ;
CODE_00B5B6:        BNE CODE_00B5A5           ;
CODE_00B5B8:        PLY                       ;
CODE_00B5B9:        RTS                       ;

DATA_00B5BA:        db $12,$7B,$01,$7F,$11,$7F,$02,$7B ;

DATA_00B5C2:        db $70,$79,$7F,$79,$6F,$7D,$60,$79 ;

DATA_00B5CA:        db $0C,$00,$02,$00,$0C,$00,$0C,$00 ;

DATA_00B5D2:        db $60,$03,$61,$03,$62,$03,$63,$03 ;
                    db $FF,$02,$FF,$02,$70,$03,$71,$03 ;
                    db $72,$03,$73,$03,$FF,$02,$FF,$02 ;

DATA_00B5EA:        db $00,$01,$FF,$07,$08,$09,$0A,$7F ;
                    db $17,$18,$19,$1A,$7F,$07,$08,$09 ;
                    db $0A,$0E,$17,$18,$19,$1A,$1E,$17 ;
                    db $18,$19,$1A,$7F,$7F,$7F,$0B,$0C ;
                    db $0D,$07,$08,$09,$0A,$0F,$17,$18 ;
                    db $19,$1A,$1F,$1B,$1C,$1D,$20,$1B ;
                    db $1C,$1D,$21,$1B,$1C,$1D,$30,$1B ;
                    db $1C,$1D,$31,$65,$66,$67,$75,$76 ;
                    db $77 ;

CODE_00B62B:        PHB                       ;
CODE_00B62C:        PHK                       ;
CODE_00B62D:        PLB                       ;
CODE_00B62E:        LDA $0211                 ;
CODE_00B631:        BEQ CODE_00B63D           ;
CODE_00B633:        DEC $0211                 ;
CODE_00B636:        BNE CODE_00B63D           ;
CODE_00B638:        JSR CODE_00B925           ;
CODE_00B63B:        INC $DE                   ;
CODE_00B63D:        PLB                       ;
CODE_00B63E:        RTS                       ;

CODE_00B63F:        PHB                       ;
CODE_00B640:        PHK                       ;
CODE_00B641:        PLB                       ;
CODE_00B642:        DEC $020E                 ;\ Decrease timer (used for making Mario, toad, move the carpet bird/pidget, move luigi's hand, and birdo's tail move)
CODE_00B645:        BNE CODE_00B65D           ;/ If it is not zero branch
CODE_00B647:        JSR CODE_00B6DA           ; Move luigi's hand
CODE_00B64A:        JSR CODE_00B748           ; Move toad
CODE_00B64D:        JSR CODE_00B7BD           ; Move birdo's tail
CODE_00B650:        JSR CODE_00B88C           ; Move pidget
CODE_00B653:        JSR CODE_00B8B5           ; Move Mario
CODE_00B656:        LDA #$09                  ;\ Reset timer
CODE_00B658:        STA $020E                 ;/
CODE_00B65B:        STA $DE                   ; Upload tilemap
CODE_00B65D:        DEC $0210                 ;\ If it is not time to make bowser talk and luigi's head move, branch
CODE_00B660:        BNE CODE_00B66F           ;/
CODE_00B662:        JSR CODE_00B6B9           ; Move luigi's head
CODE_00B665:        JSR CODE_00B970           ; Move bowser
CODE_00B668:        LDA #$10                  ;\ Reset timer
CODE_00B66A:        STA $0210                 ;/
CODE_00B66D:        STA $DE                   ; Upload tilemap
CODE_00B66F:        DEC $0211                 ;\ If it is not time to make peach talk and birdo talk, branch
CODE_00B672:        BNE CODE_00B681           ;/
CODE_00B674:        JSR CODE_00B723           ; Move peach
CODE_00B677:        JSR CODE_00B79C           ; Move birdo
CODE_00B67A:        LDA #$20                  ;\ Reset timer
CODE_00B67C:        STA $0211                 ;/
CODE_00B67F:        STA $DE                   ; Upload tilemap
CODE_00B681:        PLB                       ;
CODE_00B682:        RTS                       ;

CODE_00B683:        PHB                       ;
CODE_00B684:        PHK                       ;
CODE_00B685:        PLB                       ;
CODE_00B686:        REP #$30                  ; Upload BG1 tilemap to RAM
CODE_00B688:        LDX.w #DATA_3C8000                ; Source low and high byte
CODE_00B68B:        LDY #$0000                ; Destination low and high byte
CODE_00B68E:        LDA #$07FF                ; Amount of byte to transfer
CODE_00B691:        MVN $7F, DATA_3C8000>>16  ; Transfer $3C:8000 -> $7F:0000
CODE_00B694:        SEP #$30                  ;
CODE_00B696:        PLB                       ;
CODE_00B697:        LDA #$0B                  ;\
CODE_00B699:        STA $020E                 ; |
CODE_00B69C:        LDA #$08                  ; |
CODE_00B69E:        STA $020F                 ; | Set timers
CODE_00B6A1:        LDA #$10                  ; |
CODE_00B6A3:        STA $0210                 ; |
CODE_00B6A6:        LDA #$20                  ; |
CODE_00B6A8:        STA $0211                 ;/
CODE_00B6AB:        LDA #$01                  ;\ Upload $7F:0000 to BG1 tilemap
CODE_00B6AD:        STA $DE                   ;/
CODE_00B6AF:        STZ $0212                 ;
CODE_00B6B2:        LDA #$60                  ;\
CODE_00B6B4:        STA $22                   ; | Set flash timer for the "All-Stars" text on the title screen
CODE_00B6B6:        STZ $23                   ;/
CODE_00B6B8:        RTS                       ;

CODE_00B6B9:        LDA #$00                  ;\ Source bank
CODE_00B6BB:        STA $02                   ;/
CODE_00B6BD:        REP #$30                  ;
CODE_00B6BF:        LDA $0200                 ; Get frame
CODE_00B6C2:        AND #$0003                ;
CODE_00B6C5:        ASL A                     ;
CODE_00B6C6:        TAX                       ;
CODE_00B6C7:        LDA DATA_00B705,x               ;\ Source low and high byte
CODE_00B6CA:        STA $00                   ;/
CODE_00B6CC:        LDA #$03A6                ;\ Destination
CODE_00B6CF:        STA $04                   ;/
CODE_00B6D1:        JSR CODE_00B9AB           ; Put tilemap in RAM
CODE_00B6D4:        SEP #$30                  ;
CODE_00B6D6:        INC $0200                 ; Next frame
CODE_00B6D9:        RTS                       ;

CODE_00B6DA:        LDA #$00                  ;\ Source bank
CODE_00B6DC:        STA $02                   ;/
CODE_00B6DE:        REP #$30                  ;
CODE_00B6E0:        LDA $0201                 ; Get the frame
CODE_00B6E3:        AND #$00FF                ;
CODE_00B6E6:        ASL A                     ;
CODE_00B6E7:        TAX                       ;
CODE_00B6E8:        LDA DATA_00B70D,x               ;\ Source low and high
CODE_00B6EB:        STA $00                   ;/
CODE_00B6ED:        LDA #$0464                ;\ Destination
CODE_00B6F0:        STA $04                   ;/
CODE_00B6F2:        JSR CODE_00B9AB           ; Put tilemap in RAM
CODE_00B6F5:        SEP #$30                  ;
CODE_00B6F7:        INC $0201                 ;
CODE_00B6FA:        LDA $0201                 ;
CODE_00B6FD:        CMP #$0B                  ;
CODE_00B6FF:        BCC CODE_00B704           ;
CODE_00B701:        STZ $0201                 ;
CODE_00B704:        RTS                       ;

DATA_00B705:        dw $B9D1,$B9F5,$BA19,$B9F5
          
DATA_00B70D:        dw $BA3D,$BA3D,$BA4D,$BA4D
                    dw $BA4D,$BA4D,$BA5D,$BA4D
                    dw $BA4D,$BA4D,$BA4D

CODE_00B723:        LDA #$00                  ;
CODE_00B725:        STA $02                   ;
CODE_00B727:        REP #$30                  ;
CODE_00B729:        LDA $0202                 ;
CODE_00B72C:        AND #$0001                ;
CODE_00B72F:        ASL A                     ;
CODE_00B730:        TAX                       ;
CODE_00B731:        LDA DATA_00B744,x               ;
CODE_00B734:        STA $00                   ;
CODE_00B736:        LDA #$0392                ;
CODE_00B739:        STA $04                   ;
CODE_00B73B:        JSR CODE_00B9AB           ;
CODE_00B73E:        SEP #$30                  ;
CODE_00B740:        INC $0202                 ;
CODE_00B743:        RTS                       ;

DATA_00B744:        dw $BA6D : dw $BA8B

CODE_00B748:        LDA #$00                  ;
CODE_00B74A:        STA $02                   ;
CODE_00B74C:        REP #$30                  ;
CODE_00B74E:        LDA $0203                 ;
CODE_00B751:        AND #$0001                ;
CODE_00B754:        ASL A                     ;
CODE_00B755:        TAX                       ;
CODE_00B756:        LDA DATA_00B769,x               ;
CODE_00B759:        STA $00                   ;
CODE_00B75B:        LDA #$04EC                ;
CODE_00B75E:        STA $04                   ;
CODE_00B760:        JSR CODE_00B9AB           ;
CODE_00B763:        SEP #$30                  ;
CODE_00B765:        INC $0203                 ;
CODE_00B768:        RTS                       ;

DATA_00B769:        dw $BAA9 : dw $BAE3

CODE_00B76D:        LDA #$00                  ;
CODE_00B76F:        STA $02                   ;
CODE_00B771:        REP #$30                  ;
CODE_00B773:        LDA $0204                 ;
CODE_00B776:        AND #$0003                ;
CODE_00B779:        ASL A                     ;
CODE_00B77A:        TAX                       ;
CODE_00B77B:        LDA DATA_00B7DE,x               ;
CODE_00B77E:        STA $00                   ;
CODE_00B780:        LDA #$0476                ;
CODE_00B783:        STA $04                   ;
CODE_00B785:        JSR CODE_00B9AB           ;
CODE_00B788:        SEP #$30                  ;
CODE_00B78A:        INC $0204                 ;
CODE_00B78D:        LDA $0204                 ;
CODE_00B790:        AND #$0F                  ;
CODE_00B792:        CMP #$03                  ;
CODE_00B794:        BNE CODE_00B79B           ;
CODE_00B796:        LDA #$80                  ;
CODE_00B798:        STA $0204                 ;
CODE_00B79B:        RTS                       ;

CODE_00B79C:        LDA #$00                  ;
CODE_00B79E:        STA $02                   ;
CODE_00B7A0:        REP #$30                  ;
CODE_00B7A2:        LDA $0205                 ;
CODE_00B7A5:        AND #$0001                ;
CODE_00B7A8:        ASL A                     ;
CODE_00B7A9:        TAX                       ;
CODE_00B7AA:        LDA DATA_00B7E4,x         ;
CODE_00B7AD:        STA $00                   ;
CODE_00B7AF:        LDA #$04B4                ;
CODE_00B7B2:        STA $04                   ;
CODE_00B7B4:        JSR CODE_00B9AB           ;
CODE_00B7B7:        SEP #$30                  ;
CODE_00B7B9:        INC $0205                 ;
CODE_00B7BC:        RTS                       ;

CODE_00B7BD:        LDA #$00                  ;
CODE_00B7BF:        STA $02                   ;
CODE_00B7C1:        REP #$30                  ;
CODE_00B7C3:        LDA $0206                 ;
CODE_00B7C6:        AND #$0003                ;
CODE_00B7C9:        ASL A                     ;
CODE_00B7CA:        TAX                       ;
CODE_00B7CB:        LDA DATA_00B7E8,x               ;
CODE_00B7CE:        STA $00                   ;
CODE_00B7D0:        LDA #$04FA                ;
CODE_00B7D3:        STA $04                   ;
CODE_00B7D5:        JSR CODE_00B9AB           ;
CODE_00B7D8:        SEP #$30                  ;
CODE_00B7DA:        INC $0206                 ;
CODE_00B7DD:        RTS                       ;

DATA_00B7DE:        dw $BB1D,$BB29,$BB1D

DATA_00B7E4:        dw $BB35,$BB45

DATA_00B7E8:        dw $BB55,$BB67,$BB79,$BB8B

CODE_00B7F0:        LDA #$00                  ;
CODE_00B7F2:        STA $02                   ;
CODE_00B7F4:        REP #$30                  ;
CODE_00B7F6:        LDA $0207                 ;
CODE_00B7F9:        AND #$0003                ;
CODE_00B7FC:        ASL A                     ;
CODE_00B7FD:        TAX                       ;
CODE_00B7FE:        LDA DATA_00B81F,x               ;
CODE_00B801:        STA $00                   ;
CODE_00B803:        LDA #$054E                ;
CODE_00B806:        STA $04                   ;
CODE_00B808:        JSR CODE_00B9AB           ;
CODE_00B80B:        SEP #$30                  ;
CODE_00B80D:        INC $0207                 ;
CODE_00B810:        LDA $0207                 ;
CODE_00B813:        AND #$0F                  ;
CODE_00B815:        CMP #$03                  ;
CODE_00B817:        BNE CODE_00B81E           ;
CODE_00B819:        LDA #$80                  ;
CODE_00B81B:        STA $0207                 ;
CODE_00B81E:        RTS                       ;

DATA_00B81F:        db $9D,$BB,$AB,$BB,$9D,$BB

CODE_00B825:        LDA #$00                  ;
CODE_00B827:        STA $02                   ;
CODE_00B829:        REP #$30                  ;
CODE_00B82B:        LDA $0208                 ;
CODE_00B82E:        AND #$0003                ;
CODE_00B831:        ASL A                     ;
CODE_00B832:        TAX                       ;
CODE_00B833:        LDA DATA_00B852,x               ;
CODE_00B836:        STA $00                   ;
CODE_00B838:        LDA #$0544                ;
CODE_00B83B:        STA $04                   ;
CODE_00B83D:        JSR CODE_00B9AB           ;
CODE_00B840:        SEP #$30                  ;
CODE_00B842:        INC $0208                 ;
CODE_00B845:        LDA $0208                 ;
CODE_00B848:        AND #$04                  ;
CODE_00B84A:        BEQ CODE_00B851           ;
CODE_00B84C:        LDA #$80                  ;
CODE_00B84E:        STA $0208                 ;
CODE_00B851:        RTS                       ;

DATA_00B852:        db $B9,$BB,$BF,$BB,$C5,$BB,$B9,$BB

CODE_00B85A:        LDA #$00                  ;
CODE_00B85C:        STA $02                   ;
CODE_00B85E:        REP #$30                  ;
CODE_00B860:        LDA $0209                 ;
CODE_00B863:        AND #$0001                ;
CODE_00B866:        ASL A                     ;
CODE_00B867:        TAX                       ;
CODE_00B868:        LDA DATA_00B888,x               ;
CODE_00B86B:        STA $00                   ;
CODE_00B86D:        LDA #$0672                ;
CODE_00B870:        STA $04                   ;
CODE_00B872:        JSR CODE_00B9AB           ;
CODE_00B875:        SEP #$30                  ;
CODE_00B877:        LDA $0209                 ;
CODE_00B87A:        BEQ CODE_00B884           ;
CODE_00B87C:        LDA $0209                 ;
CODE_00B87F:        ORA #$80                  ;
CODE_00B881:        STA $0209                 ;
CODE_00B884:        INC $0209                 ;
CODE_00B887:        RTS                       ;

DATA_00B888:        db $CB,$BB,$D1,$BB

CODE_00B88C:        LDA #$00                  ;
CODE_00B88E:        STA $02                   ;
CODE_00B890:        REP #$30                  ;
CODE_00B892:        LDA $020A                 ;
CODE_00B895:        AND #$0003                ;
CODE_00B898:        ASL A                     ;
CODE_00B899:        TAX                       ;
CODE_00B89A:        LDA DATA_00B8AD,x               ;
CODE_00B89D:        STA $00                   ;
CODE_00B89F:        LDA #$00B2                ;
CODE_00B8A2:        STA $04                   ;
CODE_00B8A4:        JSR CODE_00B9AB           ;
CODE_00B8A7:        SEP #$30                  ;
CODE_00B8A9:        INC $020A                 ;
CODE_00B8AC:        RTS                       ;

DATA_00B8AD:        db $D7,$BB,$01,$BC,$2B,$BC,$55,$BC

CODE_00B8B5:        LDA #$00                  ;
CODE_00B8B7:        STA $02                   ;
CODE_00B8B9:        REP #$30                  ;
CODE_00B8BB:        LDA $020B                 ;
CODE_00B8BE:        AND #$000F                ;
CODE_00B8C1:        ASL A                     ;
CODE_00B8C2:        TAX                       ;
CODE_00B8C3:        LDA DATA_00B938,x         ;
CODE_00B8C6:        STA $00                   ;
CODE_00B8C8:        LDA #$0458                ;
CODE_00B8CB:        STA $04                   ;
CODE_00B8CD:        JSR CODE_00B9AB           ;
CODE_00B8D0:        LDA DATA_00B94C,x         ;
CODE_00B8D3:        STA $00                   ;
CODE_00B8D5:        LDA #$041A                ;
CODE_00B8D8:        STA $04                   ;
CODE_00B8DA:        JSR CODE_00B9AB           ;
CODE_00B8DD:        SEP #$30                  ;
CODE_00B8DF:        LDA $020B                 ;
CODE_00B8E2:        BNE CODE_00B8EC           ;
CODE_00B8E4:        JSR CODE_00B901           ;
CODE_00B8E7:        STZ $020C                 ;
CODE_00B8EA:        BRA CODE_00B8F3           ;

CODE_00B8EC:        CMP #$06                  ;
CODE_00B8EE:        BCC CODE_00B8F3           ;
CODE_00B8F0:        JSR CODE_00B901           ;
CODE_00B8F3:        INC $020B                 ;
CODE_00B8F6:        LDA $020B                 ;
CODE_00B8F9:        CMP #$0A                  ;
CODE_00B8FB:        BCC CODE_00B900           ;
CODE_00B8FD:        STZ $020B                 ;
CODE_00B900:        RTS                       ;

CODE_00B901:        REP #$30                  ;
CODE_00B903:        LDA $020C                 ;
CODE_00B906:        AND #$0003                ;
CODE_00B909:        ASL A                     ;
CODE_00B90A:        TAX                       ;
CODE_00B90B:        LDA DATA_00B960,x         ;
CODE_00B90E:        STA $7F051E               ;
CODE_00B912:        LDA DATA_00B968,x         ;
CODE_00B915:        STA $00                   ;
CODE_00B917:        LDA #$04A0                ;
CODE_00B91A:        STA $04                   ;
CODE_00B91C:        JSR CODE_00B9AB           ;
CODE_00B91F:        SEP #$30                  ;
CODE_00B921:        INC $020C                 ;
CODE_00B924:        RTS                       ;

CODE_00B925:        REP #$30                  ;
CODE_00B927:        LDA #$01B0                ;
CODE_00B92A:        STA $7F045C               ;
CODE_00B92E:        LDA #$01C0                ;
CODE_00B931:        STA $7F049C               ;
CODE_00B935:        SEP #$30                  ;
CODE_00B937:        RTS                       ;

DATA_00B938:        dw $BC7F,$BC9D,$BCBB,$BC9D
                    dw $BC7F,$BC9D,$BCBB,$BCD9
                    dw $BCD9,$BCD9

DATA_00B94C:        dw $BCF7,$BCFF,$BD07,$BCFF
                    dw $BCF7,$BCFF,$BD07,$BD0F
                    dw $BD0F,$BD0F

DATA_00B960:        dw $007F,$01D4,$01D4,$01D4

DATA_00B968:        dw $BD17,$BD25,$BD25,$BD25

CODE_00B970:        LDA #$00                  ;
CODE_00B972:        STA $02                   ;
CODE_00B974:        REP #$30                  ;
CODE_00B976:        LDA $020D                 ;
CODE_00B979:        AND #$00FF                ;
CODE_00B97C:        ASL A                     ;
CODE_00B97D:        TAX                       ;
CODE_00B97E:        LDA DATA_00B99B,x         ;
CODE_00B981:        STA $00                   ;
CODE_00B983:        LDA #$040E                ;
CODE_00B986:        STA $04                   ;
CODE_00B988:        JSR CODE_00B9AB           ;
CODE_00B98B:        SEP #$30                  ;
CODE_00B98D:        INC $020D                 ;
CODE_00B990:        LDA $020D                 ;
CODE_00B993:        CMP #$08                  ;
CODE_00B995:        BCC CODE_00B99A           ;
CODE_00B997:        STZ $020D                 ;
CODE_00B99A:        RTS                       ;

DATA_00B99B:        dw $BD33,$BD33,$BD33,$BD51
                    dw $BD6F,$BD6F,$BD6F,$BD51

CODE_00B9AB:        PHX                       ;\ Push X and Y
CODE_00B9AC:        PHY                       ;/
CODE_00B9AD:        LDY #$0000                ; X= #$0000
CODE_00B9B0:        LDX $04                   ; Get destination
CODE_00B9B2:        LDA [$00],y               ; Read data
CODE_00B9B4:        BEQ CODE_00B9C2           ; If it is zero, branch
CODE_00B9B6:        BMI CODE_00B9CE           ; If it is negative, return
CODE_00B9B8:        STA $7F0000,x             ; Write data
CODE_00B9BC:        INX                       ;\
CODE_00B9BD:        INX                       ; | Move on
CODE_00B9BE:        INY                       ; |
CODE_00B9BF:        INY                       ;/
CODE_00B9C0:        BRA CODE_00B9B2           ;

CODE_00B9C2:        INY                       ;\
CODE_00B9C3:        INY                       ; |
CODE_00B9C4:        LDA $04                   ; | Move on
CODE_00B9C6:        CLC                       ; |
CODE_00B9C7:        ADC #$0040                ; |
CODE_00B9CA:        STA $04                   ;/
CODE_00B9CC:        BRA CODE_00B9B0           ;

CODE_00B9CE:        PLY                       ;
CODE_00B9CF:        PLX                       ;
CODE_00B9D0:        RTS                       ;

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

CODE_00BD8D:        LDA $22                   ;\ If the timer is not zero, branch
CODE_00BD8F:        BNE CODE_00BE05           ;/ (if it is not time to "flash")
CODE_00BD91:        LDA $23                   ;\
CODE_00BD93:        CMP #$1C                  ; | If we finished flashing branch
CODE_00BD95:        BEQ CODE_00BDF1           ;/
CODE_00BD97:        LDA #$04                  ;\ Set timer
CODE_00BD99:        STA $22                   ;/
CODE_00BD9B:        PHB                       ;
CODE_00BD9C:        PHK                       ;
CODE_00BD9D:        PLB                       ;
CODE_00BD9E:        REP #$20                  ;
CODE_00BDA0:        LDA $23                   ;\
CODE_00BDA2:        AND #$00FF                ; | Get which step we are on
CODE_00BDA5:        STA $04                   ;/
CODE_00BDA7:        CMP #$000E                ;\ If we are halfway through it or more, branch
CODE_00BDAA:        BCS CODE_00BDCA           ;/
CODE_00BDAC:        LDA #$001C                ;
CODE_00BDAF:        SEC                       ;
CODE_00BDB0:        SBC $04                   ;
CODE_00BDB2:        TAX                       ;
CODE_00BDB3:        LDY #$00                  ; Change the palette
CODE_00BDB5:        LDA DATA_00BE08,y               ;
CODE_00BDB8:        STA $7F9300,x             ;
CODE_00BDBC:        LDA $04                   ;
CODE_00BDBE:        BEQ CODE_00BDE5           ;
CODE_00BDC0:        DEC $04                   ;
CODE_00BDC2:        DEC $04                   ;
CODE_00BDC4:        INX                       ;
CODE_00BDC5:        INX                       ;
CODE_00BDC6:        INY                       ;
CODE_00BDC7:        INY                       ;
CODE_00BDC8:        BRA CODE_00BDB5           ;

CODE_00BDCA:        LDA $23                   ;
CODE_00BDCC:        AND #$00FF                ;
CODE_00BDCF:        SEC                       ;
CODE_00BDD0:        SBC #$000C                ; Change the palette
CODE_00BDD3:        TAY                       ;
CODE_00BDD4:        LDX #$00                  ;
CODE_00BDD6:        LDA DATA_00BE08,y               ;
CODE_00BDD9:        STA $7F930E,x             ;
CODE_00BDDD:        INY                       ;
CODE_00BDDE:        INY                       ;
CODE_00BDDF:        INX                       ;
CODE_00BDE0:        INX                       ;
CODE_00BDE1:        CPX #$10                  ;
CODE_00BDE3:        BNE CODE_00BDD6           ;
CODE_00BDE5:        INC $23                   ;\ Increase the timer
CODE_00BDE7:        INC $23                   ;/
CODE_00BDE9:        INC $0AC0                 ; Update CGRAM
CODE_00BDEC:        SEP #$20                  ;
CODE_00BDEE:        PLB                       ;
CODE_00BDEF:        BRA CODE_00BE05           ;

CODE_00BDF1:        REP #$20                  ;
CODE_00BDF3:        LDA $E3                   ;\
CODE_00BDF5:        CMP $0225                 ; | If the amount of time left on the title screen is not equal to $0225,  branch
CODE_00BDF8:        BNE CODE_00BE01           ;/
CODE_00BDFA:        LDA #$00F0                ;\
CODE_00BDFD:        STA $22                   ; | Reset timers
CODE_00BDFF:        STZ $23                   ;/
CODE_00BE01:        SEP #$20                  ;
CODE_00BE03:        BRA CODE_00BE07           ;

CODE_00BE05:        DEC $22                   ; Decrease the timer
CODE_00BE07:        RTS                       ;

DATA_00BE08:        dw $1EDF,$435F,$5FBF,$7FFF              ; Palette of the shining ALL*STARS logo
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

CODE_00C000:        LDA $0BA5                 ;
CODE_00C003:        BNE CODE_00C059           ;
CODE_00C005:        LDA $06D5                 ;
CODE_00C008:        CMP #$18                  ;
CODE_00C00A:        BEQ CODE_00C010           ;
CODE_00C00C:        CMP #$78                  ;
CODE_00C00E:        BNE CODE_00C020           ;
CODE_00C010:        LDA $09                   ;
CODE_00C012:        AND #$07                  ;
CODE_00C014:        BNE CODE_00C020           ;
CODE_00C016:        LDA $1601                 ;
CODE_00C019:        BNE CODE_00C020           ;
CODE_00C01B:        LDA #$04                  ;
CODE_00C01D:        STA $1601                 ;
CODE_00C020:        STZ $028E                 ;
CODE_00C023:        LDA $06D5                 ;
CODE_00C026:        LSR A                     ;
CODE_00C027:        LSR A                     ;
CODE_00C028:        LSR A                     ;
CODE_00C029:        INC $028E                 ;
CODE_00C02C:        REP #$20                  ;
CODE_00C02E:        AND #$00FF                ;
CODE_00C031:        XBA                       ;
CODE_00C032:        CLC                       ;
CODE_00C033:        ADC #$8000                ;
CODE_00C036:        STA $028F                 ;
CODE_00C039:        LDA #$6000                ;
CODE_00C03C:        STA $0295                 ;
CODE_00C03F:        LDA #$0100                ;
CODE_00C042:        STA $0293                 ;
CODE_00C045:        SEP #$20                  ;
CODE_00C047:        LDA $0EC2                 ;
CODE_00C04A:        BEQ CODE_00C054           ;
CODE_00C04C:        LDA $0290                 ;
CODE_00C04F:        ORA #$40                  ;
CODE_00C051:        STA $0290                 ;
CODE_00C054:        LDA #$0A                  ;
CODE_00C056:        STA $0291                 ;
CODE_00C059:        RTL                       ;

CODE_00C05A:        STZ $0F4A                 ;
CODE_00C05D:        LDA #$35                  ;
CODE_00C05F:        RTL                       ;

CODE_00C060:        REP #$20                  ;For SMB:TLL
CODE_00C062:        LDX #$1E                  ;Set loop count
CODE_00C064:        LDA $0753                 ;\
CODE_00C067:        BEQ CODE_00C06F           ;/Branch if Mario
CODE_00C069:        LDA.l DATA_00C0A3,x             ;Get Luigi palette data
CODE_00C06D:        BRA CODE_00C073           ;

CODE_00C06F:        LDA.l DATA_00C083,x             ;Get Mario palette data
CODE_00C073:        STA $1160,x               ;Write palette data to RAM
CODE_00C076:        DEX                       ;
CODE_00C077:        DEX                       ;
CODE_00C078:        BPL CODE_00C064           ;
CODE_00C07A:        SEP #$20                  ;
CODE_00C07C:        INC $1200                 ;
CODE_00C07F:        JSR CODE_00C0C3           ;Write princess peach thank you message
CODE_00C082:        RTL                       ;

DATA_00C083:        dw $734E,$7FFF,$14A5,$5D68              ;Mario portrait Palette of princess saved sequence
                    dw $762E,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$1C9F,$0C19,$0C19

DATA_00C0A3:        dw $734E,$7FFF,$14A5,$5588              ;Luigi portrait Palette of princess saved sequence
                    dw $724D,$27BF,$31BB,$3ABF
                    dw $0000,$152F,$355D,$525F
                    dw $169B,$3303,$1A40,$1C9F

CODE_00C0C3:        PHB                       ;
CODE_00C0C4:        PHK                       ;
CODE_00C0C5:        PLB                       ;
CODE_00C0C6:        PHX                       ;
CODE_00C0C7:        LDA #$FF                  ;
CODE_00C0C9:        STA $0EEE                 ;
CODE_00C0CC:        STZ $0EEF                 ;
CODE_00C0CF:        STZ $0BA3                 ;
CODE_00C0D2:        LDA #$15                  ;\
CODE_00C0D4:        STA $120B                 ;/Main Screen designation
CODE_00C0D7:        LDA #$02                  ;\
CODE_00C0D9:        STA $120C                 ;/Sub Screen designation
CODE_00C0DC:        REP #$10                  ;16 bit xy
CODE_00C0DE:        LDA $075F                 ;\
CODE_00C0E1:        PHA                       ;/Push world number onto stack
CODE_00C0E2:        LDA $70000F               ;\
CODE_00C0E6:        BNE CODE_00C0F2           ;/ Branch if loaded game isn't SMB1
CODE_00C0E8:        LDA $07FC                 ;\ When SMB1
CODE_00C0EB:        BEQ CODE_00C0F2           ;/ If not more difficult quest flag, branch
CODE_00C0ED:        LDA #$0C                  ;\
CODE_00C0EF:        STA $075F                 ;/ Set world number to... 0C?
CODE_00C0F2:        LDA #$00                  ;\
CODE_00C0F4:        XBA                       ;/Clear high byte
CODE_00C0F5:        LDA $0753                 ;\
CODE_00C0F8:        ASL A                     ; | Player << 2
CODE_00C0F9:        ASL A                     ; | 
CODE_00C0FA:        STA $00                   ;/ into $00
CODE_00C0FC:        LDA $075F                 ;\ World number
CODE_00C0FF:        AND #$08                  ; | Bit is set when in world D
CODE_00C101:        LSR A                     ; | >> 2
CODE_00C102:        LSR A                     ; | 
CODE_00C103:        ORA $00                   ; | OR with the player thing
CODE_00C105:        TAY                       ;/ to index
CODE_00C106:        PLA                       ;\
CODE_00C107:        STA $075F                 ;/restore world number
CODE_00C10A:        LDX DATA_00C126,y               ;\
CODE_00C10D:        TXY                       ;/Get message index
CODE_00C10E:        LDX $1700                 ;
CODE_00C111:        LDA DATA_00C12E,y               ;
CODE_00C114:        STA $1702,x               ;
CODE_00C117:        INC A                     ;\ Check if the written byte is FF
CODE_00C118:        BEQ CODE_00C11E           ;/ if so, return
CODE_00C11A:        INX                       ;
CODE_00C11B:        INY                       ;
CODE_00C11C:        BRA CODE_00C111           ;

CODE_00C11E:        STX $1700                 ;
CODE_00C121:        SEP #$10                  ;
CODE_00C123:        PLX                       ;
CODE_00C124:        PLB                       ;
CODE_00C125:        RTS                       ;

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

CODE_00C3DA:        PHX                       ;
CODE_00C3DB:        LDA $0F85                 ;
CODE_00C3DE:        BNE CODE_00C41B           ;
CODE_00C3E0:        LDA $70000F               ;
CODE_00C3E4:        BEQ CODE_00C3E9           ;
CODE_00C3E6:        LDA $0753                 ;
CODE_00C3E9:        ASL A                     ;
CODE_00C3EA:        ASL A                     ;
CODE_00C3EB:        ASL A                     ;
CODE_00C3EC:        ORA $0F84                 ;
CODE_00C3EF:        TAX                       ;
CODE_00C3F0:        INC $0F84                 ;
CODE_00C3F3:        LDA $0F84                 ;
CODE_00C3F6:        CMP #$03                  ;
CODE_00C3F8:        BNE CODE_00C402           ;
CODE_00C3FA:        LDA #$FF                  ;
CODE_00C3FC:        STA $00A1                 ;
CODE_00C3FF:        STZ $043D                 ;
CODE_00C402:        LDA.l DATA_00C43F,x             ;
CODE_00C406:        BNE CODE_00C411           ;
CODE_00C408:        INC $0772                 ;
CODE_00C40B:        STZ $0705                 ;
CODE_00C40E:        STZ $005D                 ;
CODE_00C411:        STA $0F85                 ;
CODE_00C414:        LDA.l DATA_00C44F,x             ;
CODE_00C418:        STA $0F86                 ;
CODE_00C41B:        DEC $0F85                 ;
CODE_00C41E:        LDA $0F86                 ;
CODE_00C421:        AND #$08                  ;
CODE_00C423:        ASL A                     ;
CODE_00C424:        ASL A                     ;
CODE_00C425:        ASL A                     ;
CODE_00C426:        ASL A                     ;
CODE_00C427:        STA $0D                   ;
CODE_00C429:        LDY $0F86                 ;
CODE_00C42C:        LDA $0723                 ;
CODE_00C42F:        BEQ CODE_00C43D           ;
CODE_00C431:        LDA $0219                 ;
CODE_00C434:        CMP #$A2                  ;
CODE_00C436:        BCC CODE_00C43D           ;
CODE_00C438:        LDA #$A2                  ;
CODE_00C43A:        STA $0219                 ;
CODE_00C43D:        PLX                       ;
CODE_00C43E:        RTL                       ;

DATA_00C43F:        dw $A018,$0108,$1028,$0003
                    dw $A010,$0108,$1E28,$0002

DATA_00C44F:        dw $0001,$C141,$01C9,$0001
                    dw $0001,$C141,$01C9,$0001

CODE_00C45F:        DEC $0F88                 ;
CODE_00C462:        LDA $0F88                 ;
CODE_00C465:        BPL CODE_00C47D           ;
CODE_00C467:        INC $0F87                 ;
CODE_00C46A:        LDX $0F87                 ;
CODE_00C46D:        CPX #$05                  ;
CODE_00C46F:        BNE CODE_00C476           ;
CODE_00C471:        LDA #$A0                  ;\ Set player X position to A0
CODE_00C473:        STA $0219                 ;/ (This happens when the princess hugs the player and gets pushed back 2 pixels or so)
CODE_00C476:        LDA.l DATA_00C4B4,x       ;
CODE_00C47A:        STA $0F88                 ;
CODE_00C47D:        LDA $0F87                 ;
CODE_00C480:        ASL A                     ;
CODE_00C481:        TAX                       ;
CODE_00C482:        LDA.l PNTR_00C491,x       ;
CODE_00C486:        STA $00                   ;
CODE_00C488:        LDA.l PNTR_00C491+1,x       ;
CODE_00C48C:        STA $01                   ;
CODE_00C48E:        JMP ($0000)               ;

PNTR_00C491:        dw CODE_00C49F                          ;
                    dw CODE_00C49F                          ;
                    dw CODE_00C49F                          ;
                    dw CODE_00C4B0                          ;
                    dw CODE_00C4A0                          ;
                    dw CODE_00C49F                          ;
                    dw CODE_00C49F                          ;

CODE_00C49F:        RTL                       ;

CODE_00C4A0:        LDA #$20                  ;
CODE_00C4A2:        STA $00                   ;
CODE_00C4A4:        LDA #$04                  ;
CODE_00C4A6:        STA $02                   ;
CODE_00C4A8:        LDA #$00                  ;
CODE_00C4AA:        LDX #$01                  ;
CODE_00C4AC:        JSL CODE_0DBF7A           ;
CODE_00C4B0:        DEC $021A                 ;
CODE_00C4B3:        RTL                       ;

DATA_00C4B4:        db $00,$30,$37,$1A,$10,$60,$FF

CODE_00C4BB:        PHX                       ;
CODE_00C4BC:        LDA $03AE                 ;
CODE_00C4BF:        CLC                       ;
CODE_00C4C0:        ADC #$07                  ;
CODE_00C4C2:        STA $08B0                 ;
CODE_00C4C5:        STA $08B4                 ;
CODE_00C4C8:        LDA $03B9                 ;
CODE_00C4CB:        STA $08B1                 ;
CODE_00C4CE:        CLC                       ;
CODE_00C4CF:        ADC #$10                  ;
CODE_00C4D1:        STA $08B5                 ;
CODE_00C4D4:        LDX $0F87                 ;
CODE_00C4D7:        CPX #$03                  ;
CODE_00C4D9:        BNE CODE_00C4E9           ;
CODE_00C4DB:        LDA $09                   ;
CODE_00C4DD:        AND #$04                  ;
CODE_00C4DF:        BNE CODE_00C4E9           ;
CODE_00C4E1:        LDA.l DATA_00C54E,x             ;
CODE_00C4E5:        INC A                     ;
CODE_00C4E6:        INC A                     ;
CODE_00C4E7:        BRA CODE_00C4ED           ;

CODE_00C4E9:        LDA.l DATA_00C54E,x             ;
CODE_00C4ED:        STA $08B2                 ;
CODE_00C4F0:        CLC                       ;
CODE_00C4F1:        ADC #$20                  ;
CODE_00C4F3:        STA $08B6                 ;
CODE_00C4F6:        LDA #$25                  ;
CODE_00C4F8:        STA $08B3                 ;
CODE_00C4FB:        STA $08B7                 ;
CODE_00C4FE:        LDA $021A                 ;
CODE_00C501:        CLC                       ;
CODE_00C502:        ADC #$07                  ;
CODE_00C504:        SEC                       ;
CODE_00C505:        SBC $0042                 ;
CODE_00C508:        LDA $0079                 ;
CODE_00C50B:        SBC $0043                 ;
CODE_00C50E:        ORA #$02                  ;
CODE_00C510:        STA $0CB0                 ;
CODE_00C513:        STA $0CB4                 ;
CODE_00C516:        LDX $0B58                 ;
CODE_00C519:        LDA $0802,x               ;
CODE_00C51C:        CMP #$F6                  ;
CODE_00C51E:        BNE CODE_00C528           ;
CODE_00C520:        LDA #$F0                  ;
CODE_00C522:        STA $0801,x               ;
CODE_00C525:        STA $0805,x               ;
CODE_00C528:        LDA $25                   ;
CODE_00C52A:        BEQ CODE_00C54C           ;
CODE_00C52C:        LDA #$1C                  ;
CODE_00C52E:        STA $09E3                 ;
CODE_00C531:        STA $09E7                 ;
CODE_00C534:        STA $09EB                 ;
CODE_00C537:        STA $09EF                 ;
CODE_00C53A:        LDA #$80                  ;
CODE_00C53C:        STA $09E2                 ;
CODE_00C53F:        INC A                     ;
CODE_00C540:        STA $09E6                 ;
CODE_00C543:        LDA #$90                  ;
CODE_00C545:        STA $09EA                 ;
CODE_00C548:        INC A                     ;
CODE_00C549:        STA $09EE                 ;
CODE_00C54C:        PLX                       ;
CODE_00C54D:        RTL                       ;

DATA_00C54E:        db $88,$88,$80,$82,$86,$86,$86

CODE_00C555:        LDA $0F83                 ;
CODE_00C558:        CMP #$0A                  ;
CODE_00C55A:        BCS CODE_00C586           ;
CODE_00C55C:        PHB                       ;
CODE_00C55D:        PHK                       ;
CODE_00C55E:        PLB                       ;
CODE_00C55F:        PHX                       ;
CODE_00C560:        ASL A                     ;
CODE_00C561:        TAX                       ;
CODE_00C562:        INC $0F83                 ;
CODE_00C565:        LDA DATA_00C587,x               ;
CODE_00C568:        STA $0287                 ;
CODE_00C56B:        REP #$20                  ;
CODE_00C56D:        LDA #$0800                ;
CODE_00C570:        STA $0288                 ;
CODE_00C573:        LDA DATA_00C5AF,x               ;
CODE_00C576:        STA $028A                 ;
CODE_00C579:        LDA DATA_00C59B,x               ;
CODE_00C57C:        STA $0285                 ;
CODE_00C57F:        SEP #$20                  ;
CODE_00C581:        INC $0B76                 ;
CODE_00C584:        PLX                       ;
CODE_00C585:        PLB                       ;
CODE_00C586:        RTL                       ;

DATA_00C587:        db $08,$00,$2F,$00,$2F,$00,$2F,$00
                    db $2F,$00,$2F,$00,$2F,$00,$1E,$00
                    db $1E,$00,$1A,$00

DATA_00C59B:        db $00,$A0,$00,$D1,$00,$D8,$00,$E0
                    db $00,$E8,$00,$F0,$00,$F8,$00,$D0
                    db $00,$D8,$00,$E8

DATA_00C5AF:        db $00,$30,$80,$60,$00,$64,$00,$68
                    db $00,$6C,$00,$70,$00,$74,$00,$78
                    db $00,$7C,$00,$04

CODE_00C5C3:        PHB                       ;
CODE_00C5C4:        PHK                       ;
CODE_00C5C5:        PLB                       ;
CODE_00C5C6:        PHX                       ;
CODE_00C5C7:        LDA $0F83                 ;
CODE_00C5CA:        ASL A                     ;
CODE_00C5CB:        TAX                       ;
CODE_00C5CC:        INC $0F83                 ;
CODE_00C5CF:        LDA DATA_00C5F1,x               ;
CODE_00C5D2:        STA $0287                 ;
CODE_00C5D5:        REP #$20                  ;
CODE_00C5D7:        LDA #$0800                ;
CODE_00C5DA:        STA $0288                 ;
CODE_00C5DD:        LDA DATA_00C619,x               ;
CODE_00C5E0:        STA $028A                 ;
CODE_00C5E3:        LDA DATA_00C605,x               ;
CODE_00C5E6:        STA $0285                 ;
CODE_00C5E9:        SEP #$20                  ;
CODE_00C5EB:        INC $0B76                 ;
CODE_00C5EE:        PLX                       ;
CODE_00C5EF:        PLB                       ;
CODE_00C5F0:        RTL                       ;

DATA_00C5F1:        db $08,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00,$07,$00,$07,$00
                    db $07,$00,$07,$00

DATA_00C605:        dw $A000,$8100,$8800,$9000
                    dw $9800,$A000,$A800,$B000
                    dw $B800,$B800

DATA_00C619:        dw $3000,$6080,$6400,$6800
                    dw $6C00,$7000,$7400,$7800
                    dw $7C00,$7C00

CODE_00C62D:        LDA #$2E                  ;
CODE_00C62F:        STA $25                   ;
CODE_00C631:        LDA #$80                  ;
CODE_00C633:        STA $32                   ;
CODE_00C635:        LDA #$01                  ;
CODE_00C637:        STA $19                   ;
CODE_00C639:        LDA $78                   ;
CODE_00C63B:        STA $82                   ;
CODE_00C63D:        LDA $0219                 ;
CODE_00C640:        STA $0223                 ;
CODE_00C643:        LDA #$01                  ;
CODE_00C645:        STA $00C5                 ;
CODE_00C648:        LDA #$18                  ;
CODE_00C64A:        STA $0241                 ;
CODE_00C64D:        STZ $0067                 ;
CODE_00C650:        STZ $020C                 ;
CODE_00C653:        RTL                       ;

CODE_00C654:        LDA $70000F               ;
CODE_00C658:        BEQ CODE_00C664           ;
CODE_00C65A:        LDA $075F                 ;
CODE_00C65D:        CMP #$08                  ;
CODE_00C65F:        BCC CODE_00C67F           ;
CODE_00C661:        JMP CODE_00C67F           ;

CODE_00C664:        LDA $075F                 ;
CODE_00C667:        PHA                       ;
CODE_00C668:        LDA $0E24                 ;
CODE_00C66B:        PHA                       ;
CODE_00C66C:        LDA $07FC                 ;
CODE_00C66F:        BNE CODE_00C677           ;
CODE_00C671:        STZ $0E24                 ;
CODE_00C674:        STZ $075F                 ;
CODE_00C677:        PLA                       ;
CODE_00C678:        STA $0E24                 ;
CODE_00C67B:        PLA                       ;
CODE_00C67C:        STA $075F                 ;
CODE_00C67F:        LDA #$01                  ;
CODE_00C681:        STA $0F82                 ;
CODE_00C684:        STZ $0F83                 ;
CODE_00C687:        STZ $0717                 ;
CODE_00C68A:        RTL                       ;

CODE_00C68B:        LDA $70000F               ;
CODE_00C68F:        BEQ CODE_00C694           ;
CODE_00C691:        JMP CODE_00C7BF           ;

CODE_00C694:        PHB                       ;
CODE_00C695:        PHK                       ;
CODE_00C696:        PLB                       ;
CODE_00C697:        JSL CODE_0E81F6           ;
CODE_00C69B:        LDX $0F80                 ;
CODE_00C69E:        LDA $0F81                 ;
CODE_00C6A1:        CMP DATA_00CA5D,x               ;
CODE_00C6A4:        BCC CODE_00C6BD           ;
CODE_00C6A6:        STZ $0F81                 ;
CODE_00C6A9:        INC $0F80                 ;
CODE_00C6AC:        LDA $0F80                 ;
CODE_00C6AF:        CMP #$08                  ;
CODE_00C6B1:        BCC CODE_00C6BD           ;
CODE_00C6B3:        BNE CODE_00C6B8           ;
CODE_00C6B5:        STZ $0F89                 ;
CODE_00C6B8:        LDA #$08                  ;
CODE_00C6BA:        STA $0F80                 ;
CODE_00C6BD:        INC $0F81                 ;
CODE_00C6C0:        LDA #$00                  ;
CODE_00C6C2:        XBA                       ;
CODE_00C6C3:        LDA $0F80                 ;
CODE_00C6C6:        ASL A                     ;
CODE_00C6C7:        REP #$10                  ;
CODE_00C6C9:        TAY                       ;
CODE_00C6CA:        LDX DATA_00CAB4,y               ;
CODE_00C6CD:        STX $ED                   ;
CODE_00C6CF:        LDX DATA_00CA80,y               ;
CODE_00C6D2:        LDY #$0004                ;
CODE_00C6D5:        LDA DATA_00CAFA,x               ;
CODE_00C6D8:        CMP #$FF                  ;
CODE_00C6DA:        BEQ CODE_00C715           ;
CODE_00C6DC:        CLC                       ;
CODE_00C6DD:        ADC #$80                  ;
CODE_00C6DF:        STA $0801,y               ;
CODE_00C6E2:        INX                       ;
CODE_00C6E3:        LDA DATA_00CAFA,x               ;
CODE_00C6E6:        CLC                       ;
CODE_00C6E7:        ADC #$C0                  ;
CODE_00C6E9:        STA $0800,y               ;
CODE_00C6EC:        INX                       ;
CODE_00C6ED:        LDA DATA_00CAFA,x               ;
CODE_00C6F0:        STA $0802,y               ;
CODE_00C6F3:        INX                       ;
CODE_00C6F4:        STZ $00                   ;
CODE_00C6F6:        CMP #$80                  ;
CODE_00C6F8:        BCS CODE_00C6FF           ;
CODE_00C6FA:        LDA $0753                 ;
CODE_00C6FD:        STA $00                   ;
CODE_00C6FF:        LDA DATA_00CAFA,x               ;
CODE_00C702:        ORA $00                   ;
CODE_00C704:        ORA #$20                  ;
CODE_00C706:        STA $0803,y               ;
CODE_00C709:        INX                       ;
CODE_00C70A:        LDA #$02                  ;
CODE_00C70C:        STA $0C00,y               ;
CODE_00C70F:        INY                       ;
CODE_00C710:        INY                       ;
CODE_00C711:        INY                       ;
CODE_00C712:        INY                       ;
CODE_00C713:        BRA CODE_00C6D5           ;

CODE_00C715:        LDX $ED                   ;
CODE_00C717:        LDA DATA_00CAFA,x               ;
CODE_00C71A:        CMP #$FF                  ;
CODE_00C71C:        BEQ CODE_00C764           ;
CODE_00C71E:        CLC                       ;
CODE_00C71F:        ADC #$80                  ;
CODE_00C721:        STA $0801,y               ;
CODE_00C724:        INX                       ;
CODE_00C725:        LDA DATA_00CAFA,x               ;
CODE_00C728:        CLC                       ;
CODE_00C729:        ADC #$C0                  ;
CODE_00C72B:        CLC                       ;
CODE_00C72C:        ADC $0753                 ;
CODE_00C72F:        ADC $0753                 ;
CODE_00C732:        ADC $0753                 ;
CODE_00C735:        ADC $0753                 ;
CODE_00C738:        STA $0800,y               ;
CODE_00C73B:        INX                       ;
CODE_00C73C:        LDA DATA_00CAFA,x               ;
CODE_00C73F:        STA $0802,y               ;
CODE_00C742:        INX                       ;
CODE_00C743:        STZ $00                   ;
CODE_00C745:        CMP #$80                  ;
CODE_00C747:        BCS CODE_00C74E           ;
CODE_00C749:        LDA $0753                 ;
CODE_00C74C:        STA $00                   ;
CODE_00C74E:        LDA DATA_00CAFA,x               ;
CODE_00C751:        ORA $00                   ;
CODE_00C753:        ORA #$20                  ;
CODE_00C755:        STA $0803,y               ;
CODE_00C758:        INX                       ;
CODE_00C759:        LDA #$02                  ;
CODE_00C75B:        STA $0C00,y               ;
CODE_00C75E:        INY                       ;
CODE_00C75F:        INY                       ;
CODE_00C760:        INY                       ;
CODE_00C761:        INY                       ;
CODE_00C762:        BRA CODE_00C717           ;

CODE_00C764:        LDA $0F80                 ;
CODE_00C767:        CMP #$08                  ;
CODE_00C769:        BNE CODE_00C7B8           ;
CODE_00C76B:        SEP #$10                  ;
CODE_00C76D:        JSR CODE_00E543           ;
CODE_00C770:        LDA $0F89                 ;
CODE_00C773:        LSR A                     ;
CODE_00C774:        LSR A                     ;
CODE_00C775:        LSR A                     ;
CODE_00C776:        AND #$03                  ;
CODE_00C778:        TAX                       ;
CODE_00C779:        LDA.l DATA_00CA59,x             ;
CODE_00C77D:        CLC                       ;
CODE_00C77E:        ADC #$B0                  ;
CODE_00C780:        STA $0800                 ;
CODE_00C783:        LDA $0F89                 ;
CODE_00C786:        LSR A                     ;
CODE_00C787:        LSR A                     ;
CODE_00C788:        STA $00                   ;
CODE_00C78A:        LDA #$60                  ;
CODE_00C78C:        SEC                       ;
CODE_00C78D:        SBC $00                   ;
CODE_00C78F:        STA $0801                 ;
CODE_00C792:        LDA $0F89                 ;
CODE_00C795:        LSR A                     ;
CODE_00C796:        LSR A                     ;
CODE_00C797:        LSR A                     ;
CODE_00C798:        LSR A                     ;
CODE_00C799:        LSR A                     ;
CODE_00C79A:        AND #$03                  ;
CODE_00C79C:        TAX                       ;
CODE_00C79D:        LDA.l DATA_00CA55,x             ;
CODE_00C7A1:        STA $0802                 ;
CODE_00C7A4:        LDA #$26                  ;
CODE_00C7A6:        STA $0803                 ;
CODE_00C7A9:        LDA #$00                  ;
CODE_00C7AB:        STA $0C00                 ;
CODE_00C7AE:        INC $0F89                 ;
CODE_00C7B1:        CPX #$03                  ;
CODE_00C7B3:        BNE CODE_00C7B8           ;
CODE_00C7B5:        STZ $0F89                 ;
CODE_00C7B8:        SEP #$10                  ;
CODE_00C7BA:        JSR CODE_00CA21           ;
CODE_00C7BD:        PLB                       ;
CODE_00C7BE:        RTL                       ;

CODE_00C7BF:        LDA $075F                 ;
CODE_00C7C2:        CMP #$08                  ;
CODE_00C7C4:        BCC CODE_00C7C9           ;
CODE_00C7C6:        JMP CODE_00C8F6           ;

CODE_00C7C9:        PHB                       ;
CODE_00C7CA:        PHK                       ;
CODE_00C7CB:        PLB                       ;
CODE_00C7CC:        JSL CODE_0E81F6           ;
CODE_00C7D0:        LDX $0F80                 ;
CODE_00C7D3:        LDA $0F81                 ;
CODE_00C7D6:        CMP.w DATA_00CA66,x               ;
CODE_00C7D9:        BCC CODE_00C7F4           ;
CODE_00C7DB:        STZ $0F81                 ;
CODE_00C7DE:        INC $0F80                 ;
CODE_00C7E1:        LDA $0F80                 ;
CODE_00C7E4:        CMP #$05                  ;
CODE_00C7E6:        BNE CODE_00C7EB           ;
CODE_00C7E8:        STZ $0F89                 ;
CODE_00C7EB:        CMP #$0F                  ;
CODE_00C7ED:        BCC CODE_00C7F4           ;
CODE_00C7EF:        LDA #$06                  ;
CODE_00C7F1:        STA $0F80                 ;
CODE_00C7F4:        INC $0F81                 ;
CODE_00C7F7:        LDA #$00                  ;
CODE_00C7F9:        XBA                       ;
CODE_00C7FA:        LDA $0F80                 ;
CODE_00C7FD:        ASL A                     ;
CODE_00C7FE:        REP #$10                  ;
CODE_00C800:        TAY                       ;
CODE_00C801:        LDX DATA_00CAC6,y               ;
CODE_00C804:        STX $ED                   ;
CODE_00C806:        LDX DATA_00CA80,y               ;
CODE_00C809:        LDY #$0004                ;
CODE_00C80C:        LDA DATA_00CAFA,x               ;
CODE_00C80F:        CMP #$FF                  ;
CODE_00C811:        BEQ CODE_00C84C           ;
CODE_00C813:        CLC                       ;
CODE_00C814:        ADC #$80                  ;
CODE_00C816:        STA $0801,y               ;
CODE_00C819:        INX                       ;
CODE_00C81A:        LDA DATA_00CAFA,x               ;
CODE_00C81D:        CLC                       ;
CODE_00C81E:        ADC #$C0                  ;
CODE_00C820:        STA $0800,y               ;
CODE_00C823:        INX                       ;
CODE_00C824:        LDA DATA_00CAFA,x               ;
CODE_00C827:        STA $0802,y               ;
CODE_00C82A:        INX                       ;
CODE_00C82B:        STZ $00                   ;
CODE_00C82D:        CMP #$80                  ;
CODE_00C82F:        BCS CODE_00C836           ;
CODE_00C831:        LDA $0753                 ;
CODE_00C834:        STA $00                   ;
CODE_00C836:        LDA DATA_00CAFA,x               ;
CODE_00C839:        ORA $00                   ;
CODE_00C83B:        ORA #$20                  ;
CODE_00C83D:        STA $0803,y               ;
CODE_00C840:        INX                       ;
CODE_00C841:        LDA #$02                  ;
CODE_00C843:        STA $0C00,y               ;
CODE_00C846:        INY                       ;
CODE_00C847:        INY                       ;
CODE_00C848:        INY                       ;
CODE_00C849:        INY                       ;
CODE_00C84A:        BRA CODE_00C80C           ;

CODE_00C84C:        LDX $ED                   ;
CODE_00C84E:        LDA DATA_00CAFA,x               ;
CODE_00C851:        CMP #$FF                  ;
CODE_00C853:        BEQ CODE_00C89B           ;
CODE_00C855:        CLC                       ;
CODE_00C856:        ADC #$80                  ;
CODE_00C858:        STA $0801,y               ;
CODE_00C85B:        INX                       ;
CODE_00C85C:        LDA DATA_00CAFA,x               ;
CODE_00C85F:        CLC                       ;
CODE_00C860:        ADC #$C0                  ;
CODE_00C862:        CLC                       ;
CODE_00C863:        ADC $0753                 ;
CODE_00C866:        ADC $0753                 ;
CODE_00C869:        ADC $0753                 ;
CODE_00C86C:        ADC $0753                 ;
CODE_00C86F:        STA $0800,y               ;
CODE_00C872:        INX                       ;
CODE_00C873:        LDA DATA_00CAFA,x               ;
CODE_00C876:        STA $0802,y               ;
CODE_00C879:        INX                       ;
CODE_00C87A:        STZ $00                   ;
CODE_00C87C:        CMP #$80                  ;
CODE_00C87E:        BCS CODE_00C885           ;
CODE_00C880:        LDA $0753                 ;
CODE_00C883:        STA $00                   ;
CODE_00C885:        LDA DATA_00CAFA,x               ;
CODE_00C888:        ORA $00                   ;
CODE_00C88A:        ORA #$20                  ;
CODE_00C88C:        STA $0803,y               ;
CODE_00C88F:        INX                       ;
CODE_00C890:        LDA #$02                  ;
CODE_00C892:        STA $0C00,y               ;
CODE_00C895:        INY                       ;
CODE_00C896:        INY                       ;
CODE_00C897:        INY                       ;
CODE_00C898:        INY                       ;
CODE_00C899:        BRA CODE_00C84E           ;

CODE_00C89B:        LDA $0F80                 ;
CODE_00C89E:        CMP #$06                  ;
CODE_00C8A0:        BCC CODE_00C8EF           ;
CODE_00C8A2:        SEP #$10                  ;
CODE_00C8A4:        JSR CODE_00E543           ;
CODE_00C8A7:        LDA $0F89                 ;
CODE_00C8AA:        LSR A                     ;
CODE_00C8AB:        LSR A                     ;
CODE_00C8AC:        LSR A                     ;
CODE_00C8AD:        AND #$03                  ;
CODE_00C8AF:        TAX                       ;
CODE_00C8B0:        LDA.l DATA_00CA59,x             ;
CODE_00C8B4:        CLC                       ;
CODE_00C8B5:        ADC #$B0                  ;
CODE_00C8B7:        STA $0800                 ;
CODE_00C8BA:        LDA $0F89                 ;
CODE_00C8BD:        LSR A                     ;
CODE_00C8BE:        LSR A                     ;
CODE_00C8BF:        STA $00                   ;
CODE_00C8C1:        LDA #$60                  ;
CODE_00C8C3:        SEC                       ;
CODE_00C8C4:        SBC $00                   ;
CODE_00C8C6:        STA $0801                 ;
CODE_00C8C9:        LDA $0F89                 ;
CODE_00C8CC:        LSR A                     ;
CODE_00C8CD:        LSR A                     ;
CODE_00C8CE:        LSR A                     ;
CODE_00C8CF:        LSR A                     ;
CODE_00C8D0:        LSR A                     ;
CODE_00C8D1:        AND #$03                  ;
CODE_00C8D3:        TAX                       ;
CODE_00C8D4:        LDA.l DATA_00CA55,x             ;
CODE_00C8D8:        STA $0802                 ;
CODE_00C8DB:        LDA #$26                  ;
CODE_00C8DD:        STA $0803                 ;
CODE_00C8E0:        LDA #$00                  ;
CODE_00C8E2:        STA $0C00                 ;
CODE_00C8E5:        INC $0F89                 ;
CODE_00C8E8:        CPX #$03                  ;
CODE_00C8EA:        BNE CODE_00C8EF           ;
CODE_00C8EC:        STZ $0F89                 ;
CODE_00C8EF:        SEP #$10                  ;
CODE_00C8F1:        JSR CODE_00CA21           ;
CODE_00C8F4:        PLB                       ;
CODE_00C8F5:        RTL                       ;

CODE_00C8F6:        PHB                       ;
CODE_00C8F7:        PHK                       ;
CODE_00C8F8:        PLB                       ;
CODE_00C8F9:        JSL CODE_0E81F6           ;
CODE_00C8FD:        LDX $0F80                 ;
CODE_00C900:        LDA $0F81                 ;
CODE_00C903:        CMP.w DATA_00CA76,x               ;
CODE_00C906:        BCC CODE_00C91F           ;
CODE_00C908:        STZ $0F81                 ;
CODE_00C90B:        INC $0F80                 ;
CODE_00C90E:        LDA $0F80                 ;
CODE_00C911:        CMP #$09                  ;
CODE_00C913:        BCC CODE_00C91F           ;
CODE_00C915:        BNE CODE_00C91A           ;
CODE_00C917:        STZ $0F89                 ;
CODE_00C91A:        LDA #$09                  ;
CODE_00C91C:        STA $0F80                 ;
CODE_00C91F:        INC $0F81                 ;
CODE_00C922:        LDA #$00                  ;
CODE_00C924:        XBA                       ;
CODE_00C925:        LDA $0F80                 ;
CODE_00C928:        ASL A                     ;
CODE_00C929:        REP #$10                  ;
CODE_00C92B:        TAY                       ;
CODE_00C92C:        LDX DATA_00CAE6,y               ;
CODE_00C92F:        STX $ED                   ;
CODE_00C931:        LDX DATA_00CAA0,y               ;
CODE_00C934:        LDY #$0004                ;
CODE_00C937:        LDA DATA_00CAFA,x               ;
CODE_00C93A:        CMP #$FF                  ;
CODE_00C93C:        BEQ CODE_00C977           ;
CODE_00C93E:        CLC                       ;
CODE_00C93F:        ADC #$80                  ;
CODE_00C941:        STA $0801,y               ;
CODE_00C944:        INX                       ;
CODE_00C945:        LDA DATA_00CAFA,x               ;
CODE_00C948:        CLC                       ;
CODE_00C949:        ADC #$C0                  ;
CODE_00C94B:        STA $0800,y               ;
CODE_00C94E:        INX                       ;
CODE_00C94F:        LDA DATA_00CAFA,x               ;
CODE_00C952:        STA $0802,y               ;
CODE_00C955:        INX                       ;
CODE_00C956:        STZ $00                   ;
CODE_00C958:        CMP #$80                  ;
CODE_00C95A:        BCS CODE_00C961           ;
CODE_00C95C:        LDA $0753                 ;
CODE_00C95F:        STA $00                   ;
CODE_00C961:        LDA DATA_00CAFA,x               ;
CODE_00C964:        ORA $00                   ;
CODE_00C966:        ORA #$20                  ;
CODE_00C968:        STA $0803,y               ;
CODE_00C96B:        INX                       ;
CODE_00C96C:        LDA #$02                  ;
CODE_00C96E:        STA $0C00,y               ;
CODE_00C971:        INY                       ;
CODE_00C972:        INY                       ;
CODE_00C973:        INY                       ;
CODE_00C974:        INY                       ;
CODE_00C975:        BRA CODE_00C937           ;

CODE_00C977:        LDX $ED                   ;
CODE_00C979:        LDA DATA_00CAFA,x               ;
CODE_00C97C:        CMP #$FF                  ;
CODE_00C97E:        BEQ CODE_00C9C6           ;
CODE_00C980:        CLC                       ;
CODE_00C981:        ADC #$80                  ;
CODE_00C983:        STA $0801,y               ;
CODE_00C986:        INX                       ;
CODE_00C987:        LDA DATA_00CAFA,x               ;
CODE_00C98A:        CLC                       ;
CODE_00C98B:        ADC #$C0                  ;
CODE_00C98D:        CLC                       ;
CODE_00C98E:        ADC $0753                 ;
CODE_00C991:        ADC $0753                 ;
CODE_00C994:        ADC $0753                 ;
CODE_00C997:        ADC $0753                 ;
CODE_00C99A:        STA $0800,y               ;
CODE_00C99D:        INX                       ;
CODE_00C99E:        LDA DATA_00CAFA,x               ;
CODE_00C9A1:        STA $0802,y               ;
CODE_00C9A4:        INX                       ;
CODE_00C9A5:        STZ $00                   ;
CODE_00C9A7:        CMP #$80                  ;
CODE_00C9A9:        BCS CODE_00C9B0           ;
CODE_00C9AB:        LDA $0753                 ;
CODE_00C9AE:        STA $00                   ;
CODE_00C9B0:        LDA DATA_00CAFA,x               ;
CODE_00C9B3:        ORA $00                   ;
CODE_00C9B5:        ORA #$20                  ;
CODE_00C9B7:        STA $0803,y               ;
CODE_00C9BA:        INX                       ;
CODE_00C9BB:        LDA #$02                  ;
CODE_00C9BD:        STA $0C00,y               ;
CODE_00C9C0:        INY                       ;
CODE_00C9C1:        INY                       ;
CODE_00C9C2:        INY                       ;
CODE_00C9C3:        INY                       ;
CODE_00C9C4:        BRA CODE_00C979           ;

CODE_00C9C6:        LDA $0F80                 ;
CODE_00C9C9:        CMP #$09                  ;
CODE_00C9CB:        BNE CODE_00CA1A           ;
CODE_00C9CD:        SEP #$10                  ;
CODE_00C9CF:        JSR CODE_00E543           ;
CODE_00C9D2:        LDA $0F89                 ;
CODE_00C9D5:        LSR A                     ;
CODE_00C9D6:        LSR A                     ;
CODE_00C9D7:        LSR A                     ;
CODE_00C9D8:        AND #$03                  ;
CODE_00C9DA:        TAX                       ;
CODE_00C9DB:        LDA.l DATA_00CA59,x             ;
CODE_00C9DF:        CLC                       ;
CODE_00C9E0:        ADC #$B0                  ;
CODE_00C9E2:        STA $0800                 ;
CODE_00C9E5:        LDA $0F89                 ;
CODE_00C9E8:        LSR A                     ;
CODE_00C9E9:        LSR A                     ;
CODE_00C9EA:        STA $00                   ;
CODE_00C9EC:        LDA #$60                  ;
CODE_00C9EE:        SEC                       ;
CODE_00C9EF:        SBC $00                   ;
CODE_00C9F1:        STA $0801                 ;
CODE_00C9F4:        LDA $0F89                 ;
CODE_00C9F7:        LSR A                     ;
CODE_00C9F8:        LSR A                     ;
CODE_00C9F9:        LSR A                     ;
CODE_00C9FA:        LSR A                     ;
CODE_00C9FB:        LSR A                     ;
CODE_00C9FC:        AND #$03                  ;
CODE_00C9FE:        TAX                       ;
CODE_00C9FF:        LDA.l DATA_00CA55,x             ;
CODE_00CA03:        STA $0802                 ;
CODE_00CA06:        LDA #$26                  ;
CODE_00CA08:        STA $0803                 ;
CODE_00CA0B:        LDA #$00                  ;
CODE_00CA0D:        STA $0C00                 ;
CODE_00CA10:        INC $0F89                 ;
CODE_00CA13:        CPX #$03                  ;
CODE_00CA15:        BNE CODE_00CA1A           ;
CODE_00CA17:        STZ $0F89                 ;
CODE_00CA1A:        SEP #$10                  ;
CODE_00CA1C:        JSR CODE_00CA21           ;
CODE_00CA1F:        PLB                       ;
CODE_00CA20:        RTL                       ;

CODE_00CA21:        LDA $0753                 ;
CODE_00CA24:        BEQ CODE_00CA54           ;
CODE_00CA26:        LDA $0806                 ;
CODE_00CA29:        CMP #$EE                  ;
CODE_00CA2B:        BNE CODE_00CA54           ;
CODE_00CA2D:        LDA $0804                 ;
CODE_00CA30:        DEC A                     ;
CODE_00CA31:        DEC A                     ;
CODE_00CA32:        STA $0804                 ;
CODE_00CA35:        STA $0808                 ;
CODE_00CA38:        LDA #$82                  ;
CODE_00CA3A:        STA $0806                 ;
CODE_00CA3D:        INC A                     ;
CODE_00CA3E:        STA $080A                 ;
CODE_00CA41:        LDA $0804                 ;
CODE_00CA44:        CLC                       ;
CODE_00CA45:        ADC #$08                  ;
CODE_00CA47:        STA $0808                 ;
CODE_00CA4A:        LDA #$85                  ;
CODE_00CA4C:        STA $080E                 ;
CODE_00CA4F:        LDA #$89                  ;
CODE_00CA51:        STA $0812                 ;
CODE_00CA54:        RTS                       ;

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

CODE_00D4CA:        LDA #$1E                  ;
CODE_00D4CC:        STA $0287                 ;
CODE_00D4CF:        REP #$20                  ;
CODE_00D4D1:        LDA #$0800                ;
CODE_00D4D4:        STA $0288                 ;
CODE_00D4D7:        LDA #$7800                ;
CODE_00D4DA:        STA $028A                 ;
CODE_00D4DD:        LDA $075F                 ;
CODE_00D4E0:        AND #$00FF                ;
CODE_00D4E3:        CMP #$0007                ;
CODE_00D4E6:        BNE CODE_00D4ED           ;
CODE_00D4E8:        LDA #$D000                ;
CODE_00D4EB:        BRA CODE_00D4F0           ;

CODE_00D4ED:        LDA #$C000                ;
CODE_00D4F0:        STA $0285                 ;
CODE_00D4F3:        SEP #$20                  ;
CODE_00D4F5:        STZ $0F7D                 ;
CODE_00D4F8:        STZ $0F7E                 ;
CODE_00D4FB:        STZ $0F7F                 ;
CODE_00D4FE:        STZ $0B9C                 ;
CODE_00D501:        LDA #$02                  ;
CODE_00D503:        STA $0B76                 ;
CODE_00D506:        RTL                       ;

CODE_00D507:        PHX                       ;
CODE_00D508:        LDA #$1E                  ;
CODE_00D50A:        STA $0287                 ;
CODE_00D50D:        REP #$20                  ;
CODE_00D50F:        LDA #$0800                ;
CODE_00D512:        STA $0288                 ;
CODE_00D515:        LDA #$7C00                ;
CODE_00D518:        STA $028A                 ;
CODE_00D51B:        LDA $075F                 ;
CODE_00D51E:        AND #$00FF                ;
CODE_00D521:        ASL A                     ;
CODE_00D522:        TAX                       ;
CODE_00D523:        LDA.l DATA_00D55A,x             ;
CODE_00D527:        STA $0285                 ;
CODE_00D52A:        SEP #$20                  ;
CODE_00D52C:        PLX                       ;
CODE_00D52D:        RTL                       ;

CODE_00D52E:        LDA #$80                  ;
CODE_00D530:        STA $2115                 ;
CODE_00D533:        REP #$20                  ;
CODE_00D535:        LDA #$6000                ;
CODE_00D538:        STA $2116                 ;
CODE_00D53B:        LDA #$1801                ;
CODE_00D53E:        STA $4300                 ;
CODE_00D541:        LDA.w #DATA_078000                ;
CODE_00D544:        STA $4302                 ;
CODE_00D547:        LDX.b #DATA_078000>>16                  ;
CODE_00D549:        STX $4304                 ;
CODE_00D54C:        LDA #$4000                ;
CODE_00D54F:        STA $4305                 ;
CODE_00D552:        LDX #$01                  ;
CODE_00D554:        STX $420B                 ;
CODE_00D557:        SEP #$20                  ;
CODE_00D559:        RTL                       ;

DATA_00D55A:        dw $C800,$C800,$C800,$C800
                    dw $E800,$E000,$E000,$D000
                    dw $C800,$E800,$E000,$E000
                    dw $D000,$D000,$D000,$D000

CODE_00D57A:        LDA $0F7E                 ;
CODE_00D57D:        BEQ CODE_00D582           ;
CODE_00D57F:        JMP CODE_00D626           ;

CODE_00D582:        LDA $09                   ;
CODE_00D584:        AND #$07                  ;
CODE_00D586:        BEQ CODE_00D58D           ;
CODE_00D588:        LDA $0F7D                 ;
CODE_00D58B:        BRA CODE_00D5AF           ;

CODE_00D58D:        INC $0F7D                 ;
CODE_00D590:        LDA $0F7D                 ;
CODE_00D593:        CMP #$03                  ;
CODE_00D595:        BCC CODE_00D5AF           ;
CODE_00D597:        LDA $07B9                 ;
CODE_00D59A:        EOR $07BA                 ;
CODE_00D59D:        AND #$01                  ;
CODE_00D59F:        BNE CODE_00D5AA           ;
CODE_00D5A1:        LDA #$03                  ;
CODE_00D5A3:        STA $0F7D                 ;
CODE_00D5A6:        LDA #$01                  ;
CODE_00D5A8:        BRA CODE_00D5AF           ;

CODE_00D5AA:        LDA #$00                  ;
CODE_00D5AC:        STA $0F7D                 ;
CODE_00D5AF:        STA $00                   ;
CODE_00D5B1:        LDA $79                   ;
CODE_00D5B3:        XBA                       ;
CODE_00D5B4:        LDA $021A                 ;
CODE_00D5B7:        LDY #$00                  ;
CODE_00D5B9:        JSR CODE_00E4FD           ;
CODE_00D5BC:        LDA $79                   ;
CODE_00D5BE:        XBA                       ;
CODE_00D5BF:        LDA $021A                 ;
CODE_00D5C2:        REP #$20                  ;
CODE_00D5C4:        CLC                       ;
CODE_00D5C5:        ADC #$0008                ;
CODE_00D5C8:        SEP #$20                  ;
CODE_00D5CA:        LDY #$04                  ;
CODE_00D5CC:        JSR CODE_00E4FD           ;
CODE_00D5CF:        LDA $00                   ;
CODE_00D5D1:        CMP #$02                  ;
CODE_00D5D3:        BEQ CODE_00D602           ;
CODE_00D5D5:        CMP #$00                  ;
CODE_00D5D7:        BNE CODE_00D5DD           ;
CODE_00D5D9:        LDA #$83                  ;
CODE_00D5DB:        BRA CODE_00D5DF           ;

CODE_00D5DD:        LDA #$80                  ;
CODE_00D5DF:        STA $0902                 ;
CODE_00D5E2:        INC A                     ;
CODE_00D5E3:        STA $0906                 ;
CODE_00D5E6:        CLC                       ;
CODE_00D5E7:        ADC #$1F                  ;
CODE_00D5E9:        STA $090A                 ;
CODE_00D5EC:        INC A                     ;
CODE_00D5ED:        STA $090E                 ;
CODE_00D5F0:        LDA #$B0                  ;
CODE_00D5F2:        STA $0901                 ;
CODE_00D5F5:        STA $0905                 ;
CODE_00D5F8:        LDA #$C0                  ;
CODE_00D5FA:        STA $0909                 ;
CODE_00D5FD:        STA $090D                 ;
CODE_00D600:        BRA CODE_00D625           ;

CODE_00D602:        LDA #$86                  ;
CODE_00D604:        STA $0902                 ;
CODE_00D607:        INC A                     ;
CODE_00D608:        STA $0906                 ;
CODE_00D60B:        CLC                       ;
CODE_00D60C:        ADC #$0F                  ;
CODE_00D60E:        STA $090A                 ;
CODE_00D611:        INC A                     ;
CODE_00D612:        STA $090E                 ;
CODE_00D615:        LDA #$B8                  ;
CODE_00D617:        STA $0901                 ;
CODE_00D61A:        STA $0905                 ;
CODE_00D61D:        LDA #$C0                  ;
CODE_00D61F:        STA $0909                 ;
CODE_00D622:        STA $090D                 ;
CODE_00D625:        RTL                       ;

CODE_00D626:        PHB                       ;
CODE_00D627:        PHK                       ;
CODE_00D628:        PLB                       ;
CODE_00D629:        PHX                       ;
CODE_00D62A:        PHY                       ;
CODE_00D62B:        LDA $075F                 ;
CODE_00D62E:        ASL A                     ;
CODE_00D62F:        TAX                       ;
CODE_00D630:        LDA $0B9C                 ;
CODE_00D633:        BNE CODE_00D638           ;
CODE_00D635:        JSR CODE_00E3A4           ;
CODE_00D638:        LDA PNTR_00D645,x               ;
CODE_00D63B:        STA $00                   ;
CODE_00D63D:        LDA PNTR_00D645+1,x               ;
CODE_00D640:        STA $01                   ;
CODE_00D642:        JMP ($0000)               ;

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

CODE_00D661:        JSR CODE_00E27B           ;
CODE_00D664:        LDA $0F7F                 ;
CODE_00D667:        BNE CODE_00D66C           ;
CODE_00D669:        JMP CODE_00E1D5           ;

CODE_00D66C:        CMP #$03                  ;
CODE_00D66E:        BNE CODE_00D6BB           ;
CODE_00D670:        LDA $0B9F                 ;
CODE_00D673:        BNE CODE_00D6BB           ;
CODE_00D675:        JSR CODE_00E566           ;
CODE_00D678:        LDA #$20                  ;
CODE_00D67A:        STA $00                   ;
CODE_00D67C:        LDA #$04                  ;
CODE_00D67E:        STA $02                   ;
CODE_00D680:        LDX #$01                  ;
CODE_00D682:        LDA #$00                  ;
CODE_00D684:        JSL CODE_0DBF7A           ;
CODE_00D688:        LDA $0238                 ;
CODE_00D68B:        CMP #$B0                  ;
CODE_00D68D:        BCS CODE_00D697           ;
CODE_00D68F:        LDA #$01                  ;
CODE_00D691:        STA $0B9D                 ;
CODE_00D694:        LDA $0238                 ;
CODE_00D697:        CMP #$B8                  ;
CODE_00D699:        BCC CODE_00D6BB           ;
CODE_00D69B:        LDA #$B8                  ;
CODE_00D69D:        STA $0238                 ;
CODE_00D6A0:        LDA #$FE                  ;
CODE_00D6A2:        STA $00A1                 ;
CODE_00D6A5:        STZ $043D                 ;
CODE_00D6A8:        STZ $041D                 ;
CODE_00D6AB:        LDA #$00                  ;
CODE_00D6AD:        STA $0B9E                 ;
CODE_00D6B0:        LDA #$18                  ;
CODE_00D6B2:        STA $0B9F                 ;
CODE_00D6B5:        STZ $0BA4                 ;
CODE_00D6B8:        JSR CODE_00E529           ;
CODE_00D6BB:        LDA $0B9F                 ;
CODE_00D6BE:        BNE CODE_00D6C7           ;
CODE_00D6C0:        LDA #$01                  ;
CODE_00D6C2:        STA $0B9E                 ;
CODE_00D6C5:        BRA CODE_00D6CA           ;

CODE_00D6C7:        DEC $0B9F                 ;
CODE_00D6CA:        LDA $03AE                 ;
CODE_00D6CD:        STA $00                   ;
CODE_00D6CF:        LDA $0238                 ;
CODE_00D6D2:        STA $01                   ;
CODE_00D6D4:        LDY $0B9D                 ;
CODE_00D6D7:        LDA DATA_00D65F,y               ;
CODE_00D6DA:        TAY                       ;
CODE_00D6DB:        LDA $0B9E                 ;
CODE_00D6DE:        JSR CODE_00E1FC           ;
CODE_00D6E1:        JMP CODE_00E1D5           ;

CODE_00D6E4:        JSR CODE_00E27B           ;
CODE_00D6E7:        LDA $0F7F                 ;
CODE_00D6EA:        BNE CODE_00D6EF           ;
CODE_00D6EC:        JMP CODE_00E1D5           ;

CODE_00D6EF:        CMP #$03                  ;
CODE_00D6F1:        BNE CODE_00D74F           ;
CODE_00D6F3:        LDA $0B9F                 ;
CODE_00D6F6:        BNE CODE_00D74C           ;
CODE_00D6F8:        LDA $0B9C                 ;
CODE_00D6FB:        CMP #$02                  ;
CODE_00D6FD:        BNE CODE_00D704           ;
CODE_00D6FF:        STA $0B9E                 ;
CODE_00D702:        BRA CODE_00D74F           ;

CODE_00D704:        JSR CODE_00E566           ;
CODE_00D707:        LDA #$01                  ;
CODE_00D709:        STA $0B9E                 ;
CODE_00D70C:        LDA #$20                  ;
CODE_00D70E:        STA $00                   ;
CODE_00D710:        LDA #$04                  ;
CODE_00D712:        STA $02                   ;
CODE_00D714:        LDX #$01                  ;
CODE_00D716:        LDA #$00                  ;
CODE_00D718:        JSL CODE_0DBF7A           ;
CODE_00D71C:        LDA $0238                 ;
CODE_00D71F:        CMP #$B0                  ;
CODE_00D721:        BCS CODE_00D72B           ;
CODE_00D723:        LDA #$01                  ;
CODE_00D725:        STA $0B9D                 ;
CODE_00D728:        LDA $0238                 ;
CODE_00D72B:        CMP #$B8                  ;
CODE_00D72D:        BCC CODE_00D74F           ;
CODE_00D72F:        LDA #$B8                  ;
CODE_00D731:        STA $0238                 ;
CODE_00D734:        STZ $00A1                 ;
CODE_00D737:        STZ $043D                 ;
CODE_00D73A:        STZ $041D                 ;
CODE_00D73D:        LDA #$28                  ;
CODE_00D73F:        STA $0B9F                 ;
CODE_00D742:        LDA #$02                  ;
CODE_00D744:        STA $0B9C                 ;
CODE_00D747:        LDA #$00                  ;
CODE_00D749:        STA $0B9E                 ;
CODE_00D74C:        DEC $0B9F                 ;
CODE_00D74F:        LDA $03AE                 ;
CODE_00D752:        STA $00                   ;
CODE_00D754:        LDA $0238                 ;
CODE_00D757:        STA $01                   ;
CODE_00D759:        LDY $0B9D                 ;
CODE_00D75C:        LDA DATA_00D65F,y               ;
CODE_00D75F:        TAY                       ;
CODE_00D760:        LDA $0B9E                 ;
CODE_00D763:        JSR CODE_00E1FC           ;
CODE_00D766:        TYA                       ;
CODE_00D767:        CLC                       ;
CODE_00D768:        ADC #$10                  ;
CODE_00D76A:        TAY                       ;
CODE_00D76B:        LDA $03AE                 ;
CODE_00D76E:        CLC                       ;
CODE_00D76F:        ADC #$10                  ;
CODE_00D771:        STA $00                   ;
CODE_00D773:        LDA $0B9E                 ;
CODE_00D776:        CMP #$02                  ;
CODE_00D778:        BNE CODE_00D77F           ;
CODE_00D77A:        JSR CODE_00E529           ;
CODE_00D77D:        LDA #$03                  ;
CODE_00D77F:        JSR CODE_00E1FC           ;
CODE_00D782:        JMP CODE_00E1D5           ;

CODE_00D785:        JSR CODE_00E27B           ;
CODE_00D788:        LDA $0F7F                 ;
CODE_00D78B:        BNE CODE_00D790           ;
CODE_00D78D:        JMP CODE_00E1D5           ;

CODE_00D790:        CMP #$03                  ;
CODE_00D792:        BEQ CODE_00D797           ;
CODE_00D794:        JMP CODE_00D817           ;

CODE_00D797:        LDA $0BA0                 ;
CODE_00D79A:        CMP #$28                  ;
CODE_00D79C:        BCC CODE_00D814           ;
CODE_00D79E:        CMP #$50                  ;
CODE_00D7A0:        BCC CODE_00D7FD           ;
CODE_00D7A2:        CMP #$58                  ;
CODE_00D7A4:        BCC CODE_00D7F7           ;
CODE_00D7A6:        JSR CODE_00E566           ;
CODE_00D7A9:        LDA #$20                  ;
CODE_00D7AB:        STA $00                   ;
CODE_00D7AD:        LDA #$04                  ;
CODE_00D7AF:        STA $02                   ;
CODE_00D7B1:        LDX #$01                  ;
CODE_00D7B3:        LDA #$00                  ;
CODE_00D7B5:        JSL CODE_0DBF7A           ;
CODE_00D7B9:        LDA #$01                  ;
CODE_00D7BB:        STA $0B9E                 ;
CODE_00D7BE:        LDA $0238                 ;
CODE_00D7C1:        CMP #$B0                  ;
CODE_00D7C3:        BCS CODE_00D7CC           ;
CODE_00D7C5:        LDA #$01                  ;
CODE_00D7C7:        STA $0B9D                 ;
CODE_00D7CA:        BRA CODE_00D7E9           ;

CODE_00D7CC:        CMP #$B8                  ;
CODE_00D7CE:        BCC CODE_00D7E9           ;
CODE_00D7D0:        STZ $00A1                 ;
CODE_00D7D3:        STZ $043D                 ;
CODE_00D7D6:        STZ $041D                 ;
CODE_00D7D9:        LDA #$B8                  ;
CODE_00D7DB:        STA $0238                 ;
CODE_00D7DE:        STZ $0B9E                 ;
CODE_00D7E1:        LDA #$01                  ;
CODE_00D7E3:        STA $0B9F                 ;
CODE_00D7E6:        JSR CODE_00E529           ;
CODE_00D7E9:        LDA $0B9F                 ;
CODE_00D7EC:        BNE CODE_00D7F7           ;
CODE_00D7EE:        LDA $09                   ;
CODE_00D7F0:        AND #$01                  ;
CODE_00D7F2:        BNE CODE_00D7F7           ;
CODE_00D7F4:        INC $021D                 ;
CODE_00D7F7:        JSR CODE_00D831           ;
CODE_00D7FA:        JMP CODE_00E1D5           ;

CODE_00D7FD:        LDY #$A0                  ;
CODE_00D7FF:        CMP #$2C                  ;
CODE_00D801:        BCC CODE_00D811           ;
CODE_00D803:        CMP #$30                  ;
CODE_00D805:        BCC CODE_00D80C           ;
CODE_00D807:        JSR CODE_00D891           ;
CODE_00D80A:        BRA CODE_00D814           ;

CODE_00D80C:        JSR CODE_00D8ED           ;
CODE_00D80F:        BRA CODE_00D814           ;

CODE_00D811:        JSR CODE_00D924           ;
CODE_00D814:        INC $0BA0                 ;
CODE_00D817:        LDA $03AE                 ;
CODE_00D81A:        STA $00                   ;
CODE_00D81C:        LDA $0238                 ;
CODE_00D81F:        STA $01                   ;
CODE_00D821:        LDY $0B9D                 ;
CODE_00D824:        LDA DATA_00D65F,y               ;
CODE_00D827:        TAY                       ;
CODE_00D828:        LDA $0B9E                 ;
CODE_00D82B:        JSR CODE_00E1FC           ;
CODE_00D82E:        JMP CODE_00E1D5           ;

CODE_00D831:        LDA $03AE                 ;
CODE_00D834:        STA $00                   ;
CODE_00D836:        LDA $0238                 ;
CODE_00D839:        STA $01                   ;
CODE_00D83B:        LDY $0B9D                 ;
CODE_00D83E:        LDA DATA_00D65F,y               ;
CODE_00D841:        TAY                       ;
CODE_00D842:        LDA $0B9E                 ;
CODE_00D845:        JSR CODE_00E1FC           ;
CODE_00D848:        TYA                       ;
CODE_00D849:        CLC                       ;
CODE_00D84A:        ADC #$10                  ;
CODE_00D84C:        TAY                       ;
CODE_00D84D:        LDA $03AE                 ;
CODE_00D850:        SEC                       ;
CODE_00D851:        SBC $021D                 ;
CODE_00D854:        SEC                       ;
CODE_00D855:        SBC #$07                  ;
CODE_00D857:        STA $00                   ;
CODE_00D859:        LDA $0B9F                 ;
CODE_00D85C:        DEC A                     ;
CODE_00D85D:        BEQ CODE_00D865           ;
CODE_00D85F:        LDA #$04                  ;
CODE_00D861:        CLC                       ;
CODE_00D862:        ADC $0B9E                 ;
CODE_00D865:        JSR CODE_00E1FC           ;
CODE_00D868:        TYA                       ;
CODE_00D869:        CLC                       ;
CODE_00D86A:        ADC #$10                  ;
CODE_00D86C:        TAY                       ;
CODE_00D86D:        LDA $03AE                 ;
CODE_00D870:        CLC                       ;
CODE_00D871:        ADC $021D                 ;
CODE_00D874:        CLC                       ;
CODE_00D875:        ADC #$07                  ;
CODE_00D877:        STA $00                   ;
CODE_00D879:        LDA $0B9F                 ;
CODE_00D87C:        DEC A                     ;
CODE_00D87D:        BEQ CODE_00D885           ;
CODE_00D87F:        LDA #$06                  ;
CODE_00D881:        CLC                       ;
CODE_00D882:        ADC $0B9E                 ;
CODE_00D885:        JSR CODE_00E1FC           ;
CODE_00D888:        LDA $0BA0                 ;
CODE_00D88B:        BMI CODE_00D890           ;
CODE_00D88D:        INC $0BA0                 ;
CODE_00D890:        RTS                       ;

CODE_00D891:        LDA $0238                 ;
CODE_00D894:        INC A                     ;
CODE_00D895:        STA $0905,y               ;
CODE_00D898:        STA $090D,y               ;
CODE_00D89B:        CLC                       ;
CODE_00D89C:        ADC #$07                  ;
CODE_00D89E:        STA $0901,y               ;
CODE_00D8A1:        STA $0909,y               ;
CODE_00D8A4:        LDA $03AE                 ;
CODE_00D8A7:        SEC                       ;
CODE_00D8A8:        SBC #$0D                  ;
CODE_00D8AA:        STA $0904,y               ;
CODE_00D8AD:        DEC A                     ;
CODE_00D8AE:        STA $0900,y               ;
CODE_00D8B1:        LDA $03AE                 ;
CODE_00D8B4:        CLC                       ;
CODE_00D8B5:        ADC #$0D                  ;
CODE_00D8B7:        STA $090C,y               ;
CODE_00D8BA:        INC A                     ;
CODE_00D8BB:        STA $0908,y               ;
CODE_00D8BE:        LDA #$E0                  ;
CODE_00D8C0:        STA $0906,y               ;
CODE_00D8C3:        STA $090E,y               ;
CODE_00D8C6:        LDA #$CE                  ;
CODE_00D8C8:        STA $0902,y               ;
CODE_00D8CB:        STA $090A,y               ;
CODE_00D8CE:        LDA #$2D                  ;
CODE_00D8D0:        STA $090B,y               ;
CODE_00D8D3:        STA $090F,y               ;
CODE_00D8D6:        LDA #$6D                  ;
CODE_00D8D8:        STA $0903,y               ;
CODE_00D8DB:        STA $0907,y               ;
CODE_00D8DE:        LDA #$02                  ;
CODE_00D8E0:        STA $0D00,y               ;
CODE_00D8E3:        STA $0D04,y               ;
CODE_00D8E6:        STA $0D08,y               ;
CODE_00D8E9:        STA $0D0C,y               ;
CODE_00D8EC:        RTS                       ;

CODE_00D8ED:        LDA $03AE                 ;
CODE_00D8F0:        SEC                       ;
CODE_00D8F1:        SBC #$09                  ;
CODE_00D8F3:        STA $0900,y               ;
CODE_00D8F6:        LDA $03AE                 ;
CODE_00D8F9:        CLC                       ;
CODE_00D8FA:        ADC #$09                  ;
CODE_00D8FC:        STA $0904,y               ;
CODE_00D8FF:        LDA $0238                 ;
CODE_00D902:        INC A                     ;
CODE_00D903:        STA $0901,y               ;
CODE_00D906:        STA $0905,y               ;
CODE_00D909:        LDA #$E0                  ;
CODE_00D90B:        STA $0902,y               ;
CODE_00D90E:        STA $0906,y               ;
CODE_00D911:        LDA #$6D                  ;
CODE_00D913:        STA $0903,y               ;
CODE_00D916:        LDA #$2D                  ;
CODE_00D918:        STA $0907,y               ;
CODE_00D91B:        LDA #$02                  ;
CODE_00D91D:        STA $0D00,y               ;
CODE_00D920:        STA $0D04,y               ;
CODE_00D923:        RTS                       ;

CODE_00D924:        LDA $03AE                 ;
CODE_00D927:        SEC                       ;
CODE_00D928:        SBC #$05                  ;
CODE_00D92A:        STA $0900,y               ;
CODE_00D92D:        LDA $03AE                 ;
CODE_00D930:        CLC                       ;
CODE_00D931:        ADC #$05                  ;
CODE_00D933:        STA $0904,y               ;
CODE_00D936:        LDA $0238                 ;
CODE_00D939:        STA $0901,y               ;
CODE_00D93C:        STA $0905,y               ;
CODE_00D93F:        LDA #$E0                  ;
CODE_00D941:        STA $0902,y               ;
CODE_00D944:        STA $0906,y               ;
CODE_00D947:        LDA #$6D                  ;
CODE_00D949:        STA $0903,y               ;
CODE_00D94C:        LDA #$2D                  ;
CODE_00D94E:        STA $0907,y               ;
CODE_00D951:        LDA #$02                  ;
CODE_00D953:        STA $0D00,y               ;
CODE_00D956:        STA $0D04,y               ;
CODE_00D959:        RTS                       ;

CODE_00D95A:        JSR CODE_00E27B           ;
CODE_00D95D:        LDA $0F7F                 ;
CODE_00D960:        BNE CODE_00D965           ;
CODE_00D962:        JMP CODE_00E1D5           ;

CODE_00D965:        INC $0B9F                 ;
CODE_00D968:        LDA $0B9F                 ;
CODE_00D96B:        CMP #$C0                  ;
CODE_00D96D:        BCC CODE_00D987           ;
CODE_00D96F:        LDA #$C0                  ;
CODE_00D971:        STA $0B9F                 ;
CODE_00D974:        LDA #$02                  ;
CODE_00D976:        STA $0B9C                 ;
CODE_00D979:        LDA #$01                  ;
CODE_00D97B:        STA $0BB8                 ;
CODE_00D97E:        STA $0BB9                 ;
CODE_00D981:        STA $0BBA                 ;
CODE_00D984:        STA $0BBB                 ;
CODE_00D987:        STZ $0E67                 ;
CODE_00D98A:        LDA $0BB4                 ;
CODE_00D98D:        BNE CODE_00D9A2           ;
CODE_00D98F:        LDA $0B9C                 ;
CODE_00D992:        CMP #$02                  ;
CODE_00D994:        BEQ CODE_00D99C           ;
CODE_00D996:        JSR CODE_00DAAB           ;
CODE_00D999:        JMP CODE_00E1D5           ;

CODE_00D99C:        JSR CODE_00D9D7           ;
CODE_00D99F:        JMP CODE_00E1D5           ;

CODE_00D9A2:        LDA $0BA1                 ;
CODE_00D9A5:        BEQ CODE_00D9AE           ;
CODE_00D9A7:        DEC $0BA1                 ;
CODE_00D9AA:        LDA #$00                  ;
CODE_00D9AC:        BRA CODE_00D9B3           ;

CODE_00D9AE:        JSR CODE_00E529           ;
CODE_00D9B1:        LDA #$02                  ;
CODE_00D9B3:        STA $0B9E                 ;
CODE_00D9B6:        LDX #$03                  ;
CODE_00D9B8:        LDY #$00                  ;
CODE_00D9BA:        LDA $0BB0,x               ;
CODE_00D9BD:        STA $00                   ;
CODE_00D9BF:        LDA #$B8                  ;
CODE_00D9C1:        STA $01                   ;
CODE_00D9C3:        LDA $0B9E                 ;
CODE_00D9C6:        JSR CODE_00E1FC           ;
CODE_00D9C9:        TYA                       ;
CODE_00D9CA:        CLC                       ;
CODE_00D9CB:        ADC #$10                  ;
CODE_00D9CD:        TAY                       ;
CODE_00D9CE:        STY $0E67                 ;
CODE_00D9D1:        DEX                       ;
CODE_00D9D2:        BPL CODE_00D9BA           ;
CODE_00D9D4:        JMP CODE_00E1D5           ;

CODE_00D9D7:        JSR CODE_00E566           ;
CODE_00D9DA:        LDA #$20                  ;
CODE_00D9DC:        STA $00                   ;
CODE_00D9DE:        LDA #$04                  ;
CODE_00D9E0:        STA $02                   ;
CODE_00D9E2:        LDX #$01                  ;
CODE_00D9E4:        LDA #$00                  ;
CODE_00D9E6:        JSL CODE_0DBF7A           ;
CODE_00D9EA:        LDA $0238                 ;
CODE_00D9ED:        CMP #$B0                  ;
CODE_00D9EF:        BCS CODE_00D9F6           ;
CODE_00D9F1:        LDA #$01                  ;
CODE_00D9F3:        STA $0B9D                 ;
CODE_00D9F6:        LDY $0B9D                 ;
CODE_00D9F9:        LDA DATA_00D65F,y               ;
CODE_00D9FC:        TAY                       ;
CODE_00D9FD:        LDA $03AE                 ;
CODE_00DA00:        STA $00                   ;
CODE_00DA02:        LDA $0238                 ;
CODE_00DA05:        CMP #$B8                  ;
CODE_00DA07:        BCC CODE_00DA0E           ;
CODE_00DA09:        LDA #$B8                  ;
CODE_00DA0B:        STZ $0BB8                 ;
CODE_00DA0E:        STA $01                   ;
CODE_00DA10:        LDA $0BB8                 ;
CODE_00DA13:        JSR CODE_00E1FC           ;
CODE_00DA16:        LDA $0BB1                 ;
CODE_00DA19:        STA $00                   ;
CODE_00DA1B:        LDA $0238                 ;
CODE_00DA1E:        SEC                       ;
CODE_00DA1F:        SBC #$0C                  ;
CODE_00DA21:        CMP #$B8                  ;
CODE_00DA23:        BCC CODE_00DA2C           ;
CODE_00DA25:        LDA #$B8                  ;
CODE_00DA27:        STZ $0BB9                 ;
CODE_00DA2A:        BRA CODE_00DA3A           ;

CODE_00DA2C:        LDA $09                   ;
CODE_00DA2E:        LSR A                     ;
CODE_00DA2F:        BCC CODE_00DA34           ;
CODE_00DA31:        INC $0BB1                 ;
CODE_00DA34:        LDA $0238                 ;
CODE_00DA37:        SEC                       ;
CODE_00DA38:        SBC #$0C                  ;
CODE_00DA3A:        STA $01                   ;
CODE_00DA3C:        TYA                       ;
CODE_00DA3D:        CLC                       ;
CODE_00DA3E:        ADC #$10                  ;
CODE_00DA40:        TAY                       ;
CODE_00DA41:        LDA $0BB9                 ;
CODE_00DA44:        CLC                       ;
CODE_00DA45:        ADC #$06                  ;
CODE_00DA47:        JSR CODE_00E1FC           ;
CODE_00DA4A:        LDA $0BB2                 ;
CODE_00DA4D:        STA $00                   ;
CODE_00DA4F:        LDA $0238                 ;
CODE_00DA52:        SEC                       ;
CODE_00DA53:        SBC #$18                  ;
CODE_00DA55:        CMP #$B8                  ;
CODE_00DA57:        BCC CODE_00DA60           ;
CODE_00DA59:        LDA #$B8                  ;
CODE_00DA5B:        STZ $0BBA                 ;
CODE_00DA5E:        BRA CODE_00DA63           ;

CODE_00DA60:        DEC $0BB2                 ;
CODE_00DA63:        STA $01                   ;
CODE_00DA65:        TYA                       ;
CODE_00DA66:        CLC                       ;
CODE_00DA67:        ADC #$10                  ;
CODE_00DA69:        TAY                       ;
CODE_00DA6A:        LDA $0BBA                 ;
CODE_00DA6D:        CLC                       ;
CODE_00DA6E:        ADC #$04                  ;
CODE_00DA70:        JSR CODE_00E1FC           ;
CODE_00DA73:        LDA $0BB3                 ;
CODE_00DA76:        STA $00                   ;
CODE_00DA78:        LDA $0238                 ;
CODE_00DA7B:        SEC                       ;
CODE_00DA7C:        SBC #$24                  ;
CODE_00DA7E:        CMP #$B8                  ;
CODE_00DA80:        BCC CODE_00DA97           ;
CODE_00DA82:        LDA #$B8                  ;
CODE_00DA84:        STZ $0BBB                 ;
CODE_00DA87:        INC $0BB4                 ;
CODE_00DA8A:        LDA #$28                  ;
CODE_00DA8C:        STA $0BA1                 ;
CODE_00DA8F:        LDA $0238                 ;
CODE_00DA92:        SEC                       ;
CODE_00DA93:        SBC #$24                  ;
CODE_00DA95:        BRA CODE_00DA9A           ;

CODE_00DA97:        INC $0BB3                 ;
CODE_00DA9A:        STA $01                   ;
CODE_00DA9C:        TYA                       ;
CODE_00DA9D:        CLC                       ;
CODE_00DA9E:        ADC #$10                  ;
CODE_00DAA0:        TAY                       ;
CODE_00DAA1:        LDA $0BBB                 ;
CODE_00DAA4:        CLC                       ;
CODE_00DAA5:        ADC #$06                  ;
CODE_00DAA7:        JSR CODE_00E1FC           ;
CODE_00DAAA:        RTS                       ;

CODE_00DAAB:        LDY #$B0                  ;
CODE_00DAAD:        LDX #$00                  ;
CODE_00DAAF:        LDA $03AE                 ;
CODE_00DAB2:        STA $0900,y               ;
CODE_00DAB5:        LDA DATA_00DB8F,x         ;
CODE_00DAB8:        STA $0901,y               ;
CODE_00DABB:        LDA DATA_00DB8F+1,x       ;
CODE_00DABE:        STA $0902,y               ;
CODE_00DAC1:        LDA #$2D                  ;
CODE_00DAC3:        STA $0903,y               ;
CODE_00DAC6:        LDA #$02                  ;
CODE_00DAC8:        STA $0D00,y               ;
CODE_00DACB:        INY                       ;
CODE_00DACC:        INY                       ;
CODE_00DACD:        INY                       ;
CODE_00DACE:        INY                       ;
CODE_00DACF:        INX                       ;
CODE_00DAD0:        INX                       ;
CODE_00DAD1:        CPX #$12                  ;
CODE_00DAD3:        BCC CODE_00DAAF           ;
CODE_00DAD5:        LDA #$6D                  ;
CODE_00DAD7:        STA $09C3                 ;
CODE_00DADA:        STZ $0DC0                 ;
CODE_00DADD:        STZ $0DBC                 ;
CODE_00DAE0:        LDA $09BC                 ;
CODE_00DAE3:        CLC                       ;
CODE_00DAE4:        ADC #$08                  ;
CODE_00DAE6:        STA $09C0                 ;
CODE_00DAE9:        LDX #$00                  ;
CODE_00DAEB:        LDA DATA_00DB88,x               ;
CODE_00DAEE:        CMP $0B9F                 ;
CODE_00DAF1:        BCS CODE_00DAF8           ;
CODE_00DAF3:        INX                       ;
CODE_00DAF4:        CPX #$06                  ;
CODE_00DAF6:        BNE CODE_00DAEB           ;
CODE_00DAF8:        TXA                       ;
CODE_00DAF9:        ASL A                     ;
CODE_00DAFA:        TAX                       ;
CODE_00DAFB:        LDA PNTR_00DB7A,x               ;
CODE_00DAFE:        STA $00                   ;
CODE_00DB00:        LDA PNTR_00DB7A+1,x               ;
CODE_00DB03:        STA $01                   ;
CODE_00DB05:        LDA #$01                  ;
CODE_00DB07:        JMP ($0000)               ;

CODE_00DB0A:        STA $0DB0                 ;
CODE_00DB0D:        STA $0DB4                 ;
CODE_00DB10:        STA $0DB8                 ;
CODE_00DB13:        STA $0DC8                 ;
CODE_00DB16:        STA $0DCC                 ;
CODE_00DB19:        STA $0DD0                 ;
CODE_00DB1C:        RTS                       ;

CODE_00DB1D:        STA $0DB0                 ;
CODE_00DB20:        STA $0DB4                 ;
CODE_00DB23:        STA $0DB8                 ;
CODE_00DB26:        STA $0DCC                 ;
CODE_00DB29:        STA $0DD0                 ;
CODE_00DB2C:        LDA #$09                  ;
CODE_00DB2E:        STA $1600                 ;
CODE_00DB31:        RTS                       ;

CODE_00DB32:        STA $0DB0                 ;
CODE_00DB35:        STA $0DB4                 ;
CODE_00DB38:        STA $0DC8                 ;
CODE_00DB3B:        STA $0DCC                 ;
CODE_00DB3E:        STA $0DD0                 ;
CODE_00DB41:        RTS                       ;

CODE_00DB42:        STA $0DB0                 ;
CODE_00DB45:        STA $0DB4                 ;
CODE_00DB48:        STA $0DC8                 ;
CODE_00DB4B:        STA $0DD0                 ;
CODE_00DB4E:        LDA #$09                  ;
CODE_00DB50:        STA $1600                 ;
CODE_00DB53:        RTS                       ;

CODE_00DB54:        STA $0DB0                 ;
CODE_00DB57:        STA $0DC8                 ;
CODE_00DB5A:        STA $0DCC                 ;
CODE_00DB5D:        STA $0DD0                 ;
CODE_00DB60:        RTS                       ;

CODE_00DB61:        STA $0DB0                 ;
CODE_00DB64:        STA $0DC8                 ;
CODE_00DB67:        STA $0DCC                 ;
CODE_00DB6A:        LDA #$09                  ;
CODE_00DB6C:        STA $1600                 ;
CODE_00DB6F:        RTS                       ;

CODE_00DB70:        STA $0DC8                 ;
CODE_00DB73:        STA $0DCC                 ;
CODE_00DB76:        STA $0DD0                 ;
CODE_00DB79:        RTS                       ;

PNTR_00DB7A:        dw CODE_00DB0A
                    dw CODE_00DB1D
                    dw CODE_00DB32
                    dw CODE_00DB42
                    dw CODE_00DB54
                    dw CODE_00DB61
                    dw CODE_00DB70

DATA_00DB88:        db $40,$48,$58,$60,$70,$78,$BF

DATA_00DB8F:        db $97,$EA,$A2,$EA,$AD,$EA,$B8,$B6
                    db $B8,$B6,$C0,$C9,$B3,$EA,$A8,$EA
                    db $9D,$EA 

CODE_00DBA1:        JSR CODE_00E27B
CODE_00DBA4:        LDA $0F7F                 ;
CODE_00DBA7:        BNE CODE_00DBAC           ;
CODE_00DBA9:        JMP CODE_00E1D5           ;

CODE_00DBAC:        JSR CODE_00E566           ;
CODE_00DBAF:        LDA #$20                  ;
CODE_00DBB1:        STA $00                   ;
CODE_00DBB3:        LDA #$04                  ;
CODE_00DBB5:        STA $02                   ;
CODE_00DBB7:        LDX #$01                  ;
CODE_00DBB9:        LDA #$00                  ;
CODE_00DBBB:        JSL CODE_0DBF7A           ;
CODE_00DBBF:        LDA $0238                 ;
CODE_00DBC2:        CMP #$A0                  ;
CODE_00DBC4:        BCS CODE_00DBCB           ;
CODE_00DBC6:        LDA #$01                  ;
CODE_00DBC8:        STA $0B9D                 ;
CODE_00DBCB:        LDA $0238                 ;
CODE_00DBCE:        CMP #$B0                  ;
CODE_00DBD0:        BCC CODE_00DBED           ;
CODE_00DBD2:        LDA #$B0                  ;
CODE_00DBD4:        STA $0238                 ;
CODE_00DBD7:        STZ $043D                 ;
CODE_00DBDA:        STZ $041C                 ;
CODE_00DBDD:        INC $0B9E                 ;
CODE_00DBE0:        LDA $0B9E                 ;
CODE_00DBE3:        BMI CODE_00DBEA           ;
CODE_00DBE5:        LDA #$00                  ;
CODE_00DBE7:        STA $0B9E                 ;
CODE_00DBEA:        STA $00A1                 ;
CODE_00DBED:        INC $0B9F                 ;
CODE_00DBF0:        LDA $0B9F                 ;
CODE_00DBF3:        CMP #$44                  ;
CODE_00DBF5:        BCC CODE_00DC0C           ;
CODE_00DBF7:        BNE CODE_00DBFE           ;
CODE_00DBF9:        LDA #$08                  ;
CODE_00DBFB:        STA $1600                 ;
CODE_00DBFE:        LDA #$45                  ;
CODE_00DC00:        STA $0B9F                 ;
CODE_00DC03:        JSR CODE_00DC12           ;
CODE_00DC06:        JSR CODE_00E529           ;
CODE_00DC09:        JMP CODE_00E1D5           ;

CODE_00DC0C:        JSR CODE_00DD86           ;
CODE_00DC0F:        JMP CODE_00E1D5           ;

CODE_00DC12:        LDA $03AE                 ;
CODE_00DC15:        CLC                       ;
CODE_00DC16:        ADC $0B9F                 ;
CODE_00DC19:        STA $00                   ;
CODE_00DC1B:        CLC                       ;
CODE_00DC1C:        ADC #$06                  ;
CODE_00DC1E:        STA $0900                 ;
CODE_00DC21:        CLC                       ;
CODE_00DC22:        ADC #$10                  ;
CODE_00DC24:        STA $0904                 ;
CODE_00DC27:        LDA $00                   ;
CODE_00DC29:        STA $0910                 ;
CODE_00DC2C:        STA $0918                 ;
CODE_00DC2F:        CLC                       ;
CODE_00DC30:        ADC #$08                  ;
CODE_00DC32:        STA $0914                 ;
CODE_00DC35:        LDA $00                   ;
CODE_00DC37:        CLC                       ;
CODE_00DC38:        ADC #$1C                  ;
CODE_00DC3A:        STA $0920                 ;
CODE_00DC3D:        STA $0928                 ;
CODE_00DC40:        CLC                       ;
CODE_00DC41:        ADC #$08                  ;
CODE_00DC43:        STA $0924                 ;
CODE_00DC46:        LDA $00                   ;
CODE_00DC48:        CLC                       ;
CODE_00DC49:        ADC #$06                  ;
CODE_00DC4B:        STA $0930                 ;
CODE_00DC4E:        STA $0938                 ;
CODE_00DC51:        CLC                       ;
CODE_00DC52:        ADC #$08                  ;
CODE_00DC54:        STA $0934                 ;
CODE_00DC57:        LDA $00                   ;
CODE_00DC59:        CLC                       ;
CODE_00DC5A:        ADC #$16                  ;
CODE_00DC5C:        STA $0940                 ;
CODE_00DC5F:        STA $0948                 ;
CODE_00DC62:        CLC                       ;
CODE_00DC63:        ADC #$08                  ;
CODE_00DC65:        STA $0944                 ;
CODE_00DC68:        LDA #$B8                  ;
CODE_00DC6A:        STA $0911                 ;
CODE_00DC6D:        STA $0915                 ;
CODE_00DC70:        STA $0921                 ;
CODE_00DC73:        STA $0925                 ;
CODE_00DC76:        STA $0931                 ;
CODE_00DC79:        STA $0935                 ;
CODE_00DC7C:        STA $0941                 ;
CODE_00DC7F:        STA $0945                 ;
CODE_00DC82:        LDA #$C0                  ;
CODE_00DC84:        STA $0901                 ;
CODE_00DC87:        STA $0905                 ;
CODE_00DC8A:        STA $0919                 ;
CODE_00DC8D:        STA $0929                 ;
CODE_00DC90:        STA $0939                 ;
CODE_00DC93:        STA $0949                 ;
CODE_00DC96:        LDA #$BE                  ;
CODE_00DC98:        STA $0912                 ;
CODE_00DC9B:        STA $0926                 ;
CODE_00DC9E:        LDA #$BF                  ;
CODE_00DCA0:        STA $0916                 ;
CODE_00DCA3:        STA $0922                 ;
CODE_00DCA6:        LDA #$EC                  ;
CODE_00DCA8:        STA $091A                 ;
CODE_00DCAB:        STA $092A                 ;
CODE_00DCAE:        LDA #$EA                  ;
CODE_00DCB0:        STA $0902                 ;
CODE_00DCB3:        STA $0906                 ;
CODE_00DCB6:        LDA #$B6                  ;
CODE_00DCB8:        STA $0932                 ;
CODE_00DCBB:        STA $0936                 ;
CODE_00DCBE:        STA $0942                 ;
CODE_00DCC1:        STA $0946                 ;
CODE_00DCC4:        LDA #$C9                  ;
CODE_00DCC6:        STA $093A                 ;
CODE_00DCC9:        STA $094A                 ;
CODE_00DCCC:        LDA #$2D                  ;
CODE_00DCCE:        STA $0903                 ;
CODE_00DCD1:        STA $0913                 ;
CODE_00DCD4:        STA $0917                 ;
CODE_00DCD7:        STA $091B                 ;
CODE_00DCDA:        STA $0933                 ;
CODE_00DCDD:        STA $093B                 ;
CODE_00DCE0:        STA $0943                 ;
CODE_00DCE3:        STA $094B                 ;
CODE_00DCE6:        LDA #$6D                  ;
CODE_00DCE8:        STA $0907                 ;
CODE_00DCEB:        STA $0923                 ;
CODE_00DCEE:        STA $0927                 ;
CODE_00DCF1:        STA $092B                 ;
CODE_00DCF4:        STA $0937                 ;
CODE_00DCF7:        STA $0947                 ;
CODE_00DCFA:        LDA #$02                  ;
CODE_00DCFC:        STA $0D00                 ;
CODE_00DCFF:        STA $0D04                 ;
CODE_00DD02:        STA $0D18                 ;
CODE_00DD05:        STA $0D28                 ;
CODE_00DD08:        STA $0D38                 ;
CODE_00DD0B:        STA $0D48                 ;
CODE_00DD0E:        LDX #$03                  ;
CODE_00DD10:        LDA $0BB8,x               ;
CODE_00DD13:        BEQ CODE_00DD21           ;
CODE_00DD15:        CMP #$1E                  ;
CODE_00DD17:        BCC CODE_00DD1E           ;
CODE_00DD19:        STZ $0BB8,x               ;
CODE_00DD1C:        BRA CODE_00DD21           ;

CODE_00DD1E:        INC $0BB8,x               ;
CODE_00DD21:        DEX                       ;
CODE_00DD22:        BPL CODE_00DD10           ;
CODE_00DD24:        LDA $09                   ;
CODE_00DD26:        AND #$07                  ;
CODE_00DD28:        BNE CODE_00DD56           ;
CODE_00DD2A:        LDX #$03                  ;
CODE_00DD2C:        LDA $0BB8,x               ;
CODE_00DD2F:        BEQ CODE_00DD34           ;
CODE_00DD31:        DEX                       ;
CODE_00DD32:        BNE CODE_00DD2C           ;
CODE_00DD34:        LDA $09                   ;
CODE_00DD36:        AND #$03                  ;
CODE_00DD38:        TAY                       ;
CODE_00DD39:        LDA $07B9,y               ;
CODE_00DD3C:        EOR $09                   ;
CODE_00DD3E:        AND #$1F                  ;
CODE_00DD40:        CLC                       ;
CODE_00DD41:        ADC #$CC                  ;
CODE_00DD43:        STA $0BB0,x               ;
CODE_00DD46:        LDA $07BA,y               ;
CODE_00DD49:        EOR $09                   ;
CODE_00DD4B:        AND #$07                  ;
CODE_00DD4D:        CLC                       ;
CODE_00DD4E:        ADC #$B0                  ;
CODE_00DD50:        STA $0BB4,x               ;
CODE_00DD53:        INC $0BB8,x               ;
CODE_00DD56:        LDX #$03                  ;
CODE_00DD58:        LDA $0BB8,x               ;
CODE_00DD5B:        LSR A                     ;
CODE_00DD5C:        LSR A                     ;
CODE_00DD5D:        LSR A                     ;
CODE_00DD5E:        TAY                       ;
CODE_00DD5F:        LDA DATA_00DD82,y               ;
CODE_00DD62:        STA $00                   ;
CODE_00DD64:        TXA                       ;
CODE_00DD65:        ASL A                     ;
CODE_00DD66:        ASL A                     ;
CODE_00DD67:        TAY                       ;
CODE_00DD68:        LDA $0BB0,x               ;
CODE_00DD6B:        STA $0800,y               ;
CODE_00DD6E:        LDA $0BB4,x               ;
CODE_00DD71:        STA $0801,y               ;
CODE_00DD74:        LDA $00                   ;
CODE_00DD76:        STA $0802,y               ;
CODE_00DD79:        LDA #$25                  ;
CODE_00DD7B:        STA $0803,y               ;
CODE_00DD7E:        DEX                       ;
CODE_00DD7F:        BPL CODE_00DD58           ;
CODE_00DD81:        RTS                       ;

DATA_00DD82:        db $F5,$E4,$F4,$E5

CODE_00DD86:        LDY $0B9D                 ;
CODE_00DD89:        LDA DATA_00D65F,y               ;
CODE_00DD8C:        TAY                       ;
CODE_00DD8D:        LDA $03AE                 ;
CODE_00DD90:        CLC                       ;
CODE_00DD91:        ADC $0B9F                 ;
CODE_00DD94:        STA $0900,y               ;
CODE_00DD97:        STA $0908,y               ;
CODE_00DD9A:        CLC                       ;
CODE_00DD9B:        ADC #$10                  ;
CODE_00DD9D:        STA $0904,y               ;
CODE_00DDA0:        STA $090C,y               ;
CODE_00DDA3:        LDA $0238                 ;
CODE_00DDA6:        STA $0901,y               ;
CODE_00DDA9:        STA $0905,y               ;
CODE_00DDAC:        CLC                       ;
CODE_00DDAD:        ADC #$10                  ;
CODE_00DDAF:        STA $0909,y               ;
CODE_00DDB2:        STA $090D,y               ;
CODE_00DDB5:        LDA $0B9F                 ;
CODE_00DDB8:        AND #$0C                  ;
CODE_00DDBA:        TAX                       ;
CODE_00DDBB:        LDA #$04                  ;
CODE_00DDBD:        STA $00                   ;
CODE_00DDBF:        LDA DATA_00DDDA,x               ;
CODE_00DDC2:        STA $0902,y               ;
CODE_00DDC5:        LDA DATA_00DDEA,x               ;
CODE_00DDC8:        STA $0903,y               ;
CODE_00DDCB:        LDA #$02                  ;
CODE_00DDCD:        STA $0D00,y               ;
CODE_00DDD0:        INY                       ;
CODE_00DDD1:        INY                       ;
CODE_00DDD2:        INY                       ;
CODE_00DDD3:        INY                       ;
CODE_00DDD4:        INX                       ;
CODE_00DDD5:        DEC $00                   ;
CODE_00DDD7:        BNE CODE_00DDBF           ;
CODE_00DDD9:        RTS                       ;

DATA_00DDDA:        db $CE,$CE,$EE,$EE,$E0,$E2,$E0,$E2
                    db $EE,$EE,$CE,$CE,$E2,$E0,$E2,$E0
					
DATA_00DDEA:        db $2D,$4D,$2D,$4D,$2D,$2D,$AD,$AD
                    db $AD,$CD,$AD,$CD,$4D,$4D,$CD,$CD

CODE_00DDFA:        JSR CODE_00E27B           ;
CODE_00DDFD:        LDA $0F7F                 ;
CODE_00DE00:        BNE CODE_00DE05           ;
CODE_00DE02:        JMP CODE_00E1D5           ;

CODE_00DE05:        JSR CODE_00E566           ;
CODE_00DE08:        LDA #$20                  ;
CODE_00DE0A:        STA $00                   ;
CODE_00DE0C:        LDA #$04                  ;
CODE_00DE0E:        STA $01                   ;
CODE_00DE10:        LDX #$01                  ;
CODE_00DE12:        LDA #$00                  ;
CODE_00DE14:        JSL CODE_0DBF7A           ;
CODE_00DE18:        LDA $0238                 ;
CODE_00DE1B:        CMP #$A0                  ;
CODE_00DE1D:        BCS CODE_00DE24           ;
CODE_00DE1F:        LDA #$01                  ;
CODE_00DE21:        STA $0B9D                 ;
CODE_00DE24:        LDA $0238                 ;
CODE_00DE27:        CMP #$B8                  ;
CODE_00DE29:        BCC CODE_00DE4A           ;
CODE_00DE2B:        LDA #$B8                  ;
CODE_00DE2D:        STA $0238                 ;
CODE_00DE30:        STZ $00A1                 ;
CODE_00DE33:        STZ $043D                 ;
CODE_00DE36:        STZ $041D                 ;
CODE_00DE39:        LDA $0BA4                 ;
CODE_00DE3C:        CMP #$01                  ;
CODE_00DE3E:        BNE CODE_00DE5A           ;
CODE_00DE40:        LDA #$20                  ;
CODE_00DE42:        STA $1600                 ;
CODE_00DE45:        STA $0BA4                 ;
CODE_00DE48:        BRA CODE_00DE5A           ;

CODE_00DE4A:        LDY $0B9D                 ;
CODE_00DE4D:        LDA DATA_00D65F,y               ;
CODE_00DE50:        TAY                       ;
CODE_00DE51:        LDA $00A1                 ;
CODE_00DE54:        JSR CODE_00DEF9           ;
CODE_00DE57:        JMP CODE_00E1D5           ;

CODE_00DE5A:        LDA $0B9C                 ;
CODE_00DE5D:        CMP #$02                  ;
CODE_00DE5F:        BEQ CODE_00DE78           ;
CODE_00DE61:        INC $0B9C                 ;
CODE_00DE64:        LDA $03AE                 ;
CODE_00DE67:        SEC                       ;
CODE_00DE68:        SBC #$08                  ;
CODE_00DE6A:        STA $03AE                 ;
CODE_00DE6D:        LDA $021A                 ;
CODE_00DE70:        SEC                       ;
CODE_00DE71:        SBC #$08                  ;
CODE_00DE73:        STA $021A                 ;
CODE_00DE76:        STZ $09                   ;
CODE_00DE78:        LDA $0BA0                 ;
CODE_00DE7B:        BNE CODE_00DE8C           ;
CODE_00DE7D:        INC $0B9F                 ;
CODE_00DE80:        LDA $0B9F                 ;
CODE_00DE83:        CMP #$40                  ;
CODE_00DE85:        BCC CODE_00DE9B           ;
CODE_00DE87:        LDA #$40                  ;
CODE_00DE89:        STA $0B9F                 ;
CODE_00DE8C:        INC $0BA0                 ;
CODE_00DE8F:        LDA $0BA0                 ;
CODE_00DE92:        CMP #$88                  ;
CODE_00DE94:        BCC CODE_00DE9B           ;
CODE_00DE96:        LDA #$88                  ;
CODE_00DE98:        STA $0BA0                 ;
CODE_00DE9B:        JSR CODE_00DF4C           ;
CODE_00DE9E:        JSR CODE_00E529           ;
CODE_00DEA1:        JMP CODE_00E1D5           ;

CODE_00DEA4:        LDA $03AE                 ;
CODE_00DEA7:        STA $0900,y               ;
CODE_00DEAA:        STA $0908,y               ;
CODE_00DEAD:        CLC                       ;
CODE_00DEAE:        ADC #$10                  ;
CODE_00DEB0:        STA $0904,y               ;
CODE_00DEB3:        STA $090C,y               ;
CODE_00DEB6:        LDA $0238                 ;
CODE_00DEB9:        STA $0901,y               ;
CODE_00DEBC:        STA $0905,y               ;
CODE_00DEBF:        CLC                       ;
CODE_00DEC0:        ADC #$10                  ;
CODE_00DEC2:        STA $0909,y               ;
CODE_00DEC5:        STA $090D,y               ;
CODE_00DEC8:        LDA #$CE                  ;
CODE_00DECA:        STA $0902,y               ;
CODE_00DECD:        STA $0906,y               ;
CODE_00DED0:        STA $090A,y               ;
CODE_00DED3:        STA $090E,y               ;
CODE_00DED6:        LDA #$2D                  ;
CODE_00DED8:        STA $0903,y               ;
CODE_00DEDB:        LDA #$6D                  ;
CODE_00DEDD:        STA $0907,y               ;
CODE_00DEE0:        LDA #$AD                  ;
CODE_00DEE2:        STA $090B,y               ;
CODE_00DEE5:        LDA #$CD                  ;
CODE_00DEE7:        STA $090F,y               ;
CODE_00DEEA:        LDA #$02                  ;
CODE_00DEEC:        STA $0D00,y               ;
CODE_00DEEF:        STA $0D04,y               ;
CODE_00DEF2:        STA $0D08,y               ;
CODE_00DEF5:        STA $0D0C,y               ;
CODE_00DEF8:        RTS                       ;

CODE_00DEF9:        LDA $03AE                 ;
CODE_00DEFC:        STA $0900,y               ;
CODE_00DEFF:        STA $0908,y               ;
CODE_00DF02:        CLC                       ;
CODE_00DF03:        ADC #$10                  ;
CODE_00DF05:        STA $0904,y               ;
CODE_00DF08:        STA $090C,y               ;
CODE_00DF0B:        LDA $0238                 ;
CODE_00DF0E:        STA $0909,y               ;
CODE_00DF11:        STA $090D,y               ;
CODE_00DF14:        CLC                       ;
CODE_00DF15:        ADC #$08                  ;
CODE_00DF17:        STA $0901,y               ;
CODE_00DF1A:        STA $0905,y               ;
CODE_00DF1D:        LDA #$CE                  ;
CODE_00DF1F:        STA $090A,y               ;
CODE_00DF22:        STA $090E,y               ;
CODE_00DF25:        LDA #$DE                  ;
CODE_00DF27:        STA $0902,y               ;
CODE_00DF2A:        STA $0906,y               ;
CODE_00DF2D:        LDA #$2D                  ;
CODE_00DF2F:        STA $0903,y               ;
CODE_00DF32:        STA $090B,y               ;
CODE_00DF35:        LDA #$6D                  ;
CODE_00DF37:        STA $0907,y               ;
CODE_00DF3A:        STA $090F,y               ;
CODE_00DF3D:        LDA #$02                  ;
CODE_00DF3F:        STA $0D00,y               ;
CODE_00DF42:        STA $0D04,y               ;
CODE_00DF45:        STA $0D08,y               ;
CODE_00DF48:        STA $0D0C,y               ;
CODE_00DF4B:        RTS                       ;

CODE_00DF4C:        LDA $0B9F                 ;
CODE_00DF4F:        SEC                       ;
CODE_00DF50:        SBC #$28                  ;
CODE_00DF52:        BPL CODE_00DF56           ;
CODE_00DF54:        LDA #$00                  ;
CODE_00DF56:        LSR A                     ;
CODE_00DF57:        LSR A                     ;
CODE_00DF58:        STA $00                   ;
CODE_00DF5A:        LDA $0BA0                 ;
CODE_00DF5D:        AND #$08                  ;
CODE_00DF5F:        LSR A                     ;
CODE_00DF60:        LSR A                     ;
CODE_00DF61:        LSR A                     ;
CODE_00DF62:        STA $01                   ;
CODE_00DF64:        LDA $03AE                 ;
CODE_00DF67:        CLC                       ;
CODE_00DF68:        ADC $0BA0                 ;
CODE_00DF6B:        CLC                       ;
CODE_00DF6C:        ADC $01                   ;
CODE_00DF6E:        STA $0900                 ;
CODE_00DF71:        STA $0910                 ;
CODE_00DF74:        CLC                       ;
CODE_00DF75:        ADC #$10                  ;
CODE_00DF77:        SEC                       ;
CODE_00DF78:        SBC $01                   ;
CODE_00DF7A:        STA $0904                 ;
CODE_00DF7D:        STA $0914                 ;
CODE_00DF80:        CLC                       ;
CODE_00DF81:        ADC #$10                  ;
CODE_00DF83:        SEC                       ;
CODE_00DF84:        SBC $01                   ;
CODE_00DF86:        STA $0908                 ;
CODE_00DF89:        STA $0918                 ;
CODE_00DF8C:        LDA $0238                 ;
CODE_00DF8F:        SEC                       ;
CODE_00DF90:        SBC $00                   ;
CODE_00DF92:        CLC                       ;
CODE_00DF93:        ADC $01                   ;
CODE_00DF95:        STA $0911                 ;
CODE_00DF98:        STA $0915                 ;
CODE_00DF9B:        STA $0919                 ;
CODE_00DF9E:        CLC                       ;
CODE_00DF9F:        ADC #$08                  ;
CODE_00DFA1:        STA $0901                 ;
CODE_00DFA4:        STA $0905                 ;
CODE_00DFA7:        STA $0909                 ;
CODE_00DFAA:        LDA #$DE                  ;
CODE_00DFAC:        STA $0902                 ;
CODE_00DFAF:        STA $090A                 ;
CODE_00DFB2:        LDA #$EC                  ;
CODE_00DFB4:        STA $0906                 ;
CODE_00DFB7:        LDA #$CE                  ;
CODE_00DFB9:        STA $0912                 ;
CODE_00DFBC:        STA $091A                 ;
CODE_00DFBF:        LDA #$EA                  ;
CODE_00DFC1:        STA $0916                 ;
CODE_00DFC4:        LDA #$2D                  ;
CODE_00DFC6:        STA $0903                 ;
CODE_00DFC9:        STA $0907                 ;
CODE_00DFCC:        STA $0913                 ;
CODE_00DFCF:        STA $0917                 ;
CODE_00DFD2:        LDA #$6D                  ;
CODE_00DFD4:        STA $090B                 ;
CODE_00DFD7:        STA $091B                 ;
CODE_00DFDA:        LDA #$02                  ;
CODE_00DFDC:        STA $0D00                 ;
CODE_00DFDF:        STA $0D04                 ;
CODE_00DFE2:        STA $0D08                 ;
CODE_00DFE5:        STA $0D10                 ;
CODE_00DFE8:        STA $0D14                 ;
CODE_00DFEB:        STA $0D18                 ;
CODE_00DFEE:        LDA $03AE                 ;
CODE_00DFF1:        CLC                       ;
CODE_00DFF2:        ADC $0BA0                 ;
CODE_00DFF5:        INC A                     ;
CODE_00DFF6:        INC A                     ;
CODE_00DFF7:        STA $0920                 ;
CODE_00DFFA:        CLC                       ;
CODE_00DFFB:        ADC #$08                  ;
CODE_00DFFD:        STA $0924                 ;
CODE_00E000:        INC A                     ;
CODE_00E001:        STA $0928                 ;
CODE_00E004:        CLC                       ;
CODE_00E005:        ADC #$08                  ;
CODE_00E007:        STA $092C                 ;
CODE_00E00A:        INC A                     ;
CODE_00E00B:        STA $0930                 ;
CODE_00E00E:        CLC                       ;
CODE_00E00F:        ADC #$08                  ;
CODE_00E011:        STA $0934                 ;
CODE_00E014:        INC A                     ;
CODE_00E015:        STA $0938                 ;
CODE_00E018:        CLC                       ;
CODE_00E019:        ADC #$08                  ;
CODE_00E01B:        STA $093C                 ;
CODE_00E01E:        LDA #$C8                  ;
CODE_00E020:        STA $0921                 ;
CODE_00E023:        STA $0925                 ;
CODE_00E026:        STA $0929                 ;
CODE_00E029:        STA $092D                 ;
CODE_00E02C:        STA $0931                 ;
CODE_00E02F:        STA $0935                 ;
CODE_00E032:        STA $0939                 ;
CODE_00E035:        STA $093D                 ;
CODE_00E038:        LDA $0BA0                 ;
CODE_00E03B:        AND #$0F                  ;
CODE_00E03D:        CMP #$0F                  ;
CODE_00E03F:        BNE CODE_00E046           ;
CODE_00E041:        LDA #$0E                  ;
CODE_00E043:        STA $1600                 ;
CODE_00E046:        LDA $0BA0                 ;
CODE_00E049:        AND #$08                  ;
CODE_00E04B:        ASL A                     ;
CODE_00E04C:        ORA #$CB                  ;
CODE_00E04E:        STA $0922                 ;
CODE_00E051:        STA $092A                 ;
CODE_00E054:        STA $0932                 ;
CODE_00E057:        STA $093A                 ;
CODE_00E05A:        INC A                     ;
CODE_00E05B:        STA $0926                 ;
CODE_00E05E:        STA $092E                 ;
CODE_00E061:        STA $0936                 ;
CODE_00E064:        STA $093E                 ;
CODE_00E067:        LDA #$2D                  ;
CODE_00E069:        STA $0923                 ;
CODE_00E06C:        STA $0927                 ;
CODE_00E06F:        STA $092B                 ;
CODE_00E072:        STA $092F                 ;
CODE_00E075:        STA $0933                 ;
CODE_00E078:        STA $0937                 ;
CODE_00E07B:        STA $093B                 ;
CODE_00E07E:        STA $093F                 ;
CODE_00E081:        LDY #$00                  ;
CODE_00E083:        LDA $0900,y               ;
CODE_00E086:        CMP #$40                  ;
CODE_00E088:        BCS CODE_00E08F           ;
CODE_00E08A:        LDA #$F0                  ;
CODE_00E08C:        STA $0901,y               ;
CODE_00E08F:        INY                       ;
CODE_00E090:        INY                       ;
CODE_00E091:        INY                       ;
CODE_00E092:        INY                       ;
CODE_00E093:        BNE CODE_00E083           ;
CODE_00E095:        RTS                       ;

CODE_00E096:        INC $0F7F                 ;
CODE_00E099:        LDA $0F7F                 ;
CODE_00E09C:        CMP #$D0                  ;
CODE_00E09E:        BCC CODE_00E0AB           ;
CODE_00E0A0:        JSR CODE_00E529           ;
CODE_00E0A3:        LDA #$D0                  ;
CODE_00E0A5:        STA $0F7F                 ;
CODE_00E0A8:        JMP CODE_00E0BA           ;

CODE_00E0AB:        CMP #$20                  ;
CODE_00E0AD:        BCC CODE_00E0BA           ;
CODE_00E0AF:        PHA                       ;
CODE_00E0B0:        AND #$0F                  ;
CODE_00E0B2:        BNE CODE_00E0B9           ;
CODE_00E0B4:        LDA #$0E                  ;
CODE_00E0B6:        STA $1600                 ;
CODE_00E0B9:        PLA                       ;
CODE_00E0BA:        LSR A                     ;
CODE_00E0BB:        LSR A                     ;
CODE_00E0BC:        LSR A                     ;
CODE_00E0BD:        CMP #$03                  ;
CODE_00E0BF:        BCC CODE_00E0C3           ;
CODE_00E0C1:        LDA #$03                  ;
CODE_00E0C3:        PHA                       ;
CODE_00E0C4:        JSR CODE_00E0DC           ;
CODE_00E0C7:        PLA                       ;
CODE_00E0C8:        CMP #$02                  ;
CODE_00E0CA:        BNE CODE_00E0D9           ;
CODE_00E0CC:        LDA $0BA4                 ;
CODE_00E0CF:        BNE CODE_00E0D9           ;
CODE_00E0D1:        LDA #$2B                  ;
CODE_00E0D3:        STA $1600                 ;
CODE_00E0D6:        STA $0BA4                 ;
CODE_00E0D9:        JMP CODE_00E1D5           ;

CODE_00E0DC:        ASL A                     ;
CODE_00E0DD:        ASL A                     ;
CODE_00E0DE:        ASL A                     ;
CODE_00E0DF:        TAX                       ;
CODE_00E0E0:        LDY #$08                  ;
CODE_00E0E2:        LDA #$88                  ;
CODE_00E0E4:        STA $0900,y               ;
CODE_00E0E7:        STA $0908,y               ;
CODE_00E0EA:        LDA #$90                  ;
CODE_00E0EC:        STA $0904,y               ;
CODE_00E0EF:        LDA #$B0                  ;
CODE_00E0F1:        STA $0901,y               ;
CODE_00E0F4:        STA $0905,y               ;
CODE_00E0F7:        LDA #$C0                  ;
CODE_00E0F9:        STA $0909,y               ;
CODE_00E0FC:        LDA #$80                  ;
CODE_00E0FE:        STA $0902,y               ;
CODE_00E101:        INC A                     ;
CODE_00E102:        STA $0906,y               ;
CODE_00E105:        LDA #$A0                  ;
CODE_00E107:        STA $090A,y               ;
CODE_00E10A:        LDA #$2D                  ;
CODE_00E10C:        STA $0903,y               ;
CODE_00E10F:        STA $0907,y               ;
CODE_00E112:        STA $090B,y               ;
CODE_00E115:        LDY #$00                  ;
CODE_00E117:        LDA DATA_00E1B5,x               ;
CODE_00E11A:        STA $0900,y               ;
CODE_00E11D:        INY                       ;
CODE_00E11E:        INX                       ;
CODE_00E11F:        CPY #$08                  ;
CODE_00E121:        BCC CODE_00E117           ;
CODE_00E123:        LDA #$02                  ;
CODE_00E125:        STA $0D00                 ;
CODE_00E128:        STA $0D04                 ;
CODE_00E12B:        STA $0D08                 ;
CODE_00E12E:        STA $0D0C                 ;
CODE_00E131:        STA $0D10                 ;
CODE_00E134:        LDA #$7E                  ;
CODE_00E136:        CLC                       ;
CODE_00E137:        ADC $0F7F                 ;
CODE_00E13A:        STA $091C                 ;
CODE_00E13D:        CMP #$88                  ;
CODE_00E13F:        BCS CODE_00E145           ;
CODE_00E141:        LDA #$F0                  ;
CODE_00E143:        BRA CODE_00E147           ;

CODE_00E145:        LDA #$C0                  ;
CODE_00E147:        STA $091D                 ;
CODE_00E14A:        LDA $09                   ;
CODE_00E14C:        LSR A                     ;
CODE_00E14D:        LSR A                     ;
CODE_00E14E:        AND #$02                  ;
CODE_00E150:        STA $01                   ;
CODE_00E152:        CLC                       ;
CODE_00E153:        ADC #$E6                  ;
CODE_00E155:        STA $091E                 ;
CODE_00E158:        LDA #$2D                  ;
CODE_00E15A:        STA $091F                 ;
CODE_00E15D:        LDA #$02                  ;
CODE_00E15F:        STA $0D1C                 ;
CODE_00E162:        LDY #$20                  ;
CODE_00E164:        LDX #$06                  ;
CODE_00E166:        LDA #$78                  ;
CODE_00E168:        CLC                       ;
CODE_00E169:        ADC $0F7F                 ;
CODE_00E16C:        STA $00                   ;
CODE_00E16E:        LDA $00                   ;
CODE_00E170:        STA $0900,y               ;
CODE_00E173:        STA $0904,y               ;
CODE_00E176:        CMP #$91                  ;
CODE_00E178:        BCS CODE_00E184           ;
CODE_00E17A:        LDA #$F0                  ;
CODE_00E17C:        STA $0901,y               ;
CODE_00E17F:        STA $0905,y               ;
CODE_00E182:        BRA CODE_00E18E           ;

CODE_00E184:        LDA #$C0                  ;
CODE_00E186:        STA $0901,y               ;
CODE_00E189:        LDA #$C8                  ;
CODE_00E18B:        STA $0905,y               ;
CODE_00E18E:        LDA #$BA                  ;
CODE_00E190:        CLC                       ;
CODE_00E191:        ADC $01                   ;
CODE_00E193:        STA $0902,y               ;
CODE_00E196:        INC A                     ;
CODE_00E197:        STA $0906,y               ;
CODE_00E19A:        LDA #$2D                  ;
CODE_00E19C:        STA $0903,y               ;
CODE_00E19F:        STA $0907,y               ;
CODE_00E1A2:        INY                       ;
CODE_00E1A3:        INY                       ;
CODE_00E1A4:        INY                       ;
CODE_00E1A5:        INY                       ;
CODE_00E1A6:        INY                       ;
CODE_00E1A7:        INY                       ;
CODE_00E1A8:        INY                       ;
CODE_00E1A9:        INY                       ;
CODE_00E1AA:        LDA $00                   ;
CODE_00E1AC:        SEC                       ;
CODE_00E1AD:        SBC #$0A                  ;
CODE_00E1AF:        STA $00                   ;
CODE_00E1B1:        DEX                       ;
CODE_00E1B2:        BNE CODE_00E16E           ;
CODE_00E1B4:        RTS                       ;

DATA_00E1B5:        db $98,$C0,$E4,$2D,$90,$C0,$A1,$2D
                    db $99,$BF,$E4,$2D,$90,$C0,$A1,$2D
                    db $9B,$BF,$E2,$2D,$90,$C0,$E0,$2D
                    db $90,$C0,$E0,$2D,$90,$C0,$E0,$2D

CODE_00E1D5:        LDA $0BA6                 ;
CODE_00E1D8:        BEQ CODE_00E1E1           ;
CODE_00E1DA:        BMI CODE_00E1F8           ;
CODE_00E1DC:        DEC $0BA6                 ;
CODE_00E1DF:        BRA CODE_00E1F8           ;

CODE_00E1E1:        LDA $0BA7                 ;
CODE_00E1E4:        BNE CODE_00E1F8           ;
CODE_00E1E6:        INC $0BA7                 ;
CODE_00E1E9:        LDA #$B8                  ;
CODE_00E1EB:        STA $03CE                 ;
CODE_00E1EE:        LDA $0754                 ;
CODE_00E1F1:        BNE CODE_00E1F8           ;
CODE_00E1F3:        LDA #$C8                  ;
CODE_00E1F5:        STA $03CE                 ;
CODE_00E1F8:        PLY                       ;
CODE_00E1F9:        PLX                       ;
CODE_00E1FA:        PLB                       ;
CODE_00E1FB:        RTL                       ;

CODE_00E1FC:        PHX                       ;
CODE_00E1FD:        STA $02                   ;
CODE_00E1FF:        ASL A                     ;
CODE_00E200:        CLC                       ;
CODE_00E201:        ADC $02                   ;
CODE_00E203:        TAX                       ;
CODE_00E204:        LDA $00                   ;
CODE_00E206:        STA $0900,y               ;
CODE_00E209:        STA $0908,y               ;
CODE_00E20C:        CLC                       ;
CODE_00E20D:        ADC #$08                  ;
CODE_00E20F:        STA $0904,y               ;
CODE_00E212:        LDA $01                   ;
CODE_00E214:        STA $0901,y               ;
CODE_00E217:        STA $0905,y               ;
CODE_00E21A:        CLC                       ;
CODE_00E21B:        ADC #$08                  ;
CODE_00E21D:        STA $0909,y               ;
CODE_00E220:        LDA DATA_00E24B,x         ;
CODE_00E223:        STA $0902,y               ;
CODE_00E226:        LDA DATA_00E24B+1,x       ;
CODE_00E229:        STA $0906,y               ;
CODE_00E22C:        LDA DATA_00E24B+2,x       ;
CODE_00E22F:        STA $090A,y               ;
CODE_00E232:        LDA DATA_00E263,x         ;
CODE_00E235:        STA $0903,y               ;
CODE_00E238:        LDA DATA_00E263+1,x       ;
CODE_00E23B:        STA $0907,y               ;
CODE_00E23E:        LDA DATA_00E263+2,x       ;
CODE_00E241:        STA $090B,y               ;
CODE_00E244:        LDA #$02                  ;
CODE_00E246:        STA $0D08,y               ;
CODE_00E249:        PLX                       ;
CODE_00E24A:        RTS                       ;

DATA_00E24B:        db $B6,$B6,$C9,$B7,$B7,$CB,$B8,$B9 ;
                    db $EC,$B9,$B8,$EC,$E3,$E2,$E4,$F3 ;
                    db $F2,$E6,$E2,$E3,$E4,$F2,$F3,$E6 ;

DATA_00E263:        db $2D,$6D,$2D,$2D,$6D,$2D,$2D,$2D ;
                    db $2D,$6D,$6D,$6D,$6D,$6D,$6D,$6D ;
                    db $6D,$6D,$2D,$2D,$2D,$2D,$2D,$2D ;

CODE_00E27B:        DEC $0F7D                 ;
CODE_00E27E:        LDA $0F7D                 ;
CODE_00E281:        BPL CODE_00E28B           ;
CODE_00E283:        INC $0F7F                 ;
CODE_00E286:        LDA #$07                  ;
CODE_00E288:        STA $0F7D                 ;
CODE_00E28B:        LDA $0F7F                 ;
CODE_00E28E:        CMP #$03                  ;
CODE_00E290:        BCC CODE_00E297           ;
CODE_00E292:        LDA #$03                  ;
CODE_00E294:        STA $0F7F                 ;
CODE_00E297:        PHX                       ;
CODE_00E298:        ASL A                     ;
CODE_00E299:        TAX                       ;
CODE_00E29A:        LDA PNTR_00E2A7,x               ;
CODE_00E29D:        STA $00                   ;
CODE_00E29F:        LDA PNTR_00E2A7+1,x               ;
CODE_00E2A2:        STA $01                   ;
CODE_00E2A4:        JMP ($0000)               ;

PNTR_00E2A7:        dw CODE_00E2AF
                    dw CODE_00E318
                    dw CODE_00E35E
                    dw CODE_00E377

CODE_00E2AF:        LDA #$94                  ;
CODE_00E2B1:        STA $0958                 ;
CODE_00E2B4:        LDA #$BB                  ;
CODE_00E2B6:        STA $0959                 ;
CODE_00E2B9:        LDA #$C0                  ;
CODE_00E2BB:        STA $095A                 ;
CODE_00E2BE:        LDA #$2D                  ;
CODE_00E2C0:        STA $095B                 ;
CODE_00E2C3:        LDA #$02                  ;
CODE_00E2C5:        STA $0D58                 ;
CODE_00E2C8:        LDA #$88                  ;
CODE_00E2CA:        STA $0960                 ;
CODE_00E2CD:        STA $0970                 ;
CODE_00E2D0:        LDA #$90                  ;
CODE_00E2D2:        STA $0964                 ;
CODE_00E2D5:        STA $0974                 ;
CODE_00E2D8:        LDA #$C0                  ;
CODE_00E2DA:        STA $0971                 ;
CODE_00E2DD:        STA $0975                 ;
CODE_00E2E0:        LDA #$9C                  ;
CODE_00E2E2:        STA $0972                 ;
CODE_00E2E5:        INC A                     ;
CODE_00E2E6:        STA $0976                 ;
CODE_00E2E9:        LDA #$B8                  ;
CODE_00E2EB:        STA $0961                 ;
CODE_00E2EE:        STA $0965                 ;
CODE_00E2F1:        LDA #$8C                  ;
CODE_00E2F3:        STA $0962                 ;
CODE_00E2F6:        INC A                     ;
CODE_00E2F7:        STA $0966                 ;
CODE_00E2FA:        LDA #$2D                  ;
CODE_00E2FC:        STA $0973                 ;
CODE_00E2FF:        STA $0977                 ;
CODE_00E302:        STA $0963                 ;
CODE_00E305:        STA $0967                 ;
CODE_00E308:        LDA #$02                  ;
CODE_00E30A:        STA $0D70                 ;
CODE_00E30D:        STA $0D74                 ;
CODE_00E310:        STA $0D60                 ;
CODE_00E313:        STA $0D64                 ;
CODE_00E316:        PLX                       ;
CODE_00E317:        RTS                       ;

CODE_00E318:        LDA #$9A                  ;
CODE_00E31A:        STA $0958                 ;
CODE_00E31D:        LDA #$BE                  ;
CODE_00E31F:        STA $0959                 ;
CODE_00E322:        LDA #$C2                  ;
CODE_00E324:        STA $095A                 ;
CODE_00E327:        LDA #$2D                  ;
CODE_00E329:        STA $095B                 ;
CODE_00E32C:        LDA #$02                  ;
CODE_00E32E:        STA $0D58                 ;
CODE_00E331:        LDA #$88                  ;
CODE_00E333:        STA $0970                 ;
CODE_00E336:        LDA #$90                  ;
CODE_00E338:        STA $0974                 ;
CODE_00E33B:        LDA #$C0                  ;
CODE_00E33D:        STA $0971                 ;
CODE_00E340:        STA $0975                 ;
CODE_00E343:        LDA #$99                  ;
CODE_00E345:        STA $0972                 ;
CODE_00E348:        INC A                     ;
CODE_00E349:        STA $0976                 ;
CODE_00E34C:        LDA #$2D                  ;
CODE_00E34E:        STA $0973                 ;
CODE_00E351:        STA $0977                 ;
CODE_00E354:        LDA #$02                  ;
CODE_00E356:        STA $0D70                 ;
CODE_00E359:        STA $0D74                 ;
CODE_00E35C:        PLX                       ;
CODE_00E35D:        RTS                       ;

CODE_00E35E:        LDA #$9C                  ;
CODE_00E360:        STA $0958                 ;
CODE_00E363:        LDA #$C1                  ;
CODE_00E365:        STA $0959                 ;
CODE_00E368:        LDA #$C4                  ;
CODE_00E36A:        STA $095A                 ;
CODE_00E36D:        LDA #$2D                  ;
CODE_00E36F:        STA $095B                 ;
CODE_00E372:        LDA #$02                  ;
CODE_00E374:        STA $0D58                 ;
CODE_00E377:        LDA #$88                  ;
CODE_00E379:        STA $0970                 ;
CODE_00E37C:        LDA #$90                  ;
CODE_00E37E:        STA $0974                 ;
CODE_00E381:        LDA #$C0                  ;
CODE_00E383:        STA $0971                 ;
CODE_00E386:        STA $0975                 ;
CODE_00E389:        LDA #$C6                  ;
CODE_00E38B:        STA $0972                 ;
CODE_00E38E:        INC A                     ;
CODE_00E38F:        STA $0976                 ;
CODE_00E392:        LDA #$2D                  ;
CODE_00E394:        STA $0973                 ;
CODE_00E397:        STA $0977                 ;
CODE_00E39A:        LDA #$02                  ;
CODE_00E39C:        STA $0D70                 ;
CODE_00E39F:        STA $0D74                 ;
CODE_00E3A2:        PLX                       ;
CODE_00E3A3:        RTS                       ;

CODE_00E3A4:        LDA #$0F                  ;
CODE_00E3A6:        STA $1600                 ;
CODE_00E3A9:        LDA $0754                 ;
CODE_00E3AC:        EOR #$01                  ;
CODE_00E3AE:        ASL A                     ;
CODE_00E3AF:        ASL A                     ;
CODE_00E3B0:        ASL A                     ;
CODE_00E3B1:        ASL A                     ;
CODE_00E3B2:        CLC                       ;
CODE_00E3B3:        ADC #$E0                  ;
CODE_00E3B5:        CLC                       ;
CODE_00E3B6:        ADC #$08                  ;
CODE_00E3B8:        STA $03CE                 ;
CODE_00E3BB:        LDY #$9C                  ;
CODE_00E3BD:        LDA #$0B                  ;
CODE_00E3BF:        STA $01                   ;
CODE_00E3C1:        STZ $00                   ;
CODE_00E3C3:        LDA #$00                  ;
CODE_00E3C5:        STA ($00),y               ;
CODE_00E3C7:        INY                       ;
CODE_00E3C8:        CPY #$BF                  ;
CODE_00E3CA:        BNE CODE_00E3C5           ;
CODE_00E3CC:        INC $0B9C                 ;
CODE_00E3CF:        DEC $0BA6                 ;
CODE_00E3D2:        LDA $075F                 ;\
CODE_00E3D5:        ASL A                     ; |
CODE_00E3D6:        TAX                       ; |
CODE_00E3D7:        LDA PNTR_00E3E4,x         ; | Jump to pointers according to the world number
CODE_00E3DA:        STA $00                   ; |
CODE_00E3DC:        LDA PNTR_00E3E4+1,x       ; |
CODE_00E3DF:        STA $01                   ; |
CODE_00E3E1:        JMP ($0000)               ;/

PNTR_00E3E4:        dw CODE_00E3FE                          ;$00 - World 1
                    dw CODE_00E426                          ;$01 - World 2
                    dw CODE_00E44E                          ;$02 - World 3
                    dw CODE_00E47C                          ;$03 - World 4
                    dw CODE_00E4AE                          ;$04 - World 5
                    dw CODE_00E4D4                          ;$05 - World 6
                    dw CODE_00E4EE                          ;$06 - World 7
                    dw CODE_00E3FE                          ;$07 - World 8
                    dw CODE_00E3FE                          ;$08 - World 9
                    dw CODE_00E4AE                          ;$09 - World A
                    dw CODE_00E4D4                          ;$0A - World B
                    dw CODE_00E4EE                          ;$0B - World C
                    dw CODE_00E3FE                          ;$0C - World D

CODE_00E3FE:        LDA $021A                 ;
CODE_00E401:        SEC                       ;
CODE_00E402:        SBC #$04                  ;
CODE_00E404:        STA $021A                 ;
CODE_00E407:        LDA $03AE                 ;
CODE_00E40A:        SEC                       ;
CODE_00E40B:        SBC #$04                  ;
CODE_00E40D:        STA $03AE                 ;
CODE_00E410:        LDA #$08                  ;
CODE_00E412:        STA $0F7D                 ;
CODE_00E415:        LDA #$01                  ;
CODE_00E417:        STA $1601                 ;
CODE_00E41A:        LDA #$FE                  ;
CODE_00E41C:        STA $00A1                 ;
CODE_00E41F:        STZ $043D                 ;
CODE_00E422:        STZ $041D                 ;
CODE_00E425:        RTS                       ;

CODE_00E426:        LDA $021A                 ;
CODE_00E429:        SEC                       ;
CODE_00E42A:        SBC #$0C                  ;
CODE_00E42C:        STA $021A                 ;
CODE_00E42F:        LDA $03AE                 ;
CODE_00E432:        SEC                       ;
CODE_00E433:        SBC #$0C                  ;
CODE_00E435:        STA $03AE                 ;
CODE_00E438:        LDA #$08                  ;
CODE_00E43A:        STA $0F7D                 ;
CODE_00E43D:        LDA #$01                  ;
CODE_00E43F:        STA $1601                 ;
CODE_00E442:        LDA #$FE                  ;
CODE_00E444:        STA $00A1                 ;
CODE_00E447:        STZ $043D                 ;
CODE_00E44A:        STZ $041D                 ;
CODE_00E44D:        RTS                       ;

CODE_00E44E:        LDA $021A                 ;
CODE_00E451:        SEC                       ;
CODE_00E452:        SBC #$04                  ;
CODE_00E454:        STA $021A                 ;
CODE_00E457:        LDA $03AE                 ;
CODE_00E45A:        SEC                       ;
CODE_00E45B:        SBC #$04                  ;
CODE_00E45D:        STA $03AE                 ;
CODE_00E460:        LDA #$08                  ;
CODE_00E462:        STA $0F7D                 ;
CODE_00E465:        STZ $021D                 ;
CODE_00E468:        LDA #$01                  ;
CODE_00E46A:        STA $1601                 ;
CODE_00E46D:        LDA #$FE                  ;
CODE_00E46F:        STA $00A1                 ;
CODE_00E472:        STZ $043D                 ;
CODE_00E475:        STZ $041D                 ;
CODE_00E478:        STZ $0BA0                 ;
CODE_00E47B:        RTS                       ;

CODE_00E47C:        LDA $021A                 ;
CODE_00E47F:        SEC                       ;
CODE_00E480:        SBC #$04                  ;
CODE_00E482:        STA $021A                 ;
CODE_00E485:        LDA $03AE                 ;
CODE_00E488:        SEC                       ;
CODE_00E489:        SBC #$04                  ;
CODE_00E48B:        STA $03AE                 ;
CODE_00E48E:        STA $0BB0                 ;
CODE_00E491:        STA $0BB1                 ;
CODE_00E494:        STA $0BB2                 ;
CODE_00E497:        STA $0BB3                 ;
CODE_00E49A:        LDA #$01                  ;
CODE_00E49C:        STA $1601                 ;
CODE_00E49F:        LDA #$FE                  ;
CODE_00E4A1:        STA $00A1                 ;
CODE_00E4A4:        STZ $043D                 ;
CODE_00E4A7:        STZ $041D                 ;
CODE_00E4AA:        STZ $0E67                 ;
CODE_00E4AD:        RTS                       ;

CODE_00E4AE:        LDA $021A                 ;
CODE_00E4B1:        SEC                       ;
CODE_00E4B2:        SBC #$0C                  ;
CODE_00E4B4:        STA $021A                 ;
CODE_00E4B7:        LDA $0238                 ;
CODE_00E4BA:        SEC                       ;
CODE_00E4BB:        SBC #$0C                  ;
CODE_00E4BD:        STA $0238                 ;
CODE_00E4C0:        LDA #$01                  ;
CODE_00E4C2:        STA $1601                 ;
CODE_00E4C5:        LDA #$FE                  ;
CODE_00E4C7:        STA $0B9E                 ;
CODE_00E4CA:        STA $00A1                 ;
CODE_00E4CD:        STZ $043D                 ;
CODE_00E4D0:        STZ $041D                 ;
CODE_00E4D3:        RTS                       ;

CODE_00E4D4:        LDA $021A                 ;
CODE_00E4D7:        SEC                       ;
CODE_00E4D8:        SBC #$0C                  ;
CODE_00E4DA:        STA $021A                 ;
CODE_00E4DD:        LDA #$01                  ;
CODE_00E4DF:        STA $1601                 ;
CODE_00E4E2:        LDA #$FD                  ;
CODE_00E4E4:        STA $00A1                 ;
CODE_00E4E7:        STZ $043D                 ;
CODE_00E4EA:        STZ $041D                 ;
CODE_00E4ED:        RTS                       ;

CODE_00E4EE:        STZ $1600                 ;
CODE_00E4F1:        LDA #$FE                  ;
CODE_00E4F3:        STA $00A1                 ;
CODE_00E4F6:        STZ $043D                 ;
CODE_00E4F9:        STZ $041D                 ;
CODE_00E4FC:        RTS                       ;

CODE_00E4FD:        REP #$20                  ;
CODE_00E4FF:        SEC                       ;
CODE_00E500:        SBC #$0008                ;
CODE_00E503:        SEC                       ;
CODE_00E504:        SBC $0042                 ;
CODE_00E507:        STA $01                   ;
CODE_00E509:        SEP #$20                  ;
CODE_00E50B:        STA $0900,y               ;
CODE_00E50E:        STA $0908,y               ;
CODE_00E511:        LDA #$2D                  ;
CODE_00E513:        STA $0903,y               ;
CODE_00E516:        STA $090B,y               ;
CODE_00E519:        XBA                       ;
CODE_00E51A:        CMP #$00                  ;
CODE_00E51C:        BEQ CODE_00E520           ;
CODE_00E51E:        LDA #$01                  ;
CODE_00E520:        ORA #$02                  ;
CODE_00E522:        STA $0D00,y               ;
CODE_00E525:        STA $0D08,y               ;
CODE_00E528:        RTS                       ;

CODE_00E529:        LDA $03CE                 ;
CODE_00E52C:        CMP #$D0                  ;
CODE_00E52E:        BCC CODE_00E542           ;
CODE_00E530:        AND #$08                  ;
CODE_00E532:        BEQ CODE_00E542           ;
CODE_00E534:        LDA $03CE                 ;
CODE_00E537:        SEC                       ;
CODE_00E538:        SBC #$08                  ;
CODE_00E53A:        STA $03CE                 ;
CODE_00E53D:        LDA #$30                  ;
CODE_00E53F:        STA $0BA6                 ;
CODE_00E542:        RTS                       ;

CODE_00E543:        LDA $0EEE                 ;
CODE_00E546:        BEQ CODE_00E54C           ;
CODE_00E548:        DEC $0EEE                 ;
CODE_00E54B:        RTS                       ;

CODE_00E54C:        LDA $0BA3                 ;
CODE_00E54F:        CMP #$C0                  ;
CODE_00E551:        BCS CODE_00E561           ;
CODE_00E553:        INC $0BA3                 ;
CODE_00E556:        LDA $0BA3                 ;
CODE_00E559:        CMP #$C0                  ;
CODE_00E55B:        BNE CODE_00E560           ;
CODE_00E55D:        JSR CODE_00E574           ;
CODE_00E560:        RTS                       ;

CODE_00E561:        JSL CODE_0E8171           ;
CODE_00E565:        RTS                       ;

CODE_00E566:        LDA $0BA4                 ;
CODE_00E569:        BNE CODE_00E573           ;
CODE_00E56B:        LDA #$01                  ;
CODE_00E56D:        STA $1601                 ;
CODE_00E570:        STA $0BA4                 ;
CODE_00E573:        RTS                       ;

CODE_00E574:        REP #$20                  ;
CODE_00E576:        PHD                       ;
CODE_00E577:        LDA #$1700                ;
CODE_00E57A:        TCD                       ;
CODE_00E57B:        LDA #$F15A                ;
CODE_00E57E:        STA $02                   ;
CODE_00E580:        LDA #$1300                ;
CODE_00E583:        STA $04                   ;
CODE_00E585:        LDA #$0019                ;
CODE_00E588:        STA $06                   ;
CODE_00E58A:        LDA #$001E                ;
CODE_00E58D:        STA $08                   ;
CODE_00E58F:        LDA #$001C                ;
CODE_00E592:        STA $0A                   ;
CODE_00E594:        LDA #$0011                ;
CODE_00E597:        STA $0C                   ;
CODE_00E599:        LDA #$0028                ;
CODE_00E59C:        STA $0E                   ;
CODE_00E59E:        LDA #$001C                ;
CODE_00E5A1:        STA $10                   ;
CODE_00E5A3:        LDA #$001D                ;
CODE_00E5A6:        STA $12                   ;
CODE_00E5A8:        LDA #$000A                ;
CODE_00E5AB:        STA $14                   ;
CODE_00E5AD:        LDA #$001B                ;
CODE_00E5B0:        STA $16                   ;
CODE_00E5B2:        LDA #$001D                ;
CODE_00E5B5:        STA $18                   ;
CODE_00E5B7:        SEP #$20                  ;
CODE_00E5B9:        LDA #$FF                  ;
CODE_00E5BB:        STA $1A                   ;
CODE_00E5BD:        PLD                       ;
CODE_00E5BE:        LDA #$15                  ;
CODE_00E5C0:        STA $1603                 ;
CODE_00E5C3:        RTS                       ;

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
