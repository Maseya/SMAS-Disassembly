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
                   
CODE_138062:        C2 20         REP #$20              ; Accumulator = 16-bit.           
CODE_138064:        A9 00 E0      LDA #$E000            ; \ Load sprite GFX tiles 00-7F. (00-1F will get overwritten)
CODE_138067:        85 0D         STA $0D               ;  | ($19E000)
CODE_138069:        A2 19         LDX #$19              ;  |
CODE_13806B:        86 0F         STX $0F               ; /
CODE_13806D:        A9 00 10      LDA #$1000            ; \ Amount of bytes to transfer = #$1000. 
CODE_138070:        85 0B         STA $0B               ; /
CODE_138072:        A9 00 60      LDA #$6000            ; \ First GFX slot. 
CODE_138075:        20 E7 8A      JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_138078:        A9 00 C0      LDA #$C000            ; \ Load sprite GFX tiles 80-13F.
CODE_13807B:        85 0D         STA $0D               ;  | ($16C000)
CODE_13807D:        A2 16         LDX #$16              ;  |
CODE_13807F:        86 0F         STX $0F               ; /
CODE_138081:        A9 00 18      LDA #$1800            ; \ Amount of bytes to transfer = #$1800. 
CODE_138084:        85 0B         STA $0B               ; /
CODE_138086:        A9 00 68      LDA #$6800            ; \ Second and first half of third GFX slots. 
CODE_138089:        20 E7 8A      JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_13808C:        AD 35 06      LDA $0635             ; \ Get world number into Y, *2 into X index.
CODE_13808F:        29 FF 00      AND #$00FF            ;  |
CODE_138092:        A8            TAY                   ;  |
CODE_138093:        0A            ASL A                 ;  |
CODE_138094:        AA            TAX                   ; /
CODE_138095:        DA            PHX                   ; Hold X to get later. 
CODE_138096:        BF 00 80 13   LDA.l DATA_138000,x     ; \ Load sprite GFX tiles 140-17F from pointer.
CODE_13809A:        85 0D         STA $0D               ;  |
CODE_13809C:        BB            TYX                   ;  |
CODE_13809D:        BF 0E 80 13   LDA.l DATA_13800E,x     ;  |     
CODE_1380A1:        AA            TAX                   ;  |
CODE_1380A2:        86 0F         STX $0F               ; /
CODE_1380A4:        A9 00 08      LDA #$0800            ; \ Amount of bytes to transfer = #$0800.
CODE_1380A7:        85 0B         STA $0B               ; /
CODE_1380A9:        A9 00 74      LDA #$7400            ; \ Second half of third GFX slot. 
CODE_1380AC:        20 E7 8A      JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380AF:        FA            PLX                   ; \ Get world number * 2 back.
CODE_1380B0:        DA            PHX                   ; /
CODE_1380B1:        BF 15 80 13   LDA.l DATA_138015,x     ; \ Load sprite GFX tiles 180-1BF from pointer.
CODE_1380B5:        85 0D         STA $0D               ;  |
CODE_1380B7:        BB            TYX                   ;  |
CODE_1380B8:        BF 23 80 13   LDA.l DATA_138023,x     ;  |     
CODE_1380BC:        AA            TAX                   ;  |
CODE_1380BD:        86 0F         STX $0F               ; /
CODE_1380BF:        A9 00 08      LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_1380C2:        85 0B         STA $0B               ; /
CODE_1380C4:        A9 00 78      LDA #$7800            ; \ First half of fourth GFX slot. 
CODE_1380C7:        20 E7 8A      JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380CA:        A9 00 90      LDA #$9000            ; \ Load sprite GFX tiles 1C0-1FF.
CODE_1380CD:        85 0D         STA $0D               ;  | ($179000)
CODE_1380CF:        A2 17         LDX #$17              ;  |
CODE_1380D1:        86 0F         STX $0F               ; /
CODE_1380D3:        A9 00 08      LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_1380D6:        85 0B         STA $0B               ; /
CODE_1380D8:        A9 00 7C      LDA #$7C00            ; \ Second half of fourth GFX slot. 
CODE_1380DB:        20 E7 8A      JSR CODE_138AE7       ; / Transfer to VRAM.
CODE_1380DE:        FA            PLX                   ; \ Get world number * 2 back.
CODE_1380DF:        DA            PHX                   ; /
CODE_1380E0:        BF 38 80 13   LDA.l DATA_138038,x     ; \ Load layer GFX tiles 00-7F from pointer.      
CODE_1380E4:        85 0D         STA $0D               ;  |
CODE_1380E6:        BB            TYX                   ;  |
CODE_1380E7:        BF 46 80 13   LDA.l DATA_138046,x     ;  |     
CODE_1380EB:        AA            TAX                   ;  |
CODE_1380EC:        86 0F         STX $0F               ; /
CODE_1380EE:        A9 00 10      LDA #$1000            ; \ Amount of bytes to transfer = #$1000.
CODE_1380F1:        85 0B         STA $0B               ; /
CODE_1380F3:        A9 00 20      LDA #$2000            ; \ First GFX slot.
CODE_1380F6:        20 C4 8A      JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_1380F9:        A9 00 C0      LDA #$C000            ; \ Load layer GFX tiles 80-BF.
CODE_1380FC:        85 0D         STA $0D               ;  | ($18C000)
CODE_1380FE:        A2 18         LDX #$18              ;  |
CODE_138100:        86 0F         STX $0F               ; /
CODE_138102:        A9 00 08      LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_138105:        85 0B         STA $0B               ; /
CODE_138107:        A9 00 28      LDA #$2800            ; \ First half of second GFX slot.
CODE_13810A:        20 C4 8A      JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_13810D:        FA            PLX                   ; Get world num * 2. 
CODE_13810E:        BF 4D 80 13   LDA.l DATA_13804D,x     ; \ Load layer GFX tiles C0-FF from pointer.
CODE_138112:        85 0D         STA $0D               ;  |
CODE_138114:        BB            TYX                   ;  |
CODE_138115:        BF 5B 80 13   LDA.l DATA_13805B,x     ;  |     
CODE_138119:        AA            TAX                   ;  |
CODE_13811A:        86 0F         STX $0F               ; /
CODE_13811C:        A9 00 08      LDA #$0800            ; \ Amount of bytes to transfer = #$0800. 
CODE_13811F:        85 0B         STA $0B               ; /
CODE_138121:        A9 00 2C      LDA #$2C00            ; \ Second half of second GFX slot.
CODE_138124:        20 C4 8A      JSR CODE_138AC4       ; / Transfer to VRAM.
CODE_138127:        E2 20         SEP #$20              ; Accumulator = 8-bit.
CODE_138129:        6B            RTL                   ; Return.

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

CODE_1385DA:        AD 70 07      LDA $0770
CODE_1385DD:        F0 04         BEQ CODE_1385E3           
CODE_1385DF:        A9 06         LDA #$06                  
CODE_1385E1:        80 03         BRA CODE_1385E6           

CODE_1385E3:        AD 34 05      LDA $0534                 ; \ Get level + room number into index.
CODE_1385E6:        85 00         STA $00                   ;  |
CODE_1385E8:        64 01         STZ $01                   ;  |
CODE_1385EA:        C2 30         REP #$30                  ;  | Accumulator & Index = 16-bit.
CODE_1385EC:        AD 33 05      LDA $0533                 ;  |
CODE_1385EF:        29 FF 00      AND #$00FF                ;  |
CODE_1385F2:        AA            TAX                       ;  |
CODE_1385F3:        BF 98 D0 11   LDA.l DATA_11D098,x         ;  | 
CODE_1385F7:        29 FF 00      AND #$00FF                ;  |
CODE_1385FA:        18            CLC                       ;  |
CODE_1385FB:        65 00         ADC $00                   ;  |
CODE_1385FD:        AA            TAX                       ; /
CODE_1385FE:        BF 2A 81 13   LDA.l DATA_13812A,x         ; \ Tiles of the FG/BG slots 140-17F, high byte.
CODE_138602:        29 FF 00      AND #$00FF                ;  |
CODE_138605:        EB            XBA                       ;  |
CODE_138606:        8D CB 02      STA $02CB                 ; /
CODE_138609:        BF F2 81 13   LDA.l DATA_1381F2,x         ; \ Tiles of the FG/BG slots 180-1BF, high byte.
CODE_13860D:        29 FF 00      AND #$00FF                ;  |
CODE_138610:        EB            XBA                       ;  |
CODE_138611:        8D CD 02      STA $02CD                 ; /
CODE_138614:        BF BA 82 13   LDA.l DATA_1382BA,x         ; \ Tiles of the FG/BG slots 1C0-1FF, high byte.  
CODE_138618:        29 FF 00      AND #$00FF                ;  |
CODE_13861B:        EB            XBA                       ;  |
CODE_13861C:        8D CF 02      STA $02CF                 ; /
CODE_13861F:        BF 82 83 13   LDA.l DATA_138382,x         ; \ Tiles of the FG/BG slots 140-17F, bank byte.     
CODE_138623:        8D D1 02      STA $02D1                 ; /
CODE_138626:        BF 4A 84 13   LDA.l DATA_13844A,x         ; \ Tiles of the FG/BG slots 180-1BF, bank byte.  
CODE_13862A:        8D D3 02      STA $02D3                 ; /
CODE_13862D:        BF 12 85 13   LDA.l DATA_138512,x         ; \ Tiles of the FG/BG slots 1C0-1FF, bank byte.  
CODE_138631:        8D D5 02      STA $02D5                 ; /
CODE_138634:        E2 10         SEP #$10                  ; Index = 8-bit.
CODE_138636:        AE 35 06      LDX $0635                 ; \ If not in World 7, branch.
CODE_138639:        E0 06         CPX #$06                  ;  |
CODE_13863B:        D0 09         BNE CODE_138646           ; /
CODE_13863D:        A9 00 B0      LDA #$B000                ; \ $1DB000 = Tiles of the FG/BG slots 100-13F
CODE_138640:        85 0D         STA $0D                   ;  | Metal ground graphics.
CODE_138642:        A2 1D         LDX #$1D                  ;  |
CODE_138644:        80 07         BRA CODE_13864D           ; /

CODE_138646:        A9 00 C0      LDA #$C000                ; \ $1BC000 = Tiles of the FG/BG slots 100-13F.
CODE_138649:        85 0D         STA $0D                   ;  |
CODE_13864B:        A2 1B         LDX #$1B                  ;  |
CODE_13864D:        86 0F         STX $0F                   ; /
CODE_13864F:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138652:        85 0B         STA $0B                   ; /
CODE_138654:        A9 00 30      LDA #$3000                ; \ First half of third GFX slot.
CODE_138657:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13865A:        AD CB 02      LDA $02CB                 ; \ Load tiles 140-17F of the FG/BG slots from pointer.
CODE_13865D:        85 0D         STA $0D                   ;  |
CODE_13865F:        AE D1 02      LDX $02D1                 ;  |
CODE_138662:        86 0F         STX $0F                   ; /
CODE_138664:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138667:        85 0B         STA $0B                   ; /
CODE_138669:        A9 00 34      LDA #$3400                ; \ Second half of third GFX slot.
CODE_13866C:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13866F:        AD CD 02      LDA $02CD                 ; \ Load tiles 180-1BF of the FG/BG slots from pointer.
CODE_138672:        85 0D         STA $0D                   ;  |
CODE_138674:        AE D3 02      LDX $02D3                 ;  |
CODE_138677:        86 0F         STX $0F                   ; /
CODE_138679:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13867C:        85 0B         STA $0B                   ; /
CODE_13867E:        A9 00 38      LDA #$3800                ; \ First half of fourth GFX slot
CODE_138681:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM
CODE_138684:        AD CF 02      LDA $02CF                 ; \ Load tiles 1C0-1FF of the FG/BG slots from pointer.
CODE_138687:        85 0D         STA $0D                   ;  |
CODE_138689:        AE D5 02      LDX $02D5                 ;  |
CODE_13868C:        86 0F         STX $0F                   ; /
CODE_13868E:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138691:        85 0B         STA $0B                   ; /
CODE_138693:        A9 00 3C      LDA #$3C00                ; \ Second half of fourth GFX slot.
CODE_138696:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138699:        AE 33 05      LDX $0533                 ; \ Load different graphics for tiles C0-FF of the FG/BG slots if the following levels:
CODE_13869C:        E0 02         CPX #$02                  ;  | Level 1-3...
CODE_13869E:        F0 1C         BEQ CODE_1386BC           ;  |
CODE_1386A0:        E0 08         CPX #$08                  ;  | Level 3-3...
CODE_1386A2:        F0 18         BEQ CODE_1386BC           ;  |
CODE_1386A4:        E0 0B         CPX #$0B                  ;  | or level 4-3.
CODE_1386A6:        F0 14         BEQ CODE_1386BC           ;  |
CODE_1386A8:        E0 11         CPX #$11                  ;  | If NOT level 5-3, even different tiles are used for tiles C0-FF of the FG/BG slots.
CODE_1386AA:        D0 26         BNE CODE_1386D2           ;  |
CODE_1386AC:        AE 34 05      LDX $0534                 ;  | If it's level 5-3 and the sixth room is entered...
CODE_1386AF:        E0 05         CPX #$05                  ;  | ...use the tiles from 1-3, 3-3 and 4-3.
CODE_1386B1:        F0 09         BEQ CODE_1386BC           ;  |
CODE_1386B3:        A9 00 C8      LDA #$C800                ;  | Graphics from $18C800 are used.
CODE_1386B6:        85 0D         STA $0D                   ;  | $0800 bytes.
CODE_1386B8:        A2 18         LDX #$18                  ;  |
CODE_1386BA:        80 07         BRA CODE_1386C3           ; /

CODE_1386BC:        A9 00 90      LDA #$9000                ; \ 1-3, 3-3, 4-3 or 5-3 room 6.
CODE_1386BF:        85 0D         STA $0D                   ;  | They use graphics from $1D9000.
CODE_1386C1:        A2 1D         LDX #$1D                  ;  |
CODE_1386C3:        86 0F         STX $0F                   ;  |
CODE_1386C5:        A9 00 08      LDA #$0800                ;  | $0800 bytes also.
CODE_1386C8:        85 0B         STA $0B                   ;  |
CODE_1386CA:        A9 00 2C      LDA #$2C00                ;  | VRAM destination is where tiles C0-FF go.
CODE_1386CD:        20 C4 8A      JSR CODE_138AC4           ;  | Transfer to VRAM.
CODE_1386D0:        80 1B         BRA CODE_1386ED           ; / Branch.

CODE_1386D2:        AE 33 05      LDX $0533                 ; \ If NOT 7-2...
CODE_1386D5:        E0 13         CPX #$13                  ;  | ...then don't load any new tiles at all.
CODE_1386D7:        D0 14         BNE CODE_1386ED           ;  |
CODE_1386D9:        A9 00 A0      LDA #$A000                ;  | 7-2 uses graphics from $1DA000.
CODE_1386DC:        85 0D         STA $0D                   ;  |
CODE_1386DE:        A2 1D         LDX #$1D                  ;  |
CODE_1386E0:        86 0F         STX $0F                   ;  |
CODE_1386E2:        A9 00 08      LDA #$0800                ;  | $0800 bytes as usual.
CODE_1386E5:        85 0B         STA $0B                   ;  |
CODE_1386E7:        A9 00 2C      LDA #$2C00                ;  | VRAM destination is where tiles C0-FF go.
CODE_1386EA:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_1386ED:        A2 00         LDX #$00                  
CODE_1386EF:        8E 73 07      STX $0773                 
CODE_1386F2:        AE 33 05      LDX $0533                 ; \ Level 2-1...
CODE_1386F5:        E0 03         CPX #$03                  ;  | (If not, branch.)
CODE_1386F7:        D0 0B         BNE CODE_138704           ;  |
CODE_1386F9:        AE 34 05      LDX $0534                 ;  | The second room.
CODE_1386FC:        E0 01         CPX #$01                  ;  |
CODE_1386FE:        F0 1D         BEQ CODE_13871D           ;  |
CODE_138700:        E0 02         CPX #$02                  ;  | Or the third room.
CODE_138702:        F0 19         BEQ CODE_13871D           ; / If either, branch.
CODE_138704:        AE 33 05      LDX $0533                 ; \ Level 2-3...
CODE_138707:        E0 05         CPX #$05                  ;  | (If not, branch and return.)
CODE_138709:        D0 2B         BNE CODE_138736           ;  |
CODE_13870B:        AE 34 05      LDX $0534                 ;  |
CODE_13870E:        E0 03         CPX #$03                  ;  | The fourth room...
CODE_138710:        F0 0B         BEQ CODE_13871D           ;  |
CODE_138712:        AE 34 05      LDX $0534                 ;  | Or the sixth room...
CODE_138715:        E0 05         CPX #$05                  ;  | (Extra LDX $0534 is redundant, by the way.)
CODE_138717:        F0 04         BEQ CODE_13871D           ;  |
CODE_138719:        E0 07         CPX #$07                  ;  | Or the eighth room.
CODE_13871B:        D0 19         BNE CODE_138736           ;  | If none of these, return.
CODE_13871D:        A9 00 A8      LDA #$A800                ;  | Upload stone graphics to 100-13F.
CODE_138720:        85 0D         STA $0D                   ;  | Source: $1DA800.
CODE_138722:        A2 1D         LDX #$1D                  ;  |
CODE_138724:        86 0F         STX $0F                   ;  |
CODE_138726:        A9 00 08      LDA #$0800                ;  | Size: $0800 (x40 tiles)
CODE_138729:        85 0B         STA $0B                   ;  |
CODE_13872B:        A9 00 30      LDA #$3000                ;  | Destination: FG/BG tile slots 100-13F.
CODE_13872E:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138731:        A2 01         LDX #$01                  
CODE_138733:        8E 73 07      STX $0773                 
CODE_138736:        E2 20         SEP #$20                  ; A = 8-bit.
CODE_138738:        6B            RTL                       ; Return.

DATA_138739:        dw $8000      ; Icy ground graphics.
                    dw $9800      ; Wood graphics.
              
CODE_13873D:        C2 20         REP #$20                  ; Accumulator = 16-bit.
CODE_13873F:        AE 33 05      LDX $0533                 ; \ Check if in level 5-3.
CODE_138742:        E0 0E         CPX #$0E                  ;  |
CODE_138744:        D0 04         BNE CODE_13874A           ; / If not, branch.
CODE_138746:        A2 02         LDX #$02                  ; Layer tiles 200-23F = $1D9800.
CODE_138748:        80 03         BRA CODE_13874D           

CODE_13874A:        AE EF 04      LDX $04EF                 
CODE_13874D:        BF 39 87 13   LDA.l DATA_138739,x         ; \ Load GFX pointer for layer tiles 200-23F.
CODE_138751:        85 0D         STA $0D                   ;  | Into [$0D]
CODE_138753:        A2 1D         LDX #$1D                  ;  |
CODE_138755:        86 0F         STX $0F                   ; /
CODE_138757:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13875A:        85 0B         STA $0B                   ; /
CODE_13875C:        A9 00 40      LDA #$4000                ; \ First half of fifth GFX slot.
CODE_13875F:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138762:        A9 00 90      LDA #$9000                ; \ Layer tiles 240-27F pointer into [$0D]
CODE_138765:        85 0D         STA $0D                   ;  | ($1D9000)
CODE_138767:        A2 1D         LDX #$1D                  ;  |
CODE_138769:        86 0F         STX $0F                   ; /
CODE_13876B:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_13876E:        85 0B         STA $0B                   ; /
CODE_138770:        A9 00 44      LDA #$4400                ; \ Second half of fifth GFX slot.
CODE_138773:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_138776:        E2 20         SEP #$20                  ; Accumulator = 8-bit.
CODE_138778:        6B            RTL                       ; Return.

DATA_138779:        db $18,$38,$58,$75,$91,$B0,$C3
            
CODE_138780:        A9 06         LDA #$06                  
CODE_138782:        85 00         STA $00                   
CODE_138784:        AE 33 05      LDX $0533                 
CODE_138787:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_13878B:        18            CLC                       
CODE_13878C:        6D 34 05      ADC $0534                 
CODE_13878F:        A6 00         LDX $00                   
CODE_138791:        DF 79 87 13   CMP.l DATA_138779,x             
CODE_138795:        F0 06         BEQ CODE_13879D           
CODE_138797:        CA            DEX                       
CODE_138798:        10 F7         BPL CODE_138791           
CODE_13879A:        82 3A 00      BRL CODE_1387D7           

CODE_13879D:        E0 06         CPX #$06                  
CODE_13879F:        D0 1A         BNE CODE_1387BB           
CODE_1387A1:        DA            PHX                       
CODE_1387A2:        C2 20         REP #$20                  
CODE_1387A4:        A9 00 F8      LDA #$F800                
CODE_1387A7:        85 0D         STA $0D                   
CODE_1387A9:        A2 17         LDX #$17                  
CODE_1387AB:        86 0F         STX $0F                   
CODE_1387AD:        A9 00 08      LDA #$0800                
CODE_1387B0:        85 0B         STA $0B                   
CODE_1387B2:        A9 00 78      LDA #$7800                
CODE_1387B5:        20 E7 8A      JSR CODE_138AE7           
CODE_1387B8:        E2 20         SEP #$20                  
CODE_1387BA:        FA            PLX                       
CODE_1387BB:        8A            TXA                       
CODE_1387BC:        0A            ASL A                     
CODE_1387BD:        AA            TAX                       
CODE_1387BE:        C2 20         REP #$20                  
CODE_1387C0:        BF 2A 80 13   LDA.l DATA_13802A,x             
CODE_1387C4:        85 0D         STA $0D                   
CODE_1387C6:        A2 17         LDX #$17                  
CODE_1387C8:        86 0F         STX $0F                   
CODE_1387CA:        A9 00 08      LDA #$0800                
CODE_1387CD:        85 0B         STA $0B                   
CODE_1387CF:        A9 00 7C      LDA #$7C00                
CODE_1387D2:        20 E7 8A      JSR CODE_138AE7           
CODE_1387D5:        E2 20         SEP #$20                  
CODE_1387D7:        6B            RTL                       

CODE_1387D8:        C2 20         REP #$20                  
CODE_1387DA:        A9 00 80      LDA #$8000                
CODE_1387DD:        85 0D         STA $0D                   
CODE_1387DF:        A2 19         LDX #$19                  
CODE_1387E1:        86 0F         STX $0F                   
CODE_1387E3:        A9 00 08      LDA #$0800                
CODE_1387E6:        85 0B         STA $0B                   
CODE_1387E8:        A9 00 20      LDA #$2000                
CODE_1387EB:        20 C4 8A      JSR CODE_138AC4           
CODE_1387EE:        A9 00 A0      LDA #$A000                
CODE_1387F1:        85 0D         STA $0D                   
CODE_1387F3:        A2 19         LDX #$19                  
CODE_1387F5:        86 0F         STX $0F                   
CODE_1387F7:        A9 00 08      LDA #$0800                
CODE_1387FA:        85 0B         STA $0B                   
CODE_1387FC:        A9 00 24      LDA #$2400                
CODE_1387FF:        20 C4 8A      JSR CODE_138AC4           
CODE_138802:        A9 00 90      LDA #$9000                
CODE_138805:        85 0D         STA $0D                   
CODE_138807:        A2 19         LDX #$19                  
CODE_138809:        86 0F         STX $0F                   
CODE_13880B:        A9 00 08      LDA #$0800                
CODE_13880E:        85 0B         STA $0B                   
CODE_138810:        A9 00 28      LDA #$2800                
CODE_138813:        20 C4 8A      JSR CODE_138AC4           
CODE_138816:        A9 00 F0      LDA #$F000                
CODE_138819:        85 0D         STA $0D                   
CODE_13881B:        A2 19         LDX #$19                  
CODE_13881D:        86 0F         STX $0F                   
CODE_13881F:        A9 00 08      LDA #$0800                
CODE_138822:        85 0B         STA $0B                   
CODE_138824:        A9 00 2C      LDA #$2C00                
CODE_138827:        20 C4 8A      JSR CODE_138AC4           
CODE_13882A:        E2 20         SEP #$20                  
CODE_13882C:        6B            RTL                       

CODE_13882D:        C2 20         REP #$20                  
CODE_13882F:        A9 00 88      LDA #$8800                
CODE_138832:        85 0D         STA $0D                   
CODE_138834:        A2 19         LDX #$19                  
CODE_138836:        86 0F         STX $0F                   
CODE_138838:        A9 00 08      LDA #$0800                
CODE_13883B:        85 0B         STA $0B                   
CODE_13883D:        A9 00 24      LDA #$2400                
CODE_138840:        20 C4 8A      JSR CODE_138AC4           
CODE_138843:        E2 20         SEP #$20                  
CODE_138845:        6B            RTL                       

CODE_138846:        C2 20         REP #$20                  
CODE_138848:        A9 00 B0      LDA #$B000                
CODE_13884B:        85 0D         STA $0D                   
CODE_13884D:        A2 19         LDX #$19                  
CODE_13884F:        86 0F         STX $0F                   
CODE_138851:        A9 00 10      LDA #$1000                
CODE_138854:        85 0B         STA $0B                   
CODE_138856:        A9 00 30      LDA #$3000                
CODE_138859:        20 C4 8A      JSR CODE_138AC4           
CODE_13885C:        A9 00 A8      LDA #$A800                
CODE_13885F:        85 0D         STA $0D                   
CODE_138861:        A2 19         LDX #$19                  
CODE_138863:        86 0F         STX $0F                   
CODE_138865:        A9 00 08      LDA #$0800                
CODE_138868:        85 0B         STA $0B                   
CODE_13886A:        A9 00 38      LDA #$3800                
CODE_13886D:        20 C4 8A      JSR CODE_138AC4           
CODE_138870:        A9 00 98      LDA #$9800                
CODE_138873:        85 0D         STA $0D                   
CODE_138875:        A2 19         LDX #$19                  
CODE_138877:        86 0F         STX $0F                   
CODE_138879:        A9 00 08      LDA #$0800                
CODE_13887C:        85 0B         STA $0B                   
CODE_13887E:        A9 00 3C      LDA #$3C00                
CODE_138881:        20 C4 8A      JSR CODE_138AC4           
CODE_138884:        E2 20         SEP #$20                  
CODE_138886:        6B            RTL                       

CODE_138887:        C2 20         REP #$20                  
CODE_138889:        A9 00 B0      LDA #$B000                
CODE_13888C:        85 0D         STA $0D                   
CODE_13888E:        A2 17         LDX #$17                  
CODE_138890:        86 0F         STX $0F                   
CODE_138892:        A9 00 08      LDA #$0800                
CODE_138895:        85 0B         STA $0B                   
CODE_138897:        A9 00 34      LDA #$3400                
CODE_13889A:        20 C4 8A      JSR CODE_138AC4           
CODE_13889D:        E2 20         SEP #$20                  
CODE_13889F:        6B            RTL                       

CODE_1388A0:        C2 20         REP #$20                  
CODE_1388A2:        A9 00 C0      LDA #$C000                
CODE_1388A5:        85 0D         STA $0D                   
CODE_1388A7:        A2 19         LDX #$19                  
CODE_1388A9:        86 0F         STX $0F                   
CODE_1388AB:        A9 00 08      LDA #$0800                
CODE_1388AE:        85 0B         STA $0B                   
CODE_1388B0:        A9 00 2C      LDA #$2C00                
CODE_1388B3:        20 C4 8A      JSR CODE_138AC4           
CODE_1388B6:        A9 00 98      LDA #$9800                
CODE_1388B9:        85 0D         STA $0D                   
CODE_1388BB:        A2 19         LDX #$19                  
CODE_1388BD:        86 0F         STX $0F                   
CODE_1388BF:        A9 00 08      LDA #$0800                
CODE_1388C2:        85 0B         STA $0B                   
CODE_1388C4:        A9 00 3C      LDA #$3C00                
CODE_1388C7:        20 C4 8A      JSR CODE_138AC4           
CODE_1388CA:        A9 00 08      LDA #$0800                
CODE_1388CD:        85 0B         STA $0B                   
CODE_1388CF:        A9 00 B8      LDA #$B800                
CODE_1388D2:        85 0D         STA $0D                   
CODE_1388D4:        A2 17         LDX #$17                  
CODE_1388D6:        86 0F         STX $0F                   
CODE_1388D8:        A9 00 7C      LDA #$7C00                
CODE_1388DB:        20 E7 8A      JSR CODE_138AE7           
CODE_1388DE:        A9 00 08      LDA #$0800                
CODE_1388E1:        85 0B         STA $0B                   
CODE_1388E3:        A9 00 C0      LDA #$C000                
CODE_1388E6:        85 0D         STA $0D                   
CODE_1388E8:        A2 17         LDX #$17                  
CODE_1388EA:        86 0F         STX $0F                   
CODE_1388EC:        A9 00 78      LDA #$7800                
CODE_1388EF:        20 E7 8A      JSR CODE_138AE7           
CODE_1388F2:        E2 20         SEP #$20                  
CODE_1388F4:        6B            RTL                       

CODE_1388F5:        C2 20         REP #$20                  ; Accumulator = 16-bit.
CODE_1388F7:        A9 00 80      LDA #$8000                ; \ Layer tiles 00-3F.
CODE_1388FA:        85 0D         STA $0D                   ;  | ($1A8000)
CODE_1388FC:        A2 1A         LDX #$1A                  ;  |
CODE_1388FE:        86 0F         STX $0F                   ; /
CODE_138900:        A9 00 08      LDA #$0800                ; \ Amount of bytes to transfer = #$0800.
CODE_138903:        85 0B         STA $0B                   ; /
CODE_138905:        A9 00 20      LDA #$2000                ; \ First half of first GFX slot.
CODE_138908:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13890B:        A9 00 C8      LDA #$C800                ; \ Layer tiles 40-FF.
CODE_13890E:        85 0D         STA $0D                   ;  | ($19C800)
CODE_138910:        A2 19         LDX #$19                  ;  |
CODE_138912:        86 0F         STX $0F                   ; /
CODE_138914:        A9 00 18      LDA #$1800                ; \ Amount of bytes to transfer = #$1800.
CODE_138917:        85 0B         STA $0B                   ; /
CODE_138919:        A9 00 24      LDA #$2400                ; \ Second half of first and full second GFX slot.
CODE_13891C:        20 C4 8A      JSR CODE_138AC4           ; / Transfer to VRAM.
CODE_13891F:        A9 00 40      LDA #$4000                ; \ Amount of bytes to transfer = #$4000.
CODE_138922:        85 0B         STA $0B                   ; /
CODE_138924:        A9 00 80      LDA #$8000                ; \ Sprite tiles 00-1FF.
CODE_138927:        85 0D         STA $0D                   ;  | ($1B8000)
CODE_138929:        A2 1B         LDX #$1B                  ;  |
CODE_13892B:        86 0F         STX $0F                   ; /
CODE_13892D:        A9 00 60      LDA #$6000                ; \ All four GFX slots.
CODE_138930:        20 E7 8A      JSR CODE_138AE7           ; / Transfer to VRAM.
CODE_138933:        E2 20         SEP #$20                  ; Accumulator = 8-bit.
CODE_138935:        6B            RTL                       ; Return.

CODE_138936:        8B            PHB                       
CODE_138937:        4B            PHK                       
CODE_138938:        AB            PLB                       
CODE_138939:        C2 20         REP #$20                  
CODE_13893B:        A9 00 D0      LDA #$D000                
CODE_13893E:        85 0D         STA $0D                   
CODE_138940:        A2 18         LDX #$18                  
CODE_138942:        86 0F         STX $0F                   
CODE_138944:        A9 00 08      LDA #$0800                
CODE_138947:        85 0B         STA $0B                   
CODE_138949:        A9 00 20      LDA #$2000                
CODE_13894C:        20 C4 8A      JSR CODE_138AC4           
CODE_13894F:        A9 00 F0      LDA #$F000                
CODE_138952:        85 0D         STA $0D                   
CODE_138954:        A2 1C         LDX #$1C                  
CODE_138956:        86 0F         STX $0F                   
CODE_138958:        A9 00 08      LDA #$0800                
CODE_13895B:        85 0B         STA $0B                   
CODE_13895D:        A9 00 24      LDA #$2400                
CODE_138960:        20 C4 8A      JSR CODE_138AC4           
CODE_138963:        A9 00 F8      LDA #$F800                
CODE_138966:        85 0D         STA $0D                   
CODE_138968:        A2 19         LDX #$19                  
CODE_13896A:        86 0F         STX $0F                   
CODE_13896C:        A9 00 08      LDA #$0800                
CODE_13896F:        85 0B         STA $0B                   
CODE_138971:        A9 00 28      LDA #$2800                
CODE_138974:        20 C4 8A      JSR CODE_138AC4           
CODE_138977:        A9 00 B0      LDA #$B000                
CODE_13897A:        85 0D         STA $0D                   
CODE_13897C:        A2 1B         LDX #$1B                  
CODE_13897E:        86 0F         STX $0F                   
CODE_138980:        A9 00 08      LDA #$0800                
CODE_138983:        85 0B         STA $0B                   
CODE_138985:        A9 00 2C      LDA #$2C00                
CODE_138988:        20 C4 8A      JSR CODE_138AC4           
CODE_13898B:        A9 00 98      LDA #$9800                
CODE_13898E:        85 0D         STA $0D                   
CODE_138990:        A2 19         LDX #$19                  
CODE_138992:        86 0F         STX $0F                   
CODE_138994:        A9 00 08      LDA #$0800                
CODE_138997:        85 0B         STA $0B                   
CODE_138999:        A9 00 3C      LDA #$3C00                
CODE_13899C:        20 C4 8A      JSR CODE_138AC4           
CODE_13899F:        E2 20         SEP #$20                  
CODE_1389A1:        AB            PLB                       
CODE_1389A2:        6B            RTL                       

CODE_1389A3:        8B            PHB                       
CODE_1389A4:        4B            PHK                       
CODE_1389A5:        AB            PLB                       
CODE_1389A6:        C2 20         REP #$20                  
CODE_1389A8:        A9 00 80      LDA #$8000                
CODE_1389AB:        85 0D         STA $0D                   
CODE_1389AD:        A2 1E         LDX #$1E                  
CODE_1389AF:        86 0F         STX $0F                   
CODE_1389B1:        A9 00 10      LDA #$1000                
CODE_1389B4:        85 0B         STA $0B                   
CODE_1389B6:        A9 00 58      LDA #$5800                
CODE_1389B9:        20 C4 8A      JSR CODE_138AC4           
CODE_1389BC:        E2 20         SEP #$20                  
CODE_1389BE:        AB            PLB                       
CODE_1389BF:        6B            RTL                       

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
                
CODE_138A10:        C2 20         REP #$20                  
CODE_138A12:        AD 59 07      LDA $0759                 
CODE_138A15:        29 FF 00      AND #$00FF                
CODE_138A18:        F0 20         BEQ CODE_138A3A           
CODE_138A1A:        CE 59 07      DEC $0759                 
CODE_138A1D:        3A            DEC A                     
CODE_138A1E:        AA            TAX                       
CODE_138A1F:        BF E0 89 13   LDA.l DATA_1389E0,x             
CODE_138A23:        85 0F         STA $0F                   
CODE_138A25:        8A            TXA                       
CODE_138A26:        0A            ASL A                     
CODE_138A27:        AA            TAX                       
CODE_138A28:        BF C0 89 13   LDA.l DATA_1389C0,x             
CODE_138A2C:        85 0D         STA $0D                   
CODE_138A2E:        A9 00 02      LDA #$0200                
CODE_138A31:        85 0B         STA $0B                   
CODE_138A33:        BF F0 89 13   LDA.l DATA_1389F0,x             
CODE_138A37:        20 C4 8A      JSR CODE_138AC4           
CODE_138A3A:        AD 22 07      LDA $0722                 
CODE_138A3D:        29 FF 00      AND #$00FF                
CODE_138A40:        F0 20         BEQ CODE_138A62           
CODE_138A42:        C9 02 00      CMP #$0002                
CODE_138A45:        F0 07         BEQ CODE_138A4E           
CODE_138A47:        A9 00 E0      LDA #$E000                
CODE_138A4A:        A2 1A         LDX #$1A                  
CODE_138A4C:        80 05         BRA CODE_138A53           

CODE_138A4E:        A9 00 D0      LDA #$D000                
CODE_138A51:        A2 16         LDX #$16                  
CODE_138A53:        85 0D         STA $0D                   
CODE_138A55:        86 0F         STX $0F                   
CODE_138A57:        A9 00 08      LDA #$0800                
CODE_138A5A:        85 0B         STA $0B                   
CODE_138A5C:        A9 00 70      LDA #$7000                
CODE_138A5F:        20 E7 8A      JSR CODE_138AE7           
CODE_138A62:        E2 20         SEP #$20                  
CODE_138A64:        9C 22 07      STZ $0722                 
CODE_138A67:        6B            RTL                       

CODE_138A68:        C2 20         REP #$20                  
CODE_138A6A:        A9 00 80      LDA #$8000                
CODE_138A6D:        85 0D         STA $0D                   
CODE_138A6F:        A2 19         LDX #$19                  
CODE_138A71:        86 0F         STX $0F                   
CODE_138A73:        A9 00 20      LDA #$2000                
CODE_138A76:        85 0B         STA $0B                   
CODE_138A78:        20 C4 8A      JSR CODE_138AC4           
CODE_138A7B:        A9 00 B8      LDA #$B800                
CODE_138A7E:        85 0D         STA $0D                   
CODE_138A80:        A2 1B         LDX #$1B                  
CODE_138A82:        86 0F         STX $0F                   
CODE_138A84:        A9 00 08      LDA #$0800                
CODE_138A87:        85 0B         STA $0B                   
CODE_138A89:        A9 00 78      LDA #$7800                
CODE_138A8C:        20 E7 8A      JSR CODE_138AE7           
CODE_138A8F:        E2 20         SEP #$20                  
CODE_138A91:        6B            RTL                       

CODE_138A92:        C2 20         REP #$20                  
CODE_138A94:        A9 00 88      LDA #$8800                
CODE_138A97:        85 0D         STA $0D                   
CODE_138A99:        A2 1D         LDX #$1D                  
CODE_138A9B:        86 0F         STX $0F                   
CODE_138A9D:        A9 00 08      LDA #$0800                
CODE_138AA0:        85 0B         STA $0B                   
CODE_138AA2:        A9 00 2C      LDA #$2C00                
CODE_138AA5:        20 C4 8A      JSR CODE_138AC4           
CODE_138AA8:        E2 20         SEP #$20                  
CODE_138AAA:        6B            RTL                       

CODE_138AAB:        C2 20         REP #$20                  
CODE_138AAD:        A9 00 98      LDA #$9800                
CODE_138AB0:        85 0D         STA $0D                   
CODE_138AB2:        A2 1D         LDX #$1D                  
CODE_138AB4:        86 0F         STX $0F                   
CODE_138AB6:        A9 00 08      LDA #$0800                
CODE_138AB9:        85 0B         STA $0B                   
CODE_138ABB:        A9 00 40      LDA #$4000                
CODE_138ABE:        20 C4 8A      JSR CODE_138AC4           
CODE_138AC1:        E2 20         SEP #$20                  
CODE_138AC3:        6B            RTL                       

CODE_138AC4:        A2 80         LDX #$80                  ; \ Increment after write to $2119.
CODE_138AC6:        8E 15 21      STX $2115                 ;  | Increment source&destination addresses by 1.
CODE_138AC9:        8D 16 21      STA $2116                 ;  | 16-bit value in A determines destination in VRAM.
CODE_138ACC:        A9 01         LDA #$01                  ;  | 1 byte per reg (2 regs, low byte in $reg, high byte in $reg+1).
CODE_138ACE:        18            CLC                       ;  | Clear carry.
CODE_138ACF:        8D 00 43      STA $4300                 ;  | -------------^
CODE_138AD2:        A5 0D         LDA $0D                   ;  | [$0D] holds the source address.
CODE_138AD4:        8D 02 43      STA $4302                 ;  |
CODE_138AD7:        A6 0F         LDX $0F                   ;  |
CODE_138AD9:        8E 04 43      STX $4304                 ;  |
CODE_138ADC:        A5 0B         LDA $0B                   ;  | $0B (16-bit) holds the size.
CODE_138ADE:        8D 05 43      STA $4305                 ;  |
CODE_138AE1:        A2 01         LDX #$01                  ;  | Data transfer here.
CODE_138AE3:        8E 0B 42      STX $420B                 ;  |
CODE_138AE6:        60            RTS                       ; / Return.

CODE_138AE7:        A2 80         LDX #$80                  
CODE_138AE9:        8E 15 21      STX $2115                 
CODE_138AEC:        8D 16 21      STA $2116                 
CODE_138AEF:        A9 01         LDA #$01                  
CODE_138AF1:        18            CLC                       
CODE_138AF2:        8D 00 43      STA $4300                 
CODE_138AF5:        A5 0D         LDA $0D                   
CODE_138AF7:        8D 02 43      STA $4302                 
CODE_138AFA:        A6 0F         LDX $0F                   
CODE_138AFC:        8E 04 43      STX $4304                 
CODE_138AFF:        A5 0B         LDA $0B                   
CODE_138B01:        8D 05 43      STA $4305                 
CODE_138B04:        A2 01         LDX #$01                  
CODE_138B06:        8E 0B 42      STX $420B                 
CODE_138B09:        60            RTS                       

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
                      
CODE_138B2A:        0B            PHD                       
CODE_138B2B:        C2 20         REP #$20                  
CODE_138B2D:        A9 00 43      LDA #$4300                
CODE_138B30:        5B            TCD                       
CODE_138B31:        A4 FE         LDY $FE                   
CODE_138B33:        C0 80         CPY #$80                  
CODE_138B35:        F0 0D         BEQ CODE_138B44           
CODE_138B37:        AC 17 02      LDY $0217                 
CODE_138B3A:        D0 0C         BNE CODE_138B48           
CODE_138B3C:        AC 5E 02      LDY $025E                 
CODE_138B3F:        F0 03         BEQ CODE_138B44           
CODE_138B41:        4C 7D 8C      JMP CODE_138C7D           

CODE_138B44:        E2 20         SEP #$20                  
CODE_138B46:        2B            PLD                       
CODE_138B47:        6B            RTL                       

CODE_138B48:        A2 80         LDX #$80                  
CODE_138B4A:        8E 15 21      STX $2115                 
CODE_138B4D:        A9 01         LDA #$01                  
CODE_138B4F:        18            CLC                       
CODE_138B50:        85 00         STA $00                   
CODE_138B52:        AE 22 07      LDX $0722                 
CODE_138B55:        D0 63         BNE CODE_138BBA           
CODE_138B57:        85 10         STA $10                   
CODE_138B59:        85 20         STA $20                   
CODE_138B5B:        A2 2F         LDX #$2F                  
CODE_138B5D:        86 04         STX $04                   
CODE_138B5F:        86 14         STX $14                   
CODE_138B61:        A2 16         LDX #$16                  
CODE_138B63:        86 24         STX $24                   
CODE_138B65:        A9 40 00      LDA #$0040                  
CODE_138B68:        85 05         STA $05
CODE_138B6A:        85 15         STA $15                  
CODE_138B6C:        A9 C0 00      LDA #$00C0                                 
CODE_138B6F:        85 25         STA $25                   
CODE_138B71:        A9 00 60      LDA #$6000                       
CODE_138B74:        8D 16 21      STA $2116                 
CODE_138B77:        AD 10 00      LDA $0010                 
CODE_138B7A:        29 38 00      AND #$0038                  
CODE_138B7D:        4A            LSR A
CODE_138B7E:        4A            LSR A                     
CODE_138B7F:        AA            TAX                       
CODE_138B80:        AD ED 02      LDA $02ED                 
CODE_138B83:        85 02         STA $02                   
CODE_138B85:        AD F1 02      LDA $02F1                 
CODE_138B88:        85 12         STA $12                   
CODE_138B8A:        BF 0A 8B 13   LDA.l DATA_138B0A,x             
CODE_138B8E:        85 22         STA $22                   
CODE_138B90:        A0 07         LDY #$07                  
CODE_138B92:        8C 0B 42      STY $420B                 
CODE_138B95:        A9 40 00      LDA #$0040                  
CODE_138B98:        85 05         STA $05                  
CODE_138B9A:        85 15         STA $15                   
CODE_138B9C:        A9 C0 00      LDA #$00C0                               
CODE_138B9F:        85 25         STA $25                   
CODE_138BA1:        A9 00 61      LDA #$6100                  
CODE_138BA4:        8D 16 21      STA $2116                 
CODE_138BA7:        AD EF 02      LDA $02EF                 
CODE_138BAA:        85 02         STA $02                   
CODE_138BAC:        AD F3 02      LDA $02F3                 
CODE_138BAF:        85 12         STA $12                   
CODE_138BB1:        BF 1A 8B 13   LDA.l DATA_138B1A,x             
CODE_138BB5:        85 22         STA $22                   
CODE_138BB7:        8C 0B 42      STY $420B                 
CODE_138BBA:        A9 00 02      LDA #$0200                 
CODE_138BBD:        85 05         STA $05                 
CODE_138BBF:        AD 65 07      LDA $0765                       
CODE_138BC2:        8D 16 21      STA $2116                 
CODE_138BC5:        AD 1B 02      LDA $021B                 
CODE_138BC8:        85 02         STA $02                   
CODE_138BCA:        AC 88 07      LDY $0788                 
CODE_138BCD:        84 04         STY $04                   
CODE_138BCF:        A2 01         LDX #$01                  
CODE_138BD1:        8E 0B 42      STX $420B                 
CODE_138BD4:        A9 40 00      LDA #$0040                  
CODE_138BD7:        85 05         STA $05
CODE_138BD9:        A9 E0 22      LDA #$22E0                
CODE_138BDC:        8D 16 21      STA $2116                 
CODE_138BDF:        AD 52 02      LDA $0252                 
CODE_138BE2:        85 02         STA $02                   
CODE_138BE4:        84 04         STY $04                   
CODE_138BE6:        8E 0B 42      STX $420B                 
CODE_138BE9:        E2 20         SEP #$20                  
CODE_138BEB:        2B            PLD                       
CODE_138BEC:        6B            RTL                       

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
                   
CODE_138C0B:        AD 5E 02      LDA $025E          
CODE_138C0E:        F0 03         BEQ CODE_138C13
CODE_138C10:        4C CE 8C      JMP CODE_138CCE

CODE_138C13:        EE 67 07      INC $0767       
CODE_138C16:        AD 67 07      LDA $0767                 
CODE_138C19:        C9 03         CMP #$03                  
CODE_138C1B:        90 03         BCC CODE_138C20           
CODE_138C1D:        9C 67 07      STZ $0767                 
CODE_138C20:        EE 19 02      INC $0219                 
CODE_138C23:        AD 19 02      LDA $0219                 
CODE_138C26:        C9 08         CMP #$08                  
CODE_138C28:        90 06         BCC CODE_138C30           
CODE_138C2A:        EE 1A 02      INC $021A                 
CODE_138C2D:        9C 19 02      STZ $0219                 
CODE_138C30:        AD 1A 02      LDA $021A                 
CODE_138C33:        29 07         AND #$07                  
CODE_138C35:        0A            ASL A                     
CODE_138C36:        AA            TAX                       
CODE_138C37:        C2 20         REP #$20                  
CODE_138C39:        BF ED 8B 13   LDA.l DATA_138BED,x             
CODE_138C3D:        8D 1B 02      STA $021B                 
CODE_138C40:        AD 67 07      LDA $0767                 
CODE_138C43:        29 FF 00      AND #$00FF                
CODE_138C46:        0A            ASL A                     
CODE_138C47:        AA            TAX                       
CODE_138C48:        AD 1B 02      LDA $021B                 
CODE_138C4B:        18            CLC                       
CODE_138C4C:        7F FD 8B 13   ADC.l DATA_138BFD,x             
CODE_138C50:        8D 1B 02      STA $021B                 
CODE_138C53:        BF 03 8C 13   LDA.l DATA_138C03,x             
CODE_138C57:        8D 65 07      STA $0765                 
CODE_138C5A:        AE 87 07      LDX $0787                 
CODE_138C5D:        BF 09 8C 13   LDA.l DATA_138C09,x             
CODE_138C61:        29 FF 00      AND #$00FF                
CODE_138C64:        A8            TAY                       
CODE_138C65:        8C 88 07      STY $0788                 
CODE_138C68:        A5 10         LDA $10                   
CODE_138C6A:        29 07 00      AND #$0007                
CODE_138C6D:        0A            ASL A                     
CODE_138C6E:        AA            TAX                       
CODE_138C6F:        BF ED 8B 13   LDA.l DATA_138BED,x             
CODE_138C73:        18            CLC                       
CODE_138C74:        69 C0 05      ADC #$05C0                
CODE_138C77:        8D 52 02      STA $0252                 
CODE_138C7A:        E2 20         SEP #$20                  
CODE_138C7C:        6B            RTL                       

CODE_138C7D:        A2 80         LDX #$80                  
CODE_138C7F:        8E 15 21      STX $2115                 
CODE_138C82:        A9 01 18      LDA #$1801                           
CODE_138C85:        85 00         STA $00                   
CODE_138C87:        A9 00 08      LDA #$0800               
CODE_138C8A:        85 05         STA $05                   
CODE_138C8C:        A9 00 20      LDA #$2000                  
CODE_138C8F:        8D 16 21      STA $2116           
CODE_138C92:        AD 1B 02      LDA $021B
CODE_138C95:        85 02         STA $02                       
CODE_138C97:        A0 1A         LDY #$1A                  
CODE_138C99:        84 04         STY $04                   
CODE_138C9B:        A2 01         LDX #$01                  
CODE_138C9D:        8E 0B 42      STX $420B                 
CODE_138CA0:        E2 20         SEP #$20                  
CODE_138CA2:        2B            PLD                       
CODE_138CA3:        6B            RTL                       

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
                
CODE_138CCE:        A5 15         LDA $15                   
CODE_138CD0:        0A            ASL A                     
CODE_138CD1:        AA            TAX                       
CODE_138CD2:        C2 20         REP #$20                  
CODE_138CD4:        AD 5E 02      LDA $025E                 
CODE_138CD7:        29 03 00      AND #$0003                
CODE_138CDA:        C9 02 00      CMP #$0002                
CODE_138CDD:        F0 09         BEQ CODE_138CE8           
CODE_138CDF:        BF A4 8C 13   LDA.l DATA_138CA4,x             
CODE_138CE3:        8D 1B 02      STA $021B                 
CODE_138CE6:        80 07         BRA CODE_138CEF           

CODE_138CE8:        BF C0 8C 13   LDA.l DATA_138CC0,x             
CODE_138CEC:        8D 1B 02      STA $021B                 
CODE_138CEF:        E2 20         SEP #$20                  
CODE_138CF1:        6B            RTL                       

CODE_138CF2:        A9 04         LDA #$04                  
CODE_138CF4:        8D 99 11      STA $1199                 
CODE_138CF7:        8D 9B 11      STA $119B                 
CODE_138CFA:        8D 9D 11      STA $119D                 
CODE_138CFD:        8D 9F 11      STA $119F                 
CODE_138D00:        8D A1 11      STA $11A1                 
CODE_138D03:        8D A3 11      STA $11A3                 
CODE_138D06:        8D A5 11      STA $11A5                 
CODE_138D09:        8D A7 11      STA $11A7                 
CODE_138D0C:        8D A9 11      STA $11A9                 
CODE_138D0F:        8D AB 11      STA $11AB                 
CODE_138D12:        8D AD 11      STA $11AD                 
CODE_138D15:        8D AF 11      STA $11AF                 
CODE_138D18:        8D B1 11      STA $11B1                 
CODE_138D1B:        8D B3 11      STA $11B3                 
CODE_138D1E:        8D B5 11      STA $11B5                 
CODE_138D21:        8D B7 11      STA $11B7                 
CODE_138D24:        6B            RTL                       

CODE_138D25:        9C 99 11      STZ $1199                 
CODE_138D28:        9C 9B 11      STZ $119B                 
CODE_138D2B:        9C 9D 11      STZ $119D                 
CODE_138D2E:        9C 9F 11      STZ $119F                 
CODE_138D31:        9C A1 11      STZ $11A1                 
CODE_138D34:        9C A3 11      STZ $11A3                 
CODE_138D37:        9C A5 11      STZ $11A5                 
CODE_138D3A:        9C A7 11      STZ $11A7                 
CODE_138D3D:        9C A9 11      STZ $11A9                 
CODE_138D40:        9C AB 11      STZ $11AB                 
CODE_138D43:        9C AD 11      STZ $11AD                 
CODE_138D46:        9C AF 11      STZ $11AF                 
CODE_138D49:        9C B1 11      STZ $11B1                 
CODE_138D4C:        9C B3 11      STZ $11B3                 
CODE_138D4F:        9C B5 11      STZ $11B5                 
CODE_138D52:        9C B7 11      STZ $11B7                 
CODE_138D55:        6B            RTL                       

CODE_138D56:        C2 20         REP #$20                  
CODE_138D58:        A2 2E         LDX #$2E                  
CODE_138D5A:        BD C6 BB      LDA.w DATA_11BBC6,x               
CODE_138D5D:        9D 00 14      STA $1400,x               
CODE_138D60:        CA            DEX                       
CODE_138D61:        CA            DEX                       
CODE_138D62:        10 F6         BPL CODE_138D5A           
CODE_138D64:        E2 20         SEP #$20                  
CODE_138D66:        6B            RTL                       

CODE_138D67:        A2 23         LDX #$23                  
CODE_138D69:        BF 33 EC 15   LDA.l DATA_15EC33,x             
CODE_138D6D:        9D 94 11      STA $1194,x               
CODE_138D70:        CA            DEX                       
CODE_138D71:        10 F6         BPL CODE_138D69           
CODE_138D73:        6B            RTL                       

CODE_138D74:        A5 FC         LDA $FC                   
CODE_138D76:        29 10         AND #$10                  
CODE_138D78:        F0 1C         BEQ CODE_138D96           
CODE_138D7A:        AE 35 06      LDX $0635                 
CODE_138D7D:        EE 33 05      INC $0533                 
CODE_138D80:        AD 33 05      LDA $0533                 
CODE_138D83:        8D E8 04      STA $04E8                 
CODE_138D86:        DD B5 C9      CMP.w DATA_11C9B4+1,x               
CODE_138D89:        D0 36         BNE CODE_138DC1           
CODE_138D8B:        BD B4 C9      LDA.w DATA_11C9B4,x               
CODE_138D8E:        8D 33 05      STA $0533                 
CODE_138D91:        8D E8 04      STA $04E8                 
CODE_138D94:        80 2B         BRA CODE_138DC1           

CODE_138D96:        A5 FC         LDA $FC                   
CODE_138D98:        29 20         AND #$20                  
CODE_138D9A:        D0 03         BNE CODE_138D9F           
CODE_138D9C:        82 87 00      BRL CODE_138E26           

CODE_138D9F:        EE 35 06      INC $0635                 
CODE_138DA2:        AE 35 06      LDX $0635                 
CODE_138DA5:        8E 05 04      STX $0405                 
CODE_138DA8:        BD B4 C9      LDA.w DATA_11C9B4,x               
CODE_138DAB:        8D 33 05      STA $0533                 
CODE_138DAE:        8D E8 04      STA $04E8                 
CODE_138DB1:        E0 07         CPX #$07                  
CODE_138DB3:        D0 0C         BNE CODE_138DC1           
CODE_138DB5:        9C 35 06      STZ $0635                 
CODE_138DB8:        9C 05 04      STZ $0405                 
CODE_138DBB:        9C 33 05      STZ $0533                 
CODE_138DBE:        9C E8 04      STZ $04E8                 
CODE_138DC1:        AD 35 06      LDA $0635                 
CODE_138DC4:        1A            INC A                     
CODE_138DC5:        09 80         ORA #$80                  
CODE_138DC7:        8D 8E 11      STA $118E                 
CODE_138DCA:        A9 0C         LDA #$0C                  
CODE_138DCC:        8D 8F 11      STA $118F                 
CODE_138DCF:        A0 0C         LDY #$0C                  
CODE_138DD1:        A9 BF         LDA #$BF                  
CODE_138DD3:        99 6C 11      STA $116C,y               
CODE_138DD6:        A9 00         LDA #$00                  
CODE_138DD8:        99 6D 11      STA $116D,y               
CODE_138DDB:        88            DEY                       
CODE_138DDC:        88            DEY                       
CODE_138DDD:        10 F2         BPL CODE_138DD1           
CODE_138DDF:        AC 35 06      LDY $0635                 
CODE_138DE2:        AD 33 05      LDA $0533                 
CODE_138DE5:        38            SEC                       
CODE_138DE6:        F9 B4 C9      SBC.w DATA_11C9B4,y               
CODE_138DE9:        8D 29 06      STA $0629                 
CODE_138DEC:        18            CLC                       
CODE_138DED:        69 81         ADC #$81                  
CODE_138DEF:        8D 92 11      STA $1192                 
CODE_138DF2:        A9 0C         LDA #$0C                  
CODE_138DF4:        8D 93 11      STA $1193                 
CODE_138DF7:        B9 B5 C9      LDA.w DATA_11C9B4+1,y               
CODE_138DFA:        38            SEC                       
CODE_138DFB:        F9 B4 C9      SBC.w DATA_11C9B4,y               
CODE_138DFE:        85 03         STA $03                   
CODE_138E00:        A2 00         LDX #$00                  
CODE_138E02:        9B            TXY                       
CODE_138E03:        A9 EB         LDA #$EB                  
CODE_138E05:        EC 29 06      CPX $0629                 
CODE_138E08:        D0 02         BNE CODE_138E0C           
CODE_138E0A:        A9 EC         LDA #$EC                  
CODE_138E0C:        99 6C 11      STA $116C,y               
CODE_138E0F:        A9 1C         LDA #$1C                  
CODE_138E11:        99 6D 11      STA $116D,y               
CODE_138E14:        C8            INY                       
CODE_138E15:        C8            INY                       
CODE_138E16:        C8            INY                       
CODE_138E17:        C8            INY                       
CODE_138E18:        E8            INX                       
CODE_138E19:        E4 03         CPX $03                   
CODE_138E1B:        90 E6         BCC CODE_138E03           
CODE_138E1D:        A9 FF         LDA #$FF                  
CODE_138E1F:        8D 94 11      STA $1194                 
CODE_138E22:        A9 08         LDA #$08                  
CODE_138E24:        85 11         STA $11                   
CODE_138E26:        6B            RTL                       
CODE_138E27:        A0 C0         LDY #$C0                  
CODE_138E29:        C9 0A         CMP #$0A                  
CODE_138E2B:        90 05         BCC CODE_138E32           
CODE_138E2D:        E9 0A         SBC #$0A                  
CODE_138E2F:        C8            INY                       
CODE_138E30:        80 F7         BRA CODE_138E29           

CODE_138E32:        09 C0         ORA #$C0                  
CODE_138E34:        C0 C0         CPY #$C0                  
CODE_138E36:        D0 02         BNE CODE_138E3A           

CODE_138E38:        A0 BF         LDY #$BF                  
CODE_138E3A:        60            RTS                       

CODE_138E3B:        8B            PHB                       
CODE_138E3C:        4B            PHK                       
CODE_138E3D:        AB            PLB                       
CODE_138E3E:        A9 00         LDA #$00                  
CODE_138E40:        8D 35 02      STA $0235                 
CODE_138E43:        A9 00         LDA #$00                  
CODE_138E45:        8D 36 02      STA $0236                 
CODE_138E48:        A9 CA         LDA #$CA                  
CODE_138E4A:        8D 37 02      STA $0237                 
CODE_138E4D:        A9 15         LDA #$15                  
CODE_138E4F:        8D 2A 21      STA $212A                 
CODE_138E52:        A9 06         LDA #$06                  
CODE_138E54:        8D 2B 21      STA $212B                 
CODE_138E57:        A9 41         LDA #$41                  
CODE_138E59:        8D 70 43      STA $4370                 
CODE_138E5C:        A9 26         LDA #$26                  
CODE_138E5E:        8D 71 43      STA $4371                 
CODE_138E61:        A9 DD         LDA #$DD                  
CODE_138E63:        8D 72 43      STA $4372                 
CODE_138E66:        A9 8E         LDA #$8E                  
CODE_138E68:        8D 73 43      STA $4373                 
CODE_138E6B:        A9 13         LDA #$13                  
CODE_138E6D:        8D 74 43      STA $4374                 
CODE_138E70:        A9 7F         LDA #$7F                  
CODE_138E72:        8D 77 43      STA $4377                 
CODE_138E75:        A9 41         LDA #$41                  
CODE_138E77:        8D 30 43      STA $4330                 
CODE_138E7A:        A9 28         LDA #$28                  
CODE_138E7C:        8D 31 43      STA $4331                 
CODE_138E7F:        A9 E4         LDA #$E4                  
CODE_138E81:        8D 32 43      STA $4332                 
CODE_138E84:        A9 8E         LDA #$8E                  
CODE_138E86:        8D 33 43      STA $4333                 
CODE_138E89:        A9 13         LDA #$13                  
CODE_138E8B:        8D 34 43      STA $4334                 
CODE_138E8E:        A9 7F         LDA #$7F                  
CODE_138E90:        8D 37 43      STA $4337                 
CODE_138E93:        A9 10         LDA #$10                  
CODE_138E95:        8D 38 02      STA $0238                 
CODE_138E98:        A9 B7         LDA #$B7                  
CODE_138E9A:        8D 39 02      STA $0239                 
CODE_138E9D:        A9 20         LDA #$20                  
CODE_138E9F:        8D 3D 02      STA $023D                 
CODE_138EA2:        0A            ASL A                     
CODE_138EA3:        8D 3E 02      STA $023E                 
CODE_138EA6:        0A            ASL A                     
CODE_138EA7:        8D 3F 02      STA $023F                 
CODE_138EAA:        9C 3C 02      STZ $023C                 
CODE_138EAD:        9C 44 02      STZ $0244                 
CODE_138EB0:        A9 13         LDA #$13                  
CODE_138EB2:        8D 43 02      STA $0243                 
CODE_138EB5:        8D 3B 02      STA $023B                 
CODE_138EB8:        AD BC 04      LDA $04BC                 
CODE_138EBB:        8D 00 0B      STA $0B00                 
CODE_138EBE:        AD BD 04      LDA $04BD                 
CODE_138EC1:        8D 01 0B      STA $0B01                 
CODE_138EC4:        A9 01         LDA #$01                  
CODE_138EC6:        8D A9 02      STA $02A9                 
CODE_138EC9:        9C 3A 02      STZ $023A                 
CODE_138ECC:        9C 2B 02      STZ $022B                 
CODE_138ECF:        9C 29 02      STZ $0229                 
CODE_138ED2:        9C 32 02      STZ $0232                 
CODE_138ED5:        9C 40 02      STZ $0240                 
CODE_138ED8:        9C 45 02      STZ $0245                 
CODE_138EDB:        AB            PLB                       
CODE_138EDC:        6B            RTL                       

DATA_138EDD:        db $F0,$00,$F0,$F0,$E0,$F0,$00,$F0
                    db $00,$F2,$F0,$E0,$F2,$00
            
CODE_138EEB:        C2 30         REP #$30                  
CODE_138EED:        AD 2B 02      LDA $022B                 
CODE_138EF0:        29 FF 00      AND #$00FF                
CODE_138EF3:        0A            ASL A                     
CODE_138EF4:        AA            TAX                       
CODE_138EF5:        BF B7 8F 13   LDA.l DATA_138FB7,x             
CODE_138EF9:        8D 12 07      STA $0712                 
CODE_138EFC:        BF C1 8F 13   LDA.l DATA_138FC1,x             
CODE_138F00:        8D 14 07      STA $0714                 
CODE_138F03:        BF CB 8F 13   LDA.l DATA_138FCB,x             
CODE_138F07:        8D 16 07      STA $0716                 
CODE_138F0A:        AF C9 8F 13   LDA.l DATA_138FC9               
CODE_138F0E:        8D 18 07      STA $0718                 
CODE_138F11:        AF BF 8F 13   LDA.l DATA_138FBF               
CODE_138F15:        AA            TAX                       
CODE_138F16:        A9 FF 00      LDA #$00FF                
CODE_138F19:        EC 14 07      CPX $0714                 
CODE_138F1C:        B0 08         BCS CODE_138F26                   
CODE_138F1E:        EC 12 07      CPX $0712                 
CODE_138F21:        90 03         BCC CODE_138F26           
CODE_138F23:        AD 16 07      LDA $0716                 
CODE_138F26:        9F 00 F0 7F   STA $7FF000,x             
CODE_138F2A:        E8            INX                       
CODE_138F2B:        E8            INX                       
CODE_138F2C:        EC 18 07      CPX $0718                 
CODE_138F2F:        D0 E5         BNE CODE_138F16           
CODE_138F31:        A9 66 00      LDA #$0066                
CODE_138F34:        AA            TAX                       
CODE_138F35:        A9 3B C4      LDA #$C43B                
CODE_138F38:        9F 00 F2 7F   STA $7FF200,x             
CODE_138F3C:        E8            INX                       
CODE_138F3D:        E8            INX                       
CODE_138F3E:        E0 3A 01      CPX #$013A                
CODE_138F41:        D0 F2         BNE CODE_138F35           
CODE_138F43:        E2 30         SEP #$30                  
CODE_138F45:        AD 32 02      LDA $0232                 
CODE_138F48:        D0 5F         BNE CODE_138FA9           
CODE_138F4A:        A9 CA         LDA #$CA                  
CODE_138F4C:        8D 37 02      STA $0237                 
CODE_138F4F:        A2 FF         LDX #$FF                  
CODE_138F51:        A0 FC         LDY #$FC                  
CODE_138F53:        AD 31 02      LDA $0231                 
CODE_138F56:        D0 04         BNE CODE_138F5C           
CODE_138F58:        A2 01         LDX #$01                  
CODE_138F5A:        A0 04         LDY #$04                  
CODE_138F5C:        98            TYA                       
CODE_138F5D:        18            CLC                       
CODE_138F5E:        6D 45 02      ADC $0245                 
CODE_138F61:        8D 45 02      STA $0245                 
CODE_138F64:        AD 3D 02      LDA $023D                 
CODE_138F67:        29 20         AND #$20                  
CODE_138F69:        0D 45 02      ORA $0245                 
CODE_138F6C:        8D 3D 02      STA $023D                 
CODE_138F6F:        AD 3E 02      LDA $023E                 
CODE_138F72:        29 40         AND #$40                  
CODE_138F74:        0D 45 02      ORA $0245                 
CODE_138F77:        8D 3E 02      STA $023E                 
CODE_138F7A:        AD 3F 02      LDA $023F                 
CODE_138F7D:        29 80         AND #$80                  
CODE_138F7F:        0D 45 02      ORA $0245                 
CODE_138F82:        8D 3F 02      STA $023F                 
CODE_138F85:        8A            TXA                       
CODE_138F86:        18            CLC                       
CODE_138F87:        6D 2B 02      ADC $022B                 
CODE_138F8A:        8D 2B 02      STA $022B                 
CODE_138F8D:        30 06         BMI CODE_138F95           
CODE_138F8F:        C9 05         CMP #$05                  
CODE_138F91:        F0 0C         BEQ CODE_138F9F           
CODE_138F93:        80 14         BRA CODE_138FA9           

CODE_138F95:        9C 2B 02      STZ $022B                 
CODE_138F98:        A9 02         LDA #$02                  
CODE_138F9A:        8D 22 07      STA $0722                 
CODE_138F9D:        80 05         BRA CODE_138FA4           

CODE_138F9F:        A9 C0         LDA #$C0                  
CODE_138FA1:        8D 37 02      STA $0237                 
CODE_138FA4:        A9 01         LDA #$01                  
CODE_138FA6:        8D 32 02      STA $0232                 
CODE_138FA9:        A9 88         LDA #$88                  
CODE_138FAB:        8D 3A 02      STA $023A                 
CODE_138FAE:        A9 17         LDA #$17                  
CODE_138FB0:        8D 43 02      STA $0243                 
CODE_138FB3:        8D 3B 02      STA $023B                 
CODE_138FB6:        6B            RTL                       

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
                
CODE_138FD5:        8B            PHB                       
CODE_138FD6:        A9 7F         LDA #$7F                  
CODE_138FD8:        48            PHA                       
CODE_138FD9:        AB            PLB                       
CODE_138FDA:        C2 30         REP #$30                  
CODE_138FDC:        A2 A0 01      LDX #$01A0                
CODE_138FDF:        A9 FF 00      LDA #$00FF                
CODE_138FE2:        9D 00 F0      STA $F000,x               
CODE_138FE5:        9D 02 F0      STA $F002,x               
CODE_138FE8:        9D 04 F0      STA $F004,x               
CODE_138FEB:        9D 06 F0      STA $F006,x               
CODE_138FEE:        9D 08 F0      STA $F008,x               
CODE_138FF1:        9D 0A F0      STA $F00A,x               
CODE_138FF4:        9D 0C F0      STA $F00C,x               
CODE_138FF7:        9D 0E F0      STA $F00E,x               
CODE_138FFA:        9D 10 F0      STA $F010,x               
CODE_138FFD:        9D 12 F0      STA $F012,x               
CODE_139000:        9D 14 F0      STA $F014,x               
CODE_139003:        9D 16 F0      STA $F016,x               
CODE_139006:        9D 18 F0      STA $F018,x               
CODE_139009:        9D 1A F0      STA $F01A,x               
CODE_13900C:        9D 1C F0      STA $F01C,x               
CODE_13900F:        9D 1E F0      STA $F01E,x               
CODE_139012:        9D 00 F2      STA $F200,x               
CODE_139015:        9D 02 F2      STA $F202,x               
CODE_139018:        9D 04 F2      STA $F204,x               
CODE_13901B:        9D 06 F2      STA $F206,x               
CODE_13901E:        9D 08 F2      STA $F208,x               
CODE_139021:        9D 0A F2      STA $F20A,x               
CODE_139024:        9D 0C F2      STA $F20C,x               
CODE_139027:        9D 0E F2      STA $F20E,x               
CODE_13902A:        9D 10 F2      STA $F210,x               
CODE_13902D:        9D 12 F2      STA $F212,x               
CODE_139030:        9D 14 F2      STA $F214,x               
CODE_139033:        9D 16 F2      STA $F216,x               
CODE_139036:        9D 18 F2      STA $F218,x               
CODE_139039:        9D 1A F2      STA $F21A,x               
CODE_13903C:        9D 1C F2      STA $F21C,x               
CODE_13903F:        9D 1E F2      STA $F21E,x               
CODE_139042:        8A            TXA                       
CODE_139043:        38            SEC                       
CODE_139044:        E9 20 00      SBC #$0020                
CODE_139047:        AA            TAX                       
CODE_139048:        10 95         BPL CODE_138FDF           
CODE_13904A:        E2 30         SEP #$30                  
CODE_13904C:        AB            PLB                       
CODE_13904D:        6B            RTL                       

CODE_13904E:        A2 FF         LDX #$FF                  
CODE_139050:        BF 63 C5 14   LDA.l DATA_14C563,x             
CODE_139054:        9D BB 14      STA $14BB,x               
CODE_139057:        CA            DEX                       
CODE_139058:        E0 FF         CPX #$FF                  
CODE_13905A:        D0 F4         BNE CODE_139050           
CODE_13905C:        8E C5 14      STX $14C5                 
CODE_13905F:        20 67 90      JSR CODE_139067           
CODE_139062:        A9 02         LDA #$02                  
CODE_139064:        85 11         STA $11                   
CODE_139066:        6B            RTL                       

CODE_139067:        AE 35 06      LDX $0635                 
CODE_13906A:        AC 33 05      LDY $0533                 
CODE_13906D:        C8            INY                       
CODE_13906E:        98            TYA                       
CODE_13906F:        20 C9 90      JSR CODE_1390C9           
CODE_139072:        E8            INX                       
CODE_139073:        8A            TXA                       
CODE_139074:        09 00         ORA #$00                  
CODE_139076:        8D BF 14      STA $14BF                 
CODE_139079:        AC EE 04      LDY $04EE                 
CODE_13907C:        88            DEY                       
CODE_13907D:        98            TYA                       
CODE_13907E:        20 C9 90      JSR CODE_1390C9           
CODE_139081:        8C C9 14      STY $14C9                 
CODE_139084:        8D CB 14      STA $14CB                 
CODE_139087:        A0 0C         LDY #$0C                  
CODE_139089:        A9 2F         LDA #$2F                  
CODE_13908B:        99 CD 14      STA $14CD,y               
CODE_13908E:        88            DEY                       
CODE_13908F:        88            DEY                       
CODE_139090:        C0 02         CPY #$02                  
CODE_139092:        D0 F5         BNE CODE_139089           
CODE_139094:        AC 35 06      LDY $0635                 
CODE_139097:        AD 33 05      LDA $0533                 
CODE_13909A:        38            SEC                       
CODE_13909B:        F9 B4 C9      SBC.w DATA_11C9B4,y               
CODE_13909E:        8D 29 06      STA $0629                 
CODE_1390A1:        18            CLC                       
CODE_1390A2:        69 01         ADC #$01                  
CODE_1390A4:        8D C3 14      STA $14C3                 
CODE_1390A7:        B9 B5 C9      LDA.w DATA_11C9B4+1,y               
CODE_1390AA:        38            SEC                       
CODE_1390AB:        F9 B4 C9      SBC.w DATA_11C9B4,y               
CODE_1390AE:        85 03         STA $03                   
CODE_1390B0:        A2 00         LDX #$00                  
CODE_1390B2:        9B            TXY                       
CODE_1390B3:        A9 FD         LDA #$FD                  
CODE_1390B5:        EC 29 06      CPX $0629                 
CODE_1390B8:        D0 02         BNE CODE_1390BC           
CODE_1390BA:        A9 F6         LDA #$F6                  
CODE_1390BC:        99 D1 14      STA $14D1,y               
CODE_1390BF:        C8            INY                       
CODE_1390C0:        C8            INY                       
CODE_1390C1:        C8            INY                       
CODE_1390C2:        C8            INY                       
CODE_1390C3:        E8            INX                       
CODE_1390C4:        E4 03         CPX $03                   
CODE_1390C6:        90 EB         BCC CODE_1390B3           
CODE_1390C8:        60            RTS                       
CODE_1390C9:        A0 00         LDY #$00                  
CODE_1390CB:        C9 0A         CMP #$0A                  
CODE_1390CD:        90 06         BCC CODE_1390D5           
CODE_1390CF:        E9 0A         SBC #$0A                  
CODE_1390D1:        C8            INY                       
CODE_1390D2:        4C CB 90      JMP CODE_1390CB           

CODE_1390D5:        09 00         ORA #$00                  
CODE_1390D7:        C0 00         CPY #$00                  
CODE_1390D9:        D0 02         BNE CODE_1390DD           
CODE_1390DB:        A0 2F         LDY #$2F                  
CODE_1390DD:        60            RTS                       

CODE_1390DE:        B5 38         LDA $38,x                 
CODE_1390E0:        0A            ASL A                     
CODE_1390E1:        0A            ASL A                     
CODE_1390E2:        0A            ASL A                     
CODE_1390E3:        0A            ASL A                     
CODE_1390E4:        18            CLC                       
CODE_1390E5:        75 3E         ADC $3E,x                 
CODE_1390E7:        95 3E         STA $3E,x                 
CODE_1390E9:        A0 00         LDY #$00                  
CODE_1390EB:        B5 38         LDA $38,x                 
CODE_1390ED:        08            PHP                       
CODE_1390EE:        4A            LSR A                     
CODE_1390EF:        4A            LSR A                     
CODE_1390F0:        4A            LSR A                     
CODE_1390F1:        4A            LSR A                     
CODE_1390F2:        28            PLP                       
CODE_1390F3:        10 03         BPL CODE_1390F8           
CODE_1390F5:        09 F0         ORA #$F0                  
CODE_1390F7:        88            DEY                       
CODE_1390F8:        75 44         ADC $44,x                 
CODE_1390FA:        95 44         STA $44,x                 
CODE_1390FC:        98            TYA                       
CODE_1390FD:        75 4A         ADC $4A,x                 
CODE_1390FF:        95 4A         STA $4A,x                 
CODE_139101:        6B            RTL                       

DATA_139102:        db $E0,$E2,$E4,$E6,$E8,$EA,$EC,$EE
                    db $C0,$C2,$C4,$C6,$C8,$CA
                 
CODE_139110:        AD 29 04      LDA $0429                 
CODE_139113:        8D 12 07      STA $0712                 
CODE_139116:        AD 1F 02      LDA $021F                 
CODE_139119:        8D 13 07      STA $0713                 
CODE_13911C:        C2 20         REP #$20                  
CODE_13911E:        AD 12 07      LDA $0712                 
CODE_139121:        10 07         BPL CODE_13912A           
CODE_139123:        C9 80 FF      CMP #$FF80                
CODE_139126:        B0 09         BCS CODE_139131                   
CODE_139128:        80 0D         BRA CODE_139137           

CODE_13912A:        C9 80 01      CMP #$0180                
CODE_13912D:        90 02         BCC CODE_139131           
CODE_13912F:        80 06         BRA CODE_139137           

CODE_139131:        E2 20         SEP #$20                  
CODE_139133:        A5 EE         LDA $EE                   
CODE_139135:        F0 03         BEQ CODE_13913A           
CODE_139137:        E2 20         SEP #$20                  
CODE_139139:        6B            RTL                       

CODE_13913A:        AD 2C 04      LDA $042C                 
CODE_13913D:        85 01         STA $01                   
CODE_13913F:        B5 6F         LDA $6F,x                 
CODE_139141:        4A            LSR A                     
CODE_139142:        08            PHP                       
CODE_139143:        B5 65         LDA $65,x                 
CODE_139145:        29 80         AND #$80                  
CODE_139147:        28            PLP                       
CODE_139148:        90 02         BCC CODE_13914C           
CODE_13914A:        09 40         ORA #$40                  
CODE_13914C:        85 02         STA $02                   
CODE_13914E:        C2 30         REP #$30                  
CODE_139150:        AC F6 02      LDY $02F6                 
CODE_139153:        B5 9F         LDA $9F,x                 
CODE_139155:        29 FF 00      AND #$00FF                
CODE_139158:        0A            ASL A                     
CODE_139159:        AA            TAX                       
CODE_13915A:        AD 12 07      LDA $0712                 
CODE_13915D:        18            CLC                       
CODE_13915E:        69 10 00      ADC #$0010                
CODE_139161:        E2 20         SEP #$20                  
CODE_139163:        EB            XBA                       
CODE_139164:        8D 14 07      STA $0714                 
CODE_139167:        AD 12 07      LDA $0712                 
CODE_13916A:        99 00 08      STA $0800,y               
CODE_13916D:        18            CLC                       
CODE_13916E:        69 10         ADC #$10                  
CODE_139170:        99 04 08      STA $0804,y               
CODE_139173:        A5 01         LDA $01                   
CODE_139175:        99 01 08      STA $0801,y               
CODE_139178:        99 05 08      STA $0805,y               
CODE_13917B:        BF 02 91 13   LDA.l DATA_139102,x             
CODE_13917F:        99 02 08      STA $0802,y               
CODE_139182:        BF 03 91 13   LDA.l DATA_139102+1,x             
CODE_139186:        99 06 08      STA $0806,y               
CODE_139189:        A5 02         LDA $02                   
CODE_13918B:        09 23         ORA #$23                  
CODE_13918D:        99 03 08      STA $0803,y               
CODE_139190:        99 07 08      STA $0807,y               
CODE_139193:        29 40         AND #$40                  
CODE_139195:        F0 0E         BEQ CODE_1391A5           
CODE_139197:        B9 02 08      LDA $0802,y               
CODE_13919A:        48            PHA                       
CODE_13919B:        B9 06 08      LDA $0806,y               
CODE_13919E:        99 02 08      STA $0802,y               
CODE_1391A1:        68            PLA                       
CODE_1391A2:        99 06 08      STA $0806,y               
CODE_1391A5:        C2 20         REP #$20                  
CODE_1391A7:        98            TYA                       
CODE_1391A8:        4A            LSR A                     
CODE_1391A9:        4A            LSR A                     
CODE_1391AA:        A8            TAY                       
CODE_1391AB:        E2 20         SEP #$20                  
CODE_1391AD:        AD 13 07      LDA $0713                 
CODE_1391B0:        10 03         BPL CODE_1391B5           
CODE_1391B2:        49 FF         EOR #$FF                  
CODE_1391B4:        1A            INC A                     
CODE_1391B5:        29 01         AND #$01                  
CODE_1391B7:        09 02         ORA #$02                  
CODE_1391B9:        99 20 0A      STA $0A20,y               
CODE_1391BC:        AD 14 07      LDA $0714                 
CODE_1391BF:        10 03         BPL CODE_1391C4           
CODE_1391C1:        49 FF         EOR #$FF                  
CODE_1391C3:        1A            INC A                     
CODE_1391C4:        29 01         AND #$01                  
CODE_1391C6:        09 02         ORA #$02                  
CODE_1391C8:        99 21 0A      STA $0A21,y               
CODE_1391CB:        E2 10         SEP #$10                  
CODE_1391CD:        A6 12         LDX $12                   
CODE_1391CF:        6B            RTL                       

DATA_1391D0:        db $1D,$21,$2C,$1C,$1F,$2A

DATA_1391D6:        db $0A,$02,$0A,$04,$0A,$06
          
CODE_1391DC:        DA            PHX              
CODE_1391DD:        B5 90         LDA $90,x                 
CODE_1391DF:        A2 05         LDX #$05                  
CODE_1391E1:        DF D0 91 13   CMP.l DATA_1391D0,x             
CODE_1391E5:        F0 08         BEQ CODE_1391EF           
CODE_1391E7:        CA            DEX                       
CODE_1391E8:        10 F7         BPL CODE_1391E1           
CODE_1391EA:        A5 08         LDA $08                   
CODE_1391EC:        18            CLC                       
CODE_1391ED:        80 18         BRA CODE_139207           

CODE_1391EF:        AE 54 02      LDX $0254                 
CODE_1391F2:        BF D6 91 13   LDA.l DATA_1391D6,x             
CODE_1391F6:        8D 12 07      STA $0712                 
CODE_1391F9:        AD 13 02      LDA $0213                 
CODE_1391FC:        29 F1         AND #$F1                  
CODE_1391FE:        0D 12 07      ORA $0712                 
CODE_139201:        8D 13 02      STA $0213                 
CODE_139204:        A5 08         LDA $08                   
CODE_139206:        38            SEC                       
CODE_139207:        FA            PLX                       
CODE_139208:        6B            RTL                       

DATA_139209:        db $C4,$D4,$C5

DATA_13920C:        db $FD,$FF,$0B,$00
            
CODE_139210:        B5 90         LDA $90,x           
CODE_139212:        C9 37         CMP #$37               
CODE_139214:        D0 3C         BNE CODE_139252
CODE_139216:        A5 10         LDA $10               
CODE_139218:        29 03         AND #$03                  
CODE_13921A:        D0 02         BNE CODE_13921E           
CODE_13921C:        F6 9F         INC $9F,x                 
CODE_13921E:        B5 9F         LDA $9F,x                 
CODE_139220:        C9 03         CMP #$03                  
CODE_139222:        90 04         BCC CODE_139228           
CODE_139224:        A9 00         LDA #$00                  
CODE_139226:        74 9F         STZ $9F,x                 
CODE_139228:        8D 14 07      STA $0714                 
CODE_13922B:        AD 29 04      LDA $0429                 
CODE_13922E:        8D 12 07      STA $0712                 
CODE_139231:        AD 1F 02      LDA $021F                 
CODE_139234:        8D 13 07      STA $0713                 
CODE_139237:        C2 20         REP #$20                  
CODE_139239:        AD 12 07      LDA $0712                 
CODE_13923C:        10 07         BPL CODE_139245           
CODE_13923E:        C9 80 FF      CMP #$FF80                
CODE_139241:        B0 09         BCS CODE_13924C                   
CODE_139243:        80 0D         BRA CODE_139252           

CODE_139245:        C9 80 01      CMP #$0180                
CODE_139248:        90 02         BCC CODE_13924C           
CODE_13924A:        80 06         BRA CODE_139252           

CODE_13924C:        E2 20         SEP #$20                  
CODE_13924E:        A5 EE         LDA $EE                   
CODE_139250:        F0 03         BEQ CODE_139255           
CODE_139252:        E2 20         SEP #$20                  
CODE_139254:        6B            RTL                       

CODE_139255:        B5 6F         LDA $6F,x                 
CODE_139257:        3A            DEC A                     
CODE_139258:        0A            ASL A                     
CODE_139259:        AA            TAX                       
CODE_13925A:        C2 20         REP #$20                  
CODE_13925C:        BF 0C 92 13   LDA.l DATA_13920C,x             
CODE_139260:        18            CLC                       
CODE_139261:        6D 12 07      ADC $0712                 
CODE_139264:        8D 12 07      STA $0712                 
CODE_139267:        E2 20         SEP #$20                  
CODE_139269:        AE 14 07      LDX $0714                 
CODE_13926C:        BF 09 92 13   LDA.l DATA_139209,x             
CODE_139270:        8D 16 07      STA $0716                 
CODE_139273:        C2 30         REP #$30                  
CODE_139275:        AD F6 02      LDA $02F6                 
CODE_139278:        18            CLC                       
CODE_139279:        69 04 00      ADC #$0004                
CODE_13927C:        A8            TAY                       
CODE_13927D:        E2 20         SEP #$20                  
CODE_13927F:        AD 12 07      LDA $0712                 
CODE_139282:        99 00 08      STA $0800,y               
CODE_139285:        AD 2C 04      LDA $042C                 
CODE_139288:        18            CLC                       
CODE_139289:        69 FB         ADC #$FB                  
CODE_13928B:        99 01 08      STA $0801,y               
CODE_13928E:        AD 16 07      LDA $0716                 
CODE_139291:        99 02 08      STA $0802,y               
CODE_139294:        A9 24         LDA #$24                  
CODE_139296:        99 03 08      STA $0803,y               
CODE_139299:        C2 20         REP #$20                  
CODE_13929B:        98            TYA                       
CODE_13929C:        4A            LSR A                     
CODE_13929D:        4A            LSR A                     
CODE_13929E:        A8            TAY                       
CODE_13929F:        E2 20         SEP #$20                  
CODE_1392A1:        AD 13 07      LDA $0713                 
CODE_1392A4:        10 03         BPL CODE_1392A9           
CODE_1392A6:        49 FF         EOR #$FF                  
CODE_1392A8:        1A            INC A                     
CODE_1392A9:        29 01         AND #$01                  
CODE_1392AB:        99 20 0A      STA $0A20,y               
CODE_1392AE:        E2 10         SEP #$10                  
CODE_1392B0:        A6 12         LDX $12                   
CODE_1392B2:        6B            RTL                       

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
                                            
CODE_139300:        0A            ASL A
CODE_139301:        AA            TAX
CODE_139302:        7C 05 93      JMP (PNTR_139305,x)           

PNTR_139305:        dw CODE_1393DC
                    dw CODE_1393DC
             
CODE_139309:        0A            ASL           
CODE_13930A:        AA            TAX                       
CODE_13930B:        7C 0E 93      JMP (PNTR_13930E,x)             

PNTR_13930E:        dw CODE_139439
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
               
CODE_139318:        AD 0F 05      LDA $050F                
CODE_13931B:        0A            ASL A
CODE_13931C:        AA            TAX
CODE_13931D:        7C 20 93      JMP (PNTR_139320,x)             

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
                                   
CODE_1393DC:        B7 05         LDA [$05],y
CODE_1393DE:        38            SEC
CODE_1393DF:        E9 70         SBC #$70                  
CODE_1393E1:        4A            LSR A                     
CODE_1393E2:        4A            LSR A                     
CODE_1393E3:        4A            LSR A                     
CODE_1393E4:        4A            LSR A                     
CODE_1393E5:        AA            TAX                       
CODE_1393E6:        BF DA 93 13   LDA.l DATA_1393DA,x             
CODE_1393EA:        8D 12 07      STA $0712                 
CODE_1393ED:        AD 0E 05      LDA $050E                 
CODE_1393F0:        85 08         STA $08                   
CODE_1393F2:        A5 E9         LDA $E9                   
CODE_1393F4:        85 0E         STA $0E                   
CODE_1393F6:        A6 0E         LDX $0E                   
CODE_1393F8:        20 DC 97      JSR CODE_1397DC           
CODE_1393FB:        A2 07         LDX #$07                  
CODE_1393FD:        A5 E7         LDA $E7                   
CODE_1393FF:        29 F0         AND #$F0                  
CODE_139401:        A8            TAY                       
CODE_139402:        AD 12 07      LDA $0712                 
CODE_139405:        EB            XBA                       
CODE_139406:        AD 12 07      LDA $0712                 
CODE_139409:        C2 20         REP #$20                  
CODE_13940B:        97 01         STA [$01],y               
CODE_13940D:        E2 20         SEP #$20                  
CODE_13940F:        C8            INY                       
CODE_139410:        C8            INY                       
CODE_139411:        CA            DEX                       
CODE_139412:        10 F5         BPL CODE_139409           
CODE_139414:        C6 08         DEC $08                   
CODE_139416:        30 18         BMI CODE_139430           
CODE_139418:        A5 E7         LDA $E7                   
CODE_13941A:        18            CLC                       
CODE_13941B:        69 10         ADC #$10                  
CODE_13941D:        C9 F0         CMP #$F0                  
CODE_13941F:        90 0A         BCC CODE_13942B           
CODE_139421:        E6 0E         INC $0E                   
CODE_139423:        A5 0E         LDA $0E                   
CODE_139425:        C9 0A         CMP #$0A                  
CODE_139427:        F0 07         BEQ CODE_139430           
CODE_139429:        A9 00         LDA #$00                  
CODE_13942B:        85 E7         STA $E7                   
CODE_13942D:        82 C6 FF      BRL CODE_1393F6           

CODE_139430:        60            RTS                       

DATA_139431:        db $FF,$2A,$FF,$FF,$FF,$FF,$2D,$FF

CODE_139439:        A5 E9         LDA $E9                   
CODE_13943B:        8D 47 02      STA $0247                 
CODE_13943E:        A9 80         LDA #$80                  
CODE_139440:        85 0A         STA $0A                   
CODE_139442:        A9 31         LDA #$31                  
CODE_139444:        85 09         STA $09                   
CODE_139446:        20 05 97      JSR CODE_139705           
CODE_139449:        29 07         AND #$07                  
CODE_13944B:        AA            TAX                       
CODE_13944C:        BF 31 94 13   LDA.l DATA_139431,x             
CODE_139450:        97 01         STA [$01],y               
CODE_139452:        20 D2 96      JSR CODE_1396D2           
CODE_139455:        C0 30         CPY #$30                  
CODE_139457:        90 ED         BCC CODE_139446           
CODE_139459:        98            TYA                       
CODE_13945A:        29 0F         AND #$0F                  
CODE_13945C:        A8            TAY                       
CODE_13945D:        20 B0 96      JSR CODE_1396B0           
CODE_139460:        AD 47 02      LDA $0247                 
CODE_139463:        85 E9         STA $E9                   
CODE_139465:        C9 0A         CMP #$0A                  
CODE_139467:        D0 DD         BNE CODE_139446           
CODE_139469:        A9 00         LDA #$00                  
CODE_13946B:        85 E9         STA $E9                   
CODE_13946D:        85 E6         STA $E6                   
CODE_13946F:        85 E5         STA $E5                   
CODE_139471:        60            RTS                       

CODE_139472:        64 0E         STZ $0E                   
CODE_139474:        A5 E9         LDA $E9                   
CODE_139476:        85 0F         STA $0F                   
CODE_139478:        AD 0F 05      LDA $050F                 
CODE_13947B:        38            SEC                       
CODE_13947C:        E9 01         SBC #$01                  
CODE_13947E:        0A            ASL A                     
CODE_13947F:        AA            TAX                       
CODE_139480:        BF 0E DA 13   LDA.l PNTR_13DA0E,x             
CODE_139484:        85 C4         STA $C4                   
CODE_139486:        BF 0F DA 13   LDA.l PNTR_13DA0E+1,x             
CODE_13948A:        85 C5         STA $C5                   
CODE_13948C:        A9 13         LDA #$13                  
CODE_13948E:        85 C6         STA $C6                   
CODE_139490:        A4 0E         LDY $0E                   
CODE_139492:        B7 C4         LDA [$C4],y               
CODE_139494:        C9 FF         CMP #$FF                  
CODE_139496:        F0 1C         BEQ CODE_1394B4           
CODE_139498:        C9 F0         CMP #$F0                  
CODE_13949A:        F0 0D         BEQ CODE_1394A9           
CODE_13949C:        85 0D         STA $0D                   
CODE_13949E:        C8            INY                       
CODE_13949F:        B7 C4         LDA [$C4],y               
CODE_1394A1:        A4 0D         LDY $0D                   
CODE_1394A3:        97 01         STA [$01],y               
CODE_1394A5:        E6 0E         INC $0E                   
CODE_1394A7:        80 07         BRA CODE_1394B0           

CODE_1394A9:        E6 0F         INC $0F                   
CODE_1394AB:        A6 0F         LDX $0F                   
CODE_1394AD:        20 DC 97      JSR CODE_1397DC           
CODE_1394B0:        E6 0E         INC $0E                   
CODE_1394B2:        80 DC         BRA CODE_139490           

CODE_1394B4:        60            RTS                       

CODE_1394B5:        A2 01         LDX #$01                  
CODE_1394B7:        AD 0F 05      LDA $050F                 
CODE_1394BA:        18            CLC                       
CODE_1394BB:        69 10         ADC #$10                  
CODE_1394BD:        DF 64 D4 13   CMP.l DATA_13D464,x             
CODE_1394C1:        F0 03         BEQ CODE_1394C6           
CODE_1394C3:        CA            DEX                       
CODE_1394C4:        10 F7         BPL CODE_1394BD           
CODE_1394C6:        A4 E7         LDY $E7                   
CODE_1394C8:        BF 66 D4 13   LDA.l DATA_13D466,x             
CODE_1394CC:        97 01         STA [$01],y               
CODE_1394CE:        60            RTS                       

CODE_1394CF:        A2 02         LDX #$02                  
CODE_1394D1:        AD 0F 05      LDA $050F                 
CODE_1394D4:        18            CLC                       
CODE_1394D5:        69 10         ADC #$10                  
CODE_1394D7:        DF 68 D4 13   CMP.l DATA_13D468,x             
CODE_1394DB:        F0 03         BEQ CODE_1394E0           
CODE_1394DD:        CA            DEX                       
CODE_1394DE:        10 F7         BPL CODE_1394D7           
CODE_1394E0:        8A            TXA                       
CODE_1394E1:        0A            ASL A                     
CODE_1394E2:        AA            TAX                       
CODE_1394E3:        A4 E7         LDY $E7                   
CODE_1394E5:        BF 6B D4 13   LDA.l DATA_13D46B,x             
CODE_1394E9:        97 01         STA [$01],y               
CODE_1394EB:        E8            INX                       
CODE_1394EC:        20 B0 96      JSR CODE_1396B0           
CODE_1394EF:        BF 6B D4 13   LDA.l DATA_13D46B,x             
CODE_1394F3:        97 01         STA [$01],y               
CODE_1394F5:        60            RTS                       

CODE_1394F6:        A2 05         LDX #$05                  
CODE_1394F8:        AD 0F 05      LDA $050F                 
CODE_1394FB:        18            CLC                       
CODE_1394FC:        69 10         ADC #$10                  
CODE_1394FE:        DF 71 D4 13   CMP.l DATA_13D471,x             
CODE_139502:        F0 03         BEQ CODE_139507           
CODE_139504:        CA            DEX                       
CODE_139505:        10 F7         BPL CODE_1394FE           
CODE_139507:        8A            TXA                       
CODE_139508:        0A            ASL A                     
CODE_139509:        AA            TAX                       
CODE_13950A:        A4 E7         LDY $E7                   
CODE_13950C:        BF 77 D4 13   LDA.l DATA_13D477,x             
CODE_139510:        97 01         STA [$01],y               
CODE_139512:        E8            INX                       
CODE_139513:        20 D2 96      JSR CODE_1396D2           
CODE_139516:        BF 77 D4 13   LDA.l DATA_13D477,x             
CODE_13951A:        97 01         STA [$01],y               
CODE_13951C:        60            RTS                       

CODE_13951D:        A2 04         LDX #$04                  
CODE_13951F:        AD 0F 05      LDA $050F                 
CODE_139522:        18            CLC                       
CODE_139523:        69 10         ADC #$10                  
CODE_139525:        DF 97 D4 13   CMP.l DATA_13D497,x             
CODE_139529:        F0 03         BEQ CODE_13952E           
CODE_13952B:        CA            DEX                       
CODE_13952C:        10 F7         BPL CODE_139525           
CODE_13952E:        8A            TXA                       
CODE_13952F:        0A            ASL A                     
CODE_139530:        85 0E         STA $0E                   
CODE_139532:        0A            ASL A                     
CODE_139533:        85 0F         STA $0F                   
CODE_139535:        18            CLC                       
CODE_139536:        65 0E         ADC $0E                   
CODE_139538:        AA            TAX                       
CODE_139539:        A4 E7         LDY $E7                   
CODE_13953B:        84 0E         STY $0E                   
CODE_13953D:        64 0F         STZ $0F                   
CODE_13953F:        A5 0F         LDA $0F                   
CODE_139541:        C9 02         CMP #$02                  
CODE_139543:        D0 09         BNE CODE_13954E           
CODE_139545:        DA            PHX                       
CODE_139546:        20 80 95      JSR CODE_139580           
CODE_139549:        FA            PLX                       
CODE_13954A:        C9 00         CMP #$00                  
CODE_13954C:        D0 04         BNE CODE_139552           
CODE_13954E:        BF 9C D4 13   LDA.l DATA_13D49C,x             
CODE_139552:        97 01         STA [$01],y               
CODE_139554:        E8            INX                       
CODE_139555:        20 D2 96      JSR CODE_1396D2           
CODE_139558:        A5 0F         LDA $0F                   
CODE_13955A:        C9 02         CMP #$02                  
CODE_13955C:        D0 09         BNE CODE_139567           
CODE_13955E:        DA            PHX                       
CODE_13955F:        20 80 95      JSR CODE_139580           
CODE_139562:        FA            PLX                       
CODE_139563:        C9 00         CMP #$00                  
CODE_139565:        D0 04         BNE CODE_13956B           
CODE_139567:        BF 9C D4 13   LDA.l DATA_13D49C,x             
CODE_13956B:        97 01         STA [$01],y               
CODE_13956D:        E6 0F         INC $0F                   
CODE_13956F:        A5 0F         LDA $0F                   
CODE_139571:        C9 03         CMP #$03                  
CODE_139573:        F0 0A         BEQ CODE_13957F           
CODE_139575:        E8            INX                       
CODE_139576:        A4 0E         LDY $0E                   
CODE_139578:        20 B0 96      JSR CODE_1396B0           
CODE_13957B:        84 0E         STY $0E                   
CODE_13957D:        80 C0         BRA CODE_13953F           

CODE_13957F:        60            RTS                       

CODE_139580:        A2 09         LDX #$09                  
CODE_139582:        AD 33 05      LDA $0533                 
CODE_139585:        DF BA D4 13   CMP.l DATA_13D4BA,x             
CODE_139589:        D0 09         BNE CODE_139594           
CODE_13958B:        AD 34 05      LDA $0534                 
CODE_13958E:        DF C4 D4 13   CMP.l DATA_13D4C4,x             
CODE_139592:        F0 05         BEQ CODE_139599           
CODE_139594:        CA            DEX                       
CODE_139595:        10 EB         BPL CODE_139582           
CODE_139597:        80 0D         BRA CODE_1395A6           

CODE_139599:        A2 06         LDX #$06                  
CODE_13959B:        B7 01         LDA [$01],y               
CODE_13959D:        DF CE D4 13   CMP.l DATA_13D4CE,x             
CODE_1395A1:        F0 06         BEQ CODE_1395A9           
CODE_1395A3:        CA            DEX                       
CODE_1395A4:        10 F5         BPL CODE_13959B           
CODE_1395A6:        A9 00         LDA #$00                  
CODE_1395A8:        60            RTS                       

CODE_1395A9:        BF D5 D4 13   LDA.l DATA_13D4D5,x             
CODE_1395AD:        60            RTS                       

CODE_1395AE:        64 0F         STZ $0F                   
CODE_1395B0:        AD 0F 05      LDA $050F                 
CODE_1395B3:        C9 02         CMP #$02                  
CODE_1395B5:        F0 04         BEQ CODE_1395BB           
CODE_1395B7:        A9 03         LDA #$03                  
CODE_1395B9:        85 0F         STA $0F                   
CODE_1395BB:        A4 E7         LDY $E7                   
CODE_1395BD:        A5 E9         LDA $E9                   
CODE_1395BF:        8D 12 07      STA $0712                 
CODE_1395C2:        64 08         STZ $08                   
CODE_1395C4:        A6 0F         LDX $0F                   
CODE_1395C6:        E0 01         CPX #$01                  
CODE_1395C8:        D0 08         BNE CODE_1395D2           
CODE_1395CA:        88            DEY                       
CODE_1395CB:        AF A2 DA 13   LDA.l DATA_13DAA2               
CODE_1395CF:        97 01         STA [$01],y               
CODE_1395D1:        C8            INY                       
CODE_1395D2:        BF 8E DA 13   LDA.l DATA_13DA8E,x             
CODE_1395D6:        97 01         STA [$01],y               
CODE_1395D8:        A6 08         LDX $08                   
CODE_1395DA:        F0 26         BEQ CODE_139602           
CODE_1395DC:        20 60 96      JSR CODE_139660           
CODE_1395DF:        B0 40         BCS CODE_139621                   
CODE_1395E1:        DA            PHX                       
CODE_1395E2:        A6 0F         LDX $0F                   
CODE_1395E4:        BF 93 DA 13   LDA.l DATA_13DA93,x             
CODE_1395E8:        97 01         STA [$01],y               
CODE_1395EA:        FA            PLX                       
CODE_1395EB:        CA            DEX                       
CODE_1395EC:        D0 EE         BNE CODE_1395DC           
CODE_1395EE:        A6 08         LDX $08                   
CODE_1395F0:        20 60 96      JSR CODE_139660           
CODE_1395F3:        B0 2C         BCS CODE_139621                   
CODE_1395F5:        DA            PHX                       
CODE_1395F6:        A6 0F         LDX $0F                   
CODE_1395F8:        BF 98 DA 13   LDA.l DATA_13DA98,x             
CODE_1395FC:        97 01         STA [$01],y               
CODE_1395FE:        FA            PLX                       
CODE_1395FF:        CA            DEX                       
CODE_139600:        D0 EE         BNE CODE_1395F0           
CODE_139602:        20 60 96      JSR CODE_139660           
CODE_139605:        B0 1A         BCS CODE_139621                  
CODE_139607:        A6 0F         LDX $0F                   
CODE_139609:        BF 9D DA 13   LDA.l DATA_13DA9D,x             
CODE_13960D:        97 01         STA [$01],y               
CODE_13960F:        E0 01         CPX #$01                  
CODE_139611:        D0 0E         BNE CODE_139621           
CODE_139613:        C8            INY                       
CODE_139614:        AF A3 DA 13   LDA.l DATA_13DAA3               
CODE_139618:        97 01         STA [$01],y               
CODE_13961A:        C8            INY                       
CODE_13961B:        AF A4 DA 13   LDA.l DATA_13DAA4               
CODE_13961F:        97 01         STA [$01],y               
CODE_139621:        E6 08         INC $08                   
CODE_139623:        A6 E9         LDX $E9                   
CODE_139625:        8E 12 07      STX $0712                 
CODE_139628:        20 DC 97      JSR CODE_1397DC           
CODE_13962B:        A5 E7         LDA $E7                   
CODE_13962D:        18            CLC                       
CODE_13962E:        69 10         ADC #$10                  
CODE_139630:        85 E7         STA $E7                   
CODE_139632:        38            SEC                       
CODE_139633:        E5 08         SBC $08                   
CODE_139635:        A8            TAY                       
CODE_139636:        A5 0F         LDA $0F                   
CODE_139638:        C9 03         CMP #$03                  
CODE_13963A:        10 10         BPL CODE_13964C           
CODE_13963C:        A5 0F         LDA $0F                   
CODE_13963E:        C9 02         CMP #$02                  
CODE_139640:        F0 1D         BEQ CODE_13965F           
CODE_139642:        B7 01         LDA [$01],y               
CODE_139644:        C9 FF         CMP #$FF                  
CODE_139646:        F0 11         BEQ CODE_139659           
CODE_139648:        E6 0F         INC $0F                   
CODE_13964A:        80 0D         BRA CODE_139659           

CODE_13964C:        98            TYA                       
CODE_13964D:        29 F0         AND #$F0                  
CODE_13964F:        C9 A0         CMP #$A0                  
CODE_139651:        F0 0C         BEQ CODE_13965F           
CODE_139653:        C9 90         CMP #$90                  
CODE_139655:        D0 02         BNE CODE_139659           
CODE_139657:        E6 0F         INC $0F                   
CODE_139659:        20 89 96      JSR CODE_139689           
CODE_13965C:        82 65 FF      BRL CODE_1395C4           

CODE_13965F:        60            RTS                       

CODE_139660:        DA            PHX                       
CODE_139661:        A5 E7         LDA $E7                   
CODE_139663:        29 F0         AND #$F0                  
CODE_139665:        8D 13 07      STA $0713                 
CODE_139668:        C8            INY                       
CODE_139669:        98            TYA                       
CODE_13966A:        29 F0         AND #$F0                  
CODE_13966C:        CD 13 07      CMP $0713                 
CODE_13966F:        F0 15         BEQ CODE_139686           
CODE_139671:        A5 E7         LDA $E7                   
CODE_139673:        29 F0         AND #$F0                  
CODE_139675:        A8            TAY                       
CODE_139676:        EE 12 07      INC $0712                 
CODE_139679:        AE 12 07      LDX $0712                 
CODE_13967C:        20 DC 97      JSR CODE_1397DC           
CODE_13967F:        E0 0A         CPX #$0A                  
CODE_139681:        D0 03         BNE CODE_139686           
CODE_139683:        FA            PLX                       
CODE_139684:        38            SEC                       
CODE_139685:        60            RTS                       

CODE_139686:        FA            PLX                       
CODE_139687:        18            CLC                       
CODE_139688:        60            RTS                       

CODE_139689:        A5 E7         LDA $E7                   
CODE_13968B:        29 F0         AND #$F0                  
CODE_13968D:        8D 13 07      STA $0713                 
CODE_139690:        98            TYA                       
CODE_139691:        29 F0         AND #$F0                  
CODE_139693:        CD 13 07      CMP $0713                 
CODE_139696:        F0 17         BEQ CODE_1396AF           
CODE_139698:        98            TYA                       
CODE_139699:        29 0F         AND #$0F                  
CODE_13969B:        8D 13 07      STA $0713                 
CODE_13969E:        A5 E7         LDA $E7                   
CODE_1396A0:        29 F0         AND #$F0                  
CODE_1396A2:        0D 13 07      ORA $0713                 
CODE_1396A5:        A8            TAY                       
CODE_1396A6:        CE 12 07      DEC $0712                 
CODE_1396A9:        AE 12 07      LDX $0712                 
CODE_1396AC:        20 DC 97      JSR CODE_1397DC           
CODE_1396AF:        60            RTS                       

CODE_1396B0:        C8            INY                       
CODE_1396B1:        98            TYA                       
CODE_1396B2:        29 0F         AND #$0F                  
CODE_1396B4:        F0 09         BEQ CODE_1396BF           
CODE_1396B6:        AD E4 02      LDA $02E4                 
CODE_1396B9:        F0 16         BEQ CODE_1396D1           
CODE_1396BB:        A6 E9         LDX $E9                   
CODE_1396BD:        80 0D         BRA CODE_1396CC           

CODE_1396BF:        98            TYA                       
CODE_1396C0:        38            SEC                       
CODE_1396C1:        E9 10         SBC #$10                  
CODE_1396C3:        A8            TAY                       
CODE_1396C4:        86 0B         STX $0B                   
CODE_1396C6:        A6 E9         LDX $E9                   
CODE_1396C8:        E8            INX                       
CODE_1396C9:        8E 47 02      STX $0247                 
CODE_1396CC:        20 DC 97      JSR CODE_1397DC           
CODE_1396CF:        A6 0B         LDX $0B                   
CODE_1396D1:        60            RTS                       

CODE_1396D2:        98            TYA                       
CODE_1396D3:        18            CLC                       
CODE_1396D4:        69 10         ADC #$10                  
CODE_1396D6:        A8            TAY                       
CODE_1396D7:        C9 F0         CMP #$F0                  
CODE_1396D9:        90 29         BCC CODE_139704           
CODE_1396DB:        AD 0F 05      LDA $050F                 
CODE_1396DE:        18            CLC                       
CODE_1396DF:        69 10         ADC #$10                  
CODE_1396E1:        C9 2A         CMP #$2A                  
CODE_1396E3:        F0 06         BEQ CODE_1396EB           
CODE_1396E5:        A6 E9         LDX $E9                   
CODE_1396E7:        E8            INX                       
CODE_1396E8:        20 DC 97      JSR CODE_1397DC           
CODE_1396EB:        98            TYA                       
CODE_1396EC:        29 0F         AND #$0F                  
CODE_1396EE:        A8            TAY                       
CODE_1396EF:        A2 06         LDX #$06                  
CODE_1396F1:        AD 0F 05      LDA $050F                 
CODE_1396F4:        18            CLC                       
CODE_1396F5:        69 10         ADC #$10                  
CODE_1396F7:        DF 60 DB 13   CMP.l DATA_13DB60,x             
CODE_1396FB:        F0 04         BEQ CODE_139701           
CODE_1396FD:        CA            DEX                       
CODE_1396FE:        10 F7         BPL CODE_1396F7           
CODE_139700:        60            RTS                       

CODE_139701:        EE E4 02      INC $02E4                 
CODE_139704:        60            RTS                       

CODE_139705:        A5 09         LDA $09                   
CODE_139707:        0A            ASL A                     
CODE_139708:        0A            ASL A                     
CODE_139709:        38            SEC                       
CODE_13970A:        65 09         ADC $09                   
CODE_13970C:        85 09         STA $09                   
CODE_13970E:        06 0A         ASL $0A                   
CODE_139710:        A9 20         LDA #$20                  
CODE_139712:        24 0A         BIT $0A                   
CODE_139714:        B0 04         BCS CODE_13971A                   
CODE_139716:        D0 04         BNE CODE_13971C           
CODE_139718:        F0 04         BEQ CODE_13971E           
CODE_13971A:        D0 02         BNE CODE_13971E           
CODE_13971C:        E6 0A         INC $0A                   
CODE_13971E:        A5 0A         LDA $0A                   
CODE_139720:        45 09         EOR $09                   
CODE_139722:        60            RTS                       

DATA_139723:        db $00,$10,$20,$30,$40,$50         

CODE_139729:        64 E9         STZ $E9
CODE_13972B:        A0 01         LDY #$01
CODE_13972D:        B7 05         LDA [$05],y
CODE_13972F:        29 80         AND #$80
CODE_139731:        D0 03         BNE CODE_139736
CODE_139733:        20 6E 98      JSR CODE_13986E
CODE_139736:        E6 04         INC $04                
CODE_139738:        A4 04         LDY $04
CODE_13973A:        C8            INY                       
CODE_13973B:        B7 05         LDA [$05],y               
CODE_13973D:        C9 FF         CMP #$FF                  
CODE_13973F:        D0 01         BNE CODE_139742           
CODE_139741:        6B            RTL                       

CODE_139742:        B7 05         LDA [$05],y               
CODE_139744:        29 0F         AND #$0F                  
CODE_139746:        85 E5         STA $E5                   
CODE_139748:        B7 05         LDA [$05],y               
CODE_13974A:        29 F0         AND #$F0                  
CODE_13974C:        C9 F0         CMP #$F0                  
CODE_13974E:        D0 0E         BNE CODE_13975E           
CODE_139750:        A5 E5         LDA $E5                   
CODE_139752:        84 08         STY $08                   
CODE_139754:        20 C1 97      JSR CODE_1397C1           
CODE_139757:        20 2F 99      JSR CODE_13992F           
CODE_13975A:        A4 08         LDY $08                   
CODE_13975C:        80 DC         BRA CODE_13973A           

CODE_13975E:        85 E6         STA $E6                   
CODE_139760:        C8            INY                       
CODE_139761:        84 04         STY $04                   
CODE_139763:        20 D3 97      JSR CODE_1397D3           
CODE_139766:        B7 05         LDA [$05],y               
CODE_139768:        4A            LSR A                     
CODE_139769:        4A            LSR A                     
CODE_13976A:        4A            LSR A                     
CODE_13976B:        4A            LSR A                     
CODE_13976C:        8D 0F 05      STA $050F                 
CODE_13976F:        C9 07         CMP #$07                  
CODE_139771:        B0 2F         BCS CODE_1397A2                   
CODE_139773:        48            PHA                       
CODE_139774:        B7 05         LDA [$05],y               
CODE_139776:        29 0F         AND #$0F                  
CODE_139778:        8D 0F 05      STA $050F                 
CODE_13977B:        68            PLA                       
CODE_13977C:        F0 3A         BEQ CODE_1397B8           
CODE_13977E:        C9 01         CMP #$01                  
CODE_139780:        D0 06         BNE CODE_139788           
CODE_139782:        20 18 93      JSR CODE_139318           
CODE_139785:        82 B0 FF      BRL CODE_139738           

CODE_139788:        C9 07         CMP #$07                  
CODE_13978A:        10 13         BPL CODE_13979F           
CODE_13978C:        3A            DEC A                     
CODE_13978D:        AA            TAX                       
CODE_13978E:        AD 0F 05      LDA $050F                 
CODE_139791:        18            CLC                       
CODE_139792:        7F 23 97 13   ADC.l DATA_139723,x             
CODE_139796:        8D 0F 05      STA $050F                 
CODE_139799:        20 18 93      JSR CODE_139318           
CODE_13979C:        82 99 FF      BRL CODE_139738           

CODE_13979F:        82 96 FF      BRL CODE_139738           

CODE_1397A2:        B7 05         LDA [$05],y               
CODE_1397A4:        29 0F         AND #$0F                  
CODE_1397A6:        8D 0E 05      STA $050E                 
CODE_1397A9:        AD 0F 05      LDA $050F                 
CODE_1397AC:        38            SEC                       
CODE_1397AD:        E9 07         SBC #$07                  
CODE_1397AF:        8D 0F 05      STA $050F                 
CODE_1397B2:        20 00 93      JSR CODE_139300           
CODE_1397B5:        82 80 FF      BRL CODE_139738           

CODE_1397B8:        AD 0F 05      LDA $050F                 
CODE_1397BB:        20 09 93      JSR CODE_139309           
CODE_1397BE:        82 77 FF      BRL CODE_139738           

CODE_1397C1:        0A            ASL A                     
CODE_1397C2:        AA            TAX                       
CODE_1397C3:        7C C6 97      JMP (PNTR_1397C6,x)             

PNTR_1397C6:        dw CODE_1397CC
                    dw CODE_1397CA

CODE_1397CA:        E6 E9         INC $E9
CODE_1397CC:        E6 E9         INC $E9
CODE_1397CE:        A9 00         LDA #$00
CODE_1397D0:        85 E6         STA $E6
CODE_1397D2:        60            RTS
                 
CODE_1397D3:        A6 E9         LDX $E9                   
CODE_1397D5:        A5 E6         LDA $E6                   
CODE_1397D7:        18            CLC                       
CODE_1397D8:        65 E5         ADC $E5                   
CODE_1397DA:        85 E7         STA $E7                   
CODE_1397DC:        AD 34 05      LDA $0534                 
CODE_1397DF:        0A            ASL A                     
CODE_1397E0:        0A            ASL A                     
CODE_1397E1:        0A            ASL A                     
CODE_1397E2:        0A            ASL A                     
CODE_1397E3:        18            CLC                       
CODE_1397E4:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_1397E7:        85 02         STA $02                   
CODE_1397E9:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_1397EC:        85 01         STA $01                   
CODE_1397EE:        A9 7F         LDA #$7F                  
CODE_1397F0:        85 03         STA $03                   
CODE_1397F2:        60            RTS                       

CODE_1397F3:        C2 30         REP #$30                  
CODE_1397F5:        AD D9 02      LDA $02D9                 
CODE_1397F8:        8F 02 00 7F   STA $7F0002               
CODE_1397FC:        A9 00 80      LDA #$8000                
CODE_1397FF:        8F 04 00 7F   STA $7F0004               
CODE_139803:        A2 00 00      LDX #$0000                
CODE_139806:        A7 C4         LDA [$C4]                 
CODE_139808:        29 FF 00      AND #$00FF                
CODE_13980B:        C9 FF 00      CMP #$00FF                
CODE_13980E:        F0 24         BEQ CODE_139834           
CODE_139810:        0A            ASL A                     
CODE_139811:        0A            ASL A                     
CODE_139812:        0A            ASL A                     
CODE_139813:        A8            TAY                       
CODE_139814:        B7 00         LDA [$00],y               
CODE_139816:        9F 06 00 7F   STA $7F0006,x             
CODE_13981A:        C8            INY                       
CODE_13981B:        C8            INY                       
CODE_13981C:        B7 00         LDA [$00],y               
CODE_13981E:        9F 08 00 7F   STA $7F0008,x             
CODE_139822:        C8            INY                       
CODE_139823:        C8            INY                       
CODE_139824:        B7 00         LDA [$00],y               
CODE_139826:        9F 46 00 7F   STA $7F0046,x             
CODE_13982A:        C8            INY                       
CODE_13982B:        C8            INY                       
CODE_13982C:        B7 00         LDA [$00],y               
CODE_13982E:        9F 48 00 7F   STA $7F0048,x             
CODE_139832:        80 13         BRA CODE_139847           

CODE_139834:        A9 BF 00      LDA #$00BF                
CODE_139837:        9F 06 00 7F   STA $7F0006,x             
CODE_13983B:        9F 08 00 7F   STA $7F0008,x             
CODE_13983F:        9F 46 00 7F   STA $7F0046,x             
CODE_139843:        9F 48 00 7F   STA $7F0048,x             
CODE_139847:        A5 C4         LDA $C4                   
CODE_139849:        18            CLC                       
CODE_13984A:        69 01 00      ADC #$0001                
CODE_13984D:        85 C4         STA $C4                   
CODE_13984F:        E8            INX                       
CODE_139850:        E8            INX                       
CODE_139851:        E8            INX                       
CODE_139852:        E8            INX                       
CODE_139853:        E0 40 00      CPX #$0040                
CODE_139856:        D0 AE         BNE CODE_139806           
CODE_139858:        A9 FF FF      LDA #$FFFF                
CODE_13985B:        8F 86 00 7F   STA $7F0086               
CODE_13985F:        AD D9 02      LDA $02D9                 
CODE_139862:        EB            XBA                       
CODE_139863:        18            CLC                       
CODE_139864:        69 40 00      ADC #$0040                
CODE_139867:        EB            XBA                       
CODE_139868:        8D D9 02      STA $02D9                 
CODE_13986B:        E2 30         SEP #$30                  
CODE_13986D:        60            RTS                       

CODE_13986E:        B7 05         LDA [$05],y               
CODE_139870:        29 7F         AND #$7F                  
CODE_139872:        0A            ASL A                     
CODE_139873:        AA            TAX                       
CODE_139874:        BF 61 C6 13   LDA.l PNTR_13C661,x             
CODE_139878:        85 C4         STA $C4                   
CODE_13987A:        E8            INX                       
CODE_13987B:        BF 61 C6 13   LDA.l PNTR_13C661,x             
CODE_13987F:        85 C5         STA $C5                   
CODE_139881:        A9 13         LDA #$13                  
CODE_139883:        85 C6         STA $C6                   
CODE_139885:        A0 00         LDY #$00                  
CODE_139887:        B7 C4         LDA [$C4],y               
CODE_139889:        29 F0         AND #$F0                  
CODE_13988B:        8D DC 02      STA $02DC                 
CODE_13988E:        4A            LSR A                     
CODE_13988F:        4A            LSR A                     
CODE_139890:        4A            LSR A                     
CODE_139891:        4A            LSR A                     
CODE_139892:        8D DE 02      STA $02DE                 
CODE_139895:        B7 C4         LDA [$C4],y               
CODE_139897:        29 0F         AND #$0F                  
CODE_139899:        8D DD 02      STA $02DD                 
CODE_13989C:        EE DD 02      INC $02DD                 
CODE_13989F:        64 0C         STZ $0C                   
CODE_1398A1:        64 0E         STZ $0E                   
CODE_1398A3:        64 0D         STZ $0D                   
CODE_1398A5:        64 0F         STZ $0F                   
CODE_1398A7:        20 13 99      JSR CODE_139913           
CODE_1398AA:        20 C4 98      JSR CODE_1398C4           
CODE_1398AD:        20 D6 98      JSR CODE_1398D6           
CODE_1398B0:        E6 0C         INC $0C                   
CODE_1398B2:        A5 0C         LDA $0C                   
CODE_1398B4:        CD DD 02      CMP $02DD                 
CODE_1398B7:        30 02         BMI CODE_1398BB           
CODE_1398B9:        64 0C         STZ $0C                   
CODE_1398BB:        E6 0E         INC $0E                   
CODE_1398BD:        A5 0E         LDA $0E                   
CODE_1398BF:        C9 10         CMP #$10                  
CODE_1398C1:        D0 E0         BNE CODE_1398A3           
CODE_1398C3:        60            RTS                       

CODE_1398C4:        AD DC 02      LDA $02DC                 
CODE_1398C7:        F0 0C         BEQ CODE_1398D5           
CODE_1398C9:        A5 0F         LDA $0F                   
CODE_1398CB:        18            CLC                       
CODE_1398CC:        69 10         ADC #$10                  
CODE_1398CE:        85 0F         STA $0F                   
CODE_1398D0:        CD DC 02      CMP $02DC                 
CODE_1398D3:        D0 F4         BNE CODE_1398C9           
CODE_1398D5:        60            RTS                       

CODE_1398D6:        20 F7 98      JSR CODE_1398F7           
CODE_1398D9:        A4 0F         LDY $0F                   
CODE_1398DB:        B7 01         LDA [$01],y               
CODE_1398DD:        C9 FF         CMP #$FF                  
CODE_1398DF:        D0 08         BNE CODE_1398E9           
CODE_1398E1:        A4 0D         LDY $0D                   
CODE_1398E3:        B7 C4         LDA [$C4],y               
CODE_1398E5:        A4 0F         LDY $0F                   
CODE_1398E7:        97 01         STA [$01],y               
CODE_1398E9:        E6 0D         INC $0D                   
CODE_1398EB:        A5 0F         LDA $0F                   
CODE_1398ED:        18            CLC                       
CODE_1398EE:        69 10         ADC #$10                  
CODE_1398F0:        85 0F         STA $0F                   
CODE_1398F2:        C9 F0         CMP #$F0                  
CODE_1398F4:        D0 E3         BNE CODE_1398D9           
CODE_1398F6:        60            RTS                       

CODE_1398F7:        A5 0C         LDA $0C                   
CODE_1398F9:        F0 15         BEQ CODE_139910           
CODE_1398FB:        0A            ASL A                     
CODE_1398FC:        0A            ASL A                     
CODE_1398FD:        0A            ASL A                     
CODE_1398FE:        0A            ASL A                     
CODE_1398FF:        85 0D         STA $0D                   
CODE_139901:        A6 0C         LDX $0C                   
CODE_139903:        CA            DEX                       
CODE_139904:        30 0A         BMI CODE_139910           
CODE_139906:        A5 0D         LDA $0D                   
CODE_139908:        38            SEC                       
CODE_139909:        ED DE 02      SBC $02DE                 
CODE_13990C:        85 0D         STA $0D                   
CODE_13990E:        80 F3         BRA CODE_139903           

CODE_139910:        E6 0D         INC $0D                   
CODE_139912:        60            RTS                       

CODE_139913:        A6 E9         LDX $E9                   
CODE_139915:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_139918:        18            CLC                       
CODE_139919:        65 0E         ADC $0E                   
CODE_13991B:        85 01         STA $01                   
CODE_13991D:        AD 34 05      LDA $0534                 
CODE_139920:        0A            ASL A                     
CODE_139921:        0A            ASL A                     
CODE_139922:        0A            ASL A                     
CODE_139923:        0A            ASL A                     
CODE_139924:        18            CLC                       
CODE_139925:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_139928:        85 02         STA $02                   
CODE_13992A:        A9 7F         LDA #$7F                  
CODE_13992C:        85 03         STA $03                   
CODE_13992E:        60            RTS                       

CODE_13992F:        A4 08         LDY $08                   
CODE_139931:        C8            INY                       
CODE_139932:        B7 05         LDA [$05],y               
CODE_139934:        29 80         AND #$80                  
CODE_139936:        D0 03         BNE CODE_13993B           
CODE_139938:        20 6E 98      JSR CODE_13986E           
CODE_13993B:        E6 08         INC $08                   
CODE_13993D:        60            RTS                       

CODE_13993E:        A2 03         LDX #$03                  
CODE_139940:        AD 0F 05      LDA $050F                 
CODE_139943:        18            CLC                       
CODE_139944:        69 10         ADC #$10                  
CODE_139946:        DF 83 D4 13   CMP.l DATA_13D483,x             
CODE_13994A:        F0 03         BEQ CODE_13994F           
CODE_13994C:        CA            DEX                       
CODE_13994D:        10 F7         BPL CODE_139946           
CODE_13994F:        8A            TXA                       
CODE_139950:        0A            ASL A                     
CODE_139951:        0A            ASL A                     
CODE_139952:        AA            TAX                       
CODE_139953:        A4 E7         LDY $E7                   
CODE_139955:        BF 87 D4 13   LDA.l DATA_13D487,x             
CODE_139959:        97 01         STA [$01],y               
CODE_13995B:        20 D2 96      JSR CODE_1396D2           
CODE_13995E:        E8            INX                       
CODE_13995F:        BF 87 D4 13   LDA.l DATA_13D487,x             
CODE_139963:        97 01         STA [$01],y               
CODE_139965:        E8            INX                       
CODE_139966:        A4 E7         LDY $E7                   
CODE_139968:        20 B0 96      JSR CODE_1396B0           
CODE_13996B:        BF 87 D4 13   LDA.l DATA_13D487,x             
CODE_13996F:        97 01         STA [$01],y               
CODE_139971:        20 D2 96      JSR CODE_1396D2           
CODE_139974:        E8            INX                       
CODE_139975:        BF 87 D4 13   LDA.l DATA_13D487,x             
CODE_139979:        97 01         STA [$01],y               
CODE_13997B:        60            RTS                       

CODE_13997C:        A4 E7         LDY $E7                   
CODE_13997E:        A2 00         LDX #$00                  
CODE_139980:        BF DC D4 13   LDA.l DATA_13D4DC,x             
CODE_139984:        97 01         STA [$01],y               
CODE_139986:        8C DE 02      STY $02DE                 
CODE_139989:        A4 E7         LDY $E7                   
CODE_13998B:        E8            INX                       
CODE_13998C:        E0 02         CPX #$02                  
CODE_13998E:        F0 13         BEQ CODE_1399A3           
CODE_139990:        E0 07         CPX #$07                  
CODE_139992:        F0 0C         BEQ CODE_1399A0           
CODE_139994:        E0 0A         CPX #$0A                  
CODE_139996:        F0 10         BEQ CODE_1399A8           
CODE_139998:        AC DE 02      LDY $02DE                 
CODE_13999B:        20 D2 96      JSR CODE_1396D2           
CODE_13999E:        80 E0         BRA CODE_139980           

CODE_1399A0:        20 B0 96      JSR CODE_1396B0           
CODE_1399A3:        20 B0 96      JSR CODE_1396B0           
CODE_1399A6:        80 D8         BRA CODE_139980           

CODE_1399A8:        60            RTS                       

CODE_1399A9:        A2 33         LDX #$33                  
CODE_1399AB:        AD 0F 05      LDA $050F                 
CODE_1399AE:        18            CLC                       
CODE_1399AF:        69 10         ADC #$10                  
CODE_1399B1:        DF E6 D4 13   CMP.l DATA_13D4E6,x             
CODE_1399B5:        F0 03         BEQ CODE_1399BA           
CODE_1399B7:        CA            DEX                       
CODE_1399B8:        10 F7         BPL CODE_1399B1           
CODE_1399BA:        8A            TXA                       
CODE_1399BB:        0A            ASL A                     
CODE_1399BC:        AA            TAX                       
CODE_1399BD:        BF 1A D5 13   LDA.l PNTR_13D51A,x             
CODE_1399C1:        85 08         STA $08                   
CODE_1399C3:        E8            INX                       
CODE_1399C4:        BF 1A D5 13   LDA.l PNTR_13D51A,x             
CODE_1399C8:        85 09         STA $09                   
CODE_1399CA:        A9 13         LDA #$13                  
CODE_1399CC:        85 0A         STA $0A                   
CODE_1399CE:        A0 00         LDY #$00                  
CODE_1399D0:        B7 08         LDA [$08],y               
CODE_1399D2:        29 F0         AND #$F0                  
CODE_1399D4:        4A            LSR A                     
CODE_1399D5:        4A            LSR A                     
CODE_1399D6:        4A            LSR A                     
CODE_1399D7:        4A            LSR A                     
CODE_1399D8:        85 0E         STA $0E                   
CODE_1399DA:        85 0D         STA $0D                   
CODE_1399DC:        B7 08         LDA [$08],y               
CODE_1399DE:        29 0F         AND #$0F                  
CODE_1399E0:        85 0F         STA $0F                   
CODE_1399E2:        20 E9 99      JSR CODE_1399E9           
CODE_1399E5:        9C E4 02      STZ $02E4                 
CODE_1399E8:        60            RTS                       

CODE_1399E9:        A9 01         LDA #$01                  
CODE_1399EB:        8D E3 02      STA $02E3                 
CODE_1399EE:        A5 E7         LDA $E7                   
CODE_1399F0:        8D E2 02      STA $02E2                 
CODE_1399F3:        A5 E7         LDA $E7                   
CODE_1399F5:        85 0C         STA $0C                   
CODE_1399F7:        AC E3 02      LDY $02E3                 
CODE_1399FA:        B7 08         LDA [$08],y               
CODE_1399FC:        AC E2 02      LDY $02E2                 
CODE_1399FF:        97 01         STA [$01],y               
CODE_139A01:        EE E3 02      INC $02E3                 
CODE_139A04:        AC E2 02      LDY $02E2                 
CODE_139A07:        20 D2 96      JSR CODE_1396D2           
CODE_139A0A:        8C E2 02      STY $02E2                 
CODE_139A0D:        C6 0E         DEC $0E                   
CODE_139A0F:        A5 0E         LDA $0E                   
CODE_139A11:        10 E4         BPL CODE_1399F7           
CODE_139A13:        C6 0F         DEC $0F                   
CODE_139A15:        A5 0F         LDA $0F                   
CODE_139A17:        30 10         BMI CODE_139A29           
CODE_139A19:        A4 0C         LDY $0C                   
CODE_139A1B:        20 B0 96      JSR CODE_1396B0           
CODE_139A1E:        84 0C         STY $0C                   
CODE_139A20:        8C E2 02      STY $02E2                 
CODE_139A23:        A5 0D         LDA $0D                   
CODE_139A25:        85 0E         STA $0E                   
CODE_139A27:        80 CE         BRA CODE_1399F7           

CODE_139A29:        60            RTS                       

CODE_139A2A:        AD 0F 05      LDA $050F                 
CODE_139A2D:        38            SEC                       
CODE_139A2E:        E9 0E         SBC #$0E                  
CODE_139A30:        85 0C         STA $0C                   
CODE_139A32:        0A            ASL A                     
CODE_139A33:        18            CLC                       
CODE_139A34:        65 0C         ADC $0C                   
CODE_139A36:        85 0F         STA $0F                   
CODE_139A38:        AA            TAX                       
CODE_139A39:        A4 E7         LDY $E7                   
CODE_139A3B:        84 0E         STY $0E                   
CODE_139A3D:        AD 33 05      LDA $0533                 
CODE_139A40:        C9 05         CMP #$05                  
CODE_139A42:        D0 07         BNE CODE_139A4B           
CODE_139A44:        AD 34 05      LDA $0534                 
CODE_139A47:        C9 04         CMP #$04                  
CODE_139A49:        F0 1A         BEQ CODE_139A65           
CODE_139A4B:        AD 33 05      LDA $0533                 
CODE_139A4E:        C9 0F         CMP #$0F                  
CODE_139A50:        D0 17         BNE CODE_139A69           
CODE_139A52:        AD 34 05      LDA $0534                 
CODE_139A55:        C9 03         CMP #$03                  
CODE_139A57:        F0 0C         BEQ CODE_139A65           
CODE_139A59:        C9 04         CMP #$04                  
CODE_139A5B:        F0 08         BEQ CODE_139A65           
CODE_139A5D:        C9 05         CMP #$05                  
CODE_139A5F:        F0 04         BEQ CODE_139A65           
CODE_139A61:        C9 06         CMP #$06                  
CODE_139A63:        D0 04         BNE CODE_139A69           
CODE_139A65:        A9 05         LDA #$05                  
CODE_139A67:        80 02         BRA CODE_139A6B           

CODE_139A69:        A9 04         LDA #$04                  
CODE_139A6B:        85 0D         STA $0D                   
CODE_139A6D:        BF BE D9 13   LDA.l DATA_13D9BE,x             
CODE_139A71:        97 01         STA [$01],y               
CODE_139A73:        98            TYA                       
CODE_139A74:        18            CLC                       
CODE_139A75:        69 10         ADC #$10                  
CODE_139A77:        A8            TAY                       
CODE_139A78:        BF C8 D9 13   LDA.l DATA_13D9C8,x             
CODE_139A7C:        97 01         STA [$01],y               
CODE_139A7E:        98            TYA                       
CODE_139A7F:        18            CLC                       
CODE_139A80:        69 10         ADC #$10                  
CODE_139A82:        A8            TAY                       
CODE_139A83:        C6 0D         DEC $0D                   
CODE_139A85:        10 E6         BPL CODE_139A6D           
CODE_139A87:        BF D2 D9 13   LDA.l DATA_13D9D2,x             
CODE_139A8B:        97 01         STA [$01],y               
CODE_139A8D:        E8            INX                       
CODE_139A8E:        8A            TXA                       
CODE_139A8F:        A6 0C         LDX $0C                   
CODE_139A91:        DF DC D9 13   CMP.l DATA_13D9DC,x             
CODE_139A95:        F0 0A         BEQ CODE_139AA1           
CODE_139A97:        AA            TAX                       
CODE_139A98:        A4 0E         LDY $0E                   
CODE_139A9A:        20 B0 96      JSR CODE_1396B0           
CODE_139A9D:        84 0E         STY $0E                   
CODE_139A9F:        80 9C         BRA CODE_139A3D           

CODE_139AA1:        60            RTS                       

CODE_139AA2:        A4 E7         LDY $E7                   
CODE_139AA4:        A9 03         LDA #$03                  
CODE_139AA6:        85 0F         STA $0F                   
CODE_139AA8:        85 0E         STA $0E                   
CODE_139AAA:        A6 0E         LDX $0E                   
CODE_139AAC:        BF DF D9 13   LDA.l DATA_13D9DF,x             
CODE_139AB0:        97 01         STA [$01],y               
CODE_139AB2:        84 0D         STY $0D                   
CODE_139AB4:        98            TYA                       
CODE_139AB5:        18            CLC                       
CODE_139AB6:        69 10         ADC #$10                  
CODE_139AB8:        A8            TAY                       
CODE_139AB9:        86 0C         STX $0C                   
CODE_139ABB:        20 DA 9A      JSR CODE_139ADA           
CODE_139ABE:        A6 0C         LDX $0C                   
CODE_139AC0:        C9 00         CMP #$00                  
CODE_139AC2:        D0 04         BNE CODE_139AC8           
CODE_139AC4:        AF E3 D9 13   LDA.l DATA_13D9E3               
CODE_139AC8:        97 01         STA [$01],y               
CODE_139ACA:        A4 0D         LDY $0D                   
CODE_139ACC:        C8            INY                       
CODE_139ACD:        C6 0E         DEC $0E                   
CODE_139ACF:        10 D9         BPL CODE_139AAA           
CODE_139AD1:        C6 0F         DEC $0F                   
CODE_139AD3:        30 04         BMI CODE_139AD9           
CODE_139AD5:        A9 03         LDA #$03                  
CODE_139AD7:        80 CF         BRA CODE_139AA8           

CODE_139AD9:        60            RTS                       

CODE_139ADA:        A2 05         LDX #$05                  
CODE_139ADC:        B7 01         LDA [$01],y               
CODE_139ADE:        DF E4 D9 13   CMP.l DATA_13D9E4,x             
CODE_139AE2:        F0 06         BEQ CODE_139AEA           
CODE_139AE4:        CA            DEX                       
CODE_139AE5:        10 F5         BPL CODE_139ADC           
CODE_139AE7:        A9 00         LDA #$00                  
CODE_139AE9:        60            RTS                       

CODE_139AEA:        BF EA D9 13   LDA.l DATA_13D9EA,x             
CODE_139AEE:        60            RTS                       

CODE_139AEF:        A4 E7         LDY $E7                   
CODE_139AF1:        84 0C         STY $0C                   
CODE_139AF3:        64 0D         STZ $0D                   
CODE_139AF5:        64 0F         STZ $0F                   
CODE_139AF7:        64 0E         STZ $0E                   
CODE_139AF9:        A6 0D         LDX $0D                   
CODE_139AFB:        BF F7 D9 13   LDA.l DATA_13D9F7,x             
CODE_139AFF:        97 01         STA [$01],y               
CODE_139B01:        E6 0D         INC $0D                   
CODE_139B03:        A5 0D         LDA $0D                   
CODE_139B05:        C9 17         CMP #$17                  
CODE_139B07:        F0 29         BEQ CODE_139B32           
CODE_139B09:        E6 0E         INC $0E                   
CODE_139B0B:        A6 0F         LDX $0F                   
CODE_139B0D:        BF F0 D9 13   LDA.l DATA_13D9F0,x             
CODE_139B11:        C5 0E         CMP $0E                   
CODE_139B13:        F0 12         BEQ CODE_139B27           
CODE_139B15:        98            TYA                       
CODE_139B16:        29 F0         AND #$F0                  
CODE_139B18:        C9 E0         CMP #$E0                  
CODE_139B1A:        F0 05         BEQ CODE_139B21           
CODE_139B1C:        20 D2 96      JSR CODE_1396D2           
CODE_139B1F:        80 D8         BRA CODE_139AF9           

CODE_139B21:        E6 0D         INC $0D                   
CODE_139B23:        E6 0D         INC $0D                   
CODE_139B25:        E6 0D         INC $0D                   
CODE_139B27:        E6 0F         INC $0F                   
CODE_139B29:        A4 0C         LDY $0C                   
CODE_139B2B:        20 B0 96      JSR CODE_1396B0           
CODE_139B2E:        84 0C         STY $0C                   
CODE_139B30:        80 C5         BRA CODE_139AF7           

CODE_139B32:        60            RTS                       

CODE_139B33:        60            RTS                       

CODE_139B34:        64 0D         STZ $0D                   
CODE_139B36:        64 0E         STZ $0E                   
CODE_139B38:        AD 0F 05      LDA $050F                 
CODE_139B3B:        38            SEC                       
CODE_139B3C:        E9 31         SBC #$31                  
CODE_139B3E:        85 0F         STA $0F                   
CODE_139B40:        A4 E7         LDY $E7                   
CODE_139B42:        A6 0D         LDX $0D                   
CODE_139B44:        A4 E7         LDY $E7                   
CODE_139B46:        BF A9 DA 13   LDA.l DATA_13DAA9,x             
CODE_139B4A:        97 01         STA [$01],y               
CODE_139B4C:        20 D2 96      JSR CODE_1396D2           
CODE_139B4F:        BF AE DA 13   LDA.l DATA_13DAAE,x             
CODE_139B53:        97 01         STA [$01],y               
CODE_139B55:        20 D2 96      JSR CODE_1396D2           
CODE_139B58:        BF B3 DA 13   LDA.l DATA_13DAB3,x             
CODE_139B5C:        97 01         STA [$01],y               
CODE_139B5E:        20 D2 96      JSR CODE_1396D2           
CODE_139B61:        BF B8 DA 13   LDA.l DATA_13DAB8,x             
CODE_139B65:        97 01         STA [$01],y               
CODE_139B67:        98            TYA                       
CODE_139B68:        29 F0         AND #$F0                  
CODE_139B6A:        C9 E0         CMP #$E0                  
CODE_139B6C:        D0 F0         BNE CODE_139B5E           
CODE_139B6E:        A6 0F         LDX $0F                   
CODE_139B70:        E6 0E         INC $0E                   
CODE_139B72:        A5 0E         LDA $0E                   
CODE_139B74:        DF A5 DA 13   CMP.l DATA_13DAA5,x             
CODE_139B78:        F0 2B         BEQ CODE_139BA5           
CODE_139B7A:        E0 02         CPX #$02                  
CODE_139B7C:        D0 08         BNE CODE_139B86           
CODE_139B7E:        C9 02         CMP #$02                  
CODE_139B80:        D0 15         BNE CODE_139B97           
CODE_139B82:        E6 0D         INC $0D                   
CODE_139B84:        80 11         BRA CODE_139B97           

CODE_139B86:        C9 03         CMP #$03                  
CODE_139B88:        10 02         BPL CODE_139B8C           
CODE_139B8A:        80 0B         BRA CODE_139B97           

CODE_139B8C:        BF A5 DA 13   LDA.l DATA_13DAA5,x             
CODE_139B90:        38            SEC                       
CODE_139B91:        E9 03         SBC #$03                  
CODE_139B93:        C5 0E         CMP $0E                   
CODE_139B95:        B0 02         BCS CODE_139B99                  
CODE_139B97:        E6 0D         INC $0D                   
CODE_139B99:        AC E7 00      LDY $00E7                 
CODE_139B9C:        20 B0 96      JSR CODE_1396B0           
CODE_139B9F:        8C E7 00      STY $00E7                 
CODE_139BA2:        82 9D FF      BRL CODE_139B42           

CODE_139BA5:        60            RTS                       

CODE_139BA6:        64 0E         STZ $0E                   
CODE_139BA8:        AD 0F 05      LDA $050F                 
CODE_139BAB:        38            SEC                       
CODE_139BAC:        E9 39         SBC #$39                  
CODE_139BAE:        0A            ASL A                     
CODE_139BAF:        0A            ASL A                     
CODE_139BB0:        85 0D         STA $0D                   
CODE_139BB2:        64 0C         STZ $0C                   
CODE_139BB4:        64 0F         STZ $0F                   
CODE_139BB6:        A4 E7         LDY $E7                   
CODE_139BB8:        A5 0D         LDA $0D                   
CODE_139BBA:        18            CLC                       
CODE_139BBB:        65 0E         ADC $0E                   
CODE_139BBD:        AA            TAX                       
CODE_139BBE:        BF BD DA 13   LDA.l DATA_13DABD,x             
CODE_139BC2:        DA            PHX                       
CODE_139BC3:        20 24 9C      JSR CODE_139C24           
CODE_139BC6:        FA            PLX                       
CODE_139BC7:        97 01         STA [$01],y               
CODE_139BC9:        E6 0C         INC $0C                   
CODE_139BCB:        20 D2 96      JSR CODE_1396D2           
CODE_139BCE:        BF CD DA 13   LDA.l DATA_13DACD,x             
CODE_139BD2:        DA            PHX                       
CODE_139BD3:        20 24 9C      JSR CODE_139C24           
CODE_139BD6:        FA            PLX                       
CODE_139BD7:        97 01         STA [$01],y               
CODE_139BD9:        E6 0C         INC $0C                   
CODE_139BDB:        98            TYA                       
CODE_139BDC:        29 F0         AND #$F0                  
CODE_139BDE:        C9 E0         CMP #$E0                  
CODE_139BE0:        F0 28         BEQ CODE_139C0A           
CODE_139BE2:        20 D2 96      JSR CODE_1396D2           
CODE_139BE5:        A5 0D         LDA $0D                   
CODE_139BE7:        18            CLC                       
CODE_139BE8:        65 0E         ADC $0E                   
CODE_139BEA:        18            CLC                       
CODE_139BEB:        65 0F         ADC $0F                   
CODE_139BED:        AA            TAX                       
CODE_139BEE:        BF DD DA 13   LDA.l DATA_13DADD,x             
CODE_139BF2:        97 01         STA [$01],y               
CODE_139BF4:        98            TYA                       
CODE_139BF5:        29 F0         AND #$F0                  
CODE_139BF7:        C9 E0         CMP #$E0                  
CODE_139BF9:        F0 0F         BEQ CODE_139C0A           
CODE_139BFB:        A5 0F         LDA $0F                   
CODE_139BFD:        18            CLC                       
CODE_139BFE:        69 10         ADC #$10                  
CODE_139C00:        85 0F         STA $0F                   
CODE_139C02:        C9 50         CMP #$50                  
CODE_139C04:        D0 DC         BNE CODE_139BE2           
CODE_139C06:        64 0F         STZ $0F                   
CODE_139C08:        80 D8         BRA CODE_139BE2           

CODE_139C0A:        A5 0E         LDA $0E                   
CODE_139C0C:        C9 03         CMP #$03                  
CODE_139C0E:        F0 0E         BEQ CODE_139C1E           
CODE_139C10:        AC E7 00      LDY $00E7                 
CODE_139C13:        20 B0 96      JSR CODE_1396B0           
CODE_139C16:        8C E7 00      STY $00E7                 
CODE_139C19:        E6 0E         INC $0E                   
CODE_139C1B:        82 94 FF      BRL CODE_139BB2           

CODE_139C1E:        DA            PHX                       
CODE_139C1F:        20 57 9C      JSR CODE_139C57           
CODE_139C22:        FA            PLX                       
CODE_139C23:        60            RTS                       

CODE_139C24:        8D 47 02      STA $0247                 
CODE_139C27:        A5 0D         LDA $0D                   
CODE_139C29:        C9 0C         CMP #$0C                  
CODE_139C2B:        F0 26         BEQ CODE_139C53           
CODE_139C2D:        A5 0C         LDA $0C                   
CODE_139C2F:        F0 0A         BEQ CODE_139C3B           
CODE_139C31:        A5 0E         LDA $0E                   
CODE_139C33:        F0 06         BEQ CODE_139C3B           
CODE_139C35:        C9 03         CMP #$03                  
CODE_139C37:        F0 02         BEQ CODE_139C3B           
CODE_139C39:        80 18         BRA CODE_139C53           

CODE_139C3B:        B7 01         LDA [$01],y               
CODE_139C3D:        C9 FF         CMP #$FF                  
CODE_139C3F:        F0 12         BEQ CODE_139C53           
CODE_139C41:        A2 05         LDX #$05                  
CODE_139C43:        DF 2D DB 13   CMP.l DATA_13DB2D,x             
CODE_139C47:        F0 05         BEQ CODE_139C4E           
CODE_139C49:        CA            DEX                       
CODE_139C4A:        10 F7         BPL CODE_139C43           
CODE_139C4C:        80 05         BRA CODE_139C53           

CODE_139C4E:        BF 33 DB 13   LDA.l DATA_13DB33,x             
CODE_139C52:        60            RTS                       

CODE_139C53:        AD 47 02      LDA $0247                 
CODE_139C56:        60            RTS                       

CODE_139C57:        AC E7 00      LDY $00E7                 
CODE_139C5A:        20 B0 96      JSR CODE_1396B0           
CODE_139C5D:        98            TYA                       
CODE_139C5E:        18            CLC                       
CODE_139C5F:        69 10         ADC #$10                  
CODE_139C61:        A8            TAY                       
CODE_139C62:        B7 01         LDA [$01],y               
CODE_139C64:        C9 32         CMP #$32                  
CODE_139C66:        D0 06         BNE CODE_139C6E           
CODE_139C68:        A9 45         LDA #$45                  
CODE_139C6A:        97 01         STA [$01],y               
CODE_139C6C:        80 19         BRA CODE_139C87           

CODE_139C6E:        B7 01         LDA [$01],y               
CODE_139C70:        C9 FF         CMP #$FF                  
CODE_139C72:        F0 13         BEQ CODE_139C87           
CODE_139C74:        A2 05         LDX #$05                  
CODE_139C76:        DF 39 DB 13   CMP.l DATA_13DB39,x             
CODE_139C7A:        F0 05         BEQ CODE_139C81           
CODE_139C7C:        CA            DEX                       
CODE_139C7D:        10 F7         BPL CODE_139C76           
CODE_139C7F:        80 06         BRA CODE_139C87           

CODE_139C81:        BF 3F DB 13   LDA.l DATA_13DB3F,x             
CODE_139C85:        97 01         STA [$01],y               
CODE_139C87:        98            TYA                       
CODE_139C88:        29 F0         AND #$F0                  
CODE_139C8A:        C9 E0         CMP #$E0                  
CODE_139C8C:        F0 05         BEQ CODE_139C93           
CODE_139C8E:        20 D2 96      JSR CODE_1396D2           
CODE_139C91:        80 DB         BRA CODE_139C6E           

CODE_139C93:        60            RTS                       

CODE_139C94:        AD 33 05      LDA $0533                 
CODE_139C97:        C9 0D         CMP #$0D                  
CODE_139C99:        D0 0F         BNE CODE_139CAA           
CODE_139C9B:        AD 34 05      LDA $0534                 
CODE_139C9E:        C9 02         CMP #$02                  
CODE_139CA0:        F0 04         BEQ CODE_139CA6           
CODE_139CA2:        C9 03         CMP #$03                  
CODE_139CA4:        D0 04         BNE CODE_139CAA           
CODE_139CA6:        A9 C0         LDA #$C0                  
CODE_139CA8:        80 02         BRA CODE_139CAC           

CODE_139CAA:        A9 B0         LDA #$B0                  
CODE_139CAC:        85 0D         STA $0D                   
CODE_139CAE:        64 0E         STZ $0E                   
CODE_139CB0:        A4 E7         LDY $E7                   
CODE_139CB2:        A6 0E         LDX $0E                   
CODE_139CB4:        BF 45 DB 13   LDA.l DATA_13DB45,x             
CODE_139CB8:        20 E0 9C      JSR CODE_139CE0           
CODE_139CBB:        97 01         STA [$01],y               
CODE_139CBD:        20 D2 96      JSR CODE_1396D2           
CODE_139CC0:        98            TYA                       
CODE_139CC1:        29 F0         AND #$F0                  
CODE_139CC3:        C5 0D         CMP $0D                   
CODE_139CC5:        F0 08         BEQ CODE_139CCF           
CODE_139CC7:        BF 47 DB 13   LDA.l DATA_13DB47,x             
CODE_139CCB:        97 01         STA [$01],y               
CODE_139CCD:        80 EE         BRA CODE_139CBD           

CODE_139CCF:        20 04 9D      JSR CODE_139D04           
CODE_139CD2:        A5 0E         LDA $0E                   
CODE_139CD4:        D0 09         BNE CODE_139CDF           
CODE_139CD6:        A4 E7         LDY $E7                   
CODE_139CD8:        20 B0 96      JSR CODE_1396B0           
CODE_139CDB:        E6 0E         INC $0E                   
CODE_139CDD:        80 D3         BRA CODE_139CB2           

CODE_139CDF:        60            RTS                       

CODE_139CE0:        8D 47 02      STA $0247                 
CODE_139CE3:        86 0F         STX $0F                   
CODE_139CE5:        B7 01         LDA [$01],y               
CODE_139CE7:        C9 FF         CMP #$FF                  
CODE_139CE9:        F0 13         BEQ CODE_139CFE           
CODE_139CEB:        A2 01         LDX #$01                  
CODE_139CED:        DF 49 DB 13   CMP.l DATA_13DB49,x             
CODE_139CF1:        F0 05         BEQ CODE_139CF8           
CODE_139CF3:        CA            DEX                       
CODE_139CF4:        10 F7         BPL CODE_139CED           
CODE_139CF6:        80 06         BRA CODE_139CFE           

CODE_139CF8:        BF 4B DB 13   LDA.l DATA_13DB4B,x             
CODE_139CFC:        80 03         BRA CODE_139D01           

CODE_139CFE:        AD 47 02      LDA $0247                 
CODE_139D01:        A6 0F         LDX $0F                   
CODE_139D03:        60            RTS                       

CODE_139D04:        A5 0E         LDA $0E                   
CODE_139D06:        0A            ASL A                     
CODE_139D07:        AA            TAX                       
CODE_139D08:        B7 01         LDA [$01],y               
CODE_139D0A:        DF 4D DB 13   CMP.l DATA_13DB4D,x             
CODE_139D0E:        F0 07         BEQ CODE_139D17           
CODE_139D10:        E8            INX                       
CODE_139D11:        DF 4D DB 13   CMP.l DATA_13DB4D,x             
CODE_139D15:        D0 07         BNE CODE_139D1E           
CODE_139D17:        BF 51 DB 13   LDA.l DATA_13DB51,x             
CODE_139D1B:        97 01         STA [$01],y               
CODE_139D1D:        60            RTS                       

CODE_139D1E:        A5 0E         LDA $0E                   
CODE_139D20:        0A            ASL A                     
CODE_139D21:        AA            TAX                       
CODE_139D22:        B7 01         LDA [$01],y               
CODE_139D24:        DF 55 DB 13   CMP.l DATA_13DB55,x             
CODE_139D28:        F0 07         BEQ CODE_139D31           
CODE_139D2A:        E8            INX                       
CODE_139D2B:        DF 55 DB 13   CMP.l DATA_13DB55,x             
CODE_139D2F:        D0 06         BNE CODE_139D37           
CODE_139D31:        BF 59 DB 13   LDA.l DATA_13DB59,x             
CODE_139D35:        97 01         STA [$01],y               
CODE_139D37:        60            RTS                       

CODE_139D38:        A4 E7         LDY $E7                   
CODE_139D3A:        AF 5D DB 13   LDA.l DATA_13DB5D               
CODE_139D3E:        97 01         STA [$01],y               
CODE_139D40:        20 D2 96      JSR CODE_1396D2           
CODE_139D43:        AF 5E DB 13   LDA.l DATA_13DB5E               
CODE_139D47:        97 01         STA [$01],y               
CODE_139D49:        20 D2 96      JSR CODE_1396D2           
CODE_139D4C:        AF 5F DB 13   LDA.l DATA_13DB5F               
CODE_139D50:        97 01         STA [$01],y               
CODE_139D52:        60            RTS                       

CODE_139D53:        9C 70 07      STZ $0770                 
CODE_139D56:        64 C4         STZ $C4                   
CODE_139D58:        AD 33 05      LDA $0533                 
CODE_139D5B:        C9 0F         CMP #$0F                  
CODE_139D5D:        D0 0C         BNE CODE_139D6B           
CODE_139D5F:        AD 1B 05      LDA $051B                 
CODE_139D62:        D0 07         BNE CODE_139D6B           
CODE_139D64:        EE 70 07      INC $0770                 
CODE_139D67:        A9 80         LDA #$80                  
CODE_139D69:        80 02         BRA CODE_139D6D           

CODE_139D6B:        A9 60         LDA #$60                  
CODE_139D6D:        85 C5         STA $C5                   
CODE_139D6F:        A9 7F         LDA #$7F                  
CODE_139D71:        85 C6         STA $C6                   
CODE_139D73:        AD 70 07      LDA $0770                 
CODE_139D76:        D0 0D         BNE CODE_139D85           
CODE_139D78:        AE 33 05      LDX $0533                 
CODE_139D7B:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_139D7F:        18            CLC                       
CODE_139D80:        6D 34 05      ADC $0534                 
CODE_139D83:        80 09         BRA CODE_139D8E           

CODE_139D85:        A2 0F         LDX #$0F                  
CODE_139D87:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_139D8B:        18            CLC                       
CODE_139D8C:        69 06         ADC #$06                  
CODE_139D8E:        AA            TAX                       
CODE_139D8F:        BF 1D A6 13   LDA.l DATA_13A61D,x             
CODE_139D93:        0A            ASL A                     
CODE_139D94:        AA            TAX                       
CODE_139D95:        BF E5 A6 13   LDA.l PNTR_13A6E5,x             
CODE_139D99:        85 00         STA $00                   
CODE_139D9B:        E8            INX                       
CODE_139D9C:        BF E5 A6 13   LDA.l PNTR_13A6E5,x             
CODE_139DA0:        85 01         STA $01                   
CODE_139DA2:        A9 13         LDA #$13                  
CODE_139DA4:        85 02         STA $02                   
CODE_139DA6:        9C D7 02      STZ $02D7                 
CODE_139DA9:        9C D8 02      STZ $02D8                 
CODE_139DAC:        9C DA 02      STZ $02DA                 
CODE_139DAF:        A9 10         LDA #$10                  
CODE_139DB1:        8D D9 02      STA $02D9                 
CODE_139DB4:        22 2D 8B 11   JSL CODE_118B2D           
CODE_139DB8:        20 F3 97      JSR CODE_1397F3           
CODE_139DBB:        AD D9 02      LDA $02D9                 
CODE_139DBE:        C9 14         CMP #$14                  
CODE_139DC0:        D0 F2         BNE CODE_139DB4           
CODE_139DC2:        A9 00         LDA #$00                  
CODE_139DC4:        8F 00 00 7F   STA $7F0000               
CODE_139DC8:        8F 01 00 7F   STA $7F0001               
CODE_139DCC:        3A            DEC A                     
CODE_139DCD:        8F 02 00 7F   STA $7F0002               
CODE_139DD1:        9C 02 02      STZ $0202                 
CODE_139DD4:        9C 03 02      STZ $0203                 
CODE_139DD7:        A9 20         LDA #$20                  
CODE_139DD9:        8D 3D 02      STA $023D                 
CODE_139DDC:        A9 40         LDA #$40                  
CODE_139DDE:        8D 3E 02      STA $023E                 
CODE_139DE1:        A9 80         LDA #$80                  
CODE_139DE3:        8D 3F 02      STA $023F                 
CODE_139DE6:        6B            RTL                       

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

CODE_13DC00:        C2 30         REP #$30                  
CODE_13DC02:        AD 33 05      LDA $0533                 
CODE_13DC05:        29 FF 00      AND #$00FF                
CODE_13DC08:        0A            ASL A                     
CODE_13DC09:        0A            ASL A                     
CODE_13DC0A:        0A            ASL A                     
CODE_13DC0B:        0A            ASL A                     
CODE_13DC0C:        0A            ASL A                     
CODE_13DC0D:        AA            TAX                       
CODE_13DC0E:        A0 00 00      LDY #$0000                
CODE_13DC11:        BF 5C B6 14   LDA.l DATA_14B65C,x             
CODE_13DC15:        99 A0 0C      STA $0CA0,y               
CODE_13DC18:        E8            INX                       
CODE_13DC19:        E8            INX                       
CODE_13DC1A:        C8            INY                       
CODE_13DC1B:        C8            INY                       
CODE_13DC1C:        C0 20 00      CPY #$0020                
CODE_13DC1F:        D0 F0         BNE CODE_13DC11           
CODE_13DC21:        E2 30         SEP #$30                  
CODE_13DC23:        AE 33 05      LDX $0533                 
CODE_13DC26:        BF 98 D0 11   LDA.l DATA_11D098,x             
CODE_13DC2A:        18            CLC                       
CODE_13DC2B:        6D 34 05      ADC $0534                 
CODE_13DC2E:        A2 06         LDX #$06                  
CODE_13DC30:        DF 79 87 13   CMP.l DATA_138779,x             
CODE_13DC34:        F0 06         BEQ CODE_13DC3C           
CODE_13DC36:        CA            DEX                       
CODE_13DC37:        10 F7         BPL CODE_13DC30           
CODE_13DC39:        82 A0 02      BRL CODE_13DEDC           

CODE_13DC3C:        C2 20         REP #$20                  
CODE_13DC3E:        8A            TXA                       
CODE_13DC3F:        29 FF 00      AND #$00FF                
CODE_13DC42:        0A            ASL A                     
CODE_13DC43:        0A            ASL A                     
CODE_13DC44:        0A            ASL A                     
CODE_13DC45:        0A            ASL A                     
CODE_13DC46:        0A            ASL A                     
CODE_13DC47:        AA            TAX                       
CODE_13DC48:        A0 00         LDY #$00                  
CODE_13DC4A:        BF DC B8 14   LDA.l DATA_14B8DC,x             
CODE_13DC4E:        99 A0 0C      STA $0CA0,y               
CODE_13DC51:        E8            INX                       
CODE_13DC52:        E8            INX                       
CODE_13DC53:        C8            INY                       
CODE_13DC54:        C8            INY                       
CODE_13DC55:        C0 20         CPY #$20                  
CODE_13DC57:        D0 F1         BNE CODE_13DC4A           
CODE_13DC59:        E2 20         SEP #$20                  
CODE_13DC5B:        82 7E 02      BRL CODE_13DEDC           

CODE_13DC5E:        C2 20         REP #$20                  
CODE_13DC60:        A2 00         LDX #$00                  
CODE_13DC62:        BF 15 E7 15   LDA.l DATA_15E715,x             
CODE_13DC66:        9D 00 0B      STA $0B00,x               
CODE_13DC69:        BF 35 E7 15   LDA.l DATA_15E735,x             
CODE_13DC6D:        9D 20 0B      STA $0B20,x               
CODE_13DC70:        BF 75 E7 15   LDA.l DATA_15E775,x             
CODE_13DC74:        9D 60 0B      STA $0B60,x               
CODE_13DC77:        BF 95 E7 15   LDA.l DATA_15E795,x             
CODE_13DC7B:        9D 80 0B      STA $0B80,x               
CODE_13DC7E:        BF B5 E7 15   LDA.l DATA_15E7B5,x             
CODE_13DC82:        9D A0 0B      STA $0BA0,x               
CODE_13DC85:        BF D5 E7 15   LDA.l DATA_15E7D5,x             
CODE_13DC89:        9D C0 0B      STA $0BC0,x               
CODE_13DC8C:        BF F5 E7 15   LDA.l DATA_15E7F5,x             
CODE_13DC90:        9D E0 0B      STA $0BE0,x               
CODE_13DC93:        E8            INX                       
CODE_13DC94:        E8            INX                       
CODE_13DC95:        E0 20         CPX #$20                  
CODE_13DC97:        D0 C9         BNE CODE_13DC62           
CODE_13DC99:        A2 00         LDX #$00                  
CODE_13DC9B:        BF 15 E8 15   LDA.l DATA_15E815,x             
CODE_13DC9F:        9D 40 0B      STA $0B40,x               
CODE_13DCA2:        E8            INX                       
CODE_13DCA3:        E8            INX                       
CODE_13DCA4:        E0 20         CPX #$20                  
CODE_13DCA6:        D0 F3         BNE CODE_13DC9B           
CODE_13DCA8:        E2 20         SEP #$20                  
CODE_13DCAA:        82 2F 02      BRL CODE_13DEDC           

CODE_13DCAD:        C2 20         REP #$20                  
CODE_13DCAF:        A2 00         LDX #$00                  
CODE_13DCB1:        BD EC C9      LDA.w DATA_11C9EC,x               
CODE_13DCB4:        9D 00 0B      STA $0B00,x               
CODE_13DCB7:        E8            INX                       
CODE_13DCB8:        E8            INX                       
CODE_13DCB9:        E0 08         CPX #$08                  
CODE_13DCBB:        90 F4         BCC CODE_13DCB1           
CODE_13DCBD:        E2 20         SEP #$20                  
CODE_13DCBF:        82 1A 02      BRL CODE_13DEDC           

CODE_13DCC2:        DA            PHX                       
CODE_13DCC3:        C2 20         REP #$20                  
CODE_13DCC5:        A2 00         LDX #$00                  
CODE_13DCC7:        BF E0 BA 14   LDA.l DATA_14BAE0,x             
CODE_13DCCB:        9D A0 0C      STA $0CA0,x               
CODE_13DCCE:        E8            INX                       
CODE_13DCCF:        E8            INX                       
CODE_13DCD0:        E0 20         CPX #$20                  
CODE_13DCD2:        D0 F3         BNE CODE_13DCC7           
CODE_13DCD4:        E2 20         SEP #$20                  
CODE_13DCD6:        FA            PLX                       
CODE_13DCD7:        82 02 02      BRL CODE_13DEDC           

DATA_13DCDA:        db $00,$00,$00,$00,$00,$00,$60,$00
                    db $00,$00,$00,$00,$C0,$00

DATA_13DCE8:        db $51,$7F,$40,$49,$51,$7F,$F5,$7E
                    db $51,$7F,$40,$49,$F5,$7E

CODE_13DCF6:        C2 30         REP #$30                  ; Accumulator and Index = 16-bit.
CODE_13DCF8:        AD 35 06      LDA $0635                 ; \ Get world number * 2 into index.
CODE_13DCFB:        29 0F 00      AND #$000F                ;  |
CODE_13DCFE:        0A            ASL A                     ;  |
CODE_13DCFF:        AA            TAX                       ; /
CODE_13DD00:        BF E8 DC 13   LDA.l DATA_13DCE8,x         ; \ Get BG colour for the 'World x-x' screen.  
CODE_13DD04:        8D 00 0B      STA $0B00                 ; /
CODE_13DD07:        BF DA DC 13   LDA.l DATA_13DCDA,x         ; \ Get index for different palette set.     
CODE_13DD0B:        AA            TAX                       ; /
CODE_13DD0C:        A0 00 00      LDY #$0000                ; \ Y = #$0000.
CODE_13DD0F:        BF 55 F5 15   LDA.l DATA_15F555,x         ;  | Load colours into palette 1.
CODE_13DD13:        99 20 0B      STA $0B20,y               ;  |
CODE_13DD16:        BF 75 F5 15   LDA.l DATA_15F575,x         ;  | Load colours into palette 2. 
CODE_13DD1A:        99 40 0B      STA $0B40,y               ;  |
CODE_13DD1D:        BF 95 F5 15   LDA.l DATA_15F595,x         ;  | Load colours into palette 7. 
CODE_13DD21:        99 E0 0B      STA $0BE0,y               ; /
CODE_13DD24:        E8            INX                       ; \ Get to next colours.
CODE_13DD25:        E8            INX                       ;  |
CODE_13DD26:        C8            INY                       ;  |
CODE_13DD27:        C8            INY                       ;  |
CODE_13DD28:        C0 20 00      CPY #$0020                ;  | Check if full palette has been uploaded.
CODE_13DD2B:        D0 E2         BNE CODE_13DD0F           ; / If not, loop.
CODE_13DD2D:        A9 FF 7F      LDA #$7FFF                ; \ Palette 3 colours D-F = white.
CODE_13DD30:        8D 7A 0B      STA $0B7A                 ;  |
CODE_13DD33:        8D 7C 0B      STA $0B7C                 ;  |
CODE_13DD36:        8D 7E 0B      STA $0B7E                 ; /
CODE_13DD39:        A9 96 28      LDA #$2896                ; \ Palette 5 colour 9-B = pink-ish colours.
CODE_13DD3C:        8D B2 0B      STA $0BB2                 ;  |
CODE_13DD3F:        A9 5F 49      LDA #$495F                ;  |
CODE_13DD42:        8D B4 0B      STA $0BB4                 ;  |
CODE_13DD45:        A9 9F 6E      LDA #$6E9F                ;  |
CODE_13DD48:        8D B6 0B      STA $0BB6                 ; /
CODE_13DD4B:        E2 30         SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_13DD4D:        82 8C 01      BRL CODE_13DEDC           

CODE_13DD50:        AD 33 05      LDA $0533                 
CODE_13DD53:        C9 11         CMP #$11                  
CODE_13DD55:        D0 0B         BNE CODE_13DD62           
CODE_13DD57:        AD 34 05      LDA $0534                 
CODE_13DD5A:        C9 03         CMP #$03                  
CODE_13DD5C:        F0 2F         BEQ CODE_13DD8D           
CODE_13DD5E:        C9 04         CMP #$04                  
CODE_13DD60:        F0 2B         BEQ CODE_13DD8D           
CODE_13DD62:        AD 33 05      LDA $0533                 
CODE_13DD65:        C9 13         CMP #$13                  
CODE_13DD67:        D0 07         BNE CODE_13DD70           
CODE_13DD69:        AD 34 05      LDA $0534                 
CODE_13DD6C:        C9 05         CMP #$05                  
CODE_13DD6E:        F0 1D         BEQ CODE_13DD8D           
CODE_13DD70:        C2 20         REP #$20                  
CODE_13DD72:        A2 00         LDX #$00                  
CODE_13DD74:        BF BC B9 14   LDA.l DATA_14B9BC,x             
CODE_13DD78:        9D 00 0B      STA $0B00,x               
CODE_13DD7B:        BF CC B9 14   LDA.l DATA_14B9CC,x             
CODE_13DD7F:        9D 10 0B      STA $0B10,x               
CODE_13DD82:        E8            INX                       
CODE_13DD83:        E8            INX                       
CODE_13DD84:        E0 10         CPX #$10                  
CODE_13DD86:        D0 EC         BNE CODE_13DD74           
CODE_13DD88:        E2 20         SEP #$20                  
CODE_13DD8A:        82 4F 01      BRL CODE_13DEDC           

CODE_13DD8D:        6B            RTL                       

CODE_13DD8E:        C2 20         REP #$20                  
CODE_13DD90:        A2 00         LDX #$00                  
CODE_13DD92:        BF 00 BB 14   LDA.l DATA_14BB00,x             
CODE_13DD96:        9D 00 0B      STA $0B00,x               
CODE_13DD99:        BF 20 BB 14   LDA.l DATA_14BB20,x             
CODE_13DD9D:        9D 20 0B      STA $0B20,x               
CODE_13DDA0:        BF 40 BB 14   LDA.l DATA_14BB40,x             
CODE_13DDA4:        9D 40 0B      STA $0B40,x               
CODE_13DDA7:        BF 60 BB 14   LDA.l DATA_14BB60,x             
CODE_13DDAB:        9D 60 0B      STA $0B60,x               
CODE_13DDAE:        BF 80 BB 14   LDA.l DATA_14BB80,x             
CODE_13DDB2:        9D 80 0B      STA $0B80,x               
CODE_13DDB5:        BF A0 BB 14   LDA.l DATA_14BBA0,x             
CODE_13DDB9:        9D A0 0B      STA $0BA0,x               
CODE_13DDBC:        BF C0 BB 14   LDA.l DATA_14BBC0,x             
CODE_13DDC0:        9D C0 0B      STA $0BC0,x               
CODE_13DDC3:        BF E0 BB 14   LDA.l DATA_14BBE0,x             
CODE_13DDC7:        9D E0 0B      STA $0BE0,x               
CODE_13DDCA:        BF 00 BC 14   LDA.l DATA_14BC00,x             
CODE_13DDCE:        9D 00 0C      STA $0C00,x               
CODE_13DDD1:        BF 20 BC 14   LDA.l DATA_14BC20,x             
CODE_13DDD5:        9D 20 0C      STA $0C20,x               
CODE_13DDD8:        BF 40 BC 14   LDA.l DATA_14BC40,x             
CODE_13DDDC:        9D 40 0C      STA $0C40,x               
CODE_13DDDF:        BF 60 BC 14   LDA.l DATA_14BC60,x             
CODE_13DDE3:        9D 60 0C      STA $0C60,x               
CODE_13DDE6:        BF 80 BC 14   LDA.l DATA_14BC80,x             
CODE_13DDEA:        9D 80 0C      STA $0C80,x               
CODE_13DDED:        BF A0 BC 14   LDA.l DATA_14BCA0,x             
CODE_13DDF1:        9D A0 0C      STA $0CA0,x               
CODE_13DDF4:        BF C0 BC 14   LDA.l DATA_14BCC0,x             
CODE_13DDF8:        9D C0 0C      STA $0CC0,x               
CODE_13DDFB:        BF E0 BC 14   LDA.l DATA_14BCE0,x             
CODE_13DDFF:        9D E0 0C      STA $0CE0,x               
CODE_13DE02:        E8            INX                       
CODE_13DE03:        E8            INX                       
CODE_13DE04:        E0 20         CPX #$20                  
CODE_13DE06:        D0 8A         BNE CODE_13DD92           
CODE_13DE08:        E2 20         SEP #$20                  
CODE_13DE0A:        82 CF 00      BRL CODE_13DEDC           

CODE_13DE0D:        C2 20         REP #$20                  
CODE_13DE0F:        A2 00         LDX #$00                  
CODE_13DE11:        BF 00 BD 14   LDA.l DATA_14BD00,x             
CODE_13DE15:        9D 00 0B      STA $0B00,x               
CODE_13DE18:        BF 20 BD 14   LDA.l DATA_14BD20,x             
CODE_13DE1C:        9D 20 0B      STA $0B20,x               
CODE_13DE1F:        BF 40 BD 14   LDA.l DATA_14BD40,x             
CODE_13DE23:        9D 40 0B      STA $0B40,x               
CODE_13DE26:        BF 60 BD 14   LDA.l DATA_14BD60,x             
CODE_13DE2A:        9D 60 0B      STA $0B60,x               
CODE_13DE2D:        BF 80 BD 14   LDA.l DATA_14BD80,x             
CODE_13DE31:        9D 80 0B      STA $0B80,x               
CODE_13DE34:        BF A0 BD 14   LDA.l DATA_14BDA0,x             
CODE_13DE38:        9D A0 0B      STA $0BA0,x               
CODE_13DE3B:        BF C0 BD 14   LDA.l DATA_14BDC0,x             
CODE_13DE3F:        9D C0 0B      STA $0BC0,x               
CODE_13DE42:        BF E0 BD 14   LDA.l DATA_14BDE0,x             
CODE_13DE46:        9D E0 0B      STA $0BE0,x               
CODE_13DE49:        BF 00 BE 14   LDA.l DATA_14BE00,x             
CODE_13DE4D:        9D 00 0C      STA $0C00,x               
CODE_13DE50:        BF 20 BE 14   LDA.l DATA_14BE20,x             
CODE_13DE54:        9D 20 0C      STA $0C20,x               
CODE_13DE57:        BF 40 BE 14   LDA.l DATA_14BE40,x             
CODE_13DE5B:        9D 40 0C      STA $0C40,x               
CODE_13DE5E:        BF 60 BE 14   LDA.l DATA_14BE60,x             
CODE_13DE62:        9D 60 0C      STA $0C60,x               
CODE_13DE65:        BF 80 BE 14   LDA.l DATA_14BE80,x             
CODE_13DE69:        9D 80 0C      STA $0C80,x               
CODE_13DE6C:        BF A0 BE 14   LDA.l DATA_14BEA0,x             
CODE_13DE70:        9D A0 0C      STA $0CA0,x               
CODE_13DE73:        BF C0 BE 14   LDA.l DATA_14BEC0,x             
CODE_13DE77:        9D C0 0C      STA $0CC0,x               
CODE_13DE7A:        BF E0 BE 14   LDA.l DATA_14BEE0,x             
CODE_13DE7E:        9D E0 0C      STA $0CE0,x               
CODE_13DE81:        E8            INX                       
CODE_13DE82:        E8            INX                       
CODE_13DE83:        E0 20         CPX #$20                  
CODE_13DE85:        D0 8A         BNE CODE_13DE11           
CODE_13DE87:        E2 20         SEP #$20                  
CODE_13DE89:        82 50 00      BRL CODE_13DEDC           

CODE_13DE8C:        C2 20         REP #$20                  
CODE_13DE8E:        A2 00         LDX #$00                  
CODE_13DE90:        BF 15 E7 15   LDA.l DATA_15E715,x             
CODE_13DE94:        9D 00 0B      STA $0B00,x               
CODE_13DE97:        BF 35 E7 15   LDA.l DATA_15E735,x             
CODE_13DE9B:        9D 20 0B      STA $0B20,x               
CODE_13DE9E:        BF 55 E7 15   LDA.l DATA_15E755,x             
CODE_13DEA2:        9D 40 0B      STA $0B40,x               
CODE_13DEA5:        BF 75 E7 15   LDA.l DATA_15E775,x             
CODE_13DEA9:        9D 60 0B      STA $0B60,x               
CODE_13DEAC:        BF 95 E7 15   LDA.l DATA_15E795,x             
CODE_13DEB0:        9D 80 0B      STA $0B80,x               
CODE_13DEB3:        BF B5 E7 15   LDA.l DATA_15E7B5,x             
CODE_13DEB7:        9D A0 0B      STA $0BA0,x               
CODE_13DEBA:        BF D5 E7 15   LDA.l DATA_15E7D5,x             
CODE_13DEBE:        9D C0 0B      STA $0BC0,x               
CODE_13DEC1:        BF F5 E7 15   LDA.l DATA_15E7F5,x             
CODE_13DEC5:        9D E0 0B      STA $0BE0,x               
CODE_13DEC8:        E8            INX                       
CODE_13DEC9:        E8            INX                       
CODE_13DECA:        E0 20         CPX #$20                  
CODE_13DECC:        D0 C2         BNE CODE_13DE90           
CODE_13DECE:        A2 7E         LDX #$7E                  
CODE_13DED0:        BD 1C BB      LDA.w DATA_11BB1C,x               
CODE_13DED3:        9D 20 0C      STA $0C20,x               
CODE_13DED6:        CA            DEX                       
CODE_13DED7:        CA            DEX                       
CODE_13DED8:        10 F6         BPL CODE_13DED0           
CODE_13DEDA:        E2 20         SEP #$20                  
CODE_13DEDC:        A9 01         LDA #$01                  
CODE_13DEDE:        8D A9 02      STA $02A9                 
CODE_13DEE1:        6B            RTL                       

CODE_13DEE2:        A9 81         LDA #$81                  
CODE_13DEE4:        8D 39 02      STA $0239                 
CODE_13DEE7:        A9 38         LDA #$38                  
CODE_13DEE9:        8D 3D 02      STA $023D                 
CODE_13DEEC:        A9 52         LDA #$52                  
CODE_13DEEE:        8D 3E 02      STA $023E                 
CODE_13DEF1:        A9 80         LDA #$80                  
CODE_13DEF3:        8D 3F 02      STA $023F                 
CODE_13DEF6:        C2 20         REP #$20                  
CODE_13DEF8:        A9 25 3D      LDA #$3D25                
CODE_13DEFB:        8D 00 0B      STA $0B00                 
CODE_13DEFE:        E2 20         SEP #$20                  
CODE_13DF00:        80 DA         BRA CODE_13DEDC           

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

CODE_13DF6E:        C2 20         REP #$20                  
CODE_13DF70:        AC E1 04      LDY $04E1                 
CODE_13DF73:        A5 50         LDA $50                   
CODE_13DF75:        29 FF 00      AND #$00FF                
CODE_13DF78:        C9 08 00      CMP #$0008                
CODE_13DF7B:        D0 02         BNE CODE_13DF7F           
CODE_13DF7D:        A4 82         LDY $82                   
CODE_13DF7F:        A5 10         LDA $10                   
CODE_13DF81:        4A            LSR A                     
CODE_13DF82:        4A            LSR A                     
CODE_13DF83:        C0 18         CPY #$18                  
CODE_13DF85:        B0 08         BCS CODE_13DF8F                   
CODE_13DF87:        C0 01         CPY #$01                  
CODE_13DF89:        D0 03         BNE CODE_13DF8E           
CODE_13DF8B:        A9 00 00      LDA #$0000                
CODE_13DF8E:        4A            LSR A                     
CODE_13DF8F:        29 03 00      AND #$0003                
CODE_13DF92:        85 00         STA $00                   
CODE_13DF94:        0A            ASL A                     
CODE_13DF95:        18            CLC                       
CODE_13DF96:        65 00         ADC $00                   
CODE_13DF98:        AA            TAX                       
CODE_13DF99:        BF 02 DF 13   LDA.l PNTR_13DF02,x             
CODE_13DF9D:        85 00         STA $00                   
CODE_13DF9F:        BF 04 DF 13   LDA.l PNTR_13DF02+2,x             
CODE_13DFA3:        85 02         STA $02                   
CODE_13DFA5:        A0 00         LDY #$00                  
CODE_13DFA7:        B7 00         LDA [$00],y               
CODE_13DFA9:        99 00 0C      STA $0C00,y               
CODE_13DFAC:        C8            INY                       
CODE_13DFAD:        C8            INY                       
CODE_13DFAE:        C0 20         CPY #$20                  
CODE_13DFB0:        D0 F5         BNE CODE_13DFA7           
CODE_13DFB2:        E2 20         SEP #$20                  
CODE_13DFB4:        82 25 FF      BRL CODE_13DEDC           

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

CODE_13E0E7:        AD CB 04      LDA $04CB                 
CODE_13E0EA:        C9 3C         CMP #$3C                  
CODE_13E0EC:        B0 0D         BCS CODE_13E0FB                   
CODE_13E0EE:        AD 0A 0D      LDA $0D0A                 
CODE_13E0F1:        F0 07         BEQ CODE_13E0FA           
CODE_13E0F3:        9C 0A 0D      STZ $0D0A                 
CODE_13E0F6:        64 0C         STZ $0C                   
CODE_13E0F8:        80 0D         BRA CODE_13E107           

CODE_13E0FA:        6B            RTL                       

CODE_13E0FB:        A9 01         LDA #$01                  
CODE_13E0FD:        8D 0A 0D      STA $0D0A                 
CODE_13E100:        A5 10         LDA $10                   
CODE_13E102:        29 06         AND #$06                  
CODE_13E104:        4A            LSR A                     
CODE_13E105:        85 0C         STA $0C                   
CODE_13E107:        A5 8F         LDA $8F                   
CODE_13E109:        0A            ASL A                     
CODE_13E10A:        0A            ASL A                     
CODE_13E10B:        18            CLC                       
CODE_13E10C:        65 0C         ADC $0C                   
CODE_13E10E:        85 0C         STA $0C                   
CODE_13E110:        0A            ASL A                     
CODE_13E111:        18            CLC                       
CODE_13E112:        65 0C         ADC $0C                   
CODE_13E114:        AA            TAX                       
CODE_13E115:        BF B9 DF 13   LDA.l PNTR_13DFB7+2,x             
CODE_13E119:        85 0E         STA $0E                   
CODE_13E11B:        C2 20         REP #$20                  
CODE_13E11D:        BF B7 DF 13   LDA.l PNTR_13DFB7,x             
CODE_13E121:        85 0C         STA $0C                   
CODE_13E123:        A0 00         LDY #$00                  
CODE_13E125:        B7 0C         LDA [$0C],y               
CODE_13E127:        99 00 0C      STA $0C00,y               
CODE_13E12A:        C8            INY                       
CODE_13E12B:        C8            INY                       
CODE_13E12C:        C0 20         CPY #$20                  
CODE_13E12E:        D0 F5         BNE CODE_13E125           
CODE_13E130:        E2 20         SEP #$20                  
CODE_13E132:        82 A7 FD      BRL CODE_13DEDC           

DATA_13E135:        db $9C,$01,$18,$01,$D5,$00,$92,$00

DATA_13E13D:        db $1F,$33,$9B,$22,$17,$12,$93,$01

DATA_13E145:        db $1C,$00,$18,$00,$14,$00,$10,$00

DATA_13E14D:        db $00,$01,$03,$02,$01,$02,$03,$01
    
CODE_13E155:        AD 7C 07      LDA $077C
CODE_13E158:        F0 38         BEQ CODE_13E192
CODE_13E15A:        EE 7D 07      INC $077D                 
CODE_13E15D:        AD 7D 07      LDA $077D                 
CODE_13E160:        C9 04         CMP #$04                  
CODE_13E162:        90 06         BCC CODE_13E16A           
CODE_13E164:        9C 7D 07      STZ $077D                 
CODE_13E167:        EE 7E 07      INC $077E                 
CODE_13E16A:        AD 7E 07      LDA $077E                 
CODE_13E16D:        29 07         AND #$07                  
CODE_13E16F:        AA            TAX                       
CODE_13E170:        BF 4D E1 13   LDA.l DATA_13E14D,x             
CODE_13E174:        0A            ASL A                     
CODE_13E175:        AA            TAX                       
CODE_13E176:        C2 20         REP #$20                  
CODE_13E178:        BF 35 E1 13   LDA.l DATA_13E135,x             
CODE_13E17C:        8D 2C 0B      STA $0B2C                 
CODE_13E17F:        BF 3D E1 13   LDA.l DATA_13E13D,x             
CODE_13E183:        8D 2E 0B      STA $0B2E                 
CODE_13E186:        BF 45 E1 13   LDA.l DATA_13E145,x             
CODE_13E18A:        8D 38 0B      STA $0B38                 
CODE_13E18D:        E2 20         SEP #$20                  
CODE_13E18F:        82 4A FD      BRL CODE_13DEDC           

CODE_13E192:        6B            RTL                       

DATA_13E193:        db $35,$08

DATA_13E195:        db $AC,$04

DATA_13E197:        db $49,$04,$BF,$10,$37,$08,$B0,$04
                    db $DF,$39,$BF,$10,$37,$08,$3F,$67
                    db $DF,$39,$BF,$10,$61,$04,$61,$04
                    db $61,$04

DATA_13E1B1:        db $1A,$07,$06,$07,$14,$07,$06,$07

CODE_13E1B9:        AD 7F 07      LDA $077F
CODE_13E1BC:        D0 04         BNE CODE_13E1C2
CODE_13E1BE:        9C 80 07      STZ $0780                 
CODE_13E1C1:        6B            RTL                       

CODE_13E1C2:        A5 9C         LDA $9C                   
CODE_13E1C4:        F0 48         BEQ CODE_13E20E           
CODE_13E1C6:        AE 2D 04      LDX $042D                 
CODE_13E1C9:        B5 90         LDA $90,x                 
CODE_13E1CB:        C9 3D         CMP #$3D                  
CODE_13E1CD:        D0 3F         BNE CODE_13E20E           
CODE_13E1CF:        EE 81 07      INC $0781                 
CODE_13E1D2:        AD 80 07      LDA $0780                 
CODE_13E1D5:        29 07         AND #$07                  
CODE_13E1D7:        AA            TAX                       
CODE_13E1D8:        BF B1 E1 13   LDA.l DATA_13E1B1,x             
CODE_13E1DC:        CD 81 07      CMP $0781                 
CODE_13E1DF:        D0 14         BNE CODE_13E1F5           
CODE_13E1E1:        EE 80 07      INC $0780                 
CODE_13E1E4:        AD 80 07      LDA $0780                 
CODE_13E1E7:        29 07         AND #$07                  
CODE_13E1E9:        C9 01         CMP #$01                  
CODE_13E1EB:        D0 05         BNE CODE_13E1F2           
CODE_13E1ED:        A9 42         LDA #$42                  
CODE_13E1EF:        8D E3 1D      STA $1DE3                 
CODE_13E1F2:        9C 81 07      STZ $0781                 
CODE_13E1F5:        AD 80 07      LDA $0780                 
CODE_13E1F8:        29 07         AND #$07                  
CODE_13E1FA:        F0 41         BEQ CODE_13E23D           
CODE_13E1FC:        3A            DEC A                     
CODE_13E1FD:        C9 04         CMP #$04                  
CODE_13E1FF:        90 03         BCC CODE_13E204           
CODE_13E201:        49 07         EOR #$07                  
CODE_13E203:        3A            DEC A                     
CODE_13E204:        0A            ASL A                     
CODE_13E205:        85 00         STA $00                   
CODE_13E207:        0A            ASL A                     
CODE_13E208:        18            CLC                       
CODE_13E209:        65 00         ADC $00                   
CODE_13E20B:        AA            TAX                       
CODE_13E20C:        80 31         BRA CODE_13E23F           

CODE_13E20E:        AD 80 07      LDA $0780                 
CODE_13E211:        29 07         AND #$07                  
CODE_13E213:        F0 23         BEQ CODE_13E238           
CODE_13E215:        EE 81 07      INC $0781                 
CODE_13E218:        AA            TAX                       
CODE_13E219:        BF B1 E1 13   LDA.l DATA_13E1B1,x             
CODE_13E21D:        CD 81 07      CMP $0781                 
CODE_13E220:        D0 D3         BNE CODE_13E1F5           
CODE_13E222:        9C 81 07      STZ $0781                 
CODE_13E225:        AD 80 07      LDA $0780                 
CODE_13E228:        29 07         AND #$07                  
CODE_13E22A:        C9 04         CMP #$04                  
CODE_13E22C:        B0 05         BCS CODE_13E233                   
CODE_13E22E:        CE 80 07      DEC $0780                 
CODE_13E231:        80 C2         BRA CODE_13E1F5           

CODE_13E233:        EE 80 07      INC $0780                 
CODE_13E236:        80 BD         BRA CODE_13E1F5           

CODE_13E238:        A9 FF         LDA #$FF                  
CODE_13E23A:        8D 81 07      STA $0781                 
CODE_13E23D:        A2 18         LDX #$18                  
CODE_13E23F:        C2 20         REP #$20                  
CODE_13E241:        BF 93 E1 13   LDA.l DATA_13E193,x             
CODE_13E245:        8D E6 0B      STA $0BE6                 
CODE_13E248:        BF 95 E1 13   LDA.l DATA_13E195,x             
CODE_13E24C:        8D E8 0B      STA $0BE8                 
CODE_13E24F:        BF 97 E1 13   LDA.l DATA_13E197,x             
CODE_13E253:        8D EA 0B      STA $0BEA                 
CODE_13E256:        E2 20         SEP #$20                  
CODE_13E258:        82 81 FC      BRL CODE_13DEDC           

CODE_13E25B:        C2 20         REP #$20                  
CODE_13E25D:        9C 00 0B      STZ $0B00                 
CODE_13E260:        A2 00         LDX #$00                  
CODE_13E262:        BF A0 BF 14   LDA.l DATA_14BFA0,x             
CODE_13E266:        9D 20 0B      STA $0B20,x               
CODE_13E269:        BF C0 BF 14   LDA.l DATA_14BFC0,x             
CODE_13E26D:        9D 80 0B      STA $0B80,x               
CODE_13E270:        BF E0 BF 14   LDA.l DATA_14BFE0,x             
CODE_13E274:        9D E0 0B      STA $0BE0,x               
CODE_13E277:        E8            INX                       
CODE_13E278:        E8            INX                       
CODE_13E279:        E0 20         CPX #$20                  
CODE_13E27B:        D0 E5         BNE CODE_13E262           
CODE_13E27D:        E2 20         SEP #$20                  
CODE_13E27F:        82 5A FC      BRL CODE_13DEDC           

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

CODE_13E402:        AD 84 07      LDA $0784       
CODE_13E405:        F0 41         BEQ CODE_13E448           
CODE_13E407:        EE 85 07      INC $0785                 
CODE_13E40A:        AD 85 07      LDA $0785                 
CODE_13E40D:        C9 06         CMP #$06                  
CODE_13E40F:        90 10         BCC CODE_13E421           
CODE_13E411:        9C 85 07      STZ $0785                 
CODE_13E414:        EE 86 07      INC $0786                 
CODE_13E417:        AD 86 07      LDA $0786                 
CODE_13E41A:        C9 0C         CMP #$0C                  
CODE_13E41C:        D0 03         BNE CODE_13E421           
CODE_13E41E:        9C 86 07      STZ $0786                 
CODE_13E421:        C2 30         REP #$30                  
CODE_13E423:        AD 86 07      LDA $0786                 
CODE_13E426:        29 FF 00      AND #$00FF                
CODE_13E429:        0A            ASL A                     
CODE_13E42A:        AA            TAX                       
CODE_13E42B:        BF EA E3 13   LDA.l DATA_13E3EA,x             
CODE_13E42F:        AA            TAX                       
CODE_13E430:        A0 00 00      LDY #$0000                
CODE_13E433:        BF 82 E2 13   LDA.l DATA_13E282,x             
CODE_13E437:        99 22 0B      STA $0B22,y               
CODE_13E43A:        E8            INX                       
CODE_13E43B:        E8            INX                       
CODE_13E43C:        C8            INY                       
CODE_13E43D:        C8            INY                       
CODE_13E43E:        C0 1E 00      CPY #$001E                
CODE_13E441:        D0 F0         BNE CODE_13E433           
CODE_13E443:        E2 30         SEP #$30                  
CODE_13E445:        82 94 FA      BRL CODE_13DEDC           

CODE_13E448:        6B            RTL                       

DATA_13E449:        db $04,$0F,$11,$11,$0F,$04,$05

DATA_13E450:        db $01,$00,$03,$04,$06,$04,$04

CODE_13E457:        A2 06         LDX #$06                  
CODE_13E459:        AD 33 05      LDA $0533                 
CODE_13E45C:        DF 49 E4 13   CMP.l DATA_13E449,x             
CODE_13E460:        D0 09         BNE CODE_13E46B           
CODE_13E462:        AD 34 05      LDA $0534                 
CODE_13E465:        DF 50 E4 13   CMP.l DATA_13E450,x             
CODE_13E469:        F0 1A         BEQ CODE_13E485           
CODE_13E46B:        CA            DEX                       
CODE_13E46C:        10 EB         BPL CODE_13E459           
CODE_13E46E:        AD 33 05      LDA $0533                 
CODE_13E471:        C9 0F         CMP #$0F                  
CODE_13E473:        D0 0F         BNE CODE_13E484           
CODE_13E475:        AD 34 05      LDA $0534                 
CODE_13E478:        C9 04         CMP #$04                  
CODE_13E47A:        D0 08         BNE CODE_13E484           
CODE_13E47C:        AD 1B 05      LDA $051B                 
CODE_13E47F:        D0 03         BNE CODE_13E484           
CODE_13E481:        20 9D E4      JSR CODE_13E49D           
CODE_13E484:        6B            RTL                       

CODE_13E485:        20 89 E4      JSR CODE_13E489           
CODE_13E488:        6B            RTL                       

CODE_13E489:        8A            TXA                       
CODE_13E48A:        0A            ASL A                     
CODE_13E48B:        AA            TAX                       
CODE_13E48C:        7C 8F E4      JMP (PNTR_13E48F,x)

PNTR_13E48F:        dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4B8
                    dw CODE_13E4B8
                    dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4CC
                    
CODE_13E49D:        C2 20         REP #$20           
CODE_13E49F:        A2 00         LDX #$00
CODE_13E4A1:        BF 00 BF 14   LDA.l DATA_14BF00,x             
CODE_13E4A5:        9D 20 0B      STA $0B20,x               
CODE_13E4A8:        BF 20 BF 14   LDA.l DATA_14BF20,x             
CODE_13E4AC:        9D E0 0B      STA $0BE0,x               
CODE_13E4AF:        E8            INX                       
CODE_13E4B0:        E8            INX                       
CODE_13E4B1:        E0 20         CPX #$20                  
CODE_13E4B3:        D0 EC         BNE CODE_13E4A1           
CODE_13E4B5:        E2 20         SEP #$20                  
CODE_13E4B7:        60            RTS                       

CODE_13E4B8:        C2 20         REP #$20                  
CODE_13E4BA:        A2 00         LDX #$00                  
CODE_13E4BC:        BF 40 BF 14   LDA.l DATA_14BF40,x             
CODE_13E4C0:        9D E0 0B      STA $0BE0,x               
CODE_13E4C3:        E8            INX                       
CODE_13E4C4:        E8            INX                       
CODE_13E4C5:        E0 20         CPX #$20                  
CODE_13E4C7:        D0 F3         BNE CODE_13E4BC           
CODE_13E4C9:        E2 20         SEP #$20                  
CODE_13E4CB:        60            RTS                       

CODE_13E4CC:        C2 20         REP #$20                  
CODE_13E4CE:        A2 00         LDX #$00                  
CODE_13E4D0:        BF 60 BF 14   LDA.l DATA_14BF60,x             
CODE_13E4D4:        9D E0 0B      STA $0BE0,x               
CODE_13E4D7:        E8            INX                       
CODE_13E4D8:        E8            INX                       
CODE_13E4D9:        E0 20         CPX #$20                  
CODE_13E4DB:        D0 F3         BNE CODE_13E4D0           
CODE_13E4DD:        E2 20         SEP #$20                  
CODE_13E4DF:        60            RTS                       

DATA_13E4E0:        db $7F,$77

DATA_13E4E2:        db $E7,$34

DATA_13E4E4:        db $E7,$34

DATA_13E4E6:        db $E7,$34,$97,$5E,$09,$25,$2E,$29
                    db $EF,$35,$AF,$49,$2B,$15,$75,$1D
                    db $F7,$32,$E7,$34,$97,$0A,$3C,$13
                    db $DF,$2F

CODE_13E500:        AD 91 07      LDA $0791               
CODE_13E503:        D0 01         BNE CODE_13E506           
CODE_13E505:        6B            RTL                       

CODE_13E506:        8B            PHB                       
CODE_13E507:        4B            PHK                       
CODE_13E508:        AB            PLB                       
CODE_13E509:        A5 10         LDA $10                   
CODE_13E50B:        29 38         AND #$38                  
CODE_13E50D:        C9 20         CMP #$20                  
CODE_13E50F:        90 04         BCC CODE_13E515           
CODE_13E511:        29 18         AND #$18                  
CODE_13E513:        49 18         EOR #$18                  
CODE_13E515:        A8            TAY                       
CODE_13E516:        C2 20         REP #$20                  
CODE_13E518:        B9 E0 E4      LDA DATA_13E4E0,y               
CODE_13E51B:        8D 38 0B      STA $0B38                 
CODE_13E51E:        B9 E2 E4      LDA DATA_13E4E2,y               
CODE_13E521:        8D 3A 0B      STA $0B3A                 
CODE_13E524:        B9 E4 E4      LDA DATA_13E4E4,y               
CODE_13E527:        8D 3C 0B      STA $0B3C                 
CODE_13E52A:        B9 E6 E4      LDA DATA_13E4E6,y               
CODE_13E52D:        8D 3E 0B      STA $0B3E                 
CODE_13E530:        E2 20         SEP #$20                  
CODE_13E532:        AB            PLB                       
CODE_13E533:        82 A6 F9      BRL CODE_13DEDC           

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

CODE_13E700:        A9 80         LDA #$80
CODE_13E702:        F0 02         BEQ CODE_13E706           
CODE_13E704:        A9 0F         LDA #$0F                  
CODE_13E706:        85 FE         STA $FE                   
CODE_13E708:        A5 11         LDA $11                   
CODE_13E70A:        0A            ASL A                     
CODE_13E70B:        AA            TAX                       
CODE_13E70C:        BD A6 BD      LDA.w PNTR_11BDA6,x               
CODE_13E70F:        85 F0         STA $F0                   
CODE_13E711:        BD A7 BD      LDA.w PNTR_11BDA6+1,x               
CODE_13E714:        85 F1         STA $F1                   
CODE_13E716:        A9 11         LDA #$11                  
CODE_13E718:        85 F2         STA $F2                   
CODE_13E71A:        9C 54 01      STZ $0154                 
CODE_13E71D:        AD 54 01      LDA $0154                 
CODE_13E720:        10 FB         BPL CODE_13E71D           
CODE_13E722:        22 99 FA 14   JSL CODE_14FA99           
CODE_13E726:        58            CLI                       
CODE_13E727:        60            RTS                       

CODE_13E728:        A9 B0         LDA #$B0                  
CODE_13E72A:        80 02         BRA CODE_13E72E           

CODE_13E72C:        A9 30         LDA #$30                  
CODE_13E72E:        85 FF         STA $FF                   
CODE_13E730:        60            RTS                       

CODE_13E731:        20 00 E7      JSR CODE_13E700           
CODE_13E734:        22 53 F9 14   JSL CODE_14F953           
CODE_13E738:        A9 40         LDA #$40                  
CODE_13E73A:        8D 00 01      STA $0100                 
CODE_13E73D:        20 28 E7      JSR CODE_13E728           
CODE_13E740:        20 08 E7      JSR CODE_13E708           
CODE_13E743:        A9 01         LDA #$01                  
CODE_13E745:        85 11         STA $11                   
CODE_13E747:        20 08 E7      JSR CODE_13E708           
CODE_13E74A:        22 0D DE 13   JSL CODE_13DE0D           
CODE_13E74E:        A9 10         LDA #$10                  
CODE_13E750:        85 18         STA $18                   
CODE_13E752:        A9 04         LDA #$04                  
CODE_13E754:        85 14         STA $14                   
CODE_13E756:        64 FE         STZ $FE                   
CODE_13E758:        64 17         STZ $17                   
CODE_13E75A:        64 15         STZ $15                   
CODE_13E75C:        A9 20         LDA #$20                  
CODE_13E75E:        8D 39 02      STA $0239                 
CODE_13E761:        A9 70         LDA #$70                  
CODE_13E763:        8D 3A 02      STA $023A                 
CODE_13E766:        A9 01         LDA #$01                  
CODE_13E768:        22 E8 FA 14   JSL CODE_14FAE8           
CODE_13E76C:        A9 0D         LDA #$0D                  
CODE_13E76E:        85 16         STA $16                   
CODE_13E770:        64 15         STZ $15                   
CODE_13E772:        22 CE 8C 13   JSL CODE_138CCE           
CODE_13E776:        A9 01         LDA #$01                  
CODE_13E778:        8D 5E 02      STA $025E                 
CODE_13E77B:        A4 15         LDY $15                   
CODE_13E77D:        B9 A3 C1      LDA.w DATA_11C1A3,y               
CODE_13E780:        8D 10 02      STA $0210                 
CODE_13E783:        C6 18         DEC $18                   
CODE_13E785:        10 06         BPL CODE_13E78D           
CODE_13E787:        A9 10         LDA #$10                  
CODE_13E789:        85 18         STA $18                   
CODE_13E78B:        E6 17         INC $17                   
CODE_13E78D:        20 A4 E8      JSR CODE_13E8A4           
CODE_13E790:        A5 E6         LDA $E6                   
CODE_13E792:        C9 05         CMP #$05                  
CODE_13E794:        F0 09         BEQ CODE_13E79F           
CODE_13E796:        22 39 95 12   JSL CODE_129539           
CODE_13E79A:        20 08 E7      JSR CODE_13E708           
CODE_13E79D:        80 03         BRA CODE_13E7A2           

CODE_13E79F:        20 04 E7      JSR CODE_13E704           
CODE_13E7A2:        CE 10 02      DEC $0210                 
CODE_13E7A5:        10 DC         BPL CODE_13E783           
CODE_13E7A7:        E6 15         INC $15                   
CODE_13E7A9:        C6 16         DEC $16                   
CODE_13E7AB:        10 CE         BPL CODE_13E77B           
CODE_13E7AD:        C6 14         DEC $14                   
CODE_13E7AF:        30 03         BMI CODE_13E7B4           
CODE_13E7B1:        4C 6C E7      JMP CODE_13E76C           

CODE_13E7B4:        C6 E6         DEC $E6                   
CODE_13E7B6:        A9 03         LDA #$03                  
CODE_13E7B8:        85 11         STA $11                   
CODE_13E7BA:        22 F0 F9 14   JSL CODE_14F9F0           ; Clear all OAM.
CODE_13E7BE:        20 08 E7      JSR CODE_13E708           
CODE_13E7C1:        A9 04         LDA #$04                  
CODE_13E7C3:        85 11         STA $11                   
CODE_13E7C5:        20 08 E7      JSR CODE_13E708           
CODE_13E7C8:        A9 05         LDA #$05                  
CODE_13E7CA:        85 11         STA $11                   
CODE_13E7CC:        20 08 E7      JSR CODE_13E708           
CODE_13E7CF:        A9 06         LDA #$06                  
CODE_13E7D1:        85 11         STA $11                   
CODE_13E7D3:        20 08 E7      JSR CODE_13E708           
CODE_13E7D6:        A9 07         LDA #$07                  
CODE_13E7D8:        85 11         STA $11                   
CODE_13E7DA:        20 08 E7      JSR CODE_13E708           
CODE_13E7DD:        A9 08         LDA #$08                  
CODE_13E7DF:        85 11         STA $11                   
CODE_13E7E1:        C2 20         REP #$20                  
CODE_13E7E3:        A9 80 44      LDA #$4480                
CODE_13E7E6:        8D 42 0C      STA $0C42                 
CODE_13E7E9:        E2 20         SEP #$20                  
CODE_13E7EB:        A9 01         LDA #$01                  
CODE_13E7ED:        8D A9 02      STA $02A9                 
CODE_13E7F0:        20 08 E7      JSR CODE_13E708           
CODE_13E7F3:        64 15         STZ $15                   
CODE_13E7F5:        A9 06         LDA #$06                  
CODE_13E7F7:        85 16         STA $16                   
CODE_13E7F9:        64 14         STZ $14                   
CODE_13E7FB:        A9 02         LDA #$02                  
CODE_13E7FD:        8D 5E 02      STA $025E                 
CODE_13E800:        22 CE 8C 13   JSL CODE_138CCE           
CODE_13E804:        20 04 E7      JSR CODE_13E704           
CODE_13E807:        A4 15         LDY $15                   
CODE_13E809:        B9 C6 C1      LDA.w DATA_11C1C6,y               
CODE_13E80C:        8D C3 06      STA $06C3                 
CODE_13E80F:        18            CLC                       
CODE_13E810:        69 02         ADC #$02                  
CODE_13E812:        8D C4 06      STA $06C4                 
CODE_13E815:        B9 B1 C1      LDA.w DATA_11C1B1,y               
CODE_13E818:        85 10         STA $10                   
CODE_13E81A:        20 08 E7      JSR CODE_13E708           
CODE_13E81D:        C6 10         DEC $10                   
CODE_13E81F:        10 F9         BPL CODE_13E81A           
CODE_13E821:        E6 15         INC $15                   
CODE_13E823:        C6 16         DEC $16                   
CODE_13E825:        10 E0         BPL CODE_13E807           
CODE_13E827:        A9 10         LDA #$10                  
CODE_13E829:        85 18         STA $18                   
CODE_13E82B:        A9 01         LDA #$01                  
CODE_13E82D:        85 14         STA $14                   
CODE_13E82F:        64 15         STZ $15                   
CODE_13E831:        A9 0D         LDA #$0D                  
CODE_13E833:        85 16         STA $16                   
CODE_13E835:        A9 01         LDA #$01                  
CODE_13E837:        8D 5E 02      STA $025E                 
CODE_13E83A:        22 CE 8C 13   JSL CODE_138CCE           
CODE_13E83E:        20 04 E7      JSR CODE_13E704           
CODE_13E841:        A4 15         LDY $15                   
CODE_13E843:        B9 A3 C1      LDA.w DATA_11C1A3,y               
CODE_13E846:        85 10         STA $10                   
CODE_13E848:        20 08 E7      JSR CODE_13E708           
CODE_13E84B:        C6 10         DEC $10                   
CODE_13E84D:        10 F9         BPL CODE_13E848           
CODE_13E84F:        E6 15         INC $15                   
CODE_13E851:        C6 16         DEC $16                   
CODE_13E853:        10 EC         BPL CODE_13E841           
CODE_13E855:        C6 14         DEC $14                   
CODE_13E857:        30 03         BMI CODE_13E85C           
CODE_13E859:        4C 2F E8      JMP CODE_13E82F           

CODE_13E85C:        20 4B E9      JSR CODE_13E94B           
CODE_13E85F:        20 08 E7      JSR CODE_13E708           
CODE_13E862:        9C 9F 07      STZ $079F                 
CODE_13E865:        9C A0 07      STZ $07A0                 
CODE_13E868:        A9 B0         LDA #$B0                  
CODE_13E86A:        8D A1 07      STA $07A1                 
CODE_13E86D:        64 15         STZ $15                   
CODE_13E86F:        A9 0D         LDA #$0D                  
CODE_13E871:        85 16         STA $16                   
CODE_13E873:        22 CE 8C 13   JSL CODE_138CCE           
CODE_13E877:        20 04 E7      JSR CODE_13E704           
CODE_13E87A:        A4 15         LDY $15                   
CODE_13E87C:        B9 B8 C1      LDA.w DATA_11C1B8,y               
CODE_13E87F:        8D C3 06      STA $06C3                 
CODE_13E882:        18            CLC                       
CODE_13E883:        69 02         ADC #$02                  
CODE_13E885:        8D C4 06      STA $06C4                 
CODE_13E888:        B9 A3 C1      LDA.w DATA_11C1A3,y               
CODE_13E88B:        85 10         STA $10                   
CODE_13E88D:        20 07 E9      JSR CODE_13E907           
CODE_13E890:        20 08 E7      JSR CODE_13E708           
CODE_13E893:        22 62 DB 14   JSL CODE_14DB62           
CODE_13E897:        C6 10         DEC $10                   
CODE_13E899:        10 F2         BPL CODE_13E88D           
CODE_13E89B:        E6 15         INC $15                   
CODE_13E89D:        C6 16         DEC $16                   
CODE_13E89F:        10 D9         BPL CODE_13E87A           
CODE_13E8A1:        4C 6D E8      JMP CODE_13E86D           

CODE_13E8A4:        A0 1F         LDY #$1F                  
CODE_13E8A6:        A5 17         LDA $17                   
CODE_13E8A8:        29 01         AND #$01                  
CODE_13E8AA:        D0 0B         BNE CODE_13E8B7           
CODE_13E8AC:        B9 33 C1      LDA.w DATA_11C133,y               
CODE_13E8AF:        99 00 08      STA $0800,y               
CODE_13E8B2:        88            DEY                       
CODE_13E8B3:        10 F7         BPL CODE_13E8AC           
CODE_13E8B5:        80 09         BRA CODE_13E8C0           

CODE_13E8B7:        B9 53 C1      LDA.w DATA_11C153,y               
CODE_13E8BA:        99 00 08      STA $0800,y               
CODE_13E8BD:        88            DEY                       
CODE_13E8BE:        10 F7         BPL CODE_13E8B7           
CODE_13E8C0:        A0 17         LDY #$17                  
CODE_13E8C2:        A5 17         LDA $17                   
CODE_13E8C4:        29 01         AND #$01                  
CODE_13E8C6:        D0 0B         BNE CODE_13E8D3           
CODE_13E8C8:        B9 73 C1      LDA.w DATA_11C173,y               
CODE_13E8CB:        99 20 08      STA $0820,y               
CODE_13E8CE:        88            DEY                       
CODE_13E8CF:        10 F7         BPL CODE_13E8C8           
CODE_13E8D1:        80 09         BRA CODE_13E8DC           

CODE_13E8D3:        B9 8B C1      LDA.w DATA_11C18B,y               
CODE_13E8D6:        99 20 08      STA $0820,y               
CODE_13E8D9:        88            DEY                       
CODE_13E8DA:        10 F7         BPL CODE_13E8D3           
CODE_13E8DC:        9C 20 0A      STZ $0A20                 
CODE_13E8DF:        9C 21 0A      STZ $0A21                 
CODE_13E8E2:        9C 22 0A      STZ $0A22                 
CODE_13E8E5:        9C 23 0A      STZ $0A23                 
CODE_13E8E8:        9C 24 0A      STZ $0A24                 
CODE_13E8EB:        9C 25 0A      STZ $0A25                 
CODE_13E8EE:        9C 26 0A      STZ $0A26                 
CODE_13E8F1:        9C 27 0A      STZ $0A27                 
CODE_13E8F4:        9C 28 0A      STZ $0A28                 
CODE_13E8F7:        9C 29 0A      STZ $0A29                 
CODE_13E8FA:        9C 2A 0A      STZ $0A2A                 
CODE_13E8FD:        9C 2B 0A      STZ $0A2B                 
CODE_13E900:        9C 2C 0A      STZ $0A2C                 
CODE_13E903:        9C 2D 0A      STZ $0A2D                 
CODE_13E906:        60            RTS                       

CODE_13E907:        E6 2E         INC $2E                   
CODE_13E909:        A5 2E         LDA $2E                   
CODE_13E90B:        29 01         AND #$01                  
CODE_13E90D:        D0 06         BNE CODE_13E915           
CODE_13E90F:        C6 39         DEC $39                   
CODE_13E911:        C6 3A         DEC $3A                   
CODE_13E913:        C6 3B         DEC $3B                   
CODE_13E915:        A5 29         LDA $29                   
CODE_13E917:        22 76 87 11   JSL CODE_118776           

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
      
CODE_13E931:        60            RTS                       

CODE_13E932:        DA            PHX                       
CODE_13E933:        A6 2B         LDX $2B                   
CODE_13E935:        BF BD C5 14   LDA.l DATA_14C5BD,x             
CODE_13E939:        85 2F         STA $2F                   
CODE_13E93B:        BF A0 C5 14   LDA.l DATA_14C5A0,x             
CODE_13E93F:        85 30         STA $30                   
CODE_13E941:        BF 83 C5 14   LDA.l DATA_14C583,x             
CODE_13E945:        85 31         STA $31                   
CODE_13E947:        E6 2B         INC $2B                   
CODE_13E949:        FA            PLX                       
CODE_13E94A:        60            RTS                       

CODE_13E94B:        A2 0F         LDX #$0F                  
CODE_13E94D:        BF 64 C5 14   LDA.l DATA_14C564,x             
CODE_13E951:        9D 40 08      STA $0840,x               
CODE_13E954:        CA            DEX                       
CODE_13E955:        10 F6         BPL CODE_13E94D           
CODE_13E957:        A9 00         LDA #$00                  
CODE_13E959:        8D 30 0A      STA $0A30                 
CODE_13E95C:        8D 31 0A      STA $0A31                 
CODE_13E95F:        8D 32 0A      STA $0A32                 
CODE_13E962:        8D 33 0A      STA $0A33                 
CODE_13E965:        A9 02         LDA #$02                  
CODE_13E967:        85 28         STA $28                   
CODE_13E969:        64 29         STZ $29                   
CODE_13E96B:        64 2A         STZ $2A                   
CODE_13E96D:        A0 40         LDY #$40                  
CODE_13E96F:        A9 27         LDA #$27                  
CODE_13E971:        99 50 00      STA $0050,y               
CODE_13E974:        88            DEY                       
CODE_13E975:        10 F8         BPL CODE_13E96F           
CODE_13E977:        60            RTS                       

DATA_13E978:        db $E0,$58,$40,$6D,$A0,$7D,$80,$7E
                    db $FF,$7F

CODE_13E982:        C6 28         DEC $28
CODE_13E984:        10 36         BPL CODE_13E9BC           
CODE_13E986:        A9 02         LDA #$02                  
CODE_13E988:        85 28         STA $28                   
CODE_13E98A:        E6 2A         INC $2A                   
CODE_13E98C:        A5 2A         LDA $2A                   
CODE_13E98E:        0A            ASL A                     
CODE_13E98F:        AA            TAX                       
CODE_13E990:        C2 20         REP #$20                  
CODE_13E992:        BF 78 E9 13   LDA.l DATA_13E978,x             
CODE_13E996:        8D 42 0C      STA $0C42                 
CODE_13E999:        E2 20         SEP #$20                  
CODE_13E99B:        A9 01         LDA #$01                  
CODE_13E99D:        8D A9 02      STA $02A9                 
CODE_13E9A0:        A5 2A         LDA $2A                   
CODE_13E9A2:        C9 04         CMP #$04                  
CODE_13E9A4:        D0 16         BNE CODE_13E9BC           
CODE_13E9A6:        E6 29         INC $29                   
CODE_13E9A8:        A9 80         LDA #$80                  
CODE_13E9AA:        85 28         STA $28                   
CODE_13E9AC:        A9 60         LDA #$60                  
CODE_13E9AE:        85 1F         STA $1F                   
CODE_13E9B0:        A9 01         LDA #$01                  
CODE_13E9B2:        85 35         STA $35                   
CODE_13E9B4:        85 38         STA $38                   
CODE_13E9B6:        A9 00         LDA #$00                  
CODE_13E9B8:        85 36         STA $36                   
CODE_13E9BA:        85 37         STA $37                   
CODE_13E9BC:        60            RTS                       

CODE_13E9BD:        C6 28         DEC $28                   
CODE_13E9BF:        10 0A         BPL CODE_13E9CB           
CODE_13E9C1:        E6 29         INC $29                   
CODE_13E9C3:        64 2B         STZ $2B                   
CODE_13E9C5:        64 3F         STZ $3F                   
CODE_13E9C7:        A9 01         LDA #$01                  
CODE_13E9C9:        85 3A         STA $3A                   
CODE_13E9CB:        60            RTS                       

CODE_13E9CC:        A5 2E         LDA $2E                   
CODE_13E9CE:        29 01         AND #$01                  
CODE_13E9D0:        F0 2D         BEQ CODE_13E9FF           
CODE_13E9D2:        A5 1F         LDA $1F                   
CODE_13E9D4:        38            SEC                       
CODE_13E9D5:        E9 01         SBC #$01                  
CODE_13E9D7:        85 1F         STA $1F                   
CODE_13E9D9:        8D 41 08      STA $0841                 
CODE_13E9DC:        8D 45 08      STA $0845                 
CODE_13E9DF:        8D 49 08      STA $0849                 
CODE_13E9E2:        8D 4D 08      STA $084D                 
CODE_13E9E5:        A5 1F         LDA $1F                   
CODE_13E9E7:        C9 10         CMP #$10                  
CODE_13E9E9:        D0 14         BNE CODE_13E9FF           
CODE_13E9EB:        A9 F0         LDA #$F0                  
CODE_13E9ED:        8D 41 08      STA $0841                 
CODE_13E9F0:        8D 45 08      STA $0845                 
CODE_13E9F3:        8D 49 08      STA $0849                 
CODE_13E9F6:        8D 4D 08      STA $084D                 
CODE_13E9F9:        E6 29         INC $29                   
CODE_13E9FB:        64 38         STZ $38                   
CODE_13E9FD:        64 35         STZ $35                   
CODE_13E9FF:        A5 35         LDA $35                   
CODE_13EA01:        D0 6A         BNE CODE_13EA6D           
CODE_13EA03:        A5 39         LDA $39                   
CODE_13EA05:        D0 66         BNE CODE_13EA6D           
CODE_13EA07:        20 32 E9      JSR CODE_13E932           
CODE_13EA0A:        A0 2F         LDY #$2F                  
CODE_13EA0C:        B7 2F         LDA [$2F],y               
CODE_13EA0E:        99 40 08      STA $0840,y               
CODE_13EA11:        A9 24         LDA #$24                  
CODE_13EA13:        99 00 09      STA $0900,y               
CODE_13EA16:        88            DEY                       
CODE_13EA17:        B7 2F         LDA [$2F],y               
CODE_13EA19:        99 40 08      STA $0840,y               
CODE_13EA1C:        A9 E9         LDA #$E9                  
CODE_13EA1E:        99 00 09      STA $0900,y               
CODE_13EA21:        88            DEY                       
CODE_13EA22:        B7 2F         LDA [$2F],y               
CODE_13EA24:        99 40 08      STA $0840,y               
CODE_13EA27:        A9 F0         LDA #$F0                  
CODE_13EA29:        99 00 09      STA $0900,y               
CODE_13EA2C:        88            DEY                       
CODE_13EA2D:        B7 2F         LDA [$2F],y               
CODE_13EA2F:        99 40 08      STA $0840,y               
CODE_13EA32:        88            DEY                       
CODE_13EA33:        10 D7         BPL CODE_13EA0C           
CODE_13EA35:        A9 02         LDA #$02                  
CODE_13EA37:        8D 30 0A      STA $0A30                 
CODE_13EA3A:        8D 31 0A      STA $0A31                 
CODE_13EA3D:        8D 32 0A      STA $0A32                 
CODE_13EA40:        8D 33 0A      STA $0A33                 
CODE_13EA43:        A9 00         LDA #$00                  
CODE_13EA45:        8D 34 0A      STA $0A34                 
CODE_13EA48:        8D 35 0A      STA $0A35                 
CODE_13EA4B:        8D 36 0A      STA $0A36                 
CODE_13EA4E:        8D 37 0A      STA $0A37                 
CODE_13EA51:        8D 38 0A      STA $0A38                 
CODE_13EA54:        8D 39 0A      STA $0A39                 
CODE_13EA57:        8D 3A 0A      STA $0A3A                 
CODE_13EA5A:        8D 3B 0A      STA $0A3B                 
CODE_13EA5D:        A9 01         LDA #$01                  
CODE_13EA5F:        85 35         STA $35                   
CODE_13EA61:        A9 C0         LDA #$C0                  
CODE_13EA63:        85 1F         STA $1F                   
CODE_13EA65:        A9 D0         LDA #$D0                  
CODE_13EA67:        85 20         STA $20                   
CODE_13EA69:        A9 E8         LDA #$E8                  
CODE_13EA6B:        85 21         STA $21                   
CODE_13EA6D:        A5 36         LDA $36                   
CODE_13EA6F:        D0 49         BNE CODE_13EABA           
CODE_13EA71:        A5 3A         LDA $3A                   
CODE_13EA73:        D0 45         BNE CODE_13EABA           
CODE_13EA75:        20 32 E9      JSR CODE_13E932           
CODE_13EA78:        A0 2F         LDY #$2F                  
CODE_13EA7A:        B7 2F         LDA [$2F],y               
CODE_13EA7C:        99 80 08      STA $0880,y               
CODE_13EA7F:        88            DEY                       
CODE_13EA80:        10 F8         BPL CODE_13EA7A           
CODE_13EA82:        A9 02         LDA #$02                  
CODE_13EA84:        8D 40 0A      STA $0A40                 
CODE_13EA87:        8D 41 0A      STA $0A41                 
CODE_13EA8A:        8D 42 0A      STA $0A42                 
CODE_13EA8D:        8D 43 0A      STA $0A43                 
CODE_13EA90:        A9 00         LDA #$00                  
CODE_13EA92:        8D 44 0A      STA $0A44                 
CODE_13EA95:        8D 45 0A      STA $0A45                 
CODE_13EA98:        8D 46 0A      STA $0A46                 
CODE_13EA9B:        8D 47 0A      STA $0A47                 
CODE_13EA9E:        8D 48 0A      STA $0A48                 
CODE_13EAA1:        8D 49 0A      STA $0A49                 
CODE_13EAA4:        8D 4A 0A      STA $0A4A                 
CODE_13EAA7:        8D 4B 0A      STA $0A4B                 
CODE_13EAAA:        A9 01         LDA #$01                  
CODE_13EAAC:        85 36         STA $36                   
CODE_13EAAE:        A9 C0         LDA #$C0                  
CODE_13EAB0:        85 22         STA $22                   
CODE_13EAB2:        A9 D0         LDA #$D0                  
CODE_13EAB4:        85 23         STA $23                   
CODE_13EAB6:        A9 E8         LDA #$E8                  
CODE_13EAB8:        85 24         STA $24                   
CODE_13EABA:        A5 37         LDA $37                   
CODE_13EABC:        D0 51         BNE CODE_13EB0F           
CODE_13EABE:        A5 3B         LDA $3B                   
CODE_13EAC0:        D0 4D         BNE CODE_13EB0F           
CODE_13EAC2:        20 32 E9      JSR CODE_13E932           
CODE_13EAC5:        A0 2F         LDY #$2F                  
CODE_13EAC7:        B7 2F         LDA [$2F],y               
CODE_13EAC9:        99 C0 08      STA $08C0,y               
CODE_13EACC:        88            DEY                       
CODE_13EACD:        10 F8         BPL CODE_13EAC7           
CODE_13EACF:        A9 02         LDA #$02                  
CODE_13EAD1:        8D 50 0A      STA $0A50                 
CODE_13EAD4:        8D 51 0A      STA $0A51                 
CODE_13EAD7:        8D 52 0A      STA $0A52                 
CODE_13EADA:        8D 53 0A      STA $0A53                 
CODE_13EADD:        A9 00         LDA #$00                  
CODE_13EADF:        8D 54 0A      STA $0A54                 
CODE_13EAE2:        8D 55 0A      STA $0A55                 
CODE_13EAE5:        8D 56 0A      STA $0A56                 
CODE_13EAE8:        8D 57 0A      STA $0A57                 
CODE_13EAEB:        8D 58 0A      STA $0A58                 
CODE_13EAEE:        8D 59 0A      STA $0A59                 
CODE_13EAF1:        8D 5A 0A      STA $0A5A                 
CODE_13EAF4:        8D 5B 0A      STA $0A5B                 
CODE_13EAF7:        A9 01         LDA #$01                  
CODE_13EAF9:        85 37         STA $37                   
CODE_13EAFB:        A9 C0         LDA #$C0                  
CODE_13EAFD:        85 25         STA $25                   
CODE_13EAFF:        A9 D0         LDA #$D0                  
CODE_13EB01:        85 26         STA $26                   
CODE_13EB03:        A0 E8         LDY #$E8                  
CODE_13EB05:        A5 2B         LDA $2B                   
CODE_13EB07:        C9 1D         CMP #$1D                  
CODE_13EB09:        D0 02         BNE CODE_13EB0D           
CODE_13EB0B:        A0 E0         LDY #$E0                  
CODE_13EB0D:        84 27         STY $27                   
CODE_13EB0F:        A5 38         LDA $38                   
CODE_13EB11:        F0 03         BEQ CODE_13EB16           
CODE_13EB13:        4C C8 EB      JMP CODE_13EBC8           

CODE_13EB16:        A5 2E         LDA $2E                   
CODE_13EB18:        29 01         AND #$01                  
CODE_13EB1A:        D0 03         BNE CODE_13EB1F           
CODE_13EB1C:        4C C8 EB      JMP CODE_13EBC8           

CODE_13EB1F:        AD 01 09      LDA $0901                 
CODE_13EB22:        C9 F0         CMP #$F0                  
CODE_13EB24:        D0 07         BNE CODE_13EB2D           
CODE_13EB26:        AD 41 08      LDA $0841                 
CODE_13EB29:        C9 F0         CMP #$F0                  
CODE_13EB2B:        F0 1D         BEQ CODE_13EB4A           
CODE_13EB2D:        A5 1F         LDA $1F                   
CODE_13EB2F:        38            SEC                       
CODE_13EB30:        E9 01         SBC #$01                  
CODE_13EB32:        D0 02         BNE CODE_13EB36           
CODE_13EB34:        A9 F0         LDA #$F0                  
CODE_13EB36:        85 1F         STA $1F                   
CODE_13EB38:        8D 41 08      STA $0841                 
CODE_13EB3B:        8D 45 08      STA $0845                 
CODE_13EB3E:        8D 01 09      STA $0901                 
CODE_13EB41:        8D 05 09      STA $0905                 
CODE_13EB44:        8D 09 09      STA $0909                 
CODE_13EB47:        8D 0D 09      STA $090D                 
CODE_13EB4A:        AD 01 09      LDA $0901                 
CODE_13EB4D:        C9 F0         CMP #$F0                  
CODE_13EB4F:        D0 07         BNE CODE_13EB58           
CODE_13EB51:        AD 49 08      LDA $0849                 
CODE_13EB54:        C9 F0         CMP #$F0                  
CODE_13EB56:        F0 2C         BEQ CODE_13EB84           
CODE_13EB58:        C6 20         DEC $20                   
CODE_13EB5A:        C9 F9         CMP #$F9                  
CODE_13EB5C:        D0 06         BNE CODE_13EB64           
CODE_13EB5E:        A5 20         LDA $20                   
CODE_13EB60:        C9 C0         CMP #$C0                  
CODE_13EB62:        D0 20         BNE CODE_13EB84           
CODE_13EB64:        A5 20         LDA $20                   
CODE_13EB66:        D0 0A         BNE CODE_13EB72           
CODE_13EB68:        A5 2B         LDA $2B                   
CODE_13EB6A:        C9 FF         CMP #$FF                  
CODE_13EB6C:        D0 02         BNE CODE_13EB70           
CODE_13EB6E:        E6 29         INC $29                   
CODE_13EB70:        A9 F0         LDA #$F0                  
CODE_13EB72:        8D 49 08      STA $0849                 
CODE_13EB75:        8D 4D 08      STA $084D                 
CODE_13EB78:        8D 11 09      STA $0911                 
CODE_13EB7B:        8D 15 09      STA $0915                 
CODE_13EB7E:        8D 19 09      STA $0919                 
CODE_13EB81:        8D 1D 09      STA $091D                 
CODE_13EB84:        AD 51 08      LDA $0851                 
CODE_13EB87:        C9 F0         CMP #$F0                  
CODE_13EB89:        F0 3D         BEQ CODE_13EBC8           
CODE_13EB8B:        C6 21         DEC $21                   
CODE_13EB8D:        C9 F9         CMP #$F9                  
CODE_13EB8F:        D0 0D         BNE CODE_13EB9E           
CODE_13EB91:        A5 21         LDA $21                   
CODE_13EB93:        C9 C0         CMP #$C0                  
CODE_13EB95:        D0 31         BNE CODE_13EBC8           
CODE_13EB97:        A4 2B         LDY $2B                   
CODE_13EB99:        B9 50 00      LDA $0050,y               
CODE_13EB9C:        85 3A         STA $3A                   
CODE_13EB9E:        A5 21         LDA $21                   
CODE_13EBA0:        D0 0E         BNE CODE_13EBB0           
CODE_13EBA2:        64 35         STZ $35                   
CODE_13EBA4:        A5 2B         LDA $2B                   
CODE_13EBA6:        C9 FF         CMP #$FF                  
CODE_13EBA8:        D0 04         BNE CODE_13EBAE           
CODE_13EBAA:        A9 FF         LDA #$FF                  
CODE_13EBAC:        85 35         STA $35                   
CODE_13EBAE:        A9 F0         LDA #$F0                  
CODE_13EBB0:        8D 51 08      STA $0851                 
CODE_13EBB3:        8D 55 08      STA $0855                 
CODE_13EBB6:        8D 59 08      STA $0859                 
CODE_13EBB9:        8D 5D 08      STA $085D                 
CODE_13EBBC:        8D 61 08      STA $0861                 
CODE_13EBBF:        8D 65 08      STA $0865                 
CODE_13EBC2:        8D 69 08      STA $0869                 
CODE_13EBC5:        8D 6D 08      STA $086D                 
CODE_13EBC8:        A5 2E         LDA $2E                   
CODE_13EBCA:        29 01         AND #$01                  
CODE_13EBCC:        D0 03         BNE CODE_13EBD1           
CODE_13EBCE:        4C 4E EC      JMP CODE_13EC4E           

CODE_13EBD1:        AD 81 08      LDA $0881                 
CODE_13EBD4:        C9 F0         CMP #$F0                  
CODE_13EBD6:        F0 11         BEQ CODE_13EBE9           
CODE_13EBD8:        A5 22         LDA $22                   
CODE_13EBDA:        38            SEC                       
CODE_13EBDB:        E9 01         SBC #$01                  
CODE_13EBDD:        D0 02         BNE CODE_13EBE1           
CODE_13EBDF:        A9 F0         LDA #$F0                  
CODE_13EBE1:        85 22         STA $22                   
CODE_13EBE3:        8D 81 08      STA $0881                 
CODE_13EBE6:        8D 85 08      STA $0885                 
CODE_13EBE9:        AD 89 08      LDA $0889                 
CODE_13EBEC:        C9 F0         CMP #$F0                  
CODE_13EBEE:        F0 18         BEQ CODE_13EC08           
CODE_13EBF0:        C6 23         DEC $23                   
CODE_13EBF2:        C9 F9         CMP #$F9                  
CODE_13EBF4:        D0 06         BNE CODE_13EBFC           
CODE_13EBF6:        A5 23         LDA $23                   
CODE_13EBF8:        C9 C0         CMP #$C0                  
CODE_13EBFA:        D0 0C         BNE CODE_13EC08           
CODE_13EBFC:        A5 23         LDA $23                   
CODE_13EBFE:        D0 02         BNE CODE_13EC02           
CODE_13EC00:        A9 F0         LDA #$F0                  
CODE_13EC02:        8D 89 08      STA $0889                 
CODE_13EC05:        8D 8D 08      STA $088D                 
CODE_13EC08:        AD 91 08      LDA $0891                 
CODE_13EC0B:        C9 F0         CMP #$F0                  
CODE_13EC0D:        F0 3F         BEQ CODE_13EC4E           
CODE_13EC0F:        C6 24         DEC $24                   
CODE_13EC11:        C9 F9         CMP #$F9                  
CODE_13EC13:        D0 0D         BNE CODE_13EC22           
CODE_13EC15:        A5 24         LDA $24                   
CODE_13EC17:        C9 C0         CMP #$C0                  
CODE_13EC19:        D0 33         BNE CODE_13EC4E           
CODE_13EC1B:        A4 2B         LDY $2B                   
CODE_13EC1D:        B9 50 00      LDA $0050,y               
CODE_13EC20:        85 3B         STA $3B                   
CODE_13EC22:        A5 24         LDA $24                   
CODE_13EC24:        D0 10         BNE CODE_13EC36           
CODE_13EC26:        A9 00         LDA #$00                  
CODE_13EC28:        85 36         STA $36                   
CODE_13EC2A:        A5 2B         LDA $2B                   
CODE_13EC2C:        C9 FF         CMP #$FF                  
CODE_13EC2E:        D0 04         BNE CODE_13EC34           
CODE_13EC30:        A9 FF         LDA #$FF                  
CODE_13EC32:        85 36         STA $36                   
CODE_13EC34:        A9 F0         LDA #$F0                  
CODE_13EC36:        8D 91 08      STA $0891                 
CODE_13EC39:        8D 95 08      STA $0895                 
CODE_13EC3C:        8D 99 08      STA $0899                 
CODE_13EC3F:        8D 9D 08      STA $089D                 
CODE_13EC42:        8D A1 08      STA $08A1                 
CODE_13EC45:        8D A5 08      STA $08A5                 
CODE_13EC48:        8D A9 08      STA $08A9                 
CODE_13EC4B:        8D AD 08      STA $08AD                 
CODE_13EC4E:        A5 2E         LDA $2E                   
CODE_13EC50:        29 01         AND #$01                  
CODE_13EC52:        D0 03         BNE CODE_13EC57           
CODE_13EC54:        4C 3F ED      JMP CODE_13ED3F           

CODE_13EC57:        AD C1 08      LDA $08C1                 
CODE_13EC5A:        C9 F0         CMP #$F0                  
CODE_13EC5C:        F0 11         BEQ CODE_13EC6F           
CODE_13EC5E:        A5 25         LDA $25                   
CODE_13EC60:        38            SEC                       
CODE_13EC61:        E9 01         SBC #$01                  
CODE_13EC63:        D0 02         BNE CODE_13EC67           
CODE_13EC65:        A9 F0         LDA #$F0                  
CODE_13EC67:        85 25         STA $25                   
CODE_13EC69:        8D C1 08      STA $08C1                 
CODE_13EC6C:        8D C5 08      STA $08C5                 
CODE_13EC6F:        AD C9 08      LDA $08C9                 
CODE_13EC72:        C9 F0         CMP #$F0                  
CODE_13EC74:        F0 18         BEQ CODE_13EC8E           
CODE_13EC76:        C6 26         DEC $26                   
CODE_13EC78:        C9 F9         CMP #$F9                  
CODE_13EC7A:        D0 06         BNE CODE_13EC82           
CODE_13EC7C:        A5 26         LDA $26                   
CODE_13EC7E:        C9 C0         CMP #$C0                  
CODE_13EC80:        D0 0C         BNE CODE_13EC8E           
CODE_13EC82:        A5 26         LDA $26                   
CODE_13EC84:        D0 02         BNE CODE_13EC88           
CODE_13EC86:        A9 F0         LDA #$F0                  
CODE_13EC88:        8D C9 08      STA $08C9                 
CODE_13EC8B:        8D CD 08      STA $08CD                 
CODE_13EC8E:        AD D1 08      LDA $08D1                 
CODE_13EC91:        C9 F0         CMP #$F0                  
CODE_13EC93:        F0 BF         BEQ CODE_13EC54           
CODE_13EC95:        C6 27         DEC $27                   
CODE_13EC97:        C9 F9         CMP #$F9                  
CODE_13EC99:        D0 10         BNE CODE_13ECAB           
CODE_13EC9B:        A5 27         LDA $27                   
CODE_13EC9D:        C9 C0         CMP #$C0                  
CODE_13EC9F:        F0 03         BEQ CODE_13ECA4           
CODE_13ECA1:        82 9B 00      BRL CODE_13ED3F           

CODE_13ECA4:        A4 2B         LDY $2B                   
CODE_13ECA6:        B9 50 00      LDA $0050,y               
CODE_13ECA9:        85 39         STA $39                   
CODE_13ECAB:        A5 2B         LDA $2B                   
CODE_13ECAD:        C9 1D         CMP #$1D                  
CODE_13ECAF:        D0 12         BNE CODE_13ECC3           
CODE_13ECB1:        A9 02         LDA #$02                  
CODE_13ECB3:        8D 54 0A      STA $0A54                 
CODE_13ECB6:        8D 55 0A      STA $0A55                 
CODE_13ECB9:        A5 27         LDA $27                   
CODE_13ECBB:        C9 A8         CMP #$A8                  
CODE_13ECBD:        D0 04         BNE CODE_13ECC3           
CODE_13ECBF:        A9 01         LDA #$01                  
CODE_13ECC1:        85 3F         STA $3F                   
CODE_13ECC3:        A5 27         LDA $27                   
CODE_13ECC5:        D0 0E         BNE CODE_13ECD5           
CODE_13ECC7:        64 37         STZ $37                   
CODE_13ECC9:        A5 2B         LDA $2B                   
CODE_13ECCB:        C9 FF         CMP #$FF                  
CODE_13ECCD:        D0 04         BNE CODE_13ECD3           
CODE_13ECCF:        A9 FF         LDA #$FF                  
CODE_13ECD1:        85 37         STA $37                   
CODE_13ECD3:        A9 F0         LDA #$F0                  
CODE_13ECD5:        8D D1 08      STA $08D1                 
CODE_13ECD8:        8D D5 08      STA $08D5                 
CODE_13ECDB:        8D D9 08      STA $08D9                 
CODE_13ECDE:        8D DD 08      STA $08DD                 
CODE_13ECE1:        8D E1 08      STA $08E1                 
CODE_13ECE4:        8D E5 08      STA $08E5                 
CODE_13ECE7:        8D E9 08      STA $08E9                 
CODE_13ECEA:        8D ED 08      STA $08ED                 
CODE_13ECED:        A5 3F         LDA $3F                   
CODE_13ECEF:        F0 4E         BEQ CODE_13ED3F           
CODE_13ECF1:        A2 1F         LDX #$1F                  
CODE_13ECF3:        BF 4A CB 14   LDA.l DATA_14CB4A,x             
CODE_13ECF7:        9D 00 09      STA $0900,x               
CODE_13ECFA:        CA            DEX                       
CODE_13ECFB:        10 F6         BPL CODE_13ECF3           
CODE_13ECFD:        A9 E9         LDA #$E9                  
CODE_13ECFF:        8D 42 08      STA $0842                 
CODE_13ED02:        8D 46 08      STA $0846                 
CODE_13ED05:        8D 4A 08      STA $084A                 
CODE_13ED08:        8D 4E 08      STA $084E                 
CODE_13ED0B:        A9 24         LDA #$24                  
CODE_13ED0D:        8D 43 08      STA $0843                 
CODE_13ED10:        8D 47 08      STA $0847                 
CODE_13ED13:        8D 4B 08      STA $084B                 
CODE_13ED16:        8D 4F 08      STA $084F                 
CODE_13ED19:        A9 00         LDA #$00                  
CODE_13ED1B:        8D 60 0A      STA $0A60                 
CODE_13ED1E:        8D 61 0A      STA $0A61                 
CODE_13ED21:        8D 62 0A      STA $0A62                 
CODE_13ED24:        8D 63 0A      STA $0A63                 
CODE_13ED27:        8D 64 0A      STA $0A64                 
CODE_13ED2A:        8D 65 0A      STA $0A65                 
CODE_13ED2D:        8D 66 0A      STA $0A66                 
CODE_13ED30:        8D 67 0A      STA $0A67                 
CODE_13ED33:        A9 C0         LDA #$C0                  
CODE_13ED35:        85 1F         STA $1F                   
CODE_13ED37:        85 20         STA $20                   
CODE_13ED39:        64 3F         STZ $3F                   
CODE_13ED3B:        A9 FF         LDA #$FF                  
CODE_13ED3D:        85 2B         STA $2B                   
CODE_13ED3F:        60            RTS                       

CODE_13ED40:        A2 43         LDX #$43                  
CODE_13ED42:        BF 6A CB 14   LDA.l DATA_14CB6A,x             
CODE_13ED46:        9D 40 08      STA $0840,x               
CODE_13ED49:        CA            DEX                       
CODE_13ED4A:        10 F6         BPL CODE_13ED42           
CODE_13ED4C:        A9 02         LDA #$02                  
CODE_13ED4E:        8D 30 0A      STA $0A30                 
CODE_13ED51:        8D 31 0A      STA $0A31                 
CODE_13ED54:        8D 32 0A      STA $0A32                 
CODE_13ED57:        8D 33 0A      STA $0A33                 
CODE_13ED5A:        8D 34 0A      STA $0A34                 
CODE_13ED5D:        8D 35 0A      STA $0A35                 
CODE_13ED60:        8D 36 0A      STA $0A36                 
CODE_13ED63:        8D 37 0A      STA $0A37                 
CODE_13ED66:        8D 38 0A      STA $0A38                 
CODE_13ED69:        9C 39 0A      STZ $0A39                 
CODE_13ED6C:        9C 3A 0A      STZ $0A3A                 
CODE_13ED6F:        9C 3B 0A      STZ $0A3B                 
CODE_13ED72:        9C 3C 0A      STZ $0A3C                 
CODE_13ED75:        9C 3D 0A      STZ $0A3D                 
CODE_13ED78:        9C 3E 0A      STZ $0A3E                 
CODE_13ED7B:        9C 3F 0A      STZ $0A3F                 
CODE_13ED7E:        9C 40 0A      STZ $0A40                 
CODE_13ED81:        E6 29         INC $29                   
CODE_13ED83:        A9 D0         LDA #$D0                  
CODE_13ED85:        85 1F         STA $1F                   
CODE_13ED87:        A9 E0         LDA #$E0                  
CODE_13ED89:        85 20         STA $20                   
CODE_13ED8B:        A9 F0         LDA #$F0                  
CODE_13ED8D:        85 21         STA $21                   
CODE_13ED8F:        A9 08         LDA #$08                  
CODE_13ED91:        85 22         STA $22                   
CODE_13ED93:        60            RTS                       

CODE_13ED94:        A5 2E         LDA $2E                   
CODE_13ED96:        29 01         AND #$01                  
CODE_13ED98:        D0 03         BNE CODE_13ED9D           
CODE_13ED9A:        4C 38 EE      JMP CODE_13EE38           

CODE_13ED9D:        AD 41 08      LDA $0841                 
CODE_13EDA0:        C9 F0         CMP #$F0                  
CODE_13EDA2:        F0 19         BEQ CODE_13EDBD           
CODE_13EDA4:        A5 1F         LDA $1F                   
CODE_13EDA6:        38            SEC                       
CODE_13EDA7:        E9 01         SBC #$01                  
CODE_13EDA9:        C9 40         CMP #$40                  
CODE_13EDAB:        D0 05         BNE CODE_13EDB2           
CODE_13EDAD:        E6 29         INC $29                   
CODE_13EDAF:        4C 38 EE      JMP CODE_13EE38           

CODE_13EDB2:        85 1F         STA $1F                   
CODE_13EDB4:        8D 41 08      STA $0841                 
CODE_13EDB7:        8D 45 08      STA $0845                 
CODE_13EDBA:        8D 49 08      STA $0849                 
CODE_13EDBD:        AD 4D 08      LDA $084D                 
CODE_13EDC0:        C9 F0         CMP #$F0                  
CODE_13EDC2:        F0 1D         BEQ CODE_13EDE1           
CODE_13EDC4:        C6 20         DEC $20                   
CODE_13EDC6:        C9 F9         CMP #$F9                  
CODE_13EDC8:        D0 06         BNE CODE_13EDD0           
CODE_13EDCA:        A5 20         LDA $20                   
CODE_13EDCC:        C9 C0         CMP #$C0                  
CODE_13EDCE:        D0 11         BNE CODE_13EDE1           
CODE_13EDD0:        A5 20         LDA $20                   
CODE_13EDD2:        C9 10         CMP #$10                  
CODE_13EDD4:        D0 02         BNE CODE_13EDD8           
CODE_13EDD6:        A9 F0         LDA #$F0                  
CODE_13EDD8:        8D 4D 08      STA $084D                 
CODE_13EDDB:        8D 51 08      STA $0851                 
CODE_13EDDE:        8D 55 08      STA $0855                 
CODE_13EDE1:        AD 59 08      LDA $0859                 
CODE_13EDE4:        C9 F0         CMP #$F0                  
CODE_13EDE6:        F0 1D         BEQ CODE_13EE05           
CODE_13EDE8:        C6 21         DEC $21                   
CODE_13EDEA:        C9 F9         CMP #$F9                  
CODE_13EDEC:        D0 06         BNE CODE_13EDF4           
CODE_13EDEE:        A5 21         LDA $21                   
CODE_13EDF0:        C9 C0         CMP #$C0                  
CODE_13EDF2:        D0 11         BNE CODE_13EE05           
CODE_13EDF4:        A5 21         LDA $21                   
CODE_13EDF6:        C9 10         CMP #$10                  
CODE_13EDF8:        D0 02         BNE CODE_13EDFC           
CODE_13EDFA:        A9 F0         LDA #$F0                  
CODE_13EDFC:        8D 59 08      STA $0859                 
CODE_13EDFF:        8D 5D 08      STA $085D                 
CODE_13EE02:        8D 61 08      STA $0861                 
CODE_13EE05:        AD 65 08      LDA $0865                 
CODE_13EE08:        C9 F0         CMP #$F0                  
CODE_13EE0A:        F0 2C         BEQ CODE_13EE38           
CODE_13EE0C:        C6 22         DEC $22                   
CODE_13EE0E:        C9 F9         CMP #$F9                  
CODE_13EE10:        D0 06         BNE CODE_13EE18           
CODE_13EE12:        A5 22         LDA $22                   
CODE_13EE14:        C9 C0         CMP #$C0                  
CODE_13EE16:        D0 20         BNE CODE_13EE38           
CODE_13EE18:        A5 22         LDA $22                   
CODE_13EE1A:        C9 10         CMP #$10                  
CODE_13EE1C:        D0 02         BNE CODE_13EE20           
CODE_13EE1E:        A9 F0         LDA #$F0                  
CODE_13EE20:        8D 65 08      STA $0865                 
CODE_13EE23:        8D 69 08      STA $0869                 
CODE_13EE26:        8D 6D 08      STA $086D                 
CODE_13EE29:        8D 71 08      STA $0871                 
CODE_13EE2C:        8D 75 08      STA $0875                 
CODE_13EE2F:        8D 79 08      STA $0879                 
CODE_13EE32:        8D 7D 08      STA $087D                 
CODE_13EE35:        8D 81 08      STA $0881                 
CODE_13EE38:        64 3D         STZ $3D                   
CODE_13EE3A:        64 3C         STZ $3C                   
CODE_13EE3C:        A9 0C         LDA #$0C                  
CODE_13EE3E:        85 3E         STA $3E                   
CODE_13EE40:        60            RTS                       

CODE_13EE41:        C6 3C         DEC $3C                   
CODE_13EE43:        10 41         BPL CODE_13EE86           
CODE_13EE45:        A9 08         LDA #$08                  
CODE_13EE47:        85 3C         STA $3C                   
CODE_13EE49:        C6 3E         DEC $3E                   
CODE_13EE4B:        10 0B         BPL CODE_13EE58           
CODE_13EE4D:        E6 29         INC $29                   
CODE_13EE4F:        A9 00         LDA #$00                  
CODE_13EE51:        85 28         STA $28                   
CODE_13EE53:        85 2A         STA $2A                   
CODE_13EE55:        4C 86 EE      JMP CODE_13EE86           

CODE_13EE58:        A0 00         LDY #$00                  
CODE_13EE5A:        BB            TYX                       
CODE_13EE5B:        E6 3D         INC $3D                   
CODE_13EE5D:        A5 3D         LDA $3D                   
CODE_13EE5F:        29 01         AND #$01                  
CODE_13EE61:        D0 13         BNE CODE_13EE76           
CODE_13EE63:        BF 74 C5 14   LDA.l DATA_14C574,x             
CODE_13EE67:        99 42 08      STA $0842,y               
CODE_13EE6A:        C8            INY                       
CODE_13EE6B:        C8            INY                       
CODE_13EE6C:        C8            INY                       
CODE_13EE6D:        C8            INY                       
CODE_13EE6E:        E8            INX                       
CODE_13EE6F:        E0 06         CPX #$06                  
CODE_13EE71:        D0 F0         BNE CODE_13EE63           
CODE_13EE73:        4C 86 EE      JMP CODE_13EE86           

CODE_13EE76:        BF 7A C5 14   LDA.l DATA_14C57A,x             
CODE_13EE7A:        99 42 08      STA $0842,y               
CODE_13EE7D:        C8            INY                       
CODE_13EE7E:        C8            INY                       
CODE_13EE7F:        C8            INY                       
CODE_13EE80:        C8            INY                       
CODE_13EE81:        E8            INX                       
CODE_13EE82:        E0 06         CPX #$06                  
CODE_13EE84:        D0 F0         BNE CODE_13EE76           
CODE_13EE86:        60            RTS                       

DATA_13EE87:        db $80,$7E,$A0,$7D,$40,$6D,$E0,$58
                    db $80,$44

CODE_13EE91:        C6 28         DEC $28                   
CODE_13EE93:        10 26         BPL CODE_13EEBB           
CODE_13EE95:        A9 02         LDA #$02                  
CODE_13EE97:        85 28         STA $28                   
CODE_13EE99:        E6 2A         INC $2A                   
CODE_13EE9B:        A5 2A         LDA $2A                   
CODE_13EE9D:        0A            ASL A                     
CODE_13EE9E:        AA            TAX                       
CODE_13EE9F:        C2 20         REP #$20                  
CODE_13EEA1:        BF 87 EE 13   LDA.l DATA_13EE87,x             
CODE_13EEA5:        8D 42 0C      STA $0C42                 
CODE_13EEA8:        E2 20         SEP #$20                  
CODE_13EEAA:        A9 01         LDA #$01                  
CODE_13EEAC:        8D A9 02      STA $02A9                 
CODE_13EEAF:        A5 2A         LDA $2A                   
CODE_13EEB1:        C9 04         CMP #$04                  
CODE_13EEB3:        D0 06         BNE CODE_13EEBB           
CODE_13EEB5:        E6 29         INC $29                   
CODE_13EEB7:        A9 02         LDA #$02                  
CODE_13EEB9:        85 28         STA $28                   
CODE_13EEBB:        60            RTS                       

CODE_13EEBC:        C6 28         DEC $28                   
CODE_13EEBE:        10 16         BPL CODE_13EED6           
CODE_13EEC0:        A2 16         LDX #$16                  
CODE_13EEC2:        A0 00         LDY #$00                  
CODE_13EEC4:        A9 F0         LDA #$F0                  
CODE_13EEC6:        99 41 08      STA $0841,y               
CODE_13EEC9:        C8            INY                       
CODE_13EECA:        C8            INY                       
CODE_13EECB:        C8            INY                       
CODE_13EECC:        C8            INY                       
CODE_13EECD:        CA            DEX                       
CODE_13EECE:        10 F6         BPL CODE_13EEC6           
CODE_13EED0:        A9 30         LDA #$30                  
CODE_13EED2:        85 28         STA $28                   
CODE_13EED4:        E6 29         INC $29                   
CODE_13EED6:        60            RTS                       

CODE_13EED7:        C6 28         DEC $28                   
CODE_13EED9:        10 11         BPL CODE_13EEEC           
CODE_13EEDB:        64 19         STZ $19                   
CODE_13EEDD:        64 1A         STZ $1A                   
CODE_13EEDF:        64 1B         STZ $1B                   
CODE_13EEE1:        A9 05         LDA #$05                  
CODE_13EEE3:        8D 10 02      STA $0210                 
CODE_13EEE6:        A9 14         LDA #$14                  
CODE_13EEE8:        85 1D         STA $1D                   
CODE_13EEEA:        E6 29         INC $29                   
CODE_13EEEC:        60            RTS                       

CODE_13EEED:        A5 1B         LDA $1B                   
CODE_13EEEF:        C9 2A         CMP #$2A                  
CODE_13EEF1:        F0 F9         BEQ CODE_13EEEC           
CODE_13EEF3:        CE 10 02      DEC $0210                 
CODE_13EEF6:        10 F4         BPL CODE_13EEEC           
CODE_13EEF8:        A9 05         LDA #$05                  
CODE_13EEFA:        8D 10 02      STA $0210                 
CODE_13EEFD:        E6 1B         INC $1B                   
CODE_13EEFF:        A6 1B         LDX $1B                   
CODE_13EF01:        BF AE CB 14   LDA.l DATA_14CBAE,x             
CODE_13EF05:        8D 13 07      STA $0713                 
CODE_13EF08:        BF AD CB 14   LDA.l DATA_14CBAD,x             
CODE_13EF0C:        AA            TAX                       
CODE_13EF0D:        BF DC CB 14   LDA.l DATA_14CBDC,x             
CODE_13EF11:        A8            TAY                       
CODE_13EF12:        BF D9 CB 14   LDA.l DATA_14CBD9,x             
CODE_13EF16:        99 00 08      STA $0800,y               
CODE_13EF19:        BF DA CB 14   LDA.l DATA_14CBDA,x             
CODE_13EF1D:        99 01 08      STA $0801,y               
CODE_13EF20:        BF DB CB 14   LDA.l DATA_14CBDB,x             
CODE_13EF24:        99 02 08      STA $0802,y               
CODE_13EF27:        A9 21         LDA #$21                  
CODE_13EF29:        99 03 08      STA $0803,y               
CODE_13EF2C:        98            TYA                       
CODE_13EF2D:        4A            LSR A                     
CODE_13EF2E:        4A            LSR A                     
CODE_13EF2F:        A8            TAY                       
CODE_13EF30:        A9 00         LDA #$00                  
CODE_13EF32:        99 20 0A      STA $0A20,y               
CODE_13EF35:        E8            INX                       
CODE_13EF36:        E8            INX                       
CODE_13EF37:        E8            INX                       
CODE_13EF38:        E8            INX                       
CODE_13EF39:        EC 13 07      CPX $0713                 
CODE_13EF3C:        D0 CF         BNE CODE_13EF0D           
CODE_13EF3E:        60            RTS                       

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

CODE_13F000:        AD AB 02      LDA $02AB
CODE_13F003:        D0 6E         BNE CODE_13F073           
CODE_13F005:        AD C3 02      LDA $02C3                 
CODE_13F008:        F0 0D         BEQ CODE_13F017           
CODE_13F00A:        A2 02         LDX #$02                  
CODE_13F00C:        BD B2 02      LDA $02B2,x               
CODE_13F00F:        9D 57 02      STA $0257,x               
CODE_13F012:        CA            DEX                       
CODE_13F013:        10 F7         BPL CODE_13F00C           
CODE_13F015:        80 18         BRA CODE_13F02F           

CODE_13F017:        AE 35 05      LDX $0535                 
CODE_13F01A:        BF 8E CE 11   LDA.l DATA_11CE8E,x             
CODE_13F01E:        8D 57 02      STA $0257                 
CODE_13F021:        BF 98 CE 11   LDA.l DATA_11CE98,x             
CODE_13F025:        8D 58 02      STA $0258                 
CODE_13F028:        BF A2 CE 11   LDA.l DATA_11CEA2,x             
CODE_13F02C:        8D 59 02      STA $0259                 
CODE_13F02F:        AD 35 05      LDA $0535                 
CODE_13F032:        A0 01         LDY #$01                  
CODE_13F034:        20 09 F1      JSR CODE_13F109           
CODE_13F037:        AD 33 05      LDA $0533                 
CODE_13F03A:        C9 08         CMP #$08                  
CODE_13F03C:        D0 0E         BNE CODE_13F04C           
CODE_13F03E:        AD 34 05      LDA $0534                 
CODE_13F041:        C9 08         CMP #$08                  
CODE_13F043:        D0 07         BNE CODE_13F04C           
CODE_13F045:        A9 10         LDA #$10                  
CODE_13F047:        8D 08 02      STA $0208                 
CODE_13F04A:        80 03         BRA CODE_13F04F           

CODE_13F04C:        9C 08 02      STZ $0208                 
CODE_13F04F:        9C 09 02      STZ $0209                 
CODE_13F052:        EE AB 02      INC $02AB                 
CODE_13F055:        AD 35 05      LDA $0535                 
CODE_13F058:        8D 60 02      STA $0260                 
CODE_13F05B:        A9 01         LDA #$01                  
CODE_13F05D:        8D AC 02      STA $02AC                 
CODE_13F060:        4A            LSR A                     
CODE_13F061:        85 06         STA $06                   
CODE_13F063:        A9 FF         LDA #$FF                  
CODE_13F065:        8D 63 02      STA $0263                 
CODE_13F068:        A9 0F         LDA #$0F                  
CODE_13F06A:        8D 62 02      STA $0262                 
CODE_13F06D:        20 7D F0      JSR CODE_13F07D           
CODE_13F070:        20 B9 F3      JSR CODE_13F3B9           
CODE_13F073:        22 BF F1 13   JSL CODE_13F1BF           
CODE_13F077:        AD AC 02      LDA $02AC                 
CODE_13F07A:        D0 00         BNE CODE_13F07C           
CODE_13F07C:        6B            RTL                       

CODE_13F07D:        AD C3 02      LDA $02C3                 
CODE_13F080:        F0 03         BEQ CODE_13F085           
CODE_13F082:        82 80 00      BRL CODE_13F105           

CODE_13F085:        AD 35 05      LDA $0535                 
CODE_13F088:        D0 0B         BNE CODE_13F095           
CODE_13F08A:        AD C2 02      LDA $02C2                 
CODE_13F08D:        10 03         BPL CODE_13F092           
CODE_13F08F:        4C 02 F1      JMP CODE_13F102           

CODE_13F092:        AD 35 05      LDA $0535                 
CODE_13F095:        CD 41 05      CMP $0541                 
CODE_13F098:        D0 05         BNE CODE_13F09F           
CODE_13F09A:        AD C2 02      LDA $02C2                 
CODE_13F09D:        10 63         BPL CODE_13F102           
CODE_13F09F:        A2 02         LDX #$02                  
CODE_13F0A1:        AD C2 02      LDA $02C2                 
CODE_13F0A4:        10 06         BPL CODE_13F0AC           
CODE_13F0A6:        A9 FF         LDA #$FF                  
CODE_13F0A8:        85 0B         STA $0B                   
CODE_13F0AA:        D0 02         BNE CODE_13F0AE           
CODE_13F0AC:        64 0B         STZ $0B                   
CODE_13F0AE:        AD C2 02      LDA $02C2                 
CODE_13F0B1:        29 F0         AND #$F0                  
CODE_13F0B3:        18            CLC                       
CODE_13F0B4:        7D 57 02      ADC $0257,x               
CODE_13F0B7:        08            PHP                       
CODE_13F0B8:        65 0B         ADC $0B                   
CODE_13F0BA:        28            PLP                       
CODE_13F0BB:        85 0C         STA $0C                   
CODE_13F0BD:        A5 0B         LDA $0B                   
CODE_13F0BF:        D0 12         BNE CODE_13F0D3           
CODE_13F0C1:        90 22         BCC CODE_13F0E5           
CODE_13F0C3:        BD 57 02      LDA $0257,x               
CODE_13F0C6:        29 0F         AND #$0F                  
CODE_13F0C8:        C9 09         CMP #$09                  
CODE_13F0CA:        D0 19         BNE CODE_13F0E5           
CODE_13F0CC:        A5 0C         LDA $0C                   
CODE_13F0CE:        29 F0         AND #$F0                  
CODE_13F0D0:        4C E7 F0      JMP CODE_13F0E7           

CODE_13F0D3:        B0 10         BCS CODE_13F0E5                   
CODE_13F0D5:        BD 57 02      LDA $0257,x               
CODE_13F0D8:        29 0F         AND #$0F                  
CODE_13F0DA:        D0 09         BNE CODE_13F0E5           
CODE_13F0DC:        A5 0C         LDA $0C                   
CODE_13F0DE:        29 F0         AND #$F0                  
CODE_13F0E0:        69 09         ADC #$09                  
CODE_13F0E2:        4C E7 F0      JMP CODE_13F0E7           

CODE_13F0E5:        A5 0C         LDA $0C                   
CODE_13F0E7:        9D 57 02      STA $0257,x               
CODE_13F0EA:        CA            DEX                       
CODE_13F0EB:        10 C1         BPL CODE_13F0AE           
CODE_13F0ED:        AD C2 02      LDA $02C2                 
CODE_13F0F0:        10 10         BPL CODE_13F102           
CODE_13F0F2:        CE 60 02      DEC $0260                 
CODE_13F0F5:        AD 03 02      LDA $0203                 
CODE_13F0F8:        49 01         EOR #$01                  
CODE_13F0FA:        8D 03 02      STA $0203                 
CODE_13F0FD:        A9 01         LDA #$01                  
CODE_13F0FF:        8D 62 02      STA $0262                 
CODE_13F102:        9C C2 02      STZ $02C2                 
CODE_13F105:        20 43 F3      JSR CODE_13F343           
CODE_13F108:        60            RTS                       

CODE_13F109:        4A            LSR A                     
CODE_13F10A:        B0 1A         BCS CODE_13F126                   
CODE_13F10C:        C0 01         CPY #$01                  
CODE_13F10E:        F0 05         BEQ CODE_13F115           
CODE_13F110:        AD 28 06      LDA $0628                 
CODE_13F113:        F0 07         BEQ CODE_13F11C           
CODE_13F115:        A9 01         LDA #$01                  
CODE_13F117:        8D 03 02      STA $0203                 
CODE_13F11A:        80 03         BRA CODE_13F11F           

CODE_13F11C:        9C 03 02      STZ $0203                 
CODE_13F11F:        9C 09 02      STZ $0209                 
CODE_13F122:        A9 00         LDA #$00                  
CODE_13F124:        80 19         BRA CODE_13F13F           

CODE_13F126:        C0 01         CPY #$01                  
CODE_13F128:        F0 05         BEQ CODE_13F12F           
CODE_13F12A:        9C 03 02      STZ $0203                 
CODE_13F12D:        80 0D         BRA CODE_13F13C           

CODE_13F12F:        A9 01         LDA #$01                  
CODE_13F131:        8D 03 02      STA $0203                 
CODE_13F134:        8D 09 02      STA $0209                 
CODE_13F137:        A9 80         LDA #$80                  
CODE_13F139:        8D 02 02      STA $0202                 
CODE_13F13C:        B9 3C 9B      LDA.w DATA_119B3C,y               
CODE_13F13F:        8D 61 02      STA $0261                 
CODE_13F142:        60            RTS                       

CODE_13F143:        AD 02 02      LDA $0202                 
CODE_13F146:        8D AD 02      STA $02AD                 
CODE_13F149:        AD 03 02      LDA $0203                 
CODE_13F14C:        8D AE 02      STA $02AE                 
CODE_13F14F:        AD C0 04      LDA $04C0                 
CODE_13F152:        8D AF 02      STA $02AF                 
CODE_13F155:        EE B0 02      INC $02B0                 
CODE_13F158:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_13F15B:        8D 35 05      STA $0535                 
CODE_13F15E:        20 09 F1      JSR CODE_13F109           
CODE_13F161:        A9 00         LDA #$00                  
CODE_13F163:        8D 02 02      STA $0202                 
CODE_13F166:        8D C2 04      STA $04C2                 
CODE_13F169:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_13F16C:        8D C0 04      STA $04C0                 
CODE_13F16F:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_13F172:        8D 57 02      STA $0257                 
CODE_13F175:        A9 E0         LDA #$E0                  
CODE_13F177:        8D 61 02      STA $0261                 
CODE_13F17A:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_13F17D:        18            CLC                       
CODE_13F17E:        69 F0         ADC #$F0                  
CODE_13F180:        8D 63 02      STA $0263                 
CODE_13F183:        6B            RTL                       

CODE_13F184:        AD AD 02      LDA $02AD                 
CODE_13F187:        8D 02 02      STA $0202                 
CODE_13F18A:        8D C2 04      STA $04C2                 
CODE_13F18D:        AD AE 02      LDA $02AE                 
CODE_13F190:        8D 03 02      STA $0203                 
CODE_13F193:        AD AF 02      LDA $02AF                 
CODE_13F196:        8D C0 04      STA $04C0                 
CODE_13F199:        AD B0 02      LDA $02B0                 
CODE_13F19C:        D0 20         BNE CODE_13F1BE           
CODE_13F19E:        EE B1 02      INC $02B1                 
CODE_13F1A1:        EE B0 02      INC $02B0                 
CODE_13F1A4:        E6 D5         INC $D5                   
CODE_13F1A6:        AD 58 02      LDA $0258                 
CODE_13F1A9:        8D 57 02      STA $0257                 
CODE_13F1AC:        A9 10         LDA #$10                  
CODE_13F1AE:        85 01         STA $01                   
CODE_13F1B0:        A9 F0         LDA #$F0                  
CODE_13F1B2:        8D 61 02      STA $0261                 
CODE_13F1B5:        8D 62 02      STA $0262                 
CODE_13F1B8:        AD 59 02      LDA $0259                 
CODE_13F1BB:        8D 63 02      STA $0263                 
CODE_13F1BE:        6B            RTL                       

CODE_13F1BF:        A2 00         LDX #$00                  
CODE_13F1C1:        8E 64 02      STX $0264                 
CODE_13F1C4:        8E 65 02      STX $0265                 
CODE_13F1C7:        86 D8         STX $D8                   
CODE_13F1C9:        22 38 F2 13   JSL CODE_13F238           
CODE_13F1CD:        22 77 F2 13   JSL CODE_13F277           
CODE_13F1D1:        AD 61 02      LDA $0261                 
CODE_13F1D4:        CD 5A 02      CMP $025A                 
CODE_13F1D7:        D0 1A         BNE CODE_13F1F3           
CODE_13F1D9:        80 18         BRA CODE_13F1F3           

CODE_13F1DB:        AD 62 02      LDA $0262                 
CODE_13F1DE:        18            CLC                       
CODE_13F1DF:        69 01         ADC #$01                  
CODE_13F1E1:        CD 5B 02      CMP $025B                 
CODE_13F1E4:        D0 0D         BNE CODE_13F1F3           
CODE_13F1E6:        9C AC 02      STZ $02AC                 
CODE_13F1E9:        9C B0 02      STZ $02B0                 
CODE_13F1EC:        9C B1 02      STZ $02B1                 
CODE_13F1EF:        EE 64 02      INC $0264                 
CODE_13F1F2:        6B            RTL                       

CODE_13F1F3:        AD 57 02      LDA $0257                 
CODE_13F1F6:        CD 63 02      CMP $0263                 
CODE_13F1F9:        F0 EB         BEQ CODE_13F1E6           
CODE_13F1FB:        A2 00         LDX #$00                  
CODE_13F1FD:        22 1D F2 13   JSL CODE_13F21D           
CODE_13F201:        6B            RTL                       

CODE_13F202:        BD 57 02      LDA $0257,x               
CODE_13F205:        38            SEC                       
CODE_13F206:        E9 10         SBC #$10                  
CODE_13F208:        9D 57 02      STA $0257,x               
CODE_13F20B:        B0 0F         BCS CODE_13F21C                   
CODE_13F20D:        DE 57 02      DEC $0257,x               
CODE_13F210:        BD 57 02      LDA $0257,x               
CODE_13F213:        C9 EF         CMP #$EF                  
CODE_13F215:        D0 05         BNE CODE_13F21C           
CODE_13F217:        A9 F9         LDA #$F9                  
CODE_13F219:        9D 57 02      STA $0257,x               
CODE_13F21C:        6B            RTL                       

CODE_13F21D:        BD 57 02      LDA $0257,x               
CODE_13F220:        18            CLC                       
CODE_13F221:        69 10         ADC #$10                  
CODE_13F223:        9D 57 02      STA $0257,x               
CODE_13F226:        90 0F         BCC CODE_13F237           
CODE_13F228:        FE 57 02      INC $0257,x               
CODE_13F22B:        BD 57 02      LDA $0257,x               
CODE_13F22E:        C9 0A         CMP #$0A                  
CODE_13F230:        D0 05         BNE CODE_13F237           
CODE_13F232:        A9 00         LDA #$00                  
CODE_13F234:        9D 57 02      STA $0257,x               
CODE_13F237:        6B            RTL                       

CODE_13F238:        84 0F         STY $0F                   
CODE_13F23A:        BD 57 02      LDA $0257,x               
CODE_13F23D:        29 0F         AND #$0F                  
CODE_13F23F:        A8            TAY                       
CODE_13F240:        B9 F0 AA      LDA.w DATA_11AAF0,y               
CODE_13F243:        8D 69 02      STA $0269                 
CODE_13F246:        AD 34 05      LDA $0534                 
CODE_13F249:        0A            ASL A                     
CODE_13F24A:        0A            ASL A                     
CODE_13F24B:        0A            ASL A                     
CODE_13F24C:        0A            ASL A                     
CODE_13F24D:        18            CLC                       
CODE_13F24E:        79 FB AA      ADC.w DATA_11AAFB,y               
CODE_13F251:        8D 6A 02      STA $026A                 
CODE_13F254:        A9 7F         LDA #$7F                  
CODE_13F256:        8D 6B 02      STA $026B                 
CODE_13F259:        BD 57 02      LDA $0257,x               
CODE_13F25C:        4A            LSR A                     
CODE_13F25D:        4A            LSR A                     
CODE_13F25E:        4A            LSR A                     
CODE_13F25F:        4A            LSR A                     
CODE_13F260:        8D 56 02      STA $0256                 
CODE_13F263:        0A            ASL A                     
CODE_13F264:        8D 5B 02      STA $025B                 
CODE_13F267:        A0 00         LDY #$00                  
CODE_13F269:        BD 57 02      LDA $0257,x               
CODE_13F26C:        4A            LSR A                     
CODE_13F26D:        B0 02         BCS CODE_13F271                   
CODE_13F26F:        A0 04         LDY #$04                  
CODE_13F271:        8C 5A 02      STY $025A                 
CODE_13F274:        A4 0F         LDY $0F                   
CODE_13F276:        6B            RTL                       

CODE_13F277:        8B            PHB                       
CODE_13F278:        A9 13         LDA #$13                  
CODE_13F27A:        48            PHA                       
CODE_13F27B:        AB            PLB                       
CODE_13F27C:        AF 00 00 7F   LDA $7F0000               
CODE_13F280:        AA            TAX                       
CODE_13F281:        AD 69 02      LDA $0269                 
CODE_13F284:        85 C4         STA $C4                   
CODE_13F286:        AD 6A 02      LDA $026A                 
CODE_13F289:        85 C5         STA $C5                   
CODE_13F28B:        AD 6B 02      LDA $026B                 
CODE_13F28E:        85 C6         STA $C6                   
CODE_13F290:        AD 4B 02      LDA $024B                 
CODE_13F293:        F0 03         BEQ CODE_13F298           
CODE_13F295:        4C E0 F3      JMP CODE_13F3E0           

CODE_13F298:        C2 20         REP #$20                  
CODE_13F29A:        AD 5A 02      LDA $025A                 
CODE_13F29D:        09 10 00      ORA #$0010                
CODE_13F2A0:        9F 02 00 7F   STA $7F0002,x             
CODE_13F2A4:        EB            XBA                       
CODE_13F2A5:        18            CLC                       
CODE_13F2A6:        69 01 00      ADC #$0001                
CODE_13F2A9:        EB            XBA                       
CODE_13F2AA:        09 10 00      ORA #$0010                
CODE_13F2AD:        9F 42 00 7F   STA $7F0042,x             
CODE_13F2B1:        E8            INX                       
CODE_13F2B2:        E8            INX                       
CODE_13F2B3:        A9 00 3C      LDA #$3C00                
CODE_13F2B6:        9F 02 00 7F   STA $7F0002,x             
CODE_13F2BA:        9F 42 00 7F   STA $7F0042,x             
CODE_13F2BE:        E8            INX                       
CODE_13F2BF:        E8            INX                       
CODE_13F2C0:        E2 20         SEP #$20                  
CODE_13F2C2:        9C 55 02      STZ $0255                 
CODE_13F2C5:        64 D5         STZ $D5                   
CODE_13F2C7:        AD DF 02      LDA $02DF                 ; \ [$00] = Pointer to Map16 tileset.
CODE_13F2CA:        85 00         STA $00                   ;  |
CODE_13F2CC:        AD E0 02      LDA $02E0                 ;  |
CODE_13F2CF:        85 01         STA $01                   ;  |
CODE_13F2D1:        AD E1 02      LDA $02E1                 ;  |
CODE_13F2D4:        85 02         STA $02                   ; /
CODE_13F2D6:        AC 56 02      LDY $0256                 
CODE_13F2D9:        C2 30         REP #$30                  ; Accumulator and Index = 16-bit.
CODE_13F2DB:        B7 C4         LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F2DD:        29 FF 00      AND #$00FF                ;  |
CODE_13F2E0:        C9 FF 00      CMP #$00FF                ;  |
CODE_13F2E3:        D0 10         BNE CODE_13F2F5           ; / If not, branch.
CODE_13F2E5:        AF 13 A6 13   LDA.l PNTR_13A613        ; \ Load empty tile.
CODE_13F2E9:        85 00         STA $00                   ;  | ($13A615)
CODE_13F2EB:        A9 13 00      LDA #$0013                ;  |
CODE_13F2EE:        85 02         STA $02                   ; /
CODE_13F2F0:        A0 00 00      LDY #$0000                ; Y = #$0000.
CODE_13F2F3:        80 04         BRA CODE_13F2F9           

CODE_13F2F5:        0A            ASL A                     ; \ Multiply by 8 (8 bytes for 1 Map16 tile)
CODE_13F2F6:        0A            ASL A                     ;  |
CODE_13F2F7:        0A            ASL A                     ;  |
CODE_13F2F8:        A8            TAY                       ; / Into Y.
CODE_13F2F9:        B7 00         LDA [$00],y               ; \ Store top-left tile.
CODE_13F2FB:        9F 02 00 7F   STA $7F0002,x             ;  |
CODE_13F2FF:        C8            INY                       ;  | Get to next tile.
CODE_13F300:        C8            INY                       ;  |
CODE_13F301:        B7 00         LDA [$00],y               ;  | Store bottom-left tile.
CODE_13F303:        9F 42 00 7F   STA $7F0042,x             ;  |
CODE_13F307:        C8            INY                       ;  | Get to next tile.
CODE_13F308:        C8            INY                       ;  |
CODE_13F309:        B7 00         LDA [$00],y               ;  | Store top-right tile.
CODE_13F30B:        9F 04 00 7F   STA $7F0004,x             ;  |
CODE_13F30F:        C8            INY                       ;  | Get to next tile.
CODE_13F310:        C8            INY                       ;  |
CODE_13F311:        B7 00         LDA [$00],y               ;  | Store bottom-right tile.
CODE_13F313:        9F 44 00 7F   STA $7F0044,x             ; /
CODE_13F317:        E2 30         SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_13F319:        EE 55 02      INC $0255                 
CODE_13F31C:        E8            INX                       
CODE_13F31D:        E8            INX                       
CODE_13F31E:        E8            INX                       
CODE_13F31F:        E8            INX                       
CODE_13F320:        AD 56 02      LDA $0256                 
CODE_13F323:        18            CLC                       
CODE_13F324:        69 10         ADC #$10                  
CODE_13F326:        8D 56 02      STA $0256                 
CODE_13F329:        AD 55 02      LDA $0255                 
CODE_13F32C:        C9 0F         CMP #$0F                  
CODE_13F32E:        90 97         BCC CODE_13F2C7           
CODE_13F330:        A9 FF         LDA #$FF                  
CODE_13F332:        9F 42 00 7F   STA $7F0042,x             
CODE_13F336:        8A            TXA                       
CODE_13F337:        18            CLC                       
CODE_13F338:        69 40         ADC #$40                  
CODE_13F33A:        8F 00 00 7F   STA $7F0000               
CODE_13F33E:        EE 65 02      INC $0265                 
CODE_13F341:        AB            PLB                       
CODE_13F342:        6B            RTL                       

CODE_13F343:        AD C3 02      LDA $02C3                 
CODE_13F346:        F0 0E         BEQ CODE_13F356           
CODE_13F348:        AD 00 02      LDA $0200                 
CODE_13F34B:        8D 02 02      STA $0202                 
CODE_13F34E:        AD 01 02      LDA $0201                 
CODE_13F351:        8D 03 02      STA $0203                 
CODE_13F354:        80 57         BRA CODE_13F3AD           

CODE_13F356:        AD 35 05      LDA $0535                 
CODE_13F359:        29 02         AND #$02                  
CODE_13F35B:        D0 28         BNE CODE_13F385           
CODE_13F35D:        AD B6 02      LDA $02B6                 
CODE_13F360:        F0 05         BEQ CODE_13F367           
CODE_13F362:        AD 01 02      LDA $0201                 
CODE_13F365:        80 02         BRA CODE_13F369           

CODE_13F367:        A9 01         LDA #$01                  
CODE_13F369:        8D 03 02      STA $0203                 
CODE_13F36C:        AD 01 02      LDA $0201                 
CODE_13F36F:        F0 09         BEQ CODE_13F37A           
CODE_13F371:        AD 00 02      LDA $0200                 
CODE_13F374:        4A            LSR A                     
CODE_13F375:        8D 02 02      STA $0202                 
CODE_13F378:        80 33         BRA CODE_13F3AD           

CODE_13F37A:        AD 00 02      LDA $0200                 
CODE_13F37D:        4A            LSR A                     
CODE_13F37E:        09 80         ORA #$80                  
CODE_13F380:        8D 02 02      STA $0202                 
CODE_13F383:        80 28         BRA CODE_13F3AD           

CODE_13F385:        AD B6 02      LDA $02B6                 
CODE_13F388:        F0 07         BEQ CODE_13F391           
CODE_13F38A:        AD 01 02      LDA $0201                 
CODE_13F38D:        49 01         EOR #$01                  
CODE_13F38F:        80 02         BRA CODE_13F393           

CODE_13F391:        A9 00         LDA #$00                  
CODE_13F393:        8D 03 02      STA $0203                 
CODE_13F396:        AD 01 02      LDA $0201                 
CODE_13F399:        F0 09         BEQ CODE_13F3A4           
CODE_13F39B:        AD 00 02      LDA $0200                 
CODE_13F39E:        4A            LSR A                     
CODE_13F39F:        8D 02 02      STA $0202                 
CODE_13F3A2:        80 09         BRA CODE_13F3AD           

CODE_13F3A4:        AD 00 02      LDA $0200                 
CODE_13F3A7:        4A            LSR A                     
CODE_13F3A8:        09 80         ORA #$80                  
CODE_13F3AA:        8D 02 02      STA $0202                 
CODE_13F3AD:        AD 02 02      LDA $0202                 
CODE_13F3B0:        29 F0         AND #$F0                  
CODE_13F3B2:        8D 6C 02      STA $026C                 
CODE_13F3B5:        9C B6 02      STZ $02B6                 
CODE_13F3B8:        60            RTS                       

CODE_13F3B9:        AE 33 05      LDX $0533                 ; \ Get level + room number into index.
CODE_13F3BC:        BF 98 D0 11   LDA.l DATA_11D098,x         ;  |
CODE_13F3C0:        18            CLC                       ;  |
CODE_13F3C1:        6D 34 05      ADC $0534                 ;  |
CODE_13F3C4:        AA            TAX                       ; /
CODE_13F3C5:        BF 1D A6 13   LDA.l DATA_13A61D,x         ; \ Load a certain Layer 2 Map16 tileset.     
CODE_13F3C9:        0A            ASL A                     ;  |
CODE_13F3CA:        AA            TAX                       ; /
CODE_13F3CB:        BF E5 A6 13   LDA.l PNTR_13A6E5,x         ; \ Tileset pointer, low byte, into $02DF.
CODE_13F3CF:        8D DF 02      STA $02DF                 ; /
CODE_13F3D2:        E8            INX                       ; \
CODE_13F3D3:        BF E5 A6 13   LDA.l PNTR_13A6E5,x         ;  | Tileset pointer, high byte, into $02E0.    
CODE_13F3D7:        8D E0 02      STA $02E0                 ; /
CODE_13F3DA:        A9 13         LDA #$13                  ; \ Bank number = #$13.
CODE_13F3DC:        8D E1 02      STA $02E1                 ; / Into $02E1.
CODE_13F3DF:        60            RTS                       ; Return.

CODE_13F3E0:        C2 20         REP #$20                  
CODE_13F3E2:        AD 5A 02      LDA $025A                 
CODE_13F3E5:        09 10 00      ORA #$0010                
CODE_13F3E8:        18            CLC                       
CODE_13F3E9:        69 01 40      ADC #$4001                
CODE_13F3EC:        9F 02 00 7F   STA $7F0002,x             
CODE_13F3F0:        EB            XBA                       
CODE_13F3F1:        18            CLC                       
CODE_13F3F2:        69 01 00      ADC #$0001                
CODE_13F3F5:        EB            XBA                       
CODE_13F3F6:        09 10 00      ORA #$0010                
CODE_13F3F9:        9F 2E 00 7F   STA $7F002E,x             
CODE_13F3FD:        E8            INX                       
CODE_13F3FE:        E8            INX                       
CODE_13F3FF:        A9 00 28      LDA #$2800                
CODE_13F402:        9F 02 00 7F   STA $7F0002,x             
CODE_13F406:        9F 2E 00 7F   STA $7F002E,x             
CODE_13F40A:        E8            INX                       
CODE_13F40B:        E8            INX                       
CODE_13F40C:        E2 20         SEP #$20                  
CODE_13F40E:        9C 55 02      STZ $0255                 
CODE_13F411:        64 D5         STZ $D5                   
CODE_13F413:        AD 56 02      LDA $0256                 
CODE_13F416:        18            CLC                       
CODE_13F417:        69 50         ADC #$50                  
CODE_13F419:        8D 56 02      STA $0256                 
CODE_13F41C:        AD DF 02      LDA $02DF                 
CODE_13F41F:        85 00         STA $00                   
CODE_13F421:        AD E0 02      LDA $02E0                 
CODE_13F424:        85 01         STA $01                   
CODE_13F426:        AD E1 02      LDA $02E1                 
CODE_13F429:        85 02         STA $02                   
CODE_13F42B:        AC 56 02      LDY $0256                 
CODE_13F42E:        C2 30         REP #$30                  
CODE_13F430:        B7 C4         LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F432:        29 FF 00      AND #$00FF                ;  |
CODE_13F435:        C9 FF 00      CMP #$00FF                ;  |
CODE_13F438:        D0 10         BNE CODE_13F44A           ; / If not, branch.
CODE_13F43A:        AF 13 A6 13   LDA.l PNTR_13A613           ; \ Load empty tile data.
CODE_13F43E:        85 00         STA $00                   ;  | ($13A615)
CODE_13F440:        A9 13 00      LDA #$0013                ;  |
CODE_13F443:        85 02         STA $02                   ; /
CODE_13F445:        A0 00 00      LDY #$0000                ; Y = #$0000.
CODE_13F448:        80 04         BRA CODE_13F44E           

CODE_13F44A:        0A            ASL A                     
CODE_13F44B:        0A            ASL A                     
CODE_13F44C:        0A            ASL A                     
CODE_13F44D:        A8            TAY                       
CODE_13F44E:        B7 00         LDA [$00],y               
CODE_13F450:        9F 02 00 7F   STA $7F0002,x             
CODE_13F454:        C8            INY                       
CODE_13F455:        C8            INY                       
CODE_13F456:        B7 00         LDA [$00],y               
CODE_13F458:        9F 2E 00 7F   STA $7F002E,x             
CODE_13F45C:        C8            INY                       
CODE_13F45D:        C8            INY                       
CODE_13F45E:        B7 00         LDA [$00],y               
CODE_13F460:        9F 04 00 7F   STA $7F0004,x             
CODE_13F464:        C8            INY                       
CODE_13F465:        C8            INY                       
CODE_13F466:        B7 00         LDA [$00],y               
CODE_13F468:        9F 30 00 7F   STA $7F0030,x             
CODE_13F46C:        E2 30         SEP #$30                  
CODE_13F46E:        EE 55 02      INC $0255                 
CODE_13F471:        E8            INX                       
CODE_13F472:        E8            INX                       
CODE_13F473:        E8            INX                       
CODE_13F474:        E8            INX                       
CODE_13F475:        AD 56 02      LDA $0256                 
CODE_13F478:        18            CLC                       
CODE_13F479:        69 10         ADC #$10                  
CODE_13F47B:        8D 56 02      STA $0256                 
CODE_13F47E:        AD 55 02      LDA $0255                 
CODE_13F481:        C9 0A         CMP #$0A                  
CODE_13F483:        90 97         BCC CODE_13F41C           
CODE_13F485:        A9 FF         LDA #$FF                  
CODE_13F487:        9F 2E 00 7F   STA $7F002E,x             
CODE_13F48B:        8A            TXA                       
CODE_13F48C:        18            CLC                       
CODE_13F48D:        69 2C         ADC #$2C                  
CODE_13F48F:        8F 00 00 7F   STA $7F0000               
CODE_13F493:        EE 65 02      INC $0265                 
CODE_13F496:        AB            PLB                       
CODE_13F497:        6B            RTL                       

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
   
CODE_13F500:        AD AB 02      LDA $02AB                 
CODE_13F503:        D0 4F         BNE CODE_13F554           
CODE_13F505:        A9 02         LDA #$02                  
CODE_13F507:        8D 5A 02      STA $025A                 
CODE_13F50A:        AD C3 02      LDA $02C3                 
CODE_13F50D:        D0 14         BNE CODE_13F523           
CODE_13F50F:        AE 35 05      LDX $0535                 
CODE_13F512:        BF AC CE 11   LDA.l DATA_11CEAC,x             
CODE_13F516:        8D 57 02      STA $0257                 
CODE_13F519:        8D 58 02      STA $0258                 
CODE_13F51C:        BF B6 CE 11   LDA.l DATA_11CEB6,x             
CODE_13F520:        8D 59 02      STA $0259                 
CODE_13F523:        AD 35 05      LDA $0535                 
CODE_13F526:        A0 00         LDY #$00                  
CODE_13F528:        20 09 F1      JSR CODE_13F109           
CODE_13F52B:        A9 02         LDA #$02                  
CODE_13F52D:        8D B9 02      STA $02B9                 
CODE_13F530:        A9 00         LDA #$00                  
CODE_13F532:        8D BA 02      STA $02BA                 
CODE_13F535:        A9 20         LDA #$20                  
CODE_13F537:        8D 5C 02      STA $025C                 
CODE_13F53A:        A9 A0         LDA #$A0                  
CODE_13F53C:        8D 5D 02      STA $025D                 
CODE_13F53F:        EE AB 02      INC $02AB                 
CODE_13F542:        A9 E0         LDA #$E0                  
CODE_13F544:        85 E2         STA $E2                   
CODE_13F546:        A9 01         LDA #$01                  
CODE_13F548:        85 E4         STA $E4                   
CODE_13F54A:        8D AC 02      STA $02AC                 
CODE_13F54D:        4A            LSR A                     
CODE_13F54E:        8D 5B 02      STA $025B                 
CODE_13F551:        20 B9 F3      JSR CODE_13F3B9           
CODE_13F554:        64 06         STZ $06                   
CODE_13F556:        A9 FF         LDA #$FF                  
CODE_13F558:        8D 63 02      STA $0263                 
CODE_13F55B:        A9 A0         LDA #$A0                  
CODE_13F55D:        8D 62 02      STA $0262                 
CODE_13F560:        22 FE F5 13   JSL CODE_13F5FE           
CODE_13F564:        AD AC 02      LDA $02AC                 
CODE_13F567:        D0 08         BNE CODE_13F571           
CODE_13F569:        A9 E8         LDA #$E8                  
CODE_13F56B:        85 E1         STA $E1                   
CODE_13F56D:        A9 C8         LDA #$C8                  
CODE_13F56F:        85 E2         STA $E2                   
CODE_13F571:        6B            RTL                       

CODE_13F572:        AD 08 02      LDA $0208                 
CODE_13F575:        8D BB 02      STA $02BB                 
CODE_13F578:        AD 00 02      LDA $0200                 
CODE_13F57B:        8D AD 02      STA $02AD                 
CODE_13F57E:        AD BC 02      LDA $02BC                 
CODE_13F581:        8D BE 02      STA $02BE                 
CODE_13F584:        AD BD 02      LDA $02BD                 
CODE_13F587:        8D BF 02      STA $02BF                 
CODE_13F58A:        AD C0 04      LDA $04C0                 
CODE_13F58D:        8D C0 02      STA $02C0                 
CODE_13F590:        9C 06 02      STZ $0206                 
CODE_13F593:        9C 00 02      STZ $0200                 
CODE_13F596:        9C 08 02      STZ $0208                 
CODE_13F599:        9C 02 02      STZ $0202                 
CODE_13F59C:        6B            RTL                       

CODE_13F59D:        AD BB 02      LDA $02BB                 
CODE_13F5A0:        8D 08 02      STA $0208                 
CODE_13F5A3:        AD AD 02      LDA $02AD                 
CODE_13F5A6:        8D 02 02      STA $0202                 
CODE_13F5A9:        AD BE 02      LDA $02BE                 
CODE_13F5AC:        8D BC 02      STA $02BC                 
CODE_13F5AF:        AD BF 02      LDA $02BF                 
CODE_13F5B2:        8D BD 02      STA $02BD                 
CODE_13F5B5:        AD C0 02      LDA $02C0                 
CODE_13F5B8:        8D C0 04      STA $04C0                 
CODE_13F5BB:        6B            RTL                       

CODE_13F5BC:        AD 58 02      LDA $0258                 
CODE_13F5BF:        29 10         AND #$10                  
CODE_13F5C1:        F0 07         BEQ CODE_13F5CA           
CODE_13F5C3:        A5 E1         LDA $E1                   
CODE_13F5C5:        38            SEC                       
CODE_13F5C6:        E9 08         SBC #$08                  
CODE_13F5C8:        85 E1         STA $E1                   
CODE_13F5CA:        A9 01         LDA #$01                  
CODE_13F5CC:        85 E4         STA $E4                   
CODE_13F5CE:        AD 58 02      LDA $0258                 
CODE_13F5D1:        8D 57 02      STA $0257                 
CODE_13F5D4:        A9 10         LDA #$10                  
CODE_13F5D6:        85 01         STA $01                   
CODE_13F5D8:        A2 00         LDX #$00                  
CODE_13F5DA:        22 4D F7 13   JSL CODE_13F74D           
CODE_13F5DE:        AD 5C 02      LDA $025C                 
CODE_13F5E1:        8D 5B 02      STA $025B                 
CODE_13F5E4:        A5 E1         LDA $E1                   
CODE_13F5E6:        85 E2         STA $E2                   
CODE_13F5E8:        A9 F0         LDA #$F0                  
CODE_13F5EA:        8D 61 02      STA $0261                 
CODE_13F5ED:        8D 62 02      STA $0262                 
CODE_13F5F0:        AD 59 02      LDA $0259                 
CODE_13F5F3:        8D 63 02      STA $0263                 
CODE_13F5F6:        EE C1 02      INC $02C1                 
CODE_13F5F9:        A9 01         LDA #$01                  
CODE_13F5FB:        85 06         STA $06                   
CODE_13F5FD:        6B            RTL                       

CODE_13F5FE:        A2 00         LDX #$00                  
CODE_13F600:        8E 64 02      STX $0264                 
CODE_13F603:        22 F7 F6 13   JSL CODE_13F6F7           
CODE_13F607:        22 7D F7 13   JSL CODE_13F77D           
CODE_13F60B:        A2 00         LDX #$00                  
CODE_13F60D:        22 74 F6 13   JSL CODE_13F674           
CODE_13F611:        AD 61 02      LDA $0261                 
CODE_13F614:        CD 5A 02      CMP $025A                 
CODE_13F617:        D0 22         BNE CODE_13F63B           
CODE_13F619:        AD 62 02      LDA $0262                 
CODE_13F61C:        18            CLC                       
CODE_13F61D:        69 20         ADC #$20                  
CODE_13F61F:        CD 5B 02      CMP $025B                 
CODE_13F622:        D0 17         BNE CODE_13F63B           
CODE_13F624:        A5 06         LDA $06                   
CODE_13F626:        AA            TAX                       
CODE_13F627:        F0 05         BEQ CODE_13F62E           
CODE_13F629:        AD 19 05      LDA $0519                 
CODE_13F62C:        85 E1         STA $E1                   
CODE_13F62E:        EE 64 02      INC $0264                 
CODE_13F631:        9C AC 02      STZ $02AC                 
CODE_13F634:        9C B0 02      STZ $02B0                 
CODE_13F637:        9C B1 02      STZ $02B1                 
CODE_13F63A:        6B            RTL                       

CODE_13F63B:        AD 5B 02      LDA $025B                 
CODE_13F63E:        29 20         AND #$20                  
CODE_13F640:        D0 0E         BNE CODE_13F650           
CODE_13F642:        AD 57 02      LDA $0257                 
CODE_13F645:        CD 63 02      CMP $0263                 
CODE_13F648:        F0 DA         BEQ CODE_13F624           
CODE_13F64A:        A2 00         LDX #$00                  
CODE_13F64C:        22 D0 F6 13   JSL CODE_13F6D0           
CODE_13F650:        6B            RTL                       

CODE_13F651:        BD 5C 02      LDA $025C,x               
CODE_13F654:        38            SEC                       
CODE_13F655:        E9 20         SBC #$20                  
CODE_13F657:        9D 5C 02      STA $025C,x               
CODE_13F65A:        B0 17         BCS CODE_13F673                   
CODE_13F65C:        BD B9 02      LDA $02B9,x               
CODE_13F65F:        38            SEC                       
CODE_13F660:        E9 01         SBC #$01                  
CODE_13F662:        C9 FF         CMP #$FF                  
CODE_13F664:        D0 04         BNE CODE_13F66A           
CODE_13F666:        A9 0B         LDA #$0B                  
CODE_13F668:        80 06         BRA CODE_13F670           

CODE_13F66A:        C9 07         CMP #$07                  
CODE_13F66C:        D0 34         BNE CODE_13F6A2           
CODE_13F66E:        A9 03         LDA #$03                  
CODE_13F670:        9D B9 02      STA $02B9,x               
CODE_13F673:        6B            RTL                       

CODE_13F674:        BD 5B 02      LDA $025B,x               
CODE_13F677:        18            CLC                       
CODE_13F678:        69 20         ADC #$20                  
CODE_13F67A:        9D 5B 02      STA $025B,x               
CODE_13F67D:        90 26         BCC CODE_13F6A5           
CODE_13F67F:        E0 00         CPX #$00                  
CODE_13F681:        D0 0A         BNE CODE_13F68D           
CODE_13F683:        AD 5A 02      LDA $025A                 
CODE_13F686:        18            CLC                       
CODE_13F687:        69 01         ADC #$01                  
CODE_13F689:        8D 5A 02      STA $025A                 
CODE_13F68C:        6B            RTL                       

CODE_13F68D:        CA            DEX                       
CODE_13F68E:        BD B9 02      LDA $02B9,x               
CODE_13F691:        18            CLC                       
CODE_13F692:        69 01         ADC #$01                  
CODE_13F694:        C9 04         CMP #$04                  
CODE_13F696:        D0 04         BNE CODE_13F69C           
CODE_13F698:        A9 08         LDA #$08                  
CODE_13F69A:        80 06         BRA CODE_13F6A2           

CODE_13F69C:        C9 0C         CMP #$0C                  
CODE_13F69E:        D0 02         BNE CODE_13F6A2           
CODE_13F6A0:        A9 00         LDA #$00                  
CODE_13F6A2:        9D B9 02      STA $02B9,x               
CODE_13F6A5:        6B            RTL                       

CODE_13F6A6:        BD 58 02      LDA $0258,x               
CODE_13F6A9:        38            SEC                       
CODE_13F6AA:        E9 10         SBC #$10                  
CODE_13F6AC:        9D 58 02      STA $0258,x               
CODE_13F6AF:        29 F0         AND #$F0                  
CODE_13F6B1:        C9 F0         CMP #$F0                  
CODE_13F6B3:        D0 1A         BNE CODE_13F6CF           
CODE_13F6B5:        BD 58 02      LDA $0258,x               
CODE_13F6B8:        29 0F         AND #$0F                  
CODE_13F6BA:        18            CLC                       
CODE_13F6BB:        69 E0         ADC #$E0                  
CODE_13F6BD:        9D 58 02      STA $0258,x               
CODE_13F6C0:        DE 58 02      DEC $0258,x               
CODE_13F6C3:        BD 58 02      LDA $0258,x               
CODE_13F6C6:        C9 DF         CMP #$DF                  
CODE_13F6C8:        D0 05         BNE CODE_13F6CF           
CODE_13F6CA:        A9 E9         LDA #$E9                  
CODE_13F6CC:        9D 58 02      STA $0258,x               
CODE_13F6CF:        6B            RTL                       

CODE_13F6D0:        BD 57 02      LDA $0257,x               
CODE_13F6D3:        18            CLC                       
CODE_13F6D4:        69 10         ADC #$10                  
CODE_13F6D6:        9D 57 02      STA $0257,x               
CODE_13F6D9:        29 F0         AND #$F0                  
CODE_13F6DB:        C9 F0         CMP #$F0                  
CODE_13F6DD:        D0 17         BNE CODE_13F6F6           
CODE_13F6DF:        BD 57 02      LDA $0257,x               
CODE_13F6E2:        29 0F         AND #$0F                  
CODE_13F6E4:        9D 57 02      STA $0257,x               
CODE_13F6E7:        FE 57 02      INC $0257,x               
CODE_13F6EA:        BD 57 02      LDA $0257,x               
CODE_13F6ED:        C9 0A         CMP #$0A                  
CODE_13F6EF:        D0 05         BNE CODE_13F6F6           
CODE_13F6F1:        A9 00         LDA #$00                  
CODE_13F6F3:        9D 57 02      STA $0257,x               
CODE_13F6F6:        6B            RTL                       

CODE_13F6F7:        DA            PHX                       
CODE_13F6F8:        BD 57 02      LDA $0257,x               
CODE_13F6FB:        29 0F         AND #$0F                  
CODE_13F6FD:        A8            TAY                       
CODE_13F6FE:        B9 F0 AA      LDA.w DATA_11AAF0,y               
CODE_13F701:        8D 69 02      STA $0269                 
CODE_13F704:        AD 34 05      LDA $0534                 
CODE_13F707:        0A            ASL A                     
CODE_13F708:        0A            ASL A                     
CODE_13F709:        0A            ASL A                     
CODE_13F70A:        0A            ASL A                     
CODE_13F70B:        18            CLC                       
CODE_13F70C:        79 FB AA      ADC.w DATA_11AAFB,y               
CODE_13F70F:        8D 6A 02      STA $026A                 
CODE_13F712:        A9 7F         LDA #$7F                  
CODE_13F714:        8D 6B 02      STA $026B                 
CODE_13F717:        BD 57 02      LDA $0257,x               
CODE_13F71A:        29 F0         AND #$F0                  
CODE_13F71C:        8D 56 02      STA $0256                 
CODE_13F71F:        E0 00         CPX #$00                  
CODE_13F721:        D0 1B         BNE CODE_13F73E           
CODE_13F723:        AD 5A 02      LDA $025A                 
CODE_13F726:        C9 FF         CMP #$FF                  
CODE_13F728:        D0 04         BNE CODE_13F72E           
CODE_13F72A:        A9 0B         LDA #$0B                  
CODE_13F72C:        80 14         BRA CODE_13F742           

CODE_13F72E:        C9 04         CMP #$04                  
CODE_13F730:        D0 04         BNE CODE_13F736           
CODE_13F732:        A9 08         LDA #$08                  
CODE_13F734:        80 0C         BRA CODE_13F742           

CODE_13F736:        C9 0C         CMP #$0C                  
CODE_13F738:        D0 08         BNE CODE_13F742           
CODE_13F73A:        A9 00         LDA #$00                  
CODE_13F73C:        80 04         BRA CODE_13F742           

CODE_13F73E:        CA            DEX                       
CODE_13F73F:        BD B9 02      LDA $02B9,x               
CODE_13F742:        8D 5A 02      STA $025A                 
CODE_13F745:        FA            PLX                       
CODE_13F746:        BD 5B 02      LDA $025B,x               
CODE_13F749:        8D 5B 02      STA $025B                 
CODE_13F74C:        6B            RTL                       

CODE_13F74D:        BD 57 02      LDA $0257,x               
CODE_13F750:        29 10         AND #$10                  
CODE_13F752:        F0 F8         BEQ CODE_13F74C           
CODE_13F754:        BD 57 02      LDA $0257,x               
CODE_13F757:        85 03         STA $03                   
CODE_13F759:        38            SEC                       
CODE_13F75A:        E5 01         SBC $01                   
CODE_13F75C:        9D 57 02      STA $0257,x               
CODE_13F75F:        22 F7 F6 13   JSL CODE_13F6F7           
CODE_13F763:        A9 0F         LDA #$0F                  
CODE_13F765:        85 E3         STA $E3                   
CODE_13F767:        A9 00         LDA #$00                  
CODE_13F769:        8D 55 02      STA $0255                 
CODE_13F76C:        C6 E3         DEC $E3                   
CODE_13F76E:        A5 E3         LDA $E3                   
CODE_13F770:        10 FA         BPL CODE_13F76C           
CODE_13F772:        A5 03         LDA $03                   
CODE_13F774:        9D 57 02      STA $0257,x               
CODE_13F777:        C6 E4         DEC $E4                   
CODE_13F779:        5C F7 F6 13   JML CODE_13F6F7           

CODE_13F77D:        AF 00 00 7F   LDA $7F0000               
CODE_13F781:        AA            TAX                       
CODE_13F782:        AD 69 02      LDA $0269                 
CODE_13F785:        85 C4         STA $C4                   
CODE_13F787:        AD 6A 02      LDA $026A                 
CODE_13F78A:        85 C5         STA $C5                   
CODE_13F78C:        AD 6B 02      LDA $026B                 
CODE_13F78F:        85 C6         STA $C6                   
CODE_13F791:        AD 5A 02      LDA $025A                 
CODE_13F794:        09 10         ORA #$10                  
CODE_13F796:        9F 02 00 7F   STA $7F0002,x             
CODE_13F79A:        E8            INX                       
CODE_13F79B:        AD 5B 02      LDA $025B                 
CODE_13F79E:        9F 02 00 7F   STA $7F0002,x             
CODE_13F7A2:        E8            INX                       
CODE_13F7A3:        A9 00         LDA #$00                  
CODE_13F7A5:        9F 02 00 7F   STA $7F0002,x             
CODE_13F7A9:        E8            INX                       
CODE_13F7AA:        A9 40         LDA #$40                  
CODE_13F7AC:        9F 02 00 7F   STA $7F0002,x             
CODE_13F7B0:        E8            INX                       
CODE_13F7B1:        9C 55 02      STZ $0255                 
CODE_13F7B4:        A9 0F         LDA #$0F                  
CODE_13F7B6:        85 E3         STA $E3                   
CODE_13F7B8:        AD DF 02      LDA $02DF                 
CODE_13F7BB:        85 00         STA $00                   
CODE_13F7BD:        AD E0 02      LDA $02E0                 
CODE_13F7C0:        85 01         STA $01                   
CODE_13F7C2:        AD E1 02      LDA $02E1                 
CODE_13F7C5:        85 02         STA $02                   
CODE_13F7C7:        AC 56 02      LDY $0256                 
CODE_13F7CA:        C2 30         REP #$30                  
CODE_13F7CC:        B7 C4         LDA [$C4],y               ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F7CE:        29 FF 00      AND #$00FF                ;  |
CODE_13F7D1:        C9 FF 00      CMP #$00FF                ;  |
CODE_13F7D4:        D0 10         BNE CODE_13F7E6           ; /
CODE_13F7D6:        AF 13 A6 13   LDA.l PNTR_13A613           ; \ Empty tile.    
CODE_13F7DA:        85 00         STA $00                   ;  | ($13A615)
CODE_13F7DC:        A9 13 00      LDA #$0013                ;  |
CODE_13F7DF:        85 02         STA $02                   ; /
CODE_13F7E1:        A0 00 00      LDY #$0000                ; Y = #$0000.
CODE_13F7E4:        80 04         BRA CODE_13F7EA           

CODE_13F7E6:        0A            ASL A                     
CODE_13F7E7:        0A            ASL A                     
CODE_13F7E8:        0A            ASL A                     
CODE_13F7E9:        A8            TAY                       
CODE_13F7EA:        AD C1 02      LDA $02C1                 
CODE_13F7ED:        29 FF 00      AND #$00FF                
CODE_13F7F0:        F0 04         BEQ CODE_13F7F6           
CODE_13F7F2:        C8            INY                       
CODE_13F7F3:        C8            INY                       
CODE_13F7F4:        C8            INY                       
CODE_13F7F5:        C8            INY                       
CODE_13F7F6:        C2 20         REP #$20                  
CODE_13F7F8:        B7 00         LDA [$00],y               
CODE_13F7FA:        9F 02 00 7F   STA $7F0002,x             
CODE_13F7FE:        E2 20         SEP #$20                  
CODE_13F800:        EE 55 02      INC $0255                 
CODE_13F803:        E8            INX                       
CODE_13F804:        E8            INX                       
CODE_13F805:        C8            INY                       
CODE_13F806:        C8            INY                       
CODE_13F807:        AD 55 02      LDA $0255                 
CODE_13F80A:        4A            LSR A                     
CODE_13F80B:        B0 E9         BCS CODE_13F7F6                   
CODE_13F80D:        EE 56 02      INC $0256                 
CODE_13F810:        E2 30         SEP #$30                  
CODE_13F812:        AD 55 02      LDA $0255                 
CODE_13F815:        C9 20         CMP #$20                  
CODE_13F817:        90 9F         BCC CODE_13F7B8           
CODE_13F819:        A9 FF         LDA #$FF                  
CODE_13F81B:        9F 02 00 7F   STA $7F0002,x             
CODE_13F81F:        8A            TXA                       
CODE_13F820:        8F 00 00 7F   STA $7F0000               
CODE_13F824:        80 3C         BRA CODE_13F862           

CODE_13F826:        A5 E4         LDA $E4                   
CODE_13F828:        F0 05         BEQ CODE_13F82F           
CODE_13F82A:        C6 E4         DEC $E4                   
CODE_13F82C:        4C 37 F8      JMP CODE_13F837           

CODE_13F82F:        A5 D8         LDA $D8                   
CODE_13F831:        4A            LSR A                     
CODE_13F832:        B0 03         BCS CODE_13F837                   
CODE_13F834:        4C 37 F8      JMP CODE_13F837
           
CODE_13F837:        A2 00         LDX #$00                  
CODE_13F839:        A5 D8         LDA $D8                   
CODE_13F83B:        4A            LSR A                     
CODE_13F83C:        90 14         BCC CODE_13F852           
CODE_13F83E:        E8            INX                       
CODE_13F83F:        BD 58 02      LDA $0258,x               
CODE_13F842:        29 F0         AND #$F0                  
CODE_13F844:        C9 E0         CMP #$E0                  
CODE_13F846:        F0 07         BEQ CODE_13F84F           
CODE_13F848:        BD 58 02      LDA $0258,x               
CODE_13F84B:        29 10         AND #$10                  
CODE_13F84D:        D0 13         BNE CODE_13F862           
CODE_13F84F:        4C 62 F8      JMP CODE_13F862           

CODE_13F852:        BD 58 02      LDA $0258,x               
CODE_13F855:        29 F0         AND #$F0                  
CODE_13F857:        C9 E0         CMP #$E0                  
CODE_13F859:        F0 07         BEQ CODE_13F862           
CODE_13F85B:        BD 58 02      LDA $0258,x               
CODE_13F85E:        29 10         AND #$10                  
CODE_13F860:        F0 00         BEQ CODE_13F862           
CODE_13F862:        AD C1 02      LDA $02C1                 
CODE_13F865:        49 01         EOR #$01                  
CODE_13F867:        8D C1 02      STA $02C1                 
CODE_13F86A:        6B            RTL                       

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

CODE_13F900:        8A            TXA
CODE_13F901:        48            PHA
CODE_13F902:        A9 00         LDA #$00
CODE_13F904:        85 00         STA $00
CODE_13F906:        85 01         STA $01
CODE_13F908:        B9 0E CB      LDA.w DATA_11CB0E,y
CODE_13F90B:        10 02         BPL CODE_13F90F
CODE_13F90D:        C6 00         DEC $00
CODE_13F90F:        18            CLC
CODE_13F910:        75 28         ADC $28,x                 
CODE_13F912:        29 F0         AND #$F0                  
CODE_13F914:        85 05         STA $05                   
CODE_13F916:        08            PHP                       
CODE_13F917:        4A            LSR A                     
CODE_13F918:        4A            LSR A                     
CODE_13F919:        4A            LSR A                     
CODE_13F91A:        4A            LSR A                     
CODE_13F91B:        85 E5         STA $E5                   
CODE_13F91D:        28            PLP                       
CODE_13F91E:        B5 14         LDA $14,x                 
CODE_13F920:        65 00         ADC $00                   
CODE_13F922:        85 02         STA $02                   
CODE_13F924:        85 03         STA $03                   
CODE_13F926:        A5 EB         LDA $EB                   
CODE_13F928:        D0 04         BNE CODE_13F92E           
CODE_13F92A:        85 02         STA $02                   
CODE_13F92C:        85 03         STA $03                   
CODE_13F92E:        B9 56 CB      LDA.w DATA_11CB56,y               
CODE_13F931:        10 02         BPL CODE_13F935           
CODE_13F933:        C6 01         DEC $01                   
CODE_13F935:        18            CLC                       
CODE_13F936:        75 32         ADC $32,x                 
CODE_13F938:        29 F0         AND #$F0                  
CODE_13F93A:        85 06         STA $06                   
CODE_13F93C:        85 E6         STA $E6                   
CODE_13F93E:        B5 1E         LDA $1E,x                 
CODE_13F940:        65 01         ADC $01                   
CODE_13F942:        85 01         STA $01                   
CODE_13F944:        85 04         STA $04                   
CODE_13F946:        20 EE F9      JSR CODE_13F9EE           
CODE_13F949:        90 04         BCC CODE_13F94F           
CODE_13F94B:        A9 00         LDA #$00                  
CODE_13F94D:        F0 48         BEQ CODE_13F997           
CODE_13F94F:        A6 0D         LDX $0D                   
CODE_13F951:        8E 0F 07      STX $070F                 
CODE_13F954:        A6 0E         LDX $0E                   
CODE_13F956:        8E 10 07      STX $0710                 
CODE_13F959:        A6 0F         LDX $0F                   
CODE_13F95B:        8E 11 07      STX $0711                 
CODE_13F95E:        A6 03         LDX $03                   
CODE_13F960:        DA            PHX                       
CODE_13F961:        20 5C FA      JSR CODE_13FA5C           
CODE_13F964:        C2 20         REP #$20                  
CODE_13F966:        A5 01         LDA $01                   
CODE_13F968:        18            CLC                       
CODE_13F969:        69 00 70      ADC #$7000                
CODE_13F96C:        85 0D         STA $0D                   
CODE_13F96E:        E2 20         SEP #$20                  
CODE_13F970:        A5 03         LDA $03                   
CODE_13F972:        85 0F         STA $0F                   
CODE_13F974:        A4 E7         LDY $E7                   ; Get index (position) to the corresponding Map16 tile.
CODE_13F976:        B7 0D         LDA [$0D],y               ; \ If Map16 page 0, branch.
CODE_13F978:        F0 09         BEQ CODE_13F983           ; /
CODE_13F97A:        B7 01         LDA [$01],y               ; \ All tiles on page 1 must act like...
CODE_13F97C:        AA            TAX                       ;  |
CODE_13F97D:        BF BD CC 14   LDA.l DATA_14CCBD,x         ;  | $2C, $40, $AB or $C0...
CODE_13F981:        80 02         BRA CODE_13F985           ; / from page 0.

CODE_13F983:        B7 01         LDA [$01],y               ; This is for page 0, just act what it's supposed to act like.
CODE_13F985:        FA            PLX                       ; Pull X index back.
CODE_13F986:        86 03         STX $03                   
CODE_13F988:        AE 0F 07      LDX $070F                 
CODE_13F98B:        86 0D         STX $0D                   
CODE_13F98D:        AE 10 07      LDX $0710                 
CODE_13F990:        86 0E         STX $0E                   
CODE_13F992:        AE 11 07      LDX $0711                 
CODE_13F995:        86 0F         STX $0F                   
CODE_13F997:        85 00         STA $00                   ; Map16 tile 'acts like'.
CODE_13F999:        68            PLA                       
CODE_13F99A:        AA            TAX                       
CODE_13F99B:        6B            RTL                       

CODE_13F99C:        48            PHA                       
CODE_13F99D:        29 C0         AND #$C0                  
CODE_13F99F:        0A            ASL A                     
CODE_13F9A0:        2A            ROL A                     
CODE_13F9A1:        2A            ROL A                     
CODE_13F9A2:        79 9C 9B      ADC.w DATA_119B9C,y               
CODE_13F9A5:        A8            TAY                       
CODE_13F9A6:        68            PLA                       
CODE_13F9A7:        D9 A8 CD      CMP.w DATA_11CDA8,y               
CODE_13F9AA:        6B            RTL                       

CODE_13F9AB:        EE BE 04      INC $04BE                 
CODE_13F9AE:        EE 1B 04      INC $041B                 
CODE_13F9B1:        22 BC 87 12   JSL CODE_1287BC           
CODE_13F9B5:        A9 01         LDA #$01                  
CODE_13F9B7:        8D 01 06      STA $0601                 
CODE_13F9BA:        6B            RTL                       

CODE_13F9BB:        A2 00         LDX #$00                  
CODE_13F9BD:        A4 6E         LDY $6E                   
CODE_13F9BF:        A5 3C         LDA $3C                   
CODE_13F9C1:        59 BA 9B      EOR.w DATA_119BBA,y               
CODE_13F9C4:        10 02         BPL CODE_13F9C8           
CODE_13F9C6:        86 3C         STX $3C                   
CODE_13F9C8:        AD CC 04      LDA $04CC                 
CODE_13F9CB:        59 BA 9B      EOR.w DATA_119BBA,y               
CODE_13F9CE:        10 03         BPL CODE_13F9D3           
CODE_13F9D0:        8E CC 04      STX $04CC                 
CODE_13F9D3:        8E 07 04      STX $0407                 
CODE_13F9D6:        6B            RTL                       

CODE_13F9D7:        A9 02         LDA #$02                  ; \ Pick something up animation.
CODE_13F9D9:        85 50         STA $50                   ; /
CODE_13F9DB:        9C 8C 07      STZ $078C                 
CODE_13F9DE:        A9 06         LDA #$06                  ; \ Amount of frames it should take to pick the enemy up.
CODE_13F9E0:        85 82         STA $82                   ; /
CODE_13F9E2:        A9 08         LDA #$08                  
CODE_13F9E4:        85 C7         STA $C7                   
CODE_13F9E6:        E6 9C         INC $9C                   
CODE_13F9E8:        A9 3C         LDA #$3C                  ; \ Picking something up sound effect.
CODE_13F9EA:        8D E3 1D      STA $1DE3                 ; /
CODE_13F9ED:        6B            RTL                       ; Return.

CODE_13F9EE:        A4 01         LDY $01                   
CODE_13F9F0:        A5 E6         LDA $E6                   
CODE_13F9F2:        20 8F FA      JSR CODE_13FA8F           
CODE_13F9F5:        84 01         STY $01                   
CODE_13F9F7:        85 E6         STA $E6                   
CODE_13F9F9:        A4 EB         LDY $EB                   
CODE_13F9FB:        B9 01 00      LDA $0001,y               
CODE_13F9FE:        85 E9         STA $E9                   
CODE_13FA00:        A5 02         LDA $02                   
CODE_13FA02:        D9 B7 9B      CMP.w DATA_119BB7,y               
CODE_13FA05:        B0 05         BCS CODE_13FA0C                   
CODE_13FA07:        A5 01         LDA $01                   
CODE_13FA09:        D9 B6 9B      CMP.w DATA_119BB6,y               
CODE_13FA0C:        60            RTS                       

CODE_13FA0D:        48            PHA                       
CODE_13FA0E:        B5 29         LDA $29,x                 
CODE_13FA10:        18            CLC                       
CODE_13FA11:        69 08         ADC #$08                  
CODE_13FA13:        08            PHP                       
CODE_13FA14:        4A            LSR A                     
CODE_13FA15:        4A            LSR A                     
CODE_13FA16:        4A            LSR A                     
CODE_13FA17:        4A            LSR A                     
CODE_13FA18:        85 E5         STA $E5                   
CODE_13FA1A:        28            PLP                       
CODE_13FA1B:        B5 15         LDA $15,x                 
CODE_13FA1D:        A4 EB         LDY $EB                   
CODE_13FA1F:        F0 02         BEQ CODE_13FA23           
CODE_13FA21:        69 00         ADC #$00                  
CODE_13FA23:        85 02         STA $02                   
CODE_13FA25:        B5 33         LDA $33,x                 
CODE_13FA27:        18            CLC                       
CODE_13FA28:        69 08         ADC #$08                  
CODE_13FA2A:        29 F0         AND #$F0                  
CODE_13FA2C:        85 E6         STA $E6                   
CODE_13FA2E:        8D 12 02      STA $0212                 
CODE_13FA31:        B5 1F         LDA $1F,x                 
CODE_13FA33:        69 00         ADC #$00                  
CODE_13FA35:        85 01         STA $01                   
CODE_13FA37:        20 EE F9      JSR CODE_13F9EE           
CODE_13FA3A:        68            PLA                       
CODE_13FA3B:        B0 04         BCS CODE_13FA41                   
CODE_13FA3D:        22 F4 8B 12   JSL CODE_128BF4           
CODE_13FA41:        6B            RTL                       

CODE_13FA42:        AD 28 06      LDA $0628                 
CODE_13FA45:        D0 14         BNE CODE_13FA5B           
CODE_13FA47:        A5 14         LDA $14                   
CODE_13FA49:        8D 11 05      STA $0511                 
CODE_13FA4C:        A5 28         LDA $28                   
CODE_13FA4E:        8D 13 05      STA $0513                 
CODE_13FA51:        A5 1E         LDA $1E                   
CODE_13FA53:        8D 12 05      STA $0512                 
CODE_13FA56:        A5 32         LDA $32                   
CODE_13FA58:        8D 14 05      STA $0514                 
CODE_13FA5B:        6B            RTL                       

CODE_13FA5C:        A6 E9         LDX $E9                   
CODE_13FA5E:        20 69 FA      JSR CODE_13FA69           
CODE_13FA61:        A5 E6         LDA $E6                   
CODE_13FA63:        18            CLC                       
CODE_13FA64:        65 E5         ADC $E5                   
CODE_13FA66:        85 E7         STA $E7                   
CODE_13FA68:        60            RTS                       

CODE_13FA69:        8C F5 02      STY $02F5                 
CODE_13FA6C:        AD 28 06      LDA $0628                 
CODE_13FA6F:        F0 04         BEQ CODE_13FA75           
CODE_13FA71:        A9 00         LDA #$00                  
CODE_13FA73:        80 06         BRA CODE_13FA7B           

CODE_13FA75:        AC 34 05      LDY $0534                 
CODE_13FA78:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_13FA7B:        18            CLC                       
CODE_13FA7C:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_13FA7F:        85 02         STA $02                   
CODE_13FA81:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_13FA84:        85 01         STA $01                   
CODE_13FA86:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_13FA89:        85 03         STA $03                   
CODE_13FA8B:        AC F5 02      LDY $02F5                 
CODE_13FA8E:        60            RTS                       

CODE_13FA8F:        85 0F         STA $0F                   
CODE_13FA91:        98            TYA                       
CODE_13FA92:        30 11         BMI CODE_13FAA5           
CODE_13FA94:        0A            ASL A                     
CODE_13FA95:        0A            ASL A                     
CODE_13FA96:        0A            ASL A                     
CODE_13FA97:        0A            ASL A                     
CODE_13FA98:        18            CLC                       
CODE_13FA99:        65 0F         ADC $0F                   
CODE_13FA9B:        B0 04         BCS CODE_13FAA1                   
CODE_13FA9D:        C9 F0         CMP #$F0                  
CODE_13FA9F:        90 04         BCC CODE_13FAA5           
CODE_13FAA1:        18            CLC                       
CODE_13FAA2:        69 10         ADC #$10                  
CODE_13FAA4:        C8            INY                       
CODE_13FAA5:        60            RTS                       

CODE_13FAA6:        B9 05 00      LDA $0005,y               
CODE_13FAA9:        38            SEC                       
CODE_13FAAA:        F9 06 00      SBC $0006,y               
CODE_13FAAD:        10 06         BPL CODE_13FAB5           
CODE_13FAAF:        49 FF         EOR #$FF                  
CODE_13FAB1:        18            CLC                       
CODE_13FAB2:        69 01         ADC #$01                  
CODE_13FAB4:        CA            DEX                       
CODE_13FAB5:        38            SEC                       
CODE_13FAB6:        F5 09         SBC $09,x                 
CODE_13FAB8:        60            RTS                       

CODE_13FAB9:        B9 05 00      LDA $0005,y               
CODE_13FABC:        38            SEC                       
CODE_13FABD:        F9 06 00      SBC $0006,y               
CODE_13FAC0:        99 06 00      STA $0006,y               
CODE_13FAC3:        B9 01 00      LDA $0001,y               
CODE_13FAC6:        F9 02 00      SBC $0002,y               
CODE_13FAC9:        10 12         BPL CODE_13FADD           
CODE_13FACB:        49 FF         EOR #$FF                  
CODE_13FACD:        48            PHA                       
CODE_13FACE:        B9 06 00      LDA $0006,y               
CODE_13FAD1:        49 FF         EOR #$FF                  
CODE_13FAD3:        18            CLC                       
CODE_13FAD4:        69 01         ADC #$01                  
CODE_13FAD6:        99 06 00      STA $0006,y               
CODE_13FAD9:        68            PLA                       
CODE_13FADA:        69 00         ADC #$00                  
CODE_13FADC:        CA            DEX                       
CODE_13FADD:        C9 00         CMP #$00                  
CODE_13FADF:        F0 02         BEQ CODE_13FAE3           
CODE_13FAE1:        38            SEC                       
CODE_13FAE2:        60            RTS                       

CODE_13FAE3:        B9 06 00      LDA $0006,y               
CODE_13FAE6:        F5 09         SBC $09,x                 
CODE_13FAE8:        60            RTS                       

CODE_13FAE9:        8A            TXA                       
CODE_13FAEA:        48            PHA                       
CODE_13FAEB:        A0 02         LDY #$02                  
CODE_13FAED:        98            TYA                       
CODE_13FAEE:        AA            TAX                       
CODE_13FAEF:        E8            INX                       
CODE_13FAF0:        C0 00         CPY #$00                  
CODE_13FAF2:        D0 09         BNE CODE_13FAFD           
CODE_13FAF4:        A5 EB         LDA $EB                   
CODE_13FAF6:        D0 05         BNE CODE_13FAFD           
CODE_13FAF8:        20 A6 FA      JSR CODE_13FAA6           
CODE_13FAFB:        80 03         BRA CODE_13FB00           

CODE_13FAFD:        20 B9 FA      JSR CODE_13FAB9           
CODE_13FB00:        B0 0D         BCS CODE_13FB0F                   
CODE_13FB02:        48            PHA                       
CODE_13FB03:        98            TYA                       
CODE_13FB04:        4A            LSR A                     
CODE_13FB05:        AA            TAX                       
CODE_13FB06:        68            PLA                       
CODE_13FB07:        9D 26 04      STA $0426,x               
CODE_13FB0A:        88            DEY                       
CODE_13FB0B:        88            DEY                       
CODE_13FB0C:        10 DF         BPL CODE_13FAED           
CODE_13FB0E:        18            CLC                       
CODE_13FB0F:        68            PLA                       
CODE_13FB10:        AA            TAX                       
CODE_13FB11:        6B            RTL                       

CODE_13FB12:        AD C7 04      LDA $04C7                 
CODE_13FB15:        F0 30         BEQ CODE_13FB47           
CODE_13FB17:        CE C7 04      DEC $04C7                 
CODE_13FB1A:        C2 20         REP #$20                  
CODE_13FB1C:        AC C7 04      LDY $04C7                 
CODE_13FB1F:        D0 0C         BNE CODE_13FB2D           
CODE_13FB21:        98            TYA                       
CODE_13FB22:        29 03 00      AND #$0003                
CODE_13FB25:        AA            TAX                       
CODE_13FB26:        BF 7B AB 11   LDA.l DATA_11AB7B,x             
CODE_13FB2A:        9B            TXY                       
CODE_13FB2B:        80 03         BRA CODE_13FB30           

CODE_13FB2D:        AD BC 04      LDA $04BC                 
CODE_13FB30:        8D 00 0C      STA $0C00                 
CODE_13FB33:        B9 D1 12      LDA $12D1,y               
CODE_13FB36:        8D 02 0C      STA $0C02                 
CODE_13FB39:        B9 D2 12      LDA $12D2,y               
CODE_13FB3C:        8D 04 0C      STA $0C04                 
CODE_13FB3F:        B9 D3 12      LDA $12D3,y               
CODE_13FB42:        8D 06 0C      STA $0C06                 
CODE_13FB45:        E2 20         SEP #$20                  
CODE_13FB47:        A9 28         LDA #$28                  
CODE_13FB49:        85 00         STA $00                   
CODE_13FB4B:        AD C3 04      LDA $04C3                 
CODE_13FB4E:        F0 06         BEQ CODE_13FB56           
CODE_13FB50:        29 F0         AND #$F0                  
CODE_13FB52:        4A            LSR A                     
CODE_13FB53:        4A            LSR A                     
CODE_13FB54:        69 04         ADC #$04                  
CODE_13FB56:        AA            TAX                       
CODE_13FB57:        A0 00         LDY #$00                  
CODE_13FB59:        A9 FE         LDA #$FE                  
CODE_13FB5B:        85 03         STA $03                   
CODE_13FB5D:        BF 63 AB 11   LDA.l DATA_11AB63,x             
CODE_13FB61:        99 02 08      STA $0802,y               
CODE_13FB64:        99 06 08      STA $0806,y               
CODE_13FB67:        A9 08         LDA #$08                  
CODE_13FB69:        99 00 08      STA $0800,y               
CODE_13FB6C:        BF 63 AB 11   LDA.l DATA_11AB63,x             
CODE_13FB70:        29 02         AND #$02                  
CODE_13FB72:        49 02         EOR #$02                  
CODE_13FB74:        18            CLC                       
CODE_13FB75:        69 32         ADC #$32                  
CODE_13FB77:        99 03 08      STA $0803,y               
CODE_13FB7A:        A5 00         LDA $00                   
CODE_13FB7C:        99 01 08      STA $0801,y               
CODE_13FB7F:        18            CLC                       
CODE_13FB80:        69 10         ADC #$10                  
CODE_13FB82:        85 00         STA $00                   
CODE_13FB84:        5A            PHY                       
CODE_13FB85:        98            TYA                       
CODE_13FB86:        4A            LSR A                     
CODE_13FB87:        4A            LSR A                     
CODE_13FB88:        A8            TAY                       
CODE_13FB89:        A9 02         LDA #$02                  
CODE_13FB8B:        99 20 0A      STA $0A20,y               
CODE_13FB8E:        7A            PLY                       
CODE_13FB8F:        98            TYA                       
CODE_13FB90:        18            CLC                       
CODE_13FB91:        69 04         ADC #$04                  
CODE_13FB93:        A8            TAY                       
CODE_13FB94:        E8            INX                       
CODE_13FB95:        E6 03         INC $03                   
CODE_13FB97:        A5 03         LDA $03                   
CODE_13FB99:        CD C4 04      CMP $04C4                 
CODE_13FB9C:        D0 BF         BNE CODE_13FB5D           
CODE_13FB9E:        AD C5 04      LDA $04C5                 
CODE_13FBA1:        F0 1E         BEQ CODE_13FBC1           
CODE_13FBA3:        CE C5 04      DEC $04C5                 
CODE_13FBA6:        4A            LSR A                     
CODE_13FBA7:        29 01         AND #$01                  
CODE_13FBA9:        A8            TAY                       
CODE_13FBAA:        AD 06 02      LDA $0206                 
CODE_13FBAD:        10 02         BPL CODE_13FBB1           
CODE_13FBAF:        C8            INY                       
CODE_13FBB0:        C8            INY                       
CODE_13FBB1:        8B            PHB                       
CODE_13FBB2:        A9 11         LDA #$11                  
CODE_13FBB4:        48            PHA                       
CODE_13FBB5:        AB            PLB                       
CODE_13FBB6:        B9 77 AB      LDA.w DATA_11AB77,y               
CODE_13FBB9:        8D C6 04      STA $04C6                 
CODE_13FBBC:        AB            PLB                       
CODE_13FBBD:        22 AE BA 12   JSL CODE_12BAAE           
CODE_13FBC1:        6B            RTL                       

CODE_13FBC2:        DA            PHX                       ; Preserve sprite index.
CODE_13FBC3:        AE 28 06      LDX $0628                 ; \ Don't flash colours if in potion room.
CODE_13FBC6:        E0 02         CPX #$02                  ;  |
CODE_13FBC8:        F0 50         BEQ CODE_13FC1A           ; /
CODE_13FBCA:        C2 20         REP #$20                  ; A = 16-bit
CODE_13FBCC:        29 FF 00      AND #$00FF                ; \ If value is zero...
CODE_13FBCF:        F0 0E         BEQ CODE_13FBDF           ; / branch.
CODE_13FBD1:        A5 10         LDA $10                   ; \ Flash through 4 different colours...
CODE_13FBD3:        29 03 00      AND #$0003                ;  | <--
CODE_13FBD6:        AA            TAX                       ;  |
CODE_13FBD7:        BD 83 AB      LDA.w DATA_11AB83,x         ;  | Apparently, the 16-bit colour values interfer with eachother (no ASL is included, table is not 8 bytes long but only 5 bytes)
CODE_13FBDA:        8D 00 0B      STA $0B00                 ;  | This may complicate hex editing the colours to your likings.
CODE_13FBDD:        80 0E         BRA CODE_13FBED           ; /

CODE_13FBDF:        9C 00 0B      STZ $0B00                 ; No flashing BG colour.
CODE_13FBE2:        AD EF 04      LDA $04EF                 
CODE_13FBE5:        29 FF 00      AND #$00FF                
CODE_13FBE8:        D0 32         BNE CODE_13FC1C           
CODE_13FBEA:        AD BC 04      LDA $04BC                 
CODE_13FBED:        8D 12 07      STA $0712                 
CODE_13FBF0:        4A            LSR A                     
CODE_13FBF1:        4A            LSR A                     
CODE_13FBF2:        4A            LSR A                     
CODE_13FBF3:        4A            LSR A                     
CODE_13FBF4:        4A            LSR A                     
CODE_13FBF5:        29 1F 00      AND #$001F                
CODE_13FBF8:        E2 20         SEP #$20                  
CODE_13FBFA:        09 40         ORA #$40                  
CODE_13FBFC:        8D 3E 02      STA $023E                 
CODE_13FBFF:        AD 12 07      LDA $0712                 
CODE_13FC02:        29 1F         AND #$1F                  
CODE_13FC04:        09 20         ORA #$20                  
CODE_13FC06:        8D 3D 02      STA $023D                 
CODE_13FC09:        AD 13 07      LDA $0713                 
CODE_13FC0C:        4A            LSR A                     
CODE_13FC0D:        4A            LSR A                     
CODE_13FC0E:        29 1F         AND #$1F                  
CODE_13FC10:        09 80         ORA #$80                  
CODE_13FC12:        8D 3F 02      STA $023F                 
CODE_13FC15:        A9 01         LDA #$01                  ; \ Update palettes.
CODE_13FC17:        8D A9 02      STA $02A9                 ; /
CODE_13FC1A:        FA            PLX                       ; Pull sprite index.
CODE_13FC1B:        6B            RTL                       ; Return.

CODE_13FC1C:        AD BC 04      LDA $04BC                 
CODE_13FC1F:        8D 00 0B      STA $0B00                 
CODE_13FC22:        E2 20         SEP #$20                  
CODE_13FC24:        A2 0A         LDX #$0A                  
CODE_13FC26:        AD 33 05      LDA $0533                 
CODE_13FC29:        C9 05         CMP #$05                  
CODE_13FC2B:        F0 18         BEQ CODE_13FC45           
CODE_13FC2D:        C9 0F         CMP #$0F                  
CODE_13FC2F:        D0 16         BNE CODE_13FC47           
CODE_13FC31:        AD 34 05      LDA $0534                 
CODE_13FC34:        C9 05         CMP #$05                  
CODE_13FC36:        F0 0D         BEQ CODE_13FC45           
CODE_13FC38:        C9 03         CMP #$03                  
CODE_13FC3A:        F0 09         BEQ CODE_13FC45           
CODE_13FC3C:        C9 04         CMP #$04                  
CODE_13FC3E:        D0 07         BNE CODE_13FC47           
CODE_13FC40:        AD 1B 05      LDA $051B                 
CODE_13FC43:        F0 02         BEQ CODE_13FC47           
CODE_13FC45:        A2 05         LDX #$05                  
CODE_13FC47:        8A            TXA                       
CODE_13FC48:        09 20         ORA #$20                  
CODE_13FC4A:        8D 3D 02      STA $023D                 
CODE_13FC4D:        8A            TXA                       
CODE_13FC4E:        09 40         ORA #$40                  
CODE_13FC50:        8D 3E 02      STA $023E                 
CODE_13FC53:        8A            TXA                       
CODE_13FC54:        09 80         ORA #$80                  
CODE_13FC56:        8D 3F 02      STA $023F                 
CODE_13FC59:        80 BA         BRA CODE_13FC15           ; Update palettes and return appropiately.

CODE_13FC5B:        C2 30         REP #$30                  
CODE_13FC5D:        A0 20 01      LDY #$0120                
CODE_13FC60:        B9 01 08      LDA $0801,y               
CODE_13FC63:        29 FF 00      AND #$00FF                
CODE_13FC66:        C9 F0 00      CMP #$00F0                
CODE_13FC69:        D0 0B         BNE CODE_13FC76           
CODE_13FC6B:        B9 05 08      LDA $0805,y               
CODE_13FC6E:        29 FF 00      AND #$00FF                
CODE_13FC71:        C9 F0 00      CMP #$00F0                
CODE_13FC74:        F0 0B         BEQ CODE_13FC81           
CODE_13FC76:        98            TYA                       
CODE_13FC77:        18            CLC                       
CODE_13FC78:        69 04 00      ADC #$0004                
CODE_13FC7B:        A8            TAY                       
CODE_13FC7C:        C0 C0 01      CPY #$01C0                
CODE_13FC7F:        D0 DF         BNE CODE_13FC60           
CODE_13FC81:        8C F8 02      STY $02F8                 
CODE_13FC84:        E2 30         SEP #$30                  
CODE_13FC86:        A6 12         LDX $12                   
CODE_13FC88:        6B            RTL                       

CODE_13FC89:        AC 33 05      LDY $0533                 ; \ Get level + room number into X index.
CODE_13FC8C:        B9 98 D0      LDA.w DATA_11D098,y         ;  | 
CODE_13FC8F:        18            CLC                       ;  |
CODE_13FC90:        6D 34 05      ADC $0534                 ;  |
CODE_13FC93:        AA            TAX                       ;  |
CODE_13FC94:        BF 52 CF 11   LDA.l DATA_11CF52,x         ;  | Check HDMA BG table. 
CODE_13FC98:        C9 FF         CMP #$FF                  ;  | If value = $FF, don't load a HDMA BG.
CODE_13FC9A:        F0 04         BEQ CODE_13FCA0           ; /
CODE_13FC9C:        22 E8 FA 14   JSL CODE_14FAE8           ; Load HDMA BG.
CODE_13FCA0:        6B            RTL                       ; Return.

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
