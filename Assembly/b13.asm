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
                   
CODE_138062:    REP #$20                ; $13:8062: C2 20       ; Accumulator = 16-bit.           
CODE_138064:    LDA.w #DATA_19E000      ; $13:8064: A9 00 E0    ; \ Load sprite GFX tiles 00-7F. (00-1F will get overwritten)
CODE_138067:    STA $0D                 ; $13:8067: 85 0D       ;  | ($19E000)
CODE_138069:    LDX.b #DATA_19E000>>16  ; $13:8069: A2 19       ;  |
CODE_13806B:    STX $0F                 ; $13:806B: 86 0F       ; /
CODE_13806D:    LDA #$1000              ; $13:806D: A9 00 10    ; \ Amount of bytes to transfer = #$1000. 
CODE_138070:    STA $0B                 ; $13:8070: 85 0B       ; /
CODE_138072:    LDA #$6000              ; $13:8072: A9 00 60    ; \ First GFX slot. 
CODE_138075:    JSR CODE_138AE7         ; $13:8075: 20 E7 8A    ; / Transfer to VRAM.
CODE_138078:    LDA.w #DATA_16C000      ; $13:8078: A9 00 C0    ; \ Load sprite GFX tiles 80-13F.
CODE_13807B:    STA $0D                 ; $13:807B: 85 0D       ;  | ($16C000)
CODE_13807D:    LDX.b #DATA_16C000>>16  ; $13:807D: A2 16       ;  |
CODE_13807F:    STX $0F                 ; $13:807F: 86 0F       ; /
CODE_138081:    LDA #$1800              ; $13:8081: A9 00 18    ; \ Amount of bytes to transfer = #$1800. 
CODE_138084:    STA $0B                 ; $13:8084: 85 0B       ; /
CODE_138086:    LDA #$6800              ; $13:8086: A9 00 68    ; \ Second and first half of third GFX slots. 
CODE_138089:    JSR CODE_138AE7         ; $13:8089: 20 E7 8A    ; / Transfer to VRAM.
CODE_13808C:    LDA $0635               ; $13:808C: AD 35 06    ; \ Get world number into Y, *2 into X index.
CODE_13808F:    AND #$00FF              ; $13:808F: 29 FF 00    ;  |
CODE_138092:    TAY                     ; $13:8092: A8          ;  |
CODE_138093:    ASL A                   ; $13:8093: 0A          ;  |
CODE_138094:    TAX                     ; $13:8094: AA          ; /
CODE_138095:    PHX                     ; $13:8095: DA          ; Hold X to get later. 
CODE_138096:    LDA.l DATA_138000,x     ; $13:8096: BF 00 80 13 ; \ Load sprite GFX tiles 140-17F from pointer.
CODE_13809A:    STA $0D                 ; $13:809A: 85 0D       ;  |
CODE_13809C:    TYX                     ; $13:809C: BB          ;  |
CODE_13809D:    LDA.l DATA_13800E,x     ; $13:809D: BF 0E 80 13 ;  |     
CODE_1380A1:    TAX                     ; $13:80A1: AA          ;  |
CODE_1380A2:    STX $0F                 ; $13:80A2: 86 0F       ; /
CODE_1380A4:    LDA #$0800              ; $13:80A4: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_1380A7:    STA $0B                 ; $13:80A7: 85 0B       ; /
CODE_1380A9:    LDA #$7400              ; $13:80A9: A9 00 74    ; \ Second half of third GFX slot. 
CODE_1380AC:    JSR CODE_138AE7         ; $13:80AC: 20 E7 8A    ; / Transfer to VRAM.
CODE_1380AF:    PLX                     ; $13:80AF: FA          ; \ Get world number * 2 back.
CODE_1380B0:    PHX                     ; $13:80B0: DA          ; /
CODE_1380B1:    LDA.l DATA_138015,x     ; $13:80B1: BF 15 80 13 ; \ Load sprite GFX tiles 180-1BF from pointer.
CODE_1380B5:    STA $0D                 ; $13:80B5: 85 0D       ;  |
CODE_1380B7:    TYX                     ; $13:80B7: BB          ;  |
CODE_1380B8:    LDA.l DATA_138023,x     ; $13:80B8: BF 23 80 13 ;  |     
CODE_1380BC:    TAX                     ; $13:80BC: AA          ;  |
CODE_1380BD:    STX $0F                 ; $13:80BD: 86 0F       ; /
CODE_1380BF:    LDA #$0800              ; $13:80BF: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
CODE_1380C2:    STA $0B                 ; $13:80C2: 85 0B       ; /
CODE_1380C4:    LDA #$7800              ; $13:80C4: A9 00 78    ; \ First half of fourth GFX slot. 
CODE_1380C7:    JSR CODE_138AE7         ; $13:80C7: 20 E7 8A    ; / Transfer to VRAM.
CODE_1380CA:    LDA.w #DATA_179000      ; $13:80CA: A9 00 90    ; \ Load sprite GFX tiles 1C0-1FF.
CODE_1380CD:    STA $0D                 ; $13:80CD: 85 0D       ;  | ($179000)
CODE_1380CF:    LDX.b #DATA_179000>>16  ; $13:80CF: A2 17       ;  |
CODE_1380D1:    STX $0F                 ; $13:80D1: 86 0F       ; /
CODE_1380D3:    LDA #$0800              ; $13:80D3: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
CODE_1380D6:    STA $0B                 ; $13:80D6: 85 0B       ; /
CODE_1380D8:    LDA #$7C00              ; $13:80D8: A9 00 7C    ; \ Second half of fourth GFX slot. 
CODE_1380DB:    JSR CODE_138AE7         ; $13:80DB: 20 E7 8A    ; / Transfer to VRAM.
CODE_1380DE:    PLX                     ; $13:80DE: FA          ; \ Get world number * 2 back.
CODE_1380DF:    PHX                     ; $13:80DF: DA          ; /
CODE_1380E0:    LDA.l DATA_138038,x     ; $13:80E0: BF 38 80 13 ; \ Load layer GFX tiles 00-7F from pointer.      
CODE_1380E4:    STA $0D                 ; $13:80E4: 85 0D       ;  |
CODE_1380E6:    TYX                     ; $13:80E6: BB          ;  |
CODE_1380E7:    LDA.l DATA_138046,x     ; $13:80E7: BF 46 80 13 ;  |     
CODE_1380EB:    TAX                     ; $13:80EB: AA          ;  |
CODE_1380EC:    STX $0F                 ; $13:80EC: 86 0F       ; /
CODE_1380EE:    LDA #$1000              ; $13:80EE: A9 00 10    ; \ Amount of bytes to transfer = #$1000.
CODE_1380F1:    STA $0B                 ; $13:80F1: 85 0B       ; /
CODE_1380F3:    LDA #$2000              ; $13:80F3: A9 00 20    ; \ First GFX slot.
CODE_1380F6:    JSR CODE_138AC4         ; $13:80F6: 20 C4 8A    ; / Transfer to VRAM.
CODE_1380F9:    LDA.w #DATA_18C000      ; $13:80F9: A9 00 C0    ; \ Load layer GFX tiles 80-BF.
CODE_1380FC:    STA $0D                 ; $13:80FC: 85 0D       ;  | ($18C000)
CODE_1380FE:    LDX.b #DATA_18C000>>16  ; $13:80FE: A2 18       ;  |
CODE_138100:    STX $0F                 ; $13:8100: 86 0F       ; /
CODE_138102:    LDA #$0800              ; $13:8102: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
CODE_138105:    STA $0B                 ; $13:8105: 85 0B       ; /
CODE_138107:    LDA #$2800              ; $13:8107: A9 00 28    ; \ First half of second GFX slot.
CODE_13810A:    JSR CODE_138AC4         ; $13:810A: 20 C4 8A    ; / Transfer to VRAM.
CODE_13810D:    PLX                     ; $13:810D: FA          ; Get world num * 2. 
CODE_13810E:    LDA.l DATA_13804D,x     ; $13:810E: BF 4D 80 13 ; \ Load layer GFX tiles C0-FF from pointer.
CODE_138112:    STA $0D                 ; $13:8112: 85 0D       ;  |
CODE_138114:    TYX                     ; $13:8114: BB          ;  |
CODE_138115:    LDA.l DATA_13805B,x     ; $13:8115: BF 5B 80 13 ;  |     
CODE_138119:    TAX                     ; $13:8119: AA          ;  |
CODE_13811A:    STX $0F                 ; $13:811A: 86 0F       ; /
CODE_13811C:    LDA #$0800              ; $13:811C: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
CODE_13811F:    STA $0B                 ; $13:811F: 85 0B       ; /
CODE_138121:    LDA #$2C00              ; $13:8121: A9 00 2C    ; \ Second half of second GFX slot.
CODE_138124:    JSR CODE_138AC4         ; $13:8124: 20 C4 8A    ; / Transfer to VRAM.
CODE_138127:    SEP #$20                ; $13:8127: E2 20       ; Accumulator = 8-bit.
CODE_138129:    RTL                     ; $13:8129: 6B          ; Return.

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

CODE_1385DA:    LDA $0770               ; $13:85DA: AD 70 07    ;
CODE_1385DD:    BEQ CODE_1385E3             ; $13:85DD: F0 04       ;
CODE_1385DF:    LDA #$06                    ; $13:85DF: A9 06       ;
CODE_1385E1:    BRA CODE_1385E6             ; $13:85E1: 80 03       ;

CODE_1385E3:    LDA $0534               ; $13:85E3: AD 34 05    ; \ Get level + room number into index.
CODE_1385E6:    STA $00                 ; $13:85E6: 85 00       ;  |
CODE_1385E8:    STZ $01                 ; $13:85E8: 64 01       ;  |
CODE_1385EA:    REP #$30                ; $13:85EA: C2 30       ;  | Accumulator & Index = 16-bit.
CODE_1385EC:    LDA $0533               ; $13:85EC: AD 33 05    ;  |
CODE_1385EF:    AND #$00FF              ; $13:85EF: 29 FF 00    ;  |
CODE_1385F2:    TAX                     ; $13:85F2: AA          ;  |
CODE_1385F3:    LDA.l DATA_11D098,x     ; $13:85F3: BF 98 D0 11 ;  | 
CODE_1385F7:    AND #$00FF              ; $13:85F7: 29 FF 00    ;  |
CODE_1385FA:    CLC                     ; $13:85FA: 18          ;  |
CODE_1385FB:    ADC $00                 ; $13:85FB: 65 00       ;  |
CODE_1385FD:    TAX                     ; $13:85FD: AA          ; /
CODE_1385FE:    LDA.l DATA_13812A,x     ; $13:85FE: BF 2A 81 13 ; \ Tiles of the FG/BG slots 140-17F, high byte.
CODE_138602:    AND #$00FF              ; $13:8602: 29 FF 00    ;  |
CODE_138605:    XBA                     ; $13:8605: EB          ;  |
CODE_138606:    STA $02CB               ; $13:8606: 8D CB 02    ; /
CODE_138609:    LDA.l DATA_1381F2,x     ; $13:8609: BF F2 81 13 ; \ Tiles of the FG/BG slots 180-1BF, high byte.
CODE_13860D:    AND #$00FF              ; $13:860D: 29 FF 00    ;  |
CODE_138610:    XBA                     ; $13:8610: EB          ;  |
CODE_138611:    STA $02CD               ; $13:8611: 8D CD 02    ; /
CODE_138614:    LDA.l DATA_1382BA,x     ; $13:8614: BF BA 82 13 ; \ Tiles of the FG/BG slots 1C0-1FF, high byte.  
CODE_138618:    AND #$00FF              ; $13:8618: 29 FF 00    ;  |
CODE_13861B:    XBA                     ; $13:861B: EB          ;  |
CODE_13861C:    STA $02CF               ; $13:861C: 8D CF 02    ; /
CODE_13861F:    LDA.l DATA_138382,x     ; $13:861F: BF 82 83 13 ; \ Tiles of the FG/BG slots 140-17F, bank byte.     
CODE_138623:    STA $02D1               ; $13:8623: 8D D1 02    ; /
CODE_138626:    LDA.l DATA_13844A,x     ; $13:8626: BF 4A 84 13 ; \ Tiles of the FG/BG slots 180-1BF, bank byte.  
CODE_13862A:    STA $02D3               ; $13:862A: 8D D3 02    ; /
CODE_13862D:    LDA.l DATA_138512,x     ; $13:862D: BF 12 85 13 ; \ Tiles of the FG/BG slots 1C0-1FF, bank byte.  
CODE_138631:    STA $02D5               ; $13:8631: 8D D5 02    ; /
CODE_138634:    SEP #$10                ; $13:8634: E2 10       ; Index = 8-bit.
CODE_138636:    LDX $0635               ; $13:8636: AE 35 06    ; \ If not in World 7, branch.
CODE_138639:    CPX #$06                ; $13:8639: E0 06       ;  |
CODE_13863B:    BNE CODE_138646         ; $13:863B: D0 09       ; /
CODE_13863D:    LDA.w #DATA_1DB000      ; $13:863D: A9 00 B0    ; \ $1DB000 = Tiles of the FG/BG slots 100-13F
CODE_138640:    STA $0D                 ; $13:8640: 85 0D       ;  | Metal ground graphics.
CODE_138642:    LDX.b #DATA_1DB000>>16  ; $13:8642: A2 1D       ;  |
CODE_138644:    BRA CODE_13864D         ; $13:8644: 80 07       ; /

CODE_138646:    LDA.w #DATA_1BC000      ; $13:8646: A9 00 C0    ; \ $1BC000 = Tiles of the FG/BG slots 100-13F.
CODE_138649:    STA $0D                 ; $13:8649: 85 0D       ;  |
CODE_13864B:    LDX.b #DATA_1BC000>>16  ; $13:864B: A2 1B       ;  |
CODE_13864D:    STX $0F                 ; $13:864D: 86 0F       ; /
CODE_13864F:    LDA #$0800              ; $13:864F: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_138652:    STA $0B                 ; $13:8652: 85 0B       ; /
CODE_138654:    LDA #$3000              ; $13:8654: A9 00 30    ; \ First half of third GFX slot.
CODE_138657:    JSR CODE_138AC4         ; $13:8657: 20 C4 8A    ; / Transfer to VRAM.
CODE_13865A:    LDA $02CB               ; $13:865A: AD CB 02    ; \ Load tiles 140-17F of the FG/BG slots from pointer.
CODE_13865D:    STA $0D                 ; $13:865D: 85 0D       ;  |
CODE_13865F:    LDX $02D1               ; $13:865F: AE D1 02    ;  |
CODE_138662:    STX $0F                 ; $13:8662: 86 0F       ; /
CODE_138664:    LDA #$0800              ; $13:8664: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_138667:    STA $0B                 ; $13:8667: 85 0B       ; /
CODE_138669:    LDA #$3400              ; $13:8669: A9 00 34    ; \ Second half of third GFX slot.
CODE_13866C:    JSR CODE_138AC4         ; $13:866C: 20 C4 8A    ; / Transfer to VRAM.
CODE_13866F:    LDA $02CD               ; $13:866F: AD CD 02    ; \ Load tiles 180-1BF of the FG/BG slots from pointer.
CODE_138672:    STA $0D                 ; $13:8672: 85 0D       ;  |
CODE_138674:    LDX $02D3               ; $13:8674: AE D3 02    ;  |
CODE_138677:    STX $0F                 ; $13:8677: 86 0F       ; /
CODE_138679:    LDA #$0800              ; $13:8679: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_13867C:    STA $0B                 ; $13:867C: 85 0B       ; /
CODE_13867E:    LDA #$3800              ; $13:867E: A9 00 38    ; \ First half of fourth GFX slot
CODE_138681:    JSR CODE_138AC4         ; $13:8681: 20 C4 8A    ; / Transfer to VRAM
CODE_138684:    LDA $02CF               ; $13:8684: AD CF 02    ; \ Load tiles 1C0-1FF of the FG/BG slots from pointer.
CODE_138687:    STA $0D                 ; $13:8687: 85 0D       ;  |
CODE_138689:    LDX $02D5               ; $13:8689: AE D5 02    ;  |
CODE_13868C:    STX $0F                 ; $13:868C: 86 0F       ; /
CODE_13868E:    LDA #$0800              ; $13:868E: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_138691:    STA $0B                 ; $13:8691: 85 0B       ; /
CODE_138693:    LDA #$3C00              ; $13:8693: A9 00 3C    ; \ Second half of fourth GFX slot.
CODE_138696:    JSR CODE_138AC4         ; $13:8696: 20 C4 8A    ; / Transfer to VRAM.
CODE_138699:    LDX $0533               ; $13:8699: AE 33 05    ; \ Load different graphics for tiles C0-FF of the FG/BG slots if the following levels:
CODE_13869C:    CPX #$02                ; $13:869C: E0 02       ;  | Level 1-3...
CODE_13869E:    BEQ CODE_1386BC         ; $13:869E: F0 1C       ;  |
CODE_1386A0:    CPX #$08                ; $13:86A0: E0 08       ;  | Level 3-3...
CODE_1386A2:    BEQ CODE_1386BC         ; $13:86A2: F0 18       ;  |
CODE_1386A4:    CPX #$0B                ; $13:86A4: E0 0B       ;  | or level 4-3.
CODE_1386A6:    BEQ CODE_1386BC         ; $13:86A6: F0 14       ;  |
CODE_1386A8:    CPX #$11                ; $13:86A8: E0 11       ;  | If NOT level 5-3, even different tiles are used for tiles C0-FF of the FG/BG slots.
CODE_1386AA:    BNE CODE_1386D2         ; $13:86AA: D0 26       ;  |
CODE_1386AC:    LDX $0534               ; $13:86AC: AE 34 05    ;  | If it's level 5-3 and the sixth room is entered...
CODE_1386AF:    CPX #$05                ; $13:86AF: E0 05       ;  | ...use the tiles from 1-3, 3-3 and 4-3.
CODE_1386B1:    BEQ CODE_1386BC         ; $13:86B1: F0 09       ;  |
CODE_1386B3:    LDA.w #DATA_18C800      ; $13:86B3: A9 00 C8    ;  | Graphics from $18C800 are used.
CODE_1386B6:    STA $0D                 ; $13:86B6: 85 0D       ;  | $0800 bytes.
CODE_1386B8:    LDX.b #DATA_18C800>>16  ; $13:86B8: A2 18       ;  |
CODE_1386BA:    BRA CODE_1386C3         ; $13:86BA: 80 07       ; /

CODE_1386BC:    LDA.w #DATA_1D9000      ; $13:86BC: A9 00 90    ; \ 1-3, 3-3, 4-3 or 5-3 room 6.
CODE_1386BF:    STA $0D                 ; $13:86BF: 85 0D       ;  | They use graphics from $1D9000.
CODE_1386C1:    LDX.b #DATA_1D9000>>16  ; $13:86C1: A2 1D       ;  |
CODE_1386C3:    STX $0F                 ; $13:86C3: 86 0F       ;  |
CODE_1386C5:    LDA #$0800              ; $13:86C5: A9 00 08    ;  | $0800 bytes also.
CODE_1386C8:    STA $0B                 ; $13:86C8: 85 0B       ;  |
CODE_1386CA:    LDA #$2C00              ; $13:86CA: A9 00 2C    ;  | VRAM destination is where tiles C0-FF go.
CODE_1386CD:    JSR CODE_138AC4         ; $13:86CD: 20 C4 8A    ;  | Transfer to VRAM.
CODE_1386D0:    BRA CODE_1386ED         ; $13:86D0: 80 1B       ; / Branch.

CODE_1386D2:    LDX $0533               ; $13:86D2: AE 33 05    ; \ If NOT 7-2...
CODE_1386D5:    CPX #$13                ; $13:86D5: E0 13       ;  | ...then don't load any new tiles at all.
CODE_1386D7:    BNE CODE_1386ED         ; $13:86D7: D0 14       ;  |
CODE_1386D9:    LDA.w #DATA_1DA000      ; $13:86D9: A9 00 A0    ;  | 7-2 uses graphics from $1DA000.
CODE_1386DC:    STA $0D                 ; $13:86DC: 85 0D       ;  |
CODE_1386DE:    LDX.b #DATA_1DA000>>16  ; $13:86DE: A2 1D       ;  |
CODE_1386E0:    STX $0F                 ; $13:86E0: 86 0F       ;  |
CODE_1386E2:    LDA #$0800              ; $13:86E2: A9 00 08    ;  | $0800 bytes as usual.
CODE_1386E5:    STA $0B                 ; $13:86E5: 85 0B       ;  |
CODE_1386E7:    LDA #$2C00              ; $13:86E7: A9 00 2C    ;  | VRAM destination is where tiles C0-FF go.
CODE_1386EA:    JSR CODE_138AC4         ; $13:86EA: 20 C4 8A    ; / Transfer to VRAM.
CODE_1386ED:    LDX #$00                    ; $13:86ED: A2 00       ;
CODE_1386EF:    STX $0773                   ; $13:86EF: 8E 73 07    ;
CODE_1386F2:    LDX $0533               ; $13:86F2: AE 33 05    ; \ Level 2-1...
CODE_1386F5:    CPX #$03                ; $13:86F5: E0 03       ;  | (If not, branch.)
CODE_1386F7:    BNE CODE_138704         ; $13:86F7: D0 0B       ;  |
CODE_1386F9:    LDX $0534               ; $13:86F9: AE 34 05    ;  | The second room.
CODE_1386FC:    CPX #$01                ; $13:86FC: E0 01       ;  |
CODE_1386FE:    BEQ CODE_13871D         ; $13:86FE: F0 1D       ;  |
CODE_138700:    CPX #$02                ; $13:8700: E0 02       ;  | Or the third room.
CODE_138702:    BEQ CODE_13871D         ; $13:8702: F0 19       ; / If either, branch.
CODE_138704:    LDX $0533               ; $13:8704: AE 33 05    ; \ Level 2-3...
CODE_138707:    CPX #$05                ; $13:8707: E0 05       ;  | (If not, branch and return.)
CODE_138709:    BNE CODE_138736         ; $13:8709: D0 2B       ;  |
CODE_13870B:    LDX $0534               ; $13:870B: AE 34 05    ;  |
CODE_13870E:    CPX #$03                ; $13:870E: E0 03       ;  | The fourth room...
CODE_138710:    BEQ CODE_13871D         ; $13:8710: F0 0B       ;  |
CODE_138712:    LDX $0534               ; $13:8712: AE 34 05    ;  | Or the sixth room...
CODE_138715:    CPX #$05                ; $13:8715: E0 05       ;  | (Extra LDX $0534 is redundant, by the way.)
CODE_138717:    BEQ CODE_13871D         ; $13:8717: F0 04       ;  |
CODE_138719:    CPX #$07                ; $13:8719: E0 07       ;  | Or the eighth room.
CODE_13871B:    BNE CODE_138736         ; $13:871B: D0 19       ;  | If none of these, return.
CODE_13871D:    LDA #$A800              ; $13:871D: A9 00 A8    ;  | Upload stone graphics to 100-13F.
CODE_138720:    STA $0D                 ; $13:8720: 85 0D       ;  | Source: $1DA800.
CODE_138722:    LDX #$1D                ; $13:8722: A2 1D       ;  |
CODE_138724:    STX $0F                 ; $13:8724: 86 0F       ;  |
CODE_138726:    LDA #$0800              ; $13:8726: A9 00 08    ;  | Size: $0800 (x40 tiles)
CODE_138729:    STA $0B                 ; $13:8729: 85 0B       ;  |
CODE_13872B:    LDA #$3000              ; $13:872B: A9 00 30    ;  | Destination: FG/BG tile slots 100-13F.
CODE_13872E:    JSR CODE_138AC4         ; $13:872E: 20 C4 8A    ; / Transfer to VRAM.
CODE_138731:    LDX #$01                    ; $13:8731: A2 01       ;
CODE_138733:    STX $0773                   ; $13:8733: 8E 73 07    ;
CODE_138736:    SEP #$20                ; $13:8736: E2 20       ; A = 8-bit.
CODE_138738:    RTL                     ; $13:8738: 6B          ; Return.

DATA_138739:        dw $8000      ; Icy ground graphics.
                    dw $9800      ; Wood graphics.
              
CODE_13873D:    REP #$20                ; $13:873D: C2 20       ; Accumulator = 16-bit.
CODE_13873F:    LDX $0533               ; $13:873F: AE 33 05    ; \ Check if in level 5-3.
CODE_138742:    CPX #$0E                ; $13:8742: E0 0E       ;  |
CODE_138744:    BNE CODE_13874A         ; $13:8744: D0 04       ; / If not, branch.
CODE_138746:    LDX #$02                ; $13:8746: A2 02       ; Layer tiles 200-23F = $1D9800.
CODE_138748:    BRA CODE_13874D             ; $13:8748: 80 03       ;

CODE_13874A:    LDX $04EF                   ; $13:874A: AE EF 04    ;
CODE_13874D:    LDA.l DATA_138739,x     ; $13:874D: BF 39 87 13 ; \ Load GFX pointer for layer tiles 200-23F.
CODE_138751:    STA $0D                 ; $13:8751: 85 0D       ;  | Into [$0D]
CODE_138753:    LDX #$1D                ; $13:8753: A2 1D       ;  |
CODE_138755:    STX $0F                 ; $13:8755: 86 0F       ; /
CODE_138757:    LDA #$0800              ; $13:8757: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_13875A:    STA $0B                 ; $13:875A: 85 0B       ; /
CODE_13875C:    LDA #$4000              ; $13:875C: A9 00 40    ; \ First half of fifth GFX slot.
CODE_13875F:    JSR CODE_138AC4         ; $13:875F: 20 C4 8A    ; / Transfer to VRAM.
CODE_138762:    LDA #$9000              ; $13:8762: A9 00 90    ; \ Layer tiles 240-27F pointer into [$0D]
CODE_138765:    STA $0D                 ; $13:8765: 85 0D       ;  | ($1D9000)
CODE_138767:    LDX #$1D                ; $13:8767: A2 1D       ;  |
CODE_138769:    STX $0F                 ; $13:8769: 86 0F       ; /
CODE_13876B:    LDA #$0800              ; $13:876B: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_13876E:    STA $0B                 ; $13:876E: 85 0B       ; /
CODE_138770:    LDA #$4400              ; $13:8770: A9 00 44    ; \ Second half of fifth GFX slot.
CODE_138773:    JSR CODE_138AC4         ; $13:8773: 20 C4 8A    ; / Transfer to VRAM.
CODE_138776:    SEP #$20                ; $13:8776: E2 20       ; Accumulator = 8-bit.
CODE_138778:    RTL                     ; $13:8778: 6B          ; Return.

DATA_138779:        db $18,$38,$58,$75,$91,$B0,$C3
            
CODE_138780:    LDA #$06                    ; $13:8780: A9 06       ;
CODE_138782:    STA $00                     ; $13:8782: 85 00       ;
CODE_138784:    LDX $0533                   ; $13:8784: AE 33 05    ;
CODE_138787:    LDA.l DATA_11D098,x                 ; $13:8787: BF 98 D0 11 ;
CODE_13878B:    CLC                         ; $13:878B: 18          ;
CODE_13878C:    ADC $0534                   ; $13:878C: 6D 34 05    ;
CODE_13878F:    LDX $00                     ; $13:878F: A6 00       ;
CODE_138791:    CMP.l DATA_138779,x                 ; $13:8791: DF 79 87 13 ;
CODE_138795:    BEQ CODE_13879D             ; $13:8795: F0 06       ;
CODE_138797:    DEX                         ; $13:8797: CA          ;
CODE_138798:    BPL CODE_138791             ; $13:8798: 10 F7       ;
CODE_13879A:    BRL CODE_1387D7             ; $13:879A: 82 3A 00    ;

CODE_13879D:    CPX #$06                    ; $13:879D: E0 06       ;
CODE_13879F:    BNE CODE_1387BB             ; $13:879F: D0 1A       ;
CODE_1387A1:    PHX                         ; $13:87A1: DA          ;
CODE_1387A2:    REP #$20                    ; $13:87A2: C2 20       ;
CODE_1387A4:    LDA #$F800                  ; $13:87A4: A9 00 F8    ;
CODE_1387A7:    STA $0D                     ; $13:87A7: 85 0D       ;
CODE_1387A9:    LDX #$17                    ; $13:87A9: A2 17       ;
CODE_1387AB:    STX $0F                     ; $13:87AB: 86 0F       ;
CODE_1387AD:    LDA #$0800                  ; $13:87AD: A9 00 08    ;
CODE_1387B0:    STA $0B                     ; $13:87B0: 85 0B       ;
CODE_1387B2:    LDA #$7800                  ; $13:87B2: A9 00 78    ;
CODE_1387B5:    JSR CODE_138AE7             ; $13:87B5: 20 E7 8A    ;
CODE_1387B8:    SEP #$20                    ; $13:87B8: E2 20       ;
CODE_1387BA:    PLX                         ; $13:87BA: FA          ;
CODE_1387BB:    TXA                         ; $13:87BB: 8A          ;
CODE_1387BC:    ASL A                       ; $13:87BC: 0A          ;
CODE_1387BD:    TAX                         ; $13:87BD: AA          ;
CODE_1387BE:    REP #$20                    ; $13:87BE: C2 20       ;
CODE_1387C0:    LDA.l DATA_13802A,x                 ; $13:87C0: BF 2A 80 13 ;
CODE_1387C4:    STA $0D                     ; $13:87C4: 85 0D       ;
CODE_1387C6:    LDX #$17                    ; $13:87C6: A2 17       ;
CODE_1387C8:    STX $0F                     ; $13:87C8: 86 0F       ;
CODE_1387CA:    LDA #$0800                  ; $13:87CA: A9 00 08    ;
CODE_1387CD:    STA $0B                     ; $13:87CD: 85 0B       ;
CODE_1387CF:    LDA #$7C00                  ; $13:87CF: A9 00 7C    ;
CODE_1387D2:    JSR CODE_138AE7             ; $13:87D2: 20 E7 8A    ;
CODE_1387D5:    SEP #$20                    ; $13:87D5: E2 20       ;
CODE_1387D7:    RTL                         ; $13:87D7: 6B          ;

CODE_1387D8:    REP #$20                    ; $13:87D8: C2 20       ;
CODE_1387DA:    LDA #$8000                  ; $13:87DA: A9 00 80    ;
CODE_1387DD:    STA $0D                     ; $13:87DD: 85 0D       ;
CODE_1387DF:    LDX #$19                    ; $13:87DF: A2 19       ;
CODE_1387E1:    STX $0F                     ; $13:87E1: 86 0F       ;
CODE_1387E3:    LDA #$0800                  ; $13:87E3: A9 00 08    ;
CODE_1387E6:    STA $0B                     ; $13:87E6: 85 0B       ;
CODE_1387E8:    LDA #$2000                  ; $13:87E8: A9 00 20    ;
CODE_1387EB:    JSR CODE_138AC4             ; $13:87EB: 20 C4 8A    ;
CODE_1387EE:    LDA #$A000                  ; $13:87EE: A9 00 A0    ;
CODE_1387F1:    STA $0D                     ; $13:87F1: 85 0D       ;
CODE_1387F3:    LDX #$19                    ; $13:87F3: A2 19       ;
CODE_1387F5:    STX $0F                     ; $13:87F5: 86 0F       ;
CODE_1387F7:    LDA #$0800                  ; $13:87F7: A9 00 08    ;
CODE_1387FA:    STA $0B                     ; $13:87FA: 85 0B       ;
CODE_1387FC:    LDA #$2400                  ; $13:87FC: A9 00 24    ;
CODE_1387FF:    JSR CODE_138AC4             ; $13:87FF: 20 C4 8A    ;
CODE_138802:    LDA #$9000                  ; $13:8802: A9 00 90    ;
CODE_138805:    STA $0D                     ; $13:8805: 85 0D       ;
CODE_138807:    LDX #$19                    ; $13:8807: A2 19       ;
CODE_138809:    STX $0F                     ; $13:8809: 86 0F       ;
CODE_13880B:    LDA #$0800                  ; $13:880B: A9 00 08    ;
CODE_13880E:    STA $0B                     ; $13:880E: 85 0B       ;
CODE_138810:    LDA #$2800                  ; $13:8810: A9 00 28    ;
CODE_138813:    JSR CODE_138AC4             ; $13:8813: 20 C4 8A    ;
CODE_138816:    LDA #$F000                  ; $13:8816: A9 00 F0    ;
CODE_138819:    STA $0D                     ; $13:8819: 85 0D       ;
CODE_13881B:    LDX #$19                    ; $13:881B: A2 19       ;
CODE_13881D:    STX $0F                     ; $13:881D: 86 0F       ;
CODE_13881F:    LDA #$0800                  ; $13:881F: A9 00 08    ;
CODE_138822:    STA $0B                     ; $13:8822: 85 0B       ;
CODE_138824:    LDA #$2C00                  ; $13:8824: A9 00 2C    ;
CODE_138827:    JSR CODE_138AC4             ; $13:8827: 20 C4 8A    ;
CODE_13882A:    SEP #$20                    ; $13:882A: E2 20       ;
CODE_13882C:    RTL                         ; $13:882C: 6B          ;

CODE_13882D:    REP #$20                    ; $13:882D: C2 20       ;
CODE_13882F:    LDA #$8800                  ; $13:882F: A9 00 88    ;
CODE_138832:    STA $0D                     ; $13:8832: 85 0D       ;
CODE_138834:    LDX #$19                    ; $13:8834: A2 19       ;
CODE_138836:    STX $0F                     ; $13:8836: 86 0F       ;
CODE_138838:    LDA #$0800                  ; $13:8838: A9 00 08    ;
CODE_13883B:    STA $0B                     ; $13:883B: 85 0B       ;
CODE_13883D:    LDA #$2400                  ; $13:883D: A9 00 24    ;
CODE_138840:    JSR CODE_138AC4             ; $13:8840: 20 C4 8A    ;
CODE_138843:    SEP #$20                    ; $13:8843: E2 20       ;
CODE_138845:    RTL                         ; $13:8845: 6B          ;

CODE_138846:    REP #$20                    ; $13:8846: C2 20       ;
CODE_138848:    LDA #$B000                  ; $13:8848: A9 00 B0    ;
CODE_13884B:    STA $0D                     ; $13:884B: 85 0D       ;
CODE_13884D:    LDX #$19                    ; $13:884D: A2 19       ;
CODE_13884F:    STX $0F                     ; $13:884F: 86 0F       ;
CODE_138851:    LDA #$1000                  ; $13:8851: A9 00 10    ;
CODE_138854:    STA $0B                     ; $13:8854: 85 0B       ;
CODE_138856:    LDA #$3000                  ; $13:8856: A9 00 30    ;
CODE_138859:    JSR CODE_138AC4             ; $13:8859: 20 C4 8A    ;
CODE_13885C:    LDA #$A800                  ; $13:885C: A9 00 A8    ;
CODE_13885F:    STA $0D                     ; $13:885F: 85 0D       ;
CODE_138861:    LDX #$19                    ; $13:8861: A2 19       ;
CODE_138863:    STX $0F                     ; $13:8863: 86 0F       ;
CODE_138865:    LDA #$0800                  ; $13:8865: A9 00 08    ;
CODE_138868:    STA $0B                     ; $13:8868: 85 0B       ;
CODE_13886A:    LDA #$3800                  ; $13:886A: A9 00 38    ;
CODE_13886D:    JSR CODE_138AC4             ; $13:886D: 20 C4 8A    ;
CODE_138870:    LDA #$9800                  ; $13:8870: A9 00 98    ;
CODE_138873:    STA $0D                     ; $13:8873: 85 0D       ;
CODE_138875:    LDX #$19                    ; $13:8875: A2 19       ;
CODE_138877:    STX $0F                     ; $13:8877: 86 0F       ;
CODE_138879:    LDA #$0800                  ; $13:8879: A9 00 08    ;
CODE_13887C:    STA $0B                     ; $13:887C: 85 0B       ;
CODE_13887E:    LDA #$3C00                  ; $13:887E: A9 00 3C    ;
CODE_138881:    JSR CODE_138AC4             ; $13:8881: 20 C4 8A    ;
CODE_138884:    SEP #$20                    ; $13:8884: E2 20       ;
CODE_138886:    RTL                         ; $13:8886: 6B          ;

CODE_138887:    REP #$20                    ; $13:8887: C2 20       ;
CODE_138889:    LDA #$B000                  ; $13:8889: A9 00 B0    ;
CODE_13888C:    STA $0D                     ; $13:888C: 85 0D       ;
CODE_13888E:    LDX #$17                    ; $13:888E: A2 17       ;
CODE_138890:    STX $0F                     ; $13:8890: 86 0F       ;
CODE_138892:    LDA #$0800                  ; $13:8892: A9 00 08    ;
CODE_138895:    STA $0B                     ; $13:8895: 85 0B       ;
CODE_138897:    LDA #$3400                  ; $13:8897: A9 00 34    ;
CODE_13889A:    JSR CODE_138AC4             ; $13:889A: 20 C4 8A    ;
CODE_13889D:    SEP #$20                    ; $13:889D: E2 20       ;
CODE_13889F:    RTL                         ; $13:889F: 6B          ;

CODE_1388A0:    REP #$20                    ; $13:88A0: C2 20       ;
CODE_1388A2:    LDA #$C000                  ; $13:88A2: A9 00 C0    ;
CODE_1388A5:    STA $0D                     ; $13:88A5: 85 0D       ;
CODE_1388A7:    LDX #$19                    ; $13:88A7: A2 19       ;
CODE_1388A9:    STX $0F                     ; $13:88A9: 86 0F       ;
CODE_1388AB:    LDA #$0800                  ; $13:88AB: A9 00 08    ;
CODE_1388AE:    STA $0B                     ; $13:88AE: 85 0B       ;
CODE_1388B0:    LDA #$2C00                  ; $13:88B0: A9 00 2C    ;
CODE_1388B3:    JSR CODE_138AC4             ; $13:88B3: 20 C4 8A    ;
CODE_1388B6:    LDA #$9800                  ; $13:88B6: A9 00 98    ;
CODE_1388B9:    STA $0D                     ; $13:88B9: 85 0D       ;
CODE_1388BB:    LDX #$19                    ; $13:88BB: A2 19       ;
CODE_1388BD:    STX $0F                     ; $13:88BD: 86 0F       ;
CODE_1388BF:    LDA #$0800                  ; $13:88BF: A9 00 08    ;
CODE_1388C2:    STA $0B                     ; $13:88C2: 85 0B       ;
CODE_1388C4:    LDA #$3C00                  ; $13:88C4: A9 00 3C    ;
CODE_1388C7:    JSR CODE_138AC4             ; $13:88C7: 20 C4 8A    ;
CODE_1388CA:    LDA #$0800                  ; $13:88CA: A9 00 08    ;
CODE_1388CD:    STA $0B                     ; $13:88CD: 85 0B       ;
CODE_1388CF:    LDA #$B800                  ; $13:88CF: A9 00 B8    ;
CODE_1388D2:    STA $0D                     ; $13:88D2: 85 0D       ;
CODE_1388D4:    LDX #$17                    ; $13:88D4: A2 17       ;
CODE_1388D6:    STX $0F                     ; $13:88D6: 86 0F       ;
CODE_1388D8:    LDA #$7C00                  ; $13:88D8: A9 00 7C    ;
CODE_1388DB:    JSR CODE_138AE7             ; $13:88DB: 20 E7 8A    ;
CODE_1388DE:    LDA #$0800                  ; $13:88DE: A9 00 08    ;
CODE_1388E1:    STA $0B                     ; $13:88E1: 85 0B       ;
CODE_1388E3:    LDA #$C000                  ; $13:88E3: A9 00 C0    ;
CODE_1388E6:    STA $0D                     ; $13:88E6: 85 0D       ;
CODE_1388E8:    LDX #$17                    ; $13:88E8: A2 17       ;
CODE_1388EA:    STX $0F                     ; $13:88EA: 86 0F       ;
CODE_1388EC:    LDA #$7800                  ; $13:88EC: A9 00 78    ;
CODE_1388EF:    JSR CODE_138AE7             ; $13:88EF: 20 E7 8A    ;
CODE_1388F2:    SEP #$20                    ; $13:88F2: E2 20       ;
CODE_1388F4:    RTL                         ; $13:88F4: 6B          ;

CODE_1388F5:    REP #$20                ; $13:88F5: C2 20       ; Accumulator = 16-bit.
CODE_1388F7:    LDA #$8000              ; $13:88F7: A9 00 80    ; \ Layer tiles 00-3F.
CODE_1388FA:    STA $0D                 ; $13:88FA: 85 0D       ;  | ($1A8000)
CODE_1388FC:    LDX #$1A                ; $13:88FC: A2 1A       ;  |
CODE_1388FE:    STX $0F                 ; $13:88FE: 86 0F       ; /
CODE_138900:    LDA #$0800              ; $13:8900: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
CODE_138903:    STA $0B                 ; $13:8903: 85 0B       ; /
CODE_138905:    LDA #$2000              ; $13:8905: A9 00 20    ; \ First half of first GFX slot.
CODE_138908:    JSR CODE_138AC4         ; $13:8908: 20 C4 8A    ; / Transfer to VRAM.
CODE_13890B:    LDA.w #DATA_19C800      ; $13:890B: A9 00 C8    ; \ Layer tiles 40-FF.
CODE_13890E:    STA $0D                 ; $13:890E: 85 0D       ;  | ($19C800)
CODE_138910:    LDX.b #DATA_19C800>>16  ; $13:8910: A2 19       ;  |
CODE_138912:    STX $0F                 ; $13:8912: 86 0F       ; /
CODE_138914:    LDA #$1800              ; $13:8914: A9 00 18    ; \ Amount of bytes to transfer = #$1800.
CODE_138917:    STA $0B                 ; $13:8917: 85 0B       ; /
CODE_138919:    LDA #$2400              ; $13:8919: A9 00 24    ; \ Second half of first and full second GFX slot.
CODE_13891C:    JSR CODE_138AC4         ; $13:891C: 20 C4 8A    ; / Transfer to VRAM.
CODE_13891F:    LDA #$4000              ; $13:891F: A9 00 40    ; \ Amount of bytes to transfer = #$4000.
CODE_138922:    STA $0B                 ; $13:8922: 85 0B       ; /
CODE_138924:    LDA.w #DATA_1B8000      ; $13:8924: A9 00 80    ; \ Sprite tiles 00-1FF.
CODE_138927:    STA $0D                 ; $13:8927: 85 0D       ;  | ($1B8000)
CODE_138929:    LDX.b #DATA_1B8000>>16  ; $13:8929: A2 1B       ;  |
CODE_13892B:    STX $0F                 ; $13:892B: 86 0F       ; /
CODE_13892D:    LDA #$6000              ; $13:892D: A9 00 60    ; \ All four GFX slots.
CODE_138930:    JSR CODE_138AE7         ; $13:8930: 20 E7 8A    ; / Transfer to VRAM.
CODE_138933:    SEP #$20                ; $13:8933: E2 20       ; Accumulator = 8-bit.
CODE_138935:    RTL                     ; $13:8935: 6B          ; Return.

CODE_138936:    PHB                         ; $13:8936: 8B          ;
CODE_138937:    PHK                         ; $13:8937: 4B          ;
CODE_138938:    PLB                         ; $13:8938: AB          ;
CODE_138939:    REP #$20                    ; $13:8939: C2 20       ;
CODE_13893B:    LDA #$D000                  ; $13:893B: A9 00 D0    ;
CODE_13893E:    STA $0D                     ; $13:893E: 85 0D       ;
CODE_138940:    LDX #$18                    ; $13:8940: A2 18       ;
CODE_138942:    STX $0F                     ; $13:8942: 86 0F       ;
CODE_138944:    LDA #$0800                  ; $13:8944: A9 00 08    ;
CODE_138947:    STA $0B                     ; $13:8947: 85 0B       ;
CODE_138949:    LDA #$2000                  ; $13:8949: A9 00 20    ;
CODE_13894C:    JSR CODE_138AC4             ; $13:894C: 20 C4 8A    ;
CODE_13894F:    LDA #$F000                  ; $13:894F: A9 00 F0    ;
CODE_138952:    STA $0D                     ; $13:8952: 85 0D       ;
CODE_138954:    LDX #$1C                    ; $13:8954: A2 1C       ;
CODE_138956:    STX $0F                     ; $13:8956: 86 0F       ;
CODE_138958:    LDA #$0800                  ; $13:8958: A9 00 08    ;
CODE_13895B:    STA $0B                     ; $13:895B: 85 0B       ;
CODE_13895D:    LDA #$2400                  ; $13:895D: A9 00 24    ;
CODE_138960:    JSR CODE_138AC4             ; $13:8960: 20 C4 8A    ;
CODE_138963:    LDA #$F800                  ; $13:8963: A9 00 F8    ;
CODE_138966:    STA $0D                     ; $13:8966: 85 0D       ;
CODE_138968:    LDX #$19                    ; $13:8968: A2 19       ;
CODE_13896A:    STX $0F                     ; $13:896A: 86 0F       ;
CODE_13896C:    LDA #$0800                  ; $13:896C: A9 00 08    ;
CODE_13896F:    STA $0B                     ; $13:896F: 85 0B       ;
CODE_138971:    LDA #$2800                  ; $13:8971: A9 00 28    ;
CODE_138974:    JSR CODE_138AC4             ; $13:8974: 20 C4 8A    ;
CODE_138977:    LDA #$B000                  ; $13:8977: A9 00 B0    ;
CODE_13897A:    STA $0D                     ; $13:897A: 85 0D       ;
CODE_13897C:    LDX #$1B                    ; $13:897C: A2 1B       ;
CODE_13897E:    STX $0F                     ; $13:897E: 86 0F       ;
CODE_138980:    LDA #$0800                  ; $13:8980: A9 00 08    ;
CODE_138983:    STA $0B                     ; $13:8983: 85 0B       ;
CODE_138985:    LDA #$2C00                  ; $13:8985: A9 00 2C    ;
CODE_138988:    JSR CODE_138AC4             ; $13:8988: 20 C4 8A    ;
CODE_13898B:    LDA #$9800                  ; $13:898B: A9 00 98    ;
CODE_13898E:    STA $0D                     ; $13:898E: 85 0D       ;
CODE_138990:    LDX #$19                    ; $13:8990: A2 19       ;
CODE_138992:    STX $0F                     ; $13:8992: 86 0F       ;
CODE_138994:    LDA #$0800                  ; $13:8994: A9 00 08    ;
CODE_138997:    STA $0B                     ; $13:8997: 85 0B       ;
CODE_138999:    LDA #$3C00                  ; $13:8999: A9 00 3C    ;
CODE_13899C:    JSR CODE_138AC4             ; $13:899C: 20 C4 8A    ;
CODE_13899F:    SEP #$20                    ; $13:899F: E2 20       ;
CODE_1389A1:    PLB                         ; $13:89A1: AB          ;
CODE_1389A2:    RTL                         ; $13:89A2: 6B          ;

CODE_1389A3:    PHB                         ; $13:89A3: 8B          ;
CODE_1389A4:    PHK                         ; $13:89A4: 4B          ;
CODE_1389A5:    PLB                         ; $13:89A5: AB          ;
CODE_1389A6:    REP #$20                    ; $13:89A6: C2 20       ;
CODE_1389A8:    LDA #$8000                  ; $13:89A8: A9 00 80    ;
CODE_1389AB:    STA $0D                     ; $13:89AB: 85 0D       ;
CODE_1389AD:    LDX #$1E                    ; $13:89AD: A2 1E       ;
CODE_1389AF:    STX $0F                     ; $13:89AF: 86 0F       ;
CODE_1389B1:    LDA #$1000                  ; $13:89B1: A9 00 10    ;
CODE_1389B4:    STA $0B                     ; $13:89B4: 85 0B       ;
CODE_1389B6:    LDA #$5800                  ; $13:89B6: A9 00 58    ;
CODE_1389B9:    JSR CODE_138AC4             ; $13:89B9: 20 C4 8A    ;
CODE_1389BC:    SEP #$20                    ; $13:89BC: E2 20       ;
CODE_1389BE:    PLB                         ; $13:89BE: AB          ;
CODE_1389BF:    RTL                         ; $13:89BF: 6B          ;

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
                
CODE_138A10:    REP #$20                    ; $13:8A10: C2 20       ;
CODE_138A12:    LDA $0759                   ; $13:8A12: AD 59 07    ;
CODE_138A15:    AND #$00FF                  ; $13:8A15: 29 FF 00    ;
CODE_138A18:    BEQ CODE_138A3A             ; $13:8A18: F0 20       ;
CODE_138A1A:    DEC $0759                   ; $13:8A1A: CE 59 07    ;
CODE_138A1D:    DEC A                       ; $13:8A1D: 3A          ;
CODE_138A1E:    TAX                         ; $13:8A1E: AA          ;
CODE_138A1F:    LDA.l DATA_1389E0,x                 ; $13:8A1F: BF E0 89 13 ;
CODE_138A23:    STA $0F                     ; $13:8A23: 85 0F       ;
CODE_138A25:    TXA                         ; $13:8A25: 8A          ;
CODE_138A26:    ASL A                       ; $13:8A26: 0A          ;
CODE_138A27:    TAX                         ; $13:8A27: AA          ;
CODE_138A28:    LDA.l DATA_1389C0,x                 ; $13:8A28: BF C0 89 13 ;
CODE_138A2C:    STA $0D                     ; $13:8A2C: 85 0D       ;
CODE_138A2E:    LDA #$0200                  ; $13:8A2E: A9 00 02    ;
CODE_138A31:    STA $0B                     ; $13:8A31: 85 0B       ;
CODE_138A33:    LDA.l DATA_1389F0,x                 ; $13:8A33: BF F0 89 13 ;
CODE_138A37:    JSR CODE_138AC4             ; $13:8A37: 20 C4 8A    ;
CODE_138A3A:    LDA $0722                   ; $13:8A3A: AD 22 07    ;
CODE_138A3D:    AND #$00FF                  ; $13:8A3D: 29 FF 00    ;
CODE_138A40:    BEQ CODE_138A62             ; $13:8A40: F0 20       ;
CODE_138A42:    CMP #$0002                  ; $13:8A42: C9 02 00    ;
CODE_138A45:    BEQ CODE_138A4E             ; $13:8A45: F0 07       ;
CODE_138A47:    LDA #$E000                  ; $13:8A47: A9 00 E0    ;
CODE_138A4A:    LDX #$1A                    ; $13:8A4A: A2 1A       ;
CODE_138A4C:    BRA CODE_138A53             ; $13:8A4C: 80 05       ;

CODE_138A4E:    LDA #$D000                  ; $13:8A4E: A9 00 D0    ;
CODE_138A51:    LDX #$16                    ; $13:8A51: A2 16       ;
CODE_138A53:    STA $0D                     ; $13:8A53: 85 0D       ;
CODE_138A55:    STX $0F                     ; $13:8A55: 86 0F       ;
CODE_138A57:    LDA #$0800                  ; $13:8A57: A9 00 08    ;
CODE_138A5A:    STA $0B                     ; $13:8A5A: 85 0B       ;
CODE_138A5C:    LDA #$7000                  ; $13:8A5C: A9 00 70    ;
CODE_138A5F:    JSR CODE_138AE7             ; $13:8A5F: 20 E7 8A    ;
CODE_138A62:    SEP #$20                    ; $13:8A62: E2 20       ;
CODE_138A64:    STZ $0722                   ; $13:8A64: 9C 22 07    ;
CODE_138A67:    RTL                         ; $13:8A67: 6B          ;

CODE_138A68:    REP #$20                    ; $13:8A68: C2 20       ;
CODE_138A6A:    LDA #$8000                  ; $13:8A6A: A9 00 80    ;
CODE_138A6D:    STA $0D                     ; $13:8A6D: 85 0D       ;
CODE_138A6F:    LDX #$19                    ; $13:8A6F: A2 19       ;
CODE_138A71:    STX $0F                     ; $13:8A71: 86 0F       ;
CODE_138A73:    LDA #$2000                  ; $13:8A73: A9 00 20    ;
CODE_138A76:    STA $0B                     ; $13:8A76: 85 0B       ;
CODE_138A78:    JSR CODE_138AC4             ; $13:8A78: 20 C4 8A    ;
CODE_138A7B:    LDA #$B800                  ; $13:8A7B: A9 00 B8    ;
CODE_138A7E:    STA $0D                     ; $13:8A7E: 85 0D       ;
CODE_138A80:    LDX #$1B                    ; $13:8A80: A2 1B       ;
CODE_138A82:    STX $0F                     ; $13:8A82: 86 0F       ;
CODE_138A84:    LDA #$0800                  ; $13:8A84: A9 00 08    ;
CODE_138A87:    STA $0B                     ; $13:8A87: 85 0B       ;
CODE_138A89:    LDA #$7800                  ; $13:8A89: A9 00 78    ;
CODE_138A8C:    JSR CODE_138AE7             ; $13:8A8C: 20 E7 8A    ;
CODE_138A8F:    SEP #$20                    ; $13:8A8F: E2 20       ;
CODE_138A91:    RTL                         ; $13:8A91: 6B          ;

CODE_138A92:    REP #$20                    ; $13:8A92: C2 20       ;
CODE_138A94:    LDA #$8800                  ; $13:8A94: A9 00 88    ;
CODE_138A97:    STA $0D                     ; $13:8A97: 85 0D       ;
CODE_138A99:    LDX #$1D                    ; $13:8A99: A2 1D       ;
CODE_138A9B:    STX $0F                     ; $13:8A9B: 86 0F       ;
CODE_138A9D:    LDA #$0800                  ; $13:8A9D: A9 00 08    ;
CODE_138AA0:    STA $0B                     ; $13:8AA0: 85 0B       ;
CODE_138AA2:    LDA #$2C00                  ; $13:8AA2: A9 00 2C    ;
CODE_138AA5:    JSR CODE_138AC4             ; $13:8AA5: 20 C4 8A    ;
CODE_138AA8:    SEP #$20                    ; $13:8AA8: E2 20       ;
CODE_138AAA:    RTL                         ; $13:8AAA: 6B          ;

CODE_138AAB:    REP #$20                    ; $13:8AAB: C2 20       ;
CODE_138AAD:    LDA #$9800                  ; $13:8AAD: A9 00 98    ;
CODE_138AB0:    STA $0D                     ; $13:8AB0: 85 0D       ;
CODE_138AB2:    LDX #$1D                    ; $13:8AB2: A2 1D       ;
CODE_138AB4:    STX $0F                     ; $13:8AB4: 86 0F       ;
CODE_138AB6:    LDA #$0800                  ; $13:8AB6: A9 00 08    ;
CODE_138AB9:    STA $0B                     ; $13:8AB9: 85 0B       ;
CODE_138ABB:    LDA #$4000                  ; $13:8ABB: A9 00 40    ;
CODE_138ABE:    JSR CODE_138AC4             ; $13:8ABE: 20 C4 8A    ;
CODE_138AC1:    SEP #$20                    ; $13:8AC1: E2 20       ;
CODE_138AC3:    RTL                         ; $13:8AC3: 6B          ;

CODE_138AC4:    LDX #$80                ; $13:8AC4: A2 80       ; \ Increment after write to $2119.
CODE_138AC6:    STX $2115               ; $13:8AC6: 8E 15 21    ;  | Increment source&destination addresses by 1.
CODE_138AC9:    STA $2116               ; $13:8AC9: 8D 16 21    ;  | 16-bit value in A determines destination in VRAM.
CODE_138ACC:    LDA #$01                ; $13:8ACC: A9 01       ;  | 1 byte per reg (2 regs, low byte in $reg, high byte in $reg+1).
CODE_138ACE:    CLC                     ; $13:8ACE: 18          ;  | Clear carry.
CODE_138ACF:    STA $4300               ; $13:8ACF: 8D 00 43    ;  | -------------^
CODE_138AD2:    LDA $0D                 ; $13:8AD2: A5 0D       ;  | [$0D] holds the source address.
CODE_138AD4:    STA $4302               ; $13:8AD4: 8D 02 43    ;  |
CODE_138AD7:    LDX $0F                 ; $13:8AD7: A6 0F       ;  |
CODE_138AD9:    STX $4304               ; $13:8AD9: 8E 04 43    ;  |
CODE_138ADC:    LDA $0B                 ; $13:8ADC: A5 0B       ;  | $0B (16-bit) holds the size.
CODE_138ADE:    STA $4305               ; $13:8ADE: 8D 05 43    ;  |
CODE_138AE1:    LDX #$01                ; $13:8AE1: A2 01       ;  | Data transfer here.
CODE_138AE3:    STX $420B               ; $13:8AE3: 8E 0B 42    ;  |
CODE_138AE6:    RTS                     ; $13:8AE6: 60          ; / Return.

CODE_138AE7:    LDX #$80                    ; $13:8AE7: A2 80       ;
CODE_138AE9:    STX $2115                   ; $13:8AE9: 8E 15 21    ;
CODE_138AEC:    STA $2116                   ; $13:8AEC: 8D 16 21    ;
CODE_138AEF:    LDA #$01                    ; $13:8AEF: A9 01       ;
CODE_138AF1:    CLC                         ; $13:8AF1: 18          ;
CODE_138AF2:    STA $4300                   ; $13:8AF2: 8D 00 43    ;
CODE_138AF5:    LDA $0D                     ; $13:8AF5: A5 0D       ;
CODE_138AF7:    STA $4302                   ; $13:8AF7: 8D 02 43    ;
CODE_138AFA:    LDX $0F                     ; $13:8AFA: A6 0F       ;
CODE_138AFC:    STX $4304                   ; $13:8AFC: 8E 04 43    ;
CODE_138AFF:    LDA $0B                     ; $13:8AFF: A5 0B       ;
CODE_138B01:    STA $4305                   ; $13:8B01: 8D 05 43    ;
CODE_138B04:    LDX #$01                    ; $13:8B04: A2 01       ;
CODE_138B06:    STX $420B                   ; $13:8B06: 8E 0B 42    ;
CODE_138B09:    RTS                         ; $13:8B09: 60          ;

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
                      
CODE_138B2A:    PHD                         ; $13:8B2A: 0B          ;
CODE_138B2B:    REP #$20                    ; $13:8B2B: C2 20       ;
CODE_138B2D:    LDA #$4300                  ; $13:8B2D: A9 00 43    ;
CODE_138B30:    TCD                         ; $13:8B30: 5B          ;
CODE_138B31:    LDY $FE                     ; $13:8B31: A4 FE       ;
CODE_138B33:    CPY #$80                    ; $13:8B33: C0 80       ;
CODE_138B35:    BEQ CODE_138B44             ; $13:8B35: F0 0D       ;
CODE_138B37:    LDY $0217                   ; $13:8B37: AC 17 02    ;
CODE_138B3A:    BNE CODE_138B48             ; $13:8B3A: D0 0C       ;
CODE_138B3C:    LDY $025E                   ; $13:8B3C: AC 5E 02    ;
CODE_138B3F:    BEQ CODE_138B44             ; $13:8B3F: F0 03       ;
CODE_138B41:    JMP CODE_138C7D             ; $13:8B41: 4C 7D 8C    ;

CODE_138B44:    SEP #$20                    ; $13:8B44: E2 20       ;
CODE_138B46:    PLD                         ; $13:8B46: 2B          ;
CODE_138B47:    RTL                         ; $13:8B47: 6B          ;

CODE_138B48:    LDX #$80                    ; $13:8B48: A2 80       ;
CODE_138B4A:    STX $2115                   ; $13:8B4A: 8E 15 21    ;
CODE_138B4D:    LDA #$01                    ; $13:8B4D: A9 01       ;
CODE_138B4F:    CLC                         ; $13:8B4F: 18          ;
CODE_138B50:    STA $00                     ; $13:8B50: 85 00       ;
CODE_138B52:    LDX $0722                   ; $13:8B52: AE 22 07    ;
CODE_138B55:    BNE CODE_138BBA             ; $13:8B55: D0 63       ;
CODE_138B57:    STA $10                     ; $13:8B57: 85 10       ;
CODE_138B59:    STA $20                     ; $13:8B59: 85 20       ;
CODE_138B5B:    LDX #$2F                    ; $13:8B5B: A2 2F       ;
CODE_138B5D:    STX $04                     ; $13:8B5D: 86 04       ;
CODE_138B5F:    STX $14                     ; $13:8B5F: 86 14       ;
CODE_138B61:    LDX #$16                    ; $13:8B61: A2 16       ;
CODE_138B63:    STX $24                     ; $13:8B63: 86 24       ;
CODE_138B65:    LDA #$0040                      ; $13:8B65: A9 40 00    ;
CODE_138B68:    STA $05                 ; $13:8B68: 85 05       ;
CODE_138B6A:    STA $15                     ; $13:8B6A: 85 15       ;
CODE_138B6C:    LDA #$00C0                                  ; $13:8B6C: A9 C0 00    ;
CODE_138B6F:    STA $25                     ; $13:8B6F: 85 25       ;
CODE_138B71:    LDA #$6000                          ; $13:8B71: A9 00 60    ;
CODE_138B74:    STA $2116                   ; $13:8B74: 8D 16 21    ;
CODE_138B77:    LDA $0010                   ; $13:8B77: AD 10 00    ;
CODE_138B7A:    AND #$0038                      ; $13:8B7A: 29 38 00    ;
CODE_138B7D:    LSR A                   ; $13:8B7D: 4A          ;
CODE_138B7E:    LSR A                       ; $13:8B7E: 4A          ;
CODE_138B7F:    TAX                         ; $13:8B7F: AA          ;
CODE_138B80:    LDA $02ED                   ; $13:8B80: AD ED 02    ;
CODE_138B83:    STA $02                     ; $13:8B83: 85 02       ;
CODE_138B85:    LDA $02F1                   ; $13:8B85: AD F1 02    ;
CODE_138B88:    STA $12                     ; $13:8B88: 85 12       ;
CODE_138B8A:    LDA.l DATA_138B0A,x                 ; $13:8B8A: BF 0A 8B 13 ;
CODE_138B8E:    STA $22                     ; $13:8B8E: 85 22       ;
CODE_138B90:    LDY #$07                    ; $13:8B90: A0 07       ;
CODE_138B92:    STY $420B                   ; $13:8B92: 8C 0B 42    ;
CODE_138B95:    LDA #$0040                      ; $13:8B95: A9 40 00    ;
CODE_138B98:    STA $05                     ; $13:8B98: 85 05       ;
CODE_138B9A:    STA $15                     ; $13:8B9A: 85 15       ;
CODE_138B9C:    LDA #$00C0                                  ; $13:8B9C: A9 C0 00    ;
CODE_138B9F:    STA $25                     ; $13:8B9F: 85 25       ;
CODE_138BA1:    LDA #$6100                      ; $13:8BA1: A9 00 61    ;
CODE_138BA4:    STA $2116                   ; $13:8BA4: 8D 16 21    ;
CODE_138BA7:    LDA $02EF                   ; $13:8BA7: AD EF 02    ;
CODE_138BAA:    STA $02                     ; $13:8BAA: 85 02       ;
CODE_138BAC:    LDA $02F3                   ; $13:8BAC: AD F3 02    ;
CODE_138BAF:    STA $12                     ; $13:8BAF: 85 12       ;
CODE_138BB1:    LDA.l DATA_138B1A,x                 ; $13:8BB1: BF 1A 8B 13 ;
CODE_138BB5:    STA $22                     ; $13:8BB5: 85 22       ;
CODE_138BB7:    STY $420B                   ; $13:8BB7: 8C 0B 42    ;
CODE_138BBA:    LDA #$0200                  ; $13:8BBA: A9 00 02    ;
CODE_138BBD:    STA $05                     ; $13:8BBD: 85 05       ;
CODE_138BBF:    LDA $0765                           ; $13:8BBF: AD 65 07    ;
CODE_138BC2:    STA $2116                   ; $13:8BC2: 8D 16 21    ;
CODE_138BC5:    LDA $021B                   ; $13:8BC5: AD 1B 02    ;
CODE_138BC8:    STA $02                     ; $13:8BC8: 85 02       ;
CODE_138BCA:    LDY $0788                   ; $13:8BCA: AC 88 07    ;
CODE_138BCD:    STY $04                     ; $13:8BCD: 84 04       ;
CODE_138BCF:    LDX #$01                    ; $13:8BCF: A2 01       ;
CODE_138BD1:    STX $420B                   ; $13:8BD1: 8E 0B 42    ;
CODE_138BD4:    LDA #$0040                      ; $13:8BD4: A9 40 00    ;
CODE_138BD7:    STA $05                 ; $13:8BD7: 85 05       ;
CODE_138BD9:    LDA #$22E0                  ; $13:8BD9: A9 E0 22    ;
CODE_138BDC:    STA $2116                   ; $13:8BDC: 8D 16 21    ;
CODE_138BDF:    LDA $0252                   ; $13:8BDF: AD 52 02    ;
CODE_138BE2:    STA $02                     ; $13:8BE2: 85 02       ;
CODE_138BE4:    STY $04                     ; $13:8BE4: 84 04       ;
CODE_138BE6:    STX $420B                   ; $13:8BE6: 8E 0B 42    ;
CODE_138BE9:    SEP #$20                    ; $13:8BE9: E2 20       ;
CODE_138BEB:    PLD                         ; $13:8BEB: 2B          ;
CODE_138BEC:    RTL                         ; $13:8BEC: 6B          ;

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
                   
CODE_138C0B:    LDA $025E               ; $13:8C0B: AD 5E 02    ;
CODE_138C0E:    BEQ CODE_138C13         ; $13:8C0E: F0 03       ;
CODE_138C10:    JMP CODE_138CCE         ; $13:8C10: 4C CE 8C    ;

CODE_138C13:    INC $0767               ; $13:8C13: EE 67 07    ;
CODE_138C16:    LDA $0767                   ; $13:8C16: AD 67 07    ;
CODE_138C19:    CMP #$03                    ; $13:8C19: C9 03       ;
CODE_138C1B:    BCC CODE_138C20             ; $13:8C1B: 90 03       ;
CODE_138C1D:    STZ $0767                   ; $13:8C1D: 9C 67 07    ;
CODE_138C20:    INC $0219                   ; $13:8C20: EE 19 02    ;
CODE_138C23:    LDA $0219                   ; $13:8C23: AD 19 02    ;
CODE_138C26:    CMP #$08                    ; $13:8C26: C9 08       ;
CODE_138C28:    BCC CODE_138C30             ; $13:8C28: 90 06       ;
CODE_138C2A:    INC $021A                   ; $13:8C2A: EE 1A 02    ;
CODE_138C2D:    STZ $0219                   ; $13:8C2D: 9C 19 02    ;
CODE_138C30:    LDA $021A                   ; $13:8C30: AD 1A 02    ;
CODE_138C33:    AND #$07                    ; $13:8C33: 29 07       ;
CODE_138C35:    ASL A                       ; $13:8C35: 0A          ;
CODE_138C36:    TAX                         ; $13:8C36: AA          ;
CODE_138C37:    REP #$20                    ; $13:8C37: C2 20       ;
CODE_138C39:    LDA.l DATA_138BED,x                 ; $13:8C39: BF ED 8B 13 ;
CODE_138C3D:    STA $021B                   ; $13:8C3D: 8D 1B 02    ;
CODE_138C40:    LDA $0767                   ; $13:8C40: AD 67 07    ;
CODE_138C43:    AND #$00FF                  ; $13:8C43: 29 FF 00    ;
CODE_138C46:    ASL A                       ; $13:8C46: 0A          ;
CODE_138C47:    TAX                         ; $13:8C47: AA          ;
CODE_138C48:    LDA $021B                   ; $13:8C48: AD 1B 02    ;
CODE_138C4B:    CLC                         ; $13:8C4B: 18          ;
CODE_138C4C:    ADC.l DATA_138BFD,x                 ; $13:8C4C: 7F FD 8B 13 ;
CODE_138C50:    STA $021B                   ; $13:8C50: 8D 1B 02    ;
CODE_138C53:    LDA.l DATA_138C03,x                 ; $13:8C53: BF 03 8C 13 ;
CODE_138C57:    STA $0765                   ; $13:8C57: 8D 65 07    ;
CODE_138C5A:    LDX $0787                   ; $13:8C5A: AE 87 07    ;
CODE_138C5D:    LDA.l DATA_138C09,x                 ; $13:8C5D: BF 09 8C 13 ;
CODE_138C61:    AND #$00FF                  ; $13:8C61: 29 FF 00    ;
CODE_138C64:    TAY                         ; $13:8C64: A8          ;
CODE_138C65:    STY $0788                   ; $13:8C65: 8C 88 07    ;
CODE_138C68:    LDA $10                     ; $13:8C68: A5 10       ;
CODE_138C6A:    AND #$0007                  ; $13:8C6A: 29 07 00    ;
CODE_138C6D:    ASL A                       ; $13:8C6D: 0A          ;
CODE_138C6E:    TAX                         ; $13:8C6E: AA          ;
CODE_138C6F:    LDA.l DATA_138BED,x                 ; $13:8C6F: BF ED 8B 13 ;
CODE_138C73:    CLC                         ; $13:8C73: 18          ;
CODE_138C74:    ADC #$05C0                  ; $13:8C74: 69 C0 05    ;
CODE_138C77:    STA $0252                   ; $13:8C77: 8D 52 02    ;
CODE_138C7A:    SEP #$20                    ; $13:8C7A: E2 20       ;
CODE_138C7C:    RTL                         ; $13:8C7C: 6B          ;

CODE_138C7D:    LDX #$80                    ; $13:8C7D: A2 80       ;
CODE_138C7F:    STX $2115                   ; $13:8C7F: 8E 15 21    ;
CODE_138C82:    LDA #$1801                              ; $13:8C82: A9 01 18    ;
CODE_138C85:    STA $00                     ; $13:8C85: 85 00       ;
CODE_138C87:    LDA #$0800                  ; $13:8C87: A9 00 08    ;
CODE_138C8A:    STA $05                     ; $13:8C8A: 85 05       ;
CODE_138C8C:    LDA #$2000                      ; $13:8C8C: A9 00 20    ;
CODE_138C8F:    STA $2116               ; $13:8C8F: 8D 16 21    ;
CODE_138C92:    LDA $021B               ; $13:8C92: AD 1B 02    ;
CODE_138C95:    STA $02                         ; $13:8C95: 85 02       ;
CODE_138C97:    LDY #$1A                    ; $13:8C97: A0 1A       ;
CODE_138C99:    STY $04                     ; $13:8C99: 84 04       ;
CODE_138C9B:    LDX #$01                    ; $13:8C9B: A2 01       ;
CODE_138C9D:    STX $420B                   ; $13:8C9D: 8E 0B 42    ;
CODE_138CA0:    SEP #$20                    ; $13:8CA0: E2 20       ;
CODE_138CA2:    PLD                         ; $13:8CA2: 2B          ;
CODE_138CA3:    RTL                         ; $13:8CA3: 6B          ;

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
                
CODE_138CCE:    LDA $15                     ; $13:8CCE: A5 15       ;
CODE_138CD0:    ASL A                       ; $13:8CD0: 0A          ;
CODE_138CD1:    TAX                         ; $13:8CD1: AA          ;
CODE_138CD2:    REP #$20                    ; $13:8CD2: C2 20       ;
CODE_138CD4:    LDA $025E                   ; $13:8CD4: AD 5E 02    ;
CODE_138CD7:    AND #$0003                  ; $13:8CD7: 29 03 00    ;
CODE_138CDA:    CMP #$0002                  ; $13:8CDA: C9 02 00    ;
CODE_138CDD:    BEQ CODE_138CE8             ; $13:8CDD: F0 09       ;
CODE_138CDF:    LDA.l DATA_138CA4,x                 ; $13:8CDF: BF A4 8C 13 ;
CODE_138CE3:    STA $021B                   ; $13:8CE3: 8D 1B 02    ;
CODE_138CE6:    BRA CODE_138CEF             ; $13:8CE6: 80 07       ;

CODE_138CE8:    LDA.l DATA_138CC0,x                 ; $13:8CE8: BF C0 8C 13 ;
CODE_138CEC:    STA $021B                   ; $13:8CEC: 8D 1B 02    ;
CODE_138CEF:    SEP #$20                    ; $13:8CEF: E2 20       ;
CODE_138CF1:    RTL                         ; $13:8CF1: 6B          ;

CODE_138CF2:    LDA #$04                    ; $13:8CF2: A9 04       ;
CODE_138CF4:    STA $1199                   ; $13:8CF4: 8D 99 11    ;
CODE_138CF7:    STA $119B                   ; $13:8CF7: 8D 9B 11    ;
CODE_138CFA:    STA $119D                   ; $13:8CFA: 8D 9D 11    ;
CODE_138CFD:    STA $119F                   ; $13:8CFD: 8D 9F 11    ;
CODE_138D00:    STA $11A1                   ; $13:8D00: 8D A1 11    ;
CODE_138D03:    STA $11A3                   ; $13:8D03: 8D A3 11    ;
CODE_138D06:    STA $11A5                   ; $13:8D06: 8D A5 11    ;
CODE_138D09:    STA $11A7                   ; $13:8D09: 8D A7 11    ;
CODE_138D0C:    STA $11A9                   ; $13:8D0C: 8D A9 11    ;
CODE_138D0F:    STA $11AB                   ; $13:8D0F: 8D AB 11    ;
CODE_138D12:    STA $11AD                   ; $13:8D12: 8D AD 11    ;
CODE_138D15:    STA $11AF                   ; $13:8D15: 8D AF 11    ;
CODE_138D18:    STA $11B1                   ; $13:8D18: 8D B1 11    ;
CODE_138D1B:    STA $11B3                   ; $13:8D1B: 8D B3 11    ;
CODE_138D1E:    STA $11B5                   ; $13:8D1E: 8D B5 11    ;
CODE_138D21:    STA $11B7                   ; $13:8D21: 8D B7 11    ;
CODE_138D24:    RTL                         ; $13:8D24: 6B          ;

CODE_138D25:    STZ $1199                   ; $13:8D25: 9C 99 11    ;
CODE_138D28:    STZ $119B                   ; $13:8D28: 9C 9B 11    ;
CODE_138D2B:    STZ $119D                   ; $13:8D2B: 9C 9D 11    ;
CODE_138D2E:    STZ $119F                   ; $13:8D2E: 9C 9F 11    ;
CODE_138D31:    STZ $11A1                   ; $13:8D31: 9C A1 11    ;
CODE_138D34:    STZ $11A3                   ; $13:8D34: 9C A3 11    ;
CODE_138D37:    STZ $11A5                   ; $13:8D37: 9C A5 11    ;
CODE_138D3A:    STZ $11A7                   ; $13:8D3A: 9C A7 11    ;
CODE_138D3D:    STZ $11A9                   ; $13:8D3D: 9C A9 11    ;
CODE_138D40:    STZ $11AB                   ; $13:8D40: 9C AB 11    ;
CODE_138D43:    STZ $11AD                   ; $13:8D43: 9C AD 11    ;
CODE_138D46:    STZ $11AF                   ; $13:8D46: 9C AF 11    ;
CODE_138D49:    STZ $11B1                   ; $13:8D49: 9C B1 11    ;
CODE_138D4C:    STZ $11B3                   ; $13:8D4C: 9C B3 11    ;
CODE_138D4F:    STZ $11B5                   ; $13:8D4F: 9C B5 11    ;
CODE_138D52:    STZ $11B7                   ; $13:8D52: 9C B7 11    ;
CODE_138D55:    RTL                         ; $13:8D55: 6B          ;

CODE_138D56:    REP #$20                    ; $13:8D56: C2 20       ;
CODE_138D58:    LDX #$2E                    ; $13:8D58: A2 2E       ;
CODE_138D5A:    LDA.w DATA_11BBC6,x                 ; $13:8D5A: BD C6 BB    ;
CODE_138D5D:    STA $1400,x                 ; $13:8D5D: 9D 00 14    ;
CODE_138D60:    DEX                         ; $13:8D60: CA          ;
CODE_138D61:    DEX                         ; $13:8D61: CA          ;
CODE_138D62:    BPL CODE_138D5A             ; $13:8D62: 10 F6       ;
CODE_138D64:    SEP #$20                    ; $13:8D64: E2 20       ;
CODE_138D66:    RTL                         ; $13:8D66: 6B          ;

CODE_138D67:    LDX #$23                    ; $13:8D67: A2 23       ;
CODE_138D69:    LDA.l DATA_15EC33,x                 ; $13:8D69: BF 33 EC 15 ;
CODE_138D6D:    STA $1194,x                 ; $13:8D6D: 9D 94 11    ;
CODE_138D70:    DEX                         ; $13:8D70: CA          ;
CODE_138D71:    BPL CODE_138D69             ; $13:8D71: 10 F6       ;
CODE_138D73:    RTL                         ; $13:8D73: 6B          ;

CODE_138D74:    LDA $FC                     ; $13:8D74: A5 FC       ;
CODE_138D76:    AND #$10                    ; $13:8D76: 29 10       ;
CODE_138D78:    BEQ CODE_138D96             ; $13:8D78: F0 1C       ;
CODE_138D7A:    LDX $0635                   ; $13:8D7A: AE 35 06    ;
CODE_138D7D:    INC $0533                   ; $13:8D7D: EE 33 05    ;
CODE_138D80:    LDA $0533                   ; $13:8D80: AD 33 05    ;
CODE_138D83:    STA $04E8                   ; $13:8D83: 8D E8 04    ;
CODE_138D86:    CMP.w DATA_11C9B4+1,x                   ; $13:8D86: DD B5 C9    ;
CODE_138D89:    BNE CODE_138DC1             ; $13:8D89: D0 36       ;
CODE_138D8B:    LDA.w DATA_11C9B4,x                 ; $13:8D8B: BD B4 C9    ;
CODE_138D8E:    STA $0533                   ; $13:8D8E: 8D 33 05    ;
CODE_138D91:    STA $04E8                   ; $13:8D91: 8D E8 04    ;
CODE_138D94:    BRA CODE_138DC1             ; $13:8D94: 80 2B       ;

CODE_138D96:    LDA $FC                     ; $13:8D96: A5 FC       ;
CODE_138D98:    AND #$20                    ; $13:8D98: 29 20       ;
CODE_138D9A:    BNE CODE_138D9F             ; $13:8D9A: D0 03       ;
CODE_138D9C:    BRL CODE_138E26             ; $13:8D9C: 82 87 00    ;

CODE_138D9F:    INC $0635                   ; $13:8D9F: EE 35 06    ;
CODE_138DA2:    LDX $0635                   ; $13:8DA2: AE 35 06    ;
CODE_138DA5:    STX $0405                   ; $13:8DA5: 8E 05 04    ;
CODE_138DA8:    LDA.w DATA_11C9B4,x                 ; $13:8DA8: BD B4 C9    ;
CODE_138DAB:    STA $0533                   ; $13:8DAB: 8D 33 05    ;
CODE_138DAE:    STA $04E8                   ; $13:8DAE: 8D E8 04    ;
CODE_138DB1:    CPX #$07                    ; $13:8DB1: E0 07       ;
CODE_138DB3:    BNE CODE_138DC1             ; $13:8DB3: D0 0C       ;
CODE_138DB5:    STZ $0635                   ; $13:8DB5: 9C 35 06    ;
CODE_138DB8:    STZ $0405                   ; $13:8DB8: 9C 05 04    ;
CODE_138DBB:    STZ $0533                   ; $13:8DBB: 9C 33 05    ;
CODE_138DBE:    STZ $04E8                   ; $13:8DBE: 9C E8 04    ;
CODE_138DC1:    LDA $0635                   ; $13:8DC1: AD 35 06    ;
CODE_138DC4:    INC A                       ; $13:8DC4: 1A          ;
CODE_138DC5:    ORA #$80                    ; $13:8DC5: 09 80       ;
CODE_138DC7:    STA $118E                   ; $13:8DC7: 8D 8E 11    ;
CODE_138DCA:    LDA #$0C                    ; $13:8DCA: A9 0C       ;
CODE_138DCC:    STA $118F                   ; $13:8DCC: 8D 8F 11    ;
CODE_138DCF:    LDY #$0C                    ; $13:8DCF: A0 0C       ;
CODE_138DD1:    LDA #$BF                    ; $13:8DD1: A9 BF       ;
CODE_138DD3:    STA $116C,y                 ; $13:8DD3: 99 6C 11    ;
CODE_138DD6:    LDA #$00                    ; $13:8DD6: A9 00       ;
CODE_138DD8:    STA $116D,y                 ; $13:8DD8: 99 6D 11    ;
CODE_138DDB:    DEY                         ; $13:8DDB: 88          ;
CODE_138DDC:    DEY                         ; $13:8DDC: 88          ;
CODE_138DDD:    BPL CODE_138DD1             ; $13:8DDD: 10 F2       ;
CODE_138DDF:    LDY $0635                   ; $13:8DDF: AC 35 06    ;
CODE_138DE2:    LDA $0533                   ; $13:8DE2: AD 33 05    ;
CODE_138DE5:    SEC                         ; $13:8DE5: 38          ;
CODE_138DE6:    SBC.w DATA_11C9B4,y                 ; $13:8DE6: F9 B4 C9    ;
CODE_138DE9:    STA $0629                   ; $13:8DE9: 8D 29 06    ;
CODE_138DEC:    CLC                         ; $13:8DEC: 18          ;
CODE_138DED:    ADC #$81                    ; $13:8DED: 69 81       ;
CODE_138DEF:    STA $1192                   ; $13:8DEF: 8D 92 11    ;
CODE_138DF2:    LDA #$0C                    ; $13:8DF2: A9 0C       ;
CODE_138DF4:    STA $1193                   ; $13:8DF4: 8D 93 11    ;
CODE_138DF7:    LDA.w DATA_11C9B4+1,y                   ; $13:8DF7: B9 B5 C9    ;
CODE_138DFA:    SEC                         ; $13:8DFA: 38          ;
CODE_138DFB:    SBC.w DATA_11C9B4,y                 ; $13:8DFB: F9 B4 C9    ;
CODE_138DFE:    STA $03                     ; $13:8DFE: 85 03       ;
CODE_138E00:    LDX #$00                    ; $13:8E00: A2 00       ;
CODE_138E02:    TXY                         ; $13:8E02: 9B          ;
CODE_138E03:    LDA #$EB                    ; $13:8E03: A9 EB       ;
CODE_138E05:    CPX $0629                   ; $13:8E05: EC 29 06    ;
CODE_138E08:    BNE CODE_138E0C             ; $13:8E08: D0 02       ;
CODE_138E0A:    LDA #$EC                    ; $13:8E0A: A9 EC       ;
CODE_138E0C:    STA $116C,y                 ; $13:8E0C: 99 6C 11    ;
CODE_138E0F:    LDA #$1C                    ; $13:8E0F: A9 1C       ;
CODE_138E11:    STA $116D,y                 ; $13:8E11: 99 6D 11    ;
CODE_138E14:    INY                         ; $13:8E14: C8          ;
CODE_138E15:    INY                         ; $13:8E15: C8          ;
CODE_138E16:    INY                         ; $13:8E16: C8          ;
CODE_138E17:    INY                         ; $13:8E17: C8          ;
CODE_138E18:    INX                         ; $13:8E18: E8          ;
CODE_138E19:    CPX $03                     ; $13:8E19: E4 03       ;
CODE_138E1B:    BCC CODE_138E03             ; $13:8E1B: 90 E6       ;
CODE_138E1D:    LDA #$FF                    ; $13:8E1D: A9 FF       ;
CODE_138E1F:    STA $1194                   ; $13:8E1F: 8D 94 11    ;
CODE_138E22:    LDA #$08                    ; $13:8E22: A9 08       ;
CODE_138E24:    STA $11                     ; $13:8E24: 85 11       ;
CODE_138E26:    RTL                         ; $13:8E26: 6B          ;
CODE_138E27:    LDY #$C0                    ; $13:8E27: A0 C0       ;
CODE_138E29:    CMP #$0A                    ; $13:8E29: C9 0A       ;
CODE_138E2B:    BCC CODE_138E32             ; $13:8E2B: 90 05       ;
CODE_138E2D:    SBC #$0A                    ; $13:8E2D: E9 0A       ;
CODE_138E2F:    INY                         ; $13:8E2F: C8          ;
CODE_138E30:    BRA CODE_138E29             ; $13:8E30: 80 F7       ;

CODE_138E32:    ORA #$C0                    ; $13:8E32: 09 C0       ;
CODE_138E34:    CPY #$C0                    ; $13:8E34: C0 C0       ;
CODE_138E36:    BNE CODE_138E3A             ; $13:8E36: D0 02       ;

CODE_138E38:    LDY #$BF                    ; $13:8E38: A0 BF       ;
CODE_138E3A:    RTS                         ; $13:8E3A: 60          ;

CODE_138E3B:    PHB                         ; $13:8E3B: 8B          ;
CODE_138E3C:    PHK                         ; $13:8E3C: 4B          ;
CODE_138E3D:    PLB                         ; $13:8E3D: AB          ;
CODE_138E3E:    LDA #$00                    ; $13:8E3E: A9 00       ;
CODE_138E40:    STA $0235                   ; $13:8E40: 8D 35 02    ;
CODE_138E43:    LDA #$00                    ; $13:8E43: A9 00       ;
CODE_138E45:    STA $0236                   ; $13:8E45: 8D 36 02    ;
CODE_138E48:    LDA #$CA                    ; $13:8E48: A9 CA       ;
CODE_138E4A:    STA $0237                   ; $13:8E4A: 8D 37 02    ;
CODE_138E4D:    LDA #$15                    ; $13:8E4D: A9 15       ;
CODE_138E4F:    STA $212A                   ; $13:8E4F: 8D 2A 21    ;
CODE_138E52:    LDA #$06                    ; $13:8E52: A9 06       ;
CODE_138E54:    STA $212B                   ; $13:8E54: 8D 2B 21    ;
CODE_138E57:    LDA #$41                    ; $13:8E57: A9 41       ;
CODE_138E59:    STA $4370                   ; $13:8E59: 8D 70 43    ;
CODE_138E5C:    LDA #$26                    ; $13:8E5C: A9 26       ;
CODE_138E5E:    STA $4371                   ; $13:8E5E: 8D 71 43    ;
CODE_138E61:    LDA.b #DATA_138EDD                      ; $13:8E61: A9 DD       ;
CODE_138E63:    STA $4372                   ; $13:8E63: 8D 72 43    ;
CODE_138E66:    LDA.b #DATA_138EDD>>8                   ; $13:8E66: A9 8E       ;
CODE_138E68:    STA $4373                   ; $13:8E68: 8D 73 43    ;
CODE_138E6B:    LDA.b #DATA_138EDD>>16                      ; $13:8E6B: A9 13       ;
CODE_138E6D:    STA $4374                   ; $13:8E6D: 8D 74 43    ;
CODE_138E70:    LDA #$7F                    ; $13:8E70: A9 7F       ;
CODE_138E72:    STA $4377                   ; $13:8E72: 8D 77 43    ;
CODE_138E75:    LDA #$41                    ; $13:8E75: A9 41       ;
CODE_138E77:    STA $4330                   ; $13:8E77: 8D 30 43    ;
CODE_138E7A:    LDA #$28                    ; $13:8E7A: A9 28       ;
CODE_138E7C:    STA $4331                   ; $13:8E7C: 8D 31 43    ;
CODE_138E7F:    LDA.b #DATA_138EE4                      ; $13:8E7F: A9 E4       ;
CODE_138E81:    STA $4332                   ; $13:8E81: 8D 32 43    ;
CODE_138E84:    LDA.b #DATA_138EE4>>8                   ; $13:8E84: A9 8E       ;
CODE_138E86:    STA $4333                   ; $13:8E86: 8D 33 43    ;
CODE_138E89:    LDA.b #DATA_138EE4>>16                      ; $13:8E89: A9 13       ;
CODE_138E8B:    STA $4334                   ; $13:8E8B: 8D 34 43    ;
CODE_138E8E:    LDA #$7F                    ; $13:8E8E: A9 7F       ;
CODE_138E90:    STA $4337                   ; $13:8E90: 8D 37 43    ;
CODE_138E93:    LDA #$10                    ; $13:8E93: A9 10       ;
CODE_138E95:    STA $0238                   ; $13:8E95: 8D 38 02    ;
CODE_138E98:    LDA #$B7                    ; $13:8E98: A9 B7       ;
CODE_138E9A:    STA $0239                   ; $13:8E9A: 8D 39 02    ;
CODE_138E9D:    LDA #$20                    ; $13:8E9D: A9 20       ;
CODE_138E9F:    STA $023D                   ; $13:8E9F: 8D 3D 02    ;
CODE_138EA2:    ASL A                       ; $13:8EA2: 0A          ;
CODE_138EA3:    STA $023E                   ; $13:8EA3: 8D 3E 02    ;
CODE_138EA6:    ASL A                       ; $13:8EA6: 0A          ;
CODE_138EA7:    STA $023F                   ; $13:8EA7: 8D 3F 02    ;
CODE_138EAA:    STZ $023C                   ; $13:8EAA: 9C 3C 02    ;
CODE_138EAD:    STZ $0244                   ; $13:8EAD: 9C 44 02    ;
CODE_138EB0:    LDA #$13                    ; $13:8EB0: A9 13       ;
CODE_138EB2:    STA $0243                   ; $13:8EB2: 8D 43 02    ;
CODE_138EB5:    STA $023B                   ; $13:8EB5: 8D 3B 02    ;
CODE_138EB8:    LDA $04BC                   ; $13:8EB8: AD BC 04    ;
CODE_138EBB:    STA $0B00                   ; $13:8EBB: 8D 00 0B    ;
CODE_138EBE:    LDA $04BD                   ; $13:8EBE: AD BD 04    ;
CODE_138EC1:    STA $0B01                   ; $13:8EC1: 8D 01 0B    ;
CODE_138EC4:    LDA #$01                    ; $13:8EC4: A9 01       ;
CODE_138EC6:    STA $02A9                   ; $13:8EC6: 8D A9 02    ;
CODE_138EC9:    STZ $023A                   ; $13:8EC9: 9C 3A 02    ;
CODE_138ECC:    STZ $022B                   ; $13:8ECC: 9C 2B 02    ;
CODE_138ECF:    STZ $0229                   ; $13:8ECF: 9C 29 02    ;
CODE_138ED2:    STZ $0232                   ; $13:8ED2: 9C 32 02    ;
CODE_138ED5:    STZ $0240                   ; $13:8ED5: 9C 40 02    ;
CODE_138ED8:    STZ $0245                   ; $13:8ED8: 9C 45 02    ;
CODE_138EDB:    PLB                         ; $13:8EDB: AB          ;
CODE_138EDC:    RTL                         ; $13:8EDC: 6B          ;

DATA_138EDD:        db $F0,$00,$F0,$F0,$E0,$F0,$00 ;

DATA_138EE4:        db $F0,$00,$F2,$F0,$E0,$F2,$00 ;
            
CODE_138EEB:    REP #$30                    ; $13:8EEB: C2 30       ;
CODE_138EED:    LDA $022B                   ; $13:8EED: AD 2B 02    ;
CODE_138EF0:    AND #$00FF                  ; $13:8EF0: 29 FF 00    ;
CODE_138EF3:    ASL A                       ; $13:8EF3: 0A          ;
CODE_138EF4:    TAX                         ; $13:8EF4: AA          ;
CODE_138EF5:    LDA.l DATA_138FB7,x                 ; $13:8EF5: BF B7 8F 13 ;
CODE_138EF9:    STA $0712                   ; $13:8EF9: 8D 12 07    ;
CODE_138EFC:    LDA.l DATA_138FC1,x                 ; $13:8EFC: BF C1 8F 13 ;
CODE_138F00:    STA $0714                   ; $13:8F00: 8D 14 07    ;
CODE_138F03:    LDA.l DATA_138FCB,x                 ; $13:8F03: BF CB 8F 13 ;
CODE_138F07:    STA $0716                   ; $13:8F07: 8D 16 07    ;
CODE_138F0A:    LDA.l DATA_138FC9                   ; $13:8F0A: AF C9 8F 13 ;
CODE_138F0E:    STA $0718                   ; $13:8F0E: 8D 18 07    ;
CODE_138F11:    LDA.l DATA_138FBF                   ; $13:8F11: AF BF 8F 13 ;
CODE_138F15:    TAX                         ; $13:8F15: AA          ;
CODE_138F16:    LDA #$00FF                  ; $13:8F16: A9 FF 00    ;
CODE_138F19:    CPX $0714                   ; $13:8F19: EC 14 07    ;
CODE_138F1C:    BCS CODE_138F26                     ; $13:8F1C: B0 08       ;
CODE_138F1E:    CPX $0712                   ; $13:8F1E: EC 12 07    ;
CODE_138F21:    BCC CODE_138F26             ; $13:8F21: 90 03       ;
CODE_138F23:    LDA $0716                   ; $13:8F23: AD 16 07    ;
CODE_138F26:    STA $7FF000,x               ; $13:8F26: 9F 00 F0 7F ;
CODE_138F2A:    INX                         ; $13:8F2A: E8          ;
CODE_138F2B:    INX                         ; $13:8F2B: E8          ;
CODE_138F2C:    CPX $0718                   ; $13:8F2C: EC 18 07    ;
CODE_138F2F:    BNE CODE_138F16             ; $13:8F2F: D0 E5       ;
CODE_138F31:    LDA #$0066                  ; $13:8F31: A9 66 00    ;
CODE_138F34:    TAX                         ; $13:8F34: AA          ;
CODE_138F35:    LDA #$C43B                  ; $13:8F35: A9 3B C4    ;
CODE_138F38:    STA $7FF200,x               ; $13:8F38: 9F 00 F2 7F ;
CODE_138F3C:    INX                         ; $13:8F3C: E8          ;
CODE_138F3D:    INX                         ; $13:8F3D: E8          ;
CODE_138F3E:    CPX #$013A                  ; $13:8F3E: E0 3A 01    ;
CODE_138F41:    BNE CODE_138F35             ; $13:8F41: D0 F2       ;
CODE_138F43:    SEP #$30                    ; $13:8F43: E2 30       ;
CODE_138F45:    LDA $0232                   ; $13:8F45: AD 32 02    ;
CODE_138F48:    BNE CODE_138FA9             ; $13:8F48: D0 5F       ;
CODE_138F4A:    LDA #$CA                    ; $13:8F4A: A9 CA       ;
CODE_138F4C:    STA $0237                   ; $13:8F4C: 8D 37 02    ;
CODE_138F4F:    LDX #$FF                    ; $13:8F4F: A2 FF       ;
CODE_138F51:    LDY #$FC                    ; $13:8F51: A0 FC       ;
CODE_138F53:    LDA $0231                   ; $13:8F53: AD 31 02    ;
CODE_138F56:    BNE CODE_138F5C             ; $13:8F56: D0 04       ;
CODE_138F58:    LDX #$01                    ; $13:8F58: A2 01       ;
CODE_138F5A:    LDY #$04                    ; $13:8F5A: A0 04       ;
CODE_138F5C:    TYA                         ; $13:8F5C: 98          ;
CODE_138F5D:    CLC                         ; $13:8F5D: 18          ;
CODE_138F5E:    ADC $0245                   ; $13:8F5E: 6D 45 02    ;
CODE_138F61:    STA $0245                   ; $13:8F61: 8D 45 02    ;
CODE_138F64:    LDA $023D                   ; $13:8F64: AD 3D 02    ;
CODE_138F67:    AND #$20                    ; $13:8F67: 29 20       ;
CODE_138F69:    ORA $0245                   ; $13:8F69: 0D 45 02    ;
CODE_138F6C:    STA $023D                   ; $13:8F6C: 8D 3D 02    ;
CODE_138F6F:    LDA $023E                   ; $13:8F6F: AD 3E 02    ;
CODE_138F72:    AND #$40                    ; $13:8F72: 29 40       ;
CODE_138F74:    ORA $0245                   ; $13:8F74: 0D 45 02    ;
CODE_138F77:    STA $023E                   ; $13:8F77: 8D 3E 02    ;
CODE_138F7A:    LDA $023F                   ; $13:8F7A: AD 3F 02    ;
CODE_138F7D:    AND #$80                    ; $13:8F7D: 29 80       ;
CODE_138F7F:    ORA $0245                   ; $13:8F7F: 0D 45 02    ;
CODE_138F82:    STA $023F                   ; $13:8F82: 8D 3F 02    ;
CODE_138F85:    TXA                         ; $13:8F85: 8A          ;
CODE_138F86:    CLC                         ; $13:8F86: 18          ;
CODE_138F87:    ADC $022B                   ; $13:8F87: 6D 2B 02    ;
CODE_138F8A:    STA $022B                   ; $13:8F8A: 8D 2B 02    ;
CODE_138F8D:    BMI CODE_138F95             ; $13:8F8D: 30 06       ;
CODE_138F8F:    CMP #$05                    ; $13:8F8F: C9 05       ;
CODE_138F91:    BEQ CODE_138F9F             ; $13:8F91: F0 0C       ;
CODE_138F93:    BRA CODE_138FA9             ; $13:8F93: 80 14       ;

CODE_138F95:    STZ $022B                   ; $13:8F95: 9C 2B 02    ;
CODE_138F98:    LDA #$02                    ; $13:8F98: A9 02       ;
CODE_138F9A:    STA $0722                   ; $13:8F9A: 8D 22 07    ;
CODE_138F9D:    BRA CODE_138FA4             ; $13:8F9D: 80 05       ;

CODE_138F9F:    LDA #$C0                    ; $13:8F9F: A9 C0       ;
CODE_138FA1:    STA $0237                   ; $13:8FA1: 8D 37 02    ;
CODE_138FA4:    LDA #$01                    ; $13:8FA4: A9 01       ;
CODE_138FA6:    STA $0232                   ; $13:8FA6: 8D 32 02    ;
CODE_138FA9:    LDA #$88                    ; $13:8FA9: A9 88       ;
CODE_138FAB:    STA $023A                   ; $13:8FAB: 8D 3A 02    ;
CODE_138FAE:    LDA #$17                    ; $13:8FAE: A9 17       ;
CODE_138FB0:    STA $0243                   ; $13:8FB0: 8D 43 02    ;
CODE_138FB3:    STA $023B                   ; $13:8FB3: 8D 3B 02    ;
CODE_138FB6:    RTL                         ; $13:8FB6: 6B          ;

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
                
CODE_138FD5:    PHB                         ; $13:8FD5: 8B          ;
CODE_138FD6:    LDA #$7F                    ; $13:8FD6: A9 7F       ;
CODE_138FD8:    PHA                         ; $13:8FD8: 48          ;
CODE_138FD9:    PLB                         ; $13:8FD9: AB          ;
CODE_138FDA:    REP #$30                    ; $13:8FDA: C2 30       ;
CODE_138FDC:    LDX #$01A0                  ; $13:8FDC: A2 A0 01    ;
CODE_138FDF:    LDA #$00FF                  ; $13:8FDF: A9 FF 00    ;
CODE_138FE2:    STA $F000,x                 ; $13:8FE2: 9D 00 F0    ;
CODE_138FE5:    STA $F002,x                 ; $13:8FE5: 9D 02 F0    ;
CODE_138FE8:    STA $F004,x                 ; $13:8FE8: 9D 04 F0    ;
CODE_138FEB:    STA $F006,x                 ; $13:8FEB: 9D 06 F0    ;
CODE_138FEE:    STA $F008,x                 ; $13:8FEE: 9D 08 F0    ;
CODE_138FF1:    STA $F00A,x                 ; $13:8FF1: 9D 0A F0    ;
CODE_138FF4:    STA $F00C,x                 ; $13:8FF4: 9D 0C F0    ;
CODE_138FF7:    STA $F00E,x                 ; $13:8FF7: 9D 0E F0    ;
CODE_138FFA:    STA $F010,x                 ; $13:8FFA: 9D 10 F0    ;
CODE_138FFD:    STA $F012,x                 ; $13:8FFD: 9D 12 F0    ;
CODE_139000:    STA $F014,x                 ; $13:9000: 9D 14 F0    ;
CODE_139003:    STA $F016,x                 ; $13:9003: 9D 16 F0    ;
CODE_139006:    STA $F018,x                 ; $13:9006: 9D 18 F0    ;
CODE_139009:    STA $F01A,x                 ; $13:9009: 9D 1A F0    ;
CODE_13900C:    STA $F01C,x                 ; $13:900C: 9D 1C F0    ;
CODE_13900F:    STA $F01E,x                 ; $13:900F: 9D 1E F0    ;
CODE_139012:    STA $F200,x                 ; $13:9012: 9D 00 F2    ;
CODE_139015:    STA $F202,x                 ; $13:9015: 9D 02 F2    ;
CODE_139018:    STA $F204,x                 ; $13:9018: 9D 04 F2    ;
CODE_13901B:    STA $F206,x                 ; $13:901B: 9D 06 F2    ;
CODE_13901E:    STA $F208,x                 ; $13:901E: 9D 08 F2    ;
CODE_139021:    STA $F20A,x                 ; $13:9021: 9D 0A F2    ;
CODE_139024:    STA $F20C,x                 ; $13:9024: 9D 0C F2    ;
CODE_139027:    STA $F20E,x                 ; $13:9027: 9D 0E F2    ;
CODE_13902A:    STA $F210,x                 ; $13:902A: 9D 10 F2    ;
CODE_13902D:    STA $F212,x                 ; $13:902D: 9D 12 F2    ;
CODE_139030:    STA $F214,x                 ; $13:9030: 9D 14 F2    ;
CODE_139033:    STA $F216,x                 ; $13:9033: 9D 16 F2    ;
CODE_139036:    STA $F218,x                 ; $13:9036: 9D 18 F2    ;
CODE_139039:    STA $F21A,x                 ; $13:9039: 9D 1A F2    ;
CODE_13903C:    STA $F21C,x                 ; $13:903C: 9D 1C F2    ;
CODE_13903F:    STA $F21E,x                 ; $13:903F: 9D 1E F2    ;
CODE_139042:    TXA                         ; $13:9042: 8A          ;
CODE_139043:    SEC                         ; $13:9043: 38          ;
CODE_139044:    SBC #$0020                  ; $13:9044: E9 20 00    ;
CODE_139047:    TAX                         ; $13:9047: AA          ;
CODE_139048:    BPL CODE_138FDF             ; $13:9048: 10 95       ;
CODE_13904A:    SEP #$30                    ; $13:904A: E2 30       ;
CODE_13904C:    PLB                         ; $13:904C: AB          ;
CODE_13904D:    RTL                         ; $13:904D: 6B          ;

CODE_13904E:    LDX #$FF                    ; $13:904E: A2 FF       ;
CODE_139050:    LDA.l DATA_14C563,x                 ; $13:9050: BF 63 C5 14 ;
CODE_139054:    STA $14BB,x                 ; $13:9054: 9D BB 14    ;
CODE_139057:    DEX                         ; $13:9057: CA          ;
CODE_139058:    CPX #$FF                    ; $13:9058: E0 FF       ;
CODE_13905A:    BNE CODE_139050             ; $13:905A: D0 F4       ;
CODE_13905C:    STX $14C5                   ; $13:905C: 8E C5 14    ;
CODE_13905F:    JSR CODE_139067             ; $13:905F: 20 67 90    ;
CODE_139062:    LDA #$02                    ; $13:9062: A9 02       ;
CODE_139064:    STA $11                     ; $13:9064: 85 11       ;
CODE_139066:    RTL                         ; $13:9066: 6B          ;

CODE_139067:    LDX $0635                   ; $13:9067: AE 35 06    ;
CODE_13906A:    LDY $0533                   ; $13:906A: AC 33 05    ;
CODE_13906D:    INY                         ; $13:906D: C8          ;
CODE_13906E:    TYA                         ; $13:906E: 98          ;
CODE_13906F:    JSR CODE_1390C9             ; $13:906F: 20 C9 90    ;
CODE_139072:    INX                         ; $13:9072: E8          ;
CODE_139073:    TXA                         ; $13:9073: 8A          ;
CODE_139074:    ORA #$00                    ; $13:9074: 09 00       ;
CODE_139076:    STA $14BF                   ; $13:9076: 8D BF 14    ;
CODE_139079:    LDY $04EE                   ; $13:9079: AC EE 04    ;
CODE_13907C:    DEY                         ; $13:907C: 88          ;
CODE_13907D:    TYA                         ; $13:907D: 98          ;
CODE_13907E:    JSR CODE_1390C9             ; $13:907E: 20 C9 90    ;
CODE_139081:    STY $14C9                   ; $13:9081: 8C C9 14    ;
CODE_139084:    STA $14CB                   ; $13:9084: 8D CB 14    ;
CODE_139087:    LDY #$0C                    ; $13:9087: A0 0C       ;
CODE_139089:    LDA #$2F                    ; $13:9089: A9 2F       ;
CODE_13908B:    STA $14CD,y                 ; $13:908B: 99 CD 14    ;
CODE_13908E:    DEY                         ; $13:908E: 88          ;
CODE_13908F:    DEY                         ; $13:908F: 88          ;
CODE_139090:    CPY #$02                    ; $13:9090: C0 02       ;
CODE_139092:    BNE CODE_139089             ; $13:9092: D0 F5       ;
CODE_139094:    LDY $0635                   ; $13:9094: AC 35 06    ;
CODE_139097:    LDA $0533                   ; $13:9097: AD 33 05    ;
CODE_13909A:    SEC                         ; $13:909A: 38          ;
CODE_13909B:    SBC.w DATA_11C9B4,y                 ; $13:909B: F9 B4 C9    ;
CODE_13909E:    STA $0629                   ; $13:909E: 8D 29 06    ;
CODE_1390A1:    CLC                         ; $13:90A1: 18          ;
CODE_1390A2:    ADC #$01                    ; $13:90A2: 69 01       ;
CODE_1390A4:    STA $14C3                   ; $13:90A4: 8D C3 14    ;
CODE_1390A7:    LDA.w DATA_11C9B4+1,y                   ; $13:90A7: B9 B5 C9    ;
CODE_1390AA:    SEC                         ; $13:90AA: 38          ;
CODE_1390AB:    SBC.w DATA_11C9B4,y                 ; $13:90AB: F9 B4 C9    ;
CODE_1390AE:    STA $03                     ; $13:90AE: 85 03       ;
CODE_1390B0:    LDX #$00                    ; $13:90B0: A2 00       ;
CODE_1390B2:    TXY                         ; $13:90B2: 9B          ;
CODE_1390B3:    LDA #$FD                    ; $13:90B3: A9 FD       ;
CODE_1390B5:    CPX $0629                   ; $13:90B5: EC 29 06    ;
CODE_1390B8:    BNE CODE_1390BC             ; $13:90B8: D0 02       ;
CODE_1390BA:    LDA #$F6                    ; $13:90BA: A9 F6       ;
CODE_1390BC:    STA $14D1,y                 ; $13:90BC: 99 D1 14    ;
CODE_1390BF:    INY                         ; $13:90BF: C8          ;
CODE_1390C0:    INY                         ; $13:90C0: C8          ;
CODE_1390C1:    INY                         ; $13:90C1: C8          ;
CODE_1390C2:    INY                         ; $13:90C2: C8          ;
CODE_1390C3:    INX                         ; $13:90C3: E8          ;
CODE_1390C4:    CPX $03                     ; $13:90C4: E4 03       ;
CODE_1390C6:    BCC CODE_1390B3             ; $13:90C6: 90 EB       ;
CODE_1390C8:    RTS                         ; $13:90C8: 60          ;
CODE_1390C9:    LDY #$00                    ; $13:90C9: A0 00       ;
CODE_1390CB:    CMP #$0A                    ; $13:90CB: C9 0A       ;
CODE_1390CD:    BCC CODE_1390D5             ; $13:90CD: 90 06       ;
CODE_1390CF:    SBC #$0A                    ; $13:90CF: E9 0A       ;
CODE_1390D1:    INY                         ; $13:90D1: C8          ;
CODE_1390D2:    JMP CODE_1390CB             ; $13:90D2: 4C CB 90    ;

CODE_1390D5:    ORA #$00                    ; $13:90D5: 09 00       ;
CODE_1390D7:    CPY #$00                    ; $13:90D7: C0 00       ;
CODE_1390D9:    BNE CODE_1390DD             ; $13:90D9: D0 02       ;
CODE_1390DB:    LDY #$2F                    ; $13:90DB: A0 2F       ;
CODE_1390DD:    RTS                         ; $13:90DD: 60          ;

CODE_1390DE:    LDA $38,x                   ; $13:90DE: B5 38       ;
CODE_1390E0:    ASL A                       ; $13:90E0: 0A          ;
CODE_1390E1:    ASL A                       ; $13:90E1: 0A          ;
CODE_1390E2:    ASL A                       ; $13:90E2: 0A          ;
CODE_1390E3:    ASL A                       ; $13:90E3: 0A          ;
CODE_1390E4:    CLC                         ; $13:90E4: 18          ;
CODE_1390E5:    ADC $3E,x                   ; $13:90E5: 75 3E       ;
CODE_1390E7:    STA $3E,x                   ; $13:90E7: 95 3E       ;
CODE_1390E9:    LDY #$00                    ; $13:90E9: A0 00       ;
CODE_1390EB:    LDA $38,x                   ; $13:90EB: B5 38       ;
CODE_1390ED:    PHP                         ; $13:90ED: 08          ;
CODE_1390EE:    LSR A                       ; $13:90EE: 4A          ;
CODE_1390EF:    LSR A                       ; $13:90EF: 4A          ;
CODE_1390F0:    LSR A                       ; $13:90F0: 4A          ;
CODE_1390F1:    LSR A                       ; $13:90F1: 4A          ;
CODE_1390F2:    PLP                         ; $13:90F2: 28          ;
CODE_1390F3:    BPL CODE_1390F8             ; $13:90F3: 10 03       ;
CODE_1390F5:    ORA #$F0                    ; $13:90F5: 09 F0       ;
CODE_1390F7:    DEY                         ; $13:90F7: 88          ;
CODE_1390F8:    ADC $44,x                   ; $13:90F8: 75 44       ;
CODE_1390FA:    STA $44,x                   ; $13:90FA: 95 44       ;
CODE_1390FC:    TYA                         ; $13:90FC: 98          ;
CODE_1390FD:    ADC $4A,x                   ; $13:90FD: 75 4A       ;
CODE_1390FF:    STA $4A,x                   ; $13:90FF: 95 4A       ;
CODE_139101:    RTL                         ; $13:9101: 6B          ;

DATA_139102:        db $E0,$E2,$E4,$E6,$E8,$EA,$EC,$EE
                    db $C0,$C2,$C4,$C6,$C8,$CA
                 
CODE_139110:    LDA $0429                   ; $13:9110: AD 29 04    ;
CODE_139113:    STA $0712                   ; $13:9113: 8D 12 07    ;
CODE_139116:    LDA $021F                   ; $13:9116: AD 1F 02    ;
CODE_139119:    STA $0713                   ; $13:9119: 8D 13 07    ;
CODE_13911C:    REP #$20                    ; $13:911C: C2 20       ;
CODE_13911E:    LDA $0712                   ; $13:911E: AD 12 07    ;
CODE_139121:    BPL CODE_13912A             ; $13:9121: 10 07       ;
CODE_139123:    CMP #$FF80                  ; $13:9123: C9 80 FF    ;
CODE_139126:    BCS CODE_139131                     ; $13:9126: B0 09       ;
CODE_139128:    BRA CODE_139137             ; $13:9128: 80 0D       ;

CODE_13912A:    CMP #$0180                  ; $13:912A: C9 80 01    ;
CODE_13912D:    BCC CODE_139131             ; $13:912D: 90 02       ;
CODE_13912F:    BRA CODE_139137             ; $13:912F: 80 06       ;

CODE_139131:    SEP #$20                    ; $13:9131: E2 20       ;
CODE_139133:    LDA $EE                     ; $13:9133: A5 EE       ;
CODE_139135:    BEQ CODE_13913A             ; $13:9135: F0 03       ;
CODE_139137:    SEP #$20                    ; $13:9137: E2 20       ;
CODE_139139:    RTL                         ; $13:9139: 6B          ;

CODE_13913A:    LDA $042C                   ; $13:913A: AD 2C 04    ;
CODE_13913D:    STA $01                     ; $13:913D: 85 01       ;
CODE_13913F:    LDA $6F,x                   ; $13:913F: B5 6F       ;
CODE_139141:    LSR A                       ; $13:9141: 4A          ;
CODE_139142:    PHP                         ; $13:9142: 08          ;
CODE_139143:    LDA $65,x                   ; $13:9143: B5 65       ;
CODE_139145:    AND #$80                    ; $13:9145: 29 80       ;
CODE_139147:    PLP                         ; $13:9147: 28          ;
CODE_139148:    BCC CODE_13914C             ; $13:9148: 90 02       ;
CODE_13914A:    ORA #$40                    ; $13:914A: 09 40       ;
CODE_13914C:    STA $02                     ; $13:914C: 85 02       ;
CODE_13914E:    REP #$30                    ; $13:914E: C2 30       ;
CODE_139150:    LDY $02F6                   ; $13:9150: AC F6 02    ;
CODE_139153:    LDA $9F,x                   ; $13:9153: B5 9F       ;
CODE_139155:    AND #$00FF                  ; $13:9155: 29 FF 00    ;
CODE_139158:    ASL A                       ; $13:9158: 0A          ;
CODE_139159:    TAX                         ; $13:9159: AA          ;
CODE_13915A:    LDA $0712                   ; $13:915A: AD 12 07    ;
CODE_13915D:    CLC                         ; $13:915D: 18          ;
CODE_13915E:    ADC #$0010                  ; $13:915E: 69 10 00    ;
CODE_139161:    SEP #$20                    ; $13:9161: E2 20       ;
CODE_139163:    XBA                         ; $13:9163: EB          ;
CODE_139164:    STA $0714                   ; $13:9164: 8D 14 07    ;
CODE_139167:    LDA $0712                   ; $13:9167: AD 12 07    ;
CODE_13916A:    STA $0800,y                 ; $13:916A: 99 00 08    ;
CODE_13916D:    CLC                         ; $13:916D: 18          ;
CODE_13916E:    ADC #$10                    ; $13:916E: 69 10       ;
CODE_139170:    STA $0804,y                 ; $13:9170: 99 04 08    ;
CODE_139173:    LDA $01                     ; $13:9173: A5 01       ;
CODE_139175:    STA $0801,y                 ; $13:9175: 99 01 08    ;
CODE_139178:    STA $0805,y                 ; $13:9178: 99 05 08    ;
CODE_13917B:    LDA.l DATA_139102,x                 ; $13:917B: BF 02 91 13 ;
CODE_13917F:    STA $0802,y                 ; $13:917F: 99 02 08    ;
CODE_139182:    LDA.l DATA_139102+1,x               ; $13:9182: BF 03 91 13 ;
CODE_139186:    STA $0806,y                 ; $13:9186: 99 06 08    ;
CODE_139189:    LDA $02                     ; $13:9189: A5 02       ;
CODE_13918B:    ORA #$23                    ; $13:918B: 09 23       ;
CODE_13918D:    STA $0803,y                 ; $13:918D: 99 03 08    ;
CODE_139190:    STA $0807,y                 ; $13:9190: 99 07 08    ;
CODE_139193:    AND #$40                    ; $13:9193: 29 40       ;
CODE_139195:    BEQ CODE_1391A5             ; $13:9195: F0 0E       ;
CODE_139197:    LDA $0802,y                 ; $13:9197: B9 02 08    ;
CODE_13919A:    PHA                         ; $13:919A: 48          ;
CODE_13919B:    LDA $0806,y                 ; $13:919B: B9 06 08    ;
CODE_13919E:    STA $0802,y                 ; $13:919E: 99 02 08    ;
CODE_1391A1:    PLA                         ; $13:91A1: 68          ;
CODE_1391A2:    STA $0806,y                 ; $13:91A2: 99 06 08    ;
CODE_1391A5:    REP #$20                    ; $13:91A5: C2 20       ;
CODE_1391A7:    TYA                         ; $13:91A7: 98          ;
CODE_1391A8:    LSR A                       ; $13:91A8: 4A          ;
CODE_1391A9:    LSR A                       ; $13:91A9: 4A          ;
CODE_1391AA:    TAY                         ; $13:91AA: A8          ;
CODE_1391AB:    SEP #$20                    ; $13:91AB: E2 20       ;
CODE_1391AD:    LDA $0713                   ; $13:91AD: AD 13 07    ;
CODE_1391B0:    BPL CODE_1391B5             ; $13:91B0: 10 03       ;
CODE_1391B2:    EOR #$FF                    ; $13:91B2: 49 FF       ;
CODE_1391B4:    INC A                       ; $13:91B4: 1A          ;
CODE_1391B5:    AND #$01                    ; $13:91B5: 29 01       ;
CODE_1391B7:    ORA #$02                    ; $13:91B7: 09 02       ;
CODE_1391B9:    STA $0A20,y                 ; $13:91B9: 99 20 0A    ;
CODE_1391BC:    LDA $0714                   ; $13:91BC: AD 14 07    ;
CODE_1391BF:    BPL CODE_1391C4             ; $13:91BF: 10 03       ;
CODE_1391C1:    EOR #$FF                    ; $13:91C1: 49 FF       ;
CODE_1391C3:    INC A                       ; $13:91C3: 1A          ;
CODE_1391C4:    AND #$01                    ; $13:91C4: 29 01       ;
CODE_1391C6:    ORA #$02                    ; $13:91C6: 09 02       ;
CODE_1391C8:    STA $0A21,y                 ; $13:91C8: 99 21 0A    ;
CODE_1391CB:    SEP #$10                    ; $13:91CB: E2 10       ;
CODE_1391CD:    LDX $12                     ; $13:91CD: A6 12       ;
CODE_1391CF:    RTL                         ; $13:91CF: 6B          ;

DATA_1391D0:        db $1D,$21,$2C,$1C,$1F,$2A

DATA_1391D6:        db $0A,$02,$0A,$04,$0A,$06
          
CODE_1391DC:    PHX                     ; $13:91DC: DA          ;
CODE_1391DD:    LDA $90,x                   ; $13:91DD: B5 90       ;
CODE_1391DF:    LDX #$05                    ; $13:91DF: A2 05       ;
CODE_1391E1:    CMP.l DATA_1391D0,x                 ; $13:91E1: DF D0 91 13 ;
CODE_1391E5:    BEQ CODE_1391EF             ; $13:91E5: F0 08       ;
CODE_1391E7:    DEX                         ; $13:91E7: CA          ;
CODE_1391E8:    BPL CODE_1391E1             ; $13:91E8: 10 F7       ;
CODE_1391EA:    LDA $08                     ; $13:91EA: A5 08       ;
CODE_1391EC:    CLC                         ; $13:91EC: 18          ;
CODE_1391ED:    BRA CODE_139207             ; $13:91ED: 80 18       ;

CODE_1391EF:    LDX $0254                   ; $13:91EF: AE 54 02    ;
CODE_1391F2:    LDA.l DATA_1391D6,x                 ; $13:91F2: BF D6 91 13 ;
CODE_1391F6:    STA $0712                   ; $13:91F6: 8D 12 07    ;
CODE_1391F9:    LDA $0213                   ; $13:91F9: AD 13 02    ;
CODE_1391FC:    AND #$F1                    ; $13:91FC: 29 F1       ;
CODE_1391FE:    ORA $0712                   ; $13:91FE: 0D 12 07    ;
CODE_139201:    STA $0213                   ; $13:9201: 8D 13 02    ;
CODE_139204:    LDA $08                     ; $13:9204: A5 08       ;
CODE_139206:    SEC                         ; $13:9206: 38          ;
CODE_139207:    PLX                         ; $13:9207: FA          ;
CODE_139208:    RTL                         ; $13:9208: 6B          ;

DATA_139209:        db $C4,$D4,$C5

DATA_13920C:        db $FD,$FF,$0B,$00
            
CODE_139210:    LDA $90,x               ; $13:9210: B5 90       ;
CODE_139212:    CMP #$37                ; $13:9212: C9 37       ;
CODE_139214:    BNE CODE_139252         ; $13:9214: D0 3C       ;
CODE_139216:    LDA $10                 ; $13:9216: A5 10       ;
CODE_139218:    AND #$03                    ; $13:9218: 29 03       ;
CODE_13921A:    BNE CODE_13921E             ; $13:921A: D0 02       ;
CODE_13921C:    INC $9F,x                   ; $13:921C: F6 9F       ;
CODE_13921E:    LDA $9F,x                   ; $13:921E: B5 9F       ;
CODE_139220:    CMP #$03                    ; $13:9220: C9 03       ;
CODE_139222:    BCC CODE_139228             ; $13:9222: 90 04       ;
CODE_139224:    LDA #$00                    ; $13:9224: A9 00       ;
CODE_139226:    STZ $9F,x                   ; $13:9226: 74 9F       ;
CODE_139228:    STA $0714                   ; $13:9228: 8D 14 07    ;
CODE_13922B:    LDA $0429                   ; $13:922B: AD 29 04    ;
CODE_13922E:    STA $0712                   ; $13:922E: 8D 12 07    ;
CODE_139231:    LDA $021F                   ; $13:9231: AD 1F 02    ;
CODE_139234:    STA $0713                   ; $13:9234: 8D 13 07    ;
CODE_139237:    REP #$20                    ; $13:9237: C2 20       ;
CODE_139239:    LDA $0712                   ; $13:9239: AD 12 07    ;
CODE_13923C:    BPL CODE_139245             ; $13:923C: 10 07       ;
CODE_13923E:    CMP #$FF80                  ; $13:923E: C9 80 FF    ;
CODE_139241:    BCS CODE_13924C                     ; $13:9241: B0 09       ;
CODE_139243:    BRA CODE_139252             ; $13:9243: 80 0D       ;

CODE_139245:    CMP #$0180                  ; $13:9245: C9 80 01    ;
CODE_139248:    BCC CODE_13924C             ; $13:9248: 90 02       ;
CODE_13924A:    BRA CODE_139252             ; $13:924A: 80 06       ;

CODE_13924C:    SEP #$20                    ; $13:924C: E2 20       ;
CODE_13924E:    LDA $EE                     ; $13:924E: A5 EE       ;
CODE_139250:    BEQ CODE_139255             ; $13:9250: F0 03       ;
CODE_139252:    SEP #$20                    ; $13:9252: E2 20       ;
CODE_139254:    RTL                         ; $13:9254: 6B          ;

CODE_139255:    LDA $6F,x                   ; $13:9255: B5 6F       ;
CODE_139257:    DEC A                       ; $13:9257: 3A          ;
CODE_139258:    ASL A                       ; $13:9258: 0A          ;
CODE_139259:    TAX                         ; $13:9259: AA          ;
CODE_13925A:    REP #$20                    ; $13:925A: C2 20       ;
CODE_13925C:    LDA.l DATA_13920C,x                 ; $13:925C: BF 0C 92 13 ;
CODE_139260:    CLC                         ; $13:9260: 18          ;
CODE_139261:    ADC $0712                   ; $13:9261: 6D 12 07    ;
CODE_139264:    STA $0712                   ; $13:9264: 8D 12 07    ;
CODE_139267:    SEP #$20                    ; $13:9267: E2 20       ;
CODE_139269:    LDX $0714                   ; $13:9269: AE 14 07    ;
CODE_13926C:    LDA.l DATA_139209,x                 ; $13:926C: BF 09 92 13 ;
CODE_139270:    STA $0716                   ; $13:9270: 8D 16 07    ;
CODE_139273:    REP #$30                    ; $13:9273: C2 30       ;
CODE_139275:    LDA $02F6                   ; $13:9275: AD F6 02    ;
CODE_139278:    CLC                         ; $13:9278: 18          ;
CODE_139279:    ADC #$0004                  ; $13:9279: 69 04 00    ;
CODE_13927C:    TAY                         ; $13:927C: A8          ;
CODE_13927D:    SEP #$20                    ; $13:927D: E2 20       ;
CODE_13927F:    LDA $0712                   ; $13:927F: AD 12 07    ;
CODE_139282:    STA $0800,y                 ; $13:9282: 99 00 08    ;
CODE_139285:    LDA $042C                   ; $13:9285: AD 2C 04    ;
CODE_139288:    CLC                         ; $13:9288: 18          ;
CODE_139289:    ADC #$FB                    ; $13:9289: 69 FB       ;
CODE_13928B:    STA $0801,y                 ; $13:928B: 99 01 08    ;
CODE_13928E:    LDA $0716                   ; $13:928E: AD 16 07    ;
CODE_139291:    STA $0802,y                 ; $13:9291: 99 02 08    ;
CODE_139294:    LDA #$24                    ; $13:9294: A9 24       ;
CODE_139296:    STA $0803,y                 ; $13:9296: 99 03 08    ;
CODE_139299:    REP #$20                    ; $13:9299: C2 20       ;
CODE_13929B:    TYA                         ; $13:929B: 98          ;
CODE_13929C:    LSR A                       ; $13:929C: 4A          ;
CODE_13929D:    LSR A                       ; $13:929D: 4A          ;
CODE_13929E:    TAY                         ; $13:929E: A8          ;
CODE_13929F:    SEP #$20                    ; $13:929F: E2 20       ;
CODE_1392A1:    LDA $0713                   ; $13:92A1: AD 13 07    ;
CODE_1392A4:    BPL CODE_1392A9             ; $13:92A4: 10 03       ;
CODE_1392A6:    EOR #$FF                    ; $13:92A6: 49 FF       ;
CODE_1392A8:    INC A                       ; $13:92A8: 1A          ;
CODE_1392A9:    AND #$01                    ; $13:92A9: 29 01       ;
CODE_1392AB:    STA $0A20,y                 ; $13:92AB: 99 20 0A    ;
CODE_1392AE:    SEP #$10                    ; $13:92AE: E2 10       ;
CODE_1392B0:    LDX $12                     ; $13:92B0: A6 12       ;
CODE_1392B2:    RTL                         ; $13:92B2: 6B          ;

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
                                            
CODE_139300:    ASL A                   ; $13:9300: 0A          ;
CODE_139301:    TAX                     ; $13:9301: AA          ;
CODE_139302:    JMP (PNTR_139305,x)             ; $13:9302: 7C 05 93    ;

PNTR_139305:        dw CODE_1393DC
                    dw CODE_1393DC
             
CODE_139309:    ASL                     ; $13:9309: 0A          ;
CODE_13930A:    TAX                         ; $13:930A: AA          ;
CODE_13930B:    JMP (PNTR_13930E,x)                 ; $13:930B: 7C 0E 93    ;

PNTR_13930E:        dw CODE_139439
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
                    dw CODE_139472
               
CODE_139318:    LDA $050F                   ; $13:9318: AD 0F 05    ;
CODE_13931B:    ASL A                   ; $13:931B: 0A          ;
CODE_13931C:    TAX                     ; $13:931C: AA          ;
CODE_13931D:    JMP (PNTR_139320,x)                 ; $13:931D: 7C 20 93    ;

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
                                   
CODE_1393DC:    LDA [$05],y             ; $13:93DC: B7 05       ;
CODE_1393DE:    SEC                     ; $13:93DE: 38          ;
CODE_1393DF:    SBC #$70                    ; $13:93DF: E9 70       ;
CODE_1393E1:    LSR A                       ; $13:93E1: 4A          ;
CODE_1393E2:    LSR A                       ; $13:93E2: 4A          ;
CODE_1393E3:    LSR A                       ; $13:93E3: 4A          ;
CODE_1393E4:    LSR A                       ; $13:93E4: 4A          ;
CODE_1393E5:    TAX                         ; $13:93E5: AA          ;
CODE_1393E6:    LDA.l DATA_1393DA,x                 ; $13:93E6: BF DA 93 13 ;
CODE_1393EA:    STA $0712                   ; $13:93EA: 8D 12 07    ;
CODE_1393ED:    LDA $050E                   ; $13:93ED: AD 0E 05    ;
CODE_1393F0:    STA $08                     ; $13:93F0: 85 08       ;
CODE_1393F2:    LDA $E9                     ; $13:93F2: A5 E9       ;
CODE_1393F4:    STA $0E                     ; $13:93F4: 85 0E       ;
CODE_1393F6:    LDX $0E                     ; $13:93F6: A6 0E       ;
CODE_1393F8:    JSR CODE_1397DC             ; $13:93F8: 20 DC 97    ;
CODE_1393FB:    LDX #$07                    ; $13:93FB: A2 07       ;
CODE_1393FD:    LDA $E7                     ; $13:93FD: A5 E7       ;
CODE_1393FF:    AND #$F0                    ; $13:93FF: 29 F0       ;
CODE_139401:    TAY                         ; $13:9401: A8          ;
CODE_139402:    LDA $0712                   ; $13:9402: AD 12 07    ;
CODE_139405:    XBA                         ; $13:9405: EB          ;
CODE_139406:    LDA $0712                   ; $13:9406: AD 12 07    ;
CODE_139409:    REP #$20                    ; $13:9409: C2 20       ;
CODE_13940B:    STA [$01],y                 ; $13:940B: 97 01       ;
CODE_13940D:    SEP #$20                    ; $13:940D: E2 20       ;
CODE_13940F:    INY                         ; $13:940F: C8          ;
CODE_139410:    INY                         ; $13:9410: C8          ;
CODE_139411:    DEX                         ; $13:9411: CA          ;
CODE_139412:    BPL CODE_139409             ; $13:9412: 10 F5       ;
CODE_139414:    DEC $08                     ; $13:9414: C6 08       ;
CODE_139416:    BMI CODE_139430             ; $13:9416: 30 18       ;
CODE_139418:    LDA $E7                     ; $13:9418: A5 E7       ;
CODE_13941A:    CLC                         ; $13:941A: 18          ;
CODE_13941B:    ADC #$10                    ; $13:941B: 69 10       ;
CODE_13941D:    CMP #$F0                    ; $13:941D: C9 F0       ;
CODE_13941F:    BCC CODE_13942B             ; $13:941F: 90 0A       ;
CODE_139421:    INC $0E                     ; $13:9421: E6 0E       ;
CODE_139423:    LDA $0E                     ; $13:9423: A5 0E       ;
CODE_139425:    CMP #$0A                    ; $13:9425: C9 0A       ;
CODE_139427:    BEQ CODE_139430             ; $13:9427: F0 07       ;
CODE_139429:    LDA #$00                    ; $13:9429: A9 00       ;
CODE_13942B:    STA $E7                     ; $13:942B: 85 E7       ;
CODE_13942D:    BRL CODE_1393F6             ; $13:942D: 82 C6 FF    ;

CODE_139430:    RTS                         ; $13:9430: 60          ;

DATA_139431:        db $FF,$2A,$FF,$FF,$FF,$FF,$2D,$FF

CODE_139439:    LDA $E9                     ; $13:9439: A5 E9       ;
CODE_13943B:    STA $0247                   ; $13:943B: 8D 47 02    ;
CODE_13943E:    LDA #$80                    ; $13:943E: A9 80       ;
CODE_139440:    STA $0A                     ; $13:9440: 85 0A       ;
CODE_139442:    LDA #$31                    ; $13:9442: A9 31       ;
CODE_139444:    STA $09                     ; $13:9444: 85 09       ;
CODE_139446:    JSR CODE_139705             ; $13:9446: 20 05 97    ;
CODE_139449:    AND #$07                    ; $13:9449: 29 07       ;
CODE_13944B:    TAX                         ; $13:944B: AA          ;
CODE_13944C:    LDA.l DATA_139431,x                 ; $13:944C: BF 31 94 13 ;
CODE_139450:    STA [$01],y                 ; $13:9450: 97 01       ;
CODE_139452:    JSR CODE_1396D2             ; $13:9452: 20 D2 96    ;
CODE_139455:    CPY #$30                    ; $13:9455: C0 30       ;
CODE_139457:    BCC CODE_139446             ; $13:9457: 90 ED       ;
CODE_139459:    TYA                         ; $13:9459: 98          ;
CODE_13945A:    AND #$0F                    ; $13:945A: 29 0F       ;
CODE_13945C:    TAY                         ; $13:945C: A8          ;
CODE_13945D:    JSR CODE_1396B0             ; $13:945D: 20 B0 96    ;
CODE_139460:    LDA $0247                   ; $13:9460: AD 47 02    ;
CODE_139463:    STA $E9                     ; $13:9463: 85 E9       ;
CODE_139465:    CMP #$0A                    ; $13:9465: C9 0A       ;
CODE_139467:    BNE CODE_139446             ; $13:9467: D0 DD       ;
CODE_139469:    LDA #$00                    ; $13:9469: A9 00       ;
CODE_13946B:    STA $E9                     ; $13:946B: 85 E9       ;
CODE_13946D:    STA $E6                     ; $13:946D: 85 E6       ;
CODE_13946F:    STA $E5                     ; $13:946F: 85 E5       ;
CODE_139471:    RTS                         ; $13:9471: 60          ;

CODE_139472:    STZ $0E                     ; $13:9472: 64 0E       ;
CODE_139474:    LDA $E9                     ; $13:9474: A5 E9       ;
CODE_139476:    STA $0F                     ; $13:9476: 85 0F       ;
CODE_139478:    LDA $050F                   ; $13:9478: AD 0F 05    ;
CODE_13947B:    SEC                         ; $13:947B: 38          ;
CODE_13947C:    SBC #$01                    ; $13:947C: E9 01       ;
CODE_13947E:    ASL A                       ; $13:947E: 0A          ;
CODE_13947F:    TAX                         ; $13:947F: AA          ;
CODE_139480:    LDA.l PNTR_13DA0E,x                 ; $13:9480: BF 0E DA 13 ;
CODE_139484:    STA $C4                     ; $13:9484: 85 C4       ;
CODE_139486:    LDA.l PNTR_13DA0E+1,x               ; $13:9486: BF 0F DA 13 ;
CODE_13948A:    STA $C5                     ; $13:948A: 85 C5       ;
CODE_13948C:    LDA #$13                    ; $13:948C: A9 13       ;
CODE_13948E:    STA $C6                     ; $13:948E: 85 C6       ;
CODE_139490:    LDY $0E                     ; $13:9490: A4 0E       ;
CODE_139492:    LDA [$C4],y                 ; $13:9492: B7 C4       ;
CODE_139494:    CMP #$FF                    ; $13:9494: C9 FF       ;
CODE_139496:    BEQ CODE_1394B4             ; $13:9496: F0 1C       ;
CODE_139498:    CMP #$F0                    ; $13:9498: C9 F0       ;
CODE_13949A:    BEQ CODE_1394A9             ; $13:949A: F0 0D       ;
CODE_13949C:    STA $0D                     ; $13:949C: 85 0D       ;
CODE_13949E:    INY                         ; $13:949E: C8          ;
CODE_13949F:    LDA [$C4],y                 ; $13:949F: B7 C4       ;
CODE_1394A1:    LDY $0D                     ; $13:94A1: A4 0D       ;
CODE_1394A3:    STA [$01],y                 ; $13:94A3: 97 01       ;
CODE_1394A5:    INC $0E                     ; $13:94A5: E6 0E       ;
CODE_1394A7:    BRA CODE_1394B0             ; $13:94A7: 80 07       ;

CODE_1394A9:    INC $0F                     ; $13:94A9: E6 0F       ;
CODE_1394AB:    LDX $0F                     ; $13:94AB: A6 0F       ;
CODE_1394AD:    JSR CODE_1397DC             ; $13:94AD: 20 DC 97    ;
CODE_1394B0:    INC $0E                     ; $13:94B0: E6 0E       ;
CODE_1394B2:    BRA CODE_139490             ; $13:94B2: 80 DC       ;

CODE_1394B4:    RTS                         ; $13:94B4: 60          ;

CODE_1394B5:    LDX #$01                    ; $13:94B5: A2 01       ;
CODE_1394B7:    LDA $050F                   ; $13:94B7: AD 0F 05    ;
CODE_1394BA:    CLC                         ; $13:94BA: 18          ;
CODE_1394BB:    ADC #$10                    ; $13:94BB: 69 10       ;
CODE_1394BD:    CMP.l DATA_13D464,x                 ; $13:94BD: DF 64 D4 13 ;
CODE_1394C1:    BEQ CODE_1394C6             ; $13:94C1: F0 03       ;
CODE_1394C3:    DEX                         ; $13:94C3: CA          ;
CODE_1394C4:    BPL CODE_1394BD             ; $13:94C4: 10 F7       ;
CODE_1394C6:    LDY $E7                     ; $13:94C6: A4 E7       ;
CODE_1394C8:    LDA.l DATA_13D466,x                 ; $13:94C8: BF 66 D4 13 ;
CODE_1394CC:    STA [$01],y                 ; $13:94CC: 97 01       ;
CODE_1394CE:    RTS                         ; $13:94CE: 60          ;

CODE_1394CF:    LDX #$02                    ; $13:94CF: A2 02       ;
CODE_1394D1:    LDA $050F                   ; $13:94D1: AD 0F 05    ;
CODE_1394D4:    CLC                         ; $13:94D4: 18          ;
CODE_1394D5:    ADC #$10                    ; $13:94D5: 69 10       ;
CODE_1394D7:    CMP.l DATA_13D468,x                 ; $13:94D7: DF 68 D4 13 ;
CODE_1394DB:    BEQ CODE_1394E0             ; $13:94DB: F0 03       ;
CODE_1394DD:    DEX                         ; $13:94DD: CA          ;
CODE_1394DE:    BPL CODE_1394D7             ; $13:94DE: 10 F7       ;
CODE_1394E0:    TXA                         ; $13:94E0: 8A          ;
CODE_1394E1:    ASL A                       ; $13:94E1: 0A          ;
CODE_1394E2:    TAX                         ; $13:94E2: AA          ;
CODE_1394E3:    LDY $E7                     ; $13:94E3: A4 E7       ;
CODE_1394E5:    LDA.l DATA_13D46B,x                 ; $13:94E5: BF 6B D4 13 ;
CODE_1394E9:    STA [$01],y                 ; $13:94E9: 97 01       ;
CODE_1394EB:    INX                         ; $13:94EB: E8          ;
CODE_1394EC:    JSR CODE_1396B0             ; $13:94EC: 20 B0 96    ;
CODE_1394EF:    LDA.l DATA_13D46B,x                 ; $13:94EF: BF 6B D4 13 ;
CODE_1394F3:    STA [$01],y                 ; $13:94F3: 97 01       ;
CODE_1394F5:    RTS                         ; $13:94F5: 60          ;

CODE_1394F6:    LDX #$05                    ; $13:94F6: A2 05       ;
CODE_1394F8:    LDA $050F                   ; $13:94F8: AD 0F 05    ;
CODE_1394FB:    CLC                         ; $13:94FB: 18          ;
CODE_1394FC:    ADC #$10                    ; $13:94FC: 69 10       ;
CODE_1394FE:    CMP.l DATA_13D471,x                 ; $13:94FE: DF 71 D4 13 ;
CODE_139502:    BEQ CODE_139507             ; $13:9502: F0 03       ;
CODE_139504:    DEX                         ; $13:9504: CA          ;
CODE_139505:    BPL CODE_1394FE             ; $13:9505: 10 F7       ;
CODE_139507:    TXA                         ; $13:9507: 8A          ;
CODE_139508:    ASL A                       ; $13:9508: 0A          ;
CODE_139509:    TAX                         ; $13:9509: AA          ;
CODE_13950A:    LDY $E7                     ; $13:950A: A4 E7       ;
CODE_13950C:    LDA.l DATA_13D477,x                 ; $13:950C: BF 77 D4 13 ;
CODE_139510:    STA [$01],y                 ; $13:9510: 97 01       ;
CODE_139512:    INX                         ; $13:9512: E8          ;
CODE_139513:    JSR CODE_1396D2             ; $13:9513: 20 D2 96    ;
CODE_139516:    LDA.l DATA_13D477,x                 ; $13:9516: BF 77 D4 13 ;
CODE_13951A:    STA [$01],y                 ; $13:951A: 97 01       ;
CODE_13951C:    RTS                         ; $13:951C: 60          ;

CODE_13951D:    LDX #$04                    ; $13:951D: A2 04       ;
CODE_13951F:    LDA $050F                   ; $13:951F: AD 0F 05    ;
CODE_139522:    CLC                         ; $13:9522: 18          ;
CODE_139523:    ADC #$10                    ; $13:9523: 69 10       ;
CODE_139525:    CMP.l DATA_13D497,x                 ; $13:9525: DF 97 D4 13 ;
CODE_139529:    BEQ CODE_13952E             ; $13:9529: F0 03       ;
CODE_13952B:    DEX                         ; $13:952B: CA          ;
CODE_13952C:    BPL CODE_139525             ; $13:952C: 10 F7       ;
CODE_13952E:    TXA                         ; $13:952E: 8A          ;
CODE_13952F:    ASL A                       ; $13:952F: 0A          ;
CODE_139530:    STA $0E                     ; $13:9530: 85 0E       ;
CODE_139532:    ASL A                       ; $13:9532: 0A          ;
CODE_139533:    STA $0F                     ; $13:9533: 85 0F       ;
CODE_139535:    CLC                         ; $13:9535: 18          ;
CODE_139536:    ADC $0E                     ; $13:9536: 65 0E       ;
CODE_139538:    TAX                         ; $13:9538: AA          ;
CODE_139539:    LDY $E7                     ; $13:9539: A4 E7       ;
CODE_13953B:    STY $0E                     ; $13:953B: 84 0E       ;
CODE_13953D:    STZ $0F                     ; $13:953D: 64 0F       ;
CODE_13953F:    LDA $0F                     ; $13:953F: A5 0F       ;
CODE_139541:    CMP #$02                    ; $13:9541: C9 02       ;
CODE_139543:    BNE CODE_13954E             ; $13:9543: D0 09       ;
CODE_139545:    PHX                         ; $13:9545: DA          ;
CODE_139546:    JSR CODE_139580             ; $13:9546: 20 80 95    ;
CODE_139549:    PLX                         ; $13:9549: FA          ;
CODE_13954A:    CMP #$00                    ; $13:954A: C9 00       ;
CODE_13954C:    BNE CODE_139552             ; $13:954C: D0 04       ;
CODE_13954E:    LDA.l DATA_13D49C,x                 ; $13:954E: BF 9C D4 13 ;
CODE_139552:    STA [$01],y                 ; $13:9552: 97 01       ;
CODE_139554:    INX                         ; $13:9554: E8          ;
CODE_139555:    JSR CODE_1396D2             ; $13:9555: 20 D2 96    ;
CODE_139558:    LDA $0F                     ; $13:9558: A5 0F       ;
CODE_13955A:    CMP #$02                    ; $13:955A: C9 02       ;
CODE_13955C:    BNE CODE_139567             ; $13:955C: D0 09       ;
CODE_13955E:    PHX                         ; $13:955E: DA          ;
CODE_13955F:    JSR CODE_139580             ; $13:955F: 20 80 95    ;
CODE_139562:    PLX                         ; $13:9562: FA          ;
CODE_139563:    CMP #$00                    ; $13:9563: C9 00       ;
CODE_139565:    BNE CODE_13956B             ; $13:9565: D0 04       ;
CODE_139567:    LDA.l DATA_13D49C,x                 ; $13:9567: BF 9C D4 13 ;
CODE_13956B:    STA [$01],y                 ; $13:956B: 97 01       ;
CODE_13956D:    INC $0F                     ; $13:956D: E6 0F       ;
CODE_13956F:    LDA $0F                     ; $13:956F: A5 0F       ;
CODE_139571:    CMP #$03                    ; $13:9571: C9 03       ;
CODE_139573:    BEQ CODE_13957F             ; $13:9573: F0 0A       ;
CODE_139575:    INX                         ; $13:9575: E8          ;
CODE_139576:    LDY $0E                     ; $13:9576: A4 0E       ;
CODE_139578:    JSR CODE_1396B0             ; $13:9578: 20 B0 96    ;
CODE_13957B:    STY $0E                     ; $13:957B: 84 0E       ;
CODE_13957D:    BRA CODE_13953F             ; $13:957D: 80 C0       ;

CODE_13957F:    RTS                         ; $13:957F: 60          ;

CODE_139580:    LDX #$09                    ; $13:9580: A2 09       ;
CODE_139582:    LDA $0533                   ; $13:9582: AD 33 05    ;
CODE_139585:    CMP.l DATA_13D4BA,x                 ; $13:9585: DF BA D4 13 ;
CODE_139589:    BNE CODE_139594             ; $13:9589: D0 09       ;
CODE_13958B:    LDA $0534                   ; $13:958B: AD 34 05    ;
CODE_13958E:    CMP.l DATA_13D4C4,x                 ; $13:958E: DF C4 D4 13 ;
CODE_139592:    BEQ CODE_139599             ; $13:9592: F0 05       ;
CODE_139594:    DEX                         ; $13:9594: CA          ;
CODE_139595:    BPL CODE_139582             ; $13:9595: 10 EB       ;
CODE_139597:    BRA CODE_1395A6             ; $13:9597: 80 0D       ;

CODE_139599:    LDX #$06                    ; $13:9599: A2 06       ;
CODE_13959B:    LDA [$01],y                 ; $13:959B: B7 01       ;
CODE_13959D:    CMP.l DATA_13D4CE,x                 ; $13:959D: DF CE D4 13 ;
CODE_1395A1:    BEQ CODE_1395A9             ; $13:95A1: F0 06       ;
CODE_1395A3:    DEX                         ; $13:95A3: CA          ;
CODE_1395A4:    BPL CODE_13959B             ; $13:95A4: 10 F5       ;
CODE_1395A6:    LDA #$00                    ; $13:95A6: A9 00       ;
CODE_1395A8:    RTS                         ; $13:95A8: 60          ;

CODE_1395A9:    LDA.l DATA_13D4D5,x                 ; $13:95A9: BF D5 D4 13 ;
CODE_1395AD:    RTS                         ; $13:95AD: 60          ;

CODE_1395AE:    STZ $0F                     ; $13:95AE: 64 0F       ;
CODE_1395B0:    LDA $050F                   ; $13:95B0: AD 0F 05    ;
CODE_1395B3:    CMP #$02                    ; $13:95B3: C9 02       ;
CODE_1395B5:    BEQ CODE_1395BB             ; $13:95B5: F0 04       ;
CODE_1395B7:    LDA #$03                    ; $13:95B7: A9 03       ;
CODE_1395B9:    STA $0F                     ; $13:95B9: 85 0F       ;
CODE_1395BB:    LDY $E7                     ; $13:95BB: A4 E7       ;
CODE_1395BD:    LDA $E9                     ; $13:95BD: A5 E9       ;
CODE_1395BF:    STA $0712                   ; $13:95BF: 8D 12 07    ;
CODE_1395C2:    STZ $08                     ; $13:95C2: 64 08       ;
CODE_1395C4:    LDX $0F                     ; $13:95C4: A6 0F       ;
CODE_1395C6:    CPX #$01                    ; $13:95C6: E0 01       ;
CODE_1395C8:    BNE CODE_1395D2             ; $13:95C8: D0 08       ;
CODE_1395CA:    DEY                         ; $13:95CA: 88          ;
CODE_1395CB:    LDA.l DATA_13DAA2                   ; $13:95CB: AF A2 DA 13 ;
CODE_1395CF:    STA [$01],y                 ; $13:95CF: 97 01       ;
CODE_1395D1:    INY                         ; $13:95D1: C8          ;
CODE_1395D2:    LDA.l DATA_13DA8E,x                 ; $13:95D2: BF 8E DA 13 ;
CODE_1395D6:    STA [$01],y                 ; $13:95D6: 97 01       ;
CODE_1395D8:    LDX $08                     ; $13:95D8: A6 08       ;
CODE_1395DA:    BEQ CODE_139602             ; $13:95DA: F0 26       ;
CODE_1395DC:    JSR CODE_139660             ; $13:95DC: 20 60 96    ;
CODE_1395DF:    BCS CODE_139621                     ; $13:95DF: B0 40       ;
CODE_1395E1:    PHX                         ; $13:95E1: DA          ;
CODE_1395E2:    LDX $0F                     ; $13:95E2: A6 0F       ;
CODE_1395E4:    LDA.l DATA_13DA93,x                 ; $13:95E4: BF 93 DA 13 ;
CODE_1395E8:    STA [$01],y                 ; $13:95E8: 97 01       ;
CODE_1395EA:    PLX                         ; $13:95EA: FA          ;
CODE_1395EB:    DEX                         ; $13:95EB: CA          ;
CODE_1395EC:    BNE CODE_1395DC             ; $13:95EC: D0 EE       ;
CODE_1395EE:    LDX $08                     ; $13:95EE: A6 08       ;
CODE_1395F0:    JSR CODE_139660             ; $13:95F0: 20 60 96    ;
CODE_1395F3:    BCS CODE_139621                     ; $13:95F3: B0 2C       ;
CODE_1395F5:    PHX                         ; $13:95F5: DA          ;
CODE_1395F6:    LDX $0F                     ; $13:95F6: A6 0F       ;
CODE_1395F8:    LDA.l DATA_13DA98,x                 ; $13:95F8: BF 98 DA 13 ;
CODE_1395FC:    STA [$01],y                 ; $13:95FC: 97 01       ;
CODE_1395FE:    PLX                         ; $13:95FE: FA          ;
CODE_1395FF:    DEX                         ; $13:95FF: CA          ;
CODE_139600:    BNE CODE_1395F0             ; $13:9600: D0 EE       ;
CODE_139602:    JSR CODE_139660             ; $13:9602: 20 60 96    ;
CODE_139605:    BCS CODE_139621                     ; $13:9605: B0 1A       ;
CODE_139607:    LDX $0F                     ; $13:9607: A6 0F       ;
CODE_139609:    LDA.l DATA_13DA9D,x                 ; $13:9609: BF 9D DA 13 ;
CODE_13960D:    STA [$01],y                 ; $13:960D: 97 01       ;
CODE_13960F:    CPX #$01                    ; $13:960F: E0 01       ;
CODE_139611:    BNE CODE_139621             ; $13:9611: D0 0E       ;
CODE_139613:    INY                         ; $13:9613: C8          ;
CODE_139614:    LDA.l DATA_13DAA3                   ; $13:9614: AF A3 DA 13 ;
CODE_139618:    STA [$01],y                 ; $13:9618: 97 01       ;
CODE_13961A:    INY                         ; $13:961A: C8          ;
CODE_13961B:    LDA.l DATA_13DAA4                   ; $13:961B: AF A4 DA 13 ;
CODE_13961F:    STA [$01],y                 ; $13:961F: 97 01       ;
CODE_139621:    INC $08                     ; $13:9621: E6 08       ;
CODE_139623:    LDX $E9                     ; $13:9623: A6 E9       ;
CODE_139625:    STX $0712                   ; $13:9625: 8E 12 07    ;
CODE_139628:    JSR CODE_1397DC             ; $13:9628: 20 DC 97    ;
CODE_13962B:    LDA $E7                     ; $13:962B: A5 E7       ;
CODE_13962D:    CLC                         ; $13:962D: 18          ;
CODE_13962E:    ADC #$10                    ; $13:962E: 69 10       ;
CODE_139630:    STA $E7                     ; $13:9630: 85 E7       ;
CODE_139632:    SEC                         ; $13:9632: 38          ;
CODE_139633:    SBC $08                     ; $13:9633: E5 08       ;
CODE_139635:    TAY                         ; $13:9635: A8          ;
CODE_139636:    LDA $0F                     ; $13:9636: A5 0F       ;
CODE_139638:    CMP #$03                    ; $13:9638: C9 03       ;
CODE_13963A:    BPL CODE_13964C             ; $13:963A: 10 10       ;
CODE_13963C:    LDA $0F                     ; $13:963C: A5 0F       ;
CODE_13963E:    CMP #$02                    ; $13:963E: C9 02       ;
CODE_139640:    BEQ CODE_13965F             ; $13:9640: F0 1D       ;
CODE_139642:    LDA [$01],y                 ; $13:9642: B7 01       ;
CODE_139644:    CMP #$FF                    ; $13:9644: C9 FF       ;
CODE_139646:    BEQ CODE_139659             ; $13:9646: F0 11       ;
CODE_139648:    INC $0F                     ; $13:9648: E6 0F       ;
CODE_13964A:    BRA CODE_139659             ; $13:964A: 80 0D       ;

CODE_13964C:    TYA                         ; $13:964C: 98          ;
CODE_13964D:    AND #$F0                    ; $13:964D: 29 F0       ;
CODE_13964F:    CMP #$A0                    ; $13:964F: C9 A0       ;
CODE_139651:    BEQ CODE_13965F             ; $13:9651: F0 0C       ;
CODE_139653:    CMP #$90                    ; $13:9653: C9 90       ;
CODE_139655:    BNE CODE_139659             ; $13:9655: D0 02       ;
CODE_139657:    INC $0F                     ; $13:9657: E6 0F       ;
CODE_139659:    JSR CODE_139689             ; $13:9659: 20 89 96    ;
CODE_13965C:    BRL CODE_1395C4             ; $13:965C: 82 65 FF    ;

CODE_13965F:    RTS                         ; $13:965F: 60          ;

CODE_139660:    PHX                         ; $13:9660: DA          ;
CODE_139661:    LDA $E7                     ; $13:9661: A5 E7       ;
CODE_139663:    AND #$F0                    ; $13:9663: 29 F0       ;
CODE_139665:    STA $0713                   ; $13:9665: 8D 13 07    ;
CODE_139668:    INY                         ; $13:9668: C8          ;
CODE_139669:    TYA                         ; $13:9669: 98          ;
CODE_13966A:    AND #$F0                    ; $13:966A: 29 F0       ;
CODE_13966C:    CMP $0713                   ; $13:966C: CD 13 07    ;
CODE_13966F:    BEQ CODE_139686             ; $13:966F: F0 15       ;
CODE_139671:    LDA $E7                     ; $13:9671: A5 E7       ;
CODE_139673:    AND #$F0                    ; $13:9673: 29 F0       ;
CODE_139675:    TAY                         ; $13:9675: A8          ;
CODE_139676:    INC $0712                   ; $13:9676: EE 12 07    ;
CODE_139679:    LDX $0712                   ; $13:9679: AE 12 07    ;
CODE_13967C:    JSR CODE_1397DC             ; $13:967C: 20 DC 97    ;
CODE_13967F:    CPX #$0A                    ; $13:967F: E0 0A       ;
CODE_139681:    BNE CODE_139686             ; $13:9681: D0 03       ;
CODE_139683:    PLX                         ; $13:9683: FA          ;
CODE_139684:    SEC                         ; $13:9684: 38          ;
CODE_139685:    RTS                         ; $13:9685: 60          ;

CODE_139686:    PLX                         ; $13:9686: FA          ;
CODE_139687:    CLC                         ; $13:9687: 18          ;
CODE_139688:    RTS                         ; $13:9688: 60          ;

CODE_139689:    LDA $E7                     ; $13:9689: A5 E7       ;
CODE_13968B:    AND #$F0                    ; $13:968B: 29 F0       ;
CODE_13968D:    STA $0713                   ; $13:968D: 8D 13 07    ;
CODE_139690:    TYA                         ; $13:9690: 98          ;
CODE_139691:    AND #$F0                    ; $13:9691: 29 F0       ;
CODE_139693:    CMP $0713                   ; $13:9693: CD 13 07    ;
CODE_139696:    BEQ CODE_1396AF             ; $13:9696: F0 17       ;
CODE_139698:    TYA                         ; $13:9698: 98          ;
CODE_139699:    AND #$0F                    ; $13:9699: 29 0F       ;
CODE_13969B:    STA $0713                   ; $13:969B: 8D 13 07    ;
CODE_13969E:    LDA $E7                     ; $13:969E: A5 E7       ;
CODE_1396A0:    AND #$F0                    ; $13:96A0: 29 F0       ;
CODE_1396A2:    ORA $0713                   ; $13:96A2: 0D 13 07    ;
CODE_1396A5:    TAY                         ; $13:96A5: A8          ;
CODE_1396A6:    DEC $0712                   ; $13:96A6: CE 12 07    ;
CODE_1396A9:    LDX $0712                   ; $13:96A9: AE 12 07    ;
CODE_1396AC:    JSR CODE_1397DC             ; $13:96AC: 20 DC 97    ;
CODE_1396AF:    RTS                         ; $13:96AF: 60          ;

CODE_1396B0:    INY                         ; $13:96B0: C8          ;
CODE_1396B1:    TYA                         ; $13:96B1: 98          ;
CODE_1396B2:    AND #$0F                    ; $13:96B2: 29 0F       ;
CODE_1396B4:    BEQ CODE_1396BF             ; $13:96B4: F0 09       ;
CODE_1396B6:    LDA $02E4                   ; $13:96B6: AD E4 02    ;
CODE_1396B9:    BEQ CODE_1396D1             ; $13:96B9: F0 16       ;
CODE_1396BB:    LDX $E9                     ; $13:96BB: A6 E9       ;
CODE_1396BD:    BRA CODE_1396CC             ; $13:96BD: 80 0D       ;

CODE_1396BF:    TYA                         ; $13:96BF: 98          ;
CODE_1396C0:    SEC                         ; $13:96C0: 38          ;
CODE_1396C1:    SBC #$10                    ; $13:96C1: E9 10       ;
CODE_1396C3:    TAY                         ; $13:96C3: A8          ;
CODE_1396C4:    STX $0B                     ; $13:96C4: 86 0B       ;
CODE_1396C6:    LDX $E9                     ; $13:96C6: A6 E9       ;
CODE_1396C8:    INX                         ; $13:96C8: E8          ;
CODE_1396C9:    STX $0247                   ; $13:96C9: 8E 47 02    ;
CODE_1396CC:    JSR CODE_1397DC             ; $13:96CC: 20 DC 97    ;
CODE_1396CF:    LDX $0B                     ; $13:96CF: A6 0B       ;
CODE_1396D1:    RTS                         ; $13:96D1: 60          ;

CODE_1396D2:    TYA                         ; $13:96D2: 98          ;
CODE_1396D3:    CLC                         ; $13:96D3: 18          ;
CODE_1396D4:    ADC #$10                    ; $13:96D4: 69 10       ;
CODE_1396D6:    TAY                         ; $13:96D6: A8          ;
CODE_1396D7:    CMP #$F0                    ; $13:96D7: C9 F0       ;
CODE_1396D9:    BCC CODE_139704             ; $13:96D9: 90 29       ;
CODE_1396DB:    LDA $050F                   ; $13:96DB: AD 0F 05    ;
CODE_1396DE:    CLC                         ; $13:96DE: 18          ;
CODE_1396DF:    ADC #$10                    ; $13:96DF: 69 10       ;
CODE_1396E1:    CMP #$2A                    ; $13:96E1: C9 2A       ;
CODE_1396E3:    BEQ CODE_1396EB             ; $13:96E3: F0 06       ;
CODE_1396E5:    LDX $E9                     ; $13:96E5: A6 E9       ;
CODE_1396E7:    INX                         ; $13:96E7: E8          ;
CODE_1396E8:    JSR CODE_1397DC             ; $13:96E8: 20 DC 97    ;
CODE_1396EB:    TYA                         ; $13:96EB: 98          ;
CODE_1396EC:    AND #$0F                    ; $13:96EC: 29 0F       ;
CODE_1396EE:    TAY                         ; $13:96EE: A8          ;
CODE_1396EF:    LDX #$06                    ; $13:96EF: A2 06       ;
CODE_1396F1:    LDA $050F                   ; $13:96F1: AD 0F 05    ;
CODE_1396F4:    CLC                         ; $13:96F4: 18          ;
CODE_1396F5:    ADC #$10                    ; $13:96F5: 69 10       ;
CODE_1396F7:    CMP.l DATA_13DB60,x                 ; $13:96F7: DF 60 DB 13 ;
CODE_1396FB:    BEQ CODE_139701             ; $13:96FB: F0 04       ;
CODE_1396FD:    DEX                         ; $13:96FD: CA          ;
CODE_1396FE:    BPL CODE_1396F7             ; $13:96FE: 10 F7       ;
CODE_139700:    RTS                         ; $13:9700: 60          ;

CODE_139701:    INC $02E4                   ; $13:9701: EE E4 02    ;
CODE_139704:    RTS                         ; $13:9704: 60          ;

CODE_139705:    LDA $09                     ; $13:9705: A5 09       ;
CODE_139707:    ASL A                       ; $13:9707: 0A          ;
CODE_139708:    ASL A                       ; $13:9708: 0A          ;
CODE_139709:    SEC                         ; $13:9709: 38          ;
CODE_13970A:    ADC $09                     ; $13:970A: 65 09       ;
CODE_13970C:    STA $09                     ; $13:970C: 85 09       ;
CODE_13970E:    ASL $0A                     ; $13:970E: 06 0A       ;
CODE_139710:    LDA #$20                    ; $13:9710: A9 20       ;
CODE_139712:    BIT $0A                     ; $13:9712: 24 0A       ;
CODE_139714:    BCS CODE_13971A                     ; $13:9714: B0 04       ;
CODE_139716:    BNE CODE_13971C             ; $13:9716: D0 04       ;
CODE_139718:    BEQ CODE_13971E             ; $13:9718: F0 04       ;
CODE_13971A:    BNE CODE_13971E             ; $13:971A: D0 02       ;
CODE_13971C:    INC $0A                     ; $13:971C: E6 0A       ;
CODE_13971E:    LDA $0A                     ; $13:971E: A5 0A       ;
CODE_139720:    EOR $09                     ; $13:9720: 45 09       ;
CODE_139722:    RTS                         ; $13:9722: 60          ;

DATA_139723:        db $00,$10,$20,$30,$40,$50         

CODE_139729:    STZ $E9                 ; $13:9729: 64 E9       ;
CODE_13972B:    LDY #$01                ; $13:972B: A0 01       ;
CODE_13972D:    LDA [$05],y             ; $13:972D: B7 05       ;
CODE_13972F:    AND #$80                ; $13:972F: 29 80       ;
CODE_139731:    BNE CODE_139736         ; $13:9731: D0 03       ;
CODE_139733:    JSR CODE_13986E         ; $13:9733: 20 6E 98    ;
CODE_139736:    INC $04                 ; $13:9736: E6 04       ;
CODE_139738:    LDY $04                 ; $13:9738: A4 04       ;
CODE_13973A:    INY                         ; $13:973A: C8          ;
CODE_13973B:    LDA [$05],y                 ; $13:973B: B7 05       ;
CODE_13973D:    CMP #$FF                    ; $13:973D: C9 FF       ;
CODE_13973F:    BNE CODE_139742             ; $13:973F: D0 01       ;
CODE_139741:    RTL                         ; $13:9741: 6B          ;

CODE_139742:    LDA [$05],y                 ; $13:9742: B7 05       ;
CODE_139744:    AND #$0F                    ; $13:9744: 29 0F       ;
CODE_139746:    STA $E5                     ; $13:9746: 85 E5       ;
CODE_139748:    LDA [$05],y                 ; $13:9748: B7 05       ;
CODE_13974A:    AND #$F0                    ; $13:974A: 29 F0       ;
CODE_13974C:    CMP #$F0                    ; $13:974C: C9 F0       ;
CODE_13974E:    BNE CODE_13975E             ; $13:974E: D0 0E       ;
CODE_139750:    LDA $E5                     ; $13:9750: A5 E5       ;
CODE_139752:    STY $08                     ; $13:9752: 84 08       ;
CODE_139754:    JSR CODE_1397C1             ; $13:9754: 20 C1 97    ;
CODE_139757:    JSR CODE_13992F             ; $13:9757: 20 2F 99    ;
CODE_13975A:    LDY $08                     ; $13:975A: A4 08       ;
CODE_13975C:    BRA CODE_13973A             ; $13:975C: 80 DC       ;

CODE_13975E:    STA $E6                     ; $13:975E: 85 E6       ;
CODE_139760:    INY                         ; $13:9760: C8          ;
CODE_139761:    STY $04                     ; $13:9761: 84 04       ;
CODE_139763:    JSR CODE_1397D3             ; $13:9763: 20 D3 97    ;
CODE_139766:    LDA [$05],y                 ; $13:9766: B7 05       ;
CODE_139768:    LSR A                       ; $13:9768: 4A          ;
CODE_139769:    LSR A                       ; $13:9769: 4A          ;
CODE_13976A:    LSR A                       ; $13:976A: 4A          ;
CODE_13976B:    LSR A                       ; $13:976B: 4A          ;
CODE_13976C:    STA $050F                   ; $13:976C: 8D 0F 05    ;
CODE_13976F:    CMP #$07                    ; $13:976F: C9 07       ;
CODE_139771:    BCS CODE_1397A2                     ; $13:9771: B0 2F       ;
CODE_139773:    PHA                         ; $13:9773: 48          ;
CODE_139774:    LDA [$05],y                 ; $13:9774: B7 05       ;
CODE_139776:    AND #$0F                    ; $13:9776: 29 0F       ;
CODE_139778:    STA $050F                   ; $13:9778: 8D 0F 05    ;
CODE_13977B:    PLA                         ; $13:977B: 68          ;
CODE_13977C:    BEQ CODE_1397B8             ; $13:977C: F0 3A       ;
CODE_13977E:    CMP #$01                    ; $13:977E: C9 01       ;
CODE_139780:    BNE CODE_139788             ; $13:9780: D0 06       ;
CODE_139782:    JSR CODE_139318             ; $13:9782: 20 18 93    ;
CODE_139785:    BRL CODE_139738             ; $13:9785: 82 B0 FF    ;

CODE_139788:    CMP #$07                    ; $13:9788: C9 07       ;
CODE_13978A:    BPL CODE_13979F             ; $13:978A: 10 13       ;
CODE_13978C:    DEC A                       ; $13:978C: 3A          ;
CODE_13978D:    TAX                         ; $13:978D: AA          ;
CODE_13978E:    LDA $050F                   ; $13:978E: AD 0F 05    ;
CODE_139791:    CLC                         ; $13:9791: 18          ;
CODE_139792:    ADC.l DATA_139723,x                 ; $13:9792: 7F 23 97 13 ;
CODE_139796:    STA $050F                   ; $13:9796: 8D 0F 05    ;
CODE_139799:    JSR CODE_139318             ; $13:9799: 20 18 93    ;
CODE_13979C:    BRL CODE_139738             ; $13:979C: 82 99 FF    ;

CODE_13979F:    BRL CODE_139738             ; $13:979F: 82 96 FF    ;

CODE_1397A2:    LDA [$05],y                 ; $13:97A2: B7 05       ;
CODE_1397A4:    AND #$0F                    ; $13:97A4: 29 0F       ;
CODE_1397A6:    STA $050E                   ; $13:97A6: 8D 0E 05    ;
CODE_1397A9:    LDA $050F                   ; $13:97A9: AD 0F 05    ;
CODE_1397AC:    SEC                         ; $13:97AC: 38          ;
CODE_1397AD:    SBC #$07                    ; $13:97AD: E9 07       ;
CODE_1397AF:    STA $050F                   ; $13:97AF: 8D 0F 05    ;
CODE_1397B2:    JSR CODE_139300             ; $13:97B2: 20 00 93    ;
CODE_1397B5:    BRL CODE_139738             ; $13:97B5: 82 80 FF    ;

CODE_1397B8:    LDA $050F                   ; $13:97B8: AD 0F 05    ;
CODE_1397BB:    JSR CODE_139309             ; $13:97BB: 20 09 93    ;
CODE_1397BE:    BRL CODE_139738             ; $13:97BE: 82 77 FF    ;

CODE_1397C1:    ASL A                       ; $13:97C1: 0A          ;
CODE_1397C2:    TAX                         ; $13:97C2: AA          ;
CODE_1397C3:    JMP (PNTR_1397C6,x)                 ; $13:97C3: 7C C6 97    ;

PNTR_1397C6:        dw CODE_1397CC
                    dw CODE_1397CA

CODE_1397CA:    INC $E9                 ; $13:97CA: E6 E9       ;
CODE_1397CC:    INC $E9                 ; $13:97CC: E6 E9       ;
CODE_1397CE:    LDA #$00                ; $13:97CE: A9 00       ;
CODE_1397D0:    STA $E6                 ; $13:97D0: 85 E6       ;
CODE_1397D2:    RTS                     ; $13:97D2: 60          ;
                 
CODE_1397D3:    LDX $E9                     ; $13:97D3: A6 E9       ;
CODE_1397D5:    LDA $E6                     ; $13:97D5: A5 E6       ;
CODE_1397D7:    CLC                         ; $13:97D7: 18          ;
CODE_1397D8:    ADC $E5                     ; $13:97D8: 65 E5       ;
CODE_1397DA:    STA $E7                     ; $13:97DA: 85 E7       ;
CODE_1397DC:    LDA $0534                   ; $13:97DC: AD 34 05    ;
CODE_1397DF:    ASL A                       ; $13:97DF: 0A          ;
CODE_1397E0:    ASL A                       ; $13:97E0: 0A          ;
CODE_1397E1:    ASL A                       ; $13:97E1: 0A          ;
CODE_1397E2:    ASL A                       ; $13:97E2: 0A          ;
CODE_1397E3:    CLC                         ; $13:97E3: 18          ;
CODE_1397E4:    ADC.w DATA_11AAFB,x                 ; $13:97E4: 7D FB AA    ;
CODE_1397E7:    STA $02                     ; $13:97E7: 85 02       ;
CODE_1397E9:    LDA.w DATA_11AAF0,x                 ; $13:97E9: BD F0 AA    ;
CODE_1397EC:    STA $01                     ; $13:97EC: 85 01       ;
CODE_1397EE:    LDA #$7F                    ; $13:97EE: A9 7F       ;
CODE_1397F0:    STA $03                     ; $13:97F0: 85 03       ;
CODE_1397F2:    RTS                         ; $13:97F2: 60          ;

CODE_1397F3:    REP #$30                    ; $13:97F3: C2 30       ;
CODE_1397F5:    LDA $02D9                   ; $13:97F5: AD D9 02    ;
CODE_1397F8:    STA $7F0002                 ; $13:97F8: 8F 02 00 7F ;
CODE_1397FC:    LDA #$8000                  ; $13:97FC: A9 00 80    ;
CODE_1397FF:    STA $7F0004                 ; $13:97FF: 8F 04 00 7F ;
CODE_139803:    LDX #$0000                  ; $13:9803: A2 00 00    ;
CODE_139806:    LDA [$C4]                   ; $13:9806: A7 C4       ;
CODE_139808:    AND #$00FF                  ; $13:9808: 29 FF 00    ;
CODE_13980B:    CMP #$00FF                  ; $13:980B: C9 FF 00    ;
CODE_13980E:    BEQ CODE_139834             ; $13:980E: F0 24       ;
CODE_139810:    ASL A                       ; $13:9810: 0A          ;
CODE_139811:    ASL A                       ; $13:9811: 0A          ;
CODE_139812:    ASL A                       ; $13:9812: 0A          ;
CODE_139813:    TAY                         ; $13:9813: A8          ;
CODE_139814:    LDA [$00],y                 ; $13:9814: B7 00       ;
CODE_139816:    STA $7F0006,x               ; $13:9816: 9F 06 00 7F ;
CODE_13981A:    INY                         ; $13:981A: C8          ;
CODE_13981B:    INY                         ; $13:981B: C8          ;
CODE_13981C:    LDA [$00],y                 ; $13:981C: B7 00       ;
CODE_13981E:    STA $7F0008,x               ; $13:981E: 9F 08 00 7F ;
CODE_139822:    INY                         ; $13:9822: C8          ;
CODE_139823:    INY                         ; $13:9823: C8          ;
CODE_139824:    LDA [$00],y                 ; $13:9824: B7 00       ;
CODE_139826:    STA $7F0046,x               ; $13:9826: 9F 46 00 7F ;
CODE_13982A:    INY                         ; $13:982A: C8          ;
CODE_13982B:    INY                         ; $13:982B: C8          ;
CODE_13982C:    LDA [$00],y                 ; $13:982C: B7 00       ;
CODE_13982E:    STA $7F0048,x               ; $13:982E: 9F 48 00 7F ;
CODE_139832:    BRA CODE_139847             ; $13:9832: 80 13       ;

CODE_139834:    LDA #$00BF                  ; $13:9834: A9 BF 00    ;
CODE_139837:    STA $7F0006,x               ; $13:9837: 9F 06 00 7F ;
CODE_13983B:    STA $7F0008,x               ; $13:983B: 9F 08 00 7F ;
CODE_13983F:    STA $7F0046,x               ; $13:983F: 9F 46 00 7F ;
CODE_139843:    STA $7F0048,x               ; $13:9843: 9F 48 00 7F ;
CODE_139847:    LDA $C4                     ; $13:9847: A5 C4       ;
CODE_139849:    CLC                         ; $13:9849: 18          ;
CODE_13984A:    ADC #$0001                  ; $13:984A: 69 01 00    ;
CODE_13984D:    STA $C4                     ; $13:984D: 85 C4       ;
CODE_13984F:    INX                         ; $13:984F: E8          ;
CODE_139850:    INX                         ; $13:9850: E8          ;
CODE_139851:    INX                         ; $13:9851: E8          ;
CODE_139852:    INX                         ; $13:9852: E8          ;
CODE_139853:    CPX #$0040                  ; $13:9853: E0 40 00    ;
CODE_139856:    BNE CODE_139806             ; $13:9856: D0 AE       ;
CODE_139858:    LDA #$FFFF                  ; $13:9858: A9 FF FF    ;
CODE_13985B:    STA $7F0086                 ; $13:985B: 8F 86 00 7F ;
CODE_13985F:    LDA $02D9                   ; $13:985F: AD D9 02    ;
CODE_139862:    XBA                         ; $13:9862: EB          ;
CODE_139863:    CLC                         ; $13:9863: 18          ;
CODE_139864:    ADC #$0040                  ; $13:9864: 69 40 00    ;
CODE_139867:    XBA                         ; $13:9867: EB          ;
CODE_139868:    STA $02D9                   ; $13:9868: 8D D9 02    ;
CODE_13986B:    SEP #$30                    ; $13:986B: E2 30       ;
CODE_13986D:    RTS                         ; $13:986D: 60          ;

CODE_13986E:    LDA [$05],y                 ; $13:986E: B7 05       ;
CODE_139870:    AND #$7F                    ; $13:9870: 29 7F       ;
CODE_139872:    ASL A                       ; $13:9872: 0A          ;
CODE_139873:    TAX                         ; $13:9873: AA          ;
CODE_139874:    LDA.l PNTR_13C661,x                 ; $13:9874: BF 61 C6 13 ;
CODE_139878:    STA $C4                     ; $13:9878: 85 C4       ;
CODE_13987A:    INX                         ; $13:987A: E8          ;
CODE_13987B:    LDA.l PNTR_13C661,x                 ; $13:987B: BF 61 C6 13 ;
CODE_13987F:    STA $C5                     ; $13:987F: 85 C5       ;
CODE_139881:    LDA #$13                    ; $13:9881: A9 13       ;
CODE_139883:    STA $C6                     ; $13:9883: 85 C6       ;
CODE_139885:    LDY #$00                    ; $13:9885: A0 00       ;
CODE_139887:    LDA [$C4],y                 ; $13:9887: B7 C4       ;
CODE_139889:    AND #$F0                    ; $13:9889: 29 F0       ;
CODE_13988B:    STA $02DC                   ; $13:988B: 8D DC 02    ;
CODE_13988E:    LSR A                       ; $13:988E: 4A          ;
CODE_13988F:    LSR A                       ; $13:988F: 4A          ;
CODE_139890:    LSR A                       ; $13:9890: 4A          ;
CODE_139891:    LSR A                       ; $13:9891: 4A          ;
CODE_139892:    STA $02DE                   ; $13:9892: 8D DE 02    ;
CODE_139895:    LDA [$C4],y                 ; $13:9895: B7 C4       ;
CODE_139897:    AND #$0F                    ; $13:9897: 29 0F       ;
CODE_139899:    STA $02DD                   ; $13:9899: 8D DD 02    ;
CODE_13989C:    INC $02DD                   ; $13:989C: EE DD 02    ;
CODE_13989F:    STZ $0C                     ; $13:989F: 64 0C       ;
CODE_1398A1:    STZ $0E                     ; $13:98A1: 64 0E       ;
CODE_1398A3:    STZ $0D                     ; $13:98A3: 64 0D       ;
CODE_1398A5:    STZ $0F                     ; $13:98A5: 64 0F       ;
CODE_1398A7:    JSR CODE_139913             ; $13:98A7: 20 13 99    ;
CODE_1398AA:    JSR CODE_1398C4             ; $13:98AA: 20 C4 98    ;
CODE_1398AD:    JSR CODE_1398D6             ; $13:98AD: 20 D6 98    ;
CODE_1398B0:    INC $0C                     ; $13:98B0: E6 0C       ;
CODE_1398B2:    LDA $0C                     ; $13:98B2: A5 0C       ;
CODE_1398B4:    CMP $02DD                   ; $13:98B4: CD DD 02    ;
CODE_1398B7:    BMI CODE_1398BB             ; $13:98B7: 30 02       ;
CODE_1398B9:    STZ $0C                     ; $13:98B9: 64 0C       ;
CODE_1398BB:    INC $0E                     ; $13:98BB: E6 0E       ;
CODE_1398BD:    LDA $0E                     ; $13:98BD: A5 0E       ;
CODE_1398BF:    CMP #$10                    ; $13:98BF: C9 10       ;
CODE_1398C1:    BNE CODE_1398A3             ; $13:98C1: D0 E0       ;
CODE_1398C3:    RTS                         ; $13:98C3: 60          ;

CODE_1398C4:    LDA $02DC                   ; $13:98C4: AD DC 02    ;
CODE_1398C7:    BEQ CODE_1398D5             ; $13:98C7: F0 0C       ;
CODE_1398C9:    LDA $0F                     ; $13:98C9: A5 0F       ;
CODE_1398CB:    CLC                         ; $13:98CB: 18          ;
CODE_1398CC:    ADC #$10                    ; $13:98CC: 69 10       ;
CODE_1398CE:    STA $0F                     ; $13:98CE: 85 0F       ;
CODE_1398D0:    CMP $02DC                   ; $13:98D0: CD DC 02    ;
CODE_1398D3:    BNE CODE_1398C9             ; $13:98D3: D0 F4       ;
CODE_1398D5:    RTS                         ; $13:98D5: 60          ;

CODE_1398D6:    JSR CODE_1398F7             ; $13:98D6: 20 F7 98    ;
CODE_1398D9:    LDY $0F                     ; $13:98D9: A4 0F       ;
CODE_1398DB:    LDA [$01],y                 ; $13:98DB: B7 01       ;
CODE_1398DD:    CMP #$FF                    ; $13:98DD: C9 FF       ;
CODE_1398DF:    BNE CODE_1398E9             ; $13:98DF: D0 08       ;
CODE_1398E1:    LDY $0D                     ; $13:98E1: A4 0D       ;
CODE_1398E3:    LDA [$C4],y                 ; $13:98E3: B7 C4       ;
CODE_1398E5:    LDY $0F                     ; $13:98E5: A4 0F       ;
CODE_1398E7:    STA [$01],y                 ; $13:98E7: 97 01       ;
CODE_1398E9:    INC $0D                     ; $13:98E9: E6 0D       ;
CODE_1398EB:    LDA $0F                     ; $13:98EB: A5 0F       ;
CODE_1398ED:    CLC                         ; $13:98ED: 18          ;
CODE_1398EE:    ADC #$10                    ; $13:98EE: 69 10       ;
CODE_1398F0:    STA $0F                     ; $13:98F0: 85 0F       ;
CODE_1398F2:    CMP #$F0                    ; $13:98F2: C9 F0       ;
CODE_1398F4:    BNE CODE_1398D9             ; $13:98F4: D0 E3       ;
CODE_1398F6:    RTS                         ; $13:98F6: 60          ;

CODE_1398F7:    LDA $0C                     ; $13:98F7: A5 0C       ;
CODE_1398F9:    BEQ CODE_139910             ; $13:98F9: F0 15       ;
CODE_1398FB:    ASL A                       ; $13:98FB: 0A          ;
CODE_1398FC:    ASL A                       ; $13:98FC: 0A          ;
CODE_1398FD:    ASL A                       ; $13:98FD: 0A          ;
CODE_1398FE:    ASL A                       ; $13:98FE: 0A          ;
CODE_1398FF:    STA $0D                     ; $13:98FF: 85 0D       ;
CODE_139901:    LDX $0C                     ; $13:9901: A6 0C       ;
CODE_139903:    DEX                         ; $13:9903: CA          ;
CODE_139904:    BMI CODE_139910             ; $13:9904: 30 0A       ;
CODE_139906:    LDA $0D                     ; $13:9906: A5 0D       ;
CODE_139908:    SEC                         ; $13:9908: 38          ;
CODE_139909:    SBC $02DE                   ; $13:9909: ED DE 02    ;
CODE_13990C:    STA $0D                     ; $13:990C: 85 0D       ;
CODE_13990E:    BRA CODE_139903             ; $13:990E: 80 F3       ;

CODE_139910:    INC $0D                     ; $13:9910: E6 0D       ;
CODE_139912:    RTS                         ; $13:9912: 60          ;

CODE_139913:    LDX $E9                     ; $13:9913: A6 E9       ;
CODE_139915:    LDA.w DATA_11AAF0,x                 ; $13:9915: BD F0 AA    ;
CODE_139918:    CLC                         ; $13:9918: 18          ;
CODE_139919:    ADC $0E                     ; $13:9919: 65 0E       ;
CODE_13991B:    STA $01                     ; $13:991B: 85 01       ;
CODE_13991D:    LDA $0534                   ; $13:991D: AD 34 05    ;
CODE_139920:    ASL A                       ; $13:9920: 0A          ;
CODE_139921:    ASL A                       ; $13:9921: 0A          ;
CODE_139922:    ASL A                       ; $13:9922: 0A          ;
CODE_139923:    ASL A                       ; $13:9923: 0A          ;
CODE_139924:    CLC                         ; $13:9924: 18          ;
CODE_139925:    ADC.w DATA_11AAFB,x                 ; $13:9925: 7D FB AA    ;
CODE_139928:    STA $02                     ; $13:9928: 85 02       ;
CODE_13992A:    LDA #$7F                    ; $13:992A: A9 7F       ;
CODE_13992C:    STA $03                     ; $13:992C: 85 03       ;
CODE_13992E:    RTS                         ; $13:992E: 60          ;

CODE_13992F:    LDY $08                     ; $13:992F: A4 08       ;
CODE_139931:    INY                         ; $13:9931: C8          ;
CODE_139932:    LDA [$05],y                 ; $13:9932: B7 05       ;
CODE_139934:    AND #$80                    ; $13:9934: 29 80       ;
CODE_139936:    BNE CODE_13993B             ; $13:9936: D0 03       ;
CODE_139938:    JSR CODE_13986E             ; $13:9938: 20 6E 98    ;
CODE_13993B:    INC $08                     ; $13:993B: E6 08       ;
CODE_13993D:    RTS                         ; $13:993D: 60          ;

CODE_13993E:    LDX #$03                    ; $13:993E: A2 03       ;
CODE_139940:    LDA $050F                   ; $13:9940: AD 0F 05    ;
CODE_139943:    CLC                         ; $13:9943: 18          ;
CODE_139944:    ADC #$10                    ; $13:9944: 69 10       ;
CODE_139946:    CMP.l DATA_13D483,x                 ; $13:9946: DF 83 D4 13 ;
CODE_13994A:    BEQ CODE_13994F             ; $13:994A: F0 03       ;
CODE_13994C:    DEX                         ; $13:994C: CA          ;
CODE_13994D:    BPL CODE_139946             ; $13:994D: 10 F7       ;
CODE_13994F:    TXA                         ; $13:994F: 8A          ;
CODE_139950:    ASL A                       ; $13:9950: 0A          ;
CODE_139951:    ASL A                       ; $13:9951: 0A          ;
CODE_139952:    TAX                         ; $13:9952: AA          ;
CODE_139953:    LDY $E7                     ; $13:9953: A4 E7       ;
CODE_139955:    LDA.l DATA_13D487,x                 ; $13:9955: BF 87 D4 13 ;
CODE_139959:    STA [$01],y                 ; $13:9959: 97 01       ;
CODE_13995B:    JSR CODE_1396D2             ; $13:995B: 20 D2 96    ;
CODE_13995E:    INX                         ; $13:995E: E8          ;
CODE_13995F:    LDA.l DATA_13D487,x                 ; $13:995F: BF 87 D4 13 ;
CODE_139963:    STA [$01],y                 ; $13:9963: 97 01       ;
CODE_139965:    INX                         ; $13:9965: E8          ;
CODE_139966:    LDY $E7                     ; $13:9966: A4 E7       ;
CODE_139968:    JSR CODE_1396B0             ; $13:9968: 20 B0 96    ;
CODE_13996B:    LDA.l DATA_13D487,x                 ; $13:996B: BF 87 D4 13 ;
CODE_13996F:    STA [$01],y                 ; $13:996F: 97 01       ;
CODE_139971:    JSR CODE_1396D2             ; $13:9971: 20 D2 96    ;
CODE_139974:    INX                         ; $13:9974: E8          ;
CODE_139975:    LDA.l DATA_13D487,x                 ; $13:9975: BF 87 D4 13 ;
CODE_139979:    STA [$01],y                 ; $13:9979: 97 01       ;
CODE_13997B:    RTS                         ; $13:997B: 60          ;

CODE_13997C:    LDY $E7                     ; $13:997C: A4 E7       ;
CODE_13997E:    LDX #$00                    ; $13:997E: A2 00       ;
CODE_139980:    LDA.l DATA_13D4DC,x                 ; $13:9980: BF DC D4 13 ;
CODE_139984:    STA [$01],y                 ; $13:9984: 97 01       ;
CODE_139986:    STY $02DE                   ; $13:9986: 8C DE 02    ;
CODE_139989:    LDY $E7                     ; $13:9989: A4 E7       ;
CODE_13998B:    INX                         ; $13:998B: E8          ;
CODE_13998C:    CPX #$02                    ; $13:998C: E0 02       ;
CODE_13998E:    BEQ CODE_1399A3             ; $13:998E: F0 13       ;
CODE_139990:    CPX #$07                    ; $13:9990: E0 07       ;
CODE_139992:    BEQ CODE_1399A0             ; $13:9992: F0 0C       ;
CODE_139994:    CPX #$0A                    ; $13:9994: E0 0A       ;
CODE_139996:    BEQ CODE_1399A8             ; $13:9996: F0 10       ;
CODE_139998:    LDY $02DE                   ; $13:9998: AC DE 02    ;
CODE_13999B:    JSR CODE_1396D2             ; $13:999B: 20 D2 96    ;
CODE_13999E:    BRA CODE_139980             ; $13:999E: 80 E0       ;

CODE_1399A0:    JSR CODE_1396B0             ; $13:99A0: 20 B0 96    ;
CODE_1399A3:    JSR CODE_1396B0             ; $13:99A3: 20 B0 96    ;
CODE_1399A6:    BRA CODE_139980             ; $13:99A6: 80 D8       ;

CODE_1399A8:    RTS                         ; $13:99A8: 60          ;

CODE_1399A9:    LDX #$33                    ; $13:99A9: A2 33       ;
CODE_1399AB:    LDA $050F                   ; $13:99AB: AD 0F 05    ;
CODE_1399AE:    CLC                         ; $13:99AE: 18          ;
CODE_1399AF:    ADC #$10                    ; $13:99AF: 69 10       ;
CODE_1399B1:    CMP.l DATA_13D4E6,x                 ; $13:99B1: DF E6 D4 13 ;
CODE_1399B5:    BEQ CODE_1399BA             ; $13:99B5: F0 03       ;
CODE_1399B7:    DEX                         ; $13:99B7: CA          ;
CODE_1399B8:    BPL CODE_1399B1             ; $13:99B8: 10 F7       ;
CODE_1399BA:    TXA                         ; $13:99BA: 8A          ;
CODE_1399BB:    ASL A                       ; $13:99BB: 0A          ;
CODE_1399BC:    TAX                         ; $13:99BC: AA          ;
CODE_1399BD:    LDA.l PNTR_13D51A,x                 ; $13:99BD: BF 1A D5 13 ;
CODE_1399C1:    STA $08                     ; $13:99C1: 85 08       ;
CODE_1399C3:    INX                         ; $13:99C3: E8          ;
CODE_1399C4:    LDA.l PNTR_13D51A,x                 ; $13:99C4: BF 1A D5 13 ;
CODE_1399C8:    STA $09                     ; $13:99C8: 85 09       ;
CODE_1399CA:    LDA #$13                    ; $13:99CA: A9 13       ;
CODE_1399CC:    STA $0A                     ; $13:99CC: 85 0A       ;
CODE_1399CE:    LDY #$00                    ; $13:99CE: A0 00       ;
CODE_1399D0:    LDA [$08],y                 ; $13:99D0: B7 08       ;
CODE_1399D2:    AND #$F0                    ; $13:99D2: 29 F0       ;
CODE_1399D4:    LSR A                       ; $13:99D4: 4A          ;
CODE_1399D5:    LSR A                       ; $13:99D5: 4A          ;
CODE_1399D6:    LSR A                       ; $13:99D6: 4A          ;
CODE_1399D7:    LSR A                       ; $13:99D7: 4A          ;
CODE_1399D8:    STA $0E                     ; $13:99D8: 85 0E       ;
CODE_1399DA:    STA $0D                     ; $13:99DA: 85 0D       ;
CODE_1399DC:    LDA [$08],y                 ; $13:99DC: B7 08       ;
CODE_1399DE:    AND #$0F                    ; $13:99DE: 29 0F       ;
CODE_1399E0:    STA $0F                     ; $13:99E0: 85 0F       ;
CODE_1399E2:    JSR CODE_1399E9             ; $13:99E2: 20 E9 99    ;
CODE_1399E5:    STZ $02E4                   ; $13:99E5: 9C E4 02    ;
CODE_1399E8:    RTS                         ; $13:99E8: 60          ;

CODE_1399E9:    LDA #$01                    ; $13:99E9: A9 01       ;
CODE_1399EB:    STA $02E3                   ; $13:99EB: 8D E3 02    ;
CODE_1399EE:    LDA $E7                     ; $13:99EE: A5 E7       ;
CODE_1399F0:    STA $02E2                   ; $13:99F0: 8D E2 02    ;
CODE_1399F3:    LDA $E7                     ; $13:99F3: A5 E7       ;
CODE_1399F5:    STA $0C                     ; $13:99F5: 85 0C       ;
CODE_1399F7:    LDY $02E3                   ; $13:99F7: AC E3 02    ;
CODE_1399FA:    LDA [$08],y                 ; $13:99FA: B7 08       ;
CODE_1399FC:    LDY $02E2                   ; $13:99FC: AC E2 02    ;
CODE_1399FF:    STA [$01],y                 ; $13:99FF: 97 01       ;
CODE_139A01:    INC $02E3                   ; $13:9A01: EE E3 02    ;
CODE_139A04:    LDY $02E2                   ; $13:9A04: AC E2 02    ;
CODE_139A07:    JSR CODE_1396D2             ; $13:9A07: 20 D2 96    ;
CODE_139A0A:    STY $02E2                   ; $13:9A0A: 8C E2 02    ;
CODE_139A0D:    DEC $0E                     ; $13:9A0D: C6 0E       ;
CODE_139A0F:    LDA $0E                     ; $13:9A0F: A5 0E       ;
CODE_139A11:    BPL CODE_1399F7             ; $13:9A11: 10 E4       ;
CODE_139A13:    DEC $0F                     ; $13:9A13: C6 0F       ;
CODE_139A15:    LDA $0F                     ; $13:9A15: A5 0F       ;
CODE_139A17:    BMI CODE_139A29             ; $13:9A17: 30 10       ;
CODE_139A19:    LDY $0C                     ; $13:9A19: A4 0C       ;
CODE_139A1B:    JSR CODE_1396B0             ; $13:9A1B: 20 B0 96    ;
CODE_139A1E:    STY $0C                     ; $13:9A1E: 84 0C       ;
CODE_139A20:    STY $02E2                   ; $13:9A20: 8C E2 02    ;
CODE_139A23:    LDA $0D                     ; $13:9A23: A5 0D       ;
CODE_139A25:    STA $0E                     ; $13:9A25: 85 0E       ;
CODE_139A27:    BRA CODE_1399F7             ; $13:9A27: 80 CE       ;

CODE_139A29:    RTS                         ; $13:9A29: 60          ;

CODE_139A2A:    LDA $050F                   ; $13:9A2A: AD 0F 05    ;
CODE_139A2D:    SEC                         ; $13:9A2D: 38          ;
CODE_139A2E:    SBC #$0E                    ; $13:9A2E: E9 0E       ;
CODE_139A30:    STA $0C                     ; $13:9A30: 85 0C       ;
CODE_139A32:    ASL A                       ; $13:9A32: 0A          ;
CODE_139A33:    CLC                         ; $13:9A33: 18          ;
CODE_139A34:    ADC $0C                     ; $13:9A34: 65 0C       ;
CODE_139A36:    STA $0F                     ; $13:9A36: 85 0F       ;
CODE_139A38:    TAX                         ; $13:9A38: AA          ;
CODE_139A39:    LDY $E7                     ; $13:9A39: A4 E7       ;
CODE_139A3B:    STY $0E                     ; $13:9A3B: 84 0E       ;
CODE_139A3D:    LDA $0533                   ; $13:9A3D: AD 33 05    ;
CODE_139A40:    CMP #$05                    ; $13:9A40: C9 05       ;
CODE_139A42:    BNE CODE_139A4B             ; $13:9A42: D0 07       ;
CODE_139A44:    LDA $0534                   ; $13:9A44: AD 34 05    ;
CODE_139A47:    CMP #$04                    ; $13:9A47: C9 04       ;
CODE_139A49:    BEQ CODE_139A65             ; $13:9A49: F0 1A       ;
CODE_139A4B:    LDA $0533                   ; $13:9A4B: AD 33 05    ;
CODE_139A4E:    CMP #$0F                    ; $13:9A4E: C9 0F       ;
CODE_139A50:    BNE CODE_139A69             ; $13:9A50: D0 17       ;
CODE_139A52:    LDA $0534                   ; $13:9A52: AD 34 05    ;
CODE_139A55:    CMP #$03                    ; $13:9A55: C9 03       ;
CODE_139A57:    BEQ CODE_139A65             ; $13:9A57: F0 0C       ;
CODE_139A59:    CMP #$04                    ; $13:9A59: C9 04       ;
CODE_139A5B:    BEQ CODE_139A65             ; $13:9A5B: F0 08       ;
CODE_139A5D:    CMP #$05                    ; $13:9A5D: C9 05       ;
CODE_139A5F:    BEQ CODE_139A65             ; $13:9A5F: F0 04       ;
CODE_139A61:    CMP #$06                    ; $13:9A61: C9 06       ;
CODE_139A63:    BNE CODE_139A69             ; $13:9A63: D0 04       ;
CODE_139A65:    LDA #$05                    ; $13:9A65: A9 05       ;
CODE_139A67:    BRA CODE_139A6B             ; $13:9A67: 80 02       ;

CODE_139A69:    LDA #$04                    ; $13:9A69: A9 04       ;
CODE_139A6B:    STA $0D                     ; $13:9A6B: 85 0D       ;
CODE_139A6D:    LDA.l DATA_13D9BE,x                 ; $13:9A6D: BF BE D9 13 ;
CODE_139A71:    STA [$01],y                 ; $13:9A71: 97 01       ;
CODE_139A73:    TYA                         ; $13:9A73: 98          ;
CODE_139A74:    CLC                         ; $13:9A74: 18          ;
CODE_139A75:    ADC #$10                    ; $13:9A75: 69 10       ;
CODE_139A77:    TAY                         ; $13:9A77: A8          ;
CODE_139A78:    LDA.l DATA_13D9C8,x                 ; $13:9A78: BF C8 D9 13 ;
CODE_139A7C:    STA [$01],y                 ; $13:9A7C: 97 01       ;
CODE_139A7E:    TYA                         ; $13:9A7E: 98          ;
CODE_139A7F:    CLC                         ; $13:9A7F: 18          ;
CODE_139A80:    ADC #$10                    ; $13:9A80: 69 10       ;
CODE_139A82:    TAY                         ; $13:9A82: A8          ;
CODE_139A83:    DEC $0D                     ; $13:9A83: C6 0D       ;
CODE_139A85:    BPL CODE_139A6D             ; $13:9A85: 10 E6       ;
CODE_139A87:    LDA.l DATA_13D9D2,x                 ; $13:9A87: BF D2 D9 13 ;
CODE_139A8B:    STA [$01],y                 ; $13:9A8B: 97 01       ;
CODE_139A8D:    INX                         ; $13:9A8D: E8          ;
CODE_139A8E:    TXA                         ; $13:9A8E: 8A          ;
CODE_139A8F:    LDX $0C                     ; $13:9A8F: A6 0C       ;
CODE_139A91:    CMP.l DATA_13D9DC,x                 ; $13:9A91: DF DC D9 13 ;
CODE_139A95:    BEQ CODE_139AA1             ; $13:9A95: F0 0A       ;
CODE_139A97:    TAX                         ; $13:9A97: AA          ;
CODE_139A98:    LDY $0E                     ; $13:9A98: A4 0E       ;
CODE_139A9A:    JSR CODE_1396B0             ; $13:9A9A: 20 B0 96    ;
CODE_139A9D:    STY $0E                     ; $13:9A9D: 84 0E       ;
CODE_139A9F:    BRA CODE_139A3D             ; $13:9A9F: 80 9C       ;

CODE_139AA1:    RTS                         ; $13:9AA1: 60          ;

CODE_139AA2:    LDY $E7                     ; $13:9AA2: A4 E7       ;
CODE_139AA4:    LDA #$03                    ; $13:9AA4: A9 03       ;
CODE_139AA6:    STA $0F                     ; $13:9AA6: 85 0F       ;
CODE_139AA8:    STA $0E                     ; $13:9AA8: 85 0E       ;
CODE_139AAA:    LDX $0E                     ; $13:9AAA: A6 0E       ;
CODE_139AAC:    LDA.l DATA_13D9DF,x                 ; $13:9AAC: BF DF D9 13 ;
CODE_139AB0:    STA [$01],y                 ; $13:9AB0: 97 01       ;
CODE_139AB2:    STY $0D                     ; $13:9AB2: 84 0D       ;
CODE_139AB4:    TYA                         ; $13:9AB4: 98          ;
CODE_139AB5:    CLC                         ; $13:9AB5: 18          ;
CODE_139AB6:    ADC #$10                    ; $13:9AB6: 69 10       ;
CODE_139AB8:    TAY                         ; $13:9AB8: A8          ;
CODE_139AB9:    STX $0C                     ; $13:9AB9: 86 0C       ;
CODE_139ABB:    JSR CODE_139ADA             ; $13:9ABB: 20 DA 9A    ;
CODE_139ABE:    LDX $0C                     ; $13:9ABE: A6 0C       ;
CODE_139AC0:    CMP #$00                    ; $13:9AC0: C9 00       ;
CODE_139AC2:    BNE CODE_139AC8             ; $13:9AC2: D0 04       ;
CODE_139AC4:    LDA.l DATA_13D9E3                   ; $13:9AC4: AF E3 D9 13 ;
CODE_139AC8:    STA [$01],y                 ; $13:9AC8: 97 01       ;
CODE_139ACA:    LDY $0D                     ; $13:9ACA: A4 0D       ;
CODE_139ACC:    INY                         ; $13:9ACC: C8          ;
CODE_139ACD:    DEC $0E                     ; $13:9ACD: C6 0E       ;
CODE_139ACF:    BPL CODE_139AAA             ; $13:9ACF: 10 D9       ;
CODE_139AD1:    DEC $0F                     ; $13:9AD1: C6 0F       ;
CODE_139AD3:    BMI CODE_139AD9             ; $13:9AD3: 30 04       ;
CODE_139AD5:    LDA #$03                    ; $13:9AD5: A9 03       ;
CODE_139AD7:    BRA CODE_139AA8             ; $13:9AD7: 80 CF       ;

CODE_139AD9:    RTS                         ; $13:9AD9: 60          ;

CODE_139ADA:    LDX #$05                    ; $13:9ADA: A2 05       ;
CODE_139ADC:    LDA [$01],y                 ; $13:9ADC: B7 01       ;
CODE_139ADE:    CMP.l DATA_13D9E4,x                 ; $13:9ADE: DF E4 D9 13 ;
CODE_139AE2:    BEQ CODE_139AEA             ; $13:9AE2: F0 06       ;
CODE_139AE4:    DEX                         ; $13:9AE4: CA          ;
CODE_139AE5:    BPL CODE_139ADC             ; $13:9AE5: 10 F5       ;
CODE_139AE7:    LDA #$00                    ; $13:9AE7: A9 00       ;
CODE_139AE9:    RTS                         ; $13:9AE9: 60          ;

CODE_139AEA:    LDA.l DATA_13D9EA,x                 ; $13:9AEA: BF EA D9 13 ;
CODE_139AEE:    RTS                         ; $13:9AEE: 60          ;

CODE_139AEF:    LDY $E7                     ; $13:9AEF: A4 E7       ;
CODE_139AF1:    STY $0C                     ; $13:9AF1: 84 0C       ;
CODE_139AF3:    STZ $0D                     ; $13:9AF3: 64 0D       ;
CODE_139AF5:    STZ $0F                     ; $13:9AF5: 64 0F       ;
CODE_139AF7:    STZ $0E                     ; $13:9AF7: 64 0E       ;
CODE_139AF9:    LDX $0D                     ; $13:9AF9: A6 0D       ;
CODE_139AFB:    LDA.l DATA_13D9F7,x                 ; $13:9AFB: BF F7 D9 13 ;
CODE_139AFF:    STA [$01],y                 ; $13:9AFF: 97 01       ;
CODE_139B01:    INC $0D                     ; $13:9B01: E6 0D       ;
CODE_139B03:    LDA $0D                     ; $13:9B03: A5 0D       ;
CODE_139B05:    CMP #$17                    ; $13:9B05: C9 17       ;
CODE_139B07:    BEQ CODE_139B32             ; $13:9B07: F0 29       ;
CODE_139B09:    INC $0E                     ; $13:9B09: E6 0E       ;
CODE_139B0B:    LDX $0F                     ; $13:9B0B: A6 0F       ;
CODE_139B0D:    LDA.l DATA_13D9F0,x                 ; $13:9B0D: BF F0 D9 13 ;
CODE_139B11:    CMP $0E                     ; $13:9B11: C5 0E       ;
CODE_139B13:    BEQ CODE_139B27             ; $13:9B13: F0 12       ;
CODE_139B15:    TYA                         ; $13:9B15: 98          ;
CODE_139B16:    AND #$F0                    ; $13:9B16: 29 F0       ;
CODE_139B18:    CMP #$E0                    ; $13:9B18: C9 E0       ;
CODE_139B1A:    BEQ CODE_139B21             ; $13:9B1A: F0 05       ;
CODE_139B1C:    JSR CODE_1396D2             ; $13:9B1C: 20 D2 96    ;
CODE_139B1F:    BRA CODE_139AF9             ; $13:9B1F: 80 D8       ;

CODE_139B21:    INC $0D                     ; $13:9B21: E6 0D       ;
CODE_139B23:    INC $0D                     ; $13:9B23: E6 0D       ;
CODE_139B25:    INC $0D                     ; $13:9B25: E6 0D       ;
CODE_139B27:    INC $0F                     ; $13:9B27: E6 0F       ;
CODE_139B29:    LDY $0C                     ; $13:9B29: A4 0C       ;
CODE_139B2B:    JSR CODE_1396B0             ; $13:9B2B: 20 B0 96    ;
CODE_139B2E:    STY $0C                     ; $13:9B2E: 84 0C       ;
CODE_139B30:    BRA CODE_139AF7             ; $13:9B30: 80 C5       ;

CODE_139B32:    RTS                         ; $13:9B32: 60          ;

CODE_139B33:    RTS                         ; $13:9B33: 60          ;

CODE_139B34:    STZ $0D                     ; $13:9B34: 64 0D       ;
CODE_139B36:    STZ $0E                     ; $13:9B36: 64 0E       ;
CODE_139B38:    LDA $050F                   ; $13:9B38: AD 0F 05    ;
CODE_139B3B:    SEC                         ; $13:9B3B: 38          ;
CODE_139B3C:    SBC #$31                    ; $13:9B3C: E9 31       ;
CODE_139B3E:    STA $0F                     ; $13:9B3E: 85 0F       ;
CODE_139B40:    LDY $E7                     ; $13:9B40: A4 E7       ;
CODE_139B42:    LDX $0D                     ; $13:9B42: A6 0D       ;
CODE_139B44:    LDY $E7                     ; $13:9B44: A4 E7       ;
CODE_139B46:    LDA.l DATA_13DAA9,x                 ; $13:9B46: BF A9 DA 13 ;
CODE_139B4A:    STA [$01],y                 ; $13:9B4A: 97 01       ;
CODE_139B4C:    JSR CODE_1396D2             ; $13:9B4C: 20 D2 96    ;
CODE_139B4F:    LDA.l DATA_13DAAE,x                 ; $13:9B4F: BF AE DA 13 ;
CODE_139B53:    STA [$01],y                 ; $13:9B53: 97 01       ;
CODE_139B55:    JSR CODE_1396D2             ; $13:9B55: 20 D2 96    ;
CODE_139B58:    LDA.l DATA_13DAB3,x                 ; $13:9B58: BF B3 DA 13 ;
CODE_139B5C:    STA [$01],y                 ; $13:9B5C: 97 01       ;
CODE_139B5E:    JSR CODE_1396D2             ; $13:9B5E: 20 D2 96    ;
CODE_139B61:    LDA.l DATA_13DAB8,x                 ; $13:9B61: BF B8 DA 13 ;
CODE_139B65:    STA [$01],y                 ; $13:9B65: 97 01       ;
CODE_139B67:    TYA                         ; $13:9B67: 98          ;
CODE_139B68:    AND #$F0                    ; $13:9B68: 29 F0       ;
CODE_139B6A:    CMP #$E0                    ; $13:9B6A: C9 E0       ;
CODE_139B6C:    BNE CODE_139B5E             ; $13:9B6C: D0 F0       ;
CODE_139B6E:    LDX $0F                     ; $13:9B6E: A6 0F       ;
CODE_139B70:    INC $0E                     ; $13:9B70: E6 0E       ;
CODE_139B72:    LDA $0E                     ; $13:9B72: A5 0E       ;
CODE_139B74:    CMP.l DATA_13DAA5,x                 ; $13:9B74: DF A5 DA 13 ;
CODE_139B78:    BEQ CODE_139BA5             ; $13:9B78: F0 2B       ;
CODE_139B7A:    CPX #$02                    ; $13:9B7A: E0 02       ;
CODE_139B7C:    BNE CODE_139B86             ; $13:9B7C: D0 08       ;
CODE_139B7E:    CMP #$02                    ; $13:9B7E: C9 02       ;
CODE_139B80:    BNE CODE_139B97             ; $13:9B80: D0 15       ;
CODE_139B82:    INC $0D                     ; $13:9B82: E6 0D       ;
CODE_139B84:    BRA CODE_139B97             ; $13:9B84: 80 11       ;

CODE_139B86:    CMP #$03                    ; $13:9B86: C9 03       ;
CODE_139B88:    BPL CODE_139B8C             ; $13:9B88: 10 02       ;
CODE_139B8A:    BRA CODE_139B97             ; $13:9B8A: 80 0B       ;

CODE_139B8C:    LDA.l DATA_13DAA5,x                 ; $13:9B8C: BF A5 DA 13 ;
CODE_139B90:    SEC                         ; $13:9B90: 38          ;
CODE_139B91:    SBC #$03                    ; $13:9B91: E9 03       ;
CODE_139B93:    CMP $0E                     ; $13:9B93: C5 0E       ;
CODE_139B95:    BCS CODE_139B99                     ; $13:9B95: B0 02       ;
CODE_139B97:    INC $0D                     ; $13:9B97: E6 0D       ;
CODE_139B99:    LDY $00E7                   ; $13:9B99: AC E7 00    ;
CODE_139B9C:    JSR CODE_1396B0             ; $13:9B9C: 20 B0 96    ;
CODE_139B9F:    STY $00E7                   ; $13:9B9F: 8C E7 00    ;
CODE_139BA2:    BRL CODE_139B42             ; $13:9BA2: 82 9D FF    ;

CODE_139BA5:    RTS                         ; $13:9BA5: 60          ;

CODE_139BA6:    STZ $0E                     ; $13:9BA6: 64 0E       ;
CODE_139BA8:    LDA $050F                   ; $13:9BA8: AD 0F 05    ;
CODE_139BAB:    SEC                         ; $13:9BAB: 38          ;
CODE_139BAC:    SBC #$39                    ; $13:9BAC: E9 39       ;
CODE_139BAE:    ASL A                       ; $13:9BAE: 0A          ;
CODE_139BAF:    ASL A                       ; $13:9BAF: 0A          ;
CODE_139BB0:    STA $0D                     ; $13:9BB0: 85 0D       ;
CODE_139BB2:    STZ $0C                     ; $13:9BB2: 64 0C       ;
CODE_139BB4:    STZ $0F                     ; $13:9BB4: 64 0F       ;
CODE_139BB6:    LDY $E7                     ; $13:9BB6: A4 E7       ;
CODE_139BB8:    LDA $0D                     ; $13:9BB8: A5 0D       ;
CODE_139BBA:    CLC                         ; $13:9BBA: 18          ;
CODE_139BBB:    ADC $0E                     ; $13:9BBB: 65 0E       ;
CODE_139BBD:    TAX                         ; $13:9BBD: AA          ;
CODE_139BBE:    LDA.l DATA_13DABD,x                 ; $13:9BBE: BF BD DA 13 ;
CODE_139BC2:    PHX                         ; $13:9BC2: DA          ;
CODE_139BC3:    JSR CODE_139C24             ; $13:9BC3: 20 24 9C    ;
CODE_139BC6:    PLX                         ; $13:9BC6: FA          ;
CODE_139BC7:    STA [$01],y                 ; $13:9BC7: 97 01       ;
CODE_139BC9:    INC $0C                     ; $13:9BC9: E6 0C       ;
CODE_139BCB:    JSR CODE_1396D2             ; $13:9BCB: 20 D2 96    ;
CODE_139BCE:    LDA.l DATA_13DACD,x                 ; $13:9BCE: BF CD DA 13 ;
CODE_139BD2:    PHX                         ; $13:9BD2: DA          ;
CODE_139BD3:    JSR CODE_139C24             ; $13:9BD3: 20 24 9C    ;
CODE_139BD6:    PLX                         ; $13:9BD6: FA          ;
CODE_139BD7:    STA [$01],y                 ; $13:9BD7: 97 01       ;
CODE_139BD9:    INC $0C                     ; $13:9BD9: E6 0C       ;
CODE_139BDB:    TYA                         ; $13:9BDB: 98          ;
CODE_139BDC:    AND #$F0                    ; $13:9BDC: 29 F0       ;
CODE_139BDE:    CMP #$E0                    ; $13:9BDE: C9 E0       ;
CODE_139BE0:    BEQ CODE_139C0A             ; $13:9BE0: F0 28       ;
CODE_139BE2:    JSR CODE_1396D2             ; $13:9BE2: 20 D2 96    ;
CODE_139BE5:    LDA $0D                     ; $13:9BE5: A5 0D       ;
CODE_139BE7:    CLC                         ; $13:9BE7: 18          ;
CODE_139BE8:    ADC $0E                     ; $13:9BE8: 65 0E       ;
CODE_139BEA:    CLC                         ; $13:9BEA: 18          ;
CODE_139BEB:    ADC $0F                     ; $13:9BEB: 65 0F       ;
CODE_139BED:    TAX                         ; $13:9BED: AA          ;
CODE_139BEE:    LDA.l DATA_13DADD,x                 ; $13:9BEE: BF DD DA 13 ;
CODE_139BF2:    STA [$01],y                 ; $13:9BF2: 97 01       ;
CODE_139BF4:    TYA                         ; $13:9BF4: 98          ;
CODE_139BF5:    AND #$F0                    ; $13:9BF5: 29 F0       ;
CODE_139BF7:    CMP #$E0                    ; $13:9BF7: C9 E0       ;
CODE_139BF9:    BEQ CODE_139C0A             ; $13:9BF9: F0 0F       ;
CODE_139BFB:    LDA $0F                     ; $13:9BFB: A5 0F       ;
CODE_139BFD:    CLC                         ; $13:9BFD: 18          ;
CODE_139BFE:    ADC #$10                    ; $13:9BFE: 69 10       ;
CODE_139C00:    STA $0F                     ; $13:9C00: 85 0F       ;
CODE_139C02:    CMP #$50                    ; $13:9C02: C9 50       ;
CODE_139C04:    BNE CODE_139BE2             ; $13:9C04: D0 DC       ;
CODE_139C06:    STZ $0F                     ; $13:9C06: 64 0F       ;
CODE_139C08:    BRA CODE_139BE2             ; $13:9C08: 80 D8       ;

CODE_139C0A:    LDA $0E                     ; $13:9C0A: A5 0E       ;
CODE_139C0C:    CMP #$03                    ; $13:9C0C: C9 03       ;
CODE_139C0E:    BEQ CODE_139C1E             ; $13:9C0E: F0 0E       ;
CODE_139C10:    LDY $00E7                   ; $13:9C10: AC E7 00    ;
CODE_139C13:    JSR CODE_1396B0             ; $13:9C13: 20 B0 96    ;
CODE_139C16:    STY $00E7                   ; $13:9C16: 8C E7 00    ;
CODE_139C19:    INC $0E                     ; $13:9C19: E6 0E       ;
CODE_139C1B:    BRL CODE_139BB2             ; $13:9C1B: 82 94 FF    ;

CODE_139C1E:    PHX                         ; $13:9C1E: DA          ;
CODE_139C1F:    JSR CODE_139C57             ; $13:9C1F: 20 57 9C    ;
CODE_139C22:    PLX                         ; $13:9C22: FA          ;
CODE_139C23:    RTS                         ; $13:9C23: 60          ;

CODE_139C24:    STA $0247                   ; $13:9C24: 8D 47 02    ;
CODE_139C27:    LDA $0D                     ; $13:9C27: A5 0D       ;
CODE_139C29:    CMP #$0C                    ; $13:9C29: C9 0C       ;
CODE_139C2B:    BEQ CODE_139C53             ; $13:9C2B: F0 26       ;
CODE_139C2D:    LDA $0C                     ; $13:9C2D: A5 0C       ;
CODE_139C2F:    BEQ CODE_139C3B             ; $13:9C2F: F0 0A       ;
CODE_139C31:    LDA $0E                     ; $13:9C31: A5 0E       ;
CODE_139C33:    BEQ CODE_139C3B             ; $13:9C33: F0 06       ;
CODE_139C35:    CMP #$03                    ; $13:9C35: C9 03       ;
CODE_139C37:    BEQ CODE_139C3B             ; $13:9C37: F0 02       ;
CODE_139C39:    BRA CODE_139C53             ; $13:9C39: 80 18       ;

CODE_139C3B:    LDA [$01],y                 ; $13:9C3B: B7 01       ;
CODE_139C3D:    CMP #$FF                    ; $13:9C3D: C9 FF       ;
CODE_139C3F:    BEQ CODE_139C53             ; $13:9C3F: F0 12       ;
CODE_139C41:    LDX #$05                    ; $13:9C41: A2 05       ;
CODE_139C43:    CMP.l DATA_13DB2D,x                 ; $13:9C43: DF 2D DB 13 ;
CODE_139C47:    BEQ CODE_139C4E             ; $13:9C47: F0 05       ;
CODE_139C49:    DEX                         ; $13:9C49: CA          ;
CODE_139C4A:    BPL CODE_139C43             ; $13:9C4A: 10 F7       ;
CODE_139C4C:    BRA CODE_139C53             ; $13:9C4C: 80 05       ;

CODE_139C4E:    LDA.l DATA_13DB33,x                 ; $13:9C4E: BF 33 DB 13 ;
CODE_139C52:    RTS                         ; $13:9C52: 60          ;

CODE_139C53:    LDA $0247                   ; $13:9C53: AD 47 02    ;
CODE_139C56:    RTS                         ; $13:9C56: 60          ;

CODE_139C57:    LDY $00E7                   ; $13:9C57: AC E7 00    ;
CODE_139C5A:    JSR CODE_1396B0             ; $13:9C5A: 20 B0 96    ;
CODE_139C5D:    TYA                         ; $13:9C5D: 98          ;
CODE_139C5E:    CLC                         ; $13:9C5E: 18          ;
CODE_139C5F:    ADC #$10                    ; $13:9C5F: 69 10       ;
CODE_139C61:    TAY                         ; $13:9C61: A8          ;
CODE_139C62:    LDA [$01],y                 ; $13:9C62: B7 01       ;
CODE_139C64:    CMP #$32                    ; $13:9C64: C9 32       ;
CODE_139C66:    BNE CODE_139C6E             ; $13:9C66: D0 06       ;
CODE_139C68:    LDA #$45                    ; $13:9C68: A9 45       ;
CODE_139C6A:    STA [$01],y                 ; $13:9C6A: 97 01       ;
CODE_139C6C:    BRA CODE_139C87             ; $13:9C6C: 80 19       ;

CODE_139C6E:    LDA [$01],y                 ; $13:9C6E: B7 01       ;
CODE_139C70:    CMP #$FF                    ; $13:9C70: C9 FF       ;
CODE_139C72:    BEQ CODE_139C87             ; $13:9C72: F0 13       ;
CODE_139C74:    LDX #$05                    ; $13:9C74: A2 05       ;
CODE_139C76:    CMP.l DATA_13DB39,x                 ; $13:9C76: DF 39 DB 13 ;
CODE_139C7A:    BEQ CODE_139C81             ; $13:9C7A: F0 05       ;
CODE_139C7C:    DEX                         ; $13:9C7C: CA          ;
CODE_139C7D:    BPL CODE_139C76             ; $13:9C7D: 10 F7       ;
CODE_139C7F:    BRA CODE_139C87             ; $13:9C7F: 80 06       ;

CODE_139C81:    LDA.l DATA_13DB3F,x                 ; $13:9C81: BF 3F DB 13 ;
CODE_139C85:    STA [$01],y                 ; $13:9C85: 97 01       ;
CODE_139C87:    TYA                         ; $13:9C87: 98          ;
CODE_139C88:    AND #$F0                    ; $13:9C88: 29 F0       ;
CODE_139C8A:    CMP #$E0                    ; $13:9C8A: C9 E0       ;
CODE_139C8C:    BEQ CODE_139C93             ; $13:9C8C: F0 05       ;
CODE_139C8E:    JSR CODE_1396D2             ; $13:9C8E: 20 D2 96    ;
CODE_139C91:    BRA CODE_139C6E             ; $13:9C91: 80 DB       ;

CODE_139C93:    RTS                         ; $13:9C93: 60          ;

CODE_139C94:    LDA $0533                   ; $13:9C94: AD 33 05    ;
CODE_139C97:    CMP #$0D                    ; $13:9C97: C9 0D       ;
CODE_139C99:    BNE CODE_139CAA             ; $13:9C99: D0 0F       ;
CODE_139C9B:    LDA $0534                   ; $13:9C9B: AD 34 05    ;
CODE_139C9E:    CMP #$02                    ; $13:9C9E: C9 02       ;
CODE_139CA0:    BEQ CODE_139CA6             ; $13:9CA0: F0 04       ;
CODE_139CA2:    CMP #$03                    ; $13:9CA2: C9 03       ;
CODE_139CA4:    BNE CODE_139CAA             ; $13:9CA4: D0 04       ;
CODE_139CA6:    LDA #$C0                    ; $13:9CA6: A9 C0       ;
CODE_139CA8:    BRA CODE_139CAC             ; $13:9CA8: 80 02       ;

CODE_139CAA:    LDA #$B0                    ; $13:9CAA: A9 B0       ;
CODE_139CAC:    STA $0D                     ; $13:9CAC: 85 0D       ;
CODE_139CAE:    STZ $0E                     ; $13:9CAE: 64 0E       ;
CODE_139CB0:    LDY $E7                     ; $13:9CB0: A4 E7       ;
CODE_139CB2:    LDX $0E                     ; $13:9CB2: A6 0E       ;
CODE_139CB4:    LDA.l DATA_13DB45,x                 ; $13:9CB4: BF 45 DB 13 ;
CODE_139CB8:    JSR CODE_139CE0             ; $13:9CB8: 20 E0 9C    ;
CODE_139CBB:    STA [$01],y                 ; $13:9CBB: 97 01       ;
CODE_139CBD:    JSR CODE_1396D2             ; $13:9CBD: 20 D2 96    ;
CODE_139CC0:    TYA                         ; $13:9CC0: 98          ;
CODE_139CC1:    AND #$F0                    ; $13:9CC1: 29 F0       ;
CODE_139CC3:    CMP $0D                     ; $13:9CC3: C5 0D       ;
CODE_139CC5:    BEQ CODE_139CCF             ; $13:9CC5: F0 08       ;
CODE_139CC7:    LDA.l DATA_13DB47,x                 ; $13:9CC7: BF 47 DB 13 ;
CODE_139CCB:    STA [$01],y                 ; $13:9CCB: 97 01       ;
CODE_139CCD:    BRA CODE_139CBD             ; $13:9CCD: 80 EE       ;

CODE_139CCF:    JSR CODE_139D04             ; $13:9CCF: 20 04 9D    ;
CODE_139CD2:    LDA $0E                     ; $13:9CD2: A5 0E       ;
CODE_139CD4:    BNE CODE_139CDF             ; $13:9CD4: D0 09       ;
CODE_139CD6:    LDY $E7                     ; $13:9CD6: A4 E7       ;
CODE_139CD8:    JSR CODE_1396B0             ; $13:9CD8: 20 B0 96    ;
CODE_139CDB:    INC $0E                     ; $13:9CDB: E6 0E       ;
CODE_139CDD:    BRA CODE_139CB2             ; $13:9CDD: 80 D3       ;

CODE_139CDF:    RTS                         ; $13:9CDF: 60          ;

CODE_139CE0:    STA $0247                   ; $13:9CE0: 8D 47 02    ;
CODE_139CE3:    STX $0F                     ; $13:9CE3: 86 0F       ;
CODE_139CE5:    LDA [$01],y                 ; $13:9CE5: B7 01       ;
CODE_139CE7:    CMP #$FF                    ; $13:9CE7: C9 FF       ;
CODE_139CE9:    BEQ CODE_139CFE             ; $13:9CE9: F0 13       ;
CODE_139CEB:    LDX #$01                    ; $13:9CEB: A2 01       ;
CODE_139CED:    CMP.l DATA_13DB49,x                 ; $13:9CED: DF 49 DB 13 ;
CODE_139CF1:    BEQ CODE_139CF8             ; $13:9CF1: F0 05       ;
CODE_139CF3:    DEX                         ; $13:9CF3: CA          ;
CODE_139CF4:    BPL CODE_139CED             ; $13:9CF4: 10 F7       ;
CODE_139CF6:    BRA CODE_139CFE             ; $13:9CF6: 80 06       ;

CODE_139CF8:    LDA.l DATA_13DB4B,x                 ; $13:9CF8: BF 4B DB 13 ;
CODE_139CFC:    BRA CODE_139D01             ; $13:9CFC: 80 03       ;

CODE_139CFE:    LDA $0247                   ; $13:9CFE: AD 47 02    ;
CODE_139D01:    LDX $0F                     ; $13:9D01: A6 0F       ;
CODE_139D03:    RTS                         ; $13:9D03: 60          ;

CODE_139D04:    LDA $0E                     ; $13:9D04: A5 0E       ;
CODE_139D06:    ASL A                       ; $13:9D06: 0A          ;
CODE_139D07:    TAX                         ; $13:9D07: AA          ;
CODE_139D08:    LDA [$01],y                 ; $13:9D08: B7 01       ;
CODE_139D0A:    CMP.l DATA_13DB4D,x                 ; $13:9D0A: DF 4D DB 13 ;
CODE_139D0E:    BEQ CODE_139D17             ; $13:9D0E: F0 07       ;
CODE_139D10:    INX                         ; $13:9D10: E8          ;
CODE_139D11:    CMP.l DATA_13DB4D,x                 ; $13:9D11: DF 4D DB 13 ;
CODE_139D15:    BNE CODE_139D1E             ; $13:9D15: D0 07       ;
CODE_139D17:    LDA.l DATA_13DB51,x                 ; $13:9D17: BF 51 DB 13 ;
CODE_139D1B:    STA [$01],y                 ; $13:9D1B: 97 01       ;
CODE_139D1D:    RTS                         ; $13:9D1D: 60          ;

CODE_139D1E:    LDA $0E                     ; $13:9D1E: A5 0E       ;
CODE_139D20:    ASL A                       ; $13:9D20: 0A          ;
CODE_139D21:    TAX                         ; $13:9D21: AA          ;
CODE_139D22:    LDA [$01],y                 ; $13:9D22: B7 01       ;
CODE_139D24:    CMP.l DATA_13DB55,x                 ; $13:9D24: DF 55 DB 13 ;
CODE_139D28:    BEQ CODE_139D31             ; $13:9D28: F0 07       ;
CODE_139D2A:    INX                         ; $13:9D2A: E8          ;
CODE_139D2B:    CMP.l DATA_13DB55,x                 ; $13:9D2B: DF 55 DB 13 ;
CODE_139D2F:    BNE CODE_139D37             ; $13:9D2F: D0 06       ;
CODE_139D31:    LDA.l DATA_13DB59,x                 ; $13:9D31: BF 59 DB 13 ;
CODE_139D35:    STA [$01],y                 ; $13:9D35: 97 01       ;
CODE_139D37:    RTS                         ; $13:9D37: 60          ;

CODE_139D38:    LDY $E7                     ; $13:9D38: A4 E7       ;
CODE_139D3A:    LDA.l DATA_13DB5D                   ; $13:9D3A: AF 5D DB 13 ;
CODE_139D3E:    STA [$01],y                 ; $13:9D3E: 97 01       ;
CODE_139D40:    JSR CODE_1396D2             ; $13:9D40: 20 D2 96    ;
CODE_139D43:    LDA.l DATA_13DB5E                   ; $13:9D43: AF 5E DB 13 ;
CODE_139D47:    STA [$01],y                 ; $13:9D47: 97 01       ;
CODE_139D49:    JSR CODE_1396D2             ; $13:9D49: 20 D2 96    ;
CODE_139D4C:    LDA.l DATA_13DB5F                   ; $13:9D4C: AF 5F DB 13 ;
CODE_139D50:    STA [$01],y                 ; $13:9D50: 97 01       ;
CODE_139D52:    RTS                         ; $13:9D52: 60          ;

CODE_139D53:    STZ $0770                   ; $13:9D53: 9C 70 07    ;
CODE_139D56:    STZ $C4                     ; $13:9D56: 64 C4       ;
CODE_139D58:    LDA $0533                   ; $13:9D58: AD 33 05    ;
CODE_139D5B:    CMP #$0F                    ; $13:9D5B: C9 0F       ;
CODE_139D5D:    BNE CODE_139D6B             ; $13:9D5D: D0 0C       ;
CODE_139D5F:    LDA $051B                   ; $13:9D5F: AD 1B 05    ;
CODE_139D62:    BNE CODE_139D6B             ; $13:9D62: D0 07       ;
CODE_139D64:    INC $0770                   ; $13:9D64: EE 70 07    ;
CODE_139D67:    LDA #$80                    ; $13:9D67: A9 80       ;
CODE_139D69:    BRA CODE_139D6D             ; $13:9D69: 80 02       ;

CODE_139D6B:    LDA #$60                    ; $13:9D6B: A9 60       ;
CODE_139D6D:    STA $C5                     ; $13:9D6D: 85 C5       ;
CODE_139D6F:    LDA #$7F                    ; $13:9D6F: A9 7F       ;
CODE_139D71:    STA $C6                     ; $13:9D71: 85 C6       ;
CODE_139D73:    LDA $0770                   ; $13:9D73: AD 70 07    ;
CODE_139D76:    BNE CODE_139D85             ; $13:9D76: D0 0D       ;
CODE_139D78:    LDX $0533                   ; $13:9D78: AE 33 05    ;
CODE_139D7B:    LDA.l DATA_11D098,x                 ; $13:9D7B: BF 98 D0 11 ;
CODE_139D7F:    CLC                         ; $13:9D7F: 18          ;
CODE_139D80:    ADC $0534                   ; $13:9D80: 6D 34 05    ;
CODE_139D83:    BRA CODE_139D8E             ; $13:9D83: 80 09       ;

CODE_139D85:    LDX #$0F                    ; $13:9D85: A2 0F       ;
CODE_139D87:    LDA.l DATA_11D098,x                 ; $13:9D87: BF 98 D0 11 ;
CODE_139D8B:    CLC                         ; $13:9D8B: 18          ;
CODE_139D8C:    ADC #$06                    ; $13:9D8C: 69 06       ;
CODE_139D8E:    TAX                         ; $13:9D8E: AA          ;
CODE_139D8F:    LDA.l DATA_13A61D,x                 ; $13:9D8F: BF 1D A6 13 ;
CODE_139D93:    ASL A                       ; $13:9D93: 0A          ;
CODE_139D94:    TAX                         ; $13:9D94: AA          ;
CODE_139D95:    LDA.l PNTR_13A6E5,x                 ; $13:9D95: BF E5 A6 13 ;
CODE_139D99:    STA $00                     ; $13:9D99: 85 00       ;
CODE_139D9B:    INX                         ; $13:9D9B: E8          ;
CODE_139D9C:    LDA.l PNTR_13A6E5,x                 ; $13:9D9C: BF E5 A6 13 ;
CODE_139DA0:    STA $01                     ; $13:9DA0: 85 01       ;
CODE_139DA2:    LDA #$13                    ; $13:9DA2: A9 13       ;
CODE_139DA4:    STA $02                     ; $13:9DA4: 85 02       ;
CODE_139DA6:    STZ $02D7                   ; $13:9DA6: 9C D7 02    ;
CODE_139DA9:    STZ $02D8                   ; $13:9DA9: 9C D8 02    ;
CODE_139DAC:    STZ $02DA                   ; $13:9DAC: 9C DA 02    ;
CODE_139DAF:    LDA #$10                    ; $13:9DAF: A9 10       ;
CODE_139DB1:    STA $02D9                   ; $13:9DB1: 8D D9 02    ;
CODE_139DB4:    JSL CODE_118B2D             ; $13:9DB4: 22 2D 8B 11 ;
CODE_139DB8:    JSR CODE_1397F3             ; $13:9DB8: 20 F3 97    ;
CODE_139DBB:    LDA $02D9                   ; $13:9DBB: AD D9 02    ;
CODE_139DBE:    CMP #$14                    ; $13:9DBE: C9 14       ;
CODE_139DC0:    BNE CODE_139DB4             ; $13:9DC0: D0 F2       ;
CODE_139DC2:    LDA #$00                    ; $13:9DC2: A9 00       ;
CODE_139DC4:    STA $7F0000                 ; $13:9DC4: 8F 00 00 7F ;
CODE_139DC8:    STA $7F0001                 ; $13:9DC8: 8F 01 00 7F ;
CODE_139DCC:    DEC A                       ; $13:9DCC: 3A          ;
CODE_139DCD:    STA $7F0002                 ; $13:9DCD: 8F 02 00 7F ;
CODE_139DD1:    STZ $0202                   ; $13:9DD1: 9C 02 02    ;
CODE_139DD4:    STZ $0203                   ; $13:9DD4: 9C 03 02    ;
CODE_139DD7:    LDA #$20                    ; $13:9DD7: A9 20       ;
CODE_139DD9:    STA $023D                   ; $13:9DD9: 8D 3D 02    ;
CODE_139DDC:    LDA #$40                    ; $13:9DDC: A9 40       ;
CODE_139DDE:    STA $023E                   ; $13:9DDE: 8D 3E 02    ;
CODE_139DE1:    LDA #$80                    ; $13:9DE1: A9 80       ;
CODE_139DE3:    STA $023F                   ; $13:9DE3: 8D 3F 02    ;
CODE_139DE6:    RTL                         ; $13:9DE6: 6B          ;

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

CODE_13DC00:    REP #$30                    ; $13:DC00: C2 30       ;
CODE_13DC02:    LDA $0533                   ; $13:DC02: AD 33 05    ;
CODE_13DC05:    AND #$00FF                  ; $13:DC05: 29 FF 00    ;
CODE_13DC08:    ASL A                       ; $13:DC08: 0A          ;
CODE_13DC09:    ASL A                       ; $13:DC09: 0A          ;
CODE_13DC0A:    ASL A                       ; $13:DC0A: 0A          ;
CODE_13DC0B:    ASL A                       ; $13:DC0B: 0A          ;
CODE_13DC0C:    ASL A                       ; $13:DC0C: 0A          ;
CODE_13DC0D:    TAX                         ; $13:DC0D: AA          ;
CODE_13DC0E:    LDY #$0000                  ; $13:DC0E: A0 00 00    ;
CODE_13DC11:    LDA.l DATA_14B65C,x                 ; $13:DC11: BF 5C B6 14 ;
CODE_13DC15:    STA $0CA0,y                 ; $13:DC15: 99 A0 0C    ;
CODE_13DC18:    INX                         ; $13:DC18: E8          ;
CODE_13DC19:    INX                         ; $13:DC19: E8          ;
CODE_13DC1A:    INY                         ; $13:DC1A: C8          ;
CODE_13DC1B:    INY                         ; $13:DC1B: C8          ;
CODE_13DC1C:    CPY #$0020                  ; $13:DC1C: C0 20 00    ;
CODE_13DC1F:    BNE CODE_13DC11             ; $13:DC1F: D0 F0       ;
CODE_13DC21:    SEP #$30                    ; $13:DC21: E2 30       ;
CODE_13DC23:    LDX $0533                   ; $13:DC23: AE 33 05    ;
CODE_13DC26:    LDA.l DATA_11D098,x                 ; $13:DC26: BF 98 D0 11 ;
CODE_13DC2A:    CLC                         ; $13:DC2A: 18          ;
CODE_13DC2B:    ADC $0534                   ; $13:DC2B: 6D 34 05    ;
CODE_13DC2E:    LDX #$06                    ; $13:DC2E: A2 06       ;
CODE_13DC30:    CMP.l DATA_138779,x                 ; $13:DC30: DF 79 87 13 ;
CODE_13DC34:    BEQ CODE_13DC3C             ; $13:DC34: F0 06       ;
CODE_13DC36:    DEX                         ; $13:DC36: CA          ;
CODE_13DC37:    BPL CODE_13DC30             ; $13:DC37: 10 F7       ;
CODE_13DC39:    BRL CODE_13DEDC             ; $13:DC39: 82 A0 02    ;

CODE_13DC3C:    REP #$20                    ; $13:DC3C: C2 20       ;
CODE_13DC3E:    TXA                         ; $13:DC3E: 8A          ;
CODE_13DC3F:    AND #$00FF                  ; $13:DC3F: 29 FF 00    ;
CODE_13DC42:    ASL A                       ; $13:DC42: 0A          ;
CODE_13DC43:    ASL A                       ; $13:DC43: 0A          ;
CODE_13DC44:    ASL A                       ; $13:DC44: 0A          ;
CODE_13DC45:    ASL A                       ; $13:DC45: 0A          ;
CODE_13DC46:    ASL A                       ; $13:DC46: 0A          ;
CODE_13DC47:    TAX                         ; $13:DC47: AA          ;
CODE_13DC48:    LDY #$00                    ; $13:DC48: A0 00       ;
CODE_13DC4A:    LDA.l DATA_14B8DC,x                 ; $13:DC4A: BF DC B8 14 ;
CODE_13DC4E:    STA $0CA0,y                 ; $13:DC4E: 99 A0 0C    ;
CODE_13DC51:    INX                         ; $13:DC51: E8          ;
CODE_13DC52:    INX                         ; $13:DC52: E8          ;
CODE_13DC53:    INY                         ; $13:DC53: C8          ;
CODE_13DC54:    INY                         ; $13:DC54: C8          ;
CODE_13DC55:    CPY #$20                    ; $13:DC55: C0 20       ;
CODE_13DC57:    BNE CODE_13DC4A             ; $13:DC57: D0 F1       ;
CODE_13DC59:    SEP #$20                    ; $13:DC59: E2 20       ;
CODE_13DC5B:    BRL CODE_13DEDC             ; $13:DC5B: 82 7E 02    ;

CODE_13DC5E:    REP #$20                    ; $13:DC5E: C2 20       ;
CODE_13DC60:    LDX #$00                    ; $13:DC60: A2 00       ;
CODE_13DC62:    LDA.l DATA_15E715,x                 ; $13:DC62: BF 15 E7 15 ;
CODE_13DC66:    STA $0B00,x                 ; $13:DC66: 9D 00 0B    ;
CODE_13DC69:    LDA.l DATA_15E735,x                 ; $13:DC69: BF 35 E7 15 ;
CODE_13DC6D:    STA $0B20,x                 ; $13:DC6D: 9D 20 0B    ;
CODE_13DC70:    LDA.l DATA_15E775,x                 ; $13:DC70: BF 75 E7 15 ;
CODE_13DC74:    STA $0B60,x                 ; $13:DC74: 9D 60 0B    ;
CODE_13DC77:    LDA.l DATA_15E795,x                 ; $13:DC77: BF 95 E7 15 ;
CODE_13DC7B:    STA $0B80,x                 ; $13:DC7B: 9D 80 0B    ;
CODE_13DC7E:    LDA.l DATA_15E7B5,x                 ; $13:DC7E: BF B5 E7 15 ;
CODE_13DC82:    STA $0BA0,x                 ; $13:DC82: 9D A0 0B    ;
CODE_13DC85:    LDA.l DATA_15E7D5,x                 ; $13:DC85: BF D5 E7 15 ;
CODE_13DC89:    STA $0BC0,x                 ; $13:DC89: 9D C0 0B    ;
CODE_13DC8C:    LDA.l DATA_15E7F5,x                 ; $13:DC8C: BF F5 E7 15 ;
CODE_13DC90:    STA $0BE0,x                 ; $13:DC90: 9D E0 0B    ;
CODE_13DC93:    INX                         ; $13:DC93: E8          ;
CODE_13DC94:    INX                         ; $13:DC94: E8          ;
CODE_13DC95:    CPX #$20                    ; $13:DC95: E0 20       ;
CODE_13DC97:    BNE CODE_13DC62             ; $13:DC97: D0 C9       ;
CODE_13DC99:    LDX #$00                    ; $13:DC99: A2 00       ;
CODE_13DC9B:    LDA.l DATA_15E815,x                 ; $13:DC9B: BF 15 E8 15 ;
CODE_13DC9F:    STA $0B40,x                 ; $13:DC9F: 9D 40 0B    ;
CODE_13DCA2:    INX                         ; $13:DCA2: E8          ;
CODE_13DCA3:    INX                         ; $13:DCA3: E8          ;
CODE_13DCA4:    CPX #$20                    ; $13:DCA4: E0 20       ;
CODE_13DCA6:    BNE CODE_13DC9B             ; $13:DCA6: D0 F3       ;
CODE_13DCA8:    SEP #$20                    ; $13:DCA8: E2 20       ;
CODE_13DCAA:    BRL CODE_13DEDC             ; $13:DCAA: 82 2F 02    ;

CODE_13DCAD:    REP #$20                    ; $13:DCAD: C2 20       ;
CODE_13DCAF:    LDX #$00                    ; $13:DCAF: A2 00       ;
CODE_13DCB1:    LDA.w DATA_11C9EC,x                 ; $13:DCB1: BD EC C9    ;
CODE_13DCB4:    STA $0B00,x                 ; $13:DCB4: 9D 00 0B    ;
CODE_13DCB7:    INX                         ; $13:DCB7: E8          ;
CODE_13DCB8:    INX                         ; $13:DCB8: E8          ;
CODE_13DCB9:    CPX #$08                    ; $13:DCB9: E0 08       ;
CODE_13DCBB:    BCC CODE_13DCB1             ; $13:DCBB: 90 F4       ;
CODE_13DCBD:    SEP #$20                    ; $13:DCBD: E2 20       ;
CODE_13DCBF:    BRL CODE_13DEDC             ; $13:DCBF: 82 1A 02    ;

CODE_13DCC2:    PHX                         ; $13:DCC2: DA          ;
CODE_13DCC3:    REP #$20                    ; $13:DCC3: C2 20       ;
CODE_13DCC5:    LDX #$00                    ; $13:DCC5: A2 00       ;
CODE_13DCC7:    LDA.l DATA_14BAE0,x                 ; $13:DCC7: BF E0 BA 14 ;
CODE_13DCCB:    STA $0CA0,x                 ; $13:DCCB: 9D A0 0C    ;
CODE_13DCCE:    INX                         ; $13:DCCE: E8          ;
CODE_13DCCF:    INX                         ; $13:DCCF: E8          ;
CODE_13DCD0:    CPX #$20                    ; $13:DCD0: E0 20       ;
CODE_13DCD2:    BNE CODE_13DCC7             ; $13:DCD2: D0 F3       ;
CODE_13DCD4:    SEP #$20                    ; $13:DCD4: E2 20       ;
CODE_13DCD6:    PLX                         ; $13:DCD6: FA          ;
CODE_13DCD7:    BRL CODE_13DEDC             ; $13:DCD7: 82 02 02    ;

DATA_13DCDA:        db $00,$00,$00,$00,$00,$00,$60,$00
                    db $00,$00,$00,$00,$C0,$00

DATA_13DCE8:        db $51,$7F,$40,$49,$51,$7F,$F5,$7E
                    db $51,$7F,$40,$49,$F5,$7E

CODE_13DCF6:    REP #$30                ; $13:DCF6: C2 30       ; Accumulator and Index = 16-bit.
CODE_13DCF8:    LDA $0635               ; $13:DCF8: AD 35 06    ; \ Get world number * 2 into index.
CODE_13DCFB:    AND #$000F              ; $13:DCFB: 29 0F 00    ;  |
CODE_13DCFE:    ASL A                   ; $13:DCFE: 0A          ;  |
CODE_13DCFF:    TAX                     ; $13:DCFF: AA          ; /
CODE_13DD00:    LDA.l DATA_13DCE8,x     ; $13:DD00: BF E8 DC 13 ; \ Get BG colour for the 'World x-x' screen.  
CODE_13DD04:    STA $0B00               ; $13:DD04: 8D 00 0B    ; /
CODE_13DD07:    LDA.l DATA_13DCDA,x     ; $13:DD07: BF DA DC 13 ; \ Get index for different palette set.     
CODE_13DD0B:    TAX                     ; $13:DD0B: AA          ; /
CODE_13DD0C:    LDY #$0000              ; $13:DD0C: A0 00 00    ; \ Y = #$0000.
CODE_13DD0F:    LDA.l DATA_15F555,x     ; $13:DD0F: BF 55 F5 15 ;  | Load colours into palette 1.
CODE_13DD13:    STA $0B20,y             ; $13:DD13: 99 20 0B    ;  |
CODE_13DD16:    LDA.l DATA_15F575,x     ; $13:DD16: BF 75 F5 15 ;  | Load colours into palette 2. 
CODE_13DD1A:    STA $0B40,y             ; $13:DD1A: 99 40 0B    ;  |
CODE_13DD1D:    LDA.l DATA_15F595,x     ; $13:DD1D: BF 95 F5 15 ;  | Load colours into palette 7. 
CODE_13DD21:    STA $0BE0,y             ; $13:DD21: 99 E0 0B    ; /
CODE_13DD24:    INX                     ; $13:DD24: E8          ; \ Get to next colours.
CODE_13DD25:    INX                     ; $13:DD25: E8          ;  |
CODE_13DD26:    INY                     ; $13:DD26: C8          ;  |
CODE_13DD27:    INY                     ; $13:DD27: C8          ;  |
CODE_13DD28:    CPY #$0020              ; $13:DD28: C0 20 00    ;  | Check if full palette has been uploaded.
CODE_13DD2B:    BNE CODE_13DD0F         ; $13:DD2B: D0 E2       ; / If not, loop.
CODE_13DD2D:    LDA #$7FFF              ; $13:DD2D: A9 FF 7F    ; \ Palette 3 colours D-F = white.
CODE_13DD30:    STA $0B7A               ; $13:DD30: 8D 7A 0B    ;  |
CODE_13DD33:    STA $0B7C               ; $13:DD33: 8D 7C 0B    ;  |
CODE_13DD36:    STA $0B7E               ; $13:DD36: 8D 7E 0B    ; /
CODE_13DD39:    LDA #$2896              ; $13:DD39: A9 96 28    ; \ Palette 5 colour 9-B = pink-ish colours.
CODE_13DD3C:    STA $0BB2               ; $13:DD3C: 8D B2 0B    ;  |
CODE_13DD3F:    LDA #$495F              ; $13:DD3F: A9 5F 49    ;  |
CODE_13DD42:    STA $0BB4               ; $13:DD42: 8D B4 0B    ;  |
CODE_13DD45:    LDA #$6E9F              ; $13:DD45: A9 9F 6E    ;  |
CODE_13DD48:    STA $0BB6               ; $13:DD48: 8D B6 0B    ; /
CODE_13DD4B:    SEP #$30                ; $13:DD4B: E2 30       ; Accumulator and Index = 8-bit.
CODE_13DD4D:    BRL CODE_13DEDC             ; $13:DD4D: 82 8C 01    ;

CODE_13DD50:    LDA $0533                   ; $13:DD50: AD 33 05    ;
CODE_13DD53:    CMP #$11                    ; $13:DD53: C9 11       ;
CODE_13DD55:    BNE CODE_13DD62             ; $13:DD55: D0 0B       ;
CODE_13DD57:    LDA $0534                   ; $13:DD57: AD 34 05    ;
CODE_13DD5A:    CMP #$03                    ; $13:DD5A: C9 03       ;
CODE_13DD5C:    BEQ CODE_13DD8D             ; $13:DD5C: F0 2F       ;
CODE_13DD5E:    CMP #$04                    ; $13:DD5E: C9 04       ;
CODE_13DD60:    BEQ CODE_13DD8D             ; $13:DD60: F0 2B       ;
CODE_13DD62:    LDA $0533                   ; $13:DD62: AD 33 05    ;
CODE_13DD65:    CMP #$13                    ; $13:DD65: C9 13       ;
CODE_13DD67:    BNE CODE_13DD70             ; $13:DD67: D0 07       ;
CODE_13DD69:    LDA $0534                   ; $13:DD69: AD 34 05    ;
CODE_13DD6C:    CMP #$05                    ; $13:DD6C: C9 05       ;
CODE_13DD6E:    BEQ CODE_13DD8D             ; $13:DD6E: F0 1D       ;
CODE_13DD70:    REP #$20                    ; $13:DD70: C2 20       ;
CODE_13DD72:    LDX #$00                    ; $13:DD72: A2 00       ;
CODE_13DD74:    LDA.l DATA_14B9BC,x                 ; $13:DD74: BF BC B9 14 ;
CODE_13DD78:    STA $0B00,x                 ; $13:DD78: 9D 00 0B    ;
CODE_13DD7B:    LDA.l DATA_14B9CC,x                 ; $13:DD7B: BF CC B9 14 ;
CODE_13DD7F:    STA $0B10,x                 ; $13:DD7F: 9D 10 0B    ;
CODE_13DD82:    INX                         ; $13:DD82: E8          ;
CODE_13DD83:    INX                         ; $13:DD83: E8          ;
CODE_13DD84:    CPX #$10                    ; $13:DD84: E0 10       ;
CODE_13DD86:    BNE CODE_13DD74             ; $13:DD86: D0 EC       ;
CODE_13DD88:    SEP #$20                    ; $13:DD88: E2 20       ;
CODE_13DD8A:    BRL CODE_13DEDC             ; $13:DD8A: 82 4F 01    ;

CODE_13DD8D:    RTL                         ; $13:DD8D: 6B          ;

CODE_13DD8E:    REP #$20                    ; $13:DD8E: C2 20       ;
CODE_13DD90:    LDX #$00                    ; $13:DD90: A2 00       ;
CODE_13DD92:    LDA.l DATA_14BB00,x                 ; $13:DD92: BF 00 BB 14 ;
CODE_13DD96:    STA $0B00,x                 ; $13:DD96: 9D 00 0B    ;
CODE_13DD99:    LDA.l DATA_14BB20,x                 ; $13:DD99: BF 20 BB 14 ;
CODE_13DD9D:    STA $0B20,x                 ; $13:DD9D: 9D 20 0B    ;
CODE_13DDA0:    LDA.l DATA_14BB40,x                 ; $13:DDA0: BF 40 BB 14 ;
CODE_13DDA4:    STA $0B40,x                 ; $13:DDA4: 9D 40 0B    ;
CODE_13DDA7:    LDA.l DATA_14BB60,x                 ; $13:DDA7: BF 60 BB 14 ;
CODE_13DDAB:    STA $0B60,x                 ; $13:DDAB: 9D 60 0B    ;
CODE_13DDAE:    LDA.l DATA_14BB80,x                 ; $13:DDAE: BF 80 BB 14 ;
CODE_13DDB2:    STA $0B80,x                 ; $13:DDB2: 9D 80 0B    ;
CODE_13DDB5:    LDA.l DATA_14BBA0,x                 ; $13:DDB5: BF A0 BB 14 ;
CODE_13DDB9:    STA $0BA0,x                 ; $13:DDB9: 9D A0 0B    ;
CODE_13DDBC:    LDA.l DATA_14BBC0,x                 ; $13:DDBC: BF C0 BB 14 ;
CODE_13DDC0:    STA $0BC0,x                 ; $13:DDC0: 9D C0 0B    ;
CODE_13DDC3:    LDA.l DATA_14BBE0,x                 ; $13:DDC3: BF E0 BB 14 ;
CODE_13DDC7:    STA $0BE0,x                 ; $13:DDC7: 9D E0 0B    ;
CODE_13DDCA:    LDA.l DATA_14BC00,x                 ; $13:DDCA: BF 00 BC 14 ;
CODE_13DDCE:    STA $0C00,x                 ; $13:DDCE: 9D 00 0C    ;
CODE_13DDD1:    LDA.l DATA_14BC20,x                 ; $13:DDD1: BF 20 BC 14 ;
CODE_13DDD5:    STA $0C20,x                 ; $13:DDD5: 9D 20 0C    ;
CODE_13DDD8:    LDA.l DATA_14BC40,x                 ; $13:DDD8: BF 40 BC 14 ;
CODE_13DDDC:    STA $0C40,x                 ; $13:DDDC: 9D 40 0C    ;
CODE_13DDDF:    LDA.l DATA_14BC60,x                 ; $13:DDDF: BF 60 BC 14 ;
CODE_13DDE3:    STA $0C60,x                 ; $13:DDE3: 9D 60 0C    ;
CODE_13DDE6:    LDA.l DATA_14BC80,x                 ; $13:DDE6: BF 80 BC 14 ;
CODE_13DDEA:    STA $0C80,x                 ; $13:DDEA: 9D 80 0C    ;
CODE_13DDED:    LDA.l DATA_14BCA0,x                 ; $13:DDED: BF A0 BC 14 ;
CODE_13DDF1:    STA $0CA0,x                 ; $13:DDF1: 9D A0 0C    ;
CODE_13DDF4:    LDA.l DATA_14BCC0,x                 ; $13:DDF4: BF C0 BC 14 ;
CODE_13DDF8:    STA $0CC0,x                 ; $13:DDF8: 9D C0 0C    ;
CODE_13DDFB:    LDA.l DATA_14BCE0,x                 ; $13:DDFB: BF E0 BC 14 ;
CODE_13DDFF:    STA $0CE0,x                 ; $13:DDFF: 9D E0 0C    ;
CODE_13DE02:    INX                         ; $13:DE02: E8          ;
CODE_13DE03:    INX                         ; $13:DE03: E8          ;
CODE_13DE04:    CPX #$20                    ; $13:DE04: E0 20       ;
CODE_13DE06:    BNE CODE_13DD92             ; $13:DE06: D0 8A       ;
CODE_13DE08:    SEP #$20                    ; $13:DE08: E2 20       ;
CODE_13DE0A:    BRL CODE_13DEDC             ; $13:DE0A: 82 CF 00    ;

CODE_13DE0D:    REP #$20                    ; $13:DE0D: C2 20       ;
CODE_13DE0F:    LDX #$00                    ; $13:DE0F: A2 00       ;
CODE_13DE11:    LDA.l DATA_14BD00,x                 ; $13:DE11: BF 00 BD 14 ;
CODE_13DE15:    STA $0B00,x                 ; $13:DE15: 9D 00 0B    ;
CODE_13DE18:    LDA.l DATA_14BD20,x                 ; $13:DE18: BF 20 BD 14 ;
CODE_13DE1C:    STA $0B20,x                 ; $13:DE1C: 9D 20 0B    ;
CODE_13DE1F:    LDA.l DATA_14BD40,x                 ; $13:DE1F: BF 40 BD 14 ;
CODE_13DE23:    STA $0B40,x                 ; $13:DE23: 9D 40 0B    ;
CODE_13DE26:    LDA.l DATA_14BD60,x                 ; $13:DE26: BF 60 BD 14 ;
CODE_13DE2A:    STA $0B60,x                 ; $13:DE2A: 9D 60 0B    ;
CODE_13DE2D:    LDA.l DATA_14BD80,x                 ; $13:DE2D: BF 80 BD 14 ;
CODE_13DE31:    STA $0B80,x                 ; $13:DE31: 9D 80 0B    ;
CODE_13DE34:    LDA.l DATA_14BDA0,x                 ; $13:DE34: BF A0 BD 14 ;
CODE_13DE38:    STA $0BA0,x                 ; $13:DE38: 9D A0 0B    ;
CODE_13DE3B:    LDA.l DATA_14BDC0,x                 ; $13:DE3B: BF C0 BD 14 ;
CODE_13DE3F:    STA $0BC0,x                 ; $13:DE3F: 9D C0 0B    ;
CODE_13DE42:    LDA.l DATA_14BDE0,x                 ; $13:DE42: BF E0 BD 14 ;
CODE_13DE46:    STA $0BE0,x                 ; $13:DE46: 9D E0 0B    ;
CODE_13DE49:    LDA.l DATA_14BE00,x                 ; $13:DE49: BF 00 BE 14 ;
CODE_13DE4D:    STA $0C00,x                 ; $13:DE4D: 9D 00 0C    ;
CODE_13DE50:    LDA.l DATA_14BE20,x                 ; $13:DE50: BF 20 BE 14 ;
CODE_13DE54:    STA $0C20,x                 ; $13:DE54: 9D 20 0C    ;
CODE_13DE57:    LDA.l DATA_14BE40,x                 ; $13:DE57: BF 40 BE 14 ;
CODE_13DE5B:    STA $0C40,x                 ; $13:DE5B: 9D 40 0C    ;
CODE_13DE5E:    LDA.l DATA_14BE60,x                 ; $13:DE5E: BF 60 BE 14 ;
CODE_13DE62:    STA $0C60,x                 ; $13:DE62: 9D 60 0C    ;
CODE_13DE65:    LDA.l DATA_14BE80,x                 ; $13:DE65: BF 80 BE 14 ;
CODE_13DE69:    STA $0C80,x                 ; $13:DE69: 9D 80 0C    ;
CODE_13DE6C:    LDA.l DATA_14BEA0,x                 ; $13:DE6C: BF A0 BE 14 ;
CODE_13DE70:    STA $0CA0,x                 ; $13:DE70: 9D A0 0C    ;
CODE_13DE73:    LDA.l DATA_14BEC0,x                 ; $13:DE73: BF C0 BE 14 ;
CODE_13DE77:    STA $0CC0,x                 ; $13:DE77: 9D C0 0C    ;
CODE_13DE7A:    LDA.l DATA_14BEE0,x                 ; $13:DE7A: BF E0 BE 14 ;
CODE_13DE7E:    STA $0CE0,x                 ; $13:DE7E: 9D E0 0C    ;
CODE_13DE81:    INX                         ; $13:DE81: E8          ;
CODE_13DE82:    INX                         ; $13:DE82: E8          ;
CODE_13DE83:    CPX #$20                    ; $13:DE83: E0 20       ;
CODE_13DE85:    BNE CODE_13DE11             ; $13:DE85: D0 8A       ;
CODE_13DE87:    SEP #$20                    ; $13:DE87: E2 20       ;
CODE_13DE89:    BRL CODE_13DEDC             ; $13:DE89: 82 50 00    ;

CODE_13DE8C:    REP #$20                    ; $13:DE8C: C2 20       ;
CODE_13DE8E:    LDX #$00                    ; $13:DE8E: A2 00       ;
CODE_13DE90:    LDA.l DATA_15E715,x                 ; $13:DE90: BF 15 E7 15 ;
CODE_13DE94:    STA $0B00,x                 ; $13:DE94: 9D 00 0B    ;
CODE_13DE97:    LDA.l DATA_15E735,x                 ; $13:DE97: BF 35 E7 15 ;
CODE_13DE9B:    STA $0B20,x                 ; $13:DE9B: 9D 20 0B    ;
CODE_13DE9E:    LDA.l DATA_15E755,x                 ; $13:DE9E: BF 55 E7 15 ;
CODE_13DEA2:    STA $0B40,x                 ; $13:DEA2: 9D 40 0B    ;
CODE_13DEA5:    LDA.l DATA_15E775,x                 ; $13:DEA5: BF 75 E7 15 ;
CODE_13DEA9:    STA $0B60,x                 ; $13:DEA9: 9D 60 0B    ;
CODE_13DEAC:    LDA.l DATA_15E795,x                 ; $13:DEAC: BF 95 E7 15 ;
CODE_13DEB0:    STA $0B80,x                 ; $13:DEB0: 9D 80 0B    ;
CODE_13DEB3:    LDA.l DATA_15E7B5,x                 ; $13:DEB3: BF B5 E7 15 ;
CODE_13DEB7:    STA $0BA0,x                 ; $13:DEB7: 9D A0 0B    ;
CODE_13DEBA:    LDA.l DATA_15E7D5,x                 ; $13:DEBA: BF D5 E7 15 ;
CODE_13DEBE:    STA $0BC0,x                 ; $13:DEBE: 9D C0 0B    ;
CODE_13DEC1:    LDA.l DATA_15E7F5,x                 ; $13:DEC1: BF F5 E7 15 ;
CODE_13DEC5:    STA $0BE0,x                 ; $13:DEC5: 9D E0 0B    ;
CODE_13DEC8:    INX                         ; $13:DEC8: E8          ;
CODE_13DEC9:    INX                         ; $13:DEC9: E8          ;
CODE_13DECA:    CPX #$20                    ; $13:DECA: E0 20       ;
CODE_13DECC:    BNE CODE_13DE90             ; $13:DECC: D0 C2       ;
CODE_13DECE:    LDX #$7E                    ; $13:DECE: A2 7E       ;
CODE_13DED0:    LDA.w DATA_11BB1C,x                 ; $13:DED0: BD 1C BB    ;
CODE_13DED3:    STA $0C20,x                 ; $13:DED3: 9D 20 0C    ;
CODE_13DED6:    DEX                         ; $13:DED6: CA          ;
CODE_13DED7:    DEX                         ; $13:DED7: CA          ;
CODE_13DED8:    BPL CODE_13DED0             ; $13:DED8: 10 F6       ;
CODE_13DEDA:    SEP #$20                    ; $13:DEDA: E2 20       ;
CODE_13DEDC:    LDA #$01                    ; $13:DEDC: A9 01       ;
CODE_13DEDE:    STA $02A9                   ; $13:DEDE: 8D A9 02    ;
CODE_13DEE1:    RTL                         ; $13:DEE1: 6B          ;

CODE_13DEE2:    LDA #$81                    ; $13:DEE2: A9 81       ;
CODE_13DEE4:    STA $0239                   ; $13:DEE4: 8D 39 02    ;
CODE_13DEE7:    LDA #$38                    ; $13:DEE7: A9 38       ;
CODE_13DEE9:    STA $023D                   ; $13:DEE9: 8D 3D 02    ;
CODE_13DEEC:    LDA #$52                    ; $13:DEEC: A9 52       ;
CODE_13DEEE:    STA $023E                   ; $13:DEEE: 8D 3E 02    ;
CODE_13DEF1:    LDA #$80                    ; $13:DEF1: A9 80       ;
CODE_13DEF3:    STA $023F                   ; $13:DEF3: 8D 3F 02    ;
CODE_13DEF6:    REP #$20                    ; $13:DEF6: C2 20       ;
CODE_13DEF8:    LDA #$3D25                  ; $13:DEF8: A9 25 3D    ;
CODE_13DEFB:    STA $0B00                   ; $13:DEFB: 8D 00 0B    ;
CODE_13DEFE:    SEP #$20                    ; $13:DEFE: E2 20       ;
CODE_13DF00:    BRA CODE_13DEDC             ; $13:DF00: 80 DA       ;

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

CODE_13DF6E:    REP #$20                    ; $13:DF6E: C2 20       ;
CODE_13DF70:    LDY $04E1                   ; $13:DF70: AC E1 04    ;
CODE_13DF73:    LDA $50                     ; $13:DF73: A5 50       ;
CODE_13DF75:    AND #$00FF                  ; $13:DF75: 29 FF 00    ;
CODE_13DF78:    CMP #$0008                  ; $13:DF78: C9 08 00    ;
CODE_13DF7B:    BNE CODE_13DF7F             ; $13:DF7B: D0 02       ;
CODE_13DF7D:    LDY $82                     ; $13:DF7D: A4 82       ;
CODE_13DF7F:    LDA $10                     ; $13:DF7F: A5 10       ;
CODE_13DF81:    LSR A                       ; $13:DF81: 4A          ;
CODE_13DF82:    LSR A                       ; $13:DF82: 4A          ;
CODE_13DF83:    CPY #$18                    ; $13:DF83: C0 18       ;
CODE_13DF85:    BCS CODE_13DF8F                     ; $13:DF85: B0 08       ;
CODE_13DF87:    CPY #$01                    ; $13:DF87: C0 01       ;
CODE_13DF89:    BNE CODE_13DF8E             ; $13:DF89: D0 03       ;
CODE_13DF8B:    LDA #$0000                  ; $13:DF8B: A9 00 00    ;
CODE_13DF8E:    LSR A                       ; $13:DF8E: 4A          ;
CODE_13DF8F:    AND #$0003                  ; $13:DF8F: 29 03 00    ;
CODE_13DF92:    STA $00                     ; $13:DF92: 85 00       ;
CODE_13DF94:    ASL A                       ; $13:DF94: 0A          ;
CODE_13DF95:    CLC                         ; $13:DF95: 18          ;
CODE_13DF96:    ADC $00                     ; $13:DF96: 65 00       ;
CODE_13DF98:    TAX                         ; $13:DF98: AA          ;
CODE_13DF99:    LDA.l PNTR_13DF02,x                 ; $13:DF99: BF 02 DF 13 ;
CODE_13DF9D:    STA $00                     ; $13:DF9D: 85 00       ;
CODE_13DF9F:    LDA.l PNTR_13DF02+2,x               ; $13:DF9F: BF 04 DF 13 ;
CODE_13DFA3:    STA $02                     ; $13:DFA3: 85 02       ;
CODE_13DFA5:    LDY #$00                    ; $13:DFA5: A0 00       ;
CODE_13DFA7:    LDA [$00],y                 ; $13:DFA7: B7 00       ;
CODE_13DFA9:    STA $0C00,y                 ; $13:DFA9: 99 00 0C    ;
CODE_13DFAC:    INY                         ; $13:DFAC: C8          ;
CODE_13DFAD:    INY                         ; $13:DFAD: C8          ;
CODE_13DFAE:    CPY #$20                    ; $13:DFAE: C0 20       ;
CODE_13DFB0:    BNE CODE_13DFA7             ; $13:DFB0: D0 F5       ;
CODE_13DFB2:    SEP #$20                    ; $13:DFB2: E2 20       ;
CODE_13DFB4:    BRL CODE_13DEDC             ; $13:DFB4: 82 25 FF    ;

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

CODE_13E0E7:    LDA $04CB                   ; $13:E0E7: AD CB 04    ;
CODE_13E0EA:    CMP #$3C                    ; $13:E0EA: C9 3C       ;
CODE_13E0EC:    BCS CODE_13E0FB                     ; $13:E0EC: B0 0D       ;
CODE_13E0EE:    LDA $0D0A                   ; $13:E0EE: AD 0A 0D    ;
CODE_13E0F1:    BEQ CODE_13E0FA             ; $13:E0F1: F0 07       ;
CODE_13E0F3:    STZ $0D0A                   ; $13:E0F3: 9C 0A 0D    ;
CODE_13E0F6:    STZ $0C                     ; $13:E0F6: 64 0C       ;
CODE_13E0F8:    BRA CODE_13E107             ; $13:E0F8: 80 0D       ;

CODE_13E0FA:    RTL                         ; $13:E0FA: 6B          ;

CODE_13E0FB:    LDA #$01                    ; $13:E0FB: A9 01       ;
CODE_13E0FD:    STA $0D0A                   ; $13:E0FD: 8D 0A 0D    ;
CODE_13E100:    LDA $10                     ; $13:E100: A5 10       ;
CODE_13E102:    AND #$06                    ; $13:E102: 29 06       ;
CODE_13E104:    LSR A                       ; $13:E104: 4A          ;
CODE_13E105:    STA $0C                     ; $13:E105: 85 0C       ;
CODE_13E107:    LDA $8F                     ; $13:E107: A5 8F       ;
CODE_13E109:    ASL A                       ; $13:E109: 0A          ;
CODE_13E10A:    ASL A                       ; $13:E10A: 0A          ;
CODE_13E10B:    CLC                         ; $13:E10B: 18          ;
CODE_13E10C:    ADC $0C                     ; $13:E10C: 65 0C       ;
CODE_13E10E:    STA $0C                     ; $13:E10E: 85 0C       ;
CODE_13E110:    ASL A                       ; $13:E110: 0A          ;
CODE_13E111:    CLC                         ; $13:E111: 18          ;
CODE_13E112:    ADC $0C                     ; $13:E112: 65 0C       ;
CODE_13E114:    TAX                         ; $13:E114: AA          ;
CODE_13E115:    LDA.l PNTR_13DFB7+2,x               ; $13:E115: BF B9 DF 13 ;
CODE_13E119:    STA $0E                     ; $13:E119: 85 0E       ;
CODE_13E11B:    REP #$20                    ; $13:E11B: C2 20       ;
CODE_13E11D:    LDA.l PNTR_13DFB7,x                 ; $13:E11D: BF B7 DF 13 ;
CODE_13E121:    STA $0C                     ; $13:E121: 85 0C       ;
CODE_13E123:    LDY #$00                    ; $13:E123: A0 00       ;
CODE_13E125:    LDA [$0C],y                 ; $13:E125: B7 0C       ;
CODE_13E127:    STA $0C00,y                 ; $13:E127: 99 00 0C    ;
CODE_13E12A:    INY                         ; $13:E12A: C8          ;
CODE_13E12B:    INY                         ; $13:E12B: C8          ;
CODE_13E12C:    CPY #$20                    ; $13:E12C: C0 20       ;
CODE_13E12E:    BNE CODE_13E125             ; $13:E12E: D0 F5       ;
CODE_13E130:    SEP #$20                    ; $13:E130: E2 20       ;
CODE_13E132:    BRL CODE_13DEDC             ; $13:E132: 82 A7 FD    ;

DATA_13E135:        db $9C,$01,$18,$01,$D5,$00,$92,$00

DATA_13E13D:        db $1F,$33,$9B,$22,$17,$12,$93,$01

DATA_13E145:        db $1C,$00,$18,$00,$14,$00,$10,$00

DATA_13E14D:        db $00,$01,$03,$02,$01,$02,$03,$01
    
CODE_13E155:    LDA $077C               ; $13:E155: AD 7C 07    ;
CODE_13E158:    BEQ CODE_13E192         ; $13:E158: F0 38       ;
CODE_13E15A:    INC $077D                   ; $13:E15A: EE 7D 07    ;
CODE_13E15D:    LDA $077D                   ; $13:E15D: AD 7D 07    ;
CODE_13E160:    CMP #$04                    ; $13:E160: C9 04       ;
CODE_13E162:    BCC CODE_13E16A             ; $13:E162: 90 06       ;
CODE_13E164:    STZ $077D                   ; $13:E164: 9C 7D 07    ;
CODE_13E167:    INC $077E                   ; $13:E167: EE 7E 07    ;
CODE_13E16A:    LDA $077E                   ; $13:E16A: AD 7E 07    ;
CODE_13E16D:    AND #$07                    ; $13:E16D: 29 07       ;
CODE_13E16F:    TAX                         ; $13:E16F: AA          ;
CODE_13E170:    LDA.l DATA_13E14D,x                 ; $13:E170: BF 4D E1 13 ;
CODE_13E174:    ASL A                       ; $13:E174: 0A          ;
CODE_13E175:    TAX                         ; $13:E175: AA          ;
CODE_13E176:    REP #$20                    ; $13:E176: C2 20       ;
CODE_13E178:    LDA.l DATA_13E135,x                 ; $13:E178: BF 35 E1 13 ;
CODE_13E17C:    STA $0B2C                   ; $13:E17C: 8D 2C 0B    ;
CODE_13E17F:    LDA.l DATA_13E13D,x                 ; $13:E17F: BF 3D E1 13 ;
CODE_13E183:    STA $0B2E                   ; $13:E183: 8D 2E 0B    ;
CODE_13E186:    LDA.l DATA_13E145,x                 ; $13:E186: BF 45 E1 13 ;
CODE_13E18A:    STA $0B38                   ; $13:E18A: 8D 38 0B    ;
CODE_13E18D:    SEP #$20                    ; $13:E18D: E2 20       ;
CODE_13E18F:    BRL CODE_13DEDC             ; $13:E18F: 82 4A FD    ;

CODE_13E192:    RTL                         ; $13:E192: 6B          ;

DATA_13E193:        db $35,$08

DATA_13E195:        db $AC,$04

DATA_13E197:        db $49,$04,$BF,$10,$37,$08,$B0,$04
                    db $DF,$39,$BF,$10,$37,$08,$3F,$67
                    db $DF,$39,$BF,$10,$61,$04,$61,$04
                    db $61,$04

DATA_13E1B1:        db $1A,$07,$06,$07,$14,$07,$06,$07

CODE_13E1B9:    LDA $077F               ; $13:E1B9: AD 7F 07    ;
CODE_13E1BC:    BNE CODE_13E1C2         ; $13:E1BC: D0 04       ;
CODE_13E1BE:    STZ $0780                   ; $13:E1BE: 9C 80 07    ;
CODE_13E1C1:    RTL                         ; $13:E1C1: 6B          ;

CODE_13E1C2:    LDA $9C                     ; $13:E1C2: A5 9C       ;
CODE_13E1C4:    BEQ CODE_13E20E             ; $13:E1C4: F0 48       ;
CODE_13E1C6:    LDX $042D                   ; $13:E1C6: AE 2D 04    ;
CODE_13E1C9:    LDA $90,x                   ; $13:E1C9: B5 90       ;
CODE_13E1CB:    CMP #$3D                    ; $13:E1CB: C9 3D       ;
CODE_13E1CD:    BNE CODE_13E20E             ; $13:E1CD: D0 3F       ;
CODE_13E1CF:    INC $0781                   ; $13:E1CF: EE 81 07    ;
CODE_13E1D2:    LDA $0780                   ; $13:E1D2: AD 80 07    ;
CODE_13E1D5:    AND #$07                    ; $13:E1D5: 29 07       ;
CODE_13E1D7:    TAX                         ; $13:E1D7: AA          ;
CODE_13E1D8:    LDA.l DATA_13E1B1,x                 ; $13:E1D8: BF B1 E1 13 ;
CODE_13E1DC:    CMP $0781                   ; $13:E1DC: CD 81 07    ;
CODE_13E1DF:    BNE CODE_13E1F5             ; $13:E1DF: D0 14       ;
CODE_13E1E1:    INC $0780                   ; $13:E1E1: EE 80 07    ;
CODE_13E1E4:    LDA $0780                   ; $13:E1E4: AD 80 07    ;
CODE_13E1E7:    AND #$07                    ; $13:E1E7: 29 07       ;
CODE_13E1E9:    CMP #$01                    ; $13:E1E9: C9 01       ;
CODE_13E1EB:    BNE CODE_13E1F2             ; $13:E1EB: D0 05       ;
CODE_13E1ED:    LDA #$42                    ; $13:E1ED: A9 42       ;
CODE_13E1EF:    STA $1DE3                   ; $13:E1EF: 8D E3 1D    ;
CODE_13E1F2:    STZ $0781                   ; $13:E1F2: 9C 81 07    ;
CODE_13E1F5:    LDA $0780                   ; $13:E1F5: AD 80 07    ;
CODE_13E1F8:    AND #$07                    ; $13:E1F8: 29 07       ;
CODE_13E1FA:    BEQ CODE_13E23D             ; $13:E1FA: F0 41       ;
CODE_13E1FC:    DEC A                       ; $13:E1FC: 3A          ;
CODE_13E1FD:    CMP #$04                    ; $13:E1FD: C9 04       ;
CODE_13E1FF:    BCC CODE_13E204             ; $13:E1FF: 90 03       ;
CODE_13E201:    EOR #$07                    ; $13:E201: 49 07       ;
CODE_13E203:    DEC A                       ; $13:E203: 3A          ;
CODE_13E204:    ASL A                       ; $13:E204: 0A          ;
CODE_13E205:    STA $00                     ; $13:E205: 85 00       ;
CODE_13E207:    ASL A                       ; $13:E207: 0A          ;
CODE_13E208:    CLC                         ; $13:E208: 18          ;
CODE_13E209:    ADC $00                     ; $13:E209: 65 00       ;
CODE_13E20B:    TAX                         ; $13:E20B: AA          ;
CODE_13E20C:    BRA CODE_13E23F             ; $13:E20C: 80 31       ;

CODE_13E20E:    LDA $0780                   ; $13:E20E: AD 80 07    ;
CODE_13E211:    AND #$07                    ; $13:E211: 29 07       ;
CODE_13E213:    BEQ CODE_13E238             ; $13:E213: F0 23       ;
CODE_13E215:    INC $0781                   ; $13:E215: EE 81 07    ;
CODE_13E218:    TAX                         ; $13:E218: AA          ;
CODE_13E219:    LDA.l DATA_13E1B1,x                 ; $13:E219: BF B1 E1 13 ;
CODE_13E21D:    CMP $0781                   ; $13:E21D: CD 81 07    ;
CODE_13E220:    BNE CODE_13E1F5             ; $13:E220: D0 D3       ;
CODE_13E222:    STZ $0781                   ; $13:E222: 9C 81 07    ;
CODE_13E225:    LDA $0780                   ; $13:E225: AD 80 07    ;
CODE_13E228:    AND #$07                    ; $13:E228: 29 07       ;
CODE_13E22A:    CMP #$04                    ; $13:E22A: C9 04       ;
CODE_13E22C:    BCS CODE_13E233                     ; $13:E22C: B0 05       ;
CODE_13E22E:    DEC $0780                   ; $13:E22E: CE 80 07    ;
CODE_13E231:    BRA CODE_13E1F5             ; $13:E231: 80 C2       ;

CODE_13E233:    INC $0780                   ; $13:E233: EE 80 07    ;
CODE_13E236:    BRA CODE_13E1F5             ; $13:E236: 80 BD       ;

CODE_13E238:    LDA #$FF                    ; $13:E238: A9 FF       ;
CODE_13E23A:    STA $0781                   ; $13:E23A: 8D 81 07    ;
CODE_13E23D:    LDX #$18                    ; $13:E23D: A2 18       ;
CODE_13E23F:    REP #$20                    ; $13:E23F: C2 20       ;
CODE_13E241:    LDA.l DATA_13E193,x                 ; $13:E241: BF 93 E1 13 ;
CODE_13E245:    STA $0BE6                   ; $13:E245: 8D E6 0B    ;
CODE_13E248:    LDA.l DATA_13E195,x                 ; $13:E248: BF 95 E1 13 ;
CODE_13E24C:    STA $0BE8                   ; $13:E24C: 8D E8 0B    ;
CODE_13E24F:    LDA.l DATA_13E197,x                 ; $13:E24F: BF 97 E1 13 ;
CODE_13E253:    STA $0BEA                   ; $13:E253: 8D EA 0B    ;
CODE_13E256:    SEP #$20                    ; $13:E256: E2 20       ;
CODE_13E258:    BRL CODE_13DEDC             ; $13:E258: 82 81 FC    ;

CODE_13E25B:    REP #$20                    ; $13:E25B: C2 20       ;
CODE_13E25D:    STZ $0B00                   ; $13:E25D: 9C 00 0B    ;
CODE_13E260:    LDX #$00                    ; $13:E260: A2 00       ;
CODE_13E262:    LDA.l DATA_14BFA0,x                 ; $13:E262: BF A0 BF 14 ;
CODE_13E266:    STA $0B20,x                 ; $13:E266: 9D 20 0B    ;
CODE_13E269:    LDA.l DATA_14BFC0,x                 ; $13:E269: BF C0 BF 14 ;
CODE_13E26D:    STA $0B80,x                 ; $13:E26D: 9D 80 0B    ;
CODE_13E270:    LDA.l DATA_14BFE0,x                 ; $13:E270: BF E0 BF 14 ;
CODE_13E274:    STA $0BE0,x                 ; $13:E274: 9D E0 0B    ;
CODE_13E277:    INX                         ; $13:E277: E8          ;
CODE_13E278:    INX                         ; $13:E278: E8          ;
CODE_13E279:    CPX #$20                    ; $13:E279: E0 20       ;
CODE_13E27B:    BNE CODE_13E262             ; $13:E27B: D0 E5       ;
CODE_13E27D:    SEP #$20                    ; $13:E27D: E2 20       ;
CODE_13E27F:    BRL CODE_13DEDC             ; $13:E27F: 82 5A FC    ;

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

CODE_13E402:    LDA $0784               ; $13:E402: AD 84 07    ;
CODE_13E405:    BEQ CODE_13E448             ; $13:E405: F0 41       ;
CODE_13E407:    INC $0785                   ; $13:E407: EE 85 07    ;
CODE_13E40A:    LDA $0785                   ; $13:E40A: AD 85 07    ;
CODE_13E40D:    CMP #$06                    ; $13:E40D: C9 06       ;
CODE_13E40F:    BCC CODE_13E421             ; $13:E40F: 90 10       ;
CODE_13E411:    STZ $0785                   ; $13:E411: 9C 85 07    ;
CODE_13E414:    INC $0786                   ; $13:E414: EE 86 07    ;
CODE_13E417:    LDA $0786                   ; $13:E417: AD 86 07    ;
CODE_13E41A:    CMP #$0C                    ; $13:E41A: C9 0C       ;
CODE_13E41C:    BNE CODE_13E421             ; $13:E41C: D0 03       ;
CODE_13E41E:    STZ $0786                   ; $13:E41E: 9C 86 07    ;
CODE_13E421:    REP #$30                    ; $13:E421: C2 30       ;
CODE_13E423:    LDA $0786                   ; $13:E423: AD 86 07    ;
CODE_13E426:    AND #$00FF                  ; $13:E426: 29 FF 00    ;
CODE_13E429:    ASL A                       ; $13:E429: 0A          ;
CODE_13E42A:    TAX                         ; $13:E42A: AA          ;
CODE_13E42B:    LDA.l DATA_13E3EA,x                 ; $13:E42B: BF EA E3 13 ;
CODE_13E42F:    TAX                         ; $13:E42F: AA          ;
CODE_13E430:    LDY #$0000                  ; $13:E430: A0 00 00    ;
CODE_13E433:    LDA.l DATA_13E282,x                 ; $13:E433: BF 82 E2 13 ;
CODE_13E437:    STA $0B22,y                 ; $13:E437: 99 22 0B    ;
CODE_13E43A:    INX                         ; $13:E43A: E8          ;
CODE_13E43B:    INX                         ; $13:E43B: E8          ;
CODE_13E43C:    INY                         ; $13:E43C: C8          ;
CODE_13E43D:    INY                         ; $13:E43D: C8          ;
CODE_13E43E:    CPY #$001E                  ; $13:E43E: C0 1E 00    ;
CODE_13E441:    BNE CODE_13E433             ; $13:E441: D0 F0       ;
CODE_13E443:    SEP #$30                    ; $13:E443: E2 30       ;
CODE_13E445:    BRL CODE_13DEDC             ; $13:E445: 82 94 FA    ;

CODE_13E448:    RTL                         ; $13:E448: 6B          ;

DATA_13E449:        db $04,$0F,$11,$11,$0F,$04,$05

DATA_13E450:        db $01,$00,$03,$04,$06,$04,$04

CODE_13E457:    LDX #$06                    ; $13:E457: A2 06       ;
CODE_13E459:    LDA $0533                   ; $13:E459: AD 33 05    ;
CODE_13E45C:    CMP.l DATA_13E449,x                 ; $13:E45C: DF 49 E4 13 ;
CODE_13E460:    BNE CODE_13E46B             ; $13:E460: D0 09       ;
CODE_13E462:    LDA $0534                   ; $13:E462: AD 34 05    ;
CODE_13E465:    CMP.l DATA_13E450,x                 ; $13:E465: DF 50 E4 13 ;
CODE_13E469:    BEQ CODE_13E485             ; $13:E469: F0 1A       ;
CODE_13E46B:    DEX                         ; $13:E46B: CA          ;
CODE_13E46C:    BPL CODE_13E459             ; $13:E46C: 10 EB       ;
CODE_13E46E:    LDA $0533                   ; $13:E46E: AD 33 05    ;
CODE_13E471:    CMP #$0F                    ; $13:E471: C9 0F       ;
CODE_13E473:    BNE CODE_13E484             ; $13:E473: D0 0F       ;
CODE_13E475:    LDA $0534                   ; $13:E475: AD 34 05    ;
CODE_13E478:    CMP #$04                    ; $13:E478: C9 04       ;
CODE_13E47A:    BNE CODE_13E484             ; $13:E47A: D0 08       ;
CODE_13E47C:    LDA $051B                   ; $13:E47C: AD 1B 05    ;
CODE_13E47F:    BNE CODE_13E484             ; $13:E47F: D0 03       ;
CODE_13E481:    JSR CODE_13E49D             ; $13:E481: 20 9D E4    ;
CODE_13E484:    RTL                         ; $13:E484: 6B          ;

CODE_13E485:    JSR CODE_13E489             ; $13:E485: 20 89 E4    ;
CODE_13E488:    RTL                         ; $13:E488: 6B          ;

CODE_13E489:    TXA                         ; $13:E489: 8A          ;
CODE_13E48A:    ASL A                       ; $13:E48A: 0A          ;
CODE_13E48B:    TAX                         ; $13:E48B: AA          ;
CODE_13E48C:    JMP (PNTR_13E48F,x)     ; $13:E48C: 7C 8F E4    ;

PNTR_13E48F:        dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4B8
                    dw CODE_13E4B8
                    dw CODE_13E49D
                    dw CODE_13E49D
                    dw CODE_13E4CC
                    
CODE_13E49D:    REP #$20                ; $13:E49D: C2 20       ;
CODE_13E49F:    LDX #$00                ; $13:E49F: A2 00       ;
CODE_13E4A1:    LDA.l DATA_14BF00,x                 ; $13:E4A1: BF 00 BF 14 ;
CODE_13E4A5:    STA $0B20,x                 ; $13:E4A5: 9D 20 0B    ;
CODE_13E4A8:    LDA.l DATA_14BF20,x                 ; $13:E4A8: BF 20 BF 14 ;
CODE_13E4AC:    STA $0BE0,x                 ; $13:E4AC: 9D E0 0B    ;
CODE_13E4AF:    INX                         ; $13:E4AF: E8          ;
CODE_13E4B0:    INX                         ; $13:E4B0: E8          ;
CODE_13E4B1:    CPX #$20                    ; $13:E4B1: E0 20       ;
CODE_13E4B3:    BNE CODE_13E4A1             ; $13:E4B3: D0 EC       ;
CODE_13E4B5:    SEP #$20                    ; $13:E4B5: E2 20       ;
CODE_13E4B7:    RTS                         ; $13:E4B7: 60          ;

CODE_13E4B8:    REP #$20                    ; $13:E4B8: C2 20       ;
CODE_13E4BA:    LDX #$00                    ; $13:E4BA: A2 00       ;
CODE_13E4BC:    LDA.l DATA_14BF40,x                 ; $13:E4BC: BF 40 BF 14 ;
CODE_13E4C0:    STA $0BE0,x                 ; $13:E4C0: 9D E0 0B    ;
CODE_13E4C3:    INX                         ; $13:E4C3: E8          ;
CODE_13E4C4:    INX                         ; $13:E4C4: E8          ;
CODE_13E4C5:    CPX #$20                    ; $13:E4C5: E0 20       ;
CODE_13E4C7:    BNE CODE_13E4BC             ; $13:E4C7: D0 F3       ;
CODE_13E4C9:    SEP #$20                    ; $13:E4C9: E2 20       ;
CODE_13E4CB:    RTS                         ; $13:E4CB: 60          ;

CODE_13E4CC:    REP #$20                    ; $13:E4CC: C2 20       ;
CODE_13E4CE:    LDX #$00                    ; $13:E4CE: A2 00       ;
CODE_13E4D0:    LDA.l DATA_14BF60,x                 ; $13:E4D0: BF 60 BF 14 ;
CODE_13E4D4:    STA $0BE0,x                 ; $13:E4D4: 9D E0 0B    ;
CODE_13E4D7:    INX                         ; $13:E4D7: E8          ;
CODE_13E4D8:    INX                         ; $13:E4D8: E8          ;
CODE_13E4D9:    CPX #$20                    ; $13:E4D9: E0 20       ;
CODE_13E4DB:    BNE CODE_13E4D0             ; $13:E4DB: D0 F3       ;
CODE_13E4DD:    SEP #$20                    ; $13:E4DD: E2 20       ;
CODE_13E4DF:    RTS                         ; $13:E4DF: 60          ;

DATA_13E4E0:        db $7F,$77

DATA_13E4E2:        db $E7,$34

DATA_13E4E4:        db $E7,$34

DATA_13E4E6:        db $E7,$34,$97,$5E,$09,$25,$2E,$29
                    db $EF,$35,$AF,$49,$2B,$15,$75,$1D
                    db $F7,$32,$E7,$34,$97,$0A,$3C,$13
                    db $DF,$2F

CODE_13E500:    LDA $0791                   ; $13:E500: AD 91 07    ;
CODE_13E503:    BNE CODE_13E506             ; $13:E503: D0 01       ;
CODE_13E505:    RTL                         ; $13:E505: 6B          ;

CODE_13E506:    PHB                         ; $13:E506: 8B          ;
CODE_13E507:    PHK                         ; $13:E507: 4B          ;
CODE_13E508:    PLB                         ; $13:E508: AB          ;
CODE_13E509:    LDA $10                     ; $13:E509: A5 10       ;
CODE_13E50B:    AND #$38                    ; $13:E50B: 29 38       ;
CODE_13E50D:    CMP #$20                    ; $13:E50D: C9 20       ;
CODE_13E50F:    BCC CODE_13E515             ; $13:E50F: 90 04       ;
CODE_13E511:    AND #$18                    ; $13:E511: 29 18       ;
CODE_13E513:    EOR #$18                    ; $13:E513: 49 18       ;
CODE_13E515:    TAY                         ; $13:E515: A8          ;
CODE_13E516:    REP #$20                    ; $13:E516: C2 20       ;
CODE_13E518:    LDA DATA_13E4E0,y                   ; $13:E518: B9 E0 E4    ;
CODE_13E51B:    STA $0B38                   ; $13:E51B: 8D 38 0B    ;
CODE_13E51E:    LDA DATA_13E4E2,y                   ; $13:E51E: B9 E2 E4    ;
CODE_13E521:    STA $0B3A                   ; $13:E521: 8D 3A 0B    ;
CODE_13E524:    LDA DATA_13E4E4,y                   ; $13:E524: B9 E4 E4    ;
CODE_13E527:    STA $0B3C                   ; $13:E527: 8D 3C 0B    ;
CODE_13E52A:    LDA DATA_13E4E6,y                   ; $13:E52A: B9 E6 E4    ;
CODE_13E52D:    STA $0B3E                   ; $13:E52D: 8D 3E 0B    ;
CODE_13E530:    SEP #$20                    ; $13:E530: E2 20       ;
CODE_13E532:    PLB                         ; $13:E532: AB          ;
CODE_13E533:    BRL CODE_13DEDC             ; $13:E533: 82 A6 F9    ;

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

CODE_13E700:    LDA #$80                ; $13:E700: A9 80       ;
CODE_13E702:    BEQ CODE_13E706             ; $13:E702: F0 02       ;
CODE_13E704:    LDA #$0F                    ; $13:E704: A9 0F       ;
CODE_13E706:    STA $FE                     ; $13:E706: 85 FE       ;
CODE_13E708:    LDA $11                     ; $13:E708: A5 11       ;
CODE_13E70A:    ASL A                       ; $13:E70A: 0A          ;
CODE_13E70B:    TAX                         ; $13:E70B: AA          ;
CODE_13E70C:    LDA.w PNTR_11BDA6,x                 ; $13:E70C: BD A6 BD    ;
CODE_13E70F:    STA $F0                     ; $13:E70F: 85 F0       ;
CODE_13E711:    LDA.w PNTR_11BDA6+1,x                   ; $13:E711: BD A7 BD    ;
CODE_13E714:    STA $F1                     ; $13:E714: 85 F1       ;
CODE_13E716:    LDA #$11                    ; $13:E716: A9 11       ;
CODE_13E718:    STA $F2                     ; $13:E718: 85 F2       ;
CODE_13E71A:    STZ $0154                   ; $13:E71A: 9C 54 01    ;
CODE_13E71D:    LDA $0154                   ; $13:E71D: AD 54 01    ;
CODE_13E720:    BPL CODE_13E71D             ; $13:E720: 10 FB       ;
CODE_13E722:    JSL CODE_14FA99             ; $13:E722: 22 99 FA 14 ;
CODE_13E726:    CLI                         ; $13:E726: 58          ;
CODE_13E727:    RTS                         ; $13:E727: 60          ;

CODE_13E728:    LDA #$B0                    ; $13:E728: A9 B0       ;
CODE_13E72A:    BRA CODE_13E72E             ; $13:E72A: 80 02       ;

CODE_13E72C:    LDA #$30                    ; $13:E72C: A9 30       ;
CODE_13E72E:    STA $FF                     ; $13:E72E: 85 FF       ;
CODE_13E730:    RTS                         ; $13:E730: 60          ;

CODE_13E731:    JSR CODE_13E700             ; $13:E731: 20 00 E7    ;
CODE_13E734:    JSL CODE_14F953             ; $13:E734: 22 53 F9 14 ;
CODE_13E738:    LDA #$40                    ; $13:E738: A9 40       ;
CODE_13E73A:    STA $0100                   ; $13:E73A: 8D 00 01    ;
CODE_13E73D:    JSR CODE_13E728             ; $13:E73D: 20 28 E7    ;
CODE_13E740:    JSR CODE_13E708             ; $13:E740: 20 08 E7    ;
CODE_13E743:    LDA #$01                    ; $13:E743: A9 01       ;
CODE_13E745:    STA $11                     ; $13:E745: 85 11       ;
CODE_13E747:    JSR CODE_13E708             ; $13:E747: 20 08 E7    ;
CODE_13E74A:    JSL CODE_13DE0D             ; $13:E74A: 22 0D DE 13 ;
CODE_13E74E:    LDA #$10                    ; $13:E74E: A9 10       ;
CODE_13E750:    STA $18                     ; $13:E750: 85 18       ;
CODE_13E752:    LDA #$04                    ; $13:E752: A9 04       ;
CODE_13E754:    STA $14                     ; $13:E754: 85 14       ;
CODE_13E756:    STZ $FE                     ; $13:E756: 64 FE       ;
CODE_13E758:    STZ $17                     ; $13:E758: 64 17       ;
CODE_13E75A:    STZ $15                     ; $13:E75A: 64 15       ;
CODE_13E75C:    LDA #$20                    ; $13:E75C: A9 20       ;
CODE_13E75E:    STA $0239                   ; $13:E75E: 8D 39 02    ;
CODE_13E761:    LDA #$70                    ; $13:E761: A9 70       ;
CODE_13E763:    STA $023A                   ; $13:E763: 8D 3A 02    ;
CODE_13E766:    LDA #$01                    ; $13:E766: A9 01       ;
CODE_13E768:    JSL CODE_14FAE8             ; $13:E768: 22 E8 FA 14 ;
CODE_13E76C:    LDA #$0D                    ; $13:E76C: A9 0D       ;
CODE_13E76E:    STA $16                     ; $13:E76E: 85 16       ;
CODE_13E770:    STZ $15                     ; $13:E770: 64 15       ;
CODE_13E772:    JSL CODE_138CCE             ; $13:E772: 22 CE 8C 13 ;
CODE_13E776:    LDA #$01                    ; $13:E776: A9 01       ;
CODE_13E778:    STA $025E                   ; $13:E778: 8D 5E 02    ;
CODE_13E77B:    LDY $15                     ; $13:E77B: A4 15       ;
CODE_13E77D:    LDA.w DATA_11C1A3,y                 ; $13:E77D: B9 A3 C1    ;
CODE_13E780:    STA $0210                   ; $13:E780: 8D 10 02    ;
CODE_13E783:    DEC $18                     ; $13:E783: C6 18       ;
CODE_13E785:    BPL CODE_13E78D             ; $13:E785: 10 06       ;
CODE_13E787:    LDA #$10                    ; $13:E787: A9 10       ;
CODE_13E789:    STA $18                     ; $13:E789: 85 18       ;
CODE_13E78B:    INC $17                     ; $13:E78B: E6 17       ;
CODE_13E78D:    JSR CODE_13E8A4             ; $13:E78D: 20 A4 E8    ;
CODE_13E790:    LDA $E6                     ; $13:E790: A5 E6       ;
CODE_13E792:    CMP #$05                    ; $13:E792: C9 05       ;
CODE_13E794:    BEQ CODE_13E79F             ; $13:E794: F0 09       ;
CODE_13E796:    JSL CODE_129539             ; $13:E796: 22 39 95 12 ;
CODE_13E79A:    JSR CODE_13E708             ; $13:E79A: 20 08 E7    ;
CODE_13E79D:    BRA CODE_13E7A2             ; $13:E79D: 80 03       ;

CODE_13E79F:    JSR CODE_13E704             ; $13:E79F: 20 04 E7    ;
CODE_13E7A2:    DEC $0210                   ; $13:E7A2: CE 10 02    ;
CODE_13E7A5:    BPL CODE_13E783             ; $13:E7A5: 10 DC       ;
CODE_13E7A7:    INC $15                     ; $13:E7A7: E6 15       ;
CODE_13E7A9:    DEC $16                     ; $13:E7A9: C6 16       ;
CODE_13E7AB:    BPL CODE_13E77B             ; $13:E7AB: 10 CE       ;
CODE_13E7AD:    DEC $14                     ; $13:E7AD: C6 14       ;
CODE_13E7AF:    BMI CODE_13E7B4             ; $13:E7AF: 30 03       ;
CODE_13E7B1:    JMP CODE_13E76C             ; $13:E7B1: 4C 6C E7    ;

CODE_13E7B4:    DEC $E6                     ; $13:E7B4: C6 E6       ;
CODE_13E7B6:    LDA #$03                    ; $13:E7B6: A9 03       ;
CODE_13E7B8:    STA $11                     ; $13:E7B8: 85 11       ;
CODE_13E7BA:    JSL CODE_14F9F0         ; $13:E7BA: 22 F0 F9 14 ; Clear all OAM.
CODE_13E7BE:    JSR CODE_13E708             ; $13:E7BE: 20 08 E7    ;
CODE_13E7C1:    LDA #$04                    ; $13:E7C1: A9 04       ;
CODE_13E7C3:    STA $11                     ; $13:E7C3: 85 11       ;
CODE_13E7C5:    JSR CODE_13E708             ; $13:E7C5: 20 08 E7    ;
CODE_13E7C8:    LDA #$05                    ; $13:E7C8: A9 05       ;
CODE_13E7CA:    STA $11                     ; $13:E7CA: 85 11       ;
CODE_13E7CC:    JSR CODE_13E708             ; $13:E7CC: 20 08 E7    ;
CODE_13E7CF:    LDA #$06                    ; $13:E7CF: A9 06       ;
CODE_13E7D1:    STA $11                     ; $13:E7D1: 85 11       ;
CODE_13E7D3:    JSR CODE_13E708             ; $13:E7D3: 20 08 E7    ;
CODE_13E7D6:    LDA #$07                    ; $13:E7D6: A9 07       ;
CODE_13E7D8:    STA $11                     ; $13:E7D8: 85 11       ;
CODE_13E7DA:    JSR CODE_13E708             ; $13:E7DA: 20 08 E7    ;
CODE_13E7DD:    LDA #$08                    ; $13:E7DD: A9 08       ;
CODE_13E7DF:    STA $11                     ; $13:E7DF: 85 11       ;
CODE_13E7E1:    REP #$20                    ; $13:E7E1: C2 20       ;
CODE_13E7E3:    LDA #$4480                  ; $13:E7E3: A9 80 44    ;
CODE_13E7E6:    STA $0C42                   ; $13:E7E6: 8D 42 0C    ;
CODE_13E7E9:    SEP #$20                    ; $13:E7E9: E2 20       ;
CODE_13E7EB:    LDA #$01                    ; $13:E7EB: A9 01       ;
CODE_13E7ED:    STA $02A9                   ; $13:E7ED: 8D A9 02    ;
CODE_13E7F0:    JSR CODE_13E708             ; $13:E7F0: 20 08 E7    ;
CODE_13E7F3:    STZ $15                     ; $13:E7F3: 64 15       ;
CODE_13E7F5:    LDA #$06                    ; $13:E7F5: A9 06       ;
CODE_13E7F7:    STA $16                     ; $13:E7F7: 85 16       ;
CODE_13E7F9:    STZ $14                     ; $13:E7F9: 64 14       ;
CODE_13E7FB:    LDA #$02                    ; $13:E7FB: A9 02       ;
CODE_13E7FD:    STA $025E                   ; $13:E7FD: 8D 5E 02    ;
CODE_13E800:    JSL CODE_138CCE             ; $13:E800: 22 CE 8C 13 ;
CODE_13E804:    JSR CODE_13E704             ; $13:E804: 20 04 E7    ;
CODE_13E807:    LDY $15                     ; $13:E807: A4 15       ;
CODE_13E809:    LDA.w DATA_11C1C6,y                 ; $13:E809: B9 C6 C1    ;
CODE_13E80C:    STA $06C3                   ; $13:E80C: 8D C3 06    ;
CODE_13E80F:    CLC                         ; $13:E80F: 18          ;
CODE_13E810:    ADC #$02                    ; $13:E810: 69 02       ;
CODE_13E812:    STA $06C4                   ; $13:E812: 8D C4 06    ;
CODE_13E815:    LDA.w DATA_11C1B1,y                 ; $13:E815: B9 B1 C1    ;
CODE_13E818:    STA $10                     ; $13:E818: 85 10       ;
CODE_13E81A:    JSR CODE_13E708             ; $13:E81A: 20 08 E7    ;
CODE_13E81D:    DEC $10                     ; $13:E81D: C6 10       ;
CODE_13E81F:    BPL CODE_13E81A             ; $13:E81F: 10 F9       ;
CODE_13E821:    INC $15                     ; $13:E821: E6 15       ;
CODE_13E823:    DEC $16                     ; $13:E823: C6 16       ;
CODE_13E825:    BPL CODE_13E807             ; $13:E825: 10 E0       ;
CODE_13E827:    LDA #$10                    ; $13:E827: A9 10       ;
CODE_13E829:    STA $18                     ; $13:E829: 85 18       ;
CODE_13E82B:    LDA #$01                    ; $13:E82B: A9 01       ;
CODE_13E82D:    STA $14                     ; $13:E82D: 85 14       ;
CODE_13E82F:    STZ $15                     ; $13:E82F: 64 15       ;
CODE_13E831:    LDA #$0D                    ; $13:E831: A9 0D       ;
CODE_13E833:    STA $16                     ; $13:E833: 85 16       ;
CODE_13E835:    LDA #$01                    ; $13:E835: A9 01       ;
CODE_13E837:    STA $025E                   ; $13:E837: 8D 5E 02    ;
CODE_13E83A:    JSL CODE_138CCE             ; $13:E83A: 22 CE 8C 13 ;
CODE_13E83E:    JSR CODE_13E704             ; $13:E83E: 20 04 E7    ;
CODE_13E841:    LDY $15                     ; $13:E841: A4 15       ;
CODE_13E843:    LDA.w DATA_11C1A3,y                 ; $13:E843: B9 A3 C1    ;
CODE_13E846:    STA $10                     ; $13:E846: 85 10       ;
CODE_13E848:    JSR CODE_13E708             ; $13:E848: 20 08 E7    ;
CODE_13E84B:    DEC $10                     ; $13:E84B: C6 10       ;
CODE_13E84D:    BPL CODE_13E848             ; $13:E84D: 10 F9       ;
CODE_13E84F:    INC $15                     ; $13:E84F: E6 15       ;
CODE_13E851:    DEC $16                     ; $13:E851: C6 16       ;
CODE_13E853:    BPL CODE_13E841             ; $13:E853: 10 EC       ;
CODE_13E855:    DEC $14                     ; $13:E855: C6 14       ;
CODE_13E857:    BMI CODE_13E85C             ; $13:E857: 30 03       ;
CODE_13E859:    JMP CODE_13E82F             ; $13:E859: 4C 2F E8    ;

CODE_13E85C:    JSR CODE_13E94B             ; $13:E85C: 20 4B E9    ;
CODE_13E85F:    JSR CODE_13E708             ; $13:E85F: 20 08 E7    ;
CODE_13E862:    STZ $079F                   ; $13:E862: 9C 9F 07    ;
CODE_13E865:    STZ $07A0                   ; $13:E865: 9C A0 07    ;
CODE_13E868:    LDA #$B0                    ; $13:E868: A9 B0       ;
CODE_13E86A:    STA $07A1                   ; $13:E86A: 8D A1 07    ;
CODE_13E86D:    STZ $15                     ; $13:E86D: 64 15       ;
CODE_13E86F:    LDA #$0D                    ; $13:E86F: A9 0D       ;
CODE_13E871:    STA $16                     ; $13:E871: 85 16       ;
CODE_13E873:    JSL CODE_138CCE             ; $13:E873: 22 CE 8C 13 ;
CODE_13E877:    JSR CODE_13E704             ; $13:E877: 20 04 E7    ;
CODE_13E87A:    LDY $15                     ; $13:E87A: A4 15       ;
CODE_13E87C:    LDA.w DATA_11C1B8,y                 ; $13:E87C: B9 B8 C1    ;
CODE_13E87F:    STA $06C3                   ; $13:E87F: 8D C3 06    ;
CODE_13E882:    CLC                         ; $13:E882: 18          ;
CODE_13E883:    ADC #$02                    ; $13:E883: 69 02       ;
CODE_13E885:    STA $06C4                   ; $13:E885: 8D C4 06    ;
CODE_13E888:    LDA.w DATA_11C1A3,y                 ; $13:E888: B9 A3 C1    ;
CODE_13E88B:    STA $10                     ; $13:E88B: 85 10       ;
CODE_13E88D:    JSR CODE_13E907             ; $13:E88D: 20 07 E9    ;
CODE_13E890:    JSR CODE_13E708             ; $13:E890: 20 08 E7    ;
CODE_13E893:    JSL CODE_14DB62             ; $13:E893: 22 62 DB 14 ;
CODE_13E897:    DEC $10                     ; $13:E897: C6 10       ;
CODE_13E899:    BPL CODE_13E88D             ; $13:E899: 10 F2       ;
CODE_13E89B:    INC $15                     ; $13:E89B: E6 15       ;
CODE_13E89D:    DEC $16                     ; $13:E89D: C6 16       ;
CODE_13E89F:    BPL CODE_13E87A             ; $13:E89F: 10 D9       ;
CODE_13E8A1:    JMP CODE_13E86D             ; $13:E8A1: 4C 6D E8    ;

CODE_13E8A4:    LDY #$1F                    ; $13:E8A4: A0 1F       ;
CODE_13E8A6:    LDA $17                     ; $13:E8A6: A5 17       ;
CODE_13E8A8:    AND #$01                    ; $13:E8A8: 29 01       ;
CODE_13E8AA:    BNE CODE_13E8B7             ; $13:E8AA: D0 0B       ;
CODE_13E8AC:    LDA.w DATA_11C133,y                 ; $13:E8AC: B9 33 C1    ;
CODE_13E8AF:    STA $0800,y                 ; $13:E8AF: 99 00 08    ;
CODE_13E8B2:    DEY                         ; $13:E8B2: 88          ;
CODE_13E8B3:    BPL CODE_13E8AC             ; $13:E8B3: 10 F7       ;
CODE_13E8B5:    BRA CODE_13E8C0             ; $13:E8B5: 80 09       ;

CODE_13E8B7:    LDA.w DATA_11C153,y                 ; $13:E8B7: B9 53 C1    ;
CODE_13E8BA:    STA $0800,y                 ; $13:E8BA: 99 00 08    ;
CODE_13E8BD:    DEY                         ; $13:E8BD: 88          ;
CODE_13E8BE:    BPL CODE_13E8B7             ; $13:E8BE: 10 F7       ;
CODE_13E8C0:    LDY #$17                    ; $13:E8C0: A0 17       ;
CODE_13E8C2:    LDA $17                     ; $13:E8C2: A5 17       ;
CODE_13E8C4:    AND #$01                    ; $13:E8C4: 29 01       ;
CODE_13E8C6:    BNE CODE_13E8D3             ; $13:E8C6: D0 0B       ;
CODE_13E8C8:    LDA.w DATA_11C173,y                 ; $13:E8C8: B9 73 C1    ;
CODE_13E8CB:    STA $0820,y                 ; $13:E8CB: 99 20 08    ;
CODE_13E8CE:    DEY                         ; $13:E8CE: 88          ;
CODE_13E8CF:    BPL CODE_13E8C8             ; $13:E8CF: 10 F7       ;
CODE_13E8D1:    BRA CODE_13E8DC             ; $13:E8D1: 80 09       ;

CODE_13E8D3:    LDA.w DATA_11C18B,y                 ; $13:E8D3: B9 8B C1    ;
CODE_13E8D6:    STA $0820,y                 ; $13:E8D6: 99 20 08    ;
CODE_13E8D9:    DEY                         ; $13:E8D9: 88          ;
CODE_13E8DA:    BPL CODE_13E8D3             ; $13:E8DA: 10 F7       ;
CODE_13E8DC:    STZ $0A20                   ; $13:E8DC: 9C 20 0A    ;
CODE_13E8DF:    STZ $0A21                   ; $13:E8DF: 9C 21 0A    ;
CODE_13E8E2:    STZ $0A22                   ; $13:E8E2: 9C 22 0A    ;
CODE_13E8E5:    STZ $0A23                   ; $13:E8E5: 9C 23 0A    ;
CODE_13E8E8:    STZ $0A24                   ; $13:E8E8: 9C 24 0A    ;
CODE_13E8EB:    STZ $0A25                   ; $13:E8EB: 9C 25 0A    ;
CODE_13E8EE:    STZ $0A26                   ; $13:E8EE: 9C 26 0A    ;
CODE_13E8F1:    STZ $0A27                   ; $13:E8F1: 9C 27 0A    ;
CODE_13E8F4:    STZ $0A28                   ; $13:E8F4: 9C 28 0A    ;
CODE_13E8F7:    STZ $0A29                   ; $13:E8F7: 9C 29 0A    ;
CODE_13E8FA:    STZ $0A2A                   ; $13:E8FA: 9C 2A 0A    ;
CODE_13E8FD:    STZ $0A2B                   ; $13:E8FD: 9C 2B 0A    ;
CODE_13E900:    STZ $0A2C                   ; $13:E900: 9C 2C 0A    ;
CODE_13E903:    STZ $0A2D                   ; $13:E903: 9C 2D 0A    ;
CODE_13E906:    RTS                         ; $13:E906: 60          ;

CODE_13E907:    INC $2E                     ; $13:E907: E6 2E       ;
CODE_13E909:    LDA $2E                     ; $13:E909: A5 2E       ;
CODE_13E90B:    AND #$01                    ; $13:E90B: 29 01       ;
CODE_13E90D:    BNE CODE_13E915             ; $13:E90D: D0 06       ;
CODE_13E90F:    DEC $39                     ; $13:E90F: C6 39       ;
CODE_13E911:    DEC $3A                     ; $13:E911: C6 3A       ;
CODE_13E913:    DEC $3B                     ; $13:E913: C6 3B       ;
CODE_13E915:    LDA $29                     ; $13:E915: A5 29       ;
CODE_13E917:    JSL CODE_118776             ; $13:E917: 22 76 87 11 ;

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
      
CODE_13E931:    RTS                         ; $13:E931: 60          ;

CODE_13E932:    PHX                         ; $13:E932: DA          ;
CODE_13E933:    LDX $2B                     ; $13:E933: A6 2B       ;
CODE_13E935:    LDA.l DATA_14C5BD,x                 ; $13:E935: BF BD C5 14 ;
CODE_13E939:    STA $2F                     ; $13:E939: 85 2F       ;
CODE_13E93B:    LDA.l DATA_14C5A0,x                 ; $13:E93B: BF A0 C5 14 ;
CODE_13E93F:    STA $30                     ; $13:E93F: 85 30       ;
CODE_13E941:    LDA.l DATA_14C583,x                 ; $13:E941: BF 83 C5 14 ;
CODE_13E945:    STA $31                     ; $13:E945: 85 31       ;
CODE_13E947:    INC $2B                     ; $13:E947: E6 2B       ;
CODE_13E949:    PLX                         ; $13:E949: FA          ;
CODE_13E94A:    RTS                         ; $13:E94A: 60          ;

CODE_13E94B:    LDX #$0F                    ; $13:E94B: A2 0F       ;
CODE_13E94D:    LDA.l DATA_14C564,x                 ; $13:E94D: BF 64 C5 14 ;
CODE_13E951:    STA $0840,x                 ; $13:E951: 9D 40 08    ;
CODE_13E954:    DEX                         ; $13:E954: CA          ;
CODE_13E955:    BPL CODE_13E94D             ; $13:E955: 10 F6       ;
CODE_13E957:    LDA #$00                    ; $13:E957: A9 00       ;
CODE_13E959:    STA $0A30                   ; $13:E959: 8D 30 0A    ;
CODE_13E95C:    STA $0A31                   ; $13:E95C: 8D 31 0A    ;
CODE_13E95F:    STA $0A32                   ; $13:E95F: 8D 32 0A    ;
CODE_13E962:    STA $0A33                   ; $13:E962: 8D 33 0A    ;
CODE_13E965:    LDA #$02                    ; $13:E965: A9 02       ;
CODE_13E967:    STA $28                     ; $13:E967: 85 28       ;
CODE_13E969:    STZ $29                     ; $13:E969: 64 29       ;
CODE_13E96B:    STZ $2A                     ; $13:E96B: 64 2A       ;
CODE_13E96D:    LDY #$40                    ; $13:E96D: A0 40       ;
CODE_13E96F:    LDA #$27                    ; $13:E96F: A9 27       ;
CODE_13E971:    STA $0050,y                 ; $13:E971: 99 50 00    ;
CODE_13E974:    DEY                         ; $13:E974: 88          ;
CODE_13E975:    BPL CODE_13E96F             ; $13:E975: 10 F8       ;
CODE_13E977:    RTS                         ; $13:E977: 60          ;

DATA_13E978:        db $E0,$58,$40,$6D,$A0,$7D,$80,$7E
                    db $FF,$7F

CODE_13E982:    DEC $28                 ; $13:E982: C6 28       ;
CODE_13E984:    BPL CODE_13E9BC             ; $13:E984: 10 36       ;
CODE_13E986:    LDA #$02                    ; $13:E986: A9 02       ;
CODE_13E988:    STA $28                     ; $13:E988: 85 28       ;
CODE_13E98A:    INC $2A                     ; $13:E98A: E6 2A       ;
CODE_13E98C:    LDA $2A                     ; $13:E98C: A5 2A       ;
CODE_13E98E:    ASL A                       ; $13:E98E: 0A          ;
CODE_13E98F:    TAX                         ; $13:E98F: AA          ;
CODE_13E990:    REP #$20                    ; $13:E990: C2 20       ;
CODE_13E992:    LDA.l DATA_13E978,x                 ; $13:E992: BF 78 E9 13 ;
CODE_13E996:    STA $0C42                   ; $13:E996: 8D 42 0C    ;
CODE_13E999:    SEP #$20                    ; $13:E999: E2 20       ;
CODE_13E99B:    LDA #$01                    ; $13:E99B: A9 01       ;
CODE_13E99D:    STA $02A9                   ; $13:E99D: 8D A9 02    ;
CODE_13E9A0:    LDA $2A                     ; $13:E9A0: A5 2A       ;
CODE_13E9A2:    CMP #$04                    ; $13:E9A2: C9 04       ;
CODE_13E9A4:    BNE CODE_13E9BC             ; $13:E9A4: D0 16       ;
CODE_13E9A6:    INC $29                     ; $13:E9A6: E6 29       ;
CODE_13E9A8:    LDA #$80                    ; $13:E9A8: A9 80       ;
CODE_13E9AA:    STA $28                     ; $13:E9AA: 85 28       ;
CODE_13E9AC:    LDA #$60                    ; $13:E9AC: A9 60       ;
CODE_13E9AE:    STA $1F                     ; $13:E9AE: 85 1F       ;
CODE_13E9B0:    LDA #$01                    ; $13:E9B0: A9 01       ;
CODE_13E9B2:    STA $35                     ; $13:E9B2: 85 35       ;
CODE_13E9B4:    STA $38                     ; $13:E9B4: 85 38       ;
CODE_13E9B6:    LDA #$00                    ; $13:E9B6: A9 00       ;
CODE_13E9B8:    STA $36                     ; $13:E9B8: 85 36       ;
CODE_13E9BA:    STA $37                     ; $13:E9BA: 85 37       ;
CODE_13E9BC:    RTS                         ; $13:E9BC: 60          ;

CODE_13E9BD:    DEC $28                     ; $13:E9BD: C6 28       ;
CODE_13E9BF:    BPL CODE_13E9CB             ; $13:E9BF: 10 0A       ;
CODE_13E9C1:    INC $29                     ; $13:E9C1: E6 29       ;
CODE_13E9C3:    STZ $2B                     ; $13:E9C3: 64 2B       ;
CODE_13E9C5:    STZ $3F                     ; $13:E9C5: 64 3F       ;
CODE_13E9C7:    LDA #$01                    ; $13:E9C7: A9 01       ;
CODE_13E9C9:    STA $3A                     ; $13:E9C9: 85 3A       ;
CODE_13E9CB:    RTS                         ; $13:E9CB: 60          ;

CODE_13E9CC:    LDA $2E                     ; $13:E9CC: A5 2E       ;
CODE_13E9CE:    AND #$01                    ; $13:E9CE: 29 01       ;
CODE_13E9D0:    BEQ CODE_13E9FF             ; $13:E9D0: F0 2D       ;
CODE_13E9D2:    LDA $1F                     ; $13:E9D2: A5 1F       ;
CODE_13E9D4:    SEC                         ; $13:E9D4: 38          ;
CODE_13E9D5:    SBC #$01                    ; $13:E9D5: E9 01       ;
CODE_13E9D7:    STA $1F                     ; $13:E9D7: 85 1F       ;
CODE_13E9D9:    STA $0841                   ; $13:E9D9: 8D 41 08    ;
CODE_13E9DC:    STA $0845                   ; $13:E9DC: 8D 45 08    ;
CODE_13E9DF:    STA $0849                   ; $13:E9DF: 8D 49 08    ;
CODE_13E9E2:    STA $084D                   ; $13:E9E2: 8D 4D 08    ;
CODE_13E9E5:    LDA $1F                     ; $13:E9E5: A5 1F       ;
CODE_13E9E7:    CMP #$10                    ; $13:E9E7: C9 10       ;
CODE_13E9E9:    BNE CODE_13E9FF             ; $13:E9E9: D0 14       ;
CODE_13E9EB:    LDA #$F0                    ; $13:E9EB: A9 F0       ;
CODE_13E9ED:    STA $0841                   ; $13:E9ED: 8D 41 08    ;
CODE_13E9F0:    STA $0845                   ; $13:E9F0: 8D 45 08    ;
CODE_13E9F3:    STA $0849                   ; $13:E9F3: 8D 49 08    ;
CODE_13E9F6:    STA $084D                   ; $13:E9F6: 8D 4D 08    ;
CODE_13E9F9:    INC $29                     ; $13:E9F9: E6 29       ;
CODE_13E9FB:    STZ $38                     ; $13:E9FB: 64 38       ;
CODE_13E9FD:    STZ $35                     ; $13:E9FD: 64 35       ;
CODE_13E9FF:    LDA $35                     ; $13:E9FF: A5 35       ;
CODE_13EA01:    BNE CODE_13EA6D             ; $13:EA01: D0 6A       ;
CODE_13EA03:    LDA $39                     ; $13:EA03: A5 39       ;
CODE_13EA05:    BNE CODE_13EA6D             ; $13:EA05: D0 66       ;
CODE_13EA07:    JSR CODE_13E932             ; $13:EA07: 20 32 E9    ;
CODE_13EA0A:    LDY #$2F                    ; $13:EA0A: A0 2F       ;
CODE_13EA0C:    LDA [$2F],y                 ; $13:EA0C: B7 2F       ;
CODE_13EA0E:    STA $0840,y                 ; $13:EA0E: 99 40 08    ;
CODE_13EA11:    LDA #$24                    ; $13:EA11: A9 24       ;
CODE_13EA13:    STA $0900,y                 ; $13:EA13: 99 00 09    ;
CODE_13EA16:    DEY                         ; $13:EA16: 88          ;
CODE_13EA17:    LDA [$2F],y                 ; $13:EA17: B7 2F       ;
CODE_13EA19:    STA $0840,y                 ; $13:EA19: 99 40 08    ;
CODE_13EA1C:    LDA #$E9                    ; $13:EA1C: A9 E9       ;
CODE_13EA1E:    STA $0900,y                 ; $13:EA1E: 99 00 09    ;
CODE_13EA21:    DEY                         ; $13:EA21: 88          ;
CODE_13EA22:    LDA [$2F],y                 ; $13:EA22: B7 2F       ;
CODE_13EA24:    STA $0840,y                 ; $13:EA24: 99 40 08    ;
CODE_13EA27:    LDA #$F0                    ; $13:EA27: A9 F0       ;
CODE_13EA29:    STA $0900,y                 ; $13:EA29: 99 00 09    ;
CODE_13EA2C:    DEY                         ; $13:EA2C: 88          ;
CODE_13EA2D:    LDA [$2F],y                 ; $13:EA2D: B7 2F       ;
CODE_13EA2F:    STA $0840,y                 ; $13:EA2F: 99 40 08    ;
CODE_13EA32:    DEY                         ; $13:EA32: 88          ;
CODE_13EA33:    BPL CODE_13EA0C             ; $13:EA33: 10 D7       ;
CODE_13EA35:    LDA #$02                    ; $13:EA35: A9 02       ;
CODE_13EA37:    STA $0A30                   ; $13:EA37: 8D 30 0A    ;
CODE_13EA3A:    STA $0A31                   ; $13:EA3A: 8D 31 0A    ;
CODE_13EA3D:    STA $0A32                   ; $13:EA3D: 8D 32 0A    ;
CODE_13EA40:    STA $0A33                   ; $13:EA40: 8D 33 0A    ;
CODE_13EA43:    LDA #$00                    ; $13:EA43: A9 00       ;
CODE_13EA45:    STA $0A34                   ; $13:EA45: 8D 34 0A    ;
CODE_13EA48:    STA $0A35                   ; $13:EA48: 8D 35 0A    ;
CODE_13EA4B:    STA $0A36                   ; $13:EA4B: 8D 36 0A    ;
CODE_13EA4E:    STA $0A37                   ; $13:EA4E: 8D 37 0A    ;
CODE_13EA51:    STA $0A38                   ; $13:EA51: 8D 38 0A    ;
CODE_13EA54:    STA $0A39                   ; $13:EA54: 8D 39 0A    ;
CODE_13EA57:    STA $0A3A                   ; $13:EA57: 8D 3A 0A    ;
CODE_13EA5A:    STA $0A3B                   ; $13:EA5A: 8D 3B 0A    ;
CODE_13EA5D:    LDA #$01                    ; $13:EA5D: A9 01       ;
CODE_13EA5F:    STA $35                     ; $13:EA5F: 85 35       ;
CODE_13EA61:    LDA #$C0                    ; $13:EA61: A9 C0       ;
CODE_13EA63:    STA $1F                     ; $13:EA63: 85 1F       ;
CODE_13EA65:    LDA #$D0                    ; $13:EA65: A9 D0       ;
CODE_13EA67:    STA $20                     ; $13:EA67: 85 20       ;
CODE_13EA69:    LDA #$E8                    ; $13:EA69: A9 E8       ;
CODE_13EA6B:    STA $21                     ; $13:EA6B: 85 21       ;
CODE_13EA6D:    LDA $36                     ; $13:EA6D: A5 36       ;
CODE_13EA6F:    BNE CODE_13EABA             ; $13:EA6F: D0 49       ;
CODE_13EA71:    LDA $3A                     ; $13:EA71: A5 3A       ;
CODE_13EA73:    BNE CODE_13EABA             ; $13:EA73: D0 45       ;
CODE_13EA75:    JSR CODE_13E932             ; $13:EA75: 20 32 E9    ;
CODE_13EA78:    LDY #$2F                    ; $13:EA78: A0 2F       ;
CODE_13EA7A:    LDA [$2F],y                 ; $13:EA7A: B7 2F       ;
CODE_13EA7C:    STA $0880,y                 ; $13:EA7C: 99 80 08    ;
CODE_13EA7F:    DEY                         ; $13:EA7F: 88          ;
CODE_13EA80:    BPL CODE_13EA7A             ; $13:EA80: 10 F8       ;
CODE_13EA82:    LDA #$02                    ; $13:EA82: A9 02       ;
CODE_13EA84:    STA $0A40                   ; $13:EA84: 8D 40 0A    ;
CODE_13EA87:    STA $0A41                   ; $13:EA87: 8D 41 0A    ;
CODE_13EA8A:    STA $0A42                   ; $13:EA8A: 8D 42 0A    ;
CODE_13EA8D:    STA $0A43                   ; $13:EA8D: 8D 43 0A    ;
CODE_13EA90:    LDA #$00                    ; $13:EA90: A9 00       ;
CODE_13EA92:    STA $0A44                   ; $13:EA92: 8D 44 0A    ;
CODE_13EA95:    STA $0A45                   ; $13:EA95: 8D 45 0A    ;
CODE_13EA98:    STA $0A46                   ; $13:EA98: 8D 46 0A    ;
CODE_13EA9B:    STA $0A47                   ; $13:EA9B: 8D 47 0A    ;
CODE_13EA9E:    STA $0A48                   ; $13:EA9E: 8D 48 0A    ;
CODE_13EAA1:    STA $0A49                   ; $13:EAA1: 8D 49 0A    ;
CODE_13EAA4:    STA $0A4A                   ; $13:EAA4: 8D 4A 0A    ;
CODE_13EAA7:    STA $0A4B                   ; $13:EAA7: 8D 4B 0A    ;
CODE_13EAAA:    LDA #$01                    ; $13:EAAA: A9 01       ;
CODE_13EAAC:    STA $36                     ; $13:EAAC: 85 36       ;
CODE_13EAAE:    LDA #$C0                    ; $13:EAAE: A9 C0       ;
CODE_13EAB0:    STA $22                     ; $13:EAB0: 85 22       ;
CODE_13EAB2:    LDA #$D0                    ; $13:EAB2: A9 D0       ;
CODE_13EAB4:    STA $23                     ; $13:EAB4: 85 23       ;
CODE_13EAB6:    LDA #$E8                    ; $13:EAB6: A9 E8       ;
CODE_13EAB8:    STA $24                     ; $13:EAB8: 85 24       ;
CODE_13EABA:    LDA $37                     ; $13:EABA: A5 37       ;
CODE_13EABC:    BNE CODE_13EB0F             ; $13:EABC: D0 51       ;
CODE_13EABE:    LDA $3B                     ; $13:EABE: A5 3B       ;
CODE_13EAC0:    BNE CODE_13EB0F             ; $13:EAC0: D0 4D       ;
CODE_13EAC2:    JSR CODE_13E932             ; $13:EAC2: 20 32 E9    ;
CODE_13EAC5:    LDY #$2F                    ; $13:EAC5: A0 2F       ;
CODE_13EAC7:    LDA [$2F],y                 ; $13:EAC7: B7 2F       ;
CODE_13EAC9:    STA $08C0,y                 ; $13:EAC9: 99 C0 08    ;
CODE_13EACC:    DEY                         ; $13:EACC: 88          ;
CODE_13EACD:    BPL CODE_13EAC7             ; $13:EACD: 10 F8       ;
CODE_13EACF:    LDA #$02                    ; $13:EACF: A9 02       ;
CODE_13EAD1:    STA $0A50                   ; $13:EAD1: 8D 50 0A    ;
CODE_13EAD4:    STA $0A51                   ; $13:EAD4: 8D 51 0A    ;
CODE_13EAD7:    STA $0A52                   ; $13:EAD7: 8D 52 0A    ;
CODE_13EADA:    STA $0A53                   ; $13:EADA: 8D 53 0A    ;
CODE_13EADD:    LDA #$00                    ; $13:EADD: A9 00       ;
CODE_13EADF:    STA $0A54                   ; $13:EADF: 8D 54 0A    ;
CODE_13EAE2:    STA $0A55                   ; $13:EAE2: 8D 55 0A    ;
CODE_13EAE5:    STA $0A56                   ; $13:EAE5: 8D 56 0A    ;
CODE_13EAE8:    STA $0A57                   ; $13:EAE8: 8D 57 0A    ;
CODE_13EAEB:    STA $0A58                   ; $13:EAEB: 8D 58 0A    ;
CODE_13EAEE:    STA $0A59                   ; $13:EAEE: 8D 59 0A    ;
CODE_13EAF1:    STA $0A5A                   ; $13:EAF1: 8D 5A 0A    ;
CODE_13EAF4:    STA $0A5B                   ; $13:EAF4: 8D 5B 0A    ;
CODE_13EAF7:    LDA #$01                    ; $13:EAF7: A9 01       ;
CODE_13EAF9:    STA $37                     ; $13:EAF9: 85 37       ;
CODE_13EAFB:    LDA #$C0                    ; $13:EAFB: A9 C0       ;
CODE_13EAFD:    STA $25                     ; $13:EAFD: 85 25       ;
CODE_13EAFF:    LDA #$D0                    ; $13:EAFF: A9 D0       ;
CODE_13EB01:    STA $26                     ; $13:EB01: 85 26       ;
CODE_13EB03:    LDY #$E8                    ; $13:EB03: A0 E8       ;
CODE_13EB05:    LDA $2B                     ; $13:EB05: A5 2B       ;
CODE_13EB07:    CMP #$1D                    ; $13:EB07: C9 1D       ;
CODE_13EB09:    BNE CODE_13EB0D             ; $13:EB09: D0 02       ;
CODE_13EB0B:    LDY #$E0                    ; $13:EB0B: A0 E0       ;
CODE_13EB0D:    STY $27                     ; $13:EB0D: 84 27       ;
CODE_13EB0F:    LDA $38                     ; $13:EB0F: A5 38       ;
CODE_13EB11:    BEQ CODE_13EB16             ; $13:EB11: F0 03       ;
CODE_13EB13:    JMP CODE_13EBC8             ; $13:EB13: 4C C8 EB    ;

CODE_13EB16:    LDA $2E                     ; $13:EB16: A5 2E       ;
CODE_13EB18:    AND #$01                    ; $13:EB18: 29 01       ;
CODE_13EB1A:    BNE CODE_13EB1F             ; $13:EB1A: D0 03       ;
CODE_13EB1C:    JMP CODE_13EBC8             ; $13:EB1C: 4C C8 EB    ;

CODE_13EB1F:    LDA $0901                   ; $13:EB1F: AD 01 09    ;
CODE_13EB22:    CMP #$F0                    ; $13:EB22: C9 F0       ;
CODE_13EB24:    BNE CODE_13EB2D             ; $13:EB24: D0 07       ;
CODE_13EB26:    LDA $0841                   ; $13:EB26: AD 41 08    ;
CODE_13EB29:    CMP #$F0                    ; $13:EB29: C9 F0       ;
CODE_13EB2B:    BEQ CODE_13EB4A             ; $13:EB2B: F0 1D       ;
CODE_13EB2D:    LDA $1F                     ; $13:EB2D: A5 1F       ;
CODE_13EB2F:    SEC                         ; $13:EB2F: 38          ;
CODE_13EB30:    SBC #$01                    ; $13:EB30: E9 01       ;
CODE_13EB32:    BNE CODE_13EB36             ; $13:EB32: D0 02       ;
CODE_13EB34:    LDA #$F0                    ; $13:EB34: A9 F0       ;
CODE_13EB36:    STA $1F                     ; $13:EB36: 85 1F       ;
CODE_13EB38:    STA $0841                   ; $13:EB38: 8D 41 08    ;
CODE_13EB3B:    STA $0845                   ; $13:EB3B: 8D 45 08    ;
CODE_13EB3E:    STA $0901                   ; $13:EB3E: 8D 01 09    ;
CODE_13EB41:    STA $0905                   ; $13:EB41: 8D 05 09    ;
CODE_13EB44:    STA $0909                   ; $13:EB44: 8D 09 09    ;
CODE_13EB47:    STA $090D                   ; $13:EB47: 8D 0D 09    ;
CODE_13EB4A:    LDA $0901                   ; $13:EB4A: AD 01 09    ;
CODE_13EB4D:    CMP #$F0                    ; $13:EB4D: C9 F0       ;
CODE_13EB4F:    BNE CODE_13EB58             ; $13:EB4F: D0 07       ;
CODE_13EB51:    LDA $0849                   ; $13:EB51: AD 49 08    ;
CODE_13EB54:    CMP #$F0                    ; $13:EB54: C9 F0       ;
CODE_13EB56:    BEQ CODE_13EB84             ; $13:EB56: F0 2C       ;
CODE_13EB58:    DEC $20                     ; $13:EB58: C6 20       ;
CODE_13EB5A:    CMP #$F9                    ; $13:EB5A: C9 F9       ;
CODE_13EB5C:    BNE CODE_13EB64             ; $13:EB5C: D0 06       ;
CODE_13EB5E:    LDA $20                     ; $13:EB5E: A5 20       ;
CODE_13EB60:    CMP #$C0                    ; $13:EB60: C9 C0       ;
CODE_13EB62:    BNE CODE_13EB84             ; $13:EB62: D0 20       ;
CODE_13EB64:    LDA $20                     ; $13:EB64: A5 20       ;
CODE_13EB66:    BNE CODE_13EB72             ; $13:EB66: D0 0A       ;
CODE_13EB68:    LDA $2B                     ; $13:EB68: A5 2B       ;
CODE_13EB6A:    CMP #$FF                    ; $13:EB6A: C9 FF       ;
CODE_13EB6C:    BNE CODE_13EB70             ; $13:EB6C: D0 02       ;
CODE_13EB6E:    INC $29                     ; $13:EB6E: E6 29       ;
CODE_13EB70:    LDA #$F0                    ; $13:EB70: A9 F0       ;
CODE_13EB72:    STA $0849                   ; $13:EB72: 8D 49 08    ;
CODE_13EB75:    STA $084D                   ; $13:EB75: 8D 4D 08    ;
CODE_13EB78:    STA $0911                   ; $13:EB78: 8D 11 09    ;
CODE_13EB7B:    STA $0915                   ; $13:EB7B: 8D 15 09    ;
CODE_13EB7E:    STA $0919                   ; $13:EB7E: 8D 19 09    ;
CODE_13EB81:    STA $091D                   ; $13:EB81: 8D 1D 09    ;
CODE_13EB84:    LDA $0851                   ; $13:EB84: AD 51 08    ;
CODE_13EB87:    CMP #$F0                    ; $13:EB87: C9 F0       ;
CODE_13EB89:    BEQ CODE_13EBC8             ; $13:EB89: F0 3D       ;
CODE_13EB8B:    DEC $21                     ; $13:EB8B: C6 21       ;
CODE_13EB8D:    CMP #$F9                    ; $13:EB8D: C9 F9       ;
CODE_13EB8F:    BNE CODE_13EB9E             ; $13:EB8F: D0 0D       ;
CODE_13EB91:    LDA $21                     ; $13:EB91: A5 21       ;
CODE_13EB93:    CMP #$C0                    ; $13:EB93: C9 C0       ;
CODE_13EB95:    BNE CODE_13EBC8             ; $13:EB95: D0 31       ;
CODE_13EB97:    LDY $2B                     ; $13:EB97: A4 2B       ;
CODE_13EB99:    LDA $0050,y                 ; $13:EB99: B9 50 00    ;
CODE_13EB9C:    STA $3A                     ; $13:EB9C: 85 3A       ;
CODE_13EB9E:    LDA $21                     ; $13:EB9E: A5 21       ;
CODE_13EBA0:    BNE CODE_13EBB0             ; $13:EBA0: D0 0E       ;
CODE_13EBA2:    STZ $35                     ; $13:EBA2: 64 35       ;
CODE_13EBA4:    LDA $2B                     ; $13:EBA4: A5 2B       ;
CODE_13EBA6:    CMP #$FF                    ; $13:EBA6: C9 FF       ;
CODE_13EBA8:    BNE CODE_13EBAE             ; $13:EBA8: D0 04       ;
CODE_13EBAA:    LDA #$FF                    ; $13:EBAA: A9 FF       ;
CODE_13EBAC:    STA $35                     ; $13:EBAC: 85 35       ;
CODE_13EBAE:    LDA #$F0                    ; $13:EBAE: A9 F0       ;
CODE_13EBB0:    STA $0851                   ; $13:EBB0: 8D 51 08    ;
CODE_13EBB3:    STA $0855                   ; $13:EBB3: 8D 55 08    ;
CODE_13EBB6:    STA $0859                   ; $13:EBB6: 8D 59 08    ;
CODE_13EBB9:    STA $085D                   ; $13:EBB9: 8D 5D 08    ;
CODE_13EBBC:    STA $0861                   ; $13:EBBC: 8D 61 08    ;
CODE_13EBBF:    STA $0865                   ; $13:EBBF: 8D 65 08    ;
CODE_13EBC2:    STA $0869                   ; $13:EBC2: 8D 69 08    ;
CODE_13EBC5:    STA $086D                   ; $13:EBC5: 8D 6D 08    ;
CODE_13EBC8:    LDA $2E                     ; $13:EBC8: A5 2E       ;
CODE_13EBCA:    AND #$01                    ; $13:EBCA: 29 01       ;
CODE_13EBCC:    BNE CODE_13EBD1             ; $13:EBCC: D0 03       ;
CODE_13EBCE:    JMP CODE_13EC4E             ; $13:EBCE: 4C 4E EC    ;

CODE_13EBD1:    LDA $0881                   ; $13:EBD1: AD 81 08    ;
CODE_13EBD4:    CMP #$F0                    ; $13:EBD4: C9 F0       ;
CODE_13EBD6:    BEQ CODE_13EBE9             ; $13:EBD6: F0 11       ;
CODE_13EBD8:    LDA $22                     ; $13:EBD8: A5 22       ;
CODE_13EBDA:    SEC                         ; $13:EBDA: 38          ;
CODE_13EBDB:    SBC #$01                    ; $13:EBDB: E9 01       ;
CODE_13EBDD:    BNE CODE_13EBE1             ; $13:EBDD: D0 02       ;
CODE_13EBDF:    LDA #$F0                    ; $13:EBDF: A9 F0       ;
CODE_13EBE1:    STA $22                     ; $13:EBE1: 85 22       ;
CODE_13EBE3:    STA $0881                   ; $13:EBE3: 8D 81 08    ;
CODE_13EBE6:    STA $0885                   ; $13:EBE6: 8D 85 08    ;
CODE_13EBE9:    LDA $0889                   ; $13:EBE9: AD 89 08    ;
CODE_13EBEC:    CMP #$F0                    ; $13:EBEC: C9 F0       ;
CODE_13EBEE:    BEQ CODE_13EC08             ; $13:EBEE: F0 18       ;
CODE_13EBF0:    DEC $23                     ; $13:EBF0: C6 23       ;
CODE_13EBF2:    CMP #$F9                    ; $13:EBF2: C9 F9       ;
CODE_13EBF4:    BNE CODE_13EBFC             ; $13:EBF4: D0 06       ;
CODE_13EBF6:    LDA $23                     ; $13:EBF6: A5 23       ;
CODE_13EBF8:    CMP #$C0                    ; $13:EBF8: C9 C0       ;
CODE_13EBFA:    BNE CODE_13EC08             ; $13:EBFA: D0 0C       ;
CODE_13EBFC:    LDA $23                     ; $13:EBFC: A5 23       ;
CODE_13EBFE:    BNE CODE_13EC02             ; $13:EBFE: D0 02       ;
CODE_13EC00:    LDA #$F0                    ; $13:EC00: A9 F0       ;
CODE_13EC02:    STA $0889                   ; $13:EC02: 8D 89 08    ;
CODE_13EC05:    STA $088D                   ; $13:EC05: 8D 8D 08    ;
CODE_13EC08:    LDA $0891                   ; $13:EC08: AD 91 08    ;
CODE_13EC0B:    CMP #$F0                    ; $13:EC0B: C9 F0       ;
CODE_13EC0D:    BEQ CODE_13EC4E             ; $13:EC0D: F0 3F       ;
CODE_13EC0F:    DEC $24                     ; $13:EC0F: C6 24       ;
CODE_13EC11:    CMP #$F9                    ; $13:EC11: C9 F9       ;
CODE_13EC13:    BNE CODE_13EC22             ; $13:EC13: D0 0D       ;
CODE_13EC15:    LDA $24                     ; $13:EC15: A5 24       ;
CODE_13EC17:    CMP #$C0                    ; $13:EC17: C9 C0       ;
CODE_13EC19:    BNE CODE_13EC4E             ; $13:EC19: D0 33       ;
CODE_13EC1B:    LDY $2B                     ; $13:EC1B: A4 2B       ;
CODE_13EC1D:    LDA $0050,y                 ; $13:EC1D: B9 50 00    ;
CODE_13EC20:    STA $3B                     ; $13:EC20: 85 3B       ;
CODE_13EC22:    LDA $24                     ; $13:EC22: A5 24       ;
CODE_13EC24:    BNE CODE_13EC36             ; $13:EC24: D0 10       ;
CODE_13EC26:    LDA #$00                    ; $13:EC26: A9 00       ;
CODE_13EC28:    STA $36                     ; $13:EC28: 85 36       ;
CODE_13EC2A:    LDA $2B                     ; $13:EC2A: A5 2B       ;
CODE_13EC2C:    CMP #$FF                    ; $13:EC2C: C9 FF       ;
CODE_13EC2E:    BNE CODE_13EC34             ; $13:EC2E: D0 04       ;
CODE_13EC30:    LDA #$FF                    ; $13:EC30: A9 FF       ;
CODE_13EC32:    STA $36                     ; $13:EC32: 85 36       ;
CODE_13EC34:    LDA #$F0                    ; $13:EC34: A9 F0       ;
CODE_13EC36:    STA $0891                   ; $13:EC36: 8D 91 08    ;
CODE_13EC39:    STA $0895                   ; $13:EC39: 8D 95 08    ;
CODE_13EC3C:    STA $0899                   ; $13:EC3C: 8D 99 08    ;
CODE_13EC3F:    STA $089D                   ; $13:EC3F: 8D 9D 08    ;
CODE_13EC42:    STA $08A1                   ; $13:EC42: 8D A1 08    ;
CODE_13EC45:    STA $08A5                   ; $13:EC45: 8D A5 08    ;
CODE_13EC48:    STA $08A9                   ; $13:EC48: 8D A9 08    ;
CODE_13EC4B:    STA $08AD                   ; $13:EC4B: 8D AD 08    ;
CODE_13EC4E:    LDA $2E                     ; $13:EC4E: A5 2E       ;
CODE_13EC50:    AND #$01                    ; $13:EC50: 29 01       ;
CODE_13EC52:    BNE CODE_13EC57             ; $13:EC52: D0 03       ;
CODE_13EC54:    JMP CODE_13ED3F             ; $13:EC54: 4C 3F ED    ;

CODE_13EC57:    LDA $08C1                   ; $13:EC57: AD C1 08    ;
CODE_13EC5A:    CMP #$F0                    ; $13:EC5A: C9 F0       ;
CODE_13EC5C:    BEQ CODE_13EC6F             ; $13:EC5C: F0 11       ;
CODE_13EC5E:    LDA $25                     ; $13:EC5E: A5 25       ;
CODE_13EC60:    SEC                         ; $13:EC60: 38          ;
CODE_13EC61:    SBC #$01                    ; $13:EC61: E9 01       ;
CODE_13EC63:    BNE CODE_13EC67             ; $13:EC63: D0 02       ;
CODE_13EC65:    LDA #$F0                    ; $13:EC65: A9 F0       ;
CODE_13EC67:    STA $25                     ; $13:EC67: 85 25       ;
CODE_13EC69:    STA $08C1                   ; $13:EC69: 8D C1 08    ;
CODE_13EC6C:    STA $08C5                   ; $13:EC6C: 8D C5 08    ;
CODE_13EC6F:    LDA $08C9                   ; $13:EC6F: AD C9 08    ;
CODE_13EC72:    CMP #$F0                    ; $13:EC72: C9 F0       ;
CODE_13EC74:    BEQ CODE_13EC8E             ; $13:EC74: F0 18       ;
CODE_13EC76:    DEC $26                     ; $13:EC76: C6 26       ;
CODE_13EC78:    CMP #$F9                    ; $13:EC78: C9 F9       ;
CODE_13EC7A:    BNE CODE_13EC82             ; $13:EC7A: D0 06       ;
CODE_13EC7C:    LDA $26                     ; $13:EC7C: A5 26       ;
CODE_13EC7E:    CMP #$C0                    ; $13:EC7E: C9 C0       ;
CODE_13EC80:    BNE CODE_13EC8E             ; $13:EC80: D0 0C       ;
CODE_13EC82:    LDA $26                     ; $13:EC82: A5 26       ;
CODE_13EC84:    BNE CODE_13EC88             ; $13:EC84: D0 02       ;
CODE_13EC86:    LDA #$F0                    ; $13:EC86: A9 F0       ;
CODE_13EC88:    STA $08C9                   ; $13:EC88: 8D C9 08    ;
CODE_13EC8B:    STA $08CD                   ; $13:EC8B: 8D CD 08    ;
CODE_13EC8E:    LDA $08D1                   ; $13:EC8E: AD D1 08    ;
CODE_13EC91:    CMP #$F0                    ; $13:EC91: C9 F0       ;
CODE_13EC93:    BEQ CODE_13EC54             ; $13:EC93: F0 BF       ;
CODE_13EC95:    DEC $27                     ; $13:EC95: C6 27       ;
CODE_13EC97:    CMP #$F9                    ; $13:EC97: C9 F9       ;
CODE_13EC99:    BNE CODE_13ECAB             ; $13:EC99: D0 10       ;
CODE_13EC9B:    LDA $27                     ; $13:EC9B: A5 27       ;
CODE_13EC9D:    CMP #$C0                    ; $13:EC9D: C9 C0       ;
CODE_13EC9F:    BEQ CODE_13ECA4             ; $13:EC9F: F0 03       ;
CODE_13ECA1:    BRL CODE_13ED3F             ; $13:ECA1: 82 9B 00    ;

CODE_13ECA4:    LDY $2B                     ; $13:ECA4: A4 2B       ;
CODE_13ECA6:    LDA $0050,y                 ; $13:ECA6: B9 50 00    ;
CODE_13ECA9:    STA $39                     ; $13:ECA9: 85 39       ;
CODE_13ECAB:    LDA $2B                     ; $13:ECAB: A5 2B       ;
CODE_13ECAD:    CMP #$1D                    ; $13:ECAD: C9 1D       ;
CODE_13ECAF:    BNE CODE_13ECC3             ; $13:ECAF: D0 12       ;
CODE_13ECB1:    LDA #$02                    ; $13:ECB1: A9 02       ;
CODE_13ECB3:    STA $0A54                   ; $13:ECB3: 8D 54 0A    ;
CODE_13ECB6:    STA $0A55                   ; $13:ECB6: 8D 55 0A    ;
CODE_13ECB9:    LDA $27                     ; $13:ECB9: A5 27       ;
CODE_13ECBB:    CMP #$A8                    ; $13:ECBB: C9 A8       ;
CODE_13ECBD:    BNE CODE_13ECC3             ; $13:ECBD: D0 04       ;
CODE_13ECBF:    LDA #$01                    ; $13:ECBF: A9 01       ;
CODE_13ECC1:    STA $3F                     ; $13:ECC1: 85 3F       ;
CODE_13ECC3:    LDA $27                     ; $13:ECC3: A5 27       ;
CODE_13ECC5:    BNE CODE_13ECD5             ; $13:ECC5: D0 0E       ;
CODE_13ECC7:    STZ $37                     ; $13:ECC7: 64 37       ;
CODE_13ECC9:    LDA $2B                     ; $13:ECC9: A5 2B       ;
CODE_13ECCB:    CMP #$FF                    ; $13:ECCB: C9 FF       ;
CODE_13ECCD:    BNE CODE_13ECD3             ; $13:ECCD: D0 04       ;
CODE_13ECCF:    LDA #$FF                    ; $13:ECCF: A9 FF       ;
CODE_13ECD1:    STA $37                     ; $13:ECD1: 85 37       ;
CODE_13ECD3:    LDA #$F0                    ; $13:ECD3: A9 F0       ;
CODE_13ECD5:    STA $08D1                   ; $13:ECD5: 8D D1 08    ;
CODE_13ECD8:    STA $08D5                   ; $13:ECD8: 8D D5 08    ;
CODE_13ECDB:    STA $08D9                   ; $13:ECDB: 8D D9 08    ;
CODE_13ECDE:    STA $08DD                   ; $13:ECDE: 8D DD 08    ;
CODE_13ECE1:    STA $08E1                   ; $13:ECE1: 8D E1 08    ;
CODE_13ECE4:    STA $08E5                   ; $13:ECE4: 8D E5 08    ;
CODE_13ECE7:    STA $08E9                   ; $13:ECE7: 8D E9 08    ;
CODE_13ECEA:    STA $08ED                   ; $13:ECEA: 8D ED 08    ;
CODE_13ECED:    LDA $3F                     ; $13:ECED: A5 3F       ;
CODE_13ECEF:    BEQ CODE_13ED3F             ; $13:ECEF: F0 4E       ;
CODE_13ECF1:    LDX #$1F                    ; $13:ECF1: A2 1F       ;
CODE_13ECF3:    LDA.l DATA_14CB4A,x                 ; $13:ECF3: BF 4A CB 14 ;
CODE_13ECF7:    STA $0900,x                 ; $13:ECF7: 9D 00 09    ;
CODE_13ECFA:    DEX                         ; $13:ECFA: CA          ;
CODE_13ECFB:    BPL CODE_13ECF3             ; $13:ECFB: 10 F6       ;
CODE_13ECFD:    LDA #$E9                    ; $13:ECFD: A9 E9       ;
CODE_13ECFF:    STA $0842                   ; $13:ECFF: 8D 42 08    ;
CODE_13ED02:    STA $0846                   ; $13:ED02: 8D 46 08    ;
CODE_13ED05:    STA $084A                   ; $13:ED05: 8D 4A 08    ;
CODE_13ED08:    STA $084E                   ; $13:ED08: 8D 4E 08    ;
CODE_13ED0B:    LDA #$24                    ; $13:ED0B: A9 24       ;
CODE_13ED0D:    STA $0843                   ; $13:ED0D: 8D 43 08    ;
CODE_13ED10:    STA $0847                   ; $13:ED10: 8D 47 08    ;
CODE_13ED13:    STA $084B                   ; $13:ED13: 8D 4B 08    ;
CODE_13ED16:    STA $084F                   ; $13:ED16: 8D 4F 08    ;
CODE_13ED19:    LDA #$00                    ; $13:ED19: A9 00       ;
CODE_13ED1B:    STA $0A60                   ; $13:ED1B: 8D 60 0A    ;
CODE_13ED1E:    STA $0A61                   ; $13:ED1E: 8D 61 0A    ;
CODE_13ED21:    STA $0A62                   ; $13:ED21: 8D 62 0A    ;
CODE_13ED24:    STA $0A63                   ; $13:ED24: 8D 63 0A    ;
CODE_13ED27:    STA $0A64                   ; $13:ED27: 8D 64 0A    ;
CODE_13ED2A:    STA $0A65                   ; $13:ED2A: 8D 65 0A    ;
CODE_13ED2D:    STA $0A66                   ; $13:ED2D: 8D 66 0A    ;
CODE_13ED30:    STA $0A67                   ; $13:ED30: 8D 67 0A    ;
CODE_13ED33:    LDA #$C0                    ; $13:ED33: A9 C0       ;
CODE_13ED35:    STA $1F                     ; $13:ED35: 85 1F       ;
CODE_13ED37:    STA $20                     ; $13:ED37: 85 20       ;
CODE_13ED39:    STZ $3F                     ; $13:ED39: 64 3F       ;
CODE_13ED3B:    LDA #$FF                    ; $13:ED3B: A9 FF       ;
CODE_13ED3D:    STA $2B                     ; $13:ED3D: 85 2B       ;
CODE_13ED3F:    RTS                         ; $13:ED3F: 60          ;

CODE_13ED40:    LDX #$43                    ; $13:ED40: A2 43       ;
CODE_13ED42:    LDA.l DATA_14CB6A,x                 ; $13:ED42: BF 6A CB 14 ;
CODE_13ED46:    STA $0840,x                 ; $13:ED46: 9D 40 08    ;
CODE_13ED49:    DEX                         ; $13:ED49: CA          ;
CODE_13ED4A:    BPL CODE_13ED42             ; $13:ED4A: 10 F6       ;
CODE_13ED4C:    LDA #$02                    ; $13:ED4C: A9 02       ;
CODE_13ED4E:    STA $0A30                   ; $13:ED4E: 8D 30 0A    ;
CODE_13ED51:    STA $0A31                   ; $13:ED51: 8D 31 0A    ;
CODE_13ED54:    STA $0A32                   ; $13:ED54: 8D 32 0A    ;
CODE_13ED57:    STA $0A33                   ; $13:ED57: 8D 33 0A    ;
CODE_13ED5A:    STA $0A34                   ; $13:ED5A: 8D 34 0A    ;
CODE_13ED5D:    STA $0A35                   ; $13:ED5D: 8D 35 0A    ;
CODE_13ED60:    STA $0A36                   ; $13:ED60: 8D 36 0A    ;
CODE_13ED63:    STA $0A37                   ; $13:ED63: 8D 37 0A    ;
CODE_13ED66:    STA $0A38                   ; $13:ED66: 8D 38 0A    ;
CODE_13ED69:    STZ $0A39                   ; $13:ED69: 9C 39 0A    ;
CODE_13ED6C:    STZ $0A3A                   ; $13:ED6C: 9C 3A 0A    ;
CODE_13ED6F:    STZ $0A3B                   ; $13:ED6F: 9C 3B 0A    ;
CODE_13ED72:    STZ $0A3C                   ; $13:ED72: 9C 3C 0A    ;
CODE_13ED75:    STZ $0A3D                   ; $13:ED75: 9C 3D 0A    ;
CODE_13ED78:    STZ $0A3E                   ; $13:ED78: 9C 3E 0A    ;
CODE_13ED7B:    STZ $0A3F                   ; $13:ED7B: 9C 3F 0A    ;
CODE_13ED7E:    STZ $0A40                   ; $13:ED7E: 9C 40 0A    ;
CODE_13ED81:    INC $29                     ; $13:ED81: E6 29       ;
CODE_13ED83:    LDA #$D0                    ; $13:ED83: A9 D0       ;
CODE_13ED85:    STA $1F                     ; $13:ED85: 85 1F       ;
CODE_13ED87:    LDA #$E0                    ; $13:ED87: A9 E0       ;
CODE_13ED89:    STA $20                     ; $13:ED89: 85 20       ;
CODE_13ED8B:    LDA #$F0                    ; $13:ED8B: A9 F0       ;
CODE_13ED8D:    STA $21                     ; $13:ED8D: 85 21       ;
CODE_13ED8F:    LDA #$08                    ; $13:ED8F: A9 08       ;
CODE_13ED91:    STA $22                     ; $13:ED91: 85 22       ;
CODE_13ED93:    RTS                         ; $13:ED93: 60          ;

CODE_13ED94:    LDA $2E                     ; $13:ED94: A5 2E       ;
CODE_13ED96:    AND #$01                    ; $13:ED96: 29 01       ;
CODE_13ED98:    BNE CODE_13ED9D             ; $13:ED98: D0 03       ;
CODE_13ED9A:    JMP CODE_13EE38             ; $13:ED9A: 4C 38 EE    ;

CODE_13ED9D:    LDA $0841                   ; $13:ED9D: AD 41 08    ;
CODE_13EDA0:    CMP #$F0                    ; $13:EDA0: C9 F0       ;
CODE_13EDA2:    BEQ CODE_13EDBD             ; $13:EDA2: F0 19       ;
CODE_13EDA4:    LDA $1F                     ; $13:EDA4: A5 1F       ;
CODE_13EDA6:    SEC                         ; $13:EDA6: 38          ;
CODE_13EDA7:    SBC #$01                    ; $13:EDA7: E9 01       ;
CODE_13EDA9:    CMP #$40                    ; $13:EDA9: C9 40       ;
CODE_13EDAB:    BNE CODE_13EDB2             ; $13:EDAB: D0 05       ;
CODE_13EDAD:    INC $29                     ; $13:EDAD: E6 29       ;
CODE_13EDAF:    JMP CODE_13EE38             ; $13:EDAF: 4C 38 EE    ;

CODE_13EDB2:    STA $1F                     ; $13:EDB2: 85 1F       ;
CODE_13EDB4:    STA $0841                   ; $13:EDB4: 8D 41 08    ;
CODE_13EDB7:    STA $0845                   ; $13:EDB7: 8D 45 08    ;
CODE_13EDBA:    STA $0849                   ; $13:EDBA: 8D 49 08    ;
CODE_13EDBD:    LDA $084D                   ; $13:EDBD: AD 4D 08    ;
CODE_13EDC0:    CMP #$F0                    ; $13:EDC0: C9 F0       ;
CODE_13EDC2:    BEQ CODE_13EDE1             ; $13:EDC2: F0 1D       ;
CODE_13EDC4:    DEC $20                     ; $13:EDC4: C6 20       ;
CODE_13EDC6:    CMP #$F9                    ; $13:EDC6: C9 F9       ;
CODE_13EDC8:    BNE CODE_13EDD0             ; $13:EDC8: D0 06       ;
CODE_13EDCA:    LDA $20                     ; $13:EDCA: A5 20       ;
CODE_13EDCC:    CMP #$C0                    ; $13:EDCC: C9 C0       ;
CODE_13EDCE:    BNE CODE_13EDE1             ; $13:EDCE: D0 11       ;
CODE_13EDD0:    LDA $20                     ; $13:EDD0: A5 20       ;
CODE_13EDD2:    CMP #$10                    ; $13:EDD2: C9 10       ;
CODE_13EDD4:    BNE CODE_13EDD8             ; $13:EDD4: D0 02       ;
CODE_13EDD6:    LDA #$F0                    ; $13:EDD6: A9 F0       ;
CODE_13EDD8:    STA $084D                   ; $13:EDD8: 8D 4D 08    ;
CODE_13EDDB:    STA $0851                   ; $13:EDDB: 8D 51 08    ;
CODE_13EDDE:    STA $0855                   ; $13:EDDE: 8D 55 08    ;
CODE_13EDE1:    LDA $0859                   ; $13:EDE1: AD 59 08    ;
CODE_13EDE4:    CMP #$F0                    ; $13:EDE4: C9 F0       ;
CODE_13EDE6:    BEQ CODE_13EE05             ; $13:EDE6: F0 1D       ;
CODE_13EDE8:    DEC $21                     ; $13:EDE8: C6 21       ;
CODE_13EDEA:    CMP #$F9                    ; $13:EDEA: C9 F9       ;
CODE_13EDEC:    BNE CODE_13EDF4             ; $13:EDEC: D0 06       ;
CODE_13EDEE:    LDA $21                     ; $13:EDEE: A5 21       ;
CODE_13EDF0:    CMP #$C0                    ; $13:EDF0: C9 C0       ;
CODE_13EDF2:    BNE CODE_13EE05             ; $13:EDF2: D0 11       ;
CODE_13EDF4:    LDA $21                     ; $13:EDF4: A5 21       ;
CODE_13EDF6:    CMP #$10                    ; $13:EDF6: C9 10       ;
CODE_13EDF8:    BNE CODE_13EDFC             ; $13:EDF8: D0 02       ;
CODE_13EDFA:    LDA #$F0                    ; $13:EDFA: A9 F0       ;
CODE_13EDFC:    STA $0859                   ; $13:EDFC: 8D 59 08    ;
CODE_13EDFF:    STA $085D                   ; $13:EDFF: 8D 5D 08    ;
CODE_13EE02:    STA $0861                   ; $13:EE02: 8D 61 08    ;
CODE_13EE05:    LDA $0865                   ; $13:EE05: AD 65 08    ;
CODE_13EE08:    CMP #$F0                    ; $13:EE08: C9 F0       ;
CODE_13EE0A:    BEQ CODE_13EE38             ; $13:EE0A: F0 2C       ;
CODE_13EE0C:    DEC $22                     ; $13:EE0C: C6 22       ;
CODE_13EE0E:    CMP #$F9                    ; $13:EE0E: C9 F9       ;
CODE_13EE10:    BNE CODE_13EE18             ; $13:EE10: D0 06       ;
CODE_13EE12:    LDA $22                     ; $13:EE12: A5 22       ;
CODE_13EE14:    CMP #$C0                    ; $13:EE14: C9 C0       ;
CODE_13EE16:    BNE CODE_13EE38             ; $13:EE16: D0 20       ;
CODE_13EE18:    LDA $22                     ; $13:EE18: A5 22       ;
CODE_13EE1A:    CMP #$10                    ; $13:EE1A: C9 10       ;
CODE_13EE1C:    BNE CODE_13EE20             ; $13:EE1C: D0 02       ;
CODE_13EE1E:    LDA #$F0                    ; $13:EE1E: A9 F0       ;
CODE_13EE20:    STA $0865                   ; $13:EE20: 8D 65 08    ;
CODE_13EE23:    STA $0869                   ; $13:EE23: 8D 69 08    ;
CODE_13EE26:    STA $086D                   ; $13:EE26: 8D 6D 08    ;
CODE_13EE29:    STA $0871                   ; $13:EE29: 8D 71 08    ;
CODE_13EE2C:    STA $0875                   ; $13:EE2C: 8D 75 08    ;
CODE_13EE2F:    STA $0879                   ; $13:EE2F: 8D 79 08    ;
CODE_13EE32:    STA $087D                   ; $13:EE32: 8D 7D 08    ;
CODE_13EE35:    STA $0881                   ; $13:EE35: 8D 81 08    ;
CODE_13EE38:    STZ $3D                     ; $13:EE38: 64 3D       ;
CODE_13EE3A:    STZ $3C                     ; $13:EE3A: 64 3C       ;
CODE_13EE3C:    LDA #$0C                    ; $13:EE3C: A9 0C       ;
CODE_13EE3E:    STA $3E                     ; $13:EE3E: 85 3E       ;
CODE_13EE40:    RTS                         ; $13:EE40: 60          ;

CODE_13EE41:    DEC $3C                     ; $13:EE41: C6 3C       ;
CODE_13EE43:    BPL CODE_13EE86             ; $13:EE43: 10 41       ;
CODE_13EE45:    LDA #$08                    ; $13:EE45: A9 08       ;
CODE_13EE47:    STA $3C                     ; $13:EE47: 85 3C       ;
CODE_13EE49:    DEC $3E                     ; $13:EE49: C6 3E       ;
CODE_13EE4B:    BPL CODE_13EE58             ; $13:EE4B: 10 0B       ;
CODE_13EE4D:    INC $29                     ; $13:EE4D: E6 29       ;
CODE_13EE4F:    LDA #$00                    ; $13:EE4F: A9 00       ;
CODE_13EE51:    STA $28                     ; $13:EE51: 85 28       ;
CODE_13EE53:    STA $2A                     ; $13:EE53: 85 2A       ;
CODE_13EE55:    JMP CODE_13EE86             ; $13:EE55: 4C 86 EE    ;

CODE_13EE58:    LDY #$00                    ; $13:EE58: A0 00       ;
CODE_13EE5A:    TYX                         ; $13:EE5A: BB          ;
CODE_13EE5B:    INC $3D                     ; $13:EE5B: E6 3D       ;
CODE_13EE5D:    LDA $3D                     ; $13:EE5D: A5 3D       ;
CODE_13EE5F:    AND #$01                    ; $13:EE5F: 29 01       ;
CODE_13EE61:    BNE CODE_13EE76             ; $13:EE61: D0 13       ;
CODE_13EE63:    LDA.l DATA_14C574,x                 ; $13:EE63: BF 74 C5 14 ;
CODE_13EE67:    STA $0842,y                 ; $13:EE67: 99 42 08    ;
CODE_13EE6A:    INY                         ; $13:EE6A: C8          ;
CODE_13EE6B:    INY                         ; $13:EE6B: C8          ;
CODE_13EE6C:    INY                         ; $13:EE6C: C8          ;
CODE_13EE6D:    INY                         ; $13:EE6D: C8          ;
CODE_13EE6E:    INX                         ; $13:EE6E: E8          ;
CODE_13EE6F:    CPX #$06                    ; $13:EE6F: E0 06       ;
CODE_13EE71:    BNE CODE_13EE63             ; $13:EE71: D0 F0       ;
CODE_13EE73:    JMP CODE_13EE86             ; $13:EE73: 4C 86 EE    ;

CODE_13EE76:    LDA.l DATA_14C57A,x                 ; $13:EE76: BF 7A C5 14 ;
CODE_13EE7A:    STA $0842,y                 ; $13:EE7A: 99 42 08    ;
CODE_13EE7D:    INY                         ; $13:EE7D: C8          ;
CODE_13EE7E:    INY                         ; $13:EE7E: C8          ;
CODE_13EE7F:    INY                         ; $13:EE7F: C8          ;
CODE_13EE80:    INY                         ; $13:EE80: C8          ;
CODE_13EE81:    INX                         ; $13:EE81: E8          ;
CODE_13EE82:    CPX #$06                    ; $13:EE82: E0 06       ;
CODE_13EE84:    BNE CODE_13EE76             ; $13:EE84: D0 F0       ;
CODE_13EE86:    RTS                         ; $13:EE86: 60          ;

DATA_13EE87:        db $80,$7E,$A0,$7D,$40,$6D,$E0,$58
                    db $80,$44

CODE_13EE91:    DEC $28                     ; $13:EE91: C6 28       ;
CODE_13EE93:    BPL CODE_13EEBB             ; $13:EE93: 10 26       ;
CODE_13EE95:    LDA #$02                    ; $13:EE95: A9 02       ;
CODE_13EE97:    STA $28                     ; $13:EE97: 85 28       ;
CODE_13EE99:    INC $2A                     ; $13:EE99: E6 2A       ;
CODE_13EE9B:    LDA $2A                     ; $13:EE9B: A5 2A       ;
CODE_13EE9D:    ASL A                       ; $13:EE9D: 0A          ;
CODE_13EE9E:    TAX                         ; $13:EE9E: AA          ;
CODE_13EE9F:    REP #$20                    ; $13:EE9F: C2 20       ;
CODE_13EEA1:    LDA.l DATA_13EE87,x                 ; $13:EEA1: BF 87 EE 13 ;
CODE_13EEA5:    STA $0C42                   ; $13:EEA5: 8D 42 0C    ;
CODE_13EEA8:    SEP #$20                    ; $13:EEA8: E2 20       ;
CODE_13EEAA:    LDA #$01                    ; $13:EEAA: A9 01       ;
CODE_13EEAC:    STA $02A9                   ; $13:EEAC: 8D A9 02    ;
CODE_13EEAF:    LDA $2A                     ; $13:EEAF: A5 2A       ;
CODE_13EEB1:    CMP #$04                    ; $13:EEB1: C9 04       ;
CODE_13EEB3:    BNE CODE_13EEBB             ; $13:EEB3: D0 06       ;
CODE_13EEB5:    INC $29                     ; $13:EEB5: E6 29       ;
CODE_13EEB7:    LDA #$02                    ; $13:EEB7: A9 02       ;
CODE_13EEB9:    STA $28                     ; $13:EEB9: 85 28       ;
CODE_13EEBB:    RTS                         ; $13:EEBB: 60          ;

CODE_13EEBC:    DEC $28                     ; $13:EEBC: C6 28       ;
CODE_13EEBE:    BPL CODE_13EED6             ; $13:EEBE: 10 16       ;
CODE_13EEC0:    LDX #$16                    ; $13:EEC0: A2 16       ;
CODE_13EEC2:    LDY #$00                    ; $13:EEC2: A0 00       ;
CODE_13EEC4:    LDA #$F0                    ; $13:EEC4: A9 F0       ;
CODE_13EEC6:    STA $0841,y                 ; $13:EEC6: 99 41 08    ;
CODE_13EEC9:    INY                         ; $13:EEC9: C8          ;
CODE_13EECA:    INY                         ; $13:EECA: C8          ;
CODE_13EECB:    INY                         ; $13:EECB: C8          ;
CODE_13EECC:    INY                         ; $13:EECC: C8          ;
CODE_13EECD:    DEX                         ; $13:EECD: CA          ;
CODE_13EECE:    BPL CODE_13EEC6             ; $13:EECE: 10 F6       ;
CODE_13EED0:    LDA #$30                    ; $13:EED0: A9 30       ;
CODE_13EED2:    STA $28                     ; $13:EED2: 85 28       ;
CODE_13EED4:    INC $29                     ; $13:EED4: E6 29       ;
CODE_13EED6:    RTS                         ; $13:EED6: 60          ;

CODE_13EED7:    DEC $28                     ; $13:EED7: C6 28       ;
CODE_13EED9:    BPL CODE_13EEEC             ; $13:EED9: 10 11       ;
CODE_13EEDB:    STZ $19                     ; $13:EEDB: 64 19       ;
CODE_13EEDD:    STZ $1A                     ; $13:EEDD: 64 1A       ;
CODE_13EEDF:    STZ $1B                     ; $13:EEDF: 64 1B       ;
CODE_13EEE1:    LDA #$05                    ; $13:EEE1: A9 05       ;
CODE_13EEE3:    STA $0210                   ; $13:EEE3: 8D 10 02    ;
CODE_13EEE6:    LDA #$14                    ; $13:EEE6: A9 14       ;
CODE_13EEE8:    STA $1D                     ; $13:EEE8: 85 1D       ;
CODE_13EEEA:    INC $29                     ; $13:EEEA: E6 29       ;
CODE_13EEEC:    RTS                         ; $13:EEEC: 60          ;

CODE_13EEED:    LDA $1B                     ; $13:EEED: A5 1B       ;
CODE_13EEEF:    CMP #$2A                    ; $13:EEEF: C9 2A       ;
CODE_13EEF1:    BEQ CODE_13EEEC             ; $13:EEF1: F0 F9       ;
CODE_13EEF3:    DEC $0210                   ; $13:EEF3: CE 10 02    ;
CODE_13EEF6:    BPL CODE_13EEEC             ; $13:EEF6: 10 F4       ;
CODE_13EEF8:    LDA #$05                    ; $13:EEF8: A9 05       ;
CODE_13EEFA:    STA $0210                   ; $13:EEFA: 8D 10 02    ;
CODE_13EEFD:    INC $1B                     ; $13:EEFD: E6 1B       ;
CODE_13EEFF:    LDX $1B                     ; $13:EEFF: A6 1B       ;
CODE_13EF01:    LDA.l DATA_14CBAE,x                 ; $13:EF01: BF AE CB 14 ;
CODE_13EF05:    STA $0713                   ; $13:EF05: 8D 13 07    ;
CODE_13EF08:    LDA.l DATA_14CBAD,x                 ; $13:EF08: BF AD CB 14 ;
CODE_13EF0C:    TAX                         ; $13:EF0C: AA          ;
CODE_13EF0D:    LDA.l DATA_14CBDC,x                 ; $13:EF0D: BF DC CB 14 ;
CODE_13EF11:    TAY                         ; $13:EF11: A8          ;
CODE_13EF12:    LDA.l DATA_14CBD9,x                 ; $13:EF12: BF D9 CB 14 ;
CODE_13EF16:    STA $0800,y                 ; $13:EF16: 99 00 08    ;
CODE_13EF19:    LDA.l DATA_14CBDA,x                 ; $13:EF19: BF DA CB 14 ;
CODE_13EF1D:    STA $0801,y                 ; $13:EF1D: 99 01 08    ;
CODE_13EF20:    LDA.l DATA_14CBDB,x                 ; $13:EF20: BF DB CB 14 ;
CODE_13EF24:    STA $0802,y                 ; $13:EF24: 99 02 08    ;
CODE_13EF27:    LDA #$21                    ; $13:EF27: A9 21       ;
CODE_13EF29:    STA $0803,y                 ; $13:EF29: 99 03 08    ;
CODE_13EF2C:    TYA                         ; $13:EF2C: 98          ;
CODE_13EF2D:    LSR A                       ; $13:EF2D: 4A          ;
CODE_13EF2E:    LSR A                       ; $13:EF2E: 4A          ;
CODE_13EF2F:    TAY                         ; $13:EF2F: A8          ;
CODE_13EF30:    LDA #$00                    ; $13:EF30: A9 00       ;
CODE_13EF32:    STA $0A20,y                 ; $13:EF32: 99 20 0A    ;
CODE_13EF35:    INX                         ; $13:EF35: E8          ;
CODE_13EF36:    INX                         ; $13:EF36: E8          ;
CODE_13EF37:    INX                         ; $13:EF37: E8          ;
CODE_13EF38:    INX                         ; $13:EF38: E8          ;
CODE_13EF39:    CPX $0713                   ; $13:EF39: EC 13 07    ;
CODE_13EF3C:    BNE CODE_13EF0D             ; $13:EF3C: D0 CF       ;
CODE_13EF3E:    RTS                         ; $13:EF3E: 60          ;

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

CODE_13F000:    LDA $02AB               ; $13:F000: AD AB 02    ;
CODE_13F003:    BNE CODE_13F073             ; $13:F003: D0 6E       ;
CODE_13F005:    LDA $02C3                   ; $13:F005: AD C3 02    ;
CODE_13F008:    BEQ CODE_13F017             ; $13:F008: F0 0D       ;
CODE_13F00A:    LDX #$02                    ; $13:F00A: A2 02       ;
CODE_13F00C:    LDA $02B2,x                 ; $13:F00C: BD B2 02    ;
CODE_13F00F:    STA $0257,x                 ; $13:F00F: 9D 57 02    ;
CODE_13F012:    DEX                         ; $13:F012: CA          ;
CODE_13F013:    BPL CODE_13F00C             ; $13:F013: 10 F7       ;
CODE_13F015:    BRA CODE_13F02F             ; $13:F015: 80 18       ;

CODE_13F017:    LDX $0535                   ; $13:F017: AE 35 05    ;
CODE_13F01A:    LDA.l DATA_11CE8E,x                 ; $13:F01A: BF 8E CE 11 ;
CODE_13F01E:    STA $0257                   ; $13:F01E: 8D 57 02    ;
CODE_13F021:    LDA.l DATA_11CE98,x                 ; $13:F021: BF 98 CE 11 ;
CODE_13F025:    STA $0258                   ; $13:F025: 8D 58 02    ;
CODE_13F028:    LDA.l DATA_11CEA2,x                 ; $13:F028: BF A2 CE 11 ;
CODE_13F02C:    STA $0259                   ; $13:F02C: 8D 59 02    ;
CODE_13F02F:    LDA $0535                   ; $13:F02F: AD 35 05    ;
CODE_13F032:    LDY #$01                    ; $13:F032: A0 01       ;
CODE_13F034:    JSR CODE_13F109             ; $13:F034: 20 09 F1    ;
CODE_13F037:    LDA $0533                   ; $13:F037: AD 33 05    ;
CODE_13F03A:    CMP #$08                    ; $13:F03A: C9 08       ;
CODE_13F03C:    BNE CODE_13F04C             ; $13:F03C: D0 0E       ;
CODE_13F03E:    LDA $0534                   ; $13:F03E: AD 34 05    ;
CODE_13F041:    CMP #$08                    ; $13:F041: C9 08       ;
CODE_13F043:    BNE CODE_13F04C             ; $13:F043: D0 07       ;
CODE_13F045:    LDA #$10                    ; $13:F045: A9 10       ;
CODE_13F047:    STA $0208                   ; $13:F047: 8D 08 02    ;
CODE_13F04A:    BRA CODE_13F04F             ; $13:F04A: 80 03       ;

CODE_13F04C:    STZ $0208                   ; $13:F04C: 9C 08 02    ;
CODE_13F04F:    STZ $0209                   ; $13:F04F: 9C 09 02    ;
CODE_13F052:    INC $02AB                   ; $13:F052: EE AB 02    ;
CODE_13F055:    LDA $0535                   ; $13:F055: AD 35 05    ;
CODE_13F058:    STA $0260                   ; $13:F058: 8D 60 02    ;
CODE_13F05B:    LDA #$01                    ; $13:F05B: A9 01       ;
CODE_13F05D:    STA $02AC                   ; $13:F05D: 8D AC 02    ;
CODE_13F060:    LSR A                       ; $13:F060: 4A          ;
CODE_13F061:    STA $06                     ; $13:F061: 85 06       ;
CODE_13F063:    LDA #$FF                    ; $13:F063: A9 FF       ;
CODE_13F065:    STA $0263                   ; $13:F065: 8D 63 02    ;
CODE_13F068:    LDA #$0F                    ; $13:F068: A9 0F       ;
CODE_13F06A:    STA $0262                   ; $13:F06A: 8D 62 02    ;
CODE_13F06D:    JSR CODE_13F07D             ; $13:F06D: 20 7D F0    ;
CODE_13F070:    JSR CODE_13F3B9             ; $13:F070: 20 B9 F3    ;
CODE_13F073:    JSL CODE_13F1BF             ; $13:F073: 22 BF F1 13 ;
CODE_13F077:    LDA $02AC                   ; $13:F077: AD AC 02    ;
CODE_13F07A:    BNE CODE_13F07C             ; $13:F07A: D0 00       ;
CODE_13F07C:    RTL                         ; $13:F07C: 6B          ;

CODE_13F07D:    LDA $02C3                   ; $13:F07D: AD C3 02    ;
CODE_13F080:    BEQ CODE_13F085             ; $13:F080: F0 03       ;
CODE_13F082:    BRL CODE_13F105             ; $13:F082: 82 80 00    ;

CODE_13F085:    LDA $0535                   ; $13:F085: AD 35 05    ;
CODE_13F088:    BNE CODE_13F095             ; $13:F088: D0 0B       ;
CODE_13F08A:    LDA $02C2                   ; $13:F08A: AD C2 02    ;
CODE_13F08D:    BPL CODE_13F092             ; $13:F08D: 10 03       ;
CODE_13F08F:    JMP CODE_13F102             ; $13:F08F: 4C 02 F1    ;

CODE_13F092:    LDA $0535                   ; $13:F092: AD 35 05    ;
CODE_13F095:    CMP $0541                   ; $13:F095: CD 41 05    ;
CODE_13F098:    BNE CODE_13F09F             ; $13:F098: D0 05       ;
CODE_13F09A:    LDA $02C2                   ; $13:F09A: AD C2 02    ;
CODE_13F09D:    BPL CODE_13F102             ; $13:F09D: 10 63       ;
CODE_13F09F:    LDX #$02                    ; $13:F09F: A2 02       ;
CODE_13F0A1:    LDA $02C2                   ; $13:F0A1: AD C2 02    ;
CODE_13F0A4:    BPL CODE_13F0AC             ; $13:F0A4: 10 06       ;
CODE_13F0A6:    LDA #$FF                    ; $13:F0A6: A9 FF       ;
CODE_13F0A8:    STA $0B                     ; $13:F0A8: 85 0B       ;
CODE_13F0AA:    BNE CODE_13F0AE             ; $13:F0AA: D0 02       ;
CODE_13F0AC:    STZ $0B                     ; $13:F0AC: 64 0B       ;
CODE_13F0AE:    LDA $02C2                   ; $13:F0AE: AD C2 02    ;
CODE_13F0B1:    AND #$F0                    ; $13:F0B1: 29 F0       ;
CODE_13F0B3:    CLC                         ; $13:F0B3: 18          ;
CODE_13F0B4:    ADC $0257,x                 ; $13:F0B4: 7D 57 02    ;
CODE_13F0B7:    PHP                         ; $13:F0B7: 08          ;
CODE_13F0B8:    ADC $0B                     ; $13:F0B8: 65 0B       ;
CODE_13F0BA:    PLP                         ; $13:F0BA: 28          ;
CODE_13F0BB:    STA $0C                     ; $13:F0BB: 85 0C       ;
CODE_13F0BD:    LDA $0B                     ; $13:F0BD: A5 0B       ;
CODE_13F0BF:    BNE CODE_13F0D3             ; $13:F0BF: D0 12       ;
CODE_13F0C1:    BCC CODE_13F0E5             ; $13:F0C1: 90 22       ;
CODE_13F0C3:    LDA $0257,x                 ; $13:F0C3: BD 57 02    ;
CODE_13F0C6:    AND #$0F                    ; $13:F0C6: 29 0F       ;
CODE_13F0C8:    CMP #$09                    ; $13:F0C8: C9 09       ;
CODE_13F0CA:    BNE CODE_13F0E5             ; $13:F0CA: D0 19       ;
CODE_13F0CC:    LDA $0C                     ; $13:F0CC: A5 0C       ;
CODE_13F0CE:    AND #$F0                    ; $13:F0CE: 29 F0       ;
CODE_13F0D0:    JMP CODE_13F0E7             ; $13:F0D0: 4C E7 F0    ;

CODE_13F0D3:    BCS CODE_13F0E5                     ; $13:F0D3: B0 10       ;
CODE_13F0D5:    LDA $0257,x                 ; $13:F0D5: BD 57 02    ;
CODE_13F0D8:    AND #$0F                    ; $13:F0D8: 29 0F       ;
CODE_13F0DA:    BNE CODE_13F0E5             ; $13:F0DA: D0 09       ;
CODE_13F0DC:    LDA $0C                     ; $13:F0DC: A5 0C       ;
CODE_13F0DE:    AND #$F0                    ; $13:F0DE: 29 F0       ;
CODE_13F0E0:    ADC #$09                    ; $13:F0E0: 69 09       ;
CODE_13F0E2:    JMP CODE_13F0E7             ; $13:F0E2: 4C E7 F0    ;

CODE_13F0E5:    LDA $0C                     ; $13:F0E5: A5 0C       ;
CODE_13F0E7:    STA $0257,x                 ; $13:F0E7: 9D 57 02    ;
CODE_13F0EA:    DEX                         ; $13:F0EA: CA          ;
CODE_13F0EB:    BPL CODE_13F0AE             ; $13:F0EB: 10 C1       ;
CODE_13F0ED:    LDA $02C2                   ; $13:F0ED: AD C2 02    ;
CODE_13F0F0:    BPL CODE_13F102             ; $13:F0F0: 10 10       ;
CODE_13F0F2:    DEC $0260                   ; $13:F0F2: CE 60 02    ;
CODE_13F0F5:    LDA $0203                   ; $13:F0F5: AD 03 02    ;
CODE_13F0F8:    EOR #$01                    ; $13:F0F8: 49 01       ;
CODE_13F0FA:    STA $0203                   ; $13:F0FA: 8D 03 02    ;
CODE_13F0FD:    LDA #$01                    ; $13:F0FD: A9 01       ;
CODE_13F0FF:    STA $0262                   ; $13:F0FF: 8D 62 02    ;
CODE_13F102:    STZ $02C2                   ; $13:F102: 9C C2 02    ;
CODE_13F105:    JSR CODE_13F343             ; $13:F105: 20 43 F3    ;
CODE_13F108:    RTS                         ; $13:F108: 60          ;

CODE_13F109:    LSR A                       ; $13:F109: 4A          ;
CODE_13F10A:    BCS CODE_13F126                     ; $13:F10A: B0 1A       ;
CODE_13F10C:    CPY #$01                    ; $13:F10C: C0 01       ;
CODE_13F10E:    BEQ CODE_13F115             ; $13:F10E: F0 05       ;
CODE_13F110:    LDA $0628                   ; $13:F110: AD 28 06    ;
CODE_13F113:    BEQ CODE_13F11C             ; $13:F113: F0 07       ;
CODE_13F115:    LDA #$01                    ; $13:F115: A9 01       ;
CODE_13F117:    STA $0203                   ; $13:F117: 8D 03 02    ;
CODE_13F11A:    BRA CODE_13F11F             ; $13:F11A: 80 03       ;

CODE_13F11C:    STZ $0203                   ; $13:F11C: 9C 03 02    ;
CODE_13F11F:    STZ $0209                   ; $13:F11F: 9C 09 02    ;
CODE_13F122:    LDA #$00                    ; $13:F122: A9 00       ;
CODE_13F124:    BRA CODE_13F13F             ; $13:F124: 80 19       ;

CODE_13F126:    CPY #$01                    ; $13:F126: C0 01       ;
CODE_13F128:    BEQ CODE_13F12F             ; $13:F128: F0 05       ;
CODE_13F12A:    STZ $0203                   ; $13:F12A: 9C 03 02    ;
CODE_13F12D:    BRA CODE_13F13C             ; $13:F12D: 80 0D       ;

CODE_13F12F:    LDA #$01                    ; $13:F12F: A9 01       ;
CODE_13F131:    STA $0203                   ; $13:F131: 8D 03 02    ;
CODE_13F134:    STA $0209                   ; $13:F134: 8D 09 02    ;
CODE_13F137:    LDA #$80                    ; $13:F137: A9 80       ;
CODE_13F139:    STA $0202                   ; $13:F139: 8D 02 02    ;
CODE_13F13C:    LDA.w DATA_119B3C,y                 ; $13:F13C: B9 3C 9B    ;
CODE_13F13F:    STA $0261                   ; $13:F13F: 8D 61 02    ;
CODE_13F142:    RTS                         ; $13:F142: 60          ;

CODE_13F143:    LDA $0202                   ; $13:F143: AD 02 02    ;
CODE_13F146:    STA $02AD                   ; $13:F146: 8D AD 02    ;
CODE_13F149:    LDA $0203                   ; $13:F149: AD 03 02    ;
CODE_13F14C:    STA $02AE                   ; $13:F14C: 8D AE 02    ;
CODE_13F14F:    LDA $04C0                   ; $13:F14F: AD C0 04    ;
CODE_13F152:    STA $02AF                   ; $13:F152: 8D AF 02    ;
CODE_13F155:    INC $02B0                   ; $13:F155: EE B0 02    ;
CODE_13F158:    LDA.w DATA_119B3E                   ; $13:F158: AD 3E 9B    ;
CODE_13F15B:    STA $0535                   ; $13:F15B: 8D 35 05    ;
CODE_13F15E:    JSR CODE_13F109             ; $13:F15E: 20 09 F1    ;
CODE_13F161:    LDA #$00                    ; $13:F161: A9 00       ;
CODE_13F163:    STA $0202                   ; $13:F163: 8D 02 02    ;
CODE_13F166:    STA $04C2                   ; $13:F166: 8D C2 04    ;
CODE_13F169:    LDA.w DATA_119B3E                   ; $13:F169: AD 3E 9B    ;
CODE_13F16C:    STA $04C0                   ; $13:F16C: 8D C0 04    ;
CODE_13F16F:    LDA.w DATA_119B3E                   ; $13:F16F: AD 3E 9B    ;
CODE_13F172:    STA $0257                   ; $13:F172: 8D 57 02    ;
CODE_13F175:    LDA #$E0                    ; $13:F175: A9 E0       ;
CODE_13F177:    STA $0261                   ; $13:F177: 8D 61 02    ;
CODE_13F17A:    LDA.w DATA_119B3E                   ; $13:F17A: AD 3E 9B    ;
CODE_13F17D:    CLC                         ; $13:F17D: 18          ;
CODE_13F17E:    ADC #$F0                    ; $13:F17E: 69 F0       ;
CODE_13F180:    STA $0263                   ; $13:F180: 8D 63 02    ;
CODE_13F183:    RTL                         ; $13:F183: 6B          ;

CODE_13F184:    LDA $02AD                   ; $13:F184: AD AD 02    ;
CODE_13F187:    STA $0202                   ; $13:F187: 8D 02 02    ;
CODE_13F18A:    STA $04C2                   ; $13:F18A: 8D C2 04    ;
CODE_13F18D:    LDA $02AE                   ; $13:F18D: AD AE 02    ;
CODE_13F190:    STA $0203                   ; $13:F190: 8D 03 02    ;
CODE_13F193:    LDA $02AF                   ; $13:F193: AD AF 02    ;
CODE_13F196:    STA $04C0                   ; $13:F196: 8D C0 04    ;
CODE_13F199:    LDA $02B0                   ; $13:F199: AD B0 02    ;
CODE_13F19C:    BNE CODE_13F1BE             ; $13:F19C: D0 20       ;
CODE_13F19E:    INC $02B1                   ; $13:F19E: EE B1 02    ;
CODE_13F1A1:    INC $02B0                   ; $13:F1A1: EE B0 02    ;
CODE_13F1A4:    INC $D5                     ; $13:F1A4: E6 D5       ;
CODE_13F1A6:    LDA $0258                   ; $13:F1A6: AD 58 02    ;
CODE_13F1A9:    STA $0257                   ; $13:F1A9: 8D 57 02    ;
CODE_13F1AC:    LDA #$10                    ; $13:F1AC: A9 10       ;
CODE_13F1AE:    STA $01                     ; $13:F1AE: 85 01       ;
CODE_13F1B0:    LDA #$F0                    ; $13:F1B0: A9 F0       ;
CODE_13F1B2:    STA $0261                   ; $13:F1B2: 8D 61 02    ;
CODE_13F1B5:    STA $0262                   ; $13:F1B5: 8D 62 02    ;
CODE_13F1B8:    LDA $0259                   ; $13:F1B8: AD 59 02    ;
CODE_13F1BB:    STA $0263                   ; $13:F1BB: 8D 63 02    ;
CODE_13F1BE:    RTL                         ; $13:F1BE: 6B          ;

CODE_13F1BF:    LDX #$00                    ; $13:F1BF: A2 00       ;
CODE_13F1C1:    STX $0264                   ; $13:F1C1: 8E 64 02    ;
CODE_13F1C4:    STX $0265                   ; $13:F1C4: 8E 65 02    ;
CODE_13F1C7:    STX $D8                     ; $13:F1C7: 86 D8       ;
CODE_13F1C9:    JSL CODE_13F238             ; $13:F1C9: 22 38 F2 13 ;
CODE_13F1CD:    JSL CODE_13F277             ; $13:F1CD: 22 77 F2 13 ;
CODE_13F1D1:    LDA $0261                   ; $13:F1D1: AD 61 02    ;
CODE_13F1D4:    CMP $025A                   ; $13:F1D4: CD 5A 02    ;
CODE_13F1D7:    BNE CODE_13F1F3             ; $13:F1D7: D0 1A       ;
CODE_13F1D9:    BRA CODE_13F1F3             ; $13:F1D9: 80 18       ;

CODE_13F1DB:    LDA $0262                   ; $13:F1DB: AD 62 02    ;
CODE_13F1DE:    CLC                         ; $13:F1DE: 18          ;
CODE_13F1DF:    ADC #$01                    ; $13:F1DF: 69 01       ;
CODE_13F1E1:    CMP $025B                   ; $13:F1E1: CD 5B 02    ;
CODE_13F1E4:    BNE CODE_13F1F3             ; $13:F1E4: D0 0D       ;
CODE_13F1E6:    STZ $02AC                   ; $13:F1E6: 9C AC 02    ;
CODE_13F1E9:    STZ $02B0                   ; $13:F1E9: 9C B0 02    ;
CODE_13F1EC:    STZ $02B1                   ; $13:F1EC: 9C B1 02    ;
CODE_13F1EF:    INC $0264                   ; $13:F1EF: EE 64 02    ;
CODE_13F1F2:    RTL                         ; $13:F1F2: 6B          ;

CODE_13F1F3:    LDA $0257                   ; $13:F1F3: AD 57 02    ;
CODE_13F1F6:    CMP $0263                   ; $13:F1F6: CD 63 02    ;
CODE_13F1F9:    BEQ CODE_13F1E6             ; $13:F1F9: F0 EB       ;
CODE_13F1FB:    LDX #$00                    ; $13:F1FB: A2 00       ;
CODE_13F1FD:    JSL CODE_13F21D             ; $13:F1FD: 22 1D F2 13 ;
CODE_13F201:    RTL                         ; $13:F201: 6B          ;

CODE_13F202:    LDA $0257,x                 ; $13:F202: BD 57 02    ;
CODE_13F205:    SEC                         ; $13:F205: 38          ;
CODE_13F206:    SBC #$10                    ; $13:F206: E9 10       ;
CODE_13F208:    STA $0257,x                 ; $13:F208: 9D 57 02    ;
CODE_13F20B:    BCS CODE_13F21C                     ; $13:F20B: B0 0F       ;
CODE_13F20D:    DEC $0257,x                 ; $13:F20D: DE 57 02    ;
CODE_13F210:    LDA $0257,x                 ; $13:F210: BD 57 02    ;
CODE_13F213:    CMP #$EF                    ; $13:F213: C9 EF       ;
CODE_13F215:    BNE CODE_13F21C             ; $13:F215: D0 05       ;
CODE_13F217:    LDA #$F9                    ; $13:F217: A9 F9       ;
CODE_13F219:    STA $0257,x                 ; $13:F219: 9D 57 02    ;
CODE_13F21C:    RTL                         ; $13:F21C: 6B          ;

CODE_13F21D:    LDA $0257,x                 ; $13:F21D: BD 57 02    ;
CODE_13F220:    CLC                         ; $13:F220: 18          ;
CODE_13F221:    ADC #$10                    ; $13:F221: 69 10       ;
CODE_13F223:    STA $0257,x                 ; $13:F223: 9D 57 02    ;
CODE_13F226:    BCC CODE_13F237             ; $13:F226: 90 0F       ;
CODE_13F228:    INC $0257,x                 ; $13:F228: FE 57 02    ;
CODE_13F22B:    LDA $0257,x                 ; $13:F22B: BD 57 02    ;
CODE_13F22E:    CMP #$0A                    ; $13:F22E: C9 0A       ;
CODE_13F230:    BNE CODE_13F237             ; $13:F230: D0 05       ;
CODE_13F232:    LDA #$00                    ; $13:F232: A9 00       ;
CODE_13F234:    STA $0257,x                 ; $13:F234: 9D 57 02    ;
CODE_13F237:    RTL                         ; $13:F237: 6B          ;

CODE_13F238:    STY $0F                     ; $13:F238: 84 0F       ;
CODE_13F23A:    LDA $0257,x                 ; $13:F23A: BD 57 02    ;
CODE_13F23D:    AND #$0F                    ; $13:F23D: 29 0F       ;
CODE_13F23F:    TAY                         ; $13:F23F: A8          ;
CODE_13F240:    LDA.w DATA_11AAF0,y                 ; $13:F240: B9 F0 AA    ;
CODE_13F243:    STA $0269                   ; $13:F243: 8D 69 02    ;
CODE_13F246:    LDA $0534                   ; $13:F246: AD 34 05    ;
CODE_13F249:    ASL A                       ; $13:F249: 0A          ;
CODE_13F24A:    ASL A                       ; $13:F24A: 0A          ;
CODE_13F24B:    ASL A                       ; $13:F24B: 0A          ;
CODE_13F24C:    ASL A                       ; $13:F24C: 0A          ;
CODE_13F24D:    CLC                         ; $13:F24D: 18          ;
CODE_13F24E:    ADC.w DATA_11AAFB,y                 ; $13:F24E: 79 FB AA    ;
CODE_13F251:    STA $026A                   ; $13:F251: 8D 6A 02    ;
CODE_13F254:    LDA #$7F                    ; $13:F254: A9 7F       ;
CODE_13F256:    STA $026B                   ; $13:F256: 8D 6B 02    ;
CODE_13F259:    LDA $0257,x                 ; $13:F259: BD 57 02    ;
CODE_13F25C:    LSR A                       ; $13:F25C: 4A          ;
CODE_13F25D:    LSR A                       ; $13:F25D: 4A          ;
CODE_13F25E:    LSR A                       ; $13:F25E: 4A          ;
CODE_13F25F:    LSR A                       ; $13:F25F: 4A          ;
CODE_13F260:    STA $0256                   ; $13:F260: 8D 56 02    ;
CODE_13F263:    ASL A                       ; $13:F263: 0A          ;
CODE_13F264:    STA $025B                   ; $13:F264: 8D 5B 02    ;
CODE_13F267:    LDY #$00                    ; $13:F267: A0 00       ;
CODE_13F269:    LDA $0257,x                 ; $13:F269: BD 57 02    ;
CODE_13F26C:    LSR A                       ; $13:F26C: 4A          ;
CODE_13F26D:    BCS CODE_13F271                     ; $13:F26D: B0 02       ;
CODE_13F26F:    LDY #$04                    ; $13:F26F: A0 04       ;
CODE_13F271:    STY $025A                   ; $13:F271: 8C 5A 02    ;
CODE_13F274:    LDY $0F                     ; $13:F274: A4 0F       ;
CODE_13F276:    RTL                         ; $13:F276: 6B          ;

CODE_13F277:    PHB                         ; $13:F277: 8B          ;
CODE_13F278:    LDA #$13                    ; $13:F278: A9 13       ;
CODE_13F27A:    PHA                         ; $13:F27A: 48          ;
CODE_13F27B:    PLB                         ; $13:F27B: AB          ;
CODE_13F27C:    LDA $7F0000                 ; $13:F27C: AF 00 00 7F ;
CODE_13F280:    TAX                         ; $13:F280: AA          ;
CODE_13F281:    LDA $0269                   ; $13:F281: AD 69 02    ;
CODE_13F284:    STA $C4                     ; $13:F284: 85 C4       ;
CODE_13F286:    LDA $026A                   ; $13:F286: AD 6A 02    ;
CODE_13F289:    STA $C5                     ; $13:F289: 85 C5       ;
CODE_13F28B:    LDA $026B                   ; $13:F28B: AD 6B 02    ;
CODE_13F28E:    STA $C6                     ; $13:F28E: 85 C6       ;
CODE_13F290:    LDA $024B                   ; $13:F290: AD 4B 02    ;
CODE_13F293:    BEQ CODE_13F298             ; $13:F293: F0 03       ;
CODE_13F295:    JMP CODE_13F3E0             ; $13:F295: 4C E0 F3    ;

CODE_13F298:    REP #$20                    ; $13:F298: C2 20       ;
CODE_13F29A:    LDA $025A                   ; $13:F29A: AD 5A 02    ;
CODE_13F29D:    ORA #$0010                  ; $13:F29D: 09 10 00    ;
CODE_13F2A0:    STA $7F0002,x               ; $13:F2A0: 9F 02 00 7F ;
CODE_13F2A4:    XBA                         ; $13:F2A4: EB          ;
CODE_13F2A5:    CLC                         ; $13:F2A5: 18          ;
CODE_13F2A6:    ADC #$0001                  ; $13:F2A6: 69 01 00    ;
CODE_13F2A9:    XBA                         ; $13:F2A9: EB          ;
CODE_13F2AA:    ORA #$0010                  ; $13:F2AA: 09 10 00    ;
CODE_13F2AD:    STA $7F0042,x               ; $13:F2AD: 9F 42 00 7F ;
CODE_13F2B1:    INX                         ; $13:F2B1: E8          ;
CODE_13F2B2:    INX                         ; $13:F2B2: E8          ;
CODE_13F2B3:    LDA #$3C00                  ; $13:F2B3: A9 00 3C    ;
CODE_13F2B6:    STA $7F0002,x               ; $13:F2B6: 9F 02 00 7F ;
CODE_13F2BA:    STA $7F0042,x               ; $13:F2BA: 9F 42 00 7F ;
CODE_13F2BE:    INX                         ; $13:F2BE: E8          ;
CODE_13F2BF:    INX                         ; $13:F2BF: E8          ;
CODE_13F2C0:    SEP #$20                    ; $13:F2C0: E2 20       ;
CODE_13F2C2:    STZ $0255                   ; $13:F2C2: 9C 55 02    ;
CODE_13F2C5:    STZ $D5                     ; $13:F2C5: 64 D5       ;
CODE_13F2C7:    LDA $02DF               ; $13:F2C7: AD DF 02    ; \ [$00] = Pointer to Map16 tileset.
CODE_13F2CA:    STA $00                 ; $13:F2CA: 85 00       ;  |
CODE_13F2CC:    LDA $02E0               ; $13:F2CC: AD E0 02    ;  |
CODE_13F2CF:    STA $01                 ; $13:F2CF: 85 01       ;  |
CODE_13F2D1:    LDA $02E1               ; $13:F2D1: AD E1 02    ;  |
CODE_13F2D4:    STA $02                 ; $13:F2D4: 85 02       ; /
CODE_13F2D6:    LDY $0256                   ; $13:F2D6: AC 56 02    ;
CODE_13F2D9:    REP #$30                ; $13:F2D9: C2 30       ; Accumulator and Index = 16-bit.
CODE_13F2DB:    LDA [$C4],y             ; $13:F2DB: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F2DD:    AND #$00FF              ; $13:F2DD: 29 FF 00    ;  |
CODE_13F2E0:    CMP #$00FF              ; $13:F2E0: C9 FF 00    ;  |
CODE_13F2E3:    BNE CODE_13F2F5         ; $13:F2E3: D0 10       ; / If not, branch.
CODE_13F2E5:    LDA.l PNTR_13A613       ; $13:F2E5: AF 13 A6 13 ; \ Load empty tile.
CODE_13F2E9:    STA $00                 ; $13:F2E9: 85 00       ;  | ($13A615)
CODE_13F2EB:    LDA #$0013              ; $13:F2EB: A9 13 00    ;  |
CODE_13F2EE:    STA $02                 ; $13:F2EE: 85 02       ; /
CODE_13F2F0:    LDY #$0000              ; $13:F2F0: A0 00 00    ; Y = #$0000.
CODE_13F2F3:    BRA CODE_13F2F9             ; $13:F2F3: 80 04       ;

CODE_13F2F5:    ASL A                   ; $13:F2F5: 0A          ; \ Multiply by 8 (8 bytes for 1 Map16 tile)
CODE_13F2F6:    ASL A                   ; $13:F2F6: 0A          ;  |
CODE_13F2F7:    ASL A                   ; $13:F2F7: 0A          ;  |
CODE_13F2F8:    TAY                     ; $13:F2F8: A8          ; / Into Y.
CODE_13F2F9:    LDA [$00],y             ; $13:F2F9: B7 00       ; \ Store top-left tile.
CODE_13F2FB:    STA $7F0002,x           ; $13:F2FB: 9F 02 00 7F ;  |
CODE_13F2FF:    INY                     ; $13:F2FF: C8          ;  | Get to next tile.
CODE_13F300:    INY                     ; $13:F300: C8          ;  |
CODE_13F301:    LDA [$00],y             ; $13:F301: B7 00       ;  | Store bottom-left tile.
CODE_13F303:    STA $7F0042,x           ; $13:F303: 9F 42 00 7F ;  |
CODE_13F307:    INY                     ; $13:F307: C8          ;  | Get to next tile.
CODE_13F308:    INY                     ; $13:F308: C8          ;  |
CODE_13F309:    LDA [$00],y             ; $13:F309: B7 00       ;  | Store top-right tile.
CODE_13F30B:    STA $7F0004,x           ; $13:F30B: 9F 04 00 7F ;  |
CODE_13F30F:    INY                     ; $13:F30F: C8          ;  | Get to next tile.
CODE_13F310:    INY                     ; $13:F310: C8          ;  |
CODE_13F311:    LDA [$00],y             ; $13:F311: B7 00       ;  | Store bottom-right tile.
CODE_13F313:    STA $7F0044,x           ; $13:F313: 9F 44 00 7F ; /
CODE_13F317:    SEP #$30                ; $13:F317: E2 30       ; Accumulator and Index = 8-bit.
CODE_13F319:    INC $0255                   ; $13:F319: EE 55 02    ;
CODE_13F31C:    INX                         ; $13:F31C: E8          ;
CODE_13F31D:    INX                         ; $13:F31D: E8          ;
CODE_13F31E:    INX                         ; $13:F31E: E8          ;
CODE_13F31F:    INX                         ; $13:F31F: E8          ;
CODE_13F320:    LDA $0256                   ; $13:F320: AD 56 02    ;
CODE_13F323:    CLC                         ; $13:F323: 18          ;
CODE_13F324:    ADC #$10                    ; $13:F324: 69 10       ;
CODE_13F326:    STA $0256                   ; $13:F326: 8D 56 02    ;
CODE_13F329:    LDA $0255                   ; $13:F329: AD 55 02    ;
CODE_13F32C:    CMP #$0F                    ; $13:F32C: C9 0F       ;
CODE_13F32E:    BCC CODE_13F2C7             ; $13:F32E: 90 97       ;
CODE_13F330:    LDA #$FF                    ; $13:F330: A9 FF       ;
CODE_13F332:    STA $7F0042,x               ; $13:F332: 9F 42 00 7F ;
CODE_13F336:    TXA                         ; $13:F336: 8A          ;
CODE_13F337:    CLC                         ; $13:F337: 18          ;
CODE_13F338:    ADC #$40                    ; $13:F338: 69 40       ;
CODE_13F33A:    STA $7F0000                 ; $13:F33A: 8F 00 00 7F ;
CODE_13F33E:    INC $0265                   ; $13:F33E: EE 65 02    ;
CODE_13F341:    PLB                         ; $13:F341: AB          ;
CODE_13F342:    RTL                         ; $13:F342: 6B          ;

CODE_13F343:    LDA $02C3                   ; $13:F343: AD C3 02    ;
CODE_13F346:    BEQ CODE_13F356             ; $13:F346: F0 0E       ;
CODE_13F348:    LDA $0200                   ; $13:F348: AD 00 02    ;
CODE_13F34B:    STA $0202                   ; $13:F34B: 8D 02 02    ;
CODE_13F34E:    LDA $0201                   ; $13:F34E: AD 01 02    ;
CODE_13F351:    STA $0203                   ; $13:F351: 8D 03 02    ;
CODE_13F354:    BRA CODE_13F3AD             ; $13:F354: 80 57       ;

CODE_13F356:    LDA $0535                   ; $13:F356: AD 35 05    ;
CODE_13F359:    AND #$02                    ; $13:F359: 29 02       ;
CODE_13F35B:    BNE CODE_13F385             ; $13:F35B: D0 28       ;
CODE_13F35D:    LDA $02B6                   ; $13:F35D: AD B6 02    ;
CODE_13F360:    BEQ CODE_13F367             ; $13:F360: F0 05       ;
CODE_13F362:    LDA $0201                   ; $13:F362: AD 01 02    ;
CODE_13F365:    BRA CODE_13F369             ; $13:F365: 80 02       ;

CODE_13F367:    LDA #$01                    ; $13:F367: A9 01       ;
CODE_13F369:    STA $0203                   ; $13:F369: 8D 03 02    ;
CODE_13F36C:    LDA $0201                   ; $13:F36C: AD 01 02    ;
CODE_13F36F:    BEQ CODE_13F37A             ; $13:F36F: F0 09       ;
CODE_13F371:    LDA $0200                   ; $13:F371: AD 00 02    ;
CODE_13F374:    LSR A                       ; $13:F374: 4A          ;
CODE_13F375:    STA $0202                   ; $13:F375: 8D 02 02    ;
CODE_13F378:    BRA CODE_13F3AD             ; $13:F378: 80 33       ;

CODE_13F37A:    LDA $0200                   ; $13:F37A: AD 00 02    ;
CODE_13F37D:    LSR A                       ; $13:F37D: 4A          ;
CODE_13F37E:    ORA #$80                    ; $13:F37E: 09 80       ;
CODE_13F380:    STA $0202                   ; $13:F380: 8D 02 02    ;
CODE_13F383:    BRA CODE_13F3AD             ; $13:F383: 80 28       ;

CODE_13F385:    LDA $02B6                   ; $13:F385: AD B6 02    ;
CODE_13F388:    BEQ CODE_13F391             ; $13:F388: F0 07       ;
CODE_13F38A:    LDA $0201                   ; $13:F38A: AD 01 02    ;
CODE_13F38D:    EOR #$01                    ; $13:F38D: 49 01       ;
CODE_13F38F:    BRA CODE_13F393             ; $13:F38F: 80 02       ;

CODE_13F391:    LDA #$00                    ; $13:F391: A9 00       ;
CODE_13F393:    STA $0203                   ; $13:F393: 8D 03 02    ;
CODE_13F396:    LDA $0201                   ; $13:F396: AD 01 02    ;
CODE_13F399:    BEQ CODE_13F3A4             ; $13:F399: F0 09       ;
CODE_13F39B:    LDA $0200                   ; $13:F39B: AD 00 02    ;
CODE_13F39E:    LSR A                       ; $13:F39E: 4A          ;
CODE_13F39F:    STA $0202                   ; $13:F39F: 8D 02 02    ;
CODE_13F3A2:    BRA CODE_13F3AD             ; $13:F3A2: 80 09       ;

CODE_13F3A4:    LDA $0200                   ; $13:F3A4: AD 00 02    ;
CODE_13F3A7:    LSR A                       ; $13:F3A7: 4A          ;
CODE_13F3A8:    ORA #$80                    ; $13:F3A8: 09 80       ;
CODE_13F3AA:    STA $0202                   ; $13:F3AA: 8D 02 02    ;
CODE_13F3AD:    LDA $0202                   ; $13:F3AD: AD 02 02    ;
CODE_13F3B0:    AND #$F0                    ; $13:F3B0: 29 F0       ;
CODE_13F3B2:    STA $026C                   ; $13:F3B2: 8D 6C 02    ;
CODE_13F3B5:    STZ $02B6                   ; $13:F3B5: 9C B6 02    ;
CODE_13F3B8:    RTS                         ; $13:F3B8: 60          ;

CODE_13F3B9:    LDX $0533               ; $13:F3B9: AE 33 05    ; \ Get level + room number into index.
CODE_13F3BC:    LDA.l DATA_11D098,x     ; $13:F3BC: BF 98 D0 11 ;  |
CODE_13F3C0:    CLC                     ; $13:F3C0: 18          ;  |
CODE_13F3C1:    ADC $0534               ; $13:F3C1: 6D 34 05    ;  |
CODE_13F3C4:    TAX                     ; $13:F3C4: AA          ; /
CODE_13F3C5:    LDA.l DATA_13A61D,x     ; $13:F3C5: BF 1D A6 13 ; \ Load a certain Layer 2 Map16 tileset.     
CODE_13F3C9:    ASL A                   ; $13:F3C9: 0A          ;  |
CODE_13F3CA:    TAX                     ; $13:F3CA: AA          ; /
CODE_13F3CB:    LDA.l PNTR_13A6E5,x     ; $13:F3CB: BF E5 A6 13 ; \ Tileset pointer, low byte, into $02DF.
CODE_13F3CF:    STA $02DF               ; $13:F3CF: 8D DF 02    ; /
CODE_13F3D2:    INX                     ; $13:F3D2: E8          ; \
CODE_13F3D3:    LDA.l PNTR_13A6E5,x     ; $13:F3D3: BF E5 A6 13 ;  | Tileset pointer, high byte, into $02E0.    
CODE_13F3D7:    STA $02E0               ; $13:F3D7: 8D E0 02    ; /
CODE_13F3DA:    LDA #$13                ; $13:F3DA: A9 13       ; \ Bank number = #$13.
CODE_13F3DC:    STA $02E1               ; $13:F3DC: 8D E1 02    ; / Into $02E1.
CODE_13F3DF:    RTS                     ; $13:F3DF: 60          ; Return.

CODE_13F3E0:    REP #$20                    ; $13:F3E0: C2 20       ;
CODE_13F3E2:    LDA $025A                   ; $13:F3E2: AD 5A 02    ;
CODE_13F3E5:    ORA #$0010                  ; $13:F3E5: 09 10 00    ;
CODE_13F3E8:    CLC                         ; $13:F3E8: 18          ;
CODE_13F3E9:    ADC #$4001                  ; $13:F3E9: 69 01 40    ;
CODE_13F3EC:    STA $7F0002,x               ; $13:F3EC: 9F 02 00 7F ;
CODE_13F3F0:    XBA                         ; $13:F3F0: EB          ;
CODE_13F3F1:    CLC                         ; $13:F3F1: 18          ;
CODE_13F3F2:    ADC #$0001                  ; $13:F3F2: 69 01 00    ;
CODE_13F3F5:    XBA                         ; $13:F3F5: EB          ;
CODE_13F3F6:    ORA #$0010                  ; $13:F3F6: 09 10 00    ;
CODE_13F3F9:    STA $7F002E,x               ; $13:F3F9: 9F 2E 00 7F ;
CODE_13F3FD:    INX                         ; $13:F3FD: E8          ;
CODE_13F3FE:    INX                         ; $13:F3FE: E8          ;
CODE_13F3FF:    LDA #$2800                  ; $13:F3FF: A9 00 28    ;
CODE_13F402:    STA $7F0002,x               ; $13:F402: 9F 02 00 7F ;
CODE_13F406:    STA $7F002E,x               ; $13:F406: 9F 2E 00 7F ;
CODE_13F40A:    INX                         ; $13:F40A: E8          ;
CODE_13F40B:    INX                         ; $13:F40B: E8          ;
CODE_13F40C:    SEP #$20                    ; $13:F40C: E2 20       ;
CODE_13F40E:    STZ $0255                   ; $13:F40E: 9C 55 02    ;
CODE_13F411:    STZ $D5                     ; $13:F411: 64 D5       ;
CODE_13F413:    LDA $0256                   ; $13:F413: AD 56 02    ;
CODE_13F416:    CLC                         ; $13:F416: 18          ;
CODE_13F417:    ADC #$50                    ; $13:F417: 69 50       ;
CODE_13F419:    STA $0256                   ; $13:F419: 8D 56 02    ;
CODE_13F41C:    LDA $02DF                   ; $13:F41C: AD DF 02    ;
CODE_13F41F:    STA $00                     ; $13:F41F: 85 00       ;
CODE_13F421:    LDA $02E0                   ; $13:F421: AD E0 02    ;
CODE_13F424:    STA $01                     ; $13:F424: 85 01       ;
CODE_13F426:    LDA $02E1                   ; $13:F426: AD E1 02    ;
CODE_13F429:    STA $02                     ; $13:F429: 85 02       ;
CODE_13F42B:    LDY $0256                   ; $13:F42B: AC 56 02    ;
CODE_13F42E:    REP #$30                    ; $13:F42E: C2 30       ;
CODE_13F430:    LDA [$C4],y             ; $13:F430: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F432:    AND #$00FF              ; $13:F432: 29 FF 00    ;  |
CODE_13F435:    CMP #$00FF              ; $13:F435: C9 FF 00    ;  |
CODE_13F438:    BNE CODE_13F44A         ; $13:F438: D0 10       ; / If not, branch.
CODE_13F43A:    LDA.l PNTR_13A613       ; $13:F43A: AF 13 A6 13 ; \ Load empty tile data.
CODE_13F43E:    STA $00                 ; $13:F43E: 85 00       ;  | ($13A615)
CODE_13F440:    LDA #$0013              ; $13:F440: A9 13 00    ;  |
CODE_13F443:    STA $02                 ; $13:F443: 85 02       ; /
CODE_13F445:    LDY #$0000              ; $13:F445: A0 00 00    ; Y = #$0000.
CODE_13F448:    BRA CODE_13F44E             ; $13:F448: 80 04       ;

CODE_13F44A:    ASL A                       ; $13:F44A: 0A          ;
CODE_13F44B:    ASL A                       ; $13:F44B: 0A          ;
CODE_13F44C:    ASL A                       ; $13:F44C: 0A          ;
CODE_13F44D:    TAY                         ; $13:F44D: A8          ;
CODE_13F44E:    LDA [$00],y                 ; $13:F44E: B7 00       ;
CODE_13F450:    STA $7F0002,x               ; $13:F450: 9F 02 00 7F ;
CODE_13F454:    INY                         ; $13:F454: C8          ;
CODE_13F455:    INY                         ; $13:F455: C8          ;
CODE_13F456:    LDA [$00],y                 ; $13:F456: B7 00       ;
CODE_13F458:    STA $7F002E,x               ; $13:F458: 9F 2E 00 7F ;
CODE_13F45C:    INY                         ; $13:F45C: C8          ;
CODE_13F45D:    INY                         ; $13:F45D: C8          ;
CODE_13F45E:    LDA [$00],y                 ; $13:F45E: B7 00       ;
CODE_13F460:    STA $7F0004,x               ; $13:F460: 9F 04 00 7F ;
CODE_13F464:    INY                         ; $13:F464: C8          ;
CODE_13F465:    INY                         ; $13:F465: C8          ;
CODE_13F466:    LDA [$00],y                 ; $13:F466: B7 00       ;
CODE_13F468:    STA $7F0030,x               ; $13:F468: 9F 30 00 7F ;
CODE_13F46C:    SEP #$30                    ; $13:F46C: E2 30       ;
CODE_13F46E:    INC $0255                   ; $13:F46E: EE 55 02    ;
CODE_13F471:    INX                         ; $13:F471: E8          ;
CODE_13F472:    INX                         ; $13:F472: E8          ;
CODE_13F473:    INX                         ; $13:F473: E8          ;
CODE_13F474:    INX                         ; $13:F474: E8          ;
CODE_13F475:    LDA $0256                   ; $13:F475: AD 56 02    ;
CODE_13F478:    CLC                         ; $13:F478: 18          ;
CODE_13F479:    ADC #$10                    ; $13:F479: 69 10       ;
CODE_13F47B:    STA $0256                   ; $13:F47B: 8D 56 02    ;
CODE_13F47E:    LDA $0255                   ; $13:F47E: AD 55 02    ;
CODE_13F481:    CMP #$0A                    ; $13:F481: C9 0A       ;
CODE_13F483:    BCC CODE_13F41C             ; $13:F483: 90 97       ;
CODE_13F485:    LDA #$FF                    ; $13:F485: A9 FF       ;
CODE_13F487:    STA $7F002E,x               ; $13:F487: 9F 2E 00 7F ;
CODE_13F48B:    TXA                         ; $13:F48B: 8A          ;
CODE_13F48C:    CLC                         ; $13:F48C: 18          ;
CODE_13F48D:    ADC #$2C                    ; $13:F48D: 69 2C       ;
CODE_13F48F:    STA $7F0000                 ; $13:F48F: 8F 00 00 7F ;
CODE_13F493:    INC $0265                   ; $13:F493: EE 65 02    ;
CODE_13F496:    PLB                         ; $13:F496: AB          ;
CODE_13F497:    RTL                         ; $13:F497: 6B          ;

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
   
CODE_13F500:    LDA $02AB                   ; $13:F500: AD AB 02    ;
CODE_13F503:    BNE CODE_13F554             ; $13:F503: D0 4F       ;
CODE_13F505:    LDA #$02                    ; $13:F505: A9 02       ;
CODE_13F507:    STA $025A                   ; $13:F507: 8D 5A 02    ;
CODE_13F50A:    LDA $02C3                   ; $13:F50A: AD C3 02    ;
CODE_13F50D:    BNE CODE_13F523             ; $13:F50D: D0 14       ;
CODE_13F50F:    LDX $0535                   ; $13:F50F: AE 35 05    ;
CODE_13F512:    LDA.l DATA_11CEAC,x                 ; $13:F512: BF AC CE 11 ;
CODE_13F516:    STA $0257                   ; $13:F516: 8D 57 02    ;
CODE_13F519:    STA $0258                   ; $13:F519: 8D 58 02    ;
CODE_13F51C:    LDA.l DATA_11CEB6,x                 ; $13:F51C: BF B6 CE 11 ;
CODE_13F520:    STA $0259                   ; $13:F520: 8D 59 02    ;
CODE_13F523:    LDA $0535                   ; $13:F523: AD 35 05    ;
CODE_13F526:    LDY #$00                    ; $13:F526: A0 00       ;
CODE_13F528:    JSR CODE_13F109             ; $13:F528: 20 09 F1    ;
CODE_13F52B:    LDA #$02                    ; $13:F52B: A9 02       ;
CODE_13F52D:    STA $02B9                   ; $13:F52D: 8D B9 02    ;
CODE_13F530:    LDA #$00                    ; $13:F530: A9 00       ;
CODE_13F532:    STA $02BA                   ; $13:F532: 8D BA 02    ;
CODE_13F535:    LDA #$20                    ; $13:F535: A9 20       ;
CODE_13F537:    STA $025C                   ; $13:F537: 8D 5C 02    ;
CODE_13F53A:    LDA #$A0                    ; $13:F53A: A9 A0       ;
CODE_13F53C:    STA $025D                   ; $13:F53C: 8D 5D 02    ;
CODE_13F53F:    INC $02AB                   ; $13:F53F: EE AB 02    ;
CODE_13F542:    LDA #$E0                    ; $13:F542: A9 E0       ;
CODE_13F544:    STA $E2                     ; $13:F544: 85 E2       ;
CODE_13F546:    LDA #$01                    ; $13:F546: A9 01       ;
CODE_13F548:    STA $E4                     ; $13:F548: 85 E4       ;
CODE_13F54A:    STA $02AC                   ; $13:F54A: 8D AC 02    ;
CODE_13F54D:    LSR A                       ; $13:F54D: 4A          ;
CODE_13F54E:    STA $025B                   ; $13:F54E: 8D 5B 02    ;
CODE_13F551:    JSR CODE_13F3B9             ; $13:F551: 20 B9 F3    ;
CODE_13F554:    STZ $06                     ; $13:F554: 64 06       ;
CODE_13F556:    LDA #$FF                    ; $13:F556: A9 FF       ;
CODE_13F558:    STA $0263                   ; $13:F558: 8D 63 02    ;
CODE_13F55B:    LDA #$A0                    ; $13:F55B: A9 A0       ;
CODE_13F55D:    STA $0262                   ; $13:F55D: 8D 62 02    ;
CODE_13F560:    JSL CODE_13F5FE             ; $13:F560: 22 FE F5 13 ;
CODE_13F564:    LDA $02AC                   ; $13:F564: AD AC 02    ;
CODE_13F567:    BNE CODE_13F571             ; $13:F567: D0 08       ;
CODE_13F569:    LDA #$E8                    ; $13:F569: A9 E8       ;
CODE_13F56B:    STA $E1                     ; $13:F56B: 85 E1       ;
CODE_13F56D:    LDA #$C8                    ; $13:F56D: A9 C8       ;
CODE_13F56F:    STA $E2                     ; $13:F56F: 85 E2       ;
CODE_13F571:    RTL                         ; $13:F571: 6B          ;

CODE_13F572:    LDA $0208                   ; $13:F572: AD 08 02    ;
CODE_13F575:    STA $02BB                   ; $13:F575: 8D BB 02    ;
CODE_13F578:    LDA $0200                   ; $13:F578: AD 00 02    ;
CODE_13F57B:    STA $02AD                   ; $13:F57B: 8D AD 02    ;
CODE_13F57E:    LDA $02BC                   ; $13:F57E: AD BC 02    ;
CODE_13F581:    STA $02BE                   ; $13:F581: 8D BE 02    ;
CODE_13F584:    LDA $02BD                   ; $13:F584: AD BD 02    ;
CODE_13F587:    STA $02BF                   ; $13:F587: 8D BF 02    ;
CODE_13F58A:    LDA $04C0                   ; $13:F58A: AD C0 04    ;
CODE_13F58D:    STA $02C0                   ; $13:F58D: 8D C0 02    ;
CODE_13F590:    STZ $0206                   ; $13:F590: 9C 06 02    ;
CODE_13F593:    STZ $0200                   ; $13:F593: 9C 00 02    ;
CODE_13F596:    STZ $0208                   ; $13:F596: 9C 08 02    ;
CODE_13F599:    STZ $0202                   ; $13:F599: 9C 02 02    ;
CODE_13F59C:    RTL                         ; $13:F59C: 6B          ;

CODE_13F59D:    LDA $02BB                   ; $13:F59D: AD BB 02    ;
CODE_13F5A0:    STA $0208                   ; $13:F5A0: 8D 08 02    ;
CODE_13F5A3:    LDA $02AD                   ; $13:F5A3: AD AD 02    ;
CODE_13F5A6:    STA $0202                   ; $13:F5A6: 8D 02 02    ;
CODE_13F5A9:    LDA $02BE                   ; $13:F5A9: AD BE 02    ;
CODE_13F5AC:    STA $02BC                   ; $13:F5AC: 8D BC 02    ;
CODE_13F5AF:    LDA $02BF                   ; $13:F5AF: AD BF 02    ;
CODE_13F5B2:    STA $02BD                   ; $13:F5B2: 8D BD 02    ;
CODE_13F5B5:    LDA $02C0                   ; $13:F5B5: AD C0 02    ;
CODE_13F5B8:    STA $04C0                   ; $13:F5B8: 8D C0 04    ;
CODE_13F5BB:    RTL                         ; $13:F5BB: 6B          ;

CODE_13F5BC:    LDA $0258                   ; $13:F5BC: AD 58 02    ;
CODE_13F5BF:    AND #$10                    ; $13:F5BF: 29 10       ;
CODE_13F5C1:    BEQ CODE_13F5CA             ; $13:F5C1: F0 07       ;
CODE_13F5C3:    LDA $E1                     ; $13:F5C3: A5 E1       ;
CODE_13F5C5:    SEC                         ; $13:F5C5: 38          ;
CODE_13F5C6:    SBC #$08                    ; $13:F5C6: E9 08       ;
CODE_13F5C8:    STA $E1                     ; $13:F5C8: 85 E1       ;
CODE_13F5CA:    LDA #$01                    ; $13:F5CA: A9 01       ;
CODE_13F5CC:    STA $E4                     ; $13:F5CC: 85 E4       ;
CODE_13F5CE:    LDA $0258                   ; $13:F5CE: AD 58 02    ;
CODE_13F5D1:    STA $0257                   ; $13:F5D1: 8D 57 02    ;
CODE_13F5D4:    LDA #$10                    ; $13:F5D4: A9 10       ;
CODE_13F5D6:    STA $01                     ; $13:F5D6: 85 01       ;
CODE_13F5D8:    LDX #$00                    ; $13:F5D8: A2 00       ;
CODE_13F5DA:    JSL CODE_13F74D             ; $13:F5DA: 22 4D F7 13 ;
CODE_13F5DE:    LDA $025C                   ; $13:F5DE: AD 5C 02    ;
CODE_13F5E1:    STA $025B                   ; $13:F5E1: 8D 5B 02    ;
CODE_13F5E4:    LDA $E1                     ; $13:F5E4: A5 E1       ;
CODE_13F5E6:    STA $E2                     ; $13:F5E6: 85 E2       ;
CODE_13F5E8:    LDA #$F0                    ; $13:F5E8: A9 F0       ;
CODE_13F5EA:    STA $0261                   ; $13:F5EA: 8D 61 02    ;
CODE_13F5ED:    STA $0262                   ; $13:F5ED: 8D 62 02    ;
CODE_13F5F0:    LDA $0259                   ; $13:F5F0: AD 59 02    ;
CODE_13F5F3:    STA $0263                   ; $13:F5F3: 8D 63 02    ;
CODE_13F5F6:    INC $02C1                   ; $13:F5F6: EE C1 02    ;
CODE_13F5F9:    LDA #$01                    ; $13:F5F9: A9 01       ;
CODE_13F5FB:    STA $06                     ; $13:F5FB: 85 06       ;
CODE_13F5FD:    RTL                         ; $13:F5FD: 6B          ;

CODE_13F5FE:    LDX #$00                    ; $13:F5FE: A2 00       ;
CODE_13F600:    STX $0264                   ; $13:F600: 8E 64 02    ;
CODE_13F603:    JSL CODE_13F6F7             ; $13:F603: 22 F7 F6 13 ;
CODE_13F607:    JSL CODE_13F77D             ; $13:F607: 22 7D F7 13 ;
CODE_13F60B:    LDX #$00                    ; $13:F60B: A2 00       ;
CODE_13F60D:    JSL CODE_13F674             ; $13:F60D: 22 74 F6 13 ;
CODE_13F611:    LDA $0261                   ; $13:F611: AD 61 02    ;
CODE_13F614:    CMP $025A                   ; $13:F614: CD 5A 02    ;
CODE_13F617:    BNE CODE_13F63B             ; $13:F617: D0 22       ;
CODE_13F619:    LDA $0262                   ; $13:F619: AD 62 02    ;
CODE_13F61C:    CLC                         ; $13:F61C: 18          ;
CODE_13F61D:    ADC #$20                    ; $13:F61D: 69 20       ;
CODE_13F61F:    CMP $025B                   ; $13:F61F: CD 5B 02    ;
CODE_13F622:    BNE CODE_13F63B             ; $13:F622: D0 17       ;
CODE_13F624:    LDA $06                     ; $13:F624: A5 06       ;
CODE_13F626:    TAX                         ; $13:F626: AA          ;
CODE_13F627:    BEQ CODE_13F62E             ; $13:F627: F0 05       ;
CODE_13F629:    LDA $0519                   ; $13:F629: AD 19 05    ;
CODE_13F62C:    STA $E1                     ; $13:F62C: 85 E1       ;
CODE_13F62E:    INC $0264                   ; $13:F62E: EE 64 02    ;
CODE_13F631:    STZ $02AC                   ; $13:F631: 9C AC 02    ;
CODE_13F634:    STZ $02B0                   ; $13:F634: 9C B0 02    ;
CODE_13F637:    STZ $02B1                   ; $13:F637: 9C B1 02    ;
CODE_13F63A:    RTL                         ; $13:F63A: 6B          ;

CODE_13F63B:    LDA $025B                   ; $13:F63B: AD 5B 02    ;
CODE_13F63E:    AND #$20                    ; $13:F63E: 29 20       ;
CODE_13F640:    BNE CODE_13F650             ; $13:F640: D0 0E       ;
CODE_13F642:    LDA $0257                   ; $13:F642: AD 57 02    ;
CODE_13F645:    CMP $0263                   ; $13:F645: CD 63 02    ;
CODE_13F648:    BEQ CODE_13F624             ; $13:F648: F0 DA       ;
CODE_13F64A:    LDX #$00                    ; $13:F64A: A2 00       ;
CODE_13F64C:    JSL CODE_13F6D0             ; $13:F64C: 22 D0 F6 13 ;
CODE_13F650:    RTL                         ; $13:F650: 6B          ;

CODE_13F651:    LDA $025C,x                 ; $13:F651: BD 5C 02    ;
CODE_13F654:    SEC                         ; $13:F654: 38          ;
CODE_13F655:    SBC #$20                    ; $13:F655: E9 20       ;
CODE_13F657:    STA $025C,x                 ; $13:F657: 9D 5C 02    ;
CODE_13F65A:    BCS CODE_13F673                     ; $13:F65A: B0 17       ;
CODE_13F65C:    LDA $02B9,x                 ; $13:F65C: BD B9 02    ;
CODE_13F65F:    SEC                         ; $13:F65F: 38          ;
CODE_13F660:    SBC #$01                    ; $13:F660: E9 01       ;
CODE_13F662:    CMP #$FF                    ; $13:F662: C9 FF       ;
CODE_13F664:    BNE CODE_13F66A             ; $13:F664: D0 04       ;
CODE_13F666:    LDA #$0B                    ; $13:F666: A9 0B       ;
CODE_13F668:    BRA CODE_13F670             ; $13:F668: 80 06       ;

CODE_13F66A:    CMP #$07                    ; $13:F66A: C9 07       ;
CODE_13F66C:    BNE CODE_13F6A2             ; $13:F66C: D0 34       ;
CODE_13F66E:    LDA #$03                    ; $13:F66E: A9 03       ;
CODE_13F670:    STA $02B9,x                 ; $13:F670: 9D B9 02    ;
CODE_13F673:    RTL                         ; $13:F673: 6B          ;

CODE_13F674:    LDA $025B,x                 ; $13:F674: BD 5B 02    ;
CODE_13F677:    CLC                         ; $13:F677: 18          ;
CODE_13F678:    ADC #$20                    ; $13:F678: 69 20       ;
CODE_13F67A:    STA $025B,x                 ; $13:F67A: 9D 5B 02    ;
CODE_13F67D:    BCC CODE_13F6A5             ; $13:F67D: 90 26       ;
CODE_13F67F:    CPX #$00                    ; $13:F67F: E0 00       ;
CODE_13F681:    BNE CODE_13F68D             ; $13:F681: D0 0A       ;
CODE_13F683:    LDA $025A                   ; $13:F683: AD 5A 02    ;
CODE_13F686:    CLC                         ; $13:F686: 18          ;
CODE_13F687:    ADC #$01                    ; $13:F687: 69 01       ;
CODE_13F689:    STA $025A                   ; $13:F689: 8D 5A 02    ;
CODE_13F68C:    RTL                         ; $13:F68C: 6B          ;

CODE_13F68D:    DEX                         ; $13:F68D: CA          ;
CODE_13F68E:    LDA $02B9,x                 ; $13:F68E: BD B9 02    ;
CODE_13F691:    CLC                         ; $13:F691: 18          ;
CODE_13F692:    ADC #$01                    ; $13:F692: 69 01       ;
CODE_13F694:    CMP #$04                    ; $13:F694: C9 04       ;
CODE_13F696:    BNE CODE_13F69C             ; $13:F696: D0 04       ;
CODE_13F698:    LDA #$08                    ; $13:F698: A9 08       ;
CODE_13F69A:    BRA CODE_13F6A2             ; $13:F69A: 80 06       ;

CODE_13F69C:    CMP #$0C                    ; $13:F69C: C9 0C       ;
CODE_13F69E:    BNE CODE_13F6A2             ; $13:F69E: D0 02       ;
CODE_13F6A0:    LDA #$00                    ; $13:F6A0: A9 00       ;
CODE_13F6A2:    STA $02B9,x                 ; $13:F6A2: 9D B9 02    ;
CODE_13F6A5:    RTL                         ; $13:F6A5: 6B          ;

CODE_13F6A6:    LDA $0258,x                 ; $13:F6A6: BD 58 02    ;
CODE_13F6A9:    SEC                         ; $13:F6A9: 38          ;
CODE_13F6AA:    SBC #$10                    ; $13:F6AA: E9 10       ;
CODE_13F6AC:    STA $0258,x                 ; $13:F6AC: 9D 58 02    ;
CODE_13F6AF:    AND #$F0                    ; $13:F6AF: 29 F0       ;
CODE_13F6B1:    CMP #$F0                    ; $13:F6B1: C9 F0       ;
CODE_13F6B3:    BNE CODE_13F6CF             ; $13:F6B3: D0 1A       ;
CODE_13F6B5:    LDA $0258,x                 ; $13:F6B5: BD 58 02    ;
CODE_13F6B8:    AND #$0F                    ; $13:F6B8: 29 0F       ;
CODE_13F6BA:    CLC                         ; $13:F6BA: 18          ;
CODE_13F6BB:    ADC #$E0                    ; $13:F6BB: 69 E0       ;
CODE_13F6BD:    STA $0258,x                 ; $13:F6BD: 9D 58 02    ;
CODE_13F6C0:    DEC $0258,x                 ; $13:F6C0: DE 58 02    ;
CODE_13F6C3:    LDA $0258,x                 ; $13:F6C3: BD 58 02    ;
CODE_13F6C6:    CMP #$DF                    ; $13:F6C6: C9 DF       ;
CODE_13F6C8:    BNE CODE_13F6CF             ; $13:F6C8: D0 05       ;
CODE_13F6CA:    LDA #$E9                    ; $13:F6CA: A9 E9       ;
CODE_13F6CC:    STA $0258,x                 ; $13:F6CC: 9D 58 02    ;
CODE_13F6CF:    RTL                         ; $13:F6CF: 6B          ;

CODE_13F6D0:    LDA $0257,x                 ; $13:F6D0: BD 57 02    ;
CODE_13F6D3:    CLC                         ; $13:F6D3: 18          ;
CODE_13F6D4:    ADC #$10                    ; $13:F6D4: 69 10       ;
CODE_13F6D6:    STA $0257,x                 ; $13:F6D6: 9D 57 02    ;
CODE_13F6D9:    AND #$F0                    ; $13:F6D9: 29 F0       ;
CODE_13F6DB:    CMP #$F0                    ; $13:F6DB: C9 F0       ;
CODE_13F6DD:    BNE CODE_13F6F6             ; $13:F6DD: D0 17       ;
CODE_13F6DF:    LDA $0257,x                 ; $13:F6DF: BD 57 02    ;
CODE_13F6E2:    AND #$0F                    ; $13:F6E2: 29 0F       ;
CODE_13F6E4:    STA $0257,x                 ; $13:F6E4: 9D 57 02    ;
CODE_13F6E7:    INC $0257,x                 ; $13:F6E7: FE 57 02    ;
CODE_13F6EA:    LDA $0257,x                 ; $13:F6EA: BD 57 02    ;
CODE_13F6ED:    CMP #$0A                    ; $13:F6ED: C9 0A       ;
CODE_13F6EF:    BNE CODE_13F6F6             ; $13:F6EF: D0 05       ;
CODE_13F6F1:    LDA #$00                    ; $13:F6F1: A9 00       ;
CODE_13F6F3:    STA $0257,x                 ; $13:F6F3: 9D 57 02    ;
CODE_13F6F6:    RTL                         ; $13:F6F6: 6B          ;

CODE_13F6F7:    PHX                         ; $13:F6F7: DA          ;
CODE_13F6F8:    LDA $0257,x                 ; $13:F6F8: BD 57 02    ;
CODE_13F6FB:    AND #$0F                    ; $13:F6FB: 29 0F       ;
CODE_13F6FD:    TAY                         ; $13:F6FD: A8          ;
CODE_13F6FE:    LDA.w DATA_11AAF0,y                 ; $13:F6FE: B9 F0 AA    ;
CODE_13F701:    STA $0269                   ; $13:F701: 8D 69 02    ;
CODE_13F704:    LDA $0534                   ; $13:F704: AD 34 05    ;
CODE_13F707:    ASL A                       ; $13:F707: 0A          ;
CODE_13F708:    ASL A                       ; $13:F708: 0A          ;
CODE_13F709:    ASL A                       ; $13:F709: 0A          ;
CODE_13F70A:    ASL A                       ; $13:F70A: 0A          ;
CODE_13F70B:    CLC                         ; $13:F70B: 18          ;
CODE_13F70C:    ADC.w DATA_11AAFB,y                 ; $13:F70C: 79 FB AA    ;
CODE_13F70F:    STA $026A                   ; $13:F70F: 8D 6A 02    ;
CODE_13F712:    LDA #$7F                    ; $13:F712: A9 7F       ;
CODE_13F714:    STA $026B                   ; $13:F714: 8D 6B 02    ;
CODE_13F717:    LDA $0257,x                 ; $13:F717: BD 57 02    ;
CODE_13F71A:    AND #$F0                    ; $13:F71A: 29 F0       ;
CODE_13F71C:    STA $0256                   ; $13:F71C: 8D 56 02    ;
CODE_13F71F:    CPX #$00                    ; $13:F71F: E0 00       ;
CODE_13F721:    BNE CODE_13F73E             ; $13:F721: D0 1B       ;
CODE_13F723:    LDA $025A                   ; $13:F723: AD 5A 02    ;
CODE_13F726:    CMP #$FF                    ; $13:F726: C9 FF       ;
CODE_13F728:    BNE CODE_13F72E             ; $13:F728: D0 04       ;
CODE_13F72A:    LDA #$0B                    ; $13:F72A: A9 0B       ;
CODE_13F72C:    BRA CODE_13F742             ; $13:F72C: 80 14       ;

CODE_13F72E:    CMP #$04                    ; $13:F72E: C9 04       ;
CODE_13F730:    BNE CODE_13F736             ; $13:F730: D0 04       ;
CODE_13F732:    LDA #$08                    ; $13:F732: A9 08       ;
CODE_13F734:    BRA CODE_13F742             ; $13:F734: 80 0C       ;

CODE_13F736:    CMP #$0C                    ; $13:F736: C9 0C       ;
CODE_13F738:    BNE CODE_13F742             ; $13:F738: D0 08       ;
CODE_13F73A:    LDA #$00                    ; $13:F73A: A9 00       ;
CODE_13F73C:    BRA CODE_13F742             ; $13:F73C: 80 04       ;

CODE_13F73E:    DEX                         ; $13:F73E: CA          ;
CODE_13F73F:    LDA $02B9,x                 ; $13:F73F: BD B9 02    ;
CODE_13F742:    STA $025A                   ; $13:F742: 8D 5A 02    ;
CODE_13F745:    PLX                         ; $13:F745: FA          ;
CODE_13F746:    LDA $025B,x                 ; $13:F746: BD 5B 02    ;
CODE_13F749:    STA $025B                   ; $13:F749: 8D 5B 02    ;
CODE_13F74C:    RTL                         ; $13:F74C: 6B          ;

CODE_13F74D:    LDA $0257,x                 ; $13:F74D: BD 57 02    ;
CODE_13F750:    AND #$10                    ; $13:F750: 29 10       ;
CODE_13F752:    BEQ CODE_13F74C             ; $13:F752: F0 F8       ;
CODE_13F754:    LDA $0257,x                 ; $13:F754: BD 57 02    ;
CODE_13F757:    STA $03                     ; $13:F757: 85 03       ;
CODE_13F759:    SEC                         ; $13:F759: 38          ;
CODE_13F75A:    SBC $01                     ; $13:F75A: E5 01       ;
CODE_13F75C:    STA $0257,x                 ; $13:F75C: 9D 57 02    ;
CODE_13F75F:    JSL CODE_13F6F7             ; $13:F75F: 22 F7 F6 13 ;
CODE_13F763:    LDA #$0F                    ; $13:F763: A9 0F       ;
CODE_13F765:    STA $E3                     ; $13:F765: 85 E3       ;
CODE_13F767:    LDA #$00                    ; $13:F767: A9 00       ;
CODE_13F769:    STA $0255                   ; $13:F769: 8D 55 02    ;
CODE_13F76C:    DEC $E3                     ; $13:F76C: C6 E3       ;
CODE_13F76E:    LDA $E3                     ; $13:F76E: A5 E3       ;
CODE_13F770:    BPL CODE_13F76C             ; $13:F770: 10 FA       ;
CODE_13F772:    LDA $03                     ; $13:F772: A5 03       ;
CODE_13F774:    STA $0257,x                 ; $13:F774: 9D 57 02    ;
CODE_13F777:    DEC $E4                     ; $13:F777: C6 E4       ;
CODE_13F779:    JML CODE_13F6F7             ; $13:F779: 5C F7 F6 13 ;

CODE_13F77D:    LDA $7F0000                 ; $13:F77D: AF 00 00 7F ;
CODE_13F781:    TAX                         ; $13:F781: AA          ;
CODE_13F782:    LDA $0269                   ; $13:F782: AD 69 02    ;
CODE_13F785:    STA $C4                     ; $13:F785: 85 C4       ;
CODE_13F787:    LDA $026A                   ; $13:F787: AD 6A 02    ;
CODE_13F78A:    STA $C5                     ; $13:F78A: 85 C5       ;
CODE_13F78C:    LDA $026B                   ; $13:F78C: AD 6B 02    ;
CODE_13F78F:    STA $C6                     ; $13:F78F: 85 C6       ;
CODE_13F791:    LDA $025A                   ; $13:F791: AD 5A 02    ;
CODE_13F794:    ORA #$10                    ; $13:F794: 09 10       ;
CODE_13F796:    STA $7F0002,x               ; $13:F796: 9F 02 00 7F ;
CODE_13F79A:    INX                         ; $13:F79A: E8          ;
CODE_13F79B:    LDA $025B                   ; $13:F79B: AD 5B 02    ;
CODE_13F79E:    STA $7F0002,x               ; $13:F79E: 9F 02 00 7F ;
CODE_13F7A2:    INX                         ; $13:F7A2: E8          ;
CODE_13F7A3:    LDA #$00                    ; $13:F7A3: A9 00       ;
CODE_13F7A5:    STA $7F0002,x               ; $13:F7A5: 9F 02 00 7F ;
CODE_13F7A9:    INX                         ; $13:F7A9: E8          ;
CODE_13F7AA:    LDA #$40                    ; $13:F7AA: A9 40       ;
CODE_13F7AC:    STA $7F0002,x               ; $13:F7AC: 9F 02 00 7F ;
CODE_13F7B0:    INX                         ; $13:F7B0: E8          ;
CODE_13F7B1:    STZ $0255                   ; $13:F7B1: 9C 55 02    ;
CODE_13F7B4:    LDA #$0F                    ; $13:F7B4: A9 0F       ;
CODE_13F7B6:    STA $E3                     ; $13:F7B6: 85 E3       ;
CODE_13F7B8:    LDA $02DF                   ; $13:F7B8: AD DF 02    ;
CODE_13F7BB:    STA $00                     ; $13:F7BB: 85 00       ;
CODE_13F7BD:    LDA $02E0                   ; $13:F7BD: AD E0 02    ;
CODE_13F7C0:    STA $01                     ; $13:F7C0: 85 01       ;
CODE_13F7C2:    LDA $02E1                   ; $13:F7C2: AD E1 02    ;
CODE_13F7C5:    STA $02                     ; $13:F7C5: 85 02       ;
CODE_13F7C7:    LDY $0256                   ; $13:F7C7: AC 56 02    ;
CODE_13F7CA:    REP #$30                    ; $13:F7CA: C2 30       ;
CODE_13F7CC:    LDA [$C4],y             ; $13:F7CC: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
CODE_13F7CE:    AND #$00FF              ; $13:F7CE: 29 FF 00    ;  |
CODE_13F7D1:    CMP #$00FF              ; $13:F7D1: C9 FF 00    ;  |
CODE_13F7D4:    BNE CODE_13F7E6         ; $13:F7D4: D0 10       ; /
CODE_13F7D6:    LDA.l PNTR_13A613       ; $13:F7D6: AF 13 A6 13 ; \ Empty tile.    
CODE_13F7DA:    STA $00                 ; $13:F7DA: 85 00       ;  | ($13A615)
CODE_13F7DC:    LDA #$0013              ; $13:F7DC: A9 13 00    ;  |
CODE_13F7DF:    STA $02                 ; $13:F7DF: 85 02       ; /
CODE_13F7E1:    LDY #$0000              ; $13:F7E1: A0 00 00    ; Y = #$0000.
CODE_13F7E4:    BRA CODE_13F7EA             ; $13:F7E4: 80 04       ;

CODE_13F7E6:    ASL A                       ; $13:F7E6: 0A          ;
CODE_13F7E7:    ASL A                       ; $13:F7E7: 0A          ;
CODE_13F7E8:    ASL A                       ; $13:F7E8: 0A          ;
CODE_13F7E9:    TAY                         ; $13:F7E9: A8          ;
CODE_13F7EA:    LDA $02C1                   ; $13:F7EA: AD C1 02    ;
CODE_13F7ED:    AND #$00FF                  ; $13:F7ED: 29 FF 00    ;
CODE_13F7F0:    BEQ CODE_13F7F6             ; $13:F7F0: F0 04       ;
CODE_13F7F2:    INY                         ; $13:F7F2: C8          ;
CODE_13F7F3:    INY                         ; $13:F7F3: C8          ;
CODE_13F7F4:    INY                         ; $13:F7F4: C8          ;
CODE_13F7F5:    INY                         ; $13:F7F5: C8          ;
CODE_13F7F6:    REP #$20                    ; $13:F7F6: C2 20       ;
CODE_13F7F8:    LDA [$00],y                 ; $13:F7F8: B7 00       ;
CODE_13F7FA:    STA $7F0002,x               ; $13:F7FA: 9F 02 00 7F ;
CODE_13F7FE:    SEP #$20                    ; $13:F7FE: E2 20       ;
CODE_13F800:    INC $0255                   ; $13:F800: EE 55 02    ;
CODE_13F803:    INX                         ; $13:F803: E8          ;
CODE_13F804:    INX                         ; $13:F804: E8          ;
CODE_13F805:    INY                         ; $13:F805: C8          ;
CODE_13F806:    INY                         ; $13:F806: C8          ;
CODE_13F807:    LDA $0255                   ; $13:F807: AD 55 02    ;
CODE_13F80A:    LSR A                       ; $13:F80A: 4A          ;
CODE_13F80B:    BCS CODE_13F7F6                     ; $13:F80B: B0 E9       ;
CODE_13F80D:    INC $0256                   ; $13:F80D: EE 56 02    ;
CODE_13F810:    SEP #$30                    ; $13:F810: E2 30       ;
CODE_13F812:    LDA $0255                   ; $13:F812: AD 55 02    ;
CODE_13F815:    CMP #$20                    ; $13:F815: C9 20       ;
CODE_13F817:    BCC CODE_13F7B8             ; $13:F817: 90 9F       ;
CODE_13F819:    LDA #$FF                    ; $13:F819: A9 FF       ;
CODE_13F81B:    STA $7F0002,x               ; $13:F81B: 9F 02 00 7F ;
CODE_13F81F:    TXA                         ; $13:F81F: 8A          ;
CODE_13F820:    STA $7F0000                 ; $13:F820: 8F 00 00 7F ;
CODE_13F824:    BRA CODE_13F862             ; $13:F824: 80 3C       ;

CODE_13F826:    LDA $E4                     ; $13:F826: A5 E4       ;
CODE_13F828:    BEQ CODE_13F82F             ; $13:F828: F0 05       ;
CODE_13F82A:    DEC $E4                     ; $13:F82A: C6 E4       ;
CODE_13F82C:    JMP CODE_13F837             ; $13:F82C: 4C 37 F8    ;

CODE_13F82F:    LDA $D8                     ; $13:F82F: A5 D8       ;
CODE_13F831:    LSR A                       ; $13:F831: 4A          ;
CODE_13F832:    BCS CODE_13F837                     ; $13:F832: B0 03       ;
CODE_13F834:    JMP CODE_13F837         ; $13:F834: 4C 37 F8    ;
           
CODE_13F837:    LDX #$00                    ; $13:F837: A2 00       ;
CODE_13F839:    LDA $D8                     ; $13:F839: A5 D8       ;
CODE_13F83B:    LSR A                       ; $13:F83B: 4A          ;
CODE_13F83C:    BCC CODE_13F852             ; $13:F83C: 90 14       ;
CODE_13F83E:    INX                         ; $13:F83E: E8          ;
CODE_13F83F:    LDA $0258,x                 ; $13:F83F: BD 58 02    ;
CODE_13F842:    AND #$F0                    ; $13:F842: 29 F0       ;
CODE_13F844:    CMP #$E0                    ; $13:F844: C9 E0       ;
CODE_13F846:    BEQ CODE_13F84F             ; $13:F846: F0 07       ;
CODE_13F848:    LDA $0258,x                 ; $13:F848: BD 58 02    ;
CODE_13F84B:    AND #$10                    ; $13:F84B: 29 10       ;
CODE_13F84D:    BNE CODE_13F862             ; $13:F84D: D0 13       ;
CODE_13F84F:    JMP CODE_13F862             ; $13:F84F: 4C 62 F8    ;

CODE_13F852:    LDA $0258,x                 ; $13:F852: BD 58 02    ;
CODE_13F855:    AND #$F0                    ; $13:F855: 29 F0       ;
CODE_13F857:    CMP #$E0                    ; $13:F857: C9 E0       ;
CODE_13F859:    BEQ CODE_13F862             ; $13:F859: F0 07       ;
CODE_13F85B:    LDA $0258,x                 ; $13:F85B: BD 58 02    ;
CODE_13F85E:    AND #$10                    ; $13:F85E: 29 10       ;
CODE_13F860:    BEQ CODE_13F862             ; $13:F860: F0 00       ;
CODE_13F862:    LDA $02C1                   ; $13:F862: AD C1 02    ;
CODE_13F865:    EOR #$01                    ; $13:F865: 49 01       ;
CODE_13F867:    STA $02C1                   ; $13:F867: 8D C1 02    ;
CODE_13F86A:    RTL                         ; $13:F86A: 6B          ;

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

CODE_13F900:    TXA                     ; $13:F900: 8A          ;
CODE_13F901:    PHA                     ; $13:F901: 48          ;
CODE_13F902:    LDA #$00                ; $13:F902: A9 00       ;
CODE_13F904:    STA $00                 ; $13:F904: 85 00       ;
CODE_13F906:    STA $01                 ; $13:F906: 85 01       ;
CODE_13F908:    LDA.w DATA_11CB0E,y     ; $13:F908: B9 0E CB    ;
CODE_13F90B:    BPL CODE_13F90F         ; $13:F90B: 10 02       ;
CODE_13F90D:    DEC $00                 ; $13:F90D: C6 00       ;
CODE_13F90F:    CLC                     ; $13:F90F: 18          ;
CODE_13F910:    ADC $28,x                   ; $13:F910: 75 28       ;
CODE_13F912:    AND #$F0                    ; $13:F912: 29 F0       ;
CODE_13F914:    STA $05                     ; $13:F914: 85 05       ;
CODE_13F916:    PHP                         ; $13:F916: 08          ;
CODE_13F917:    LSR A                       ; $13:F917: 4A          ;
CODE_13F918:    LSR A                       ; $13:F918: 4A          ;
CODE_13F919:    LSR A                       ; $13:F919: 4A          ;
CODE_13F91A:    LSR A                       ; $13:F91A: 4A          ;
CODE_13F91B:    STA $E5                     ; $13:F91B: 85 E5       ;
CODE_13F91D:    PLP                         ; $13:F91D: 28          ;
CODE_13F91E:    LDA $14,x                   ; $13:F91E: B5 14       ;
CODE_13F920:    ADC $00                     ; $13:F920: 65 00       ;
CODE_13F922:    STA $02                     ; $13:F922: 85 02       ;
CODE_13F924:    STA $03                     ; $13:F924: 85 03       ;
CODE_13F926:    LDA $EB                     ; $13:F926: A5 EB       ;
CODE_13F928:    BNE CODE_13F92E             ; $13:F928: D0 04       ;
CODE_13F92A:    STA $02                     ; $13:F92A: 85 02       ;
CODE_13F92C:    STA $03                     ; $13:F92C: 85 03       ;
CODE_13F92E:    LDA.w DATA_11CB56,y                 ; $13:F92E: B9 56 CB    ;
CODE_13F931:    BPL CODE_13F935             ; $13:F931: 10 02       ;
CODE_13F933:    DEC $01                     ; $13:F933: C6 01       ;
CODE_13F935:    CLC                         ; $13:F935: 18          ;
CODE_13F936:    ADC $32,x                   ; $13:F936: 75 32       ;
CODE_13F938:    AND #$F0                    ; $13:F938: 29 F0       ;
CODE_13F93A:    STA $06                     ; $13:F93A: 85 06       ;
CODE_13F93C:    STA $E6                     ; $13:F93C: 85 E6       ;
CODE_13F93E:    LDA $1E,x                   ; $13:F93E: B5 1E       ;
CODE_13F940:    ADC $01                     ; $13:F940: 65 01       ;
CODE_13F942:    STA $01                     ; $13:F942: 85 01       ;
CODE_13F944:    STA $04                     ; $13:F944: 85 04       ;
CODE_13F946:    JSR CODE_13F9EE             ; $13:F946: 20 EE F9    ;
CODE_13F949:    BCC CODE_13F94F             ; $13:F949: 90 04       ;
CODE_13F94B:    LDA #$00                    ; $13:F94B: A9 00       ;
CODE_13F94D:    BEQ CODE_13F997             ; $13:F94D: F0 48       ;
CODE_13F94F:    LDX $0D                     ; $13:F94F: A6 0D       ;
CODE_13F951:    STX $070F                   ; $13:F951: 8E 0F 07    ;
CODE_13F954:    LDX $0E                     ; $13:F954: A6 0E       ;
CODE_13F956:    STX $0710                   ; $13:F956: 8E 10 07    ;
CODE_13F959:    LDX $0F                     ; $13:F959: A6 0F       ;
CODE_13F95B:    STX $0711                   ; $13:F95B: 8E 11 07    ;
CODE_13F95E:    LDX $03                     ; $13:F95E: A6 03       ;
CODE_13F960:    PHX                         ; $13:F960: DA          ;
CODE_13F961:    JSR CODE_13FA5C             ; $13:F961: 20 5C FA    ;
CODE_13F964:    REP #$20                    ; $13:F964: C2 20       ;
CODE_13F966:    LDA $01                     ; $13:F966: A5 01       ;
CODE_13F968:    CLC                         ; $13:F968: 18          ;
CODE_13F969:    ADC #$7000                  ; $13:F969: 69 00 70    ;
CODE_13F96C:    STA $0D                     ; $13:F96C: 85 0D       ;
CODE_13F96E:    SEP #$20                    ; $13:F96E: E2 20       ;
CODE_13F970:    LDA $03                     ; $13:F970: A5 03       ;
CODE_13F972:    STA $0F                     ; $13:F972: 85 0F       ;
CODE_13F974:    LDY $E7                 ; $13:F974: A4 E7       ; Get index (position) to the corresponding Map16 tile.
CODE_13F976:    LDA [$0D],y             ; $13:F976: B7 0D       ; \ If Map16 page 0, branch.
CODE_13F978:    BEQ CODE_13F983         ; $13:F978: F0 09       ; /
CODE_13F97A:    LDA [$01],y             ; $13:F97A: B7 01       ; \ All tiles on page 1 must act like...
CODE_13F97C:    TAX                     ; $13:F97C: AA          ;  |
CODE_13F97D:    LDA.l DATA_14CCBD,x     ; $13:F97D: BF BD CC 14 ;  | $2C, $40, $AB or $C0...
CODE_13F981:    BRA CODE_13F985         ; $13:F981: 80 02       ; / from page 0.

CODE_13F983:    LDA [$01],y             ; $13:F983: B7 01       ; This is for page 0, just act what it's supposed to act like.
CODE_13F985:    PLX                     ; $13:F985: FA          ; Pull X index back.
CODE_13F986:    STX $03                     ; $13:F986: 86 03       ;
CODE_13F988:    LDX $070F                   ; $13:F988: AE 0F 07    ;
CODE_13F98B:    STX $0D                     ; $13:F98B: 86 0D       ;
CODE_13F98D:    LDX $0710                   ; $13:F98D: AE 10 07    ;
CODE_13F990:    STX $0E                     ; $13:F990: 86 0E       ;
CODE_13F992:    LDX $0711                   ; $13:F992: AE 11 07    ;
CODE_13F995:    STX $0F                     ; $13:F995: 86 0F       ;
CODE_13F997:    STA $00                 ; $13:F997: 85 00       ; Map16 tile 'acts like'.
CODE_13F999:    PLA                         ; $13:F999: 68          ;
CODE_13F99A:    TAX                         ; $13:F99A: AA          ;
CODE_13F99B:    RTL                         ; $13:F99B: 6B          ;

CODE_13F99C:    PHA                         ; $13:F99C: 48          ;
CODE_13F99D:    AND #$C0                    ; $13:F99D: 29 C0       ;
CODE_13F99F:    ASL A                       ; $13:F99F: 0A          ;
CODE_13F9A0:    ROL A                       ; $13:F9A0: 2A          ;
CODE_13F9A1:    ROL A                       ; $13:F9A1: 2A          ;
CODE_13F9A2:    ADC.w DATA_119B9C,y                 ; $13:F9A2: 79 9C 9B    ;
CODE_13F9A5:    TAY                         ; $13:F9A5: A8          ;
CODE_13F9A6:    PLA                         ; $13:F9A6: 68          ;
CODE_13F9A7:    CMP.w DATA_11CDA8,y                 ; $13:F9A7: D9 A8 CD    ;
CODE_13F9AA:    RTL                         ; $13:F9AA: 6B          ;

CODE_13F9AB:    INC $04BE                   ; $13:F9AB: EE BE 04    ;
CODE_13F9AE:    INC $041B                   ; $13:F9AE: EE 1B 04    ;
CODE_13F9B1:    JSL CODE_1287BC             ; $13:F9B1: 22 BC 87 12 ;
CODE_13F9B5:    LDA #$01                    ; $13:F9B5: A9 01       ;
CODE_13F9B7:    STA $0601                   ; $13:F9B7: 8D 01 06    ;
CODE_13F9BA:    RTL                         ; $13:F9BA: 6B          ;

CODE_13F9BB:    LDX #$00                    ; $13:F9BB: A2 00       ;
CODE_13F9BD:    LDY $6E                     ; $13:F9BD: A4 6E       ;
CODE_13F9BF:    LDA $3C                     ; $13:F9BF: A5 3C       ;
CODE_13F9C1:    EOR.w DATA_119BBA,y                 ; $13:F9C1: 59 BA 9B    ;
CODE_13F9C4:    BPL CODE_13F9C8             ; $13:F9C4: 10 02       ;
CODE_13F9C6:    STX $3C                     ; $13:F9C6: 86 3C       ;
CODE_13F9C8:    LDA $04CC                   ; $13:F9C8: AD CC 04    ;
CODE_13F9CB:    EOR.w DATA_119BBA,y                 ; $13:F9CB: 59 BA 9B    ;
CODE_13F9CE:    BPL CODE_13F9D3             ; $13:F9CE: 10 03       ;
CODE_13F9D0:    STX $04CC                   ; $13:F9D0: 8E CC 04    ;
CODE_13F9D3:    STX $0407                   ; $13:F9D3: 8E 07 04    ;
CODE_13F9D6:    RTL                         ; $13:F9D6: 6B          ;

CODE_13F9D7:    LDA #$02                ; $13:F9D7: A9 02       ; \ Pick something up animation.
CODE_13F9D9:    STA $50                 ; $13:F9D9: 85 50       ; /
CODE_13F9DB:    STZ $078C                   ; $13:F9DB: 9C 8C 07    ;
CODE_13F9DE:    LDA #$06                ; $13:F9DE: A9 06       ; \ Amount of frames it should take to pick the enemy up.
CODE_13F9E0:    STA $82                 ; $13:F9E0: 85 82       ; /
CODE_13F9E2:    LDA #$08                    ; $13:F9E2: A9 08       ;
CODE_13F9E4:    STA $C7                     ; $13:F9E4: 85 C7       ;
CODE_13F9E6:    INC $9C                     ; $13:F9E6: E6 9C       ;
CODE_13F9E8:    LDA #$3C                ; $13:F9E8: A9 3C       ; \ Picking something up sound effect.
CODE_13F9EA:    STA $1DE3               ; $13:F9EA: 8D E3 1D    ; /
CODE_13F9ED:    RTL                     ; $13:F9ED: 6B          ; Return.

CODE_13F9EE:    LDY $01                     ; $13:F9EE: A4 01       ;
CODE_13F9F0:    LDA $E6                     ; $13:F9F0: A5 E6       ;
CODE_13F9F2:    JSR CODE_13FA8F             ; $13:F9F2: 20 8F FA    ;
CODE_13F9F5:    STY $01                     ; $13:F9F5: 84 01       ;
CODE_13F9F7:    STA $E6                     ; $13:F9F7: 85 E6       ;
CODE_13F9F9:    LDY $EB                     ; $13:F9F9: A4 EB       ;
CODE_13F9FB:    LDA $0001,y                 ; $13:F9FB: B9 01 00    ;
CODE_13F9FE:    STA $E9                     ; $13:F9FE: 85 E9       ;
CODE_13FA00:    LDA $02                     ; $13:FA00: A5 02       ;
CODE_13FA02:    CMP.w DATA_119BB7,y                 ; $13:FA02: D9 B7 9B    ;
CODE_13FA05:    BCS CODE_13FA0C                     ; $13:FA05: B0 05       ;
CODE_13FA07:    LDA $01                     ; $13:FA07: A5 01       ;
CODE_13FA09:    CMP.w DATA_119BB6,y                 ; $13:FA09: D9 B6 9B    ;
CODE_13FA0C:    RTS                         ; $13:FA0C: 60          ;

CODE_13FA0D:    PHA                         ; $13:FA0D: 48          ;
CODE_13FA0E:    LDA $29,x                   ; $13:FA0E: B5 29       ;
CODE_13FA10:    CLC                         ; $13:FA10: 18          ;
CODE_13FA11:    ADC #$08                    ; $13:FA11: 69 08       ;
CODE_13FA13:    PHP                         ; $13:FA13: 08          ;
CODE_13FA14:    LSR A                       ; $13:FA14: 4A          ;
CODE_13FA15:    LSR A                       ; $13:FA15: 4A          ;
CODE_13FA16:    LSR A                       ; $13:FA16: 4A          ;
CODE_13FA17:    LSR A                       ; $13:FA17: 4A          ;
CODE_13FA18:    STA $E5                     ; $13:FA18: 85 E5       ;
CODE_13FA1A:    PLP                         ; $13:FA1A: 28          ;
CODE_13FA1B:    LDA $15,x                   ; $13:FA1B: B5 15       ;
CODE_13FA1D:    LDY $EB                     ; $13:FA1D: A4 EB       ;
CODE_13FA1F:    BEQ CODE_13FA23             ; $13:FA1F: F0 02       ;
CODE_13FA21:    ADC #$00                    ; $13:FA21: 69 00       ;
CODE_13FA23:    STA $02                     ; $13:FA23: 85 02       ;
CODE_13FA25:    LDA $33,x                   ; $13:FA25: B5 33       ;
CODE_13FA27:    CLC                         ; $13:FA27: 18          ;
CODE_13FA28:    ADC #$08                    ; $13:FA28: 69 08       ;
CODE_13FA2A:    AND #$F0                    ; $13:FA2A: 29 F0       ;
CODE_13FA2C:    STA $E6                     ; $13:FA2C: 85 E6       ;
CODE_13FA2E:    STA $0212                   ; $13:FA2E: 8D 12 02    ;
CODE_13FA31:    LDA $1F,x                   ; $13:FA31: B5 1F       ;
CODE_13FA33:    ADC #$00                    ; $13:FA33: 69 00       ;
CODE_13FA35:    STA $01                     ; $13:FA35: 85 01       ;
CODE_13FA37:    JSR CODE_13F9EE             ; $13:FA37: 20 EE F9    ;
CODE_13FA3A:    PLA                         ; $13:FA3A: 68          ;
CODE_13FA3B:    BCS CODE_13FA41                     ; $13:FA3B: B0 04       ;
CODE_13FA3D:    JSL CODE_128BF4             ; $13:FA3D: 22 F4 8B 12 ;
CODE_13FA41:    RTL                         ; $13:FA41: 6B          ;

CODE_13FA42:    LDA $0628                   ; $13:FA42: AD 28 06    ;
CODE_13FA45:    BNE CODE_13FA5B             ; $13:FA45: D0 14       ;
CODE_13FA47:    LDA $14                     ; $13:FA47: A5 14       ;
CODE_13FA49:    STA $0511                   ; $13:FA49: 8D 11 05    ;
CODE_13FA4C:    LDA $28                     ; $13:FA4C: A5 28       ;
CODE_13FA4E:    STA $0513                   ; $13:FA4E: 8D 13 05    ;
CODE_13FA51:    LDA $1E                     ; $13:FA51: A5 1E       ;
CODE_13FA53:    STA $0512                   ; $13:FA53: 8D 12 05    ;
CODE_13FA56:    LDA $32                     ; $13:FA56: A5 32       ;
CODE_13FA58:    STA $0514                   ; $13:FA58: 8D 14 05    ;
CODE_13FA5B:    RTL                         ; $13:FA5B: 6B          ;

CODE_13FA5C:    LDX $E9                     ; $13:FA5C: A6 E9       ;
CODE_13FA5E:    JSR CODE_13FA69             ; $13:FA5E: 20 69 FA    ;
CODE_13FA61:    LDA $E6                     ; $13:FA61: A5 E6       ;
CODE_13FA63:    CLC                         ; $13:FA63: 18          ;
CODE_13FA64:    ADC $E5                     ; $13:FA64: 65 E5       ;
CODE_13FA66:    STA $E7                     ; $13:FA66: 85 E7       ;
CODE_13FA68:    RTS                         ; $13:FA68: 60          ;

CODE_13FA69:    STY $02F5                   ; $13:FA69: 8C F5 02    ;
CODE_13FA6C:    LDA $0628                   ; $13:FA6C: AD 28 06    ;
CODE_13FA6F:    BEQ CODE_13FA75             ; $13:FA6F: F0 04       ;
CODE_13FA71:    LDA #$00                    ; $13:FA71: A9 00       ;
CODE_13FA73:    BRA CODE_13FA7B             ; $13:FA73: 80 06       ;

CODE_13FA75:    LDY $0534                   ; $13:FA75: AC 34 05    ;
CODE_13FA78:    LDA.w DATA_11AB11,y                 ; $13:FA78: B9 11 AB    ;
CODE_13FA7B:    CLC                         ; $13:FA7B: 18          ;
CODE_13FA7C:    ADC.w DATA_11AAFB,x                 ; $13:FA7C: 7D FB AA    ;
CODE_13FA7F:    STA $02                     ; $13:FA7F: 85 02       ;
CODE_13FA81:    LDA.w DATA_11AAF0,x                 ; $13:FA81: BD F0 AA    ;
CODE_13FA84:    STA $01                     ; $13:FA84: 85 01       ;
CODE_13FA86:    LDA.w DATA_11AB06,x                 ; $13:FA86: BD 06 AB    ;
CODE_13FA89:    STA $03                     ; $13:FA89: 85 03       ;
CODE_13FA8B:    LDY $02F5                   ; $13:FA8B: AC F5 02    ;
CODE_13FA8E:    RTS                         ; $13:FA8E: 60          ;

CODE_13FA8F:    STA $0F                     ; $13:FA8F: 85 0F       ;
CODE_13FA91:    TYA                         ; $13:FA91: 98          ;
CODE_13FA92:    BMI CODE_13FAA5             ; $13:FA92: 30 11       ;
CODE_13FA94:    ASL A                       ; $13:FA94: 0A          ;
CODE_13FA95:    ASL A                       ; $13:FA95: 0A          ;
CODE_13FA96:    ASL A                       ; $13:FA96: 0A          ;
CODE_13FA97:    ASL A                       ; $13:FA97: 0A          ;
CODE_13FA98:    CLC                         ; $13:FA98: 18          ;
CODE_13FA99:    ADC $0F                     ; $13:FA99: 65 0F       ;
CODE_13FA9B:    BCS CODE_13FAA1                     ; $13:FA9B: B0 04       ;
CODE_13FA9D:    CMP #$F0                    ; $13:FA9D: C9 F0       ;
CODE_13FA9F:    BCC CODE_13FAA5             ; $13:FA9F: 90 04       ;
CODE_13FAA1:    CLC                         ; $13:FAA1: 18          ;
CODE_13FAA2:    ADC #$10                    ; $13:FAA2: 69 10       ;
CODE_13FAA4:    INY                         ; $13:FAA4: C8          ;
CODE_13FAA5:    RTS                         ; $13:FAA5: 60          ;

CODE_13FAA6:    LDA $0005,y                 ; $13:FAA6: B9 05 00    ;
CODE_13FAA9:    SEC                         ; $13:FAA9: 38          ;
CODE_13FAAA:    SBC $0006,y                 ; $13:FAAA: F9 06 00    ;
CODE_13FAAD:    BPL CODE_13FAB5             ; $13:FAAD: 10 06       ;
CODE_13FAAF:    EOR #$FF                    ; $13:FAAF: 49 FF       ;
CODE_13FAB1:    CLC                         ; $13:FAB1: 18          ;
CODE_13FAB2:    ADC #$01                    ; $13:FAB2: 69 01       ;
CODE_13FAB4:    DEX                         ; $13:FAB4: CA          ;
CODE_13FAB5:    SEC                         ; $13:FAB5: 38          ;
CODE_13FAB6:    SBC $09,x                   ; $13:FAB6: F5 09       ;
CODE_13FAB8:    RTS                         ; $13:FAB8: 60          ;

CODE_13FAB9:    LDA $0005,y                 ; $13:FAB9: B9 05 00    ;
CODE_13FABC:    SEC                         ; $13:FABC: 38          ;
CODE_13FABD:    SBC $0006,y                 ; $13:FABD: F9 06 00    ;
CODE_13FAC0:    STA $0006,y                 ; $13:FAC0: 99 06 00    ;
CODE_13FAC3:    LDA $0001,y                 ; $13:FAC3: B9 01 00    ;
CODE_13FAC6:    SBC $0002,y                 ; $13:FAC6: F9 02 00    ;
CODE_13FAC9:    BPL CODE_13FADD             ; $13:FAC9: 10 12       ;
CODE_13FACB:    EOR #$FF                    ; $13:FACB: 49 FF       ;
CODE_13FACD:    PHA                         ; $13:FACD: 48          ;
CODE_13FACE:    LDA $0006,y                 ; $13:FACE: B9 06 00    ;
CODE_13FAD1:    EOR #$FF                    ; $13:FAD1: 49 FF       ;
CODE_13FAD3:    CLC                         ; $13:FAD3: 18          ;
CODE_13FAD4:    ADC #$01                    ; $13:FAD4: 69 01       ;
CODE_13FAD6:    STA $0006,y                 ; $13:FAD6: 99 06 00    ;
CODE_13FAD9:    PLA                         ; $13:FAD9: 68          ;
CODE_13FADA:    ADC #$00                    ; $13:FADA: 69 00       ;
CODE_13FADC:    DEX                         ; $13:FADC: CA          ;
CODE_13FADD:    CMP #$00                    ; $13:FADD: C9 00       ;
CODE_13FADF:    BEQ CODE_13FAE3             ; $13:FADF: F0 02       ;
CODE_13FAE1:    SEC                         ; $13:FAE1: 38          ;
CODE_13FAE2:    RTS                         ; $13:FAE2: 60          ;

CODE_13FAE3:    LDA $0006,y                 ; $13:FAE3: B9 06 00    ;
CODE_13FAE6:    SBC $09,x                   ; $13:FAE6: F5 09       ;
CODE_13FAE8:    RTS                         ; $13:FAE8: 60          ;

CODE_13FAE9:    TXA                         ; $13:FAE9: 8A          ;
CODE_13FAEA:    PHA                         ; $13:FAEA: 48          ;
CODE_13FAEB:    LDY #$02                    ; $13:FAEB: A0 02       ;
CODE_13FAED:    TYA                         ; $13:FAED: 98          ;
CODE_13FAEE:    TAX                         ; $13:FAEE: AA          ;
CODE_13FAEF:    INX                         ; $13:FAEF: E8          ;
CODE_13FAF0:    CPY #$00                    ; $13:FAF0: C0 00       ;
CODE_13FAF2:    BNE CODE_13FAFD             ; $13:FAF2: D0 09       ;
CODE_13FAF4:    LDA $EB                     ; $13:FAF4: A5 EB       ;
CODE_13FAF6:    BNE CODE_13FAFD             ; $13:FAF6: D0 05       ;
CODE_13FAF8:    JSR CODE_13FAA6             ; $13:FAF8: 20 A6 FA    ;
CODE_13FAFB:    BRA CODE_13FB00             ; $13:FAFB: 80 03       ;

CODE_13FAFD:    JSR CODE_13FAB9             ; $13:FAFD: 20 B9 FA    ;
CODE_13FB00:    BCS CODE_13FB0F                     ; $13:FB00: B0 0D       ;
CODE_13FB02:    PHA                         ; $13:FB02: 48          ;
CODE_13FB03:    TYA                         ; $13:FB03: 98          ;
CODE_13FB04:    LSR A                       ; $13:FB04: 4A          ;
CODE_13FB05:    TAX                         ; $13:FB05: AA          ;
CODE_13FB06:    PLA                         ; $13:FB06: 68          ;
CODE_13FB07:    STA $0426,x                 ; $13:FB07: 9D 26 04    ;
CODE_13FB0A:    DEY                         ; $13:FB0A: 88          ;
CODE_13FB0B:    DEY                         ; $13:FB0B: 88          ;
CODE_13FB0C:    BPL CODE_13FAED             ; $13:FB0C: 10 DF       ;
CODE_13FB0E:    CLC                         ; $13:FB0E: 18          ;
CODE_13FB0F:    PLA                         ; $13:FB0F: 68          ;
CODE_13FB10:    TAX                         ; $13:FB10: AA          ;
CODE_13FB11:    RTL                         ; $13:FB11: 6B          ;

CODE_13FB12:    LDA $04C7                   ; $13:FB12: AD C7 04    ;
CODE_13FB15:    BEQ CODE_13FB47             ; $13:FB15: F0 30       ;
CODE_13FB17:    DEC $04C7                   ; $13:FB17: CE C7 04    ;
CODE_13FB1A:    REP #$20                    ; $13:FB1A: C2 20       ;
CODE_13FB1C:    LDY $04C7                   ; $13:FB1C: AC C7 04    ;
CODE_13FB1F:    BNE CODE_13FB2D             ; $13:FB1F: D0 0C       ;
CODE_13FB21:    TYA                         ; $13:FB21: 98          ;
CODE_13FB22:    AND #$0003                  ; $13:FB22: 29 03 00    ;
CODE_13FB25:    TAX                         ; $13:FB25: AA          ;
CODE_13FB26:    LDA.l DATA_11AB7B,x                 ; $13:FB26: BF 7B AB 11 ;
CODE_13FB2A:    TXY                         ; $13:FB2A: 9B          ;
CODE_13FB2B:    BRA CODE_13FB30             ; $13:FB2B: 80 03       ;

CODE_13FB2D:    LDA $04BC                   ; $13:FB2D: AD BC 04    ;
CODE_13FB30:    STA $0C00                   ; $13:FB30: 8D 00 0C    ;
CODE_13FB33:    LDA $12D1,y                 ; $13:FB33: B9 D1 12    ;
CODE_13FB36:    STA $0C02                   ; $13:FB36: 8D 02 0C    ;
CODE_13FB39:    LDA $12D2,y                 ; $13:FB39: B9 D2 12    ;
CODE_13FB3C:    STA $0C04                   ; $13:FB3C: 8D 04 0C    ;
CODE_13FB3F:    LDA $12D3,y                 ; $13:FB3F: B9 D3 12    ;
CODE_13FB42:    STA $0C06                   ; $13:FB42: 8D 06 0C    ;
CODE_13FB45:    SEP #$20                    ; $13:FB45: E2 20       ;
CODE_13FB47:    LDA #$28                    ; $13:FB47: A9 28       ;
CODE_13FB49:    STA $00                     ; $13:FB49: 85 00       ;
CODE_13FB4B:    LDA $04C3                   ; $13:FB4B: AD C3 04    ;
CODE_13FB4E:    BEQ CODE_13FB56             ; $13:FB4E: F0 06       ;
CODE_13FB50:    AND #$F0                    ; $13:FB50: 29 F0       ;
CODE_13FB52:    LSR A                       ; $13:FB52: 4A          ;
CODE_13FB53:    LSR A                       ; $13:FB53: 4A          ;
CODE_13FB54:    ADC #$04                    ; $13:FB54: 69 04       ;
CODE_13FB56:    TAX                         ; $13:FB56: AA          ;
CODE_13FB57:    LDY #$00                    ; $13:FB57: A0 00       ;
CODE_13FB59:    LDA #$FE                    ; $13:FB59: A9 FE       ;
CODE_13FB5B:    STA $03                     ; $13:FB5B: 85 03       ;
CODE_13FB5D:    LDA.l DATA_11AB63,x                 ; $13:FB5D: BF 63 AB 11 ;
CODE_13FB61:    STA $0802,y                 ; $13:FB61: 99 02 08    ;
CODE_13FB64:    STA $0806,y                 ; $13:FB64: 99 06 08    ;
CODE_13FB67:    LDA #$08                    ; $13:FB67: A9 08       ;
CODE_13FB69:    STA $0800,y                 ; $13:FB69: 99 00 08    ;
CODE_13FB6C:    LDA.l DATA_11AB63,x                 ; $13:FB6C: BF 63 AB 11 ;
CODE_13FB70:    AND #$02                    ; $13:FB70: 29 02       ;
CODE_13FB72:    EOR #$02                    ; $13:FB72: 49 02       ;
CODE_13FB74:    CLC                         ; $13:FB74: 18          ;
CODE_13FB75:    ADC #$32                    ; $13:FB75: 69 32       ;
CODE_13FB77:    STA $0803,y                 ; $13:FB77: 99 03 08    ;
CODE_13FB7A:    LDA $00                     ; $13:FB7A: A5 00       ;
CODE_13FB7C:    STA $0801,y                 ; $13:FB7C: 99 01 08    ;
CODE_13FB7F:    CLC                         ; $13:FB7F: 18          ;
CODE_13FB80:    ADC #$10                    ; $13:FB80: 69 10       ;
CODE_13FB82:    STA $00                     ; $13:FB82: 85 00       ;
CODE_13FB84:    PHY                         ; $13:FB84: 5A          ;
CODE_13FB85:    TYA                         ; $13:FB85: 98          ;
CODE_13FB86:    LSR A                       ; $13:FB86: 4A          ;
CODE_13FB87:    LSR A                       ; $13:FB87: 4A          ;
CODE_13FB88:    TAY                         ; $13:FB88: A8          ;
CODE_13FB89:    LDA #$02                    ; $13:FB89: A9 02       ;
CODE_13FB8B:    STA $0A20,y                 ; $13:FB8B: 99 20 0A    ;
CODE_13FB8E:    PLY                         ; $13:FB8E: 7A          ;
CODE_13FB8F:    TYA                         ; $13:FB8F: 98          ;
CODE_13FB90:    CLC                         ; $13:FB90: 18          ;
CODE_13FB91:    ADC #$04                    ; $13:FB91: 69 04       ;
CODE_13FB93:    TAY                         ; $13:FB93: A8          ;
CODE_13FB94:    INX                         ; $13:FB94: E8          ;
CODE_13FB95:    INC $03                     ; $13:FB95: E6 03       ;
CODE_13FB97:    LDA $03                     ; $13:FB97: A5 03       ;
CODE_13FB99:    CMP $04C4                   ; $13:FB99: CD C4 04    ;
CODE_13FB9C:    BNE CODE_13FB5D             ; $13:FB9C: D0 BF       ;
CODE_13FB9E:    LDA $04C5                   ; $13:FB9E: AD C5 04    ;
CODE_13FBA1:    BEQ CODE_13FBC1             ; $13:FBA1: F0 1E       ;
CODE_13FBA3:    DEC $04C5                   ; $13:FBA3: CE C5 04    ;
CODE_13FBA6:    LSR A                       ; $13:FBA6: 4A          ;
CODE_13FBA7:    AND #$01                    ; $13:FBA7: 29 01       ;
CODE_13FBA9:    TAY                         ; $13:FBA9: A8          ;
CODE_13FBAA:    LDA $0206                   ; $13:FBAA: AD 06 02    ;
CODE_13FBAD:    BPL CODE_13FBB1             ; $13:FBAD: 10 02       ;
CODE_13FBAF:    INY                         ; $13:FBAF: C8          ;
CODE_13FBB0:    INY                         ; $13:FBB0: C8          ;
CODE_13FBB1:    PHB                         ; $13:FBB1: 8B          ;
CODE_13FBB2:    LDA #$11                    ; $13:FBB2: A9 11       ;
CODE_13FBB4:    PHA                         ; $13:FBB4: 48          ;
CODE_13FBB5:    PLB                         ; $13:FBB5: AB          ;
CODE_13FBB6:    LDA.w DATA_11AB77,y                 ; $13:FBB6: B9 77 AB    ;
CODE_13FBB9:    STA $04C6                   ; $13:FBB9: 8D C6 04    ;
CODE_13FBBC:    PLB                         ; $13:FBBC: AB          ;
CODE_13FBBD:    JSL CODE_12BAAE             ; $13:FBBD: 22 AE BA 12 ;
CODE_13FBC1:    RTL                         ; $13:FBC1: 6B          ;

CODE_13FBC2:    PHX                     ; $13:FBC2: DA          ; Preserve sprite index.
CODE_13FBC3:    LDX $0628               ; $13:FBC3: AE 28 06    ; \ Don't flash colours if in potion room.
CODE_13FBC6:    CPX #$02                ; $13:FBC6: E0 02       ;  |
CODE_13FBC8:    BEQ CODE_13FC1A         ; $13:FBC8: F0 50       ; /
CODE_13FBCA:    REP #$20                ; $13:FBCA: C2 20       ; A = 16-bit
CODE_13FBCC:    AND #$00FF              ; $13:FBCC: 29 FF 00    ; \ If value is zero...
CODE_13FBCF:    BEQ CODE_13FBDF         ; $13:FBCF: F0 0E       ; / branch.
CODE_13FBD1:    LDA $10                 ; $13:FBD1: A5 10       ; \ Flash through 4 different colours...
CODE_13FBD3:    AND #$0003              ; $13:FBD3: 29 03 00    ;  | <--
CODE_13FBD6:    TAX                     ; $13:FBD6: AA          ;  |
CODE_13FBD7:    LDA.w DATA_11AB83,x     ; $13:FBD7: BD 83 AB    ;  | Apparently, the 16-bit colour values interfer with eachother (no ASL is included, table is not 8 bytes long but only 5 bytes)
CODE_13FBDA:    STA $0B00               ; $13:FBDA: 8D 00 0B    ;  | This may complicate hex editing the colours to your likings.
CODE_13FBDD:    BRA CODE_13FBED         ; $13:FBDD: 80 0E       ; /

CODE_13FBDF:    STZ $0B00               ; $13:FBDF: 9C 00 0B    ; No flashing BG colour.
CODE_13FBE2:    LDA $04EF                   ; $13:FBE2: AD EF 04    ;
CODE_13FBE5:    AND #$00FF                  ; $13:FBE5: 29 FF 00    ;
CODE_13FBE8:    BNE CODE_13FC1C             ; $13:FBE8: D0 32       ;
CODE_13FBEA:    LDA $04BC                   ; $13:FBEA: AD BC 04    ;
CODE_13FBED:    STA $0712                   ; $13:FBED: 8D 12 07    ;
CODE_13FBF0:    LSR A                       ; $13:FBF0: 4A          ;
CODE_13FBF1:    LSR A                       ; $13:FBF1: 4A          ;
CODE_13FBF2:    LSR A                       ; $13:FBF2: 4A          ;
CODE_13FBF3:    LSR A                       ; $13:FBF3: 4A          ;
CODE_13FBF4:    LSR A                       ; $13:FBF4: 4A          ;
CODE_13FBF5:    AND #$001F                  ; $13:FBF5: 29 1F 00    ;
CODE_13FBF8:    SEP #$20                    ; $13:FBF8: E2 20       ;
CODE_13FBFA:    ORA #$40                    ; $13:FBFA: 09 40       ;
CODE_13FBFC:    STA $023E                   ; $13:FBFC: 8D 3E 02    ;
CODE_13FBFF:    LDA $0712                   ; $13:FBFF: AD 12 07    ;
CODE_13FC02:    AND #$1F                    ; $13:FC02: 29 1F       ;
CODE_13FC04:    ORA #$20                    ; $13:FC04: 09 20       ;
CODE_13FC06:    STA $023D                   ; $13:FC06: 8D 3D 02    ;
CODE_13FC09:    LDA $0713                   ; $13:FC09: AD 13 07    ;
CODE_13FC0C:    LSR A                       ; $13:FC0C: 4A          ;
CODE_13FC0D:    LSR A                       ; $13:FC0D: 4A          ;
CODE_13FC0E:    AND #$1F                    ; $13:FC0E: 29 1F       ;
CODE_13FC10:    ORA #$80                    ; $13:FC10: 09 80       ;
CODE_13FC12:    STA $023F                   ; $13:FC12: 8D 3F 02    ;
CODE_13FC15:    LDA #$01                ; $13:FC15: A9 01       ; \ Update palettes.
CODE_13FC17:    STA $02A9               ; $13:FC17: 8D A9 02    ; /
CODE_13FC1A:    PLX                     ; $13:FC1A: FA          ; Pull sprite index.
CODE_13FC1B:    RTL                     ; $13:FC1B: 6B          ; Return.

CODE_13FC1C:    LDA $04BC                   ; $13:FC1C: AD BC 04    ;
CODE_13FC1F:    STA $0B00                   ; $13:FC1F: 8D 00 0B    ;
CODE_13FC22:    SEP #$20                    ; $13:FC22: E2 20       ;
CODE_13FC24:    LDX #$0A                    ; $13:FC24: A2 0A       ;
CODE_13FC26:    LDA $0533                   ; $13:FC26: AD 33 05    ;
CODE_13FC29:    CMP #$05                    ; $13:FC29: C9 05       ;
CODE_13FC2B:    BEQ CODE_13FC45             ; $13:FC2B: F0 18       ;
CODE_13FC2D:    CMP #$0F                    ; $13:FC2D: C9 0F       ;
CODE_13FC2F:    BNE CODE_13FC47             ; $13:FC2F: D0 16       ;
CODE_13FC31:    LDA $0534                   ; $13:FC31: AD 34 05    ;
CODE_13FC34:    CMP #$05                    ; $13:FC34: C9 05       ;
CODE_13FC36:    BEQ CODE_13FC45             ; $13:FC36: F0 0D       ;
CODE_13FC38:    CMP #$03                    ; $13:FC38: C9 03       ;
CODE_13FC3A:    BEQ CODE_13FC45             ; $13:FC3A: F0 09       ;
CODE_13FC3C:    CMP #$04                    ; $13:FC3C: C9 04       ;
CODE_13FC3E:    BNE CODE_13FC47             ; $13:FC3E: D0 07       ;
CODE_13FC40:    LDA $051B                   ; $13:FC40: AD 1B 05    ;
CODE_13FC43:    BEQ CODE_13FC47             ; $13:FC43: F0 02       ;
CODE_13FC45:    LDX #$05                    ; $13:FC45: A2 05       ;
CODE_13FC47:    TXA                         ; $13:FC47: 8A          ;
CODE_13FC48:    ORA #$20                    ; $13:FC48: 09 20       ;
CODE_13FC4A:    STA $023D                   ; $13:FC4A: 8D 3D 02    ;
CODE_13FC4D:    TXA                         ; $13:FC4D: 8A          ;
CODE_13FC4E:    ORA #$40                    ; $13:FC4E: 09 40       ;
CODE_13FC50:    STA $023E                   ; $13:FC50: 8D 3E 02    ;
CODE_13FC53:    TXA                         ; $13:FC53: 8A          ;
CODE_13FC54:    ORA #$80                    ; $13:FC54: 09 80       ;
CODE_13FC56:    STA $023F                   ; $13:FC56: 8D 3F 02    ;
CODE_13FC59:    BRA CODE_13FC15         ; $13:FC59: 80 BA       ; Update palettes and return appropiately.

CODE_13FC5B:    REP #$30                    ; $13:FC5B: C2 30       ;
CODE_13FC5D:    LDY #$0120                  ; $13:FC5D: A0 20 01    ;
CODE_13FC60:    LDA $0801,y                 ; $13:FC60: B9 01 08    ;
CODE_13FC63:    AND #$00FF                  ; $13:FC63: 29 FF 00    ;
CODE_13FC66:    CMP #$00F0                  ; $13:FC66: C9 F0 00    ;
CODE_13FC69:    BNE CODE_13FC76             ; $13:FC69: D0 0B       ;
CODE_13FC6B:    LDA $0805,y                 ; $13:FC6B: B9 05 08    ;
CODE_13FC6E:    AND #$00FF                  ; $13:FC6E: 29 FF 00    ;
CODE_13FC71:    CMP #$00F0                  ; $13:FC71: C9 F0 00    ;
CODE_13FC74:    BEQ CODE_13FC81             ; $13:FC74: F0 0B       ;
CODE_13FC76:    TYA                         ; $13:FC76: 98          ;
CODE_13FC77:    CLC                         ; $13:FC77: 18          ;
CODE_13FC78:    ADC #$0004                  ; $13:FC78: 69 04 00    ;
CODE_13FC7B:    TAY                         ; $13:FC7B: A8          ;
CODE_13FC7C:    CPY #$01C0                  ; $13:FC7C: C0 C0 01    ;
CODE_13FC7F:    BNE CODE_13FC60             ; $13:FC7F: D0 DF       ;
CODE_13FC81:    STY $02F8                   ; $13:FC81: 8C F8 02    ;
CODE_13FC84:    SEP #$30                    ; $13:FC84: E2 30       ;
CODE_13FC86:    LDX $12                     ; $13:FC86: A6 12       ;
CODE_13FC88:    RTL                         ; $13:FC88: 6B          ;

CODE_13FC89:    LDY $0533               ; $13:FC89: AC 33 05    ; \ Get level + room number into X index.
CODE_13FC8C:    LDA.w DATA_11D098,y     ; $13:FC8C: B9 98 D0    ;  | 
CODE_13FC8F:    CLC                     ; $13:FC8F: 18          ;  |
CODE_13FC90:    ADC $0534               ; $13:FC90: 6D 34 05    ;  |
CODE_13FC93:    TAX                     ; $13:FC93: AA          ;  |
CODE_13FC94:    LDA.l DATA_11CF52,x     ; $13:FC94: BF 52 CF 11 ;  | Check HDMA BG table. 
CODE_13FC98:    CMP #$FF                ; $13:FC98: C9 FF       ;  | If value = $FF, don't load a HDMA BG.
CODE_13FC9A:    BEQ CODE_13FCA0         ; $13:FC9A: F0 04       ; /
CODE_13FC9C:    JSL CODE_14FAE8         ; $13:FC9C: 22 E8 FA 14 ; Load HDMA BG.
CODE_13FCA0:    RTL                     ; $13:FCA0: 6B          ; Return.

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
