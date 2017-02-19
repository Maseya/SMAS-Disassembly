;Super Mario Bros. 2

DATA_138000:        dw $F000
                    dw $F800
                    dw $F000
                    dw $8000
                    dw $F000
                    dw $F800
                    dw $8800
 
DATA_13800E:        db $16,$16,$16,$17,$16,$16,$17

DATA_138015:        dw $D800
                    dw $9800
                    dw $D800
                    dw $A000
                    dw $D800
                    dw $9800
                    dw $A800

DATA_138023:        db $16,$17,$16,$17,$16,$17,$17

DATA_13802A:        dw $D000
                    dw $D800
                    dw $D000
                    dw $E000
                    dw $E800
                    dw $D800
                    dw $F000

DATA_138038:        dw $8000
                    dw $9000
                    dw $8000
                    dw $A000
                    dw $8000
                    dw $9000
                    dw $B000

DATA_138046:        db $18,$18,$18,$18,$18,$18,$18

DATA_13804D:        dw $C800
                    dw $C800
                    dw $C800
                    dw $C800
                    dw $C800
                    dw $C800
                    dw $C800

DATA_13805B:        db $18,$18,$18,$18,$18,$18,$18
                   
CODE_138062:        REP #$20              ; Accumulator = 16-bit.           
CODE_138064:        LDA.w #DATA_19E000    ; \ Load sprite GFX tiles 00-7F. (00-1F will get overwritten)
CODE_138067:        STA $0D               ;  | ($19E000)
CODE_138069:        LDX.b #DATA_19E000>>16 ;  |
CODE_13806B:        STX $0F               ; /
CODE_13806D:        LDA #$1000            ; \ Amount of bytes to transfer = #$1000. 
CODE_138070:        STA $0B               ; /
CODE_138072:        LDA #$6000            ; \ First GFX slot. 
CODE_138075:        JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_138078:        LDA.w #DATA_16C000    ; \ Load sprite GFX tiles 80-13F.
CODE_13807B:        STA $0D               ;  | ($16C000)
CODE_13807D:        LDX.b #DATA_16C000>>16 ;  |
CODE_13807F:        STX $0F               ; /
CODE_138081:        LDA #$1800            ; \ Amount of bytes to transfer = #$1800. 
CODE_138084:        STA $0B               ; /
CODE_138086:        LDA #$6800            ; \ Second and first half of third GFX slots. 
CODE_138089:        JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_13808C:        LDA $0635             ; \ Get world number into Y, *2 into X index.
CODE_13808F:        AND #$00FF            ;  |
CODE_138092:        TAY                   ;  |
CODE_138093:        ASL A                 ;  |
CODE_138094:        TAX                   ; /
CODE_138095:        PHX                   ; Hold X to get later. 
CODE_138096:        LDA.l DATA_138000,x     ; \ Load sprite GFX tiles 140-17F from pointer.
CODE_13809A:        STA $0D               ;  |
CODE_13809C:        TYX                   ;  |
CODE_13809D:        LDA.l DATA_13800E,x     ;  |     
CODE_1380A1:        TAX                   ;  |
CODE_1380A2:        STX $0F               ; /
CODE_1380A4:        LDA #$0800            ; \ Amount of bytes to transfer = #$0800.
CODE_1380A7:        STA $0B               ; /
CODE_1380A9:        LDA #$7400            ; \ Second half of third GFX slot. 
CODE_1380AC:        JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380AF:        PLX                   ; \ Get world number * 2 back.
CODE_1380B0:        PHX                   ; /
CODE_1380B1:        LDA.l DATA_138015,x     ; \ Load sprite GFX tiles 180-1BF from pointer.
CODE_1380B5:        STA $0D               ;  |
CODE_1380B7:        TYX                   ;  |
CODE_1380B8:        LDA.l DATA_138023,x     ;  |     
CODE_1380BC:        TAX                   ;  |
CODE_1380BD:        STX $0F               ; /
CODE_1380BF:        LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_1380C2:        STA $0B               ; /
CODE_1380C4:        LDA #$7800            ; \ First half of fourth GFX slot. 
CODE_1380C7:        JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380CA:        LDA.w #DATA_179000    ; \ Load sprite GFX tiles 1C0-1FF.
CODE_1380CD:        STA $0D               ;  | ($179000)
CODE_1380CF:        LDX.b #DATA_179000>>16 ;  |
CODE_1380D1:        STX $0F               ; /
CODE_1380D3:        LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_1380D6:        STA $0B               ; /
CODE_1380D8:        LDA #$7C00            ; \ Second half of fourth GFX slot. 
CODE_1380DB:        JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380DE:        PLX                   ; \ Get world number * 2 back.
CODE_1380DF:        PHX                   ; /
CODE_1380E0:        LDA.l DATA_138038,x     ; \ Load layer GFX tiles 00-7F from pointer.      
CODE_1380E4:        STA $0D               ;  |
CODE_1380E6:        TYX                   ;  |
CODE_1380E7:        LDA.l DATA_138046,x     ;  |     
CODE_1380EB:        TAX                   ;  |
CODE_1380EC:        STX $0F               ; /
CODE_1380EE:        LDA #$1000            ; \ Amount of bytes to transfer = #$1000.
CODE_1380F1:        STA $0B               ; /
CODE_1380F3:        LDA #$2000            ; \ First GFX slot.
CODE_1380F6:        JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_1380F9:        LDA.w #DATA_18C000    ; \ Load layer GFX tiles 80-BF.
CODE_1380FC:        STA $0D               ;  | ($18C000)
CODE_1380FE:        LDX.b #DATA_18C000>>16 ;  |
CODE_138100:        STX $0F               ; /
CODE_138102:        LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_138105:        STA $0B               ; /
CODE_138107:        LDA #$2800            ; \ First half of second GFX slot.
CODE_13810A:        JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_13810D:        PLX                   ; Get world num * 2. 
CODE_13810E:        LDA.l DATA_13804D,x     ; \ Load layer GFX tiles C0-FF from pointer.
CODE_138112:        STA $0D               ;  |
CODE_138114:        TYX                   ;  |
CODE_138115:        LDA.l DATA_13805B,x     ;  |     
CODE_138119:        TAX                   ;  |
CODE_13811A:        STX $0F               ; /
CODE_13811C:        LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_13811F:        STA $0B               ; /
CODE_138121:        LDA #$2C00            ; \ Second half of second GFX slot.
CODE_138124:        JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_138127:        SEP #$20              ; Accumulator = 8-bit.
CODE_138129:        RTL                   ; Return.

DATA_13812A:        db $C8,$C8,$C8,$C8,$C8,$C8,$00,$00
                    db $00,$00,$C8,$C8,$C8,$C8,$C8,$00
                    db $00,$00,$00,$00,$C8,$B8,$00,$00
                    db $00,$00,$00,$00,$00,$00,$F0,$80
                    db $80,$00,$F0,$00,$00,$00,$00,$00
                    db $80,$F0,$80,$80,$F0,$80,$00,$00
                    db $00,$00,$80,$F0,$80,$80,$80,$80
                    db $80,$B8,$00,$00,$C8,$C8,$C8,$C8
                    db $C8,$00,$00,$00,$00,$00,$C8,$C8
                    db $C8,$00,$00,$00,$00,$00,$00,$00
                    db $C8,$C8,$00,$00,$00,$00,$B8,$C8
                    db $00,$00,$A0,$A0,$00,$00,$00,$00
                    db $00,$00,$00,$00,$B0,$A0,$A0,$00
                    db $B0,$00,$00,$00,$00,$00,$B0,$A0
                    db $00,$00,$00,$B8,$B0,$B0,$00,$00
                    db $C8,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$B8,$B8,$B8,$B8,$B8
                    db $00,$00,$00,$00,$00,$C8,$00,$00
                    db $00,$00,$00,$00,$00,$00,$F0,$80
                    db $80,$80,$80,$80,$F0,$00,$00,$00
                    db $80,$B8,$80,$00,$00,$00,$00,$00
                    db $00,$00,$80,$F0,$80,$00,$00,$80
                    db $80,$00,$00,$00,$00,$C0,$C0,$00
                    db $D0,$D0,$00,$00,$00,$00,$00,$D0
                    db $D0,$D0,$D0,$D0,$D0,$D0,$D0,$00
         
DATA_1381F2:        db $D0,$D0,$D0,$D0,$D0,$D0,$00,$00
                    db $00,$00,$D0,$D0,$D0,$D0,$D0,$00
                    db $00,$00,$00,$00,$D0,$C0,$E0,$E0
                    db $E0,$00,$00,$00,$00,$00,$F8,$88
                    db $88,$00,$F8,$00,$00,$00,$00,$00
                    db $88,$F8,$88,$88,$F8,$88,$00,$00
                    db $00,$00,$88,$F8,$88,$88,$88,$88
                    db $88,$C0,$00,$00,$D0,$D0,$D0,$D0
                    db $D0,$00,$00,$00,$00,$00,$D0,$D0
                    db $D0,$00,$00,$00,$00,$00,$00,$00
                    db $D0,$D0,$E0,$E0,$E0,$E0,$C0,$D0
                    db $E0,$00,$A8,$A8,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$A8,$A8,$00
                    db $00,$00,$00,$00,$00,$00,$00,$A8
                    db $E0,$E0,$00,$C0,$00,$00,$00,$00
                    db $D0,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$98,$98,$98,$98,$98
                    db $00,$00,$00,$00,$00,$D0,$00,$D0
                    db $00,$00,$00,$00,$00,$00,$F8,$88
                    db $88,$88,$88,$88,$F8,$00,$00,$00
                    db $88,$98,$88,$00,$00,$00,$00,$00
                    db $00,$00,$88,$F8,$88,$00,$00,$88
                    db $88,$00,$00,$00,$00,$C8,$C8,$00
                    db $D8,$D8,$00,$00,$00,$00,$00,$D8
                    db $D8,$D8,$D8,$D8,$D8,$D8,$D8,$00

DATA_1382BA:        db $D8,$D8,$D8,$D8,$D8,$D8,$00,$00
                    db $00,$00,$D8,$D8,$D8,$D8,$D8,$00
                    db $00,$00,$00,$00,$D8,$C8,$E8,$E8
                    db $E8,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$90,$00,$00,$90,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$C8,$00,$00,$D8,$D8,$D8,$D8
                    db $D8,$00,$00,$00,$00,$00,$D8,$D8
                    db $D8,$00,$00,$00,$00,$00,$00,$00
                    db $D8,$D8,$E8,$E8,$E8,$E8,$C8,$E8
                    db $E8,$00,$98,$98,$00,$00,$00,$00
                    db $00,$00,$00,$00,$B0,$98,$98,$00
                    db $B0,$00,$00,$00,$00,$00,$B0,$98
                    db $E8,$E8,$00,$C8,$B0,$B0,$00,$00
                    db $D8,$D8,$D8,$00,$00,$00,$00,$00
                    db $00,$00,$D8,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$D8,$00,$D8,$D8
                    db $00,$D8,$00,$00,$00,$00,$90,$00
                    db $00,$00,$00,$00,$90,$00,$00,$00
                    db $00,$E8,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$F8,$F8,$00
                    db $E0,$E0,$00,$00,$00,$00,$00,$E0
                    db $E0,$E0,$E0,$E0,$E0,$E0,$E0,$00

DATA_138382:        db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00
                    db $00,$00,$1B,$1B,$1B,$1B,$1B,$00
                    db $00,$00,$00,$00,$1B,$1D,$1B,$1B
                    db $1B,$1B,$00,$00,$00,$00,$1B,$1C
                    db $1C,$00,$1B,$00,$00,$00,$00,$00
                    db $1C,$1B,$1C,$1C,$1B,$1C,$00,$00
                    db $00,$00,$1C,$1B,$1C,$1C,$1C,$1C
                    db $1C,$1D,$00,$00,$1B,$1B,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1B
                    db $1B,$00,$1C,$1C,$00,$00,$00,$00
                    db $00,$00,$00,$00,$1C,$1C,$1C,$00
                    db $1C,$00,$00,$00,$00,$00,$1C,$1C
                    db $00,$1C,$00,$1D,$1C,$1C,$00,$00
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$1C,$1C,$1C,$1C,$1C
                    db $00,$00,$00,$00,$00,$1B,$00,$00
                    db $00,$00,$00,$00,$00,$00,$1B,$1C
                    db $1C,$1C,$1C,$1C,$1B,$00,$00,$00
                    db $1C,$1C,$1C,$00,$00,$00,$00,$00
                    db $00,$00,$1C,$1B,$1C,$00,$00,$1C
                    db $1C,$00,$00,$00,$00,$1C,$1C,$00
                    db $1C,$1C,$00,$00,$00,$00,$00,$1C
                    db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00

DATA_13844A:        db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00
                    db $00,$00,$1B,$1B,$1B,$1B,$1B,$00
                    db $00,$00,$00,$00,$1B,$1D,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$1B,$1C
                    db $1C,$00,$1B,$00,$00,$00,$00,$00
                    db $1C,$1B,$1C,$1C,$1B,$1C,$00,$00
                    db $00,$00,$1C,$1B,$1C,$1C,$1C,$1C
                    db $1C,$1D,$00,$00,$1B,$1B,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1B
                    db $1B,$00,$1C,$1C,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$1C,$1C,$00
                    db $00,$00,$00,$00,$00,$00,$00,$1C
                    db $1B,$1B,$00,$1D,$00,$00,$00,$00
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$1C,$1C,$1C,$1C,$1C
                    db $00,$00,$00,$00,$00,$1B,$00,$1B
                    db $00,$00,$00,$00,$00,$00,$1B,$1C
                    db $1C,$1C,$1C,$1C,$1B,$00,$00,$00
                    db $1C,$1C,$1C,$00,$00,$00,$00,$00
                    db $00,$00,$1C,$1B,$1C,$00,$00,$1C
                    db $1C,$00,$00,$00,$00,$1C,$1C,$00
                    db $1C,$1C,$00,$00,$00,$00,$00,$1C
                    db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00

DATA_138512:        db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00
                    db $00,$00,$1B,$1B,$1B,$1B,$1B,$00
                    db $00,$00,$00,$00,$1B,$1D,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$1C,$00,$00,$1C,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$1D,$00,$00,$1B,$1B,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$1B,$1B
                    db $1B,$00,$00,$00,$00,$00,$00,$00
                    db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1C
                    db $1B,$00,$1C,$1C,$00,$00,$00,$00
                    db $00,$00,$00,$00,$1C,$1C,$1C,$00
                    db $1C,$00,$00,$00,$00,$00,$1C,$1C
                    db $1B,$1B,$00,$1D,$1C,$1C,$00,$00
                    db $1B,$1B,$1B,$00,$00,$00,$00,$00
                    db $00,$00,$1B,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$1B,$00,$1B,$1B
                    db $00,$1B,$00,$00,$00,$00,$1C,$00
                    db $00,$00,$00,$00,$1C,$00,$00,$00
                    db $00,$1C,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$1C,$1C,$00
                    db $1C,$1C,$00,$00,$00,$00,$00,$1C
                    db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00

CODE_1385DA:        LDA $0770
CODE_1385DD:        BEQ CODE_1385E3           
CODE_1385DF:        LDA #$06                  
CODE_1385E1:        BRA CODE_1385E6           

CODE_1385E3:        LDA $0534                 ; \ Get level + room number into index.
CODE_1385E6:        STA $00                   ;  |
CODE_1385E8:        STZ $01                   ;  |
CODE_1385EA:        REP #$30                  ;  | Accumulator & Index = 16-bit.
CODE_1385EC:        LDA $0533                 ;  |
CODE_1385EF:        AND #$00FF                ;  |
CODE_1385F2:        TAX                       ;  |
CODE_1385F3:        LDA.l DATA_11D098,x         ;  | 
CODE_1385F7:        AND #$00FF                ;  |
CODE_1385FA:        CLC                       ;  |
CODE_1385FB:        ADC $00                   ;  |
CODE_1385FD:        TAX                       ; /
CODE_1385FE:        LDA.l DATA_13812A,x         ; \ Tiles of the FG/BG slots 140-17F, high byte.
CODE_138602:        AND #$00FF                ;  |
CODE_138605:        XBA                       ;  |
CODE_138606:        STA $02CB                 ; /
CODE_138609:        LDA.l DATA_1381F2,x         ; \ Tiles of the FG/BG slots 180-1BF, high byte.
CODE_13860D:        AND #$00FF                ;  |
CODE_138610:        XBA                       ;  |
CODE_138611:        STA $02CD                 ; /
CODE_138614:        LDA.l DATA_1382BA,x         ; \ Tiles of the FG/BG slots 1C0-1FF, high byte.  
CODE_138618:        AND #$00FF                ;  |
CODE_13861B:        XBA                       ;  |
CODE_13861C:        STA $02CF                 ; /
CODE_13861F:        LDA.l DATA_138382,x         ; \ Tiles of the FG/BG slots 140-17F, bank byte.     
CODE_138623:        STA $02D1                 ; /
CODE_138626:        LDA.l DATA_13844A,x         ; \ Tiles of the FG/BG slots 180-1BF, bank byte.  
CODE_13862A:        STA $02D3                 ; /
CODE_13862D:        LDA.l DATA_138512,x         ; \ Tiles of the FG/BG slots 1C0-1FF, bank byte.  
CODE_138631:        STA $02D5                 ; /
CODE_138634:        SEP #$10                  ; Index = 8-bit.
CODE_138636:        LDX $0635                 ; \ If not in World 7, branch.
CODE_138639:        CPX #$06                  ;  |
CODE_13863B:        BNE CODE_138646           ; /
CODE_13863D:        LDA.w #DATA_1DB000        ; \ $1DB000 = Tiles of the FG/BG slots 100-13F
CODE_138640:        STA $0D                   ;  | Metal ground graphics.
CODE_138642:        LDX.b #DATA_1DB000>>16      ;  |
CODE_138644:        BRA CODE_13864D           ; /

CODE_138646:        LDA.w #DATA_1BC000        ; \ $1BC000 = Tiles of the FG/BG slots 100-13F.
CODE_138649:        STA $0D                   ;  |
CODE_13864B:        LDX.b #DATA_1BC000>>16    ;  |
CODE_13864D:        STX $0F                   ; /
CODE_13864F:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138652:        STA $0B                   ; /
CODE_138654:        LDA #$3000                ; \ First half of third GFX slot.
CODE_138657:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13865A:        LDA $02CB                 ; \ Load tiles 140-17F of the FG/BG slots from pointer.
CODE_13865D:        STA $0D                   ;  |
CODE_13865F:        LDX $02D1                 ;  |
CODE_138662:        STX $0F                   ; /
CODE_138664:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138667:        STA $0B                   ; /
CODE_138669:        LDA #$3400                ; \ Second half of third GFX slot.
CODE_13866C:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13866F:        LDA $02CD                 ; \ Load tiles 180-1BF of the FG/BG slots from pointer.
CODE_138672:        STA $0D                   ;  |
CODE_138674:        LDX $02D3                 ;  |
CODE_138677:        STX $0F                   ; /
CODE_138679:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13867C:        STA $0B                   ; /
CODE_13867E:        LDA #$3800                ; \ First half of fourth GFX slot
CODE_138681:        JSR CODE_138AC4           ; / Transfer to VRAM
CODE_138684:        LDA $02CF                 ; \ Load tiles 1C0-1FF of the FG/BG slots from pointer.
CODE_138687:        STA $0D                   ;  |
CODE_138689:        LDX $02D5                 ;  |
CODE_13868C:        STX $0F                   ; /
CODE_13868E:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138691:        STA $0B                   ; /
CODE_138693:        LDA #$3C00                ; \ Second half of fourth GFX slot.
CODE_138696:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138699:        LDX $0533                 ; \ Load different graphics for tiles C0-FF of the FG/BG slots if the following levels:
CODE_13869C:        CPX #$02                  ;  | Level 1-3...
CODE_13869E:        BEQ CODE_1386BC           ;  |
CODE_1386A0:        CPX #$08                  ;  | Level 3-3...
CODE_1386A2:        BEQ CODE_1386BC           ;  |
CODE_1386A4:        CPX #$0B                  ;  | or level 4-3.
CODE_1386A6:        BEQ CODE_1386BC           ;  |
CODE_1386A8:        CPX #$11                  ;  | If NOT level 5-3, even different tiles are used for tiles C0-FF of the FG/BG slots.
CODE_1386AA:        BNE CODE_1386D2           ;  |
CODE_1386AC:        LDX $0534                 ;  | If it's level 5-3 and the sixth room is entered...
CODE_1386AF:        CPX #$05                  ;  | ...use the tiles from 1-3, 3-3 and 4-3.
CODE_1386B1:        BEQ CODE_1386BC           ;  |
CODE_1386B3:        LDA.w #DATA_18C800        ;  | Graphics from $18C800 are used.
CODE_1386B6:        STA $0D                   ;  | $0800 bytes.
CODE_1386B8:        LDX.b #DATA_18C800>>16    ;  |
CODE_1386BA:        BRA CODE_1386C3           ; /

CODE_1386BC:        LDA.w #DATA_1D9000        ; \ 1-3, 3-3, 4-3 or 5-3 room 6.
CODE_1386BF:        STA $0D                   ;  | They use graphics from $1D9000.
CODE_1386C1:        LDX.b #DATA_1D9000>>16    ;  |
CODE_1386C3:        STX $0F                   ;  |
CODE_1386C5:        LDA #$0800                ;  | $0800 bytes also.
CODE_1386C8:        STA $0B                   ;  |
CODE_1386CA:        LDA #$2C00                ;  | VRAM destination is where tiles C0-FF go.
CODE_1386CD:        JSR CODE_138AC4           ;  | Transfer to VRAM.
CODE_1386D0:        BRA CODE_1386ED           ; / Branch.

CODE_1386D2:        LDX $0533                 ; \ If NOT 7-2...
CODE_1386D5:        CPX #$13                  ;  | ...then don't load any new tiles at all.
CODE_1386D7:        BNE CODE_1386ED           ;  |
CODE_1386D9:        LDA.w #DATA_1DA000        ;  | 7-2 uses graphics from $1DA000.
CODE_1386DC:        STA $0D                   ;  |
CODE_1386DE:        LDX.b #DATA_1DA000>>16    ;  |
CODE_1386E0:        STX $0F                   ;  |
CODE_1386E2:        LDA #$0800                ;  | $0800 bytes as usual.
CODE_1386E5:        STA $0B                   ;  |
CODE_1386E7:        LDA #$2C00                ;  | VRAM destination is where tiles C0-FF go.
CODE_1386EA:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_1386ED:        LDX #$00                  
CODE_1386EF:        STX $0773                 
CODE_1386F2:        LDX $0533                 ; \ Level 2-1...
CODE_1386F5:        CPX #$03                  ;  | (If not, branch.)
CODE_1386F7:        BNE CODE_138704           ;  |
CODE_1386F9:        LDX $0534                 ;  | The second room.
CODE_1386FC:        CPX #$01                  ;  |
CODE_1386FE:        BEQ CODE_13871D           ;  |
CODE_138700:        CPX #$02                  ;  | Or the third room.
CODE_138702:        BEQ CODE_13871D           ; / If either, branch.
CODE_138704:        LDX $0533                 ; \ Level 2-3...
CODE_138707:        CPX #$05                  ;  | (If not, branch and return.)
CODE_138709:        BNE CODE_138736           ;  |
CODE_13870B:        LDX $0534                 ;  |
CODE_13870E:        CPX #$03                  ;  | The fourth room...
CODE_138710:        BEQ CODE_13871D           ;  |
CODE_138712:        LDX $0534                 ;  | Or the sixth room...
CODE_138715:        CPX #$05                  ;  | (Extra LDX $0534 is redundant, by the way.)
CODE_138717:        BEQ CODE_13871D           ;  |
CODE_138719:        CPX #$07                  ;  | Or the eighth room.
CODE_13871B:        BNE CODE_138736           ;  | If none of these, return.
CODE_13871D:        LDA #$A800                ;  | Upload stone graphics to 100-13F.
CODE_138720:        STA $0D                   ;  | Source: $1DA800.
CODE_138722:        LDX #$1D                  ;  |
CODE_138724:        STX $0F                   ;  |
CODE_138726:        LDA #$0800                ;  | Size: $0800 (x40 tiles)
CODE_138729:        STA $0B                   ;  |
CODE_13872B:        LDA #$3000                ;  | Destination: FG/BG tile slots 100-13F.
CODE_13872E:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138731:        LDX #$01                  
CODE_138733:        STX $0773                 
CODE_138736:        SEP #$20                  ; A = 8-bit.
CODE_138738:        RTL                       ; Return.

DATA_138739:        dw $8000      ; Icy ground graphics.
                    dw $9800      ; Wood graphics.
              
CODE_13873D:        REP #$20                  ; Accumulator = 16-bit.
CODE_13873F:        LDX $0533                 ; \ Check if in level 5-3.
CODE_138742:        CPX #$0E                  ;  |
CODE_138744:        BNE CODE_13874A           ; / If not, branch.
CODE_138746:        LDX #$02                  ; Layer tiles 200-23F = $1D9800.
CODE_138748:        BRA CODE_13874D           

CODE_13874A:        LDX $04EF                 
CODE_13874D:        LDA.l DATA_138739,x         ; \ Load GFX pointer for layer tiles 200-23F.
CODE_138751:        STA $0D                   ;  | Into [$0D]
CODE_138753:        LDX #$1D                  ;  |
CODE_138755:        STX $0F                   ; /
CODE_138757:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13875A:        STA $0B                   ; /
CODE_13875C:        LDA #$4000                ; \ First half of fifth GFX slot.
CODE_13875F:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138762:        LDA #$9000                ; \ Layer tiles 240-27F pointer into [$0D]
CODE_138765:        STA $0D                   ;  | ($1D9000)
CODE_138767:        LDX #$1D                  ;  |
CODE_138769:        STX $0F                   ; /
CODE_13876B:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13876E:        STA $0B                   ; /
CODE_138770:        LDA #$4400                ; \ Second half of fifth GFX slot.
CODE_138773:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138776:        SEP #$20                  ; Accumulator = 8-bit.
CODE_138778:        RTL                       ; Return.

DATA_138779:        db $18,$38,$58,$75,$91,$B0,$C3
            
CODE_138780:        LDA #$06                  
CODE_138782:        STA $00                   
CODE_138784:        LDX $0533                 
CODE_138787:        LDA.l DATA_11D098,x             
CODE_13878B:        CLC                       
CODE_13878C:        ADC $0534                 
CODE_13878F:        LDX $00                   
CODE_138791:        CMP.l DATA_138779,x             
CODE_138795:        BEQ CODE_13879D           
CODE_138797:        DEX                       
CODE_138798:        BPL CODE_138791           
CODE_13879A:        BRL CODE_1387D7           

CODE_13879D:        CPX #$06                  
CODE_13879F:        BNE CODE_1387BB           
CODE_1387A1:        PHX                       
CODE_1387A2:        REP #$20                  
CODE_1387A4:        LDA #$F800                
CODE_1387A7:        STA $0D                   
CODE_1387A9:        LDX #$17                  
CODE_1387AB:        STX $0F                   
CODE_1387AD:        LDA #$0800                
CODE_1387B0:        STA $0B                   
CODE_1387B2:        LDA #$7800                
CODE_1387B5:        JSR CODE_138AE7           
CODE_1387B8:        SEP #$20                  
CODE_1387BA:        PLX                       
CODE_1387BB:        TXA                       
CODE_1387BC:        ASL A                     
CODE_1387BD:        TAX                       
CODE_1387BE:        REP #$20                  
CODE_1387C0:        LDA.l DATA_13802A,x             
CODE_1387C4:        STA $0D                   
CODE_1387C6:        LDX #$17                  
CODE_1387C8:        STX $0F                   
CODE_1387CA:        LDA #$0800                
CODE_1387CD:        STA $0B                   
CODE_1387CF:        LDA #$7C00                
CODE_1387D2:        JSR CODE_138AE7           
CODE_1387D5:        SEP #$20                  
CODE_1387D7:        RTL                       

CODE_1387D8:        REP #$20                  
CODE_1387DA:        LDA #$8000                
CODE_1387DD:        STA $0D                   
CODE_1387DF:        LDX #$19                  
CODE_1387E1:        STX $0F                   
CODE_1387E3:        LDA #$0800                
CODE_1387E6:        STA $0B                   
CODE_1387E8:        LDA #$2000                
CODE_1387EB:        JSR CODE_138AC4           
CODE_1387EE:        LDA #$A000                
CODE_1387F1:        STA $0D                   
CODE_1387F3:        LDX #$19                  
CODE_1387F5:        STX $0F                   
CODE_1387F7:        LDA #$0800                
CODE_1387FA:        STA $0B                   
CODE_1387FC:        LDA #$2400                
CODE_1387FF:        JSR CODE_138AC4           
CODE_138802:        LDA #$9000                
CODE_138805:        STA $0D                   
CODE_138807:        LDX #$19                  
CODE_138809:        STX $0F                   
CODE_13880B:        LDA #$0800                
CODE_13880E:        STA $0B                   
CODE_138810:        LDA #$2800                
CODE_138813:        JSR CODE_138AC4           
CODE_138816:        LDA #$F000                
CODE_138819:        STA $0D                   
CODE_13881B:        LDX #$19                  
CODE_13881D:        STX $0F                   
CODE_13881F:        LDA #$0800                
CODE_138822:        STA $0B                   
CODE_138824:        LDA #$2C00                
CODE_138827:        JSR CODE_138AC4           
CODE_13882A:        SEP #$20                  
CODE_13882C:        RTL                       

CODE_13882D:        REP #$20                  
CODE_13882F:        LDA #$8800                
CODE_138832:        STA $0D                   
CODE_138834:        LDX #$19                  
CODE_138836:        STX $0F                   
CODE_138838:        LDA #$0800                
CODE_13883B:        STA $0B                   
CODE_13883D:        LDA #$2400                
CODE_138840:        JSR CODE_138AC4           
CODE_138843:        SEP #$20                  
CODE_138845:        RTL                       

CODE_138846:        REP #$20                  
CODE_138848:        LDA #$B000                
CODE_13884B:        STA $0D                   
CODE_13884D:        LDX #$19                  
CODE_13884F:        STX $0F                   
CODE_138851:        LDA #$1000                
CODE_138854:        STA $0B                   
CODE_138856:        LDA #$3000                
CODE_138859:        JSR CODE_138AC4           
CODE_13885C:        LDA #$A800                
CODE_13885F:        STA $0D                   
CODE_138861:        LDX #$19                  
CODE_138863:        STX $0F                   
CODE_138865:        LDA #$0800                
CODE_138868:        STA $0B                   
CODE_13886A:        LDA #$3800                
CODE_13886D:        JSR CODE_138AC4           
CODE_138870:        LDA #$9800                
CODE_138873:        STA $0D                   
CODE_138875:        LDX #$19                  
CODE_138877:        STX $0F                   
CODE_138879:        LDA #$0800                
CODE_13887C:        STA $0B                   
CODE_13887E:        LDA #$3C00                
CODE_138881:        JSR CODE_138AC4           
CODE_138884:        SEP #$20                  
CODE_138886:        RTL                       

CODE_138887:        REP #$20                  
CODE_138889:        LDA #$B000                
CODE_13888C:        STA $0D                   
CODE_13888E:        LDX #$17                  
CODE_138890:        STX $0F                   
CODE_138892:        LDA #$0800                
CODE_138895:        STA $0B                   
CODE_138897:        LDA #$3400                
CODE_13889A:        JSR CODE_138AC4           
CODE_13889D:        SEP #$20                  
CODE_13889F:        RTL                       

CODE_1388A0:        REP #$20                  
CODE_1388A2:        LDA #$C000                
CODE_1388A5:        STA $0D                   
CODE_1388A7:        LDX #$19                  
CODE_1388A9:        STX $0F                   
CODE_1388AB:        LDA #$0800                
CODE_1388AE:        STA $0B                   
CODE_1388B0:        LDA #$2C00                
CODE_1388B3:        JSR CODE_138AC4           
CODE_1388B6:        LDA #$9800                
CODE_1388B9:        STA $0D                   
CODE_1388BB:        LDX #$19                  
CODE_1388BD:        STX $0F                   
CODE_1388BF:        LDA #$0800                
CODE_1388C2:        STA $0B                   
CODE_1388C4:        LDA #$3C00                
CODE_1388C7:        JSR CODE_138AC4           
CODE_1388CA:        LDA #$0800                
CODE_1388CD:        STA $0B                   
CODE_1388CF:        LDA #$B800                
CODE_1388D2:        STA $0D                   
CODE_1388D4:        LDX #$17                  
CODE_1388D6:        STX $0F                   
CODE_1388D8:        LDA #$7C00                
CODE_1388DB:        JSR CODE_138AE7           
CODE_1388DE:        LDA #$0800                
CODE_1388E1:        STA $0B                   
CODE_1388E3:        LDA #$C000                
CODE_1388E6:        STA $0D                   
CODE_1388E8:        LDX #$17                  
CODE_1388EA:        STX $0F                   
CODE_1388EC:        LDA #$7800                
CODE_1388EF:        JSR CODE_138AE7           
CODE_1388F2:        SEP #$20                  
CODE_1388F4:        RTL                       

CODE_1388F5:        REP #$20                  ; Accumulator = 16-bit.
CODE_1388F7:        LDA #$8000                ; \ Layer tiles 00-3F.
CODE_1388FA:        STA $0D                   ;  | ($1A8000)
CODE_1388FC:        LDX #$1A                  ;  |
CODE_1388FE:        STX $0F                   ; /
CODE_138900:        LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138903:        STA $0B                   ; /
CODE_138905:        LDA #$2000                ; \ First half of first GFX slot.
CODE_138908:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13890B:        LDA.w #DATA_19C800        ; \ Layer tiles 40-FF.
CODE_13890E:        STA $0D                   ;  | ($19C800)
CODE_138910:        LDX.b #DATA_19C800>>16    ;  |
CODE_138912:        STX $0F                   ; /
CODE_138914:        LDA #$1800                ; \ Amount of bytes to transfer = #$1800.
CODE_138917:        STA $0B                   ; /
CODE_138919:        LDA #$2400                ; \ Second half of first and full second GFX slot.
CODE_13891C:        JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13891F:        LDA #$4000                ; \ Amount of bytes to transfer = #$4000.
CODE_138922:        STA $0B                   ; /
CODE_138924:        LDA.w #DATA_1B8000        ; \ Sprite tiles 00-1FF.
CODE_138927:        STA $0D                   ;  | ($1B8000)
CODE_138929:        LDX.b #DATA_1B8000>>16    ;  |
CODE_13892B:        STX $0F                   ; /
CODE_13892D:        LDA #$6000                ; \ All four GFX slots.
CODE_138930:        JSR CODE_138AE7           ; / Transfer to VRAM.
CODE_138933:        SEP #$20                  ; Accumulator = 8-bit.
CODE_138935:        RTL                       ; Return.

CODE_138936:        PHB                       
CODE_138937:        PHK                       
CODE_138938:        PLB                       
CODE_138939:        REP #$20                  
CODE_13893B:        LDA #$D000                
CODE_13893E:        STA $0D                   
CODE_138940:        LDX #$18                  
CODE_138942:        STX $0F                   
CODE_138944:        LDA #$0800                
CODE_138947:        STA $0B                   
CODE_138949:        LDA #$2000                
CODE_13894C:        JSR CODE_138AC4           
CODE_13894F:        LDA #$F000                
CODE_138952:        STA $0D                   
CODE_138954:        LDX #$1C                  
CODE_138956:        STX $0F                   
CODE_138958:        LDA #$0800                
CODE_13895B:        STA $0B                   
CODE_13895D:        LDA #$2400                
CODE_138960:        JSR CODE_138AC4           
CODE_138963:        LDA #$F800                
CODE_138966:        STA $0D                   
CODE_138968:        LDX #$19                  
CODE_13896A:        STX $0F                   
CODE_13896C:        LDA #$0800                
CODE_13896F:        STA $0B                   
CODE_138971:        LDA #$2800                
CODE_138974:        JSR CODE_138AC4           
CODE_138977:        LDA #$B000                
CODE_13897A:        STA $0D                   
CODE_13897C:        LDX #$1B                  
CODE_13897E:        STX $0F                   
CODE_138980:        LDA #$0800                
CODE_138983:        STA $0B                   
CODE_138985:        LDA #$2C00                
CODE_138988:        JSR CODE_138AC4           
CODE_13898B:        LDA #$9800                
CODE_13898E:        STA $0D                   
CODE_138990:        LDX #$19                  
CODE_138992:        STX $0F                   
CODE_138994:        LDA #$0800                
CODE_138997:        STA $0B                   
CODE_138999:        LDA #$3C00                
CODE_13899C:        JSR CODE_138AC4           
CODE_13899F:        SEP #$20                  
CODE_1389A1:        PLB                       
CODE_1389A2:        RTL                       

CODE_1389A3:        PHB                       
CODE_1389A4:        PHK                       
CODE_1389A5:        PLB                       
CODE_1389A6:        REP #$20                  
CODE_1389A8:        LDA #$8000                
CODE_1389AB:        STA $0D                   
CODE_1389AD:        LDX #$1E                  
CODE_1389AF:        STX $0F                   
CODE_1389B1:        LDA #$1000                
CODE_1389B4:        STA $0B                   
CODE_1389B6:        LDA #$5800                
CODE_1389B9:        JSR CODE_138AC4           
CODE_1389BC:        SEP #$20                  
CODE_1389BE:        PLB                       
CODE_1389BF:        RTL                       

DATA_1389C0:        dw $D000
                    dw $D200
                    dw $D400
                    dw $D600
                    dw $F000
                    dw $F200
                    dw $F400
                    dw $F600
                    dw $F800
                    dw $FA00
                    dw $FC00
                    dw $FE00
                    dw $B000
                    dw $B200
                    dw $B400
                    dw $B600

DATA_1389E0:        db $18,$18,$18,$18,$1C,$1C,$1C,$1C
                    db $19,$19,$19,$19,$1B,$1B,$1B,$1B
                   
DATA_1389F0:        dw $2000
                    dw $2100
                    dw $2200
                    dw $2300
                    dw $2400
                    dw $2500
                    dw $2600
                    dw $2700
                    dw $2800
                    dw $2900
                    dw $2A00
                    dw $2B00
                    dw $2C00
                    dw $2D00
                    dw $2E00
                    dw $2F00
                
CODE_138A10:        REP #$20                  
CODE_138A12:        LDA $0759                 
CODE_138A15:        AND #$00FF                
CODE_138A18:        BEQ CODE_138A3A           
CODE_138A1A:        DEC $0759                 
CODE_138A1D:        DEC A                     
CODE_138A1E:        TAX                       
CODE_138A1F:        LDA.l DATA_1389E0,x             
CODE_138A23:        STA $0F                   
CODE_138A25:        TXA                       
CODE_138A26:        ASL A                     
CODE_138A27:        TAX                       
CODE_138A28:        LDA.l DATA_1389C0,x             
CODE_138A2C:        STA $0D                   
CODE_138A2E:        LDA #$0200                
CODE_138A31:        STA $0B                   
CODE_138A33:        LDA.l DATA_1389F0,x             
CODE_138A37:        JSR CODE_138AC4           
CODE_138A3A:        LDA $0722                 
CODE_138A3D:        AND #$00FF                
CODE_138A40:        BEQ CODE_138A62           
CODE_138A42:        CMP #$0002                
CODE_138A45:        BEQ CODE_138A4E           
CODE_138A47:        LDA #$E000                
CODE_138A4A:        LDX #$1A                  
CODE_138A4C:        BRA CODE_138A53           

CODE_138A4E:        LDA #$D000                
CODE_138A51:        LDX #$16                  
CODE_138A53:        STA $0D                   
CODE_138A55:        STX $0F                   
CODE_138A57:        LDA #$0800                
CODE_138A5A:        STA $0B                   
CODE_138A5C:        LDA #$7000                
CODE_138A5F:        JSR CODE_138AE7           
CODE_138A62:        SEP #$20                  
CODE_138A64:        STZ $0722                 
CODE_138A67:        RTL                       

CODE_138A68:        REP #$20                  
CODE_138A6A:        LDA #$8000                
CODE_138A6D:        STA $0D                   
CODE_138A6F:        LDX #$19                  
CODE_138A71:        STX $0F                   
CODE_138A73:        LDA #$2000                
CODE_138A76:        STA $0B                   
CODE_138A78:        JSR CODE_138AC4           
CODE_138A7B:        LDA #$B800                
CODE_138A7E:        STA $0D                   
CODE_138A80:        LDX #$1B                  
CODE_138A82:        STX $0F                   
CODE_138A84:        LDA #$0800                
CODE_138A87:        STA $0B                   
CODE_138A89:        LDA #$7800                
CODE_138A8C:        JSR CODE_138AE7           
CODE_138A8F:        SEP #$20                  
CODE_138A91:        RTL                       

CODE_138A92:        REP #$20                  
CODE_138A94:        LDA #$8800                
CODE_138A97:        STA $0D                   
CODE_138A99:        LDX #$1D                  
CODE_138A9B:        STX $0F                   
CODE_138A9D:        LDA #$0800                
CODE_138AA0:        STA $0B                   
CODE_138AA2:        LDA #$2C00                
CODE_138AA5:        JSR CODE_138AC4           
CODE_138AA8:        SEP #$20                  
CODE_138AAA:        RTL                       

CODE_138AAB:        REP #$20                  
CODE_138AAD:        LDA #$9800                
CODE_138AB0:        STA $0D                   
CODE_138AB2:        LDX #$1D                  
CODE_138AB4:        STX $0F                   
CODE_138AB6:        LDA #$0800                
CODE_138AB9:        STA $0B                   
CODE_138ABB:        LDA #$4000                
CODE_138ABE:        JSR CODE_138AC4           
CODE_138AC1:        SEP #$20                  
CODE_138AC3:        RTL                       

CODE_138AC4:        LDX #$80                  ; \ Increment after write to $2119.
CODE_138AC6:        STX $2115                 ;  | Increment source&destination addresses by 1.
CODE_138AC9:        STA $2116                 ;  | 16-bit value in A determines destination in VRAM.
CODE_138ACC:        LDA #$01                  ;  | 1 byte per reg (2 regs, low byte in $reg, high byte in $reg+1).
CODE_138ACE:        CLC                       ;  | Clear carry.
CODE_138ACF:        STA $4300                 ;  | -------------^
CODE_138AD2:        LDA $0D                   ;  | [$0D] holds the source address.
CODE_138AD4:        STA $4302                 ;  |
CODE_138AD7:        LDX $0F                   ;  |
CODE_138AD9:        STX $4304                 ;  |
CODE_138ADC:        LDA $0B                   ;  | $0B (16-bit) holds the size.
CODE_138ADE:        STA $4305                 ;  |
CODE_138AE1:        LDX #$01                  ;  | Data transfer here.
CODE_138AE3:        STX $420B                 ;  |
CODE_138AE6:        RTS                       ; / Return.

CODE_138AE7:        LDX #$80                  
CODE_138AE9:        STX $2115                 
CODE_138AEC:        STA $2116                 
CODE_138AEF:        LDA #$01                  
CODE_138AF1:        CLC                       
CODE_138AF2:        STA $4300                 
CODE_138AF5:        LDA $0D                   
CODE_138AF7:        STA $4302                 
CODE_138AFA:        LDX $0F                   
CODE_138AFC:        STX $4304                 
CODE_138AFF:        LDA $0B                   
CODE_138B01:        STA $4305                 
CODE_138B04:        LDX #$01                  
CODE_138B06:        STX $420B                 
CODE_138B09:        RTS                       

DATA_138B0A:        dw $E000
                    dw $E0C0
                    dw $E180
                    dw $E240
                    dw $E300
                    dw $E3C0
                    dw $E480
                    dw $E540

DATA_138B1A:        dw $E600
                    dw $E6C0
                    dw $E780
                    dw $E840
                    dw $E900
                    dw $E9C0
                    dw $EA80
                    dw $EB40
                      
CODE_138B2A:        PHD                       
CODE_138B2B:        REP #$20                  
CODE_138B2D:        LDA #$4300                
CODE_138B30:        TCD                       
CODE_138B31:        LDY $FE                   
CODE_138B33:        CPY #$80                  
CODE_138B35:        BEQ CODE_138B44           
CODE_138B37:        LDY $0217                 
CODE_138B3A:        BNE CODE_138B48           
CODE_138B3C:        LDY $025E                 
CODE_138B3F:        BEQ CODE_138B44           
CODE_138B41:        JMP CODE_138C7D           

CODE_138B44:        SEP #$20                  
CODE_138B46:        PLD                       
CODE_138B47:        RTL                       

CODE_138B48:        LDX #$80                  
CODE_138B4A:        STX $2115                 
CODE_138B4D:        LDA #$01                  
CODE_138B4F:        CLC                       
CODE_138B50:        STA $00                   
CODE_138B52:        LDX $0722                 
CODE_138B55:        BNE CODE_138BBA           
CODE_138B57:        STA $10                   
CODE_138B59:        STA $20                   
CODE_138B5B:        LDX #$2F                  
CODE_138B5D:        STX $04                   
CODE_138B5F:        STX $14                   
CODE_138B61:        LDX #$16                  
CODE_138B63:        STX $24                   
CODE_138B65:        LDA #$0040                  
CODE_138B68:        STA $05
CODE_138B6A:        STA $15                  
CODE_138B6C:        LDA #$00C0                                 
CODE_138B6F:        STA $25                   
CODE_138B71:        LDA #$6000                       
CODE_138B74:        STA $2116                 
CODE_138B77:        LDA $0010                 
CODE_138B7A:        AND #$0038                  
CODE_138B7D:        LSR A
CODE_138B7E:        LSR A                     
CODE_138B7F:        TAX                       
CODE_138B80:        LDA $02ED                 
CODE_138B83:        STA $02                   
CODE_138B85:        LDA $02F1                 
CODE_138B88:        STA $12                   
CODE_138B8A:        LDA.l DATA_138B0A,x             
CODE_138B8E:        STA $22                   
CODE_138B90:        LDY #$07                  
CODE_138B92:        STY $420B                 
CODE_138B95:        LDA #$0040                  
CODE_138B98:        STA $05                  
CODE_138B9A:        STA $15                   
CODE_138B9C:        LDA #$00C0                               
CODE_138B9F:        STA $25                   
CODE_138BA1:        LDA #$6100                  
CODE_138BA4:        STA $2116                 
CODE_138BA7:        LDA $02EF                 
CODE_138BAA:        STA $02                   
CODE_138BAC:        LDA $02F3                 
CODE_138BAF:        STA $12                   
CODE_138BB1:        LDA.l DATA_138B1A,x             
CODE_138BB5:        STA $22                   
CODE_138BB7:        STY $420B                 
CODE_138BBA:        LDA #$0200                 
CODE_138BBD:        STA $05                 
CODE_138BBF:        LDA $0765                       
CODE_138BC2:        STA $2116                 
CODE_138BC5:        LDA $021B                 
CODE_138BC8:        STA $02                   
CODE_138BCA:        LDY $0788                 
CODE_138BCD:        STY $04                   
CODE_138BCF:        LDX #$01                  
CODE_138BD1:        STX $420B                 
CODE_138BD4:        LDA #$0040                  
CODE_138BD7:        STA $05
CODE_138BD9:        LDA #$22E0                
CODE_138BDC:        STA $2116                 
CODE_138BDF:        LDA $0252                 
CODE_138BE2:        STA $02                   
CODE_138BE4:        STY $04                   
CODE_138BE6:        STX $420B                 
CODE_138BE9:        SEP #$20                  
CODE_138BEB:        PLD                       
CODE_138BEC:        RTL                       

DATA_138BED:        dw $D000
                    dw $D600
                    dw $DC00
                    dw $E200
                    dw $E800
                    dw $EE00
                    dw $F400
                    dw $FA00

DATA_138BFD:        dw $0000
                    dw $0200
                    dw $0400

DATA_138C03:        dw $2000
                    dw $2100
                    dw $2200

DATA_138C09:        db $18,$1D
                   
CODE_138C0B:        LDA $025E          
CODE_138C0E:        BEQ CODE_138C13
CODE_138C10:        JMP CODE_138CCE

CODE_138C13:        INC $0767       
CODE_138C16:        LDA $0767                 
CODE_138C19:        CMP #$03                  
CODE_138C1B:        BCC CODE_138C20           
CODE_138C1D:        STZ $0767                 
CODE_138C20:        INC $0219                 
CODE_138C23:        LDA $0219                 
CODE_138C26:        CMP #$08                  
CODE_138C28:        BCC CODE_138C30           
CODE_138C2A:        INC $021A                 
CODE_138C2D:        STZ $0219                 
CODE_138C30:        LDA $021A                 
CODE_138C33:        AND #$07                  
CODE_138C35:        ASL A                     
CODE_138C36:        TAX                       
CODE_138C37:        REP #$20                  
CODE_138C39:        LDA.l DATA_138BED,x             
CODE_138C3D:        STA $021B                 
CODE_138C40:        LDA $0767                 
CODE_138C43:        AND #$00FF                
CODE_138C46:        ASL A                     
CODE_138C47:        TAX                       
CODE_138C48:        LDA $021B                 
CODE_138C4B:        CLC                       
CODE_138C4C:        ADC.l DATA_138BFD,x             
CODE_138C50:        STA $021B                 
CODE_138C53:        LDA.l DATA_138C03,x             
CODE_138C57:        STA $0765                 
CODE_138C5A:        LDX $0787                 
CODE_138C5D:        LDA.l DATA_138C09,x             
CODE_138C61:        AND #$00FF                
CODE_138C64:        TAY                       
CODE_138C65:        STY $0788                 
CODE_138C68:        LDA $10                   
CODE_138C6A:        AND #$0007                
CODE_138C6D:        ASL A                     
CODE_138C6E:        TAX                       
CODE_138C6F:        LDA.l DATA_138BED,x             
CODE_138C73:        CLC                       
CODE_138C74:        ADC #$05C0                
CODE_138C77:        STA $0252                 
CODE_138C7A:        SEP #$20                  
CODE_138C7C:        RTL                       

CODE_138C7D:        LDX #$80                  
CODE_138C7F:        STX $2115                 
CODE_138C82:        LDA #$1801                           
CODE_138C85:        STA $00                   
CODE_138C87:        LDA #$0800               
CODE_138C8A:        STA $05                   
CODE_138C8C:        LDA #$2000                  
CODE_138C8F:        STA $2116           
CODE_138C92:        LDA $021B
CODE_138C95:        STA $02                       
CODE_138C97:        LDY #$1A                  
CODE_138C99:        STY $04                   
CODE_138C9B:        LDX #$01                  
CODE_138C9D:        STX $420B                 
CODE_138CA0:        SEP #$20                  
CODE_138CA2:        PLD                       
CODE_138CA3:        RTL                       

DATA_138CA4:        dw $8000
                    dw $8800
                    dw $9000
                    dw $9800
                    dw $A000
                    dw $A800
                    dw $B000
                    dw $B800
                    dw $B000
                    dw $A800
                    dw $A000
                    dw $9800
                    dw $9000
                    dw $8800

DATA_138CC0:        dw $D000
                    dw $C800
                    dw $C000
                    dw $D800                    
                    dw $C000
                    dw $C800
                    dw $D000
                
CODE_138CCE:        LDA $15                   
CODE_138CD0:        ASL A                     
CODE_138CD1:        TAX                       
CODE_138CD2:        REP #$20                  
CODE_138CD4:        LDA $025E                 
CODE_138CD7:        AND #$0003                
CODE_138CDA:        CMP #$0002                
CODE_138CDD:        BEQ CODE_138CE8           
CODE_138CDF:        LDA.l DATA_138CA4,x             
CODE_138CE3:        STA $021B                 
CODE_138CE6:        BRA CODE_138CEF           

CODE_138CE8:        LDA.l DATA_138CC0,x             
CODE_138CEC:        STA $021B                 
CODE_138CEF:        SEP #$20                  
CODE_138CF1:        RTL                       

CODE_138CF2:        LDA #$04                  
CODE_138CF4:        STA $1199                 
CODE_138CF7:        STA $119B                 
CODE_138CFA:        STA $119D                 
CODE_138CFD:        STA $119F                 
CODE_138D00:        STA $11A1                 
CODE_138D03:        STA $11A3                 
CODE_138D06:        STA $11A5                 
CODE_138D09:        STA $11A7                 
CODE_138D0C:        STA $11A9                 
CODE_138D0F:        STA $11AB                 
CODE_138D12:        STA $11AD                 
CODE_138D15:        STA $11AF                 
CODE_138D18:        STA $11B1                 
CODE_138D1B:        STA $11B3                 
CODE_138D1E:        STA $11B5                 
CODE_138D21:        STA $11B7                 
CODE_138D24:        RTL                       

CODE_138D25:        STZ $1199                 
CODE_138D28:        STZ $119B                 
CODE_138D2B:        STZ $119D                 
CODE_138D2E:        STZ $119F                 
CODE_138D31:        STZ $11A1                 
CODE_138D34:        STZ $11A3                 
CODE_138D37:        STZ $11A5                 
CODE_138D3A:        STZ $11A7                 
CODE_138D3D:        STZ $11A9                 
CODE_138D40:        STZ $11AB                 
CODE_138D43:        STZ $11AD                 
CODE_138D46:        STZ $11AF                 
CODE_138D49:        STZ $11B1                 
CODE_138D4C:        STZ $11B3                 
CODE_138D4F:        STZ $11B5                 
CODE_138D52:        STZ $11B7                 
CODE_138D55:        RTL                       

CODE_138D56:        REP #$20                  
CODE_138D58:        LDX #$2E                  
CODE_138D5A:        LDA.w DATA_11BBC6,x               
CODE_138D5D:        STA $1400,x               
CODE_138D60:        DEX                       
CODE_138D61:        DEX                       
CODE_138D62:        BPL CODE_138D5A           
CODE_138D64:        SEP #$20                  
CODE_138D66:        RTL                       

CODE_138D67:        LDX #$23                  
CODE_138D69:        LDA.l DATA_15EC33,x             
CODE_138D6D:        STA $1194,x               
CODE_138D70:        DEX                       
CODE_138D71:        BPL CODE_138D69           
CODE_138D73:        RTL                       

CODE_138D74:        LDA $FC                   
CODE_138D76:        AND #$10                  
CODE_138D78:        BEQ CODE_138D96           
CODE_138D7A:        LDX $0635                 
CODE_138D7D:        INC $0533                 
CODE_138D80:        LDA $0533                 
CODE_138D83:        STA $04E8                 
CODE_138D86:        CMP.w DATA_11C9B4+1,x               
CODE_138D89:        BNE CODE_138DC1           
CODE_138D8B:        LDA.w DATA_11C9B4,x               
CODE_138D8E:        STA $0533                 
CODE_138D91:        STA $04E8                 
CODE_138D94:        BRA CODE_138DC1           

CODE_138D96:        LDA $FC                   
CODE_138D98:        AND #$20                  
CODE_138D9A:        BNE CODE_138D9F           
CODE_138D9C:        BRL CODE_138E26           

CODE_138D9F:        INC $0635                 
CODE_138DA2:        LDX $0635                 
CODE_138DA5:        STX $0405                 
CODE_138DA8:        LDA.w DATA_11C9B4,x               
CODE_138DAB:        STA $0533                 
CODE_138DAE:        STA $04E8                 
CODE_138DB1:        CPX #$07                  
CODE_138DB3:        BNE CODE_138DC1           
CODE_138DB5:        STZ $0635                 
CODE_138DB8:        STZ $0405                 
CODE_138DBB:        STZ $0533                 
CODE_138DBE:        STZ $04E8                 
CODE_138DC1:        LDA $0635                 
CODE_138DC4:        INC A                     
CODE_138DC5:        ORA #$80                  
CODE_138DC7:        STA $118E                 
CODE_138DCA:        LDA #$0C                  
CODE_138DCC:        STA $118F                 
CODE_138DCF:        LDY #$0C                  
CODE_138DD1:        LDA #$BF                  
CODE_138DD3:        STA $116C,y               
CODE_138DD6:        LDA #$00                  
CODE_138DD8:        STA $116D,y               
CODE_138DDB:        DEY                       
CODE_138DDC:        DEY                       
CODE_138DDD:        BPL CODE_138DD1           
CODE_138DDF:        LDY $0635                 
CODE_138DE2:        LDA $0533                 
CODE_138DE5:        SEC                       
CODE_138DE6:        SBC.w DATA_11C9B4,y               
CODE_138DE9:        STA $0629                 
CODE_138DEC:        CLC                       
CODE_138DED:        ADC #$81                  
CODE_138DEF:        STA $1192                 
CODE_138DF2:        LDA #$0C                  
CODE_138DF4:        STA $1193                 
CODE_138DF7:        LDA.w DATA_11C9B4+1,y               
CODE_138DFA:        SEC                       
CODE_138DFB:        SBC.w DATA_11C9B4,y               
CODE_138DFE:        STA $03                   
CODE_138E00:        LDX #$00                  
CODE_138E02:        TXY                       
CODE_138E03:        LDA #$EB                  
CODE_138E05:        CPX $0629                 
CODE_138E08:        BNE CODE_138E0C           
CODE_138E0A:        LDA #$EC                  
CODE_138E0C:        STA $116C,y               
CODE_138E0F:        LDA #$1C                  
CODE_138E11:        STA $116D,y               
CODE_138E14:        INY                       
CODE_138E15:        INY                       
CODE_138E16:        INY                       
CODE_138E17:        INY                       
CODE_138E18:        INX                       
CODE_138E19:        CPX $03                   
CODE_138E1B:        BCC CODE_138E03           
CODE_138E1D:        LDA #$FF                  
CODE_138E1F:        STA $1194                 
CODE_138E22:        LDA #$08                  
CODE_138E24:        STA $11                   
CODE_138E26:        RTL                       
CODE_138E27:        LDY #$C0                  
CODE_138E29:        CMP #$0A                  
CODE_138E2B:        BCC CODE_138E32           
CODE_138E2D:        SBC #$0A                  
CODE_138E2F:        INY                       
CODE_138E30:        BRA CODE_138E29           

CODE_138E32:        ORA #$C0                  
CODE_138E34:        CPY #$C0                  
CODE_138E36:        BNE CODE_138E3A           

CODE_138E38:        LDY #$BF                  
CODE_138E3A:        RTS                       

CODE_138E3B:        PHB                       
CODE_138E3C:        PHK                       
CODE_138E3D:        PLB                       
CODE_138E3E:        LDA #$00                  
CODE_138E40:        STA $0235                 
CODE_138E43:        LDA #$00                  
CODE_138E45:        STA $0236                 
CODE_138E48:        LDA #$CA                  
CODE_138E4A:        STA $0237                 
CODE_138E4D:        LDA #$15                  
CODE_138E4F:        STA $212A                 
CODE_138E52:        LDA #$06                  
CODE_138E54:        STA $212B                 
CODE_138E57:        LDA #$41                  
CODE_138E59:        STA $4370                 
CODE_138E5C:        LDA #$26                  
CODE_138E5E:        STA $4371                 
CODE_138E61:        LDA #$DD                  
CODE_138E63:        STA $4372                 
CODE_138E66:        LDA #$8E                  
CODE_138E68:        STA $4373                 
CODE_138E6B:        LDA #$13                  
CODE_138E6D:        STA $4374                 
CODE_138E70:        LDA #$7F                  
CODE_138E72:        STA $4377                 
CODE_138E75:        LDA #$41                  
CODE_138E77:        STA $4330                 
CODE_138E7A:        LDA #$28                  
CODE_138E7C:        STA $4331                 
CODE_138E7F:        LDA #$E4                  
CODE_138E81:        STA $4332                 
CODE_138E84:        LDA #$8E                  
CODE_138E86:        STA $4333                 
CODE_138E89:        LDA #$13                  
CODE_138E8B:        STA $4334                 
CODE_138E8E:        LDA #$7F                  
CODE_138E90:        STA $4337                 
CODE_138E93:        LDA #$10                  
CODE_138E95:        STA $0238                 
CODE_138E98:        LDA #$B7                  
CODE_138E9A:        STA $0239                 
CODE_138E9D:        LDA #$20                  
CODE_138E9F:        STA $023D                 
CODE_138EA2:        ASL A                     
CODE_138EA3:        STA $023E                 
CODE_138EA6:        ASL A                     
CODE_138EA7:        STA $023F                 
CODE_138EAA:        STZ $023C                 
CODE_138EAD:        STZ $0244                 
CODE_138EB0:        LDA #$13                  
CODE_138EB2:        STA $0243                 
CODE_138EB5:        STA $023B                 
CODE_138EB8:        LDA $04BC                 
CODE_138EBB:        STA $0B00                 
CODE_138EBE:        LDA $04BD                 
CODE_138EC1:        STA $0B01                 
CODE_138EC4:        LDA #$01                  
CODE_138EC6:        STA $02A9                 
CODE_138EC9:        STZ $023A                 
CODE_138ECC:        STZ $022B                 
CODE_138ECF:        STZ $0229                 
CODE_138ED2:        STZ $0232                 
CODE_138ED5:        STZ $0240                 
CODE_138ED8:        STZ $0245                 
CODE_138EDB:        PLB                       
CODE_138EDC:        RTL                       

DATA_138EDD:        db $F0,$00,$F0,$F0,$E0,$F0,$00,$F0
                    db $00,$F2,$F0,$E0,$F2,$00
            
CODE_138EEB:        REP #$30                  
CODE_138EED:        LDA $022B                 
CODE_138EF0:        AND #$00FF                
CODE_138EF3:        ASL A                     
CODE_138EF4:        TAX                       
CODE_138EF5:        LDA.l DATA_138FB7,x             
CODE_138EF9:        STA $0712                 
CODE_138EFC:        LDA.l DATA_138FC1,x             
CODE_138F00:        STA $0714                 
CODE_138F03:        LDA.l DATA_138FCB,x             
CODE_138F07:        STA $0716                 
CODE_138F0A:        LDA.l DATA_138FC9               
CODE_138F0E:        STA $0718                 
CODE_138F11:        LDA.l DATA_138FBF               
CODE_138F15:        TAX                       
CODE_138F16:        LDA #$00FF                
CODE_138F19:        CPX $0714                 
CODE_138F1C:        BCS CODE_138F26                   
CODE_138F1E:        CPX $0712                 
CODE_138F21:        BCC CODE_138F26           
CODE_138F23:        LDA $0716                 
CODE_138F26:        STA $7FF000,x             
CODE_138F2A:        INX                       
CODE_138F2B:        INX                       
CODE_138F2C:        CPX $0718                 
CODE_138F2F:        BNE CODE_138F16           
CODE_138F31:        LDA #$0066                
CODE_138F34:        TAX                       
CODE_138F35:        LDA #$C43B                
CODE_138F38:        STA $7FF200,x             
CODE_138F3C:        INX                       
CODE_138F3D:        INX                       
CODE_138F3E:        CPX #$013A                
CODE_138F41:        BNE CODE_138F35           
CODE_138F43:        SEP #$30                  
CODE_138F45:        LDA $0232                 
CODE_138F48:        BNE CODE_138FA9           
CODE_138F4A:        LDA #$CA                  
CODE_138F4C:        STA $0237                 
CODE_138F4F:        LDX #$FF                  
CODE_138F51:        LDY #$FC                  
CODE_138F53:        LDA $0231                 
CODE_138F56:        BNE CODE_138F5C           
CODE_138F58:        LDX #$01                  
CODE_138F5A:        LDY #$04                  
CODE_138F5C:        TYA                       
CODE_138F5D:        CLC                       
CODE_138F5E:        ADC $0245                 
CODE_138F61:        STA $0245                 
CODE_138F64:        LDA $023D                 
CODE_138F67:        AND #$20                  
CODE_138F69:        ORA $0245                 
CODE_138F6C:        STA $023D                 
CODE_138F6F:        LDA $023E                 
CODE_138F72:        AND #$40                  
CODE_138F74:        ORA $0245                 
CODE_138F77:        STA $023E                 
CODE_138F7A:        LDA $023F                 
CODE_138F7D:        AND #$80                  
CODE_138F7F:        ORA $0245                 
CODE_138F82:        STA $023F                 
CODE_138F85:        TXA                       
CODE_138F86:        CLC                       
CODE_138F87:        ADC $022B                 
CODE_138F8A:        STA $022B                 
CODE_138F8D:        BMI CODE_138F95           
CODE_138F8F:        CMP #$05                  
CODE_138F91:        BEQ CODE_138F9F           
CODE_138F93:        BRA CODE_138FA9           

CODE_138F95:        STZ $022B                 
CODE_138F98:        LDA #$02                  
CODE_138F9A:        STA $0722                 
CODE_138F9D:        BRA CODE_138FA4           

CODE_138F9F:        LDA #$C0                  
CODE_138FA1:        STA $0237                 
CODE_138FA4:        LDA #$01                  
CODE_138FA6:        STA $0232                 
CODE_138FA9:        LDA #$88                  
CODE_138FAB:        STA $023A                 
CODE_138FAE:        LDA #$17                  
CODE_138FB0:        STA $0243                 
CODE_138FB3:        STA $023B                 
CODE_138FB6:        RTL                       

DATA_138FB7:        dw $00C6
                    dw $00AE
                    dw $0096
                    dw $007E
       
DATA_138FBF:        dw $0068

DATA_138FC1:        dw $00F6
                    dw $010E
                    dw $0126
                    dw $013E

DATA_138FC9:        dw $0154

DATA_138FCB:        db $70,$90,$60,$A0,$50,$B0,$40,$C0
                    db $36,$CA
                
CODE_138FD5:        PHB                       
CODE_138FD6:        LDA #$7F                  
CODE_138FD8:        PHA                       
CODE_138FD9:        PLB                       
CODE_138FDA:        REP #$30                  
CODE_138FDC:        LDX #$01A0                
CODE_138FDF:        LDA #$00FF                
CODE_138FE2:        STA $F000,x               
CODE_138FE5:        STA $F002,x               
CODE_138FE8:        STA $F004,x               
CODE_138FEB:        STA $F006,x               
CODE_138FEE:        STA $F008,x               
CODE_138FF1:        STA $F00A,x               
CODE_138FF4:        STA $F00C,x               
CODE_138FF7:        STA $F00E,x               
CODE_138FFA:        STA $F010,x               
CODE_138FFD:        STA $F012,x               
CODE_139000:        STA $F014,x               
CODE_139003:        STA $F016,x               
CODE_139006:        STA $F018,x               
CODE_139009:        STA $F01A,x               
CODE_13900C:        STA $F01C,x               
CODE_13900F:        STA $F01E,x               
CODE_139012:        STA $F200,x               
CODE_139015:        STA $F202,x               
CODE_139018:        STA $F204,x               
CODE_13901B:        STA $F206,x               
CODE_13901E:        STA $F208,x               
CODE_139021:        STA $F20A,x               
CODE_139024:        STA $F20C,x               
CODE_139027:        STA $F20E,x               
CODE_13902A:        STA $F210,x               
CODE_13902D:        STA $F212,x               
CODE_139030:        STA $F214,x               
CODE_139033:        STA $F216,x               
CODE_139036:        STA $F218,x               
CODE_139039:        STA $F21A,x               
CODE_13903C:        STA $F21C,x               
CODE_13903F:        STA $F21E,x               
CODE_139042:        TXA                       
CODE_139043:        SEC                       
CODE_139044:        SBC #$0020                
CODE_139047:        TAX                       
CODE_139048:        BPL CODE_138FDF           
CODE_13904A:        SEP #$30                  
CODE_13904C:        PLB                       
CODE_13904D:        RTL                       

CODE_13904E:        LDX #$FF                  
CODE_139050:        LDA.l DATA_14C563,x             
CODE_139054:        STA $14BB,x               
CODE_139057:        DEX                       
CODE_139058:        CPX #$FF                  
CODE_13905A:        BNE CODE_139050           
CODE_13905C:        STX $14C5                 
CODE_13905F:        JSR CODE_139067           
CODE_139062:        LDA #$02                  
CODE_139064:        STA $11                   
CODE_139066:        RTL                       

CODE_139067:        LDX $0635                 
CODE_13906A:        LDY $0533                 
CODE_13906D:        INY                       
CODE_13906E:        TYA                       
CODE_13906F:        JSR CODE_1390C9           
CODE_139072:        INX                       
CODE_139073:        TXA                       
CODE_139074:        ORA #$00                  
CODE_139076:        STA $14BF                 
CODE_139079:        LDY $04EE                 
CODE_13907C:        DEY                       
CODE_13907D:        TYA                       
CODE_13907E:        JSR CODE_1390C9           
CODE_139081:        STY $14C9                 
CODE_139084:        STA $14CB                 
CODE_139087:        LDY #$0C                  
CODE_139089:        LDA #$2F                  
CODE_13908B:        STA $14CD,y               
CODE_13908E:        DEY                       
CODE_13908F:        DEY                       
CODE_139090:        CPY #$02                  
CODE_139092:        BNE CODE_139089           
CODE_139094:        LDY $0635                 
CODE_139097:        LDA $0533                 
CODE_13909A:        SEC                       
CODE_13909B:        SBC.w DATA_11C9B4,y               
CODE_13909E:        STA $0629                 
CODE_1390A1:        CLC                       
CODE_1390A2:        ADC #$01                  
CODE_1390A4:        STA $14C3                 
CODE_1390A7:        LDA.w DATA_11C9B4+1,y               
CODE_1390AA:        SEC                       
CODE_1390AB:        SBC.w DATA_11C9B4,y               
CODE_1390AE:        STA $03                   
CODE_1390B0:        LDX #$00                  
CODE_1390B2:        TXY                       
CODE_1390B3:        LDA #$FD                  
CODE_1390B5:        CPX $0629                 
CODE_1390B8:        BNE CODE_1390BC           
CODE_1390BA:        LDA #$F6                  
CODE_1390BC:        STA $14D1,y               
CODE_1390BF:        INY                       
CODE_1390C0:        INY                       
CODE_1390C1:        INY                       
CODE_1390C2:        INY                       
CODE_1390C3:        INX                       
CODE_1390C4:        CPX $03                   
CODE_1390C6:        BCC CODE_1390B3           
CODE_1390C8:        RTS                       
CODE_1390C9:        LDY #$00                  
CODE_1390CB:        CMP #$0A                  
CODE_1390CD:        BCC CODE_1390D5           
CODE_1390CF:        SBC #$0A                  
CODE_1390D1:        INY                       
CODE_1390D2:        JMP CODE_1390CB           

CODE_1390D5:        ORA #$00                  
CODE_1390D7:        CPY #$00                  
CODE_1390D9:        BNE CODE_1390DD           
CODE_1390DB:        LDY #$2F                  
CODE_1390DD:        RTS                       

CODE_1390DE:        LDA $38,x                 
CODE_1390E0:        ASL A                     
CODE_1390E1:        ASL A                     
CODE_1390E2:        ASL A                     
CODE_1390E3:        ASL A                     
CODE_1390E4:        CLC                       
CODE_1390E5:        ADC $3E,x                 
CODE_1390E7:        STA $3E,x                 
CODE_1390E9:        LDY #$00                  
CODE_1390EB:        LDA $38,x                 
CODE_1390ED:        PHP                       
CODE_1390EE:        LSR A                     
CODE_1390EF:        LSR A                     
CODE_1390F0:        LSR A                     
CODE_1390F1:        LSR A                     
CODE_1390F2:        PLP                       
CODE_1390F3:        BPL CODE_1390F8           
CODE_1390F5:        ORA #$F0                  
CODE_1390F7:        DEY                       
CODE_1390F8:        ADC $44,x                 
CODE_1390FA:        STA $44,x                 
CODE_1390FC:        TYA                       
CODE_1390FD:        ADC $4A,x                 
CODE_1390FF:        STA $4A,x                 
CODE_139101:        RTL                       

DATA_139102:        db $E0,$E2,$E4,$E6,$E8,$EA,$EC,$EE
                    db $C0,$C2,$C4,$C6,$C8,$CA
                 
CODE_139110:        LDA $0429                 
CODE_139113:        STA $0712                 
CODE_139116:        LDA $021F                 
CODE_139119:        STA $0713                 
CODE_13911C:        REP #$20                  
CODE_13911E:        LDA $0712                 
CODE_139121:        BPL CODE_13912A           
CODE_139123:        CMP #$FF80                
CODE_139126:        BCS CODE_139131                   
CODE_139128:        BRA CODE_139137           

CODE_13912A:        CMP #$0180                
CODE_13912D:        BCC CODE_139131           
CODE_13912F:        BRA CODE_139137           

CODE_139131:        SEP #$20                  
CODE_139133:        LDA $EE                   
CODE_139135:        BEQ CODE_13913A           
CODE_139137:        SEP #$20                  
CODE_139139:        RTL                       

CODE_13913A:        LDA $042C                 
CODE_13913D:        STA $01                   
CODE_13913F:        LDA $6F,x                 
CODE_139141:        LSR A                     
CODE_139142:        PHP                       
CODE_139143:        LDA $65,x                 
CODE_139145:        AND #$80                  
CODE_139147:        PLP                       
CODE_139148:        BCC CODE_13914C           
CODE_13914A:        ORA #$40                  
CODE_13914C:        STA $02                   
CODE_13914E:        REP #$30                  
CODE_139150:        LDY $02F6                 
CODE_139153:        LDA $9F,x                 
CODE_139155:        AND #$00FF                
CODE_139158:        ASL A                     
CODE_139159:        TAX                       
CODE_13915A:        LDA $0712                 
CODE_13915D:        CLC                       
CODE_13915E:        ADC #$0010                
CODE_139161:        SEP #$20                  
CODE_139163:        XBA                       
CODE_139164:        STA $0714                 
CODE_139167:        LDA $0712                 
CODE_13916A:        STA $0800,y               
CODE_13916D:        CLC                       
CODE_13916E:        ADC #$10                  
CODE_139170:        STA $0804,y               
CODE_139173:        LDA $01                   
CODE_139175:        STA $0801,y               
CODE_139178:        STA $0805,y               
CODE_13917B:        LDA.l DATA_139102,x             
CODE_13917F:        STA $0802,y               
CODE_139182:        LDA.l DATA_139102+1,x             
CODE_139186:        STA $0806,y               
CODE_139189:        LDA $02                   
CODE_13918B:        ORA #$23                  
CODE_13918D:        STA $0803,y               
CODE_139190:        STA $0807,y               
CODE_139193:        AND #$40                  
CODE_139195:        BEQ CODE_1391A5           
CODE_139197:        LDA $0802,y               
CODE_13919A:        PHA                       
CODE_13919B:        LDA $0806,y               
CODE_13919E:        STA $0802,y               
CODE_1391A1:        PLA                       
CODE_1391A2:        STA $0806,y               
CODE_1391A5:        REP #$20                  
CODE_1391A7:        TYA                       
CODE_1391A8:        LSR A                     
CODE_1391A9:        LSR A                     
CODE_1391AA:        TAY                       
CODE_1391AB:        SEP #$20                  
CODE_1391AD:        LDA $0713                 
CODE_1391B0:        BPL CODE_1391B5           
CODE_1391B2:        EOR #$FF                  
CODE_1391B4:        INC A                     
CODE_1391B5:        AND #$01                  
CODE_1391B7:        ORA #$02                  
CODE_1391B9:        STA $0A20,y               
CODE_1391BC:        LDA $0714                 
CODE_1391BF:        BPL CODE_1391C4           
CODE_1391C1:        EOR #$FF                  
CODE_1391C3:        INC A                     
CODE_1391C4:        AND #$01                  
CODE_1391C6:        ORA #$02                  
CODE_1391C8:        STA $0A21,y               
CODE_1391CB:        SEP #$10                  
CODE_1391CD:        LDX $12                   
CODE_1391CF:        RTL                       

DATA_1391D0:        db $1D,$21,$2C,$1C,$1F,$2A

DATA_1391D6:        db $0A,$02,$0A,$04,$0A,$06
          
CODE_1391DC:        PHX              
CODE_1391DD:        LDA $90,x                 
CODE_1391DF:        LDX #$05                  
CODE_1391E1:        CMP.l DATA_1391D0,x             
CODE_1391E5:        BEQ CODE_1391EF           
CODE_1391E7:        DEX                       
CODE_1391E8:        BPL CODE_1391E1           
CODE_1391EA:        LDA $08                   
CODE_1391EC:        CLC                       
CODE_1391ED:        BRA CODE_139207           

CODE_1391EF:        LDX $0254                 
CODE_1391F2:        LDA.l DATA_1391D6,x             
CODE_1391F6:        STA $0712                 
CODE_1391F9:        LDA $0213                 
CODE_1391FC:        AND #$F1                  
CODE_1391FE:        ORA $0712                 
CODE_139201:        STA $0213                 
CODE_139204:        LDA $08                   
CODE_139206:        SEC                       
CODE_139207:        PLX                       
CODE_139208:        RTL                       

DATA_139209:        db $C4,$D4,$C5

DATA_13920C:        db $FD,$FF,$0B,$00
            
CODE_139210:        LDA $90,x           
CODE_139212:        CMP #$37               
CODE_139214:        BNE CODE_139252
CODE_139216:        LDA $10               
CODE_139218:        AND #$03                  
CODE_13921A:        BNE CODE_13921E           
CODE_13921C:        INC $9F,x                 
CODE_13921E:        LDA $9F,x                 
CODE_139220:        CMP #$03                  
CODE_139222:        BCC CODE_139228           
CODE_139224:        LDA #$00                  
CODE_139226:        STZ $9F,x                 
CODE_139228:        STA $0714                 
CODE_13922B:        LDA $0429                 
CODE_13922E:        STA $0712                 
CODE_139231:        LDA $021F                 
CODE_139234:        STA $0713                 
CODE_139237:        REP #$20                  
CODE_139239:        LDA $0712                 
CODE_13923C:        BPL CODE_139245           
CODE_13923E:        CMP #$FF80                
CODE_139241:        BCS CODE_13924C                   
CODE_139243:        BRA CODE_139252           

CODE_139245:        CMP #$0180                
CODE_139248:        BCC CODE_13924C           
CODE_13924A:        BRA CODE_139252           

CODE_13924C:        SEP #$20                  
CODE_13924E:        LDA $EE                   
CODE_139250:        BEQ CODE_139255           
CODE_139252:        SEP #$20                  
CODE_139254:        RTL                       

CODE_139255:        LDA $6F,x                 
CODE_139257:        DEC A                     
CODE_139258:        ASL A                     
CODE_139259:        TAX                       
CODE_13925A:        REP #$20                  
CODE_13925C:        LDA.l DATA_13920C,x             
CODE_139260:        CLC                       
CODE_139261:        ADC $0712                 
CODE_139264:        STA $0712                 
CODE_139267:        SEP #$20                  
CODE_139269:        LDX $0714                 
CODE_13926C:        LDA.l DATA_139209,x             
CODE_139270:        STA $0716                 
CODE_139273:        REP #$30                  
CODE_139275:        LDA $02F6                 
CODE_139278:        CLC                       
CODE_139279:        ADC #$0004                
CODE_13927C:        TAY                       
CODE_13927D:        SEP #$20                  
CODE_13927F:        LDA $0712                 
CODE_139282:        STA $0800,y               
CODE_139285:        LDA $042C                 
CODE_139288:        CLC                       
CODE_139289:        ADC #$FB                  
CODE_13928B:        STA $0801,y               
CODE_13928E:        LDA $0716                 
CODE_139291:        STA $0802,y               
CODE_139294:        LDA #$24                  
CODE_139296:        STA $0803,y               
CODE_139299:        REP #$20                  
CODE_13929B:        TYA                       
CODE_13929C:        LSR A                     
CODE_13929D:        LSR A                     
CODE_13929E:        TAY                       
CODE_13929F:        SEP #$20                  
CODE_1392A1:        LDA $0713                 
CODE_1392A4:        BPL CODE_1392A9           
CODE_1392A6:        EOR #$FF                  
CODE_1392A8:        INC A                     
CODE_1392A9:        AND #$01                  
CODE_1392AB:        STA $0A20,y               
CODE_1392AE:        SEP #$10                  
CODE_1392B0:        LDX $12                   
CODE_1392B2:        RTL                       

DATA_1392B3:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF                  ; /
                                            
CODE_139300:        ASL A
CODE_139301:        TAX
CODE_139302:        JMP (PNTR_139305,x)           

PNTR_139305:        dw CODE_1393DC
                    dw CODE_1393DC
             
CODE_139309:        ASL           
CODE_13930A:        TAX                       
CODE_13930B:        JMP (PNTR_13930E,x)             

PNTR_13930E:        dw CODE_139439
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
               
CODE_139318:        LDA $050F                
CODE_13931B:        ASL A
CODE_13931C:        TAX
CODE_13931D:        JMP (PNTR_139320,x)             

PNTR_139320:        dw CODE_1394CF
                    dw CODE_1394B5
                    dw CODE_1395AE
                    dw CODE_13993E
                    dw CODE_13997C
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1394CF
                    dw CODE_13993E
                    dw CODE_13951D
                    dw CODE_13951D
                    dw CODE_139A2A
                    dw CODE_139A2A
                    dw CODE_139A2A
                    dw CODE_13951D
                    dw CODE_13951D
                    dw CODE_139AA2
                    dw CODE_1394CF
                    dw CODE_1394CF
                    dw CODE_1394B5
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9               
                    dw CODE_139AEF
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1394B5
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9                                 
                    dw CODE_1395AE
                    dw CODE_139B34
                    dw CODE_139B34
                    dw CODE_139B34
                    dw CODE_139B34
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1394CF
                    dw CODE_139BA6
                    dw CODE_139BA6
                    dw CODE_139BA6
                    dw CODE_139BA6
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_139C94
                    dw CODE_13993E
                    dw CODE_1394F6
                    dw CODE_1394F6   
                    dw CODE_1394F6   
                    dw CODE_1394F6   
                    dw CODE_1394F6   
                    dw CODE_1394F6   
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_13993E
                    dw CODE_139D38
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_13951D
                    dw CODE_1399A9
                    dw CODE_1399A9                               
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9
                    dw CODE_1399A9 
                    dw CODE_1399A9
                    dw CODE_1399A9 
                    dw CODE_1399A9
                    dw CODE_1399A9   
                    dw CODE_1399A9
                    dw CODE_1399A9                   

DATA_1393DA:        db $3C,$02
                                   
CODE_1393DC:        LDA [$05],y
CODE_1393DE:        SEC
CODE_1393DF:        SBC #$70                  
CODE_1393E1:        LSR A                     
CODE_1393E2:        LSR A                     
CODE_1393E3:        LSR A                     
CODE_1393E4:        LSR A                     
CODE_1393E5:        TAX                       
CODE_1393E6:        LDA.l DATA_1393DA,x             
CODE_1393EA:        STA $0712                 
CODE_1393ED:        LDA $050E                 
CODE_1393F0:        STA $08                   
CODE_1393F2:        LDA $E9                   
CODE_1393F4:        STA $0E                   
CODE_1393F6:        LDX $0E                   
CODE_1393F8:        JSR CODE_1397DC           
CODE_1393FB:        LDX #$07                  
CODE_1393FD:        LDA $E7                   
CODE_1393FF:        AND #$F0                  
CODE_139401:        TAY                       
CODE_139402:        LDA $0712                 
CODE_139405:        XBA                       
CODE_139406:        LDA $0712                 
CODE_139409:        REP #$20                  
CODE_13940B:        STA [$01],y               
CODE_13940D:        SEP #$20                  
CODE_13940F:        INY                       
CODE_139410:        INY                       
CODE_139411:        DEX                       
CODE_139412:        BPL CODE_139409           
CODE_139414:        DEC $08                   
CODE_139416:        BMI CODE_139430           
CODE_139418:        LDA $E7                   
CODE_13941A:        CLC                       
CODE_13941B:        ADC #$10                  
CODE_13941D:        CMP #$F0                  
CODE_13941F:        BCC CODE_13942B           
CODE_139421:        INC $0E                   
CODE_139423:        LDA $0E                   
CODE_139425:        CMP #$0A                  
CODE_139427:        BEQ CODE_139430           
CODE_139429:        LDA #$00                  
CODE_13942B:        STA $E7                   
CODE_13942D:        BRL CODE_1393F6           

CODE_139430:        RTS                       

DATA_139431:        db $FF,$2A,$FF,$FF,$FF,$FF,$2D,$FF

CODE_139439:        LDA $E9                   
CODE_13943B:        STA $0247                 
CODE_13943E:        LDA #$80                  
CODE_139440:        STA $0A                   
CODE_139442:        LDA #$31                  
CODE_139444:        STA $09                   
CODE_139446:        JSR CODE_139705           
CODE_139449:        AND #$07                  
CODE_13944B:        TAX                       
CODE_13944C:        LDA.l DATA_139431,x             
CODE_139450:        STA [$01],y               
CODE_139452:        JSR CODE_1396D2           
CODE_139455:        CPY #$30                  
CODE_139457:        BCC CODE_139446           
CODE_139459:        TYA                       
CODE_13945A:        AND #$0F                  
CODE_13945C:        TAY                       
CODE_13945D:        JSR CODE_1396B0           
CODE_139460:        LDA $0247                 
CODE_139463:        STA $E9                   
CODE_139465:        CMP #$0A                  
CODE_139467:        BNE CODE_139446           
CODE_139469:        LDA #$00                  
CODE_13946B:        STA $E9                   
CODE_13946D:        STA $E6                   
CODE_13946F:        STA $E5                   
CODE_139471:        RTS                       

CODE_139472:        STZ $0E                   
CODE_139474:        LDA $E9                   
CODE_139476:        STA $0F                   
CODE_139478:        LDA $050F                 
CODE_13947B:        SEC                       
CODE_13947C:        SBC #$01                  
CODE_13947E:        ASL A                     
CODE_13947F:        TAX                       
CODE_139480:        LDA.l PNTR_13DA0E,x             
CODE_139484:        STA $C4                   
CODE_139486:        LDA.l PNTR_13DA0E+1,x             
CODE_13948A:        STA $C5                   
CODE_13948C:        LDA #$13                  
CODE_13948E:        STA $C6                   
CODE_139490:        LDY $0E                   
CODE_139492:        LDA [$C4],y               
CODE_139494:        CMP #$FF                  
CODE_139496:        BEQ CODE_1394B4           
CODE_139498:        CMP #$F0                  
CODE_13949A:        BEQ CODE_1394A9           
CODE_13949C:        STA $0D                   
CODE_13949E:        INY                       
CODE_13949F:        LDA [$C4],y               
CODE_1394A1:        LDY $0D                   
CODE_1394A3:        STA [$01],y               
CODE_1394A5:        INC $0E                   
CODE_1394A7:        BRA CODE_1394B0           

CODE_1394A9:        INC $0F                   
CODE_1394AB:        LDX $0F                   
CODE_1394AD:        JSR CODE_1397DC           
CODE_1394B0:        INC $0E                   
CODE_1394B2:        BRA CODE_139490           

CODE_1394B4:        RTS                       

CODE_1394B5:        LDX #$01                  
CODE_1394B7:        LDA $050F                 
CODE_1394BA:        CLC                       
CODE_1394BB:        ADC #$10                  
CODE_1394BD:        CMP.l DATA_13D464,x             
CODE_1394C1:        BEQ CODE_1394C6           
CODE_1394C3:        DEX                       
CODE_1394C4:        BPL CODE_1394BD           
CODE_1394C6:        LDY $E7                   
CODE_1394C8:        LDA.l DATA_13D466,x             
CODE_1394CC:        STA [$01],y               
CODE_1394CE:        RTS                       

CODE_1394CF:        LDX #$02                  
CODE_1394D1:        LDA $050F                 
CODE_1394D4:        CLC                       
CODE_1394D5:        ADC #$10                  
CODE_1394D7:        CMP.l DATA_13D468,x             
CODE_1394DB:        BEQ CODE_1394E0           
CODE_1394DD:        DEX                       
CODE_1394DE:        BPL CODE_1394D7           
CODE_1394E0:        TXA                       
CODE_1394E1:        ASL A                     
CODE_1394E2:        TAX                       
CODE_1394E3:        LDY $E7                   
CODE_1394E5:        LDA.l DATA_13D46B,x             
CODE_1394E9:        STA [$01],y               
CODE_1394EB:        INX                       
CODE_1394EC:        JSR CODE_1396B0           
CODE_1394EF:        LDA.l DATA_13D46B,x             
CODE_1394F3:        STA [$01],y               
CODE_1394F5:        RTS                       

CODE_1394F6:        LDX #$05                  
CODE_1394F8:        LDA $050F                 
CODE_1394FB:        CLC                       
CODE_1394FC:        ADC #$10                  
CODE_1394FE:        CMP.l DATA_13D471,x             
CODE_139502:        BEQ CODE_139507           
CODE_139504:        DEX                       
CODE_139505:        BPL CODE_1394FE           
CODE_139507:        TXA                       
CODE_139508:        ASL A                     
CODE_139509:        TAX                       
CODE_13950A:        LDY $E7                   
CODE_13950C:        LDA.l DATA_13D477,x             
CODE_139510:        STA [$01],y               
CODE_139512:        INX                       
CODE_139513:        JSR CODE_1396D2           
CODE_139516:        LDA.l DATA_13D477,x             
CODE_13951A:        STA [$01],y               
CODE_13951C:        RTS                       

CODE_13951D:        LDX #$04                  
CODE_13951F:        LDA $050F                 
CODE_139522:        CLC                       
CODE_139523:        ADC #$10                  
CODE_139525:        CMP.l DATA_13D497,x             
CODE_139529:        BEQ CODE_13952E           
CODE_13952B:        DEX                       
CODE_13952C:        BPL CODE_139525           
CODE_13952E:        TXA                       
CODE_13952F:        ASL A                     
CODE_139530:        STA $0E                   
CODE_139532:        ASL A                     
CODE_139533:        STA $0F                   
CODE_139535:        CLC                       
CODE_139536:        ADC $0E                   
CODE_139538:        TAX                       
CODE_139539:        LDY $E7                   
CODE_13953B:        STY $0E                   
CODE_13953D:        STZ $0F                   
CODE_13953F:        LDA $0F                   
CODE_139541:        CMP #$02                  
CODE_139543:        BNE CODE_13954E           
CODE_139545:        PHX                       
CODE_139546:        JSR CODE_139580           
CODE_139549:        PLX                       
CODE_13954A:        CMP #$00                  
CODE_13954C:        BNE CODE_139552           
CODE_13954E:        LDA.l DATA_13D49C,x             
CODE_139552:        STA [$01],y               
CODE_139554:        INX                       
CODE_139555:        JSR CODE_1396D2           
CODE_139558:        LDA $0F                   
CODE_13955A:        CMP #$02                  
CODE_13955C:        BNE CODE_139567           
CODE_13955E:        PHX                       
CODE_13955F:        JSR CODE_139580           
CODE_139562:        PLX                       
CODE_139563:        CMP #$00                  
CODE_139565:        BNE CODE_13956B           
CODE_139567:        LDA.l DATA_13D49C,x             
CODE_13956B:        STA [$01],y               
CODE_13956D:        INC $0F                   
CODE_13956F:        LDA $0F                   
CODE_139571:        CMP #$03                  
CODE_139573:        BEQ CODE_13957F           
CODE_139575:        INX                       
CODE_139576:        LDY $0E                   
CODE_139578:        JSR CODE_1396B0           
CODE_13957B:        STY $0E                   
CODE_13957D:        BRA CODE_13953F           

CODE_13957F:        RTS                       

CODE_139580:        LDX #$09                  
CODE_139582:        LDA $0533                 
CODE_139585:        CMP.l DATA_13D4BA,x             
CODE_139589:        BNE CODE_139594           
CODE_13958B:        LDA $0534                 
CODE_13958E:        CMP.l DATA_13D4C4,x             
CODE_139592:        BEQ CODE_139599           
CODE_139594:        DEX                       
CODE_139595:        BPL CODE_139582           
CODE_139597:        BRA CODE_1395A6           

CODE_139599:        LDX #$06                  
CODE_13959B:        LDA [$01],y               
CODE_13959D:        CMP.l DATA_13D4CE,x             
CODE_1395A1:        BEQ CODE_1395A9           
CODE_1395A3:        DEX                       
CODE_1395A4:        BPL CODE_13959B           
CODE_1395A6:        LDA #$00                  
CODE_1395A8:        RTS                       

CODE_1395A9:        LDA.l DATA_13D4D5,x             
CODE_1395AD:        RTS                       

CODE_1395AE:        STZ $0F                   
CODE_1395B0:        LDA $050F                 
CODE_1395B3:        CMP #$02                  
CODE_1395B5:        BEQ CODE_1395BB           
CODE_1395B7:        LDA #$03                  
CODE_1395B9:        STA $0F                   
CODE_1395BB:        LDY $E7                   
CODE_1395BD:        LDA $E9                   
CODE_1395BF:        STA $0712                 
CODE_1395C2:        STZ $08                   
CODE_1395C4:        LDX $0F                   
CODE_1395C6:        CPX #$01                  
CODE_1395C8:        BNE CODE_1395D2           
CODE_1395CA:        DEY                       
CODE_1395CB:        LDA.l DATA_13DAA2               
CODE_1395CF:        STA [$01],y               
CODE_1395D1:        INY                       
CODE_1395D2:        LDA.l DATA_13DA8E,x             
CODE_1395D6:        STA [$01],y               
CODE_1395D8:        LDX $08                   
CODE_1395DA:        BEQ CODE_139602           
CODE_1395DC:        JSR CODE_139660           
CODE_1395DF:        BCS CODE_139621                   
CODE_1395E1:        PHX                       
CODE_1395E2:        LDX $0F                   
CODE_1395E4:        LDA.l DATA_13DA93,x             
CODE_1395E8:        STA [$01],y               
CODE_1395EA:        PLX                       
CODE_1395EB:        DEX                       
CODE_1395EC:        BNE CODE_1395DC           
CODE_1395EE:        LDX $08                   
CODE_1395F0:        JSR CODE_139660           
CODE_1395F3:        BCS CODE_139621                   
CODE_1395F5:        PHX                       
CODE_1395F6:        LDX $0F                   
CODE_1395F8:        LDA.l DATA_13DA98,x             
CODE_1395FC:        STA [$01],y               
CODE_1395FE:        PLX                       
CODE_1395FF:        DEX                       
CODE_139600:        BNE CODE_1395F0           
CODE_139602:        JSR CODE_139660           
CODE_139605:        BCS CODE_139621                  
CODE_139607:        LDX $0F                   
CODE_139609:        LDA.l DATA_13DA9D,x             
CODE_13960D:        STA [$01],y               
CODE_13960F:        CPX #$01                  
CODE_139611:        BNE CODE_139621           
CODE_139613:        INY                       
CODE_139614:        LDA.l DATA_13DAA3               
CODE_139618:        STA [$01],y               
CODE_13961A:        INY                       
CODE_13961B:        LDA.l DATA_13DAA4               
CODE_13961F:        STA [$01],y               
CODE_139621:        INC $08                   
CODE_139623:        LDX $E9                   
CODE_139625:        STX $0712                 
CODE_139628:        JSR CODE_1397DC           
CODE_13962B:        LDA $E7                   
CODE_13962D:        CLC                       
CODE_13962E:        ADC #$10                  
CODE_139630:        STA $E7                   
CODE_139632:        SEC                       
CODE_139633:        SBC $08                   
CODE_139635:        TAY                       
CODE_139636:        LDA $0F                   
CODE_139638:        CMP #$03                  
CODE_13963A:        BPL CODE_13964C           
CODE_13963C:        LDA $0F                   
CODE_13963E:        CMP #$02                  
CODE_139640:        BEQ CODE_13965F           
CODE_139642:        LDA [$01],y               
CODE_139644:        CMP #$FF                  
CODE_139646:        BEQ CODE_139659           
CODE_139648:        INC $0F                   
CODE_13964A:        BRA CODE_139659           

CODE_13964C:        TYA                       
CODE_13964D:        AND #$F0                  
CODE_13964F:        CMP #$A0                  
CODE_139651:        BEQ CODE_13965F           
CODE_139653:        CMP #$90                  
CODE_139655:        BNE CODE_139659           
CODE_139657:        INC $0F                   
CODE_139659:        JSR CODE_139689           
CODE_13965C:        BRL CODE_1395C4           

CODE_13965F:        RTS                       

CODE_139660:        PHX                       
CODE_139661:        LDA $E7                   
CODE_139663:        AND #$F0                  
CODE_139665:        STA $0713                 
CODE_139668:        INY                       
CODE_139669:        TYA                       
CODE_13966A:        AND #$F0                  
CODE_13966C:        CMP $0713                 
CODE_13966F:        BEQ CODE_139686           
CODE_139671:        LDA $E7                   
CODE_139673:        AND #$F0                  
CODE_139675:        TAY                       
CODE_139676:        INC $0712                 
CODE_139679:        LDX $0712                 
CODE_13967C:        JSR CODE_1397DC           
CODE_13967F:        CPX #$0A                  
CODE_139681:        BNE CODE_139686           
CODE_139683:        PLX                       
CODE_139684:        SEC                       
CODE_139685:        RTS                       

CODE_139686:        PLX                       
CODE_139687:        CLC                       
CODE_139688:        RTS                       

CODE_139689:        LDA $E7                   
CODE_13968B:        AND #$F0                  
CODE_13968D:        STA $0713                 
CODE_139690:        TYA                       
CODE_139691:        AND #$F0                  
CODE_139693:        CMP $0713                 
CODE_139696:        BEQ CODE_1396AF           
CODE_139698:        TYA                       
CODE_139699:        AND #$0F                  
CODE_13969B:        STA $0713                 
CODE_13969E:        LDA $E7                   
CODE_1396A0:        AND #$F0                  
CODE_1396A2:        ORA $0713                 
CODE_1396A5:        TAY                       
CODE_1396A6:        DEC $0712                 
CODE_1396A9:        LDX $0712                 
CODE_1396AC:        JSR CODE_1397DC           
CODE_1396AF:        RTS                       

CODE_1396B0:        INY                       
CODE_1396B1:        TYA                       
CODE_1396B2:        AND #$0F                  
CODE_1396B4:        BEQ CODE_1396BF           
CODE_1396B6:        LDA $02E4                 
CODE_1396B9:        BEQ CODE_1396D1           
CODE_1396BB:        LDX $E9                   
CODE_1396BD:        BRA CODE_1396CC           

CODE_1396BF:        TYA                       
CODE_1396C0:        SEC                       
CODE_1396C1:        SBC #$10                  
CODE_1396C3:        TAY                       
CODE_1396C4:        STX $0B                   
CODE_1396C6:        LDX $E9                   
CODE_1396C8:        INX                       
CODE_1396C9:        STX $0247                 
CODE_1396CC:        JSR CODE_1397DC           
CODE_1396CF:        LDX $0B                   
CODE_1396D1:        RTS                       

CODE_1396D2:        TYA                       
CODE_1396D3:        CLC                       
CODE_1396D4:        ADC #$10                  
CODE_1396D6:        TAY                       
CODE_1396D7:        CMP #$F0                  
CODE_1396D9:        BCC CODE_139704           
CODE_1396DB:        LDA $050F                 
CODE_1396DE:        CLC                       
CODE_1396DF:        ADC #$10                  
CODE_1396E1:        CMP #$2A                  
CODE_1396E3:        BEQ CODE_1396EB           
CODE_1396E5:        LDX $E9                   
CODE_1396E7:        INX                       
CODE_1396E8:        JSR CODE_1397DC           
CODE_1396EB:        TYA                       
CODE_1396EC:        AND #$0F                  
CODE_1396EE:        TAY                       
CODE_1396EF:        LDX #$06                  
CODE_1396F1:        LDA $050F                 
CODE_1396F4:        CLC                       
CODE_1396F5:        ADC #$10                  
CODE_1396F7:        CMP.l DATA_13DB60,x             
CODE_1396FB:        BEQ CODE_139701           
CODE_1396FD:        DEX                       
CODE_1396FE:        BPL CODE_1396F7           
CODE_139700:        RTS                       

CODE_139701:        INC $02E4                 
CODE_139704:        RTS                       

CODE_139705:        LDA $09                   
CODE_139707:        ASL A                     
CODE_139708:        ASL A                     
CODE_139709:        SEC                       
CODE_13970A:        ADC $09                   
CODE_13970C:        STA $09                   
CODE_13970E:        ASL $0A                   
CODE_139710:        LDA #$20                  
CODE_139712:        BIT $0A                   
CODE_139714:        BCS CODE_13971A                   
CODE_139716:        BNE CODE_13971C           
CODE_139718:        BEQ CODE_13971E           
CODE_13971A:        BNE CODE_13971E           
CODE_13971C:        INC $0A                   
CODE_13971E:        LDA $0A                   
CODE_139720:        EOR $09                   
CODE_139722:        RTS                       

DATA_139723:        db $00,$10,$20,$30,$40,$50         

CODE_139729:        STZ $E9
CODE_13972B:        LDY #$01
CODE_13972D:        LDA [$05],y
CODE_13972F:        AND #$80
CODE_139731:        BNE CODE_139736
CODE_139733:        JSR CODE_13986E
CODE_139736:        INC $04                
CODE_139738:        LDY $04
CODE_13973A:        INY                       
CODE_13973B:        LDA [$05],y               
CODE_13973D:        CMP #$FF                  
CODE_13973F:        BNE CODE_139742           
CODE_139741:        RTL                       

CODE_139742:        LDA [$05],y               
CODE_139744:        AND #$0F                  
CODE_139746:        STA $E5                   
CODE_139748:        LDA [$05],y               
CODE_13974A:        AND #$F0                  
CODE_13974C:        CMP #$F0                  
CODE_13974E:        BNE CODE_13975E           
CODE_139750:        LDA $E5                   
CODE_139752:        STY $08                   
CODE_139754:        JSR CODE_1397C1           
CODE_139757:        JSR CODE_13992F           
CODE_13975A:        LDY $08                   
CODE_13975C:        BRA CODE_13973A           

CODE_13975E:        STA $E6                   
CODE_139760:        INY                       
CODE_139761:        STY $04                   
CODE_139763:        JSR CODE_1397D3           
CODE_139766:        LDA [$05],y               
CODE_139768:        LSR A                     
CODE_139769:        LSR A                     
CODE_13976A:        LSR A                     
CODE_13976B:        LSR A                     
CODE_13976C:        STA $050F                 
CODE_13976F:        CMP #$07                  
CODE_139771:        BCS CODE_1397A2                   
CODE_139773:        PHA                       
CODE_139774:        LDA [$05],y               
CODE_139776:        AND #$0F                  
CODE_139778:        STA $050F                 
CODE_13977B:        PLA                       
CODE_13977C:        BEQ CODE_1397B8           
CODE_13977E:        CMP #$01                  
CODE_139780:        BNE CODE_139788           
CODE_139782:        JSR CODE_139318           
CODE_139785:        BRL CODE_139738           

CODE_139788:        CMP #$07                  
CODE_13978A:        BPL CODE_13979F           
CODE_13978C:        DEC A                     
CODE_13978D:        TAX                       
CODE_13978E:        LDA $050F                 
CODE_139791:        CLC                       
CODE_139792:        ADC.l DATA_139723,x             
CODE_139796:        STA $050F                 
CODE_139799:        JSR CODE_139318           
CODE_13979C:        BRL CODE_139738           

CODE_13979F:        BRL CODE_139738           

CODE_1397A2:        LDA [$05],y               
CODE_1397A4:        AND #$0F                  
CODE_1397A6:        STA $050E                 
CODE_1397A9:        LDA $050F                 
CODE_1397AC:        SEC                       
CODE_1397AD:        SBC #$07                  
CODE_1397AF:        STA $050F                 
CODE_1397B2:        JSR CODE_139300           
CODE_1397B5:        BRL CODE_139738           

CODE_1397B8:        LDA $050F                 
CODE_1397BB:        JSR CODE_139309           
CODE_1397BE:        BRL CODE_139738           

CODE_1397C1:        ASL A                     
CODE_1397C2:        TAX                       
CODE_1397C3:        JMP (PNTR_1397C6,x)             

PNTR_1397C6:        dw CODE_1397CC
                    dw CODE_1397CA

CODE_1397CA:        INC $E9
CODE_1397CC:        INC $E9
CODE_1397CE:        LDA #$00
CODE_1397D0:        STA $E6
CODE_1397D2:        RTS
                 
CODE_1397D3:        LDX $E9                   
CODE_1397D5:        LDA $E6                   
CODE_1397D7:        CLC                       
CODE_1397D8:        ADC $E5                   
CODE_1397DA:        STA $E7                   
CODE_1397DC:        LDA $0534                 
CODE_1397DF:        ASL A                     
CODE_1397E0:        ASL A                     
CODE_1397E1:        ASL A                     
CODE_1397E2:        ASL A                     
CODE_1397E3:        CLC                       
CODE_1397E4:        ADC.w DATA_11AAFB,x               
CODE_1397E7:        STA $02                   
CODE_1397E9:        LDA.w DATA_11AAF0,x               
CODE_1397EC:        STA $01                   
CODE_1397EE:        LDA #$7F                  
CODE_1397F0:        STA $03                   
CODE_1397F2:        RTS                       

CODE_1397F3:        REP #$30                  
CODE_1397F5:        LDA $02D9                 
CODE_1397F8:        STA $7F0002               
CODE_1397FC:        LDA #$8000                
CODE_1397FF:        STA $7F0004               
CODE_139803:        LDX #$0000                
CODE_139806:        LDA [$C4]                 
CODE_139808:        AND #$00FF                
CODE_13980B:        CMP #$00FF                
CODE_13980E:        BEQ CODE_139834           
CODE_139810:        ASL A                     
CODE_139811:        ASL A                     
CODE_139812:        ASL A                     
CODE_139813:        TAY                       
CODE_139814:        LDA [$00],y               
CODE_139816:        STA $7F0006,x             
CODE_13981A:        INY                       
CODE_13981B:        INY                       
CODE_13981C:        LDA [$00],y               
CODE_13981E:        STA $7F0008,x             
CODE_139822:        INY                       
CODE_139823:        INY                       
CODE_139824:        LDA [$00],y               
CODE_139826:        STA $7F0046,x             
CODE_13982A:        INY                       
CODE_13982B:        INY                       
CODE_13982C:        LDA [$00],y               
CODE_13982E:        STA $7F0048,x             
CODE_139832:        BRA CODE_139847           

CODE_139834:        LDA #$00BF                
CODE_139837:        STA $7F0006,x             
CODE_13983B:        STA $7F0008,x             
CODE_13983F:        STA $7F0046,x             
CODE_139843:        STA $7F0048,x             
CODE_139847:        LDA $C4                   
CODE_139849:        CLC                       
CODE_13984A:        ADC #$0001                
CODE_13984D:        STA $C4                   
CODE_13984F:        INX                       
CODE_139850:        INX                       
CODE_139851:        INX                       
CODE_139852:        INX                       
CODE_139853:        CPX #$0040                
CODE_139856:        BNE CODE_139806           
CODE_139858:        LDA #$FFFF                
CODE_13985B:        STA $7F0086               
CODE_13985F:        LDA $02D9                 
CODE_139862:        XBA                       
CODE_139863:        CLC                       
CODE_139864:        ADC #$0040                
CODE_139867:        XBA                       
CODE_139868:        STA $02D9                 
CODE_13986B:        SEP #$30                  
CODE_13986D:        RTS                       

CODE_13986E:        LDA [$05],y               
CODE_139870:        AND #$7F                  
CODE_139872:        ASL A                     
CODE_139873:        TAX                       
CODE_139874:        LDA.l PNTR_13C661,x             
CODE_139878:        STA $C4                   
CODE_13987A:        INX                       
CODE_13987B:        LDA.l PNTR_13C661,x             
CODE_13987F:        STA $C5                   
CODE_139881:        LDA #$13                  
CODE_139883:        STA $C6                   
CODE_139885:        LDY #$00                  
CODE_139887:        LDA [$C4],y               
CODE_139889:        AND #$F0                  
CODE_13988B:        STA $02DC                 
CODE_13988E:        LSR A                     
CODE_13988F:        LSR A                     
CODE_139890:        LSR A                     
CODE_139891:        LSR A                     
CODE_139892:        STA $02DE                 
CODE_139895:        LDA [$C4],y               
CODE_139897:        AND #$0F                  
CODE_139899:        STA $02DD                 
CODE_13989C:        INC $02DD                 
CODE_13989F:        STZ $0C                   
CODE_1398A1:        STZ $0E                   
CODE_1398A3:        STZ $0D                   
CODE_1398A5:        STZ $0F                   
CODE_1398A7:        JSR CODE_139913           
CODE_1398AA:        JSR CODE_1398C4           
CODE_1398AD:        JSR CODE_1398D6           
CODE_1398B0:        INC $0C                   
CODE_1398B2:        LDA $0C                   
CODE_1398B4:        CMP $02DD                 
CODE_1398B7:        BMI CODE_1398BB           
CODE_1398B9:        STZ $0C                   
CODE_1398BB:        INC $0E                   
CODE_1398BD:        LDA $0E                   
CODE_1398BF:        CMP #$10                  
CODE_1398C1:        BNE CODE_1398A3           
CODE_1398C3:        RTS                       

CODE_1398C4:        LDA $02DC                 
CODE_1398C7:        BEQ CODE_1398D5           
CODE_1398C9:        LDA $0F                   
CODE_1398CB:        CLC                       
CODE_1398CC:        ADC #$10                  
CODE_1398CE:        STA $0F                   
CODE_1398D0:        CMP $02DC                 
CODE_1398D3:        BNE CODE_1398C9           
CODE_1398D5:        RTS                       

CODE_1398D6:        JSR CODE_1398F7           
CODE_1398D9:        LDY $0F                   
CODE_1398DB:        LDA [$01],y               
CODE_1398DD:        CMP #$FF                  
CODE_1398DF:        BNE CODE_1398E9           
CODE_1398E1:        LDY $0D                   
CODE_1398E3:        LDA [$C4],y               
CODE_1398E5:        LDY $0F                   
CODE_1398E7:        STA [$01],y               
CODE_1398E9:        INC $0D                   
CODE_1398EB:        LDA $0F                   
CODE_1398ED:        CLC                       
CODE_1398EE:        ADC #$10                  
CODE_1398F0:        STA $0F                   
CODE_1398F2:        CMP #$F0                  
CODE_1398F4:        BNE CODE_1398D9           
CODE_1398F6:        RTS                       

CODE_1398F7:        LDA $0C                   
CODE_1398F9:        BEQ CODE_139910           
CODE_1398FB:        ASL A                     
CODE_1398FC:        ASL A                     
CODE_1398FD:        ASL A                     
CODE_1398FE:        ASL A                     
CODE_1398FF:        STA $0D                   
CODE_139901:        LDX $0C                   
CODE_139903:        DEX                       
CODE_139904:        BMI CODE_139910           
CODE_139906:        LDA $0D                   
CODE_139908:        SEC                       
CODE_139909:        SBC $02DE                 
CODE_13990C:        STA $0D                   
CODE_13990E:        BRA CODE_139903           

CODE_139910:        INC $0D                   
CODE_139912:        RTS                       

CODE_139913:        LDX $E9                   
CODE_139915:        LDA.w DATA_11AAF0,x               
CODE_139918:        CLC                       
CODE_139919:        ADC $0E                   
CODE_13991B:        STA $01                   
CODE_13991D:        LDA $0534                 
CODE_139920:        ASL A                     
CODE_139921:        ASL A                     
CODE_139922:        ASL A                     
CODE_139923:        ASL A                     
CODE_139924:        CLC                       
CODE_139925:        ADC.w DATA_11AAFB,x               
CODE_139928:        STA $02                   
CODE_13992A:        LDA #$7F                  
CODE_13992C:        STA $03                   
CODE_13992E:        RTS                       

CODE_13992F:        LDY $08                   
CODE_139931:        INY                       
CODE_139932:        LDA [$05],y               
CODE_139934:        AND #$80                  
CODE_139936:        BNE CODE_13993B           
CODE_139938:        JSR CODE_13986E           
CODE_13993B:        INC $08                   
CODE_13993D:        RTS                       

CODE_13993E:        LDX #$03                  
CODE_139940:        LDA $050F                 
CODE_139943:        CLC                       
CODE_139944:        ADC #$10                  
CODE_139946:        CMP.l DATA_13D483,x             
CODE_13994A:        BEQ CODE_13994F           
CODE_13994C:        DEX                       
CODE_13994D:        BPL CODE_139946           
CODE_13994F:        TXA                       
CODE_139950:        ASL A                     
CODE_139951:        ASL A                     
CODE_139952:        TAX                       
CODE_139953:        LDY $E7                   
CODE_139955:        LDA.l DATA_13D487,x             
CODE_139959:        STA [$01],y               
CODE_13995B:        JSR CODE_1396D2           
CODE_13995E:        INX                       
CODE_13995F:        LDA.l DATA_13D487,x             
CODE_139963:        STA [$01],y               
CODE_139965:        INX                       
CODE_139966:        LDY $E7                   
CODE_139968:        JSR CODE_1396B0           
CODE_13996B:        LDA.l DATA_13D487,x             
CODE_13996F:        STA [$01],y               
CODE_139971:        JSR CODE_1396D2           
CODE_139974:        INX                       
CODE_139975:        LDA.l DATA_13D487,x             
CODE_139979:        STA [$01],y               
CODE_13997B:        RTS                       

CODE_13997C:        LDY $E7                   
CODE_13997E:        LDX #$00                  
CODE_139980:        LDA.l DATA_13D4DC,x             
CODE_139984:        STA [$01],y               
CODE_139986:        STY $02DE                 
CODE_139989:        LDY $E7                   
CODE_13998B:        INX                       
CODE_13998C:        CPX #$02                  
CODE_13998E:        BEQ CODE_1399A3           
CODE_139990:        CPX #$07                  
CODE_139992:        BEQ CODE_1399A0           
CODE_139994:        CPX #$0A                  
CODE_139996:        BEQ CODE_1399A8           
CODE_139998:        LDY $02DE                 
CODE_13999B:        JSR CODE_1396D2           
CODE_13999E:        BRA CODE_139980           

CODE_1399A0:        JSR CODE_1396B0           
CODE_1399A3:        JSR CODE_1396B0           
CODE_1399A6:        BRA CODE_139980           

CODE_1399A8:        RTS                       

CODE_1399A9:        LDX #$33                  
CODE_1399AB:        LDA $050F                 
CODE_1399AE:        CLC                       
CODE_1399AF:        ADC #$10                  
CODE_1399B1:        CMP.l DATA_13D4E6,x             
CODE_1399B5:        BEQ CODE_1399BA           
CODE_1399B7:        DEX                       
CODE_1399B8:        BPL CODE_1399B1           
CODE_1399BA:        TXA                       
CODE_1399BB:        ASL A                     
CODE_1399BC:        TAX                       
CODE_1399BD:        LDA.l PNTR_13D51A,x             
CODE_1399C1:        STA $08                   
CODE_1399C3:        INX                       
CODE_1399C4:        LDA.l PNTR_13D51A,x             
CODE_1399C8:        STA $09                   
CODE_1399CA:        LDA #$13                  
CODE_1399CC:        STA $0A                   
CODE_1399CE:        LDY #$00                  
CODE_1399D0:        LDA [$08],y               
CODE_1399D2:        AND #$F0                  
CODE_1399D4:        LSR A                     
CODE_1399D5:        LSR A                     
CODE_1399D6:        LSR A                     
CODE_1399D7:        LSR A                     
CODE_1399D8:        STA $0E                   
CODE_1399DA:        STA $0D                   
CODE_1399DC:        LDA [$08],y               
CODE_1399DE:        AND #$0F                  
CODE_1399E0:        STA $0F                   
CODE_1399E2:        JSR CODE_1399E9           
CODE_1399E5:        STZ $02E4                 
CODE_1399E8:        RTS                       

CODE_1399E9:        LDA #$01                  
CODE_1399EB:        STA $02E3                 
CODE_1399EE:        LDA $E7                   
CODE_1399F0:        STA $02E2                 
CODE_1399F3:        LDA $E7                   
CODE_1399F5:        STA $0C                   
CODE_1399F7:        LDY $02E3                 
CODE_1399FA:        LDA [$08],y               
CODE_1399FC:        LDY $02E2                 
CODE_1399FF:        STA [$01],y               
CODE_139A01:        INC $02E3                 
CODE_139A04:        LDY $02E2                 
CODE_139A07:        JSR CODE_1396D2           
CODE_139A0A:        STY $02E2                 
CODE_139A0D:        DEC $0E                   
CODE_139A0F:        LDA $0E                   
CODE_139A11:        BPL CODE_1399F7           
CODE_139A13:        DEC $0F                   
CODE_139A15:        LDA $0F                   
CODE_139A17:        BMI CODE_139A29           
CODE_139A19:        LDY $0C                   
CODE_139A1B:        JSR CODE_1396B0           
CODE_139A1E:        STY $0C                   
CODE_139A20:        STY $02E2                 
CODE_139A23:        LDA $0D                   
CODE_139A25:        STA $0E                   
CODE_139A27:        BRA CODE_1399F7           

CODE_139A29:        RTS                       

CODE_139A2A:        LDA $050F                 
CODE_139A2D:        SEC                       
CODE_139A2E:        SBC #$0E                  
CODE_139A30:        STA $0C                   
CODE_139A32:        ASL A                     
CODE_139A33:        CLC                       
CODE_139A34:        ADC $0C                   
CODE_139A36:        STA $0F                   
CODE_139A38:        TAX                       
CODE_139A39:        LDY $E7                   
CODE_139A3B:        STY $0E                   
CODE_139A3D:        LDA $0533                 
CODE_139A40:        CMP #$05                  
CODE_139A42:        BNE CODE_139A4B           
CODE_139A44:        LDA $0534                 
CODE_139A47:        CMP #$04                  
CODE_139A49:        BEQ CODE_139A65           
CODE_139A4B:        LDA $0533                 
CODE_139A4E:        CMP #$0F                  
CODE_139A50:        BNE CODE_139A69           
CODE_139A52:        LDA $0534                 
CODE_139A55:        CMP #$03                  
CODE_139A57:        BEQ CODE_139A65           
CODE_139A59:        CMP #$04                  
CODE_139A5B:        BEQ CODE_139A65           
CODE_139A5D:        CMP #$05                  
CODE_139A5F:        BEQ CODE_139A65           
CODE_139A61:        CMP #$06                  
CODE_139A63:        BNE CODE_139A69           
CODE_139A65:        LDA #$05                  
CODE_139A67:        BRA CODE_139A6B           

CODE_139A69:        LDA #$04                  
CODE_139A6B:        STA $0D                   
CODE_139A6D:        LDA.l DATA_13D9BE,x             
CODE_139A71:        STA [$01],y               
CODE_139A73:        TYA                       
CODE_139A74:        CLC                       
CODE_139A75:        ADC #$10                  
CODE_139A77:        TAY                       
CODE_139A78:        LDA.l DATA_13D9C8,x             
CODE_139A7C:        STA [$01],y               
CODE_139A7E:        TYA                       
CODE_139A7F:        CLC                       
CODE_139A80:        ADC #$10                  
CODE_139A82:        TAY                       
CODE_139A83:        DEC $0D                   
CODE_139A85:        BPL CODE_139A6D           
CODE_139A87:        LDA.l DATA_13D9D2,x             
CODE_139A8B:        STA [$01],y               
CODE_139A8D:        INX                       
CODE_139A8E:        TXA                       
CODE_139A8F:        LDX $0C                   
CODE_139A91:        CMP.l DATA_13D9DC,x             
CODE_139A95:        BEQ CODE_139AA1           
CODE_139A97:        TAX                       
CODE_139A98:        LDY $0E                   
CODE_139A9A:        JSR CODE_1396B0           
CODE_139A9D:        STY $0E                   
CODE_139A9F:        BRA CODE_139A3D           

CODE_139AA1:        RTS                       

CODE_139AA2:        LDY $E7                   
CODE_139AA4:        LDA #$03                  
CODE_139AA6:        STA $0F                   
CODE_139AA8:        STA $0E                   
CODE_139AAA:        LDX $0E                   
CODE_139AAC:        LDA.l DATA_13D9DF,x             
CODE_139AB0:        STA [$01],y               
CODE_139AB2:        STY $0D                   
CODE_139AB4:        TYA                       
CODE_139AB5:        CLC                       
CODE_139AB6:        ADC #$10                  
CODE_139AB8:        TAY                       
CODE_139AB9:        STX $0C                   
CODE_139ABB:        JSR CODE_139ADA           
CODE_139ABE:        LDX $0C                   
CODE_139AC0:        CMP #$00                  
CODE_139AC2:        BNE CODE_139AC8           
CODE_139AC4:        LDA.l DATA_13D9E3               
CODE_139AC8:        STA [$01],y               
CODE_139ACA:        LDY $0D                   
CODE_139ACC:        INY                       
CODE_139ACD:        DEC $0E                   
CODE_139ACF:        BPL CODE_139AAA           
CODE_139AD1:        DEC $0F                   
CODE_139AD3:        BMI CODE_139AD9           
CODE_139AD5:        LDA #$03                  
CODE_139AD7:        BRA CODE_139AA8           

CODE_139AD9:        RTS                       

CODE_139ADA:        LDX #$05                  
CODE_139ADC:        LDA [$01],y               
CODE_139ADE:        CMP.l DATA_13D9E4,x             
CODE_139AE2:        BEQ CODE_139AEA           
CODE_139AE4:        DEX                       
CODE_139AE5:        BPL CODE_139ADC           
CODE_139AE7:        LDA #$00                  
CODE_139AE9:        RTS                       

CODE_139AEA:        LDA.l DATA_13D9EA,x             
CODE_139AEE:        RTS                       

CODE_139AEF:        LDY $E7                   
CODE_139AF1:        STY $0C                   
CODE_139AF3:        STZ $0D                   
CODE_139AF5:        STZ $0F                   
CODE_139AF7:        STZ $0E                   
CODE_139AF9:        LDX $0D                   
CODE_139AFB:        LDA.l DATA_13D9F7,x             
CODE_139AFF:        STA [$01],y               
CODE_139B01:        INC $0D                   
CODE_139B03:        LDA $0D                   
CODE_139B05:        CMP #$17                  
CODE_139B07:        BEQ CODE_139B32           
CODE_139B09:        INC $0E                   
CODE_139B0B:        LDX $0F                   
CODE_139B0D:        LDA.l DATA_13D9F0,x             
CODE_139B11:        CMP $0E                   
CODE_139B13:        BEQ CODE_139B27           
CODE_139B15:        TYA                       
CODE_139B16:        AND #$F0                  
CODE_139B18:        CMP #$E0                  
CODE_139B1A:        BEQ CODE_139B21           
CODE_139B1C:        JSR CODE_1396D2           
CODE_139B1F:        BRA CODE_139AF9           

CODE_139B21:        INC $0D                   
CODE_139B23:        INC $0D                   
CODE_139B25:        INC $0D                   
CODE_139B27:        INC $0F                   
CODE_139B29:        LDY $0C                   
CODE_139B2B:        JSR CODE_1396B0           
CODE_139B2E:        STY $0C                   
CODE_139B30:        BRA CODE_139AF7           

CODE_139B32:        RTS                       

CODE_139B33:        RTS                       

CODE_139B34:        STZ $0D                   
CODE_139B36:        STZ $0E                   
CODE_139B38:        LDA $050F                 
CODE_139B3B:        SEC                       
CODE_139B3C:        SBC #$31                  
CODE_139B3E:        STA $0F                   
CODE_139B40:        LDY $E7                   
CODE_139B42:        LDX $0D                   
CODE_139B44:        LDY $E7                   
CODE_139B46:        LDA.l DATA_13DAA9,x             
CODE_139B4A:        STA [$01],y               
CODE_139B4C:        JSR CODE_1396D2           
CODE_139B4F:        LDA.l DATA_13DAAE,x             
CODE_139B53:        STA [$01],y               
CODE_139B55:        JSR CODE_1396D2           
CODE_139B58:        LDA.l DATA_13DAB3,x             
CODE_139B5C:        STA [$01],y               
CODE_139B5E:        JSR CODE_1396D2           
CODE_139B61:        LDA.l DATA_13DAB8,x             
CODE_139B65:        STA [$01],y               
CODE_139B67:        TYA                       
CODE_139B68:        AND #$F0                  
CODE_139B6A:        CMP #$E0                  
CODE_139B6C:        BNE CODE_139B5E           
CODE_139B6E:        LDX $0F                   
CODE_139B70:        INC $0E                   
CODE_139B72:        LDA $0E                   
CODE_139B74:        CMP.l DATA_13DAA5,x             
CODE_139B78:        BEQ CODE_139BA5           
CODE_139B7A:        CPX #$02                  
CODE_139B7C:        BNE CODE_139B86           
CODE_139B7E:        CMP #$02                  
CODE_139B80:        BNE CODE_139B97           
CODE_139B82:        INC $0D                   
CODE_139B84:        BRA CODE_139B97           

CODE_139B86:        CMP #$03                  
CODE_139B88:        BPL CODE_139B8C           
CODE_139B8A:        BRA CODE_139B97           

CODE_139B8C:        LDA.l DATA_13DAA5,x             
CODE_139B90:        SEC                       
CODE_139B91:        SBC #$03                  
CODE_139B93:        CMP $0E                   
CODE_139B95:        BCS CODE_139B99                  
CODE_139B97:        INC $0D                   
CODE_139B99:        LDY $00E7                 
CODE_139B9C:        JSR CODE_1396B0           
CODE_139B9F:        STY $00E7                 
CODE_139BA2:        BRL CODE_139B42           

CODE_139BA5:        RTS                       

CODE_139BA6:        STZ $0E                   
CODE_139BA8:        LDA $050F                 
CODE_139BAB:        SEC                       
CODE_139BAC:        SBC #$39                  
CODE_139BAE:        ASL A                     
CODE_139BAF:        ASL A                     
CODE_139BB0:        STA $0D                   
CODE_139BB2:        STZ $0C                   
CODE_139BB4:        STZ $0F                   
CODE_139BB6:        LDY $E7                   
CODE_139BB8:        LDA $0D                   
CODE_139BBA:        CLC                       
CODE_139BBB:        ADC $0E                   
CODE_139BBD:        TAX                       
CODE_139BBE:        LDA.l DATA_13DABD,x             
CODE_139BC2:        PHX                       
CODE_139BC3:        JSR CODE_139C24           
CODE_139BC6:        PLX                       
CODE_139BC7:        STA [$01],y               
CODE_139BC9:        INC $0C                   
CODE_139BCB:        JSR CODE_1396D2           
CODE_139BCE:        LDA.l DATA_13DACD,x             
CODE_139BD2:        PHX                       
CODE_139BD3:        JSR CODE_139C24           
CODE_139BD6:        PLX                       
CODE_139BD7:        STA [$01],y               
CODE_139BD9:        INC $0C                   
CODE_139BDB:        TYA                       
CODE_139BDC:        AND #$F0                  
CODE_139BDE:        CMP #$E0                  
CODE_139BE0:        BEQ CODE_139C0A           
CODE_139BE2:        JSR CODE_1396D2           
CODE_139BE5:        LDA $0D                   
CODE_139BE7:        CLC                       
CODE_139BE8:        ADC $0E                   
CODE_139BEA:        CLC                       
CODE_139BEB:        ADC $0F                   
CODE_139BED:        TAX                       
CODE_139BEE:        LDA.l DATA_13DADD,x             
CODE_139BF2:        STA [$01],y               
CODE_139BF4:        TYA                       
CODE_139BF5:        AND #$F0                  
CODE_139BF7:        CMP #$E0                  
CODE_139BF9:        BEQ CODE_139C0A           
CODE_139BFB:        LDA $0F                   
CODE_139BFD:        CLC                       
CODE_139BFE:        ADC #$10                  
CODE_139C00:        STA $0F                   
CODE_139C02:        CMP #$50                  
CODE_139C04:        BNE CODE_139BE2           
CODE_139C06:        STZ $0F                   
CODE_139C08:        BRA CODE_139BE2           

CODE_139C0A:        LDA $0E                   
CODE_139C0C:        CMP #$03                  
CODE_139C0E:        BEQ CODE_139C1E           
CODE_139C10:        LDY $00E7                 
CODE_139C13:        JSR CODE_1396B0           
CODE_139C16:        STY $00E7                 
CODE_139C19:        INC $0E                   
CODE_139C1B:        BRL CODE_139BB2           

CODE_139C1E:        PHX                       
CODE_139C1F:        JSR CODE_139C57           
CODE_139C22:        PLX                       
CODE_139C23:        RTS                       

CODE_139C24:        STA $0247                 
CODE_139C27:        LDA $0D                   
CODE_139C29:        CMP #$0C                  
CODE_139C2B:        BEQ CODE_139C53           
CODE_139C2D:        LDA $0C                   
CODE_139C2F:        BEQ CODE_139C3B           
CODE_139C31:        LDA $0E                   
CODE_139C33:        BEQ CODE_139C3B           
CODE_139C35:        CMP #$03                  
CODE_139C37:        BEQ CODE_139C3B           
CODE_139C39:        BRA CODE_139C53           

CODE_139C3B:        LDA [$01],y               
CODE_139C3D:        CMP #$FF                  
CODE_139C3F:        BEQ CODE_139C53           
CODE_139C41:        LDX #$05                  
CODE_139C43:        CMP.l DATA_13DB2D,x             
CODE_139C47:        BEQ CODE_139C4E           
CODE_139C49:        DEX                       
CODE_139C4A:        BPL CODE_139C43           
CODE_139C4C:        BRA CODE_139C53           

CODE_139C4E:        LDA.l DATA_13DB33,x             
CODE_139C52:        RTS                       

CODE_139C53:        LDA $0247                 
CODE_139C56:        RTS                       

CODE_139C57:        LDY $00E7                 
CODE_139C5A:        JSR CODE_1396B0           
CODE_139C5D:        TYA                       
CODE_139C5E:        CLC                       
CODE_139C5F:        ADC #$10                  
CODE_139C61:        TAY                       
CODE_139C62:        LDA [$01],y               
CODE_139C64:        CMP #$32                  
CODE_139C66:        BNE CODE_139C6E           
CODE_139C68:        LDA #$45                  
CODE_139C6A:        STA [$01],y               
CODE_139C6C:        BRA CODE_139C87           

CODE_139C6E:        LDA [$01],y               
CODE_139C70:        CMP #$FF                  
CODE_139C72:        BEQ CODE_139C87           
CODE_139C74:        LDX #$05                  
CODE_139C76:        CMP.l DATA_13DB39,x             
CODE_139C7A:        BEQ CODE_139C81           
CODE_139C7C:        DEX                       
CODE_139C7D:        BPL CODE_139C76           
CODE_139C7F:        BRA CODE_139C87           

CODE_139C81:        LDA.l DATA_13DB3F,x             
CODE_139C85:        STA [$01],y               
CODE_139C87:        TYA                       
CODE_139C88:        AND #$F0                  
CODE_139C8A:        CMP #$E0                  
CODE_139C8C:        BEQ CODE_139C93           
CODE_139C8E:        JSR CODE_1396D2           
CODE_139C91:        BRA CODE_139C6E           

CODE_139C93:        RTS                       

CODE_139C94:        LDA $0533                 
CODE_139C97:        CMP #$0D                  
CODE_139C99:        BNE CODE_139CAA           
CODE_139C9B:        LDA $0534                 
CODE_139C9E:        CMP #$02                  
CODE_139CA0:        BEQ CODE_139CA6           
CODE_139CA2:        CMP #$03                  
CODE_139CA4:        BNE CODE_139CAA           
CODE_139CA6:        LDA #$C0                  
CODE_139CA8:        BRA CODE_139CAC           

CODE_139CAA:        LDA #$B0                  
CODE_139CAC:        STA $0D                   
CODE_139CAE:        STZ $0E                   
CODE_139CB0:        LDY $E7                   
CODE_139CB2:        LDX $0E                   
CODE_139CB4:        LDA.l DATA_13DB45,x             
CODE_139CB8:        JSR CODE_139CE0           
CODE_139CBB:        STA [$01],y               
CODE_139CBD:        JSR CODE_1396D2           
CODE_139CC0:        TYA                       
CODE_139CC1:        AND #$F0                  
CODE_139CC3:        CMP $0D                   
CODE_139CC5:        BEQ CODE_139CCF           
CODE_139CC7:        LDA.l DATA_13DB47,x             
CODE_139CCB:        STA [$01],y               
CODE_139CCD:        BRA CODE_139CBD           

CODE_139CCF:        JSR CODE_139D04           
CODE_139CD2:        LDA $0E                   
CODE_139CD4:        BNE CODE_139CDF           
CODE_139CD6:        LDY $E7                   
CODE_139CD8:        JSR CODE_1396B0           
CODE_139CDB:        INC $0E                   
CODE_139CDD:        BRA CODE_139CB2           

CODE_139CDF:        RTS                       

CODE_139CE0:        STA $0247                 
CODE_139CE3:        STX $0F                   
CODE_139CE5:        LDA [$01],y               
CODE_139CE7:        CMP #$FF                  
CODE_139CE9:        BEQ CODE_139CFE           
CODE_139CEB:        LDX #$01                  
CODE_139CED:        CMP.l DATA_13DB49,x             
CODE_139CF1:        BEQ CODE_139CF8           
CODE_139CF3:        DEX                       
CODE_139CF4:        BPL CODE_139CED           
CODE_139CF6:        BRA CODE_139CFE           

CODE_139CF8:        LDA.l DATA_13DB4B,x             
CODE_139CFC:        BRA CODE_139D01           

CODE_139CFE:        LDA $0247                 
CODE_139D01:        LDX $0F                   
CODE_139D03:        RTS                       

CODE_139D04:        LDA $0E                   
CODE_139D06:        ASL A                     
CODE_139D07:        TAX                       
CODE_139D08:        LDA [$01],y               
CODE_139D0A:        CMP.l DATA_13DB4D,x             
CODE_139D0E:        BEQ CODE_139D17           
CODE_139D10:        INX                       
CODE_139D11:        CMP.l DATA_13DB4D,x             
CODE_139D15:        BNE CODE_139D1E           
CODE_139D17:        LDA.l DATA_13DB51,x             
CODE_139D1B:        STA [$01],y               
CODE_139D1D:        RTS                       

CODE_139D1E:        LDA $0E                   
CODE_139D20:        ASL A                     
CODE_139D21:        TAX                       
CODE_139D22:        LDA [$01],y               
CODE_139D24:        CMP.l DATA_13DB55,x             
CODE_139D28:        BEQ CODE_139D31           
CODE_139D2A:        INX                       
CODE_139D2B:        CMP.l DATA_13DB55,x             
CODE_139D2F:        BNE CODE_139D37           
CODE_139D31:        LDA.l DATA_13DB59,x             
CODE_139D35:        STA [$01],y               
CODE_139D37:        RTS                       

CODE_139D38:        LDY $E7                   
CODE_139D3A:        LDA.l DATA_13DB5D               
CODE_139D3E:        STA [$01],y               
CODE_139D40:        JSR CODE_1396D2           
CODE_139D43:        LDA.l DATA_13DB5E               
CODE_139D47:        STA [$01],y               
CODE_139D49:        JSR CODE_1396D2           
CODE_139D4C:        LDA.l DATA_13DB5F               
CODE_139D50:        STA [$01],y               
CODE_139D52:        RTS                       

CODE_139D53:        STZ $0770                 
CODE_139D56:        STZ $C4                   
CODE_139D58:        LDA $0533                 
CODE_139D5B:        CMP #$0F                  
CODE_139D5D:        BNE CODE_139D6B           
CODE_139D5F:        LDA $051B                 
CODE_139D62:        BNE CODE_139D6B           
CODE_139D64:        INC $0770                 
CODE_139D67:        LDA #$80                  
CODE_139D69:        BRA CODE_139D6D           

CODE_139D6B:        LDA #$60                  
CODE_139D6D:        STA $C5                   
CODE_139D6F:        LDA #$7F                  
CODE_139D71:        STA $C6                   
CODE_139D73:        LDA $0770                 
CODE_139D76:        BNE CODE_139D85           
CODE_139D78:        LDX $0533                 
CODE_139D7B:        LDA.l DATA_11D098,x             
CODE_139D7F:        CLC                       
CODE_139D80:        ADC $0534                 
CODE_139D83:        BRA CODE_139D8E           

CODE_139D85:        LDX #$0F                  
CODE_139D87:        LDA.l DATA_11D098,x             
CODE_139D8B:        CLC                       
CODE_139D8C:        ADC #$06                  
CODE_139D8E:        TAX                       
CODE_139D8F:        LDA.l DATA_13A61D,x             
CODE_139D93:        ASL A                     
CODE_139D94:        TAX                       
CODE_139D95:        LDA.l PNTR_13A6E5,x             
CODE_139D99:        STA $00                   
CODE_139D9B:        INX                       
CODE_139D9C:        LDA.l PNTR_13A6E5,x             
CODE_139DA0:        STA $01                   
CODE_139DA2:        LDA #$13                  
CODE_139DA4:        STA $02                   
CODE_139DA6:        STZ $02D7                 
CODE_139DA9:        STZ $02D8                 
CODE_139DAC:        STZ $02DA                 
CODE_139DAF:        LDA #$10                  
CODE_139DB1:        STA $02D9                 
CODE_139DB4:        JSL CODE_118B2D           
CODE_139DB8:        JSR CODE_1397F3           
CODE_139DBB:        LDA $02D9                 
CODE_139DBE:        CMP #$14                  
CODE_139DC0:        BNE CODE_139DB4           
CODE_139DC2:        LDA #$00                  
CODE_139DC4:        STA $7F0000               
CODE_139DC8:        STA $7F0001               
CODE_139DCC:        DEC A                     
CODE_139DCD:        STA $7F0002               
CODE_139DD1:        STZ $0202                 
CODE_139DD4:        STZ $0203                 
CODE_139DD7:        LDA #$20                  
CODE_139DD9:        STA $023D                 
CODE_139DDC:        LDA #$40                  
CODE_139DDE:        STA $023E                 
CODE_139DE1:        LDA #$80                  
CODE_139DE3:        STA $023F                 
CODE_139DE6:        RTL                       

DATA_139DE7:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF                                  ; /
          
DATA_139E00:        db $00,$0A,$14,$1E,$28,$32,$3C,$46
                    db $50,$5A,$64,$6E,$78,$82,$8C,$96
                    db $A0,$AA,$B4,$BE,$C8

DATA_139E15:        db $13

DATA_139E16:        db $BA,$BA,$C7,$F8,$F8,$E5,$E5,$E5
                    db $E5,$E5,$C7,$F8,$C7,$E8,$E8,$F3
                    db $F3,$F3,$F3,$F3,$C7,$F3,$F6,$B3
                    db $52,$52,$52,$52,$52,$52,$89,$AE
                    db $BD,$BD,$F6,$BD,$BD,$BD,$BD,$BD
                    db $FD,$0E,$FD,$4D,$56,$FD,$67,$67
                    db $67,$67,$FD,$89,$FD,$AE,$70,$BD
                    db $7B,$F3,$8A,$8A,$8D,$BA,$F8,$92
                    db $F8,$95,$95,$95,$95,$95,$95,$A2
                    db $A2,$AD,$AD,$AD,$AD,$AD,$AD,$AD
                    db $F8,$C7,$B3,$F6,$F6,$F6,$F3,$AD
                    db $52,$B4,$B4,$D7,$18,$18,$18,$18
                    db $18,$18,$18,$18,$18,$D7,$B4,$1D
                    db $18,$20,$20,$20,$20,$20,$18,$B4
                    db $F6,$F6,$23,$F3,$18,$18,$26,$26
                    db $26,$F8,$F8,$2B,$2B,$2B,$2B,$2B
                    db $2B,$2B,$F8,$2B,$8C,$B7,$E4,$EB
                    db $0A,$0A,$0A,$0A,$F8,$C7,$F8,$0A
                    db $19,$1C,$1C,$1C,$1C,$1C,$0E,$FD
                    db $FD,$60,$60,$60,$67,$67,$67,$67
                    db $FD,$78,$FD,$85,$85,$85,$85,$85
                    db $85,$85,$FD,$89,$FD,$BA,$85,$BD
                    db $7B,$88,$88,$88,$BA,$88,$88,$BA
                    db $B1,$B1,$B1,$B1,$B1,$B1,$B6,$B9
                    db $B9,$B9,$B9,$D8,$FB,$FB,$FB,$BA
                    db $10,$10,$10,$10,$10,$10,$10,$10
                    db $10,$10
         
DATA_139EE8:        db $9F,$9F,$9F,$9F,$9F,$A0,$A0,$A0
                    db $A0,$A0,$9F,$9F,$9F,$A0,$A0,$A0
                    db $A0,$A0,$A0,$A0,$9F,$A0,$A0,$A1
                    db $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2
                    db $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2
                    db $A2,$A3,$A2,$A3,$A3,$A2,$A3,$A3
                    db $A3,$A3,$A2,$A2,$A2,$A2,$A3,$A2
                    db $A3,$A0,$A3,$A3,$A3,$9F,$9F,$A3
                    db $9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
                    db $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
                    db $9F,$9F,$A1,$A0,$A0,$A0,$A0,$A3
                    db $A2,$A3,$A3,$A3,$A4,$A4,$A4,$A4
                    db $A4,$A4,$A4,$A4,$A4,$A3,$A3,$A4
                    db $A4,$A4,$A4,$A4,$A4,$A4,$A4,$A3
                    db $A0,$A0,$A4,$A0,$A4,$A4,$A4,$A4
                    db $A4,$9F,$9F,$A4,$A4,$A4,$A4,$A4
                    db $A4,$A4,$9F,$A4,$A4,$A4,$A4,$A4
                    db $A5,$A5,$A5,$A5,$9F,$9F,$9F,$A5
                    db $A5,$A5,$A5,$A5,$A5,$A5,$A3,$A2
                    db $A2,$A5,$A5,$A5,$A5,$A5,$A5,$A5
                    db $A2,$A5,$A2,$A5,$A5,$A5,$A5,$A5
                    db $A5,$A5,$A2,$A2,$A2,$9F,$A5,$A2
                    db $A3,$A5,$A5,$A5,$9F,$A5,$A5,$9F
                    db $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5
                    db $A5,$A5,$A5,$A5,$A5,$A5,$A5,$9F
                    db $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
                    db $A6,$A6 

DATA_139FBA:        db $00,$80,$F0,$80,$F0,$80,$F0,$80
                    db $F0,$80,$F0,$80,$FF

DATA_139FC7:        db $00,$00,$82,$13,$78,$14,$8C,$13
                    db $F0,$00,$70,$14,$88,$13,$8C,$13
                    db $F0,$00,$82,$13,$74,$14,$88,$13
                    db $7E,$14,$F0,$00,$84,$13,$78,$14
                    db $F0,$00,$82,$13,$78,$14,$8C,$13
                    db $F0,$00,$70,$14,$88,$13,$8C,$13
                    db $FF
       
DATA_139FF8:        db $D0,$01,$46,$1A,$6C,$1A,$82,$1A
                    db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B
                    db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C
                    db $A9,$1C,$68,$1D,$F0,$01,$22,$1A
                    db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B
                    db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C
                    db $2A,$1D,$8C,$1D,$F0,$01,$46,$1A
                    db $6C,$1A,$82,$1A,$C6,$1A,$CE,$1A
                    db $23,$1B,$2B,$1B,$4F,$1B,$85,$1B
                    db $C1,$1B,$41,$1C,$A9,$1C,$68,$1D
                    db $F0,$01,$22,$1A,$46,$1A,$A2,$1A
                    db $4B,$1B,$67,$1B,$AB,$1B,$C3,$1B
                    db $63,$1C,$C7,$1C,$2A,$1D,$8C,$1D
                    db $F0,$01,$46,$1A,$6C,$1A,$82,$1A
                    db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B
                    db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C
                    db $A9,$1C,$68,$1D,$F0,$01,$22,$1A
                    db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B
                    db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C
                    db $2A,$1D,$8C,$1D,$F0,$01,$46,$1A
                    db $6C,$1A,$82,$1A,$C6,$1A,$CE,$1A
                    db $23,$1B,$2B,$1B,$4F,$1B,$85,$1B
                    db $C1,$1B,$41,$1C,$A9,$1C,$68,$1D
                    db $F0,$01,$22,$1A,$46,$1A,$A2,$1A
                    db $4B,$1B,$67,$1B,$AB,$1B,$C3,$1B
                    db $63,$1C,$C7,$1C,$2A,$1D,$8C,$1D
                    db $F0,$01,$46,$1A,$6C,$1A,$82,$1A
                    db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B
                    db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C
                    db $A9,$1C,$68,$1D,$FF

DATA_13A0E5:        db $00,$80,$FF

DATA_13A0E8:        db $00,$1B,$80,$13,$78,$14,$8C,$13
                    db $8E,$13,$FF

DATA_13A0F3:        db $E0,$24,$FF

DATA_13A0F6:        db $D0,$09,$20,$23,$80,$23,$E0,$23
                    db $41,$21,$61,$21,$63,$21,$0B,$61
                    db $3D,$63,$90,$62,$F0,$09,$20,$23
                    db $80,$23,$E0,$23,$C1,$21,$C3,$21
                    db $0B,$61,$30,$62,$3D,$63,$F0,$14
                    db $20,$23,$80,$23,$E0,$23,$41,$21
                    db $61,$21,$63,$21,$0B,$61,$3D,$63
                    db $90,$62,$F0,$14,$20,$23,$80,$23
                    db $E0,$23,$41,$21,$43,$21,$61,$21
                    db $63,$21,$0B,$61,$3D,$63,$90,$62
                    db $F0,$09,$20,$23,$80,$23,$E0,$23
                    db $41,$21,$61,$21,$63,$21,$0B,$61
                    db $3D,$63,$90,$62,$F0,$09,$20,$23
                    db $80,$23,$E0,$23,$C1,$21,$C3,$21
                    db $0B,$61,$30,$62,$3D,$63,$FF

DATA_13A16D:        db $14,$20,$23,$80,$23,$E0,$23,$41
                    db $21,$61,$21,$0B,$61,$3D,$63,$90
                    db $62,$F0,$14,$20,$23,$80,$23,$E0
                    db $23,$41,$21,$61,$21,$63,$21,$0B
                    db $61,$3D,$63,$90,$62,$F0,$09,$20
                    db $23,$80,$23,$E0,$23,$41,$21,$61
                    db $21,$63,$21,$0B,$61,$3D,$63,$90
                    db $62,$F0,$09,$20,$23,$80,$23,$0B
                    db $61,$30,$62,$3D,$63,$FF

DATA_13A1B3:        db $D0,$02,$71,$21,$91,$21,$93,$21
                    db $40,$23,$B0,$23,$02,$26,$D4,$24
                    db $D7,$25,$0B,$27,$04,$28,$57,$29
                    db $A8,$32,$5D,$34,$F0,$02,$40,$23
                    db $B0,$23,$09,$26,$64,$24,$66,$26
                    db $67,$25,$76,$26,$0B,$27,$C3,$2A
                    db $0A,$2C,$C9,$2D,$5D,$34,$F0,$02
                    db $40,$23,$B0,$23,$09,$26,$64,$24
                    db $67,$25,$0B,$27,$C3,$2A,$0A,$2C
                    db $C9,$2D,$56,$2E,$5D,$34,$F0,$02
                    db $95,$21,$97,$21,$40,$23,$B0,$23
                    db $09,$26,$64,$24,$66,$26,$67,$25
                    db $76,$26,$C3,$2A,$0B,$27,$0A,$2C
                    db $F0,$02,$71,$21,$91,$21,$93,$21
                    db $40,$23,$B0,$23,$02,$26,$D4,$24
                    db $D7,$25,$0B,$27,$04,$28,$57,$29
                    db $A8,$32,$5D,$34,$F0,$02,$40,$23
                    db $B0,$23,$09,$26,$64,$24,$66,$26
                    db $67,$25,$76,$26,$0B,$27,$C3,$2A
                    db $0A,$2C,$C9,$2D,$5D,$34,$FF

DATA_13A252:        db $D1,$02,$40,$23,$B0,$23,$62,$24
                    db $0B,$27,$04,$28,$57,$29,$59,$29
                    db $C7,$2B,$C9,$2B,$A0,$33,$5D,$34
                    db $F0,$02,$40,$23,$B0,$23,$0B,$27
                    db $0A,$2C,$5A,$2F,$7B,$22,$99,$22
                    db $9B,$22,$9D,$22,$64,$24,$67,$25
                    db $56,$30,$01,$31,$C4,$34,$FF

DATA_13A289:        db $C4,$03,$82,$35,$8A,$35,$F0,$03
                    db $80,$35,$8E,$35,$69,$12,$F0,$03
                    db $8A,$35,$76,$12,$7D,$36,$F0,$03
                    db $8D,$35,$F0,$03,$81,$35,$74,$37
                    db $F0,$03,$55,$12,$FF
          
DATA_13A2AE:        db $D0,$15,$F0,$1D,$F0,$15,$F0,$1D
                    db $FF,$15,$F0,$1D,$F0,$15,$FF,$D0
                    db $04,$04,$1E,$09,$1F,$0E,$20,$F0
                    db $04,$05,$1F,$0C,$1E,$F0,$04,$01
                    db $1F,$04,$1E,$0C,$20,$F0,$04,$04
                    db $1E,$09,$1F,$0E,$20,$F0,$04,$05
                    db $1F,$0C,$1E,$F0,$04,$01,$1F,$04
                    db $1E,$0C,$20,$F0,$04,$04,$1E,$09
                    db $1F,$0E,$20,$F0,$04,$05,$1F,$FF

DATA_13A2F6:        db $00,$03,$70,$69,$29,$38,$FF

DATA_13A2FD:        db $D0,$1E,$F0,$1E,$F0,$1E,$F0,$1E
                    db $F0,$1E,$F0,$1E,$F0,$1E,$F0,$1E
                    db $FF
                             
DATA_13A30E:        db $00,$0A,$40,$39,$4F,$3A,$F0,$0A
                    db $40,$3B,$42,$3B,$44,$3B,$46,$3B
                    db $48,$3B,$4A,$3B,$4C,$3C,$6E,$3E
                    db $F0,$0A,$4D,$3A,$4E,$3B,$F0,$0A
                    db $40,$3B,$42,$3C,$47,$3A,$48,$3B
                    db $4A,$3B,$4C,$3C,$F0,$26,$40,$3F
                    db $42,$3F,$44,$3F,$45,$3A,$46,$3B
                    db $77,$3D,$5E,$40,$F0,$26,$FF

DATA_13A34D:        db $D0,$1E,$F0,$1F,$F0,$1E,$F0,$1F
                    db $FF

DATA_13A356:        db $C1,$1A,$40,$3B,$42,$3B,$44,$3B
                    db $45,$3C,$67,$3E,$4E,$3B,$4E,$3A
                    db $FF
           
DATA_13A367:        db $C1,$04,$09,$1F,$F0,$80,$00,$20
                    db $FF

DATA_13A370:        db $C1,$16,$00,$67,$04,$1E,$08,$1F
                    db $0D,$68,$FF
           
DATA_13A37B:        db $D1,$04,$04,$1E,$09,$1F,$0E,$20
                    db $F0,$04,$05,$1F,$0C,$1E,$FF

DATA_13A38A:        db $C1,$15,$FF

DATA_13A38D:        db $00,$05,$F0,$05,$FF
        
DATA_13A392:        db $00,$80,$FF

DATA_13A395:        db $00,$05,$F0,$05,$F0,$05,$F0,$05
                    db $F0,$05,$F0,$05,$FF
              
DATA_13A3A2:        db $C0,$25,$F0,$25,$F0,$25,$F0,$25
                    db $F0,$25,$FF

DATA_13A3AD:        db $00,$0D,$F0,$0E,$F0,$0D,$FF

DATA_13A3B4:        db $00,$80,$A6,$41,$87,$45,$F0,$80
                    db $92,$41,$F0,$80,$A4,$42,$86,$46
                    db $BF,$43,$F0,$80,$AB,$44,$8D,$47
                    db $F0,$80,$B8,$43,$F0,$80,$B1,$41
                    db $92,$45,$FF
                 
DATA_13A3D7:        db $00,$80,$80,$5F,$56,$4B,$74,$49
                    db $AA,$4B,$5F,$4B,$F0,$80,$A3,$4B
                    db $71,$49,$B7,$4A,$8E,$4B,$AC,$49
                    db $F0,$80,$96,$4B,$B4,$49,$DA,$4A
                    db $F0,$80,$A0,$4B,$94,$4B,$72,$49
                    db $B8,$4A,$9E,$49,$F0,$80,$72,$4B
                    db $B4,$4C,$A9,$4A,$CF,$49,$F0,$80
                    db $01,$4B,$A5,$4B,$73,$49,$C1,$4D
                    db $FF
           
DATA_13A418:        db $D0,$06,$F0,$06,$FF

DATA_13A41D:        db $00,$80,$FF

DATA_13A420:        db $00,$80,$FF

DATA_13A423:        db $00,$80,$FF

DATA_13A426:        db $00,$10,$F0,$10,$FF
    
DATA_13A42B:        db $C4,$0F,$85,$4F,$A4,$4F,$79,$4F
                    db $98,$4F,$8A,$4F,$A0,$52,$A3,$53
                    db $A7,$56,$F0,$0F,$66,$4F,$85,$4F
                    db $79,$4F,$98,$4F,$8A,$4F,$AC,$50
                    db $AE,$50,$F0,$0F,$AE,$54,$76,$4F
                    db $95,$4F,$88,$4F,$AF,$4F,$A0,$50
                    db $A2,$50,$A4,$55,$F0,$0F,$61,$4F
                    db $80,$4F,$A2,$4F,$8A,$4F,$79,$4F
                    db $98,$4F,$A0,$51,$A4,$52,$A7,$53
                    db $F0,$0F,$66,$4F,$85,$4F,$A4,$4F
                    db $97,$4F,$8A,$4F,$A3,$53,$F0,$0F
                    db $72,$4F,$81,$4F,$94,$4F,$A6,$55
                    db $FF

DATA_13A48C:        db $C1,$80,$00,$04,$F0,$80,$9C,$38
                    db $F0,$80,$F0,$11,$52,$4F,$25,$4F
                    db $57,$4F,$7C,$4F,$4B,$4F,$8A,$4F
                    db $79,$4F,$98,$4F,$86,$4F,$74,$4F
                    db $80,$4F,$B1,$4F,$93,$4F,$A5,$4F
                    db $AD,$4F,$FF

DATA_13A4B7:        db $C1,$80,$00,$04,$F0,$80,$9C,$38
                    db $F0,$80,$F0,$80,$00,$04,$F0,$80
                    db $F0,$80,$F0,$11,$52,$4F,$25,$4F
                    db $57,$4F,$4B,$4F,$8A,$4F,$79,$4F
                    db $98,$4F,$86,$4F,$74,$4F,$80,$4F
                    db $93,$4F,$A5,$4F,$FF
              
DATA_13A4E4:        db $D1,$18,$1A,$38,$F0,$19,$FF

DATA_13A4EB:        db $C4,$0F,$85,$4F,$A4,$4F,$79,$4F
                    db $98,$4F,$8A,$4F,$A0,$52,$A3,$53
                    db $A7,$56,$F0,$0F,$66,$4F,$85,$4F
                    db $79,$4F,$98,$4F,$8A,$4F,$FF

DATA_13A50A:        db $D0,$20,$F0,$21,$F0,$20,$F0,$21
                    db $F0,$20,$F0,$21,$F0,$20,$FF

DATA_13A519:        db $00,$80,$FF

DATA_13A51C:        db $D1,$01,$46,$1A,$6C,$1A,$82,$1A
                    db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B
                    db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C
                    db $A9,$1C,$68,$1D,$F0,$01,$22,$1A
                    db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B
                    db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C
                    db $2A,$1D,$8C,$1D,$FF

DATA_13A551:        db $C1,$16,$00,$67,$04,$1E,$08,$1F
                    db $0D,$68,$F0,$17,$F0,$17,$FF

DATA_13A560:        db $C1,$1E,$F0,$1F,$F0,$1E,$FF

DATA_13A567:        db $01,$1A,$40,$3B,$42,$3B,$44,$3B
                    db $45,$3C,$67,$3E,$4E,$3B,$4E,$3A
                    db $FF

DATA_13A578:        db $C4,$0D,$F0,$0E,$F0,$0D,$F0,$0E
                    db $F0,$0D,$F0,$0E,$FF

DATA_13A585:        db $00,$80,$FF

DATA_13A588:        db $00,$12,$B6,$57,$30,$58,$9F,$5A
                    db $F0,$12,$B0,$57,$BA,$57,$71,$5B
                    db $26,$5C,$A5,$59,$F0,$12,$B4,$57
                    db $BE,$57,$54,$5D,$9E,$5A,$F0,$12
                    db $B8,$57,$70,$5B,$25,$5C,$A3,$59
                    db $FF

DATA_13A5B1:        db $D0,$22,$F0,$23,$FF

DATA_13A5B6:        db $00,$80,$FF

DATA_13A5B9:        db $D8,$0B,$F0,$0B,$08,$4E,$F0,$0B
                    db $F0,$0B,$08,$4E,$F0,$0B,$F0,$0B
                    db $08,$4E,$F0,$0B,$F0,$0B,$08,$4E
                    db $F0,$0B,$F0,$0B,$08,$4E,$FF

DATA_13A5D8:        db $D9,$1C,$00,$6A,$B0,$6A,$72,$6C
                    db $76,$6C,$7A,$6C,$F0,$1C,$00,$6A
                    db $B0,$6A,$7A,$6C,$7E,$6C,$F0,$1C
                    db $00,$6A,$B0,$6A,$38,$6B,$72,$6C
                    db $76,$6C,$FF

DATA_13A5FB:        db $D0,$0C,$F0,$0C,$F0,$0C,$F0,$0C
                    db $F0,$0C,$F0,$0C,$FF

DATA_13A608:        db $0C,$F0,$0C,$F0,$0C,$F0,$0C,$FF

DATA_13A610:        db $00,$80,$FF

PNTR_13A613:        dw DATA_13A615

DATA_13A615:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00      ; Empty tile. (Tile FF)

DATA_13A61D:        db $00,$00,$00,$01,$01,$00,$00,$00
                    db $00,$00,$00,$01,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$0D,$02,$02
                    db $02,$00,$00,$00,$00,$00,$03,$05
                    db $05,$00,$03,$00,$00,$00,$00,$00
                    db $05,$04,$05,$05,$04,$05,$00,$00
                    db $00,$00,$05,$03,$05,$05,$05,$05
                    db $05,$0D,$00,$00,$00,$00,$01,$00
                    db $01,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $01,$00,$02,$02,$02,$02,$0D,$08
                    db $02,$00,$07,$07,$00,$00,$00,$00
                    db $00,$00,$00,$00,$06,$07,$07,$00
                    db $06,$00,$00,$00,$00,$00,$06,$07
                    db $02,$02,$00,$0D,$06,$06,$00,$00
                    db $00,$01,$01,$00,$00,$00,$00,$00
                    db $00,$00,$01,$0B,$0B,$0B,$0B,$0B
                    db $00,$00,$00,$00,$01,$00,$01,$0C
                    db $00,$01,$00,$00,$00,$00,$04,$05
                    db $05,$05,$05,$05,$04,$00,$00,$00
                    db $05,$08,$05,$00,$00,$00,$00,$00
                    db $00,$00,$05,$03,$05,$00,$00,$05
                    db $05,$00,$00,$00,$00,$09,$09,$00
                    db $0A,$0A,$00,$00,$00,$00,$00,$0A
                    db $0A,$0A,$0A,$0A,$0A,$0A,$0A,$00

PNTR_13A6E5:        dw DATA_13A701                          ; Tileset 0.
                    dw DATA_13A969                          ; Tileset 1.
                    dw DATA_13A9C9                          ; Tileset 2.
                    dw DATA_13AE41                          ; Tileset 3.
                    dw DATA_13B029                          ; Tileset 4.
                    dw DATA_13B201                          ; Tileset 5.
                    dw DATA_13B351                          ; Tileset 6.
                    dw DATA_13B3D1                          ; Tileset 7.
                    dw DATA_13B7C9                          ; Tileset 8.
                    dw DATA_13B9E1                          ; Tileset 9.
                    dw DATA_13BDB1                          ; Tileset A.
                    dw DATA_13C151                          ; Tileset B.
                    dw DATA_13C309                          ; Tileset C.
                    dw DATA_13C3E9                          ; Tileset D.

DATA_13A701:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $00,$1D,$01,$1D,$10,$1D,$13,$1D
                    db $02,$1D,$03,$1D,$13,$1D,$13,$1D
                    db $04,$1D,$05,$1D,$13,$1D,$15,$1D
                    db $20,$1D,$13,$1D,$30,$1D,$31,$1D
                    db $13,$1D,$13,$1D,$32,$1D,$33,$1D
                    db $13,$1D,$25,$1D,$34,$1D,$35,$1D
                    db $21,$1D,$13,$1D,$13,$1D,$13,$1D
                    db $13,$1D,$11,$1D,$13,$1D,$13,$1D
                    db $13,$1D,$13,$1D,$22,$1D,$13,$1D
                    db $13,$1D,$13,$1D,$13,$1D,$12,$1D
                    db $06,$1D,$07,$1D,$16,$1D,$13,$1D
                    db $08,$1D,$09,$1D,$13,$1D,$13,$1D
                    db $0A,$1D,$0B,$1D,$13,$1D,$1B,$1D
                    db $26,$1D,$13,$1D,$36,$1D,$37,$1D
                    db $13,$1D,$13,$1D,$38,$1D,$39,$1D
                    db $13,$1D,$2B,$1D,$3A,$1D,$3B,$1D
                    db $14,$1D,$13,$1D,$24,$1D,$13,$1D
                    db $13,$1D,$17,$1D,$13,$1D,$27,$1D
                    db $18,$1D,$13,$1D,$28,$1D,$13,$1D
                    db $13,$1D,$19,$1D,$13,$1D,$29,$1D
                    db $13,$1D,$13,$1D,$13,$1D,$13,$1D
                    db $80,$1D,$81,$1D,$4A,$05,$4B,$05
                    db $82,$1D,$83,$1D,$EE,$05,$EF,$05
                    db $5A,$05,$5B,$05,$B7,$05,$B7,$05
                    db $FA,$05,$FB,$05,$B7,$05,$B7,$05
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$40,$1D,$41,$1D
                    db $70,$1D,$71,$1D,$42,$1D,$43,$1D
                    db $BF,$00,$BF,$00,$44,$1D,$45,$1D
                    db $84,$1D,$85,$1D,$94,$1D,$95,$1D
                    db $86,$1D,$87,$1D,$96,$1D,$97,$1D
                    db $50,$1D,$51,$1D,$60,$1D,$61,$1D
                    db $52,$1D,$53,$1D,$62,$1D,$63,$1D
                    db $54,$1D,$55,$1D,$64,$1D,$65,$1D
                    db $66,$1D,$67,$1D,$76,$1D,$77,$1D
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $A4,$1D,$A5,$1D,$76,$1D,$B5,$1D
                    db $A6,$1D,$A7,$1D,$78,$1D,$79,$1D
                    db $72,$1D,$73,$1D,$7A,$1D,$6B,$1D
                    db $74,$1D,$67,$1D,$75,$1D,$77,$1D
                    db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D
                    db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D
                    db $7A,$1D,$7B,$1D,$7A,$1D,$7B,$1D
                    db $4E,$1D,$4F,$1D,$56,$1D,$57,$1D
                    db $5E,$1D,$5F,$1D,$58,$1D,$59,$1D
                    db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D
                    db $80,$1D,$81,$1D,$58,$1D,$59,$1D
                    db $82,$1D,$83,$1D,$56,$1D,$57,$1D
                    db $13,$1D,$13,$1D,$88,$1D,$89,$1D
                    db $B8,$1D,$B9,$1D,$8A,$1D,$8B,$1D
                    db $13,$1D,$13,$1D,$8C,$1D,$8D,$1D
                    db $90,$1D,$91,$1D,$A0,$1D,$A1,$1D
                    db $92,$1D,$93,$1D,$A2,$1D,$A3,$1D
                    db $98,$1D,$99,$1D,$A8,$1D,$A9,$1D
                    db $9A,$1D,$9B,$1D,$AA,$1D,$AB,$1D
                    db $9C,$1D,$9D,$1D,$AC,$1D,$AD,$1D
                    db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D
                    db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D
                    db $B0,$1D,$B1,$1D,$9E,$1D,$B6,$1D
                    db $B2,$1D,$B3,$1D,$78,$1D,$BF,$1D
                    db $BA,$1D,$BB,$1D,$7A,$1D,$6B,$1D
                    db $13,$1D,$8F,$1D,$BD,$1D,$9F,$1D
                    db $C0,$05,$C1,$05,$D0,$05,$D1,$05
                    db $C2,$05,$C3,$05,$D2,$05,$D3,$05
                    db $E0,$05,$E1,$05,$F0,$05,$F1,$05
                    db $E2,$05,$E3,$05,$F2,$05,$F3,$05
                    db $88,$11,$89,$11,$98,$11,$99,$11
                    db $8A,$11,$8B,$11,$9A,$11,$9B,$11
                    db $A8,$11,$A9,$11,$B8,$11,$B9,$11
                    db $AA,$11,$AB,$11,$BA,$11,$BB,$11
                    db $B8,$11,$B9,$11,$BA,$11,$BB,$11

DATA_13A969:        db $C4,$05,$C5,$05,$D4,$05,$D5,$05
                    db $C6,$05,$C7,$05,$D6,$05,$D7,$05
                    db $E4,$05,$E5,$05,$F4,$05,$F5,$05
                    db $E6,$05,$E7,$05,$F6,$05,$F7,$05
                    db $C6,$05,$C7,$05,$D6,$05,$DB,$05
                    db $C4,$05,$C5,$05,$D8,$05,$F9,$05
                    db $E6,$05,$EB,$05,$F6,$05,$F7,$05
                    db $E8,$05,$E9,$05,$F4,$05,$F5,$05
                    db $C4,$05,$C9,$05,$D8,$05,$D9,$05
                    db $CA,$05,$CB,$05,$DA,$05,$D7,$05
                    db $C4,$05,$C9,$05,$D4,$05,$F8,$05
                    db $CA,$05,$CB,$05,$DA,$05,$DB,$05

DATA_13A9C9:        db $E5,$05,$C4,$05,$E5,$05,$C4,$05
                    db $C4,$05,$CF,$05,$C4,$05,$CF,$05
                    db $C6,$05,$C7,$05,$E5,$05,$C4,$05
                    db $C7,$05,$C7,$05,$C4,$05,$C4,$05
                    db $E4,$05,$C6,$05,$F4,$05,$E5,$05
                    db $C7,$05,$E4,$05,$C4,$05,$F4,$05
                    db $D5,$05,$D6,$05,$C4,$05,$C4,$05
                    db $D7,$05,$E5,$05,$C4,$05,$E5,$05
                    db $C4,$05,$C4,$05,$C4,$05,$C4,$05
                    db $C4,$05,$CA,$05,$C4,$05,$DA,$05
                    db $CB,$05,$D4,$05,$DB,$05,$D4,$05
                    db $E5,$05,$C4,$05,$D5,$05,$D6,$05
                    db $C4,$05,$C4,$05,$D6,$05,$D6,$05
                    db $F4,$05,$E5,$05,$D7,$05,$D5,$05
                    db $C4,$05,$F4,$05,$D6,$05,$D7,$05
                    db $C4,$05,$D5,$05,$C4,$05,$C6,$05
                    db $D6,$05,$D6,$05,$C7,$05,$C7,$05
                    db $D6,$05,$CA,$05,$C7,$05,$DA,$05
                    db $D6,$05,$D7,$05,$C7,$05,$E4,$05
                    db $C4,$05,$C4,$05,$C6,$05,$C7,$05
                    db $D5,$05,$D6,$05,$C6,$05,$C7,$05
                    db $C3,$05,$C0,$05,$D3,$05,$D0,$05
                    db $C0,$05,$C0,$05,$D0,$05,$D0,$05
                    db $C0,$05,$C2,$05,$D0,$05,$D2,$05
                    db $D4,$05,$D4,$05,$D1,$05,$C5,$05
                    db $D4,$05,$D4,$05,$C5,$05,$C5,$05
                    db $D4,$05,$D4,$05,$C5,$05,$C1,$05
                    db $D4,$05,$CC,$05,$C5,$05,$DC,$05
                    db $CD,$05,$D4,$05,$DD,$05,$D4,$05
                    db $E6,$05,$E7,$05,$C5,$05,$CE,$05
                    db $F6,$05,$F7,$05,$CF,$05,$DE,$05
                    db $D4,$05,$D4,$05,$DF,$05,$85,$05
                    db $D4,$45,$D4,$05,$C5,$45,$C5,$05
                    db $D4,$45,$D4,$05,$C5,$45,$B0,$05
                    db $A0,$05,$A1,$05,$B1,$05,$B2,$05
                    db $A2,$05,$A3,$05,$B3,$05,$84,$05
                    db $D4,$05,$D4,$05,$C5,$05,$D1,$05
                    db $D4,$05,$C4,$05,$D4,$05,$C4,$05
                    db $E0,$05,$E1,$05,$C4,$05,$F0,$05
                    db $E2,$05,$E3,$05,$F1,$05,$F2,$05
                    db $C4,$05,$C4,$05,$C4,$05,$90,$05
                    db $80,$05,$81,$05,$91,$05,$92,$05
                    db $82,$05,$83,$05,$93,$05,$F5,$05
                    db $F5,$05,$C4,$45,$C4,$05,$C4,$45
                    db $94,$05,$95,$05,$94,$05,$95,$05
                    db $C4,$05,$E5,$05,$C4,$05,$E5,$05
                    db $D4,$05,$C4,$05,$D4,$05,$D6,$05
                    db $C4,$05,$C8,$05,$D6,$05,$D8,$05
                    db $C9,$05,$D4,$05,$D9,$05,$D4,$05
                    db $F5,$05,$C4,$45,$C4,$05,$C4,$05
                    db $C4,$05,$E5,$05,$C4,$05,$D5,$05
                    db $D4,$05,$C7,$05,$D4,$05,$C4,$05
                    db $C4,$05,$CA,$05,$C6,$05,$DA,$05
                    db $C4,$05,$C4,$05,$C7,$05,$E4,$05
                    db $C4,$05,$C6,$05,$C4,$05,$E5,$05
                    db $E8,$05,$E9,$05,$F8,$05,$F9,$05
                    db $EA,$05,$EB,$05,$FA,$05,$FB,$05
                    db $D4,$05,$CC,$05,$D1,$05,$DC,$05
                    db $F5,$05,$C4,$45,$E5,$05,$C4,$45
                    db $D6,$05,$D6,$05,$E4,$05,$C6,$05
                    db $D6,$05,$D7,$05,$C7,$05,$C7,$05
                    db $D5,$05,$CA,$05,$C7,$05,$DA,$05
                    db $D5,$05,$D6,$05,$C4,$05,$C6,$05
                    db $F4,$05,$E5,$05,$F4,$05,$E5,$05
                    db $C4,$05,$C8,$05,$C4,$05,$D8,$05
                    db $D6,$05,$D6,$05,$C4,$05,$C6,$05
                    db $D6,$05,$D6,$05,$C7,$05,$E4,$05
                    db $F4,$05,$D5,$05,$F4,$05,$C6,$05
                    db $D6,$05,$D7,$05,$C4,$05,$C4,$05
                    db $D4,$05,$D4,$05,$D1,$05,$C1,$05
                    db $D4,$05,$CC,$05,$C5,$05,$DC,$05
                    db $EC,$05,$ED,$05,$FC,$05,$FD,$05
                    db $EE,$05,$EF,$05,$FE,$05,$FF,$05
                    db $CD,$05,$D4,$05,$DD,$05,$D4,$05
                    db $D4,$05,$D4,$05,$D1,$05,$D1,$05
                    db $E5,$05,$F4,$05,$E5,$05,$F4,$05
                    db $E5,$05,$E5,$05,$E5,$05,$E5,$05
                    db $E5,$05,$E5,$05,$E5,$05,$D5,$05
                    db $D6,$05,$D6,$05,$C6,$05,$C7,$05
                    db $C4,$05,$C4,$05,$C7,$05,$C7,$05
                    db $D6,$05,$D6,$05,$C4,$05,$C4,$05
                    db $D5,$05,$D6,$05,$C7,$05,$E4,$05
                    db $C7,$05,$CA,$05,$C4,$05,$DA,$05
                    db $C4,$05,$CA,$05,$D6,$05,$DA,$05
                    db $C6,$05,$CA,$05,$E5,$05,$DA,$05
                    db $E5,$05,$C8,$05,$D5,$05,$D8,$05
                    db $F5,$05,$E4,$05,$C4,$05,$F4,$05
                    db $F5,$05,$C4,$05,$D5,$05,$D6,$05
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $B4,$05,$B5,$05,$B4,$05,$B5,$05
                    db $C4,$05,$A7,$05,$C4,$05,$A7,$05
                    db $C7,$05,$E4,$05,$D6,$05,$D7,$05
                    db $C6,$05,$C7,$05,$D5,$05,$D6,$05
                    db $D4,$05,$C7,$05,$D4,$05,$D6,$05
                    db $C6,$05,$CA,$05,$D5,$05,$DA,$05
                    db $C7,$05,$A7,$05,$D6,$05,$AB,$05
                    db $D4,$05,$E4,$05,$D4,$05,$D7,$05
                    db $C7,$05,$CA,$05,$D6,$05,$DA,$05
                    db $C6,$05,$A7,$05,$D5,$05,$A7,$05
                    db $B8,$05,$B9,$05,$A8,$05,$A9,$05
                    db $D4,$05,$D4,$05,$D4,$05,$C5,$05
                    db $CA,$05,$CB,$05,$A4,$05,$A5,$05
                    db $D4,$05,$D4,$05,$D4,$05,$B0,$05
                    db $D4,$05,$B6,$05,$C5,$05,$A6,$05
                    db $88,$05,$89,$05,$98,$05,$99,$05
                    db $8F,$05,$81,$05,$91,$05,$92,$05
                    db $8C,$05,$8D,$05,$9C,$05,$9D,$05
                    db $8E,$05,$C4,$05,$9E,$05,$C4,$05
                    db $C4,$05,$8C,$05,$C4,$05,$9C,$05
                    db $8D,$05,$8E,$05,$9D,$05,$9E,$05
                    db $C4,$05,$A7,$05,$C4,$05,$B7,$05
                    db $D4,$05,$F4,$05,$D4,$05,$F4,$05
                    db $A8,$05,$A9,$05,$88,$05,$89,$05
                    db $B4,$05,$B5,$05,$86,$05,$87,$05
                    db $F5,$05,$C4,$05,$C4,$05,$C4,$05
                    db $88,$05,$89,$05,$88,$05,$89,$05
                    db $96,$05,$97,$05,$B4,$05,$B5,$05
                    db $8A,$05,$AA,$05,$9A,$05,$BA,$05
                    db $8B,$05,$8B,$05,$9B,$05,$9B,$05
                    db $8B,$05,$8A,$05,$9B,$05,$9A,$05
                    db $B6,$05,$B6,$05,$A6,$05,$A6,$05
                    db $A7,$05,$A7,$05,$B7,$05,$B7,$05
                    db $A7,$05,$A7,$05,$A7,$05,$A7,$05
                    db $A7,$05,$AB,$05,$A7,$05,$A7,$05
                    db $D4,$05,$8C,$05,$D4,$05,$9C,$05
                    db $C6,$05,$A7,$05,$D5,$05,$AB,$05
                    db $C7,$05,$A7,$05,$D6,$05,$A7,$05
                    db $D4,$05,$B6,$05,$C5,$05,$C5,$05
                    db $8E,$05,$F4,$05,$9E,$05,$F4,$05
                    db $C4,$05,$C4,$05,$BB,$05,$C4,$05
                    db $E8,$05,$AC,$05,$F8,$05,$BC,$05
                    db $AD,$05,$EB,$05,$BD,$05,$FB,$05
                    db $EC,$05,$AE,$05,$FC,$05,$BE,$05
                    db $AF,$05,$EF,$05,$BF,$05,$FF,$05
                    db $A7,$05,$A7,$05,$B7,$05,$AB,$05
                    db $C4,$45,$CA,$05,$C4,$05,$DA,$05

DATA_13AE41:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8F,$09,$9E,$09,$9F,$09
                    db $BE,$00,$BE,$00,$BE,$00,$BE,$00
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D
                    db $82,$1D,$84,$1D,$92,$1D,$94,$1D
                    db $85,$1D,$81,$1D,$95,$1D,$91,$1D
                    db $83,$1D,$BF,$00,$93,$1D,$BF,$00
                    db $BF,$00,$68,$05,$68,$05,$69,$05
                    db $6A,$05,$BF,$00,$6B,$05,$6A,$05
                    db $40,$1D,$41,$1D,$50,$1D,$51,$1D
                    db $BF,$00,$BF,$00,$52,$1D,$53,$1D
                    db $BF,$00,$45,$1D,$54,$1D,$55,$1D
                    db $46,$1D,$47,$1D,$56,$1D,$57,$1D
                    db $BF,$00,$87,$1D,$88,$1D,$97,$1D
                    db $A5,$1D,$A1,$1D,$B5,$1D,$B1,$1D
                    db $A2,$1D,$A4,$1D,$B2,$1D,$B4,$1D
                    db $A2,$1D,$86,$1D,$B2,$1D,$96,$1D
                    db $BF,$00,$BF,$00,$4A,$1D,$4B,$1D
                    db $BF,$00,$BF,$00,$48,$1D,$49,$1D
                    db $BF,$00,$BF,$00,$4C,$1D,$4D,$1D
                    db $BF,$00,$68,$05,$78,$05,$79,$05
                    db $69,$05,$6C,$05,$7A,$05,$7A,$05
                    db $6D,$05,$6B,$05,$7B,$05,$7B,$05
                    db $6A,$05,$BF,$00,$7C,$05,$7D,$05
                    db $60,$1D,$71,$1D,$70,$1D,$71,$1D
                    db $62,$1D,$63,$1D,$71,$1D,$73,$1D
                    db $70,$1D,$65,$1D,$71,$1D,$75,$1D
                    db $66,$1D,$67,$1D,$76,$1D,$77,$1D
                    db $98,$1D,$89,$1D,$71,$1D,$99,$1D
                    db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D
                    db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D
                    db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D
                    db $AA,$1D,$AB,$1D,$BA,$1D,$BB,$1D
                    db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D
                    db $AB,$1D,$AE,$1D,$B8,$1D,$BE,$1D
                    db $AF,$1D,$AB,$1D,$BF,$1D,$BB,$1D
                    db $8C,$1D,$8D,$1D,$9C,$1D,$9D,$1D
                    db $5A,$1D,$5B,$1D,$71,$1D,$70,$1D
                    db $58,$1D,$59,$1D,$71,$1D,$70,$1D
                    db $5C,$1D,$5D,$1D,$71,$1D,$70,$1D
                    db $5E,$1D,$5F,$1D,$71,$1D,$70,$1D
                    db $70,$1D,$71,$1D,$71,$1D,$70,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$BF,$00,$8E,$05,$BF,$00
                    db $61,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$72,$05,$BF,$00
                    db $BF,$00,$BF,$00,$72,$45,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$61,$05,$BF,$00,$BF,$00
                    db $72,$05,$BF,$00,$BF,$00,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8E,$05,$BF,$00,$BF,$00
                    db $BF,$00,$72,$05,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$61,$05
                    db $BF,$00,$8E,$05,$61,$05,$BF,$00
                    db $69,$05,$6C,$05,$6C,$05,$69,$05
                    db $6D,$05,$6B,$05,$6B,$05,$6D,$05
                    db $5E,$1D,$6E,$1D,$71,$1D,$70,$1D
                    db $BF,$00,$45,$1D,$74,$1D,$55,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$64,$1D
                    db $AE,$18,$AF,$18,$AE,$18,$AF,$18

DATA_13B029:        db $E8,$05,$E9,$05,$F8,$05,$F9,$05
                    db $EA,$05,$EB,$05,$FA,$05,$FB,$05
                    db $C0,$05,$C1,$05,$D0,$05,$D1,$05
                    db $F6,$05,$F7,$05,$D2,$05,$D3,$05
                    db $F4,$05,$F5,$05,$D0,$05,$D1,$05
                    db $C2,$05,$E7,$05,$D2,$05,$CB,$05
                    db $CC,$05,$C1,$05,$DC,$05,$D1,$05
                    db $E0,$05,$E1,$05,$F0,$05,$F1,$05
                    db $E2,$05,$E3,$05,$F2,$05,$F3,$05
                    db $E2,$05,$E3,$05,$F2,$05,$DB,$05
                    db $CD,$05,$E1,$05,$DD,$05,$F1,$05
                    db $C8,$05,$C9,$05,$D8,$05,$D9,$05
                    db $C4,$05,$C5,$05,$D4,$05,$D5,$05
                    db $C6,$05,$C7,$05,$D6,$05,$D7,$05
                    db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
                    db $CE,$05,$C5,$05,$DE,$05,$D5,$05
                    db $E4,$05,$E5,$05,$C8,$05,$C9,$05
                    db $E5,$05,$E5,$05,$C9,$05,$C9,$05
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
                    db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
                    db $D8,$05,$D9,$05,$D8,$05,$D9,$05
                    db $D9,$05,$D9,$05,$D9,$05,$D9,$05
                    db $C9,$05,$C9,$05,$D9,$05,$D9,$05
                    db $C9,$05,$CA,$05,$D9,$05,$DA,$05
                    db $E0,$1D,$E1,$05,$F0,$1D,$F1,$1D
                    db $E5,$05,$E6,$05,$C9,$05,$CA,$05
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
                    db $D9,$05,$DA,$05,$D9,$05,$DA,$05
                    db $C6,$1D,$C7,$1D,$C6,$1D,$D7,$1D
                    db $BF,$00,$68,$05,$68,$05,$69,$05
                    db $6A,$05,$BF,$00,$6B,$05,$6A,$05
                    db $69,$05,$6C,$05,$6C,$05,$6C,$05
                    db $6D,$05,$6B,$05,$7B,$05,$7B,$05
                    db $C2,$1D,$E7,$1D,$D2,$1D,$CB,$1D
                    db $7B,$05,$7B,$05,$7B,$05,$7B,$05
                    db $7D,$05,$BF,$00,$7C,$05,$7D,$05
                    db $BF,$00,$68,$05,$78,$05,$79,$05
                    db $6C,$05,$6C,$05,$7A,$05,$7A,$05
                    db $C6,$1D,$E3,$1D,$D6,$1D,$DB,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $6C,$05,$6C,$05,$7A,$05,$7A,$05
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
                    db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D
                    db $EC,$1D,$ED,$1D,$FC,$1D,$FD,$1D
                    db $EE,$05,$EF,$05,$FE,$05,$FF,$05
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $CF,$05,$E1,$05,$DF,$05,$F1,$05
                    db $CF,$05,$C5,$05,$DF,$05,$D5,$05

DATA_13B201:        db $88,$1D,$89,$1D,$98,$1D,$99,$1D
                    db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D
                    db $48,$1D,$49,$1D,$58,$1D,$59,$1D
                    db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D
                    db $84,$1D,$85,$1D,$84,$1D,$95,$1D
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
                    db $87,$1D,$8B,$1D,$97,$1D,$9B,$1D
                    db $88,$1D,$8C,$1D,$98,$1D,$9C,$1D
                    db $49,$1D,$4A,$1D,$59,$1D,$5A,$1D
                    db $4B,$1D,$84,$1D,$5B,$1D,$84,$1D
                    db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D
                    db $AA,$1D,$AB,$1D,$BA,$1D,$BB,$1D
                    db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D
                    db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D
                    db $84,$1D,$86,$1D,$84,$1D,$96,$1D
                    db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D
                    db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D
                    db $A4,$1D,$AB,$1D,$B4,$1D,$BB,$1D
                    db $A8,$1D,$8D,$1D,$B8,$1D,$9D,$1D
                    db $4D,$1D,$4E,$1D,$5D,$1D,$5E,$1D
                    db $4F,$1D,$84,$1D,$5F,$1D,$84,$1D
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D
                    db $82,$1D,$83,$1D,$92,$1D,$93,$1D
                    db $84,$1D,$A5,$1D,$84,$1D,$B5,$1D
                    db $A0,$1D,$A1,$1D,$B0,$1D,$B1,$1D
                    db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D
                    db $A6,$1D,$8B,$1D,$B6,$1D,$9B,$1D
                    db $88,$1D,$80,$1D,$98,$1D,$90,$1D
                    db $81,$1D,$82,$1D,$91,$1D,$92,$1D
                    db $83,$1D,$84,$1D,$93,$1D,$84,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$51,$1D
                    db $42,$1D,$43,$1D,$52,$1D,$53,$1D
                    db $40,$1D,$41,$1D,$46,$1D,$47,$1D
                    db $44,$1D,$45,$1D,$54,$1D,$55,$1D
                    db $60,$1D,$61,$1D,$70,$1D,$71,$1D
                    db $62,$1D,$63,$1D,$72,$1D,$73,$1D
                    db $60,$1D,$61,$1D,$66,$1D,$67,$1D
                    db $64,$1D,$65,$1D,$74,$1D,$75,$1D
                    db $56,$1D,$57,$1D,$70,$1D,$71,$1D
                    db $76,$1D,$77,$1D,$50,$1D,$51,$1D
                    db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D

DATA_13B351:        db $40,$05,$41,$05,$50,$05,$51,$05
                    db $42,$05,$43,$05,$52,$05,$53,$05
                    db $60,$05,$61,$05,$70,$05,$71,$05
                    db $62,$05,$63,$05,$72,$05,$73,$05
                    db $44,$05,$45,$05,$54,$05,$55,$05
                    db $46,$05,$47,$05,$56,$05,$57,$05
                    db $64,$05,$65,$05,$74,$05,$75,$05
                    db $66,$05,$67,$05,$76,$05,$77,$05
                    db $6C,$05,$6D,$05,$7C,$05,$7D,$05
                    db $6E,$05,$6F,$05,$7E,$05,$7F,$05
                    db $68,$05,$69,$05,$78,$05,$79,$05
                    db $6A,$05,$6B,$05,$7A,$05,$7B,$05
                    db $48,$05,$49,$05,$58,$05,$59,$05
                    db $4A,$05,$4B,$05,$5A,$05,$5B,$05
                    db $4C,$05,$4D,$05,$5C,$05,$5D,$05
                    db $4E,$05,$4F,$05,$5E,$05,$5F,$05

DATA_13B3D1:        db $80,$1D,$81,$1D,$90,$1D,$91,$1D
                    db $82,$1D,$83,$1D,$92,$1D,$93,$1D
                    db $84,$1D,$85,$1D,$94,$1D,$95,$1D
                    db $86,$1D,$87,$1D,$96,$1D,$97,$1D
                    db $A0,$1D,$A1,$1D,$B0,$1D,$B1,$1D
                    db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D
                    db $A4,$1D,$A5,$1D,$B4,$1D,$B5,$1D
                    db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$41,$1D
                    db $BF,$00,$73,$1D,$42,$1D,$43,$1D
                    db $88,$1D,$89,$1D,$44,$1D,$44,$1D
                    db $8A,$1D,$8B,$1D,$44,$1D,$44,$1D
                    db $8C,$1D,$8D,$1D,$59,$1D,$5A,$1D
                    db $8E,$1D,$8F,$1D,$59,$1D,$5A,$1D
                    db $73,$5D,$BF,$00,$45,$1D,$46,$1D
                    db $BF,$00,$BF,$00,$47,$1D,$BF,$00
                    db $50,$1D,$51,$1D,$60,$1D,$61,$1D
                    db $52,$1D,$53,$1D,$62,$1D,$64,$1D
                    db $53,$1D,$54,$1D,$63,$1D,$64,$1D
                    db $55,$1D,$56,$1D,$65,$1D,$66,$1D
                    db $57,$1D,$58,$1D,$67,$1D,$68,$1D
                    db $BF,$00,$6A,$1D,$42,$1D,$43,$1D
                    db $6A,$5D,$BF,$00,$45,$1D,$46,$1D
                    db $70,$1D,$71,$1D,$49,$1D,$4A,$1D
                    db $72,$1D,$71,$1D,$4B,$1D,$4A,$1D
                    db $75,$1D,$76,$1D,$4C,$1D,$4D,$1D
                    db $77,$1D,$78,$1D,$4E,$1D,$4F,$1D
                    db $49,$1D,$71,$1D,$49,$1D,$4A,$1D
                    db $4C,$1D,$4D,$1D,$4C,$1D,$4D,$1D
                    db $4E,$1D,$4F,$1D,$4E,$1D,$4F,$1D
                    db $BF,$00,$69,$1D,$BF,$00,$5C,$1D
                    db $83,$1D,$84,$1D,$5D,$1D,$5E,$1D
                    db $69,$5D,$BF,$00,$5F,$1D,$BF,$00
                    db $BF,$00,$6C,$1D,$BF,$00,$7C,$1D
                    db $6D,$1D,$6E,$1D,$7D,$1D,$7E,$1D
                    db $6F,$1D,$BF,$00,$7F,$1D,$BF,$00
                    db $6B,$1D,$6B,$5D,$44,$1D,$44,$1D
                    db $BF,$00,$79,$1D,$42,$1D,$43,$1D
                    db $8B,$1D,$8C,$1D,$44,$1D,$59,$1D
                    db $7A,$1D,$BF,$00,$5A,$1D,$46,$1D
                    db $98,$0D,$99,$0D,$A8,$0D,$A9,$0D
                    db $9A,$0D,$9B,$0D,$AA,$0D,$AB,$0D
                    db $B2,$0C,$B3,$0C,$BF,$00,$BF,$00
                    db $B4,$0C,$B6,$0C,$B5,$0C,$B7,$0C
                    db $B8,$0C,$BF,$00,$B9,$0C,$BF,$00
                    db $BF,$00,$C1,$1D,$D0,$1D,$D1,$1D
                    db $C2,$1D,$C3,$1D,$E5,$1D,$D3,$1D
                    db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D
                    db $C6,$1D,$BF,$00,$D6,$1D,$D7,$1D
                    db $E0,$1D,$D3,$1D,$F0,$1D,$D5,$1D
                    db $D4,$1D,$D5,$1D,$E4,$1D,$E5,$1D
                    db $E4,$1D,$E5,$1D,$D3,$1D,$D4,$1D
                    db $E6,$1D,$E7,$1D,$D5,$1D,$F7,$1D
                    db $BF,$00,$C1,$05,$D0,$05,$D1,$05
                    db $C2,$05,$C3,$05,$E5,$05,$D3,$05
                    db $C8,$05,$C9,$05,$D4,$05,$D5,$05
                    db $CA,$05,$D4,$1D,$DA,$05,$DB,$05
                    db $D5,$1D,$E4,$1D,$E5,$1D,$D3,$1D
                    db $E5,$1D,$E3,$1D,$D4,$1D,$F3,$1D
                    db $E1,$1D,$E5,$1D,$F1,$1D,$D4,$1D
                    db $D3,$1D,$D4,$1D,$D5,$1D,$E4,$1D
                    db $D5,$1D,$F8,$05,$FB,$05,$FC,$05
                    db $F9,$05,$FA,$05,$E5,$05,$D3,$05
                    db $C4,$05,$C5,$05,$D4,$05,$D5,$05
                    db $C6,$05,$BF,$00,$D6,$05,$D7,$05
                    db $E0,$05,$D3,$05,$F0,$05,$D5,$05
                    db $D4,$05,$D5,$05,$E4,$05,$E5,$05
                    db $E4,$05,$E5,$05,$D3,$05,$D4,$05
                    db $E6,$05,$EB,$05,$D5,$05,$CB,$05
                    db $EC,$05,$D5,$1D,$D8,$1D,$E5,$1D
                    db $E4,$1D,$F4,$1D,$D3,$1D,$F5,$1D
                    db $D2,$1D,$E4,$1D,$E2,$1D,$D3,$1D
                    db $E5,$1D,$D3,$1D,$D4,$1D,$D5,$1D
                    db $EA,$05,$D3,$05,$C7,$05,$D5,$05
                    db $E6,$05,$E7,$05,$D5,$05,$F7,$05
                    db $E1,$05,$E5,$05,$F1,$05,$D4,$05
                    db $D3,$05,$D4,$05,$D5,$05,$E4,$05
                    db $D5,$05,$E4,$05,$E5,$05,$D3,$05
                    db $E5,$05,$E3,$05,$D4,$05,$F3,$05
                    db $E8,$1D,$D4,$1D,$D9,$1D,$E4,$1D
                    db $D5,$1D,$F6,$1D,$E5,$1D,$E3,$1D
                    db $F2,$1D,$D5,$1D,$E1,$1D,$E5,$1D
                    db $D2,$05,$E4,$05,$E2,$05,$D3,$05
                    db $E5,$05,$D3,$05,$D4,$05,$D5,$05
                    db $E4,$05,$F4,$05,$D3,$05,$F5,$05
                    db $E9,$1D,$D3,$1D,$CC,$1D,$D5,$1D
                    db $D4,$1D,$F3,$1D,$E4,$1D,$F4,$1D
                    db $F1,$1D,$D4,$1D,$D2,$1D,$E4,$1D
                    db $C0,$1D,$C5,$1D,$CC,$1D,$D5,$1D
                    db $F2,$05,$D5,$05,$E1,$05,$E5,$05
                    db $D5,$05,$F6,$05,$E5,$05,$E3,$05
                    db $DC,$1D,$E5,$1D,$E8,$1D,$D4,$1D
                    db $D3,$1D,$F5,$1D,$D5,$1D,$F6,$1D
                    db $E2,$1D,$D3,$1D,$F2,$1D,$D5,$1D
                    db $BF,$00,$C1,$11,$D0,$11,$D1,$11
                    db $C2,$11,$C3,$11,$E5,$11,$D3,$11
                    db $C4,$11,$C5,$11,$D4,$11,$D5,$11
                    db $C6,$11,$BF,$00,$D6,$11,$D7,$11
                    db $F1,$05,$D4,$05,$D2,$05,$E4,$05
                    db $D4,$05,$F3,$05,$E4,$05,$F4,$05
                    db $D9,$1D,$E4,$1D,$E9,$1D,$D3,$1D
                    db $E0,$11,$D3,$11,$F0,$11,$D5,$11
                    db $D4,$11,$D5,$11,$E4,$11,$E5,$11
                    db $E4,$11,$E5,$11,$D3,$11,$D4,$11
                    db $E6,$11,$E7,$11,$D5,$11,$F7,$11
                    db $E2,$05,$D3,$05,$F2,$05,$D5,$05
                    db $D3,$05,$F5,$05,$D5,$05,$F6,$05
                    db $CC,$1D,$D5,$1D,$DC,$1D,$E5,$1D
                    db $E1,$11,$E5,$11,$F1,$11,$D4,$11
                    db $D3,$11,$D4,$11,$D5,$11,$E4,$11
                    db $D5,$11,$E4,$11,$E5,$11,$D3,$11
                    db $E5,$11,$E3,$11,$D4,$11,$F3,$11
                    db $D2,$11,$E4,$11,$E2,$11,$D3,$11
                    db $E5,$11,$D3,$11,$D4,$11,$D5,$11
                    db $E4,$11,$F4,$11,$D3,$11,$F5,$11
                    db $F2,$11,$D5,$11,$E1,$11,$E5,$11
                    db $D5,$11,$F6,$11,$E5,$11,$E3,$11
                    db $F1,$11,$D4,$11,$D2,$11,$E4,$11
                    db $D4,$11,$F3,$11,$E4,$11,$F4,$11
                    db $D3,$1D,$D4,$1D,$D5,$1D,$F8,$05
                    db $D5,$1D,$F6,$1D,$F9,$05,$FA,$05
                    db $BF,$00,$BF,$00,$C4,$05,$C5,$05
                    db $BF,$00,$BF,$00,$C6,$05,$BF,$00
                    db $FB,$05,$FC,$05,$EA,$05,$D3,$05
                    db $D6,$05,$D7,$05,$E6,$05,$E7,$05
                    db $C7,$05,$D5,$05,$E1,$05,$E5,$05
                    db $D5,$05,$F7,$05,$E5,$05,$E3,$05

DATA_13B7C9:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8F,$09,$9E,$09,$9F,$09
                    db $BF,$00,$BF,$00,$D0,$1D,$D1,$1D
                    db $C0,$1D,$C1,$1D,$D2,$1D,$D3,$1D
                    db $C2,$1D,$C3,$1D,$F3,$1D,$E0,$1D
                    db $BF,$00,$BF,$00,$E1,$1D,$E2,$1D
                    db $BF,$00,$BF,$00,$E4,$1D,$E5,$1D
                    db $C6,$1D,$C7,$1D,$E6,$1D,$F9,$1D
                    db $C8,$1D,$C9,$1D,$D9,$1D,$D5,$1D
                    db $BF,$00,$BF,$00,$D7,$1D,$D8,$1D
                    db $BF,$00,$BF,$00,$C0,$1D,$C1,$1D
                    db $BF,$00,$BF,$00,$C2,$1D,$C3,$1D
                    db $D0,$1D,$D1,$1D,$D2,$1D,$F3,$1D
                    db $D2,$1D,$F3,$1D,$F3,$1D,$E3,$1D
                    db $F3,$1D,$F3,$1D,$F3,$1D,$F3,$1D
                    db $E3,$1D,$F3,$1D,$F3,$1D,$F3,$1D
                    db $F0,$1D,$F1,$1D,$F3,$1D,$F0,$1D
                    db $E7,$1D,$E8,$1D,$F2,$1D,$F1,$1D
                    db $E9,$1D,$D9,$1D,$E7,$1D,$E8,$1D
                    db $D9,$1D,$F9,$1D,$E9,$1D,$D9,$1D
                    db $D5,$1D,$D6,$1D,$D9,$1D,$D5,$1D
                    db $D7,$1D,$D8,$1D,$F4,$1D,$F5,$1D
                    db $D2,$1D,$D3,$1D,$F3,$1D,$F3,$1D
                    db $F3,$1D,$E0,$1D,$F3,$1D,$F3,$1D
                    db $E1,$1D,$E2,$1D,$F0,$1D,$F1,$1D
                    db $E1,$1D,$E2,$1D,$F2,$1D,$F1,$1D
                    db $D0,$1D,$D1,$1D,$F6,$1D,$F7,$1D
                    db $D2,$1D,$F3,$1D,$F8,$1D,$F3,$1D
                    db $F3,$1D,$D3,$1D,$F3,$1D,$F3,$1D
                    db $F3,$1D,$F3,$1D,$F3,$1D,$E3,$1D
                    db $F3,$1D,$F3,$1D,$D3,$1D,$F3,$1D
                    db $F0,$1D,$F2,$1D,$F3,$1D,$F0,$1D
                    db $F2,$1D,$F1,$1D,$F2,$1D,$F2,$1D
                    db $D4,$1D,$C5,$1D,$F6,$1D,$F7,$1D
                    db $D2,$1D,$F3,$1D,$F8,$1D,$E3,$1D
                    db $E4,$1D,$E5,$1D,$E6,$1D,$D9,$1D
                    db $E6,$1D,$D9,$1D,$F9,$1D,$D9,$1D
                    db $D9,$1D,$D9,$1D,$D9,$1D,$D9,$1D
                    db $D9,$1D,$F9,$1D,$D9,$1D,$D9,$1D
                    db $D2,$1D,$F3,$1D,$F3,$1D,$D3,$1D
                    db $F3,$1D,$E3,$1D,$F3,$1D,$F3,$1D
                    db $F3,$1D,$F0,$1D,$F3,$1D,$F3,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$BF,$00,$8E,$05,$BF,$00
                    db $61,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$72,$05,$BF,$00
                    db $BF,$00,$BF,$00,$72,$45,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$61,$05,$BF,$00,$BF,$00
                    db $72,$05,$BF,$00,$BF,$00,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8E,$05,$BF,$00,$BF,$00
                    db $BF,$00,$72,$05,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$61,$05
                    db $BF,$00,$8E,$05,$61,$05,$BF,$00
                    db $F2,$1D,$F1,$1D,$F0,$1D,$F2,$1D
                    db $F2,$1D,$F2,$1D,$F0,$1D,$F2,$1D
                    db $F6,$1D,$F7,$1D,$F2,$1D,$F1,$1D
                    db $F8,$1D,$F3,$1D,$F6,$1D,$F7,$1D
                    db $F3,$1D,$F3,$1D,$F8,$1D,$F3,$1D
                    db $F2,$1D,$F2,$1D,$F2,$1D,$F2,$1D
                    db $D9,$1D,$D9,$1D,$E9,$1D,$D9,$1D
                    db $F9,$1D,$D9,$1D,$D9,$1D,$D9,$1D
                    db $D9,$1D,$D9,$1D,$C4,$1D,$C5,$1D
                    db $C4,$1D,$C5,$1D,$D2,$1D,$F3,$1D
                    db $D2,$1D,$F3,$1D,$F3,$1D,$F3,$1D
                    db $D3,$1D,$F3,$1D,$F3,$1D,$F3,$1D

DATA_13B9E1:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $00,$1D,$01,$1D,$10,$1D,$C2,$1D
                    db $C7,$1D,$C8,$1D,$C2,$1D,$C2,$1D
                    db $C9,$1D,$CA,$1D,$C2,$1D,$CB,$1D
                    db $20,$1D,$C2,$1D,$30,$1D,$31,$1D
                    db $C2,$1D,$C2,$1D,$32,$1D,$33,$1D
                    db $C2,$1D,$CC,$1D,$CE,$1D,$CD,$1D
                    db $C3,$1D,$C2,$1D,$C2,$1D,$C2,$1D
                    db $C2,$1D,$C0,$1D,$C2,$1D,$C2,$1D
                    db $C2,$1D,$C2,$1D,$C4,$1D,$C2,$1D
                    db $C2,$1D,$C2,$1D,$C2,$1D,$C1,$1D
                    db $CF,$1D,$D0,$1D,$D1,$1D,$C2,$1D
                    db $08,$1D,$09,$1D,$C2,$1D,$C2,$1D
                    db $0A,$1D,$C5,$1D,$C2,$1D,$C6,$1D
                    db $26,$1D,$C2,$1D,$36,$1D,$37,$1D
                    db $C2,$1D,$C2,$1D,$38,$1D,$39,$1D
                    db $C2,$1D,$2B,$1D,$3A,$1D,$3B,$1D
                    db $14,$1D,$C2,$1D,$24,$1D,$C2,$1D
                    db $C2,$1D,$17,$1D,$C2,$1D,$27,$1D
                    db $18,$1D,$C2,$1D,$28,$1D,$C2,$1D
                    db $C2,$1D,$19,$1D,$C2,$1D,$29,$1D
                    db $C2,$1D,$C2,$1D,$C2,$1D,$C2,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$41,$1D
                    db $BF,$00,$41,$1D,$42,$1D,$43,$1D
                    db $42,$1D,$42,$5D,$44,$1D,$44,$5D
                    db $41,$5D,$BF,$00,$43,$5D,$42,$5D
                    db $BF,$00,$BF,$00,$41,$5D,$BF,$00
                    db $42,$1D,$43,$1D,$44,$1D,$45,$1D
                    db $44,$1D,$45,$1D,$40,$1D,$40,$1D
                    db $46,$1D,$47,$1D,$56,$1D,$57,$1D
                    db $45,$5D,$44,$5D,$40,$1D,$40,$5D
                    db $43,$5D,$42,$5D,$45,$5D,$44,$5D
                    db $BF,$00,$41,$1D,$50,$1D,$51,$1D
                    db $42,$1D,$43,$1D,$52,$1D,$53,$1D
                    db $44,$1D,$45,$1D,$54,$1D,$54,$1D
                    db $5E,$1D,$5E,$1D,$54,$1D,$54,$1D
                    db $5E,$1D,$5E,$1D,$54,$5D,$54,$5D
                    db $45,$5D,$44,$5D,$54,$5D,$54,$5D
                    db $43,$5D,$42,$5D,$53,$5D,$52,$5D
                    db $41,$5D,$BF,$00,$51,$5D,$50,$5D
                    db $48,$1D,$49,$1D,$BF,$00,$4C,$1D
                    db $4A,$1D,$4B,$1D,$4D,$1D,$BF,$00
                    db $BF,$00,$48,$1D,$BF,$00,$BF,$00
                    db $49,$1D,$4A,$1D,$4C,$1D,$4D,$1D
                    db $4B,$1D,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$66,$5D,$BF,$00,$BF,$00
                    db $64,$1D,$65,$1D,$73,$1D,$74,$1D
                    db $B7,$1D,$C2,$1D,$C2,$1D,$C2,$1D
                    db $BF,$00,$5C,$1D,$BF,$00,$5C,$1D
                    db $5D,$1D,$65,$1D,$5D,$1D,$74,$1D
                    db $66,$1D,$BF,$00,$BF,$00,$BF,$00
                    db $5C,$1D,$5D,$1D,$5C,$1D,$5D,$1D
                    db $65,$1D,$66,$1D,$74,$1D,$BF,$00
                    db $73,$1D,$74,$1D,$73,$1D,$74,$1D
                    db $5D,$1D,$74,$1D,$5D,$1D,$74,$1D
                    db $74,$1D,$BF,$00,$74,$1D,$BF,$00
                    db $C7,$1D,$5C,$1D,$C2,$1D,$5C,$1D
                    db $A8,$05,$A9,$05,$B8,$05,$B9,$05
                    db $C9,$1D,$80,$1D,$C2,$1D,$90,$1D
                    db $74,$1D,$BF,$00,$74,$1D,$BF,$00
                    db $C2,$1D,$5C,$1D,$C2,$1D,$5C,$1D
                    db $A0,$05,$A1,$05,$B0,$05,$B1,$05
                    db $5B,$05,$5A,$05,$4E,$05,$4F,$05
                    db $A2,$05,$A3,$05,$B2,$05,$B3,$05
                    db $A4,$05,$A5,$05,$B4,$05,$B5,$05
                    db $81,$1D,$74,$1D,$C2,$1D,$92,$1D
                    db $91,$1D,$94,$1D,$C2,$1D,$C2,$1D
                    db $99,$1D,$CA,$1D,$C2,$1D,$CB,$1D
                    db $BF,$00,$5C,$1D,$BF,$00,$58,$1D
                    db $5D,$1D,$74,$1D,$59,$1D,$74,$1D
                    db $7D,$05,$7E,$05,$6F,$05,$7F,$05
                    db $4F,$05,$4E,$05,$4E,$05,$4F,$05
                    db $83,$05,$84,$05,$93,$05,$C2,$1D
                    db $85,$05,$86,$05,$C2,$1D,$C2,$1D
                    db $87,$05,$88,$05,$C2,$1D,$98,$05
                    db $A6,$05,$4E,$05,$B6,$05,$4F,$05
                    db $8B,$05,$8C,$05,$C2,$1D,$C2,$1D
                    db $89,$05,$8A,$05,$C2,$1D,$9A,$05
                    db $95,$05,$96,$05,$97,$05,$C2,$1D
                    db $AE,$05,$AF,$05,$BE,$05,$BF,$05
                    db $9B,$05,$9C,$05,$C2,$1D,$C2,$1D
                    db $02,$1D,$03,$1D,$C2,$1D,$75,$1D
                    db $04,$1D,$AC,$1D,$76,$1D,$43,$1D
                    db $C2,$1D,$C0,$1D,$C2,$1D,$75,$1D
                    db $C3,$1D,$75,$1D,$76,$1D,$43,$1D
                    db $76,$1D,$43,$1D,$44,$1D,$45,$1D
                    db $C2,$1D,$75,$1D,$55,$1D,$51,$1D
                    db $76,$1D,$43,$1D,$52,$1D,$53,$1D
                    db $82,$1D,$49,$1D,$C2,$1D,$4C,$1D
                    db $4A,$1D,$68,$1D,$4D,$1D,$70,$1D
                    db $5F,$1D,$5F,$1D,$40,$1D,$40,$1D
                    db $67,$1D,$49,$1D,$40,$1D,$4C,$1D
                    db $5D,$1D,$70,$1D,$5D,$1D,$70,$1D
                    db $40,$1D,$40,$1D,$40,$1D,$40,$1D
                    db $40,$1D,$AA,$1D,$40,$1D,$BA,$1D
                    db $AB,$1D,$AB,$5D,$BB,$1D,$BC,$1D
                    db $AD,$1D,$40,$1D,$BD,$1D,$40,$1D
                    db $40,$1D,$5C,$1D,$40,$1D,$5C,$1D
                    db $5D,$1D,$BF,$00,$5D,$1D,$BF,$00
                    db $5B,$05,$5C,$1D,$4E,$05,$5C,$1D
                    db $40,$1D,$61,$1D,$40,$1D,$61,$1D
                    db $62,$1D,$79,$1D,$72,$1D,$7B,$1D
                    db $7A,$1D,$40,$1D,$7C,$1D,$40,$1D
                    db $4F,$05,$5C,$1D,$4E,$05,$58,$1D
                    db $8D,$1D,$8E,$1D,$9D,$1D,$C2,$1D
                    db $77,$1D,$78,$1D,$C2,$1D,$C2,$1D
                    db $9E,$1D,$8F,$1D,$C2,$1D,$9F,$1D
                    db $6A,$1D,$6A,$1D,$6A,$1D,$6A,$1D
                    db $6B,$1D,$6E,$1D,$6A,$1D,$6D,$1D
                    db $40,$1D,$40,$1D,$6E,$1D,$40,$1D
                    db $40,$1D,$5C,$1D,$40,$1D,$58,$1D
                    db $5D,$1D,$BF,$00,$59,$1D,$BF,$00

DATA_13BDB1:        db $6E,$05,$6F,$05,$46,$05,$46,$05
                    db $7E,$05,$7F,$05,$8E,$05,$8F,$05
                    db $6E,$05,$6F,$05,$47,$05,$46,$05
                    db $46,$05,$46,$05,$56,$05,$89,$05
                    db $46,$05,$46,$05,$56,$05,$56,$05
                    db $44,$05,$45,$05,$54,$05,$55,$05
                    db $47,$05,$46,$05,$47,$05,$46,$05
                    db $46,$05,$46,$05,$46,$05,$46,$05
                    db $47,$05,$46,$05,$57,$05,$89,$05
                    db $66,$05,$67,$05,$76,$05,$76,$05
                    db $47,$05,$46,$05,$57,$05,$56,$05
                    db $87,$05,$88,$05,$97,$05,$98,$05
                    db $88,$45,$87,$45,$98,$45,$97,$45
                    db $66,$05,$66,$05,$77,$05,$76,$05
                    db $66,$05,$66,$05,$76,$05,$76,$05
                    db $76,$05,$76,$05,$76,$05,$76,$05
                    db $76,$05,$76,$05,$BB,$05,$BC,$05
                    db $60,$05,$61,$05,$70,$05,$71,$05
                    db $62,$05,$63,$05,$72,$05,$73,$05
                    db $63,$45,$62,$45,$73,$45,$72,$45
                    db $61,$45,$60,$45,$71,$45,$70,$45
                    db $77,$05,$76,$05,$77,$05,$76,$05
                    db $8B,$05,$8C,$05,$9B,$05,$9C,$05
                    db $8D,$05,$76,$05,$76,$05,$76,$05
                    db $80,$05,$81,$05,$90,$05,$91,$05
                    db $82,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$82,$45,$BF,$00,$BF,$00
                    db $81,$45,$80,$45,$91,$45,$90,$45
                    db $64,$05,$65,$05,$74,$05,$75,$05
                    db $99,$05,$9A,$05,$A9,$05,$AA,$05
                    db $A0,$05,$A1,$05,$B0,$05,$B1,$05
                    db $A1,$45,$A0,$45,$B1,$45,$B0,$45
                    db $86,$05,$65,$05,$96,$05,$75,$05
                    db $74,$05,$75,$05,$6C,$05,$6D,$05
                    db $B9,$05,$BA,$05,$7C,$05,$7D,$05
                    db $A2,$05,$A3,$05,$B2,$05,$B3,$05
                    db $A3,$45,$A2,$45,$B3,$45,$B2,$05
                    db $A6,$05,$75,$05,$86,$05,$6D,$05
                    db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D
                    db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D
                    db $43,$1D,$53,$1D,$53,$1D,$51,$1D
                    db $48,$1D,$49,$1D,$78,$1D,$79,$1D
                    db $4A,$1D,$4B,$1D,$7A,$1D,$7B,$1D
                    db $43,$1D,$53,$1D,$52,$1D,$51,$1D
                    db $43,$1D,$53,$1D,$50,$1D,$51,$1D
                    db $43,$1D,$53,$1D,$50,$1D,$43,$1D
                    db $43,$1D,$53,$1D,$50,$1D,$40,$1D
                    db $43,$1D,$53,$1D,$41,$1D,$51,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$51,$1D
                    db $68,$1D,$69,$1D,$58,$1D,$59,$1D
                    db $6A,$1D,$6B,$1D,$5A,$1D,$5B,$1D
                    db $42,$1D,$41,$1D,$52,$1D,$51,$1D
                    db $40,$1D,$41,$1D,$41,$1D,$40,$1D
                    db $40,$1D,$41,$1D,$53,$1D,$43,$1D
                    db $40,$1D,$41,$1D,$53,$1D,$51,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$50,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$43,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$40,$1D
                    db $40,$1D,$41,$1D,$41,$1D,$43,$1D
                    db $40,$1D,$41,$1D,$41,$1D,$51,$1D
                    db $51,$1D,$50,$1D,$53,$1D,$51,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$E4,$1D
                    db $40,$1D,$41,$1D,$E5,$1D,$D4,$1D
                    db $43,$1D,$53,$1D,$D5,$1D,$51,$1D
                    db $C4,$1D,$F4,$1D,$D0,$1D,$EA,$1D
                    db $C7,$1D,$C7,$5D,$FA,$1D,$FB,$1D
                    db $F4,$5D,$C5,$1D,$EA,$5D,$F0,$1D
                    db $40,$1D,$41,$1D,$C8,$1D,$C9,$1D
                    db $42,$1D,$41,$1D,$52,$1D,$E7,$1D
                    db $43,$1D,$53,$1D,$E6,$1D,$E7,$1D
                    db $40,$1D,$41,$1D,$C8,$1D,$F8,$1D
                    db $C0,$1D,$EA,$1D,$D0,$1D,$EA,$1D
                    db $C7,$1D,$C7,$5D,$C7,$1D,$C7,$5D
                    db $EA,$5D,$E0,$1D,$EA,$5D,$F0,$1D
                    db $D8,$1D,$D9,$1D,$E8,$1D,$E9,$1D
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
                    db $F6,$1D,$F7,$1D,$52,$1D,$51,$1D
                    db $F6,$1D,$F7,$1D,$41,$1D,$51,$1D
                    db $D8,$1D,$F9,$1D,$E8,$1D,$E9,$1D
                    db $40,$1D,$C1,$1D,$41,$1D,$D1,$1D
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
                    db $C7,$1D,$C7,$5D,$D3,$1D,$D3,$5D
                    db $C3,$5D,$F5,$1D,$D3,$5D,$D2,$5D
                    db $C1,$5D,$41,$1D,$D1,$5D,$51,$1D
                    db $C6,$1D,$C6,$1D,$D6,$1D,$D7,$1D
                    db $CA,$1D,$79,$1D,$DA,$1D,$79,$1D
                    db $7A,$1D,$7B,$1D,$7A,$1D,$7B,$1D
                    db $CB,$1D,$C6,$1D,$DB,$1D,$D6,$1D
                    db $C6,$1D,$C6,$1D,$D7,$1D,$D6,$1D
                    db $C6,$1D,$E1,$1D,$D7,$1D,$F1,$1D
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
                    db $E3,$1D,$E3,$5D,$F3,$1D,$F3,$5D
                    db $E3,$5D,$E2,$5D,$F3,$5D,$F2,$5D
                    db $E1,$5D,$C6,$1D,$F1,$5D,$D7,$1D
                    db $43,$1D,$53,$1D,$50,$1D,$9E,$1D
                    db $AE,$1D,$AF,$1D,$9F,$1D,$43,$1D
                    db $42,$1D,$41,$1D,$52,$1D,$43,$1D
                    db $40,$1D,$41,$1D,$43,$1D,$9E,$1D
                    db $9E,$1D,$9F,$1D,$9F,$1D,$43,$1D
                    db $51,$1D,$50,$1D,$50,$1D,$43,$1D
                    db $40,$1D,$41,$1D,$53,$1D,$9E,$1D
                    db $51,$1D,$50,$1D,$50,$1D,$40,$1D
                    db $40,$1D,$41,$1D,$50,$1D,$9E,$1D
                    db $43,$1D,$53,$1D,$53,$1D,$43,$1D
                    db $40,$1D,$50,$1D,$53,$1D,$51,$1D
                    db $51,$1D,$41,$1D,$50,$1D,$51,$1D
                    db $51,$1D,$41,$1D,$53,$1D,$43,$1D
                    db $68,$1D,$79,$1D,$78,$1D,$79,$1D
                    db $42,$1D,$41,$1D,$52,$1D,$9E,$1D
                    db $51,$1D,$50,$1D,$50,$1D,$51,$1D

DATA_13C151:        db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8F,$09,$9E,$09,$9F,$09
                    db $40,$1D,$41,$1D,$50,$1D,$51,$1D
                    db $42,$1D,$43,$1D,$52,$1D,$53,$1D
                    db $44,$1D,$45,$1D,$54,$1D,$55,$1D
                    db $46,$1D,$47,$1D,$56,$1D,$57,$1D
                    db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D
                    db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D
                    db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D
                    db $6C,$1D,$BF,$00,$7C,$1D,$BF,$00
                    db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D
                    db $BF,$00,$6D,$1D,$60,$1D,$7D,$1D
                    db $6E,$1D,$6F,$1D,$7E,$1D,$62,$1D
                    db $4E,$1D,$4F,$1D,$74,$1D,$75,$1D
                    db $5E,$1D,$5F,$1D,$76,$1D,$77,$1D
                    db $58,$1D,$59,$1D,$76,$1D,$77,$1D
                    db $48,$1D,$49,$1D,$74,$1D,$75,$1D
                    db $66,$1D,$67,$1D,$76,$1D,$77,$1D
                    db $64,$1D,$65,$1D,$74,$1D,$75,$1D
                    db $8D,$1D,$9D,$1D,$74,$1D,$75,$1D
                    db $AD,$1D,$BD,$1D,$76,$1D,$77,$1D
                    db $8D,$1D,$4F,$1D,$74,$1D,$75,$1D
                    db $70,$1D,$9D,$1D,$74,$1D,$75,$1D
                    db $AD,$1D,$71,$1D,$76,$1D,$77,$1D
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
                    db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D
                    db $BF,$1D,$BE,$1D,$BE,$1D,$BF,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$BF,$00,$8E,$05,$BF,$00
                    db $61,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$72,$05,$BF,$00
                    db $BF,$00,$BF,$00,$72,$45,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$8E,$05
                    db $BF,$00,$61,$05,$BF,$00,$BF,$00
                    db $72,$05,$BF,$00,$BF,$00,$BF,$00
                    db $8E,$05,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$8E,$05,$BF,$00,$BF,$00
                    db $BF,$00,$72,$05,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$61,$05
                    db $BF,$00,$8E,$05,$61,$05,$BF,$00

DATA_13C309:        db $8C,$1D,$8D,$1D,$9C,$1D,$9D,$1D
                    db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D
                    db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D
                    db $CC,$1D,$CD,$1D,$CC,$1D,$CD,$1D
                    db $CE,$1D,$CF,$1D,$CE,$1D,$CF,$1D
                    db $DC,$1D,$DD,$1D,$DC,$1D,$DD,$1D
                    db $DE,$1D,$DF,$1D,$DE,$1D,$DF,$1D
                    db $EC,$1D,$ED,$1D,$EC,$1D,$ED,$1D
                    db $ED,$5D,$EC,$5D,$ED,$5D,$EC,$5D
                    db $DF,$5D,$DE,$5D,$DF,$5D,$DE,$5D
                    db $DD,$5D,$DC,$5D,$DD,$5D,$DC,$5D
                    db $CF,$5D,$CE,$5D,$CF,$5D,$CE,$5D
                    db $CD,$5D,$CC,$5D,$CD,$5D,$CC,$5D
                    db $AF,$5D,$AE,$5D,$BF,$5D,$BE,$5D
                    db $AD,$5D,$AC,$5D,$BD,$5D,$BC,$5D
                    db $8D,$5D,$8C,$5D,$9D,$5D,$9C,$5D
                    db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D
                    db $8F,$5D,$8E,$5D,$9F,$5D,$9E,$5D
                    db $90,$1D,$91,$1D,$A0,$1D,$A1,$1D
                    db $91,$5D,$90,$5D,$A1,$5D,$A0,$5D
                    db $92,$1D,$93,$1D,$A2,$1D,$A3,$1D
                    db $93,$5D,$92,$5D,$A3,$5D,$A2,$5D
                    db $B0,$1D,$B1,$1D,$B2,$1D,$B3,$1D
                    db $B1,$5D,$B0,$5D,$B3,$5D,$B2,$5D
                    db $DE,$1D,$FE,$1D,$FC,$1D,$FD,$1D
                    db $FE,$5D,$DE,$5D,$FD,$5D,$FC,$5D
                    db $EC,$1D,$FF,$1D,$EC,$1D,$ED,$1D
                    db $FF,$5D,$EC,$5D,$ED,$5D,$EC,$5D

DATA_13C3E9:        db $8E,$1D,$8F,$1D,$95,$9D,$96,$9D
                    db $88,$1D,$89,$1D,$83,$9D,$84,$9D
                    db $BB,$1D,$86,$1D,$85,$1D,$76,$9D
                    db $87,$1D,$85,$1D,$77,$9D,$BB,$1D
                    db $BB,$1D,$85,$1D,$85,$1D,$BB,$1D
                    db $95,$1D,$96,$1D,$8E,$1D,$8F,$1D
                    db $83,$1D,$84,$1D,$88,$1D,$89,$1D
                    db $BB,$1D,$76,$1D,$BF,$00,$86,$1D
                    db $77,$1D,$85,$1D,$87,$1D,$BF,$00
                    db $BB,$1D,$85,$1D,$BF,$00,$BB,$1D
                    db $BF,$00,$BF,$00,$85,$1D,$BB,$1D
                    db $BB,$1D,$85,$1D,$85,$1D,$BF,$00
                    db $77,$1D,$85,$1D,$87,$1D,$BB,$1D
                    db $8E,$1D,$8F,$1D,$8E,$1D,$8F,$1D
                    db $88,$1D,$89,$1D,$88,$1D,$89,$1D
                    db $BB,$1D,$86,$1D,$BF,$00,$86,$1D
                    db $87,$1D,$BF,$00,$87,$1D,$85,$1D
                    db $BF,$00,$BF,$00,$85,$1D,$BF,$00
                    db $BB,$1D,$85,$1D,$BF,$00,$BF,$00
                    db $87,$1D,$BF,$00,$87,$1D,$BB,$1D
                    db $BF,$00,$86,$1D,$BF,$00,$86,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$51,$1D
                    db $42,$1D,$43,$1D,$52,$1D,$53,$1D
                    db $44,$1D,$45,$1D,$54,$1D,$55,$1D
                    db $46,$1D,$47,$1D,$56,$1D,$57,$1D
                    db $48,$1D,$49,$1D,$58,$1D,$59,$1D
                    db $BF,$00,$BF,$00,$5A,$1D,$BF,$00
                    db $87,$1D,$BF,$00,$87,$1D,$BF,$00
                    db $BF,$00,$86,$1D,$85,$1D,$86,$1D
                    db $60,$1D,$61,$1D,$70,$1D,$71,$1D
                    db $62,$1D,$63,$1D,$72,$1D,$73,$1D
                    db $64,$1D,$65,$1D,$74,$1D,$75,$1D
                    db $66,$1D,$67,$1D,$66,$1D,$67,$1D
                    db $68,$1D,$69,$1D,$78,$1D,$79,$1D
                    db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D
                    db $80,$1D,$81,$1D,$90,$1D,$91,$1D
                    db $82,$1D,$74,$1D,$92,$1D,$93,$1D
                    db $74,$1D,$75,$1D,$94,$1D,$75,$1D
                    db $66,$1D,$67,$1D,$66,$1D,$97,$1D
                    db $78,$1D,$78,$1D,$98,$1D,$99,$1D
                    db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D
                    db $87,$1D,$85,$1D,$87,$1D,$BF,$00
                    db $A0,$1D,$A1,$1D,$A0,$1D,$B1,$1D
                    db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D
                    db $A4,$1D,$A5,$1D,$B4,$1D,$B5,$1D
                    db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D
                    db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D
                    db $AA,$1D,$AB,$1D,$BA,$1D,$AB,$1D
                    db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D
                    db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D
                    db $74,$1D,$8D,$1D,$9C,$1D,$9D,$1D
                    db $66,$1D,$67,$1D,$9E,$1D,$9F,$1D
                    db $78,$1D,$C1,$1D,$D0,$1D,$D1,$1D
                    db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D
                    db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D
                    db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D
                    db $6F,$1D,$E1,$1D,$F0,$1D,$F1,$1D
                    db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D
                    db $87,$1D,$BB,$1D,$87,$1D,$BF,$00
                    db $85,$1D,$41,$1D,$BF,$00,$BF,$00
                    db $40,$1D,$B0,$1D,$50,$1D,$8C,$1D
                    db $AC,$1D,$BD,$1D,$BC,$1D,$BC,$1D
                    db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D
                    db $C0,$1D,$4B,$1D,$E0,$1D,$5B,$1D
                    db $4A,$1D,$BF,$00,$BF,$00,$BF,$00
                    db $85,$1D,$86,$1D,$BF,$00,$86,$1D
                    db $87,$1D,$BB,$1D,$87,$1D,$85,$1D
                    db $85,$1D,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BB,$1D,$85,$1D
                    db $BF,$00,$BB,$1D,$BB,$1D,$85,$1D
                    db $85,$1D,$86,$1D,$BB,$1D,$76,$9D
                    db $87,$1D,$BB,$1D,$77,$9D,$85,$1D
                    db $85,$1D,$BF,$00,$BB,$1D,$85,$1D
                    db $85,$1D,$BB,$1D,$BB,$1D,$85,$1D
                    db $87,$1D,$BF,$00,$77,$9D,$85,$1D
                    db $85,$1D,$76,$1D,$BB,$1D,$86,$1D
                    db $77,$1D,$BB,$1D,$87,$1D,$85,$1D
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $6F,$1D,$6F,$1D,$6F,$1D,$6F,$1D
          
PNTR_13C661:        dw DATA_13C6AF
                    dw DATA_13C6BE
                    dw DATA_13C6DF
                    dw DATA_13C700
                    dw DATA_13C711
                    dw DATA_13C732
                    dw DATA_13C74B
                    dw DATA_13C84C
                    dw DATA_13C865
                    dw DATA_13C886
                    dw DATA_13C8A7
                    dw DATA_13C8C0
                    dw DATA_13C9C1
                    dw DATA_13CAC2
                    dw DATA_13CB23
                    dw DATA_13CB84
                    dw DATA_13CB91
                    dw DATA_13CBAA
                    dw DATA_13CBB3
                    dw DATA_13CBBA
                    dw DATA_13CBBA
                    dw DATA_13CBEB
                    dw DATA_13CCEC
                    dw DATA_13CD0D
                    dw DATA_13CD2E
                    dw DATA_13CDBF
                    dw DATA_13CDD0
                    dw DATA_13CDE9
                    dw DATA_13CDF8
                    dw DATA_13CE13
                    dw DATA_13CF14
                    dw DATA_13CF35
                    dw DATA_13CF56
                    dw DATA_13D057
                    dw DATA_13D158
                    dw DATA_13D259
                    dw DATA_13D35A
                    dw DATA_13D43C
                    dw DATA_13D45D

DATA_13C6AF:        db $91,$28,$2E,$31,$34,$35,$34,$35
                    db $29,$2F,$32,$35,$34,$35,$34
 
DATA_13C6BE:        db $01,$00,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00,$02,$00,$02,$00
                    db $02,$01,$03,$01,$03,$01,$03,$01
                    db $03,$01,$03,$01,$03,$01,$03,$01
                    db $03

DATA_13C6DF:        db $01,$08,$08,$62,$63,$08,$08,$08
                    db $08,$08,$62,$63,$08,$08,$08,$08
                    db $08,$08,$08,$63,$62,$08,$08,$08
                    db $08,$08,$63,$62,$08,$08,$08,$08
                    db $08

DATA_13C700:        db $81,$12,$26,$29,$29,$29,$29,$29
                    db $29,$11,$25,$29,$29,$29,$29,$29
                    db $29

DATA_13C711:        db $01,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$1F,$23,$1F,$23
                    db $1F,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$20,$24,$20,$24
                    db $20

DATA_13C732:        db $41,$28,$2E,$31,$16,$18,$44,$46
                    db $44,$46,$44,$46,$44,$29,$2F,$32
                    db $17,$19,$45,$47,$45,$47,$45,$47
                    db $45

DATA_13C74B:        db $0F,$00,$02,$04,$0E,$02,$0D,$03
                    db $05,$07,$00,$02,$04,$01,$03,$05
                    db $07,$01,$08,$02,$0D,$03,$05,$00
                    db $02,$04,$01,$03,$0C,$02,$04,$06
                    db $06,$07,$01,$03,$05,$00,$02,$0D
                    db $03,$0C,$02,$04,$01,$03,$05,$07
                    db $07,$00,$02,$04,$06,$01,$08,$02
                    db $04,$01,$03,$05,$07,$00,$02,$04
                    db $06,$01,$03,$0C,$02,$04,$01,$03
                    db $0C,$02,$04,$06,$06,$01,$03,$05
                    db $07,$06,$0E,$09,$03,$0C,$02,$04
                    db $01,$03,$0C,$02,$04,$06,$0E,$02
                    db $04,$07,$0F,$03,$05,$0F,$03,$05
                    db $07,$00,$09,$03,$05,$07,$0F,$03
                    db $05,$08,$02,$04,$0E,$02,$04,$06
                    db $06,$01,$03,$05,$00,$02,$04,$06
                    db $06,$0D,$03,$0C,$09,$03,$05,$07
                    db $00,$02,$04,$06,$01,$03,$05,$07
                    db $07,$06,$06,$01,$03,$05,$00,$02
                    db $0D,$03,$0C,$02,$04,$0E,$02,$04
                    db $06,$00,$02,$04,$0E,$02,$0D,$03
                    db $05,$00,$09,$03,$05,$0F,$03,$05
                    db $07,$01,$08,$02,$0D,$08,$02,$04
                    db $06,$01,$03,$0C,$02,$04,$0E,$02
                    db $04,$07,$0F,$08,$02,$0D,$03,$05
                    db $00,$02,$04,$01,$03,$05,$0F,$03
                    db $05,$00,$02,$0D,$03,$05,$07,$00
                    db $09,$03,$05,$07,$00,$02,$04,$06
                    db $06,$01,$03,$05,$07,$00,$02,$01
                    db $03,$05,$00,$02,$0D,$03,$05,$07
                    db $07,$06,$06,$06,$06,$01,$08,$02
                    db $04,$06,$01,$03,$05,$00,$02,$04
                    db $06

DATA_13C84C:        db $41,$15,$15,$15,$15,$15,$3E,$2E
                    db $31,$34,$35,$34,$35,$15,$15,$15
                    db $15,$15,$3F,$2F,$32,$35,$34,$35
                    db $34

DATA_13C865:        db $01,$44,$46,$44,$46,$44,$46,$44
                    db $46,$44,$46,$44,$46,$44,$46,$44
                    db $46,$45,$47,$45,$47,$45,$47,$45
                    db $47,$45,$47,$45,$47,$45,$47,$45
                    db $47
              
DATA_13C886:        db $01,$08,$08,$08,$08,$05,$0E,$04
                    db $0D,$08,$08,$05,$0E,$04,$0D,$08
                    db $08,$08,$08,$08,$08,$02,$0B,$03
                    db $0C,$08,$08,$02,$0B,$03,$0C,$08
                    db $08

DATA_13C8A7:        db $41,$01,$04,$07,$0C,$0C,$0C,$36
                    db $37,$37,$37,$37,$37,$00,$03,$08
                    db $0D,$0D,$0D,$36,$37,$37,$37,$37
                    db $37

DATA_13C8C0:        db $0F,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$28,$30,$30,$36,$30,$30,$30
                    db $30,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$29,$31,$29,$31,$29,$31,$29
                    db $31,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2A,$32,$2A,$32,$2A,$32,$2A
                    db $32,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$2B,$33,$33,$33,$33,$33,$33
                    db $33,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2C,$34,$38,$2C,$30,$38,$2C
                    db $30,$00,$04,$09,$10,$16,$1D,$22
                    db $27,$2D,$2C,$36,$30,$2C,$36,$30
                    db $2C,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2B,$30,$2D,$30,$30,$2D,$30
                    db $30,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$2C,$30,$36,$30,$30,$36,$38
                    db $30,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2C,$34,$38,$2C,$38,$2C,$3C
                    db $30,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$2E,$30,$36,$30,$36,$30,$30
                    db $30,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2F,$2D,$39,$30,$2C,$2D,$30
                    db $2D,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$2C,$35,$3A,$30,$30,$36,$30
                    db $3C,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2D,$36,$35,$2C,$30,$39,$2C
                    db $2C,$00,$04,$09,$10,$16,$1D,$22
                    db $27,$28,$37,$36,$30,$2C,$3B,$30
                    db $30,$00,$03,$09,$0F,$0F,$1C,$21
                    db $26,$2C,$30,$2C,$30,$30,$38,$2C
                    db $30,$00,$04,$09,$0F,$0F,$1C,$21
                    db $27,$2D,$30,$30,$2D,$30,$36,$30
                    db $2C

DATA_13C9C1:        db $0F,$26,$28,$30,$30,$36,$48,$4F
                    db $5A,$26,$28,$30,$30,$36,$30,$30
                    db $30,$27,$29,$40,$40,$31,$29,$50
                    db $5B,$27,$29,$40,$40,$31,$29,$50
                    db $71,$26,$2A,$41,$41,$32,$2A,$51
                    db $5C,$26,$2A,$41,$41,$32,$2A,$51
                    db $5C,$27,$2B,$33,$33,$33,$49,$52
                    db $5D,$27,$2B,$66,$33,$33,$33,$33
                    db $72,$26,$2C,$34,$38,$2C,$48,$4F
                    db $5E,$26,$2C,$36,$38,$2C,$30,$64
                    db $68,$27,$2D,$2C,$36,$30,$4A,$53
                    db $5E,$27,$2D,$2C,$36,$30,$64,$68
                    db $28,$26,$28,$30,$2D,$30,$48,$4F
                    db $5E,$26,$28,$30,$2D,$6C,$68,$28
                    db $73,$27,$2C,$30,$36,$30,$4A,$53
                    db $5E,$27,$2C,$30,$6A,$68,$28,$69
                    db $30,$26,$2C,$3A,$38,$2C,$48,$4F
                    db $5E,$26,$2C,$67,$68,$6D,$6F,$70
                    db $30,$27,$2E,$36,$36,$30,$4A,$53
                    db $5E,$27,$64,$68,$28,$6E,$30,$36
                    db $30,$26,$2F,$2D,$39,$30,$4B,$54
                    db $5E,$26,$65,$28,$6B,$30,$2C,$30
                    db $2D,$27,$2C,$36,$3B,$30,$2F,$55
                    db $5F,$27,$28,$69,$3A,$30,$30,$30
                    db $3C,$26,$2D,$3A,$42,$45,$4C,$56
                    db $60,$26,$2D,$36,$35,$2C,$30,$2C
                    db $2C,$27,$28,$36,$43,$46,$4D,$57
                    db $61,$27,$28,$30,$36,$30,$2C,$30
                    db $30,$26,$2C,$30,$44,$47,$4E,$58
                    db $62,$26,$2C,$30,$2C,$30,$30,$2C
                    db $30,$27,$2D,$30,$30,$2D,$30,$59
                    db $63,$27,$2D,$30,$30,$2D,$30,$30
                    db $2C

DATA_13CAC2:        db $AF,$00,$00,$19,$38,$29,$00,$00
                    db $00,$1A,$20,$38,$00,$00,$02,$1B
                    db $39,$3C,$00,$00,$0C,$1C,$3A,$20
                    db $00,$02,$0D,$0E,$3B,$39,$00,$03
                    db $0E,$1D,$0E,$3A,$00,$04,$0F,$0E
                    db $0E,$3B,$00,$05,$10,$1E,$0E,$0E
                    db $00,$06,$11,$1F,$0E,$0E,$00,$07
                    db $12,$20,$1F,$0E,$00,$08,$13,$11
                    db $3C,$1F,$00,$09,$14,$21,$20,$3C
                    db $00,$00,$15,$22,$39,$3C,$00,$00
                    db $03,$0E,$3A,$20,$00,$00,$04,$0F
                    db $3B,$39,$00,$00,$05,$10,$0E,$3A
                    db $00

DATA_13CB23:        db $AF,$00,$00,$19,$1F,$3B,$00,$00
                    db $00,$05,$20,$1F,$00,$00,$00,$06
                    db $11,$3C,$00,$00,$00,$23,$12,$20
                    db $00,$00,$06,$24,$3D,$11,$00,$00
                    db $07,$25,$3E,$21,$00,$00,$08,$26
                    db $3F,$1B,$00,$00,$09,$14,$40,$0E
                    db $00,$00,$00,$15,$41,$0E,$00,$00
                    db $00,$0C,$1E,$0E,$00,$00,$02,$27
                    db $0E,$0E,$00,$00,$0C,$28,$0E,$0E
                    db $00,$0A,$16,$0E,$28,$0E,$00,$0B
                    db $17,$0E,$0E,$0E,$00,$00,$18,$29
                    db $42,$0E,$00,$00,$05,$37,$29,$0E
                    db $00

DATA_13CB84:        db $A1,$07,$13,$18,$1A,$1B,$1B,$08
                    db $14,$19,$1A,$1B,$1B

DATA_13CB91:        db $41,$28,$2E,$31,$34,$34,$34,$34
                    db $34,$34,$34,$34,$34,$29,$2F,$32
                    db $35,$35,$35,$35,$35,$35,$35,$35
                    db $35

DATA_13CBAA:        db $C1,$10,$18,$1B,$1B,$0F,$19,$1B
                    db $1B

DATA_13CBB3:        db $A0,$48,$51,$15,$15,$15,$15

DATA_13CBBA:        db $02,$08,$08,$08,$08,$03,$0C,$03
                    db $0C,$08,$08,$03,$0C,$03,$0C,$08
                    db $08,$08,$08,$08,$08,$05,$0E,$04
                    db $0D,$08,$08,$05,$0E,$04,$0D,$08
                    db $08,$08,$08,$08,$08,$02,$0B,$03
                    db $0C,$08,$08,$02,$0B,$03,$0C,$08
                    db $08

DATA_13CBEB:        db $0F,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$1C,$13,$08,$13,$08,$13,$08
                    db $13,$08,$13,$08,$13,$08,$1C,$29
                    db $29,$1D,$14,$09,$14,$09,$14,$09
                    db $14,$09,$14,$09,$14,$09,$1D,$29
                    db $29,$1E,$15,$0A,$15,$0A,$15,$0A
                    db $15,$0A,$15,$0A,$15,$0A,$1E,$29
                    db $29,$07,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$07,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$1C,$13,$08,$13,$08,$13,$08
                    db $13,$08,$13,$08,$13,$08,$1C,$29
                    db $29,$1D,$14,$09,$14,$09,$14,$09
                    db $14,$09,$14,$09,$14,$09,$1D,$29
                    db $29,$1E,$15,$0A,$15,$0A,$15,$0A
                    db $15,$0A,$15,$0A,$15,$0A,$1E,$29
                    db $29,$07,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$07,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29

DATA_13CCEC:        db $01,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$1F,$23
                    db $1F,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$20,$24
                    db $20
      
DATA_13CD0D:        db $01,$1F,$23,$1F,$23,$1F,$23,$1F
                    db $23,$1F,$23,$1F,$23,$1F,$23,$1F
                    db $23,$20,$24,$20,$24,$20,$24,$20
                    db $24,$20,$24,$20,$24,$20,$24,$20
                    db $24

DATA_13CD2E:        db $7F,$00,$00,$00,$07,$13,$18,$1A
                    db $1B,$1B,$00,$00,$00,$0C,$17,$19
                    db $1A,$1B,$1B,$00,$00,$00,$02,$12
                    db $18,$1A,$1B,$1B,$00,$02,$04,$06
                    db $11,$19,$1A,$1B,$1B,$00,$03,$05
                    db $05,$10,$18,$1A,$1B,$1B,$00,$00
                    db $00,$00,$0E,$19,$1A,$1B,$1B,$00
                    db $00,$00,$0B,$16,$18,$1A,$1B,$1B
                    db $00,$00,$00,$08,$14,$19,$1A,$1B
                    db $1B,$00,$00,$00,$07,$13,$18,$1A
                    db $1B,$1B,$00,$00,$00,$08,$14,$19
                    db $1A,$1B,$1B,$00,$00,$02,$04,$12
                    db $18,$1A,$1B,$1B,$02,$04,$06,$05
                    db $11,$19,$1A,$1B,$1B,$03,$0A,$04
                    db $04,$12,$18,$1A,$1B,$1B,$00,$03
                    db $05,$05,$11,$19,$1A,$1B,$1B,$00
                    db $00,$00,$00,$0D,$18,$1A,$1B,$1B
                    db $00,$00,$02,$04,$0F,$19,$1A,$1B
                    db $1B

DATA_13CDBF:        db $00,$1B,$1B,$1B,$1B,$1B,$1B,$1B
                    db $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B
                    db $1B

DATA_13CDD0:        db $41,$00,$03,$08,$0D,$0D,$0D,$36
                    db $37,$37,$30,$30,$30,$01,$04,$07
                    db $0C,$0C,$0C,$36,$37,$37,$30,$30
                    db $30

DATA_13CDE9:        db $91,$28,$2E,$31,$34,$48,$4A,$4C
                    db $29,$2F,$32,$35,$49,$4B,$4C

DATA_13CDF8:        db $31,$00,$04,$09,$0F,$0F,$0F,$1C
                    db $21,$30,$30,$30,$30,$30,$00,$03
                    db $09,$0F,$0F,$0F,$1C,$21,$30,$30
                    db $30,$30,$30
  
DATA_13CE13:        db $0F,$16,$0D,$02,$0D,$02,$0D,$02
                    db $0D,$02,$0D,$02,$0D,$02,$16,$29
                    db $29,$17,$0E,$03,$0E,$03,$0E,$03
                    db $0E,$03,$0E,$03,$0E,$03,$17,$29
                    db $29,$18,$0F,$04,$0F,$04,$0F,$04
                    db $0F,$04,$0F,$04,$0F,$04,$18,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$19,$10,$05,$10,$05,$10,$05
                    db $10,$05,$10,$05,$10,$05,$19,$29
                    db $29,$1A,$11,$06,$11,$06,$11,$06
                    db $11,$06,$11,$06,$11,$06,$1A,$29
                    db $29,$1B,$12,$07,$12,$07,$12,$07
                    db $12,$07,$12,$07,$12,$07,$1B,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$29
                    db $29,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$29
                    db $29,$16,$0D,$02,$0D,$02,$0D,$02
                    db $0D,$02,$0D,$02,$0D,$02,$16,$29
                    db $29,$17,$0E,$03,$0E,$03,$0E,$03
                    db $0E,$03,$0E,$03,$0E,$03,$17,$29
                    db $29

DATA_13CF14:        db $01,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$00,$0B,$00,$0B,$00,$0B,$00
                    db $0B,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C,$01,$0C,$01,$0C,$01,$0C,$01
                    db $0C

DATA_13CF35:        db $01,$0B,$00,$0B,$00,$0B,$00,$0B
                    db $00,$0B,$00,$0B,$00,$0B,$00,$0B
                    db $00,$0C,$01,$0C,$01,$0C,$01,$0C
                    db $01,$0C,$01,$0C,$01,$0C,$01,$0C
                    db $01

DATA_13CF56:        db $0F,$00,$10,$00,$10,$00,$10,$00
                    db $10,$00,$10,$00,$10,$00,$10,$00
                    db $10,$01,$01,$01,$01,$01,$01,$01
                    db $01,$01,$01,$01,$01,$01,$01,$01
                    db $01,$02,$02,$02,$02,$02,$12,$02
                    db $02,$02,$02,$02,$12,$02,$02,$02
                    db $02,$03,$03,$03,$03,$03,$03,$03
                    db $03,$03,$03,$03,$03,$03,$03,$03
                    db $03,$14,$04,$04,$04,$04,$04,$04
                    db $04,$04,$14,$04,$04,$04,$04,$04
                    db $04,$05,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$06,$06,$06,$06,$06,$06,$06
                    db $06,$06,$06,$18,$06,$06,$06,$06
                    db $06,$07,$07,$07,$07,$07,$07,$07
                    db $1A,$07,$07,$07,$07,$07,$07,$1A
                    db $07,$08,$08,$08,$08,$08,$08,$08
                    db $1B,$08,$08,$08,$08,$08,$08,$08
                    db $08,$09,$09,$09,$19,$09,$09,$09
                    db $09,$09,$09,$09,$09,$09,$09,$09
                    db $09,$0A,$0A,$0A,$0A,$0A,$0A,$0A
                    db $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
                    db $0A,$0B,$0B,$0B,$0B,$0B,$0B,$15
                    db $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
                    db $0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$13,$0D,$0D,$0D,$0D,$0D,$0D
                    db $0D,$0D,$0D,$0D,$0D,$0D,$13,$0D
                    db $0D,$0E,$0E,$0E,$0E,$0E,$0E,$0E
                    db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
                    db $0E,$0F,$11,$0F,$11,$0F,$11,$0F
                    db $11,$0F,$11,$0F,$11,$0F,$11,$0F
                    db $11

DATA_13D057:        db $0F,$10,$00,$10,$00,$10,$00,$10
                    db $00,$10,$00,$10,$00,$10,$00,$10
                    db $00,$01,$01,$01,$01,$01,$01,$01
                    db $01,$01,$01,$01,$01,$01,$01,$01
                    db $01,$02,$02,$02,$02,$12,$02,$02
                    db $02,$02,$02,$02,$02,$02,$02,$02
                    db $02,$03,$03,$03,$03,$03,$03,$03
                    db $03,$03,$03,$03,$03,$03,$03,$03
                    db $03,$04,$04,$04,$04,$04,$04,$04
                    db $04,$04,$04,$14,$04,$04,$04,$04
                    db $04,$05,$05,$05,$05,$05,$05,$16
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$06,$06,$18,$06,$06,$06,$06
                    db $06,$06,$06,$06,$06,$06,$06,$06
                    db $06,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$07,$07,$07,$07
                    db $07,$08,$08,$08,$08,$08,$08,$08
                    db $08,$08,$08,$08,$08,$1B,$08,$08
                    db $08,$09,$09,$09,$09,$09,$09,$09
                    db $09,$09,$19,$09,$09,$09,$09,$09
                    db $09,$0A,$0A,$0A,$0A,$0A,$0A,$0A
                    db $0A,$0A,$0A,$0A,$0A,$0A,$17,$0A
                    db $0A,$0B,$15,$0B,$0B,$0B,$0B,$0B
                    db $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
                    db $0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
                    db $0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D
                    db $0D,$13,$0D,$0D,$0D,$0D,$0D,$0D
                    db $0D,$0E,$0E,$0E,$0E,$0E,$0E,$0E
                    db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
                    db $0E,$11,$0F,$11,$0F,$11,$0F,$11
                    db $0F,$11,$0F,$11,$0F,$11,$0F,$11
                    db $0F

DATA_13D158:        db $0F,$27,$2C,$30,$36,$30,$30,$30
                    db $30,$48,$4F,$27,$2C,$30,$36,$30
                    db $30,$26,$2D,$30,$30,$30,$2D,$30
                    db $30,$4A,$53,$26,$2D,$30,$30,$30
                    db $2D,$27,$28,$30,$30,$30,$36,$30
                    db $30,$48,$4F,$27,$28,$30,$30,$30
                    db $36,$26,$2C,$30,$30,$30,$30,$30
                    db $30,$4A,$53,$26,$2C,$30,$30,$30
                    db $30,$27,$2C,$34,$34,$38,$2C,$34
                    db $38,$48,$4F,$27,$2C,$34,$34,$38
                    db $2C,$26,$2D,$2C,$2C,$36,$30,$2C
                    db $36,$4A,$53,$26,$2D,$2C,$2C,$36
                    db $30,$27,$28,$30,$30,$2D,$30,$30
                    db $2D,$48,$4F,$27,$28,$30,$30,$2D
                    db $30,$26,$2C,$30,$30,$36,$30,$30
                    db $36,$4A,$53,$26,$2C,$30,$30,$36
                    db $30,$27,$2C,$30,$3A,$38,$2C,$3A
                    db $38,$48,$4F,$27,$2C,$3A,$30,$38
                    db $2C,$26,$2E,$30,$36,$36,$30,$36
                    db $36,$4A,$53,$26,$2E,$36,$2C,$36
                    db $30,$27,$2F,$2D,$30,$30,$30,$2D
                    db $30,$48,$4F,$27,$2F,$2D,$30,$30
                    db $30,$26,$2C,$36,$30,$30,$30,$36
                    db $30,$4A,$53,$26,$2C,$36,$30,$30
                    db $30,$27,$2D,$30,$3A,$30,$2C,$3A
                    db $30,$48,$4F,$27,$2D,$3A,$30,$30
                    db $30,$26,$28,$30,$36,$30,$2C,$36
                    db $30,$4A,$53,$26,$28,$36,$2C,$30
                    db $30,$27,$2C,$30,$30,$30,$2C,$30
                    db $30,$48,$4F,$27,$2C,$30,$30,$30
                    db $30,$26,$2D,$30,$30,$3A,$2C,$30
                    db $30,$4A,$53,$26,$2D,$30,$30,$30
                    db $2D

DATA_13D259:        db $0F,$27,$28,$30,$30,$36,$2C,$30
                    db $30,$48,$4F,$27,$28,$30,$30,$30
                    db $36,$26,$2D,$30,$2C,$30,$30,$30
                    db $30,$4A,$53,$26,$2C,$30,$2C,$30
                    db $30,$27,$28,$30,$30,$2C,$30,$2C
                    db $30,$4B,$54,$27,$2C,$30,$30,$30
                    db $2D,$26,$29,$29,$40,$40,$40,$50
                    db $29,$29,$50,$40,$40,$31,$29,$29
                    db $31,$27,$2A,$2A,$41,$41,$41,$41
                    db $2A,$2A,$41,$41,$41,$32,$2A,$2A
                    db $32,$26,$2B,$33,$33,$33,$33,$5D
                    db $26,$2B,$33,$33,$33,$33,$33,$33
                    db $33,$27,$2C,$30,$30,$2F,$55,$5F
                    db $27,$2C,$30,$2D,$30,$30,$30,$2D
                    db $30,$26,$2C,$42,$45,$4C,$56,$60
                    db $26,$2D,$30,$36,$30,$30,$30,$36
                    db $2C,$27,$2E,$43,$46,$4D,$57,$61
                    db $27,$28,$30,$2C,$30,$2D,$30,$30
                    db $70,$26,$2C,$44,$47,$4E,$58,$62
                    db $26,$2C,$30,$30,$30,$36,$30,$30
                    db $30,$27,$2E,$30,$30,$30,$59,$63
                    db $27,$2C,$3A,$2C,$30,$30,$30,$2C
                    db $30,$26,$2F,$30,$30,$2F,$30,$5E
                    db $26,$2C,$36,$3A,$69,$3A,$30,$30
                    db $30,$27,$29,$29,$40,$40,$40,$50
                    db $29,$29,$50,$40,$40,$31,$29,$29
                    db $31,$26,$2A,$2A,$41,$41,$41,$41
                    db $2A,$2A,$41,$41,$41,$32,$2A,$2A
                    db $32,$27,$28,$33,$33,$33,$33,$33
                    db $33,$49,$52,$26,$28,$33,$33,$33
                    db $33,$26,$2C,$30,$2D,$30,$30,$30
                    db $30,$48,$4F,$27,$2C,$30,$2D,$30
                    db $30

DATA_13D35A:        db $1E

DATA_13D35B:        db $4D,$4D,$4D,$4D,$4D,$4D,$4D,$4D
                    db $4D,$4D,$4D,$4D,$4D,$4D,$4D,$00
                    db $05,$0D,$0D,$0D,$0D,$0D,$0D,$0D
                    db $0D,$0D,$00,$05,$4D,$4D,$01,$06
                    db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
                    db $0E,$01,$06,$4D,$4D,$02,$07,$0F
                    db $14,$1C,$14,$0F,$14,$14,$14,$41
                    db $46,$4B,$4D,$4D,$03,$08,$10,$10
                    db $1B,$1B,$1B,$10,$1B,$3A,$42,$47
                    db $4C,$4D,$4D,$04,$09,$09,$15,$1D
                    db $23,$2A,$30,$36,$3B,$43,$48,$49
                    db $4D,$4D,$04,$04,$11,$16,$1E,$24
                    db $2B,$31,$37,$3C,$44,$45,$49,$4D
                    db $4D,$04,$04,$12,$17,$1F,$25,$2C
                    db $32,$4E,$3D,$4D,$49,$49,$4D,$4D
                    db $04,$0A,$4D,$18,$20,$26,$2D,$33
                    db $4E,$3E,$44,$48,$49,$4D,$4D,$04
                    db $04,$09,$19,$21,$27,$2E,$34,$38
                    db $3F,$4D,$45,$49,$4D,$4D,$04,$0B
                    db $11,$1A,$22,$28,$2F,$35,$39,$40
                    db $45,$49,$49,$4D,$4D,$02,$07,$0F
                    db $14,$0F,$14,$14,$0F,$14,$14,$41
                    db $46,$4B,$4D,$4D,$03,$0C,$13,$1B
                    db $1B,$29,$13,$1B,$1B,$1B,$10,$4A
                    db $4C,$4D,$4D,$01,$06,$0E,$0E,$0E
                    db $0E,$0E,$0E,$0E,$0E,$0E,$01,$06
                    db $4D,$4D,$00,$05,$0D,$0D,$0D,$0D
                    db $0D,$0D,$0D,$0D,$0D,$00,$05,$4D
                    db $4D

DATA_13D43C:        db $01,$44,$46,$44,$46,$44,$46,$44
                    db $46,$44,$46,$44,$46,$44,$46,$44
                    db $46,$45,$47,$45,$47,$45,$47,$45
                    db $47,$45,$47,$45,$47,$45,$47,$45

DATA_13D45C:        db $47

DATA_13D45D:        db $A0,$36,$37,$37,$37,$37,$37

DATA_13D464:        db $26,$38

DATA_13D466:        db $2C,$01

DATA_13D468:        db $1A,$24,$25

DATA_13D46B:        db $0A,$09,$71,$72,$73,$74

DATA_13D471:        db $51,$52,$53,$54,$55,$56

DATA_13D477:        db $06,$10,$0B,$16,$0C,$17,$09,$15
                    db $00,$0D,$00,$0E

DATA_13D483:        db $13,$1B,$50,$59

DATA_13D487:        db $23,$2A,$24,$2B,$04,$06,$05,$07
                    db $00,$0D,$00,$0E,$49,$51,$4A,$55

DATA_13D497:        db $1C,$1D,$21,$22,$5E

DATA_13D49C:        db $04,$06,$08,$07,$09,$03,$0A,$02
                    db $0B,$06,$05,$07,$37,$47,$38,$48
                    db $25,$25,$89,$8B,$8A,$8C,$25,$25
                    db $01,$04,$02,$05,$03,$06
    
DATA_13D4BA:        db $02,$02,$02,$02,$08,$08,$08,$08
                    db $08,$08

DATA_13D4C4:        db $01,$02,$03,$04,$02,$03,$04,$05
                    db $06,$08

DATA_13D4CE:        db $01,$03,$0B,$62,$63,$0C,$02

DATA_13D4D5:        db $76,$33,$2E,$67,$64,$2E,$33

DATA_13D4DC:        db $20,$25,$21,$26,$2C,$30,$33,$22
                    db $27,$2D

DATA_13D4E6:        db $15,$16,$17,$18,$19,$27,$28,$29
                    db $2A,$2B,$2C,$2D,$2E,$2F,$30,$31
                    db $32,$33,$35,$36,$37,$39,$3A,$3B
                    db $3C,$3D,$3E,$3F,$45,$46,$47,$4D
                    db $4E,$57,$58,$5B,$5C,$5D,$5F,$60
                    db $61,$62,$63,$64,$65,$66,$67,$68
                    db $69,$6A,$6B,$6C

PNTR_13D51A:        dw DATA_13D582
                    dw DATA_13D582
                    dw DATA_13D582
                    dw DATA_13D582
                    dw DATA_13D582
                    dw DATA_13D582
                    dw DATA_13D5A1
                    dw DATA_13D5AA
                    dw DATA_13D5B7
                    dw DATA_13D5BE
                    dw DATA_13D5C5
                    dw DATA_13D5D1
                    dw DATA_13D5D5
                    dw DATA_13D5E2
                    dw DATA_13D5E7
                    dw DATA_13D5F4
                    dw DATA_13D5F9
                    dw DATA_13D5FD
                    dw DATA_13D605
                    dw DATA_13D60E
                    dw DATA_13D630
                    dw DATA_13D646
                    dw DATA_13D64D
                    dw DATA_13D654
                    dw DATA_13D661
                    dw DATA_13D668
                    dw DATA_13D66C
                    dw DATA_13D685
                    dw DATA_13D692
                    dw DATA_13D69C
                    dw DATA_13D6A9
                    dw DATA_13D6BC
                    dw DATA_13D6C3
                    dw DATA_13D6F5
                    dw DATA_13D714
                    dw DATA_13D79C
                    dw DATA_13D7AC
                    dw DATA_13D81D
                    dw DATA_13D864
                    dw DATA_13D873
                    dw DATA_13D873
                    dw DATA_13D892
                    dw DATA_13D8AC
                    dw DATA_13D8B6
                    dw DATA_13D8B6
                    dw DATA_13D8B6
                    dw DATA_13D8B6
                    dw DATA_13D8D1
                    dw DATA_13D8F9
                    dw DATA_13D93A
                    dw DATA_13D96B
                    dw DATA_13D9B9

DATA_13D582:        db $E1,$40,$09,$65,$68,$17,$1B,$09
                    db $40,$09,$65,$68,$17,$1B,$09,$09
                    db $30,$0A,$0A,$0A,$15,$1C,$0A,$30
                    db $0A,$0A,$0A,$15,$1C,$0A,$0A

DATA_13D5A1:        db $31,$60,$60,$60,$60,$25,$25,$64
                    db $67

DATA_13D5AA:        db $51,$6A,$6F,$77,$7A,$7A,$7A,$6B
                    db $25,$25,$25,$67,$64

DATA_13D5B7:        db $21,$6A,$6F,$77,$6B,$25,$25

DATA_13D5BE:        db $21,$6A,$7A,$6F,$6B,$25,$25

DATA_13D5C5:        db $A0,$61,$61,$66,$69,$16,$6E,$75
                    db $61,$61,$66,$69

DATA_13D5D1:        db $20,$7F,$80,$81

DATA_13D5D5:        db $51,$6A,$6F,$77,$7A,$7A,$7A,$6B
                    db $83,$25,$25,$64,$67

DATA_13D5E2:        db $30,$86,$2C,$2C,$08

DATA_13D5E7:        db $51,$7F,$80,$81,$81,$8D,$81,$19
                    db $73,$88,$08,$63,$62

DATA_13D5F4:        db $30,$75,$61,$84,$85

DATA_13D5F9:        db $02,$7C,$7D,$7E

DATA_13D5FD:        db $06,$7D,$7D,$7D,$7D,$7D,$7D,$7E

DATA_13D605:        db $13,$0B,$1A,$0C,$1B,$09,$18,$0A
                    db $19

DATA_13D60E:        db $2A,$00,$0D,$1C,$03,$0E,$1D,$04
                    db $0F,$1E,$05,$0E,$1F,$04,$0F,$20
                    db $05,$0E,$21,$04,$0F,$1E,$05,$0E
                    db $1F,$04,$0F,$20,$05,$0E,$21,$06
                    db $10,$24

DATA_13D630:        db $26,$00,$0D,$1C,$03,$0E,$1D,$04
                    db $0F,$1E,$05,$0E,$1F,$04,$0F,$20
                    db $05,$0E,$21,$06,$10,$24

DATA_13D646:        db $50,$2A,$02,$07,$0C,$0C,$0C

DATA_13D64D:        db $50,$2A,$05,$09,$0D,$0D,$0D

DATA_13D654:        db $51
                    db $2A,$2A,$2A,$0E,$32,$34,$2A,$2A
                    db $2A,$0F,$33,$35

DATA_13D661:        db $50,$2A,$06,$0A
                    db $10,$10,$10

DATA_13D668:        db $20,$24,$29,$29

DATA_13D66C:        db $35
                    db $07,$11,$17,$17,$0B,$12,$18,$18
                    db $19,$12,$18,$18,$1A,$12,$18,$18
                    db $39,$1C,$1E,$1E,$08,$3A,$3A,$3A

DATA_13D685:        db $51,$01,$04,$07,$0C,$0C,$0C,$00
                    db $03,$08,$0D,$0D,$0D

DATA_13D692:        db $22,$1E,$21
                    db $25,$1F,$22,$26,$20,$23,$27

DATA_13D69C:        db $23
                    db $00,$04,$0A,$01,$05,$0B,$02,$06
                    db $0C,$03,$07,$0D

DATA_13D6A9:        db $25,$00,$04,$0A
                    db $01,$05,$0B,$02,$06,$0C,$01,$05
                    db $0B,$02,$06,$0C,$03,$07,$0D

DATA_13D6BC:        db $21
                    db $37,$43,$4D,$38,$44,$4E

DATA_13D6C3:        db $66,$01
                    db $05,$05,$05,$05,$05,$05,$02,$06
                    db $0A,$11,$18,$1E,$23,$00,$07,$0B
                    db $12,$19,$3D,$3D,$00,$07,$0C,$13
                    db $1A,$3D,$3D,$00,$07,$04,$14,$1B
                    db $1F,$24,$01,$05,$05,$05,$05,$05
                    db $05,$02,$08,$0D,$15,$15,$20,$25

DATA_13D6F5:        db $29,$51,$56,$15,$52,$07,$15,$53
                    db $15,$15,$54,$08,$15,$51,$57,$08
                    db $51,$58,$15,$51,$56,$15,$51,$57
                    db $08,$51,$59,$5A,$51,$58,$15

DATA_13D714:        db $8E
                    db $03,$08,$15,$15,$0A,$08,$15,$15
                    db $15,$00,$03,$08,$0A,$06,$03,$08
                    db $15,$15,$00,$00,$03,$06,$00,$00
                    db $02,$15,$15,$00,$00,$00,$2A,$00
                    db $00,$03,$08,$15,$00,$00,$20,$2B
                    db $32,$3A,$3A,$44,$08,$00,$00,$21
                    db $2C,$33,$3B,$40,$40,$4B,$00,$20
                    db $25,$2D,$00,$3C,$00,$00,$00,$00
                    db $21,$26,$2D,$34,$00,$00,$00,$0B
                    db $00,$22,$27,$2E,$35,$3D,$3D,$3D
                    db $4C,$00,$23,$28,$2E,$36,$3E,$41
                    db $45,$4D,$00,$24,$29,$2E,$00,$00
                    db $00,$00,$00,$00,$00,$23,$2F,$32
                    db $3A,$3A,$3A,$4E,$00,$00,$24,$30
                    db $33,$3B,$40,$40,$4F,$00,$00,$00
                    db $31,$00,$3C,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00

DATA_13D79C:        db $24
                    db $00,$00,$00,$00,$00,$37,$00,$00
                    db $38,$00,$00,$3C,$00,$00,$00

DATA_13D7AC:        db $7D
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$37,$00
                    db $00,$00,$00,$00,$00,$00,$38,$3F
                    db $00,$00,$00,$00,$00,$00,$3C,$00
                    db $00,$00,$00,$00,$00,$37,$00,$00
                    db $00,$00,$00,$00,$00,$38,$3F,$3F
                    db $00,$00,$00,$00,$00,$3C,$00,$00
                    db $00,$00,$00,$00,$00,$37,$00,$00
                    db $00,$00,$00,$00,$00,$38,$3F,$3F
                    db $00,$00,$00,$00,$00,$3C,$00,$00
                    db $00,$00,$00,$00,$00,$2A,$00,$00

DATA_13D81D:        db $69,$00,$20,$2B,$32,$3A,$6D,$71
                    db $00,$21,$2C,$63,$66,$66,$72,$20
                    db $25,$2D,$64,$67,$67,$73,$21,$26
                    db $2D,$64,$68,$6E,$74,$22,$27,$2E
                    db $64,$69,$6F,$75,$23,$28,$2E,$64
                    db $6A,$70,$76,$24,$29,$2E,$64,$67
                    db $67,$77,$00,$23,$2F,$65,$6B,$6B
                    db $78,$00,$24,$30,$33,$6C,$6C,$79
                    db $00,$00,$31,$00,$00,$00,$00

DATA_13D864:        db $61
                    db $2F,$33,$39,$45,$4F,$55,$5B,$30
                    db $34,$3A,$46,$50,$56,$5C

DATA_13D873:        db $E1,$46
                    db $09,$17,$1B,$54,$55,$52,$53,$17
                    db $46,$54,$55,$52,$53,$17,$49,$0A
                    db $15,$1C,$0A,$30,$0A,$0A,$15,$1C
                    db $0A,$30,$0A,$0A,$15

DATA_13D892:        db $44,$20,$08
                    db $28,$29,$2A,$19,$28,$29,$2A,$31
                    db $21,$29,$2A,$31,$2C,$22,$2A,$57
                    db $08,$2C,$23,$56,$0E,$36,$32

DATA_13D8AC:        db $22
                    db $1D,$02,$0B,$1E,$26,$0E,$1F,$27
                    db $26

DATA_13D8B6:        db $C1,$03,$0E,$03,$0E,$03,$0E
                    db $03,$0E,$03,$0E,$03,$0E,$17,$04
                    db $0F,$04,$0F,$04,$0F,$04,$0F,$04
                    db $0F,$04,$0F,$18

DATA_13D8D1:        db $C2,$08,$13,$08
                    db $13,$08,$13,$08,$13,$08,$13,$08
                    db $13,$1C,$09,$14,$09,$14,$09,$14
                    db $09,$14,$09,$14,$09,$14,$1D,$0A
                    db $15,$0A,$15,$0A,$15,$0A,$15,$0A
                    db $15,$0A,$15,$1E

DATA_13D8F9:        db $3F,$00,$00,$3B
                    db $39,$00,$00,$3A,$1A,$00,$00,$0C
                    db $1B,$00,$00,$09,$18,$00,$00,$0A
                    db $19,$00,$00,$12,$26,$00,$00,$11
                    db $25,$00,$00,$13,$27,$00,$00,$14
                    db $28,$00,$07,$15,$28,$07,$37,$15
                    db $28,$08,$38,$16,$28,$00,$08,$38
                    db $28,$00,$00,$08,$28,$00,$00,$3B
                    db $28,$00,$00,$3A,$28

DATA_13D93A:        db $2F,$30,$30
                    db $30,$30,$39,$2C,$2C,$3B,$30,$30
                    db $38,$2C,$2C,$36,$30,$30,$38,$2C
                    db $30,$36,$38,$38,$2C,$3C,$36,$30
                    db $30,$2D,$2D,$30,$35,$36,$30,$36
                    db $39,$2C,$37,$3B,$30,$30,$38,$2C
                    db $30,$36,$30,$30,$2C,$30

DATA_13D96B:        db $A6,$01
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$05,$02,$0A,$11,$18,$1E,$23
                    db $02,$06,$06,$06,$06,$00,$0B,$12
                    db $19,$3D,$3D,$00,$07,$07,$07,$07
                    db $00,$0C,$13,$1A,$3D,$3D,$00,$07
                    db $07,$07,$07,$00,$04,$14,$1B,$1F
                    db $24,$00,$07,$07,$07,$07,$01,$05
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$02,$0A,$09,$0F,$0F,$0F,$1C
                    db $21,$30,$36,$30

DATA_13D9B9:        db $30,$10,$16,$1D,$22

DATA_13D9BE:        db $02,$03,$04,$05,$06,$07,$08,$09
                    db $0A,$07

DATA_13D9C8:        db $0D,$0E,$0F,$10,$11,$12,$13,$14
                    db $15,$12

DATA_13D9D2:        db $16,$17,$18,$19,$1A,$1B,$1C,$1D
                    db $1E,$1B

DATA_13D9DC:        db $03,$06,$0A

DATA_13D9DF:        db $17,$16,$16,$15

DATA_13D9E3:        db $19
                        
DATA_13D9E4:        db $00,$01,$6C,$6D,$22,$23

DATA_13D9EA:        db $18,$1A,$6C,$6D,$22,$23

DATA_13D9F0:        db $01,$02,$03,$06,$06,$03,$02

DATA_13D9F7:        db $1D,$1E,$26,$1F,$27,$26,$6C,$60
                    db $78,$7B,$60,$60,$6D,$70,$2A,$25
                    db $64,$67,$22,$2A,$79,$23,$31

PNTR_13DA0E:        dw DATA_13DA16
                    dw DATA_13DA16
                    dw DATA_13DA16
                    dw DATA_13DA16

DATA_13DA16:        db $60,$30,$B2,$2C,$83,$2E,$14,$33
                    db $54,$2F,$C4,$36,$25,$30,$97,$35
                    db $D8,$2C,$59,$31,$2A,$2B,$6C,$33
                    db $EC,$36,$0D,$2E,$BD,$2B,$8E,$31
                    db $4F,$2C,$F0,$61,$30,$B3,$2C,$84
                    db $2E,$15,$33,$55,$2F,$C5,$36,$26
                    db $30,$98,$35,$D9,$2C,$5A,$31,$2B
                    db $2B,$6D,$33,$ED,$36,$0E,$2E,$BE
                    db $2B,$8F,$31,$F0,$60,$30,$B2,$2C
                    db $83,$2E,$14,$33,$54,$2F,$C4,$36
                    db $25,$30,$97,$35,$D8,$2C,$59,$31
                    db $2A,$2B,$6C,$33,$EC,$36,$0D,$2E
                    db $BD,$2B,$8E,$31,$4F,$2C,$F0,$40
                    db $2C,$42,$2F,$03,$31,$16,$30,$59
                    db $30,$2A,$2B,$4D,$2D,$1E,$35,$FF

DATA_13DA8E:        db $07,$14,$27,$20,$27

DATA_13DA93:        db $37,$15,$28,$22,$28

DATA_13DA98:        db $38,$16,$28,$23,$25

DATA_13DA9D:        db $08,$08,$39,$21,$26

DATA_13DAA2:        db $13

DATA_13DAA3:        db $3B

DATA_13DAA4:        db $3A

DATA_13DAA5:        db $05,$08,$04,$0A

DATA_13DAA9:        db $08,$15,$24,$16,$0F

DATA_13DAAE:        db $10,$11,$12,$13,$14

DATA_13DAB3:        db $17,$18,$18,$19,$1A

DATA_13DAB8:        db $1B,$18,$18,$1C,$1D

DATA_13DABD:        db $35,$36,$3F,$40,$5E,$5F,$60,$61
                    db $2D,$2E,$2F,$30,$77,$78,$79,$7A

DATA_13DACD:        db $41,$42,$43,$4A,$65,$66,$67,$68
                    db $31,$32,$33,$34,$7B,$53,$42,$7C

DATA_13DADD:        db $4B,$4C,$4D,$4E,$6C,$6D,$6E,$6F
                    db $3B,$3C,$39,$3A,$7D,$43,$4C,$7E
                    db $52,$53,$42,$54,$70,$71,$66,$72
                    db $47,$48,$32,$46,$62,$4D,$53,$63
                    db $59,$43,$4C,$5A,$73,$67,$6D,$74
                    db $51,$33,$3C,$50,$69,$42,$43,$6A
                    db $62,$4D,$53,$63,$75,$6E,$71,$76
                    db $57,$39,$48,$56,$4B,$4C,$4D,$4E
                    db $69,$42,$43,$6A,$00,$00,$00,$00
                    db $5D,$32,$33,$5C,$52,$53,$42,$54

DATA_13DB2D:        db $39,$3A,$32,$3B,$3C,$48

DATA_13DB33:        db $3D,$3E
                    db $49,$37,$38,$44

DATA_13DB39:        db $2F,$33,$39,$32
                    db $3C,$48

DATA_13DB3F:        db $58,$5B,$64,$6B,$4F,$55

DATA_13DB45:        db $02,$03

DATA_13DB47:        db $04,$05

DATA_13DB49:        db $04,$05

DATA_13DB4B:        db $06,$0A

DATA_13DB4D:        db $13,$14,$14,$13

DATA_13DB51:        db $12,$0F,$11,$10

DATA_13DB55:        db $10,$11,$12,$0F

DATA_13DB59:        db $12,$0F,$10,$11

DATA_13DB5D:        db $43

DATA_13DB5E:        db $47

DATA_13DB5F:        db $50

DATA_13DB60:        db $4D,$5F,$64,$65,$66,$27,$61

DATA_13DB67:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF                                  ; /

CODE_13DC00:        REP #$30                  
CODE_13DC02:        LDA $0533                 
CODE_13DC05:        AND #$00FF                
CODE_13DC08:        ASL A                     
CODE_13DC09:        ASL A                     
CODE_13DC0A:        ASL A                     
CODE_13DC0B:        ASL A                     
CODE_13DC0C:        ASL A                     
CODE_13DC0D:        TAX                       
CODE_13DC0E:        LDY #$0000                
CODE_13DC11:        LDA.l DATA_14B65C,x             
CODE_13DC15:        STA $0CA0,y               
CODE_13DC18:        INX                       
CODE_13DC19:        INX                       
CODE_13DC1A:        INY                       
CODE_13DC1B:        INY                       
CODE_13DC1C:        CPY #$0020                
CODE_13DC1F:        BNE CODE_13DC11           
CODE_13DC21:        SEP #$30                  
CODE_13DC23:        LDX $0533                 
CODE_13DC26:        LDA.l DATA_11D098,x             
CODE_13DC2A:        CLC                       
CODE_13DC2B:        ADC $0534                 
CODE_13DC2E:        LDX #$06                  
CODE_13DC30:        CMP.l DATA_138779,x             
CODE_13DC34:        BEQ CODE_13DC3C           
CODE_13DC36:        DEX                       
CODE_13DC37:        BPL CODE_13DC30           
CODE_13DC39:        BRL CODE_13DEDC           

CODE_13DC3C:        REP #$20                  
CODE_13DC3E:        TXA                       
CODE_13DC3F:        AND #$00FF                
CODE_13DC42:        ASL A                     
CODE_13DC43:        ASL A                     
CODE_13DC44:        ASL A                     
CODE_13DC45:        ASL A                     
CODE_13DC46:        ASL A                     
CODE_13DC47:        TAX                       
CODE_13DC48:        LDY #$00                  
CODE_13DC4A:        LDA.l DATA_14B8DC,x             
CODE_13DC4E:        STA $0CA0,y               
CODE_13DC51:        INX                       
CODE_13DC52:        INX                       
CODE_13DC53:        INY                       
CODE_13DC54:        INY                       
CODE_13DC55:        CPY #$20                  
CODE_13DC57:        BNE CODE_13DC4A           
CODE_13DC59:        SEP #$20                  
CODE_13DC5B:        BRL CODE_13DEDC           

CODE_13DC5E:        REP #$20                  
CODE_13DC60:        LDX #$00                  
CODE_13DC62:        LDA.l DATA_15E715,x             
CODE_13DC66:        STA $0B00,x               
CODE_13DC69:        LDA.l DATA_15E735,x             
CODE_13DC6D:        STA $0B20,x               
CODE_13DC70:        LDA.l DATA_15E775,x             
CODE_13DC74:        STA $0B60,x               
CODE_13DC77:        LDA.l DATA_15E795,x             
CODE_13DC7B:        STA $0B80,x               
CODE_13DC7E:        LDA.l DATA_15E7B5,x             
CODE_13DC82:        STA $0BA0,x               
CODE_13DC85:        LDA.l DATA_15E7D5,x             
CODE_13DC89:        STA $0BC0,x               
CODE_13DC8C:        LDA.l DATA_15E7F5,x             
CODE_13DC90:        STA $0BE0,x               
CODE_13DC93:        INX                       
CODE_13DC94:        INX                       
CODE_13DC95:        CPX #$20                  
CODE_13DC97:        BNE CODE_13DC62           
CODE_13DC99:        LDX #$00                  
CODE_13DC9B:        LDA.l DATA_15E815,x             
CODE_13DC9F:        STA $0B40,x               
CODE_13DCA2:        INX                       
CODE_13DCA3:        INX                       
CODE_13DCA4:        CPX #$20                  
CODE_13DCA6:        BNE CODE_13DC9B           
CODE_13DCA8:        SEP #$20                  
CODE_13DCAA:        BRL CODE_13DEDC           

CODE_13DCAD:        REP #$20                  
CODE_13DCAF:        LDX #$00                  
CODE_13DCB1:        LDA.w DATA_11C9EC,x               
CODE_13DCB4:        STA $0B00,x               
CODE_13DCB7:        INX                       
CODE_13DCB8:        INX                       
CODE_13DCB9:        CPX #$08                  
CODE_13DCBB:        BCC CODE_13DCB1           
CODE_13DCBD:        SEP #$20                  
CODE_13DCBF:        BRL CODE_13DEDC           

CODE_13DCC2:        PHX                       
CODE_13DCC3:        REP #$20                  
CODE_13DCC5:        LDX #$00                  
CODE_13DCC7:        LDA.l DATA_14BAE0,x             
CODE_13DCCB:        STA $0CA0,x               
CODE_13DCCE:        INX                       
CODE_13DCCF:        INX                       
CODE_13DCD0:        CPX #$20                  
CODE_13DCD2:        BNE CODE_13DCC7           
CODE_13DCD4:        SEP #$20                  
CODE_13DCD6:        PLX                       
CODE_13DCD7:        BRL CODE_13DEDC           

DATA_13DCDA:        db $00,$00,$00,$00,$00,$00,$60,$00
                    db $00,$00,$00,$00,$C0,$00

DATA_13DCE8:        db $51,$7F,$40,$49,$51,$7F,$F5,$7E
                    db $51,$7F,$40,$49,$F5,$7E

CODE_13DCF6:        REP #$30                  ; Accumulator and Index = 16-bit.
CODE_13DCF8:        LDA $0635                 ; \ Get world number * 2 into index.
CODE_13DCFB:        AND #$000F                ;  |
CODE_13DCFE:        ASL A                     ;  |
CODE_13DCFF:        TAX                       ; /
CODE_13DD00:        LDA.l DATA_13DCE8,x         ; \ Get BG colour for the 'World x-x' screen.  
CODE_13DD04:        STA $0B00                 ; /
CODE_13DD07:        LDA.l DATA_13DCDA,x         ; \ Get index for different palette set.     
CODE_13DD0B:        TAX                       ; /
CODE_13DD0C:        LDY #$0000                ; \ Y = #$0000.
CODE_13DD0F:        LDA.l DATA_15F555,x         ;  | Load colours into palette 1.
CODE_13DD13:        STA $0B20,y               ;  |
CODE_13DD16:        LDA.l DATA_15F575,x         ;  | Load colours into palette 2. 
CODE_13DD1A:        STA $0B40,y               ;  |
CODE_13DD1D:        LDA.l DATA_15F595,x         ;  | Load colours into palette 7. 
CODE_13DD21:        STA $0BE0,y               ; /
CODE_13DD24:        INX                       ; \ Get to next colours.
CODE_13DD25:        INX                       ;  |
CODE_13DD26:        INY                       ;  |
CODE_13DD27:        INY                       ;  |
CODE_13DD28:        CPY #$0020                ;  | Check if full palette has been uploaded.
CODE_13DD2B:        BNE CODE_13DD0F           ; / If not, loop.
CODE_13DD2D:        LDA #$7FFF                ; \ Palette 3 colours D-F = white.
CODE_13DD30:        STA $0B7A                 ;  |
CODE_13DD33:        STA $0B7C                 ;  |
CODE_13DD36:        STA $0B7E                 ; /
CODE_13DD39:        LDA #$2896                ; \ Palette 5 colour 9-B = pink-ish colours.
CODE_13DD3C:        STA $0BB2                 ;  |
CODE_13DD3F:        LDA #$495F                ;  |
CODE_13DD42:        STA $0BB4                 ;  |
CODE_13DD45:        LDA #$6E9F                ;  |
CODE_13DD48:        STA $0BB6                 ; /
CODE_13DD4B:        SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_13DD4D:        BRL CODE_13DEDC           

CODE_13DD50:        LDA $0533                 
CODE_13DD53:        CMP #$11                  
CODE_13DD55:        BNE CODE_13DD62           
CODE_13DD57:        LDA $0534                 
CODE_13DD5A:        CMP #$03                  
CODE_13DD5C:        BEQ CODE_13DD8D           
CODE_13DD5E:        CMP #$04                  
CODE_13DD60:        BEQ CODE_13DD8D           
CODE_13DD62:        LDA $0533                 
CODE_13DD65:        CMP #$13                  
CODE_13DD67:        BNE CODE_13DD70           
CODE_13DD69:        LDA $0534                 
CODE_13DD6C:        CMP #$05                  
CODE_13DD6E:        BEQ CODE_13DD8D           
CODE_13DD70:        REP #$20                  
CODE_13DD72:        LDX #$00                  
CODE_13DD74:        LDA.l DATA_14B9BC,x             
CODE_13DD78:        STA $0B00,x               
CODE_13DD7B:        LDA.l DATA_14B9CC,x             
CODE_13DD7F:        STA $0B10,x               
CODE_13DD82:        INX                       
CODE_13DD83:        INX                       
CODE_13DD84:        CPX #$10                  
CODE_13DD86:        BNE CODE_13DD74           
CODE_13DD88:        SEP #$20                  
CODE_13DD8A:        BRL CODE_13DEDC           

CODE_13DD8D:        RTL                       

CODE_13DD8E:        REP #$20                  
CODE_13DD90:        LDX #$00                  
CODE_13DD92:        LDA.l DATA_14BB00,x             
CODE_13DD96:        STA $0B00,x               
CODE_13DD99:        LDA.l DATA_14BB20,x             
CODE_13DD9D:        STA $0B20,x               
CODE_13DDA0:        LDA.l DATA_14BB40,x             
CODE_13DDA4:        STA $0B40,x               
CODE_13DDA7:        LDA.l DATA_14BB60,x             
CODE_13DDAB:        STA $0B60,x               
CODE_13DDAE:        LDA.l DATA_14BB80,x             
CODE_13DDB2:        STA $0B80,x               
CODE_13DDB5:        LDA.l DATA_14BBA0,x             
CODE_13DDB9:        STA $0BA0,x               
CODE_13DDBC:        LDA.l DATA_14BBC0,x             
CODE_13DDC0:        STA $0BC0,x               
CODE_13DDC3:        LDA.l DATA_14BBE0,x             
CODE_13DDC7:        STA $0BE0,x               
CODE_13DDCA:        LDA.l DATA_14BC00,x             
CODE_13DDCE:        STA $0C00,x               
CODE_13DDD1:        LDA.l DATA_14BC20,x             
CODE_13DDD5:        STA $0C20,x               
CODE_13DDD8:        LDA.l DATA_14BC40,x             
CODE_13DDDC:        STA $0C40,x               
CODE_13DDDF:        LDA.l DATA_14BC60,x             
CODE_13DDE3:        STA $0C60,x               
CODE_13DDE6:        LDA.l DATA_14BC80,x             
CODE_13DDEA:        STA $0C80,x               
CODE_13DDED:        LDA.l DATA_14BCA0,x             
CODE_13DDF1:        STA $0CA0,x               
CODE_13DDF4:        LDA.l DATA_14BCC0,x             
CODE_13DDF8:        STA $0CC0,x               
CODE_13DDFB:        LDA.l DATA_14BCE0,x             
CODE_13DDFF:        STA $0CE0,x               
CODE_13DE02:        INX                       
CODE_13DE03:        INX                       
CODE_13DE04:        CPX #$20                  
CODE_13DE06:        BNE CODE_13DD92           
CODE_13DE08:        SEP #$20                  
CODE_13DE0A:        BRL CODE_13DEDC           

CODE_13DE0D:        REP #$20                  
CODE_13DE0F:        LDX #$00                  
CODE_13DE11:        LDA.l DATA_14BD00,x             
CODE_13DE15:        STA $0B00,x               
CODE_13DE18:        LDA.l DATA_14BD20,x             
CODE_13DE1C:        STA $0B20,x               
CODE_13DE1F:        LDA.l DATA_14BD40,x             
CODE_13DE23:        STA $0B40,x               
CODE_13DE26:        LDA.l DATA_14BD60,x             
CODE_13DE2A:        STA $0B60,x               
CODE_13DE2D:        LDA.l DATA_14BD80,x             
CODE_13DE31:        STA $0B80,x               
CODE_13DE34:        LDA.l DATA_14BDA0,x             
CODE_13DE38:        STA $0BA0,x               
CODE_13DE3B:        LDA.l DATA_14BDC0,x             
CODE_13DE3F:        STA $0BC0,x               
CODE_13DE42:        LDA.l DATA_14BDE0,x             
CODE_13DE46:        STA $0BE0,x               
CODE_13DE49:        LDA.l DATA_14BE00,x             
CODE_13DE4D:        STA $0C00,x               
CODE_13DE50:        LDA.l DATA_14BE20,x             
CODE_13DE54:        STA $0C20,x               
CODE_13DE57:        LDA.l DATA_14BE40,x             
CODE_13DE5B:        STA $0C40,x               
CODE_13DE5E:        LDA.l DATA_14BE60,x             
CODE_13DE62:        STA $0C60,x               
CODE_13DE65:        LDA.l DATA_14BE80,x             
CODE_13DE69:        STA $0C80,x               
CODE_13DE6C:        LDA.l DATA_14BEA0,x             
CODE_13DE70:        STA $0CA0,x               
CODE_13DE73:        LDA.l DATA_14BEC0,x             
CODE_13DE77:        STA $0CC0,x               
CODE_13DE7A:        LDA.l DATA_14BEE0,x             
CODE_13DE7E:        STA $0CE0,x               
CODE_13DE81:        INX                       
CODE_13DE82:        INX                       
CODE_13DE83:        CPX #$20                  
CODE_13DE85:        BNE CODE_13DE11           
CODE_13DE87:        SEP #$20                  
CODE_13DE89:        BRL CODE_13DEDC           

CODE_13DE8C:        REP #$20                  
CODE_13DE8E:        LDX #$00                  
CODE_13DE90:        LDA.l DATA_15E715,x             
CODE_13DE94:        STA $0B00,x               
CODE_13DE97:        LDA.l DATA_15E735,x             
CODE_13DE9B:        STA $0B20,x               
CODE_13DE9E:        LDA.l DATA_15E755,x             
CODE_13DEA2:        STA $0B40,x               
CODE_13DEA5:        LDA.l DATA_15E775,x             
CODE_13DEA9:        STA $0B60,x               
CODE_13DEAC:        LDA.l DATA_15E795,x             
CODE_13DEB0:        STA $0B80,x               
CODE_13DEB3:        LDA.l DATA_15E7B5,x             
CODE_13DEB7:        STA $0BA0,x               
CODE_13DEBA:        LDA.l DATA_15E7D5,x             
CODE_13DEBE:        STA $0BC0,x               
CODE_13DEC1:        LDA.l DATA_15E7F5,x             
CODE_13DEC5:        STA $0BE0,x               
CODE_13DEC8:        INX                       
CODE_13DEC9:        INX                       
CODE_13DECA:        CPX #$20                  
CODE_13DECC:        BNE CODE_13DE90           
CODE_13DECE:        LDX #$7E                  
CODE_13DED0:        LDA.w DATA_11BB1C,x               
CODE_13DED3:        STA $0C20,x               
CODE_13DED6:        DEX                       
CODE_13DED7:        DEX                       
CODE_13DED8:        BPL CODE_13DED0           
CODE_13DEDA:        SEP #$20                  
CODE_13DEDC:        LDA #$01                  
CODE_13DEDE:        STA $02A9                 
CODE_13DEE1:        RTL                       

CODE_13DEE2:        LDA #$81                  
CODE_13DEE4:        STA $0239                 
CODE_13DEE7:        LDA #$38                  
CODE_13DEE9:        STA $023D                 
CODE_13DEEC:        LDA #$52                  
CODE_13DEEE:        STA $023E                 
CODE_13DEF1:        LDA #$80                  
CODE_13DEF3:        STA $023F                 
CODE_13DEF6:        REP #$20                  
CODE_13DEF8:        LDA #$3D25                
CODE_13DEFB:        STA $0B00                 
CODE_13DEFE:        SEP #$20                  
CODE_13DF00:        BRA CODE_13DEDC           

PNTR_13DF02:        dl $0012D0
                    dl DATA_13DF0E
                    dl DATA_13DF2E
                    dl DATA_13DF4E

DATA_13DF0E:        db $BC,$45,$D6,$5A,$4A,$29,$FF,$3A
                    db $D8,$01,$3F,$02,$BF,$3A,$9C,$2D
                    db $00,$00,$2F,$15,$5A,$7F,$06,$33
                    db $8A,$43,$3F,$02,$D8,$01,$18,$7F

DATA_13DF2E:        db $BC,$45,$FF,$7F,$A5,$14,$92,$00
                    db $98,$00,$9F,$00,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$95,$2C,$3A,$41
                    db $DF,$55,$AF,$76,$4A,$66,$A6,$51

DATA_13DF4E:        db $BC,$45,$D6,$5A,$4A,$29,$FF,$3A
                    db $3A,$41,$DF,$55,$BF,$3A,$9C,$2D
                    db $00,$00,$2F,$15,$5A,$7F,$D9,$14
                    db $7F,$21,$1F,$03,$7A,$02,$18,$7F

CODE_13DF6E:        REP #$20                  
CODE_13DF70:        LDY $04E1                 
CODE_13DF73:        LDA $50                   
CODE_13DF75:        AND #$00FF                
CODE_13DF78:        CMP #$0008                
CODE_13DF7B:        BNE CODE_13DF7F           
CODE_13DF7D:        LDY $82                   
CODE_13DF7F:        LDA $10                   
CODE_13DF81:        LSR A                     
CODE_13DF82:        LSR A                     
CODE_13DF83:        CPY #$18                  
CODE_13DF85:        BCS CODE_13DF8F                   
CODE_13DF87:        CPY #$01                  
CODE_13DF89:        BNE CODE_13DF8E           
CODE_13DF8B:        LDA #$0000                
CODE_13DF8E:        LSR A                     
CODE_13DF8F:        AND #$0003                
CODE_13DF92:        STA $00                   
CODE_13DF94:        ASL A                     
CODE_13DF95:        CLC                       
CODE_13DF96:        ADC $00                   
CODE_13DF98:        TAX                       
CODE_13DF99:        LDA.l PNTR_13DF02,x             
CODE_13DF9D:        STA $00                   
CODE_13DF9F:        LDA.l PNTR_13DF02+2,x             
CODE_13DFA3:        STA $02                   
CODE_13DFA5:        LDY #$00                  
CODE_13DFA7:        LDA [$00],y               
CODE_13DFA9:        STA $0C00,y               
CODE_13DFAC:        INY                       
CODE_13DFAD:        INY                       
CODE_13DFAE:        CPY #$20                  
CODE_13DFB0:        BNE CODE_13DFA7           
CODE_13DFB2:        SEP #$20                  
CODE_13DFB4:        BRL CODE_13DEDC           

PNTR_13DFB7:        dl $0012D0
                    dl DATA_13DFE7
                    dl DATA_13E007
                    dl DATA_13DFE7
                    dl $0012D0
                    dl DATA_13E0A7
                    dl DATA_13E0C7
                    dl DATA_13E0A7
                    dl $0012D0
                    dl DATA_13E067
                    dl DATA_13E087
                    dl DATA_13E067
                    dl $0012D0
                    dl DATA_13E027
                    dl DATA_13E047
                    dl DATA_13E027

DATA_13DFE7:        db $BC,$45,$FF,$7F,$6B,$2D,$18,$23
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$D4,$29,$EC,$56,$C6,$45
                    db $EC,$56,$DC,$14,$96,$10,$1A,$15

DATA_13E007:        db $BC,$45,$FF,$7F,$10,$42,$FF,$3F
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$79,$3E,$91,$6B,$C6,$45
                    db $EC,$56,$DC,$14,$96,$10,$BF,$29

DATA_13E027:        db $24,$49,$FF,$7F,$6B,$2D,$18,$23
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$D4,$29,$35,$66,$6F,$6D
                    db $56,$7E,$92,$5B,$AB,$42,$30,$4F

DATA_13E047:        db $24,$49,$FF,$7F,$10,$42,$FF,$3F
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$79,$3E,$FB,$7E,$6F,$6D
                    db $56,$7E,$92,$5B,$AB,$42,$F6,$67

DATA_13E067:        db $BC,$45,$FF,$7F,$CE,$39,$8D,$62
                    db $E8,$69,$CF,$7E,$9C,$2D,$BF,$3A
                    db $00,$00,$D4,$29,$B9,$36,$7B,$2A
                    db $5F,$4B,$1F,$19,$D9,$18,$BC,$29

DATA_13E087:        db $BC,$45,$FF,$7F,$94,$52,$74,$7F
                    db $E8,$69,$CF,$7E,$9C,$2D,$BF,$3A
                    db $00,$00,$79,$3E,$7F,$4F,$7B,$2A
                    db $5F,$4B,$1F,$19,$D9,$18,$7F,$42

DATA_13E0A7:        db $24,$49,$FF,$7F,$6B,$2D,$3F,$12
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$57,$0C,$BA,$02,$59,$02
                    db $1F,$1F,$9F,$6E,$5F,$49,$D9,$51

DATA_13E0C7:        db $24,$49,$FF,$7F,$10,$42,$9F,$2F
                    db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$57,$0C,$FF,$5B,$59,$02
                    db $1F,$1F,$9F,$6E,$5F,$49,$BF,$6E

CODE_13E0E7:        LDA $04CB                 
CODE_13E0EA:        CMP #$3C                  
CODE_13E0EC:        BCS CODE_13E0FB                   
CODE_13E0EE:        LDA $0D0A                 
CODE_13E0F1:        BEQ CODE_13E0FA           
CODE_13E0F3:        STZ $0D0A                 
CODE_13E0F6:        STZ $0C                   
CODE_13E0F8:        BRA CODE_13E107           

CODE_13E0FA:        RTL                       

CODE_13E0FB:        LDA #$01                  
CODE_13E0FD:        STA $0D0A                 
CODE_13E100:        LDA $10                   
CODE_13E102:        AND #$06                  
CODE_13E104:        LSR A                     
CODE_13E105:        STA $0C                   
CODE_13E107:        LDA $8F                   
CODE_13E109:        ASL A                     
CODE_13E10A:        ASL A                     
CODE_13E10B:        CLC                       
CODE_13E10C:        ADC $0C                   
CODE_13E10E:        STA $0C                   
CODE_13E110:        ASL A                     
CODE_13E111:        CLC                       
CODE_13E112:        ADC $0C                   
CODE_13E114:        TAX                       
CODE_13E115:        LDA.l PNTR_13DFB7+2,x             
CODE_13E119:        STA $0E                   
CODE_13E11B:        REP #$20                  
CODE_13E11D:        LDA.l PNTR_13DFB7,x             
CODE_13E121:        STA $0C                   
CODE_13E123:        LDY #$00                  
CODE_13E125:        LDA [$0C],y               
CODE_13E127:        STA $0C00,y               
CODE_13E12A:        INY                       
CODE_13E12B:        INY                       
CODE_13E12C:        CPY #$20                  
CODE_13E12E:        BNE CODE_13E125           
CODE_13E130:        SEP #$20                  
CODE_13E132:        BRL CODE_13DEDC           

DATA_13E135:        db $9C,$01,$18,$01,$D5,$00,$92,$00

DATA_13E13D:        db $1F,$33,$9B,$22,$17,$12,$93,$01

DATA_13E145:        db $1C,$00,$18,$00,$14,$00,$10,$00

DATA_13E14D:        db $00,$01,$03,$02,$01,$02,$03,$01
    
CODE_13E155:        LDA $077C
CODE_13E158:        BEQ CODE_13E192
CODE_13E15A:        INC $077D                 
CODE_13E15D:        LDA $077D                 
CODE_13E160:        CMP #$04                  
CODE_13E162:        BCC CODE_13E16A           
CODE_13E164:        STZ $077D                 
CODE_13E167:        INC $077E                 
CODE_13E16A:        LDA $077E                 
CODE_13E16D:        AND #$07                  
CODE_13E16F:        TAX                       
CODE_13E170:        LDA.l DATA_13E14D,x             
CODE_13E174:        ASL A                     
CODE_13E175:        TAX                       
CODE_13E176:        REP #$20                  
CODE_13E178:        LDA.l DATA_13E135,x             
CODE_13E17C:        STA $0B2C                 
CODE_13E17F:        LDA.l DATA_13E13D,x             
CODE_13E183:        STA $0B2E                 
CODE_13E186:        LDA.l DATA_13E145,x             
CODE_13E18A:        STA $0B38                 
CODE_13E18D:        SEP #$20                  
CODE_13E18F:        BRL CODE_13DEDC           

CODE_13E192:        RTL                       

DATA_13E193:        db $35,$08

DATA_13E195:        db $AC,$04

DATA_13E197:        db $49,$04,$BF,$10,$37,$08,$B0,$04
                    db $DF,$39,$BF,$10,$37,$08,$3F,$67
                    db $DF,$39,$BF,$10,$61,$04,$61,$04
                    db $61,$04

DATA_13E1B1:        db $1A,$07,$06,$07,$14,$07,$06,$07

CODE_13E1B9:        LDA $077F
CODE_13E1BC:        BNE CODE_13E1C2
CODE_13E1BE:        STZ $0780                 
CODE_13E1C1:        RTL                       

CODE_13E1C2:        LDA $9C                   
CODE_13E1C4:        BEQ CODE_13E20E           
CODE_13E1C6:        LDX $042D                 
CODE_13E1C9:        LDA $90,x                 
CODE_13E1CB:        CMP #$3D                  
CODE_13E1CD:        BNE CODE_13E20E           
CODE_13E1CF:        INC $0781                 
CODE_13E1D2:        LDA $0780                 
CODE_13E1D5:        AND #$07                  
CODE_13E1D7:        TAX                       
CODE_13E1D8:        LDA.l DATA_13E1B1,x             
CODE_13E1DC:        CMP $0781                 
CODE_13E1DF:        BNE CODE_13E1F5           
CODE_13E1E1:        INC $0780                 
CODE_13E1E4:        LDA $0780                 
CODE_13E1E7:        AND #$07                  
CODE_13E1E9:        CMP #$01                  
CODE_13E1EB:        BNE CODE_13E1F2           
CODE_13E1ED:        LDA #$42                  
CODE_13E1EF:        STA $1DE3                 
CODE_13E1F2:        STZ $0781                 
CODE_13E1F5:        LDA $0780                 
CODE_13E1F8:        AND #$07                  
CODE_13E1FA:        BEQ CODE_13E23D           
CODE_13E1FC:        DEC A                     
CODE_13E1FD:        CMP #$04                  
CODE_13E1FF:        BCC CODE_13E204           
CODE_13E201:        EOR #$07                  
CODE_13E203:        DEC A                     
CODE_13E204:        ASL A                     
CODE_13E205:        STA $00                   
CODE_13E207:        ASL A                     
CODE_13E208:        CLC                       
CODE_13E209:        ADC $00                   
CODE_13E20B:        TAX                       
CODE_13E20C:        BRA CODE_13E23F           

CODE_13E20E:        LDA $0780                 
CODE_13E211:        AND #$07                  
CODE_13E213:        BEQ CODE_13E238           
CODE_13E215:        INC $0781                 
CODE_13E218:        TAX                       
CODE_13E219:        LDA.l DATA_13E1B1,x             
CODE_13E21D:        CMP $0781                 
CODE_13E220:        BNE CODE_13E1F5           
CODE_13E222:        STZ $0781                 
CODE_13E225:        LDA $0780                 
CODE_13E228:        AND #$07                  
CODE_13E22A:        CMP #$04                  
CODE_13E22C:        BCS CODE_13E233                   
CODE_13E22E:        DEC $0780                 
CODE_13E231:        BRA CODE_13E1F5           

CODE_13E233:        INC $0780                 
CODE_13E236:        BRA CODE_13E1F5           

CODE_13E238:        LDA #$FF                  
CODE_13E23A:        STA $0781                 
CODE_13E23D:        LDX #$18                  
CODE_13E23F:        REP #$20                  
CODE_13E241:        LDA.l DATA_13E193,x             
CODE_13E245:        STA $0BE6                 
CODE_13E248:        LDA.l DATA_13E195,x             
CODE_13E24C:        STA $0BE8                 
CODE_13E24F:        LDA.l DATA_13E197,x             
CODE_13E253:        STA $0BEA                 
CODE_13E256:        SEP #$20                  
CODE_13E258:        BRL CODE_13DEDC           

CODE_13E25B:        REP #$20                  
CODE_13E25D:        STZ $0B00                 
CODE_13E260:        LDX #$00                  
CODE_13E262:        LDA.l DATA_14BFA0,x             
CODE_13E266:        STA $0B20,x               
CODE_13E269:        LDA.l DATA_14BFC0,x             
CODE_13E26D:        STA $0B80,x               
CODE_13E270:        LDA.l DATA_14BFE0,x             
CODE_13E274:        STA $0BE0,x               
CODE_13E277:        INX                       
CODE_13E278:        INX                       
CODE_13E279:        CPX #$20                  
CODE_13E27B:        BNE CODE_13E262           
CODE_13E27D:        SEP #$20                  
CODE_13E27F:        BRL CODE_13DEDC           

DATA_13E282:        db $FA,$7F,$F8,$7F,$D7,$7F,$D7,$7F
                    db $B5,$7F,$95,$7F,$53,$7F,$32,$7F
                    db $53,$7F,$95,$7F,$CF,$72,$AE,$6E
                    db $CF,$72,$F0,$76,$11,$7B,$FA,$7F
                    db $F9,$7F,$F7,$7F,$D7,$7F,$B5,$7F
                    db $B6,$7F,$95,$7F,$53,$7F,$32,$7F
                    db $53,$7F,$F0,$76,$CF,$72,$AE,$6E
                    db $CF,$72,$F0,$76,$FB,$7F,$FA,$7F
                    db $F8,$7F,$D7,$7F,$B5,$7F,$D6,$7F
                    db $B5,$7F,$74,$7F,$52,$7F,$52,$7F
                    db $11,$7B,$F0,$76,$CF,$72,$AE,$6E
                    db $CF,$72,$FB,$7F,$FA,$7F,$F8,$7F
                    db $D7,$7F,$B5,$7F,$D7,$7F,$B6,$7F
                    db $95,$7F,$53,$7F,$32,$7F,$11,$7F
                    db $11,$77,$F0,$72,$CF,$6E,$AE,$72
                    db $FB,$7F,$FA,$7F,$F8,$7F,$D7,$7F
                    db $B5,$7F,$D7,$7F,$B6,$7F,$95,$7F
                    db $53,$7F,$32,$7F,$32,$7F,$11,$7B
                    db $F0,$76,$CF,$72,$AE,$6E,$FB,$7F
                    db $FA,$7F,$F8,$7F,$D7,$7F,$B5,$7F
                    db $D7,$7F,$B6,$7F,$95,$7F,$53,$7F
                    db $32,$7F,$32,$7F,$11,$7B,$F0,$76
                    db $CF,$72,$AE,$6E,$FA,$7F,$FB,$7F
                    db $FA,$7F,$F8,$7F,$B5,$7F,$D7,$7F
                    db $B6,$7F,$95,$7F,$53,$7F,$32,$7F
                    db $32,$7F,$11,$7B,$F0,$76,$CF,$72
                    db $AE,$6E,$F8,$7F,$FA,$7F,$FB,$7F
                    db $FA,$7F,$B5,$7F,$B6,$7F,$D7,$7F
                    db $B6,$7F,$95,$7F,$53,$7F,$32,$7F
                    db $11,$7B,$F0,$76,$CF,$72,$AE,$6E
                    db $D7,$7F,$F8,$7F,$FA,$7F,$FB,$7F
                    db $B5,$7F,$95,$7F,$B6,$7F,$D7,$7F
                    db $B6,$7F,$95,$7F,$11,$7B,$32,$7F
                    db $11,$7B,$F0,$76,$CF,$72,$D7,$7F
                    db $D7,$7F,$F8,$7F,$FA,$7F,$B5,$7F
                    db $53,$7F,$95,$7F,$B6,$7F,$D7,$7F
                    db $B6,$7F,$F0,$76,$11,$7B,$32,$7F
                    db $11,$7B,$F0,$76,$D7,$7F,$D7,$7F
                    db $D7,$7F,$F8,$7F,$B5,$7F,$32,$7F
                    db $53,$7F,$95,$7F,$B6,$7F,$D7,$7F
                    db $CF,$72,$F0,$76,$11,$7B,$32,$7F
                    db $11,$7B,$F8,$7F,$D7,$7F,$D7,$7F
                    db $D7,$7F,$B5,$7F,$53,$7F,$32,$7F
                    db $53,$7F,$95,$7F,$B6,$7F,$AE,$6E
                    db $CF,$72,$F0,$76,$11,$7B,$32,$7F
   
DATA_13E3EA:        db $00,$00,$1E,$00,$3C,$00,$5A,$00
                    db $78,$00,$96,$00,$B4,$00,$D2,$00
                    db $F0,$00,$0E,$01,$2C,$01,$4A,$01      

CODE_13E402:        LDA $0784       
CODE_13E405:        BEQ CODE_13E448           
CODE_13E407:        INC $0785                 
CODE_13E40A:        LDA $0785                 
CODE_13E40D:        CMP #$06                  
CODE_13E40F:        BCC CODE_13E421           
CODE_13E411:        STZ $0785                 
CODE_13E414:        INC $0786                 
CODE_13E417:        LDA $0786                 
CODE_13E41A:        CMP #$0C                  
CODE_13E41C:        BNE CODE_13E421           
CODE_13E41E:        STZ $0786                 
CODE_13E421:        REP #$30                  
CODE_13E423:        LDA $0786                 
CODE_13E426:        AND #$00FF                
CODE_13E429:        ASL A                     
CODE_13E42A:        TAX                       
CODE_13E42B:        LDA.l DATA_13E3EA,x             
CODE_13E42F:        TAX                       
CODE_13E430:        LDY #$0000                
CODE_13E433:        LDA.l DATA_13E282,x             
CODE_13E437:        STA $0B22,y               
CODE_13E43A:        INX                       
CODE_13E43B:        INX                       
CODE_13E43C:        INY                       
CODE_13E43D:        INY                       
CODE_13E43E:        CPY #$001E                
CODE_13E441:        BNE CODE_13E433           
CODE_13E443:        SEP #$30                  
CODE_13E445:        BRL CODE_13DEDC           

CODE_13E448:        RTL                       

DATA_13E449:        db $04,$0F,$11,$11,$0F,$04,$05

DATA_13E450:        db $01,$00,$03,$04,$06,$04,$04

CODE_13E457:        LDX #$06                  
CODE_13E459:        LDA $0533                 
CODE_13E45C:        CMP.l DATA_13E449,x             
CODE_13E460:        BNE CODE_13E46B           
CODE_13E462:        LDA $0534                 
CODE_13E465:        CMP.l DATA_13E450,x             
CODE_13E469:        BEQ CODE_13E485           
CODE_13E46B:        DEX                       
CODE_13E46C:        BPL CODE_13E459           
CODE_13E46E:        LDA $0533                 
CODE_13E471:        CMP #$0F                  
CODE_13E473:        BNE CODE_13E484           
CODE_13E475:        LDA $0534                 
CODE_13E478:        CMP #$04                  
CODE_13E47A:        BNE CODE_13E484           
CODE_13E47C:        LDA $051B                 
CODE_13E47F:        BNE CODE_13E484           
CODE_13E481:        JSR CODE_13E49D           
CODE_13E484:        RTL                       

CODE_13E485:        JSR CODE_13E489           
CODE_13E488:        RTL                       

CODE_13E489:        TXA                       
CODE_13E48A:        ASL A                     
CODE_13E48B:        TAX                       
CODE_13E48C:        JMP (PNTR_13E48F,x)

PNTR_13E48F:        dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4B8
                    dw CODE_13E4B8
                    dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4CC
                    
CODE_13E49D:        REP #$20           
CODE_13E49F:        LDX #$00
CODE_13E4A1:        LDA.l DATA_14BF00,x             
CODE_13E4A5:        STA $0B20,x               
CODE_13E4A8:        LDA.l DATA_14BF20,x             
CODE_13E4AC:        STA $0BE0,x               
CODE_13E4AF:        INX                       
CODE_13E4B0:        INX                       
CODE_13E4B1:        CPX #$20                  
CODE_13E4B3:        BNE CODE_13E4A1           
CODE_13E4B5:        SEP #$20                  
CODE_13E4B7:        RTS                       

CODE_13E4B8:        REP #$20                  
CODE_13E4BA:        LDX #$00                  
CODE_13E4BC:        LDA.l DATA_14BF40,x             
CODE_13E4C0:        STA $0BE0,x               
CODE_13E4C3:        INX                       
CODE_13E4C4:        INX                       
CODE_13E4C5:        CPX #$20                  
CODE_13E4C7:        BNE CODE_13E4BC           
CODE_13E4C9:        SEP #$20                  
CODE_13E4CB:        RTS                       

CODE_13E4CC:        REP #$20                  
CODE_13E4CE:        LDX #$00                  
CODE_13E4D0:        LDA.l DATA_14BF60,x             
CODE_13E4D4:        STA $0BE0,x               
CODE_13E4D7:        INX                       
CODE_13E4D8:        INX                       
CODE_13E4D9:        CPX #$20                  
CODE_13E4DB:        BNE CODE_13E4D0           
CODE_13E4DD:        SEP #$20                  
CODE_13E4DF:        RTS                       

DATA_13E4E0:        db $7F,$77

DATA_13E4E2:        db $E7,$34

DATA_13E4E4:        db $E7,$34

DATA_13E4E6:        db $E7,$34,$97,$5E,$09,$25,$2E,$29
                    db $EF,$35,$AF,$49,$2B,$15,$75,$1D
                    db $F7,$32,$E7,$34,$97,$0A,$3C,$13
                    db $DF,$2F

CODE_13E500:        LDA $0791               
CODE_13E503:        BNE CODE_13E506           
CODE_13E505:        RTL                       

CODE_13E506:        PHB                       
CODE_13E507:        PHK                       
CODE_13E508:        PLB                       
CODE_13E509:        LDA $10                   
CODE_13E50B:        AND #$38                  
CODE_13E50D:        CMP #$20                  
CODE_13E50F:        BCC CODE_13E515           
CODE_13E511:        AND #$18                  
CODE_13E513:        EOR #$18                  
CODE_13E515:        TAY                       
CODE_13E516:        REP #$20                  
CODE_13E518:        LDA DATA_13E4E0,y               
CODE_13E51B:        STA $0B38                 
CODE_13E51E:        LDA DATA_13E4E2,y               
CODE_13E521:        STA $0B3A                 
CODE_13E524:        LDA DATA_13E4E4,y               
CODE_13E527:        STA $0B3C                 
CODE_13E52A:        LDA DATA_13E4E6,y               
CODE_13E52D:        STA $0B3E                 
CODE_13E530:        SEP #$20                  
CODE_13E532:        PLB                       
CODE_13E533:        BRL CODE_13DEDC           

DATA_13E536:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF                              ; /

CODE_13E700:        LDA #$80
CODE_13E702:        BEQ CODE_13E706           
CODE_13E704:        LDA #$0F                  
CODE_13E706:        STA $FE                   
CODE_13E708:        LDA $11                   
CODE_13E70A:        ASL A                     
CODE_13E70B:        TAX                       
CODE_13E70C:        LDA.w PNTR_11BDA6,x               
CODE_13E70F:        STA $F0                   
CODE_13E711:        LDA.w PNTR_11BDA6+1,x               
CODE_13E714:        STA $F1                   
CODE_13E716:        LDA #$11                  
CODE_13E718:        STA $F2                   
CODE_13E71A:        STZ $0154                 
CODE_13E71D:        LDA $0154                 
CODE_13E720:        BPL CODE_13E71D           
CODE_13E722:        JSL CODE_14FA99           
CODE_13E726:        CLI                       
CODE_13E727:        RTS                       

CODE_13E728:        LDA #$B0                  
CODE_13E72A:        BRA CODE_13E72E           

CODE_13E72C:        LDA #$30                  
CODE_13E72E:        STA $FF                   
CODE_13E730:        RTS                       

CODE_13E731:        JSR CODE_13E700           
CODE_13E734:        JSL CODE_14F953           
CODE_13E738:        LDA #$40                  
CODE_13E73A:        STA $0100                 
CODE_13E73D:        JSR CODE_13E728           
CODE_13E740:        JSR CODE_13E708           
CODE_13E743:        LDA #$01                  
CODE_13E745:        STA $11                   
CODE_13E747:        JSR CODE_13E708           
CODE_13E74A:        JSL CODE_13DE0D           
CODE_13E74E:        LDA #$10                  
CODE_13E750:        STA $18                   
CODE_13E752:        LDA #$04                  
CODE_13E754:        STA $14                   
CODE_13E756:        STZ $FE                   
CODE_13E758:        STZ $17                   
CODE_13E75A:        STZ $15                   
CODE_13E75C:        LDA #$20                  
CODE_13E75E:        STA $0239                 
CODE_13E761:        LDA #$70                  
CODE_13E763:        STA $023A                 
CODE_13E766:        LDA #$01                  
CODE_13E768:        JSL CODE_14FAE8           
CODE_13E76C:        LDA #$0D                  
CODE_13E76E:        STA $16                   
CODE_13E770:        STZ $15                   
CODE_13E772:        JSL CODE_138CCE           
CODE_13E776:        LDA #$01                  
CODE_13E778:        STA $025E                 
CODE_13E77B:        LDY $15                   
CODE_13E77D:        LDA.w DATA_11C1A3,y               
CODE_13E780:        STA $0210                 
CODE_13E783:        DEC $18                   
CODE_13E785:        BPL CODE_13E78D           
CODE_13E787:        LDA #$10                  
CODE_13E789:        STA $18                   
CODE_13E78B:        INC $17                   
CODE_13E78D:        JSR CODE_13E8A4           
CODE_13E790:        LDA $E6                   
CODE_13E792:        CMP #$05                  
CODE_13E794:        BEQ CODE_13E79F           
CODE_13E796:        JSL CODE_129539           
CODE_13E79A:        JSR CODE_13E708           
CODE_13E79D:        BRA CODE_13E7A2           

CODE_13E79F:        JSR CODE_13E704           
CODE_13E7A2:        DEC $0210                 
CODE_13E7A5:        BPL CODE_13E783           
CODE_13E7A7:        INC $15                   
CODE_13E7A9:        DEC $16                   
CODE_13E7AB:        BPL CODE_13E77B           
CODE_13E7AD:        DEC $14                   
CODE_13E7AF:        BMI CODE_13E7B4           
CODE_13E7B1:        JMP CODE_13E76C           

CODE_13E7B4:        DEC $E6                   
CODE_13E7B6:        LDA #$03                  
CODE_13E7B8:        STA $11                   
CODE_13E7BA:        JSL CODE_14F9F0           ; Clear all OAM.
CODE_13E7BE:        JSR CODE_13E708           
CODE_13E7C1:        LDA #$04                  
CODE_13E7C3:        STA $11                   
CODE_13E7C5:        JSR CODE_13E708           
CODE_13E7C8:        LDA #$05                  
CODE_13E7CA:        STA $11                   
CODE_13E7CC:        JSR CODE_13E708           
CODE_13E7CF:        LDA #$06                  
CODE_13E7D1:        STA $11                   
CODE_13E7D3:        JSR CODE_13E708           
CODE_13E7D6:        LDA #$07                  
CODE_13E7D8:        STA $11                   
CODE_13E7DA:        JSR CODE_13E708           
CODE_13E7DD:        LDA #$08                  
CODE_13E7DF:        STA $11                   
CODE_13E7E1:        REP #$20                  
CODE_13E7E3:        LDA #$4480                
CODE_13E7E6:        STA $0C42                 
CODE_13E7E9:        SEP #$20                  
CODE_13E7EB:        LDA #$01                  
CODE_13E7ED:        STA $02A9                 
CODE_13E7F0:        JSR CODE_13E708           
CODE_13E7F3:        STZ $15                   
CODE_13E7F5:        LDA #$06                  
CODE_13E7F7:        STA $16                   
CODE_13E7F9:        STZ $14                   
CODE_13E7FB:        LDA #$02                  
CODE_13E7FD:        STA $025E                 
CODE_13E800:        JSL CODE_138CCE           
CODE_13E804:        JSR CODE_13E704           
CODE_13E807:        LDY $15                   
CODE_13E809:        LDA.w DATA_11C1C6,y               
CODE_13E80C:        STA $06C3                 
CODE_13E80F:        CLC                       
CODE_13E810:        ADC #$02                  
CODE_13E812:        STA $06C4                 
CODE_13E815:        LDA.w DATA_11C1B1,y               
CODE_13E818:        STA $10                   
CODE_13E81A:        JSR CODE_13E708           
CODE_13E81D:        DEC $10                   
CODE_13E81F:        BPL CODE_13E81A           
CODE_13E821:        INC $15                   
CODE_13E823:        DEC $16                   
CODE_13E825:        BPL CODE_13E807           
CODE_13E827:        LDA #$10                  
CODE_13E829:        STA $18                   
CODE_13E82B:        LDA #$01                  
CODE_13E82D:        STA $14                   
CODE_13E82F:        STZ $15                   
CODE_13E831:        LDA #$0D                  
CODE_13E833:        STA $16                   
CODE_13E835:        LDA #$01                  
CODE_13E837:        STA $025E                 
CODE_13E83A:        JSL CODE_138CCE           
CODE_13E83E:        JSR CODE_13E704           
CODE_13E841:        LDY $15                   
CODE_13E843:        LDA.w DATA_11C1A3,y               
CODE_13E846:        STA $10                   
CODE_13E848:        JSR CODE_13E708           
CODE_13E84B:        DEC $10                   
CODE_13E84D:        BPL CODE_13E848           
CODE_13E84F:        INC $15                   
CODE_13E851:        DEC $16                   
CODE_13E853:        BPL CODE_13E841           
CODE_13E855:        DEC $14                   
CODE_13E857:        BMI CODE_13E85C           
CODE_13E859:        JMP CODE_13E82F           

CODE_13E85C:        JSR CODE_13E94B           
CODE_13E85F:        JSR CODE_13E708           
CODE_13E862:        STZ $079F                 
CODE_13E865:        STZ $07A0                 
CODE_13E868:        LDA #$B0                  
CODE_13E86A:        STA $07A1                 
CODE_13E86D:        STZ $15                   
CODE_13E86F:        LDA #$0D                  
CODE_13E871:        STA $16                   
CODE_13E873:        JSL CODE_138CCE           
CODE_13E877:        JSR CODE_13E704           
CODE_13E87A:        LDY $15                   
CODE_13E87C:        LDA.w DATA_11C1B8,y               
CODE_13E87F:        STA $06C3                 
CODE_13E882:        CLC                       
CODE_13E883:        ADC #$02                  
CODE_13E885:        STA $06C4                 
CODE_13E888:        LDA.w DATA_11C1A3,y               
CODE_13E88B:        STA $10                   
CODE_13E88D:        JSR CODE_13E907           
CODE_13E890:        JSR CODE_13E708           
CODE_13E893:        JSL CODE_14DB62           
CODE_13E897:        DEC $10                   
CODE_13E899:        BPL CODE_13E88D           
CODE_13E89B:        INC $15                   
CODE_13E89D:        DEC $16                   
CODE_13E89F:        BPL CODE_13E87A           
CODE_13E8A1:        JMP CODE_13E86D           

CODE_13E8A4:        LDY #$1F                  
CODE_13E8A6:        LDA $17                   
CODE_13E8A8:        AND #$01                  
CODE_13E8AA:        BNE CODE_13E8B7           
CODE_13E8AC:        LDA.w DATA_11C133,y               
CODE_13E8AF:        STA $0800,y               
CODE_13E8B2:        DEY                       
CODE_13E8B3:        BPL CODE_13E8AC           
CODE_13E8B5:        BRA CODE_13E8C0           

CODE_13E8B7:        LDA.w DATA_11C153,y               
CODE_13E8BA:        STA $0800,y               
CODE_13E8BD:        DEY                       
CODE_13E8BE:        BPL CODE_13E8B7           
CODE_13E8C0:        LDY #$17                  
CODE_13E8C2:        LDA $17                   
CODE_13E8C4:        AND #$01                  
CODE_13E8C6:        BNE CODE_13E8D3           
CODE_13E8C8:        LDA.w DATA_11C173,y               
CODE_13E8CB:        STA $0820,y               
CODE_13E8CE:        DEY                       
CODE_13E8CF:        BPL CODE_13E8C8           
CODE_13E8D1:        BRA CODE_13E8DC           

CODE_13E8D3:        LDA.w DATA_11C18B,y               
CODE_13E8D6:        STA $0820,y               
CODE_13E8D9:        DEY                       
CODE_13E8DA:        BPL CODE_13E8D3           
CODE_13E8DC:        STZ $0A20                 
CODE_13E8DF:        STZ $0A21                 
CODE_13E8E2:        STZ $0A22                 
CODE_13E8E5:        STZ $0A23                 
CODE_13E8E8:        STZ $0A24                 
CODE_13E8EB:        STZ $0A25                 
CODE_13E8EE:        STZ $0A26                 
CODE_13E8F1:        STZ $0A27                 
CODE_13E8F4:        STZ $0A28                 
CODE_13E8F7:        STZ $0A29                 
CODE_13E8FA:        STZ $0A2A                 
CODE_13E8FD:        STZ $0A2B                 
CODE_13E900:        STZ $0A2C                 
CODE_13E903:        STZ $0A2D                 
CODE_13E906:        RTS                       

CODE_13E907:        INC $2E                   
CODE_13E909:        LDA $2E                   
CODE_13E90B:        AND #$01                  
CODE_13E90D:        BNE CODE_13E915           
CODE_13E90F:        DEC $39                   
CODE_13E911:        DEC $3A                   
CODE_13E913:        DEC $3B                   
CODE_13E915:        LDA $29                   
CODE_13E917:        JSL CODE_118776           

PNTR_13E91B:        dw CODE_13E982
                    dw CODE_13E9BD
                    dw CODE_13E9CC
                    dw CODE_13E9FF
                    dw CODE_13ED40
                    dw CODE_13ED94
                    dw CODE_13EE41
                    dw CODE_13EE91
                    dw CODE_13EEBC
                    dw CODE_13EED7
                    dw CODE_13EEED
      
CODE_13E931:        RTS                       

CODE_13E932:        PHX                       
CODE_13E933:        LDX $2B                   
CODE_13E935:        LDA.l DATA_14C5BD,x             
CODE_13E939:        STA $2F                   
CODE_13E93B:        LDA.l DATA_14C5A0,x             
CODE_13E93F:        STA $30                   
CODE_13E941:        LDA.l DATA_14C583,x             
CODE_13E945:        STA $31                   
CODE_13E947:        INC $2B                   
CODE_13E949:        PLX                       
CODE_13E94A:        RTS                       

CODE_13E94B:        LDX #$0F                  
CODE_13E94D:        LDA.l DATA_14C564,x             
CODE_13E951:        STA $0840,x               
CODE_13E954:        DEX                       
CODE_13E955:        BPL CODE_13E94D           
CODE_13E957:        LDA #$00                  
CODE_13E959:        STA $0A30                 
CODE_13E95C:        STA $0A31                 
CODE_13E95F:        STA $0A32                 
CODE_13E962:        STA $0A33                 
CODE_13E965:        LDA #$02                  
CODE_13E967:        STA $28                   
CODE_13E969:        STZ $29                   
CODE_13E96B:        STZ $2A                   
CODE_13E96D:        LDY #$40                  
CODE_13E96F:        LDA #$27                  
CODE_13E971:        STA $0050,y               
CODE_13E974:        DEY                       
CODE_13E975:        BPL CODE_13E96F           
CODE_13E977:        RTS                       

DATA_13E978:        db $E0,$58,$40,$6D,$A0,$7D,$80,$7E
                    db $FF,$7F

CODE_13E982:        DEC $28
CODE_13E984:        BPL CODE_13E9BC           
CODE_13E986:        LDA #$02                  
CODE_13E988:        STA $28                   
CODE_13E98A:        INC $2A                   
CODE_13E98C:        LDA $2A                   
CODE_13E98E:        ASL A                     
CODE_13E98F:        TAX                       
CODE_13E990:        REP #$20                  
CODE_13E992:        LDA.l DATA_13E978,x             
CODE_13E996:        STA $0C42                 
CODE_13E999:        SEP #$20                  
CODE_13E99B:        LDA #$01                  
CODE_13E99D:        STA $02A9                 
CODE_13E9A0:        LDA $2A                   
CODE_13E9A2:        CMP #$04                  
CODE_13E9A4:        BNE CODE_13E9BC           
CODE_13E9A6:        INC $29                   
CODE_13E9A8:        LDA #$80                  
CODE_13E9AA:        STA $28                   
CODE_13E9AC:        LDA #$60                  
CODE_13E9AE:        STA $1F                   
CODE_13E9B0:        LDA #$01                  
CODE_13E9B2:        STA $35                   
CODE_13E9B4:        STA $38                   
CODE_13E9B6:        LDA #$00                  
CODE_13E9B8:        STA $36                   
CODE_13E9BA:        STA $37                   
CODE_13E9BC:        RTS                       

CODE_13E9BD:        DEC $28                   
CODE_13E9BF:        BPL CODE_13E9CB           
CODE_13E9C1:        INC $29                   
CODE_13E9C3:        STZ $2B                   
CODE_13E9C5:        STZ $3F                   
CODE_13E9C7:        LDA #$01                  
CODE_13E9C9:        STA $3A                   
CODE_13E9CB:        RTS                       

CODE_13E9CC:        LDA $2E                   
CODE_13E9CE:        AND #$01                  
CODE_13E9D0:        BEQ CODE_13E9FF           
CODE_13E9D2:        LDA $1F                   
CODE_13E9D4:        SEC                       
CODE_13E9D5:        SBC #$01                  
CODE_13E9D7:        STA $1F                   
CODE_13E9D9:        STA $0841                 
CODE_13E9DC:        STA $0845                 
CODE_13E9DF:        STA $0849                 
CODE_13E9E2:        STA $084D                 
CODE_13E9E5:        LDA $1F                   
CODE_13E9E7:        CMP #$10                  
CODE_13E9E9:        BNE CODE_13E9FF           
CODE_13E9EB:        LDA #$F0                  
CODE_13E9ED:        STA $0841                 
CODE_13E9F0:        STA $0845                 
CODE_13E9F3:        STA $0849                 
CODE_13E9F6:        STA $084D                 
CODE_13E9F9:        INC $29                   
CODE_13E9FB:        STZ $38                   
CODE_13E9FD:        STZ $35                   
CODE_13E9FF:        LDA $35                   
CODE_13EA01:        BNE CODE_13EA6D           
CODE_13EA03:        LDA $39                   
CODE_13EA05:        BNE CODE_13EA6D           
CODE_13EA07:        JSR CODE_13E932           
CODE_13EA0A:        LDY #$2F                  
CODE_13EA0C:        LDA [$2F],y               
CODE_13EA0E:        STA $0840,y               
CODE_13EA11:        LDA #$24                  
CODE_13EA13:        STA $0900,y               
CODE_13EA16:        DEY                       
CODE_13EA17:        LDA [$2F],y               
CODE_13EA19:        STA $0840,y               
CODE_13EA1C:        LDA #$E9                  
CODE_13EA1E:        STA $0900,y               
CODE_13EA21:        DEY                       
CODE_13EA22:        LDA [$2F],y               
CODE_13EA24:        STA $0840,y               
CODE_13EA27:        LDA #$F0                  
CODE_13EA29:        STA $0900,y               
CODE_13EA2C:        DEY                       
CODE_13EA2D:        LDA [$2F],y               
CODE_13EA2F:        STA $0840,y               
CODE_13EA32:        DEY                       
CODE_13EA33:        BPL CODE_13EA0C           
CODE_13EA35:        LDA #$02                  
CODE_13EA37:        STA $0A30                 
CODE_13EA3A:        STA $0A31                 
CODE_13EA3D:        STA $0A32                 
CODE_13EA40:        STA $0A33                 
CODE_13EA43:        LDA #$00                  
CODE_13EA45:        STA $0A34                 
CODE_13EA48:        STA $0A35                 
CODE_13EA4B:        STA $0A36                 
CODE_13EA4E:        STA $0A37                 
CODE_13EA51:        STA $0A38                 
CODE_13EA54:        STA $0A39                 
CODE_13EA57:        STA $0A3A                 
CODE_13EA5A:        STA $0A3B                 
CODE_13EA5D:        LDA #$01                  
CODE_13EA5F:        STA $35                   
CODE_13EA61:        LDA #$C0                  
CODE_13EA63:        STA $1F                   
CODE_13EA65:        LDA #$D0                  
CODE_13EA67:        STA $20                   
CODE_13EA69:        LDA #$E8                  
CODE_13EA6B:        STA $21                   
CODE_13EA6D:        LDA $36                   
CODE_13EA6F:        BNE CODE_13EABA           
CODE_13EA71:        LDA $3A                   
CODE_13EA73:        BNE CODE_13EABA           
CODE_13EA75:        JSR CODE_13E932           
CODE_13EA78:        LDY #$2F                  
CODE_13EA7A:        LDA [$2F],y               
CODE_13EA7C:        STA $0880,y               
CODE_13EA7F:        DEY                       
CODE_13EA80:        BPL CODE_13EA7A           
CODE_13EA82:        LDA #$02                  
CODE_13EA84:        STA $0A40                 
CODE_13EA87:        STA $0A41                 
CODE_13EA8A:        STA $0A42                 
CODE_13EA8D:        STA $0A43                 
CODE_13EA90:        LDA #$00                  
CODE_13EA92:        STA $0A44                 
CODE_13EA95:        STA $0A45                 
CODE_13EA98:        STA $0A46                 
CODE_13EA9B:        STA $0A47                 
CODE_13EA9E:        STA $0A48                 
CODE_13EAA1:        STA $0A49                 
CODE_13EAA4:        STA $0A4A                 
CODE_13EAA7:        STA $0A4B                 
CODE_13EAAA:        LDA #$01                  
CODE_13EAAC:        STA $36                   
CODE_13EAAE:        LDA #$C0                  
CODE_13EAB0:        STA $22                   
CODE_13EAB2:        LDA #$D0                  
CODE_13EAB4:        STA $23                   
CODE_13EAB6:        LDA #$E8                  
CODE_13EAB8:        STA $24                   
CODE_13EABA:        LDA $37                   
CODE_13EABC:        BNE CODE_13EB0F           
CODE_13EABE:        LDA $3B                   
CODE_13EAC0:        BNE CODE_13EB0F           
CODE_13EAC2:        JSR CODE_13E932           
CODE_13EAC5:        LDY #$2F                  
CODE_13EAC7:        LDA [$2F],y               
CODE_13EAC9:        STA $08C0,y               
CODE_13EACC:        DEY                       
CODE_13EACD:        BPL CODE_13EAC7           
CODE_13EACF:        LDA #$02                  
CODE_13EAD1:        STA $0A50                 
CODE_13EAD4:        STA $0A51                 
CODE_13EAD7:        STA $0A52                 
CODE_13EADA:        STA $0A53                 
CODE_13EADD:        LDA #$00                  
CODE_13EADF:        STA $0A54                 
CODE_13EAE2:        STA $0A55                 
CODE_13EAE5:        STA $0A56                 
CODE_13EAE8:        STA $0A57                 
CODE_13EAEB:        STA $0A58                 
CODE_13EAEE:        STA $0A59                 
CODE_13EAF1:        STA $0A5A                 
CODE_13EAF4:        STA $0A5B                 
CODE_13EAF7:        LDA #$01                  
CODE_13EAF9:        STA $37                   
CODE_13EAFB:        LDA #$C0                  
CODE_13EAFD:        STA $25                   
CODE_13EAFF:        LDA #$D0                  
CODE_13EB01:        STA $26                   
CODE_13EB03:        LDY #$E8                  
CODE_13EB05:        LDA $2B                   
CODE_13EB07:        CMP #$1D                  
CODE_13EB09:        BNE CODE_13EB0D           
CODE_13EB0B:        LDY #$E0                  
CODE_13EB0D:        STY $27                   
CODE_13EB0F:        LDA $38                   
CODE_13EB11:        BEQ CODE_13EB16           
CODE_13EB13:        JMP CODE_13EBC8           

CODE_13EB16:        LDA $2E                   
CODE_13EB18:        AND #$01                  
CODE_13EB1A:        BNE CODE_13EB1F           
CODE_13EB1C:        JMP CODE_13EBC8           

CODE_13EB1F:        LDA $0901                 
CODE_13EB22:        CMP #$F0                  
CODE_13EB24:        BNE CODE_13EB2D           
CODE_13EB26:        LDA $0841                 
CODE_13EB29:        CMP #$F0                  
CODE_13EB2B:        BEQ CODE_13EB4A           
CODE_13EB2D:        LDA $1F                   
CODE_13EB2F:        SEC                       
CODE_13EB30:        SBC #$01                  
CODE_13EB32:        BNE CODE_13EB36           
CODE_13EB34:        LDA #$F0                  
CODE_13EB36:        STA $1F                   
CODE_13EB38:        STA $0841                 
CODE_13EB3B:        STA $0845                 
CODE_13EB3E:        STA $0901                 
CODE_13EB41:        STA $0905                 
CODE_13EB44:        STA $0909                 
CODE_13EB47:        STA $090D                 
CODE_13EB4A:        LDA $0901                 
CODE_13EB4D:        CMP #$F0                  
CODE_13EB4F:        BNE CODE_13EB58           
CODE_13EB51:        LDA $0849                 
CODE_13EB54:        CMP #$F0                  
CODE_13EB56:        BEQ CODE_13EB84           
CODE_13EB58:        DEC $20                   
CODE_13EB5A:        CMP #$F9                  
CODE_13EB5C:        BNE CODE_13EB64           
CODE_13EB5E:        LDA $20                   
CODE_13EB60:        CMP #$C0                  
CODE_13EB62:        BNE CODE_13EB84           
CODE_13EB64:        LDA $20                   
CODE_13EB66:        BNE CODE_13EB72           
CODE_13EB68:        LDA $2B                   
CODE_13EB6A:        CMP #$FF                  
CODE_13EB6C:        BNE CODE_13EB70           
CODE_13EB6E:        INC $29                   
CODE_13EB70:        LDA #$F0                  
CODE_13EB72:        STA $0849                 
CODE_13EB75:        STA $084D                 
CODE_13EB78:        STA $0911                 
CODE_13EB7B:        STA $0915                 
CODE_13EB7E:        STA $0919                 
CODE_13EB81:        STA $091D                 
CODE_13EB84:        LDA $0851                 
CODE_13EB87:        CMP #$F0                  
CODE_13EB89:        BEQ CODE_13EBC8           
CODE_13EB8B:        DEC $21                   
CODE_13EB8D:        CMP #$F9                  
CODE_13EB8F:        BNE CODE_13EB9E           
CODE_13EB91:        LDA $21                   
CODE_13EB93:        CMP #$C0                  
CODE_13EB95:        BNE CODE_13EBC8           
CODE_13EB97:        LDY $2B                   
CODE_13EB99:        LDA $0050,y               
CODE_13EB9C:        STA $3A                   
CODE_13EB9E:        LDA $21                   
CODE_13EBA0:        BNE CODE_13EBB0           
CODE_13EBA2:        STZ $35                   
CODE_13EBA4:        LDA $2B                   
CODE_13EBA6:        CMP #$FF                  
CODE_13EBA8:        BNE CODE_13EBAE           
CODE_13EBAA:        LDA #$FF                  
CODE_13EBAC:        STA $35                   
CODE_13EBAE:        LDA #$F0                  
CODE_13EBB0:        STA $0851                 
CODE_13EBB3:        STA $0855                 
CODE_13EBB6:        STA $0859                 
CODE_13EBB9:        STA $085D                 
CODE_13EBBC:        STA $0861                 
CODE_13EBBF:        STA $0865                 
CODE_13EBC2:        STA $0869                 
CODE_13EBC5:        STA $086D                 
CODE_13EBC8:        LDA $2E                   
CODE_13EBCA:        AND #$01                  
CODE_13EBCC:        BNE CODE_13EBD1           
CODE_13EBCE:        JMP CODE_13EC4E           

CODE_13EBD1:        LDA $0881                 
CODE_13EBD4:        CMP #$F0                  
CODE_13EBD6:        BEQ CODE_13EBE9           
CODE_13EBD8:        LDA $22                   
CODE_13EBDA:        SEC                       
CODE_13EBDB:        SBC #$01                  
CODE_13EBDD:        BNE CODE_13EBE1           
CODE_13EBDF:        LDA #$F0                  
CODE_13EBE1:        STA $22                   
CODE_13EBE3:        STA $0881                 
CODE_13EBE6:        STA $0885                 
CODE_13EBE9:        LDA $0889                 
CODE_13EBEC:        CMP #$F0                  
CODE_13EBEE:        BEQ CODE_13EC08           
CODE_13EBF0:        DEC $23                   
CODE_13EBF2:        CMP #$F9                  
CODE_13EBF4:        BNE CODE_13EBFC           
CODE_13EBF6:        LDA $23                   
CODE_13EBF8:        CMP #$C0                  
CODE_13EBFA:        BNE CODE_13EC08           
CODE_13EBFC:        LDA $23                   
CODE_13EBFE:        BNE CODE_13EC02           
CODE_13EC00:        LDA #$F0                  
CODE_13EC02:        STA $0889                 
CODE_13EC05:        STA $088D                 
CODE_13EC08:        LDA $0891                 
CODE_13EC0B:        CMP #$F0                  
CODE_13EC0D:        BEQ CODE_13EC4E           
CODE_13EC0F:        DEC $24                   
CODE_13EC11:        CMP #$F9                  
CODE_13EC13:        BNE CODE_13EC22           
CODE_13EC15:        LDA $24                   
CODE_13EC17:        CMP #$C0                  
CODE_13EC19:        BNE CODE_13EC4E           
CODE_13EC1B:        LDY $2B                   
CODE_13EC1D:        LDA $0050,y               
CODE_13EC20:        STA $3B                   
CODE_13EC22:        LDA $24                   
CODE_13EC24:        BNE CODE_13EC36           
CODE_13EC26:        LDA #$00                  
CODE_13EC28:        STA $36                   
CODE_13EC2A:        LDA $2B                   
CODE_13EC2C:        CMP #$FF                  
CODE_13EC2E:        BNE CODE_13EC34           
CODE_13EC30:        LDA #$FF                  
CODE_13EC32:        STA $36                   
CODE_13EC34:        LDA #$F0                  
CODE_13EC36:        STA $0891                 
CODE_13EC39:        STA $0895                 
CODE_13EC3C:        STA $0899                 
CODE_13EC3F:        STA $089D                 
CODE_13EC42:        STA $08A1                 
CODE_13EC45:        STA $08A5                 
CODE_13EC48:        STA $08A9                 
CODE_13EC4B:        STA $08AD                 
CODE_13EC4E:        LDA $2E                   
CODE_13EC50:        AND #$01                  
CODE_13EC52:        BNE CODE_13EC57           
CODE_13EC54:        JMP CODE_13ED3F           

CODE_13EC57:        LDA $08C1                 
CODE_13EC5A:        CMP #$F0                  
CODE_13EC5C:        BEQ CODE_13EC6F           
CODE_13EC5E:        LDA $25                   
CODE_13EC60:        SEC                       
CODE_13EC61:        SBC #$01                  
CODE_13EC63:        BNE CODE_13EC67           
CODE_13EC65:        LDA #$F0                  
CODE_13EC67:        STA $25                   
CODE_13EC69:        STA $08C1                 
CODE_13EC6C:        STA $08C5                 
CODE_13EC6F:        LDA $08C9                 
CODE_13EC72:        CMP #$F0                  
CODE_13EC74:        BEQ CODE_13EC8E           
CODE_13EC76:        DEC $26                   
CODE_13EC78:        CMP #$F9                  
CODE_13EC7A:        BNE CODE_13EC82           
CODE_13EC7C:        LDA $26                   
CODE_13EC7E:        CMP #$C0                  
CODE_13EC80:        BNE CODE_13EC8E           
CODE_13EC82:        LDA $26                   
CODE_13EC84:        BNE CODE_13EC88           
CODE_13EC86:        LDA #$F0                  
CODE_13EC88:        STA $08C9                 
CODE_13EC8B:        STA $08CD                 
CODE_13EC8E:        LDA $08D1                 
CODE_13EC91:        CMP #$F0                  
CODE_13EC93:        BEQ CODE_13EC54           
CODE_13EC95:        DEC $27                   
CODE_13EC97:        CMP #$F9                  
CODE_13EC99:        BNE CODE_13ECAB           
CODE_13EC9B:        LDA $27                   
CODE_13EC9D:        CMP #$C0                  
CODE_13EC9F:        BEQ CODE_13ECA4           
CODE_13ECA1:        BRL CODE_13ED3F           

CODE_13ECA4:        LDY $2B                   
CODE_13ECA6:        LDA $0050,y               
CODE_13ECA9:        STA $39                   
CODE_13ECAB:        LDA $2B                   
CODE_13ECAD:        CMP #$1D                  
CODE_13ECAF:        BNE CODE_13ECC3           
CODE_13ECB1:        LDA #$02                  
CODE_13ECB3:        STA $0A54                 
CODE_13ECB6:        STA $0A55                 
CODE_13ECB9:        LDA $27                   
CODE_13ECBB:        CMP #$A8                  
CODE_13ECBD:        BNE CODE_13ECC3           
CODE_13ECBF:        LDA #$01                  
CODE_13ECC1:        STA $3F                   
CODE_13ECC3:        LDA $27                   
CODE_13ECC5:        BNE CODE_13ECD5           
CODE_13ECC7:        STZ $37                   
CODE_13ECC9:        LDA $2B                   
CODE_13ECCB:        CMP #$FF                  
CODE_13ECCD:        BNE CODE_13ECD3           
CODE_13ECCF:        LDA #$FF                  
CODE_13ECD1:        STA $37                   
CODE_13ECD3:        LDA #$F0                  
CODE_13ECD5:        STA $08D1                 
CODE_13ECD8:        STA $08D5                 
CODE_13ECDB:        STA $08D9                 
CODE_13ECDE:        STA $08DD                 
CODE_13ECE1:        STA $08E1                 
CODE_13ECE4:        STA $08E5                 
CODE_13ECE7:        STA $08E9                 
CODE_13ECEA:        STA $08ED                 
CODE_13ECED:        LDA $3F                   
CODE_13ECEF:        BEQ CODE_13ED3F           
CODE_13ECF1:        LDX #$1F                  
CODE_13ECF3:        LDA.l DATA_14CB4A,x             
CODE_13ECF7:        STA $0900,x               
CODE_13ECFA:        DEX                       
CODE_13ECFB:        BPL CODE_13ECF3           
CODE_13ECFD:        LDA #$E9                  
CODE_13ECFF:        STA $0842                 
CODE_13ED02:        STA $0846                 
CODE_13ED05:        STA $084A                 
CODE_13ED08:        STA $084E                 
CODE_13ED0B:        LDA #$24                  
CODE_13ED0D:        STA $0843                 
CODE_13ED10:        STA $0847                 
CODE_13ED13:        STA $084B                 
CODE_13ED16:        STA $084F                 
CODE_13ED19:        LDA #$00                  
CODE_13ED1B:        STA $0A60                 
CODE_13ED1E:        STA $0A61                 
CODE_13ED21:        STA $0A62                 
CODE_13ED24:        STA $0A63                 
CODE_13ED27:        STA $0A64                 
CODE_13ED2A:        STA $0A65                 
CODE_13ED2D:        STA $0A66                 
CODE_13ED30:        STA $0A67                 
CODE_13ED33:        LDA #$C0                  
CODE_13ED35:        STA $1F                   
CODE_13ED37:        STA $20                   
CODE_13ED39:        STZ $3F                   
CODE_13ED3B:        LDA #$FF                  
CODE_13ED3D:        STA $2B                   
CODE_13ED3F:        RTS                       

CODE_13ED40:        LDX #$43                  
CODE_13ED42:        LDA.l DATA_14CB6A,x             
CODE_13ED46:        STA $0840,x               
CODE_13ED49:        DEX                       
CODE_13ED4A:        BPL CODE_13ED42           
CODE_13ED4C:        LDA #$02                  
CODE_13ED4E:        STA $0A30                 
CODE_13ED51:        STA $0A31                 
CODE_13ED54:        STA $0A32                 
CODE_13ED57:        STA $0A33                 
CODE_13ED5A:        STA $0A34                 
CODE_13ED5D:        STA $0A35                 
CODE_13ED60:        STA $0A36                 
CODE_13ED63:        STA $0A37                 
CODE_13ED66:        STA $0A38                 
CODE_13ED69:        STZ $0A39                 
CODE_13ED6C:        STZ $0A3A                 
CODE_13ED6F:        STZ $0A3B                 
CODE_13ED72:        STZ $0A3C                 
CODE_13ED75:        STZ $0A3D                 
CODE_13ED78:        STZ $0A3E                 
CODE_13ED7B:        STZ $0A3F                 
CODE_13ED7E:        STZ $0A40                 
CODE_13ED81:        INC $29                   
CODE_13ED83:        LDA #$D0                  
CODE_13ED85:        STA $1F                   
CODE_13ED87:        LDA #$E0                  
CODE_13ED89:        STA $20                   
CODE_13ED8B:        LDA #$F0                  
CODE_13ED8D:        STA $21                   
CODE_13ED8F:        LDA #$08                  
CODE_13ED91:        STA $22                   
CODE_13ED93:        RTS                       

CODE_13ED94:        LDA $2E                   
CODE_13ED96:        AND #$01                  
CODE_13ED98:        BNE CODE_13ED9D           
CODE_13ED9A:        JMP CODE_13EE38           

CODE_13ED9D:        LDA $0841                 
CODE_13EDA0:        CMP #$F0                  
CODE_13EDA2:        BEQ CODE_13EDBD           
CODE_13EDA4:        LDA $1F                   
CODE_13EDA6:        SEC                       
CODE_13EDA7:        SBC #$01                  
CODE_13EDA9:        CMP #$40                  
CODE_13EDAB:        BNE CODE_13EDB2           
CODE_13EDAD:        INC $29                   
CODE_13EDAF:        JMP CODE_13EE38           

CODE_13EDB2:        STA $1F                   
CODE_13EDB4:        STA $0841                 
CODE_13EDB7:        STA $0845                 
CODE_13EDBA:        STA $0849                 
CODE_13EDBD:        LDA $084D                 
CODE_13EDC0:        CMP #$F0                  
CODE_13EDC2:        BEQ CODE_13EDE1           
CODE_13EDC4:        DEC $20                   
CODE_13EDC6:        CMP #$F9                  
CODE_13EDC8:        BNE CODE_13EDD0           
CODE_13EDCA:        LDA $20                   
CODE_13EDCC:        CMP #$C0                  
CODE_13EDCE:        BNE CODE_13EDE1           
CODE_13EDD0:        LDA $20                   
CODE_13EDD2:        CMP #$10                  
CODE_13EDD4:        BNE CODE_13EDD8           
CODE_13EDD6:        LDA #$F0                  
CODE_13EDD8:        STA $084D                 
CODE_13EDDB:        STA $0851                 
CODE_13EDDE:        STA $0855                 
CODE_13EDE1:        LDA $0859                 
CODE_13EDE4:        CMP #$F0                  
CODE_13EDE6:        BEQ CODE_13EE05           
CODE_13EDE8:        DEC $21                   
CODE_13EDEA:        CMP #$F9                  
CODE_13EDEC:        BNE CODE_13EDF4           
CODE_13EDEE:        LDA $21                   
CODE_13EDF0:        CMP #$C0                  
CODE_13EDF2:        BNE CODE_13EE05           
CODE_13EDF4:        LDA $21                   
CODE_13EDF6:        CMP #$10                  
CODE_13EDF8:        BNE CODE_13EDFC           
CODE_13EDFA:        LDA #$F0                  
CODE_13EDFC:        STA $0859                 
CODE_13EDFF:        STA $085D                 
CODE_13EE02:        STA $0861                 
CODE_13EE05:        LDA $0865                 
CODE_13EE08:        CMP #$F0                  
CODE_13EE0A:        BEQ CODE_13EE38           
CODE_13EE0C:        DEC $22                   
CODE_13EE0E:        CMP #$F9                  
CODE_13EE10:        BNE CODE_13EE18           
CODE_13EE12:        LDA $22                   
CODE_13EE14:        CMP #$C0                  
CODE_13EE16:        BNE CODE_13EE38           
CODE_13EE18:        LDA $22                   
CODE_13EE1A:        CMP #$10                  
CODE_13EE1C:        BNE CODE_13EE20           
CODE_13EE1E:        LDA #$F0                  
CODE_13EE20:        STA $0865                 
CODE_13EE23:        STA $0869                 
CODE_13EE26:        STA $086D                 
CODE_13EE29:        STA $0871                 
CODE_13EE2C:        STA $0875                 
CODE_13EE2F:        STA $0879                 
CODE_13EE32:        STA $087D                 
CODE_13EE35:        STA $0881                 
CODE_13EE38:        STZ $3D                   
CODE_13EE3A:        STZ $3C                   
CODE_13EE3C:        LDA #$0C                  
CODE_13EE3E:        STA $3E                   
CODE_13EE40:        RTS                       

CODE_13EE41:        DEC $3C                   
CODE_13EE43:        BPL CODE_13EE86           
CODE_13EE45:        LDA #$08                  
CODE_13EE47:        STA $3C                   
CODE_13EE49:        DEC $3E                   
CODE_13EE4B:        BPL CODE_13EE58           
CODE_13EE4D:        INC $29                   
CODE_13EE4F:        LDA #$00                  
CODE_13EE51:        STA $28                   
CODE_13EE53:        STA $2A                   
CODE_13EE55:        JMP CODE_13EE86           

CODE_13EE58:        LDY #$00                  
CODE_13EE5A:        TYX                       
CODE_13EE5B:        INC $3D                   
CODE_13EE5D:        LDA $3D                   
CODE_13EE5F:        AND #$01                  
CODE_13EE61:        BNE CODE_13EE76           
CODE_13EE63:        LDA.l DATA_14C574,x             
CODE_13EE67:        STA $0842,y               
CODE_13EE6A:        INY                       
CODE_13EE6B:        INY                       
CODE_13EE6C:        INY                       
CODE_13EE6D:        INY                       
CODE_13EE6E:        INX                       
CODE_13EE6F:        CPX #$06                  
CODE_13EE71:        BNE CODE_13EE63           
CODE_13EE73:        JMP CODE_13EE86           

CODE_13EE76:        LDA.l DATA_14C57A,x             
CODE_13EE7A:        STA $0842,y               
CODE_13EE7D:        INY                       
CODE_13EE7E:        INY                       
CODE_13EE7F:        INY                       
CODE_13EE80:        INY                       
CODE_13EE81:        INX                       
CODE_13EE82:        CPX #$06                  
CODE_13EE84:        BNE CODE_13EE76           
CODE_13EE86:        RTS                       

DATA_13EE87:        db $80,$7E,$A0,$7D,$40,$6D,$E0,$58
                    db $80,$44

CODE_13EE91:        DEC $28                   
CODE_13EE93:        BPL CODE_13EEBB           
CODE_13EE95:        LDA #$02                  
CODE_13EE97:        STA $28                   
CODE_13EE99:        INC $2A                   
CODE_13EE9B:        LDA $2A                   
CODE_13EE9D:        ASL A                     
CODE_13EE9E:        TAX                       
CODE_13EE9F:        REP #$20                  
CODE_13EEA1:        LDA.l DATA_13EE87,x             
CODE_13EEA5:        STA $0C42                 
CODE_13EEA8:        SEP #$20                  
CODE_13EEAA:        LDA #$01                  
CODE_13EEAC:        STA $02A9                 
CODE_13EEAF:        LDA $2A                   
CODE_13EEB1:        CMP #$04                  
CODE_13EEB3:        BNE CODE_13EEBB           
CODE_13EEB5:        INC $29                   
CODE_13EEB7:        LDA #$02                  
CODE_13EEB9:        STA $28                   
CODE_13EEBB:        RTS                       

CODE_13EEBC:        DEC $28                   
CODE_13EEBE:        BPL CODE_13EED6           
CODE_13EEC0:        LDX #$16                  
CODE_13EEC2:        LDY #$00                  
CODE_13EEC4:        LDA #$F0                  
CODE_13EEC6:        STA $0841,y               
CODE_13EEC9:        INY                       
CODE_13EECA:        INY                       
CODE_13EECB:        INY                       
CODE_13EECC:        INY                       
CODE_13EECD:        DEX                       
CODE_13EECE:        BPL CODE_13EEC6           
CODE_13EED0:        LDA #$30                  
CODE_13EED2:        STA $28                   
CODE_13EED4:        INC $29                   
CODE_13EED6:        RTS                       

CODE_13EED7:        DEC $28                   
CODE_13EED9:        BPL CODE_13EEEC           
CODE_13EEDB:        STZ $19                   
CODE_13EEDD:        STZ $1A                   
CODE_13EEDF:        STZ $1B                   
CODE_13EEE1:        LDA #$05                  
CODE_13EEE3:        STA $0210                 
CODE_13EEE6:        LDA #$14                  
CODE_13EEE8:        STA $1D                   
CODE_13EEEA:        INC $29                   
CODE_13EEEC:        RTS                       

CODE_13EEED:        LDA $1B                   
CODE_13EEEF:        CMP #$2A                  
CODE_13EEF1:        BEQ CODE_13EEEC           
CODE_13EEF3:        DEC $0210                 
CODE_13EEF6:        BPL CODE_13EEEC           
CODE_13EEF8:        LDA #$05                  
CODE_13EEFA:        STA $0210                 
CODE_13EEFD:        INC $1B                   
CODE_13EEFF:        LDX $1B                   
CODE_13EF01:        LDA.l DATA_14CBAE,x             
CODE_13EF05:        STA $0713                 
CODE_13EF08:        LDA.l DATA_14CBAD,x             
CODE_13EF0C:        TAX                       
CODE_13EF0D:        LDA.l DATA_14CBDC,x             
CODE_13EF11:        TAY                       
CODE_13EF12:        LDA.l DATA_14CBD9,x             
CODE_13EF16:        STA $0800,y               
CODE_13EF19:        LDA.l DATA_14CBDA,x             
CODE_13EF1D:        STA $0801,y               
CODE_13EF20:        LDA.l DATA_14CBDB,x             
CODE_13EF24:        STA $0802,y               
CODE_13EF27:        LDA #$21                  
CODE_13EF29:        STA $0803,y               
CODE_13EF2C:        TYA                       
CODE_13EF2D:        LSR A                     
CODE_13EF2E:        LSR A                     
CODE_13EF2F:        TAY                       
CODE_13EF30:        LDA #$00                  
CODE_13EF32:        STA $0A20,y               
CODE_13EF35:        INX                       
CODE_13EF36:        INX                       
CODE_13EF37:        INX                       
CODE_13EF38:        INX                       
CODE_13EF39:        CPX $0713                 
CODE_13EF3C:        BNE CODE_13EF0D           
CODE_13EF3E:        RTS                       

DATA_13EF3F:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF                                  ; /

CODE_13F000:        LDA $02AB
CODE_13F003:        BNE CODE_13F073           
CODE_13F005:        LDA $02C3                 
CODE_13F008:        BEQ CODE_13F017           
CODE_13F00A:        LDX #$02                  
CODE_13F00C:        LDA $02B2,x               
CODE_13F00F:        STA $0257,x               
CODE_13F012:        DEX                       
CODE_13F013:        BPL CODE_13F00C           
CODE_13F015:        BRA CODE_13F02F           

CODE_13F017:        LDX $0535                 
CODE_13F01A:        LDA.l DATA_11CE8E,x             
CODE_13F01E:        STA $0257                 
CODE_13F021:        LDA.l DATA_11CE98,x             
CODE_13F025:        STA $0258                 
CODE_13F028:        LDA.l DATA_11CEA2,x             
CODE_13F02C:        STA $0259                 
CODE_13F02F:        LDA $0535                 
CODE_13F032:        LDY #$01                  
CODE_13F034:        JSR CODE_13F109           
CODE_13F037:        LDA $0533                 
CODE_13F03A:        CMP #$08                  
CODE_13F03C:        BNE CODE_13F04C           
CODE_13F03E:        LDA $0534                 
CODE_13F041:        CMP #$08                  
CODE_13F043:        BNE CODE_13F04C           
CODE_13F045:        LDA #$10                  
CODE_13F047:        STA $0208                 
CODE_13F04A:        BRA CODE_13F04F           

CODE_13F04C:        STZ $0208                 
CODE_13F04F:        STZ $0209                 
CODE_13F052:        INC $02AB                 
CODE_13F055:        LDA $0535                 
CODE_13F058:        STA $0260                 
CODE_13F05B:        LDA #$01                  
CODE_13F05D:        STA $02AC                 
CODE_13F060:        LSR A                     
CODE_13F061:        STA $06                   
CODE_13F063:        LDA #$FF                  
CODE_13F065:        STA $0263                 
CODE_13F068:        LDA #$0F                  
CODE_13F06A:        STA $0262                 
CODE_13F06D:        JSR CODE_13F07D           
CODE_13F070:        JSR CODE_13F3B9           
CODE_13F073:        JSL CODE_13F1BF           
CODE_13F077:        LDA $02AC                 
CODE_13F07A:        BNE CODE_13F07C           
CODE_13F07C:        RTL                       

CODE_13F07D:        LDA $02C3                 
CODE_13F080:        BEQ CODE_13F085           
CODE_13F082:        BRL CODE_13F105           

CODE_13F085:        LDA $0535                 
CODE_13F088:        BNE CODE_13F095           
CODE_13F08A:        LDA $02C2                 
CODE_13F08D:        BPL CODE_13F092           
CODE_13F08F:        JMP CODE_13F102           

CODE_13F092:        LDA $0535                 
CODE_13F095:        CMP $0541                 
CODE_13F098:        BNE CODE_13F09F           
CODE_13F09A:        LDA $02C2                 
CODE_13F09D:        BPL CODE_13F102           
CODE_13F09F:        LDX #$02                  
CODE_13F0A1:        LDA $02C2                 
CODE_13F0A4:        BPL CODE_13F0AC           
CODE_13F0A6:        LDA #$FF                  
CODE_13F0A8:        STA $0B                   
CODE_13F0AA:        BNE CODE_13F0AE           
CODE_13F0AC:        STZ $0B                   
CODE_13F0AE:        LDA $02C2                 
CODE_13F0B1:        AND #$F0                  
CODE_13F0B3:        CLC                       
CODE_13F0B4:        ADC $0257,x               
CODE_13F0B7:        PHP                       
CODE_13F0B8:        ADC $0B                   
CODE_13F0BA:        PLP                       
CODE_13F0BB:        STA $0C                   
CODE_13F0BD:        LDA $0B                   
CODE_13F0BF:        BNE CODE_13F0D3           
CODE_13F0C1:        BCC CODE_13F0E5           
CODE_13F0C3:        LDA $0257,x               
CODE_13F0C6:        AND #$0F                  
CODE_13F0C8:        CMP #$09                  
CODE_13F0CA:        BNE CODE_13F0E5           
CODE_13F0CC:        LDA $0C                   
CODE_13F0CE:        AND #$F0                  
CODE_13F0D0:        JMP CODE_13F0E7           

CODE_13F0D3:        BCS CODE_13F0E5                   
CODE_13F0D5:        LDA $0257,x               
CODE_13F0D8:        AND #$0F                  
CODE_13F0DA:        BNE CODE_13F0E5           
CODE_13F0DC:        LDA $0C                   
CODE_13F0DE:        AND #$F0                  
CODE_13F0E0:        ADC #$09                  
CODE_13F0E2:        JMP CODE_13F0E7           

CODE_13F0E5:        LDA $0C                   
CODE_13F0E7:        STA $0257,x               
CODE_13F0EA:        DEX                       
CODE_13F0EB:        BPL CODE_13F0AE           
CODE_13F0ED:        LDA $02C2                 
CODE_13F0F0:        BPL CODE_13F102           
CODE_13F0F2:        DEC $0260                 
CODE_13F0F5:        LDA $0203                 
CODE_13F0F8:        EOR #$01                  
CODE_13F0FA:        STA $0203                 
CODE_13F0FD:        LDA #$01                  
CODE_13F0FF:        STA $0262                 
CODE_13F102:        STZ $02C2                 
CODE_13F105:        JSR CODE_13F343           
CODE_13F108:        RTS                       

CODE_13F109:        LSR A                     
CODE_13F10A:        BCS CODE_13F126                   
CODE_13F10C:        CPY #$01                  
CODE_13F10E:        BEQ CODE_13F115           
CODE_13F110:        LDA $0628                 
CODE_13F113:        BEQ CODE_13F11C           
CODE_13F115:        LDA #$01                  
CODE_13F117:        STA $0203                 
CODE_13F11A:        BRA CODE_13F11F           

CODE_13F11C:        STZ $0203                 
CODE_13F11F:        STZ $0209                 
CODE_13F122:        LDA #$00                  
CODE_13F124:        BRA CODE_13F13F           

CODE_13F126:        CPY #$01                  
CODE_13F128:        BEQ CODE_13F12F           
CODE_13F12A:        STZ $0203                 
CODE_13F12D:        BRA CODE_13F13C           

CODE_13F12F:        LDA #$01                  
CODE_13F131:        STA $0203                 
CODE_13F134:        STA $0209                 
CODE_13F137:        LDA #$80                  
CODE_13F139:        STA $0202                 
CODE_13F13C:        LDA.w DATA_119B3C,y               
CODE_13F13F:        STA $0261                 
CODE_13F142:        RTS                       

CODE_13F143:        LDA $0202                 
CODE_13F146:        STA $02AD                 
CODE_13F149:        LDA $0203                 
CODE_13F14C:        STA $02AE                 
CODE_13F14F:        LDA $04C0                 
CODE_13F152:        STA $02AF                 
CODE_13F155:        INC $02B0                 
CODE_13F158:        LDA.w DATA_119B3E                 
CODE_13F15B:        STA $0535                 
CODE_13F15E:        JSR CODE_13F109           
CODE_13F161:        LDA #$00                  
CODE_13F163:        STA $0202                 
CODE_13F166:        STA $04C2                 
CODE_13F169:        LDA.w DATA_119B3E                 
CODE_13F16C:        STA $04C0                 
CODE_13F16F:        LDA.w DATA_119B3E                 
CODE_13F172:        STA $0257                 
CODE_13F175:        LDA #$E0                  
CODE_13F177:        STA $0261                 
CODE_13F17A:        LDA.w DATA_119B3E                 
CODE_13F17D:        CLC                       
CODE_13F17E:        ADC #$F0                  
CODE_13F180:        STA $0263                 
CODE_13F183:        RTL                       

CODE_13F184:        LDA $02AD                 
CODE_13F187:        STA $0202                 
CODE_13F18A:        STA $04C2                 
CODE_13F18D:        LDA $02AE                 
CODE_13F190:        STA $0203                 
CODE_13F193:        LDA $02AF                 
CODE_13F196:        STA $04C0                 
CODE_13F199:        LDA $02B0                 
CODE_13F19C:        BNE CODE_13F1BE           
CODE_13F19E:        INC $02B1                 
CODE_13F1A1:        INC $02B0                 
CODE_13F1A4:        INC $D5                   
CODE_13F1A6:        LDA $0258                 
CODE_13F1A9:        STA $0257                 
CODE_13F1AC:        LDA #$10                  
CODE_13F1AE:        STA $01                   
CODE_13F1B0:        LDA #$F0                  
CODE_13F1B2:        STA $0261                 
CODE_13F1B5:        STA $0262                 
CODE_13F1B8:        LDA $0259                 
CODE_13F1BB:        STA $0263                 
CODE_13F1BE:        RTL                       

CODE_13F1BF:        LDX #$00                  
CODE_13F1C1:        STX $0264                 
CODE_13F1C4:        STX $0265                 
CODE_13F1C7:        STX $D8                   
CODE_13F1C9:        JSL CODE_13F238           
CODE_13F1CD:        JSL CODE_13F277           
CODE_13F1D1:        LDA $0261                 
CODE_13F1D4:        CMP $025A                 
CODE_13F1D7:        BNE CODE_13F1F3           
CODE_13F1D9:        BRA CODE_13F1F3           

CODE_13F1DB:        LDA $0262                 
CODE_13F1DE:        CLC                       
CODE_13F1DF:        ADC #$01                  
CODE_13F1E1:        CMP $025B                 
CODE_13F1E4:        BNE CODE_13F1F3           
CODE_13F1E6:        STZ $02AC                 
CODE_13F1E9:        STZ $02B0                 
CODE_13F1EC:        STZ $02B1                 
CODE_13F1EF:        INC $0264                 
CODE_13F1F2:        RTL                       

CODE_13F1F3:        LDA $0257                 
CODE_13F1F6:        CMP $0263                 
CODE_13F1F9:        BEQ CODE_13F1E6           
CODE_13F1FB:        LDX #$00                  
CODE_13F1FD:        JSL CODE_13F21D           
CODE_13F201:        RTL                       

CODE_13F202:        LDA $0257,x               
CODE_13F205:        SEC                       
CODE_13F206:        SBC #$10                  
CODE_13F208:        STA $0257,x               
CODE_13F20B:        BCS CODE_13F21C                   
CODE_13F20D:        DEC $0257,x               
CODE_13F210:        LDA $0257,x               
CODE_13F213:        CMP #$EF                  
CODE_13F215:        BNE CODE_13F21C           
CODE_13F217:        LDA #$F9                  
CODE_13F219:        STA $0257,x               
CODE_13F21C:        RTL                       

CODE_13F21D:        LDA $0257,x               
CODE_13F220:        CLC                       
CODE_13F221:        ADC #$10                  
CODE_13F223:        STA $0257,x               
CODE_13F226:        BCC CODE_13F237           
CODE_13F228:        INC $0257,x               
CODE_13F22B:        LDA $0257,x               
CODE_13F22E:        CMP #$0A                  
CODE_13F230:        BNE CODE_13F237           
CODE_13F232:        LDA #$00                  
CODE_13F234:        STA $0257,x               
CODE_13F237:        RTL                       

CODE_13F238:        STY $0F                   
CODE_13F23A:        LDA $0257,x               
CODE_13F23D:        AND #$0F                  
CODE_13F23F:        TAY                       
CODE_13F240:        LDA.w DATA_11AAF0,y               
CODE_13F243:        STA $0269                 
CODE_13F246:        LDA $0534                 
CODE_13F249:        ASL A                     
CODE_13F24A:        ASL A                     
CODE_13F24B:        ASL A                     
CODE_13F24C:        ASL A                     
CODE_13F24D:        CLC                       
CODE_13F24E:        ADC.w DATA_11AAFB,y               
CODE_13F251:        STA $026A                 
CODE_13F254:        LDA #$7F                  
CODE_13F256:        STA $026B                 
CODE_13F259:        LDA $0257,x               
CODE_13F25C:        LSR A                     
CODE_13F25D:        LSR A                     
CODE_13F25E:        LSR A                     
CODE_13F25F:        LSR A                     
CODE_13F260:        STA $0256                 
CODE_13F263:        ASL A                     
CODE_13F264:        STA $025B                 
CODE_13F267:        LDY #$00                  
CODE_13F269:        LDA $0257,x               
CODE_13F26C:        LSR A                     
CODE_13F26D:        BCS CODE_13F271                   
CODE_13F26F:        LDY #$04                  
CODE_13F271:        STY $025A                 
CODE_13F274:        LDY $0F                   
CODE_13F276:        RTL                       

CODE_13F277:        PHB                       
CODE_13F278:        LDA #$13                  
CODE_13F27A:        PHA                       
CODE_13F27B:        PLB                       
CODE_13F27C:        LDA $7F0000               
CODE_13F280:        TAX                       
CODE_13F281:        LDA $0269                 
CODE_13F284:        STA $C4                   
CODE_13F286:        LDA $026A                 
CODE_13F289:        STA $C5                   
CODE_13F28B:        LDA $026B                 
CODE_13F28E:        STA $C6                   
CODE_13F290:        LDA $024B                 
CODE_13F293:        BEQ CODE_13F298           
CODE_13F295:        JMP CODE_13F3E0           

CODE_13F298:        REP #$20                  
CODE_13F29A:        LDA $025A                 
CODE_13F29D:        ORA #$0010                
CODE_13F2A0:        STA $7F0002,x             
CODE_13F2A4:        XBA                       
CODE_13F2A5:        CLC                       
CODE_13F2A6:        ADC #$0001                
CODE_13F2A9:        XBA                       
CODE_13F2AA:        ORA #$0010                
CODE_13F2AD:        STA $7F0042,x             
CODE_13F2B1:        INX                       
CODE_13F2B2:        INX                       
CODE_13F2B3:        LDA #$3C00                
CODE_13F2B6:        STA $7F0002,x             
CODE_13F2BA:        STA $7F0042,x             
CODE_13F2BE:        INX                       
CODE_13F2BF:        INX                       
CODE_13F2C0:        SEP #$20                  
CODE_13F2C2:        STZ $0255                 
CODE_13F2C5:        STZ $D5                   
CODE_13F2C7:        LDA $02DF                 ; \ [$00] = Pointer to Map16 tileset.
CODE_13F2CA:        STA $00                   ;  |
CODE_13F2CC:        LDA $02E0                 ;  |
CODE_13F2CF:        STA $01                   ;  |
CODE_13F2D1:        LDA $02E1                 ;  |
CODE_13F2D4:        STA $02                   ; /
CODE_13F2D6:        LDY $0256                 
CODE_13F2D9:        REP #$30                  ; Accumulator and Index = 16-bit.
CODE_13F2DB:        LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F2DD:        AND #$00FF                ;  |
CODE_13F2E0:        CMP #$00FF                ;  |
CODE_13F2E3:        BNE CODE_13F2F5           ; / If not, branch.
CODE_13F2E5:        LDA.l PNTR_13A613        ; \ Load empty tile.
CODE_13F2E9:        STA $00                   ;  | ($13A615)
CODE_13F2EB:        LDA #$0013                ;  |
CODE_13F2EE:        STA $02                   ; /
CODE_13F2F0:        LDY #$0000                ; Y = #$0000.
CODE_13F2F3:        BRA CODE_13F2F9           

CODE_13F2F5:        ASL A                     ; \ Multiply by 8 (8 bytes for 1 Map16 tile)
CODE_13F2F6:        ASL A                     ;  |
CODE_13F2F7:        ASL A                     ;  |
CODE_13F2F8:        TAY                       ; / Into Y.
CODE_13F2F9:        LDA [$00],y               ; \ Store top-left tile.
CODE_13F2FB:        STA $7F0002,x             ;  |
CODE_13F2FF:        INY                       ;  | Get to next tile.
CODE_13F300:        INY                       ;  |
CODE_13F301:        LDA [$00],y               ;  | Store bottom-left tile.
CODE_13F303:        STA $7F0042,x             ;  |
CODE_13F307:        INY                       ;  | Get to next tile.
CODE_13F308:        INY                       ;  |
CODE_13F309:        LDA [$00],y               ;  | Store top-right tile.
CODE_13F30B:        STA $7F0004,x             ;  |
CODE_13F30F:        INY                       ;  | Get to next tile.
CODE_13F310:        INY                       ;  |
CODE_13F311:        LDA [$00],y               ;  | Store bottom-right tile.
CODE_13F313:        STA $7F0044,x             ; /
CODE_13F317:        SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_13F319:        INC $0255                 
CODE_13F31C:        INX                       
CODE_13F31D:        INX                       
CODE_13F31E:        INX                       
CODE_13F31F:        INX                       
CODE_13F320:        LDA $0256                 
CODE_13F323:        CLC                       
CODE_13F324:        ADC #$10                  
CODE_13F326:        STA $0256                 
CODE_13F329:        LDA $0255                 
CODE_13F32C:        CMP #$0F                  
CODE_13F32E:        BCC CODE_13F2C7           
CODE_13F330:        LDA #$FF                  
CODE_13F332:        STA $7F0042,x             
CODE_13F336:        TXA                       
CODE_13F337:        CLC                       
CODE_13F338:        ADC #$40                  
CODE_13F33A:        STA $7F0000               
CODE_13F33E:        INC $0265                 
CODE_13F341:        PLB                       
CODE_13F342:        RTL                       

CODE_13F343:        LDA $02C3                 
CODE_13F346:        BEQ CODE_13F356           
CODE_13F348:        LDA $0200                 
CODE_13F34B:        STA $0202                 
CODE_13F34E:        LDA $0201                 
CODE_13F351:        STA $0203                 
CODE_13F354:        BRA CODE_13F3AD           

CODE_13F356:        LDA $0535                 
CODE_13F359:        AND #$02                  
CODE_13F35B:        BNE CODE_13F385           
CODE_13F35D:        LDA $02B6                 
CODE_13F360:        BEQ CODE_13F367           
CODE_13F362:        LDA $0201                 
CODE_13F365:        BRA CODE_13F369           

CODE_13F367:        LDA #$01                  
CODE_13F369:        STA $0203                 
CODE_13F36C:        LDA $0201                 
CODE_13F36F:        BEQ CODE_13F37A           
CODE_13F371:        LDA $0200                 
CODE_13F374:        LSR A                     
CODE_13F375:        STA $0202                 
CODE_13F378:        BRA CODE_13F3AD           

CODE_13F37A:        LDA $0200                 
CODE_13F37D:        LSR A                     
CODE_13F37E:        ORA #$80                  
CODE_13F380:        STA $0202                 
CODE_13F383:        BRA CODE_13F3AD           

CODE_13F385:        LDA $02B6                 
CODE_13F388:        BEQ CODE_13F391           
CODE_13F38A:        LDA $0201                 
CODE_13F38D:        EOR #$01                  
CODE_13F38F:        BRA CODE_13F393           

CODE_13F391:        LDA #$00                  
CODE_13F393:        STA $0203                 
CODE_13F396:        LDA $0201                 
CODE_13F399:        BEQ CODE_13F3A4           
CODE_13F39B:        LDA $0200                 
CODE_13F39E:        LSR A                     
CODE_13F39F:        STA $0202                 
CODE_13F3A2:        BRA CODE_13F3AD           

CODE_13F3A4:        LDA $0200                 
CODE_13F3A7:        LSR A                     
CODE_13F3A8:        ORA #$80                  
CODE_13F3AA:        STA $0202                 
CODE_13F3AD:        LDA $0202                 
CODE_13F3B0:        AND #$F0                  
CODE_13F3B2:        STA $026C                 
CODE_13F3B5:        STZ $02B6                 
CODE_13F3B8:        RTS                       

CODE_13F3B9:        LDX $0533                 ; \ Get level + room number into index.
CODE_13F3BC:        LDA.l DATA_11D098,x         ;  |
CODE_13F3C0:        CLC                       ;  |
CODE_13F3C1:        ADC $0534                 ;  |
CODE_13F3C4:        TAX                       ; /
CODE_13F3C5:        LDA.l DATA_13A61D,x         ; \ Load a certain Layer 2 Map16 tileset.     
CODE_13F3C9:        ASL A                     ;  |
CODE_13F3CA:        TAX                       ; /
CODE_13F3CB:        LDA.l PNTR_13A6E5,x         ; \ Tileset pointer, low byte, into $02DF.
CODE_13F3CF:        STA $02DF                 ; /
CODE_13F3D2:        INX                       ; \
CODE_13F3D3:        LDA.l PNTR_13A6E5,x         ;  | Tileset pointer, high byte, into $02E0.    
CODE_13F3D7:        STA $02E0                 ; /
CODE_13F3DA:        LDA #$13                  ; \ Bank number = #$13.
CODE_13F3DC:        STA $02E1                 ; / Into $02E1.
CODE_13F3DF:        RTS                       ; Return.

CODE_13F3E0:        REP #$20                  
CODE_13F3E2:        LDA $025A                 
CODE_13F3E5:        ORA #$0010                
CODE_13F3E8:        CLC                       
CODE_13F3E9:        ADC #$4001                
CODE_13F3EC:        STA $7F0002,x             
CODE_13F3F0:        XBA                       
CODE_13F3F1:        CLC                       
CODE_13F3F2:        ADC #$0001                
CODE_13F3F5:        XBA                       
CODE_13F3F6:        ORA #$0010                
CODE_13F3F9:        STA $7F002E,x             
CODE_13F3FD:        INX                       
CODE_13F3FE:        INX                       
CODE_13F3FF:        LDA #$2800                
CODE_13F402:        STA $7F0002,x             
CODE_13F406:        STA $7F002E,x             
CODE_13F40A:        INX                       
CODE_13F40B:        INX                       
CODE_13F40C:        SEP #$20                  
CODE_13F40E:        STZ $0255                 
CODE_13F411:        STZ $D5                   
CODE_13F413:        LDA $0256                 
CODE_13F416:        CLC                       
CODE_13F417:        ADC #$50                  
CODE_13F419:        STA $0256                 
CODE_13F41C:        LDA $02DF                 
CODE_13F41F:        STA $00                   
CODE_13F421:        LDA $02E0                 
CODE_13F424:        STA $01                   
CODE_13F426:        LDA $02E1                 
CODE_13F429:        STA $02                   
CODE_13F42B:        LDY $0256                 
CODE_13F42E:        REP #$30                  
CODE_13F430:        LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F432:        AND #$00FF                ;  |
CODE_13F435:        CMP #$00FF                ;  |
CODE_13F438:        BNE CODE_13F44A           ; / If not, branch.
CODE_13F43A:        LDA.l PNTR_13A613           ; \ Load empty tile data.
CODE_13F43E:        STA $00                   ;  | ($13A615)
CODE_13F440:        LDA #$0013                ;  |
CODE_13F443:        STA $02                   ; /
CODE_13F445:        LDY #$0000                ; Y = #$0000.
CODE_13F448:        BRA CODE_13F44E           

CODE_13F44A:        ASL A                     
CODE_13F44B:        ASL A                     
CODE_13F44C:        ASL A                     
CODE_13F44D:        TAY                       
CODE_13F44E:        LDA [$00],y               
CODE_13F450:        STA $7F0002,x             
CODE_13F454:        INY                       
CODE_13F455:        INY                       
CODE_13F456:        LDA [$00],y               
CODE_13F458:        STA $7F002E,x             
CODE_13F45C:        INY                       
CODE_13F45D:        INY                       
CODE_13F45E:        LDA [$00],y               
CODE_13F460:        STA $7F0004,x             
CODE_13F464:        INY                       
CODE_13F465:        INY                       
CODE_13F466:        LDA [$00],y               
CODE_13F468:        STA $7F0030,x             
CODE_13F46C:        SEP #$30                  
CODE_13F46E:        INC $0255                 
CODE_13F471:        INX                       
CODE_13F472:        INX                       
CODE_13F473:        INX                       
CODE_13F474:        INX                       
CODE_13F475:        LDA $0256                 
CODE_13F478:        CLC                       
CODE_13F479:        ADC #$10                  
CODE_13F47B:        STA $0256                 
CODE_13F47E:        LDA $0255                 
CODE_13F481:        CMP #$0A                  
CODE_13F483:        BCC CODE_13F41C           
CODE_13F485:        LDA #$FF                  
CODE_13F487:        STA $7F002E,x             
CODE_13F48B:        TXA                       
CODE_13F48C:        CLC                       
CODE_13F48D:        ADC #$2C                  
CODE_13F48F:        STA $7F0000               
CODE_13F493:        INC $0265                 
CODE_13F496:        PLB                       
CODE_13F497:        RTL                       

DATA_13F498:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; /
   
CODE_13F500:        LDA $02AB                 
CODE_13F503:        BNE CODE_13F554           
CODE_13F505:        LDA #$02                  
CODE_13F507:        STA $025A                 
CODE_13F50A:        LDA $02C3                 
CODE_13F50D:        BNE CODE_13F523           
CODE_13F50F:        LDX $0535                 
CODE_13F512:        LDA.l DATA_11CEAC,x             
CODE_13F516:        STA $0257                 
CODE_13F519:        STA $0258                 
CODE_13F51C:        LDA.l DATA_11CEB6,x             
CODE_13F520:        STA $0259                 
CODE_13F523:        LDA $0535                 
CODE_13F526:        LDY #$00                  
CODE_13F528:        JSR CODE_13F109           
CODE_13F52B:        LDA #$02                  
CODE_13F52D:        STA $02B9                 
CODE_13F530:        LDA #$00                  
CODE_13F532:        STA $02BA                 
CODE_13F535:        LDA #$20                  
CODE_13F537:        STA $025C                 
CODE_13F53A:        LDA #$A0                  
CODE_13F53C:        STA $025D                 
CODE_13F53F:        INC $02AB                 
CODE_13F542:        LDA #$E0                  
CODE_13F544:        STA $E2                   
CODE_13F546:        LDA #$01                  
CODE_13F548:        STA $E4                   
CODE_13F54A:        STA $02AC                 
CODE_13F54D:        LSR A                     
CODE_13F54E:        STA $025B                 
CODE_13F551:        JSR CODE_13F3B9           
CODE_13F554:        STZ $06                   
CODE_13F556:        LDA #$FF                  
CODE_13F558:        STA $0263                 
CODE_13F55B:        LDA #$A0                  
CODE_13F55D:        STA $0262                 
CODE_13F560:        JSL CODE_13F5FE           
CODE_13F564:        LDA $02AC                 
CODE_13F567:        BNE CODE_13F571           
CODE_13F569:        LDA #$E8                  
CODE_13F56B:        STA $E1                   
CODE_13F56D:        LDA #$C8                  
CODE_13F56F:        STA $E2                   
CODE_13F571:        RTL                       

CODE_13F572:        LDA $0208                 
CODE_13F575:        STA $02BB                 
CODE_13F578:        LDA $0200                 
CODE_13F57B:        STA $02AD                 
CODE_13F57E:        LDA $02BC                 
CODE_13F581:        STA $02BE                 
CODE_13F584:        LDA $02BD                 
CODE_13F587:        STA $02BF                 
CODE_13F58A:        LDA $04C0                 
CODE_13F58D:        STA $02C0                 
CODE_13F590:        STZ $0206                 
CODE_13F593:        STZ $0200                 
CODE_13F596:        STZ $0208                 
CODE_13F599:        STZ $0202                 
CODE_13F59C:        RTL                       

CODE_13F59D:        LDA $02BB                 
CODE_13F5A0:        STA $0208                 
CODE_13F5A3:        LDA $02AD                 
CODE_13F5A6:        STA $0202                 
CODE_13F5A9:        LDA $02BE                 
CODE_13F5AC:        STA $02BC                 
CODE_13F5AF:        LDA $02BF                 
CODE_13F5B2:        STA $02BD                 
CODE_13F5B5:        LDA $02C0                 
CODE_13F5B8:        STA $04C0                 
CODE_13F5BB:        RTL                       

CODE_13F5BC:        LDA $0258                 
CODE_13F5BF:        AND #$10                  
CODE_13F5C1:        BEQ CODE_13F5CA           
CODE_13F5C3:        LDA $E1                   
CODE_13F5C5:        SEC                       
CODE_13F5C6:        SBC #$08                  
CODE_13F5C8:        STA $E1                   
CODE_13F5CA:        LDA #$01                  
CODE_13F5CC:        STA $E4                   
CODE_13F5CE:        LDA $0258                 
CODE_13F5D1:        STA $0257                 
CODE_13F5D4:        LDA #$10                  
CODE_13F5D6:        STA $01                   
CODE_13F5D8:        LDX #$00                  
CODE_13F5DA:        JSL CODE_13F74D           
CODE_13F5DE:        LDA $025C                 
CODE_13F5E1:        STA $025B                 
CODE_13F5E4:        LDA $E1                   
CODE_13F5E6:        STA $E2                   
CODE_13F5E8:        LDA #$F0                  
CODE_13F5EA:        STA $0261                 
CODE_13F5ED:        STA $0262                 
CODE_13F5F0:        LDA $0259                 
CODE_13F5F3:        STA $0263                 
CODE_13F5F6:        INC $02C1                 
CODE_13F5F9:        LDA #$01                  
CODE_13F5FB:        STA $06                   
CODE_13F5FD:        RTL                       

CODE_13F5FE:        LDX #$00                  
CODE_13F600:        STX $0264                 
CODE_13F603:        JSL CODE_13F6F7           
CODE_13F607:        JSL CODE_13F77D           
CODE_13F60B:        LDX #$00                  
CODE_13F60D:        JSL CODE_13F674           
CODE_13F611:        LDA $0261                 
CODE_13F614:        CMP $025A                 
CODE_13F617:        BNE CODE_13F63B           
CODE_13F619:        LDA $0262                 
CODE_13F61C:        CLC                       
CODE_13F61D:        ADC #$20                  
CODE_13F61F:        CMP $025B                 
CODE_13F622:        BNE CODE_13F63B           
CODE_13F624:        LDA $06                   
CODE_13F626:        TAX                       
CODE_13F627:        BEQ CODE_13F62E           
CODE_13F629:        LDA $0519                 
CODE_13F62C:        STA $E1                   
CODE_13F62E:        INC $0264                 
CODE_13F631:        STZ $02AC                 
CODE_13F634:        STZ $02B0                 
CODE_13F637:        STZ $02B1                 
CODE_13F63A:        RTL                       

CODE_13F63B:        LDA $025B                 
CODE_13F63E:        AND #$20                  
CODE_13F640:        BNE CODE_13F650           
CODE_13F642:        LDA $0257                 
CODE_13F645:        CMP $0263                 
CODE_13F648:        BEQ CODE_13F624           
CODE_13F64A:        LDX #$00                  
CODE_13F64C:        JSL CODE_13F6D0           
CODE_13F650:        RTL                       

CODE_13F651:        LDA $025C,x               
CODE_13F654:        SEC                       
CODE_13F655:        SBC #$20                  
CODE_13F657:        STA $025C,x               
CODE_13F65A:        BCS CODE_13F673                   
CODE_13F65C:        LDA $02B9,x               
CODE_13F65F:        SEC                       
CODE_13F660:        SBC #$01                  
CODE_13F662:        CMP #$FF                  
CODE_13F664:        BNE CODE_13F66A           
CODE_13F666:        LDA #$0B                  
CODE_13F668:        BRA CODE_13F670           

CODE_13F66A:        CMP #$07                  
CODE_13F66C:        BNE CODE_13F6A2           
CODE_13F66E:        LDA #$03                  
CODE_13F670:        STA $02B9,x               
CODE_13F673:        RTL                       

CODE_13F674:        LDA $025B,x               
CODE_13F677:        CLC                       
CODE_13F678:        ADC #$20                  
CODE_13F67A:        STA $025B,x               
CODE_13F67D:        BCC CODE_13F6A5           
CODE_13F67F:        CPX #$00                  
CODE_13F681:        BNE CODE_13F68D           
CODE_13F683:        LDA $025A                 
CODE_13F686:        CLC                       
CODE_13F687:        ADC #$01                  
CODE_13F689:        STA $025A                 
CODE_13F68C:        RTL                       

CODE_13F68D:        DEX                       
CODE_13F68E:        LDA $02B9,x               
CODE_13F691:        CLC                       
CODE_13F692:        ADC #$01                  
CODE_13F694:        CMP #$04                  
CODE_13F696:        BNE CODE_13F69C           
CODE_13F698:        LDA #$08                  
CODE_13F69A:        BRA CODE_13F6A2           

CODE_13F69C:        CMP #$0C                  
CODE_13F69E:        BNE CODE_13F6A2           
CODE_13F6A0:        LDA #$00                  
CODE_13F6A2:        STA $02B9,x               
CODE_13F6A5:        RTL                       

CODE_13F6A6:        LDA $0258,x               
CODE_13F6A9:        SEC                       
CODE_13F6AA:        SBC #$10                  
CODE_13F6AC:        STA $0258,x               
CODE_13F6AF:        AND #$F0                  
CODE_13F6B1:        CMP #$F0                  
CODE_13F6B3:        BNE CODE_13F6CF           
CODE_13F6B5:        LDA $0258,x               
CODE_13F6B8:        AND #$0F                  
CODE_13F6BA:        CLC                       
CODE_13F6BB:        ADC #$E0                  
CODE_13F6BD:        STA $0258,x               
CODE_13F6C0:        DEC $0258,x               
CODE_13F6C3:        LDA $0258,x               
CODE_13F6C6:        CMP #$DF                  
CODE_13F6C8:        BNE CODE_13F6CF           
CODE_13F6CA:        LDA #$E9                  
CODE_13F6CC:        STA $0258,x               
CODE_13F6CF:        RTL                       

CODE_13F6D0:        LDA $0257,x               
CODE_13F6D3:        CLC                       
CODE_13F6D4:        ADC #$10                  
CODE_13F6D6:        STA $0257,x               
CODE_13F6D9:        AND #$F0                  
CODE_13F6DB:        CMP #$F0                  
CODE_13F6DD:        BNE CODE_13F6F6           
CODE_13F6DF:        LDA $0257,x               
CODE_13F6E2:        AND #$0F                  
CODE_13F6E4:        STA $0257,x               
CODE_13F6E7:        INC $0257,x               
CODE_13F6EA:        LDA $0257,x               
CODE_13F6ED:        CMP #$0A                  
CODE_13F6EF:        BNE CODE_13F6F6           
CODE_13F6F1:        LDA #$00                  
CODE_13F6F3:        STA $0257,x               
CODE_13F6F6:        RTL                       

CODE_13F6F7:        PHX                       
CODE_13F6F8:        LDA $0257,x               
CODE_13F6FB:        AND #$0F                  
CODE_13F6FD:        TAY                       
CODE_13F6FE:        LDA.w DATA_11AAF0,y               
CODE_13F701:        STA $0269                 
CODE_13F704:        LDA $0534                 
CODE_13F707:        ASL A                     
CODE_13F708:        ASL A                     
CODE_13F709:        ASL A                     
CODE_13F70A:        ASL A                     
CODE_13F70B:        CLC                       
CODE_13F70C:        ADC.w DATA_11AAFB,y               
CODE_13F70F:        STA $026A                 
CODE_13F712:        LDA #$7F                  
CODE_13F714:        STA $026B                 
CODE_13F717:        LDA $0257,x               
CODE_13F71A:        AND #$F0                  
CODE_13F71C:        STA $0256                 
CODE_13F71F:        CPX #$00                  
CODE_13F721:        BNE CODE_13F73E           
CODE_13F723:        LDA $025A                 
CODE_13F726:        CMP #$FF                  
CODE_13F728:        BNE CODE_13F72E           
CODE_13F72A:        LDA #$0B                  
CODE_13F72C:        BRA CODE_13F742           

CODE_13F72E:        CMP #$04                  
CODE_13F730:        BNE CODE_13F736           
CODE_13F732:        LDA #$08                  
CODE_13F734:        BRA CODE_13F742           

CODE_13F736:        CMP #$0C                  
CODE_13F738:        BNE CODE_13F742           
CODE_13F73A:        LDA #$00                  
CODE_13F73C:        BRA CODE_13F742           

CODE_13F73E:        DEX                       
CODE_13F73F:        LDA $02B9,x               
CODE_13F742:        STA $025A                 
CODE_13F745:        PLX                       
CODE_13F746:        LDA $025B,x               
CODE_13F749:        STA $025B                 
CODE_13F74C:        RTL                       

CODE_13F74D:        LDA $0257,x               
CODE_13F750:        AND #$10                  
CODE_13F752:        BEQ CODE_13F74C           
CODE_13F754:        LDA $0257,x               
CODE_13F757:        STA $03                   
CODE_13F759:        SEC                       
CODE_13F75A:        SBC $01                   
CODE_13F75C:        STA $0257,x               
CODE_13F75F:        JSL CODE_13F6F7           
CODE_13F763:        LDA #$0F                  
CODE_13F765:        STA $E3                   
CODE_13F767:        LDA #$00                  
CODE_13F769:        STA $0255                 
CODE_13F76C:        DEC $E3                   
CODE_13F76E:        LDA $E3                   
CODE_13F770:        BPL CODE_13F76C           
CODE_13F772:        LDA $03                   
CODE_13F774:        STA $0257,x               
CODE_13F777:        DEC $E4                   
CODE_13F779:        JML CODE_13F6F7           

CODE_13F77D:        LDA $7F0000               
CODE_13F781:        TAX                       
CODE_13F782:        LDA $0269                 
CODE_13F785:        STA $C4                   
CODE_13F787:        LDA $026A                 
CODE_13F78A:        STA $C5                   
CODE_13F78C:        LDA $026B                 
CODE_13F78F:        STA $C6                   
CODE_13F791:        LDA $025A                 
CODE_13F794:        ORA #$10                  
CODE_13F796:        STA $7F0002,x             
CODE_13F79A:        INX                       
CODE_13F79B:        LDA $025B                 
CODE_13F79E:        STA $7F0002,x             
CODE_13F7A2:        INX                       
CODE_13F7A3:        LDA #$00                  
CODE_13F7A5:        STA $7F0002,x             
CODE_13F7A9:        INX                       
CODE_13F7AA:        LDA #$40                  
CODE_13F7AC:        STA $7F0002,x             
CODE_13F7B0:        INX                       
CODE_13F7B1:        STZ $0255                 
CODE_13F7B4:        LDA #$0F                  
CODE_13F7B6:        STA $E3                   
CODE_13F7B8:        LDA $02DF                 
CODE_13F7BB:        STA $00                   
CODE_13F7BD:        LDA $02E0                 
CODE_13F7C0:        STA $01                   
CODE_13F7C2:        LDA $02E1                 
CODE_13F7C5:        STA $02                   
CODE_13F7C7:        LDY $0256                 
CODE_13F7CA:        REP #$30                  
CODE_13F7CC:        LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F7CE:        AND #$00FF                ;  |
CODE_13F7D1:        CMP #$00FF                ;  |
CODE_13F7D4:        BNE CODE_13F7E6           ; /
CODE_13F7D6:        LDA.l PNTR_13A613           ; \ Empty tile.    
CODE_13F7DA:        STA $00                   ;  | ($13A615)
CODE_13F7DC:        LDA #$0013                ;  |
CODE_13F7DF:        STA $02                   ; /
CODE_13F7E1:        LDY #$0000                ; Y = #$0000.
CODE_13F7E4:        BRA CODE_13F7EA           

CODE_13F7E6:        ASL A                     
CODE_13F7E7:        ASL A                     
CODE_13F7E8:        ASL A                     
CODE_13F7E9:        TAY                       
CODE_13F7EA:        LDA $02C1                 
CODE_13F7ED:        AND #$00FF                
CODE_13F7F0:        BEQ CODE_13F7F6           
CODE_13F7F2:        INY                       
CODE_13F7F3:        INY                       
CODE_13F7F4:        INY                       
CODE_13F7F5:        INY                       
CODE_13F7F6:        REP #$20                  
CODE_13F7F8:        LDA [$00],y               
CODE_13F7FA:        STA $7F0002,x             
CODE_13F7FE:        SEP #$20                  
CODE_13F800:        INC $0255                 
CODE_13F803:        INX                       
CODE_13F804:        INX                       
CODE_13F805:        INY                       
CODE_13F806:        INY                       
CODE_13F807:        LDA $0255                 
CODE_13F80A:        LSR A                     
CODE_13F80B:        BCS CODE_13F7F6                   
CODE_13F80D:        INC $0256                 
CODE_13F810:        SEP #$30                  
CODE_13F812:        LDA $0255                 
CODE_13F815:        CMP #$20                  
CODE_13F817:        BCC CODE_13F7B8           
CODE_13F819:        LDA #$FF                  
CODE_13F81B:        STA $7F0002,x             
CODE_13F81F:        TXA                       
CODE_13F820:        STA $7F0000               
CODE_13F824:        BRA CODE_13F862           

CODE_13F826:        LDA $E4                   
CODE_13F828:        BEQ CODE_13F82F           
CODE_13F82A:        DEC $E4                   
CODE_13F82C:        JMP CODE_13F837           

CODE_13F82F:        LDA $D8                   
CODE_13F831:        LSR A                     
CODE_13F832:        BCS CODE_13F837                   
CODE_13F834:        JMP CODE_13F837
           
CODE_13F837:        LDX #$00                  
CODE_13F839:        LDA $D8                   
CODE_13F83B:        LSR A                     
CODE_13F83C:        BCC CODE_13F852           
CODE_13F83E:        INX                       
CODE_13F83F:        LDA $0258,x               
CODE_13F842:        AND #$F0                  
CODE_13F844:        CMP #$E0                  
CODE_13F846:        BEQ CODE_13F84F           
CODE_13F848:        LDA $0258,x               
CODE_13F84B:        AND #$10                  
CODE_13F84D:        BNE CODE_13F862           
CODE_13F84F:        JMP CODE_13F862           

CODE_13F852:        LDA $0258,x               
CODE_13F855:        AND #$F0                  
CODE_13F857:        CMP #$E0                  
CODE_13F859:        BEQ CODE_13F862           
CODE_13F85B:        LDA $0258,x               
CODE_13F85E:        AND #$10                  
CODE_13F860:        BEQ CODE_13F862           
CODE_13F862:        LDA $02C1                 
CODE_13F865:        EOR #$01                  
CODE_13F867:        STA $02C1                 
CODE_13F86A:        RTL                       

DATA_13F86B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF                  ; /

CODE_13F900:        TXA
CODE_13F901:        PHA
CODE_13F902:        LDA #$00
CODE_13F904:        STA $00
CODE_13F906:        STA $01
CODE_13F908:        LDA.w DATA_11CB0E,y
CODE_13F90B:        BPL CODE_13F90F
CODE_13F90D:        DEC $00
CODE_13F90F:        CLC
CODE_13F910:        ADC $28,x                 
CODE_13F912:        AND #$F0                  
CODE_13F914:        STA $05                   
CODE_13F916:        PHP                       
CODE_13F917:        LSR A                     
CODE_13F918:        LSR A                     
CODE_13F919:        LSR A                     
CODE_13F91A:        LSR A                     
CODE_13F91B:        STA $E5                   
CODE_13F91D:        PLP                       
CODE_13F91E:        LDA $14,x                 
CODE_13F920:        ADC $00                   
CODE_13F922:        STA $02                   
CODE_13F924:        STA $03                   
CODE_13F926:        LDA $EB                   
CODE_13F928:        BNE CODE_13F92E           
CODE_13F92A:        STA $02                   
CODE_13F92C:        STA $03                   
CODE_13F92E:        LDA.w DATA_11CB56,y               
CODE_13F931:        BPL CODE_13F935           
CODE_13F933:        DEC $01                   
CODE_13F935:        CLC                       
CODE_13F936:        ADC $32,x                 
CODE_13F938:        AND #$F0                  
CODE_13F93A:        STA $06                   
CODE_13F93C:        STA $E6                   
CODE_13F93E:        LDA $1E,x                 
CODE_13F940:        ADC $01                   
CODE_13F942:        STA $01                   
CODE_13F944:        STA $04                   
CODE_13F946:        JSR CODE_13F9EE           
CODE_13F949:        BCC CODE_13F94F           
CODE_13F94B:        LDA #$00                  
CODE_13F94D:        BEQ CODE_13F997           
CODE_13F94F:        LDX $0D                   
CODE_13F951:        STX $070F                 
CODE_13F954:        LDX $0E                   
CODE_13F956:        STX $0710                 
CODE_13F959:        LDX $0F                   
CODE_13F95B:        STX $0711                 
CODE_13F95E:        LDX $03                   
CODE_13F960:        PHX                       
CODE_13F961:        JSR CODE_13FA5C           
CODE_13F964:        REP #$20                  
CODE_13F966:        LDA $01                   
CODE_13F968:        CLC                       
CODE_13F969:        ADC #$7000                
CODE_13F96C:        STA $0D                   
CODE_13F96E:        SEP #$20                  
CODE_13F970:        LDA $03                   
CODE_13F972:        STA $0F                   
CODE_13F974:        LDY $E7                   ; Get index (position) to the corresponding Map16 tile.
CODE_13F976:        LDA [$0D],y               ; \ If Map16 page 0, branch.
CODE_13F978:        BEQ CODE_13F983           ; /
CODE_13F97A:        LDA [$01],y               ; \ All tiles on page 1 must act like...
CODE_13F97C:        TAX                       ;  |
CODE_13F97D:        LDA.l DATA_14CCBD,x         ;  | $2C, $40, $AB or $C0...
CODE_13F981:        BRA CODE_13F985           ; / from page 0.

CODE_13F983:        LDA [$01],y               ; This is for page 0, just act what it's supposed to act like.
CODE_13F985:        PLX                       ; Pull X index back.
CODE_13F986:        STX $03                   
CODE_13F988:        LDX $070F                 
CODE_13F98B:        STX $0D                   
CODE_13F98D:        LDX $0710                 
CODE_13F990:        STX $0E                   
CODE_13F992:        LDX $0711                 
CODE_13F995:        STX $0F                   
CODE_13F997:        STA $00                   ; Map16 tile 'acts like'.
CODE_13F999:        PLA                       
CODE_13F99A:        TAX                       
CODE_13F99B:        RTL                       

CODE_13F99C:        PHA                       
CODE_13F99D:        AND #$C0                  
CODE_13F99F:        ASL A                     
CODE_13F9A0:        ROL A                     
CODE_13F9A1:        ROL A                     
CODE_13F9A2:        ADC.w DATA_119B9C,y               
CODE_13F9A5:        TAY                       
CODE_13F9A6:        PLA                       
CODE_13F9A7:        CMP.w DATA_11CDA8,y               
CODE_13F9AA:        RTL                       

CODE_13F9AB:        INC $04BE                 
CODE_13F9AE:        INC $041B                 
CODE_13F9B1:        JSL CODE_1287BC           
CODE_13F9B5:        LDA #$01                  
CODE_13F9B7:        STA $0601                 
CODE_13F9BA:        RTL                       

CODE_13F9BB:        LDX #$00                  
CODE_13F9BD:        LDY $6E                   
CODE_13F9BF:        LDA $3C                   
CODE_13F9C1:        EOR.w DATA_119BBA,y               
CODE_13F9C4:        BPL CODE_13F9C8           
CODE_13F9C6:        STX $3C                   
CODE_13F9C8:        LDA $04CC                 
CODE_13F9CB:        EOR.w DATA_119BBA,y               
CODE_13F9CE:        BPL CODE_13F9D3           
CODE_13F9D0:        STX $04CC                 
CODE_13F9D3:        STX $0407                 
CODE_13F9D6:        RTL                       

CODE_13F9D7:        LDA #$02                  ; \ Pick something up animation.
CODE_13F9D9:        STA $50                   ; /
CODE_13F9DB:        STZ $078C                 
CODE_13F9DE:        LDA #$06                  ; \ Amount of frames it should take to pick the enemy up.
CODE_13F9E0:        STA $82                   ; /
CODE_13F9E2:        LDA #$08                  
CODE_13F9E4:        STA $C7                   
CODE_13F9E6:        INC $9C                   
CODE_13F9E8:        LDA #$3C                  ; \ Picking something up sound effect.
CODE_13F9EA:        STA $1DE3                 ; /
CODE_13F9ED:        RTL                       ; Return.

CODE_13F9EE:        LDY $01                   
CODE_13F9F0:        LDA $E6                   
CODE_13F9F2:        JSR CODE_13FA8F           
CODE_13F9F5:        STY $01                   
CODE_13F9F7:        STA $E6                   
CODE_13F9F9:        LDY $EB                   
CODE_13F9FB:        LDA $0001,y               
CODE_13F9FE:        STA $E9                   
CODE_13FA00:        LDA $02                   
CODE_13FA02:        CMP.w DATA_119BB7,y               
CODE_13FA05:        BCS CODE_13FA0C                   
CODE_13FA07:        LDA $01                   
CODE_13FA09:        CMP.w DATA_119BB6,y               
CODE_13FA0C:        RTS                       

CODE_13FA0D:        PHA                       
CODE_13FA0E:        LDA $29,x                 
CODE_13FA10:        CLC                       
CODE_13FA11:        ADC #$08                  
CODE_13FA13:        PHP                       
CODE_13FA14:        LSR A                     
CODE_13FA15:        LSR A                     
CODE_13FA16:        LSR A                     
CODE_13FA17:        LSR A                     
CODE_13FA18:        STA $E5                   
CODE_13FA1A:        PLP                       
CODE_13FA1B:        LDA $15,x                 
CODE_13FA1D:        LDY $EB                   
CODE_13FA1F:        BEQ CODE_13FA23           
CODE_13FA21:        ADC #$00                  
CODE_13FA23:        STA $02                   
CODE_13FA25:        LDA $33,x                 
CODE_13FA27:        CLC                       
CODE_13FA28:        ADC #$08                  
CODE_13FA2A:        AND #$F0                  
CODE_13FA2C:        STA $E6                   
CODE_13FA2E:        STA $0212                 
CODE_13FA31:        LDA $1F,x                 
CODE_13FA33:        ADC #$00                  
CODE_13FA35:        STA $01                   
CODE_13FA37:        JSR CODE_13F9EE           
CODE_13FA3A:        PLA                       
CODE_13FA3B:        BCS CODE_13FA41                   
CODE_13FA3D:        JSL CODE_128BF4           
CODE_13FA41:        RTL                       

CODE_13FA42:        LDA $0628                 
CODE_13FA45:        BNE CODE_13FA5B           
CODE_13FA47:        LDA $14                   
CODE_13FA49:        STA $0511                 
CODE_13FA4C:        LDA $28                   
CODE_13FA4E:        STA $0513                 
CODE_13FA51:        LDA $1E                   
CODE_13FA53:        STA $0512                 
CODE_13FA56:        LDA $32                   
CODE_13FA58:        STA $0514                 
CODE_13FA5B:        RTL                       

CODE_13FA5C:        LDX $E9                   
CODE_13FA5E:        JSR CODE_13FA69           
CODE_13FA61:        LDA $E6                   
CODE_13FA63:        CLC                       
CODE_13FA64:        ADC $E5                   
CODE_13FA66:        STA $E7                   
CODE_13FA68:        RTS                       

CODE_13FA69:        STY $02F5                 
CODE_13FA6C:        LDA $0628                 
CODE_13FA6F:        BEQ CODE_13FA75           
CODE_13FA71:        LDA #$00                  
CODE_13FA73:        BRA CODE_13FA7B           

CODE_13FA75:        LDY $0534                 
CODE_13FA78:        LDA.w DATA_11AB11,y               
CODE_13FA7B:        CLC                       
CODE_13FA7C:        ADC.w DATA_11AAFB,x               
CODE_13FA7F:        STA $02                   
CODE_13FA81:        LDA.w DATA_11AAF0,x               
CODE_13FA84:        STA $01                   
CODE_13FA86:        LDA.w DATA_11AB06,x               
CODE_13FA89:        STA $03                   
CODE_13FA8B:        LDY $02F5                 
CODE_13FA8E:        RTS                       

CODE_13FA8F:        STA $0F                   
CODE_13FA91:        TYA                       
CODE_13FA92:        BMI CODE_13FAA5           
CODE_13FA94:        ASL A                     
CODE_13FA95:        ASL A                     
CODE_13FA96:        ASL A                     
CODE_13FA97:        ASL A                     
CODE_13FA98:        CLC                       
CODE_13FA99:        ADC $0F                   
CODE_13FA9B:        BCS CODE_13FAA1                   
CODE_13FA9D:        CMP #$F0                  
CODE_13FA9F:        BCC CODE_13FAA5           
CODE_13FAA1:        CLC                       
CODE_13FAA2:        ADC #$10                  
CODE_13FAA4:        INY                       
CODE_13FAA5:        RTS                       

CODE_13FAA6:        LDA $0005,y               
CODE_13FAA9:        SEC                       
CODE_13FAAA:        SBC $0006,y               
CODE_13FAAD:        BPL CODE_13FAB5           
CODE_13FAAF:        EOR #$FF                  
CODE_13FAB1:        CLC                       
CODE_13FAB2:        ADC #$01                  
CODE_13FAB4:        DEX                       
CODE_13FAB5:        SEC                       
CODE_13FAB6:        SBC $09,x                 
CODE_13FAB8:        RTS                       

CODE_13FAB9:        LDA $0005,y               
CODE_13FABC:        SEC                       
CODE_13FABD:        SBC $0006,y               
CODE_13FAC0:        STA $0006,y               
CODE_13FAC3:        LDA $0001,y               
CODE_13FAC6:        SBC $0002,y               
CODE_13FAC9:        BPL CODE_13FADD           
CODE_13FACB:        EOR #$FF                  
CODE_13FACD:        PHA                       
CODE_13FACE:        LDA $0006,y               
CODE_13FAD1:        EOR #$FF                  
CODE_13FAD3:        CLC                       
CODE_13FAD4:        ADC #$01                  
CODE_13FAD6:        STA $0006,y               
CODE_13FAD9:        PLA                       
CODE_13FADA:        ADC #$00                  
CODE_13FADC:        DEX                       
CODE_13FADD:        CMP #$00                  
CODE_13FADF:        BEQ CODE_13FAE3           
CODE_13FAE1:        SEC                       
CODE_13FAE2:        RTS                       

CODE_13FAE3:        LDA $0006,y               
CODE_13FAE6:        SBC $09,x                 
CODE_13FAE8:        RTS                       

CODE_13FAE9:        TXA                       
CODE_13FAEA:        PHA                       
CODE_13FAEB:        LDY #$02                  
CODE_13FAED:        TYA                       
CODE_13FAEE:        TAX                       
CODE_13FAEF:        INX                       
CODE_13FAF0:        CPY #$00                  
CODE_13FAF2:        BNE CODE_13FAFD           
CODE_13FAF4:        LDA $EB                   
CODE_13FAF6:        BNE CODE_13FAFD           
CODE_13FAF8:        JSR CODE_13FAA6           
CODE_13FAFB:        BRA CODE_13FB00           

CODE_13FAFD:        JSR CODE_13FAB9           
CODE_13FB00:        BCS CODE_13FB0F                   
CODE_13FB02:        PHA                       
CODE_13FB03:        TYA                       
CODE_13FB04:        LSR A                     
CODE_13FB05:        TAX                       
CODE_13FB06:        PLA                       
CODE_13FB07:        STA $0426,x               
CODE_13FB0A:        DEY                       
CODE_13FB0B:        DEY                       
CODE_13FB0C:        BPL CODE_13FAED           
CODE_13FB0E:        CLC                       
CODE_13FB0F:        PLA                       
CODE_13FB10:        TAX                       
CODE_13FB11:        RTL                       

CODE_13FB12:        LDA $04C7                 
CODE_13FB15:        BEQ CODE_13FB47           
CODE_13FB17:        DEC $04C7                 
CODE_13FB1A:        REP #$20                  
CODE_13FB1C:        LDY $04C7                 
CODE_13FB1F:        BNE CODE_13FB2D           
CODE_13FB21:        TYA                       
CODE_13FB22:        AND #$0003                
CODE_13FB25:        TAX                       
CODE_13FB26:        LDA.l DATA_11AB7B,x             
CODE_13FB2A:        TXY                       
CODE_13FB2B:        BRA CODE_13FB30           

CODE_13FB2D:        LDA $04BC                 
CODE_13FB30:        STA $0C00                 
CODE_13FB33:        LDA $12D1,y               
CODE_13FB36:        STA $0C02                 
CODE_13FB39:        LDA $12D2,y               
CODE_13FB3C:        STA $0C04                 
CODE_13FB3F:        LDA $12D3,y               
CODE_13FB42:        STA $0C06                 
CODE_13FB45:        SEP #$20                  
CODE_13FB47:        LDA #$28                  
CODE_13FB49:        STA $00                   
CODE_13FB4B:        LDA $04C3                 
CODE_13FB4E:        BEQ CODE_13FB56           
CODE_13FB50:        AND #$F0                  
CODE_13FB52:        LSR A                     
CODE_13FB53:        LSR A                     
CODE_13FB54:        ADC #$04                  
CODE_13FB56:        TAX                       
CODE_13FB57:        LDY #$00                  
CODE_13FB59:        LDA #$FE                  
CODE_13FB5B:        STA $03                   
CODE_13FB5D:        LDA.l DATA_11AB63,x             
CODE_13FB61:        STA $0802,y               
CODE_13FB64:        STA $0806,y               
CODE_13FB67:        LDA #$08                  
CODE_13FB69:        STA $0800,y               
CODE_13FB6C:        LDA.l DATA_11AB63,x             
CODE_13FB70:        AND #$02                  
CODE_13FB72:        EOR #$02                  
CODE_13FB74:        CLC                       
CODE_13FB75:        ADC #$32                  
CODE_13FB77:        STA $0803,y               
CODE_13FB7A:        LDA $00                   
CODE_13FB7C:        STA $0801,y               
CODE_13FB7F:        CLC                       
CODE_13FB80:        ADC #$10                  
CODE_13FB82:        STA $00                   
CODE_13FB84:        PHY                       
CODE_13FB85:        TYA                       
CODE_13FB86:        LSR A                     
CODE_13FB87:        LSR A                     
CODE_13FB88:        TAY                       
CODE_13FB89:        LDA #$02                  
CODE_13FB8B:        STA $0A20,y               
CODE_13FB8E:        PLY                       
CODE_13FB8F:        TYA                       
CODE_13FB90:        CLC                       
CODE_13FB91:        ADC #$04                  
CODE_13FB93:        TAY                       
CODE_13FB94:        INX                       
CODE_13FB95:        INC $03                   
CODE_13FB97:        LDA $03                   
CODE_13FB99:        CMP $04C4                 
CODE_13FB9C:        BNE CODE_13FB5D           
CODE_13FB9E:        LDA $04C5                 
CODE_13FBA1:        BEQ CODE_13FBC1           
CODE_13FBA3:        DEC $04C5                 
CODE_13FBA6:        LSR A                     
CODE_13FBA7:        AND #$01                  
CODE_13FBA9:        TAY                       
CODE_13FBAA:        LDA $0206                 
CODE_13FBAD:        BPL CODE_13FBB1           
CODE_13FBAF:        INY                       
CODE_13FBB0:        INY                       
CODE_13FBB1:        PHB                       
CODE_13FBB2:        LDA #$11                  
CODE_13FBB4:        PHA                       
CODE_13FBB5:        PLB                       
CODE_13FBB6:        LDA.w DATA_11AB77,y               
CODE_13FBB9:        STA $04C6                 
CODE_13FBBC:        PLB                       
CODE_13FBBD:        JSL CODE_12BAAE           
CODE_13FBC1:        RTL                       

CODE_13FBC2:        PHX                       ; Preserve sprite index.
CODE_13FBC3:        LDX $0628                 ; \ Don't flash colours if in potion room.
CODE_13FBC6:        CPX #$02                  ;  |
CODE_13FBC8:        BEQ CODE_13FC1A           ; /
CODE_13FBCA:        REP #$20                  ; A = 16-bit
CODE_13FBCC:        AND #$00FF                ; \ If value is zero...
CODE_13FBCF:        BEQ CODE_13FBDF           ; / branch.
CODE_13FBD1:        LDA $10                   ; \ Flash through 4 different colours...
CODE_13FBD3:        AND #$0003                ;  | <--
CODE_13FBD6:        TAX                       ;  |
CODE_13FBD7:        LDA.w DATA_11AB83,x         ;  | Apparently, the 16-bit colour values interfer with eachother (no ASL is included, table is not 8 bytes long but only 5 bytes)
CODE_13FBDA:        STA $0B00                 ;  | This may complicate hex editing the colours to your likings.
CODE_13FBDD:        BRA CODE_13FBED           ; /

CODE_13FBDF:        STZ $0B00                 ; No flashing BG colour.
CODE_13FBE2:        LDA $04EF                 
CODE_13FBE5:        AND #$00FF                
CODE_13FBE8:        BNE CODE_13FC1C           
CODE_13FBEA:        LDA $04BC                 
CODE_13FBED:        STA $0712                 
CODE_13FBF0:        LSR A                     
CODE_13FBF1:        LSR A                     
CODE_13FBF2:        LSR A                     
CODE_13FBF3:        LSR A                     
CODE_13FBF4:        LSR A                     
CODE_13FBF5:        AND #$001F                
CODE_13FBF8:        SEP #$20                  
CODE_13FBFA:        ORA #$40                  
CODE_13FBFC:        STA $023E                 
CODE_13FBFF:        LDA $0712                 
CODE_13FC02:        AND #$1F                  
CODE_13FC04:        ORA #$20                  
CODE_13FC06:        STA $023D                 
CODE_13FC09:        LDA $0713                 
CODE_13FC0C:        LSR A                     
CODE_13FC0D:        LSR A                     
CODE_13FC0E:        AND #$1F                  
CODE_13FC10:        ORA #$80                  
CODE_13FC12:        STA $023F                 
CODE_13FC15:        LDA #$01                  ; \ Update palettes.
CODE_13FC17:        STA $02A9                 ; /
CODE_13FC1A:        PLX                       ; Pull sprite index.
CODE_13FC1B:        RTL                       ; Return.

CODE_13FC1C:        LDA $04BC                 
CODE_13FC1F:        STA $0B00                 
CODE_13FC22:        SEP #$20                  
CODE_13FC24:        LDX #$0A                  
CODE_13FC26:        LDA $0533                 
CODE_13FC29:        CMP #$05                  
CODE_13FC2B:        BEQ CODE_13FC45           
CODE_13FC2D:        CMP #$0F                  
CODE_13FC2F:        BNE CODE_13FC47           
CODE_13FC31:        LDA $0534                 
CODE_13FC34:        CMP #$05                  
CODE_13FC36:        BEQ CODE_13FC45           
CODE_13FC38:        CMP #$03                  
CODE_13FC3A:        BEQ CODE_13FC45           
CODE_13FC3C:        CMP #$04                  
CODE_13FC3E:        BNE CODE_13FC47           
CODE_13FC40:        LDA $051B                 
CODE_13FC43:        BEQ CODE_13FC47           
CODE_13FC45:        LDX #$05                  
CODE_13FC47:        TXA                       
CODE_13FC48:        ORA #$20                  
CODE_13FC4A:        STA $023D                 
CODE_13FC4D:        TXA                       
CODE_13FC4E:        ORA #$40                  
CODE_13FC50:        STA $023E                 
CODE_13FC53:        TXA                       
CODE_13FC54:        ORA #$80                  
CODE_13FC56:        STA $023F                 
CODE_13FC59:        BRA CODE_13FC15           ; Update palettes and return appropiately.

CODE_13FC5B:        REP #$30                  
CODE_13FC5D:        LDY #$0120                
CODE_13FC60:        LDA $0801,y               
CODE_13FC63:        AND #$00FF                
CODE_13FC66:        CMP #$00F0                
CODE_13FC69:        BNE CODE_13FC76           
CODE_13FC6B:        LDA $0805,y               
CODE_13FC6E:        AND #$00FF                
CODE_13FC71:        CMP #$00F0                
CODE_13FC74:        BEQ CODE_13FC81           
CODE_13FC76:        TYA                       
CODE_13FC77:        CLC                       
CODE_13FC78:        ADC #$0004                
CODE_13FC7B:        TAY                       
CODE_13FC7C:        CPY #$01C0                
CODE_13FC7F:        BNE CODE_13FC60           
CODE_13FC81:        STY $02F8                 
CODE_13FC84:        SEP #$30                  
CODE_13FC86:        LDX $12                   
CODE_13FC88:        RTL                       

CODE_13FC89:        LDY $0533                 ; \ Get level + room number into X index.
CODE_13FC8C:        LDA.w DATA_11D098,y         ;  | 
CODE_13FC8F:        CLC                       ;  |
CODE_13FC90:        ADC $0534                 ;  |
CODE_13FC93:        TAX                       ;  |
CODE_13FC94:        LDA.l DATA_11CF52,x         ;  | Check HDMA BG table. 
CODE_13FC98:        CMP #$FF                  ;  | If value = $FF, don't load a HDMA BG.
CODE_13FC9A:        BEQ CODE_13FCA0           ; /
CODE_13FC9C:        JSL CODE_14FAE8           ; Load HDMA BG.
CODE_13FCA0:        RTL                       ; Return.

DATA_13FCA1:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF          ; /
