;Super Mario Bros. 2

DATA_138000:    dw $F000                                        ;
                dw $F800                                        ;
                dw $F000                                        ;
                dw $8000                                        ;
                dw $F000                                        ;
                dw $F800                                        ;
                dw $8800                                        ;
 
DATA_13800E:    db $16,$16,$16,$17,$16,$16,$17                  ;

DATA_138015:    dw $D800                                        ;
                dw $9800                                        ;
                dw $D800                                        ;
                dw $A000                                        ;
                dw $D800                                        ;
                dw $9800                                        ;
                dw $A800                                        ;

DATA_138023:    db $16,$17,$16,$17,$16,$17,$17                  ;

DATA_13802A:    dw $D000                                        ;
                dw $D800                                        ;
                dw $D000                                        ;
                dw $E000                                        ;
                dw $E800                                        ;
                dw $D800                                        ;
                dw $F000                                        ;

DATA_138038:    dw $8000                                        ;
                dw $9000                                        ;
                dw $8000                                        ;
                dw $A000                                        ;
                dw $8000                                        ;
                dw $9000                                        ;
                dw $B000                                        ;

DATA_138046:    db $18,$18,$18,$18,$18,$18,$18                  ;

DATA_13804D:    dw $C800                                        ;
                dw $C800                                        ;
                dw $C800                                        ;
                dw $C800                                        ;
                dw $C800                                        ;
                dw $C800                                        ;
                dw $C800                                        ;

DATA_13805B:    db $18,$18,$18,$18,$18,$18,$18                  ;
                   
CODE_138062:    REP #$20                ; $13:8062: C2 20       ; Accumulator = 16-bit.           
                LDA.w #DATA_19E000      ; $13:8064: A9 00 E0    ; \ Load sprite GFX tiles 00-7F. (00-1F will get overwritten)
                STA $0D                 ; $13:8067: 85 0D       ;  | ($19E000)
                LDX.b #DATA_19E000>>16  ; $13:8069: A2 19       ;  |
                STX $0F                 ; $13:806B: 86 0F       ; /
                LDA #$1000              ; $13:806D: A9 00 10    ; \ Amount of bytes to transfer = #$1000. 
                STA $0B                 ; $13:8070: 85 0B       ; /
                LDA #$6000              ; $13:8072: A9 00 60    ; \ First GFX slot. 
                JSR CODE_138AE7         ; $13:8075: 20 E7 8A    ; / Transfer to VRAM.
                LDA.w #DATA_16C000      ; $13:8078: A9 00 C0    ; \ Load sprite GFX tiles 80-13F.
                STA $0D                 ; $13:807B: 85 0D       ;  | ($16C000)
                LDX.b #DATA_16C000>>16  ; $13:807D: A2 16       ;  |
                STX $0F                 ; $13:807F: 86 0F       ; /
                LDA #$1800              ; $13:8081: A9 00 18    ; \ Amount of bytes to transfer = #$1800. 
                STA $0B                 ; $13:8084: 85 0B       ; /
                LDA #$6800              ; $13:8086: A9 00 68    ; \ Second and first half of third GFX slots. 
                JSR CODE_138AE7         ; $13:8089: 20 E7 8A    ; / Transfer to VRAM.
                LDA $0635               ; $13:808C: AD 35 06    ; \ Get world number into Y, *2 into X index.
                AND #$00FF              ; $13:808F: 29 FF 00    ;  |
                TAY                     ; $13:8092: A8          ;  |
                ASL A                   ; $13:8093: 0A          ;  |
                TAX                     ; $13:8094: AA          ; /
                PHX                     ; $13:8095: DA          ; Hold X to get later. 
                LDA.l DATA_138000,x     ; $13:8096: BF 00 80 13 ; \ Load sprite GFX tiles 140-17F from pointer.
                STA $0D                 ; $13:809A: 85 0D       ;  |
                TYX                     ; $13:809C: BB          ;  |
                LDA.l DATA_13800E,x     ; $13:809D: BF 0E 80 13 ;  |     
                TAX                     ; $13:80A1: AA          ;  |
                STX $0F                 ; $13:80A2: 86 0F       ; /
                LDA #$0800              ; $13:80A4: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:80A7: 85 0B       ; /
                LDA #$7400              ; $13:80A9: A9 00 74    ; \ Second half of third GFX slot. 
                JSR CODE_138AE7         ; $13:80AC: 20 E7 8A    ; / Transfer to VRAM.
                PLX                     ; $13:80AF: FA          ; \ Get world number * 2 back.
                PHX                     ; $13:80B0: DA          ; /
                LDA.l DATA_138015,x     ; $13:80B1: BF 15 80 13 ; \ Load sprite GFX tiles 180-1BF from pointer.
                STA $0D                 ; $13:80B5: 85 0D       ;  |
                TYX                     ; $13:80B7: BB          ;  |
                LDA.l DATA_138023,x     ; $13:80B8: BF 23 80 13 ;  |     
                TAX                     ; $13:80BC: AA          ;  |
                STX $0F                 ; $13:80BD: 86 0F       ; /
                LDA #$0800              ; $13:80BF: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
                STA $0B                 ; $13:80C2: 85 0B       ; /
                LDA #$7800              ; $13:80C4: A9 00 78    ; \ First half of fourth GFX slot. 
                JSR CODE_138AE7         ; $13:80C7: 20 E7 8A    ; / Transfer to VRAM.
                LDA.w #DATA_179000      ; $13:80CA: A9 00 90    ; \ Load sprite GFX tiles 1C0-1FF.
                STA $0D                 ; $13:80CD: 85 0D       ;  | ($179000)
                LDX.b #DATA_179000>>16  ; $13:80CF: A2 17       ;  |
                STX $0F                 ; $13:80D1: 86 0F       ; /
                LDA #$0800              ; $13:80D3: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
                STA $0B                 ; $13:80D6: 85 0B       ; /
                LDA #$7C00              ; $13:80D8: A9 00 7C    ; \ Second half of fourth GFX slot. 
                JSR CODE_138AE7         ; $13:80DB: 20 E7 8A    ; / Transfer to VRAM.
                PLX                     ; $13:80DE: FA          ; \ Get world number * 2 back.
                PHX                     ; $13:80DF: DA          ; /
                LDA.l DATA_138038,x     ; $13:80E0: BF 38 80 13 ; \ Load layer GFX tiles 00-7F from pointer.      
                STA $0D                 ; $13:80E4: 85 0D       ;  |
                TYX                     ; $13:80E6: BB          ;  |
                LDA.l DATA_138046,x     ; $13:80E7: BF 46 80 13 ;  |     
                TAX                     ; $13:80EB: AA          ;  |
                STX $0F                 ; $13:80EC: 86 0F       ; /
                LDA #$1000              ; $13:80EE: A9 00 10    ; \ Amount of bytes to transfer = #$1000.
                STA $0B                 ; $13:80F1: 85 0B       ; /
                LDA #$2000              ; $13:80F3: A9 00 20    ; \ First GFX slot.
                JSR CODE_138AC4         ; $13:80F6: 20 C4 8A    ; / Transfer to VRAM.
                LDA.w #DATA_18C000      ; $13:80F9: A9 00 C0    ; \ Load layer GFX tiles 80-BF.
                STA $0D                 ; $13:80FC: 85 0D       ;  | ($18C000)
                LDX.b #DATA_18C000>>16  ; $13:80FE: A2 18       ;  |
                STX $0F                 ; $13:8100: 86 0F       ; /
                LDA #$0800              ; $13:8102: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
                STA $0B                 ; $13:8105: 85 0B       ; /
                LDA #$2800              ; $13:8107: A9 00 28    ; \ First half of second GFX slot.
                JSR CODE_138AC4         ; $13:810A: 20 C4 8A    ; / Transfer to VRAM.
                PLX                     ; $13:810D: FA          ; Get world num * 2. 
                LDA.l DATA_13804D,x     ; $13:810E: BF 4D 80 13 ; \ Load layer GFX tiles C0-FF from pointer.
                STA $0D                 ; $13:8112: 85 0D       ;  |
                TYX                     ; $13:8114: BB          ;  |
                LDA.l DATA_13805B,x     ; $13:8115: BF 5B 80 13 ;  |     
                TAX                     ; $13:8119: AA          ;  |
                STX $0F                 ; $13:811A: 86 0F       ; /
                LDA #$0800              ; $13:811C: A9 00 08    ; \ Amount of bytes to transfer = #$0800. 
                STA $0B                 ; $13:811F: 85 0B       ; /
                LDA #$2C00              ; $13:8121: A9 00 2C    ; \ Second half of second GFX slot.
                JSR CODE_138AC4         ; $13:8124: 20 C4 8A    ; / Transfer to VRAM.
                SEP #$20                ; $13:8127: E2 20       ; Accumulator = 8-bit.
                RTL                     ; $13:8129: 6B          ; Return.

DATA_13812A:    db $C8,$C8,$C8,$C8,$C8,$C8,$00,$00              ;
                db $00,$00,$C8,$C8,$C8,$C8,$C8,$00              ;
                db $00,$00,$00,$00,$C8,$B8,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$F0,$80              ;
                db $80,$00,$F0,$00,$00,$00,$00,$00              ;
                db $80,$F0,$80,$80,$F0,$80,$00,$00              ;
                db $00,$00,$80,$F0,$80,$80,$80,$80              ;
                db $80,$B8,$00,$00,$C8,$C8,$C8,$C8              ;
                db $C8,$00,$00,$00,$00,$00,$C8,$C8              ;
                db $C8,$00,$00,$00,$00,$00,$00,$00              ;
                db $C8,$C8,$00,$00,$00,$00,$B8,$C8              ;
                db $00,$00,$A0,$A0,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$B0,$A0,$A0,$00              ;
                db $B0,$00,$00,$00,$00,$00,$B0,$A0              ;
                db $00,$00,$00,$B8,$B0,$B0,$00,$00              ;
                db $C8,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$B8,$B8,$B8,$B8,$B8              ;
                db $00,$00,$00,$00,$00,$C8,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$F0,$80              ;
                db $80,$80,$80,$80,$F0,$00,$00,$00              ;
                db $80,$B8,$80,$00,$00,$00,$00,$00              ;
                db $00,$00,$80,$F0,$80,$00,$00,$80              ;
                db $80,$00,$00,$00,$00,$C0,$C0,$00              ;
                db $D0,$D0,$00,$00,$00,$00,$00,$D0              ;
                db $D0,$D0,$D0,$D0,$D0,$D0,$D0,$00              ;
         
DATA_1381F2:    db $D0,$D0,$D0,$D0,$D0,$D0,$00,$00              ;
                db $00,$00,$D0,$D0,$D0,$D0,$D0,$00              ;
                db $00,$00,$00,$00,$D0,$C0,$E0,$E0              ;
                db $E0,$00,$00,$00,$00,$00,$F8,$88              ;
                db $88,$00,$F8,$00,$00,$00,$00,$00              ;
                db $88,$F8,$88,$88,$F8,$88,$00,$00              ;
                db $00,$00,$88,$F8,$88,$88,$88,$88              ;
                db $88,$C0,$00,$00,$D0,$D0,$D0,$D0              ;
                db $D0,$00,$00,$00,$00,$00,$D0,$D0              ;
                db $D0,$00,$00,$00,$00,$00,$00,$00              ;
                db $D0,$D0,$E0,$E0,$E0,$E0,$C0,$D0              ;
                db $E0,$00,$A8,$A8,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$A8,$A8,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$A8              ;
                db $E0,$E0,$00,$C0,$00,$00,$00,$00              ;
                db $D0,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$98,$98,$98,$98,$98              ;
                db $00,$00,$00,$00,$00,$D0,$00,$D0              ;
                db $00,$00,$00,$00,$00,$00,$F8,$88              ;
                db $88,$88,$88,$88,$F8,$00,$00,$00              ;
                db $88,$98,$88,$00,$00,$00,$00,$00              ;
                db $00,$00,$88,$F8,$88,$00,$00,$88              ;
                db $88,$00,$00,$00,$00,$C8,$C8,$00              ;
                db $D8,$D8,$00,$00,$00,$00,$00,$D8              ;
                db $D8,$D8,$D8,$D8,$D8,$D8,$D8,$00              ;

DATA_1382BA:    db $D8,$D8,$D8,$D8,$D8,$D8,$00,$00              ;
                db $00,$00,$D8,$D8,$D8,$D8,$D8,$00              ;
                db $00,$00,$00,$00,$D8,$C8,$E8,$E8              ;
                db $E8,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$90,$00,$00,$90,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$C8,$00,$00,$D8,$D8,$D8,$D8              ;
                db $D8,$00,$00,$00,$00,$00,$D8,$D8              ;
                db $D8,$00,$00,$00,$00,$00,$00,$00              ;
                db $D8,$D8,$E8,$E8,$E8,$E8,$C8,$E8              ;
                db $E8,$00,$98,$98,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$B0,$98,$98,$00              ;
                db $B0,$00,$00,$00,$00,$00,$B0,$98              ;
                db $E8,$E8,$00,$C8,$B0,$B0,$00,$00              ;
                db $D8,$D8,$D8,$00,$00,$00,$00,$00              ;
                db $00,$00,$D8,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$D8,$00,$D8,$D8              ;
                db $00,$D8,$00,$00,$00,$00,$90,$00              ;
                db $00,$00,$00,$00,$90,$00,$00,$00              ;
                db $00,$E8,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$F8,$F8,$00              ;
                db $E0,$E0,$00,$00,$00,$00,$00,$E0              ;
                db $E0,$E0,$E0,$E0,$E0,$E0,$E0,$00              ;

DATA_138382:    db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00              ;
                db $00,$00,$1B,$1B,$1B,$1B,$1B,$00              ;
                db $00,$00,$00,$00,$1B,$1D,$1B,$1B              ;
                db $1B,$1B,$00,$00,$00,$00,$1B,$1C              ;
                db $1C,$00,$1B,$00,$00,$00,$00,$00              ;
                db $1C,$1B,$1C,$1C,$1B,$1C,$00,$00              ;
                db $00,$00,$1C,$1B,$1C,$1C,$1C,$1C              ;
                db $1C,$1D,$00,$00,$1B,$1B,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1B              ;
                db $1B,$00,$1C,$1C,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$1C,$1C,$1C,$00              ;
                db $1C,$00,$00,$00,$00,$00,$1C,$1C              ;
                db $00,$1C,$00,$1D,$1C,$1C,$00,$00              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$1C,$1C,$1C,$1C,$1C              ;
                db $00,$00,$00,$00,$00,$1B,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$1B,$1C              ;
                db $1C,$1C,$1C,$1C,$1B,$00,$00,$00              ;
                db $1C,$1C,$1C,$00,$00,$00,$00,$00              ;
                db $00,$00,$1C,$1B,$1C,$00,$00,$1C              ;
                db $1C,$00,$00,$00,$00,$1C,$1C,$00              ;
                db $1C,$1C,$00,$00,$00,$00,$00,$1C              ;
                db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00              ;

DATA_13844A:    db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00              ;
                db $00,$00,$1B,$1B,$1B,$1B,$1B,$00              ;
                db $00,$00,$00,$00,$1B,$1D,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$1B,$1C              ;
                db $1C,$00,$1B,$00,$00,$00,$00,$00              ;
                db $1C,$1B,$1C,$1C,$1B,$1C,$00,$00              ;
                db $00,$00,$1C,$1B,$1C,$1C,$1C,$1C              ;
                db $1C,$1D,$00,$00,$1B,$1B,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1B              ;
                db $1B,$00,$1C,$1C,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$1C,$1C,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$1C              ;
                db $1B,$1B,$00,$1D,$00,$00,$00,$00              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$1C,$1C,$1C,$1C,$1C              ;
                db $00,$00,$00,$00,$00,$1B,$00,$1B              ;
                db $00,$00,$00,$00,$00,$00,$1B,$1C              ;
                db $1C,$1C,$1C,$1C,$1B,$00,$00,$00              ;
                db $1C,$1C,$1C,$00,$00,$00,$00,$00              ;
                db $00,$00,$1C,$1B,$1C,$00,$00,$1C              ;
                db $1C,$00,$00,$00,$00,$1C,$1C,$00              ;
                db $1C,$1C,$00,$00,$00,$00,$00,$1C              ;
                db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00              ;

DATA_138512:    db $1B,$1B,$1B,$1B,$1B,$1B,$00,$00              ;
                db $00,$00,$1B,$1B,$1B,$1B,$1B,$00              ;
                db $00,$00,$00,$00,$1B,$1D,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$1C,$00,$00,$1C,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$1D,$00,$00,$1B,$1B,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$1B,$1B              ;
                db $1B,$00,$00,$00,$00,$00,$00,$00              ;
                db $1B,$1B,$1B,$1B,$1B,$1B,$1D,$1C              ;
                db $1B,$00,$1C,$1C,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$1C,$1C,$1C,$00              ;
                db $1C,$00,$00,$00,$00,$00,$1C,$1C              ;
                db $1B,$1B,$00,$1D,$1C,$1C,$00,$00              ;
                db $1B,$1B,$1B,$00,$00,$00,$00,$00              ;
                db $00,$00,$1B,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$1B,$00,$1B,$1B              ;
                db $00,$1B,$00,$00,$00,$00,$1C,$00              ;
                db $00,$00,$00,$00,$1C,$00,$00,$00              ;
                db $00,$1C,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$1C,$1C,$00              ;
                db $1C,$1C,$00,$00,$00,$00,$00,$1C              ;
                db $1C,$1C,$1C,$1C,$1C,$1C,$1C,$00              ;

CODE_1385DA:    LDA $0770               ; $13:85DA: AD 70 07    ;
                BEQ CODE_1385E3             ; $13:85DD: F0 04       ;
                LDA #$06                    ; $13:85DF: A9 06       ;
                BRA CODE_1385E6             ; $13:85E1: 80 03       ;

CODE_1385E3:    LDA $0534               ; $13:85E3: AD 34 05    ; \ Get level + room number into index.
CODE_1385E6:    STA $00                 ; $13:85E6: 85 00       ;  |
                STZ $01                 ; $13:85E8: 64 01       ;  |
                REP #$30                ; $13:85EA: C2 30       ;  | Accumulator & Index = 16-bit.
                LDA $0533               ; $13:85EC: AD 33 05    ;  |
                AND #$00FF              ; $13:85EF: 29 FF 00    ;  |
                TAX                     ; $13:85F2: AA          ;  |
                LDA.l DATA_11D098,x     ; $13:85F3: BF 98 D0 11 ;  | 
                AND #$00FF              ; $13:85F7: 29 FF 00    ;  |
                CLC                     ; $13:85FA: 18          ;  |
                ADC $00                 ; $13:85FB: 65 00       ;  |
                TAX                     ; $13:85FD: AA          ; /
                LDA.l DATA_13812A,x     ; $13:85FE: BF 2A 81 13 ; \ Tiles of the FG/BG slots 140-17F, high byte.
                AND #$00FF              ; $13:8602: 29 FF 00    ;  |
                XBA                     ; $13:8605: EB          ;  |
                STA $02CB               ; $13:8606: 8D CB 02    ; /
                LDA.l DATA_1381F2,x     ; $13:8609: BF F2 81 13 ; \ Tiles of the FG/BG slots 180-1BF, high byte.
                AND #$00FF              ; $13:860D: 29 FF 00    ;  |
                XBA                     ; $13:8610: EB          ;  |
                STA $02CD               ; $13:8611: 8D CD 02    ; /
                LDA.l DATA_1382BA,x     ; $13:8614: BF BA 82 13 ; \ Tiles of the FG/BG slots 1C0-1FF, high byte.  
                AND #$00FF              ; $13:8618: 29 FF 00    ;  |
                XBA                     ; $13:861B: EB          ;  |
                STA $02CF               ; $13:861C: 8D CF 02    ; /
                LDA.l DATA_138382,x     ; $13:861F: BF 82 83 13 ; \ Tiles of the FG/BG slots 140-17F, bank byte.     
                STA $02D1               ; $13:8623: 8D D1 02    ; /
                LDA.l DATA_13844A,x     ; $13:8626: BF 4A 84 13 ; \ Tiles of the FG/BG slots 180-1BF, bank byte.  
                STA $02D3               ; $13:862A: 8D D3 02    ; /
                LDA.l DATA_138512,x     ; $13:862D: BF 12 85 13 ; \ Tiles of the FG/BG slots 1C0-1FF, bank byte.  
                STA $02D5               ; $13:8631: 8D D5 02    ; /
                SEP #$10                ; $13:8634: E2 10       ; Index = 8-bit.
                LDX $0635               ; $13:8636: AE 35 06    ; \ If not in World 7, branch.
                CPX #$06                ; $13:8639: E0 06       ;  |
                BNE CODE_138646         ; $13:863B: D0 09       ; /
                LDA.w #DATA_1DB000      ; $13:863D: A9 00 B0    ; \ $1DB000 = Tiles of the FG/BG slots 100-13F
                STA $0D                 ; $13:8640: 85 0D       ;  | Metal ground graphics.
                LDX.b #DATA_1DB000>>16  ; $13:8642: A2 1D       ;  |
                BRA CODE_13864D         ; $13:8644: 80 07       ; /

CODE_138646:    LDA.w #DATA_1BC000      ; $13:8646: A9 00 C0    ; \ $1BC000 = Tiles of the FG/BG slots 100-13F.
                STA $0D                 ; $13:8649: 85 0D       ;  |
                LDX.b #DATA_1BC000>>16  ; $13:864B: A2 1B       ;  |
CODE_13864D:    STX $0F                 ; $13:864D: 86 0F       ; /
                LDA #$0800              ; $13:864F: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:8652: 85 0B       ; /
                LDA #$3000              ; $13:8654: A9 00 30    ; \ First half of third GFX slot.
                JSR CODE_138AC4         ; $13:8657: 20 C4 8A    ; / Transfer to VRAM.
                LDA $02CB               ; $13:865A: AD CB 02    ; \ Load tiles 140-17F of the FG/BG slots from pointer.
                STA $0D                 ; $13:865D: 85 0D       ;  |
                LDX $02D1               ; $13:865F: AE D1 02    ;  |
                STX $0F                 ; $13:8662: 86 0F       ; /
                LDA #$0800              ; $13:8664: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:8667: 85 0B       ; /
                LDA #$3400              ; $13:8669: A9 00 34    ; \ Second half of third GFX slot.
                JSR CODE_138AC4         ; $13:866C: 20 C4 8A    ; / Transfer to VRAM.
                LDA $02CD               ; $13:866F: AD CD 02    ; \ Load tiles 180-1BF of the FG/BG slots from pointer.
                STA $0D                 ; $13:8672: 85 0D       ;  |
                LDX $02D3               ; $13:8674: AE D3 02    ;  |
                STX $0F                 ; $13:8677: 86 0F       ; /
                LDA #$0800              ; $13:8679: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:867C: 85 0B       ; /
                LDA #$3800              ; $13:867E: A9 00 38    ; \ First half of fourth GFX slot
                JSR CODE_138AC4         ; $13:8681: 20 C4 8A    ; / Transfer to VRAM
                LDA $02CF               ; $13:8684: AD CF 02    ; \ Load tiles 1C0-1FF of the FG/BG slots from pointer.
                STA $0D                 ; $13:8687: 85 0D       ;  |
                LDX $02D5               ; $13:8689: AE D5 02    ;  |
                STX $0F                 ; $13:868C: 86 0F       ; /
                LDA #$0800              ; $13:868E: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:8691: 85 0B       ; /
                LDA #$3C00              ; $13:8693: A9 00 3C    ; \ Second half of fourth GFX slot.
                JSR CODE_138AC4         ; $13:8696: 20 C4 8A    ; / Transfer to VRAM.
                LDX $0533               ; $13:8699: AE 33 05    ; \ Load different graphics for tiles C0-FF of the FG/BG slots if the following levels:
                CPX #$02                ; $13:869C: E0 02       ;  | Level 1-3...
                BEQ CODE_1386BC         ; $13:869E: F0 1C       ;  |
                CPX #$08                ; $13:86A0: E0 08       ;  | Level 3-3...
                BEQ CODE_1386BC         ; $13:86A2: F0 18       ;  |
                CPX #$0B                ; $13:86A4: E0 0B       ;  | or level 4-3.
                BEQ CODE_1386BC         ; $13:86A6: F0 14       ;  |
                CPX #$11                ; $13:86A8: E0 11       ;  | If NOT level 5-3, even different tiles are used for tiles C0-FF of the FG/BG slots.
                BNE CODE_1386D2         ; $13:86AA: D0 26       ;  |
                LDX $0534               ; $13:86AC: AE 34 05    ;  | If it's level 5-3 and the sixth room is entered...
                CPX #$05                ; $13:86AF: E0 05       ;  | ...use the tiles from 1-3, 3-3 and 4-3.
                BEQ CODE_1386BC         ; $13:86B1: F0 09       ;  |
                LDA.w #DATA_18C800      ; $13:86B3: A9 00 C8    ;  | Graphics from $18C800 are used.
                STA $0D                 ; $13:86B6: 85 0D       ;  | $0800 bytes.
                LDX.b #DATA_18C800>>16  ; $13:86B8: A2 18       ;  |
                BRA CODE_1386C3         ; $13:86BA: 80 07       ; /

CODE_1386BC:    LDA.w #DATA_1D9000      ; $13:86BC: A9 00 90    ; \ 1-3, 3-3, 4-3 or 5-3 room 6.
                STA $0D                 ; $13:86BF: 85 0D       ;  | They use graphics from $1D9000.
                LDX.b #DATA_1D9000>>16  ; $13:86C1: A2 1D       ;  |
CODE_1386C3:    STX $0F                 ; $13:86C3: 86 0F       ;  |
                LDA #$0800              ; $13:86C5: A9 00 08    ;  | $0800 bytes also.
                STA $0B                 ; $13:86C8: 85 0B       ;  |
                LDA #$2C00              ; $13:86CA: A9 00 2C    ;  | VRAM destination is where tiles C0-FF go.
                JSR CODE_138AC4         ; $13:86CD: 20 C4 8A    ;  | Transfer to VRAM.
                BRA CODE_1386ED         ; $13:86D0: 80 1B       ; / Branch.

CODE_1386D2:    LDX $0533               ; $13:86D2: AE 33 05    ; \ If NOT 7-2...
                CPX #$13                ; $13:86D5: E0 13       ;  | ...then don't load any new tiles at all.
                BNE CODE_1386ED         ; $13:86D7: D0 14       ;  |
                LDA.w #DATA_1DA000      ; $13:86D9: A9 00 A0    ;  | 7-2 uses graphics from $1DA000.
                STA $0D                 ; $13:86DC: 85 0D       ;  |
                LDX.b #DATA_1DA000>>16  ; $13:86DE: A2 1D       ;  |
                STX $0F                 ; $13:86E0: 86 0F       ;  |
                LDA #$0800              ; $13:86E2: A9 00 08    ;  | $0800 bytes as usual.
                STA $0B                 ; $13:86E5: 85 0B       ;  |
                LDA #$2C00              ; $13:86E7: A9 00 2C    ;  | VRAM destination is where tiles C0-FF go.
                JSR CODE_138AC4         ; $13:86EA: 20 C4 8A    ; / Transfer to VRAM.
CODE_1386ED:    LDX #$00                    ; $13:86ED: A2 00       ;
                STX $0773                   ; $13:86EF: 8E 73 07    ;
                LDX $0533               ; $13:86F2: AE 33 05    ; \ Level 2-1...
                CPX #$03                ; $13:86F5: E0 03       ;  | (If not, branch.)
                BNE CODE_138704         ; $13:86F7: D0 0B       ;  |
                LDX $0534               ; $13:86F9: AE 34 05    ;  | The second room.
                CPX #$01                ; $13:86FC: E0 01       ;  |
                BEQ CODE_13871D         ; $13:86FE: F0 1D       ;  |
                CPX #$02                ; $13:8700: E0 02       ;  | Or the third room.
                BEQ CODE_13871D         ; $13:8702: F0 19       ; / If either, branch.
CODE_138704:    LDX $0533               ; $13:8704: AE 33 05    ; \ Level 2-3...
                CPX #$05                ; $13:8707: E0 05       ;  | (If not, branch and return.)
                BNE CODE_138736         ; $13:8709: D0 2B       ;  |
                LDX $0534               ; $13:870B: AE 34 05    ;  |
                CPX #$03                ; $13:870E: E0 03       ;  | The fourth room...
                BEQ CODE_13871D         ; $13:8710: F0 0B       ;  |
                LDX $0534               ; $13:8712: AE 34 05    ;  | Or the sixth room...
                CPX #$05                ; $13:8715: E0 05       ;  | (Extra LDX $0534 is redundant, by the way.)
                BEQ CODE_13871D         ; $13:8717: F0 04       ;  |
                CPX #$07                ; $13:8719: E0 07       ;  | Or the eighth room.
                BNE CODE_138736         ; $13:871B: D0 19       ;  | If none of these, return.
CODE_13871D:    LDA #$A800              ; $13:871D: A9 00 A8    ;  | Upload stone graphics to 100-13F.
                STA $0D                 ; $13:8720: 85 0D       ;  | Source: $1DA800.
                LDX #$1D                ; $13:8722: A2 1D       ;  |
                STX $0F                 ; $13:8724: 86 0F       ;  |
                LDA #$0800              ; $13:8726: A9 00 08    ;  | Size: $0800 (x40 tiles)
                STA $0B                 ; $13:8729: 85 0B       ;  |
                LDA #$3000              ; $13:872B: A9 00 30    ;  | Destination: FG/BG tile slots 100-13F.
                JSR CODE_138AC4         ; $13:872E: 20 C4 8A    ; / Transfer to VRAM.
                LDX #$01                    ; $13:8731: A2 01       ;
                STX $0773                   ; $13:8733: 8E 73 07    ;
CODE_138736:    SEP #$20                ; $13:8736: E2 20       ; A = 8-bit.
                RTL                     ; $13:8738: 6B          ; Return.

DATA_138739:    dw $8000                                        ; Icy ground graphics.
                dw $9800                                        ; Wood graphics.
              
CODE_13873D:    REP #$20                ; $13:873D: C2 20       ; Accumulator = 16-bit.
                LDX $0533               ; $13:873F: AE 33 05    ; \ Check if in level 5-3.
                CPX #$0E                ; $13:8742: E0 0E       ;  |
                BNE CODE_13874A         ; $13:8744: D0 04       ; / If not, branch.
                LDX #$02                ; $13:8746: A2 02       ; Layer tiles 200-23F = $1D9800.
                BRA CODE_13874D             ; $13:8748: 80 03       ;

CODE_13874A:    LDX $04EF                   ; $13:874A: AE EF 04    ;
CODE_13874D:    LDA.l DATA_138739,x     ; $13:874D: BF 39 87 13 ; \ Load GFX pointer for layer tiles 200-23F.
                STA $0D                 ; $13:8751: 85 0D       ;  | Into [$0D]
                LDX #$1D                ; $13:8753: A2 1D       ;  |
                STX $0F                 ; $13:8755: 86 0F       ; /
                LDA #$0800              ; $13:8757: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:875A: 85 0B       ; /
                LDA #$4000              ; $13:875C: A9 00 40    ; \ First half of fifth GFX slot.
                JSR CODE_138AC4         ; $13:875F: 20 C4 8A    ; / Transfer to VRAM.
                LDA #$9000              ; $13:8762: A9 00 90    ; \ Layer tiles 240-27F pointer into [$0D]
                STA $0D                 ; $13:8765: 85 0D       ;  | ($1D9000)
                LDX #$1D                ; $13:8767: A2 1D       ;  |
                STX $0F                 ; $13:8769: 86 0F       ; /
                LDA #$0800              ; $13:876B: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:876E: 85 0B       ; /
                LDA #$4400              ; $13:8770: A9 00 44    ; \ Second half of fifth GFX slot.
                JSR CODE_138AC4         ; $13:8773: 20 C4 8A    ; / Transfer to VRAM.
                SEP #$20                ; $13:8776: E2 20       ; Accumulator = 8-bit.
                RTL                     ; $13:8778: 6B          ; Return.

DATA_138779:    db $18,$38,$58,$75,$91,$B0,$C3                  ;
            
CODE_138780:    LDA #$06                    ; $13:8780: A9 06       ;
                STA $00                     ; $13:8782: 85 00       ;
                LDX $0533                   ; $13:8784: AE 33 05    ;
                LDA.l DATA_11D098,x                 ; $13:8787: BF 98 D0 11 ;
                CLC                         ; $13:878B: 18          ;
                ADC $0534                   ; $13:878C: 6D 34 05    ;
                LDX $00                     ; $13:878F: A6 00       ;
CODE_138791:    CMP.l DATA_138779,x                 ; $13:8791: DF 79 87 13 ;
                BEQ CODE_13879D             ; $13:8795: F0 06       ;
                DEX                         ; $13:8797: CA          ;
                BPL CODE_138791             ; $13:8798: 10 F7       ;
                BRL CODE_1387D7             ; $13:879A: 82 3A 00    ;

CODE_13879D:    CPX #$06                    ; $13:879D: E0 06       ;
                BNE CODE_1387BB             ; $13:879F: D0 1A       ;
                PHX                         ; $13:87A1: DA          ;
                REP #$20                    ; $13:87A2: C2 20       ;
                LDA #$F800                  ; $13:87A4: A9 00 F8    ;
                STA $0D                     ; $13:87A7: 85 0D       ;
                LDX #$17                    ; $13:87A9: A2 17       ;
                STX $0F                     ; $13:87AB: 86 0F       ;
                LDA #$0800                  ; $13:87AD: A9 00 08    ;
                STA $0B                     ; $13:87B0: 85 0B       ;
                LDA #$7800                  ; $13:87B2: A9 00 78    ;
                JSR CODE_138AE7             ; $13:87B5: 20 E7 8A    ;
                SEP #$20                    ; $13:87B8: E2 20       ;
                PLX                         ; $13:87BA: FA          ;
CODE_1387BB:    TXA                         ; $13:87BB: 8A          ;
                ASL A                       ; $13:87BC: 0A          ;
                TAX                         ; $13:87BD: AA          ;
                REP #$20                    ; $13:87BE: C2 20       ;
                LDA.l DATA_13802A,x                 ; $13:87C0: BF 2A 80 13 ;
                STA $0D                     ; $13:87C4: 85 0D       ;
                LDX #$17                    ; $13:87C6: A2 17       ;
                STX $0F                     ; $13:87C8: 86 0F       ;
                LDA #$0800                  ; $13:87CA: A9 00 08    ;
                STA $0B                     ; $13:87CD: 85 0B       ;
                LDA #$7C00                  ; $13:87CF: A9 00 7C    ;
                JSR CODE_138AE7             ; $13:87D2: 20 E7 8A    ;
                SEP #$20                    ; $13:87D5: E2 20       ;
CODE_1387D7:    RTL                         ; $13:87D7: 6B          ;

CODE_1387D8:    REP #$20                    ; $13:87D8: C2 20       ;
                LDA #$8000                  ; $13:87DA: A9 00 80    ;
                STA $0D                     ; $13:87DD: 85 0D       ;
                LDX #$19                    ; $13:87DF: A2 19       ;
                STX $0F                     ; $13:87E1: 86 0F       ;
                LDA #$0800                  ; $13:87E3: A9 00 08    ;
                STA $0B                     ; $13:87E6: 85 0B       ;
                LDA #$2000                  ; $13:87E8: A9 00 20    ;
                JSR CODE_138AC4             ; $13:87EB: 20 C4 8A    ;
                LDA #$A000                  ; $13:87EE: A9 00 A0    ;
                STA $0D                     ; $13:87F1: 85 0D       ;
                LDX #$19                    ; $13:87F3: A2 19       ;
                STX $0F                     ; $13:87F5: 86 0F       ;
                LDA #$0800                  ; $13:87F7: A9 00 08    ;
                STA $0B                     ; $13:87FA: 85 0B       ;
                LDA #$2400                  ; $13:87FC: A9 00 24    ;
                JSR CODE_138AC4             ; $13:87FF: 20 C4 8A    ;
                LDA #$9000                  ; $13:8802: A9 00 90    ;
                STA $0D                     ; $13:8805: 85 0D       ;
                LDX #$19                    ; $13:8807: A2 19       ;
                STX $0F                     ; $13:8809: 86 0F       ;
                LDA #$0800                  ; $13:880B: A9 00 08    ;
                STA $0B                     ; $13:880E: 85 0B       ;
                LDA #$2800                  ; $13:8810: A9 00 28    ;
                JSR CODE_138AC4             ; $13:8813: 20 C4 8A    ;
                LDA #$F000                  ; $13:8816: A9 00 F0    ;
                STA $0D                     ; $13:8819: 85 0D       ;
                LDX #$19                    ; $13:881B: A2 19       ;
                STX $0F                     ; $13:881D: 86 0F       ;
                LDA #$0800                  ; $13:881F: A9 00 08    ;
                STA $0B                     ; $13:8822: 85 0B       ;
                LDA #$2C00                  ; $13:8824: A9 00 2C    ;
                JSR CODE_138AC4             ; $13:8827: 20 C4 8A    ;
                SEP #$20                    ; $13:882A: E2 20       ;
                RTL                         ; $13:882C: 6B          ;

CODE_13882D:    REP #$20                    ; $13:882D: C2 20       ;
                LDA #$8800                  ; $13:882F: A9 00 88    ;
                STA $0D                     ; $13:8832: 85 0D       ;
                LDX #$19                    ; $13:8834: A2 19       ;
                STX $0F                     ; $13:8836: 86 0F       ;
                LDA #$0800                  ; $13:8838: A9 00 08    ;
                STA $0B                     ; $13:883B: 85 0B       ;
                LDA #$2400                  ; $13:883D: A9 00 24    ;
                JSR CODE_138AC4             ; $13:8840: 20 C4 8A    ;
                SEP #$20                    ; $13:8843: E2 20       ;
                RTL                         ; $13:8845: 6B          ;

CODE_138846:    REP #$20                    ; $13:8846: C2 20       ;
                LDA #$B000                  ; $13:8848: A9 00 B0    ;
                STA $0D                     ; $13:884B: 85 0D       ;
                LDX #$19                    ; $13:884D: A2 19       ;
                STX $0F                     ; $13:884F: 86 0F       ;
                LDA #$1000                  ; $13:8851: A9 00 10    ;
                STA $0B                     ; $13:8854: 85 0B       ;
                LDA #$3000                  ; $13:8856: A9 00 30    ;
                JSR CODE_138AC4             ; $13:8859: 20 C4 8A    ;
                LDA #$A800                  ; $13:885C: A9 00 A8    ;
                STA $0D                     ; $13:885F: 85 0D       ;
                LDX #$19                    ; $13:8861: A2 19       ;
                STX $0F                     ; $13:8863: 86 0F       ;
                LDA #$0800                  ; $13:8865: A9 00 08    ;
                STA $0B                     ; $13:8868: 85 0B       ;
                LDA #$3800                  ; $13:886A: A9 00 38    ;
                JSR CODE_138AC4             ; $13:886D: 20 C4 8A    ;
                LDA #$9800                  ; $13:8870: A9 00 98    ;
                STA $0D                     ; $13:8873: 85 0D       ;
                LDX #$19                    ; $13:8875: A2 19       ;
                STX $0F                     ; $13:8877: 86 0F       ;
                LDA #$0800                  ; $13:8879: A9 00 08    ;
                STA $0B                     ; $13:887C: 85 0B       ;
                LDA #$3C00                  ; $13:887E: A9 00 3C    ;
                JSR CODE_138AC4             ; $13:8881: 20 C4 8A    ;
                SEP #$20                    ; $13:8884: E2 20       ;
                RTL                         ; $13:8886: 6B          ;

CODE_138887:    REP #$20                    ; $13:8887: C2 20       ;
                LDA #$B000                  ; $13:8889: A9 00 B0    ;
                STA $0D                     ; $13:888C: 85 0D       ;
                LDX #$17                    ; $13:888E: A2 17       ;
                STX $0F                     ; $13:8890: 86 0F       ;
                LDA #$0800                  ; $13:8892: A9 00 08    ;
                STA $0B                     ; $13:8895: 85 0B       ;
                LDA #$3400                  ; $13:8897: A9 00 34    ;
                JSR CODE_138AC4             ; $13:889A: 20 C4 8A    ;
                SEP #$20                    ; $13:889D: E2 20       ;
                RTL                         ; $13:889F: 6B          ;

CODE_1388A0:    REP #$20                    ; $13:88A0: C2 20       ;
                LDA #$C000                  ; $13:88A2: A9 00 C0    ;
                STA $0D                     ; $13:88A5: 85 0D       ;
                LDX #$19                    ; $13:88A7: A2 19       ;
                STX $0F                     ; $13:88A9: 86 0F       ;
                LDA #$0800                  ; $13:88AB: A9 00 08    ;
                STA $0B                     ; $13:88AE: 85 0B       ;
                LDA #$2C00                  ; $13:88B0: A9 00 2C    ;
                JSR CODE_138AC4             ; $13:88B3: 20 C4 8A    ;
                LDA #$9800                  ; $13:88B6: A9 00 98    ;
                STA $0D                     ; $13:88B9: 85 0D       ;
                LDX #$19                    ; $13:88BB: A2 19       ;
                STX $0F                     ; $13:88BD: 86 0F       ;
                LDA #$0800                  ; $13:88BF: A9 00 08    ;
                STA $0B                     ; $13:88C2: 85 0B       ;
                LDA #$3C00                  ; $13:88C4: A9 00 3C    ;
                JSR CODE_138AC4             ; $13:88C7: 20 C4 8A    ;
                LDA #$0800                  ; $13:88CA: A9 00 08    ;
                STA $0B                     ; $13:88CD: 85 0B       ;
                LDA #$B800                  ; $13:88CF: A9 00 B8    ;
                STA $0D                     ; $13:88D2: 85 0D       ;
                LDX #$17                    ; $13:88D4: A2 17       ;
                STX $0F                     ; $13:88D6: 86 0F       ;
                LDA #$7C00                  ; $13:88D8: A9 00 7C    ;
                JSR CODE_138AE7             ; $13:88DB: 20 E7 8A    ;
                LDA #$0800                  ; $13:88DE: A9 00 08    ;
                STA $0B                     ; $13:88E1: 85 0B       ;
                LDA #$C000                  ; $13:88E3: A9 00 C0    ;
                STA $0D                     ; $13:88E6: 85 0D       ;
                LDX #$17                    ; $13:88E8: A2 17       ;
                STX $0F                     ; $13:88EA: 86 0F       ;
                LDA #$7800                  ; $13:88EC: A9 00 78    ;
                JSR CODE_138AE7             ; $13:88EF: 20 E7 8A    ;
                SEP #$20                    ; $13:88F2: E2 20       ;
                RTL                         ; $13:88F4: 6B          ;

CODE_1388F5:    REP #$20                ; $13:88F5: C2 20       ; Accumulator = 16-bit.
                LDA #$8000              ; $13:88F7: A9 00 80    ; \ Layer tiles 00-3F.
                STA $0D                 ; $13:88FA: 85 0D       ;  | ($1A8000)
                LDX #$1A                ; $13:88FC: A2 1A       ;  |
                STX $0F                 ; $13:88FE: 86 0F       ; /
                LDA #$0800              ; $13:8900: A9 00 08    ; \ Amount of bytes to transfer = #$0800.
                STA $0B                 ; $13:8903: 85 0B       ; /
                LDA #$2000              ; $13:8905: A9 00 20    ; \ First half of first GFX slot.
                JSR CODE_138AC4         ; $13:8908: 20 C4 8A    ; / Transfer to VRAM.
                LDA.w #DATA_19C800      ; $13:890B: A9 00 C8    ; \ Layer tiles 40-FF.
                STA $0D                 ; $13:890E: 85 0D       ;  | ($19C800)
                LDX.b #DATA_19C800>>16  ; $13:8910: A2 19       ;  |
                STX $0F                 ; $13:8912: 86 0F       ; /
                LDA #$1800              ; $13:8914: A9 00 18    ; \ Amount of bytes to transfer = #$1800.
                STA $0B                 ; $13:8917: 85 0B       ; /
                LDA #$2400              ; $13:8919: A9 00 24    ; \ Second half of first and full second GFX slot.
                JSR CODE_138AC4         ; $13:891C: 20 C4 8A    ; / Transfer to VRAM.
                LDA #$4000              ; $13:891F: A9 00 40    ; \ Amount of bytes to transfer = #$4000.
                STA $0B                 ; $13:8922: 85 0B       ; /
                LDA.w #DATA_1B8000      ; $13:8924: A9 00 80    ; \ Sprite tiles 00-1FF.
                STA $0D                 ; $13:8927: 85 0D       ;  | ($1B8000)
                LDX.b #DATA_1B8000>>16  ; $13:8929: A2 1B       ;  |
                STX $0F                 ; $13:892B: 86 0F       ; /
                LDA #$6000              ; $13:892D: A9 00 60    ; \ All four GFX slots.
                JSR CODE_138AE7         ; $13:8930: 20 E7 8A    ; / Transfer to VRAM.
                SEP #$20                ; $13:8933: E2 20       ; Accumulator = 8-bit.
                RTL                     ; $13:8935: 6B          ; Return.

CODE_138936:    PHB                         ; $13:8936: 8B          ;
                PHK                         ; $13:8937: 4B          ;
                PLB                         ; $13:8938: AB          ;
                REP #$20                    ; $13:8939: C2 20       ;
                LDA #$D000                  ; $13:893B: A9 00 D0    ;
                STA $0D                     ; $13:893E: 85 0D       ;
                LDX #$18                    ; $13:8940: A2 18       ;
                STX $0F                     ; $13:8942: 86 0F       ;
                LDA #$0800                  ; $13:8944: A9 00 08    ;
                STA $0B                     ; $13:8947: 85 0B       ;
                LDA #$2000                  ; $13:8949: A9 00 20    ;
                JSR CODE_138AC4             ; $13:894C: 20 C4 8A    ;
                LDA #$F000                  ; $13:894F: A9 00 F0    ;
                STA $0D                     ; $13:8952: 85 0D       ;
                LDX #$1C                    ; $13:8954: A2 1C       ;
                STX $0F                     ; $13:8956: 86 0F       ;
                LDA #$0800                  ; $13:8958: A9 00 08    ;
                STA $0B                     ; $13:895B: 85 0B       ;
                LDA #$2400                  ; $13:895D: A9 00 24    ;
                JSR CODE_138AC4             ; $13:8960: 20 C4 8A    ;
                LDA #$F800                  ; $13:8963: A9 00 F8    ;
                STA $0D                     ; $13:8966: 85 0D       ;
                LDX #$19                    ; $13:8968: A2 19       ;
                STX $0F                     ; $13:896A: 86 0F       ;
                LDA #$0800                  ; $13:896C: A9 00 08    ;
                STA $0B                     ; $13:896F: 85 0B       ;
                LDA #$2800                  ; $13:8971: A9 00 28    ;
                JSR CODE_138AC4             ; $13:8974: 20 C4 8A    ;
                LDA #$B000                  ; $13:8977: A9 00 B0    ;
                STA $0D                     ; $13:897A: 85 0D       ;
                LDX #$1B                    ; $13:897C: A2 1B       ;
                STX $0F                     ; $13:897E: 86 0F       ;
                LDA #$0800                  ; $13:8980: A9 00 08    ;
                STA $0B                     ; $13:8983: 85 0B       ;
                LDA #$2C00                  ; $13:8985: A9 00 2C    ;
                JSR CODE_138AC4             ; $13:8988: 20 C4 8A    ;
                LDA #$9800                  ; $13:898B: A9 00 98    ;
                STA $0D                     ; $13:898E: 85 0D       ;
                LDX #$19                    ; $13:8990: A2 19       ;
                STX $0F                     ; $13:8992: 86 0F       ;
                LDA #$0800                  ; $13:8994: A9 00 08    ;
                STA $0B                     ; $13:8997: 85 0B       ;
                LDA #$3C00                  ; $13:8999: A9 00 3C    ;
                JSR CODE_138AC4             ; $13:899C: 20 C4 8A    ;
                SEP #$20                    ; $13:899F: E2 20       ;
                PLB                         ; $13:89A1: AB          ;
                RTL                         ; $13:89A2: 6B          ;

CODE_1389A3:    PHB                         ; $13:89A3: 8B          ;
                PHK                         ; $13:89A4: 4B          ;
                PLB                         ; $13:89A5: AB          ;
                REP #$20                    ; $13:89A6: C2 20       ;
                LDA #$8000                  ; $13:89A8: A9 00 80    ;
                STA $0D                     ; $13:89AB: 85 0D       ;
                LDX #$1E                    ; $13:89AD: A2 1E       ;
                STX $0F                     ; $13:89AF: 86 0F       ;
                LDA #$1000                  ; $13:89B1: A9 00 10    ;
                STA $0B                     ; $13:89B4: 85 0B       ;
                LDA #$5800                  ; $13:89B6: A9 00 58    ;
                JSR CODE_138AC4             ; $13:89B9: 20 C4 8A    ;
                SEP #$20                    ; $13:89BC: E2 20       ;
                PLB                         ; $13:89BE: AB          ;
                RTL                         ; $13:89BF: 6B          ;

DATA_1389C0:    dw $D000                                        ;
                dw $D200                                        ;
                dw $D400                                        ;
                dw $D600                                        ;
                dw $F000                                        ;
                dw $F200                                        ;
                dw $F400                                        ;
                dw $F600                                        ;
                dw $F800                                        ;
                dw $FA00                                        ;
                dw $FC00                                        ;
                dw $FE00                                        ;
                dw $B000                                        ;
                dw $B200                                        ;
                dw $B400                                        ;
                dw $B600                                        ;

DATA_1389E0:    db $18,$18,$18,$18,$1C,$1C,$1C,$1C              ;
                db $19,$19,$19,$19,$1B,$1B,$1B,$1B              ;
                   
DATA_1389F0:    dw $2000                                        ;
                dw $2100                                        ;
                dw $2200                                        ;
                dw $2300                                        ;
                dw $2400                                        ;
                dw $2500                                        ;
                dw $2600                                        ;
                dw $2700                                        ;
                dw $2800                                        ;
                dw $2900                                        ;
                dw $2A00                                        ;
                dw $2B00                                        ;
                dw $2C00                                        ;
                dw $2D00                                        ;
                dw $2E00                                        ;
                dw $2F00                                        ;
                
CODE_138A10:    REP #$20                    ; $13:8A10: C2 20       ;
                LDA $0759                   ; $13:8A12: AD 59 07    ;
                AND #$00FF                  ; $13:8A15: 29 FF 00    ;
                BEQ CODE_138A3A             ; $13:8A18: F0 20       ;
                DEC $0759                   ; $13:8A1A: CE 59 07    ;
                DEC A                       ; $13:8A1D: 3A          ;
                TAX                         ; $13:8A1E: AA          ;
                LDA.l DATA_1389E0,x                 ; $13:8A1F: BF E0 89 13 ;
                STA $0F                     ; $13:8A23: 85 0F       ;
                TXA                         ; $13:8A25: 8A          ;
                ASL A                       ; $13:8A26: 0A          ;
                TAX                         ; $13:8A27: AA          ;
                LDA.l DATA_1389C0,x                 ; $13:8A28: BF C0 89 13 ;
                STA $0D                     ; $13:8A2C: 85 0D       ;
                LDA #$0200                  ; $13:8A2E: A9 00 02    ;
                STA $0B                     ; $13:8A31: 85 0B       ;
                LDA.l DATA_1389F0,x                 ; $13:8A33: BF F0 89 13 ;
                JSR CODE_138AC4             ; $13:8A37: 20 C4 8A    ;
CODE_138A3A:    LDA $0722                   ; $13:8A3A: AD 22 07    ;
                AND #$00FF                  ; $13:8A3D: 29 FF 00    ;
                BEQ CODE_138A62             ; $13:8A40: F0 20       ;
                CMP #$0002                  ; $13:8A42: C9 02 00    ;
                BEQ CODE_138A4E             ; $13:8A45: F0 07       ;
                LDA #$E000                  ; $13:8A47: A9 00 E0    ;
                LDX #$1A                    ; $13:8A4A: A2 1A       ;
                BRA CODE_138A53             ; $13:8A4C: 80 05       ;

CODE_138A4E:    LDA #$D000                  ; $13:8A4E: A9 00 D0    ;
                LDX #$16                    ; $13:8A51: A2 16       ;
CODE_138A53:    STA $0D                     ; $13:8A53: 85 0D       ;
                STX $0F                     ; $13:8A55: 86 0F       ;
                LDA #$0800                  ; $13:8A57: A9 00 08    ;
                STA $0B                     ; $13:8A5A: 85 0B       ;
                LDA #$7000                  ; $13:8A5C: A9 00 70    ;
                JSR CODE_138AE7             ; $13:8A5F: 20 E7 8A    ;
CODE_138A62:    SEP #$20                    ; $13:8A62: E2 20       ;
                STZ $0722                   ; $13:8A64: 9C 22 07    ;
                RTL                         ; $13:8A67: 6B          ;

CODE_138A68:    REP #$20                    ; $13:8A68: C2 20       ;
                LDA #$8000                  ; $13:8A6A: A9 00 80    ;
                STA $0D                     ; $13:8A6D: 85 0D       ;
                LDX #$19                    ; $13:8A6F: A2 19       ;
                STX $0F                     ; $13:8A71: 86 0F       ;
                LDA #$2000                  ; $13:8A73: A9 00 20    ;
                STA $0B                     ; $13:8A76: 85 0B       ;
                JSR CODE_138AC4             ; $13:8A78: 20 C4 8A    ;
                LDA #$B800                  ; $13:8A7B: A9 00 B8    ;
                STA $0D                     ; $13:8A7E: 85 0D       ;
                LDX #$1B                    ; $13:8A80: A2 1B       ;
                STX $0F                     ; $13:8A82: 86 0F       ;
                LDA #$0800                  ; $13:8A84: A9 00 08    ;
                STA $0B                     ; $13:8A87: 85 0B       ;
                LDA #$7800                  ; $13:8A89: A9 00 78    ;
                JSR CODE_138AE7             ; $13:8A8C: 20 E7 8A    ;
                SEP #$20                    ; $13:8A8F: E2 20       ;
                RTL                         ; $13:8A91: 6B          ;

CODE_138A92:    REP #$20                    ; $13:8A92: C2 20       ;
                LDA #$8800                  ; $13:8A94: A9 00 88    ;
                STA $0D                     ; $13:8A97: 85 0D       ;
                LDX #$1D                    ; $13:8A99: A2 1D       ;
                STX $0F                     ; $13:8A9B: 86 0F       ;
                LDA #$0800                  ; $13:8A9D: A9 00 08    ;
                STA $0B                     ; $13:8AA0: 85 0B       ;
                LDA #$2C00                  ; $13:8AA2: A9 00 2C    ;
                JSR CODE_138AC4             ; $13:8AA5: 20 C4 8A    ;
                SEP #$20                    ; $13:8AA8: E2 20       ;
                RTL                         ; $13:8AAA: 6B          ;

CODE_138AAB:    REP #$20                    ; $13:8AAB: C2 20       ;
                LDA #$9800                  ; $13:8AAD: A9 00 98    ;
                STA $0D                     ; $13:8AB0: 85 0D       ;
                LDX #$1D                    ; $13:8AB2: A2 1D       ;
                STX $0F                     ; $13:8AB4: 86 0F       ;
                LDA #$0800                  ; $13:8AB6: A9 00 08    ;
                STA $0B                     ; $13:8AB9: 85 0B       ;
                LDA #$4000                  ; $13:8ABB: A9 00 40    ;
                JSR CODE_138AC4             ; $13:8ABE: 20 C4 8A    ;
                SEP #$20                    ; $13:8AC1: E2 20       ;
                RTL                         ; $13:8AC3: 6B          ;

CODE_138AC4:    LDX #$80                ; $13:8AC4: A2 80       ; \ Increment after write to $2119.
                STX $2115               ; $13:8AC6: 8E 15 21    ;  | Increment source&destination addresses by 1.
                STA $2116               ; $13:8AC9: 8D 16 21    ;  | 16-bit value in A determines destination in VRAM.
                LDA #$01                ; $13:8ACC: A9 01       ;  | 1 byte per reg (2 regs, low byte in $reg, high byte in $reg+1).
                CLC                     ; $13:8ACE: 18          ;  | Clear carry.
                STA $4300               ; $13:8ACF: 8D 00 43    ;  | -------------^
                LDA $0D                 ; $13:8AD2: A5 0D       ;  | [$0D] holds the source address.
                STA $4302               ; $13:8AD4: 8D 02 43    ;  |
                LDX $0F                 ; $13:8AD7: A6 0F       ;  |
                STX $4304               ; $13:8AD9: 8E 04 43    ;  |
                LDA $0B                 ; $13:8ADC: A5 0B       ;  | $0B (16-bit) holds the size.
                STA $4305               ; $13:8ADE: 8D 05 43    ;  |
                LDX #$01                ; $13:8AE1: A2 01       ;  | Data transfer here.
                STX $420B               ; $13:8AE3: 8E 0B 42    ;  |
                RTS                     ; $13:8AE6: 60          ; / Return.

CODE_138AE7:    LDX #$80                    ; $13:8AE7: A2 80       ;
                STX $2115                   ; $13:8AE9: 8E 15 21    ;
                STA $2116                   ; $13:8AEC: 8D 16 21    ;
                LDA #$01                    ; $13:8AEF: A9 01       ;
                CLC                         ; $13:8AF1: 18          ;
                STA $4300                   ; $13:8AF2: 8D 00 43    ;
                LDA $0D                     ; $13:8AF5: A5 0D       ;
                STA $4302                   ; $13:8AF7: 8D 02 43    ;
                LDX $0F                     ; $13:8AFA: A6 0F       ;
                STX $4304                   ; $13:8AFC: 8E 04 43    ;
                LDA $0B                     ; $13:8AFF: A5 0B       ;
                STA $4305                   ; $13:8B01: 8D 05 43    ;
                LDX #$01                    ; $13:8B04: A2 01       ;
                STX $420B                   ; $13:8B06: 8E 0B 42    ;
                RTS                         ; $13:8B09: 60          ;

DATA_138B0A:    dw $E000                                        ;
                dw $E0C0                                        ;
                dw $E180                                        ;
                dw $E240                                        ;
                dw $E300                                        ;
                dw $E3C0                                        ;
                dw $E480                                        ;
                dw $E540                                        ;

DATA_138B1A:    dw $E600                                        ;
                dw $E6C0                                        ;
                dw $E780                                        ;
                dw $E840                                        ;
                dw $E900                                        ;
                dw $E9C0                                        ;
                dw $EA80                                        ;
                dw $EB40                                        ;
                      
CODE_138B2A:    PHD                         ; $13:8B2A: 0B          ;
                REP #$20                    ; $13:8B2B: C2 20       ;
                LDA #$4300                  ; $13:8B2D: A9 00 43    ;
                TCD                         ; $13:8B30: 5B          ;
                LDY $FE                     ; $13:8B31: A4 FE       ;
                CPY #$80                    ; $13:8B33: C0 80       ;
                BEQ CODE_138B44             ; $13:8B35: F0 0D       ;
                LDY $0217                   ; $13:8B37: AC 17 02    ;
                BNE CODE_138B48             ; $13:8B3A: D0 0C       ;
                LDY $025E                   ; $13:8B3C: AC 5E 02    ;
                BEQ CODE_138B44             ; $13:8B3F: F0 03       ;
                JMP CODE_138C7D             ; $13:8B41: 4C 7D 8C    ;

CODE_138B44:    SEP #$20                    ; $13:8B44: E2 20       ;
                PLD                         ; $13:8B46: 2B          ;
                RTL                         ; $13:8B47: 6B          ;

CODE_138B48:    LDX #$80                    ; $13:8B48: A2 80       ;
                STX $2115                   ; $13:8B4A: 8E 15 21    ;
                LDA #$01                    ; $13:8B4D: A9 01       ;
                CLC                         ; $13:8B4F: 18          ;
                STA $00                     ; $13:8B50: 85 00       ;
                LDX $0722                   ; $13:8B52: AE 22 07    ;
                BNE CODE_138BBA             ; $13:8B55: D0 63       ;
                STA $10                     ; $13:8B57: 85 10       ;
                STA $20                     ; $13:8B59: 85 20       ;
                LDX #$2F                    ; $13:8B5B: A2 2F       ;
                STX $04                     ; $13:8B5D: 86 04       ;
                STX $14                     ; $13:8B5F: 86 14       ;
                LDX #$16                    ; $13:8B61: A2 16       ;
                STX $24                     ; $13:8B63: 86 24       ;
                LDA #$0040                      ; $13:8B65: A9 40 00    ;
                STA $05                 ; $13:8B68: 85 05       ;
                STA $15                     ; $13:8B6A: 85 15       ;
                LDA #$00C0                                  ; $13:8B6C: A9 C0 00    ;
                STA $25                     ; $13:8B6F: 85 25       ;
                LDA #$6000                          ; $13:8B71: A9 00 60    ;
                STA $2116                   ; $13:8B74: 8D 16 21    ;
                LDA $0010                   ; $13:8B77: AD 10 00    ;
                AND #$0038                      ; $13:8B7A: 29 38 00    ;
                LSR A                   ; $13:8B7D: 4A          ;
                LSR A                       ; $13:8B7E: 4A          ;
                TAX                         ; $13:8B7F: AA          ;
                LDA $02ED                   ; $13:8B80: AD ED 02    ;
                STA $02                     ; $13:8B83: 85 02       ;
                LDA $02F1                   ; $13:8B85: AD F1 02    ;
                STA $12                     ; $13:8B88: 85 12       ;
                LDA.l DATA_138B0A,x                 ; $13:8B8A: BF 0A 8B 13 ;
                STA $22                     ; $13:8B8E: 85 22       ;
                LDY #$07                    ; $13:8B90: A0 07       ;
                STY $420B                   ; $13:8B92: 8C 0B 42    ;
                LDA #$0040                      ; $13:8B95: A9 40 00    ;
                STA $05                     ; $13:8B98: 85 05       ;
                STA $15                     ; $13:8B9A: 85 15       ;
                LDA #$00C0                                  ; $13:8B9C: A9 C0 00    ;
                STA $25                     ; $13:8B9F: 85 25       ;
                LDA #$6100                      ; $13:8BA1: A9 00 61    ;
                STA $2116                   ; $13:8BA4: 8D 16 21    ;
                LDA $02EF                   ; $13:8BA7: AD EF 02    ;
                STA $02                     ; $13:8BAA: 85 02       ;
                LDA $02F3                   ; $13:8BAC: AD F3 02    ;
                STA $12                     ; $13:8BAF: 85 12       ;
                LDA.l DATA_138B1A,x                 ; $13:8BB1: BF 1A 8B 13 ;
                STA $22                     ; $13:8BB5: 85 22       ;
                STY $420B                   ; $13:8BB7: 8C 0B 42    ;
CODE_138BBA:    LDA #$0200                  ; $13:8BBA: A9 00 02    ;
                STA $05                     ; $13:8BBD: 85 05       ;
                LDA $0765                           ; $13:8BBF: AD 65 07    ;
                STA $2116                   ; $13:8BC2: 8D 16 21    ;
                LDA $021B                   ; $13:8BC5: AD 1B 02    ;
                STA $02                     ; $13:8BC8: 85 02       ;
                LDY $0788                   ; $13:8BCA: AC 88 07    ;
                STY $04                     ; $13:8BCD: 84 04       ;
                LDX #$01                    ; $13:8BCF: A2 01       ;
                STX $420B                   ; $13:8BD1: 8E 0B 42    ;
                LDA #$0040                      ; $13:8BD4: A9 40 00    ;
                STA $05                 ; $13:8BD7: 85 05       ;
                LDA #$22E0                  ; $13:8BD9: A9 E0 22    ;
                STA $2116                   ; $13:8BDC: 8D 16 21    ;
                LDA $0252                   ; $13:8BDF: AD 52 02    ;
                STA $02                     ; $13:8BE2: 85 02       ;
                STY $04                     ; $13:8BE4: 84 04       ;
                STX $420B                   ; $13:8BE6: 8E 0B 42    ;
                SEP #$20                    ; $13:8BE9: E2 20       ;
                PLD                         ; $13:8BEB: 2B          ;
                RTL                         ; $13:8BEC: 6B          ;

DATA_138BED:    dw $D000                                        ;
                dw $D600                                        ;
                dw $DC00                                        ;
                dw $E200                                        ;
                dw $E800                                        ;
                dw $EE00                                        ;
                dw $F400                                        ;
                dw $FA00                                        ;

DATA_138BFD:    dw $0000                                        ;
                dw $0200                                        ;
                dw $0400                                        ;

DATA_138C03:    dw $2000                                        ;
                dw $2100                                        ;
                dw $2200                                        ;

DATA_138C09:    db $18,$1D                                      ;
                   
CODE_138C0B:    LDA $025E               ; $13:8C0B: AD 5E 02    ;
                BEQ CODE_138C13         ; $13:8C0E: F0 03       ;
                JMP CODE_138CCE         ; $13:8C10: 4C CE 8C    ;

CODE_138C13:    INC $0767               ; $13:8C13: EE 67 07    ;
                LDA $0767                   ; $13:8C16: AD 67 07    ;
                CMP #$03                    ; $13:8C19: C9 03       ;
                BCC CODE_138C20             ; $13:8C1B: 90 03       ;
                STZ $0767                   ; $13:8C1D: 9C 67 07    ;
CODE_138C20:    INC $0219                   ; $13:8C20: EE 19 02    ;
                LDA $0219                   ; $13:8C23: AD 19 02    ;
                CMP #$08                    ; $13:8C26: C9 08       ;
                BCC CODE_138C30             ; $13:8C28: 90 06       ;
                INC $021A                   ; $13:8C2A: EE 1A 02    ;
                STZ $0219                   ; $13:8C2D: 9C 19 02    ;
CODE_138C30:    LDA $021A                   ; $13:8C30: AD 1A 02    ;
                AND #$07                    ; $13:8C33: 29 07       ;
                ASL A                       ; $13:8C35: 0A          ;
                TAX                         ; $13:8C36: AA          ;
                REP #$20                    ; $13:8C37: C2 20       ;
                LDA.l DATA_138BED,x                 ; $13:8C39: BF ED 8B 13 ;
                STA $021B                   ; $13:8C3D: 8D 1B 02    ;
                LDA $0767                   ; $13:8C40: AD 67 07    ;
                AND #$00FF                  ; $13:8C43: 29 FF 00    ;
                ASL A                       ; $13:8C46: 0A          ;
                TAX                         ; $13:8C47: AA          ;
                LDA $021B                   ; $13:8C48: AD 1B 02    ;
                CLC                         ; $13:8C4B: 18          ;
                ADC.l DATA_138BFD,x                 ; $13:8C4C: 7F FD 8B 13 ;
                STA $021B                   ; $13:8C50: 8D 1B 02    ;
                LDA.l DATA_138C03,x                 ; $13:8C53: BF 03 8C 13 ;
                STA $0765                   ; $13:8C57: 8D 65 07    ;
                LDX $0787                   ; $13:8C5A: AE 87 07    ;
                LDA.l DATA_138C09,x                 ; $13:8C5D: BF 09 8C 13 ;
                AND #$00FF                  ; $13:8C61: 29 FF 00    ;
                TAY                         ; $13:8C64: A8          ;
                STY $0788                   ; $13:8C65: 8C 88 07    ;
                LDA $10                     ; $13:8C68: A5 10       ;
                AND #$0007                  ; $13:8C6A: 29 07 00    ;
                ASL A                       ; $13:8C6D: 0A          ;
                TAX                         ; $13:8C6E: AA          ;
                LDA.l DATA_138BED,x                 ; $13:8C6F: BF ED 8B 13 ;
                CLC                         ; $13:8C73: 18          ;
                ADC #$05C0                  ; $13:8C74: 69 C0 05    ;
                STA $0252                   ; $13:8C77: 8D 52 02    ;
                SEP #$20                    ; $13:8C7A: E2 20       ;
                RTL                         ; $13:8C7C: 6B          ;

CODE_138C7D:    LDX #$80                    ; $13:8C7D: A2 80       ;
                STX $2115                   ; $13:8C7F: 8E 15 21    ;
                LDA #$1801                              ; $13:8C82: A9 01 18    ;
                STA $00                     ; $13:8C85: 85 00       ;
                LDA #$0800                  ; $13:8C87: A9 00 08    ;
                STA $05                     ; $13:8C8A: 85 05       ;
                LDA #$2000                      ; $13:8C8C: A9 00 20    ;
                STA $2116               ; $13:8C8F: 8D 16 21    ;
                LDA $021B               ; $13:8C92: AD 1B 02    ;
                STA $02                         ; $13:8C95: 85 02       ;
                LDY #$1A                    ; $13:8C97: A0 1A       ;
                STY $04                     ; $13:8C99: 84 04       ;
                LDX #$01                    ; $13:8C9B: A2 01       ;
                STX $420B                   ; $13:8C9D: 8E 0B 42    ;
                SEP #$20                    ; $13:8CA0: E2 20       ;
                PLD                         ; $13:8CA2: 2B          ;
                RTL                         ; $13:8CA3: 6B          ;

DATA_138CA4:    dw $8000                                        ;
                dw $8800                                        ;
                dw $9000                                        ;
                dw $9800                                        ;
                dw $A000                                        ;
                dw $A800                                        ;
                dw $B000                                        ;
                dw $B800                                        ;
                dw $B000                                        ;
                dw $A800                                        ;
                dw $A000                                        ;
                dw $9800                                        ;
                dw $9000                                        ;
                dw $8800                                        ;

DATA_138CC0:    dw $D000                                        ;
                dw $C800                                        ;
                dw $C000                                        ;
                dw $D800                                        ;
                dw $C000                                        ;
                dw $C800                                        ;
                dw $D000                                        ;
                
CODE_138CCE:    LDA $15                     ; $13:8CCE: A5 15       ;
                ASL A                       ; $13:8CD0: 0A          ;
                TAX                         ; $13:8CD1: AA          ;
                REP #$20                    ; $13:8CD2: C2 20       ;
                LDA $025E                   ; $13:8CD4: AD 5E 02    ;
                AND #$0003                  ; $13:8CD7: 29 03 00    ;
                CMP #$0002                  ; $13:8CDA: C9 02 00    ;
                BEQ CODE_138CE8             ; $13:8CDD: F0 09       ;
                LDA.l DATA_138CA4,x                 ; $13:8CDF: BF A4 8C 13 ;
                STA $021B                   ; $13:8CE3: 8D 1B 02    ;
                BRA CODE_138CEF             ; $13:8CE6: 80 07       ;

CODE_138CE8:    LDA.l DATA_138CC0,x                 ; $13:8CE8: BF C0 8C 13 ;
                STA $021B                   ; $13:8CEC: 8D 1B 02    ;
CODE_138CEF:    SEP #$20                    ; $13:8CEF: E2 20       ;
                RTL                         ; $13:8CF1: 6B          ;

CODE_138CF2:    LDA #$04                    ; $13:8CF2: A9 04       ;
                STA $1199                   ; $13:8CF4: 8D 99 11    ;
                STA $119B                   ; $13:8CF7: 8D 9B 11    ;
                STA $119D                   ; $13:8CFA: 8D 9D 11    ;
                STA $119F                   ; $13:8CFD: 8D 9F 11    ;
                STA $11A1                   ; $13:8D00: 8D A1 11    ;
                STA $11A3                   ; $13:8D03: 8D A3 11    ;
                STA $11A5                   ; $13:8D06: 8D A5 11    ;
                STA $11A7                   ; $13:8D09: 8D A7 11    ;
                STA $11A9                   ; $13:8D0C: 8D A9 11    ;
                STA $11AB                   ; $13:8D0F: 8D AB 11    ;
                STA $11AD                   ; $13:8D12: 8D AD 11    ;
                STA $11AF                   ; $13:8D15: 8D AF 11    ;
                STA $11B1                   ; $13:8D18: 8D B1 11    ;
                STA $11B3                   ; $13:8D1B: 8D B3 11    ;
                STA $11B5                   ; $13:8D1E: 8D B5 11    ;
                STA $11B7                   ; $13:8D21: 8D B7 11    ;
                RTL                         ; $13:8D24: 6B          ;

CODE_138D25:    STZ $1199                   ; $13:8D25: 9C 99 11    ;
                STZ $119B                   ; $13:8D28: 9C 9B 11    ;
                STZ $119D                   ; $13:8D2B: 9C 9D 11    ;
                STZ $119F                   ; $13:8D2E: 9C 9F 11    ;
                STZ $11A1                   ; $13:8D31: 9C A1 11    ;
                STZ $11A3                   ; $13:8D34: 9C A3 11    ;
                STZ $11A5                   ; $13:8D37: 9C A5 11    ;
                STZ $11A7                   ; $13:8D3A: 9C A7 11    ;
                STZ $11A9                   ; $13:8D3D: 9C A9 11    ;
                STZ $11AB                   ; $13:8D40: 9C AB 11    ;
                STZ $11AD                   ; $13:8D43: 9C AD 11    ;
                STZ $11AF                   ; $13:8D46: 9C AF 11    ;
                STZ $11B1                   ; $13:8D49: 9C B1 11    ;
                STZ $11B3                   ; $13:8D4C: 9C B3 11    ;
                STZ $11B5                   ; $13:8D4F: 9C B5 11    ;
                STZ $11B7                   ; $13:8D52: 9C B7 11    ;
                RTL                         ; $13:8D55: 6B          ;

CODE_138D56:    REP #$20                    ; $13:8D56: C2 20       ;
                LDX #$2E                    ; $13:8D58: A2 2E       ;
CODE_138D5A:    LDA.w DATA_11BBC6,x                 ; $13:8D5A: BD C6 BB    ;
                STA $1400,x                 ; $13:8D5D: 9D 00 14    ;
                DEX                         ; $13:8D60: CA          ;
                DEX                         ; $13:8D61: CA          ;
                BPL CODE_138D5A             ; $13:8D62: 10 F6       ;
                SEP #$20                    ; $13:8D64: E2 20       ;
                RTL                         ; $13:8D66: 6B          ;

CODE_138D67:    LDX #$23                    ; $13:8D67: A2 23       ;
CODE_138D69:    LDA.l DATA_15EC33,x                 ; $13:8D69: BF 33 EC 15 ;
                STA $1194,x                 ; $13:8D6D: 9D 94 11    ;
                DEX                         ; $13:8D70: CA          ;
                BPL CODE_138D69             ; $13:8D71: 10 F6       ;
                RTL                         ; $13:8D73: 6B          ;

                LDA $FC                     ; $13:8D74: A5 FC       ;
                AND #$10                    ; $13:8D76: 29 10       ;
                BEQ CODE_138D96             ; $13:8D78: F0 1C       ;
                LDX $0635                   ; $13:8D7A: AE 35 06    ;
                INC $0533                   ; $13:8D7D: EE 33 05    ;
                LDA $0533                   ; $13:8D80: AD 33 05    ;
                STA $04E8                   ; $13:8D83: 8D E8 04    ;
                CMP.w DATA_11C9B4+1,x                   ; $13:8D86: DD B5 C9    ;
                BNE CODE_138DC1             ; $13:8D89: D0 36       ;
                LDA.w DATA_11C9B4,x                 ; $13:8D8B: BD B4 C9    ;
                STA $0533                   ; $13:8D8E: 8D 33 05    ;
                STA $04E8                   ; $13:8D91: 8D E8 04    ;
                BRA CODE_138DC1             ; $13:8D94: 80 2B       ;

CODE_138D96:    LDA $FC                     ; $13:8D96: A5 FC       ;
                AND #$20                    ; $13:8D98: 29 20       ;
                BNE CODE_138D9F             ; $13:8D9A: D0 03       ;
                BRL CODE_138E26             ; $13:8D9C: 82 87 00    ;

CODE_138D9F:    INC $0635                   ; $13:8D9F: EE 35 06    ;
                LDX $0635                   ; $13:8DA2: AE 35 06    ;
                STX $0405                   ; $13:8DA5: 8E 05 04    ;
                LDA.w DATA_11C9B4,x                 ; $13:8DA8: BD B4 C9    ;
                STA $0533                   ; $13:8DAB: 8D 33 05    ;
                STA $04E8                   ; $13:8DAE: 8D E8 04    ;
                CPX #$07                    ; $13:8DB1: E0 07       ;
                BNE CODE_138DC1             ; $13:8DB3: D0 0C       ;
                STZ $0635                   ; $13:8DB5: 9C 35 06    ;
                STZ $0405                   ; $13:8DB8: 9C 05 04    ;
                STZ $0533                   ; $13:8DBB: 9C 33 05    ;
                STZ $04E8                   ; $13:8DBE: 9C E8 04    ;
CODE_138DC1:    LDA $0635                   ; $13:8DC1: AD 35 06    ;
                INC A                       ; $13:8DC4: 1A          ;
                ORA #$80                    ; $13:8DC5: 09 80       ;
                STA $118E                   ; $13:8DC7: 8D 8E 11    ;
                LDA #$0C                    ; $13:8DCA: A9 0C       ;
                STA $118F                   ; $13:8DCC: 8D 8F 11    ;
                LDY #$0C                    ; $13:8DCF: A0 0C       ;
CODE_138DD1:    LDA #$BF                    ; $13:8DD1: A9 BF       ;
                STA $116C,y                 ; $13:8DD3: 99 6C 11    ;
                LDA #$00                    ; $13:8DD6: A9 00       ;
                STA $116D,y                 ; $13:8DD8: 99 6D 11    ;
                DEY                         ; $13:8DDB: 88          ;
                DEY                         ; $13:8DDC: 88          ;
                BPL CODE_138DD1             ; $13:8DDD: 10 F2       ;
                LDY $0635                   ; $13:8DDF: AC 35 06    ;
                LDA $0533                   ; $13:8DE2: AD 33 05    ;
                SEC                         ; $13:8DE5: 38          ;
                SBC.w DATA_11C9B4,y                 ; $13:8DE6: F9 B4 C9    ;
                STA $0629                   ; $13:8DE9: 8D 29 06    ;
                CLC                         ; $13:8DEC: 18          ;
                ADC #$81                    ; $13:8DED: 69 81       ;
                STA $1192                   ; $13:8DEF: 8D 92 11    ;
                LDA #$0C                    ; $13:8DF2: A9 0C       ;
                STA $1193                   ; $13:8DF4: 8D 93 11    ;
                LDA.w DATA_11C9B4+1,y                   ; $13:8DF7: B9 B5 C9    ;
                SEC                         ; $13:8DFA: 38          ;
                SBC.w DATA_11C9B4,y                 ; $13:8DFB: F9 B4 C9    ;
                STA $03                     ; $13:8DFE: 85 03       ;
                LDX #$00                    ; $13:8E00: A2 00       ;
                TXY                         ; $13:8E02: 9B          ;
CODE_138E03:    LDA #$EB                    ; $13:8E03: A9 EB       ;
                CPX $0629                   ; $13:8E05: EC 29 06    ;
                BNE CODE_138E0C             ; $13:8E08: D0 02       ;
                LDA #$EC                    ; $13:8E0A: A9 EC       ;
CODE_138E0C:    STA $116C,y                 ; $13:8E0C: 99 6C 11    ;
                LDA #$1C                    ; $13:8E0F: A9 1C       ;
                STA $116D,y                 ; $13:8E11: 99 6D 11    ;
                INY                         ; $13:8E14: C8          ;
                INY                         ; $13:8E15: C8          ;
                INY                         ; $13:8E16: C8          ;
                INY                         ; $13:8E17: C8          ;
                INX                         ; $13:8E18: E8          ;
                CPX $03                     ; $13:8E19: E4 03       ;
                BCC CODE_138E03             ; $13:8E1B: 90 E6       ;
                LDA #$FF                    ; $13:8E1D: A9 FF       ;
                STA $1194                   ; $13:8E1F: 8D 94 11    ;
                LDA #$08                    ; $13:8E22: A9 08       ;
                STA $11                     ; $13:8E24: 85 11       ;
CODE_138E26:    RTL                         ; $13:8E26: 6B          ;
                LDY #$C0                    ; $13:8E27: A0 C0       ;
CODE_138E29:    CMP #$0A                    ; $13:8E29: C9 0A       ;
                BCC CODE_138E32             ; $13:8E2B: 90 05       ;
                SBC #$0A                    ; $13:8E2D: E9 0A       ;
                INY                         ; $13:8E2F: C8          ;
                BRA CODE_138E29             ; $13:8E30: 80 F7       ;

CODE_138E32:    ORA #$C0                    ; $13:8E32: 09 C0       ;
                CPY #$C0                    ; $13:8E34: C0 C0       ;
                BNE CODE_138E3A             ; $13:8E36: D0 02       ;

                LDY #$BF                    ; $13:8E38: A0 BF       ;
CODE_138E3A:    RTS                         ; $13:8E3A: 60          ;

CODE_138E3B:    PHB                         ; $13:8E3B: 8B          ;
                PHK                         ; $13:8E3C: 4B          ;
                PLB                         ; $13:8E3D: AB          ;
                LDA #$00                    ; $13:8E3E: A9 00       ;
                STA $0235                   ; $13:8E40: 8D 35 02    ;
                LDA #$00                    ; $13:8E43: A9 00       ;
                STA $0236                   ; $13:8E45: 8D 36 02    ;
                LDA #$CA                    ; $13:8E48: A9 CA       ;
                STA $0237                   ; $13:8E4A: 8D 37 02    ;
                LDA #$15                    ; $13:8E4D: A9 15       ;
                STA $212A                   ; $13:8E4F: 8D 2A 21    ;
                LDA #$06                    ; $13:8E52: A9 06       ;
                STA $212B                   ; $13:8E54: 8D 2B 21    ;
                LDA #$41                    ; $13:8E57: A9 41       ;
                STA $4370                   ; $13:8E59: 8D 70 43    ;
                LDA #$26                    ; $13:8E5C: A9 26       ;
                STA $4371                   ; $13:8E5E: 8D 71 43    ;
                LDA.b #DATA_138EDD                      ; $13:8E61: A9 DD       ;
                STA $4372                   ; $13:8E63: 8D 72 43    ;
                LDA.b #DATA_138EDD>>8                   ; $13:8E66: A9 8E       ;
                STA $4373                   ; $13:8E68: 8D 73 43    ;
                LDA.b #DATA_138EDD>>16                      ; $13:8E6B: A9 13       ;
                STA $4374                   ; $13:8E6D: 8D 74 43    ;
                LDA #$7F                    ; $13:8E70: A9 7F       ;
                STA $4377                   ; $13:8E72: 8D 77 43    ;
                LDA #$41                    ; $13:8E75: A9 41       ;
                STA $4330                   ; $13:8E77: 8D 30 43    ;
                LDA #$28                    ; $13:8E7A: A9 28       ;
                STA $4331                   ; $13:8E7C: 8D 31 43    ;
                LDA.b #DATA_138EE4                      ; $13:8E7F: A9 E4       ;
                STA $4332                   ; $13:8E81: 8D 32 43    ;
                LDA.b #DATA_138EE4>>8                   ; $13:8E84: A9 8E       ;
                STA $4333                   ; $13:8E86: 8D 33 43    ;
                LDA.b #DATA_138EE4>>16                      ; $13:8E89: A9 13       ;
                STA $4334                   ; $13:8E8B: 8D 34 43    ;
                LDA #$7F                    ; $13:8E8E: A9 7F       ;
                STA $4337                   ; $13:8E90: 8D 37 43    ;
                LDA #$10                    ; $13:8E93: A9 10       ;
                STA $0238                   ; $13:8E95: 8D 38 02    ;
                LDA #$B7                    ; $13:8E98: A9 B7       ;
                STA $0239                   ; $13:8E9A: 8D 39 02    ;
                LDA #$20                    ; $13:8E9D: A9 20       ;
                STA $023D                   ; $13:8E9F: 8D 3D 02    ;
                ASL A                       ; $13:8EA2: 0A          ;
                STA $023E                   ; $13:8EA3: 8D 3E 02    ;
                ASL A                       ; $13:8EA6: 0A          ;
                STA $023F                   ; $13:8EA7: 8D 3F 02    ;
                STZ $023C                   ; $13:8EAA: 9C 3C 02    ;
                STZ $0244                   ; $13:8EAD: 9C 44 02    ;
                LDA #$13                    ; $13:8EB0: A9 13       ;
                STA $0243                   ; $13:8EB2: 8D 43 02    ;
                STA $023B                   ; $13:8EB5: 8D 3B 02    ;
                LDA $04BC                   ; $13:8EB8: AD BC 04    ;
                STA $0B00                   ; $13:8EBB: 8D 00 0B    ;
                LDA $04BD                   ; $13:8EBE: AD BD 04    ;
                STA $0B01                   ; $13:8EC1: 8D 01 0B    ;
                LDA #$01                    ; $13:8EC4: A9 01       ;
                STA $02A9                   ; $13:8EC6: 8D A9 02    ;
                STZ $023A                   ; $13:8EC9: 9C 3A 02    ;
                STZ $022B                   ; $13:8ECC: 9C 2B 02    ;
                STZ $0229                   ; $13:8ECF: 9C 29 02    ;
                STZ $0232                   ; $13:8ED2: 9C 32 02    ;
                STZ $0240                   ; $13:8ED5: 9C 40 02    ;
                STZ $0245                   ; $13:8ED8: 9C 45 02    ;
                PLB                         ; $13:8EDB: AB          ;
                RTL                         ; $13:8EDC: 6B          ;

DATA_138EDD:    db $F0,$00,$F0,$F0,$E0,$F0,$00                  ;

DATA_138EE4:    db $F0,$00,$F2,$F0,$E0,$F2,$00                  ;
            
CODE_138EEB:    REP #$30                    ; $13:8EEB: C2 30       ;
                LDA $022B                   ; $13:8EED: AD 2B 02    ;
                AND #$00FF                  ; $13:8EF0: 29 FF 00    ;
                ASL A                       ; $13:8EF3: 0A          ;
                TAX                         ; $13:8EF4: AA          ;
                LDA.l DATA_138FB7,x                 ; $13:8EF5: BF B7 8F 13 ;
                STA $0712                   ; $13:8EF9: 8D 12 07    ;
                LDA.l DATA_138FC1,x                 ; $13:8EFC: BF C1 8F 13 ;
                STA $0714                   ; $13:8F00: 8D 14 07    ;
                LDA.l DATA_138FCB,x                 ; $13:8F03: BF CB 8F 13 ;
                STA $0716                   ; $13:8F07: 8D 16 07    ;
                LDA.l DATA_138FC9                   ; $13:8F0A: AF C9 8F 13 ;
                STA $0718                   ; $13:8F0E: 8D 18 07    ;
                LDA.l DATA_138FBF                   ; $13:8F11: AF BF 8F 13 ;
                TAX                         ; $13:8F15: AA          ;
CODE_138F16:    LDA #$00FF                  ; $13:8F16: A9 FF 00    ;
                CPX $0714                   ; $13:8F19: EC 14 07    ;
                BCS CODE_138F26                     ; $13:8F1C: B0 08       ;
                CPX $0712                   ; $13:8F1E: EC 12 07    ;
                BCC CODE_138F26             ; $13:8F21: 90 03       ;
                LDA $0716                   ; $13:8F23: AD 16 07    ;
CODE_138F26:    STA $7FF000,x               ; $13:8F26: 9F 00 F0 7F ;
                INX                         ; $13:8F2A: E8          ;
                INX                         ; $13:8F2B: E8          ;
                CPX $0718                   ; $13:8F2C: EC 18 07    ;
                BNE CODE_138F16             ; $13:8F2F: D0 E5       ;
                LDA #$0066                  ; $13:8F31: A9 66 00    ;
                TAX                         ; $13:8F34: AA          ;
CODE_138F35:    LDA #$C43B                  ; $13:8F35: A9 3B C4    ;
                STA $7FF200,x               ; $13:8F38: 9F 00 F2 7F ;
                INX                         ; $13:8F3C: E8          ;
                INX                         ; $13:8F3D: E8          ;
                CPX #$013A                  ; $13:8F3E: E0 3A 01    ;
                BNE CODE_138F35             ; $13:8F41: D0 F2       ;
                SEP #$30                    ; $13:8F43: E2 30       ;
                LDA $0232                   ; $13:8F45: AD 32 02    ;
                BNE CODE_138FA9             ; $13:8F48: D0 5F       ;
                LDA #$CA                    ; $13:8F4A: A9 CA       ;
                STA $0237                   ; $13:8F4C: 8D 37 02    ;
                LDX #$FF                    ; $13:8F4F: A2 FF       ;
                LDY #$FC                    ; $13:8F51: A0 FC       ;
                LDA $0231                   ; $13:8F53: AD 31 02    ;
                BNE CODE_138F5C             ; $13:8F56: D0 04       ;
                LDX #$01                    ; $13:8F58: A2 01       ;
                LDY #$04                    ; $13:8F5A: A0 04       ;
CODE_138F5C:    TYA                         ; $13:8F5C: 98          ;
                CLC                         ; $13:8F5D: 18          ;
                ADC $0245                   ; $13:8F5E: 6D 45 02    ;
                STA $0245                   ; $13:8F61: 8D 45 02    ;
                LDA $023D                   ; $13:8F64: AD 3D 02    ;
                AND #$20                    ; $13:8F67: 29 20       ;
                ORA $0245                   ; $13:8F69: 0D 45 02    ;
                STA $023D                   ; $13:8F6C: 8D 3D 02    ;
                LDA $023E                   ; $13:8F6F: AD 3E 02    ;
                AND #$40                    ; $13:8F72: 29 40       ;
                ORA $0245                   ; $13:8F74: 0D 45 02    ;
                STA $023E                   ; $13:8F77: 8D 3E 02    ;
                LDA $023F                   ; $13:8F7A: AD 3F 02    ;
                AND #$80                    ; $13:8F7D: 29 80       ;
                ORA $0245                   ; $13:8F7F: 0D 45 02    ;
                STA $023F                   ; $13:8F82: 8D 3F 02    ;
                TXA                         ; $13:8F85: 8A          ;
                CLC                         ; $13:8F86: 18          ;
                ADC $022B                   ; $13:8F87: 6D 2B 02    ;
                STA $022B                   ; $13:8F8A: 8D 2B 02    ;
                BMI CODE_138F95             ; $13:8F8D: 30 06       ;
                CMP #$05                    ; $13:8F8F: C9 05       ;
                BEQ CODE_138F9F             ; $13:8F91: F0 0C       ;
                BRA CODE_138FA9             ; $13:8F93: 80 14       ;

CODE_138F95:    STZ $022B                   ; $13:8F95: 9C 2B 02    ;
                LDA #$02                    ; $13:8F98: A9 02       ;
                STA $0722                   ; $13:8F9A: 8D 22 07    ;
                BRA CODE_138FA4             ; $13:8F9D: 80 05       ;

CODE_138F9F:    LDA #$C0                    ; $13:8F9F: A9 C0       ;
                STA $0237                   ; $13:8FA1: 8D 37 02    ;
CODE_138FA4:    LDA #$01                    ; $13:8FA4: A9 01       ;
                STA $0232                   ; $13:8FA6: 8D 32 02    ;
CODE_138FA9:    LDA #$88                    ; $13:8FA9: A9 88       ;
                STA $023A                   ; $13:8FAB: 8D 3A 02    ;
                LDA #$17                    ; $13:8FAE: A9 17       ;
                STA $0243                   ; $13:8FB0: 8D 43 02    ;
                STA $023B                   ; $13:8FB3: 8D 3B 02    ;
                RTL                         ; $13:8FB6: 6B          ;

DATA_138FB7:    dw $00C6                                        ;
                dw $00AE                                        ;
                dw $0096                                        ;
                dw $007E                                        ;
       
DATA_138FBF:    dw $0068                                        ;

DATA_138FC1:    dw $00F6                                        ;
                dw $010E                                        ;
                dw $0126                                        ;
                dw $013E                                        ;

DATA_138FC9:    dw $0154                                        ;

DATA_138FCB:    db $70,$90,$60,$A0,$50,$B0,$40,$C0              ;
                db $36,$CA                                      ;
                
CODE_138FD5:    PHB                         ; $13:8FD5: 8B          ;
                LDA #$7F                    ; $13:8FD6: A9 7F       ;
                PHA                         ; $13:8FD8: 48          ;
                PLB                         ; $13:8FD9: AB          ;
                REP #$30                    ; $13:8FDA: C2 30       ;
                LDX #$01A0                  ; $13:8FDC: A2 A0 01    ;
CODE_138FDF:    LDA #$00FF                  ; $13:8FDF: A9 FF 00    ;
                STA $F000,x                 ; $13:8FE2: 9D 00 F0    ;
                STA $F002,x                 ; $13:8FE5: 9D 02 F0    ;
                STA $F004,x                 ; $13:8FE8: 9D 04 F0    ;
                STA $F006,x                 ; $13:8FEB: 9D 06 F0    ;
                STA $F008,x                 ; $13:8FEE: 9D 08 F0    ;
                STA $F00A,x                 ; $13:8FF1: 9D 0A F0    ;
                STA $F00C,x                 ; $13:8FF4: 9D 0C F0    ;
                STA $F00E,x                 ; $13:8FF7: 9D 0E F0    ;
                STA $F010,x                 ; $13:8FFA: 9D 10 F0    ;
                STA $F012,x                 ; $13:8FFD: 9D 12 F0    ;
                STA $F014,x                 ; $13:9000: 9D 14 F0    ;
                STA $F016,x                 ; $13:9003: 9D 16 F0    ;
                STA $F018,x                 ; $13:9006: 9D 18 F0    ;
                STA $F01A,x                 ; $13:9009: 9D 1A F0    ;
                STA $F01C,x                 ; $13:900C: 9D 1C F0    ;
                STA $F01E,x                 ; $13:900F: 9D 1E F0    ;
                STA $F200,x                 ; $13:9012: 9D 00 F2    ;
                STA $F202,x                 ; $13:9015: 9D 02 F2    ;
                STA $F204,x                 ; $13:9018: 9D 04 F2    ;
                STA $F206,x                 ; $13:901B: 9D 06 F2    ;
                STA $F208,x                 ; $13:901E: 9D 08 F2    ;
                STA $F20A,x                 ; $13:9021: 9D 0A F2    ;
                STA $F20C,x                 ; $13:9024: 9D 0C F2    ;
                STA $F20E,x                 ; $13:9027: 9D 0E F2    ;
                STA $F210,x                 ; $13:902A: 9D 10 F2    ;
                STA $F212,x                 ; $13:902D: 9D 12 F2    ;
                STA $F214,x                 ; $13:9030: 9D 14 F2    ;
                STA $F216,x                 ; $13:9033: 9D 16 F2    ;
                STA $F218,x                 ; $13:9036: 9D 18 F2    ;
                STA $F21A,x                 ; $13:9039: 9D 1A F2    ;
                STA $F21C,x                 ; $13:903C: 9D 1C F2    ;
                STA $F21E,x                 ; $13:903F: 9D 1E F2    ;
                TXA                         ; $13:9042: 8A          ;
                SEC                         ; $13:9043: 38          ;
                SBC #$0020                  ; $13:9044: E9 20 00    ;
                TAX                         ; $13:9047: AA          ;
                BPL CODE_138FDF             ; $13:9048: 10 95       ;
                SEP #$30                    ; $13:904A: E2 30       ;
                PLB                         ; $13:904C: AB          ;
                RTL                         ; $13:904D: 6B          ;

                LDX #$FF                    ; $13:904E: A2 FF       ;
CODE_139050:    LDA.l DATA_14C563,x                 ; $13:9050: BF 63 C5 14 ;
                STA $14BB,x                 ; $13:9054: 9D BB 14    ;
                DEX                         ; $13:9057: CA          ;
                CPX #$FF                    ; $13:9058: E0 FF       ;
                BNE CODE_139050             ; $13:905A: D0 F4       ;
                STX $14C5                   ; $13:905C: 8E C5 14    ;
                JSR CODE_139067             ; $13:905F: 20 67 90    ;
                LDA #$02                    ; $13:9062: A9 02       ;
                STA $11                     ; $13:9064: 85 11       ;
                RTL                         ; $13:9066: 6B          ;

CODE_139067:    LDX $0635                   ; $13:9067: AE 35 06    ;
                LDY $0533                   ; $13:906A: AC 33 05    ;
                INY                         ; $13:906D: C8          ;
                TYA                         ; $13:906E: 98          ;
                JSR CODE_1390C9             ; $13:906F: 20 C9 90    ;
                INX                         ; $13:9072: E8          ;
                TXA                         ; $13:9073: 8A          ;
                ORA #$00                    ; $13:9074: 09 00       ;
                STA $14BF                   ; $13:9076: 8D BF 14    ;
                LDY $04EE                   ; $13:9079: AC EE 04    ;
                DEY                         ; $13:907C: 88          ;
                TYA                         ; $13:907D: 98          ;
                JSR CODE_1390C9             ; $13:907E: 20 C9 90    ;
                STY $14C9                   ; $13:9081: 8C C9 14    ;
                STA $14CB                   ; $13:9084: 8D CB 14    ;
                LDY #$0C                    ; $13:9087: A0 0C       ;
CODE_139089:    LDA #$2F                    ; $13:9089: A9 2F       ;
                STA $14CD,y                 ; $13:908B: 99 CD 14    ;
                DEY                         ; $13:908E: 88          ;
                DEY                         ; $13:908F: 88          ;
                CPY #$02                    ; $13:9090: C0 02       ;
                BNE CODE_139089             ; $13:9092: D0 F5       ;
                LDY $0635                   ; $13:9094: AC 35 06    ;
                LDA $0533                   ; $13:9097: AD 33 05    ;
                SEC                         ; $13:909A: 38          ;
                SBC.w DATA_11C9B4,y                 ; $13:909B: F9 B4 C9    ;
                STA $0629                   ; $13:909E: 8D 29 06    ;
                CLC                         ; $13:90A1: 18          ;
                ADC #$01                    ; $13:90A2: 69 01       ;
                STA $14C3                   ; $13:90A4: 8D C3 14    ;
                LDA.w DATA_11C9B4+1,y                   ; $13:90A7: B9 B5 C9    ;
                SEC                         ; $13:90AA: 38          ;
                SBC.w DATA_11C9B4,y                 ; $13:90AB: F9 B4 C9    ;
                STA $03                     ; $13:90AE: 85 03       ;
                LDX #$00                    ; $13:90B0: A2 00       ;
                TXY                         ; $13:90B2: 9B          ;
CODE_1390B3:    LDA #$FD                    ; $13:90B3: A9 FD       ;
                CPX $0629                   ; $13:90B5: EC 29 06    ;
                BNE CODE_1390BC             ; $13:90B8: D0 02       ;
                LDA #$F6                    ; $13:90BA: A9 F6       ;
CODE_1390BC:    STA $14D1,y                 ; $13:90BC: 99 D1 14    ;
                INY                         ; $13:90BF: C8          ;
                INY                         ; $13:90C0: C8          ;
                INY                         ; $13:90C1: C8          ;
                INY                         ; $13:90C2: C8          ;
                INX                         ; $13:90C3: E8          ;
                CPX $03                     ; $13:90C4: E4 03       ;
                BCC CODE_1390B3             ; $13:90C6: 90 EB       ;
                RTS                         ; $13:90C8: 60          ;
CODE_1390C9:    LDY #$00                    ; $13:90C9: A0 00       ;
CODE_1390CB:    CMP #$0A                    ; $13:90CB: C9 0A       ;
                BCC CODE_1390D5             ; $13:90CD: 90 06       ;
                SBC #$0A                    ; $13:90CF: E9 0A       ;
                INY                         ; $13:90D1: C8          ;
                JMP CODE_1390CB             ; $13:90D2: 4C CB 90    ;

CODE_1390D5:    ORA #$00                    ; $13:90D5: 09 00       ;
                CPY #$00                    ; $13:90D7: C0 00       ;
                BNE CODE_1390DD             ; $13:90D9: D0 02       ;
                LDY #$2F                    ; $13:90DB: A0 2F       ;
CODE_1390DD:    RTS                         ; $13:90DD: 60          ;

CODE_1390DE:    LDA $38,x                   ; $13:90DE: B5 38       ;
                ASL A                       ; $13:90E0: 0A          ;
                ASL A                       ; $13:90E1: 0A          ;
                ASL A                       ; $13:90E2: 0A          ;
                ASL A                       ; $13:90E3: 0A          ;
                CLC                         ; $13:90E4: 18          ;
                ADC $3E,x                   ; $13:90E5: 75 3E       ;
                STA $3E,x                   ; $13:90E7: 95 3E       ;
                LDY #$00                    ; $13:90E9: A0 00       ;
                LDA $38,x                   ; $13:90EB: B5 38       ;
                PHP                         ; $13:90ED: 08          ;
                LSR A                       ; $13:90EE: 4A          ;
                LSR A                       ; $13:90EF: 4A          ;
                LSR A                       ; $13:90F0: 4A          ;
                LSR A                       ; $13:90F1: 4A          ;
                PLP                         ; $13:90F2: 28          ;
                BPL CODE_1390F8             ; $13:90F3: 10 03       ;
                ORA #$F0                    ; $13:90F5: 09 F0       ;
                DEY                         ; $13:90F7: 88          ;
CODE_1390F8:    ADC $44,x                   ; $13:90F8: 75 44       ;
                STA $44,x                   ; $13:90FA: 95 44       ;
                TYA                         ; $13:90FC: 98          ;
                ADC $4A,x                   ; $13:90FD: 75 4A       ;
                STA $4A,x                   ; $13:90FF: 95 4A       ;
                RTL                         ; $13:9101: 6B          ;

DATA_139102:    db $E0,$E2,$E4,$E6,$E8,$EA,$EC,$EE              ;
                db $C0,$C2,$C4,$C6,$C8,$CA                      ;
                 
CODE_139110:    LDA $0429                   ; $13:9110: AD 29 04    ;
                STA $0712                   ; $13:9113: 8D 12 07    ;
                LDA $021F                   ; $13:9116: AD 1F 02    ;
                STA $0713                   ; $13:9119: 8D 13 07    ;
                REP #$20                    ; $13:911C: C2 20       ;
                LDA $0712                   ; $13:911E: AD 12 07    ;
                BPL CODE_13912A             ; $13:9121: 10 07       ;
                CMP #$FF80                  ; $13:9123: C9 80 FF    ;
                BCS CODE_139131                     ; $13:9126: B0 09       ;
                BRA CODE_139137             ; $13:9128: 80 0D       ;

CODE_13912A:    CMP #$0180                  ; $13:912A: C9 80 01    ;
                BCC CODE_139131             ; $13:912D: 90 02       ;
                BRA CODE_139137             ; $13:912F: 80 06       ;

CODE_139131:    SEP #$20                    ; $13:9131: E2 20       ;
                LDA $EE                     ; $13:9133: A5 EE       ;
                BEQ CODE_13913A             ; $13:9135: F0 03       ;
CODE_139137:    SEP #$20                    ; $13:9137: E2 20       ;
                RTL                         ; $13:9139: 6B          ;

CODE_13913A:    LDA $042C                   ; $13:913A: AD 2C 04    ;
                STA $01                     ; $13:913D: 85 01       ;
                LDA $6F,x                   ; $13:913F: B5 6F       ;
                LSR A                       ; $13:9141: 4A          ;
                PHP                         ; $13:9142: 08          ;
                LDA $65,x                   ; $13:9143: B5 65       ;
                AND #$80                    ; $13:9145: 29 80       ;
                PLP                         ; $13:9147: 28          ;
                BCC CODE_13914C             ; $13:9148: 90 02       ;
                ORA #$40                    ; $13:914A: 09 40       ;
CODE_13914C:    STA $02                     ; $13:914C: 85 02       ;
                REP #$30                    ; $13:914E: C2 30       ;
                LDY $02F6                   ; $13:9150: AC F6 02    ;
                LDA $9F,x                   ; $13:9153: B5 9F       ;
                AND #$00FF                  ; $13:9155: 29 FF 00    ;
                ASL A                       ; $13:9158: 0A          ;
                TAX                         ; $13:9159: AA          ;
                LDA $0712                   ; $13:915A: AD 12 07    ;
                CLC                         ; $13:915D: 18          ;
                ADC #$0010                  ; $13:915E: 69 10 00    ;
                SEP #$20                    ; $13:9161: E2 20       ;
                XBA                         ; $13:9163: EB          ;
                STA $0714                   ; $13:9164: 8D 14 07    ;
                LDA $0712                   ; $13:9167: AD 12 07    ;
                STA $0800,y                 ; $13:916A: 99 00 08    ;
                CLC                         ; $13:916D: 18          ;
                ADC #$10                    ; $13:916E: 69 10       ;
                STA $0804,y                 ; $13:9170: 99 04 08    ;
                LDA $01                     ; $13:9173: A5 01       ;
                STA $0801,y                 ; $13:9175: 99 01 08    ;
                STA $0805,y                 ; $13:9178: 99 05 08    ;
                LDA.l DATA_139102,x                 ; $13:917B: BF 02 91 13 ;
                STA $0802,y                 ; $13:917F: 99 02 08    ;
                LDA.l DATA_139102+1,x               ; $13:9182: BF 03 91 13 ;
                STA $0806,y                 ; $13:9186: 99 06 08    ;
                LDA $02                     ; $13:9189: A5 02       ;
                ORA #$23                    ; $13:918B: 09 23       ;
                STA $0803,y                 ; $13:918D: 99 03 08    ;
                STA $0807,y                 ; $13:9190: 99 07 08    ;
                AND #$40                    ; $13:9193: 29 40       ;
                BEQ CODE_1391A5             ; $13:9195: F0 0E       ;
                LDA $0802,y                 ; $13:9197: B9 02 08    ;
                PHA                         ; $13:919A: 48          ;
                LDA $0806,y                 ; $13:919B: B9 06 08    ;
                STA $0802,y                 ; $13:919E: 99 02 08    ;
                PLA                         ; $13:91A1: 68          ;
                STA $0806,y                 ; $13:91A2: 99 06 08    ;
CODE_1391A5:    REP #$20                    ; $13:91A5: C2 20       ;
                TYA                         ; $13:91A7: 98          ;
                LSR A                       ; $13:91A8: 4A          ;
                LSR A                       ; $13:91A9: 4A          ;
                TAY                         ; $13:91AA: A8          ;
                SEP #$20                    ; $13:91AB: E2 20       ;
                LDA $0713                   ; $13:91AD: AD 13 07    ;
                BPL CODE_1391B5             ; $13:91B0: 10 03       ;
                EOR #$FF                    ; $13:91B2: 49 FF       ;
                INC A                       ; $13:91B4: 1A          ;
CODE_1391B5:    AND #$01                    ; $13:91B5: 29 01       ;
                ORA #$02                    ; $13:91B7: 09 02       ;
                STA $0A20,y                 ; $13:91B9: 99 20 0A    ;
                LDA $0714                   ; $13:91BC: AD 14 07    ;
                BPL CODE_1391C4             ; $13:91BF: 10 03       ;
                EOR #$FF                    ; $13:91C1: 49 FF       ;
                INC A                       ; $13:91C3: 1A          ;
CODE_1391C4:    AND #$01                    ; $13:91C4: 29 01       ;
                ORA #$02                    ; $13:91C6: 09 02       ;
                STA $0A21,y                 ; $13:91C8: 99 21 0A    ;
                SEP #$10                    ; $13:91CB: E2 10       ;
                LDX $12                     ; $13:91CD: A6 12       ;
                RTL                         ; $13:91CF: 6B          ;

DATA_1391D0:    db $1D,$21,$2C,$1C,$1F,$2A                      ;

DATA_1391D6:    db $0A,$02,$0A,$04,$0A,$06                      ;
          
CODE_1391DC:    PHX                     ; $13:91DC: DA          ;
                LDA $90,x                   ; $13:91DD: B5 90       ;
                LDX #$05                    ; $13:91DF: A2 05       ;
CODE_1391E1:    CMP.l DATA_1391D0,x                 ; $13:91E1: DF D0 91 13 ;
                BEQ CODE_1391EF             ; $13:91E5: F0 08       ;
                DEX                         ; $13:91E7: CA          ;
                BPL CODE_1391E1             ; $13:91E8: 10 F7       ;
                LDA $08                     ; $13:91EA: A5 08       ;
                CLC                         ; $13:91EC: 18          ;
                BRA CODE_139207             ; $13:91ED: 80 18       ;

CODE_1391EF:    LDX $0254                   ; $13:91EF: AE 54 02    ;
                LDA.l DATA_1391D6,x                 ; $13:91F2: BF D6 91 13 ;
                STA $0712                   ; $13:91F6: 8D 12 07    ;
                LDA $0213                   ; $13:91F9: AD 13 02    ;
                AND #$F1                    ; $13:91FC: 29 F1       ;
                ORA $0712                   ; $13:91FE: 0D 12 07    ;
                STA $0213                   ; $13:9201: 8D 13 02    ;
                LDA $08                     ; $13:9204: A5 08       ;
                SEC                         ; $13:9206: 38          ;
CODE_139207:    PLX                         ; $13:9207: FA          ;
                RTL                         ; $13:9208: 6B          ;

DATA_139209:    db $C4,$D4,$C5                                  ;

DATA_13920C:    db $FD,$FF,$0B,$00                              ;
            
CODE_139210:    LDA $90,x               ; $13:9210: B5 90       ;
                CMP #$37                ; $13:9212: C9 37       ;
                BNE CODE_139252         ; $13:9214: D0 3C       ;
                LDA $10                 ; $13:9216: A5 10       ;
                AND #$03                    ; $13:9218: 29 03       ;
                BNE CODE_13921E             ; $13:921A: D0 02       ;
                INC $9F,x                   ; $13:921C: F6 9F       ;
CODE_13921E:    LDA $9F,x                   ; $13:921E: B5 9F       ;
                CMP #$03                    ; $13:9220: C9 03       ;
                BCC CODE_139228             ; $13:9222: 90 04       ;
                LDA #$00                    ; $13:9224: A9 00       ;
                STZ $9F,x                   ; $13:9226: 74 9F       ;
CODE_139228:    STA $0714                   ; $13:9228: 8D 14 07    ;
                LDA $0429                   ; $13:922B: AD 29 04    ;
                STA $0712                   ; $13:922E: 8D 12 07    ;
                LDA $021F                   ; $13:9231: AD 1F 02    ;
                STA $0713                   ; $13:9234: 8D 13 07    ;
                REP #$20                    ; $13:9237: C2 20       ;
                LDA $0712                   ; $13:9239: AD 12 07    ;
                BPL CODE_139245             ; $13:923C: 10 07       ;
                CMP #$FF80                  ; $13:923E: C9 80 FF    ;
                BCS CODE_13924C                     ; $13:9241: B0 09       ;
                BRA CODE_139252             ; $13:9243: 80 0D       ;

CODE_139245:    CMP #$0180                  ; $13:9245: C9 80 01    ;
                BCC CODE_13924C             ; $13:9248: 90 02       ;
                BRA CODE_139252             ; $13:924A: 80 06       ;

CODE_13924C:    SEP #$20                    ; $13:924C: E2 20       ;
                LDA $EE                     ; $13:924E: A5 EE       ;
                BEQ CODE_139255             ; $13:9250: F0 03       ;
CODE_139252:    SEP #$20                    ; $13:9252: E2 20       ;
                RTL                         ; $13:9254: 6B          ;

CODE_139255:    LDA $6F,x                   ; $13:9255: B5 6F       ;
                DEC A                       ; $13:9257: 3A          ;
                ASL A                       ; $13:9258: 0A          ;
                TAX                         ; $13:9259: AA          ;
                REP #$20                    ; $13:925A: C2 20       ;
                LDA.l DATA_13920C,x                 ; $13:925C: BF 0C 92 13 ;
                CLC                         ; $13:9260: 18          ;
                ADC $0712                   ; $13:9261: 6D 12 07    ;
                STA $0712                   ; $13:9264: 8D 12 07    ;
                SEP #$20                    ; $13:9267: E2 20       ;
                LDX $0714                   ; $13:9269: AE 14 07    ;
                LDA.l DATA_139209,x                 ; $13:926C: BF 09 92 13 ;
                STA $0716                   ; $13:9270: 8D 16 07    ;
                REP #$30                    ; $13:9273: C2 30       ;
                LDA $02F6                   ; $13:9275: AD F6 02    ;
                CLC                         ; $13:9278: 18          ;
                ADC #$0004                  ; $13:9279: 69 04 00    ;
                TAY                         ; $13:927C: A8          ;
                SEP #$20                    ; $13:927D: E2 20       ;
                LDA $0712                   ; $13:927F: AD 12 07    ;
                STA $0800,y                 ; $13:9282: 99 00 08    ;
                LDA $042C                   ; $13:9285: AD 2C 04    ;
                CLC                         ; $13:9288: 18          ;
                ADC #$FB                    ; $13:9289: 69 FB       ;
                STA $0801,y                 ; $13:928B: 99 01 08    ;
                LDA $0716                   ; $13:928E: AD 16 07    ;
                STA $0802,y                 ; $13:9291: 99 02 08    ;
                LDA #$24                    ; $13:9294: A9 24       ;
                STA $0803,y                 ; $13:9296: 99 03 08    ;
                REP #$20                    ; $13:9299: C2 20       ;
                TYA                         ; $13:929B: 98          ;
                LSR A                       ; $13:929C: 4A          ;
                LSR A                       ; $13:929D: 4A          ;
                TAY                         ; $13:929E: A8          ;
                SEP #$20                    ; $13:929F: E2 20       ;
                LDA $0713                   ; $13:92A1: AD 13 07    ;
                BPL CODE_1392A9             ; $13:92A4: 10 03       ;
                EOR #$FF                    ; $13:92A6: 49 FF       ;
                INC A                       ; $13:92A8: 1A          ;
CODE_1392A9:    AND #$01                    ; $13:92A9: 29 01       ;
                STA $0A20,y                 ; $13:92AB: 99 20 0A    ;
                SEP #$10                    ; $13:92AE: E2 10       ;
                LDX $12                     ; $13:92B0: A6 12       ;
                RTL                         ; $13:92B2: 6B          ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \ Empty.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF                          ; /
                                            
CODE_139300:    ASL A                   ; $13:9300: 0A          ;
                TAX                     ; $13:9301: AA          ;
                JMP (PNTR_139305,x)             ; $13:9302: 7C 05 93    ;

PNTR_139305:    dw CODE_1393DC                                  ;
                dw CODE_1393DC                                  ;
             
CODE_139309:    ASL                     ; $13:9309: 0A          ;
                TAX                         ; $13:930A: AA          ;
                JMP (PNTR_13930E,x)                 ; $13:930B: 7C 0E 93    ;

PNTR_13930E:    dw CODE_139439                                  ;
                dw CODE_139472                                  ;
                dw CODE_139472                                  ;
                dw CODE_139472                                  ;
                dw CODE_139472                                  ;
               
CODE_139318:    LDA $050F                   ; $13:9318: AD 0F 05    ;
                ASL A                   ; $13:931B: 0A          ;
                TAX                     ; $13:931C: AA          ;
                JMP (PNTR_139320,x)                 ; $13:931D: 7C 20 93    ;

PNTR_139320:    dw CODE_1394CF                                  ;
                dw CODE_1394B5                                  ;
                dw CODE_1395AE                                  ;
                dw CODE_13993E                                  ;
                dw CODE_13997C                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1394CF                                  ;
                dw CODE_13993E                                  ;
                dw CODE_13951D                                  ;
                dw CODE_13951D                                  ;
                dw CODE_139A2A                                  ;
                dw CODE_139A2A                                  ;
                dw CODE_139A2A                                  ;
                dw CODE_13951D                                  ;
                dw CODE_13951D                                  ;
                dw CODE_139AA2                                  ;
                dw CODE_1394CF                                  ;
                dw CODE_1394CF                                  ;
                dw CODE_1394B5                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_139AEF                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1394B5                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1395AE                                  ;
                dw CODE_139B34                                  ;
                dw CODE_139B34                                  ;
                dw CODE_139B34                                  ;
                dw CODE_139B34                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1394CF                                  ;
                dw CODE_139BA6                                  ;
                dw CODE_139BA6                                  ;
                dw CODE_139BA6                                  ;
                dw CODE_139BA6                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_139C94                                  ;
                dw CODE_13993E                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1394F6                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_13993E                                  ;
                dw CODE_139D38                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_13951D                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;
                dw CODE_1399A9                                  ;

DATA_1393DA:    db $3C,$02                                      ;
                                   
CODE_1393DC:    LDA [$05],y             ; $13:93DC: B7 05       ;
                SEC                     ; $13:93DE: 38          ;
                SBC #$70                    ; $13:93DF: E9 70       ;
                LSR A                       ; $13:93E1: 4A          ;
                LSR A                       ; $13:93E2: 4A          ;
                LSR A                       ; $13:93E3: 4A          ;
                LSR A                       ; $13:93E4: 4A          ;
                TAX                         ; $13:93E5: AA          ;
                LDA.l DATA_1393DA,x                 ; $13:93E6: BF DA 93 13 ;
                STA $0712                   ; $13:93EA: 8D 12 07    ;
                LDA $050E                   ; $13:93ED: AD 0E 05    ;
                STA $08                     ; $13:93F0: 85 08       ;
                LDA $E9                     ; $13:93F2: A5 E9       ;
                STA $0E                     ; $13:93F4: 85 0E       ;
CODE_1393F6:    LDX $0E                     ; $13:93F6: A6 0E       ;
                JSR CODE_1397DC             ; $13:93F8: 20 DC 97    ;
                LDX #$07                    ; $13:93FB: A2 07       ;
                LDA $E7                     ; $13:93FD: A5 E7       ;
                AND #$F0                    ; $13:93FF: 29 F0       ;
                TAY                         ; $13:9401: A8          ;
                LDA $0712                   ; $13:9402: AD 12 07    ;
                XBA                         ; $13:9405: EB          ;
                LDA $0712                   ; $13:9406: AD 12 07    ;
CODE_139409:    REP #$20                    ; $13:9409: C2 20       ;
                STA [$01],y                 ; $13:940B: 97 01       ;
                SEP #$20                    ; $13:940D: E2 20       ;
                INY                         ; $13:940F: C8          ;
                INY                         ; $13:9410: C8          ;
                DEX                         ; $13:9411: CA          ;
                BPL CODE_139409             ; $13:9412: 10 F5       ;
                DEC $08                     ; $13:9414: C6 08       ;
                BMI CODE_139430             ; $13:9416: 30 18       ;
                LDA $E7                     ; $13:9418: A5 E7       ;
                CLC                         ; $13:941A: 18          ;
                ADC #$10                    ; $13:941B: 69 10       ;
                CMP #$F0                    ; $13:941D: C9 F0       ;
                BCC CODE_13942B             ; $13:941F: 90 0A       ;
                INC $0E                     ; $13:9421: E6 0E       ;
                LDA $0E                     ; $13:9423: A5 0E       ;
                CMP #$0A                    ; $13:9425: C9 0A       ;
                BEQ CODE_139430             ; $13:9427: F0 07       ;
                LDA #$00                    ; $13:9429: A9 00       ;
CODE_13942B:    STA $E7                     ; $13:942B: 85 E7       ;
                BRL CODE_1393F6             ; $13:942D: 82 C6 FF    ;

CODE_139430:    RTS                         ; $13:9430: 60          ;

DATA_139431:    db $FF,$2A,$FF,$FF,$FF,$FF,$2D,$FF              ;

CODE_139439:    LDA $E9                     ; $13:9439: A5 E9       ;
                STA $0247                   ; $13:943B: 8D 47 02    ;
                LDA #$80                    ; $13:943E: A9 80       ;
                STA $0A                     ; $13:9440: 85 0A       ;
                LDA #$31                    ; $13:9442: A9 31       ;
                STA $09                     ; $13:9444: 85 09       ;
CODE_139446:    JSR CODE_139705             ; $13:9446: 20 05 97    ;
                AND #$07                    ; $13:9449: 29 07       ;
                TAX                         ; $13:944B: AA          ;
                LDA.l DATA_139431,x                 ; $13:944C: BF 31 94 13 ;
                STA [$01],y                 ; $13:9450: 97 01       ;
                JSR CODE_1396D2             ; $13:9452: 20 D2 96    ;
                CPY #$30                    ; $13:9455: C0 30       ;
                BCC CODE_139446             ; $13:9457: 90 ED       ;
                TYA                         ; $13:9459: 98          ;
                AND #$0F                    ; $13:945A: 29 0F       ;
                TAY                         ; $13:945C: A8          ;
                JSR CODE_1396B0             ; $13:945D: 20 B0 96    ;
                LDA $0247                   ; $13:9460: AD 47 02    ;
                STA $E9                     ; $13:9463: 85 E9       ;
                CMP #$0A                    ; $13:9465: C9 0A       ;
                BNE CODE_139446             ; $13:9467: D0 DD       ;
                LDA #$00                    ; $13:9469: A9 00       ;
                STA $E9                     ; $13:946B: 85 E9       ;
                STA $E6                     ; $13:946D: 85 E6       ;
                STA $E5                     ; $13:946F: 85 E5       ;
                RTS                         ; $13:9471: 60          ;

CODE_139472:    STZ $0E                     ; $13:9472: 64 0E       ;
                LDA $E9                     ; $13:9474: A5 E9       ;
                STA $0F                     ; $13:9476: 85 0F       ;
                LDA $050F                   ; $13:9478: AD 0F 05    ;
                SEC                         ; $13:947B: 38          ;
                SBC #$01                    ; $13:947C: E9 01       ;
                ASL A                       ; $13:947E: 0A          ;
                TAX                         ; $13:947F: AA          ;
                LDA.l PNTR_13DA0E,x                 ; $13:9480: BF 0E DA 13 ;
                STA $C4                     ; $13:9484: 85 C4       ;
                LDA.l PNTR_13DA0E+1,x               ; $13:9486: BF 0F DA 13 ;
                STA $C5                     ; $13:948A: 85 C5       ;
                LDA #$13                    ; $13:948C: A9 13       ;
                STA $C6                     ; $13:948E: 85 C6       ;
CODE_139490:    LDY $0E                     ; $13:9490: A4 0E       ;
                LDA [$C4],y                 ; $13:9492: B7 C4       ;
                CMP #$FF                    ; $13:9494: C9 FF       ;
                BEQ CODE_1394B4             ; $13:9496: F0 1C       ;
                CMP #$F0                    ; $13:9498: C9 F0       ;
                BEQ CODE_1394A9             ; $13:949A: F0 0D       ;
                STA $0D                     ; $13:949C: 85 0D       ;
                INY                         ; $13:949E: C8          ;
                LDA [$C4],y                 ; $13:949F: B7 C4       ;
                LDY $0D                     ; $13:94A1: A4 0D       ;
                STA [$01],y                 ; $13:94A3: 97 01       ;
                INC $0E                     ; $13:94A5: E6 0E       ;
                BRA CODE_1394B0             ; $13:94A7: 80 07       ;

CODE_1394A9:    INC $0F                     ; $13:94A9: E6 0F       ;
                LDX $0F                     ; $13:94AB: A6 0F       ;
                JSR CODE_1397DC             ; $13:94AD: 20 DC 97    ;
CODE_1394B0:    INC $0E                     ; $13:94B0: E6 0E       ;
                BRA CODE_139490             ; $13:94B2: 80 DC       ;

CODE_1394B4:    RTS                         ; $13:94B4: 60          ;

CODE_1394B5:    LDX #$01                    ; $13:94B5: A2 01       ;
                LDA $050F                   ; $13:94B7: AD 0F 05    ;
                CLC                         ; $13:94BA: 18          ;
                ADC #$10                    ; $13:94BB: 69 10       ;
CODE_1394BD:    CMP.l DATA_13D464,x                 ; $13:94BD: DF 64 D4 13 ;
                BEQ CODE_1394C6             ; $13:94C1: F0 03       ;
                DEX                         ; $13:94C3: CA          ;
                BPL CODE_1394BD             ; $13:94C4: 10 F7       ;
CODE_1394C6:    LDY $E7                     ; $13:94C6: A4 E7       ;
                LDA.l DATA_13D466,x                 ; $13:94C8: BF 66 D4 13 ;
                STA [$01],y                 ; $13:94CC: 97 01       ;
                RTS                         ; $13:94CE: 60          ;

CODE_1394CF:    LDX #$02                    ; $13:94CF: A2 02       ;
                LDA $050F                   ; $13:94D1: AD 0F 05    ;
                CLC                         ; $13:94D4: 18          ;
                ADC #$10                    ; $13:94D5: 69 10       ;
CODE_1394D7:    CMP.l DATA_13D468,x                 ; $13:94D7: DF 68 D4 13 ;
                BEQ CODE_1394E0             ; $13:94DB: F0 03       ;
                DEX                         ; $13:94DD: CA          ;
                BPL CODE_1394D7             ; $13:94DE: 10 F7       ;
CODE_1394E0:    TXA                         ; $13:94E0: 8A          ;
                ASL A                       ; $13:94E1: 0A          ;
                TAX                         ; $13:94E2: AA          ;
                LDY $E7                     ; $13:94E3: A4 E7       ;
                LDA.l DATA_13D46B,x                 ; $13:94E5: BF 6B D4 13 ;
                STA [$01],y                 ; $13:94E9: 97 01       ;
                INX                         ; $13:94EB: E8          ;
                JSR CODE_1396B0             ; $13:94EC: 20 B0 96    ;
                LDA.l DATA_13D46B,x                 ; $13:94EF: BF 6B D4 13 ;
                STA [$01],y                 ; $13:94F3: 97 01       ;
                RTS                         ; $13:94F5: 60          ;

CODE_1394F6:    LDX #$05                    ; $13:94F6: A2 05       ;
                LDA $050F                   ; $13:94F8: AD 0F 05    ;
                CLC                         ; $13:94FB: 18          ;
                ADC #$10                    ; $13:94FC: 69 10       ;
CODE_1394FE:    CMP.l DATA_13D471,x                 ; $13:94FE: DF 71 D4 13 ;
                BEQ CODE_139507             ; $13:9502: F0 03       ;
                DEX                         ; $13:9504: CA          ;
                BPL CODE_1394FE             ; $13:9505: 10 F7       ;
CODE_139507:    TXA                         ; $13:9507: 8A          ;
                ASL A                       ; $13:9508: 0A          ;
                TAX                         ; $13:9509: AA          ;
                LDY $E7                     ; $13:950A: A4 E7       ;
                LDA.l DATA_13D477,x                 ; $13:950C: BF 77 D4 13 ;
                STA [$01],y                 ; $13:9510: 97 01       ;
                INX                         ; $13:9512: E8          ;
                JSR CODE_1396D2             ; $13:9513: 20 D2 96    ;
                LDA.l DATA_13D477,x                 ; $13:9516: BF 77 D4 13 ;
                STA [$01],y                 ; $13:951A: 97 01       ;
                RTS                         ; $13:951C: 60          ;

CODE_13951D:    LDX #$04                    ; $13:951D: A2 04       ;
                LDA $050F                   ; $13:951F: AD 0F 05    ;
                CLC                         ; $13:9522: 18          ;
                ADC #$10                    ; $13:9523: 69 10       ;
CODE_139525:    CMP.l DATA_13D497,x                 ; $13:9525: DF 97 D4 13 ;
                BEQ CODE_13952E             ; $13:9529: F0 03       ;
                DEX                         ; $13:952B: CA          ;
                BPL CODE_139525             ; $13:952C: 10 F7       ;
CODE_13952E:    TXA                         ; $13:952E: 8A          ;
                ASL A                       ; $13:952F: 0A          ;
                STA $0E                     ; $13:9530: 85 0E       ;
                ASL A                       ; $13:9532: 0A          ;
                STA $0F                     ; $13:9533: 85 0F       ;
                CLC                         ; $13:9535: 18          ;
                ADC $0E                     ; $13:9536: 65 0E       ;
                TAX                         ; $13:9538: AA          ;
                LDY $E7                     ; $13:9539: A4 E7       ;
                STY $0E                     ; $13:953B: 84 0E       ;
                STZ $0F                     ; $13:953D: 64 0F       ;
CODE_13953F:    LDA $0F                     ; $13:953F: A5 0F       ;
                CMP #$02                    ; $13:9541: C9 02       ;
                BNE CODE_13954E             ; $13:9543: D0 09       ;
                PHX                         ; $13:9545: DA          ;
                JSR CODE_139580             ; $13:9546: 20 80 95    ;
                PLX                         ; $13:9549: FA          ;
                CMP #$00                    ; $13:954A: C9 00       ;
                BNE CODE_139552             ; $13:954C: D0 04       ;
CODE_13954E:    LDA.l DATA_13D49C,x                 ; $13:954E: BF 9C D4 13 ;
CODE_139552:    STA [$01],y                 ; $13:9552: 97 01       ;
                INX                         ; $13:9554: E8          ;
                JSR CODE_1396D2             ; $13:9555: 20 D2 96    ;
                LDA $0F                     ; $13:9558: A5 0F       ;
                CMP #$02                    ; $13:955A: C9 02       ;
                BNE CODE_139567             ; $13:955C: D0 09       ;
                PHX                         ; $13:955E: DA          ;
                JSR CODE_139580             ; $13:955F: 20 80 95    ;
                PLX                         ; $13:9562: FA          ;
                CMP #$00                    ; $13:9563: C9 00       ;
                BNE CODE_13956B             ; $13:9565: D0 04       ;
CODE_139567:    LDA.l DATA_13D49C,x                 ; $13:9567: BF 9C D4 13 ;
CODE_13956B:    STA [$01],y                 ; $13:956B: 97 01       ;
                INC $0F                     ; $13:956D: E6 0F       ;
                LDA $0F                     ; $13:956F: A5 0F       ;
                CMP #$03                    ; $13:9571: C9 03       ;
                BEQ CODE_13957F             ; $13:9573: F0 0A       ;
                INX                         ; $13:9575: E8          ;
                LDY $0E                     ; $13:9576: A4 0E       ;
                JSR CODE_1396B0             ; $13:9578: 20 B0 96    ;
                STY $0E                     ; $13:957B: 84 0E       ;
                BRA CODE_13953F             ; $13:957D: 80 C0       ;

CODE_13957F:    RTS                         ; $13:957F: 60          ;

CODE_139580:    LDX #$09                    ; $13:9580: A2 09       ;
CODE_139582:    LDA $0533                   ; $13:9582: AD 33 05    ;
                CMP.l DATA_13D4BA,x                 ; $13:9585: DF BA D4 13 ;
                BNE CODE_139594             ; $13:9589: D0 09       ;
                LDA $0534                   ; $13:958B: AD 34 05    ;
                CMP.l DATA_13D4C4,x                 ; $13:958E: DF C4 D4 13 ;
                BEQ CODE_139599             ; $13:9592: F0 05       ;
CODE_139594:    DEX                         ; $13:9594: CA          ;
                BPL CODE_139582             ; $13:9595: 10 EB       ;
                BRA CODE_1395A6             ; $13:9597: 80 0D       ;

CODE_139599:    LDX #$06                    ; $13:9599: A2 06       ;
CODE_13959B:    LDA [$01],y                 ; $13:959B: B7 01       ;
                CMP.l DATA_13D4CE,x                 ; $13:959D: DF CE D4 13 ;
                BEQ CODE_1395A9             ; $13:95A1: F0 06       ;
                DEX                         ; $13:95A3: CA          ;
                BPL CODE_13959B             ; $13:95A4: 10 F5       ;
CODE_1395A6:    LDA #$00                    ; $13:95A6: A9 00       ;
                RTS                         ; $13:95A8: 60          ;

CODE_1395A9:    LDA.l DATA_13D4D5,x                 ; $13:95A9: BF D5 D4 13 ;
                RTS                         ; $13:95AD: 60          ;

CODE_1395AE:    STZ $0F                     ; $13:95AE: 64 0F       ;
                LDA $050F                   ; $13:95B0: AD 0F 05    ;
                CMP #$02                    ; $13:95B3: C9 02       ;
                BEQ CODE_1395BB             ; $13:95B5: F0 04       ;
                LDA #$03                    ; $13:95B7: A9 03       ;
                STA $0F                     ; $13:95B9: 85 0F       ;
CODE_1395BB:    LDY $E7                     ; $13:95BB: A4 E7       ;
                LDA $E9                     ; $13:95BD: A5 E9       ;
                STA $0712                   ; $13:95BF: 8D 12 07    ;
                STZ $08                     ; $13:95C2: 64 08       ;
CODE_1395C4:    LDX $0F                     ; $13:95C4: A6 0F       ;
                CPX #$01                    ; $13:95C6: E0 01       ;
                BNE CODE_1395D2             ; $13:95C8: D0 08       ;
                DEY                         ; $13:95CA: 88          ;
                LDA.l DATA_13DAA2                   ; $13:95CB: AF A2 DA 13 ;
                STA [$01],y                 ; $13:95CF: 97 01       ;
                INY                         ; $13:95D1: C8          ;
CODE_1395D2:    LDA.l DATA_13DA8E,x                 ; $13:95D2: BF 8E DA 13 ;
                STA [$01],y                 ; $13:95D6: 97 01       ;
                LDX $08                     ; $13:95D8: A6 08       ;
                BEQ CODE_139602             ; $13:95DA: F0 26       ;
CODE_1395DC:    JSR CODE_139660             ; $13:95DC: 20 60 96    ;
                BCS CODE_139621                     ; $13:95DF: B0 40       ;
                PHX                         ; $13:95E1: DA          ;
                LDX $0F                     ; $13:95E2: A6 0F       ;
                LDA.l DATA_13DA93,x                 ; $13:95E4: BF 93 DA 13 ;
                STA [$01],y                 ; $13:95E8: 97 01       ;
                PLX                         ; $13:95EA: FA          ;
                DEX                         ; $13:95EB: CA          ;
                BNE CODE_1395DC             ; $13:95EC: D0 EE       ;
                LDX $08                     ; $13:95EE: A6 08       ;
CODE_1395F0:    JSR CODE_139660             ; $13:95F0: 20 60 96    ;
                BCS CODE_139621                     ; $13:95F3: B0 2C       ;
                PHX                         ; $13:95F5: DA          ;
                LDX $0F                     ; $13:95F6: A6 0F       ;
                LDA.l DATA_13DA98,x                 ; $13:95F8: BF 98 DA 13 ;
                STA [$01],y                 ; $13:95FC: 97 01       ;
                PLX                         ; $13:95FE: FA          ;
                DEX                         ; $13:95FF: CA          ;
                BNE CODE_1395F0             ; $13:9600: D0 EE       ;
CODE_139602:    JSR CODE_139660             ; $13:9602: 20 60 96    ;
                BCS CODE_139621                     ; $13:9605: B0 1A       ;
                LDX $0F                     ; $13:9607: A6 0F       ;
                LDA.l DATA_13DA9D,x                 ; $13:9609: BF 9D DA 13 ;
                STA [$01],y                 ; $13:960D: 97 01       ;
                CPX #$01                    ; $13:960F: E0 01       ;
                BNE CODE_139621             ; $13:9611: D0 0E       ;
                INY                         ; $13:9613: C8          ;
                LDA.l DATA_13DAA3                   ; $13:9614: AF A3 DA 13 ;
                STA [$01],y                 ; $13:9618: 97 01       ;
                INY                         ; $13:961A: C8          ;
                LDA.l DATA_13DAA4                   ; $13:961B: AF A4 DA 13 ;
                STA [$01],y                 ; $13:961F: 97 01       ;
CODE_139621:    INC $08                     ; $13:9621: E6 08       ;
                LDX $E9                     ; $13:9623: A6 E9       ;
                STX $0712                   ; $13:9625: 8E 12 07    ;
                JSR CODE_1397DC             ; $13:9628: 20 DC 97    ;
                LDA $E7                     ; $13:962B: A5 E7       ;
                CLC                         ; $13:962D: 18          ;
                ADC #$10                    ; $13:962E: 69 10       ;
                STA $E7                     ; $13:9630: 85 E7       ;
                SEC                         ; $13:9632: 38          ;
                SBC $08                     ; $13:9633: E5 08       ;
                TAY                         ; $13:9635: A8          ;
                LDA $0F                     ; $13:9636: A5 0F       ;
                CMP #$03                    ; $13:9638: C9 03       ;
                BPL CODE_13964C             ; $13:963A: 10 10       ;
                LDA $0F                     ; $13:963C: A5 0F       ;
                CMP #$02                    ; $13:963E: C9 02       ;
                BEQ CODE_13965F             ; $13:9640: F0 1D       ;
                LDA [$01],y                 ; $13:9642: B7 01       ;
                CMP #$FF                    ; $13:9644: C9 FF       ;
                BEQ CODE_139659             ; $13:9646: F0 11       ;
                INC $0F                     ; $13:9648: E6 0F       ;
                BRA CODE_139659             ; $13:964A: 80 0D       ;

CODE_13964C:    TYA                         ; $13:964C: 98          ;
                AND #$F0                    ; $13:964D: 29 F0       ;
                CMP #$A0                    ; $13:964F: C9 A0       ;
                BEQ CODE_13965F             ; $13:9651: F0 0C       ;
                CMP #$90                    ; $13:9653: C9 90       ;
                BNE CODE_139659             ; $13:9655: D0 02       ;
                INC $0F                     ; $13:9657: E6 0F       ;
CODE_139659:    JSR CODE_139689             ; $13:9659: 20 89 96    ;
                BRL CODE_1395C4             ; $13:965C: 82 65 FF    ;

CODE_13965F:    RTS                         ; $13:965F: 60          ;

CODE_139660:    PHX                         ; $13:9660: DA          ;
                LDA $E7                     ; $13:9661: A5 E7       ;
                AND #$F0                    ; $13:9663: 29 F0       ;
                STA $0713                   ; $13:9665: 8D 13 07    ;
                INY                         ; $13:9668: C8          ;
                TYA                         ; $13:9669: 98          ;
                AND #$F0                    ; $13:966A: 29 F0       ;
                CMP $0713                   ; $13:966C: CD 13 07    ;
                BEQ CODE_139686             ; $13:966F: F0 15       ;
                LDA $E7                     ; $13:9671: A5 E7       ;
                AND #$F0                    ; $13:9673: 29 F0       ;
                TAY                         ; $13:9675: A8          ;
                INC $0712                   ; $13:9676: EE 12 07    ;
                LDX $0712                   ; $13:9679: AE 12 07    ;
                JSR CODE_1397DC             ; $13:967C: 20 DC 97    ;
                CPX #$0A                    ; $13:967F: E0 0A       ;
                BNE CODE_139686             ; $13:9681: D0 03       ;
                PLX                         ; $13:9683: FA          ;
                SEC                         ; $13:9684: 38          ;
                RTS                         ; $13:9685: 60          ;

CODE_139686:    PLX                         ; $13:9686: FA          ;
                CLC                         ; $13:9687: 18          ;
                RTS                         ; $13:9688: 60          ;

CODE_139689:    LDA $E7                     ; $13:9689: A5 E7       ;
                AND #$F0                    ; $13:968B: 29 F0       ;
                STA $0713                   ; $13:968D: 8D 13 07    ;
                TYA                         ; $13:9690: 98          ;
                AND #$F0                    ; $13:9691: 29 F0       ;
                CMP $0713                   ; $13:9693: CD 13 07    ;
                BEQ CODE_1396AF             ; $13:9696: F0 17       ;
                TYA                         ; $13:9698: 98          ;
                AND #$0F                    ; $13:9699: 29 0F       ;
                STA $0713                   ; $13:969B: 8D 13 07    ;
                LDA $E7                     ; $13:969E: A5 E7       ;
                AND #$F0                    ; $13:96A0: 29 F0       ;
                ORA $0713                   ; $13:96A2: 0D 13 07    ;
                TAY                         ; $13:96A5: A8          ;
                DEC $0712                   ; $13:96A6: CE 12 07    ;
                LDX $0712                   ; $13:96A9: AE 12 07    ;
                JSR CODE_1397DC             ; $13:96AC: 20 DC 97    ;
CODE_1396AF:    RTS                         ; $13:96AF: 60          ;

CODE_1396B0:    INY                         ; $13:96B0: C8          ;
                TYA                         ; $13:96B1: 98          ;
                AND #$0F                    ; $13:96B2: 29 0F       ;
                BEQ CODE_1396BF             ; $13:96B4: F0 09       ;
                LDA $02E4                   ; $13:96B6: AD E4 02    ;
                BEQ CODE_1396D1             ; $13:96B9: F0 16       ;
                LDX $E9                     ; $13:96BB: A6 E9       ;
                BRA CODE_1396CC             ; $13:96BD: 80 0D       ;

CODE_1396BF:    TYA                         ; $13:96BF: 98          ;
                SEC                         ; $13:96C0: 38          ;
                SBC #$10                    ; $13:96C1: E9 10       ;
                TAY                         ; $13:96C3: A8          ;
                STX $0B                     ; $13:96C4: 86 0B       ;
                LDX $E9                     ; $13:96C6: A6 E9       ;
                INX                         ; $13:96C8: E8          ;
                STX $0247                   ; $13:96C9: 8E 47 02    ;
CODE_1396CC:    JSR CODE_1397DC             ; $13:96CC: 20 DC 97    ;
                LDX $0B                     ; $13:96CF: A6 0B       ;
CODE_1396D1:    RTS                         ; $13:96D1: 60          ;

CODE_1396D2:    TYA                         ; $13:96D2: 98          ;
                CLC                         ; $13:96D3: 18          ;
                ADC #$10                    ; $13:96D4: 69 10       ;
                TAY                         ; $13:96D6: A8          ;
                CMP #$F0                    ; $13:96D7: C9 F0       ;
                BCC CODE_139704             ; $13:96D9: 90 29       ;
                LDA $050F                   ; $13:96DB: AD 0F 05    ;
                CLC                         ; $13:96DE: 18          ;
                ADC #$10                    ; $13:96DF: 69 10       ;
                CMP #$2A                    ; $13:96E1: C9 2A       ;
                BEQ CODE_1396EB             ; $13:96E3: F0 06       ;
                LDX $E9                     ; $13:96E5: A6 E9       ;
                INX                         ; $13:96E7: E8          ;
                JSR CODE_1397DC             ; $13:96E8: 20 DC 97    ;
CODE_1396EB:    TYA                         ; $13:96EB: 98          ;
                AND #$0F                    ; $13:96EC: 29 0F       ;
                TAY                         ; $13:96EE: A8          ;
                LDX #$06                    ; $13:96EF: A2 06       ;
                LDA $050F                   ; $13:96F1: AD 0F 05    ;
                CLC                         ; $13:96F4: 18          ;
                ADC #$10                    ; $13:96F5: 69 10       ;
CODE_1396F7:    CMP.l DATA_13DB60,x                 ; $13:96F7: DF 60 DB 13 ;
                BEQ CODE_139701             ; $13:96FB: F0 04       ;
                DEX                         ; $13:96FD: CA          ;
                BPL CODE_1396F7             ; $13:96FE: 10 F7       ;
                RTS                         ; $13:9700: 60          ;

CODE_139701:    INC $02E4                   ; $13:9701: EE E4 02    ;
CODE_139704:    RTS                         ; $13:9704: 60          ;

CODE_139705:    LDA $09                     ; $13:9705: A5 09       ;
                ASL A                       ; $13:9707: 0A          ;
                ASL A                       ; $13:9708: 0A          ;
                SEC                         ; $13:9709: 38          ;
                ADC $09                     ; $13:970A: 65 09       ;
                STA $09                     ; $13:970C: 85 09       ;
                ASL $0A                     ; $13:970E: 06 0A       ;
                LDA #$20                    ; $13:9710: A9 20       ;
                BIT $0A                     ; $13:9712: 24 0A       ;
                BCS CODE_13971A                     ; $13:9714: B0 04       ;
                BNE CODE_13971C             ; $13:9716: D0 04       ;
                BEQ CODE_13971E             ; $13:9718: F0 04       ;
CODE_13971A:    BNE CODE_13971E             ; $13:971A: D0 02       ;
CODE_13971C:    INC $0A                     ; $13:971C: E6 0A       ;
CODE_13971E:    LDA $0A                     ; $13:971E: A5 0A       ;
                EOR $09                     ; $13:9720: 45 09       ;
                RTS                         ; $13:9722: 60          ;

DATA_139723:    db $00,$10,$20,$30,$40,$50                      ;

CODE_139729:    STZ $E9                 ; $13:9729: 64 E9       ;
                LDY #$01                ; $13:972B: A0 01       ;
                LDA [$05],y             ; $13:972D: B7 05       ;
                AND #$80                ; $13:972F: 29 80       ;
                BNE CODE_139736         ; $13:9731: D0 03       ;
                JSR CODE_13986E         ; $13:9733: 20 6E 98    ;
CODE_139736:    INC $04                 ; $13:9736: E6 04       ;
CODE_139738:    LDY $04                 ; $13:9738: A4 04       ;
CODE_13973A:    INY                         ; $13:973A: C8          ;
                LDA [$05],y                 ; $13:973B: B7 05       ;
                CMP #$FF                    ; $13:973D: C9 FF       ;
                BNE CODE_139742             ; $13:973F: D0 01       ;
                RTL                         ; $13:9741: 6B          ;

CODE_139742:    LDA [$05],y                 ; $13:9742: B7 05       ;
                AND #$0F                    ; $13:9744: 29 0F       ;
                STA $E5                     ; $13:9746: 85 E5       ;
                LDA [$05],y                 ; $13:9748: B7 05       ;
                AND #$F0                    ; $13:974A: 29 F0       ;
                CMP #$F0                    ; $13:974C: C9 F0       ;
                BNE CODE_13975E             ; $13:974E: D0 0E       ;
                LDA $E5                     ; $13:9750: A5 E5       ;
                STY $08                     ; $13:9752: 84 08       ;
                JSR CODE_1397C1             ; $13:9754: 20 C1 97    ;
                JSR CODE_13992F             ; $13:9757: 20 2F 99    ;
                LDY $08                     ; $13:975A: A4 08       ;
                BRA CODE_13973A             ; $13:975C: 80 DC       ;

CODE_13975E:    STA $E6                     ; $13:975E: 85 E6       ;
                INY                         ; $13:9760: C8          ;
                STY $04                     ; $13:9761: 84 04       ;
                JSR CODE_1397D3             ; $13:9763: 20 D3 97    ;
                LDA [$05],y                 ; $13:9766: B7 05       ;
                LSR A                       ; $13:9768: 4A          ;
                LSR A                       ; $13:9769: 4A          ;
                LSR A                       ; $13:976A: 4A          ;
                LSR A                       ; $13:976B: 4A          ;
                STA $050F                   ; $13:976C: 8D 0F 05    ;
                CMP #$07                    ; $13:976F: C9 07       ;
                BCS CODE_1397A2                     ; $13:9771: B0 2F       ;
                PHA                         ; $13:9773: 48          ;
                LDA [$05],y                 ; $13:9774: B7 05       ;
                AND #$0F                    ; $13:9776: 29 0F       ;
                STA $050F                   ; $13:9778: 8D 0F 05    ;
                PLA                         ; $13:977B: 68          ;
                BEQ CODE_1397B8             ; $13:977C: F0 3A       ;
                CMP #$01                    ; $13:977E: C9 01       ;
                BNE CODE_139788             ; $13:9780: D0 06       ;
                JSR CODE_139318             ; $13:9782: 20 18 93    ;
                BRL CODE_139738             ; $13:9785: 82 B0 FF    ;

CODE_139788:    CMP #$07                    ; $13:9788: C9 07       ;
                BPL CODE_13979F             ; $13:978A: 10 13       ;
                DEC A                       ; $13:978C: 3A          ;
                TAX                         ; $13:978D: AA          ;
                LDA $050F                   ; $13:978E: AD 0F 05    ;
                CLC                         ; $13:9791: 18          ;
                ADC.l DATA_139723,x                 ; $13:9792: 7F 23 97 13 ;
                STA $050F                   ; $13:9796: 8D 0F 05    ;
                JSR CODE_139318             ; $13:9799: 20 18 93    ;
                BRL CODE_139738             ; $13:979C: 82 99 FF    ;

CODE_13979F:    BRL CODE_139738             ; $13:979F: 82 96 FF    ;

CODE_1397A2:    LDA [$05],y                 ; $13:97A2: B7 05       ;
                AND #$0F                    ; $13:97A4: 29 0F       ;
                STA $050E                   ; $13:97A6: 8D 0E 05    ;
                LDA $050F                   ; $13:97A9: AD 0F 05    ;
                SEC                         ; $13:97AC: 38          ;
                SBC #$07                    ; $13:97AD: E9 07       ;
                STA $050F                   ; $13:97AF: 8D 0F 05    ;
                JSR CODE_139300             ; $13:97B2: 20 00 93    ;
                BRL CODE_139738             ; $13:97B5: 82 80 FF    ;

CODE_1397B8:    LDA $050F                   ; $13:97B8: AD 0F 05    ;
                JSR CODE_139309             ; $13:97BB: 20 09 93    ;
                BRL CODE_139738             ; $13:97BE: 82 77 FF    ;

CODE_1397C1:    ASL A                       ; $13:97C1: 0A          ;
                TAX                         ; $13:97C2: AA          ;
                JMP (PNTR_1397C6,x)                 ; $13:97C3: 7C C6 97    ;

PNTR_1397C6:    dw CODE_1397CC                                  ;
                dw CODE_1397CA                                  ;

CODE_1397CA:    INC $E9                 ; $13:97CA: E6 E9       ;
CODE_1397CC:    INC $E9                 ; $13:97CC: E6 E9       ;
                LDA #$00                ; $13:97CE: A9 00       ;
                STA $E6                 ; $13:97D0: 85 E6       ;
                RTS                     ; $13:97D2: 60          ;
                 
CODE_1397D3:    LDX $E9                     ; $13:97D3: A6 E9       ;
                LDA $E6                     ; $13:97D5: A5 E6       ;
                CLC                         ; $13:97D7: 18          ;
                ADC $E5                     ; $13:97D8: 65 E5       ;
                STA $E7                     ; $13:97DA: 85 E7       ;
CODE_1397DC:    LDA $0534                   ; $13:97DC: AD 34 05    ;
                ASL A                       ; $13:97DF: 0A          ;
                ASL A                       ; $13:97E0: 0A          ;
                ASL A                       ; $13:97E1: 0A          ;
                ASL A                       ; $13:97E2: 0A          ;
                CLC                         ; $13:97E3: 18          ;
                ADC.w DATA_11AAFB,x                 ; $13:97E4: 7D FB AA    ;
                STA $02                     ; $13:97E7: 85 02       ;
                LDA.w DATA_11AAF0,x                 ; $13:97E9: BD F0 AA    ;
                STA $01                     ; $13:97EC: 85 01       ;
                LDA #$7F                    ; $13:97EE: A9 7F       ;
                STA $03                     ; $13:97F0: 85 03       ;
                RTS                         ; $13:97F2: 60          ;

CODE_1397F3:    REP #$30                    ; $13:97F3: C2 30       ;
                LDA $02D9                   ; $13:97F5: AD D9 02    ;
                STA $7F0002                 ; $13:97F8: 8F 02 00 7F ;
                LDA #$8000                  ; $13:97FC: A9 00 80    ;
                STA $7F0004                 ; $13:97FF: 8F 04 00 7F ;
                LDX #$0000                  ; $13:9803: A2 00 00    ;
CODE_139806:    LDA [$C4]                   ; $13:9806: A7 C4       ;
                AND #$00FF                  ; $13:9808: 29 FF 00    ;
                CMP #$00FF                  ; $13:980B: C9 FF 00    ;
                BEQ CODE_139834             ; $13:980E: F0 24       ;
                ASL A                       ; $13:9810: 0A          ;
                ASL A                       ; $13:9811: 0A          ;
                ASL A                       ; $13:9812: 0A          ;
                TAY                         ; $13:9813: A8          ;
                LDA [$00],y                 ; $13:9814: B7 00       ;
                STA $7F0006,x               ; $13:9816: 9F 06 00 7F ;
                INY                         ; $13:981A: C8          ;
                INY                         ; $13:981B: C8          ;
                LDA [$00],y                 ; $13:981C: B7 00       ;
                STA $7F0008,x               ; $13:981E: 9F 08 00 7F ;
                INY                         ; $13:9822: C8          ;
                INY                         ; $13:9823: C8          ;
                LDA [$00],y                 ; $13:9824: B7 00       ;
                STA $7F0046,x               ; $13:9826: 9F 46 00 7F ;
                INY                         ; $13:982A: C8          ;
                INY                         ; $13:982B: C8          ;
                LDA [$00],y                 ; $13:982C: B7 00       ;
                STA $7F0048,x               ; $13:982E: 9F 48 00 7F ;
                BRA CODE_139847             ; $13:9832: 80 13       ;

CODE_139834:    LDA #$00BF                  ; $13:9834: A9 BF 00    ;
                STA $7F0006,x               ; $13:9837: 9F 06 00 7F ;
                STA $7F0008,x               ; $13:983B: 9F 08 00 7F ;
                STA $7F0046,x               ; $13:983F: 9F 46 00 7F ;
                STA $7F0048,x               ; $13:9843: 9F 48 00 7F ;
CODE_139847:    LDA $C4                     ; $13:9847: A5 C4       ;
                CLC                         ; $13:9849: 18          ;
                ADC #$0001                  ; $13:984A: 69 01 00    ;
                STA $C4                     ; $13:984D: 85 C4       ;
                INX                         ; $13:984F: E8          ;
                INX                         ; $13:9850: E8          ;
                INX                         ; $13:9851: E8          ;
                INX                         ; $13:9852: E8          ;
                CPX #$0040                  ; $13:9853: E0 40 00    ;
                BNE CODE_139806             ; $13:9856: D0 AE       ;
                LDA #$FFFF                  ; $13:9858: A9 FF FF    ;
                STA $7F0086                 ; $13:985B: 8F 86 00 7F ;
                LDA $02D9                   ; $13:985F: AD D9 02    ;
                XBA                         ; $13:9862: EB          ;
                CLC                         ; $13:9863: 18          ;
                ADC #$0040                  ; $13:9864: 69 40 00    ;
                XBA                         ; $13:9867: EB          ;
                STA $02D9                   ; $13:9868: 8D D9 02    ;
                SEP #$30                    ; $13:986B: E2 30       ;
                RTS                         ; $13:986D: 60          ;

CODE_13986E:    LDA [$05],y                 ; $13:986E: B7 05       ;
                AND #$7F                    ; $13:9870: 29 7F       ;
                ASL A                       ; $13:9872: 0A          ;
                TAX                         ; $13:9873: AA          ;
                LDA.l PNTR_13C661,x                 ; $13:9874: BF 61 C6 13 ;
                STA $C4                     ; $13:9878: 85 C4       ;
                INX                         ; $13:987A: E8          ;
                LDA.l PNTR_13C661,x                 ; $13:987B: BF 61 C6 13 ;
                STA $C5                     ; $13:987F: 85 C5       ;
                LDA #$13                    ; $13:9881: A9 13       ;
                STA $C6                     ; $13:9883: 85 C6       ;
                LDY #$00                    ; $13:9885: A0 00       ;
                LDA [$C4],y                 ; $13:9887: B7 C4       ;
                AND #$F0                    ; $13:9889: 29 F0       ;
                STA $02DC                   ; $13:988B: 8D DC 02    ;
                LSR A                       ; $13:988E: 4A          ;
                LSR A                       ; $13:988F: 4A          ;
                LSR A                       ; $13:9890: 4A          ;
                LSR A                       ; $13:9891: 4A          ;
                STA $02DE                   ; $13:9892: 8D DE 02    ;
                LDA [$C4],y                 ; $13:9895: B7 C4       ;
                AND #$0F                    ; $13:9897: 29 0F       ;
                STA $02DD                   ; $13:9899: 8D DD 02    ;
                INC $02DD                   ; $13:989C: EE DD 02    ;
                STZ $0C                     ; $13:989F: 64 0C       ;
                STZ $0E                     ; $13:98A1: 64 0E       ;
CODE_1398A3:    STZ $0D                     ; $13:98A3: 64 0D       ;
                STZ $0F                     ; $13:98A5: 64 0F       ;
                JSR CODE_139913             ; $13:98A7: 20 13 99    ;
                JSR CODE_1398C4             ; $13:98AA: 20 C4 98    ;
                JSR CODE_1398D6             ; $13:98AD: 20 D6 98    ;
                INC $0C                     ; $13:98B0: E6 0C       ;
                LDA $0C                     ; $13:98B2: A5 0C       ;
                CMP $02DD                   ; $13:98B4: CD DD 02    ;
                BMI CODE_1398BB             ; $13:98B7: 30 02       ;
                STZ $0C                     ; $13:98B9: 64 0C       ;
CODE_1398BB:    INC $0E                     ; $13:98BB: E6 0E       ;
                LDA $0E                     ; $13:98BD: A5 0E       ;
                CMP #$10                    ; $13:98BF: C9 10       ;
                BNE CODE_1398A3             ; $13:98C1: D0 E0       ;
                RTS                         ; $13:98C3: 60          ;

CODE_1398C4:    LDA $02DC                   ; $13:98C4: AD DC 02    ;
                BEQ CODE_1398D5             ; $13:98C7: F0 0C       ;
CODE_1398C9:    LDA $0F                     ; $13:98C9: A5 0F       ;
                CLC                         ; $13:98CB: 18          ;
                ADC #$10                    ; $13:98CC: 69 10       ;
                STA $0F                     ; $13:98CE: 85 0F       ;
                CMP $02DC                   ; $13:98D0: CD DC 02    ;
                BNE CODE_1398C9             ; $13:98D3: D0 F4       ;
CODE_1398D5:    RTS                         ; $13:98D5: 60          ;

CODE_1398D6:    JSR CODE_1398F7             ; $13:98D6: 20 F7 98    ;
CODE_1398D9:    LDY $0F                     ; $13:98D9: A4 0F       ;
                LDA [$01],y                 ; $13:98DB: B7 01       ;
                CMP #$FF                    ; $13:98DD: C9 FF       ;
                BNE CODE_1398E9             ; $13:98DF: D0 08       ;
                LDY $0D                     ; $13:98E1: A4 0D       ;
                LDA [$C4],y                 ; $13:98E3: B7 C4       ;
                LDY $0F                     ; $13:98E5: A4 0F       ;
                STA [$01],y                 ; $13:98E7: 97 01       ;
CODE_1398E9:    INC $0D                     ; $13:98E9: E6 0D       ;
                LDA $0F                     ; $13:98EB: A5 0F       ;
                CLC                         ; $13:98ED: 18          ;
                ADC #$10                    ; $13:98EE: 69 10       ;
                STA $0F                     ; $13:98F0: 85 0F       ;
                CMP #$F0                    ; $13:98F2: C9 F0       ;
                BNE CODE_1398D9             ; $13:98F4: D0 E3       ;
                RTS                         ; $13:98F6: 60          ;

CODE_1398F7:    LDA $0C                     ; $13:98F7: A5 0C       ;
                BEQ CODE_139910             ; $13:98F9: F0 15       ;
                ASL A                       ; $13:98FB: 0A          ;
                ASL A                       ; $13:98FC: 0A          ;
                ASL A                       ; $13:98FD: 0A          ;
                ASL A                       ; $13:98FE: 0A          ;
                STA $0D                     ; $13:98FF: 85 0D       ;
                LDX $0C                     ; $13:9901: A6 0C       ;
CODE_139903:    DEX                         ; $13:9903: CA          ;
                BMI CODE_139910             ; $13:9904: 30 0A       ;
                LDA $0D                     ; $13:9906: A5 0D       ;
                SEC                         ; $13:9908: 38          ;
                SBC $02DE                   ; $13:9909: ED DE 02    ;
                STA $0D                     ; $13:990C: 85 0D       ;
                BRA CODE_139903             ; $13:990E: 80 F3       ;

CODE_139910:    INC $0D                     ; $13:9910: E6 0D       ;
                RTS                         ; $13:9912: 60          ;

CODE_139913:    LDX $E9                     ; $13:9913: A6 E9       ;
                LDA.w DATA_11AAF0,x                 ; $13:9915: BD F0 AA    ;
                CLC                         ; $13:9918: 18          ;
                ADC $0E                     ; $13:9919: 65 0E       ;
                STA $01                     ; $13:991B: 85 01       ;
                LDA $0534                   ; $13:991D: AD 34 05    ;
                ASL A                       ; $13:9920: 0A          ;
                ASL A                       ; $13:9921: 0A          ;
                ASL A                       ; $13:9922: 0A          ;
                ASL A                       ; $13:9923: 0A          ;
                CLC                         ; $13:9924: 18          ;
                ADC.w DATA_11AAFB,x                 ; $13:9925: 7D FB AA    ;
                STA $02                     ; $13:9928: 85 02       ;
                LDA #$7F                    ; $13:992A: A9 7F       ;
                STA $03                     ; $13:992C: 85 03       ;
                RTS                         ; $13:992E: 60          ;

CODE_13992F:    LDY $08                     ; $13:992F: A4 08       ;
                INY                         ; $13:9931: C8          ;
                LDA [$05],y                 ; $13:9932: B7 05       ;
                AND #$80                    ; $13:9934: 29 80       ;
                BNE CODE_13993B             ; $13:9936: D0 03       ;
                JSR CODE_13986E             ; $13:9938: 20 6E 98    ;
CODE_13993B:    INC $08                     ; $13:993B: E6 08       ;
                RTS                         ; $13:993D: 60          ;

CODE_13993E:    LDX #$03                    ; $13:993E: A2 03       ;
                LDA $050F                   ; $13:9940: AD 0F 05    ;
                CLC                         ; $13:9943: 18          ;
                ADC #$10                    ; $13:9944: 69 10       ;
CODE_139946:    CMP.l DATA_13D483,x                 ; $13:9946: DF 83 D4 13 ;
                BEQ CODE_13994F             ; $13:994A: F0 03       ;
                DEX                         ; $13:994C: CA          ;
                BPL CODE_139946             ; $13:994D: 10 F7       ;
CODE_13994F:    TXA                         ; $13:994F: 8A          ;
                ASL A                       ; $13:9950: 0A          ;
                ASL A                       ; $13:9951: 0A          ;
                TAX                         ; $13:9952: AA          ;
                LDY $E7                     ; $13:9953: A4 E7       ;
                LDA.l DATA_13D487,x                 ; $13:9955: BF 87 D4 13 ;
                STA [$01],y                 ; $13:9959: 97 01       ;
                JSR CODE_1396D2             ; $13:995B: 20 D2 96    ;
                INX                         ; $13:995E: E8          ;
                LDA.l DATA_13D487,x                 ; $13:995F: BF 87 D4 13 ;
                STA [$01],y                 ; $13:9963: 97 01       ;
                INX                         ; $13:9965: E8          ;
                LDY $E7                     ; $13:9966: A4 E7       ;
                JSR CODE_1396B0             ; $13:9968: 20 B0 96    ;
                LDA.l DATA_13D487,x                 ; $13:996B: BF 87 D4 13 ;
                STA [$01],y                 ; $13:996F: 97 01       ;
                JSR CODE_1396D2             ; $13:9971: 20 D2 96    ;
                INX                         ; $13:9974: E8          ;
                LDA.l DATA_13D487,x                 ; $13:9975: BF 87 D4 13 ;
                STA [$01],y                 ; $13:9979: 97 01       ;
                RTS                         ; $13:997B: 60          ;

CODE_13997C:    LDY $E7                     ; $13:997C: A4 E7       ;
                LDX #$00                    ; $13:997E: A2 00       ;
CODE_139980:    LDA.l DATA_13D4DC,x                 ; $13:9980: BF DC D4 13 ;
                STA [$01],y                 ; $13:9984: 97 01       ;
                STY $02DE                   ; $13:9986: 8C DE 02    ;
                LDY $E7                     ; $13:9989: A4 E7       ;
                INX                         ; $13:998B: E8          ;
                CPX #$02                    ; $13:998C: E0 02       ;
                BEQ CODE_1399A3             ; $13:998E: F0 13       ;
                CPX #$07                    ; $13:9990: E0 07       ;
                BEQ CODE_1399A0             ; $13:9992: F0 0C       ;
                CPX #$0A                    ; $13:9994: E0 0A       ;
                BEQ CODE_1399A8             ; $13:9996: F0 10       ;
                LDY $02DE                   ; $13:9998: AC DE 02    ;
                JSR CODE_1396D2             ; $13:999B: 20 D2 96    ;
                BRA CODE_139980             ; $13:999E: 80 E0       ;

CODE_1399A0:    JSR CODE_1396B0             ; $13:99A0: 20 B0 96    ;
CODE_1399A3:    JSR CODE_1396B0             ; $13:99A3: 20 B0 96    ;
                BRA CODE_139980             ; $13:99A6: 80 D8       ;

CODE_1399A8:    RTS                         ; $13:99A8: 60          ;

CODE_1399A9:    LDX #$33                    ; $13:99A9: A2 33       ;
                LDA $050F                   ; $13:99AB: AD 0F 05    ;
                CLC                         ; $13:99AE: 18          ;
                ADC #$10                    ; $13:99AF: 69 10       ;
CODE_1399B1:    CMP.l DATA_13D4E6,x                 ; $13:99B1: DF E6 D4 13 ;
                BEQ CODE_1399BA             ; $13:99B5: F0 03       ;
                DEX                         ; $13:99B7: CA          ;
                BPL CODE_1399B1             ; $13:99B8: 10 F7       ;
CODE_1399BA:    TXA                         ; $13:99BA: 8A          ;
                ASL A                       ; $13:99BB: 0A          ;
                TAX                         ; $13:99BC: AA          ;
                LDA.l PNTR_13D51A,x                 ; $13:99BD: BF 1A D5 13 ;
                STA $08                     ; $13:99C1: 85 08       ;
                INX                         ; $13:99C3: E8          ;
                LDA.l PNTR_13D51A,x                 ; $13:99C4: BF 1A D5 13 ;
                STA $09                     ; $13:99C8: 85 09       ;
                LDA #$13                    ; $13:99CA: A9 13       ;
                STA $0A                     ; $13:99CC: 85 0A       ;
                LDY #$00                    ; $13:99CE: A0 00       ;
                LDA [$08],y                 ; $13:99D0: B7 08       ;
                AND #$F0                    ; $13:99D2: 29 F0       ;
                LSR A                       ; $13:99D4: 4A          ;
                LSR A                       ; $13:99D5: 4A          ;
                LSR A                       ; $13:99D6: 4A          ;
                LSR A                       ; $13:99D7: 4A          ;
                STA $0E                     ; $13:99D8: 85 0E       ;
                STA $0D                     ; $13:99DA: 85 0D       ;
                LDA [$08],y                 ; $13:99DC: B7 08       ;
                AND #$0F                    ; $13:99DE: 29 0F       ;
                STA $0F                     ; $13:99E0: 85 0F       ;
                JSR CODE_1399E9             ; $13:99E2: 20 E9 99    ;
                STZ $02E4                   ; $13:99E5: 9C E4 02    ;
                RTS                         ; $13:99E8: 60          ;

CODE_1399E9:    LDA #$01                    ; $13:99E9: A9 01       ;
                STA $02E3                   ; $13:99EB: 8D E3 02    ;
                LDA $E7                     ; $13:99EE: A5 E7       ;
                STA $02E2                   ; $13:99F0: 8D E2 02    ;
                LDA $E7                     ; $13:99F3: A5 E7       ;
                STA $0C                     ; $13:99F5: 85 0C       ;
CODE_1399F7:    LDY $02E3                   ; $13:99F7: AC E3 02    ;
                LDA [$08],y                 ; $13:99FA: B7 08       ;
                LDY $02E2                   ; $13:99FC: AC E2 02    ;
                STA [$01],y                 ; $13:99FF: 97 01       ;
                INC $02E3                   ; $13:9A01: EE E3 02    ;
                LDY $02E2                   ; $13:9A04: AC E2 02    ;
                JSR CODE_1396D2             ; $13:9A07: 20 D2 96    ;
                STY $02E2                   ; $13:9A0A: 8C E2 02    ;
                DEC $0E                     ; $13:9A0D: C6 0E       ;
                LDA $0E                     ; $13:9A0F: A5 0E       ;
                BPL CODE_1399F7             ; $13:9A11: 10 E4       ;
                DEC $0F                     ; $13:9A13: C6 0F       ;
                LDA $0F                     ; $13:9A15: A5 0F       ;
                BMI CODE_139A29             ; $13:9A17: 30 10       ;
                LDY $0C                     ; $13:9A19: A4 0C       ;
                JSR CODE_1396B0             ; $13:9A1B: 20 B0 96    ;
                STY $0C                     ; $13:9A1E: 84 0C       ;
                STY $02E2                   ; $13:9A20: 8C E2 02    ;
                LDA $0D                     ; $13:9A23: A5 0D       ;
                STA $0E                     ; $13:9A25: 85 0E       ;
                BRA CODE_1399F7             ; $13:9A27: 80 CE       ;

CODE_139A29:    RTS                         ; $13:9A29: 60          ;

CODE_139A2A:    LDA $050F                   ; $13:9A2A: AD 0F 05    ;
                SEC                         ; $13:9A2D: 38          ;
                SBC #$0E                    ; $13:9A2E: E9 0E       ;
                STA $0C                     ; $13:9A30: 85 0C       ;
                ASL A                       ; $13:9A32: 0A          ;
                CLC                         ; $13:9A33: 18          ;
                ADC $0C                     ; $13:9A34: 65 0C       ;
                STA $0F                     ; $13:9A36: 85 0F       ;
                TAX                         ; $13:9A38: AA          ;
                LDY $E7                     ; $13:9A39: A4 E7       ;
                STY $0E                     ; $13:9A3B: 84 0E       ;
CODE_139A3D:    LDA $0533                   ; $13:9A3D: AD 33 05    ;
                CMP #$05                    ; $13:9A40: C9 05       ;
                BNE CODE_139A4B             ; $13:9A42: D0 07       ;
                LDA $0534                   ; $13:9A44: AD 34 05    ;
                CMP #$04                    ; $13:9A47: C9 04       ;
                BEQ CODE_139A65             ; $13:9A49: F0 1A       ;
CODE_139A4B:    LDA $0533                   ; $13:9A4B: AD 33 05    ;
                CMP #$0F                    ; $13:9A4E: C9 0F       ;
                BNE CODE_139A69             ; $13:9A50: D0 17       ;
                LDA $0534                   ; $13:9A52: AD 34 05    ;
                CMP #$03                    ; $13:9A55: C9 03       ;
                BEQ CODE_139A65             ; $13:9A57: F0 0C       ;
                CMP #$04                    ; $13:9A59: C9 04       ;
                BEQ CODE_139A65             ; $13:9A5B: F0 08       ;
                CMP #$05                    ; $13:9A5D: C9 05       ;
                BEQ CODE_139A65             ; $13:9A5F: F0 04       ;
                CMP #$06                    ; $13:9A61: C9 06       ;
                BNE CODE_139A69             ; $13:9A63: D0 04       ;
CODE_139A65:    LDA #$05                    ; $13:9A65: A9 05       ;
                BRA CODE_139A6B             ; $13:9A67: 80 02       ;

CODE_139A69:    LDA #$04                    ; $13:9A69: A9 04       ;
CODE_139A6B:    STA $0D                     ; $13:9A6B: 85 0D       ;
CODE_139A6D:    LDA.l DATA_13D9BE,x                 ; $13:9A6D: BF BE D9 13 ;
                STA [$01],y                 ; $13:9A71: 97 01       ;
                TYA                         ; $13:9A73: 98          ;
                CLC                         ; $13:9A74: 18          ;
                ADC #$10                    ; $13:9A75: 69 10       ;
                TAY                         ; $13:9A77: A8          ;
                LDA.l DATA_13D9C8,x                 ; $13:9A78: BF C8 D9 13 ;
                STA [$01],y                 ; $13:9A7C: 97 01       ;
                TYA                         ; $13:9A7E: 98          ;
                CLC                         ; $13:9A7F: 18          ;
                ADC #$10                    ; $13:9A80: 69 10       ;
                TAY                         ; $13:9A82: A8          ;
                DEC $0D                     ; $13:9A83: C6 0D       ;
                BPL CODE_139A6D             ; $13:9A85: 10 E6       ;
                LDA.l DATA_13D9D2,x                 ; $13:9A87: BF D2 D9 13 ;
                STA [$01],y                 ; $13:9A8B: 97 01       ;
                INX                         ; $13:9A8D: E8          ;
                TXA                         ; $13:9A8E: 8A          ;
                LDX $0C                     ; $13:9A8F: A6 0C       ;
                CMP.l DATA_13D9DC,x                 ; $13:9A91: DF DC D9 13 ;
                BEQ CODE_139AA1             ; $13:9A95: F0 0A       ;
                TAX                         ; $13:9A97: AA          ;
                LDY $0E                     ; $13:9A98: A4 0E       ;
                JSR CODE_1396B0             ; $13:9A9A: 20 B0 96    ;
                STY $0E                     ; $13:9A9D: 84 0E       ;
                BRA CODE_139A3D             ; $13:9A9F: 80 9C       ;

CODE_139AA1:    RTS                         ; $13:9AA1: 60          ;

CODE_139AA2:    LDY $E7                     ; $13:9AA2: A4 E7       ;
                LDA #$03                    ; $13:9AA4: A9 03       ;
                STA $0F                     ; $13:9AA6: 85 0F       ;
CODE_139AA8:    STA $0E                     ; $13:9AA8: 85 0E       ;
CODE_139AAA:    LDX $0E                     ; $13:9AAA: A6 0E       ;
                LDA.l DATA_13D9DF,x                 ; $13:9AAC: BF DF D9 13 ;
                STA [$01],y                 ; $13:9AB0: 97 01       ;
                STY $0D                     ; $13:9AB2: 84 0D       ;
                TYA                         ; $13:9AB4: 98          ;
                CLC                         ; $13:9AB5: 18          ;
                ADC #$10                    ; $13:9AB6: 69 10       ;
                TAY                         ; $13:9AB8: A8          ;
                STX $0C                     ; $13:9AB9: 86 0C       ;
                JSR CODE_139ADA             ; $13:9ABB: 20 DA 9A    ;
                LDX $0C                     ; $13:9ABE: A6 0C       ;
                CMP #$00                    ; $13:9AC0: C9 00       ;
                BNE CODE_139AC8             ; $13:9AC2: D0 04       ;
                LDA.l DATA_13D9E3                   ; $13:9AC4: AF E3 D9 13 ;
CODE_139AC8:    STA [$01],y                 ; $13:9AC8: 97 01       ;
                LDY $0D                     ; $13:9ACA: A4 0D       ;
                INY                         ; $13:9ACC: C8          ;
                DEC $0E                     ; $13:9ACD: C6 0E       ;
                BPL CODE_139AAA             ; $13:9ACF: 10 D9       ;
                DEC $0F                     ; $13:9AD1: C6 0F       ;
                BMI CODE_139AD9             ; $13:9AD3: 30 04       ;
                LDA #$03                    ; $13:9AD5: A9 03       ;
                BRA CODE_139AA8             ; $13:9AD7: 80 CF       ;

CODE_139AD9:    RTS                         ; $13:9AD9: 60          ;

CODE_139ADA:    LDX #$05                    ; $13:9ADA: A2 05       ;
CODE_139ADC:    LDA [$01],y                 ; $13:9ADC: B7 01       ;
                CMP.l DATA_13D9E4,x                 ; $13:9ADE: DF E4 D9 13 ;
                BEQ CODE_139AEA             ; $13:9AE2: F0 06       ;
                DEX                         ; $13:9AE4: CA          ;
                BPL CODE_139ADC             ; $13:9AE5: 10 F5       ;
                LDA #$00                    ; $13:9AE7: A9 00       ;
                RTS                         ; $13:9AE9: 60          ;

CODE_139AEA:    LDA.l DATA_13D9EA,x                 ; $13:9AEA: BF EA D9 13 ;
                RTS                         ; $13:9AEE: 60          ;

CODE_139AEF:    LDY $E7                     ; $13:9AEF: A4 E7       ;
                STY $0C                     ; $13:9AF1: 84 0C       ;
                STZ $0D                     ; $13:9AF3: 64 0D       ;
                STZ $0F                     ; $13:9AF5: 64 0F       ;
CODE_139AF7:    STZ $0E                     ; $13:9AF7: 64 0E       ;
CODE_139AF9:    LDX $0D                     ; $13:9AF9: A6 0D       ;
                LDA.l DATA_13D9F7,x                 ; $13:9AFB: BF F7 D9 13 ;
                STA [$01],y                 ; $13:9AFF: 97 01       ;
                INC $0D                     ; $13:9B01: E6 0D       ;
                LDA $0D                     ; $13:9B03: A5 0D       ;
                CMP #$17                    ; $13:9B05: C9 17       ;
                BEQ CODE_139B32             ; $13:9B07: F0 29       ;
                INC $0E                     ; $13:9B09: E6 0E       ;
                LDX $0F                     ; $13:9B0B: A6 0F       ;
                LDA.l DATA_13D9F0,x                 ; $13:9B0D: BF F0 D9 13 ;
                CMP $0E                     ; $13:9B11: C5 0E       ;
                BEQ CODE_139B27             ; $13:9B13: F0 12       ;
                TYA                         ; $13:9B15: 98          ;
                AND #$F0                    ; $13:9B16: 29 F0       ;
                CMP #$E0                    ; $13:9B18: C9 E0       ;
                BEQ CODE_139B21             ; $13:9B1A: F0 05       ;
                JSR CODE_1396D2             ; $13:9B1C: 20 D2 96    ;
                BRA CODE_139AF9             ; $13:9B1F: 80 D8       ;

CODE_139B21:    INC $0D                     ; $13:9B21: E6 0D       ;
                INC $0D                     ; $13:9B23: E6 0D       ;
                INC $0D                     ; $13:9B25: E6 0D       ;
CODE_139B27:    INC $0F                     ; $13:9B27: E6 0F       ;
                LDY $0C                     ; $13:9B29: A4 0C       ;
                JSR CODE_1396B0             ; $13:9B2B: 20 B0 96    ;
                STY $0C                     ; $13:9B2E: 84 0C       ;
                BRA CODE_139AF7             ; $13:9B30: 80 C5       ;

CODE_139B32:    RTS                         ; $13:9B32: 60          ;

                RTS                         ; $13:9B33: 60          ;

CODE_139B34:    STZ $0D                     ; $13:9B34: 64 0D       ;
                STZ $0E                     ; $13:9B36: 64 0E       ;
                LDA $050F                   ; $13:9B38: AD 0F 05    ;
                SEC                         ; $13:9B3B: 38          ;
                SBC #$31                    ; $13:9B3C: E9 31       ;
                STA $0F                     ; $13:9B3E: 85 0F       ;
                LDY $E7                     ; $13:9B40: A4 E7       ;
CODE_139B42:    LDX $0D                     ; $13:9B42: A6 0D       ;
                LDY $E7                     ; $13:9B44: A4 E7       ;
                LDA.l DATA_13DAA9,x                 ; $13:9B46: BF A9 DA 13 ;
                STA [$01],y                 ; $13:9B4A: 97 01       ;
                JSR CODE_1396D2             ; $13:9B4C: 20 D2 96    ;
                LDA.l DATA_13DAAE,x                 ; $13:9B4F: BF AE DA 13 ;
                STA [$01],y                 ; $13:9B53: 97 01       ;
                JSR CODE_1396D2             ; $13:9B55: 20 D2 96    ;
                LDA.l DATA_13DAB3,x                 ; $13:9B58: BF B3 DA 13 ;
                STA [$01],y                 ; $13:9B5C: 97 01       ;
CODE_139B5E:    JSR CODE_1396D2             ; $13:9B5E: 20 D2 96    ;
                LDA.l DATA_13DAB8,x                 ; $13:9B61: BF B8 DA 13 ;
                STA [$01],y                 ; $13:9B65: 97 01       ;
                TYA                         ; $13:9B67: 98          ;
                AND #$F0                    ; $13:9B68: 29 F0       ;
                CMP #$E0                    ; $13:9B6A: C9 E0       ;
                BNE CODE_139B5E             ; $13:9B6C: D0 F0       ;
                LDX $0F                     ; $13:9B6E: A6 0F       ;
                INC $0E                     ; $13:9B70: E6 0E       ;
                LDA $0E                     ; $13:9B72: A5 0E       ;
                CMP.l DATA_13DAA5,x                 ; $13:9B74: DF A5 DA 13 ;
                BEQ CODE_139BA5             ; $13:9B78: F0 2B       ;
                CPX #$02                    ; $13:9B7A: E0 02       ;
                BNE CODE_139B86             ; $13:9B7C: D0 08       ;
                CMP #$02                    ; $13:9B7E: C9 02       ;
                BNE CODE_139B97             ; $13:9B80: D0 15       ;
                INC $0D                     ; $13:9B82: E6 0D       ;
                BRA CODE_139B97             ; $13:9B84: 80 11       ;

CODE_139B86:    CMP #$03                    ; $13:9B86: C9 03       ;
                BPL CODE_139B8C             ; $13:9B88: 10 02       ;
                BRA CODE_139B97             ; $13:9B8A: 80 0B       ;

CODE_139B8C:    LDA.l DATA_13DAA5,x                 ; $13:9B8C: BF A5 DA 13 ;
                SEC                         ; $13:9B90: 38          ;
                SBC #$03                    ; $13:9B91: E9 03       ;
                CMP $0E                     ; $13:9B93: C5 0E       ;
                BCS CODE_139B99                     ; $13:9B95: B0 02       ;
CODE_139B97:    INC $0D                     ; $13:9B97: E6 0D       ;
CODE_139B99:    LDY $00E7                   ; $13:9B99: AC E7 00    ;
                JSR CODE_1396B0             ; $13:9B9C: 20 B0 96    ;
                STY $00E7                   ; $13:9B9F: 8C E7 00    ;
                BRL CODE_139B42             ; $13:9BA2: 82 9D FF    ;

CODE_139BA5:    RTS                         ; $13:9BA5: 60          ;

CODE_139BA6:    STZ $0E                     ; $13:9BA6: 64 0E       ;
                LDA $050F                   ; $13:9BA8: AD 0F 05    ;
                SEC                         ; $13:9BAB: 38          ;
                SBC #$39                    ; $13:9BAC: E9 39       ;
                ASL A                       ; $13:9BAE: 0A          ;
                ASL A                       ; $13:9BAF: 0A          ;
                STA $0D                     ; $13:9BB0: 85 0D       ;
CODE_139BB2:    STZ $0C                     ; $13:9BB2: 64 0C       ;
                STZ $0F                     ; $13:9BB4: 64 0F       ;
                LDY $E7                     ; $13:9BB6: A4 E7       ;
                LDA $0D                     ; $13:9BB8: A5 0D       ;
                CLC                         ; $13:9BBA: 18          ;
                ADC $0E                     ; $13:9BBB: 65 0E       ;
                TAX                         ; $13:9BBD: AA          ;
                LDA.l DATA_13DABD,x                 ; $13:9BBE: BF BD DA 13 ;
                PHX                         ; $13:9BC2: DA          ;
                JSR CODE_139C24             ; $13:9BC3: 20 24 9C    ;
                PLX                         ; $13:9BC6: FA          ;
                STA [$01],y                 ; $13:9BC7: 97 01       ;
                INC $0C                     ; $13:9BC9: E6 0C       ;
                JSR CODE_1396D2             ; $13:9BCB: 20 D2 96    ;
                LDA.l DATA_13DACD,x                 ; $13:9BCE: BF CD DA 13 ;
                PHX                         ; $13:9BD2: DA          ;
                JSR CODE_139C24             ; $13:9BD3: 20 24 9C    ;
                PLX                         ; $13:9BD6: FA          ;
                STA [$01],y                 ; $13:9BD7: 97 01       ;
                INC $0C                     ; $13:9BD9: E6 0C       ;
                TYA                         ; $13:9BDB: 98          ;
                AND #$F0                    ; $13:9BDC: 29 F0       ;
                CMP #$E0                    ; $13:9BDE: C9 E0       ;
                BEQ CODE_139C0A             ; $13:9BE0: F0 28       ;
CODE_139BE2:    JSR CODE_1396D2             ; $13:9BE2: 20 D2 96    ;
                LDA $0D                     ; $13:9BE5: A5 0D       ;
                CLC                         ; $13:9BE7: 18          ;
                ADC $0E                     ; $13:9BE8: 65 0E       ;
                CLC                         ; $13:9BEA: 18          ;
                ADC $0F                     ; $13:9BEB: 65 0F       ;
                TAX                         ; $13:9BED: AA          ;
                LDA.l DATA_13DADD,x                 ; $13:9BEE: BF DD DA 13 ;
                STA [$01],y                 ; $13:9BF2: 97 01       ;
                TYA                         ; $13:9BF4: 98          ;
                AND #$F0                    ; $13:9BF5: 29 F0       ;
                CMP #$E0                    ; $13:9BF7: C9 E0       ;
                BEQ CODE_139C0A             ; $13:9BF9: F0 0F       ;
                LDA $0F                     ; $13:9BFB: A5 0F       ;
                CLC                         ; $13:9BFD: 18          ;
                ADC #$10                    ; $13:9BFE: 69 10       ;
                STA $0F                     ; $13:9C00: 85 0F       ;
                CMP #$50                    ; $13:9C02: C9 50       ;
                BNE CODE_139BE2             ; $13:9C04: D0 DC       ;
                STZ $0F                     ; $13:9C06: 64 0F       ;
                BRA CODE_139BE2             ; $13:9C08: 80 D8       ;

CODE_139C0A:    LDA $0E                     ; $13:9C0A: A5 0E       ;
                CMP #$03                    ; $13:9C0C: C9 03       ;
                BEQ CODE_139C1E             ; $13:9C0E: F0 0E       ;
                LDY $00E7                   ; $13:9C10: AC E7 00    ;
                JSR CODE_1396B0             ; $13:9C13: 20 B0 96    ;
                STY $00E7                   ; $13:9C16: 8C E7 00    ;
                INC $0E                     ; $13:9C19: E6 0E       ;
                BRL CODE_139BB2             ; $13:9C1B: 82 94 FF    ;

CODE_139C1E:    PHX                         ; $13:9C1E: DA          ;
                JSR CODE_139C57             ; $13:9C1F: 20 57 9C    ;
                PLX                         ; $13:9C22: FA          ;
                RTS                         ; $13:9C23: 60          ;

CODE_139C24:    STA $0247                   ; $13:9C24: 8D 47 02    ;
                LDA $0D                     ; $13:9C27: A5 0D       ;
                CMP #$0C                    ; $13:9C29: C9 0C       ;
                BEQ CODE_139C53             ; $13:9C2B: F0 26       ;
                LDA $0C                     ; $13:9C2D: A5 0C       ;
                BEQ CODE_139C3B             ; $13:9C2F: F0 0A       ;
                LDA $0E                     ; $13:9C31: A5 0E       ;
                BEQ CODE_139C3B             ; $13:9C33: F0 06       ;
                CMP #$03                    ; $13:9C35: C9 03       ;
                BEQ CODE_139C3B             ; $13:9C37: F0 02       ;
                BRA CODE_139C53             ; $13:9C39: 80 18       ;

CODE_139C3B:    LDA [$01],y                 ; $13:9C3B: B7 01       ;
                CMP #$FF                    ; $13:9C3D: C9 FF       ;
                BEQ CODE_139C53             ; $13:9C3F: F0 12       ;
                LDX #$05                    ; $13:9C41: A2 05       ;
CODE_139C43:    CMP.l DATA_13DB2D,x                 ; $13:9C43: DF 2D DB 13 ;
                BEQ CODE_139C4E             ; $13:9C47: F0 05       ;
                DEX                         ; $13:9C49: CA          ;
                BPL CODE_139C43             ; $13:9C4A: 10 F7       ;
                BRA CODE_139C53             ; $13:9C4C: 80 05       ;

CODE_139C4E:    LDA.l DATA_13DB33,x                 ; $13:9C4E: BF 33 DB 13 ;
                RTS                         ; $13:9C52: 60          ;

CODE_139C53:    LDA $0247                   ; $13:9C53: AD 47 02    ;
                RTS                         ; $13:9C56: 60          ;

CODE_139C57:    LDY $00E7                   ; $13:9C57: AC E7 00    ;
                JSR CODE_1396B0             ; $13:9C5A: 20 B0 96    ;
                TYA                         ; $13:9C5D: 98          ;
                CLC                         ; $13:9C5E: 18          ;
                ADC #$10                    ; $13:9C5F: 69 10       ;
                TAY                         ; $13:9C61: A8          ;
                LDA [$01],y                 ; $13:9C62: B7 01       ;
                CMP #$32                    ; $13:9C64: C9 32       ;
                BNE CODE_139C6E             ; $13:9C66: D0 06       ;
                LDA #$45                    ; $13:9C68: A9 45       ;
                STA [$01],y                 ; $13:9C6A: 97 01       ;
                BRA CODE_139C87             ; $13:9C6C: 80 19       ;

CODE_139C6E:    LDA [$01],y                 ; $13:9C6E: B7 01       ;
                CMP #$FF                    ; $13:9C70: C9 FF       ;
                BEQ CODE_139C87             ; $13:9C72: F0 13       ;
                LDX #$05                    ; $13:9C74: A2 05       ;
CODE_139C76:    CMP.l DATA_13DB39,x                 ; $13:9C76: DF 39 DB 13 ;
                BEQ CODE_139C81             ; $13:9C7A: F0 05       ;
                DEX                         ; $13:9C7C: CA          ;
                BPL CODE_139C76             ; $13:9C7D: 10 F7       ;
                BRA CODE_139C87             ; $13:9C7F: 80 06       ;

CODE_139C81:    LDA.l DATA_13DB3F,x                 ; $13:9C81: BF 3F DB 13 ;
                STA [$01],y                 ; $13:9C85: 97 01       ;
CODE_139C87:    TYA                         ; $13:9C87: 98          ;
                AND #$F0                    ; $13:9C88: 29 F0       ;
                CMP #$E0                    ; $13:9C8A: C9 E0       ;
                BEQ CODE_139C93             ; $13:9C8C: F0 05       ;
                JSR CODE_1396D2             ; $13:9C8E: 20 D2 96    ;
                BRA CODE_139C6E             ; $13:9C91: 80 DB       ;

CODE_139C93:    RTS                         ; $13:9C93: 60          ;

CODE_139C94:    LDA $0533                   ; $13:9C94: AD 33 05    ;
                CMP #$0D                    ; $13:9C97: C9 0D       ;
                BNE CODE_139CAA             ; $13:9C99: D0 0F       ;
                LDA $0534                   ; $13:9C9B: AD 34 05    ;
                CMP #$02                    ; $13:9C9E: C9 02       ;
                BEQ CODE_139CA6             ; $13:9CA0: F0 04       ;
                CMP #$03                    ; $13:9CA2: C9 03       ;
                BNE CODE_139CAA             ; $13:9CA4: D0 04       ;
CODE_139CA6:    LDA #$C0                    ; $13:9CA6: A9 C0       ;
                BRA CODE_139CAC             ; $13:9CA8: 80 02       ;

CODE_139CAA:    LDA #$B0                    ; $13:9CAA: A9 B0       ;
CODE_139CAC:    STA $0D                     ; $13:9CAC: 85 0D       ;
                STZ $0E                     ; $13:9CAE: 64 0E       ;
                LDY $E7                     ; $13:9CB0: A4 E7       ;
CODE_139CB2:    LDX $0E                     ; $13:9CB2: A6 0E       ;
                LDA.l DATA_13DB45,x                 ; $13:9CB4: BF 45 DB 13 ;
                JSR CODE_139CE0             ; $13:9CB8: 20 E0 9C    ;
                STA [$01],y                 ; $13:9CBB: 97 01       ;
CODE_139CBD:    JSR CODE_1396D2             ; $13:9CBD: 20 D2 96    ;
                TYA                         ; $13:9CC0: 98          ;
                AND #$F0                    ; $13:9CC1: 29 F0       ;
                CMP $0D                     ; $13:9CC3: C5 0D       ;
                BEQ CODE_139CCF             ; $13:9CC5: F0 08       ;
                LDA.l DATA_13DB47,x                 ; $13:9CC7: BF 47 DB 13 ;
                STA [$01],y                 ; $13:9CCB: 97 01       ;
                BRA CODE_139CBD             ; $13:9CCD: 80 EE       ;

CODE_139CCF:    JSR CODE_139D04             ; $13:9CCF: 20 04 9D    ;
                LDA $0E                     ; $13:9CD2: A5 0E       ;
                BNE CODE_139CDF             ; $13:9CD4: D0 09       ;
                LDY $E7                     ; $13:9CD6: A4 E7       ;
                JSR CODE_1396B0             ; $13:9CD8: 20 B0 96    ;
                INC $0E                     ; $13:9CDB: E6 0E       ;
                BRA CODE_139CB2             ; $13:9CDD: 80 D3       ;

CODE_139CDF:    RTS                         ; $13:9CDF: 60          ;

CODE_139CE0:    STA $0247                   ; $13:9CE0: 8D 47 02    ;
                STX $0F                     ; $13:9CE3: 86 0F       ;
                LDA [$01],y                 ; $13:9CE5: B7 01       ;
                CMP #$FF                    ; $13:9CE7: C9 FF       ;
                BEQ CODE_139CFE             ; $13:9CE9: F0 13       ;
                LDX #$01                    ; $13:9CEB: A2 01       ;
CODE_139CED:    CMP.l DATA_13DB49,x                 ; $13:9CED: DF 49 DB 13 ;
                BEQ CODE_139CF8             ; $13:9CF1: F0 05       ;
                DEX                         ; $13:9CF3: CA          ;
                BPL CODE_139CED             ; $13:9CF4: 10 F7       ;
                BRA CODE_139CFE             ; $13:9CF6: 80 06       ;

CODE_139CF8:    LDA.l DATA_13DB4B,x                 ; $13:9CF8: BF 4B DB 13 ;
                BRA CODE_139D01             ; $13:9CFC: 80 03       ;

CODE_139CFE:    LDA $0247                   ; $13:9CFE: AD 47 02    ;
CODE_139D01:    LDX $0F                     ; $13:9D01: A6 0F       ;
                RTS                         ; $13:9D03: 60          ;

CODE_139D04:    LDA $0E                     ; $13:9D04: A5 0E       ;
                ASL A                       ; $13:9D06: 0A          ;
                TAX                         ; $13:9D07: AA          ;
                LDA [$01],y                 ; $13:9D08: B7 01       ;
                CMP.l DATA_13DB4D,x                 ; $13:9D0A: DF 4D DB 13 ;
                BEQ CODE_139D17             ; $13:9D0E: F0 07       ;
                INX                         ; $13:9D10: E8          ;
                CMP.l DATA_13DB4D,x                 ; $13:9D11: DF 4D DB 13 ;
                BNE CODE_139D1E             ; $13:9D15: D0 07       ;
CODE_139D17:    LDA.l DATA_13DB51,x                 ; $13:9D17: BF 51 DB 13 ;
                STA [$01],y                 ; $13:9D1B: 97 01       ;
                RTS                         ; $13:9D1D: 60          ;

CODE_139D1E:    LDA $0E                     ; $13:9D1E: A5 0E       ;
                ASL A                       ; $13:9D20: 0A          ;
                TAX                         ; $13:9D21: AA          ;
                LDA [$01],y                 ; $13:9D22: B7 01       ;
                CMP.l DATA_13DB55,x                 ; $13:9D24: DF 55 DB 13 ;
                BEQ CODE_139D31             ; $13:9D28: F0 07       ;
                INX                         ; $13:9D2A: E8          ;
                CMP.l DATA_13DB55,x                 ; $13:9D2B: DF 55 DB 13 ;
                BNE CODE_139D37             ; $13:9D2F: D0 06       ;
CODE_139D31:    LDA.l DATA_13DB59,x                 ; $13:9D31: BF 59 DB 13 ;
                STA [$01],y                 ; $13:9D35: 97 01       ;
CODE_139D37:    RTS                         ; $13:9D37: 60          ;

CODE_139D38:    LDY $E7                     ; $13:9D38: A4 E7       ;
                LDA.l DATA_13DB5D                   ; $13:9D3A: AF 5D DB 13 ;
                STA [$01],y                 ; $13:9D3E: 97 01       ;
                JSR CODE_1396D2             ; $13:9D40: 20 D2 96    ;
                LDA.l DATA_13DB5E                   ; $13:9D43: AF 5E DB 13 ;
                STA [$01],y                 ; $13:9D47: 97 01       ;
                JSR CODE_1396D2             ; $13:9D49: 20 D2 96    ;
                LDA.l DATA_13DB5F                   ; $13:9D4C: AF 5F DB 13 ;
                STA [$01],y                 ; $13:9D50: 97 01       ;
                RTS                         ; $13:9D52: 60          ;

CODE_139D53:    STZ $0770                   ; $13:9D53: 9C 70 07    ;
                STZ $C4                     ; $13:9D56: 64 C4       ;
                LDA $0533                   ; $13:9D58: AD 33 05    ;
                CMP #$0F                    ; $13:9D5B: C9 0F       ;
                BNE CODE_139D6B             ; $13:9D5D: D0 0C       ;
                LDA $051B                   ; $13:9D5F: AD 1B 05    ;
                BNE CODE_139D6B             ; $13:9D62: D0 07       ;
                INC $0770                   ; $13:9D64: EE 70 07    ;
                LDA #$80                    ; $13:9D67: A9 80       ;
                BRA CODE_139D6D             ; $13:9D69: 80 02       ;

CODE_139D6B:    LDA #$60                    ; $13:9D6B: A9 60       ;
CODE_139D6D:    STA $C5                     ; $13:9D6D: 85 C5       ;
                LDA #$7F                    ; $13:9D6F: A9 7F       ;
                STA $C6                     ; $13:9D71: 85 C6       ;
                LDA $0770                   ; $13:9D73: AD 70 07    ;
                BNE CODE_139D85             ; $13:9D76: D0 0D       ;
                LDX $0533                   ; $13:9D78: AE 33 05    ;
                LDA.l DATA_11D098,x                 ; $13:9D7B: BF 98 D0 11 ;
                CLC                         ; $13:9D7F: 18          ;
                ADC $0534                   ; $13:9D80: 6D 34 05    ;
                BRA CODE_139D8E             ; $13:9D83: 80 09       ;

CODE_139D85:    LDX #$0F                    ; $13:9D85: A2 0F       ;
                LDA.l DATA_11D098,x                 ; $13:9D87: BF 98 D0 11 ;
                CLC                         ; $13:9D8B: 18          ;
                ADC #$06                    ; $13:9D8C: 69 06       ;
CODE_139D8E:    TAX                         ; $13:9D8E: AA          ;
                LDA.l DATA_13A61D,x                 ; $13:9D8F: BF 1D A6 13 ;
                ASL A                       ; $13:9D93: 0A          ;
                TAX                         ; $13:9D94: AA          ;
                LDA.l PNTR_13A6E5,x                 ; $13:9D95: BF E5 A6 13 ;
                STA $00                     ; $13:9D99: 85 00       ;
                INX                         ; $13:9D9B: E8          ;
                LDA.l PNTR_13A6E5,x                 ; $13:9D9C: BF E5 A6 13 ;
                STA $01                     ; $13:9DA0: 85 01       ;
                LDA #$13                    ; $13:9DA2: A9 13       ;
                STA $02                     ; $13:9DA4: 85 02       ;
                STZ $02D7                   ; $13:9DA6: 9C D7 02    ;
                STZ $02D8                   ; $13:9DA9: 9C D8 02    ;
                STZ $02DA                   ; $13:9DAC: 9C DA 02    ;
                LDA #$10                    ; $13:9DAF: A9 10       ;
                STA $02D9                   ; $13:9DB1: 8D D9 02    ;
CODE_139DB4:    JSL CODE_118B2D             ; $13:9DB4: 22 2D 8B 11 ;
                JSR CODE_1397F3             ; $13:9DB8: 20 F3 97    ;
                LDA $02D9                   ; $13:9DBB: AD D9 02    ;
                CMP #$14                    ; $13:9DBE: C9 14       ;
                BNE CODE_139DB4             ; $13:9DC0: D0 F2       ;
                LDA #$00                    ; $13:9DC2: A9 00       ;
                STA $7F0000                 ; $13:9DC4: 8F 00 00 7F ;
                STA $7F0001                 ; $13:9DC8: 8F 01 00 7F ;
                DEC A                       ; $13:9DCC: 3A          ;
                STA $7F0002                 ; $13:9DCD: 8F 02 00 7F ;
                STZ $0202                   ; $13:9DD1: 9C 02 02    ;
                STZ $0203                   ; $13:9DD4: 9C 03 02    ;
                LDA #$20                    ; $13:9DD7: A9 20       ;
                STA $023D                   ; $13:9DD9: 8D 3D 02    ;
                LDA #$40                    ; $13:9DDC: A9 40       ;
                STA $023E                   ; $13:9DDE: 8D 3E 02    ;
                LDA #$80                    ; $13:9DE1: A9 80       ;
                STA $023F                   ; $13:9DE3: 8D 3F 02    ;
                RTL                         ; $13:9DE6: 6B          ;

                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; \ Empty.
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ;  |
                db $FF                                          ; /
          
DATA_139E00:    db $00,$0A,$14,$1E,$28,$32,$3C,$46              ;
                db $50,$5A,$64,$6E,$78,$82,$8C,$96              ;
                db $A0,$AA,$B4,$BE,$C8                          ;

DATA_139E15:    db $13                                          ;

DATA_139E16:    db $BA,$BA,$C7,$F8,$F8,$E5,$E5,$E5              ;
                db $E5,$E5,$C7,$F8,$C7,$E8,$E8,$F3              ;
                db $F3,$F3,$F3,$F3,$C7,$F3,$F6,$B3              ;
                db $52,$52,$52,$52,$52,$52,$89,$AE              ;
                db $BD,$BD,$F6,$BD,$BD,$BD,$BD,$BD              ;
                db $FD,$0E,$FD,$4D,$56,$FD,$67,$67              ;
                db $67,$67,$FD,$89,$FD,$AE,$70,$BD              ;
                db $7B,$F3,$8A,$8A,$8D,$BA,$F8,$92              ;
                db $F8,$95,$95,$95,$95,$95,$95,$A2              ;
                db $A2,$AD,$AD,$AD,$AD,$AD,$AD,$AD              ;
                db $F8,$C7,$B3,$F6,$F6,$F6,$F3,$AD              ;
                db $52,$B4,$B4,$D7,$18,$18,$18,$18              ;
                db $18,$18,$18,$18,$18,$D7,$B4,$1D              ;
                db $18,$20,$20,$20,$20,$20,$18,$B4              ;
                db $F6,$F6,$23,$F3,$18,$18,$26,$26              ;
                db $26,$F8,$F8,$2B,$2B,$2B,$2B,$2B              ;
                db $2B,$2B,$F8,$2B,$8C,$B7,$E4,$EB              ;
                db $0A,$0A,$0A,$0A,$F8,$C7,$F8,$0A              ;
                db $19,$1C,$1C,$1C,$1C,$1C,$0E,$FD              ;
                db $FD,$60,$60,$60,$67,$67,$67,$67              ;
                db $FD,$78,$FD,$85,$85,$85,$85,$85              ;
                db $85,$85,$FD,$89,$FD,$BA,$85,$BD              ;
                db $7B,$88,$88,$88,$BA,$88,$88,$BA              ;
                db $B1,$B1,$B1,$B1,$B1,$B1,$B6,$B9              ;
                db $B9,$B9,$B9,$D8,$FB,$FB,$FB,$BA              ;
                db $10,$10,$10,$10,$10,$10,$10,$10              ;
                db $10,$10                                      ;
         
DATA_139EE8:    db $9F,$9F,$9F,$9F,$9F,$A0,$A0,$A0              ;
                db $A0,$A0,$9F,$9F,$9F,$A0,$A0,$A0              ;
                db $A0,$A0,$A0,$A0,$9F,$A0,$A0,$A1              ;
                db $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2              ;
                db $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2              ;
                db $A2,$A3,$A2,$A3,$A3,$A2,$A3,$A3              ;
                db $A3,$A3,$A2,$A2,$A2,$A2,$A3,$A2              ;
                db $A3,$A0,$A3,$A3,$A3,$9F,$9F,$A3              ;
                db $9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3              ;
                db $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3              ;
                db $9F,$9F,$A1,$A0,$A0,$A0,$A0,$A3              ;
                db $A2,$A3,$A3,$A3,$A4,$A4,$A4,$A4              ;
                db $A4,$A4,$A4,$A4,$A4,$A3,$A3,$A4              ;
                db $A4,$A4,$A4,$A4,$A4,$A4,$A4,$A3              ;
                db $A0,$A0,$A4,$A0,$A4,$A4,$A4,$A4              ;
                db $A4,$9F,$9F,$A4,$A4,$A4,$A4,$A4              ;
                db $A4,$A4,$9F,$A4,$A4,$A4,$A4,$A4              ;
                db $A5,$A5,$A5,$A5,$9F,$9F,$9F,$A5              ;
                db $A5,$A5,$A5,$A5,$A5,$A5,$A3,$A2              ;
                db $A2,$A5,$A5,$A5,$A5,$A5,$A5,$A5              ;
                db $A2,$A5,$A2,$A5,$A5,$A5,$A5,$A5              ;
                db $A5,$A5,$A2,$A2,$A2,$9F,$A5,$A2              ;
                db $A3,$A5,$A5,$A5,$9F,$A5,$A5,$9F              ;
                db $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5              ;
                db $A5,$A5,$A5,$A5,$A5,$A5,$A5,$9F              ;
                db $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6              ;
                db $A6,$A6                                      ;

                db $00,$80,$F0,$80,$F0,$80,$F0,$80              ;
                db $F0,$80,$F0,$80,$FF                          ;

                db $00,$00,$82,$13,$78,$14,$8C,$13              ;
                db $F0,$00,$70,$14,$88,$13,$8C,$13              ;
                db $F0,$00,$82,$13,$74,$14,$88,$13              ;
                db $7E,$14,$F0,$00,$84,$13,$78,$14              ;
                db $F0,$00,$82,$13,$78,$14,$8C,$13              ;
                db $F0,$00,$70,$14,$88,$13,$8C,$13              ;
                db $FF                                          ;
       
                db $D0,$01,$46,$1A,$6C,$1A,$82,$1A              ;
                db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B              ;
                db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C              ;
                db $A9,$1C,$68,$1D,$F0,$01,$22,$1A              ;
                db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B              ;
                db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C              ;
                db $2A,$1D,$8C,$1D,$F0,$01,$46,$1A              ;
                db $6C,$1A,$82,$1A,$C6,$1A,$CE,$1A              ;
                db $23,$1B,$2B,$1B,$4F,$1B,$85,$1B              ;
                db $C1,$1B,$41,$1C,$A9,$1C,$68,$1D              ;
                db $F0,$01,$22,$1A,$46,$1A,$A2,$1A              ;
                db $4B,$1B,$67,$1B,$AB,$1B,$C3,$1B              ;
                db $63,$1C,$C7,$1C,$2A,$1D,$8C,$1D              ;
                db $F0,$01,$46,$1A,$6C,$1A,$82,$1A              ;
                db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B              ;
                db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C              ;
                db $A9,$1C,$68,$1D,$F0,$01,$22,$1A              ;
                db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B              ;
                db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C              ;
                db $2A,$1D,$8C,$1D,$F0,$01,$46,$1A              ;
                db $6C,$1A,$82,$1A,$C6,$1A,$CE,$1A              ;
                db $23,$1B,$2B,$1B,$4F,$1B,$85,$1B              ;
                db $C1,$1B,$41,$1C,$A9,$1C,$68,$1D              ;
                db $F0,$01,$22,$1A,$46,$1A,$A2,$1A              ;
                db $4B,$1B,$67,$1B,$AB,$1B,$C3,$1B              ;
                db $63,$1C,$C7,$1C,$2A,$1D,$8C,$1D              ;
                db $F0,$01,$46,$1A,$6C,$1A,$82,$1A              ;
                db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B              ;
                db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C              ;
                db $A9,$1C,$68,$1D,$FF                          ;

                db $00,$80,$FF                                  ;

                db $00,$1B,$80,$13,$78,$14,$8C,$13              ;
                db $8E,$13,$FF                                  ;

                db $E0,$24,$FF                                  ;

                db $D0,$09,$20,$23,$80,$23,$E0,$23              ;
                db $41,$21,$61,$21,$63,$21,$0B,$61              ;
                db $3D,$63,$90,$62,$F0,$09,$20,$23              ;
                db $80,$23,$E0,$23,$C1,$21,$C3,$21              ;
                db $0B,$61,$30,$62,$3D,$63,$F0,$14              ;
                db $20,$23,$80,$23,$E0,$23,$41,$21              ;
                db $61,$21,$63,$21,$0B,$61,$3D,$63              ;
                db $90,$62,$F0,$14,$20,$23,$80,$23              ;
                db $E0,$23,$41,$21,$43,$21,$61,$21              ;
                db $63,$21,$0B,$61,$3D,$63,$90,$62              ;
                db $F0,$09,$20,$23,$80,$23,$E0,$23              ;
                db $41,$21,$61,$21,$63,$21,$0B,$61              ;
                db $3D,$63,$90,$62,$F0,$09,$20,$23              ;
                db $80,$23,$E0,$23,$C1,$21,$C3,$21              ;
                db $0B,$61,$30,$62,$3D,$63,$FF                  ;

                db $14,$20,$23,$80,$23,$E0,$23,$41              ;
                db $21,$61,$21,$0B,$61,$3D,$63,$90              ;
                db $62,$F0,$14,$20,$23,$80,$23,$E0              ;
                db $23,$41,$21,$61,$21,$63,$21,$0B              ;
                db $61,$3D,$63,$90,$62,$F0,$09,$20              ;
                db $23,$80,$23,$E0,$23,$41,$21,$61              ;
                db $21,$63,$21,$0B,$61,$3D,$63,$90              ;
                db $62,$F0,$09,$20,$23,$80,$23,$0B              ;
                db $61,$30,$62,$3D,$63,$FF                      ;

                db $D0,$02,$71,$21,$91,$21,$93,$21              ;
                db $40,$23,$B0,$23,$02,$26,$D4,$24              ;
                db $D7,$25,$0B,$27,$04,$28,$57,$29              ;
                db $A8,$32,$5D,$34,$F0,$02,$40,$23              ;
                db $B0,$23,$09,$26,$64,$24,$66,$26              ;
                db $67,$25,$76,$26,$0B,$27,$C3,$2A              ;
                db $0A,$2C,$C9,$2D,$5D,$34,$F0,$02              ;
                db $40,$23,$B0,$23,$09,$26,$64,$24              ;
                db $67,$25,$0B,$27,$C3,$2A,$0A,$2C              ;
                db $C9,$2D,$56,$2E,$5D,$34,$F0,$02              ;
                db $95,$21,$97,$21,$40,$23,$B0,$23              ;
                db $09,$26,$64,$24,$66,$26,$67,$25              ;
                db $76,$26,$C3,$2A,$0B,$27,$0A,$2C              ;
                db $F0,$02,$71,$21,$91,$21,$93,$21              ;
                db $40,$23,$B0,$23,$02,$26,$D4,$24              ;
                db $D7,$25,$0B,$27,$04,$28,$57,$29              ;
                db $A8,$32,$5D,$34,$F0,$02,$40,$23              ;
                db $B0,$23,$09,$26,$64,$24,$66,$26              ;
                db $67,$25,$76,$26,$0B,$27,$C3,$2A              ;
                db $0A,$2C,$C9,$2D,$5D,$34,$FF                  ;

                db $D1,$02,$40,$23,$B0,$23,$62,$24              ;
                db $0B,$27,$04,$28,$57,$29,$59,$29              ;
                db $C7,$2B,$C9,$2B,$A0,$33,$5D,$34              ;
                db $F0,$02,$40,$23,$B0,$23,$0B,$27              ;
                db $0A,$2C,$5A,$2F,$7B,$22,$99,$22              ;
                db $9B,$22,$9D,$22,$64,$24,$67,$25              ;
                db $56,$30,$01,$31,$C4,$34,$FF                  ;

                db $C4,$03,$82,$35,$8A,$35,$F0,$03              ;
                db $80,$35,$8E,$35,$69,$12,$F0,$03              ;
                db $8A,$35,$76,$12,$7D,$36,$F0,$03              ;
                db $8D,$35,$F0,$03,$81,$35,$74,$37              ;
                db $F0,$03,$55,$12,$FF                          ;
          
                db $D0,$15,$F0,$1D,$F0,$15,$F0,$1D              ;
                db $FF,$15,$F0,$1D,$F0,$15,$FF,$D0              ;
                db $04,$04,$1E,$09,$1F,$0E,$20,$F0              ;
                db $04,$05,$1F,$0C,$1E,$F0,$04,$01              ;
                db $1F,$04,$1E,$0C,$20,$F0,$04,$04              ;
                db $1E,$09,$1F,$0E,$20,$F0,$04,$05              ;
                db $1F,$0C,$1E,$F0,$04,$01,$1F,$04              ;
                db $1E,$0C,$20,$F0,$04,$04,$1E,$09              ;
                db $1F,$0E,$20,$F0,$04,$05,$1F,$FF              ;

                db $00,$03,$70,$69,$29,$38,$FF                  ;

                db $D0,$1E,$F0,$1E,$F0,$1E,$F0,$1E              ;
                db $F0,$1E,$F0,$1E,$F0,$1E,$F0,$1E              ;
                db $FF                                          ;
                             
                db $00,$0A,$40,$39,$4F,$3A,$F0,$0A              ;
                db $40,$3B,$42,$3B,$44,$3B,$46,$3B              ;
                db $48,$3B,$4A,$3B,$4C,$3C,$6E,$3E              ;
                db $F0,$0A,$4D,$3A,$4E,$3B,$F0,$0A              ;
                db $40,$3B,$42,$3C,$47,$3A,$48,$3B              ;
                db $4A,$3B,$4C,$3C,$F0,$26,$40,$3F              ;
                db $42,$3F,$44,$3F,$45,$3A,$46,$3B              ;
                db $77,$3D,$5E,$40,$F0,$26,$FF                  ;

                db $D0,$1E,$F0,$1F,$F0,$1E,$F0,$1F              ;
                db $FF                                          ;

                db $C1,$1A,$40,$3B,$42,$3B,$44,$3B              ;
                db $45,$3C,$67,$3E,$4E,$3B,$4E,$3A              ;
                db $FF                                          ;
           
                db $C1,$04,$09,$1F,$F0,$80,$00,$20              ;
                db $FF                                          ;

                db $C1,$16,$00,$67,$04,$1E,$08,$1F              ;
                db $0D,$68,$FF                                  ;
           
                db $D1,$04,$04,$1E,$09,$1F,$0E,$20              ;
                db $F0,$04,$05,$1F,$0C,$1E,$FF                  ;

                db $C1,$15,$FF                                  ;

                db $00,$05,$F0,$05,$FF                          ;
        
                db $00,$80,$FF                                  ;

                db $00,$05,$F0,$05,$F0,$05,$F0,$05              ;
                db $F0,$05,$F0,$05,$FF                          ;
              
                db $C0,$25,$F0,$25,$F0,$25,$F0,$25              ;
                db $F0,$25,$FF                                  ;

                db $00,$0D,$F0,$0E,$F0,$0D,$FF                  ;

                db $00,$80,$A6,$41,$87,$45,$F0,$80              ;
                db $92,$41,$F0,$80,$A4,$42,$86,$46              ;
                db $BF,$43,$F0,$80,$AB,$44,$8D,$47              ;
                db $F0,$80,$B8,$43,$F0,$80,$B1,$41              ;
                db $92,$45,$FF                                  ;
                 
                db $00,$80,$80,$5F,$56,$4B,$74,$49              ;
                db $AA,$4B,$5F,$4B,$F0,$80,$A3,$4B              ;
                db $71,$49,$B7,$4A,$8E,$4B,$AC,$49              ;
                db $F0,$80,$96,$4B,$B4,$49,$DA,$4A              ;
                db $F0,$80,$A0,$4B,$94,$4B,$72,$49              ;
                db $B8,$4A,$9E,$49,$F0,$80,$72,$4B              ;
                db $B4,$4C,$A9,$4A,$CF,$49,$F0,$80              ;
                db $01,$4B,$A5,$4B,$73,$49,$C1,$4D              ;
                db $FF                                          ;
           
                db $D0,$06,$F0,$06,$FF                          ;

                db $00,$80,$FF                                  ;

                db $00,$80,$FF                                  ;

                db $00,$80,$FF                                  ;

                db $00,$10,$F0,$10,$FF                          ;
    
                db $C4,$0F,$85,$4F,$A4,$4F,$79,$4F              ;
                db $98,$4F,$8A,$4F,$A0,$52,$A3,$53              ;
                db $A7,$56,$F0,$0F,$66,$4F,$85,$4F              ;
                db $79,$4F,$98,$4F,$8A,$4F,$AC,$50              ;
                db $AE,$50,$F0,$0F,$AE,$54,$76,$4F              ;
                db $95,$4F,$88,$4F,$AF,$4F,$A0,$50              ;
                db $A2,$50,$A4,$55,$F0,$0F,$61,$4F              ;
                db $80,$4F,$A2,$4F,$8A,$4F,$79,$4F              ;
                db $98,$4F,$A0,$51,$A4,$52,$A7,$53              ;
                db $F0,$0F,$66,$4F,$85,$4F,$A4,$4F              ;
                db $97,$4F,$8A,$4F,$A3,$53,$F0,$0F              ;
                db $72,$4F,$81,$4F,$94,$4F,$A6,$55              ;
                db $FF                                          ;

                db $C1,$80,$00,$04,$F0,$80,$9C,$38              ;
                db $F0,$80,$F0,$11,$52,$4F,$25,$4F              ;
                db $57,$4F,$7C,$4F,$4B,$4F,$8A,$4F              ;
                db $79,$4F,$98,$4F,$86,$4F,$74,$4F              ;
                db $80,$4F,$B1,$4F,$93,$4F,$A5,$4F              ;
                db $AD,$4F,$FF                                  ;

                db $C1,$80,$00,$04,$F0,$80,$9C,$38              ;
                db $F0,$80,$F0,$80,$00,$04,$F0,$80              ;
                db $F0,$80,$F0,$11,$52,$4F,$25,$4F              ;
                db $57,$4F,$4B,$4F,$8A,$4F,$79,$4F              ;
                db $98,$4F,$86,$4F,$74,$4F,$80,$4F              ;
                db $93,$4F,$A5,$4F,$FF                          ;
              
                db $D1,$18,$1A,$38,$F0,$19,$FF                  ;

                db $C4,$0F,$85,$4F,$A4,$4F,$79,$4F              ;
                db $98,$4F,$8A,$4F,$A0,$52,$A3,$53              ;
                db $A7,$56,$F0,$0F,$66,$4F,$85,$4F              ;
                db $79,$4F,$98,$4F,$8A,$4F,$FF                  ;

                db $D0,$20,$F0,$21,$F0,$20,$F0,$21              ;
                db $F0,$20,$F0,$21,$F0,$20,$FF                  ;

                db $00,$80,$FF                                  ;

                db $D1,$01,$46,$1A,$6C,$1A,$82,$1A              ;
                db $C6,$1A,$CE,$1A,$23,$1B,$2B,$1B              ;
                db $4F,$1B,$85,$1B,$C1,$1B,$41,$1C              ;
                db $A9,$1C,$68,$1D,$F0,$01,$22,$1A              ;
                db $46,$1A,$A2,$1A,$4B,$1B,$67,$1B              ;
                db $AB,$1B,$C3,$1B,$63,$1C,$C7,$1C              ;
                db $2A,$1D,$8C,$1D,$FF                          ;

                db $C1,$16,$00,$67,$04,$1E,$08,$1F              ;
                db $0D,$68,$F0,$17,$F0,$17,$FF                  ;

                db $C1,$1E,$F0,$1F,$F0,$1E,$FF                  ;

                db $01,$1A,$40,$3B,$42,$3B,$44,$3B              ;
                db $45,$3C,$67,$3E,$4E,$3B,$4E,$3A              ;
                db $FF                                          ;

                db $C4,$0D,$F0,$0E,$F0,$0D,$F0,$0E              ;
                db $F0,$0D,$F0,$0E,$FF                          ;

                db $00,$80,$FF                                  ;

                db $00,$12,$B6,$57,$30,$58,$9F,$5A              ;
                db $F0,$12,$B0,$57,$BA,$57,$71,$5B              ;
                db $26,$5C,$A5,$59,$F0,$12,$B4,$57              ;
                db $BE,$57,$54,$5D,$9E,$5A,$F0,$12              ;
                db $B8,$57,$70,$5B,$25,$5C,$A3,$59              ;
                db $FF                                          ;

                db $D0,$22,$F0,$23,$FF                          ;

                db $00,$80,$FF                                  ;

                db $D8,$0B,$F0,$0B,$08,$4E,$F0,$0B              ;
                db $F0,$0B,$08,$4E,$F0,$0B,$F0,$0B              ;
                db $08,$4E,$F0,$0B,$F0,$0B,$08,$4E              ;
                db $F0,$0B,$F0,$0B,$08,$4E,$FF                  ;

                db $D9,$1C,$00,$6A,$B0,$6A,$72,$6C              ;
                db $76,$6C,$7A,$6C,$F0,$1C,$00,$6A              ;
                db $B0,$6A,$7A,$6C,$7E,$6C,$F0,$1C              ;
                db $00,$6A,$B0,$6A,$38,$6B,$72,$6C              ;
                db $76,$6C,$FF                                  ;

                db $D0,$0C,$F0,$0C,$F0,$0C,$F0,$0C              ;
                db $F0,$0C,$F0,$0C,$FF                          ;

                db $0C,$F0,$0C,$F0,$0C,$F0,$0C,$FF              ;

                db $00,$80,$FF                                  ;

PNTR_13A613:    dw DATA_13A615                                  ;

DATA_13A615:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ; Empty tile. (Tile FF)

DATA_13A61D:    db $00,$00,$00,$01,$01,$00,$00,$00              ;
                db $00,$00,$00,$01,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$0D,$02,$02              ;
                db $02,$00,$00,$00,$00,$00,$03,$05              ;
                db $05,$00,$03,$00,$00,$00,$00,$00              ;
                db $05,$04,$05,$05,$04,$05,$00,$00              ;
                db $00,$00,$05,$03,$05,$05,$05,$05              ;
                db $05,$0D,$00,$00,$00,$00,$01,$00              ;
                db $01,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $01,$00,$02,$02,$02,$02,$0D,$08              ;
                db $02,$00,$07,$07,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$06,$07,$07,$00              ;
                db $06,$00,$00,$00,$00,$00,$06,$07              ;
                db $02,$02,$00,$0D,$06,$06,$00,$00              ;
                db $00,$01,$01,$00,$00,$00,$00,$00              ;
                db $00,$00,$01,$0B,$0B,$0B,$0B,$0B              ;
                db $00,$00,$00,$00,$01,$00,$01,$0C              ;
                db $00,$01,$00,$00,$00,$00,$04,$05              ;
                db $05,$05,$05,$05,$04,$00,$00,$00              ;
                db $05,$08,$05,$00,$00,$00,$00,$00              ;
                db $00,$00,$05,$03,$05,$00,$00,$05              ;
                db $05,$00,$00,$00,$00,$09,$09,$00              ;
                db $0A,$0A,$00,$00,$00,$00,$00,$0A              ;
                db $0A,$0A,$0A,$0A,$0A,$0A,$0A,$00              ;

PNTR_13A6E5:    dw DATA_13A701                                  ; Tileset 0.
                dw DATA_13A969                                  ; Tileset 1.
                dw DATA_13A9C9                                  ; Tileset 2.
                dw DATA_13AE41                                  ; Tileset 3.
                dw DATA_13B029                                  ; Tileset 4.
                dw DATA_13B201                                  ; Tileset 5.
                dw DATA_13B351                                  ; Tileset 6.
                dw DATA_13B3D1                                  ; Tileset 7.
                dw DATA_13B7C9                                  ; Tileset 8.
                dw DATA_13B9E1                                  ; Tileset 9.
                dw DATA_13BDB1                                  ; Tileset A.
                dw DATA_13C151                                  ; Tileset B.
                dw DATA_13C309                                  ; Tileset C.
                dw DATA_13C3E9                                  ; Tileset D.

DATA_13A701:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $00,$1D,$01,$1D,$10,$1D,$13,$1D              ;
                db $02,$1D,$03,$1D,$13,$1D,$13,$1D              ;
                db $04,$1D,$05,$1D,$13,$1D,$15,$1D              ;
                db $20,$1D,$13,$1D,$30,$1D,$31,$1D              ;
                db $13,$1D,$13,$1D,$32,$1D,$33,$1D              ;
                db $13,$1D,$25,$1D,$34,$1D,$35,$1D              ;
                db $21,$1D,$13,$1D,$13,$1D,$13,$1D              ;
                db $13,$1D,$11,$1D,$13,$1D,$13,$1D              ;
                db $13,$1D,$13,$1D,$22,$1D,$13,$1D              ;
                db $13,$1D,$13,$1D,$13,$1D,$12,$1D              ;
                db $06,$1D,$07,$1D,$16,$1D,$13,$1D              ;
                db $08,$1D,$09,$1D,$13,$1D,$13,$1D              ;
                db $0A,$1D,$0B,$1D,$13,$1D,$1B,$1D              ;
                db $26,$1D,$13,$1D,$36,$1D,$37,$1D              ;
                db $13,$1D,$13,$1D,$38,$1D,$39,$1D              ;
                db $13,$1D,$2B,$1D,$3A,$1D,$3B,$1D              ;
                db $14,$1D,$13,$1D,$24,$1D,$13,$1D              ;
                db $13,$1D,$17,$1D,$13,$1D,$27,$1D              ;
                db $18,$1D,$13,$1D,$28,$1D,$13,$1D              ;
                db $13,$1D,$19,$1D,$13,$1D,$29,$1D              ;
                db $13,$1D,$13,$1D,$13,$1D,$13,$1D              ;
                db $80,$1D,$81,$1D,$4A,$05,$4B,$05              ;
                db $82,$1D,$83,$1D,$EE,$05,$EF,$05              ;
                db $5A,$05,$5B,$05,$B7,$05,$B7,$05              ;
                db $FA,$05,$FB,$05,$B7,$05,$B7,$05              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$40,$1D,$41,$1D              ;
                db $70,$1D,$71,$1D,$42,$1D,$43,$1D              ;
                db $BF,$00,$BF,$00,$44,$1D,$45,$1D              ;
                db $84,$1D,$85,$1D,$94,$1D,$95,$1D              ;
                db $86,$1D,$87,$1D,$96,$1D,$97,$1D              ;
                db $50,$1D,$51,$1D,$60,$1D,$61,$1D              ;
                db $52,$1D,$53,$1D,$62,$1D,$63,$1D              ;
                db $54,$1D,$55,$1D,$64,$1D,$65,$1D              ;
                db $66,$1D,$67,$1D,$76,$1D,$77,$1D              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $A4,$1D,$A5,$1D,$76,$1D,$B5,$1D              ;
                db $A6,$1D,$A7,$1D,$78,$1D,$79,$1D              ;
                db $72,$1D,$73,$1D,$7A,$1D,$6B,$1D              ;
                db $74,$1D,$67,$1D,$75,$1D,$77,$1D              ;
                db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D              ;
                db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D              ;
                db $7A,$1D,$7B,$1D,$7A,$1D,$7B,$1D              ;
                db $4E,$1D,$4F,$1D,$56,$1D,$57,$1D              ;
                db $5E,$1D,$5F,$1D,$58,$1D,$59,$1D              ;
                db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D              ;
                db $80,$1D,$81,$1D,$58,$1D,$59,$1D              ;
                db $82,$1D,$83,$1D,$56,$1D,$57,$1D              ;
                db $13,$1D,$13,$1D,$88,$1D,$89,$1D              ;
                db $B8,$1D,$B9,$1D,$8A,$1D,$8B,$1D              ;
                db $13,$1D,$13,$1D,$8C,$1D,$8D,$1D              ;
                db $90,$1D,$91,$1D,$A0,$1D,$A1,$1D              ;
                db $92,$1D,$93,$1D,$A2,$1D,$A3,$1D              ;
                db $98,$1D,$99,$1D,$A8,$1D,$A9,$1D              ;
                db $9A,$1D,$9B,$1D,$AA,$1D,$AB,$1D              ;
                db $9C,$1D,$9D,$1D,$AC,$1D,$AD,$1D              ;
                db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D              ;
                db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D              ;
                db $B0,$1D,$B1,$1D,$9E,$1D,$B6,$1D              ;
                db $B2,$1D,$B3,$1D,$78,$1D,$BF,$1D              ;
                db $BA,$1D,$BB,$1D,$7A,$1D,$6B,$1D              ;
                db $13,$1D,$8F,$1D,$BD,$1D,$9F,$1D              ;
                db $C0,$05,$C1,$05,$D0,$05,$D1,$05              ;
                db $C2,$05,$C3,$05,$D2,$05,$D3,$05              ;
                db $E0,$05,$E1,$05,$F0,$05,$F1,$05              ;
                db $E2,$05,$E3,$05,$F2,$05,$F3,$05              ;
                db $88,$11,$89,$11,$98,$11,$99,$11              ;
                db $8A,$11,$8B,$11,$9A,$11,$9B,$11              ;
                db $A8,$11,$A9,$11,$B8,$11,$B9,$11              ;
                db $AA,$11,$AB,$11,$BA,$11,$BB,$11              ;
                db $B8,$11,$B9,$11,$BA,$11,$BB,$11              ;

DATA_13A969:    db $C4,$05,$C5,$05,$D4,$05,$D5,$05              ;
                db $C6,$05,$C7,$05,$D6,$05,$D7,$05              ;
                db $E4,$05,$E5,$05,$F4,$05,$F5,$05              ;
                db $E6,$05,$E7,$05,$F6,$05,$F7,$05              ;
                db $C6,$05,$C7,$05,$D6,$05,$DB,$05              ;
                db $C4,$05,$C5,$05,$D8,$05,$F9,$05              ;
                db $E6,$05,$EB,$05,$F6,$05,$F7,$05              ;
                db $E8,$05,$E9,$05,$F4,$05,$F5,$05              ;
                db $C4,$05,$C9,$05,$D8,$05,$D9,$05              ;
                db $CA,$05,$CB,$05,$DA,$05,$D7,$05              ;
                db $C4,$05,$C9,$05,$D4,$05,$F8,$05              ;
                db $CA,$05,$CB,$05,$DA,$05,$DB,$05              ;

DATA_13A9C9:    db $E5,$05,$C4,$05,$E5,$05,$C4,$05              ;
                db $C4,$05,$CF,$05,$C4,$05,$CF,$05              ;
                db $C6,$05,$C7,$05,$E5,$05,$C4,$05              ;
                db $C7,$05,$C7,$05,$C4,$05,$C4,$05              ;
                db $E4,$05,$C6,$05,$F4,$05,$E5,$05              ;
                db $C7,$05,$E4,$05,$C4,$05,$F4,$05              ;
                db $D5,$05,$D6,$05,$C4,$05,$C4,$05              ;
                db $D7,$05,$E5,$05,$C4,$05,$E5,$05              ;
                db $C4,$05,$C4,$05,$C4,$05,$C4,$05              ;
                db $C4,$05,$CA,$05,$C4,$05,$DA,$05              ;
                db $CB,$05,$D4,$05,$DB,$05,$D4,$05              ;
                db $E5,$05,$C4,$05,$D5,$05,$D6,$05              ;
                db $C4,$05,$C4,$05,$D6,$05,$D6,$05              ;
                db $F4,$05,$E5,$05,$D7,$05,$D5,$05              ;
                db $C4,$05,$F4,$05,$D6,$05,$D7,$05              ;
                db $C4,$05,$D5,$05,$C4,$05,$C6,$05              ;
                db $D6,$05,$D6,$05,$C7,$05,$C7,$05              ;
                db $D6,$05,$CA,$05,$C7,$05,$DA,$05              ;
                db $D6,$05,$D7,$05,$C7,$05,$E4,$05              ;
                db $C4,$05,$C4,$05,$C6,$05,$C7,$05              ;
                db $D5,$05,$D6,$05,$C6,$05,$C7,$05              ;
                db $C3,$05,$C0,$05,$D3,$05,$D0,$05              ;
                db $C0,$05,$C0,$05,$D0,$05,$D0,$05              ;
                db $C0,$05,$C2,$05,$D0,$05,$D2,$05              ;
                db $D4,$05,$D4,$05,$D1,$05,$C5,$05              ;
                db $D4,$05,$D4,$05,$C5,$05,$C5,$05              ;
                db $D4,$05,$D4,$05,$C5,$05,$C1,$05              ;
                db $D4,$05,$CC,$05,$C5,$05,$DC,$05              ;
                db $CD,$05,$D4,$05,$DD,$05,$D4,$05              ;
                db $E6,$05,$E7,$05,$C5,$05,$CE,$05              ;
                db $F6,$05,$F7,$05,$CF,$05,$DE,$05              ;
                db $D4,$05,$D4,$05,$DF,$05,$85,$05              ;
                db $D4,$45,$D4,$05,$C5,$45,$C5,$05              ;
                db $D4,$45,$D4,$05,$C5,$45,$B0,$05              ;
                db $A0,$05,$A1,$05,$B1,$05,$B2,$05              ;
                db $A2,$05,$A3,$05,$B3,$05,$84,$05              ;
                db $D4,$05,$D4,$05,$C5,$05,$D1,$05              ;
                db $D4,$05,$C4,$05,$D4,$05,$C4,$05              ;
                db $E0,$05,$E1,$05,$C4,$05,$F0,$05              ;
                db $E2,$05,$E3,$05,$F1,$05,$F2,$05              ;
                db $C4,$05,$C4,$05,$C4,$05,$90,$05              ;
                db $80,$05,$81,$05,$91,$05,$92,$05              ;
                db $82,$05,$83,$05,$93,$05,$F5,$05              ;
                db $F5,$05,$C4,$45,$C4,$05,$C4,$45              ;
                db $94,$05,$95,$05,$94,$05,$95,$05              ;
                db $C4,$05,$E5,$05,$C4,$05,$E5,$05              ;
                db $D4,$05,$C4,$05,$D4,$05,$D6,$05              ;
                db $C4,$05,$C8,$05,$D6,$05,$D8,$05              ;
                db $C9,$05,$D4,$05,$D9,$05,$D4,$05              ;
                db $F5,$05,$C4,$45,$C4,$05,$C4,$05              ;
                db $C4,$05,$E5,$05,$C4,$05,$D5,$05              ;
                db $D4,$05,$C7,$05,$D4,$05,$C4,$05              ;
                db $C4,$05,$CA,$05,$C6,$05,$DA,$05              ;
                db $C4,$05,$C4,$05,$C7,$05,$E4,$05              ;
                db $C4,$05,$C6,$05,$C4,$05,$E5,$05              ;
                db $E8,$05,$E9,$05,$F8,$05,$F9,$05              ;
                db $EA,$05,$EB,$05,$FA,$05,$FB,$05              ;
                db $D4,$05,$CC,$05,$D1,$05,$DC,$05              ;
                db $F5,$05,$C4,$45,$E5,$05,$C4,$45              ;
                db $D6,$05,$D6,$05,$E4,$05,$C6,$05              ;
                db $D6,$05,$D7,$05,$C7,$05,$C7,$05              ;
                db $D5,$05,$CA,$05,$C7,$05,$DA,$05              ;
                db $D5,$05,$D6,$05,$C4,$05,$C6,$05              ;
                db $F4,$05,$E5,$05,$F4,$05,$E5,$05              ;
                db $C4,$05,$C8,$05,$C4,$05,$D8,$05              ;
                db $D6,$05,$D6,$05,$C4,$05,$C6,$05              ;
                db $D6,$05,$D6,$05,$C7,$05,$E4,$05              ;
                db $F4,$05,$D5,$05,$F4,$05,$C6,$05              ;
                db $D6,$05,$D7,$05,$C4,$05,$C4,$05              ;
                db $D4,$05,$D4,$05,$D1,$05,$C1,$05              ;
                db $D4,$05,$CC,$05,$C5,$05,$DC,$05              ;
                db $EC,$05,$ED,$05,$FC,$05,$FD,$05              ;
                db $EE,$05,$EF,$05,$FE,$05,$FF,$05              ;
                db $CD,$05,$D4,$05,$DD,$05,$D4,$05              ;
                db $D4,$05,$D4,$05,$D1,$05,$D1,$05              ;
                db $E5,$05,$F4,$05,$E5,$05,$F4,$05              ;
                db $E5,$05,$E5,$05,$E5,$05,$E5,$05              ;
                db $E5,$05,$E5,$05,$E5,$05,$D5,$05              ;
                db $D6,$05,$D6,$05,$C6,$05,$C7,$05              ;
                db $C4,$05,$C4,$05,$C7,$05,$C7,$05              ;
                db $D6,$05,$D6,$05,$C4,$05,$C4,$05              ;
                db $D5,$05,$D6,$05,$C7,$05,$E4,$05              ;
                db $C7,$05,$CA,$05,$C4,$05,$DA,$05              ;
                db $C4,$05,$CA,$05,$D6,$05,$DA,$05              ;
                db $C6,$05,$CA,$05,$E5,$05,$DA,$05              ;
                db $E5,$05,$C8,$05,$D5,$05,$D8,$05              ;
                db $F5,$05,$E4,$05,$C4,$05,$F4,$05              ;
                db $F5,$05,$C4,$05,$D5,$05,$D6,$05              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $B4,$05,$B5,$05,$B4,$05,$B5,$05              ;
                db $C4,$05,$A7,$05,$C4,$05,$A7,$05              ;
                db $C7,$05,$E4,$05,$D6,$05,$D7,$05              ;
                db $C6,$05,$C7,$05,$D5,$05,$D6,$05              ;
                db $D4,$05,$C7,$05,$D4,$05,$D6,$05              ;
                db $C6,$05,$CA,$05,$D5,$05,$DA,$05              ;
                db $C7,$05,$A7,$05,$D6,$05,$AB,$05              ;
                db $D4,$05,$E4,$05,$D4,$05,$D7,$05              ;
                db $C7,$05,$CA,$05,$D6,$05,$DA,$05              ;
                db $C6,$05,$A7,$05,$D5,$05,$A7,$05              ;
                db $B8,$05,$B9,$05,$A8,$05,$A9,$05              ;
                db $D4,$05,$D4,$05,$D4,$05,$C5,$05              ;
                db $CA,$05,$CB,$05,$A4,$05,$A5,$05              ;
                db $D4,$05,$D4,$05,$D4,$05,$B0,$05              ;
                db $D4,$05,$B6,$05,$C5,$05,$A6,$05              ;
                db $88,$05,$89,$05,$98,$05,$99,$05              ;
                db $8F,$05,$81,$05,$91,$05,$92,$05              ;
                db $8C,$05,$8D,$05,$9C,$05,$9D,$05              ;
                db $8E,$05,$C4,$05,$9E,$05,$C4,$05              ;
                db $C4,$05,$8C,$05,$C4,$05,$9C,$05              ;
                db $8D,$05,$8E,$05,$9D,$05,$9E,$05              ;
                db $C4,$05,$A7,$05,$C4,$05,$B7,$05              ;
                db $D4,$05,$F4,$05,$D4,$05,$F4,$05              ;
                db $A8,$05,$A9,$05,$88,$05,$89,$05              ;
                db $B4,$05,$B5,$05,$86,$05,$87,$05              ;
                db $F5,$05,$C4,$05,$C4,$05,$C4,$05              ;
                db $88,$05,$89,$05,$88,$05,$89,$05              ;
                db $96,$05,$97,$05,$B4,$05,$B5,$05              ;
                db $8A,$05,$AA,$05,$9A,$05,$BA,$05              ;
                db $8B,$05,$8B,$05,$9B,$05,$9B,$05              ;
                db $8B,$05,$8A,$05,$9B,$05,$9A,$05              ;
                db $B6,$05,$B6,$05,$A6,$05,$A6,$05              ;
                db $A7,$05,$A7,$05,$B7,$05,$B7,$05              ;
                db $A7,$05,$A7,$05,$A7,$05,$A7,$05              ;
                db $A7,$05,$AB,$05,$A7,$05,$A7,$05              ;
                db $D4,$05,$8C,$05,$D4,$05,$9C,$05              ;
                db $C6,$05,$A7,$05,$D5,$05,$AB,$05              ;
                db $C7,$05,$A7,$05,$D6,$05,$A7,$05              ;
                db $D4,$05,$B6,$05,$C5,$05,$C5,$05              ;
                db $8E,$05,$F4,$05,$9E,$05,$F4,$05              ;
                db $C4,$05,$C4,$05,$BB,$05,$C4,$05              ;
                db $E8,$05,$AC,$05,$F8,$05,$BC,$05              ;
                db $AD,$05,$EB,$05,$BD,$05,$FB,$05              ;
                db $EC,$05,$AE,$05,$FC,$05,$BE,$05              ;
                db $AF,$05,$EF,$05,$BF,$05,$FF,$05              ;
                db $A7,$05,$A7,$05,$B7,$05,$AB,$05              ;
                db $C4,$45,$CA,$05,$C4,$05,$DA,$05              ;

DATA_13AE41:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8F,$09,$9E,$09,$9F,$09              ;
                db $BE,$00,$BE,$00,$BE,$00,$BE,$00              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$84,$1D,$92,$1D,$94,$1D              ;
                db $85,$1D,$81,$1D,$95,$1D,$91,$1D              ;
                db $83,$1D,$BF,$00,$93,$1D,$BF,$00              ;
                db $BF,$00,$68,$05,$68,$05,$69,$05              ;
                db $6A,$05,$BF,$00,$6B,$05,$6A,$05              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $BF,$00,$BF,$00,$52,$1D,$53,$1D              ;
                db $BF,$00,$45,$1D,$54,$1D,$55,$1D              ;
                db $46,$1D,$47,$1D,$56,$1D,$57,$1D              ;
                db $BF,$00,$87,$1D,$88,$1D,$97,$1D              ;
                db $A5,$1D,$A1,$1D,$B5,$1D,$B1,$1D              ;
                db $A2,$1D,$A4,$1D,$B2,$1D,$B4,$1D              ;
                db $A2,$1D,$86,$1D,$B2,$1D,$96,$1D              ;
                db $BF,$00,$BF,$00,$4A,$1D,$4B,$1D              ;
                db $BF,$00,$BF,$00,$48,$1D,$49,$1D              ;
                db $BF,$00,$BF,$00,$4C,$1D,$4D,$1D              ;
                db $BF,$00,$68,$05,$78,$05,$79,$05              ;
                db $69,$05,$6C,$05,$7A,$05,$7A,$05              ;
                db $6D,$05,$6B,$05,$7B,$05,$7B,$05              ;
                db $6A,$05,$BF,$00,$7C,$05,$7D,$05              ;
                db $60,$1D,$71,$1D,$70,$1D,$71,$1D              ;
                db $62,$1D,$63,$1D,$71,$1D,$73,$1D              ;
                db $70,$1D,$65,$1D,$71,$1D,$75,$1D              ;
                db $66,$1D,$67,$1D,$76,$1D,$77,$1D              ;
                db $98,$1D,$89,$1D,$71,$1D,$99,$1D              ;
                db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D              ;
                db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D              ;
                db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D              ;
                db $AA,$1D,$AB,$1D,$BA,$1D,$BB,$1D              ;
                db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D              ;
                db $AB,$1D,$AE,$1D,$B8,$1D,$BE,$1D              ;
                db $AF,$1D,$AB,$1D,$BF,$1D,$BB,$1D              ;
                db $8C,$1D,$8D,$1D,$9C,$1D,$9D,$1D              ;
                db $5A,$1D,$5B,$1D,$71,$1D,$70,$1D              ;
                db $58,$1D,$59,$1D,$71,$1D,$70,$1D              ;
                db $5C,$1D,$5D,$1D,$71,$1D,$70,$1D              ;
                db $5E,$1D,$5F,$1D,$71,$1D,$70,$1D              ;
                db $70,$1D,$71,$1D,$71,$1D,$70,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$BF,$00,$8E,$05,$BF,$00              ;
                db $61,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$05,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$45,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$61,$05,$BF,$00,$BF,$00              ;
                db $72,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8E,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$72,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$61,$05              ;
                db $BF,$00,$8E,$05,$61,$05,$BF,$00              ;
                db $69,$05,$6C,$05,$6C,$05,$69,$05              ;
                db $6D,$05,$6B,$05,$6B,$05,$6D,$05              ;
                db $5E,$1D,$6E,$1D,$71,$1D,$70,$1D              ;
                db $BF,$00,$45,$1D,$74,$1D,$55,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$64,$1D              ;
                db $AE,$18,$AF,$18,$AE,$18,$AF,$18              ;

DATA_13B029:    db $E8,$05,$E9,$05,$F8,$05,$F9,$05              ;
                db $EA,$05,$EB,$05,$FA,$05,$FB,$05              ;
                db $C0,$05,$C1,$05,$D0,$05,$D1,$05              ;
                db $F6,$05,$F7,$05,$D2,$05,$D3,$05              ;
                db $F4,$05,$F5,$05,$D0,$05,$D1,$05              ;
                db $C2,$05,$E7,$05,$D2,$05,$CB,$05              ;
                db $CC,$05,$C1,$05,$DC,$05,$D1,$05              ;
                db $E0,$05,$E1,$05,$F0,$05,$F1,$05              ;
                db $E2,$05,$E3,$05,$F2,$05,$F3,$05              ;
                db $E2,$05,$E3,$05,$F2,$05,$DB,$05              ;
                db $CD,$05,$E1,$05,$DD,$05,$F1,$05              ;
                db $C8,$05,$C9,$05,$D8,$05,$D9,$05              ;
                db $C4,$05,$C5,$05,$D4,$05,$D5,$05              ;
                db $C6,$05,$C7,$05,$D6,$05,$D7,$05              ;
                db $C0,$1D,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $CE,$05,$C5,$05,$DE,$05,$D5,$05              ;
                db $E4,$05,$E5,$05,$C8,$05,$C9,$05              ;
                db $E5,$05,$E5,$05,$C9,$05,$C9,$05              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $D8,$05,$D9,$05,$D8,$05,$D9,$05              ;
                db $D9,$05,$D9,$05,$D9,$05,$D9,$05              ;
                db $C9,$05,$C9,$05,$D9,$05,$D9,$05              ;
                db $C9,$05,$CA,$05,$D9,$05,$DA,$05              ;
                db $E0,$1D,$E1,$05,$F0,$1D,$F1,$1D              ;
                db $E5,$05,$E6,$05,$C9,$05,$CA,$05              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $D9,$05,$DA,$05,$D9,$05,$DA,$05              ;
                db $C6,$1D,$C7,$1D,$C6,$1D,$D7,$1D              ;
                db $BF,$00,$68,$05,$68,$05,$69,$05              ;
                db $6A,$05,$BF,$00,$6B,$05,$6A,$05              ;
                db $69,$05,$6C,$05,$6C,$05,$6C,$05              ;
                db $6D,$05,$6B,$05,$7B,$05,$7B,$05              ;
                db $C2,$1D,$E7,$1D,$D2,$1D,$CB,$1D              ;
                db $7B,$05,$7B,$05,$7B,$05,$7B,$05              ;
                db $7D,$05,$BF,$00,$7C,$05,$7D,$05              ;
                db $BF,$00,$68,$05,$78,$05,$79,$05              ;
                db $6C,$05,$6C,$05,$7A,$05,$7A,$05              ;
                db $C6,$1D,$E3,$1D,$D6,$1D,$DB,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $6C,$05,$6C,$05,$7A,$05,$7A,$05              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $E0,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $C6,$1D,$C7,$1D,$D6,$1D,$D7,$1D              ;
                db $EC,$1D,$ED,$1D,$FC,$1D,$FD,$1D              ;
                db $EE,$05,$EF,$05,$FE,$05,$FF,$05              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $CF,$05,$E1,$05,$DF,$05,$F1,$05              ;
                db $CF,$05,$C5,$05,$DF,$05,$D5,$05              ;

DATA_13B201:    db $88,$1D,$89,$1D,$98,$1D,$99,$1D              ;
                db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D              ;
                db $48,$1D,$49,$1D,$58,$1D,$59,$1D              ;
                db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D              ;
                db $84,$1D,$85,$1D,$84,$1D,$95,$1D              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $87,$1D,$8B,$1D,$97,$1D,$9B,$1D              ;
                db $88,$1D,$8C,$1D,$98,$1D,$9C,$1D              ;
                db $49,$1D,$4A,$1D,$59,$1D,$5A,$1D              ;
                db $4B,$1D,$84,$1D,$5B,$1D,$84,$1D              ;
                db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D              ;
                db $AA,$1D,$AB,$1D,$BA,$1D,$BB,$1D              ;
                db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D              ;
                db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D              ;
                db $84,$1D,$86,$1D,$84,$1D,$96,$1D              ;
                db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D              ;
                db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D              ;
                db $A4,$1D,$AB,$1D,$B4,$1D,$BB,$1D              ;
                db $A8,$1D,$8D,$1D,$B8,$1D,$9D,$1D              ;
                db $4D,$1D,$4E,$1D,$5D,$1D,$5E,$1D              ;
                db $4F,$1D,$84,$1D,$5F,$1D,$84,$1D              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$83,$1D,$92,$1D,$93,$1D              ;
                db $84,$1D,$A5,$1D,$84,$1D,$B5,$1D              ;
                db $A0,$1D,$A1,$1D,$B0,$1D,$B1,$1D              ;
                db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D              ;
                db $A6,$1D,$8B,$1D,$B6,$1D,$9B,$1D              ;
                db $88,$1D,$80,$1D,$98,$1D,$90,$1D              ;
                db $81,$1D,$82,$1D,$91,$1D,$92,$1D              ;
                db $83,$1D,$84,$1D,$93,$1D,$84,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $42,$1D,$43,$1D,$52,$1D,$53,$1D              ;
                db $40,$1D,$41,$1D,$46,$1D,$47,$1D              ;
                db $44,$1D,$45,$1D,$54,$1D,$55,$1D              ;
                db $60,$1D,$61,$1D,$70,$1D,$71,$1D              ;
                db $62,$1D,$63,$1D,$72,$1D,$73,$1D              ;
                db $60,$1D,$61,$1D,$66,$1D,$67,$1D              ;
                db $64,$1D,$65,$1D,$74,$1D,$75,$1D              ;
                db $56,$1D,$57,$1D,$70,$1D,$71,$1D              ;
                db $76,$1D,$77,$1D,$50,$1D,$51,$1D              ;
                db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D              ;

DATA_13B351:    db $40,$05,$41,$05,$50,$05,$51,$05              ;
                db $42,$05,$43,$05,$52,$05,$53,$05              ;
                db $60,$05,$61,$05,$70,$05,$71,$05              ;
                db $62,$05,$63,$05,$72,$05,$73,$05              ;
                db $44,$05,$45,$05,$54,$05,$55,$05              ;
                db $46,$05,$47,$05,$56,$05,$57,$05              ;
                db $64,$05,$65,$05,$74,$05,$75,$05              ;
                db $66,$05,$67,$05,$76,$05,$77,$05              ;
                db $6C,$05,$6D,$05,$7C,$05,$7D,$05              ;
                db $6E,$05,$6F,$05,$7E,$05,$7F,$05              ;
                db $68,$05,$69,$05,$78,$05,$79,$05              ;
                db $6A,$05,$6B,$05,$7A,$05,$7B,$05              ;
                db $48,$05,$49,$05,$58,$05,$59,$05              ;
                db $4A,$05,$4B,$05,$5A,$05,$5B,$05              ;
                db $4C,$05,$4D,$05,$5C,$05,$5D,$05              ;
                db $4E,$05,$4F,$05,$5E,$05,$5F,$05              ;

DATA_13B3D1:    db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$83,$1D,$92,$1D,$93,$1D              ;
                db $84,$1D,$85,$1D,$94,$1D,$95,$1D              ;
                db $86,$1D,$87,$1D,$96,$1D,$97,$1D              ;
                db $A0,$1D,$A1,$1D,$B0,$1D,$B1,$1D              ;
                db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D              ;
                db $A4,$1D,$A5,$1D,$B4,$1D,$B5,$1D              ;
                db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$41,$1D              ;
                db $BF,$00,$73,$1D,$42,$1D,$43,$1D              ;
                db $88,$1D,$89,$1D,$44,$1D,$44,$1D              ;
                db $8A,$1D,$8B,$1D,$44,$1D,$44,$1D              ;
                db $8C,$1D,$8D,$1D,$59,$1D,$5A,$1D              ;
                db $8E,$1D,$8F,$1D,$59,$1D,$5A,$1D              ;
                db $73,$5D,$BF,$00,$45,$1D,$46,$1D              ;
                db $BF,$00,$BF,$00,$47,$1D,$BF,$00              ;
                db $50,$1D,$51,$1D,$60,$1D,$61,$1D              ;
                db $52,$1D,$53,$1D,$62,$1D,$64,$1D              ;
                db $53,$1D,$54,$1D,$63,$1D,$64,$1D              ;
                db $55,$1D,$56,$1D,$65,$1D,$66,$1D              ;
                db $57,$1D,$58,$1D,$67,$1D,$68,$1D              ;
                db $BF,$00,$6A,$1D,$42,$1D,$43,$1D              ;
                db $6A,$5D,$BF,$00,$45,$1D,$46,$1D              ;
                db $70,$1D,$71,$1D,$49,$1D,$4A,$1D              ;
                db $72,$1D,$71,$1D,$4B,$1D,$4A,$1D              ;
                db $75,$1D,$76,$1D,$4C,$1D,$4D,$1D              ;
                db $77,$1D,$78,$1D,$4E,$1D,$4F,$1D              ;
                db $49,$1D,$71,$1D,$49,$1D,$4A,$1D              ;
                db $4C,$1D,$4D,$1D,$4C,$1D,$4D,$1D              ;
                db $4E,$1D,$4F,$1D,$4E,$1D,$4F,$1D              ;
                db $BF,$00,$69,$1D,$BF,$00,$5C,$1D              ;
                db $83,$1D,$84,$1D,$5D,$1D,$5E,$1D              ;
                db $69,$5D,$BF,$00,$5F,$1D,$BF,$00              ;
                db $BF,$00,$6C,$1D,$BF,$00,$7C,$1D              ;
                db $6D,$1D,$6E,$1D,$7D,$1D,$7E,$1D              ;
                db $6F,$1D,$BF,$00,$7F,$1D,$BF,$00              ;
                db $6B,$1D,$6B,$5D,$44,$1D,$44,$1D              ;
                db $BF,$00,$79,$1D,$42,$1D,$43,$1D              ;
                db $8B,$1D,$8C,$1D,$44,$1D,$59,$1D              ;
                db $7A,$1D,$BF,$00,$5A,$1D,$46,$1D              ;
                db $98,$0D,$99,$0D,$A8,$0D,$A9,$0D              ;
                db $9A,$0D,$9B,$0D,$AA,$0D,$AB,$0D              ;
                db $B2,$0C,$B3,$0C,$BF,$00,$BF,$00              ;
                db $B4,$0C,$B6,$0C,$B5,$0C,$B7,$0C              ;
                db $B8,$0C,$BF,$00,$B9,$0C,$BF,$00              ;
                db $BF,$00,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$E5,$1D,$D3,$1D              ;
                db $C4,$1D,$C5,$1D,$D4,$1D,$D5,$1D              ;
                db $C6,$1D,$BF,$00,$D6,$1D,$D7,$1D              ;
                db $E0,$1D,$D3,$1D,$F0,$1D,$D5,$1D              ;
                db $D4,$1D,$D5,$1D,$E4,$1D,$E5,$1D              ;
                db $E4,$1D,$E5,$1D,$D3,$1D,$D4,$1D              ;
                db $E6,$1D,$E7,$1D,$D5,$1D,$F7,$1D              ;
                db $BF,$00,$C1,$05,$D0,$05,$D1,$05              ;
                db $C2,$05,$C3,$05,$E5,$05,$D3,$05              ;
                db $C8,$05,$C9,$05,$D4,$05,$D5,$05              ;
                db $CA,$05,$D4,$1D,$DA,$05,$DB,$05              ;
                db $D5,$1D,$E4,$1D,$E5,$1D,$D3,$1D              ;
                db $E5,$1D,$E3,$1D,$D4,$1D,$F3,$1D              ;
                db $E1,$1D,$E5,$1D,$F1,$1D,$D4,$1D              ;
                db $D3,$1D,$D4,$1D,$D5,$1D,$E4,$1D              ;
                db $D5,$1D,$F8,$05,$FB,$05,$FC,$05              ;
                db $F9,$05,$FA,$05,$E5,$05,$D3,$05              ;
                db $C4,$05,$C5,$05,$D4,$05,$D5,$05              ;
                db $C6,$05,$BF,$00,$D6,$05,$D7,$05              ;
                db $E0,$05,$D3,$05,$F0,$05,$D5,$05              ;
                db $D4,$05,$D5,$05,$E4,$05,$E5,$05              ;
                db $E4,$05,$E5,$05,$D3,$05,$D4,$05              ;
                db $E6,$05,$EB,$05,$D5,$05,$CB,$05              ;
                db $EC,$05,$D5,$1D,$D8,$1D,$E5,$1D              ;
                db $E4,$1D,$F4,$1D,$D3,$1D,$F5,$1D              ;
                db $D2,$1D,$E4,$1D,$E2,$1D,$D3,$1D              ;
                db $E5,$1D,$D3,$1D,$D4,$1D,$D5,$1D              ;
                db $EA,$05,$D3,$05,$C7,$05,$D5,$05              ;
                db $E6,$05,$E7,$05,$D5,$05,$F7,$05              ;
                db $E1,$05,$E5,$05,$F1,$05,$D4,$05              ;
                db $D3,$05,$D4,$05,$D5,$05,$E4,$05              ;
                db $D5,$05,$E4,$05,$E5,$05,$D3,$05              ;
                db $E5,$05,$E3,$05,$D4,$05,$F3,$05              ;
                db $E8,$1D,$D4,$1D,$D9,$1D,$E4,$1D              ;
                db $D5,$1D,$F6,$1D,$E5,$1D,$E3,$1D              ;
                db $F2,$1D,$D5,$1D,$E1,$1D,$E5,$1D              ;
                db $D2,$05,$E4,$05,$E2,$05,$D3,$05              ;
                db $E5,$05,$D3,$05,$D4,$05,$D5,$05              ;
                db $E4,$05,$F4,$05,$D3,$05,$F5,$05              ;
                db $E9,$1D,$D3,$1D,$CC,$1D,$D5,$1D              ;
                db $D4,$1D,$F3,$1D,$E4,$1D,$F4,$1D              ;
                db $F1,$1D,$D4,$1D,$D2,$1D,$E4,$1D              ;
                db $C0,$1D,$C5,$1D,$CC,$1D,$D5,$1D              ;
                db $F2,$05,$D5,$05,$E1,$05,$E5,$05              ;
                db $D5,$05,$F6,$05,$E5,$05,$E3,$05              ;
                db $DC,$1D,$E5,$1D,$E8,$1D,$D4,$1D              ;
                db $D3,$1D,$F5,$1D,$D5,$1D,$F6,$1D              ;
                db $E2,$1D,$D3,$1D,$F2,$1D,$D5,$1D              ;
                db $BF,$00,$C1,$11,$D0,$11,$D1,$11              ;
                db $C2,$11,$C3,$11,$E5,$11,$D3,$11              ;
                db $C4,$11,$C5,$11,$D4,$11,$D5,$11              ;
                db $C6,$11,$BF,$00,$D6,$11,$D7,$11              ;
                db $F1,$05,$D4,$05,$D2,$05,$E4,$05              ;
                db $D4,$05,$F3,$05,$E4,$05,$F4,$05              ;
                db $D9,$1D,$E4,$1D,$E9,$1D,$D3,$1D              ;
                db $E0,$11,$D3,$11,$F0,$11,$D5,$11              ;
                db $D4,$11,$D5,$11,$E4,$11,$E5,$11              ;
                db $E4,$11,$E5,$11,$D3,$11,$D4,$11              ;
                db $E6,$11,$E7,$11,$D5,$11,$F7,$11              ;
                db $E2,$05,$D3,$05,$F2,$05,$D5,$05              ;
                db $D3,$05,$F5,$05,$D5,$05,$F6,$05              ;
                db $CC,$1D,$D5,$1D,$DC,$1D,$E5,$1D              ;
                db $E1,$11,$E5,$11,$F1,$11,$D4,$11              ;
                db $D3,$11,$D4,$11,$D5,$11,$E4,$11              ;
                db $D5,$11,$E4,$11,$E5,$11,$D3,$11              ;
                db $E5,$11,$E3,$11,$D4,$11,$F3,$11              ;
                db $D2,$11,$E4,$11,$E2,$11,$D3,$11              ;
                db $E5,$11,$D3,$11,$D4,$11,$D5,$11              ;
                db $E4,$11,$F4,$11,$D3,$11,$F5,$11              ;
                db $F2,$11,$D5,$11,$E1,$11,$E5,$11              ;
                db $D5,$11,$F6,$11,$E5,$11,$E3,$11              ;
                db $F1,$11,$D4,$11,$D2,$11,$E4,$11              ;
                db $D4,$11,$F3,$11,$E4,$11,$F4,$11              ;
                db $D3,$1D,$D4,$1D,$D5,$1D,$F8,$05              ;
                db $D5,$1D,$F6,$1D,$F9,$05,$FA,$05              ;
                db $BF,$00,$BF,$00,$C4,$05,$C5,$05              ;
                db $BF,$00,$BF,$00,$C6,$05,$BF,$00              ;
                db $FB,$05,$FC,$05,$EA,$05,$D3,$05              ;
                db $D6,$05,$D7,$05,$E6,$05,$E7,$05              ;
                db $C7,$05,$D5,$05,$E1,$05,$E5,$05              ;
                db $D5,$05,$F7,$05,$E5,$05,$E3,$05              ;

DATA_13B7C9:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8F,$09,$9E,$09,$9F,$09              ;
                db $BF,$00,$BF,$00,$D0,$1D,$D1,$1D              ;
                db $C0,$1D,$C1,$1D,$D2,$1D,$D3,$1D              ;
                db $C2,$1D,$C3,$1D,$F3,$1D,$E0,$1D              ;
                db $BF,$00,$BF,$00,$E1,$1D,$E2,$1D              ;
                db $BF,$00,$BF,$00,$E4,$1D,$E5,$1D              ;
                db $C6,$1D,$C7,$1D,$E6,$1D,$F9,$1D              ;
                db $C8,$1D,$C9,$1D,$D9,$1D,$D5,$1D              ;
                db $BF,$00,$BF,$00,$D7,$1D,$D8,$1D              ;
                db $BF,$00,$BF,$00,$C0,$1D,$C1,$1D              ;
                db $BF,$00,$BF,$00,$C2,$1D,$C3,$1D              ;
                db $D0,$1D,$D1,$1D,$D2,$1D,$F3,$1D              ;
                db $D2,$1D,$F3,$1D,$F3,$1D,$E3,$1D              ;
                db $F3,$1D,$F3,$1D,$F3,$1D,$F3,$1D              ;
                db $E3,$1D,$F3,$1D,$F3,$1D,$F3,$1D              ;
                db $F0,$1D,$F1,$1D,$F3,$1D,$F0,$1D              ;
                db $E7,$1D,$E8,$1D,$F2,$1D,$F1,$1D              ;
                db $E9,$1D,$D9,$1D,$E7,$1D,$E8,$1D              ;
                db $D9,$1D,$F9,$1D,$E9,$1D,$D9,$1D              ;
                db $D5,$1D,$D6,$1D,$D9,$1D,$D5,$1D              ;
                db $D7,$1D,$D8,$1D,$F4,$1D,$F5,$1D              ;
                db $D2,$1D,$D3,$1D,$F3,$1D,$F3,$1D              ;
                db $F3,$1D,$E0,$1D,$F3,$1D,$F3,$1D              ;
                db $E1,$1D,$E2,$1D,$F0,$1D,$F1,$1D              ;
                db $E1,$1D,$E2,$1D,$F2,$1D,$F1,$1D              ;
                db $D0,$1D,$D1,$1D,$F6,$1D,$F7,$1D              ;
                db $D2,$1D,$F3,$1D,$F8,$1D,$F3,$1D              ;
                db $F3,$1D,$D3,$1D,$F3,$1D,$F3,$1D              ;
                db $F3,$1D,$F3,$1D,$F3,$1D,$E3,$1D              ;
                db $F3,$1D,$F3,$1D,$D3,$1D,$F3,$1D              ;
                db $F0,$1D,$F2,$1D,$F3,$1D,$F0,$1D              ;
                db $F2,$1D,$F1,$1D,$F2,$1D,$F2,$1D              ;
                db $D4,$1D,$C5,$1D,$F6,$1D,$F7,$1D              ;
                db $D2,$1D,$F3,$1D,$F8,$1D,$E3,$1D              ;
                db $E4,$1D,$E5,$1D,$E6,$1D,$D9,$1D              ;
                db $E6,$1D,$D9,$1D,$F9,$1D,$D9,$1D              ;
                db $D9,$1D,$D9,$1D,$D9,$1D,$D9,$1D              ;
                db $D9,$1D,$F9,$1D,$D9,$1D,$D9,$1D              ;
                db $D2,$1D,$F3,$1D,$F3,$1D,$D3,$1D              ;
                db $F3,$1D,$E3,$1D,$F3,$1D,$F3,$1D              ;
                db $F3,$1D,$F0,$1D,$F3,$1D,$F3,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$BF,$00,$8E,$05,$BF,$00              ;
                db $61,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$05,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$45,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$61,$05,$BF,$00,$BF,$00              ;
                db $72,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8E,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$72,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$61,$05              ;
                db $BF,$00,$8E,$05,$61,$05,$BF,$00              ;
                db $F2,$1D,$F1,$1D,$F0,$1D,$F2,$1D              ;
                db $F2,$1D,$F2,$1D,$F0,$1D,$F2,$1D              ;
                db $F6,$1D,$F7,$1D,$F2,$1D,$F1,$1D              ;
                db $F8,$1D,$F3,$1D,$F6,$1D,$F7,$1D              ;
                db $F3,$1D,$F3,$1D,$F8,$1D,$F3,$1D              ;
                db $F2,$1D,$F2,$1D,$F2,$1D,$F2,$1D              ;
                db $D9,$1D,$D9,$1D,$E9,$1D,$D9,$1D              ;
                db $F9,$1D,$D9,$1D,$D9,$1D,$D9,$1D              ;
                db $D9,$1D,$D9,$1D,$C4,$1D,$C5,$1D              ;
                db $C4,$1D,$C5,$1D,$D2,$1D,$F3,$1D              ;
                db $D2,$1D,$F3,$1D,$F3,$1D,$F3,$1D              ;
                db $D3,$1D,$F3,$1D,$F3,$1D,$F3,$1D              ;

DATA_13B9E1:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $00,$1D,$01,$1D,$10,$1D,$C2,$1D              ;
                db $C7,$1D,$C8,$1D,$C2,$1D,$C2,$1D              ;
                db $C9,$1D,$CA,$1D,$C2,$1D,$CB,$1D              ;
                db $20,$1D,$C2,$1D,$30,$1D,$31,$1D              ;
                db $C2,$1D,$C2,$1D,$32,$1D,$33,$1D              ;
                db $C2,$1D,$CC,$1D,$CE,$1D,$CD,$1D              ;
                db $C3,$1D,$C2,$1D,$C2,$1D,$C2,$1D              ;
                db $C2,$1D,$C0,$1D,$C2,$1D,$C2,$1D              ;
                db $C2,$1D,$C2,$1D,$C4,$1D,$C2,$1D              ;
                db $C2,$1D,$C2,$1D,$C2,$1D,$C1,$1D              ;
                db $CF,$1D,$D0,$1D,$D1,$1D,$C2,$1D              ;
                db $08,$1D,$09,$1D,$C2,$1D,$C2,$1D              ;
                db $0A,$1D,$C5,$1D,$C2,$1D,$C6,$1D              ;
                db $26,$1D,$C2,$1D,$36,$1D,$37,$1D              ;
                db $C2,$1D,$C2,$1D,$38,$1D,$39,$1D              ;
                db $C2,$1D,$2B,$1D,$3A,$1D,$3B,$1D              ;
                db $14,$1D,$C2,$1D,$24,$1D,$C2,$1D              ;
                db $C2,$1D,$17,$1D,$C2,$1D,$27,$1D              ;
                db $18,$1D,$C2,$1D,$28,$1D,$C2,$1D              ;
                db $C2,$1D,$19,$1D,$C2,$1D,$29,$1D              ;
                db $C2,$1D,$C2,$1D,$C2,$1D,$C2,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$41,$1D              ;
                db $BF,$00,$41,$1D,$42,$1D,$43,$1D              ;
                db $42,$1D,$42,$5D,$44,$1D,$44,$5D              ;
                db $41,$5D,$BF,$00,$43,$5D,$42,$5D              ;
                db $BF,$00,$BF,$00,$41,$5D,$BF,$00              ;
                db $42,$1D,$43,$1D,$44,$1D,$45,$1D              ;
                db $44,$1D,$45,$1D,$40,$1D,$40,$1D              ;
                db $46,$1D,$47,$1D,$56,$1D,$57,$1D              ;
                db $45,$5D,$44,$5D,$40,$1D,$40,$5D              ;
                db $43,$5D,$42,$5D,$45,$5D,$44,$5D              ;
                db $BF,$00,$41,$1D,$50,$1D,$51,$1D              ;
                db $42,$1D,$43,$1D,$52,$1D,$53,$1D              ;
                db $44,$1D,$45,$1D,$54,$1D,$54,$1D              ;
                db $5E,$1D,$5E,$1D,$54,$1D,$54,$1D              ;
                db $5E,$1D,$5E,$1D,$54,$5D,$54,$5D              ;
                db $45,$5D,$44,$5D,$54,$5D,$54,$5D              ;
                db $43,$5D,$42,$5D,$53,$5D,$52,$5D              ;
                db $41,$5D,$BF,$00,$51,$5D,$50,$5D              ;
                db $48,$1D,$49,$1D,$BF,$00,$4C,$1D              ;
                db $4A,$1D,$4B,$1D,$4D,$1D,$BF,$00              ;
                db $BF,$00,$48,$1D,$BF,$00,$BF,$00              ;
                db $49,$1D,$4A,$1D,$4C,$1D,$4D,$1D              ;
                db $4B,$1D,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$66,$5D,$BF,$00,$BF,$00              ;
                db $64,$1D,$65,$1D,$73,$1D,$74,$1D              ;
                db $B7,$1D,$C2,$1D,$C2,$1D,$C2,$1D              ;
                db $BF,$00,$5C,$1D,$BF,$00,$5C,$1D              ;
                db $5D,$1D,$65,$1D,$5D,$1D,$74,$1D              ;
                db $66,$1D,$BF,$00,$BF,$00,$BF,$00              ;
                db $5C,$1D,$5D,$1D,$5C,$1D,$5D,$1D              ;
                db $65,$1D,$66,$1D,$74,$1D,$BF,$00              ;
                db $73,$1D,$74,$1D,$73,$1D,$74,$1D              ;
                db $5D,$1D,$74,$1D,$5D,$1D,$74,$1D              ;
                db $74,$1D,$BF,$00,$74,$1D,$BF,$00              ;
                db $C7,$1D,$5C,$1D,$C2,$1D,$5C,$1D              ;
                db $A8,$05,$A9,$05,$B8,$05,$B9,$05              ;
                db $C9,$1D,$80,$1D,$C2,$1D,$90,$1D              ;
                db $74,$1D,$BF,$00,$74,$1D,$BF,$00              ;
                db $C2,$1D,$5C,$1D,$C2,$1D,$5C,$1D              ;
                db $A0,$05,$A1,$05,$B0,$05,$B1,$05              ;
                db $5B,$05,$5A,$05,$4E,$05,$4F,$05              ;
                db $A2,$05,$A3,$05,$B2,$05,$B3,$05              ;
                db $A4,$05,$A5,$05,$B4,$05,$B5,$05              ;
                db $81,$1D,$74,$1D,$C2,$1D,$92,$1D              ;
                db $91,$1D,$94,$1D,$C2,$1D,$C2,$1D              ;
                db $99,$1D,$CA,$1D,$C2,$1D,$CB,$1D              ;
                db $BF,$00,$5C,$1D,$BF,$00,$58,$1D              ;
                db $5D,$1D,$74,$1D,$59,$1D,$74,$1D              ;
                db $7D,$05,$7E,$05,$6F,$05,$7F,$05              ;
                db $4F,$05,$4E,$05,$4E,$05,$4F,$05              ;
                db $83,$05,$84,$05,$93,$05,$C2,$1D              ;
                db $85,$05,$86,$05,$C2,$1D,$C2,$1D              ;
                db $87,$05,$88,$05,$C2,$1D,$98,$05              ;
                db $A6,$05,$4E,$05,$B6,$05,$4F,$05              ;
                db $8B,$05,$8C,$05,$C2,$1D,$C2,$1D              ;
                db $89,$05,$8A,$05,$C2,$1D,$9A,$05              ;
                db $95,$05,$96,$05,$97,$05,$C2,$1D              ;
                db $AE,$05,$AF,$05,$BE,$05,$BF,$05              ;
                db $9B,$05,$9C,$05,$C2,$1D,$C2,$1D              ;
                db $02,$1D,$03,$1D,$C2,$1D,$75,$1D              ;
                db $04,$1D,$AC,$1D,$76,$1D,$43,$1D              ;
                db $C2,$1D,$C0,$1D,$C2,$1D,$75,$1D              ;
                db $C3,$1D,$75,$1D,$76,$1D,$43,$1D              ;
                db $76,$1D,$43,$1D,$44,$1D,$45,$1D              ;
                db $C2,$1D,$75,$1D,$55,$1D,$51,$1D              ;
                db $76,$1D,$43,$1D,$52,$1D,$53,$1D              ;
                db $82,$1D,$49,$1D,$C2,$1D,$4C,$1D              ;
                db $4A,$1D,$68,$1D,$4D,$1D,$70,$1D              ;
                db $5F,$1D,$5F,$1D,$40,$1D,$40,$1D              ;
                db $67,$1D,$49,$1D,$40,$1D,$4C,$1D              ;
                db $5D,$1D,$70,$1D,$5D,$1D,$70,$1D              ;
                db $40,$1D,$40,$1D,$40,$1D,$40,$1D              ;
                db $40,$1D,$AA,$1D,$40,$1D,$BA,$1D              ;
                db $AB,$1D,$AB,$5D,$BB,$1D,$BC,$1D              ;
                db $AD,$1D,$40,$1D,$BD,$1D,$40,$1D              ;
                db $40,$1D,$5C,$1D,$40,$1D,$5C,$1D              ;
                db $5D,$1D,$BF,$00,$5D,$1D,$BF,$00              ;
                db $5B,$05,$5C,$1D,$4E,$05,$5C,$1D              ;
                db $40,$1D,$61,$1D,$40,$1D,$61,$1D              ;
                db $62,$1D,$79,$1D,$72,$1D,$7B,$1D              ;
                db $7A,$1D,$40,$1D,$7C,$1D,$40,$1D              ;
                db $4F,$05,$5C,$1D,$4E,$05,$58,$1D              ;
                db $8D,$1D,$8E,$1D,$9D,$1D,$C2,$1D              ;
                db $77,$1D,$78,$1D,$C2,$1D,$C2,$1D              ;
                db $9E,$1D,$8F,$1D,$C2,$1D,$9F,$1D              ;
                db $6A,$1D,$6A,$1D,$6A,$1D,$6A,$1D              ;
                db $6B,$1D,$6E,$1D,$6A,$1D,$6D,$1D              ;
                db $40,$1D,$40,$1D,$6E,$1D,$40,$1D              ;
                db $40,$1D,$5C,$1D,$40,$1D,$58,$1D              ;
                db $5D,$1D,$BF,$00,$59,$1D,$BF,$00              ;

DATA_13BDB1:    db $6E,$05,$6F,$05,$46,$05,$46,$05              ;
                db $7E,$05,$7F,$05,$8E,$05,$8F,$05              ;
                db $6E,$05,$6F,$05,$47,$05,$46,$05              ;
                db $46,$05,$46,$05,$56,$05,$89,$05              ;
                db $46,$05,$46,$05,$56,$05,$56,$05              ;
                db $44,$05,$45,$05,$54,$05,$55,$05              ;
                db $47,$05,$46,$05,$47,$05,$46,$05              ;
                db $46,$05,$46,$05,$46,$05,$46,$05              ;
                db $47,$05,$46,$05,$57,$05,$89,$05              ;
                db $66,$05,$67,$05,$76,$05,$76,$05              ;
                db $47,$05,$46,$05,$57,$05,$56,$05              ;
                db $87,$05,$88,$05,$97,$05,$98,$05              ;
                db $88,$45,$87,$45,$98,$45,$97,$45              ;
                db $66,$05,$66,$05,$77,$05,$76,$05              ;
                db $66,$05,$66,$05,$76,$05,$76,$05              ;
                db $76,$05,$76,$05,$76,$05,$76,$05              ;
                db $76,$05,$76,$05,$BB,$05,$BC,$05              ;
                db $60,$05,$61,$05,$70,$05,$71,$05              ;
                db $62,$05,$63,$05,$72,$05,$73,$05              ;
                db $63,$45,$62,$45,$73,$45,$72,$45              ;
                db $61,$45,$60,$45,$71,$45,$70,$45              ;
                db $77,$05,$76,$05,$77,$05,$76,$05              ;
                db $8B,$05,$8C,$05,$9B,$05,$9C,$05              ;
                db $8D,$05,$76,$05,$76,$05,$76,$05              ;
                db $80,$05,$81,$05,$90,$05,$91,$05              ;
                db $82,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$82,$45,$BF,$00,$BF,$00              ;
                db $81,$45,$80,$45,$91,$45,$90,$45              ;
                db $64,$05,$65,$05,$74,$05,$75,$05              ;
                db $99,$05,$9A,$05,$A9,$05,$AA,$05              ;
                db $A0,$05,$A1,$05,$B0,$05,$B1,$05              ;
                db $A1,$45,$A0,$45,$B1,$45,$B0,$45              ;
                db $86,$05,$65,$05,$96,$05,$75,$05              ;
                db $74,$05,$75,$05,$6C,$05,$6D,$05              ;
                db $B9,$05,$BA,$05,$7C,$05,$7D,$05              ;
                db $A2,$05,$A3,$05,$B2,$05,$B3,$05              ;
                db $A3,$45,$A2,$45,$B3,$45,$B2,$05              ;
                db $A6,$05,$75,$05,$86,$05,$6D,$05              ;
                db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D              ;
                db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D              ;
                db $43,$1D,$53,$1D,$53,$1D,$51,$1D              ;
                db $48,$1D,$49,$1D,$78,$1D,$79,$1D              ;
                db $4A,$1D,$4B,$1D,$7A,$1D,$7B,$1D              ;
                db $43,$1D,$53,$1D,$52,$1D,$51,$1D              ;
                db $43,$1D,$53,$1D,$50,$1D,$51,$1D              ;
                db $43,$1D,$53,$1D,$50,$1D,$43,$1D              ;
                db $43,$1D,$53,$1D,$50,$1D,$40,$1D              ;
                db $43,$1D,$53,$1D,$41,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $68,$1D,$69,$1D,$58,$1D,$59,$1D              ;
                db $6A,$1D,$6B,$1D,$5A,$1D,$5B,$1D              ;
                db $42,$1D,$41,$1D,$52,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$41,$1D,$40,$1D              ;
                db $40,$1D,$41,$1D,$53,$1D,$43,$1D              ;
                db $40,$1D,$41,$1D,$53,$1D,$51,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$50,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$43,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$40,$1D              ;
                db $40,$1D,$41,$1D,$41,$1D,$43,$1D              ;
                db $40,$1D,$41,$1D,$41,$1D,$51,$1D              ;
                db $51,$1D,$50,$1D,$53,$1D,$51,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$E4,$1D              ;
                db $40,$1D,$41,$1D,$E5,$1D,$D4,$1D              ;
                db $43,$1D,$53,$1D,$D5,$1D,$51,$1D              ;
                db $C4,$1D,$F4,$1D,$D0,$1D,$EA,$1D              ;
                db $C7,$1D,$C7,$5D,$FA,$1D,$FB,$1D              ;
                db $F4,$5D,$C5,$1D,$EA,$5D,$F0,$1D              ;
                db $40,$1D,$41,$1D,$C8,$1D,$C9,$1D              ;
                db $42,$1D,$41,$1D,$52,$1D,$E7,$1D              ;
                db $43,$1D,$53,$1D,$E6,$1D,$E7,$1D              ;
                db $40,$1D,$41,$1D,$C8,$1D,$F8,$1D              ;
                db $C0,$1D,$EA,$1D,$D0,$1D,$EA,$1D              ;
                db $C7,$1D,$C7,$5D,$C7,$1D,$C7,$5D              ;
                db $EA,$5D,$E0,$1D,$EA,$5D,$F0,$1D              ;
                db $D8,$1D,$D9,$1D,$E8,$1D,$E9,$1D              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $F6,$1D,$F7,$1D,$52,$1D,$51,$1D              ;
                db $F6,$1D,$F7,$1D,$41,$1D,$51,$1D              ;
                db $D8,$1D,$F9,$1D,$E8,$1D,$E9,$1D              ;
                db $40,$1D,$C1,$1D,$41,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $C7,$1D,$C7,$5D,$D3,$1D,$D3,$5D              ;
                db $C3,$5D,$F5,$1D,$D3,$5D,$D2,$5D              ;
                db $C1,$5D,$41,$1D,$D1,$5D,$51,$1D              ;
                db $C6,$1D,$C6,$1D,$D6,$1D,$D7,$1D              ;
                db $CA,$1D,$79,$1D,$DA,$1D,$79,$1D              ;
                db $7A,$1D,$7B,$1D,$7A,$1D,$7B,$1D              ;
                db $CB,$1D,$C6,$1D,$DB,$1D,$D6,$1D              ;
                db $C6,$1D,$C6,$1D,$D7,$1D,$D6,$1D              ;
                db $C6,$1D,$E1,$1D,$D7,$1D,$F1,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $E3,$1D,$E3,$5D,$F3,$1D,$F3,$5D              ;
                db $E3,$5D,$E2,$5D,$F3,$5D,$F2,$5D              ;
                db $E1,$5D,$C6,$1D,$F1,$5D,$D7,$1D              ;
                db $43,$1D,$53,$1D,$50,$1D,$9E,$1D              ;
                db $AE,$1D,$AF,$1D,$9F,$1D,$43,$1D              ;
                db $42,$1D,$41,$1D,$52,$1D,$43,$1D              ;
                db $40,$1D,$41,$1D,$43,$1D,$9E,$1D              ;
                db $9E,$1D,$9F,$1D,$9F,$1D,$43,$1D              ;
                db $51,$1D,$50,$1D,$50,$1D,$43,$1D              ;
                db $40,$1D,$41,$1D,$53,$1D,$9E,$1D              ;
                db $51,$1D,$50,$1D,$50,$1D,$40,$1D              ;
                db $40,$1D,$41,$1D,$50,$1D,$9E,$1D              ;
                db $43,$1D,$53,$1D,$53,$1D,$43,$1D              ;
                db $40,$1D,$50,$1D,$53,$1D,$51,$1D              ;
                db $51,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $51,$1D,$41,$1D,$53,$1D,$43,$1D              ;
                db $68,$1D,$79,$1D,$78,$1D,$79,$1D              ;
                db $42,$1D,$41,$1D,$52,$1D,$9E,$1D              ;
                db $51,$1D,$50,$1D,$50,$1D,$51,$1D              ;

DATA_13C151:    db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8F,$09,$9E,$09,$9F,$09              ;
                db $40,$1D,$41,$1D,$50,$1D,$51,$1D              ;
                db $42,$1D,$43,$1D,$52,$1D,$53,$1D              ;
                db $44,$1D,$45,$1D,$54,$1D,$55,$1D              ;
                db $46,$1D,$47,$1D,$56,$1D,$57,$1D              ;
                db $4A,$1D,$4B,$1D,$5A,$1D,$5B,$1D              ;
                db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D              ;
                db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D              ;
                db $6C,$1D,$BF,$00,$7C,$1D,$BF,$00              ;
                db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D              ;
                db $BF,$00,$6D,$1D,$60,$1D,$7D,$1D              ;
                db $6E,$1D,$6F,$1D,$7E,$1D,$62,$1D              ;
                db $4E,$1D,$4F,$1D,$74,$1D,$75,$1D              ;
                db $5E,$1D,$5F,$1D,$76,$1D,$77,$1D              ;
                db $58,$1D,$59,$1D,$76,$1D,$77,$1D              ;
                db $48,$1D,$49,$1D,$74,$1D,$75,$1D              ;
                db $66,$1D,$67,$1D,$76,$1D,$77,$1D              ;
                db $64,$1D,$65,$1D,$74,$1D,$75,$1D              ;
                db $8D,$1D,$9D,$1D,$74,$1D,$75,$1D              ;
                db $AD,$1D,$BD,$1D,$76,$1D,$77,$1D              ;
                db $8D,$1D,$4F,$1D,$74,$1D,$75,$1D              ;
                db $70,$1D,$9D,$1D,$74,$1D,$75,$1D              ;
                db $AD,$1D,$71,$1D,$76,$1D,$77,$1D              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D              ;
                db $BF,$1D,$BE,$1D,$BE,$1D,$BF,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$BF,$00,$8E,$05,$BF,$00              ;
                db $61,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$05,$BF,$00              ;
                db $BF,$00,$BF,$00,$72,$45,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$8E,$05              ;
                db $BF,$00,$61,$05,$BF,$00,$BF,$00              ;
                db $72,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $8E,$05,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$8E,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$72,$05,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BF,$00,$61,$05              ;
                db $BF,$00,$8E,$05,$61,$05,$BF,$00              ;

DATA_13C309:    db $8C,$1D,$8D,$1D,$9C,$1D,$9D,$1D              ;
                db $AC,$1D,$AD,$1D,$BC,$1D,$BD,$1D              ;
                db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D              ;
                db $CC,$1D,$CD,$1D,$CC,$1D,$CD,$1D              ;
                db $CE,$1D,$CF,$1D,$CE,$1D,$CF,$1D              ;
                db $DC,$1D,$DD,$1D,$DC,$1D,$DD,$1D              ;
                db $DE,$1D,$DF,$1D,$DE,$1D,$DF,$1D              ;
                db $EC,$1D,$ED,$1D,$EC,$1D,$ED,$1D              ;
                db $ED,$5D,$EC,$5D,$ED,$5D,$EC,$5D              ;
                db $DF,$5D,$DE,$5D,$DF,$5D,$DE,$5D              ;
                db $DD,$5D,$DC,$5D,$DD,$5D,$DC,$5D              ;
                db $CF,$5D,$CE,$5D,$CF,$5D,$CE,$5D              ;
                db $CD,$5D,$CC,$5D,$CD,$5D,$CC,$5D              ;
                db $AF,$5D,$AE,$5D,$BF,$5D,$BE,$5D              ;
                db $AD,$5D,$AC,$5D,$BD,$5D,$BC,$5D              ;
                db $8D,$5D,$8C,$5D,$9D,$5D,$9C,$5D              ;
                db $8E,$1D,$8F,$1D,$9E,$1D,$9F,$1D              ;
                db $8F,$5D,$8E,$5D,$9F,$5D,$9E,$5D              ;
                db $90,$1D,$91,$1D,$A0,$1D,$A1,$1D              ;
                db $91,$5D,$90,$5D,$A1,$5D,$A0,$5D              ;
                db $92,$1D,$93,$1D,$A2,$1D,$A3,$1D              ;
                db $93,$5D,$92,$5D,$A3,$5D,$A2,$5D              ;
                db $B0,$1D,$B1,$1D,$B2,$1D,$B3,$1D              ;
                db $B1,$5D,$B0,$5D,$B3,$5D,$B2,$5D              ;
                db $DE,$1D,$FE,$1D,$FC,$1D,$FD,$1D              ;
                db $FE,$5D,$DE,$5D,$FD,$5D,$FC,$5D              ;
                db $EC,$1D,$FF,$1D,$EC,$1D,$ED,$1D              ;
                db $FF,$5D,$EC,$5D,$ED,$5D,$EC,$5D              ;

DATA_13C3E9:    db $8E,$1D,$8F,$1D,$95,$9D,$96,$9D              ;
                db $88,$1D,$89,$1D,$83,$9D,$84,$9D              ;
                db $BB,$1D,$86,$1D,$85,$1D,$76,$9D              ;
                db $87,$1D,$85,$1D,$77,$9D,$BB,$1D              ;
                db $BB,$1D,$85,$1D,$85,$1D,$BB,$1D              ;
                db $95,$1D,$96,$1D,$8E,$1D,$8F,$1D              ;
                db $83,$1D,$84,$1D,$88,$1D,$89,$1D              ;
                db $BB,$1D,$76,$1D,$BF,$00,$86,$1D              ;
                db $77,$1D,$85,$1D,$87,$1D,$BF,$00              ;
                db $BB,$1D,$85,$1D,$BF,$00,$BB,$1D              ;
                db $BF,$00,$BF,$00,$85,$1D,$BB,$1D              ;
                db $BB,$1D,$85,$1D,$85,$1D,$BF,$00              ;
                db $77,$1D,$85,$1D,$87,$1D,$BB,$1D              ;
                db $8E,$1D,$8F,$1D,$8E,$1D,$8F,$1D              ;
                db $88,$1D,$89,$1D,$88,$1D,$89,$1D              ;
                db $BB,$1D,$86,$1D,$BF,$00,$86,$1D              ;
                db $87,$1D,$BF,$00,$87,$1D,$85,$1D              ;
                db $BF,$00,$BF,$00,$85,$1D,$BF,$00              ;
                db $BB,$1D,$85,$1D,$BF,$00,$BF,$00              ;
                db $87,$1D,$BF,$00,$87,$1D,$BB,$1D              ;
                db $BF,$00,$86,$1D,$BF,$00,$86,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$51,$1D              ;
                db $42,$1D,$43,$1D,$52,$1D,$53,$1D              ;
                db $44,$1D,$45,$1D,$54,$1D,$55,$1D              ;
                db $46,$1D,$47,$1D,$56,$1D,$57,$1D              ;
                db $48,$1D,$49,$1D,$58,$1D,$59,$1D              ;
                db $BF,$00,$BF,$00,$5A,$1D,$BF,$00              ;
                db $87,$1D,$BF,$00,$87,$1D,$BF,$00              ;
                db $BF,$00,$86,$1D,$85,$1D,$86,$1D              ;
                db $60,$1D,$61,$1D,$70,$1D,$71,$1D              ;
                db $62,$1D,$63,$1D,$72,$1D,$73,$1D              ;
                db $64,$1D,$65,$1D,$74,$1D,$75,$1D              ;
                db $66,$1D,$67,$1D,$66,$1D,$67,$1D              ;
                db $68,$1D,$69,$1D,$78,$1D,$79,$1D              ;
                db $6A,$1D,$6B,$1D,$7A,$1D,$7B,$1D              ;
                db $80,$1D,$81,$1D,$90,$1D,$91,$1D              ;
                db $82,$1D,$74,$1D,$92,$1D,$93,$1D              ;
                db $74,$1D,$75,$1D,$94,$1D,$75,$1D              ;
                db $66,$1D,$67,$1D,$66,$1D,$97,$1D              ;
                db $78,$1D,$78,$1D,$98,$1D,$99,$1D              ;
                db $8A,$1D,$8B,$1D,$9A,$1D,$9B,$1D              ;
                db $87,$1D,$85,$1D,$87,$1D,$BF,$00              ;
                db $A0,$1D,$A1,$1D,$A0,$1D,$B1,$1D              ;
                db $A2,$1D,$A3,$1D,$B2,$1D,$B3,$1D              ;
                db $A4,$1D,$A5,$1D,$B4,$1D,$B5,$1D              ;
                db $A6,$1D,$A7,$1D,$B6,$1D,$B7,$1D              ;
                db $A8,$1D,$A9,$1D,$B8,$1D,$B9,$1D              ;
                db $AA,$1D,$AB,$1D,$BA,$1D,$AB,$1D              ;
                db $4C,$1D,$4D,$1D,$5C,$1D,$5D,$1D              ;
                db $4E,$1D,$4F,$1D,$5E,$1D,$5F,$1D              ;
                db $74,$1D,$8D,$1D,$9C,$1D,$9D,$1D              ;
                db $66,$1D,$67,$1D,$9E,$1D,$9F,$1D              ;
                db $78,$1D,$C1,$1D,$D0,$1D,$D1,$1D              ;
                db $C2,$1D,$C3,$1D,$D2,$1D,$D3,$1D              ;
                db $6C,$1D,$6D,$1D,$7C,$1D,$7D,$1D              ;
                db $6E,$1D,$6F,$1D,$7E,$1D,$7F,$1D              ;
                db $6F,$1D,$E1,$1D,$F0,$1D,$F1,$1D              ;
                db $E2,$1D,$E3,$1D,$F2,$1D,$F3,$1D              ;
                db $87,$1D,$BB,$1D,$87,$1D,$BF,$00              ;
                db $85,$1D,$41,$1D,$BF,$00,$BF,$00              ;
                db $40,$1D,$B0,$1D,$50,$1D,$8C,$1D              ;
                db $AC,$1D,$BD,$1D,$BC,$1D,$BC,$1D              ;
                db $AE,$1D,$AF,$1D,$BE,$1D,$BF,$1D              ;
                db $C0,$1D,$4B,$1D,$E0,$1D,$5B,$1D              ;
                db $4A,$1D,$BF,$00,$BF,$00,$BF,$00              ;
                db $85,$1D,$86,$1D,$BF,$00,$86,$1D              ;
                db $87,$1D,$BB,$1D,$87,$1D,$85,$1D              ;
                db $85,$1D,$BF,$00,$BF,$00,$BF,$00              ;
                db $BF,$00,$BF,$00,$BB,$1D,$85,$1D              ;
                db $BF,$00,$BB,$1D,$BB,$1D,$85,$1D              ;
                db $85,$1D,$86,$1D,$BB,$1D,$76,$9D              ;
                db $87,$1D,$BB,$1D,$77,$9D,$85,$1D              ;
                db $85,$1D,$BF,$00,$BB,$1D,$85,$1D              ;
                db $85,$1D,$BB,$1D,$BB,$1D,$85,$1D              ;
                db $87,$1D,$BF,$00,$77,$9D,$85,$1D              ;
                db $85,$1D,$76,$1D,$BB,$1D,$86,$1D              ;
                db $77,$1D,$BB,$1D,$87,$1D,$85,$1D              ;
                db $BF,$00,$BF,$00,$BF,$00,$BF,$00              ;
                db $6F,$1D,$6F,$1D,$6F,$1D,$6F,$1D              ;
          
PNTR_13C661:    dw DATA_13C6AF                                  ;
                dw DATA_13C6BE                                  ;
                dw DATA_13C6DF                                  ;
                dw DATA_13C700                                  ;
                dw DATA_13C711                                  ;
                dw DATA_13C732                                  ;
                dw DATA_13C74B                                  ;
                dw DATA_13C84C                                  ;
                dw DATA_13C865                                  ;
                dw DATA_13C886                                  ;
                dw DATA_13C8A7                                  ;
                dw DATA_13C8C0                                  ;
                dw DATA_13C9C1                                  ;
                dw DATA_13CAC2                                  ;
                dw DATA_13CB23                                  ;
                dw DATA_13CB84                                  ;
                dw DATA_13CB91                                  ;
                dw DATA_13CBAA                                  ;
                dw DATA_13CBB3                                  ;
                dw DATA_13CBBA                                  ;
                dw DATA_13CBBA                                  ;
                dw DATA_13CBEB                                  ;
                dw DATA_13CCEC                                  ;
                dw DATA_13CD0D                                  ;
                dw DATA_13CD2E                                  ;
                dw DATA_13CDBF                                  ;
                dw DATA_13CDD0                                  ;
                dw DATA_13CDE9                                  ;
                dw DATA_13CDF8                                  ;
                dw DATA_13CE13                                  ;
                dw DATA_13CF14                                  ;
                dw DATA_13CF35                                  ;
                dw DATA_13CF56                                  ;
                dw DATA_13D057                                  ;
                dw DATA_13D158                                  ;
                dw DATA_13D259                                  ;
                dw DATA_13D35A                                  ;
                dw DATA_13D43C                                  ;
                dw DATA_13D45D                                  ;

DATA_13C6AF:    db $91,$28,$2E,$31,$34,$35,$34,$35              ;
                db $29,$2F,$32,$35,$34,$35,$34                  ;
 
DATA_13C6BE:    db $01,$00,$02,$00,$02,$00,$02,$00              ;
                db $02,$00,$02,$00,$02,$00,$02,$00              ;
                db $02,$01,$03,$01,$03,$01,$03,$01              ;
                db $03,$01,$03,$01,$03,$01,$03,$01              ;
                db $03                                          ;

DATA_13C6DF:    db $01,$08,$08,$62,$63,$08,$08,$08              ;
                db $08,$08,$62,$63,$08,$08,$08,$08              ;
                db $08,$08,$08,$63,$62,$08,$08,$08              ;
                db $08,$08,$63,$62,$08,$08,$08,$08              ;
                db $08                                          ;

DATA_13C700:    db $81,$12,$26,$29,$29,$29,$29,$29              ;
                db $29,$11,$25,$29,$29,$29,$29,$29              ;
                db $29                                          ;

DATA_13C711:    db $01,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$1F,$23,$1F,$23              ;
                db $1F,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$20,$24,$20,$24              ;
                db $20                                          ;

DATA_13C732:    db $41,$28,$2E,$31,$16,$18,$44,$46              ;
                db $44,$46,$44,$46,$44,$29,$2F,$32              ;
                db $17,$19,$45,$47,$45,$47,$45,$47              ;
                db $45                                          ;

DATA_13C74B:    db $0F,$00,$02,$04,$0E,$02,$0D,$03              ;
                db $05,$07,$00,$02,$04,$01,$03,$05              ;
                db $07,$01,$08,$02,$0D,$03,$05,$00              ;
                db $02,$04,$01,$03,$0C,$02,$04,$06              ;
                db $06,$07,$01,$03,$05,$00,$02,$0D              ;
                db $03,$0C,$02,$04,$01,$03,$05,$07              ;
                db $07,$00,$02,$04,$06,$01,$08,$02              ;
                db $04,$01,$03,$05,$07,$00,$02,$04              ;
                db $06,$01,$03,$0C,$02,$04,$01,$03              ;
                db $0C,$02,$04,$06,$06,$01,$03,$05              ;
                db $07,$06,$0E,$09,$03,$0C,$02,$04              ;
                db $01,$03,$0C,$02,$04,$06,$0E,$02              ;
                db $04,$07,$0F,$03,$05,$0F,$03,$05              ;
                db $07,$00,$09,$03,$05,$07,$0F,$03              ;
                db $05,$08,$02,$04,$0E,$02,$04,$06              ;
                db $06,$01,$03,$05,$00,$02,$04,$06              ;
                db $06,$0D,$03,$0C,$09,$03,$05,$07              ;
                db $00,$02,$04,$06,$01,$03,$05,$07              ;
                db $07,$06,$06,$01,$03,$05,$00,$02              ;
                db $0D,$03,$0C,$02,$04,$0E,$02,$04              ;
                db $06,$00,$02,$04,$0E,$02,$0D,$03              ;
                db $05,$00,$09,$03,$05,$0F,$03,$05              ;
                db $07,$01,$08,$02,$0D,$08,$02,$04              ;
                db $06,$01,$03,$0C,$02,$04,$0E,$02              ;
                db $04,$07,$0F,$08,$02,$0D,$03,$05              ;
                db $00,$02,$04,$01,$03,$05,$0F,$03              ;
                db $05,$00,$02,$0D,$03,$05,$07,$00              ;
                db $09,$03,$05,$07,$00,$02,$04,$06              ;
                db $06,$01,$03,$05,$07,$00,$02,$01              ;
                db $03,$05,$00,$02,$0D,$03,$05,$07              ;
                db $07,$06,$06,$06,$06,$01,$08,$02              ;
                db $04,$06,$01,$03,$05,$00,$02,$04              ;
                db $06                                          ;

DATA_13C84C:    db $41,$15,$15,$15,$15,$15,$3E,$2E              ;
                db $31,$34,$35,$34,$35,$15,$15,$15              ;
                db $15,$15,$3F,$2F,$32,$35,$34,$35              ;
                db $34                                          ;

DATA_13C865:    db $01,$44,$46,$44,$46,$44,$46,$44              ;
                db $46,$44,$46,$44,$46,$44,$46,$44              ;
                db $46,$45,$47,$45,$47,$45,$47,$45              ;
                db $47,$45,$47,$45,$47,$45,$47,$45              ;
                db $47                                          ;
              
DATA_13C886:    db $01,$08,$08,$08,$08,$05,$0E,$04              ;
                db $0D,$08,$08,$05,$0E,$04,$0D,$08              ;
                db $08,$08,$08,$08,$08,$02,$0B,$03              ;
                db $0C,$08,$08,$02,$0B,$03,$0C,$08              ;
                db $08                                          ;

DATA_13C8A7:    db $41,$01,$04,$07,$0C,$0C,$0C,$36              ;
                db $37,$37,$37,$37,$37,$00,$03,$08              ;
                db $0D,$0D,$0D,$36,$37,$37,$37,$37              ;
                db $37                                          ;

DATA_13C8C0:    db $0F,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$28,$30,$30,$36,$30,$30,$30              ;
                db $30,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$29,$31,$29,$31,$29,$31,$29              ;
                db $31,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2A,$32,$2A,$32,$2A,$32,$2A              ;
                db $32,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$2B,$33,$33,$33,$33,$33,$33              ;
                db $33,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2C,$34,$38,$2C,$30,$38,$2C              ;
                db $30,$00,$04,$09,$10,$16,$1D,$22              ;
                db $27,$2D,$2C,$36,$30,$2C,$36,$30              ;
                db $2C,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2B,$30,$2D,$30,$30,$2D,$30              ;
                db $30,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$2C,$30,$36,$30,$30,$36,$38              ;
                db $30,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2C,$34,$38,$2C,$38,$2C,$3C              ;
                db $30,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$2E,$30,$36,$30,$36,$30,$30              ;
                db $30,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2F,$2D,$39,$30,$2C,$2D,$30              ;
                db $2D,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$2C,$35,$3A,$30,$30,$36,$30              ;
                db $3C,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2D,$36,$35,$2C,$30,$39,$2C              ;
                db $2C,$00,$04,$09,$10,$16,$1D,$22              ;
                db $27,$28,$37,$36,$30,$2C,$3B,$30              ;
                db $30,$00,$03,$09,$0F,$0F,$1C,$21              ;
                db $26,$2C,$30,$2C,$30,$30,$38,$2C              ;
                db $30,$00,$04,$09,$0F,$0F,$1C,$21              ;
                db $27,$2D,$30,$30,$2D,$30,$36,$30              ;
                db $2C                                          ;

DATA_13C9C1:    db $0F,$26,$28,$30,$30,$36,$48,$4F              ;
                db $5A,$26,$28,$30,$30,$36,$30,$30              ;
                db $30,$27,$29,$40,$40,$31,$29,$50              ;
                db $5B,$27,$29,$40,$40,$31,$29,$50              ;
                db $71,$26,$2A,$41,$41,$32,$2A,$51              ;
                db $5C,$26,$2A,$41,$41,$32,$2A,$51              ;
                db $5C,$27,$2B,$33,$33,$33,$49,$52              ;
                db $5D,$27,$2B,$66,$33,$33,$33,$33              ;
                db $72,$26,$2C,$34,$38,$2C,$48,$4F              ;
                db $5E,$26,$2C,$36,$38,$2C,$30,$64              ;
                db $68,$27,$2D,$2C,$36,$30,$4A,$53              ;
                db $5E,$27,$2D,$2C,$36,$30,$64,$68              ;
                db $28,$26,$28,$30,$2D,$30,$48,$4F              ;
                db $5E,$26,$28,$30,$2D,$6C,$68,$28              ;
                db $73,$27,$2C,$30,$36,$30,$4A,$53              ;
                db $5E,$27,$2C,$30,$6A,$68,$28,$69              ;
                db $30,$26,$2C,$3A,$38,$2C,$48,$4F              ;
                db $5E,$26,$2C,$67,$68,$6D,$6F,$70              ;
                db $30,$27,$2E,$36,$36,$30,$4A,$53              ;
                db $5E,$27,$64,$68,$28,$6E,$30,$36              ;
                db $30,$26,$2F,$2D,$39,$30,$4B,$54              ;
                db $5E,$26,$65,$28,$6B,$30,$2C,$30              ;
                db $2D,$27,$2C,$36,$3B,$30,$2F,$55              ;
                db $5F,$27,$28,$69,$3A,$30,$30,$30              ;
                db $3C,$26,$2D,$3A,$42,$45,$4C,$56              ;
                db $60,$26,$2D,$36,$35,$2C,$30,$2C              ;
                db $2C,$27,$28,$36,$43,$46,$4D,$57              ;
                db $61,$27,$28,$30,$36,$30,$2C,$30              ;
                db $30,$26,$2C,$30,$44,$47,$4E,$58              ;
                db $62,$26,$2C,$30,$2C,$30,$30,$2C              ;
                db $30,$27,$2D,$30,$30,$2D,$30,$59              ;
                db $63,$27,$2D,$30,$30,$2D,$30,$30              ;
                db $2C                                          ;

DATA_13CAC2:    db $AF,$00,$00,$19,$38,$29,$00,$00              ;
                db $00,$1A,$20,$38,$00,$00,$02,$1B              ;
                db $39,$3C,$00,$00,$0C,$1C,$3A,$20              ;
                db $00,$02,$0D,$0E,$3B,$39,$00,$03              ;
                db $0E,$1D,$0E,$3A,$00,$04,$0F,$0E              ;
                db $0E,$3B,$00,$05,$10,$1E,$0E,$0E              ;
                db $00,$06,$11,$1F,$0E,$0E,$00,$07              ;
                db $12,$20,$1F,$0E,$00,$08,$13,$11              ;
                db $3C,$1F,$00,$09,$14,$21,$20,$3C              ;
                db $00,$00,$15,$22,$39,$3C,$00,$00              ;
                db $03,$0E,$3A,$20,$00,$00,$04,$0F              ;
                db $3B,$39,$00,$00,$05,$10,$0E,$3A              ;
                db $00                                          ;

DATA_13CB23:    db $AF,$00,$00,$19,$1F,$3B,$00,$00              ;
                db $00,$05,$20,$1F,$00,$00,$00,$06              ;
                db $11,$3C,$00,$00,$00,$23,$12,$20              ;
                db $00,$00,$06,$24,$3D,$11,$00,$00              ;
                db $07,$25,$3E,$21,$00,$00,$08,$26              ;
                db $3F,$1B,$00,$00,$09,$14,$40,$0E              ;
                db $00,$00,$00,$15,$41,$0E,$00,$00              ;
                db $00,$0C,$1E,$0E,$00,$00,$02,$27              ;
                db $0E,$0E,$00,$00,$0C,$28,$0E,$0E              ;
                db $00,$0A,$16,$0E,$28,$0E,$00,$0B              ;
                db $17,$0E,$0E,$0E,$00,$00,$18,$29              ;
                db $42,$0E,$00,$00,$05,$37,$29,$0E              ;
                db $00                                          ;

DATA_13CB84:    db $A1,$07,$13,$18,$1A,$1B,$1B,$08              ;
                db $14,$19,$1A,$1B,$1B                          ;

DATA_13CB91:    db $41,$28,$2E,$31,$34,$34,$34,$34              ;
                db $34,$34,$34,$34,$34,$29,$2F,$32              ;
                db $35,$35,$35,$35,$35,$35,$35,$35              ;
                db $35                                          ;

DATA_13CBAA:    db $C1,$10,$18,$1B,$1B,$0F,$19,$1B              ;
                db $1B                                          ;

DATA_13CBB3:    db $A0,$48,$51,$15,$15,$15,$15                  ;

DATA_13CBBA:    db $02,$08,$08,$08,$08,$03,$0C,$03              ;
                db $0C,$08,$08,$03,$0C,$03,$0C,$08              ;
                db $08,$08,$08,$08,$08,$05,$0E,$04              ;
                db $0D,$08,$08,$05,$0E,$04,$0D,$08              ;
                db $08,$08,$08,$08,$08,$02,$0B,$03              ;
                db $0C,$08,$08,$02,$0B,$03,$0C,$08              ;
                db $08                                          ;

DATA_13CBEB:    db $0F,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$1C,$13,$08,$13,$08,$13,$08              ;
                db $13,$08,$13,$08,$13,$08,$1C,$29              ;
                db $29,$1D,$14,$09,$14,$09,$14,$09              ;
                db $14,$09,$14,$09,$14,$09,$1D,$29              ;
                db $29,$1E,$15,$0A,$15,$0A,$15,$0A              ;
                db $15,$0A,$15,$0A,$15,$0A,$1E,$29              ;
                db $29,$07,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$07,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$1C,$13,$08,$13,$08,$13,$08              ;
                db $13,$08,$13,$08,$13,$08,$1C,$29              ;
                db $29,$1D,$14,$09,$14,$09,$14,$09              ;
                db $14,$09,$14,$09,$14,$09,$1D,$29              ;
                db $29,$1E,$15,$0A,$15,$0A,$15,$0A              ;
                db $15,$0A,$15,$0A,$15,$0A,$1E,$29              ;
                db $29,$07,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$07,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29                                          ;

DATA_13CCEC:    db $01,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$1F,$23              ;
                db $1F,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$20,$24              ;
                db $20                                          ;
      
DATA_13CD0D:    db $01,$1F,$23,$1F,$23,$1F,$23,$1F              ;
                db $23,$1F,$23,$1F,$23,$1F,$23,$1F              ;
                db $23,$20,$24,$20,$24,$20,$24,$20              ;
                db $24,$20,$24,$20,$24,$20,$24,$20              ;
                db $24                                          ;

DATA_13CD2E:    db $7F,$00,$00,$00,$07,$13,$18,$1A              ;
                db $1B,$1B,$00,$00,$00,$0C,$17,$19              ;
                db $1A,$1B,$1B,$00,$00,$00,$02,$12              ;
                db $18,$1A,$1B,$1B,$00,$02,$04,$06              ;
                db $11,$19,$1A,$1B,$1B,$00,$03,$05              ;
                db $05,$10,$18,$1A,$1B,$1B,$00,$00              ;
                db $00,$00,$0E,$19,$1A,$1B,$1B,$00              ;
                db $00,$00,$0B,$16,$18,$1A,$1B,$1B              ;
                db $00,$00,$00,$08,$14,$19,$1A,$1B              ;
                db $1B,$00,$00,$00,$07,$13,$18,$1A              ;
                db $1B,$1B,$00,$00,$00,$08,$14,$19              ;
                db $1A,$1B,$1B,$00,$00,$02,$04,$12              ;
                db $18,$1A,$1B,$1B,$02,$04,$06,$05              ;
                db $11,$19,$1A,$1B,$1B,$03,$0A,$04              ;
                db $04,$12,$18,$1A,$1B,$1B,$00,$03              ;
                db $05,$05,$11,$19,$1A,$1B,$1B,$00              ;
                db $00,$00,$00,$0D,$18,$1A,$1B,$1B              ;
                db $00,$00,$02,$04,$0F,$19,$1A,$1B              ;
                db $1B                                          ;

DATA_13CDBF:    db $00,$1B,$1B,$1B,$1B,$1B,$1B,$1B              ;
                db $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B              ;
                db $1B                                          ;

DATA_13CDD0:    db $41,$00,$03,$08,$0D,$0D,$0D,$36              ;
                db $37,$37,$30,$30,$30,$01,$04,$07              ;
                db $0C,$0C,$0C,$36,$37,$37,$30,$30              ;
                db $30                                          ;

DATA_13CDE9:    db $91,$28,$2E,$31,$34,$48,$4A,$4C              ;
                db $29,$2F,$32,$35,$49,$4B,$4C                  ;

DATA_13CDF8:    db $31,$00,$04,$09,$0F,$0F,$0F,$1C              ;
                db $21,$30,$30,$30,$30,$30,$00,$03              ;
                db $09,$0F,$0F,$0F,$1C,$21,$30,$30              ;
                db $30,$30,$30                                  ;
  
DATA_13CE13:    db $0F,$16,$0D,$02,$0D,$02,$0D,$02              ;
                db $0D,$02,$0D,$02,$0D,$02,$16,$29              ;
                db $29,$17,$0E,$03,$0E,$03,$0E,$03              ;
                db $0E,$03,$0E,$03,$0E,$03,$17,$29              ;
                db $29,$18,$0F,$04,$0F,$04,$0F,$04              ;
                db $0F,$04,$0F,$04,$0F,$04,$18,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$19,$10,$05,$10,$05,$10,$05              ;
                db $10,$05,$10,$05,$10,$05,$19,$29              ;
                db $29,$1A,$11,$06,$11,$06,$11,$06              ;
                db $11,$06,$11,$06,$11,$06,$1A,$29              ;
                db $29,$1B,$12,$07,$12,$07,$12,$07              ;
                db $12,$07,$12,$07,$12,$07,$1B,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$29              ;
                db $29,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$29              ;
                db $29,$16,$0D,$02,$0D,$02,$0D,$02              ;
                db $0D,$02,$0D,$02,$0D,$02,$16,$29              ;
                db $29,$17,$0E,$03,$0E,$03,$0E,$03              ;
                db $0E,$03,$0E,$03,$0E,$03,$17,$29              ;
                db $29                                          ;

DATA_13CF14:    db $01,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$00,$0B,$00,$0B,$00,$0B,$00              ;
                db $0B,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C,$01,$0C,$01,$0C,$01,$0C,$01              ;
                db $0C                                          ;

DATA_13CF35:    db $01,$0B,$00,$0B,$00,$0B,$00,$0B              ;
                db $00,$0B,$00,$0B,$00,$0B,$00,$0B              ;
                db $00,$0C,$01,$0C,$01,$0C,$01,$0C              ;
                db $01,$0C,$01,$0C,$01,$0C,$01,$0C              ;
                db $01                                          ;

DATA_13CF56:    db $0F,$00,$10,$00,$10,$00,$10,$00              ;
                db $10,$00,$10,$00,$10,$00,$10,$00              ;
                db $10,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$02,$02,$02,$02,$02,$12,$02              ;
                db $02,$02,$02,$02,$12,$02,$02,$02              ;
                db $02,$03,$03,$03,$03,$03,$03,$03              ;
                db $03,$03,$03,$03,$03,$03,$03,$03              ;
                db $03,$14,$04,$04,$04,$04,$04,$04              ;
                db $04,$04,$14,$04,$04,$04,$04,$04              ;
                db $04,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$06,$06,$06,$06,$06,$06,$06              ;
                db $06,$06,$06,$18,$06,$06,$06,$06              ;
                db $06,$07,$07,$07,$07,$07,$07,$07              ;
                db $1A,$07,$07,$07,$07,$07,$07,$1A              ;
                db $07,$08,$08,$08,$08,$08,$08,$08              ;
                db $1B,$08,$08,$08,$08,$08,$08,$08              ;
                db $08,$09,$09,$09,$19,$09,$09,$09              ;
                db $09,$09,$09,$09,$09,$09,$09,$09              ;
                db $09,$0A,$0A,$0A,$0A,$0A,$0A,$0A              ;
                db $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A              ;
                db $0A,$0B,$0B,$0B,$0B,$0B,$0B,$15              ;
                db $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B              ;
                db $0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C              ;
                db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C              ;
                db $0C,$13,$0D,$0D,$0D,$0D,$0D,$0D              ;
                db $0D,$0D,$0D,$0D,$0D,$0D,$13,$0D              ;
                db $0D,$0E,$0E,$0E,$0E,$0E,$0E,$0E              ;
                db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E              ;
                db $0E,$0F,$11,$0F,$11,$0F,$11,$0F              ;
                db $11,$0F,$11,$0F,$11,$0F,$11,$0F              ;
                db $11                                          ;

DATA_13D057:    db $0F,$10,$00,$10,$00,$10,$00,$10              ;
                db $00,$10,$00,$10,$00,$10,$00,$10              ;
                db $00,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$01,$01,$01,$01,$01,$01,$01              ;
                db $01,$02,$02,$02,$02,$12,$02,$02              ;
                db $02,$02,$02,$02,$02,$02,$02,$02              ;
                db $02,$03,$03,$03,$03,$03,$03,$03              ;
                db $03,$03,$03,$03,$03,$03,$03,$03              ;
                db $03,$04,$04,$04,$04,$04,$04,$04              ;
                db $04,$04,$04,$14,$04,$04,$04,$04              ;
                db $04,$05,$05,$05,$05,$05,$05,$16              ;
                db $05,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$06,$06,$18,$06,$06,$06,$06              ;
                db $06,$06,$06,$06,$06,$06,$06,$06              ;
                db $06,$07,$07,$07,$07,$07,$07,$07              ;
                db $07,$07,$07,$07,$07,$07,$07,$07              ;
                db $07,$08,$08,$08,$08,$08,$08,$08              ;
                db $08,$08,$08,$08,$08,$1B,$08,$08              ;
                db $08,$09,$09,$09,$09,$09,$09,$09              ;
                db $09,$09,$19,$09,$09,$09,$09,$09              ;
                db $09,$0A,$0A,$0A,$0A,$0A,$0A,$0A              ;
                db $0A,$0A,$0A,$0A,$0A,$0A,$17,$0A              ;
                db $0A,$0B,$15,$0B,$0B,$0B,$0B,$0B              ;
                db $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B              ;
                db $0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C              ;
                db $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C              ;
                db $0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D              ;
                db $0D,$13,$0D,$0D,$0D,$0D,$0D,$0D              ;
                db $0D,$0E,$0E,$0E,$0E,$0E,$0E,$0E              ;
                db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E              ;
                db $0E,$11,$0F,$11,$0F,$11,$0F,$11              ;
                db $0F,$11,$0F,$11,$0F,$11,$0F,$11              ;
                db $0F                                          ;

DATA_13D158:    db $0F,$27,$2C,$30,$36,$30,$30,$30              ;
                db $30,$48,$4F,$27,$2C,$30,$36,$30              ;
                db $30,$26,$2D,$30,$30,$30,$2D,$30              ;
                db $30,$4A,$53,$26,$2D,$30,$30,$30              ;
                db $2D,$27,$28,$30,$30,$30,$36,$30              ;
                db $30,$48,$4F,$27,$28,$30,$30,$30              ;
                db $36,$26,$2C,$30,$30,$30,$30,$30              ;
                db $30,$4A,$53,$26,$2C,$30,$30,$30              ;
                db $30,$27,$2C,$34,$34,$38,$2C,$34              ;
                db $38,$48,$4F,$27,$2C,$34,$34,$38              ;
                db $2C,$26,$2D,$2C,$2C,$36,$30,$2C              ;
                db $36,$4A,$53,$26,$2D,$2C,$2C,$36              ;
                db $30,$27,$28,$30,$30,$2D,$30,$30              ;
                db $2D,$48,$4F,$27,$28,$30,$30,$2D              ;
                db $30,$26,$2C,$30,$30,$36,$30,$30              ;
                db $36,$4A,$53,$26,$2C,$30,$30,$36              ;
                db $30,$27,$2C,$30,$3A,$38,$2C,$3A              ;
                db $38,$48,$4F,$27,$2C,$3A,$30,$38              ;
                db $2C,$26,$2E,$30,$36,$36,$30,$36              ;
                db $36,$4A,$53,$26,$2E,$36,$2C,$36              ;
                db $30,$27,$2F,$2D,$30,$30,$30,$2D              ;
                db $30,$48,$4F,$27,$2F,$2D,$30,$30              ;
                db $30,$26,$2C,$36,$30,$30,$30,$36              ;
                db $30,$4A,$53,$26,$2C,$36,$30,$30              ;
                db $30,$27,$2D,$30,$3A,$30,$2C,$3A              ;
                db $30,$48,$4F,$27,$2D,$3A,$30,$30              ;
                db $30,$26,$28,$30,$36,$30,$2C,$36              ;
                db $30,$4A,$53,$26,$28,$36,$2C,$30              ;
                db $30,$27,$2C,$30,$30,$30,$2C,$30              ;
                db $30,$48,$4F,$27,$2C,$30,$30,$30              ;
                db $30,$26,$2D,$30,$30,$3A,$2C,$30              ;
                db $30,$4A,$53,$26,$2D,$30,$30,$30              ;
                db $2D                                          ;

DATA_13D259:    db $0F,$27,$28,$30,$30,$36,$2C,$30              ;
                db $30,$48,$4F,$27,$28,$30,$30,$30              ;
                db $36,$26,$2D,$30,$2C,$30,$30,$30              ;
                db $30,$4A,$53,$26,$2C,$30,$2C,$30              ;
                db $30,$27,$28,$30,$30,$2C,$30,$2C              ;
                db $30,$4B,$54,$27,$2C,$30,$30,$30              ;
                db $2D,$26,$29,$29,$40,$40,$40,$50              ;
                db $29,$29,$50,$40,$40,$31,$29,$29              ;
                db $31,$27,$2A,$2A,$41,$41,$41,$41              ;
                db $2A,$2A,$41,$41,$41,$32,$2A,$2A              ;
                db $32,$26,$2B,$33,$33,$33,$33,$5D              ;
                db $26,$2B,$33,$33,$33,$33,$33,$33              ;
                db $33,$27,$2C,$30,$30,$2F,$55,$5F              ;
                db $27,$2C,$30,$2D,$30,$30,$30,$2D              ;
                db $30,$26,$2C,$42,$45,$4C,$56,$60              ;
                db $26,$2D,$30,$36,$30,$30,$30,$36              ;
                db $2C,$27,$2E,$43,$46,$4D,$57,$61              ;
                db $27,$28,$30,$2C,$30,$2D,$30,$30              ;
                db $70,$26,$2C,$44,$47,$4E,$58,$62              ;
                db $26,$2C,$30,$30,$30,$36,$30,$30              ;
                db $30,$27,$2E,$30,$30,$30,$59,$63              ;
                db $27,$2C,$3A,$2C,$30,$30,$30,$2C              ;
                db $30,$26,$2F,$30,$30,$2F,$30,$5E              ;
                db $26,$2C,$36,$3A,$69,$3A,$30,$30              ;
                db $30,$27,$29,$29,$40,$40,$40,$50              ;
                db $29,$29,$50,$40,$40,$31,$29,$29              ;
                db $31,$26,$2A,$2A,$41,$41,$41,$41              ;
                db $2A,$2A,$41,$41,$41,$32,$2A,$2A              ;
                db $32,$27,$28,$33,$33,$33,$33,$33              ;
                db $33,$49,$52,$26,$28,$33,$33,$33              ;
                db $33,$26,$2C,$30,$2D,$30,$30,$30              ;
                db $30,$48,$4F,$27,$2C,$30,$2D,$30              ;
                db $30                                          ;

DATA_13D35A:    db $1E                                          ;

                db $4D,$4D,$4D,$4D,$4D,$4D,$4D,$4D              ;
                db $4D,$4D,$4D,$4D,$4D,$4D,$4D,$00              ;
                db $05,$0D,$0D,$0D,$0D,$0D,$0D,$0D              ;
                db $0D,$0D,$00,$05,$4D,$4D,$01,$06              ;
                db $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E              ;
                db $0E,$01,$06,$4D,$4D,$02,$07,$0F              ;
                db $14,$1C,$14,$0F,$14,$14,$14,$41              ;
                db $46,$4B,$4D,$4D,$03,$08,$10,$10              ;
                db $1B,$1B,$1B,$10,$1B,$3A,$42,$47              ;
                db $4C,$4D,$4D,$04,$09,$09,$15,$1D              ;
                db $23,$2A,$30,$36,$3B,$43,$48,$49              ;
                db $4D,$4D,$04,$04,$11,$16,$1E,$24              ;
                db $2B,$31,$37,$3C,$44,$45,$49,$4D              ;
                db $4D,$04,$04,$12,$17,$1F,$25,$2C              ;
                db $32,$4E,$3D,$4D,$49,$49,$4D,$4D              ;
                db $04,$0A,$4D,$18,$20,$26,$2D,$33              ;
                db $4E,$3E,$44,$48,$49,$4D,$4D,$04              ;
                db $04,$09,$19,$21,$27,$2E,$34,$38              ;
                db $3F,$4D,$45,$49,$4D,$4D,$04,$0B              ;
                db $11,$1A,$22,$28,$2F,$35,$39,$40              ;
                db $45,$49,$49,$4D,$4D,$02,$07,$0F              ;
                db $14,$0F,$14,$14,$0F,$14,$14,$41              ;
                db $46,$4B,$4D,$4D,$03,$0C,$13,$1B              ;
                db $1B,$29,$13,$1B,$1B,$1B,$10,$4A              ;
                db $4C,$4D,$4D,$01,$06,$0E,$0E,$0E              ;
                db $0E,$0E,$0E,$0E,$0E,$0E,$01,$06              ;
                db $4D,$4D,$00,$05,$0D,$0D,$0D,$0D              ;
                db $0D,$0D,$0D,$0D,$0D,$00,$05,$4D              ;
                db $4D                                          ;

DATA_13D43C:    db $01,$44,$46,$44,$46,$44,$46,$44              ;
                db $46,$44,$46,$44,$46,$44,$46,$44              ;
                db $46,$45,$47,$45,$47,$45,$47,$45              ;
                db $47,$45,$47,$45,$47,$45,$47,$45              ;

                db $47                                          ;

DATA_13D45D:    db $A0,$36,$37,$37,$37,$37,$37                  ;

DATA_13D464:    db $26,$38                                      ;

DATA_13D466:    db $2C,$01                                      ;

DATA_13D468:    db $1A,$24,$25                                  ;

DATA_13D46B:    db $0A,$09,$71,$72,$73,$74                      ;

DATA_13D471:    db $51,$52,$53,$54,$55,$56                      ;

DATA_13D477:    db $06,$10,$0B,$16,$0C,$17,$09,$15              ;
                db $00,$0D,$00,$0E                              ;

DATA_13D483:    db $13,$1B,$50,$59                              ;

DATA_13D487:    db $23,$2A,$24,$2B,$04,$06,$05,$07              ;
                db $00,$0D,$00,$0E,$49,$51,$4A,$55              ;

DATA_13D497:    db $1C,$1D,$21,$22,$5E                          ;

DATA_13D49C:    db $04,$06,$08,$07,$09,$03,$0A,$02              ;
                db $0B,$06,$05,$07,$37,$47,$38,$48              ;
                db $25,$25,$89,$8B,$8A,$8C,$25,$25              ;
                db $01,$04,$02,$05,$03,$06                      ;
    
DATA_13D4BA:    db $02,$02,$02,$02,$08,$08,$08,$08              ;
                db $08,$08                                      ;

DATA_13D4C4:    db $01,$02,$03,$04,$02,$03,$04,$05              ;
                db $06,$08                                      ;

DATA_13D4CE:    db $01,$03,$0B,$62,$63,$0C,$02                  ;

DATA_13D4D5:    db $76,$33,$2E,$67,$64,$2E,$33                  ;

DATA_13D4DC:    db $20,$25,$21,$26,$2C,$30,$33,$22              ;
                db $27,$2D                                      ;

DATA_13D4E6:    db $15,$16,$17,$18,$19,$27,$28,$29              ;
                db $2A,$2B,$2C,$2D,$2E,$2F,$30,$31              ;
                db $32,$33,$35,$36,$37,$39,$3A,$3B              ;
                db $3C,$3D,$3E,$3F,$45,$46,$47,$4D              ;
                db $4E,$57,$58,$5B,$5C,$5D,$5F,$60              ;
                db $61,$62,$63,$64,$65,$66,$67,$68              ;
                db $69,$6A,$6B,$6C                              ;

PNTR_13D51A:    dw DATA_13D582                                  ;
                dw DATA_13D582                                  ;
                dw DATA_13D582                                  ;
                dw DATA_13D582                                  ;
                dw DATA_13D582                                  ;
                dw DATA_13D582                                  ;
                dw DATA_13D5A1                                  ;
                dw DATA_13D5AA                                  ;
                dw DATA_13D5B7                                  ;
                dw DATA_13D5BE                                  ;
                dw DATA_13D5C5                                  ;
                dw DATA_13D5D1                                  ;
                dw DATA_13D5D5                                  ;
                dw DATA_13D5E2                                  ;
                dw DATA_13D5E7                                  ;
                dw DATA_13D5F4                                  ;
                dw DATA_13D5F9                                  ;
                dw DATA_13D5FD                                  ;
                dw DATA_13D605                                  ;
                dw DATA_13D60E                                  ;
                dw DATA_13D630                                  ;
                dw DATA_13D646                                  ;
                dw DATA_13D64D                                  ;
                dw DATA_13D654                                  ;
                dw DATA_13D661                                  ;
                dw DATA_13D668                                  ;
                dw DATA_13D66C                                  ;
                dw DATA_13D685                                  ;
                dw DATA_13D692                                  ;
                dw DATA_13D69C                                  ;
                dw DATA_13D6A9                                  ;
                dw DATA_13D6BC                                  ;
                dw DATA_13D6C3                                  ;
                dw DATA_13D6F5                                  ;
                dw DATA_13D714                                  ;
                dw DATA_13D79C                                  ;
                dw DATA_13D7AC                                  ;
                dw DATA_13D81D                                  ;
                dw DATA_13D864                                  ;
                dw DATA_13D873                                  ;
                dw DATA_13D873                                  ;
                dw DATA_13D892                                  ;
                dw DATA_13D8AC                                  ;
                dw DATA_13D8B6                                  ;
                dw DATA_13D8B6                                  ;
                dw DATA_13D8B6                                  ;
                dw DATA_13D8B6                                  ;
                dw DATA_13D8D1                                  ;
                dw DATA_13D8F9                                  ;
                dw DATA_13D93A                                  ;
                dw DATA_13D96B                                  ;
                dw DATA_13D9B9                                  ;

DATA_13D582:    db $E1,$40,$09,$65,$68,$17,$1B,$09              ;
                db $40,$09,$65,$68,$17,$1B,$09,$09              ;
                db $30,$0A,$0A,$0A,$15,$1C,$0A,$30              ;
                db $0A,$0A,$0A,$15,$1C,$0A,$0A                  ;

DATA_13D5A1:    db $31,$60,$60,$60,$60,$25,$25,$64              ;
                db $67                                          ;

DATA_13D5AA:    db $51,$6A,$6F,$77,$7A,$7A,$7A,$6B              ;
                db $25,$25,$25,$67,$64                          ;

DATA_13D5B7:    db $21,$6A,$6F,$77,$6B,$25,$25                  ;

DATA_13D5BE:    db $21,$6A,$7A,$6F,$6B,$25,$25                  ;

DATA_13D5C5:    db $A0,$61,$61,$66,$69,$16,$6E,$75              ;
                db $61,$61,$66,$69                              ;

DATA_13D5D1:    db $20,$7F,$80,$81                              ;

DATA_13D5D5:    db $51,$6A,$6F,$77,$7A,$7A,$7A,$6B              ;
                db $83,$25,$25,$64,$67                          ;

DATA_13D5E2:    db $30,$86,$2C,$2C,$08                          ;

DATA_13D5E7:    db $51,$7F,$80,$81,$81,$8D,$81,$19              ;
                db $73,$88,$08,$63,$62                          ;

DATA_13D5F4:    db $30,$75,$61,$84,$85                          ;

DATA_13D5F9:    db $02,$7C,$7D,$7E                              ;

DATA_13D5FD:    db $06,$7D,$7D,$7D,$7D,$7D,$7D,$7E              ;

DATA_13D605:    db $13,$0B,$1A,$0C,$1B,$09,$18,$0A              ;
                db $19                                          ;

DATA_13D60E:    db $2A,$00,$0D,$1C,$03,$0E,$1D,$04              ;
                db $0F,$1E,$05,$0E,$1F,$04,$0F,$20              ;
                db $05,$0E,$21,$04,$0F,$1E,$05,$0E              ;
                db $1F,$04,$0F,$20,$05,$0E,$21,$06              ;
                db $10,$24                                      ;

DATA_13D630:    db $26,$00,$0D,$1C,$03,$0E,$1D,$04              ;
                db $0F,$1E,$05,$0E,$1F,$04,$0F,$20              ;
                db $05,$0E,$21,$06,$10,$24                      ;

DATA_13D646:    db $50,$2A,$02,$07,$0C,$0C,$0C                  ;

DATA_13D64D:    db $50,$2A,$05,$09,$0D,$0D,$0D                  ;

DATA_13D654:    db $51                                          ;
                db $2A,$2A,$2A,$0E,$32,$34,$2A,$2A              ;
                db $2A,$0F,$33,$35                              ;

DATA_13D661:    db $50,$2A,$06,$0A                              ;
                db $10,$10,$10                                  ;

DATA_13D668:    db $20,$24,$29,$29                              ;

DATA_13D66C:    db $35                                          ;
                db $07,$11,$17,$17,$0B,$12,$18,$18              ;
                db $19,$12,$18,$18,$1A,$12,$18,$18              ;
                db $39,$1C,$1E,$1E,$08,$3A,$3A,$3A              ;

DATA_13D685:    db $51,$01,$04,$07,$0C,$0C,$0C,$00              ;
                db $03,$08,$0D,$0D,$0D                          ;

DATA_13D692:    db $22,$1E,$21                                  ;
                db $25,$1F,$22,$26,$20,$23,$27                  ;

DATA_13D69C:    db $23                                          ;
                db $00,$04,$0A,$01,$05,$0B,$02,$06              ;
                db $0C,$03,$07,$0D                              ;

DATA_13D6A9:    db $25,$00,$04,$0A                              ;
                db $01,$05,$0B,$02,$06,$0C,$01,$05              ;
                db $0B,$02,$06,$0C,$03,$07,$0D                  ;

DATA_13D6BC:    db $21                                          ;
                db $37,$43,$4D,$38,$44,$4E                      ;

DATA_13D6C3:    db $66,$01                                      ;
                db $05,$05,$05,$05,$05,$05,$02,$06              ;
                db $0A,$11,$18,$1E,$23,$00,$07,$0B              ;
                db $12,$19,$3D,$3D,$00,$07,$0C,$13              ;
                db $1A,$3D,$3D,$00,$07,$04,$14,$1B              ;
                db $1F,$24,$01,$05,$05,$05,$05,$05              ;
                db $05,$02,$08,$0D,$15,$15,$20,$25              ;

DATA_13D6F5:    db $29,$51,$56,$15,$52,$07,$15,$53              ;
                db $15,$15,$54,$08,$15,$51,$57,$08              ;
                db $51,$58,$15,$51,$56,$15,$51,$57              ;
                db $08,$51,$59,$5A,$51,$58,$15                  ;

DATA_13D714:    db $8E                                          ;
                db $03,$08,$15,$15,$0A,$08,$15,$15              ;
                db $15,$00,$03,$08,$0A,$06,$03,$08              ;
                db $15,$15,$00,$00,$03,$06,$00,$00              ;
                db $02,$15,$15,$00,$00,$00,$2A,$00              ;
                db $00,$03,$08,$15,$00,$00,$20,$2B              ;
                db $32,$3A,$3A,$44,$08,$00,$00,$21              ;
                db $2C,$33,$3B,$40,$40,$4B,$00,$20              ;
                db $25,$2D,$00,$3C,$00,$00,$00,$00              ;
                db $21,$26,$2D,$34,$00,$00,$00,$0B              ;
                db $00,$22,$27,$2E,$35,$3D,$3D,$3D              ;
                db $4C,$00,$23,$28,$2E,$36,$3E,$41              ;
                db $45,$4D,$00,$24,$29,$2E,$00,$00              ;
                db $00,$00,$00,$00,$00,$23,$2F,$32              ;
                db $3A,$3A,$3A,$4E,$00,$00,$24,$30              ;
                db $33,$3B,$40,$40,$4F,$00,$00,$00              ;
                db $31,$00,$3C,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00                  ;

DATA_13D79C:    db $24                                          ;
                db $00,$00,$00,$00,$00,$37,$00,$00              ;
                db $38,$00,$00,$3C,$00,$00,$00                  ;

DATA_13D7AC:    db $7D                                          ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$00,$00              ;
                db $00,$00,$00,$00,$00,$00,$37,$00              ;
                db $00,$00,$00,$00,$00,$00,$38,$3F              ;
                db $00,$00,$00,$00,$00,$00,$3C,$00              ;
                db $00,$00,$00,$00,$00,$37,$00,$00              ;
                db $00,$00,$00,$00,$00,$38,$3F,$3F              ;
                db $00,$00,$00,$00,$00,$3C,$00,$00              ;
                db $00,$00,$00,$00,$00,$37,$00,$00              ;
                db $00,$00,$00,$00,$00,$38,$3F,$3F              ;
                db $00,$00,$00,$00,$00,$3C,$00,$00              ;
                db $00,$00,$00,$00,$00,$2A,$00,$00              ;

DATA_13D81D:    db $69,$00,$20,$2B,$32,$3A,$6D,$71              ;
                db $00,$21,$2C,$63,$66,$66,$72,$20              ;
                db $25,$2D,$64,$67,$67,$73,$21,$26              ;
                db $2D,$64,$68,$6E,$74,$22,$27,$2E              ;
                db $64,$69,$6F,$75,$23,$28,$2E,$64              ;
                db $6A,$70,$76,$24,$29,$2E,$64,$67              ;
                db $67,$77,$00,$23,$2F,$65,$6B,$6B              ;
                db $78,$00,$24,$30,$33,$6C,$6C,$79              ;
                db $00,$00,$31,$00,$00,$00,$00                  ;

DATA_13D864:    db $61                                          ;
                db $2F,$33,$39,$45,$4F,$55,$5B,$30              ;
                db $34,$3A,$46,$50,$56,$5C                      ;

DATA_13D873:    db $E1,$46                                      ;
                db $09,$17,$1B,$54,$55,$52,$53,$17              ;
                db $46,$54,$55,$52,$53,$17,$49,$0A              ;
                db $15,$1C,$0A,$30,$0A,$0A,$15,$1C              ;
                db $0A,$30,$0A,$0A,$15                          ;

DATA_13D892:    db $44,$20,$08                                  ;
                db $28,$29,$2A,$19,$28,$29,$2A,$31              ;
                db $21,$29,$2A,$31,$2C,$22,$2A,$57              ;
                db $08,$2C,$23,$56,$0E,$36,$32                  ;

DATA_13D8AC:    db $22                                          ;
                db $1D,$02,$0B,$1E,$26,$0E,$1F,$27              ;
                db $26                                          ;

DATA_13D8B6:    db $C1,$03,$0E,$03,$0E,$03,$0E                  ;
                db $03,$0E,$03,$0E,$03,$0E,$17,$04              ;
                db $0F,$04,$0F,$04,$0F,$04,$0F,$04              ;
                db $0F,$04,$0F,$18                              ;

DATA_13D8D1:    db $C2,$08,$13,$08                              ;
                db $13,$08,$13,$08,$13,$08,$13,$08              ;
                db $13,$1C,$09,$14,$09,$14,$09,$14              ;
                db $09,$14,$09,$14,$09,$14,$1D,$0A              ;
                db $15,$0A,$15,$0A,$15,$0A,$15,$0A              ;
                db $15,$0A,$15,$1E                              ;

DATA_13D8F9:    db $3F,$00,$00,$3B                              ;
                db $39,$00,$00,$3A,$1A,$00,$00,$0C              ;
                db $1B,$00,$00,$09,$18,$00,$00,$0A              ;
                db $19,$00,$00,$12,$26,$00,$00,$11              ;
                db $25,$00,$00,$13,$27,$00,$00,$14              ;
                db $28,$00,$07,$15,$28,$07,$37,$15              ;
                db $28,$08,$38,$16,$28,$00,$08,$38              ;
                db $28,$00,$00,$08,$28,$00,$00,$3B              ;
                db $28,$00,$00,$3A,$28                          ;

DATA_13D93A:    db $2F,$30,$30                                  ;
                db $30,$30,$39,$2C,$2C,$3B,$30,$30              ;
                db $38,$2C,$2C,$36,$30,$30,$38,$2C              ;
                db $30,$36,$38,$38,$2C,$3C,$36,$30              ;
                db $30,$2D,$2D,$30,$35,$36,$30,$36              ;
                db $39,$2C,$37,$3B,$30,$30,$38,$2C              ;
                db $30,$36,$30,$30,$2C,$30                      ;

DATA_13D96B:    db $A6,$01                                      ;
                db $05,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$05,$02,$0A,$11,$18,$1E,$23              ;
                db $02,$06,$06,$06,$06,$00,$0B,$12              ;
                db $19,$3D,$3D,$00,$07,$07,$07,$07              ;
                db $00,$0C,$13,$1A,$3D,$3D,$00,$07              ;
                db $07,$07,$07,$00,$04,$14,$1B,$1F              ;
                db $24,$00,$07,$07,$07,$07,$01,$05              ;
                db $05,$05,$05,$05,$05,$05,$05,$05              ;
                db $05,$02,$0A,$09,$0F,$0F,$0F,$1C              ;
                db $21,$30,$36,$30                              ;

DATA_13D9B9:    db $30,$10,$16,$1D,$22                          ;

DATA_13D9BE:    db $02,$03,$04,$05,$06,$07,$08,$09              ;
                db $0A,$07                                      ;

DATA_13D9C8:    db $0D,$0E,$0F,$10,$11,$12,$13,$14              ;
                db $15,$12                                      ;

DATA_13D9D2:    db $16,$17,$18,$19,$1A,$1B,$1C,$1D              ;
                db $1E,$1B                                      ;

DATA_13D9DC:    db $03,$06,$0A                                  ;

DATA_13D9DF:    db $17,$16,$16,$15                              ;

DATA_13D9E3:    db $19                                          ;
                        
DATA_13D9E4:    db $00,$01,$6C,$6D,$22,$23                      ;

DATA_13D9EA:    db $18,$1A,$6C,$6D,$22,$23                      ;

DATA_13D9F0:    db $01,$02,$03,$06,$06,$03,$02                  ;

DATA_13D9F7:    db $1D,$1E,$26,$1F,$27,$26,$6C,$60              ;
                db $78,$7B,$60,$60,$6D,$70,$2A,$25              ;
                db $64,$67,$22,$2A,$79,$23,$31                  ;

PNTR_13DA0E:    dw DATA_13DA16                                  ;
                dw DATA_13DA16                                  ;
                dw DATA_13DA16                                  ;
                dw DATA_13DA16                                  ;

DATA_13DA16:    db $60,$30,$B2,$2C,$83,$2E,$14,$33              ;
                db $54,$2F,$C4,$36,$25,$30,$97,$35              ;
                db $D8,$2C,$59,$31,$2A,$2B,$6C,$33              ;
                db $EC,$36,$0D,$2E,$BD,$2B,$8E,$31              ;
                db $4F,$2C,$F0,$61,$30,$B3,$2C,$84              ;
                db $2E,$15,$33,$55,$2F,$C5,$36,$26              ;
                db $30,$98,$35,$D9,$2C,$5A,$31,$2B              ;
                db $2B,$6D,$33,$ED,$36,$0E,$2E,$BE              ;
                db $2B,$8F,$31,$F0,$60,$30,$B2,$2C              ;
                db $83,$2E,$14,$33,$54,$2F,$C4,$36              ;
                db $25,$30,$97,$35,$D8,$2C,$59,$31              ;
                db $2A,$2B,$6C,$33,$EC,$36,$0D,$2E              ;
                db $BD,$2B,$8E,$31,$4F,$2C,$F0,$40              ;
                db $2C,$42,$2F,$03,$31,$16,$30,$59              ;
                db $30,$2A,$2B,$4D,$2D,$1E,$35,$FF              ;

DATA_13DA8E:    db $07,$14,$27,$20,$27                          ;

DATA_13DA93:    db $37,$15,$28,$22,$28                          ;

DATA_13DA98:    db $38,$16,$28,$23,$25                          ;

DATA_13DA9D:    db $08,$08,$39,$21,$26                          ;

DATA_13DAA2:    db $13                                          ;

DATA_13DAA3:    db $3B                                          ;

DATA_13DAA4:    db $3A                                          ;

DATA_13DAA5:    db $05,$08,$04,$0A                              ;

DATA_13DAA9:    db $08,$15,$24,$16,$0F                          ;

DATA_13DAAE:    db $10,$11,$12,$13,$14                          ;

DATA_13DAB3:    db $17,$18,$18,$19,$1A                          ;

DATA_13DAB8:    db $1B,$18,$18,$1C,$1D                          ;

DATA_13DABD:    db $35,$36,$3F,$40,$5E,$5F,$60,$61              ;
                db $2D,$2E,$2F,$30,$77,$78,$79,$7A              ;

DATA_13DACD:    db $41,$42,$43,$4A,$65,$66,$67,$68              ;
                db $31,$32,$33,$34,$7B,$53,$42,$7C              ;

DATA_13DADD:    db $4B,$4C,$4D,$4E,$6C,$6D,$6E,$6F              ;
                db $3B,$3C,$39,$3A,$7D,$43,$4C,$7E              ;
                db $52,$53,$42,$54,$70,$71,$66,$72              ;
                db $47,$48,$32,$46,$62,$4D,$53,$63              ;
                db $59,$43,$4C,$5A,$73,$67,$6D,$74              ;
                db $51,$33,$3C,$50,$69,$42,$43,$6A              ;
                db $62,$4D,$53,$63,$75,$6E,$71,$76              ;
                db $57,$39,$48,$56,$4B,$4C,$4D,$4E              ;
                db $69,$42,$43,$6A,$00,$00,$00,$00              ;
                db $5D,$32,$33,$5C,$52,$53,$42,$54              ;

DATA_13DB2D:    db $39,$3A,$32,$3B,$3C,$48                      ;

DATA_13DB33:    db $3D,$3E                                      ;
                db $49,$37,$38,$44                              ;

DATA_13DB39:    db $2F,$33,$39,$32                              ;
                db $3C,$48                                      ;

DATA_13DB3F:    db $58,$5B,$64,$6B,$4F,$55                      ;

DATA_13DB45:    db $02,$03                                      ;

DATA_13DB47:    db $04,$05                                      ;

DATA_13DB49:    db $04,$05                                      ;

DATA_13DB4B:    db $06,$0A                                      ;

DATA_13DB4D:    db $13,$14,$14,$13                              ;

DATA_13DB51:    db $12,$0F,$11,$10                              ;

DATA_13DB55:    db $10,$11,$12,$0F                              ;

DATA_13DB59:    db $12,$0F,$10,$11                              ;

DATA_13DB5D:    db $43                                          ;

DATA_13DB5E:    db $47                                          ;

DATA_13DB5F:    db $50                                          ;

DATA_13DB60:    db $4D,$5F,$64,$65,$66,$27,$61                  ;

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
                db $FF                                          ; /

CODE_13DC00:    REP #$30                    ; $13:DC00: C2 30       ;
                LDA $0533                   ; $13:DC02: AD 33 05    ;
                AND #$00FF                  ; $13:DC05: 29 FF 00    ;
                ASL A                       ; $13:DC08: 0A          ;
                ASL A                       ; $13:DC09: 0A          ;
                ASL A                       ; $13:DC0A: 0A          ;
                ASL A                       ; $13:DC0B: 0A          ;
                ASL A                       ; $13:DC0C: 0A          ;
                TAX                         ; $13:DC0D: AA          ;
                LDY #$0000                  ; $13:DC0E: A0 00 00    ;
CODE_13DC11:    LDA.l DATA_14B65C,x                 ; $13:DC11: BF 5C B6 14 ;
                STA $0CA0,y                 ; $13:DC15: 99 A0 0C    ;
                INX                         ; $13:DC18: E8          ;
                INX                         ; $13:DC19: E8          ;
                INY                         ; $13:DC1A: C8          ;
                INY                         ; $13:DC1B: C8          ;
                CPY #$0020                  ; $13:DC1C: C0 20 00    ;
                BNE CODE_13DC11             ; $13:DC1F: D0 F0       ;
                SEP #$30                    ; $13:DC21: E2 30       ;
                LDX $0533                   ; $13:DC23: AE 33 05    ;
                LDA.l DATA_11D098,x                 ; $13:DC26: BF 98 D0 11 ;
                CLC                         ; $13:DC2A: 18          ;
                ADC $0534                   ; $13:DC2B: 6D 34 05    ;
                LDX #$06                    ; $13:DC2E: A2 06       ;
CODE_13DC30:    CMP.l DATA_138779,x                 ; $13:DC30: DF 79 87 13 ;
                BEQ CODE_13DC3C             ; $13:DC34: F0 06       ;
                DEX                         ; $13:DC36: CA          ;
                BPL CODE_13DC30             ; $13:DC37: 10 F7       ;
                BRL CODE_13DEDC             ; $13:DC39: 82 A0 02    ;

CODE_13DC3C:    REP #$20                    ; $13:DC3C: C2 20       ;
                TXA                         ; $13:DC3E: 8A          ;
                AND #$00FF                  ; $13:DC3F: 29 FF 00    ;
                ASL A                       ; $13:DC42: 0A          ;
                ASL A                       ; $13:DC43: 0A          ;
                ASL A                       ; $13:DC44: 0A          ;
                ASL A                       ; $13:DC45: 0A          ;
                ASL A                       ; $13:DC46: 0A          ;
                TAX                         ; $13:DC47: AA          ;
                LDY #$00                    ; $13:DC48: A0 00       ;
CODE_13DC4A:    LDA.l DATA_14B8DC,x                 ; $13:DC4A: BF DC B8 14 ;
                STA $0CA0,y                 ; $13:DC4E: 99 A0 0C    ;
                INX                         ; $13:DC51: E8          ;
                INX                         ; $13:DC52: E8          ;
                INY                         ; $13:DC53: C8          ;
                INY                         ; $13:DC54: C8          ;
                CPY #$20                    ; $13:DC55: C0 20       ;
                BNE CODE_13DC4A             ; $13:DC57: D0 F1       ;
                SEP #$20                    ; $13:DC59: E2 20       ;
                BRL CODE_13DEDC             ; $13:DC5B: 82 7E 02    ;

CODE_13DC5E:    REP #$20                    ; $13:DC5E: C2 20       ;
                LDX #$00                    ; $13:DC60: A2 00       ;
CODE_13DC62:    LDA.l DATA_15E715,x                 ; $13:DC62: BF 15 E7 15 ;
                STA $0B00,x                 ; $13:DC66: 9D 00 0B    ;
                LDA.l DATA_15E735,x                 ; $13:DC69: BF 35 E7 15 ;
                STA $0B20,x                 ; $13:DC6D: 9D 20 0B    ;
                LDA.l DATA_15E775,x                 ; $13:DC70: BF 75 E7 15 ;
                STA $0B60,x                 ; $13:DC74: 9D 60 0B    ;
                LDA.l DATA_15E795,x                 ; $13:DC77: BF 95 E7 15 ;
                STA $0B80,x                 ; $13:DC7B: 9D 80 0B    ;
                LDA.l DATA_15E7B5,x                 ; $13:DC7E: BF B5 E7 15 ;
                STA $0BA0,x                 ; $13:DC82: 9D A0 0B    ;
                LDA.l DATA_15E7D5,x                 ; $13:DC85: BF D5 E7 15 ;
                STA $0BC0,x                 ; $13:DC89: 9D C0 0B    ;
                LDA.l DATA_15E7F5,x                 ; $13:DC8C: BF F5 E7 15 ;
                STA $0BE0,x                 ; $13:DC90: 9D E0 0B    ;
                INX                         ; $13:DC93: E8          ;
                INX                         ; $13:DC94: E8          ;
                CPX #$20                    ; $13:DC95: E0 20       ;
                BNE CODE_13DC62             ; $13:DC97: D0 C9       ;
                LDX #$00                    ; $13:DC99: A2 00       ;
CODE_13DC9B:    LDA.l DATA_15E815,x                 ; $13:DC9B: BF 15 E8 15 ;
                STA $0B40,x                 ; $13:DC9F: 9D 40 0B    ;
                INX                         ; $13:DCA2: E8          ;
                INX                         ; $13:DCA3: E8          ;
                CPX #$20                    ; $13:DCA4: E0 20       ;
                BNE CODE_13DC9B             ; $13:DCA6: D0 F3       ;
                SEP #$20                    ; $13:DCA8: E2 20       ;
                BRL CODE_13DEDC             ; $13:DCAA: 82 2F 02    ;

                REP #$20                    ; $13:DCAD: C2 20       ;
                LDX #$00                    ; $13:DCAF: A2 00       ;
CODE_13DCB1:    LDA.w DATA_11C9EC,x                 ; $13:DCB1: BD EC C9    ;
                STA $0B00,x                 ; $13:DCB4: 9D 00 0B    ;
                INX                         ; $13:DCB7: E8          ;
                INX                         ; $13:DCB8: E8          ;
                CPX #$08                    ; $13:DCB9: E0 08       ;
                BCC CODE_13DCB1             ; $13:DCBB: 90 F4       ;
                SEP #$20                    ; $13:DCBD: E2 20       ;
                BRL CODE_13DEDC             ; $13:DCBF: 82 1A 02    ;

CODE_13DCC2:    PHX                         ; $13:DCC2: DA          ;
                REP #$20                    ; $13:DCC3: C2 20       ;
                LDX #$00                    ; $13:DCC5: A2 00       ;
CODE_13DCC7:    LDA.l DATA_14BAE0,x                 ; $13:DCC7: BF E0 BA 14 ;
                STA $0CA0,x                 ; $13:DCCB: 9D A0 0C    ;
                INX                         ; $13:DCCE: E8          ;
                INX                         ; $13:DCCF: E8          ;
                CPX #$20                    ; $13:DCD0: E0 20       ;
                BNE CODE_13DCC7             ; $13:DCD2: D0 F3       ;
                SEP #$20                    ; $13:DCD4: E2 20       ;
                PLX                         ; $13:DCD6: FA          ;
                BRL CODE_13DEDC             ; $13:DCD7: 82 02 02    ;

DATA_13DCDA:    db $00,$00,$00,$00,$00,$00,$60,$00              ;
                db $00,$00,$00,$00,$C0,$00                      ;

DATA_13DCE8:    db $51,$7F,$40,$49,$51,$7F,$F5,$7E              ;
                db $51,$7F,$40,$49,$F5,$7E                      ;

CODE_13DCF6:    REP #$30                ; $13:DCF6: C2 30       ; Accumulator and Index = 16-bit.
                LDA $0635               ; $13:DCF8: AD 35 06    ; \ Get world number * 2 into index.
                AND #$000F              ; $13:DCFB: 29 0F 00    ;  |
                ASL A                   ; $13:DCFE: 0A          ;  |
                TAX                     ; $13:DCFF: AA          ; /
                LDA.l DATA_13DCE8,x     ; $13:DD00: BF E8 DC 13 ; \ Get BG colour for the 'World x-x' screen.  
                STA $0B00               ; $13:DD04: 8D 00 0B    ; /
                LDA.l DATA_13DCDA,x     ; $13:DD07: BF DA DC 13 ; \ Get index for different palette set.     
                TAX                     ; $13:DD0B: AA          ; /
                LDY #$0000              ; $13:DD0C: A0 00 00    ; \ Y = #$0000.
CODE_13DD0F:    LDA.l DATA_15F555,x     ; $13:DD0F: BF 55 F5 15 ;  | Load colours into palette 1.
                STA $0B20,y             ; $13:DD13: 99 20 0B    ;  |
                LDA.l DATA_15F575,x     ; $13:DD16: BF 75 F5 15 ;  | Load colours into palette 2. 
                STA $0B40,y             ; $13:DD1A: 99 40 0B    ;  |
                LDA.l DATA_15F595,x     ; $13:DD1D: BF 95 F5 15 ;  | Load colours into palette 7. 
                STA $0BE0,y             ; $13:DD21: 99 E0 0B    ; /
                INX                     ; $13:DD24: E8          ; \ Get to next colours.
                INX                     ; $13:DD25: E8          ;  |
                INY                     ; $13:DD26: C8          ;  |
                INY                     ; $13:DD27: C8          ;  |
                CPY #$0020              ; $13:DD28: C0 20 00    ;  | Check if full palette has been uploaded.
                BNE CODE_13DD0F         ; $13:DD2B: D0 E2       ; / If not, loop.
                LDA #$7FFF              ; $13:DD2D: A9 FF 7F    ; \ Palette 3 colours D-F = white.
                STA $0B7A               ; $13:DD30: 8D 7A 0B    ;  |
                STA $0B7C               ; $13:DD33: 8D 7C 0B    ;  |
                STA $0B7E               ; $13:DD36: 8D 7E 0B    ; /
                LDA #$2896              ; $13:DD39: A9 96 28    ; \ Palette 5 colour 9-B = pink-ish colours.
                STA $0BB2               ; $13:DD3C: 8D B2 0B    ;  |
                LDA #$495F              ; $13:DD3F: A9 5F 49    ;  |
                STA $0BB4               ; $13:DD42: 8D B4 0B    ;  |
                LDA #$6E9F              ; $13:DD45: A9 9F 6E    ;  |
                STA $0BB6               ; $13:DD48: 8D B6 0B    ; /
                SEP #$30                ; $13:DD4B: E2 30       ; Accumulator and Index = 8-bit.
                BRL CODE_13DEDC             ; $13:DD4D: 82 8C 01    ;

CODE_13DD50:    LDA $0533                   ; $13:DD50: AD 33 05    ;
                CMP #$11                    ; $13:DD53: C9 11       ;
                BNE CODE_13DD62             ; $13:DD55: D0 0B       ;
                LDA $0534                   ; $13:DD57: AD 34 05    ;
                CMP #$03                    ; $13:DD5A: C9 03       ;
                BEQ CODE_13DD8D             ; $13:DD5C: F0 2F       ;
                CMP #$04                    ; $13:DD5E: C9 04       ;
                BEQ CODE_13DD8D             ; $13:DD60: F0 2B       ;
CODE_13DD62:    LDA $0533                   ; $13:DD62: AD 33 05    ;
                CMP #$13                    ; $13:DD65: C9 13       ;
                BNE CODE_13DD70             ; $13:DD67: D0 07       ;
                LDA $0534                   ; $13:DD69: AD 34 05    ;
                CMP #$05                    ; $13:DD6C: C9 05       ;
                BEQ CODE_13DD8D             ; $13:DD6E: F0 1D       ;
CODE_13DD70:    REP #$20                    ; $13:DD70: C2 20       ;
                LDX #$00                    ; $13:DD72: A2 00       ;
CODE_13DD74:    LDA.l DATA_14B9BC,x                 ; $13:DD74: BF BC B9 14 ;
                STA $0B00,x                 ; $13:DD78: 9D 00 0B    ;
                LDA.l DATA_14B9CC,x                 ; $13:DD7B: BF CC B9 14 ;
                STA $0B10,x                 ; $13:DD7F: 9D 10 0B    ;
                INX                         ; $13:DD82: E8          ;
                INX                         ; $13:DD83: E8          ;
                CPX #$10                    ; $13:DD84: E0 10       ;
                BNE CODE_13DD74             ; $13:DD86: D0 EC       ;
                SEP #$20                    ; $13:DD88: E2 20       ;
                BRL CODE_13DEDC             ; $13:DD8A: 82 4F 01    ;

CODE_13DD8D:    RTL                         ; $13:DD8D: 6B          ;

CODE_13DD8E:    REP #$20                    ; $13:DD8E: C2 20       ;
                LDX #$00                    ; $13:DD90: A2 00       ;
CODE_13DD92:    LDA.l DATA_14BB00,x                 ; $13:DD92: BF 00 BB 14 ;
                STA $0B00,x                 ; $13:DD96: 9D 00 0B    ;
                LDA.l DATA_14BB20,x                 ; $13:DD99: BF 20 BB 14 ;
                STA $0B20,x                 ; $13:DD9D: 9D 20 0B    ;
                LDA.l DATA_14BB40,x                 ; $13:DDA0: BF 40 BB 14 ;
                STA $0B40,x                 ; $13:DDA4: 9D 40 0B    ;
                LDA.l DATA_14BB60,x                 ; $13:DDA7: BF 60 BB 14 ;
                STA $0B60,x                 ; $13:DDAB: 9D 60 0B    ;
                LDA.l DATA_14BB80,x                 ; $13:DDAE: BF 80 BB 14 ;
                STA $0B80,x                 ; $13:DDB2: 9D 80 0B    ;
                LDA.l DATA_14BBA0,x                 ; $13:DDB5: BF A0 BB 14 ;
                STA $0BA0,x                 ; $13:DDB9: 9D A0 0B    ;
                LDA.l DATA_14BBC0,x                 ; $13:DDBC: BF C0 BB 14 ;
                STA $0BC0,x                 ; $13:DDC0: 9D C0 0B    ;
                LDA.l DATA_14BBE0,x                 ; $13:DDC3: BF E0 BB 14 ;
                STA $0BE0,x                 ; $13:DDC7: 9D E0 0B    ;
                LDA.l DATA_14BC00,x                 ; $13:DDCA: BF 00 BC 14 ;
                STA $0C00,x                 ; $13:DDCE: 9D 00 0C    ;
                LDA.l DATA_14BC20,x                 ; $13:DDD1: BF 20 BC 14 ;
                STA $0C20,x                 ; $13:DDD5: 9D 20 0C    ;
                LDA.l DATA_14BC40,x                 ; $13:DDD8: BF 40 BC 14 ;
                STA $0C40,x                 ; $13:DDDC: 9D 40 0C    ;
                LDA.l DATA_14BC60,x                 ; $13:DDDF: BF 60 BC 14 ;
                STA $0C60,x                 ; $13:DDE3: 9D 60 0C    ;
                LDA.l DATA_14BC80,x                 ; $13:DDE6: BF 80 BC 14 ;
                STA $0C80,x                 ; $13:DDEA: 9D 80 0C    ;
                LDA.l DATA_14BCA0,x                 ; $13:DDED: BF A0 BC 14 ;
                STA $0CA0,x                 ; $13:DDF1: 9D A0 0C    ;
                LDA.l DATA_14BCC0,x                 ; $13:DDF4: BF C0 BC 14 ;
                STA $0CC0,x                 ; $13:DDF8: 9D C0 0C    ;
                LDA.l DATA_14BCE0,x                 ; $13:DDFB: BF E0 BC 14 ;
                STA $0CE0,x                 ; $13:DDFF: 9D E0 0C    ;
                INX                         ; $13:DE02: E8          ;
                INX                         ; $13:DE03: E8          ;
                CPX #$20                    ; $13:DE04: E0 20       ;
                BNE CODE_13DD92             ; $13:DE06: D0 8A       ;
                SEP #$20                    ; $13:DE08: E2 20       ;
                BRL CODE_13DEDC             ; $13:DE0A: 82 CF 00    ;

CODE_13DE0D:    REP #$20                    ; $13:DE0D: C2 20       ;
                LDX #$00                    ; $13:DE0F: A2 00       ;
CODE_13DE11:    LDA.l DATA_14BD00,x                 ; $13:DE11: BF 00 BD 14 ;
                STA $0B00,x                 ; $13:DE15: 9D 00 0B    ;
                LDA.l DATA_14BD20,x                 ; $13:DE18: BF 20 BD 14 ;
                STA $0B20,x                 ; $13:DE1C: 9D 20 0B    ;
                LDA.l DATA_14BD40,x                 ; $13:DE1F: BF 40 BD 14 ;
                STA $0B40,x                 ; $13:DE23: 9D 40 0B    ;
                LDA.l DATA_14BD60,x                 ; $13:DE26: BF 60 BD 14 ;
                STA $0B60,x                 ; $13:DE2A: 9D 60 0B    ;
                LDA.l DATA_14BD80,x                 ; $13:DE2D: BF 80 BD 14 ;
                STA $0B80,x                 ; $13:DE31: 9D 80 0B    ;
                LDA.l DATA_14BDA0,x                 ; $13:DE34: BF A0 BD 14 ;
                STA $0BA0,x                 ; $13:DE38: 9D A0 0B    ;
                LDA.l DATA_14BDC0,x                 ; $13:DE3B: BF C0 BD 14 ;
                STA $0BC0,x                 ; $13:DE3F: 9D C0 0B    ;
                LDA.l DATA_14BDE0,x                 ; $13:DE42: BF E0 BD 14 ;
                STA $0BE0,x                 ; $13:DE46: 9D E0 0B    ;
                LDA.l DATA_14BE00,x                 ; $13:DE49: BF 00 BE 14 ;
                STA $0C00,x                 ; $13:DE4D: 9D 00 0C    ;
                LDA.l DATA_14BE20,x                 ; $13:DE50: BF 20 BE 14 ;
                STA $0C20,x                 ; $13:DE54: 9D 20 0C    ;
                LDA.l DATA_14BE40,x                 ; $13:DE57: BF 40 BE 14 ;
                STA $0C40,x                 ; $13:DE5B: 9D 40 0C    ;
                LDA.l DATA_14BE60,x                 ; $13:DE5E: BF 60 BE 14 ;
                STA $0C60,x                 ; $13:DE62: 9D 60 0C    ;
                LDA.l DATA_14BE80,x                 ; $13:DE65: BF 80 BE 14 ;
                STA $0C80,x                 ; $13:DE69: 9D 80 0C    ;
                LDA.l DATA_14BEA0,x                 ; $13:DE6C: BF A0 BE 14 ;
                STA $0CA0,x                 ; $13:DE70: 9D A0 0C    ;
                LDA.l DATA_14BEC0,x                 ; $13:DE73: BF C0 BE 14 ;
                STA $0CC0,x                 ; $13:DE77: 9D C0 0C    ;
                LDA.l DATA_14BEE0,x                 ; $13:DE7A: BF E0 BE 14 ;
                STA $0CE0,x                 ; $13:DE7E: 9D E0 0C    ;
                INX                         ; $13:DE81: E8          ;
                INX                         ; $13:DE82: E8          ;
                CPX #$20                    ; $13:DE83: E0 20       ;
                BNE CODE_13DE11             ; $13:DE85: D0 8A       ;
                SEP #$20                    ; $13:DE87: E2 20       ;
                BRL CODE_13DEDC             ; $13:DE89: 82 50 00    ;

CODE_13DE8C:    REP #$20                    ; $13:DE8C: C2 20       ;
                LDX #$00                    ; $13:DE8E: A2 00       ;
CODE_13DE90:    LDA.l DATA_15E715,x                 ; $13:DE90: BF 15 E7 15 ;
                STA $0B00,x                 ; $13:DE94: 9D 00 0B    ;
                LDA.l DATA_15E735,x                 ; $13:DE97: BF 35 E7 15 ;
                STA $0B20,x                 ; $13:DE9B: 9D 20 0B    ;
                LDA.l DATA_15E755,x                 ; $13:DE9E: BF 55 E7 15 ;
                STA $0B40,x                 ; $13:DEA2: 9D 40 0B    ;
                LDA.l DATA_15E775,x                 ; $13:DEA5: BF 75 E7 15 ;
                STA $0B60,x                 ; $13:DEA9: 9D 60 0B    ;
                LDA.l DATA_15E795,x                 ; $13:DEAC: BF 95 E7 15 ;
                STA $0B80,x                 ; $13:DEB0: 9D 80 0B    ;
                LDA.l DATA_15E7B5,x                 ; $13:DEB3: BF B5 E7 15 ;
                STA $0BA0,x                 ; $13:DEB7: 9D A0 0B    ;
                LDA.l DATA_15E7D5,x                 ; $13:DEBA: BF D5 E7 15 ;
                STA $0BC0,x                 ; $13:DEBE: 9D C0 0B    ;
                LDA.l DATA_15E7F5,x                 ; $13:DEC1: BF F5 E7 15 ;
                STA $0BE0,x                 ; $13:DEC5: 9D E0 0B    ;
                INX                         ; $13:DEC8: E8          ;
                INX                         ; $13:DEC9: E8          ;
                CPX #$20                    ; $13:DECA: E0 20       ;
                BNE CODE_13DE90             ; $13:DECC: D0 C2       ;
                LDX #$7E                    ; $13:DECE: A2 7E       ;
CODE_13DED0:    LDA.w DATA_11BB1C,x                 ; $13:DED0: BD 1C BB    ;
                STA $0C20,x                 ; $13:DED3: 9D 20 0C    ;
                DEX                         ; $13:DED6: CA          ;
                DEX                         ; $13:DED7: CA          ;
                BPL CODE_13DED0             ; $13:DED8: 10 F6       ;
                SEP #$20                    ; $13:DEDA: E2 20       ;
CODE_13DEDC:    LDA #$01                    ; $13:DEDC: A9 01       ;
                STA $02A9                   ; $13:DEDE: 8D A9 02    ;
                RTL                         ; $13:DEE1: 6B          ;

CODE_13DEE2:    LDA #$81                    ; $13:DEE2: A9 81       ;
                STA $0239                   ; $13:DEE4: 8D 39 02    ;
                LDA #$38                    ; $13:DEE7: A9 38       ;
                STA $023D                   ; $13:DEE9: 8D 3D 02    ;
                LDA #$52                    ; $13:DEEC: A9 52       ;
                STA $023E                   ; $13:DEEE: 8D 3E 02    ;
                LDA #$80                    ; $13:DEF1: A9 80       ;
                STA $023F                   ; $13:DEF3: 8D 3F 02    ;
                REP #$20                    ; $13:DEF6: C2 20       ;
                LDA #$3D25                  ; $13:DEF8: A9 25 3D    ;
                STA $0B00                   ; $13:DEFB: 8D 00 0B    ;
                SEP #$20                    ; $13:DEFE: E2 20       ;
                BRA CODE_13DEDC             ; $13:DF00: 80 DA       ;

PNTR_13DF02:    dl $0012D0                                      ;
                dl DATA_13DF0E                                  ;
                dl DATA_13DF2E                                  ;
                dl DATA_13DF4E                                  ;

DATA_13DF0E:    db $BC,$45,$D6,$5A,$4A,$29,$FF,$3A              ;
                db $D8,$01,$3F,$02,$BF,$3A,$9C,$2D              ;
                db $00,$00,$2F,$15,$5A,$7F,$06,$33              ;
                db $8A,$43,$3F,$02,$D8,$01,$18,$7F              ;

DATA_13DF2E:    db $BC,$45,$FF,$7F,$A5,$14,$92,$00              ;
                db $98,$00,$9F,$00,$9C,$2D,$BF,$3A              ;
                db $00,$00,$2F,$15,$95,$2C,$3A,$41              ;
                db $DF,$55,$AF,$76,$4A,$66,$A6,$51              ;

DATA_13DF4E:    db $BC,$45,$D6,$5A,$4A,$29,$FF,$3A              ;
                db $3A,$41,$DF,$55,$BF,$3A,$9C,$2D              ;
                db $00,$00,$2F,$15,$5A,$7F,$D9,$14              ;
                db $7F,$21,$1F,$03,$7A,$02,$18,$7F              ;

CODE_13DF6E:    REP #$20                    ; $13:DF6E: C2 20       ;
                LDY $04E1                   ; $13:DF70: AC E1 04    ;
                LDA $50                     ; $13:DF73: A5 50       ;
                AND #$00FF                  ; $13:DF75: 29 FF 00    ;
                CMP #$0008                  ; $13:DF78: C9 08 00    ;
                BNE CODE_13DF7F             ; $13:DF7B: D0 02       ;
                LDY $82                     ; $13:DF7D: A4 82       ;
CODE_13DF7F:    LDA $10                     ; $13:DF7F: A5 10       ;
                LSR A                       ; $13:DF81: 4A          ;
                LSR A                       ; $13:DF82: 4A          ;
                CPY #$18                    ; $13:DF83: C0 18       ;
                BCS CODE_13DF8F                     ; $13:DF85: B0 08       ;
                CPY #$01                    ; $13:DF87: C0 01       ;
                BNE CODE_13DF8E             ; $13:DF89: D0 03       ;
                LDA #$0000                  ; $13:DF8B: A9 00 00    ;
CODE_13DF8E:    LSR A                       ; $13:DF8E: 4A          ;
CODE_13DF8F:    AND #$0003                  ; $13:DF8F: 29 03 00    ;
                STA $00                     ; $13:DF92: 85 00       ;
                ASL A                       ; $13:DF94: 0A          ;
                CLC                         ; $13:DF95: 18          ;
                ADC $00                     ; $13:DF96: 65 00       ;
                TAX                         ; $13:DF98: AA          ;
                LDA.l PNTR_13DF02,x                 ; $13:DF99: BF 02 DF 13 ;
                STA $00                     ; $13:DF9D: 85 00       ;
                LDA.l PNTR_13DF02+2,x               ; $13:DF9F: BF 04 DF 13 ;
                STA $02                     ; $13:DFA3: 85 02       ;
                LDY #$00                    ; $13:DFA5: A0 00       ;
CODE_13DFA7:    LDA [$00],y                 ; $13:DFA7: B7 00       ;
                STA $0C00,y                 ; $13:DFA9: 99 00 0C    ;
                INY                         ; $13:DFAC: C8          ;
                INY                         ; $13:DFAD: C8          ;
                CPY #$20                    ; $13:DFAE: C0 20       ;
                BNE CODE_13DFA7             ; $13:DFB0: D0 F5       ;
                SEP #$20                    ; $13:DFB2: E2 20       ;
                BRL CODE_13DEDC             ; $13:DFB4: 82 25 FF    ;

PNTR_13DFB7:    dl $0012D0                                      ;
                dl DATA_13DFE7                                  ;
                dl DATA_13E007                                  ;
                dl DATA_13DFE7                                  ;
                dl $0012D0                                      ;
                dl DATA_13E0A7                                  ;
                dl DATA_13E0C7                                  ;
                dl DATA_13E0A7                                  ;
                dl $0012D0                                      ;
                dl DATA_13E067                                  ;
                dl DATA_13E087                                  ;
                dl DATA_13E067                                  ;
                dl $0012D0                                      ;
                dl DATA_13E027                                  ;
                dl DATA_13E047                                  ;
                dl DATA_13E027                                  ;

DATA_13DFE7:    db $BC,$45,$FF,$7F,$6B,$2D,$18,$23              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$D4,$29,$EC,$56,$C6,$45              ;
                db $EC,$56,$DC,$14,$96,$10,$1A,$15              ;

DATA_13E007:    db $BC,$45,$FF,$7F,$10,$42,$FF,$3F              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$79,$3E,$91,$6B,$C6,$45              ;
                db $EC,$56,$DC,$14,$96,$10,$BF,$29              ;

DATA_13E027:    db $24,$49,$FF,$7F,$6B,$2D,$18,$23              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$D4,$29,$35,$66,$6F,$6D              ;
                db $56,$7E,$92,$5B,$AB,$42,$30,$4F              ;

DATA_13E047:    db $24,$49,$FF,$7F,$10,$42,$FF,$3F              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$79,$3E,$FB,$7E,$6F,$6D              ;
                db $56,$7E,$92,$5B,$AB,$42,$F6,$67              ;

DATA_13E067:    db $BC,$45,$FF,$7F,$CE,$39,$8D,$62              ;
                db $E8,$69,$CF,$7E,$9C,$2D,$BF,$3A              ;
                db $00,$00,$D4,$29,$B9,$36,$7B,$2A              ;
                db $5F,$4B,$1F,$19,$D9,$18,$BC,$29              ;

DATA_13E087:    db $BC,$45,$FF,$7F,$94,$52,$74,$7F              ;
                db $E8,$69,$CF,$7E,$9C,$2D,$BF,$3A              ;
                db $00,$00,$79,$3E,$7F,$4F,$7B,$2A              ;
                db $5F,$4B,$1F,$19,$D9,$18,$7F,$42              ;

DATA_13E0A7:    db $24,$49,$FF,$7F,$6B,$2D,$3F,$12              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$57,$0C,$BA,$02,$59,$02              ;
                db $1F,$1F,$9F,$6E,$5F,$49,$D9,$51              ;

DATA_13E0C7:    db $24,$49,$FF,$7F,$10,$42,$9F,$2F              ;
                db $DA,$11,$3E,$1B,$9C,$2D,$BF,$3A              ;
                db $00,$00,$57,$0C,$FF,$5B,$59,$02              ;
                db $1F,$1F,$9F,$6E,$5F,$49,$BF,$6E              ;

CODE_13E0E7:    LDA $04CB                   ; $13:E0E7: AD CB 04    ;
                CMP #$3C                    ; $13:E0EA: C9 3C       ;
                BCS CODE_13E0FB                     ; $13:E0EC: B0 0D       ;
                LDA $0D0A                   ; $13:E0EE: AD 0A 0D    ;
                BEQ CODE_13E0FA             ; $13:E0F1: F0 07       ;
                STZ $0D0A                   ; $13:E0F3: 9C 0A 0D    ;
                STZ $0C                     ; $13:E0F6: 64 0C       ;
                BRA CODE_13E107             ; $13:E0F8: 80 0D       ;

CODE_13E0FA:    RTL                         ; $13:E0FA: 6B          ;

CODE_13E0FB:    LDA #$01                    ; $13:E0FB: A9 01       ;
                STA $0D0A                   ; $13:E0FD: 8D 0A 0D    ;
                LDA $10                     ; $13:E100: A5 10       ;
                AND #$06                    ; $13:E102: 29 06       ;
                LSR A                       ; $13:E104: 4A          ;
                STA $0C                     ; $13:E105: 85 0C       ;
CODE_13E107:    LDA $8F                     ; $13:E107: A5 8F       ;
                ASL A                       ; $13:E109: 0A          ;
                ASL A                       ; $13:E10A: 0A          ;
                CLC                         ; $13:E10B: 18          ;
                ADC $0C                     ; $13:E10C: 65 0C       ;
                STA $0C                     ; $13:E10E: 85 0C       ;
                ASL A                       ; $13:E110: 0A          ;
                CLC                         ; $13:E111: 18          ;
                ADC $0C                     ; $13:E112: 65 0C       ;
                TAX                         ; $13:E114: AA          ;
                LDA.l PNTR_13DFB7+2,x               ; $13:E115: BF B9 DF 13 ;
                STA $0E                     ; $13:E119: 85 0E       ;
                REP #$20                    ; $13:E11B: C2 20       ;
                LDA.l PNTR_13DFB7,x                 ; $13:E11D: BF B7 DF 13 ;
                STA $0C                     ; $13:E121: 85 0C       ;
                LDY #$00                    ; $13:E123: A0 00       ;
CODE_13E125:    LDA [$0C],y                 ; $13:E125: B7 0C       ;
                STA $0C00,y                 ; $13:E127: 99 00 0C    ;
                INY                         ; $13:E12A: C8          ;
                INY                         ; $13:E12B: C8          ;
                CPY #$20                    ; $13:E12C: C0 20       ;
                BNE CODE_13E125             ; $13:E12E: D0 F5       ;
                SEP #$20                    ; $13:E130: E2 20       ;
                BRL CODE_13DEDC             ; $13:E132: 82 A7 FD    ;

DATA_13E135:    db $9C,$01,$18,$01,$D5,$00,$92,$00              ;

DATA_13E13D:    db $1F,$33,$9B,$22,$17,$12,$93,$01              ;

DATA_13E145:    db $1C,$00,$18,$00,$14,$00,$10,$00              ;

DATA_13E14D:    db $00,$01,$03,$02,$01,$02,$03,$01              ;
    
CODE_13E155:    LDA $077C               ; $13:E155: AD 7C 07    ;
                BEQ CODE_13E192         ; $13:E158: F0 38       ;
                INC $077D                   ; $13:E15A: EE 7D 07    ;
                LDA $077D                   ; $13:E15D: AD 7D 07    ;
                CMP #$04                    ; $13:E160: C9 04       ;
                BCC CODE_13E16A             ; $13:E162: 90 06       ;
                STZ $077D                   ; $13:E164: 9C 7D 07    ;
                INC $077E                   ; $13:E167: EE 7E 07    ;
CODE_13E16A:    LDA $077E                   ; $13:E16A: AD 7E 07    ;
                AND #$07                    ; $13:E16D: 29 07       ;
                TAX                         ; $13:E16F: AA          ;
                LDA.l DATA_13E14D,x                 ; $13:E170: BF 4D E1 13 ;
                ASL A                       ; $13:E174: 0A          ;
                TAX                         ; $13:E175: AA          ;
                REP #$20                    ; $13:E176: C2 20       ;
                LDA.l DATA_13E135,x                 ; $13:E178: BF 35 E1 13 ;
                STA $0B2C                   ; $13:E17C: 8D 2C 0B    ;
                LDA.l DATA_13E13D,x                 ; $13:E17F: BF 3D E1 13 ;
                STA $0B2E                   ; $13:E183: 8D 2E 0B    ;
                LDA.l DATA_13E145,x                 ; $13:E186: BF 45 E1 13 ;
                STA $0B38                   ; $13:E18A: 8D 38 0B    ;
                SEP #$20                    ; $13:E18D: E2 20       ;
                BRL CODE_13DEDC             ; $13:E18F: 82 4A FD    ;

CODE_13E192:    RTL                         ; $13:E192: 6B          ;

DATA_13E193:    db $35,$08                                      ;

DATA_13E195:    db $AC,$04                                      ;

DATA_13E197:    db $49,$04,$BF,$10,$37,$08,$B0,$04              ;
                db $DF,$39,$BF,$10,$37,$08,$3F,$67              ;
                db $DF,$39,$BF,$10,$61,$04,$61,$04              ;
                db $61,$04                                      ;

DATA_13E1B1:    db $1A,$07,$06,$07,$14,$07,$06,$07              ;

CODE_13E1B9:    LDA $077F               ; $13:E1B9: AD 7F 07    ;
                BNE CODE_13E1C2         ; $13:E1BC: D0 04       ;
                STZ $0780                   ; $13:E1BE: 9C 80 07    ;
                RTL                         ; $13:E1C1: 6B          ;

CODE_13E1C2:    LDA $9C                     ; $13:E1C2: A5 9C       ;
                BEQ CODE_13E20E             ; $13:E1C4: F0 48       ;
                LDX $042D                   ; $13:E1C6: AE 2D 04    ;
                LDA $90,x                   ; $13:E1C9: B5 90       ;
                CMP #$3D                    ; $13:E1CB: C9 3D       ;
                BNE CODE_13E20E             ; $13:E1CD: D0 3F       ;
                INC $0781                   ; $13:E1CF: EE 81 07    ;
                LDA $0780                   ; $13:E1D2: AD 80 07    ;
                AND #$07                    ; $13:E1D5: 29 07       ;
                TAX                         ; $13:E1D7: AA          ;
                LDA.l DATA_13E1B1,x                 ; $13:E1D8: BF B1 E1 13 ;
                CMP $0781                   ; $13:E1DC: CD 81 07    ;
                BNE CODE_13E1F5             ; $13:E1DF: D0 14       ;
                INC $0780                   ; $13:E1E1: EE 80 07    ;
                LDA $0780                   ; $13:E1E4: AD 80 07    ;
                AND #$07                    ; $13:E1E7: 29 07       ;
                CMP #$01                    ; $13:E1E9: C9 01       ;
                BNE CODE_13E1F2             ; $13:E1EB: D0 05       ;
                LDA #$42                    ; $13:E1ED: A9 42       ;
                STA $1DE3                   ; $13:E1EF: 8D E3 1D    ;
CODE_13E1F2:    STZ $0781                   ; $13:E1F2: 9C 81 07    ;
CODE_13E1F5:    LDA $0780                   ; $13:E1F5: AD 80 07    ;
                AND #$07                    ; $13:E1F8: 29 07       ;
                BEQ CODE_13E23D             ; $13:E1FA: F0 41       ;
                DEC A                       ; $13:E1FC: 3A          ;
                CMP #$04                    ; $13:E1FD: C9 04       ;
                BCC CODE_13E204             ; $13:E1FF: 90 03       ;
                EOR #$07                    ; $13:E201: 49 07       ;
                DEC A                       ; $13:E203: 3A          ;
CODE_13E204:    ASL A                       ; $13:E204: 0A          ;
                STA $00                     ; $13:E205: 85 00       ;
                ASL A                       ; $13:E207: 0A          ;
                CLC                         ; $13:E208: 18          ;
                ADC $00                     ; $13:E209: 65 00       ;
                TAX                         ; $13:E20B: AA          ;
                BRA CODE_13E23F             ; $13:E20C: 80 31       ;

CODE_13E20E:    LDA $0780                   ; $13:E20E: AD 80 07    ;
                AND #$07                    ; $13:E211: 29 07       ;
                BEQ CODE_13E238             ; $13:E213: F0 23       ;
                INC $0781                   ; $13:E215: EE 81 07    ;
                TAX                         ; $13:E218: AA          ;
                LDA.l DATA_13E1B1,x                 ; $13:E219: BF B1 E1 13 ;
                CMP $0781                   ; $13:E21D: CD 81 07    ;
                BNE CODE_13E1F5             ; $13:E220: D0 D3       ;
                STZ $0781                   ; $13:E222: 9C 81 07    ;
                LDA $0780                   ; $13:E225: AD 80 07    ;
                AND #$07                    ; $13:E228: 29 07       ;
                CMP #$04                    ; $13:E22A: C9 04       ;
                BCS CODE_13E233                     ; $13:E22C: B0 05       ;
                DEC $0780                   ; $13:E22E: CE 80 07    ;
                BRA CODE_13E1F5             ; $13:E231: 80 C2       ;

CODE_13E233:    INC $0780                   ; $13:E233: EE 80 07    ;
                BRA CODE_13E1F5             ; $13:E236: 80 BD       ;

CODE_13E238:    LDA #$FF                    ; $13:E238: A9 FF       ;
                STA $0781                   ; $13:E23A: 8D 81 07    ;
CODE_13E23D:    LDX #$18                    ; $13:E23D: A2 18       ;
CODE_13E23F:    REP #$20                    ; $13:E23F: C2 20       ;
                LDA.l DATA_13E193,x                 ; $13:E241: BF 93 E1 13 ;
                STA $0BE6                   ; $13:E245: 8D E6 0B    ;
                LDA.l DATA_13E195,x                 ; $13:E248: BF 95 E1 13 ;
                STA $0BE8                   ; $13:E24C: 8D E8 0B    ;
                LDA.l DATA_13E197,x                 ; $13:E24F: BF 97 E1 13 ;
                STA $0BEA                   ; $13:E253: 8D EA 0B    ;
                SEP #$20                    ; $13:E256: E2 20       ;
                BRL CODE_13DEDC             ; $13:E258: 82 81 FC    ;

CODE_13E25B:    REP #$20                    ; $13:E25B: C2 20       ;
                STZ $0B00                   ; $13:E25D: 9C 00 0B    ;
                LDX #$00                    ; $13:E260: A2 00       ;
CODE_13E262:    LDA.l DATA_14BFA0,x                 ; $13:E262: BF A0 BF 14 ;
                STA $0B20,x                 ; $13:E266: 9D 20 0B    ;
                LDA.l DATA_14BFC0,x                 ; $13:E269: BF C0 BF 14 ;
                STA $0B80,x                 ; $13:E26D: 9D 80 0B    ;
                LDA.l DATA_14BFE0,x                 ; $13:E270: BF E0 BF 14 ;
                STA $0BE0,x                 ; $13:E274: 9D E0 0B    ;
                INX                         ; $13:E277: E8          ;
                INX                         ; $13:E278: E8          ;
                CPX #$20                    ; $13:E279: E0 20       ;
                BNE CODE_13E262             ; $13:E27B: D0 E5       ;
                SEP #$20                    ; $13:E27D: E2 20       ;
                BRL CODE_13DEDC             ; $13:E27F: 82 5A FC    ;

DATA_13E282:    db $FA,$7F,$F8,$7F,$D7,$7F,$D7,$7F              ;
                db $B5,$7F,$95,$7F,$53,$7F,$32,$7F              ;
                db $53,$7F,$95,$7F,$CF,$72,$AE,$6E              ;
                db $CF,$72,$F0,$76,$11,$7B,$FA,$7F              ;
                db $F9,$7F,$F7,$7F,$D7,$7F,$B5,$7F              ;
                db $B6,$7F,$95,$7F,$53,$7F,$32,$7F              ;
                db $53,$7F,$F0,$76,$CF,$72,$AE,$6E              ;
                db $CF,$72,$F0,$76,$FB,$7F,$FA,$7F              ;
                db $F8,$7F,$D7,$7F,$B5,$7F,$D6,$7F              ;
                db $B5,$7F,$74,$7F,$52,$7F,$52,$7F              ;
                db $11,$7B,$F0,$76,$CF,$72,$AE,$6E              ;
                db $CF,$72,$FB,$7F,$FA,$7F,$F8,$7F              ;
                db $D7,$7F,$B5,$7F,$D7,$7F,$B6,$7F              ;
                db $95,$7F,$53,$7F,$32,$7F,$11,$7F              ;
                db $11,$77,$F0,$72,$CF,$6E,$AE,$72              ;
                db $FB,$7F,$FA,$7F,$F8,$7F,$D7,$7F              ;
                db $B5,$7F,$D7,$7F,$B6,$7F,$95,$7F              ;
                db $53,$7F,$32,$7F,$32,$7F,$11,$7B              ;
                db $F0,$76,$CF,$72,$AE,$6E,$FB,$7F              ;
                db $FA,$7F,$F8,$7F,$D7,$7F,$B5,$7F              ;
                db $D7,$7F,$B6,$7F,$95,$7F,$53,$7F              ;
                db $32,$7F,$32,$7F,$11,$7B,$F0,$76              ;
                db $CF,$72,$AE,$6E,$FA,$7F,$FB,$7F              ;
                db $FA,$7F,$F8,$7F,$B5,$7F,$D7,$7F              ;
                db $B6,$7F,$95,$7F,$53,$7F,$32,$7F              ;
                db $32,$7F,$11,$7B,$F0,$76,$CF,$72              ;
                db $AE,$6E,$F8,$7F,$FA,$7F,$FB,$7F              ;
                db $FA,$7F,$B5,$7F,$B6,$7F,$D7,$7F              ;
                db $B6,$7F,$95,$7F,$53,$7F,$32,$7F              ;
                db $11,$7B,$F0,$76,$CF,$72,$AE,$6E              ;
                db $D7,$7F,$F8,$7F,$FA,$7F,$FB,$7F              ;
                db $B5,$7F,$95,$7F,$B6,$7F,$D7,$7F              ;
                db $B6,$7F,$95,$7F,$11,$7B,$32,$7F              ;
                db $11,$7B,$F0,$76,$CF,$72,$D7,$7F              ;
                db $D7,$7F,$F8,$7F,$FA,$7F,$B5,$7F              ;
                db $53,$7F,$95,$7F,$B6,$7F,$D7,$7F              ;
                db $B6,$7F,$F0,$76,$11,$7B,$32,$7F              ;
                db $11,$7B,$F0,$76,$D7,$7F,$D7,$7F              ;
                db $D7,$7F,$F8,$7F,$B5,$7F,$32,$7F              ;
                db $53,$7F,$95,$7F,$B6,$7F,$D7,$7F              ;
                db $CF,$72,$F0,$76,$11,$7B,$32,$7F              ;
                db $11,$7B,$F8,$7F,$D7,$7F,$D7,$7F              ;
                db $D7,$7F,$B5,$7F,$53,$7F,$32,$7F              ;
                db $53,$7F,$95,$7F,$B6,$7F,$AE,$6E              ;
                db $CF,$72,$F0,$76,$11,$7B,$32,$7F              ;
   
DATA_13E3EA:    db $00,$00,$1E,$00,$3C,$00,$5A,$00              ;
                db $78,$00,$96,$00,$B4,$00,$D2,$00              ;
                db $F0,$00,$0E,$01,$2C,$01,$4A,$01              ;

CODE_13E402:    LDA $0784               ; $13:E402: AD 84 07    ;
                BEQ CODE_13E448             ; $13:E405: F0 41       ;
                INC $0785                   ; $13:E407: EE 85 07    ;
                LDA $0785                   ; $13:E40A: AD 85 07    ;
                CMP #$06                    ; $13:E40D: C9 06       ;
                BCC CODE_13E421             ; $13:E40F: 90 10       ;
                STZ $0785                   ; $13:E411: 9C 85 07    ;
                INC $0786                   ; $13:E414: EE 86 07    ;
                LDA $0786                   ; $13:E417: AD 86 07    ;
                CMP #$0C                    ; $13:E41A: C9 0C       ;
                BNE CODE_13E421             ; $13:E41C: D0 03       ;
                STZ $0786                   ; $13:E41E: 9C 86 07    ;
CODE_13E421:    REP #$30                    ; $13:E421: C2 30       ;
                LDA $0786                   ; $13:E423: AD 86 07    ;
                AND #$00FF                  ; $13:E426: 29 FF 00    ;
                ASL A                       ; $13:E429: 0A          ;
                TAX                         ; $13:E42A: AA          ;
                LDA.l DATA_13E3EA,x                 ; $13:E42B: BF EA E3 13 ;
                TAX                         ; $13:E42F: AA          ;
                LDY #$0000                  ; $13:E430: A0 00 00    ;
CODE_13E433:    LDA.l DATA_13E282,x                 ; $13:E433: BF 82 E2 13 ;
                STA $0B22,y                 ; $13:E437: 99 22 0B    ;
                INX                         ; $13:E43A: E8          ;
                INX                         ; $13:E43B: E8          ;
                INY                         ; $13:E43C: C8          ;
                INY                         ; $13:E43D: C8          ;
                CPY #$001E                  ; $13:E43E: C0 1E 00    ;
                BNE CODE_13E433             ; $13:E441: D0 F0       ;
                SEP #$30                    ; $13:E443: E2 30       ;
                BRL CODE_13DEDC             ; $13:E445: 82 94 FA    ;

CODE_13E448:    RTL                         ; $13:E448: 6B          ;

DATA_13E449:    db $04,$0F,$11,$11,$0F,$04,$05                  ;

DATA_13E450:    db $01,$00,$03,$04,$06,$04,$04                  ;

CODE_13E457:    LDX #$06                    ; $13:E457: A2 06       ;
CODE_13E459:    LDA $0533                   ; $13:E459: AD 33 05    ;
                CMP.l DATA_13E449,x                 ; $13:E45C: DF 49 E4 13 ;
                BNE CODE_13E46B             ; $13:E460: D0 09       ;
                LDA $0534                   ; $13:E462: AD 34 05    ;
                CMP.l DATA_13E450,x                 ; $13:E465: DF 50 E4 13 ;
                BEQ CODE_13E485             ; $13:E469: F0 1A       ;
CODE_13E46B:    DEX                         ; $13:E46B: CA          ;
                BPL CODE_13E459             ; $13:E46C: 10 EB       ;
                LDA $0533                   ; $13:E46E: AD 33 05    ;
                CMP #$0F                    ; $13:E471: C9 0F       ;
                BNE CODE_13E484             ; $13:E473: D0 0F       ;
                LDA $0534                   ; $13:E475: AD 34 05    ;
                CMP #$04                    ; $13:E478: C9 04       ;
                BNE CODE_13E484             ; $13:E47A: D0 08       ;
                LDA $051B                   ; $13:E47C: AD 1B 05    ;
                BNE CODE_13E484             ; $13:E47F: D0 03       ;
                JSR CODE_13E49D             ; $13:E481: 20 9D E4    ;
CODE_13E484:    RTL                         ; $13:E484: 6B          ;

CODE_13E485:    JSR CODE_13E489             ; $13:E485: 20 89 E4    ;
                RTL                         ; $13:E488: 6B          ;

CODE_13E489:    TXA                         ; $13:E489: 8A          ;
                ASL A                       ; $13:E48A: 0A          ;
                TAX                         ; $13:E48B: AA          ;
                JMP (PNTR_13E48F,x)     ; $13:E48C: 7C 8F E4    ;

PNTR_13E48F:    dw CODE_13E49D                                  ;
                dw CODE_13E49D                                  ;
                dw CODE_13E4B8                                  ;
                dw CODE_13E4B8                                  ;
                dw CODE_13E49D                                  ;
                dw CODE_13E49D                                  ;
                dw CODE_13E4CC                                  ;
                    
CODE_13E49D:    REP #$20                ; $13:E49D: C2 20       ;
                LDX #$00                ; $13:E49F: A2 00       ;
CODE_13E4A1:    LDA.l DATA_14BF00,x                 ; $13:E4A1: BF 00 BF 14 ;
                STA $0B20,x                 ; $13:E4A5: 9D 20 0B    ;
                LDA.l DATA_14BF20,x                 ; $13:E4A8: BF 20 BF 14 ;
                STA $0BE0,x                 ; $13:E4AC: 9D E0 0B    ;
                INX                         ; $13:E4AF: E8          ;
                INX                         ; $13:E4B0: E8          ;
                CPX #$20                    ; $13:E4B1: E0 20       ;
                BNE CODE_13E4A1             ; $13:E4B3: D0 EC       ;
                SEP #$20                    ; $13:E4B5: E2 20       ;
                RTS                         ; $13:E4B7: 60          ;

CODE_13E4B8:    REP #$20                    ; $13:E4B8: C2 20       ;
                LDX #$00                    ; $13:E4BA: A2 00       ;
CODE_13E4BC:    LDA.l DATA_14BF40,x                 ; $13:E4BC: BF 40 BF 14 ;
                STA $0BE0,x                 ; $13:E4C0: 9D E0 0B    ;
                INX                         ; $13:E4C3: E8          ;
                INX                         ; $13:E4C4: E8          ;
                CPX #$20                    ; $13:E4C5: E0 20       ;
                BNE CODE_13E4BC             ; $13:E4C7: D0 F3       ;
                SEP #$20                    ; $13:E4C9: E2 20       ;
                RTS                         ; $13:E4CB: 60          ;

CODE_13E4CC:    REP #$20                    ; $13:E4CC: C2 20       ;
                LDX #$00                    ; $13:E4CE: A2 00       ;
CODE_13E4D0:    LDA.l DATA_14BF60,x                 ; $13:E4D0: BF 60 BF 14 ;
                STA $0BE0,x                 ; $13:E4D4: 9D E0 0B    ;
                INX                         ; $13:E4D7: E8          ;
                INX                         ; $13:E4D8: E8          ;
                CPX #$20                    ; $13:E4D9: E0 20       ;
                BNE CODE_13E4D0             ; $13:E4DB: D0 F3       ;
                SEP #$20                    ; $13:E4DD: E2 20       ;
                RTS                         ; $13:E4DF: 60          ;

DATA_13E4E0:    db $7F,$77                                      ;

DATA_13E4E2:    db $E7,$34                                      ;

DATA_13E4E4:    db $E7,$34                                      ;

DATA_13E4E6:    db $E7,$34,$97,$5E,$09,$25,$2E,$29              ;
                db $EF,$35,$AF,$49,$2B,$15,$75,$1D              ;
                db $F7,$32,$E7,$34,$97,$0A,$3C,$13              ;
                db $DF,$2F                                      ;

CODE_13E500:    LDA $0791                   ; $13:E500: AD 91 07    ;
                BNE CODE_13E506             ; $13:E503: D0 01       ;
                RTL                         ; $13:E505: 6B          ;

CODE_13E506:    PHB                         ; $13:E506: 8B          ;
                PHK                         ; $13:E507: 4B          ;
                PLB                         ; $13:E508: AB          ;
                LDA $10                     ; $13:E509: A5 10       ;
                AND #$38                    ; $13:E50B: 29 38       ;
                CMP #$20                    ; $13:E50D: C9 20       ;
                BCC CODE_13E515             ; $13:E50F: 90 04       ;
                AND #$18                    ; $13:E511: 29 18       ;
                EOR #$18                    ; $13:E513: 49 18       ;
CODE_13E515:    TAY                         ; $13:E515: A8          ;
                REP #$20                    ; $13:E516: C2 20       ;
                LDA DATA_13E4E0,y                   ; $13:E518: B9 E0 E4    ;
                STA $0B38                   ; $13:E51B: 8D 38 0B    ;
                LDA DATA_13E4E2,y                   ; $13:E51E: B9 E2 E4    ;
                STA $0B3A                   ; $13:E521: 8D 3A 0B    ;
                LDA DATA_13E4E4,y                   ; $13:E524: B9 E4 E4    ;
                STA $0B3C                   ; $13:E527: 8D 3C 0B    ;
                LDA DATA_13E4E6,y                   ; $13:E52A: B9 E6 E4    ;
                STA $0B3E                   ; $13:E52D: 8D 3E 0B    ;
                SEP #$20                    ; $13:E530: E2 20       ;
                PLB                         ; $13:E532: AB          ;
                BRL CODE_13DEDC             ; $13:E533: 82 A6 F9    ;

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
                db $FF,$FF                                      ; /

CODE_13E700:    LDA #$80                ; $13:E700: A9 80       ;
                BEQ CODE_13E706             ; $13:E702: F0 02       ;
CODE_13E704:    LDA #$0F                    ; $13:E704: A9 0F       ;
CODE_13E706:    STA $FE                     ; $13:E706: 85 FE       ;
CODE_13E708:    LDA $11                     ; $13:E708: A5 11       ;
                ASL A                       ; $13:E70A: 0A          ;
                TAX                         ; $13:E70B: AA          ;
                LDA.w PNTR_11BDA6,x                 ; $13:E70C: BD A6 BD    ;
                STA $F0                     ; $13:E70F: 85 F0       ;
                LDA.w PNTR_11BDA6+1,x                   ; $13:E711: BD A7 BD    ;
                STA $F1                     ; $13:E714: 85 F1       ;
                LDA #$11                    ; $13:E716: A9 11       ;
                STA $F2                     ; $13:E718: 85 F2       ;
                STZ $0154                   ; $13:E71A: 9C 54 01    ;
CODE_13E71D:    LDA $0154                   ; $13:E71D: AD 54 01    ;
                BPL CODE_13E71D             ; $13:E720: 10 FB       ;
                JSL CODE_14FA99             ; $13:E722: 22 99 FA 14 ;
                CLI                         ; $13:E726: 58          ;
                RTS                         ; $13:E727: 60          ;

CODE_13E728:    LDA #$B0                    ; $13:E728: A9 B0       ;
                BRA CODE_13E72E             ; $13:E72A: 80 02       ;

                LDA #$30                    ; $13:E72C: A9 30       ;
CODE_13E72E:    STA $FF                     ; $13:E72E: 85 FF       ;
                RTS                         ; $13:E730: 60          ;

CODE_13E731:    JSR CODE_13E700             ; $13:E731: 20 00 E7    ;
                JSL CODE_14F953             ; $13:E734: 22 53 F9 14 ;
                LDA #$40                    ; $13:E738: A9 40       ;
                STA $0100                   ; $13:E73A: 8D 00 01    ;
                JSR CODE_13E728             ; $13:E73D: 20 28 E7    ;
                JSR CODE_13E708             ; $13:E740: 20 08 E7    ;
                LDA #$01                    ; $13:E743: A9 01       ;
                STA $11                     ; $13:E745: 85 11       ;
                JSR CODE_13E708             ; $13:E747: 20 08 E7    ;
                JSL CODE_13DE0D             ; $13:E74A: 22 0D DE 13 ;
                LDA #$10                    ; $13:E74E: A9 10       ;
                STA $18                     ; $13:E750: 85 18       ;
                LDA #$04                    ; $13:E752: A9 04       ;
                STA $14                     ; $13:E754: 85 14       ;
                STZ $FE                     ; $13:E756: 64 FE       ;
                STZ $17                     ; $13:E758: 64 17       ;
                STZ $15                     ; $13:E75A: 64 15       ;
                LDA #$20                    ; $13:E75C: A9 20       ;
                STA $0239                   ; $13:E75E: 8D 39 02    ;
                LDA #$70                    ; $13:E761: A9 70       ;
                STA $023A                   ; $13:E763: 8D 3A 02    ;
                LDA #$01                    ; $13:E766: A9 01       ;
                JSL CODE_14FAE8             ; $13:E768: 22 E8 FA 14 ;
CODE_13E76C:    LDA #$0D                    ; $13:E76C: A9 0D       ;
                STA $16                     ; $13:E76E: 85 16       ;
                STZ $15                     ; $13:E770: 64 15       ;
                JSL CODE_138CCE             ; $13:E772: 22 CE 8C 13 ;
                LDA #$01                    ; $13:E776: A9 01       ;
                STA $025E                   ; $13:E778: 8D 5E 02    ;
CODE_13E77B:    LDY $15                     ; $13:E77B: A4 15       ;
                LDA.w DATA_11C1A3,y                 ; $13:E77D: B9 A3 C1    ;
                STA $0210                   ; $13:E780: 8D 10 02    ;
CODE_13E783:    DEC $18                     ; $13:E783: C6 18       ;
                BPL CODE_13E78D             ; $13:E785: 10 06       ;
                LDA #$10                    ; $13:E787: A9 10       ;
                STA $18                     ; $13:E789: 85 18       ;
                INC $17                     ; $13:E78B: E6 17       ;
CODE_13E78D:    JSR CODE_13E8A4             ; $13:E78D: 20 A4 E8    ;
                LDA $E6                     ; $13:E790: A5 E6       ;
                CMP #$05                    ; $13:E792: C9 05       ;
                BEQ CODE_13E79F             ; $13:E794: F0 09       ;
                JSL CODE_129539             ; $13:E796: 22 39 95 12 ;
                JSR CODE_13E708             ; $13:E79A: 20 08 E7    ;
                BRA CODE_13E7A2             ; $13:E79D: 80 03       ;

CODE_13E79F:    JSR CODE_13E704             ; $13:E79F: 20 04 E7    ;
CODE_13E7A2:    DEC $0210                   ; $13:E7A2: CE 10 02    ;
                BPL CODE_13E783             ; $13:E7A5: 10 DC       ;
                INC $15                     ; $13:E7A7: E6 15       ;
                DEC $16                     ; $13:E7A9: C6 16       ;
                BPL CODE_13E77B             ; $13:E7AB: 10 CE       ;
                DEC $14                     ; $13:E7AD: C6 14       ;
                BMI CODE_13E7B4             ; $13:E7AF: 30 03       ;
                JMP CODE_13E76C             ; $13:E7B1: 4C 6C E7    ;

CODE_13E7B4:    DEC $E6                     ; $13:E7B4: C6 E6       ;
                LDA #$03                    ; $13:E7B6: A9 03       ;
                STA $11                     ; $13:E7B8: 85 11       ;
                JSL CODE_14F9F0         ; $13:E7BA: 22 F0 F9 14 ; Clear all OAM.
                JSR CODE_13E708             ; $13:E7BE: 20 08 E7    ;
                LDA #$04                    ; $13:E7C1: A9 04       ;
                STA $11                     ; $13:E7C3: 85 11       ;
                JSR CODE_13E708             ; $13:E7C5: 20 08 E7    ;
                LDA #$05                    ; $13:E7C8: A9 05       ;
                STA $11                     ; $13:E7CA: 85 11       ;
                JSR CODE_13E708             ; $13:E7CC: 20 08 E7    ;
                LDA #$06                    ; $13:E7CF: A9 06       ;
                STA $11                     ; $13:E7D1: 85 11       ;
                JSR CODE_13E708             ; $13:E7D3: 20 08 E7    ;
                LDA #$07                    ; $13:E7D6: A9 07       ;
                STA $11                     ; $13:E7D8: 85 11       ;
                JSR CODE_13E708             ; $13:E7DA: 20 08 E7    ;
                LDA #$08                    ; $13:E7DD: A9 08       ;
                STA $11                     ; $13:E7DF: 85 11       ;
                REP #$20                    ; $13:E7E1: C2 20       ;
                LDA #$4480                  ; $13:E7E3: A9 80 44    ;
                STA $0C42                   ; $13:E7E6: 8D 42 0C    ;
                SEP #$20                    ; $13:E7E9: E2 20       ;
                LDA #$01                    ; $13:E7EB: A9 01       ;
                STA $02A9                   ; $13:E7ED: 8D A9 02    ;
                JSR CODE_13E708             ; $13:E7F0: 20 08 E7    ;
                STZ $15                     ; $13:E7F3: 64 15       ;
                LDA #$06                    ; $13:E7F5: A9 06       ;
                STA $16                     ; $13:E7F7: 85 16       ;
                STZ $14                     ; $13:E7F9: 64 14       ;
                LDA #$02                    ; $13:E7FB: A9 02       ;
                STA $025E                   ; $13:E7FD: 8D 5E 02    ;
                JSL CODE_138CCE             ; $13:E800: 22 CE 8C 13 ;
                JSR CODE_13E704             ; $13:E804: 20 04 E7    ;
CODE_13E807:    LDY $15                     ; $13:E807: A4 15       ;
                LDA.w DATA_11C1C6,y                 ; $13:E809: B9 C6 C1    ;
                STA $06C3                   ; $13:E80C: 8D C3 06    ;
                CLC                         ; $13:E80F: 18          ;
                ADC #$02                    ; $13:E810: 69 02       ;
                STA $06C4                   ; $13:E812: 8D C4 06    ;
                LDA.w DATA_11C1B1,y                 ; $13:E815: B9 B1 C1    ;
                STA $10                     ; $13:E818: 85 10       ;
CODE_13E81A:    JSR CODE_13E708             ; $13:E81A: 20 08 E7    ;
                DEC $10                     ; $13:E81D: C6 10       ;
                BPL CODE_13E81A             ; $13:E81F: 10 F9       ;
                INC $15                     ; $13:E821: E6 15       ;
                DEC $16                     ; $13:E823: C6 16       ;
                BPL CODE_13E807             ; $13:E825: 10 E0       ;
                LDA #$10                    ; $13:E827: A9 10       ;
                STA $18                     ; $13:E829: 85 18       ;
                LDA #$01                    ; $13:E82B: A9 01       ;
                STA $14                     ; $13:E82D: 85 14       ;
CODE_13E82F:    STZ $15                     ; $13:E82F: 64 15       ;
                LDA #$0D                    ; $13:E831: A9 0D       ;
                STA $16                     ; $13:E833: 85 16       ;
                LDA #$01                    ; $13:E835: A9 01       ;
                STA $025E                   ; $13:E837: 8D 5E 02    ;
                JSL CODE_138CCE             ; $13:E83A: 22 CE 8C 13 ;
                JSR CODE_13E704             ; $13:E83E: 20 04 E7    ;
CODE_13E841:    LDY $15                     ; $13:E841: A4 15       ;
                LDA.w DATA_11C1A3,y                 ; $13:E843: B9 A3 C1    ;
                STA $10                     ; $13:E846: 85 10       ;
CODE_13E848:    JSR CODE_13E708             ; $13:E848: 20 08 E7    ;
                DEC $10                     ; $13:E84B: C6 10       ;
                BPL CODE_13E848             ; $13:E84D: 10 F9       ;
                INC $15                     ; $13:E84F: E6 15       ;
                DEC $16                     ; $13:E851: C6 16       ;
                BPL CODE_13E841             ; $13:E853: 10 EC       ;
                DEC $14                     ; $13:E855: C6 14       ;
                BMI CODE_13E85C             ; $13:E857: 30 03       ;
                JMP CODE_13E82F             ; $13:E859: 4C 2F E8    ;

CODE_13E85C:    JSR CODE_13E94B             ; $13:E85C: 20 4B E9    ;
                JSR CODE_13E708             ; $13:E85F: 20 08 E7    ;
                STZ $079F                   ; $13:E862: 9C 9F 07    ;
                STZ $07A0                   ; $13:E865: 9C A0 07    ;
                LDA #$B0                    ; $13:E868: A9 B0       ;
                STA $07A1                   ; $13:E86A: 8D A1 07    ;
CODE_13E86D:    STZ $15                     ; $13:E86D: 64 15       ;
                LDA #$0D                    ; $13:E86F: A9 0D       ;
                STA $16                     ; $13:E871: 85 16       ;
                JSL CODE_138CCE             ; $13:E873: 22 CE 8C 13 ;
                JSR CODE_13E704             ; $13:E877: 20 04 E7    ;
CODE_13E87A:    LDY $15                     ; $13:E87A: A4 15       ;
                LDA.w DATA_11C1B8,y                 ; $13:E87C: B9 B8 C1    ;
                STA $06C3                   ; $13:E87F: 8D C3 06    ;
                CLC                         ; $13:E882: 18          ;
                ADC #$02                    ; $13:E883: 69 02       ;
                STA $06C4                   ; $13:E885: 8D C4 06    ;
                LDA.w DATA_11C1A3,y                 ; $13:E888: B9 A3 C1    ;
                STA $10                     ; $13:E88B: 85 10       ;
CODE_13E88D:    JSR CODE_13E907             ; $13:E88D: 20 07 E9    ;
                JSR CODE_13E708             ; $13:E890: 20 08 E7    ;
                JSL CODE_14DB62             ; $13:E893: 22 62 DB 14 ;
                DEC $10                     ; $13:E897: C6 10       ;
                BPL CODE_13E88D             ; $13:E899: 10 F2       ;
                INC $15                     ; $13:E89B: E6 15       ;
                DEC $16                     ; $13:E89D: C6 16       ;
                BPL CODE_13E87A             ; $13:E89F: 10 D9       ;
                JMP CODE_13E86D             ; $13:E8A1: 4C 6D E8    ;

CODE_13E8A4:    LDY #$1F                    ; $13:E8A4: A0 1F       ;
                LDA $17                     ; $13:E8A6: A5 17       ;
                AND #$01                    ; $13:E8A8: 29 01       ;
                BNE CODE_13E8B7             ; $13:E8AA: D0 0B       ;
CODE_13E8AC:    LDA.w DATA_11C133,y                 ; $13:E8AC: B9 33 C1    ;
                STA $0800,y                 ; $13:E8AF: 99 00 08    ;
                DEY                         ; $13:E8B2: 88          ;
                BPL CODE_13E8AC             ; $13:E8B3: 10 F7       ;
                BRA CODE_13E8C0             ; $13:E8B5: 80 09       ;

CODE_13E8B7:    LDA.w DATA_11C153,y                 ; $13:E8B7: B9 53 C1    ;
                STA $0800,y                 ; $13:E8BA: 99 00 08    ;
                DEY                         ; $13:E8BD: 88          ;
                BPL CODE_13E8B7             ; $13:E8BE: 10 F7       ;
CODE_13E8C0:    LDY #$17                    ; $13:E8C0: A0 17       ;
                LDA $17                     ; $13:E8C2: A5 17       ;
                AND #$01                    ; $13:E8C4: 29 01       ;
                BNE CODE_13E8D3             ; $13:E8C6: D0 0B       ;
CODE_13E8C8:    LDA.w DATA_11C173,y                 ; $13:E8C8: B9 73 C1    ;
                STA $0820,y                 ; $13:E8CB: 99 20 08    ;
                DEY                         ; $13:E8CE: 88          ;
                BPL CODE_13E8C8             ; $13:E8CF: 10 F7       ;
                BRA CODE_13E8DC             ; $13:E8D1: 80 09       ;

CODE_13E8D3:    LDA.w DATA_11C18B,y                 ; $13:E8D3: B9 8B C1    ;
                STA $0820,y                 ; $13:E8D6: 99 20 08    ;
                DEY                         ; $13:E8D9: 88          ;
                BPL CODE_13E8D3             ; $13:E8DA: 10 F7       ;
CODE_13E8DC:    STZ $0A20                   ; $13:E8DC: 9C 20 0A    ;
                STZ $0A21                   ; $13:E8DF: 9C 21 0A    ;
                STZ $0A22                   ; $13:E8E2: 9C 22 0A    ;
                STZ $0A23                   ; $13:E8E5: 9C 23 0A    ;
                STZ $0A24                   ; $13:E8E8: 9C 24 0A    ;
                STZ $0A25                   ; $13:E8EB: 9C 25 0A    ;
                STZ $0A26                   ; $13:E8EE: 9C 26 0A    ;
                STZ $0A27                   ; $13:E8F1: 9C 27 0A    ;
                STZ $0A28                   ; $13:E8F4: 9C 28 0A    ;
                STZ $0A29                   ; $13:E8F7: 9C 29 0A    ;
                STZ $0A2A                   ; $13:E8FA: 9C 2A 0A    ;
                STZ $0A2B                   ; $13:E8FD: 9C 2B 0A    ;
                STZ $0A2C                   ; $13:E900: 9C 2C 0A    ;
                STZ $0A2D                   ; $13:E903: 9C 2D 0A    ;
                RTS                         ; $13:E906: 60          ;

CODE_13E907:    INC $2E                     ; $13:E907: E6 2E       ;
                LDA $2E                     ; $13:E909: A5 2E       ;
                AND #$01                    ; $13:E90B: 29 01       ;
                BNE CODE_13E915             ; $13:E90D: D0 06       ;
                DEC $39                     ; $13:E90F: C6 39       ;
                DEC $3A                     ; $13:E911: C6 3A       ;
                DEC $3B                     ; $13:E913: C6 3B       ;
CODE_13E915:    LDA $29                     ; $13:E915: A5 29       ;
                JSL CODE_118776             ; $13:E917: 22 76 87 11 ;

                dw CODE_13E982                                  ;
                dw CODE_13E9BD                                  ;
                dw CODE_13E9CC                                  ;
                dw CODE_13E9FF                                  ;
                dw CODE_13ED40                                  ;
                dw CODE_13ED94                                  ;
                dw CODE_13EE41                                  ;
                dw CODE_13EE91                                  ;
                dw CODE_13EEBC                                  ;
                dw CODE_13EED7                                  ;
                dw CODE_13EEED                                  ;
      
                RTS                         ; $13:E931: 60          ;

CODE_13E932:    PHX                         ; $13:E932: DA          ;
                LDX $2B                     ; $13:E933: A6 2B       ;
                LDA.l DATA_14C5BD,x                 ; $13:E935: BF BD C5 14 ;
                STA $2F                     ; $13:E939: 85 2F       ;
                LDA.l DATA_14C5A0,x                 ; $13:E93B: BF A0 C5 14 ;
                STA $30                     ; $13:E93F: 85 30       ;
                LDA.l DATA_14C583,x                 ; $13:E941: BF 83 C5 14 ;
                STA $31                     ; $13:E945: 85 31       ;
                INC $2B                     ; $13:E947: E6 2B       ;
                PLX                         ; $13:E949: FA          ;
                RTS                         ; $13:E94A: 60          ;

CODE_13E94B:    LDX #$0F                    ; $13:E94B: A2 0F       ;
CODE_13E94D:    LDA.l DATA_14C564,x                 ; $13:E94D: BF 64 C5 14 ;
                STA $0840,x                 ; $13:E951: 9D 40 08    ;
                DEX                         ; $13:E954: CA          ;
                BPL CODE_13E94D             ; $13:E955: 10 F6       ;
                LDA #$00                    ; $13:E957: A9 00       ;
                STA $0A30                   ; $13:E959: 8D 30 0A    ;
                STA $0A31                   ; $13:E95C: 8D 31 0A    ;
                STA $0A32                   ; $13:E95F: 8D 32 0A    ;
                STA $0A33                   ; $13:E962: 8D 33 0A    ;
                LDA #$02                    ; $13:E965: A9 02       ;
                STA $28                     ; $13:E967: 85 28       ;
                STZ $29                     ; $13:E969: 64 29       ;
                STZ $2A                     ; $13:E96B: 64 2A       ;
                LDY #$40                    ; $13:E96D: A0 40       ;
CODE_13E96F:    LDA #$27                    ; $13:E96F: A9 27       ;
                STA $0050,y                 ; $13:E971: 99 50 00    ;
                DEY                         ; $13:E974: 88          ;
                BPL CODE_13E96F             ; $13:E975: 10 F8       ;
                RTS                         ; $13:E977: 60          ;

DATA_13E978:    db $E0,$58,$40,$6D,$A0,$7D,$80,$7E              ;
                db $FF,$7F                                      ;

CODE_13E982:    DEC $28                 ; $13:E982: C6 28       ;
                BPL CODE_13E9BC             ; $13:E984: 10 36       ;
                LDA #$02                    ; $13:E986: A9 02       ;
                STA $28                     ; $13:E988: 85 28       ;
                INC $2A                     ; $13:E98A: E6 2A       ;
                LDA $2A                     ; $13:E98C: A5 2A       ;
                ASL A                       ; $13:E98E: 0A          ;
                TAX                         ; $13:E98F: AA          ;
                REP #$20                    ; $13:E990: C2 20       ;
                LDA.l DATA_13E978,x                 ; $13:E992: BF 78 E9 13 ;
                STA $0C42                   ; $13:E996: 8D 42 0C    ;
                SEP #$20                    ; $13:E999: E2 20       ;
                LDA #$01                    ; $13:E99B: A9 01       ;
                STA $02A9                   ; $13:E99D: 8D A9 02    ;
                LDA $2A                     ; $13:E9A0: A5 2A       ;
                CMP #$04                    ; $13:E9A2: C9 04       ;
                BNE CODE_13E9BC             ; $13:E9A4: D0 16       ;
                INC $29                     ; $13:E9A6: E6 29       ;
                LDA #$80                    ; $13:E9A8: A9 80       ;
                STA $28                     ; $13:E9AA: 85 28       ;
                LDA #$60                    ; $13:E9AC: A9 60       ;
                STA $1F                     ; $13:E9AE: 85 1F       ;
                LDA #$01                    ; $13:E9B0: A9 01       ;
                STA $35                     ; $13:E9B2: 85 35       ;
                STA $38                     ; $13:E9B4: 85 38       ;
                LDA #$00                    ; $13:E9B6: A9 00       ;
                STA $36                     ; $13:E9B8: 85 36       ;
                STA $37                     ; $13:E9BA: 85 37       ;
CODE_13E9BC:    RTS                         ; $13:E9BC: 60          ;

CODE_13E9BD:    DEC $28                     ; $13:E9BD: C6 28       ;
                BPL CODE_13E9CB             ; $13:E9BF: 10 0A       ;
                INC $29                     ; $13:E9C1: E6 29       ;
                STZ $2B                     ; $13:E9C3: 64 2B       ;
                STZ $3F                     ; $13:E9C5: 64 3F       ;
                LDA #$01                    ; $13:E9C7: A9 01       ;
                STA $3A                     ; $13:E9C9: 85 3A       ;
CODE_13E9CB:    RTS                         ; $13:E9CB: 60          ;

CODE_13E9CC:    LDA $2E                     ; $13:E9CC: A5 2E       ;
                AND #$01                    ; $13:E9CE: 29 01       ;
                BEQ CODE_13E9FF             ; $13:E9D0: F0 2D       ;
                LDA $1F                     ; $13:E9D2: A5 1F       ;
                SEC                         ; $13:E9D4: 38          ;
                SBC #$01                    ; $13:E9D5: E9 01       ;
                STA $1F                     ; $13:E9D7: 85 1F       ;
                STA $0841                   ; $13:E9D9: 8D 41 08    ;
                STA $0845                   ; $13:E9DC: 8D 45 08    ;
                STA $0849                   ; $13:E9DF: 8D 49 08    ;
                STA $084D                   ; $13:E9E2: 8D 4D 08    ;
                LDA $1F                     ; $13:E9E5: A5 1F       ;
                CMP #$10                    ; $13:E9E7: C9 10       ;
                BNE CODE_13E9FF             ; $13:E9E9: D0 14       ;
                LDA #$F0                    ; $13:E9EB: A9 F0       ;
                STA $0841                   ; $13:E9ED: 8D 41 08    ;
                STA $0845                   ; $13:E9F0: 8D 45 08    ;
                STA $0849                   ; $13:E9F3: 8D 49 08    ;
                STA $084D                   ; $13:E9F6: 8D 4D 08    ;
                INC $29                     ; $13:E9F9: E6 29       ;
                STZ $38                     ; $13:E9FB: 64 38       ;
                STZ $35                     ; $13:E9FD: 64 35       ;
CODE_13E9FF:    LDA $35                     ; $13:E9FF: A5 35       ;
                BNE CODE_13EA6D             ; $13:EA01: D0 6A       ;
                LDA $39                     ; $13:EA03: A5 39       ;
                BNE CODE_13EA6D             ; $13:EA05: D0 66       ;
                JSR CODE_13E932             ; $13:EA07: 20 32 E9    ;
                LDY #$2F                    ; $13:EA0A: A0 2F       ;
CODE_13EA0C:    LDA [$2F],y                 ; $13:EA0C: B7 2F       ;
                STA $0840,y                 ; $13:EA0E: 99 40 08    ;
                LDA #$24                    ; $13:EA11: A9 24       ;
                STA $0900,y                 ; $13:EA13: 99 00 09    ;
                DEY                         ; $13:EA16: 88          ;
                LDA [$2F],y                 ; $13:EA17: B7 2F       ;
                STA $0840,y                 ; $13:EA19: 99 40 08    ;
                LDA #$E9                    ; $13:EA1C: A9 E9       ;
                STA $0900,y                 ; $13:EA1E: 99 00 09    ;
                DEY                         ; $13:EA21: 88          ;
                LDA [$2F],y                 ; $13:EA22: B7 2F       ;
                STA $0840,y                 ; $13:EA24: 99 40 08    ;
                LDA #$F0                    ; $13:EA27: A9 F0       ;
                STA $0900,y                 ; $13:EA29: 99 00 09    ;
                DEY                         ; $13:EA2C: 88          ;
                LDA [$2F],y                 ; $13:EA2D: B7 2F       ;
                STA $0840,y                 ; $13:EA2F: 99 40 08    ;
                DEY                         ; $13:EA32: 88          ;
                BPL CODE_13EA0C             ; $13:EA33: 10 D7       ;
                LDA #$02                    ; $13:EA35: A9 02       ;
                STA $0A30                   ; $13:EA37: 8D 30 0A    ;
                STA $0A31                   ; $13:EA3A: 8D 31 0A    ;
                STA $0A32                   ; $13:EA3D: 8D 32 0A    ;
                STA $0A33                   ; $13:EA40: 8D 33 0A    ;
                LDA #$00                    ; $13:EA43: A9 00       ;
                STA $0A34                   ; $13:EA45: 8D 34 0A    ;
                STA $0A35                   ; $13:EA48: 8D 35 0A    ;
                STA $0A36                   ; $13:EA4B: 8D 36 0A    ;
                STA $0A37                   ; $13:EA4E: 8D 37 0A    ;
                STA $0A38                   ; $13:EA51: 8D 38 0A    ;
                STA $0A39                   ; $13:EA54: 8D 39 0A    ;
                STA $0A3A                   ; $13:EA57: 8D 3A 0A    ;
                STA $0A3B                   ; $13:EA5A: 8D 3B 0A    ;
                LDA #$01                    ; $13:EA5D: A9 01       ;
                STA $35                     ; $13:EA5F: 85 35       ;
                LDA #$C0                    ; $13:EA61: A9 C0       ;
                STA $1F                     ; $13:EA63: 85 1F       ;
                LDA #$D0                    ; $13:EA65: A9 D0       ;
                STA $20                     ; $13:EA67: 85 20       ;
                LDA #$E8                    ; $13:EA69: A9 E8       ;
                STA $21                     ; $13:EA6B: 85 21       ;
CODE_13EA6D:    LDA $36                     ; $13:EA6D: A5 36       ;
                BNE CODE_13EABA             ; $13:EA6F: D0 49       ;
                LDA $3A                     ; $13:EA71: A5 3A       ;
                BNE CODE_13EABA             ; $13:EA73: D0 45       ;
                JSR CODE_13E932             ; $13:EA75: 20 32 E9    ;
                LDY #$2F                    ; $13:EA78: A0 2F       ;
CODE_13EA7A:    LDA [$2F],y                 ; $13:EA7A: B7 2F       ;
                STA $0880,y                 ; $13:EA7C: 99 80 08    ;
                DEY                         ; $13:EA7F: 88          ;
                BPL CODE_13EA7A             ; $13:EA80: 10 F8       ;
                LDA #$02                    ; $13:EA82: A9 02       ;
                STA $0A40                   ; $13:EA84: 8D 40 0A    ;
                STA $0A41                   ; $13:EA87: 8D 41 0A    ;
                STA $0A42                   ; $13:EA8A: 8D 42 0A    ;
                STA $0A43                   ; $13:EA8D: 8D 43 0A    ;
                LDA #$00                    ; $13:EA90: A9 00       ;
                STA $0A44                   ; $13:EA92: 8D 44 0A    ;
                STA $0A45                   ; $13:EA95: 8D 45 0A    ;
                STA $0A46                   ; $13:EA98: 8D 46 0A    ;
                STA $0A47                   ; $13:EA9B: 8D 47 0A    ;
                STA $0A48                   ; $13:EA9E: 8D 48 0A    ;
                STA $0A49                   ; $13:EAA1: 8D 49 0A    ;
                STA $0A4A                   ; $13:EAA4: 8D 4A 0A    ;
                STA $0A4B                   ; $13:EAA7: 8D 4B 0A    ;
                LDA #$01                    ; $13:EAAA: A9 01       ;
                STA $36                     ; $13:EAAC: 85 36       ;
                LDA #$C0                    ; $13:EAAE: A9 C0       ;
                STA $22                     ; $13:EAB0: 85 22       ;
                LDA #$D0                    ; $13:EAB2: A9 D0       ;
                STA $23                     ; $13:EAB4: 85 23       ;
                LDA #$E8                    ; $13:EAB6: A9 E8       ;
                STA $24                     ; $13:EAB8: 85 24       ;
CODE_13EABA:    LDA $37                     ; $13:EABA: A5 37       ;
                BNE CODE_13EB0F             ; $13:EABC: D0 51       ;
                LDA $3B                     ; $13:EABE: A5 3B       ;
                BNE CODE_13EB0F             ; $13:EAC0: D0 4D       ;
                JSR CODE_13E932             ; $13:EAC2: 20 32 E9    ;
                LDY #$2F                    ; $13:EAC5: A0 2F       ;
CODE_13EAC7:    LDA [$2F],y                 ; $13:EAC7: B7 2F       ;
                STA $08C0,y                 ; $13:EAC9: 99 C0 08    ;
                DEY                         ; $13:EACC: 88          ;
                BPL CODE_13EAC7             ; $13:EACD: 10 F8       ;
                LDA #$02                    ; $13:EACF: A9 02       ;
                STA $0A50                   ; $13:EAD1: 8D 50 0A    ;
                STA $0A51                   ; $13:EAD4: 8D 51 0A    ;
                STA $0A52                   ; $13:EAD7: 8D 52 0A    ;
                STA $0A53                   ; $13:EADA: 8D 53 0A    ;
                LDA #$00                    ; $13:EADD: A9 00       ;
                STA $0A54                   ; $13:EADF: 8D 54 0A    ;
                STA $0A55                   ; $13:EAE2: 8D 55 0A    ;
                STA $0A56                   ; $13:EAE5: 8D 56 0A    ;
                STA $0A57                   ; $13:EAE8: 8D 57 0A    ;
                STA $0A58                   ; $13:EAEB: 8D 58 0A    ;
                STA $0A59                   ; $13:EAEE: 8D 59 0A    ;
                STA $0A5A                   ; $13:EAF1: 8D 5A 0A    ;
                STA $0A5B                   ; $13:EAF4: 8D 5B 0A    ;
                LDA #$01                    ; $13:EAF7: A9 01       ;
                STA $37                     ; $13:EAF9: 85 37       ;
                LDA #$C0                    ; $13:EAFB: A9 C0       ;
                STA $25                     ; $13:EAFD: 85 25       ;
                LDA #$D0                    ; $13:EAFF: A9 D0       ;
                STA $26                     ; $13:EB01: 85 26       ;
                LDY #$E8                    ; $13:EB03: A0 E8       ;
                LDA $2B                     ; $13:EB05: A5 2B       ;
                CMP #$1D                    ; $13:EB07: C9 1D       ;
                BNE CODE_13EB0D             ; $13:EB09: D0 02       ;
                LDY #$E0                    ; $13:EB0B: A0 E0       ;
CODE_13EB0D:    STY $27                     ; $13:EB0D: 84 27       ;
CODE_13EB0F:    LDA $38                     ; $13:EB0F: A5 38       ;
                BEQ CODE_13EB16             ; $13:EB11: F0 03       ;
                JMP CODE_13EBC8             ; $13:EB13: 4C C8 EB    ;

CODE_13EB16:    LDA $2E                     ; $13:EB16: A5 2E       ;
                AND #$01                    ; $13:EB18: 29 01       ;
                BNE CODE_13EB1F             ; $13:EB1A: D0 03       ;
                JMP CODE_13EBC8             ; $13:EB1C: 4C C8 EB    ;

CODE_13EB1F:    LDA $0901                   ; $13:EB1F: AD 01 09    ;
                CMP #$F0                    ; $13:EB22: C9 F0       ;
                BNE CODE_13EB2D             ; $13:EB24: D0 07       ;
                LDA $0841                   ; $13:EB26: AD 41 08    ;
                CMP #$F0                    ; $13:EB29: C9 F0       ;
                BEQ CODE_13EB4A             ; $13:EB2B: F0 1D       ;
CODE_13EB2D:    LDA $1F                     ; $13:EB2D: A5 1F       ;
                SEC                         ; $13:EB2F: 38          ;
                SBC #$01                    ; $13:EB30: E9 01       ;
                BNE CODE_13EB36             ; $13:EB32: D0 02       ;
                LDA #$F0                    ; $13:EB34: A9 F0       ;
CODE_13EB36:    STA $1F                     ; $13:EB36: 85 1F       ;
                STA $0841                   ; $13:EB38: 8D 41 08    ;
                STA $0845                   ; $13:EB3B: 8D 45 08    ;
                STA $0901                   ; $13:EB3E: 8D 01 09    ;
                STA $0905                   ; $13:EB41: 8D 05 09    ;
                STA $0909                   ; $13:EB44: 8D 09 09    ;
                STA $090D                   ; $13:EB47: 8D 0D 09    ;
CODE_13EB4A:    LDA $0901                   ; $13:EB4A: AD 01 09    ;
                CMP #$F0                    ; $13:EB4D: C9 F0       ;
                BNE CODE_13EB58             ; $13:EB4F: D0 07       ;
                LDA $0849                   ; $13:EB51: AD 49 08    ;
                CMP #$F0                    ; $13:EB54: C9 F0       ;
                BEQ CODE_13EB84             ; $13:EB56: F0 2C       ;
CODE_13EB58:    DEC $20                     ; $13:EB58: C6 20       ;
                CMP #$F9                    ; $13:EB5A: C9 F9       ;
                BNE CODE_13EB64             ; $13:EB5C: D0 06       ;
                LDA $20                     ; $13:EB5E: A5 20       ;
                CMP #$C0                    ; $13:EB60: C9 C0       ;
                BNE CODE_13EB84             ; $13:EB62: D0 20       ;
CODE_13EB64:    LDA $20                     ; $13:EB64: A5 20       ;
                BNE CODE_13EB72             ; $13:EB66: D0 0A       ;
                LDA $2B                     ; $13:EB68: A5 2B       ;
                CMP #$FF                    ; $13:EB6A: C9 FF       ;
                BNE CODE_13EB70             ; $13:EB6C: D0 02       ;
                INC $29                     ; $13:EB6E: E6 29       ;
CODE_13EB70:    LDA #$F0                    ; $13:EB70: A9 F0       ;
CODE_13EB72:    STA $0849                   ; $13:EB72: 8D 49 08    ;
                STA $084D                   ; $13:EB75: 8D 4D 08    ;
                STA $0911                   ; $13:EB78: 8D 11 09    ;
                STA $0915                   ; $13:EB7B: 8D 15 09    ;
                STA $0919                   ; $13:EB7E: 8D 19 09    ;
                STA $091D                   ; $13:EB81: 8D 1D 09    ;
CODE_13EB84:    LDA $0851                   ; $13:EB84: AD 51 08    ;
                CMP #$F0                    ; $13:EB87: C9 F0       ;
                BEQ CODE_13EBC8             ; $13:EB89: F0 3D       ;
                DEC $21                     ; $13:EB8B: C6 21       ;
                CMP #$F9                    ; $13:EB8D: C9 F9       ;
                BNE CODE_13EB9E             ; $13:EB8F: D0 0D       ;
                LDA $21                     ; $13:EB91: A5 21       ;
                CMP #$C0                    ; $13:EB93: C9 C0       ;
                BNE CODE_13EBC8             ; $13:EB95: D0 31       ;
                LDY $2B                     ; $13:EB97: A4 2B       ;
                LDA $0050,y                 ; $13:EB99: B9 50 00    ;
                STA $3A                     ; $13:EB9C: 85 3A       ;
CODE_13EB9E:    LDA $21                     ; $13:EB9E: A5 21       ;
                BNE CODE_13EBB0             ; $13:EBA0: D0 0E       ;
                STZ $35                     ; $13:EBA2: 64 35       ;
                LDA $2B                     ; $13:EBA4: A5 2B       ;
                CMP #$FF                    ; $13:EBA6: C9 FF       ;
                BNE CODE_13EBAE             ; $13:EBA8: D0 04       ;
                LDA #$FF                    ; $13:EBAA: A9 FF       ;
                STA $35                     ; $13:EBAC: 85 35       ;
CODE_13EBAE:    LDA #$F0                    ; $13:EBAE: A9 F0       ;
CODE_13EBB0:    STA $0851                   ; $13:EBB0: 8D 51 08    ;
                STA $0855                   ; $13:EBB3: 8D 55 08    ;
                STA $0859                   ; $13:EBB6: 8D 59 08    ;
                STA $085D                   ; $13:EBB9: 8D 5D 08    ;
                STA $0861                   ; $13:EBBC: 8D 61 08    ;
                STA $0865                   ; $13:EBBF: 8D 65 08    ;
                STA $0869                   ; $13:EBC2: 8D 69 08    ;
                STA $086D                   ; $13:EBC5: 8D 6D 08    ;
CODE_13EBC8:    LDA $2E                     ; $13:EBC8: A5 2E       ;
                AND #$01                    ; $13:EBCA: 29 01       ;
                BNE CODE_13EBD1             ; $13:EBCC: D0 03       ;
                JMP CODE_13EC4E             ; $13:EBCE: 4C 4E EC    ;

CODE_13EBD1:    LDA $0881                   ; $13:EBD1: AD 81 08    ;
                CMP #$F0                    ; $13:EBD4: C9 F0       ;
                BEQ CODE_13EBE9             ; $13:EBD6: F0 11       ;
                LDA $22                     ; $13:EBD8: A5 22       ;
                SEC                         ; $13:EBDA: 38          ;
                SBC #$01                    ; $13:EBDB: E9 01       ;
                BNE CODE_13EBE1             ; $13:EBDD: D0 02       ;
                LDA #$F0                    ; $13:EBDF: A9 F0       ;
CODE_13EBE1:    STA $22                     ; $13:EBE1: 85 22       ;
                STA $0881                   ; $13:EBE3: 8D 81 08    ;
                STA $0885                   ; $13:EBE6: 8D 85 08    ;
CODE_13EBE9:    LDA $0889                   ; $13:EBE9: AD 89 08    ;
                CMP #$F0                    ; $13:EBEC: C9 F0       ;
                BEQ CODE_13EC08             ; $13:EBEE: F0 18       ;
                DEC $23                     ; $13:EBF0: C6 23       ;
                CMP #$F9                    ; $13:EBF2: C9 F9       ;
                BNE CODE_13EBFC             ; $13:EBF4: D0 06       ;
                LDA $23                     ; $13:EBF6: A5 23       ;
                CMP #$C0                    ; $13:EBF8: C9 C0       ;
                BNE CODE_13EC08             ; $13:EBFA: D0 0C       ;
CODE_13EBFC:    LDA $23                     ; $13:EBFC: A5 23       ;
                BNE CODE_13EC02             ; $13:EBFE: D0 02       ;
                LDA #$F0                    ; $13:EC00: A9 F0       ;
CODE_13EC02:    STA $0889                   ; $13:EC02: 8D 89 08    ;
                STA $088D                   ; $13:EC05: 8D 8D 08    ;
CODE_13EC08:    LDA $0891                   ; $13:EC08: AD 91 08    ;
                CMP #$F0                    ; $13:EC0B: C9 F0       ;
                BEQ CODE_13EC4E             ; $13:EC0D: F0 3F       ;
                DEC $24                     ; $13:EC0F: C6 24       ;
                CMP #$F9                    ; $13:EC11: C9 F9       ;
                BNE CODE_13EC22             ; $13:EC13: D0 0D       ;
                LDA $24                     ; $13:EC15: A5 24       ;
                CMP #$C0                    ; $13:EC17: C9 C0       ;
                BNE CODE_13EC4E             ; $13:EC19: D0 33       ;
                LDY $2B                     ; $13:EC1B: A4 2B       ;
                LDA $0050,y                 ; $13:EC1D: B9 50 00    ;
                STA $3B                     ; $13:EC20: 85 3B       ;
CODE_13EC22:    LDA $24                     ; $13:EC22: A5 24       ;
                BNE CODE_13EC36             ; $13:EC24: D0 10       ;
                LDA #$00                    ; $13:EC26: A9 00       ;
                STA $36                     ; $13:EC28: 85 36       ;
                LDA $2B                     ; $13:EC2A: A5 2B       ;
                CMP #$FF                    ; $13:EC2C: C9 FF       ;
                BNE CODE_13EC34             ; $13:EC2E: D0 04       ;
                LDA #$FF                    ; $13:EC30: A9 FF       ;
                STA $36                     ; $13:EC32: 85 36       ;
CODE_13EC34:    LDA #$F0                    ; $13:EC34: A9 F0       ;
CODE_13EC36:    STA $0891                   ; $13:EC36: 8D 91 08    ;
                STA $0895                   ; $13:EC39: 8D 95 08    ;
                STA $0899                   ; $13:EC3C: 8D 99 08    ;
                STA $089D                   ; $13:EC3F: 8D 9D 08    ;
                STA $08A1                   ; $13:EC42: 8D A1 08    ;
                STA $08A5                   ; $13:EC45: 8D A5 08    ;
                STA $08A9                   ; $13:EC48: 8D A9 08    ;
                STA $08AD                   ; $13:EC4B: 8D AD 08    ;
CODE_13EC4E:    LDA $2E                     ; $13:EC4E: A5 2E       ;
                AND #$01                    ; $13:EC50: 29 01       ;
                BNE CODE_13EC57             ; $13:EC52: D0 03       ;
CODE_13EC54:    JMP CODE_13ED3F             ; $13:EC54: 4C 3F ED    ;

CODE_13EC57:    LDA $08C1                   ; $13:EC57: AD C1 08    ;
                CMP #$F0                    ; $13:EC5A: C9 F0       ;
                BEQ CODE_13EC6F             ; $13:EC5C: F0 11       ;
                LDA $25                     ; $13:EC5E: A5 25       ;
                SEC                         ; $13:EC60: 38          ;
                SBC #$01                    ; $13:EC61: E9 01       ;
                BNE CODE_13EC67             ; $13:EC63: D0 02       ;
                LDA #$F0                    ; $13:EC65: A9 F0       ;
CODE_13EC67:    STA $25                     ; $13:EC67: 85 25       ;
                STA $08C1                   ; $13:EC69: 8D C1 08    ;
                STA $08C5                   ; $13:EC6C: 8D C5 08    ;
CODE_13EC6F:    LDA $08C9                   ; $13:EC6F: AD C9 08    ;
                CMP #$F0                    ; $13:EC72: C9 F0       ;
                BEQ CODE_13EC8E             ; $13:EC74: F0 18       ;
                DEC $26                     ; $13:EC76: C6 26       ;
                CMP #$F9                    ; $13:EC78: C9 F9       ;
                BNE CODE_13EC82             ; $13:EC7A: D0 06       ;
                LDA $26                     ; $13:EC7C: A5 26       ;
                CMP #$C0                    ; $13:EC7E: C9 C0       ;
                BNE CODE_13EC8E             ; $13:EC80: D0 0C       ;
CODE_13EC82:    LDA $26                     ; $13:EC82: A5 26       ;
                BNE CODE_13EC88             ; $13:EC84: D0 02       ;
                LDA #$F0                    ; $13:EC86: A9 F0       ;
CODE_13EC88:    STA $08C9                   ; $13:EC88: 8D C9 08    ;
                STA $08CD                   ; $13:EC8B: 8D CD 08    ;
CODE_13EC8E:    LDA $08D1                   ; $13:EC8E: AD D1 08    ;
                CMP #$F0                    ; $13:EC91: C9 F0       ;
                BEQ CODE_13EC54             ; $13:EC93: F0 BF       ;
                DEC $27                     ; $13:EC95: C6 27       ;
                CMP #$F9                    ; $13:EC97: C9 F9       ;
                BNE CODE_13ECAB             ; $13:EC99: D0 10       ;
                LDA $27                     ; $13:EC9B: A5 27       ;
                CMP #$C0                    ; $13:EC9D: C9 C0       ;
                BEQ CODE_13ECA4             ; $13:EC9F: F0 03       ;
                BRL CODE_13ED3F             ; $13:ECA1: 82 9B 00    ;

CODE_13ECA4:    LDY $2B                     ; $13:ECA4: A4 2B       ;
                LDA $0050,y                 ; $13:ECA6: B9 50 00    ;
                STA $39                     ; $13:ECA9: 85 39       ;
CODE_13ECAB:    LDA $2B                     ; $13:ECAB: A5 2B       ;
                CMP #$1D                    ; $13:ECAD: C9 1D       ;
                BNE CODE_13ECC3             ; $13:ECAF: D0 12       ;
                LDA #$02                    ; $13:ECB1: A9 02       ;
                STA $0A54                   ; $13:ECB3: 8D 54 0A    ;
                STA $0A55                   ; $13:ECB6: 8D 55 0A    ;
                LDA $27                     ; $13:ECB9: A5 27       ;
                CMP #$A8                    ; $13:ECBB: C9 A8       ;
                BNE CODE_13ECC3             ; $13:ECBD: D0 04       ;
                LDA #$01                    ; $13:ECBF: A9 01       ;
                STA $3F                     ; $13:ECC1: 85 3F       ;
CODE_13ECC3:    LDA $27                     ; $13:ECC3: A5 27       ;
                BNE CODE_13ECD5             ; $13:ECC5: D0 0E       ;
                STZ $37                     ; $13:ECC7: 64 37       ;
                LDA $2B                     ; $13:ECC9: A5 2B       ;
                CMP #$FF                    ; $13:ECCB: C9 FF       ;
                BNE CODE_13ECD3             ; $13:ECCD: D0 04       ;
                LDA #$FF                    ; $13:ECCF: A9 FF       ;
                STA $37                     ; $13:ECD1: 85 37       ;
CODE_13ECD3:    LDA #$F0                    ; $13:ECD3: A9 F0       ;
CODE_13ECD5:    STA $08D1                   ; $13:ECD5: 8D D1 08    ;
                STA $08D5                   ; $13:ECD8: 8D D5 08    ;
                STA $08D9                   ; $13:ECDB: 8D D9 08    ;
                STA $08DD                   ; $13:ECDE: 8D DD 08    ;
                STA $08E1                   ; $13:ECE1: 8D E1 08    ;
                STA $08E5                   ; $13:ECE4: 8D E5 08    ;
                STA $08E9                   ; $13:ECE7: 8D E9 08    ;
                STA $08ED                   ; $13:ECEA: 8D ED 08    ;
                LDA $3F                     ; $13:ECED: A5 3F       ;
                BEQ CODE_13ED3F             ; $13:ECEF: F0 4E       ;
                LDX #$1F                    ; $13:ECF1: A2 1F       ;
CODE_13ECF3:    LDA.l DATA_14CB4A,x                 ; $13:ECF3: BF 4A CB 14 ;
                STA $0900,x                 ; $13:ECF7: 9D 00 09    ;
                DEX                         ; $13:ECFA: CA          ;
                BPL CODE_13ECF3             ; $13:ECFB: 10 F6       ;
                LDA #$E9                    ; $13:ECFD: A9 E9       ;
                STA $0842                   ; $13:ECFF: 8D 42 08    ;
                STA $0846                   ; $13:ED02: 8D 46 08    ;
                STA $084A                   ; $13:ED05: 8D 4A 08    ;
                STA $084E                   ; $13:ED08: 8D 4E 08    ;
                LDA #$24                    ; $13:ED0B: A9 24       ;
                STA $0843                   ; $13:ED0D: 8D 43 08    ;
                STA $0847                   ; $13:ED10: 8D 47 08    ;
                STA $084B                   ; $13:ED13: 8D 4B 08    ;
                STA $084F                   ; $13:ED16: 8D 4F 08    ;
                LDA #$00                    ; $13:ED19: A9 00       ;
                STA $0A60                   ; $13:ED1B: 8D 60 0A    ;
                STA $0A61                   ; $13:ED1E: 8D 61 0A    ;
                STA $0A62                   ; $13:ED21: 8D 62 0A    ;
                STA $0A63                   ; $13:ED24: 8D 63 0A    ;
                STA $0A64                   ; $13:ED27: 8D 64 0A    ;
                STA $0A65                   ; $13:ED2A: 8D 65 0A    ;
                STA $0A66                   ; $13:ED2D: 8D 66 0A    ;
                STA $0A67                   ; $13:ED30: 8D 67 0A    ;
                LDA #$C0                    ; $13:ED33: A9 C0       ;
                STA $1F                     ; $13:ED35: 85 1F       ;
                STA $20                     ; $13:ED37: 85 20       ;
                STZ $3F                     ; $13:ED39: 64 3F       ;
                LDA #$FF                    ; $13:ED3B: A9 FF       ;
                STA $2B                     ; $13:ED3D: 85 2B       ;
CODE_13ED3F:    RTS                         ; $13:ED3F: 60          ;

CODE_13ED40:    LDX #$43                    ; $13:ED40: A2 43       ;
CODE_13ED42:    LDA.l DATA_14CB6A,x                 ; $13:ED42: BF 6A CB 14 ;
                STA $0840,x                 ; $13:ED46: 9D 40 08    ;
                DEX                         ; $13:ED49: CA          ;
                BPL CODE_13ED42             ; $13:ED4A: 10 F6       ;
                LDA #$02                    ; $13:ED4C: A9 02       ;
                STA $0A30                   ; $13:ED4E: 8D 30 0A    ;
                STA $0A31                   ; $13:ED51: 8D 31 0A    ;
                STA $0A32                   ; $13:ED54: 8D 32 0A    ;
                STA $0A33                   ; $13:ED57: 8D 33 0A    ;
                STA $0A34                   ; $13:ED5A: 8D 34 0A    ;
                STA $0A35                   ; $13:ED5D: 8D 35 0A    ;
                STA $0A36                   ; $13:ED60: 8D 36 0A    ;
                STA $0A37                   ; $13:ED63: 8D 37 0A    ;
                STA $0A38                   ; $13:ED66: 8D 38 0A    ;
                STZ $0A39                   ; $13:ED69: 9C 39 0A    ;
                STZ $0A3A                   ; $13:ED6C: 9C 3A 0A    ;
                STZ $0A3B                   ; $13:ED6F: 9C 3B 0A    ;
                STZ $0A3C                   ; $13:ED72: 9C 3C 0A    ;
                STZ $0A3D                   ; $13:ED75: 9C 3D 0A    ;
                STZ $0A3E                   ; $13:ED78: 9C 3E 0A    ;
                STZ $0A3F                   ; $13:ED7B: 9C 3F 0A    ;
                STZ $0A40                   ; $13:ED7E: 9C 40 0A    ;
                INC $29                     ; $13:ED81: E6 29       ;
                LDA #$D0                    ; $13:ED83: A9 D0       ;
                STA $1F                     ; $13:ED85: 85 1F       ;
                LDA #$E0                    ; $13:ED87: A9 E0       ;
                STA $20                     ; $13:ED89: 85 20       ;
                LDA #$F0                    ; $13:ED8B: A9 F0       ;
                STA $21                     ; $13:ED8D: 85 21       ;
                LDA #$08                    ; $13:ED8F: A9 08       ;
                STA $22                     ; $13:ED91: 85 22       ;
                RTS                         ; $13:ED93: 60          ;

CODE_13ED94:    LDA $2E                     ; $13:ED94: A5 2E       ;
                AND #$01                    ; $13:ED96: 29 01       ;
                BNE CODE_13ED9D             ; $13:ED98: D0 03       ;
                JMP CODE_13EE38             ; $13:ED9A: 4C 38 EE    ;

CODE_13ED9D:    LDA $0841                   ; $13:ED9D: AD 41 08    ;
                CMP #$F0                    ; $13:EDA0: C9 F0       ;
                BEQ CODE_13EDBD             ; $13:EDA2: F0 19       ;
                LDA $1F                     ; $13:EDA4: A5 1F       ;
                SEC                         ; $13:EDA6: 38          ;
                SBC #$01                    ; $13:EDA7: E9 01       ;
                CMP #$40                    ; $13:EDA9: C9 40       ;
                BNE CODE_13EDB2             ; $13:EDAB: D0 05       ;
                INC $29                     ; $13:EDAD: E6 29       ;
                JMP CODE_13EE38             ; $13:EDAF: 4C 38 EE    ;

CODE_13EDB2:    STA $1F                     ; $13:EDB2: 85 1F       ;
                STA $0841                   ; $13:EDB4: 8D 41 08    ;
                STA $0845                   ; $13:EDB7: 8D 45 08    ;
                STA $0849                   ; $13:EDBA: 8D 49 08    ;
CODE_13EDBD:    LDA $084D                   ; $13:EDBD: AD 4D 08    ;
                CMP #$F0                    ; $13:EDC0: C9 F0       ;
                BEQ CODE_13EDE1             ; $13:EDC2: F0 1D       ;
                DEC $20                     ; $13:EDC4: C6 20       ;
                CMP #$F9                    ; $13:EDC6: C9 F9       ;
                BNE CODE_13EDD0             ; $13:EDC8: D0 06       ;
                LDA $20                     ; $13:EDCA: A5 20       ;
                CMP #$C0                    ; $13:EDCC: C9 C0       ;
                BNE CODE_13EDE1             ; $13:EDCE: D0 11       ;
CODE_13EDD0:    LDA $20                     ; $13:EDD0: A5 20       ;
                CMP #$10                    ; $13:EDD2: C9 10       ;
                BNE CODE_13EDD8             ; $13:EDD4: D0 02       ;
                LDA #$F0                    ; $13:EDD6: A9 F0       ;
CODE_13EDD8:    STA $084D                   ; $13:EDD8: 8D 4D 08    ;
                STA $0851                   ; $13:EDDB: 8D 51 08    ;
                STA $0855                   ; $13:EDDE: 8D 55 08    ;
CODE_13EDE1:    LDA $0859                   ; $13:EDE1: AD 59 08    ;
                CMP #$F0                    ; $13:EDE4: C9 F0       ;
                BEQ CODE_13EE05             ; $13:EDE6: F0 1D       ;
                DEC $21                     ; $13:EDE8: C6 21       ;
                CMP #$F9                    ; $13:EDEA: C9 F9       ;
                BNE CODE_13EDF4             ; $13:EDEC: D0 06       ;
                LDA $21                     ; $13:EDEE: A5 21       ;
                CMP #$C0                    ; $13:EDF0: C9 C0       ;
                BNE CODE_13EE05             ; $13:EDF2: D0 11       ;
CODE_13EDF4:    LDA $21                     ; $13:EDF4: A5 21       ;
                CMP #$10                    ; $13:EDF6: C9 10       ;
                BNE CODE_13EDFC             ; $13:EDF8: D0 02       ;
                LDA #$F0                    ; $13:EDFA: A9 F0       ;
CODE_13EDFC:    STA $0859                   ; $13:EDFC: 8D 59 08    ;
                STA $085D                   ; $13:EDFF: 8D 5D 08    ;
                STA $0861                   ; $13:EE02: 8D 61 08    ;
CODE_13EE05:    LDA $0865                   ; $13:EE05: AD 65 08    ;
                CMP #$F0                    ; $13:EE08: C9 F0       ;
                BEQ CODE_13EE38             ; $13:EE0A: F0 2C       ;
                DEC $22                     ; $13:EE0C: C6 22       ;
                CMP #$F9                    ; $13:EE0E: C9 F9       ;
                BNE CODE_13EE18             ; $13:EE10: D0 06       ;
                LDA $22                     ; $13:EE12: A5 22       ;
                CMP #$C0                    ; $13:EE14: C9 C0       ;
                BNE CODE_13EE38             ; $13:EE16: D0 20       ;
CODE_13EE18:    LDA $22                     ; $13:EE18: A5 22       ;
                CMP #$10                    ; $13:EE1A: C9 10       ;
                BNE CODE_13EE20             ; $13:EE1C: D0 02       ;
                LDA #$F0                    ; $13:EE1E: A9 F0       ;
CODE_13EE20:    STA $0865                   ; $13:EE20: 8D 65 08    ;
                STA $0869                   ; $13:EE23: 8D 69 08    ;
                STA $086D                   ; $13:EE26: 8D 6D 08    ;
                STA $0871                   ; $13:EE29: 8D 71 08    ;
                STA $0875                   ; $13:EE2C: 8D 75 08    ;
                STA $0879                   ; $13:EE2F: 8D 79 08    ;
                STA $087D                   ; $13:EE32: 8D 7D 08    ;
                STA $0881                   ; $13:EE35: 8D 81 08    ;
CODE_13EE38:    STZ $3D                     ; $13:EE38: 64 3D       ;
                STZ $3C                     ; $13:EE3A: 64 3C       ;
                LDA #$0C                    ; $13:EE3C: A9 0C       ;
                STA $3E                     ; $13:EE3E: 85 3E       ;
                RTS                         ; $13:EE40: 60          ;

CODE_13EE41:    DEC $3C                     ; $13:EE41: C6 3C       ;
                BPL CODE_13EE86             ; $13:EE43: 10 41       ;
                LDA #$08                    ; $13:EE45: A9 08       ;
                STA $3C                     ; $13:EE47: 85 3C       ;
                DEC $3E                     ; $13:EE49: C6 3E       ;
                BPL CODE_13EE58             ; $13:EE4B: 10 0B       ;
                INC $29                     ; $13:EE4D: E6 29       ;
                LDA #$00                    ; $13:EE4F: A9 00       ;
                STA $28                     ; $13:EE51: 85 28       ;
                STA $2A                     ; $13:EE53: 85 2A       ;
                JMP CODE_13EE86             ; $13:EE55: 4C 86 EE    ;

CODE_13EE58:    LDY #$00                    ; $13:EE58: A0 00       ;
                TYX                         ; $13:EE5A: BB          ;
                INC $3D                     ; $13:EE5B: E6 3D       ;
                LDA $3D                     ; $13:EE5D: A5 3D       ;
                AND #$01                    ; $13:EE5F: 29 01       ;
                BNE CODE_13EE76             ; $13:EE61: D0 13       ;
CODE_13EE63:    LDA.l DATA_14C574,x                 ; $13:EE63: BF 74 C5 14 ;
                STA $0842,y                 ; $13:EE67: 99 42 08    ;
                INY                         ; $13:EE6A: C8          ;
                INY                         ; $13:EE6B: C8          ;
                INY                         ; $13:EE6C: C8          ;
                INY                         ; $13:EE6D: C8          ;
                INX                         ; $13:EE6E: E8          ;
                CPX #$06                    ; $13:EE6F: E0 06       ;
                BNE CODE_13EE63             ; $13:EE71: D0 F0       ;
                JMP CODE_13EE86             ; $13:EE73: 4C 86 EE    ;

CODE_13EE76:    LDA.l DATA_14C57A,x                 ; $13:EE76: BF 7A C5 14 ;
                STA $0842,y                 ; $13:EE7A: 99 42 08    ;
                INY                         ; $13:EE7D: C8          ;
                INY                         ; $13:EE7E: C8          ;
                INY                         ; $13:EE7F: C8          ;
                INY                         ; $13:EE80: C8          ;
                INX                         ; $13:EE81: E8          ;
                CPX #$06                    ; $13:EE82: E0 06       ;
                BNE CODE_13EE76             ; $13:EE84: D0 F0       ;
CODE_13EE86:    RTS                         ; $13:EE86: 60          ;

DATA_13EE87:    db $80,$7E,$A0,$7D,$40,$6D,$E0,$58              ;
                db $80,$44                                      ;

CODE_13EE91:    DEC $28                     ; $13:EE91: C6 28       ;
                BPL CODE_13EEBB             ; $13:EE93: 10 26       ;
                LDA #$02                    ; $13:EE95: A9 02       ;
                STA $28                     ; $13:EE97: 85 28       ;
                INC $2A                     ; $13:EE99: E6 2A       ;
                LDA $2A                     ; $13:EE9B: A5 2A       ;
                ASL A                       ; $13:EE9D: 0A          ;
                TAX                         ; $13:EE9E: AA          ;
                REP #$20                    ; $13:EE9F: C2 20       ;
                LDA.l DATA_13EE87,x                 ; $13:EEA1: BF 87 EE 13 ;
                STA $0C42                   ; $13:EEA5: 8D 42 0C    ;
                SEP #$20                    ; $13:EEA8: E2 20       ;
                LDA #$01                    ; $13:EEAA: A9 01       ;
                STA $02A9                   ; $13:EEAC: 8D A9 02    ;
                LDA $2A                     ; $13:EEAF: A5 2A       ;
                CMP #$04                    ; $13:EEB1: C9 04       ;
                BNE CODE_13EEBB             ; $13:EEB3: D0 06       ;
                INC $29                     ; $13:EEB5: E6 29       ;
                LDA #$02                    ; $13:EEB7: A9 02       ;
                STA $28                     ; $13:EEB9: 85 28       ;
CODE_13EEBB:    RTS                         ; $13:EEBB: 60          ;

CODE_13EEBC:    DEC $28                     ; $13:EEBC: C6 28       ;
                BPL CODE_13EED6             ; $13:EEBE: 10 16       ;
                LDX #$16                    ; $13:EEC0: A2 16       ;
                LDY #$00                    ; $13:EEC2: A0 00       ;
                LDA #$F0                    ; $13:EEC4: A9 F0       ;
CODE_13EEC6:    STA $0841,y                 ; $13:EEC6: 99 41 08    ;
                INY                         ; $13:EEC9: C8          ;
                INY                         ; $13:EECA: C8          ;
                INY                         ; $13:EECB: C8          ;
                INY                         ; $13:EECC: C8          ;
                DEX                         ; $13:EECD: CA          ;
                BPL CODE_13EEC6             ; $13:EECE: 10 F6       ;
                LDA #$30                    ; $13:EED0: A9 30       ;
                STA $28                     ; $13:EED2: 85 28       ;
                INC $29                     ; $13:EED4: E6 29       ;
CODE_13EED6:    RTS                         ; $13:EED6: 60          ;

CODE_13EED7:    DEC $28                     ; $13:EED7: C6 28       ;
                BPL CODE_13EEEC             ; $13:EED9: 10 11       ;
                STZ $19                     ; $13:EEDB: 64 19       ;
                STZ $1A                     ; $13:EEDD: 64 1A       ;
                STZ $1B                     ; $13:EEDF: 64 1B       ;
                LDA #$05                    ; $13:EEE1: A9 05       ;
                STA $0210                   ; $13:EEE3: 8D 10 02    ;
                LDA #$14                    ; $13:EEE6: A9 14       ;
                STA $1D                     ; $13:EEE8: 85 1D       ;
                INC $29                     ; $13:EEEA: E6 29       ;
CODE_13EEEC:    RTS                         ; $13:EEEC: 60          ;

CODE_13EEED:    LDA $1B                     ; $13:EEED: A5 1B       ;
                CMP #$2A                    ; $13:EEEF: C9 2A       ;
                BEQ CODE_13EEEC             ; $13:EEF1: F0 F9       ;
                DEC $0210                   ; $13:EEF3: CE 10 02    ;
                BPL CODE_13EEEC             ; $13:EEF6: 10 F4       ;
                LDA #$05                    ; $13:EEF8: A9 05       ;
                STA $0210                   ; $13:EEFA: 8D 10 02    ;
                INC $1B                     ; $13:EEFD: E6 1B       ;
                LDX $1B                     ; $13:EEFF: A6 1B       ;
                LDA.l DATA_14CBAE,x                 ; $13:EF01: BF AE CB 14 ;
                STA $0713                   ; $13:EF05: 8D 13 07    ;
                LDA.l DATA_14CBAD,x                 ; $13:EF08: BF AD CB 14 ;
                TAX                         ; $13:EF0C: AA          ;
CODE_13EF0D:    LDA.l DATA_14CBDC,x                 ; $13:EF0D: BF DC CB 14 ;
                TAY                         ; $13:EF11: A8          ;
                LDA.l DATA_14CBD9,x                 ; $13:EF12: BF D9 CB 14 ;
                STA $0800,y                 ; $13:EF16: 99 00 08    ;
                LDA.l DATA_14CBDA,x                 ; $13:EF19: BF DA CB 14 ;
                STA $0801,y                 ; $13:EF1D: 99 01 08    ;
                LDA.l DATA_14CBDB,x                 ; $13:EF20: BF DB CB 14 ;
                STA $0802,y                 ; $13:EF24: 99 02 08    ;
                LDA #$21                    ; $13:EF27: A9 21       ;
                STA $0803,y                 ; $13:EF29: 99 03 08    ;
                TYA                         ; $13:EF2C: 98          ;
                LSR A                       ; $13:EF2D: 4A          ;
                LSR A                       ; $13:EF2E: 4A          ;
                TAY                         ; $13:EF2F: A8          ;
                LDA #$00                    ; $13:EF30: A9 00       ;
                STA $0A20,y                 ; $13:EF32: 99 20 0A    ;
                INX                         ; $13:EF35: E8          ;
                INX                         ; $13:EF36: E8          ;
                INX                         ; $13:EF37: E8          ;
                INX                         ; $13:EF38: E8          ;
                CPX $0713                   ; $13:EF39: EC 13 07    ;
                BNE CODE_13EF0D             ; $13:EF3C: D0 CF       ;
                RTS                         ; $13:EF3E: 60          ;

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

CODE_13F000:    LDA $02AB               ; $13:F000: AD AB 02    ;
                BNE CODE_13F073             ; $13:F003: D0 6E       ;
                LDA $02C3                   ; $13:F005: AD C3 02    ;
                BEQ CODE_13F017             ; $13:F008: F0 0D       ;
                LDX #$02                    ; $13:F00A: A2 02       ;
CODE_13F00C:    LDA $02B2,x                 ; $13:F00C: BD B2 02    ;
                STA $0257,x                 ; $13:F00F: 9D 57 02    ;
                DEX                         ; $13:F012: CA          ;
                BPL CODE_13F00C             ; $13:F013: 10 F7       ;
                BRA CODE_13F02F             ; $13:F015: 80 18       ;

CODE_13F017:    LDX $0535                   ; $13:F017: AE 35 05    ;
                LDA.l DATA_11CE8E,x                 ; $13:F01A: BF 8E CE 11 ;
                STA $0257                   ; $13:F01E: 8D 57 02    ;
                LDA.l DATA_11CE98,x                 ; $13:F021: BF 98 CE 11 ;
                STA $0258                   ; $13:F025: 8D 58 02    ;
                LDA.l DATA_11CEA2,x                 ; $13:F028: BF A2 CE 11 ;
                STA $0259                   ; $13:F02C: 8D 59 02    ;
CODE_13F02F:    LDA $0535                   ; $13:F02F: AD 35 05    ;
                LDY #$01                    ; $13:F032: A0 01       ;
                JSR CODE_13F109             ; $13:F034: 20 09 F1    ;
                LDA $0533                   ; $13:F037: AD 33 05    ;
                CMP #$08                    ; $13:F03A: C9 08       ;
                BNE CODE_13F04C             ; $13:F03C: D0 0E       ;
                LDA $0534                   ; $13:F03E: AD 34 05    ;
                CMP #$08                    ; $13:F041: C9 08       ;
                BNE CODE_13F04C             ; $13:F043: D0 07       ;
                LDA #$10                    ; $13:F045: A9 10       ;
                STA $0208                   ; $13:F047: 8D 08 02    ;
                BRA CODE_13F04F             ; $13:F04A: 80 03       ;

CODE_13F04C:    STZ $0208                   ; $13:F04C: 9C 08 02    ;
CODE_13F04F:    STZ $0209                   ; $13:F04F: 9C 09 02    ;
                INC $02AB                   ; $13:F052: EE AB 02    ;
                LDA $0535                   ; $13:F055: AD 35 05    ;
                STA $0260                   ; $13:F058: 8D 60 02    ;
                LDA #$01                    ; $13:F05B: A9 01       ;
                STA $02AC                   ; $13:F05D: 8D AC 02    ;
                LSR A                       ; $13:F060: 4A          ;
                STA $06                     ; $13:F061: 85 06       ;
                LDA #$FF                    ; $13:F063: A9 FF       ;
                STA $0263                   ; $13:F065: 8D 63 02    ;
                LDA #$0F                    ; $13:F068: A9 0F       ;
                STA $0262                   ; $13:F06A: 8D 62 02    ;
                JSR CODE_13F07D             ; $13:F06D: 20 7D F0    ;
                JSR CODE_13F3B9             ; $13:F070: 20 B9 F3    ;
CODE_13F073:    JSL CODE_13F1BF             ; $13:F073: 22 BF F1 13 ;
                LDA $02AC                   ; $13:F077: AD AC 02    ;
                BNE CODE_13F07C             ; $13:F07A: D0 00       ;
CODE_13F07C:    RTL                         ; $13:F07C: 6B          ;

CODE_13F07D:    LDA $02C3                   ; $13:F07D: AD C3 02    ;
                BEQ CODE_13F085             ; $13:F080: F0 03       ;
                BRL CODE_13F105             ; $13:F082: 82 80 00    ;

CODE_13F085:    LDA $0535                   ; $13:F085: AD 35 05    ;
                BNE CODE_13F095             ; $13:F088: D0 0B       ;
                LDA $02C2                   ; $13:F08A: AD C2 02    ;
                BPL CODE_13F092             ; $13:F08D: 10 03       ;
                JMP CODE_13F102             ; $13:F08F: 4C 02 F1    ;

CODE_13F092:    LDA $0535                   ; $13:F092: AD 35 05    ;
CODE_13F095:    CMP $0541                   ; $13:F095: CD 41 05    ;
                BNE CODE_13F09F             ; $13:F098: D0 05       ;
                LDA $02C2                   ; $13:F09A: AD C2 02    ;
                BPL CODE_13F102             ; $13:F09D: 10 63       ;
CODE_13F09F:    LDX #$02                    ; $13:F09F: A2 02       ;
                LDA $02C2                   ; $13:F0A1: AD C2 02    ;
                BPL CODE_13F0AC             ; $13:F0A4: 10 06       ;
                LDA #$FF                    ; $13:F0A6: A9 FF       ;
                STA $0B                     ; $13:F0A8: 85 0B       ;
                BNE CODE_13F0AE             ; $13:F0AA: D0 02       ;
CODE_13F0AC:    STZ $0B                     ; $13:F0AC: 64 0B       ;
CODE_13F0AE:    LDA $02C2                   ; $13:F0AE: AD C2 02    ;
                AND #$F0                    ; $13:F0B1: 29 F0       ;
                CLC                         ; $13:F0B3: 18          ;
                ADC $0257,x                 ; $13:F0B4: 7D 57 02    ;
                PHP                         ; $13:F0B7: 08          ;
                ADC $0B                     ; $13:F0B8: 65 0B       ;
                PLP                         ; $13:F0BA: 28          ;
                STA $0C                     ; $13:F0BB: 85 0C       ;
                LDA $0B                     ; $13:F0BD: A5 0B       ;
                BNE CODE_13F0D3             ; $13:F0BF: D0 12       ;
                BCC CODE_13F0E5             ; $13:F0C1: 90 22       ;
                LDA $0257,x                 ; $13:F0C3: BD 57 02    ;
                AND #$0F                    ; $13:F0C6: 29 0F       ;
                CMP #$09                    ; $13:F0C8: C9 09       ;
                BNE CODE_13F0E5             ; $13:F0CA: D0 19       ;
                LDA $0C                     ; $13:F0CC: A5 0C       ;
                AND #$F0                    ; $13:F0CE: 29 F0       ;
                JMP CODE_13F0E7             ; $13:F0D0: 4C E7 F0    ;

CODE_13F0D3:    BCS CODE_13F0E5                     ; $13:F0D3: B0 10       ;
                LDA $0257,x                 ; $13:F0D5: BD 57 02    ;
                AND #$0F                    ; $13:F0D8: 29 0F       ;
                BNE CODE_13F0E5             ; $13:F0DA: D0 09       ;
                LDA $0C                     ; $13:F0DC: A5 0C       ;
                AND #$F0                    ; $13:F0DE: 29 F0       ;
                ADC #$09                    ; $13:F0E0: 69 09       ;
                JMP CODE_13F0E7             ; $13:F0E2: 4C E7 F0    ;

CODE_13F0E5:    LDA $0C                     ; $13:F0E5: A5 0C       ;
CODE_13F0E7:    STA $0257,x                 ; $13:F0E7: 9D 57 02    ;
                DEX                         ; $13:F0EA: CA          ;
                BPL CODE_13F0AE             ; $13:F0EB: 10 C1       ;
                LDA $02C2                   ; $13:F0ED: AD C2 02    ;
                BPL CODE_13F102             ; $13:F0F0: 10 10       ;
                DEC $0260                   ; $13:F0F2: CE 60 02    ;
                LDA $0203                   ; $13:F0F5: AD 03 02    ;
                EOR #$01                    ; $13:F0F8: 49 01       ;
                STA $0203                   ; $13:F0FA: 8D 03 02    ;
                LDA #$01                    ; $13:F0FD: A9 01       ;
                STA $0262                   ; $13:F0FF: 8D 62 02    ;
CODE_13F102:    STZ $02C2                   ; $13:F102: 9C C2 02    ;
CODE_13F105:    JSR CODE_13F343             ; $13:F105: 20 43 F3    ;
                RTS                         ; $13:F108: 60          ;

CODE_13F109:    LSR A                       ; $13:F109: 4A          ;
                BCS CODE_13F126                     ; $13:F10A: B0 1A       ;
                CPY #$01                    ; $13:F10C: C0 01       ;
                BEQ CODE_13F115             ; $13:F10E: F0 05       ;
                LDA $0628                   ; $13:F110: AD 28 06    ;
                BEQ CODE_13F11C             ; $13:F113: F0 07       ;
CODE_13F115:    LDA #$01                    ; $13:F115: A9 01       ;
                STA $0203                   ; $13:F117: 8D 03 02    ;
                BRA CODE_13F11F             ; $13:F11A: 80 03       ;

CODE_13F11C:    STZ $0203                   ; $13:F11C: 9C 03 02    ;
CODE_13F11F:    STZ $0209                   ; $13:F11F: 9C 09 02    ;
                LDA #$00                    ; $13:F122: A9 00       ;
                BRA CODE_13F13F             ; $13:F124: 80 19       ;

CODE_13F126:    CPY #$01                    ; $13:F126: C0 01       ;
                BEQ CODE_13F12F             ; $13:F128: F0 05       ;
                STZ $0203                   ; $13:F12A: 9C 03 02    ;
                BRA CODE_13F13C             ; $13:F12D: 80 0D       ;

CODE_13F12F:    LDA #$01                    ; $13:F12F: A9 01       ;
                STA $0203                   ; $13:F131: 8D 03 02    ;
                STA $0209                   ; $13:F134: 8D 09 02    ;
                LDA #$80                    ; $13:F137: A9 80       ;
                STA $0202                   ; $13:F139: 8D 02 02    ;
CODE_13F13C:    LDA.w DATA_119B3C,y                 ; $13:F13C: B9 3C 9B    ;
CODE_13F13F:    STA $0261                   ; $13:F13F: 8D 61 02    ;
                RTS                         ; $13:F142: 60          ;

CODE_13F143:    LDA $0202                   ; $13:F143: AD 02 02    ;
                STA $02AD                   ; $13:F146: 8D AD 02    ;
                LDA $0203                   ; $13:F149: AD 03 02    ;
                STA $02AE                   ; $13:F14C: 8D AE 02    ;
                LDA $04C0                   ; $13:F14F: AD C0 04    ;
                STA $02AF                   ; $13:F152: 8D AF 02    ;
                INC $02B0                   ; $13:F155: EE B0 02    ;
                LDA.w DATA_119B3E                   ; $13:F158: AD 3E 9B    ;
                STA $0535                   ; $13:F15B: 8D 35 05    ;
                JSR CODE_13F109             ; $13:F15E: 20 09 F1    ;
                LDA #$00                    ; $13:F161: A9 00       ;
                STA $0202                   ; $13:F163: 8D 02 02    ;
                STA $04C2                   ; $13:F166: 8D C2 04    ;
                LDA.w DATA_119B3E                   ; $13:F169: AD 3E 9B    ;
                STA $04C0                   ; $13:F16C: 8D C0 04    ;
                LDA.w DATA_119B3E                   ; $13:F16F: AD 3E 9B    ;
                STA $0257                   ; $13:F172: 8D 57 02    ;
                LDA #$E0                    ; $13:F175: A9 E0       ;
                STA $0261                   ; $13:F177: 8D 61 02    ;
                LDA.w DATA_119B3E                   ; $13:F17A: AD 3E 9B    ;
                CLC                         ; $13:F17D: 18          ;
                ADC #$F0                    ; $13:F17E: 69 F0       ;
                STA $0263                   ; $13:F180: 8D 63 02    ;
                RTL                         ; $13:F183: 6B          ;

CODE_13F184:    LDA $02AD                   ; $13:F184: AD AD 02    ;
                STA $0202                   ; $13:F187: 8D 02 02    ;
                STA $04C2                   ; $13:F18A: 8D C2 04    ;
                LDA $02AE                   ; $13:F18D: AD AE 02    ;
                STA $0203                   ; $13:F190: 8D 03 02    ;
                LDA $02AF                   ; $13:F193: AD AF 02    ;
                STA $04C0                   ; $13:F196: 8D C0 04    ;
                LDA $02B0                   ; $13:F199: AD B0 02    ;
                BNE CODE_13F1BE             ; $13:F19C: D0 20       ;
                INC $02B1                   ; $13:F19E: EE B1 02    ;
                INC $02B0                   ; $13:F1A1: EE B0 02    ;
                INC $D5                     ; $13:F1A4: E6 D5       ;
                LDA $0258                   ; $13:F1A6: AD 58 02    ;
                STA $0257                   ; $13:F1A9: 8D 57 02    ;
                LDA #$10                    ; $13:F1AC: A9 10       ;
                STA $01                     ; $13:F1AE: 85 01       ;
                LDA #$F0                    ; $13:F1B0: A9 F0       ;
                STA $0261                   ; $13:F1B2: 8D 61 02    ;
                STA $0262                   ; $13:F1B5: 8D 62 02    ;
                LDA $0259                   ; $13:F1B8: AD 59 02    ;
                STA $0263                   ; $13:F1BB: 8D 63 02    ;
CODE_13F1BE:    RTL                         ; $13:F1BE: 6B          ;

CODE_13F1BF:    LDX #$00                    ; $13:F1BF: A2 00       ;
                STX $0264                   ; $13:F1C1: 8E 64 02    ;
                STX $0265                   ; $13:F1C4: 8E 65 02    ;
                STX $D8                     ; $13:F1C7: 86 D8       ;
                JSL CODE_13F238             ; $13:F1C9: 22 38 F2 13 ;
                JSL CODE_13F277             ; $13:F1CD: 22 77 F2 13 ;
                LDA $0261                   ; $13:F1D1: AD 61 02    ;
                CMP $025A                   ; $13:F1D4: CD 5A 02    ;
                BNE CODE_13F1F3             ; $13:F1D7: D0 1A       ;
                BRA CODE_13F1F3             ; $13:F1D9: 80 18       ;

                LDA $0262                   ; $13:F1DB: AD 62 02    ;
                CLC                         ; $13:F1DE: 18          ;
                ADC #$01                    ; $13:F1DF: 69 01       ;
                CMP $025B                   ; $13:F1E1: CD 5B 02    ;
                BNE CODE_13F1F3             ; $13:F1E4: D0 0D       ;
CODE_13F1E6:    STZ $02AC                   ; $13:F1E6: 9C AC 02    ;
                STZ $02B0                   ; $13:F1E9: 9C B0 02    ;
                STZ $02B1                   ; $13:F1EC: 9C B1 02    ;
                INC $0264                   ; $13:F1EF: EE 64 02    ;
                RTL                         ; $13:F1F2: 6B          ;

CODE_13F1F3:    LDA $0257                   ; $13:F1F3: AD 57 02    ;
                CMP $0263                   ; $13:F1F6: CD 63 02    ;
                BEQ CODE_13F1E6             ; $13:F1F9: F0 EB       ;
                LDX #$00                    ; $13:F1FB: A2 00       ;
                JSL CODE_13F21D             ; $13:F1FD: 22 1D F2 13 ;
                RTL                         ; $13:F201: 6B          ;

CODE_13F202:    LDA $0257,x                 ; $13:F202: BD 57 02    ;
                SEC                         ; $13:F205: 38          ;
                SBC #$10                    ; $13:F206: E9 10       ;
                STA $0257,x                 ; $13:F208: 9D 57 02    ;
                BCS CODE_13F21C                     ; $13:F20B: B0 0F       ;
                DEC $0257,x                 ; $13:F20D: DE 57 02    ;
                LDA $0257,x                 ; $13:F210: BD 57 02    ;
                CMP #$EF                    ; $13:F213: C9 EF       ;
                BNE CODE_13F21C             ; $13:F215: D0 05       ;
                LDA #$F9                    ; $13:F217: A9 F9       ;
                STA $0257,x                 ; $13:F219: 9D 57 02    ;
CODE_13F21C:    RTL                         ; $13:F21C: 6B          ;

CODE_13F21D:    LDA $0257,x                 ; $13:F21D: BD 57 02    ;
                CLC                         ; $13:F220: 18          ;
                ADC #$10                    ; $13:F221: 69 10       ;
                STA $0257,x                 ; $13:F223: 9D 57 02    ;
                BCC CODE_13F237             ; $13:F226: 90 0F       ;
                INC $0257,x                 ; $13:F228: FE 57 02    ;
                LDA $0257,x                 ; $13:F22B: BD 57 02    ;
                CMP #$0A                    ; $13:F22E: C9 0A       ;
                BNE CODE_13F237             ; $13:F230: D0 05       ;
                LDA #$00                    ; $13:F232: A9 00       ;
                STA $0257,x                 ; $13:F234: 9D 57 02    ;
CODE_13F237:    RTL                         ; $13:F237: 6B          ;

CODE_13F238:    STY $0F                     ; $13:F238: 84 0F       ;
                LDA $0257,x                 ; $13:F23A: BD 57 02    ;
                AND #$0F                    ; $13:F23D: 29 0F       ;
                TAY                         ; $13:F23F: A8          ;
                LDA.w DATA_11AAF0,y                 ; $13:F240: B9 F0 AA    ;
                STA $0269                   ; $13:F243: 8D 69 02    ;
                LDA $0534                   ; $13:F246: AD 34 05    ;
                ASL A                       ; $13:F249: 0A          ;
                ASL A                       ; $13:F24A: 0A          ;
                ASL A                       ; $13:F24B: 0A          ;
                ASL A                       ; $13:F24C: 0A          ;
                CLC                         ; $13:F24D: 18          ;
                ADC.w DATA_11AAFB,y                 ; $13:F24E: 79 FB AA    ;
                STA $026A                   ; $13:F251: 8D 6A 02    ;
                LDA #$7F                    ; $13:F254: A9 7F       ;
                STA $026B                   ; $13:F256: 8D 6B 02    ;
                LDA $0257,x                 ; $13:F259: BD 57 02    ;
                LSR A                       ; $13:F25C: 4A          ;
                LSR A                       ; $13:F25D: 4A          ;
                LSR A                       ; $13:F25E: 4A          ;
                LSR A                       ; $13:F25F: 4A          ;
                STA $0256                   ; $13:F260: 8D 56 02    ;
                ASL A                       ; $13:F263: 0A          ;
                STA $025B                   ; $13:F264: 8D 5B 02    ;
                LDY #$00                    ; $13:F267: A0 00       ;
                LDA $0257,x                 ; $13:F269: BD 57 02    ;
                LSR A                       ; $13:F26C: 4A          ;
                BCS CODE_13F271                     ; $13:F26D: B0 02       ;
                LDY #$04                    ; $13:F26F: A0 04       ;
CODE_13F271:    STY $025A                   ; $13:F271: 8C 5A 02    ;
                LDY $0F                     ; $13:F274: A4 0F       ;
                RTL                         ; $13:F276: 6B          ;

CODE_13F277:    PHB                         ; $13:F277: 8B          ;
                LDA #$13                    ; $13:F278: A9 13       ;
                PHA                         ; $13:F27A: 48          ;
                PLB                         ; $13:F27B: AB          ;
                LDA $7F0000                 ; $13:F27C: AF 00 00 7F ;
                TAX                         ; $13:F280: AA          ;
                LDA $0269                   ; $13:F281: AD 69 02    ;
                STA $C4                     ; $13:F284: 85 C4       ;
                LDA $026A                   ; $13:F286: AD 6A 02    ;
                STA $C5                     ; $13:F289: 85 C5       ;
                LDA $026B                   ; $13:F28B: AD 6B 02    ;
                STA $C6                     ; $13:F28E: 85 C6       ;
                LDA $024B                   ; $13:F290: AD 4B 02    ;
                BEQ CODE_13F298             ; $13:F293: F0 03       ;
                JMP CODE_13F3E0             ; $13:F295: 4C E0 F3    ;

CODE_13F298:    REP #$20                    ; $13:F298: C2 20       ;
                LDA $025A                   ; $13:F29A: AD 5A 02    ;
                ORA #$0010                  ; $13:F29D: 09 10 00    ;
                STA $7F0002,x               ; $13:F2A0: 9F 02 00 7F ;
                XBA                         ; $13:F2A4: EB          ;
                CLC                         ; $13:F2A5: 18          ;
                ADC #$0001                  ; $13:F2A6: 69 01 00    ;
                XBA                         ; $13:F2A9: EB          ;
                ORA #$0010                  ; $13:F2AA: 09 10 00    ;
                STA $7F0042,x               ; $13:F2AD: 9F 42 00 7F ;
                INX                         ; $13:F2B1: E8          ;
                INX                         ; $13:F2B2: E8          ;
                LDA #$3C00                  ; $13:F2B3: A9 00 3C    ;
                STA $7F0002,x               ; $13:F2B6: 9F 02 00 7F ;
                STA $7F0042,x               ; $13:F2BA: 9F 42 00 7F ;
                INX                         ; $13:F2BE: E8          ;
                INX                         ; $13:F2BF: E8          ;
                SEP #$20                    ; $13:F2C0: E2 20       ;
                STZ $0255                   ; $13:F2C2: 9C 55 02    ;
                STZ $D5                     ; $13:F2C5: 64 D5       ;
CODE_13F2C7:    LDA $02DF               ; $13:F2C7: AD DF 02    ; \ [$00] = Pointer to Map16 tileset.
                STA $00                 ; $13:F2CA: 85 00       ;  |
                LDA $02E0               ; $13:F2CC: AD E0 02    ;  |
                STA $01                 ; $13:F2CF: 85 01       ;  |
                LDA $02E1               ; $13:F2D1: AD E1 02    ;  |
                STA $02                 ; $13:F2D4: 85 02       ; /
                LDY $0256                   ; $13:F2D6: AC 56 02    ;
                REP #$30                ; $13:F2D9: C2 30       ; Accumulator and Index = 16-bit.
                LDA [$C4],y             ; $13:F2DB: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
                AND #$00FF              ; $13:F2DD: 29 FF 00    ;  |
                CMP #$00FF              ; $13:F2E0: C9 FF 00    ;  |
                BNE CODE_13F2F5         ; $13:F2E3: D0 10       ; / If not, branch.
                LDA.l PNTR_13A613       ; $13:F2E5: AF 13 A6 13 ; \ Load empty tile.
                STA $00                 ; $13:F2E9: 85 00       ;  | ($13A615)
                LDA #$0013              ; $13:F2EB: A9 13 00    ;  |
                STA $02                 ; $13:F2EE: 85 02       ; /
                LDY #$0000              ; $13:F2F0: A0 00 00    ; Y = #$0000.
                BRA CODE_13F2F9             ; $13:F2F3: 80 04       ;

CODE_13F2F5:    ASL A                   ; $13:F2F5: 0A          ; \ Multiply by 8 (8 bytes for 1 Map16 tile)
                ASL A                   ; $13:F2F6: 0A          ;  |
                ASL A                   ; $13:F2F7: 0A          ;  |
                TAY                     ; $13:F2F8: A8          ; / Into Y.
CODE_13F2F9:    LDA [$00],y             ; $13:F2F9: B7 00       ; \ Store top-left tile.
                STA $7F0002,x           ; $13:F2FB: 9F 02 00 7F ;  |
                INY                     ; $13:F2FF: C8          ;  | Get to next tile.
                INY                     ; $13:F300: C8          ;  |
                LDA [$00],y             ; $13:F301: B7 00       ;  | Store bottom-left tile.
                STA $7F0042,x           ; $13:F303: 9F 42 00 7F ;  |
                INY                     ; $13:F307: C8          ;  | Get to next tile.
                INY                     ; $13:F308: C8          ;  |
                LDA [$00],y             ; $13:F309: B7 00       ;  | Store top-right tile.
                STA $7F0004,x           ; $13:F30B: 9F 04 00 7F ;  |
                INY                     ; $13:F30F: C8          ;  | Get to next tile.
                INY                     ; $13:F310: C8          ;  |
                LDA [$00],y             ; $13:F311: B7 00       ;  | Store bottom-right tile.
                STA $7F0044,x           ; $13:F313: 9F 44 00 7F ; /
                SEP #$30                ; $13:F317: E2 30       ; Accumulator and Index = 8-bit.
                INC $0255                   ; $13:F319: EE 55 02    ;
                INX                         ; $13:F31C: E8          ;
                INX                         ; $13:F31D: E8          ;
                INX                         ; $13:F31E: E8          ;
                INX                         ; $13:F31F: E8          ;
                LDA $0256                   ; $13:F320: AD 56 02    ;
                CLC                         ; $13:F323: 18          ;
                ADC #$10                    ; $13:F324: 69 10       ;
                STA $0256                   ; $13:F326: 8D 56 02    ;
                LDA $0255                   ; $13:F329: AD 55 02    ;
                CMP #$0F                    ; $13:F32C: C9 0F       ;
                BCC CODE_13F2C7             ; $13:F32E: 90 97       ;
                LDA #$FF                    ; $13:F330: A9 FF       ;
                STA $7F0042,x               ; $13:F332: 9F 42 00 7F ;
                TXA                         ; $13:F336: 8A          ;
                CLC                         ; $13:F337: 18          ;
                ADC #$40                    ; $13:F338: 69 40       ;
                STA $7F0000                 ; $13:F33A: 8F 00 00 7F ;
                INC $0265                   ; $13:F33E: EE 65 02    ;
                PLB                         ; $13:F341: AB          ;
                RTL                         ; $13:F342: 6B          ;

CODE_13F343:    LDA $02C3                   ; $13:F343: AD C3 02    ;
                BEQ CODE_13F356             ; $13:F346: F0 0E       ;
                LDA $0200                   ; $13:F348: AD 00 02    ;
                STA $0202                   ; $13:F34B: 8D 02 02    ;
                LDA $0201                   ; $13:F34E: AD 01 02    ;
                STA $0203                   ; $13:F351: 8D 03 02    ;
                BRA CODE_13F3AD             ; $13:F354: 80 57       ;

CODE_13F356:    LDA $0535                   ; $13:F356: AD 35 05    ;
                AND #$02                    ; $13:F359: 29 02       ;
                BNE CODE_13F385             ; $13:F35B: D0 28       ;
                LDA $02B6                   ; $13:F35D: AD B6 02    ;
                BEQ CODE_13F367             ; $13:F360: F0 05       ;
                LDA $0201                   ; $13:F362: AD 01 02    ;
                BRA CODE_13F369             ; $13:F365: 80 02       ;

CODE_13F367:    LDA #$01                    ; $13:F367: A9 01       ;
CODE_13F369:    STA $0203                   ; $13:F369: 8D 03 02    ;
                LDA $0201                   ; $13:F36C: AD 01 02    ;
                BEQ CODE_13F37A             ; $13:F36F: F0 09       ;
                LDA $0200                   ; $13:F371: AD 00 02    ;
                LSR A                       ; $13:F374: 4A          ;
                STA $0202                   ; $13:F375: 8D 02 02    ;
                BRA CODE_13F3AD             ; $13:F378: 80 33       ;

CODE_13F37A:    LDA $0200                   ; $13:F37A: AD 00 02    ;
                LSR A                       ; $13:F37D: 4A          ;
                ORA #$80                    ; $13:F37E: 09 80       ;
                STA $0202                   ; $13:F380: 8D 02 02    ;
                BRA CODE_13F3AD             ; $13:F383: 80 28       ;

CODE_13F385:    LDA $02B6                   ; $13:F385: AD B6 02    ;
                BEQ CODE_13F391             ; $13:F388: F0 07       ;
                LDA $0201                   ; $13:F38A: AD 01 02    ;
                EOR #$01                    ; $13:F38D: 49 01       ;
                BRA CODE_13F393             ; $13:F38F: 80 02       ;

CODE_13F391:    LDA #$00                    ; $13:F391: A9 00       ;
CODE_13F393:    STA $0203                   ; $13:F393: 8D 03 02    ;
                LDA $0201                   ; $13:F396: AD 01 02    ;
                BEQ CODE_13F3A4             ; $13:F399: F0 09       ;
                LDA $0200                   ; $13:F39B: AD 00 02    ;
                LSR A                       ; $13:F39E: 4A          ;
                STA $0202                   ; $13:F39F: 8D 02 02    ;
                BRA CODE_13F3AD             ; $13:F3A2: 80 09       ;

CODE_13F3A4:    LDA $0200                   ; $13:F3A4: AD 00 02    ;
                LSR A                       ; $13:F3A7: 4A          ;
                ORA #$80                    ; $13:F3A8: 09 80       ;
                STA $0202                   ; $13:F3AA: 8D 02 02    ;
CODE_13F3AD:    LDA $0202                   ; $13:F3AD: AD 02 02    ;
                AND #$F0                    ; $13:F3B0: 29 F0       ;
                STA $026C                   ; $13:F3B2: 8D 6C 02    ;
                STZ $02B6                   ; $13:F3B5: 9C B6 02    ;
                RTS                         ; $13:F3B8: 60          ;

CODE_13F3B9:    LDX $0533               ; $13:F3B9: AE 33 05    ; \ Get level + room number into index.
                LDA.l DATA_11D098,x     ; $13:F3BC: BF 98 D0 11 ;  |
                CLC                     ; $13:F3C0: 18          ;  |
                ADC $0534               ; $13:F3C1: 6D 34 05    ;  |
                TAX                     ; $13:F3C4: AA          ; /
                LDA.l DATA_13A61D,x     ; $13:F3C5: BF 1D A6 13 ; \ Load a certain Layer 2 Map16 tileset.     
                ASL A                   ; $13:F3C9: 0A          ;  |
                TAX                     ; $13:F3CA: AA          ; /
                LDA.l PNTR_13A6E5,x     ; $13:F3CB: BF E5 A6 13 ; \ Tileset pointer, low byte, into $02DF.
                STA $02DF               ; $13:F3CF: 8D DF 02    ; /
                INX                     ; $13:F3D2: E8          ; \
                LDA.l PNTR_13A6E5,x     ; $13:F3D3: BF E5 A6 13 ;  | Tileset pointer, high byte, into $02E0.    
                STA $02E0               ; $13:F3D7: 8D E0 02    ; /
                LDA #$13                ; $13:F3DA: A9 13       ; \ Bank number = #$13.
                STA $02E1               ; $13:F3DC: 8D E1 02    ; / Into $02E1.
                RTS                     ; $13:F3DF: 60          ; Return.

CODE_13F3E0:    REP #$20                    ; $13:F3E0: C2 20       ;
                LDA $025A                   ; $13:F3E2: AD 5A 02    ;
                ORA #$0010                  ; $13:F3E5: 09 10 00    ;
                CLC                         ; $13:F3E8: 18          ;
                ADC #$4001                  ; $13:F3E9: 69 01 40    ;
                STA $7F0002,x               ; $13:F3EC: 9F 02 00 7F ;
                XBA                         ; $13:F3F0: EB          ;
                CLC                         ; $13:F3F1: 18          ;
                ADC #$0001                  ; $13:F3F2: 69 01 00    ;
                XBA                         ; $13:F3F5: EB          ;
                ORA #$0010                  ; $13:F3F6: 09 10 00    ;
                STA $7F002E,x               ; $13:F3F9: 9F 2E 00 7F ;
                INX                         ; $13:F3FD: E8          ;
                INX                         ; $13:F3FE: E8          ;
                LDA #$2800                  ; $13:F3FF: A9 00 28    ;
                STA $7F0002,x               ; $13:F402: 9F 02 00 7F ;
                STA $7F002E,x               ; $13:F406: 9F 2E 00 7F ;
                INX                         ; $13:F40A: E8          ;
                INX                         ; $13:F40B: E8          ;
                SEP #$20                    ; $13:F40C: E2 20       ;
                STZ $0255                   ; $13:F40E: 9C 55 02    ;
                STZ $D5                     ; $13:F411: 64 D5       ;
                LDA $0256                   ; $13:F413: AD 56 02    ;
                CLC                         ; $13:F416: 18          ;
                ADC #$50                    ; $13:F417: 69 50       ;
                STA $0256                   ; $13:F419: 8D 56 02    ;
CODE_13F41C:    LDA $02DF                   ; $13:F41C: AD DF 02    ;
                STA $00                     ; $13:F41F: 85 00       ;
                LDA $02E0                   ; $13:F421: AD E0 02    ;
                STA $01                     ; $13:F424: 85 01       ;
                LDA $02E1                   ; $13:F426: AD E1 02    ;
                STA $02                     ; $13:F429: 85 02       ;
                LDY $0256                   ; $13:F42B: AC 56 02    ;
                REP #$30                    ; $13:F42E: C2 30       ;
                LDA [$C4],y             ; $13:F430: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
                AND #$00FF              ; $13:F432: 29 FF 00    ;  |
                CMP #$00FF              ; $13:F435: C9 FF 00    ;  |
                BNE CODE_13F44A         ; $13:F438: D0 10       ; / If not, branch.
                LDA.l PNTR_13A613       ; $13:F43A: AF 13 A6 13 ; \ Load empty tile data.
                STA $00                 ; $13:F43E: 85 00       ;  | ($13A615)
                LDA #$0013              ; $13:F440: A9 13 00    ;  |
                STA $02                 ; $13:F443: 85 02       ; /
                LDY #$0000              ; $13:F445: A0 00 00    ; Y = #$0000.
                BRA CODE_13F44E             ; $13:F448: 80 04       ;

CODE_13F44A:    ASL A                       ; $13:F44A: 0A          ;
                ASL A                       ; $13:F44B: 0A          ;
                ASL A                       ; $13:F44C: 0A          ;
                TAY                         ; $13:F44D: A8          ;
CODE_13F44E:    LDA [$00],y                 ; $13:F44E: B7 00       ;
                STA $7F0002,x               ; $13:F450: 9F 02 00 7F ;
                INY                         ; $13:F454: C8          ;
                INY                         ; $13:F455: C8          ;
                LDA [$00],y                 ; $13:F456: B7 00       ;
                STA $7F002E,x               ; $13:F458: 9F 2E 00 7F ;
                INY                         ; $13:F45C: C8          ;
                INY                         ; $13:F45D: C8          ;
                LDA [$00],y                 ; $13:F45E: B7 00       ;
                STA $7F0004,x               ; $13:F460: 9F 04 00 7F ;
                INY                         ; $13:F464: C8          ;
                INY                         ; $13:F465: C8          ;
                LDA [$00],y                 ; $13:F466: B7 00       ;
                STA $7F0030,x               ; $13:F468: 9F 30 00 7F ;
                SEP #$30                    ; $13:F46C: E2 30       ;
                INC $0255                   ; $13:F46E: EE 55 02    ;
                INX                         ; $13:F471: E8          ;
                INX                         ; $13:F472: E8          ;
                INX                         ; $13:F473: E8          ;
                INX                         ; $13:F474: E8          ;
                LDA $0256                   ; $13:F475: AD 56 02    ;
                CLC                         ; $13:F478: 18          ;
                ADC #$10                    ; $13:F479: 69 10       ;
                STA $0256                   ; $13:F47B: 8D 56 02    ;
                LDA $0255                   ; $13:F47E: AD 55 02    ;
                CMP #$0A                    ; $13:F481: C9 0A       ;
                BCC CODE_13F41C             ; $13:F483: 90 97       ;
                LDA #$FF                    ; $13:F485: A9 FF       ;
                STA $7F002E,x               ; $13:F487: 9F 2E 00 7F ;
                TXA                         ; $13:F48B: 8A          ;
                CLC                         ; $13:F48C: 18          ;
                ADC #$2C                    ; $13:F48D: 69 2C       ;
                STA $7F0000                 ; $13:F48F: 8F 00 00 7F ;
                INC $0265                   ; $13:F493: EE 65 02    ;
                PLB                         ; $13:F496: AB          ;
                RTL                         ; $13:F497: 6B          ;

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
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF              ; /
   
CODE_13F500:    LDA $02AB                   ; $13:F500: AD AB 02    ;
                BNE CODE_13F554             ; $13:F503: D0 4F       ;
                LDA #$02                    ; $13:F505: A9 02       ;
                STA $025A                   ; $13:F507: 8D 5A 02    ;
                LDA $02C3                   ; $13:F50A: AD C3 02    ;
                BNE CODE_13F523             ; $13:F50D: D0 14       ;
                LDX $0535                   ; $13:F50F: AE 35 05    ;
                LDA.l DATA_11CEAC,x                 ; $13:F512: BF AC CE 11 ;
                STA $0257                   ; $13:F516: 8D 57 02    ;
                STA $0258                   ; $13:F519: 8D 58 02    ;
                LDA.l DATA_11CEB6,x                 ; $13:F51C: BF B6 CE 11 ;
                STA $0259                   ; $13:F520: 8D 59 02    ;
CODE_13F523:    LDA $0535                   ; $13:F523: AD 35 05    ;
                LDY #$00                    ; $13:F526: A0 00       ;
                JSR CODE_13F109             ; $13:F528: 20 09 F1    ;
                LDA #$02                    ; $13:F52B: A9 02       ;
                STA $02B9                   ; $13:F52D: 8D B9 02    ;
                LDA #$00                    ; $13:F530: A9 00       ;
                STA $02BA                   ; $13:F532: 8D BA 02    ;
                LDA #$20                    ; $13:F535: A9 20       ;
                STA $025C                   ; $13:F537: 8D 5C 02    ;
                LDA #$A0                    ; $13:F53A: A9 A0       ;
                STA $025D                   ; $13:F53C: 8D 5D 02    ;
                INC $02AB                   ; $13:F53F: EE AB 02    ;
                LDA #$E0                    ; $13:F542: A9 E0       ;
                STA $E2                     ; $13:F544: 85 E2       ;
                LDA #$01                    ; $13:F546: A9 01       ;
                STA $E4                     ; $13:F548: 85 E4       ;
                STA $02AC                   ; $13:F54A: 8D AC 02    ;
                LSR A                       ; $13:F54D: 4A          ;
                STA $025B                   ; $13:F54E: 8D 5B 02    ;
                JSR CODE_13F3B9             ; $13:F551: 20 B9 F3    ;
CODE_13F554:    STZ $06                     ; $13:F554: 64 06       ;
                LDA #$FF                    ; $13:F556: A9 FF       ;
                STA $0263                   ; $13:F558: 8D 63 02    ;
                LDA #$A0                    ; $13:F55B: A9 A0       ;
                STA $0262                   ; $13:F55D: 8D 62 02    ;
                JSL CODE_13F5FE             ; $13:F560: 22 FE F5 13 ;
                LDA $02AC                   ; $13:F564: AD AC 02    ;
                BNE CODE_13F571             ; $13:F567: D0 08       ;
                LDA #$E8                    ; $13:F569: A9 E8       ;
                STA $E1                     ; $13:F56B: 85 E1       ;
                LDA #$C8                    ; $13:F56D: A9 C8       ;
                STA $E2                     ; $13:F56F: 85 E2       ;
CODE_13F571:    RTL                         ; $13:F571: 6B          ;

                LDA $0208                   ; $13:F572: AD 08 02    ;
                STA $02BB                   ; $13:F575: 8D BB 02    ;
                LDA $0200                   ; $13:F578: AD 00 02    ;
                STA $02AD                   ; $13:F57B: 8D AD 02    ;
                LDA $02BC                   ; $13:F57E: AD BC 02    ;
                STA $02BE                   ; $13:F581: 8D BE 02    ;
                LDA $02BD                   ; $13:F584: AD BD 02    ;
                STA $02BF                   ; $13:F587: 8D BF 02    ;
                LDA $04C0                   ; $13:F58A: AD C0 04    ;
                STA $02C0                   ; $13:F58D: 8D C0 02    ;
                STZ $0206                   ; $13:F590: 9C 06 02    ;
                STZ $0200                   ; $13:F593: 9C 00 02    ;
                STZ $0208                   ; $13:F596: 9C 08 02    ;
                STZ $0202                   ; $13:F599: 9C 02 02    ;
                RTL                         ; $13:F59C: 6B          ;

                LDA $02BB                   ; $13:F59D: AD BB 02    ;
                STA $0208                   ; $13:F5A0: 8D 08 02    ;
                LDA $02AD                   ; $13:F5A3: AD AD 02    ;
                STA $0202                   ; $13:F5A6: 8D 02 02    ;
                LDA $02BE                   ; $13:F5A9: AD BE 02    ;
                STA $02BC                   ; $13:F5AC: 8D BC 02    ;
                LDA $02BF                   ; $13:F5AF: AD BF 02    ;
                STA $02BD                   ; $13:F5B2: 8D BD 02    ;
                LDA $02C0                   ; $13:F5B5: AD C0 02    ;
                STA $04C0                   ; $13:F5B8: 8D C0 04    ;
                RTL                         ; $13:F5BB: 6B          ;

                LDA $0258                   ; $13:F5BC: AD 58 02    ;
                AND #$10                    ; $13:F5BF: 29 10       ;
                BEQ CODE_13F5CA             ; $13:F5C1: F0 07       ;
                LDA $E1                     ; $13:F5C3: A5 E1       ;
                SEC                         ; $13:F5C5: 38          ;
                SBC #$08                    ; $13:F5C6: E9 08       ;
                STA $E1                     ; $13:F5C8: 85 E1       ;
CODE_13F5CA:    LDA #$01                    ; $13:F5CA: A9 01       ;
                STA $E4                     ; $13:F5CC: 85 E4       ;
                LDA $0258                   ; $13:F5CE: AD 58 02    ;
                STA $0257                   ; $13:F5D1: 8D 57 02    ;
                LDA #$10                    ; $13:F5D4: A9 10       ;
                STA $01                     ; $13:F5D6: 85 01       ;
                LDX #$00                    ; $13:F5D8: A2 00       ;
                JSL CODE_13F74D             ; $13:F5DA: 22 4D F7 13 ;
                LDA $025C                   ; $13:F5DE: AD 5C 02    ;
                STA $025B                   ; $13:F5E1: 8D 5B 02    ;
                LDA $E1                     ; $13:F5E4: A5 E1       ;
                STA $E2                     ; $13:F5E6: 85 E2       ;
                LDA #$F0                    ; $13:F5E8: A9 F0       ;
                STA $0261                   ; $13:F5EA: 8D 61 02    ;
                STA $0262                   ; $13:F5ED: 8D 62 02    ;
                LDA $0259                   ; $13:F5F0: AD 59 02    ;
                STA $0263                   ; $13:F5F3: 8D 63 02    ;
                INC $02C1                   ; $13:F5F6: EE C1 02    ;
                LDA #$01                    ; $13:F5F9: A9 01       ;
                STA $06                     ; $13:F5FB: 85 06       ;
                RTL                         ; $13:F5FD: 6B          ;

CODE_13F5FE:    LDX #$00                    ; $13:F5FE: A2 00       ;
                STX $0264                   ; $13:F600: 8E 64 02    ;
                JSL CODE_13F6F7             ; $13:F603: 22 F7 F6 13 ;
                JSL CODE_13F77D             ; $13:F607: 22 7D F7 13 ;
                LDX #$00                    ; $13:F60B: A2 00       ;
                JSL CODE_13F674             ; $13:F60D: 22 74 F6 13 ;
                LDA $0261                   ; $13:F611: AD 61 02    ;
                CMP $025A                   ; $13:F614: CD 5A 02    ;
                BNE CODE_13F63B             ; $13:F617: D0 22       ;
                LDA $0262                   ; $13:F619: AD 62 02    ;
                CLC                         ; $13:F61C: 18          ;
                ADC #$20                    ; $13:F61D: 69 20       ;
                CMP $025B                   ; $13:F61F: CD 5B 02    ;
                BNE CODE_13F63B             ; $13:F622: D0 17       ;
CODE_13F624:    LDA $06                     ; $13:F624: A5 06       ;
                TAX                         ; $13:F626: AA          ;
                BEQ CODE_13F62E             ; $13:F627: F0 05       ;
                LDA $0519                   ; $13:F629: AD 19 05    ;
                STA $E1                     ; $13:F62C: 85 E1       ;
CODE_13F62E:    INC $0264                   ; $13:F62E: EE 64 02    ;
                STZ $02AC                   ; $13:F631: 9C AC 02    ;
                STZ $02B0                   ; $13:F634: 9C B0 02    ;
                STZ $02B1                   ; $13:F637: 9C B1 02    ;
                RTL                         ; $13:F63A: 6B          ;

CODE_13F63B:    LDA $025B                   ; $13:F63B: AD 5B 02    ;
                AND #$20                    ; $13:F63E: 29 20       ;
                BNE CODE_13F650             ; $13:F640: D0 0E       ;
                LDA $0257                   ; $13:F642: AD 57 02    ;
                CMP $0263                   ; $13:F645: CD 63 02    ;
                BEQ CODE_13F624             ; $13:F648: F0 DA       ;
                LDX #$00                    ; $13:F64A: A2 00       ;
                JSL CODE_13F6D0             ; $13:F64C: 22 D0 F6 13 ;
CODE_13F650:    RTL                         ; $13:F650: 6B          ;

CODE_13F651:    LDA $025C,x                 ; $13:F651: BD 5C 02    ;
                SEC                         ; $13:F654: 38          ;
                SBC #$20                    ; $13:F655: E9 20       ;
                STA $025C,x                 ; $13:F657: 9D 5C 02    ;
                BCS CODE_13F673                     ; $13:F65A: B0 17       ;
                LDA $02B9,x                 ; $13:F65C: BD B9 02    ;
                SEC                         ; $13:F65F: 38          ;
                SBC #$01                    ; $13:F660: E9 01       ;
                CMP #$FF                    ; $13:F662: C9 FF       ;
                BNE CODE_13F66A             ; $13:F664: D0 04       ;
                LDA #$0B                    ; $13:F666: A9 0B       ;
                BRA CODE_13F670             ; $13:F668: 80 06       ;

CODE_13F66A:    CMP #$07                    ; $13:F66A: C9 07       ;
                BNE CODE_13F6A2             ; $13:F66C: D0 34       ;
                LDA #$03                    ; $13:F66E: A9 03       ;
CODE_13F670:    STA $02B9,x                 ; $13:F670: 9D B9 02    ;
CODE_13F673:    RTL                         ; $13:F673: 6B          ;

CODE_13F674:    LDA $025B,x                 ; $13:F674: BD 5B 02    ;
                CLC                         ; $13:F677: 18          ;
                ADC #$20                    ; $13:F678: 69 20       ;
                STA $025B,x                 ; $13:F67A: 9D 5B 02    ;
                BCC CODE_13F6A5             ; $13:F67D: 90 26       ;
                CPX #$00                    ; $13:F67F: E0 00       ;
                BNE CODE_13F68D             ; $13:F681: D0 0A       ;
                LDA $025A                   ; $13:F683: AD 5A 02    ;
                CLC                         ; $13:F686: 18          ;
                ADC #$01                    ; $13:F687: 69 01       ;
                STA $025A                   ; $13:F689: 8D 5A 02    ;
                RTL                         ; $13:F68C: 6B          ;

CODE_13F68D:    DEX                         ; $13:F68D: CA          ;
                LDA $02B9,x                 ; $13:F68E: BD B9 02    ;
                CLC                         ; $13:F691: 18          ;
                ADC #$01                    ; $13:F692: 69 01       ;
                CMP #$04                    ; $13:F694: C9 04       ;
                BNE CODE_13F69C             ; $13:F696: D0 04       ;
                LDA #$08                    ; $13:F698: A9 08       ;
                BRA CODE_13F6A2             ; $13:F69A: 80 06       ;

CODE_13F69C:    CMP #$0C                    ; $13:F69C: C9 0C       ;
                BNE CODE_13F6A2             ; $13:F69E: D0 02       ;
                LDA #$00                    ; $13:F6A0: A9 00       ;
CODE_13F6A2:    STA $02B9,x                 ; $13:F6A2: 9D B9 02    ;
CODE_13F6A5:    RTL                         ; $13:F6A5: 6B          ;

CODE_13F6A6:    LDA $0258,x                 ; $13:F6A6: BD 58 02    ;
                SEC                         ; $13:F6A9: 38          ;
                SBC #$10                    ; $13:F6AA: E9 10       ;
                STA $0258,x                 ; $13:F6AC: 9D 58 02    ;
                AND #$F0                    ; $13:F6AF: 29 F0       ;
                CMP #$F0                    ; $13:F6B1: C9 F0       ;
                BNE CODE_13F6CF             ; $13:F6B3: D0 1A       ;
                LDA $0258,x                 ; $13:F6B5: BD 58 02    ;
                AND #$0F                    ; $13:F6B8: 29 0F       ;
                CLC                         ; $13:F6BA: 18          ;
                ADC #$E0                    ; $13:F6BB: 69 E0       ;
                STA $0258,x                 ; $13:F6BD: 9D 58 02    ;
                DEC $0258,x                 ; $13:F6C0: DE 58 02    ;
                LDA $0258,x                 ; $13:F6C3: BD 58 02    ;
                CMP #$DF                    ; $13:F6C6: C9 DF       ;
                BNE CODE_13F6CF             ; $13:F6C8: D0 05       ;
                LDA #$E9                    ; $13:F6CA: A9 E9       ;
                STA $0258,x                 ; $13:F6CC: 9D 58 02    ;
CODE_13F6CF:    RTL                         ; $13:F6CF: 6B          ;

CODE_13F6D0:    LDA $0257,x                 ; $13:F6D0: BD 57 02    ;
                CLC                         ; $13:F6D3: 18          ;
                ADC #$10                    ; $13:F6D4: 69 10       ;
                STA $0257,x                 ; $13:F6D6: 9D 57 02    ;
                AND #$F0                    ; $13:F6D9: 29 F0       ;
                CMP #$F0                    ; $13:F6DB: C9 F0       ;
                BNE CODE_13F6F6             ; $13:F6DD: D0 17       ;
                LDA $0257,x                 ; $13:F6DF: BD 57 02    ;
                AND #$0F                    ; $13:F6E2: 29 0F       ;
                STA $0257,x                 ; $13:F6E4: 9D 57 02    ;
                INC $0257,x                 ; $13:F6E7: FE 57 02    ;
                LDA $0257,x                 ; $13:F6EA: BD 57 02    ;
                CMP #$0A                    ; $13:F6ED: C9 0A       ;
                BNE CODE_13F6F6             ; $13:F6EF: D0 05       ;
                LDA #$00                    ; $13:F6F1: A9 00       ;
                STA $0257,x                 ; $13:F6F3: 9D 57 02    ;
CODE_13F6F6:    RTL                         ; $13:F6F6: 6B          ;

CODE_13F6F7:    PHX                         ; $13:F6F7: DA          ;
                LDA $0257,x                 ; $13:F6F8: BD 57 02    ;
                AND #$0F                    ; $13:F6FB: 29 0F       ;
                TAY                         ; $13:F6FD: A8          ;
                LDA.w DATA_11AAF0,y                 ; $13:F6FE: B9 F0 AA    ;
                STA $0269                   ; $13:F701: 8D 69 02    ;
                LDA $0534                   ; $13:F704: AD 34 05    ;
                ASL A                       ; $13:F707: 0A          ;
                ASL A                       ; $13:F708: 0A          ;
                ASL A                       ; $13:F709: 0A          ;
                ASL A                       ; $13:F70A: 0A          ;
                CLC                         ; $13:F70B: 18          ;
                ADC.w DATA_11AAFB,y                 ; $13:F70C: 79 FB AA    ;
                STA $026A                   ; $13:F70F: 8D 6A 02    ;
                LDA #$7F                    ; $13:F712: A9 7F       ;
                STA $026B                   ; $13:F714: 8D 6B 02    ;
                LDA $0257,x                 ; $13:F717: BD 57 02    ;
                AND #$F0                    ; $13:F71A: 29 F0       ;
                STA $0256                   ; $13:F71C: 8D 56 02    ;
                CPX #$00                    ; $13:F71F: E0 00       ;
                BNE CODE_13F73E             ; $13:F721: D0 1B       ;
                LDA $025A                   ; $13:F723: AD 5A 02    ;
                CMP #$FF                    ; $13:F726: C9 FF       ;
                BNE CODE_13F72E             ; $13:F728: D0 04       ;
                LDA #$0B                    ; $13:F72A: A9 0B       ;
                BRA CODE_13F742             ; $13:F72C: 80 14       ;

CODE_13F72E:    CMP #$04                    ; $13:F72E: C9 04       ;
                BNE CODE_13F736             ; $13:F730: D0 04       ;
                LDA #$08                    ; $13:F732: A9 08       ;
                BRA CODE_13F742             ; $13:F734: 80 0C       ;

CODE_13F736:    CMP #$0C                    ; $13:F736: C9 0C       ;
                BNE CODE_13F742             ; $13:F738: D0 08       ;
                LDA #$00                    ; $13:F73A: A9 00       ;
                BRA CODE_13F742             ; $13:F73C: 80 04       ;

CODE_13F73E:    DEX                         ; $13:F73E: CA          ;
                LDA $02B9,x                 ; $13:F73F: BD B9 02    ;
CODE_13F742:    STA $025A                   ; $13:F742: 8D 5A 02    ;
                PLX                         ; $13:F745: FA          ;
                LDA $025B,x                 ; $13:F746: BD 5B 02    ;
                STA $025B                   ; $13:F749: 8D 5B 02    ;
CODE_13F74C:    RTL                         ; $13:F74C: 6B          ;

CODE_13F74D:    LDA $0257,x                 ; $13:F74D: BD 57 02    ;
                AND #$10                    ; $13:F750: 29 10       ;
                BEQ CODE_13F74C             ; $13:F752: F0 F8       ;
                LDA $0257,x                 ; $13:F754: BD 57 02    ;
                STA $03                     ; $13:F757: 85 03       ;
                SEC                         ; $13:F759: 38          ;
                SBC $01                     ; $13:F75A: E5 01       ;
                STA $0257,x                 ; $13:F75C: 9D 57 02    ;
                JSL CODE_13F6F7             ; $13:F75F: 22 F7 F6 13 ;
                LDA #$0F                    ; $13:F763: A9 0F       ;
                STA $E3                     ; $13:F765: 85 E3       ;
                LDA #$00                    ; $13:F767: A9 00       ;
                STA $0255                   ; $13:F769: 8D 55 02    ;
CODE_13F76C:    DEC $E3                     ; $13:F76C: C6 E3       ;
                LDA $E3                     ; $13:F76E: A5 E3       ;
                BPL CODE_13F76C             ; $13:F770: 10 FA       ;
                LDA $03                     ; $13:F772: A5 03       ;
                STA $0257,x                 ; $13:F774: 9D 57 02    ;
                DEC $E4                     ; $13:F777: C6 E4       ;
                JML CODE_13F6F7             ; $13:F779: 5C F7 F6 13 ;

CODE_13F77D:    LDA $7F0000                 ; $13:F77D: AF 00 00 7F ;
                TAX                         ; $13:F781: AA          ;
                LDA $0269                   ; $13:F782: AD 69 02    ;
                STA $C4                     ; $13:F785: 85 C4       ;
                LDA $026A                   ; $13:F787: AD 6A 02    ;
                STA $C5                     ; $13:F78A: 85 C5       ;
                LDA $026B                   ; $13:F78C: AD 6B 02    ;
                STA $C6                     ; $13:F78F: 85 C6       ;
                LDA $025A                   ; $13:F791: AD 5A 02    ;
                ORA #$10                    ; $13:F794: 09 10       ;
                STA $7F0002,x               ; $13:F796: 9F 02 00 7F ;
                INX                         ; $13:F79A: E8          ;
                LDA $025B                   ; $13:F79B: AD 5B 02    ;
                STA $7F0002,x               ; $13:F79E: 9F 02 00 7F ;
                INX                         ; $13:F7A2: E8          ;
                LDA #$00                    ; $13:F7A3: A9 00       ;
                STA $7F0002,x               ; $13:F7A5: 9F 02 00 7F ;
                INX                         ; $13:F7A9: E8          ;
                LDA #$40                    ; $13:F7AA: A9 40       ;
                STA $7F0002,x               ; $13:F7AC: 9F 02 00 7F ;
                INX                         ; $13:F7B0: E8          ;
                STZ $0255                   ; $13:F7B1: 9C 55 02    ;
                LDA #$0F                    ; $13:F7B4: A9 0F       ;
                STA $E3                     ; $13:F7B6: 85 E3       ;
CODE_13F7B8:    LDA $02DF                   ; $13:F7B8: AD DF 02    ;
                STA $00                     ; $13:F7BB: 85 00       ;
                LDA $02E0                   ; $13:F7BD: AD E0 02    ;
                STA $01                     ; $13:F7C0: 85 01       ;
                LDA $02E1                   ; $13:F7C2: AD E1 02    ;
                STA $02                     ; $13:F7C5: 85 02       ;
                LDY $0256                   ; $13:F7C7: AC 56 02    ;
                REP #$30                    ; $13:F7CA: C2 30       ;
                LDA [$C4],y             ; $13:F7CC: B7 C4       ; \ Check if Layer 2 Map16 tile = #$FF.
                AND #$00FF              ; $13:F7CE: 29 FF 00    ;  |
                CMP #$00FF              ; $13:F7D1: C9 FF 00    ;  |
                BNE CODE_13F7E6         ; $13:F7D4: D0 10       ; /
                LDA.l PNTR_13A613       ; $13:F7D6: AF 13 A6 13 ; \ Empty tile.    
                STA $00                 ; $13:F7DA: 85 00       ;  | ($13A615)
                LDA #$0013              ; $13:F7DC: A9 13 00    ;  |
                STA $02                 ; $13:F7DF: 85 02       ; /
                LDY #$0000              ; $13:F7E1: A0 00 00    ; Y = #$0000.
                BRA CODE_13F7EA             ; $13:F7E4: 80 04       ;

CODE_13F7E6:    ASL A                       ; $13:F7E6: 0A          ;
                ASL A                       ; $13:F7E7: 0A          ;
                ASL A                       ; $13:F7E8: 0A          ;
                TAY                         ; $13:F7E9: A8          ;
CODE_13F7EA:    LDA $02C1                   ; $13:F7EA: AD C1 02    ;
                AND #$00FF                  ; $13:F7ED: 29 FF 00    ;
                BEQ CODE_13F7F6             ; $13:F7F0: F0 04       ;
                INY                         ; $13:F7F2: C8          ;
                INY                         ; $13:F7F3: C8          ;
                INY                         ; $13:F7F4: C8          ;
                INY                         ; $13:F7F5: C8          ;
CODE_13F7F6:    REP #$20                    ; $13:F7F6: C2 20       ;
                LDA [$00],y                 ; $13:F7F8: B7 00       ;
                STA $7F0002,x               ; $13:F7FA: 9F 02 00 7F ;
                SEP #$20                    ; $13:F7FE: E2 20       ;
                INC $0255                   ; $13:F800: EE 55 02    ;
                INX                         ; $13:F803: E8          ;
                INX                         ; $13:F804: E8          ;
                INY                         ; $13:F805: C8          ;
                INY                         ; $13:F806: C8          ;
                LDA $0255                   ; $13:F807: AD 55 02    ;
                LSR A                       ; $13:F80A: 4A          ;
                BCS CODE_13F7F6                     ; $13:F80B: B0 E9       ;
                INC $0256                   ; $13:F80D: EE 56 02    ;
                SEP #$30                    ; $13:F810: E2 30       ;
                LDA $0255                   ; $13:F812: AD 55 02    ;
                CMP #$20                    ; $13:F815: C9 20       ;
                BCC CODE_13F7B8             ; $13:F817: 90 9F       ;
                LDA #$FF                    ; $13:F819: A9 FF       ;
                STA $7F0002,x               ; $13:F81B: 9F 02 00 7F ;
                TXA                         ; $13:F81F: 8A          ;
                STA $7F0000                 ; $13:F820: 8F 00 00 7F ;
                BRA CODE_13F862             ; $13:F824: 80 3C       ;

                LDA $E4                     ; $13:F826: A5 E4       ;
                BEQ CODE_13F82F             ; $13:F828: F0 05       ;
                DEC $E4                     ; $13:F82A: C6 E4       ;
                JMP CODE_13F837             ; $13:F82C: 4C 37 F8    ;

CODE_13F82F:    LDA $D8                     ; $13:F82F: A5 D8       ;
                LSR A                       ; $13:F831: 4A          ;
                BCS CODE_13F837                     ; $13:F832: B0 03       ;
                JMP CODE_13F837         ; $13:F834: 4C 37 F8    ;
           
CODE_13F837:    LDX #$00                    ; $13:F837: A2 00       ;
                LDA $D8                     ; $13:F839: A5 D8       ;
                LSR A                       ; $13:F83B: 4A          ;
                BCC CODE_13F852             ; $13:F83C: 90 14       ;
                INX                         ; $13:F83E: E8          ;
                LDA $0258,x                 ; $13:F83F: BD 58 02    ;
                AND #$F0                    ; $13:F842: 29 F0       ;
                CMP #$E0                    ; $13:F844: C9 E0       ;
                BEQ CODE_13F84F             ; $13:F846: F0 07       ;
                LDA $0258,x                 ; $13:F848: BD 58 02    ;
                AND #$10                    ; $13:F84B: 29 10       ;
                BNE CODE_13F862             ; $13:F84D: D0 13       ;
CODE_13F84F:    JMP CODE_13F862             ; $13:F84F: 4C 62 F8    ;

CODE_13F852:    LDA $0258,x                 ; $13:F852: BD 58 02    ;
                AND #$F0                    ; $13:F855: 29 F0       ;
                CMP #$E0                    ; $13:F857: C9 E0       ;
                BEQ CODE_13F862             ; $13:F859: F0 07       ;
                LDA $0258,x                 ; $13:F85B: BD 58 02    ;
                AND #$10                    ; $13:F85E: 29 10       ;
                BEQ CODE_13F862             ; $13:F860: F0 00       ;
CODE_13F862:    LDA $02C1                   ; $13:F862: AD C1 02    ;
                EOR #$01                    ; $13:F865: 49 01       ;
                STA $02C1                   ; $13:F867: 8D C1 02    ;
                RTL                         ; $13:F86A: 6B          ;

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
                db $FF,$FF,$FF,$FF,$FF                          ; /

CODE_13F900:    TXA                     ; $13:F900: 8A          ;
                PHA                     ; $13:F901: 48          ;
                LDA #$00                ; $13:F902: A9 00       ;
                STA $00                 ; $13:F904: 85 00       ;
                STA $01                 ; $13:F906: 85 01       ;
                LDA.w DATA_11CB0E,y     ; $13:F908: B9 0E CB    ;
                BPL CODE_13F90F         ; $13:F90B: 10 02       ;
                DEC $00                 ; $13:F90D: C6 00       ;
CODE_13F90F:    CLC                     ; $13:F90F: 18          ;
                ADC $28,x                   ; $13:F910: 75 28       ;
                AND #$F0                    ; $13:F912: 29 F0       ;
                STA $05                     ; $13:F914: 85 05       ;
                PHP                         ; $13:F916: 08          ;
                LSR A                       ; $13:F917: 4A          ;
                LSR A                       ; $13:F918: 4A          ;
                LSR A                       ; $13:F919: 4A          ;
                LSR A                       ; $13:F91A: 4A          ;
                STA $E5                     ; $13:F91B: 85 E5       ;
                PLP                         ; $13:F91D: 28          ;
                LDA $14,x                   ; $13:F91E: B5 14       ;
                ADC $00                     ; $13:F920: 65 00       ;
                STA $02                     ; $13:F922: 85 02       ;
                STA $03                     ; $13:F924: 85 03       ;
                LDA $EB                     ; $13:F926: A5 EB       ;
                BNE CODE_13F92E             ; $13:F928: D0 04       ;
                STA $02                     ; $13:F92A: 85 02       ;
                STA $03                     ; $13:F92C: 85 03       ;
CODE_13F92E:    LDA.w DATA_11CB56,y                 ; $13:F92E: B9 56 CB    ;
                BPL CODE_13F935             ; $13:F931: 10 02       ;
                DEC $01                     ; $13:F933: C6 01       ;
CODE_13F935:    CLC                         ; $13:F935: 18          ;
                ADC $32,x                   ; $13:F936: 75 32       ;
                AND #$F0                    ; $13:F938: 29 F0       ;
                STA $06                     ; $13:F93A: 85 06       ;
                STA $E6                     ; $13:F93C: 85 E6       ;
                LDA $1E,x                   ; $13:F93E: B5 1E       ;
                ADC $01                     ; $13:F940: 65 01       ;
                STA $01                     ; $13:F942: 85 01       ;
                STA $04                     ; $13:F944: 85 04       ;
                JSR CODE_13F9EE             ; $13:F946: 20 EE F9    ;
                BCC CODE_13F94F             ; $13:F949: 90 04       ;
                LDA #$00                    ; $13:F94B: A9 00       ;
                BEQ CODE_13F997             ; $13:F94D: F0 48       ;
CODE_13F94F:    LDX $0D                     ; $13:F94F: A6 0D       ;
                STX $070F                   ; $13:F951: 8E 0F 07    ;
                LDX $0E                     ; $13:F954: A6 0E       ;
                STX $0710                   ; $13:F956: 8E 10 07    ;
                LDX $0F                     ; $13:F959: A6 0F       ;
                STX $0711                   ; $13:F95B: 8E 11 07    ;
                LDX $03                     ; $13:F95E: A6 03       ;
                PHX                         ; $13:F960: DA          ;
                JSR CODE_13FA5C             ; $13:F961: 20 5C FA    ;
                REP #$20                    ; $13:F964: C2 20       ;
                LDA $01                     ; $13:F966: A5 01       ;
                CLC                         ; $13:F968: 18          ;
                ADC #$7000                  ; $13:F969: 69 00 70    ;
                STA $0D                     ; $13:F96C: 85 0D       ;
                SEP #$20                    ; $13:F96E: E2 20       ;
                LDA $03                     ; $13:F970: A5 03       ;
                STA $0F                     ; $13:F972: 85 0F       ;
                LDY $E7                 ; $13:F974: A4 E7       ; Get index (position) to the corresponding Map16 tile.
                LDA [$0D],y             ; $13:F976: B7 0D       ; \ If Map16 page 0, branch.
                BEQ CODE_13F983         ; $13:F978: F0 09       ; /
                LDA [$01],y             ; $13:F97A: B7 01       ; \ All tiles on page 1 must act like...
                TAX                     ; $13:F97C: AA          ;  |
                LDA.l DATA_14CCBD,x     ; $13:F97D: BF BD CC 14 ;  | $2C, $40, $AB or $C0...
                BRA CODE_13F985         ; $13:F981: 80 02       ; / from page 0.

CODE_13F983:    LDA [$01],y             ; $13:F983: B7 01       ; This is for page 0, just act what it's supposed to act like.
CODE_13F985:    PLX                     ; $13:F985: FA          ; Pull X index back.
                STX $03                     ; $13:F986: 86 03       ;
                LDX $070F                   ; $13:F988: AE 0F 07    ;
                STX $0D                     ; $13:F98B: 86 0D       ;
                LDX $0710                   ; $13:F98D: AE 10 07    ;
                STX $0E                     ; $13:F990: 86 0E       ;
                LDX $0711                   ; $13:F992: AE 11 07    ;
                STX $0F                     ; $13:F995: 86 0F       ;
CODE_13F997:    STA $00                 ; $13:F997: 85 00       ; Map16 tile 'acts like'.
                PLA                         ; $13:F999: 68          ;
                TAX                         ; $13:F99A: AA          ;
                RTL                         ; $13:F99B: 6B          ;

CODE_13F99C:    PHA                         ; $13:F99C: 48          ;
                AND #$C0                    ; $13:F99D: 29 C0       ;
                ASL A                       ; $13:F99F: 0A          ;
                ROL A                       ; $13:F9A0: 2A          ;
                ROL A                       ; $13:F9A1: 2A          ;
                ADC.w DATA_119B9C,y                 ; $13:F9A2: 79 9C 9B    ;
                TAY                         ; $13:F9A5: A8          ;
                PLA                         ; $13:F9A6: 68          ;
                CMP.w DATA_11CDA8,y                 ; $13:F9A7: D9 A8 CD    ;
                RTL                         ; $13:F9AA: 6B          ;

                INC $04BE                   ; $13:F9AB: EE BE 04    ;
                INC $041B                   ; $13:F9AE: EE 1B 04    ;
                JSL CODE_1287BC             ; $13:F9B1: 22 BC 87 12 ;
                LDA #$01                    ; $13:F9B5: A9 01       ;
                STA $0601                   ; $13:F9B7: 8D 01 06    ;
                RTL                         ; $13:F9BA: 6B          ;

CODE_13F9BB:    LDX #$00                    ; $13:F9BB: A2 00       ;
                LDY $6E                     ; $13:F9BD: A4 6E       ;
                LDA $3C                     ; $13:F9BF: A5 3C       ;
                EOR.w DATA_119BBA,y                 ; $13:F9C1: 59 BA 9B    ;
                BPL CODE_13F9C8             ; $13:F9C4: 10 02       ;
                STX $3C                     ; $13:F9C6: 86 3C       ;
CODE_13F9C8:    LDA $04CC                   ; $13:F9C8: AD CC 04    ;
                EOR.w DATA_119BBA,y                 ; $13:F9CB: 59 BA 9B    ;
                BPL CODE_13F9D3             ; $13:F9CE: 10 03       ;
                STX $04CC                   ; $13:F9D0: 8E CC 04    ;
CODE_13F9D3:    STX $0407                   ; $13:F9D3: 8E 07 04    ;
                RTL                         ; $13:F9D6: 6B          ;

CODE_13F9D7:    LDA #$02                ; $13:F9D7: A9 02       ; \ Pick something up animation.
                STA $50                 ; $13:F9D9: 85 50       ; /
                STZ $078C                   ; $13:F9DB: 9C 8C 07    ;
                LDA #$06                ; $13:F9DE: A9 06       ; \ Amount of frames it should take to pick the enemy up.
                STA $82                 ; $13:F9E0: 85 82       ; /
                LDA #$08                    ; $13:F9E2: A9 08       ;
                STA $C7                     ; $13:F9E4: 85 C7       ;
                INC $9C                     ; $13:F9E6: E6 9C       ;
                LDA #$3C                ; $13:F9E8: A9 3C       ; \ Picking something up sound effect.
                STA $1DE3               ; $13:F9EA: 8D E3 1D    ; /
                RTL                     ; $13:F9ED: 6B          ; Return.

CODE_13F9EE:    LDY $01                     ; $13:F9EE: A4 01       ;
                LDA $E6                     ; $13:F9F0: A5 E6       ;
                JSR CODE_13FA8F             ; $13:F9F2: 20 8F FA    ;
                STY $01                     ; $13:F9F5: 84 01       ;
                STA $E6                     ; $13:F9F7: 85 E6       ;
                LDY $EB                     ; $13:F9F9: A4 EB       ;
                LDA $0001,y                 ; $13:F9FB: B9 01 00    ;
                STA $E9                     ; $13:F9FE: 85 E9       ;
                LDA $02                     ; $13:FA00: A5 02       ;
                CMP.w DATA_119BB7,y                 ; $13:FA02: D9 B7 9B    ;
                BCS CODE_13FA0C                     ; $13:FA05: B0 05       ;
                LDA $01                     ; $13:FA07: A5 01       ;
                CMP.w DATA_119BB6,y                 ; $13:FA09: D9 B6 9B    ;
CODE_13FA0C:    RTS                         ; $13:FA0C: 60          ;

CODE_13FA0D:    PHA                         ; $13:FA0D: 48          ;
                LDA $29,x                   ; $13:FA0E: B5 29       ;
                CLC                         ; $13:FA10: 18          ;
                ADC #$08                    ; $13:FA11: 69 08       ;
                PHP                         ; $13:FA13: 08          ;
                LSR A                       ; $13:FA14: 4A          ;
                LSR A                       ; $13:FA15: 4A          ;
                LSR A                       ; $13:FA16: 4A          ;
                LSR A                       ; $13:FA17: 4A          ;
                STA $E5                     ; $13:FA18: 85 E5       ;
                PLP                         ; $13:FA1A: 28          ;
                LDA $15,x                   ; $13:FA1B: B5 15       ;
                LDY $EB                     ; $13:FA1D: A4 EB       ;
                BEQ CODE_13FA23             ; $13:FA1F: F0 02       ;
                ADC #$00                    ; $13:FA21: 69 00       ;
CODE_13FA23:    STA $02                     ; $13:FA23: 85 02       ;
                LDA $33,x                   ; $13:FA25: B5 33       ;
                CLC                         ; $13:FA27: 18          ;
                ADC #$08                    ; $13:FA28: 69 08       ;
                AND #$F0                    ; $13:FA2A: 29 F0       ;
                STA $E6                     ; $13:FA2C: 85 E6       ;
                STA $0212                   ; $13:FA2E: 8D 12 02    ;
                LDA $1F,x                   ; $13:FA31: B5 1F       ;
                ADC #$00                    ; $13:FA33: 69 00       ;
                STA $01                     ; $13:FA35: 85 01       ;
                JSR CODE_13F9EE             ; $13:FA37: 20 EE F9    ;
                PLA                         ; $13:FA3A: 68          ;
                BCS CODE_13FA41                     ; $13:FA3B: B0 04       ;
                JSL CODE_128BF4             ; $13:FA3D: 22 F4 8B 12 ;
CODE_13FA41:    RTL                         ; $13:FA41: 6B          ;

CODE_13FA42:    LDA $0628                   ; $13:FA42: AD 28 06    ;
                BNE CODE_13FA5B             ; $13:FA45: D0 14       ;
                LDA $14                     ; $13:FA47: A5 14       ;
                STA $0511                   ; $13:FA49: 8D 11 05    ;
                LDA $28                     ; $13:FA4C: A5 28       ;
                STA $0513                   ; $13:FA4E: 8D 13 05    ;
                LDA $1E                     ; $13:FA51: A5 1E       ;
                STA $0512                   ; $13:FA53: 8D 12 05    ;
                LDA $32                     ; $13:FA56: A5 32       ;
                STA $0514                   ; $13:FA58: 8D 14 05    ;
CODE_13FA5B:    RTL                         ; $13:FA5B: 6B          ;

CODE_13FA5C:    LDX $E9                     ; $13:FA5C: A6 E9       ;
                JSR CODE_13FA69             ; $13:FA5E: 20 69 FA    ;
                LDA $E6                     ; $13:FA61: A5 E6       ;
                CLC                         ; $13:FA63: 18          ;
                ADC $E5                     ; $13:FA64: 65 E5       ;
                STA $E7                     ; $13:FA66: 85 E7       ;
                RTS                         ; $13:FA68: 60          ;

CODE_13FA69:    STY $02F5                   ; $13:FA69: 8C F5 02    ;
                LDA $0628                   ; $13:FA6C: AD 28 06    ;
                BEQ CODE_13FA75             ; $13:FA6F: F0 04       ;
                LDA #$00                    ; $13:FA71: A9 00       ;
                BRA CODE_13FA7B             ; $13:FA73: 80 06       ;

CODE_13FA75:    LDY $0534                   ; $13:FA75: AC 34 05    ;
                LDA.w DATA_11AB11,y                 ; $13:FA78: B9 11 AB    ;
CODE_13FA7B:    CLC                         ; $13:FA7B: 18          ;
                ADC.w DATA_11AAFB,x                 ; $13:FA7C: 7D FB AA    ;
                STA $02                     ; $13:FA7F: 85 02       ;
                LDA.w DATA_11AAF0,x                 ; $13:FA81: BD F0 AA    ;
                STA $01                     ; $13:FA84: 85 01       ;
                LDA.w DATA_11AB06,x                 ; $13:FA86: BD 06 AB    ;
                STA $03                     ; $13:FA89: 85 03       ;
                LDY $02F5                   ; $13:FA8B: AC F5 02    ;
                RTS                         ; $13:FA8E: 60          ;

CODE_13FA8F:    STA $0F                     ; $13:FA8F: 85 0F       ;
                TYA                         ; $13:FA91: 98          ;
                BMI CODE_13FAA5             ; $13:FA92: 30 11       ;
                ASL A                       ; $13:FA94: 0A          ;
                ASL A                       ; $13:FA95: 0A          ;
                ASL A                       ; $13:FA96: 0A          ;
                ASL A                       ; $13:FA97: 0A          ;
                CLC                         ; $13:FA98: 18          ;
                ADC $0F                     ; $13:FA99: 65 0F       ;
                BCS CODE_13FAA1                     ; $13:FA9B: B0 04       ;
                CMP #$F0                    ; $13:FA9D: C9 F0       ;
                BCC CODE_13FAA5             ; $13:FA9F: 90 04       ;
CODE_13FAA1:    CLC                         ; $13:FAA1: 18          ;
                ADC #$10                    ; $13:FAA2: 69 10       ;
                INY                         ; $13:FAA4: C8          ;
CODE_13FAA5:    RTS                         ; $13:FAA5: 60          ;

CODE_13FAA6:    LDA $0005,y                 ; $13:FAA6: B9 05 00    ;
                SEC                         ; $13:FAA9: 38          ;
                SBC $0006,y                 ; $13:FAAA: F9 06 00    ;
                BPL CODE_13FAB5             ; $13:FAAD: 10 06       ;
                EOR #$FF                    ; $13:FAAF: 49 FF       ;
                CLC                         ; $13:FAB1: 18          ;
                ADC #$01                    ; $13:FAB2: 69 01       ;
                DEX                         ; $13:FAB4: CA          ;
CODE_13FAB5:    SEC                         ; $13:FAB5: 38          ;
                SBC $09,x                   ; $13:FAB6: F5 09       ;
                RTS                         ; $13:FAB8: 60          ;

CODE_13FAB9:    LDA $0005,y                 ; $13:FAB9: B9 05 00    ;
                SEC                         ; $13:FABC: 38          ;
                SBC $0006,y                 ; $13:FABD: F9 06 00    ;
                STA $0006,y                 ; $13:FAC0: 99 06 00    ;
                LDA $0001,y                 ; $13:FAC3: B9 01 00    ;
                SBC $0002,y                 ; $13:FAC6: F9 02 00    ;
                BPL CODE_13FADD             ; $13:FAC9: 10 12       ;
                EOR #$FF                    ; $13:FACB: 49 FF       ;
                PHA                         ; $13:FACD: 48          ;
                LDA $0006,y                 ; $13:FACE: B9 06 00    ;
                EOR #$FF                    ; $13:FAD1: 49 FF       ;
                CLC                         ; $13:FAD3: 18          ;
                ADC #$01                    ; $13:FAD4: 69 01       ;
                STA $0006,y                 ; $13:FAD6: 99 06 00    ;
                PLA                         ; $13:FAD9: 68          ;
                ADC #$00                    ; $13:FADA: 69 00       ;
                DEX                         ; $13:FADC: CA          ;
CODE_13FADD:    CMP #$00                    ; $13:FADD: C9 00       ;
                BEQ CODE_13FAE3             ; $13:FADF: F0 02       ;
                SEC                         ; $13:FAE1: 38          ;
                RTS                         ; $13:FAE2: 60          ;

CODE_13FAE3:    LDA $0006,y                 ; $13:FAE3: B9 06 00    ;
                SBC $09,x                   ; $13:FAE6: F5 09       ;
                RTS                         ; $13:FAE8: 60          ;

CODE_13FAE9:    TXA                         ; $13:FAE9: 8A          ;
                PHA                         ; $13:FAEA: 48          ;
                LDY #$02                    ; $13:FAEB: A0 02       ;
CODE_13FAED:    TYA                         ; $13:FAED: 98          ;
                TAX                         ; $13:FAEE: AA          ;
                INX                         ; $13:FAEF: E8          ;
                CPY #$00                    ; $13:FAF0: C0 00       ;
                BNE CODE_13FAFD             ; $13:FAF2: D0 09       ;
                LDA $EB                     ; $13:FAF4: A5 EB       ;
                BNE CODE_13FAFD             ; $13:FAF6: D0 05       ;
                JSR CODE_13FAA6             ; $13:FAF8: 20 A6 FA    ;
                BRA CODE_13FB00             ; $13:FAFB: 80 03       ;

CODE_13FAFD:    JSR CODE_13FAB9             ; $13:FAFD: 20 B9 FA    ;
CODE_13FB00:    BCS CODE_13FB0F                     ; $13:FB00: B0 0D       ;
                PHA                         ; $13:FB02: 48          ;
                TYA                         ; $13:FB03: 98          ;
                LSR A                       ; $13:FB04: 4A          ;
                TAX                         ; $13:FB05: AA          ;
                PLA                         ; $13:FB06: 68          ;
                STA $0426,x                 ; $13:FB07: 9D 26 04    ;
                DEY                         ; $13:FB0A: 88          ;
                DEY                         ; $13:FB0B: 88          ;
                BPL CODE_13FAED             ; $13:FB0C: 10 DF       ;
                CLC                         ; $13:FB0E: 18          ;
CODE_13FB0F:    PLA                         ; $13:FB0F: 68          ;
                TAX                         ; $13:FB10: AA          ;
                RTL                         ; $13:FB11: 6B          ;

CODE_13FB12:    LDA $04C7                   ; $13:FB12: AD C7 04    ;
                BEQ CODE_13FB47             ; $13:FB15: F0 30       ;
                DEC $04C7                   ; $13:FB17: CE C7 04    ;
                REP #$20                    ; $13:FB1A: C2 20       ;
                LDY $04C7                   ; $13:FB1C: AC C7 04    ;
                BNE CODE_13FB2D             ; $13:FB1F: D0 0C       ;
                TYA                         ; $13:FB21: 98          ;
                AND #$0003                  ; $13:FB22: 29 03 00    ;
                TAX                         ; $13:FB25: AA          ;
                LDA.l DATA_11AB7B,x                 ; $13:FB26: BF 7B AB 11 ;
                TXY                         ; $13:FB2A: 9B          ;
                BRA CODE_13FB30             ; $13:FB2B: 80 03       ;

CODE_13FB2D:    LDA $04BC                   ; $13:FB2D: AD BC 04    ;
CODE_13FB30:    STA $0C00                   ; $13:FB30: 8D 00 0C    ;
                LDA $12D1,y                 ; $13:FB33: B9 D1 12    ;
                STA $0C02                   ; $13:FB36: 8D 02 0C    ;
                LDA $12D2,y                 ; $13:FB39: B9 D2 12    ;
                STA $0C04                   ; $13:FB3C: 8D 04 0C    ;
                LDA $12D3,y                 ; $13:FB3F: B9 D3 12    ;
                STA $0C06                   ; $13:FB42: 8D 06 0C    ;
                SEP #$20                    ; $13:FB45: E2 20       ;
CODE_13FB47:    LDA #$28                    ; $13:FB47: A9 28       ;
                STA $00                     ; $13:FB49: 85 00       ;
                LDA $04C3                   ; $13:FB4B: AD C3 04    ;
                BEQ CODE_13FB56             ; $13:FB4E: F0 06       ;
                AND #$F0                    ; $13:FB50: 29 F0       ;
                LSR A                       ; $13:FB52: 4A          ;
                LSR A                       ; $13:FB53: 4A          ;
                ADC #$04                    ; $13:FB54: 69 04       ;
CODE_13FB56:    TAX                         ; $13:FB56: AA          ;
                LDY #$00                    ; $13:FB57: A0 00       ;
                LDA #$FE                    ; $13:FB59: A9 FE       ;
                STA $03                     ; $13:FB5B: 85 03       ;
CODE_13FB5D:    LDA.l DATA_11AB63,x                 ; $13:FB5D: BF 63 AB 11 ;
                STA $0802,y                 ; $13:FB61: 99 02 08    ;
                STA $0806,y                 ; $13:FB64: 99 06 08    ;
                LDA #$08                    ; $13:FB67: A9 08       ;
                STA $0800,y                 ; $13:FB69: 99 00 08    ;
                LDA.l DATA_11AB63,x                 ; $13:FB6C: BF 63 AB 11 ;
                AND #$02                    ; $13:FB70: 29 02       ;
                EOR #$02                    ; $13:FB72: 49 02       ;
                CLC                         ; $13:FB74: 18          ;
                ADC #$32                    ; $13:FB75: 69 32       ;
                STA $0803,y                 ; $13:FB77: 99 03 08    ;
                LDA $00                     ; $13:FB7A: A5 00       ;
                STA $0801,y                 ; $13:FB7C: 99 01 08    ;
                CLC                         ; $13:FB7F: 18          ;
                ADC #$10                    ; $13:FB80: 69 10       ;
                STA $00                     ; $13:FB82: 85 00       ;
                PHY                         ; $13:FB84: 5A          ;
                TYA                         ; $13:FB85: 98          ;
                LSR A                       ; $13:FB86: 4A          ;
                LSR A                       ; $13:FB87: 4A          ;
                TAY                         ; $13:FB88: A8          ;
                LDA #$02                    ; $13:FB89: A9 02       ;
                STA $0A20,y                 ; $13:FB8B: 99 20 0A    ;
                PLY                         ; $13:FB8E: 7A          ;
                TYA                         ; $13:FB8F: 98          ;
                CLC                         ; $13:FB90: 18          ;
                ADC #$04                    ; $13:FB91: 69 04       ;
                TAY                         ; $13:FB93: A8          ;
                INX                         ; $13:FB94: E8          ;
                INC $03                     ; $13:FB95: E6 03       ;
                LDA $03                     ; $13:FB97: A5 03       ;
                CMP $04C4                   ; $13:FB99: CD C4 04    ;
                BNE CODE_13FB5D             ; $13:FB9C: D0 BF       ;
                LDA $04C5                   ; $13:FB9E: AD C5 04    ;
                BEQ CODE_13FBC1             ; $13:FBA1: F0 1E       ;
                DEC $04C5                   ; $13:FBA3: CE C5 04    ;
                LSR A                       ; $13:FBA6: 4A          ;
                AND #$01                    ; $13:FBA7: 29 01       ;
                TAY                         ; $13:FBA9: A8          ;
                LDA $0206                   ; $13:FBAA: AD 06 02    ;
                BPL CODE_13FBB1             ; $13:FBAD: 10 02       ;
                INY                         ; $13:FBAF: C8          ;
                INY                         ; $13:FBB0: C8          ;
CODE_13FBB1:    PHB                         ; $13:FBB1: 8B          ;
                LDA #$11                    ; $13:FBB2: A9 11       ;
                PHA                         ; $13:FBB4: 48          ;
                PLB                         ; $13:FBB5: AB          ;
                LDA.w DATA_11AB77,y                 ; $13:FBB6: B9 77 AB    ;
                STA $04C6                   ; $13:FBB9: 8D C6 04    ;
                PLB                         ; $13:FBBC: AB          ;
                JSL CODE_12BAAE             ; $13:FBBD: 22 AE BA 12 ;
CODE_13FBC1:    RTL                         ; $13:FBC1: 6B          ;

CODE_13FBC2:    PHX                     ; $13:FBC2: DA          ; Preserve sprite index.
                LDX $0628               ; $13:FBC3: AE 28 06    ; \ Don't flash colours if in potion room.
                CPX #$02                ; $13:FBC6: E0 02       ;  |
                BEQ CODE_13FC1A         ; $13:FBC8: F0 50       ; /
                REP #$20                ; $13:FBCA: C2 20       ; A = 16-bit
                AND #$00FF              ; $13:FBCC: 29 FF 00    ; \ If value is zero...
                BEQ CODE_13FBDF         ; $13:FBCF: F0 0E       ; / branch.
                LDA $10                 ; $13:FBD1: A5 10       ; \ Flash through 4 different colours...
                AND #$0003              ; $13:FBD3: 29 03 00    ;  | <--
                TAX                     ; $13:FBD6: AA          ;  |
                LDA.w DATA_11AB83,x     ; $13:FBD7: BD 83 AB    ;  | Apparently, the 16-bit colour values interfer with eachother (no ASL is included, table is not 8 bytes long but only 5 bytes)
                STA $0B00               ; $13:FBDA: 8D 00 0B    ;  | This may complicate hex editing the colours to your likings.
                BRA CODE_13FBED         ; $13:FBDD: 80 0E       ; /

CODE_13FBDF:    STZ $0B00               ; $13:FBDF: 9C 00 0B    ; No flashing BG colour.
                LDA $04EF                   ; $13:FBE2: AD EF 04    ;
                AND #$00FF                  ; $13:FBE5: 29 FF 00    ;
                BNE CODE_13FC1C             ; $13:FBE8: D0 32       ;
                LDA $04BC                   ; $13:FBEA: AD BC 04    ;
CODE_13FBED:    STA $0712                   ; $13:FBED: 8D 12 07    ;
                LSR A                       ; $13:FBF0: 4A          ;
                LSR A                       ; $13:FBF1: 4A          ;
                LSR A                       ; $13:FBF2: 4A          ;
                LSR A                       ; $13:FBF3: 4A          ;
                LSR A                       ; $13:FBF4: 4A          ;
                AND #$001F                  ; $13:FBF5: 29 1F 00    ;
                SEP #$20                    ; $13:FBF8: E2 20       ;
                ORA #$40                    ; $13:FBFA: 09 40       ;
                STA $023E                   ; $13:FBFC: 8D 3E 02    ;
                LDA $0712                   ; $13:FBFF: AD 12 07    ;
                AND #$1F                    ; $13:FC02: 29 1F       ;
                ORA #$20                    ; $13:FC04: 09 20       ;
                STA $023D                   ; $13:FC06: 8D 3D 02    ;
                LDA $0713                   ; $13:FC09: AD 13 07    ;
                LSR A                       ; $13:FC0C: 4A          ;
                LSR A                       ; $13:FC0D: 4A          ;
                AND #$1F                    ; $13:FC0E: 29 1F       ;
                ORA #$80                    ; $13:FC10: 09 80       ;
                STA $023F                   ; $13:FC12: 8D 3F 02    ;
CODE_13FC15:    LDA #$01                ; $13:FC15: A9 01       ; \ Update palettes.
                STA $02A9               ; $13:FC17: 8D A9 02    ; /
CODE_13FC1A:    PLX                     ; $13:FC1A: FA          ; Pull sprite index.
                RTL                     ; $13:FC1B: 6B          ; Return.

CODE_13FC1C:    LDA $04BC                   ; $13:FC1C: AD BC 04    ;
                STA $0B00                   ; $13:FC1F: 8D 00 0B    ;
                SEP #$20                    ; $13:FC22: E2 20       ;
                LDX #$0A                    ; $13:FC24: A2 0A       ;
                LDA $0533                   ; $13:FC26: AD 33 05    ;
                CMP #$05                    ; $13:FC29: C9 05       ;
                BEQ CODE_13FC45             ; $13:FC2B: F0 18       ;
                CMP #$0F                    ; $13:FC2D: C9 0F       ;
                BNE CODE_13FC47             ; $13:FC2F: D0 16       ;
                LDA $0534                   ; $13:FC31: AD 34 05    ;
                CMP #$05                    ; $13:FC34: C9 05       ;
                BEQ CODE_13FC45             ; $13:FC36: F0 0D       ;
                CMP #$03                    ; $13:FC38: C9 03       ;
                BEQ CODE_13FC45             ; $13:FC3A: F0 09       ;
                CMP #$04                    ; $13:FC3C: C9 04       ;
                BNE CODE_13FC47             ; $13:FC3E: D0 07       ;
                LDA $051B                   ; $13:FC40: AD 1B 05    ;
                BEQ CODE_13FC47             ; $13:FC43: F0 02       ;
CODE_13FC45:    LDX #$05                    ; $13:FC45: A2 05       ;
CODE_13FC47:    TXA                         ; $13:FC47: 8A          ;
                ORA #$20                    ; $13:FC48: 09 20       ;
                STA $023D                   ; $13:FC4A: 8D 3D 02    ;
                TXA                         ; $13:FC4D: 8A          ;
                ORA #$40                    ; $13:FC4E: 09 40       ;
                STA $023E                   ; $13:FC50: 8D 3E 02    ;
                TXA                         ; $13:FC53: 8A          ;
                ORA #$80                    ; $13:FC54: 09 80       ;
                STA $023F                   ; $13:FC56: 8D 3F 02    ;
                BRA CODE_13FC15         ; $13:FC59: 80 BA       ; Update palettes and return appropiately.

CODE_13FC5B:    REP #$30                    ; $13:FC5B: C2 30       ;
                LDY #$0120                  ; $13:FC5D: A0 20 01    ;
CODE_13FC60:    LDA $0801,y                 ; $13:FC60: B9 01 08    ;
                AND #$00FF                  ; $13:FC63: 29 FF 00    ;
                CMP #$00F0                  ; $13:FC66: C9 F0 00    ;
                BNE CODE_13FC76             ; $13:FC69: D0 0B       ;
                LDA $0805,y                 ; $13:FC6B: B9 05 08    ;
                AND #$00FF                  ; $13:FC6E: 29 FF 00    ;
                CMP #$00F0                  ; $13:FC71: C9 F0 00    ;
                BEQ CODE_13FC81             ; $13:FC74: F0 0B       ;
CODE_13FC76:    TYA                         ; $13:FC76: 98          ;
                CLC                         ; $13:FC77: 18          ;
                ADC #$0004                  ; $13:FC78: 69 04 00    ;
                TAY                         ; $13:FC7B: A8          ;
                CPY #$01C0                  ; $13:FC7C: C0 C0 01    ;
                BNE CODE_13FC60             ; $13:FC7F: D0 DF       ;
CODE_13FC81:    STY $02F8                   ; $13:FC81: 8C F8 02    ;
                SEP #$30                    ; $13:FC84: E2 30       ;
                LDX $12                     ; $13:FC86: A6 12       ;
                RTL                         ; $13:FC88: 6B          ;

CODE_13FC89:    LDY $0533               ; $13:FC89: AC 33 05    ; \ Get level + room number into X index.
                LDA.w DATA_11D098,y     ; $13:FC8C: B9 98 D0    ;  | 
                CLC                     ; $13:FC8F: 18          ;  |
                ADC $0534               ; $13:FC90: 6D 34 05    ;  |
                TAX                     ; $13:FC93: AA          ;  |
                LDA.l DATA_11CF52,x     ; $13:FC94: BF 52 CF 11 ;  | Check HDMA BG table. 
                CMP #$FF                ; $13:FC98: C9 FF       ;  | If value = $FF, don't load a HDMA BG.
                BEQ CODE_13FCA0         ; $13:FC9A: F0 04       ; /
                JSL CODE_14FAE8         ; $13:FC9C: 22 E8 FA 14 ; Load HDMA BG.
CODE_13FCA0:    RTL                     ; $13:FCA0: 6B          ; Return.

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
                db $FF,$FF,$FF,$FF,$FF,$FF,$FF                  ; /
